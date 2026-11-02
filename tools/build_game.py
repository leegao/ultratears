"""Write build/build.ninja for the runtime + the generated LLVM IR game code, and run ninja (or built-in parallel builder).

usage: python tools/build_game.py [--generated data/generated] [--target probe_cpu] [-j N] [--cpus N]
The ultratears target links UltraTears(.exe) in the game folder itself.
Run in the game folder (tools/setup.py does): the generated LLVM IR (.ll / .bc) is in data/ (derived from the game),
objects and executables go to build/; neither is ever in git.
"""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import os
import pathlib
import shlex
import shutil
import subprocess
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'tools'))
from toolchain import CLANG64, IS_LINUX, EXE_EXT, find_cc, env as tool_env  # noqa: E402
from gen_game import build_lifter_binary  # noqa: E402
import version  # noqa: E402

RUNTIME = [
    'src/runtime/dispatch.c',
    'src/runtime/loader.c',
    'src/runtime/simd_rt.c',
] + (['src/runtime/platform/windows.c'] if not IS_LINUX else [
    'src/runtime/platform/linux.c',
    'src/runtime/platform/linux_sdl3_shim.c',
])

REPLAY_SRCS = [
    'src/replay/main.c',
    'src/replay/args.c',
    'src/replay/setup.c',
    'src/replay/bench.c',
    'src/replay/compact.cpp',
    'src/replay/stubs.c',
]


TARGETS = {
    'probe_cpu': ['src/probe/probe_cpu.c'],
    'probe_passes': ['src/probe/probe_passes.cpp'],
    'replay_frame': REPLAY_SRCS + ['src/vk/vk.c', 'src/vk/shader_object_emu.cpp', 'src/vk/present.c'],
    'ultratears': [

        'src/host/boot.c', 'src/host/guest.c', 'src/host/svc.c', 'src/host/threads.c', 'src/host/ipc.c',
        'src/host/services_lm.c', 'src/host/overrides_oe.c',
        'src/host/overrides_time.c',
        'src/host/fs.c', 'src/host/account.c',
        'src/host/overrides_applet.c', 'src/host/overrides_input.c',
        'src/host/audio_renderer.c', 'src/host/audio_mixer.c', 'src/host/audio_effects.c',
        'src/host/audio_reverb.c', 'src/host/opus_codec.c', 'src/host/movie_host.c', 'src/host/hid_feedback.c',
        'src/host/shared_font.c',
        'src/host/window_sdl.c', 'src/vk/vk.c', 'src/vk/shader_object_emu.cpp', 'src/vk/present.c', 'src/host/motion_fusion.c',
        'src/host/profiler.c', 'src/host/watch.c',
    ],
}

# The graphics front end (MacNativeGames' NVN layer) with its macOS stand-ins: own include paths, own rule
GFX = [
    'src/gfx/nvn/hle_nvn.c', 'src/gfx/nvn/nvn_tex.c', 'src/gfx/nvn/totk_nvn_ext.c', 'src/gfx/nvn/nvn_registry.c',
    'src/gfx/nvn/nvn_thunks.gen.c', 'src/gfx/nvn/nvn_dirty_win.c', 'src/gfx/nvn/totk_timeline_win.c',
    'src/gfx/nvn/nvn_names.gen.c', 'src/gfx/backend_null.c', 'src/gfx/gfx_bridge.c',
    'src/gfx/front_win.c', 'src/gfx/nvn/totk_vpool_win.c', 'src/gfx/backend_vk.c', 'src/gfx/vkb_tex.c',
    'src/gfx/vkb_capture.c',
    'src/gfx/vkb_shader.c', 'src/gfx/vkb_spv.c', 'src/gfx/vkb_audit.c', 'src/gfx/vkb_copy.c',
    'src/gfx/vkb_desc.c', 'src/gfx/vkb_shadow.c', 'src/gfx/vkb_ucap.c',
    'src/gfx/vkb_draw.c', 'src/gfx/tex/nvn_deswizzle.c', 'src/gfx/tex/astc.c', 'src/gfx/vkb_bc7.c',
    'src/gfx/tex/bc7.cpp', 'src/gfx/tex/bc7enc/bc7enc.cpp', 'src/gfx/tex/bc7enc/rgbcx.cpp', 'src/gfx/tex/bc7key.c',
]
GFX_INCLUDES = '-Isrc/gfx -Isrc/gfx/nvn -Isrc/gfx/nvn/include -Isrc/gfx/compat'
if IS_LINUX:
    GFX_INCLUDES += ' -include src/gfx/compat/gfx_compat.h -Ithird_party/linux_headers'


