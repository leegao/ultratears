// Standalone whole-NSO Call-Graph PageRank, Loop Intensity & Hot*Size Profiler
// (tools/analyze_nso.cpp)
//
// Analyzes all 228,263+ functions in a Nintendo Switch NSO executable (e.g., data/exefs/main):
// 1. Recovers function entry boundaries via ELF .eh_frame, .dynsym, R_AARCH64_RELATIVE relocations,
//    and branch target analysis.
// 2. Maps functions to their respective chunk indices.
// 3. Disassembles all ARM64 instruction words across .text to count:
//    - Instruction count (size)
//    - Incoming direct call sites (BL / tail B from other functions)
//    - Unique callers and unique callees
//    - Loop back-edges (intra-function backward branches indicating loops)
//    - NEON SIMD / FP instruction density
//    - Indirect calls (BLR) and indirect branches (BR / jump tables)
//    - C++ vtable relocations (.rodata function pointers)
// 4. Computes 20 iterations of damped Call-Graph PageRank (d = 0.85).
// 5. Computes composite Hotness = (call_sites_in + 2*vtable_refs + 5*pagerank) * (1 + 0.5 * min(loops, 30))
//    and composite Hot*Size = Hotness * insns.
// 6. Outputs sorted tables for top HOT & LARGE functions as well as zero-BLR static leaf candidates.

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <map>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "nso_loader.hpp"

using namespace ultrs;

static int64_t sext26(uint32_t w) {
    uint32_t v = w & 0x03FFFFFFu;
    return (v & 0x02000000u) ? static_cast<int64_t>(v) - 0x04000000LL : static_cast<int64_t>(v);
}

struct FnStats {
    uint64_t entry = 0;
    uint64_t end = 0;
    size_t chunk_idx = 0;
    size_t insns = 0;
    size_t call_sites_in = 0;
    size_t unique_callers = 0;
    size_t vtable_refs = 0;
    size_t callees = 0;
    size_t unique_callees = 0;
    size_t backedges = 0;
    size_t simd_fp = 0;
    size_t branches = 0;
    size_t indirect_calls = 0;
    size_t indirect_brs = 0;
    double pagerank = 0.0;
    double hot_large_score = 0.0;
};

