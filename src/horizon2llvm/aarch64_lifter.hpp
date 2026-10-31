// UltraTears AArch64 -> LLVM IR Instruction Lifter (src/horizon2llvm_llvm/aarch64_lifter.hpp)
//
// Translates ARMv8.0-A (Nintendo Switch Cortex-A57) instructions directly into SSA LLVM IR
// over the `ultrs::llvm_ir::IRBuilder` and `Function` CFG:
//   - Integer data processing (immediate & register), bitfields, funnel shifts, 128-bit multiplies.
//   - Branches, conditional branches, jump tables, direct & indirect calls.
//   - Horizon OS system instructions (`SVC`, `BRK`, `UDF`, `MRS`, `MSR`, `DC ZVA`, barriers) emitted as
//     semantic `OpTag::Horizon*` IR nodes for `HorizonLoweringPass` to lower.
//   - Loads, stores, pairs (`LDP`/`STP`), and atomics/exclusives (`LDXR`/`STXR`/`LDAR`/`STLR` using native
//     LLVM `load atomic`, `store atomic`, and `cmpxchg`).
//   - Scalar FP, AdvSIMD vector/scalar, Crypto (`AES*`, `SHA1*`, `SHA256*`), and `CRC32`/`CRC32C` lowered to
//     native LLVM vector types (`<16 x i8>`, `<8 x i16>`, `<4 x i32>`, `<2 x i64>`, `<4 x float>`, `<2 x double>`),
//     `shufflevector`, saturating/min/max intrinsics, and `rt_*` helpers for FPCR-dependent paths.
#pragma once

#include "llvm_ir.hpp"
#include "nso_loader.hpp"

