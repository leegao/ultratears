// Common infrastructure implementations for UltraTears lifter benchmarks & fuzzing:
// - Demand-paged fault-resilient guest memory virtualization & sigsetjmp safety
// - Unlowered sample.ll parser with full jump-table preservation
// - Automated external callee call-site & branch-sensitivity analyzer + C stub generator
// - Static CFG longest-path solver & generic arbitrary-.ll sample harness
// - All-23-pass individual layered pipeline configurations with IR caching
// - Static microarchitectural x86-64 path latency estimator + empirical p50/p75/p90 timers
// (src/horizon2llvm/benchmark/benchmark_common.cpp)

#include "src/horizon2llvm/benchmark/benchmark_common.hpp"

#include <algorithm>
#include <cassert>
#include <chrono>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <numeric>
#include <setjmp.h>
#include <signal.h>
#include <sstream>
#include <sys/mman.h>
#include <ucontext.h>
#include <unistd.h>

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;

namespace ultrs::benchmark {

namespace {

static sigjmp_buf g_safe_exec_jmp;
static volatile sig_atomic_t g_safe_exec_active = 0;
static volatile int g_timed_mode_active = 0;
static volatile uint64_t g_timed_fault_count = 0;
static std::vector<uintptr_t> g_demand_pages;

static void init_demand_page_contents(uintptr_t page_base) {
    uint64_t* p64 = reinterpret_cast<uint64_t*>(page_base);
    uint64_t target = GLOBALS_BASE + 0x4000ULL;
    for (size_t i = 0; i < (0x10000 / 8); ++i) {
        p64[i] = target;
    }
}

void segv_handler(int sig, siginfo_t* si, void* ctx) {
    (void)sig;
    uintptr_t fault_addr = reinterpret_cast<uintptr_t>(si->si_addr);

    if (g_timed_mode_active) {
        g_timed_fault_count++;
    }

    if (si->si_code == SEGV_MAPERR &&
        fault_addr >= 0x10000ULL &&
        fault_addr < 0x0000700000000000ULL &&
        g_demand_pages.size() < 4096) {
        uintptr_t page_base = fault_addr & ~0xFFFFULL;
        int flags = MAP_PRIVATE | MAP_ANONYMOUS;
#ifdef MAP_FIXED_NOREPLACE
        flags |= MAP_FIXED_NOREPLACE;
#else
        flags |= MAP_FIXED;
#endif
        void* mapped = mmap(reinterpret_cast<void*>(page_base), 0x10000,
                            PROT_READ | PROT_WRITE, flags, -1, 0);
        if (mapped != MAP_FAILED && reinterpret_cast<uintptr_t>(mapped) == page_base) {
            init_demand_page_contents(page_base);
            g_demand_pages.push_back(page_base);
            // AArch64 SIMD and 64-bit pair instructions (LDP/STP or 128-bit LDR q0) can access
            // 8 or 16 bytes spanning across a 64 KiB page boundary (e.g., accessing 16 bytes at
            // offset 0xFFF8 touches 0xFFF8..0x10008). If the handler only mapped the base page
            // fault_addr & ~0xFFFFULL, the instruction would re-fault immediately on the subsequent
            // unmapped byte in the next page. Preemptively mapping page_base + 0x10000ULL ensures
            // cross-page boundary memory accesses execute cleanly.
            if ((fault_addr & 0xFFFFULL) >= 0xFFF0ULL) {
                uintptr_t next_base = page_base + 0x10000ULL;
                void* mapped2 = mmap(reinterpret_cast<void*>(next_base), 0x10000,
                                     PROT_READ | PROT_WRITE, flags, -1, 0);
                if (mapped2 != MAP_FAILED && reinterpret_cast<uintptr_t>(mapped2) == next_base) {
                    init_demand_page_contents(next_base);
                    g_demand_pages.push_back(next_base);
                }
            }
            return;
        }
    }

    if (g_safe_exec_active) {
        g_safe_exec_active = 0;
        siglongjmp(g_safe_exec_jmp, 1);
    }

    ucontext_t* uc = reinterpret_cast<ucontext_t*>(ctx);
    Dl_info dli{};
    dladdr(reinterpret_cast<void*>(uc->uc_mcontext.gregs[REG_RIP]), &dli);
    std::fprintf(stderr, "SIGSEGV at addr=%p sym=%s+0x%llx fbase_off=0x%llx\n",
                 si->si_addr,
                 dli.dli_sname ? dli.dli_sname : "?",
                 static_cast<unsigned long long>(reinterpret_cast<char*>(uc->uc_mcontext.gregs[REG_RIP]) - reinterpret_cast<char*>(dli.dli_saddr)),
                 static_cast<unsigned long long>(reinterpret_cast<char*>(uc->uc_mcontext.gregs[REG_RIP]) - reinterpret_cast<char*>(dli.dli_fbase)));
    _exit(139);
}

} // namespace

void set_timed_exec_active(bool active) {
    g_timed_mode_active = active ? 1 : 0;
}

uint64_t get_timed_fault_count() {
    return g_timed_fault_count;
}

void reset_timed_fault_count() {
    g_timed_fault_count = 0;
}

void install_segv_handler() {
    struct sigaction sa{};
    sa.sa_sigaction = segv_handler;
    sa.sa_flags = SA_SIGINFO | SA_NODEFER;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGSEGV, &sa, nullptr);
    sigaction(SIGBUS, &sa, nullptr);
}

