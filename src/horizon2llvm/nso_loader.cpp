// UltraTears NSO Loader, Function Discovery & Symbolic Jump-Table Analyzer (src/horizon2llvm_llvm/nso_loader.hpp)
//
// Replaces src/horizon2llvm/nso.py, src/horizon2llvm/analyze.py, and the Unicorn/Capstone jump-table analysis in
// src/horizon2llvm/gen.py with a pure C++17 implementation:
//   - Built-in LZ4 block decompression for NSO0 segments (text, rodata, data, bss).
//   - Full MOD0, .dynamic, DT_SYMTAB, DT_HASH, DT_GNU_HASH, DT_RELA, DT_JMPREL, and DT_RELR parsing.
//   - .eh_frame_hdr DWARF function start decoding, symbol/relocation/BL/ADR/ADRP+ADD boundary discovery.
//   - Built-in AArch64 abstract/symbolic mini-evaluator & backward pattern scanner for resolving all three
//     jump-table forms (fallthrough, taken, and hoisted-bounds-check scan) without Capstone or Unicorn.
#include "nso_loader.hpp"

#include <algorithm>
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdexcept>

namespace ultrs::nso {

uint32_t bits(uint32_t w, unsigned lo, unsigned n) {
    return (w >> lo) & ((1u << n) - 1u);
}

int64_t sext(uint64_t v, unsigned n) {
    uint64_t sign_bit = 1ULL << (n - 1);
    return (v & sign_bit) ? static_cast<int64_t>(v - (1ULL << n)) : static_cast<int64_t>(v);
}

uint64_t ones(unsigned n) {
    return n >= 64 ? ~0ULL : ((1ULL << n) - 1ULL);
}

uint64_t ror_val(uint64_t v, unsigned r, unsigned size) {
    r %= size;
    if (!r) return v & ones(size);
    return ((v >> r) | (v << (size - r))) & ones(size);
}

uint64_t replicate_val(uint64_t v, unsigned esize, unsigned size) {
    uint64_t out = 0;
    for (unsigned i = 0; i < size; i += esize) {
        out |= (v << i);
    }
    return out;
}

bool decode_bit_masks(unsigned N, unsigned imms, unsigned immr, unsigned size, bool immediate,
                       uint64_t& wmask, uint64_t& tmask) {
    unsigned x = (N << 6) | (~imms & 0x3Fu);
    if (x == 0) return false;
    unsigned length = 31u - __builtin_clz(x);
    if (length < 1) return false;
    unsigned levels = (1u << length) - 1u;
    if (immediate && (imms & levels) == levels) return false;
    unsigned S = imms & levels;
    unsigned R = immr & levels;
    unsigned diff = (S - R) & 0x3Fu;
    unsigned esize = 1u << length;
    unsigned d = diff & levels;
    uint64_t welem = ones(S + 1);
    uint64_t telem = ones(d + 1);
    wmask = replicate_val(ror_val(welem, R, esize), esize, size);
    tmask = replicate_val(telem, esize, size);
    return true;
}

NsoFile::NsoFile(const std::string& path) {
    std::ifstream f(path, std::ios::binary | std::ios::ate);
    if (!f) throw std::runtime_error("cannot open NSO file: " + path);
    size_t len = static_cast<size_t>(f.tellg());
    std::vector<uint8_t> raw(len);
    f.seekg(0);
    f.read(reinterpret_cast<char*>(raw.data()), static_cast<std::streamsize>(len));
    if (len < 0x100 || std::memcmp(raw.data(), "NSO0", 4) != 0) {
        throw std::runtime_error("invalid NSO0 header: " + path);
    }

    uint32_t flags = read_u32(raw.data(), 0xC);
    {
        std::ostringstream bid;
        int last_nz = 0x20;
        while (last_nz > 0 && raw[0x40 + last_nz - 1] == 0) --last_nz;
        for (int i = 0; i < last_nz; ++i) {
            bid << std::hex << std::setw(2) << std::setfill('0') << static_cast<unsigned>(raw[0x40 + i]);
        }
        build_id = bid.str();
    }

    struct SegDesc { uint32_t file_off, mem_off, dec_size, comp_size; };
    SegDesc segs[3]{};
    for (int i = 0; i < 3; ++i) {
        segs[i].file_off  = read_u32(raw.data(), 0x10 + i * 0x10);
        segs[i].mem_off   = read_u32(raw.data(), 0x14 + i * 0x10);
        segs[i].dec_size  = read_u32(raw.data(), 0x18 + i * 0x10);
        segs[i].comp_size = read_u32(raw.data(), 0x60 + i * 4);
    }
    bss_size = read_u32(raw.data(), 0x3C);
    text   = {segs[0].mem_off, segs[0].dec_size};
    rodata = {segs[1].mem_off, segs[1].dec_size};
    data   = {segs[2].mem_off, segs[2].dec_size};

    uint64_t end = static_cast<uint64_t>(segs[2].mem_off) + segs[2].dec_size + bss_size;
    size = (end + 0xFFFULL) & ~0xFFFULL;
    image.assign(size, 0);

    for (int i = 0; i < 3; ++i) {
        if (segs[i].file_off + segs[i].comp_size > raw.size()) {
            throw std::runtime_error("NSO segment out of bounds");
        }
        uint8_t* dst = image.data() + segs[i].mem_off;
        const uint8_t* src = raw.data() + segs[i].file_off;
        if (flags & (1u << i)) {
            size_t got = lz4_decompress(src, segs[i].comp_size, dst, segs[i].dec_size);
            if (got != segs[i].dec_size) {
                throw std::runtime_error("LZ4 decompression size mismatch in " + path);
            }
        } else {
            std::memcpy(dst, src, segs[i].dec_size);
        }
    }
    parse_mod0();
}

uint32_t NsoFile::u32(size_t off) const { return read_u32(image.data(), off); }
int32_t  NsoFile::s32(size_t off) const { return static_cast<int32_t>(read_u32(image.data(), off)); }
uint64_t NsoFile::u64(size_t off) const { return read_u64(image.data(), off); }
int64_t  NsoFile::s64(size_t off) const { return static_cast<int64_t>(read_u64(image.data(), off)); }

std::string NsoFile::cstr(size_t off) const {
    if (off >= image.size()) return "";
    const char* p = reinterpret_cast<const char*>(image.data() + off);
    size_t max_len = image.size() - off;
    return std::string(p, strnlen(p, max_len));
}

uint32_t NsoFile::read_u32(const uint8_t* p, size_t off) {
    uint32_t v;
    std::memcpy(&v, p + off, 4);
    return v;
}

uint64_t NsoFile::read_u64(const uint8_t* p, size_t off) {
    uint64_t v;
    std::memcpy(&v, p + off, 8);
    return v;
}

size_t NsoFile::lz4_decompress(const uint8_t* src, size_t srclen, uint8_t* dst, size_t dstlen) {
    const uint8_t* s = src;
    const uint8_t* se = src + srclen;
    uint8_t* d = dst;
    uint8_t* de = dst + dstlen;
    while (s < se) {
        uint8_t tok = *s++;
        size_t lit = tok >> 4;
        if (lit == 15) {
            uint8_t b;
            do {
                if (s >= se) return d - dst;
                b = *s++;
                lit += b;
            } while (b == 255);
        }
        if (d + lit > de || s + lit > se) break;
        std::memcpy(d, s, lit);
        d += lit;
        s += lit;
        if (s >= se) break;
        if (s + 2 > se) break;
        size_t off = static_cast<size_t>(s[0]) | (static_cast<size_t>(s[1]) << 8);
        s += 2;
        size_t ml = tok & 15;
        if (ml == 15) {
            uint8_t b;
            do {
                if (s >= se) return d - dst;
                b = *s++;
                ml += b;
            } while (b == 255);
        }
        ml += 4;
        uint8_t* m = d - off;
        if (m < dst || d + ml > de) break;
        while (ml--) *d++ = *m++;
    }
    return d - dst;
}

uint64_t NsoFile::gnu_hash_count(uint64_t off) const {
    uint32_t nbuckets   = u32(off);
    uint32_t symoffset  = u32(off + 4);
    uint32_t bloom_size = u32(off + 8);
    uint64_t buckets = off + 16 + static_cast<uint64_t>(bloom_size) * 8;
    uint64_t chains  = buckets + static_cast<uint64_t>(nbuckets) * 4;
    uint32_t last = 0;
    for (uint32_t i = 0; i < nbuckets; ++i) {
        uint32_t b = u32(buckets + i * 4);
        if (b > last) last = b;
    }
    if (last < symoffset) return symoffset;
    while ((u32(chains + (last - symoffset) * 4) & 1u) == 0) {
        ++last;
    }
    return last + 1;
}

void NsoFile::parse_mod0() {
    uint32_t mod0 = u32(4);
    if (mod0 + 0x1C > image.size() || std::memcmp(image.data() + mod0, "MOD0", 4) != 0) {
        throw std::runtime_error("NSO missing MOD0");
    }
    auto rel = [&](int i) -> uint32_t {
        return static_cast<uint32_t>(static_cast<int32_t>(mod0) + s32(mod0 + 4 + i * 4));
    };
    dynamic_off = rel(0);
    bss_start   = rel(1);
    bss_end     = rel(2);
    eh_start    = rel(3);
    eh_end      = rel(4);
    module_obj  = rel(5);

    std::vector<uint64_t> needed_offs;
    size_t off = dynamic_off;
    while (off + 16 <= image.size()) {
        uint64_t tag = u64(off);
        uint64_t val = u64(off + 8);
        off += 16;
        if (tag == DT_NULL) break;
        if (tag == DT_NEEDED) needed_offs.push_back(val);
        if (dyn.find(tag) == dyn.end()) dyn[tag] = val;
    }
    uint64_t strtab = dyn.count(DT_STRTAB) ? dyn[DT_STRTAB] : 0;
    for (uint64_t n : needed_offs) {
        needed.push_back(cstr(strtab + n));
    }

    std::optional<uint64_t> nsyms;
    if (dyn.count(DT_HASH)) {
        nsyms = u32(dyn[DT_HASH] + 4);
    } else if (dyn.count(DT_GNU_HASH)) {
        nsyms = gnu_hash_count(dyn[DT_GNU_HASH]);
    }
    if (nsyms.has_value() && dyn.count(DT_SYMTAB)) {
        uint64_t st = dyn[DT_SYMTAB];
        syms.reserve(*nsyms);
        for (uint64_t i = 0; i < *nsyms; ++i) {
            uint64_t o = st + i * 24;
            uint32_t name_off = u32(o);
            uint8_t info = image[o + 4];
            uint16_t shndx = static_cast<uint16_t>(image[o + 6]) | (static_cast<uint16_t>(image[o + 7]) << 8);
            uint64_t val = u64(o + 8);
            uint64_t sz  = u64(o + 16);
            syms.push_back(ElfSym{cstr(strtab + name_off), info, shndx, val, sz});
        }
    }

    for (auto [base_tag, size_tag] : {std::pair{DT_RELA, DT_RELASZ}, std::pair{DT_JMPREL, DT_PLTRELSZ}}) {
        if (dyn.count(base_tag) && dyn.count(size_tag)) {
            uint64_t b = dyn[base_tag];
            uint64_t n = dyn[size_tag] / 24;
            for (uint64_t i = 0; i < n; ++i) {
                uint64_t r_off  = u64(b + i * 24);
                uint64_t r_info = u64(b + i * 24 + 8);
                int64_t  r_add  = s64(b + i * 24 + 16);
                relocs.push_back(ElfReloc{r_off, static_cast<uint32_t>(r_info & 0xFFFFFFFFULL),
                                          static_cast<uint32_t>(r_info >> 32), r_add});
            }
        }
    }

    if (dyn.count(DT_RELR) && dyn.count(DT_RELRSZ)) {
        uint64_t b = dyn[DT_RELR];
        uint64_t n = dyn[DT_RELRSZ] / 8;
        uint64_t where = 0;
        for (uint64_t i = 0; i < n; ++i) {
            uint64_t entry = u64(b + i * 8);
            if ((entry & 1ULL) == 0) {
                relocs.push_back(ElfReloc{entry, R_AARCH64_RELATIVE, 0, static_cast<int64_t>(u64(entry))});
                where = entry + 8;
            } else {
                uint64_t bitmap = entry >> 1;
                for (unsigned bit = 0; bit < 63; ++bit) {
                    if ((bitmap >> bit) & 1ULL) {
                        uint64_t at = where + static_cast<uint64_t>(bit) * 8;
                        relocs.push_back(ElfReloc{at, R_AARCH64_RELATIVE, 0, static_cast<int64_t>(u64(at))});
                    }
                }
                where += 63 * 8;
            }
        }
    }
}

std::pair<int64_t, size_t> read_eh_encoded(const NsoFile& n, size_t off, uint8_t enc, int64_t pc_base) {
    uint8_t fmt = enc & 0x0F;
    uint8_t app = enc & 0x70;
    int64_t v = 0;
    size_t sz = 0;
    if (fmt == 0x0B) {
        v = n.s32(off);
        sz = 4;
    } else if (fmt == 0x03) {
        v = n.u32(off);
        sz = 4;
    } else if (fmt == 0x0C) {
        v = n.s64(off);
        sz = 8;
    } else if (fmt == 0x04) {
        v = static_cast<int64_t>(n.u64(off));
        sz = 8;
    } else {
        throw std::runtime_error("unsupported .eh_frame_hdr encoding");
    }
    if (app == 0x10) v += static_cast<int64_t>(off);
    else if (app == 0x30) v += pc_base;
    return {v, sz};
}

std::vector<uint64_t> eh_frame_functions(const NsoFile& n) {
    size_t hdr = n.eh_start;
    if (!hdr || hdr + 4 >= n.image.size()) return {};
    uint8_t ptr_enc = n.image[hdr + 1];
    uint8_t cnt_enc = n.image[hdr + 2];
    uint8_t tbl_enc = n.image[hdr + 3];
    size_t off = hdr + 4;
    auto [_, sz1] = read_eh_encoded(n, off, ptr_enc, static_cast<int64_t>(hdr));
    off += sz1;
    auto [count, sz2] = read_eh_encoded(n, off, cnt_enc, static_cast<int64_t>(hdr));
    off += sz2;
    std::vector<uint64_t> starts;
    if (count <= 0 || count > 1000000) return starts;
    starts.reserve(static_cast<size_t>(count));
    for (int64_t i = 0; i < count; ++i) {
        auto [loc, sz_loc] = read_eh_encoded(n, off, tbl_enc, static_cast<int64_t>(hdr));
        off += sz_loc;
        auto [fde, sz_fde] = read_eh_encoded(n, off, tbl_enc, static_cast<int64_t>(hdr));
        (void)fde;
        off += sz_fde;
        starts.push_back(static_cast<uint64_t>(loc));
    }
    return starts;
}

JumpTableResolver::JumpTableResolver(const NsoFile& nso, uint64_t base, const std::vector<uint32_t>& words)
    : nso_(nso), base_(base), lo_(base + nso.text.first), hi_(base + nso.text.first + nso.text.second),
      words_(words) {}

uint32_t JumpTableResolver::word(uint64_t a) const {
    if (a < lo_ || a >= hi_) return 0;
    return words_[(a - lo_) / 4];
}

bool JumpTableResolver::is_control_flow(uint32_t w) {
    uint32_t op0 = bits(w, 25, 4);
    return (op0 & 0b1110) == 0b1010;
}

std::optional<std::vector<uint64_t>> JumpTableResolver::resolve(
    uint64_t br_pc, uint64_t entry, uint64_t end,
    std::map<std::string, uint64_t>& stats) const {
    auto r = jump_table_fallthrough(br_pc, entry, end);
    if (!r.has_value() || r->size() <= 1) {
        auto taken = jump_table_taken(br_pc, entry, end);
        if (taken.has_value() && taken->size() > (r.has_value() ? r->size() : 0)) {
            r = std::move(taken);
        }
    }
    if (r.has_value() && r->size() > 1) {
        return r;
    }
    auto s = jump_table_scan(br_pc, entry, end, stats);
    if (r.has_value() && s.has_value()) {
        stats["jumptables_single_target_rescanned"]++;
        std::set<uint64_t> merged(r->begin(), r->end());
        merged.insert(s->begin(), s->end());
        if (merged.size() > 1) return std::vector<uint64_t>(merged.begin(), merged.end());
    }
    if (s.has_value() && s->size() > 1) return s;
    if (r.has_value() && r->size() > 1) return r;
    return std::nullopt;
}

bool JumpTableResolver::computed_target(uint64_t br_pc, uint64_t entry) const {
    unsigned rn = bits(word(br_pc), 5, 5);
    for (int64_t a = static_cast<int64_t>(br_pc) - 4;
         a >= static_cast<int64_t>(entry) && static_cast<int64_t>(br_pc) - a <= 4 * 128;
         a -= 4) {
        uint32_t w = word(static_cast<uint64_t>(a));
        if (is_control_flow(w)) return false;
        if ((w & 31u) == rn) {
            if ((w & 0x1F000000u) == 0x0B000000u) return true; // ADD/SUB (shifted or extended reg)
            if ((w & 0x9F000000u) == 0x10000000u) return true; // ADR
            return false;
        }
    }
    return false;
}

std::vector<unsigned> JumpTableResolver::index_regs(uint64_t start, uint64_t at, unsigned idx) const {
    auto copy_src = [](uint32_t w) -> int {
        if ((w & 0x7F800000u) == 0x12000000u) return static_cast<int>(bits(w, 5, 5)); // AND (imm)
        if ((w & 0x7FE0FFE0u) == 0x2A0003E0u) return static_cast<int>(bits(w, 16, 5)); // MOV (ORR with zr)
        if ((w & 0x7F800000u) == 0x53000000u || (w & 0x7F800000u) == 0x13000000u) {
            return static_cast<int>(bits(w, 5, 5)); // UBFM/SBFM
        }
        return -1;
    };
    std::set<unsigned> regs = {idx};
    bool changed = true;
    while (changed) {
        changed = false;
        for (uint64_t a = start; a < at; a += 4) {
            uint32_t w = word(a);
            unsigned rd = w & 31u;
            int src = copy_src(w);
            if (src < 0 || src >= 31 || rd >= 31) continue;
            unsigned usrc = static_cast<unsigned>(src);
            if (regs.count(rd) && !regs.count(usrc)) { regs.insert(usrc); changed = true; }
            if (regs.count(usrc) && !regs.count(rd)) { regs.insert(rd); changed = true; }
        }
    }
    return std::vector<unsigned>(regs.begin(), regs.end());
}

uint64_t JumpTableResolver::mem_read(uint64_t addr, unsigned nbytes) const {
    if (addr >= base_ && (addr - base_) <= nso_.image.size() &&
        nbytes <= nso_.image.size() - (addr - base_)) {
        uint64_t v = 0;
        std::memcpy(&v, nso_.image.data() + (addr - base_), nbytes);
        return v;
    }
    return 0;
}

bool JumpTableResolver::eval_cond(uint64_t nzcv, unsigned cond) {
    bool N = (nzcv >> 31) & 1;
    bool Z = (nzcv >> 30) & 1;
    bool C = (nzcv >> 29) & 1;
    bool V = (nzcv >> 28) & 1;
    switch (cond) {
        case 0:  return Z;
        case 1:  return !Z;
        case 2:  return C;
        case 3:  return !C;
        case 4:  return N;
        case 5:  return !N;
        case 6:  return V;
        case 7:  return !V;
        case 8:  return C && !Z;
        case 9:  return !(C && !Z);
        case 10: return N == V;
        case 11: return N != V;
        case 12: return !Z && (N == V);
        case 13: return !(!Z && (N == V));
        default: return true;
    }
}

bool JumpTableResolver::step_insn(MiniCpu& cpu, uint64_t& pc) const {
    if (pc < lo_ || pc >= hi_) return false;
    uint32_t w = word(pc);
    auto get_r = [&](unsigned sf, unsigned r, bool sp_ok = false) -> uint64_t {
        uint64_t v = (r == 31) ? (sp_ok ? cpu.sp : 0ULL) : cpu.x[r];
        return sf ? v : static_cast<uint32_t>(v);
    };
    auto set_r = [&](unsigned sf, unsigned r, uint64_t v, bool sp_ok = false) {
        uint64_t res = sf ? v : static_cast<uint32_t>(v);
        if (r == 31) {
            if (sp_ok) cpu.sp = res;
        } else {
            cpu.x[r] = res;
        }
    };
    auto set_flags_add = [&](unsigned sf, uint64_t a, uint64_t b, uint64_t r) {
        if (sf) {
            uint64_t n = (r >> 63) & 1, z = (r == 0), c = (r < a), v = (((a ^ r) & (b ^ r)) >> 63) & 1;
            cpu.nzcv = (n << 31) | (z << 30) | (c << 29) | (v << 28);
        } else {
            uint32_t a32 = static_cast<uint32_t>(a), b32 = static_cast<uint32_t>(b), r32 = static_cast<uint32_t>(r);
            uint64_t n = (r32 >> 31) & 1, z = (r32 == 0), c = (r32 < a32), v = (((a32 ^ r32) & (b32 ^ r32)) >> 31) & 1;
            cpu.nzcv = (n << 31) | (z << 30) | (c << 29) | (v << 28);
        }
    };
    auto set_flags_sub = [&](unsigned sf, uint64_t a, uint64_t b, uint64_t r) {
        if (sf) {
            uint64_t n = (r >> 63) & 1, z = (r == 0), c = (a >= b), v = (((a ^ b) & (a ^ r)) >> 63) & 1;
            cpu.nzcv = (n << 31) | (z << 30) | (c << 29) | (v << 28);
        } else {
            uint32_t a32 = static_cast<uint32_t>(a), b32 = static_cast<uint32_t>(b), r32 = static_cast<uint32_t>(r);
            uint64_t n = (r32 >> 31) & 1, z = (r32 == 0), c = (a32 >= b32), v = (((a32 ^ b32) & (a32 ^ r32)) >> 31) & 1;
            cpu.nzcv = (n << 31) | (z << 30) | (c << 29) | (v << 28);
        }
    };
    auto extend_reg = [&](unsigned rm, unsigned option, unsigned shift) -> uint64_t {
        uint64_t base = (rm == 31) ? 0ULL : cpu.x[rm];
        uint64_t e = base;
        switch (option) {
            case 0: e = static_cast<uint8_t>(base); break;
            case 1: e = static_cast<uint16_t>(base); break;
            case 2: e = static_cast<uint32_t>(base); break;
            case 3: e = base; break;
            case 4: e = static_cast<uint64_t>(static_cast<int64_t>(static_cast<int8_t>(base))); break;
            case 5: e = static_cast<uint64_t>(static_cast<int64_t>(static_cast<int16_t>(base))); break;
            case 6: e = static_cast<uint64_t>(static_cast<int64_t>(static_cast<int32_t>(base))); break;
            default: e = base; break;
        }
        return e << shift;
    };

    uint32_t op0 = bits(w, 25, 4);
    if ((op0 & 0b1110) == 0b1000) { // dp_imm
        unsigned op = bits(w, 23, 3);
        unsigned sf = bits(w, 31, 1);
        unsigned rd = bits(w, 0, 5), rn = bits(w, 5, 5);
        if (op == 0 || op == 1) { // ADR / ADRP
            int64_t imm = sext((bits(w, 5, 19) << 2) | bits(w, 29, 2), 21);
            uint64_t val = sf ? ((pc & ~0xFFFULL) + static_cast<uint64_t>(imm << 12))
                              : static_cast<uint64_t>(static_cast<int64_t>(pc) + imm);
            set_r(1, rd, val);
            pc += 4;
            return true;
        }
        if (op == 2) { // ADD/SUB imm
            unsigned opc = bits(w, 30, 1), S = bits(w, 29, 1), sh = bits(w, 22, 1);
            uint64_t imm = static_cast<uint64_t>(bits(w, 10, 12)) << (sh ? 12 : 0);
            uint64_t a = get_r(sf, rn, true);
            uint64_t r = opc ? (a - imm) : (a + imm);
            if (S) {
                if (opc) set_flags_sub(sf, a, imm, r);
                else set_flags_add(sf, a, imm, r);
            }
            set_r(sf, rd, r, !S);
            pc += 4;
            return true;
        }
        if (op == 4) { // logical imm
            unsigned opc = bits(w, 29, 2), N = bits(w, 22, 1);
            unsigned size = sf ? 64 : 32;
            uint64_t wmask = 0, tmask = 0;
            if (!decode_bit_masks(N, bits(w, 10, 6), bits(w, 16, 6), size, true, wmask, tmask)) return false;
            uint64_t a = get_r(sf, rn);
            uint64_t r = (opc == 0 || opc == 3) ? (a & wmask) : (opc == 1) ? (a | wmask) : (a ^ wmask);
            if (opc == 3) {
                uint64_t n = (r >> (size - 1)) & 1, z = ((sf ? r : static_cast<uint32_t>(r)) == 0);
                cpu.nzcv = (n << 31) | (z << 30);
            }
            set_r(sf, rd, r, opc != 3);
            pc += 4;
            return true;
        }
        if (op == 5) { // MOVN / MOVZ / MOVK
            unsigned opc = bits(w, 29, 2), hw = bits(w, 21, 2);
            uint64_t imm = static_cast<uint64_t>(bits(w, 5, 16)) << (hw * 16);
            if (opc == 0) set_r(sf, rd, ~imm);
            else if (opc == 2) set_r(sf, rd, imm);
            else if (opc == 3) {
                uint64_t mask = ~(0xFFFFULL << (hw * 16));
                set_r(sf, rd, (get_r(1, rd) & mask) | imm);
            } else return false;
            pc += 4;
            return true;
        }
        if (op == 6) { // SBFM / BFM / UBFM
            unsigned opc = bits(w, 29, 2), N = bits(w, 22, 1);
            unsigned immr = bits(w, 16, 6), imms = bits(w, 10, 6);
            unsigned size = sf ? 64 : 32;
            uint64_t wmask = 0, tmask = 0;
            if (!decode_bit_masks(N, imms, immr, size, false, wmask, tmask)) return false;
            uint64_t src = get_r(sf, rn);
            uint64_t rot = ror_val(src, immr, size);
            if (opc == 2) {
                set_r(sf, rd, rot & wmask & tmask);
            } else if (opc == 0) {
                uint64_t top = ((src >> imms) & 1ULL) ? ~0ULL : 0ULL;
                set_r(sf, rd, (top & ~tmask & ones(size)) | (rot & wmask & tmask));
            } else if (opc == 1) {
                uint64_t dst = get_r(sf, rd);
                uint64_t bot = (dst & ~wmask) | (rot & wmask);
                set_r(sf, rd, (dst & ~tmask & ones(size)) | (bot & tmask));
            } else return false;
            pc += 4;
            return true;
        }
        if (op == 7) { // EXTR
            unsigned rm = bits(w, 16, 5), lsb = bits(w, 10, 6);
            unsigned size = sf ? 64 : 32;
            uint64_t vm = get_r(sf, rm), vn = get_r(sf, rn);
            uint64_t r = (lsb == 0) ? vm : ((vm >> lsb) | (vn << (size - lsb)));
            set_r(sf, rd, r);
            pc += 4;
            return true;
        }
        return false;
    }
    if ((op0 & 0b0111) == 0b0101) { // dp_reg
        unsigned sf = bits(w, 31, 1);
        unsigned rd = bits(w, 0, 5), rn = bits(w, 5, 5), rm = bits(w, 16, 5);
        unsigned size = sf ? 64 : 32;
        auto shift_val = [&](uint64_t v, unsigned sh, unsigned amt) -> uint64_t {
            if (amt == 0) return v;
            if (sh == 0) return (v << amt) & ones(size);
            if (sh == 1) return (v & ones(size)) >> amt;
            if (sh == 2) return sf ? static_cast<uint64_t>(static_cast<int64_t>(v) >> amt)
                                   : static_cast<uint32_t>(static_cast<int32_t>(v) >> amt);
            return ror_val(v, amt, size);
        };
        if (!bits(w, 28, 1)) {
            if (bits(w, 24, 4) == 0b1010) { // logical shifted
                unsigned opc = bits(w, 29, 2), sh = bits(w, 22, 2), N = bits(w, 21, 1), amt = bits(w, 10, 6);
                uint64_t b = shift_val(get_r(sf, rm), sh, amt);
                if (N) b = (~b) & ones(size);
                uint64_t a = get_r(sf, rn);
                uint64_t r = (opc == 0 || opc == 3) ? (a & b) : (opc == 1) ? (a | b) : (a ^ b);
                if (opc == 3) {
                    uint64_t n = (r >> (size - 1)) & 1, z = ((sf ? r : static_cast<uint32_t>(r)) == 0);
                    cpu.nzcv = (n << 31) | (z << 30);
                }
                set_r(sf, rd, r);
                pc += 4;
                return true;
            }
            if (bits(w, 24, 4) == 0b1011) { // add/sub shifted or extended
                unsigned op = bits(w, 30, 1), S = bits(w, 29, 1);
                uint64_t a = 0, b = 0;
                bool sp_ok = false;
                if (!bits(w, 21, 1)) {
                    a = get_r(sf, rn);
                    b = shift_val(get_r(sf, rm), bits(w, 22, 2), bits(w, 10, 6));
                } else {
                    a = get_r(sf, rn, true);
                    b = extend_reg(rm, bits(w, 13, 3), bits(w, 10, 3));
                    if (!sf) b = static_cast<uint32_t>(b);
                    sp_ok = !S;
                }
                uint64_t r = op ? (a - b) : (a + b);
                if (S) {
                    if (op) set_flags_sub(sf, a, b, r);
                    else set_flags_add(sf, a, b, r);
                }
                set_r(sf, rd, r, sp_ok);
                pc += 4;
                return true;
            }
        } else {
            unsigned op2 = bits(w, 21, 4);
            if (op2 == 4) { // CSEL/CSINC/CSINV/CSNEG
                unsigned op = bits(w, 30, 1), o2 = bits(w, 10, 2), cond = bits(w, 12, 4);
                uint64_t a = get_r(sf, rn), b = get_r(sf, rm);
                uint64_t alt = (op == 0 && o2 == 0) ? b : (op == 0 && o2 == 1) ? (b + 1) : (op == 1 && o2 == 0) ? ~b : -b;
                set_r(sf, rd, eval_cond(cpu.nzcv, cond) ? a : alt);
                pc += 4;
                return true;
            }
            if (op2 == 6 && !bits(w, 30, 1)) { // shifts / div
                unsigned opcode = bits(w, 10, 6);
                uint64_t a = get_r(sf, rn), b = get_r(sf, rm);
                unsigned sh = static_cast<unsigned>(b & (size - 1));
                if (opcode == 8) set_r(sf, rd, a << sh);
                else if (opcode == 9) set_r(sf, rd, (a & ones(size)) >> sh);
                else if (opcode == 10) set_r(sf, rd, sf ? static_cast<uint64_t>(static_cast<int64_t>(a) >> sh)
                                                        : static_cast<uint32_t>(static_cast<int32_t>(a) >> sh));
                else if (opcode == 11) set_r(sf, rd, ror_val(a, sh, size));
                else return false;
                pc += 4;
                return true;
            }
        }
        return false;
    }
    if ((op0 & 0b0101) == 0b0100) { // Loads / stores
        if (bits(w, 26, 1)) { // SIMD load/store: no-op on GPRs unless writeback
            pc += 4;
            return true;
        }
        if (bits(w, 27, 3) == 0b111) { // ldst_reg
            unsigned size = bits(w, 30, 2), opc = bits(w, 22, 2), rn = bits(w, 5, 5), rt = bits(w, 0, 5);
            uint64_t base = get_r(1, rn, true);
            uint64_t ea = base;
            if (bits(w, 24, 2) == 1) {
                ea = base + (static_cast<uint64_t>(bits(w, 10, 12)) << size);
            } else if (bits(w, 21, 1)) {
                unsigned rm = bits(w, 16, 5), option = bits(w, 13, 3), S = bits(w, 12, 1);
                ea = base + extend_reg(rm, option, S ? size : 0);
            } else {
                int64_t imm9 = sext(bits(w, 12, 9), 9);
                ea = static_cast<uint64_t>(static_cast<int64_t>(base) + imm9);
            }
            unsigned nbytes = 1u << size;
            if (opc == 1) {
                set_r(1, rt, mem_read(ea, nbytes));
            } else if (opc == 2 || opc == 3) {
                uint64_t raw = mem_read(ea, nbytes);
                int64_t s = (size == 0) ? static_cast<int8_t>(raw)
                          : (size == 1) ? static_cast<int16_t>(raw)
                          : static_cast<int32_t>(raw);
                set_r(opc == 2 ? 1 : 0, rt, static_cast<uint64_t>(s));
            }
            pc += 4;
            return true;
        }
        if (bits(w, 27, 3) == 0b101) { // ldst_pair
            pc += 4;
            return true;
        }
        return false;
    }
    if ((op0 & 0b1110) == 0b1010) { // Branches
        if (bits(w, 26, 5) == 0b00101 && !bits(w, 31, 1)) { // B
            pc = static_cast<uint64_t>(static_cast<int64_t>(pc) + sext(bits(w, 0, 26), 26) * 4);
            return true;
        }
        if (bits(w, 25, 7) == 0b0101010 && !bits(w, 4, 1)) { // B.cond
            unsigned cond = bits(w, 0, 4);
            if (eval_cond(cpu.nzcv, cond)) {
                pc = static_cast<uint64_t>(static_cast<int64_t>(pc) + sext(bits(w, 5, 19), 19) * 4);
            } else {
                pc += 4;
            }
            return true;
        }
        if (bits(w, 25, 6) == 0b011010) { // CBZ/CBNZ
            unsigned sf = bits(w, 31, 1), nz = bits(w, 24, 1), rt = bits(w, 0, 5);
            bool zero = (get_r(sf, rt) == 0);
            if (nz ? !zero : zero) {
                pc = static_cast<uint64_t>(static_cast<int64_t>(pc) + sext(bits(w, 5, 19), 19) * 4);
            } else {
                pc += 4;
            }
            return true;
        }
        if (bits(w, 25, 6) == 0b011011) { // TBZ/TBNZ
            unsigned b = (bits(w, 31, 1) << 5) | bits(w, 19, 5);
            unsigned nz = bits(w, 24, 1), rt = bits(w, 0, 5);
            bool bit_set = ((get_r(1, rt) >> b) & 1ULL) != 0;
            if (nz ? bit_set : !bit_set) {
                pc = static_cast<uint64_t>(static_cast<int64_t>(pc) + sext(bits(w, 5, 14), 14) * 4);
            } else {
                pc += 4;
            }
            return true;
        }
        return false;
    }
    if ((op0 & 0b0111) == 0b0111) { // FP/SIMD: does not affect GPR jump table math
        pc += 4;
        return true;
    }
    return false;
}

std::vector<uint64_t> JumpTableResolver::find_cfg_path(uint64_t entry, uint64_t end, uint64_t target) const {
    if (target == entry) return {entry};
    std::unordered_map<uint64_t, uint64_t> came_from;
    std::deque<uint64_t> q;
    q.push_back(entry);
    came_from[entry] = entry;

    while (!q.empty()) {
        uint64_t curr = q.front();
        q.pop_front();
        if (curr == target) break;

        uint32_t w = word(curr);
        std::vector<uint64_t> succs;
        if ((w & 0xFC000000u) == 0x14000000u) { // B
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(curr) + sext(w & 0x3FFFFFFu, 26) * 4);
            if (t >= entry && t < end) succs.push_back(t);
        } else if ((w & 0xFF000010u) == 0x54000000u) { // B.cond
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(curr) + sext(bits(w, 5, 19), 19) * 4);
            if (t >= entry && t < end) succs.push_back(t);
            if (curr + 4 < end) succs.push_back(curr + 4);
        } else if ((w & 0x7F000000u) == 0x34000000u || (w & 0x7F000000u) == 0x35000000u) { // CBZ/CBNZ
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(curr) + sext(bits(w, 5, 19), 19) * 4);
            if (t >= entry && t < end) succs.push_back(t);
            if (curr + 4 < end) succs.push_back(curr + 4);
        } else if ((w & 0x7F000000u) == 0x36000000u || (w & 0x7F000000u) == 0x37000000u) { // TBZ/TBNZ
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(curr) + sext(bits(w, 5, 14), 14) * 4);
            if (t >= entry && t < end) succs.push_back(t);
            if (curr + 4 < end) succs.push_back(curr + 4);
        } else if ((w & 0xFFFFFC1Fu) == 0xD65F0000u || (w & 0xFFFFFC1Fu) == 0xD61F0000u) { // RET / BR
            // terminator, no intra-function successors
        } else {
            if (curr + 4 < end) succs.push_back(curr + 4);
        }

        for (uint64_t s : succs) {
            if (came_from.find(s) == came_from.end()) {
                came_from[s] = curr;
                q.push_back(s);
            }
        }
    }

    if (came_from.find(target) == came_from.end()) return {};

    std::vector<uint64_t> path;
    uint64_t c = target;
    while (c != entry) {
        path.push_back(c);
        c = came_from[c];
    }
    path.push_back(entry);
    std::reverse(path.begin(), path.end());
    return path;
}

