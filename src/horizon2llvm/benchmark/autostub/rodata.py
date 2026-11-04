"""Nintendo Switch NSO .rodata extraction and pure-Python LZ4 block decompressor.

This module provides self-contained utilities to extract and read the uncompressed
.rodata segment from Nintendo Switch NSO executable binaries (e.g. data/exefs/main).
"""

from __future__ import annotations

from pathlib import Path
import struct


def decompress_lz4_block(src: bytes, uncompressed_size: int) -> bytes:
    """Pure-Python RFC-compliant LZ4 block decompressor.

    What are we doing here?
    -----------------------
    Nintendo Switch executable binaries (NSO0 format) compress their code and data
    segments (.text, .rodata, .data) using standard LZ4 block encoding.
    To inspect .rodata and invert indirect jump tables (e.g., `adr xBase; ldrh wOff, [xTbl, xIdx, lsl #1]; add xT, xBase, wOff, lsl #2; br xT`)
    without requiring third-party native C extensions (such as `pip install lz4`),
    this function implements the complete byte-level LZ4 decompression state machine:

    1. Each sequence begins with a 1-byte `token`:
       - High nibble `token >> 4`: Length of the literal byte sequence.
       - Low nibble `token & 0x0F`: Match length (minimum 4 bytes).
    2. Variable-length integer extension for literals:
       - If literal length == 15, read additional bytes until byte != 255 and add them.
    3. Literal copy:
       - Read the literal bytes from the input stream and append directly to the output buffer.
    4. Match offset:
       - If not at end of block, read a 16-bit little-endian relative offset pointing backwards
         into previously emitted output bytes.
    5. Variable-length integer extension for match length:
       - If low nibble == 15, read additional bytes until byte != 255 and add them.
       - Total match length = 4 + match_len.
    6. Match copy (Run-Length / Overlapping Copy):
       - Copy `match_length` bytes from `output[op - offset]` to `output[op]`.
       - Because match length may exceed the offset (e.g., RLE patterns), bytes are copied
         byte-by-byte or in small slices to replicate the overlapping repeat behavior.
    """
    src_len = len(src)
    out = bytearray(uncompressed_size)
    ip = 0
    op = 0
    r_size = uncompressed_size

    while ip < src_len and op < r_size:
        token = src[ip]
        ip += 1

        # High nibble: literal run length
        lit_len = token >> 4
        if lit_len == 15:
            while ip < src_len:
                s = src[ip]
                ip += 1
                lit_len += s
                if s != 255:
                    break

        # Copy literal bytes to output
        if lit_len > 0:
            end_lit = min(op + lit_len, r_size)
            actual_lit = end_lit - op
            out[op:end_lit] = src[ip : ip + actual_lit]
            ip += actual_lit
            op = end_lit
            if op >= r_size or ip >= src_len:
                break

        # Low nibble: match length
        offset = src[ip] | (src[ip + 1] << 8)
        ip += 2
        if offset == 0:
            break

        match_len = token & 0x0F
        if match_len == 15:
            while ip < src_len:
                s = src[ip]
                ip += 1
                match_len += s
                if s != 255:
                    break
        match_len += 4

        # Replicate overlapping match from history
        match_pos = op - offset
        end_match = min(op + match_len, r_size)
        while op < end_match:
            out[op] = out[match_pos]
            op += 1
            match_pos += 1

    return bytes(out[:op])


# In-memory cache for decompressed .rodata segment: (base_address, raw_bytes)
_NSO_RODATA_CACHE: tuple[int, bytes] | None = None


def get_nso_rodata(exefs_main_path: Path | None = None) -> tuple[int, bytes] | None:
    """Loads and decompresses the .rodata segment from `data/exefs/main`.

    Returns (rodata_guest_base, rodata_bytes) or None if the executable is not found.
    """
    global _NSO_RODATA_CACHE
    if _NSO_RODATA_CACHE is not None:
        return _NSO_RODATA_CACHE

    paths_to_try = [
        exefs_main_path,
        Path("data/exefs/main"),
        Path("../data/exefs/main"),
        Path("../../data/exefs/main"),
    ]
    main_file = next((p for p in paths_to_try if p and p.is_file()), None)
    if not main_file:
        return None

    try:
        data = main_file.read_bytes()
        if len(data) < 0x100 or data[:4] != b"NSO0":
            return None

        # NSO0 Header Layout:
        # 0x08: flags
        # 0x20: .rodata file offset
        # 0x24: .rodata memory base offset
        # 0x28: .rodata decompressed size
        # 0x48: .rodata compressed size in file
        ro_file_off, ro_mem_off, ro_decomp_sz = struct.unpack_from("<III", data, 0x20)
        ro_comp_sz = struct.unpack_from("<I", data, 0x48)[0]
        flags = struct.unpack_from("<I", data, 0x08)[0]

        ro_comp_data = data[ro_file_off : ro_file_off + ro_comp_sz]
        is_compressed = bool(flags & 0x2)

        if is_compressed:
            ro_bytes = decompress_lz4_block(ro_comp_data, ro_decomp_sz)
        else:
            ro_bytes = ro_comp_data[:ro_decomp_sz]

        guest_base = 0x800000000 + ro_mem_off
        _NSO_RODATA_CACHE = (guest_base, ro_bytes)
        return _NSO_RODATA_CACHE
    except Exception:
        return None