def _linux_lib(short_flag, so_candidates):
    """Use -l<foo> if lib<foo>.so exists in standard search paths, else link the versioned .so directly."""
    for d in ('/usr/lib/x86_64-linux-gnu', '/usr/lib64', '/usr/lib', '/lib/x86_64-linux-gnu'):
        p = pathlib.Path(d) / f'lib{short_flag[2:]}.so'
        if p.exists():
            return ''
    for d in ('/usr/lib/x86_64-linux-gnu', '/usr/lib64', '/usr/lib', '/lib/x86_64-linux-gnu'):
        for cand in so_candidates:
            p = pathlib.Path(d) / cand
            if p.exists():
                return str(p)
    return ''


if not IS_LINUX:
    LIBS = ('-static -Wl,--error-limit=0 -Wl,--disable-high-entropy-va -pthread -ldbghelp -lwinmm '
            '-lsynchronization -lshell32 -lopus -lvpx -lSDL3 -liconv '
            '-luser32 -lgdi32 -limm32 -lole32 -loleaut32 -lversion -luuid -ladvapi32 -lsetupapi -ldinput8 -lbcrypt -lc++')
    CFLAGS = '-O2 -march=x86-64-v3 -g -gcodeview -fno-strict-aliasing -D_FILE_OFFSET_BITS=64'
    GAME_IR_FLAGS = '-O2 -march=x86-64-v3 -g -gcodeview -Wno-override-module'
else:
    opus_lib = _linux_lib('-lopus', ('libopus.so.0',))
    vpx_lib = _linux_lib('-lvpx', ('libvpx.so.7', 'libvpx.so.8', 'libvpx.so.6'))
    sdl3_lib = _linux_lib('-lSDL3', ('libSDL3.so.0',))
    LIBS = ' '.join(x for x in ('-rdynamic', '-pthread', opus_lib, vpx_lib, sdl3_lib, '-ldl', '-lm', '-lstdc++') if x)
    CFLAGS = ('-O2 -march=x86-64-v3 -g -fno-strict-aliasing -D_FILE_OFFSET_BITS=64 '
              '-include src/runtime/platform/linux_compat.h -Ithird_party/linux_headers')
    GAME_IR_FLAGS = '-O2 -march=x86-64-v3 -g -Wno-override-module'
    # LLVM IR modules larger than this (by line count) are built with -O0 instead of -O2,
    # because -O2 on monstrous "franken" modules can take forever or run out of memory.
    GAME_IR_LL_LINE_THRESHOLD = 100_000

GAME_CFLAGS = CFLAGS + ' -w -Isrc/runtime'


def rel(p):
    return pathlib.Path(os.path.relpath(p, ROOT)).as_posix()


def write_if_changed(path, text):
    if not path.is_file() or path.read_text(encoding='utf-8') != text:
        path.write_text(text, encoding='utf-8')


