; UltraTears chunk main_1163_spatialhash: 1 functions [0x8021c31d4..0x8021c435c)
; ModuleID = 'main_1163_spatialhash_raw'
source_filename = "main_1163_spatialhash_raw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Cpu = type { [32 x i64], i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, [176 x i8], [32 x i128] }

@g_fnprof = external dso_local global i32, align 4
@g_icache_pc = external dso_local global [65536 x i64], align 8
@g_icache_fn = external dso_local global [65536 x ptr], align 8
declare dso_local void @fnprof_hit(i64, i64, i64)
declare dso_local void @rt_dispatch(ptr)
declare dso_local void @rt_svc(ptr, i32, i64)
declare dso_local void @rt_brk(ptr, i32, i64) noreturn
declare dso_local void @rt_udf(ptr, i64) noreturn
declare dso_local i64 @rt_ticks()
declare dso_local i32 @totk_drs_enabled()
declare dso_local void @rt_fpcr_write_ext(ptr, i64)
declare dso_local void @rt_sl_gen(ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64)
declare dso_local void @rt_sl_addlp(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_sl_across(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_sl_pmull64(ptr, i32, i32, i32, i32)
declare dso_local void @rt_sv_tbl(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_sl_ldm(ptr, i32, i32, i32, i32, i32, i64)
declare dso_local void @rt_sl_stm(ptr, i32, i32, i32, i32, i32, i64)
declare dso_local void @rt_sl_ldr(ptr, i32, i32, i32, i32, i64)
declare dso_local void @rt_sl_lds(ptr, i32, i32, i32, i32, i64)
declare dso_local void @rt_sl_sts(ptr, i32, i32, i32, i32, i64)
declare dso_local void @rt_sv_aes(ptr, i32, i32, i32)
declare dso_local void @rt_sv_sha1hash(ptr, i32, i32, i32, i32)
declare dso_local void @rt_sv_sha256hash(ptr, i32, i32, i32, i32)
declare dso_local void @rt_sv_sha_misc(ptr, i32, i32, i32, i32)
declare dso_local i32 @rt_crc32(i32, i64, i32, i32) nounwind readnone speculatable willreturn
declare dso_local void @rt_fp_op_s(ptr, i32, i32, i32, i32)
declare dso_local void @rt_fp_op_d(ptr, i32, i32, i32, i32)
declare dso_local void @rt_fp_fma_s(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_fp_fma_d(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_fp_dp1(ptr, i32, i32, i32, i32)
declare dso_local i64 @rt_fp_cmp_s(ptr, i32, i32, i32)
declare dso_local i64 @rt_fp_cmp_d(ptr, i32, i32, i32)
declare dso_local i64 @rt_fp_toint(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_fp_fromint(ptr, i32, i32, i64, i32, i32, i32)
declare dso_local void @rt_fp_recpe(ptr, i32, i32, i32, i32)
declare dso_local void @rt_fp_recpx(ptr, i32, i32, i32)
declare dso_local void @rt_vec_fop(ptr, i32, i32, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_fpair(ptr, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_fcmp(ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_frint(ptr, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_fcvt_int(ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_frecpe(ptr, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_fcvtn(ptr, i32, i32, i32, i32, i32)
declare dso_local void @rt_vec_fcvtl(ptr, i32, i32, i32, i32)
declare dso_local void @rt_sv_fred_s(ptr, i32, i32, i32)
declare dso_local void @rt_scalar_fpair(ptr, i32, i32, i32, i32)
declare dso_local void @rt_indexed_fp(ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.ctlz.v16i8(<16 x i8>, i1 immarg) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.ctlz.v8i16(<8 x i16>, i1 immarg) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i8> @llvm.ctpop.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i32 @llvm.bitreverse.i32(i32) nounwind readnone speculatable willreturn
declare i64 @llvm.bitreverse.i64(i64) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.bitreverse.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) nounwind readnone speculatable willreturn
declare i64 @llvm.fshr.i64(i64, i64, i64) nounwind readnone speculatable willreturn
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) argmemonly nounwind willreturn writeonly
declare float @llvm.fma.f32(float, float, float) nounwind readnone speculatable willreturn
declare double @llvm.fma.f64(double, double, double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.rint.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.rint.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.rint.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.nearbyint.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.nearbyint.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.nearbyint.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.floor.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.floor.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.trunc.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.trunc.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.trunc.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare float @llvm.round.f32(float) nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) nounwind readnone speculatable willreturn
declare <4 x float> @llvm.round.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x double> @llvm.round.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare i32 @llvm.fptosi.sat.i32.f32(float) nounwind readnone speculatable willreturn
declare i64 @llvm.fptosi.sat.i64.f32(float) nounwind readnone speculatable willreturn
declare i32 @llvm.fptosi.sat.i32.f64(double) nounwind readnone speculatable willreturn
declare i64 @llvm.fptosi.sat.i64.f64(double) nounwind readnone speculatable willreturn
declare i32 @llvm.fptoui.sat.i32.f32(float) nounwind readnone speculatable willreturn
declare i64 @llvm.fptoui.sat.i64.f32(float) nounwind readnone speculatable willreturn
declare i32 @llvm.fptoui.sat.i32.f64(double) nounwind readnone speculatable willreturn
declare i64 @llvm.fptoui.sat.i64.f64(double) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.fptosi.sat.v2i64.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.fptoui.sat.v4i32.v4f32(<4 x float>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.fptoui.sat.v2i64.v2f64(<2 x double>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.sadd.sat.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.sadd.sat.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.sadd.sat.v2i64(<2 x i64>, <2 x i64>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.uadd.sat.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.uadd.sat.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.uadd.sat.v2i64(<2 x i64>, <2 x i64>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.ssub.sat.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.ssub.sat.v2i64(<2 x i64>, <2 x i64>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <2 x i64> @llvm.usub.sat.v2i64(<2 x i64>, <2 x i64>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.smin.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) nounwind readnone speculatable willreturn
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.add.v16i16(<16 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) nounwind readnone speculatable willreturn
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.smax.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.smax.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.smax.v4i16(<4 x i16>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.umax.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.umax.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.smin.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.smin.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.smin.v8i16(<8 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.smin.v4i16(<4 x i16>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.umin.v16i8(<16 x i8>) nounwind readnone speculatable willreturn
declare i8 @llvm.vector.reduce.umin.v8i8(<8 x i8>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.umin.v8i16(<8 x i16>) nounwind readnone speculatable willreturn
declare i16 @llvm.vector.reduce.umin.v4i16(<4 x i16>) nounwind readnone speculatable willreturn
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) nounwind readnone speculatable willreturn

declare dso_local void @f_8006ad38c(ptr)
declare dso_local void @f_8006aec40(ptr)
declare dso_local void @f_8021968bc(ptr)
declare dso_local void @f_80219699c(ptr)
declare dso_local void @f_802196a0c(ptr)
declare dso_local void @f_802196a7c(ptr)
declare dso_local void @f_8021a0e4c(ptr)
declare dso_local void @f_8021a1318(ptr)
declare dso_local void @f_8021a1390(ptr)
declare dso_local void @f_8021a1408(ptr)
declare dso_local void @f_8021a1648(ptr)
declare dso_local void @f_8021a4594(ptr)
declare dso_local void @f_8021a5128(ptr)
declare dso_local void @f_8021a52d0(ptr)
declare dso_local void @f_8021a5354(ptr)
declare dso_local void @f_8021a53d8(ptr)
declare dso_local void @f_8021ac1cc(ptr)
declare dso_local void @f_8021ac220(ptr)
declare dso_local void @f_8021b69a4(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)

define dso_local void @f_8021c31d4(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8021c31d4:
  ; @pc 0x8021c31d4 word 0xd101c3ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 112
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c31d8 word 0x6d012beb
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 16
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 688
  %r11 = load i128, ptr %r11.p, align 16, !alias.scope !3, !noalias !4
  %r12.p = getelementptr inbounds i8, ptr %c, i64 672
  %r12 = load i128, ptr %r12.p, align 16, !alias.scope !3, !noalias !4
  %c13 = trunc i128 %r11 to i64
  %c14 = trunc i128 %r12 to i64
  %gmp15 = inttoptr i64 %t9 to ptr
  store i64 %c13, ptr %gmp15, align 1, !alias.scope !4, !noalias !3
  %gmp16 = inttoptr i64 %t10 to ptr
  store i64 %c14, ptr %gmp16, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31dc word 0x6d0223e9
  %r17.p = getelementptr inbounds i8, ptr %c, i64 256
  %r17 = load i64, ptr %r17.p, align 8, !alias.scope !3, !noalias !4
  %t18 = add i64 %r17, 32
  %t19 = add i64 %t18, 8
  %r20.p = getelementptr inbounds i8, ptr %c, i64 656
  %r20 = load i128, ptr %r20.p, align 16, !alias.scope !3, !noalias !4
  %r21.p = getelementptr inbounds i8, ptr %c, i64 640
  %r21 = load i128, ptr %r21.p, align 16, !alias.scope !3, !noalias !4
  %c22 = trunc i128 %r20 to i64
  %c23 = trunc i128 %r21 to i64
  %gmp24 = inttoptr i64 %t18 to ptr
  store i64 %c22, ptr %gmp24, align 1, !alias.scope !4, !noalias !3
  %gmp25 = inttoptr i64 %t19 to ptr
  store i64 %c23, ptr %gmp25, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31e0 word 0xa9037bfd
  %r26.p = getelementptr inbounds i8, ptr %c, i64 256
  %r26 = load i64, ptr %r26.p, align 8, !alias.scope !3, !noalias !4
  %t27 = add i64 %r26, 48
  %t28 = add i64 %t27, 8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 232
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %gmp30 = inttoptr i64 %t27 to ptr
  store i64 %r29, ptr %gmp30, align 1, !alias.scope !4, !noalias !3
  %r31.p = getelementptr inbounds i8, ptr %c, i64 240
  %r31 = load i64, ptr %r31.p, align 8, !alias.scope !3, !noalias !4
  %gmp32 = inttoptr i64 %t28 to ptr
  store i64 %r31, ptr %gmp32, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31e4 word 0xa9045ff8
  %r33.p = getelementptr inbounds i8, ptr %c, i64 256
  %r33 = load i64, ptr %r33.p, align 8, !alias.scope !3, !noalias !4
  %t34 = add i64 %r33, 64
  %t35 = add i64 %t34, 8
  %r36.p = getelementptr inbounds i8, ptr %c, i64 192
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %gmp37 = inttoptr i64 %t34 to ptr
  store i64 %r36, ptr %gmp37, align 1, !alias.scope !4, !noalias !3
  %r38.p = getelementptr inbounds i8, ptr %c, i64 184
  %r38 = load i64, ptr %r38.p, align 8, !alias.scope !3, !noalias !4
  %gmp39 = inttoptr i64 %t35 to ptr
  store i64 %r38, ptr %gmp39, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31e8 word 0xa90557f6
  %r40.p = getelementptr inbounds i8, ptr %c, i64 256
  %r40 = load i64, ptr %r40.p, align 8, !alias.scope !3, !noalias !4
  %t41 = add i64 %r40, 80
  %t42 = add i64 %t41, 8
  %r43.p = getelementptr inbounds i8, ptr %c, i64 176
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %gmp44 = inttoptr i64 %t41 to ptr
  store i64 %r43, ptr %gmp44, align 1, !alias.scope !4, !noalias !3
  %r45.p = getelementptr inbounds i8, ptr %c, i64 168
  %r45 = load i64, ptr %r45.p, align 8, !alias.scope !3, !noalias !4
  %gmp46 = inttoptr i64 %t42 to ptr
  store i64 %r45, ptr %gmp46, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31ec word 0xa9064ff4
  %r47.p = getelementptr inbounds i8, ptr %c, i64 256
  %r47 = load i64, ptr %r47.p, align 8, !alias.scope !3, !noalias !4
  %t48 = add i64 %r47, 96
  %t49 = add i64 %t48, 8
  %r50.p = getelementptr inbounds i8, ptr %c, i64 160
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %gmp51 = inttoptr i64 %t48 to ptr
  store i64 %r50, ptr %gmp51, align 1, !alias.scope !4, !noalias !3
  %r52.p = getelementptr inbounds i8, ptr %c, i64 152
  %r52 = load i64, ptr %r52.p, align 8, !alias.scope !3, !noalias !4
  %gmp53 = inttoptr i64 %t49 to ptr
  store i64 %r52, ptr %gmp53, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c31f0 word 0x9100c3fd
  %r54.p = getelementptr inbounds i8, ptr %c, i64 256
  %r54 = load i64, ptr %r54.p, align 8, !alias.scope !3, !noalias !4
  %t55 = add i64 %r54, 48
  %wp56 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t55, ptr %wp56, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c31f4 word 0x5100e028
  %r57.p = getelementptr inbounds i8, ptr %c, i64 8
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %c58 = trunc i64 %r57 to i32
  %t59 = sub i32 %c58, 56
  %c60 = zext i32 %t59 to i64
  %wp61 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c31f8 word 0x2a0103f4
  %r62.p = getelementptr inbounds i8, ptr %c, i64 8
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %c63 = trunc i64 %r62 to i32
  %t64 = or i32 0, %c63
  %c65 = zext i32 %t64 to i64
  %wp66 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c31fc word 0xaa0003f3
  %r67.p = getelementptr inbounds i8, ptr %c, i64 0
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = or i64 0, %r67
  %wp69 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3200 word 0x7100311f
  %r70.p = getelementptr inbounds i8, ptr %c, i64 64
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %c71 = trunc i64 %r70 to i32
  %t72 = sub i32 %c71, 12
  %fn73 = icmp slt i32 %t72, 0
  %fz74 = icmp eq i32 %t72, 0
  %fc75 = icmp uge i32 %c71, 12
  %fx176 = xor i32 %c71, 12
  %fx277 = xor i32 %c71, %t72
  %fva78 = and i32 %fx176, %fx277
  %fv79 = icmp slt i32 %fva78, 0
  %nz80 = zext i1 %fn73 to i64
  %zz81 = zext i1 %fz74 to i64
  %cz82 = zext i1 %fc75 to i64
  %vz83 = zext i1 %fv79 to i64
  %ns84 = shl i64 %nz80, 31
  %zs85 = shl i64 %zz81, 30
  %cs86 = shl i64 %cz82, 29
  %vs87 = shl i64 %vz83, 28
  %nzor88 = or i64 %ns84, %zs85
  %cvor89 = or i64 %cs86, %vs87
  %nzcv90 = or i64 %nzor88, %cvor89
  %wp91 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv90, ptr %wp91, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3204 word 0x540026c9
  %r92.p = getelementptr inbounds i8, ptr %c, i64 272
  %r92 = load i64, ptr %r92.p, align 8, !alias.scope !3, !noalias !4
  %fsh94 = lshr i64 %r92, 29
  %ftr95 = trunc i64 %fsh94 to i1
  %fsh96 = lshr i64 %r92, 30
  %ftr97 = trunc i64 %fsh96 to i1
  %fnz98 = xor i1 %ftr97, true
  %fhi99 = and i1 %ftr95, %fnz98
  %cond93 = xor i1 %fhi99, true
  br i1 %cond93, label %L_8021c36dc, label %L_8021c3208_ft
L_8021c3238:
  ; @pc 0x8021c3238 word 0x7100569f
  %r159.p = getelementptr inbounds i8, ptr %c, i64 160
  %r159 = load i64, ptr %r159.p, align 8, !alias.scope !3, !noalias !4
  %c160 = trunc i64 %r159 to i32
  %t161 = sub i32 %c160, 21
  %fn162 = icmp slt i32 %t161, 0
  %fz163 = icmp eq i32 %t161, 0
  %fc164 = icmp uge i32 %c160, 21
  %fx1165 = xor i32 %c160, 21
  %fx2166 = xor i32 %c160, %t161
  %fva167 = and i32 %fx1165, %fx2166
  %fv168 = icmp slt i32 %fva167, 0
  %nz169 = zext i1 %fn162 to i64
  %zz170 = zext i1 %fz163 to i64
  %cz171 = zext i1 %fc164 to i64
  %vz172 = zext i1 %fv168 to i64
  %ns173 = shl i64 %nz169, 31
  %zs174 = shl i64 %zz170, 30
  %cs175 = shl i64 %cz171, 29
  %vs176 = shl i64 %vz172, 28
  %nzor177 = or i64 %ns173, %zs174
  %cvor178 = or i64 %cs175, %vs176
  %nzcv179 = or i64 %nzor177, %cvor178
  %wp180 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv179, ptr %wp180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c323c word 0x540000e8
  %r181.p = getelementptr inbounds i8, ptr %c, i64 272
  %r181 = load i64, ptr %r181.p, align 8, !alias.scope !3, !noalias !4
  %fsh183 = lshr i64 %r181, 29
  %ftr184 = trunc i64 %fsh183 to i1
  %fsh185 = lshr i64 %r181, 30
  %ftr186 = trunc i64 %fsh185 to i1
  %fnz187 = xor i1 %ftr186, true
  %cond182 = and i1 %ftr184, %fnz187
  br i1 %cond182, label %L_8021c3258, label %L_8021c3240_ft
L_8021c3258:
  ; @pc 0x8021c3258 word 0xf9401a68
  %r223.p = getelementptr inbounds i8, ptr %c, i64 152
  %r223 = load i64, ptr %r223.p, align 8, !alias.scope !3, !noalias !4
  %t224 = add i64 %r223, 48
  %gmp225 = inttoptr i64 %t224 to ptr
  %gml226 = load i64, ptr %gmp225, align 1, !alias.scope !4, !noalias !3
  %wp227 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml226, ptr %wp227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c325c word 0xb50055e8
  %r228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %cmp229 = icmp ne i64 %r228, 0
  br i1 %cmp229, label %L_8021c3d18, label %L_8021c3260_ft
L_8021c32dc:
  ; @pc 0x8021c32dc word 0x2a1403e1
  %r492.p = getelementptr inbounds i8, ptr %c, i64 160
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %c493 = trunc i64 %r492 to i32
  %t494 = or i32 0, %c493
  %c495 = zext i32 %t494 to i64
  %wp496 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32e0 word 0x2a1503e2
  %r497.p = getelementptr inbounds i8, ptr %c, i64 168
  %r497 = load i64, ptr %r497.p, align 8, !alias.scope !3, !noalias !4
  %c498 = trunc i64 %r497 to i32
  %t499 = or i32 0, %c498
  %c500 = zext i32 %t499 to i64
  %wp501 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c500, ptr %wp501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32e4 word 0x9793a82a
  %wp502 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395140840, ptr %wp502, align 8, !alias.scope !3, !noalias !4
  call void @f_8006ad38c(ptr %c)
  br label %L_8021c32e8
L_8021c32e8:
  ; @pc 0x8021c32e8 word 0x1e204008
  %r503.p = getelementptr inbounds i8, ptr %c, i64 512
  %r503 = load i128, ptr %r503.p, align 16, !alias.scope !3, !noalias !4
  %c504 = trunc i128 %r503 to i32
  %c505 = zext i32 %c504 to i128
  %wp506 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c505, ptr %wp506, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c32ec
L_8021c32ec:
  ; @pc 0x8021c32ec word 0x7100969f
  %r507.p = getelementptr inbounds i8, ptr %c, i64 160
  %r507 = load i64, ptr %r507.p, align 8, !alias.scope !3, !noalias !4
  %c508 = trunc i64 %r507 to i32
  %t509 = sub i32 %c508, 37
  %fn510 = icmp slt i32 %t509, 0
  %fz511 = icmp eq i32 %t509, 0
  %fc512 = icmp uge i32 %c508, 37
  %fx1513 = xor i32 %c508, 37
  %fx2514 = xor i32 %c508, %t509
  %fva515 = and i32 %fx1513, %fx2514
  %fv516 = icmp slt i32 %fva515, 0
  %nz517 = zext i1 %fn510 to i64
  %zz518 = zext i1 %fz511 to i64
  %cz519 = zext i1 %fc512 to i64
  %vz520 = zext i1 %fv516 to i64
  %ns521 = shl i64 %nz517, 31
  %zs522 = shl i64 %zz518, 30
  %cs523 = shl i64 %cz519, 29
  %vs524 = shl i64 %vz520, 28
  %nzor525 = or i64 %ns521, %zs522
  %cvor526 = or i64 %cs523, %vs524
  %nzcv527 = or i64 %nzor525, %cvor526
  %wp528 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv527, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32f0 word 0x540004cc
  %r529.p = getelementptr inbounds i8, ptr %c, i64 272
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %fsh531 = lshr i64 %r529, 30
  %ftr532 = trunc i64 %fsh531 to i1
  %fsh533 = lshr i64 %r529, 31
  %ftr534 = trunc i64 %fsh533 to i1
  %fsh535 = lshr i64 %r529, 28
  %ftr536 = trunc i64 %fsh535 to i1
  %fnz537 = xor i1 %ftr532, true
  %feq538 = icmp eq i1 %ftr534, %ftr536
  %cond530 = and i1 %fnz537, %feq538
  br i1 %cond530, label %L_8021c3388, label %L_8021c32f4_ft
L_8021c3318:
  ; @pc 0x8021c3318 word 0xf9404e73
  %r591.p = getelementptr inbounds i8, ptr %c, i64 152
  %r591 = load i64, ptr %r591.p, align 8, !alias.scope !3, !noalias !4
  %t592 = add i64 %r591, 152
  %gmp593 = inttoptr i64 %t592 to ptr
  %gml594 = load i64, ptr %gmp593, align 1, !alias.scope !4, !noalias !3
  %wp595 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml594, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c331c word 0xbd401260
  %r596.p = getelementptr inbounds i8, ptr %c, i64 152
  %r596 = load i64, ptr %r596.p, align 8, !alias.scope !3, !noalias !4
  %t597 = add i64 %r596, 16
  %gmp598 = inttoptr i64 %t597 to ptr
  %gml599 = load i32, ptr %gmp598, align 1, !alias.scope !4, !noalias !3
  %c600 = zext i32 %gml599 to i128
  %wp601 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c600, ptr %wp601, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3320 word 0x1e202008
  %fcmp602 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp603 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp602, ptr %wp603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3324 word 0x54005a89
  %r604.p = getelementptr inbounds i8, ptr %c, i64 272
  %r604 = load i64, ptr %r604.p, align 8, !alias.scope !3, !noalias !4
  %fsh606 = lshr i64 %r604, 29
  %ftr607 = trunc i64 %fsh606 to i1
  %fsh608 = lshr i64 %r604, 30
  %ftr609 = trunc i64 %fsh608 to i1
  %fnz610 = xor i1 %ftr609, true
  %fhi611 = and i1 %ftr607, %fnz610
  %cond605 = xor i1 %fhi611, true
  br i1 %cond605, label %L_8021c3e74, label %L_8021c3328_ft
L_8021c3350:
  ; @pc 0x8021c3350 word 0xf9400a88
  %r649.p = getelementptr inbounds i8, ptr %c, i64 160
  %r649 = load i64, ptr %r649.p, align 8, !alias.scope !3, !noalias !4
  %t650 = add i64 %r649, 16
  %gmp651 = inttoptr i64 %t650 to ptr
  %gml652 = load i64, ptr %gmp651, align 1, !alias.scope !4, !noalias !3
  %wp653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3354 word 0xb5000708
  %r654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %cmp655 = icmp ne i64 %r654, 0
  br i1 %cmp655, label %L_8021c3434, label %L_8021c3358
L_8021c3358:
  ; @pc 0x8021c3358 word 0xbd405280
  %r656.p = getelementptr inbounds i8, ptr %c, i64 160
  %r656 = load i64, ptr %r656.p, align 8, !alias.scope !3, !noalias !4
  %t657 = add i64 %r656, 80
  %gmp658 = inttoptr i64 %t657 to ptr
  %gml659 = load i32, ptr %gmp658, align 1, !alias.scope !4, !noalias !3
  %c660 = zext i32 %gml659 to i128
  %wp661 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c660, ptr %wp661, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c335c
L_8021c335c:
  ; @pc 0x8021c335c word 0x1e202100
  %fcmp662 = call i64 @rt_fp_cmp_s(ptr %c, i32 8, i32 0, i32 0)
  %wp663 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp662, ptr %wp663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3360 word 0x1e28cc08
  %r664.p = getelementptr inbounds i8, ptr %c, i64 512
  %r664 = load i128, ptr %r664.p, align 16, !alias.scope !3, !noalias !4
  %c665 = trunc i128 %r664 to i32
  %r666.p = getelementptr inbounds i8, ptr %c, i64 640
  %r666 = load i128, ptr %r666.p, align 16, !alias.scope !3, !noalias !4
  %c667 = trunc i128 %r666 to i32
  %r668.p = getelementptr inbounds i8, ptr %c, i64 272
  %r668 = load i64, ptr %r668.p, align 8, !alias.scope !3, !noalias !4
  %fsh670 = lshr i64 %r668, 30
  %ftr671 = trunc i64 %fsh670 to i1
  %fsh672 = lshr i64 %r668, 31
  %ftr673 = trunc i64 %fsh672 to i1
  %fsh674 = lshr i64 %r668, 28
  %ftr675 = trunc i64 %fsh674 to i1
  %fnz676 = xor i1 %ftr671, true
  %feq677 = icmp eq i1 %ftr673, %ftr675
  %cond669 = and i1 %fnz676, %feq677
  %sel678 = select i1 %cond669, i32 %c665, i32 %c667
  %c679 = zext i32 %sel678 to i128
  %wp680 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c679, ptr %wp680, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3364
L_8021c3364:
  ; @pc 0x8021c3364 word 0x1e204100
  %r681.p = getelementptr inbounds i8, ptr %c, i64 640
  %r681 = load i128, ptr %r681.p, align 16, !alias.scope !3, !noalias !4
  %c682 = trunc i128 %r681 to i32
  %c683 = zext i32 %c682 to i128
  %wp684 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c683, ptr %wp684, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3368
L_8021c3368:
  ; @pc 0x8021c3368 word 0x6d4223e9
  %r685.p = getelementptr inbounds i8, ptr %c, i64 256
  %r685 = load i64, ptr %r685.p, align 8, !alias.scope !3, !noalias !4
  %t686 = add i64 %r685, 32
  %t687 = add i64 %t686, 8
  %gmp688 = inttoptr i64 %t686 to ptr
  %gml689 = load i64, ptr %gmp688, align 1, !alias.scope !4, !noalias !3
  %gmp690 = inttoptr i64 %t687 to ptr
  %gml691 = load i64, ptr %gmp690, align 1, !alias.scope !4, !noalias !3
  %c692 = zext i64 %gml689 to i128
  %wp693 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c692, ptr %wp693, align 16, !alias.scope !3, !noalias !4
  %c694 = zext i64 %gml691 to i128
  %wp695 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c694, ptr %wp695, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c336c word 0x6d412beb
  %r696.p = getelementptr inbounds i8, ptr %c, i64 256
  %r696 = load i64, ptr %r696.p, align 8, !alias.scope !3, !noalias !4
  %t697 = add i64 %r696, 16
  %t698 = add i64 %t697, 8
  %gmp699 = inttoptr i64 %t697 to ptr
  %gml700 = load i64, ptr %gmp699, align 1, !alias.scope !4, !noalias !3
  %gmp701 = inttoptr i64 %t698 to ptr
  %gml702 = load i64, ptr %gmp701, align 1, !alias.scope !4, !noalias !3
  %c703 = zext i64 %gml700 to i128
  %wp704 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c703, ptr %wp704, align 16, !alias.scope !3, !noalias !4
  %c705 = zext i64 %gml702 to i128
  %wp706 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c705, ptr %wp706, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3370 word 0xa9464ff4
  %r707.p = getelementptr inbounds i8, ptr %c, i64 256
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %t708 = add i64 %r707, 96
  %t709 = add i64 %t708, 8
  %gmp710 = inttoptr i64 %t708 to ptr
  %gml711 = load i64, ptr %gmp710, align 1, !alias.scope !4, !noalias !3
  %gmp712 = inttoptr i64 %t709 to ptr
  %gml713 = load i64, ptr %gmp712, align 1, !alias.scope !4, !noalias !3
  %wp714 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml711, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  %wp715 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml713, ptr %wp715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3374 word 0xa94557f6
  %r716.p = getelementptr inbounds i8, ptr %c, i64 256
  %r716 = load i64, ptr %r716.p, align 8, !alias.scope !3, !noalias !4
  %t717 = add i64 %r716, 80
  %t718 = add i64 %t717, 8
  %gmp719 = inttoptr i64 %t717 to ptr
  %gml720 = load i64, ptr %gmp719, align 1, !alias.scope !4, !noalias !3
  %gmp721 = inttoptr i64 %t718 to ptr
  %gml722 = load i64, ptr %gmp721, align 1, !alias.scope !4, !noalias !3
  %wp723 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml720, ptr %wp723, align 8, !alias.scope !3, !noalias !4
  %wp724 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml722, ptr %wp724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3378 word 0xa9445ff8
  %r725.p = getelementptr inbounds i8, ptr %c, i64 256
  %r725 = load i64, ptr %r725.p, align 8, !alias.scope !3, !noalias !4
  %t726 = add i64 %r725, 64
  %t727 = add i64 %t726, 8
  %gmp728 = inttoptr i64 %t726 to ptr
  %gml729 = load i64, ptr %gmp728, align 1, !alias.scope !4, !noalias !3
  %gmp730 = inttoptr i64 %t727 to ptr
  %gml731 = load i64, ptr %gmp730, align 1, !alias.scope !4, !noalias !3
  %wp732 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml729, ptr %wp732, align 8, !alias.scope !3, !noalias !4
  %wp733 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml731, ptr %wp733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c337c word 0xa9437bfd
  %r734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %t735 = add i64 %r734, 48
  %t736 = add i64 %t735, 8
  %gmp737 = inttoptr i64 %t735 to ptr
  %gml738 = load i64, ptr %gmp737, align 1, !alias.scope !4, !noalias !3
  %gmp739 = inttoptr i64 %t736 to ptr
  %gml740 = load i64, ptr %gmp739, align 1, !alias.scope !4, !noalias !3
  %wp741 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml738, ptr %wp741, align 8, !alias.scope !3, !noalias !4
  %wp742 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml740, ptr %wp742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3380 word 0x9101c3ff
  %r743.p = getelementptr inbounds i8, ptr %c, i64 256
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %t744 = add i64 %r743, 112
  %wp745 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3384 word 0xd65f03c0
  ret void
L_8021c3388:
  ; @pc 0x8021c3388 word 0x71009a9f
  %r746.p = getelementptr inbounds i8, ptr %c, i64 160
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %c747 = trunc i64 %r746 to i32
  %t748 = sub i32 %c747, 38
  %fn749 = icmp slt i32 %t748, 0
  %fz750 = icmp eq i32 %t748, 0
  %fc751 = icmp uge i32 %c747, 38
  %fx1752 = xor i32 %c747, 38
  %fx2753 = xor i32 %c747, %t748
  %fva754 = and i32 %fx1752, %fx2753
  %fv755 = icmp slt i32 %fva754, 0
  %nz756 = zext i1 %fn749 to i64
  %zz757 = zext i1 %fz750 to i64
  %cz758 = zext i1 %fc751 to i64
  %vz759 = zext i1 %fv755 to i64
  %ns760 = shl i64 %nz756, 31
  %zs761 = shl i64 %zz757, 30
  %cs762 = shl i64 %cz758, 29
  %vs763 = shl i64 %vz759, 28
  %nzor764 = or i64 %ns760, %zs761
  %cvor765 = or i64 %cs762, %vs763
  %nzcv766 = or i64 %nzor764, %cvor765
  %wp767 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv766, ptr %wp767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c338c word 0x54001a20
  %r768.p = getelementptr inbounds i8, ptr %c, i64 272
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %fsh770 = lshr i64 %r768, 30
  %cond769 = trunc i64 %fsh770 to i1
  br i1 %cond769, label %L_8021c36d0, label %L_8021c3390_ft
L_8021c33a0:
  ; @pc 0x8021c33a0 word 0xb94016c8
  %r803.p = getelementptr inbounds i8, ptr %c, i64 176
  %r803 = load i64, ptr %r803.p, align 8, !alias.scope !3, !noalias !4
  %t804 = add i64 %r803, 20
  %gmp805 = inttoptr i64 %t804 to ptr
  %gml806 = load i32, ptr %gmp805, align 1, !alias.scope !4, !noalias !3
  %c807 = zext i32 %gml806 to i64
  %wp808 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c807, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33a4 word 0x52800318
  %c809 = zext i32 24 to i64
  %wp810 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c809, ptr %wp810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33a8 word 0x2a1403e1
  %r811.p = getelementptr inbounds i8, ptr %c, i64 160
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %c812 = trunc i64 %r811 to i32
  %t813 = or i32 0, %c812
  %c814 = zext i32 %t813 to i64
  %wp815 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c814, ptr %wp815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33ac word 0x2a1503e2
  %r816.p = getelementptr inbounds i8, ptr %c, i64 168
  %r816 = load i64, ptr %r816.p, align 8, !alias.scope !3, !noalias !4
  %c817 = trunc i64 %r816 to i32
  %t818 = or i32 0, %c817
  %c819 = zext i32 %t818 to i64
  %wp820 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c819, ptr %wp820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33b0 word 0x9bb85d09
  %r821.p = getelementptr inbounds i8, ptr %c, i64 64
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %c822 = trunc i64 %r821 to i32
  %c823 = zext i32 %c822 to i64
  %r824.p = getelementptr inbounds i8, ptr %c, i64 192
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %c825 = trunc i64 %r824 to i32
  %c826 = zext i32 %c825 to i64
  %t827 = mul i64 %c823, %c826
  %r828.p = getelementptr inbounds i8, ptr %c, i64 184
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %t829 = add i64 %r828, %t827
  %wp830 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t829, ptr %wp830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33b4 word 0x7100211f
  %r831.p = getelementptr inbounds i8, ptr %c, i64 64
  %r831 = load i64, ptr %r831.p, align 8, !alias.scope !3, !noalias !4
  %c832 = trunc i64 %r831 to i32
  %t833 = sub i32 %c832, 8
  %fn834 = icmp slt i32 %t833, 0
  %fz835 = icmp eq i32 %t833, 0
  %fc836 = icmp uge i32 %c832, 8
  %fx1837 = xor i32 %c832, 8
  %fx2838 = xor i32 %c832, %t833
  %fva839 = and i32 %fx1837, %fx2838
  %fv840 = icmp slt i32 %fva839, 0
  %nz841 = zext i1 %fn834 to i64
  %zz842 = zext i1 %fz835 to i64
  %cz843 = zext i1 %fc836 to i64
  %vz844 = zext i1 %fv840 to i64
  %ns845 = shl i64 %nz841, 31
  %zs846 = shl i64 %zz842, 30
  %cs847 = shl i64 %cz843, 29
  %vs848 = shl i64 %vz844, 28
  %nzor849 = or i64 %ns845, %zs846
  %cvor850 = or i64 %cs847, %vs848
  %nzcv851 = or i64 %nzor849, %cvor850
  %wp852 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv851, ptr %wp852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33b8 word 0x9a973120
  %r853.p = getelementptr inbounds i8, ptr %c, i64 72
  %r853 = load i64, ptr %r853.p, align 8, !alias.scope !3, !noalias !4
  %r854.p = getelementptr inbounds i8, ptr %c, i64 184
  %r854 = load i64, ptr %r854.p, align 8, !alias.scope !3, !noalias !4
  %r855.p = getelementptr inbounds i8, ptr %c, i64 272
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %fsh857 = lshr i64 %r855, 29
  %ftr858 = trunc i64 %fsh857 to i1
  %cond856 = xor i1 %ftr858, true
  %sel859 = select i1 %cond856, i64 %r853, i64 %r854
  %wp860 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel859, ptr %wp860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33bc word 0x9793a7f4
  %wp861 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141056, ptr %wp861, align 8, !alias.scope !3, !noalias !4
  call void @f_8006ad38c(ptr %c)
  ; @pc 0x8021c33c0 word 0xb9401ac8
  %r862.p = getelementptr inbounds i8, ptr %c, i64 176
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %t863 = add i64 %r862, 24
  %gmp864 = inttoptr i64 %t863 to ptr
  %gml865 = load i32, ptr %gmp864, align 1, !alias.scope !4, !noalias !3
  %c866 = zext i32 %gml865 to i64
  %wp867 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c866, ptr %wp867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33c4 word 0x1e204008
  %r868.p = getelementptr inbounds i8, ptr %c, i64 512
  %r868 = load i128, ptr %r868.p, align 16, !alias.scope !3, !noalias !4
  %c869 = trunc i128 %r868 to i32
  %c870 = zext i32 %c869 to i128
  %wp871 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c870, ptr %wp871, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33c8 word 0x9bb85d09
  %r872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %c873 = trunc i64 %r872 to i32
  %c874 = zext i32 %c873 to i64
  %r875.p = getelementptr inbounds i8, ptr %c, i64 192
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %c876 = trunc i64 %r875 to i32
  %c877 = zext i32 %c876 to i64
  %t878 = mul i64 %c874, %c877
  %r879.p = getelementptr inbounds i8, ptr %c, i64 184
  %r879 = load i64, ptr %r879.p, align 8, !alias.scope !3, !noalias !4
  %t880 = add i64 %r879, %t878
  %wp881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t880, ptr %wp881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33cc word 0x7100211f
  %r882.p = getelementptr inbounds i8, ptr %c, i64 64
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %c883 = trunc i64 %r882 to i32
  %t884 = sub i32 %c883, 8
  %fn885 = icmp slt i32 %t884, 0
  %fz886 = icmp eq i32 %t884, 0
  %fc887 = icmp uge i32 %c883, 8
  %fx1888 = xor i32 %c883, 8
  %fx2889 = xor i32 %c883, %t884
  %fva890 = and i32 %fx1888, %fx2889
  %fv891 = icmp slt i32 %fva890, 0
  %nz892 = zext i1 %fn885 to i64
  %zz893 = zext i1 %fz886 to i64
  %cz894 = zext i1 %fc887 to i64
  %vz895 = zext i1 %fv891 to i64
  %ns896 = shl i64 %nz892, 31
  %zs897 = shl i64 %zz893, 30
  %cs898 = shl i64 %cz894, 29
  %vs899 = shl i64 %vz895, 28
  %nzor900 = or i64 %ns896, %zs897
  %cvor901 = or i64 %cs898, %vs899
  %nzcv902 = or i64 %nzor900, %cvor901
  %wp903 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv902, ptr %wp903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33d0 word 0x9a973120
  %r904.p = getelementptr inbounds i8, ptr %c, i64 72
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %r905.p = getelementptr inbounds i8, ptr %c, i64 184
  %r905 = load i64, ptr %r905.p, align 8, !alias.scope !3, !noalias !4
  %r906.p = getelementptr inbounds i8, ptr %c, i64 272
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %fsh908 = lshr i64 %r906, 29
  %ftr909 = trunc i64 %fsh908 to i1
  %cond907 = xor i1 %ftr909, true
  %sel910 = select i1 %cond907, i64 %r904, i64 %r905
  %wp911 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c33d4
L_8021c33d4:
  ; @pc 0x8021c33d4 word 0x2a1403e1
  %r912.p = getelementptr inbounds i8, ptr %c, i64 160
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %c913 = trunc i64 %r912 to i32
  %t914 = or i32 0, %c913
  %c915 = zext i32 %t914 to i64
  %wp916 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c915, ptr %wp916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33d8 word 0x2a1503e2
  %r917.p = getelementptr inbounds i8, ptr %c, i64 168
  %r917 = load i64, ptr %r917.p, align 8, !alias.scope !3, !noalias !4
  %c918 = trunc i64 %r917 to i32
  %t919 = or i32 0, %c918
  %c920 = zext i32 %t919 to i64
  %wp921 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c920, ptr %wp921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33dc word 0x9793a7ec
  %wp922 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141088, ptr %wp922, align 8, !alias.scope !3, !noalias !4
  call void @f_8006ad38c(ptr %c)
  br label %L_8021c33e0
L_8021c33e0:
  ; @pc 0x8021c33e0 word 0x1e283800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 8)
  ; @pc 0x8021c33e4 word 0x1f0a2008
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 8, i32 0, i32 10, i32 8)
  ; @pc 0x8021c33e8 word 0x17ffffc1
  br label %L_8021c32ec
L_8021c33ec:
  ; @pc 0x8021c33ec word 0x71001a9f
  %r923.p = getelementptr inbounds i8, ptr %c, i64 160
  %r923 = load i64, ptr %r923.p, align 8, !alias.scope !3, !noalias !4
  %c924 = trunc i64 %r923 to i32
  %t925 = sub i32 %c924, 6
  %fn926 = icmp slt i32 %t925, 0
  %fz927 = icmp eq i32 %t925, 0
  %fc928 = icmp uge i32 %c924, 6
  %fx1929 = xor i32 %c924, 6
  %fx2930 = xor i32 %c924, %t925
  %fva931 = and i32 %fx1929, %fx2930
  %fv932 = icmp slt i32 %fva931, 0
  %nz933 = zext i1 %fn926 to i64
  %zz934 = zext i1 %fz927 to i64
  %cz935 = zext i1 %fc928 to i64
  %vz936 = zext i1 %fv932 to i64
  %ns937 = shl i64 %nz933, 31
  %zs938 = shl i64 %zz934, 30
  %cs939 = shl i64 %cz935, 29
  %vs940 = shl i64 %vz936, 28
  %nzor941 = or i64 %ns937, %zs938
  %cvor942 = or i64 %cs939, %vs940
  %nzcv943 = or i64 %nzor941, %cvor942
  %wp944 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv943, ptr %wp944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33f0 word 0x54fffba1
  %r945.p = getelementptr inbounds i8, ptr %c, i64 272
  %r945 = load i64, ptr %r945.p, align 8, !alias.scope !3, !noalias !4
  %fsh947 = lshr i64 %r945, 30
  %ftr948 = trunc i64 %fsh947 to i1
  %cond946 = xor i1 %ftr948, true
  br i1 %cond946, label %L_8021c3364, label %L_8021c33f4_ft
L_8021c3408:
  ; @pc 0x8021c3408 word 0x6d4223e9
  %r962.p = getelementptr inbounds i8, ptr %c, i64 256
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %t963 = add i64 %r962, 32
  %t964 = add i64 %t963, 8
  %gmp965 = inttoptr i64 %t963 to ptr
  %gml966 = load i64, ptr %gmp965, align 1, !alias.scope !4, !noalias !3
  %gmp967 = inttoptr i64 %t964 to ptr
  %gml968 = load i64, ptr %gmp967, align 1, !alias.scope !4, !noalias !3
  %c969 = zext i64 %gml966 to i128
  %wp970 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c969, ptr %wp970, align 16, !alias.scope !3, !noalias !4
  %c971 = zext i64 %gml968 to i128
  %wp972 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c971, ptr %wp972, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c340c word 0xaa1603e0
  %r973.p = getelementptr inbounds i8, ptr %c, i64 176
  %r973 = load i64, ptr %r973.p, align 8, !alias.scope !3, !noalias !4
  %t974 = or i64 0, %r973
  %wp975 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t974, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3410 word 0x6d412beb
  %r976.p = getelementptr inbounds i8, ptr %c, i64 256
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %t977 = add i64 %r976, 16
  %t978 = add i64 %t977, 8
  %gmp979 = inttoptr i64 %t977 to ptr
  %gml980 = load i64, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  %gmp981 = inttoptr i64 %t978 to ptr
  %gml982 = load i64, ptr %gmp981, align 1, !alias.scope !4, !noalias !3
  %c983 = zext i64 %gml980 to i128
  %wp984 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c983, ptr %wp984, align 16, !alias.scope !3, !noalias !4
  %c985 = zext i64 %gml982 to i128
  %wp986 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c985, ptr %wp986, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3414 word 0x2a1403e1
  %r987.p = getelementptr inbounds i8, ptr %c, i64 160
  %r987 = load i64, ptr %r987.p, align 8, !alias.scope !3, !noalias !4
  %c988 = trunc i64 %r987 to i32
  %t989 = or i32 0, %c988
  %c990 = zext i32 %t989 to i64
  %wp991 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c990, ptr %wp991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3418 word 0x2a1503e2
  %r992.p = getelementptr inbounds i8, ptr %c, i64 168
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %c993 = trunc i64 %r992 to i32
  %t994 = or i32 0, %c993
  %c995 = zext i32 %t994 to i64
  %wp996 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c341c word 0xa9464ff4
  %r997.p = getelementptr inbounds i8, ptr %c, i64 256
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %t998 = add i64 %r997, 96
  %t999 = add i64 %t998, 8
  %gmp1000 = inttoptr i64 %t998 to ptr
  %gml1001 = load i64, ptr %gmp1000, align 1, !alias.scope !4, !noalias !3
  %gmp1002 = inttoptr i64 %t999 to ptr
  %gml1003 = load i64, ptr %gmp1002, align 1, !alias.scope !4, !noalias !3
  %wp1004 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1001, ptr %wp1004, align 8, !alias.scope !3, !noalias !4
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1003, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3420 word 0xa94557f6
  %r1006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1006 = load i64, ptr %r1006.p, align 8, !alias.scope !3, !noalias !4
  %t1007 = add i64 %r1006, 80
  %t1008 = add i64 %t1007, 8
  %gmp1009 = inttoptr i64 %t1007 to ptr
  %gml1010 = load i64, ptr %gmp1009, align 1, !alias.scope !4, !noalias !3
  %gmp1011 = inttoptr i64 %t1008 to ptr
  %gml1012 = load i64, ptr %gmp1011, align 1, !alias.scope !4, !noalias !3
  %wp1013 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1010, ptr %wp1013, align 8, !alias.scope !3, !noalias !4
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1012, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3424 word 0xa9445ff8
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %t1016 = add i64 %r1015, 64
  %t1017 = add i64 %t1016, 8
  %gmp1018 = inttoptr i64 %t1016 to ptr
  %gml1019 = load i64, ptr %gmp1018, align 1, !alias.scope !4, !noalias !3
  %gmp1020 = inttoptr i64 %t1017 to ptr
  %gml1021 = load i64, ptr %gmp1020, align 1, !alias.scope !4, !noalias !3
  %wp1022 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1019, ptr %wp1022, align 8, !alias.scope !3, !noalias !4
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1021, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3428 word 0xa9437bfd
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = add i64 %r1024, 48
  %t1026 = add i64 %t1025, 8
  %gmp1027 = inttoptr i64 %t1025 to ptr
  %gml1028 = load i64, ptr %gmp1027, align 1, !alias.scope !4, !noalias !3
  %gmp1029 = inttoptr i64 %t1026 to ptr
  %gml1030 = load i64, ptr %gmp1029, align 1, !alias.scope !4, !noalias !3
  %wp1031 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1028, ptr %wp1031, align 8, !alias.scope !3, !noalias !4
  %wp1032 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1030, ptr %wp1032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c342c word 0x9101c3ff
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %t1034 = add i64 %r1033, 112
  %wp1035 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1034, ptr %wp1035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3430 word 0x1793ae04
  musttail call void @f_8006aec40(ptr %c)
  ret void
L_8021c3434:
  ; @pc 0x8021c3434 word 0xf9400e88
  %r1036.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1036 = load i64, ptr %r1036.p, align 8, !alias.scope !3, !noalias !4
  %t1037 = add i64 %r1036, 24
  %gmp1038 = inttoptr i64 %t1037 to ptr
  %gml1039 = load i64, ptr %gmp1038, align 1, !alias.scope !4, !noalias !3
  %wp1040 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1039, ptr %wp1040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3438 word 0xb4fff908
  %r1041.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1041 = load i64, ptr %r1041.p, align 8, !alias.scope !3, !noalias !4
  %cmp1042 = icmp eq i64 %r1041, 0
  br i1 %cmp1042, label %L_8021c3358, label %L_8021c343c_ft
L_8021c3480:
  ; @pc 0x8021c3480 word 0xbd401101
  %r1121.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1121 = load i64, ptr %r1121.p, align 8, !alias.scope !3, !noalias !4
  %t1122 = add i64 %r1121, 16
  %gmp1123 = inttoptr i64 %t1122 to ptr
  %gml1124 = load i32, ptr %gmp1123, align 1, !alias.scope !4, !noalias !3
  %c1125 = zext i32 %gml1124 to i128
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1125, ptr %wp1126, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3484 word 0x1e202028
  %fcmp1127 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 1)
  %wp1128 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1127, ptr %wp1128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3488 word 0x540053c9
  %r1129.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1129 = load i64, ptr %r1129.p, align 8, !alias.scope !3, !noalias !4
  %fsh1131 = lshr i64 %r1129, 29
  %ftr1132 = trunc i64 %fsh1131 to i1
  %fsh1133 = lshr i64 %r1129, 30
  %ftr1134 = trunc i64 %fsh1133 to i1
  %fnz1135 = xor i1 %ftr1134, true
  %fhi1136 = and i1 %ftr1132, %fnz1135
  %cond1130 = xor i1 %fhi1136, true
  br i1 %cond1130, label %L_8021c3f00, label %L_8021c348c_ft
L_8021c34b0:
  ; @pc 0x8021c34b0 word 0x7200011f
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %c1171 = trunc i64 %r1170 to i32
  %t1172 = and i32 %c1171, 1
  %fn1173 = icmp slt i32 %t1172, 0
  %fz1174 = icmp eq i32 %t1172, 0
  %nz1175 = zext i1 %fn1173 to i64
  %zz1176 = zext i1 %fz1174 to i64
  %ns1177 = shl i64 %nz1175, 31
  %zs1178 = shl i64 %zz1176, 30
  %nzcv1179 = or i64 %ns1177, %zs1178
  %wp1180 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1179, ptr %wp1180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34b4 word 0x2f00e401
  %wp1181 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 0, ptr %wp1181, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34b8 word 0x1e200c28
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1182 = load i128, ptr %r1182.p, align 16, !alias.scope !3, !noalias !4
  %c1183 = trunc i128 %r1182 to i32
  %r1184.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1184 = load i128, ptr %r1184.p, align 16, !alias.scope !3, !noalias !4
  %c1185 = trunc i128 %r1184 to i32
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %fsh1188 = lshr i64 %r1186, 30
  %cond1187 = trunc i64 %fsh1188 to i1
  %sel1189 = select i1 %cond1187, i32 %c1183, i32 %c1185
  %c1190 = zext i32 %sel1189 to i128
  %wp1191 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1190, ptr %wp1191, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34bc word 0x17ffffaa
  br label %L_8021c3364
L_8021c34c0:
  ; @pc 0x8021c34c0 word 0xf940f2c8
  %r1192.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1192 = load i64, ptr %r1192.p, align 8, !alias.scope !3, !noalias !4
  %t1193 = add i64 %r1192, 480
  %gmp1194 = inttoptr i64 %t1193 to ptr
  %gml1195 = load i64, ptr %gmp1194, align 1, !alias.scope !4, !noalias !3
  %wp1196 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1195, ptr %wp1196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34c4 word 0xf940a916
  %r1197.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1197 = load i64, ptr %r1197.p, align 8, !alias.scope !3, !noalias !4
  %t1198 = add i64 %r1197, 336
  %gmp1199 = inttoptr i64 %t1198 to ptr
  %gml1200 = load i64, ptr %gmp1199, align 1, !alias.scope !4, !noalias !3
  %wp1201 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1200, ptr %wp1201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34c8 word 0x3940fac8
  %r1202.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1202 = load i64, ptr %r1202.p, align 8, !alias.scope !3, !noalias !4
  %t1203 = add i64 %r1202, 62
  %gmp1204 = inttoptr i64 %t1203 to ptr
  %gml1205 = load i8, ptr %gmp1204, align 1, !alias.scope !4, !noalias !3
  %c1206 = zext i8 %gml1205 to i64
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34cc word 0x37000068
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %t1209 = and i64 %r1208, 1
  %cmp1210 = icmp ne i64 %t1209, 0
  br i1 %cmp1210, label %L_8021c34d8, label %L_8021c34d0
L_8021c34d0:
  ; @pc 0x8021c34d0 word 0xf9400ac8
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %t1212 = add i64 %r1211, 16
  %gmp1213 = inttoptr i64 %t1212 to ptr
  %gml1214 = load i64, ptr %gmp1213, align 1, !alias.scope !4, !noalias !3
  %wp1215 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1214, ptr %wp1215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34d4 word 0xb5001228
  %r1216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1216 = load i64, ptr %r1216.p, align 8, !alias.scope !3, !noalias !4
  %cmp1217 = icmp ne i64 %r1216, 0
  br i1 %cmp1217, label %L_8021c3718, label %L_8021c34d8
L_8021c34d8:
  ; @pc 0x8021c34d8 word 0xbd4032c8
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %t1219 = add i64 %r1218, 48
  %gmp1220 = inttoptr i64 %t1219 to ptr
  %gml1221 = load i32, ptr %gmp1220, align 1, !alias.scope !4, !noalias !3
  %c1222 = zext i32 %gml1221 to i128
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1222, ptr %wp1223, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34dc word 0x17ffff84
  br label %L_8021c32ec
L_8021c34e0:
  ; @pc 0x8021c34e0 word 0xf940f2c8
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %t1225 = add i64 %r1224, 480
  %gmp1226 = inttoptr i64 %t1225 to ptr
  %gml1227 = load i64, ptr %gmp1226, align 1, !alias.scope !4, !noalias !3
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34e4 word 0xf940a916
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %t1230 = add i64 %r1229, 336
  %gmp1231 = inttoptr i64 %t1230 to ptr
  %gml1232 = load i64, ptr %gmp1231, align 1, !alias.scope !4, !noalias !3
  %wp1233 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1232, ptr %wp1233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34e8 word 0x3940f6c8
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %t1235 = add i64 %r1234, 61
  %gmp1236 = inttoptr i64 %t1235 to ptr
  %gml1237 = load i8, ptr %gmp1236, align 1, !alias.scope !4, !noalias !3
  %c1238 = zext i8 %gml1237 to i64
  %wp1239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1238, ptr %wp1239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34ec word 0x37000068
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = and i64 %r1240, 1
  %cmp1242 = icmp ne i64 %t1241, 0
  br i1 %cmp1242, label %L_8021c34f8, label %L_8021c34f0
L_8021c34f0:
  ; @pc 0x8021c34f0 word 0xf9400ac8
  %r1243.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1243 = load i64, ptr %r1243.p, align 8, !alias.scope !3, !noalias !4
  %t1244 = add i64 %r1243, 16
  %gmp1245 = inttoptr i64 %t1244 to ptr
  %gml1246 = load i64, ptr %gmp1245, align 1, !alias.scope !4, !noalias !3
  %wp1247 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1246, ptr %wp1247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34f4 word 0xb5001388
  %r1248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1248 = load i64, ptr %r1248.p, align 8, !alias.scope !3, !noalias !4
  %cmp1249 = icmp ne i64 %r1248, 0
  br i1 %cmp1249, label %L_8021c3764, label %L_8021c34f8
L_8021c34f8:
  ; @pc 0x8021c34f8 word 0xbd4036c8
  %r1250.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1250 = load i64, ptr %r1250.p, align 8, !alias.scope !3, !noalias !4
  %t1251 = add i64 %r1250, 52
  %gmp1252 = inttoptr i64 %t1251 to ptr
  %gml1253 = load i32, ptr %gmp1252, align 1, !alias.scope !4, !noalias !3
  %c1254 = zext i32 %gml1253 to i128
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1254, ptr %wp1255, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34fc word 0x17ffff7c
  br label %L_8021c32ec
L_8021c3500:
  ; @pc 0x8021c3500 word 0xf940f2c8
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %t1257 = add i64 %r1256, 480
  %gmp1258 = inttoptr i64 %t1257 to ptr
  %gml1259 = load i64, ptr %gmp1258, align 1, !alias.scope !4, !noalias !3
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3504 word 0xf940a916
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1261, 336
  %gmp1263 = inttoptr i64 %t1262 to ptr
  %gml1264 = load i64, ptr %gmp1263, align 1, !alias.scope !4, !noalias !3
  %wp1265 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1264, ptr %wp1265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3508 word 0x3940f2c8
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %t1267 = add i64 %r1266, 60
  %gmp1268 = inttoptr i64 %t1267 to ptr
  %gml1269 = load i8, ptr %gmp1268, align 1, !alias.scope !4, !noalias !3
  %c1270 = zext i8 %gml1269 to i64
  %wp1271 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1270, ptr %wp1271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c350c word 0x37000068
  %r1272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1272 = load i64, ptr %r1272.p, align 8, !alias.scope !3, !noalias !4
  %t1273 = and i64 %r1272, 1
  %cmp1274 = icmp ne i64 %t1273, 0
  br i1 %cmp1274, label %L_8021c3518, label %L_8021c3510
L_8021c3510:
  ; @pc 0x8021c3510 word 0xf9400ac8
  %r1275.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1275 = load i64, ptr %r1275.p, align 8, !alias.scope !3, !noalias !4
  %t1276 = add i64 %r1275, 16
  %gmp1277 = inttoptr i64 %t1276 to ptr
  %gml1278 = load i64, ptr %gmp1277, align 1, !alias.scope !4, !noalias !3
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3514 word 0xb50014e8
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %cmp1281 = icmp ne i64 %r1280, 0
  br i1 %cmp1281, label %L_8021c37b0, label %L_8021c3518
L_8021c3518:
  ; @pc 0x8021c3518 word 0xbd403ac8
  %r1282.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1282 = load i64, ptr %r1282.p, align 8, !alias.scope !3, !noalias !4
  %t1283 = add i64 %r1282, 56
  %gmp1284 = inttoptr i64 %t1283 to ptr
  %gml1285 = load i32, ptr %gmp1284, align 1, !alias.scope !4, !noalias !3
  %c1286 = zext i32 %gml1285 to i128
  %wp1287 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1286, ptr %wp1287, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c351c word 0x17ffff74
  br label %L_8021c32ec
L_8021c3520:
  ; @pc 0x8021c3520 word 0xf9400668
  %r1288.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1288 = load i64, ptr %r1288.p, align 8, !alias.scope !3, !noalias !4
  %t1289 = add i64 %r1288, 8
  %gmp1290 = inttoptr i64 %t1289 to ptr
  %gml1291 = load i64, ptr %gmp1290, align 1, !alias.scope !4, !noalias !3
  %wp1292 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1291, ptr %wp1292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3524 word 0xf940a900
  %r1293.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1293 = load i64, ptr %r1293.p, align 8, !alias.scope !3, !noalias !4
  %t1294 = add i64 %r1293, 336
  %gmp1295 = inttoptr i64 %t1294 to ptr
  %gml1296 = load i64, ptr %gmp1295, align 1, !alias.scope !4, !noalias !3
  %wp1297 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1296, ptr %wp1297, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3528
L_8021c3528:
  ; @pc 0x8021c3528 word 0x39420008
  %r1298.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1298 = load i64, ptr %r1298.p, align 8, !alias.scope !3, !noalias !4
  %t1299 = add i64 %r1298, 128
  %gmp1300 = inttoptr i64 %t1299 to ptr
  %gml1301 = load i8, ptr %gmp1300, align 1, !alias.scope !4, !noalias !3
  %c1302 = zext i8 %gml1301 to i64
  %wp1303 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1302, ptr %wp1303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c352c word 0xaa0003f5
  %r1304.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1304 = load i64, ptr %r1304.p, align 8, !alias.scope !3, !noalias !4
  %t1305 = or i64 0, %r1304
  %wp1306 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1305, ptr %wp1306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3530 word 0x36001668
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %t1308 = and i64 %r1307, 1
  %cmp1309 = icmp eq i64 %t1308, 0
  br i1 %cmp1309, label %L_8021c37fc, label %L_8021c3534
L_8021c3534:
  ; @pc 0x8021c3534 word 0xf94026a0
  %r1310.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1310 = load i64, ptr %r1310.p, align 8, !alias.scope !3, !noalias !4
  %t1311 = add i64 %r1310, 72
  %gmp1312 = inttoptr i64 %t1311 to ptr
  %gml1313 = load i64, ptr %gmp1312, align 1, !alias.scope !4, !noalias !3
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1313, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3538
L_8021c3538:
  ; @pc 0x8021c3538 word 0x3941cc08
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %t1316 = add i64 %r1315, 115
  %gmp1317 = inttoptr i64 %t1316 to ptr
  %gml1318 = load i8, ptr %gmp1317, align 1, !alias.scope !4, !noalias !3
  %c1319 = zext i8 %gml1318 to i64
  %wp1320 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1319, ptr %wp1320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c353c word 0xaa0003f5
  %r1321.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1321 = load i64, ptr %r1321.p, align 8, !alias.scope !3, !noalias !4
  %t1322 = or i64 0, %r1321
  %wp1323 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1322, ptr %wp1323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3540 word 0x360051a8
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %t1325 = and i64 %r1324, 1
  %cmp1326 = icmp eq i64 %t1325, 0
  br i1 %cmp1326, label %L_8021c3f74, label %L_8021c3544
L_8021c3544:
  ; @pc 0x8021c3544 word 0xbd404ea0
  %r1327.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1327 = load i64, ptr %r1327.p, align 8, !alias.scope !3, !noalias !4
  %t1328 = add i64 %r1327, 76
  %gmp1329 = inttoptr i64 %t1328 to ptr
  %gml1330 = load i32, ptr %gmp1329, align 1, !alias.scope !4, !noalias !3
  %c1331 = zext i32 %gml1330 to i128
  %wp1332 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1331, ptr %wp1332, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3548 word 0x1e200908
  call void @rt_fp_op_s(ptr %c, i32 2, i32 8, i32 8, i32 0)
  ; @pc 0x8021c354c word 0xf9404e73
  %r1333.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1333 = load i64, ptr %r1333.p, align 8, !alias.scope !3, !noalias !4
  %t1334 = add i64 %r1333, 152
  %gmp1335 = inttoptr i64 %t1334 to ptr
  %gml1336 = load i64, ptr %gmp1335, align 1, !alias.scope !4, !noalias !3
  %wp1337 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1336, ptr %wp1337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3550 word 0xbd401260
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %t1339 = add i64 %r1338, 16
  %gmp1340 = inttoptr i64 %t1339 to ptr
  %gml1341 = load i32, ptr %gmp1340, align 1, !alias.scope !4, !noalias !3
  %c1342 = zext i32 %gml1341 to i128
  %wp1343 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1342, ptr %wp1343, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3554 word 0x1e202008
  %fcmp1344 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3558 word 0x54005329
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %fsh1348 = lshr i64 %r1346, 29
  %ftr1349 = trunc i64 %fsh1348 to i1
  %fsh1350 = lshr i64 %r1346, 30
  %ftr1351 = trunc i64 %fsh1350 to i1
  %fnz1352 = xor i1 %ftr1351, true
  %fhi1353 = and i1 %ftr1349, %fnz1352
  %cond1347 = xor i1 %fhi1353, true
  br i1 %cond1347, label %L_8021c3fbc, label %L_8021c355c_ft
L_8021c357c:
  ; @pc 0x8021c357c word 0x3941e008
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %t1383 = add i64 %r1382, 120
  %gmp1384 = inttoptr i64 %t1383 to ptr
  %gml1385 = load i8, ptr %gmp1384, align 1, !alias.scope !4, !noalias !3
  %c1386 = zext i8 %gml1385 to i64
  %wp1387 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1386, ptr %wp1387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3580 word 0xaa0003f4
  %r1388.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1388 = load i64, ptr %r1388.p, align 8, !alias.scope !3, !noalias !4
  %t1389 = or i64 0, %r1388
  %wp1390 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1389, ptr %wp1390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3584 word 0x360054e8
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %t1392 = and i64 %r1391, 1
  %cmp1393 = icmp eq i64 %t1392, 0
  br i1 %cmp1393, label %L_8021c4020, label %L_8021c3588
L_8021c3588:
  ; @pc 0x8021c3588 word 0xbd404280
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %t1395 = add i64 %r1394, 64
  %gmp1396 = inttoptr i64 %t1395 to ptr
  %gml1397 = load i32, ptr %gmp1396, align 1, !alias.scope !4, !noalias !3
  %c1398 = zext i32 %gml1397 to i128
  %wp1399 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1398, ptr %wp1399, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c358c word 0x14000052
  br label %L_8021c36d4
L_8021c3590:
  ; @pc 0x8021c3590 word 0xf9400668
  %r1400.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1400 = load i64, ptr %r1400.p, align 8, !alias.scope !3, !noalias !4
  %t1401 = add i64 %r1400, 8
  %gmp1402 = inttoptr i64 %t1401 to ptr
  %gml1403 = load i64, ptr %gmp1402, align 1, !alias.scope !4, !noalias !3
  %wp1404 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1403, ptr %wp1404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3594 word 0xf940a900
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %t1406 = add i64 %r1405, 336
  %gmp1407 = inttoptr i64 %t1406 to ptr
  %gml1408 = load i64, ptr %gmp1407, align 1, !alias.scope !4, !noalias !3
  %wp1409 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1408, ptr %wp1409, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3598
L_8021c3598:
  ; @pc 0x8021c3598 word 0x39420008
  %r1410.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1410 = load i64, ptr %r1410.p, align 8, !alias.scope !3, !noalias !4
  %t1411 = add i64 %r1410, 128
  %gmp1412 = inttoptr i64 %t1411 to ptr
  %gml1413 = load i8, ptr %gmp1412, align 1, !alias.scope !4, !noalias !3
  %c1414 = zext i8 %gml1413 to i64
  %wp1415 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1414, ptr %wp1415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c359c word 0xaa0003f5
  %r1416.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1416 = load i64, ptr %r1416.p, align 8, !alias.scope !3, !noalias !4
  %t1417 = or i64 0, %r1416
  %wp1418 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1417, ptr %wp1418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35a0 word 0x360015a8
  %r1419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1419 = load i64, ptr %r1419.p, align 8, !alias.scope !3, !noalias !4
  %t1420 = and i64 %r1419, 1
  %cmp1421 = icmp eq i64 %t1420, 0
  br i1 %cmp1421, label %L_8021c3854, label %L_8021c35a4
L_8021c35a4:
  ; @pc 0x8021c35a4 word 0xf94026a0
  %r1422.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1422 = load i64, ptr %r1422.p, align 8, !alias.scope !3, !noalias !4
  %t1423 = add i64 %r1422, 72
  %gmp1424 = inttoptr i64 %t1423 to ptr
  %gml1425 = load i64, ptr %gmp1424, align 1, !alias.scope !4, !noalias !3
  %wp1426 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1425, ptr %wp1426, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c35a8
L_8021c35a8:
  ; @pc 0x8021c35a8 word 0x3941d008
  %r1427.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1427 = load i64, ptr %r1427.p, align 8, !alias.scope !3, !noalias !4
  %t1428 = add i64 %r1427, 116
  %gmp1429 = inttoptr i64 %t1428 to ptr
  %gml1430 = load i8, ptr %gmp1429, align 1, !alias.scope !4, !noalias !3
  %c1431 = zext i8 %gml1430 to i64
  %wp1432 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1431, ptr %wp1432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35ac word 0xaa0003f5
  %r1433.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1433 = load i64, ptr %r1433.p, align 8, !alias.scope !3, !noalias !4
  %t1434 = or i64 0, %r1433
  %wp1435 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1434, ptr %wp1435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35b0 word 0x360055c8
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %t1437 = and i64 %r1436, 1
  %cmp1438 = icmp eq i64 %t1437, 0
  br i1 %cmp1438, label %L_8021c4068, label %L_8021c35b4
L_8021c35b4:
  ; @pc 0x8021c35b4 word 0xbd404aa0
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %t1440 = add i64 %r1439, 72
  %gmp1441 = inttoptr i64 %t1440 to ptr
  %gml1442 = load i32, ptr %gmp1441, align 1, !alias.scope !4, !noalias !3
  %c1443 = zext i32 %gml1442 to i128
  %wp1444 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1443, ptr %wp1444, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35b8 word 0x1e200908
  call void @rt_fp_op_s(ptr %c, i32 2, i32 8, i32 8, i32 0)
  ; @pc 0x8021c35bc word 0xf9404e73
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = add i64 %r1445, 152
  %gmp1447 = inttoptr i64 %t1446 to ptr
  %gml1448 = load i64, ptr %gmp1447, align 1, !alias.scope !4, !noalias !3
  %wp1449 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1448, ptr %wp1449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35c0 word 0xbd401260
  %r1450.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1450 = load i64, ptr %r1450.p, align 8, !alias.scope !3, !noalias !4
  %t1451 = add i64 %r1450, 16
  %gmp1452 = inttoptr i64 %t1451 to ptr
  %gml1453 = load i32, ptr %gmp1452, align 1, !alias.scope !4, !noalias !3
  %c1454 = zext i32 %gml1453 to i128
  %wp1455 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1454, ptr %wp1455, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35c4 word 0x1e202008
  %fcmp1456 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35c8 word 0x54005749
  %r1458.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1458 = load i64, ptr %r1458.p, align 8, !alias.scope !3, !noalias !4
  %fsh1460 = lshr i64 %r1458, 29
  %ftr1461 = trunc i64 %fsh1460 to i1
  %fsh1462 = lshr i64 %r1458, 30
  %ftr1463 = trunc i64 %fsh1462 to i1
  %fnz1464 = xor i1 %ftr1463, true
  %fhi1465 = and i1 %ftr1461, %fnz1464
  %cond1459 = xor i1 %fhi1465, true
  br i1 %cond1459, label %L_8021c40b0, label %L_8021c35cc_ft
L_8021c35ec:
  ; @pc 0x8021c35ec word 0x3941e408
  %r1494.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1494 = load i64, ptr %r1494.p, align 8, !alias.scope !3, !noalias !4
  %t1495 = add i64 %r1494, 121
  %gmp1496 = inttoptr i64 %t1495 to ptr
  %gml1497 = load i8, ptr %gmp1496, align 1, !alias.scope !4, !noalias !3
  %c1498 = zext i8 %gml1497 to i64
  %wp1499 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1498, ptr %wp1499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35f0 word 0xaa0003f4
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %t1501 = or i64 0, %r1500
  %wp1502 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1501, ptr %wp1502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35f4 word 0x36005988
  %r1503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1503 = load i64, ptr %r1503.p, align 8, !alias.scope !3, !noalias !4
  %t1504 = and i64 %r1503, 1
  %cmp1505 = icmp eq i64 %t1504, 0
  br i1 %cmp1505, label %L_8021c4124, label %L_8021c35f8
L_8021c35f8:
  ; @pc 0x8021c35f8 word 0xbd403e80
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %t1507 = add i64 %r1506, 60
  %gmp1508 = inttoptr i64 %t1507 to ptr
  %gml1509 = load i32, ptr %gmp1508, align 1, !alias.scope !4, !noalias !3
  %c1510 = zext i32 %gml1509 to i128
  %wp1511 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1510, ptr %wp1511, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35fc word 0x14000036
  br label %L_8021c36d4
L_8021c3600:
  ; @pc 0x8021c3600 word 0xf9400668
  %r1512.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1512 = load i64, ptr %r1512.p, align 8, !alias.scope !3, !noalias !4
  %t1513 = add i64 %r1512, 8
  %gmp1514 = inttoptr i64 %t1513 to ptr
  %gml1515 = load i64, ptr %gmp1514, align 1, !alias.scope !4, !noalias !3
  %wp1516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1515, ptr %wp1516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3604 word 0xf940a900
  %r1517.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1517 = load i64, ptr %r1517.p, align 8, !alias.scope !3, !noalias !4
  %t1518 = add i64 %r1517, 336
  %gmp1519 = inttoptr i64 %t1518 to ptr
  %gml1520 = load i64, ptr %gmp1519, align 1, !alias.scope !4, !noalias !3
  %wp1521 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1520, ptr %wp1521, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3608
L_8021c3608:
  ; @pc 0x8021c3608 word 0x39420008
  %r1522.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1522 = load i64, ptr %r1522.p, align 8, !alias.scope !3, !noalias !4
  %t1523 = add i64 %r1522, 128
  %gmp1524 = inttoptr i64 %t1523 to ptr
  %gml1525 = load i8, ptr %gmp1524, align 1, !alias.scope !4, !noalias !3
  %c1526 = zext i8 %gml1525 to i64
  %wp1527 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1526, ptr %wp1527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c360c word 0xaa0003f5
  %r1528.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1528 = load i64, ptr %r1528.p, align 8, !alias.scope !3, !noalias !4
  %t1529 = or i64 0, %r1528
  %wp1530 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1529, ptr %wp1530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3610 word 0x360014e8
  %r1531.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1531 = load i64, ptr %r1531.p, align 8, !alias.scope !3, !noalias !4
  %t1532 = and i64 %r1531, 1
  %cmp1533 = icmp eq i64 %t1532, 0
  br i1 %cmp1533, label %L_8021c38ac, label %L_8021c3614
L_8021c3614:
  ; @pc 0x8021c3614 word 0xf94026a0
  %r1534.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1534 = load i64, ptr %r1534.p, align 8, !alias.scope !3, !noalias !4
  %t1535 = add i64 %r1534, 72
  %gmp1536 = inttoptr i64 %t1535 to ptr
  %gml1537 = load i64, ptr %gmp1536, align 1, !alias.scope !4, !noalias !3
  %wp1538 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1537, ptr %wp1538, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3618
L_8021c3618:
  ; @pc 0x8021c3618 word 0x3941c808
  %r1539.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1539 = load i64, ptr %r1539.p, align 8, !alias.scope !3, !noalias !4
  %t1540 = add i64 %r1539, 114
  %gmp1541 = inttoptr i64 %t1540 to ptr
  %gml1542 = load i8, ptr %gmp1541, align 1, !alias.scope !4, !noalias !3
  %c1543 = zext i8 %gml1542 to i64
  %wp1544 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1543, ptr %wp1544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c361c word 0xaa0003f5
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %t1546 = or i64 0, %r1545
  %wp1547 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1546, ptr %wp1547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3620 word 0x36005a68
  %r1548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1548 = load i64, ptr %r1548.p, align 8, !alias.scope !3, !noalias !4
  %t1549 = and i64 %r1548, 1
  %cmp1550 = icmp eq i64 %t1549, 0
  br i1 %cmp1550, label %L_8021c416c, label %L_8021c3624
L_8021c3624:
  ; @pc 0x8021c3624 word 0xf9404e73
  %r1551.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1551 = load i64, ptr %r1551.p, align 8, !alias.scope !3, !noalias !4
  %t1552 = add i64 %r1551, 152
  %gmp1553 = inttoptr i64 %t1552 to ptr
  %gml1554 = load i64, ptr %gmp1553, align 1, !alias.scope !4, !noalias !3
  %wp1555 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1554, ptr %wp1555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3628 word 0xbd4052a0
  %r1556.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1556 = load i64, ptr %r1556.p, align 8, !alias.scope !3, !noalias !4
  %t1557 = add i64 %r1556, 80
  %gmp1558 = inttoptr i64 %t1557 to ptr
  %gml1559 = load i32, ptr %gmp1558, align 1, !alias.scope !4, !noalias !3
  %c1560 = zext i32 %gml1559 to i128
  %wp1561 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1560, ptr %wp1561, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c362c word 0xbd401261
  %r1562.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1562 = load i64, ptr %r1562.p, align 8, !alias.scope !3, !noalias !4
  %t1563 = add i64 %r1562, 16
  %gmp1564 = inttoptr i64 %t1563 to ptr
  %gml1565 = load i32, ptr %gmp1564, align 1, !alias.scope !4, !noalias !3
  %c1566 = zext i32 %gml1565 to i128
  %wp1567 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1566, ptr %wp1567, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3630 word 0x1e202028
  %fcmp1568 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 1)
  %wp1569 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1568, ptr %wp1569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3634 word 0x54005c09
  %r1570.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1570 = load i64, ptr %r1570.p, align 8, !alias.scope !3, !noalias !4
  %fsh1572 = lshr i64 %r1570, 29
  %ftr1573 = trunc i64 %fsh1572 to i1
  %fsh1574 = lshr i64 %r1570, 30
  %ftr1575 = trunc i64 %fsh1574 to i1
  %fnz1576 = xor i1 %ftr1575, true
  %fhi1577 = and i1 %ftr1573, %fnz1576
  %cond1571 = xor i1 %fhi1577, true
  br i1 %cond1571, label %L_8021c41b4, label %L_8021c3638_ft
L_8021c3658:
  ; @pc 0x8021c3658 word 0x3941dc08
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = add i64 %r1606, 119
  %gmp1608 = inttoptr i64 %t1607 to ptr
  %gml1609 = load i8, ptr %gmp1608, align 1, !alias.scope !4, !noalias !3
  %c1610 = zext i8 %gml1609 to i64
  %wp1611 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1610, ptr %wp1611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c365c word 0xaa0003f4
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %t1613 = or i64 0, %r1612
  %wp1614 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1613, ptr %wp1614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3660 word 0x36005ee8
  %r1615.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1615 = load i64, ptr %r1615.p, align 8, !alias.scope !3, !noalias !4
  %t1616 = and i64 %r1615, 1
  %cmp1617 = icmp eq i64 %t1616, 0
  br i1 %cmp1617, label %L_8021c423c, label %L_8021c3664
L_8021c3664:
  ; @pc 0x8021c3664 word 0xbd404681
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %t1619 = add i64 %r1618, 68
  %gmp1620 = inttoptr i64 %t1619 to ptr
  %gml1621 = load i32, ptr %gmp1620, align 1, !alias.scope !4, !noalias !3
  %c1622 = zext i32 %gml1621 to i128
  %wp1623 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1622, ptr %wp1623, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3668
L_8021c3668:
  ; @pc 0x8021c3668 word 0x1e210803
  call void @rt_fp_op_s(ptr %c, i32 2, i32 3, i32 0, i32 1)
  ; @pc 0x8021c366c word 0x1e230908
  call void @rt_fp_op_s(ptr %c, i32 2, i32 8, i32 8, i32 3)
  ; @pc 0x8021c3670 word 0x17ffff3d
  br label %L_8021c3364
L_8021c3674:
  ; @pc 0x8021c3674 word 0xf9400668
  %r1624.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1624 = load i64, ptr %r1624.p, align 8, !alias.scope !3, !noalias !4
  %t1625 = add i64 %r1624, 8
  %gmp1626 = inttoptr i64 %t1625 to ptr
  %gml1627 = load i64, ptr %gmp1626, align 1, !alias.scope !4, !noalias !3
  %wp1628 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1627, ptr %wp1628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3678 word 0xf940a900
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %t1630 = add i64 %r1629, 336
  %gmp1631 = inttoptr i64 %t1630 to ptr
  %gml1632 = load i64, ptr %gmp1631, align 1, !alias.scope !4, !noalias !3
  %wp1633 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1632, ptr %wp1633, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c367c
L_8021c367c:
  ; @pc 0x8021c367c word 0x39420008
  %r1634.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1634 = load i64, ptr %r1634.p, align 8, !alias.scope !3, !noalias !4
  %t1635 = add i64 %r1634, 128
  %gmp1636 = inttoptr i64 %t1635 to ptr
  %gml1637 = load i8, ptr %gmp1636, align 1, !alias.scope !4, !noalias !3
  %c1638 = zext i8 %gml1637 to i64
  %wp1639 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1638, ptr %wp1639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3680 word 0xaa0003f4
  %r1640.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1640 = load i64, ptr %r1640.p, align 8, !alias.scope !3, !noalias !4
  %t1641 = or i64 0, %r1640
  %wp1642 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1641, ptr %wp1642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3684 word 0x36001408
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %t1644 = and i64 %r1643, 1
  %cmp1645 = icmp eq i64 %t1644, 0
  br i1 %cmp1645, label %L_8021c3904, label %L_8021c3688
L_8021c3688:
  ; @pc 0x8021c3688 word 0xf9402680
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %t1647 = add i64 %r1646, 72
  %gmp1648 = inttoptr i64 %t1647 to ptr
  %gml1649 = load i64, ptr %gmp1648, align 1, !alias.scope !4, !noalias !3
  %wp1650 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1649, ptr %wp1650, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c368c
L_8021c368c:
  ; @pc 0x8021c368c word 0x3941d408
  %r1651.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1651 = load i64, ptr %r1651.p, align 8, !alias.scope !3, !noalias !4
  %t1652 = add i64 %r1651, 117
  %gmp1653 = inttoptr i64 %t1652 to ptr
  %gml1654 = load i8, ptr %gmp1653, align 1, !alias.scope !4, !noalias !3
  %c1655 = zext i8 %gml1654 to i64
  %wp1656 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1655, ptr %wp1656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3690 word 0xaa0003f4
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %t1658 = or i64 0, %r1657
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3694 word 0x36005fc8
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = and i64 %r1660, 1
  %cmp1662 = icmp eq i64 %t1661, 0
  br i1 %cmp1662, label %L_8021c428c, label %L_8021c3698
L_8021c3698:
  ; @pc 0x8021c3698 word 0xbd405a80
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %t1664 = add i64 %r1663, 88
  %gmp1665 = inttoptr i64 %t1664 to ptr
  %gml1666 = load i32, ptr %gmp1665, align 1, !alias.scope !4, !noalias !3
  %c1667 = zext i32 %gml1666 to i128
  %wp1668 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1667, ptr %wp1668, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c369c word 0x1400000b
  br label %L_8021c36c8
L_8021c36a0:
  ; @pc 0x8021c36a0 word 0xf9400668
  %r1669.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1669 = load i64, ptr %r1669.p, align 8, !alias.scope !3, !noalias !4
  %t1670 = add i64 %r1669, 8
  %gmp1671 = inttoptr i64 %t1670 to ptr
  %gml1672 = load i64, ptr %gmp1671, align 1, !alias.scope !4, !noalias !3
  %wp1673 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1672, ptr %wp1673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36a4 word 0xf940a900
  %r1674.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1674 = load i64, ptr %r1674.p, align 8, !alias.scope !3, !noalias !4
  %t1675 = add i64 %r1674, 336
  %gmp1676 = inttoptr i64 %t1675 to ptr
  %gml1677 = load i64, ptr %gmp1676, align 1, !alias.scope !4, !noalias !3
  %wp1678 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1677, ptr %wp1678, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c36a8
L_8021c36a8:
  ; @pc 0x8021c36a8 word 0x39420008
  %r1679.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1679 = load i64, ptr %r1679.p, align 8, !alias.scope !3, !noalias !4
  %t1680 = add i64 %r1679, 128
  %gmp1681 = inttoptr i64 %t1680 to ptr
  %gml1682 = load i8, ptr %gmp1681, align 1, !alias.scope !4, !noalias !3
  %c1683 = zext i8 %gml1682 to i64
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36ac word 0xaa0003f4
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %t1686 = or i64 0, %r1685
  %wp1687 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1686, ptr %wp1687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36b0 word 0x36001568
  %r1688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1688 = load i64, ptr %r1688.p, align 8, !alias.scope !3, !noalias !4
  %t1689 = and i64 %r1688, 1
  %cmp1690 = icmp eq i64 %t1689, 0
  br i1 %cmp1690, label %L_8021c395c, label %L_8021c36b4
L_8021c36b4:
  ; @pc 0x8021c36b4 word 0xf9402680
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %t1692 = add i64 %r1691, 72
  %gmp1693 = inttoptr i64 %t1692 to ptr
  %gml1694 = load i64, ptr %gmp1693, align 1, !alias.scope !4, !noalias !3
  %wp1695 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1694, ptr %wp1695, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c36b8
L_8021c36b8:
  ; @pc 0x8021c36b8 word 0x3941d808
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %t1697 = add i64 %r1696, 118
  %gmp1698 = inttoptr i64 %t1697 to ptr
  %gml1699 = load i8, ptr %gmp1698, align 1, !alias.scope !4, !noalias !3
  %c1700 = zext i8 %gml1699 to i64
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1700, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36bc word 0xaa0003f4
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %t1703 = or i64 0, %r1702
  %wp1704 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1703, ptr %wp1704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36c0 word 0x360060a8
  %r1705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1705 = load i64, ptr %r1705.p, align 8, !alias.scope !3, !noalias !4
  %t1706 = and i64 %r1705, 1
  %cmp1707 = icmp eq i64 %t1706, 0
  br i1 %cmp1707, label %L_8021c42d4, label %L_8021c36c4
L_8021c36c4:
  ; @pc 0x8021c36c4 word 0xbd405680
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = add i64 %r1708, 84
  %gmp1710 = inttoptr i64 %t1709 to ptr
  %gml1711 = load i32, ptr %gmp1710, align 1, !alias.scope !4, !noalias !3
  %c1712 = zext i32 %gml1711 to i128
  %wp1713 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1712, ptr %wp1713, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c36c8
L_8021c36c8:
  ; @pc 0x8021c36c8 word 0x1e202908
  call void @rt_fp_op_s(ptr %c, i32 0, i32 8, i32 8, i32 0)
  ; @pc 0x8021c36cc word 0x17ffff26
  br label %L_8021c3364
L_8021c36d0:
  ; @pc 0x8021c36d0 word 0xbd40b260
  %r1714.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1714 = load i64, ptr %r1714.p, align 8, !alias.scope !3, !noalias !4
  %t1715 = add i64 %r1714, 176
  %gmp1716 = inttoptr i64 %t1715 to ptr
  %gml1717 = load i32, ptr %gmp1716, align 1, !alias.scope !4, !noalias !3
  %c1718 = zext i32 %gml1717 to i128
  %wp1719 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1718, ptr %wp1719, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c36d4
L_8021c36d4:
  ; @pc 0x8021c36d4 word 0x1e200908
  call void @rt_fp_op_s(ptr %c, i32 2, i32 8, i32 8, i32 0)
  ; @pc 0x8021c36d8 word 0x17ffff23
  br label %L_8021c3364
L_8021c36dc:
  ; @pc 0x8021c36dc word 0x7101129f
  %r1720.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1720 = load i64, ptr %r1720.p, align 8, !alias.scope !3, !noalias !4
  %c1721 = trunc i64 %r1720 to i32
  %t1722 = sub i32 %c1721, 68
  %fn1723 = icmp slt i32 %t1722, 0
  %fz1724 = icmp eq i32 %t1722, 0
  %fc1725 = icmp uge i32 %c1721, 68
  %fx11726 = xor i32 %c1721, 68
  %fx21727 = xor i32 %c1721, %t1722
  %fva1728 = and i32 %fx11726, %fx21727
  %fv1729 = icmp slt i32 %fva1728, 0
  %nz1730 = zext i1 %fn1723 to i64
  %zz1731 = zext i1 %fz1724 to i64
  %cz1732 = zext i1 %fc1725 to i64
  %vz1733 = zext i1 %fv1729 to i64
  %ns1734 = shl i64 %nz1730, 31
  %zs1735 = shl i64 %zz1731, 30
  %cs1736 = shl i64 %cz1732, 29
  %vs1737 = shl i64 %vz1733, 28
  %nzor1738 = or i64 %ns1734, %zs1735
  %cvor1739 = or i64 %cs1736, %vs1737
  %nzcv1740 = or i64 %nzor1738, %cvor1739
  %wp1741 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1740, ptr %wp1741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36e0 word 0x540019a1
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %fsh1744 = lshr i64 %r1742, 30
  %ftr1745 = trunc i64 %fsh1744 to i1
  %cond1743 = xor i1 %ftr1745, true
  br i1 %cond1743, label %L_8021c3a14, label %L_8021c36e4_ft
L_8021c36fc:
  ; @pc 0x8021c36fc word 0x39424c08
  %r1768.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1768 = load i64, ptr %r1768.p, align 8, !alias.scope !3, !noalias !4
  %t1769 = add i64 %r1768, 147
  %gmp1770 = inttoptr i64 %t1769 to ptr
  %gml1771 = load i8, ptr %gmp1770, align 1, !alias.scope !4, !noalias !3
  %c1772 = zext i8 %gml1771 to i64
  %wp1773 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1772, ptr %wp1773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3700 word 0xaa0003f6
  %r1774.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1774 = load i64, ptr %r1774.p, align 8, !alias.scope !3, !noalias !4
  %t1775 = or i64 0, %r1774
  %wp1776 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1775, ptr %wp1776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3704 word 0x37000068
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %t1778 = and i64 %r1777, 1
  %cmp1779 = icmp ne i64 %t1778, 0
  br i1 %cmp1779, label %L_8021c3710, label %L_8021c3708_ft
L_8021c3710:
  ; @pc 0x8021c3710 word 0xbd4082c8
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %t1788 = add i64 %r1787, 128
  %gmp1789 = inttoptr i64 %t1788 to ptr
  %gml1790 = load i32, ptr %gmp1789, align 1, !alias.scope !4, !noalias !3
  %c1791 = zext i32 %gml1790 to i128
  %wp1792 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1791, ptr %wp1792, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3714 word 0x17ffff14
  br label %L_8021c3364
L_8021c3718:
  ; @pc 0x8021c3718 word 0xf9400ec8
  %r1793.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1793 = load i64, ptr %r1793.p, align 8, !alias.scope !3, !noalias !4
  %t1794 = add i64 %r1793, 24
  %gmp1795 = inttoptr i64 %t1794 to ptr
  %gml1796 = load i64, ptr %gmp1795, align 1, !alias.scope !4, !noalias !3
  %wp1797 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1796, ptr %wp1797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c371c word 0xb4ffede8
  %r1798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1798 = load i64, ptr %r1798.p, align 8, !alias.scope !3, !noalias !4
  %cmp1799 = icmp eq i64 %r1798, 0
  br i1 %cmp1799, label %L_8021c34d8, label %L_8021c3720_ft
L_8021c3764:
  ; @pc 0x8021c3764 word 0xf9400ec8
  %r1878.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1878 = load i64, ptr %r1878.p, align 8, !alias.scope !3, !noalias !4
  %t1879 = add i64 %r1878, 24
  %gmp1880 = inttoptr i64 %t1879 to ptr
  %gml1881 = load i64, ptr %gmp1880, align 1, !alias.scope !4, !noalias !3
  %wp1882 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1881, ptr %wp1882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3768 word 0xb4ffec88
  %r1883.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1883 = load i64, ptr %r1883.p, align 8, !alias.scope !3, !noalias !4
  %cmp1884 = icmp eq i64 %r1883, 0
  br i1 %cmp1884, label %L_8021c34f8, label %L_8021c376c_ft
L_8021c37b0:
  ; @pc 0x8021c37b0 word 0xf9400ec8
  %r1963.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1963 = load i64, ptr %r1963.p, align 8, !alias.scope !3, !noalias !4
  %t1964 = add i64 %r1963, 24
  %gmp1965 = inttoptr i64 %t1964 to ptr
  %gml1966 = load i64, ptr %gmp1965, align 1, !alias.scope !4, !noalias !3
  %wp1967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1966, ptr %wp1967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37b4 word 0xb4ffeb28
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %cmp1969 = icmp eq i64 %r1968, 0
  br i1 %cmp1969, label %L_8021c3518, label %L_8021c37b8_ft
L_8021c37fc:
  ; @pc 0x8021c37fc word 0xf9400aa8
  %r2048.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2048 = load i64, ptr %r2048.p, align 8, !alias.scope !3, !noalias !4
  %t2049 = add i64 %r2048, 16
  %gmp2050 = inttoptr i64 %t2049 to ptr
  %gml2051 = load i64, ptr %gmp2050, align 1, !alias.scope !4, !noalias !3
  %wp2052 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2051, ptr %wp2052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3800 word 0xb4ffe9a8
  %r2053.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2053 = load i64, ptr %r2053.p, align 8, !alias.scope !3, !noalias !4
  %cmp2054 = icmp eq i64 %r2053, 0
  br i1 %cmp2054, label %L_8021c3534, label %L_8021c3804_ft
L_8021c3834:
  ; @pc 0x8021c3834 word 0xf9400288
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %gmp2123 = inttoptr i64 %r2122 to ptr
  %gml2124 = load i64, ptr %gmp2123, align 1, !alias.scope !4, !noalias !3
  %wp2125 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2124, ptr %wp2125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3838 word 0xf000bca1
  %wp2126 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419875840, ptr %wp2126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c383c word 0xaa1403e0
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %t2128 = or i64 0, %r2127
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3840 word 0xf9400108
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %gmp2131 = inttoptr i64 %r2130 to ptr
  %gml2132 = load i64, ptr %gmp2131, align 1, !alias.scope !4, !noalias !3
  %wp2133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2132, ptr %wp2133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3844 word 0xf9414021
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %t2135 = add i64 %r2134, 640
  %gmp2136 = inttoptr i64 %t2135 to ptr
  %gml2137 = load i64, ptr %gmp2136, align 1, !alias.scope !4, !noalias !3
  %wp2138 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2137, ptr %wp2138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3848 word 0xd63f0100
  %r2139.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2139 = load i64, ptr %r2139.p, align 8, !alias.scope !3, !noalias !4
  %fp2140 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2139, ptr %fp2140, align 8, !alias.scope !3, !noalias !4
  %wp2141 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142220, ptr %wp2141, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c384c word 0xb5ffe6e0
  %r2142.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2142 = load i64, ptr %r2142.p, align 8, !alias.scope !3, !noalias !4
  %cmp2143 = icmp ne i64 %r2142, 0
  br i1 %cmp2143, label %L_8021c3528, label %L_8021c3850_ft
L_8021c3854:
  ; @pc 0x8021c3854 word 0xf9400aa8
  %r2144.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2144 = load i64, ptr %r2144.p, align 8, !alias.scope !3, !noalias !4
  %t2145 = add i64 %r2144, 16
  %gmp2146 = inttoptr i64 %t2145 to ptr
  %gml2147 = load i64, ptr %gmp2146, align 1, !alias.scope !4, !noalias !3
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3858 word 0xb4ffea68
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %cmp2150 = icmp eq i64 %r2149, 0
  br i1 %cmp2150, label %L_8021c35a4, label %L_8021c385c_ft
L_8021c388c:
  ; @pc 0x8021c388c word 0xf9400288
  %r2218.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2218 = load i64, ptr %r2218.p, align 8, !alias.scope !3, !noalias !4
  %gmp2219 = inttoptr i64 %r2218 to ptr
  %gml2220 = load i64, ptr %gmp2219, align 1, !alias.scope !4, !noalias !3
  %wp2221 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2220, ptr %wp2221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3890 word 0xf000bca1
  %wp2222 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419875840, ptr %wp2222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3894 word 0xaa1403e0
  %r2223.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2223 = load i64, ptr %r2223.p, align 8, !alias.scope !3, !noalias !4
  %t2224 = or i64 0, %r2223
  %wp2225 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2224, ptr %wp2225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3898 word 0xf9400108
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %gmp2227 = inttoptr i64 %r2226 to ptr
  %gml2228 = load i64, ptr %gmp2227, align 1, !alias.scope !4, !noalias !3
  %wp2229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2228, ptr %wp2229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c389c word 0xf9414021
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %t2231 = add i64 %r2230, 640
  %gmp2232 = inttoptr i64 %t2231 to ptr
  %gml2233 = load i64, ptr %gmp2232, align 1, !alias.scope !4, !noalias !3
  %wp2234 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2233, ptr %wp2234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38a0 word 0xd63f0100
  %r2235.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2235 = load i64, ptr %r2235.p, align 8, !alias.scope !3, !noalias !4
  %fp2236 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2235, ptr %fp2236, align 8, !alias.scope !3, !noalias !4
  %wp2237 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142308, ptr %wp2237, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c38a4 word 0xb5ffe7a0
  %r2238.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2238 = load i64, ptr %r2238.p, align 8, !alias.scope !3, !noalias !4
  %cmp2239 = icmp ne i64 %r2238, 0
  br i1 %cmp2239, label %L_8021c3598, label %L_8021c38a8_ft
L_8021c38ac:
  ; @pc 0x8021c38ac word 0xf9400aa8
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = add i64 %r2240, 16
  %gmp2242 = inttoptr i64 %t2241 to ptr
  %gml2243 = load i64, ptr %gmp2242, align 1, !alias.scope !4, !noalias !3
  %wp2244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2243, ptr %wp2244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38b0 word 0xb4ffeb28
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %cmp2246 = icmp eq i64 %r2245, 0
  br i1 %cmp2246, label %L_8021c3614, label %L_8021c38b4_ft
L_8021c38e4:
  ; @pc 0x8021c38e4 word 0xf9400288
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %gmp2315 = inttoptr i64 %r2314 to ptr
  %gml2316 = load i64, ptr %gmp2315, align 1, !alias.scope !4, !noalias !3
  %wp2317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2316, ptr %wp2317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38e8 word 0xf000bca1
  %wp2318 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419875840, ptr %wp2318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38ec word 0xaa1403e0
  %r2319.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2319 = load i64, ptr %r2319.p, align 8, !alias.scope !3, !noalias !4
  %t2320 = or i64 0, %r2319
  %wp2321 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2320, ptr %wp2321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38f0 word 0xf9400108
  %r2322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2322 = load i64, ptr %r2322.p, align 8, !alias.scope !3, !noalias !4
  %gmp2323 = inttoptr i64 %r2322 to ptr
  %gml2324 = load i64, ptr %gmp2323, align 1, !alias.scope !4, !noalias !3
  %wp2325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2324, ptr %wp2325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38f4 word 0xf9414021
  %r2326.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2326 = load i64, ptr %r2326.p, align 8, !alias.scope !3, !noalias !4
  %t2327 = add i64 %r2326, 640
  %gmp2328 = inttoptr i64 %t2327 to ptr
  %gml2329 = load i64, ptr %gmp2328, align 1, !alias.scope !4, !noalias !3
  %wp2330 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2329, ptr %wp2330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38f8 word 0xd63f0100
  %r2331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2331 = load i64, ptr %r2331.p, align 8, !alias.scope !3, !noalias !4
  %fp2332 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2331, ptr %fp2332, align 8, !alias.scope !3, !noalias !4
  %wp2333 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142396, ptr %wp2333, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c38fc word 0xb5ffe860
  %r2334.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2334 = load i64, ptr %r2334.p, align 8, !alias.scope !3, !noalias !4
  %cmp2335 = icmp ne i64 %r2334, 0
  br i1 %cmp2335, label %L_8021c3608, label %L_8021c3900_ft
L_8021c3904:
  ; @pc 0x8021c3904 word 0xf9400a88
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %t2337 = add i64 %r2336, 16
  %gmp2338 = inttoptr i64 %t2337 to ptr
  %gml2339 = load i64, ptr %gmp2338, align 1, !alias.scope !4, !noalias !3
  %wp2340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2339, ptr %wp2340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3908 word 0xb4ffec08
  %r2341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2341 = load i64, ptr %r2341.p, align 8, !alias.scope !3, !noalias !4
  %cmp2342 = icmp eq i64 %r2341, 0
  br i1 %cmp2342, label %L_8021c3688, label %L_8021c390c_ft
L_8021c393c:
  ; @pc 0x8021c393c word 0xf9400268
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %gmp2411 = inttoptr i64 %r2410 to ptr
  %gml2412 = load i64, ptr %gmp2411, align 1, !alias.scope !4, !noalias !3
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2412, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3940 word 0xf000bca1
  %wp2414 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419875840, ptr %wp2414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3944 word 0xaa1303e0
  %r2415.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2415 = load i64, ptr %r2415.p, align 8, !alias.scope !3, !noalias !4
  %t2416 = or i64 0, %r2415
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2416, ptr %wp2417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3948 word 0xf9400108
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %gmp2419 = inttoptr i64 %r2418 to ptr
  %gml2420 = load i64, ptr %gmp2419, align 1, !alias.scope !4, !noalias !3
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c394c word 0xf9414021
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %t2423 = add i64 %r2422, 640
  %gmp2424 = inttoptr i64 %t2423 to ptr
  %gml2425 = load i64, ptr %gmp2424, align 1, !alias.scope !4, !noalias !3
  %wp2426 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2425, ptr %wp2426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3950 word 0xd63f0100
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %fp2428 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2427, ptr %fp2428, align 8, !alias.scope !3, !noalias !4
  %wp2429 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142484, ptr %wp2429, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3954 word 0xb5ffe940
  %r2430.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2430 = load i64, ptr %r2430.p, align 8, !alias.scope !3, !noalias !4
  %cmp2431 = icmp ne i64 %r2430, 0
  br i1 %cmp2431, label %L_8021c367c, label %L_8021c3958_ft
L_8021c395c:
  ; @pc 0x8021c395c word 0xf9400a88
  %r2432.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2432 = load i64, ptr %r2432.p, align 8, !alias.scope !3, !noalias !4
  %t2433 = add i64 %r2432, 16
  %gmp2434 = inttoptr i64 %t2433 to ptr
  %gml2435 = load i64, ptr %gmp2434, align 1, !alias.scope !4, !noalias !3
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3960 word 0xb4ffeaa8
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %cmp2438 = icmp eq i64 %r2437, 0
  br i1 %cmp2438, label %L_8021c36b4, label %L_8021c3964_ft
L_8021c3994:
  ; @pc 0x8021c3994 word 0xf9400268
  %r2506.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2506 = load i64, ptr %r2506.p, align 8, !alias.scope !3, !noalias !4
  %gmp2507 = inttoptr i64 %r2506 to ptr
  %gml2508 = load i64, ptr %gmp2507, align 1, !alias.scope !4, !noalias !3
  %wp2509 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2508, ptr %wp2509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3998 word 0xf000bca1
  %wp2510 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419875840, ptr %wp2510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c399c word 0xaa1303e0
  %r2511.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2511 = load i64, ptr %r2511.p, align 8, !alias.scope !3, !noalias !4
  %t2512 = or i64 0, %r2511
  %wp2513 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2512, ptr %wp2513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39a0 word 0xf9400108
  %r2514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2514 = load i64, ptr %r2514.p, align 8, !alias.scope !3, !noalias !4
  %gmp2515 = inttoptr i64 %r2514 to ptr
  %gml2516 = load i64, ptr %gmp2515, align 1, !alias.scope !4, !noalias !3
  %wp2517 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2516, ptr %wp2517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39a4 word 0xf9414021
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %t2519 = add i64 %r2518, 640
  %gmp2520 = inttoptr i64 %t2519 to ptr
  %gml2521 = load i64, ptr %gmp2520, align 1, !alias.scope !4, !noalias !3
  %wp2522 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2521, ptr %wp2522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39a8 word 0xd63f0100
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %fp2524 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2523, ptr %fp2524, align 8, !alias.scope !3, !noalias !4
  %wp2525 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142572, ptr %wp2525, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c39ac word 0xb5ffe7e0
  %r2526.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2526 = load i64, ptr %r2526.p, align 8, !alias.scope !3, !noalias !4
  %cmp2527 = icmp ne i64 %r2526, 0
  br i1 %cmp2527, label %L_8021c36a8, label %L_8021c39b0_ft
L_8021c39b4:
  ; @pc 0x8021c39b4 word 0xb94016c9
  %r2528.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2528 = load i64, ptr %r2528.p, align 8, !alias.scope !3, !noalias !4
  %t2529 = add i64 %r2528, 20
  %gmp2530 = inttoptr i64 %t2529 to ptr
  %gml2531 = load i32, ptr %gmp2530, align 1, !alias.scope !4, !noalias !3
  %c2532 = zext i32 %gml2531 to i64
  %wp2533 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2532, ptr %wp2533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39b8 word 0x9100c2c8
  %r2534.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2534 = load i64, ptr %r2534.p, align 8, !alias.scope !3, !noalias !4
  %t2535 = add i64 %r2534, 48
  %wp2536 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2535, ptr %wp2536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39bc word 0x5280030a
  %c2537 = zext i32 24 to i64
  %wp2538 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2537, ptr %wp2538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39c0 word 0x9baa212a
  %r2539.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2539 = load i64, ptr %r2539.p, align 8, !alias.scope !3, !noalias !4
  %c2540 = trunc i64 %r2539 to i32
  %c2541 = zext i32 %c2540 to i64
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %c2543 = trunc i64 %r2542 to i32
  %c2544 = zext i32 %c2543 to i64
  %t2545 = mul i64 %c2541, %c2544
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %t2547 = add i64 %r2546, %t2545
  %wp2548 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2547, ptr %wp2548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39c4 word 0x7100213f
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2549 = load i64, ptr %r2549.p, align 8, !alias.scope !3, !noalias !4
  %c2550 = trunc i64 %r2549 to i32
  %t2551 = sub i32 %c2550, 8
  %fn2552 = icmp slt i32 %t2551, 0
  %fz2553 = icmp eq i32 %t2551, 0
  %fc2554 = icmp uge i32 %c2550, 8
  %fx12555 = xor i32 %c2550, 8
  %fx22556 = xor i32 %c2550, %t2551
  %fva2557 = and i32 %fx12555, %fx22556
  %fv2558 = icmp slt i32 %fva2557, 0
  %nz2559 = zext i1 %fn2552 to i64
  %zz2560 = zext i1 %fz2553 to i64
  %cz2561 = zext i1 %fc2554 to i64
  %vz2562 = zext i1 %fv2558 to i64
  %ns2563 = shl i64 %nz2559, 31
  %zs2564 = shl i64 %zz2560, 30
  %cs2565 = shl i64 %cz2561, 29
  %vs2566 = shl i64 %vz2562, 28
  %nzor2567 = or i64 %ns2563, %zs2564
  %cvor2568 = or i64 %cs2565, %vs2566
  %nzcv2569 = or i64 %nzor2567, %cvor2568
  %wp2570 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2569, ptr %wp2570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39c8 word 0x9a883140
  %r2571.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2571 = load i64, ptr %r2571.p, align 8, !alias.scope !3, !noalias !4
  %r2572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2572 = load i64, ptr %r2572.p, align 8, !alias.scope !3, !noalias !4
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %fsh2575 = lshr i64 %r2573, 29
  %ftr2576 = trunc i64 %fsh2575 to i1
  %cond2574 = xor i1 %ftr2576, true
  %sel2577 = select i1 %cond2574, i64 %r2571, i64 %r2572
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39cc word 0x17fffe44
  br label %L_8021c32dc
L_8021c39d0:
  ; @pc 0x8021c39d0 word 0xf9400ec8
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %t2580 = add i64 %r2579, 24
  %gmp2581 = inttoptr i64 %t2580 to ptr
  %gml2582 = load i64, ptr %gmp2581, align 1, !alias.scope !4, !noalias !3
  %wp2583 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2582, ptr %wp2583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39d4 word 0xb4ffe9e8
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %cmp2585 = icmp eq i64 %r2584, 0
  br i1 %cmp2585, label %L_8021c3710, label %L_8021c39d8_ft
L_8021c39f8:
  ; @pc 0x8021c39f8 word 0xf9400288
  %r2640.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2640 = load i64, ptr %r2640.p, align 8, !alias.scope !3, !noalias !4
  %gmp2641 = inttoptr i64 %r2640 to ptr
  %gml2642 = load i64, ptr %gmp2641, align 1, !alias.scope !4, !noalias !3
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2642, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39fc word 0xaa1403e0
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %t2645 = or i64 0, %r2644
  %wp2646 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2645, ptr %wp2646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a00 word 0xaa1303e1
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %t2648 = or i64 0, %r2647
  %wp2649 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2648, ptr %wp2649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a04 word 0xf9400108
  %r2650.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2650 = load i64, ptr %r2650.p, align 8, !alias.scope !3, !noalias !4
  %gmp2651 = inttoptr i64 %r2650 to ptr
  %gml2652 = load i64, ptr %gmp2651, align 1, !alias.scope !4, !noalias !3
  %wp2653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2652, ptr %wp2653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a08 word 0xd63f0100
  %r2654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2654 = load i64, ptr %r2654.p, align 8, !alias.scope !3, !noalias !4
  %fp2655 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2654, ptr %fp2655, align 8, !alias.scope !3, !noalias !4
  %wp2656 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142668, ptr %wp2656, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3a0c word 0xb5ffe780
  %r2657.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2657 = load i64, ptr %r2657.p, align 8, !alias.scope !3, !noalias !4
  %cmp2658 = icmp ne i64 %r2657, 0
  br i1 %cmp2658, label %L_8021c36fc, label %L_8021c3a10_ft
L_8021c3a14:
  ; @pc 0x8021c3a14 word 0x2f00e408
  %wp2659 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 0, ptr %wp2659, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a18 word 0x5100e688
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %c2661 = trunc i64 %r2660 to i32
  %t2662 = sub i32 %c2661, 57
  %c2663 = zext i32 %t2662 to i64
  %wp2664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2663, ptr %wp2664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a1c word 0x7100211f
  %r2665.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2665 = load i64, ptr %r2665.p, align 8, !alias.scope !3, !noalias !4
  %c2666 = trunc i64 %r2665 to i32
  %t2667 = sub i32 %c2666, 8
  %fn2668 = icmp slt i32 %t2667, 0
  %fz2669 = icmp eq i32 %t2667, 0
  %fc2670 = icmp uge i32 %c2666, 8
  %fx12671 = xor i32 %c2666, 8
  %fx22672 = xor i32 %c2666, %t2667
  %fva2673 = and i32 %fx12671, %fx22672
  %fv2674 = icmp slt i32 %fva2673, 0
  %nz2675 = zext i1 %fn2668 to i64
  %zz2676 = zext i1 %fz2669 to i64
  %cz2677 = zext i1 %fc2670 to i64
  %vz2678 = zext i1 %fv2674 to i64
  %ns2679 = shl i64 %nz2675, 31
  %zs2680 = shl i64 %zz2676, 30
  %cs2681 = shl i64 %cz2677, 29
  %vs2682 = shl i64 %vz2678, 28
  %nzor2683 = or i64 %ns2679, %zs2680
  %cvor2684 = or i64 %cs2681, %vs2682
  %nzcv2685 = or i64 %nzor2683, %cvor2684
  %wp2686 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2685, ptr %wp2686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a20 word 0x54ffca28
  %r2687.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2687 = load i64, ptr %r2687.p, align 8, !alias.scope !3, !noalias !4
  %fsh2689 = lshr i64 %r2687, 29
  %ftr2690 = trunc i64 %fsh2689 to i1
  %fsh2691 = lshr i64 %r2687, 30
  %ftr2692 = trunc i64 %fsh2691 to i1
  %fnz2693 = xor i1 %ftr2692, true
  %cond2688 = and i1 %ftr2690, %fnz2693
  br i1 %cond2688, label %L_8021c3364, label %L_8021c3a24_ft
L_8021c3a3c:
  ; @pc 0x8021c3a3c word 0xf9403268
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %t2714 = add i64 %r2713, 96
  %gmp2715 = inttoptr i64 %t2714 to ptr
  %gml2716 = load i64, ptr %gmp2715, align 1, !alias.scope !4, !noalias !3
  %wp2717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2716, ptr %wp2717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a40 word 0xf000bcb5
  %wp2718 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419875840, ptr %wp2718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a44 word 0xf000bcb3
  %wp2719 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 34419875840, ptr %wp2719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a48 word 0xf940e2b5
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = add i64 %r2720, 448
  %gmp2722 = inttoptr i64 %t2721 to ptr
  %gml2723 = load i64, ptr %gmp2722, align 1, !alias.scope !4, !noalias !3
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2723, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a4c word 0xf940a900
  %r2725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2725 = load i64, ptr %r2725.p, align 8, !alias.scope !3, !noalias !4
  %t2726 = add i64 %r2725, 336
  %gmp2727 = inttoptr i64 %t2726 to ptr
  %gml2728 = load i64, ptr %gmp2727, align 1, !alias.scope !4, !noalias !3
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2728, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a50 word 0xf940de73
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %t2731 = add i64 %r2730, 440
  %gmp2732 = inttoptr i64 %t2731 to ptr
  %gml2733 = load i64, ptr %gmp2732, align 1, !alias.scope !4, !noalias !3
  %wp2734 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2733, ptr %wp2734, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3a54
L_8021c3a54:
  ; @pc 0x8021c3a54 word 0x39423808
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %t2736 = add i64 %r2735, 142
  %gmp2737 = inttoptr i64 %t2736 to ptr
  %gml2738 = load i8, ptr %gmp2737, align 1, !alias.scope !4, !noalias !3
  %c2739 = zext i8 %gml2738 to i64
  %wp2740 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2739, ptr %wp2740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a58 word 0xaa0003f6
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %t2742 = or i64 0, %r2741
  %wp2743 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2742, ptr %wp2743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a5c word 0x37000068
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %t2745 = and i64 %r2744, 1
  %cmp2746 = icmp ne i64 %t2745, 0
  br i1 %cmp2746, label %L_8021c3a68, label %L_8021c3a60_ft
L_8021c3a68:
  ; @pc 0x8021c3a68 word 0xbd406ec8
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %t2755 = add i64 %r2754, 108
  %gmp2756 = inttoptr i64 %t2755 to ptr
  %gml2757 = load i32, ptr %gmp2756, align 1, !alias.scope !4, !noalias !3
  %c2758 = zext i32 %gml2757 to i128
  %wp2759 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2758, ptr %wp2759, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a6c word 0x17fffe3e
  br label %L_8021c3364
L_8021c3a70:
  ; @pc 0x8021c3a70 word 0xf9403268
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %t2761 = add i64 %r2760, 96
  %gmp2762 = inttoptr i64 %t2761 to ptr
  %gml2763 = load i64, ptr %gmp2762, align 1, !alias.scope !4, !noalias !3
  %wp2764 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2763, ptr %wp2764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a74 word 0xf000bcb5
  %wp2765 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419875840, ptr %wp2765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a78 word 0xf000bcb3
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 34419875840, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a7c word 0xf940e2b5
  %r2767.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2767 = load i64, ptr %r2767.p, align 8, !alias.scope !3, !noalias !4
  %t2768 = add i64 %r2767, 448
  %gmp2769 = inttoptr i64 %t2768 to ptr
  %gml2770 = load i64, ptr %gmp2769, align 1, !alias.scope !4, !noalias !3
  %wp2771 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2770, ptr %wp2771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a80 word 0xf940a900
  %r2772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2772 = load i64, ptr %r2772.p, align 8, !alias.scope !3, !noalias !4
  %t2773 = add i64 %r2772, 336
  %gmp2774 = inttoptr i64 %t2773 to ptr
  %gml2775 = load i64, ptr %gmp2774, align 1, !alias.scope !4, !noalias !3
  %wp2776 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2775, ptr %wp2776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a84 word 0xf940de73
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %t2778 = add i64 %r2777, 440
  %gmp2779 = inttoptr i64 %t2778 to ptr
  %gml2780 = load i64, ptr %gmp2779, align 1, !alias.scope !4, !noalias !3
  %wp2781 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2780, ptr %wp2781, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3a88
L_8021c3a88:
  ; @pc 0x8021c3a88 word 0x39424008
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %t2783 = add i64 %r2782, 144
  %gmp2784 = inttoptr i64 %t2783 to ptr
  %gml2785 = load i8, ptr %gmp2784, align 1, !alias.scope !4, !noalias !3
  %c2786 = zext i8 %gml2785 to i64
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a8c word 0xaa0003f6
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %t2789 = or i64 0, %r2788
  %wp2790 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2789, ptr %wp2790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a90 word 0x37000068
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %t2792 = and i64 %r2791, 1
  %cmp2793 = icmp ne i64 %t2792, 0
  br i1 %cmp2793, label %L_8021c3a9c, label %L_8021c3a94_ft
L_8021c3a9c:
  ; @pc 0x8021c3a9c word 0xbd4052c8
  %r2801.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2801 = load i64, ptr %r2801.p, align 8, !alias.scope !3, !noalias !4
  %t2802 = add i64 %r2801, 80
  %gmp2803 = inttoptr i64 %t2802 to ptr
  %gml2804 = load i32, ptr %gmp2803, align 1, !alias.scope !4, !noalias !3
  %c2805 = zext i32 %gml2804 to i128
  %wp2806 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2805, ptr %wp2806, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3aa0 word 0x17fffe31
  br label %L_8021c3364
L_8021c3aa4:
  ; @pc 0x8021c3aa4 word 0xf9403268
  %r2807.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2807 = load i64, ptr %r2807.p, align 8, !alias.scope !3, !noalias !4
  %t2808 = add i64 %r2807, 96
  %gmp2809 = inttoptr i64 %t2808 to ptr
  %gml2810 = load i64, ptr %gmp2809, align 1, !alias.scope !4, !noalias !3
  %wp2811 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2810, ptr %wp2811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3aa8 word 0xf000bcb5
  %wp2812 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419875840, ptr %wp2812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3aac word 0xf000bcb3
  %wp2813 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 34419875840, ptr %wp2813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ab0 word 0xf940e2b5
  %r2814.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2814 = load i64, ptr %r2814.p, align 8, !alias.scope !3, !noalias !4
  %t2815 = add i64 %r2814, 448
  %gmp2816 = inttoptr i64 %t2815 to ptr
  %gml2817 = load i64, ptr %gmp2816, align 1, !alias.scope !4, !noalias !3
  %wp2818 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2817, ptr %wp2818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ab4 word 0xf940a900
  %r2819.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2819 = load i64, ptr %r2819.p, align 8, !alias.scope !3, !noalias !4
  %t2820 = add i64 %r2819, 336
  %gmp2821 = inttoptr i64 %t2820 to ptr
  %gml2822 = load i64, ptr %gmp2821, align 1, !alias.scope !4, !noalias !3
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ab8 word 0xf940de73
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = add i64 %r2824, 440
  %gmp2826 = inttoptr i64 %t2825 to ptr
  %gml2827 = load i64, ptr %gmp2826, align 1, !alias.scope !4, !noalias !3
  %wp2828 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2827, ptr %wp2828, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c3abc
L_8021c3abc:
  ; @pc 0x8021c3abc word 0x39423c08
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %t2830 = add i64 %r2829, 143
  %gmp2831 = inttoptr i64 %t2830 to ptr
  %gml2832 = load i8, ptr %gmp2831, align 1, !alias.scope !4, !noalias !3
  %c2833 = zext i8 %gml2832 to i64
  %wp2834 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2833, ptr %wp2834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ac0 word 0xaa0003f6
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %t2836 = or i64 0, %r2835
  %wp2837 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2836, ptr %wp2837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ac4 word 0x37000068
  %r2838.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2838 = load i64, ptr %r2838.p, align 8, !alias.scope !3, !noalias !4
  %t2839 = and i64 %r2838, 1
  %cmp2840 = icmp ne i64 %t2839, 0
  br i1 %cmp2840, label %L_8021c3ad0, label %L_8021c3ac8_ft
L_8021c3ad0:
  ; @pc 0x8021c3ad0 word 0xbd4066c8
  %r2848.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2848 = load i64, ptr %r2848.p, align 8, !alias.scope !3, !noalias !4
  %t2849 = add i64 %r2848, 100
  %gmp2850 = inttoptr i64 %t2849 to ptr
  %gml2851 = load i32, ptr %gmp2850, align 1, !alias.scope !4, !noalias !3
  %c2852 = zext i32 %gml2851 to i128
  %wp2853 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2852, ptr %wp2853, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ad4 word 0x17fffe24
  br label %L_8021c3364
L_8021c3ad8:
  ; @pc 0x8021c3ad8 word 0xf9400ec8
  %r2854.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2854 = load i64, ptr %r2854.p, align 8, !alias.scope !3, !noalias !4
  %t2855 = add i64 %r2854, 24
  %gmp2856 = inttoptr i64 %t2855 to ptr
  %gml2857 = load i64, ptr %gmp2856, align 1, !alias.scope !4, !noalias !3
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3adc word 0xb4fffe08
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %cmp2860 = icmp eq i64 %r2859, 0
  br i1 %cmp2860, label %L_8021c3a9c, label %L_8021c3ae0_ft
L_8021c3b00:
  ; @pc 0x8021c3b00 word 0xf9400288
  %r2915.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2915 = load i64, ptr %r2915.p, align 8, !alias.scope !3, !noalias !4
  %gmp2916 = inttoptr i64 %r2915 to ptr
  %gml2917 = load i64, ptr %gmp2916, align 1, !alias.scope !4, !noalias !3
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2917, ptr %wp2918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b04 word 0xaa1403e0
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %t2920 = or i64 0, %r2919
  %wp2921 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2920, ptr %wp2921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b08 word 0xaa1303e1
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %t2923 = or i64 0, %r2922
  %wp2924 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2923, ptr %wp2924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b0c word 0xf9400108
  %r2925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2925 = load i64, ptr %r2925.p, align 8, !alias.scope !3, !noalias !4
  %gmp2926 = inttoptr i64 %r2925 to ptr
  %gml2927 = load i64, ptr %gmp2926, align 1, !alias.scope !4, !noalias !3
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2927, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b10 word 0xd63f0100
  %r2929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2929 = load i64, ptr %r2929.p, align 8, !alias.scope !3, !noalias !4
  %fp2930 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2929, ptr %fp2930, align 8, !alias.scope !3, !noalias !4
  %wp2931 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142932, ptr %wp2931, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3b14 word 0xb5fffba0
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %cmp2933 = icmp ne i64 %r2932, 0
  br i1 %cmp2933, label %L_8021c3a88, label %L_8021c3b18_ft
L_8021c3b1c:
  ; @pc 0x8021c3b1c word 0xf9400ec8
  %r2934.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2934 = load i64, ptr %r2934.p, align 8, !alias.scope !3, !noalias !4
  %t2935 = add i64 %r2934, 24
  %gmp2936 = inttoptr i64 %t2935 to ptr
  %gml2937 = load i64, ptr %gmp2936, align 1, !alias.scope !4, !noalias !3
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b20 word 0xb4fffa48
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %cmp2940 = icmp eq i64 %r2939, 0
  br i1 %cmp2940, label %L_8021c3a68, label %L_8021c3b24_ft
L_8021c3b44:
  ; @pc 0x8021c3b44 word 0xf9400288
  %r2995.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2995 = load i64, ptr %r2995.p, align 8, !alias.scope !3, !noalias !4
  %gmp2996 = inttoptr i64 %r2995 to ptr
  %gml2997 = load i64, ptr %gmp2996, align 1, !alias.scope !4, !noalias !3
  %wp2998 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2997, ptr %wp2998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b48 word 0xaa1403e0
  %r2999.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2999 = load i64, ptr %r2999.p, align 8, !alias.scope !3, !noalias !4
  %t3000 = or i64 0, %r2999
  %wp3001 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3000, ptr %wp3001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b4c word 0xaa1303e1
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %t3003 = or i64 0, %r3002
  %wp3004 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3003, ptr %wp3004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b50 word 0xf9400108
  %r3005.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3005 = load i64, ptr %r3005.p, align 8, !alias.scope !3, !noalias !4
  %gmp3006 = inttoptr i64 %r3005 to ptr
  %gml3007 = load i64, ptr %gmp3006, align 1, !alias.scope !4, !noalias !3
  %wp3008 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3007, ptr %wp3008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b54 word 0xd63f0100
  %r3009.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3009 = load i64, ptr %r3009.p, align 8, !alias.scope !3, !noalias !4
  %fp3010 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3009, ptr %fp3010, align 8, !alias.scope !3, !noalias !4
  %wp3011 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143000, ptr %wp3011, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3b58 word 0xb5fff7e0
  %r3012.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3012 = load i64, ptr %r3012.p, align 8, !alias.scope !3, !noalias !4
  %cmp3013 = icmp ne i64 %r3012, 0
  br i1 %cmp3013, label %L_8021c3a54, label %L_8021c3b5c_ft
L_8021c3b60:
  ; @pc 0x8021c3b60 word 0xf9400ec8
  %r3014.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3014 = load i64, ptr %r3014.p, align 8, !alias.scope !3, !noalias !4
  %t3015 = add i64 %r3014, 24
  %gmp3016 = inttoptr i64 %t3015 to ptr
  %gml3017 = load i64, ptr %gmp3016, align 1, !alias.scope !4, !noalias !3
  %wp3018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3017, ptr %wp3018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b64 word 0xb4fffb68
  %r3019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3019 = load i64, ptr %r3019.p, align 8, !alias.scope !3, !noalias !4
  %cmp3020 = icmp eq i64 %r3019, 0
  br i1 %cmp3020, label %L_8021c3ad0, label %L_8021c3b68_ft
L_8021c3b88:
  ; @pc 0x8021c3b88 word 0xf9400288
  %r3075.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3075 = load i64, ptr %r3075.p, align 8, !alias.scope !3, !noalias !4
  %gmp3076 = inttoptr i64 %r3075 to ptr
  %gml3077 = load i64, ptr %gmp3076, align 1, !alias.scope !4, !noalias !3
  %wp3078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3077, ptr %wp3078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b8c word 0xaa1403e0
  %r3079.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3079 = load i64, ptr %r3079.p, align 8, !alias.scope !3, !noalias !4
  %t3080 = or i64 0, %r3079
  %wp3081 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3080, ptr %wp3081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b90 word 0xaa1303e1
  %r3082.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3082 = load i64, ptr %r3082.p, align 8, !alias.scope !3, !noalias !4
  %t3083 = or i64 0, %r3082
  %wp3084 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3083, ptr %wp3084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b94 word 0xf9400108
  %r3085.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3085 = load i64, ptr %r3085.p, align 8, !alias.scope !3, !noalias !4
  %gmp3086 = inttoptr i64 %r3085 to ptr
  %gml3087 = load i64, ptr %gmp3086, align 1, !alias.scope !4, !noalias !3
  %wp3088 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3087, ptr %wp3088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b98 word 0xd63f0100
  %r3089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3089 = load i64, ptr %r3089.p, align 8, !alias.scope !3, !noalias !4
  %fp3090 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3089, ptr %fp3090, align 8, !alias.scope !3, !noalias !4
  %wp3091 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143068, ptr %wp3091, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3b9c word 0xb5fff900
  %r3092.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3092 = load i64, ptr %r3092.p, align 8, !alias.scope !3, !noalias !4
  %cmp3093 = icmp ne i64 %r3092, 0
  br i1 %cmp3093, label %L_8021c3abc, label %L_8021c3ba0_ft
L_8021c3ba4:
  ; @pc 0x8021c3ba4 word 0xf000bca0
  %wp3094 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ba8 word 0xf940e000
  %r3095.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3095 = load i64, ptr %r3095.p, align 8, !alias.scope !3, !noalias !4
  %t3096 = add i64 %r3095, 448
  %gmp3097 = inttoptr i64 %t3096 to ptr
  %gml3098 = load i64, ptr %gmp3097, align 1, !alias.scope !4, !noalias !3
  %wp3099 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3098, ptr %wp3099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bac word 0x94277f7d
  %wp3100 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143088, ptr %wp3100, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3bb0 word 0x34fff240
  %r3101.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3101 = load i64, ptr %r3101.p, align 8, !alias.scope !3, !noalias !4
  %c3102 = trunc i64 %r3101 to i32
  %cmp3103 = icmp eq i32 %c3102, 0
  br i1 %cmp3103, label %L_8021c39f8, label %L_8021c3bb4_ft
L_8021c3bd4:
  ; @pc 0x8021c3bd4 word 0xf000bca0
  %wp3123 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bd8 word 0xf9414400
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %t3125 = add i64 %r3124, 648
  %gmp3126 = inttoptr i64 %t3125 to ptr
  %gml3127 = load i64, ptr %gmp3126, align 1, !alias.scope !4, !noalias !3
  %wp3128 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3127, ptr %wp3128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bdc word 0x94277f71
  %wp3129 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143136, ptr %wp3129, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3be0 word 0x34ffe2a0
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %c3131 = trunc i64 %r3130 to i32
  %cmp3132 = icmp eq i32 %c3131, 0
  br i1 %cmp3132, label %L_8021c3834, label %L_8021c3be4_ft
L_8021c3c0c:
  ; @pc 0x8021c3c0c word 0xf000bca0
  %wp3158 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c10 word 0xf9414400
  %r3159.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3159 = load i64, ptr %r3159.p, align 8, !alias.scope !3, !noalias !4
  %t3160 = add i64 %r3159, 648
  %gmp3161 = inttoptr i64 %t3160 to ptr
  %gml3162 = load i64, ptr %gmp3161, align 1, !alias.scope !4, !noalias !3
  %wp3163 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3162, ptr %wp3163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c14 word 0x94277f63
  %wp3164 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143192, ptr %wp3164, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3c18 word 0x34ffe3a0
  %r3165.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3165 = load i64, ptr %r3165.p, align 8, !alias.scope !3, !noalias !4
  %c3166 = trunc i64 %r3165 to i32
  %cmp3167 = icmp eq i32 %c3166, 0
  br i1 %cmp3167, label %L_8021c388c, label %L_8021c3c1c_ft
L_8021c3c44:
  ; @pc 0x8021c3c44 word 0xf000bca0
  %wp3193 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c48 word 0xf9414400
  %r3194.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3194 = load i64, ptr %r3194.p, align 8, !alias.scope !3, !noalias !4
  %t3195 = add i64 %r3194, 648
  %gmp3196 = inttoptr i64 %t3195 to ptr
  %gml3197 = load i64, ptr %gmp3196, align 1, !alias.scope !4, !noalias !3
  %wp3198 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3197, ptr %wp3198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c4c word 0x94277f55
  %wp3199 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143248, ptr %wp3199, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3c50 word 0x34ffe4a0
  %r3200.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3200 = load i64, ptr %r3200.p, align 8, !alias.scope !3, !noalias !4
  %c3201 = trunc i64 %r3200 to i32
  %cmp3202 = icmp eq i32 %c3201, 0
  br i1 %cmp3202, label %L_8021c38e4, label %L_8021c3c54_ft
L_8021c3c7c:
  ; @pc 0x8021c3c7c word 0xf000bca0
  %wp3228 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c80 word 0xf9414400
  %r3229.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3229 = load i64, ptr %r3229.p, align 8, !alias.scope !3, !noalias !4
  %t3230 = add i64 %r3229, 648
  %gmp3231 = inttoptr i64 %t3230 to ptr
  %gml3232 = load i64, ptr %gmp3231, align 1, !alias.scope !4, !noalias !3
  %wp3233 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3232, ptr %wp3233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c84 word 0x94277f47
  %wp3234 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143304, ptr %wp3234, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3c88 word 0x34ffe5a0
  %r3235.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3235 = load i64, ptr %r3235.p, align 8, !alias.scope !3, !noalias !4
  %c3236 = trunc i64 %r3235 to i32
  %cmp3237 = icmp eq i32 %c3236, 0
  br i1 %cmp3237, label %L_8021c393c, label %L_8021c3c8c_ft
L_8021c3cb4:
  ; @pc 0x8021c3cb4 word 0xf000bca0
  %wp3263 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cb8 word 0xf9414400
  %r3264.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3264 = load i64, ptr %r3264.p, align 8, !alias.scope !3, !noalias !4
  %t3265 = add i64 %r3264, 648
  %gmp3266 = inttoptr i64 %t3265 to ptr
  %gml3267 = load i64, ptr %gmp3266, align 1, !alias.scope !4, !noalias !3
  %wp3268 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3267, ptr %wp3268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cbc word 0x94277f39
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143360, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3cc0 word 0x34ffe6a0
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %c3271 = trunc i64 %r3270 to i32
  %cmp3272 = icmp eq i32 %c3271, 0
  br i1 %cmp3272, label %L_8021c3994, label %L_8021c3cc4_ft
L_8021c3cec:
  ; @pc 0x8021c3cec word 0xf940a908
  %r3298.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3298 = load i64, ptr %r3298.p, align 8, !alias.scope !3, !noalias !4
  %t3299 = add i64 %r3298, 336
  %gmp3300 = inttoptr i64 %t3299 to ptr
  %gml3301 = load i64, ptr %gmp3300, align 1, !alias.scope !4, !noalias !3
  %wp3302 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3301, ptr %wp3302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cf0 word 0xb4ffaa48
  %r3303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3303 = load i64, ptr %r3303.p, align 8, !alias.scope !3, !noalias !4
  %cmp3304 = icmp eq i64 %r3303, 0
  br i1 %cmp3304, label %L_8021c3238, label %L_8021c3cf4_ft
L_8021c3d18:
  ; @pc 0x8021c3d18 word 0xf9400109
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %gmp3386 = inttoptr i64 %r3385 to ptr
  %gml3387 = load i64, ptr %gmp3386, align 1, !alias.scope !4, !noalias !3
  %wp3388 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3387, ptr %wp3388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d1c word 0x2a1403e1
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %c3390 = trunc i64 %r3389 to i32
  %t3391 = or i32 0, %c3390
  %c3392 = zext i32 %t3391 to i64
  %wp3393 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3392, ptr %wp3393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d20 word 0x2a1503e2
  %r3394.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3394 = load i64, ptr %r3394.p, align 8, !alias.scope !3, !noalias !4
  %c3395 = trunc i64 %r3394 to i32
  %t3396 = or i32 0, %c3395
  %c3397 = zext i32 %t3396 to i64
  %wp3398 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3397, ptr %wp3398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d24 word 0x6d4223e9
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %t3400 = add i64 %r3399, 32
  %t3401 = add i64 %t3400, 8
  %gmp3402 = inttoptr i64 %t3400 to ptr
  %gml3403 = load i64, ptr %gmp3402, align 1, !alias.scope !4, !noalias !3
  %gmp3404 = inttoptr i64 %t3401 to ptr
  %gml3405 = load i64, ptr %gmp3404, align 1, !alias.scope !4, !noalias !3
  %c3406 = zext i64 %gml3403 to i128
  %wp3407 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c3406, ptr %wp3407, align 16, !alias.scope !3, !noalias !4
  %c3408 = zext i64 %gml3405 to i128
  %wp3409 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3408, ptr %wp3409, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d28 word 0xaa0803e0
  %r3410.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3410 = load i64, ptr %r3410.p, align 8, !alias.scope !3, !noalias !4
  %t3411 = or i64 0, %r3410
  %wp3412 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3411, ptr %wp3412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d2c word 0x6d412beb
  %r3413.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3413 = load i64, ptr %r3413.p, align 8, !alias.scope !3, !noalias !4
  %t3414 = add i64 %r3413, 16
  %t3415 = add i64 %t3414, 8
  %gmp3416 = inttoptr i64 %t3414 to ptr
  %gml3417 = load i64, ptr %gmp3416, align 1, !alias.scope !4, !noalias !3
  %gmp3418 = inttoptr i64 %t3415 to ptr
  %gml3419 = load i64, ptr %gmp3418, align 1, !alias.scope !4, !noalias !3
  %c3420 = zext i64 %gml3417 to i128
  %wp3421 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c3420, ptr %wp3421, align 16, !alias.scope !3, !noalias !4
  %c3422 = zext i64 %gml3419 to i128
  %wp3423 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c3422, ptr %wp3423, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d30 word 0xf9401d23
  %r3424.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3424 = load i64, ptr %r3424.p, align 8, !alias.scope !3, !noalias !4
  %t3425 = add i64 %r3424, 56
  %gmp3426 = inttoptr i64 %t3425 to ptr
  %gml3427 = load i64, ptr %gmp3426, align 1, !alias.scope !4, !noalias !3
  %wp3428 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml3427, ptr %wp3428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d34 word 0xa9464ff4
  %r3429.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3429 = load i64, ptr %r3429.p, align 8, !alias.scope !3, !noalias !4
  %t3430 = add i64 %r3429, 96
  %t3431 = add i64 %t3430, 8
  %gmp3432 = inttoptr i64 %t3430 to ptr
  %gml3433 = load i64, ptr %gmp3432, align 1, !alias.scope !4, !noalias !3
  %gmp3434 = inttoptr i64 %t3431 to ptr
  %gml3435 = load i64, ptr %gmp3434, align 1, !alias.scope !4, !noalias !3
  %wp3436 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3433, ptr %wp3436, align 8, !alias.scope !3, !noalias !4
  %wp3437 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml3435, ptr %wp3437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d38 word 0xa94557f6
  %r3438.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3438 = load i64, ptr %r3438.p, align 8, !alias.scope !3, !noalias !4
  %t3439 = add i64 %r3438, 80
  %t3440 = add i64 %t3439, 8
  %gmp3441 = inttoptr i64 %t3439 to ptr
  %gml3442 = load i64, ptr %gmp3441, align 1, !alias.scope !4, !noalias !3
  %gmp3443 = inttoptr i64 %t3440 to ptr
  %gml3444 = load i64, ptr %gmp3443, align 1, !alias.scope !4, !noalias !3
  %wp3445 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3442, ptr %wp3445, align 8, !alias.scope !3, !noalias !4
  %wp3446 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml3444, ptr %wp3446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d3c word 0xa9445ff8
  %r3447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3447 = load i64, ptr %r3447.p, align 8, !alias.scope !3, !noalias !4
  %t3448 = add i64 %r3447, 64
  %t3449 = add i64 %t3448, 8
  %gmp3450 = inttoptr i64 %t3448 to ptr
  %gml3451 = load i64, ptr %gmp3450, align 1, !alias.scope !4, !noalias !3
  %gmp3452 = inttoptr i64 %t3449 to ptr
  %gml3453 = load i64, ptr %gmp3452, align 1, !alias.scope !4, !noalias !3
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml3451, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  %wp3455 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml3453, ptr %wp3455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d40 word 0xa9437bfd
  %r3456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3456 = load i64, ptr %r3456.p, align 8, !alias.scope !3, !noalias !4
  %t3457 = add i64 %r3456, 48
  %t3458 = add i64 %t3457, 8
  %gmp3459 = inttoptr i64 %t3457 to ptr
  %gml3460 = load i64, ptr %gmp3459, align 1, !alias.scope !4, !noalias !3
  %gmp3461 = inttoptr i64 %t3458 to ptr
  %gml3462 = load i64, ptr %gmp3461, align 1, !alias.scope !4, !noalias !3
  %wp3463 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml3460, ptr %wp3463, align 8, !alias.scope !3, !noalias !4
  %wp3464 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml3462, ptr %wp3464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d44 word 0x9101c3ff
  %r3465.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3465 = load i64, ptr %r3465.p, align 8, !alias.scope !3, !noalias !4
  %t3466 = add i64 %r3465, 112
  %wp3467 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t3466, ptr %wp3467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d48 word 0xd61f0060
  %r3468.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3468 = load i64, ptr %r3468.p, align 8, !alias.scope !3, !noalias !4
  %pcp4822 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3468, ptr %pcp4822, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8021c3d4c:
  ; @pc 0x8021c3d4c word 0x52a85688
  %c3469 = zext i32 1119092736 to i64
  %wp3470 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3469, ptr %wp3470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d50 word 0x1e270108
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %c3472 = trunc i64 %r3471 to i32
  %c3473 = zext i32 %c3472 to i128
  %wp3474 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3473, ptr %wp3474, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d54 word 0x17fffd84
  br label %L_8021c3364
L_8021c3d58:
  ; @pc 0x8021c3d58 word 0x1e292140
  %fcmp3475 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 9, i32 0)
  %wp3476 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3475, ptr %wp3476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d5c word 0x54ffac0a
  %r3477.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3477 = load i64, ptr %r3477.p, align 8, !alias.scope !3, !noalias !4
  %fsh3479 = lshr i64 %r3477, 31
  %ftr3480 = trunc i64 %fsh3479 to i1
  %fsh3481 = lshr i64 %r3477, 28
  %ftr3482 = trunc i64 %fsh3481 to i1
  %cond3478 = icmp eq i1 %ftr3480, %ftr3482
  br i1 %cond3478, label %L_8021c32dc, label %L_8021c3d60_ft
L_8021c3d7c:
  ; @pc 0x8021c3d7c word 0xf000bca0
  %wp3506 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d80 word 0xf940e000
  %r3507.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3507 = load i64, ptr %r3507.p, align 8, !alias.scope !3, !noalias !4
  %t3508 = add i64 %r3507, 448
  %gmp3509 = inttoptr i64 %t3508 to ptr
  %gml3510 = load i64, ptr %gmp3509, align 1, !alias.scope !4, !noalias !3
  %wp3511 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3510, ptr %wp3511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d84 word 0x94277f07
  %wp3512 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143560, ptr %wp3512, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3d88 word 0x34ffebc0
  %r3513.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3513 = load i64, ptr %r3513.p, align 8, !alias.scope !3, !noalias !4
  %c3514 = trunc i64 %r3513 to i32
  %cmp3515 = icmp eq i32 %c3514, 0
  br i1 %cmp3515, label %L_8021c3b00, label %L_8021c3d8c_ft
L_8021c3dac:
  ; @pc 0x8021c3dac word 0x1e292140
  %fcmp3535 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 9, i32 0)
  %wp3536 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3535, ptr %wp3536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3db0 word 0x5400028a
  %r3537.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3537 = load i64, ptr %r3537.p, align 8, !alias.scope !3, !noalias !4
  %fsh3539 = lshr i64 %r3537, 31
  %ftr3540 = trunc i64 %fsh3539 to i1
  %fsh3541 = lshr i64 %r3537, 28
  %ftr3542 = trunc i64 %fsh3541 to i1
  %cond3538 = icmp eq i1 %ftr3540, %ftr3542
  br i1 %cond3538, label %L_8021c3e00, label %L_8021c3db4_ft
L_8021c3ddc:
  ; @pc 0x8021c3ddc word 0xf94016c8
  %r3575.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3575 = load i64, ptr %r3575.p, align 8, !alias.scope !3, !noalias !4
  %t3576 = add i64 %r3575, 40
  %gmp3577 = inttoptr i64 %t3576 to ptr
  %gml3578 = load i64, ptr %gmp3577, align 1, !alias.scope !4, !noalias !3
  %wp3579 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3578, ptr %wp3579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3de0 word 0xf940a900
  %r3580.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3580 = load i64, ptr %r3580.p, align 8, !alias.scope !3, !noalias !4
  %t3581 = add i64 %r3580, 336
  %gmp3582 = inttoptr i64 %t3581 to ptr
  %gml3583 = load i64, ptr %gmp3582, align 1, !alias.scope !4, !noalias !3
  %wp3584 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3583, ptr %wp3584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3de4 word 0x97ffa10f
  %wp3585 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143656, ptr %wp3585, align 8, !alias.scope !3, !noalias !4
  call void @f_8021ac220(ptr %c)
  ; @pc 0x8021c3de8 word 0x14000004
  br label %L_8021c3df8
L_8021c3dec:
  ; @pc 0x8021c3dec word 0xf94016c8
  %r3586.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3586 = load i64, ptr %r3586.p, align 8, !alias.scope !3, !noalias !4
  %t3587 = add i64 %r3586, 40
  %gmp3588 = inttoptr i64 %t3587 to ptr
  %gml3589 = load i64, ptr %gmp3588, align 1, !alias.scope !4, !noalias !3
  %wp3590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3589, ptr %wp3590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3df0 word 0xf940a900
  %r3591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3591 = load i64, ptr %r3591.p, align 8, !alias.scope !3, !noalias !4
  %t3592 = add i64 %r3591, 336
  %gmp3593 = inttoptr i64 %t3592 to ptr
  %gml3594 = load i64, ptr %gmp3593, align 1, !alias.scope !4, !noalias !3
  %wp3595 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3594, ptr %wp3595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3df4 word 0x97ffa0f6
  %wp3596 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143672, ptr %wp3596, align 8, !alias.scope !3, !noalias !4
  call void @f_8021ac1cc(ptr %c)
  br label %L_8021c3df8
L_8021c3df8:
  ; @pc 0x8021c3df8 word 0xbd400008
  %r3597.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3597 = load i64, ptr %r3597.p, align 8, !alias.scope !3, !noalias !4
  %gmp3598 = inttoptr i64 %r3597 to ptr
  %gml3599 = load i32, ptr %gmp3598, align 1, !alias.scope !4, !noalias !3
  %c3600 = zext i32 %gml3599 to i128
  %wp3601 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3600, ptr %wp3601, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dfc word 0x17fffd5a
  br label %L_8021c3364
L_8021c3e00:
  ; @pc 0x8021c3e00 word 0x9103c2c0
  %r3602.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3602 = load i64, ptr %r3602.p, align 8, !alias.scope !3, !noalias !4
  %t3603 = add i64 %r3602, 240
  %wp3604 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3603, ptr %wp3604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e04 word 0x2a1403e1
  %r3605.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3605 = load i64, ptr %r3605.p, align 8, !alias.scope !3, !noalias !4
  %c3606 = trunc i64 %r3605 to i32
  %t3607 = or i32 0, %c3606
  %c3608 = zext i32 %t3607 to i64
  %wp3609 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3608, ptr %wp3609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e08 word 0x2a1503e2
  %r3610.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3610 = load i64, ptr %r3610.p, align 8, !alias.scope !3, !noalias !4
  %c3611 = trunc i64 %r3610 to i32
  %t3612 = or i32 0, %c3611
  %c3613 = zext i32 %t3612 to i64
  %wp3614 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3613, ptr %wp3614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e0c word 0x97ffcae6
  %wp3615 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143696, ptr %wp3615, align 8, !alias.scope !3, !noalias !4
  call void @f_8021b69a4(ptr %c)
  ; @pc 0x8021c3e10 word 0x17fffd36
  br label %L_8021c32e8
L_8021c3e14:
  ; @pc 0x8021c3e14 word 0xf000bca0
  %wp3616 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e18 word 0xf940e000
  %r3617.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3617 = load i64, ptr %r3617.p, align 8, !alias.scope !3, !noalias !4
  %t3618 = add i64 %r3617, 448
  %gmp3619 = inttoptr i64 %t3618 to ptr
  %gml3620 = load i64, ptr %gmp3619, align 1, !alias.scope !4, !noalias !3
  %wp3621 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3620, ptr %wp3621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e1c word 0x94277ee1
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143712, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3e20 word 0x34ffe920
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %c3624 = trunc i64 %r3623 to i32
  %cmp3625 = icmp eq i32 %c3624, 0
  br i1 %cmp3625, label %L_8021c3b44, label %L_8021c3e24_ft
L_8021c3e44:
  ; @pc 0x8021c3e44 word 0xf000bca0
  %wp3645 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e48 word 0xf940e000
  %r3646.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3646 = load i64, ptr %r3646.p, align 8, !alias.scope !3, !noalias !4
  %t3647 = add i64 %r3646, 448
  %gmp3648 = inttoptr i64 %t3647 to ptr
  %gml3649 = load i64, ptr %gmp3648, align 1, !alias.scope !4, !noalias !3
  %wp3650 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3649, ptr %wp3650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e4c word 0x94277ed5
  %wp3651 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143760, ptr %wp3651, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8021c3e50 word 0x34ffe9c0
  %r3652.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3652 = load i64, ptr %r3652.p, align 8, !alias.scope !3, !noalias !4
  %c3653 = trunc i64 %r3652 to i32
  %cmp3654 = icmp eq i32 %c3653, 0
  br i1 %cmp3654, label %L_8021c3b88, label %L_8021c3e54_ft
L_8021c3e74:
  ; @pc 0x8021c3e74 word 0xf9400268
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %gmp3675 = inttoptr i64 %r3674 to ptr
  %gml3676 = load i64, ptr %gmp3675, align 1, !alias.scope !4, !noalias !3
  %wp3677 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3676, ptr %wp3677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e78 word 0x2f00e400
  %wp3678 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp3678, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e7c word 0xf9400508
  %r3679.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3679 = load i64, ptr %r3679.p, align 8, !alias.scope !3, !noalias !4
  %t3680 = add i64 %r3679, 8
  %gmp3681 = inttoptr i64 %t3680 to ptr
  %gml3682 = load i64, ptr %gmp3681, align 1, !alias.scope !4, !noalias !3
  %wp3683 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3682, ptr %wp3683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e80 word 0xb4ffa6e8
  %r3684.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3684 = load i64, ptr %r3684.p, align 8, !alias.scope !3, !noalias !4
  %cmp3685 = icmp eq i64 %r3684, 0
  br i1 %cmp3685, label %L_8021c335c, label %L_8021c3e84_ft
L_8021c3e98:
  ; @pc 0x8021c3e98 word 0xf9400268
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %gmp3700 = inttoptr i64 %r3699 to ptr
  %gml3701 = load i64, ptr %gmp3700, align 1, !alias.scope !4, !noalias !3
  %wp3702 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3701, ptr %wp3702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e9c word 0x1e204009
  %r3703.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3703 = load i128, ptr %r3703.p, align 16, !alias.scope !3, !noalias !4
  %c3704 = trunc i128 %r3703 to i32
  %c3705 = zext i32 %c3704 to i128
  %wp3706 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c3705, ptr %wp3706, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ea0 word 0x2f00e40a
  %wp3707 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 0, ptr %wp3707, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ea4 word 0x2f00e40b
  %wp3708 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 0, ptr %wp3708, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ea8 word 0xf9400508
  %r3709.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3709 = load i64, ptr %r3709.p, align 8, !alias.scope !3, !noalias !4
  %t3710 = add i64 %r3709, 8
  %gmp3711 = inttoptr i64 %t3710 to ptr
  %gml3712 = load i64, ptr %gmp3711, align 1, !alias.scope !4, !noalias !3
  %wp3713 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3712, ptr %wp3713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3eac word 0xb40000a8
  %r3714.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3714 = load i64, ptr %r3714.p, align 8, !alias.scope !3, !noalias !4
  %cmp3715 = icmp eq i64 %r3714, 0
  br i1 %cmp3715, label %L_8021c3ec0, label %L_8021c3eb0_ft
L_8021c3ec0:
  ; @pc 0x8021c3ec0 word 0xf9400668
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %t3730 = add i64 %r3729, 8
  %gmp3731 = inttoptr i64 %t3730 to ptr
  %gml3732 = load i64, ptr %gmp3731, align 1, !alias.scope !4, !noalias !3
  %wp3733 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3732, ptr %wp3733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ec4 word 0xf9400508
  %r3734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3734 = load i64, ptr %r3734.p, align 8, !alias.scope !3, !noalias !4
  %t3735 = add i64 %r3734, 8
  %gmp3736 = inttoptr i64 %t3735 to ptr
  %gml3737 = load i64, ptr %gmp3736, align 1, !alias.scope !4, !noalias !3
  %wp3738 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3737, ptr %wp3738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ec8 word 0xb40000a8
  %r3739.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3739 = load i64, ptr %r3739.p, align 8, !alias.scope !3, !noalias !4
  %cmp3740 = icmp eq i64 %r3739, 0
  br i1 %cmp3740, label %L_8021c3edc, label %L_8021c3ecc_ft
L_8021c3edc:
  ; @pc 0x8021c3edc word 0x1e2b3940
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 10, i32 11)
  ; @pc 0x8021c3ee0 word 0x1f092c00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 9, i32 11)
  ; @pc 0x8021c3ee4 word 0x17fffd1e
  br label %L_8021c335c
L_8021c3ee8:
  ; @pc 0x8021c3ee8 word 0xaa0803e0
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %t3755 = or i64 0, %r3754
  %wp3756 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3755, ptr %wp3756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3eec word 0x97ff853b
  %wp3757 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143920, ptr %wp3757, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a53d8(ptr %c)
  ; @pc 0x8021c3ef0 word 0x17ffffc2
  br label %L_8021c3df8
L_8021c3ef4:
  ; @pc 0x8021c3ef4 word 0xaa0803e0
  %r3758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3758 = load i64, ptr %r3758.p, align 8, !alias.scope !3, !noalias !4
  %t3759 = or i64 0, %r3758
  %wp3760 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3759, ptr %wp3760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ef8 word 0x97ff8517
  %wp3761 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143932, ptr %wp3761, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a5354(ptr %c)
  ; @pc 0x8021c3efc word 0x17ffffbf
  br label %L_8021c3df8
L_8021c3f00:
  ; @pc 0x8021c3f00 word 0xf9400108
  %r3762.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3762 = load i64, ptr %r3762.p, align 8, !alias.scope !3, !noalias !4
  %gmp3763 = inttoptr i64 %r3762 to ptr
  %gml3764 = load i64, ptr %gmp3763, align 1, !alias.scope !4, !noalias !3
  %wp3765 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3764, ptr %wp3765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f04 word 0xf9400509
  %r3766.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3766 = load i64, ptr %r3766.p, align 8, !alias.scope !3, !noalias !4
  %t3767 = add i64 %r3766, 8
  %gmp3768 = inttoptr i64 %t3767 to ptr
  %gml3769 = load i64, ptr %gmp3768, align 1, !alias.scope !4, !noalias !3
  %wp3770 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3769, ptr %wp3770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f08 word 0xb4ffa2e9
  %r3771.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3771 = load i64, ptr %r3771.p, align 8, !alias.scope !3, !noalias !4
  %cmp3772 = icmp eq i64 %r3771, 0
  br i1 %cmp3772, label %L_8021c3364, label %L_8021c3f0c_ft
L_8021c3f20:
  ; @pc 0x8021c3f20 word 0xf9400109
  %r3786.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3786 = load i64, ptr %r3786.p, align 8, !alias.scope !3, !noalias !4
  %gmp3787 = inttoptr i64 %r3786 to ptr
  %gml3788 = load i64, ptr %gmp3787, align 1, !alias.scope !4, !noalias !3
  %wp3789 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3788, ptr %wp3789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f24 word 0x2f00e402
  %wp3790 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 0, ptr %wp3790, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f28 word 0x2f00e403
  %wp3791 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 0, ptr %wp3791, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f2c word 0xf940052a
  %r3792.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3792 = load i64, ptr %r3792.p, align 8, !alias.scope !3, !noalias !4
  %t3793 = add i64 %r3792, 8
  %gmp3794 = inttoptr i64 %t3793 to ptr
  %gml3795 = load i64, ptr %gmp3794, align 1, !alias.scope !4, !noalias !3
  %wp3796 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3795, ptr %wp3796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f30 word 0xb40000ca
  %r3797.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3797 = load i64, ptr %r3797.p, align 8, !alias.scope !3, !noalias !4
  %cmp3798 = icmp eq i64 %r3797, 0
  br i1 %cmp3798, label %L_8021c3f48, label %L_8021c3f34_ft
L_8021c3f48:
  ; @pc 0x8021c3f48 word 0xf9400508
  %r3832.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3832 = load i64, ptr %r3832.p, align 8, !alias.scope !3, !noalias !4
  %t3833 = add i64 %r3832, 8
  %gmp3834 = inttoptr i64 %t3833 to ptr
  %gml3835 = load i64, ptr %gmp3834, align 1, !alias.scope !4, !noalias !3
  %wp3836 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3835, ptr %wp3836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f4c word 0xf9400509
  %r3837.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3837 = load i64, ptr %r3837.p, align 8, !alias.scope !3, !noalias !4
  %t3838 = add i64 %r3837, 8
  %gmp3839 = inttoptr i64 %t3838 to ptr
  %gml3840 = load i64, ptr %gmp3839, align 1, !alias.scope !4, !noalias !3
  %wp3841 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3840, ptr %wp3841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f50 word 0xb40000c9
  %r3842.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3842 = load i64, ptr %r3842.p, align 8, !alias.scope !3, !noalias !4
  %cmp3843 = icmp eq i64 %r3842, 0
  br i1 %cmp3843, label %L_8021c3f68, label %L_8021c3f54_ft
L_8021c3f68:
  ; @pc 0x8021c3f68 word 0x1e233840
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 2, i32 3)
  ; @pc 0x8021c3f6c word 0x1f010c00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 1, i32 3)
  ; @pc 0x8021c3f70 word 0x17fffcfe
  br label %L_8021c3368
L_8021c3f74:
  ; @pc 0x8021c3f74 word 0xf9400aa8
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %t3878 = add i64 %r3877, 16
  %gmp3879 = inttoptr i64 %t3878 to ptr
  %gml3880 = load i64, ptr %gmp3879, align 1, !alias.scope !4, !noalias !3
  %wp3881 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3880, ptr %wp3881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f78 word 0xb4ffae68
  %r3882.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3882 = load i64, ptr %r3882.p, align 8, !alias.scope !3, !noalias !4
  %cmp3883 = icmp eq i64 %r3882, 0
  br i1 %cmp3883, label %L_8021c3544, label %L_8021c3f7c_ft
L_8021c3fbc:
  ; @pc 0x8021c3fbc word 0xf9400268
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %gmp3958 = inttoptr i64 %r3957 to ptr
  %gml3959 = load i64, ptr %gmp3958, align 1, !alias.scope !4, !noalias !3
  %wp3960 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3959, ptr %wp3960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fc0 word 0x2f00e400
  %wp3961 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp3961, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fc4 word 0xf9400508
  %r3962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3962 = load i64, ptr %r3962.p, align 8, !alias.scope !3, !noalias !4
  %t3963 = add i64 %r3962, 8
  %gmp3964 = inttoptr i64 %t3963 to ptr
  %gml3965 = load i64, ptr %gmp3964, align 1, !alias.scope !4, !noalias !3
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3965, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fc8 word 0xb4ffb868
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %cmp3968 = icmp eq i64 %r3967, 0
  br i1 %cmp3968, label %L_8021c36d4, label %L_8021c3fcc_ft
L_8021c3fdc:
  ; @pc 0x8021c3fdc word 0xf9400268
  %r3977.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3977 = load i64, ptr %r3977.p, align 8, !alias.scope !3, !noalias !4
  %gmp3978 = inttoptr i64 %r3977 to ptr
  %gml3979 = load i64, ptr %gmp3978, align 1, !alias.scope !4, !noalias !3
  %wp3980 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3979, ptr %wp3980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fe0 word 0x1e204009
  %r3981.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3981 = load i128, ptr %r3981.p, align 16, !alias.scope !3, !noalias !4
  %c3982 = trunc i128 %r3981 to i32
  %c3983 = zext i32 %c3982 to i128
  %wp3984 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c3983, ptr %wp3984, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fe4 word 0x2f00e40a
  %wp3985 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 0, ptr %wp3985, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fe8 word 0x2f00e40b
  %wp3986 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 0, ptr %wp3986, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fec word 0xf9400508
  %r3987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3987 = load i64, ptr %r3987.p, align 8, !alias.scope !3, !noalias !4
  %t3988 = add i64 %r3987, 8
  %gmp3989 = inttoptr i64 %t3988 to ptr
  %gml3990 = load i64, ptr %gmp3989, align 1, !alias.scope !4, !noalias !3
  %wp3991 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3990, ptr %wp3991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ff0 word 0xb40000a8
  %r3992.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3992 = load i64, ptr %r3992.p, align 8, !alias.scope !3, !noalias !4
  %cmp3993 = icmp eq i64 %r3992, 0
  br i1 %cmp3993, label %L_8021c4004, label %L_8021c3ff4_ft
L_8021c4004:
  ; @pc 0x8021c4004 word 0xf9400668
  %r4007.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4007 = load i64, ptr %r4007.p, align 8, !alias.scope !3, !noalias !4
  %t4008 = add i64 %r4007, 8
  %gmp4009 = inttoptr i64 %t4008 to ptr
  %gml4010 = load i64, ptr %gmp4009, align 1, !alias.scope !4, !noalias !3
  %wp4011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4010, ptr %wp4011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4008 word 0xf9400508
  %r4012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4012 = load i64, ptr %r4012.p, align 8, !alias.scope !3, !noalias !4
  %t4013 = add i64 %r4012, 8
  %gmp4014 = inttoptr i64 %t4013 to ptr
  %gml4015 = load i64, ptr %gmp4014, align 1, !alias.scope !4, !noalias !3
  %wp4016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4015, ptr %wp4016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c400c word 0xb4000868
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %cmp4018 = icmp eq i64 %r4017, 0
  br i1 %cmp4018, label %L_8021c4118, label %L_8021c4010_ft
L_8021c4020:
  ; @pc 0x8021c4020 word 0xf9400a88
  %r4027.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4027 = load i64, ptr %r4027.p, align 8, !alias.scope !3, !noalias !4
  %t4028 = add i64 %r4027, 16
  %gmp4029 = inttoptr i64 %t4028 to ptr
  %gml4030 = load i64, ptr %gmp4029, align 1, !alias.scope !4, !noalias !3
  %wp4031 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4030, ptr %wp4031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4024 word 0xb4ffab28
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %cmp4033 = icmp eq i64 %r4032, 0
  br i1 %cmp4033, label %L_8021c3588, label %L_8021c4028_ft
L_8021c4068:
  ; @pc 0x8021c4068 word 0xf9400aa8
  %r4107.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4107 = load i64, ptr %r4107.p, align 8, !alias.scope !3, !noalias !4
  %t4108 = add i64 %r4107, 16
  %gmp4109 = inttoptr i64 %t4108 to ptr
  %gml4110 = load i64, ptr %gmp4109, align 1, !alias.scope !4, !noalias !3
  %wp4111 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4110, ptr %wp4111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c406c word 0xb4ffaa48
  %r4112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4112 = load i64, ptr %r4112.p, align 8, !alias.scope !3, !noalias !4
  %cmp4113 = icmp eq i64 %r4112, 0
  br i1 %cmp4113, label %L_8021c35b4, label %L_8021c4070_ft
L_8021c40b0:
  ; @pc 0x8021c40b0 word 0xf9400268
  %r4187.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4187 = load i64, ptr %r4187.p, align 8, !alias.scope !3, !noalias !4
  %gmp4188 = inttoptr i64 %r4187 to ptr
  %gml4189 = load i64, ptr %gmp4188, align 1, !alias.scope !4, !noalias !3
  %wp4190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4189, ptr %wp4190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40b4 word 0x2f00e400
  %wp4191 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp4191, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40b8 word 0xf9400508
  %r4192.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4192 = load i64, ptr %r4192.p, align 8, !alias.scope !3, !noalias !4
  %t4193 = add i64 %r4192, 8
  %gmp4194 = inttoptr i64 %t4193 to ptr
  %gml4195 = load i64, ptr %gmp4194, align 1, !alias.scope !4, !noalias !3
  %wp4196 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4195, ptr %wp4196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40bc word 0xb4ffb0c8
  %r4197.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4197 = load i64, ptr %r4197.p, align 8, !alias.scope !3, !noalias !4
  %cmp4198 = icmp eq i64 %r4197, 0
  br i1 %cmp4198, label %L_8021c36d4, label %L_8021c40c0_ft
L_8021c40cc:
  ; @pc 0x8021c40cc word 0xbd400000
  %r4207.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4207 = load i64, ptr %r4207.p, align 8, !alias.scope !3, !noalias !4
  %gmp4208 = inttoptr i64 %r4207 to ptr
  %gml4209 = load i32, ptr %gmp4208, align 1, !alias.scope !4, !noalias !3
  %c4210 = zext i32 %gml4209 to i128
  %wp4211 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4210, ptr %wp4211, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40d0 word 0x17fffd81
  br label %L_8021c36d4
L_8021c40d4:
  ; @pc 0x8021c40d4 word 0xf9400268
  %r4212.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4212 = load i64, ptr %r4212.p, align 8, !alias.scope !3, !noalias !4
  %gmp4213 = inttoptr i64 %r4212 to ptr
  %gml4214 = load i64, ptr %gmp4213, align 1, !alias.scope !4, !noalias !3
  %wp4215 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4214, ptr %wp4215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40d8 word 0x1e204009
  %r4216.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4216 = load i128, ptr %r4216.p, align 16, !alias.scope !3, !noalias !4
  %c4217 = trunc i128 %r4216 to i32
  %c4218 = zext i32 %c4217 to i128
  %wp4219 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c4218, ptr %wp4219, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40dc word 0x2f00e40a
  %wp4220 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 0, ptr %wp4220, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40e0 word 0x2f00e40b
  %wp4221 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 0, ptr %wp4221, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40e4 word 0xf9400508
  %r4222.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4222 = load i64, ptr %r4222.p, align 8, !alias.scope !3, !noalias !4
  %t4223 = add i64 %r4222, 8
  %gmp4224 = inttoptr i64 %t4223 to ptr
  %gml4225 = load i64, ptr %gmp4224, align 1, !alias.scope !4, !noalias !3
  %wp4226 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4225, ptr %wp4226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40e8 word 0xb40000a8
  %r4227.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4227 = load i64, ptr %r4227.p, align 8, !alias.scope !3, !noalias !4
  %cmp4228 = icmp eq i64 %r4227, 0
  br i1 %cmp4228, label %L_8021c40fc, label %L_8021c40ec_ft
L_8021c40fc:
  ; @pc 0x8021c40fc word 0xf9400668
  %r4242.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4242 = load i64, ptr %r4242.p, align 8, !alias.scope !3, !noalias !4
  %t4243 = add i64 %r4242, 8
  %gmp4244 = inttoptr i64 %t4243 to ptr
  %gml4245 = load i64, ptr %gmp4244, align 1, !alias.scope !4, !noalias !3
  %wp4246 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4245, ptr %wp4246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4100 word 0xf9400508
  %r4247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4247 = load i64, ptr %r4247.p, align 8, !alias.scope !3, !noalias !4
  %t4248 = add i64 %r4247, 8
  %gmp4249 = inttoptr i64 %t4248 to ptr
  %gml4250 = load i64, ptr %gmp4249, align 1, !alias.scope !4, !noalias !3
  %wp4251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4250, ptr %wp4251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4104 word 0xb40000a8
  %r4252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4252 = load i64, ptr %r4252.p, align 8, !alias.scope !3, !noalias !4
  %cmp4253 = icmp eq i64 %r4252, 0
  br i1 %cmp4253, label %L_8021c4118, label %L_8021c4108_ft
L_8021c4114:
  ; @pc 0x8021c4114 word 0xbd40000a
  %r4262.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4262 = load i64, ptr %r4262.p, align 8, !alias.scope !3, !noalias !4
  %gmp4263 = inttoptr i64 %r4262 to ptr
  %gml4264 = load i32, ptr %gmp4263, align 1, !alias.scope !4, !noalias !3
  %c4265 = zext i32 %gml4264 to i128
  %wp4266 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c4265, ptr %wp4266, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c4118
L_8021c4118:
  ; @pc 0x8021c4118 word 0x1e2b3940
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 10, i32 11)
  ; @pc 0x8021c411c word 0x1f092c00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 9, i32 11)
  ; @pc 0x8021c4120 word 0x17fffd6d
  br label %L_8021c36d4
L_8021c4124:
  ; @pc 0x8021c4124 word 0xf9400a88
  %r4267.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4267 = load i64, ptr %r4267.p, align 8, !alias.scope !3, !noalias !4
  %t4268 = add i64 %r4267, 16
  %gmp4269 = inttoptr i64 %t4268 to ptr
  %gml4270 = load i64, ptr %gmp4269, align 1, !alias.scope !4, !noalias !3
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4270, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4128 word 0xb4ffa688
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %cmp4273 = icmp eq i64 %r4272, 0
  br i1 %cmp4273, label %L_8021c35f8, label %L_8021c412c_ft
L_8021c416c:
  ; @pc 0x8021c416c word 0xf9400aa8
  %r4347.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4347 = load i64, ptr %r4347.p, align 8, !alias.scope !3, !noalias !4
  %t4348 = add i64 %r4347, 16
  %gmp4349 = inttoptr i64 %t4348 to ptr
  %gml4350 = load i64, ptr %gmp4349, align 1, !alias.scope !4, !noalias !3
  %wp4351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4350, ptr %wp4351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4170 word 0xb4ffa5a8
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %cmp4353 = icmp eq i64 %r4352, 0
  br i1 %cmp4353, label %L_8021c3624, label %L_8021c4174_ft
L_8021c41b4:
  ; @pc 0x8021c41b4 word 0xf9400268
  %r4427.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4427 = load i64, ptr %r4427.p, align 8, !alias.scope !3, !noalias !4
  %gmp4428 = inttoptr i64 %r4427 to ptr
  %gml4429 = load i64, ptr %gmp4428, align 1, !alias.scope !4, !noalias !3
  %wp4430 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4429, ptr %wp4430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41b8 word 0x1e204009
  %r4431.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4431 = load i128, ptr %r4431.p, align 16, !alias.scope !3, !noalias !4
  %c4432 = trunc i128 %r4431 to i32
  %c4433 = zext i32 %c4432 to i128
  %wp4434 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c4433, ptr %wp4434, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41bc word 0x2f00e401
  %wp4435 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 0, ptr %wp4435, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41c0 word 0xf9400508
  %r4436.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4436 = load i64, ptr %r4436.p, align 8, !alias.scope !3, !noalias !4
  %t4437 = add i64 %r4436, 8
  %gmp4438 = inttoptr i64 %t4437 to ptr
  %gml4439 = load i64, ptr %gmp4438, align 1, !alias.scope !4, !noalias !3
  %wp4440 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4439, ptr %wp4440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41c4 word 0xb40000c8
  %r4441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4441 = load i64, ptr %r4441.p, align 8, !alias.scope !3, !noalias !4
  %cmp4442 = icmp eq i64 %r4441, 0
  br i1 %cmp4442, label %L_8021c41dc, label %L_8021c41c8_ft
L_8021c41dc:
  ; @pc 0x8021c41dc word 0x1e204120
  %r4460.p = getelementptr inbounds i8, ptr %c, i64 656
  %r4460 = load i128, ptr %r4460.p, align 16, !alias.scope !3, !noalias !4
  %c4461 = trunc i128 %r4460 to i32
  %c4462 = zext i32 %c4461 to i128
  %wp4463 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4462, ptr %wp4463, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41e0 word 0x17fffd22
  br label %L_8021c3668
L_8021c41e4:
  ; @pc 0x8021c41e4 word 0xf9400268
  %r4464.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4464 = load i64, ptr %r4464.p, align 8, !alias.scope !3, !noalias !4
  %gmp4465 = inttoptr i64 %r4464 to ptr
  %gml4466 = load i64, ptr %gmp4465, align 1, !alias.scope !4, !noalias !3
  %wp4467 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4466, ptr %wp4467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41e8 word 0x1e204029
  %r4468.p = getelementptr inbounds i8, ptr %c, i64 528
  %r4468 = load i128, ptr %r4468.p, align 16, !alias.scope !3, !noalias !4
  %c4469 = trunc i128 %r4468 to i32
  %c4470 = zext i32 %c4469 to i128
  %wp4471 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c4470, ptr %wp4471, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41ec word 0x2f00e40a
  %wp4472 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 0, ptr %wp4472, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41f0 word 0x2f00e40b
  %wp4473 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 0, ptr %wp4473, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41f4 word 0xbd000fe0
  %r4474.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4474 = load i64, ptr %r4474.p, align 8, !alias.scope !3, !noalias !4
  %t4475 = add i64 %r4474, 12
  %r4476.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4476 = load i128, ptr %r4476.p, align 16, !alias.scope !3, !noalias !4
  %c4477 = trunc i128 %r4476 to i32
  %gmp4478 = inttoptr i64 %t4475 to ptr
  store i32 %c4477, ptr %gmp4478, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c41f8 word 0xf9400508
  %r4479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4479 = load i64, ptr %r4479.p, align 8, !alias.scope !3, !noalias !4
  %t4480 = add i64 %r4479, 8
  %gmp4481 = inttoptr i64 %t4480 to ptr
  %gml4482 = load i64, ptr %gmp4481, align 1, !alias.scope !4, !noalias !3
  %wp4483 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4482, ptr %wp4483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41fc word 0xb40000a8
  %r4484.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4484 = load i64, ptr %r4484.p, align 8, !alias.scope !3, !noalias !4
  %cmp4485 = icmp eq i64 %r4484, 0
  br i1 %cmp4485, label %L_8021c4210, label %L_8021c4200_ft
L_8021c4210:
  ; @pc 0x8021c4210 word 0xf9400668
  %r4499.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4499 = load i64, ptr %r4499.p, align 8, !alias.scope !3, !noalias !4
  %t4500 = add i64 %r4499, 8
  %gmp4501 = inttoptr i64 %t4500 to ptr
  %gml4502 = load i64, ptr %gmp4501, align 1, !alias.scope !4, !noalias !3
  %wp4503 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4502, ptr %wp4503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4214 word 0xf9400508
  %r4504.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4504 = load i64, ptr %r4504.p, align 8, !alias.scope !3, !noalias !4
  %t4505 = add i64 %r4504, 8
  %gmp4506 = inttoptr i64 %t4505 to ptr
  %gml4507 = load i64, ptr %gmp4506, align 1, !alias.scope !4, !noalias !3
  %wp4508 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4507, ptr %wp4508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4218 word 0xb40000a8
  %r4509.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4509 = load i64, ptr %r4509.p, align 8, !alias.scope !3, !noalias !4
  %cmp4510 = icmp eq i64 %r4509, 0
  br i1 %cmp4510, label %L_8021c422c, label %L_8021c421c_ft
L_8021c422c:
  ; @pc 0x8021c422c word 0x1e2b3940
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 10, i32 11)
  ; @pc 0x8021c4230 word 0x1f092c01
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 1, i32 0, i32 9, i32 11)
  ; @pc 0x8021c4234 word 0xbd400fe0
  %r4524.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4524 = load i64, ptr %r4524.p, align 8, !alias.scope !3, !noalias !4
  %t4525 = add i64 %r4524, 12
  %gmp4526 = inttoptr i64 %t4525 to ptr
  %gml4527 = load i32, ptr %gmp4526, align 1, !alias.scope !4, !noalias !3
  %c4528 = zext i32 %gml4527 to i128
  %wp4529 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4528, ptr %wp4529, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4238 word 0x17fffd0c
  br label %L_8021c3668
L_8021c423c:
  ; @pc 0x8021c423c word 0xf9400a88
  %r4530.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4530 = load i64, ptr %r4530.p, align 8, !alias.scope !3, !noalias !4
  %t4531 = add i64 %r4530, 16
  %gmp4532 = inttoptr i64 %t4531 to ptr
  %gml4533 = load i64, ptr %gmp4532, align 1, !alias.scope !4, !noalias !3
  %wp4534 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4533, ptr %wp4534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4240 word 0xb4ffa128
  %r4535.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4535 = load i64, ptr %r4535.p, align 8, !alias.scope !3, !noalias !4
  %cmp4536 = icmp eq i64 %r4535, 0
  br i1 %cmp4536, label %L_8021c3664, label %L_8021c4244_ft
L_8021c428c:
  ; @pc 0x8021c428c word 0xf9400a88
  %r4618.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4618 = load i64, ptr %r4618.p, align 8, !alias.scope !3, !noalias !4
  %t4619 = add i64 %r4618, 16
  %gmp4620 = inttoptr i64 %t4619 to ptr
  %gml4621 = load i64, ptr %gmp4620, align 1, !alias.scope !4, !noalias !3
  %wp4622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4621, ptr %wp4622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4290 word 0xb4ffa048
  %r4623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4623 = load i64, ptr %r4623.p, align 8, !alias.scope !3, !noalias !4
  %cmp4624 = icmp eq i64 %r4623, 0
  br i1 %cmp4624, label %L_8021c3698, label %L_8021c4294_ft
L_8021c42d4:
  ; @pc 0x8021c42d4 word 0xf9400a88
  %r4698.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4698 = load i64, ptr %r4698.p, align 8, !alias.scope !3, !noalias !4
  %t4699 = add i64 %r4698, 16
  %gmp4700 = inttoptr i64 %t4699 to ptr
  %gml4701 = load i64, ptr %gmp4700, align 1, !alias.scope !4, !noalias !3
  %wp4702 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4701, ptr %wp4702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42d8 word 0xb4ff9f68
  %r4703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4703 = load i64, ptr %r4703.p, align 8, !alias.scope !3, !noalias !4
  %cmp4704 = icmp eq i64 %r4703, 0
  br i1 %cmp4704, label %L_8021c36c4, label %L_8021c42dc_ft
L_8021c431c:
  ; @pc 0x8021c431c word 0xf9403268
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %t4779 = add i64 %r4778, 96
  %gmp4780 = inttoptr i64 %t4779 to ptr
  %gml4781 = load i64, ptr %gmp4780, align 1, !alias.scope !4, !noalias !3
  %wp4782 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4781, ptr %wp4782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4320 word 0xf940a900
  %r4783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4783 = load i64, ptr %r4783.p, align 8, !alias.scope !3, !noalias !4
  %t4784 = add i64 %r4783, 336
  %gmp4785 = inttoptr i64 %t4784 to ptr
  %gml4786 = load i64, ptr %gmp4785, align 1, !alias.scope !4, !noalias !3
  %wp4787 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4786, ptr %wp4787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4324 word 0x97ff4966
  %wp4788 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395145000, ptr %wp4788, align 8, !alias.scope !3, !noalias !4
  call void @f_8021968bc(ptr %c)
  ; @pc 0x8021c4328 word 0x17fffeb4
  br label %L_8021c3df8
L_8021c432c:
  ; @pc 0x8021c432c word 0xf9403268
  %r4789.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4789 = load i64, ptr %r4789.p, align 8, !alias.scope !3, !noalias !4
  %t4790 = add i64 %r4789, 96
  %gmp4791 = inttoptr i64 %t4790 to ptr
  %gml4792 = load i64, ptr %gmp4791, align 1, !alias.scope !4, !noalias !3
  %wp4793 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4792, ptr %wp4793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4330 word 0xf940a900
  %r4794.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4794 = load i64, ptr %r4794.p, align 8, !alias.scope !3, !noalias !4
  %t4795 = add i64 %r4794, 336
  %gmp4796 = inttoptr i64 %t4795 to ptr
  %gml4797 = load i64, ptr %gmp4796, align 1, !alias.scope !4, !noalias !3
  %wp4798 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4797, ptr %wp4798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4334 word 0x97ff499a
  %wp4799 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395145016, ptr %wp4799, align 8, !alias.scope !3, !noalias !4
  call void @f_80219699c(ptr %c)
  ; @pc 0x8021c4338 word 0x17fffeb0
  br label %L_8021c3df8
L_8021c433c:
  ; @pc 0x8021c433c word 0xf9403268
  %r4800.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4800 = load i64, ptr %r4800.p, align 8, !alias.scope !3, !noalias !4
  %t4801 = add i64 %r4800, 96
  %gmp4802 = inttoptr i64 %t4801 to ptr
  %gml4803 = load i64, ptr %gmp4802, align 1, !alias.scope !4, !noalias !3
  %wp4804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4803, ptr %wp4804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4340 word 0xf940a900
  %r4805.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4805 = load i64, ptr %r4805.p, align 8, !alias.scope !3, !noalias !4
  %t4806 = add i64 %r4805, 336
  %gmp4807 = inttoptr i64 %t4806 to ptr
  %gml4808 = load i64, ptr %gmp4807, align 1, !alias.scope !4, !noalias !3
  %wp4809 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4808, ptr %wp4809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4344 word 0x97ff49b2
  %wp4810 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395145032, ptr %wp4810, align 8, !alias.scope !3, !noalias !4
  call void @f_802196a0c(ptr %c)
  ; @pc 0x8021c4348 word 0x17fffeac
  br label %L_8021c3df8
L_8021c434c:
  ; @pc 0x8021c434c word 0xf9403268
  %r4811.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4811 = load i64, ptr %r4811.p, align 8, !alias.scope !3, !noalias !4
  %t4812 = add i64 %r4811, 96
  %gmp4813 = inttoptr i64 %t4812 to ptr
  %gml4814 = load i64, ptr %gmp4813, align 1, !alias.scope !4, !noalias !3
  %wp4815 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4814, ptr %wp4815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4350 word 0xf940a900
  %r4816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4816 = load i64, ptr %r4816.p, align 8, !alias.scope !3, !noalias !4
  %t4817 = add i64 %r4816, 336
  %gmp4818 = inttoptr i64 %t4817 to ptr
  %gml4819 = load i64, ptr %gmp4818, align 1, !alias.scope !4, !noalias !3
  %wp4820 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4819, ptr %wp4820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4354 word 0x97ff49ca
  %wp4821 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395145048, ptr %wp4821, align 8, !alias.scope !3, !noalias !4
  call void @f_802196a7c(ptr %c)
  ; @pc 0x8021c4358 word 0x17fffea8
  br label %L_8021c3df8
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34395140564, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8021c31d4
L_8021c3208_ft:
  ; @pc 0x8021c3208 word 0xf9404a76
  %r100.p = getelementptr inbounds i8, ptr %c, i64 152
  %r100 = load i64, ptr %r100.p, align 8, !alias.scope !3, !noalias !4
  %t101 = add i64 %r100, 144
  %gmp102 = inttoptr i64 %t101 to ptr
  %gml103 = load i64, ptr %gmp102, align 1, !alias.scope !4, !noalias !3
  %wp104 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml103, ptr %wp104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c320c word 0x2f00e408
  %wp105 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 0, ptr %wp105, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3210 word 0xb4000ab6
  %r106.p = getelementptr inbounds i8, ptr %c, i64 176
  %r106 = load i64, ptr %r106.p, align 8, !alias.scope !3, !noalias !4
  %cmp107 = icmp eq i64 %r106, 0
  br i1 %cmp107, label %L_8021c3364, label %L_8021c3214_ft
L_8021c3214_ft:
  ; @pc 0x8021c3214 word 0xf9404e68
  %r108.p = getelementptr inbounds i8, ptr %c, i64 152
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %t109 = add i64 %r108, 152
  %gmp110 = inttoptr i64 %t109 to ptr
  %gml111 = load i64, ptr %gmp110, align 1, !alias.scope !4, !noalias !3
  %wp112 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml111, ptr %wp112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3218 word 0xb4000a68
  %r113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %cmp114 = icmp eq i64 %r113, 0
  br i1 %cmp114, label %L_8021c3364, label %L_8021c321c_ft
L_8021c321c_ft:
  ; @pc 0x8021c321c word 0xf9405260
  %r115.p = getelementptr inbounds i8, ptr %c, i64 152
  %r115 = load i64, ptr %r115.p, align 8, !alias.scope !3, !noalias !4
  %t116 = add i64 %r115, 160
  %gmp117 = inttoptr i64 %t116 to ptr
  %gml118 = load i64, ptr %gmp117, align 1, !alias.scope !4, !noalias !3
  %wp119 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml118, ptr %wp119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3220 word 0xb4000a20
  %r120.p = getelementptr inbounds i8, ptr %c, i64 0
  %r120 = load i64, ptr %r120.p, align 8, !alias.scope !3, !noalias !4
  %cmp121 = icmp eq i64 %r120, 0
  br i1 %cmp121, label %L_8021c3364, label %L_8021c3224_ft
L_8021c3224_ft:
  ; @pc 0x8021c3224 word 0x7100ce9f
  %r122.p = getelementptr inbounds i8, ptr %c, i64 160
  %r122 = load i64, ptr %r122.p, align 8, !alias.scope !3, !noalias !4
  %c123 = trunc i64 %r122 to i32
  %t124 = sub i32 %c123, 51
  %fn125 = icmp slt i32 %t124, 0
  %fz126 = icmp eq i32 %t124, 0
  %fc127 = icmp uge i32 %c123, 51
  %fx1128 = xor i32 %c123, 51
  %fx2129 = xor i32 %c123, %t124
  %fva130 = and i32 %fx1128, %fx2129
  %fv131 = icmp slt i32 %fva130, 0
  %nz132 = zext i1 %fn125 to i64
  %zz133 = zext i1 %fz126 to i64
  %cz134 = zext i1 %fc127 to i64
  %vz135 = zext i1 %fv131 to i64
  %ns136 = shl i64 %nz132, 31
  %zs137 = shl i64 %zz133, 30
  %cs138 = shl i64 %cz134, 29
  %vs139 = shl i64 %vz135, 28
  %nzor140 = or i64 %ns136, %zs137
  %cvor141 = or i64 %cs138, %vs139
  %nzcv142 = or i64 %nzor140, %cvor141
  %wp143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv142, ptr %wp143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3228 word 0x540012c0
  %r144.p = getelementptr inbounds i8, ptr %c, i64 272
  %r144 = load i64, ptr %r144.p, align 8, !alias.scope !3, !noalias !4
  %fsh146 = lshr i64 %r144, 30
  %cond145 = trunc i64 %fsh146 to i1
  br i1 %cond145, label %L_8021c3480, label %L_8021c322c_ft
L_8021c322c_ft:
  ; @pc 0x8021c322c word 0xf9401e68
  %r147.p = getelementptr inbounds i8, ptr %c, i64 152
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %t148 = add i64 %r147, 56
  %gmp149 = inttoptr i64 %t148 to ptr
  %gml150 = load i64, ptr %gmp149, align 1, !alias.scope !4, !noalias !3
  %wp151 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml150, ptr %wp151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3230 word 0x2a0203f5
  %r152.p = getelementptr inbounds i8, ptr %c, i64 16
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %c153 = trunc i64 %r152 to i32
  %t154 = or i32 0, %c153
  %c155 = zext i32 %t154 to i64
  %wp156 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c155, ptr %wp156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3234 word 0xb50055c8
  %r157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %cmp158 = icmp ne i64 %r157, 0
  br i1 %cmp158, label %L_8021c3cec, label %L_8021c3238
L_8021c3240_ft:
  ; @pc 0x8021c3240 word 0x52800028
  %c188 = zext i32 1 to i64
  %wp189 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c188, ptr %wp189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3244 word 0x52804009
  %c190 = zext i32 512 to i64
  %wp191 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c190, ptr %wp191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3248 word 0x72a00609
  %r192.p = getelementptr inbounds i8, ptr %c, i64 72
  %r192 = load i64, ptr %r192.p, align 8, !alias.scope !3, !noalias !4
  %t193 = and i64 %r192, -4294901761
  %t194 = or i64 %t193, 3145728
  %c195 = trunc i64 %t194 to i32
  %c196 = zext i32 %c195 to i64
  %wp197 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c324c word 0x1ad42108
  %r198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %c199 = trunc i64 %r198 to i32
  %r200.p = getelementptr inbounds i8, ptr %c, i64 160
  %r200 = load i64, ptr %r200.p, align 8, !alias.scope !3, !noalias !4
  %c201 = trunc i64 %r200 to i32
  %t202 = and i32 %c201, 31
  %t203 = shl i32 %c199, %t202
  %c204 = zext i32 %t203 to i64
  %wp205 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3250 word 0x6a09011f
  %r206.p = getelementptr inbounds i8, ptr %c, i64 72
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %c207 = trunc i64 %r206 to i32
  %r208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %c209 = trunc i64 %r208 to i32
  %t210 = and i32 %c209, %c207
  %fn211 = icmp slt i32 %t210, 0
  %fz212 = icmp eq i32 %t210, 0
  %nz213 = zext i1 %fn211 to i64
  %zz214 = zext i1 %fz212 to i64
  %ns215 = shl i64 %nz213, 31
  %zs216 = shl i64 %zz214, 30
  %nzcv217 = or i64 %ns215, %zs216
  %wp218 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv217, ptr %wp218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3254 word 0x54000da1
  %r219.p = getelementptr inbounds i8, ptr %c, i64 272
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %fsh221 = lshr i64 %r219, 30
  %ftr222 = trunc i64 %fsh221 to i1
  %cond220 = xor i1 %ftr222, true
  br i1 %cond220, label %L_8021c3408, label %L_8021c3258
L_8021c3260_ft:
  ; @pc 0x8021c3260 word 0x5100c688
  %r230.p = getelementptr inbounds i8, ptr %c, i64 160
  %r230 = load i64, ptr %r230.p, align 8, !alias.scope !3, !noalias !4
  %c231 = trunc i64 %r230 to i32
  %t232 = sub i32 %c231, 49
  %c233 = zext i32 %t232 to i64
  %wp234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c233, ptr %wp234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3264 word 0x7100091f
  %r235.p = getelementptr inbounds i8, ptr %c, i64 64
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %c236 = trunc i64 %r235 to i32
  %t237 = sub i32 %c236, 2
  %fn238 = icmp slt i32 %t237, 0
  %fz239 = icmp eq i32 %t237, 0
  %fc240 = icmp uge i32 %c236, 2
  %fx1241 = xor i32 %c236, 2
  %fx2242 = xor i32 %c236, %t237
  %fva243 = and i32 %fx1241, %fx2242
  %fv244 = icmp slt i32 %fva243, 0
  %nz245 = zext i1 %fn238 to i64
  %zz246 = zext i1 %fz239 to i64
  %cz247 = zext i1 %fc240 to i64
  %vz248 = zext i1 %fv244 to i64
  %ns249 = shl i64 %nz245, 31
  %zs250 = shl i64 %zz246, 30
  %cs251 = shl i64 %cz247, 29
  %vs252 = shl i64 %vz248, 28
  %nzor253 = or i64 %ns249, %zs250
  %cvor254 = or i64 %cs251, %vs252
  %nzcv255 = or i64 %nzor253, %cvor254
  %wp256 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv255, ptr %wp256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3268 word 0x54005723
  %r257.p = getelementptr inbounds i8, ptr %c, i64 272
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %fsh259 = lshr i64 %r257, 29
  %ftr260 = trunc i64 %fsh259 to i1
  %cond258 = xor i1 %ftr260, true
  br i1 %cond258, label %L_8021c3d4c, label %L_8021c326c_ft
L_8021c326c_ft:
  ; @pc 0x8021c326c word 0xbd40aa6a
  %r261.p = getelementptr inbounds i8, ptr %c, i64 152
  %r261 = load i64, ptr %r261.p, align 8, !alias.scope !3, !noalias !4
  %t262 = add i64 %r261, 168
  %gmp263 = inttoptr i64 %t262 to ptr
  %gml264 = load i32, ptr %gmp263, align 1, !alias.scope !4, !noalias !3
  %c265 = zext i32 %gml264 to i128
  %wp266 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c265, ptr %wp266, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3270 word 0x1e2e1009
  %wp267 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 1065353216, ptr %wp267, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3274 word 0x1e202148
  %fcmp268 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 0, i32 1)
  %wp269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp268, ptr %wp269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3278 word 0x54005708
  %r270.p = getelementptr inbounds i8, ptr %c, i64 272
  %r270 = load i64, ptr %r270.p, align 8, !alias.scope !3, !noalias !4
  %fsh272 = lshr i64 %r270, 29
  %ftr273 = trunc i64 %fsh272 to i1
  %fsh274 = lshr i64 %r270, 30
  %ftr275 = trunc i64 %fsh274 to i1
  %fnz276 = xor i1 %ftr275, true
  %cond271 = and i1 %ftr273, %fnz276
  br i1 %cond271, label %L_8021c3d58, label %L_8021c327c_ft
L_8021c327c_ft:
  ; @pc 0x8021c327c word 0x7100569f
  %r277.p = getelementptr inbounds i8, ptr %c, i64 160
  %r277 = load i64, ptr %r277.p, align 8, !alias.scope !3, !noalias !4
  %c278 = trunc i64 %r277 to i32
  %t279 = sub i32 %c278, 21
  %fn280 = icmp slt i32 %t279, 0
  %fz281 = icmp eq i32 %t279, 0
  %fc282 = icmp uge i32 %c278, 21
  %fx1283 = xor i32 %c278, 21
  %fx2284 = xor i32 %c278, %t279
  %fva285 = and i32 %fx1283, %fx2284
  %fv286 = icmp slt i32 %fva285, 0
  %nz287 = zext i1 %fn280 to i64
  %zz288 = zext i1 %fz281 to i64
  %cz289 = zext i1 %fc282 to i64
  %vz290 = zext i1 %fv286 to i64
  %ns291 = shl i64 %nz287, 31
  %zs292 = shl i64 %zz288, 30
  %cs293 = shl i64 %cz289, 29
  %vs294 = shl i64 %vz290, 28
  %nzor295 = or i64 %ns291, %zs292
  %cvor296 = or i64 %cs293, %vs294
  %nzcv297 = or i64 %nzor295, %cvor296
  %wp298 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv297, ptr %wp298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3280 word 0x54001200
  %r299.p = getelementptr inbounds i8, ptr %c, i64 272
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %fsh301 = lshr i64 %r299, 30
  %cond300 = trunc i64 %fsh301 to i1
  br i1 %cond300, label %L_8021c34c0, label %L_8021c3284_ft
L_8021c3284_ft:
  ; @pc 0x8021c3284 word 0x7100529f
  %r302.p = getelementptr inbounds i8, ptr %c, i64 160
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %c303 = trunc i64 %r302 to i32
  %t304 = sub i32 %c303, 20
  %fn305 = icmp slt i32 %t304, 0
  %fz306 = icmp eq i32 %t304, 0
  %fc307 = icmp uge i32 %c303, 20
  %fx1308 = xor i32 %c303, 20
  %fx2309 = xor i32 %c303, %t304
  %fva310 = and i32 %fx1308, %fx2309
  %fv311 = icmp slt i32 %fva310, 0
  %nz312 = zext i1 %fn305 to i64
  %zz313 = zext i1 %fz306 to i64
  %cz314 = zext i1 %fc307 to i64
  %vz315 = zext i1 %fv311 to i64
  %ns316 = shl i64 %nz312, 31
  %zs317 = shl i64 %zz313, 30
  %cs318 = shl i64 %cz314, 29
  %vs319 = shl i64 %vz315, 28
  %nzor320 = or i64 %ns316, %zs317
  %cvor321 = or i64 %cs318, %vs319
  %nzcv322 = or i64 %nzor320, %cvor321
  %wp323 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv322, ptr %wp323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3288 word 0x540012c0
  %r324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %fsh326 = lshr i64 %r324, 30
  %cond325 = trunc i64 %fsh326 to i1
  br i1 %cond325, label %L_8021c34e0, label %L_8021c328c_ft
L_8021c328c_ft:
  ; @pc 0x8021c328c word 0x7100269f
  %r327.p = getelementptr inbounds i8, ptr %c, i64 160
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %c328 = trunc i64 %r327 to i32
  %t329 = sub i32 %c328, 9
  %fn330 = icmp slt i32 %t329, 0
  %fz331 = icmp eq i32 %t329, 0
  %fc332 = icmp uge i32 %c328, 9
  %fx1333 = xor i32 %c328, 9
  %fx2334 = xor i32 %c328, %t329
  %fva335 = and i32 %fx1333, %fx2334
  %fv336 = icmp slt i32 %fva335, 0
  %nz337 = zext i1 %fn330 to i64
  %zz338 = zext i1 %fz331 to i64
  %cz339 = zext i1 %fc332 to i64
  %vz340 = zext i1 %fv336 to i64
  %ns341 = shl i64 %nz337, 31
  %zs342 = shl i64 %zz338, 30
  %cs343 = shl i64 %cz339, 29
  %vs344 = shl i64 %vz340, 28
  %nzor345 = or i64 %ns341, %zs342
  %cvor346 = or i64 %cs343, %vs344
  %nzcv347 = or i64 %nzor345, %cvor346
  %wp348 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv347, ptr %wp348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3290 word 0x54001380
  %r349.p = getelementptr inbounds i8, ptr %c, i64 272
  %r349 = load i64, ptr %r349.p, align 8, !alias.scope !3, !noalias !4
  %fsh351 = lshr i64 %r349, 30
  %cond350 = trunc i64 %fsh351 to i1
  br i1 %cond350, label %L_8021c3500, label %L_8021c3294_ft
L_8021c3294_ft:
  ; @pc 0x8021c3294 word 0xbd41daca
  %r352.p = getelementptr inbounds i8, ptr %c, i64 176
  %r352 = load i64, ptr %r352.p, align 8, !alias.scope !3, !noalias !4
  %t353 = add i64 %r352, 472
  %gmp354 = inttoptr i64 %t353 to ptr
  %gml355 = load i32, ptr %gmp354, align 1, !alias.scope !4, !noalias !3
  %c356 = zext i32 %gml355 to i128
  %wp357 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c356, ptr %wp357, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3298 word 0x1e202148
  %fcmp358 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 0, i32 1)
  %wp359 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp358, ptr %wp359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c329c word 0x54005888
  %r360.p = getelementptr inbounds i8, ptr %c, i64 272
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %fsh362 = lshr i64 %r360, 29
  %ftr363 = trunc i64 %fsh362 to i1
  %fsh364 = lshr i64 %r360, 30
  %ftr365 = trunc i64 %fsh364 to i1
  %fnz366 = xor i1 %ftr365, true
  %cond361 = and i1 %ftr363, %fnz366
  br i1 %cond361, label %L_8021c3dac, label %L_8021c32a0_ft
L_8021c32a0_ft:
  ; @pc 0x8021c32a0 word 0x7100ca9f
  %r367.p = getelementptr inbounds i8, ptr %c, i64 160
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %c368 = trunc i64 %r367 to i32
  %t369 = sub i32 %c368, 50
  %fn370 = icmp slt i32 %t369, 0
  %fz371 = icmp eq i32 %t369, 0
  %fc372 = icmp uge i32 %c368, 50
  %fx1373 = xor i32 %c368, 50
  %fx2374 = xor i32 %c368, %t369
  %fva375 = and i32 %fx1373, %fx2374
  %fv376 = icmp slt i32 %fva375, 0
  %nz377 = zext i1 %fn370 to i64
  %zz378 = zext i1 %fz371 to i64
  %cz379 = zext i1 %fc372 to i64
  %vz380 = zext i1 %fv376 to i64
  %ns381 = shl i64 %nz377, 31
  %zs382 = shl i64 %zz378, 30
  %cs383 = shl i64 %cz379, 29
  %vs384 = shl i64 %vz380, 28
  %nzor385 = or i64 %ns381, %zs382
  %cvor386 = or i64 %cs383, %vs384
  %nzcv387 = or i64 %nzor385, %cvor386
  %wp388 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv387, ptr %wp388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32a4 word 0x540059c0
  %r389.p = getelementptr inbounds i8, ptr %c, i64 272
  %r389 = load i64, ptr %r389.p, align 8, !alias.scope !3, !noalias !4
  %fsh391 = lshr i64 %r389, 30
  %cond390 = trunc i64 %fsh391 to i1
  br i1 %cond390, label %L_8021c3ddc, label %L_8021c32a8_ft
L_8021c32a8_ft:
  ; @pc 0x8021c32a8 word 0x7100c69f
  %r392.p = getelementptr inbounds i8, ptr %c, i64 160
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %c393 = trunc i64 %r392 to i32
  %t394 = sub i32 %c393, 49
  %fn395 = icmp slt i32 %t394, 0
  %fz396 = icmp eq i32 %t394, 0
  %fc397 = icmp uge i32 %c393, 49
  %fx1398 = xor i32 %c393, 49
  %fx2399 = xor i32 %c393, %t394
  %fva400 = and i32 %fx1398, %fx2399
  %fv401 = icmp slt i32 %fva400, 0
  %nz402 = zext i1 %fn395 to i64
  %zz403 = zext i1 %fz396 to i64
  %cz404 = zext i1 %fc397 to i64
  %vz405 = zext i1 %fv401 to i64
  %ns406 = shl i64 %nz402, 31
  %zs407 = shl i64 %zz403, 30
  %cs408 = shl i64 %cz404, 29
  %vs409 = shl i64 %vz405, 28
  %nzor410 = or i64 %ns406, %zs407
  %cvor411 = or i64 %cs408, %vs409
  %nzcv412 = or i64 %nzor410, %cvor411
  %wp413 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv412, ptr %wp413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32ac word 0x54005a00
  %r414.p = getelementptr inbounds i8, ptr %c, i64 272
  %r414 = load i64, ptr %r414.p, align 8, !alias.scope !3, !noalias !4
  %fsh416 = lshr i64 %r414, 30
  %cond415 = trunc i64 %fsh416 to i1
  br i1 %cond415, label %L_8021c3dec, label %L_8021c32b0_ft
L_8021c32b0_ft:
  ; @pc 0x8021c32b0 word 0xbd401eca
  %r417.p = getelementptr inbounds i8, ptr %c, i64 176
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %t418 = add i64 %r417, 28
  %gmp419 = inttoptr i64 %t418 to ptr
  %gml420 = load i32, ptr %gmp419, align 1, !alias.scope !4, !noalias !3
  %c421 = zext i32 %gml420 to i128
  %wp422 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c421, ptr %wp422, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32b4 word 0x1e202148
  %fcmp423 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 0, i32 1)
  %wp424 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp423, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32b8 word 0x540037e9
  %r425.p = getelementptr inbounds i8, ptr %c, i64 272
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %fsh427 = lshr i64 %r425, 29
  %ftr428 = trunc i64 %fsh427 to i1
  %fsh429 = lshr i64 %r425, 30
  %ftr430 = trunc i64 %fsh429 to i1
  %fnz431 = xor i1 %ftr430, true
  %fhi432 = and i1 %ftr428, %fnz431
  %cond426 = xor i1 %fhi432, true
  br i1 %cond426, label %L_8021c39b4, label %L_8021c32bc_ft
L_8021c32bc_ft:
  ; @pc 0x8021c32bc word 0x1e292140
  %fcmp433 = call i64 @rt_fp_cmp_s(ptr %c, i32 10, i32 9, i32 0)
  %wp434 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp433, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32c0 word 0x9100c2d7
  %r435.p = getelementptr inbounds i8, ptr %c, i64 176
  %r435 = load i64, ptr %r435.p, align 8, !alias.scope !3, !noalias !4
  %t436 = add i64 %r435, 48
  %wp437 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32c4 word 0x540006eb
  %r438.p = getelementptr inbounds i8, ptr %c, i64 272
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %fsh440 = lshr i64 %r438, 31
  %ftr441 = trunc i64 %fsh440 to i1
  %fsh442 = lshr i64 %r438, 28
  %ftr443 = trunc i64 %fsh442 to i1
  %cond439 = icmp ne i1 %ftr441, %ftr443
  br i1 %cond439, label %L_8021c33a0, label %L_8021c32c8_ft
L_8021c32c8_ft:
  ; @pc 0x8021c32c8 word 0xb9401ac8
  %r444.p = getelementptr inbounds i8, ptr %c, i64 176
  %r444 = load i64, ptr %r444.p, align 8, !alias.scope !3, !noalias !4
  %t445 = add i64 %r444, 24
  %gmp446 = inttoptr i64 %t445 to ptr
  %gml447 = load i32, ptr %gmp446, align 1, !alias.scope !4, !noalias !3
  %c448 = zext i32 %gml447 to i64
  %wp449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c448, ptr %wp449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32cc word 0x52800309
  %c450 = zext i32 24 to i64
  %wp451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c450, ptr %wp451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32d0 word 0x9ba95d09
  %r452.p = getelementptr inbounds i8, ptr %c, i64 64
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %c453 = trunc i64 %r452 to i32
  %c454 = zext i32 %c453 to i64
  %r455.p = getelementptr inbounds i8, ptr %c, i64 72
  %r455 = load i64, ptr %r455.p, align 8, !alias.scope !3, !noalias !4
  %c456 = trunc i64 %r455 to i32
  %c457 = zext i32 %c456 to i64
  %t458 = mul i64 %c454, %c457
  %r459.p = getelementptr inbounds i8, ptr %c, i64 184
  %r459 = load i64, ptr %r459.p, align 8, !alias.scope !3, !noalias !4
  %t460 = add i64 %r459, %t458
  %wp461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32d4 word 0x7100211f
  %r462.p = getelementptr inbounds i8, ptr %c, i64 64
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %c463 = trunc i64 %r462 to i32
  %t464 = sub i32 %c463, 8
  %fn465 = icmp slt i32 %t464, 0
  %fz466 = icmp eq i32 %t464, 0
  %fc467 = icmp uge i32 %c463, 8
  %fx1468 = xor i32 %c463, 8
  %fx2469 = xor i32 %c463, %t464
  %fva470 = and i32 %fx1468, %fx2469
  %fv471 = icmp slt i32 %fva470, 0
  %nz472 = zext i1 %fn465 to i64
  %zz473 = zext i1 %fz466 to i64
  %cz474 = zext i1 %fc467 to i64
  %vz475 = zext i1 %fv471 to i64
  %ns476 = shl i64 %nz472, 31
  %zs477 = shl i64 %zz473, 30
  %cs478 = shl i64 %cz474, 29
  %vs479 = shl i64 %vz475, 28
  %nzor480 = or i64 %ns476, %zs477
  %cvor481 = or i64 %cs478, %vs479
  %nzcv482 = or i64 %nzor480, %cvor481
  %wp483 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv482, ptr %wp483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32d8 word 0x9a973120
  %r484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %r485.p = getelementptr inbounds i8, ptr %c, i64 184
  %r485 = load i64, ptr %r485.p, align 8, !alias.scope !3, !noalias !4
  %r486.p = getelementptr inbounds i8, ptr %c, i64 272
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %fsh488 = lshr i64 %r486, 29
  %ftr489 = trunc i64 %fsh488 to i1
  %cond487 = xor i1 %ftr489, true
  %sel490 = select i1 %cond487, i64 %r484, i64 %r485
  %wp491 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel490, ptr %wp491, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c32dc
L_8021c32f4_ft:
  ; @pc 0x8021c32f4 word 0x51003288
  %r539.p = getelementptr inbounds i8, ptr %c, i64 160
  %r539 = load i64, ptr %r539.p, align 8, !alias.scope !3, !noalias !4
  %c540 = trunc i64 %r539 to i32
  %t541 = sub i32 %c540, 12
  %c542 = zext i32 %t541 to i64
  %wp543 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c542, ptr %wp543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32f8 word 0x7100311f
  %r544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r544 = load i64, ptr %r544.p, align 8, !alias.scope !3, !noalias !4
  %c545 = trunc i64 %r544 to i32
  %t546 = sub i32 %c545, 12
  %fn547 = icmp slt i32 %t546, 0
  %fz548 = icmp eq i32 %t546, 0
  %fc549 = icmp uge i32 %c545, 12
  %fx1550 = xor i32 %c545, 12
  %fx2551 = xor i32 %c545, %t546
  %fva552 = and i32 %fx1550, %fx2551
  %fv553 = icmp slt i32 %fva552, 0
  %nz554 = zext i1 %fn547 to i64
  %zz555 = zext i1 %fz548 to i64
  %cz556 = zext i1 %fc549 to i64
  %vz557 = zext i1 %fv553 to i64
  %ns558 = shl i64 %nz554, 31
  %zs559 = shl i64 %zz555, 30
  %cs560 = shl i64 %cz556, 29
  %vs561 = shl i64 %vz557, 28
  %nzor562 = or i64 %ns558, %zs559
  %cvor563 = or i64 %cs560, %vs561
  %nzcv564 = or i64 %nzor562, %cvor563
  %wp565 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv564, ptr %wp565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c32fc word 0x54000788
  %r566.p = getelementptr inbounds i8, ptr %c, i64 272
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %fsh568 = lshr i64 %r566, 29
  %ftr569 = trunc i64 %fsh568 to i1
  %fsh570 = lshr i64 %r566, 30
  %ftr571 = trunc i64 %fsh570 to i1
  %fnz572 = xor i1 %ftr571, true
  %cond567 = and i1 %ftr569, %fnz572
  br i1 %cond567, label %L_8021c33ec, label %L_8021c3300_ft
L_8021c3300_ft:
  ; @pc 0x8021c3300 word 0xb0005a09
  %wp573 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406940672, ptr %wp573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3304 word 0x91309129
  %r574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r574 = load i64, ptr %r574.p, align 8, !alias.scope !3, !noalias !4
  %t575 = add i64 %r574, 3108
  %wp576 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t575, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3308 word 0x1000008a
  %wp577 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34395140888, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c330c word 0x3868692b
  %r578.p = getelementptr inbounds i8, ptr %c, i64 72
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %r579.p = getelementptr inbounds i8, ptr %c, i64 64
  %r579 = load i64, ptr %r579.p, align 8, !alias.scope !3, !noalias !4
  %t580 = add i64 %r578, %r579
  %gmp581 = inttoptr i64 %t580 to ptr
  %gml582 = load i8, ptr %gmp581, align 1, !alias.scope !4, !noalias !3
  %c583 = zext i8 %gml582 to i64
  %wp584 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c583, ptr %wp584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3310 word 0x8b0b094a
  %r585.p = getelementptr inbounds i8, ptr %c, i64 80
  %r585 = load i64, ptr %r585.p, align 8, !alias.scope !3, !noalias !4
  %r586.p = getelementptr inbounds i8, ptr %c, i64 88
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %t587 = shl i64 %r586, 2
  %t588 = add i64 %r585, %t587
  %wp589 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t588, ptr %wp589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3314 word 0xd61f0140
  %r590.p = getelementptr inbounds i8, ptr %c, i64 80
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r590, label %L_8021c3314_jt_def [
    i64 34395140888, label %L_8021c3318
    i64 34395140964, label %L_8021c3364
    i64 34395141408, label %L_8021c3520
    i64 34395141520, label %L_8021c3590
    i64 34395141632, label %L_8021c3600
    i64 34395141748, label %L_8021c3674
    i64 34395141792, label %L_8021c36a0
  ]
L_8021c3328_ft:
  ; @pc 0x8021c3328 word 0x1e292000
  %fcmp612 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 9, i32 0)
  %wp613 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp612, ptr %wp613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c332c word 0x54005b6b
  %r614.p = getelementptr inbounds i8, ptr %c, i64 272
  %r614 = load i64, ptr %r614.p, align 8, !alias.scope !3, !noalias !4
  %fsh616 = lshr i64 %r614, 31
  %ftr617 = trunc i64 %fsh616 to i1
  %fsh618 = lshr i64 %r614, 28
  %ftr619 = trunc i64 %fsh618 to i1
  %cond615 = icmp ne i1 %ftr617, %ftr619
  br i1 %cond615, label %L_8021c3e98, label %L_8021c3330_ft
L_8021c3330_ft:
  ; @pc 0x8021c3330 word 0xf9400668
  %r620.p = getelementptr inbounds i8, ptr %c, i64 152
  %r620 = load i64, ptr %r620.p, align 8, !alias.scope !3, !noalias !4
  %t621 = add i64 %r620, 8
  %gmp622 = inttoptr i64 %t621 to ptr
  %gml623 = load i64, ptr %gmp622, align 1, !alias.scope !4, !noalias !3
  %wp624 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml623, ptr %wp624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3334 word 0x2f00e400
  %wp625 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp625, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3338 word 0xf9400508
  %r626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r626 = load i64, ptr %r626.p, align 8, !alias.scope !3, !noalias !4
  %t627 = add i64 %r626, 8
  %gmp628 = inttoptr i64 %t627 to ptr
  %gml629 = load i64, ptr %gmp628, align 1, !alias.scope !4, !noalias !3
  %wp630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml629, ptr %wp630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c333c word 0xb4000108
  %r631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %cmp632 = icmp eq i64 %r631, 0
  br i1 %cmp632, label %L_8021c335c, label %L_8021c3340_ft
L_8021c3340_ft:
  ; @pc 0x8021c3340 word 0xf940a914
  %r633.p = getelementptr inbounds i8, ptr %c, i64 64
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %t634 = add i64 %r633, 336
  %gmp635 = inttoptr i64 %t634 to ptr
  %gml636 = load i64, ptr %gmp635, align 1, !alias.scope !4, !noalias !3
  %wp637 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml636, ptr %wp637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3344 word 0xb40000d4
  %r638.p = getelementptr inbounds i8, ptr %c, i64 160
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %cmp639 = icmp eq i64 %r638, 0
  br i1 %cmp639, label %L_8021c335c, label %L_8021c3348_ft
L_8021c3348_ft:
  ; @pc 0x8021c3348 word 0x3941fa88
  %r640.p = getelementptr inbounds i8, ptr %c, i64 160
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %t641 = add i64 %r640, 126
  %gmp642 = inttoptr i64 %t641 to ptr
  %gml643 = load i8, ptr %gmp642, align 1, !alias.scope !4, !noalias !3
  %c644 = zext i8 %gml643 to i64
  %wp645 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c644, ptr %wp645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c334c word 0x37000068
  %r646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r646 = load i64, ptr %r646.p, align 8, !alias.scope !3, !noalias !4
  %t647 = and i64 %r646, 1
  %cmp648 = icmp ne i64 %t647, 0
  br i1 %cmp648, label %L_8021c3358, label %L_8021c3350
L_8021c3390_ft:
  ; @pc 0x8021c3390 word 0x71009e9f
  %r771.p = getelementptr inbounds i8, ptr %c, i64 160
  %r771 = load i64, ptr %r771.p, align 8, !alias.scope !3, !noalias !4
  %c772 = trunc i64 %r771 to i32
  %t773 = sub i32 %c772, 39
  %fn774 = icmp slt i32 %t773, 0
  %fz775 = icmp eq i32 %t773, 0
  %fc776 = icmp uge i32 %c772, 39
  %fx1777 = xor i32 %c772, 39
  %fx2778 = xor i32 %c772, %t773
  %fva779 = and i32 %fx1777, %fx2778
  %fv780 = icmp slt i32 %fva779, 0
  %nz781 = zext i1 %fn774 to i64
  %zz782 = zext i1 %fz775 to i64
  %cz783 = zext i1 %fc776 to i64
  %vz784 = zext i1 %fv780 to i64
  %ns785 = shl i64 %nz781, 31
  %zs786 = shl i64 %zz782, 30
  %cs787 = shl i64 %cz783, 29
  %vs788 = shl i64 %vz784, 28
  %nzor789 = or i64 %ns785, %zs786
  %cvor790 = or i64 %cs787, %vs788
  %nzcv791 = or i64 %nzor789, %cvor790
  %wp792 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv791, ptr %wp792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3394 word 0x54fffe81
  %r793.p = getelementptr inbounds i8, ptr %c, i64 272
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %fsh795 = lshr i64 %r793, 30
  %ftr796 = trunc i64 %fsh795 to i1
  %cond794 = xor i1 %ftr796, true
  br i1 %cond794, label %L_8021c3364, label %L_8021c3398_ft
L_8021c3398_ft:
  ; @pc 0x8021c3398 word 0xbd40b660
  %r797.p = getelementptr inbounds i8, ptr %c, i64 152
  %r797 = load i64, ptr %r797.p, align 8, !alias.scope !3, !noalias !4
  %t798 = add i64 %r797, 180
  %gmp799 = inttoptr i64 %t798 to ptr
  %gml800 = load i32, ptr %gmp799, align 1, !alias.scope !4, !noalias !3
  %c801 = zext i32 %gml800 to i128
  %wp802 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c801, ptr %wp802, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c339c word 0x140000ce
  br label %L_8021c36d4
L_8021c33f4_ft:
  ; @pc 0x8021c33f4 word 0xf0005948
  %wp949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34406850560, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33f8 word 0xbd40ae60
  %r950.p = getelementptr inbounds i8, ptr %c, i64 152
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %t951 = add i64 %r950, 172
  %gmp952 = inttoptr i64 %t951 to ptr
  %gml953 = load i32, ptr %gmp952, align 1, !alias.scope !4, !noalias !3
  %c954 = zext i32 %gml953 to i128
  %wp955 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c954, ptr %wp955, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c33fc word 0xbd4af501
  %r956.p = getelementptr inbounds i8, ptr %c, i64 64
  %r956 = load i64, ptr %r956.p, align 8, !alias.scope !3, !noalias !4
  %t957 = add i64 %r956, 2804
  %gmp958 = inttoptr i64 %t957 to ptr
  %gml959 = load i32, ptr %gmp958, align 1, !alias.scope !4, !noalias !3
  %c960 = zext i32 %gml959 to i128
  %wp961 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c960, ptr %wp961, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3400 word 0x1e210808
  call void @rt_fp_op_s(ptr %c, i32 2, i32 8, i32 0, i32 1)
  ; @pc 0x8021c3404 word 0x17ffffd8
  br label %L_8021c3364
L_8021c343c_ft:
  ; @pc 0x8021c343c word 0xb9400d09
  %r1043.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1043 = load i64, ptr %r1043.p, align 8, !alias.scope !3, !noalias !4
  %t1044 = add i64 %r1043, 12
  %gmp1045 = inttoptr i64 %t1044 to ptr
  %gml1046 = load i32, ptr %gmp1045, align 1, !alias.scope !4, !noalias !3
  %c1047 = zext i32 %gml1046 to i64
  %wp1048 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1047, ptr %wp1048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3440 word 0xb940228a
  %r1049.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1049 = load i64, ptr %r1049.p, align 8, !alias.scope !3, !noalias !4
  %t1050 = add i64 %r1049, 32
  %gmp1051 = inttoptr i64 %t1050 to ptr
  %gml1052 = load i32, ptr %gmp1051, align 1, !alias.scope !4, !noalias !3
  %c1053 = zext i32 %gml1052 to i64
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3444 word 0x6b0a013f
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %c1056 = trunc i64 %r1055 to i32
  %r1057.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1057 = load i64, ptr %r1057.p, align 8, !alias.scope !3, !noalias !4
  %c1058 = trunc i64 %r1057 to i32
  %t1059 = sub i32 %c1056, %c1058
  %fn1060 = icmp slt i32 %t1059, 0
  %fz1061 = icmp eq i32 %t1059, 0
  %fc1062 = icmp uge i32 %c1056, %c1058
  %fx11063 = xor i32 %c1056, %c1058
  %fx21064 = xor i32 %c1056, %t1059
  %fva1065 = and i32 %fx11063, %fx21064
  %fv1066 = icmp slt i32 %fva1065, 0
  %nz1067 = zext i1 %fn1060 to i64
  %zz1068 = zext i1 %fz1061 to i64
  %cz1069 = zext i1 %fc1062 to i64
  %vz1070 = zext i1 %fv1066 to i64
  %ns1071 = shl i64 %nz1067, 31
  %zs1072 = shl i64 %zz1068, 30
  %cs1073 = shl i64 %cz1069, 29
  %vs1074 = shl i64 %vz1070, 28
  %nzor1075 = or i64 %ns1071, %zs1072
  %cvor1076 = or i64 %cs1073, %vs1074
  %nzcv1077 = or i64 %nzor1075, %cvor1076
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3448 word 0x54fff881
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %fsh1081 = lshr i64 %r1079, 30
  %ftr1082 = trunc i64 %fsh1081 to i1
  %cond1080 = xor i1 %ftr1082, true
  br i1 %cond1080, label %L_8021c3358, label %L_8021c344c_ft
L_8021c344c_ft:
  ; @pc 0x8021c344c word 0xf9400113
  %r1083.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1083 = load i64, ptr %r1083.p, align 8, !alias.scope !3, !noalias !4
  %gmp1084 = inttoptr i64 %r1083 to ptr
  %gml1085 = load i64, ptr %gmp1084, align 1, !alias.scope !4, !noalias !3
  %wp1086 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1085, ptr %wp1086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3450 word 0xb4fff853
  %r1087.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1087 = load i64, ptr %r1087.p, align 8, !alias.scope !3, !noalias !4
  %cmp1088 = icmp eq i64 %r1087, 0
  br i1 %cmp1088, label %L_8021c3358, label %L_8021c3454_ft
L_8021c3454_ft:
  ; @pc 0x8021c3454 word 0x97ff767e
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141208, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a0e4c(ptr %c)
  ; @pc 0x8021c3458 word 0xf9400268
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %gmp1091 = inttoptr i64 %r1090 to ptr
  %gml1092 = load i64, ptr %gmp1091, align 1, !alias.scope !4, !noalias !3
  %wp1093 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1092, ptr %wp1093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c345c word 0xaa0003e1
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = or i64 0, %r1094
  %wp1096 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1095, ptr %wp1096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3460 word 0xaa1303e0
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %t1098 = or i64 0, %r1097
  %wp1099 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1098, ptr %wp1099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3464 word 0xf9400108
  %r1100.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1100 = load i64, ptr %r1100.p, align 8, !alias.scope !3, !noalias !4
  %gmp1101 = inttoptr i64 %r1100 to ptr
  %gml1102 = load i64, ptr %gmp1101, align 1, !alias.scope !4, !noalias !3
  %wp1103 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1102, ptr %wp1103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3468 word 0xd63f0100
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %fp1105 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1104, ptr %fp1105, align 8, !alias.scope !3, !noalias !4
  %wp1106 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141228, ptr %wp1106, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c346c word 0xb4fff760
  %r1107.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1107 = load i64, ptr %r1107.p, align 8, !alias.scope !3, !noalias !4
  %cmp1108 = icmp eq i64 %r1107, 0
  br i1 %cmp1108, label %L_8021c3358, label %L_8021c3470_ft
L_8021c3470_ft:
  ; @pc 0x8021c3470 word 0x3941f808
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %t1110 = add i64 %r1109, 126
  %gmp1111 = inttoptr i64 %t1110 to ptr
  %gml1112 = load i8, ptr %gmp1111, align 1, !alias.scope !4, !noalias !3
  %c1113 = zext i8 %gml1112 to i64
  %wp1114 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1113, ptr %wp1114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3474 word 0xaa0003f4
  %r1115.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1115 = load i64, ptr %r1115.p, align 8, !alias.scope !3, !noalias !4
  %t1116 = or i64 0, %r1115
  %wp1117 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1116, ptr %wp1117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3478 word 0x3607f6c8
  %r1118.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1118 = load i64, ptr %r1118.p, align 8, !alias.scope !3, !noalias !4
  %t1119 = and i64 %r1118, 1
  %cmp1120 = icmp eq i64 %t1119, 0
  br i1 %cmp1120, label %L_8021c3350, label %L_8021c347c_ft
L_8021c347c_ft:
  ; @pc 0x8021c347c word 0x17ffffb7
  br label %L_8021c3358
L_8021c348c_ft:
  ; @pc 0x8021c348c word 0x1e2e1000
  %wp1137 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1065353216, ptr %wp1137, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3490 word 0x1e202020
  %fcmp1138 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 0)
  %wp1139 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1138, ptr %wp1139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3494 word 0x5400546b
  %r1140.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1140 = load i64, ptr %r1140.p, align 8, !alias.scope !3, !noalias !4
  %fsh1142 = lshr i64 %r1140, 31
  %ftr1143 = trunc i64 %fsh1142 to i1
  %fsh1144 = lshr i64 %r1140, 28
  %ftr1145 = trunc i64 %fsh1144 to i1
  %cond1141 = icmp ne i1 %ftr1143, %ftr1145
  br i1 %cond1141, label %L_8021c3f20, label %L_8021c3498_ft
L_8021c3498_ft:
  ; @pc 0x8021c3498 word 0xf9400508
  %r1146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1146 = load i64, ptr %r1146.p, align 8, !alias.scope !3, !noalias !4
  %t1147 = add i64 %r1146, 8
  %gmp1148 = inttoptr i64 %t1147 to ptr
  %gml1149 = load i64, ptr %gmp1148, align 1, !alias.scope !4, !noalias !3
  %wp1150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1149, ptr %wp1150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c349c word 0xf9400509
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %t1152 = add i64 %r1151, 8
  %gmp1153 = inttoptr i64 %t1152 to ptr
  %gml1154 = load i64, ptr %gmp1153, align 1, !alias.scope !4, !noalias !3
  %wp1155 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1154, ptr %wp1155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34a0 word 0xb4fff629
  %r1156.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1156 = load i64, ptr %r1156.p, align 8, !alias.scope !3, !noalias !4
  %cmp1157 = icmp eq i64 %r1156, 0
  br i1 %cmp1157, label %L_8021c3364, label %L_8021c34a4_ft
L_8021c34a4_ft:
  ; @pc 0x8021c34a4 word 0xf940a929
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %t1159 = add i64 %r1158, 336
  %gmp1160 = inttoptr i64 %t1159 to ptr
  %gml1161 = load i64, ptr %gmp1160, align 1, !alias.scope !4, !noalias !3
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c34a8 word 0xb4fff5e9
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %cmp1164 = icmp eq i64 %r1163, 0
  br i1 %cmp1164, label %L_8021c3364, label %L_8021c34ac_ft
L_8021c34ac_ft:
  ; @pc 0x8021c34ac word 0x39400108
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %gmp1166 = inttoptr i64 %r1165 to ptr
  %gml1167 = load i8, ptr %gmp1166, align 1, !alias.scope !4, !noalias !3
  %c1168 = zext i8 %gml1167 to i64
  %wp1169 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1168, ptr %wp1169, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c34b0
L_8021c355c_ft:
  ; @pc 0x8021c355c word 0x1e292000
  %fcmp1354 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 9, i32 0)
  %wp1355 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1354, ptr %wp1355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3560 word 0x540053eb
  %r1356.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1356 = load i64, ptr %r1356.p, align 8, !alias.scope !3, !noalias !4
  %fsh1358 = lshr i64 %r1356, 31
  %ftr1359 = trunc i64 %fsh1358 to i1
  %fsh1360 = lshr i64 %r1356, 28
  %ftr1361 = trunc i64 %fsh1360 to i1
  %cond1357 = icmp ne i1 %ftr1359, %ftr1361
  br i1 %cond1357, label %L_8021c3fdc, label %L_8021c3564_ft
L_8021c3564_ft:
  ; @pc 0x8021c3564 word 0xf9400668
  %r1362.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1362 = load i64, ptr %r1362.p, align 8, !alias.scope !3, !noalias !4
  %t1363 = add i64 %r1362, 8
  %gmp1364 = inttoptr i64 %t1363 to ptr
  %gml1365 = load i64, ptr %gmp1364, align 1, !alias.scope !4, !noalias !3
  %wp1366 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1365, ptr %wp1366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3568 word 0x2f00e400
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1367, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c356c word 0xf9400508
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %t1369 = add i64 %r1368, 8
  %gmp1370 = inttoptr i64 %t1369 to ptr
  %gml1371 = load i64, ptr %gmp1370, align 1, !alias.scope !4, !noalias !3
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3570 word 0xb4000b28
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %cmp1374 = icmp eq i64 %r1373, 0
  br i1 %cmp1374, label %L_8021c36d4, label %L_8021c3574_ft
L_8021c3574_ft:
  ; @pc 0x8021c3574 word 0xf940a900
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %t1376 = add i64 %r1375, 336
  %gmp1377 = inttoptr i64 %t1376 to ptr
  %gml1378 = load i64, ptr %gmp1377, align 1, !alias.scope !4, !noalias !3
  %wp1379 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1378, ptr %wp1379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3578 word 0xb4000ae0
  %r1380.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1380 = load i64, ptr %r1380.p, align 8, !alias.scope !3, !noalias !4
  %cmp1381 = icmp eq i64 %r1380, 0
  br i1 %cmp1381, label %L_8021c36d4, label %L_8021c357c
L_8021c35cc_ft:
  ; @pc 0x8021c35cc word 0x1e292000
  %fcmp1466 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 9, i32 0)
  %wp1467 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1466, ptr %wp1467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35d0 word 0x5400582b
  %r1468.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1468 = load i64, ptr %r1468.p, align 8, !alias.scope !3, !noalias !4
  %fsh1470 = lshr i64 %r1468, 31
  %ftr1471 = trunc i64 %fsh1470 to i1
  %fsh1472 = lshr i64 %r1468, 28
  %ftr1473 = trunc i64 %fsh1472 to i1
  %cond1469 = icmp ne i1 %ftr1471, %ftr1473
  br i1 %cond1469, label %L_8021c40d4, label %L_8021c35d4_ft
L_8021c35d4_ft:
  ; @pc 0x8021c35d4 word 0xf9400668
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %t1475 = add i64 %r1474, 8
  %gmp1476 = inttoptr i64 %t1475 to ptr
  %gml1477 = load i64, ptr %gmp1476, align 1, !alias.scope !4, !noalias !3
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1477, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35d8 word 0x2f00e400
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1479, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35dc word 0xf9400508
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %t1481 = add i64 %r1480, 8
  %gmp1482 = inttoptr i64 %t1481 to ptr
  %gml1483 = load i64, ptr %gmp1482, align 1, !alias.scope !4, !noalias !3
  %wp1484 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1483, ptr %wp1484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35e0 word 0xb40007a8
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %cmp1486 = icmp eq i64 %r1485, 0
  br i1 %cmp1486, label %L_8021c36d4, label %L_8021c35e4_ft
L_8021c35e4_ft:
  ; @pc 0x8021c35e4 word 0xf940a900
  %r1487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1487 = load i64, ptr %r1487.p, align 8, !alias.scope !3, !noalias !4
  %t1488 = add i64 %r1487, 336
  %gmp1489 = inttoptr i64 %t1488 to ptr
  %gml1490 = load i64, ptr %gmp1489, align 1, !alias.scope !4, !noalias !3
  %wp1491 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1490, ptr %wp1491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c35e8 word 0xb4000760
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %cmp1493 = icmp eq i64 %r1492, 0
  br i1 %cmp1493, label %L_8021c36d4, label %L_8021c35ec
L_8021c3638_ft:
  ; @pc 0x8021c3638 word 0x1e292020
  %fcmp1578 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 9, i32 0)
  %wp1579 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1578, ptr %wp1579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c363c word 0x54005d4b
  %r1580.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1580 = load i64, ptr %r1580.p, align 8, !alias.scope !3, !noalias !4
  %fsh1582 = lshr i64 %r1580, 31
  %ftr1583 = trunc i64 %fsh1582 to i1
  %fsh1584 = lshr i64 %r1580, 28
  %ftr1585 = trunc i64 %fsh1584 to i1
  %cond1581 = icmp ne i1 %ftr1583, %ftr1585
  br i1 %cond1581, label %L_8021c41e4, label %L_8021c3640_ft
L_8021c3640_ft:
  ; @pc 0x8021c3640 word 0xf9400668
  %r1586.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1586 = load i64, ptr %r1586.p, align 8, !alias.scope !3, !noalias !4
  %t1587 = add i64 %r1586, 8
  %gmp1588 = inttoptr i64 %t1587 to ptr
  %gml1589 = load i64, ptr %gmp1588, align 1, !alias.scope !4, !noalias !3
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3644 word 0x2f00e401
  %wp1591 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 0, ptr %wp1591, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3648 word 0xf9400508
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = add i64 %r1592, 8
  %gmp1594 = inttoptr i64 %t1593 to ptr
  %gml1595 = load i64, ptr %gmp1594, align 1, !alias.scope !4, !noalias !3
  %wp1596 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1595, ptr %wp1596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c364c word 0xb40000e8
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %cmp1598 = icmp eq i64 %r1597, 0
  br i1 %cmp1598, label %L_8021c3668, label %L_8021c3650_ft
L_8021c3650_ft:
  ; @pc 0x8021c3650 word 0xf940a900
  %r1599.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1599 = load i64, ptr %r1599.p, align 8, !alias.scope !3, !noalias !4
  %t1600 = add i64 %r1599, 336
  %gmp1601 = inttoptr i64 %t1600 to ptr
  %gml1602 = load i64, ptr %gmp1601, align 1, !alias.scope !4, !noalias !3
  %wp1603 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1602, ptr %wp1603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3654 word 0xb40000a0
  %r1604.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1604 = load i64, ptr %r1604.p, align 8, !alias.scope !3, !noalias !4
  %cmp1605 = icmp eq i64 %r1604, 0
  br i1 %cmp1605, label %L_8021c3668, label %L_8021c3658
L_8021c36e4_ft:
  ; @pc 0x8021c36e4 word 0xf9403268
  %r1746.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1746 = load i64, ptr %r1746.p, align 8, !alias.scope !3, !noalias !4
  %t1747 = add i64 %r1746, 96
  %gmp1748 = inttoptr i64 %t1747 to ptr
  %gml1749 = load i64, ptr %gmp1748, align 1, !alias.scope !4, !noalias !3
  %wp1750 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1749, ptr %wp1750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36e8 word 0xf000bcb5
  %wp1751 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419875840, ptr %wp1751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36ec word 0xf000bcb3
  %wp1752 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 34419875840, ptr %wp1752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36f0 word 0xf940e2b5
  %r1753.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1753 = load i64, ptr %r1753.p, align 8, !alias.scope !3, !noalias !4
  %t1754 = add i64 %r1753, 448
  %gmp1755 = inttoptr i64 %t1754 to ptr
  %gml1756 = load i64, ptr %gmp1755, align 1, !alias.scope !4, !noalias !3
  %wp1757 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1756, ptr %wp1757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36f4 word 0xf940a900
  %r1758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1758 = load i64, ptr %r1758.p, align 8, !alias.scope !3, !noalias !4
  %t1759 = add i64 %r1758, 336
  %gmp1760 = inttoptr i64 %t1759 to ptr
  %gml1761 = load i64, ptr %gmp1760, align 1, !alias.scope !4, !noalias !3
  %wp1762 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1761, ptr %wp1762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c36f8 word 0xf940de73
  %r1763.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1763 = load i64, ptr %r1763.p, align 8, !alias.scope !3, !noalias !4
  %t1764 = add i64 %r1763, 440
  %gmp1765 = inttoptr i64 %t1764 to ptr
  %gml1766 = load i64, ptr %gmp1765, align 1, !alias.scope !4, !noalias !3
  %wp1767 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1766, ptr %wp1767, align 8, !alias.scope !3, !noalias !4
  br label %L_8021c36fc
L_8021c3708_ft:
  ; @pc 0x8021c3708 word 0xf9400ac8
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %t1781 = add i64 %r1780, 16
  %gmp1782 = inttoptr i64 %t1781 to ptr
  %gml1783 = load i64, ptr %gmp1782, align 1, !alias.scope !4, !noalias !3
  %wp1784 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1783, ptr %wp1784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c370c word 0xb5001628
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %cmp1786 = icmp ne i64 %r1785, 0
  br i1 %cmp1786, label %L_8021c39d0, label %L_8021c3710
L_8021c3720_ft:
  ; @pc 0x8021c3720 word 0xb9400d09
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %t1801 = add i64 %r1800, 12
  %gmp1802 = inttoptr i64 %t1801 to ptr
  %gml1803 = load i32, ptr %gmp1802, align 1, !alias.scope !4, !noalias !3
  %c1804 = zext i32 %gml1803 to i64
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1804, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3724 word 0xb94022ca
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = add i64 %r1806, 32
  %gmp1808 = inttoptr i64 %t1807 to ptr
  %gml1809 = load i32, ptr %gmp1808, align 1, !alias.scope !4, !noalias !3
  %c1810 = zext i32 %gml1809 to i64
  %wp1811 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1810, ptr %wp1811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3728 word 0x6b0a013f
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %c1813 = trunc i64 %r1812 to i32
  %r1814.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1814 = load i64, ptr %r1814.p, align 8, !alias.scope !3, !noalias !4
  %c1815 = trunc i64 %r1814 to i32
  %t1816 = sub i32 %c1813, %c1815
  %fn1817 = icmp slt i32 %t1816, 0
  %fz1818 = icmp eq i32 %t1816, 0
  %fc1819 = icmp uge i32 %c1813, %c1815
  %fx11820 = xor i32 %c1813, %c1815
  %fx21821 = xor i32 %c1813, %t1816
  %fva1822 = and i32 %fx11820, %fx21821
  %fv1823 = icmp slt i32 %fva1822, 0
  %nz1824 = zext i1 %fn1817 to i64
  %zz1825 = zext i1 %fz1818 to i64
  %cz1826 = zext i1 %fc1819 to i64
  %vz1827 = zext i1 %fv1823 to i64
  %ns1828 = shl i64 %nz1824, 31
  %zs1829 = shl i64 %zz1825, 30
  %cs1830 = shl i64 %cz1826, 29
  %vs1831 = shl i64 %vz1827, 28
  %nzor1832 = or i64 %ns1828, %zs1829
  %cvor1833 = or i64 %cs1830, %vs1831
  %nzcv1834 = or i64 %nzor1832, %cvor1833
  %wp1835 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1834, ptr %wp1835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c372c word 0x54ffed61
  %r1836.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1836 = load i64, ptr %r1836.p, align 8, !alias.scope !3, !noalias !4
  %fsh1838 = lshr i64 %r1836, 30
  %ftr1839 = trunc i64 %fsh1838 to i1
  %cond1837 = xor i1 %ftr1839, true
  br i1 %cond1837, label %L_8021c34d8, label %L_8021c3730_ft
L_8021c3730_ft:
  ; @pc 0x8021c3730 word 0xf9400115
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %gmp1841 = inttoptr i64 %r1840 to ptr
  %gml1842 = load i64, ptr %gmp1841, align 1, !alias.scope !4, !noalias !3
  %wp1843 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1842, ptr %wp1843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3734 word 0xb4ffed35
  %r1844.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1844 = load i64, ptr %r1844.p, align 8, !alias.scope !3, !noalias !4
  %cmp1845 = icmp eq i64 %r1844, 0
  br i1 %cmp1845, label %L_8021c34d8, label %L_8021c3738_ft
L_8021c3738_ft:
  ; @pc 0x8021c3738 word 0x97ff867c
  %wp1846 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141948, ptr %wp1846, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a5128(ptr %c)
  ; @pc 0x8021c373c word 0xf94002a8
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %gmp1848 = inttoptr i64 %r1847 to ptr
  %gml1849 = load i64, ptr %gmp1848, align 1, !alias.scope !4, !noalias !3
  %wp1850 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1849, ptr %wp1850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3740 word 0xaa0003e1
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %t1852 = or i64 0, %r1851
  %wp1853 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1852, ptr %wp1853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3744 word 0xaa1503e0
  %r1854.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1854 = load i64, ptr %r1854.p, align 8, !alias.scope !3, !noalias !4
  %t1855 = or i64 0, %r1854
  %wp1856 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1855, ptr %wp1856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3748 word 0xf9400108
  %r1857.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1857 = load i64, ptr %r1857.p, align 8, !alias.scope !3, !noalias !4
  %gmp1858 = inttoptr i64 %r1857 to ptr
  %gml1859 = load i64, ptr %gmp1858, align 1, !alias.scope !4, !noalias !3
  %wp1860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1859, ptr %wp1860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c374c word 0xd63f0100
  %r1861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1861 = load i64, ptr %r1861.p, align 8, !alias.scope !3, !noalias !4
  %fp1862 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1861, ptr %fp1862, align 8, !alias.scope !3, !noalias !4
  %wp1863 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395141968, ptr %wp1863, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3750 word 0xb4ffec40
  %r1864.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1864 = load i64, ptr %r1864.p, align 8, !alias.scope !3, !noalias !4
  %cmp1865 = icmp eq i64 %r1864, 0
  br i1 %cmp1865, label %L_8021c34d8, label %L_8021c3754_ft
L_8021c3754_ft:
  ; @pc 0x8021c3754 word 0x3940f808
  %r1866.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1866 = load i64, ptr %r1866.p, align 8, !alias.scope !3, !noalias !4
  %t1867 = add i64 %r1866, 62
  %gmp1868 = inttoptr i64 %t1867 to ptr
  %gml1869 = load i8, ptr %gmp1868, align 1, !alias.scope !4, !noalias !3
  %c1870 = zext i8 %gml1869 to i64
  %wp1871 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1870, ptr %wp1871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3758 word 0xaa0003f6
  %r1872.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1872 = load i64, ptr %r1872.p, align 8, !alias.scope !3, !noalias !4
  %t1873 = or i64 0, %r1872
  %wp1874 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1873, ptr %wp1874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c375c word 0x3607eba8
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = and i64 %r1875, 1
  %cmp1877 = icmp eq i64 %t1876, 0
  br i1 %cmp1877, label %L_8021c34d0, label %L_8021c3760_ft
L_8021c3760_ft:
  ; @pc 0x8021c3760 word 0x17ffff5e
  br label %L_8021c34d8
L_8021c376c_ft:
  ; @pc 0x8021c376c word 0xb9400d09
  %r1885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1885 = load i64, ptr %r1885.p, align 8, !alias.scope !3, !noalias !4
  %t1886 = add i64 %r1885, 12
  %gmp1887 = inttoptr i64 %t1886 to ptr
  %gml1888 = load i32, ptr %gmp1887, align 1, !alias.scope !4, !noalias !3
  %c1889 = zext i32 %gml1888 to i64
  %wp1890 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1889, ptr %wp1890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3770 word 0xb94022ca
  %r1891.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1891 = load i64, ptr %r1891.p, align 8, !alias.scope !3, !noalias !4
  %t1892 = add i64 %r1891, 32
  %gmp1893 = inttoptr i64 %t1892 to ptr
  %gml1894 = load i32, ptr %gmp1893, align 1, !alias.scope !4, !noalias !3
  %c1895 = zext i32 %gml1894 to i64
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1895, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3774 word 0x6b0a013f
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %c1898 = trunc i64 %r1897 to i32
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %c1900 = trunc i64 %r1899 to i32
  %t1901 = sub i32 %c1898, %c1900
  %fn1902 = icmp slt i32 %t1901, 0
  %fz1903 = icmp eq i32 %t1901, 0
  %fc1904 = icmp uge i32 %c1898, %c1900
  %fx11905 = xor i32 %c1898, %c1900
  %fx21906 = xor i32 %c1898, %t1901
  %fva1907 = and i32 %fx11905, %fx21906
  %fv1908 = icmp slt i32 %fva1907, 0
  %nz1909 = zext i1 %fn1902 to i64
  %zz1910 = zext i1 %fz1903 to i64
  %cz1911 = zext i1 %fc1904 to i64
  %vz1912 = zext i1 %fv1908 to i64
  %ns1913 = shl i64 %nz1909, 31
  %zs1914 = shl i64 %zz1910, 30
  %cs1915 = shl i64 %cz1911, 29
  %vs1916 = shl i64 %vz1912, 28
  %nzor1917 = or i64 %ns1913, %zs1914
  %cvor1918 = or i64 %cs1915, %vs1916
  %nzcv1919 = or i64 %nzor1917, %cvor1918
  %wp1920 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1919, ptr %wp1920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3778 word 0x54ffec01
  %r1921.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1921 = load i64, ptr %r1921.p, align 8, !alias.scope !3, !noalias !4
  %fsh1923 = lshr i64 %r1921, 30
  %ftr1924 = trunc i64 %fsh1923 to i1
  %cond1922 = xor i1 %ftr1924, true
  br i1 %cond1922, label %L_8021c34f8, label %L_8021c377c_ft
L_8021c377c_ft:
  ; @pc 0x8021c377c word 0xf9400115
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %gmp1926 = inttoptr i64 %r1925 to ptr
  %gml1927 = load i64, ptr %gmp1926, align 1, !alias.scope !4, !noalias !3
  %wp1928 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1927, ptr %wp1928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3780 word 0xb4ffebd5
  %r1929.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1929 = load i64, ptr %r1929.p, align 8, !alias.scope !3, !noalias !4
  %cmp1930 = icmp eq i64 %r1929, 0
  br i1 %cmp1930, label %L_8021c34f8, label %L_8021c3784_ft
L_8021c3784_ft:
  ; @pc 0x8021c3784 word 0x97ff8669
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142024, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a5128(ptr %c)
  ; @pc 0x8021c3788 word 0xf94002a8
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %gmp1933 = inttoptr i64 %r1932 to ptr
  %gml1934 = load i64, ptr %gmp1933, align 1, !alias.scope !4, !noalias !3
  %wp1935 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1934, ptr %wp1935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c378c word 0xaa0003e1
  %r1936.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1936 = load i64, ptr %r1936.p, align 8, !alias.scope !3, !noalias !4
  %t1937 = or i64 0, %r1936
  %wp1938 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1937, ptr %wp1938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3790 word 0xaa1503e0
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %t1940 = or i64 0, %r1939
  %wp1941 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1940, ptr %wp1941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3794 word 0xf9400108
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %gmp1943 = inttoptr i64 %r1942 to ptr
  %gml1944 = load i64, ptr %gmp1943, align 1, !alias.scope !4, !noalias !3
  %wp1945 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1944, ptr %wp1945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3798 word 0xd63f0100
  %r1946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1946 = load i64, ptr %r1946.p, align 8, !alias.scope !3, !noalias !4
  %fp1947 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1946, ptr %fp1947, align 8, !alias.scope !3, !noalias !4
  %wp1948 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142044, ptr %wp1948, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c379c word 0xb4ffeae0
  %r1949.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1949 = load i64, ptr %r1949.p, align 8, !alias.scope !3, !noalias !4
  %cmp1950 = icmp eq i64 %r1949, 0
  br i1 %cmp1950, label %L_8021c34f8, label %L_8021c37a0_ft
L_8021c37a0_ft:
  ; @pc 0x8021c37a0 word 0x3940f408
  %r1951.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1951 = load i64, ptr %r1951.p, align 8, !alias.scope !3, !noalias !4
  %t1952 = add i64 %r1951, 61
  %gmp1953 = inttoptr i64 %t1952 to ptr
  %gml1954 = load i8, ptr %gmp1953, align 1, !alias.scope !4, !noalias !3
  %c1955 = zext i8 %gml1954 to i64
  %wp1956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1955, ptr %wp1956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37a4 word 0xaa0003f6
  %r1957.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1957 = load i64, ptr %r1957.p, align 8, !alias.scope !3, !noalias !4
  %t1958 = or i64 0, %r1957
  %wp1959 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1958, ptr %wp1959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37a8 word 0x3607ea48
  %r1960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1960 = load i64, ptr %r1960.p, align 8, !alias.scope !3, !noalias !4
  %t1961 = and i64 %r1960, 1
  %cmp1962 = icmp eq i64 %t1961, 0
  br i1 %cmp1962, label %L_8021c34f0, label %L_8021c37ac_ft
L_8021c37ac_ft:
  ; @pc 0x8021c37ac word 0x17ffff53
  br label %L_8021c34f8
L_8021c37b8_ft:
  ; @pc 0x8021c37b8 word 0xb9400d09
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %t1971 = add i64 %r1970, 12
  %gmp1972 = inttoptr i64 %t1971 to ptr
  %gml1973 = load i32, ptr %gmp1972, align 1, !alias.scope !4, !noalias !3
  %c1974 = zext i32 %gml1973 to i64
  %wp1975 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1974, ptr %wp1975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37bc word 0xb94022ca
  %r1976.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1976 = load i64, ptr %r1976.p, align 8, !alias.scope !3, !noalias !4
  %t1977 = add i64 %r1976, 32
  %gmp1978 = inttoptr i64 %t1977 to ptr
  %gml1979 = load i32, ptr %gmp1978, align 1, !alias.scope !4, !noalias !3
  %c1980 = zext i32 %gml1979 to i64
  %wp1981 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1980, ptr %wp1981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37c0 word 0x6b0a013f
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %c1983 = trunc i64 %r1982 to i32
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %c1985 = trunc i64 %r1984 to i32
  %t1986 = sub i32 %c1983, %c1985
  %fn1987 = icmp slt i32 %t1986, 0
  %fz1988 = icmp eq i32 %t1986, 0
  %fc1989 = icmp uge i32 %c1983, %c1985
  %fx11990 = xor i32 %c1983, %c1985
  %fx21991 = xor i32 %c1983, %t1986
  %fva1992 = and i32 %fx11990, %fx21991
  %fv1993 = icmp slt i32 %fva1992, 0
  %nz1994 = zext i1 %fn1987 to i64
  %zz1995 = zext i1 %fz1988 to i64
  %cz1996 = zext i1 %fc1989 to i64
  %vz1997 = zext i1 %fv1993 to i64
  %ns1998 = shl i64 %nz1994, 31
  %zs1999 = shl i64 %zz1995, 30
  %cs2000 = shl i64 %cz1996, 29
  %vs2001 = shl i64 %vz1997, 28
  %nzor2002 = or i64 %ns1998, %zs1999
  %cvor2003 = or i64 %cs2000, %vs2001
  %nzcv2004 = or i64 %nzor2002, %cvor2003
  %wp2005 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2004, ptr %wp2005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37c4 word 0x54ffeaa1
  %r2006.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2006 = load i64, ptr %r2006.p, align 8, !alias.scope !3, !noalias !4
  %fsh2008 = lshr i64 %r2006, 30
  %ftr2009 = trunc i64 %fsh2008 to i1
  %cond2007 = xor i1 %ftr2009, true
  br i1 %cond2007, label %L_8021c3518, label %L_8021c37c8_ft
L_8021c37c8_ft:
  ; @pc 0x8021c37c8 word 0xf9400115
  %r2010.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2010 = load i64, ptr %r2010.p, align 8, !alias.scope !3, !noalias !4
  %gmp2011 = inttoptr i64 %r2010 to ptr
  %gml2012 = load i64, ptr %gmp2011, align 1, !alias.scope !4, !noalias !3
  %wp2013 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2012, ptr %wp2013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37cc word 0xb4ffea75
  %r2014.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2014 = load i64, ptr %r2014.p, align 8, !alias.scope !3, !noalias !4
  %cmp2015 = icmp eq i64 %r2014, 0
  br i1 %cmp2015, label %L_8021c3518, label %L_8021c37d0_ft
L_8021c37d0_ft:
  ; @pc 0x8021c37d0 word 0x97ff8656
  %wp2016 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142100, ptr %wp2016, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a5128(ptr %c)
  ; @pc 0x8021c37d4 word 0xf94002a8
  %r2017.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2017 = load i64, ptr %r2017.p, align 8, !alias.scope !3, !noalias !4
  %gmp2018 = inttoptr i64 %r2017 to ptr
  %gml2019 = load i64, ptr %gmp2018, align 1, !alias.scope !4, !noalias !3
  %wp2020 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2019, ptr %wp2020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37d8 word 0xaa0003e1
  %r2021.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2021 = load i64, ptr %r2021.p, align 8, !alias.scope !3, !noalias !4
  %t2022 = or i64 0, %r2021
  %wp2023 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2022, ptr %wp2023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37dc word 0xaa1503e0
  %r2024.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2024 = load i64, ptr %r2024.p, align 8, !alias.scope !3, !noalias !4
  %t2025 = or i64 0, %r2024
  %wp2026 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2025, ptr %wp2026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37e0 word 0xf9400108
  %r2027.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2027 = load i64, ptr %r2027.p, align 8, !alias.scope !3, !noalias !4
  %gmp2028 = inttoptr i64 %r2027 to ptr
  %gml2029 = load i64, ptr %gmp2028, align 1, !alias.scope !4, !noalias !3
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2029, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37e4 word 0xd63f0100
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %fp2032 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2031, ptr %fp2032, align 8, !alias.scope !3, !noalias !4
  %wp2033 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395142120, ptr %wp2033, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c37e8 word 0xb4ffe980
  %r2034.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2034 = load i64, ptr %r2034.p, align 8, !alias.scope !3, !noalias !4
  %cmp2035 = icmp eq i64 %r2034, 0
  br i1 %cmp2035, label %L_8021c3518, label %L_8021c37ec_ft
L_8021c37ec_ft:
  ; @pc 0x8021c37ec word 0x3940f008
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %t2037 = add i64 %r2036, 60
  %gmp2038 = inttoptr i64 %t2037 to ptr
  %gml2039 = load i8, ptr %gmp2038, align 1, !alias.scope !4, !noalias !3
  %c2040 = zext i8 %gml2039 to i64
  %wp2041 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2040, ptr %wp2041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37f0 word 0xaa0003f6
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %t2043 = or i64 0, %r2042
  %wp2044 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2043, ptr %wp2044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c37f4 word 0x3607e8e8
  %r2045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2045 = load i64, ptr %r2045.p, align 8, !alias.scope !3, !noalias !4
  %t2046 = and i64 %r2045, 1
  %cmp2047 = icmp eq i64 %t2046, 0
  br i1 %cmp2047, label %L_8021c3510, label %L_8021c37f8_ft
L_8021c37f8_ft:
  ; @pc 0x8021c37f8 word 0x17ffff48
  br label %L_8021c3518
L_8021c3804_ft:
  ; @pc 0x8021c3804 word 0xf9400ea8
  %r2055.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2055 = load i64, ptr %r2055.p, align 8, !alias.scope !3, !noalias !4
  %t2056 = add i64 %r2055, 24
  %gmp2057 = inttoptr i64 %t2056 to ptr
  %gml2058 = load i64, ptr %gmp2057, align 1, !alias.scope !4, !noalias !3
  %wp2059 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2058, ptr %wp2059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3808 word 0xb4ffe968
  %r2060.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2060 = load i64, ptr %r2060.p, align 8, !alias.scope !3, !noalias !4
  %cmp2061 = icmp eq i64 %r2060, 0
  br i1 %cmp2061, label %L_8021c3534, label %L_8021c380c_ft
L_8021c380c_ft:
  ; @pc 0x8021c380c word 0xb9400d09
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %t2063 = add i64 %r2062, 12
  %gmp2064 = inttoptr i64 %t2063 to ptr
  %gml2065 = load i32, ptr %gmp2064, align 1, !alias.scope !4, !noalias !3
  %c2066 = zext i32 %gml2065 to i64
  %wp2067 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2066, ptr %wp2067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3810 word 0xb94022aa
  %r2068.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2068 = load i64, ptr %r2068.p, align 8, !alias.scope !3, !noalias !4
  %t2069 = add i64 %r2068, 32
  %gmp2070 = inttoptr i64 %t2069 to ptr
  %gml2071 = load i32, ptr %gmp2070, align 1, !alias.scope !4, !noalias !3
  %c2072 = zext i32 %gml2071 to i64
  %wp2073 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2072, ptr %wp2073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3814 word 0x6b0a013f
  %r2074.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2074 = load i64, ptr %r2074.p, align 8, !alias.scope !3, !noalias !4
  %c2075 = trunc i64 %r2074 to i32
  %r2076.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2076 = load i64, ptr %r2076.p, align 8, !alias.scope !3, !noalias !4
  %c2077 = trunc i64 %r2076 to i32
  %t2078 = sub i32 %c2075, %c2077
  %fn2079 = icmp slt i32 %t2078, 0
  %fz2080 = icmp eq i32 %t2078, 0
  %fc2081 = icmp uge i32 %c2075, %c2077
  %fx12082 = xor i32 %c2075, %c2077
  %fx22083 = xor i32 %c2075, %t2078
  %fva2084 = and i32 %fx12082, %fx22083
  %fv2085 = icmp slt i32 %fva2084, 0
  %nz2086 = zext i1 %fn2079 to i64
  %zz2087 = zext i1 %fz2080 to i64
  %cz2088 = zext i1 %fc2081 to i64
  %vz2089 = zext i1 %fv2085 to i64
  %ns2090 = shl i64 %nz2086, 31
  %zs2091 = shl i64 %zz2087, 30
  %cs2092 = shl i64 %cz2088, 29
  %vs2093 = shl i64 %vz2089, 28
  %nzor2094 = or i64 %ns2090, %zs2091
  %cvor2095 = or i64 %cs2092, %vs2093
  %nzcv2096 = or i64 %nzor2094, %cvor2095
  %wp2097 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2096, ptr %wp2097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3818 word 0x54ffe8e1
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %fsh2100 = lshr i64 %r2098, 30
  %ftr2101 = trunc i64 %fsh2100 to i1
  %cond2099 = xor i1 %ftr2101, true
  br i1 %cond2099, label %L_8021c3534, label %L_8021c381c_ft
L_8021c381c_ft:
  ; @pc 0x8021c381c word 0xf9400114
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %gmp2103 = inttoptr i64 %r2102 to ptr
  %gml2104 = load i64, ptr %gmp2103, align 1, !alias.scope !4, !noalias !3
  %wp2105 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2104, ptr %wp2105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3820 word 0xb4ffe8b4
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %cmp2107 = icmp eq i64 %r2106, 0
  br i1 %cmp2107, label %L_8021c3534, label %L_8021c3824_ft
L_8021c3824_ft:
  ; @pc 0x8021c3824 word 0xf000bca8
  %wp2108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp2108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3828 word 0xf9414508
  %r2109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2109 = load i64, ptr %r2109.p, align 8, !alias.scope !3, !noalias !4
  %t2110 = add i64 %r2109, 648
  %gmp2111 = inttoptr i64 %t2110 to ptr
  %gml2112 = load i64, ptr %gmp2111, align 1, !alias.scope !4, !noalias !3
  %wp2113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2112, ptr %wp2113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c382c word 0x08dffd08
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %atp2115 = inttoptr i64 %r2114 to ptr
  %lda2116 = load atomic i8, ptr %atp2115 acquire, align 1, !alias.scope !4, !noalias !3
  %c2117 = zext i8 %lda2116 to i64
  %wp2118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2117, ptr %wp2118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3830 word 0x36001d28
  %r2119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2119 = load i64, ptr %r2119.p, align 8, !alias.scope !3, !noalias !4
  %t2120 = and i64 %r2119, 1
  %cmp2121 = icmp eq i64 %t2120, 0
  br i1 %cmp2121, label %L_8021c3bd4, label %L_8021c3834
L_8021c3850_ft:
  ; @pc 0x8021c3850 word 0x17ffff39
  br label %L_8021c3534
L_8021c385c_ft:
  ; @pc 0x8021c385c word 0xf9400ea8
  %r2151.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2151 = load i64, ptr %r2151.p, align 8, !alias.scope !3, !noalias !4
  %t2152 = add i64 %r2151, 24
  %gmp2153 = inttoptr i64 %t2152 to ptr
  %gml2154 = load i64, ptr %gmp2153, align 1, !alias.scope !4, !noalias !3
  %wp2155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2154, ptr %wp2155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3860 word 0xb4ffea28
  %r2156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2156 = load i64, ptr %r2156.p, align 8, !alias.scope !3, !noalias !4
  %cmp2157 = icmp eq i64 %r2156, 0
  br i1 %cmp2157, label %L_8021c35a4, label %L_8021c3864_ft
L_8021c3864_ft:
  ; @pc 0x8021c3864 word 0xb9400d09
  %r2158.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2158 = load i64, ptr %r2158.p, align 8, !alias.scope !3, !noalias !4
  %t2159 = add i64 %r2158, 12
  %gmp2160 = inttoptr i64 %t2159 to ptr
  %gml2161 = load i32, ptr %gmp2160, align 1, !alias.scope !4, !noalias !3
  %c2162 = zext i32 %gml2161 to i64
  %wp2163 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2162, ptr %wp2163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3868 word 0xb94022aa
  %r2164.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2164 = load i64, ptr %r2164.p, align 8, !alias.scope !3, !noalias !4
  %t2165 = add i64 %r2164, 32
  %gmp2166 = inttoptr i64 %t2165 to ptr
  %gml2167 = load i32, ptr %gmp2166, align 1, !alias.scope !4, !noalias !3
  %c2168 = zext i32 %gml2167 to i64
  %wp2169 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2168, ptr %wp2169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c386c word 0x6b0a013f
  %r2170.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2170 = load i64, ptr %r2170.p, align 8, !alias.scope !3, !noalias !4
  %c2171 = trunc i64 %r2170 to i32
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %c2173 = trunc i64 %r2172 to i32
  %t2174 = sub i32 %c2171, %c2173
  %fn2175 = icmp slt i32 %t2174, 0
  %fz2176 = icmp eq i32 %t2174, 0
  %fc2177 = icmp uge i32 %c2171, %c2173
  %fx12178 = xor i32 %c2171, %c2173
  %fx22179 = xor i32 %c2171, %t2174
  %fva2180 = and i32 %fx12178, %fx22179
  %fv2181 = icmp slt i32 %fva2180, 0
  %nz2182 = zext i1 %fn2175 to i64
  %zz2183 = zext i1 %fz2176 to i64
  %cz2184 = zext i1 %fc2177 to i64
  %vz2185 = zext i1 %fv2181 to i64
  %ns2186 = shl i64 %nz2182, 31
  %zs2187 = shl i64 %zz2183, 30
  %cs2188 = shl i64 %cz2184, 29
  %vs2189 = shl i64 %vz2185, 28
  %nzor2190 = or i64 %ns2186, %zs2187
  %cvor2191 = or i64 %cs2188, %vs2189
  %nzcv2192 = or i64 %nzor2190, %cvor2191
  %wp2193 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2192, ptr %wp2193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3870 word 0x54ffe9a1
  %r2194.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2194 = load i64, ptr %r2194.p, align 8, !alias.scope !3, !noalias !4
  %fsh2196 = lshr i64 %r2194, 30
  %ftr2197 = trunc i64 %fsh2196 to i1
  %cond2195 = xor i1 %ftr2197, true
  br i1 %cond2195, label %L_8021c35a4, label %L_8021c3874_ft
L_8021c3874_ft:
  ; @pc 0x8021c3874 word 0xf9400114
  %r2198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2198 = load i64, ptr %r2198.p, align 8, !alias.scope !3, !noalias !4
  %gmp2199 = inttoptr i64 %r2198 to ptr
  %gml2200 = load i64, ptr %gmp2199, align 1, !alias.scope !4, !noalias !3
  %wp2201 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2200, ptr %wp2201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3878 word 0xb4ffe974
  %r2202.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2202 = load i64, ptr %r2202.p, align 8, !alias.scope !3, !noalias !4
  %cmp2203 = icmp eq i64 %r2202, 0
  br i1 %cmp2203, label %L_8021c35a4, label %L_8021c387c_ft
L_8021c387c_ft:
  ; @pc 0x8021c387c word 0xf000bca8
  %wp2204 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp2204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3880 word 0xf9414508
  %r2205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2205 = load i64, ptr %r2205.p, align 8, !alias.scope !3, !noalias !4
  %t2206 = add i64 %r2205, 648
  %gmp2207 = inttoptr i64 %t2206 to ptr
  %gml2208 = load i64, ptr %gmp2207, align 1, !alias.scope !4, !noalias !3
  %wp2209 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2208, ptr %wp2209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3884 word 0x08dffd08
  %r2210.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2210 = load i64, ptr %r2210.p, align 8, !alias.scope !3, !noalias !4
  %atp2211 = inttoptr i64 %r2210 to ptr
  %lda2212 = load atomic i8, ptr %atp2211 acquire, align 1, !alias.scope !4, !noalias !3
  %c2213 = zext i8 %lda2212 to i64
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2213, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3888 word 0x36001c28
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %t2216 = and i64 %r2215, 1
  %cmp2217 = icmp eq i64 %t2216, 0
  br i1 %cmp2217, label %L_8021c3c0c, label %L_8021c388c
L_8021c38a8_ft:
  ; @pc 0x8021c38a8 word 0x17ffff3f
  br label %L_8021c35a4
L_8021c38b4_ft:
  ; @pc 0x8021c38b4 word 0xf9400ea8
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %t2248 = add i64 %r2247, 24
  %gmp2249 = inttoptr i64 %t2248 to ptr
  %gml2250 = load i64, ptr %gmp2249, align 1, !alias.scope !4, !noalias !3
  %wp2251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2250, ptr %wp2251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38b8 word 0xb4ffeae8
  %r2252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2252 = load i64, ptr %r2252.p, align 8, !alias.scope !3, !noalias !4
  %cmp2253 = icmp eq i64 %r2252, 0
  br i1 %cmp2253, label %L_8021c3614, label %L_8021c38bc_ft
L_8021c38bc_ft:
  ; @pc 0x8021c38bc word 0xb9400d09
  %r2254.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2254 = load i64, ptr %r2254.p, align 8, !alias.scope !3, !noalias !4
  %t2255 = add i64 %r2254, 12
  %gmp2256 = inttoptr i64 %t2255 to ptr
  %gml2257 = load i32, ptr %gmp2256, align 1, !alias.scope !4, !noalias !3
  %c2258 = zext i32 %gml2257 to i64
  %wp2259 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2258, ptr %wp2259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38c0 word 0xb94022aa
  %r2260.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2260 = load i64, ptr %r2260.p, align 8, !alias.scope !3, !noalias !4
  %t2261 = add i64 %r2260, 32
  %gmp2262 = inttoptr i64 %t2261 to ptr
  %gml2263 = load i32, ptr %gmp2262, align 1, !alias.scope !4, !noalias !3
  %c2264 = zext i32 %gml2263 to i64
  %wp2265 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2264, ptr %wp2265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38c4 word 0x6b0a013f
  %r2266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2266 = load i64, ptr %r2266.p, align 8, !alias.scope !3, !noalias !4
  %c2267 = trunc i64 %r2266 to i32
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %c2269 = trunc i64 %r2268 to i32
  %t2270 = sub i32 %c2267, %c2269
  %fn2271 = icmp slt i32 %t2270, 0
  %fz2272 = icmp eq i32 %t2270, 0
  %fc2273 = icmp uge i32 %c2267, %c2269
  %fx12274 = xor i32 %c2267, %c2269
  %fx22275 = xor i32 %c2267, %t2270
  %fva2276 = and i32 %fx12274, %fx22275
  %fv2277 = icmp slt i32 %fva2276, 0
  %nz2278 = zext i1 %fn2271 to i64
  %zz2279 = zext i1 %fz2272 to i64
  %cz2280 = zext i1 %fc2273 to i64
  %vz2281 = zext i1 %fv2277 to i64
  %ns2282 = shl i64 %nz2278, 31
  %zs2283 = shl i64 %zz2279, 30
  %cs2284 = shl i64 %cz2280, 29
  %vs2285 = shl i64 %vz2281, 28
  %nzor2286 = or i64 %ns2282, %zs2283
  %cvor2287 = or i64 %cs2284, %vs2285
  %nzcv2288 = or i64 %nzor2286, %cvor2287
  %wp2289 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2288, ptr %wp2289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38c8 word 0x54ffea61
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %fsh2292 = lshr i64 %r2290, 30
  %ftr2293 = trunc i64 %fsh2292 to i1
  %cond2291 = xor i1 %ftr2293, true
  br i1 %cond2291, label %L_8021c3614, label %L_8021c38cc_ft
L_8021c38cc_ft:
  ; @pc 0x8021c38cc word 0xf9400114
  %r2294.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2294 = load i64, ptr %r2294.p, align 8, !alias.scope !3, !noalias !4
  %gmp2295 = inttoptr i64 %r2294 to ptr
  %gml2296 = load i64, ptr %gmp2295, align 1, !alias.scope !4, !noalias !3
  %wp2297 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2296, ptr %wp2297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38d0 word 0xb4ffea34
  %r2298.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2298 = load i64, ptr %r2298.p, align 8, !alias.scope !3, !noalias !4
  %cmp2299 = icmp eq i64 %r2298, 0
  br i1 %cmp2299, label %L_8021c3614, label %L_8021c38d4_ft
L_8021c38d4_ft:
  ; @pc 0x8021c38d4 word 0xf000bca8
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38d8 word 0xf9414508
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %t2302 = add i64 %r2301, 648
  %gmp2303 = inttoptr i64 %t2302 to ptr
  %gml2304 = load i64, ptr %gmp2303, align 1, !alias.scope !4, !noalias !3
  %wp2305 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2304, ptr %wp2305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38dc word 0x08dffd08
  %r2306.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2306 = load i64, ptr %r2306.p, align 8, !alias.scope !3, !noalias !4
  %atp2307 = inttoptr i64 %r2306 to ptr
  %lda2308 = load atomic i8, ptr %atp2307 acquire, align 1, !alias.scope !4, !noalias !3
  %c2309 = zext i8 %lda2308 to i64
  %wp2310 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2309, ptr %wp2310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c38e0 word 0x36001b28
  %r2311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2311 = load i64, ptr %r2311.p, align 8, !alias.scope !3, !noalias !4
  %t2312 = and i64 %r2311, 1
  %cmp2313 = icmp eq i64 %t2312, 0
  br i1 %cmp2313, label %L_8021c3c44, label %L_8021c38e4
L_8021c3900_ft:
  ; @pc 0x8021c3900 word 0x17ffff45
  br label %L_8021c3614
L_8021c390c_ft:
  ; @pc 0x8021c390c word 0xf9400e88
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %t2344 = add i64 %r2343, 24
  %gmp2345 = inttoptr i64 %t2344 to ptr
  %gml2346 = load i64, ptr %gmp2345, align 1, !alias.scope !4, !noalias !3
  %wp2347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2346, ptr %wp2347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3910 word 0xb4ffebc8
  %r2348.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2348 = load i64, ptr %r2348.p, align 8, !alias.scope !3, !noalias !4
  %cmp2349 = icmp eq i64 %r2348, 0
  br i1 %cmp2349, label %L_8021c3688, label %L_8021c3914_ft
L_8021c3914_ft:
  ; @pc 0x8021c3914 word 0xb9400d09
  %r2350.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2350 = load i64, ptr %r2350.p, align 8, !alias.scope !3, !noalias !4
  %t2351 = add i64 %r2350, 12
  %gmp2352 = inttoptr i64 %t2351 to ptr
  %gml2353 = load i32, ptr %gmp2352, align 1, !alias.scope !4, !noalias !3
  %c2354 = zext i32 %gml2353 to i64
  %wp2355 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2354, ptr %wp2355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3918 word 0xb940228a
  %r2356.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2356 = load i64, ptr %r2356.p, align 8, !alias.scope !3, !noalias !4
  %t2357 = add i64 %r2356, 32
  %gmp2358 = inttoptr i64 %t2357 to ptr
  %gml2359 = load i32, ptr %gmp2358, align 1, !alias.scope !4, !noalias !3
  %c2360 = zext i32 %gml2359 to i64
  %wp2361 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2360, ptr %wp2361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c391c word 0x6b0a013f
  %r2362.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2362 = load i64, ptr %r2362.p, align 8, !alias.scope !3, !noalias !4
  %c2363 = trunc i64 %r2362 to i32
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %c2365 = trunc i64 %r2364 to i32
  %t2366 = sub i32 %c2363, %c2365
  %fn2367 = icmp slt i32 %t2366, 0
  %fz2368 = icmp eq i32 %t2366, 0
  %fc2369 = icmp uge i32 %c2363, %c2365
  %fx12370 = xor i32 %c2363, %c2365
  %fx22371 = xor i32 %c2363, %t2366
  %fva2372 = and i32 %fx12370, %fx22371
  %fv2373 = icmp slt i32 %fva2372, 0
  %nz2374 = zext i1 %fn2367 to i64
  %zz2375 = zext i1 %fz2368 to i64
  %cz2376 = zext i1 %fc2369 to i64
  %vz2377 = zext i1 %fv2373 to i64
  %ns2378 = shl i64 %nz2374, 31
  %zs2379 = shl i64 %zz2375, 30
  %cs2380 = shl i64 %cz2376, 29
  %vs2381 = shl i64 %vz2377, 28
  %nzor2382 = or i64 %ns2378, %zs2379
  %cvor2383 = or i64 %cs2380, %vs2381
  %nzcv2384 = or i64 %nzor2382, %cvor2383
  %wp2385 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2384, ptr %wp2385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3920 word 0x54ffeb41
  %r2386.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2386 = load i64, ptr %r2386.p, align 8, !alias.scope !3, !noalias !4
  %fsh2388 = lshr i64 %r2386, 30
  %ftr2389 = trunc i64 %fsh2388 to i1
  %cond2387 = xor i1 %ftr2389, true
  br i1 %cond2387, label %L_8021c3688, label %L_8021c3924_ft
L_8021c3924_ft:
  ; @pc 0x8021c3924 word 0xf9400113
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %gmp2391 = inttoptr i64 %r2390 to ptr
  %gml2392 = load i64, ptr %gmp2391, align 1, !alias.scope !4, !noalias !3
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3928 word 0xb4ffeb13
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %cmp2395 = icmp eq i64 %r2394, 0
  br i1 %cmp2395, label %L_8021c3688, label %L_8021c392c_ft
L_8021c392c_ft:
  ; @pc 0x8021c392c word 0xf000bca8
  %wp2396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp2396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3930 word 0xf9414508
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = add i64 %r2397, 648
  %gmp2399 = inttoptr i64 %t2398 to ptr
  %gml2400 = load i64, ptr %gmp2399, align 1, !alias.scope !4, !noalias !3
  %wp2401 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2400, ptr %wp2401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3934 word 0x08dffd08
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %atp2403 = inttoptr i64 %r2402 to ptr
  %lda2404 = load atomic i8, ptr %atp2403 acquire, align 1, !alias.scope !4, !noalias !3
  %c2405 = zext i8 %lda2404 to i64
  %wp2406 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2405, ptr %wp2406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3938 word 0x36001a28
  %r2407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2407 = load i64, ptr %r2407.p, align 8, !alias.scope !3, !noalias !4
  %t2408 = and i64 %r2407, 1
  %cmp2409 = icmp eq i64 %t2408, 0
  br i1 %cmp2409, label %L_8021c3c7c, label %L_8021c393c
L_8021c3958_ft:
  ; @pc 0x8021c3958 word 0x17ffff4c
  br label %L_8021c3688
L_8021c3964_ft:
  ; @pc 0x8021c3964 word 0xf9400e88
  %r2439.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2439 = load i64, ptr %r2439.p, align 8, !alias.scope !3, !noalias !4
  %t2440 = add i64 %r2439, 24
  %gmp2441 = inttoptr i64 %t2440 to ptr
  %gml2442 = load i64, ptr %gmp2441, align 1, !alias.scope !4, !noalias !3
  %wp2443 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2442, ptr %wp2443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3968 word 0xb4ffea68
  %r2444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2444 = load i64, ptr %r2444.p, align 8, !alias.scope !3, !noalias !4
  %cmp2445 = icmp eq i64 %r2444, 0
  br i1 %cmp2445, label %L_8021c36b4, label %L_8021c396c_ft
L_8021c396c_ft:
  ; @pc 0x8021c396c word 0xb9400d09
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %t2447 = add i64 %r2446, 12
  %gmp2448 = inttoptr i64 %t2447 to ptr
  %gml2449 = load i32, ptr %gmp2448, align 1, !alias.scope !4, !noalias !3
  %c2450 = zext i32 %gml2449 to i64
  %wp2451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2450, ptr %wp2451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3970 word 0xb940228a
  %r2452.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2452 = load i64, ptr %r2452.p, align 8, !alias.scope !3, !noalias !4
  %t2453 = add i64 %r2452, 32
  %gmp2454 = inttoptr i64 %t2453 to ptr
  %gml2455 = load i32, ptr %gmp2454, align 1, !alias.scope !4, !noalias !3
  %c2456 = zext i32 %gml2455 to i64
  %wp2457 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2456, ptr %wp2457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3974 word 0x6b0a013f
  %r2458.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2458 = load i64, ptr %r2458.p, align 8, !alias.scope !3, !noalias !4
  %c2459 = trunc i64 %r2458 to i32
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %c2461 = trunc i64 %r2460 to i32
  %t2462 = sub i32 %c2459, %c2461
  %fn2463 = icmp slt i32 %t2462, 0
  %fz2464 = icmp eq i32 %t2462, 0
  %fc2465 = icmp uge i32 %c2459, %c2461
  %fx12466 = xor i32 %c2459, %c2461
  %fx22467 = xor i32 %c2459, %t2462
  %fva2468 = and i32 %fx12466, %fx22467
  %fv2469 = icmp slt i32 %fva2468, 0
  %nz2470 = zext i1 %fn2463 to i64
  %zz2471 = zext i1 %fz2464 to i64
  %cz2472 = zext i1 %fc2465 to i64
  %vz2473 = zext i1 %fv2469 to i64
  %ns2474 = shl i64 %nz2470, 31
  %zs2475 = shl i64 %zz2471, 30
  %cs2476 = shl i64 %cz2472, 29
  %vs2477 = shl i64 %vz2473, 28
  %nzor2478 = or i64 %ns2474, %zs2475
  %cvor2479 = or i64 %cs2476, %vs2477
  %nzcv2480 = or i64 %nzor2478, %cvor2479
  %wp2481 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2480, ptr %wp2481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3978 word 0x54ffe9e1
  %r2482.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2482 = load i64, ptr %r2482.p, align 8, !alias.scope !3, !noalias !4
  %fsh2484 = lshr i64 %r2482, 30
  %ftr2485 = trunc i64 %fsh2484 to i1
  %cond2483 = xor i1 %ftr2485, true
  br i1 %cond2483, label %L_8021c36b4, label %L_8021c397c_ft
L_8021c397c_ft:
  ; @pc 0x8021c397c word 0xf9400113
  %r2486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2486 = load i64, ptr %r2486.p, align 8, !alias.scope !3, !noalias !4
  %gmp2487 = inttoptr i64 %r2486 to ptr
  %gml2488 = load i64, ptr %gmp2487, align 1, !alias.scope !4, !noalias !3
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3980 word 0xb4ffe9b3
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %cmp2491 = icmp eq i64 %r2490, 0
  br i1 %cmp2491, label %L_8021c36b4, label %L_8021c3984_ft
L_8021c3984_ft:
  ; @pc 0x8021c3984 word 0xf000bca8
  %wp2492 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp2492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3988 word 0xf9414508
  %r2493.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2493 = load i64, ptr %r2493.p, align 8, !alias.scope !3, !noalias !4
  %t2494 = add i64 %r2493, 648
  %gmp2495 = inttoptr i64 %t2494 to ptr
  %gml2496 = load i64, ptr %gmp2495, align 1, !alias.scope !4, !noalias !3
  %wp2497 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2496, ptr %wp2497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c398c word 0x08dffd08
  %r2498.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2498 = load i64, ptr %r2498.p, align 8, !alias.scope !3, !noalias !4
  %atp2499 = inttoptr i64 %r2498 to ptr
  %lda2500 = load atomic i8, ptr %atp2499 acquire, align 1, !alias.scope !4, !noalias !3
  %c2501 = zext i8 %lda2500 to i64
  %wp2502 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2501, ptr %wp2502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3990 word 0x36001928
  %r2503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2503 = load i64, ptr %r2503.p, align 8, !alias.scope !3, !noalias !4
  %t2504 = and i64 %r2503, 1
  %cmp2505 = icmp eq i64 %t2504, 0
  br i1 %cmp2505, label %L_8021c3cb4, label %L_8021c3994
L_8021c39b0_ft:
  ; @pc 0x8021c39b0 word 0x17ffff41
  br label %L_8021c36b4
L_8021c39d8_ft:
  ; @pc 0x8021c39d8 word 0xb9400d09
  %r2586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2586 = load i64, ptr %r2586.p, align 8, !alias.scope !3, !noalias !4
  %t2587 = add i64 %r2586, 12
  %gmp2588 = inttoptr i64 %t2587 to ptr
  %gml2589 = load i32, ptr %gmp2588, align 1, !alias.scope !4, !noalias !3
  %c2590 = zext i32 %gml2589 to i64
  %wp2591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2590, ptr %wp2591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39dc word 0xb94022ca
  %r2592.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2592 = load i64, ptr %r2592.p, align 8, !alias.scope !3, !noalias !4
  %t2593 = add i64 %r2592, 32
  %gmp2594 = inttoptr i64 %t2593 to ptr
  %gml2595 = load i32, ptr %gmp2594, align 1, !alias.scope !4, !noalias !3
  %c2596 = zext i32 %gml2595 to i64
  %wp2597 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2596, ptr %wp2597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39e0 word 0x6b0a013f
  %r2598.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2598 = load i64, ptr %r2598.p, align 8, !alias.scope !3, !noalias !4
  %c2599 = trunc i64 %r2598 to i32
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %c2601 = trunc i64 %r2600 to i32
  %t2602 = sub i32 %c2599, %c2601
  %fn2603 = icmp slt i32 %t2602, 0
  %fz2604 = icmp eq i32 %t2602, 0
  %fc2605 = icmp uge i32 %c2599, %c2601
  %fx12606 = xor i32 %c2599, %c2601
  %fx22607 = xor i32 %c2599, %t2602
  %fva2608 = and i32 %fx12606, %fx22607
  %fv2609 = icmp slt i32 %fva2608, 0
  %nz2610 = zext i1 %fn2603 to i64
  %zz2611 = zext i1 %fz2604 to i64
  %cz2612 = zext i1 %fc2605 to i64
  %vz2613 = zext i1 %fv2609 to i64
  %ns2614 = shl i64 %nz2610, 31
  %zs2615 = shl i64 %zz2611, 30
  %cs2616 = shl i64 %cz2612, 29
  %vs2617 = shl i64 %vz2613, 28
  %nzor2618 = or i64 %ns2614, %zs2615
  %cvor2619 = or i64 %cs2616, %vs2617
  %nzcv2620 = or i64 %nzor2618, %cvor2619
  %wp2621 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2620, ptr %wp2621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39e4 word 0x54ffe961
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %fsh2624 = lshr i64 %r2622, 30
  %ftr2625 = trunc i64 %fsh2624 to i1
  %cond2623 = xor i1 %ftr2625, true
  br i1 %cond2623, label %L_8021c3710, label %L_8021c39e8_ft
L_8021c39e8_ft:
  ; @pc 0x8021c39e8 word 0xf9400114
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %gmp2627 = inttoptr i64 %r2626 to ptr
  %gml2628 = load i64, ptr %gmp2627, align 1, !alias.scope !4, !noalias !3
  %wp2629 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2628, ptr %wp2629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39ec word 0xb4ffe934
  %r2630.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2630 = load i64, ptr %r2630.p, align 8, !alias.scope !3, !noalias !4
  %cmp2631 = icmp eq i64 %r2630, 0
  br i1 %cmp2631, label %L_8021c3710, label %L_8021c39f0_ft
L_8021c39f0_ft:
  ; @pc 0x8021c39f0 word 0x08dffea8
  %r2632.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2632 = load i64, ptr %r2632.p, align 8, !alias.scope !3, !noalias !4
  %atp2633 = inttoptr i64 %r2632 to ptr
  %lda2634 = load atomic i8, ptr %atp2633 acquire, align 1, !alias.scope !4, !noalias !3
  %c2635 = zext i8 %lda2634 to i64
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2635, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c39f4 word 0x36000d88
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %t2638 = and i64 %r2637, 1
  %cmp2639 = icmp eq i64 %t2638, 0
  br i1 %cmp2639, label %L_8021c3ba4, label %L_8021c39f8
L_8021c3a10_ft:
  ; @pc 0x8021c3a10 word 0x17ffff40
  br label %L_8021c3710
L_8021c3a24_ft:
  ; @pc 0x8021c3a24 word 0xb0005a09
  %wp2694 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406940672, ptr %wp2694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a28 word 0x9130c929
  %r2695.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2695 = load i64, ptr %r2695.p, align 8, !alias.scope !3, !noalias !4
  %t2696 = add i64 %r2695, 3122
  %wp2697 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2696, ptr %wp2697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a2c word 0x10ffc9ca
  %wp2698 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34395140964, ptr %wp2698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a30 word 0x7868792b
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %r2700.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2700 = load i64, ptr %r2700.p, align 8, !alias.scope !3, !noalias !4
  %t2701 = shl i64 %r2700, 1
  %t2702 = add i64 %r2699, %t2701
  %gmp2703 = inttoptr i64 %t2702 to ptr
  %gml2704 = load i16, ptr %gmp2703, align 1, !alias.scope !4, !noalias !3
  %c2705 = zext i16 %gml2704 to i64
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2705, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a34 word 0x8b0b094a
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = shl i64 %r2708, 2
  %t2710 = add i64 %r2707, %t2709
  %wp2711 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2710, ptr %wp2711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a38 word 0xd61f0140
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r2712, label %L_8021c3a38_jt_def [
    i64 34395140964, label %L_8021c3364
    i64 34395142716, label %L_8021c3a3c
    i64 34395142768, label %L_8021c3a70
    i64 34395142820, label %L_8021c3aa4
    i64 34395144988, label %L_8021c431c
    i64 34395145004, label %L_8021c432c
    i64 34395145020, label %L_8021c433c
    i64 34395145036, label %L_8021c434c
  ]
L_8021c3a60_ft:
  ; @pc 0x8021c3a60 word 0xf9400ac8
  %r2747.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2747 = load i64, ptr %r2747.p, align 8, !alias.scope !3, !noalias !4
  %t2748 = add i64 %r2747, 16
  %gmp2749 = inttoptr i64 %t2748 to ptr
  %gml2750 = load i64, ptr %gmp2749, align 1, !alias.scope !4, !noalias !3
  %wp2751 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2750, ptr %wp2751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a64 word 0xb50005c8
  %r2752.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2752 = load i64, ptr %r2752.p, align 8, !alias.scope !3, !noalias !4
  %cmp2753 = icmp ne i64 %r2752, 0
  br i1 %cmp2753, label %L_8021c3b1c, label %L_8021c3a68
L_8021c3a94_ft:
  ; @pc 0x8021c3a94 word 0xf9400ac8
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 16
  %gmp2796 = inttoptr i64 %t2795 to ptr
  %gml2797 = load i64, ptr %gmp2796, align 1, !alias.scope !4, !noalias !3
  %wp2798 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2797, ptr %wp2798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3a98 word 0xb5000208
  %r2799.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2799 = load i64, ptr %r2799.p, align 8, !alias.scope !3, !noalias !4
  %cmp2800 = icmp ne i64 %r2799, 0
  br i1 %cmp2800, label %L_8021c3ad8, label %L_8021c3a9c
L_8021c3ac8_ft:
  ; @pc 0x8021c3ac8 word 0xf9400ac8
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %t2842 = add i64 %r2841, 16
  %gmp2843 = inttoptr i64 %t2842 to ptr
  %gml2844 = load i64, ptr %gmp2843, align 1, !alias.scope !4, !noalias !3
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3acc word 0xb50004a8
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %cmp2847 = icmp ne i64 %r2846, 0
  br i1 %cmp2847, label %L_8021c3b60, label %L_8021c3ad0
L_8021c3ae0_ft:
  ; @pc 0x8021c3ae0 word 0xb9400d09
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %t2862 = add i64 %r2861, 12
  %gmp2863 = inttoptr i64 %t2862 to ptr
  %gml2864 = load i32, ptr %gmp2863, align 1, !alias.scope !4, !noalias !3
  %c2865 = zext i32 %gml2864 to i64
  %wp2866 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2865, ptr %wp2866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ae4 word 0xb94022ca
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %t2868 = add i64 %r2867, 32
  %gmp2869 = inttoptr i64 %t2868 to ptr
  %gml2870 = load i32, ptr %gmp2869, align 1, !alias.scope !4, !noalias !3
  %c2871 = zext i32 %gml2870 to i64
  %wp2872 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2871, ptr %wp2872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ae8 word 0x6b0a013f
  %r2873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2873 = load i64, ptr %r2873.p, align 8, !alias.scope !3, !noalias !4
  %c2874 = trunc i64 %r2873 to i32
  %r2875.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2875 = load i64, ptr %r2875.p, align 8, !alias.scope !3, !noalias !4
  %c2876 = trunc i64 %r2875 to i32
  %t2877 = sub i32 %c2874, %c2876
  %fn2878 = icmp slt i32 %t2877, 0
  %fz2879 = icmp eq i32 %t2877, 0
  %fc2880 = icmp uge i32 %c2874, %c2876
  %fx12881 = xor i32 %c2874, %c2876
  %fx22882 = xor i32 %c2874, %t2877
  %fva2883 = and i32 %fx12881, %fx22882
  %fv2884 = icmp slt i32 %fva2883, 0
  %nz2885 = zext i1 %fn2878 to i64
  %zz2886 = zext i1 %fz2879 to i64
  %cz2887 = zext i1 %fc2880 to i64
  %vz2888 = zext i1 %fv2884 to i64
  %ns2889 = shl i64 %nz2885, 31
  %zs2890 = shl i64 %zz2886, 30
  %cs2891 = shl i64 %cz2887, 29
  %vs2892 = shl i64 %vz2888, 28
  %nzor2893 = or i64 %ns2889, %zs2890
  %cvor2894 = or i64 %cs2891, %vs2892
  %nzcv2895 = or i64 %nzor2893, %cvor2894
  %wp2896 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2895, ptr %wp2896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3aec word 0x54fffd81
  %r2897.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2897 = load i64, ptr %r2897.p, align 8, !alias.scope !3, !noalias !4
  %fsh2899 = lshr i64 %r2897, 30
  %ftr2900 = trunc i64 %fsh2899 to i1
  %cond2898 = xor i1 %ftr2900, true
  br i1 %cond2898, label %L_8021c3a9c, label %L_8021c3af0_ft
L_8021c3af0_ft:
  ; @pc 0x8021c3af0 word 0xf9400114
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %gmp2902 = inttoptr i64 %r2901 to ptr
  %gml2903 = load i64, ptr %gmp2902, align 1, !alias.scope !4, !noalias !3
  %wp2904 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2903, ptr %wp2904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3af4 word 0xb4fffd54
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2905 = load i64, ptr %r2905.p, align 8, !alias.scope !3, !noalias !4
  %cmp2906 = icmp eq i64 %r2905, 0
  br i1 %cmp2906, label %L_8021c3a9c, label %L_8021c3af8_ft
L_8021c3af8_ft:
  ; @pc 0x8021c3af8 word 0x08dffea8
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %atp2908 = inttoptr i64 %r2907 to ptr
  %lda2909 = load atomic i8, ptr %atp2908 acquire, align 1, !alias.scope !4, !noalias !3
  %c2910 = zext i8 %lda2909 to i64
  %wp2911 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2910, ptr %wp2911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3afc word 0x36001408
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %t2913 = and i64 %r2912, 1
  %cmp2914 = icmp eq i64 %t2913, 0
  br i1 %cmp2914, label %L_8021c3d7c, label %L_8021c3b00
L_8021c3b18_ft:
  ; @pc 0x8021c3b18 word 0x17ffffe1
  br label %L_8021c3a9c
L_8021c3b24_ft:
  ; @pc 0x8021c3b24 word 0xb9400d09
  %r2941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2941 = load i64, ptr %r2941.p, align 8, !alias.scope !3, !noalias !4
  %t2942 = add i64 %r2941, 12
  %gmp2943 = inttoptr i64 %t2942 to ptr
  %gml2944 = load i32, ptr %gmp2943, align 1, !alias.scope !4, !noalias !3
  %c2945 = zext i32 %gml2944 to i64
  %wp2946 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2945, ptr %wp2946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b28 word 0xb94022ca
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %t2948 = add i64 %r2947, 32
  %gmp2949 = inttoptr i64 %t2948 to ptr
  %gml2950 = load i32, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  %c2951 = zext i32 %gml2950 to i64
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2951, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b2c word 0x6b0a013f
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %c2954 = trunc i64 %r2953 to i32
  %r2955.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2955 = load i64, ptr %r2955.p, align 8, !alias.scope !3, !noalias !4
  %c2956 = trunc i64 %r2955 to i32
  %t2957 = sub i32 %c2954, %c2956
  %fn2958 = icmp slt i32 %t2957, 0
  %fz2959 = icmp eq i32 %t2957, 0
  %fc2960 = icmp uge i32 %c2954, %c2956
  %fx12961 = xor i32 %c2954, %c2956
  %fx22962 = xor i32 %c2954, %t2957
  %fva2963 = and i32 %fx12961, %fx22962
  %fv2964 = icmp slt i32 %fva2963, 0
  %nz2965 = zext i1 %fn2958 to i64
  %zz2966 = zext i1 %fz2959 to i64
  %cz2967 = zext i1 %fc2960 to i64
  %vz2968 = zext i1 %fv2964 to i64
  %ns2969 = shl i64 %nz2965, 31
  %zs2970 = shl i64 %zz2966, 30
  %cs2971 = shl i64 %cz2967, 29
  %vs2972 = shl i64 %vz2968, 28
  %nzor2973 = or i64 %ns2969, %zs2970
  %cvor2974 = or i64 %cs2971, %vs2972
  %nzcv2975 = or i64 %nzor2973, %cvor2974
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2975, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b30 word 0x54fff9c1
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %fsh2979 = lshr i64 %r2977, 30
  %ftr2980 = trunc i64 %fsh2979 to i1
  %cond2978 = xor i1 %ftr2980, true
  br i1 %cond2978, label %L_8021c3a68, label %L_8021c3b34_ft
L_8021c3b34_ft:
  ; @pc 0x8021c3b34 word 0xf9400114
  %r2981.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2981 = load i64, ptr %r2981.p, align 8, !alias.scope !3, !noalias !4
  %gmp2982 = inttoptr i64 %r2981 to ptr
  %gml2983 = load i64, ptr %gmp2982, align 1, !alias.scope !4, !noalias !3
  %wp2984 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2983, ptr %wp2984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b38 word 0xb4fff994
  %r2985.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2985 = load i64, ptr %r2985.p, align 8, !alias.scope !3, !noalias !4
  %cmp2986 = icmp eq i64 %r2985, 0
  br i1 %cmp2986, label %L_8021c3a68, label %L_8021c3b3c_ft
L_8021c3b3c_ft:
  ; @pc 0x8021c3b3c word 0x08dffea8
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2987 = load i64, ptr %r2987.p, align 8, !alias.scope !3, !noalias !4
  %atp2988 = inttoptr i64 %r2987 to ptr
  %lda2989 = load atomic i8, ptr %atp2988 acquire, align 1, !alias.scope !4, !noalias !3
  %c2990 = zext i8 %lda2989 to i64
  %wp2991 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2990, ptr %wp2991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b40 word 0x360016a8
  %r2992.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2992 = load i64, ptr %r2992.p, align 8, !alias.scope !3, !noalias !4
  %t2993 = and i64 %r2992, 1
  %cmp2994 = icmp eq i64 %t2993, 0
  br i1 %cmp2994, label %L_8021c3e14, label %L_8021c3b44
L_8021c3b5c_ft:
  ; @pc 0x8021c3b5c word 0x17ffffc3
  br label %L_8021c3a68
L_8021c3b68_ft:
  ; @pc 0x8021c3b68 word 0xb9400d09
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %t3022 = add i64 %r3021, 12
  %gmp3023 = inttoptr i64 %t3022 to ptr
  %gml3024 = load i32, ptr %gmp3023, align 1, !alias.scope !4, !noalias !3
  %c3025 = zext i32 %gml3024 to i64
  %wp3026 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3025, ptr %wp3026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b6c word 0xb94022ca
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %t3028 = add i64 %r3027, 32
  %gmp3029 = inttoptr i64 %t3028 to ptr
  %gml3030 = load i32, ptr %gmp3029, align 1, !alias.scope !4, !noalias !3
  %c3031 = zext i32 %gml3030 to i64
  %wp3032 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3031, ptr %wp3032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b70 word 0x6b0a013f
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %c3034 = trunc i64 %r3033 to i32
  %r3035.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3035 = load i64, ptr %r3035.p, align 8, !alias.scope !3, !noalias !4
  %c3036 = trunc i64 %r3035 to i32
  %t3037 = sub i32 %c3034, %c3036
  %fn3038 = icmp slt i32 %t3037, 0
  %fz3039 = icmp eq i32 %t3037, 0
  %fc3040 = icmp uge i32 %c3034, %c3036
  %fx13041 = xor i32 %c3034, %c3036
  %fx23042 = xor i32 %c3034, %t3037
  %fva3043 = and i32 %fx13041, %fx23042
  %fv3044 = icmp slt i32 %fva3043, 0
  %nz3045 = zext i1 %fn3038 to i64
  %zz3046 = zext i1 %fz3039 to i64
  %cz3047 = zext i1 %fc3040 to i64
  %vz3048 = zext i1 %fv3044 to i64
  %ns3049 = shl i64 %nz3045, 31
  %zs3050 = shl i64 %zz3046, 30
  %cs3051 = shl i64 %cz3047, 29
  %vs3052 = shl i64 %vz3048, 28
  %nzor3053 = or i64 %ns3049, %zs3050
  %cvor3054 = or i64 %cs3051, %vs3052
  %nzcv3055 = or i64 %nzor3053, %cvor3054
  %wp3056 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3055, ptr %wp3056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b74 word 0x54fffae1
  %r3057.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3057 = load i64, ptr %r3057.p, align 8, !alias.scope !3, !noalias !4
  %fsh3059 = lshr i64 %r3057, 30
  %ftr3060 = trunc i64 %fsh3059 to i1
  %cond3058 = xor i1 %ftr3060, true
  br i1 %cond3058, label %L_8021c3ad0, label %L_8021c3b78_ft
L_8021c3b78_ft:
  ; @pc 0x8021c3b78 word 0xf9400114
  %r3061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3061 = load i64, ptr %r3061.p, align 8, !alias.scope !3, !noalias !4
  %gmp3062 = inttoptr i64 %r3061 to ptr
  %gml3063 = load i64, ptr %gmp3062, align 1, !alias.scope !4, !noalias !3
  %wp3064 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3063, ptr %wp3064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b7c word 0xb4fffab4
  %r3065.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3065 = load i64, ptr %r3065.p, align 8, !alias.scope !3, !noalias !4
  %cmp3066 = icmp eq i64 %r3065, 0
  br i1 %cmp3066, label %L_8021c3ad0, label %L_8021c3b80_ft
L_8021c3b80_ft:
  ; @pc 0x8021c3b80 word 0x08dffea8
  %r3067.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3067 = load i64, ptr %r3067.p, align 8, !alias.scope !3, !noalias !4
  %atp3068 = inttoptr i64 %r3067 to ptr
  %lda3069 = load atomic i8, ptr %atp3068 acquire, align 1, !alias.scope !4, !noalias !3
  %c3070 = zext i8 %lda3069 to i64
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3b84 word 0x36001608
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %t3073 = and i64 %r3072, 1
  %cmp3074 = icmp eq i64 %t3073, 0
  br i1 %cmp3074, label %L_8021c3e44, label %L_8021c3b88
L_8021c3ba0_ft:
  ; @pc 0x8021c3ba0 word 0x17ffffcc
  br label %L_8021c3ad0
L_8021c3bb4_ft:
  ; @pc 0x8021c3bb4 word 0x9000bc48
  %wp3104 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bb8 word 0xf000bca0
  %wp3105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bbc word 0xf944ad08
  %r3106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3106 = load i64, ptr %r3106.p, align 8, !alias.scope !3, !noalias !4
  %t3107 = add i64 %r3106, 2392
  %gmp3108 = inttoptr i64 %t3107 to ptr
  %gml3109 = load i64, ptr %gmp3108, align 1, !alias.scope !4, !noalias !3
  %wp3110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3109, ptr %wp3110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bc0 word 0x91004108
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %t3112 = add i64 %r3111, 16
  %wp3113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3112, ptr %wp3113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bc4 word 0xf9000268
  %r3114.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3114 = load i64, ptr %r3114.p, align 8, !alias.scope !3, !noalias !4
  %r3115.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3115 = load i64, ptr %r3115.p, align 8, !alias.scope !3, !noalias !4
  %gmp3116 = inttoptr i64 %r3114 to ptr
  store i64 %r3115, ptr %gmp3116, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3bc8 word 0xf940e000
  %r3117.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3117 = load i64, ptr %r3117.p, align 8, !alias.scope !3, !noalias !4
  %t3118 = add i64 %r3117, 448
  %gmp3119 = inttoptr i64 %t3118 to ptr
  %gml3120 = load i64, ptr %gmp3119, align 1, !alias.scope !4, !noalias !3
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bcc word 0x94277f79
  %wp3122 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143120, ptr %wp3122, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3bd0 word 0x17ffff8a
  br label %L_8021c39f8
L_8021c3be4_ft:
  ; @pc 0x8021c3be4 word 0x9000bc48
  %wp3133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3be8 word 0xf000bca9
  %wp3134 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419875840, ptr %wp3134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bec word 0xf944ad08
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %t3136 = add i64 %r3135, 2392
  %gmp3137 = inttoptr i64 %t3136 to ptr
  %gml3138 = load i64, ptr %gmp3137, align 1, !alias.scope !4, !noalias !3
  %wp3139 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3138, ptr %wp3139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bf0 word 0xf9414129
  %r3140.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3140 = load i64, ptr %r3140.p, align 8, !alias.scope !3, !noalias !4
  %t3141 = add i64 %r3140, 640
  %gmp3142 = inttoptr i64 %t3141 to ptr
  %gml3143 = load i64, ptr %gmp3142, align 1, !alias.scope !4, !noalias !3
  %wp3144 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3143, ptr %wp3144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bf4 word 0xf000bca0
  %wp3145 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bf8 word 0x91004108
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %t3147 = add i64 %r3146, 16
  %wp3148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3147, ptr %wp3148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3bfc word 0xf9000128
  %r3149.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3149 = load i64, ptr %r3149.p, align 8, !alias.scope !3, !noalias !4
  %r3150.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3150 = load i64, ptr %r3150.p, align 8, !alias.scope !3, !noalias !4
  %gmp3151 = inttoptr i64 %r3149 to ptr
  store i64 %r3150, ptr %gmp3151, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3c00 word 0xf9414400
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %t3153 = add i64 %r3152, 648
  %gmp3154 = inttoptr i64 %t3153 to ptr
  %gml3155 = load i64, ptr %gmp3154, align 1, !alias.scope !4, !noalias !3
  %wp3156 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3155, ptr %wp3156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c04 word 0x94277f6b
  %wp3157 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143176, ptr %wp3157, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3c08 word 0x17ffff0b
  br label %L_8021c3834
L_8021c3c1c_ft:
  ; @pc 0x8021c3c1c word 0x9000bc48
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c20 word 0xf000bca9
  %wp3169 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419875840, ptr %wp3169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c24 word 0xf944ad08
  %r3170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3170 = load i64, ptr %r3170.p, align 8, !alias.scope !3, !noalias !4
  %t3171 = add i64 %r3170, 2392
  %gmp3172 = inttoptr i64 %t3171 to ptr
  %gml3173 = load i64, ptr %gmp3172, align 1, !alias.scope !4, !noalias !3
  %wp3174 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3173, ptr %wp3174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c28 word 0xf9414129
  %r3175.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3175 = load i64, ptr %r3175.p, align 8, !alias.scope !3, !noalias !4
  %t3176 = add i64 %r3175, 640
  %gmp3177 = inttoptr i64 %t3176 to ptr
  %gml3178 = load i64, ptr %gmp3177, align 1, !alias.scope !4, !noalias !3
  %wp3179 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3178, ptr %wp3179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c2c word 0xf000bca0
  %wp3180 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c30 word 0x91004108
  %r3181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3181 = load i64, ptr %r3181.p, align 8, !alias.scope !3, !noalias !4
  %t3182 = add i64 %r3181, 16
  %wp3183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3182, ptr %wp3183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c34 word 0xf9000128
  %r3184.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3184 = load i64, ptr %r3184.p, align 8, !alias.scope !3, !noalias !4
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %gmp3186 = inttoptr i64 %r3184 to ptr
  store i64 %r3185, ptr %gmp3186, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3c38 word 0xf9414400
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %t3188 = add i64 %r3187, 648
  %gmp3189 = inttoptr i64 %t3188 to ptr
  %gml3190 = load i64, ptr %gmp3189, align 1, !alias.scope !4, !noalias !3
  %wp3191 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3190, ptr %wp3191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c3c word 0x94277f5d
  %wp3192 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143232, ptr %wp3192, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3c40 word 0x17ffff13
  br label %L_8021c388c
L_8021c3c54_ft:
  ; @pc 0x8021c3c54 word 0x9000bc48
  %wp3203 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c58 word 0xf000bca9
  %wp3204 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419875840, ptr %wp3204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c5c word 0xf944ad08
  %r3205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3205 = load i64, ptr %r3205.p, align 8, !alias.scope !3, !noalias !4
  %t3206 = add i64 %r3205, 2392
  %gmp3207 = inttoptr i64 %t3206 to ptr
  %gml3208 = load i64, ptr %gmp3207, align 1, !alias.scope !4, !noalias !3
  %wp3209 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3208, ptr %wp3209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c60 word 0xf9414129
  %r3210.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3210 = load i64, ptr %r3210.p, align 8, !alias.scope !3, !noalias !4
  %t3211 = add i64 %r3210, 640
  %gmp3212 = inttoptr i64 %t3211 to ptr
  %gml3213 = load i64, ptr %gmp3212, align 1, !alias.scope !4, !noalias !3
  %wp3214 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3213, ptr %wp3214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c64 word 0xf000bca0
  %wp3215 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c68 word 0x91004108
  %r3216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3216 = load i64, ptr %r3216.p, align 8, !alias.scope !3, !noalias !4
  %t3217 = add i64 %r3216, 16
  %wp3218 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3217, ptr %wp3218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c6c word 0xf9000128
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %gmp3221 = inttoptr i64 %r3219 to ptr
  store i64 %r3220, ptr %gmp3221, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3c70 word 0xf9414400
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %t3223 = add i64 %r3222, 648
  %gmp3224 = inttoptr i64 %t3223 to ptr
  %gml3225 = load i64, ptr %gmp3224, align 1, !alias.scope !4, !noalias !3
  %wp3226 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3225, ptr %wp3226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c74 word 0x94277f4f
  %wp3227 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143288, ptr %wp3227, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3c78 word 0x17ffff1b
  br label %L_8021c38e4
L_8021c3c8c_ft:
  ; @pc 0x8021c3c8c word 0x9000bc48
  %wp3238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c90 word 0xf000bca9
  %wp3239 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419875840, ptr %wp3239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c94 word 0xf944ad08
  %r3240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3240 = load i64, ptr %r3240.p, align 8, !alias.scope !3, !noalias !4
  %t3241 = add i64 %r3240, 2392
  %gmp3242 = inttoptr i64 %t3241 to ptr
  %gml3243 = load i64, ptr %gmp3242, align 1, !alias.scope !4, !noalias !3
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c98 word 0xf9414129
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %t3246 = add i64 %r3245, 640
  %gmp3247 = inttoptr i64 %t3246 to ptr
  %gml3248 = load i64, ptr %gmp3247, align 1, !alias.scope !4, !noalias !3
  %wp3249 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3248, ptr %wp3249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3c9c word 0xf000bca0
  %wp3250 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ca0 word 0x91004108
  %r3251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3251 = load i64, ptr %r3251.p, align 8, !alias.scope !3, !noalias !4
  %t3252 = add i64 %r3251, 16
  %wp3253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3252, ptr %wp3253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ca4 word 0xf9000128
  %r3254.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3254 = load i64, ptr %r3254.p, align 8, !alias.scope !3, !noalias !4
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %gmp3256 = inttoptr i64 %r3254 to ptr
  store i64 %r3255, ptr %gmp3256, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3ca8 word 0xf9414400
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = add i64 %r3257, 648
  %gmp3259 = inttoptr i64 %t3258 to ptr
  %gml3260 = load i64, ptr %gmp3259, align 1, !alias.scope !4, !noalias !3
  %wp3261 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3260, ptr %wp3261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cac word 0x94277f41
  %wp3262 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143344, ptr %wp3262, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3cb0 word 0x17ffff23
  br label %L_8021c393c
L_8021c3cc4_ft:
  ; @pc 0x8021c3cc4 word 0xf000bca8
  %wp3273 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419875840, ptr %wp3273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cc8 word 0x9000bc49
  %wp3274 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp3274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ccc word 0xf9414108
  %r3275.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3275 = load i64, ptr %r3275.p, align 8, !alias.scope !3, !noalias !4
  %t3276 = add i64 %r3275, 640
  %gmp3277 = inttoptr i64 %t3276 to ptr
  %gml3278 = load i64, ptr %gmp3277, align 1, !alias.scope !4, !noalias !3
  %wp3279 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3278, ptr %wp3279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cd0 word 0xf944ad29
  %r3280.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3280 = load i64, ptr %r3280.p, align 8, !alias.scope !3, !noalias !4
  %t3281 = add i64 %r3280, 2392
  %gmp3282 = inttoptr i64 %t3281 to ptr
  %gml3283 = load i64, ptr %gmp3282, align 1, !alias.scope !4, !noalias !3
  %wp3284 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3283, ptr %wp3284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cd4 word 0xf000bca0
  %wp3285 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cd8 word 0x91004129
  %r3286.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3286 = load i64, ptr %r3286.p, align 8, !alias.scope !3, !noalias !4
  %t3287 = add i64 %r3286, 16
  %wp3288 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3287, ptr %wp3288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cdc word 0xf9000109
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %r3290.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3290 = load i64, ptr %r3290.p, align 8, !alias.scope !3, !noalias !4
  %gmp3291 = inttoptr i64 %r3289 to ptr
  store i64 %r3290, ptr %gmp3291, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3ce0 word 0xf9414400
  %r3292.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3292 = load i64, ptr %r3292.p, align 8, !alias.scope !3, !noalias !4
  %t3293 = add i64 %r3292, 648
  %gmp3294 = inttoptr i64 %t3293 to ptr
  %gml3295 = load i64, ptr %gmp3294, align 1, !alias.scope !4, !noalias !3
  %wp3296 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3295, ptr %wp3296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ce4 word 0x94277f33
  %wp3297 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143400, ptr %wp3297, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3ce8 word 0x17ffff2b
  br label %L_8021c3994
L_8021c3cf4_ft:
  ; @pc 0x8021c3cf4 word 0x7100569f
  %r3305.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3305 = load i64, ptr %r3305.p, align 8, !alias.scope !3, !noalias !4
  %c3306 = trunc i64 %r3305 to i32
  %t3307 = sub i32 %c3306, 21
  %fn3308 = icmp slt i32 %t3307, 0
  %fz3309 = icmp eq i32 %t3307, 0
  %fc3310 = icmp uge i32 %c3306, 21
  %fx13311 = xor i32 %c3306, 21
  %fx23312 = xor i32 %c3306, %t3307
  %fva3313 = and i32 %fx13311, %fx23312
  %fv3314 = icmp slt i32 %fva3313, 0
  %nz3315 = zext i1 %fn3308 to i64
  %zz3316 = zext i1 %fz3309 to i64
  %cz3317 = zext i1 %fc3310 to i64
  %vz3318 = zext i1 %fv3314 to i64
  %ns3319 = shl i64 %nz3315, 31
  %zs3320 = shl i64 %zz3316, 30
  %cs3321 = shl i64 %cz3317, 29
  %vs3322 = shl i64 %vz3318, 28
  %nzor3323 = or i64 %ns3319, %zs3320
  %cvor3324 = or i64 %cs3321, %vs3322
  %nzcv3325 = or i64 %nzor3323, %cvor3324
  %wp3326 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3325, ptr %wp3326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3cf8 word 0x54000f80
  %r3327.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3327 = load i64, ptr %r3327.p, align 8, !alias.scope !3, !noalias !4
  %fsh3329 = lshr i64 %r3327, 30
  %cond3328 = trunc i64 %fsh3329 to i1
  br i1 %cond3328, label %L_8021c3ee8, label %L_8021c3cfc_ft
L_8021c3cfc_ft:
  ; @pc 0x8021c3cfc word 0x7100529f
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %c3331 = trunc i64 %r3330 to i32
  %t3332 = sub i32 %c3331, 20
  %fn3333 = icmp slt i32 %t3332, 0
  %fz3334 = icmp eq i32 %t3332, 0
  %fc3335 = icmp uge i32 %c3331, 20
  %fx13336 = xor i32 %c3331, 20
  %fx23337 = xor i32 %c3331, %t3332
  %fva3338 = and i32 %fx13336, %fx23337
  %fv3339 = icmp slt i32 %fva3338, 0
  %nz3340 = zext i1 %fn3333 to i64
  %zz3341 = zext i1 %fz3334 to i64
  %cz3342 = zext i1 %fc3335 to i64
  %vz3343 = zext i1 %fv3339 to i64
  %ns3344 = shl i64 %nz3340, 31
  %zs3345 = shl i64 %zz3341, 30
  %cs3346 = shl i64 %cz3342, 29
  %vs3347 = shl i64 %vz3343, 28
  %nzor3348 = or i64 %ns3344, %zs3345
  %cvor3349 = or i64 %cs3346, %vs3347
  %nzcv3350 = or i64 %nzor3348, %cvor3349
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3350, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d00 word 0x54000fa0
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %fsh3354 = lshr i64 %r3352, 30
  %cond3353 = trunc i64 %fsh3354 to i1
  br i1 %cond3353, label %L_8021c3ef4, label %L_8021c3d04_ft
L_8021c3d04_ft:
  ; @pc 0x8021c3d04 word 0x7100269f
  %r3355.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3355 = load i64, ptr %r3355.p, align 8, !alias.scope !3, !noalias !4
  %c3356 = trunc i64 %r3355 to i32
  %t3357 = sub i32 %c3356, 9
  %fn3358 = icmp slt i32 %t3357, 0
  %fz3359 = icmp eq i32 %t3357, 0
  %fc3360 = icmp uge i32 %c3356, 9
  %fx13361 = xor i32 %c3356, 9
  %fx23362 = xor i32 %c3356, %t3357
  %fva3363 = and i32 %fx13361, %fx23362
  %fv3364 = icmp slt i32 %fva3363, 0
  %nz3365 = zext i1 %fn3358 to i64
  %zz3366 = zext i1 %fz3359 to i64
  %cz3367 = zext i1 %fc3360 to i64
  %vz3368 = zext i1 %fv3364 to i64
  %ns3369 = shl i64 %nz3365, 31
  %zs3370 = shl i64 %zz3366, 30
  %cs3371 = shl i64 %cz3367, 29
  %vs3372 = shl i64 %vz3368, 28
  %nzor3373 = or i64 %ns3369, %zs3370
  %cvor3374 = or i64 %cs3371, %vs3372
  %nzcv3375 = or i64 %nzor3373, %cvor3374
  %wp3376 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3375, ptr %wp3376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d08 word 0x54ffaa81
  %r3377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3377 = load i64, ptr %r3377.p, align 8, !alias.scope !3, !noalias !4
  %fsh3379 = lshr i64 %r3377, 30
  %ftr3380 = trunc i64 %fsh3379 to i1
  %cond3378 = xor i1 %ftr3380, true
  br i1 %cond3378, label %L_8021c3258, label %L_8021c3d0c_ft
L_8021c3d0c_ft:
  ; @pc 0x8021c3d0c word 0xaa0803e0
  %r3381.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3381 = load i64, ptr %r3381.p, align 8, !alias.scope !3, !noalias !4
  %t3382 = or i64 0, %r3381
  %wp3383 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3382, ptr %wp3383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d10 word 0x97ff8570
  %wp3384 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143444, ptr %wp3384, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a52d0(ptr %c)
  ; @pc 0x8021c3d14 word 0x14000039
  br label %L_8021c3df8
L_8021c3d60_ft:
  ; @pc 0x8021c3d60 word 0xaa1603e0
  %r3483.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3483 = load i64, ptr %r3483.p, align 8, !alias.scope !3, !noalias !4
  %t3484 = or i64 0, %r3483
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d64 word 0x2a1403e1
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %c3487 = trunc i64 %r3486 to i32
  %t3488 = or i32 0, %c3487
  %c3489 = zext i32 %t3488 to i64
  %wp3490 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3489, ptr %wp3490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d68 word 0x2a1503e2
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %c3492 = trunc i64 %r3491 to i32
  %t3493 = or i32 0, %c3492
  %c3494 = zext i32 %t3493 to i64
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3494, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d6c word 0x9793abb5
  %wp3496 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143536, ptr %wp3496, align 8, !alias.scope !3, !noalias !4
  call void @f_8006aec40(ptr %c)
  ; @pc 0x8021c3d70 word 0xf9405260
  %r3497.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3497 = load i64, ptr %r3497.p, align 8, !alias.scope !3, !noalias !4
  %t3498 = add i64 %r3497, 160
  %gmp3499 = inttoptr i64 %t3498 to ptr
  %gml3500 = load i64, ptr %gmp3499, align 1, !alias.scope !4, !noalias !3
  %wp3501 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3500, ptr %wp3501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d74 word 0x1e204008
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3502 = load i128, ptr %r3502.p, align 16, !alias.scope !3, !noalias !4
  %c3503 = trunc i128 %r3502 to i32
  %c3504 = zext i32 %c3503 to i128
  %wp3505 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3504, ptr %wp3505, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d78 word 0x17fffd97
  br label %L_8021c33d4
L_8021c3d8c_ft:
  ; @pc 0x8021c3d8c word 0x9000bc48
  %wp3516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d90 word 0xf000bca0
  %wp3517 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d94 word 0xf944ad08
  %r3518.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3518 = load i64, ptr %r3518.p, align 8, !alias.scope !3, !noalias !4
  %t3519 = add i64 %r3518, 2392
  %gmp3520 = inttoptr i64 %t3519 to ptr
  %gml3521 = load i64, ptr %gmp3520, align 1, !alias.scope !4, !noalias !3
  %wp3522 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3521, ptr %wp3522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d98 word 0x91004108
  %r3523.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3523 = load i64, ptr %r3523.p, align 8, !alias.scope !3, !noalias !4
  %t3524 = add i64 %r3523, 16
  %wp3525 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3524, ptr %wp3525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3d9c word 0xf9000268
  %r3526.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3526 = load i64, ptr %r3526.p, align 8, !alias.scope !3, !noalias !4
  %r3527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3527 = load i64, ptr %r3527.p, align 8, !alias.scope !3, !noalias !4
  %gmp3528 = inttoptr i64 %r3526 to ptr
  store i64 %r3527, ptr %gmp3528, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3da0 word 0xf940e000
  %r3529.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3529 = load i64, ptr %r3529.p, align 8, !alias.scope !3, !noalias !4
  %t3530 = add i64 %r3529, 448
  %gmp3531 = inttoptr i64 %t3530 to ptr
  %gml3532 = load i64, ptr %gmp3531, align 1, !alias.scope !4, !noalias !3
  %wp3533 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3532, ptr %wp3533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3da4 word 0x94277f03
  %wp3534 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143592, ptr %wp3534, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3da8 word 0x17ffff56
  br label %L_8021c3b00
L_8021c3db4_ft:
  ; @pc 0x8021c3db4 word 0x910022c0
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %t3544 = add i64 %r3543, 8
  %wp3545 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3544, ptr %wp3545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3db8 word 0x2a1403e1
  %r3546.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3546 = load i64, ptr %r3546.p, align 8, !alias.scope !3, !noalias !4
  %c3547 = trunc i64 %r3546 to i32
  %t3548 = or i32 0, %c3547
  %c3549 = zext i32 %t3548 to i64
  %wp3550 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3549, ptr %wp3550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dbc word 0x2a1503e2
  %r3551.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3551 = load i64, ptr %r3551.p, align 8, !alias.scope !3, !noalias !4
  %c3552 = trunc i64 %r3551 to i32
  %t3553 = or i32 0, %c3552
  %c3554 = zext i32 %t3553 to i64
  %wp3555 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3554, ptr %wp3555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dc0 word 0x97ffcaf9
  %wp3556 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143620, ptr %wp3556, align 8, !alias.scope !3, !noalias !4
  call void @f_8021b69a4(ptr %c)
  ; @pc 0x8021c3dc4 word 0x9103c2c0
  %r3557.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3557 = load i64, ptr %r3557.p, align 8, !alias.scope !3, !noalias !4
  %t3558 = add i64 %r3557, 240
  %wp3559 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3558, ptr %wp3559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dc8 word 0x2a1403e1
  %r3560.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3560 = load i64, ptr %r3560.p, align 8, !alias.scope !3, !noalias !4
  %c3561 = trunc i64 %r3560 to i32
  %t3562 = or i32 0, %c3561
  %c3563 = zext i32 %t3562 to i64
  %wp3564 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3563, ptr %wp3564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dcc word 0x1e204008
  %r3565.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3565 = load i128, ptr %r3565.p, align 16, !alias.scope !3, !noalias !4
  %c3566 = trunc i128 %r3565 to i32
  %c3567 = zext i32 %c3566 to i128
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3567, ptr %wp3568, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dd0 word 0x2a1503e2
  %r3569.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3569 = load i64, ptr %r3569.p, align 8, !alias.scope !3, !noalias !4
  %c3570 = trunc i64 %r3569 to i32
  %t3571 = or i32 0, %c3570
  %c3572 = zext i32 %t3571 to i64
  %wp3573 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3572, ptr %wp3573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3dd4 word 0x97ffcaf4
  %wp3574 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143640, ptr %wp3574, align 8, !alias.scope !3, !noalias !4
  call void @f_8021b69a4(ptr %c)
  ; @pc 0x8021c3dd8 word 0x17fffd82
  br label %L_8021c33e0
L_8021c3e24_ft:
  ; @pc 0x8021c3e24 word 0x9000bc48
  %wp3626 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e28 word 0xf000bca0
  %wp3627 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e2c word 0xf944ad08
  %r3628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3628 = load i64, ptr %r3628.p, align 8, !alias.scope !3, !noalias !4
  %t3629 = add i64 %r3628, 2392
  %gmp3630 = inttoptr i64 %t3629 to ptr
  %gml3631 = load i64, ptr %gmp3630, align 1, !alias.scope !4, !noalias !3
  %wp3632 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3631, ptr %wp3632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e30 word 0x91004108
  %r3633.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3633 = load i64, ptr %r3633.p, align 8, !alias.scope !3, !noalias !4
  %t3634 = add i64 %r3633, 16
  %wp3635 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3634, ptr %wp3635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e34 word 0xf9000268
  %r3636.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3636 = load i64, ptr %r3636.p, align 8, !alias.scope !3, !noalias !4
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %gmp3638 = inttoptr i64 %r3636 to ptr
  store i64 %r3637, ptr %gmp3638, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3e38 word 0xf940e000
  %r3639.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3639 = load i64, ptr %r3639.p, align 8, !alias.scope !3, !noalias !4
  %t3640 = add i64 %r3639, 448
  %gmp3641 = inttoptr i64 %t3640 to ptr
  %gml3642 = load i64, ptr %gmp3641, align 1, !alias.scope !4, !noalias !3
  %wp3643 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3642, ptr %wp3643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e3c word 0x94277edd
  %wp3644 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143744, ptr %wp3644, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3e40 word 0x17ffff41
  br label %L_8021c3b44
L_8021c3e54_ft:
  ; @pc 0x8021c3e54 word 0x9000bc48
  %wp3655 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp3655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e58 word 0xf000bca0
  %wp3656 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419875840, ptr %wp3656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e5c word 0xf944ad08
  %r3657.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3657 = load i64, ptr %r3657.p, align 8, !alias.scope !3, !noalias !4
  %t3658 = add i64 %r3657, 2392
  %gmp3659 = inttoptr i64 %t3658 to ptr
  %gml3660 = load i64, ptr %gmp3659, align 1, !alias.scope !4, !noalias !3
  %wp3661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3660, ptr %wp3661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e60 word 0x91004108
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %t3663 = add i64 %r3662, 16
  %wp3664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3663, ptr %wp3664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e64 word 0xf9000268
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %r3666.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3666 = load i64, ptr %r3666.p, align 8, !alias.scope !3, !noalias !4
  %gmp3667 = inttoptr i64 %r3665 to ptr
  store i64 %r3666, ptr %gmp3667, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8021c3e68 word 0xf940e000
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %t3669 = add i64 %r3668, 448
  %gmp3670 = inttoptr i64 %t3669 to ptr
  %gml3671 = load i64, ptr %gmp3670, align 1, !alias.scope !4, !noalias !3
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e6c word 0x94277ed1
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143792, ptr %wp3673, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8021c3e70 word 0x17ffff46
  br label %L_8021c3b88
L_8021c3e84_ft:
  ; @pc 0x8021c3e84 word 0xf940a900
  %r3686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3686 = load i64, ptr %r3686.p, align 8, !alias.scope !3, !noalias !4
  %t3687 = add i64 %r3686, 336
  %gmp3688 = inttoptr i64 %t3687 to ptr
  %gml3689 = load i64, ptr %gmp3688, align 1, !alias.scope !4, !noalias !3
  %wp3690 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3689, ptr %wp3690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e88 word 0xb4ffa6a0
  %r3691.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3691 = load i64, ptr %r3691.p, align 8, !alias.scope !3, !noalias !4
  %cmp3692 = icmp eq i64 %r3691, 0
  br i1 %cmp3692, label %L_8021c335c, label %L_8021c3e8c_ft
L_8021c3e8c_ft:
  ; @pc 0x8021c3e8c word 0x97ff75ef
  %wp3693 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143824, ptr %wp3693, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1648(ptr %c)
  ; @pc 0x8021c3e90 word 0xbd400000
  %r3694.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3694 = load i64, ptr %r3694.p, align 8, !alias.scope !3, !noalias !4
  %gmp3695 = inttoptr i64 %r3694 to ptr
  %gml3696 = load i32, ptr %gmp3695, align 1, !alias.scope !4, !noalias !3
  %c3697 = zext i32 %gml3696 to i128
  %wp3698 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3697, ptr %wp3698, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3e94 word 0x17fffd32
  br label %L_8021c335c
L_8021c3eb0_ft:
  ; @pc 0x8021c3eb0 word 0xf940a900
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = add i64 %r3716, 336
  %gmp3718 = inttoptr i64 %t3717 to ptr
  %gml3719 = load i64, ptr %gmp3718, align 1, !alias.scope !4, !noalias !3
  %wp3720 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3719, ptr %wp3720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3eb4 word 0xb4000060
  %r3721.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3721 = load i64, ptr %r3721.p, align 8, !alias.scope !3, !noalias !4
  %cmp3722 = icmp eq i64 %r3721, 0
  br i1 %cmp3722, label %L_8021c3ec0, label %L_8021c3eb8_ft
L_8021c3eb8_ft:
  ; @pc 0x8021c3eb8 word 0x97ff75e4
  %wp3723 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143868, ptr %wp3723, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1648(ptr %c)
  ; @pc 0x8021c3ebc word 0xbd40000b
  %r3724.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3724 = load i64, ptr %r3724.p, align 8, !alias.scope !3, !noalias !4
  %gmp3725 = inttoptr i64 %r3724 to ptr
  %gml3726 = load i32, ptr %gmp3725, align 1, !alias.scope !4, !noalias !3
  %c3727 = zext i32 %gml3726 to i128
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c3727, ptr %wp3728, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3ec0
L_8021c3ecc_ft:
  ; @pc 0x8021c3ecc word 0xf940a900
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %t3742 = add i64 %r3741, 336
  %gmp3743 = inttoptr i64 %t3742 to ptr
  %gml3744 = load i64, ptr %gmp3743, align 1, !alias.scope !4, !noalias !3
  %wp3745 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3744, ptr %wp3745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ed0 word 0xb4000060
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %cmp3747 = icmp eq i64 %r3746, 0
  br i1 %cmp3747, label %L_8021c3edc, label %L_8021c3ed4_ft
L_8021c3ed4_ft:
  ; @pc 0x8021c3ed4 word 0x97ff75dd
  %wp3748 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395143896, ptr %wp3748, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1648(ptr %c)
  ; @pc 0x8021c3ed8 word 0xbd40000a
  %r3749.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3749 = load i64, ptr %r3749.p, align 8, !alias.scope !3, !noalias !4
  %gmp3750 = inttoptr i64 %r3749 to ptr
  %gml3751 = load i32, ptr %gmp3750, align 1, !alias.scope !4, !noalias !3
  %c3752 = zext i32 %gml3751 to i128
  %wp3753 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c3752, ptr %wp3753, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3edc
L_8021c3f0c_ft:
  ; @pc 0x8021c3f0c word 0xf940a929
  %r3773.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3773 = load i64, ptr %r3773.p, align 8, !alias.scope !3, !noalias !4
  %t3774 = add i64 %r3773, 336
  %gmp3775 = inttoptr i64 %t3774 to ptr
  %gml3776 = load i64, ptr %gmp3775, align 1, !alias.scope !4, !noalias !3
  %wp3777 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3776, ptr %wp3777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f10 word 0xb4ffa2a9
  %r3778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3778 = load i64, ptr %r3778.p, align 8, !alias.scope !3, !noalias !4
  %cmp3779 = icmp eq i64 %r3778, 0
  br i1 %cmp3779, label %L_8021c3364, label %L_8021c3f14_ft
L_8021c3f14_ft:
  ; @pc 0x8021c3f14 word 0x39400108
  %r3780.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3780 = load i64, ptr %r3780.p, align 8, !alias.scope !3, !noalias !4
  %gmp3781 = inttoptr i64 %r3780 to ptr
  %gml3782 = load i8, ptr %gmp3781, align 1, !alias.scope !4, !noalias !3
  %c3783 = zext i8 %gml3782 to i64
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f18 word 0x1e2e1000
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1065353216, ptr %wp3785, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f1c word 0x17fffd65
  br label %L_8021c34b0
L_8021c3f34_ft:
  ; @pc 0x8021c3f34 word 0xf940a94a
  %r3799.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3799 = load i64, ptr %r3799.p, align 8, !alias.scope !3, !noalias !4
  %t3800 = add i64 %r3799, 336
  %gmp3801 = inttoptr i64 %t3800 to ptr
  %gml3802 = load i64, ptr %gmp3801, align 1, !alias.scope !4, !noalias !3
  %wp3803 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3802, ptr %wp3803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f38 word 0xb400008a
  %r3804.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3804 = load i64, ptr %r3804.p, align 8, !alias.scope !3, !noalias !4
  %cmp3805 = icmp eq i64 %r3804, 0
  br i1 %cmp3805, label %L_8021c3f48, label %L_8021c3f3c_ft
L_8021c3f3c_ft:
  ; @pc 0x8021c3f3c word 0x39400129
  %r3806.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3806 = load i64, ptr %r3806.p, align 8, !alias.scope !3, !noalias !4
  %gmp3807 = inttoptr i64 %r3806 to ptr
  %gml3808 = load i8, ptr %gmp3807, align 1, !alias.scope !4, !noalias !3
  %c3809 = zext i8 %gml3808 to i64
  %wp3810 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3809, ptr %wp3810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f40 word 0x7200013f
  %r3811.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3811 = load i64, ptr %r3811.p, align 8, !alias.scope !3, !noalias !4
  %c3812 = trunc i64 %r3811 to i32
  %t3813 = and i32 %c3812, 1
  %fn3814 = icmp slt i32 %t3813, 0
  %fz3815 = icmp eq i32 %t3813, 0
  %nz3816 = zext i1 %fn3814 to i64
  %zz3817 = zext i1 %fz3815 to i64
  %ns3818 = shl i64 %nz3816, 31
  %zs3819 = shl i64 %zz3817, 30
  %nzcv3820 = or i64 %ns3818, %zs3819
  %wp3821 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3820, ptr %wp3821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f44 word 0x1e200c63
  %r3822.p = getelementptr inbounds i8, ptr %c, i64 560
  %r3822 = load i128, ptr %r3822.p, align 16, !alias.scope !3, !noalias !4
  %c3823 = trunc i128 %r3822 to i32
  %r3824.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3824 = load i128, ptr %r3824.p, align 16, !alias.scope !3, !noalias !4
  %c3825 = trunc i128 %r3824 to i32
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %fsh3828 = lshr i64 %r3826, 30
  %cond3827 = trunc i64 %fsh3828 to i1
  %sel3829 = select i1 %cond3827, i32 %c3823, i32 %c3825
  %c3830 = zext i32 %sel3829 to i128
  %wp3831 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c3830, ptr %wp3831, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3f48
L_8021c3f54_ft:
  ; @pc 0x8021c3f54 word 0xf940a929
  %r3844.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3844 = load i64, ptr %r3844.p, align 8, !alias.scope !3, !noalias !4
  %t3845 = add i64 %r3844, 336
  %gmp3846 = inttoptr i64 %t3845 to ptr
  %gml3847 = load i64, ptr %gmp3846, align 1, !alias.scope !4, !noalias !3
  %wp3848 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3847, ptr %wp3848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f58 word 0xb4000089
  %r3849.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3849 = load i64, ptr %r3849.p, align 8, !alias.scope !3, !noalias !4
  %cmp3850 = icmp eq i64 %r3849, 0
  br i1 %cmp3850, label %L_8021c3f68, label %L_8021c3f5c_ft
L_8021c3f5c_ft:
  ; @pc 0x8021c3f5c word 0x39400108
  %r3851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3851 = load i64, ptr %r3851.p, align 8, !alias.scope !3, !noalias !4
  %gmp3852 = inttoptr i64 %r3851 to ptr
  %gml3853 = load i8, ptr %gmp3852, align 1, !alias.scope !4, !noalias !3
  %c3854 = zext i8 %gml3853 to i64
  %wp3855 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3854, ptr %wp3855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f60 word 0x7200011f
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %c3857 = trunc i64 %r3856 to i32
  %t3858 = and i32 %c3857, 1
  %fn3859 = icmp slt i32 %t3858, 0
  %fz3860 = icmp eq i32 %t3858, 0
  %nz3861 = zext i1 %fn3859 to i64
  %zz3862 = zext i1 %fz3860 to i64
  %ns3863 = shl i64 %nz3861, 31
  %zs3864 = shl i64 %zz3862, 30
  %nzcv3865 = or i64 %ns3863, %zs3864
  %wp3866 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3865, ptr %wp3866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f64 word 0x1e200c42
  %r3867.p = getelementptr inbounds i8, ptr %c, i64 544
  %r3867 = load i128, ptr %r3867.p, align 16, !alias.scope !3, !noalias !4
  %c3868 = trunc i128 %r3867 to i32
  %r3869.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3869 = load i128, ptr %r3869.p, align 16, !alias.scope !3, !noalias !4
  %c3870 = trunc i128 %r3869 to i32
  %r3871.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3871 = load i64, ptr %r3871.p, align 8, !alias.scope !3, !noalias !4
  %fsh3873 = lshr i64 %r3871, 30
  %cond3872 = trunc i64 %fsh3873 to i1
  %sel3874 = select i1 %cond3872, i32 %c3868, i32 %c3870
  %c3875 = zext i32 %sel3874 to i128
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c3875, ptr %wp3876, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c3f68
L_8021c3f7c_ft:
  ; @pc 0x8021c3f7c word 0xf9400ea8
  %r3884.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3884 = load i64, ptr %r3884.p, align 8, !alias.scope !3, !noalias !4
  %t3885 = add i64 %r3884, 24
  %gmp3886 = inttoptr i64 %t3885 to ptr
  %gml3887 = load i64, ptr %gmp3886, align 1, !alias.scope !4, !noalias !3
  %wp3888 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3887, ptr %wp3888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f80 word 0xb4ffae28
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %cmp3890 = icmp eq i64 %r3889, 0
  br i1 %cmp3890, label %L_8021c3544, label %L_8021c3f84_ft
L_8021c3f84_ft:
  ; @pc 0x8021c3f84 word 0xb9400d09
  %r3891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3891 = load i64, ptr %r3891.p, align 8, !alias.scope !3, !noalias !4
  %t3892 = add i64 %r3891, 12
  %gmp3893 = inttoptr i64 %t3892 to ptr
  %gml3894 = load i32, ptr %gmp3893, align 1, !alias.scope !4, !noalias !3
  %c3895 = zext i32 %gml3894 to i64
  %wp3896 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3895, ptr %wp3896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f88 word 0xb94022aa
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %t3898 = add i64 %r3897, 32
  %gmp3899 = inttoptr i64 %t3898 to ptr
  %gml3900 = load i32, ptr %gmp3899, align 1, !alias.scope !4, !noalias !3
  %c3901 = zext i32 %gml3900 to i64
  %wp3902 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3901, ptr %wp3902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f8c word 0x6b0a013f
  %r3903.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3903 = load i64, ptr %r3903.p, align 8, !alias.scope !3, !noalias !4
  %c3904 = trunc i64 %r3903 to i32
  %r3905.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3905 = load i64, ptr %r3905.p, align 8, !alias.scope !3, !noalias !4
  %c3906 = trunc i64 %r3905 to i32
  %t3907 = sub i32 %c3904, %c3906
  %fn3908 = icmp slt i32 %t3907, 0
  %fz3909 = icmp eq i32 %t3907, 0
  %fc3910 = icmp uge i32 %c3904, %c3906
  %fx13911 = xor i32 %c3904, %c3906
  %fx23912 = xor i32 %c3904, %t3907
  %fva3913 = and i32 %fx13911, %fx23912
  %fv3914 = icmp slt i32 %fva3913, 0
  %nz3915 = zext i1 %fn3908 to i64
  %zz3916 = zext i1 %fz3909 to i64
  %cz3917 = zext i1 %fc3910 to i64
  %vz3918 = zext i1 %fv3914 to i64
  %ns3919 = shl i64 %nz3915, 31
  %zs3920 = shl i64 %zz3916, 30
  %cs3921 = shl i64 %cz3917, 29
  %vs3922 = shl i64 %vz3918, 28
  %nzor3923 = or i64 %ns3919, %zs3920
  %cvor3924 = or i64 %cs3921, %vs3922
  %nzcv3925 = or i64 %nzor3923, %cvor3924
  %wp3926 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3925, ptr %wp3926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f90 word 0x54ffada1
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %fsh3929 = lshr i64 %r3927, 30
  %ftr3930 = trunc i64 %fsh3929 to i1
  %cond3928 = xor i1 %ftr3930, true
  br i1 %cond3928, label %L_8021c3544, label %L_8021c3f94_ft
L_8021c3f94_ft:
  ; @pc 0x8021c3f94 word 0xf9400114
  %r3931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3931 = load i64, ptr %r3931.p, align 8, !alias.scope !3, !noalias !4
  %gmp3932 = inttoptr i64 %r3931 to ptr
  %gml3933 = load i64, ptr %gmp3932, align 1, !alias.scope !4, !noalias !3
  %wp3934 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3933, ptr %wp3934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3f98 word 0xb4ffad74
  %r3935.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3935 = load i64, ptr %r3935.p, align 8, !alias.scope !3, !noalias !4
  %cmp3936 = icmp eq i64 %r3935, 0
  br i1 %cmp3936, label %L_8021c3544, label %L_8021c3f9c_ft
L_8021c3f9c_ft:
  ; @pc 0x8021c3f9c word 0x97ff817e
  %wp3937 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144096, ptr %wp3937, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a4594(ptr %c)
  ; @pc 0x8021c3fa0 word 0xf9400288
  %r3938.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3938 = load i64, ptr %r3938.p, align 8, !alias.scope !3, !noalias !4
  %gmp3939 = inttoptr i64 %r3938 to ptr
  %gml3940 = load i64, ptr %gmp3939, align 1, !alias.scope !4, !noalias !3
  %wp3941 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3940, ptr %wp3941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fa4 word 0xaa0003e1
  %r3942.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3942 = load i64, ptr %r3942.p, align 8, !alias.scope !3, !noalias !4
  %t3943 = or i64 0, %r3942
  %wp3944 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3943, ptr %wp3944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fa8 word 0xaa1403e0
  %r3945.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3945 = load i64, ptr %r3945.p, align 8, !alias.scope !3, !noalias !4
  %t3946 = or i64 0, %r3945
  %wp3947 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3946, ptr %wp3947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fac word 0xf9400108
  %r3948.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3948 = load i64, ptr %r3948.p, align 8, !alias.scope !3, !noalias !4
  %gmp3949 = inttoptr i64 %r3948 to ptr
  %gml3950 = load i64, ptr %gmp3949, align 1, !alias.scope !4, !noalias !3
  %wp3951 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3950, ptr %wp3951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fb0 word 0xd63f0100
  %r3952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3952 = load i64, ptr %r3952.p, align 8, !alias.scope !3, !noalias !4
  %fp3953 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3952, ptr %fp3953, align 8, !alias.scope !3, !noalias !4
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144116, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c3fb4 word 0xb5ffac20
  %r3955.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3955 = load i64, ptr %r3955.p, align 8, !alias.scope !3, !noalias !4
  %cmp3956 = icmp ne i64 %r3955, 0
  br i1 %cmp3956, label %L_8021c3538, label %L_8021c3fb8_ft
L_8021c3fb8_ft:
  ; @pc 0x8021c3fb8 word 0x17fffd63
  br label %L_8021c3544
L_8021c3fcc_ft:
  ; @pc 0x8021c3fcc word 0xf940a900
  %r3969.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3969 = load i64, ptr %r3969.p, align 8, !alias.scope !3, !noalias !4
  %t3970 = add i64 %r3969, 336
  %gmp3971 = inttoptr i64 %t3970 to ptr
  %gml3972 = load i64, ptr %gmp3971, align 1, !alias.scope !4, !noalias !3
  %wp3973 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3972, ptr %wp3973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3fd0 word 0xb4ffb820
  %r3974.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3974 = load i64, ptr %r3974.p, align 8, !alias.scope !3, !noalias !4
  %cmp3975 = icmp eq i64 %r3974, 0
  br i1 %cmp3975, label %L_8021c36d4, label %L_8021c3fd4_ft
L_8021c3fd4_ft:
  ; @pc 0x8021c3fd4 word 0x97ff74ef
  %wp3976 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144152, ptr %wp3976, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1390(ptr %c)
  ; @pc 0x8021c3fd8 word 0x1400003d
  br label %L_8021c40cc
L_8021c3ff4_ft:
  ; @pc 0x8021c3ff4 word 0xf940a900
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %t3995 = add i64 %r3994, 336
  %gmp3996 = inttoptr i64 %t3995 to ptr
  %gml3997 = load i64, ptr %gmp3996, align 1, !alias.scope !4, !noalias !3
  %wp3998 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3997, ptr %wp3998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c3ff8 word 0xb4000060
  %r3999.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3999 = load i64, ptr %r3999.p, align 8, !alias.scope !3, !noalias !4
  %cmp4000 = icmp eq i64 %r3999, 0
  br i1 %cmp4000, label %L_8021c4004, label %L_8021c3ffc_ft
L_8021c3ffc_ft:
  ; @pc 0x8021c3ffc word 0x97ff74e5
  %wp4001 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144192, ptr %wp4001, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1390(ptr %c)
  ; @pc 0x8021c4000 word 0xbd40000b
  %r4002.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4002 = load i64, ptr %r4002.p, align 8, !alias.scope !3, !noalias !4
  %gmp4003 = inttoptr i64 %r4002 to ptr
  %gml4004 = load i32, ptr %gmp4003, align 1, !alias.scope !4, !noalias !3
  %c4005 = zext i32 %gml4004 to i128
  %wp4006 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c4005, ptr %wp4006, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c4004
L_8021c4010_ft:
  ; @pc 0x8021c4010 word 0xf940a900
  %r4019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4019 = load i64, ptr %r4019.p, align 8, !alias.scope !3, !noalias !4
  %t4020 = add i64 %r4019, 336
  %gmp4021 = inttoptr i64 %t4020 to ptr
  %gml4022 = load i64, ptr %gmp4021, align 1, !alias.scope !4, !noalias !3
  %wp4023 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4022, ptr %wp4023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4014 word 0xb4000820
  %r4024.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4024 = load i64, ptr %r4024.p, align 8, !alias.scope !3, !noalias !4
  %cmp4025 = icmp eq i64 %r4024, 0
  br i1 %cmp4025, label %L_8021c4118, label %L_8021c4018_ft
L_8021c4018_ft:
  ; @pc 0x8021c4018 word 0x97ff74de
  %wp4026 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144220, ptr %wp4026, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1390(ptr %c)
  ; @pc 0x8021c401c word 0x1400003e
  br label %L_8021c4114
L_8021c4028_ft:
  ; @pc 0x8021c4028 word 0xf9400e88
  %r4034.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4034 = load i64, ptr %r4034.p, align 8, !alias.scope !3, !noalias !4
  %t4035 = add i64 %r4034, 24
  %gmp4036 = inttoptr i64 %t4035 to ptr
  %gml4037 = load i64, ptr %gmp4036, align 1, !alias.scope !4, !noalias !3
  %wp4038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4037, ptr %wp4038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c402c word 0xb4ffaae8
  %r4039.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4039 = load i64, ptr %r4039.p, align 8, !alias.scope !3, !noalias !4
  %cmp4040 = icmp eq i64 %r4039, 0
  br i1 %cmp4040, label %L_8021c3588, label %L_8021c4030_ft
L_8021c4030_ft:
  ; @pc 0x8021c4030 word 0xb9400d09
  %r4041.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4041 = load i64, ptr %r4041.p, align 8, !alias.scope !3, !noalias !4
  %t4042 = add i64 %r4041, 12
  %gmp4043 = inttoptr i64 %t4042 to ptr
  %gml4044 = load i32, ptr %gmp4043, align 1, !alias.scope !4, !noalias !3
  %c4045 = zext i32 %gml4044 to i64
  %wp4046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4045, ptr %wp4046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4034 word 0xb940228a
  %r4047.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4047 = load i64, ptr %r4047.p, align 8, !alias.scope !3, !noalias !4
  %t4048 = add i64 %r4047, 32
  %gmp4049 = inttoptr i64 %t4048 to ptr
  %gml4050 = load i32, ptr %gmp4049, align 1, !alias.scope !4, !noalias !3
  %c4051 = zext i32 %gml4050 to i64
  %wp4052 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4051, ptr %wp4052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4038 word 0x6b0a013f
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %c4054 = trunc i64 %r4053 to i32
  %r4055.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4055 = load i64, ptr %r4055.p, align 8, !alias.scope !3, !noalias !4
  %c4056 = trunc i64 %r4055 to i32
  %t4057 = sub i32 %c4054, %c4056
  %fn4058 = icmp slt i32 %t4057, 0
  %fz4059 = icmp eq i32 %t4057, 0
  %fc4060 = icmp uge i32 %c4054, %c4056
  %fx14061 = xor i32 %c4054, %c4056
  %fx24062 = xor i32 %c4054, %t4057
  %fva4063 = and i32 %fx14061, %fx24062
  %fv4064 = icmp slt i32 %fva4063, 0
  %nz4065 = zext i1 %fn4058 to i64
  %zz4066 = zext i1 %fz4059 to i64
  %cz4067 = zext i1 %fc4060 to i64
  %vz4068 = zext i1 %fv4064 to i64
  %ns4069 = shl i64 %nz4065, 31
  %zs4070 = shl i64 %zz4066, 30
  %cs4071 = shl i64 %cz4067, 29
  %vs4072 = shl i64 %vz4068, 28
  %nzor4073 = or i64 %ns4069, %zs4070
  %cvor4074 = or i64 %cs4071, %vs4072
  %nzcv4075 = or i64 %nzor4073, %cvor4074
  %wp4076 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4075, ptr %wp4076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c403c word 0x54ffaa61
  %r4077.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4077 = load i64, ptr %r4077.p, align 8, !alias.scope !3, !noalias !4
  %fsh4079 = lshr i64 %r4077, 30
  %ftr4080 = trunc i64 %fsh4079 to i1
  %cond4078 = xor i1 %ftr4080, true
  br i1 %cond4078, label %L_8021c3588, label %L_8021c4040_ft
L_8021c4040_ft:
  ; @pc 0x8021c4040 word 0xf9400113
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %gmp4082 = inttoptr i64 %r4081 to ptr
  %gml4083 = load i64, ptr %gmp4082, align 1, !alias.scope !4, !noalias !3
  %wp4084 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4083, ptr %wp4084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4044 word 0xb4ffaa33
  %r4085.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4085 = load i64, ptr %r4085.p, align 8, !alias.scope !3, !noalias !4
  %cmp4086 = icmp eq i64 %r4085, 0
  br i1 %cmp4086, label %L_8021c3588, label %L_8021c4048_ft
L_8021c4048_ft:
  ; @pc 0x8021c4048 word 0x97ff7381
  %wp4087 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144268, ptr %wp4087, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a0e4c(ptr %c)
  ; @pc 0x8021c404c word 0xf9400268
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %gmp4089 = inttoptr i64 %r4088 to ptr
  %gml4090 = load i64, ptr %gmp4089, align 1, !alias.scope !4, !noalias !3
  %wp4091 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4090, ptr %wp4091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4050 word 0xaa0003e1
  %r4092.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4092 = load i64, ptr %r4092.p, align 8, !alias.scope !3, !noalias !4
  %t4093 = or i64 0, %r4092
  %wp4094 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4093, ptr %wp4094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4054 word 0xaa1303e0
  %r4095.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4095 = load i64, ptr %r4095.p, align 8, !alias.scope !3, !noalias !4
  %t4096 = or i64 0, %r4095
  %wp4097 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4096, ptr %wp4097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4058 word 0xf9400108
  %r4098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4098 = load i64, ptr %r4098.p, align 8, !alias.scope !3, !noalias !4
  %gmp4099 = inttoptr i64 %r4098 to ptr
  %gml4100 = load i64, ptr %gmp4099, align 1, !alias.scope !4, !noalias !3
  %wp4101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4100, ptr %wp4101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c405c word 0xd63f0100
  %r4102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4102 = load i64, ptr %r4102.p, align 8, !alias.scope !3, !noalias !4
  %fp4103 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4102, ptr %fp4103, align 8, !alias.scope !3, !noalias !4
  %wp4104 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144288, ptr %wp4104, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c4060 word 0xb5ffa8e0
  %r4105.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4105 = load i64, ptr %r4105.p, align 8, !alias.scope !3, !noalias !4
  %cmp4106 = icmp ne i64 %r4105, 0
  br i1 %cmp4106, label %L_8021c357c, label %L_8021c4064_ft
L_8021c4064_ft:
  ; @pc 0x8021c4064 word 0x17fffd49
  br label %L_8021c3588
L_8021c4070_ft:
  ; @pc 0x8021c4070 word 0xf9400ea8
  %r4114.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4114 = load i64, ptr %r4114.p, align 8, !alias.scope !3, !noalias !4
  %t4115 = add i64 %r4114, 24
  %gmp4116 = inttoptr i64 %t4115 to ptr
  %gml4117 = load i64, ptr %gmp4116, align 1, !alias.scope !4, !noalias !3
  %wp4118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4117, ptr %wp4118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4074 word 0xb4ffaa08
  %r4119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4119 = load i64, ptr %r4119.p, align 8, !alias.scope !3, !noalias !4
  %cmp4120 = icmp eq i64 %r4119, 0
  br i1 %cmp4120, label %L_8021c35b4, label %L_8021c4078_ft
L_8021c4078_ft:
  ; @pc 0x8021c4078 word 0xb9400d09
  %r4121.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4121 = load i64, ptr %r4121.p, align 8, !alias.scope !3, !noalias !4
  %t4122 = add i64 %r4121, 12
  %gmp4123 = inttoptr i64 %t4122 to ptr
  %gml4124 = load i32, ptr %gmp4123, align 1, !alias.scope !4, !noalias !3
  %c4125 = zext i32 %gml4124 to i64
  %wp4126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4125, ptr %wp4126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c407c word 0xb94022aa
  %r4127.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4127 = load i64, ptr %r4127.p, align 8, !alias.scope !3, !noalias !4
  %t4128 = add i64 %r4127, 32
  %gmp4129 = inttoptr i64 %t4128 to ptr
  %gml4130 = load i32, ptr %gmp4129, align 1, !alias.scope !4, !noalias !3
  %c4131 = zext i32 %gml4130 to i64
  %wp4132 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4131, ptr %wp4132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4080 word 0x6b0a013f
  %r4133.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4133 = load i64, ptr %r4133.p, align 8, !alias.scope !3, !noalias !4
  %c4134 = trunc i64 %r4133 to i32
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %c4136 = trunc i64 %r4135 to i32
  %t4137 = sub i32 %c4134, %c4136
  %fn4138 = icmp slt i32 %t4137, 0
  %fz4139 = icmp eq i32 %t4137, 0
  %fc4140 = icmp uge i32 %c4134, %c4136
  %fx14141 = xor i32 %c4134, %c4136
  %fx24142 = xor i32 %c4134, %t4137
  %fva4143 = and i32 %fx14141, %fx24142
  %fv4144 = icmp slt i32 %fva4143, 0
  %nz4145 = zext i1 %fn4138 to i64
  %zz4146 = zext i1 %fz4139 to i64
  %cz4147 = zext i1 %fc4140 to i64
  %vz4148 = zext i1 %fv4144 to i64
  %ns4149 = shl i64 %nz4145, 31
  %zs4150 = shl i64 %zz4146, 30
  %cs4151 = shl i64 %cz4147, 29
  %vs4152 = shl i64 %vz4148, 28
  %nzor4153 = or i64 %ns4149, %zs4150
  %cvor4154 = or i64 %cs4151, %vs4152
  %nzcv4155 = or i64 %nzor4153, %cvor4154
  %wp4156 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4155, ptr %wp4156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4084 word 0x54ffa981
  %r4157.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4157 = load i64, ptr %r4157.p, align 8, !alias.scope !3, !noalias !4
  %fsh4159 = lshr i64 %r4157, 30
  %ftr4160 = trunc i64 %fsh4159 to i1
  %cond4158 = xor i1 %ftr4160, true
  br i1 %cond4158, label %L_8021c35b4, label %L_8021c4088_ft
L_8021c4088_ft:
  ; @pc 0x8021c4088 word 0xf9400114
  %r4161.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4161 = load i64, ptr %r4161.p, align 8, !alias.scope !3, !noalias !4
  %gmp4162 = inttoptr i64 %r4161 to ptr
  %gml4163 = load i64, ptr %gmp4162, align 1, !alias.scope !4, !noalias !3
  %wp4164 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml4163, ptr %wp4164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c408c word 0xb4ffa954
  %r4165.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4165 = load i64, ptr %r4165.p, align 8, !alias.scope !3, !noalias !4
  %cmp4166 = icmp eq i64 %r4165, 0
  br i1 %cmp4166, label %L_8021c35b4, label %L_8021c4090_ft
L_8021c4090_ft:
  ; @pc 0x8021c4090 word 0x97ff8141
  %wp4167 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144340, ptr %wp4167, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a4594(ptr %c)
  ; @pc 0x8021c4094 word 0xf9400288
  %r4168.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4168 = load i64, ptr %r4168.p, align 8, !alias.scope !3, !noalias !4
  %gmp4169 = inttoptr i64 %r4168 to ptr
  %gml4170 = load i64, ptr %gmp4169, align 1, !alias.scope !4, !noalias !3
  %wp4171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4170, ptr %wp4171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4098 word 0xaa0003e1
  %r4172.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4172 = load i64, ptr %r4172.p, align 8, !alias.scope !3, !noalias !4
  %t4173 = or i64 0, %r4172
  %wp4174 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4173, ptr %wp4174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c409c word 0xaa1403e0
  %r4175.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4175 = load i64, ptr %r4175.p, align 8, !alias.scope !3, !noalias !4
  %t4176 = or i64 0, %r4175
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4176, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40a0 word 0xf9400108
  %r4178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4178 = load i64, ptr %r4178.p, align 8, !alias.scope !3, !noalias !4
  %gmp4179 = inttoptr i64 %r4178 to ptr
  %gml4180 = load i64, ptr %gmp4179, align 1, !alias.scope !4, !noalias !3
  %wp4181 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4180, ptr %wp4181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40a4 word 0xd63f0100
  %r4182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4182 = load i64, ptr %r4182.p, align 8, !alias.scope !3, !noalias !4
  %fp4183 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4182, ptr %fp4183, align 8, !alias.scope !3, !noalias !4
  %wp4184 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144360, ptr %wp4184, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c40a8 word 0xb5ffa800
  %r4185.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4185 = load i64, ptr %r4185.p, align 8, !alias.scope !3, !noalias !4
  %cmp4186 = icmp ne i64 %r4185, 0
  br i1 %cmp4186, label %L_8021c35a8, label %L_8021c40ac_ft
L_8021c40ac_ft:
  ; @pc 0x8021c40ac word 0x17fffd42
  br label %L_8021c35b4
L_8021c40c0_ft:
  ; @pc 0x8021c40c0 word 0xf940a900
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %t4200 = add i64 %r4199, 336
  %gmp4201 = inttoptr i64 %t4200 to ptr
  %gml4202 = load i64, ptr %gmp4201, align 1, !alias.scope !4, !noalias !3
  %wp4203 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4202, ptr %wp4203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40c4 word 0xb4ffb080
  %r4204.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4204 = load i64, ptr %r4204.p, align 8, !alias.scope !3, !noalias !4
  %cmp4205 = icmp eq i64 %r4204, 0
  br i1 %cmp4205, label %L_8021c36d4, label %L_8021c40c8_ft
L_8021c40c8_ft:
  ; @pc 0x8021c40c8 word 0x97ff74d0
  %wp4206 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144396, ptr %wp4206, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1408(ptr %c)
  br label %L_8021c40cc
L_8021c40ec_ft:
  ; @pc 0x8021c40ec word 0xf940a900
  %r4229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4229 = load i64, ptr %r4229.p, align 8, !alias.scope !3, !noalias !4
  %t4230 = add i64 %r4229, 336
  %gmp4231 = inttoptr i64 %t4230 to ptr
  %gml4232 = load i64, ptr %gmp4231, align 1, !alias.scope !4, !noalias !3
  %wp4233 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4232, ptr %wp4233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c40f0 word 0xb4000060
  %r4234.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4234 = load i64, ptr %r4234.p, align 8, !alias.scope !3, !noalias !4
  %cmp4235 = icmp eq i64 %r4234, 0
  br i1 %cmp4235, label %L_8021c40fc, label %L_8021c40f4_ft
L_8021c40f4_ft:
  ; @pc 0x8021c40f4 word 0x97ff74c5
  %wp4236 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144440, ptr %wp4236, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1408(ptr %c)
  ; @pc 0x8021c40f8 word 0xbd40000b
  %r4237.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4237 = load i64, ptr %r4237.p, align 8, !alias.scope !3, !noalias !4
  %gmp4238 = inttoptr i64 %r4237 to ptr
  %gml4239 = load i32, ptr %gmp4238, align 1, !alias.scope !4, !noalias !3
  %c4240 = zext i32 %gml4239 to i128
  %wp4241 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c4240, ptr %wp4241, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c40fc
L_8021c4108_ft:
  ; @pc 0x8021c4108 word 0xf940a900
  %r4254.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4254 = load i64, ptr %r4254.p, align 8, !alias.scope !3, !noalias !4
  %t4255 = add i64 %r4254, 336
  %gmp4256 = inttoptr i64 %t4255 to ptr
  %gml4257 = load i64, ptr %gmp4256, align 1, !alias.scope !4, !noalias !3
  %wp4258 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4257, ptr %wp4258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c410c word 0xb4000060
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %cmp4260 = icmp eq i64 %r4259, 0
  br i1 %cmp4260, label %L_8021c4118, label %L_8021c4110_ft
L_8021c4110_ft:
  ; @pc 0x8021c4110 word 0x97ff74be
  %wp4261 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144468, ptr %wp4261, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1408(ptr %c)
  br label %L_8021c4114
L_8021c412c_ft:
  ; @pc 0x8021c412c word 0xf9400e88
  %r4274.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4274 = load i64, ptr %r4274.p, align 8, !alias.scope !3, !noalias !4
  %t4275 = add i64 %r4274, 24
  %gmp4276 = inttoptr i64 %t4275 to ptr
  %gml4277 = load i64, ptr %gmp4276, align 1, !alias.scope !4, !noalias !3
  %wp4278 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4277, ptr %wp4278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4130 word 0xb4ffa648
  %r4279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4279 = load i64, ptr %r4279.p, align 8, !alias.scope !3, !noalias !4
  %cmp4280 = icmp eq i64 %r4279, 0
  br i1 %cmp4280, label %L_8021c35f8, label %L_8021c4134_ft
L_8021c4134_ft:
  ; @pc 0x8021c4134 word 0xb9400d09
  %r4281.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4281 = load i64, ptr %r4281.p, align 8, !alias.scope !3, !noalias !4
  %t4282 = add i64 %r4281, 12
  %gmp4283 = inttoptr i64 %t4282 to ptr
  %gml4284 = load i32, ptr %gmp4283, align 1, !alias.scope !4, !noalias !3
  %c4285 = zext i32 %gml4284 to i64
  %wp4286 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4285, ptr %wp4286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4138 word 0xb940228a
  %r4287.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4287 = load i64, ptr %r4287.p, align 8, !alias.scope !3, !noalias !4
  %t4288 = add i64 %r4287, 32
  %gmp4289 = inttoptr i64 %t4288 to ptr
  %gml4290 = load i32, ptr %gmp4289, align 1, !alias.scope !4, !noalias !3
  %c4291 = zext i32 %gml4290 to i64
  %wp4292 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4291, ptr %wp4292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c413c word 0x6b0a013f
  %r4293.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4293 = load i64, ptr %r4293.p, align 8, !alias.scope !3, !noalias !4
  %c4294 = trunc i64 %r4293 to i32
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4295 = load i64, ptr %r4295.p, align 8, !alias.scope !3, !noalias !4
  %c4296 = trunc i64 %r4295 to i32
  %t4297 = sub i32 %c4294, %c4296
  %fn4298 = icmp slt i32 %t4297, 0
  %fz4299 = icmp eq i32 %t4297, 0
  %fc4300 = icmp uge i32 %c4294, %c4296
  %fx14301 = xor i32 %c4294, %c4296
  %fx24302 = xor i32 %c4294, %t4297
  %fva4303 = and i32 %fx14301, %fx24302
  %fv4304 = icmp slt i32 %fva4303, 0
  %nz4305 = zext i1 %fn4298 to i64
  %zz4306 = zext i1 %fz4299 to i64
  %cz4307 = zext i1 %fc4300 to i64
  %vz4308 = zext i1 %fv4304 to i64
  %ns4309 = shl i64 %nz4305, 31
  %zs4310 = shl i64 %zz4306, 30
  %cs4311 = shl i64 %cz4307, 29
  %vs4312 = shl i64 %vz4308, 28
  %nzor4313 = or i64 %ns4309, %zs4310
  %cvor4314 = or i64 %cs4311, %vs4312
  %nzcv4315 = or i64 %nzor4313, %cvor4314
  %wp4316 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4315, ptr %wp4316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4140 word 0x54ffa5c1
  %r4317.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4317 = load i64, ptr %r4317.p, align 8, !alias.scope !3, !noalias !4
  %fsh4319 = lshr i64 %r4317, 30
  %ftr4320 = trunc i64 %fsh4319 to i1
  %cond4318 = xor i1 %ftr4320, true
  br i1 %cond4318, label %L_8021c35f8, label %L_8021c4144_ft
L_8021c4144_ft:
  ; @pc 0x8021c4144 word 0xf9400113
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %gmp4322 = inttoptr i64 %r4321 to ptr
  %gml4323 = load i64, ptr %gmp4322, align 1, !alias.scope !4, !noalias !3
  %wp4324 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4323, ptr %wp4324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4148 word 0xb4ffa593
  %r4325.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4325 = load i64, ptr %r4325.p, align 8, !alias.scope !3, !noalias !4
  %cmp4326 = icmp eq i64 %r4325, 0
  br i1 %cmp4326, label %L_8021c35f8, label %L_8021c414c_ft
L_8021c414c_ft:
  ; @pc 0x8021c414c word 0x97ff7340
  %wp4327 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144528, ptr %wp4327, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a0e4c(ptr %c)
  ; @pc 0x8021c4150 word 0xf9400268
  %r4328.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4328 = load i64, ptr %r4328.p, align 8, !alias.scope !3, !noalias !4
  %gmp4329 = inttoptr i64 %r4328 to ptr
  %gml4330 = load i64, ptr %gmp4329, align 1, !alias.scope !4, !noalias !3
  %wp4331 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4330, ptr %wp4331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4154 word 0xaa0003e1
  %r4332.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4332 = load i64, ptr %r4332.p, align 8, !alias.scope !3, !noalias !4
  %t4333 = or i64 0, %r4332
  %wp4334 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4333, ptr %wp4334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4158 word 0xaa1303e0
  %r4335.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4335 = load i64, ptr %r4335.p, align 8, !alias.scope !3, !noalias !4
  %t4336 = or i64 0, %r4335
  %wp4337 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4336, ptr %wp4337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c415c word 0xf9400108
  %r4338.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4338 = load i64, ptr %r4338.p, align 8, !alias.scope !3, !noalias !4
  %gmp4339 = inttoptr i64 %r4338 to ptr
  %gml4340 = load i64, ptr %gmp4339, align 1, !alias.scope !4, !noalias !3
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4340, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4160 word 0xd63f0100
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %fp4343 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4342, ptr %fp4343, align 8, !alias.scope !3, !noalias !4
  %wp4344 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144548, ptr %wp4344, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c4164 word 0xb5ffa440
  %r4345.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4345 = load i64, ptr %r4345.p, align 8, !alias.scope !3, !noalias !4
  %cmp4346 = icmp ne i64 %r4345, 0
  br i1 %cmp4346, label %L_8021c35ec, label %L_8021c4168_ft
L_8021c4168_ft:
  ; @pc 0x8021c4168 word 0x17fffd24
  br label %L_8021c35f8
L_8021c4174_ft:
  ; @pc 0x8021c4174 word 0xf9400ea8
  %r4354.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4354 = load i64, ptr %r4354.p, align 8, !alias.scope !3, !noalias !4
  %t4355 = add i64 %r4354, 24
  %gmp4356 = inttoptr i64 %t4355 to ptr
  %gml4357 = load i64, ptr %gmp4356, align 1, !alias.scope !4, !noalias !3
  %wp4358 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4357, ptr %wp4358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4178 word 0xb4ffa568
  %r4359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4359 = load i64, ptr %r4359.p, align 8, !alias.scope !3, !noalias !4
  %cmp4360 = icmp eq i64 %r4359, 0
  br i1 %cmp4360, label %L_8021c3624, label %L_8021c417c_ft
L_8021c417c_ft:
  ; @pc 0x8021c417c word 0xb9400d09
  %r4361.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4361 = load i64, ptr %r4361.p, align 8, !alias.scope !3, !noalias !4
  %t4362 = add i64 %r4361, 12
  %gmp4363 = inttoptr i64 %t4362 to ptr
  %gml4364 = load i32, ptr %gmp4363, align 1, !alias.scope !4, !noalias !3
  %c4365 = zext i32 %gml4364 to i64
  %wp4366 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4365, ptr %wp4366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4180 word 0xb94022aa
  %r4367.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4367 = load i64, ptr %r4367.p, align 8, !alias.scope !3, !noalias !4
  %t4368 = add i64 %r4367, 32
  %gmp4369 = inttoptr i64 %t4368 to ptr
  %gml4370 = load i32, ptr %gmp4369, align 1, !alias.scope !4, !noalias !3
  %c4371 = zext i32 %gml4370 to i64
  %wp4372 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4371, ptr %wp4372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4184 word 0x6b0a013f
  %r4373.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4373 = load i64, ptr %r4373.p, align 8, !alias.scope !3, !noalias !4
  %c4374 = trunc i64 %r4373 to i32
  %r4375.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4375 = load i64, ptr %r4375.p, align 8, !alias.scope !3, !noalias !4
  %c4376 = trunc i64 %r4375 to i32
  %t4377 = sub i32 %c4374, %c4376
  %fn4378 = icmp slt i32 %t4377, 0
  %fz4379 = icmp eq i32 %t4377, 0
  %fc4380 = icmp uge i32 %c4374, %c4376
  %fx14381 = xor i32 %c4374, %c4376
  %fx24382 = xor i32 %c4374, %t4377
  %fva4383 = and i32 %fx14381, %fx24382
  %fv4384 = icmp slt i32 %fva4383, 0
  %nz4385 = zext i1 %fn4378 to i64
  %zz4386 = zext i1 %fz4379 to i64
  %cz4387 = zext i1 %fc4380 to i64
  %vz4388 = zext i1 %fv4384 to i64
  %ns4389 = shl i64 %nz4385, 31
  %zs4390 = shl i64 %zz4386, 30
  %cs4391 = shl i64 %cz4387, 29
  %vs4392 = shl i64 %vz4388, 28
  %nzor4393 = or i64 %ns4389, %zs4390
  %cvor4394 = or i64 %cs4391, %vs4392
  %nzcv4395 = or i64 %nzor4393, %cvor4394
  %wp4396 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4395, ptr %wp4396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4188 word 0x54ffa4e1
  %r4397.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4397 = load i64, ptr %r4397.p, align 8, !alias.scope !3, !noalias !4
  %fsh4399 = lshr i64 %r4397, 30
  %ftr4400 = trunc i64 %fsh4399 to i1
  %cond4398 = xor i1 %ftr4400, true
  br i1 %cond4398, label %L_8021c3624, label %L_8021c418c_ft
L_8021c418c_ft:
  ; @pc 0x8021c418c word 0xf9400114
  %r4401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4401 = load i64, ptr %r4401.p, align 8, !alias.scope !3, !noalias !4
  %gmp4402 = inttoptr i64 %r4401 to ptr
  %gml4403 = load i64, ptr %gmp4402, align 1, !alias.scope !4, !noalias !3
  %wp4404 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml4403, ptr %wp4404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4190 word 0xb4ffa4b4
  %r4405.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4405 = load i64, ptr %r4405.p, align 8, !alias.scope !3, !noalias !4
  %cmp4406 = icmp eq i64 %r4405, 0
  br i1 %cmp4406, label %L_8021c3624, label %L_8021c4194_ft
L_8021c4194_ft:
  ; @pc 0x8021c4194 word 0x97ff8100
  %wp4407 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144600, ptr %wp4407, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a4594(ptr %c)
  ; @pc 0x8021c4198 word 0xf9400288
  %r4408.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4408 = load i64, ptr %r4408.p, align 8, !alias.scope !3, !noalias !4
  %gmp4409 = inttoptr i64 %r4408 to ptr
  %gml4410 = load i64, ptr %gmp4409, align 1, !alias.scope !4, !noalias !3
  %wp4411 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4410, ptr %wp4411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c419c word 0xaa0003e1
  %r4412.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4412 = load i64, ptr %r4412.p, align 8, !alias.scope !3, !noalias !4
  %t4413 = or i64 0, %r4412
  %wp4414 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4413, ptr %wp4414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41a0 word 0xaa1403e0
  %r4415.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4415 = load i64, ptr %r4415.p, align 8, !alias.scope !3, !noalias !4
  %t4416 = or i64 0, %r4415
  %wp4417 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4416, ptr %wp4417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41a4 word 0xf9400108
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %gmp4419 = inttoptr i64 %r4418 to ptr
  %gml4420 = load i64, ptr %gmp4419, align 1, !alias.scope !4, !noalias !3
  %wp4421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4420, ptr %wp4421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41a8 word 0xd63f0100
  %r4422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4422 = load i64, ptr %r4422.p, align 8, !alias.scope !3, !noalias !4
  %fp4423 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4422, ptr %fp4423, align 8, !alias.scope !3, !noalias !4
  %wp4424 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144620, ptr %wp4424, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c41ac word 0xb5ffa360
  %r4425.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4425 = load i64, ptr %r4425.p, align 8, !alias.scope !3, !noalias !4
  %cmp4426 = icmp ne i64 %r4425, 0
  br i1 %cmp4426, label %L_8021c3618, label %L_8021c41b0_ft
L_8021c41b0_ft:
  ; @pc 0x8021c41b0 word 0x17fffd1d
  br label %L_8021c3624
L_8021c41c8_ft:
  ; @pc 0x8021c41c8 word 0xf940a900
  %r4443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4443 = load i64, ptr %r4443.p, align 8, !alias.scope !3, !noalias !4
  %t4444 = add i64 %r4443, 336
  %gmp4445 = inttoptr i64 %t4444 to ptr
  %gml4446 = load i64, ptr %gmp4445, align 1, !alias.scope !4, !noalias !3
  %wp4447 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4446, ptr %wp4447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41cc word 0x1e204120
  %r4448.p = getelementptr inbounds i8, ptr %c, i64 656
  %r4448 = load i128, ptr %r4448.p, align 16, !alias.scope !3, !noalias !4
  %c4449 = trunc i128 %r4448 to i32
  %c4450 = zext i32 %c4449 to i128
  %wp4451 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4450, ptr %wp4451, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c41d0 word 0xb4ffa4c0
  %r4452.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4452 = load i64, ptr %r4452.p, align 8, !alias.scope !3, !noalias !4
  %cmp4453 = icmp eq i64 %r4452, 0
  br i1 %cmp4453, label %L_8021c3668, label %L_8021c41d4_ft
L_8021c41d4_ft:
  ; @pc 0x8021c41d4 word 0x97ff7451
  %wp4454 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144664, ptr %wp4454, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1318(ptr %c)
  ; @pc 0x8021c41d8 word 0xbd400001
  %r4455.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4455 = load i64, ptr %r4455.p, align 8, !alias.scope !3, !noalias !4
  %gmp4456 = inttoptr i64 %r4455 to ptr
  %gml4457 = load i32, ptr %gmp4456, align 1, !alias.scope !4, !noalias !3
  %c4458 = zext i32 %gml4457 to i128
  %wp4459 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c4458, ptr %wp4459, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c41dc
L_8021c4200_ft:
  ; @pc 0x8021c4200 word 0xf940a900
  %r4486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4486 = load i64, ptr %r4486.p, align 8, !alias.scope !3, !noalias !4
  %t4487 = add i64 %r4486, 336
  %gmp4488 = inttoptr i64 %t4487 to ptr
  %gml4489 = load i64, ptr %gmp4488, align 1, !alias.scope !4, !noalias !3
  %wp4490 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4489, ptr %wp4490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4204 word 0xb4000060
  %r4491.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4491 = load i64, ptr %r4491.p, align 8, !alias.scope !3, !noalias !4
  %cmp4492 = icmp eq i64 %r4491, 0
  br i1 %cmp4492, label %L_8021c4210, label %L_8021c4208_ft
L_8021c4208_ft:
  ; @pc 0x8021c4208 word 0x97ff7444
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144716, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1318(ptr %c)
  ; @pc 0x8021c420c word 0xbd40000b
  %r4494.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4494 = load i64, ptr %r4494.p, align 8, !alias.scope !3, !noalias !4
  %gmp4495 = inttoptr i64 %r4494 to ptr
  %gml4496 = load i32, ptr %gmp4495, align 1, !alias.scope !4, !noalias !3
  %c4497 = zext i32 %gml4496 to i128
  %wp4498 = getelementptr inbounds i8, ptr %c, i64 688
  store i128 %c4497, ptr %wp4498, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c4210
L_8021c421c_ft:
  ; @pc 0x8021c421c word 0xf940a900
  %r4511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4511 = load i64, ptr %r4511.p, align 8, !alias.scope !3, !noalias !4
  %t4512 = add i64 %r4511, 336
  %gmp4513 = inttoptr i64 %t4512 to ptr
  %gml4514 = load i64, ptr %gmp4513, align 1, !alias.scope !4, !noalias !3
  %wp4515 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4514, ptr %wp4515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4220 word 0xb4000060
  %r4516.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4516 = load i64, ptr %r4516.p, align 8, !alias.scope !3, !noalias !4
  %cmp4517 = icmp eq i64 %r4516, 0
  br i1 %cmp4517, label %L_8021c422c, label %L_8021c4224_ft
L_8021c4224_ft:
  ; @pc 0x8021c4224 word 0x97ff743d
  %wp4518 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144744, ptr %wp4518, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a1318(ptr %c)
  ; @pc 0x8021c4228 word 0xbd40000a
  %r4519.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4519 = load i64, ptr %r4519.p, align 8, !alias.scope !3, !noalias !4
  %gmp4520 = inttoptr i64 %r4519 to ptr
  %gml4521 = load i32, ptr %gmp4520, align 1, !alias.scope !4, !noalias !3
  %c4522 = zext i32 %gml4521 to i128
  %wp4523 = getelementptr inbounds i8, ptr %c, i64 672
  store i128 %c4522, ptr %wp4523, align 16, !alias.scope !3, !noalias !4
  br label %L_8021c422c
L_8021c4244_ft:
  ; @pc 0x8021c4244 word 0xf9400e88
  %r4537.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4537 = load i64, ptr %r4537.p, align 8, !alias.scope !3, !noalias !4
  %t4538 = add i64 %r4537, 24
  %gmp4539 = inttoptr i64 %t4538 to ptr
  %gml4540 = load i64, ptr %gmp4539, align 1, !alias.scope !4, !noalias !3
  %wp4541 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4540, ptr %wp4541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4248 word 0xb4ffa0e8
  %r4542.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4542 = load i64, ptr %r4542.p, align 8, !alias.scope !3, !noalias !4
  %cmp4543 = icmp eq i64 %r4542, 0
  br i1 %cmp4543, label %L_8021c3664, label %L_8021c424c_ft
L_8021c424c_ft:
  ; @pc 0x8021c424c word 0xb9400d09
  %r4544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4544 = load i64, ptr %r4544.p, align 8, !alias.scope !3, !noalias !4
  %t4545 = add i64 %r4544, 12
  %gmp4546 = inttoptr i64 %t4545 to ptr
  %gml4547 = load i32, ptr %gmp4546, align 1, !alias.scope !4, !noalias !3
  %c4548 = zext i32 %gml4547 to i64
  %wp4549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4548, ptr %wp4549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4250 word 0xb940228a
  %r4550.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4550 = load i64, ptr %r4550.p, align 8, !alias.scope !3, !noalias !4
  %t4551 = add i64 %r4550, 32
  %gmp4552 = inttoptr i64 %t4551 to ptr
  %gml4553 = load i32, ptr %gmp4552, align 1, !alias.scope !4, !noalias !3
  %c4554 = zext i32 %gml4553 to i64
  %wp4555 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4554, ptr %wp4555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4254 word 0x6b0a013f
  %r4556.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4556 = load i64, ptr %r4556.p, align 8, !alias.scope !3, !noalias !4
  %c4557 = trunc i64 %r4556 to i32
  %r4558.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4558 = load i64, ptr %r4558.p, align 8, !alias.scope !3, !noalias !4
  %c4559 = trunc i64 %r4558 to i32
  %t4560 = sub i32 %c4557, %c4559
  %fn4561 = icmp slt i32 %t4560, 0
  %fz4562 = icmp eq i32 %t4560, 0
  %fc4563 = icmp uge i32 %c4557, %c4559
  %fx14564 = xor i32 %c4557, %c4559
  %fx24565 = xor i32 %c4557, %t4560
  %fva4566 = and i32 %fx14564, %fx24565
  %fv4567 = icmp slt i32 %fva4566, 0
  %nz4568 = zext i1 %fn4561 to i64
  %zz4569 = zext i1 %fz4562 to i64
  %cz4570 = zext i1 %fc4563 to i64
  %vz4571 = zext i1 %fv4567 to i64
  %ns4572 = shl i64 %nz4568, 31
  %zs4573 = shl i64 %zz4569, 30
  %cs4574 = shl i64 %cz4570, 29
  %vs4575 = shl i64 %vz4571, 28
  %nzor4576 = or i64 %ns4572, %zs4573
  %cvor4577 = or i64 %cs4574, %vs4575
  %nzcv4578 = or i64 %nzor4576, %cvor4577
  %wp4579 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4578, ptr %wp4579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4258 word 0x54ffa061
  %r4580.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4580 = load i64, ptr %r4580.p, align 8, !alias.scope !3, !noalias !4
  %fsh4582 = lshr i64 %r4580, 30
  %ftr4583 = trunc i64 %fsh4582 to i1
  %cond4581 = xor i1 %ftr4583, true
  br i1 %cond4581, label %L_8021c3664, label %L_8021c425c_ft
L_8021c425c_ft:
  ; @pc 0x8021c425c word 0xf9400113
  %r4584.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4584 = load i64, ptr %r4584.p, align 8, !alias.scope !3, !noalias !4
  %gmp4585 = inttoptr i64 %r4584 to ptr
  %gml4586 = load i64, ptr %gmp4585, align 1, !alias.scope !4, !noalias !3
  %wp4587 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4586, ptr %wp4587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4260 word 0xb4ffa033
  %r4588.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4588 = load i64, ptr %r4588.p, align 8, !alias.scope !3, !noalias !4
  %cmp4589 = icmp eq i64 %r4588, 0
  br i1 %cmp4589, label %L_8021c3664, label %L_8021c4264_ft
L_8021c4264_ft:
  ; @pc 0x8021c4264 word 0x1e204009
  %r4590.p = getelementptr inbounds i8, ptr %c, i64 512
  %r4590 = load i128, ptr %r4590.p, align 16, !alias.scope !3, !noalias !4
  %c4591 = trunc i128 %r4590 to i32
  %c4592 = zext i32 %c4591 to i128
  %wp4593 = getelementptr inbounds i8, ptr %c, i64 656
  store i128 %c4592, ptr %wp4593, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4268 word 0x97ff72f9
  %wp4594 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144812, ptr %wp4594, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a0e4c(ptr %c)
  ; @pc 0x8021c426c word 0xf9400268
  %r4595.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4595 = load i64, ptr %r4595.p, align 8, !alias.scope !3, !noalias !4
  %gmp4596 = inttoptr i64 %r4595 to ptr
  %gml4597 = load i64, ptr %gmp4596, align 1, !alias.scope !4, !noalias !3
  %wp4598 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4597, ptr %wp4598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4270 word 0xaa0003e1
  %r4599.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4599 = load i64, ptr %r4599.p, align 8, !alias.scope !3, !noalias !4
  %t4600 = or i64 0, %r4599
  %wp4601 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4600, ptr %wp4601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4274 word 0xaa1303e0
  %r4602.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4602 = load i64, ptr %r4602.p, align 8, !alias.scope !3, !noalias !4
  %t4603 = or i64 0, %r4602
  %wp4604 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4603, ptr %wp4604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4278 word 0xf9400108
  %r4605.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4605 = load i64, ptr %r4605.p, align 8, !alias.scope !3, !noalias !4
  %gmp4606 = inttoptr i64 %r4605 to ptr
  %gml4607 = load i64, ptr %gmp4606, align 1, !alias.scope !4, !noalias !3
  %wp4608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4607, ptr %wp4608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c427c word 0xd63f0100
  %r4609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4609 = load i64, ptr %r4609.p, align 8, !alias.scope !3, !noalias !4
  %fp4610 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4609, ptr %fp4610, align 8, !alias.scope !3, !noalias !4
  %wp4611 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144832, ptr %wp4611, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c4280 word 0x1e204120
  %r4612.p = getelementptr inbounds i8, ptr %c, i64 656
  %r4612 = load i128, ptr %r4612.p, align 16, !alias.scope !3, !noalias !4
  %c4613 = trunc i128 %r4612 to i32
  %c4614 = zext i32 %c4613 to i128
  %wp4615 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c4614, ptr %wp4615, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4284 word 0xb5ff9ea0
  %r4616.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4616 = load i64, ptr %r4616.p, align 8, !alias.scope !3, !noalias !4
  %cmp4617 = icmp ne i64 %r4616, 0
  br i1 %cmp4617, label %L_8021c3658, label %L_8021c4288_ft
L_8021c4288_ft:
  ; @pc 0x8021c4288 word 0x17fffcf7
  br label %L_8021c3664
L_8021c4294_ft:
  ; @pc 0x8021c4294 word 0xf9400e88
  %r4625.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4625 = load i64, ptr %r4625.p, align 8, !alias.scope !3, !noalias !4
  %t4626 = add i64 %r4625, 24
  %gmp4627 = inttoptr i64 %t4626 to ptr
  %gml4628 = load i64, ptr %gmp4627, align 1, !alias.scope !4, !noalias !3
  %wp4629 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4628, ptr %wp4629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4298 word 0xb4ffa008
  %r4630.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4630 = load i64, ptr %r4630.p, align 8, !alias.scope !3, !noalias !4
  %cmp4631 = icmp eq i64 %r4630, 0
  br i1 %cmp4631, label %L_8021c3698, label %L_8021c429c_ft
L_8021c429c_ft:
  ; @pc 0x8021c429c word 0xb9400d09
  %r4632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4632 = load i64, ptr %r4632.p, align 8, !alias.scope !3, !noalias !4
  %t4633 = add i64 %r4632, 12
  %gmp4634 = inttoptr i64 %t4633 to ptr
  %gml4635 = load i32, ptr %gmp4634, align 1, !alias.scope !4, !noalias !3
  %c4636 = zext i32 %gml4635 to i64
  %wp4637 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4636, ptr %wp4637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42a0 word 0xb940228a
  %r4638.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4638 = load i64, ptr %r4638.p, align 8, !alias.scope !3, !noalias !4
  %t4639 = add i64 %r4638, 32
  %gmp4640 = inttoptr i64 %t4639 to ptr
  %gml4641 = load i32, ptr %gmp4640, align 1, !alias.scope !4, !noalias !3
  %c4642 = zext i32 %gml4641 to i64
  %wp4643 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4642, ptr %wp4643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42a4 word 0x6b0a013f
  %r4644.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4644 = load i64, ptr %r4644.p, align 8, !alias.scope !3, !noalias !4
  %c4645 = trunc i64 %r4644 to i32
  %r4646.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4646 = load i64, ptr %r4646.p, align 8, !alias.scope !3, !noalias !4
  %c4647 = trunc i64 %r4646 to i32
  %t4648 = sub i32 %c4645, %c4647
  %fn4649 = icmp slt i32 %t4648, 0
  %fz4650 = icmp eq i32 %t4648, 0
  %fc4651 = icmp uge i32 %c4645, %c4647
  %fx14652 = xor i32 %c4645, %c4647
  %fx24653 = xor i32 %c4645, %t4648
  %fva4654 = and i32 %fx14652, %fx24653
  %fv4655 = icmp slt i32 %fva4654, 0
  %nz4656 = zext i1 %fn4649 to i64
  %zz4657 = zext i1 %fz4650 to i64
  %cz4658 = zext i1 %fc4651 to i64
  %vz4659 = zext i1 %fv4655 to i64
  %ns4660 = shl i64 %nz4656, 31
  %zs4661 = shl i64 %zz4657, 30
  %cs4662 = shl i64 %cz4658, 29
  %vs4663 = shl i64 %vz4659, 28
  %nzor4664 = or i64 %ns4660, %zs4661
  %cvor4665 = or i64 %cs4662, %vs4663
  %nzcv4666 = or i64 %nzor4664, %cvor4665
  %wp4667 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4666, ptr %wp4667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42a8 word 0x54ff9f81
  %r4668.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4668 = load i64, ptr %r4668.p, align 8, !alias.scope !3, !noalias !4
  %fsh4670 = lshr i64 %r4668, 30
  %ftr4671 = trunc i64 %fsh4670 to i1
  %cond4669 = xor i1 %ftr4671, true
  br i1 %cond4669, label %L_8021c3698, label %L_8021c42ac_ft
L_8021c42ac_ft:
  ; @pc 0x8021c42ac word 0xf9400113
  %r4672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4672 = load i64, ptr %r4672.p, align 8, !alias.scope !3, !noalias !4
  %gmp4673 = inttoptr i64 %r4672 to ptr
  %gml4674 = load i64, ptr %gmp4673, align 1, !alias.scope !4, !noalias !3
  %wp4675 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4674, ptr %wp4675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42b0 word 0xb4ff9f53
  %r4676.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4676 = load i64, ptr %r4676.p, align 8, !alias.scope !3, !noalias !4
  %cmp4677 = icmp eq i64 %r4676, 0
  br i1 %cmp4677, label %L_8021c3698, label %L_8021c42b4_ft
L_8021c42b4_ft:
  ; @pc 0x8021c42b4 word 0x97ff80b8
  %wp4678 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144888, ptr %wp4678, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a4594(ptr %c)
  ; @pc 0x8021c42b8 word 0xf9400268
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %gmp4680 = inttoptr i64 %r4679 to ptr
  %gml4681 = load i64, ptr %gmp4680, align 1, !alias.scope !4, !noalias !3
  %wp4682 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4681, ptr %wp4682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42bc word 0xaa0003e1
  %r4683.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4683 = load i64, ptr %r4683.p, align 8, !alias.scope !3, !noalias !4
  %t4684 = or i64 0, %r4683
  %wp4685 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4684, ptr %wp4685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42c0 word 0xaa1303e0
  %r4686.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4686 = load i64, ptr %r4686.p, align 8, !alias.scope !3, !noalias !4
  %t4687 = or i64 0, %r4686
  %wp4688 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4687, ptr %wp4688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42c4 word 0xf9400108
  %r4689.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4689 = load i64, ptr %r4689.p, align 8, !alias.scope !3, !noalias !4
  %gmp4690 = inttoptr i64 %r4689 to ptr
  %gml4691 = load i64, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  %wp4692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4691, ptr %wp4692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42c8 word 0xd63f0100
  %r4693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4693 = load i64, ptr %r4693.p, align 8, !alias.scope !3, !noalias !4
  %fp4694 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4693, ptr %fp4694, align 8, !alias.scope !3, !noalias !4
  %wp4695 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144908, ptr %wp4695, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c42cc word 0xb5ff9e00
  %r4696.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4696 = load i64, ptr %r4696.p, align 8, !alias.scope !3, !noalias !4
  %cmp4697 = icmp ne i64 %r4696, 0
  br i1 %cmp4697, label %L_8021c368c, label %L_8021c42d0_ft
L_8021c42d0_ft:
  ; @pc 0x8021c42d0 word 0x17fffcf2
  br label %L_8021c3698
L_8021c42dc_ft:
  ; @pc 0x8021c42dc word 0xf9400e88
  %r4705.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4705 = load i64, ptr %r4705.p, align 8, !alias.scope !3, !noalias !4
  %t4706 = add i64 %r4705, 24
  %gmp4707 = inttoptr i64 %t4706 to ptr
  %gml4708 = load i64, ptr %gmp4707, align 1, !alias.scope !4, !noalias !3
  %wp4709 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4708, ptr %wp4709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42e0 word 0xb4ff9f28
  %r4710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4710 = load i64, ptr %r4710.p, align 8, !alias.scope !3, !noalias !4
  %cmp4711 = icmp eq i64 %r4710, 0
  br i1 %cmp4711, label %L_8021c36c4, label %L_8021c42e4_ft
L_8021c42e4_ft:
  ; @pc 0x8021c42e4 word 0xb9400d09
  %r4712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4712 = load i64, ptr %r4712.p, align 8, !alias.scope !3, !noalias !4
  %t4713 = add i64 %r4712, 12
  %gmp4714 = inttoptr i64 %t4713 to ptr
  %gml4715 = load i32, ptr %gmp4714, align 1, !alias.scope !4, !noalias !3
  %c4716 = zext i32 %gml4715 to i64
  %wp4717 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4716, ptr %wp4717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42e8 word 0xb940228a
  %r4718.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4718 = load i64, ptr %r4718.p, align 8, !alias.scope !3, !noalias !4
  %t4719 = add i64 %r4718, 32
  %gmp4720 = inttoptr i64 %t4719 to ptr
  %gml4721 = load i32, ptr %gmp4720, align 1, !alias.scope !4, !noalias !3
  %c4722 = zext i32 %gml4721 to i64
  %wp4723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4722, ptr %wp4723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42ec word 0x6b0a013f
  %r4724.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4724 = load i64, ptr %r4724.p, align 8, !alias.scope !3, !noalias !4
  %c4725 = trunc i64 %r4724 to i32
  %r4726.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4726 = load i64, ptr %r4726.p, align 8, !alias.scope !3, !noalias !4
  %c4727 = trunc i64 %r4726 to i32
  %t4728 = sub i32 %c4725, %c4727
  %fn4729 = icmp slt i32 %t4728, 0
  %fz4730 = icmp eq i32 %t4728, 0
  %fc4731 = icmp uge i32 %c4725, %c4727
  %fx14732 = xor i32 %c4725, %c4727
  %fx24733 = xor i32 %c4725, %t4728
  %fva4734 = and i32 %fx14732, %fx24733
  %fv4735 = icmp slt i32 %fva4734, 0
  %nz4736 = zext i1 %fn4729 to i64
  %zz4737 = zext i1 %fz4730 to i64
  %cz4738 = zext i1 %fc4731 to i64
  %vz4739 = zext i1 %fv4735 to i64
  %ns4740 = shl i64 %nz4736, 31
  %zs4741 = shl i64 %zz4737, 30
  %cs4742 = shl i64 %cz4738, 29
  %vs4743 = shl i64 %vz4739, 28
  %nzor4744 = or i64 %ns4740, %zs4741
  %cvor4745 = or i64 %cs4742, %vs4743
  %nzcv4746 = or i64 %nzor4744, %cvor4745
  %wp4747 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4746, ptr %wp4747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42f0 word 0x54ff9ea1
  %r4748.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4748 = load i64, ptr %r4748.p, align 8, !alias.scope !3, !noalias !4
  %fsh4750 = lshr i64 %r4748, 30
  %ftr4751 = trunc i64 %fsh4750 to i1
  %cond4749 = xor i1 %ftr4751, true
  br i1 %cond4749, label %L_8021c36c4, label %L_8021c42f4_ft
L_8021c42f4_ft:
  ; @pc 0x8021c42f4 word 0xf9400113
  %r4752.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4752 = load i64, ptr %r4752.p, align 8, !alias.scope !3, !noalias !4
  %gmp4753 = inttoptr i64 %r4752 to ptr
  %gml4754 = load i64, ptr %gmp4753, align 1, !alias.scope !4, !noalias !3
  %wp4755 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4754, ptr %wp4755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c42f8 word 0xb4ff9e73
  %r4756.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4756 = load i64, ptr %r4756.p, align 8, !alias.scope !3, !noalias !4
  %cmp4757 = icmp eq i64 %r4756, 0
  br i1 %cmp4757, label %L_8021c36c4, label %L_8021c42fc_ft
L_8021c42fc_ft:
  ; @pc 0x8021c42fc word 0x97ff80a6
  %wp4758 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144960, ptr %wp4758, align 8, !alias.scope !3, !noalias !4
  call void @f_8021a4594(ptr %c)
  ; @pc 0x8021c4300 word 0xf9400268
  %r4759.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4759 = load i64, ptr %r4759.p, align 8, !alias.scope !3, !noalias !4
  %gmp4760 = inttoptr i64 %r4759 to ptr
  %gml4761 = load i64, ptr %gmp4760, align 1, !alias.scope !4, !noalias !3
  %wp4762 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4761, ptr %wp4762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4304 word 0xaa0003e1
  %r4763.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4763 = load i64, ptr %r4763.p, align 8, !alias.scope !3, !noalias !4
  %t4764 = or i64 0, %r4763
  %wp4765 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4764, ptr %wp4765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4308 word 0xaa1303e0
  %r4766.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4766 = load i64, ptr %r4766.p, align 8, !alias.scope !3, !noalias !4
  %t4767 = or i64 0, %r4766
  %wp4768 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4767, ptr %wp4768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c430c word 0xf9400108
  %r4769.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4769 = load i64, ptr %r4769.p, align 8, !alias.scope !3, !noalias !4
  %gmp4770 = inttoptr i64 %r4769 to ptr
  %gml4771 = load i64, ptr %gmp4770, align 1, !alias.scope !4, !noalias !3
  %wp4772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4771, ptr %wp4772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8021c4310 word 0xd63f0100
  %r4773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4773 = load i64, ptr %r4773.p, align 8, !alias.scope !3, !noalias !4
  %fp4774 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4773, ptr %fp4774, align 8, !alias.scope !3, !noalias !4
  %wp4775 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34395144980, ptr %wp4775, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8021c4314 word 0xb5ff9d20
  %r4776.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4776 = load i64, ptr %r4776.p, align 8, !alias.scope !3, !noalias !4
  %cmp4777 = icmp ne i64 %r4776, 0
  br i1 %cmp4777, label %L_8021c36b8, label %L_8021c4318_ft
L_8021c4318_ft:
  ; @pc 0x8021c4318 word 0x17fffceb
  br label %L_8021c36c4
L_8021c3314_jt_def:
  %fp4823 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r590, ptr %fp4823, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8021c3a38_jt_def:
  %fp4824 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2712, ptr %fp4824, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