int main(int argc, char** argv) {
    std::string nso_path = "data/exefs/main";
    size_t top_n = 35;
    size_t min_insns = 250;
    std::string tsv_out;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if ((a == "-i" || a == "--input") && i + 1 < argc) nso_path = argv[++i];
        else if ((a == "-n" || a == "--top") && i + 1 < argc) top_n = std::stoull(argv[++i]);
        else if (a == "--min-insns" && i + 1 < argc) min_insns = std::stoull(argv[++i]);
        else if (a == "--tsv" && i + 1 < argc) tsv_out = argv[++i];
        else if (a[0] != '-') nso_path = a;
        else if (a == "-h" || a == "--help") {
            std::printf("Usage: %s [data/exefs/main] [options]\n"
                        "Options:\n"
                        "  -i, --input <file>   Path to NSO binary (default: data/exefs/main)\n"
                        "  -n, --top <N>        Number of top functions to display (default: 35)\n"
                        "  --min-insns <N>      Minimum instruction count threshold (default: 250)\n"
                        "  --tsv <file>         Export full profile to tab-separated file\n"
                        "  -h, --help           Show this help message\n", argv[0]);
            return 0;
        }
    }

    uint64_t base = 0x800000000ULL;
    std::printf("[analyze_nso] Loading NSO binary: %s...\n", nso_path.c_str());
    nso::NsoFile nso(nso_path);
    uint64_t lo = base + nso.text.first;
    uint64_t hi = lo + nso.text.second;
    size_t nwords = nso.text.second / 4;
    std::vector<uint32_t> words(nwords);
    std::memcpy(words.data(), nso.image.data() + nso.text.first, nwords * 4);
    auto in_text = [&](uint64_t a) { return a >= lo && a < hi && (a % 4) == 0; };

    std::printf("[analyze_nso] Discovering function entry points across .text [0x%llx..0x%llx)...\n",
                (unsigned long long)lo, (unsigned long long)hi);
    std::set<uint64_t> starts;
    for (uint64_t a : nso::eh_frame_functions(nso)) {
        if (in_text(base + a)) starts.insert(base + a);
    }
    for (const auto& s : nso.syms) {
        if (s.shndx && (s.info & 0xF) == 2 && in_text(base + s.value)) starts.insert(base + s.value);
    }
    for (const auto& r : nso.relocs) {
        if (r.type == nso::R_AARCH64_RELATIVE && in_text(base + static_cast<uint64_t>(r.addend)))
            starts.insert(base + static_cast<uint64_t>(r.addend));
    }
    for (size_t i = 0; i < words.size(); ++i) {
        uint32_t w = words[i];
        if ((w & 0xFC000000u) == 0x94000000u) {
            uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(lo + i * 4) + sext26(w) * 4);
            if (in_text(t)) starts.insert(t);
        }
    }
    std::vector<uint64_t> order(starts.begin(), starts.end());
    size_t N = order.size();
    std::printf("[analyze_nso] Discovered %zu functions. Mapping chunk assignments...\n", N);

    std::unordered_map<uint64_t, size_t> addr_to_idx;
    addr_to_idx.reserve(N * 2);
    for (size_t i = 0; i < N; ++i) addr_to_idx[order[i]] = i;

    // Simulate chunk partition matching UltraTears chunking logic
    size_t max_chunk_fns = 1500, max_chunk_bytes = 2500000, big_fn_bytes = 180000;
    std::vector<FnStats> fns(N);
    {
        size_t ci = 0, chunk_idx = 0;
        while (ci < N) {
            size_t est_bytes = 0;
            size_t cur_cf = 0;
            while (ci < N && cur_cf < max_chunk_fns && est_bytes < max_chunk_bytes) {
                uint64_t a = order[ci];
                uint64_t end = (ci + 1 < N) ? order[ci + 1] : hi;
                size_t fn_insns = (end - a) / 4;
                size_t fn_est = fn_insns * 120;
                if (fn_est > big_fn_bytes && cur_cf > 0) break;
                fns[ci].entry = a;
                fns[ci].end = end;
                fns[ci].chunk_idx = chunk_idx;
                fns[ci].insns = fn_insns;
                est_bytes += fn_est;
                ++cur_cf;
                ++ci;
                if (fn_est > big_fn_bytes) break;
            }
            ++chunk_idx;
        }
    }

    // Tabulate .rodata vtable pointers pointing to function entry points
    for (const auto& r : nso.relocs) {
        if (r.type == nso::R_AARCH64_RELATIVE) {
            uint64_t target = base + static_cast<uint64_t>(r.addend);
            auto it = addr_to_idx.find(target);
            if (it != addr_to_idx.end()) fns[it->second].vtable_refs++;
        }
    }

    std::printf("[analyze_nso] Disassembling instructions & constructing call graph edges...\n");
    std::vector<std::vector<size_t>> out_edges(N);
    std::vector<std::unordered_set<size_t>> in_callers(N);

    for (size_t i = 0; i < N; ++i) {
        uint64_t entry = fns[i].entry, end = fns[i].end;
        std::unordered_set<size_t> ucallees;
        for (uint64_t a = entry; a < end; a += 4) {
            uint32_t w = words[(a - lo) / 4];
            uint32_t op0 = nso::bits(w, 25, 4);
            // AdvSIMD / FP instruction opcodes
            if ((op0 & 0b0111) == 0b0111) fns[i].simd_fp++;
            // Branch / control-flow opcodes
            if ((op0 & 0b1110) == 0b1010) {
                fns[i].branches++;
                if (nso::bits(w, 26, 5) == 0b00101) {
                    uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(a) + sext26(w) * 4);
                    bool is_bl = nso::bits(w, 31, 1) != 0;
                    if (!is_bl && t >= entry && t < a) fns[i].backedges++;
                    if (is_bl || t < entry || t >= end) {
                        auto it = addr_to_idx.find(t);
                        if (it != addr_to_idx.end() && it->second != i) {
                            fns[it->second].call_sites_in++;
                            in_callers[it->second].insert(i);
                            fns[i].callees++;
                            ucallees.insert(it->second);
                        }
                    }
                } else if (nso::bits(w, 25, 7) == 0b0101010 && !nso::bits(w, 4, 1)) {
                    uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(a) + nso::sext(nso::bits(w, 5, 19), 19) * 4);
                    if (t >= entry && t < a) fns[i].backedges++;
                } else if (nso::bits(w, 25, 6) == 0b011010) {
                    uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(a) + nso::sext(nso::bits(w, 5, 19), 19) * 4);
                    if (t >= entry && t < a) fns[i].backedges++;
                } else if (nso::bits(w, 25, 6) == 0b011011) {
                    uint64_t t = static_cast<uint64_t>(static_cast<int64_t>(a) + nso::sext(nso::bits(w, 5, 14), 14) * 4);
                    if (t >= entry && t < a) fns[i].backedges++;
                } else if (nso::bits(w, 25, 7) == 0b1101011) {
                    unsigned opc = nso::bits(w, 21, 4);
                    if (opc == 0) fns[i].indirect_brs++;
                    else if (opc == 1) fns[i].indirect_calls++;
                }
            }
        }
        fns[i].unique_callees = ucallees.size();
        out_edges[i].assign(ucallees.begin(), ucallees.end());
    }
    for (size_t i = 0; i < N; ++i) fns[i].unique_callers = in_callers[i].size();

    // Damped PageRank (d = 0.85, 20 power-iteration steps)
    std::printf("[analyze_nso] Computing Call-Graph PageRank (20 iterations)...\n");
    std::vector<double> pr(N, 1.0), next_pr(N, 0.0);
    for (int iter = 0; iter < 20; ++iter) {
        std::fill(next_pr.begin(), next_pr.end(), 0.15);
        for (size_t i = 0; i < N; ++i) {
            if (out_edges[i].empty()) continue;
            double share = (0.85 * pr[i]) / out_edges[i].size();
            for (size_t dst : out_edges[i]) {
                next_pr[dst] += share;
            }
        }
        pr.swap(next_pr);
    }

    for (size_t i = 0; i < N; ++i) {
        fns[i].pagerank = pr[i];
        double hotness = (fns[i].call_sites_in + 2.0 * fns[i].vtable_refs + 5.0 * fns[i].pagerank) *
                         (1.0 + 0.5 * std::min<size_t>(fns[i].backedges, 30));
        fns[i].hot_large_score = hotness * static_cast<double>(fns[i].insns);
    }

    std::vector<size_t> cand;
    for (size_t i = 0; i < N; ++i) {
        if (fns[i].insns >= min_insns && (fns[i].call_sites_in >= 15 || fns[i].pagerank >= 5.0) && fns[i].backedges >= 2) {
            cand.push_back(i);
        }
    }
    std::sort(cand.begin(), cand.end(), [&](size_t a, size_t b) {
        return fns[a].hot_large_score > fns[b].hot_large_score;
    });

    std::printf("\n=== Top %zu HOT & LARGE Functions (insns >= %zu, CallIn/PageRank & Loop Intensity) ===\n",
                top_n, min_insns);
    std::printf("%-14s | %-10s | %6s | %7s | %6s | %5s | %6s | %4s | %4s | %8s | %12s\n",
                "Function", "Chunk", "Insns", "CallIn", "Loops", "UCall", "SIMD", "BLR", "BR", "PageRank", "Hot*Size");
    for (size_t k = 0; k < std::min<size_t>(top_n, cand.size()); ++k) {
        const auto& f = fns[cand[k]];
        char cname[32];
        std::snprintf(cname, sizeof(cname), "main_%03zu", f.chunk_idx);
        std::printf("f_%09llx   | %-10s | %6zu | %7zu | %6zu | %5zu | %6zu | %4zu | %4zu | %8.1f | %12.1f\n",
                    (unsigned long long)f.entry, cname, f.insns, f.call_sites_in, f.backedges,
                    f.unique_callees, f.simd_fp, f.indirect_calls, f.indirect_brs, f.pagerank, f.hot_large_score);
    }

    std::printf("\n=== Top 25 HOT & LARGE Functions with Zero BLR & Few External Callees (<= 8) ===\n");
    size_t shown = 0;
    for (size_t idx : cand) {
        const auto& f = fns[idx];
        if (f.indirect_calls == 0 && f.unique_callees <= 8 && f.insns >= min_insns && f.insns <= 4000) {
            char cname[32];
            std::snprintf(cname, sizeof(cname), "main_%03zu", f.chunk_idx);
            std::printf("f_%09llx   | %-10s | %6zu | %7zu | %6zu | %5zu | %6zu | %4zu | %4zu | %8.1f | %12.1f\n",
                        (unsigned long long)f.entry, cname, f.insns, f.call_sites_in, f.backedges,
                        f.unique_callees, f.simd_fp, f.indirect_calls, f.indirect_brs, f.pagerank, f.hot_large_score);
            if (++shown >= 25) break;
        }
    }

    if (!tsv_out.empty()) {
        std::ofstream out(tsv_out);
        out << "entry\tchunk\tinsns\tcall_sites_in\tunique_callers\tvtable_refs\tbackedges\tcallees\tunique_callees\tsimd_fp\tindirect_calls\tindirect_brs\tpagerank\thot_large_score\n";
        for (size_t idx : cand) {
            const auto& f = fns[idx];
            out << "0x" << std::hex << f.entry << std::dec << "\tmain_" << f.chunk_idx << "\t"
                << f.insns << "\t" << f.call_sites_in << "\t" << f.unique_callers << "\t"
                << f.vtable_refs << "\t" << f.backedges << "\t" << f.callees << "\t"
                << f.unique_callees << "\t" << f.simd_fp << "\t" << f.indirect_calls << "\t"
                << f.indirect_brs << "\t" << f.pagerank << "\t" << f.hot_large_score << "\n";
        }
        std::printf("\nWrote full profile table to %s\n", tsv_out.c_str());
    }

    return 0;
}
