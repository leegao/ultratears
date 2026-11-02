// Static CFG longest-path solver & generic arbitrary-.ll sample harness
// (src/horizon2llvm/benchmark/generic_harness.hpp)

#pragma once

#include <memory>
#include <string>

#include "harness_interface.hpp"
#include "nso_loader.hpp"

namespace ultrs::benchmark {

void init_guest_address_space(const nso::NsoFile* nso = nullptr, ISampleHarness* harness = nullptr);
inline void init_guest_address_space(const nso::NsoFile& nso, ISampleHarness* harness = nullptr) {
    init_guest_address_space(&nso, harness);
}

std::unique_ptr<ISampleHarness> create_sample_harness(
    const std::string& sample_dir,
    const std::string& sample_ll_override = "");

} // namespace ultrs::benchmark