std::optional<std::vector<uint64_t>> JumpTableResolver::emulate_table(
    uint64_t br_pc, uint64_t entry, uint64_t end, uint64_t start,
    const std::vector<unsigned>& idx_regs, unsigned count, uint64_t set_at) const {
    unsigned rn = bits(word(br_pc), 5, 5);
    auto step_to = [&](MiniCpu& cpu, uint64_t frm, uint64_t to) -> bool {
        uint64_t pc = frm;
        for (int step = 0; step < 128; ++step) {
            if (pc == to) return true;
            if (!step_insn(cpu, pc)) return false;
        }
        return false;
    };
    auto is_gpr_writer = [](uint32_t w, unsigned& out_rd) -> bool {
        uint32_t op0 = bits(w, 25, 4);
        if ((op0 & 0b1110) == 0b1010) return false; // branches/sys
        if ((op0 & 0b0101) == 0b0100) { // load/store
            if (bits(w, 26, 1)) return false; // SIMD load/store
            unsigned opc = bits(w, 22, 2);
            if (opc == 0) return false; // store does not write Rt
            out_rd = bits(w, 0, 5);
            return out_rd < 31;
        }
        if ((op0 & 0b0111) == 0b0111) return false; // FP/SIMD
        out_rd = bits(w, 0, 5);
        return out_rd < 31;
    };

    auto path = find_cfg_path(entry, end, start);

    MiniCpu base_cpu;
    for (int r = 0; r < 29; ++r) base_cpu.x[r] = SCRATCH_MEM + 0x80000ULL;
    base_cpu.sp = SCRATCH_MEM + 0x80000ULL;

    std::unordered_map<unsigned, uint64_t> last_adrp_at;
    std::unordered_map<unsigned, std::vector<uint64_t>> table_reg_cands;

    if (!path.empty()) {
        for (size_t k = 0; k + 1 < path.size(); ++k) {
            uint64_t a2 = path[k];
            uint32_t w2 = word(a2);
            if ((w2 & 0x9F000000u) == 0x90000000u || (w2 & 0x9F000000u) == 0x10000000u) {
                uint64_t tmp_pc = a2;
                step_insn(base_cpu, tmp_pc);
                unsigned rd_idx = w2 & 31u;
                last_adrp_at[rd_idx] = a2;
                if ((w2 & 0x9F000000u) == 0x10000000u && rd_idx < 31) {
                    table_reg_cands[rd_idx].push_back(base_cpu.x[rd_idx]);
                }
            } else if ((w2 & 0xFFC00000u) == 0x91000000u) {
                unsigned rd_idx = w2 & 31u;
                unsigned rn_idx = (w2 >> 5) & 31u;
                auto it = last_adrp_at.find(rn_idx);
                if (it != last_adrp_at.end()) {
                    uint64_t tmp_pc = a2;
                    step_insn(base_cpu, tmp_pc);
                    if (rd_idx < 31) {
                        table_reg_cands[rd_idx].push_back(base_cpu.x[rd_idx]);
                    }
                }
                last_adrp_at.erase(rd_idx);
            } else {
                unsigned rd_idx = 31;
                if (is_gpr_writer(w2, rd_idx)) {
                    last_adrp_at.erase(rd_idx);
                }
            }
        }
    } else {
        // Fallback: linear replay from function entry to start
        for (uint64_t a2 = entry; a2 < start; a2 += 4) {
            uint32_t w2 = word(a2);
            if ((w2 & 0x9F000000u) == 0x90000000u || (w2 & 0x9F000000u) == 0x10000000u) {
                uint64_t tmp_pc = a2;
                step_insn(base_cpu, tmp_pc);
                unsigned rd_idx = w2 & 31u;
                last_adrp_at[rd_idx] = a2;
                if ((w2 & 0x9F000000u) == 0x10000000u && rd_idx < 31) {
                    table_reg_cands[rd_idx].push_back(base_cpu.x[rd_idx]);
                }
            } else if ((w2 & 0xFFC00000u) == 0x91000000u) {
                unsigned rd_idx = w2 & 31u;
                unsigned rn_idx = (w2 >> 5) & 31u;
                auto it = last_adrp_at.find(rn_idx);
                if (it != last_adrp_at.end()) {
                    uint64_t tmp_pc = a2;
                    step_insn(base_cpu, tmp_pc);
                    if (rd_idx < 31) {
                        table_reg_cands[rd_idx].push_back(base_cpu.x[rd_idx]);
                    }
                }
                last_adrp_at.erase(rd_idx);
            } else {
                unsigned rd_idx = 31;
                if (is_gpr_writer(w2, rd_idx)) {
                    last_adrp_at.erase(rd_idx);
                }
            }
        }
    }

    auto eval_with_base_cpu = [&](const MiniCpu& init_cpu) -> std::optional<std::vector<uint64_t>> {
        std::set<uint64_t> targets;
        for (unsigned i = 0; i < count; ++i) {
            MiniCpu cpu = init_cpu;
            if (set_at != start && !step_to(cpu, start, set_at)) return std::nullopt;
            for (unsigned r : idx_regs) {
                if (r < 30) cpu.x[r] = i;
            }
            if (!step_to(cpu, set_at, br_pc)) return std::nullopt;
            uint64_t t = (rn < 31) ? cpu.x[rn] : 0;
            if (t < entry || (t % 4) != 0) return std::nullopt;
            if (t >= end) {
                if (t == end) continue;
                return std::nullopt;
            }
            targets.insert(t);
        }
        if (count > 1 && targets.size() <= 1) return std::nullopt;
        return std::vector<uint64_t>(targets.begin(), targets.end());
    };

    auto score_targets = [&](const std::vector<uint64_t>& tgts) -> size_t {
        size_t hits = 0;
        for (uint64_t t : tgts) {
            if (t == br_pc + 4 || t == entry) {
                ++hits;
            } else if (t >= entry + 4) {
                uint32_t pw = word(t - 4);
                if (is_control_flow(pw) || pw == 0xD503201Fu) ++hits;
            }
        }
        return hits;
    };

    auto best_res = eval_with_base_cpu(base_cpu);
    size_t best_score = best_res ? score_targets(*best_res) : 0;
    if (best_res && best_score == best_res->size()) {
        return best_res;
    }

    // If base_cpu targets did not achieve 100% boundary score or failed,
    // evaluate alternative ADRP+ADD candidates recorded for registers
    for (const auto& [cand_reg, cands] : table_reg_cands) {
        if (cands.size() <= 1) continue;
        for (size_t ci = 0; ci + 1 < cands.size(); ++ci) {
            MiniCpu alt_cpu = base_cpu;
            alt_cpu.x[cand_reg] = cands[ci];
            auto alt_res = eval_with_base_cpu(alt_cpu);
            if (!alt_res) continue;
            size_t alt_score = score_targets(*alt_res);
            if (!best_res || alt_score > best_score) {
                best_res = std::move(alt_res);
                best_score = alt_score;
                if (best_score == best_res->size()) return best_res;
            }
        }
    }
    return best_res;
}