def ll_is_oversized(text: str) -> bool:
    """Return True if an LLVM IR module is too large to compile with -O2 in reasonable time.

    Heuristic: high line count (sheer IR size) or high instruction count (register pressure
    and optimization work). Both correlate strongly with -O2 compile time / memory use.
    """
    line_count = text.count('\n')
    if line_count > GAME_IR_LL_LINE_THRESHOLD:
        return True
    instr_count = 0
    for line in text.splitlines():
        stripped = line.strip()
        if not stripped or stripped.startswith(('!', ';', 'declare', 'define', 'attributes', 'comdat', 'source_filename')):
            continue
        if '=' in stripped:
            instr_count += 1
    if instr_count > GAME_IR_LL_LINE_THRESHOLD:
        return True
    return False


def version_files(build):
    """build/version.h (the version and commit, tools/version.py) and the exe's resources: icon and version info."""
    v, commit = version.current()
    n = ','.join(str(x) for x in version.numbers(v))
    write_if_changed(build / 'version.h', f'#define ULTRS_VERSION "{v}"\n#define ULTRS_COMMIT "{commit}"\n')
    write_if_changed(build / 'ultratears.rc', f'''1 ICON "assets/icon.ico"
1 VERSIONINFO
FILEVERSION {n}
PRODUCTVERSION {n}
BEGIN
  BLOCK "StringFileInfo"
  BEGIN
    BLOCK "040904B0"
    BEGIN
      VALUE "CompanyName", "UltraTears contributors"
      VALUE "FileDescription", "UltraTears"
      VALUE "FileVersion", "{v} ({commit})"
      VALUE "LegalCopyright", "GPL-3.0-or-later. Not affiliated with Nintendo."
      VALUE "OriginalFilename", "UltraTears{EXE_EXT}"
      VALUE "ProductName", "UltraTears"
      VALUE "ProductVersion", "{v}"
    END
  END
  BLOCK "VarFileInfo"
  BEGIN
    VALUE "Translation", 0x409, 1200
  END
END
''')
    return v


