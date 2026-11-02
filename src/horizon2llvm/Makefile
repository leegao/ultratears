# Self-contained incremental Makefile for src/horizon2llvm
# Works both inside the monorepo (src/horizon2llvm) and when split into a standalone repository.

THIS_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
ifneq ($(wildcard $(THIS_DIR)/../../data/exefs/main),)
REPO_ROOT := $(abspath $(THIS_DIR)/../..)
LIFTER_DIR := $(THIS_DIR)
BUILD_DIR := $(REPO_ROOT)/build/tools
else
REPO_ROOT := $(THIS_DIR)
LIFTER_DIR := $(THIS_DIR)
BUILD_DIR := $(THIS_DIR)/build
endif
OBJ_DIR := $(BUILD_DIR)/lifter_obj

ifneq ($(wildcard $(LIFTER_DIR)/runtime/simd_rt.c),)
RUNTIME_DIR := $(LIFTER_DIR)/runtime
else
RUNTIME_DIR := $(REPO_ROOT)/src/runtime
endif

ifneq ($(wildcard $(LIFTER_DIR)/third-party/llvm/llvm/include),)
LLVM_DIR := $(LIFTER_DIR)/third-party/llvm/llvm
else
LLVM_DIR := $(LIFTER_DIR)/third-party/llvm
endif
LLVM_INC := -I$(LLVM_DIR)/include -I$(LLVM_DIR)/include/llvm -I$(LIFTER_DIR)/third-party/llvm/include -I$(LIFTER_DIR)/third-party/llvm/include/llvm
LLVM_LIB_DIR := $(LLVM_DIR)/prebuilts/x86-64
LLVM_LIB := $(LLVM_LIB_DIR)/libLLVM.so

ifneq ($(shell which llvm-config 2>/dev/null),)
LLVM_LIB := $(shell llvm-config --libs core engine scalaropts)
endif

CXX ?= g++
CC ?= gcc
CXXFLAGS := -std=c++17 -O3 -Wall -Wextra -Wno-unused-parameter -DH2L_HAVE_LLVM_HEADERS=1 -I$(LIFTER_DIR) -I$(RUNTIME_DIR) -I$(REPO_ROOT) $(LLVM_INC) $(EXTRA_CXXFLAGS) -pthread
CFLAGS := -O2 -fPIC -fno-strict-aliasing -I$(LIFTER_DIR) -I$(RUNTIME_DIR) -I$(REPO_ROOT)
LLVM_LIB_FLAG := -Wl,-rpath,$(LLVM_LIB_DIR)

ifneq ($(shell which llvm-config 2>/dev/null),)
LLVM_LIB_FLAG := $(shell llvm-config --ldflags)
endif

LDFLAGS := $(LLVM_LIB_FLAG) -pthread -ldl

CORE_SRCS := \
	llvm_backend.cpp \
	aarch64/aarch64_lifter.cpp \
	nso_loader.cpp \
	passes.cpp \
	lowering/pass_ultratears_patch.cpp \
	lowering/pass_profile_entry_hook_elim.cpp \
	lowering/pass_nso_rodata_constprop_devirt.cpp \
	lowering/pass_fpcr_fast_fp_lowering.cpp \
	lowering/pass_simd_pairwise_conversion_inline.cpp \
	lowering/pass_aarch64_native_intrinsic.cpp \
	lowering/pass_x86_64_hardware_intrinsic.cpp \
	lowering/pass_exclusive_monitor_lse_fastpath.cpp \
	lowering/pass_horizon_lowering.cpp \
	lowering/pass_horizon_tls_spinwait.cpp \
	lowering/pass_guest_stack_alignment.cpp \
	lowering/pass_aarch64_idiom_deconstruct.cpp \
	lowering/pass_jump_table_lowering.cpp \
	lowering/pass_shadow_dispatch_table.cpp \
	lowering/pass_fcmp_predicate_fusion.cpp \
	lowering/pass_nzcv_predicate_fusion.cpp \
	lowering/pass_nzcv_dead_flag_elim.cpp \
	lowering/pass_link_register_elision.cpp \
	lowering/pass_tail_call_devirt.cpp \
	lowering/pass_aapcs64_abi_contract.cpp \
	lowering/pass_cpu_state_promotion.cpp \
	lowering/pass_cross_chunk_leaf_inline.cpp \
	lowering/pass_aarch64_static_nce_abi.cpp

CORE_OBJS := $(patsubst %.cpp,$(OBJ_DIR)/%.o,$(CORE_SRCS))
MAIN_OBJS := $(OBJ_DIR)/main.o $(OBJ_DIR)/llvm_pass_plugin.o
SIMD_RT_OBJ := $(OBJ_DIR)/simd_rt.o

BENCH_COMMON_OBJS := $(OBJ_DIR)/benchmark_common.o \
                     $(OBJ_DIR)/harness_interface.o \
                     $(OBJ_DIR)/generic_harness.o \
                     $(OBJ_DIR)/latency_estimator.o
BENCH_RUNNER_OBJ  := $(OBJ_DIR)/bench_main.o
FUZZ_RUNNER_OBJ   := $(OBJ_DIR)/fuzz_main.o

LIFTER_BIN       := $(BUILD_DIR)/horizon2llvm
UNIT_BIN         := $(BUILD_DIR)/lifter_unit_tests
FUZZ_BIN         := $(BUILD_DIR)/lifter_fuzz_diff_tests
BENCH_BIN        := $(BUILD_DIR)/lifter_benchmark
FUZZ_BENCH_BIN   := $(BUILD_DIR)/lifter_fuzz
BENCH_TOOL       := $(BUILD_DIR)/lifter_benchmark_layers
LEGACY_BENCH_BIN := $(BUILD_DIR)/lifter_main_432_bench

