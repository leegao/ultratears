// Extracted Real AArch64 Function Snippets from `data/exefs/main` (src/horizon2llvm/tests/main_snippets.hpp)
//
// Contains real ARMv8-A functions extracted directly from TOTK's `data/exefs/main` NSO binary
// along with helpers to lift, lower, verify, compile to x86-64, and dynamically load them.
#pragma once

#include <cstdint>
#include <set>
#include <string>
#include <vector>

#include "../aarch64_lifter.hpp"
#include "../llvm_backend.hpp"
#include "../llvm_ir.hpp"
#include "../passes.hpp"

namespace ultrs::tests {

struct ExtractedSnippet {
    const char* name;
    const char* description;
    uint64_t entry_pc;
    std::vector<uint32_t> words;
    std::set<uint64_t> label_pcs;
    bool uses_guest_mem_x0 = false;
    bool is_float_input = false;
};

// 1. f_80000f3a0 (data/exefs/main): Integer arithmetic + UMADDL + CMP + CSEL
//   0x80000f3a0: 91006008  add    x8, x0, #24
//   0x80000f3a4: 92407c29  and    x9, x1, #0xffffffff
//   0x80000f3a8: 5280410a  mov    w10, #520
//   0x80000f3ac: 9baa2129  umaddl x9, w9, w10, x8
//   0x80000f3b0: 71001c3f  cmp    w1, #7
//   0x80000f3b4: 9a883120  csel   x0, x9, x8, lo
//   0x80000f3b8: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80000f3a0 = {
    "f_80000f3a0",
    "Bounded array element offset calculation (UMADDL + CMP + CSEL)",
    0x80000f3a0ULL,
    {0x91006008u, 0x92407c29u, 0x5280410au, 0x9baa2129u, 0x71001c3fu, 0x9a883120u, 0xd65f03c0u},
    {0x80000f3a0ULL},
    false,
    false
};

// 2. f_80000f3bc (data/exefs/main): Pure 3-insn leaf address getter (ADRP + ADD + RET)
//   0x80000f3bc: b0015e80  adrp x0, #45944832
//   0x80000f3c0: 912da800  add  x0, x0, #2922
//   0x80000f3c4: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80000f3bc = {
    "f_80000f3bc",
    "Pure 3-instruction leaf address getter (ADRP + ADD + RET)",
    0x80000f3bcULL,
    {0xb0015e80u, 0x912da800u, 0xd65f03c0u},
    {0x80000f3bcULL},
    false,
    false
};

// 3. f_80002aafc (data/exefs/main): Scalar FP struct store (STR S0, STR S1)
//   0x80002aafc: bd01b800  str s0, [x0, #440]
//   0x80002ab00: bd01d801  str s1, [x0, #472]
//   0x80002ab04: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80002aafc = {
    "f_80002aafc",
    "Leaf scalar FP 32-bit struct store (STR S0, STR S1)",
    0x80002aafcULL,
    {0xbd01b800u, 0xbd01d801u, 0xd65f03c0u},
    {0x80002aafcULL},
    true,
    true
};

// 4. f_800043f80 (data/exefs/main): UMADDL + CMP + CSEL + STP + STRB
//   0x800043f80: 52800188  mov    w8, #12
//   0x800043f84: 9100e009  add    x9, x0, #56
//   0x800043f88: 9ba82428  umaddl x8, w1, w8, x9
//   0x800043f8c: 7100403f  cmp    w1, #16
//   0x800043f90: 9a893108  csel   x8, x8, x9, lo
//   0x800043f94: 52800029  mov    w9, #1
//   0x800043f98: 29000d02  stp    w2, w3, [x8]
//   0x800043f9c: 39002109  strb   w9, [x8, #8]
//   0x800043fa0: 39002504  strb   w4, [x8, #9]
//   0x800043fa4: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800043f80 = {
    "f_800043f80",
    "Indexed struct slot writer (UMADDL + CMP + CSEL + STP + STRB)",
    0x800043f80ULL,
    {0x52800188u, 0x9100e009u, 0x9ba82428u, 0x7100403fu, 0x9a893108u,
     0x52800029u, 0x29000d02u, 0x39002109u, 0x39002504u, 0xd65f03c0u},
    {0x800043f80ULL},
    true,
    false
};

// 5. f_800417630 (data/exefs/main): Scalar FP LDP + FSUB + FADD
//   0x800417630: 2d420402  ldp  s2, s1, [x0, #16]
//   0x800417634: 1e203820  fsub s0, s1, s0
//   0x800417638: 1e222800  fadd s0, s0, s2
//   0x80041763c: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800417630 = {
    "f_800417630",
    "Scalar FP paired load + FSUB + FADD",
    0x800417630ULL,
    {0x2d420402u, 0x1e203820u, 0x1e222800u, 0xd65f03c0u},
    {0x800417630ULL},
    true,
    true
};