void reset_demand_paged_arenas() {
    if (g_demand_pages.size() > 256) {
        for (uintptr_t page_base : g_demand_pages) {
            munmap(reinterpret_cast<void*>(page_base), 0x10000);
        }
        g_demand_pages.clear();
        return;
    }
    for (uintptr_t page_base : g_demand_pages) {
        init_demand_page_contents(page_base);
    }
}

bool run_guest_fn_safely(GuestFn fn, Cpu* c) {
    g_safe_exec_active = 1;
    if (sigsetjmp(g_safe_exec_jmp, 0) == 0) {
        fn(c);
        g_safe_exec_active = 0;
        return true;
    }
    g_safe_exec_active = 0;
    return false;
}

ParsedRawChunk parse_raw_ll(const std::string& raw_text, const std::string& mod_id) {
    ParsedRawChunk out;
    out.mod_id = mod_id;
    out.target_triple = "x86_64-pc-linux-gnu";

    // 1. LLVM IR Named Metadata: !ultratears.chunk = !{!<idx>}
    // Automatically elided by LLVM CodeGen during lowering to target ISA and preserved during IR parsing.
    {
        std::regex md_ref_re("!ultratears\\.chunk\\s*=\\s*!\\{!([0-9]+)\\}");
        std::smatch md_ref_match;
        if (std::regex_search(raw_text, md_ref_match, md_ref_re)) {
            std::string node_idx = md_ref_match[1].str();
            std::regex node_def_re("!" + node_idx + "\\s*=\\s*!\\{!\"([^\"]+)\",\\s*i64\\s+([0-9]+),\\s*i64\\s+([0-9]+),\\s*i64\\s+([0-9]+)\\}");
            std::smatch node_def_match;
            if (std::regex_search(raw_text, node_def_match, node_def_re)) {
                out.chunk_meta.present = true;
                out.chunk_meta.chunk_id = node_def_match[1].str();
                out.chunk_meta.num_functions = std::stoull(node_def_match[2].str());
                out.chunk_meta.pc_lo = std::stoull(node_def_match[3].str());
                out.chunk_meta.pc_hi = std::stoull(node_def_match[4].str());
                out.mod_id = out.chunk_meta.chunk_id;
            }
        }
    }

    // 2. Legacy fallback comment header: ; UltraTears chunk <id>: <count> functions [0x<lo>..0x<hi>)
    if (raw_text.rfind("; UltraTears chunk ", 0) == 0) {
        size_t nl = raw_text.find('\n');
        if (nl != std::string::npos) {
            out.chunk_hdr = raw_text.substr(0, nl + 1);
            if (!out.chunk_meta.present) {
                std::regex chunk_comment_re("; UltraTears chunk ([^:]+):\\s*([0-9]+)\\s*functions\\s*\\[0x([0-9a-fA-F]+)\\.\\.0x([0-9a-fA-F]+)\\)");
                std::smatch m;
                if (std::regex_search(out.chunk_hdr, m, chunk_comment_re)) {
                    out.chunk_meta.present = true;
                    out.chunk_meta.chunk_id = m[1].str();
                    out.chunk_meta.num_functions = std::stoull(m[2].str());
                    out.chunk_meta.pc_lo = std::stoull(m[3].str(), nullptr, 16);
                    out.chunk_meta.pc_hi = std::stoull(m[4].str(), nullptr, 16);
                    if (out.mod_id == "chunk") out.mod_id = out.chunk_meta.chunk_id;
                }
            }
        }
    }

    // Collect external function declarations (`declare dso_local void @f_...(ptr)` or `@hle_...`)
    {
        std::regex decl_re("declare\\s+dso_local\\s+void\\s+@([A-Za-z0-9_]+)\\s*\\(\\s*ptr\\s*\\)");
        std::set<std::string> seen_decls;
        for (auto it = std::sregex_iterator(raw_text.begin(), raw_text.end(), decl_re);
             it != std::sregex_iterator(); ++it) {
            std::string sym = (*it)[1].str();
            if (sym != "rt_dispatch" && seen_decls.insert(sym).second) {
                out.external_decls.push_back(sym);
            }
        }
    }

    std::regex fn_def_re("define dso_local void @(f_([0-9a-fA-F]+))\\([^\\n]*\\)[^\\{]*\\{");
    std::regex pc_word_re("; @pc 0x([0-9a-fA-F]+) word 0x([0-9a-fA-F]+)");
    std::regex lbl_re("\\n(L_([0-9a-fA-F]+)):");
    std::regex sw_hdr_re("switch\\s+i64\\s+%[A-Za-z0-9_.]+,\\s*label\\s+%L_([0-9a-fA-F]+)_jt_def\\s*\\[([^\\]]*)\\]");
    std::regex sw_case_re("i64\\s+([0-9]+),\\s*label\\s+%L_([0-9a-fA-F]+)");

    for (auto it = std::sregex_iterator(raw_text.begin(), raw_text.end(), fn_def_re);
         it != std::sregex_iterator(); ++it) {
        ParsedRawFunction pf;
        pf.name = (*it)[1].str();
        pf.entry_pc = std::stoull((*it)[2].str(), nullptr, 16);
        size_t body_start = it->position() + it->length();
        size_t body_end = raw_text.find("\n}", body_start);
        if (body_end == std::string::npos) body_end = raw_text.size();
        std::string body = raw_text.substr(body_start, body_end - body_start);

        std::map<uint64_t, uint32_t> pc_words;
        for (auto pit = std::sregex_iterator(body.begin(), body.end(), pc_word_re);
             pit != std::sregex_iterator(); ++pit) {
            uint64_t pc = std::stoull((*pit)[1].str(), nullptr, 16);
            uint32_t w = static_cast<uint32_t>(std::stoul((*pit)[2].str(), nullptr, 16));
            pc_words[pc] = w;
        }
        if (pc_words.empty()) continue;
        pf.end_pc = pc_words.rbegin()->first + 4;
        size_t nwords = static_cast<size_t>((pf.end_pc - pf.entry_pc) / 4);
        pf.words.assign(nwords, 0xD503201Fu);
        for (const auto& [pc, w] : pc_words) {
            if (pc >= pf.entry_pc && pc < pf.end_pc) {
                pf.words[(pc - pf.entry_pc) / 4] = w;
            }
        }
        pf.label_pcs.insert(pf.entry_pc);
        for (auto lit = std::sregex_iterator(body.begin(), body.end(), lbl_re);
             lit != std::sregex_iterator(); ++lit) {
            uint64_t lpc = std::stoull((*lit)[2].str(), nullptr, 16);
            if (lpc >= pf.entry_pc && lpc < pf.end_pc) {
                pf.label_pcs.insert(lpc);
            }
        }
        // Parse preserved jump table switches (`switch i64 %..., label %L_<pc>_jt_def [ ... ]`)
        for (auto sit = std::sregex_iterator(body.begin(), body.end(), sw_hdr_re);
             sit != std::sregex_iterator(); ++sit) {
            uint64_t br_pc = std::stoull((*sit)[1].str(), nullptr, 16);
            std::string cases_str = (*sit)[2].str();
            JumpTableInfo jti;
            for (auto cit = std::sregex_iterator(cases_str.begin(), cases_str.end(), sw_case_re);
                 cit != std::sregex_iterator(); ++cit) {
                uint64_t target_pc = std::stoull((*cit)[2].str(), nullptr, 16);
                jti.targets.push_back(target_pc);
                if (target_pc >= pf.entry_pc && target_pc < pf.end_pc) {
                    pf.label_pcs.insert(target_pc);
                }
            }
            if (!jti.targets.empty()) {
                pf.jump_tables[br_pc] = std::move(jti);
            }
        }
        out.total_arm64_insns += pf.words.size();
        out.fns.push_back(std::move(pf));
    }
    return out;
}