.PHONY: all tests clean horizon2llvm bench bench-all fuzz fuzz-all

all: $(LIFTER_BIN) $(UNIT_BIN) $(FUZZ_BIN) $(BENCH_BIN) $(FUZZ_BENCH_BIN) $(BENCH_TOOL)

tests: $(UNIT_BIN) $(FUZZ_BIN)
	cd $(REPO_ROOT) && $(UNIT_BIN)
	cd $(REPO_ROOT) && $(FUZZ_BIN)

$(OBJ_DIR)/%.o: $(LIFTER_DIR)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -c $< -o $@

$(SIMD_RT_OBJ): $(RUNTIME_DIR)/simd_rt.c
	@mkdir -p $(dir $@)
	$(CC) -MMD -MP $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/test_main_snippets.o: $(LIFTER_DIR)/tests/test_main_snippets.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/tests -c $< -o $@

$(OBJ_DIR)/test_fuzz_differential.o: $(LIFTER_DIR)/tests/test_fuzz_differential.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/tests -c $< -o $@

$(OBJ_DIR)/benchmark_common.o: $(LIFTER_DIR)/benchmark/benchmark_common.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(OBJ_DIR)/harness_interface.o: $(LIFTER_DIR)/benchmark/harness_interface.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(OBJ_DIR)/generic_harness.o: $(LIFTER_DIR)/benchmark/generic_harness.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(OBJ_DIR)/latency_estimator.o: $(LIFTER_DIR)/benchmark/latency_estimator.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(BENCH_RUNNER_OBJ): $(LIFTER_DIR)/benchmark/bench_main.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(FUZZ_RUNNER_OBJ): $(LIFTER_DIR)/benchmark/fuzz_main.cpp
	@mkdir -p $(dir $@)
	$(CXX) -MMD -MP $(CXXFLAGS) -I$(LIFTER_DIR)/benchmark -c $< -o $@

$(LIFTER_BIN): $(CORE_OBJS) $(MAIN_OBJS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ $(LLVM_LIB) $(LDFLAGS) -o $@
	@mkdir -p $(BUILD_DIR)/lifter
	ln -sf ../horizon2llvm $(BUILD_DIR)/lifter/horizon2llvm

$(UNIT_BIN): $(CORE_OBJS) $(SIMD_RT_OBJ) $(OBJ_DIR)/test_main_snippets.o
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ $(LLVM_LIB) $(LDFLAGS) -lm -o $@

$(FUZZ_BIN): $(CORE_OBJS) $(SIMD_RT_OBJ) $(OBJ_DIR)/test_fuzz_differential.o
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ $(LLVM_LIB) $(LDFLAGS) -lm -o $@

$(BENCH_BIN): $(CORE_OBJS) $(SIMD_RT_OBJ) $(BENCH_COMMON_OBJS) $(BENCH_RUNNER_OBJ)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ $(LLVM_LIB) $(LDFLAGS) -lm -o $@
	@mkdir -p $(REPO_ROOT)/build/src/horizon2llvm/benchmark

$(FUZZ_BENCH_BIN): $(CORE_OBJS) $(SIMD_RT_OBJ) $(BENCH_COMMON_OBJS) $(FUZZ_RUNNER_OBJ)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ $(LLVM_LIB) $(LDFLAGS) -lm -o $@

$(BENCH_TOOL): $(BENCH_BIN)
	@mkdir -p $(BUILD_DIR)
	ln -sf $(notdir $(BENCH_BIN)) $@
	ln -sf $(notdir $(BENCH_BIN)) $(LEGACY_BENCH_BIN)

bench: $(BENCH_BIN)
	cd $(REPO_ROOT) && $(BENCH_BIN) --bench-root $(LIFTER_DIR)/benchmark/samples --sample-dir main_432 --results-dir $(LIFTER_DIR)/benchmark/samples/main_432/results

bench-all: $(BENCH_BIN)
	cd $(REPO_ROOT) && python3 $(REPO_ROOT)/src/horizon2llvm/bench_perf.py --bench-root $(LIFTER_DIR)/benchmark/samples --all-samples --skip-fuzz

fuzz: $(FUZZ_BENCH_BIN)
	cd $(REPO_ROOT) && $(FUZZ_BENCH_BIN) --sample-dir src/horizon2llvm/benchmark/samples/main_432

fuzz-all: $(FUZZ_BENCH_BIN)
	cd $(REPO_ROOT) && $(FUZZ_BENCH_BIN) --all-samples

clean:
	rm -rf $(OBJ_DIR)

-include $(OBJ_DIR)/*.d $(OBJ_DIR)/lowering/*.d

ANALYZE_BIN      := $(BUILD_DIR)/analyze_nso

$(ANALYZE_BIN): $(REPO_ROOT)/src/horizon2llvm/analyze_nso.cpp $(OBJ_DIR)/nso_loader.o
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@

analyze-nso: $(ANALYZE_BIN)
	cd $(REPO_ROOT) && $(ANALYZE_BIN) data/exefs/main

horizon2llvm: $(LIFTER_BIN)
	@mkdir -p $(BUILD_DIR)/lifter
	ln -sf ../horizon2llvm $(BUILD_DIR)/lifter/horizon2llvm