namespace ultrs::lifter {

using namespace ultrs::llvm_ir;
using ultrs::nso::bits;
using ultrs::nso::decode_bit_masks;
using ultrs::nso::ones;
using ultrs::nso::ror_val;
using ultrs::nso::sext;

// Lane-op enum values matching src/runtime/simd.h
enum LaneOp : int {
    LOP_SQADD = 0, LOP_UQADD, LOP_SQSUB, LOP_UQSUB, LOP_SUQADD, LOP_USQADD,
    LOP_SHL, LOP_RSHL, LOP_QSHL, LOP_QRSHL,
    LOP_SHLI, LOP_QSHLI, LOP_QSHLUI, LOP_SHRI, LOP_RSHRI, LOP_SRAI, LOP_RSRAI, LOP_SRI, LOP_SLI,
    LOP_SQDMULH, LOP_SQRDMULH, LOP_PMUL,
    LOP_SQABS, LOP_SQNEG, LOP_ABS, LOP_NEG, LOP_CLS, LOP_CLZ, LOP_CNT, LOP_RBIT, LOP_URECPE, LOP_URSQRTE,
    LOP_HADD, LOP_RHADD, LOP_HSUB, LOP_ABD, LOP_ABA,
    LOP_ADDL, LOP_SUBL, LOP_ABDL, LOP_ABAL, LOP_MLAL, LOP_MLSL, LOP_MULL, LOP_ADDW, LOP_SUBW,
    LOP_SQDMULL, LOP_SQDMLAL, LOP_SQDMLSL, LOP_PMULL, LOP_SHLL,
    LOP_XTN, LOP_SQXTN, LOP_UQXTN, LOP_SQXTUN, LOP_SHRN, LOP_RSHRN, LOP_QSHRN, LOP_QRSHRN, LOP_QSHRUN,
    LOP_QRSHRUN, LOP_ADDHN, LOP_RADDHN, LOP_SUBHN, LOP_RSUBHN,
    LOP_SHLLI,
    LOP_U = 256
};

enum FpOp : int {
    FOP_ADD = 0, FOP_SUB, FOP_MUL, FOP_MULX, FOP_NMUL, FOP_DIV, FOP_ABD, FOP_SQRT, FOP_MADD, FOP_RECPS, FOP_RSQRTS,
    FOP_MAX, FOP_MIN, FOP_MAXNM, FOP_MINNM
};

inline std::string block_label(uint64_t pc) {
    char buf[32];
    std::snprintf(buf, sizeof(buf), "L_%" PRIx64, pc);
    return buf;
}

inline std::string fn_symbol(uint64_t pc) {
    char buf[32];
    std::snprintf(buf, sizeof(buf), "f_%" PRIx64, pc);
    return buf;
}

inline uint64_t vfp_expand_imm(uint32_t imm8, unsigned N) {
    unsigned E = (N == 32) ? 8 : 11;
    unsigned F = N - E - 1;
    uint64_t sign = (imm8 >> 7) & 1;
    uint64_t b6 = (imm8 >> 6) & 1;
    uint64_t exp = ((b6 ^ 1) << (E - 1)) | ((b6 ? ((1ULL << (E - 3)) - 1ULL) : 0ULL) << 2) | ((imm8 >> 4) & 3);
    uint64_t frac = static_cast<uint64_t>(imm8 & 15) << (F - 4);
    return (sign << (N - 1)) | (exp << F) | frac;
}

inline uint64_t simd_expand_imm(unsigned op, unsigned cmode, uint32_t imm8) {
    unsigned c = cmode >> 1;
    uint64_t u8 = imm8;
    if (c == 0) return (u8 << 32) | u8;
    if (c == 1) return ((u8 << 8) << 32) | (u8 << 8);
    if (c == 2) return ((u8 << 16) << 32) | (u8 << 16);
    if (c == 3) return ((u8 << 24) << 32) | (u8 << 24);
    if (c == 4) {
        uint64_t r = 0;
        for (unsigned s = 0; s < 64; s += 16) r |= (u8 << s);
        return r;
    }
    if (c == 5) {
        uint64_t r = 0;
        for (unsigned s = 0; s < 64; s += 16) r |= ((u8 << 8) << s);
        return r;
    }
    if (c == 6) {
        uint64_t v = !(cmode & 1) ? ((u8 << 8) | 0xFFULL) : ((u8 << 16) | 0xFFFFULL);
        return (v << 32) | v;
    }
    if (!(cmode & 1) && !op) {
        uint64_t r = 0;
        for (unsigned s = 0; s < 64; s += 8) r |= (u8 << s);
        return r;
    }
    if (!(cmode & 1) && op) {
        uint64_t r = 0;
        for (unsigned i = 0; i < 8; ++i) {
            if ((u8 >> i) & 1) r |= (0xFFULL << (8 * i));
        }
        return r;
    }
    if ((cmode & 1) && !op) {
        uint64_t v = vfp_expand_imm(imm8, 32);
        return (v << 32) | v;
    }
    return vfp_expand_imm(imm8, 64);
}

class AArch64ToLLVMLifter {
public:
    AArch64ToLLVMLifter(uint64_t text_lo, uint64_t text_hi);
    bool in_text(uint64_t a) const;
    void lift_function(Module& M, Function* fn, const std::vector<uint32_t>& text_words, uint64_t text_lo);

private:
    uint64_t text_lo_;
    uint64_t text_hi_;