std::optional<std::vector<uint64_t>> JumpTableResolver::jump_table_taken(uint64_t br_pc, uint64_t entry, uint64_t end) const {
    uint64_t s = br_pc;
    while (s >= entry + 4 && br_pc - (s - 4) <= 4 * 24 && !is_control_flow(word(s - 4))) {
        s -= 4;
    }
    for (uint64_t g = entry; g < end; g += 4) {
        uint32_t w = word(g);
        if ((w & 0xFF000010u) != 0x54000000u) continue;
        unsigned cond = bits(w, 0, 4);
        if (cond != 9 && cond != 3) continue; // b.ls or b.lo
        uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(g) + sext(bits(w, 5, 19), 19) * 4);
        if (t != s) continue;
        std::optional<uint64_t> cmp;
        for (int64_t c = static_cast<int64_t>(g) - 4;
             c >= static_cast<int64_t>(entry) && static_cast<int64_t>(g) - c <= 4 * 8;
             c -= 4) {
            uint32_t cw = word(static_cast<uint64_t>(c));
            if ((cw & 0x7F80001Fu) == 0x7100001Fu) {
                cmp = static_cast<uint64_t>(c);
                break;
            }
            if (is_control_flow(cw)) break;
        }
        if (!cmp.has_value()) continue;
        uint32_t cw = word(*cmp);
        if (bits(cw, 22, 1)) continue;
        unsigned limit = bits(cw, 10, 12);
        unsigned count = (cond == 9) ? (limit + 1) : limit;
        if (count == 0 || count > 4096) continue;
        unsigned idx_reg = bits(cw, 5, 5);
        auto res = emulate_table(br_pc, entry, end, s, {idx_reg}, count, s);
        if (res.has_value()) return res;
    }
    return std::nullopt;
}