// 6. f_800175e68 (data/exefs/main): Dual signed 32-bit CMP + CSEL clamp
//   0x800175e68: 6b02003f  cmp  w1, w2
//   0x800175e6c: 1a82b028  csel w8, w1, w2, lt
//   0x800175e70: 6b00003f  cmp  w1, w0
//   0x800175e74: 1a88b000  csel w0, w0, w8, lt
//   0x800175e78: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800175e68 = {
    "f_800175e68",
    "Signed 32-bit dual CMP + CSEL LT selector",
    0x800175e68ULL,
    {0x6b02003fu, 0x1a82b028u, 0x6b00003fu, 0x1a88b000u, 0xd65f03c0u},
    {0x800175e68ULL},
    false,
    false
};

// 7. f_8006882b0 (data/exefs/main): 24-byte stride bounded pointer calculation
//   0x8006882b0: 91002008  add    x8, x0, #8
//   0x8006882b4: 52800309  mov    w9, #24
//   0x8006882b8: 9ba92029  umaddl x9, w1, w9, x8
//   0x8006882bc: 7100083f  cmp    w1, #2
//   0x8006882c0: 9a883120  csel   x0, x9, x8, lo
//   0x8006882c4: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_8006882b0 = {
    "f_8006882b0",
    "24-byte stride bounded pointer calculation",
    0x8006882b0ULL,
    {0x91002008u, 0x52800309u, 0x9ba92029u, 0x7100083fu, 0x9a883120u, 0xd65f03c0u},
    {0x8006882b0ULL},
    false,
    false
};

// 8. f_80090dd54 (data/exefs/main): Multi-range index selector (SUB + CMP + CSEL + CMP + CSEL)
//   0x80090dd54: 51000829  sub  w9, w1, #2
//   0x80090dd58: 91032008  add  x8, x0, #200
//   0x80090dd5c: 71000d3f  cmp  w9, #3
//   0x80090dd60: 91056009  add  x9, x0, #344
//   0x80090dd64: 9a9f3129  csel x9, x9, xzr, lo
//   0x80090dd68: 7100083f  cmp  w1, #2
//   0x80090dd6c: 9a893100  csel x0, x8, x9, lo
//   0x80090dd70: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80090dd54 = {
    "f_80090dd54",
    "Multi-range index selector (SUB + CMP + CSEL + CMP + CSEL)",
    0x80090dd54ULL,
    {0x51000829u, 0x91032008u, 0x71000d3fu, 0x91056009u, 0x9a9f3129u, 0x7100083fu, 0x9a893100u, 0xd65f03c0u},
    {0x80090dd54ULL},
    false,
    false
};

// 9. f_800af9774 (data/exefs/main): 19-insn multi-block Euclidean GCD + LCM loop!
//   0x800af9774: 2a1f03e8  mov  w8, wzr
//   0x800af9778: 34000200  cbz  w0, 0x800af97b8
//   0x800af977c: 340001e1  cbz  w1, 0x800af97b8
//   0x800af9780: 6b01001f  cmp  w0, w1
//   0x800af9784: 2a0003e8  mov  w8, w0
//   0x800af9788: 54000140  b.eq 0x800af97b0
//   0x800af978c: 2a0103e9  mov  w9, w1
//   0x800af9790: 2a0003e8  mov  w8, w0
//   0x800af9794: 6b09011f  cmp  w8, w9
//   0x800af9798: 1a9f812a  csel w10, w9, wzr, hi
//   0x800af979c: 1a8883eb  csel w11, wzr, w8, hi
//   0x800af97a0: 4b0a0108  sub  w8, w8, w10
//   0x800af97a4: 4b0b0129  sub  w9, w9, w11
//   0x800af97a8: 6b09011f  cmp  w8, w9
//   0x800af97ac: 54ffff41  b.ne 0x800af9794
//   0x800af97b0: 1ac80808  udiv w8, w0, w8
//   0x800af97b4: 1b017d08  mul  w8, w8, w1
//   0x800af97b8: 2a0803e0  mov  w0, w8
//   0x800af97bc: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800af9774 = {
    "f_800af9774",
    "Multi-block Euclidean GCD + LCM loop (CBZ, B.EQ, loop B.NE, CSEL, SUB, UDIV, MUL)",
    0x800af9774ULL,
    {0x2a1f03e8u, 0x34000200u, 0x340001e1u, 0x6b01001fu, 0x2a0003e8u,
     0x54000140u, 0x2a0103e9u, 0x2a0003e8u, 0x6b09011fu, 0x1a9f812au,
     0x1a8883ebu, 0x4b0a0108u, 0x4b0b0129u, 0x6b09011fu, 0x54ffff41u,
     0x1ac80808u, 0x1b017d08u, 0x2a0803e0u, 0xd65f03c0u},
    {0x800af9774ULL, 0x800af9794ULL, 0x800af97b0ULL, 0x800af97b8ULL},
    false,
    false
};

