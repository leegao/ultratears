"""Build the shader translator ultrs-shaders (MacNativeGames' totk_xlate service around the Ryujinx 1.3.2 shader
translator in third_party/maxwell_shader, both MIT) as one self-contained program: dev-local/build/shaders/ultrs-shaders(.exe).

usage: python tools/build_xlate.py [--dotnet dotnet]
"""
import argparse
import os
import pathlib
import subprocess
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
IS_LINUX = os.name != 'nt'
RID = 'linux-x64' if IS_LINUX else 'win-x64'
EXE_EXT = '' if IS_LINUX else '.exe'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--dotnet', default='dotnet')
    a = ap.parse_args()
    out = ROOT / 'dev-local/build/shaders'
    env = dict(os.environ, NUGET_PACKAGES=str(ROOT / 'dev-local/nuget'), DOTNET_CLI_HOME=str(ROOT / 'dev-local/dotnet-home'),
               DOTNET_CLI_TELEMETRY_OPTOUT='1', DOTNET_NOLOGO='1', DOTNET_SKIP_FIRST_TIME_EXPERIENCE='1')
    proj = ROOT / 'third_party/shader_translator/ultrs-shaders.csproj'
    rc = subprocess.run([a.dotnet, 'publish', str(proj), '-c', 'Release', '-r', RID, '--self-contained', 'true',
                         '-p:PublishSingleFile=true', '-p:InvariantGlobalization=true',
                         '-p:IncludeNativeLibrariesForSelfExtract=true',
                         f'-p:RyuSrc={ROOT / "third_party/maxwell_shader"}',
                         '-o', str(out), '-nologo', '-v:q', '-maxcpucount:4'], env=env).returncode
    if rc:
        sys.exit(rc)
    exe = out / f'ultrs-shaders{EXE_EXT}'
    for f in out.iterdir():
        if f.suffix == '.pdb':
            f.unlink()
    print(f'built {exe} ({exe.stat().st_size / 1e6:.0f} MB)')


if __name__ == '__main__':
    main()
