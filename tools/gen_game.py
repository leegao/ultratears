"""Compile and run the C++ LLVM IR lifter (src/horizon2llvm/main.cpp) on the three TOTK code modules in parallel.

usage: python tools/gen_game.py <exefs dir> <output dir> [--verify-llvm] [--llvm-opt PIPELINE] [--emit-bc]
       [--emit-raw] [--emit-arm64-asm] [--safe-passes | --all-passes | --no-opt-passes]
       [--disable-pass NAME] [--enable-pass NAME] [--find-fn ADDR] [--dump-fn ADDR]
Bases must match src/runtime/rt.h (MAIN_BASE, SUBSDK0_BASE, SDK_BASE).
"""
import argparse
import os
import pathlib
import platform
import queue
import re
import shutil
import subprocess
import sys
import threading
import time

ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'tools'))
import toolchain  # noqa: E402

try:
    from local_llvm import get_lifter_env
except:
    def get_lifter_env():
        return os.environ.copy()

MODULES = {'main': 0x0800000000, 'subsdk0': 0x0804000000, 'sdk': 0x0805000000}


def build_lifter_binary():
    """Compile src/horizon2llvm via CMake into build/src/horizon2llvm/horizon2llvm(.exe) if needed."""
    lifter_dir = ROOT / 'src/horizon2llvm'
    build_dir = ROOT / 'build/src/horizon2llvm'
    build_dir.mkdir(parents=True, exist_ok=True)
    exe_ext = '.exe' if os.name == 'nt' else ''
    bin_path = build_dir / f'horizon2llvm{exe_ext}'

    sources = sorted(lifter_dir.glob('*.cpp'))
    headers = list(lifter_dir.glob('*.hpp'))
    cmake_files = [lifter_dir / 'CMakeLists.txt']
    newest_src = max(s.stat().st_mtime for s in (sources + headers + cmake_files))
    if bin_path.is_file() and bin_path.stat().st_mtime >= newest_src:
        return bin_path

    cmake_bin = shutil.which('cmake')
    if not cmake_bin and toolchain.CLANG64:
        cand = toolchain.CLANG64 / f'cmake{exe_ext}'
        if cand.is_file():
            cmake_bin = str(cand)
    if not cmake_bin:
        cmake_bin = 'cmake'

    env = os.environ.copy()
    try:
        env = toolchain.env()
    except (Exception, SystemExit):
        pass

    cache_file = build_dir / 'CMakeCache.txt'
    if not cache_file.is_file():
        cfg_cmd = [cmake_bin, '-B', str(build_dir), '-S', str(lifter_dir), '-DCMAKE_BUILD_TYPE=Release']
        print(f'configuring C++ LLVM IR lifter with CMake (at {build_dir.relative_to(ROOT)})...', flush=True)
        rc = subprocess.run(cfg_cmd, cwd=ROOT, env=env).returncode
        if rc != 0:
            sys.exit(f'failed to configure C++ LLVM IR lifter with CMake (exit {rc})')

    # Don't build in parallel - OOMs
    build_cmd = [cmake_bin, '--build', str(build_dir), '--target', 'horizon2llvm', '--config', 'Release']
    print(f'building C++ LLVM IR lifter with CMake at {build_dir.relative_to(ROOT)}...', flush=True)
    rc = subprocess.run(build_cmd, cwd=ROOT, env=env).returncode
    if rc != 0:
        sys.exit(f'failed to compile C++ LLVM IR lifter with CMake (exit {rc})')

    if not bin_path.is_file():
        rel_bin = build_dir / 'Release' / f'horizon2llvm{exe_ext}'
        if rel_bin.is_file():
            bin_path = rel_bin

    if not bin_path.is_file():
        sys.exit(f'expected lifter binary at {bin_path} not found after CMake build')

    legacy_dir = ROOT / 'build/tools'
    legacy_dir.mkdir(parents=True, exist_ok=True)
    legacy_bin = legacy_dir / f'horizon2llvm{exe_ext}'
    try:
        if legacy_bin.resolve() != bin_path.resolve():
            if legacy_bin.is_file() or legacy_bin.is_symlink():
                legacy_bin.unlink()
            if hasattr(os, 'symlink') and os.name != 'nt':
                legacy_bin.symlink_to(bin_path.resolve())
            else:
                shutil.copy2(bin_path, legacy_bin)
    except Exception:
        pass

    return bin_path


def format_eta(seconds):
    if seconds < 60:
        return f'{int(round(seconds))}s'
    m, s = divmod(int(round(seconds)), 60)
    if m < 60:
        return f'{m}m{s:02d}s'
    h, m = divmod(m, 60)
    return f'{h}h{m:02d}m'