size_t count_arm64_asm_insns(const std::string& asm_path, const ParsedRawChunk& fallback_chunk) {
    if (fs::exists(asm_path)) {
        std::ifstream in(asm_path);
        if (in) {
            size_t count = 0;
            std::string line;
            while (std::getline(in, line)) {
                if (line.rfind("  0x", 0) == 0 && line.find(':') != std::string::npos) {
                    ++count;
                }
            }
            if (count > 0) return count;
        }
    }
    return fallback_chunk.total_arm64_insns;
}

std::string lower_parsed_chunk(const ParsedRawChunk& chunk, const PassPipelineConfig& cfg) {
    Module M(chunk.mod_id, chunk.target_triple);
    M.chunk_meta = chunk.chunk_meta;
    uint64_t lo = cfg.text_lo ? cfg.text_lo : 0x800000000ULL;
    uint64_t hi = cfg.text_hi ? cfg.text_hi : 0x804000000ULL;
    AArch64ToLLVMLifter arm_lifter(lo, hi);
    for (const auto& pf : chunk.fns) {
        Function* fn = M.create_function(pf.name, pf.entry_pc, pf.end_pc);
        fn->label_pcs = pf.label_pcs;
        fn->jump_tables = pf.jump_tables;
        arm_lifter.lift_function(M, fn, pf.words, pf.entry_pc);
    }
    ModulePassManager MPM;
    build_ultratears_pipeline(MPM, cfg);
    MPM.run(M);
    if (!chunk.chunk_hdr.empty() && chunk.chunk_hdr[0] == ';') {
        return chunk.chunk_hdr + M.serialize();
    }
    return M.serialize();
}