def regenerate_linux_bootstrap_bundle():
    """Rebuild _LINUX_BOOTSTRAP_B64 from current source files so edited shims are preserved."""
    import base64
    import json
    import lzma
    bundle = {}
    for rel_path in [
        'src/runtime/platform/linux_sdl3_shim.c',
        'src/vk/vk.c',
        'src/runtime/platform/linux.c',
        'src/runtime/dispatch.c',
        'src/runtime/loader.c',
        'src/runtime/simd_rt.c',
    ]:
        p = ROOT / rel_path
        if p.is_file():
            bundle[rel_path] = p.read_text(encoding='utf-8')
    compressed = lzma.compress(json.dumps(bundle).encode('utf-8'))
    encoded = base64.b64encode(compressed).decode('ascii')
    chunk_size = 120
    chunks = [encoded[i:i+chunk_size] for i in range(0, len(encoded), chunk_size)]
    print(f"# Regenerated bundle ({len(chunks)} chunks, {len(encoded)} chars):")
    for c in chunks:
        print(f'    "{c}"')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--generated', default='data/generated')
    ap.add_argument('--target', default='probe_cpu')
    ap.add_argument('-j', type=int, default=0, help='parallel jobs (default: --cpus)')
    ap.add_argument('--cpus', type=int, default=8, help='logical CPUs the build may use (affinity); the rest stay free for the user')
    a = ap.parse_args()
    a.j = a.j or a.cpus
    gen = ROOT / a.generated
    build = ROOT / 'build'
    build.mkdir(exist_ok=True)

    cc, cxx, has_clang_ir = find_cc()
    if has_clang_ir:
        ir_cmd = f'{cc} -x ir $gameirflags -c $in -o $out'
        bc_cmd = f'{cc} $gameirflags -c $in -o $out'
    else:
        lifter_bin = rel(build_lifter_binary())
        ir_cmd = f'{lifter_bin} --compile-ir $in $out $gameirflags'
        bc_cmd = f'{lifter_bin} --compile-ir $in $out $gameirflags'

    if not IS_LINUX:
        link_cmd = f'{cc} -fuse-ld=lld -g -Wl,--pdb=$pdb -o $out @$out.rsp {LIBS}'
    else:
        if shutil.which('ld.lld'):
            lld_flag = '-fuse-ld=lld '
        elif shutil.which('gold'):
            lld_flag = '-fuse-ld=gold '
        else:
            lld_flag = ''
        target_libs = '-pthread -ldl -lm -lstdc++' if a.target in ('probe_cpu', 'probe_passes') else LIBS
        link_cmd = f'{cc} {lld_flag}-no-pie -g -o $out @$out.rsp {target_libs}'

    lines = [
        'builddir = build',
        f'cflags = {CFLAGS} -Wall -Wno-unused-function -Ibuild -Isrc/runtime',
        f'gameirflags = {GAME_IR_FLAGS if has_clang_ir else "-O0"}',
        f'gameflags = {GAME_CFLAGS}',
        'rule cc',
        f'  command = {cc} -MD -MF $out.d $cflags -c $in -o $out',
        '  depfile = $out.d',
        '  deps = gcc',
        f'gfxflags = {CFLAGS} -w {GFX_INCLUDES}',
        'rule gfxcc',
        f'  command = {cc} -MD -MF $out.d $gfxflags -c $in -o $out',
        '  depfile = $out.d',
        '  deps = gcc',
        'rule cxx',
        f'  command = {cxx} -MD -MF $out.d -O2 -std=c++17 -I. -Isrc/runtime -c $in -o $out',
        '  depfile = $out.d',
        '  deps = gcc',
        'rule gfxcxx',
        f'  command = {cxx} -MD -MF $out.d $gfxflags -std=c++17 -fno-exceptions -fno-rtti -c $in -o $out',
        '  depfile = $out.d',
        '  deps = gcc',
        'rule gameir',
        f'  command = {ir_cmd}',
        'rule gamebc',
        f'  command = {bc_cmd}',
        'rule gamecc',
        f'  command = {cc} -MD -MF $out.d $gameflags -c $in -o $out',
        '  depfile = $out.d',
        '  deps = gcc',
        'rule rc',
        '  command = llvm-windres --target=pe-x86-64 -I . $in -o $out',
        'rule link',
        f'  command = {link_cmd}',
        '  rspfile = $out.rsp',
        '  rspfile_content = $in',
        '',
    ]

    objs = []
    for src in RUNTIME + TARGETS[a.target]:
        is_cxx = src.endswith('.cpp')
        is_gfx = src.startswith('src/gfx/') or src.startswith('src/replay/')
        rule = 'gfxcxx' if is_cxx else ('gfxcc' if is_gfx else 'cc')
        obj = f'build/obj/{src.rsplit(".", 1)[0].replace("/", "_")}.o'
        lines.append(f'build {obj}: {rule} {src}')
        objs.append(obj)

    if a.target in ('ultratears', 'replay_frame'):
        if a.target == 'ultratears':
            print(f'UltraTears {version_files(build)}', flush=True)
            if not IS_LINUX:
                lines.append('build build/obj/ultratears_res.o: rc build/ultratears.rc | assets/icon.ico')
                objs.append('build/obj/ultratears_res.o')
        for src in GFX:
            is_cxx = src.endswith('.cpp')
            obj = f'build/obj/{src.rsplit(".", 1)[0].replace("/", "_")}.o'
            lines.append(f'build {obj}: {"gfxcxx" if is_cxx else "gfxcc"} {src}')
            objs.append(obj)

    game_objs = []
    if a.target == 'ultratears':
        def list_module_files(mod_dir, module, ext):
            seq = set()
            i = 0
            while True:
                p = mod_dir / f'{module}_{i:03d}.{ext}'
                if p.is_file():
                    seq.add(p)
                    i += 1
                else:
                    break
            tbl = mod_dir / f'{module}_table.{ext}'
            if tbl.is_file():
                seq.add(tbl)
            for f in mod_dir.glob(f'*.{ext}'):
                if f.name.endswith("_raw.ll"):
                    continue
                if f not in seq:
                    seq.add(f)
            return sorted(seq, key=lambda x: x.name)

        for module in ('main', 'subsdk0', 'sdk'):
            mod_dir = gen / module
            if not mod_dir.is_dir():
                continue
            bc_files = list_module_files(mod_dir, module, 'bc')
            ll_files = list_module_files(mod_dir, module, 'll')
            if bc_files:
                for bc in bc_files:
                    obj = f'build/game/{module}/{bc.stem}.o'
                    lines.append(f'build {obj}: gamebc {rel(bc)}')
                    game_objs.append(obj)
            elif ll_files:
                for ll in ll_files:
                    obj = f'build/game/{module}/{ll.stem}.o'
                    lines.append(f'build {obj}: gameir {rel(ll)}')
                    text = ll.read_text(errors='replace')
                    # if ll_is_oversized(text):
                    #     lines.append('  gameirflags = ' + GAME_IR_FLAGS.replace('-O2', '-O0'))
                    game_objs.append(obj)
            else:
                for c in list_module_files(mod_dir, module, 'c'):
                    obj = f'build/game/{module}/{c.stem}.o'
                    lines.append(f'build {obj}: gamecc {rel(c)}')
                    text = c.read_text(errors='replace')
                    if 'L_dispatch:' in text and text.count(chr(10) + 'L_') > 2000:
                        lines.append('  gameflags = ' + GAME_CFLAGS.replace('-O2', '-O0'))
                    game_objs.append(obj)
        if not game_objs:
            sys.exit(f'no generated LLVM IR in {gen}: run tools/gen_game.py first')

    exe = f'UltraTears{EXE_EXT}' if a.target == 'ultratears' else f'build/{a.target}{EXE_EXT}'
    lines.append(f'build {exe}: link {" ".join(objs + game_objs)}')
    if not IS_LINUX:
        lines.append(f'  pdb = build/{pathlib.Path(exe).stem}.pdb')
    if a.target == 'ultratears':
        replay_srcs = RUNTIME + REPLAY_SRCS + ['src/vk/vk.c', 'src/vk/shader_object_emu.cpp', 'src/vk/present.c'] + GFX
        replay_objs = [f'build/obj/{src.rsplit(".", 1)[0].replace("/", "_")}.o' for src in replay_srcs]
        for rsrc in REPLAY_SRCS:
            robj = f'build/obj/{rsrc.rsplit(".", 1)[0].replace("/", "_")}.o'
            lines.append(f'build {robj}: gfxcc {rsrc}')
        lines.append(f'build build/replay_frame: link {" ".join(dict.fromkeys(replay_objs))}')

    lines.append(f'default {exe}')
    ninja_file = build / 'build.ninja'
    ninja_file.write_text('\n'.join(lines) + '\n')

    env = tool_env()
    print(f'{len(game_objs)} generated LLVM IR modules, {len(objs)} runtime files', flush=True)

    ninja_bin = None
    if not IS_LINUX and CLANG64 and (CLANG64 / 'ninja.exe').is_file():
        ninja_bin = str(CLANG64 / 'ninja.exe')
    else:
        ninja_bin = shutil.which('ninja') or shutil.which('ninja-build')

    if ninja_bin:
        cmd = [ninja_bin, '-C', str(ROOT), '-f', 'build/build.ninja', f'-j{a.j}', '-k', '0']
        sys.exit(run_limited(cmd, env, (1 << a.cpus) - 1))
    else:
        sys.exit(run_ninja_fallback(ninja_file, env, a.j))