// 10. f_800c2e200 (data/exefs/main): Scalar FP safe divide (FDIV + FCMP #0.0 + MOVI + FCSEL HI)
//   0x800c2e200: 1e211800  fdiv  s0, s0, s1
//   0x800c2e204: 1e202028  fcmp  s1, #0.0
//   0x800c2e208: 2f00e401  movi  d1, #0000000000000000
//   0x800c2e20c: 1e218c00  fcsel s0, s0, s1, hi
//   0x800c2e210: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800c2e200 = {
    "f_800c2e200",
    "Scalar FP safe division with FCMP #0.0 + MOVI + FCSEL HI",
    0x800c2e200ULL,
    {0x1e211800u, 0x1e202028u, 0x2f00e401u, 0x1e218c00u, 0xd65f03c0u},
    {0x800c2e200ULL},
    false,
    true
};

// 11. f_800c4cc84 (data/exefs/main): Signed 4KB alignment rounding (CMP + CNEG MI + ADD + AND + CNEG LT)
//   0x800c4cc84: 7100001f  cmp  w0, #0
//   0x800c4cc88: 5a805408  cneg w8, w0, mi
//   0x800c4cc8c: 113ffd08  add  w8, w8, #4095
//   0x800c4cc90: 12144908  and  w8, w8, #0x7ffff000
//   0x800c4cc94: 5a88a500  cneg w0, w8, lt
//   0x800c4cc98: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800c4cc84 = {
    "f_800c4cc84",
    "Signed 4KB page-alignment rounding (CMP + CNEG MI + ADD + AND + CNEG LT)",
    0x800c4cc84ULL,
    {0x7100001fu, 0x5a805408u, 0x113ffd08u, 0x12144908u, 0x5a88a500u, 0xd65f03c0u},
    {0x800c4cc84ULL},
    false,
    false
};

// 12. f_800cc83ac (data/exefs/main): Bitmask + CMP + CSET NE + TST + CSEL + MADD + ADD
//   0x800cc83ac: 12001c28  and  w8, w1, #0xff
//   0x800cc83b0: 5284ec09  mov  w9, #10080
//   0x800cc83b4: 52801b0a  mov  w10, #216
//   0x800cc83b8: 7100111f  cmp  w8, #4
//   0x800cc83bc: 1a9f07e8  cset w8, ne
//   0x800cc83c0: 6a02011f  tst  w8, w2
//   0x800cc83c4: 5283e908  mov  w8, #8008
//   0x800cc83c8: 9a881128  csel x8, x9, x8, ne
//   0x800cc83cc: 52800909  mov  w9, #72
//   0x800cc83d0: 1b092809  madd w9, w0, w9, w10
//   0x800cc83d4: 8b080128  add  x8, x9, x8
//   0x800cc83d8: 52882209  mov  w9, #16656
//   0x800cc83dc: 8b090100  add  x0, x8, x9
//   0x800cc83e0: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_800cc83ac = {
    "f_800cc83ac",
    "Table offset computation with CSET NE + TST + CSEL + MADD",
    0x800cc83acULL,
    {0x12001c28u, 0x5284ec09u, 0x52801b0au, 0x7100111fu, 0x1a9f07e8u,
     0x6a02011fu, 0x5283e908u, 0x9a881128u, 0x52800909u, 0x1b092809u,
     0x8b080128u, 0x52882209u, 0x8b090100u, 0xd65f03c0u},
    {0x800cc83acULL},
    false,
    false
};

// 13. f_80111e430 (data/exefs/main): 64-bit MOVZ+MOVK bitmask test (CMP + MOVK + CSET LO + LSR + AND)
//   0x80111e430: 12001c08  and  w8, w0, #0xff
//   0x80111e434: d284c009  mov  x9, #9728
//   0x80111e438: 7100851f  cmp  w8, #33
//   0x80111e43c: f2c00029  movk x9, #1, lsl #32
//   0x80111e440: 1a9f27e8  cset w8, lo
//   0x80111e444: 9ac02529  lsr  x9, x9, x0
//   0x80111e448: 0a090100  and  w0, w8, w9
//   0x80111e44c: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80111e430 = {
    "f_80111e430",
    "64-bit constant bitmask membership test (MOVZ + MOVK + CMP + CSET + LSR + AND)",
    0x80111e430ULL,
    {0x12001c08u, 0xd284c009u, 0x7100851fu, 0xf2c00029u, 0x1a9f27e8u, 0x9ac02529u, 0x0a090100u, 0xd65f03c0u},
    {0x80111e430ULL},
    false,
    false
};

