// Frame Compaction & Transitive Reference Trimmer for UltraTears Replay Frames (C++)
#include "replay.h"
#include <algorithm>
#include <array>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <string>
#include <unordered_set>
#include <vector>
#include <sys/stat.h>
#include <sys/types.h>

namespace {

// Self-contained FIPS 180-4 SHA-256 using C++ stdlib
struct Sha256Ctx {
    std::array<uint32_t, 8> s{
        0x6a09e667u, 0xbb67ae85u, 0x3c6ef372u, 0xa54ff53au,
        0x510e527fu, 0x9b05688cu, 0x1f83d9abu, 0x5be0cd19u
    };
    uint64_t count = 0;
    std::array<uint8_t, 64> buf{};
};

inline uint32_t sha_ror(uint32_t x, int n) {
    return (x >> n) | (x << (32 - n));
}

void sha256_block(std::array<uint32_t, 8> &s, const uint8_t in[64]) {
    static constexpr std::array<uint32_t, 64> K = {
        0x428a2f98u,0x71374491u,0xb5c0fbcfu,0xe9b5dba5u,0x3956c25bu,0x59f111f1u,0x923f82a4u,0xab1c5ed5u,
        0xd807aa98u,0x12835b01u,0x243185beu,0x550c7dc3u,0x72be5d74u,0x80deb1feu,0x9bdc06a7u,0xc19bf174u,
        0xe49b69c1u,0xefbe4786u,0x0fc19dc6u,0x240ca1ccu,0x2de92c6fu,0x4a7484aau,0x5cb0a9dcu,0x76f988dau,
        0x983e5152u,0xa831c66du,0xb00327c8u,0xbf597fc7u,0xc6e00bf3u,0xd5a79147u,0x06ca6351u,0x14292967u,
        0x27b70a85u,0x2e1b2138u,0x4d2c6dfcu,0x53380d13u,0x650a7354u,0x766a0abbu,0x81c2c92eu,0x92722c85u,
        0xa2bfe8a1u,0xa81a664bu,0xc24b8b70u,0xc76c51a3u,0xd192e819u,0xd6990624u,0xf40e3585u,0x106aa070u,
        0x19a4c116u,0x1e376c08u,0x2748774cu,0x34b0bcb5u,0x391c0cb3u,0x4ed8aa4au,0x5b9cca4fu,0x682e6ff3u,
        0x748f82eeu,0x78a5636fu,0x84c87814u,0x8cc70208u,0x90befffau,0xa4506cebu,0xbef9a3f7u,0xc67178f2u
    };
    uint32_t w[64];
    uint32_t a = s[0], b = s[1], c = s[2], d = s[3], e = s[4], f = s[5], g = s[6], h = s[7];
    for (int i = 0; i < 16; i++) {
        w[i] = (static_cast<uint32_t>(in[4 * i]) << 24) |
               (static_cast<uint32_t>(in[4 * i + 1]) << 16) |
               (static_cast<uint32_t>(in[4 * i + 2]) << 8) |
               static_cast<uint32_t>(in[4 * i + 3]);
    }
    for (int i = 16; i < 64; i++) {
        uint32_t s0 = sha_ror(w[i - 15], 7) ^ sha_ror(w[i - 15], 18) ^ (w[i - 15] >> 3);
        uint32_t s1 = sha_ror(w[i - 2], 17) ^ sha_ror(w[i - 2], 19) ^ (w[i - 2] >> 10);
        w[i] = w[i - 16] + s0 + w[i - 7] + s1;
    }
    for (int i = 0; i < 64; i++) {
        uint32_t S1 = sha_ror(e, 6) ^ sha_ror(e, 11) ^ sha_ror(e, 25);
        uint32_t ch = (e & f) ^ (~e & g);
        uint32_t t1 = h + S1 + ch + K[i] + w[i];
        uint32_t S0 = sha_ror(a, 2) ^ sha_ror(a, 13) ^ sha_ror(a, 22);
        uint32_t maj = (a & b) ^ (a & c) ^ (b & c);
        uint32_t t2 = S0 + maj;
        h = g; g = f; f = e; e = d + t1; d = c; c = b; b = a; a = t1 + t2;
    }
    s[0] += a; s[1] += b; s[2] += c; s[3] += d; s[4] += e; s[5] += f; s[6] += g; s[7] += h;
}

void sha256_update(Sha256Ctx &ctx, const void *data, size_t len) {
    const auto *p = static_cast<const uint8_t *>(data);
    ctx.count += len;
    size_t fill = static_cast<size_t>(ctx.count - len) & 63;
    if (fill) {
        size_t take = 64 - fill;
        if (take > len) take = len;
        std::memcpy(ctx.buf.data() + fill, p, take);
        if (fill + take == 64) sha256_block(ctx.s, ctx.buf.data());
        p += take;
        len -= take;
    }
    while (len >= 64) {
        sha256_block(ctx.s, p);
        p += 64;
        len -= 64;
    }
    if (len) {
        std::memcpy(ctx.buf.data(), p, len);
    }
}

void sha256_final(Sha256Ctx &ctx, uint8_t out[32]) {
    uint8_t pad[64] = {0x80};
    uint64_t bits = (ctx.count) * 8;
    size_t fill = static_cast<size_t>(ctx.count) & 63;
    size_t padlen = (fill < 56) ? (56 - fill) : (120 - fill);
    sha256_update(ctx, pad, padlen);
    uint8_t len_bytes[8];
    for (int i = 0; i < 8; i++) len_bytes[i] = static_cast<uint8_t>(bits >> (56 - 8 * i));
    sha256_update(ctx, len_bytes, 8);
    for (int i = 0; i < 8; i++) {
        out[4 * i]     = static_cast<uint8_t>(ctx.s[i] >> 24);
        out[4 * i + 1] = static_cast<uint8_t>(ctx.s[i] >> 16);
        out[4 * i + 2] = static_cast<uint8_t>(ctx.s[i] >> 8);
        out[4 * i + 3] = static_cast<uint8_t>(ctx.s[i]);
    }
}

std::string compute_sha256_hex(const void *c, size_t clen, const void *d, size_t dlen) {
    Sha256Ctx ctx;
    sha256_update(ctx, c, clen);
    sha256_update(ctx, d, dlen);
    uint8_t dig[32];
    sha256_final(ctx, dig);
    char hex[65];
    for (int i = 0; i < 32; i++) {
        std::snprintf(hex + 2 * i, 3, "%02x", dig[i]);
    }
    return std::string(hex, 64);
}

// Memory Span Range Tracker
struct SpanRange {
    uint64_t lo = 0;
    uint64_t hi = 0;
};

class SpanList {
public:
    void add(uint64_t addr, uint64_t size) {
        if (!size || !addr) return;
        uint64_t end = addr + size;
        if (end < addr) return; // overflow check
        spans_.push_back({addr, end});
    }

