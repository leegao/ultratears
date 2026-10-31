// Common infrastructure, memory virtualization, IR parsing, lowering, and metrics
// for UltraTears lifter benchmarks and differential fuzzing.
// (src/horizon2llvm/benchmark/benchmark_common.hpp)

#pragma once

#include <cstdint>
#include <functional>
#include <map>
#include <memory>
#include <regex>
#include <set>
#include <string>
#include <unordered_set>
#include <vector>

#include "aarch64_lifter.hpp"
#include "llvm_backend.hpp"
#include "llvm_ir.hpp"
#include "nso_loader.hpp"
#include "passes.hpp"
#include "src/horizon2llvm/benchmark/harness_interface.hpp"

namespace ultrs::benchmark {

constexpr uint64_t GUEST_BASE     = 0x800000000ULL;
constexpr size_t   GUEST_MAP_SIZE = 0x005000000ULL; // 80 MiB: [0x800000000..0x805000000)
constexpr uint64_t HEAP_BASE      = 0x804000000ULL;
constexpr size_t   HEAP_SIZE      = 0x000200000ULL; // 2 MiB heap arena
constexpr uint64_t STACK_BASE     = 0x804200000ULL;
constexpr size_t   STACK_SIZE     = 0x000040000ULL; // 256 KiB stack
constexpr uint64_t OBJ_BASE       = 0x804240000ULL;
constexpr size_t   OBJ_SIZE       = 0x000100000ULL; // 512 KiB test object arena
constexpr uint64_t GLOBALS_BASE   = 0x804400000ULL;
constexpr size_t   GLOBALS_SIZE   = 0x000040000ULL; // 256 KiB synthetic global targets

void install_segv_handler();

struct ParsedRawFunction {
    std::string name;
    uint64_t entry_pc = 0;
    uint64_t end_pc = 0;
    std::vector<uint32_t> words;
    std::set<uint64_t> label_pcs;
};

struct ParsedRawChunk {
    std::string chunk_hdr;
    std::string mod_id;
    std::string target_triple;
    std::vector<ParsedRawFunction> fns;
};

ParsedRawChunk parse_raw_ll(const std::string& raw_text, const std::string& mod_id = "chunk");

std::string lower_parsed_chunk(const ParsedRawChunk& chunk, const passes::PassPipelineConfig& cfg);

struct IRAndAsmMetrics {
    size_t ir_lines = 0;
    size_t ir_cpu_loads = 0;
    size_t ir_cpu_stores = 0;
    size_t ir_rt_calls = 0;
    size_t asm_insns = 0;
    size_t asm_rsp_spills = 0;
    size_t asm_cpu_mem_ops = 0;
};

IRAndAsmMetrics analyze_ir_and_asm(const std::string& ir_text, const std::string& asm_text);

void init_guest_address_space(const nso::NsoFile& nso, ISampleHarness* harness = nullptr);

void write_if_changed(const std::string& path, const std::string& text);

bool compile_stubs(const std::string& stubs_c_path, const std::string& stubs_o_path,
                   const std::string& simd_o_path);

bool compile_and_link_so(const std::string& ir_text, const std::string& mod_id,
                         const std::string& opt_pipe, const std::string& obj_path,
                         const std::string& stub_o, const std::string& simd_o,
                         const std::string& so_path);

struct LayerSpec {
    std::string label;
    std::string tag;
    std::function<void(passes::PassPipelineConfig&)> configure;
    bool is_raw_ref = false;
    bool is_orig_base = false;
};

std::vector<LayerSpec> get_standard_layers(const std::string& orig_base_ir);

passes::PassPipelineConfig make_base_pipeline_config(
    const nso::NsoFile& nso,
    const std::unordered_set<uint64_t>* unrelocated_rodata_addrs);

} // namespace ultrs::benchmark