// 14. f_80116adb8 (data/exefs/main): Float RGBA -> packed 32-bit color (FMOV + FMUL + FCVTZS + UBFIZ + BFI + BFXIL)
//   0x80116adb8: 52a86fe8  mov    w8, #1132396544 (255.0f)
//   0x80116adbc: 1e270104  fmov   s4, w8
//   0x80116adc0: 1e240800  fmul   s0, s0, s4
//   0x80116adc4: 1e240863  fmul   s3, s3, s4
//   0x80116adc8: 1e380009  fcvtzs w9, s0
//   0x80116adcc: 1e240820  fmul   s0, s1, s4
//   0x80116add0: 1e380068  fcvtzs w8, s3
//   0x80116add4: 1e38000a  fcvtzs w10, s0
//   0x80116add8: 1e240840  fmul   s0, s2, s4
//   0x80116addc: 1e38000b  fcvtzs w11, s0
//   0x80116ade0: 53101d20  ubfiz  w0, w9, #16, #8
//   0x80116ade4: 33081d00  bfi    w0, w8, #24, #8
//   0x80116ade8: 33181d40  bfi    w0, w10, #8, #8
//   0x80116adec: 33001d60  bfxil  w0, w11, #0, #8
//   0x80116adf0: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_80116adb8 = {
    "f_80116adb8",
    "Float RGBA [0..1] to packed 32-bit color (FMOV + FMUL + FCVTZS + UBFIZ + BFI + BFXIL)",
    0x80116adb8ULL,
    {0x52a86fe8u, 0x1e270104u, 0x1e240800u, 0x1e240863u, 0x1e380009u,
     0x1e240820u, 0x1e380068u, 0x1e38000au, 0x1e240840u, 0x1e38000bu,
     0x53101d20u, 0x33081d00u, 0x33181d40u, 0x33001d60u, 0xd65f03c0u},
    {0x80116adb8ULL},
    false,
    true
};

// 15. f_80194a480 (data/exefs/main): FP vector/scalar constant init (FMOV S3, #1.0 + MOVI D0..D2, #0)
inline const ExtractedSnippet SNIPPET_f_80194a480 = {
    "f_80194a480",
    "FP/SIMD identity vector initialization (FMOV S3, #1.0 + MOVI D0..D2, #0)",
    0x80194a480ULL,
    {0x1e2e1003u, 0x2f00e400u, 0x2f00e401u, 0x2f00e402u, 0xd65f03c0u},
    {0x80194a480ULL},
    false,
    true
};

// 16. f_801b6ccf8 (data/exefs/main): Extended register ADD + TST + CSEL EQ
//   0x801b6ccf8: 910fa008  add  x8, x0, #1000
//   0x801b6ccfc: f27d703f  tst  x1, #0xfffffff8
//   0x801b6cd00: 8b214d09  add  x9, x8, w1, uxtw #3
//   0x801b6cd04: 9a880120  csel x0, x9, x8, eq
//   0x801b6cd08: d65f03c0  ret
inline const ExtractedSnippet SNIPPET_f_801b6ccf8 = {
    "f_801b6ccf8",
    "Extended-register ADD (uxtw #3) + TST #0xfffffff8 + CSEL EQ",
    0x801b6ccf8ULL,
    {0x910fa008u, 0xf27d703fu, 0x8b214d09u, 0x9a880120u, 0xd65f03c0u},
    {0x801b6ccf8ULL},
    false,
    false
};

// 17. f_801bc9f6c (data/exefs/main): 208-byte stride bounded array element lookup
inline const ExtractedSnippet SNIPPET_f_801bc9f6c = {
    "f_801bc9f6c",
    "208-byte stride bounded array element lookup (ADD + AND + MOV + UMADDL + CMP + CSEL)",
    0x801bc9f6cULL,
    {0x91058008u, 0x92407c29u, 0x52801a0au, 0x9baa2129u, 0x7100143fu, 0x9a883120u, 0xd65f03c0u},
    {0x801bc9f6cULL},
    false,
    false
};

inline std::vector<ExtractedSnippet> all_extracted_main_snippets() {
    return {
        SNIPPET_f_80000f3a0,
        SNIPPET_f_80000f3bc,
        SNIPPET_f_80002aafc,
        SNIPPET_f_800043f80,
        SNIPPET_f_800417630,
        SNIPPET_f_800175e68,
        SNIPPET_f_8006882b0,
        SNIPPET_f_80090dd54,
        SNIPPET_f_800af9774,
        SNIPPET_f_800c2e200,
        SNIPPET_f_800c4cc84,
        SNIPPET_f_800cc83ac,
        SNIPPET_f_80111e430,
        SNIPPET_f_80116adb8,
        SNIPPET_f_80194a480,
        SNIPPET_f_801b6ccf8,
        SNIPPET_f_801bc9f6c,
    };
}

} // namespace ultrs::tests