std::optional<std::vector<uint64_t>> JumpTableResolver::jump_table_fallthrough(uint64_t br_pc, uint64_t entry, uint64_t end) const {
    int64_t a = static_cast<int64_t>(br_pc) - 4;
    std::optional<uint64_t> guard, cmp;
    while (a >= static_cast<int64_t>(entry) && static_cast<int64_t>(br_pc) - a <= 4 * 32) {
        uint32_t w = word(static_cast<uint64_t>(a));
        if ((w & 0xFF000010u) == 0x54000000u && (bits(w, 0, 4) == 8 || bits(w, 0, 4) == 2)) {
            guard = static_cast<uint64_t>(a);
            break;
        }
        if (is_control_flow(w)) return std::nullopt;
        a -= 4;
    }
    if (!guard.has_value()) return std::nullopt;
    a = static_cast<int64_t>(*guard) - 4;
    while (a >= static_cast<int64_t>(entry) && static_cast<int64_t>(*guard) - a <= 4 * 12) {
        uint32_t w = word(static_cast<uint64_t>(a));
        if ((w & 0x7F80001Fu) == 0x7100001Fu) {
            cmp = static_cast<uint64_t>(a);
            break;
        }
        if (is_control_flow(w)) return std::nullopt;
        a -= 4;
    }
    if (!cmp.has_value()) return std::nullopt;
    uint32_t cw = word(*cmp);
    if (bits(cw, 22, 1)) return std::nullopt;
    unsigned limit = bits(cw, 10, 12);
    unsigned count = (bits(word(*guard), 0, 4) == 8) ? (limit + 1) : limit;
    if (count == 0 || count > 4096) return std::nullopt;
    unsigned idx = bits(cw, 5, 5);
    uint64_t start = *cmp;
    while (start >= entry + 4 && *cmp - (start - 4) <= 4 * 24 && !is_control_flow(word(start - 4))) {
        start -= 4;
    }
    auto regs = index_regs(start, *cmp, idx);
    return emulate_table(br_pc, entry, end, start, regs, count, *cmp);
}

