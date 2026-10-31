"""Fill the BC7 cache from the player's RomFS (tools/bc7build/bc7build.c): every ASTC texture of the TexToGo (.txtg) and
BNTX (.bntx / .bntx.zs: the interface, some effects) files, encoded once.

usage: python tools/bc7_build.py [--romfs data/romfs] [--cache data/textures] [--threads 8] [--quality 2]
                                 [--limit N] [--max-block-area 144]
"""
import argparse
import os
import pathlib
import subprocess
import sys
import time

ROOT = pathlib.Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / 'tools'))
from toolchain import IS_LINUX, EXE_EXT, find_cc, env as tool_env  # noqa: E402
from build_game import run_limited, _linux_lib  # noqa: E402
from romfs import RomFS  # noqa: E402

SOURCES_C = ['tools/bc7build/bc7build.c', 'src/gfx/tex/astc.c', 'src/gfx/tex/bc7key.c']
SOURCES_CXX = ['src/gfx/tex/bc7.cpp', 'src/gfx/tex/bc7enc/bc7enc.cpp', 'src/gfx/tex/bc7enc/rgbcx.cpp']


def build_tool(env):
    exe = ROOT / f'build/bc7build{EXE_EXT}'
    newest = max((ROOT / s).stat().st_mtime for s in SOURCES_C + SOURCES_CXX)
    if exe.exists() and exe.stat().st_mtime > newest:
        return exe
    cc, cxx, _ = find_cc()
    objs = []
    (ROOT / 'build/obj').mkdir(parents=True, exist_ok=True)
    for s in SOURCES_C + SOURCES_CXX:
        is_cxx = s.endswith('.cpp')
        obj = ROOT / 'build/obj' / ('bc7build_' + s.replace('/', '_').rsplit('.', 1)[0] + '.o')
        cmd = [cxx if is_cxx else cc, '-O2', '-march=x86-64-v3', '-w']
        if IS_LINUX:
            cmd += ['-Ithird_party/linux_headers']
        cmd += ['-c', str(ROOT / s), '-o', str(obj)]
        if is_cxx:
            cmd += ['-std=c++17', '-fno-exceptions', '-fno-rtti']
        subprocess.run(cmd, check=True, env=env)
        objs.append(str(obj))
    if not IS_LINUX:
        link_cmd = [cc, '-fuse-ld=lld', '-o', str(exe)] + objs + ['-static', '-pthread', '-lzstd', '-lc++']
    else:
        zstd_lib = _linux_lib('-lzstd', ('libzstd.so.1',))
        link_cmd = [cc, '-o', str(exe)] + objs + ['-pthread', zstd_lib, '-lstdc++', '-lm']
    subprocess.run(link_cmd, check=True, env=env)
    return exe


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--romfs', default='data/romfs')
    ap.add_argument('--cache', default='data/textures')
    ap.add_argument('--threads', type=int, default=8)
    ap.add_argument('--quality', type=int, default=2)
    ap.add_argument('--limit', type=int, default=0)
    ap.add_argument('--max-block-area', type=int, default=144)
    a = ap.parse_args()
    rom = RomFS(ROOT / a.romfs)
    files = [dict(path=p, size=n, offset=rom.offset(p)) for p, n in rom.files.items()
             if (p.startswith('TexToGo/') and p.endswith('.txtg')) or p.endswith('.bntx.zs') or p.endswith('.bntx')]
    files.sort(key=lambda f: -f['size'])
    if a.limit:
        files = files[:a.limit]
    cache = ROOT / a.cache
    cache.mkdir(parents=True, exist_ok=True)
    lst = cache / 'texture-list.txt'
    with open(lst, 'w', encoding='utf-8', newline='\n') as out:
        for f in files:
            out.write(f"{f['offset']} {f['size']} {f['path']}\n")
    env = tool_env()
    exe = build_tool(env)
    print(f'{len(files)} texture files -> {cache}', flush=True)
    t0 = time.time()
    rc = run_limited([str(exe), str(rom.image or rom.root), str(lst), str(cache), str(a.threads), str(a.quality),
                      str(a.max_block_area)], env,
                     (1 << a.threads) - 1)
    print(f'{time.time() - t0:.0f} s', flush=True)
    sys.exit(rc)


if __name__ == '__main__':
    main()