    void sort_and_coalesce() {
        if (spans_.empty()) return;
        std::sort(spans_.begin(), spans_.end(), [](const SpanRange &a, const SpanRange &b) {
            return (a.lo != b.lo) ? (a.lo < b.lo) : (a.hi < b.hi);
        });

        std::vector<SpanRange> merged;
        merged.reserve(spans_.size());
        merged.push_back(spans_[0]);

        for (size_t i = 1; i < spans_.size(); ++i) {
            auto &last = merged.back();
            if (spans_[i].lo <= last.hi) {
                if (spans_[i].hi > last.hi) {
                    last.hi = spans_[i].hi;
                }
            } else {
                merged.push_back(spans_[i]);
            }
        }
        spans_ = std::move(merged);
    }

    bool intersects(uint64_t lo, uint64_t hi) const {
        if (spans_.empty() || lo >= hi) return false;
        // Binary search for the first span that ends after lo
        auto it = std::lower_bound(spans_.begin(), spans_.end(), lo,
            [](const SpanRange &s, uint64_t val) {
                return s.hi <= val;
            });
        return it != spans_.end() && it->lo < hi;
    }

    const std::vector<SpanRange> &spans() const { return spans_; }

private:
    std::vector<SpanRange> spans_;
};

struct SlabInfo {
    int idx = 0;
    uint64_t lo = 0;
    uint64_t hi = 0;
    size_t size = 0;
    std::string fname;
    std::vector<uint8_t> data;
};

struct CmdHandleInfo {
    uint32_t handle_idx = 0;
    uint64_t old_addr = 0;
    std::string fname;
    std::vector<uint8_t> data;
};

struct PinRawEntry {
    uint64_t old_addr;
    tex_t tex;
};

void mkdir_p(const std::string &path) {
    mkdir(path.c_str(), 0755);
}

void copy_file_simple(const std::string &src, const std::string &dst) {
    std::ifstream in(src, std::ios::binary);
    if (!in.is_open()) return;
    std::ofstream out(dst, std::ios::binary);
    if (!out.is_open()) return;
    out << in.rdbuf();
}

// Extracted handler: collects memory and shader references from a single command record
void collect_op_references(uint32_t op, const uint8_t *payload,
                            SpanList &refs, SpanList &ubo_refs,
                            std::unordered_set<std::string> &used_shaders,
                            const std::vector<SlabInfo> &slabs) {
    if (op == 18 /* OP_BIND_VBUF */) {
        int32_t first = 0, n = 0;
        std::memcpy(&first, payload, 4);
        std::memcpy(&n, payload + 4, 4);
        for (int i = 0; i < n && i < 16; i++) {
            uint64_t addr = 0, size = 0;
            std::memcpy(&addr, payload + 8 + i * 16, 8);
            std::memcpy(&size, payload + 16 + i * 16, 8);
            if (addr && size) refs.add(addr, size);
        }
        return;
    }

    if (op == 19 /* OP_BIND_UBO */ || op == 20 /* OP_BIND_SSBO */) {
        uint64_t addr = 0, size = 0;
        std::memcpy(&addr, payload + 8, 8);
        std::memcpy(&size, payload + 16, 8);
        if (addr && size) {
            refs.add(addr, size);
            ubo_refs.add(addr, size);
        }
        return;
    }

    if (op == 26 /* OP_DRAW_IDX */) {
        int32_t itype = 0, count = 0;
        uint64_t ibuf = 0;
        std::memcpy(&itype, payload + 4, 4);
        std::memcpy(&count, payload + 8, 4);
        std::memcpy(&ibuf, payload + 24, 8);
        uint32_t idx_sz = (itype == 1) ? 2 : 4;
        if (ibuf && count > 0) {
            refs.add(ibuf, static_cast<uint64_t>(count) * idx_sz);
        }
        return;
    }

    if (op == 6 /* OP_COPY_B2B */) {
        uint64_t s = 0, d = 0, n = 0;
        std::memcpy(&s, payload, 8);
        std::memcpy(&d, payload + 8, 8);
        std::memcpy(&n, payload + 16, 8);
        if (s && n) refs.add(s, n);
        if (d && n) refs.add(d, n);
        return;
    }

    if (op == 7 /* OP_UPDATE_UB */) {
        uint64_t d = 0, n = 0;
        std::memcpy(&d, payload, 8);
        std::memcpy(&n, payload + 8, 8);
        if (d && n) refs.add(d, n);
        return;
    }

    if (op == 30 /* OP_COPY_B2T */ || op == 33 /* OP_COPY_T2B */) {
        uint64_t src = 0;
        std::memcpy(&src, payload, 8);
        if (src) refs.add(src, 65536);
        return;
    }

    if (op == 5 /* OP_REPORT_COUNTER */ || op == 40 /* OP_RENDER_COND */) {
        uint64_t addr = 0;
        std::memcpy(&addr, payload + 8, 8);
        if (addr) refs.add(addr, 32);
        return;
    }

    if (op != 14 /* OP_BIND_PROGRAM */) return;

    const prog_t *prog = nullptr;
    std::memcpy(&prog, payload, sizeof prog);
    auto pr_addr = static_cast<uint64_t>(reinterpret_cast<uintptr_t>(prog));
    if (!pr_addr) return;

    refs.add(pr_addr, sizeof(prog_t));
    for (const auto &sl : slabs) {
        if (pr_addr < sl.lo || pr_addr + sizeof(prog_t) > sl.hi) continue;

        const auto *pr = reinterpret_cast<const prog_t *>(sl.data.data() + (pr_addr - sl.lo));
        for (int stg = 0; stg < 6; stg++) {
            auto dat = static_cast<uint64_t>(reinterpret_cast<uintptr_t>(pr->sd[stg].data));
            auto ctl = static_cast<uint64_t>(reinterpret_cast<uintptr_t>(pr->sd[stg].control));
            if (ctl) refs.add(ctl, 0x880);
            if (!dat || !ctl) continue;

            for (const auto &cs : slabs) {
                if (ctl < cs.lo || ctl + 0x880 > cs.hi) continue;

                const uint8_t *ctl_ptr = cs.data.data() + (ctl - cs.lo);
                uint32_t len = 0;
                std::memcpy(&len, ctl_ptr + 0x704, 4);
                if (!len || len >= (16u << 20)) break;

                refs.add(dat, len);
                for (const auto &ds : slabs) {
                    if (dat < ds.lo || dat + len > ds.hi) continue;

                    const uint8_t *dat_ptr = ds.data.data() + (dat - ds.lo);
                    std::string key = compute_sha256_hex(ctl_ptr, 0x880, dat_ptr, len);
                    used_shaders.insert(key);
                    break;
                }
                break;
            }
        }
        break;
    }
}

} // namespace