std::optional<std::vector<uint64_t>> JumpTableResolver::jump_table_scan(
    uint64_t br_pc, uint64_t entry, uint64_t end, std::map<std::string, uint64_t>& stats) const {
    unsigned rn = bits(word(br_pc), 5, 5);
    uint64_t add_pc = 0;
    unsigned base_reg = 31, off_reg = 31, shift = 0;
    bool found_add = false;

    for (int64_t x = static_cast<int64_t>(br_pc) - 4;
         x >= static_cast<int64_t>(entry) && static_cast<int64_t>(br_pc) - x <= 4 * 24;
         x -= 4) {
        uint32_t w = word(static_cast<uint64_t>(x));
        if (bits(w, 31, 1) == 1 && bits(w, 29, 2) == 0 && bits(w, 24, 5) == 0b01011 && bits(w, 0, 5) == rn) {
            add_pc = static_cast<uint64_t>(x);
            base_reg = bits(w, 5, 5);
            off_reg  = bits(w, 16, 5);
            shift    = bits(w, 21, 1) ? bits(w, 10, 3) : bits(w, 10, 6);
            found_add = true;
            break;
        }
        if (is_control_flow(w)) return std::nullopt;
    }
    if (!found_add) return std::nullopt;

    uint64_t base_addr = 0;
    bool found_adr = false;
    for (int64_t x = static_cast<int64_t>(add_pc) - 4;
         x >= static_cast<int64_t>(entry) && static_cast<int64_t>(br_pc) - x <= 4 * 24;
         x -= 4) {
        uint32_t w = word(static_cast<uint64_t>(x));
        if (bits(w, 0, 5) == base_reg) {
            if ((w & 0x9F000000u) == 0x10000000u) { // ADR
                int64_t imm = sext((bits(w, 5, 19) << 2) | bits(w, 29, 2), 21);
                base_addr = static_cast<uint64_t>(x + imm);
                found_adr = true;
            }
            break;
        }
    }
    if (!found_adr) return std::nullopt;

    uint64_t load_pc = 0;
    unsigned table_reg = 31, elem_size = 0, idx_reg = 31;
    bool is_signed = false, found_load = false;
    for (int64_t x = static_cast<int64_t>(add_pc) - 4;
         x >= static_cast<int64_t>(entry) && static_cast<int64_t>(br_pc) - x <= 4 * 24;
         x -= 4) {
        uint32_t w = word(static_cast<uint64_t>(x));
        if (bits(w, 0, 5) != off_reg) continue;
        if (bits(w, 27, 3) == 0b111 && bits(w, 26, 1) == 0 && bits(w, 24, 2) == 0 &&
            bits(w, 21, 1) == 1 && bits(w, 10, 2) == 2) {
            unsigned sz = bits(w, 30, 2), opc = bits(w, 22, 2);
            if (opc == 1 || opc == 2 || opc == 3) {
                elem_size = 1u << sz;
                if (elem_size > 4) return std::nullopt;
                is_signed = (opc >= 2);
                table_reg = bits(w, 5, 5);
                idx_reg = bits(w, 16, 5);
                load_pc = static_cast<uint64_t>(x);
                found_load = true;
            }
        }
        break;
    }
    if (!found_load) return std::nullopt;

    // Look backward for a bounds-check CMP + B.hi/B.hs/B.ls/B.lo to bound the table entry count.
    // The bounds check must be in the same basic block immediately guarding load_pc:
    // stop at the first control-flow instruction encountered going backwards.
    unsigned max_entries = 4096;
    bool has_cmp_bound = false;
    for (int64_t g = static_cast<int64_t>(load_pc) - 4;
         g >= static_cast<int64_t>(entry) && static_cast<int64_t>(load_pc) - g <= 4 * 48;
         g -= 4) {
        uint32_t gw = word(static_cast<uint64_t>(g));
        if (is_control_flow(gw)) {
            if ((gw & 0xFF000010u) == 0x54000000u) {
                unsigned cond = bits(gw, 0, 4);
                if (cond == 8 || cond == 2 || cond == 9 || cond == 3) {
                    for (int64_t c = g - 4; c >= static_cast<int64_t>(entry) && g - c <= 4 * 8; c -= 4) {
                        uint32_t cw = word(static_cast<uint64_t>(c));
                        if ((cw & 0x7F80001Fu) == 0x7100001Fu && !bits(cw, 22, 1)) {
                            unsigned cmp_reg = bits(cw, 5, 5);
                            if (cmp_reg == idx_reg) {
                                unsigned limit = bits(cw, 10, 12);
                                unsigned cnt = (cond == 8 || cond == 9) ? (limit + 1) : limit;
                                if (cnt > 0 && cnt <= 4096) {
                                    max_entries = cnt;
                                    has_cmp_bound = true;
                                }
                            }
                            break;
                        }
                        if (is_control_flow(cw)) break;
                    }
                }
            }
            break;
        }
    }

    auto is_reg_writer = [](uint32_t w, unsigned reg) -> bool {
        uint32_t op0 = bits(w, 25, 4);
        if ((op0 & 0b1110) == 0b1010) return false; // branches/sys
        if ((op0 & 0b0101) == 0b0100) { // load/store
            if (bits(w, 26, 1)) return false;
            unsigned opc = bits(w, 22, 2);
            if (opc == 0) return false; // store does not write Rt
            return bits(w, 0, 5) == reg;
        }
        return bits(w, 0, 5) == reg;
    };

    // Scan back for `add table_reg, page_reg, #imm12` and its matching `adrp page_reg, page`
    uint64_t img_lo = base_;
    std::vector<uint64_t> best_scan_targets;
    size_t best_scan_hits = 0;
    for (int64_t y = static_cast<int64_t>(load_pc) - 4;
         y >= static_cast<int64_t>(entry);
         y -= 4) {
        uint32_t w = word(static_cast<uint64_t>(y));
        if (!is_reg_writer(w, table_reg)) continue;

        uint64_t table_addr = 0;
        bool found_table_addr = false;

        // Match ADD Xd, Xn, #imm12 (sh == 0)
        if ((w & 0xFFC00000u) == 0x91000000u) {
            unsigned page_reg = bits(w, 5, 5);
            uint64_t add_imm = bits(w, 10, 12);
            for (int64_t z = y - 4; z >= static_cast<int64_t>(entry); z -= 4) {
                uint32_t wz = word(static_cast<uint64_t>(z));
                if (!is_reg_writer(wz, page_reg)) continue;
                if ((wz & 0x9F000000u) == 0x90000000u) { // ADRP
                    int64_t imm = sext((bits(wz, 5, 19) << 2) | bits(wz, 29, 2), 21);
                    uint64_t page_base = (static_cast<uint64_t>(z) & ~0xFFFULL) + static_cast<uint64_t>(imm << 12);
                    table_addr = page_base + add_imm;
                    found_table_addr = true;
                }
                break;
            }
        } else if ((w & 0x9F000000u) == 0x10000000u) { // ADR table_reg
            int64_t imm = sext((bits(w, 5, 19) << 2) | bits(w, 29, 2), 21);
            table_addr = static_cast<uint64_t>(y + imm);
            found_table_addr = true;
        }

        if (!found_table_addr) continue;

        std::set<uint64_t> targets;
        for (unsigned k = 0; k < max_entries; ++k) {
            uint64_t at = table_addr + static_cast<uint64_t>(k) * elem_size;
            if (at < img_lo || (at - img_lo) > nso_.image.size() ||
                elem_size > nso_.image.size() - (at - img_lo)) break;
            const uint8_t* p = nso_.image.data() + (at - base_);
            int64_t raw = 0;
            if (elem_size == 1) {
                raw = is_signed ? static_cast<int64_t>(static_cast<int8_t>(p[0])) : static_cast<int64_t>(p[0]);
            } else if (elem_size == 2) {
                uint16_t v16;
                std::memcpy(&v16, p, 2);
                raw = is_signed ? static_cast<int64_t>(static_cast<int16_t>(v16)) : static_cast<int64_t>(v16);
            } else {
                uint32_t v32;
                std::memcpy(&v32, p, 4);
                raw = is_signed ? static_cast<int64_t>(static_cast<int32_t>(v32)) : static_cast<int64_t>(v32);
            }
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(base_addr) + (raw << shift));
            if (t < entry || (t % 4) != 0) break;
            if (t >= end) {
                if (has_cmp_bound && t == end) continue;
                break;
            }
            targets.insert(t);
        }
        if (targets.size() >= 2) {
            std::vector<uint64_t> cand_vec(targets.begin(), targets.end());
            size_t hits = 0;
            for (uint64_t t : cand_vec) {
                if (t == br_pc + 4 || t == entry) {
                    ++hits;
                } else if (t >= entry + 4) {
                    uint32_t pw = word(t - 4);
                    if (is_control_flow(pw) || pw == 0xD503201Fu) ++hits;
                }
            }
            if (hits == cand_vec.size()) {
                stats["jumptables_scanned"]++;
                return cand_vec;
            }
            if (best_scan_targets.empty() || hits > best_scan_hits) {
                best_scan_targets = std::move(cand_vec);
                best_scan_hits = hits;
            }
        }
    }
    if (!best_scan_targets.empty()) {
        stats["jumptables_scanned"]++;
        return best_scan_targets;
    }
    return std::nullopt;
}

} // namespace ultrs::nso