void write_if_changed(const std::string& path, const std::string& text) {
    if (fs::exists(path)) {
        std::ifstream in(path, std::ios::binary);
        if (in) {
            std::ostringstream ss;
            ss << in.rdbuf();
            if (ss.str() == text) return;
        }
    }
    std::ofstream out(path, std::ios::binary);
    out.write(text.data(), static_cast<std::streamsize>(text.size()));
}

static const char* host_c_compiler() {
    static const char* s_cc = nullptr;
    if (!s_cc) {
        s_cc = (std::system("command -v clang >/dev/null 2>&1") == 0) ? "clang" : "gcc";
    }
    return s_cc;
}

bool compile_stubs(const std::string& stubs_c_path, const std::string& stubs_o_path,
                   const std::string& simd_o_path) {
    const char* cc = host_c_compiler();
    std::string inc_flags = "-I/tmp/ultrs_rt -I. -Isrc/runtime -Isrc/horizon2llvm/runtime";
    std::string cmd1 = std::string(cc) + " -O1 -fPIC -Wno-attributes " + inc_flags + " -c " + stubs_c_path + " -o " + stubs_o_path;
    if (std::system(cmd1.c_str()) != 0) {
        return false;
    }
    if (!fs::exists(simd_o_path)) {
        if (fs::exists("build/tools/lifter_obj/simd_rt.o")) {
            fs::copy_file("build/tools/lifter_obj/simd_rt.o", simd_o_path, fs::copy_options::overwrite_existing);
            return true;
        }
        std::string cached_simd = "/tmp/ultrs_cached_simd_rt.o";
        if (!fs::exists(cached_simd)) {
            std::string simd_c = fs::exists("src/horizon2llvm/runtime/simd_rt.c")
                                 ? "src/horizon2llvm/runtime/simd_rt.c"
                                 : (fs::exists("runtime/simd_rt.c") ? "runtime/simd_rt.c" : "src/runtime/simd_rt.c");
            std::string cmd2 = std::string(cc) + " -O2 -fPIC -fno-strict-aliasing " + inc_flags + " -c " + simd_c + " -o " + cached_simd;
            if (std::system(cmd2.c_str()) != 0) return false;
        }
        fs::copy_file(cached_simd, simd_o_path, fs::copy_options::overwrite_existing);
    }
    return true;
}