extern "C" int replay_compact_frame(const replay_opts *opts) {
    const std::string src_dir = opts->frame_dir;
    const std::string dst_dir = opts->compact_out;
    int max_passes = opts->compact_passes;
    bool fake_tex = opts->fake_textures != 0;

    std::printf("=== UltraTears Frame Compactor (C++) ===\n");
    std::printf("Source directory:      %s\n", src_dir.c_str());
    std::printf("Destination directory: %s\n", dst_dir.c_str());
    if (max_passes > 0) std::printf("Pass limit:            %d passes\n", max_passes);
    if (fake_tex) std::printf("Texture mode:          Stripped / Fake dummy textures (copyright-free)\n");

    mkdir_p(dst_dir);
    mkdir_p(dst_dir + "/slabs");
    mkdir_p(dst_dir + "/commands");
    mkdir_p(dst_dir + "/shaders");
    mkdir_p(dst_dir + "/textures");

    // 1. Load Pinned Textures Table
    std::string pin_src = src_dir + "/pinned_textures.bin";
    std::ifstream pin_file(pin_src, std::ios::binary);
    std::vector<PinRawEntry> pins;
    if (pin_file.is_open()) {
        uint32_t count = 0;
        if (pin_file.read(reinterpret_cast<char *>(&count), sizeof count) && count > 0) {
            pins.resize(count);
            pin_file.read(reinterpret_cast<char *>(pins.data()), count * sizeof(PinRawEntry));
        }
    }

    // 2. Read Slabs Metadata & Populate Slab Buffers
    std::string slabs_meta = src_dir + "/slabs.txt";
    std::ifstream fs_meta(slabs_meta);
    if (!fs_meta.is_open()) {
        std::fprintf(stderr, "Failed to open %s\n", slabs_meta.c_str());
        return 0;
    }

    int nslabs = 0;
    if (!(fs_meta >> nslabs) || nslabs <= 0) {
        std::fprintf(stderr, "Invalid slab count in %s\n", slabs_meta.c_str());
        return 0;
    }
    std::string dummy;
    std::getline(fs_meta, dummy); // consume newline

    std::vector<SlabInfo> slabs(nslabs);
    for (int i = 0; i < nslabs; i++) {
        std::string sline;
        if (!std::getline(fs_meta, sline)) {
            std::fprintf(stderr, "Malformed slabs.txt at line %d\n", i);
            return 0;
        }
        unsigned long long lo = 0, hi = 0;
        size_t sz = 0;
        char fname[128] = {0};
        int idx = 0;
        if (std::sscanf(sline.c_str(), "%d 0x%llx 0x%llx %zu %127s", &idx, &lo, &hi, &sz, fname) != 5) {
            std::fprintf(stderr, "Malformed slab record: %s\n", sline.c_str());
            return 0;
        }
        slabs[i].idx = idx;
        slabs[i].lo = lo;
        slabs[i].hi = hi;
        slabs[i].size = sz;
        slabs[i].fname = fname;
        slabs[i].data.resize(sz, 0);

        std::string sfile = src_dir + "/slabs/" + fname;
        std::ifstream fb(sfile, std::ios::binary);
        if (!fb.is_open()) {
            std::fprintf(stderr, "Failed to open %s\n", sfile.c_str());
            return 0;
        }

        uint64_t magic = 0;
        fb.read(reinterpret_cast<char *>(&magic), sizeof magic);
        if (magic == SLAB_SPARSE_MAGIC) {
            fb.seekg(0, std::ios::beg);
            slab_sparse_hdr hdr;
            fb.read(reinterpret_cast<char *>(&hdr), sizeof hdr);
            for (uint32_t b = 0; b < hdr.non_zero_blocks; b++) {
                uint32_t blk_idx = 0;
                fb.read(reinterpret_cast<char *>(&blk_idx), sizeof blk_idx);
                size_t off = static_cast<size_t>(blk_idx) * hdr.block_size;
                if (off < sz) {
                    size_t cur = (off + hdr.block_size <= sz) ? hdr.block_size : (sz - off);
                    fb.read(reinterpret_cast<char *>(slabs[i].data.data() + off), cur);
                }
            }
        } else {
            fb.seekg(0, std::ios::beg);
            fb.read(reinterpret_cast<char *>(slabs[i].data.data()), sz);
        }
    }

    // 3. Load Command Handles
    std::string mpath = src_dir + "/commands/manifest.txt";
    std::ifstream fm(mpath);
    if (!fm.is_open()) {
        std::fprintf(stderr, "Failed to open %s\n", mpath.c_str());
        return 0;
    }

    std::string line;
    if (!std::getline(fm, line)) {
        std::fprintf(stderr, "Empty manifest %s\n", mpath.c_str());
        return 0;
    }
    int top_count = 0, total_handles = 0;
    std::sscanf(line.c_str(), "top_count=%d total_handles=%d", &top_count, &total_handles);

    std::vector<std::string> manifest_top_lines;
    for (int i = 0; i < top_count; i++) {
        if (std::getline(fm, line)) manifest_top_lines.push_back(line);
    }

    std::vector<CmdHandleInfo> ch(total_handles);
    for (int i = 0; i < total_handles; i++) {
        if (!std::getline(fm, line)) break;
        int idx = 0;
        unsigned long long oaddr = 0;
        size_t sz = 0;
        char cfname[128] = {0};
        if (std::sscanf(line.c_str(), "handle %d 0x%llx %zu %127s", &idx, &oaddr, &sz, cfname) == 4 ||
            std::sscanf(line.c_str(), "%d 0x%llx %zu %127s", &idx, &oaddr, &sz, cfname) == 4) {
            ch[i].handle_idx = idx;
            ch[i].old_addr = oaddr;
            ch[i].fname = cfname;
            ch[i].data.resize(sz);

            std::string cbin = src_dir + "/commands/" + cfname;
            std::ifstream fc(cbin, std::ios::binary);
            if (fc.is_open()) {
                fc.read(reinterpret_cast<char *>(ch[i].data.data()), sz);
            }
        }
    }

    // 4. Pass Truncation with Inverted Conditionals
    uint64_t last_target_serial = 0;
    if (max_passes > 0 && !ch.empty()) {
        uint8_t *cmd = ch[0].data.data();
        size_t off = 0;
        int pass_count = 0;
        size_t trunc_off = ch[0].data.size();

        while (off < ch[0].data.size()) {
            op_hdr h;
            std::memcpy(&h, cmd + off, sizeof h);
            if (h.size < 8 || (h.size & 7)) break;

            if (h.op != 8 /* OP_SET_RT */) {
                off += h.size;
                if (h.op == 0 /* OP_END */) break;
                continue;
            }

            pass_count++;
            if (pass_count > max_passes) {
                trunc_off = off;
                break;
            }

            int32_t n = 0;
            std::memcpy(&n, cmd + off + 8, 4);
            if (n <= 0) {
                off += h.size;
                continue;
            }

            uint64_t c0 = 0;
            std::memcpy(&c0, cmd + off + 16, 8);
            if (!c0) {
                off += h.size;
                continue;
            }

            for (const auto &pin : pins) {
                if (pin.old_addr == c0) {
                    last_target_serial = pin.tex.serial;
                    break;
                }
            }

            off += h.size;
        }

        if (trunc_off < ch[0].data.size()) {
            op_hdr end_hdr = {0 /* OP_END */, 8};
            std::memcpy(ch[0].data.data() + trunc_off, &end_hdr, sizeof end_hdr);
            ch[0].data.resize(trunc_off + 8);
            std::printf("Truncated command buffer to %d passes (%zu bytes, target serial: %llu)\n",
                        max_passes, ch[0].data.size(), static_cast<unsigned long long>(last_target_serial));
        }
    }

    // 5. Collect Referenced Memory Spans and Active Shaders
    SpanList refs;
    SpanList ubo_refs;
    std::unordered_set<std::string> used_shaders;

    for (int c = 0; c < total_handles; c++) {
        const uint8_t *p = ch[c].data.data();
        size_t off = 0;
        while (off < ch[c].data.size()) {
            op_hdr h;
            std::memcpy(&h, p + off, sizeof h);
            if (h.size < 8 || (h.size & 7)) break;

            collect_op_references(h.op, p + off + 8, refs, ubo_refs, used_shaders, slabs);

            off += h.size;
            if (h.op == 0) break;
        }
    }

    // Transitive Scan: Inspect UBO / SSBO contents for embedded 64-bit buffer pointers
    for (const auto &span : ubo_refs.spans()) {
        uint64_t u_lo = span.lo;
        uint64_t u_hi = span.hi;
        for (const auto &sl : slabs) {
            if (u_lo < sl.lo || u_hi > sl.hi) continue;

            const uint8_t *ubo_data = sl.data.data() + (u_lo - sl.lo);
            size_t ulen = static_cast<size_t>(u_hi - u_lo);
            for (size_t ptr_off = 0; ptr_off + 8 <= ulen; ptr_off += 8) {
                uint64_t cand = 0;
                std::memcpy(&cand, ubo_data + ptr_off, 8);
                if (!cand) continue;

                for (const auto &target_sl : slabs) {
                    if (cand >= target_sl.lo && cand < target_sl.hi) {
                        refs.add(cand, 256); // conservative estimate
                        break;
                    }
                }
            }
            break;
        }
    }

    // Inspect UCAP snapshot for embedded pointers
    std::string ucap_scan_path = src_dir + "/ucap.bin";
    std::ifstream fu_scan(ucap_scan_path, std::ios::binary);
    if (fu_scan.is_open()) {
        uint32_t nucap = 0;
        if (fu_scan.read(reinterpret_cast<char *>(&nucap), sizeof nucap) && nucap > 0) {
            uint64_t done = 0;
            fu_scan.read(reinterpret_cast<char *>(&done), sizeof done);

            struct UcapRng { uint64_t lo, hi; };
            std::vector<UcapRng> r(nucap);
            std::vector<size_t> off(nucap);
            fu_scan.read(reinterpret_cast<char *>(r.data()), sizeof(UcapRng) * nucap);
            fu_scan.read(reinterpret_cast<char *>(off.data()), sizeof(size_t) * nucap);

            size_t total_bytes = 0;
            fu_scan.read(reinterpret_cast<char *>(&total_bytes), sizeof total_bytes);
            if (total_bytes > 0 && total_bytes <= 256 * 1024 * 1024) {
                std::vector<uint8_t> all_bytes(total_bytes);
                if (fu_scan.read(reinterpret_cast<char *>(all_bytes.data()), total_bytes)) {
                    for (size_t ptr_off = 0; ptr_off + 8 <= total_bytes; ptr_off += 8) {
                        uint64_t cand = 0;
                        std::memcpy(&cand, all_bytes.data() + ptr_off, 8);
                        if (!cand) continue;
                        for (const auto &target_sl : slabs) {
                            if (cand >= target_sl.lo && cand < target_sl.hi) {
                                refs.add(cand & ~0xfffull, 65536);
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    // When textures are preserved, register texture backing storage from metadata and registries
    if (!fake_tex) {
        std::string img_src = src_dir + "/images.meta";
        std::ifstream fmi(img_src, std::ios::binary);
        if (fmi.is_open()) {
            uint32_t nimages = 0;
            if (fmi.read(reinterpret_cast<char *>(&nimages), 4) && nimages > 0) {
                for (uint32_t i = 0; i < nimages; i++) {
                    vkb_image_meta m{};
                    if (fmi.read(reinterpret_cast<char *>(&m), sizeof m)) {
                        if (m.storage) {
                            nvn_texlayout L{};
                            nvn_tex_layout(&m.d, &L);
                            uint64_t sz = L.size ? L.size : (m.pixel_bytes ? m.pixel_bytes : 65536);
                            refs.add(m.storage, sz);
                        }
                    }
                }
            }
        }

        for (const auto &pin : pins) {
            if (pin.tex.mem && pin.tex.L.size) {
                refs.add(reinterpret_cast<uint64_t>(pin.tex.mem), pin.tex.L.size);
            }
        }

        std::string treg_path = src_dir + "/treg.bin";
        std::ifstream ft(treg_path, std::ios::binary);
        if (ft.is_open()) {
            uint32_t nt = 0;
            if (ft.read(reinterpret_cast<char *>(&nt), sizeof nt) && nt > 0) {
                std::vector<treg_t> treg_entries(nt);
                if (ft.read(reinterpret_cast<char *>(treg_entries.data()), nt * sizeof(treg_t))) {
                    for (const auto &tr : treg_entries) {
                        if (tr.valid && tr.t.mem && tr.t.L.size) {
                            refs.add(reinterpret_cast<uint64_t>(tr.t.mem), tr.t.L.size);
                        }
                    }
                }
            }
        }
    }

    refs.sort_and_coalesce();
    std::printf("Collected %zu referenced virtual memory spans, %zu unique SPIR-V shaders.\n",
                refs.spans().size(), used_shaders.size());

    // 6. Write Compacted Slabs Using SLABSPAR Format
    std::string slabs_meta_out = dst_dir + "/slabs.txt";
    std::ofstream fso(slabs_meta_out);
    if (!fso.is_open()) {
        std::fprintf(stderr, "Failed to write %s\n", slabs_meta_out.c_str());
        return 0;
    }
    fso << nslabs << "\n";

    uint64_t total_orig_bytes = 0;
    uint64_t total_kept_bytes = 0;

    for (int i = 0; i < nslabs; i++) {
        fso << slabs[i].idx << " 0x" << std::hex << slabs[i].lo << " 0x" << slabs[i].hi
            << " " << std::dec << slabs[i].size << " " << slabs[i].fname << "\n";

        std::string s_out = dst_dir + "/slabs/" + slabs[i].fname;
        std::ofstream fb_out(s_out, std::ios::binary);
        if (!fb_out.is_open()) continue;

        const size_t blk_sz = 65536;
        size_t total_blks = (slabs[i].size + blk_sz - 1) / blk_sz;

        std::vector<uint32_t> kept_blocks;
        for (size_t b = 0; b < total_blks; b++) {
            uint64_t b_lo = slabs[i].lo + b * blk_sz;
            uint64_t b_hi = b_lo + blk_sz;
            if (!refs.intersects(b_lo, b_hi)) continue;

            const uint8_t *pblk = slabs[i].data.data() + b * blk_sz;
            size_t cur = (b * blk_sz + blk_sz <= slabs[i].size) ? blk_sz : (slabs[i].size - b * blk_sz);
            bool non_zero = false;
            for (size_t k = 0; k < cur; k += 8) {
                uint64_t val = 0;
                size_t take = (k + 8 <= cur) ? 8 : (cur - k);
                std::memcpy(&val, pblk + k, take);
                if (val != 0) { non_zero = true; break; }
            }
            if (non_zero) kept_blocks.push_back(static_cast<uint32_t>(b));
        }

        slab_sparse_hdr hdr;
        hdr.magic = SLAB_SPARSE_MAGIC;
        hdr.total_size = slabs[i].size;
        hdr.block_size = blk_sz;
        hdr.non_zero_blocks = static_cast<uint32_t>(kept_blocks.size());
        fb_out.write(reinterpret_cast<const char *>(&hdr), sizeof hdr);

        for (uint32_t blk_idx : kept_blocks) {
            fb_out.write(reinterpret_cast<const char *>(&blk_idx), sizeof blk_idx);
            size_t off = static_cast<size_t>(blk_idx) * blk_sz;
            size_t cur = (off + blk_sz <= slabs[i].size) ? blk_sz : (slabs[i].size - off);
            fb_out.write(reinterpret_cast<const char *>(slabs[i].data.data() + off), cur);
        }

        uint64_t disk_sz = sizeof(hdr) + kept_blocks.size() * (4 + blk_sz);
        total_orig_bytes += slabs[i].size;
        total_kept_bytes += disk_sz;
        std::printf("  Slab %d: %.0f MiB -> %.2f MiB (%zu/%zu blocks kept)\n",
                    slabs[i].idx, slabs[i].size / (1024.0 * 1024.0),
                    disk_sz / (1024.0 * 1024.0), kept_blocks.size(), total_blks);
    }
    std::printf("Total Slabs Disk Size: %.1f MiB -> %.2f MiB\n",
                total_orig_bytes / (1024.0 * 1024.0), total_kept_bytes / (1024.0 * 1024.0));

    // 7. Write Compacted Commands & Manifest
    std::string mpath_out = dst_dir + "/commands/manifest.txt";
    std::ofstream fmo(mpath_out);
    fmo << "top_count=" << top_count << " total_handles=" << total_handles << "\n";
    for (const auto &tline : manifest_top_lines) fmo << tline << "\n";

    for (int i = 0; i < total_handles; i++) {
        fmo << "handle " << ch[i].handle_idx << " 0x" << std::hex << ch[i].old_addr << " "
            << std::dec << ch[i].data.size() << " " << ch[i].fname << "\n";
        std::string cout_path = dst_dir + "/commands/" + ch[i].fname;
        std::ofstream fc_out(cout_path, std::ios::binary);
        if (fc_out.is_open()) {
            fc_out.write(reinterpret_cast<const char *>(ch[i].data.data()), ch[i].data.size());
        }
    }

    // 8. Compact UCAP Snapshot
    std::string ucap_src = src_dir + "/ucap.bin";
    std::ifstream fui(ucap_src, std::ios::binary);
    if (fui.is_open()) {
        uint32_t nucap = 0;
        if (fui.read(reinterpret_cast<char *>(&nucap), sizeof nucap) && nucap > 0) {
            uint64_t done = 0;
            fui.read(reinterpret_cast<char *>(&done), sizeof done);

            struct UcapRng { uint64_t lo, hi; };
            std::vector<UcapRng> r(nucap);
            std::vector<size_t> off(nucap);
            fui.read(reinterpret_cast<char *>(r.data()), sizeof(UcapRng) * nucap);
            fui.read(reinterpret_cast<char *>(off.data()), sizeof(size_t) * nucap);

            size_t total_bytes = 0;
            fui.read(reinterpret_cast<char *>(&total_bytes), sizeof total_bytes);
            std::vector<uint8_t> all_bytes(total_bytes);
            fui.read(reinterpret_cast<char *>(all_bytes.data()), total_bytes);

            // Filter ranges intersecting refs
            std::vector<UcapRng> kept_r;
            std::vector<size_t> kept_off;
            std::vector<uint8_t> kept_bytes;

            for (uint32_t i = 0; i < nucap; i++) {
                if (refs.intersects(r[i].lo, r[i].hi)) {
                    size_t len = static_cast<size_t>(r[i].hi - r[i].lo);
                    kept_off.push_back(kept_bytes.size());
                    if (off[i] + len <= total_bytes) {
                        kept_bytes.insert(kept_bytes.end(),
                                          all_bytes.data() + off[i],
                                          all_bytes.data() + off[i] + len);
                    } else {
                        kept_bytes.resize(kept_bytes.size() + len, 0);
                    }
                    kept_r.push_back(r[i]);
                }
            }

            std::string ucap_dst = dst_dir + "/ucap.bin";
            std::ofstream fuo(ucap_dst, std::ios::binary);
            if (fuo.is_open()) {
                uint32_t kept_n = static_cast<uint32_t>(kept_r.size());
                fuo.write(reinterpret_cast<const char *>(&kept_n), sizeof kept_n);
                fuo.write(reinterpret_cast<const char *>(&done), sizeof done);
                if (kept_n > 0) {
                    fuo.write(reinterpret_cast<const char *>(kept_r.data()), sizeof(UcapRng) * kept_n);
                    fuo.write(reinterpret_cast<const char *>(kept_off.data()), sizeof(size_t) * kept_n);
                    size_t new_total = kept_bytes.size();
                    fuo.write(reinterpret_cast<const char *>(&new_total), sizeof new_total);
                    fuo.write(reinterpret_cast<const char *>(kept_bytes.data()), new_total);
                }
                std::printf("Compacted UCAP: %u -> %u ranges (%zu bytes)\n",
                            nucap, kept_n, kept_bytes.size());
            }
        }
    }

    // 9. Process Image Metadata & Textures
    std::string img_src = src_dir + "/images.meta";
    std::ifstream fmi(img_src, std::ios::binary);
    if (fmi.is_open()) {
        uint32_t nimages = 0;
        fmi.read(reinterpret_cast<char *>(&nimages), 4);

        std::string img_dst = dst_dir + "/images.meta";
        std::ofstream fmo_img(img_dst, std::ios::binary);
        if (fmo_img.is_open()) {
            fmo_img.write(reinterpret_cast<const char *>(&nimages), 4);
            for (uint32_t i = 0; i < nimages; i++) {
                vkb_image_meta m{};
                fmi.read(reinterpret_cast<char *>(&m), sizeof m);
                if (fake_tex) {
                    m.has_pixels = 0;
                    m.pixel_bytes = 0;
                } else if (m.has_pixels && m.pixel_bytes > 0) {
                    char tname[128];
                    std::snprintf(tname, sizeof tname, "tex_%llu.bin", static_cast<unsigned long long>(m.serial));
                    copy_file_simple(src_dir + "/textures/" + tname, dst_dir + "/textures/" + tname);
                }
                fmo_img.write(reinterpret_cast<const char *>(&m), sizeof m);
            }
        }
    }

    // 10. Copy Registries, Pinned Textures, and Present Metadata
    copy_file_simple(src_dir + "/treg.bin", dst_dir + "/treg.bin");
    copy_file_simple(src_dir + "/sreg.bin", dst_dir + "/sreg.bin");
    copy_file_simple(src_dir + "/pinned_textures.bin", dst_dir + "/pinned_textures.bin");

    std::string pmeta_dst = dst_dir + "/present.meta";
    std::ofstream fpm(pmeta_dst);
    if (fpm.is_open()) {
        uint64_t target_serial = last_target_serial ? last_target_serial : 2;
        fpm << "serial=" << target_serial << "\ncrop=0,0,1920,1080\n";
    }

    // 11. Copy Bundled Shaders for Active Keys
    int copied_shaders = 0;
    for (const auto &key : used_shaders) {
        std::string s_spv = src_dir + "/shaders/" + key + ".spv";
        std::string d_spv = dst_dir + "/shaders/" + key + ".spv";
        std::string s_json = src_dir + "/shaders/" + key + ".res.json";
        std::string d_json = dst_dir + "/shaders/" + key + ".res.json";

        struct stat st_check;
        if (stat(s_spv.c_str(), &st_check) != 0) {
            s_spv = "data/shaders/ryujinx/" + key + ".spv";
            s_json = "data/shaders/ryujinx/" + key + ".res.json";
        }
        copy_file_simple(s_spv, d_spv);
        copy_file_simple(s_json, d_json);
        copied_shaders++;
    }
    std::printf("Copied %d SPIR-V shaders and reflection JSONs to: %s/shaders/\n",
                copied_shaders, dst_dir.c_str());

    std::printf("Compaction complete! Self-contained frame output to: %s\n", dst_dir.c_str());
    return 1;
}
