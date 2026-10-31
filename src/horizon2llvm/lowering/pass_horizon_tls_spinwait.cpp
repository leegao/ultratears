// UltraTears LLVM Pass Implementation: Pass 10 - HorizonTLSAndSpinWaitPass (src/horizon2llvm/lowering/pass_horizon_tls_spinwait.cpp)
//
// Uses LLVM 21 C++ APIs (`llvm::IRBuilder<llvm::NoFolder>`, `llvm::Module`, `llvm::Function`,
// `llvm::BasicBlock`, `llvm::Instruction`) via `PassLLVMBuilder`.

#include "passes.hpp"
#include "passes_llvm_utils.hpp"

namespace ultrs::passes {

namespace {

class HorizonTLSAndSpinWaitPassImpl {
public:
    explicit HorizonTLSAndSpinWaitPassImpl(bool enabled = true) : enabled_(enabled) {}

    static const char* static_name() { return "horizon-tls-spinwait-pass"; }
    const char* pass_name() const { return "horizon-tls-spinwait-pass"; }

    bool run(Module& M) {
        if (!enabled_) return false;
        bool changed = false;
        constexpr uint32_t TPIDRRO_KEY = (3u << 14) | (3u << 11) | (13u << 7) | (0u << 3) | 3u;
        bool is_arm64 = M.is_aarch64_target();

        for (auto& fn : M.functions) {
            if (!fn->hle_symbol.empty() || fn->blocks.empty()) continue;

            // 1. Count TPIDRRO_EL0 loads across the function
            std::vector<std::pair<BasicBlock*, size_t>> tpidrro_sites;
            for (auto& bb : fn->blocks) {
                for (size_t i = 0; i < bb->insts.size(); ++i) {
                    const Instruction& inst = bb->insts[i];
                    if (inst.dead) continue;
                    if (inst.sys_key == TPIDRRO_KEY && !inst.dst_reg.empty()) {
                        tpidrro_sites.push_back({bb.get(), i});
                    }
                }
            }
            if (!tpidrro_sites.empty()) {
                BasicBlock* entry_bb = fn->blocks[0].get();
                std::string cached_p = fn->next_reg("tpro_entry_p");
                std::string cached_v = fn->next_reg("tpro_cached");

                Instruction hoard;
                hoard.tag = OpTag::RawIR;
                hoard.dst_reg = cached_v;
                hoard.dst_type = TypeKind::Int64;
                hoard.text = "; [HorizonTLSAndSpinWaitPass] invariant TPIDRRO_EL0 load\n  " +
                             cached_p + " = getelementptr inbounds i8, ptr %c, i64 288\n  " +
                             cached_v + " = load i64, ptr " + cached_p + ", align 8, !alias.scope !3, !noalias !4";
                entry_bb->insts.insert(entry_bb->insts.begin(), std::move(hoard));

                // Re-scan after insertion in entry_bb
                for (auto& bb : fn->blocks) {
                    for (size_t i = 0; i < bb->insts.size(); ++i) {
                        Instruction& inst = bb->insts[i];
                        if (inst.dead) continue;
                        if (inst.sys_key == TPIDRRO_KEY && !inst.dst_reg.empty()) {
                            inst.text = inst.dst_reg + " = add i64 0, " + cached_v;
                            changed = true;
                        }
                    }
                }
            }

            // 2. Detect YIELD (0xD503203F) / WFE (0xD503205F) or tight single-block invariant-address spin-wait loops.
            //    Crucially, exclude pointer-chasing traversal loops (`while (p) p = p->next`, such as red-black tree
            //    min/max searches in `f_80077c180`) where the base address register is overwritten in the loop body!
            for (auto& bb : fn->blocks) {
                bool emitted_in_bb = false;
                for (size_t i = 0; i < bb->insts.size(); ++i) {
                    const Instruction& inst = bb->insts[i];
                    if (inst.dead) continue;
                    if (inst.tag == OpTag::GuestInsnMarker &&
                        (inst.insn_word == 0xD503203Fu || inst.insn_word == 0xD503205Fu)) {
                        Instruction pause_inst;
                        pause_inst.tag = OpTag::RawIR;
                        if (is_arm64) {
                            pause_inst.text = "; [HorizonTLSAndSpinWaitPass] spin-wait hint\n  call void @llvm.aarch64.hint(i32 1)";
                            M.uses_aarch64_intrinsics = true;
                        } else {
                            pause_inst.text = "; [HorizonTLSAndSpinWaitPass] spin-wait pause\n  call void @llvm.x86.sse2.pause()";
                            M.uses_x86_pause = true;
                        }
                        bb->insts.insert(bb->insts.begin() + static_cast<ptrdiff_t>(i + 1), std::move(pause_inst));
                        emitted_in_bb = true;
                        changed = true;
                        break;
                    }
                }
                if (!emitted_in_bb && bb->start_pc != 0) {
                    size_t n_markers = 0;
                    bool has_atomic_load = false;
                    bool has_mem_load = false;
                    bool branches_to_self = false;
                    std::unordered_set<int> read_gprs;
                    std::unordered_set<int> written_gprs;
                    for (const auto& inst : bb->insts) {
                        if (inst.dead) continue;
                        if (inst.tag == OpTag::GuestInsnMarker) ++n_markers;
                        if (inst.text.find("load atomic") != std::string::npos) {
                            has_atomic_load = true;
                            has_mem_load = true;
                        } else if (inst.tag == OpTag::GuestMemLoad) {
                            has_mem_load = true;
                        }
                        if (inst.tag == OpTag::CpuRegRead && inst.arch_reg >= 0 && inst.arch_reg < 31) {
                            read_gprs.insert(inst.arch_reg);
                        } else if (inst.tag == OpTag::CpuRegWrite && inst.arch_reg >= 0 && inst.arch_reg < 31) {
                            written_gprs.insert(inst.arch_reg);
                        }
                        if (inst.tag == OpTag::CondBranch && inst.target_label == bb->name) {
                            branches_to_self = true;
                        }
                    }
                    // A true spin-wait loop either uses an atomic acquire load (`LDAR`/`LDAXR`) or polls
                    // an invariant base address register that is NOT overwritten in the loop body.
                    bool has_invariant_addr_reg = false;
                    for (int r : read_gprs) {
                        if (!written_gprs.count(r)) {
                            has_invariant_addr_reg = true;
                            break;
                        }
                    }
                    if (has_mem_load && branches_to_self && n_markers > 0 && n_markers <= 4 &&
                        (has_atomic_load || (has_invariant_addr_reg && written_gprs.size() <= 1)) &&
                        !bb->insts.empty()) {
                        Instruction pause_inst;
                        pause_inst.tag = OpTag::RawIR;
                        if (is_arm64) {
                            pause_inst.text = "; [HorizonTLSAndSpinWaitPass] polling loop hint\n  call void @llvm.aarch64.hint(i32 1)";
                            M.uses_aarch64_intrinsics = true;
                        } else {
                            pause_inst.text = "; [HorizonTLSAndSpinWaitPass] polling loop pause\n  call void @llvm.x86.sse2.pause()";
                            M.uses_x86_pause = true;
                        }
                        bb->insts.insert(bb->insts.end() - 1, std::move(pause_inst));
                        changed = true;
                    }
                }
            }
        }
        return changed;
    }

private:
    bool enabled_;
};


} // namespace

bool HorizonTLSAndSpinWaitPass::run(Module& M) {
    HorizonTLSAndSpinWaitPassImpl impl(enabled_);
    return impl.run(M);
}

} // namespace ultrs::passes