bool compile_and_link_so(const std::string& ir_text, const std::string& mod_id,
                         const std::string& opt_pipe, const std::string& obj_path,
                         const std::string& stub_o, const std::string& simd_o,
                         const std::string& so_path) {
    llvm_backend::LibLLVM::instance().process_ir(
        ir_text, mod_id, /*verify=*/true, opt_pipe, nullptr, "", obj_path, "x86_64-pc-linux-gnu");
    const char* cc = host_c_compiler();
    std::string cmd = std::string(cc) + " -shared -Wl,-Bsymbolic -O2 " + obj_path + " " + stub_o + " " + simd_o + " -lm -o " + so_path;
    return std::system(cmd.c_str()) == 0;
}

// ============================================================================
// All 23 Individual Pass Layers + Grouped Layers
// ============================================================================

std::vector<LayerSpec> get_all_passes_layers(const std::string& orig_base_ir) {
    std::vector<LayerSpec> layers;
    if (!orig_base_ir.empty()) {
        layers.push_back({"00. Initial Baseline (orig baseline.ll)", "layer_00_initial_baseline", [](PassPipelineConfig&) {}, false, true});
    }
    layers.push_back({"00. Raw Reference (Unlowered sample.ll)", "layer_00_raw_reference", [](PassPipelineConfig&) {}, true, false});

    // Helper that enables passes cumulatively up to `max_pass` (1..23)
    auto make_cumulative = [](int max_pass) {
        return [max_pass](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.include_default_drs          = (max_pass >= 1);
            c.force_fnprof                 = (max_pass < 2); // Pass 2 eliminates entry hooks
            c.enable_rodata_constprop      = (max_pass >= 3);
            c.enable_fast_fp               = (max_pass >= 4);
            c.enable_simd_inline           = (max_pass >= 5);
            c.force_aarch64_intrinsics     = false;          // Pass 6 is AArch64-host gated
            c.enable_x86_64_intrinsics     = (max_pass >= 7);
            c.enable_lse_fastpath          = (max_pass >= 8);
            // Pass 9 (HorizonLoweringPass) is always active in build_ultratears_pipeline
            c.enable_tls_spinwait          = (max_pass >= 10);
            c.enable_stack_alignment       = (max_pass >= 11);
            c.enable_idiom_deconstruct     = (max_pass >= 12);
            // Pass 13 (JumpTableLoweringPass) is always active in build_ultratears_pipeline
            c.enable_shadow_dispatch       = (max_pass >= 14);
            c.enable_fcmp_fusion           = (max_pass >= 15);
            c.enable_nzcv_fusion           = (max_pass >= 16);
            c.enable_nzcv_interblock_dse   = (max_pass >= 16);
            c.enable_nzcv_dead_flag_elim   = (max_pass >= 17);
            c.enable_link_reg_elision      = (max_pass >= 18);
            c.enable_tail_call_devirt      = (max_pass >= 19);
            c.enable_aapcs64_abi_contract  = (max_pass >= 20);
            c.enable_cpu_state_promotion   = (max_pass >= 21);
            c.enable_cpu_entry_kill_pruning = (max_pass >= 21);
            c.enable_cpu_interproc_pruning = (max_pass >= 21);
            c.enable_cross_chunk_leaf_inline = (max_pass >= 22);
            c.enable_nce_abi               = false; // Pass 23 is AArch64-host Static NCE ABI
        };
    };

    layers.push_back({"01. +Pass 01: UltraTearsPatch (Minimal No-Opt)",   "layer_01_pass01_patch",              make_cumulative(1),  false, false});
    layers.push_back({"02. +Pass 02: ProfileGuidedEntryHookElim",         "layer_02_pass02_profile_hook",       make_cumulative(2),  false, false});
    layers.push_back({"03. +Pass 03: NsoRodataConstPropAndDevirt",        "layer_03_pass03_rodata_constprop",   make_cumulative(3),  false, false});
    layers.push_back({"04. +Pass 04: FPCRFastFPLowering",                 "layer_04_pass04_fastfp",             make_cumulative(4),  false, false});
    layers.push_back({"05. +Pass 05: SIMDPairwiseAndConversionInline",    "layer_05_pass05_simd_inline",        make_cumulative(5),  false, false});
    layers.push_back({"06. +Pass 06: AArch64NativeIntrinsic (HostGated)", "layer_06_pass06_aarch64_intrinsic",  make_cumulative(6),  false, false});
    layers.push_back({"07. +Pass 07: X8664HardwareIntrinsic",             "layer_07_pass07_x86_intrinsics",     make_cumulative(7),  false, false});
    layers.push_back({"08. +Pass 08: ExclusiveMonitorLSEFastPath",        "layer_08_pass08_lse_fastpath",       make_cumulative(8),  false, false});
    layers.push_back({"09. +Pass 09: HorizonLowering (System Insns)",     "layer_09_pass09_horizon_lowering",   make_cumulative(9),  false, false});
    layers.push_back({"10. +Pass 10: HorizonTLSAndSpinWait",              "layer_10_pass10_tls_spinwait",       make_cumulative(10), false, false});
    layers.push_back({"11. +Pass 11: GuestStackAndAlignment",             "layer_11_pass11_stack_align",        make_cumulative(11), false, false});
    layers.push_back({"12. +Pass 12: AArch64IdiomDeconstruct",            "layer_12_pass12_idiom_deconstruct",  make_cumulative(12), false, false});
    layers.push_back({"13. +Pass 13: JumpTableLowering",                  "layer_13_pass13_jump_table",         make_cumulative(13), false, false});
    layers.push_back({"14. +Pass 14: ShadowDispatchTable",                "layer_14_pass14_shadow_dispatch",    make_cumulative(14), false, false});
    layers.push_back({"15. +Pass 15: FCMPPredicateFusion",                "layer_15_pass15_fcmp_fusion",        make_cumulative(15), false, false});
    layers.push_back({"16. +Pass 16: NZCVPredicateFusion",                "layer_16_pass16_nzcv_fusion",        make_cumulative(16), false, false});
    layers.push_back({"17. +Pass 17: NZCVDeadFlagElim",                   "layer_17_pass17_nzcv_dfe",           make_cumulative(17), false, false});
    layers.push_back({"18. +Pass 18: LinkRegisterElision",                "layer_18_pass18_lr_elision",         make_cumulative(18), false, false});
    layers.push_back({"19. +Pass 19: TailCallDevirtualization",           "layer_19_pass19_tailcall_devirt",    make_cumulative(19), false, false});
    layers.push_back({"20. +Pass 20: AAPCS64ABIContract",                 "layer_20_pass20_aapcs64_abi",        make_cumulative(20), false, false});
    // Also include Safe Default (Pass 21 without high-risk passes) vs Full Pass 21 so users can compare both!
    layers.push_back({"21a. +Pass 21: CpuStatePromotion (Safe Default)",  "layer_21a_pass21_safe_default", [](PassPipelineConfig& c) {
        c.disable_high_risk_passes();
    }, false, false});
    layers.push_back({"21b. +Pass 21: CpuStatePromotion (With High-Risk)","layer_21b_pass21_cpu_promotion",     make_cumulative(21), false, false});
    layers.push_back({"22. +Pass 22: CrossChunkLeafInline",               "layer_22_pass22_leaf_inline",        make_cumulative(22), false, false});
    layers.push_back({"23. +Pass 23: AArch64StaticNCEABI (--all-passes)", "layer_23_pass23_all_passes",         make_cumulative(23), false, false});

    return layers;
}