def run_ninja_fallback(ninja_file, env, jobs):
    """Built-in parallel executor for build/build.ninja when the ninja binary is not installed on Linux."""
    vars_map = {}
    rules = {}
    builds = []
    cur_rule = None
    cur_build = None

    for raw in ninja_file.read_text(encoding='utf-8').splitlines():
        line = raw.rstrip()
        if not line or line.startswith('#'):
            continue
        if line.startswith('rule '):
            cur_rule = line.split()[1]
            rules[cur_rule] = {}
            cur_build = None
        elif line.startswith('build '):
            cur_rule = None
            lhs, rhs = line[6:].split(':', 1)
            out = lhs.strip()
            parts = rhs.split('|')[0].strip().split()
            rname, ins = parts[0], parts[1:]
            cur_build = {'out': out, 'rule': rname, 'ins': ins, 'vars': {}}
            builds.append(cur_build)
        elif line.startswith('  ') and cur_rule:
            k, v = line.strip().split('=', 1)
            rules[cur_rule][k.strip()] = v.strip()
        elif line.startswith('  ') and cur_build:
            k, v = line.strip().split('=', 1)
            cur_build['vars'][k.strip()] = v.strip()
        elif '=' in line and not line.startswith(' '):
            k, v = line.split('=', 1)
            vars_map[k.strip()] = v.strip()

    def expand(tmpl, b):
        res = tmpl
        local = dict(vars_map)
        local.update(b['vars'])
        local['in'] = ' '.join(b['ins'])
        local['out'] = b['out']
        for k in sorted(local, key=len, reverse=True):
            res = res.replace(f'${k}', local[k])
        return res

    compile_steps = [b for b in builds if b['rule'] != 'link']
    link_steps = [b for b in builds if b['rule'] == 'link']

    total = len(compile_steps)
    done = 0
    t_start = time.time()

    def run_step(b):
        out_path = ROOT / b['out']
        out_path.parent.mkdir(parents=True, exist_ok=True)
        in_paths = [ROOT / p for p in b['ins']]
        if out_path.is_file() and all(p.is_file() and out_path.stat().st_mtime >= p.stat().st_mtime for p in in_paths):
            return 0, ''
        r = rules[b['rule']]
        if 'rspfile' in r:
            rsp_path = ROOT / expand(r['rspfile'], b)
            rsp_path.write_text(expand(r['rspfile_content'], b) + '\n', encoding='utf-8')
        cmd_str = expand(r['command'], b)
        proc = subprocess.run(shlex.split(cmd_str), cwd=ROOT, env=env, capture_output=True, text=True)
        return proc.returncode, (proc.stdout + proc.stderr)

    with ThreadPoolExecutor(max_workers=max(1, jobs)) as pool:
        futs = {pool.submit(run_step, b): b for b in compile_steps}
        for fut in as_completed(futs):
            done += 1
            if done % 50 == 0 or done == total:
                elapsed = time.time() - t_start
                rate = done / elapsed if elapsed > 0 else 0
                print(f'[{done}/{total}] compiling ({rate:.1f} obj/s)...', flush=True)
            rc, msg = fut.result()
            if rc != 0:
                sys.stderr.write(msg)
                return rc

    print(f'linking {len(link_steps)} target(s)...', flush=True)
    for b in link_steps:
        rc, msg = run_step(b)
        if msg:
            sys.stderr.write(msg)
        if rc != 0:
            return rc
    return 0


def run_limited(cmd, env, mask):
    if os.name != 'nt':
        return subprocess.run(cmd, env=env).returncode
    import ctypes
    CREATE_SUSPENDED, BELOW_NORMAL_PRIORITY_CLASS = 0x4, 0x4000
    p = subprocess.Popen(cmd, env=env, creationflags=CREATE_SUSPENDED | BELOW_NORMAL_PRIORITY_CLASS)
    handle = int(p._handle)
    if not ctypes.windll.kernel32.SetProcessAffinityMask(handle, ctypes.c_size_t(mask)):
        p.kill()
        sys.exit('SetProcessAffinityMask failed')
    ctypes.windll.ntdll.NtResumeProcess(handle)
    return p.wait()


if __name__ == '__main__':
    main()
