"""Where the build's tools are: the builder package's deps/ first, then the developer's own installs.

On Windows: CLANG64 is a folder with clang, clang++, lld, ninja and the static libraries the port links (SDL3, opus,
vpx, zstd, iconv, libc++): deps/clang64/bin in the builder package (a trimmed MSYS2 CLANG64), else ULTRS_CLANG64, else
C:/msys64/clang64/bin.
On Linux (x86-64): checks deps/clang64/bin or ULTRS_CLANG64 first, then discovers system clang/gcc, clang++/g++, and
ninja on PATH.
XLATE: the shader translator ultrs-shaders(.exe) (tools/build_xlate.py).
"""
import os
import pathlib
import shutil

ROOT = pathlib.Path(__file__).resolve().parent.parent
IS_LINUX = os.name != 'nt'
EXE_EXT = '' if IS_LINUX else '.exe'


def _clang64():
    candidates = [ROOT / 'deps/clang64/bin', os.environ.get('ULTRS_CLANG64')]
    if not IS_LINUX:
        candidates.append('C:/msys64/clang64/bin')
    for c in candidates:
        if c and (pathlib.Path(c) / f'clang{EXE_EXT}').is_file():
            return pathlib.Path(c)
    if IS_LINUX:
        for cc_name in ('clang', 'gcc'):
            found = shutil.which(cc_name)
            if found:
                return pathlib.Path(found).resolve().parent
    return None


CLANG64 = _clang64()
XLATE = next(
    (p for p in (
        ROOT / f'deps/shaders/ultrs-shaders{EXE_EXT}',
        ROOT / f'dev-local/build/shaders/ultrs-shaders{EXE_EXT}',
        ROOT / 'deps/shaders/ultrs-shaders.exe',
        ROOT / 'dev-local/build/shaders/ultrs-shaders.exe',
    ) if p.is_file()),
    None
)


def find_cc():
    """Return (cc, cxx, has_clang_ir) for the current host."""
    if not IS_LINUX:
        if CLANG64:
            return str(CLANG64 / 'clang.exe'), str(CLANG64 / 'clang++.exe'), True
        return 'clang', 'clang++', True
    if CLANG64 and (CLANG64 / 'clang').is_file() and (CLANG64 / 'clang++').is_file():
        return str(CLANG64 / 'clang'), str(CLANG64 / 'clang++'), True
    cc = shutil.which('clang') or shutil.which('gcc') or 'gcc'
    cxx = shutil.which('clang++') or shutil.which('g++') or 'g++'
    has_clang = os.path.basename(cc).startswith('clang')
    return cc, cxx, has_clang


def env():
    """The environment for the build's commands: CLANG64 first on PATH."""
    if CLANG64 is None:
        if IS_LINUX:
            raise SystemExit('C/C++ compiler not found: install clang or gcc/g++ on Linux')
        raise SystemExit('clang not found: unpack the builder package (deps/clang64) or install MSYS2 CLANG64 '
                         '(see BUILDING.md), or set ULTRS_CLANG64 to its bin folder')
    return dict(os.environ, PATH=str(CLANG64) + os.pathsep + os.environ.get('PATH', ''))