std::vector<LayerSpec> get_standard_layers(const std::string& orig_base_ir, bool compact_grouped) {
    if (!compact_grouped) {
        return get_all_passes_layers(orig_base_ir);
    }
    std::vector<LayerSpec> layers;
    if (!orig_base_ir.empty()) {
        layers.push_back({"00. Initial Baseline (orig baseline.ll)", "layer_00_initial_baseline", [](PassPipelineConfig&) {}, false, true});
    }
    std::vector<LayerSpec> rest = {
        {"00. Raw Reference (Unlowered sample.ll)", "layer_00_raw_reference", [](PassPipelineConfig&) {}, true, false},
        {"01. Minimal Structural (No Opt Passes)", "layer_01_minimal_no_opt", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.force_fnprof = true;
        }, false},
        {"02. +Pass 2: ProfileGuidedEntryHookElim", "layer_02_pass02_profile_hook", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.force_fnprof = false;
        }, false},
        {"03. +Pass 4/5: FastFP & SIMD Inline", "layer_03_pass04_05_fastfp_simd", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
        }, false},
        {"04. +Pass 7: X8664HardwareIntrinsic", "layer_04_pass07_x86_intrinsics", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
            c.enable_x86_64_intrinsics = true;
        }, false},
        {"05. +Pass 10/11: TLS + GuestStackAlign", "layer_05_pass10_11_tls_stackalign", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
            c.enable_x86_64_intrinsics = true;
            c.enable_tls_spinwait = true;
            c.enable_stack_alignment = true;
        }, false},
        {"06. +Pass 12: AArch64IdiomDeconstruct", "layer_06_pass12_idiom_deconstruct", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
            c.enable_x86_64_intrinsics = true;
            c.enable_tls_spinwait = true;
            c.enable_stack_alignment = true;
            c.enable_idiom_deconstruct = true;
        }, false},
        {"07. +Pass 14: ShadowDispatchTable", "layer_07_pass14_shadow_dispatch", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
            c.enable_x86_64_intrinsics = true;
            c.enable_tls_spinwait = true;
            c.enable_stack_alignment = true;
            c.enable_idiom_deconstruct = true;
            c.enable_shadow_dispatch = true;
        }, false},
        {"08. +Pass 15/16/17: FCMP + NZCV Fusion & DFE", "layer_08_pass15_16_17_fcmp_nzcv", [](PassPipelineConfig& c) {
            c.disable_all_opt_passes();
            c.enable_fast_fp = true;
            c.enable_simd_inline = true;
            c.enable_x86_64_intrinsics = true;
            c.enable_tls_spinwait = true;
            c.enable_stack_alignment = true;
            c.enable_idiom_deconstruct = true;
            c.enable_shadow_dispatch = true;
            c.enable_fcmp_fusion = true;
            c.enable_nzcv_fusion = true;
            c.enable_nzcv_dead_flag_elim = true;
        }, false},
        {"09. +Pass 21: CpuStatePromotion (Safe Default)", "layer_09_pass21_cpu_state_promotion", [](PassPipelineConfig& c) {
            c.disable_high_risk_passes();
        }, false},
        {"10. +All Passes (--all-passes)", "layer_10_all_passes", [](PassPipelineConfig& c) {
            c.enable_all_passes();
        }, false, false},
    };
    layers.insert(layers.end(), rest.begin(), rest.end());
    return layers;
}

