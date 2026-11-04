#!/usr/bin/env python3
"""
tools/mkarchive.py - Build a fresh, clean, and complete UltraTears repository archive.zip.

Works on systems with or without the system 'zip' CLI tool.
Preserves Unix executable permissions and Unix symlinks (such as libLLVM.so).
"""

import fnmatch
import os
import stat
import sys
import time
import zipfile

EXCLUDE_DIRS = {
    "build", ".cache", "dev-local", "userdata", "skills", ".git",
    "totk_dump", "switch", "perf", "__pycache__"
}

EXCLUDE_DIR_PATHS = {
    "data/fonts", "data/generated", "data/romfs", "data/shaders", "data/textures"
}

EXCLUDE_FILE_PATTERNS = [
    "archive.zip", "UltraTears", "tools/lifter.zip", "*.pyc", "*~", "*.tmp",
    "src/horizon2llvm/benchmark/samples/*/results/*"
]

KNOWN_BENCHMARK_SUITES = [
    "main_432", "main_105_alloc", "main_159_dispatch",
    "main_121_simd", "main_300_bvhtree", "main_163_actor",
    "main_136_alloc", "main_111_slab", "main_083_buddy", "main_154_hashmap",
    "main_029_mempool", "main_121_ringbuf", "main_475_threadpool", "main_125_rescache",
    "main_123_animblend", "main_107_arenabucket", "main_124_scenegraph", "main_180_eventengine",
    "main_107_freelist", "main_107_buddysplit", "main_027_physics", "main_435_dispatch",
    "main_068_ecs", "main_050_renderpass", "main_1163_spatialhash", "main_067_statickernel"
]

KNOWN_FILES_AND_SYMLINKS = [
    "tools/analyze_nso.cpp",
    "tools/analyze_nso.py",
    "src/horizon2llvm/third-party/llvm/include",
    "src/horizon2llvm/third-party/llvm/prebuilts",
    "src/horizon2llvm/third-party/llvm/llvm/prebuilts/x86-64/libLLVM.so",
    "src/horizon2llvm/benchmark/MASTER_BENCHMARK_SUMMARY.md",
]


def should_exclude(rel_path, is_dir):
    rel_norm = rel_path.replace("\\", "/").strip("/")
    if not rel_norm:
        return False
    parts = rel_norm.split("/")
    for p in parts:
        if p in EXCLUDE_DIRS:
            return True
    for ed in EXCLUDE_DIR_PATHS:
        if rel_norm == ed or rel_norm.startswith(ed + "/"):
            return True
    base = os.path.basename(rel_norm)
    for pat in EXCLUDE_FILE_PATTERNS:
        if fnmatch.fnmatch(base, pat) or fnmatch.fnmatch(rel_norm, pat):
            return True
    return False


def collect_repo_files(root_dir):
    files = set()
    for dirpath, dirnames, filenames in os.walk(root_dir, followlinks=False):
        rel_dir = os.path.relpath(dirpath, root_dir)
        if rel_dir == ".":
            rel_dir = ""
        pruned = [d for d in dirnames if should_exclude(os.path.join(rel_dir, d) if rel_dir else d, True)]
        for d in pruned:
            dirnames.remove(d)
        for f in filenames:
            rel_file = os.path.join(rel_dir, f) if rel_dir else f
            if not should_exclude(rel_file, False):
                files.add(rel_file.replace("\\", "/"))

    # Explicitly ensure all benchmark suites and their artifacts are traversed
    bench_dir = os.path.join(root_dir, "src/horizon2llvm/benchmark")
    if os.path.exists(bench_dir):
        candidate_suites = set(KNOWN_BENCHMARK_SUITES)
        try:
            for item in os.listdir(bench_dir):
                if item.startswith("main_"):
                    candidate_suites.add(item)
        except Exception:
            pass

        for s in sorted(list(candidate_suites)):
            sdir = os.path.join(bench_dir, s)
            if os.path.exists(sdir):
                for sub_root, _, sub_files in os.walk(sdir):
                    for sf in sub_files:
                        fpath = os.path.join(sub_root, sf)
                        rel_f = os.path.relpath(fpath, root_dir).replace("\\", "/")
                        if not should_exclude(rel_f, False):
                            files.add(rel_f)

    # Explicitly ensure critical files and symlinks are tracked
    for item in KNOWN_FILES_AND_SYMLINKS:
        full_item = os.path.join(root_dir, item)
        if os.path.islink(full_item) or os.path.isfile(full_item):
            files.add(item)

    # Also include directory entries for empty/sub directories
    dirs = set()
    for f in files:
        parts = f.split("/")
        for i in range(1, len(parts)):
            dirs.add("/".join(parts[:i]) + "/")

    return sorted(list(dirs)), sorted(list(files))


def make_archive(out_zip_path, root_dir="."):
    root_dir = os.path.abspath(root_dir)
    dirs, files = collect_repo_files(root_dir)
    print(f"Packaging {len(files)} files across {len(dirs)} directories into {out_zip_path}...")

    # Always create clean archive from scratch (do not just update)
    if os.path.exists(out_zip_path):
        os.remove(out_zip_path)

    temp_zip = out_zip_path + ".tmp"
    if os.path.exists(temp_zip):
        os.remove(temp_zip)

    t0 = time.time()
    with zipfile.ZipFile(temp_zip, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        # Add directory entries
        for d in dirs:
            zinfo = zipfile.ZipInfo(d)
            zinfo.create_system = 3  # Unix
            zinfo.external_attr = 0o40755 << 16  # directory permissions
            zf.writestr(zinfo, b"")

        # Add files & symlinks
        for f in files:
            full_path = os.path.join(root_dir, f)
            st = os.lstat(full_path)
            zinfo = zipfile.ZipInfo(f)
            zinfo.create_system = 3  # Unix
            mtime = time.localtime(st.st_mtime)
            zinfo.date_time = mtime[0:6]
            zinfo.compress_type = zipfile.ZIP_DEFLATED

            if stat.S_ISLNK(st.st_mode):
                # Symlink
                link_target = os.readlink(full_path)
                zinfo.external_attr = (st.st_mode & 0xFFFF) << 16
                zf.writestr(zinfo, link_target)
            elif stat.S_ISREG(st.st_mode):
                # Regular file
                zinfo.external_attr = (st.st_mode & 0xFFFF) << 16
                with open(full_path, "rb") as fp:
                    zf.writestr(zinfo, fp.read())

    os.replace(temp_zip, out_zip_path)
    sz_mb = os.path.getsize(out_zip_path) / (1024 * 1024)
    dt = time.time() - t0
    print(f"Created {out_zip_path} ({sz_mb:.1f} MB) in {dt:.1f}s.")


def main():
    out_path = sys.argv[1] if len(sys.argv) > 1 else "archive.zip"
    make_archive(out_path)


if __name__ == "__main__":
    main()
