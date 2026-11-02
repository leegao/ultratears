// Common infrastructure, memory virtualization, IR parsing, lowering,
// and pipeline layer specifications for UltraTears lifter benchmarks & fuzzing.
// (src/horizon2llvm/benchmark/benchmark_common.hpp)

#pragma once

#include <cstdint>
#include <functional>
#include <map>
#include <memory>
#include <regex>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "aarch64/aarch64_lifter.hpp"
#include "llvm_backend.hpp"
#include "llvm_ir.hpp"
#include "nso_loader.hpp"
#include "passes.hpp"

#include "harness_interface.hpp"
#include "latency_estimator.hpp"
#include "generic_harness.hpp"

namespace ultrs::benchmark {

constexpr uint64_t GUEST_BASE     = 0x800000000ULL;
constexpr size_t   GUEST_MAP_SIZE = 0x005000000ULL; // 80 MiB: [0x800000000..0x805000000)
constexpr uint64_t HEAP_BASE      = 0x804000000ULL;
constexpr size_t   HEAP_SIZE      = 0x000200000ULL; // 2 MiB heap arena
constexpr uint64_t STACK_BASE     = 0x804200000ULL;
constexpr size_t   STACK_SIZE     = 0x000040000ULL; // 256 KiB stack
constexpr uint64_t OBJ_BASE       = 0x804240000ULL;
constexpr size_t   OBJ_SIZE       = 0x000180000ULL; // 1.5 MiB test object arena
constexpr uint64_t GLOBALS_BASE   = 0x804400000ULL;
constexpr size_t   GLOBALS_SIZE   = 0x000100000ULL; // 1 MiB synthetic global targets

void install_segv_handler();
bool run_guest_fn_safely(GuestFn fn, Cpu* c);
void reset_demand_paged_arenas();

void set_timed_exec_active(bool active);
uint64_t get_timed_fault_count();
void reset_timed_fault_count();

struct ParsedRawFunction {
    std::string name;
    uint64_t entry_pc = 0;
    uint64_t end_pc = 0;
    std::vector<uint32_t> words;
    std::set<uint64_t> label_pcs;
    std::map<uint64_t, llvm_ir::JumpTableInfo> jump_tables;
};

struct ParsedRawChunk {
    std::string chunk_hdr;
    std::string mod_id;
    std::string target_triple;
    llvm_ir::ChunkMetadata chunk_meta;
    std::vector<ParsedRawFunction> fns;
    std::vector<std::string> external_decls;
    size_t total_arm64_insns = 0;
};

ParsedRawChunk parse_raw_ll(const std::string& raw_text, const std::string& mod_id = "chunk");

size_t count_arm64_asm_insns(const std::string& asm_path, const ParsedRawChunk& fallback_chunk);

std::string lower_parsed_chunk(const ParsedRawChunk& chunk, const passes::PassPipelineConfig& cfg);

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

// Returns all 23 individual pass layers in pipeline order (+ Initial Baseline & Raw Reference)
std::vector<LayerSpec> get_all_passes_layers(const std::string& orig_base_ir);

// Returns the standard benchmark layers (defaults to all 23 individual passes)
std::vector<LayerSpec> get_standard_layers(const std::string& orig_base_ir, bool compact_grouped = false);

passes::PassPipelineConfig make_base_pipeline_config(
    const nso::NsoFile* nso = nullptr,
    const std::unordered_set<uint64_t>* unrelocated_rodata_addrs = nullptr,
    std::unordered_map<uint64_t, passes::LeafFunctionSlice>* out_global_leaves = nullptr);

inline passes::PassPipelineConfig make_base_pipeline_config(
    const nso::NsoFile& nso,
    const std::unordered_set<uint64_t>* unrelocated_rodata_addrs = nullptr,
    std::unordered_map<uint64_t, passes::LeafFunctionSlice>* out_global_leaves = nullptr) {
    return make_base_pipeline_config(&nso, unrelocated_rodata_addrs, out_global_leaves);
}

} // namespace ultrs::benchmark