    void emit_fn_enter(IRBuilder& B, uint64_t entry_pc);
    void emit_uncond_br(IRBuilder& B, const std::string& target_label, uint64_t target_pc = 0);
    void emit_udf(IRBuilder& B, uint64_t pc);
    void emit_jump_target(Module& M, IRBuilder& B, Function* fn, uint64_t target_pc);
    Value get_gpr(IRBuilder& B, unsigned sf, unsigned r, bool sp_ok = false);
    void set_gpr(IRBuilder& B, unsigned sf, unsigned r, const Value& v, bool sp_ok = false);
    Value emit_shift(IRBuilder& B, unsigned sf, const Value& val, unsigned typ, unsigned amt);
    Value emit_extend(IRBuilder& B, unsigned rm, unsigned option, unsigned shift);
    Value emit_pack_flags(IRBuilder& B, const Value& n_i1, const Value& z_i1, const Value& c_i1, const Value& v_i1,
                          int cmp_kind = 0, unsigned cmp_sf = 1, Value lhs = {}, Value rhs = {}, std::string res_reg = "");
    Value emit_adds_subs(IRBuilder& B, unsigned sf, bool is_sub, const Value& a, const Value& b);
    Value emit_logic_flags(IRBuilder& B, unsigned sf, const Value& r);
    Value emit_cond_i1(IRBuilder& B, unsigned cond);
    bool lift_instruction(Module& M, IRBuilder& B, uint32_t w, uint64_t pc, Function* fn);
    bool lift_dp_imm(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_branch_sys(Module& M, IRBuilder& B, uint32_t w, uint64_t pc, Function* fn);
    void emit_conditional_jump(Module& M, IRBuilder& B, Function* fn, uint64_t pc,
                               const Value& cond_i1, uint64_t target_pc, int cond_code);
    bool lift_system(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_ldst(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_ldst_excl(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_ldst_pair(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_ldst_reg(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_dp_reg(IRBuilder& B, uint32_t w, uint64_t pc);
    Value read_vq(IRBuilder& B, TypeKind vt, unsigned Q, unsigned n);
    void write_vq(IRBuilder& B, unsigned Q, unsigned d, const Value& v);
    Value emit_shufflevector(IRBuilder& B, TypeKind vt, const Value& a, const Value& b, const std::vector<int>& mask);
    void emit_sl_gen(IRBuilder& B, int op, int sz, int ne, int d, int szd, int offd, int keep,
                     int n, int szn, int offn, int m = -1, int szm = 0, int offm = 0, int bidx = -1, uint64_t bimm = 0);
    void emit_same_lop(IRBuilder& B, int op, int sz, int ne, int d, int n, int m = -1, uint64_t bimm = 0, int bidx = -1);
    bool lift_ldst_simd(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_ldst_struct(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_fp_simd(IRBuilder& B, uint32_t w, uint64_t pc);
    bool lift_crypto_aes(IRBuilder& B, uint32_t w);
    bool lift_crypto_sha3(IRBuilder& B, uint32_t w);
    bool lift_crypto_sha2(IRBuilder& B, uint32_t w);
    static bool decode_imm5(unsigned imm5, unsigned& sz, unsigned& idx);
    bool lift_scalar_copy(IRBuilder& B, uint32_t w);
    bool lift_copy(IRBuilder& B, uint32_t w);
    bool lift_permute(IRBuilder& B, uint32_t w);
    bool lift_ext(IRBuilder& B, uint32_t w);
    bool lift_tbl(IRBuilder& B, uint32_t w);
    static std::pair<std::vector<int>, std::vector<int>> pair_indices(unsigned Q, unsigned sz);
    Value emit_vec_intrinsic2(IRBuilder& B, const char* base_name, TypeKind vt, const Value& a, const Value& b);
    bool lift_three_same(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_three_same_scalar(IRBuilder& B, unsigned U, unsigned sz, unsigned opc, unsigned d, unsigned n, unsigned m);
    bool lift_three_same_fp(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_three_diff(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_misc2(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_misc2_scalar(IRBuilder& B, unsigned U, unsigned sz, unsigned opc, unsigned d, unsigned n);
    bool lift_misc2_fp(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_across(IRBuilder& B, uint32_t w);
    bool lift_scalar_pairwise(IRBuilder& B, uint32_t w);
    bool lift_modimm(IRBuilder& B, uint32_t w);
    bool lift_shift_imm(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_indexed(IRBuilder& B, uint32_t w, bool scalar);
    bool lift_fp_dp3(IRBuilder& B, uint32_t w);
    bool lift_fp_dp2(IRBuilder& B, uint32_t w);
    bool lift_fp_dp1(IRBuilder& B, uint32_t w);
    bool lift_fp_cmp(IRBuilder& B, uint32_t w);
    bool lift_fp_ccmp(IRBuilder& B, uint32_t w);
    bool lift_fp_csel(IRBuilder& B, uint32_t w);
    bool lift_fp_imm(IRBuilder& B, uint32_t w);
    bool lift_fp_fixed(IRBuilder& B, uint32_t w);
    bool lift_fp_int(IRBuilder& B, uint32_t w);
};

} // namespace ultrs::lifter
