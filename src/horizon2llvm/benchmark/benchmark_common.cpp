// Common infrastructure implementations for UltraTears lifter benchmarks
// (src/horizon2llvm/benchmark/benchmark_common.cpp)

#include "src/horizon2llvm/benchmark/benchmark_common.hpp"

#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <sstream>
#include <sys/mman.h>
#include <signal.h>
#include <ucontext.h>
#include <dlfcn.h>
#include <unistd.h>

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;

namespace ultrs::benchmark {

namespace {

void segv_handler(int sig, siginfo_t* si, void* ctx) {
    (void)sig;
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

void install_segv_handler() {
    struct sigaction sa{};
    sa.sa_sigaction = segv_handler;
    sa.sa_flags = SA_SIGINFO;
    sigaction(SIGSEGV, &sa, nullptr);
}

ParsedRawChunk parse_raw_ll(const std::string& raw_text, const std::string& mod_id) {
    ParsedRawChunk out;
    out.mod_id = mod_id;
    out.target_triple = "x86_64-pc-linux-gnu";

    if (raw_text.rfind("; UltraTears chunk ", 0) == 0) {
        size_t nl = raw_text.find('\n');
        if (nl != std::string::npos) {
            out.chunk_hdr = raw_text.substr(0, nl + 1);
        }
    }

    std::regex fn_def_re("define dso_local void @(f_([0-9a-fA-F]+))\\([^\\n]*\\)[^\\{]*\\{");
    std::regex pc_word_re("; @pc 0x([0-9a-fA-F]+) word 0x([0-9a-fA-F]+)");
    std::regex lbl_re("\\n(L_([0-9a-fA-F]+)):");

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
        out.fns.push_back(std::move(pf));
    }
    return out;
}

std::string lower_parsed_chunk(const ParsedRawChunk& chunk, const PassPipelineConfig& cfg) {
    Module M(chunk.mod_id, chunk.target_triple);
    uint64_t lo = cfg.text_lo ? cfg.text_lo : 0x800000000ULL;
    uint64_t hi = cfg.text_hi ? cfg.text_hi : 0x804000000ULL;
    AArch64ToLLVMLifter arm_lifter(lo, hi);
    for (const auto& pf : chunk.fns) {
        Function* fn = M.create_function(pf.name, pf.entry_pc, pf.end_pc);
        fn->label_pcs = pf.label_pcs;
        arm_lifter.lift_function(M, fn, pf.words, pf.entry_pc);
    }
    ModulePassManager MPM;
    build_ultratears_pipeline(MPM, cfg);
    MPM.run(M);
    return chunk.chunk_hdr + M.serialize();
}

IRAndAsmMetrics analyze_ir_and_asm(const std::string& ir_text, const std::string& asm_text) {
    IRAndAsmMetrics m;
    {
        std::istringstream ss(ir_text);
        std::string line;
        while (std::getline(ss, line)) {
            ++m.ir_lines;
            if (line.find("!alias.scope !3") != std::string::npos) {
                if (line.find("= load ") != std::string::npos) ++m.ir_cpu_loads;
                else if (line.find("store ") != std::string::npos) ++m.ir_cpu_stores;
            }
            if (line.find("call ") != std::string::npos && line.find("@rt_") != std::string::npos) {
                ++m.ir_rt_calls;
            }
        }
    }
    {
        std::istringstream ss(asm_text);
        std::string line;
        while (std::getline(ss, line)) {
            // Match objdump instruction lines: "    1234:\t..."
            size_t colon = line.find(':');
            if (colon != std::string::npos && colon < 12) {
                bool hex_prefix = true;
                bool has_hex = false;
                for (size_t i = 0; i < colon; ++i) {
                    char c = line[i];
                    if (c == ' ') continue;
                    if ((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f')) {
                        has_hex = true;
                    } else {
                        hex_prefix = false;
                        break;
                    }
                }
                if (hex_prefix && has_hex && colon + 1 < line.size() && line[colon + 1] == '\t') {
                    size_t second_tab = line.find('\t', colon + 2);
                    if (second_tab != std::string::npos) {
                        ++m.asm_insns;
                        std::string dis = line.substr(second_tab + 1);
                        if (dis.find("(%rsp)") != std::string::npos) {
                            ++m.asm_rsp_spills;
                        }
                        if (dis.find("(%rbx)") != std::string::npos || dis.find("(%rdi)") != std::string::npos) {
                            ++m.asm_cpu_mem_ops;
                        }
                    }
                }
            }
        }
    }
    return m;
}

void init_guest_address_space(const nso::NsoFile& nso, ISampleHarness* harness) {
    void* mapped = mmap(reinterpret_cast<void*>(GUEST_BASE), GUEST_MAP_SIZE,
                        PROT_READ | PROT_WRITE,
                        MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
    if (mapped == MAP_FAILED) {
        perror("mmap GUEST_BASE failed");
        std::exit(1);
    }
    std::memcpy(reinterpret_cast<void*>(GUEST_BASE), nso.image.data(),
                std::min<size_t>(nso.image.size(), HEAP_BASE - GUEST_BASE));

    // Apply R_AARCH64_RELATIVE relocations
    for (const auto& r : nso.relocs) {
        if (r.type == nso::R_AARCH64_RELATIVE && r.offset + 8 <= nso.image.size()) {
            uint64_t val = GUEST_BASE + static_cast<uint64_t>(r.addend);
            std::memcpy(reinterpret_cast<void*>(GUEST_BASE + r.offset), &val, 8);
        }
    }

    if (harness) {
        harness->init_guest_globals(GUEST_BASE, nso.data.first, nso.image.size());
    }
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

bool compile_stubs(const std::string& stubs_c_path, const std::string& stubs_o_path,
                   const std::string& simd_o_path) {
    std::string cmd1 = "gcc -O2 -fPIC -I. -Isrc/runtime -c " + stubs_c_path + " -o " + stubs_o_path;
    std::string cmd2 = "gcc -O2 -fPIC -fno-strict-aliasing -I. -Isrc/runtime -c src/runtime/simd_rt.c -o " + simd_o_path;
    if (std::system(cmd1.c_str()) != 0 || std::system(cmd2.c_str()) != 0) {
        return false;
    }
    return true;
}

bool compile_and_link_so(const std::string& ir_text, const std::string& mod_id,
                         const std::string& opt_pipe, const std::string& obj_path,
                         const std::string& stub_o, const std::string& simd_o,
                         const std::string& so_path) {
    llvm_backend::LibLLVM::instance().process_ir(
        ir_text, mod_id, /*verify=*/true, opt_pipe, nullptr, "", obj_path, "x86_64-pc-linux-gnu");
    std::string cmd = "gcc -shared -Wl,-Bsymbolic -O2 " + obj_path + " " + stub_o + " " + simd_o + " -lm -o " + so_path;
    return std::system(cmd.c_str()) == 0;
}

std::vector<LayerSpec> get_standard_layers(const std::string& orig_base_ir) {
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
    const nso::NsoFile& nso,
    const std::unordered_set<uint64_t>* unrelocated_rodata_addrs) {
    PassPipelineConfig cfg;
    cfg.image_data = nso.image.data();
    cfg.image_size = nso.image.size();
    cfg.image_base = GUEST_BASE;
    cfg.rodata_lo = GUEST_BASE + nso.rodata.first;
    cfg.rodata_hi = cfg.rodata_lo + nso.rodata.second;
    cfg.text_lo = GUEST_BASE + nso.text.first;
    cfg.text_hi = cfg.text_lo + nso.text.second;
    cfg.unrelocated_rodata_addrs = unrelocated_rodata_addrs;
    return cfg;
}

} // namespace ultrs::benchmark