def format_progress_bar(mod_done, mod_totals, t0, term_width=80):
    elapsed = max(0.1, time.time() - t0)
    total_done = sum(mod_done.values())
    total_fns = sum(mod_totals.values())
    fraction = (total_done / total_fns) if total_fns > 0 else 0.0
    pct = fraction * 100.0

    pct_str = f'{pct:5.1f}%'
    counts_str = f'({total_done:,}/{total_fns:,} fns)' if total_fns > 0 else f'({total_done:,} fns)'
    time_str = f'{elapsed:.1f}s'

    rate_eta_str = ''
    if total_done > 0 and elapsed > 0.5:
        fn_per_sec = total_done / elapsed
        rate_str = f'{fn_per_sec:,.0f} fn/s'
        rem_fns = max(0, total_fns - total_done)
        if total_fns > 0 and fn_per_sec > 0:
            eta_s = rem_fns / fn_per_sec
            rate_eta_str = f'({rate_str}, ETA {format_eta(eta_s)})'
        else:
            rate_eta_str = f'({rate_str})'

    mod_parts = []
    for m in mod_totals:
        d = mod_done.get(m, 0)
        tot = mod_totals[m]
        p = (d / tot * 100.0) if tot > 0 else 0.0
        mod_parts.append(f'{m}: {p:2.0f}%')
    mod_str = f'[{", ".join(mod_parts)}]' if mod_parts else ''

    prefix = 'Lifting: '
    variants = [
        (True, True, True),
        (False, True, True),
        (True, False, True),
        (False, False, True),
        (False, False, False),
    ]

    selected_line = ''
    for use_mods, use_rate_eta, use_counts in variants:
        info_parts = [pct_str]
        if use_counts:
            info_parts.append(counts_str)
        if use_mods and mod_str:
            info_parts.append(mod_str)
        if use_rate_eta and rate_eta_str:
            info_parts.append(rate_eta_str)
        info_parts.append(time_str)
        info = ' '.join(info_parts)

        min_needed = len(prefix) + 2 + 10 + 1 + len(info)
        if min_needed <= term_width or (not use_mods and not use_rate_eta and not use_counts):
            avail_bar = max(10, min(30, term_width - len(prefix) - 3 - len(info)))
            filled = int(round(avail_bar * fraction))
            filled = max(0, min(avail_bar, filled))
            if 0 < filled < avail_bar:
                bar = '=' * (filled - 1) + '>' + ' ' * (avail_bar - filled)
            elif filled == avail_bar:
                bar = '=' * avail_bar
            else:
                bar = ' ' * avail_bar
            selected_line = f'{prefix}[{bar}] {info}'
            break

    if len(selected_line) > term_width and term_width > 10:
        selected_line = selected_line[:term_width - 1]
    return selected_line


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('exefs', type=pathlib.Path)
    ap.add_argument('out', type=pathlib.Path)
    ap.add_argument('--verify-llvm', action='store_true', help='run LLVMVerifyModule via libLLVM')
    ap.add_argument('--llvm-opt', default='', help='in-process LLVM PassBuilder pipeline (e.g. default<O2>)')
    ap.add_argument('--emit-bc', action='store_true', help='also emit LLVM bitcode (.bc) chunks')
    ap.add_argument('--emit-raw', action='store_true', help='also emit raw lifted <mod>_XX_raw.ll and disassembled <mod>_XX_arm64.asm')
    ap.add_argument('--emit-arm64-asm', action='store_true', help='also emit disassembled <mod>_XX_arm64.asm')
    ap.add_argument('--safe-passes', action='store_true', help='disable higher-risk interprocedural/speculative passes (default)')
    ap.add_argument('--all-passes', action='store_true', help='enable all 23 optimization passes including high-risk passes')
    ap.add_argument('--no-opt-passes', action='store_true', help='disable all optional optimization passes')
    ap.add_argument('--disable-pass', action='append', default=[], help='disable specific pass(es) by name (comma-separated)')
    ap.add_argument('--enable-pass', action='append', default=[], help='enable specific pass(es) by name (comma-separated)')
    ap.add_argument('--find-fn', action='append', default=[], help='resolve a guest address to its function and .ll chunk')
    ap.add_argument('--dump-fn', action='append', default=[], help='dump pre-pass and post-pass .ll for the function containing ADDR')
    ap.add_argument('--module', default='', help='only process a single module (main, subsdk0, or sdk)')
    args = ap.parse_args()

    t0 = time.time()
    lifter_bin = build_lifter_binary()
    triple = 'x86_64-w64-windows-gnu' if os.name == 'nt' else f'{platform.machine()}-pc-linux-gnu'
    total_cpus = os.cpu_count() or 8
    selected_modules = {k: v for k, v in MODULES.items() if not args.module or k == args.module}
    per_mod_threads = max(1, total_cpus // 2)

    extra_flags = []
    if args.verify_llvm:
        extra_flags.append('--verify-llvm')
    if args.llvm_opt:
        extra_flags += ['--llvm-opt', args.llvm_opt]
    if args.emit_bc:
        extra_flags.append('--emit-bc')
    if args.emit_raw:
        extra_flags.append('--emit-raw')
    if args.emit_arm64_asm:
        extra_flags.append('--emit-arm64-asm')
    if args.no_opt_passes:
        extra_flags.append('--no-opt-passes')
    elif args.all_passes:
        extra_flags.append('--all-passes')
    elif args.safe_passes:
        extra_flags.append('--safe-passes')
    for dp in args.disable_pass:
        extra_flags += ['--disable-pass', dp]
    for ep in args.enable_pass:
        extra_flags += ['--enable-pass', ep]
    for ff in args.find_fn:
        extra_flags += ['--find-fn', ff]
    for df in args.dump_fn:
        extra_flags += ['--dump-fn', df]

    if args.find_fn or args.dump_fn:
        for name, base in selected_modules.items():
            (args.out / name).mkdir(parents=True, exist_ok=True)
            cmd = [
                str(lifter_bin), name, str(args.exefs / name), hex(base), str(args.out / name),
                '--target-triple', triple,
            ] + extra_flags
            run_env = get_lifter_env()
            subprocess.run(cmd, cwd=ROOT, env=run_env)
        return

    PROGRESS_RE = re.compile(r'(\w+):\s+progress\s+(\d+)/(\d+)')
    FN_COUNT_RE = re.compile(r'(\w+):\s+\d+\s+boundaries,\s+(\d+)\s+functions')

    mod_totals = {name: 0 for name in selected_modules}
    mod_done = {name: 0 for name in selected_modules}
    active_readers = len(selected_modules)
    line_queue = queue.Queue()
    threads = []
    procs = []

    def reader(p, name, log_f, q):
        try:
            for line in p.stdout:
                log_f.write(line)
                log_f.flush()
                q.put((name, line))
        finally:
            p.stdout.close()
            q.put((name, None))

    for name, base in selected_modules.items():
        (args.out / name).mkdir(parents=True, exist_ok=True)
        log = open(args.out / f'{name}.log', 'w', encoding='utf-8')
        cmd = [
            str(lifter_bin), name, str(args.exefs / name), hex(base), str(args.out / name),
            '--threads', str(per_mod_threads),
            '--target-triple', triple,
        ] + extra_flags
        print(" ".join(cmd))
        run_env = get_lifter_env()
        proc = subprocess.Popen(
            cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            text=True, bufsize=1, encoding='utf-8', errors='replace',
            env=run_env
        )
        t = threading.Thread(target=reader, args=(proc, name, log, line_queue), daemon=True)
        t.start()
        threads.append(t)
        procs.append((name, log, proc))

    is_tty = sys.stdout.isatty()
    last_draw = 0.0
    last_len = 0
    last_pct_logged = -1

    try:
        while active_readers > 0:
            try:
                item = line_queue.get(timeout=0.05)
            except queue.Empty:
                item = None

            if item is not None:
                name, line = item
                if line is None:
                    active_readers -= 1
                    if mod_totals.get(name, 0) > 0:
                        mod_done[name] = mod_totals[name]
                else:
                    m_prog = PROGRESS_RE.search(line)
                    if m_prog:
                        m_name = m_prog.group(1)
                        mod_done[m_name] = int(m_prog.group(2))
                        mod_totals[m_name] = int(m_prog.group(3))
                    else:
                        m_cnt = FN_COUNT_RE.search(line)
                        if m_cnt:
                            m_name = m_cnt.group(1)
                            mod_totals[m_name] = int(m_cnt.group(2))

            now = time.time()
            if is_tty:
                if now - last_draw >= 0.08 or active_readers == 0:
                    term_w = shutil.get_terminal_size((80, 20)).columns
                    bar_text = format_progress_bar(mod_done, mod_totals, t0, term_width=term_w)
                    pad = max(0, last_len - len(bar_text))
                    sys.stdout.write('\r' + bar_text + ' ' * pad)
                    sys.stdout.flush()
                    last_len = max(len(bar_text), last_len)
                    last_draw = now
            else:
                tot_d = sum(mod_done.values())
                tot_f = sum(mod_totals.values())
                current_pct = int((tot_d / tot_f * 10) if tot_f > 0 else 0)
                if current_pct > last_pct_logged or now - last_draw >= 5.0 or active_readers == 0:
                    bar_text = format_progress_bar(mod_done, mod_totals, t0, term_width=80)
                    sys.stdout.write(bar_text + '\n')
                    sys.stdout.flush()
                    last_pct_logged = current_pct
                    last_draw = now

        if is_tty and last_len > 0:
            term_w = shutil.get_terminal_size((80, 20)).columns
            bar_text = format_progress_bar(mod_done, mod_totals, t0, term_width=term_w)
            pad = max(0, last_len - len(bar_text))
            sys.stdout.write('\r' + bar_text + ' ' * pad + '\n')
            sys.stdout.flush()
    except KeyboardInterrupt:
        for _, _, p in procs:
            try:
                p.terminate()
            except Exception:
                pass
        raise

    for t in threads:
        t.join(timeout=1.0)

    failed = False
    for name, log, p in procs:
        code = p.wait()
        log.close()
        summary = [l for l in (args.out / f'{name}.log').read_text(encoding='utf-8', errors='replace').splitlines() if 'progress' not in l]
        print(f'{name}: exit {code}; ' + ' | '.join(summary[-2:]))
        failed |= code != 0
    print(f'{time.time() - t0:.0f}s')
    sys.exit(1 if failed else 0)


if __name__ == '__main__':
    main()
