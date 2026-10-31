// UltraTears LLVM Pass Implementation: Pass 11 - GuestStackAndAlignmentPass (src/horizon2llvm/lowering/pass_guest_stack_alignment.cpp)
//
// Uses LLVM 21 C++ APIs (`llvm::IRBuilder<llvm::NoFolder>`, `llvm::Module`, `llvm::Function`,
// `llvm::BasicBlock`, `llvm::Instruction`) via `PassLLVMBuilder`.

#include "passes.hpp"
#include "passes_llvm_utils.hpp"

namespace ultrs::passes {

namespace {

class GuestStackAndAlignmentPassImpl {
public:
    explicit GuestStackAndAlignmentPassImpl(bool enabled = true) : enabled_(enabled) {}

    static const char* static_name() { return "guest-stack-alignment-pass"; }
    const char* pass_name() const { return "guest-stack-alignment-pass"; }

    bool run(Module& M) {
        if (!enabled_) return false;
        bool changed = false;
        for (auto& fn : M.functions) {
            if (!fn->hle_symbol.empty() || fn->blocks.empty()) continue;

            auto const_align = [](uint64_t v) -> int {
                if (v == 0) return 16;
                uint64_t lsb = v & (~v + 1ULL);
                return static_cast<int>(std::min<uint64_t>(16, lsb));
            };

            // 1. Pre-scan the prologue block(s) to discover AAPCS64 frame pointer (X29) and any
            //    callee-saved registers initialized from SP (`arch_reg == 31`) that remain invariant
            //    until the function epilogue (`ret void` blocks).
            std::unordered_map<int, int> func_inv_stack_align;
            func_inv_stack_align[31] = 16;

            auto scan_prologue_block = [&](const BasicBlock& b,
                                           std::unordered_map<int, int>& cur_gpr_align,
                                           std::unordered_set<int>& cur_gpr_stack) {
                std::unordered_map<std::string, int> loc_align;
                std::unordered_set<std::string> loc_stack;
                auto get_a = [&](const Value& v) -> int {
                    if (v.is_const) return const_align(v.const_u64);
                    auto it = loc_align.find(v.repr);
                    return (it != loc_align.end()) ? it->second : 1;
                };
                for (const auto& inst : b.insts) {
                    if (inst.dead) continue;
                    if (inst.tag == OpTag::DirectCall || inst.tag == OpTag::IndirectCall ||
                        inst.tag == OpTag::HorizonSvc) {
                        break;
                    }
                    if (inst.tag == OpTag::CpuRegRead && inst.arch_reg >= 0 && inst.arch_reg <= 31) {
                        auto it = cur_gpr_align.find(inst.arch_reg);
                        if (it != cur_gpr_align.end()) loc_align[inst.dst_reg] = it->second;
                        if (cur_gpr_stack.count(inst.arch_reg)) loc_stack.insert(inst.dst_reg);
                    } else if (inst.tag == OpTag::CpuRegWrite && inst.arch_reg >= 0 && inst.arch_reg <= 31) {
                        int a = get_a(inst.op0);
                        if (inst.arch_reg == 31) a = std::max(a, 16);
                        cur_gpr_align[inst.arch_reg] = a;
                        if (loc_stack.count(inst.op0.repr) || inst.arch_reg == 31) {
                            cur_gpr_stack.insert(inst.arch_reg);
                        } else {
                            cur_gpr_stack.erase(inst.arch_reg);
                        }
                    } else if (inst.tag == OpTag::RawIR && !inst.dst_reg.empty()) {
                        if (inst.text.find(" = add ") != std::string::npos ||
                            inst.text.find(" = sub ") != std::string::npos ||
                            inst.text.find(" = or ") != std::string::npos) {
                            loc_align[inst.dst_reg] = std::gcd(get_a(inst.op0), get_a(inst.op1));
                            if (loc_stack.count(inst.op0.repr) || loc_stack.count(inst.op1.repr)) {
                                loc_stack.insert(inst.dst_reg);
                            }
                        }
                    }
                }
            };

            {
                std::unordered_map<int, int> pro_align;
                std::unordered_set<int> pro_stack;
                pro_align[31] = 16;
                pro_stack.insert(31);
                scan_prologue_block(*fn->blocks[0], pro_align, pro_stack);
                if (fn->blocks.size() >= 2 && fn->blocks[0]->name == "entry") {
                    scan_prologue_block(*fn->blocks[1], pro_align, pro_stack);
                }

                // Check if X29 (frame pointer) was derived from SP in the prologue and is never
                // overwritten in non-return blocks after the prologue.
                if (pro_stack.count(29)) {
                    bool clobbered_mid_fn = false;
                    size_t pro_limit = (fn->blocks.size() >= 2 && fn->blocks[0]->name == "entry") ? 2 : 1;
                    for (size_t bi = pro_limit; bi < fn->blocks.size(); ++bi) {
                        const BasicBlock& bb = *fn->blocks[bi];
                        bool ends_in_ret = false;
                        for (auto it = bb.insts.rbegin(); it != bb.insts.rend(); ++it) {
                            if (it->dead || it->tag == OpTag::Comment || it->tag == OpTag::GuestInsnMarker) continue;
                            if (it->tag == OpTag::Return || it->text == "ret void") ends_in_ret = true;
                            break;
                        }
                        if (ends_in_ret) continue;
                        for (const auto& inst : bb.insts) {
                            if (!inst.dead && inst.tag == OpTag::CpuRegWrite && inst.arch_reg == 29) {
                                clobbered_mid_fn = true;
                                break;
                            }
                        }
                        if (clobbered_mid_fn) break;
                    }
                    if (!clobbered_mid_fn) {
                        func_inv_stack_align[29] = pro_align[29];
                    }
                }
            }

            // 2. Propagate alignment & stack provenance across each basic block
            for (auto& bb : fn->blocks) {
                std::unordered_map<std::string, int> ssa_align;
                std::unordered_map<int, int> gpr_align;
                std::unordered_set<std::string> ssa_stack;
                std::unordered_set<int> gpr_stack;

                auto seed_invariants = [&]() {
                    for (const auto& [r, al] : func_inv_stack_align) {
                        gpr_align[r] = al;
                        gpr_stack.insert(r);
                    }
                };
                seed_invariants();

                auto get_align = [&](const Value& v) -> int {
                    if (v.is_const) return const_align(v.const_u64);
                    auto it = ssa_align.find(v.repr);
                    return (it != ssa_align.end()) ? it->second : 1;
                };

                for (auto& inst : bb->insts) {
                    if (inst.dead) continue;

                    if (inst.tag == OpTag::DirectCall || inst.tag == OpTag::IndirectCall ||
                        inst.tag == OpTag::HorizonSvc) {
                        gpr_align.clear();
                        gpr_stack.clear();
                        seed_invariants();
                        continue;
                    }

                    if (inst.tag == OpTag::CpuRegRead && inst.arch_reg >= 0 && inst.arch_reg <= 31) {
                        auto it = gpr_align.find(inst.arch_reg);
                        if (it != gpr_align.end()) ssa_align[inst.dst_reg] = it->second;
                        if (gpr_stack.count(inst.arch_reg)) ssa_stack.insert(inst.dst_reg);
                        continue;
                    }

                    if (inst.tag == OpTag::CpuRegWrite && inst.arch_reg >= 0 && inst.arch_reg <= 31) {
                        int a = get_align(inst.op0);
                        if (inst.arch_reg == 31) a = std::max(a, 16);
                        gpr_align[inst.arch_reg] = a;
                        if (ssa_stack.count(inst.op0.repr) || inst.arch_reg == 31) {
                            gpr_stack.insert(inst.arch_reg);
                        } else {
                            gpr_stack.erase(inst.arch_reg);
                        }
                        continue;
                    }

                    if (inst.tag == OpTag::RawIR && !inst.dst_reg.empty()) {
                        if (inst.text.find(" = add ") != std::string::npos ||
                            inst.text.find(" = sub ") != std::string::npos ||
                            inst.text.find(" = or ") != std::string::npos) {
                            int a0 = get_align(inst.op0);
                            int a1 = get_align(inst.op1);
                            ssa_align[inst.dst_reg] = std::gcd(a0, a1);
                            if (ssa_stack.count(inst.op0.repr) || ssa_stack.count(inst.op1.repr)) {
                                ssa_stack.insert(inst.dst_reg);
                            }
                        }
                        continue;
                    }

                    if (inst.tag == OpTag::GuestMemLoad || inst.tag == OpTag::GuestMemStore) {
                        TypeKind mt = (inst.tag == OpTag::GuestMemLoad) ? inst.dst_type : inst.op1.type;
                        int natural_align = (mt == TypeKind::Int8)   ? 1
                                          : (mt == TypeKind::Int16)  ? 2
                                          : (mt == TypeKind::Int32)  ? 4
                                          : (mt == TypeKind::Int64)  ? 8
                                          : (mt == TypeKind::Int128) ? 16 : 1;
                        int proven = std::min(natural_align, get_align(inst.op0));
                        bool on_stack = ssa_stack.count(inst.op0.repr) > 0;
                        inst.is_stack_access = on_stack;

                        if (proven > 1) {
                            inst.align_bytes = proven;
                            auto pos = inst.text.find(", align 1");
                            if (pos != std::string::npos) {
                                inst.text.replace(pos, 9, ", align " + std::to_string(proven));
                                changed = true;
                            }
                        }
                        if (on_stack) {
                            auto scope_pos = inst.text.find("!alias.scope !4");
                            if (scope_pos != std::string::npos) {
                                inst.text.replace(scope_pos, 15, "!alias.scope !6");
                                changed = true;
                            }
                        }
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

bool GuestStackAndAlignmentPass::run(Module& M) {
    GuestStackAndAlignmentPassImpl impl(enabled_);
    return impl.run(M);
}

} // namespace ultrs::passes