PassPipelineConfig make_base_pipeline_config(
    const nso::NsoFile* nso,
    const std::unordered_set<uint64_t>* unrelocated_rodata_addrs,
    std::unordered_map<uint64_t, LeafFunctionSlice>* out_global_leaves) {
    PassPipelineConfig cfg;
    cfg.image_base = GUEST_BASE;
    if (nso) {
        cfg.image_data = nso->image.data();
        cfg.image_size = nso->image.size();
        cfg.rodata_lo = GUEST_BASE + nso->rodata.first;
        cfg.rodata_hi = cfg.rodata_lo + nso->rodata.second;
        cfg.text_lo = GUEST_BASE + nso->text.first;
        cfg.text_hi = cfg.text_lo + nso->text.second;
        cfg.unrelocated_rodata_addrs = unrelocated_rodata_addrs;

        if (out_global_leaves) {
            if (out_global_leaves->empty() && nso->text.second >= 4) {
                // Fast scan of pure leaf functions (<= 8 words ending in RET) in NSO .text for Pass 22
                const uint32_t* words = reinterpret_cast<const uint32_t*>(nso->image.data() + nso->text.first);
                size_t nwords = nso->text.second / 4;
                size_t i = 0;
                while (i < nwords) {
                    // Find RET (`0xD65F03C0`) within 8 words
                    size_t ret_idx = i;
                    bool pure = true;
                    while (ret_idx < nwords && (ret_idx - i) < 8) {
                        uint32_t w = words[ret_idx];
                        if (w == 0xD65F03C0u) break;
                        uint32_t op0 = (w >> 25) & 0xFu;
                        if ((op0 & 0b1110u) == 0b1010u || (w & 0xFFFFFC1Fu) == 0xD61F0000u) {
                            pure = false;
                        }
                        ++ret_idx;
                    }
                    if (ret_idx < nwords && words[ret_idx] == 0xD65F03C0u) {
                        size_t len = ret_idx - i + 1;
                        if (pure && len >= 2 && len <= 8) {
                            uint64_t entry_pc = cfg.text_lo + i * 4;
                            LeafFunctionSlice slice;
                            slice.entry_pc = entry_pc;
                            slice.end_pc = entry_pc + len * 4;
                            slice.words.assign(words + i, words + i + len);
                            out_global_leaves->emplace(entry_pc, std::move(slice));
                        }
                        i = ret_idx + 1;
                    } else {
                        while (i < nwords && words[i] != 0xD65F03C0u) ++i;
                        if (i < nwords) ++i;
                    }
                }
            }
            cfg.global_leaves = out_global_leaves;
        }
    }
    return cfg;
}

} // namespace ultrs::benchmark
