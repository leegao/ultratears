; UltraTears chunk main_432: 5 functions [0x80077bc00..0x80077d3b0)
; ModuleID = 'main_432_raw'
source_filename = "main_432_raw"
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
declare dso_local i32 @rt_crc32(i32, i64, i32, i32)
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

declare dso_local void @f_8000340bc(ptr)
declare dso_local void @f_800079d20(ptr)
declare dso_local void @f_8001797dc(ptr)
declare dso_local void @f_8001a1590(ptr)
declare dso_local void @f_8001a6c10(ptr)
declare dso_local void @f_8002152a0(ptr)
declare dso_local void @f_8003f9d50(ptr)
declare dso_local void @f_80077d3b0(ptr)
declare dso_local void @f_80077fec4(ptr)
declare dso_local void @f_80077fee0(ptr)
declare dso_local void @f_800781d60(ptr)
declare dso_local void @f_800789c30(ptr)
declare dso_local void @f_80084d7f0(ptr)
declare dso_local void @f_800b54d3c(ptr)
declare dso_local void @f_8027d342c(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)
declare dso_local void @f_802ba3ac0(ptr)
declare dso_local void @f_802ba4080(ptr)
declare dso_local void @f_802ba40a0(ptr)
declare dso_local void @f_802ba40b0(ptr)
declare dso_local void @f_802ba41b0(ptr)
declare dso_local void @f_802ba4a70(ptr)

define dso_local void @f_80077bc00(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80077bc00:
  ; @pc 0x80077bc00 word 0xd10243ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 144
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc04 word 0xa9057bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 80
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc08 word 0xf90033f7
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 96
  %r17.p = getelementptr inbounds i8, ptr %c, i64 184
  %r17 = load i64, ptr %r17.p, align 8, !alias.scope !3, !noalias !4
  %gmp18 = inttoptr i64 %t16 to ptr
  store i64 %r17, ptr %gmp18, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc0c word 0xa90757f6
  %r19.p = getelementptr inbounds i8, ptr %c, i64 256
  %r19 = load i64, ptr %r19.p, align 8, !alias.scope !3, !noalias !4
  %t20 = add i64 %r19, 112
  %t21 = add i64 %t20, 8
  %r22.p = getelementptr inbounds i8, ptr %c, i64 176
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %gmp23 = inttoptr i64 %t20 to ptr
  store i64 %r22, ptr %gmp23, align 1, !alias.scope !4, !noalias !3
  %r24.p = getelementptr inbounds i8, ptr %c, i64 168
  %r24 = load i64, ptr %r24.p, align 8, !alias.scope !3, !noalias !4
  %gmp25 = inttoptr i64 %t21 to ptr
  store i64 %r24, ptr %gmp25, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc10 word 0xa9084ff4
  %r26.p = getelementptr inbounds i8, ptr %c, i64 256
  %r26 = load i64, ptr %r26.p, align 8, !alias.scope !3, !noalias !4
  %t27 = add i64 %r26, 128
  %t28 = add i64 %t27, 8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 160
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %gmp30 = inttoptr i64 %t27 to ptr
  store i64 %r29, ptr %gmp30, align 1, !alias.scope !4, !noalias !3
  %r31.p = getelementptr inbounds i8, ptr %c, i64 152
  %r31 = load i64, ptr %r31.p, align 8, !alias.scope !3, !noalias !4
  %gmp32 = inttoptr i64 %t28 to ptr
  store i64 %r31, ptr %gmp32, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc14 word 0x910143fd
  %r33.p = getelementptr inbounds i8, ptr %c, i64 256
  %r33 = load i64, ptr %r33.p, align 8, !alias.scope !3, !noalias !4
  %t34 = add i64 %r33, 80
  %wp35 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t34, ptr %wp35, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc18 word 0xf0018bc8
  %wp36 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419466240, ptr %wp36, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc1c word 0x91260108
  %r37.p = getelementptr inbounds i8, ptr %c, i64 64
  %r37 = load i64, ptr %r37.p, align 8, !alias.scope !3, !noalias !4
  %t38 = add i64 %r37, 2432
  %wp39 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t38, ptr %wp39, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc20 word 0xf9000008
  %r40.p = getelementptr inbounds i8, ptr %c, i64 0
  %r40 = load i64, ptr %r40.p, align 8, !alias.scope !3, !noalias !4
  %r41.p = getelementptr inbounds i8, ptr %c, i64 64
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %r40 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc24 word 0x91002013
  %r43.p = getelementptr inbounds i8, ptr %c, i64 0
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 8
  %wp45 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t44, ptr %wp45, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc28 word 0xaa0003f4
  %r46.p = getelementptr inbounds i8, ptr %c, i64 0
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %t47 = or i64 0, %r46
  %wp48 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t47, ptr %wp48, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc2c word 0xf0018bc1
  %wp49 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419466240, ptr %wp49, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc30 word 0x91264021
  %r50.p = getelementptr inbounds i8, ptr %c, i64 8
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 2448
  %wp52 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc34 word 0xaa1303e0
  %r53.p = getelementptr inbounds i8, ptr %c, i64 152
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = or i64 0, %r53
  %wp55 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t54, ptr %wp55, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc38 word 0x2a1f03e2
  %t56 = or i32 0, 0
  %c57 = zext i32 %t56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc3c word 0x97f1f845
  %wp59 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585344, ptr %wp59, align 8, !alias.scope !3, !noalias !4
  call void @f_8003f9d50(ptr %c)
  ; @pc 0x80077bc40 word 0x91072295
  %r60.p = getelementptr inbounds i8, ptr %c, i64 160
  %r60 = load i64, ptr %r60.p, align 8, !alias.scope !3, !noalias !4
  %t61 = add i64 %r60, 456
  %wp62 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t61, ptr %wp62, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc44 word 0xaa1503e0
  %r63.p = getelementptr inbounds i8, ptr %c, i64 168
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %t64 = or i64 0, %r63
  %wp65 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t64, ptr %wp65, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc48 word 0x97e2e11d
  %wp66 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585356, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  call void @f_8000340bc(ptr %c)
  ; @pc 0x80077bc4c word 0x52800c88
  %c67 = zext i32 100 to i64
  %wp68 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c67, ptr %wp68, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc50 word 0x12800009
  %c69 = zext i32 -1 to i64
  %wp70 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc54 word 0x39012fff
  %r71.p = getelementptr inbounds i8, ptr %c, i64 256
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r71, 75
  %c73 = trunc i32 0 to i8
  %gmp74 = inttoptr i64 %t72 to ptr
  store i8 %c73, ptr %gmp74, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc58 word 0x1ac84128
  %r75.p = getelementptr inbounds i8, ptr %c, i64 72
  %r75 = load i64, ptr %r75.p, align 8, !alias.scope !3, !noalias !4
  %c76 = trunc i64 %r75 to i32
  %r77.p = getelementptr inbounds i8, ptr %c, i64 64
  %r77 = load i64, ptr %r77.p, align 8, !alias.scope !3, !noalias !4
  %c78 = trunc i64 %r77 to i32
  %c79 = zext i32 %c78 to i64
  %crc80 = call i32 @rt_crc32(i32 %c76, i64 %c79, i32 1, i32 0)
  %c81 = zext i32 %crc80 to i64
  %wp82 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c81, ptr %wp82, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc5c word 0x52800ca9
  %c83 = zext i32 101 to i64
  %wp84 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c83, ptr %wp84, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc60 word 0x5280080a
  %c85 = zext i32 64 to i64
  %wp86 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc64 word 0xb9000bea
  %r87.p = getelementptr inbounds i8, ptr %c, i64 256
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %t88 = add i64 %r87, 8
  %r89.p = getelementptr inbounds i8, ptr %c, i64 80
  %r89 = load i64, ptr %r89.p, align 8, !alias.scope !3, !noalias !4
  %c90 = trunc i64 %r89 to i32
  %gmp91 = inttoptr i64 %t88 to ptr
  store i32 %c90, ptr %gmp91, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc68 word 0xb9021a8a
  %r92.p = getelementptr inbounds i8, ptr %c, i64 160
  %r92 = load i64, ptr %r92.p, align 8, !alias.scope !3, !noalias !4
  %t93 = add i64 %r92, 536
  %r94.p = getelementptr inbounds i8, ptr %c, i64 80
  %r94 = load i64, ptr %r94.p, align 8, !alias.scope !3, !noalias !4
  %c95 = trunc i64 %r94 to i32
  %gmp96 = inttoptr i64 %t93 to ptr
  store i32 %c95, ptr %gmp96, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc6c word 0x52800d8a
  %c97 = zext i32 108 to i64
  %wp98 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c97, ptr %wp98, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc70 word 0x9107e280
  %r99.p = getelementptr inbounds i8, ptr %c, i64 160
  %r99 = load i64, ptr %r99.p, align 8, !alias.scope !3, !noalias !4
  %t100 = add i64 %r99, 504
  %wp101 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t100, ptr %wp101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc74 word 0x910003eb
  %r102.p = getelementptr inbounds i8, ptr %c, i64 256
  %r102 = load i64, ptr %r102.p, align 8, !alias.scope !3, !noalias !4
  %t103 = add i64 %r102, 0
  %wp104 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t103, ptr %wp104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc78 word 0x9100316b
  %r105.p = getelementptr inbounds i8, ptr %c, i64 88
  %r105 = load i64, ptr %r105.p, align 8, !alias.scope !3, !noalias !4
  %t106 = add i64 %r105, 12
  %wp107 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t106, ptr %wp107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc7c word 0x1ac94108
  %r108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %c109 = trunc i64 %r108 to i32
  %r110.p = getelementptr inbounds i8, ptr %c, i64 72
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %c111 = trunc i64 %r110 to i32
  %c112 = zext i32 %c111 to i64
  %crc113 = call i32 @rt_crc32(i32 %c109, i64 %c112, i32 1, i32 0)
  %c114 = zext i32 %crc113 to i64
  %wp115 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c114, ptr %wp115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc80 word 0x52800cc9
  %c116 = zext i32 102 to i64
  %wp117 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc84 word 0xf90003eb
  %r118.p = getelementptr inbounds i8, ptr %c, i64 256
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %r119.p = getelementptr inbounds i8, ptr %c, i64 88
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %gmp120 = inttoptr i64 %r118 to ptr
  store i64 %r119, ptr %gmp120, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc88 word 0x390063ff
  %r121.p = getelementptr inbounds i8, ptr %c, i64 256
  %r121 = load i64, ptr %r121.p, align 8, !alias.scope !3, !noalias !4
  %t122 = add i64 %r121, 24
  %c123 = trunc i32 0 to i8
  %gmp124 = inttoptr i64 %t122 to ptr
  store i8 %c123, ptr %gmp124, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bc8c word 0xf0018bc2
  %wp125 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34419466240, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc90 word 0x91266042
  %r126.p = getelementptr inbounds i8, ptr %c, i64 16
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = add i64 %r126, 2456
  %wp128 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc94 word 0x910003e1
  %r129.p = getelementptr inbounds i8, ptr %c, i64 256
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %t130 = add i64 %r129, 0
  %wp131 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t130, ptr %wp131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc98 word 0x910063a4
  %r132.p = getelementptr inbounds i8, ptr %c, i64 232
  %r132 = load i64, ptr %r132.p, align 8, !alias.scope !3, !noalias !4
  %t133 = add i64 %r132, 24
  %wp134 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t133, ptr %wp134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc9c word 0xaa0203e3
  %r135.p = getelementptr inbounds i8, ptr %c, i64 16
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %t136 = or i64 0, %r135
  %wp137 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t136, ptr %wp137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bca0 word 0x1ac94108
  %r138.p = getelementptr inbounds i8, ptr %c, i64 64
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %c139 = trunc i64 %r138 to i32
  %r140.p = getelementptr inbounds i8, ptr %c, i64 72
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %c141 = trunc i64 %r140 to i32
  %c142 = zext i32 %c141 to i64
  %crc143 = call i32 @rt_crc32(i32 %c139, i64 %c142, i32 1, i32 0)
  %c144 = zext i32 %crc143 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bca4 word 0x52800c29
  %c146 = zext i32 97 to i64
  %wp147 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c146, ptr %wp147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bca8 word 0xaa1503e5
  %r148.p = getelementptr inbounds i8, ptr %c, i64 168
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = or i64 0, %r148
  %wp150 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcac word 0x1ac94108
  %r151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %c152 = trunc i64 %r151 to i32
  %r153.p = getelementptr inbounds i8, ptr %c, i64 72
  %r153 = load i64, ptr %r153.p, align 8, !alias.scope !3, !noalias !4
  %c154 = trunc i64 %r153 to i32
  %c155 = zext i32 %c154 to i64
  %crc156 = call i32 @rt_crc32(i32 %c152, i64 %c155, i32 1, i32 0)
  %c157 = zext i32 %crc156 to i64
  %wp158 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c157, ptr %wp158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcb0 word 0x528c2dc9
  %c159 = zext i32 24942 to i64
  %wp160 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c159, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcb4 word 0x72acada9
  %r161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r161 = load i64, ptr %r161.p, align 8, !alias.scope !3, !noalias !4
  %t162 = and i64 %r161, -4294901761
  %t163 = or i64 %t162, 1701642240
  %c164 = trunc i64 %t163 to i32
  %c165 = zext i32 %c164 to i64
  %wp166 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c165, ptr %wp166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcb8 word 0xb90017e9
  %r167.p = getelementptr inbounds i8, ptr %c, i64 256
  %r167 = load i64, ptr %r167.p, align 8, !alias.scope !3, !noalias !4
  %t168 = add i64 %r167, 20
  %r169.p = getelementptr inbounds i8, ptr %c, i64 72
  %r169 = load i64, ptr %r169.p, align 8, !alias.scope !3, !noalias !4
  %c170 = trunc i64 %r169 to i32
  %gmp171 = inttoptr i64 %t168 to ptr
  store i32 %c170, ptr %gmp171, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bcbc word 0x52800ea9
  %c172 = zext i32 117 to i64
  %wp173 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c172, ptr %wp173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcc0 word 0x1ac94108
  %r174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r174 = load i64, ptr %r174.p, align 8, !alias.scope !3, !noalias !4
  %c175 = trunc i64 %r174 to i32
  %r176.p = getelementptr inbounds i8, ptr %c, i64 72
  %r176 = load i64, ptr %r176.p, align 8, !alias.scope !3, !noalias !4
  %c177 = trunc i64 %r176 to i32
  %c178 = zext i32 %c177 to i64
  %crc179 = call i32 @rt_crc32(i32 %c175, i64 %c178, i32 1, i32 0)
  %c180 = zext i32 %crc179 to i64
  %wp181 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c180, ptr %wp181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcc4 word 0xaa0003e9
  %r182.p = getelementptr inbounds i8, ptr %c, i64 0
  %r182 = load i64, ptr %r182.p, align 8, !alias.scope !3, !noalias !4
  %t183 = or i64 0, %r182
  %wp184 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t183, ptr %wp184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcc8 word 0x1aca4108
  %r185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r185 = load i64, ptr %r185.p, align 8, !alias.scope !3, !noalias !4
  %c186 = trunc i64 %r185 to i32
  %r187.p = getelementptr inbounds i8, ptr %c, i64 80
  %r187 = load i64, ptr %r187.p, align 8, !alias.scope !3, !noalias !4
  %c188 = trunc i64 %r187 to i32
  %c189 = zext i32 %c188 to i64
  %crc190 = call i32 @rt_crc32(i32 %c186, i64 %c189, i32 1, i32 0)
  %c191 = zext i32 %crc190 to i64
  %wp192 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c191, ptr %wp192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bccc word 0xf001258a
  %wp193 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34406064128, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcd0 word 0x913add4a
  %r194.p = getelementptr inbounds i8, ptr %c, i64 80
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %t195 = add i64 %r194, 3767
  %wp196 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t195, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcd4 word 0xf940014a
  %r197.p = getelementptr inbounds i8, ptr %c, i64 80
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %gmp198 = inttoptr i64 %r197 to ptr
  %gml199 = load i64, ptr %gmp198, align 1, !alias.scope !4, !noalias !3
  %wp200 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml199, ptr %wp200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcd8 word 0x38024d3f
  %r201.p = getelementptr inbounds i8, ptr %c, i64 72
  %r201 = load i64, ptr %r201.p, align 8, !alias.scope !3, !noalias !4
  %t202 = add i64 %r201, 36
  %c203 = trunc i32 0 to i8
  %gmp204 = inttoptr i64 %t202 to ptr
  store i8 %c203, ptr %gmp204, align 1, !alias.scope !4, !noalias !3
  %wp205 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t202, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcdc word 0xf9010a89
  %r206.p = getelementptr inbounds i8, ptr %c, i64 160
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %t207 = add i64 %r206, 528
  %r208.p = getelementptr inbounds i8, ptr %c, i64 72
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %gmp209 = inttoptr i64 %t207 to ptr
  store i64 %r208, ptr %gmp209, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bce0 word 0x90018ee9
  %wp210 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419863552, ptr %wp210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bce4 word 0xf9436529
  %r211.p = getelementptr inbounds i8, ptr %c, i64 72
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %t212 = add i64 %r211, 1736
  %gmp213 = inttoptr i64 %t212 to ptr
  %gml214 = load i64, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  %wp215 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml214, ptr %wp215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bce8 word 0xf901069f
  %r216.p = getelementptr inbounds i8, ptr %c, i64 160
  %r216 = load i64, ptr %r216.p, align 8, !alias.scope !3, !noalias !4
  %t217 = add i64 %r216, 520
  %gmp218 = inttoptr i64 %t217 to ptr
  store i64 0, ptr %gmp218, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bcec word 0x39096e9f
  %r219.p = getelementptr inbounds i8, ptr %c, i64 160
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %t220 = add i64 %r219, 603
  %c221 = trunc i32 0 to i8
  %gmp222 = inttoptr i64 %t220 to ptr
  store i8 %c221, ptr %gmp222, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bcf0 word 0x91004129
  %r223.p = getelementptr inbounds i8, ptr %c, i64 72
  %r223 = load i64, ptr %r223.p, align 8, !alias.scope !3, !noalias !4
  %t224 = add i64 %r223, 16
  %wp225 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t224, ptr %wp225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcf4 word 0xf800c3ea
  %r226.p = getelementptr inbounds i8, ptr %c, i64 256
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %t227 = add i64 %r226, 12
  %r228.p = getelementptr inbounds i8, ptr %c, i64 80
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %gmp229 = inttoptr i64 %t227 to ptr
  store i64 %r228, ptr %gmp229, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bcf8 word 0x52800e8a
  %c230 = zext i32 116 to i64
  %wp231 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c230, ptr %wp231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bcfc word 0xf900fe89
  %r232.p = getelementptr inbounds i8, ptr %c, i64 160
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = add i64 %r232, 504
  %r234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %gmp235 = inttoptr i64 %t233 to ptr
  store i64 %r234, ptr %gmp235, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd00 word 0x1aca4108
  %r236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %c237 = trunc i64 %r236 to i32
  %r238.p = getelementptr inbounds i8, ptr %c, i64 80
  %r238 = load i64, ptr %r238.p, align 8, !alias.scope !3, !noalias !4
  %c239 = trunc i64 %r238 to i32
  %c240 = zext i32 %c239 to i64
  %crc241 = call i32 @rt_crc32(i32 %c237, i64 %c240, i32 1, i32 0)
  %c242 = zext i32 %crc241 to i64
  %wp243 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c242, ptr %wp243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd04 word 0x2a2803f6
  %r244.p = getelementptr inbounds i8, ptr %c, i64 64
  %r244 = load i64, ptr %r244.p, align 8, !alias.scope !3, !noalias !4
  %c245 = trunc i64 %r244 to i32
  %t246 = xor i32 %c245, -1
  %t247 = or i32 0, %t246
  %c248 = zext i32 %t247 to i64
  %wp249 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c248, ptr %wp249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd08 word 0x900124a8
  %wp250 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34405937152, ptr %wp250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd0c word 0x91047d08
  %r251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r251 = load i64, ptr %r251.p, align 8, !alias.scope !3, !noalias !4
  %t252 = add i64 %r251, 287
  %wp253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t252, ptr %wp253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd10 word 0xb9020296
  %r254.p = getelementptr inbounds i8, ptr %c, i64 160
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %t255 = add i64 %r254, 512
  %r256.p = getelementptr inbounds i8, ptr %c, i64 176
  %r256 = load i64, ptr %r256.p, align 8, !alias.scope !3, !noalias !4
  %c257 = trunc i64 %r256 to i32
  %gmp258 = inttoptr i64 %t255 to ptr
  store i32 %c257, ptr %gmp258, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd14 word 0xf9000fa8
  %r259.p = getelementptr inbounds i8, ptr %c, i64 232
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %t260 = add i64 %r259, 24
  %r261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r261 = load i64, ptr %r261.p, align 8, !alias.scope !3, !noalias !4
  %gmp262 = inttoptr i64 %t260 to ptr
  store i64 %r261, ptr %gmp262, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd18 word 0x940037c6
  %wp263 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585564, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  call void @f_800789c30(ptr %c)
  ; @pc 0x80077bd1c word 0xf9013a9f
  %r264.p = getelementptr inbounds i8, ptr %c, i64 160
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %t265 = add i64 %r264, 624
  %gmp266 = inttoptr i64 %t265 to ptr
  store i64 0, ptr %gmp266, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd20 word 0xf0018ec8
  %wp267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd24 word 0xf0018bc1
  %wp268 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419466240, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd28 word 0x91268021
  %r269.p = getelementptr inbounds i8, ptr %c, i64 8
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %t270 = add i64 %r269, 2464
  %wp271 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t270, ptr %wp271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd2c word 0xb9026a96
  %r272.p = getelementptr inbounds i8, ptr %c, i64 160
  %r272 = load i64, ptr %r272.p, align 8, !alias.scope !3, !noalias !4
  %t273 = add i64 %r272, 616
  %r274.p = getelementptr inbounds i8, ptr %c, i64 176
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %c275 = trunc i64 %r274 to i32
  %gmp276 = inttoptr i64 %t273 to ptr
  store i32 %c275, ptr %gmp276, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd30 word 0xf947d908
  %r277.p = getelementptr inbounds i8, ptr %c, i64 64
  %r277 = load i64, ptr %r277.p, align 8, !alias.scope !3, !noalias !4
  %t278 = add i64 %r277, 4016
  %gmp279 = inttoptr i64 %t278 to ptr
  %gml280 = load i64, ptr %gmp279, align 1, !alias.scope !4, !noalias !3
  %wp281 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml280, ptr %wp281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd34 word 0x91098280
  %r282.p = getelementptr inbounds i8, ptr %c, i64 160
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %t283 = add i64 %r282, 608
  %wp284 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t283, ptr %wp284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd38 word 0x910003e3
  %r285.p = getelementptr inbounds i8, ptr %c, i64 256
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %t286 = add i64 %r285, 0
  %wp287 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd3c word 0xaa0103e2
  %r288.p = getelementptr inbounds i8, ptr %c, i64 8
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %t289 = or i64 0, %r288
  %wp290 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t289, ptr %wp290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd40 word 0xaa1503e4
  %r291.p = getelementptr inbounds i8, ptr %c, i64 168
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %t292 = or i64 0, %r291
  %wp293 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t292, ptr %wp293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd44 word 0xb9027a9f
  %r294.p = getelementptr inbounds i8, ptr %c, i64 160
  %r294 = load i64, ptr %r294.p, align 8, !alias.scope !3, !noalias !4
  %t295 = add i64 %r294, 632
  %gmp296 = inttoptr i64 %t295 to ptr
  store i32 0, ptr %gmp296, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd48 word 0x91004117
  %r297.p = getelementptr inbounds i8, ptr %c, i64 64
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 16
  %wp299 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t298, ptr %wp299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd4c word 0xf9013297
  %r300.p = getelementptr inbounds i8, ptr %c, i64 160
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %t301 = add i64 %r300, 608
  %r302.p = getelementptr inbounds i8, ptr %c, i64 184
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %gmp303 = inttoptr i64 %t301 to ptr
  store i64 %r302, ptr %gmp303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd50 word 0x940f63fb
  %wp304 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585620, ptr %wp304, align 8, !alias.scope !3, !noalias !4
  call void @f_800b54d3c(ptr %c)
  ; @pc 0x80077bd54 word 0xf0018bc1
  %wp305 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419466240, ptr %wp305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd58 word 0x9126a021
  %r306.p = getelementptr inbounds i8, ptr %c, i64 8
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %t307 = add i64 %r306, 2472
  %wp308 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t307, ptr %wp308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd5c word 0xb9027a9f
  %r309.p = getelementptr inbounds i8, ptr %c, i64 160
  %r309 = load i64, ptr %r309.p, align 8, !alias.scope !3, !noalias !4
  %t310 = add i64 %r309, 632
  %gmp311 = inttoptr i64 %t310 to ptr
  store i32 0, ptr %gmp311, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd60 word 0x910a0280
  %r312.p = getelementptr inbounds i8, ptr %c, i64 160
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %t313 = add i64 %r312, 640
  %wp314 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t313, ptr %wp314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd64 word 0x910003e3
  %r315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r315 = load i64, ptr %r315.p, align 8, !alias.scope !3, !noalias !4
  %t316 = add i64 %r315, 0
  %wp317 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t316, ptr %wp317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd68 word 0xf9014a9f
  %r318.p = getelementptr inbounds i8, ptr %c, i64 160
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %t319 = add i64 %r318, 656
  %gmp320 = inttoptr i64 %t319 to ptr
  store i64 0, ptr %gmp320, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd6c word 0xaa0103e2
  %r321.p = getelementptr inbounds i8, ptr %c, i64 8
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %t322 = or i64 0, %r321
  %wp323 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t322, ptr %wp323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd70 word 0xaa1503e4
  %r324.p = getelementptr inbounds i8, ptr %c, i64 168
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %t325 = or i64 0, %r324
  %wp326 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t325, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd74 word 0xb9028a96
  %r327.p = getelementptr inbounds i8, ptr %c, i64 160
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %t328 = add i64 %r327, 648
  %r329.p = getelementptr inbounds i8, ptr %c, i64 176
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %c330 = trunc i64 %r329 to i32
  %gmp331 = inttoptr i64 %t328 to ptr
  store i32 %c330, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd78 word 0xf9014297
  %r332.p = getelementptr inbounds i8, ptr %c, i64 160
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %t333 = add i64 %r332, 640
  %r334.p = getelementptr inbounds i8, ptr %c, i64 184
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %gmp335 = inttoptr i64 %t333 to ptr
  store i64 %r334, ptr %gmp335, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd7c word 0xb9029a9f
  %r336.p = getelementptr inbounds i8, ptr %c, i64 160
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = add i64 %r336, 664
  %gmp338 = inttoptr i64 %t337 to ptr
  store i32 0, ptr %gmp338, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd80 word 0x940f63ef
  %wp339 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585668, ptr %wp339, align 8, !alias.scope !3, !noalias !4
  call void @f_800b54d3c(ptr %c)
  ; @pc 0x80077bd84 word 0xf0018bc1
  %wp340 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419466240, ptr %wp340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd88 word 0x9126c021
  %r341.p = getelementptr inbounds i8, ptr %c, i64 8
  %r341 = load i64, ptr %r341.p, align 8, !alias.scope !3, !noalias !4
  %t342 = add i64 %r341, 2480
  %wp343 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t342, ptr %wp343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd8c word 0xb9029a9f
  %r344.p = getelementptr inbounds i8, ptr %c, i64 160
  %r344 = load i64, ptr %r344.p, align 8, !alias.scope !3, !noalias !4
  %t345 = add i64 %r344, 664
  %gmp346 = inttoptr i64 %t345 to ptr
  store i32 0, ptr %gmp346, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd90 word 0x910a8280
  %r347.p = getelementptr inbounds i8, ptr %c, i64 160
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %t348 = add i64 %r347, 672
  %wp349 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t348, ptr %wp349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd94 word 0x910003e3
  %r350.p = getelementptr inbounds i8, ptr %c, i64 256
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %t351 = add i64 %r350, 0
  %wp352 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t351, ptr %wp352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bd98 word 0xf9015a9f
  %r353.p = getelementptr inbounds i8, ptr %c, i64 160
  %r353 = load i64, ptr %r353.p, align 8, !alias.scope !3, !noalias !4
  %t354 = add i64 %r353, 688
  %gmp355 = inttoptr i64 %t354 to ptr
  store i64 0, ptr %gmp355, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bd9c word 0xaa0103e2
  %r356.p = getelementptr inbounds i8, ptr %c, i64 8
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %t357 = or i64 0, %r356
  %wp358 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t357, ptr %wp358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bda0 word 0xaa1503e4
  %r359.p = getelementptr inbounds i8, ptr %c, i64 168
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %t360 = or i64 0, %r359
  %wp361 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t360, ptr %wp361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bda4 word 0xb902aa96
  %r362.p = getelementptr inbounds i8, ptr %c, i64 160
  %r362 = load i64, ptr %r362.p, align 8, !alias.scope !3, !noalias !4
  %t363 = add i64 %r362, 680
  %r364.p = getelementptr inbounds i8, ptr %c, i64 176
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %c365 = trunc i64 %r364 to i32
  %gmp366 = inttoptr i64 %t363 to ptr
  store i32 %c365, ptr %gmp366, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bda8 word 0xf9015297
  %r367.p = getelementptr inbounds i8, ptr %c, i64 160
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = add i64 %r367, 672
  %r369.p = getelementptr inbounds i8, ptr %c, i64 184
  %r369 = load i64, ptr %r369.p, align 8, !alias.scope !3, !noalias !4
  %gmp370 = inttoptr i64 %t368 to ptr
  store i64 %r369, ptr %gmp370, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdac word 0xb902ba9f
  %r371.p = getelementptr inbounds i8, ptr %c, i64 160
  %r371 = load i64, ptr %r371.p, align 8, !alias.scope !3, !noalias !4
  %t372 = add i64 %r371, 696
  %gmp373 = inttoptr i64 %t372 to ptr
  store i32 0, ptr %gmp373, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdb0 word 0x940f63e3
  %wp374 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585716, ptr %wp374, align 8, !alias.scope !3, !noalias !4
  call void @f_800b54d3c(ptr %c)
  ; @pc 0x80077bdb4 word 0x910b0280
  %r375.p = getelementptr inbounds i8, ptr %c, i64 160
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %t376 = add i64 %r375, 704
  %wp377 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t376, ptr %wp377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdb8 word 0xf0018bc1
  %wp378 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419466240, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdbc word 0x9126e021
  %r379.p = getelementptr inbounds i8, ptr %c, i64 8
  %r379 = load i64, ptr %r379.p, align 8, !alias.scope !3, !noalias !4
  %t380 = add i64 %r379, 2488
  %wp381 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t380, ptr %wp381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdc0 word 0x2a1f03e2
  %t382 = or i32 0, 0
  %c383 = zext i32 %t382 to i64
  %wp384 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c383, ptr %wp384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdc4 word 0xb902ba9f
  %r385.p = getelementptr inbounds i8, ptr %c, i64 160
  %r385 = load i64, ptr %r385.p, align 8, !alias.scope !3, !noalias !4
  %t386 = add i64 %r385, 696
  %gmp387 = inttoptr i64 %t386 to ptr
  store i32 0, ptr %gmp387, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdc8 word 0x97f1f7e2
  %wp388 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585740, ptr %wp388, align 8, !alias.scope !3, !noalias !4
  call void @f_8003f9d50(ptr %c)
  ; @pc 0x80077bdcc word 0xf0012508
  %wp389 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34405998592, ptr %wp389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdd0 word 0x9123a908
  %r390.p = getelementptr inbounds i8, ptr %c, i64 64
  %r390 = load i64, ptr %r390.p, align 8, !alias.scope !3, !noalias !4
  %t391 = add i64 %r390, 2282
  %wp392 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t391, ptr %wp392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bdd4 word 0xb904829f
  %r393.p = getelementptr inbounds i8, ptr %c, i64 160
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = add i64 %r393, 1152
  %gmp395 = inttoptr i64 %t394 to ptr
  store i32 0, ptr %gmp395, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdd8 word 0x910003e2
  %r396.p = getelementptr inbounds i8, ptr %c, i64 256
  %r396 = load i64, ptr %r396.p, align 8, !alias.scope !3, !noalias !4
  %t397 = add i64 %r396, 0
  %wp398 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t397, ptr %wp398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bddc word 0xaa1303e0
  %r399.p = getelementptr inbounds i8, ptr %c, i64 152
  %r399 = load i64, ptr %r399.p, align 8, !alias.scope !3, !noalias !4
  %t400 = or i64 0, %r399
  %wp401 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t400, ptr %wp401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bde0 word 0xf902469f
  %r402.p = getelementptr inbounds i8, ptr %c, i64 160
  %r402 = load i64, ptr %r402.p, align 8, !alias.scope !3, !noalias !4
  %t403 = add i64 %r402, 1160
  %gmp404 = inttoptr i64 %t403 to ptr
  store i64 0, ptr %gmp404, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bde4 word 0xaa1503e1
  %r405.p = getelementptr inbounds i8, ptr %c, i64 168
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %t406 = or i64 0, %r405
  %wp407 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t406, ptr %wp407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bde8 word 0xb904929f
  %r408.p = getelementptr inbounds i8, ptr %c, i64 160
  %r408 = load i64, ptr %r408.p, align 8, !alias.scope !3, !noalias !4
  %t409 = add i64 %r408, 1168
  %gmp410 = inttoptr i64 %t409 to ptr
  store i32 0, ptr %gmp410, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdec word 0xf9024e9f
  %r411.p = getelementptr inbounds i8, ptr %c, i64 160
  %r411 = load i64, ptr %r411.p, align 8, !alias.scope !3, !noalias !4
  %t412 = add i64 %r411, 1176
  %gmp413 = inttoptr i64 %t412 to ptr
  store i64 0, ptr %gmp413, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdf0 word 0xb904a29f
  %r414.p = getelementptr inbounds i8, ptr %c, i64 160
  %r414 = load i64, ptr %r414.p, align 8, !alias.scope !3, !noalias !4
  %t415 = add i64 %r414, 1184
  %gmp416 = inttoptr i64 %t415 to ptr
  store i32 0, ptr %gmp416, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdf4 word 0xf902569f
  %r417.p = getelementptr inbounds i8, ptr %c, i64 160
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %t418 = add i64 %r417, 1192
  %gmp419 = inttoptr i64 %t418 to ptr
  store i64 0, ptr %gmp419, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdf8 word 0xf90003e8
  %r420.p = getelementptr inbounds i8, ptr %c, i64 256
  %r420 = load i64, ptr %r420.p, align 8, !alias.scope !3, !noalias !4
  %r421.p = getelementptr inbounds i8, ptr %c, i64 64
  %r421 = load i64, ptr %r421.p, align 8, !alias.scope !3, !noalias !4
  %gmp422 = inttoptr i64 %r420 to ptr
  store i64 %r421, ptr %gmp422, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bdfc word 0x940017d9
  %wp423 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367585792, ptr %wp423, align 8, !alias.scope !3, !noalias !4
  call void @f_800781d60(ptr %c)
  ; @pc 0x80077be00 word 0xa9484ff4
  %r424.p = getelementptr inbounds i8, ptr %c, i64 256
  %r424 = load i64, ptr %r424.p, align 8, !alias.scope !3, !noalias !4
  %t425 = add i64 %r424, 128
  %t426 = add i64 %t425, 8
  %gmp427 = inttoptr i64 %t425 to ptr
  %gml428 = load i64, ptr %gmp427, align 1, !alias.scope !4, !noalias !3
  %gmp429 = inttoptr i64 %t426 to ptr
  %gml430 = load i64, ptr %gmp429, align 1, !alias.scope !4, !noalias !3
  %wp431 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml428, ptr %wp431, align 8, !alias.scope !3, !noalias !4
  %wp432 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml430, ptr %wp432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be04 word 0xf94033f7
  %r433.p = getelementptr inbounds i8, ptr %c, i64 256
  %r433 = load i64, ptr %r433.p, align 8, !alias.scope !3, !noalias !4
  %t434 = add i64 %r433, 96
  %gmp435 = inttoptr i64 %t434 to ptr
  %gml436 = load i64, ptr %gmp435, align 1, !alias.scope !4, !noalias !3
  %wp437 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be08 word 0xa94757f6
  %r438.p = getelementptr inbounds i8, ptr %c, i64 256
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %t439 = add i64 %r438, 112
  %t440 = add i64 %t439, 8
  %gmp441 = inttoptr i64 %t439 to ptr
  %gml442 = load i64, ptr %gmp441, align 1, !alias.scope !4, !noalias !3
  %gmp443 = inttoptr i64 %t440 to ptr
  %gml444 = load i64, ptr %gmp443, align 1, !alias.scope !4, !noalias !3
  %wp445 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml442, ptr %wp445, align 8, !alias.scope !3, !noalias !4
  %wp446 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml444, ptr %wp446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be0c word 0xa9457bfd
  %r447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = add i64 %r447, 80
  %t449 = add i64 %t448, 8
  %gmp450 = inttoptr i64 %t448 to ptr
  %gml451 = load i64, ptr %gmp450, align 1, !alias.scope !4, !noalias !3
  %gmp452 = inttoptr i64 %t449 to ptr
  %gml453 = load i64, ptr %gmp452, align 1, !alias.scope !4, !noalias !3
  %wp454 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml451, ptr %wp454, align 8, !alias.scope !3, !noalias !4
  %wp455 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml453, ptr %wp455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be10 word 0x910243ff
  %r456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r456 = load i64, ptr %r456.p, align 8, !alias.scope !3, !noalias !4
  %t457 = add i64 %r456, 144
  %wp458 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t457, ptr %wp458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be14 word 0xd65f03c0
  ret void
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367585280, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077bc00
}

define dso_local void @f_80077be18(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80077be18:
  ; @pc 0x80077be18 word 0xa9ba7bfd
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, -96
  %t7 = add i64 %t6, 8
  %r8.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %gmp9 = inttoptr i64 %t6 to ptr
  store i64 %r8, ptr %gmp9, align 1, !alias.scope !4, !noalias !3
  %r10.p = getelementptr inbounds i8, ptr %c, i64 240
  %r10 = load i64, ptr %r10.p, align 8, !alias.scope !3, !noalias !4
  %gmp11 = inttoptr i64 %t7 to ptr
  store i64 %r10, ptr %gmp11, align 1, !alias.scope !4, !noalias !3
  %wp12 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp12, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be1c word 0xa9016ffc
  %r13.p = getelementptr inbounds i8, ptr %c, i64 256
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %t14 = add i64 %r13, 16
  %t15 = add i64 %t14, 8
  %r16.p = getelementptr inbounds i8, ptr %c, i64 224
  %r16 = load i64, ptr %r16.p, align 8, !alias.scope !3, !noalias !4
  %gmp17 = inttoptr i64 %t14 to ptr
  store i64 %r16, ptr %gmp17, align 1, !alias.scope !4, !noalias !3
  %r18.p = getelementptr inbounds i8, ptr %c, i64 216
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t15 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be20 word 0x910003fd
  %r20.p = getelementptr inbounds i8, ptr %c, i64 256
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %t21 = add i64 %r20, 0
  %wp22 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t21, ptr %wp22, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be24 word 0xa90267fa
  %r23.p = getelementptr inbounds i8, ptr %c, i64 256
  %r23 = load i64, ptr %r23.p, align 8, !alias.scope !3, !noalias !4
  %t24 = add i64 %r23, 32
  %t25 = add i64 %t24, 8
  %r26.p = getelementptr inbounds i8, ptr %c, i64 208
  %r26 = load i64, ptr %r26.p, align 8, !alias.scope !3, !noalias !4
  %gmp27 = inttoptr i64 %t24 to ptr
  store i64 %r26, ptr %gmp27, align 1, !alias.scope !4, !noalias !3
  %r28.p = getelementptr inbounds i8, ptr %c, i64 200
  %r28 = load i64, ptr %r28.p, align 8, !alias.scope !3, !noalias !4
  %gmp29 = inttoptr i64 %t25 to ptr
  store i64 %r28, ptr %gmp29, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be28 word 0xa9035ff8
  %r30.p = getelementptr inbounds i8, ptr %c, i64 256
  %r30 = load i64, ptr %r30.p, align 8, !alias.scope !3, !noalias !4
  %t31 = add i64 %r30, 48
  %t32 = add i64 %t31, 8
  %r33.p = getelementptr inbounds i8, ptr %c, i64 192
  %r33 = load i64, ptr %r33.p, align 8, !alias.scope !3, !noalias !4
  %gmp34 = inttoptr i64 %t31 to ptr
  store i64 %r33, ptr %gmp34, align 1, !alias.scope !4, !noalias !3
  %r35.p = getelementptr inbounds i8, ptr %c, i64 184
  %r35 = load i64, ptr %r35.p, align 8, !alias.scope !3, !noalias !4
  %gmp36 = inttoptr i64 %t32 to ptr
  store i64 %r35, ptr %gmp36, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be2c word 0xa90457f6
  %r37.p = getelementptr inbounds i8, ptr %c, i64 256
  %r37 = load i64, ptr %r37.p, align 8, !alias.scope !3, !noalias !4
  %t38 = add i64 %r37, 64
  %t39 = add i64 %t38, 8
  %r40.p = getelementptr inbounds i8, ptr %c, i64 176
  %r40 = load i64, ptr %r40.p, align 8, !alias.scope !3, !noalias !4
  %gmp41 = inttoptr i64 %t38 to ptr
  store i64 %r40, ptr %gmp41, align 1, !alias.scope !4, !noalias !3
  %r42.p = getelementptr inbounds i8, ptr %c, i64 168
  %r42 = load i64, ptr %r42.p, align 8, !alias.scope !3, !noalias !4
  %gmp43 = inttoptr i64 %t39 to ptr
  store i64 %r42, ptr %gmp43, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be30 word 0xa9054ff4
  %r44.p = getelementptr inbounds i8, ptr %c, i64 256
  %r44 = load i64, ptr %r44.p, align 8, !alias.scope !3, !noalias !4
  %t45 = add i64 %r44, 80
  %t46 = add i64 %t45, 8
  %r47.p = getelementptr inbounds i8, ptr %c, i64 160
  %r47 = load i64, ptr %r47.p, align 8, !alias.scope !3, !noalias !4
  %gmp48 = inttoptr i64 %t45 to ptr
  store i64 %r47, ptr %gmp48, align 1, !alias.scope !4, !noalias !3
  %r49.p = getelementptr inbounds i8, ptr %c, i64 152
  %r49 = load i64, ptr %r49.p, align 8, !alias.scope !3, !noalias !4
  %gmp50 = inttoptr i64 %t46 to ptr
  store i64 %r49, ptr %gmp50, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be34 word 0xd10903ff
  %r51.p = getelementptr inbounds i8, ptr %c, i64 256
  %r51 = load i64, ptr %r51.p, align 8, !alias.scope !3, !noalias !4
  %t52 = sub i64 %r51, 576
  %wp53 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t52, ptr %wp53, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be38 word 0xb940681c
  %r54.p = getelementptr inbounds i8, ptr %c, i64 0
  %r54 = load i64, ptr %r54.p, align 8, !alias.scope !3, !noalias !4
  %t55 = add i64 %r54, 104
  %gmp56 = inttoptr i64 %t55 to ptr
  %gml57 = load i32, ptr %gmp56, align 1, !alias.scope !4, !noalias !3
  %c58 = zext i32 %gml57 to i64
  %wp59 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c58, ptr %wp59, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be3c word 0xa90087e2
  %r60.p = getelementptr inbounds i8, ptr %c, i64 256
  %r60 = load i64, ptr %r60.p, align 8, !alias.scope !3, !noalias !4
  %t61 = add i64 %r60, 8
  %t62 = add i64 %t61, 8
  %r63.p = getelementptr inbounds i8, ptr %c, i64 16
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %gmp64 = inttoptr i64 %t61 to ptr
  store i64 %r63, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %r65.p = getelementptr inbounds i8, ptr %c, i64 8
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %gmp66 = inttoptr i64 %t62 to ptr
  store i64 %r65, ptr %gmp66, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be40 word 0x7100079f
  %r67.p = getelementptr inbounds i8, ptr %c, i64 224
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %c68 = trunc i64 %r67 to i32
  %t69 = sub i32 %c68, 1
  %fn70 = icmp slt i32 %t69, 0
  %fz71 = icmp eq i32 %t69, 0
  %fc72 = icmp uge i32 %c68, 1
  %fx173 = xor i32 %c68, 1
  %fx274 = xor i32 %c68, %t69
  %fva75 = and i32 %fx173, %fx274
  %fv76 = icmp slt i32 %fva75, 0
  %nz77 = zext i1 %fn70 to i64
  %zz78 = zext i1 %fz71 to i64
  %cz79 = zext i1 %fc72 to i64
  %vz80 = zext i1 %fv76 to i64
  %ns81 = shl i64 %nz77, 31
  %zs82 = shl i64 %zz78, 30
  %cs83 = shl i64 %cz79, 29
  %vs84 = shl i64 %vz80, 28
  %nzor85 = or i64 %ns81, %zs82
  %cvor86 = or i64 %cs83, %vs84
  %nzcv87 = or i64 %nzor85, %cvor86
  %wp88 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv87, ptr %wp88, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be44 word 0x5400116b
  %r89.p = getelementptr inbounds i8, ptr %c, i64 272
  %r89 = load i64, ptr %r89.p, align 8, !alias.scope !3, !noalias !4
  %fsh91 = lshr i64 %r89, 31
  %ftr92 = trunc i64 %fsh91 to i1
  %fsh93 = lshr i64 %r89, 28
  %ftr94 = trunc i64 %fsh93 to i1
  %cond90 = icmp ne i1 %ftr92, %ftr94
  br i1 %cond90, label %L_80077c070, label %L_80077be48_ft
L_80077be78:
  ; @pc 0x80077be78 word 0xf94003e8
  %r132.p = getelementptr inbounds i8, ptr %c, i64 256
  %r132 = load i64, ptr %r132.p, align 8, !alias.scope !3, !noalias !4
  %gmp133 = inttoptr i64 %r132 to ptr
  %gml134 = load i64, ptr %gmp133, align 1, !alias.scope !4, !noalias !3
  %wp135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml134, ptr %wp135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be7c word 0x52800709
  %c136 = zext i32 56 to i64
  %wp137 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c136, ptr %wp137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be80 word 0x9b2922c8
  %r138.p = getelementptr inbounds i8, ptr %c, i64 176
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %c139 = trunc i64 %r138 to i32
  %c140 = sext i32 %c139 to i64
  %r141.p = getelementptr inbounds i8, ptr %c, i64 72
  %r141 = load i64, ptr %r141.p, align 8, !alias.scope !3, !noalias !4
  %c142 = trunc i64 %r141 to i32
  %c143 = sext i32 %c142 to i64
  %t144 = mul i64 %c140, %c143
  %r145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %t146 = add i64 %r145, %t144
  %wp147 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t146, ptr %wp147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be84 word 0x3940c109
  %r148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = add i64 %r148, 48
  %gmp150 = inttoptr i64 %t149 to ptr
  %gml151 = load i8, ptr %gmp150, align 1, !alias.scope !4, !noalias !3
  %c152 = zext i8 %gml151 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be88 word 0x36080b89
  %r154.p = getelementptr inbounds i8, ptr %c, i64 72
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %t155 = and i64 %r154, 2
  %cmp156 = icmp eq i64 %t155, 0
  br i1 %cmp156, label %L_80077bff8, label %L_80077be8c_ft
L_80077beb8:
  ; @pc 0x80077beb8 word 0xd50339bf
  fence seq_cst
  ; @pc 0x80077bebc word 0xf9400509
  %r232.p = getelementptr inbounds i8, ptr %c, i64 64
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = add i64 %r232, 8
  %gmp234 = inttoptr i64 %t233 to ptr
  %gml235 = load i64, ptr %gmp234, align 1, !alias.scope !4, !noalias !3
  %wp236 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bec0 word 0xb40001a9
  %r237.p = getelementptr inbounds i8, ptr %c, i64 72
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %cmp238 = icmp eq i64 %r237, 0
  br i1 %cmp238, label %L_80077bef4, label %L_80077bec4_ft
L_80077bee0:
  ; @pc 0x80077bee0 word 0x7100055f
  %r303.p = getelementptr inbounds i8, ptr %c, i64 80
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %c304 = trunc i64 %r303 to i32
  %t305 = sub i32 %c304, 1
  %fn306 = icmp slt i32 %t305, 0
  %fz307 = icmp eq i32 %t305, 0
  %fc308 = icmp uge i32 %c304, 1
  %fx1309 = xor i32 %c304, 1
  %fx2310 = xor i32 %c304, %t305
  %fva311 = and i32 %fx1309, %fx2310
  %fv312 = icmp slt i32 %fva311, 0
  %nz313 = zext i1 %fn306 to i64
  %zz314 = zext i1 %fz307 to i64
  %cz315 = zext i1 %fc308 to i64
  %vz316 = zext i1 %fv312 to i64
  %ns317 = shl i64 %nz313, 31
  %zs318 = shl i64 %zz314, 30
  %cs319 = shl i64 %cz315, 29
  %vs320 = shl i64 %vz316, 28
  %nzor321 = or i64 %ns317, %zs318
  %cvor322 = or i64 %cs319, %vs320
  %nzcv323 = or i64 %nzor321, %cvor322
  %wp324 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv323, ptr %wp324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bee4 word 0x54000080
  %r325.p = getelementptr inbounds i8, ptr %c, i64 272
  %r325 = load i64, ptr %r325.p, align 8, !alias.scope !3, !noalias !4
  %fsh327 = lshr i64 %r325, 30
  %cond326 = trunc i64 %fsh327 to i1
  br i1 %cond326, label %L_80077bef4, label %L_80077bee8_ft
L_80077bef4:
  ; @pc 0x80077bef4 word 0x39400109
  %r359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %gmp360 = inttoptr i64 %r359 to ptr
  %gml361 = load i8, ptr %gmp360, align 1, !alias.scope !4, !noalias !3
  %c362 = zext i8 %gml361 to i64
  %wp363 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c362, ptr %wp363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bef8 word 0x36180cc9
  %r364.p = getelementptr inbounds i8, ptr %c, i64 72
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %t365 = and i64 %r364, 8
  %cmp366 = icmp eq i64 %t365, 0
  br i1 %cmp366, label %L_80077c090, label %L_80077befc_ft
L_80077bf2c:
  ; @pc 0x80077bf2c word 0xaa0903e0
  %r449.p = getelementptr inbounds i8, ptr %c, i64 72
  %r449 = load i64, ptr %r449.p, align 8, !alias.scope !3, !noalias !4
  %t450 = or i64 0, %r449
  %wp451 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t450, ptr %wp451, align 8, !alias.scope !3, !noalias !4
  br label %L_80077bf30
L_80077bf30:
  ; @pc 0x80077bf30 word 0xb0018e88
  %wp452 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf34 word 0xf946a108
  %r453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %t454 = add i64 %r453, 3392
  %gmp455 = inttoptr i64 %t454 to ptr
  %gml456 = load i64, ptr %gmp455, align 1, !alias.scope !4, !noalias !3
  %wp457 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml456, ptr %wp457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf38 word 0x08dffd08
  %r458.p = getelementptr inbounds i8, ptr %c, i64 64
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %atp459 = inttoptr i64 %r458 to ptr
  %lda460 = load atomic i8, ptr %atp459 acquire, align 1, !alias.scope !4, !noalias !3
  %c461 = zext i8 %lda460 to i64
  %wp462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c461, ptr %wp462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf3c word 0x36000ae8
  %r463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r463 = load i64, ptr %r463.p, align 8, !alias.scope !3, !noalias !4
  %t464 = and i64 %r463, 1
  %cmp465 = icmp eq i64 %t464, 0
  br i1 %cmp465, label %L_80077c098, label %L_80077bf40
L_80077bf40:
  ; @pc 0x80077bf40 word 0xb40005c0
  %r466.p = getelementptr inbounds i8, ptr %c, i64 0
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %cmp467 = icmp eq i64 %r466, 0
  br i1 %cmp467, label %L_80077bff8, label %L_80077bf44_ft
L_80077bfd0:
  ; @pc 0x80077bfd0 word 0x910063e1
  %r606.p = getelementptr inbounds i8, ptr %c, i64 256
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %t607 = add i64 %r606, 24
  %wp608 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfd4 word 0xaa1903e0
  %r609.p = getelementptr inbounds i8, ptr %c, i64 200
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = or i64 0, %r609
  %wp611 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t610, ptr %wp611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfd8 word 0xf9001be8
  %r612.p = getelementptr inbounds i8, ptr %c, i64 256
  %r612 = load i64, ptr %r612.p, align 8, !alias.scope !3, !noalias !4
  %t613 = add i64 %r612, 48
  %r614.p = getelementptr inbounds i8, ptr %c, i64 64
  %r614 = load i64, ptr %r614.p, align 8, !alias.scope !3, !noalias !4
  %gmp615 = inttoptr i64 %t613 to ptr
  store i64 %r614, ptr %gmp615, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bfdc word 0x94000069
  %wp616 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586272, ptr %wp616, align 8, !alias.scope !3, !noalias !4
  call void @f_80077c180(ptr %c)
  ; @pc 0x80077bfe0 word 0x2a1b03e8
  %r617.p = getelementptr inbounds i8, ptr %c, i64 216
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %c618 = trunc i64 %r617 to i32
  %t619 = or i32 0, %c618
  %c620 = zext i32 %t619 to i64
  %wp621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c620, ptr %wp621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfe4 word 0x7101037f
  %r622.p = getelementptr inbounds i8, ptr %c, i64 216
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %c623 = trunc i64 %r622 to i32
  %t624 = sub i32 %c623, 64
  %fn625 = icmp slt i32 %t624, 0
  %fz626 = icmp eq i32 %t624, 0
  %fc627 = icmp uge i32 %c623, 64
  %fx1628 = xor i32 %c623, 64
  %fx2629 = xor i32 %c623, %t624
  %fva630 = and i32 %fx1628, %fx2629
  %fv631 = icmp slt i32 %fva630, 0
  %nz632 = zext i1 %fn625 to i64
  %zz633 = zext i1 %fz626 to i64
  %cz634 = zext i1 %fc627 to i64
  %vz635 = zext i1 %fv631 to i64
  %ns636 = shl i64 %nz632, 31
  %zs637 = shl i64 %zz633, 30
  %cs638 = shl i64 %cz634, 29
  %vs639 = shl i64 %vz635, 28
  %nzor640 = or i64 %ns636, %zs637
  %cvor641 = or i64 %cs638, %vs639
  %nzcv642 = or i64 %nzor640, %cvor641
  %wp643 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv642, ptr %wp643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfe8 word 0x9100e3e9
  %r644.p = getelementptr inbounds i8, ptr %c, i64 256
  %r644 = load i64, ptr %r644.p, align 8, !alias.scope !3, !noalias !4
  %t645 = add i64 %r644, 56
  %wp646 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfec word 0x9a9f3108
  %r647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %r648.p = getelementptr inbounds i8, ptr %c, i64 272
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %fsh650 = lshr i64 %r648, 29
  %ftr651 = trunc i64 %fsh650 to i1
  %cond649 = xor i1 %ftr651, true
  %sel652 = select i1 %cond649, i64 %r647, i64 0
  %wp653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bff0 word 0x1100077b
  %r654.p = getelementptr inbounds i8, ptr %c, i64 216
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %c655 = trunc i64 %r654 to i32
  %t656 = add i32 %c655, 1
  %c657 = zext i32 %t656 to i64
  %wp658 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c657, ptr %wp658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bff4 word 0xf8287939
  %r659.p = getelementptr inbounds i8, ptr %c, i64 72
  %r659 = load i64, ptr %r659.p, align 8, !alias.scope !3, !noalias !4
  %r660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r660 = load i64, ptr %r660.p, align 8, !alias.scope !3, !noalias !4
  %t661 = shl i64 %r660, 3
  %t662 = add i64 %r659, %t661
  %r663.p = getelementptr inbounds i8, ptr %c, i64 200
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %gmp664 = inttoptr i64 %t662 to ptr
  store i64 %r663, ptr %gmp664, align 1, !alias.scope !4, !noalias !3
  br label %L_80077bff8
L_80077bff8:
  ; @pc 0x80077bff8 word 0x910006c8
  %r665.p = getelementptr inbounds i8, ptr %c, i64 176
  %r665 = load i64, ptr %r665.p, align 8, !alias.scope !3, !noalias !4
  %t666 = add i64 %r665, 1
  %wp667 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t666, ptr %wp667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bffc word 0x92407d16
  %r668.p = getelementptr inbounds i8, ptr %c, i64 64
  %r668 = load i64, ptr %r668.p, align 8, !alias.scope !3, !noalias !4
  %t669 = and i64 %r668, 4294967295
  %wp670 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t669, ptr %wp670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c000 word 0x6b08039f
  %r671.p = getelementptr inbounds i8, ptr %c, i64 224
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %c672 = trunc i64 %r671 to i32
  %r673.p = getelementptr inbounds i8, ptr %c, i64 64
  %r673 = load i64, ptr %r673.p, align 8, !alias.scope !3, !noalias !4
  %c674 = trunc i64 %r673 to i32
  %t675 = sub i32 %c672, %c674
  %fn676 = icmp slt i32 %t675, 0
  %fz677 = icmp eq i32 %t675, 0
  %fc678 = icmp uge i32 %c672, %c674
  %fx1679 = xor i32 %c672, %c674
  %fx2680 = xor i32 %c672, %t675
  %fva681 = and i32 %fx1679, %fx2680
  %fv682 = icmp slt i32 %fva681, 0
  %nz683 = zext i1 %fn676 to i64
  %zz684 = zext i1 %fz677 to i64
  %cz685 = zext i1 %fc678 to i64
  %vz686 = zext i1 %fv682 to i64
  %ns687 = shl i64 %nz683, 31
  %zs688 = shl i64 %zz684, 30
  %cs689 = shl i64 %cz685, 29
  %vs690 = shl i64 %vz686, 28
  %nzor691 = or i64 %ns687, %zs688
  %cvor692 = or i64 %cs689, %vs690
  %nzcv693 = or i64 %nzor691, %cvor692
  %wp694 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv693, ptr %wp694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c004 word 0x54fff3a1
  %r695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %fsh697 = lshr i64 %r695, 30
  %ftr698 = trunc i64 %fsh697 to i1
  %cond696 = xor i1 %ftr698, true
  br i1 %cond696, label %L_80077be78, label %L_80077c008_ft
L_80077c034:
  ; @pc 0x80077c034 word 0xaa1f03e8
  %t758 = or i64 0, 0
  %wp759 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t758, ptr %wp759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c038 word 0x9100e3e9
  %r760.p = getelementptr inbounds i8, ptr %c, i64 256
  %r760 = load i64, ptr %r760.p, align 8, !alias.scope !3, !noalias !4
  %t761 = add i64 %r760, 56
  %wp762 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t761, ptr %wp762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c03c word 0x9100e3ea
  %r763.p = getelementptr inbounds i8, ptr %c, i64 256
  %r763 = load i64, ptr %r763.p, align 8, !alias.scope !3, !noalias !4
  %t764 = add i64 %r763, 56
  %wp765 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t764, ptr %wp765, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c040
L_80077c040:
  ; @pc 0x80077c040 word 0xb9405a6c
  %r766.p = getelementptr inbounds i8, ptr %c, i64 152
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %t767 = add i64 %r766, 88
  %gmp768 = inttoptr i64 %t767 to ptr
  %gml769 = load i32, ptr %gmp768, align 1, !alias.scope !4, !noalias !3
  %c770 = zext i32 %gml769 to i64
  %wp771 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c770, ptr %wp771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c044 word 0xf101011f
  %r772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r772 = load i64, ptr %r772.p, align 8, !alias.scope !3, !noalias !4
  %t773 = sub i64 %r772, 64
  %fn774 = icmp slt i64 %t773, 0
  %fz775 = icmp eq i64 %t773, 0
  %fc776 = icmp uge i64 %r772, 64
  %fx1777 = xor i64 %r772, 64
  %fx2778 = xor i64 %r772, %t773
  %fva779 = and i64 %fx1777, %fx2778
  %fv780 = icmp slt i64 %fva779, 0
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
  ; @pc 0x80077c048 word 0x9a89314b
  %r793.p = getelementptr inbounds i8, ptr %c, i64 80
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %r794.p = getelementptr inbounds i8, ptr %c, i64 72
  %r794 = load i64, ptr %r794.p, align 8, !alias.scope !3, !noalias !4
  %r795.p = getelementptr inbounds i8, ptr %c, i64 272
  %r795 = load i64, ptr %r795.p, align 8, !alias.scope !3, !noalias !4
  %fsh797 = lshr i64 %r795, 29
  %ftr798 = trunc i64 %fsh797 to i1
  %cond796 = xor i1 %ftr798, true
  %sel799 = select i1 %cond796, i64 %r793, i64 %r794
  %wp800 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel799, ptr %wp800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c04c word 0xf940326d
  %r801.p = getelementptr inbounds i8, ptr %c, i64 152
  %r801 = load i64, ptr %r801.p, align 8, !alias.scope !3, !noalias !4
  %t802 = add i64 %r801, 96
  %gmp803 = inttoptr i64 %t802 to ptr
  %gml804 = load i64, ptr %gmp803, align 1, !alias.scope !4, !noalias !3
  %wp805 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml804, ptr %wp805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c050 word 0x9100214a
  %r806.p = getelementptr inbounds i8, ptr %c, i64 80
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %t807 = add i64 %r806, 8
  %wp808 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t807, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c054 word 0xeb0c011f
  %r809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r809 = load i64, ptr %r809.p, align 8, !alias.scope !3, !noalias !4
  %r810.p = getelementptr inbounds i8, ptr %c, i64 96
  %r810 = load i64, ptr %r810.p, align 8, !alias.scope !3, !noalias !4
  %t811 = sub i64 %r809, %r810
  %fn812 = icmp slt i64 %t811, 0
  %fz813 = icmp eq i64 %t811, 0
  %fc814 = icmp uge i64 %r809, %r810
  %fx1815 = xor i64 %r809, %r810
  %fx2816 = xor i64 %r809, %t811
  %fva817 = and i64 %fx1815, %fx2816
  %fv818 = icmp slt i64 %fva817, 0
  %nz819 = zext i1 %fn812 to i64
  %zz820 = zext i1 %fz813 to i64
  %cz821 = zext i1 %fc814 to i64
  %vz822 = zext i1 %fv818 to i64
  %ns823 = shl i64 %nz819, 31
  %zs824 = shl i64 %zz820, 30
  %cs825 = shl i64 %cz821, 29
  %vs826 = shl i64 %vz822, 28
  %nzor827 = or i64 %ns823, %zs824
  %cvor828 = or i64 %cs825, %vs826
  %nzcv829 = or i64 %nzor827, %cvor828
  %wp830 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv829, ptr %wp830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c058 word 0xf940016b
  %r831.p = getelementptr inbounds i8, ptr %c, i64 88
  %r831 = load i64, ptr %r831.p, align 8, !alias.scope !3, !noalias !4
  %gmp832 = inttoptr i64 %r831 to ptr
  %gml833 = load i64, ptr %gmp832, align 1, !alias.scope !4, !noalias !3
  %wp834 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml833, ptr %wp834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c05c word 0x9a9f310c
  %r835.p = getelementptr inbounds i8, ptr %c, i64 64
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %r836.p = getelementptr inbounds i8, ptr %c, i64 272
  %r836 = load i64, ptr %r836.p, align 8, !alias.scope !3, !noalias !4
  %fsh838 = lshr i64 %r836, 29
  %ftr839 = trunc i64 %fsh838 to i1
  %cond837 = xor i1 %ftr839, true
  %sel840 = select i1 %cond837, i64 %r835, i64 0
  %wp841 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel840, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c060 word 0x91000508
  %r842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %t843 = add i64 %r842, 1
  %wp844 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t843, ptr %wp844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c064 word 0xeb08029f
  %r845.p = getelementptr inbounds i8, ptr %c, i64 160
  %r845 = load i64, ptr %r845.p, align 8, !alias.scope !3, !noalias !4
  %r846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %t847 = sub i64 %r845, %r846
  %fn848 = icmp slt i64 %t847, 0
  %fz849 = icmp eq i64 %t847, 0
  %fc850 = icmp uge i64 %r845, %r846
  %fx1851 = xor i64 %r845, %r846
  %fx2852 = xor i64 %r845, %t847
  %fva853 = and i64 %fx1851, %fx2852
  %fv854 = icmp slt i64 %fva853, 0
  %nz855 = zext i1 %fn848 to i64
  %zz856 = zext i1 %fz849 to i64
  %cz857 = zext i1 %fc850 to i64
  %vz858 = zext i1 %fv854 to i64
  %ns859 = shl i64 %nz855, 31
  %zs860 = shl i64 %zz856, 30
  %cs861 = shl i64 %cz857, 29
  %vs862 = shl i64 %vz858, 28
  %nzor863 = or i64 %ns859, %zs860
  %cvor864 = or i64 %cs861, %vs862
  %nzcv865 = or i64 %nzor863, %cvor864
  %wp866 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv865, ptr %wp866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c068 word 0xf82c79ab
  %r867.p = getelementptr inbounds i8, ptr %c, i64 104
  %r867 = load i64, ptr %r867.p, align 8, !alias.scope !3, !noalias !4
  %r868.p = getelementptr inbounds i8, ptr %c, i64 96
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %t869 = shl i64 %r868, 3
  %t870 = add i64 %r867, %t869
  %r871.p = getelementptr inbounds i8, ptr %c, i64 88
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %gmp872 = inttoptr i64 %t870 to ptr
  store i64 %r871, ptr %gmp872, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c06c word 0x54fffea1
  %r873.p = getelementptr inbounds i8, ptr %c, i64 272
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %fsh875 = lshr i64 %r873, 30
  %ftr876 = trunc i64 %fsh875 to i1
  %cond874 = xor i1 %ftr876, true
  br i1 %cond874, label %L_80077c040, label %L_80077c070
L_80077c070:
  ; @pc 0x80077c070 word 0x910903ff
  %r877.p = getelementptr inbounds i8, ptr %c, i64 256
  %r877 = load i64, ptr %r877.p, align 8, !alias.scope !3, !noalias !4
  %t878 = add i64 %r877, 576
  %wp879 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c074 word 0xa9454ff4
  %r880.p = getelementptr inbounds i8, ptr %c, i64 256
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %t881 = add i64 %r880, 80
  %t882 = add i64 %t881, 8
  %gmp883 = inttoptr i64 %t881 to ptr
  %gml884 = load i64, ptr %gmp883, align 1, !alias.scope !4, !noalias !3
  %gmp885 = inttoptr i64 %t882 to ptr
  %gml886 = load i64, ptr %gmp885, align 1, !alias.scope !4, !noalias !3
  %wp887 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml884, ptr %wp887, align 8, !alias.scope !3, !noalias !4
  %wp888 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml886, ptr %wp888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c078 word 0xa94457f6
  %r889.p = getelementptr inbounds i8, ptr %c, i64 256
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %t890 = add i64 %r889, 64
  %t891 = add i64 %t890, 8
  %gmp892 = inttoptr i64 %t890 to ptr
  %gml893 = load i64, ptr %gmp892, align 1, !alias.scope !4, !noalias !3
  %gmp894 = inttoptr i64 %t891 to ptr
  %gml895 = load i64, ptr %gmp894, align 1, !alias.scope !4, !noalias !3
  %wp896 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml893, ptr %wp896, align 8, !alias.scope !3, !noalias !4
  %wp897 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml895, ptr %wp897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c07c word 0xa9435ff8
  %r898.p = getelementptr inbounds i8, ptr %c, i64 256
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %t899 = add i64 %r898, 48
  %t900 = add i64 %t899, 8
  %gmp901 = inttoptr i64 %t899 to ptr
  %gml902 = load i64, ptr %gmp901, align 1, !alias.scope !4, !noalias !3
  %gmp903 = inttoptr i64 %t900 to ptr
  %gml904 = load i64, ptr %gmp903, align 1, !alias.scope !4, !noalias !3
  %wp905 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml902, ptr %wp905, align 8, !alias.scope !3, !noalias !4
  %wp906 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml904, ptr %wp906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c080 word 0xa94267fa
  %r907.p = getelementptr inbounds i8, ptr %c, i64 256
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = add i64 %r907, 32
  %t909 = add i64 %t908, 8
  %gmp910 = inttoptr i64 %t908 to ptr
  %gml911 = load i64, ptr %gmp910, align 1, !alias.scope !4, !noalias !3
  %gmp912 = inttoptr i64 %t909 to ptr
  %gml913 = load i64, ptr %gmp912, align 1, !alias.scope !4, !noalias !3
  %wp914 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml911, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  %wp915 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml913, ptr %wp915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c084 word 0xa9416ffc
  %r916.p = getelementptr inbounds i8, ptr %c, i64 256
  %r916 = load i64, ptr %r916.p, align 8, !alias.scope !3, !noalias !4
  %t917 = add i64 %r916, 16
  %t918 = add i64 %t917, 8
  %gmp919 = inttoptr i64 %t917 to ptr
  %gml920 = load i64, ptr %gmp919, align 1, !alias.scope !4, !noalias !3
  %gmp921 = inttoptr i64 %t918 to ptr
  %gml922 = load i64, ptr %gmp921, align 1, !alias.scope !4, !noalias !3
  %wp923 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml920, ptr %wp923, align 8, !alias.scope !3, !noalias !4
  %wp924 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml922, ptr %wp924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c088 word 0xa8c67bfd
  %r925.p = getelementptr inbounds i8, ptr %c, i64 256
  %r925 = load i64, ptr %r925.p, align 8, !alias.scope !3, !noalias !4
  %t926 = add i64 %r925, 8
  %gmp927 = inttoptr i64 %r925 to ptr
  %gml928 = load i64, ptr %gmp927, align 1, !alias.scope !4, !noalias !3
  %gmp929 = inttoptr i64 %t926 to ptr
  %gml930 = load i64, ptr %gmp929, align 1, !alias.scope !4, !noalias !3
  %t931 = add i64 %r925, 96
  %wp932 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t931, ptr %wp932, align 8, !alias.scope !3, !noalias !4
  %wp933 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml928, ptr %wp933, align 8, !alias.scope !3, !noalias !4
  %wp934 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml930, ptr %wp934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c08c word 0xd65f03c0
  ret void
L_80077c090:
  ; @pc 0x80077c090 word 0xaa1f03e0
  %t935 = or i64 0, 0
  %wp936 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t935, ptr %wp936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c094 word 0x17ffffa7
  br label %L_80077bf30
L_80077c098:
  ; @pc 0x80077c098 word 0x90018e88
  %wp937 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c09c word 0xaa0003f9
  %r938.p = getelementptr inbounds i8, ptr %c, i64 0
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %t939 = or i64 0, %r938
  %wp940 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t939, ptr %wp940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0a0 word 0xf946a108
  %r941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %t942 = add i64 %r941, 3392
  %gmp943 = inttoptr i64 %t942 to ptr
  %gml944 = load i64, ptr %gmp943, align 1, !alias.scope !4, !noalias !3
  %wp945 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml944, ptr %wp945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0a4 word 0xaa0803e0
  %r946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %t947 = or i64 0, %r946
  %wp948 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t947, ptr %wp948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0a8 word 0x94909e3e
  %wp949 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586476, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80077c0ac word 0x2a0003e8
  %r950.p = getelementptr inbounds i8, ptr %c, i64 0
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %c951 = trunc i64 %r950 to i32
  %t952 = or i32 0, %c951
  %c953 = zext i32 %t952 to i64
  %wp954 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c953, ptr %wp954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0b0 word 0xaa1903e0
  %r955.p = getelementptr inbounds i8, ptr %c, i64 200
  %r955 = load i64, ptr %r955.p, align 8, !alias.scope !3, !noalias !4
  %t956 = or i64 0, %r955
  %wp957 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t956, ptr %wp957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0b4 word 0x34fff468
  %r958.p = getelementptr inbounds i8, ptr %c, i64 64
  %r958 = load i64, ptr %r958.p, align 8, !alias.scope !3, !noalias !4
  %c959 = trunc i64 %r958 to i32
  %cmp960 = icmp eq i32 %c959, 0
  br i1 %cmp960, label %L_80077bf40, label %L_80077c0b8_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367585816, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077be18
L_80077be48_ft:
  ; @pc 0x80077be48 word 0xf9403808
  %r95.p = getelementptr inbounds i8, ptr %c, i64 0
  %r95 = load i64, ptr %r95.p, align 8, !alias.scope !3, !noalias !4
  %t96 = add i64 %r95, 112
  %gmp97 = inttoptr i64 %t96 to ptr
  %gml98 = load i64, ptr %gmp97, align 1, !alias.scope !4, !noalias !3
  %wp99 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml98, ptr %wp99, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be4c word 0xb0018e89
  %wp100 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be50 word 0xaa0303f5
  %r101.p = getelementptr inbounds i8, ptr %c, i64 24
  %r101 = load i64, ptr %r101.p, align 8, !alias.scope !3, !noalias !4
  %t102 = or i64 0, %r101
  %wp103 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t102, ptr %wp103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be54 word 0xaa0003f3
  %r104.p = getelementptr inbounds i8, ptr %c, i64 0
  %r104 = load i64, ptr %r104.p, align 8, !alias.scope !3, !noalias !4
  %t105 = or i64 0, %r104
  %wp106 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t105, ptr %wp106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be58 word 0x2a1f03fb
  %t107 = or i32 0, 0
  %c108 = zext i32 %t107 to i64
  %wp109 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c108, ptr %wp109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be5c word 0xf90003e8
  %r110.p = getelementptr inbounds i8, ptr %c, i64 256
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %r111.p = getelementptr inbounds i8, ptr %c, i64 64
  %r111 = load i64, ptr %r111.p, align 8, !alias.scope !3, !noalias !4
  %gmp112 = inttoptr i64 %r110 to ptr
  store i64 %r111, ptr %gmp112, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077be60 word 0xf0018f08
  %wp113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419892224, ptr %wp113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be64 word 0xaa1f03f6
  %t114 = or i64 0, 0
  %wp115 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t114, ptr %wp115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be68 word 0xf9430508
  %r116.p = getelementptr inbounds i8, ptr %c, i64 64
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %t117 = add i64 %r116, 1544
  %gmp118 = inttoptr i64 %t117 to ptr
  %gml119 = load i64, ptr %gmp118, align 1, !alias.scope !4, !noalias !3
  %wp120 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml119, ptr %wp120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be6c word 0xf9475129
  %r121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r121 = load i64, ptr %r121.p, align 8, !alias.scope !3, !noalias !4
  %t122 = add i64 %r121, 3744
  %gmp123 = inttoptr i64 %t122 to ptr
  %gml124 = load i64, ptr %gmp123, align 1, !alias.scope !4, !noalias !3
  %wp125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be70 word 0x91004114
  %r126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = add i64 %r126, 16
  %wp128 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be74 word 0x91004137
  %r129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %t130 = add i64 %r129, 16
  %wp131 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t130, ptr %wp131, align 8, !alias.scope !3, !noalias !4
  br label %L_80077be78
L_80077be8c_ft:
  ; @pc 0x80077be8c word 0x7200013f
  %r157.p = getelementptr inbounds i8, ptr %c, i64 72
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %c158 = trunc i64 %r157 to i32
  %t159 = and i32 %c158, 1
  %fn160 = icmp slt i32 %t159, 0
  %fz161 = icmp eq i32 %t159, 0
  %nz162 = zext i1 %fn160 to i64
  %zz163 = zext i1 %fz161 to i64
  %ns164 = shl i64 %nz162, 31
  %zs165 = shl i64 %zz163, 30
  %nzcv166 = or i64 %ns164, %zs165
  %wp167 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv166, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be90 word 0xa940a7ea
  %r168.p = getelementptr inbounds i8, ptr %c, i64 256
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %t169 = add i64 %r168, 8
  %t170 = add i64 %t169, 8
  %gmp171 = inttoptr i64 %t169 to ptr
  %gml172 = load i64, ptr %gmp171, align 1, !alias.scope !4, !noalias !3
  %gmp173 = inttoptr i64 %t170 to ptr
  %gml174 = load i64, ptr %gmp173, align 1, !alias.scope !4, !noalias !3
  %wp175 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml172, ptr %wp175, align 8, !alias.scope !3, !noalias !4
  %wp176 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml174, ptr %wp176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be94 word 0x9a8a0138
  %r177.p = getelementptr inbounds i8, ptr %c, i64 72
  %r177 = load i64, ptr %r177.p, align 8, !alias.scope !3, !noalias !4
  %r178.p = getelementptr inbounds i8, ptr %c, i64 80
  %r178 = load i64, ptr %r178.p, align 8, !alias.scope !3, !noalias !4
  %r179.p = getelementptr inbounds i8, ptr %c, i64 272
  %r179 = load i64, ptr %r179.p, align 8, !alias.scope !3, !noalias !4
  %fsh181 = lshr i64 %r179, 30
  %cond180 = trunc i64 %fsh181 to i1
  %sel182 = select i1 %cond180, i64 %r177, i64 %r178
  %wp183 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %sel182, ptr %wp183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077be98 word 0xb4000b18
  %r184.p = getelementptr inbounds i8, ptr %c, i64 192
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %cmp185 = icmp eq i64 %r184, 0
  br i1 %cmp185, label %L_80077bff8, label %L_80077be9c_ft
L_80077be9c_ft:
  ; @pc 0x80077be9c word 0x39400109
  %r186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %gmp187 = inttoptr i64 %r186 to ptr
  %gml188 = load i8, ptr %gmp187, align 1, !alias.scope !4, !noalias !3
  %c189 = zext i8 %gml188 to i64
  %wp190 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c189, ptr %wp190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bea0 word 0x36080f89
  %r191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = and i64 %r191, 2
  %cmp193 = icmp eq i64 %t192, 0
  br i1 %cmp193, label %L_80077c090, label %L_80077bea4_ft
L_80077bea4_ft:
  ; @pc 0x80077bea4 word 0xf9400d09
  %r194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %t195 = add i64 %r194, 24
  %gmp196 = inttoptr i64 %t195 to ptr
  %gml197 = load i64, ptr %gmp196, align 1, !alias.scope !4, !noalias !3
  %wp198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml197, ptr %wp198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bea8 word 0xb4000089
  %r199.p = getelementptr inbounds i8, ptr %c, i64 72
  %r199 = load i64, ptr %r199.p, align 8, !alias.scope !3, !noalias !4
  %cmp200 = icmp eq i64 %r199, 0
  br i1 %cmp200, label %L_80077beb8, label %L_80077beac_ft
L_80077beac_ft:
  ; @pc 0x80077beac word 0xb9401109
  %r201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r201 = load i64, ptr %r201.p, align 8, !alias.scope !3, !noalias !4
  %t202 = add i64 %r201, 16
  %gmp203 = inttoptr i64 %t202 to ptr
  %gml204 = load i32, ptr %gmp203, align 1, !alias.scope !4, !noalias !3
  %c205 = zext i32 %gml204 to i64
  %wp206 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c205, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077beb0 word 0x7100053f
  %r207.p = getelementptr inbounds i8, ptr %c, i64 72
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %c208 = trunc i64 %r207 to i32
  %t209 = sub i32 %c208, 1
  %fn210 = icmp slt i32 %t209, 0
  %fz211 = icmp eq i32 %t209, 0
  %fc212 = icmp uge i32 %c208, 1
  %fx1213 = xor i32 %c208, 1
  %fx2214 = xor i32 %c208, %t209
  %fva215 = and i32 %fx1213, %fx2214
  %fv216 = icmp slt i32 %fva215, 0
  %nz217 = zext i1 %fn210 to i64
  %zz218 = zext i1 %fz211 to i64
  %cz219 = zext i1 %fc212 to i64
  %vz220 = zext i1 %fv216 to i64
  %ns221 = shl i64 %nz217, 31
  %zs222 = shl i64 %zz218, 30
  %cs223 = shl i64 %cz219, 29
  %vs224 = shl i64 %vz220, 28
  %nzor225 = or i64 %ns221, %zs222
  %cvor226 = or i64 %cs223, %vs224
  %nzcv227 = or i64 %nzor225, %cvor226
  %wp228 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv227, ptr %wp228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077beb4 word 0x54000ee0
  %r229.p = getelementptr inbounds i8, ptr %c, i64 272
  %r229 = load i64, ptr %r229.p, align 8, !alias.scope !3, !noalias !4
  %fsh231 = lshr i64 %r229, 30
  %cond230 = trunc i64 %fsh231 to i1
  br i1 %cond230, label %L_80077c090, label %L_80077beb8
L_80077bec4_ft:
  ; @pc 0x80077bec4 word 0x3943492a
  %r239.p = getelementptr inbounds i8, ptr %c, i64 72
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %t240 = add i64 %r239, 210
  %gmp241 = inttoptr i64 %t240 to ptr
  %gml242 = load i8, ptr %gmp241, align 1, !alias.scope !4, !noalias !3
  %c243 = zext i8 %gml242 to i64
  %wp244 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c243, ptr %wp244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bec8 word 0x7100095f
  %r245.p = getelementptr inbounds i8, ptr %c, i64 80
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %c246 = trunc i64 %r245 to i32
  %t247 = sub i32 %c246, 2
  %fn248 = icmp slt i32 %t247, 0
  %fz249 = icmp eq i32 %t247, 0
  %fc250 = icmp uge i32 %c246, 2
  %fx1251 = xor i32 %c246, 2
  %fx2252 = xor i32 %c246, %t247
  %fva253 = and i32 %fx1251, %fx2252
  %fv254 = icmp slt i32 %fva253, 0
  %nz255 = zext i1 %fn248 to i64
  %zz256 = zext i1 %fz249 to i64
  %cz257 = zext i1 %fc250 to i64
  %vz258 = zext i1 %fv254 to i64
  %ns259 = shl i64 %nz255, 31
  %zs260 = shl i64 %zz256, 30
  %cs261 = shl i64 %cz257, 29
  %vs262 = shl i64 %vz258, 28
  %nzor263 = or i64 %ns259, %zs260
  %cvor264 = or i64 %cs261, %vs262
  %nzcv265 = or i64 %nzor263, %cvor264
  %wp266 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv265, ptr %wp266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077becc word 0x540000a3
  %r267.p = getelementptr inbounds i8, ptr %c, i64 272
  %r267 = load i64, ptr %r267.p, align 8, !alias.scope !3, !noalias !4
  %fsh269 = lshr i64 %r267, 29
  %ftr270 = trunc i64 %fsh269 to i1
  %cond268 = xor i1 %ftr270, true
  br i1 %cond268, label %L_80077bee0, label %L_80077bed0_ft
L_80077bed0_ft:
  ; @pc 0x80077bed0 word 0x7100195f
  %r271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r271 = load i64, ptr %r271.p, align 8, !alias.scope !3, !noalias !4
  %c272 = trunc i64 %r271 to i32
  %t273 = sub i32 %c272, 6
  %fn274 = icmp slt i32 %t273, 0
  %fz275 = icmp eq i32 %t273, 0
  %fc276 = icmp uge i32 %c272, 6
  %fx1277 = xor i32 %c272, 6
  %fx2278 = xor i32 %c272, %t273
  %fva279 = and i32 %fx1277, %fx2278
  %fv280 = icmp slt i32 %fva279, 0
  %nz281 = zext i1 %fn274 to i64
  %zz282 = zext i1 %fz275 to i64
  %cz283 = zext i1 %fc276 to i64
  %vz284 = zext i1 %fv280 to i64
  %ns285 = shl i64 %nz281, 31
  %zs286 = shl i64 %zz282, 30
  %cs287 = shl i64 %cz283, 29
  %vs288 = shl i64 %vz284, 28
  %nzor289 = or i64 %ns285, %zs286
  %cvor290 = or i64 %cs287, %vs288
  %nzcv291 = or i64 %nzor289, %cvor290
  %wp292 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv291, ptr %wp292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bed4 word 0x54000de1
  %r293.p = getelementptr inbounds i8, ptr %c, i64 272
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %fsh295 = lshr i64 %r293, 30
  %ftr296 = trunc i64 %fsh295 to i1
  %cond294 = xor i1 %ftr296, true
  br i1 %cond294, label %L_80077c090, label %L_80077bed8_ft
L_80077bed8_ft:
  ; @pc 0x80077bed8 word 0xd50339bf
  fence seq_cst
  ; @pc 0x80077bedc word 0x3943492a
  %r297.p = getelementptr inbounds i8, ptr %c, i64 72
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 210
  %gmp299 = inttoptr i64 %t298 to ptr
  %gml300 = load i8, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  %c301 = zext i8 %gml300 to i64
  %wp302 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  br label %L_80077bee0
L_80077bee8_ft:
  ; @pc 0x80077bee8 word 0xb9400d29
  %r328.p = getelementptr inbounds i8, ptr %c, i64 72
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 12
  %gmp330 = inttoptr i64 %t329 to ptr
  %gml331 = load i32, ptr %gmp330, align 1, !alias.scope !4, !noalias !3
  %c332 = zext i32 %gml331 to i64
  %wp333 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c332, ptr %wp333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077beec word 0x71001d3f
  %r334.p = getelementptr inbounds i8, ptr %c, i64 72
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %c335 = trunc i64 %r334 to i32
  %t336 = sub i32 %c335, 7
  %fn337 = icmp slt i32 %t336, 0
  %fz338 = icmp eq i32 %t336, 0
  %fc339 = icmp uge i32 %c335, 7
  %fx1340 = xor i32 %c335, 7
  %fx2341 = xor i32 %c335, %t336
  %fva342 = and i32 %fx1340, %fx2341
  %fv343 = icmp slt i32 %fva342, 0
  %nz344 = zext i1 %fn337 to i64
  %zz345 = zext i1 %fz338 to i64
  %cz346 = zext i1 %fc339 to i64
  %vz347 = zext i1 %fv343 to i64
  %ns348 = shl i64 %nz344, 31
  %zs349 = shl i64 %zz345, 30
  %cs350 = shl i64 %cz346, 29
  %vs351 = shl i64 %vz347, 28
  %nzor352 = or i64 %ns348, %zs349
  %cvor353 = or i64 %cs350, %vs351
  %nzcv354 = or i64 %nzor352, %cvor353
  %wp355 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv354, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bef0 word 0x54000d00
  %r356.p = getelementptr inbounds i8, ptr %c, i64 272
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %fsh358 = lshr i64 %r356, 30
  %cond357 = trunc i64 %fsh358 to i1
  br i1 %cond357, label %L_80077c090, label %L_80077bef4
L_80077befc_ft:
  ; @pc 0x80077befc word 0xf9400508
  %r367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = add i64 %r367, 8
  %gmp369 = inttoptr i64 %t368 to ptr
  %gml370 = load i64, ptr %gmp369, align 1, !alias.scope !4, !noalias !3
  %wp371 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf00 word 0xb4000c88
  %r372.p = getelementptr inbounds i8, ptr %c, i64 64
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %cmp373 = icmp eq i64 %r372, 0
  br i1 %cmp373, label %L_80077c090, label %L_80077bf04_ft
L_80077bf04_ft:
  ; @pc 0x80077bf04 word 0xb9400d0a
  %r374.p = getelementptr inbounds i8, ptr %c, i64 64
  %r374 = load i64, ptr %r374.p, align 8, !alias.scope !3, !noalias !4
  %t375 = add i64 %r374, 12
  %gmp376 = inttoptr i64 %t375 to ptr
  %gml377 = load i32, ptr %gmp376, align 1, !alias.scope !4, !noalias !3
  %c378 = zext i32 %gml377 to i64
  %wp379 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c378, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf08 word 0x7100395f
  %r380.p = getelementptr inbounds i8, ptr %c, i64 80
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %c381 = trunc i64 %r380 to i32
  %t382 = sub i32 %c381, 14
  %fn383 = icmp slt i32 %t382, 0
  %fz384 = icmp eq i32 %t382, 0
  %fc385 = icmp uge i32 %c381, 14
  %fx1386 = xor i32 %c381, 14
  %fx2387 = xor i32 %c381, %t382
  %fva388 = and i32 %fx1386, %fx2387
  %fv389 = icmp slt i32 %fva388, 0
  %nz390 = zext i1 %fn383 to i64
  %zz391 = zext i1 %fz384 to i64
  %cz392 = zext i1 %fc385 to i64
  %vz393 = zext i1 %fv389 to i64
  %ns394 = shl i64 %nz390, 31
  %zs395 = shl i64 %zz391, 30
  %cs396 = shl i64 %cz392, 29
  %vs397 = shl i64 %vz393, 28
  %nzor398 = or i64 %ns394, %zs395
  %cvor399 = or i64 %cs396, %vs397
  %nzcv400 = or i64 %nzor398, %cvor399
  %wp401 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv400, ptr %wp401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf0c word 0xf9401509
  %r402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r402 = load i64, ptr %r402.p, align 8, !alias.scope !3, !noalias !4
  %t403 = add i64 %r402, 40
  %gmp404 = inttoptr i64 %t403 to ptr
  %gml405 = load i64, ptr %gmp404, align 1, !alias.scope !4, !noalias !3
  %wp406 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml405, ptr %wp406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf10 word 0x540000e0
  %r407.p = getelementptr inbounds i8, ptr %c, i64 272
  %r407 = load i64, ptr %r407.p, align 8, !alias.scope !3, !noalias !4
  %fsh409 = lshr i64 %r407, 30
  %cond408 = trunc i64 %fsh409 to i1
  br i1 %cond408, label %L_80077bf2c, label %L_80077bf14_ft
L_80077bf14_ft:
  ; @pc 0x80077bf14 word 0xaa1f03e0
  %t410 = or i64 0, 0
  %wp411 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t410, ptr %wp411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf18 word 0x7100215f
  %r412.p = getelementptr inbounds i8, ptr %c, i64 80
  %r412 = load i64, ptr %r412.p, align 8, !alias.scope !3, !noalias !4
  %c413 = trunc i64 %r412 to i32
  %t414 = sub i32 %c413, 8
  %fn415 = icmp slt i32 %t414, 0
  %fz416 = icmp eq i32 %t414, 0
  %fc417 = icmp uge i32 %c413, 8
  %fx1418 = xor i32 %c413, 8
  %fx2419 = xor i32 %c413, %t414
  %fva420 = and i32 %fx1418, %fx2419
  %fv421 = icmp slt i32 %fva420, 0
  %nz422 = zext i1 %fn415 to i64
  %zz423 = zext i1 %fz416 to i64
  %cz424 = zext i1 %fc417 to i64
  %vz425 = zext i1 %fv421 to i64
  %ns426 = shl i64 %nz422, 31
  %zs427 = shl i64 %zz423, 30
  %cs428 = shl i64 %cz424, 29
  %vs429 = shl i64 %vz425, 28
  %nzor430 = or i64 %ns426, %zs427
  %cvor431 = or i64 %cs428, %vs429
  %nzcv432 = or i64 %nzor430, %cvor431
  %wp433 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv432, ptr %wp433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf1c word 0x540000a1
  %r434.p = getelementptr inbounds i8, ptr %c, i64 272
  %r434 = load i64, ptr %r434.p, align 8, !alias.scope !3, !noalias !4
  %fsh436 = lshr i64 %r434, 30
  %ftr437 = trunc i64 %fsh436 to i1
  %cond435 = xor i1 %ftr437, true
  br i1 %cond435, label %L_80077bf30, label %L_80077bf20_ft
L_80077bf20_ft:
  ; @pc 0x80077bf20 word 0xb4000089
  %r438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %cmp439 = icmp eq i64 %r438, 0
  br i1 %cmp439, label %L_80077bf30, label %L_80077bf24_ft
L_80077bf24_ft:
  ; @pc 0x80077bf24 word 0x39401108
  %r440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %t441 = add i64 %r440, 4
  %gmp442 = inttoptr i64 %t441 to ptr
  %gml443 = load i8, ptr %gmp442, align 1, !alias.scope !4, !noalias !3
  %c444 = zext i8 %gml443 to i64
  %wp445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c444, ptr %wp445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf28 word 0x37200b48
  %r446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %t447 = and i64 %r446, 16
  %cmp448 = icmp ne i64 %t447, 0
  br i1 %cmp448, label %L_80077c090, label %L_80077bf2c
L_80077bf44_ft:
  ; @pc 0x80077bf44 word 0xf9400008
  %r468.p = getelementptr inbounds i8, ptr %c, i64 0
  %r468 = load i64, ptr %r468.p, align 8, !alias.scope !3, !noalias !4
  %gmp469 = inttoptr i64 %r468 to ptr
  %gml470 = load i64, ptr %gmp469, align 1, !alias.scope !4, !noalias !3
  %wp471 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml470, ptr %wp471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf48 word 0xb0018e81
  %wp472 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419818496, ptr %wp472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf4c word 0xf9400108
  %r473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r473 = load i64, ptr %r473.p, align 8, !alias.scope !3, !noalias !4
  %gmp474 = inttoptr i64 %r473 to ptr
  %gml475 = load i64, ptr %gmp474, align 1, !alias.scope !4, !noalias !3
  %wp476 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml475, ptr %wp476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf50 word 0xf9469c21
  %r477.p = getelementptr inbounds i8, ptr %c, i64 8
  %r477 = load i64, ptr %r477.p, align 8, !alias.scope !3, !noalias !4
  %t478 = add i64 %r477, 3384
  %gmp479 = inttoptr i64 %t478 to ptr
  %gml480 = load i64, ptr %gmp479, align 1, !alias.scope !4, !noalias !3
  %wp481 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml480, ptr %wp481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf54 word 0xd63f0100
  %r482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %fp483 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r482, ptr %fp483, align 8, !alias.scope !3, !noalias !4
  %wp484 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586136, ptr %wp484, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80077bf58 word 0xb4000500
  %r485.p = getelementptr inbounds i8, ptr %c, i64 0
  %r485 = load i64, ptr %r485.p, align 8, !alias.scope !3, !noalias !4
  %cmp486 = icmp eq i64 %r485, 0
  br i1 %cmp486, label %L_80077bff8, label %L_80077bf5c_ft
L_80077bf5c_ft:
  ; @pc 0x80077bf5c word 0xaa0003fa
  %r487.p = getelementptr inbounds i8, ptr %c, i64 0
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %t488 = or i64 0, %r487
  %wp489 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t488, ptr %wp489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf60 word 0x52800700
  %c490 = zext i32 56 to i64
  %wp491 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c490, ptr %wp491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf64 word 0xaa1803e1
  %r492.p = getelementptr inbounds i8, ptr %c, i64 192
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %t493 = or i64 0, %r492
  %wp494 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t493, ptr %wp494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf68 word 0x52800102
  %c495 = zext i32 8 to i64
  %wp496 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf6c word 0x97e89589
  %wp497 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586160, ptr %wp497, align 8, !alias.scope !3, !noalias !4
  call void @f_8001a1590(ptr %c)
  ; @pc 0x80077bf70 word 0xa9007c14
  %r498.p = getelementptr inbounds i8, ptr %c, i64 0
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %t499 = add i64 %r498, 8
  %r500.p = getelementptr inbounds i8, ptr %c, i64 160
  %r500 = load i64, ptr %r500.p, align 8, !alias.scope !3, !noalias !4
  %gmp501 = inttoptr i64 %r498 to ptr
  store i64 %r500, ptr %gmp501, align 1, !alias.scope !4, !noalias !3
  %gmp502 = inttoptr i64 %t499 to ptr
  store i64 0, ptr %gmp502, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf74 word 0x90018e88
  %wp503 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf78 word 0xaa0003f9
  %r504.p = getelementptr inbounds i8, ptr %c, i64 0
  %r504 = load i64, ptr %r504.p, align 8, !alias.scope !3, !noalias !4
  %t505 = or i64 0, %r504
  %wp506 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t505, ptr %wp506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf7c word 0xf900081f
  %r507.p = getelementptr inbounds i8, ptr %c, i64 0
  %r507 = load i64, ptr %r507.p, align 8, !alias.scope !3, !noalias !4
  %t508 = add i64 %r507, 16
  %gmp509 = inttoptr i64 %t508 to ptr
  store i64 0, ptr %gmp509, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf80 word 0xf945bd08
  %r510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %t511 = add i64 %r510, 2936
  %gmp512 = inttoptr i64 %t511 to ptr
  %gml513 = load i64, ptr %gmp512, align 1, !alias.scope !4, !noalias !3
  %wp514 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml513, ptr %wp514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf84 word 0xb900201f
  %r515.p = getelementptr inbounds i8, ptr %c, i64 0
  %r515 = load i64, ptr %r515.p, align 8, !alias.scope !3, !noalias !4
  %t516 = add i64 %r515, 32
  %gmp517 = inttoptr i64 %t516 to ptr
  store i32 0, ptr %gmp517, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf88 word 0xf900141f
  %r518.p = getelementptr inbounds i8, ptr %c, i64 0
  %r518 = load i64, ptr %r518.p, align 8, !alias.scope !3, !noalias !4
  %t519 = add i64 %r518, 40
  %gmp520 = inttoptr i64 %t519 to ptr
  store i64 0, ptr %gmp520, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf8c word 0xb900301f
  %r521.p = getelementptr inbounds i8, ptr %c, i64 0
  %r521 = load i64, ptr %r521.p, align 8, !alias.scope !3, !noalias !4
  %t522 = add i64 %r521, 48
  %gmp523 = inttoptr i64 %t522 to ptr
  store i32 0, ptr %gmp523, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf90 word 0xf9000c08
  %r524.p = getelementptr inbounds i8, ptr %c, i64 0
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %t525 = add i64 %r524, 24
  %r526.p = getelementptr inbounds i8, ptr %c, i64 64
  %r526 = load i64, ptr %r526.p, align 8, !alias.scope !3, !noalias !4
  %gmp527 = inttoptr i64 %t525 to ptr
  store i64 %r526, ptr %gmp527, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf94 word 0xf9400740
  %r528.p = getelementptr inbounds i8, ptr %c, i64 208
  %r528 = load i64, ptr %r528.p, align 8, !alias.scope !3, !noalias !4
  %t529 = add i64 %r528, 8
  %gmp530 = inttoptr i64 %t529 to ptr
  %gml531 = load i64, ptr %gmp530, align 1, !alias.scope !4, !noalias !3
  %wp532 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml531, ptr %wp532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bf98 word 0xf9000720
  %r533.p = getelementptr inbounds i8, ptr %c, i64 200
  %r533 = load i64, ptr %r533.p, align 8, !alias.scope !3, !noalias !4
  %t534 = add i64 %r533, 8
  %r535.p = getelementptr inbounds i8, ptr %c, i64 0
  %r535 = load i64, ptr %r535.p, align 8, !alias.scope !3, !noalias !4
  %gmp536 = inttoptr i64 %t534 to ptr
  store i64 %r535, ptr %gmp536, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bf9c word 0x94000052
  %wp537 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586208, ptr %wp537, align 8, !alias.scope !3, !noalias !4
  call void @f_80077c0e4(ptr %c)
  ; @pc 0x80077bfa0 word 0xf9401008
  %r538.p = getelementptr inbounds i8, ptr %c, i64 0
  %r538 = load i64, ptr %r538.p, align 8, !alias.scope !3, !noalias !4
  %t539 = add i64 %r538, 32
  %gmp540 = inttoptr i64 %t539 to ptr
  %gml541 = load i64, ptr %gmp540, align 1, !alias.scope !4, !noalias !3
  %wp542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml541, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfa4 word 0xf10002bf
  %r543.p = getelementptr inbounds i8, ptr %c, i64 168
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %t544 = sub i64 %r543, 0
  %fn545 = icmp slt i64 %t544, 0
  %fz546 = icmp eq i64 %t544, 0
  %fc547 = icmp uge i64 %r543, 0
  %fx1548 = xor i64 %r543, 0
  %fx2549 = xor i64 %r543, %t544
  %fva550 = and i64 %fx1548, %fx2549
  %fv551 = icmp slt i64 %fva550, 0
  %nz552 = zext i1 %fn545 to i64
  %zz553 = zext i1 %fz546 to i64
  %cz554 = zext i1 %fc547 to i64
  %vz555 = zext i1 %fv551 to i64
  %ns556 = shl i64 %nz552, 31
  %zs557 = shl i64 %zz553, 30
  %cs558 = shl i64 %cz554, 29
  %vs559 = shl i64 %vz555, 28
  %nzor560 = or i64 %ns556, %zs557
  %cvor561 = or i64 %cs558, %vs559
  %nzcv562 = or i64 %nzor560, %cvor561
  %wp563 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv562, ptr %wp563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfa8 word 0xb900333f
  %r564.p = getelementptr inbounds i8, ptr %c, i64 200
  %r564 = load i64, ptr %r564.p, align 8, !alias.scope !3, !noalias !4
  %t565 = add i64 %r564, 48
  %gmp566 = inttoptr i64 %t565 to ptr
  store i32 0, ptr %gmp566, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bfac word 0xa901e3f7
  %r567.p = getelementptr inbounds i8, ptr %c, i64 256
  %r567 = load i64, ptr %r567.p, align 8, !alias.scope !3, !noalias !4
  %t568 = add i64 %r567, 24
  %t569 = add i64 %t568, 8
  %r570.p = getelementptr inbounds i8, ptr %c, i64 184
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %gmp571 = inttoptr i64 %t568 to ptr
  store i64 %r570, ptr %gmp571, align 1, !alias.scope !4, !noalias !3
  %r572.p = getelementptr inbounds i8, ptr %c, i64 192
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %gmp573 = inttoptr i64 %t569 to ptr
  store i64 %r572, ptr %gmp573, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bfb0 word 0xf9000b28
  %r574.p = getelementptr inbounds i8, ptr %c, i64 200
  %r574 = load i64, ptr %r574.p, align 8, !alias.scope !3, !noalias !4
  %t575 = add i64 %r574, 16
  %r576.p = getelementptr inbounds i8, ptr %c, i64 64
  %r576 = load i64, ptr %r576.p, align 8, !alias.scope !3, !noalias !4
  %gmp577 = inttoptr i64 %t575 to ptr
  store i64 %r576, ptr %gmp577, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bfb4 word 0x9a950308
  %r578.p = getelementptr inbounds i8, ptr %c, i64 192
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %r579.p = getelementptr inbounds i8, ptr %c, i64 168
  %r579 = load i64, ptr %r579.p, align 8, !alias.scope !3, !noalias !4
  %r580.p = getelementptr inbounds i8, ptr %c, i64 272
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %fsh582 = lshr i64 %r580, 30
  %cond581 = trunc i64 %fsh582 to i1
  %sel583 = select i1 %cond581, i64 %r578, i64 %r579
  %wp584 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel583, ptr %wp584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfb8 word 0xf90017e8
  %r585.p = getelementptr inbounds i8, ptr %c, i64 256
  %r585 = load i64, ptr %r585.p, align 8, !alias.scope !3, !noalias !4
  %t586 = add i64 %r585, 40
  %r587.p = getelementptr inbounds i8, ptr %c, i64 64
  %r587 = load i64, ptr %r587.p, align 8, !alias.scope !3, !noalias !4
  %gmp588 = inttoptr i64 %t586 to ptr
  store i64 %r587, ptr %gmp588, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077bfbc word 0x90018ec8
  %wp589 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419847168, ptr %wp589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfc0 word 0xf941a508
  %r590.p = getelementptr inbounds i8, ptr %c, i64 64
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  %t591 = add i64 %r590, 840
  %gmp592 = inttoptr i64 %t591 to ptr
  %gml593 = load i64, ptr %gmp592, align 1, !alias.scope !4, !noalias !3
  %wp594 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml593, ptr %wp594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfc4 word 0xf9400108
  %r595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r595 = load i64, ptr %r595.p, align 8, !alias.scope !3, !noalias !4
  %gmp596 = inttoptr i64 %r595 to ptr
  %gml597 = load i64, ptr %gmp596, align 1, !alias.scope !4, !noalias !3
  %wp598 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml597, ptr %wp598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bfc8 word 0xb4000048
  %r599.p = getelementptr inbounds i8, ptr %c, i64 64
  %r599 = load i64, ptr %r599.p, align 8, !alias.scope !3, !noalias !4
  %cmp600 = icmp eq i64 %r599, 0
  br i1 %cmp600, label %L_80077bfd0, label %L_80077bfcc_ft
L_80077bfcc_ft:
  ; @pc 0x80077bfcc word 0xf9402d08
  %r601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %t602 = add i64 %r601, 88
  %gmp603 = inttoptr i64 %t602 to ptr
  %gml604 = load i64, ptr %gmp603, align 1, !alias.scope !4, !noalias !3
  %wp605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml604, ptr %wp605, align 8, !alias.scope !3, !noalias !4
  br label %L_80077bfd0
L_80077c008_ft:
  ; @pc 0x80077c008 word 0x7100077f
  %r699.p = getelementptr inbounds i8, ptr %c, i64 216
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %c700 = trunc i64 %r699 to i32
  %t701 = sub i32 %c700, 1
  %fn702 = icmp slt i32 %t701, 0
  %fz703 = icmp eq i32 %t701, 0
  %fc704 = icmp uge i32 %c700, 1
  %fx1705 = xor i32 %c700, 1
  %fx2706 = xor i32 %c700, %t701
  %fva707 = and i32 %fx1705, %fx2706
  %fv708 = icmp slt i32 %fva707, 0
  %nz709 = zext i1 %fn702 to i64
  %zz710 = zext i1 %fz703 to i64
  %cz711 = zext i1 %fc704 to i64
  %vz712 = zext i1 %fv708 to i64
  %ns713 = shl i64 %nz709, 31
  %zs714 = shl i64 %zz710, 30
  %cs715 = shl i64 %cz711, 29
  %vs716 = shl i64 %vz712, 28
  %nzor717 = or i64 %ns713, %zs714
  %cvor718 = or i64 %cs715, %vs716
  %nzcv719 = or i64 %nzor717, %cvor718
  %wp720 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv719, ptr %wp720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c00c word 0x5400032b
  %r721.p = getelementptr inbounds i8, ptr %c, i64 272
  %r721 = load i64, ptr %r721.p, align 8, !alias.scope !3, !noalias !4
  %fsh723 = lshr i64 %r721, 31
  %ftr724 = trunc i64 %fsh723 to i1
  %fsh725 = lshr i64 %r721, 28
  %ftr726 = trunc i64 %fsh725 to i1
  %cond722 = icmp ne i1 %ftr724, %ftr726
  br i1 %cond722, label %L_80077c070, label %L_80077c010_ft
L_80077c010_ft:
  ; @pc 0x80077c010 word 0xf9400be0
  %r727.p = getelementptr inbounds i8, ptr %c, i64 256
  %r727 = load i64, ptr %r727.p, align 8, !alias.scope !3, !noalias !4
  %t728 = add i64 %r727, 16
  %gmp729 = inttoptr i64 %t728 to ptr
  %gml730 = load i64, ptr %gmp729, align 1, !alias.scope !4, !noalias !3
  %wp731 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml730, ptr %wp731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c014 word 0xd37d7f61
  %r732.p = getelementptr inbounds i8, ptr %c, i64 216
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %ror733 = call i64 @llvm.fshr.i64(i64 %r732, i64 %r732, i64 61)
  %t734 = and i64 %ror733, 34359738360
  %wp735 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t734, ptr %wp735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c018 word 0x52800102
  %c736 = zext i32 8 to i64
  %wp737 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c736, ptr %wp737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c01c word 0x2a1f03e3
  %t738 = or i32 0, 0
  %c739 = zext i32 %t738 to i64
  %wp740 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c739, ptr %wp740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c020 word 0x2a1b03f4
  %r741.p = getelementptr inbounds i8, ptr %c, i64 216
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %c742 = trunc i64 %r741 to i32
  %t743 = or i32 0, %c742
  %c744 = zext i32 %t743 to i64
  %wp745 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c024 word 0x97e3f73f
  %wp746 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586344, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  call void @f_800079d20(ptr %c)
  ; @pc 0x80077c028 word 0xb4000060
  %r747.p = getelementptr inbounds i8, ptr %c, i64 0
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %cmp748 = icmp eq i64 %r747, 0
  br i1 %cmp748, label %L_80077c034, label %L_80077c02c_ft
L_80077c02c_ft:
  ; @pc 0x80077c02c word 0xb9005a7b
  %r749.p = getelementptr inbounds i8, ptr %c, i64 152
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %t750 = add i64 %r749, 88
  %r751.p = getelementptr inbounds i8, ptr %c, i64 216
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %c752 = trunc i64 %r751 to i32
  %gmp753 = inttoptr i64 %t750 to ptr
  store i32 %c752, ptr %gmp753, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c030 word 0xf9003260
  %r754.p = getelementptr inbounds i8, ptr %c, i64 152
  %r754 = load i64, ptr %r754.p, align 8, !alias.scope !3, !noalias !4
  %t755 = add i64 %r754, 96
  %r756.p = getelementptr inbounds i8, ptr %c, i64 0
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %gmp757 = inttoptr i64 %t755 to ptr
  store i64 %r756, ptr %gmp757, align 1, !alias.scope !4, !noalias !3
  br label %L_80077c034
L_80077c0b8_ft:
  ; @pc 0x80077c0b8 word 0x90018e88
  %wp961 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0bc word 0x90018e89
  %wp962 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0c0 word 0xf946a508
  %r963.p = getelementptr inbounds i8, ptr %c, i64 64
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %t964 = add i64 %r963, 3400
  %gmp965 = inttoptr i64 %t964 to ptr
  %gml966 = load i64, ptr %gmp965, align 1, !alias.scope !4, !noalias !3
  %wp967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml966, ptr %wp967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0c4 word 0xf9469d29
  %r968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r968 = load i64, ptr %r968.p, align 8, !alias.scope !3, !noalias !4
  %t969 = add i64 %r968, 3384
  %gmp970 = inttoptr i64 %t969 to ptr
  %gml971 = load i64, ptr %gmp970, align 1, !alias.scope !4, !noalias !3
  %wp972 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml971, ptr %wp972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0c8 word 0x90018e80
  %wp973 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419818496, ptr %wp973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0cc word 0x91004108
  %r974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = add i64 %r974, 16
  %wp976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t975, ptr %wp976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0d0 word 0xf9000128
  %r977.p = getelementptr inbounds i8, ptr %c, i64 72
  %r977 = load i64, ptr %r977.p, align 8, !alias.scope !3, !noalias !4
  %r978.p = getelementptr inbounds i8, ptr %c, i64 64
  %r978 = load i64, ptr %r978.p, align 8, !alias.scope !3, !noalias !4
  %gmp979 = inttoptr i64 %r977 to ptr
  store i64 %r978, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c0d4 word 0xf946a000
  %r980.p = getelementptr inbounds i8, ptr %c, i64 0
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %t981 = add i64 %r980, 3392
  %gmp982 = inttoptr i64 %t981 to ptr
  %gml983 = load i64, ptr %gmp982, align 1, !alias.scope !4, !noalias !3
  %wp984 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0d8 word 0x94909e36
  %wp985 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586524, ptr %wp985, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80077c0dc word 0xaa1903e0
  %r986.p = getelementptr inbounds i8, ptr %c, i64 200
  %r986 = load i64, ptr %r986.p, align 8, !alias.scope !3, !noalias !4
  %t987 = or i64 0, %r986
  %wp988 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t987, ptr %wp988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0e0 word 0x17ffff98
  br label %L_80077bf40
}

define dso_local void @f_80077c0e4(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80077c0e4:
  ; @pc 0x80077c0e4 word 0xa9bc7bfd
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, -64
  %t7 = add i64 %t6, 8
  %r8.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %gmp9 = inttoptr i64 %t6 to ptr
  store i64 %r8, ptr %gmp9, align 1, !alias.scope !4, !noalias !3
  %r10.p = getelementptr inbounds i8, ptr %c, i64 240
  %r10 = load i64, ptr %r10.p, align 8, !alias.scope !3, !noalias !4
  %gmp11 = inttoptr i64 %t7 to ptr
  store i64 %r10, ptr %gmp11, align 1, !alias.scope !4, !noalias !3
  %wp12 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp12, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0e8 word 0xf9000bf7
  %r13.p = getelementptr inbounds i8, ptr %c, i64 256
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %t14 = add i64 %r13, 16
  %r15.p = getelementptr inbounds i8, ptr %c, i64 184
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %gmp16 = inttoptr i64 %t14 to ptr
  store i64 %r15, ptr %gmp16, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c0ec word 0xa90257f6
  %r17.p = getelementptr inbounds i8, ptr %c, i64 256
  %r17 = load i64, ptr %r17.p, align 8, !alias.scope !3, !noalias !4
  %t18 = add i64 %r17, 32
  %t19 = add i64 %t18, 8
  %r20.p = getelementptr inbounds i8, ptr %c, i64 176
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t18 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  %r22.p = getelementptr inbounds i8, ptr %c, i64 168
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %gmp23 = inttoptr i64 %t19 to ptr
  store i64 %r22, ptr %gmp23, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c0f0 word 0xa9034ff4
  %r24.p = getelementptr inbounds i8, ptr %c, i64 256
  %r24 = load i64, ptr %r24.p, align 8, !alias.scope !3, !noalias !4
  %t25 = add i64 %r24, 48
  %t26 = add i64 %t25, 8
  %r27.p = getelementptr inbounds i8, ptr %c, i64 160
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t25 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  %r29.p = getelementptr inbounds i8, ptr %c, i64 152
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %gmp30 = inttoptr i64 %t26 to ptr
  store i64 %r29, ptr %gmp30, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c0f4 word 0x910003fd
  %r31.p = getelementptr inbounds i8, ptr %c, i64 256
  %r31 = load i64, ptr %r31.p, align 8, !alias.scope !3, !noalias !4
  %t32 = add i64 %r31, 0
  %wp33 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t32, ptr %wp33, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0f8 word 0xaa0003f3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 0
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %t35 = or i64 0, %r34
  %wp36 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t35, ptr %wp36, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c0fc word 0x94909fe9
  %wp37 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586560, ptr %wp37, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba40a0(ptr %c)
  ; @pc 0x80077c100 word 0x37000080
  %r38.p = getelementptr inbounds i8, ptr %c, i64 0
  %r38 = load i64, ptr %r38.p, align 8, !alias.scope !3, !noalias !4
  %t39 = and i64 %r38, 1
  %cmp40 = icmp ne i64 %t39, 0
  br i1 %cmp40, label %L_80077c110, label %L_80077c104_ft
L_80077c110:
  ; @pc 0x80077c110 word 0xf9401275
  %r46.p = getelementptr inbounds i8, ptr %c, i64 152
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %t47 = add i64 %r46, 32
  %gmp48 = inttoptr i64 %t47 to ptr
  %gml49 = load i64, ptr %gmp48, align 1, !alias.scope !4, !noalias !3
  %wp50 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml49, ptr %wp50, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c114 word 0x794082a8
  %r51.p = getelementptr inbounds i8, ptr %c, i64 168
  %r51 = load i64, ptr %r51.p, align 8, !alias.scope !3, !noalias !4
  %t52 = add i64 %r51, 64
  %gmp53 = inttoptr i64 %t52 to ptr
  %gml54 = load i16, ptr %gmp53, align 1, !alias.scope !4, !noalias !3
  %c55 = zext i16 %gml54 to i64
  %wp56 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c55, ptr %wp56, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c118 word 0xb4000208
  %r57.p = getelementptr inbounds i8, ptr %c, i64 64
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %cmp58 = icmp eq i64 %r57, 0
  br i1 %cmp58, label %L_80077c158, label %L_80077c11c_ft
L_80077c124:
  ; @pc 0x80077c124 word 0xf9400aa8
  %r65.p = getelementptr inbounds i8, ptr %c, i64 168
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %t66 = add i64 %r65, 16
  %gmp67 = inttoptr i64 %t66 to ptr
  %gml68 = load i64, ptr %gmp67, align 1, !alias.scope !4, !noalias !3
  %wp69 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c128 word 0x8b160108
  %r70.p = getelementptr inbounds i8, ptr %c, i64 64
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %r71.p = getelementptr inbounds i8, ptr %c, i64 176
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r70, %r71
  %wp73 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t72, ptr %wp73, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c12c word 0xf9405514
  %r74.p = getelementptr inbounds i8, ptr %c, i64 64
  %r74 = load i64, ptr %r74.p, align 8, !alias.scope !3, !noalias !4
  %t75 = add i64 %r74, 168
  %gmp76 = inttoptr i64 %t75 to ptr
  %gml77 = load i64, ptr %gmp76, align 1, !alias.scope !4, !noalias !3
  %wp78 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml77, ptr %wp78, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c130 word 0xb40000f4
  %r79.p = getelementptr inbounds i8, ptr %c, i64 160
  %r79 = load i64, ptr %r79.p, align 8, !alias.scope !3, !noalias !4
  %cmp80 = icmp eq i64 %r79, 0
  br i1 %cmp80, label %L_80077c14c, label %L_80077c134_ft
L_80077c14c:
  ; @pc 0x80077c14c word 0x910402d6
  %r93.p = getelementptr inbounds i8, ptr %c, i64 176
  %r93 = load i64, ptr %r93.p, align 8, !alias.scope !3, !noalias !4
  %t94 = add i64 %r93, 256
  %wp95 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t94, ptr %wp95, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c150 word 0xeb1602ff
  %r96.p = getelementptr inbounds i8, ptr %c, i64 184
  %r96 = load i64, ptr %r96.p, align 8, !alias.scope !3, !noalias !4
  %r97.p = getelementptr inbounds i8, ptr %c, i64 176
  %r97 = load i64, ptr %r97.p, align 8, !alias.scope !3, !noalias !4
  %t98 = sub i64 %r96, %r97
  %fn99 = icmp slt i64 %t98, 0
  %fz100 = icmp eq i64 %t98, 0
  %fc101 = icmp uge i64 %r96, %r97
  %fx1102 = xor i64 %r96, %r97
  %fx2103 = xor i64 %r96, %t98
  %fva104 = and i64 %fx1102, %fx2103
  %fv105 = icmp slt i64 %fva104, 0
  %nz106 = zext i1 %fn99 to i64
  %zz107 = zext i1 %fz100 to i64
  %cz108 = zext i1 %fc101 to i64
  %vz109 = zext i1 %fv105 to i64
  %ns110 = shl i64 %nz106, 31
  %zs111 = shl i64 %zz107, 30
  %cs112 = shl i64 %cz108, 29
  %vs113 = shl i64 %vz109, 28
  %nzor114 = or i64 %ns110, %zs111
  %cvor115 = or i64 %cs112, %vs113
  %nzcv116 = or i64 %nzor114, %cvor115
  %wp117 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c154 word 0x54fffe81
  %r118.p = getelementptr inbounds i8, ptr %c, i64 272
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %fsh120 = lshr i64 %r118, 30
  %ftr121 = trunc i64 %fsh120 to i1
  %cond119 = xor i1 %ftr121, true
  br i1 %cond119, label %L_80077c124, label %L_80077c158
L_80077c158:
  ; @pc 0x80077c158 word 0xaa1303e0
  %r122.p = getelementptr inbounds i8, ptr %c, i64 152
  %r122 = load i64, ptr %r122.p, align 8, !alias.scope !3, !noalias !4
  %t123 = or i64 0, %r122
  %wp124 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c15c word 0x9490a245
  %wp125 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586656, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4a70(ptr %c)
  ; @pc 0x80077c160 word 0xaa1303e0
  %r126.p = getelementptr inbounds i8, ptr %c, i64 152
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = or i64 0, %r126
  %wp128 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c164 word 0xa9434ff4
  %r129.p = getelementptr inbounds i8, ptr %c, i64 256
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %t130 = add i64 %r129, 48
  %t131 = add i64 %t130, 8
  %gmp132 = inttoptr i64 %t130 to ptr
  %gml133 = load i64, ptr %gmp132, align 1, !alias.scope !4, !noalias !3
  %gmp134 = inttoptr i64 %t131 to ptr
  %gml135 = load i64, ptr %gmp134, align 1, !alias.scope !4, !noalias !3
  %wp136 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml133, ptr %wp136, align 8, !alias.scope !3, !noalias !4
  %wp137 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml135, ptr %wp137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c168 word 0xa94257f6
  %r138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %t139 = add i64 %r138, 32
  %t140 = add i64 %t139, 8
  %gmp141 = inttoptr i64 %t139 to ptr
  %gml142 = load i64, ptr %gmp141, align 1, !alias.scope !4, !noalias !3
  %gmp143 = inttoptr i64 %t140 to ptr
  %gml144 = load i64, ptr %gmp143, align 1, !alias.scope !4, !noalias !3
  %wp145 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml142, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  %wp146 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml144, ptr %wp146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c16c word 0xf9400bf7
  %r147.p = getelementptr inbounds i8, ptr %c, i64 256
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %t148 = add i64 %r147, 16
  %gmp149 = inttoptr i64 %t148 to ptr
  %gml150 = load i64, ptr %gmp149, align 1, !alias.scope !4, !noalias !3
  %wp151 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml150, ptr %wp151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c170 word 0xa8c47bfd
  %r152.p = getelementptr inbounds i8, ptr %c, i64 256
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r152, 8
  %gmp154 = inttoptr i64 %r152 to ptr
  %gml155 = load i64, ptr %gmp154, align 1, !alias.scope !4, !noalias !3
  %gmp156 = inttoptr i64 %t153 to ptr
  %gml157 = load i64, ptr %gmp156, align 1, !alias.scope !4, !noalias !3
  %t158 = add i64 %r152, 64
  %wp159 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t158, ptr %wp159, align 8, !alias.scope !3, !noalias !4
  %wp160 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml155, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  %wp161 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml157, ptr %wp161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c174 word 0xd65f03c0
  ret void
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367586532, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077c0e4
L_80077c104_ft:
  ; @pc 0x80077c104 word 0xaa1303e0
  %r41.p = getelementptr inbounds i8, ptr %c, i64 152
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %t42 = or i64 0, %r41
  %wp43 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t42, ptr %wp43, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c108 word 0x94909fea
  %wp44 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586572, ptr %wp44, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba40b0(ptr %c)
  ; @pc 0x80077c10c word 0x9490a029
  %wp45 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586576, ptr %wp45, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41b0(ptr %c)
  br label %L_80077c110
L_80077c11c_ft:
  ; @pc 0x80077c11c word 0xaa1f03f6
  %t59 = or i64 0, 0
  %wp60 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t59, ptr %wp60, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c120 word 0xd378dd17
  %r61.p = getelementptr inbounds i8, ptr %c, i64 64
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %ror62 = call i64 @llvm.fshr.i64(i64 %r61, i64 %r61, i64 56)
  %t63 = and i64 %ror62, -256
  %wp64 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t63, ptr %wp64, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c124
L_80077c134_ft:
  ; @pc 0x80077c134 word 0xaa1403e0
  %r81.p = getelementptr inbounds i8, ptr %c, i64 160
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = or i64 0, %r81
  %wp83 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t82, ptr %wp83, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c138 word 0x94909fda
  %wp84 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586620, ptr %wp84, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba40a0(ptr %c)
  ; @pc 0x80077c13c word 0x37000080
  %r85.p = getelementptr inbounds i8, ptr %c, i64 0
  %r85 = load i64, ptr %r85.p, align 8, !alias.scope !3, !noalias !4
  %t86 = and i64 %r85, 1
  %cmp87 = icmp ne i64 %t86, 0
  br i1 %cmp87, label %L_80077c14c, label %L_80077c140_ft
L_80077c140_ft:
  ; @pc 0x80077c140 word 0xaa1403e0
  %r88.p = getelementptr inbounds i8, ptr %c, i64 160
  %r88 = load i64, ptr %r88.p, align 8, !alias.scope !3, !noalias !4
  %t89 = or i64 0, %r88
  %wp90 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c144 word 0x94909fdb
  %wp91 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586632, ptr %wp91, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba40b0(ptr %c)
  ; @pc 0x80077c148 word 0x9490a01a
  %wp92 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586636, ptr %wp92, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41b0(ptr %c)
  br label %L_80077c14c
L_80077c178_unreach:
  ; @pc 0x80077c178 word 0x00000000
  call void @rt_udf(ptr %c, i64 34367586680)
  unreachable
L_80077c17c_unreach:
  ; @pc 0x80077c17c word 0x00000000
  call void @rt_udf(ptr %c, i64 34367586684)
  unreachable
}

define dso_local void @f_80077c180(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80077c180:
  ; @pc 0x80077c180 word 0xd10583ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 352
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c184 word 0xa9107bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 256
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c188 word 0xa9116ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 272
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c18c word 0xa91267fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 288
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c190 word 0xa9135ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 304
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c194 word 0xa91457f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 320
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c198 word 0xa9154ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 336
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c19c word 0x910403fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 256
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1a0 word 0xaa0003f3
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = or i64 0, %r53
  %wp55 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t54, ptr %wp55, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1a4 word 0xf9400420
  %r56.p = getelementptr inbounds i8, ptr %c, i64 8
  %r56 = load i64, ptr %r56.p, align 8, !alias.scope !3, !noalias !4
  %t57 = add i64 %r56, 8
  %gmp58 = inttoptr i64 %t57 to ptr
  %gml59 = load i64, ptr %gmp58, align 1, !alias.scope !4, !noalias !3
  %wp60 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml59, ptr %wp60, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1a8 word 0xf9001be1
  %r61.p = getelementptr inbounds i8, ptr %c, i64 256
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %t62 = add i64 %r61, 48
  %r63.p = getelementptr inbounds i8, ptr %c, i64 8
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %gmp64 = inttoptr i64 %t62 to ptr
  store i64 %r63, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1ac word 0xf9400008
  %r65.p = getelementptr inbounds i8, ptr %c, i64 0
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %gmp66 = inttoptr i64 %r65 to ptr
  %gml67 = load i64, ptr %gmp66, align 1, !alias.scope !4, !noalias !3
  %wp68 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml67, ptr %wp68, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1b0 word 0xf9404108
  %r69.p = getelementptr inbounds i8, ptr %c, i64 64
  %r69 = load i64, ptr %r69.p, align 8, !alias.scope !3, !noalias !4
  %t70 = add i64 %r69, 128
  %gmp71 = inttoptr i64 %t70 to ptr
  %gml72 = load i64, ptr %gmp71, align 1, !alias.scope !4, !noalias !3
  %wp73 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml72, ptr %wp73, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1b4 word 0xd63f0100
  %r74.p = getelementptr inbounds i8, ptr %c, i64 64
  %r74 = load i64, ptr %r74.p, align 8, !alias.scope !3, !noalias !4
  %fp75 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r74, ptr %fp75, align 8, !alias.scope !3, !noalias !4
  %wp76 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586744, ptr %wp76, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80077c1b8 word 0xf90007e0
  %r77.p = getelementptr inbounds i8, ptr %c, i64 256
  %r77 = load i64, ptr %r77.p, align 8, !alias.scope !3, !noalias !4
  %t78 = add i64 %r77, 8
  %r79.p = getelementptr inbounds i8, ptr %c, i64 0
  %r79 = load i64, ptr %r79.p, align 8, !alias.scope !3, !noalias !4
  %gmp80 = inttoptr i64 %t78 to ptr
  store i64 %r79, ptr %gmp80, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1bc word 0x90018e88
  %wp81 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1c0 word 0xaa1f03e2
  %t82 = or i64 0, 0
  %wp83 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t82, ptr %wp83, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1c4 word 0xf947b908
  %r84.p = getelementptr inbounds i8, ptr %c, i64 64
  %r84 = load i64, ptr %r84.p, align 8, !alias.scope !3, !noalias !4
  %t85 = add i64 %r84, 3952
  %gmp86 = inttoptr i64 %t85 to ptr
  %gml87 = load i64, ptr %gmp86, align 1, !alias.scope !4, !noalias !3
  %wp88 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml87, ptr %wp88, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1c8 word 0xf9400a60
  %r89.p = getelementptr inbounds i8, ptr %c, i64 152
  %r89 = load i64, ptr %r89.p, align 8, !alias.scope !3, !noalias !4
  %t90 = add i64 %r89, 16
  %gmp91 = inttoptr i64 %t90 to ptr
  %gml92 = load i64, ptr %gmp91, align 1, !alias.scope !4, !noalias !3
  %wp93 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml92, ptr %wp93, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1cc word 0xaa1f03e3
  %t94 = or i64 0, 0
  %wp95 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t94, ptr %wp95, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1d0 word 0xf9400108
  %r96.p = getelementptr inbounds i8, ptr %c, i64 64
  %r96 = load i64, ptr %r96.p, align 8, !alias.scope !3, !noalias !4
  %gmp97 = inttoptr i64 %r96 to ptr
  %gml98 = load i64, ptr %gmp97, align 1, !alias.scope !4, !noalias !3
  %wp99 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml98, ptr %wp99, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1d4 word 0xf9428101
  %r100.p = getelementptr inbounds i8, ptr %c, i64 64
  %r100 = load i64, ptr %r100.p, align 8, !alias.scope !3, !noalias !4
  %t101 = add i64 %r100, 1280
  %gmp102 = inttoptr i64 %t101 to ptr
  %gml103 = load i64, ptr %gmp102, align 1, !alias.scope !4, !noalias !3
  %wp104 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml103, ptr %wp104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1d8 word 0x94000f42
  %wp105 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586780, ptr %wp105, align 8, !alias.scope !3, !noalias !4
  call void @f_80077fee0(ptr %c)
  ; @pc 0x80077c1dc word 0xf0018ea8
  %wp106 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419847168, ptr %wp106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1e0 word 0xf941a508
  %r107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r107 = load i64, ptr %r107.p, align 8, !alias.scope !3, !noalias !4
  %t108 = add i64 %r107, 840
  %gmp109 = inttoptr i64 %t108 to ptr
  %gml110 = load i64, ptr %gmp109, align 1, !alias.scope !4, !noalias !3
  %wp111 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml110, ptr %wp111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1e4 word 0x381b83bf
  %r112.p = getelementptr inbounds i8, ptr %c, i64 232
  %r112 = load i64, ptr %r112.p, align 8, !alias.scope !3, !noalias !4
  %t113 = add i64 %r112, -72
  %c114 = trunc i32 0 to i8
  %gmp115 = inttoptr i64 %t113 to ptr
  store i8 %c114, ptr %gmp115, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1e8 word 0xf81b03bf
  %r116.p = getelementptr inbounds i8, ptr %c, i64 232
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %t117 = add i64 %r116, -80
  %gmp118 = inttoptr i64 %t117 to ptr
  store i64 0, ptr %gmp118, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1ec word 0xf9400108
  %r119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %gmp120 = inttoptr i64 %r119 to ptr
  %gml121 = load i64, ptr %gmp120, align 1, !alias.scope !4, !noalias !3
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c1f0 word 0xf81a03bf
  %r123.p = getelementptr inbounds i8, ptr %c, i64 232
  %r123 = load i64, ptr %r123.p, align 8, !alias.scope !3, !noalias !4
  %t124 = add i64 %r123, -96
  %gmp125 = inttoptr i64 %t124 to ptr
  store i64 0, ptr %gmp125, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1f4 word 0xa9397fbf
  %r126.p = getelementptr inbounds i8, ptr %c, i64 232
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = add i64 %r126, -112
  %t128 = add i64 %t127, 8
  %gmp129 = inttoptr i64 %t127 to ptr
  store i64 0, ptr %gmp129, align 1, !alias.scope !4, !noalias !3
  %gmp130 = inttoptr i64 %t128 to ptr
  store i64 0, ptr %gmp130, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1f8 word 0x781a83bf
  %r131.p = getelementptr inbounds i8, ptr %c, i64 232
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %t132 = add i64 %r131, -88
  %c133 = trunc i32 0 to i16
  %gmp134 = inttoptr i64 %t132 to ptr
  store i16 %c133, ptr %gmp134, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c1fc word 0xf9400508
  %r135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %t136 = add i64 %r135, 8
  %gmp137 = inttoptr i64 %t136 to ptr
  %gml138 = load i64, ptr %gmp137, align 1, !alias.scope !4, !noalias !3
  %wp139 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c200 word 0xf9001ff3
  %r140.p = getelementptr inbounds i8, ptr %c, i64 256
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %t141 = add i64 %r140, 56
  %r142.p = getelementptr inbounds i8, ptr %c, i64 152
  %r142 = load i64, ptr %r142.p, align 8, !alias.scope !3, !noalias !4
  %gmp143 = inttoptr i64 %t141 to ptr
  store i64 %r142, ptr %gmp143, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c204 word 0xf9002fe8
  %r144.p = getelementptr inbounds i8, ptr %c, i64 256
  %r144 = load i64, ptr %r144.p, align 8, !alias.scope !3, !noalias !4
  %t145 = add i64 %r144, 88
  %r146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %gmp147 = inttoptr i64 %t145 to ptr
  store i64 %r146, ptr %gmp147, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c208 word 0xf9400a68
  %r148.p = getelementptr inbounds i8, ptr %c, i64 152
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = add i64 %r148, 16
  %gmp150 = inttoptr i64 %t149 to ptr
  %gml151 = load i64, ptr %gmp150, align 1, !alias.scope !4, !noalias !3
  %wp152 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml151, ptr %wp152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c20c word 0x79408108
  %r153.p = getelementptr inbounds i8, ptr %c, i64 64
  %r153 = load i64, ptr %r153.p, align 8, !alias.scope !3, !noalias !4
  %t154 = add i64 %r153, 64
  %gmp155 = inttoptr i64 %t154 to ptr
  %gml156 = load i16, ptr %gmp155, align 1, !alias.scope !4, !noalias !3
  %c157 = zext i16 %gml156 to i64
  %wp158 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c157, ptr %wp158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c210 word 0xf9000be8
  %r159.p = getelementptr inbounds i8, ptr %c, i64 256
  %r159 = load i64, ptr %r159.p, align 8, !alias.scope !3, !noalias !4
  %t160 = add i64 %r159, 16
  %r161.p = getelementptr inbounds i8, ptr %c, i64 64
  %r161 = load i64, ptr %r161.p, align 8, !alias.scope !3, !noalias !4
  %gmp162 = inttoptr i64 %t160 to ptr
  store i64 %r161, ptr %gmp162, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c214 word 0xb40072a8
  %r163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r163 = load i64, ptr %r163.p, align 8, !alias.scope !3, !noalias !4
  %cmp164 = icmp eq i64 %r163, 0
  br i1 %cmp164, label %L_80077d068, label %L_80077c218_ft
L_80077c254:
  ; @pc 0x80077c254 word 0xa94323f5
  %r209.p = getelementptr inbounds i8, ptr %c, i64 256
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %t210 = add i64 %r209, 48
  %t211 = add i64 %t210, 8
  %gmp212 = inttoptr i64 %t210 to ptr
  %gml213 = load i64, ptr %gmp212, align 1, !alias.scope !4, !noalias !3
  %gmp214 = inttoptr i64 %t211 to ptr
  %gml215 = load i64, ptr %gmp214, align 1, !alias.scope !4, !noalias !3
  %wp216 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml213, ptr %wp216, align 8, !alias.scope !3, !noalias !4
  %wp217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml215, ptr %wp217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c258 word 0x52800500
  %c218 = zext i32 40 to i64
  %wp219 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c218, ptr %wp219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c25c word 0x52800102
  %c220 = zext i32 8 to i64
  %wp221 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c220, ptr %wp221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c260 word 0xf9000fe9
  %r222.p = getelementptr inbounds i8, ptr %c, i64 256
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %t223 = add i64 %r222, 24
  %r224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %gmp225 = inttoptr i64 %t223 to ptr
  store i64 %r224, ptr %gmp225, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c264 word 0xf9400908
  %r226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %t227 = add i64 %r226, 16
  %gmp228 = inttoptr i64 %t227 to ptr
  %gml229 = load i64, ptr %gmp228, align 1, !alias.scope !4, !noalias !3
  %wp230 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml229, ptr %wp230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c268 word 0xf94006a1
  %r231.p = getelementptr inbounds i8, ptr %c, i64 168
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %t232 = add i64 %r231, 8
  %gmp233 = inttoptr i64 %t232 to ptr
  %gml234 = load i64, ptr %gmp233, align 1, !alias.scope !4, !noalias !3
  %wp235 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml234, ptr %wp235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c26c word 0xf9400908
  %r236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %t237 = add i64 %r236, 16
  %gmp238 = inttoptr i64 %t237 to ptr
  %gml239 = load i64, ptr %gmp238, align 1, !alias.scope !4, !noalias !3
  %wp240 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c270 word 0x8b092117
  %r241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %r242.p = getelementptr inbounds i8, ptr %c, i64 72
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %t243 = shl i64 %r242, 8
  %t244 = add i64 %r241, %t243
  %wp245 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t244, ptr %wp245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c274 word 0x7941d2fa
  %r246.p = getelementptr inbounds i8, ptr %c, i64 184
  %r246 = load i64, ptr %r246.p, align 8, !alias.scope !3, !noalias !4
  %t247 = add i64 %r246, 232
  %gmp248 = inttoptr i64 %t247 to ptr
  %gml249 = load i16, ptr %gmp248, align 1, !alias.scope !4, !noalias !3
  %c250 = zext i16 %gml249 to i64
  %wp251 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c250, ptr %wp251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c278 word 0x97e894c6
  %wp252 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586940, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  call void @f_8001a1590(ptr %c)
  ; @pc 0x80077c27c word 0x52800021
  %c253 = zext i32 1 to i64
  %wp254 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c253, ptr %wp254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c280 word 0x2a1f03e2
  %t255 = or i32 0, 0
  %c256 = zext i32 %t255 to i64
  %wp257 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c256, ptr %wp257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c284 word 0xf900101f
  %r258.p = getelementptr inbounds i8, ptr %c, i64 0
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %t259 = add i64 %r258, 32
  %gmp260 = inttoptr i64 %t259 to ptr
  store i64 0, ptr %gmp260, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c288 word 0xaa0003f9
  %r261.p = getelementptr inbounds i8, ptr %c, i64 0
  %r261 = load i64, ptr %r261.p, align 8, !alias.scope !3, !noalias !4
  %t262 = or i64 0, %r261
  %wp263 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t262, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c28c word 0xa9007c1f
  %r264.p = getelementptr inbounds i8, ptr %c, i64 0
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %t265 = add i64 %r264, 8
  %gmp266 = inttoptr i64 %r264 to ptr
  store i64 0, ptr %gmp266, align 1, !alias.scope !4, !noalias !3
  %gmp267 = inttoptr i64 %t265 to ptr
  store i64 0, ptr %gmp267, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c290 word 0xa9017c1f
  %r268.p = getelementptr inbounds i8, ptr %c, i64 0
  %r268 = load i64, ptr %r268.p, align 8, !alias.scope !3, !noalias !4
  %t269 = add i64 %r268, 16
  %t270 = add i64 %t269, 8
  %gmp271 = inttoptr i64 %t269 to ptr
  store i64 0, ptr %gmp271, align 1, !alias.scope !4, !noalias !3
  %gmp272 = inttoptr i64 %t270 to ptr
  store i64 0, ptr %gmp272, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c294 word 0x94909f7b
  %wp273 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586968, ptr %wp273, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4080(ptr %c)
  ; @pc 0x80077c298 word 0xf90066f9
  %r274.p = getelementptr inbounds i8, ptr %c, i64 184
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %t275 = add i64 %r274, 200
  %r276.p = getelementptr inbounds i8, ptr %c, i64 200
  %r276 = load i64, ptr %r276.p, align 8, !alias.scope !3, !noalias !4
  %gmp277 = inttoptr i64 %t275 to ptr
  store i64 %r276, ptr %gmp277, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c29c word 0xd37df340
  %r278.p = getelementptr inbounds i8, ptr %c, i64 208
  %r278 = load i64, ptr %r278.p, align 8, !alias.scope !3, !noalias !4
  %ror279 = call i64 @llvm.fshr.i64(i64 %r278, i64 %r278, i64 61)
  %t280 = and i64 %ror279, -8
  %wp281 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t280, ptr %wp281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2a0 word 0x52800102
  %c282 = zext i32 8 to i64
  %wp283 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c282, ptr %wp283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2a4 word 0xf94006a1
  %r284.p = getelementptr inbounds i8, ptr %c, i64 168
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %t285 = add i64 %r284, 8
  %gmp286 = inttoptr i64 %t285 to ptr
  %gml287 = load i64, ptr %gmp286, align 1, !alias.scope !4, !noalias !3
  %wp288 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml287, ptr %wp288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2a8 word 0xf90027f7
  %r289.p = getelementptr inbounds i8, ptr %c, i64 256
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %t290 = add i64 %r289, 72
  %r291.p = getelementptr inbounds i8, ptr %c, i64 184
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %gmp292 = inttoptr i64 %t290 to ptr
  store i64 %r291, ptr %gmp292, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2ac word 0x97e8aa59
  %wp293 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367586992, ptr %wp293, align 8, !alias.scope !3, !noalias !4
  call void @f_8001a6c10(ptr %c)
  ; @pc 0x80077c2b0 word 0xb0018c08
  %wp294 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419494912, ptr %wp294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2b4 word 0x91084108
  %r295.p = getelementptr inbounds i8, ptr %c, i64 64
  %r295 = load i64, ptr %r295.p, align 8, !alias.scope !3, !noalias !4
  %t296 = add i64 %r295, 528
  %wp297 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t296, ptr %wp297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2b8 word 0xf9001320
  %r298.p = getelementptr inbounds i8, ptr %c, i64 200
  %r298 = load i64, ptr %r298.p, align 8, !alias.scope !3, !noalias !4
  %t299 = add i64 %r298, 32
  %r300.p = getelementptr inbounds i8, ptr %c, i64 0
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %gmp301 = inttoptr i64 %t299 to ptr
  store i64 %r300, ptr %gmp301, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2bc word 0xa9065bf9
  %r302.p = getelementptr inbounds i8, ptr %c, i64 256
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %t303 = add i64 %r302, 96
  %t304 = add i64 %t303, 8
  %r305.p = getelementptr inbounds i8, ptr %c, i64 200
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %gmp306 = inttoptr i64 %t303 to ptr
  store i64 %r305, ptr %gmp306, align 1, !alias.scope !4, !noalias !3
  %r307.p = getelementptr inbounds i8, ptr %c, i64 176
  %r307 = load i64, ptr %r307.p, align 8, !alias.scope !3, !noalias !4
  %gmp308 = inttoptr i64 %t304 to ptr
  store i64 %r307, ptr %gmp308, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2c0 word 0xb90073ff
  %r309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r309 = load i64, ptr %r309.p, align 8, !alias.scope !3, !noalias !4
  %t310 = add i64 %r309, 112
  %gmp311 = inttoptr i64 %t310 to ptr
  store i32 0, ptr %gmp311, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2c4 word 0xb9008bff
  %r312.p = getelementptr inbounds i8, ptr %c, i64 256
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %t313 = add i64 %r312, 136
  %gmp314 = inttoptr i64 %t313 to ptr
  store i32 0, ptr %gmp314, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2c8 word 0xa907ffe8
  %r315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r315 = load i64, ptr %r315.p, align 8, !alias.scope !3, !noalias !4
  %t316 = add i64 %r315, 120
  %t317 = add i64 %t316, 8
  %r318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %gmp319 = inttoptr i64 %t316 to ptr
  store i64 %r318, ptr %gmp319, align 1, !alias.scope !4, !noalias !3
  %gmp320 = inttoptr i64 %t317 to ptr
  store i64 0, ptr %gmp320, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2cc word 0xb400665a
  %r321.p = getelementptr inbounds i8, ptr %c, i64 208
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %cmp322 = icmp eq i64 %r321, 0
  br i1 %cmp322, label %L_80077cf94, label %L_80077c2d0_ft
L_80077c2f0:
  ; @pc 0x80077c2f0 word 0x9100077b
  %r344.p = getelementptr inbounds i8, ptr %c, i64 216
  %r344 = load i64, ptr %r344.p, align 8, !alias.scope !3, !noalias !4
  %t345 = add i64 %r344, 1
  %wp346 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t345, ptr %wp346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2f4 word 0xeb1a037f
  %r347.p = getelementptr inbounds i8, ptr %c, i64 216
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %r348.p = getelementptr inbounds i8, ptr %c, i64 208
  %r348 = load i64, ptr %r348.p, align 8, !alias.scope !3, !noalias !4
  %t349 = sub i64 %r347, %r348
  %fn350 = icmp slt i64 %t349, 0
  %fz351 = icmp eq i64 %t349, 0
  %fc352 = icmp uge i64 %r347, %r348
  %fx1353 = xor i64 %r347, %r348
  %fx2354 = xor i64 %r347, %t349
  %fva355 = and i64 %fx1353, %fx2354
  %fv356 = icmp slt i64 %fva355, 0
  %nz357 = zext i1 %fn350 to i64
  %zz358 = zext i1 %fz351 to i64
  %cz359 = zext i1 %fc352 to i64
  %vz360 = zext i1 %fv356 to i64
  %ns361 = shl i64 %nz357, 31
  %zs362 = shl i64 %zz358, 30
  %cs363 = shl i64 %cz359, 29
  %vs364 = shl i64 %vz360, 28
  %nzor365 = or i64 %ns361, %zs362
  %cvor366 = or i64 %cs363, %vs364
  %nzcv367 = or i64 %nzor365, %cvor366
  %wp368 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv367, ptr %wp368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2f8 word 0x54004b40
  %r369.p = getelementptr inbounds i8, ptr %c, i64 272
  %r369 = load i64, ptr %r369.p, align 8, !alias.scope !3, !noalias !4
  %fsh371 = lshr i64 %r369, 30
  %cond370 = trunc i64 %fsh371 to i1
  br i1 %cond370, label %L_80077cc60, label %L_80077c2fc
L_80077c2fc:
  ; @pc 0x80077c2fc word 0xf94033e8
  %r372.p = getelementptr inbounds i8, ptr %c, i64 256
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %t373 = add i64 %r372, 96
  %gmp374 = inttoptr i64 %t373 to ptr
  %gml375 = load i64, ptr %gmp374, align 1, !alias.scope !4, !noalias !3
  %wp376 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml375, ptr %wp376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c300 word 0xf9401116
  %r377.p = getelementptr inbounds i8, ptr %c, i64 64
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %t378 = add i64 %r377, 32
  %gmp379 = inttoptr i64 %t378 to ptr
  %gml380 = load i64, ptr %gmp379, align 1, !alias.scope !4, !noalias !3
  %wp381 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml380, ptr %wp381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c304 word 0xf94027e8
  %r382.p = getelementptr inbounds i8, ptr %c, i64 256
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %t383 = add i64 %r382, 72
  %gmp384 = inttoptr i64 %t383 to ptr
  %gml385 = load i64, ptr %gmp384, align 1, !alias.scope !4, !noalias !3
  %wp386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml385, ptr %wp386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c308 word 0xf83b7adf
  %r387.p = getelementptr inbounds i8, ptr %c, i64 176
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %r388.p = getelementptr inbounds i8, ptr %c, i64 216
  %r388 = load i64, ptr %r388.p, align 8, !alias.scope !3, !noalias !4
  %t389 = shl i64 %r388, 3
  %t390 = add i64 %r387, %t389
  %gmp391 = inttoptr i64 %t390 to ptr
  store i64 0, ptr %gmp391, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c30c word 0xf9404508
  %r392.p = getelementptr inbounds i8, ptr %c, i64 64
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %t393 = add i64 %r392, 136
  %gmp394 = inttoptr i64 %t393 to ptr
  %gml395 = load i64, ptr %gmp394, align 1, !alias.scope !4, !noalias !3
  %wp396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml395, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c310 word 0xf9400309
  %r397.p = getelementptr inbounds i8, ptr %c, i64 192
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %gmp398 = inttoptr i64 %r397 to ptr
  %gml399 = load i64, ptr %gmp398, align 1, !alias.scope !4, !noalias !3
  %wp400 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml399, ptr %wp400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c314 word 0x8b1b191c
  %r401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %r402.p = getelementptr inbounds i8, ptr %c, i64 216
  %r402 = load i64, ptr %r402.p, align 8, !alias.scope !3, !noalias !4
  %t403 = shl i64 %r402, 6
  %t404 = add i64 %r401, %t403
  %wp405 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t404, ptr %wp405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c318 word 0xf9401388
  %r406.p = getelementptr inbounds i8, ptr %c, i64 224
  %r406 = load i64, ptr %r406.p, align 8, !alias.scope !3, !noalias !4
  %t407 = add i64 %r406, 32
  %gmp408 = inttoptr i64 %t407 to ptr
  %gml409 = load i64, ptr %gmp408, align 1, !alias.scope !4, !noalias !3
  %wp410 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml409, ptr %wp410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c31c word 0xf8696909
  %r411.p = getelementptr inbounds i8, ptr %c, i64 64
  %r411 = load i64, ptr %r411.p, align 8, !alias.scope !3, !noalias !4
  %r412.p = getelementptr inbounds i8, ptr %c, i64 72
  %r412 = load i64, ptr %r412.p, align 8, !alias.scope !3, !noalias !4
  %t413 = add i64 %r411, %r412
  %gmp414 = inttoptr i64 %t413 to ptr
  %gml415 = load i64, ptr %gmp414, align 1, !alias.scope !4, !noalias !3
  %wp416 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml415, ptr %wp416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c320 word 0xb4005a29
  %r417.p = getelementptr inbounds i8, ptr %c, i64 72
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %cmp418 = icmp eq i64 %r417, 0
  br i1 %cmp418, label %L_80077ce64, label %L_80077c324
L_80077c324:
  ; @pc 0x80077c324 word 0xf9403d28
  %r419.p = getelementptr inbounds i8, ptr %c, i64 72
  %r419 = load i64, ptr %r419.p, align 8, !alias.scope !3, !noalias !4
  %t420 = add i64 %r419, 120
  %gmp421 = inttoptr i64 %t420 to ptr
  %gml422 = load i64, ptr %gmp421, align 1, !alias.scope !4, !noalias !3
  %wp423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml422, ptr %wp423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c328 word 0xb4000228
  %r424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r424 = load i64, ptr %r424.p, align 8, !alias.scope !3, !noalias !4
  %cmp425 = icmp eq i64 %r424, 0
  br i1 %cmp425, label %L_80077c36c, label %L_80077c32c_ft
L_80077c33c:
  ; @pc 0x80077c33c word 0xf9400509
  %r439.p = getelementptr inbounds i8, ptr %c, i64 64
  %r439 = load i64, ptr %r439.p, align 8, !alias.scope !3, !noalias !4
  %t440 = add i64 %r439, 8
  %gmp441 = inttoptr i64 %t440 to ptr
  %gml442 = load i64, ptr %gmp441, align 1, !alias.scope !4, !noalias !3
  %wp443 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml442, ptr %wp443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c340 word 0xb5005a49
  %r444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r444 = load i64, ptr %r444.p, align 8, !alias.scope !3, !noalias !4
  %cmp445 = icmp ne i64 %r444, 0
  br i1 %cmp445, label %L_80077ce88, label %L_80077c344
L_80077c344:
  ; @pc 0x80077c344 word 0xf9400909
  %r446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %t447 = add i64 %r446, 16
  %gmp448 = inttoptr i64 %t447 to ptr
  %gml449 = load i64, ptr %gmp448, align 1, !alias.scope !4, !noalias !3
  %wp450 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml449, ptr %wp450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c348 word 0xb5005aa9
  %r451.p = getelementptr inbounds i8, ptr %c, i64 72
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %cmp452 = icmp ne i64 %r451, 0
  br i1 %cmp452, label %L_80077ce9c, label %L_80077c34c
L_80077c34c:
  ; @pc 0x80077c34c word 0xf9400d09
  %r453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %t454 = add i64 %r453, 24
  %gmp455 = inttoptr i64 %t454 to ptr
  %gml456 = load i64, ptr %gmp455, align 1, !alias.scope !4, !noalias !3
  %wp457 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml456, ptr %wp457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c350 word 0xb5005b09
  %r458.p = getelementptr inbounds i8, ptr %c, i64 72
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %cmp459 = icmp ne i64 %r458, 0
  br i1 %cmp459, label %L_80077ceb0, label %L_80077c354
L_80077c354:
  ; @pc 0x80077c354 word 0xf9401109
  %r460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r460 = load i64, ptr %r460.p, align 8, !alias.scope !3, !noalias !4
  %t461 = add i64 %r460, 32
  %gmp462 = inttoptr i64 %t461 to ptr
  %gml463 = load i64, ptr %gmp462, align 1, !alias.scope !4, !noalias !3
  %wp464 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml463, ptr %wp464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c358 word 0xb4000069
  %r465.p = getelementptr inbounds i8, ptr %c, i64 72
  %r465 = load i64, ptr %r465.p, align 8, !alias.scope !3, !noalias !4
  %cmp466 = icmp eq i64 %r465, 0
  br i1 %cmp466, label %L_80077c364, label %L_80077c35c_ft
L_80077c364:
  ; @pc 0x80077c364 word 0xf9401508
  %r474.p = getelementptr inbounds i8, ptr %c, i64 64
  %r474 = load i64, ptr %r474.p, align 8, !alias.scope !3, !noalias !4
  %t475 = add i64 %r474, 40
  %gmp476 = inttoptr i64 %t475 to ptr
  %gml477 = load i64, ptr %gmp476, align 1, !alias.scope !4, !noalias !3
  %wp478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml477, ptr %wp478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c368 word 0xb5005ae8
  %r479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r479 = load i64, ptr %r479.p, align 8, !alias.scope !3, !noalias !4
  %cmp480 = icmp ne i64 %r479, 0
  br i1 %cmp480, label %L_80077cec4, label %L_80077c36c
L_80077c36c:
  ; @pc 0x80077c36c word 0xf94023e8
  %r481.p = getelementptr inbounds i8, ptr %c, i64 256
  %r481 = load i64, ptr %r481.p, align 8, !alias.scope !3, !noalias !4
  %t482 = add i64 %r481, 64
  %gmp483 = inttoptr i64 %t482 to ptr
  %gml484 = load i64, ptr %gmp483, align 1, !alias.scope !4, !noalias !3
  %wp485 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml484, ptr %wp485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c370 word 0xf81c03a8
  %r486.p = getelementptr inbounds i8, ptr %c, i64 232
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %t487 = add i64 %r486, -64
  %r488.p = getelementptr inbounds i8, ptr %c, i64 64
  %r488 = load i64, ptr %r488.p, align 8, !alias.scope !3, !noalias !4
  %gmp489 = inttoptr i64 %t487 to ptr
  store i64 %r488, ptr %gmp489, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c374 word 0xf9402fe9
  %r490.p = getelementptr inbounds i8, ptr %c, i64 256
  %r490 = load i64, ptr %r490.p, align 8, !alias.scope !3, !noalias !4
  %t491 = add i64 %r490, 88
  %gmp492 = inttoptr i64 %t491 to ptr
  %gml493 = load i64, ptr %gmp492, align 1, !alias.scope !4, !noalias !3
  %wp494 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml493, ptr %wp494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c378 word 0xaa0903e8
  %r495.p = getelementptr inbounds i8, ptr %c, i64 72
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %t496 = or i64 0, %r495
  %wp497 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t496, ptr %wp497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c37c word 0xb4005ae9
  %r498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %cmp499 = icmp eq i64 %r498, 0
  br i1 %cmp499, label %L_80077ced8, label %L_80077c380
L_80077c380:
  ; @pc 0x80077c380 word 0xf0018ea9
  %wp500 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419847168, ptr %wp500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c384 word 0xf941a529
  %r501.p = getelementptr inbounds i8, ptr %c, i64 72
  %r501 = load i64, ptr %r501.p, align 8, !alias.scope !3, !noalias !4
  %t502 = add i64 %r501, 840
  %gmp503 = inttoptr i64 %t502 to ptr
  %gml504 = load i64, ptr %gmp503, align 1, !alias.scope !4, !noalias !3
  %wp505 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml504, ptr %wp505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c388 word 0xf9400129
  %r506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r506 = load i64, ptr %r506.p, align 8, !alias.scope !3, !noalias !4
  %gmp507 = inttoptr i64 %r506 to ptr
  %gml508 = load i64, ptr %gmp507, align 1, !alias.scope !4, !noalias !3
  %wp509 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml508, ptr %wp509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c38c word 0xa93ca3a8
  %r510.p = getelementptr inbounds i8, ptr %c, i64 232
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %t511 = add i64 %r510, -56
  %t512 = add i64 %t511, 8
  %r513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %gmp514 = inttoptr i64 %t511 to ptr
  store i64 %r513, ptr %gmp514, align 1, !alias.scope !4, !noalias !3
  %r515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r515 = load i64, ptr %r515.p, align 8, !alias.scope !3, !noalias !4
  %gmp516 = inttoptr i64 %t512 to ptr
  store i64 %r515, ptr %gmp516, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c390 word 0xb4005bc9
  %r517.p = getelementptr inbounds i8, ptr %c, i64 72
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %cmp518 = icmp eq i64 %r517, 0
  br i1 %cmp518, label %L_80077cf08, label %L_80077c394_ft
L_80077c398:
  ; @pc 0x80077c398 word 0xd101c3a0
  %r524.p = getelementptr inbounds i8, ptr %c, i64 232
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %t525 = sub i64 %r524, 112
  %wp526 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t525, ptr %wp526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c39c word 0xd10103a4
  %r527.p = getelementptr inbounds i8, ptr %c, i64 232
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %t528 = sub i64 %r527, 64
  %wp529 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t528, ptr %wp529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3a0 word 0xf81d83a8
  %r530.p = getelementptr inbounds i8, ptr %c, i64 232
  %r530 = load i64, ptr %r530.p, align 8, !alias.scope !3, !noalias !4
  %t531 = add i64 %r530, -40
  %r532.p = getelementptr inbounds i8, ptr %c, i64 64
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %gmp533 = inttoptr i64 %t531 to ptr
  store i64 %r532, ptr %gmp533, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c3a4 word 0xaa1c03e1
  %r534.p = getelementptr inbounds i8, ptr %c, i64 224
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %t535 = or i64 0, %r534
  %wp536 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t535, ptr %wp536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3a8 word 0xaa1f03e2
  %t537 = or i64 0, 0
  %wp538 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t537, ptr %wp538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3ac word 0x2a1f03e3
  %t539 = or i32 0, 0
  %c540 = zext i32 %t539 to i64
  %wp541 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c540, ptr %wp541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3b0 word 0x94000400
  %wp542 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367587252, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  call void @f_80077d3b0(ptr %c)
  ; @pc 0x80077c3b4 word 0xf9401388
  %r543.p = getelementptr inbounds i8, ptr %c, i64 224
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %t544 = add i64 %r543, 32
  %gmp545 = inttoptr i64 %t544 to ptr
  %gml546 = load i64, ptr %gmp545, align 1, !alias.scope !4, !noalias !3
  %wp547 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml546, ptr %wp547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3b8 word 0x2a1f03e1
  %t548 = or i32 0, 0
  %c549 = zext i32 %t548 to i64
  %wp550 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c549, ptr %wp550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3bc word 0xaa1803f9
  %r551.p = getelementptr inbounds i8, ptr %c, i64 192
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %t552 = or i64 0, %r551
  %wp553 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3c0 word 0xf9400309
  %r554.p = getelementptr inbounds i8, ptr %c, i64 192
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %gmp555 = inttoptr i64 %r554 to ptr
  %gml556 = load i64, ptr %gmp555, align 1, !alias.scope !4, !noalias !3
  %wp557 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml556, ptr %wp557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3c4 word 0xf8696917
  %r558.p = getelementptr inbounds i8, ptr %c, i64 64
  %r558 = load i64, ptr %r558.p, align 8, !alias.scope !3, !noalias !4
  %r559.p = getelementptr inbounds i8, ptr %c, i64 72
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = add i64 %r558, %r559
  %gmp561 = inttoptr i64 %t560 to ptr
  %gml562 = load i64, ptr %gmp561, align 1, !alias.scope !4, !noalias !3
  %wp563 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml562, ptr %wp563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3c8 word 0xaa1703e0
  %r564.p = getelementptr inbounds i8, ptr %c, i64 184
  %r564 = load i64, ptr %r564.p, align 8, !alias.scope !3, !noalias !4
  %t565 = or i64 0, %r564
  %wp566 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t565, ptr %wp566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3cc word 0x94000ebe
  %wp567 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367587280, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  call void @f_80077fec4(ptr %c)
  ; @pc 0x80077c3d0 word 0xaa0003f5
  %r568.p = getelementptr inbounds i8, ptr %c, i64 0
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %t569 = or i64 0, %r568
  %wp570 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t569, ptr %wp570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3d4 word 0xaa1703e0
  %r571.p = getelementptr inbounds i8, ptr %c, i64 184
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %t572 = or i64 0, %r571
  %wp573 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t572, ptr %wp573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3d8 word 0x52800081
  %c574 = zext i32 4 to i64
  %wp575 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3dc word 0x94000eba
  %wp576 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367587296, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  call void @f_80077fec4(ptr %c)
  ; @pc 0x80077c3e0 word 0xaa0003f8
  %r577.p = getelementptr inbounds i8, ptr %c, i64 0
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %t578 = or i64 0, %r577
  %wp579 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t578, ptr %wp579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3e4 word 0xaa1703e0
  %r580.p = getelementptr inbounds i8, ptr %c, i64 184
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %t581 = or i64 0, %r580
  %wp582 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t581, ptr %wp582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3e8 word 0x52800061
  %c583 = zext i32 3 to i64
  %wp584 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c583, ptr %wp584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c3ec word 0x94000eb6
  %wp585 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367587312, ptr %wp585, align 8, !alias.scope !3, !noalias !4
  call void @f_80077fec4(ptr %c)
  ; @pc 0x80077c3f0 word 0xb4005915
  %r586.p = getelementptr inbounds i8, ptr %c, i64 168
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %cmp587 = icmp eq i64 %r586, 0
  br i1 %cmp587, label %L_80077cf10, label %L_80077c3f4_ft
L_80077c3f8:
  ; @pc 0x80077c3f8 word 0xb4005938
  %r597.p = getelementptr inbounds i8, ptr %c, i64 192
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %cmp598 = icmp eq i64 %r597, 0
  br i1 %cmp598, label %L_80077cf1c, label %L_80077c3fc_ft
L_80077c400:
  ; @pc 0x80077c400 word 0xaa1903f8
  %r608.p = getelementptr inbounds i8, ptr %c, i64 200
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = or i64 0, %r608
  %wp610 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c404 word 0xb5005920
  %r611.p = getelementptr inbounds i8, ptr %c, i64 0
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %cmp612 = icmp ne i64 %r611, 0
  br i1 %cmp612, label %L_80077cf28, label %L_80077c408_ft
L_80077c414:
  ; @pc 0x80077c414 word 0xf100011f
  %r620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r620 = load i64, ptr %r620.p, align 8, !alias.scope !3, !noalias !4
  %t621 = sub i64 %r620, 0
  %fn622 = icmp slt i64 %t621, 0
  %fz623 = icmp eq i64 %t621, 0
  %fc624 = icmp uge i64 %r620, 0
  %fx1625 = xor i64 %r620, 0
  %fx2626 = xor i64 %r620, %t621
  %fva627 = and i64 %fx1625, %fx2626
  %fv628 = icmp slt i64 %fva627, 0
  %nz629 = zext i1 %fn622 to i64
  %zz630 = zext i1 %fz623 to i64
  %cz631 = zext i1 %fc624 to i64
  %vz632 = zext i1 %fv628 to i64
  %ns633 = shl i64 %nz629, 31
  %zs634 = shl i64 %zz630, 30
  %cs635 = shl i64 %cz631, 29
  %vs636 = shl i64 %vz632, 28
  %nzor637 = or i64 %ns633, %zs634
  %cvor638 = or i64 %cs635, %vs636
  %nzcv639 = or i64 %nzor637, %cvor638
  %wp640 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv639, ptr %wp640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c418 word 0x1a9f07ee
  %t641 = add i32 0, 1
  %r642.p = getelementptr inbounds i8, ptr %c, i64 272
  %r642 = load i64, ptr %r642.p, align 8, !alias.scope !3, !noalias !4
  %fsh644 = lshr i64 %r642, 30
  %cond643 = trunc i64 %fsh644 to i1
  %sel645 = select i1 %cond643, i32 0, i32 %t641
  %c646 = zext i32 %sel645 to i64
  %wp647 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c646, ptr %wp647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c41c word 0xb40058e9
  %r648.p = getelementptr inbounds i8, ptr %c, i64 72
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %cmp649 = icmp eq i64 %r648, 0
  br i1 %cmp649, label %L_80077cf38, label %L_80077c420
L_80077c420:
  ; @pc 0x80077c420 word 0xf100017f
  %r650.p = getelementptr inbounds i8, ptr %c, i64 88
  %r650 = load i64, ptr %r650.p, align 8, !alias.scope !3, !noalias !4
  %t651 = sub i64 %r650, 0
  %fn652 = icmp slt i64 %t651, 0
  %fz653 = icmp eq i64 %t651, 0
  %fc654 = icmp uge i64 %r650, 0
  %fx1655 = xor i64 %r650, 0
  %fx2656 = xor i64 %r650, %t651
  %fva657 = and i64 %fx1655, %fx2656
  %fv658 = icmp slt i64 %fva657, 0
  %nz659 = zext i1 %fn652 to i64
  %zz660 = zext i1 %fz653 to i64
  %cz661 = zext i1 %fc654 to i64
  %vz662 = zext i1 %fv658 to i64
  %ns663 = shl i64 %nz659, 31
  %zs664 = shl i64 %zz660, 30
  %cs665 = shl i64 %cz661, 29
  %vs666 = shl i64 %vz662, 28
  %nzor667 = or i64 %ns663, %zs664
  %cvor668 = or i64 %cs665, %vs666
  %nzcv669 = or i64 %nzor667, %cvor668
  %wp670 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv669, ptr %wp670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c424 word 0x1a9f07f0
  %t671 = add i32 0, 1
  %r672.p = getelementptr inbounds i8, ptr %c, i64 272
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %fsh674 = lshr i64 %r672, 30
  %cond673 = trunc i64 %fsh674 to i1
  %sel675 = select i1 %cond673, i32 0, i32 %t671
  %c676 = zext i32 %sel675 to i64
  %wp677 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c676, ptr %wp677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c428 word 0xb40058ca
  %r678.p = getelementptr inbounds i8, ptr %c, i64 80
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %cmp679 = icmp eq i64 %r678, 0
  br i1 %cmp679, label %L_80077cf40, label %L_80077c42c
L_80077c42c:
  ; @pc 0x80077c42c word 0x360058f0
  %r680.p = getelementptr inbounds i8, ptr %c, i64 128
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %t681 = and i64 %r680, 1
  %cmp682 = icmp eq i64 %t681, 0
  br i1 %cmp682, label %L_80077cf48, label %L_80077c430_ft
L_80077c434:
  ; @pc 0x80077c434 word 0xf10001bf
  %r685.p = getelementptr inbounds i8, ptr %c, i64 104
  %r685 = load i64, ptr %r685.p, align 8, !alias.scope !3, !noalias !4
  %t686 = sub i64 %r685, 0
  %fn687 = icmp slt i64 %t686, 0
  %fz688 = icmp eq i64 %t686, 0
  %fc689 = icmp uge i64 %r685, 0
  %fx1690 = xor i64 %r685, 0
  %fx2691 = xor i64 %r685, %t686
  %fva692 = and i64 %fx1690, %fx2691
  %fv693 = icmp slt i64 %fva692, 0
  %nz694 = zext i1 %fn687 to i64
  %zz695 = zext i1 %fz688 to i64
  %cz696 = zext i1 %fc689 to i64
  %vz697 = zext i1 %fv693 to i64
  %ns698 = shl i64 %nz694, 31
  %zs699 = shl i64 %zz695, 30
  %cs700 = shl i64 %cz696, 29
  %vs701 = shl i64 %vz697, 28
  %nzor702 = or i64 %ns698, %zs699
  %cvor703 = or i64 %cs700, %vs701
  %nzcv704 = or i64 %nzor702, %cvor703
  %wp705 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv704, ptr %wp705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c438 word 0x1a9f07f1
  %t706 = add i32 0, 1
  %r707.p = getelementptr inbounds i8, ptr %c, i64 272
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %fsh709 = lshr i64 %r707, 30
  %cond708 = trunc i64 %fsh709 to i1
  %sel710 = select i1 %cond708, i32 0, i32 %t706
  %c711 = zext i32 %sel710 to i64
  %wp712 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c711, ptr %wp712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c43c word 0x3700004f
  %r713.p = getelementptr inbounds i8, ptr %c, i64 120
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %t714 = and i64 %r713, 1
  %cmp715 = icmp ne i64 %t714, 0
  br i1 %cmp715, label %L_80077c444, label %L_80077c440_ft
L_80077c444:
  ; @pc 0x80077c444 word 0x37005871
  %r719.p = getelementptr inbounds i8, ptr %c, i64 136
  %r719 = load i64, ptr %r719.p, align 8, !alias.scope !3, !noalias !4
  %t720 = and i64 %r719, 1
  %cmp721 = icmp ne i64 %t720, 0
  br i1 %cmp721, label %L_80077cf50, label %L_80077c448_ft
L_80077c44c:
  ; @pc 0x80077c44c word 0x2a0e020e
  %r725.p = getelementptr inbounds i8, ptr %c, i64 112
  %r725 = load i64, ptr %r725.p, align 8, !alias.scope !3, !noalias !4
  %c726 = trunc i64 %r725 to i32
  %r727.p = getelementptr inbounds i8, ptr %c, i64 128
  %r727 = load i64, ptr %r727.p, align 8, !alias.scope !3, !noalias !4
  %c728 = trunc i64 %r727 to i32
  %t729 = or i32 %c728, %c726
  %c730 = zext i32 %t729 to i64
  %wp731 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c730, ptr %wp731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c450 word 0xa93c23a9
  %r732.p = getelementptr inbounds i8, ptr %c, i64 232
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %t733 = add i64 %r732, -64
  %t734 = add i64 %t733, 8
  %r735.p = getelementptr inbounds i8, ptr %c, i64 72
  %r735 = load i64, ptr %r735.p, align 8, !alias.scope !3, !noalias !4
  %gmp736 = inttoptr i64 %t733 to ptr
  store i64 %r735, ptr %gmp736, align 1, !alias.scope !4, !noalias !3
  %r737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %gmp738 = inttoptr i64 %t734 to ptr
  store i64 %r737, ptr %gmp738, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c454 word 0x2a0f01ce
  %r739.p = getelementptr inbounds i8, ptr %c, i64 120
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %c740 = trunc i64 %r739 to i32
  %r741.p = getelementptr inbounds i8, ptr %c, i64 112
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %c742 = trunc i64 %r741 to i32
  %t743 = or i32 %c742, %c740
  %c744 = zext i32 %t743 to i64
  %wp745 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c458 word 0xf94043ef
  %r746.p = getelementptr inbounds i8, ptr %c, i64 256
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %t747 = add i64 %r746, 128
  %gmp748 = inttoptr i64 %t747 to ptr
  %gml749 = load i64, ptr %gmp748, align 1, !alias.scope !4, !noalias !3
  %wp750 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml749, ptr %wp750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c45c word 0xb81f03ae
  %r751.p = getelementptr inbounds i8, ptr %c, i64 232
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %t752 = add i64 %r751, -16
  %r753.p = getelementptr inbounds i8, ptr %c, i64 112
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %c754 = trunc i64 %r753 to i32
  %gmp755 = inttoptr i64 %t752 to ptr
  store i32 %c754, ptr %gmp755, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c460 word 0xa93d2faa
  %r756.p = getelementptr inbounds i8, ptr %c, i64 232
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %t757 = add i64 %r756, -48
  %t758 = add i64 %t757, 8
  %r759.p = getelementptr inbounds i8, ptr %c, i64 80
  %r759 = load i64, ptr %r759.p, align 8, !alias.scope !3, !noalias !4
  %gmp760 = inttoptr i64 %t757 to ptr
  store i64 %r759, ptr %gmp760, align 1, !alias.scope !4, !noalias !3
  %r761.p = getelementptr inbounds i8, ptr %c, i64 88
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %gmp762 = inttoptr i64 %t758 to ptr
  store i64 %r761, ptr %gmp762, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c464 word 0xa93e37ac
  %r763.p = getelementptr inbounds i8, ptr %c, i64 232
  %r763 = load i64, ptr %r763.p, align 8, !alias.scope !3, !noalias !4
  %t764 = add i64 %r763, -32
  %t765 = add i64 %t764, 8
  %r766.p = getelementptr inbounds i8, ptr %c, i64 96
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %gmp767 = inttoptr i64 %t764 to ptr
  store i64 %r766, ptr %gmp767, align 1, !alias.scope !4, !noalias !3
  %r768.p = getelementptr inbounds i8, ptr %c, i64 104
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %gmp769 = inttoptr i64 %t765 to ptr
  store i64 %r768, ptr %gmp769, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c468 word 0xb50000af
  %r770.p = getelementptr inbounds i8, ptr %c, i64 120
  %r770 = load i64, ptr %r770.p, align 8, !alias.scope !3, !noalias !4
  %cmp771 = icmp ne i64 %r770, 0
  br i1 %cmp771, label %L_80077c47c, label %L_80077c46c_ft
L_80077c470:
  ; @pc 0x80077c470 word 0x910021ef
  %r772.p = getelementptr inbounds i8, ptr %c, i64 120
  %r772 = load i64, ptr %r772.p, align 8, !alias.scope !3, !noalias !4
  %t773 = add i64 %r772, 8
  %wp774 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t773, ptr %wp774, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c474
L_80077c474:
  ; @pc 0x80077c474 word 0xf94001ef
  %r775.p = getelementptr inbounds i8, ptr %c, i64 120
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %gmp776 = inttoptr i64 %r775 to ptr
  %gml777 = load i64, ptr %gmp776, align 1, !alias.scope !4, !noalias !3
  %wp778 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml777, ptr %wp778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c478 word 0xb4001b0f
  %r779.p = getelementptr inbounds i8, ptr %c, i64 120
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %cmp780 = icmp eq i64 %r779, 0
  br i1 %cmp780, label %L_80077c7d8, label %L_80077c47c
L_80077c47c:
  ; @pc 0x80077c47c word 0xf85c03b0
  %r781.p = getelementptr inbounds i8, ptr %c, i64 232
  %r781 = load i64, ptr %r781.p, align 8, !alias.scope !3, !noalias !4
  %t782 = add i64 %r781, -64
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i64, ptr %gmp783, align 1, !alias.scope !4, !noalias !3
  %wp785 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml784, ptr %wp785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c480 word 0xdac00e10
  %r786.p = getelementptr inbounds i8, ptr %c, i64 128
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %bsw787 = call i64 @llvm.bswap.i64(i64 %r786)
  %wp788 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw787, ptr %wp788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c484 word 0xf9400df1
  %r789.p = getelementptr inbounds i8, ptr %c, i64 120
  %r789 = load i64, ptr %r789.p, align 8, !alias.scope !3, !noalias !4
  %t790 = add i64 %r789, 24
  %gmp791 = inttoptr i64 %t790 to ptr
  %gml792 = load i64, ptr %gmp791, align 1, !alias.scope !4, !noalias !3
  %wp793 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml792, ptr %wp793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c488 word 0xdac00e31
  %r794.p = getelementptr inbounds i8, ptr %c, i64 136
  %r794 = load i64, ptr %r794.p, align 8, !alias.scope !3, !noalias !4
  %bsw795 = call i64 @llvm.bswap.i64(i64 %r794)
  %wp796 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw795, ptr %wp796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c48c word 0xeb11021f
  %r797.p = getelementptr inbounds i8, ptr %c, i64 128
  %r797 = load i64, ptr %r797.p, align 8, !alias.scope !3, !noalias !4
  %r798.p = getelementptr inbounds i8, ptr %c, i64 136
  %r798 = load i64, ptr %r798.p, align 8, !alias.scope !3, !noalias !4
  %t799 = sub i64 %r797, %r798
  %fn800 = icmp slt i64 %t799, 0
  %fz801 = icmp eq i64 %t799, 0
  %fc802 = icmp uge i64 %r797, %r798
  %fx1803 = xor i64 %r797, %r798
  %fx2804 = xor i64 %r797, %t799
  %fva805 = and i64 %fx1803, %fx2804
  %fv806 = icmp slt i64 %fva805, 0
  %nz807 = zext i1 %fn800 to i64
  %zz808 = zext i1 %fz801 to i64
  %cz809 = zext i1 %fc802 to i64
  %vz810 = zext i1 %fv806 to i64
  %ns811 = shl i64 %nz807, 31
  %zs812 = shl i64 %zz808, 30
  %cs813 = shl i64 %cz809, 29
  %vs814 = shl i64 %vz810, 28
  %nzor815 = or i64 %ns811, %zs812
  %cvor816 = or i64 %cs813, %vs814
  %nzcv817 = or i64 %nzor815, %cvor816
  %wp818 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv817, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c490 word 0x54000401
  %r819.p = getelementptr inbounds i8, ptr %c, i64 272
  %r819 = load i64, ptr %r819.p, align 8, !alias.scope !3, !noalias !4
  %fsh821 = lshr i64 %r819, 30
  %ftr822 = trunc i64 %fsh821 to i1
  %cond820 = xor i1 %ftr822, true
  br i1 %cond820, label %L_80077c510, label %L_80077c494_ft
L_80077c510:
  ; @pc 0x80077c510 word 0xeb11021f
  %r1032.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1032 = load i64, ptr %r1032.p, align 8, !alias.scope !3, !noalias !4
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %t1034 = sub i64 %r1032, %r1033
  %fn1035 = icmp slt i64 %t1034, 0
  %fz1036 = icmp eq i64 %t1034, 0
  %fc1037 = icmp uge i64 %r1032, %r1033
  %fx11038 = xor i64 %r1032, %r1033
  %fx21039 = xor i64 %r1032, %t1034
  %fva1040 = and i64 %fx11038, %fx21039
  %fv1041 = icmp slt i64 %fva1040, 0
  %nz1042 = zext i1 %fn1035 to i64
  %zz1043 = zext i1 %fz1036 to i64
  %cz1044 = zext i1 %fc1037 to i64
  %vz1045 = zext i1 %fv1041 to i64
  %ns1046 = shl i64 %nz1042, 31
  %zs1047 = shl i64 %zz1043, 30
  %cs1048 = shl i64 %cz1044, 29
  %vs1049 = shl i64 %vz1045, 28
  %nzor1050 = or i64 %ns1046, %zs1047
  %cvor1051 = or i64 %cs1048, %vs1049
  %nzcv1052 = or i64 %nzor1050, %cvor1051
  %wp1053 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1052, ptr %wp1053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c514 word 0x5a933670
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %c1055 = trunc i64 %r1054 to i32
  %r1056.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1056 = load i64, ptr %r1056.p, align 8, !alias.scope !3, !noalias !4
  %c1057 = trunc i64 %r1056 to i32
  %t1058 = sub i32 0, %c1057
  %r1059.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1059 = load i64, ptr %r1059.p, align 8, !alias.scope !3, !noalias !4
  %fsh1061 = lshr i64 %r1059, 29
  %ftr1062 = trunc i64 %fsh1061 to i1
  %cond1060 = xor i1 %ftr1062, true
  %sel1063 = select i1 %cond1060, i32 %c1055, i32 %t1058
  %c1064 = zext i32 %sel1063 to i64
  %wp1065 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1064, ptr %wp1065, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c518
L_80077c518:
  ; @pc 0x80077c518 word 0x37fffaf0
  %r1066.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1066 = load i64, ptr %r1066.p, align 8, !alias.scope !3, !noalias !4
  %t1067 = and i64 %r1066, 2147483648
  %cmp1068 = icmp ne i64 %t1067, 0
  br i1 %cmp1068, label %L_80077c474, label %L_80077c51c_ft
L_80077c5b0:
  ; @pc 0x80077c5b0 word 0xeb11021f
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %r1321.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1321 = load i64, ptr %r1321.p, align 8, !alias.scope !3, !noalias !4
  %t1322 = sub i64 %r1320, %r1321
  %fn1323 = icmp slt i64 %t1322, 0
  %fz1324 = icmp eq i64 %t1322, 0
  %fc1325 = icmp uge i64 %r1320, %r1321
  %fx11326 = xor i64 %r1320, %r1321
  %fx21327 = xor i64 %r1320, %t1322
  %fva1328 = and i64 %fx11326, %fx21327
  %fv1329 = icmp slt i64 %fva1328, 0
  %nz1330 = zext i1 %fn1323 to i64
  %zz1331 = zext i1 %fz1324 to i64
  %cz1332 = zext i1 %fc1325 to i64
  %vz1333 = zext i1 %fv1329 to i64
  %ns1334 = shl i64 %nz1330, 31
  %zs1335 = shl i64 %zz1331, 30
  %cs1336 = shl i64 %cz1332, 29
  %vs1337 = shl i64 %vz1333, 28
  %nzor1338 = or i64 %ns1334, %zs1335
  %cvor1339 = or i64 %cs1336, %vs1337
  %nzcv1340 = or i64 %nzor1338, %cvor1339
  %wp1341 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1340, ptr %wp1341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5b4 word 0x5a933670
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %c1343 = trunc i64 %r1342 to i32
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %c1345 = trunc i64 %r1344 to i32
  %t1346 = sub i32 0, %c1345
  %r1347.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1347 = load i64, ptr %r1347.p, align 8, !alias.scope !3, !noalias !4
  %fsh1349 = lshr i64 %r1347, 29
  %ftr1350 = trunc i64 %fsh1349 to i1
  %cond1348 = xor i1 %ftr1350, true
  %sel1351 = select i1 %cond1348, i32 %c1343, i32 %t1346
  %c1352 = zext i32 %sel1351 to i64
  %wp1353 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1352, ptr %wp1353, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c5b8
L_80077c5b8:
  ; @pc 0x80077c5b8 word 0x37fff5d0
  %r1354.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1354 = load i64, ptr %r1354.p, align 8, !alias.scope !3, !noalias !4
  %t1355 = and i64 %r1354, 2147483648
  %cmp1356 = icmp ne i64 %t1355, 0
  br i1 %cmp1356, label %L_80077c470, label %L_80077c5bc_ft
L_80077c5d4:
  ; @pc 0x80077c5d4 word 0xb98059e2
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %t1388 = add i64 %r1387, 88
  %gmp1389 = inttoptr i64 %t1388 to ptr
  %gml1390 = load i32, ptr %gmp1389, align 1, !alias.scope !4, !noalias !3
  %c1391 = sext i32 %gml1390 to i64
  %wp1392 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1391, ptr %wp1392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5d8 word 0xf8627a02
  %r1393.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1393 = load i64, ptr %r1393.p, align 8, !alias.scope !3, !noalias !4
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %t1395 = shl i64 %r1394, 3
  %t1396 = add i64 %r1393, %t1395
  %gmp1397 = inttoptr i64 %t1396 to ptr
  %gml1398 = load i64, ptr %gmp1397, align 1, !alias.scope !4, !noalias !3
  %wp1399 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml1398, ptr %wp1399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5dc word 0xf9400043
  %r1400.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1400 = load i64, ptr %r1400.p, align 8, !alias.scope !3, !noalias !4
  %gmp1401 = inttoptr i64 %r1400 to ptr
  %gml1402 = load i64, ptr %gmp1401, align 1, !alias.scope !4, !noalias !3
  %wp1403 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml1402, ptr %wp1403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5e0 word 0xeb03023f
  %r1404.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1404 = load i64, ptr %r1404.p, align 8, !alias.scope !3, !noalias !4
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %t1406 = sub i64 %r1404, %r1405
  %fn1407 = icmp slt i64 %t1406, 0
  %fz1408 = icmp eq i64 %t1406, 0
  %fc1409 = icmp uge i64 %r1404, %r1405
  %fx11410 = xor i64 %r1404, %r1405
  %fx21411 = xor i64 %r1404, %t1406
  %fva1412 = and i64 %fx11410, %fx21411
  %fv1413 = icmp slt i64 %fva1412, 0
  %nz1414 = zext i1 %fn1407 to i64
  %zz1415 = zext i1 %fz1408 to i64
  %cz1416 = zext i1 %fc1409 to i64
  %vz1417 = zext i1 %fv1413 to i64
  %ns1418 = shl i64 %nz1414, 31
  %zs1419 = shl i64 %zz1415, 30
  %cs1420 = shl i64 %cz1416, 29
  %vs1421 = shl i64 %vz1417, 28
  %nzor1422 = or i64 %ns1418, %zs1419
  %cvor1423 = or i64 %cs1420, %vs1421
  %nzcv1424 = or i64 %nzor1422, %cvor1423
  %wp1425 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1424, ptr %wp1425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5e4 word 0x54004d40
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %fsh1428 = lshr i64 %r1426, 30
  %cond1427 = trunc i64 %fsh1428 to i1
  br i1 %cond1427, label %L_80077cf8c, label %L_80077c5e8_ft
L_80077c6a8:
  ; @pc 0x80077c6a8 word 0xf9400444
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %t1914 = add i64 %r1913, 8
  %gmp1915 = inttoptr i64 %t1914 to ptr
  %gml1916 = load i64, ptr %gmp1915, align 1, !alias.scope !4, !noalias !3
  %wp1917 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml1916, ptr %wp1917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6ac word 0xeb04025f
  %r1918.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1918 = load i64, ptr %r1918.p, align 8, !alias.scope !3, !noalias !4
  %r1919.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1919 = load i64, ptr %r1919.p, align 8, !alias.scope !3, !noalias !4
  %t1920 = sub i64 %r1918, %r1919
  %fn1921 = icmp slt i64 %t1920, 0
  %fz1922 = icmp eq i64 %t1920, 0
  %fc1923 = icmp uge i64 %r1918, %r1919
  %fx11924 = xor i64 %r1918, %r1919
  %fx21925 = xor i64 %r1918, %t1920
  %fva1926 = and i64 %fx11924, %fx21925
  %fv1927 = icmp slt i64 %fva1926, 0
  %nz1928 = zext i1 %fn1921 to i64
  %zz1929 = zext i1 %fz1922 to i64
  %cz1930 = zext i1 %fc1923 to i64
  %vz1931 = zext i1 %fv1927 to i64
  %ns1932 = shl i64 %nz1928, 31
  %zs1933 = shl i64 %zz1929, 30
  %cs1934 = shl i64 %cz1930, 29
  %vs1935 = shl i64 %vz1931, 28
  %nzor1936 = or i64 %ns1932, %zs1933
  %cvor1937 = or i64 %cs1934, %vs1935
  %nzcv1938 = or i64 %nzor1936, %cvor1937
  %wp1939 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1938, ptr %wp1939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6b0 word 0x54000540
  %r1940.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1940 = load i64, ptr %r1940.p, align 8, !alias.scope !3, !noalias !4
  %fsh1942 = lshr i64 %r1940, 30
  %cond1941 = trunc i64 %fsh1942 to i1
  br i1 %cond1941, label %L_80077c758, label %L_80077c6b4_ft
L_80077c754:
  ; @pc 0x80077c754 word 0x0a040063
  %r2347.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2347 = load i64, ptr %r2347.p, align 8, !alias.scope !3, !noalias !4
  %c2348 = trunc i64 %r2347 to i32
  %r2349.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2349 = load i64, ptr %r2349.p, align 8, !alias.scope !3, !noalias !4
  %c2350 = trunc i64 %r2349 to i32
  %t2351 = and i32 %c2350, %c2348
  %c2352 = zext i32 %t2351 to i64
  %wp2353 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2352, ptr %wp2353, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c758
L_80077c758:
  ; @pc 0x80077c758 word 0xf9400844
  %r2354.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2354 = load i64, ptr %r2354.p, align 8, !alias.scope !3, !noalias !4
  %t2355 = add i64 %r2354, 16
  %gmp2356 = inttoptr i64 %t2355 to ptr
  %gml2357 = load i64, ptr %gmp2356, align 1, !alias.scope !4, !noalias !3
  %wp2358 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml2357, ptr %wp2358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c75c word 0xeb04001f
  %r2359.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2359 = load i64, ptr %r2359.p, align 8, !alias.scope !3, !noalias !4
  %r2360.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2360 = load i64, ptr %r2360.p, align 8, !alias.scope !3, !noalias !4
  %t2361 = sub i64 %r2359, %r2360
  %fn2362 = icmp slt i64 %t2361, 0
  %fz2363 = icmp eq i64 %t2361, 0
  %fc2364 = icmp uge i64 %r2359, %r2360
  %fx12365 = xor i64 %r2359, %r2360
  %fx22366 = xor i64 %r2359, %t2361
  %fva2367 = and i64 %fx12365, %fx22366
  %fv2368 = icmp slt i64 %fva2367, 0
  %nz2369 = zext i1 %fn2362 to i64
  %zz2370 = zext i1 %fz2363 to i64
  %cz2371 = zext i1 %fc2364 to i64
  %vz2372 = zext i1 %fv2368 to i64
  %ns2373 = shl i64 %nz2369, 31
  %zs2374 = shl i64 %zz2370, 30
  %cs2375 = shl i64 %cz2371, 29
  %vs2376 = shl i64 %vz2372, 28
  %nzor2377 = or i64 %ns2373, %zs2374
  %cvor2378 = or i64 %cs2375, %vs2376
  %nzcv2379 = or i64 %nzor2377, %cvor2378
  %wp2380 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2379, ptr %wp2380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c760 word 0x54000380
  %r2381.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2381 = load i64, ptr %r2381.p, align 8, !alias.scope !3, !noalias !4
  %fsh2383 = lshr i64 %r2381, 30
  %cond2382 = trunc i64 %fsh2383 to i1
  br i1 %cond2382, label %L_80077c7d0, label %L_80077c764_ft
L_80077c790:
  ; @pc 0x80077c790 word 0x937e7cc7
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %ror2469 = call i64 @llvm.fshr.i64(i64 %r2468, i64 %r2468, i64 62)
  %t2470 = lshr i64 %r2468, 31
  %t2471 = and i64 %t2470, 1
  %t2472 = sub i64 0, %t2471
  %t2473 = and i64 %t2472, -17179869184
  %t2474 = and i64 %ror2469, 17179869180
  %t2475 = or i64 %t2473, %t2474
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %t2475, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c794 word 0xb8676835
  %r2477.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2477 = load i64, ptr %r2477.p, align 8, !alias.scope !3, !noalias !4
  %r2478.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2478 = load i64, ptr %r2478.p, align 8, !alias.scope !3, !noalias !4
  %t2479 = add i64 %r2477, %r2478
  %gmp2480 = inttoptr i64 %t2479 to ptr
  %gml2481 = load i32, ptr %gmp2480, align 1, !alias.scope !4, !noalias !3
  %c2482 = zext i32 %gml2481 to i64
  %wp2483 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c2482, ptr %wp2483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c798 word 0x8b050087
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %r2485.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2485 = load i64, ptr %r2485.p, align 8, !alias.scope !3, !noalias !4
  %t2486 = add i64 %r2484, %r2485
  %wp2487 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %t2486, ptr %wp2487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c79c word 0xb94014f7
  %r2488.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2488 = load i64, ptr %r2488.p, align 8, !alias.scope !3, !noalias !4
  %t2489 = add i64 %r2488, 20
  %gmp2490 = inttoptr i64 %t2489 to ptr
  %gml2491 = load i32, ptr %gmp2490, align 1, !alias.scope !4, !noalias !3
  %c2492 = zext i32 %gml2491 to i64
  %wp2493 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2492, ptr %wp2493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7a0 word 0x6b1502ff
  %r2494.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2494 = load i64, ptr %r2494.p, align 8, !alias.scope !3, !noalias !4
  %c2495 = trunc i64 %r2494 to i32
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %c2497 = trunc i64 %r2496 to i32
  %t2498 = sub i32 %c2495, %c2497
  %fn2499 = icmp slt i32 %t2498, 0
  %fz2500 = icmp eq i32 %t2498, 0
  %fc2501 = icmp uge i32 %c2495, %c2497
  %fx12502 = xor i32 %c2495, %c2497
  %fx22503 = xor i32 %c2495, %t2498
  %fva2504 = and i32 %fx12502, %fx22503
  %fv2505 = icmp slt i32 %fva2504, 0
  %nz2506 = zext i1 %fn2499 to i64
  %zz2507 = zext i1 %fz2500 to i64
  %cz2508 = zext i1 %fc2501 to i64
  %vz2509 = zext i1 %fv2505 to i64
  %ns2510 = shl i64 %nz2506, 31
  %zs2511 = shl i64 %zz2507, 30
  %cs2512 = shl i64 %cz2508, 29
  %vs2513 = shl i64 %vz2509, 28
  %nzor2514 = or i64 %ns2510, %zs2511
  %cvor2515 = or i64 %cs2512, %vs2513
  %nzcv2516 = or i64 %nzor2514, %cvor2515
  %wp2517 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2516, ptr %wp2517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7a4 word 0x54000861
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %fsh2520 = lshr i64 %r2518, 30
  %ftr2521 = trunc i64 %fsh2520 to i1
  %cond2519 = xor i1 %ftr2521, true
  br i1 %cond2519, label %L_80077c8b0, label %L_80077c7a8_ft
L_80077c7d0:
  ; @pc 0x80077c7d0 word 0x36000703
  %r2610.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2610 = load i64, ptr %r2610.p, align 8, !alias.scope !3, !noalias !4
  %t2611 = and i64 %r2610, 1
  %cmp2612 = icmp eq i64 %t2611, 0
  br i1 %cmp2612, label %L_80077c8b0, label %L_80077c7d4_ft
L_80077c7d8:
  ; @pc 0x80077c7d8 word 0xf9402bf0
  %r2619.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2619 = load i64, ptr %r2619.p, align 8, !alias.scope !3, !noalias !4
  %t2620 = add i64 %r2619, 80
  %gmp2621 = inttoptr i64 %t2620 to ptr
  %gml2622 = load i64, ptr %gmp2621, align 1, !alias.scope !4, !noalias !3
  %wp2623 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml2622, ptr %wp2623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7dc word 0xb4003bf0
  %r2624.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2624 = load i64, ptr %r2624.p, align 8, !alias.scope !3, !noalias !4
  %cmp2625 = icmp eq i64 %r2624, 0
  br i1 %cmp2625, label %L_80077cf58, label %L_80077c7e0_ft
L_80077c7e4:
  ; @pc 0x80077c7e4 word 0x8b0f1e0f
  %r2629.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2629 = load i64, ptr %r2629.p, align 8, !alias.scope !3, !noalias !4
  %r2630.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2630 = load i64, ptr %r2630.p, align 8, !alias.scope !3, !noalias !4
  %t2631 = shl i64 %r2630, 7
  %t2632 = add i64 %r2629, %t2631
  %wp2633 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2632, ptr %wp2633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7e8 word 0xaa0f03e1
  %r2634.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2634 = load i64, ptr %r2634.p, align 8, !alias.scope !3, !noalias !4
  %t2635 = or i64 0, %r2634
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2635, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7ec word 0xaa0f03f0
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %t2638 = or i64 0, %r2637
  %wp2639 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2638, ptr %wp2639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7f0 word 0xa902a9e8
  %r2640.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2640 = load i64, ptr %r2640.p, align 8, !alias.scope !3, !noalias !4
  %t2641 = add i64 %r2640, 40
  %t2642 = add i64 %t2641, 8
  %r2643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2643 = load i64, ptr %r2643.p, align 8, !alias.scope !3, !noalias !4
  %gmp2644 = inttoptr i64 %t2641 to ptr
  store i64 %r2643, ptr %gmp2644, align 1, !alias.scope !4, !noalias !3
  %r2645.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2645 = load i64, ptr %r2645.p, align 8, !alias.scope !3, !noalias !4
  %gmp2646 = inttoptr i64 %t2642 to ptr
  store i64 %r2645, ptr %gmp2646, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c7f4 word 0xb0018c08
  %wp2647 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419494912, ptr %wp2647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7f8 word 0x910a0108
  %r2648.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2648 = load i64, ptr %r2648.p, align 8, !alias.scope !3, !noalias !4
  %t2649 = add i64 %r2648, 640
  %wp2650 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2649, ptr %wp2650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7fc word 0xa9017dff
  %r2651.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2651 = load i64, ptr %r2651.p, align 8, !alias.scope !3, !noalias !4
  %t2652 = add i64 %r2651, 16
  %t2653 = add i64 %t2652, 8
  %gmp2654 = inttoptr i64 %t2652 to ptr
  store i64 0, ptr %gmp2654, align 1, !alias.scope !4, !noalias !3
  %gmp2655 = inttoptr i64 %t2653 to ptr
  store i64 0, ptr %gmp2655, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c800 word 0xf8008c3f
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %t2657 = add i64 %r2656, 8
  %gmp2658 = inttoptr i64 %t2657 to ptr
  store i64 0, ptr %gmp2658, align 1, !alias.scope !4, !noalias !3
  %wp2659 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2657, ptr %wp2659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c804 word 0xf8020e09
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %t2661 = add i64 %r2660, 32
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %gmp2663 = inttoptr i64 %t2661 to ptr
  store i64 %r2662, ptr %gmp2663, align 1, !alias.scope !4, !noalias !3
  %wp2664 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2661, ptr %wp2664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c808 word 0xb90059fb
  %r2665.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2665 = load i64, ptr %r2665.p, align 8, !alias.scope !3, !noalias !4
  %t2666 = add i64 %r2665, 88
  %r2667.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2667 = load i64, ptr %r2667.p, align 8, !alias.scope !3, !noalias !4
  %c2668 = trunc i64 %r2667 to i32
  %gmp2669 = inttoptr i64 %t2666 to ptr
  store i32 %c2668, ptr %gmp2669, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c80c word 0xf90025ed
  %r2670.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2670 = load i64, ptr %r2670.p, align 8, !alias.scope !3, !noalias !4
  %t2671 = add i64 %r2670, 72
  %r2672.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2672 = load i64, ptr %r2672.p, align 8, !alias.scope !3, !noalias !4
  %gmp2673 = inttoptr i64 %t2671 to ptr
  store i64 %r2672, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c810 word 0xb90051ee
  %r2674.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2674 = load i64, ptr %r2674.p, align 8, !alias.scope !3, !noalias !4
  %t2675 = add i64 %r2674, 80
  %r2676.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2676 = load i64, ptr %r2676.p, align 8, !alias.scope !3, !noalias !4
  %c2677 = trunc i64 %r2676 to i32
  %gmp2678 = inttoptr i64 %t2675 to ptr
  store i32 %c2677, ptr %gmp2678, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c814 word 0xf90001e8
  %r2679.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2679 = load i64, ptr %r2679.p, align 8, !alias.scope !3, !noalias !4
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %gmp2681 = inttoptr i64 %r2679 to ptr
  store i64 %r2680, ptr %gmp2681, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c818 word 0xa903b1eb
  %r2682.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2682 = load i64, ptr %r2682.p, align 8, !alias.scope !3, !noalias !4
  %t2683 = add i64 %r2682, 56
  %t2684 = add i64 %t2683, 8
  %r2685.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2685 = load i64, ptr %r2685.p, align 8, !alias.scope !3, !noalias !4
  %gmp2686 = inttoptr i64 %t2683 to ptr
  store i64 %r2685, ptr %gmp2686, align 1, !alias.scope !4, !noalias !3
  %r2687.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2687 = load i64, ptr %r2687.p, align 8, !alias.scope !3, !noalias !4
  %gmp2688 = inttoptr i64 %t2684 to ptr
  store i64 %r2687, ptr %gmp2688, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c81c word 0xa9067dff
  %r2689.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2689 = load i64, ptr %r2689.p, align 8, !alias.scope !3, !noalias !4
  %t2690 = add i64 %r2689, 96
  %t2691 = add i64 %t2690, 8
  %gmp2692 = inttoptr i64 %t2690 to ptr
  store i64 0, ptr %gmp2692, align 1, !alias.scope !4, !noalias !3
  %gmp2693 = inttoptr i64 %t2691 to ptr
  store i64 0, ptr %gmp2693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c820 word 0xa9077dff
  %r2694.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2694 = load i64, ptr %r2694.p, align 8, !alias.scope !3, !noalias !4
  %t2695 = add i64 %r2694, 112
  %t2696 = add i64 %t2695, 8
  %gmp2697 = inttoptr i64 %t2695 to ptr
  store i64 0, ptr %gmp2697, align 1, !alias.scope !4, !noalias !3
  %gmp2698 = inttoptr i64 %t2696 to ptr
  store i64 0, ptr %gmp2698, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c824 word 0xb94073e8
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %t2700 = add i64 %r2699, 112
  %gmp2701 = inttoptr i64 %t2700 to ptr
  %gml2702 = load i32, ptr %gmp2701, align 1, !alias.scope !4, !noalias !3
  %c2703 = zext i32 %gml2702 to i64
  %wp2704 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2703, ptr %wp2704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c828 word 0x11000508
  %r2705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2705 = load i64, ptr %r2705.p, align 8, !alias.scope !3, !noalias !4
  %c2706 = trunc i64 %r2705 to i32
  %t2707 = add i32 %c2706, 1
  %c2708 = zext i32 %t2707 to i64
  %wp2709 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2708, ptr %wp2709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c82c word 0xb90073e8
  %r2710.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2710 = load i64, ptr %r2710.p, align 8, !alias.scope !3, !noalias !4
  %t2711 = add i64 %r2710, 112
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %c2713 = trunc i64 %r2712 to i32
  %gmp2714 = inttoptr i64 %t2711 to ptr
  store i32 %c2713, ptr %gmp2714, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c830 word 0x9101a3e8
  %r2715.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2715 = load i64, ptr %r2715.p, align 8, !alias.scope !3, !noalias !4
  %t2716 = add i64 %r2715, 104
  %wp2717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2716, ptr %wp2717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c834 word 0xf9003de8
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %t2719 = add i64 %r2718, 120
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %gmp2721 = inttoptr i64 %t2719 to ptr
  store i64 %r2720, ptr %gmp2721, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c838 word 0xf9401de8
  %r2722.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2722 = load i64, ptr %r2722.p, align 8, !alias.scope !3, !noalias !4
  %t2723 = add i64 %r2722, 56
  %gmp2724 = inttoptr i64 %t2723 to ptr
  %gml2725 = load i64, ptr %gmp2724, align 1, !alias.scope !4, !noalias !3
  %wp2726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2725, ptr %wp2726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c83c word 0xf81d83a8
  %r2727.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2727 = load i64, ptr %r2727.p, align 8, !alias.scope !3, !noalias !4
  %t2728 = add i64 %r2727, -40
  %r2729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2729 = load i64, ptr %r2729.p, align 8, !alias.scope !3, !noalias !4
  %gmp2730 = inttoptr i64 %t2728 to ptr
  store i64 %r2729, ptr %gmp2730, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c840 word 0xf94021e8
  %r2731.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2731 = load i64, ptr %r2731.p, align 8, !alias.scope !3, !noalias !4
  %t2732 = add i64 %r2731, 64
  %gmp2733 = inttoptr i64 %t2732 to ptr
  %gml2734 = load i64, ptr %gmp2733, align 1, !alias.scope !4, !noalias !3
  %wp2735 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2734, ptr %wp2735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c844 word 0xf81e03a8
  %r2736.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2736 = load i64, ptr %r2736.p, align 8, !alias.scope !3, !noalias !4
  %t2737 = add i64 %r2736, -32
  %r2738.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2738 = load i64, ptr %r2738.p, align 8, !alias.scope !3, !noalias !4
  %gmp2739 = inttoptr i64 %t2737 to ptr
  store i64 %r2738, ptr %gmp2739, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c848 word 0xf94025e8
  %r2740.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2740 = load i64, ptr %r2740.p, align 8, !alias.scope !3, !noalias !4
  %t2741 = add i64 %r2740, 72
  %gmp2742 = inttoptr i64 %t2741 to ptr
  %gml2743 = load i64, ptr %gmp2742, align 1, !alias.scope !4, !noalias !3
  %wp2744 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2743, ptr %wp2744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c84c word 0xf81e83a8
  %r2745.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2745 = load i64, ptr %r2745.p, align 8, !alias.scope !3, !noalias !4
  %t2746 = add i64 %r2745, -24
  %r2747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2747 = load i64, ptr %r2747.p, align 8, !alias.scope !3, !noalias !4
  %gmp2748 = inttoptr i64 %t2746 to ptr
  store i64 %r2747, ptr %gmp2748, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c850 word 0xf94029e8
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %t2750 = add i64 %r2749, 80
  %gmp2751 = inttoptr i64 %t2750 to ptr
  %gml2752 = load i64, ptr %gmp2751, align 1, !alias.scope !4, !noalias !3
  %wp2753 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2752, ptr %wp2753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c854 word 0xf81f03a8
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %t2755 = add i64 %r2754, -16
  %r2756.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2756 = load i64, ptr %r2756.p, align 8, !alias.scope !3, !noalias !4
  %gmp2757 = inttoptr i64 %t2755 to ptr
  store i64 %r2756, ptr %gmp2757, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c858 word 0xf9400208
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %gmp2759 = inttoptr i64 %r2758 to ptr
  %gml2760 = load i64, ptr %gmp2759, align 1, !alias.scope !4, !noalias !3
  %wp2761 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2760, ptr %wp2761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c85c word 0xf81c03a8
  %r2762.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2762 = load i64, ptr %r2762.p, align 8, !alias.scope !3, !noalias !4
  %t2763 = add i64 %r2762, -64
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %gmp2765 = inttoptr i64 %t2763 to ptr
  store i64 %r2764, ptr %gmp2765, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c860 word 0xf94015e8
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %t2767 = add i64 %r2766, 40
  %gmp2768 = inttoptr i64 %t2767 to ptr
  %gml2769 = load i64, ptr %gmp2768, align 1, !alias.scope !4, !noalias !3
  %wp2770 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2769, ptr %wp2770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c864 word 0xf81c83a8
  %r2771.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2771 = load i64, ptr %r2771.p, align 8, !alias.scope !3, !noalias !4
  %t2772 = add i64 %r2771, -56
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %gmp2774 = inttoptr i64 %t2772 to ptr
  store i64 %r2773, ptr %gmp2774, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c868 word 0xf94019e8
  %r2775.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2775 = load i64, ptr %r2775.p, align 8, !alias.scope !3, !noalias !4
  %t2776 = add i64 %r2775, 48
  %gmp2777 = inttoptr i64 %t2776 to ptr
  %gml2778 = load i64, ptr %gmp2777, align 1, !alias.scope !4, !noalias !3
  %wp2779 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2778, ptr %wp2779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c86c word 0xf81d03a8
  %r2780.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2780 = load i64, ptr %r2780.p, align 8, !alias.scope !3, !noalias !4
  %t2781 = add i64 %r2780, -48
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %gmp2783 = inttoptr i64 %t2781 to ptr
  store i64 %r2782, ptr %gmp2783, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c870 word 0xf94043e8
  %r2784.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2784 = load i64, ptr %r2784.p, align 8, !alias.scope !3, !noalias !4
  %t2785 = add i64 %r2784, 128
  %gmp2786 = inttoptr i64 %t2785 to ptr
  %gml2787 = load i64, ptr %gmp2786, align 1, !alias.scope !4, !noalias !3
  %wp2788 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2787, ptr %wp2788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c874 word 0xb5000348
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %cmp2790 = icmp ne i64 %r2789, 0
  br i1 %cmp2790, label %L_80077c8dc, label %L_80077c878
L_80077c878:
  ; @pc 0x80077c878 word 0xf94017e8
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %t2792 = add i64 %r2791, 40
  %gmp2793 = inttoptr i64 %t2792 to ptr
  %gml2794 = load i64, ptr %gmp2793, align 1, !alias.scope !4, !noalias !3
  %wp2795 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2794, ptr %wp2795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c87c word 0xf90031e8
  %r2796.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2796 = load i64, ptr %r2796.p, align 8, !alias.scope !3, !noalias !4
  %t2797 = add i64 %r2796, 96
  %r2798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2798 = load i64, ptr %r2798.p, align 8, !alias.scope !3, !noalias !4
  %gmp2799 = inttoptr i64 %t2797 to ptr
  store i64 %r2798, ptr %gmp2799, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c880 word 0xb9408be8
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %t2801 = add i64 %r2800, 136
  %gmp2802 = inttoptr i64 %t2801 to ptr
  %gml2803 = load i32, ptr %gmp2802, align 1, !alias.scope !4, !noalias !3
  %c2804 = zext i32 %gml2803 to i64
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2804, ptr %wp2805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c884 word 0xf94043eb
  %r2806.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2806 = load i64, ptr %r2806.p, align 8, !alias.scope !3, !noalias !4
  %t2807 = add i64 %r2806, 128
  %gmp2808 = inttoptr i64 %t2807 to ptr
  %gml2809 = load i64, ptr %gmp2808, align 1, !alias.scope !4, !noalias !3
  %wp2810 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2809, ptr %wp2810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c888 word 0x11000508
  %r2811.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2811 = load i64, ptr %r2811.p, align 8, !alias.scope !3, !noalias !4
  %c2812 = trunc i64 %r2811 to i32
  %t2813 = add i32 %c2812, 1
  %c2814 = zext i32 %t2813 to i64
  %wp2815 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2814, ptr %wp2815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c88c word 0xb9008be8
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %t2817 = add i64 %r2816, 136
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %c2819 = trunc i64 %r2818 to i32
  %gmp2820 = inttoptr i64 %t2817 to ptr
  store i32 %c2819, ptr %gmp2820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c890 word 0xb40001ab
  %r2821.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2821 = load i64, ptr %r2821.p, align 8, !alias.scope !3, !noalias !4
  %cmp2822 = icmp eq i64 %r2821, 0
  br i1 %cmp2822, label %L_80077c8c4, label %L_80077c894_ft
L_80077c8a0:
  ; @pc 0x80077c8a0 word 0x2a1f03f0
  %t2828 = or i32 0, 0
  %c2829 = zext i32 %t2828 to i64
  %wp2830 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2829, ptr %wp2830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8a4 word 0x17ffff1d
  br label %L_80077c518
L_80077c8a8:
  ; @pc 0x80077c8a8 word 0x2a1f03f0
  %t2831 = or i32 0, 0
  %c2832 = zext i32 %t2831 to i64
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8ac word 0x17ffff43
  br label %L_80077c5b8
L_80077c8b0:
  ; @pc 0x80077c8b0 word 0xf94035ef
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %t2835 = add i64 %r2834, 104
  %gmp2836 = inttoptr i64 %t2835 to ptr
  %gml2837 = load i64, ptr %gmp2836, align 1, !alias.scope !4, !noalias !3
  %wp2838 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml2837, ptr %wp2838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8b4 word 0xb5ffe90f
  %r2839.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2839 = load i64, ptr %r2839.p, align 8, !alias.scope !3, !noalias !4
  %cmp2840 = icmp ne i64 %r2839, 0
  br i1 %cmp2840, label %L_80077c5d4, label %L_80077c8b8_ft
L_80077c8bc:
  ; @pc 0x80077c8bc word 0x2a1f03e3
  %t2841 = or i32 0, 0
  %c2842 = zext i32 %t2841 to i64
  %wp2843 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2842, ptr %wp2843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8c0 word 0x17ffff7a
  br label %L_80077c6a8
L_80077c8c4:
  ; @pc 0x80077c8c4 word 0xf90043e1
  %r2844.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2844 = load i64, ptr %r2844.p, align 8, !alias.scope !3, !noalias !4
  %t2845 = add i64 %r2844, 128
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %gmp2847 = inttoptr i64 %t2845 to ptr
  store i64 %r2846, ptr %gmp2847, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c8c8 word 0x140000ca
  br label %L_80077cbf0
L_80077c8d0:
  ; @pc 0x80077c8d0 word 0x91002108
  %r2848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2848 = load i64, ptr %r2848.p, align 8, !alias.scope !3, !noalias !4
  %t2849 = add i64 %r2848, 8
  %wp2850 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2849, ptr %wp2850, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c8d4
L_80077c8d4:
  ; @pc 0x80077c8d4 word 0xf9400108
  %r2851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2851 = load i64, ptr %r2851.p, align 8, !alias.scope !3, !noalias !4
  %gmp2852 = inttoptr i64 %r2851 to ptr
  %gml2853 = load i64, ptr %gmp2852, align 1, !alias.scope !4, !noalias !3
  %wp2854 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2853, ptr %wp2854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8d8 word 0xb4fffd08
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %cmp2856 = icmp eq i64 %r2855, 0
  br i1 %cmp2856, label %L_80077c878, label %L_80077c8dc
L_80077c8dc:
  ; @pc 0x80077c8dc word 0xf85c03a9
  %r2857.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2857 = load i64, ptr %r2857.p, align 8, !alias.scope !3, !noalias !4
  %t2858 = add i64 %r2857, -64
  %gmp2859 = inttoptr i64 %t2858 to ptr
  %gml2860 = load i64, ptr %gmp2859, align 1, !alias.scope !4, !noalias !3
  %wp2861 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2860, ptr %wp2861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8e0 word 0xdac00d29
  %r2862.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2862 = load i64, ptr %r2862.p, align 8, !alias.scope !3, !noalias !4
  %bsw2863 = call i64 @llvm.bswap.i64(i64 %r2862)
  %wp2864 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw2863, ptr %wp2864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8e4 word 0xf9400d0a
  %r2865.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2865 = load i64, ptr %r2865.p, align 8, !alias.scope !3, !noalias !4
  %t2866 = add i64 %r2865, 24
  %gmp2867 = inttoptr i64 %t2866 to ptr
  %gml2868 = load i64, ptr %gmp2867, align 1, !alias.scope !4, !noalias !3
  %wp2869 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2868, ptr %wp2869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8e8 word 0xdac00d4a
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %bsw2871 = call i64 @llvm.bswap.i64(i64 %r2870)
  %wp2872 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw2871, ptr %wp2872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8ec word 0xeb0a013f
  %r2873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2873 = load i64, ptr %r2873.p, align 8, !alias.scope !3, !noalias !4
  %r2874.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2874 = load i64, ptr %r2874.p, align 8, !alias.scope !3, !noalias !4
  %t2875 = sub i64 %r2873, %r2874
  %fn2876 = icmp slt i64 %t2875, 0
  %fz2877 = icmp eq i64 %t2875, 0
  %fc2878 = icmp uge i64 %r2873, %r2874
  %fx12879 = xor i64 %r2873, %r2874
  %fx22880 = xor i64 %r2873, %t2875
  %fva2881 = and i64 %fx12879, %fx22880
  %fv2882 = icmp slt i64 %fva2881, 0
  %nz2883 = zext i1 %fn2876 to i64
  %zz2884 = zext i1 %fz2877 to i64
  %cz2885 = zext i1 %fc2878 to i64
  %vz2886 = zext i1 %fv2882 to i64
  %ns2887 = shl i64 %nz2883, 31
  %zs2888 = shl i64 %zz2884, 30
  %cs2889 = shl i64 %cz2885, 29
  %vs2890 = shl i64 %vz2886, 28
  %nzor2891 = or i64 %ns2887, %zs2888
  %cvor2892 = or i64 %cs2889, %vs2890
  %nzcv2893 = or i64 %nzor2891, %cvor2892
  %wp2894 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2893, ptr %wp2894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8f0 word 0x54000401
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %fsh2897 = lshr i64 %r2895, 30
  %ftr2898 = trunc i64 %fsh2897 to i1
  %cond2896 = xor i1 %ftr2898, true
  br i1 %cond2896, label %L_80077c970, label %L_80077c8f4_ft
L_80077c970:
  ; @pc 0x80077c970 word 0xeb0a013f
  %r3108.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3108 = load i64, ptr %r3108.p, align 8, !alias.scope !3, !noalias !4
  %r3109.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3109 = load i64, ptr %r3109.p, align 8, !alias.scope !3, !noalias !4
  %t3110 = sub i64 %r3108, %r3109
  %fn3111 = icmp slt i64 %t3110, 0
  %fz3112 = icmp eq i64 %t3110, 0
  %fc3113 = icmp uge i64 %r3108, %r3109
  %fx13114 = xor i64 %r3108, %r3109
  %fx23115 = xor i64 %r3108, %t3110
  %fva3116 = and i64 %fx13114, %fx23115
  %fv3117 = icmp slt i64 %fva3116, 0
  %nz3118 = zext i1 %fn3111 to i64
  %zz3119 = zext i1 %fz3112 to i64
  %cz3120 = zext i1 %fc3113 to i64
  %vz3121 = zext i1 %fv3117 to i64
  %ns3122 = shl i64 %nz3118, 31
  %zs3123 = shl i64 %zz3119, 30
  %cs3124 = shl i64 %cz3120, 29
  %vs3125 = shl i64 %vz3121, 28
  %nzor3126 = or i64 %ns3122, %zs3123
  %cvor3127 = or i64 %cs3124, %vs3125
  %nzcv3128 = or i64 %nzor3126, %cvor3127
  %wp3129 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3128, ptr %wp3129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c974 word 0x5a933669
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %c3131 = trunc i64 %r3130 to i32
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %c3133 = trunc i64 %r3132 to i32
  %t3134 = sub i32 0, %c3133
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %fsh3137 = lshr i64 %r3135, 29
  %ftr3138 = trunc i64 %fsh3137 to i1
  %cond3136 = xor i1 %ftr3138, true
  %sel3139 = select i1 %cond3136, i32 %c3131, i32 %t3134
  %c3140 = zext i32 %sel3139 to i64
  %wp3141 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3140, ptr %wp3141, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c978
L_80077c978:
  ; @pc 0x80077c978 word 0x37fffae9
  %r3142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3142 = load i64, ptr %r3142.p, align 8, !alias.scope !3, !noalias !4
  %t3143 = and i64 %r3142, 2147483648
  %cmp3144 = icmp ne i64 %t3143, 0
  br i1 %cmp3144, label %L_80077c8d4, label %L_80077c97c_ft
L_80077ca10:
  ; @pc 0x80077ca10 word 0xeb0a013f
  %r3396.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3396 = load i64, ptr %r3396.p, align 8, !alias.scope !3, !noalias !4
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %t3398 = sub i64 %r3396, %r3397
  %fn3399 = icmp slt i64 %t3398, 0
  %fz3400 = icmp eq i64 %t3398, 0
  %fc3401 = icmp uge i64 %r3396, %r3397
  %fx13402 = xor i64 %r3396, %r3397
  %fx23403 = xor i64 %r3396, %t3398
  %fva3404 = and i64 %fx13402, %fx23403
  %fv3405 = icmp slt i64 %fva3404, 0
  %nz3406 = zext i1 %fn3399 to i64
  %zz3407 = zext i1 %fz3400 to i64
  %cz3408 = zext i1 %fc3401 to i64
  %vz3409 = zext i1 %fv3405 to i64
  %ns3410 = shl i64 %nz3406, 31
  %zs3411 = shl i64 %zz3407, 30
  %cs3412 = shl i64 %cz3408, 29
  %vs3413 = shl i64 %vz3409, 28
  %nzor3414 = or i64 %ns3410, %zs3411
  %cvor3415 = or i64 %cs3412, %vs3413
  %nzcv3416 = or i64 %nzor3414, %cvor3415
  %wp3417 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3416, ptr %wp3417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca14 word 0x5a933669
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %c3419 = trunc i64 %r3418 to i32
  %r3420.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3420 = load i64, ptr %r3420.p, align 8, !alias.scope !3, !noalias !4
  %c3421 = trunc i64 %r3420 to i32
  %t3422 = sub i32 0, %c3421
  %r3423.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3423 = load i64, ptr %r3423.p, align 8, !alias.scope !3, !noalias !4
  %fsh3425 = lshr i64 %r3423, 29
  %ftr3426 = trunc i64 %fsh3425 to i1
  %cond3424 = xor i1 %ftr3426, true
  %sel3427 = select i1 %cond3424, i32 %c3419, i32 %t3422
  %c3428 = zext i32 %sel3427 to i64
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3428, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  br label %L_80077ca18
L_80077ca18:
  ; @pc 0x80077ca18 word 0x37fff5c9
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %t3431 = and i64 %r3430, 2147483648
  %cmp3432 = icmp ne i64 %t3431, 0
  br i1 %cmp3432, label %L_80077c8d0, label %L_80077ca1c_ft
L_80077ca20:
  ; @pc 0x80077ca20 word 0xaa0903e8
  %r3436.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3436 = load i64, ptr %r3436.p, align 8, !alias.scope !3, !noalias !4
  %t3437 = or i64 0, %r3436
  %wp3438 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3437, ptr %wp3438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca24 word 0xf9403529
  %r3439.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3439 = load i64, ptr %r3439.p, align 8, !alias.scope !3, !noalias !4
  %t3440 = add i64 %r3439, 104
  %gmp3441 = inttoptr i64 %t3440 to ptr
  %gml3442 = load i64, ptr %gmp3441, align 1, !alias.scope !4, !noalias !3
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3442, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca28 word 0xb5ffffc9
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %cmp3445 = icmp ne i64 %r3444, 0
  br i1 %cmp3445, label %L_80077ca20, label %L_80077ca2c_ft
L_80077ca40:
  ; @pc 0x80077ca40 word 0x2a1f03e9
  %t3465 = or i32 0, 0
  %c3466 = zext i32 %t3465 to i64
  %wp3467 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3466, ptr %wp3467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca44 word 0x17ffffcd
  br label %L_80077c978
L_80077ca48:
  ; @pc 0x80077ca48 word 0x2a1f03e9
  %t3468 = or i32 0, 0
  %c3469 = zext i32 %t3468 to i64
  %wp3470 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3469, ptr %wp3470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca4c word 0x17fffff3
  br label %L_80077ca18
L_80077ca50:
  ; @pc 0x80077ca50 word 0xeb0d019f
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %r3472.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3472 = load i64, ptr %r3472.p, align 8, !alias.scope !3, !noalias !4
  %t3473 = sub i64 %r3471, %r3472
  %fn3474 = icmp slt i64 %t3473, 0
  %fz3475 = icmp eq i64 %t3473, 0
  %fc3476 = icmp uge i64 %r3471, %r3472
  %fx13477 = xor i64 %r3471, %r3472
  %fx23478 = xor i64 %r3471, %t3473
  %fva3479 = and i64 %fx13477, %fx23478
  %fv3480 = icmp slt i64 %fva3479, 0
  %nz3481 = zext i1 %fn3474 to i64
  %zz3482 = zext i1 %fz3475 to i64
  %cz3483 = zext i1 %fc3476 to i64
  %vz3484 = zext i1 %fv3480 to i64
  %ns3485 = shl i64 %nz3481, 31
  %zs3486 = shl i64 %zz3482, 30
  %cs3487 = shl i64 %cz3483, 29
  %vs3488 = shl i64 %vz3484, 28
  %nzor3489 = or i64 %ns3485, %zs3486
  %cvor3490 = or i64 %cs3487, %vs3488
  %nzcv3491 = or i64 %nzor3489, %cvor3490
  %wp3492 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3491, ptr %wp3492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca54 word 0x5a93366c
  %r3493.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3493 = load i64, ptr %r3493.p, align 8, !alias.scope !3, !noalias !4
  %c3494 = trunc i64 %r3493 to i32
  %r3495.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3495 = load i64, ptr %r3495.p, align 8, !alias.scope !3, !noalias !4
  %c3496 = trunc i64 %r3495 to i32
  %t3497 = sub i32 0, %c3496
  %r3498.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3498 = load i64, ptr %r3498.p, align 8, !alias.scope !3, !noalias !4
  %fsh3500 = lshr i64 %r3498, 29
  %ftr3501 = trunc i64 %fsh3500 to i1
  %cond3499 = xor i1 %ftr3501, true
  %sel3502 = select i1 %cond3499, i32 %c3494, i32 %t3497
  %c3503 = zext i32 %sel3502 to i64
  %wp3504 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3503, ptr %wp3504, align 8, !alias.scope !3, !noalias !4
  br label %L_80077ca58
L_80077ca58:
  ; @pc 0x80077ca58 word 0x36f81c4c
  %r3505.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3505 = load i64, ptr %r3505.p, align 8, !alias.scope !3, !noalias !4
  %t3506 = and i64 %r3505, 2147483648
  %cmp3507 = icmp eq i64 %t3506, 0
  br i1 %cmp3507, label %L_80077cde0, label %L_80077ca5c
L_80077ca5c:
  ; @pc 0x80077ca5c word 0x2a2b03ec
  %r3508.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3508 = load i64, ptr %r3508.p, align 8, !alias.scope !3, !noalias !4
  %c3509 = trunc i64 %r3508 to i32
  %t3510 = xor i32 %c3509, -1
  %t3511 = or i32 0, %t3510
  %c3512 = zext i32 %t3511 to i64
  %wp3513 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3512, ptr %wp3513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca60 word 0x7100017f
  %r3514.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3514 = load i64, ptr %r3514.p, align 8, !alias.scope !3, !noalias !4
  %c3515 = trunc i64 %r3514 to i32
  %t3516 = sub i32 %c3515, 0
  %fn3517 = icmp slt i32 %t3516, 0
  %fz3518 = icmp eq i32 %t3516, 0
  %fc3519 = icmp uge i32 %c3515, 0
  %fx13520 = xor i32 %c3515, 0
  %fx23521 = xor i32 %c3515, %t3516
  %fva3522 = and i32 %fx13520, %fx23521
  %fv3523 = icmp slt i32 %fva3522, 0
  %nz3524 = zext i1 %fn3517 to i64
  %zz3525 = zext i1 %fz3518 to i64
  %cz3526 = zext i1 %fc3519 to i64
  %vz3527 = zext i1 %fv3523 to i64
  %ns3528 = shl i64 %nz3524, 31
  %zs3529 = shl i64 %zz3525, 30
  %cs3530 = shl i64 %cz3526, 29
  %vs3531 = shl i64 %vz3527, 28
  %nzor3532 = or i64 %ns3528, %zs3529
  %cvor3533 = or i64 %cs3530, %vs3531
  %nzcv3534 = or i64 %nzor3532, %cvor3533
  %wp3535 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3534, ptr %wp3535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca64 word 0x11000529
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %c3537 = trunc i64 %r3536 to i32
  %t3538 = add i32 %c3537, 1
  %c3539 = zext i32 %t3538 to i64
  %wp3540 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3539, ptr %wp3540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca68 word 0x531f7d8c
  %r3541.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3541 = load i64, ptr %r3541.p, align 8, !alias.scope !3, !noalias !4
  %c3542 = trunc i64 %r3541 to i32
  %ror3543 = call i32 @llvm.fshr.i32(i32 %c3542, i32 %c3542, i32 31)
  %t3544 = and i32 %ror3543, 1
  %c3545 = zext i32 %t3544 to i64
  %wp3546 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3545, ptr %wp3546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca6c word 0xaa0a058a
  %r3547.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3547 = load i64, ptr %r3547.p, align 8, !alias.scope !3, !noalias !4
  %t3548 = shl i64 %r3547, 1
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %t3550 = or i64 %r3549, %t3548
  %wp3551 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3550, ptr %wp3551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca70 word 0x9100210c
  %r3552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3552 = load i64, ptr %r3552.p, align 8, !alias.scope !3, !noalias !4
  %t3553 = add i64 %r3552, 8
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca74 word 0x9a88a18c
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %r3556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3556 = load i64, ptr %r3556.p, align 8, !alias.scope !3, !noalias !4
  %r3557.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3557 = load i64, ptr %r3557.p, align 8, !alias.scope !3, !noalias !4
  %fsh3559 = lshr i64 %r3557, 31
  %ftr3560 = trunc i64 %fsh3559 to i1
  %fsh3561 = lshr i64 %r3557, 28
  %ftr3562 = trunc i64 %fsh3561 to i1
  %cond3558 = icmp eq i1 %ftr3560, %ftr3562
  %sel3563 = select i1 %cond3558, i64 %r3555, i64 %r3556
  %wp3564 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel3563, ptr %wp3564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca78 word 0xf940018b
  %r3565.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3565 = load i64, ptr %r3565.p, align 8, !alias.scope !3, !noalias !4
  %gmp3566 = inttoptr i64 %r3565 to ptr
  %gml3567 = load i64, ptr %gmp3566, align 1, !alias.scope !4, !noalias !3
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3567, ptr %wp3568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca7c word 0xb4000a8b
  %r3569.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3569 = load i64, ptr %r3569.p, align 8, !alias.scope !3, !noalias !4
  %cmp3570 = icmp eq i64 %r3569, 0
  br i1 %cmp3570, label %L_80077cbcc, label %L_80077ca80
L_80077ca80:
  ; @pc 0x80077ca80 word 0xaa0b03e8
  %r3571.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3571 = load i64, ptr %r3571.p, align 8, !alias.scope !3, !noalias !4
  %t3572 = or i64 0, %r3571
  %wp3573 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3572, ptr %wp3573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca84 word 0xf940020b
  %r3574.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3574 = load i64, ptr %r3574.p, align 8, !alias.scope !3, !noalias !4
  %gmp3575 = inttoptr i64 %r3574 to ptr
  %gml3576 = load i64, ptr %gmp3575, align 1, !alias.scope !4, !noalias !3
  %wp3577 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3576, ptr %wp3577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca88 word 0xdac00d6b
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %bsw3579 = call i64 @llvm.bswap.i64(i64 %r3578)
  %wp3580 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3579, ptr %wp3580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca8c word 0xf9400d0c
  %r3581.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3581 = load i64, ptr %r3581.p, align 8, !alias.scope !3, !noalias !4
  %t3582 = add i64 %r3581, 24
  %gmp3583 = inttoptr i64 %t3582 to ptr
  %gml3584 = load i64, ptr %gmp3583, align 1, !alias.scope !4, !noalias !3
  %wp3585 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3584, ptr %wp3585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca90 word 0xdac00d8c
  %r3586.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3586 = load i64, ptr %r3586.p, align 8, !alias.scope !3, !noalias !4
  %bsw3587 = call i64 @llvm.bswap.i64(i64 %r3586)
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca94 word 0xeb0c017f
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %r3590.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3590 = load i64, ptr %r3590.p, align 8, !alias.scope !3, !noalias !4
  %t3591 = sub i64 %r3589, %r3590
  %fn3592 = icmp slt i64 %t3591, 0
  %fz3593 = icmp eq i64 %t3591, 0
  %fc3594 = icmp uge i64 %r3589, %r3590
  %fx13595 = xor i64 %r3589, %r3590
  %fx23596 = xor i64 %r3589, %t3591
  %fva3597 = and i64 %fx13595, %fx23596
  %fv3598 = icmp slt i64 %fva3597, 0
  %nz3599 = zext i1 %fn3592 to i64
  %zz3600 = zext i1 %fz3593 to i64
  %cz3601 = zext i1 %fc3594 to i64
  %vz3602 = zext i1 %fv3598 to i64
  %ns3603 = shl i64 %nz3599, 31
  %zs3604 = shl i64 %zz3600, 30
  %cs3605 = shl i64 %cz3601, 29
  %vs3606 = shl i64 %vz3602, 28
  %nzor3607 = or i64 %ns3603, %zs3604
  %cvor3608 = or i64 %cs3605, %vs3606
  %nzcv3609 = or i64 %nzor3607, %cvor3608
  %wp3610 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3609, ptr %wp3610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca98 word 0x54000941
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %fsh3613 = lshr i64 %r3611, 30
  %ftr3614 = trunc i64 %fsh3613 to i1
  %cond3612 = xor i1 %ftr3614, true
  br i1 %cond3612, label %L_80077cbc0, label %L_80077ca9c_ft
L_80077cb20:
  ; @pc 0x80077cb20 word 0x37fff9eb
  %r3828.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3828 = load i64, ptr %r3828.p, align 8, !alias.scope !3, !noalias !4
  %t3829 = and i64 %r3828, 2147483648
  %cmp3830 = icmp ne i64 %t3829, 0
  br i1 %cmp3830, label %L_80077ca5c, label %L_80077cb24_ft
L_80077cbc0:
  ; @pc 0x80077cbc0 word 0xeb0c017f
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %r4082.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4082 = load i64, ptr %r4082.p, align 8, !alias.scope !3, !noalias !4
  %t4083 = sub i64 %r4081, %r4082
  %fn4084 = icmp slt i64 %t4083, 0
  %fz4085 = icmp eq i64 %t4083, 0
  %fc4086 = icmp uge i64 %r4081, %r4082
  %fx14087 = xor i64 %r4081, %r4082
  %fx24088 = xor i64 %r4081, %t4083
  %fva4089 = and i64 %fx14087, %fx24088
  %fv4090 = icmp slt i64 %fva4089, 0
  %nz4091 = zext i1 %fn4084 to i64
  %zz4092 = zext i1 %fz4085 to i64
  %cz4093 = zext i1 %fc4086 to i64
  %vz4094 = zext i1 %fv4090 to i64
  %ns4095 = shl i64 %nz4091, 31
  %zs4096 = shl i64 %zz4092, 30
  %cs4097 = shl i64 %cz4093, 29
  %vs4098 = shl i64 %vz4094, 28
  %nzor4099 = or i64 %ns4095, %zs4096
  %cvor4100 = or i64 %cs4097, %vs4098
  %nzcv4101 = or i64 %nzor4099, %cvor4100
  %wp4102 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4101, ptr %wp4102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbc4 word 0x5a93366b
  %r4103.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4103 = load i64, ptr %r4103.p, align 8, !alias.scope !3, !noalias !4
  %c4104 = trunc i64 %r4103 to i32
  %r4105.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4105 = load i64, ptr %r4105.p, align 8, !alias.scope !3, !noalias !4
  %c4106 = trunc i64 %r4105 to i32
  %t4107 = sub i32 0, %c4106
  %r4108.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4108 = load i64, ptr %r4108.p, align 8, !alias.scope !3, !noalias !4
  %fsh4110 = lshr i64 %r4108, 29
  %ftr4111 = trunc i64 %fsh4110 to i1
  %cond4109 = xor i1 %ftr4111, true
  %sel4112 = select i1 %cond4109, i32 %c4104, i32 %t4107
  %c4113 = zext i32 %sel4112 to i64
  %wp4114 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4113, ptr %wp4114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbc8 word 0x17ffffd6
  br label %L_80077cb20
L_80077cbcc:
  ; @pc 0x80077cbcc word 0xf94013e0
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %t4116 = add i64 %r4115, 32
  %gmp4117 = inttoptr i64 %t4116 to ptr
  %gml4118 = load i64, ptr %gmp4117, align 1, !alias.scope !4, !noalias !3
  %wp4119 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4118, ptr %wp4119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbd0 word 0xd10103a2
  %r4120.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4120 = load i64, ptr %r4120.p, align 8, !alias.scope !3, !noalias !4
  %t4121 = sub i64 %r4120, 64
  %wp4122 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4121, ptr %wp4122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbd4 word 0xf81c03aa
  %r4123.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4123 = load i64, ptr %r4123.p, align 8, !alias.scope !3, !noalias !4
  %t4124 = add i64 %r4123, -64
  %r4125.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4125 = load i64, ptr %r4125.p, align 8, !alias.scope !3, !noalias !4
  %gmp4126 = inttoptr i64 %t4124 to ptr
  store i64 %r4125, ptr %gmp4126, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbd8 word 0xb81c83a9
  %r4127.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4127 = load i64, ptr %r4127.p, align 8, !alias.scope !3, !noalias !4
  %t4128 = add i64 %r4127, -56
  %r4129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4129 = load i64, ptr %r4129.p, align 8, !alias.scope !3, !noalias !4
  %c4130 = trunc i64 %r4129 to i32
  %gmp4131 = inttoptr i64 %t4128 to ptr
  store i32 %c4130, ptr %gmp4131, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbdc word 0xf9000181
  %r4132.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4132 = load i64, ptr %r4132.p, align 8, !alias.scope !3, !noalias !4
  %r4133.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4133 = load i64, ptr %r4133.p, align 8, !alias.scope !3, !noalias !4
  %gmp4134 = inttoptr i64 %r4132 to ptr
  store i64 %r4133, ptr %gmp4134, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbe0 word 0xf9000de8
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %t4136 = add i64 %r4135, 24
  %r4137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4137 = load i64, ptr %r4137.p, align 8, !alias.scope !3, !noalias !4
  %gmp4138 = inttoptr i64 %t4136 to ptr
  store i64 %r4137, ptr %gmp4138, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbe4 word 0xa9007c3f
  %r4139.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4139 = load i64, ptr %r4139.p, align 8, !alias.scope !3, !noalias !4
  %t4140 = add i64 %r4139, 8
  %gmp4141 = inttoptr i64 %r4139 to ptr
  store i64 0, ptr %gmp4141, align 1, !alias.scope !4, !noalias !3
  %gmp4142 = inttoptr i64 %t4140 to ptr
  store i64 0, ptr %gmp4142, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbe8 word 0x94000127
  %wp4143 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589356, ptr %wp4143, align 8, !alias.scope !3, !noalias !4
  call void @f_80077d084(ptr %c)
  br label %L_80077cbec
L_80077cbec:
  ; @pc 0x80077cbec word 0xf94043e1
  %r4144.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4144 = load i64, ptr %r4144.p, align 8, !alias.scope !3, !noalias !4
  %t4145 = add i64 %r4144, 128
  %gmp4146 = inttoptr i64 %t4145 to ptr
  %gml4147 = load i64, ptr %gmp4146, align 1, !alias.scope !4, !noalias !3
  %wp4148 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml4147, ptr %wp4148, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cbf0
L_80077cbf0:
  ; @pc 0x80077cbf0 word 0x52800028
  %c4149 = zext i32 1 to i64
  %wp4150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4149, ptr %wp4150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbf4 word 0xf9000828
  %r4151.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4151 = load i64, ptr %r4151.p, align 8, !alias.scope !3, !noalias !4
  %t4152 = add i64 %r4151, 16
  %r4153.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4153 = load i64, ptr %r4153.p, align 8, !alias.scope !3, !noalias !4
  %gmp4154 = inttoptr i64 %t4152 to ptr
  store i64 %r4153, ptr %gmp4154, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cbf8 word 0xf87b7ac8
  %r4155.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4155 = load i64, ptr %r4155.p, align 8, !alias.scope !3, !noalias !4
  %r4156.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4156 = load i64, ptr %r4156.p, align 8, !alias.scope !3, !noalias !4
  %t4157 = shl i64 %r4156, 3
  %t4158 = add i64 %r4155, %t4157
  %gmp4159 = inttoptr i64 %t4158 to ptr
  %gml4160 = load i64, ptr %gmp4159, align 1, !alias.scope !4, !noalias !3
  %wp4161 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4160, ptr %wp4161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbfc word 0xb5ffb7a8
  %r4162.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4162 = load i64, ptr %r4162.p, align 8, !alias.scope !3, !noalias !4
  %cmp4163 = icmp ne i64 %r4162, 0
  br i1 %cmp4163, label %L_80077c2f0, label %L_80077cc00
L_80077cc00:
  ; @pc 0x80077cc00 word 0xf9401bf5
  %r4164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4164 = load i64, ptr %r4164.p, align 8, !alias.scope !3, !noalias !4
  %t4165 = add i64 %r4164, 48
  %gmp4166 = inttoptr i64 %t4165 to ptr
  %gml4167 = load i64, ptr %gmp4166, align 1, !alias.scope !4, !noalias !3
  %wp4168 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml4167, ptr %wp4168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc04 word 0x52800600
  %c4169 = zext i32 48 to i64
  %wp4170 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4169, ptr %wp4170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc08 word 0x52800102
  %c4171 = zext i32 8 to i64
  %wp4172 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4171, ptr %wp4172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc0c word 0xf94006a1
  %r4173.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4173 = load i64, ptr %r4173.p, align 8, !alias.scope !3, !noalias !4
  %t4174 = add i64 %r4173, 8
  %gmp4175 = inttoptr i64 %t4174 to ptr
  %gml4176 = load i64, ptr %gmp4175, align 1, !alias.scope !4, !noalias !3
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml4176, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc10 word 0x97e89260
  %wp4178 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589396, ptr %wp4178, align 8, !alias.scope !3, !noalias !4
  call void @f_8001a1590(ptr %c)
  ; @pc 0x80077cc14 word 0xf94033e8
  %r4179.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4179 = load i64, ptr %r4179.p, align 8, !alias.scope !3, !noalias !4
  %t4180 = add i64 %r4179, 96
  %gmp4181 = inttoptr i64 %t4180 to ptr
  %gml4182 = load i64, ptr %gmp4181, align 1, !alias.scope !4, !noalias !3
  %wp4183 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4182, ptr %wp4183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc18 word 0x3900a01f
  %r4184.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4184 = load i64, ptr %r4184.p, align 8, !alias.scope !3, !noalias !4
  %t4185 = add i64 %r4184, 40
  %c4186 = trunc i32 0 to i8
  %gmp4187 = inttoptr i64 %t4185 to ptr
  store i8 %c4186, ptr %gmp4187, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc1c word 0xf900101f
  %r4188.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4188 = load i64, ptr %r4188.p, align 8, !alias.scope !3, !noalias !4
  %t4189 = add i64 %r4188, 32
  %gmp4190 = inttoptr i64 %t4189 to ptr
  store i64 0, ptr %gmp4190, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc20 word 0xaa1c03e1
  %r4191.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4191 = load i64, ptr %r4191.p, align 8, !alias.scope !3, !noalias !4
  %t4192 = or i64 0, %r4191
  %wp4193 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4192, ptr %wp4193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc24 word 0x2a1b03e3
  %r4194.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4194 = load i64, ptr %r4194.p, align 8, !alias.scope !3, !noalias !4
  %c4195 = trunc i64 %r4194 to i32
  %t4196 = or i32 0, %c4195
  %c4197 = zext i32 %t4196 to i64
  %wp4198 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4197, ptr %wp4198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc28 word 0xaa1503e4
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %t4200 = or i64 0, %r4199
  %wp4201 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4200, ptr %wp4201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc2c word 0xa9007c1f
  %r4202.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4202 = load i64, ptr %r4202.p, align 8, !alias.scope !3, !noalias !4
  %t4203 = add i64 %r4202, 8
  %gmp4204 = inttoptr i64 %r4202 to ptr
  store i64 0, ptr %gmp4204, align 1, !alias.scope !4, !noalias !3
  %gmp4205 = inttoptr i64 %t4203 to ptr
  store i64 0, ptr %gmp4205, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc30 word 0xf900081f
  %r4206.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4206 = load i64, ptr %r4206.p, align 8, !alias.scope !3, !noalias !4
  %t4207 = add i64 %r4206, 16
  %gmp4208 = inttoptr i64 %t4207 to ptr
  store i64 0, ptr %gmp4208, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc34 word 0x7900301f
  %r4209.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4209 = load i64, ptr %r4209.p, align 8, !alias.scope !3, !noalias !4
  %t4210 = add i64 %r4209, 24
  %c4211 = trunc i32 0 to i16
  %gmp4212 = inttoptr i64 %t4210 to ptr
  store i16 %c4211, ptr %gmp4212, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc38 word 0xf83b7ac0
  %r4213.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4213 = load i64, ptr %r4213.p, align 8, !alias.scope !3, !noalias !4
  %r4214.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4214 = load i64, ptr %r4214.p, align 8, !alias.scope !3, !noalias !4
  %t4215 = shl i64 %r4214, 3
  %t4216 = add i64 %r4213, %t4215
  %r4217.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4217 = load i64, ptr %r4217.p, align 8, !alias.scope !3, !noalias !4
  %gmp4218 = inttoptr i64 %t4216 to ptr
  store i64 %r4217, ptr %gmp4218, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc3c word 0xf9401102
  %r4219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4219 = load i64, ptr %r4219.p, align 8, !alias.scope !3, !noalias !4
  %t4220 = add i64 %r4219, 32
  %gmp4221 = inttoptr i64 %t4220 to ptr
  %gml4222 = load i64, ptr %gmp4221, align 1, !alias.scope !4, !noalias !3
  %wp4223 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml4222, ptr %wp4223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc40 word 0x940001dc
  %wp4224 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589444, ptr %wp4224, align 8, !alias.scope !3, !noalias !4
  call void @f_80077d3b0(ptr %c)
  ; @pc 0x80077cc44 word 0xf9401fe9
  %r4225.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4225 = load i64, ptr %r4225.p, align 8, !alias.scope !3, !noalias !4
  %t4226 = add i64 %r4225, 56
  %gmp4227 = inttoptr i64 %t4226 to ptr
  %gml4228 = load i64, ptr %gmp4227, align 1, !alias.scope !4, !noalias !3
  %wp4229 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4228, ptr %wp4229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc48 word 0xb9402128
  %r4230.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4230 = load i64, ptr %r4230.p, align 8, !alias.scope !3, !noalias !4
  %t4231 = add i64 %r4230, 32
  %gmp4232 = inttoptr i64 %t4231 to ptr
  %gml4233 = load i32, ptr %gmp4232, align 1, !alias.scope !4, !noalias !3
  %c4234 = zext i32 %gml4233 to i64
  %wp4235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4234, ptr %wp4235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc4c word 0x11000508
  %r4236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4236 = load i64, ptr %r4236.p, align 8, !alias.scope !3, !noalias !4
  %c4237 = trunc i64 %r4236 to i32
  %t4238 = add i32 %c4237, 1
  %c4239 = zext i32 %t4238 to i64
  %wp4240 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4239, ptr %wp4240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc50 word 0xb9002128
  %r4241.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4241 = load i64, ptr %r4241.p, align 8, !alias.scope !3, !noalias !4
  %t4242 = add i64 %r4241, 32
  %r4243.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4243 = load i64, ptr %r4243.p, align 8, !alias.scope !3, !noalias !4
  %c4244 = trunc i64 %r4243 to i32
  %gmp4245 = inttoptr i64 %t4242 to ptr
  store i32 %c4244, ptr %gmp4245, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cc54 word 0x17fffda7
  br label %L_80077c2f0
L_80077cc58:
  ; @pc 0x80077cc58 word 0x2a1f03ec
  %t4246 = or i32 0, 0
  %c4247 = zext i32 %t4246 to i64
  %wp4248 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4247, ptr %wp4248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc5c word 0x17ffff7f
  br label %L_80077ca58
L_80077cc60:
  ; @pc 0x80077cc60 word 0xf94043e0
  %r4249.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4249 = load i64, ptr %r4249.p, align 8, !alias.scope !3, !noalias !4
  %t4250 = add i64 %r4249, 128
  %gmp4251 = inttoptr i64 %t4250 to ptr
  %gml4252 = load i64, ptr %gmp4251, align 1, !alias.scope !4, !noalias !3
  %wp4253 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4252, ptr %wp4253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc64 word 0xaa0003e9
  %r4254.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4254 = load i64, ptr %r4254.p, align 8, !alias.scope !3, !noalias !4
  %t4255 = or i64 0, %r4254
  %wp4256 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4255, ptr %wp4256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc68 word 0xb40019a0
  %r4257.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4257 = load i64, ptr %r4257.p, align 8, !alias.scope !3, !noalias !4
  %cmp4258 = icmp eq i64 %r4257, 0
  br i1 %cmp4258, label %L_80077cf9c, label %L_80077cc6c
L_80077cc6c:
  ; @pc 0x80077cc6c word 0xaa0903e8
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %t4260 = or i64 0, %r4259
  %wp4261 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4260, ptr %wp4261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc70 word 0xf9400129
  %r4262.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4262 = load i64, ptr %r4262.p, align 8, !alias.scope !3, !noalias !4
  %gmp4263 = inttoptr i64 %r4262 to ptr
  %gml4264 = load i64, ptr %gmp4263, align 1, !alias.scope !4, !noalias !3
  %wp4265 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4264, ptr %wp4265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc74 word 0xb5ffffc9
  %r4266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4266 = load i64, ptr %r4266.p, align 8, !alias.scope !3, !noalias !4
  %cmp4267 = icmp ne i64 %r4266, 0
  br i1 %cmp4267, label %L_80077cc6c, label %L_80077cc78_ft
L_80077cc80:
  ; @pc 0x80077cc80 word 0xd1002109
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %t4273 = sub i64 %r4272, 8
  %wp4274 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4273, ptr %wp4274, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cc84
L_80077cc84:
  ; @pc 0x80077cc84 word 0xaa0903ea
  %r4275.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4275 = load i64, ptr %r4275.p, align 8, !alias.scope !3, !noalias !4
  %t4276 = or i64 0, %r4275
  %wp4277 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4276, ptr %wp4277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc88 word 0xa9c6b54b
  %r4278.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4278 = load i64, ptr %r4278.p, align 8, !alias.scope !3, !noalias !4
  %t4279 = add i64 %r4278, 104
  %t4280 = add i64 %t4279, 8
  %gmp4281 = inttoptr i64 %t4279 to ptr
  %gml4282 = load i64, ptr %gmp4281, align 1, !alias.scope !4, !noalias !3
  %gmp4283 = inttoptr i64 %t4280 to ptr
  %gml4284 = load i64, ptr %gmp4283, align 1, !alias.scope !4, !noalias !3
  %wp4285 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4279, ptr %wp4285, align 8, !alias.scope !3, !noalias !4
  %wp4286 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4282, ptr %wp4286, align 8, !alias.scope !3, !noalias !4
  %wp4287 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4284, ptr %wp4287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc8c word 0xaa0b03ec
  %r4288.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4288 = load i64, ptr %r4288.p, align 8, !alias.scope !3, !noalias !4
  %t4289 = or i64 0, %r4288
  %wp4290 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4289, ptr %wp4290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc90 word 0xb500168d
  %r4291.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4291 = load i64, ptr %r4291.p, align 8, !alias.scope !3, !noalias !4
  %cmp4292 = icmp ne i64 %r4291, 0
  br i1 %cmp4292, label %L_80077cf60, label %L_80077cc94
L_80077cc94:
  ; @pc 0x80077cc94 word 0xb400006c
  %r4293.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4293 = load i64, ptr %r4293.p, align 8, !alias.scope !3, !noalias !4
  %cmp4294 = icmp eq i64 %r4293, 0
  br i1 %cmp4294, label %L_80077cca0, label %L_80077cc98_ft
L_80077cca0:
  ; @pc 0x80077cca0 word 0xaa0b03e9
  %r4304.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4304 = load i64, ptr %r4304.p, align 8, !alias.scope !3, !noalias !4
  %t4305 = or i64 0, %r4304
  %wp4306 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4305, ptr %wp4306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cca4 word 0xa900fd5f
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %t4308 = add i64 %r4307, 8
  %t4309 = add i64 %t4308, 8
  %gmp4310 = inttoptr i64 %t4308 to ptr
  store i64 0, ptr %gmp4310, align 1, !alias.scope !4, !noalias !3
  %gmp4311 = inttoptr i64 %t4309 to ptr
  store i64 0, ptr %gmp4311, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cca8 word 0xf900015f
  %r4312.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4312 = load i64, ptr %r4312.p, align 8, !alias.scope !3, !noalias !4
  %gmp4313 = inttoptr i64 %r4312 to ptr
  store i64 0, ptr %gmp4313, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ccac word 0xb5fffecb
  %r4314.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4314 = load i64, ptr %r4314.p, align 8, !alias.scope !3, !noalias !4
  %cmp4315 = icmp ne i64 %r4314, 0
  br i1 %cmp4315, label %L_80077cc84, label %L_80077ccb0_ft
L_80077ccbc:
  ; @pc 0x80077ccbc word 0xf9400928
  %r4326.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4326 = load i64, ptr %r4326.p, align 8, !alias.scope !3, !noalias !4
  %t4327 = add i64 %r4326, 16
  %gmp4328 = inttoptr i64 %t4327 to ptr
  %gml4329 = load i64, ptr %gmp4328, align 1, !alias.scope !4, !noalias !3
  %wp4330 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4329, ptr %wp4330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccc0 word 0xf27ff908
  %r4331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4331 = load i64, ptr %r4331.p, align 8, !alias.scope !3, !noalias !4
  %t4332 = and i64 %r4331, -2
  %fn4333 = icmp slt i64 %t4332, 0
  %fz4334 = icmp eq i64 %t4332, 0
  %nz4335 = zext i1 %fn4333 to i64
  %zz4336 = zext i1 %fz4334 to i64
  %ns4337 = shl i64 %nz4335, 31
  %zs4338 = shl i64 %zz4336, 30
  %nzcv4339 = or i64 %ns4337, %zs4338
  %wp4340 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4339, ptr %wp4340, align 8, !alias.scope !3, !noalias !4
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4332, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccc4 word 0x54000160
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %fsh4344 = lshr i64 %r4342, 30
  %cond4343 = trunc i64 %fsh4344 to i1
  br i1 %cond4343, label %L_80077ccf0, label %L_80077ccc8_ft
L_80077ccdc:
  ; @pc 0x80077ccdc word 0xf9400149
  %r4378.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4378 = load i64, ptr %r4378.p, align 8, !alias.scope !3, !noalias !4
  %gmp4379 = inttoptr i64 %r4378 to ptr
  %gml4380 = load i64, ptr %gmp4379, align 1, !alias.scope !4, !noalias !3
  %wp4381 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4380, ptr %wp4381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cce0 word 0xaa0a03e8
  %r4382.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4382 = load i64, ptr %r4382.p, align 8, !alias.scope !3, !noalias !4
  %t4383 = or i64 0, %r4382
  %wp4384 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4383, ptr %wp4384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cce4 word 0xaa0903ea
  %r4385.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4385 = load i64, ptr %r4385.p, align 8, !alias.scope !3, !noalias !4
  %t4386 = or i64 0, %r4385
  %wp4387 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4386, ptr %wp4387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cce8 word 0xb4fffcc9
  %r4388.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4388 = load i64, ptr %r4388.p, align 8, !alias.scope !3, !noalias !4
  %cmp4389 = icmp eq i64 %r4388, 0
  br i1 %cmp4389, label %L_80077cc80, label %L_80077ccec_ft
L_80077ccf0:
  ; @pc 0x80077ccf0 word 0xf94017e9
  %r4390.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4390 = load i64, ptr %r4390.p, align 8, !alias.scope !3, !noalias !4
  %t4391 = add i64 %r4390, 40
  %gmp4392 = inttoptr i64 %t4391 to ptr
  %gml4393 = load i64, ptr %gmp4392, align 1, !alias.scope !4, !noalias !3
  %wp4394 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4393, ptr %wp4394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccf4 word 0x90010728
  %wp4395 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34402074624, ptr %wp4395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccf8 word 0x9117e108
  %r4396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4396 = load i64, ptr %r4396.p, align 8, !alias.scope !3, !noalias !4
  %t4397 = add i64 %r4396, 1528
  %wp4398 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4397, ptr %wp4398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccfc word 0xa93d7fa8
  %r4399.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4399 = load i64, ptr %r4399.p, align 8, !alias.scope !3, !noalias !4
  %t4400 = add i64 %r4399, -48
  %t4401 = add i64 %t4400, 8
  %r4402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4402 = load i64, ptr %r4402.p, align 8, !alias.scope !3, !noalias !4
  %gmp4403 = inttoptr i64 %t4400 to ptr
  store i64 %r4402, ptr %gmp4403, align 1, !alias.scope !4, !noalias !3
  %gmp4404 = inttoptr i64 %t4401 to ptr
  store i64 0, ptr %gmp4404, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd00 word 0xb0018c08
  %wp4405 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419494912, ptr %wp4405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd04 word 0x9108c108
  %r4406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4406 = load i64, ptr %r4406.p, align 8, !alias.scope !3, !noalias !4
  %t4407 = add i64 %r4406, 560
  %wp4408 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4407, ptr %wp4408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd08 word 0xd10103a1
  %r4409.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4409 = load i64, ptr %r4409.p, align 8, !alias.scope !3, !noalias !4
  %t4410 = sub i64 %r4409, 64
  %wp4411 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4410, ptr %wp4411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd0c word 0xb90073ff
  %r4412.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4412 = load i64, ptr %r4412.p, align 8, !alias.scope !3, !noalias !4
  %t4413 = add i64 %r4412, 112
  %gmp4414 = inttoptr i64 %t4413 to ptr
  store i32 0, ptr %gmp4414, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd10 word 0xa93c27a8
  %r4415.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4415 = load i64, ptr %r4415.p, align 8, !alias.scope !3, !noalias !4
  %t4416 = add i64 %r4415, -64
  %t4417 = add i64 %t4416, 8
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %gmp4419 = inttoptr i64 %t4416 to ptr
  store i64 %r4418, ptr %gmp4419, align 1, !alias.scope !4, !noalias !3
  %r4420.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4420 = load i64, ptr %r4420.p, align 8, !alias.scope !3, !noalias !4
  %gmp4421 = inttoptr i64 %t4417 to ptr
  store i64 %r4420, ptr %gmp4421, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd14 word 0x97e7f2b2
  %wp4422 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589656, ptr %wp4422, align 8, !alias.scope !3, !noalias !4
  call void @f_8001797dc(ptr %c)
  br label %L_80077cd18
L_80077cd18:
  ; @pc 0x80077cd18 word 0xf9402be0
  %r4423.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4423 = load i64, ptr %r4423.p, align 8, !alias.scope !3, !noalias !4
  %t4424 = add i64 %r4423, 80
  %gmp4425 = inttoptr i64 %t4424 to ptr
  %gml4426 = load i64, ptr %gmp4425, align 1, !alias.scope !4, !noalias !3
  %wp4427 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4426, ptr %wp4427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd1c word 0xb9008bff
  %r4428.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4428 = load i64, ptr %r4428.p, align 8, !alias.scope !3, !noalias !4
  %t4429 = add i64 %r4428, 136
  %gmp4430 = inttoptr i64 %t4429 to ptr
  store i32 0, ptr %gmp4430, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd20 word 0xf90043ff
  %r4431.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4431 = load i64, ptr %r4431.p, align 8, !alias.scope !3, !noalias !4
  %t4432 = add i64 %r4431, 128
  %gmp4433 = inttoptr i64 %t4432 to ptr
  store i64 0, ptr %gmp4433, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd24 word 0xb40000c0
  %r4434.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4434 = load i64, ptr %r4434.p, align 8, !alias.scope !3, !noalias !4
  %cmp4435 = icmp eq i64 %r4434, 0
  br i1 %cmp4435, label %L_80077cd3c, label %L_80077cd28_ft
L_80077cd3c:
  ; @pc 0x80077cd3c word 0xf9400fe9
  %r4453.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4453 = load i64, ptr %r4453.p, align 8, !alias.scope !3, !noalias !4
  %t4454 = add i64 %r4453, 24
  %gmp4455 = inttoptr i64 %t4454 to ptr
  %gml4456 = load i64, ptr %gmp4455, align 1, !alias.scope !4, !noalias !3
  %wp4457 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4456, ptr %wp4457, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cd40
L_80077cd40:
  ; @pc 0x80077cd40 word 0xf9400be8
  %r4458.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4458 = load i64, ptr %r4458.p, align 8, !alias.scope !3, !noalias !4
  %t4459 = add i64 %r4458, 16
  %gmp4460 = inttoptr i64 %t4459 to ptr
  %gml4461 = load i64, ptr %gmp4460, align 1, !alias.scope !4, !noalias !3
  %wp4462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4461, ptr %wp4462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd44 word 0x91000529
  %r4463.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4463 = load i64, ptr %r4463.p, align 8, !alias.scope !3, !noalias !4
  %t4464 = add i64 %r4463, 1
  %wp4465 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4464, ptr %wp4465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd48 word 0xeb08013f
  %r4466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4466 = load i64, ptr %r4466.p, align 8, !alias.scope !3, !noalias !4
  %r4467.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4467 = load i64, ptr %r4467.p, align 8, !alias.scope !3, !noalias !4
  %t4468 = sub i64 %r4466, %r4467
  %fn4469 = icmp slt i64 %t4468, 0
  %fz4470 = icmp eq i64 %t4468, 0
  %fc4471 = icmp uge i64 %r4466, %r4467
  %fx14472 = xor i64 %r4466, %r4467
  %fx24473 = xor i64 %r4466, %t4468
  %fva4474 = and i64 %fx14472, %fx24473
  %fv4475 = icmp slt i64 %fva4474, 0
  %nz4476 = zext i1 %fn4469 to i64
  %zz4477 = zext i1 %fz4470 to i64
  %cz4478 = zext i1 %fc4471 to i64
  %vz4479 = zext i1 %fv4475 to i64
  %ns4480 = shl i64 %nz4476, 31
  %zs4481 = shl i64 %zz4477, 30
  %cs4482 = shl i64 %cz4478, 29
  %vs4483 = shl i64 %vz4479, 28
  %nzor4484 = or i64 %ns4480, %zs4481
  %cvor4485 = or i64 %cs4482, %vs4483
  %nzcv4486 = or i64 %nzor4484, %cvor4485
  %wp4487 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4486, ptr %wp4487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd4c word 0x54ffa841
  %r4488.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4488 = load i64, ptr %r4488.p, align 8, !alias.scope !3, !noalias !4
  %fsh4490 = lshr i64 %r4488, 30
  %ftr4491 = trunc i64 %fsh4490 to i1
  %cond4489 = xor i1 %ftr4491, true
  br i1 %cond4489, label %L_80077c254, label %L_80077cd50_ft
L_80077cd54:
  ; @pc 0x80077cd54 word 0xf9401be8
  %r4498.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4498 = load i64, ptr %r4498.p, align 8, !alias.scope !3, !noalias !4
  %t4499 = add i64 %r4498, 48
  %gmp4500 = inttoptr i64 %t4499 to ptr
  %gml4501 = load i64, ptr %gmp4500, align 1, !alias.scope !4, !noalias !3
  %wp4502 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4501, ptr %wp4502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd58 word 0xf9400500
  %r4503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4503 = load i64, ptr %r4503.p, align 8, !alias.scope !3, !noalias !4
  %t4504 = add i64 %r4503, 8
  %gmp4505 = inttoptr i64 %t4504 to ptr
  %gml4506 = load i64, ptr %gmp4505, align 1, !alias.scope !4, !noalias !3
  %wp4507 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4506, ptr %wp4507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd5c word 0xf9400008
  %r4508.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4508 = load i64, ptr %r4508.p, align 8, !alias.scope !3, !noalias !4
  %gmp4509 = inttoptr i64 %r4508 to ptr
  %gml4510 = load i64, ptr %gmp4509, align 1, !alias.scope !4, !noalias !3
  %wp4511 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4510, ptr %wp4511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd60 word 0xf9404108
  %r4512.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4512 = load i64, ptr %r4512.p, align 8, !alias.scope !3, !noalias !4
  %t4513 = add i64 %r4512, 128
  %gmp4514 = inttoptr i64 %t4513 to ptr
  %gml4515 = load i64, ptr %gmp4514, align 1, !alias.scope !4, !noalias !3
  %wp4516 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4515, ptr %wp4516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd64 word 0xd63f0100
  %r4517.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4517 = load i64, ptr %r4517.p, align 8, !alias.scope !3, !noalias !4
  %fp4518 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4517, ptr %fp4518, align 8, !alias.scope !3, !noalias !4
  %wp4519 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589736, ptr %wp4519, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80077cd68 word 0xf94007e8
  %r4520.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4520 = load i64, ptr %r4520.p, align 8, !alias.scope !3, !noalias !4
  %t4521 = add i64 %r4520, 8
  %gmp4522 = inttoptr i64 %t4521 to ptr
  %gml4523 = load i64, ptr %gmp4522, align 1, !alias.scope !4, !noalias !3
  %wp4524 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4523, ptr %wp4524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd6c word 0xcb000108
  %r4525.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4525 = load i64, ptr %r4525.p, align 8, !alias.scope !3, !noalias !4
  %r4526.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4526 = load i64, ptr %r4526.p, align 8, !alias.scope !3, !noalias !4
  %t4527 = sub i64 %r4525, %r4526
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd70 word 0xf9401fe9
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %t4530 = add i64 %r4529, 56
  %gmp4531 = inttoptr i64 %t4530 to ptr
  %gml4532 = load i64, ptr %gmp4531, align 1, !alias.scope !4, !noalias !3
  %wp4533 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4532, ptr %wp4533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd74 word 0xf9001528
  %r4534.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4534 = load i64, ptr %r4534.p, align 8, !alias.scope !3, !noalias !4
  %t4535 = add i64 %r4534, 40
  %r4536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4536 = load i64, ptr %r4536.p, align 8, !alias.scope !3, !noalias !4
  %gmp4537 = inttoptr i64 %t4535 to ptr
  store i64 %r4536, ptr %gmp4537, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd78 word 0xf9400928
  %r4538.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4538 = load i64, ptr %r4538.p, align 8, !alias.scope !3, !noalias !4
  %t4539 = add i64 %r4538, 16
  %gmp4540 = inttoptr i64 %t4539 to ptr
  %gml4541 = load i64, ptr %gmp4540, align 1, !alias.scope !4, !noalias !3
  %wp4542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4541, ptr %wp4542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd7c word 0xf9400108
  %r4543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4543 = load i64, ptr %r4543.p, align 8, !alias.scope !3, !noalias !4
  %gmp4544 = inttoptr i64 %r4543 to ptr
  %gml4545 = load i64, ptr %gmp4544, align 1, !alias.scope !4, !noalias !3
  %wp4546 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4545, ptr %wp4546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd80 word 0x91000908
  %r4547.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4547 = load i64, ptr %r4547.p, align 8, !alias.scope !3, !noalias !4
  %t4548 = add i64 %r4547, 2
  %wp4549 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4548, ptr %wp4549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd84 word 0xf9000d28
  %r4550.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4550 = load i64, ptr %r4550.p, align 8, !alias.scope !3, !noalias !4
  %t4551 = add i64 %r4550, 24
  %r4552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4552 = load i64, ptr %r4552.p, align 8, !alias.scope !3, !noalias !4
  %gmp4553 = inttoptr i64 %t4551 to ptr
  store i64 %r4552, ptr %gmp4553, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd88 word 0x36000093
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %t4555 = and i64 %r4554, 1
  %cmp4556 = icmp eq i64 %t4555, 0
  br i1 %cmp4556, label %L_80077cd98, label %L_80077cd8c_ft
L_80077cd98:
  ; @pc 0x80077cd98 word 0x36080093
  %r4565.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4565 = load i64, ptr %r4565.p, align 8, !alias.scope !3, !noalias !4
  %t4566 = and i64 %r4565, 2
  %cmp4567 = icmp eq i64 %t4566, 0
  br i1 %cmp4567, label %L_80077cda8, label %L_80077cd9c_ft
L_80077cda8:
  ; @pc 0x80077cda8 word 0x36100093
  %r4576.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4576 = load i64, ptr %r4576.p, align 8, !alias.scope !3, !noalias !4
  %t4577 = and i64 %r4576, 4
  %cmp4578 = icmp eq i64 %t4577, 0
  br i1 %cmp4578, label %L_80077cdb8, label %L_80077cdac_ft
L_80077cdb8:
  ; @pc 0x80077cdb8 word 0xa9554ff4
  %r4587.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4587 = load i64, ptr %r4587.p, align 8, !alias.scope !3, !noalias !4
  %t4588 = add i64 %r4587, 336
  %t4589 = add i64 %t4588, 8
  %gmp4590 = inttoptr i64 %t4588 to ptr
  %gml4591 = load i64, ptr %gmp4590, align 1, !alias.scope !4, !noalias !3
  %gmp4592 = inttoptr i64 %t4589 to ptr
  %gml4593 = load i64, ptr %gmp4592, align 1, !alias.scope !4, !noalias !3
  %wp4594 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml4591, ptr %wp4594, align 8, !alias.scope !3, !noalias !4
  %wp4595 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml4593, ptr %wp4595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdbc word 0xa95457f6
  %r4596.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4596 = load i64, ptr %r4596.p, align 8, !alias.scope !3, !noalias !4
  %t4597 = add i64 %r4596, 320
  %t4598 = add i64 %t4597, 8
  %gmp4599 = inttoptr i64 %t4597 to ptr
  %gml4600 = load i64, ptr %gmp4599, align 1, !alias.scope !4, !noalias !3
  %gmp4601 = inttoptr i64 %t4598 to ptr
  %gml4602 = load i64, ptr %gmp4601, align 1, !alias.scope !4, !noalias !3
  %wp4603 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4600, ptr %wp4603, align 8, !alias.scope !3, !noalias !4
  %wp4604 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml4602, ptr %wp4604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdc0 word 0xa9535ff8
  %r4605.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4605 = load i64, ptr %r4605.p, align 8, !alias.scope !3, !noalias !4
  %t4606 = add i64 %r4605, 304
  %t4607 = add i64 %t4606, 8
  %gmp4608 = inttoptr i64 %t4606 to ptr
  %gml4609 = load i64, ptr %gmp4608, align 1, !alias.scope !4, !noalias !3
  %gmp4610 = inttoptr i64 %t4607 to ptr
  %gml4611 = load i64, ptr %gmp4610, align 1, !alias.scope !4, !noalias !3
  %wp4612 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml4609, ptr %wp4612, align 8, !alias.scope !3, !noalias !4
  %wp4613 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4611, ptr %wp4613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdc4 word 0xa95267fa
  %r4614.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4614 = load i64, ptr %r4614.p, align 8, !alias.scope !3, !noalias !4
  %t4615 = add i64 %r4614, 288
  %t4616 = add i64 %t4615, 8
  %gmp4617 = inttoptr i64 %t4615 to ptr
  %gml4618 = load i64, ptr %gmp4617, align 1, !alias.scope !4, !noalias !3
  %gmp4619 = inttoptr i64 %t4616 to ptr
  %gml4620 = load i64, ptr %gmp4619, align 1, !alias.scope !4, !noalias !3
  %wp4621 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml4618, ptr %wp4621, align 8, !alias.scope !3, !noalias !4
  %wp4622 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml4620, ptr %wp4622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdc8 word 0xa9516ffc
  %r4623.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4623 = load i64, ptr %r4623.p, align 8, !alias.scope !3, !noalias !4
  %t4624 = add i64 %r4623, 272
  %t4625 = add i64 %t4624, 8
  %gmp4626 = inttoptr i64 %t4624 to ptr
  %gml4627 = load i64, ptr %gmp4626, align 1, !alias.scope !4, !noalias !3
  %gmp4628 = inttoptr i64 %t4625 to ptr
  %gml4629 = load i64, ptr %gmp4628, align 1, !alias.scope !4, !noalias !3
  %wp4630 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml4627, ptr %wp4630, align 8, !alias.scope !3, !noalias !4
  %wp4631 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml4629, ptr %wp4631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdcc word 0xa9507bfd
  %r4632.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4632 = load i64, ptr %r4632.p, align 8, !alias.scope !3, !noalias !4
  %t4633 = add i64 %r4632, 256
  %t4634 = add i64 %t4633, 8
  %gmp4635 = inttoptr i64 %t4633 to ptr
  %gml4636 = load i64, ptr %gmp4635, align 1, !alias.scope !4, !noalias !3
  %gmp4637 = inttoptr i64 %t4634 to ptr
  %gml4638 = load i64, ptr %gmp4637, align 1, !alias.scope !4, !noalias !3
  %wp4639 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml4636, ptr %wp4639, align 8, !alias.scope !3, !noalias !4
  %wp4640 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml4638, ptr %wp4640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdd0 word 0x910583ff
  %r4641.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4641 = load i64, ptr %r4641.p, align 8, !alias.scope !3, !noalias !4
  %t4642 = add i64 %r4641, 352
  %wp4643 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t4642, ptr %wp4643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdd4 word 0xd65f03c0
  ret void
L_80077cdd8:
  ; @pc 0x80077cdd8 word 0x2a1f03e4
  %t4644 = or i32 0, 0
  %c4645 = zext i32 %t4644 to i64
  %wp4646 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4645, ptr %wp4646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cddc word 0x17fffe5e
  br label %L_80077c754
L_80077cde0:
  ; @pc 0x80077cde0 word 0xeb01011f
  %r4647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4647 = load i64, ptr %r4647.p, align 8, !alias.scope !3, !noalias !4
  %r4648.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4648 = load i64, ptr %r4648.p, align 8, !alias.scope !3, !noalias !4
  %t4649 = sub i64 %r4647, %r4648
  %fn4650 = icmp slt i64 %t4649, 0
  %fz4651 = icmp eq i64 %t4649, 0
  %fc4652 = icmp uge i64 %r4647, %r4648
  %fx14653 = xor i64 %r4647, %r4648
  %fx24654 = xor i64 %r4647, %t4649
  %fva4655 = and i64 %fx14653, %fx24654
  %fv4656 = icmp slt i64 %fva4655, 0
  %nz4657 = zext i1 %fn4650 to i64
  %zz4658 = zext i1 %fz4651 to i64
  %cz4659 = zext i1 %fc4652 to i64
  %vz4660 = zext i1 %fv4656 to i64
  %ns4661 = shl i64 %nz4657, 31
  %zs4662 = shl i64 %zz4658, 30
  %cs4663 = shl i64 %cz4659, 29
  %vs4664 = shl i64 %vz4660, 28
  %nzor4665 = or i64 %ns4661, %zs4662
  %cvor4666 = or i64 %cs4663, %vs4664
  %nzcv4667 = or i64 %nzor4665, %cvor4666
  %wp4668 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4667, ptr %wp4668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cde4 word 0x54fff040
  %r4669.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4669 = load i64, ptr %r4669.p, align 8, !alias.scope !3, !noalias !4
  %fsh4671 = lshr i64 %r4669, 30
  %cond4670 = trunc i64 %fsh4671 to i1
  br i1 %cond4670, label %L_80077cbec, label %L_80077cde8_ft
L_80077ce04:
  ; @pc 0x80077ce04 word 0xf9400109
  %r4699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4699 = load i64, ptr %r4699.p, align 8, !alias.scope !3, !noalias !4
  %gmp4700 = inttoptr i64 %r4699 to ptr
  %gml4701 = load i64, ptr %gmp4700, align 1, !alias.scope !4, !noalias !3
  %wp4702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4701, ptr %wp4702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce08 word 0xf9000029
  %r4703.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4703 = load i64, ptr %r4703.p, align 8, !alias.scope !3, !noalias !4
  %r4704.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4704 = load i64, ptr %r4704.p, align 8, !alias.scope !3, !noalias !4
  %gmp4705 = inttoptr i64 %r4703 to ptr
  store i64 %r4704, ptr %gmp4705, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce0c word 0xb40000a9
  %r4706.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4706 = load i64, ptr %r4706.p, align 8, !alias.scope !3, !noalias !4
  %cmp4707 = icmp eq i64 %r4706, 0
  br i1 %cmp4707, label %L_80077ce20, label %L_80077ce10_ft
L_80077ce20:
  ; @pc 0x80077ce20 word 0xf9400909
  %r4724.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4724 = load i64, ptr %r4724.p, align 8, !alias.scope !3, !noalias !4
  %t4725 = add i64 %r4724, 16
  %gmp4726 = inttoptr i64 %t4725 to ptr
  %gml4727 = load i64, ptr %gmp4726, align 1, !alias.scope !4, !noalias !3
  %wp4728 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4727, ptr %wp4728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce24 word 0xf9000de9
  %r4729.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4729 = load i64, ptr %r4729.p, align 8, !alias.scope !3, !noalias !4
  %t4730 = add i64 %r4729, 24
  %r4731.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4731 = load i64, ptr %r4731.p, align 8, !alias.scope !3, !noalias !4
  %gmp4732 = inttoptr i64 %t4730 to ptr
  store i64 %r4731, ptr %gmp4732, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce28 word 0xf94013ea
  %r4733.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4733 = load i64, ptr %r4733.p, align 8, !alias.scope !3, !noalias !4
  %t4734 = add i64 %r4733, 32
  %gmp4735 = inttoptr i64 %t4734 to ptr
  %gml4736 = load i64, ptr %gmp4735, align 1, !alias.scope !4, !noalias !3
  %wp4737 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4736, ptr %wp4737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce2c word 0xf27ff929
  %r4738.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4738 = load i64, ptr %r4738.p, align 8, !alias.scope !3, !noalias !4
  %t4739 = and i64 %r4738, -2
  %fn4740 = icmp slt i64 %t4739, 0
  %fz4741 = icmp eq i64 %t4739, 0
  %nz4742 = zext i1 %fn4740 to i64
  %zz4743 = zext i1 %fz4741 to i64
  %ns4744 = shl i64 %nz4742, 31
  %zs4745 = shl i64 %zz4743, 30
  %nzcv4746 = or i64 %ns4744, %zs4745
  %wp4747 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4746, ptr %wp4747, align 8, !alias.scope !3, !noalias !4
  %wp4748 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4739, ptr %wp4748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce30 word 0x540000a0
  %r4749.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4749 = load i64, ptr %r4749.p, align 8, !alias.scope !3, !noalias !4
  %fsh4751 = lshr i64 %r4749, 30
  %cond4750 = trunc i64 %fsh4751 to i1
  br i1 %cond4750, label %L_80077ce44, label %L_80077ce34_ft
L_80077ce44:
  ; @pc 0x80077ce44 word 0xf9000141
  %r4790.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4790 = load i64, ptr %r4790.p, align 8, !alias.scope !3, !noalias !4
  %r4791.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4791 = load i64, ptr %r4791.p, align 8, !alias.scope !3, !noalias !4
  %gmp4792 = inttoptr i64 %r4790 to ptr
  store i64 %r4791, ptr %gmp4792, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce48 word 0xaa1903f8
  %r4793.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4793 = load i64, ptr %r4793.p, align 8, !alias.scope !3, !noalias !4
  %t4794 = or i64 0, %r4793
  %wp4795 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4794, ptr %wp4795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce4c word 0xf9002d1f
  %r4796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4796 = load i64, ptr %r4796.p, align 8, !alias.scope !3, !noalias !4
  %t4797 = add i64 %r4796, 88
  %gmp4798 = inttoptr i64 %t4797 to ptr
  store i64 0, ptr %gmp4798, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce50 word 0xa9007d1f
  %r4799.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4799 = load i64, ptr %r4799.p, align 8, !alias.scope !3, !noalias !4
  %t4800 = add i64 %r4799, 8
  %gmp4801 = inttoptr i64 %r4799 to ptr
  store i64 0, ptr %gmp4801, align 1, !alias.scope !4, !noalias !3
  %gmp4802 = inttoptr i64 %t4800 to ptr
  store i64 0, ptr %gmp4802, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce54 word 0xb9408be8
  %r4803.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4803 = load i64, ptr %r4803.p, align 8, !alias.scope !3, !noalias !4
  %t4804 = add i64 %r4803, 136
  %gmp4805 = inttoptr i64 %t4804 to ptr
  %gml4806 = load i32, ptr %gmp4805, align 1, !alias.scope !4, !noalias !3
  %c4807 = zext i32 %gml4806 to i64
  %wp4808 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4807, ptr %wp4808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce58 word 0x51000508
  %r4809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4809 = load i64, ptr %r4809.p, align 8, !alias.scope !3, !noalias !4
  %c4810 = trunc i64 %r4809 to i32
  %t4811 = sub i32 %c4810, 1
  %c4812 = zext i32 %t4811 to i64
  %wp4813 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4812, ptr %wp4813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce5c word 0xb9008be8
  %r4814.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4814 = load i64, ptr %r4814.p, align 8, !alias.scope !3, !noalias !4
  %t4815 = add i64 %r4814, 136
  %r4816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4816 = load i64, ptr %r4816.p, align 8, !alias.scope !3, !noalias !4
  %c4817 = trunc i64 %r4816 to i32
  %gmp4818 = inttoptr i64 %t4815 to ptr
  store i32 %c4817, ptr %gmp4818, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ce60 word 0x17ffff63
  br label %L_80077cbec
L_80077ce64:
  ; @pc 0x80077ce64 word 0xf9400709
  %r4819.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4819 = load i64, ptr %r4819.p, align 8, !alias.scope !3, !noalias !4
  %t4820 = add i64 %r4819, 8
  %gmp4821 = inttoptr i64 %t4820 to ptr
  %gml4822 = load i64, ptr %gmp4821, align 1, !alias.scope !4, !noalias !3
  %wp4823 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4822, ptr %wp4823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce68 word 0xf8696909
  %r4824.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4824 = load i64, ptr %r4824.p, align 8, !alias.scope !3, !noalias !4
  %r4825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4825 = load i64, ptr %r4825.p, align 8, !alias.scope !3, !noalias !4
  %t4826 = add i64 %r4824, %r4825
  %gmp4827 = inttoptr i64 %t4826 to ptr
  %gml4828 = load i64, ptr %gmp4827, align 1, !alias.scope !4, !noalias !3
  %wp4829 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4828, ptr %wp4829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce6c word 0xb5ffa5c9
  %r4830.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4830 = load i64, ptr %r4830.p, align 8, !alias.scope !3, !noalias !4
  %cmp4831 = icmp ne i64 %r4830, 0
  br i1 %cmp4831, label %L_80077c324, label %L_80077ce70_ft
L_80077ce88:
  ; @pc 0x80077ce88 word 0xf9402d29
  %r4856.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4856 = load i64, ptr %r4856.p, align 8, !alias.scope !3, !noalias !4
  %t4857 = add i64 %r4856, 88
  %gmp4858 = inttoptr i64 %t4857 to ptr
  %gml4859 = load i64, ptr %gmp4858, align 1, !alias.scope !4, !noalias !3
  %wp4860 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4859, ptr %wp4860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce8c word 0xb4ffa5c9
  %r4861.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4861 = load i64, ptr %r4861.p, align 8, !alias.scope !3, !noalias !4
  %cmp4862 = icmp eq i64 %r4861, 0
  br i1 %cmp4862, label %L_80077c344, label %L_80077ce90_ft
L_80077ce9c:
  ; @pc 0x80077ce9c word 0xf9402d29
  %r4870.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4870 = load i64, ptr %r4870.p, align 8, !alias.scope !3, !noalias !4
  %t4871 = add i64 %r4870, 88
  %gmp4872 = inttoptr i64 %t4871 to ptr
  %gml4873 = load i64, ptr %gmp4872, align 1, !alias.scope !4, !noalias !3
  %wp4874 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4873, ptr %wp4874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cea0 word 0xb4ffa569
  %r4875.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4875 = load i64, ptr %r4875.p, align 8, !alias.scope !3, !noalias !4
  %cmp4876 = icmp eq i64 %r4875, 0
  br i1 %cmp4876, label %L_80077c34c, label %L_80077cea4_ft
L_80077ceb0:
  ; @pc 0x80077ceb0 word 0xf9402d29
  %r4884.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4884 = load i64, ptr %r4884.p, align 8, !alias.scope !3, !noalias !4
  %t4885 = add i64 %r4884, 88
  %gmp4886 = inttoptr i64 %t4885 to ptr
  %gml4887 = load i64, ptr %gmp4886, align 1, !alias.scope !4, !noalias !3
  %wp4888 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4887, ptr %wp4888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ceb4 word 0xb4ffa509
  %r4889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4889 = load i64, ptr %r4889.p, align 8, !alias.scope !3, !noalias !4
  %cmp4890 = icmp eq i64 %r4889, 0
  br i1 %cmp4890, label %L_80077c354, label %L_80077ceb8_ft
L_80077cec4:
  ; @pc 0x80077cec4 word 0xf9402d08
  %r4898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4898 = load i64, ptr %r4898.p, align 8, !alias.scope !3, !noalias !4
  %t4899 = add i64 %r4898, 88
  %gmp4900 = inttoptr i64 %t4899 to ptr
  %gml4901 = load i64, ptr %gmp4900, align 1, !alias.scope !4, !noalias !3
  %wp4902 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4901, ptr %wp4902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cec8 word 0xb4ffa528
  %r4903.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4903 = load i64, ptr %r4903.p, align 8, !alias.scope !3, !noalias !4
  %cmp4904 = icmp eq i64 %r4903, 0
  br i1 %cmp4904, label %L_80077c36c, label %L_80077cecc_ft
L_80077ced8:
  ; @pc 0x80077ced8 word 0xf0018e68
  %wp4912 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cedc word 0xb0018f09
  %wp4913 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp4913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cee0 word 0xf9454108
  %r4914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4914 = load i64, ptr %r4914.p, align 8, !alias.scope !3, !noalias !4
  %t4915 = add i64 %r4914, 2688
  %gmp4916 = inttoptr i64 %t4915 to ptr
  %gml4917 = load i64, ptr %gmp4916, align 1, !alias.scope !4, !noalias !3
  %wp4918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4917, ptr %wp4918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cee4 word 0xf943bd29
  %r4919.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4919 = load i64, ptr %r4919.p, align 8, !alias.scope !3, !noalias !4
  %t4920 = add i64 %r4919, 1912
  %gmp4921 = inttoptr i64 %t4920 to ptr
  %gml4922 = load i64, ptr %gmp4921, align 1, !alias.scope !4, !noalias !3
  %wp4923 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4922, ptr %wp4923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cee8 word 0xf9400115
  %r4924.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4924 = load i64, ptr %r4924.p, align 8, !alias.scope !3, !noalias !4
  %gmp4925 = inttoptr i64 %r4924 to ptr
  %gml4926 = load i64, ptr %gmp4925, align 1, !alias.scope !4, !noalias !3
  %wp4927 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml4926, ptr %wp4927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ceec word 0xf9400128
  %r4928.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4928 = load i64, ptr %r4928.p, align 8, !alias.scope !3, !noalias !4
  %gmp4929 = inttoptr i64 %r4928 to ptr
  %gml4930 = load i64, ptr %gmp4929, align 1, !alias.scope !4, !noalias !3
  %wp4931 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4930, ptr %wp4931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cef0 word 0xb9404900
  %r4932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4932 = load i64, ptr %r4932.p, align 8, !alias.scope !3, !noalias !4
  %t4933 = add i64 %r4932, 72
  %gmp4934 = inttoptr i64 %t4933 to ptr
  %gml4935 = load i32, ptr %gmp4934, align 1, !alias.scope !4, !noalias !3
  %c4936 = zext i32 %gml4935 to i64
  %wp4937 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4936, ptr %wp4937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cef4 word 0x94909af3
  %wp4938 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367590136, ptr %wp4938, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x80077cef8 word 0xb4000bc0
  %r4939.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4939 = load i64, ptr %r4939.p, align 8, !alias.scope !3, !noalias !4
  %cmp4940 = icmp eq i64 %r4939, 0
  br i1 %cmp4940, label %L_80077d070, label %L_80077cefc_ft
L_80077cf00:
  ; @pc 0x80077cf00 word 0xf9400108
  %r4944.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4944 = load i64, ptr %r4944.p, align 8, !alias.scope !3, !noalias !4
  %gmp4945 = inttoptr i64 %r4944 to ptr
  %gml4946 = load i64, ptr %gmp4945, align 1, !alias.scope !4, !noalias !3
  %wp4947 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4946, ptr %wp4947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf04 word 0x17fffd1f
  br label %L_80077c380
L_80077cf08:
  ; @pc 0x80077cf08 word 0xaa1f03e8
  %t4948 = or i64 0, 0
  %wp4949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4948, ptr %wp4949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf0c word 0x17fffd23
  br label %L_80077c398
L_80077cf10:
  ; @pc 0x80077cf10 word 0xaa1f03e9
  %t4950 = or i64 0, 0
  %wp4951 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4950, ptr %wp4951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf14 word 0xaa1f03e8
  %t4952 = or i64 0, 0
  %wp4953 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4952, ptr %wp4953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf18 word 0x17fffd38
  br label %L_80077c3f8
L_80077cf1c:
  ; @pc 0x80077cf1c word 0xaa1f03ea
  %t4954 = or i64 0, 0
  %wp4955 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4954, ptr %wp4955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf20 word 0xaa1f03eb
  %t4956 = or i64 0, 0
  %wp4957 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4956, ptr %wp4957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf24 word 0x17fffd37
  br label %L_80077c400
L_80077cf28:
  ; @pc 0x80077cf28 word 0xa940b40c
  %r4958.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4958 = load i64, ptr %r4958.p, align 8, !alias.scope !3, !noalias !4
  %t4959 = add i64 %r4958, 8
  %t4960 = add i64 %t4959, 8
  %gmp4961 = inttoptr i64 %t4959 to ptr
  %gml4962 = load i64, ptr %gmp4961, align 1, !alias.scope !4, !noalias !3
  %gmp4963 = inttoptr i64 %t4960 to ptr
  %gml4964 = load i64, ptr %gmp4963, align 1, !alias.scope !4, !noalias !3
  %wp4965 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4962, ptr %wp4965, align 8, !alias.scope !3, !noalias !4
  %wp4966 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4964, ptr %wp4966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf2c word 0xf100019f
  %r4967.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4967 = load i64, ptr %r4967.p, align 8, !alias.scope !3, !noalias !4
  %t4968 = sub i64 %r4967, 0
  %fn4969 = icmp slt i64 %t4968, 0
  %fz4970 = icmp eq i64 %t4968, 0
  %fc4971 = icmp uge i64 %r4967, 0
  %fx14972 = xor i64 %r4967, 0
  %fx24973 = xor i64 %r4967, %t4968
  %fva4974 = and i64 %fx14972, %fx24973
  %fv4975 = icmp slt i64 %fva4974, 0
  %nz4976 = zext i1 %fn4969 to i64
  %zz4977 = zext i1 %fz4970 to i64
  %cz4978 = zext i1 %fc4971 to i64
  %vz4979 = zext i1 %fv4975 to i64
  %ns4980 = shl i64 %nz4976, 31
  %zs4981 = shl i64 %zz4977, 30
  %cs4982 = shl i64 %cz4978, 29
  %vs4983 = shl i64 %vz4979, 28
  %nzor4984 = or i64 %ns4980, %zs4981
  %cvor4985 = or i64 %cs4982, %vs4983
  %nzcv4986 = or i64 %nzor4984, %cvor4985
  %wp4987 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4986, ptr %wp4987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf30 word 0x1a9f07ef
  %t4988 = add i32 0, 1
  %r4989.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4989 = load i64, ptr %r4989.p, align 8, !alias.scope !3, !noalias !4
  %fsh4991 = lshr i64 %r4989, 30
  %cond4990 = trunc i64 %fsh4991 to i1
  %sel4992 = select i1 %cond4990, i32 0, i32 %t4988
  %c4993 = zext i32 %sel4992 to i64
  %wp4994 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4993, ptr %wp4994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf34 word 0x17fffd38
  br label %L_80077c414
L_80077cf38:
  ; @pc 0x80077cf38 word 0x2a1f03ee
  %t4995 = or i32 0, 0
  %c4996 = zext i32 %t4995 to i64
  %wp4997 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c4996, ptr %wp4997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf3c word 0x17fffd39
  br label %L_80077c420
L_80077cf40:
  ; @pc 0x80077cf40 word 0x2a1f03f0
  %t4998 = or i32 0, 0
  %c4999 = zext i32 %t4998 to i64
  %wp5000 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4999, ptr %wp5000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf44 word 0x17fffd3a
  br label %L_80077c42c
L_80077cf48:
  ; @pc 0x80077cf48 word 0x2a1f03f0
  %t5001 = or i32 0, 0
  %c5002 = zext i32 %t5001 to i64
  %wp5003 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5002, ptr %wp5003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf4c word 0x17fffd3a
  br label %L_80077c434
L_80077cf50:
  ; @pc 0x80077cf50 word 0x5280008f
  %c5004 = zext i32 4 to i64
  %wp5005 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c5004, ptr %wp5005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf54 word 0x17fffd3e
  br label %L_80077c44c
L_80077cf58:
  ; @pc 0x80077cf58 word 0xaa1f03ef
  %t5006 = or i64 0, 0
  %wp5007 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t5006, ptr %wp5007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf5c word 0x17fffe22
  br label %L_80077c7e4
L_80077cf60:
  ; @pc 0x80077cf60 word 0xf90035ab
  %r5008.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5008 = load i64, ptr %r5008.p, align 8, !alias.scope !3, !noalias !4
  %t5009 = add i64 %r5008, 104
  %r5010.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5010 = load i64, ptr %r5010.p, align 8, !alias.scope !3, !noalias !4
  %gmp5011 = inttoptr i64 %t5009 to ptr
  store i64 %r5010, ptr %gmp5011, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cf64 word 0xf940014c
  %r5012.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5012 = load i64, ptr %r5012.p, align 8, !alias.scope !3, !noalias !4
  %gmp5013 = inttoptr i64 %r5012 to ptr
  %gml5014 = load i64, ptr %gmp5013, align 1, !alias.scope !4, !noalias !3
  %wp5015 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5014, ptr %wp5015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf68 word 0x17ffff4b
  br label %L_80077cc94
L_80077cf6c:
  ; @pc 0x80077cf6c word 0xf9400d29
  %r5016.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5016 = load i64, ptr %r5016.p, align 8, !alias.scope !3, !noalias !4
  %t5017 = add i64 %r5016, 24
  %gmp5018 = inttoptr i64 %t5017 to ptr
  %gml5019 = load i64, ptr %gmp5018, align 1, !alias.scope !4, !noalias !3
  %wp5020 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5019, ptr %wp5020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf70 word 0xb4ff9e69
  %r5021.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5021 = load i64, ptr %r5021.p, align 8, !alias.scope !3, !noalias !4
  %cmp5022 = icmp eq i64 %r5021, 0
  br i1 %cmp5022, label %L_80077c33c, label %L_80077cf74_ft
L_80077cf78:
  ; @pc 0x80077cf78 word 0xf9400d29
  %r5023.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5023 = load i64, ptr %r5023.p, align 8, !alias.scope !3, !noalias !4
  %t5024 = add i64 %r5023, 24
  %gmp5025 = inttoptr i64 %t5024 to ptr
  %gml5026 = load i64, ptr %gmp5025, align 1, !alias.scope !4, !noalias !3
  %wp5027 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5026, ptr %wp5027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf7c word 0xb4ff9f49
  %r5028.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5028 = load i64, ptr %r5028.p, align 8, !alias.scope !3, !noalias !4
  %cmp5029 = icmp eq i64 %r5028, 0
  br i1 %cmp5029, label %L_80077c364, label %L_80077cf80
L_80077cf80:
  ; @pc 0x80077cf80 word 0xaa1c03e0
  %r5030.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5030 = load i64, ptr %r5030.p, align 8, !alias.scope !3, !noalias !4
  %t5031 = or i64 0, %r5030
  %wp5032 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5031, ptr %wp5032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf84 word 0x9481592a
  %wp5033 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367590280, ptr %wp5033, align 8, !alias.scope !3, !noalias !4
  call void @f_8027d342c(ptr %c)
  ; @pc 0x80077cf88 word 0x17fffcf9
  br label %L_80077c36c
L_80077cf8c:
  ; @pc 0x80077cf8c word 0x52800023
  %c5034 = zext i32 1 to i64
  %wp5035 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5034, ptr %wp5035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf90 word 0x17fffdc6
  br label %L_80077c6a8
L_80077cf94:
  ; @pc 0x80077cf94 word 0xaa1803f9
  %r5036.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5036 = load i64, ptr %r5036.p, align 8, !alias.scope !3, !noalias !4
  %t5037 = or i64 0, %r5036
  %wp5038 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5037, ptr %wp5038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cf98 word 0xf9002bff
  %r5039.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5039 = load i64, ptr %r5039.p, align 8, !alias.scope !3, !noalias !4
  %t5040 = add i64 %r5039, 80
  %gmp5041 = inttoptr i64 %t5040 to ptr
  store i64 0, ptr %gmp5041, align 1, !alias.scope !4, !noalias !3
  br label %L_80077cf9c
L_80077cf9c:
  ; @pc 0x80077cf9c word 0xb90073ff
  %r5042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5042 = load i64, ptr %r5042.p, align 8, !alias.scope !3, !noalias !4
  %t5043 = add i64 %r5042, 112
  %gmp5044 = inttoptr i64 %t5043 to ptr
  store i32 0, ptr %gmp5044, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cfa0 word 0xb0018c16
  %wp5045 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419494912, ptr %wp5045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfa4 word 0x9107c2d6
  %r5046.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5046 = load i64, ptr %r5046.p, align 8, !alias.scope !3, !noalias !4
  %t5047 = add i64 %r5046, 496
  %wp5048 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5047, ptr %wp5048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfa8 word 0xaa1903f8
  %r5049.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5049 = load i64, ptr %r5049.p, align 8, !alias.scope !3, !noalias !4
  %t5050 = or i64 0, %r5049
  %wp5051 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t5050, ptr %wp5051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfac word 0x17ffff5b
  br label %L_80077cd18
L_80077cfb0:
  ; @pc 0x80077cfb0 word 0xaa0003e9
  %r5052.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5052 = load i64, ptr %r5052.p, align 8, !alias.scope !3, !noalias !4
  %t5053 = or i64 0, %r5052
  %wp5054 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5053, ptr %wp5054, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cfb4
L_80077cfb4:
  ; @pc 0x80077cfb4 word 0xaa0903e8
  %r5055.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5055 = load i64, ptr %r5055.p, align 8, !alias.scope !3, !noalias !4
  %t5056 = or i64 0, %r5055
  %wp5057 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5056, ptr %wp5057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfb8 word 0xf9400129
  %r5058.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5058 = load i64, ptr %r5058.p, align 8, !alias.scope !3, !noalias !4
  %gmp5059 = inttoptr i64 %r5058 to ptr
  %gml5060 = load i64, ptr %gmp5059, align 1, !alias.scope !4, !noalias !3
  %wp5061 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5060, ptr %wp5061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfbc word 0xb5ffffc9
  %r5062.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5062 = load i64, ptr %r5062.p, align 8, !alias.scope !3, !noalias !4
  %cmp5063 = icmp ne i64 %r5062, 0
  br i1 %cmp5063, label %L_80077cfb4, label %L_80077cfc0
L_80077cfc0:
  ; @pc 0x80077cfc0 word 0xd1002109
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %t5065 = sub i64 %r5064, 8
  %wp5066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5065, ptr %wp5066, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cfc4
L_80077cfc4:
  ; @pc 0x80077cfc4 word 0xaa0903ea
  %r5067.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5067 = load i64, ptr %r5067.p, align 8, !alias.scope !3, !noalias !4
  %t5068 = or i64 0, %r5067
  %wp5069 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5068, ptr %wp5069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfc8 word 0xa9c6b54b
  %r5070.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5070 = load i64, ptr %r5070.p, align 8, !alias.scope !3, !noalias !4
  %t5071 = add i64 %r5070, 104
  %t5072 = add i64 %t5071, 8
  %gmp5073 = inttoptr i64 %t5071 to ptr
  %gml5074 = load i64, ptr %gmp5073, align 1, !alias.scope !4, !noalias !3
  %gmp5075 = inttoptr i64 %t5072 to ptr
  %gml5076 = load i64, ptr %gmp5075, align 1, !alias.scope !4, !noalias !3
  %wp5077 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5071, ptr %wp5077, align 8, !alias.scope !3, !noalias !4
  %wp5078 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5074, ptr %wp5078, align 8, !alias.scope !3, !noalias !4
  %wp5079 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5076, ptr %wp5079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfcc word 0xaa0b03ec
  %r5080.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5080 = load i64, ptr %r5080.p, align 8, !alias.scope !3, !noalias !4
  %t5081 = or i64 0, %r5080
  %wp5082 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5081, ptr %wp5082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfd0 word 0xb500054d
  %r5083.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5083 = load i64, ptr %r5083.p, align 8, !alias.scope !3, !noalias !4
  %cmp5084 = icmp ne i64 %r5083, 0
  br i1 %cmp5084, label %L_80077d078, label %L_80077cfd4
L_80077cfd4:
  ; @pc 0x80077cfd4 word 0xb400006c
  %r5085.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5085 = load i64, ptr %r5085.p, align 8, !alias.scope !3, !noalias !4
  %cmp5086 = icmp eq i64 %r5085, 0
  br i1 %cmp5086, label %L_80077cfe0, label %L_80077cfd8_ft
L_80077cfe0:
  ; @pc 0x80077cfe0 word 0xaa0b03e9
  %r5096.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5096 = load i64, ptr %r5096.p, align 8, !alias.scope !3, !noalias !4
  %t5097 = or i64 0, %r5096
  %wp5098 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5097, ptr %wp5098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfe4 word 0xa900fd5f
  %r5099.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5099 = load i64, ptr %r5099.p, align 8, !alias.scope !3, !noalias !4
  %t5100 = add i64 %r5099, 8
  %t5101 = add i64 %t5100, 8
  %gmp5102 = inttoptr i64 %t5100 to ptr
  store i64 0, ptr %gmp5102, align 1, !alias.scope !4, !noalias !3
  %gmp5103 = inttoptr i64 %t5101 to ptr
  store i64 0, ptr %gmp5103, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cfe8 word 0xf900015f
  %r5104.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5104 = load i64, ptr %r5104.p, align 8, !alias.scope !3, !noalias !4
  %gmp5105 = inttoptr i64 %r5104 to ptr
  store i64 0, ptr %gmp5105, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cfec word 0xb5fffecb
  %r5106.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5106 = load i64, ptr %r5106.p, align 8, !alias.scope !3, !noalias !4
  %cmp5107 = icmp ne i64 %r5106, 0
  br i1 %cmp5107, label %L_80077cfc4, label %L_80077cff0_ft
L_80077cffc:
  ; @pc 0x80077cffc word 0xf9400928
  %r5118.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5118 = load i64, ptr %r5118.p, align 8, !alias.scope !3, !noalias !4
  %t5119 = add i64 %r5118, 16
  %gmp5120 = inttoptr i64 %t5119 to ptr
  %gml5121 = load i64, ptr %gmp5120, align 1, !alias.scope !4, !noalias !3
  %wp5122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5121, ptr %wp5122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d000 word 0xf27ff908
  %r5123.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5123 = load i64, ptr %r5123.p, align 8, !alias.scope !3, !noalias !4
  %t5124 = and i64 %r5123, -2
  %fn5125 = icmp slt i64 %t5124, 0
  %fz5126 = icmp eq i64 %t5124, 0
  %nz5127 = zext i1 %fn5125 to i64
  %zz5128 = zext i1 %fz5126 to i64
  %ns5129 = shl i64 %nz5127, 31
  %zs5130 = shl i64 %zz5128, 30
  %nzcv5131 = or i64 %ns5129, %zs5130
  %wp5132 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5131, ptr %wp5132, align 8, !alias.scope !3, !noalias !4
  %wp5133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5124, ptr %wp5133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d004 word 0x54000160
  %r5134.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5134 = load i64, ptr %r5134.p, align 8, !alias.scope !3, !noalias !4
  %fsh5136 = lshr i64 %r5134, 30
  %cond5135 = trunc i64 %fsh5136 to i1
  br i1 %cond5135, label %L_80077d030, label %L_80077d008_ft
L_80077d01c:
  ; @pc 0x80077d01c word 0xf9400149
  %r5170.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5170 = load i64, ptr %r5170.p, align 8, !alias.scope !3, !noalias !4
  %gmp5171 = inttoptr i64 %r5170 to ptr
  %gml5172 = load i64, ptr %gmp5171, align 1, !alias.scope !4, !noalias !3
  %wp5173 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5172, ptr %wp5173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d020 word 0xaa0a03e8
  %r5174.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5174 = load i64, ptr %r5174.p, align 8, !alias.scope !3, !noalias !4
  %t5175 = or i64 0, %r5174
  %wp5176 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5175, ptr %wp5176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d024 word 0xaa0903ea
  %r5177.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5177 = load i64, ptr %r5177.p, align 8, !alias.scope !3, !noalias !4
  %t5178 = or i64 0, %r5177
  %wp5179 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5178, ptr %wp5179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d028 word 0xb4fffcc9
  %r5180.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5180 = load i64, ptr %r5180.p, align 8, !alias.scope !3, !noalias !4
  %cmp5181 = icmp eq i64 %r5180, 0
  br i1 %cmp5181, label %L_80077cfc0, label %L_80077d02c_ft
L_80077d030:
  ; @pc 0x80077d030 word 0xf94017e9
  %r5182.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5182 = load i64, ptr %r5182.p, align 8, !alias.scope !3, !noalias !4
  %t5183 = add i64 %r5182, 40
  %gmp5184 = inttoptr i64 %t5183 to ptr
  %gml5185 = load i64, ptr %gmp5184, align 1, !alias.scope !4, !noalias !3
  %wp5186 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5185, ptr %wp5186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d034 word 0xf0010708
  %wp5187 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34402074624, ptr %wp5187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d038 word 0x9117e108
  %r5188.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5188 = load i64, ptr %r5188.p, align 8, !alias.scope !3, !noalias !4
  %t5189 = add i64 %r5188, 1528
  %wp5190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5189, ptr %wp5190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d03c word 0xa93d7fa8
  %r5191.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5191 = load i64, ptr %r5191.p, align 8, !alias.scope !3, !noalias !4
  %t5192 = add i64 %r5191, -48
  %t5193 = add i64 %t5192, 8
  %r5194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5194 = load i64, ptr %r5194.p, align 8, !alias.scope !3, !noalias !4
  %gmp5195 = inttoptr i64 %t5192 to ptr
  store i64 %r5194, ptr %gmp5195, align 1, !alias.scope !4, !noalias !3
  %gmp5196 = inttoptr i64 %t5193 to ptr
  store i64 0, ptr %gmp5196, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d040 word 0x90018c08
  %wp5197 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419494912, ptr %wp5197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d044 word 0x9108c108
  %r5198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5198 = load i64, ptr %r5198.p, align 8, !alias.scope !3, !noalias !4
  %t5199 = add i64 %r5198, 560
  %wp5200 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5199, ptr %wp5200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d048 word 0xd10103a1
  %r5201.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5201 = load i64, ptr %r5201.p, align 8, !alias.scope !3, !noalias !4
  %t5202 = sub i64 %r5201, 64
  %wp5203 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5202, ptr %wp5203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d04c word 0xb90073ff
  %r5204.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5204 = load i64, ptr %r5204.p, align 8, !alias.scope !3, !noalias !4
  %t5205 = add i64 %r5204, 112
  %gmp5206 = inttoptr i64 %t5205 to ptr
  store i32 0, ptr %gmp5206, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d050 word 0xa93c27a8
  %r5207.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5207 = load i64, ptr %r5207.p, align 8, !alias.scope !3, !noalias !4
  %t5208 = add i64 %r5207, -64
  %t5209 = add i64 %t5208, 8
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %gmp5211 = inttoptr i64 %t5208 to ptr
  store i64 %r5210, ptr %gmp5211, align 1, !alias.scope !4, !noalias !3
  %r5212.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5212 = load i64, ptr %r5212.p, align 8, !alias.scope !3, !noalias !4
  %gmp5213 = inttoptr i64 %t5209 to ptr
  store i64 %r5212, ptr %gmp5213, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d054 word 0x97e7f1e2
  %wp5214 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367590488, ptr %wp5214, align 8, !alias.scope !3, !noalias !4
  call void @f_8001797dc(ptr %c)
  ; @pc 0x80077d058 word 0xf9400fe9
  %r5215.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5215 = load i64, ptr %r5215.p, align 8, !alias.scope !3, !noalias !4
  %t5216 = add i64 %r5215, 24
  %gmp5217 = inttoptr i64 %t5216 to ptr
  %gml5218 = load i64, ptr %gmp5217, align 1, !alias.scope !4, !noalias !3
  %wp5219 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5218, ptr %wp5219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d05c word 0x90018c16
  %wp5220 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419494912, ptr %wp5220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d060 word 0x9107c2d6
  %r5221.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5221 = load i64, ptr %r5221.p, align 8, !alias.scope !3, !noalias !4
  %t5222 = add i64 %r5221, 496
  %wp5223 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5222, ptr %wp5223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d064 word 0x17ffff37
  br label %L_80077cd40
L_80077d068:
  ; @pc 0x80077d068 word 0x2a1f03f3
  %t5224 = or i32 0, 0
  %c5225 = zext i32 %t5224 to i64
  %wp5226 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5225, ptr %wp5226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d06c word 0x17ffff3a
  br label %L_80077cd54
L_80077d070:
  ; @pc 0x80077d070 word 0x910022a8
  %r5227.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5227 = load i64, ptr %r5227.p, align 8, !alias.scope !3, !noalias !4
  %t5228 = add i64 %r5227, 8
  %wp5229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5228, ptr %wp5229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d074 word 0x17ffffa3
  br label %L_80077cf00
L_80077d078:
  ; @pc 0x80077d078 word 0xf90035ab
  %r5230.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5230 = load i64, ptr %r5230.p, align 8, !alias.scope !3, !noalias !4
  %t5231 = add i64 %r5230, 104
  %r5232.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5232 = load i64, ptr %r5232.p, align 8, !alias.scope !3, !noalias !4
  %gmp5233 = inttoptr i64 %t5231 to ptr
  store i64 %r5232, ptr %gmp5233, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d07c word 0xf940014c
  %r5234.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5234 = load i64, ptr %r5234.p, align 8, !alias.scope !3, !noalias !4
  %gmp5235 = inttoptr i64 %r5234 to ptr
  %gml5236 = load i64, ptr %gmp5235, align 1, !alias.scope !4, !noalias !3
  %wp5237 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5236, ptr %wp5237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d080 word 0x17ffffd5
  br label %L_80077cfd4
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367586688, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077c180
L_80077c218_ft:
  ; @pc 0x80077c218 word 0x9101a3e8
  %r165.p = getelementptr inbounds i8, ptr %c, i64 256
  %r165 = load i64, ptr %r165.p, align 8, !alias.scope !3, !noalias !4
  %t166 = add i64 %r165, 104
  %wp167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t166, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c21c word 0xf0018ef8
  %wp168 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419879936, ptr %wp168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c220 word 0xaa1f03e9
  %t169 = or i64 0, 0
  %wp170 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t169, ptr %wp170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c224 word 0x9100410a
  %r171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r171 = load i64, ptr %r171.p, align 8, !alias.scope !3, !noalias !4
  %t172 = add i64 %r171, 16
  %wp173 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t172, ptr %wp173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c228 word 0x91006108
  %r174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r174 = load i64, ptr %r174.p, align 8, !alias.scope !3, !noalias !4
  %t175 = add i64 %r174, 24
  %wp176 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t175, ptr %wp176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c22c word 0xb0018c16
  %wp177 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419494912, ptr %wp177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c230 word 0x9107c2d6
  %r178.p = getelementptr inbounds i8, ptr %c, i64 176
  %r178 = load i64, ptr %r178.p, align 8, !alias.scope !3, !noalias !4
  %t179 = add i64 %r178, 496
  %wp180 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t179, ptr %wp180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c234 word 0xa9022be8
  %r181.p = getelementptr inbounds i8, ptr %c, i64 256
  %r181 = load i64, ptr %r181.p, align 8, !alias.scope !3, !noalias !4
  %t182 = add i64 %r181, 32
  %t183 = add i64 %t182, 8
  %r184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %gmp185 = inttoptr i64 %t182 to ptr
  store i64 %r184, ptr %gmp185, align 1, !alias.scope !4, !noalias !3
  %r186.p = getelementptr inbounds i8, ptr %c, i64 80
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %gmp187 = inttoptr i64 %t183 to ptr
  store i64 %r186, ptr %gmp187, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c238 word 0x90018e88
  %wp188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c23c word 0xf9478b18
  %r189.p = getelementptr inbounds i8, ptr %c, i64 192
  %r189 = load i64, ptr %r189.p, align 8, !alias.scope !3, !noalias !4
  %t190 = add i64 %r189, 3856
  %gmp191 = inttoptr i64 %t190 to ptr
  %gml192 = load i64, ptr %gmp191, align 1, !alias.scope !4, !noalias !3
  %wp193 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c240 word 0xf9475108
  %r194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %t195 = add i64 %r194, 3744
  %gmp196 = inttoptr i64 %t195 to ptr
  %gml197 = load i64, ptr %gmp196, align 1, !alias.scope !4, !noalias !3
  %wp198 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml197, ptr %wp198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c244 word 0x12800013
  %c199 = zext i32 -1 to i64
  %wp200 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c199, ptr %wp200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c248 word 0xd2c00034
  %wp201 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 4294967296, ptr %wp201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c24c word 0x91004108
  %r202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r202 = load i64, ptr %r202.p, align 8, !alias.scope !3, !noalias !4
  %t203 = add i64 %r202, 16
  %wp204 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t203, ptr %wp204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c250 word 0xf90023e8
  %r205.p = getelementptr inbounds i8, ptr %c, i64 256
  %r205 = load i64, ptr %r205.p, align 8, !alias.scope !3, !noalias !4
  %t206 = add i64 %r205, 64
  %r207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %gmp208 = inttoptr i64 %t206 to ptr
  store i64 %r207, ptr %gmp208, align 1, !alias.scope !4, !noalias !3
  br label %L_80077c254
L_80077c2d0_ft:
  ; @pc 0x80077c2d0 word 0xf9402fe0
  %r323.p = getelementptr inbounds i8, ptr %c, i64 256
  %r323 = load i64, ptr %r323.p, align 8, !alias.scope !3, !noalias !4
  %t324 = add i64 %r323, 88
  %gmp325 = inttoptr i64 %t324 to ptr
  %gml326 = load i64, ptr %gmp325, align 1, !alias.scope !4, !noalias !3
  %wp327 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml326, ptr %wp327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2d4 word 0xd379e341
  %r328.p = getelementptr inbounds i8, ptr %c, i64 208
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %ror329 = call i64 @llvm.fshr.i64(i64 %r328, i64 %r328, i64 57)
  %t330 = and i64 %ror329, -128
  %wp331 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t330, ptr %wp331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2d8 word 0x52800102
  %c332 = zext i32 8 to i64
  %wp333 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c332, ptr %wp333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2dc word 0x2a1f03e3
  %t334 = or i32 0, 0
  %c335 = zext i32 %t334 to i64
  %wp336 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c335, ptr %wp336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2e0 word 0x97e3f690
  %wp337 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367587044, ptr %wp337, align 8, !alias.scope !3, !noalias !4
  call void @f_800079d20(ptr %c)
  ; @pc 0x80077c2e4 word 0xaa1f03fb
  %t338 = or i64 0, 0
  %wp339 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t338, ptr %wp339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c2e8 word 0xf9002be0
  %r340.p = getelementptr inbounds i8, ptr %c, i64 256
  %r340 = load i64, ptr %r340.p, align 8, !alias.scope !3, !noalias !4
  %t341 = add i64 %r340, 80
  %r342.p = getelementptr inbounds i8, ptr %c, i64 0
  %r342 = load i64, ptr %r342.p, align 8, !alias.scope !3, !noalias !4
  %gmp343 = inttoptr i64 %t341 to ptr
  store i64 %r342, ptr %gmp343, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077c2ec word 0x14000004
  br label %L_80077c2fc
L_80077c32c_ft:
  ; @pc 0x80077c32c word 0xf9400109
  %r426.p = getelementptr inbounds i8, ptr %c, i64 64
  %r426 = load i64, ptr %r426.p, align 8, !alias.scope !3, !noalias !4
  %gmp427 = inttoptr i64 %r426 to ptr
  %gml428 = load i64, ptr %gmp427, align 1, !alias.scope !4, !noalias !3
  %wp429 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml428, ptr %wp429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c330 word 0xb4000069
  %r430.p = getelementptr inbounds i8, ptr %c, i64 72
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %cmp431 = icmp eq i64 %r430, 0
  br i1 %cmp431, label %L_80077c33c, label %L_80077c334_ft
L_80077c334_ft:
  ; @pc 0x80077c334 word 0xf9402d29
  %r432.p = getelementptr inbounds i8, ptr %c, i64 72
  %r432 = load i64, ptr %r432.p, align 8, !alias.scope !3, !noalias !4
  %t433 = add i64 %r432, 88
  %gmp434 = inttoptr i64 %t433 to ptr
  %gml435 = load i64, ptr %gmp434, align 1, !alias.scope !4, !noalias !3
  %wp436 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml435, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c338 word 0xb50061a9
  %r437.p = getelementptr inbounds i8, ptr %c, i64 72
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %cmp438 = icmp ne i64 %r437, 0
  br i1 %cmp438, label %L_80077cf6c, label %L_80077c33c
L_80077c35c_ft:
  ; @pc 0x80077c35c word 0xf9402d29
  %r467.p = getelementptr inbounds i8, ptr %c, i64 72
  %r467 = load i64, ptr %r467.p, align 8, !alias.scope !3, !noalias !4
  %t468 = add i64 %r467, 88
  %gmp469 = inttoptr i64 %t468 to ptr
  %gml470 = load i64, ptr %gmp469, align 1, !alias.scope !4, !noalias !3
  %wp471 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml470, ptr %wp471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c360 word 0xb50060c9
  %r472.p = getelementptr inbounds i8, ptr %c, i64 72
  %r472 = load i64, ptr %r472.p, align 8, !alias.scope !3, !noalias !4
  %cmp473 = icmp ne i64 %r472, 0
  br i1 %cmp473, label %L_80077cf78, label %L_80077c364
L_80077c394_ft:
  ; @pc 0x80077c394 word 0xf9402d28
  %r519.p = getelementptr inbounds i8, ptr %c, i64 72
  %r519 = load i64, ptr %r519.p, align 8, !alias.scope !3, !noalias !4
  %t520 = add i64 %r519, 88
  %gmp521 = inttoptr i64 %t520 to ptr
  %gml522 = load i64, ptr %gmp521, align 1, !alias.scope !4, !noalias !3
  %wp523 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml522, ptr %wp523, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c398
L_80077c3f4_ft:
  ; @pc 0x80077c3f4 word 0xa940a2a9
  %r588.p = getelementptr inbounds i8, ptr %c, i64 168
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %t589 = add i64 %r588, 8
  %t590 = add i64 %t589, 8
  %gmp591 = inttoptr i64 %t589 to ptr
  %gml592 = load i64, ptr %gmp591, align 1, !alias.scope !4, !noalias !3
  %gmp593 = inttoptr i64 %t590 to ptr
  %gml594 = load i64, ptr %gmp593, align 1, !alias.scope !4, !noalias !3
  %wp595 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml592, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  %wp596 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml594, ptr %wp596, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c3f8
L_80077c3fc_ft:
  ; @pc 0x80077c3fc word 0xa940af0a
  %r599.p = getelementptr inbounds i8, ptr %c, i64 192
  %r599 = load i64, ptr %r599.p, align 8, !alias.scope !3, !noalias !4
  %t600 = add i64 %r599, 8
  %t601 = add i64 %t600, 8
  %gmp602 = inttoptr i64 %t600 to ptr
  %gml603 = load i64, ptr %gmp602, align 1, !alias.scope !4, !noalias !3
  %gmp604 = inttoptr i64 %t601 to ptr
  %gml605 = load i64, ptr %gmp604, align 1, !alias.scope !4, !noalias !3
  %wp606 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml603, ptr %wp606, align 8, !alias.scope !3, !noalias !4
  %wp607 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml605, ptr %wp607, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c400
L_80077c408_ft:
  ; @pc 0x80077c408 word 0xaa1f03ec
  %t613 = or i64 0, 0
  %wp614 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t613, ptr %wp614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c40c word 0x2a1f03ef
  %t615 = or i32 0, 0
  %c616 = zext i32 %t615 to i64
  %wp617 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c616, ptr %wp617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c410 word 0xaa1f03ed
  %t618 = or i64 0, 0
  %wp619 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t618, ptr %wp619, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c414
L_80077c430_ft:
  ; @pc 0x80077c430 word 0x52800050
  %c683 = zext i32 2 to i64
  %wp684 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c683, ptr %wp684, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c434
L_80077c440_ft:
  ; @pc 0x80077c440 word 0x2a1f03f1
  %t716 = or i32 0, 0
  %c717 = zext i32 %t716 to i64
  %wp718 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c717, ptr %wp718, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c444
L_80077c448_ft:
  ; @pc 0x80077c448 word 0x2a1f03ef
  %t722 = or i32 0, 0
  %c723 = zext i32 %t722 to i64
  %wp724 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c723, ptr %wp724, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c44c
L_80077c46c_ft:
  ; @pc 0x80077c46c word 0x140000db
  br label %L_80077c7d8
L_80077c494_ft:
  ; @pc 0x80077c494 word 0xf85c83b0
  %r823.p = getelementptr inbounds i8, ptr %c, i64 232
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %t824 = add i64 %r823, -56
  %gmp825 = inttoptr i64 %t824 to ptr
  %gml826 = load i64, ptr %gmp825, align 1, !alias.scope !4, !noalias !3
  %wp827 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml826, ptr %wp827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c498 word 0xdac00e10
  %r828.p = getelementptr inbounds i8, ptr %c, i64 128
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %bsw829 = call i64 @llvm.bswap.i64(i64 %r828)
  %wp830 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw829, ptr %wp830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c49c word 0xf94011f1
  %r831.p = getelementptr inbounds i8, ptr %c, i64 120
  %r831 = load i64, ptr %r831.p, align 8, !alias.scope !3, !noalias !4
  %t832 = add i64 %r831, 32
  %gmp833 = inttoptr i64 %t832 to ptr
  %gml834 = load i64, ptr %gmp833, align 1, !alias.scope !4, !noalias !3
  %wp835 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml834, ptr %wp835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4a0 word 0xdac00e31
  %r836.p = getelementptr inbounds i8, ptr %c, i64 136
  %r836 = load i64, ptr %r836.p, align 8, !alias.scope !3, !noalias !4
  %bsw837 = call i64 @llvm.bswap.i64(i64 %r836)
  %wp838 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw837, ptr %wp838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4a4 word 0xeb11021f
  %r839.p = getelementptr inbounds i8, ptr %c, i64 128
  %r839 = load i64, ptr %r839.p, align 8, !alias.scope !3, !noalias !4
  %r840.p = getelementptr inbounds i8, ptr %c, i64 136
  %r840 = load i64, ptr %r840.p, align 8, !alias.scope !3, !noalias !4
  %t841 = sub i64 %r839, %r840
  %fn842 = icmp slt i64 %t841, 0
  %fz843 = icmp eq i64 %t841, 0
  %fc844 = icmp uge i64 %r839, %r840
  %fx1845 = xor i64 %r839, %r840
  %fx2846 = xor i64 %r839, %t841
  %fva847 = and i64 %fx1845, %fx2846
  %fv848 = icmp slt i64 %fva847, 0
  %nz849 = zext i1 %fn842 to i64
  %zz850 = zext i1 %fz843 to i64
  %cz851 = zext i1 %fc844 to i64
  %vz852 = zext i1 %fv848 to i64
  %ns853 = shl i64 %nz849, 31
  %zs854 = shl i64 %zz850, 30
  %cs855 = shl i64 %cz851, 29
  %vs856 = shl i64 %vz852, 28
  %nzor857 = or i64 %ns853, %zs854
  %cvor858 = or i64 %cs855, %vs856
  %nzcv859 = or i64 %nzor857, %cvor858
  %wp860 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv859, ptr %wp860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4a8 word 0x54000341
  %r861.p = getelementptr inbounds i8, ptr %c, i64 272
  %r861 = load i64, ptr %r861.p, align 8, !alias.scope !3, !noalias !4
  %fsh863 = lshr i64 %r861, 30
  %ftr864 = trunc i64 %fsh863 to i1
  %cond862 = xor i1 %ftr864, true
  br i1 %cond862, label %L_80077c510, label %L_80077c4ac_ft
L_80077c4ac_ft:
  ; @pc 0x80077c4ac word 0xf85d03b0
  %r865.p = getelementptr inbounds i8, ptr %c, i64 232
  %r865 = load i64, ptr %r865.p, align 8, !alias.scope !3, !noalias !4
  %t866 = add i64 %r865, -48
  %gmp867 = inttoptr i64 %t866 to ptr
  %gml868 = load i64, ptr %gmp867, align 1, !alias.scope !4, !noalias !3
  %wp869 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml868, ptr %wp869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4b0 word 0xdac00e10
  %r870.p = getelementptr inbounds i8, ptr %c, i64 128
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %bsw871 = call i64 @llvm.bswap.i64(i64 %r870)
  %wp872 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw871, ptr %wp872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4b4 word 0xf94015f1
  %r873.p = getelementptr inbounds i8, ptr %c, i64 120
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %t874 = add i64 %r873, 40
  %gmp875 = inttoptr i64 %t874 to ptr
  %gml876 = load i64, ptr %gmp875, align 1, !alias.scope !4, !noalias !3
  %wp877 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml876, ptr %wp877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4b8 word 0xdac00e31
  %r878.p = getelementptr inbounds i8, ptr %c, i64 136
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %bsw879 = call i64 @llvm.bswap.i64(i64 %r878)
  %wp880 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4bc word 0xeb11021f
  %r881.p = getelementptr inbounds i8, ptr %c, i64 128
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %r882.p = getelementptr inbounds i8, ptr %c, i64 136
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %t883 = sub i64 %r881, %r882
  %fn884 = icmp slt i64 %t883, 0
  %fz885 = icmp eq i64 %t883, 0
  %fc886 = icmp uge i64 %r881, %r882
  %fx1887 = xor i64 %r881, %r882
  %fx2888 = xor i64 %r881, %t883
  %fva889 = and i64 %fx1887, %fx2888
  %fv890 = icmp slt i64 %fva889, 0
  %nz891 = zext i1 %fn884 to i64
  %zz892 = zext i1 %fz885 to i64
  %cz893 = zext i1 %fc886 to i64
  %vz894 = zext i1 %fv890 to i64
  %ns895 = shl i64 %nz891, 31
  %zs896 = shl i64 %zz892, 30
  %cs897 = shl i64 %cz893, 29
  %vs898 = shl i64 %vz894, 28
  %nzor899 = or i64 %ns895, %zs896
  %cvor900 = or i64 %cs897, %vs898
  %nzcv901 = or i64 %nzor899, %cvor900
  %wp902 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv901, ptr %wp902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4c0 word 0x54000281
  %r903.p = getelementptr inbounds i8, ptr %c, i64 272
  %r903 = load i64, ptr %r903.p, align 8, !alias.scope !3, !noalias !4
  %fsh905 = lshr i64 %r903, 30
  %ftr906 = trunc i64 %fsh905 to i1
  %cond904 = xor i1 %ftr906, true
  br i1 %cond904, label %L_80077c510, label %L_80077c4c4_ft
L_80077c4c4_ft:
  ; @pc 0x80077c4c4 word 0xf85d83b0
  %r907.p = getelementptr inbounds i8, ptr %c, i64 232
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = add i64 %r907, -40
  %gmp909 = inttoptr i64 %t908 to ptr
  %gml910 = load i64, ptr %gmp909, align 1, !alias.scope !4, !noalias !3
  %wp911 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4c8 word 0xdac00e10
  %r912.p = getelementptr inbounds i8, ptr %c, i64 128
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %bsw913 = call i64 @llvm.bswap.i64(i64 %r912)
  %wp914 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw913, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4cc word 0xf94019f1
  %r915.p = getelementptr inbounds i8, ptr %c, i64 120
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %t916 = add i64 %r915, 48
  %gmp917 = inttoptr i64 %t916 to ptr
  %gml918 = load i64, ptr %gmp917, align 1, !alias.scope !4, !noalias !3
  %wp919 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml918, ptr %wp919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4d0 word 0xdac00e31
  %r920.p = getelementptr inbounds i8, ptr %c, i64 136
  %r920 = load i64, ptr %r920.p, align 8, !alias.scope !3, !noalias !4
  %bsw921 = call i64 @llvm.bswap.i64(i64 %r920)
  %wp922 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw921, ptr %wp922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4d4 word 0xeb11021f
  %r923.p = getelementptr inbounds i8, ptr %c, i64 128
  %r923 = load i64, ptr %r923.p, align 8, !alias.scope !3, !noalias !4
  %r924.p = getelementptr inbounds i8, ptr %c, i64 136
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = sub i64 %r923, %r924
  %fn926 = icmp slt i64 %t925, 0
  %fz927 = icmp eq i64 %t925, 0
  %fc928 = icmp uge i64 %r923, %r924
  %fx1929 = xor i64 %r923, %r924
  %fx2930 = xor i64 %r923, %t925
  %fva931 = and i64 %fx1929, %fx2930
  %fv932 = icmp slt i64 %fva931, 0
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
  ; @pc 0x80077c4d8 word 0x540001c1
  %r945.p = getelementptr inbounds i8, ptr %c, i64 272
  %r945 = load i64, ptr %r945.p, align 8, !alias.scope !3, !noalias !4
  %fsh947 = lshr i64 %r945, 30
  %ftr948 = trunc i64 %fsh947 to i1
  %cond946 = xor i1 %ftr948, true
  br i1 %cond946, label %L_80077c510, label %L_80077c4dc_ft
L_80077c4dc_ft:
  ; @pc 0x80077c4dc word 0xf85e03b0
  %r949.p = getelementptr inbounds i8, ptr %c, i64 232
  %r949 = load i64, ptr %r949.p, align 8, !alias.scope !3, !noalias !4
  %t950 = add i64 %r949, -32
  %gmp951 = inttoptr i64 %t950 to ptr
  %gml952 = load i64, ptr %gmp951, align 1, !alias.scope !4, !noalias !3
  %wp953 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4e0 word 0xdac00e10
  %r954.p = getelementptr inbounds i8, ptr %c, i64 128
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %bsw955 = call i64 @llvm.bswap.i64(i64 %r954)
  %wp956 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw955, ptr %wp956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4e4 word 0xf9401df1
  %r957.p = getelementptr inbounds i8, ptr %c, i64 120
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %t958 = add i64 %r957, 56
  %gmp959 = inttoptr i64 %t958 to ptr
  %gml960 = load i64, ptr %gmp959, align 1, !alias.scope !4, !noalias !3
  %wp961 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml960, ptr %wp961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4e8 word 0xdac00e31
  %r962.p = getelementptr inbounds i8, ptr %c, i64 136
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %bsw963 = call i64 @llvm.bswap.i64(i64 %r962)
  %wp964 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw963, ptr %wp964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4ec word 0xeb11021f
  %r965.p = getelementptr inbounds i8, ptr %c, i64 128
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %r966.p = getelementptr inbounds i8, ptr %c, i64 136
  %r966 = load i64, ptr %r966.p, align 8, !alias.scope !3, !noalias !4
  %t967 = sub i64 %r965, %r966
  %fn968 = icmp slt i64 %t967, 0
  %fz969 = icmp eq i64 %t967, 0
  %fc970 = icmp uge i64 %r965, %r966
  %fx1971 = xor i64 %r965, %r966
  %fx2972 = xor i64 %r965, %t967
  %fva973 = and i64 %fx1971, %fx2972
  %fv974 = icmp slt i64 %fva973, 0
  %nz975 = zext i1 %fn968 to i64
  %zz976 = zext i1 %fz969 to i64
  %cz977 = zext i1 %fc970 to i64
  %vz978 = zext i1 %fv974 to i64
  %ns979 = shl i64 %nz975, 31
  %zs980 = shl i64 %zz976, 30
  %cs981 = shl i64 %cz977, 29
  %vs982 = shl i64 %vz978, 28
  %nzor983 = or i64 %ns979, %zs980
  %cvor984 = or i64 %cs981, %vs982
  %nzcv985 = or i64 %nzor983, %cvor984
  %wp986 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv985, ptr %wp986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4f0 word 0x54000101
  %r987.p = getelementptr inbounds i8, ptr %c, i64 272
  %r987 = load i64, ptr %r987.p, align 8, !alias.scope !3, !noalias !4
  %fsh989 = lshr i64 %r987, 30
  %ftr990 = trunc i64 %fsh989 to i1
  %cond988 = xor i1 %ftr990, true
  br i1 %cond988, label %L_80077c510, label %L_80077c4f4_ft
L_80077c4f4_ft:
  ; @pc 0x80077c4f4 word 0xf85e83b0
  %r991.p = getelementptr inbounds i8, ptr %c, i64 232
  %r991 = load i64, ptr %r991.p, align 8, !alias.scope !3, !noalias !4
  %t992 = add i64 %r991, -24
  %gmp993 = inttoptr i64 %t992 to ptr
  %gml994 = load i64, ptr %gmp993, align 1, !alias.scope !4, !noalias !3
  %wp995 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml994, ptr %wp995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4f8 word 0xdac00e10
  %r996.p = getelementptr inbounds i8, ptr %c, i64 128
  %r996 = load i64, ptr %r996.p, align 8, !alias.scope !3, !noalias !4
  %bsw997 = call i64 @llvm.bswap.i64(i64 %r996)
  %wp998 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw997, ptr %wp998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c4fc word 0xf94021f1
  %r999.p = getelementptr inbounds i8, ptr %c, i64 120
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %t1000 = add i64 %r999, 64
  %gmp1001 = inttoptr i64 %t1000 to ptr
  %gml1002 = load i64, ptr %gmp1001, align 1, !alias.scope !4, !noalias !3
  %wp1003 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1002, ptr %wp1003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c500 word 0xdac00e31
  %r1004.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1004 = load i64, ptr %r1004.p, align 8, !alias.scope !3, !noalias !4
  %bsw1005 = call i64 @llvm.bswap.i64(i64 %r1004)
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1005, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c504 word 0xeb11021f
  %r1007.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1007 = load i64, ptr %r1007.p, align 8, !alias.scope !3, !noalias !4
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %t1009 = sub i64 %r1007, %r1008
  %fn1010 = icmp slt i64 %t1009, 0
  %fz1011 = icmp eq i64 %t1009, 0
  %fc1012 = icmp uge i64 %r1007, %r1008
  %fx11013 = xor i64 %r1007, %r1008
  %fx21014 = xor i64 %r1007, %t1009
  %fva1015 = and i64 %fx11013, %fx21014
  %fv1016 = icmp slt i64 %fva1015, 0
  %nz1017 = zext i1 %fn1010 to i64
  %zz1018 = zext i1 %fz1011 to i64
  %cz1019 = zext i1 %fc1012 to i64
  %vz1020 = zext i1 %fv1016 to i64
  %ns1021 = shl i64 %nz1017, 31
  %zs1022 = shl i64 %zz1018, 30
  %cs1023 = shl i64 %cz1019, 29
  %vs1024 = shl i64 %vz1020, 28
  %nzor1025 = or i64 %ns1021, %zs1022
  %cvor1026 = or i64 %cs1023, %vs1024
  %nzcv1027 = or i64 %nzor1025, %cvor1026
  %wp1028 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1027, ptr %wp1028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c508 word 0x54001cc0
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %fsh1031 = lshr i64 %r1029, 30
  %cond1030 = trunc i64 %fsh1031 to i1
  br i1 %cond1030, label %L_80077c8a0, label %L_80077c50c_ft
L_80077c50c_ft:
  ; @pc 0x80077c50c word 0xd503201f
  br label %L_80077c510
L_80077c51c_ft:
  ; @pc 0x80077c51c word 0xf9400df0
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %t1070 = add i64 %r1069, 24
  %gmp1071 = inttoptr i64 %t1070 to ptr
  %gml1072 = load i64, ptr %gmp1071, align 1, !alias.scope !4, !noalias !3
  %wp1073 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1072, ptr %wp1073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c520 word 0xdac00e10
  %r1074.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1074 = load i64, ptr %r1074.p, align 8, !alias.scope !3, !noalias !4
  %bsw1075 = call i64 @llvm.bswap.i64(i64 %r1074)
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1075, ptr %wp1076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c524 word 0xf85c03b1
  %r1077.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1077 = load i64, ptr %r1077.p, align 8, !alias.scope !3, !noalias !4
  %t1078 = add i64 %r1077, -64
  %gmp1079 = inttoptr i64 %t1078 to ptr
  %gml1080 = load i64, ptr %gmp1079, align 1, !alias.scope !4, !noalias !3
  %wp1081 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1080, ptr %wp1081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c528 word 0xdac00e31
  %r1082.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1082 = load i64, ptr %r1082.p, align 8, !alias.scope !3, !noalias !4
  %bsw1083 = call i64 @llvm.bswap.i64(i64 %r1082)
  %wp1084 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1083, ptr %wp1084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c52c word 0xeb11021f
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %r1086.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1086 = load i64, ptr %r1086.p, align 8, !alias.scope !3, !noalias !4
  %t1087 = sub i64 %r1085, %r1086
  %fn1088 = icmp slt i64 %t1087, 0
  %fz1089 = icmp eq i64 %t1087, 0
  %fc1090 = icmp uge i64 %r1085, %r1086
  %fx11091 = xor i64 %r1085, %r1086
  %fx21092 = xor i64 %r1085, %t1087
  %fva1093 = and i64 %fx11091, %fx21092
  %fv1094 = icmp slt i64 %fva1093, 0
  %nz1095 = zext i1 %fn1088 to i64
  %zz1096 = zext i1 %fz1089 to i64
  %cz1097 = zext i1 %fc1090 to i64
  %vz1098 = zext i1 %fv1094 to i64
  %ns1099 = shl i64 %nz1095, 31
  %zs1100 = shl i64 %zz1096, 30
  %cs1101 = shl i64 %cz1097, 29
  %vs1102 = shl i64 %vz1098, 28
  %nzor1103 = or i64 %ns1099, %zs1100
  %cvor1104 = or i64 %cs1101, %vs1102
  %nzcv1105 = or i64 %nzor1103, %cvor1104
  %wp1106 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1105, ptr %wp1106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c530 word 0x54000401
  %r1107.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1107 = load i64, ptr %r1107.p, align 8, !alias.scope !3, !noalias !4
  %fsh1109 = lshr i64 %r1107, 30
  %ftr1110 = trunc i64 %fsh1109 to i1
  %cond1108 = xor i1 %ftr1110, true
  br i1 %cond1108, label %L_80077c5b0, label %L_80077c534_ft
L_80077c534_ft:
  ; @pc 0x80077c534 word 0xf94011f0
  %r1111.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1111 = load i64, ptr %r1111.p, align 8, !alias.scope !3, !noalias !4
  %t1112 = add i64 %r1111, 32
  %gmp1113 = inttoptr i64 %t1112 to ptr
  %gml1114 = load i64, ptr %gmp1113, align 1, !alias.scope !4, !noalias !3
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1114, ptr %wp1115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c538 word 0xdac00e10
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %bsw1117 = call i64 @llvm.bswap.i64(i64 %r1116)
  %wp1118 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1117, ptr %wp1118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c53c word 0xf85c83b1
  %r1119.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1119 = load i64, ptr %r1119.p, align 8, !alias.scope !3, !noalias !4
  %t1120 = add i64 %r1119, -56
  %gmp1121 = inttoptr i64 %t1120 to ptr
  %gml1122 = load i64, ptr %gmp1121, align 1, !alias.scope !4, !noalias !3
  %wp1123 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1122, ptr %wp1123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c540 word 0xdac00e31
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1124 = load i64, ptr %r1124.p, align 8, !alias.scope !3, !noalias !4
  %bsw1125 = call i64 @llvm.bswap.i64(i64 %r1124)
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c544 word 0xeb11021f
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %r1128.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1128 = load i64, ptr %r1128.p, align 8, !alias.scope !3, !noalias !4
  %t1129 = sub i64 %r1127, %r1128
  %fn1130 = icmp slt i64 %t1129, 0
  %fz1131 = icmp eq i64 %t1129, 0
  %fc1132 = icmp uge i64 %r1127, %r1128
  %fx11133 = xor i64 %r1127, %r1128
  %fx21134 = xor i64 %r1127, %t1129
  %fva1135 = and i64 %fx11133, %fx21134
  %fv1136 = icmp slt i64 %fva1135, 0
  %nz1137 = zext i1 %fn1130 to i64
  %zz1138 = zext i1 %fz1131 to i64
  %cz1139 = zext i1 %fc1132 to i64
  %vz1140 = zext i1 %fv1136 to i64
  %ns1141 = shl i64 %nz1137, 31
  %zs1142 = shl i64 %zz1138, 30
  %cs1143 = shl i64 %cz1139, 29
  %vs1144 = shl i64 %vz1140, 28
  %nzor1145 = or i64 %ns1141, %zs1142
  %cvor1146 = or i64 %cs1143, %vs1144
  %nzcv1147 = or i64 %nzor1145, %cvor1146
  %wp1148 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1147, ptr %wp1148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c548 word 0x54000341
  %r1149.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1149 = load i64, ptr %r1149.p, align 8, !alias.scope !3, !noalias !4
  %fsh1151 = lshr i64 %r1149, 30
  %ftr1152 = trunc i64 %fsh1151 to i1
  %cond1150 = xor i1 %ftr1152, true
  br i1 %cond1150, label %L_80077c5b0, label %L_80077c54c_ft
L_80077c54c_ft:
  ; @pc 0x80077c54c word 0xf94015f0
  %r1153.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1153 = load i64, ptr %r1153.p, align 8, !alias.scope !3, !noalias !4
  %t1154 = add i64 %r1153, 40
  %gmp1155 = inttoptr i64 %t1154 to ptr
  %gml1156 = load i64, ptr %gmp1155, align 1, !alias.scope !4, !noalias !3
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c550 word 0xdac00e10
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %bsw1159 = call i64 @llvm.bswap.i64(i64 %r1158)
  %wp1160 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1159, ptr %wp1160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c554 word 0xf85d03b1
  %r1161.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1161 = load i64, ptr %r1161.p, align 8, !alias.scope !3, !noalias !4
  %t1162 = add i64 %r1161, -48
  %gmp1163 = inttoptr i64 %t1162 to ptr
  %gml1164 = load i64, ptr %gmp1163, align 1, !alias.scope !4, !noalias !3
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c558 word 0xdac00e31
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %bsw1167 = call i64 @llvm.bswap.i64(i64 %r1166)
  %wp1168 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1167, ptr %wp1168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c55c word 0xeb11021f
  %r1169.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1169 = load i64, ptr %r1169.p, align 8, !alias.scope !3, !noalias !4
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %t1171 = sub i64 %r1169, %r1170
  %fn1172 = icmp slt i64 %t1171, 0
  %fz1173 = icmp eq i64 %t1171, 0
  %fc1174 = icmp uge i64 %r1169, %r1170
  %fx11175 = xor i64 %r1169, %r1170
  %fx21176 = xor i64 %r1169, %t1171
  %fva1177 = and i64 %fx11175, %fx21176
  %fv1178 = icmp slt i64 %fva1177, 0
  %nz1179 = zext i1 %fn1172 to i64
  %zz1180 = zext i1 %fz1173 to i64
  %cz1181 = zext i1 %fc1174 to i64
  %vz1182 = zext i1 %fv1178 to i64
  %ns1183 = shl i64 %nz1179, 31
  %zs1184 = shl i64 %zz1180, 30
  %cs1185 = shl i64 %cz1181, 29
  %vs1186 = shl i64 %vz1182, 28
  %nzor1187 = or i64 %ns1183, %zs1184
  %cvor1188 = or i64 %cs1185, %vs1186
  %nzcv1189 = or i64 %nzor1187, %cvor1188
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1189, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c560 word 0x54000281
  %r1191.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1191 = load i64, ptr %r1191.p, align 8, !alias.scope !3, !noalias !4
  %fsh1193 = lshr i64 %r1191, 30
  %ftr1194 = trunc i64 %fsh1193 to i1
  %cond1192 = xor i1 %ftr1194, true
  br i1 %cond1192, label %L_80077c5b0, label %L_80077c564_ft
L_80077c564_ft:
  ; @pc 0x80077c564 word 0xf94019f0
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %t1196 = add i64 %r1195, 48
  %gmp1197 = inttoptr i64 %t1196 to ptr
  %gml1198 = load i64, ptr %gmp1197, align 1, !alias.scope !4, !noalias !3
  %wp1199 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1198, ptr %wp1199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c568 word 0xdac00e10
  %r1200.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1200 = load i64, ptr %r1200.p, align 8, !alias.scope !3, !noalias !4
  %bsw1201 = call i64 @llvm.bswap.i64(i64 %r1200)
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1201, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c56c word 0xf85d83b1
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %t1204 = add i64 %r1203, -40
  %gmp1205 = inttoptr i64 %t1204 to ptr
  %gml1206 = load i64, ptr %gmp1205, align 1, !alias.scope !4, !noalias !3
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c570 word 0xdac00e31
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %bsw1209 = call i64 @llvm.bswap.i64(i64 %r1208)
  %wp1210 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1209, ptr %wp1210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c574 word 0xeb11021f
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %t1213 = sub i64 %r1211, %r1212
  %fn1214 = icmp slt i64 %t1213, 0
  %fz1215 = icmp eq i64 %t1213, 0
  %fc1216 = icmp uge i64 %r1211, %r1212
  %fx11217 = xor i64 %r1211, %r1212
  %fx21218 = xor i64 %r1211, %t1213
  %fva1219 = and i64 %fx11217, %fx21218
  %fv1220 = icmp slt i64 %fva1219, 0
  %nz1221 = zext i1 %fn1214 to i64
  %zz1222 = zext i1 %fz1215 to i64
  %cz1223 = zext i1 %fc1216 to i64
  %vz1224 = zext i1 %fv1220 to i64
  %ns1225 = shl i64 %nz1221, 31
  %zs1226 = shl i64 %zz1222, 30
  %cs1227 = shl i64 %cz1223, 29
  %vs1228 = shl i64 %vz1224, 28
  %nzor1229 = or i64 %ns1225, %zs1226
  %cvor1230 = or i64 %cs1227, %vs1228
  %nzcv1231 = or i64 %nzor1229, %cvor1230
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1231, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c578 word 0x540001c1
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %fsh1235 = lshr i64 %r1233, 30
  %ftr1236 = trunc i64 %fsh1235 to i1
  %cond1234 = xor i1 %ftr1236, true
  br i1 %cond1234, label %L_80077c5b0, label %L_80077c57c_ft
L_80077c57c_ft:
  ; @pc 0x80077c57c word 0xf9401df0
  %r1237.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1237 = load i64, ptr %r1237.p, align 8, !alias.scope !3, !noalias !4
  %t1238 = add i64 %r1237, 56
  %gmp1239 = inttoptr i64 %t1238 to ptr
  %gml1240 = load i64, ptr %gmp1239, align 1, !alias.scope !4, !noalias !3
  %wp1241 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1240, ptr %wp1241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c580 word 0xdac00e10
  %r1242.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1242 = load i64, ptr %r1242.p, align 8, !alias.scope !3, !noalias !4
  %bsw1243 = call i64 @llvm.bswap.i64(i64 %r1242)
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c584 word 0xf85e03b1
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %t1246 = add i64 %r1245, -32
  %gmp1247 = inttoptr i64 %t1246 to ptr
  %gml1248 = load i64, ptr %gmp1247, align 1, !alias.scope !4, !noalias !3
  %wp1249 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1248, ptr %wp1249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c588 word 0xdac00e31
  %r1250.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1250 = load i64, ptr %r1250.p, align 8, !alias.scope !3, !noalias !4
  %bsw1251 = call i64 @llvm.bswap.i64(i64 %r1250)
  %wp1252 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1251, ptr %wp1252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c58c word 0xeb11021f
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %r1254.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1254 = load i64, ptr %r1254.p, align 8, !alias.scope !3, !noalias !4
  %t1255 = sub i64 %r1253, %r1254
  %fn1256 = icmp slt i64 %t1255, 0
  %fz1257 = icmp eq i64 %t1255, 0
  %fc1258 = icmp uge i64 %r1253, %r1254
  %fx11259 = xor i64 %r1253, %r1254
  %fx21260 = xor i64 %r1253, %t1255
  %fva1261 = and i64 %fx11259, %fx21260
  %fv1262 = icmp slt i64 %fva1261, 0
  %nz1263 = zext i1 %fn1256 to i64
  %zz1264 = zext i1 %fz1257 to i64
  %cz1265 = zext i1 %fc1258 to i64
  %vz1266 = zext i1 %fv1262 to i64
  %ns1267 = shl i64 %nz1263, 31
  %zs1268 = shl i64 %zz1264, 30
  %cs1269 = shl i64 %cz1265, 29
  %vs1270 = shl i64 %vz1266, 28
  %nzor1271 = or i64 %ns1267, %zs1268
  %cvor1272 = or i64 %cs1269, %vs1270
  %nzcv1273 = or i64 %nzor1271, %cvor1272
  %wp1274 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1273, ptr %wp1274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c590 word 0x54000101
  %r1275.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1275 = load i64, ptr %r1275.p, align 8, !alias.scope !3, !noalias !4
  %fsh1277 = lshr i64 %r1275, 30
  %ftr1278 = trunc i64 %fsh1277 to i1
  %cond1276 = xor i1 %ftr1278, true
  br i1 %cond1276, label %L_80077c5b0, label %L_80077c594_ft
L_80077c594_ft:
  ; @pc 0x80077c594 word 0xf94021f0
  %r1279.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1279 = load i64, ptr %r1279.p, align 8, !alias.scope !3, !noalias !4
  %t1280 = add i64 %r1279, 64
  %gmp1281 = inttoptr i64 %t1280 to ptr
  %gml1282 = load i64, ptr %gmp1281, align 1, !alias.scope !4, !noalias !3
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c598 word 0xdac00e10
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %bsw1285 = call i64 @llvm.bswap.i64(i64 %r1284)
  %wp1286 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw1285, ptr %wp1286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c59c word 0xf85e83b1
  %r1287.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1287 = load i64, ptr %r1287.p, align 8, !alias.scope !3, !noalias !4
  %t1288 = add i64 %r1287, -24
  %gmp1289 = inttoptr i64 %t1288 to ptr
  %gml1290 = load i64, ptr %gmp1289, align 1, !alias.scope !4, !noalias !3
  %wp1291 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1290, ptr %wp1291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5a0 word 0xdac00e31
  %r1292.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1292 = load i64, ptr %r1292.p, align 8, !alias.scope !3, !noalias !4
  %bsw1293 = call i64 @llvm.bswap.i64(i64 %r1292)
  %wp1294 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %bsw1293, ptr %wp1294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5a4 word 0xeb11021f
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %r1296.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1296 = load i64, ptr %r1296.p, align 8, !alias.scope !3, !noalias !4
  %t1297 = sub i64 %r1295, %r1296
  %fn1298 = icmp slt i64 %t1297, 0
  %fz1299 = icmp eq i64 %t1297, 0
  %fc1300 = icmp uge i64 %r1295, %r1296
  %fx11301 = xor i64 %r1295, %r1296
  %fx21302 = xor i64 %r1295, %t1297
  %fva1303 = and i64 %fx11301, %fx21302
  %fv1304 = icmp slt i64 %fva1303, 0
  %nz1305 = zext i1 %fn1298 to i64
  %zz1306 = zext i1 %fz1299 to i64
  %cz1307 = zext i1 %fc1300 to i64
  %vz1308 = zext i1 %fv1304 to i64
  %ns1309 = shl i64 %nz1305, 31
  %zs1310 = shl i64 %zz1306, 30
  %cs1311 = shl i64 %cz1307, 29
  %vs1312 = shl i64 %vz1308, 28
  %nzor1313 = or i64 %ns1309, %zs1310
  %cvor1314 = or i64 %cs1311, %vs1312
  %nzcv1315 = or i64 %nzor1313, %cvor1314
  %wp1316 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1315, ptr %wp1316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5a8 word 0x54001800
  %r1317.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1317 = load i64, ptr %r1317.p, align 8, !alias.scope !3, !noalias !4
  %fsh1319 = lshr i64 %r1317, 30
  %cond1318 = trunc i64 %fsh1319 to i1
  br i1 %cond1318, label %L_80077c8a8, label %L_80077c5ac_ft
L_80077c5ac_ft:
  ; @pc 0x80077c5ac word 0xd503201f
  br label %L_80077c5b0
L_80077c5bc_ft:
  ; @pc 0x80077c5bc word 0xf94033f0
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %t1358 = add i64 %r1357, 96
  %gmp1359 = inttoptr i64 %t1358 to ptr
  %gml1360 = load i64, ptr %gmp1359, align 1, !alias.scope !4, !noalias !3
  %wp1361 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1360, ptr %wp1361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5c0 word 0xd10021ef
  %r1362.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1362 = load i64, ptr %r1362.p, align 8, !alias.scope !3, !noalias !4
  %t1363 = sub i64 %r1362, 8
  %wp1364 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1363, ptr %wp1364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5c4 word 0xf85a03a0
  %r1365.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1365 = load i64, ptr %r1365.p, align 8, !alias.scope !3, !noalias !4
  %t1366 = add i64 %r1365, -96
  %gmp1367 = inttoptr i64 %t1366 to ptr
  %gml1368 = load i64, ptr %gmp1367, align 1, !alias.scope !4, !noalias !3
  %wp1369 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1368, ptr %wp1369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5c8 word 0x91005001
  %r1370.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1370 = load i64, ptr %r1370.p, align 8, !alias.scope !3, !noalias !4
  %t1371 = add i64 %r1370, 20
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5cc word 0xf9401210
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %t1374 = add i64 %r1373, 32
  %gmp1375 = inttoptr i64 %t1374 to ptr
  %gml1376 = load i64, ptr %gmp1375, align 1, !alias.scope !4, !noalias !3
  %wp1377 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1376, ptr %wp1377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5d0 word 0xa9794bb1
  %r1378.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1378 = load i64, ptr %r1378.p, align 8, !alias.scope !3, !noalias !4
  %t1379 = add i64 %r1378, -112
  %t1380 = add i64 %t1379, 8
  %gmp1381 = inttoptr i64 %t1379 to ptr
  %gml1382 = load i64, ptr %gmp1381, align 1, !alias.scope !4, !noalias !3
  %gmp1383 = inttoptr i64 %t1380 to ptr
  %gml1384 = load i64, ptr %gmp1383, align 1, !alias.scope !4, !noalias !3
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1382, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %gml1384, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c5d4
L_80077c5e8_ft:
  ; @pc 0x80077c5e8 word 0xb9400864
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %t1430 = add i64 %r1429, 8
  %gmp1431 = inttoptr i64 %t1430 to ptr
  %gml1432 = load i32, ptr %gmp1431, align 1, !alias.scope !4, !noalias !3
  %c1433 = zext i32 %gml1432 to i64
  %wp1434 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1433, ptr %wp1434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5ec word 0xb9400a25
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %t1436 = add i64 %r1435, 8
  %gmp1437 = inttoptr i64 %t1436 to ptr
  %gml1438 = load i32, ptr %gmp1437, align 1, !alias.scope !4, !noalias !3
  %c1439 = zext i32 %gml1438 to i64
  %wp1440 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1439, ptr %wp1440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5f0 word 0x6b05009f
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %c1442 = trunc i64 %r1441 to i32
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %c1444 = trunc i64 %r1443 to i32
  %t1445 = sub i32 %c1442, %c1444
  %fn1446 = icmp slt i32 %t1445, 0
  %fz1447 = icmp eq i32 %t1445, 0
  %fc1448 = icmp uge i32 %c1442, %c1444
  %fx11449 = xor i32 %c1442, %c1444
  %fx21450 = xor i32 %c1442, %t1445
  %fva1451 = and i32 %fx11449, %fx21450
  %fv1452 = icmp slt i32 %fva1451, 0
  %nz1453 = zext i1 %fn1446 to i64
  %zz1454 = zext i1 %fz1447 to i64
  %cz1455 = zext i1 %fc1448 to i64
  %vz1456 = zext i1 %fv1452 to i64
  %ns1457 = shl i64 %nz1453, 31
  %zs1458 = shl i64 %zz1454, 30
  %cs1459 = shl i64 %cz1455, 29
  %vs1460 = shl i64 %vz1456, 28
  %nzor1461 = or i64 %ns1457, %zs1458
  %cvor1462 = or i64 %cs1459, %vs1460
  %nzcv1463 = or i64 %nzor1461, %cvor1462
  %wp1464 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1463, ptr %wp1464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5f4 word 0x54001641
  %r1465.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1465 = load i64, ptr %r1465.p, align 8, !alias.scope !3, !noalias !4
  %fsh1467 = lshr i64 %r1465, 30
  %ftr1468 = trunc i64 %fsh1467 to i1
  %cond1466 = xor i1 %ftr1468, true
  br i1 %cond1466, label %L_80077c8bc, label %L_80077c5f8_ft
L_80077c5f8_ft:
  ; @pc 0x80077c5f8 word 0xb9401224
  %r1469.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1469 = load i64, ptr %r1469.p, align 8, !alias.scope !3, !noalias !4
  %t1470 = add i64 %r1469, 16
  %gmp1471 = inttoptr i64 %t1470 to ptr
  %gml1472 = load i32, ptr %gmp1471, align 1, !alias.scope !4, !noalias !3
  %c1473 = zext i32 %gml1472 to i64
  %wp1474 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1473, ptr %wp1474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c5fc word 0xb9401065
  %r1475.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1475 = load i64, ptr %r1475.p, align 8, !alias.scope !3, !noalias !4
  %t1476 = add i64 %r1475, 16
  %gmp1477 = inttoptr i64 %t1476 to ptr
  %gml1478 = load i32, ptr %gmp1477, align 1, !alias.scope !4, !noalias !3
  %c1479 = zext i32 %gml1478 to i64
  %wp1480 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1479, ptr %wp1480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c600 word 0x6b0400bf
  %r1481.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1481 = load i64, ptr %r1481.p, align 8, !alias.scope !3, !noalias !4
  %c1482 = trunc i64 %r1481 to i32
  %r1483.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1483 = load i64, ptr %r1483.p, align 8, !alias.scope !3, !noalias !4
  %c1484 = trunc i64 %r1483 to i32
  %t1485 = sub i32 %c1482, %c1484
  %fn1486 = icmp slt i32 %t1485, 0
  %fz1487 = icmp eq i32 %t1485, 0
  %fc1488 = icmp uge i32 %c1482, %c1484
  %fx11489 = xor i32 %c1482, %c1484
  %fx21490 = xor i32 %c1482, %t1485
  %fva1491 = and i32 %fx11489, %fx21490
  %fv1492 = icmp slt i32 %fva1491, 0
  %nz1493 = zext i1 %fn1486 to i64
  %zz1494 = zext i1 %fz1487 to i64
  %cz1495 = zext i1 %fc1488 to i64
  %vz1496 = zext i1 %fv1492 to i64
  %ns1497 = shl i64 %nz1493, 31
  %zs1498 = shl i64 %zz1494, 30
  %cs1499 = shl i64 %cz1495, 29
  %vs1500 = shl i64 %vz1496, 28
  %nzor1501 = or i64 %ns1497, %zs1498
  %cvor1502 = or i64 %cs1499, %vs1500
  %nzcv1503 = or i64 %nzor1501, %cvor1502
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1503, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c604 word 0x540015c1
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %fsh1507 = lshr i64 %r1505, 30
  %ftr1508 = trunc i64 %fsh1507 to i1
  %cond1506 = xor i1 %ftr1508, true
  br i1 %cond1506, label %L_80077c8bc, label %L_80077c608_ft
L_80077c608_ft:
  ; @pc 0x80077c608 word 0xb9401624
  %r1509.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1509 = load i64, ptr %r1509.p, align 8, !alias.scope !3, !noalias !4
  %t1510 = add i64 %r1509, 20
  %gmp1511 = inttoptr i64 %t1510 to ptr
  %gml1512 = load i32, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  %c1513 = zext i32 %gml1512 to i64
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c60c word 0xb9401465
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %t1516 = add i64 %r1515, 20
  %gmp1517 = inttoptr i64 %t1516 to ptr
  %gml1518 = load i32, ptr %gmp1517, align 1, !alias.scope !4, !noalias !3
  %c1519 = zext i32 %gml1518 to i64
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c610 word 0x6b0400bf
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %c1522 = trunc i64 %r1521 to i32
  %r1523.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1523 = load i64, ptr %r1523.p, align 8, !alias.scope !3, !noalias !4
  %c1524 = trunc i64 %r1523 to i32
  %t1525 = sub i32 %c1522, %c1524
  %fn1526 = icmp slt i32 %t1525, 0
  %fz1527 = icmp eq i32 %t1525, 0
  %fc1528 = icmp uge i32 %c1522, %c1524
  %fx11529 = xor i32 %c1522, %c1524
  %fx21530 = xor i32 %c1522, %t1525
  %fva1531 = and i32 %fx11529, %fx21530
  %fv1532 = icmp slt i32 %fva1531, 0
  %nz1533 = zext i1 %fn1526 to i64
  %zz1534 = zext i1 %fz1527 to i64
  %cz1535 = zext i1 %fc1528 to i64
  %vz1536 = zext i1 %fv1532 to i64
  %ns1537 = shl i64 %nz1533, 31
  %zs1538 = shl i64 %zz1534, 30
  %cs1539 = shl i64 %cz1535, 29
  %vs1540 = shl i64 %vz1536, 28
  %nzor1541 = or i64 %ns1537, %zs1538
  %cvor1542 = or i64 %cs1539, %vs1540
  %nzcv1543 = or i64 %nzor1541, %cvor1542
  %wp1544 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1543, ptr %wp1544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c614 word 0x54001541
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %fsh1547 = lshr i64 %r1545, 30
  %ftr1548 = trunc i64 %fsh1547 to i1
  %cond1546 = xor i1 %ftr1548, true
  br i1 %cond1546, label %L_80077c8bc, label %L_80077c618_ft
L_80077c618_ft:
  ; @pc 0x80077c618 word 0xb9401a24
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = add i64 %r1549, 24
  %gmp1551 = inttoptr i64 %t1550 to ptr
  %gml1552 = load i32, ptr %gmp1551, align 1, !alias.scope !4, !noalias !3
  %c1553 = zext i32 %gml1552 to i64
  %wp1554 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1553, ptr %wp1554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c61c word 0xb9401865
  %r1555.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1555 = load i64, ptr %r1555.p, align 8, !alias.scope !3, !noalias !4
  %t1556 = add i64 %r1555, 24
  %gmp1557 = inttoptr i64 %t1556 to ptr
  %gml1558 = load i32, ptr %gmp1557, align 1, !alias.scope !4, !noalias !3
  %c1559 = zext i32 %gml1558 to i64
  %wp1560 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1559, ptr %wp1560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c620 word 0x6b0400bf
  %r1561.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1561 = load i64, ptr %r1561.p, align 8, !alias.scope !3, !noalias !4
  %c1562 = trunc i64 %r1561 to i32
  %r1563.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1563 = load i64, ptr %r1563.p, align 8, !alias.scope !3, !noalias !4
  %c1564 = trunc i64 %r1563 to i32
  %t1565 = sub i32 %c1562, %c1564
  %fn1566 = icmp slt i32 %t1565, 0
  %fz1567 = icmp eq i32 %t1565, 0
  %fc1568 = icmp uge i32 %c1562, %c1564
  %fx11569 = xor i32 %c1562, %c1564
  %fx21570 = xor i32 %c1562, %t1565
  %fva1571 = and i32 %fx11569, %fx21570
  %fv1572 = icmp slt i32 %fva1571, 0
  %nz1573 = zext i1 %fn1566 to i64
  %zz1574 = zext i1 %fz1567 to i64
  %cz1575 = zext i1 %fc1568 to i64
  %vz1576 = zext i1 %fv1572 to i64
  %ns1577 = shl i64 %nz1573, 31
  %zs1578 = shl i64 %zz1574, 30
  %cs1579 = shl i64 %cz1575, 29
  %vs1580 = shl i64 %vz1576, 28
  %nzor1581 = or i64 %ns1577, %zs1578
  %cvor1582 = or i64 %cs1579, %vs1580
  %nzcv1583 = or i64 %nzor1581, %cvor1582
  %wp1584 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1583, ptr %wp1584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c624 word 0x540014c1
  %r1585.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1585 = load i64, ptr %r1585.p, align 8, !alias.scope !3, !noalias !4
  %fsh1587 = lshr i64 %r1585, 30
  %ftr1588 = trunc i64 %fsh1587 to i1
  %cond1586 = xor i1 %ftr1588, true
  br i1 %cond1586, label %L_80077c8bc, label %L_80077c628_ft
L_80077c628_ft:
  ; @pc 0x80077c628 word 0xb9401e24
  %r1589.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1589 = load i64, ptr %r1589.p, align 8, !alias.scope !3, !noalias !4
  %t1590 = add i64 %r1589, 28
  %gmp1591 = inttoptr i64 %t1590 to ptr
  %gml1592 = load i32, ptr %gmp1591, align 1, !alias.scope !4, !noalias !3
  %c1593 = zext i32 %gml1592 to i64
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1593, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c62c word 0xb9401c65
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = add i64 %r1595, 28
  %gmp1597 = inttoptr i64 %t1596 to ptr
  %gml1598 = load i32, ptr %gmp1597, align 1, !alias.scope !4, !noalias !3
  %c1599 = zext i32 %gml1598 to i64
  %wp1600 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1599, ptr %wp1600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c630 word 0x6b0400bf
  %r1601.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1601 = load i64, ptr %r1601.p, align 8, !alias.scope !3, !noalias !4
  %c1602 = trunc i64 %r1601 to i32
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %c1604 = trunc i64 %r1603 to i32
  %t1605 = sub i32 %c1602, %c1604
  %fn1606 = icmp slt i32 %t1605, 0
  %fz1607 = icmp eq i32 %t1605, 0
  %fc1608 = icmp uge i32 %c1602, %c1604
  %fx11609 = xor i32 %c1602, %c1604
  %fx21610 = xor i32 %c1602, %t1605
  %fva1611 = and i32 %fx11609, %fx21610
  %fv1612 = icmp slt i32 %fva1611, 0
  %nz1613 = zext i1 %fn1606 to i64
  %zz1614 = zext i1 %fz1607 to i64
  %cz1615 = zext i1 %fc1608 to i64
  %vz1616 = zext i1 %fv1612 to i64
  %ns1617 = shl i64 %nz1613, 31
  %zs1618 = shl i64 %zz1614, 30
  %cs1619 = shl i64 %cz1615, 29
  %vs1620 = shl i64 %vz1616, 28
  %nzor1621 = or i64 %ns1617, %zs1618
  %cvor1622 = or i64 %cs1619, %vs1620
  %nzcv1623 = or i64 %nzor1621, %cvor1622
  %wp1624 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1623, ptr %wp1624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c634 word 0x54001441
  %r1625.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1625 = load i64, ptr %r1625.p, align 8, !alias.scope !3, !noalias !4
  %fsh1627 = lshr i64 %r1625, 30
  %ftr1628 = trunc i64 %fsh1627 to i1
  %cond1626 = xor i1 %ftr1628, true
  br i1 %cond1626, label %L_80077c8bc, label %L_80077c638_ft
L_80077c638_ft:
  ; @pc 0x80077c638 word 0xb9402224
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %t1630 = add i64 %r1629, 32
  %gmp1631 = inttoptr i64 %t1630 to ptr
  %gml1632 = load i32, ptr %gmp1631, align 1, !alias.scope !4, !noalias !3
  %c1633 = zext i32 %gml1632 to i64
  %wp1634 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1633, ptr %wp1634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c63c word 0xb9402065
  %r1635.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1635 = load i64, ptr %r1635.p, align 8, !alias.scope !3, !noalias !4
  %t1636 = add i64 %r1635, 32
  %gmp1637 = inttoptr i64 %t1636 to ptr
  %gml1638 = load i32, ptr %gmp1637, align 1, !alias.scope !4, !noalias !3
  %c1639 = zext i32 %gml1638 to i64
  %wp1640 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1639, ptr %wp1640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c640 word 0x6b0400bf
  %r1641.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1641 = load i64, ptr %r1641.p, align 8, !alias.scope !3, !noalias !4
  %c1642 = trunc i64 %r1641 to i32
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %c1644 = trunc i64 %r1643 to i32
  %t1645 = sub i32 %c1642, %c1644
  %fn1646 = icmp slt i32 %t1645, 0
  %fz1647 = icmp eq i32 %t1645, 0
  %fc1648 = icmp uge i32 %c1642, %c1644
  %fx11649 = xor i32 %c1642, %c1644
  %fx21650 = xor i32 %c1642, %t1645
  %fva1651 = and i32 %fx11649, %fx21650
  %fv1652 = icmp slt i32 %fva1651, 0
  %nz1653 = zext i1 %fn1646 to i64
  %zz1654 = zext i1 %fz1647 to i64
  %cz1655 = zext i1 %fc1648 to i64
  %vz1656 = zext i1 %fv1652 to i64
  %ns1657 = shl i64 %nz1653, 31
  %zs1658 = shl i64 %zz1654, 30
  %cs1659 = shl i64 %cz1655, 29
  %vs1660 = shl i64 %vz1656, 28
  %nzor1661 = or i64 %ns1657, %zs1658
  %cvor1662 = or i64 %cs1659, %vs1660
  %nzcv1663 = or i64 %nzor1661, %cvor1662
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1663, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c644 word 0x540013c1
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %fsh1667 = lshr i64 %r1665, 30
  %ftr1668 = trunc i64 %fsh1667 to i1
  %cond1666 = xor i1 %ftr1668, true
  br i1 %cond1666, label %L_80077c8bc, label %L_80077c648_ft
L_80077c648_ft:
  ; @pc 0x80077c648 word 0xb9402624
  %r1669.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1669 = load i64, ptr %r1669.p, align 8, !alias.scope !3, !noalias !4
  %t1670 = add i64 %r1669, 36
  %gmp1671 = inttoptr i64 %t1670 to ptr
  %gml1672 = load i32, ptr %gmp1671, align 1, !alias.scope !4, !noalias !3
  %c1673 = zext i32 %gml1672 to i64
  %wp1674 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1673, ptr %wp1674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c64c word 0xb9402465
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %t1676 = add i64 %r1675, 36
  %gmp1677 = inttoptr i64 %t1676 to ptr
  %gml1678 = load i32, ptr %gmp1677, align 1, !alias.scope !4, !noalias !3
  %c1679 = zext i32 %gml1678 to i64
  %wp1680 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1679, ptr %wp1680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c650 word 0x6b0400bf
  %r1681.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1681 = load i64, ptr %r1681.p, align 8, !alias.scope !3, !noalias !4
  %c1682 = trunc i64 %r1681 to i32
  %r1683.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1683 = load i64, ptr %r1683.p, align 8, !alias.scope !3, !noalias !4
  %c1684 = trunc i64 %r1683 to i32
  %t1685 = sub i32 %c1682, %c1684
  %fn1686 = icmp slt i32 %t1685, 0
  %fz1687 = icmp eq i32 %t1685, 0
  %fc1688 = icmp uge i32 %c1682, %c1684
  %fx11689 = xor i32 %c1682, %c1684
  %fx21690 = xor i32 %c1682, %t1685
  %fva1691 = and i32 %fx11689, %fx21690
  %fv1692 = icmp slt i32 %fva1691, 0
  %nz1693 = zext i1 %fn1686 to i64
  %zz1694 = zext i1 %fz1687 to i64
  %cz1695 = zext i1 %fc1688 to i64
  %vz1696 = zext i1 %fv1692 to i64
  %ns1697 = shl i64 %nz1693, 31
  %zs1698 = shl i64 %zz1694, 30
  %cs1699 = shl i64 %cz1695, 29
  %vs1700 = shl i64 %vz1696, 28
  %nzor1701 = or i64 %ns1697, %zs1698
  %cvor1702 = or i64 %cs1699, %vs1700
  %nzcv1703 = or i64 %nzor1701, %cvor1702
  %wp1704 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1703, ptr %wp1704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c654 word 0x54001341
  %r1705.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1705 = load i64, ptr %r1705.p, align 8, !alias.scope !3, !noalias !4
  %fsh1707 = lshr i64 %r1705, 30
  %ftr1708 = trunc i64 %fsh1707 to i1
  %cond1706 = xor i1 %ftr1708, true
  br i1 %cond1706, label %L_80077c8bc, label %L_80077c658_ft
L_80077c658_ft:
  ; @pc 0x80077c658 word 0xb9402a24
  %r1709.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1709 = load i64, ptr %r1709.p, align 8, !alias.scope !3, !noalias !4
  %t1710 = add i64 %r1709, 40
  %gmp1711 = inttoptr i64 %t1710 to ptr
  %gml1712 = load i32, ptr %gmp1711, align 1, !alias.scope !4, !noalias !3
  %c1713 = zext i32 %gml1712 to i64
  %wp1714 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1713, ptr %wp1714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c65c word 0xb9402865
  %r1715.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1715 = load i64, ptr %r1715.p, align 8, !alias.scope !3, !noalias !4
  %t1716 = add i64 %r1715, 40
  %gmp1717 = inttoptr i64 %t1716 to ptr
  %gml1718 = load i32, ptr %gmp1717, align 1, !alias.scope !4, !noalias !3
  %c1719 = zext i32 %gml1718 to i64
  %wp1720 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1719, ptr %wp1720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c660 word 0x6b0400bf
  %r1721.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1721 = load i64, ptr %r1721.p, align 8, !alias.scope !3, !noalias !4
  %c1722 = trunc i64 %r1721 to i32
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %c1724 = trunc i64 %r1723 to i32
  %t1725 = sub i32 %c1722, %c1724
  %fn1726 = icmp slt i32 %t1725, 0
  %fz1727 = icmp eq i32 %t1725, 0
  %fc1728 = icmp uge i32 %c1722, %c1724
  %fx11729 = xor i32 %c1722, %c1724
  %fx21730 = xor i32 %c1722, %t1725
  %fva1731 = and i32 %fx11729, %fx21730
  %fv1732 = icmp slt i32 %fva1731, 0
  %nz1733 = zext i1 %fn1726 to i64
  %zz1734 = zext i1 %fz1727 to i64
  %cz1735 = zext i1 %fc1728 to i64
  %vz1736 = zext i1 %fv1732 to i64
  %ns1737 = shl i64 %nz1733, 31
  %zs1738 = shl i64 %zz1734, 30
  %cs1739 = shl i64 %cz1735, 29
  %vs1740 = shl i64 %vz1736, 28
  %nzor1741 = or i64 %ns1737, %zs1738
  %cvor1742 = or i64 %cs1739, %vs1740
  %nzcv1743 = or i64 %nzor1741, %cvor1742
  %wp1744 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1743, ptr %wp1744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c664 word 0x540012c1
  %r1745.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1745 = load i64, ptr %r1745.p, align 8, !alias.scope !3, !noalias !4
  %fsh1747 = lshr i64 %r1745, 30
  %ftr1748 = trunc i64 %fsh1747 to i1
  %cond1746 = xor i1 %ftr1748, true
  br i1 %cond1746, label %L_80077c8bc, label %L_80077c668_ft
L_80077c668_ft:
  ; @pc 0x80077c668 word 0xb9402e24
  %r1749.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1749 = load i64, ptr %r1749.p, align 8, !alias.scope !3, !noalias !4
  %t1750 = add i64 %r1749, 44
  %gmp1751 = inttoptr i64 %t1750 to ptr
  %gml1752 = load i32, ptr %gmp1751, align 1, !alias.scope !4, !noalias !3
  %c1753 = zext i32 %gml1752 to i64
  %wp1754 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1753, ptr %wp1754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c66c word 0xb9402c65
  %r1755.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1755 = load i64, ptr %r1755.p, align 8, !alias.scope !3, !noalias !4
  %t1756 = add i64 %r1755, 44
  %gmp1757 = inttoptr i64 %t1756 to ptr
  %gml1758 = load i32, ptr %gmp1757, align 1, !alias.scope !4, !noalias !3
  %c1759 = zext i32 %gml1758 to i64
  %wp1760 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1759, ptr %wp1760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c670 word 0x6b0400bf
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %c1762 = trunc i64 %r1761 to i32
  %r1763.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1763 = load i64, ptr %r1763.p, align 8, !alias.scope !3, !noalias !4
  %c1764 = trunc i64 %r1763 to i32
  %t1765 = sub i32 %c1762, %c1764
  %fn1766 = icmp slt i32 %t1765, 0
  %fz1767 = icmp eq i32 %t1765, 0
  %fc1768 = icmp uge i32 %c1762, %c1764
  %fx11769 = xor i32 %c1762, %c1764
  %fx21770 = xor i32 %c1762, %t1765
  %fva1771 = and i32 %fx11769, %fx21770
  %fv1772 = icmp slt i32 %fva1771, 0
  %nz1773 = zext i1 %fn1766 to i64
  %zz1774 = zext i1 %fz1767 to i64
  %cz1775 = zext i1 %fc1768 to i64
  %vz1776 = zext i1 %fv1772 to i64
  %ns1777 = shl i64 %nz1773, 31
  %zs1778 = shl i64 %zz1774, 30
  %cs1779 = shl i64 %cz1775, 29
  %vs1780 = shl i64 %vz1776, 28
  %nzor1781 = or i64 %ns1777, %zs1778
  %cvor1782 = or i64 %cs1779, %vs1780
  %nzcv1783 = or i64 %nzor1781, %cvor1782
  %wp1784 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1783, ptr %wp1784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c674 word 0x54001241
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %fsh1787 = lshr i64 %r1785, 30
  %ftr1788 = trunc i64 %fsh1787 to i1
  %cond1786 = xor i1 %ftr1788, true
  br i1 %cond1786, label %L_80077c8bc, label %L_80077c678_ft
L_80077c678_ft:
  ; @pc 0x80077c678 word 0xb9403224
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %t1790 = add i64 %r1789, 48
  %gmp1791 = inttoptr i64 %t1790 to ptr
  %gml1792 = load i32, ptr %gmp1791, align 1, !alias.scope !4, !noalias !3
  %c1793 = zext i32 %gml1792 to i64
  %wp1794 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1793, ptr %wp1794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c67c word 0xb9403065
  %r1795.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1795 = load i64, ptr %r1795.p, align 8, !alias.scope !3, !noalias !4
  %t1796 = add i64 %r1795, 48
  %gmp1797 = inttoptr i64 %t1796 to ptr
  %gml1798 = load i32, ptr %gmp1797, align 1, !alias.scope !4, !noalias !3
  %c1799 = zext i32 %gml1798 to i64
  %wp1800 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1799, ptr %wp1800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c680 word 0x6b0400bf
  %r1801.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1801 = load i64, ptr %r1801.p, align 8, !alias.scope !3, !noalias !4
  %c1802 = trunc i64 %r1801 to i32
  %r1803.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1803 = load i64, ptr %r1803.p, align 8, !alias.scope !3, !noalias !4
  %c1804 = trunc i64 %r1803 to i32
  %t1805 = sub i32 %c1802, %c1804
  %fn1806 = icmp slt i32 %t1805, 0
  %fz1807 = icmp eq i32 %t1805, 0
  %fc1808 = icmp uge i32 %c1802, %c1804
  %fx11809 = xor i32 %c1802, %c1804
  %fx21810 = xor i32 %c1802, %t1805
  %fva1811 = and i32 %fx11809, %fx21810
  %fv1812 = icmp slt i32 %fva1811, 0
  %nz1813 = zext i1 %fn1806 to i64
  %zz1814 = zext i1 %fz1807 to i64
  %cz1815 = zext i1 %fc1808 to i64
  %vz1816 = zext i1 %fv1812 to i64
  %ns1817 = shl i64 %nz1813, 31
  %zs1818 = shl i64 %zz1814, 30
  %cs1819 = shl i64 %cz1815, 29
  %vs1820 = shl i64 %vz1816, 28
  %nzor1821 = or i64 %ns1817, %zs1818
  %cvor1822 = or i64 %cs1819, %vs1820
  %nzcv1823 = or i64 %nzor1821, %cvor1822
  %wp1824 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1823, ptr %wp1824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c684 word 0x540011c1
  %r1825.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1825 = load i64, ptr %r1825.p, align 8, !alias.scope !3, !noalias !4
  %fsh1827 = lshr i64 %r1825, 30
  %ftr1828 = trunc i64 %fsh1827 to i1
  %cond1826 = xor i1 %ftr1828, true
  br i1 %cond1826, label %L_80077c8bc, label %L_80077c688_ft
L_80077c688_ft:
  ; @pc 0x80077c688 word 0xb9403624
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %t1830 = add i64 %r1829, 52
  %gmp1831 = inttoptr i64 %t1830 to ptr
  %gml1832 = load i32, ptr %gmp1831, align 1, !alias.scope !4, !noalias !3
  %c1833 = zext i32 %gml1832 to i64
  %wp1834 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1833, ptr %wp1834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c68c word 0xb9403465
  %r1835.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1835 = load i64, ptr %r1835.p, align 8, !alias.scope !3, !noalias !4
  %t1836 = add i64 %r1835, 52
  %gmp1837 = inttoptr i64 %t1836 to ptr
  %gml1838 = load i32, ptr %gmp1837, align 1, !alias.scope !4, !noalias !3
  %c1839 = zext i32 %gml1838 to i64
  %wp1840 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1839, ptr %wp1840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c690 word 0x6b0400bf
  %r1841.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1841 = load i64, ptr %r1841.p, align 8, !alias.scope !3, !noalias !4
  %c1842 = trunc i64 %r1841 to i32
  %r1843.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1843 = load i64, ptr %r1843.p, align 8, !alias.scope !3, !noalias !4
  %c1844 = trunc i64 %r1843 to i32
  %t1845 = sub i32 %c1842, %c1844
  %fn1846 = icmp slt i32 %t1845, 0
  %fz1847 = icmp eq i32 %t1845, 0
  %fc1848 = icmp uge i32 %c1842, %c1844
  %fx11849 = xor i32 %c1842, %c1844
  %fx21850 = xor i32 %c1842, %t1845
  %fva1851 = and i32 %fx11849, %fx21850
  %fv1852 = icmp slt i32 %fva1851, 0
  %nz1853 = zext i1 %fn1846 to i64
  %zz1854 = zext i1 %fz1847 to i64
  %cz1855 = zext i1 %fc1848 to i64
  %vz1856 = zext i1 %fv1852 to i64
  %ns1857 = shl i64 %nz1853, 31
  %zs1858 = shl i64 %zz1854, 30
  %cs1859 = shl i64 %cz1855, 29
  %vs1860 = shl i64 %vz1856, 28
  %nzor1861 = or i64 %ns1857, %zs1858
  %cvor1862 = or i64 %cs1859, %vs1860
  %nzcv1863 = or i64 %nzor1861, %cvor1862
  %wp1864 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1863, ptr %wp1864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c694 word 0x54001141
  %r1865.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1865 = load i64, ptr %r1865.p, align 8, !alias.scope !3, !noalias !4
  %fsh1867 = lshr i64 %r1865, 30
  %ftr1868 = trunc i64 %fsh1867 to i1
  %cond1866 = xor i1 %ftr1868, true
  br i1 %cond1866, label %L_80077c8bc, label %L_80077c698_ft
L_80077c698_ft:
  ; @pc 0x80077c698 word 0xb9403a24
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %t1870 = add i64 %r1869, 56
  %gmp1871 = inttoptr i64 %t1870 to ptr
  %gml1872 = load i32, ptr %gmp1871, align 1, !alias.scope !4, !noalias !3
  %c1873 = zext i32 %gml1872 to i64
  %wp1874 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1873, ptr %wp1874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c69c word 0xb9403863
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = add i64 %r1875, 56
  %gmp1877 = inttoptr i64 %t1876 to ptr
  %gml1878 = load i32, ptr %gmp1877, align 1, !alias.scope !4, !noalias !3
  %c1879 = zext i32 %gml1878 to i64
  %wp1880 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c1879, ptr %wp1880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6a0 word 0x6b04007f
  %r1881.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1881 = load i64, ptr %r1881.p, align 8, !alias.scope !3, !noalias !4
  %c1882 = trunc i64 %r1881 to i32
  %r1883.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1883 = load i64, ptr %r1883.p, align 8, !alias.scope !3, !noalias !4
  %c1884 = trunc i64 %r1883 to i32
  %t1885 = sub i32 %c1882, %c1884
  %fn1886 = icmp slt i32 %t1885, 0
  %fz1887 = icmp eq i32 %t1885, 0
  %fc1888 = icmp uge i32 %c1882, %c1884
  %fx11889 = xor i32 %c1882, %c1884
  %fx21890 = xor i32 %c1882, %t1885
  %fva1891 = and i32 %fx11889, %fx21890
  %fv1892 = icmp slt i32 %fva1891, 0
  %nz1893 = zext i1 %fn1886 to i64
  %zz1894 = zext i1 %fz1887 to i64
  %cz1895 = zext i1 %fc1888 to i64
  %vz1896 = zext i1 %fv1892 to i64
  %ns1897 = shl i64 %nz1893, 31
  %zs1898 = shl i64 %zz1894, 30
  %cs1899 = shl i64 %cz1895, 29
  %vs1900 = shl i64 %vz1896, 28
  %nzor1901 = or i64 %ns1897, %zs1898
  %cvor1902 = or i64 %cs1899, %vs1900
  %nzcv1903 = or i64 %nzor1901, %cvor1902
  %wp1904 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1903, ptr %wp1904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6a4 word 0x1a9f17e3
  %t1905 = add i32 0, 1
  %r1906.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1906 = load i64, ptr %r1906.p, align 8, !alias.scope !3, !noalias !4
  %fsh1908 = lshr i64 %r1906, 30
  %ftr1909 = trunc i64 %fsh1908 to i1
  %cond1907 = xor i1 %ftr1909, true
  %sel1910 = select i1 %cond1907, i32 0, i32 %t1905
  %c1911 = zext i32 %sel1910 to i64
  %wp1912 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c1911, ptr %wp1912, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c6a8
L_80077c6b4_ft:
  ; @pc 0x80077c6b4 word 0xb9400885
  %r1943.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1943 = load i64, ptr %r1943.p, align 8, !alias.scope !3, !noalias !4
  %t1944 = add i64 %r1943, 8
  %gmp1945 = inttoptr i64 %t1944 to ptr
  %gml1946 = load i32, ptr %gmp1945, align 1, !alias.scope !4, !noalias !3
  %c1947 = zext i32 %gml1946 to i64
  %wp1948 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1947, ptr %wp1948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6b8 word 0xb9400a46
  %r1949.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1949 = load i64, ptr %r1949.p, align 8, !alias.scope !3, !noalias !4
  %t1950 = add i64 %r1949, 8
  %gmp1951 = inttoptr i64 %t1950 to ptr
  %gml1952 = load i32, ptr %gmp1951, align 1, !alias.scope !4, !noalias !3
  %c1953 = zext i32 %gml1952 to i64
  %wp1954 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c1953, ptr %wp1954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6bc word 0x6b0600bf
  %r1955.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1955 = load i64, ptr %r1955.p, align 8, !alias.scope !3, !noalias !4
  %c1956 = trunc i64 %r1955 to i32
  %r1957.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1957 = load i64, ptr %r1957.p, align 8, !alias.scope !3, !noalias !4
  %c1958 = trunc i64 %r1957 to i32
  %t1959 = sub i32 %c1956, %c1958
  %fn1960 = icmp slt i32 %t1959, 0
  %fz1961 = icmp eq i32 %t1959, 0
  %fc1962 = icmp uge i32 %c1956, %c1958
  %fx11963 = xor i32 %c1956, %c1958
  %fx21964 = xor i32 %c1956, %t1959
  %fva1965 = and i32 %fx11963, %fx21964
  %fv1966 = icmp slt i32 %fva1965, 0
  %nz1967 = zext i1 %fn1960 to i64
  %zz1968 = zext i1 %fz1961 to i64
  %cz1969 = zext i1 %fc1962 to i64
  %vz1970 = zext i1 %fv1966 to i64
  %ns1971 = shl i64 %nz1967, 31
  %zs1972 = shl i64 %zz1968, 30
  %cs1973 = shl i64 %cz1969, 29
  %vs1974 = shl i64 %vz1970, 28
  %nzor1975 = or i64 %ns1971, %zs1972
  %cvor1976 = or i64 %cs1973, %vs1974
  %nzcv1977 = or i64 %nzor1975, %cvor1976
  %wp1978 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1977, ptr %wp1978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6c0 word 0x540038c1
  %r1979.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1979 = load i64, ptr %r1979.p, align 8, !alias.scope !3, !noalias !4
  %fsh1981 = lshr i64 %r1979, 30
  %ftr1982 = trunc i64 %fsh1981 to i1
  %cond1980 = xor i1 %ftr1982, true
  br i1 %cond1980, label %L_80077cdd8, label %L_80077c6c4_ft
L_80077c6c4_ft:
  ; @pc 0x80077c6c4 word 0xb9401245
  %r1983.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1983 = load i64, ptr %r1983.p, align 8, !alias.scope !3, !noalias !4
  %t1984 = add i64 %r1983, 16
  %gmp1985 = inttoptr i64 %t1984 to ptr
  %gml1986 = load i32, ptr %gmp1985, align 1, !alias.scope !4, !noalias !3
  %c1987 = zext i32 %gml1986 to i64
  %wp1988 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1987, ptr %wp1988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6c8 word 0xb9401086
  %r1989.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1989 = load i64, ptr %r1989.p, align 8, !alias.scope !3, !noalias !4
  %t1990 = add i64 %r1989, 16
  %gmp1991 = inttoptr i64 %t1990 to ptr
  %gml1992 = load i32, ptr %gmp1991, align 1, !alias.scope !4, !noalias !3
  %c1993 = zext i32 %gml1992 to i64
  %wp1994 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c1993, ptr %wp1994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6cc word 0x6b0500df
  %r1995.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1995 = load i64, ptr %r1995.p, align 8, !alias.scope !3, !noalias !4
  %c1996 = trunc i64 %r1995 to i32
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %c1998 = trunc i64 %r1997 to i32
  %t1999 = sub i32 %c1996, %c1998
  %fn2000 = icmp slt i32 %t1999, 0
  %fz2001 = icmp eq i32 %t1999, 0
  %fc2002 = icmp uge i32 %c1996, %c1998
  %fx12003 = xor i32 %c1996, %c1998
  %fx22004 = xor i32 %c1996, %t1999
  %fva2005 = and i32 %fx12003, %fx22004
  %fv2006 = icmp slt i32 %fva2005, 0
  %nz2007 = zext i1 %fn2000 to i64
  %zz2008 = zext i1 %fz2001 to i64
  %cz2009 = zext i1 %fc2002 to i64
  %vz2010 = zext i1 %fv2006 to i64
  %ns2011 = shl i64 %nz2007, 31
  %zs2012 = shl i64 %zz2008, 30
  %cs2013 = shl i64 %cz2009, 29
  %vs2014 = shl i64 %vz2010, 28
  %nzor2015 = or i64 %ns2011, %zs2012
  %cvor2016 = or i64 %cs2013, %vs2014
  %nzcv2017 = or i64 %nzor2015, %cvor2016
  %wp2018 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2017, ptr %wp2018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6d0 word 0x54003841
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %fsh2021 = lshr i64 %r2019, 30
  %ftr2022 = trunc i64 %fsh2021 to i1
  %cond2020 = xor i1 %ftr2022, true
  br i1 %cond2020, label %L_80077cdd8, label %L_80077c6d4_ft
L_80077c6d4_ft:
  ; @pc 0x80077c6d4 word 0xb9401645
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %t2024 = add i64 %r2023, 20
  %gmp2025 = inttoptr i64 %t2024 to ptr
  %gml2026 = load i32, ptr %gmp2025, align 1, !alias.scope !4, !noalias !3
  %c2027 = zext i32 %gml2026 to i64
  %wp2028 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2027, ptr %wp2028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6d8 word 0xb9401486
  %r2029.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2029 = load i64, ptr %r2029.p, align 8, !alias.scope !3, !noalias !4
  %t2030 = add i64 %r2029, 20
  %gmp2031 = inttoptr i64 %t2030 to ptr
  %gml2032 = load i32, ptr %gmp2031, align 1, !alias.scope !4, !noalias !3
  %c2033 = zext i32 %gml2032 to i64
  %wp2034 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2033, ptr %wp2034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6dc word 0x6b0500df
  %r2035.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2035 = load i64, ptr %r2035.p, align 8, !alias.scope !3, !noalias !4
  %c2036 = trunc i64 %r2035 to i32
  %r2037.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2037 = load i64, ptr %r2037.p, align 8, !alias.scope !3, !noalias !4
  %c2038 = trunc i64 %r2037 to i32
  %t2039 = sub i32 %c2036, %c2038
  %fn2040 = icmp slt i32 %t2039, 0
  %fz2041 = icmp eq i32 %t2039, 0
  %fc2042 = icmp uge i32 %c2036, %c2038
  %fx12043 = xor i32 %c2036, %c2038
  %fx22044 = xor i32 %c2036, %t2039
  %fva2045 = and i32 %fx12043, %fx22044
  %fv2046 = icmp slt i32 %fva2045, 0
  %nz2047 = zext i1 %fn2040 to i64
  %zz2048 = zext i1 %fz2041 to i64
  %cz2049 = zext i1 %fc2042 to i64
  %vz2050 = zext i1 %fv2046 to i64
  %ns2051 = shl i64 %nz2047, 31
  %zs2052 = shl i64 %zz2048, 30
  %cs2053 = shl i64 %cz2049, 29
  %vs2054 = shl i64 %vz2050, 28
  %nzor2055 = or i64 %ns2051, %zs2052
  %cvor2056 = or i64 %cs2053, %vs2054
  %nzcv2057 = or i64 %nzor2055, %cvor2056
  %wp2058 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2057, ptr %wp2058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6e0 word 0x540037c1
  %r2059.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2059 = load i64, ptr %r2059.p, align 8, !alias.scope !3, !noalias !4
  %fsh2061 = lshr i64 %r2059, 30
  %ftr2062 = trunc i64 %fsh2061 to i1
  %cond2060 = xor i1 %ftr2062, true
  br i1 %cond2060, label %L_80077cdd8, label %L_80077c6e4_ft
L_80077c6e4_ft:
  ; @pc 0x80077c6e4 word 0xb9401a45
  %r2063.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2063 = load i64, ptr %r2063.p, align 8, !alias.scope !3, !noalias !4
  %t2064 = add i64 %r2063, 24
  %gmp2065 = inttoptr i64 %t2064 to ptr
  %gml2066 = load i32, ptr %gmp2065, align 1, !alias.scope !4, !noalias !3
  %c2067 = zext i32 %gml2066 to i64
  %wp2068 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2067, ptr %wp2068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6e8 word 0xb9401886
  %r2069.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2069 = load i64, ptr %r2069.p, align 8, !alias.scope !3, !noalias !4
  %t2070 = add i64 %r2069, 24
  %gmp2071 = inttoptr i64 %t2070 to ptr
  %gml2072 = load i32, ptr %gmp2071, align 1, !alias.scope !4, !noalias !3
  %c2073 = zext i32 %gml2072 to i64
  %wp2074 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2073, ptr %wp2074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6ec word 0x6b0500df
  %r2075.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2075 = load i64, ptr %r2075.p, align 8, !alias.scope !3, !noalias !4
  %c2076 = trunc i64 %r2075 to i32
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %c2078 = trunc i64 %r2077 to i32
  %t2079 = sub i32 %c2076, %c2078
  %fn2080 = icmp slt i32 %t2079, 0
  %fz2081 = icmp eq i32 %t2079, 0
  %fc2082 = icmp uge i32 %c2076, %c2078
  %fx12083 = xor i32 %c2076, %c2078
  %fx22084 = xor i32 %c2076, %t2079
  %fva2085 = and i32 %fx12083, %fx22084
  %fv2086 = icmp slt i32 %fva2085, 0
  %nz2087 = zext i1 %fn2080 to i64
  %zz2088 = zext i1 %fz2081 to i64
  %cz2089 = zext i1 %fc2082 to i64
  %vz2090 = zext i1 %fv2086 to i64
  %ns2091 = shl i64 %nz2087, 31
  %zs2092 = shl i64 %zz2088, 30
  %cs2093 = shl i64 %cz2089, 29
  %vs2094 = shl i64 %vz2090, 28
  %nzor2095 = or i64 %ns2091, %zs2092
  %cvor2096 = or i64 %cs2093, %vs2094
  %nzcv2097 = or i64 %nzor2095, %cvor2096
  %wp2098 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2097, ptr %wp2098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6f0 word 0x54003741
  %r2099.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2099 = load i64, ptr %r2099.p, align 8, !alias.scope !3, !noalias !4
  %fsh2101 = lshr i64 %r2099, 30
  %ftr2102 = trunc i64 %fsh2101 to i1
  %cond2100 = xor i1 %ftr2102, true
  br i1 %cond2100, label %L_80077cdd8, label %L_80077c6f4_ft
L_80077c6f4_ft:
  ; @pc 0x80077c6f4 word 0xb9401e45
  %r2103.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2103 = load i64, ptr %r2103.p, align 8, !alias.scope !3, !noalias !4
  %t2104 = add i64 %r2103, 28
  %gmp2105 = inttoptr i64 %t2104 to ptr
  %gml2106 = load i32, ptr %gmp2105, align 1, !alias.scope !4, !noalias !3
  %c2107 = zext i32 %gml2106 to i64
  %wp2108 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2107, ptr %wp2108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6f8 word 0xb9401c86
  %r2109.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2109 = load i64, ptr %r2109.p, align 8, !alias.scope !3, !noalias !4
  %t2110 = add i64 %r2109, 28
  %gmp2111 = inttoptr i64 %t2110 to ptr
  %gml2112 = load i32, ptr %gmp2111, align 1, !alias.scope !4, !noalias !3
  %c2113 = zext i32 %gml2112 to i64
  %wp2114 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2113, ptr %wp2114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c6fc word 0x6b0500df
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %c2116 = trunc i64 %r2115 to i32
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %c2118 = trunc i64 %r2117 to i32
  %t2119 = sub i32 %c2116, %c2118
  %fn2120 = icmp slt i32 %t2119, 0
  %fz2121 = icmp eq i32 %t2119, 0
  %fc2122 = icmp uge i32 %c2116, %c2118
  %fx12123 = xor i32 %c2116, %c2118
  %fx22124 = xor i32 %c2116, %t2119
  %fva2125 = and i32 %fx12123, %fx22124
  %fv2126 = icmp slt i32 %fva2125, 0
  %nz2127 = zext i1 %fn2120 to i64
  %zz2128 = zext i1 %fz2121 to i64
  %cz2129 = zext i1 %fc2122 to i64
  %vz2130 = zext i1 %fv2126 to i64
  %ns2131 = shl i64 %nz2127, 31
  %zs2132 = shl i64 %zz2128, 30
  %cs2133 = shl i64 %cz2129, 29
  %vs2134 = shl i64 %vz2130, 28
  %nzor2135 = or i64 %ns2131, %zs2132
  %cvor2136 = or i64 %cs2133, %vs2134
  %nzcv2137 = or i64 %nzor2135, %cvor2136
  %wp2138 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2137, ptr %wp2138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c700 word 0x540036c1
  %r2139.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2139 = load i64, ptr %r2139.p, align 8, !alias.scope !3, !noalias !4
  %fsh2141 = lshr i64 %r2139, 30
  %ftr2142 = trunc i64 %fsh2141 to i1
  %cond2140 = xor i1 %ftr2142, true
  br i1 %cond2140, label %L_80077cdd8, label %L_80077c704_ft
L_80077c704_ft:
  ; @pc 0x80077c704 word 0xb9402245
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2143 = load i64, ptr %r2143.p, align 8, !alias.scope !3, !noalias !4
  %t2144 = add i64 %r2143, 32
  %gmp2145 = inttoptr i64 %t2144 to ptr
  %gml2146 = load i32, ptr %gmp2145, align 1, !alias.scope !4, !noalias !3
  %c2147 = zext i32 %gml2146 to i64
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c708 word 0xb9402086
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %t2150 = add i64 %r2149, 32
  %gmp2151 = inttoptr i64 %t2150 to ptr
  %gml2152 = load i32, ptr %gmp2151, align 1, !alias.scope !4, !noalias !3
  %c2153 = zext i32 %gml2152 to i64
  %wp2154 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2153, ptr %wp2154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c70c word 0x6b0500df
  %r2155.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2155 = load i64, ptr %r2155.p, align 8, !alias.scope !3, !noalias !4
  %c2156 = trunc i64 %r2155 to i32
  %r2157.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2157 = load i64, ptr %r2157.p, align 8, !alias.scope !3, !noalias !4
  %c2158 = trunc i64 %r2157 to i32
  %t2159 = sub i32 %c2156, %c2158
  %fn2160 = icmp slt i32 %t2159, 0
  %fz2161 = icmp eq i32 %t2159, 0
  %fc2162 = icmp uge i32 %c2156, %c2158
  %fx12163 = xor i32 %c2156, %c2158
  %fx22164 = xor i32 %c2156, %t2159
  %fva2165 = and i32 %fx12163, %fx22164
  %fv2166 = icmp slt i32 %fva2165, 0
  %nz2167 = zext i1 %fn2160 to i64
  %zz2168 = zext i1 %fz2161 to i64
  %cz2169 = zext i1 %fc2162 to i64
  %vz2170 = zext i1 %fv2166 to i64
  %ns2171 = shl i64 %nz2167, 31
  %zs2172 = shl i64 %zz2168, 30
  %cs2173 = shl i64 %cz2169, 29
  %vs2174 = shl i64 %vz2170, 28
  %nzor2175 = or i64 %ns2171, %zs2172
  %cvor2176 = or i64 %cs2173, %vs2174
  %nzcv2177 = or i64 %nzor2175, %cvor2176
  %wp2178 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2177, ptr %wp2178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c710 word 0x54003641
  %r2179.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2179 = load i64, ptr %r2179.p, align 8, !alias.scope !3, !noalias !4
  %fsh2181 = lshr i64 %r2179, 30
  %ftr2182 = trunc i64 %fsh2181 to i1
  %cond2180 = xor i1 %ftr2182, true
  br i1 %cond2180, label %L_80077cdd8, label %L_80077c714_ft
L_80077c714_ft:
  ; @pc 0x80077c714 word 0xb9402645
  %r2183.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2183 = load i64, ptr %r2183.p, align 8, !alias.scope !3, !noalias !4
  %t2184 = add i64 %r2183, 36
  %gmp2185 = inttoptr i64 %t2184 to ptr
  %gml2186 = load i32, ptr %gmp2185, align 1, !alias.scope !4, !noalias !3
  %c2187 = zext i32 %gml2186 to i64
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c718 word 0xb9402486
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %t2190 = add i64 %r2189, 36
  %gmp2191 = inttoptr i64 %t2190 to ptr
  %gml2192 = load i32, ptr %gmp2191, align 1, !alias.scope !4, !noalias !3
  %c2193 = zext i32 %gml2192 to i64
  %wp2194 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2193, ptr %wp2194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c71c word 0x6b0500df
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %c2196 = trunc i64 %r2195 to i32
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %c2198 = trunc i64 %r2197 to i32
  %t2199 = sub i32 %c2196, %c2198
  %fn2200 = icmp slt i32 %t2199, 0
  %fz2201 = icmp eq i32 %t2199, 0
  %fc2202 = icmp uge i32 %c2196, %c2198
  %fx12203 = xor i32 %c2196, %c2198
  %fx22204 = xor i32 %c2196, %t2199
  %fva2205 = and i32 %fx12203, %fx22204
  %fv2206 = icmp slt i32 %fva2205, 0
  %nz2207 = zext i1 %fn2200 to i64
  %zz2208 = zext i1 %fz2201 to i64
  %cz2209 = zext i1 %fc2202 to i64
  %vz2210 = zext i1 %fv2206 to i64
  %ns2211 = shl i64 %nz2207, 31
  %zs2212 = shl i64 %zz2208, 30
  %cs2213 = shl i64 %cz2209, 29
  %vs2214 = shl i64 %vz2210, 28
  %nzor2215 = or i64 %ns2211, %zs2212
  %cvor2216 = or i64 %cs2213, %vs2214
  %nzcv2217 = or i64 %nzor2215, %cvor2216
  %wp2218 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2217, ptr %wp2218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c720 word 0x540035c1
  %r2219.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2219 = load i64, ptr %r2219.p, align 8, !alias.scope !3, !noalias !4
  %fsh2221 = lshr i64 %r2219, 30
  %ftr2222 = trunc i64 %fsh2221 to i1
  %cond2220 = xor i1 %ftr2222, true
  br i1 %cond2220, label %L_80077cdd8, label %L_80077c724_ft
L_80077c724_ft:
  ; @pc 0x80077c724 word 0xb9402a45
  %r2223.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2223 = load i64, ptr %r2223.p, align 8, !alias.scope !3, !noalias !4
  %t2224 = add i64 %r2223, 40
  %gmp2225 = inttoptr i64 %t2224 to ptr
  %gml2226 = load i32, ptr %gmp2225, align 1, !alias.scope !4, !noalias !3
  %c2227 = zext i32 %gml2226 to i64
  %wp2228 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2227, ptr %wp2228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c728 word 0xb9402886
  %r2229.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2229 = load i64, ptr %r2229.p, align 8, !alias.scope !3, !noalias !4
  %t2230 = add i64 %r2229, 40
  %gmp2231 = inttoptr i64 %t2230 to ptr
  %gml2232 = load i32, ptr %gmp2231, align 1, !alias.scope !4, !noalias !3
  %c2233 = zext i32 %gml2232 to i64
  %wp2234 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2233, ptr %wp2234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c72c word 0x6b0500df
  %r2235.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2235 = load i64, ptr %r2235.p, align 8, !alias.scope !3, !noalias !4
  %c2236 = trunc i64 %r2235 to i32
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %c2238 = trunc i64 %r2237 to i32
  %t2239 = sub i32 %c2236, %c2238
  %fn2240 = icmp slt i32 %t2239, 0
  %fz2241 = icmp eq i32 %t2239, 0
  %fc2242 = icmp uge i32 %c2236, %c2238
  %fx12243 = xor i32 %c2236, %c2238
  %fx22244 = xor i32 %c2236, %t2239
  %fva2245 = and i32 %fx12243, %fx22244
  %fv2246 = icmp slt i32 %fva2245, 0
  %nz2247 = zext i1 %fn2240 to i64
  %zz2248 = zext i1 %fz2241 to i64
  %cz2249 = zext i1 %fc2242 to i64
  %vz2250 = zext i1 %fv2246 to i64
  %ns2251 = shl i64 %nz2247, 31
  %zs2252 = shl i64 %zz2248, 30
  %cs2253 = shl i64 %cz2249, 29
  %vs2254 = shl i64 %vz2250, 28
  %nzor2255 = or i64 %ns2251, %zs2252
  %cvor2256 = or i64 %cs2253, %vs2254
  %nzcv2257 = or i64 %nzor2255, %cvor2256
  %wp2258 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2257, ptr %wp2258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c730 word 0x54003541
  %r2259.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2259 = load i64, ptr %r2259.p, align 8, !alias.scope !3, !noalias !4
  %fsh2261 = lshr i64 %r2259, 30
  %ftr2262 = trunc i64 %fsh2261 to i1
  %cond2260 = xor i1 %ftr2262, true
  br i1 %cond2260, label %L_80077cdd8, label %L_80077c734_ft
L_80077c734_ft:
  ; @pc 0x80077c734 word 0xb9402e45
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %t2264 = add i64 %r2263, 44
  %gmp2265 = inttoptr i64 %t2264 to ptr
  %gml2266 = load i32, ptr %gmp2265, align 1, !alias.scope !4, !noalias !3
  %c2267 = zext i32 %gml2266 to i64
  %wp2268 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2267, ptr %wp2268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c738 word 0xb9402c86
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %t2270 = add i64 %r2269, 44
  %gmp2271 = inttoptr i64 %t2270 to ptr
  %gml2272 = load i32, ptr %gmp2271, align 1, !alias.scope !4, !noalias !3
  %c2273 = zext i32 %gml2272 to i64
  %wp2274 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2273, ptr %wp2274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c73c word 0x6b0500df
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %c2276 = trunc i64 %r2275 to i32
  %r2277.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2277 = load i64, ptr %r2277.p, align 8, !alias.scope !3, !noalias !4
  %c2278 = trunc i64 %r2277 to i32
  %t2279 = sub i32 %c2276, %c2278
  %fn2280 = icmp slt i32 %t2279, 0
  %fz2281 = icmp eq i32 %t2279, 0
  %fc2282 = icmp uge i32 %c2276, %c2278
  %fx12283 = xor i32 %c2276, %c2278
  %fx22284 = xor i32 %c2276, %t2279
  %fva2285 = and i32 %fx12283, %fx22284
  %fv2286 = icmp slt i32 %fva2285, 0
  %nz2287 = zext i1 %fn2280 to i64
  %zz2288 = zext i1 %fz2281 to i64
  %cz2289 = zext i1 %fc2282 to i64
  %vz2290 = zext i1 %fv2286 to i64
  %ns2291 = shl i64 %nz2287, 31
  %zs2292 = shl i64 %zz2288, 30
  %cs2293 = shl i64 %cz2289, 29
  %vs2294 = shl i64 %vz2290, 28
  %nzor2295 = or i64 %ns2291, %zs2292
  %cvor2296 = or i64 %cs2293, %vs2294
  %nzcv2297 = or i64 %nzor2295, %cvor2296
  %wp2298 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2297, ptr %wp2298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c740 word 0x540034c1
  %r2299.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2299 = load i64, ptr %r2299.p, align 8, !alias.scope !3, !noalias !4
  %fsh2301 = lshr i64 %r2299, 30
  %ftr2302 = trunc i64 %fsh2301 to i1
  %cond2300 = xor i1 %ftr2302, true
  br i1 %cond2300, label %L_80077cdd8, label %L_80077c744_ft
L_80077c744_ft:
  ; @pc 0x80077c744 word 0xb9403245
  %r2303.p = getelementptr inbounds i8, ptr %c, i64 144
  %r2303 = load i64, ptr %r2303.p, align 8, !alias.scope !3, !noalias !4
  %t2304 = add i64 %r2303, 48
  %gmp2305 = inttoptr i64 %t2304 to ptr
  %gml2306 = load i32, ptr %gmp2305, align 1, !alias.scope !4, !noalias !3
  %c2307 = zext i32 %gml2306 to i64
  %wp2308 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2307, ptr %wp2308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c748 word 0xb9403084
  %r2309.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2309 = load i64, ptr %r2309.p, align 8, !alias.scope !3, !noalias !4
  %t2310 = add i64 %r2309, 48
  %gmp2311 = inttoptr i64 %t2310 to ptr
  %gml2312 = load i32, ptr %gmp2311, align 1, !alias.scope !4, !noalias !3
  %c2313 = zext i32 %gml2312 to i64
  %wp2314 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2313, ptr %wp2314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c74c word 0x6b05009f
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %c2316 = trunc i64 %r2315 to i32
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %c2318 = trunc i64 %r2317 to i32
  %t2319 = sub i32 %c2316, %c2318
  %fn2320 = icmp slt i32 %t2319, 0
  %fz2321 = icmp eq i32 %t2319, 0
  %fc2322 = icmp uge i32 %c2316, %c2318
  %fx12323 = xor i32 %c2316, %c2318
  %fx22324 = xor i32 %c2316, %t2319
  %fva2325 = and i32 %fx12323, %fx22324
  %fv2326 = icmp slt i32 %fva2325, 0
  %nz2327 = zext i1 %fn2320 to i64
  %zz2328 = zext i1 %fz2321 to i64
  %cz2329 = zext i1 %fc2322 to i64
  %vz2330 = zext i1 %fv2326 to i64
  %ns2331 = shl i64 %nz2327, 31
  %zs2332 = shl i64 %zz2328, 30
  %cs2333 = shl i64 %cz2329, 29
  %vs2334 = shl i64 %vz2330, 28
  %nzor2335 = or i64 %ns2331, %zs2332
  %cvor2336 = or i64 %cs2333, %vs2334
  %nzcv2337 = or i64 %nzor2335, %cvor2336
  %wp2338 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2337, ptr %wp2338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c750 word 0x1a9f17e4
  %t2339 = add i32 0, 1
  %r2340.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2340 = load i64, ptr %r2340.p, align 8, !alias.scope !3, !noalias !4
  %fsh2342 = lshr i64 %r2340, 30
  %ftr2343 = trunc i64 %fsh2342 to i1
  %cond2341 = xor i1 %ftr2343, true
  %sel2344 = select i1 %cond2341, i32 0, i32 %t2339
  %c2345 = zext i32 %sel2344 to i64
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2345, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c754
L_80077c764_ft:
  ; @pc 0x80077c764 word 0xb9400885
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %t2385 = add i64 %r2384, 8
  %gmp2386 = inttoptr i64 %t2385 to ptr
  %gml2387 = load i32, ptr %gmp2386, align 1, !alias.scope !4, !noalias !3
  %c2388 = zext i32 %gml2387 to i64
  %wp2389 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2388, ptr %wp2389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c768 word 0xb9400806
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %t2391 = add i64 %r2390, 8
  %gmp2392 = inttoptr i64 %t2391 to ptr
  %gml2393 = load i32, ptr %gmp2392, align 1, !alias.scope !4, !noalias !3
  %c2394 = zext i32 %gml2393 to i64
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c76c word 0x6b0600bf
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %c2397 = trunc i64 %r2396 to i32
  %r2398.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2398 = load i64, ptr %r2398.p, align 8, !alias.scope !3, !noalias !4
  %c2399 = trunc i64 %r2398 to i32
  %t2400 = sub i32 %c2397, %c2399
  %fn2401 = icmp slt i32 %t2400, 0
  %fz2402 = icmp eq i32 %t2400, 0
  %fc2403 = icmp uge i32 %c2397, %c2399
  %fx12404 = xor i32 %c2397, %c2399
  %fx22405 = xor i32 %c2397, %t2400
  %fva2406 = and i32 %fx12404, %fx22405
  %fv2407 = icmp slt i32 %fva2406, 0
  %nz2408 = zext i1 %fn2401 to i64
  %zz2409 = zext i1 %fz2402 to i64
  %cz2410 = zext i1 %fc2403 to i64
  %vz2411 = zext i1 %fv2407 to i64
  %ns2412 = shl i64 %nz2408, 31
  %zs2413 = shl i64 %zz2409, 30
  %cs2414 = shl i64 %cz2410, 29
  %vs2415 = shl i64 %vz2411, 28
  %nzor2416 = or i64 %ns2412, %zs2413
  %cvor2417 = or i64 %cs2414, %vs2415
  %nzcv2418 = or i64 %nzor2416, %cvor2417
  %wp2419 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2418, ptr %wp2419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c770 word 0x54000a01
  %r2420.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2420 = load i64, ptr %r2420.p, align 8, !alias.scope !3, !noalias !4
  %fsh2422 = lshr i64 %r2420, 30
  %ftr2423 = trunc i64 %fsh2422 to i1
  %cond2421 = xor i1 %ftr2423, true
  br i1 %cond2421, label %L_80077c8b0, label %L_80077c774_ft
L_80077c774_ft:
  ; @pc 0x80077c774 word 0xb9401085
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %t2425 = add i64 %r2424, 16
  %gmp2426 = inttoptr i64 %t2425 to ptr
  %gml2427 = load i32, ptr %gmp2426, align 1, !alias.scope !4, !noalias !3
  %c2428 = zext i32 %gml2427 to i64
  %wp2429 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2428, ptr %wp2429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c778 word 0xb9401006
  %r2430.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2430 = load i64, ptr %r2430.p, align 8, !alias.scope !3, !noalias !4
  %t2431 = add i64 %r2430, 16
  %gmp2432 = inttoptr i64 %t2431 to ptr
  %gml2433 = load i32, ptr %gmp2432, align 1, !alias.scope !4, !noalias !3
  %c2434 = zext i32 %gml2433 to i64
  %wp2435 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2434, ptr %wp2435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c77c word 0x6b0600bf
  %r2436.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2436 = load i64, ptr %r2436.p, align 8, !alias.scope !3, !noalias !4
  %c2437 = trunc i64 %r2436 to i32
  %r2438.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2438 = load i64, ptr %r2438.p, align 8, !alias.scope !3, !noalias !4
  %c2439 = trunc i64 %r2438 to i32
  %t2440 = sub i32 %c2437, %c2439
  %fn2441 = icmp slt i32 %t2440, 0
  %fz2442 = icmp eq i32 %t2440, 0
  %fc2443 = icmp uge i32 %c2437, %c2439
  %fx12444 = xor i32 %c2437, %c2439
  %fx22445 = xor i32 %c2437, %t2440
  %fva2446 = and i32 %fx12444, %fx22445
  %fv2447 = icmp slt i32 %fva2446, 0
  %nz2448 = zext i1 %fn2441 to i64
  %zz2449 = zext i1 %fz2442 to i64
  %cz2450 = zext i1 %fc2443 to i64
  %vz2451 = zext i1 %fv2447 to i64
  %ns2452 = shl i64 %nz2448, 31
  %zs2453 = shl i64 %zz2449, 30
  %cs2454 = shl i64 %cz2450, 29
  %vs2455 = shl i64 %vz2451, 28
  %nzor2456 = or i64 %ns2452, %zs2453
  %cvor2457 = or i64 %cs2454, %vs2455
  %nzcv2458 = or i64 %nzor2456, %cvor2457
  %wp2459 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2458, ptr %wp2459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c780 word 0x54000981
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %fsh2462 = lshr i64 %r2460, 30
  %ftr2463 = trunc i64 %fsh2462 to i1
  %cond2461 = xor i1 %ftr2463, true
  br i1 %cond2461, label %L_80077c8b0, label %L_80077c784_ft
L_80077c784_ft:
  ; @pc 0x80077c784 word 0xaa1f03e5
  %t2464 = or i64 0, 0
  %wp2465 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2464, ptr %wp2465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c788 word 0xaa1f03e6
  %t2466 = or i64 0, 0
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %t2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c78c word 0xd503201f
  br label %L_80077c790
L_80077c7a8_ft:
  ; @pc 0x80077c7a8 word 0x8b068295
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %t2524 = shl i64 %r2523, 32
  %t2525 = add i64 %r2522, %t2524
  %wp2526 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2525, ptr %wp2526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7ac word 0xb94018e7
  %r2527.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2527 = load i64, ptr %r2527.p, align 8, !alias.scope !3, !noalias !4
  %t2528 = add i64 %r2527, 24
  %gmp2529 = inttoptr i64 %t2528 to ptr
  %gml2530 = load i32, ptr %gmp2529, align 1, !alias.scope !4, !noalias !3
  %c2531 = zext i32 %gml2530 to i64
  %wp2532 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c2531, ptr %wp2532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7b0 word 0x935efeb5
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %ror2534 = call i64 @llvm.fshr.i64(i64 %r2533, i64 %r2533, i64 30)
  %t2535 = lshr i64 %r2533, 63
  %t2536 = and i64 %t2535, 1
  %t2537 = sub i64 0, %t2536
  %t2538 = and i64 %t2537, -17179869184
  %t2539 = and i64 %ror2534, 17179869183
  %t2540 = or i64 %t2538, %t2539
  %wp2541 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2540, ptr %wp2541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7b4 word 0xb8756835
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %r2543.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2543 = load i64, ptr %r2543.p, align 8, !alias.scope !3, !noalias !4
  %t2544 = add i64 %r2542, %r2543
  %gmp2545 = inttoptr i64 %t2544 to ptr
  %gml2546 = load i32, ptr %gmp2545, align 1, !alias.scope !4, !noalias !3
  %c2547 = zext i32 %gml2546 to i64
  %wp2548 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c2547, ptr %wp2548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7b8 word 0x6b1500ff
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 56
  %r2549 = load i64, ptr %r2549.p, align 8, !alias.scope !3, !noalias !4
  %c2550 = trunc i64 %r2549 to i32
  %r2551.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2551 = load i64, ptr %r2551.p, align 8, !alias.scope !3, !noalias !4
  %c2552 = trunc i64 %r2551 to i32
  %t2553 = sub i32 %c2550, %c2552
  %fn2554 = icmp slt i32 %t2553, 0
  %fz2555 = icmp eq i32 %t2553, 0
  %fc2556 = icmp uge i32 %c2550, %c2552
  %fx12557 = xor i32 %c2550, %c2552
  %fx22558 = xor i32 %c2550, %t2553
  %fva2559 = and i32 %fx12557, %fx22558
  %fv2560 = icmp slt i32 %fva2559, 0
  %nz2561 = zext i1 %fn2554 to i64
  %zz2562 = zext i1 %fz2555 to i64
  %cz2563 = zext i1 %fc2556 to i64
  %vz2564 = zext i1 %fv2560 to i64
  %ns2565 = shl i64 %nz2561, 31
  %zs2566 = shl i64 %zz2562, 30
  %cs2567 = shl i64 %cz2563, 29
  %vs2568 = shl i64 %vz2564, 28
  %nzor2569 = or i64 %ns2565, %zs2566
  %cvor2570 = or i64 %cs2567, %vs2568
  %nzcv2571 = or i64 %nzor2569, %cvor2570
  %wp2572 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2571, ptr %wp2572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7bc word 0x540007a1
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %fsh2575 = lshr i64 %r2573, 30
  %ftr2576 = trunc i64 %fsh2575 to i1
  %cond2574 = xor i1 %ftr2576, true
  br i1 %cond2574, label %L_80077c8b0, label %L_80077c7c0_ft
L_80077c7c0_ft:
  ; @pc 0x80077c7c0 word 0x910020a5
  %r2577.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2577 = load i64, ptr %r2577.p, align 8, !alias.scope !3, !noalias !4
  %t2578 = add i64 %r2577, 8
  %wp2579 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2578, ptr %wp2579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7c4 word 0x110008c6
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %c2581 = trunc i64 %r2580 to i32
  %t2582 = add i32 %c2581, 2
  %c2583 = zext i32 %t2582 to i64
  %wp2584 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2583, ptr %wp2584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7c8 word 0xf10200bf
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2585 = load i64, ptr %r2585.p, align 8, !alias.scope !3, !noalias !4
  %t2586 = sub i64 %r2585, 128
  %fn2587 = icmp slt i64 %t2586, 0
  %fz2588 = icmp eq i64 %t2586, 0
  %fc2589 = icmp uge i64 %r2585, 128
  %fx12590 = xor i64 %r2585, 128
  %fx22591 = xor i64 %r2585, %t2586
  %fva2592 = and i64 %fx12590, %fx22591
  %fv2593 = icmp slt i64 %fva2592, 0
  %nz2594 = zext i1 %fn2587 to i64
  %zz2595 = zext i1 %fz2588 to i64
  %cz2596 = zext i1 %fc2589 to i64
  %vz2597 = zext i1 %fv2593 to i64
  %ns2598 = shl i64 %nz2594, 31
  %zs2599 = shl i64 %zz2595, 30
  %cs2600 = shl i64 %cz2596, 29
  %vs2601 = shl i64 %vz2597, 28
  %nzor2602 = or i64 %ns2598, %zs2599
  %cvor2603 = or i64 %cs2600, %vs2601
  %nzcv2604 = or i64 %nzor2602, %cvor2603
  %wp2605 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2604, ptr %wp2605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c7cc word 0x54fffe21
  %r2606.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2606 = load i64, ptr %r2606.p, align 8, !alias.scope !3, !noalias !4
  %fsh2608 = lshr i64 %r2606, 30
  %ftr2609 = trunc i64 %fsh2608 to i1
  %cond2607 = xor i1 %ftr2609, true
  br i1 %cond2607, label %L_80077c790, label %L_80077c7d0
L_80077c7d4_ft:
  ; @pc 0x80077c7d4 word 0xf83b7ac2
  %r2613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2613 = load i64, ptr %r2613.p, align 8, !alias.scope !3, !noalias !4
  %r2614.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2614 = load i64, ptr %r2614.p, align 8, !alias.scope !3, !noalias !4
  %t2615 = shl i64 %r2614, 3
  %t2616 = add i64 %r2613, %t2615
  %r2617.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2617 = load i64, ptr %r2617.p, align 8, !alias.scope !3, !noalias !4
  %gmp2618 = inttoptr i64 %t2616 to ptr
  store i64 %r2617, ptr %gmp2618, align 1, !alias.scope !4, !noalias !3
  br label %L_80077c7d8
L_80077c7e0_ft:
  ; @pc 0x80077c7e0 word 0xaa1b03ef
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %t2627 = or i64 0, %r2626
  %wp2628 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2627, ptr %wp2628, align 8, !alias.scope !3, !noalias !4
  br label %L_80077c7e4
L_80077c894_ft:
  ; @pc 0x80077c894 word 0x2a1f03e9
  %t2823 = or i32 0, 0
  %c2824 = zext i32 %t2823 to i64
  %wp2825 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2824, ptr %wp2825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c898 word 0xaa1f03ea
  %t2826 = or i64 0, 0
  %wp2827 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2826, ptr %wp2827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c89c word 0x14000079
  br label %L_80077ca80
L_80077c8b8_ft:
  ; @pc 0x80077c8b8 word 0x17ffffc8
  br label %L_80077c7d8
L_80077c8cc_unreach:
  ; @pc 0x80077c8cc word 0xd503201f
  br label %L_80077c8d0
L_80077c8f4_ft:
  ; @pc 0x80077c8f4 word 0xf85c83a9
  %r2899.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2899 = load i64, ptr %r2899.p, align 8, !alias.scope !3, !noalias !4
  %t2900 = add i64 %r2899, -56
  %gmp2901 = inttoptr i64 %t2900 to ptr
  %gml2902 = load i64, ptr %gmp2901, align 1, !alias.scope !4, !noalias !3
  %wp2903 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2902, ptr %wp2903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8f8 word 0xdac00d29
  %r2904.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2904 = load i64, ptr %r2904.p, align 8, !alias.scope !3, !noalias !4
  %bsw2905 = call i64 @llvm.bswap.i64(i64 %r2904)
  %wp2906 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw2905, ptr %wp2906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c8fc word 0xf940110a
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %t2908 = add i64 %r2907, 32
  %gmp2909 = inttoptr i64 %t2908 to ptr
  %gml2910 = load i64, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  %wp2911 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2910, ptr %wp2911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c900 word 0xdac00d4a
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %bsw2913 = call i64 @llvm.bswap.i64(i64 %r2912)
  %wp2914 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw2913, ptr %wp2914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c904 word 0xeb0a013f
  %r2915.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2915 = load i64, ptr %r2915.p, align 8, !alias.scope !3, !noalias !4
  %r2916.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2916 = load i64, ptr %r2916.p, align 8, !alias.scope !3, !noalias !4
  %t2917 = sub i64 %r2915, %r2916
  %fn2918 = icmp slt i64 %t2917, 0
  %fz2919 = icmp eq i64 %t2917, 0
  %fc2920 = icmp uge i64 %r2915, %r2916
  %fx12921 = xor i64 %r2915, %r2916
  %fx22922 = xor i64 %r2915, %t2917
  %fva2923 = and i64 %fx12921, %fx22922
  %fv2924 = icmp slt i64 %fva2923, 0
  %nz2925 = zext i1 %fn2918 to i64
  %zz2926 = zext i1 %fz2919 to i64
  %cz2927 = zext i1 %fc2920 to i64
  %vz2928 = zext i1 %fv2924 to i64
  %ns2929 = shl i64 %nz2925, 31
  %zs2930 = shl i64 %zz2926, 30
  %cs2931 = shl i64 %cz2927, 29
  %vs2932 = shl i64 %vz2928, 28
  %nzor2933 = or i64 %ns2929, %zs2930
  %cvor2934 = or i64 %cs2931, %vs2932
  %nzcv2935 = or i64 %nzor2933, %cvor2934
  %wp2936 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2935, ptr %wp2936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c908 word 0x54000341
  %r2937.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2937 = load i64, ptr %r2937.p, align 8, !alias.scope !3, !noalias !4
  %fsh2939 = lshr i64 %r2937, 30
  %ftr2940 = trunc i64 %fsh2939 to i1
  %cond2938 = xor i1 %ftr2940, true
  br i1 %cond2938, label %L_80077c970, label %L_80077c90c_ft
L_80077c90c_ft:
  ; @pc 0x80077c90c word 0xf85d03a9
  %r2941.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2941 = load i64, ptr %r2941.p, align 8, !alias.scope !3, !noalias !4
  %t2942 = add i64 %r2941, -48
  %gmp2943 = inttoptr i64 %t2942 to ptr
  %gml2944 = load i64, ptr %gmp2943, align 1, !alias.scope !4, !noalias !3
  %wp2945 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2944, ptr %wp2945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c910 word 0xdac00d29
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %bsw2947 = call i64 @llvm.bswap.i64(i64 %r2946)
  %wp2948 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw2947, ptr %wp2948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c914 word 0xf940150a
  %r2949.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2949 = load i64, ptr %r2949.p, align 8, !alias.scope !3, !noalias !4
  %t2950 = add i64 %r2949, 40
  %gmp2951 = inttoptr i64 %t2950 to ptr
  %gml2952 = load i64, ptr %gmp2951, align 1, !alias.scope !4, !noalias !3
  %wp2953 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2952, ptr %wp2953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c918 word 0xdac00d4a
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %bsw2955 = call i64 @llvm.bswap.i64(i64 %r2954)
  %wp2956 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw2955, ptr %wp2956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c91c word 0xeb0a013f
  %r2957.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2957 = load i64, ptr %r2957.p, align 8, !alias.scope !3, !noalias !4
  %r2958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2958 = load i64, ptr %r2958.p, align 8, !alias.scope !3, !noalias !4
  %t2959 = sub i64 %r2957, %r2958
  %fn2960 = icmp slt i64 %t2959, 0
  %fz2961 = icmp eq i64 %t2959, 0
  %fc2962 = icmp uge i64 %r2957, %r2958
  %fx12963 = xor i64 %r2957, %r2958
  %fx22964 = xor i64 %r2957, %t2959
  %fva2965 = and i64 %fx12963, %fx22964
  %fv2966 = icmp slt i64 %fva2965, 0
  %nz2967 = zext i1 %fn2960 to i64
  %zz2968 = zext i1 %fz2961 to i64
  %cz2969 = zext i1 %fc2962 to i64
  %vz2970 = zext i1 %fv2966 to i64
  %ns2971 = shl i64 %nz2967, 31
  %zs2972 = shl i64 %zz2968, 30
  %cs2973 = shl i64 %cz2969, 29
  %vs2974 = shl i64 %vz2970, 28
  %nzor2975 = or i64 %ns2971, %zs2972
  %cvor2976 = or i64 %cs2973, %vs2974
  %nzcv2977 = or i64 %nzor2975, %cvor2976
  %wp2978 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2977, ptr %wp2978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c920 word 0x54000281
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %fsh2981 = lshr i64 %r2979, 30
  %ftr2982 = trunc i64 %fsh2981 to i1
  %cond2980 = xor i1 %ftr2982, true
  br i1 %cond2980, label %L_80077c970, label %L_80077c924_ft
L_80077c924_ft:
  ; @pc 0x80077c924 word 0xf85d83a9
  %r2983.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2983 = load i64, ptr %r2983.p, align 8, !alias.scope !3, !noalias !4
  %t2984 = add i64 %r2983, -40
  %gmp2985 = inttoptr i64 %t2984 to ptr
  %gml2986 = load i64, ptr %gmp2985, align 1, !alias.scope !4, !noalias !3
  %wp2987 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2986, ptr %wp2987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c928 word 0xdac00d29
  %r2988.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2988 = load i64, ptr %r2988.p, align 8, !alias.scope !3, !noalias !4
  %bsw2989 = call i64 @llvm.bswap.i64(i64 %r2988)
  %wp2990 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw2989, ptr %wp2990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c92c word 0xf940190a
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %t2992 = add i64 %r2991, 48
  %gmp2993 = inttoptr i64 %t2992 to ptr
  %gml2994 = load i64, ptr %gmp2993, align 1, !alias.scope !4, !noalias !3
  %wp2995 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2994, ptr %wp2995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c930 word 0xdac00d4a
  %r2996.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2996 = load i64, ptr %r2996.p, align 8, !alias.scope !3, !noalias !4
  %bsw2997 = call i64 @llvm.bswap.i64(i64 %r2996)
  %wp2998 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw2997, ptr %wp2998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c934 word 0xeb0a013f
  %r2999.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2999 = load i64, ptr %r2999.p, align 8, !alias.scope !3, !noalias !4
  %r3000.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3000 = load i64, ptr %r3000.p, align 8, !alias.scope !3, !noalias !4
  %t3001 = sub i64 %r2999, %r3000
  %fn3002 = icmp slt i64 %t3001, 0
  %fz3003 = icmp eq i64 %t3001, 0
  %fc3004 = icmp uge i64 %r2999, %r3000
  %fx13005 = xor i64 %r2999, %r3000
  %fx23006 = xor i64 %r2999, %t3001
  %fva3007 = and i64 %fx13005, %fx23006
  %fv3008 = icmp slt i64 %fva3007, 0
  %nz3009 = zext i1 %fn3002 to i64
  %zz3010 = zext i1 %fz3003 to i64
  %cz3011 = zext i1 %fc3004 to i64
  %vz3012 = zext i1 %fv3008 to i64
  %ns3013 = shl i64 %nz3009, 31
  %zs3014 = shl i64 %zz3010, 30
  %cs3015 = shl i64 %cz3011, 29
  %vs3016 = shl i64 %vz3012, 28
  %nzor3017 = or i64 %ns3013, %zs3014
  %cvor3018 = or i64 %cs3015, %vs3016
  %nzcv3019 = or i64 %nzor3017, %cvor3018
  %wp3020 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3019, ptr %wp3020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c938 word 0x540001c1
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %fsh3023 = lshr i64 %r3021, 30
  %ftr3024 = trunc i64 %fsh3023 to i1
  %cond3022 = xor i1 %ftr3024, true
  br i1 %cond3022, label %L_80077c970, label %L_80077c93c_ft
L_80077c93c_ft:
  ; @pc 0x80077c93c word 0xf85e03a9
  %r3025.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3025 = load i64, ptr %r3025.p, align 8, !alias.scope !3, !noalias !4
  %t3026 = add i64 %r3025, -32
  %gmp3027 = inttoptr i64 %t3026 to ptr
  %gml3028 = load i64, ptr %gmp3027, align 1, !alias.scope !4, !noalias !3
  %wp3029 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3028, ptr %wp3029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c940 word 0xdac00d29
  %r3030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3030 = load i64, ptr %r3030.p, align 8, !alias.scope !3, !noalias !4
  %bsw3031 = call i64 @llvm.bswap.i64(i64 %r3030)
  %wp3032 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3031, ptr %wp3032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c944 word 0xf9401d0a
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %t3034 = add i64 %r3033, 56
  %gmp3035 = inttoptr i64 %t3034 to ptr
  %gml3036 = load i64, ptr %gmp3035, align 1, !alias.scope !4, !noalias !3
  %wp3037 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3036, ptr %wp3037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c948 word 0xdac00d4a
  %r3038.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3038 = load i64, ptr %r3038.p, align 8, !alias.scope !3, !noalias !4
  %bsw3039 = call i64 @llvm.bswap.i64(i64 %r3038)
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c94c word 0xeb0a013f
  %r3041.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3041 = load i64, ptr %r3041.p, align 8, !alias.scope !3, !noalias !4
  %r3042.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3042 = load i64, ptr %r3042.p, align 8, !alias.scope !3, !noalias !4
  %t3043 = sub i64 %r3041, %r3042
  %fn3044 = icmp slt i64 %t3043, 0
  %fz3045 = icmp eq i64 %t3043, 0
  %fc3046 = icmp uge i64 %r3041, %r3042
  %fx13047 = xor i64 %r3041, %r3042
  %fx23048 = xor i64 %r3041, %t3043
  %fva3049 = and i64 %fx13047, %fx23048
  %fv3050 = icmp slt i64 %fva3049, 0
  %nz3051 = zext i1 %fn3044 to i64
  %zz3052 = zext i1 %fz3045 to i64
  %cz3053 = zext i1 %fc3046 to i64
  %vz3054 = zext i1 %fv3050 to i64
  %ns3055 = shl i64 %nz3051, 31
  %zs3056 = shl i64 %zz3052, 30
  %cs3057 = shl i64 %cz3053, 29
  %vs3058 = shl i64 %vz3054, 28
  %nzor3059 = or i64 %ns3055, %zs3056
  %cvor3060 = or i64 %cs3057, %vs3058
  %nzcv3061 = or i64 %nzor3059, %cvor3060
  %wp3062 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3061, ptr %wp3062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c950 word 0x54000101
  %r3063.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3063 = load i64, ptr %r3063.p, align 8, !alias.scope !3, !noalias !4
  %fsh3065 = lshr i64 %r3063, 30
  %ftr3066 = trunc i64 %fsh3065 to i1
  %cond3064 = xor i1 %ftr3066, true
  br i1 %cond3064, label %L_80077c970, label %L_80077c954_ft
L_80077c954_ft:
  ; @pc 0x80077c954 word 0xf85e83a9
  %r3067.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3067 = load i64, ptr %r3067.p, align 8, !alias.scope !3, !noalias !4
  %t3068 = add i64 %r3067, -24
  %gmp3069 = inttoptr i64 %t3068 to ptr
  %gml3070 = load i64, ptr %gmp3069, align 1, !alias.scope !4, !noalias !3
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c958 word 0xdac00d29
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %bsw3073 = call i64 @llvm.bswap.i64(i64 %r3072)
  %wp3074 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3073, ptr %wp3074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c95c word 0xf940210a
  %r3075.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3075 = load i64, ptr %r3075.p, align 8, !alias.scope !3, !noalias !4
  %t3076 = add i64 %r3075, 64
  %gmp3077 = inttoptr i64 %t3076 to ptr
  %gml3078 = load i64, ptr %gmp3077, align 1, !alias.scope !4, !noalias !3
  %wp3079 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3078, ptr %wp3079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c960 word 0xdac00d4a
  %r3080.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3080 = load i64, ptr %r3080.p, align 8, !alias.scope !3, !noalias !4
  %bsw3081 = call i64 @llvm.bswap.i64(i64 %r3080)
  %wp3082 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3081, ptr %wp3082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c964 word 0xeb0a013f
  %r3083.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3083 = load i64, ptr %r3083.p, align 8, !alias.scope !3, !noalias !4
  %r3084.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3084 = load i64, ptr %r3084.p, align 8, !alias.scope !3, !noalias !4
  %t3085 = sub i64 %r3083, %r3084
  %fn3086 = icmp slt i64 %t3085, 0
  %fz3087 = icmp eq i64 %t3085, 0
  %fc3088 = icmp uge i64 %r3083, %r3084
  %fx13089 = xor i64 %r3083, %r3084
  %fx23090 = xor i64 %r3083, %t3085
  %fva3091 = and i64 %fx13089, %fx23090
  %fv3092 = icmp slt i64 %fva3091, 0
  %nz3093 = zext i1 %fn3086 to i64
  %zz3094 = zext i1 %fz3087 to i64
  %cz3095 = zext i1 %fc3088 to i64
  %vz3096 = zext i1 %fv3092 to i64
  %ns3097 = shl i64 %nz3093, 31
  %zs3098 = shl i64 %zz3094, 30
  %cs3099 = shl i64 %cz3095, 29
  %vs3100 = shl i64 %vz3096, 28
  %nzor3101 = or i64 %ns3097, %zs3098
  %cvor3102 = or i64 %cs3099, %vs3100
  %nzcv3103 = or i64 %nzor3101, %cvor3102
  %wp3104 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3103, ptr %wp3104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c968 word 0x540006c0
  %r3105.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3105 = load i64, ptr %r3105.p, align 8, !alias.scope !3, !noalias !4
  %fsh3107 = lshr i64 %r3105, 30
  %cond3106 = trunc i64 %fsh3107 to i1
  br i1 %cond3106, label %L_80077ca40, label %L_80077c96c_ft
L_80077c96c_ft:
  ; @pc 0x80077c96c word 0xd503201f
  br label %L_80077c970
L_80077c97c_ft:
  ; @pc 0x80077c97c word 0xf9400d09
  %r3145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3145 = load i64, ptr %r3145.p, align 8, !alias.scope !3, !noalias !4
  %t3146 = add i64 %r3145, 24
  %gmp3147 = inttoptr i64 %t3146 to ptr
  %gml3148 = load i64, ptr %gmp3147, align 1, !alias.scope !4, !noalias !3
  %wp3149 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3148, ptr %wp3149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c980 word 0xdac00d29
  %r3150.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3150 = load i64, ptr %r3150.p, align 8, !alias.scope !3, !noalias !4
  %bsw3151 = call i64 @llvm.bswap.i64(i64 %r3150)
  %wp3152 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3151, ptr %wp3152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c984 word 0xf85c03aa
  %r3153.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3153 = load i64, ptr %r3153.p, align 8, !alias.scope !3, !noalias !4
  %t3154 = add i64 %r3153, -64
  %gmp3155 = inttoptr i64 %t3154 to ptr
  %gml3156 = load i64, ptr %gmp3155, align 1, !alias.scope !4, !noalias !3
  %wp3157 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3156, ptr %wp3157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c988 word 0xdac00d4a
  %r3158.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3158 = load i64, ptr %r3158.p, align 8, !alias.scope !3, !noalias !4
  %bsw3159 = call i64 @llvm.bswap.i64(i64 %r3158)
  %wp3160 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3159, ptr %wp3160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c98c word 0xeb0a013f
  %r3161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3161 = load i64, ptr %r3161.p, align 8, !alias.scope !3, !noalias !4
  %r3162.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3162 = load i64, ptr %r3162.p, align 8, !alias.scope !3, !noalias !4
  %t3163 = sub i64 %r3161, %r3162
  %fn3164 = icmp slt i64 %t3163, 0
  %fz3165 = icmp eq i64 %t3163, 0
  %fc3166 = icmp uge i64 %r3161, %r3162
  %fx13167 = xor i64 %r3161, %r3162
  %fx23168 = xor i64 %r3161, %t3163
  %fva3169 = and i64 %fx13167, %fx23168
  %fv3170 = icmp slt i64 %fva3169, 0
  %nz3171 = zext i1 %fn3164 to i64
  %zz3172 = zext i1 %fz3165 to i64
  %cz3173 = zext i1 %fc3166 to i64
  %vz3174 = zext i1 %fv3170 to i64
  %ns3175 = shl i64 %nz3171, 31
  %zs3176 = shl i64 %zz3172, 30
  %cs3177 = shl i64 %cz3173, 29
  %vs3178 = shl i64 %vz3174, 28
  %nzor3179 = or i64 %ns3175, %zs3176
  %cvor3180 = or i64 %cs3177, %vs3178
  %nzcv3181 = or i64 %nzor3179, %cvor3180
  %wp3182 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3181, ptr %wp3182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c990 word 0x54000401
  %r3183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3183 = load i64, ptr %r3183.p, align 8, !alias.scope !3, !noalias !4
  %fsh3185 = lshr i64 %r3183, 30
  %ftr3186 = trunc i64 %fsh3185 to i1
  %cond3184 = xor i1 %ftr3186, true
  br i1 %cond3184, label %L_80077ca10, label %L_80077c994_ft
L_80077c994_ft:
  ; @pc 0x80077c994 word 0xf9401109
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %t3188 = add i64 %r3187, 32
  %gmp3189 = inttoptr i64 %t3188 to ptr
  %gml3190 = load i64, ptr %gmp3189, align 1, !alias.scope !4, !noalias !3
  %wp3191 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3190, ptr %wp3191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c998 word 0xdac00d29
  %r3192.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3192 = load i64, ptr %r3192.p, align 8, !alias.scope !3, !noalias !4
  %bsw3193 = call i64 @llvm.bswap.i64(i64 %r3192)
  %wp3194 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3193, ptr %wp3194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c99c word 0xf85c83aa
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %t3196 = add i64 %r3195, -56
  %gmp3197 = inttoptr i64 %t3196 to ptr
  %gml3198 = load i64, ptr %gmp3197, align 1, !alias.scope !4, !noalias !3
  %wp3199 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3198, ptr %wp3199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9a0 word 0xdac00d4a
  %r3200.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3200 = load i64, ptr %r3200.p, align 8, !alias.scope !3, !noalias !4
  %bsw3201 = call i64 @llvm.bswap.i64(i64 %r3200)
  %wp3202 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3201, ptr %wp3202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9a4 word 0xeb0a013f
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %r3204.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3204 = load i64, ptr %r3204.p, align 8, !alias.scope !3, !noalias !4
  %t3205 = sub i64 %r3203, %r3204
  %fn3206 = icmp slt i64 %t3205, 0
  %fz3207 = icmp eq i64 %t3205, 0
  %fc3208 = icmp uge i64 %r3203, %r3204
  %fx13209 = xor i64 %r3203, %r3204
  %fx23210 = xor i64 %r3203, %t3205
  %fva3211 = and i64 %fx13209, %fx23210
  %fv3212 = icmp slt i64 %fva3211, 0
  %nz3213 = zext i1 %fn3206 to i64
  %zz3214 = zext i1 %fz3207 to i64
  %cz3215 = zext i1 %fc3208 to i64
  %vz3216 = zext i1 %fv3212 to i64
  %ns3217 = shl i64 %nz3213, 31
  %zs3218 = shl i64 %zz3214, 30
  %cs3219 = shl i64 %cz3215, 29
  %vs3220 = shl i64 %vz3216, 28
  %nzor3221 = or i64 %ns3217, %zs3218
  %cvor3222 = or i64 %cs3219, %vs3220
  %nzcv3223 = or i64 %nzor3221, %cvor3222
  %wp3224 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3223, ptr %wp3224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9a8 word 0x54000341
  %r3225.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3225 = load i64, ptr %r3225.p, align 8, !alias.scope !3, !noalias !4
  %fsh3227 = lshr i64 %r3225, 30
  %ftr3228 = trunc i64 %fsh3227 to i1
  %cond3226 = xor i1 %ftr3228, true
  br i1 %cond3226, label %L_80077ca10, label %L_80077c9ac_ft
L_80077c9ac_ft:
  ; @pc 0x80077c9ac word 0xf9401509
  %r3229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3229 = load i64, ptr %r3229.p, align 8, !alias.scope !3, !noalias !4
  %t3230 = add i64 %r3229, 40
  %gmp3231 = inttoptr i64 %t3230 to ptr
  %gml3232 = load i64, ptr %gmp3231, align 1, !alias.scope !4, !noalias !3
  %wp3233 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3232, ptr %wp3233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9b0 word 0xdac00d29
  %r3234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3234 = load i64, ptr %r3234.p, align 8, !alias.scope !3, !noalias !4
  %bsw3235 = call i64 @llvm.bswap.i64(i64 %r3234)
  %wp3236 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3235, ptr %wp3236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9b4 word 0xf85d03aa
  %r3237.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3237 = load i64, ptr %r3237.p, align 8, !alias.scope !3, !noalias !4
  %t3238 = add i64 %r3237, -48
  %gmp3239 = inttoptr i64 %t3238 to ptr
  %gml3240 = load i64, ptr %gmp3239, align 1, !alias.scope !4, !noalias !3
  %wp3241 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3240, ptr %wp3241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9b8 word 0xdac00d4a
  %r3242.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3242 = load i64, ptr %r3242.p, align 8, !alias.scope !3, !noalias !4
  %bsw3243 = call i64 @llvm.bswap.i64(i64 %r3242)
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9bc word 0xeb0a013f
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %t3247 = sub i64 %r3245, %r3246
  %fn3248 = icmp slt i64 %t3247, 0
  %fz3249 = icmp eq i64 %t3247, 0
  %fc3250 = icmp uge i64 %r3245, %r3246
  %fx13251 = xor i64 %r3245, %r3246
  %fx23252 = xor i64 %r3245, %t3247
  %fva3253 = and i64 %fx13251, %fx23252
  %fv3254 = icmp slt i64 %fva3253, 0
  %nz3255 = zext i1 %fn3248 to i64
  %zz3256 = zext i1 %fz3249 to i64
  %cz3257 = zext i1 %fc3250 to i64
  %vz3258 = zext i1 %fv3254 to i64
  %ns3259 = shl i64 %nz3255, 31
  %zs3260 = shl i64 %zz3256, 30
  %cs3261 = shl i64 %cz3257, 29
  %vs3262 = shl i64 %vz3258, 28
  %nzor3263 = or i64 %ns3259, %zs3260
  %cvor3264 = or i64 %cs3261, %vs3262
  %nzcv3265 = or i64 %nzor3263, %cvor3264
  %wp3266 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3265, ptr %wp3266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9c0 word 0x54000281
  %r3267.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3267 = load i64, ptr %r3267.p, align 8, !alias.scope !3, !noalias !4
  %fsh3269 = lshr i64 %r3267, 30
  %ftr3270 = trunc i64 %fsh3269 to i1
  %cond3268 = xor i1 %ftr3270, true
  br i1 %cond3268, label %L_80077ca10, label %L_80077c9c4_ft
L_80077c9c4_ft:
  ; @pc 0x80077c9c4 word 0xf9401909
  %r3271.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3271 = load i64, ptr %r3271.p, align 8, !alias.scope !3, !noalias !4
  %t3272 = add i64 %r3271, 48
  %gmp3273 = inttoptr i64 %t3272 to ptr
  %gml3274 = load i64, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  %wp3275 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3274, ptr %wp3275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9c8 word 0xdac00d29
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %bsw3277 = call i64 @llvm.bswap.i64(i64 %r3276)
  %wp3278 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3277, ptr %wp3278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9cc word 0xf85d83aa
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %t3280 = add i64 %r3279, -40
  %gmp3281 = inttoptr i64 %t3280 to ptr
  %gml3282 = load i64, ptr %gmp3281, align 1, !alias.scope !4, !noalias !3
  %wp3283 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3282, ptr %wp3283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9d0 word 0xdac00d4a
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %bsw3285 = call i64 @llvm.bswap.i64(i64 %r3284)
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3285, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9d4 word 0xeb0a013f
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %t3289 = sub i64 %r3287, %r3288
  %fn3290 = icmp slt i64 %t3289, 0
  %fz3291 = icmp eq i64 %t3289, 0
  %fc3292 = icmp uge i64 %r3287, %r3288
  %fx13293 = xor i64 %r3287, %r3288
  %fx23294 = xor i64 %r3287, %t3289
  %fva3295 = and i64 %fx13293, %fx23294
  %fv3296 = icmp slt i64 %fva3295, 0
  %nz3297 = zext i1 %fn3290 to i64
  %zz3298 = zext i1 %fz3291 to i64
  %cz3299 = zext i1 %fc3292 to i64
  %vz3300 = zext i1 %fv3296 to i64
  %ns3301 = shl i64 %nz3297, 31
  %zs3302 = shl i64 %zz3298, 30
  %cs3303 = shl i64 %cz3299, 29
  %vs3304 = shl i64 %vz3300, 28
  %nzor3305 = or i64 %ns3301, %zs3302
  %cvor3306 = or i64 %cs3303, %vs3304
  %nzcv3307 = or i64 %nzor3305, %cvor3306
  %wp3308 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3307, ptr %wp3308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9d8 word 0x540001c1
  %r3309.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3309 = load i64, ptr %r3309.p, align 8, !alias.scope !3, !noalias !4
  %fsh3311 = lshr i64 %r3309, 30
  %ftr3312 = trunc i64 %fsh3311 to i1
  %cond3310 = xor i1 %ftr3312, true
  br i1 %cond3310, label %L_80077ca10, label %L_80077c9dc_ft
L_80077c9dc_ft:
  ; @pc 0x80077c9dc word 0xf9401d09
  %r3313.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3313 = load i64, ptr %r3313.p, align 8, !alias.scope !3, !noalias !4
  %t3314 = add i64 %r3313, 56
  %gmp3315 = inttoptr i64 %t3314 to ptr
  %gml3316 = load i64, ptr %gmp3315, align 1, !alias.scope !4, !noalias !3
  %wp3317 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3316, ptr %wp3317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9e0 word 0xdac00d29
  %r3318.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3318 = load i64, ptr %r3318.p, align 8, !alias.scope !3, !noalias !4
  %bsw3319 = call i64 @llvm.bswap.i64(i64 %r3318)
  %wp3320 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3319, ptr %wp3320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9e4 word 0xf85e03aa
  %r3321.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3321 = load i64, ptr %r3321.p, align 8, !alias.scope !3, !noalias !4
  %t3322 = add i64 %r3321, -32
  %gmp3323 = inttoptr i64 %t3322 to ptr
  %gml3324 = load i64, ptr %gmp3323, align 1, !alias.scope !4, !noalias !3
  %wp3325 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3324, ptr %wp3325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9e8 word 0xdac00d4a
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %bsw3327 = call i64 @llvm.bswap.i64(i64 %r3326)
  %wp3328 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3327, ptr %wp3328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9ec word 0xeb0a013f
  %r3329.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3329 = load i64, ptr %r3329.p, align 8, !alias.scope !3, !noalias !4
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %t3331 = sub i64 %r3329, %r3330
  %fn3332 = icmp slt i64 %t3331, 0
  %fz3333 = icmp eq i64 %t3331, 0
  %fc3334 = icmp uge i64 %r3329, %r3330
  %fx13335 = xor i64 %r3329, %r3330
  %fx23336 = xor i64 %r3329, %t3331
  %fva3337 = and i64 %fx13335, %fx23336
  %fv3338 = icmp slt i64 %fva3337, 0
  %nz3339 = zext i1 %fn3332 to i64
  %zz3340 = zext i1 %fz3333 to i64
  %cz3341 = zext i1 %fc3334 to i64
  %vz3342 = zext i1 %fv3338 to i64
  %ns3343 = shl i64 %nz3339, 31
  %zs3344 = shl i64 %zz3340, 30
  %cs3345 = shl i64 %cz3341, 29
  %vs3346 = shl i64 %vz3342, 28
  %nzor3347 = or i64 %ns3343, %zs3344
  %cvor3348 = or i64 %cs3345, %vs3346
  %nzcv3349 = or i64 %nzor3347, %cvor3348
  %wp3350 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3349, ptr %wp3350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9f0 word 0x54000101
  %r3351.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3351 = load i64, ptr %r3351.p, align 8, !alias.scope !3, !noalias !4
  %fsh3353 = lshr i64 %r3351, 30
  %ftr3354 = trunc i64 %fsh3353 to i1
  %cond3352 = xor i1 %ftr3354, true
  br i1 %cond3352, label %L_80077ca10, label %L_80077c9f4_ft
L_80077c9f4_ft:
  ; @pc 0x80077c9f4 word 0xf9402109
  %r3355.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3355 = load i64, ptr %r3355.p, align 8, !alias.scope !3, !noalias !4
  %t3356 = add i64 %r3355, 64
  %gmp3357 = inttoptr i64 %t3356 to ptr
  %gml3358 = load i64, ptr %gmp3357, align 1, !alias.scope !4, !noalias !3
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3358, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9f8 word 0xdac00d29
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %bsw3361 = call i64 @llvm.bswap.i64(i64 %r3360)
  %wp3362 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %bsw3361, ptr %wp3362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c9fc word 0xf85e83aa
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %t3364 = add i64 %r3363, -24
  %gmp3365 = inttoptr i64 %t3364 to ptr
  %gml3366 = load i64, ptr %gmp3365, align 1, !alias.scope !4, !noalias !3
  %wp3367 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3366, ptr %wp3367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca00 word 0xdac00d4a
  %r3368.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3368 = load i64, ptr %r3368.p, align 8, !alias.scope !3, !noalias !4
  %bsw3369 = call i64 @llvm.bswap.i64(i64 %r3368)
  %wp3370 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %bsw3369, ptr %wp3370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca04 word 0xeb0a013f
  %r3371.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3371 = load i64, ptr %r3371.p, align 8, !alias.scope !3, !noalias !4
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %t3373 = sub i64 %r3371, %r3372
  %fn3374 = icmp slt i64 %t3373, 0
  %fz3375 = icmp eq i64 %t3373, 0
  %fc3376 = icmp uge i64 %r3371, %r3372
  %fx13377 = xor i64 %r3371, %r3372
  %fx23378 = xor i64 %r3371, %t3373
  %fva3379 = and i64 %fx13377, %fx23378
  %fv3380 = icmp slt i64 %fva3379, 0
  %nz3381 = zext i1 %fn3374 to i64
  %zz3382 = zext i1 %fz3375 to i64
  %cz3383 = zext i1 %fc3376 to i64
  %vz3384 = zext i1 %fv3380 to i64
  %ns3385 = shl i64 %nz3381, 31
  %zs3386 = shl i64 %zz3382, 30
  %cs3387 = shl i64 %cz3383, 29
  %vs3388 = shl i64 %vz3384, 28
  %nzor3389 = or i64 %ns3385, %zs3386
  %cvor3390 = or i64 %cs3387, %vs3388
  %nzcv3391 = or i64 %nzor3389, %cvor3390
  %wp3392 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3391, ptr %wp3392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca08 word 0x54000200
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %fsh3395 = lshr i64 %r3393, 30
  %cond3394 = trunc i64 %fsh3395 to i1
  br i1 %cond3394, label %L_80077ca48, label %L_80077ca0c_ft
L_80077ca0c_ft:
  ; @pc 0x80077ca0c word 0xd503201f
  br label %L_80077ca10
L_80077ca1c_ft:
  ; @pc 0x80077ca1c word 0xd1002109
  %r3433.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3433 = load i64, ptr %r3433.p, align 8, !alias.scope !3, !noalias !4
  %t3434 = sub i64 %r3433, 8
  %wp3435 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3434, ptr %wp3435, align 8, !alias.scope !3, !noalias !4
  br label %L_80077ca20
L_80077ca2c_ft:
  ; @pc 0x80077ca2c word 0xa906a1ff
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %t3447 = add i64 %r3446, 104
  %t3448 = add i64 %t3447, 8
  %gmp3449 = inttoptr i64 %t3447 to ptr
  store i64 0, ptr %gmp3449, align 1, !alias.scope !4, !noalias !3
  %r3450.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3450 = load i64, ptr %r3450.p, align 8, !alias.scope !3, !noalias !4
  %gmp3451 = inttoptr i64 %t3448 to ptr
  store i64 %r3450, ptr %gmp3451, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ca30 word 0xf900350f
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %t3453 = add i64 %r3452, 104
  %r3454.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3454 = load i64, ptr %r3454.p, align 8, !alias.scope !3, !noalias !4
  %gmp3455 = inttoptr i64 %t3453 to ptr
  store i64 %r3454, ptr %gmp3455, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077ca34 word 0xf87b7ac8
  %r3456.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3456 = load i64, ptr %r3456.p, align 8, !alias.scope !3, !noalias !4
  %r3457.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3457 = load i64, ptr %r3457.p, align 8, !alias.scope !3, !noalias !4
  %t3458 = shl i64 %r3457, 3
  %t3459 = add i64 %r3456, %t3458
  %gmp3460 = inttoptr i64 %t3459 to ptr
  %gml3461 = load i64, ptr %gmp3460, align 1, !alias.scope !4, !noalias !3
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3461, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ca38 word 0xb5ffc5c8
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %cmp3464 = icmp ne i64 %r3463, 0
  br i1 %cmp3464, label %L_80077c2f0, label %L_80077ca3c_ft
L_80077ca3c_ft:
  ; @pc 0x80077ca3c word 0x14000071
  br label %L_80077cc00
L_80077ca9c_ft:
  ; @pc 0x80077ca9c word 0xf940060b
  %r3615.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3615 = load i64, ptr %r3615.p, align 8, !alias.scope !3, !noalias !4
  %t3616 = add i64 %r3615, 8
  %gmp3617 = inttoptr i64 %t3616 to ptr
  %gml3618 = load i64, ptr %gmp3617, align 1, !alias.scope !4, !noalias !3
  %wp3619 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3618, ptr %wp3619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caa0 word 0xdac00d6b
  %r3620.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3620 = load i64, ptr %r3620.p, align 8, !alias.scope !3, !noalias !4
  %bsw3621 = call i64 @llvm.bswap.i64(i64 %r3620)
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caa4 word 0xf940110c
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %t3624 = add i64 %r3623, 32
  %gmp3625 = inttoptr i64 %t3624 to ptr
  %gml3626 = load i64, ptr %gmp3625, align 1, !alias.scope !4, !noalias !3
  %wp3627 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3626, ptr %wp3627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caa8 word 0xdac00d8c
  %r3628.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3628 = load i64, ptr %r3628.p, align 8, !alias.scope !3, !noalias !4
  %bsw3629 = call i64 @llvm.bswap.i64(i64 %r3628)
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caac word 0xeb0c017f
  %r3631.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3631 = load i64, ptr %r3631.p, align 8, !alias.scope !3, !noalias !4
  %r3632.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3632 = load i64, ptr %r3632.p, align 8, !alias.scope !3, !noalias !4
  %t3633 = sub i64 %r3631, %r3632
  %fn3634 = icmp slt i64 %t3633, 0
  %fz3635 = icmp eq i64 %t3633, 0
  %fc3636 = icmp uge i64 %r3631, %r3632
  %fx13637 = xor i64 %r3631, %r3632
  %fx23638 = xor i64 %r3631, %t3633
  %fva3639 = and i64 %fx13637, %fx23638
  %fv3640 = icmp slt i64 %fva3639, 0
  %nz3641 = zext i1 %fn3634 to i64
  %zz3642 = zext i1 %fz3635 to i64
  %cz3643 = zext i1 %fc3636 to i64
  %vz3644 = zext i1 %fv3640 to i64
  %ns3645 = shl i64 %nz3641, 31
  %zs3646 = shl i64 %zz3642, 30
  %cs3647 = shl i64 %cz3643, 29
  %vs3648 = shl i64 %vz3644, 28
  %nzor3649 = or i64 %ns3645, %zs3646
  %cvor3650 = or i64 %cs3647, %vs3648
  %nzcv3651 = or i64 %nzor3649, %cvor3650
  %wp3652 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3651, ptr %wp3652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cab0 word 0x54000881
  %r3653.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3653 = load i64, ptr %r3653.p, align 8, !alias.scope !3, !noalias !4
  %fsh3655 = lshr i64 %r3653, 30
  %ftr3656 = trunc i64 %fsh3655 to i1
  %cond3654 = xor i1 %ftr3656, true
  br i1 %cond3654, label %L_80077cbc0, label %L_80077cab4_ft
L_80077cab4_ft:
  ; @pc 0x80077cab4 word 0xf9400a0b
  %r3657.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3657 = load i64, ptr %r3657.p, align 8, !alias.scope !3, !noalias !4
  %t3658 = add i64 %r3657, 16
  %gmp3659 = inttoptr i64 %t3658 to ptr
  %gml3660 = load i64, ptr %gmp3659, align 1, !alias.scope !4, !noalias !3
  %wp3661 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3660, ptr %wp3661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cab8 word 0xdac00d6b
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %bsw3663 = call i64 @llvm.bswap.i64(i64 %r3662)
  %wp3664 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3663, ptr %wp3664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cabc word 0xf940150c
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %t3666 = add i64 %r3665, 40
  %gmp3667 = inttoptr i64 %t3666 to ptr
  %gml3668 = load i64, ptr %gmp3667, align 1, !alias.scope !4, !noalias !3
  %wp3669 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3668, ptr %wp3669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cac0 word 0xdac00d8c
  %r3670.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3670 = load i64, ptr %r3670.p, align 8, !alias.scope !3, !noalias !4
  %bsw3671 = call i64 @llvm.bswap.i64(i64 %r3670)
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cac4 word 0xeb0c017f
  %r3673.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3673 = load i64, ptr %r3673.p, align 8, !alias.scope !3, !noalias !4
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %t3675 = sub i64 %r3673, %r3674
  %fn3676 = icmp slt i64 %t3675, 0
  %fz3677 = icmp eq i64 %t3675, 0
  %fc3678 = icmp uge i64 %r3673, %r3674
  %fx13679 = xor i64 %r3673, %r3674
  %fx23680 = xor i64 %r3673, %t3675
  %fva3681 = and i64 %fx13679, %fx23680
  %fv3682 = icmp slt i64 %fva3681, 0
  %nz3683 = zext i1 %fn3676 to i64
  %zz3684 = zext i1 %fz3677 to i64
  %cz3685 = zext i1 %fc3678 to i64
  %vz3686 = zext i1 %fv3682 to i64
  %ns3687 = shl i64 %nz3683, 31
  %zs3688 = shl i64 %zz3684, 30
  %cs3689 = shl i64 %cz3685, 29
  %vs3690 = shl i64 %vz3686, 28
  %nzor3691 = or i64 %ns3687, %zs3688
  %cvor3692 = or i64 %cs3689, %vs3690
  %nzcv3693 = or i64 %nzor3691, %cvor3692
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cac8 word 0x540007c1
  %r3695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3695 = load i64, ptr %r3695.p, align 8, !alias.scope !3, !noalias !4
  %fsh3697 = lshr i64 %r3695, 30
  %ftr3698 = trunc i64 %fsh3697 to i1
  %cond3696 = xor i1 %ftr3698, true
  br i1 %cond3696, label %L_80077cbc0, label %L_80077cacc_ft
L_80077cacc_ft:
  ; @pc 0x80077cacc word 0xf9400e0b
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %t3700 = add i64 %r3699, 24
  %gmp3701 = inttoptr i64 %t3700 to ptr
  %gml3702 = load i64, ptr %gmp3701, align 1, !alias.scope !4, !noalias !3
  %wp3703 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3702, ptr %wp3703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cad0 word 0xdac00d6b
  %r3704.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3704 = load i64, ptr %r3704.p, align 8, !alias.scope !3, !noalias !4
  %bsw3705 = call i64 @llvm.bswap.i64(i64 %r3704)
  %wp3706 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3705, ptr %wp3706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cad4 word 0xf940190c
  %r3707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3707 = load i64, ptr %r3707.p, align 8, !alias.scope !3, !noalias !4
  %t3708 = add i64 %r3707, 48
  %gmp3709 = inttoptr i64 %t3708 to ptr
  %gml3710 = load i64, ptr %gmp3709, align 1, !alias.scope !4, !noalias !3
  %wp3711 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3710, ptr %wp3711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cad8 word 0xdac00d8c
  %r3712.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3712 = load i64, ptr %r3712.p, align 8, !alias.scope !3, !noalias !4
  %bsw3713 = call i64 @llvm.bswap.i64(i64 %r3712)
  %wp3714 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3713, ptr %wp3714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cadc word 0xeb0c017f
  %r3715.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3715 = load i64, ptr %r3715.p, align 8, !alias.scope !3, !noalias !4
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = sub i64 %r3715, %r3716
  %fn3718 = icmp slt i64 %t3717, 0
  %fz3719 = icmp eq i64 %t3717, 0
  %fc3720 = icmp uge i64 %r3715, %r3716
  %fx13721 = xor i64 %r3715, %r3716
  %fx23722 = xor i64 %r3715, %t3717
  %fva3723 = and i64 %fx13721, %fx23722
  %fv3724 = icmp slt i64 %fva3723, 0
  %nz3725 = zext i1 %fn3718 to i64
  %zz3726 = zext i1 %fz3719 to i64
  %cz3727 = zext i1 %fc3720 to i64
  %vz3728 = zext i1 %fv3724 to i64
  %ns3729 = shl i64 %nz3725, 31
  %zs3730 = shl i64 %zz3726, 30
  %cs3731 = shl i64 %cz3727, 29
  %vs3732 = shl i64 %vz3728, 28
  %nzor3733 = or i64 %ns3729, %zs3730
  %cvor3734 = or i64 %cs3731, %vs3732
  %nzcv3735 = or i64 %nzor3733, %cvor3734
  %wp3736 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3735, ptr %wp3736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cae0 word 0x54000701
  %r3737.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3737 = load i64, ptr %r3737.p, align 8, !alias.scope !3, !noalias !4
  %fsh3739 = lshr i64 %r3737, 30
  %ftr3740 = trunc i64 %fsh3739 to i1
  %cond3738 = xor i1 %ftr3740, true
  br i1 %cond3738, label %L_80077cbc0, label %L_80077cae4_ft
L_80077cae4_ft:
  ; @pc 0x80077cae4 word 0xf940120b
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %t3742 = add i64 %r3741, 32
  %gmp3743 = inttoptr i64 %t3742 to ptr
  %gml3744 = load i64, ptr %gmp3743, align 1, !alias.scope !4, !noalias !3
  %wp3745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3744, ptr %wp3745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cae8 word 0xdac00d6b
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %bsw3747 = call i64 @llvm.bswap.i64(i64 %r3746)
  %wp3748 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3747, ptr %wp3748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caec word 0xf9401d0c
  %r3749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3749 = load i64, ptr %r3749.p, align 8, !alias.scope !3, !noalias !4
  %t3750 = add i64 %r3749, 56
  %gmp3751 = inttoptr i64 %t3750 to ptr
  %gml3752 = load i64, ptr %gmp3751, align 1, !alias.scope !4, !noalias !3
  %wp3753 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3752, ptr %wp3753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caf0 word 0xdac00d8c
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %bsw3755 = call i64 @llvm.bswap.i64(i64 %r3754)
  %wp3756 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3755, ptr %wp3756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caf4 word 0xeb0c017f
  %r3757.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3757 = load i64, ptr %r3757.p, align 8, !alias.scope !3, !noalias !4
  %r3758.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3758 = load i64, ptr %r3758.p, align 8, !alias.scope !3, !noalias !4
  %t3759 = sub i64 %r3757, %r3758
  %fn3760 = icmp slt i64 %t3759, 0
  %fz3761 = icmp eq i64 %t3759, 0
  %fc3762 = icmp uge i64 %r3757, %r3758
  %fx13763 = xor i64 %r3757, %r3758
  %fx23764 = xor i64 %r3757, %t3759
  %fva3765 = and i64 %fx13763, %fx23764
  %fv3766 = icmp slt i64 %fva3765, 0
  %nz3767 = zext i1 %fn3760 to i64
  %zz3768 = zext i1 %fz3761 to i64
  %cz3769 = zext i1 %fc3762 to i64
  %vz3770 = zext i1 %fv3766 to i64
  %ns3771 = shl i64 %nz3767, 31
  %zs3772 = shl i64 %zz3768, 30
  %cs3773 = shl i64 %cz3769, 29
  %vs3774 = shl i64 %vz3770, 28
  %nzor3775 = or i64 %ns3771, %zs3772
  %cvor3776 = or i64 %cs3773, %vs3774
  %nzcv3777 = or i64 %nzor3775, %cvor3776
  %wp3778 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3777, ptr %wp3778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077caf8 word 0x54000641
  %r3779.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3779 = load i64, ptr %r3779.p, align 8, !alias.scope !3, !noalias !4
  %fsh3781 = lshr i64 %r3779, 30
  %ftr3782 = trunc i64 %fsh3781 to i1
  %cond3780 = xor i1 %ftr3782, true
  br i1 %cond3780, label %L_80077cbc0, label %L_80077cafc_ft
L_80077cafc_ft:
  ; @pc 0x80077cafc word 0xf940160b
  %r3783.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3783 = load i64, ptr %r3783.p, align 8, !alias.scope !3, !noalias !4
  %t3784 = add i64 %r3783, 40
  %gmp3785 = inttoptr i64 %t3784 to ptr
  %gml3786 = load i64, ptr %gmp3785, align 1, !alias.scope !4, !noalias !3
  %wp3787 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3786, ptr %wp3787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb00 word 0xdac00d6b
  %r3788.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3788 = load i64, ptr %r3788.p, align 8, !alias.scope !3, !noalias !4
  %bsw3789 = call i64 @llvm.bswap.i64(i64 %r3788)
  %wp3790 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %bsw3789, ptr %wp3790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb04 word 0xf940210c
  %r3791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3791 = load i64, ptr %r3791.p, align 8, !alias.scope !3, !noalias !4
  %t3792 = add i64 %r3791, 64
  %gmp3793 = inttoptr i64 %t3792 to ptr
  %gml3794 = load i64, ptr %gmp3793, align 1, !alias.scope !4, !noalias !3
  %wp3795 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3794, ptr %wp3795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb08 word 0xdac00d8c
  %r3796.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3796 = load i64, ptr %r3796.p, align 8, !alias.scope !3, !noalias !4
  %bsw3797 = call i64 @llvm.bswap.i64(i64 %r3796)
  %wp3798 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3797, ptr %wp3798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb0c word 0xeb0c017f
  %r3799.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3799 = load i64, ptr %r3799.p, align 8, !alias.scope !3, !noalias !4
  %r3800.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3800 = load i64, ptr %r3800.p, align 8, !alias.scope !3, !noalias !4
  %t3801 = sub i64 %r3799, %r3800
  %fn3802 = icmp slt i64 %t3801, 0
  %fz3803 = icmp eq i64 %t3801, 0
  %fc3804 = icmp uge i64 %r3799, %r3800
  %fx13805 = xor i64 %r3799, %r3800
  %fx23806 = xor i64 %r3799, %t3801
  %fva3807 = and i64 %fx13805, %fx23806
  %fv3808 = icmp slt i64 %fva3807, 0
  %nz3809 = zext i1 %fn3802 to i64
  %zz3810 = zext i1 %fz3803 to i64
  %cz3811 = zext i1 %fc3804 to i64
  %vz3812 = zext i1 %fv3808 to i64
  %ns3813 = shl i64 %nz3809, 31
  %zs3814 = shl i64 %zz3810, 30
  %cs3815 = shl i64 %cz3811, 29
  %vs3816 = shl i64 %vz3812, 28
  %nzor3817 = or i64 %ns3813, %zs3814
  %cvor3818 = or i64 %cs3815, %vs3816
  %nzcv3819 = or i64 %nzor3817, %cvor3818
  %wp3820 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3819, ptr %wp3820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb10 word 0x54000581
  %r3821.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3821 = load i64, ptr %r3821.p, align 8, !alias.scope !3, !noalias !4
  %fsh3823 = lshr i64 %r3821, 30
  %ftr3824 = trunc i64 %fsh3823 to i1
  %cond3822 = xor i1 %ftr3824, true
  br i1 %cond3822, label %L_80077cbc0, label %L_80077cb14_ft
L_80077cb14_ft:
  ; @pc 0x80077cb14 word 0x2a1f03eb
  %t3825 = or i32 0, 0
  %c3826 = zext i32 %t3825 to i64
  %wp3827 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3826, ptr %wp3827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb18 word 0xd503201f
  ; @pc 0x80077cb1c word 0xd503201f
  br label %L_80077cb20
L_80077cb24_ft:
  ; @pc 0x80077cb24 word 0xf9400d0c
  %r3831.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3831 = load i64, ptr %r3831.p, align 8, !alias.scope !3, !noalias !4
  %t3832 = add i64 %r3831, 24
  %gmp3833 = inttoptr i64 %t3832 to ptr
  %gml3834 = load i64, ptr %gmp3833, align 1, !alias.scope !4, !noalias !3
  %wp3835 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3834, ptr %wp3835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb28 word 0xdac00d8c
  %r3836.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3836 = load i64, ptr %r3836.p, align 8, !alias.scope !3, !noalias !4
  %bsw3837 = call i64 @llvm.bswap.i64(i64 %r3836)
  %wp3838 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3837, ptr %wp3838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb2c word 0xf940020d
  %r3839.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3839 = load i64, ptr %r3839.p, align 8, !alias.scope !3, !noalias !4
  %gmp3840 = inttoptr i64 %r3839 to ptr
  %gml3841 = load i64, ptr %gmp3840, align 1, !alias.scope !4, !noalias !3
  %wp3842 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3841, ptr %wp3842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb30 word 0xdac00dad
  %r3843.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3843 = load i64, ptr %r3843.p, align 8, !alias.scope !3, !noalias !4
  %bsw3844 = call i64 @llvm.bswap.i64(i64 %r3843)
  %wp3845 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw3844, ptr %wp3845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb34 word 0xeb0d019f
  %r3846.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3846 = load i64, ptr %r3846.p, align 8, !alias.scope !3, !noalias !4
  %r3847.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3847 = load i64, ptr %r3847.p, align 8, !alias.scope !3, !noalias !4
  %t3848 = sub i64 %r3846, %r3847
  %fn3849 = icmp slt i64 %t3848, 0
  %fz3850 = icmp eq i64 %t3848, 0
  %fc3851 = icmp uge i64 %r3846, %r3847
  %fx13852 = xor i64 %r3846, %r3847
  %fx23853 = xor i64 %r3846, %t3848
  %fva3854 = and i64 %fx13852, %fx23853
  %fv3855 = icmp slt i64 %fva3854, 0
  %nz3856 = zext i1 %fn3849 to i64
  %zz3857 = zext i1 %fz3850 to i64
  %cz3858 = zext i1 %fc3851 to i64
  %vz3859 = zext i1 %fv3855 to i64
  %ns3860 = shl i64 %nz3856, 31
  %zs3861 = shl i64 %zz3857, 30
  %cs3862 = shl i64 %cz3858, 29
  %vs3863 = shl i64 %vz3859, 28
  %nzor3864 = or i64 %ns3860, %zs3861
  %cvor3865 = or i64 %cs3862, %vs3863
  %nzcv3866 = or i64 %nzor3864, %cvor3865
  %wp3867 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3866, ptr %wp3867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb38 word 0x54fff8c1
  %r3868.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3868 = load i64, ptr %r3868.p, align 8, !alias.scope !3, !noalias !4
  %fsh3870 = lshr i64 %r3868, 30
  %ftr3871 = trunc i64 %fsh3870 to i1
  %cond3869 = xor i1 %ftr3871, true
  br i1 %cond3869, label %L_80077ca50, label %L_80077cb3c_ft
L_80077cb3c_ft:
  ; @pc 0x80077cb3c word 0xf940110c
  %r3872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3872 = load i64, ptr %r3872.p, align 8, !alias.scope !3, !noalias !4
  %t3873 = add i64 %r3872, 32
  %gmp3874 = inttoptr i64 %t3873 to ptr
  %gml3875 = load i64, ptr %gmp3874, align 1, !alias.scope !4, !noalias !3
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3875, ptr %wp3876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb40 word 0xdac00d8c
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %bsw3878 = call i64 @llvm.bswap.i64(i64 %r3877)
  %wp3879 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3878, ptr %wp3879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb44 word 0xf940060d
  %r3880.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3880 = load i64, ptr %r3880.p, align 8, !alias.scope !3, !noalias !4
  %t3881 = add i64 %r3880, 8
  %gmp3882 = inttoptr i64 %t3881 to ptr
  %gml3883 = load i64, ptr %gmp3882, align 1, !alias.scope !4, !noalias !3
  %wp3884 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3883, ptr %wp3884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb48 word 0xdac00dad
  %r3885.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3885 = load i64, ptr %r3885.p, align 8, !alias.scope !3, !noalias !4
  %bsw3886 = call i64 @llvm.bswap.i64(i64 %r3885)
  %wp3887 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw3886, ptr %wp3887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb4c word 0xeb0d019f
  %r3888.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3888 = load i64, ptr %r3888.p, align 8, !alias.scope !3, !noalias !4
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %t3890 = sub i64 %r3888, %r3889
  %fn3891 = icmp slt i64 %t3890, 0
  %fz3892 = icmp eq i64 %t3890, 0
  %fc3893 = icmp uge i64 %r3888, %r3889
  %fx13894 = xor i64 %r3888, %r3889
  %fx23895 = xor i64 %r3888, %t3890
  %fva3896 = and i64 %fx13894, %fx23895
  %fv3897 = icmp slt i64 %fva3896, 0
  %nz3898 = zext i1 %fn3891 to i64
  %zz3899 = zext i1 %fz3892 to i64
  %cz3900 = zext i1 %fc3893 to i64
  %vz3901 = zext i1 %fv3897 to i64
  %ns3902 = shl i64 %nz3898, 31
  %zs3903 = shl i64 %zz3899, 30
  %cs3904 = shl i64 %cz3900, 29
  %vs3905 = shl i64 %vz3901, 28
  %nzor3906 = or i64 %ns3902, %zs3903
  %cvor3907 = or i64 %cs3904, %vs3905
  %nzcv3908 = or i64 %nzor3906, %cvor3907
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3908, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb50 word 0x54fff801
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %fsh3912 = lshr i64 %r3910, 30
  %ftr3913 = trunc i64 %fsh3912 to i1
  %cond3911 = xor i1 %ftr3913, true
  br i1 %cond3911, label %L_80077ca50, label %L_80077cb54_ft
L_80077cb54_ft:
  ; @pc 0x80077cb54 word 0xf940150c
  %r3914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3914 = load i64, ptr %r3914.p, align 8, !alias.scope !3, !noalias !4
  %t3915 = add i64 %r3914, 40
  %gmp3916 = inttoptr i64 %t3915 to ptr
  %gml3917 = load i64, ptr %gmp3916, align 1, !alias.scope !4, !noalias !3
  %wp3918 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3917, ptr %wp3918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb58 word 0xdac00d8c
  %r3919.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3919 = load i64, ptr %r3919.p, align 8, !alias.scope !3, !noalias !4
  %bsw3920 = call i64 @llvm.bswap.i64(i64 %r3919)
  %wp3921 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3920, ptr %wp3921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb5c word 0xf9400a0d
  %r3922.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3922 = load i64, ptr %r3922.p, align 8, !alias.scope !3, !noalias !4
  %t3923 = add i64 %r3922, 16
  %gmp3924 = inttoptr i64 %t3923 to ptr
  %gml3925 = load i64, ptr %gmp3924, align 1, !alias.scope !4, !noalias !3
  %wp3926 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3925, ptr %wp3926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb60 word 0xdac00dad
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %bsw3928 = call i64 @llvm.bswap.i64(i64 %r3927)
  %wp3929 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw3928, ptr %wp3929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb64 word 0xeb0d019f
  %r3930.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3930 = load i64, ptr %r3930.p, align 8, !alias.scope !3, !noalias !4
  %r3931.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3931 = load i64, ptr %r3931.p, align 8, !alias.scope !3, !noalias !4
  %t3932 = sub i64 %r3930, %r3931
  %fn3933 = icmp slt i64 %t3932, 0
  %fz3934 = icmp eq i64 %t3932, 0
  %fc3935 = icmp uge i64 %r3930, %r3931
  %fx13936 = xor i64 %r3930, %r3931
  %fx23937 = xor i64 %r3930, %t3932
  %fva3938 = and i64 %fx13936, %fx23937
  %fv3939 = icmp slt i64 %fva3938, 0
  %nz3940 = zext i1 %fn3933 to i64
  %zz3941 = zext i1 %fz3934 to i64
  %cz3942 = zext i1 %fc3935 to i64
  %vz3943 = zext i1 %fv3939 to i64
  %ns3944 = shl i64 %nz3940, 31
  %zs3945 = shl i64 %zz3941, 30
  %cs3946 = shl i64 %cz3942, 29
  %vs3947 = shl i64 %vz3943, 28
  %nzor3948 = or i64 %ns3944, %zs3945
  %cvor3949 = or i64 %cs3946, %vs3947
  %nzcv3950 = or i64 %nzor3948, %cvor3949
  %wp3951 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3950, ptr %wp3951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb68 word 0x54fff741
  %r3952.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3952 = load i64, ptr %r3952.p, align 8, !alias.scope !3, !noalias !4
  %fsh3954 = lshr i64 %r3952, 30
  %ftr3955 = trunc i64 %fsh3954 to i1
  %cond3953 = xor i1 %ftr3955, true
  br i1 %cond3953, label %L_80077ca50, label %L_80077cb6c_ft
L_80077cb6c_ft:
  ; @pc 0x80077cb6c word 0xf940190c
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %t3957 = add i64 %r3956, 48
  %gmp3958 = inttoptr i64 %t3957 to ptr
  %gml3959 = load i64, ptr %gmp3958, align 1, !alias.scope !4, !noalias !3
  %wp3960 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3959, ptr %wp3960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb70 word 0xdac00d8c
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %bsw3962 = call i64 @llvm.bswap.i64(i64 %r3961)
  %wp3963 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw3962, ptr %wp3963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb74 word 0xf9400e0d
  %r3964.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3964 = load i64, ptr %r3964.p, align 8, !alias.scope !3, !noalias !4
  %t3965 = add i64 %r3964, 24
  %gmp3966 = inttoptr i64 %t3965 to ptr
  %gml3967 = load i64, ptr %gmp3966, align 1, !alias.scope !4, !noalias !3
  %wp3968 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3967, ptr %wp3968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb78 word 0xdac00dad
  %r3969.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3969 = load i64, ptr %r3969.p, align 8, !alias.scope !3, !noalias !4
  %bsw3970 = call i64 @llvm.bswap.i64(i64 %r3969)
  %wp3971 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw3970, ptr %wp3971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb7c word 0xeb0d019f
  %r3972.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3972 = load i64, ptr %r3972.p, align 8, !alias.scope !3, !noalias !4
  %r3973.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3973 = load i64, ptr %r3973.p, align 8, !alias.scope !3, !noalias !4
  %t3974 = sub i64 %r3972, %r3973
  %fn3975 = icmp slt i64 %t3974, 0
  %fz3976 = icmp eq i64 %t3974, 0
  %fc3977 = icmp uge i64 %r3972, %r3973
  %fx13978 = xor i64 %r3972, %r3973
  %fx23979 = xor i64 %r3972, %t3974
  %fva3980 = and i64 %fx13978, %fx23979
  %fv3981 = icmp slt i64 %fva3980, 0
  %nz3982 = zext i1 %fn3975 to i64
  %zz3983 = zext i1 %fz3976 to i64
  %cz3984 = zext i1 %fc3977 to i64
  %vz3985 = zext i1 %fv3981 to i64
  %ns3986 = shl i64 %nz3982, 31
  %zs3987 = shl i64 %zz3983, 30
  %cs3988 = shl i64 %cz3984, 29
  %vs3989 = shl i64 %vz3985, 28
  %nzor3990 = or i64 %ns3986, %zs3987
  %cvor3991 = or i64 %cs3988, %vs3989
  %nzcv3992 = or i64 %nzor3990, %cvor3991
  %wp3993 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3992, ptr %wp3993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb80 word 0x54fff681
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %fsh3996 = lshr i64 %r3994, 30
  %ftr3997 = trunc i64 %fsh3996 to i1
  %cond3995 = xor i1 %ftr3997, true
  br i1 %cond3995, label %L_80077ca50, label %L_80077cb84_ft
L_80077cb84_ft:
  ; @pc 0x80077cb84 word 0xf9401d0c
  %r3998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3998 = load i64, ptr %r3998.p, align 8, !alias.scope !3, !noalias !4
  %t3999 = add i64 %r3998, 56
  %gmp4000 = inttoptr i64 %t3999 to ptr
  %gml4001 = load i64, ptr %gmp4000, align 1, !alias.scope !4, !noalias !3
  %wp4002 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4001, ptr %wp4002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb88 word 0xdac00d8c
  %r4003.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4003 = load i64, ptr %r4003.p, align 8, !alias.scope !3, !noalias !4
  %bsw4004 = call i64 @llvm.bswap.i64(i64 %r4003)
  %wp4005 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw4004, ptr %wp4005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb8c word 0xf940120d
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %t4007 = add i64 %r4006, 32
  %gmp4008 = inttoptr i64 %t4007 to ptr
  %gml4009 = load i64, ptr %gmp4008, align 1, !alias.scope !4, !noalias !3
  %wp4010 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4009, ptr %wp4010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb90 word 0xdac00dad
  %r4011.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4011 = load i64, ptr %r4011.p, align 8, !alias.scope !3, !noalias !4
  %bsw4012 = call i64 @llvm.bswap.i64(i64 %r4011)
  %wp4013 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw4012, ptr %wp4013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb94 word 0xeb0d019f
  %r4014.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4014 = load i64, ptr %r4014.p, align 8, !alias.scope !3, !noalias !4
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %t4016 = sub i64 %r4014, %r4015
  %fn4017 = icmp slt i64 %t4016, 0
  %fz4018 = icmp eq i64 %t4016, 0
  %fc4019 = icmp uge i64 %r4014, %r4015
  %fx14020 = xor i64 %r4014, %r4015
  %fx24021 = xor i64 %r4014, %t4016
  %fva4022 = and i64 %fx14020, %fx24021
  %fv4023 = icmp slt i64 %fva4022, 0
  %nz4024 = zext i1 %fn4017 to i64
  %zz4025 = zext i1 %fz4018 to i64
  %cz4026 = zext i1 %fc4019 to i64
  %vz4027 = zext i1 %fv4023 to i64
  %ns4028 = shl i64 %nz4024, 31
  %zs4029 = shl i64 %zz4025, 30
  %cs4030 = shl i64 %cz4026, 29
  %vs4031 = shl i64 %vz4027, 28
  %nzor4032 = or i64 %ns4028, %zs4029
  %cvor4033 = or i64 %cs4030, %vs4031
  %nzcv4034 = or i64 %nzor4032, %cvor4033
  %wp4035 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4034, ptr %wp4035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cb98 word 0x54fff5c1
  %r4036.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4036 = load i64, ptr %r4036.p, align 8, !alias.scope !3, !noalias !4
  %fsh4038 = lshr i64 %r4036, 30
  %ftr4039 = trunc i64 %fsh4038 to i1
  %cond4037 = xor i1 %ftr4039, true
  br i1 %cond4037, label %L_80077ca50, label %L_80077cb9c_ft
L_80077cb9c_ft:
  ; @pc 0x80077cb9c word 0xf940210c
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %t4041 = add i64 %r4040, 64
  %gmp4042 = inttoptr i64 %t4041 to ptr
  %gml4043 = load i64, ptr %gmp4042, align 1, !alias.scope !4, !noalias !3
  %wp4044 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4043, ptr %wp4044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cba0 word 0xdac00d8c
  %r4045.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4045 = load i64, ptr %r4045.p, align 8, !alias.scope !3, !noalias !4
  %bsw4046 = call i64 @llvm.bswap.i64(i64 %r4045)
  %wp4047 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %bsw4046, ptr %wp4047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cba4 word 0xf940160d
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = add i64 %r4048, 40
  %gmp4050 = inttoptr i64 %t4049 to ptr
  %gml4051 = load i64, ptr %gmp4050, align 1, !alias.scope !4, !noalias !3
  %wp4052 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4051, ptr %wp4052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cba8 word 0xdac00dad
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %bsw4054 = call i64 @llvm.bswap.i64(i64 %r4053)
  %wp4055 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %bsw4054, ptr %wp4055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbac word 0xeb0d019f
  %r4056.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4056 = load i64, ptr %r4056.p, align 8, !alias.scope !3, !noalias !4
  %r4057.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4057 = load i64, ptr %r4057.p, align 8, !alias.scope !3, !noalias !4
  %t4058 = sub i64 %r4056, %r4057
  %fn4059 = icmp slt i64 %t4058, 0
  %fz4060 = icmp eq i64 %t4058, 0
  %fc4061 = icmp uge i64 %r4056, %r4057
  %fx14062 = xor i64 %r4056, %r4057
  %fx24063 = xor i64 %r4056, %t4058
  %fva4064 = and i64 %fx14062, %fx24063
  %fv4065 = icmp slt i64 %fva4064, 0
  %nz4066 = zext i1 %fn4059 to i64
  %zz4067 = zext i1 %fz4060 to i64
  %cz4068 = zext i1 %fc4061 to i64
  %vz4069 = zext i1 %fv4065 to i64
  %ns4070 = shl i64 %nz4066, 31
  %zs4071 = shl i64 %zz4067, 30
  %cs4072 = shl i64 %cz4068, 29
  %vs4073 = shl i64 %vz4069, 28
  %nzor4074 = or i64 %ns4070, %zs4071
  %cvor4075 = or i64 %cs4072, %vs4073
  %nzcv4076 = or i64 %nzor4074, %cvor4075
  %wp4077 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4076, ptr %wp4077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cbb0 word 0x54000540
  %r4078.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4078 = load i64, ptr %r4078.p, align 8, !alias.scope !3, !noalias !4
  %fsh4080 = lshr i64 %r4078, 30
  %cond4079 = trunc i64 %fsh4080 to i1
  br i1 %cond4079, label %L_80077cc58, label %L_80077cbb4_ft
L_80077cbb4_ft:
  ; @pc 0x80077cbb4 word 0x17ffffa7
  br label %L_80077ca50
L_80077cbb8_unreach:
  ; @pc 0x80077cbb8 word 0xd503201f
  ; @pc 0x80077cbbc word 0xd503201f
  br label %L_80077cbc0
L_80077cc78_ft:
  ; @pc 0x80077cc78 word 0xb0018c16
  %wp4268 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419494912, ptr %wp4268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc7c word 0x9107c2d6
  %r4269.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4269 = load i64, ptr %r4269.p, align 8, !alias.scope !3, !noalias !4
  %t4270 = add i64 %r4269, 496
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4270, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cc80
L_80077cc98_ft:
  ; @pc 0x80077cc98 word 0xf9403929
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4295 = load i64, ptr %r4295.p, align 8, !alias.scope !3, !noalias !4
  %t4296 = add i64 %r4295, 112
  %gmp4297 = inttoptr i64 %t4296 to ptr
  %gml4298 = load i64, ptr %gmp4297, align 1, !alias.scope !4, !noalias !3
  %wp4299 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4298, ptr %wp4299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cc9c word 0xf9003989
  %r4300.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4300 = load i64, ptr %r4300.p, align 8, !alias.scope !3, !noalias !4
  %t4301 = add i64 %r4300, 112
  %r4302.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4302 = load i64, ptr %r4302.p, align 8, !alias.scope !3, !noalias !4
  %gmp4303 = inttoptr i64 %t4301 to ptr
  store i64 %r4302, ptr %gmp4303, align 1, !alias.scope !4, !noalias !3
  br label %L_80077cca0
L_80077ccb0_ft:
  ; @pc 0x80077ccb0 word 0xf940050a
  %r4316.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4316 = load i64, ptr %r4316.p, align 8, !alias.scope !3, !noalias !4
  %t4317 = add i64 %r4316, 8
  %gmp4318 = inttoptr i64 %t4317 to ptr
  %gml4319 = load i64, ptr %gmp4318, align 1, !alias.scope !4, !noalias !3
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccb4 word 0xaa0803e9
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %t4322 = or i64 0, %r4321
  %wp4323 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4322, ptr %wp4323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccb8 word 0xb500012a
  %r4324.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4324 = load i64, ptr %r4324.p, align 8, !alias.scope !3, !noalias !4
  %cmp4325 = icmp ne i64 %r4324, 0
  br i1 %cmp4325, label %L_80077ccdc, label %L_80077ccbc
L_80077ccc8_ft:
  ; @pc 0x80077ccc8 word 0xf940010a
  %r4345.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4345 = load i64, ptr %r4345.p, align 8, !alias.scope !3, !noalias !4
  %gmp4346 = inttoptr i64 %r4345 to ptr
  %gml4347 = load i64, ptr %gmp4346, align 1, !alias.scope !4, !noalias !3
  %wp4348 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4347, ptr %wp4348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cccc word 0xeb09015f
  %r4349.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4349 = load i64, ptr %r4349.p, align 8, !alias.scope !3, !noalias !4
  %r4350.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4350 = load i64, ptr %r4350.p, align 8, !alias.scope !3, !noalias !4
  %t4351 = sub i64 %r4349, %r4350
  %fn4352 = icmp slt i64 %t4351, 0
  %fz4353 = icmp eq i64 %t4351, 0
  %fc4354 = icmp uge i64 %r4349, %r4350
  %fx14355 = xor i64 %r4349, %r4350
  %fx24356 = xor i64 %r4349, %t4351
  %fva4357 = and i64 %fx14355, %fx24356
  %fv4358 = icmp slt i64 %fva4357, 0
  %nz4359 = zext i1 %fn4352 to i64
  %zz4360 = zext i1 %fz4353 to i64
  %cz4361 = zext i1 %fc4354 to i64
  %vz4362 = zext i1 %fv4358 to i64
  %ns4363 = shl i64 %nz4359, 31
  %zs4364 = shl i64 %zz4360, 30
  %cs4365 = shl i64 %cz4361, 29
  %vs4366 = shl i64 %vz4362, 28
  %nzor4367 = or i64 %ns4363, %zs4364
  %cvor4368 = or i64 %cs4365, %vs4366
  %nzcv4369 = or i64 %nzor4367, %cvor4368
  %wp4370 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4369, ptr %wp4370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccd0 word 0xaa0803e9
  %r4371.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4371 = load i64, ptr %r4371.p, align 8, !alias.scope !3, !noalias !4
  %t4372 = or i64 0, %r4371
  %wp4373 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4372, ptr %wp4373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ccd4 word 0x54ffff41
  %r4374.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4374 = load i64, ptr %r4374.p, align 8, !alias.scope !3, !noalias !4
  %fsh4376 = lshr i64 %r4374, 30
  %ftr4377 = trunc i64 %fsh4376 to i1
  %cond4375 = xor i1 %ftr4377, true
  br i1 %cond4375, label %L_80077ccbc, label %L_80077ccd8_ft
L_80077ccd8_ft:
  ; @pc 0x80077ccd8 word 0x17ffffea
  br label %L_80077cc80
L_80077ccec_ft:
  ; @pc 0x80077ccec word 0x17fffffc
  br label %L_80077ccdc
L_80077cd28_ft:
  ; @pc 0x80077cd28 word 0xf9402fe1
  %r4436.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4436 = load i64, ptr %r4436.p, align 8, !alias.scope !3, !noalias !4
  %t4437 = add i64 %r4436, 88
  %gmp4438 = inttoptr i64 %t4437 to ptr
  %gml4439 = load i64, ptr %gmp4438, align 1, !alias.scope !4, !noalias !3
  %wp4440 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml4439, ptr %wp4440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd2c word 0x940342b1
  %wp4441 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589680, ptr %wp4441, align 8, !alias.scope !3, !noalias !4
  call void @f_80084d7f0(ptr %c)
  ; @pc 0x80077cd30 word 0xf94043e0
  %r4442.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4442 = load i64, ptr %r4442.p, align 8, !alias.scope !3, !noalias !4
  %t4443 = add i64 %r4442, 128
  %gmp4444 = inttoptr i64 %t4443 to ptr
  %gml4445 = load i64, ptr %gmp4444, align 1, !alias.scope !4, !noalias !3
  %wp4446 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4445, ptr %wp4446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd34 word 0xf90037f6
  %r4447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4447 = load i64, ptr %r4447.p, align 8, !alias.scope !3, !noalias !4
  %t4448 = add i64 %r4447, 104
  %r4449.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4449 = load i64, ptr %r4449.p, align 8, !alias.scope !3, !noalias !4
  %gmp4450 = inttoptr i64 %t4448 to ptr
  store i64 %r4449, ptr %gmp4450, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cd38 word 0xb50013c0
  %r4451.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4451 = load i64, ptr %r4451.p, align 8, !alias.scope !3, !noalias !4
  %cmp4452 = icmp ne i64 %r4451, 0
  br i1 %cmp4452, label %L_80077cfb0, label %L_80077cd3c
L_80077cd50_ft:
  ; @pc 0x80077cd50 word 0x785a83b3
  %r4492.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4492 = load i64, ptr %r4492.p, align 8, !alias.scope !3, !noalias !4
  %t4493 = add i64 %r4492, -88
  %gmp4494 = inttoptr i64 %t4493 to ptr
  %gml4495 = load i16, ptr %gmp4494, align 1, !alias.scope !4, !noalias !3
  %c4496 = zext i16 %gml4495 to i64
  %wp4497 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c4496, ptr %wp4497, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cd54
L_80077cd8c_ft:
  ; @pc 0x80077cd8c word 0xf85903a0
  %r4557.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4557 = load i64, ptr %r4557.p, align 8, !alias.scope !3, !noalias !4
  %t4558 = add i64 %r4557, -112
  %gmp4559 = inttoptr i64 %t4558 to ptr
  %gml4560 = load i64, ptr %gmp4559, align 1, !alias.scope !4, !noalias !3
  %wp4561 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4560, ptr %wp4561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cd90 word 0xb4000040
  %r4562.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4562 = load i64, ptr %r4562.p, align 8, !alias.scope !3, !noalias !4
  %cmp4563 = icmp eq i64 %r4562, 0
  br i1 %cmp4563, label %L_80077cd98, label %L_80077cd94_ft
L_80077cd94_ft:
  ; @pc 0x80077cd94 word 0x97ea6143
  %wp4564 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589784, ptr %wp4564, align 8, !alias.scope !3, !noalias !4
  call void @f_8002152a0(ptr %c)
  br label %L_80077cd98
L_80077cd9c_ft:
  ; @pc 0x80077cd9c word 0xf85983a0
  %r4568.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4568 = load i64, ptr %r4568.p, align 8, !alias.scope !3, !noalias !4
  %t4569 = add i64 %r4568, -104
  %gmp4570 = inttoptr i64 %t4569 to ptr
  %gml4571 = load i64, ptr %gmp4570, align 1, !alias.scope !4, !noalias !3
  %wp4572 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4571, ptr %wp4572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cda0 word 0xb4000040
  %r4573.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4573 = load i64, ptr %r4573.p, align 8, !alias.scope !3, !noalias !4
  %cmp4574 = icmp eq i64 %r4573, 0
  br i1 %cmp4574, label %L_80077cda8, label %L_80077cda4_ft
L_80077cda4_ft:
  ; @pc 0x80077cda4 word 0x97ea613f
  %wp4575 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589800, ptr %wp4575, align 8, !alias.scope !3, !noalias !4
  call void @f_8002152a0(ptr %c)
  br label %L_80077cda8
L_80077cdac_ft:
  ; @pc 0x80077cdac word 0xf85a03a0
  %r4579.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4579 = load i64, ptr %r4579.p, align 8, !alias.scope !3, !noalias !4
  %t4580 = add i64 %r4579, -96
  %gmp4581 = inttoptr i64 %t4580 to ptr
  %gml4582 = load i64, ptr %gmp4581, align 1, !alias.scope !4, !noalias !3
  %wp4583 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4582, ptr %wp4583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdb0 word 0xb4000040
  %r4584.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4584 = load i64, ptr %r4584.p, align 8, !alias.scope !3, !noalias !4
  %cmp4585 = icmp eq i64 %r4584, 0
  br i1 %cmp4585, label %L_80077cdb8, label %L_80077cdb4_ft
L_80077cdb4_ft:
  ; @pc 0x80077cdb4 word 0x97ea613b
  %wp4586 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34367589816, ptr %wp4586, align 8, !alias.scope !3, !noalias !4
  call void @f_8002152a0(ptr %c)
  br label %L_80077cdb8
L_80077cde8_ft:
  ; @pc 0x80077cde8 word 0xf9400509
  %r4672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4672 = load i64, ptr %r4672.p, align 8, !alias.scope !3, !noalias !4
  %t4673 = add i64 %r4672, 8
  %gmp4674 = inttoptr i64 %t4673 to ptr
  %gml4675 = load i64, ptr %gmp4674, align 1, !alias.scope !4, !noalias !3
  %wp4676 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4675, ptr %wp4676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdec word 0xf90009e9
  %r4677.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4677 = load i64, ptr %r4677.p, align 8, !alias.scope !3, !noalias !4
  %t4678 = add i64 %r4677, 16
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %gmp4680 = inttoptr i64 %t4678 to ptr
  store i64 %r4679, ptr %gmp4680, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077cdf0 word 0xb40000a9
  %r4681.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4681 = load i64, ptr %r4681.p, align 8, !alias.scope !3, !noalias !4
  %cmp4682 = icmp eq i64 %r4681, 0
  br i1 %cmp4682, label %L_80077ce04, label %L_80077cdf4_ft
L_80077cdf4_ft:
  ; @pc 0x80077cdf4 word 0xf940092a
  %r4683.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4683 = load i64, ptr %r4683.p, align 8, !alias.scope !3, !noalias !4
  %t4684 = add i64 %r4683, 16
  %gmp4685 = inttoptr i64 %t4684 to ptr
  %gml4686 = load i64, ptr %gmp4685, align 1, !alias.scope !4, !noalias !3
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdf8 word 0x9240014a
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %t4689 = and i64 %r4688, 1
  %wp4690 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4689, ptr %wp4690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cdfc word 0xaa01014a
  %r4691.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4691 = load i64, ptr %r4691.p, align 8, !alias.scope !3, !noalias !4
  %r4692.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4692 = load i64, ptr %r4692.p, align 8, !alias.scope !3, !noalias !4
  %t4693 = or i64 %r4692, %r4691
  %wp4694 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4693, ptr %wp4694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce00 word 0xf900092a
  %r4695.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4695 = load i64, ptr %r4695.p, align 8, !alias.scope !3, !noalias !4
  %t4696 = add i64 %r4695, 16
  %r4697.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4697 = load i64, ptr %r4697.p, align 8, !alias.scope !3, !noalias !4
  %gmp4698 = inttoptr i64 %t4696 to ptr
  store i64 %r4697, ptr %gmp4698, align 1, !alias.scope !4, !noalias !3
  br label %L_80077ce04
L_80077ce10_ft:
  ; @pc 0x80077ce10 word 0xf940092a
  %r4708.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4708 = load i64, ptr %r4708.p, align 8, !alias.scope !3, !noalias !4
  %t4709 = add i64 %r4708, 16
  %gmp4710 = inttoptr i64 %t4709 to ptr
  %gml4711 = load i64, ptr %gmp4710, align 1, !alias.scope !4, !noalias !3
  %wp4712 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4711, ptr %wp4712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce14 word 0x9240014a
  %r4713.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4713 = load i64, ptr %r4713.p, align 8, !alias.scope !3, !noalias !4
  %t4714 = and i64 %r4713, 1
  %wp4715 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4714, ptr %wp4715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce18 word 0xaa01014a
  %r4716.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4716 = load i64, ptr %r4716.p, align 8, !alias.scope !3, !noalias !4
  %r4717.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4717 = load i64, ptr %r4717.p, align 8, !alias.scope !3, !noalias !4
  %t4718 = or i64 %r4717, %r4716
  %wp4719 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4718, ptr %wp4719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce1c word 0xf900092a
  %r4720.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4720 = load i64, ptr %r4720.p, align 8, !alias.scope !3, !noalias !4
  %t4721 = add i64 %r4720, 16
  %r4722.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4722 = load i64, ptr %r4722.p, align 8, !alias.scope !3, !noalias !4
  %gmp4723 = inttoptr i64 %t4721 to ptr
  store i64 %r4722, ptr %gmp4723, align 1, !alias.scope !4, !noalias !3
  br label %L_80077ce20
L_80077ce34_ft:
  ; @pc 0x80077ce34 word 0xaa0903ea
  %r4752.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4752 = load i64, ptr %r4752.p, align 8, !alias.scope !3, !noalias !4
  %t4753 = or i64 0, %r4752
  %wp4754 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4753, ptr %wp4754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce38 word 0xf840854b
  %r4755.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4755 = load i64, ptr %r4755.p, align 8, !alias.scope !3, !noalias !4
  %t4756 = add i64 %r4755, 8
  %gmp4757 = inttoptr i64 %r4755 to ptr
  %gml4758 = load i64, ptr %gmp4757, align 1, !alias.scope !4, !noalias !3
  %wp4759 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4756, ptr %wp4759, align 8, !alias.scope !3, !noalias !4
  %wp4760 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4758, ptr %wp4760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce3c word 0xeb08017f
  %r4761.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4761 = load i64, ptr %r4761.p, align 8, !alias.scope !3, !noalias !4
  %r4762.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4762 = load i64, ptr %r4762.p, align 8, !alias.scope !3, !noalias !4
  %t4763 = sub i64 %r4761, %r4762
  %fn4764 = icmp slt i64 %t4763, 0
  %fz4765 = icmp eq i64 %t4763, 0
  %fc4766 = icmp uge i64 %r4761, %r4762
  %fx14767 = xor i64 %r4761, %r4762
  %fx24768 = xor i64 %r4761, %t4763
  %fva4769 = and i64 %fx14767, %fx24768
  %fv4770 = icmp slt i64 %fva4769, 0
  %nz4771 = zext i1 %fn4764 to i64
  %zz4772 = zext i1 %fz4765 to i64
  %cz4773 = zext i1 %fc4766 to i64
  %vz4774 = zext i1 %fv4770 to i64
  %ns4775 = shl i64 %nz4771, 31
  %zs4776 = shl i64 %zz4772, 30
  %cs4777 = shl i64 %cz4773, 29
  %vs4778 = shl i64 %vz4774, 28
  %nzor4779 = or i64 %ns4775, %zs4776
  %cvor4780 = or i64 %cs4777, %vs4778
  %nzcv4781 = or i64 %nzor4779, %cvor4780
  %wp4782 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4781, ptr %wp4782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce40 word 0x9a8a012a
  %r4783.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4783 = load i64, ptr %r4783.p, align 8, !alias.scope !3, !noalias !4
  %r4784.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4784 = load i64, ptr %r4784.p, align 8, !alias.scope !3, !noalias !4
  %r4785.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4785 = load i64, ptr %r4785.p, align 8, !alias.scope !3, !noalias !4
  %fsh4787 = lshr i64 %r4785, 30
  %cond4786 = trunc i64 %fsh4787 to i1
  %sel4788 = select i1 %cond4786, i64 %r4783, i64 %r4784
  %wp4789 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel4788, ptr %wp4789, align 8, !alias.scope !3, !noalias !4
  br label %L_80077ce44
L_80077ce70_ft:
  ; @pc 0x80077ce70 word 0xf9400b09
  %r4832.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4832 = load i64, ptr %r4832.p, align 8, !alias.scope !3, !noalias !4
  %t4833 = add i64 %r4832, 16
  %gmp4834 = inttoptr i64 %t4833 to ptr
  %gml4835 = load i64, ptr %gmp4834, align 1, !alias.scope !4, !noalias !3
  %wp4836 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4835, ptr %wp4836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce74 word 0xf8696909
  %r4837.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4837 = load i64, ptr %r4837.p, align 8, !alias.scope !3, !noalias !4
  %r4838.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4838 = load i64, ptr %r4838.p, align 8, !alias.scope !3, !noalias !4
  %t4839 = add i64 %r4837, %r4838
  %gmp4840 = inttoptr i64 %t4839 to ptr
  %gml4841 = load i64, ptr %gmp4840, align 1, !alias.scope !4, !noalias !3
  %wp4842 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4841, ptr %wp4842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce78 word 0xb5ffa569
  %r4843.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4843 = load i64, ptr %r4843.p, align 8, !alias.scope !3, !noalias !4
  %cmp4844 = icmp ne i64 %r4843, 0
  br i1 %cmp4844, label %L_80077c324, label %L_80077ce7c_ft
L_80077ce7c_ft:
  ; @pc 0x80077ce7c word 0xf9400f09
  %r4845.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4845 = load i64, ptr %r4845.p, align 8, !alias.scope !3, !noalias !4
  %t4846 = add i64 %r4845, 24
  %gmp4847 = inttoptr i64 %t4846 to ptr
  %gml4848 = load i64, ptr %gmp4847, align 1, !alias.scope !4, !noalias !3
  %wp4849 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4848, ptr %wp4849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce80 word 0xf8696909
  %r4850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4850 = load i64, ptr %r4850.p, align 8, !alias.scope !3, !noalias !4
  %r4851.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4851 = load i64, ptr %r4851.p, align 8, !alias.scope !3, !noalias !4
  %t4852 = add i64 %r4850, %r4851
  %gmp4853 = inttoptr i64 %t4852 to ptr
  %gml4854 = load i64, ptr %gmp4853, align 1, !alias.scope !4, !noalias !3
  %wp4855 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4854, ptr %wp4855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce84 word 0x17fffd28
  br label %L_80077c324
L_80077ce90_ft:
  ; @pc 0x80077ce90 word 0xf9400d29
  %r4863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4863 = load i64, ptr %r4863.p, align 8, !alias.scope !3, !noalias !4
  %t4864 = add i64 %r4863, 24
  %gmp4865 = inttoptr i64 %t4864 to ptr
  %gml4866 = load i64, ptr %gmp4865, align 1, !alias.scope !4, !noalias !3
  %wp4867 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4866, ptr %wp4867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ce94 word 0xb4ffa589
  %r4868.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4868 = load i64, ptr %r4868.p, align 8, !alias.scope !3, !noalias !4
  %cmp4869 = icmp eq i64 %r4868, 0
  br i1 %cmp4869, label %L_80077c344, label %L_80077ce98_ft
L_80077ce98_ft:
  ; @pc 0x80077ce98 word 0x1400003a
  br label %L_80077cf80
L_80077cea4_ft:
  ; @pc 0x80077cea4 word 0xf9400d29
  %r4877.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4877 = load i64, ptr %r4877.p, align 8, !alias.scope !3, !noalias !4
  %t4878 = add i64 %r4877, 24
  %gmp4879 = inttoptr i64 %t4878 to ptr
  %gml4880 = load i64, ptr %gmp4879, align 1, !alias.scope !4, !noalias !3
  %wp4881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4880, ptr %wp4881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cea8 word 0xb4ffa529
  %r4882.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4882 = load i64, ptr %r4882.p, align 8, !alias.scope !3, !noalias !4
  %cmp4883 = icmp eq i64 %r4882, 0
  br i1 %cmp4883, label %L_80077c34c, label %L_80077ceac_ft
L_80077ceac_ft:
  ; @pc 0x80077ceac word 0x14000035
  br label %L_80077cf80
L_80077ceb8_ft:
  ; @pc 0x80077ceb8 word 0xf9400d29
  %r4891.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4891 = load i64, ptr %r4891.p, align 8, !alias.scope !3, !noalias !4
  %t4892 = add i64 %r4891, 24
  %gmp4893 = inttoptr i64 %t4892 to ptr
  %gml4894 = load i64, ptr %gmp4893, align 1, !alias.scope !4, !noalias !3
  %wp4895 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4894, ptr %wp4895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cebc word 0xb4ffa4c9
  %r4896.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4896 = load i64, ptr %r4896.p, align 8, !alias.scope !3, !noalias !4
  %cmp4897 = icmp eq i64 %r4896, 0
  br i1 %cmp4897, label %L_80077c354, label %L_80077cec0_ft
L_80077cec0_ft:
  ; @pc 0x80077cec0 word 0x14000030
  br label %L_80077cf80
L_80077cecc_ft:
  ; @pc 0x80077cecc word 0xf9400d08
  %r4905.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4905 = load i64, ptr %r4905.p, align 8, !alias.scope !3, !noalias !4
  %t4906 = add i64 %r4905, 24
  %gmp4907 = inttoptr i64 %t4906 to ptr
  %gml4908 = load i64, ptr %gmp4907, align 1, !alias.scope !4, !noalias !3
  %wp4909 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4908, ptr %wp4909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077ced0 word 0xb4ffa4e8
  %r4910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4910 = load i64, ptr %r4910.p, align 8, !alias.scope !3, !noalias !4
  %cmp4911 = icmp eq i64 %r4910, 0
  br i1 %cmp4911, label %L_80077c36c, label %L_80077ced4_ft
L_80077ced4_ft:
  ; @pc 0x80077ced4 word 0x1400002b
  br label %L_80077cf80
L_80077cefc_ft:
  ; @pc 0x80077cefc word 0x91022008
  %r4941.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4941 = load i64, ptr %r4941.p, align 8, !alias.scope !3, !noalias !4
  %t4942 = add i64 %r4941, 136
  %wp4943 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4942, ptr %wp4943, align 8, !alias.scope !3, !noalias !4
  br label %L_80077cf00
L_80077cf74_ft:
  ; @pc 0x80077cf74 word 0x14000003
  br label %L_80077cf80
L_80077cfd8_ft:
  ; @pc 0x80077cfd8 word 0xf9403929
  %r5087.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5087 = load i64, ptr %r5087.p, align 8, !alias.scope !3, !noalias !4
  %t5088 = add i64 %r5087, 112
  %gmp5089 = inttoptr i64 %t5088 to ptr
  %gml5090 = load i64, ptr %gmp5089, align 1, !alias.scope !4, !noalias !3
  %wp5091 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5090, ptr %wp5091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cfdc word 0xf9003989
  %r5092.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5092 = load i64, ptr %r5092.p, align 8, !alias.scope !3, !noalias !4
  %t5093 = add i64 %r5092, 112
  %r5094.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5094 = load i64, ptr %r5094.p, align 8, !alias.scope !3, !noalias !4
  %gmp5095 = inttoptr i64 %t5093 to ptr
  store i64 %r5094, ptr %gmp5095, align 1, !alias.scope !4, !noalias !3
  br label %L_80077cfe0
L_80077cff0_ft:
  ; @pc 0x80077cff0 word 0xf940050a
  %r5108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5108 = load i64, ptr %r5108.p, align 8, !alias.scope !3, !noalias !4
  %t5109 = add i64 %r5108, 8
  %gmp5110 = inttoptr i64 %t5109 to ptr
  %gml5111 = load i64, ptr %gmp5110, align 1, !alias.scope !4, !noalias !3
  %wp5112 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5111, ptr %wp5112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cff4 word 0xaa0803e9
  %r5113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5113 = load i64, ptr %r5113.p, align 8, !alias.scope !3, !noalias !4
  %t5114 = or i64 0, %r5113
  %wp5115 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5114, ptr %wp5115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077cff8 word 0xb500012a
  %r5116.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5116 = load i64, ptr %r5116.p, align 8, !alias.scope !3, !noalias !4
  %cmp5117 = icmp ne i64 %r5116, 0
  br i1 %cmp5117, label %L_80077d01c, label %L_80077cffc
L_80077d008_ft:
  ; @pc 0x80077d008 word 0xf940010a
  %r5137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5137 = load i64, ptr %r5137.p, align 8, !alias.scope !3, !noalias !4
  %gmp5138 = inttoptr i64 %r5137 to ptr
  %gml5139 = load i64, ptr %gmp5138, align 1, !alias.scope !4, !noalias !3
  %wp5140 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5139, ptr %wp5140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d00c word 0xeb09015f
  %r5141.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5141 = load i64, ptr %r5141.p, align 8, !alias.scope !3, !noalias !4
  %r5142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5142 = load i64, ptr %r5142.p, align 8, !alias.scope !3, !noalias !4
  %t5143 = sub i64 %r5141, %r5142
  %fn5144 = icmp slt i64 %t5143, 0
  %fz5145 = icmp eq i64 %t5143, 0
  %fc5146 = icmp uge i64 %r5141, %r5142
  %fx15147 = xor i64 %r5141, %r5142
  %fx25148 = xor i64 %r5141, %t5143
  %fva5149 = and i64 %fx15147, %fx25148
  %fv5150 = icmp slt i64 %fva5149, 0
  %nz5151 = zext i1 %fn5144 to i64
  %zz5152 = zext i1 %fz5145 to i64
  %cz5153 = zext i1 %fc5146 to i64
  %vz5154 = zext i1 %fv5150 to i64
  %ns5155 = shl i64 %nz5151, 31
  %zs5156 = shl i64 %zz5152, 30
  %cs5157 = shl i64 %cz5153, 29
  %vs5158 = shl i64 %vz5154, 28
  %nzor5159 = or i64 %ns5155, %zs5156
  %cvor5160 = or i64 %cs5157, %vs5158
  %nzcv5161 = or i64 %nzor5159, %cvor5160
  %wp5162 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5161, ptr %wp5162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d010 word 0xaa0803e9
  %r5163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5163 = load i64, ptr %r5163.p, align 8, !alias.scope !3, !noalias !4
  %t5164 = or i64 0, %r5163
  %wp5165 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5164, ptr %wp5165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d014 word 0x54ffff41
  %r5166.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5166 = load i64, ptr %r5166.p, align 8, !alias.scope !3, !noalias !4
  %fsh5168 = lshr i64 %r5166, 30
  %ftr5169 = trunc i64 %fsh5168 to i1
  %cond5167 = xor i1 %ftr5169, true
  br i1 %cond5167, label %L_80077cffc, label %L_80077d018_ft
L_80077d018_ft:
  ; @pc 0x80077d018 word 0x17ffffea
  br label %L_80077cfc0
L_80077d02c_ft:
  ; @pc 0x80077d02c word 0x17fffffc
  br label %L_80077d01c
}

define dso_local void @f_80077d084(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80077d084:
  ; @pc 0x80077d084 word 0xf9400828
  %r5.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = add i64 %r5, 16
  %gmp7 = inttoptr i64 %t6 to ptr
  %gml8 = load i64, ptr %gmp7, align 1, !alias.scope !4, !noalias !3
  %wp9 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8, ptr %wp9, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d088 word 0x927ff90a
  %r10.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10 = load i64, ptr %r10.p, align 8, !alias.scope !3, !noalias !4
  %t11 = and i64 %r10, -2
  %wp12 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t11, ptr %wp12, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d08c word 0xb9400848
  %r13.p = getelementptr inbounds i8, ptr %c, i64 16
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %t14 = add i64 %r13, 8
  %gmp15 = inttoptr i64 %t14 to ptr
  %gml16 = load i32, ptr %gmp15, align 1, !alias.scope !4, !noalias !3
  %c17 = zext i32 %gml16 to i64
  %wp18 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c17, ptr %wp18, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d090 word 0xf9400049
  %r19.p = getelementptr inbounds i8, ptr %c, i64 16
  %r19 = load i64, ptr %r19.p, align 8, !alias.scope !3, !noalias !4
  %gmp20 = inttoptr i64 %r19 to ptr
  %gml21 = load i64, ptr %gmp20, align 1, !alias.scope !4, !noalias !3
  %wp22 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml21, ptr %wp22, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d094 word 0xd341fd2b
  %r23.p = getelementptr inbounds i8, ptr %c, i64 72
  %r23 = load i64, ptr %r23.p, align 8, !alias.scope !3, !noalias !4
  %ror24 = call i64 @llvm.fshr.i64(i64 %r23, i64 %r23, i64 1)
  %t25 = and i64 %ror24, 9223372036854775807
  %wp26 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t25, ptr %wp26, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d098 word 0xf900004b
  %r27.p = getelementptr inbounds i8, ptr %c, i64 16
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %r28.p = getelementptr inbounds i8, ptr %c, i64 88
  %r28 = load i64, ptr %r28.p, align 8, !alias.scope !3, !noalias !4
  %gmp29 = inttoptr i64 %r27 to ptr
  store i64 %r28, ptr %gmp29, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d09c word 0x7100091f
  %r30.p = getelementptr inbounds i8, ptr %c, i64 64
  %r30 = load i64, ptr %r30.p, align 8, !alias.scope !3, !noalias !4
  %c31 = trunc i64 %r30 to i32
  %t32 = sub i32 %c31, 2
  %fn33 = icmp slt i32 %t32, 0
  %fz34 = icmp eq i32 %t32, 0
  %fc35 = icmp uge i32 %c31, 2
  %fx136 = xor i32 %c31, 2
  %fx237 = xor i32 %c31, %t32
  %fva38 = and i32 %fx136, %fx237
  %fv39 = icmp slt i32 %fva38, 0
  %nz40 = zext i1 %fn33 to i64
  %zz41 = zext i1 %fz34 to i64
  %cz42 = zext i1 %fc35 to i64
  %vz43 = zext i1 %fv39 to i64
  %ns44 = shl i64 %nz40, 31
  %zs45 = shl i64 %zz41, 30
  %cs46 = shl i64 %cz42, 29
  %vs47 = shl i64 %vz43, 28
  %nzor48 = or i64 %ns44, %zs45
  %cvor49 = or i64 %cs46, %vs47
  %nzcv50 = or i64 %nzor48, %cvor49
  %wp51 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv50, ptr %wp51, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0a0 word 0x5100050c
  %r52.p = getelementptr inbounds i8, ptr %c, i64 64
  %r52 = load i64, ptr %r52.p, align 8, !alias.scope !3, !noalias !4
  %c53 = trunc i64 %r52 to i32
  %t54 = sub i32 %c53, 1
  %c55 = zext i32 %t54 to i64
  %wp56 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c55, ptr %wp56, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0a4 word 0xfa40a944
  %r57.p = getelementptr inbounds i8, ptr %c, i64 272
  %r57 = load i64, ptr %r57.p, align 8, !alias.scope !3, !noalias !4
  %fsh59 = lshr i64 %r57, 31
  %ftr60 = trunc i64 %fsh59 to i1
  %fsh61 = lshr i64 %r57, 28
  %ftr62 = trunc i64 %fsh61 to i1
  %cond58 = icmp eq i1 %ftr60, %ftr62
  %r63.p = getelementptr inbounds i8, ptr %c, i64 80
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %t64 = sub i64 %r63, 0
  %cmp65 = icmp slt i64 %t64, 0
  %cmp66 = icmp eq i64 %t64, 0
  %cmp67 = icmp uge i64 %r63, 0
  %t68 = xor i64 %r63, 0
  %t69 = xor i64 %r63, %t64
  %t70 = and i64 %t68, %t69
  %cmp71 = icmp slt i64 %t70, 0
  %c72 = zext i1 %cmp65 to i64
  %t73 = shl i64 %c72, 31
  %c74 = zext i1 %cmp66 to i64
  %t75 = shl i64 %c74, 30
  %c76 = zext i1 %cmp67 to i64
  %t77 = shl i64 %c76, 29
  %c78 = zext i1 %cmp71 to i64
  %t79 = shl i64 %c78, 28
  %t80 = or i64 %t77, %t79
  %t81 = or i64 %t73, %t75
  %t82 = or i64 %t81, %t80
  %sel83 = select i1 %cond58, i64 %t82, i64 1073741824
  %wp84 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel83, ptr %wp84, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0a8 word 0xb900084c
  %r85.p = getelementptr inbounds i8, ptr %c, i64 16
  %r85 = load i64, ptr %r85.p, align 8, !alias.scope !3, !noalias !4
  %t86 = add i64 %r85, 8
  %r87.p = getelementptr inbounds i8, ptr %c, i64 96
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %c88 = trunc i64 %r87 to i32
  %gmp89 = inttoptr i64 %t86 to ptr
  store i32 %c88, ptr %gmp89, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d0ac word 0x54001560
  %r90.p = getelementptr inbounds i8, ptr %c, i64 272
  %r90 = load i64, ptr %r90.p, align 8, !alias.scope !3, !noalias !4
  %fsh92 = lshr i64 %r90, 30
  %cond91 = trunc i64 %fsh92 to i1
  br i1 %cond91, label %L_80077d358, label %L_80077d0b0
L_80077d0b0:
  ; @pc 0x80077d0b0 word 0x3940414c
  %r93.p = getelementptr inbounds i8, ptr %c, i64 80
  %r93 = load i64, ptr %r93.p, align 8, !alias.scope !3, !noalias !4
  %t94 = add i64 %r93, 16
  %gmp95 = inttoptr i64 %t94 to ptr
  %gml96 = load i8, ptr %gmp95, align 1, !alias.scope !4, !noalias !3
  %c97 = zext i8 %gml96 to i64
  %wp98 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c97, ptr %wp98, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0b4 word 0x3700152c
  %r99.p = getelementptr inbounds i8, ptr %c, i64 96
  %r99 = load i64, ptr %r99.p, align 8, !alias.scope !3, !noalias !4
  %t100 = and i64 %r99, 1
  %cmp101 = icmp ne i64 %t100, 0
  br i1 %cmp101, label %L_80077d358, label %L_80077d0b8_ft
L_80077d134:
  ; @pc 0x80077d134 word 0xf240017f
  %r275.p = getelementptr inbounds i8, ptr %c, i64 88
  %r275 = load i64, ptr %r275.p, align 8, !alias.scope !3, !noalias !4
  %t276 = and i64 %r275, 1
  %fn277 = icmp slt i64 %t276, 0
  %fz278 = icmp eq i64 %t276, 0
  %nz279 = zext i1 %fn277 to i64
  %zz280 = zext i1 %fz278 to i64
  %ns281 = shl i64 %nz279, 31
  %zs282 = shl i64 %zz280, 30
  %nzcv283 = or i64 %ns281, %zs282
  %wp284 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv283, ptr %wp284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d138 word 0x1a9f17eb
  %t285 = add i32 0, 1
  %r286.p = getelementptr inbounds i8, ptr %c, i64 272
  %r286 = load i64, ptr %r286.p, align 8, !alias.scope !3, !noalias !4
  %fsh288 = lshr i64 %r286, 30
  %ftr289 = trunc i64 %fsh288 to i1
  %cond287 = xor i1 %ftr289, true
  %sel290 = select i1 %cond287, i32 0, i32 %t285
  %c291 = zext i32 %sel290 to i64
  %wp292 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c291, ptr %wp292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d13c word 0xf240013f
  %r293.p = getelementptr inbounds i8, ptr %c, i64 72
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %t294 = and i64 %r293, 1
  %fn295 = icmp slt i64 %t294, 0
  %fz296 = icmp eq i64 %t294, 0
  %nz297 = zext i1 %fn295 to i64
  %zz298 = zext i1 %fz296 to i64
  %ns299 = shl i64 %nz297, 31
  %zs300 = shl i64 %zz298, 30
  %nzcv301 = or i64 %ns299, %zs300
  %wp302 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d140 word 0x1a9f17ec
  %t303 = add i32 0, 1
  %r304.p = getelementptr inbounds i8, ptr %c, i64 272
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %fsh306 = lshr i64 %r304, 30
  %ftr307 = trunc i64 %fsh306 to i1
  %cond305 = xor i1 %ftr307, true
  %sel308 = select i1 %cond305, i32 0, i32 %t303
  %c309 = zext i32 %sel308 to i64
  %wp310 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c309, ptr %wp310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d144 word 0x4a0c016b
  %r311.p = getelementptr inbounds i8, ptr %c, i64 96
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %c312 = trunc i64 %r311 to i32
  %r313.p = getelementptr inbounds i8, ptr %c, i64 88
  %r313 = load i64, ptr %r313.p, align 8, !alias.scope !3, !noalias !4
  %c314 = trunc i64 %r313 to i32
  %t315 = xor i32 %c314, %c312
  %c316 = zext i32 %t315 to i64
  %wp317 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c316, ptr %wp317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d148 word 0x3700014b
  %r318.p = getelementptr inbounds i8, ptr %c, i64 88
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %t319 = and i64 %r318, 1
  %cmp320 = icmp ne i64 %t319, 0
  br i1 %cmp320, label %L_80077d170, label %L_80077d14c_ft
L_80077d168:
  ; @pc 0x80077d168 word 0xf9000528
  %r346.p = getelementptr inbounds i8, ptr %c, i64 72
  %r346 = load i64, ptr %r346.p, align 8, !alias.scope !3, !noalias !4
  %t347 = add i64 %r346, 8
  %r348.p = getelementptr inbounds i8, ptr %c, i64 64
  %r348 = load i64, ptr %r348.p, align 8, !alias.scope !3, !noalias !4
  %gmp349 = inttoptr i64 %t347 to ptr
  store i64 %r348, ptr %gmp349, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d16c word 0x14000031
  br label %L_80077d230
L_80077d170:
  ; @pc 0x80077d170 word 0x360007e9
  %r350.p = getelementptr inbounds i8, ptr %c, i64 72
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %t351 = and i64 %r350, 1
  %cmp352 = icmp eq i64 %t351, 0
  br i1 %cmp352, label %L_80077d26c, label %L_80077d174_ft
L_80077d194:
  ; @pc 0x80077d194 word 0xf900012a
  %r384.p = getelementptr inbounds i8, ptr %c, i64 72
  %r384 = load i64, ptr %r384.p, align 8, !alias.scope !3, !noalias !4
  %r385.p = getelementptr inbounds i8, ptr %c, i64 80
  %r385 = load i64, ptr %r385.p, align 8, !alias.scope !3, !noalias !4
  %gmp386 = inttoptr i64 %r384 to ptr
  store i64 %r385, ptr %gmp386, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d198 word 0xf940094b
  %r387.p = getelementptr inbounds i8, ptr %c, i64 80
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %t388 = add i64 %r387, 16
  %gmp389 = inttoptr i64 %t388 to ptr
  %gml390 = load i64, ptr %gmp389, align 1, !alias.scope !4, !noalias !3
  %wp391 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml390, ptr %wp391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d19c word 0x9240016b
  %r392.p = getelementptr inbounds i8, ptr %c, i64 88
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %t393 = and i64 %r392, 1
  %wp394 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t393, ptr %wp394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1a0 word 0xaa09016b
  %r395.p = getelementptr inbounds i8, ptr %c, i64 72
  %r395 = load i64, ptr %r395.p, align 8, !alias.scope !3, !noalias !4
  %r396.p = getelementptr inbounds i8, ptr %c, i64 88
  %r396 = load i64, ptr %r396.p, align 8, !alias.scope !3, !noalias !4
  %t397 = or i64 %r396, %r395
  %wp398 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t397, ptr %wp398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1a4 word 0xf900094b
  %r399.p = getelementptr inbounds i8, ptr %c, i64 80
  %r399 = load i64, ptr %r399.p, align 8, !alias.scope !3, !noalias !4
  %t400 = add i64 %r399, 16
  %r401.p = getelementptr inbounds i8, ptr %c, i64 88
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %gmp402 = inttoptr i64 %t400 to ptr
  store i64 %r401, ptr %gmp402, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d1a8 word 0xb4000f48
  %r403.p = getelementptr inbounds i8, ptr %c, i64 64
  %r403 = load i64, ptr %r403.p, align 8, !alias.scope !3, !noalias !4
  %cmp404 = icmp eq i64 %r403, 0
  br i1 %cmp404, label %L_80077d390, label %L_80077d1ac_ft
L_80077d1c8:
  ; @pc 0x80077d1c8 word 0xf900092b
  %r458.p = getelementptr inbounds i8, ptr %c, i64 72
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %t459 = add i64 %r458, 16
  %r460.p = getelementptr inbounds i8, ptr %c, i64 88
  %r460 = load i64, ptr %r460.p, align 8, !alias.scope !3, !noalias !4
  %gmp461 = inttoptr i64 %t459 to ptr
  store i64 %r460, ptr %gmp461, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d1cc word 0xf940094b
  %r462.p = getelementptr inbounds i8, ptr %c, i64 80
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %t463 = add i64 %r462, 16
  %gmp464 = inttoptr i64 %t463 to ptr
  %gml465 = load i64, ptr %gmp464, align 1, !alias.scope !4, !noalias !3
  %wp466 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml465, ptr %wp466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1d0 word 0x9240016b
  %r467.p = getelementptr inbounds i8, ptr %c, i64 88
  %r467 = load i64, ptr %r467.p, align 8, !alias.scope !3, !noalias !4
  %t468 = and i64 %r467, 1
  %wp469 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t468, ptr %wp469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1d4 word 0xaa09016b
  %r470.p = getelementptr inbounds i8, ptr %c, i64 72
  %r470 = load i64, ptr %r470.p, align 8, !alias.scope !3, !noalias !4
  %r471.p = getelementptr inbounds i8, ptr %c, i64 88
  %r471 = load i64, ptr %r471.p, align 8, !alias.scope !3, !noalias !4
  %t472 = or i64 %r471, %r470
  %wp473 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t472, ptr %wp473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1d8 word 0xf900094b
  %r474.p = getelementptr inbounds i8, ptr %c, i64 80
  %r474 = load i64, ptr %r474.p, align 8, !alias.scope !3, !noalias !4
  %t475 = add i64 %r474, 16
  %r476.p = getelementptr inbounds i8, ptr %c, i64 88
  %r476 = load i64, ptr %r476.p, align 8, !alias.scope !3, !noalias !4
  %gmp477 = inttoptr i64 %t475 to ptr
  store i64 %r476, ptr %gmp477, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d1dc word 0xf940090a
  %r478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %t479 = add i64 %r478, 16
  %gmp480 = inttoptr i64 %t479 to ptr
  %gml481 = load i64, ptr %gmp480, align 1, !alias.scope !4, !noalias !3
  %wp482 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml481, ptr %wp482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1e0 word 0x927ff94b
  %r483.p = getelementptr inbounds i8, ptr %c, i64 80
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %t484 = and i64 %r483, -2
  %wp485 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t484, ptr %wp485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1e4 word 0xf940010a
  %r486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %gmp487 = inttoptr i64 %r486 to ptr
  %gml488 = load i64, ptr %gmp487, align 1, !alias.scope !4, !noalias !3
  %wp489 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml488, ptr %wp489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1e8 word 0xf940054c
  %r490.p = getelementptr inbounds i8, ptr %c, i64 80
  %r490 = load i64, ptr %r490.p, align 8, !alias.scope !3, !noalias !4
  %t491 = add i64 %r490, 8
  %gmp492 = inttoptr i64 %t491 to ptr
  %gml493 = load i64, ptr %gmp492, align 1, !alias.scope !4, !noalias !3
  %wp494 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml493, ptr %wp494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1ec word 0xf900010c
  %r495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %r496.p = getelementptr inbounds i8, ptr %c, i64 96
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %gmp497 = inttoptr i64 %r495 to ptr
  store i64 %r496, ptr %gmp497, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d1f0 word 0xb40000ac
  %r498.p = getelementptr inbounds i8, ptr %c, i64 96
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %cmp499 = icmp eq i64 %r498, 0
  br i1 %cmp499, label %L_80077d204, label %L_80077d1f4_ft
L_80077d204:
  ; @pc 0x80077d204 word 0xf9000548
  %r516.p = getelementptr inbounds i8, ptr %c, i64 80
  %r516 = load i64, ptr %r516.p, align 8, !alias.scope !3, !noalias !4
  %t517 = add i64 %r516, 8
  %r518.p = getelementptr inbounds i8, ptr %c, i64 64
  %r518 = load i64, ptr %r518.p, align 8, !alias.scope !3, !noalias !4
  %gmp519 = inttoptr i64 %t517 to ptr
  store i64 %r518, ptr %gmp519, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d208 word 0x1400003d
  br label %L_80077d2fc
L_80077d20c:
  ; @pc 0x80077d20c word 0xf9400509
  %r520.p = getelementptr inbounds i8, ptr %c, i64 64
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %t521 = add i64 %r520, 8
  %gmp522 = inttoptr i64 %t521 to ptr
  %gml523 = load i64, ptr %gmp522, align 1, !alias.scope !4, !noalias !3
  %wp524 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml523, ptr %wp524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d210 word 0xf940012b
  %r525.p = getelementptr inbounds i8, ptr %c, i64 72
  %r525 = load i64, ptr %r525.p, align 8, !alias.scope !3, !noalias !4
  %gmp526 = inttoptr i64 %r525 to ptr
  %gml527 = load i64, ptr %gmp526, align 1, !alias.scope !4, !noalias !3
  %wp528 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml527, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d214 word 0xf900050b
  %r529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %t530 = add i64 %r529, 8
  %r531.p = getelementptr inbounds i8, ptr %c, i64 88
  %r531 = load i64, ptr %r531.p, align 8, !alias.scope !3, !noalias !4
  %gmp532 = inttoptr i64 %t530 to ptr
  store i64 %r531, ptr %gmp532, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d218 word 0xb40000ab
  %r533.p = getelementptr inbounds i8, ptr %c, i64 88
  %r533 = load i64, ptr %r533.p, align 8, !alias.scope !3, !noalias !4
  %cmp534 = icmp eq i64 %r533, 0
  br i1 %cmp534, label %L_80077d22c, label %L_80077d21c_ft
L_80077d22c:
  ; @pc 0x80077d22c word 0xf9000128
  %r551.p = getelementptr inbounds i8, ptr %c, i64 72
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %r552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r552 = load i64, ptr %r552.p, align 8, !alias.scope !3, !noalias !4
  %gmp553 = inttoptr i64 %r551 to ptr
  store i64 %r552, ptr %gmp553, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d230
L_80077d230:
  ; @pc 0x80077d230 word 0xf940090b
  %r554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %t555 = add i64 %r554, 16
  %gmp556 = inttoptr i64 %t555 to ptr
  %gml557 = load i64, ptr %gmp556, align 1, !alias.scope !4, !noalias !3
  %wp558 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml557, ptr %wp558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d234 word 0x9240016b
  %r559.p = getelementptr inbounds i8, ptr %c, i64 88
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = and i64 %r559, 1
  %wp561 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t560, ptr %wp561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d238 word 0xaa09016b
  %r562.p = getelementptr inbounds i8, ptr %c, i64 72
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %r563.p = getelementptr inbounds i8, ptr %c, i64 88
  %r563 = load i64, ptr %r563.p, align 8, !alias.scope !3, !noalias !4
  %t564 = or i64 %r563, %r562
  %wp565 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t564, ptr %wp565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d23c word 0xf900090b
  %r566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %t567 = add i64 %r566, 16
  %r568.p = getelementptr inbounds i8, ptr %c, i64 88
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %gmp569 = inttoptr i64 %t567 to ptr
  store i64 %r568, ptr %gmp569, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d240 word 0xb4000a0a
  %r570.p = getelementptr inbounds i8, ptr %c, i64 80
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %cmp571 = icmp eq i64 %r570, 0
  br i1 %cmp571, label %L_80077d380, label %L_80077d244_ft
L_80077d260:
  ; @pc 0x80077d260 word 0xf900092a
  %r625.p = getelementptr inbounds i8, ptr %c, i64 72
  %r625 = load i64, ptr %r625.p, align 8, !alias.scope !3, !noalias !4
  %t626 = add i64 %r625, 16
  %r627.p = getelementptr inbounds i8, ptr %c, i64 80
  %r627 = load i64, ptr %r627.p, align 8, !alias.scope !3, !noalias !4
  %gmp628 = inttoptr i64 %t626 to ptr
  store i64 %r627, ptr %gmp628, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d264 word 0xaa0903ea
  %r629.p = getelementptr inbounds i8, ptr %c, i64 72
  %r629 = load i64, ptr %r629.p, align 8, !alias.scope !3, !noalias !4
  %t630 = or i64 0, %r629
  %wp631 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t630, ptr %wp631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d268 word 0x14000032
  br label %L_80077d330
L_80077d26c:
  ; @pc 0x80077d26c word 0xf9400149
  %r632.p = getelementptr inbounds i8, ptr %c, i64 80
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %gmp633 = inttoptr i64 %r632 to ptr
  %gml634 = load i64, ptr %gmp633, align 1, !alias.scope !4, !noalias !3
  %wp635 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml634, ptr %wp635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d270 word 0xf940052b
  %r636.p = getelementptr inbounds i8, ptr %c, i64 72
  %r636 = load i64, ptr %r636.p, align 8, !alias.scope !3, !noalias !4
  %t637 = add i64 %r636, 8
  %gmp638 = inttoptr i64 %t637 to ptr
  %gml639 = load i64, ptr %gmp638, align 1, !alias.scope !4, !noalias !3
  %wp640 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml639, ptr %wp640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d274 word 0xf900014b
  %r641.p = getelementptr inbounds i8, ptr %c, i64 80
  %r641 = load i64, ptr %r641.p, align 8, !alias.scope !3, !noalias !4
  %r642.p = getelementptr inbounds i8, ptr %c, i64 88
  %r642 = load i64, ptr %r642.p, align 8, !alias.scope !3, !noalias !4
  %gmp643 = inttoptr i64 %r641 to ptr
  store i64 %r642, ptr %gmp643, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d278 word 0xb40000ab
  %r644.p = getelementptr inbounds i8, ptr %c, i64 88
  %r644 = load i64, ptr %r644.p, align 8, !alias.scope !3, !noalias !4
  %cmp645 = icmp eq i64 %r644, 0
  br i1 %cmp645, label %L_80077d28c, label %L_80077d27c_ft
L_80077d28c:
  ; @pc 0x80077d28c word 0xf900052a
  %r662.p = getelementptr inbounds i8, ptr %c, i64 72
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %t663 = add i64 %r662, 8
  %r664.p = getelementptr inbounds i8, ptr %c, i64 80
  %r664 = load i64, ptr %r664.p, align 8, !alias.scope !3, !noalias !4
  %gmp665 = inttoptr i64 %t663 to ptr
  store i64 %r664, ptr %gmp665, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d290 word 0xf940094b
  %r666.p = getelementptr inbounds i8, ptr %c, i64 80
  %r666 = load i64, ptr %r666.p, align 8, !alias.scope !3, !noalias !4
  %t667 = add i64 %r666, 16
  %gmp668 = inttoptr i64 %t667 to ptr
  %gml669 = load i64, ptr %gmp668, align 1, !alias.scope !4, !noalias !3
  %wp670 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml669, ptr %wp670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d294 word 0x9240016b
  %r671.p = getelementptr inbounds i8, ptr %c, i64 88
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %t672 = and i64 %r671, 1
  %wp673 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t672, ptr %wp673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d298 word 0xaa09016b
  %r674.p = getelementptr inbounds i8, ptr %c, i64 72
  %r674 = load i64, ptr %r674.p, align 8, !alias.scope !3, !noalias !4
  %r675.p = getelementptr inbounds i8, ptr %c, i64 88
  %r675 = load i64, ptr %r675.p, align 8, !alias.scope !3, !noalias !4
  %t676 = or i64 %r675, %r674
  %wp677 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t676, ptr %wp677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d29c word 0xf900094b
  %r678.p = getelementptr inbounds i8, ptr %c, i64 80
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %t679 = add i64 %r678, 16
  %r680.p = getelementptr inbounds i8, ptr %c, i64 88
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %gmp681 = inttoptr i64 %t679 to ptr
  store i64 %r680, ptr %gmp681, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d2a0 word 0xb4000808
  %r682.p = getelementptr inbounds i8, ptr %c, i64 64
  %r682 = load i64, ptr %r682.p, align 8, !alias.scope !3, !noalias !4
  %cmp683 = icmp eq i64 %r682, 0
  br i1 %cmp683, label %L_80077d3a0, label %L_80077d2a4_ft
L_80077d2c0:
  ; @pc 0x80077d2c0 word 0xf900092b
  %r737.p = getelementptr inbounds i8, ptr %c, i64 72
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %t738 = add i64 %r737, 16
  %r739.p = getelementptr inbounds i8, ptr %c, i64 88
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %gmp740 = inttoptr i64 %t738 to ptr
  store i64 %r739, ptr %gmp740, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d2c4 word 0xf940094b
  %r741.p = getelementptr inbounds i8, ptr %c, i64 80
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %t742 = add i64 %r741, 16
  %gmp743 = inttoptr i64 %t742 to ptr
  %gml744 = load i64, ptr %gmp743, align 1, !alias.scope !4, !noalias !3
  %wp745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2c8 word 0x9240016b
  %r746.p = getelementptr inbounds i8, ptr %c, i64 88
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %t747 = and i64 %r746, 1
  %wp748 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t747, ptr %wp748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2cc word 0xaa09016b
  %r749.p = getelementptr inbounds i8, ptr %c, i64 72
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %r750.p = getelementptr inbounds i8, ptr %c, i64 88
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %t751 = or i64 %r750, %r749
  %wp752 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t751, ptr %wp752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2d0 word 0xf900094b
  %r753.p = getelementptr inbounds i8, ptr %c, i64 80
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %t754 = add i64 %r753, 16
  %r755.p = getelementptr inbounds i8, ptr %c, i64 88
  %r755 = load i64, ptr %r755.p, align 8, !alias.scope !3, !noalias !4
  %gmp756 = inttoptr i64 %t754 to ptr
  store i64 %r755, ptr %gmp756, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d2d4 word 0xa940ad0a
  %r757.p = getelementptr inbounds i8, ptr %c, i64 64
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %t758 = add i64 %r757, 8
  %t759 = add i64 %t758, 8
  %gmp760 = inttoptr i64 %t758 to ptr
  %gml761 = load i64, ptr %gmp760, align 1, !alias.scope !4, !noalias !3
  %gmp762 = inttoptr i64 %t759 to ptr
  %gml763 = load i64, ptr %gmp762, align 1, !alias.scope !4, !noalias !3
  %wp764 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml761, ptr %wp764, align 8, !alias.scope !3, !noalias !4
  %wp765 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml763, ptr %wp765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2d8 word 0xf940014c
  %r766.p = getelementptr inbounds i8, ptr %c, i64 80
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %gmp767 = inttoptr i64 %r766 to ptr
  %gml768 = load i64, ptr %gmp767, align 1, !alias.scope !4, !noalias !3
  %wp769 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml768, ptr %wp769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2dc word 0x927ff96b
  %r770.p = getelementptr inbounds i8, ptr %c, i64 88
  %r770 = load i64, ptr %r770.p, align 8, !alias.scope !3, !noalias !4
  %t771 = and i64 %r770, -2
  %wp772 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t771, ptr %wp772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2e0 word 0xf900050c
  %r773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r773 = load i64, ptr %r773.p, align 8, !alias.scope !3, !noalias !4
  %t774 = add i64 %r773, 8
  %r775.p = getelementptr inbounds i8, ptr %c, i64 96
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %gmp776 = inttoptr i64 %t774 to ptr
  store i64 %r775, ptr %gmp776, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d2e4 word 0xb40000ac
  %r777.p = getelementptr inbounds i8, ptr %c, i64 96
  %r777 = load i64, ptr %r777.p, align 8, !alias.scope !3, !noalias !4
  %cmp778 = icmp eq i64 %r777, 0
  br i1 %cmp778, label %L_80077d2f8, label %L_80077d2e8_ft
L_80077d2f8:
  ; @pc 0x80077d2f8 word 0xf9000148
  %r795.p = getelementptr inbounds i8, ptr %c, i64 80
  %r795 = load i64, ptr %r795.p, align 8, !alias.scope !3, !noalias !4
  %r796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r796 = load i64, ptr %r796.p, align 8, !alias.scope !3, !noalias !4
  %gmp797 = inttoptr i64 %r795 to ptr
  store i64 %r796, ptr %gmp797, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d2fc
L_80077d2fc:
  ; @pc 0x80077d2fc word 0xf940090c
  %r798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r798 = load i64, ptr %r798.p, align 8, !alias.scope !3, !noalias !4
  %t799 = add i64 %r798, 16
  %gmp800 = inttoptr i64 %t799 to ptr
  %gml801 = load i64, ptr %gmp800, align 1, !alias.scope !4, !noalias !3
  %wp802 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml801, ptr %wp802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d300 word 0x9240018c
  %r803.p = getelementptr inbounds i8, ptr %c, i64 96
  %r803 = load i64, ptr %r803.p, align 8, !alias.scope !3, !noalias !4
  %t804 = and i64 %r803, 1
  %wp805 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t804, ptr %wp805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d304 word 0xaa0a018c
  %r806.p = getelementptr inbounds i8, ptr %c, i64 80
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %r807.p = getelementptr inbounds i8, ptr %c, i64 96
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %t808 = or i64 %r807, %r806
  %wp809 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t808, ptr %wp809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d308 word 0xf900090c
  %r810.p = getelementptr inbounds i8, ptr %c, i64 64
  %r810 = load i64, ptr %r810.p, align 8, !alias.scope !3, !noalias !4
  %t811 = add i64 %r810, 16
  %r812.p = getelementptr inbounds i8, ptr %c, i64 96
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %gmp813 = inttoptr i64 %t811 to ptr
  store i64 %r812, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d30c word 0xb400032b
  %r814.p = getelementptr inbounds i8, ptr %c, i64 88
  %r814 = load i64, ptr %r814.p, align 8, !alias.scope !3, !noalias !4
  %cmp815 = icmp eq i64 %r814, 0
  br i1 %cmp815, label %L_80077d370, label %L_80077d310_ft
L_80077d32c:
  ; @pc 0x80077d32c word 0xf900094b
  %r869.p = getelementptr inbounds i8, ptr %c, i64 80
  %r869 = load i64, ptr %r869.p, align 8, !alias.scope !3, !noalias !4
  %t870 = add i64 %r869, 16
  %r871.p = getelementptr inbounds i8, ptr %c, i64 88
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %gmp872 = inttoptr i64 %t870 to ptr
  store i64 %r871, ptr %gmp872, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d330
L_80077d330:
  ; @pc 0x80077d330 word 0xf940090b
  %r873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %t874 = add i64 %r873, 16
  %gmp875 = inttoptr i64 %t874 to ptr
  %gml876 = load i64, ptr %gmp875, align 1, !alias.scope !4, !noalias !3
  %wp877 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml876, ptr %wp877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d334 word 0x9240016b
  %r878.p = getelementptr inbounds i8, ptr %c, i64 88
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %t879 = and i64 %r878, 1
  %wp880 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d338 word 0xaa0a016a
  %r881.p = getelementptr inbounds i8, ptr %c, i64 80
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %r882.p = getelementptr inbounds i8, ptr %c, i64 88
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %t883 = or i64 %r882, %r881
  %wp884 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d33c word 0xf900090a
  %r885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %t886 = add i64 %r885, 16
  %r887.p = getelementptr inbounds i8, ptr %c, i64 80
  %r887 = load i64, ptr %r887.p, align 8, !alias.scope !3, !noalias !4
  %gmp888 = inttoptr i64 %t886 to ptr
  store i64 %r887, ptr %gmp888, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d340 word 0xf940092a
  %r889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %t890 = add i64 %r889, 16
  %gmp891 = inttoptr i64 %t890 to ptr
  %gml892 = load i64, ptr %gmp891, align 1, !alias.scope !4, !noalias !3
  %wp893 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml892, ptr %wp893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d344 word 0xb240014a
  %r894.p = getelementptr inbounds i8, ptr %c, i64 80
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %t895 = or i64 %r894, 1
  %wp896 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t895, ptr %wp896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d348 word 0xf900092a
  %r897.p = getelementptr inbounds i8, ptr %c, i64 72
  %r897 = load i64, ptr %r897.p, align 8, !alias.scope !3, !noalias !4
  %t898 = add i64 %r897, 16
  %r899.p = getelementptr inbounds i8, ptr %c, i64 80
  %r899 = load i64, ptr %r899.p, align 8, !alias.scope !3, !noalias !4
  %gmp900 = inttoptr i64 %t898 to ptr
  store i64 %r899, ptr %gmp900, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d34c word 0xf9400909
  %r901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = add i64 %r901, 16
  %gmp903 = inttoptr i64 %t902 to ptr
  %gml904 = load i64, ptr %gmp903, align 1, !alias.scope !4, !noalias !3
  %wp905 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml904, ptr %wp905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d350 word 0x927ff929
  %r906.p = getelementptr inbounds i8, ptr %c, i64 72
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %t907 = and i64 %r906, -2
  %wp908 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t907, ptr %wp908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d354 word 0xf9000909
  %r909.p = getelementptr inbounds i8, ptr %c, i64 64
  %r909 = load i64, ptr %r909.p, align 8, !alias.scope !3, !noalias !4
  %t910 = add i64 %r909, 16
  %r911.p = getelementptr inbounds i8, ptr %c, i64 72
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %gmp912 = inttoptr i64 %t910 to ptr
  store i64 %r911, ptr %gmp912, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d358
L_80077d358:
  ; @pc 0x80077d358 word 0xd65f03c0
  ret void
L_80077d35c:
  ; @pc 0x80077d35c word 0xf940096c
  %r913.p = getelementptr inbounds i8, ptr %c, i64 88
  %r913 = load i64, ptr %r913.p, align 8, !alias.scope !3, !noalias !4
  %t914 = add i64 %r913, 16
  %gmp915 = inttoptr i64 %t914 to ptr
  %gml916 = load i64, ptr %gmp915, align 1, !alias.scope !4, !noalias !3
  %wp917 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml916, ptr %wp917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d360 word 0x9240018c
  %r918.p = getelementptr inbounds i8, ptr %c, i64 96
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %t919 = and i64 %r918, 1
  %wp920 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t919, ptr %wp920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d364 word 0xaa08018c
  %r921.p = getelementptr inbounds i8, ptr %c, i64 64
  %r921 = load i64, ptr %r921.p, align 8, !alias.scope !3, !noalias !4
  %r922.p = getelementptr inbounds i8, ptr %c, i64 96
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %t923 = or i64 %r922, %r921
  %wp924 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t923, ptr %wp924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d368 word 0xf900096c
  %r925.p = getelementptr inbounds i8, ptr %c, i64 88
  %r925 = load i64, ptr %r925.p, align 8, !alias.scope !3, !noalias !4
  %t926 = add i64 %r925, 16
  %r927.p = getelementptr inbounds i8, ptr %c, i64 96
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %gmp928 = inttoptr i64 %t926 to ptr
  store i64 %r927, ptr %gmp928, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d36c word 0x17ffff7f
  br label %L_80077d168
L_80077d370:
  ; @pc 0x80077d370 word 0xf900000a
  %r929.p = getelementptr inbounds i8, ptr %c, i64 0
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %r930.p = getelementptr inbounds i8, ptr %c, i64 80
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %gmp931 = inttoptr i64 %r929 to ptr
  store i64 %r930, ptr %gmp931, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d374 word 0xf940094b
  %r932.p = getelementptr inbounds i8, ptr %c, i64 80
  %r932 = load i64, ptr %r932.p, align 8, !alias.scope !3, !noalias !4
  %t933 = add i64 %r932, 16
  %gmp934 = inttoptr i64 %t933 to ptr
  %gml935 = load i64, ptr %gmp934, align 1, !alias.scope !4, !noalias !3
  %wp936 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml935, ptr %wp936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d378 word 0x9240016b
  %r937.p = getelementptr inbounds i8, ptr %c, i64 88
  %r937 = load i64, ptr %r937.p, align 8, !alias.scope !3, !noalias !4
  %t938 = and i64 %r937, 1
  %wp939 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t938, ptr %wp939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d37c word 0x17ffffec
  br label %L_80077d32c
L_80077d380:
  ; @pc 0x80077d380 word 0xf9000009
  %r940.p = getelementptr inbounds i8, ptr %c, i64 0
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %r941.p = getelementptr inbounds i8, ptr %c, i64 72
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %gmp942 = inttoptr i64 %r940 to ptr
  store i64 %r941, ptr %gmp942, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d384 word 0xf940092a
  %r943.p = getelementptr inbounds i8, ptr %c, i64 72
  %r943 = load i64, ptr %r943.p, align 8, !alias.scope !3, !noalias !4
  %t944 = add i64 %r943, 16
  %gmp945 = inttoptr i64 %t944 to ptr
  %gml946 = load i64, ptr %gmp945, align 1, !alias.scope !4, !noalias !3
  %wp947 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml946, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d388 word 0x9240014a
  %r948.p = getelementptr inbounds i8, ptr %c, i64 80
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %t949 = and i64 %r948, 1
  %wp950 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t949, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d38c word 0x17ffffb5
  br label %L_80077d260
L_80077d390:
  ; @pc 0x80077d390 word 0xf9000009
  %r951.p = getelementptr inbounds i8, ptr %c, i64 0
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %r952.p = getelementptr inbounds i8, ptr %c, i64 72
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %gmp953 = inttoptr i64 %r951 to ptr
  store i64 %r952, ptr %gmp953, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d394 word 0xf940092b
  %r954.p = getelementptr inbounds i8, ptr %c, i64 72
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %t955 = add i64 %r954, 16
  %gmp956 = inttoptr i64 %t955 to ptr
  %gml957 = load i64, ptr %gmp956, align 1, !alias.scope !4, !noalias !3
  %wp958 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml957, ptr %wp958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d398 word 0x9240016b
  %r959.p = getelementptr inbounds i8, ptr %c, i64 88
  %r959 = load i64, ptr %r959.p, align 8, !alias.scope !3, !noalias !4
  %t960 = and i64 %r959, 1
  %wp961 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t960, ptr %wp961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d39c word 0x17ffff8b
  br label %L_80077d1c8
L_80077d3a0:
  ; @pc 0x80077d3a0 word 0xf9000009
  %r962.p = getelementptr inbounds i8, ptr %c, i64 0
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %r963.p = getelementptr inbounds i8, ptr %c, i64 72
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %gmp964 = inttoptr i64 %r962 to ptr
  store i64 %r963, ptr %gmp964, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d3a4 word 0xf940092b
  %r965.p = getelementptr inbounds i8, ptr %c, i64 72
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %t966 = add i64 %r965, 16
  %gmp967 = inttoptr i64 %t966 to ptr
  %gml968 = load i64, ptr %gmp967, align 1, !alias.scope !4, !noalias !3
  %wp969 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d3a8 word 0x9240016b
  %r970.p = getelementptr inbounds i8, ptr %c, i64 88
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = and i64 %r970, 1
  %wp972 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t971, ptr %wp972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d3ac word 0x17ffffc5
  br label %L_80077d2c0
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367590532, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077d084
L_80077d0b8_ft:
  ; @pc 0x80077d0b8 word 0xd341fd6d
  %r102.p = getelementptr inbounds i8, ptr %c, i64 88
  %r102 = load i64, ptr %r102.p, align 8, !alias.scope !3, !noalias !4
  %ror103 = call i64 @llvm.fshr.i64(i64 %r102, i64 %r102, i64 1)
  %t104 = and i64 %ror103, 9223372036854775807
  %wp105 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t104, ptr %wp105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0bc word 0x51000908
  %r106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r106 = load i64, ptr %r106.p, align 8, !alias.scope !3, !noalias !4
  %c107 = trunc i64 %r106 to i32
  %t108 = sub i32 %c107, 2
  %c109 = zext i32 %t108 to i64
  %wp110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c109, ptr %wp110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0c0 word 0xf900004d
  %r111.p = getelementptr inbounds i8, ptr %c, i64 16
  %r111 = load i64, ptr %r111.p, align 8, !alias.scope !3, !noalias !4
  %r112.p = getelementptr inbounds i8, ptr %c, i64 104
  %r112 = load i64, ptr %r112.p, align 8, !alias.scope !3, !noalias !4
  %gmp113 = inttoptr i64 %r111 to ptr
  store i64 %r112, ptr %gmp113, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d0c4 word 0xb9000848
  %r114.p = getelementptr inbounds i8, ptr %c, i64 16
  %r114 = load i64, ptr %r114.p, align 8, !alias.scope !3, !noalias !4
  %t115 = add i64 %r114, 8
  %r116.p = getelementptr inbounds i8, ptr %c, i64 64
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %c117 = trunc i64 %r116 to i32
  %gmp118 = inttoptr i64 %t115 to ptr
  store i32 %c117, ptr %gmp118, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d0c8 word 0xf240017f
  %r119.p = getelementptr inbounds i8, ptr %c, i64 88
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %t120 = and i64 %r119, 1
  %fn121 = icmp slt i64 %t120, 0
  %fz122 = icmp eq i64 %t120, 0
  %nz123 = zext i1 %fn121 to i64
  %zz124 = zext i1 %fz122 to i64
  %ns125 = shl i64 %nz123, 31
  %zs126 = shl i64 %zz124, 30
  %nzcv127 = or i64 %ns125, %zs126
  %wp128 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0cc word 0x1a9f17ec
  %t129 = add i32 0, 1
  %r130.p = getelementptr inbounds i8, ptr %c, i64 272
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %fsh132 = lshr i64 %r130, 30
  %ftr133 = trunc i64 %fsh132 to i1
  %cond131 = xor i1 %ftr133, true
  %sel134 = select i1 %cond131, i32 0, i32 %t129
  %c135 = zext i32 %sel134 to i64
  %wp136 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c135, ptr %wp136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0d0 word 0xf940094d
  %r137.p = getelementptr inbounds i8, ptr %c, i64 80
  %r137 = load i64, ptr %r137.p, align 8, !alias.scope !3, !noalias !4
  %t138 = add i64 %r137, 16
  %gmp139 = inttoptr i64 %t138 to ptr
  %gml140 = load i64, ptr %gmp139, align 1, !alias.scope !4, !noalias !3
  %wp141 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml140, ptr %wp141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0d4 word 0x927ff9a8
  %r142.p = getelementptr inbounds i8, ptr %c, i64 104
  %r142 = load i64, ptr %r142.p, align 8, !alias.scope !3, !noalias !4
  %t143 = and i64 %r142, -2
  %wp144 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t143, ptr %wp144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0d8 word 0xf86c590c
  %r145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %r146.p = getelementptr inbounds i8, ptr %c, i64 96
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %c147 = trunc i64 %r146 to i32
  %c148 = zext i32 %c147 to i64
  %t149 = shl i64 %c148, 3
  %t150 = add i64 %r145, %t149
  %gmp151 = inttoptr i64 %t150 to ptr
  %gml152 = load i64, ptr %gmp151, align 1, !alias.scope !4, !noalias !3
  %wp153 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0dc word 0xb40002cc
  %r154.p = getelementptr inbounds i8, ptr %c, i64 96
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %cmp155 = icmp eq i64 %r154, 0
  br i1 %cmp155, label %L_80077d134, label %L_80077d0e0_ft
L_80077d0e0_ft:
  ; @pc 0x80077d0e0 word 0x3940418e
  %r156.p = getelementptr inbounds i8, ptr %c, i64 96
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %t157 = add i64 %r156, 16
  %gmp158 = inttoptr i64 %t157 to ptr
  %gml159 = load i8, ptr %gmp158, align 1, !alias.scope !4, !noalias !3
  %c160 = zext i8 %gml159 to i64
  %wp161 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c160, ptr %wp161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0e4 word 0x3700028e
  %r162.p = getelementptr inbounds i8, ptr %c, i64 112
  %r162 = load i64, ptr %r162.p, align 8, !alias.scope !3, !noalias !4
  %t163 = and i64 %r162, 1
  %cmp164 = icmp ne i64 %t163, 0
  br i1 %cmp164, label %L_80077d134, label %L_80077d0e8_ft
L_80077d0e8_ft:
  ; @pc 0x80077d0e8 word 0xb24001a9
  %r165.p = getelementptr inbounds i8, ptr %c, i64 104
  %r165 = load i64, ptr %r165.p, align 8, !alias.scope !3, !noalias !4
  %t166 = or i64 %r165, 1
  %wp167 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t166, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0ec word 0xf9000949
  %r168.p = getelementptr inbounds i8, ptr %c, i64 80
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %t169 = add i64 %r168, 16
  %r170.p = getelementptr inbounds i8, ptr %c, i64 72
  %r170 = load i64, ptr %r170.p, align 8, !alias.scope !3, !noalias !4
  %gmp171 = inttoptr i64 %t169 to ptr
  store i64 %r170, ptr %gmp171, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d0f0 word 0xf9400989
  %r172.p = getelementptr inbounds i8, ptr %c, i64 96
  %r172 = load i64, ptr %r172.p, align 8, !alias.scope !3, !noalias !4
  %t173 = add i64 %r172, 16
  %gmp174 = inttoptr i64 %t173 to ptr
  %gml175 = load i64, ptr %gmp174, align 1, !alias.scope !4, !noalias !3
  %wp176 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml175, ptr %wp176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0f4 word 0xb2400129
  %r177.p = getelementptr inbounds i8, ptr %c, i64 72
  %r177 = load i64, ptr %r177.p, align 8, !alias.scope !3, !noalias !4
  %t178 = or i64 %r177, 1
  %wp179 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t178, ptr %wp179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d0f8 word 0xf9000989
  %r180.p = getelementptr inbounds i8, ptr %c, i64 96
  %r180 = load i64, ptr %r180.p, align 8, !alias.scope !3, !noalias !4
  %t181 = add i64 %r180, 16
  %r182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r182 = load i64, ptr %r182.p, align 8, !alias.scope !3, !noalias !4
  %gmp183 = inttoptr i64 %t181 to ptr
  store i64 %r182, ptr %gmp183, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d0fc word 0xf9400909
  %r184.p = getelementptr inbounds i8, ptr %c, i64 64
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %t185 = add i64 %r184, 16
  %gmp186 = inttoptr i64 %t185 to ptr
  %gml187 = load i64, ptr %gmp186, align 1, !alias.scope !4, !noalias !3
  %wp188 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml187, ptr %wp188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d100 word 0x927ff92a
  %r189.p = getelementptr inbounds i8, ptr %c, i64 72
  %r189 = load i64, ptr %r189.p, align 8, !alias.scope !3, !noalias !4
  %t190 = and i64 %r189, -2
  %wp191 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t190, ptr %wp191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d104 word 0xf900090a
  %r192.p = getelementptr inbounds i8, ptr %c, i64 64
  %r192 = load i64, ptr %r192.p, align 8, !alias.scope !3, !noalias !4
  %t193 = add i64 %r192, 16
  %r194.p = getelementptr inbounds i8, ptr %c, i64 80
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %gmp195 = inttoptr i64 %t193 to ptr
  store i64 %r194, ptr %gmp195, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d108 word 0xb9400848
  %r196.p = getelementptr inbounds i8, ptr %c, i64 16
  %r196 = load i64, ptr %r196.p, align 8, !alias.scope !3, !noalias !4
  %t197 = add i64 %r196, 8
  %gmp198 = inttoptr i64 %t197 to ptr
  %gml199 = load i32, ptr %gmp198, align 1, !alias.scope !4, !noalias !3
  %c200 = zext i32 %gml199 to i64
  %wp201 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c200, ptr %wp201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d10c word 0x7100051f
  %r202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r202 = load i64, ptr %r202.p, align 8, !alias.scope !3, !noalias !4
  %c203 = trunc i64 %r202 to i32
  %t204 = sub i32 %c203, 1
  %fn205 = icmp slt i32 %t204, 0
  %fz206 = icmp eq i32 %t204, 0
  %fc207 = icmp uge i32 %c203, 1
  %fx1208 = xor i32 %c203, 1
  %fx2209 = xor i32 %c203, %t204
  %fva210 = and i32 %fx1208, %fx2209
  %fv211 = icmp slt i32 %fva210, 0
  %nz212 = zext i1 %fn205 to i64
  %zz213 = zext i1 %fz206 to i64
  %cz214 = zext i1 %fc207 to i64
  %vz215 = zext i1 %fv211 to i64
  %ns216 = shl i64 %nz212, 31
  %zs217 = shl i64 %zz213, 30
  %cs218 = shl i64 %cz214, 29
  %vs219 = shl i64 %vz215, 28
  %nzor220 = or i64 %ns216, %zs217
  %cvor221 = or i64 %cs218, %vs219
  %nzcv222 = or i64 %nzor220, %cvor221
  %wp223 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv222, ptr %wp223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d110 word 0x5400124b
  %r224.p = getelementptr inbounds i8, ptr %c, i64 272
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %fsh226 = lshr i64 %r224, 31
  %ftr227 = trunc i64 %fsh226 to i1
  %fsh228 = lshr i64 %r224, 28
  %ftr229 = trunc i64 %fsh228 to i1
  %cond225 = icmp ne i1 %ftr227, %ftr229
  br i1 %cond225, label %L_80077d358, label %L_80077d114_ft
L_80077d114_ft:
  ; @pc 0x80077d114 word 0xf9400049
  %r230.p = getelementptr inbounds i8, ptr %c, i64 16
  %r230 = load i64, ptr %r230.p, align 8, !alias.scope !3, !noalias !4
  %gmp231 = inttoptr i64 %r230 to ptr
  %gml232 = load i64, ptr %gmp231, align 1, !alias.scope !4, !noalias !3
  %wp233 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml232, ptr %wp233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d118 word 0x7100050c
  %r234.p = getelementptr inbounds i8, ptr %c, i64 64
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %c235 = trunc i64 %r234 to i32
  %t236 = sub i32 %c235, 1
  %fn237 = icmp slt i32 %t236, 0
  %fz238 = icmp eq i32 %t236, 0
  %fc239 = icmp uge i32 %c235, 1
  %fx1240 = xor i32 %c235, 1
  %fx2241 = xor i32 %c235, %t236
  %fva242 = and i32 %fx1240, %fx2241
  %fv243 = icmp slt i32 %fva242, 0
  %nz244 = zext i1 %fn237 to i64
  %zz245 = zext i1 %fz238 to i64
  %cz246 = zext i1 %fc239 to i64
  %vz247 = zext i1 %fv243 to i64
  %ns248 = shl i64 %nz244, 31
  %zs249 = shl i64 %zz245, 30
  %cs250 = shl i64 %cz246, 29
  %vs251 = shl i64 %vz247, 28
  %nzor252 = or i64 %ns248, %zs249
  %cvor253 = or i64 %cs250, %vs251
  %nzcv254 = or i64 %nzor252, %cvor253
  %wp255 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv254, ptr %wp255, align 8, !alias.scope !3, !noalias !4
  %c256 = zext i32 %t236 to i64
  %wp257 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c256, ptr %wp257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d11c word 0xb900084c
  %r258.p = getelementptr inbounds i8, ptr %c, i64 16
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %t259 = add i64 %r258, 8
  %r260.p = getelementptr inbounds i8, ptr %c, i64 96
  %r260 = load i64, ptr %r260.p, align 8, !alias.scope !3, !noalias !4
  %c261 = trunc i64 %r260 to i32
  %gmp262 = inttoptr i64 %t259 to ptr
  store i32 %c261, ptr %gmp262, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d120 word 0xd341fd2b
  %r263.p = getelementptr inbounds i8, ptr %c, i64 72
  %r263 = load i64, ptr %r263.p, align 8, !alias.scope !3, !noalias !4
  %ror264 = call i64 @llvm.fshr.i64(i64 %r263, i64 %r263, i64 1)
  %t265 = and i64 %ror264, 9223372036854775807
  %wp266 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t265, ptr %wp266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d124 word 0xf900004b
  %r267.p = getelementptr inbounds i8, ptr %c, i64 16
  %r267 = load i64, ptr %r267.p, align 8, !alias.scope !3, !noalias !4
  %r268.p = getelementptr inbounds i8, ptr %c, i64 88
  %r268 = load i64, ptr %r268.p, align 8, !alias.scope !3, !noalias !4
  %gmp269 = inttoptr i64 %r267 to ptr
  store i64 %r268, ptr %gmp269, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d128 word 0x54001180
  %r270.p = getelementptr inbounds i8, ptr %c, i64 272
  %r270 = load i64, ptr %r270.p, align 8, !alias.scope !3, !noalias !4
  %fsh272 = lshr i64 %r270, 30
  %cond271 = trunc i64 %fsh272 to i1
  br i1 %cond271, label %L_80077d358, label %L_80077d12c_ft
L_80077d12c_ft:
  ; @pc 0x80077d12c word 0xb5fffc2a
  %r273.p = getelementptr inbounds i8, ptr %c, i64 80
  %r273 = load i64, ptr %r273.p, align 8, !alias.scope !3, !noalias !4
  %cmp274 = icmp ne i64 %r273, 0
  br i1 %cmp274, label %L_80077d0b0, label %L_80077d130_ft
L_80077d130_ft:
  ; @pc 0x80077d130 word 0x1400008a
  br label %L_80077d358
L_80077d14c_ft:
  ; @pc 0x80077d14c word 0xf940090a
  %r321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %t322 = add i64 %r321, 16
  %gmp323 = inttoptr i64 %t322 to ptr
  %gml324 = load i64, ptr %gmp323, align 1, !alias.scope !4, !noalias !3
  %wp325 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml324, ptr %wp325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d150 word 0x927ff94a
  %r326.p = getelementptr inbounds i8, ptr %c, i64 80
  %r326 = load i64, ptr %r326.p, align 8, !alias.scope !3, !noalias !4
  %t327 = and i64 %r326, -2
  %wp328 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t327, ptr %wp328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d154 word 0x370005c9
  %r329.p = getelementptr inbounds i8, ptr %c, i64 72
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %t330 = and i64 %r329, 1
  %cmp331 = icmp ne i64 %t330, 0
  br i1 %cmp331, label %L_80077d20c, label %L_80077d158_ft
L_80077d158_ft:
  ; @pc 0x80077d158 word 0xf9400109
  %r332.p = getelementptr inbounds i8, ptr %c, i64 64
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %gmp333 = inttoptr i64 %r332 to ptr
  %gml334 = load i64, ptr %gmp333, align 1, !alias.scope !4, !noalias !3
  %wp335 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml334, ptr %wp335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d15c word 0xf940052b
  %r336.p = getelementptr inbounds i8, ptr %c, i64 72
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = add i64 %r336, 8
  %gmp338 = inttoptr i64 %t337 to ptr
  %gml339 = load i64, ptr %gmp338, align 1, !alias.scope !4, !noalias !3
  %wp340 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml339, ptr %wp340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d160 word 0xf900010b
  %r341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r341 = load i64, ptr %r341.p, align 8, !alias.scope !3, !noalias !4
  %r342.p = getelementptr inbounds i8, ptr %c, i64 88
  %r342 = load i64, ptr %r342.p, align 8, !alias.scope !3, !noalias !4
  %gmp343 = inttoptr i64 %r341 to ptr
  store i64 %r342, ptr %gmp343, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d164 word 0xb5000fcb
  %r344.p = getelementptr inbounds i8, ptr %c, i64 88
  %r344 = load i64, ptr %r344.p, align 8, !alias.scope !3, !noalias !4
  %cmp345 = icmp ne i64 %r344, 0
  br i1 %cmp345, label %L_80077d35c, label %L_80077d168
L_80077d174_ft:
  ; @pc 0x80077d174 word 0xf9400549
  %r353.p = getelementptr inbounds i8, ptr %c, i64 80
  %r353 = load i64, ptr %r353.p, align 8, !alias.scope !3, !noalias !4
  %t354 = add i64 %r353, 8
  %gmp355 = inttoptr i64 %t354 to ptr
  %gml356 = load i64, ptr %gmp355, align 1, !alias.scope !4, !noalias !3
  %wp357 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml356, ptr %wp357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d178 word 0xf940012b
  %r358.p = getelementptr inbounds i8, ptr %c, i64 72
  %r358 = load i64, ptr %r358.p, align 8, !alias.scope !3, !noalias !4
  %gmp359 = inttoptr i64 %r358 to ptr
  %gml360 = load i64, ptr %gmp359, align 1, !alias.scope !4, !noalias !3
  %wp361 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml360, ptr %wp361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d17c word 0xf900054b
  %r362.p = getelementptr inbounds i8, ptr %c, i64 80
  %r362 = load i64, ptr %r362.p, align 8, !alias.scope !3, !noalias !4
  %t363 = add i64 %r362, 8
  %r364.p = getelementptr inbounds i8, ptr %c, i64 88
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %gmp365 = inttoptr i64 %t363 to ptr
  store i64 %r364, ptr %gmp365, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d180 word 0xb40000ab
  %r366.p = getelementptr inbounds i8, ptr %c, i64 88
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %cmp367 = icmp eq i64 %r366, 0
  br i1 %cmp367, label %L_80077d194, label %L_80077d184_ft
L_80077d184_ft:
  ; @pc 0x80077d184 word 0xf940096c
  %r368.p = getelementptr inbounds i8, ptr %c, i64 88
  %r368 = load i64, ptr %r368.p, align 8, !alias.scope !3, !noalias !4
  %t369 = add i64 %r368, 16
  %gmp370 = inttoptr i64 %t369 to ptr
  %gml371 = load i64, ptr %gmp370, align 1, !alias.scope !4, !noalias !3
  %wp372 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d188 word 0x9240018c
  %r373.p = getelementptr inbounds i8, ptr %c, i64 96
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %t374 = and i64 %r373, 1
  %wp375 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t374, ptr %wp375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d18c word 0xaa0a018c
  %r376.p = getelementptr inbounds i8, ptr %c, i64 80
  %r376 = load i64, ptr %r376.p, align 8, !alias.scope !3, !noalias !4
  %r377.p = getelementptr inbounds i8, ptr %c, i64 96
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %t378 = or i64 %r377, %r376
  %wp379 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t378, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d190 word 0xf900096c
  %r380.p = getelementptr inbounds i8, ptr %c, i64 88
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %t381 = add i64 %r380, 16
  %r382.p = getelementptr inbounds i8, ptr %c, i64 96
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %gmp383 = inttoptr i64 %t381 to ptr
  store i64 %r382, ptr %gmp383, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d194
L_80077d1ac_ft:
  ; @pc 0x80077d1ac word 0xf940010b
  %r405.p = getelementptr inbounds i8, ptr %c, i64 64
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %gmp406 = inttoptr i64 %r405 to ptr
  %gml407 = load i64, ptr %gmp406, align 1, !alias.scope !4, !noalias !3
  %wp408 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml407, ptr %wp408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1b0 word 0xeb0a017f
  %r409.p = getelementptr inbounds i8, ptr %c, i64 88
  %r409 = load i64, ptr %r409.p, align 8, !alias.scope !3, !noalias !4
  %r410.p = getelementptr inbounds i8, ptr %c, i64 80
  %r410 = load i64, ptr %r410.p, align 8, !alias.scope !3, !noalias !4
  %t411 = sub i64 %r409, %r410
  %fn412 = icmp slt i64 %t411, 0
  %fz413 = icmp eq i64 %t411, 0
  %fc414 = icmp uge i64 %r409, %r410
  %fx1415 = xor i64 %r409, %r410
  %fx2416 = xor i64 %r409, %t411
  %fva417 = and i64 %fx1415, %fx2416
  %fv418 = icmp slt i64 %fva417, 0
  %nz419 = zext i1 %fn412 to i64
  %zz420 = zext i1 %fz413 to i64
  %cz421 = zext i1 %fc414 to i64
  %vz422 = zext i1 %fv418 to i64
  %ns423 = shl i64 %nz419, 31
  %zs424 = shl i64 %zz420, 30
  %cs425 = shl i64 %cz421, 29
  %vs426 = shl i64 %vz422, 28
  %nzor427 = or i64 %ns423, %zs424
  %cvor428 = or i64 %cs425, %vs426
  %nzcv429 = or i64 %nzor427, %cvor428
  %wp430 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv429, ptr %wp430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1b4 word 0x1a9f07eb
  %t431 = add i32 0, 1
  %r432.p = getelementptr inbounds i8, ptr %c, i64 272
  %r432 = load i64, ptr %r432.p, align 8, !alias.scope !3, !noalias !4
  %fsh434 = lshr i64 %r432, 30
  %cond433 = trunc i64 %fsh434 to i1
  %sel435 = select i1 %cond433, i32 0, i32 %t431
  %c436 = zext i32 %sel435 to i64
  %wp437 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1b8 word 0xf82b5909
  %r438.p = getelementptr inbounds i8, ptr %c, i64 64
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %r439.p = getelementptr inbounds i8, ptr %c, i64 88
  %r439 = load i64, ptr %r439.p, align 8, !alias.scope !3, !noalias !4
  %c440 = trunc i64 %r439 to i32
  %c441 = zext i32 %c440 to i64
  %t442 = shl i64 %c441, 3
  %t443 = add i64 %r438, %t442
  %r444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r444 = load i64, ptr %r444.p, align 8, !alias.scope !3, !noalias !4
  %gmp445 = inttoptr i64 %t443 to ptr
  store i64 %r444, ptr %gmp445, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d1bc word 0xf940092b
  %r446.p = getelementptr inbounds i8, ptr %c, i64 72
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %t447 = add i64 %r446, 16
  %gmp448 = inttoptr i64 %t447 to ptr
  %gml449 = load i64, ptr %gmp448, align 1, !alias.scope !4, !noalias !3
  %wp450 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml449, ptr %wp450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1c0 word 0x9240016b
  %r451.p = getelementptr inbounds i8, ptr %c, i64 88
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %t452 = and i64 %r451, 1
  %wp453 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t452, ptr %wp453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1c4 word 0xaa08016b
  %r454.p = getelementptr inbounds i8, ptr %c, i64 64
  %r454 = load i64, ptr %r454.p, align 8, !alias.scope !3, !noalias !4
  %r455.p = getelementptr inbounds i8, ptr %c, i64 88
  %r455 = load i64, ptr %r455.p, align 8, !alias.scope !3, !noalias !4
  %t456 = or i64 %r455, %r454
  %wp457 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t456, ptr %wp457, align 8, !alias.scope !3, !noalias !4
  br label %L_80077d1c8
L_80077d1f4_ft:
  ; @pc 0x80077d1f4 word 0xf940098d
  %r500.p = getelementptr inbounds i8, ptr %c, i64 96
  %r500 = load i64, ptr %r500.p, align 8, !alias.scope !3, !noalias !4
  %t501 = add i64 %r500, 16
  %gmp502 = inttoptr i64 %t501 to ptr
  %gml503 = load i64, ptr %gmp502, align 1, !alias.scope !4, !noalias !3
  %wp504 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml503, ptr %wp504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1f8 word 0x924001ad
  %r505.p = getelementptr inbounds i8, ptr %c, i64 104
  %r505 = load i64, ptr %r505.p, align 8, !alias.scope !3, !noalias !4
  %t506 = and i64 %r505, 1
  %wp507 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t506, ptr %wp507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d1fc word 0xaa0801ad
  %r508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r508 = load i64, ptr %r508.p, align 8, !alias.scope !3, !noalias !4
  %r509.p = getelementptr inbounds i8, ptr %c, i64 104
  %r509 = load i64, ptr %r509.p, align 8, !alias.scope !3, !noalias !4
  %t510 = or i64 %r509, %r508
  %wp511 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t510, ptr %wp511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d200 word 0xf900098d
  %r512.p = getelementptr inbounds i8, ptr %c, i64 96
  %r512 = load i64, ptr %r512.p, align 8, !alias.scope !3, !noalias !4
  %t513 = add i64 %r512, 16
  %r514.p = getelementptr inbounds i8, ptr %c, i64 104
  %r514 = load i64, ptr %r514.p, align 8, !alias.scope !3, !noalias !4
  %gmp515 = inttoptr i64 %t513 to ptr
  store i64 %r514, ptr %gmp515, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d204
L_80077d21c_ft:
  ; @pc 0x80077d21c word 0xf940096c
  %r535.p = getelementptr inbounds i8, ptr %c, i64 88
  %r535 = load i64, ptr %r535.p, align 8, !alias.scope !3, !noalias !4
  %t536 = add i64 %r535, 16
  %gmp537 = inttoptr i64 %t536 to ptr
  %gml538 = load i64, ptr %gmp537, align 1, !alias.scope !4, !noalias !3
  %wp539 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml538, ptr %wp539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d220 word 0x9240018c
  %r540.p = getelementptr inbounds i8, ptr %c, i64 96
  %r540 = load i64, ptr %r540.p, align 8, !alias.scope !3, !noalias !4
  %t541 = and i64 %r540, 1
  %wp542 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t541, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d224 word 0xaa08018c
  %r543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %r544.p = getelementptr inbounds i8, ptr %c, i64 96
  %r544 = load i64, ptr %r544.p, align 8, !alias.scope !3, !noalias !4
  %t545 = or i64 %r544, %r543
  %wp546 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t545, ptr %wp546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d228 word 0xf900096c
  %r547.p = getelementptr inbounds i8, ptr %c, i64 88
  %r547 = load i64, ptr %r547.p, align 8, !alias.scope !3, !noalias !4
  %t548 = add i64 %r547, 16
  %r549.p = getelementptr inbounds i8, ptr %c, i64 96
  %r549 = load i64, ptr %r549.p, align 8, !alias.scope !3, !noalias !4
  %gmp550 = inttoptr i64 %t548 to ptr
  store i64 %r549, ptr %gmp550, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d22c
L_80077d244_ft:
  ; @pc 0x80077d244 word 0xf940014b
  %r572.p = getelementptr inbounds i8, ptr %c, i64 80
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %gmp573 = inttoptr i64 %r572 to ptr
  %gml574 = load i64, ptr %gmp573, align 1, !alias.scope !4, !noalias !3
  %wp575 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d248 word 0xeb08017f
  %r576.p = getelementptr inbounds i8, ptr %c, i64 88
  %r576 = load i64, ptr %r576.p, align 8, !alias.scope !3, !noalias !4
  %r577.p = getelementptr inbounds i8, ptr %c, i64 64
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %t578 = sub i64 %r576, %r577
  %fn579 = icmp slt i64 %t578, 0
  %fz580 = icmp eq i64 %t578, 0
  %fc581 = icmp uge i64 %r576, %r577
  %fx1582 = xor i64 %r576, %r577
  %fx2583 = xor i64 %r576, %t578
  %fva584 = and i64 %fx1582, %fx2583
  %fv585 = icmp slt i64 %fva584, 0
  %nz586 = zext i1 %fn579 to i64
  %zz587 = zext i1 %fz580 to i64
  %cz588 = zext i1 %fc581 to i64
  %vz589 = zext i1 %fv585 to i64
  %ns590 = shl i64 %nz586, 31
  %zs591 = shl i64 %zz587, 30
  %cs592 = shl i64 %cz588, 29
  %vs593 = shl i64 %vz589, 28
  %nzor594 = or i64 %ns590, %zs591
  %cvor595 = or i64 %cs592, %vs593
  %nzcv596 = or i64 %nzor594, %cvor595
  %wp597 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv596, ptr %wp597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d24c word 0x1a9f07eb
  %t598 = add i32 0, 1
  %r599.p = getelementptr inbounds i8, ptr %c, i64 272
  %r599 = load i64, ptr %r599.p, align 8, !alias.scope !3, !noalias !4
  %fsh601 = lshr i64 %r599, 30
  %cond600 = trunc i64 %fsh601 to i1
  %sel602 = select i1 %cond600, i32 0, i32 %t598
  %c603 = zext i32 %sel602 to i64
  %wp604 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c603, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d250 word 0xf82b5949
  %r605.p = getelementptr inbounds i8, ptr %c, i64 80
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %r606.p = getelementptr inbounds i8, ptr %c, i64 88
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %c607 = trunc i64 %r606 to i32
  %c608 = zext i32 %c607 to i64
  %t609 = shl i64 %c608, 3
  %t610 = add i64 %r605, %t609
  %r611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %gmp612 = inttoptr i64 %t610 to ptr
  store i64 %r611, ptr %gmp612, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d254 word 0xf940092b
  %r613.p = getelementptr inbounds i8, ptr %c, i64 72
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %t614 = add i64 %r613, 16
  %gmp615 = inttoptr i64 %t614 to ptr
  %gml616 = load i64, ptr %gmp615, align 1, !alias.scope !4, !noalias !3
  %wp617 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml616, ptr %wp617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d258 word 0x9240016b
  %r618.p = getelementptr inbounds i8, ptr %c, i64 88
  %r618 = load i64, ptr %r618.p, align 8, !alias.scope !3, !noalias !4
  %t619 = and i64 %r618, 1
  %wp620 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t619, ptr %wp620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d25c word 0xaa0a016a
  %r621.p = getelementptr inbounds i8, ptr %c, i64 80
  %r621 = load i64, ptr %r621.p, align 8, !alias.scope !3, !noalias !4
  %r622.p = getelementptr inbounds i8, ptr %c, i64 88
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %t623 = or i64 %r622, %r621
  %wp624 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t623, ptr %wp624, align 8, !alias.scope !3, !noalias !4
  br label %L_80077d260
L_80077d27c_ft:
  ; @pc 0x80077d27c word 0xf940096c
  %r646.p = getelementptr inbounds i8, ptr %c, i64 88
  %r646 = load i64, ptr %r646.p, align 8, !alias.scope !3, !noalias !4
  %t647 = add i64 %r646, 16
  %gmp648 = inttoptr i64 %t647 to ptr
  %gml649 = load i64, ptr %gmp648, align 1, !alias.scope !4, !noalias !3
  %wp650 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d280 word 0x9240018c
  %r651.p = getelementptr inbounds i8, ptr %c, i64 96
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %t652 = and i64 %r651, 1
  %wp653 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d284 word 0xaa0a018c
  %r654.p = getelementptr inbounds i8, ptr %c, i64 80
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %r655.p = getelementptr inbounds i8, ptr %c, i64 96
  %r655 = load i64, ptr %r655.p, align 8, !alias.scope !3, !noalias !4
  %t656 = or i64 %r655, %r654
  %wp657 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t656, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d288 word 0xf900096c
  %r658.p = getelementptr inbounds i8, ptr %c, i64 88
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %t659 = add i64 %r658, 16
  %r660.p = getelementptr inbounds i8, ptr %c, i64 96
  %r660 = load i64, ptr %r660.p, align 8, !alias.scope !3, !noalias !4
  %gmp661 = inttoptr i64 %t659 to ptr
  store i64 %r660, ptr %gmp661, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d28c
L_80077d2a4_ft:
  ; @pc 0x80077d2a4 word 0xf940010b
  %r684.p = getelementptr inbounds i8, ptr %c, i64 64
  %r684 = load i64, ptr %r684.p, align 8, !alias.scope !3, !noalias !4
  %gmp685 = inttoptr i64 %r684 to ptr
  %gml686 = load i64, ptr %gmp685, align 1, !alias.scope !4, !noalias !3
  %wp687 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml686, ptr %wp687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2a8 word 0xeb0a017f
  %r688.p = getelementptr inbounds i8, ptr %c, i64 88
  %r688 = load i64, ptr %r688.p, align 8, !alias.scope !3, !noalias !4
  %r689.p = getelementptr inbounds i8, ptr %c, i64 80
  %r689 = load i64, ptr %r689.p, align 8, !alias.scope !3, !noalias !4
  %t690 = sub i64 %r688, %r689
  %fn691 = icmp slt i64 %t690, 0
  %fz692 = icmp eq i64 %t690, 0
  %fc693 = icmp uge i64 %r688, %r689
  %fx1694 = xor i64 %r688, %r689
  %fx2695 = xor i64 %r688, %t690
  %fva696 = and i64 %fx1694, %fx2695
  %fv697 = icmp slt i64 %fva696, 0
  %nz698 = zext i1 %fn691 to i64
  %zz699 = zext i1 %fz692 to i64
  %cz700 = zext i1 %fc693 to i64
  %vz701 = zext i1 %fv697 to i64
  %ns702 = shl i64 %nz698, 31
  %zs703 = shl i64 %zz699, 30
  %cs704 = shl i64 %cz700, 29
  %vs705 = shl i64 %vz701, 28
  %nzor706 = or i64 %ns702, %zs703
  %cvor707 = or i64 %cs704, %vs705
  %nzcv708 = or i64 %nzor706, %cvor707
  %wp709 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv708, ptr %wp709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2ac word 0x1a9f07eb
  %t710 = add i32 0, 1
  %r711.p = getelementptr inbounds i8, ptr %c, i64 272
  %r711 = load i64, ptr %r711.p, align 8, !alias.scope !3, !noalias !4
  %fsh713 = lshr i64 %r711, 30
  %cond712 = trunc i64 %fsh713 to i1
  %sel714 = select i1 %cond712, i32 0, i32 %t710
  %c715 = zext i32 %sel714 to i64
  %wp716 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c715, ptr %wp716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2b0 word 0xf82b5909
  %r717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r717 = load i64, ptr %r717.p, align 8, !alias.scope !3, !noalias !4
  %r718.p = getelementptr inbounds i8, ptr %c, i64 88
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %c719 = trunc i64 %r718 to i32
  %c720 = zext i32 %c719 to i64
  %t721 = shl i64 %c720, 3
  %t722 = add i64 %r717, %t721
  %r723.p = getelementptr inbounds i8, ptr %c, i64 72
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %gmp724 = inttoptr i64 %t722 to ptr
  store i64 %r723, ptr %gmp724, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d2b4 word 0xf940092b
  %r725.p = getelementptr inbounds i8, ptr %c, i64 72
  %r725 = load i64, ptr %r725.p, align 8, !alias.scope !3, !noalias !4
  %t726 = add i64 %r725, 16
  %gmp727 = inttoptr i64 %t726 to ptr
  %gml728 = load i64, ptr %gmp727, align 1, !alias.scope !4, !noalias !3
  %wp729 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml728, ptr %wp729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2b8 word 0x9240016b
  %r730.p = getelementptr inbounds i8, ptr %c, i64 88
  %r730 = load i64, ptr %r730.p, align 8, !alias.scope !3, !noalias !4
  %t731 = and i64 %r730, 1
  %wp732 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t731, ptr %wp732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2bc word 0xaa08016b
  %r733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r733 = load i64, ptr %r733.p, align 8, !alias.scope !3, !noalias !4
  %r734.p = getelementptr inbounds i8, ptr %c, i64 88
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %t735 = or i64 %r734, %r733
  %wp736 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t735, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  br label %L_80077d2c0
L_80077d2e8_ft:
  ; @pc 0x80077d2e8 word 0xf940098d
  %r779.p = getelementptr inbounds i8, ptr %c, i64 96
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %t780 = add i64 %r779, 16
  %gmp781 = inttoptr i64 %t780 to ptr
  %gml782 = load i64, ptr %gmp781, align 1, !alias.scope !4, !noalias !3
  %wp783 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml782, ptr %wp783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2ec word 0x924001ad
  %r784.p = getelementptr inbounds i8, ptr %c, i64 104
  %r784 = load i64, ptr %r784.p, align 8, !alias.scope !3, !noalias !4
  %t785 = and i64 %r784, 1
  %wp786 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t785, ptr %wp786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2f0 word 0xaa0801ad
  %r787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r787 = load i64, ptr %r787.p, align 8, !alias.scope !3, !noalias !4
  %r788.p = getelementptr inbounds i8, ptr %c, i64 104
  %r788 = load i64, ptr %r788.p, align 8, !alias.scope !3, !noalias !4
  %t789 = or i64 %r788, %r787
  %wp790 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t789, ptr %wp790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d2f4 word 0xf900098d
  %r791.p = getelementptr inbounds i8, ptr %c, i64 96
  %r791 = load i64, ptr %r791.p, align 8, !alias.scope !3, !noalias !4
  %t792 = add i64 %r791, 16
  %r793.p = getelementptr inbounds i8, ptr %c, i64 104
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %gmp794 = inttoptr i64 %t792 to ptr
  store i64 %r793, ptr %gmp794, align 1, !alias.scope !4, !noalias !3
  br label %L_80077d2f8
L_80077d310_ft:
  ; @pc 0x80077d310 word 0xf940016c
  %r816.p = getelementptr inbounds i8, ptr %c, i64 88
  %r816 = load i64, ptr %r816.p, align 8, !alias.scope !3, !noalias !4
  %gmp817 = inttoptr i64 %r816 to ptr
  %gml818 = load i64, ptr %gmp817, align 1, !alias.scope !4, !noalias !3
  %wp819 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml818, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d314 word 0xeb08019f
  %r820.p = getelementptr inbounds i8, ptr %c, i64 96
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %r821.p = getelementptr inbounds i8, ptr %c, i64 64
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %t822 = sub i64 %r820, %r821
  %fn823 = icmp slt i64 %t822, 0
  %fz824 = icmp eq i64 %t822, 0
  %fc825 = icmp uge i64 %r820, %r821
  %fx1826 = xor i64 %r820, %r821
  %fx2827 = xor i64 %r820, %t822
  %fva828 = and i64 %fx1826, %fx2827
  %fv829 = icmp slt i64 %fva828, 0
  %nz830 = zext i1 %fn823 to i64
  %zz831 = zext i1 %fz824 to i64
  %cz832 = zext i1 %fc825 to i64
  %vz833 = zext i1 %fv829 to i64
  %ns834 = shl i64 %nz830, 31
  %zs835 = shl i64 %zz831, 30
  %cs836 = shl i64 %cz832, 29
  %vs837 = shl i64 %vz833, 28
  %nzor838 = or i64 %ns834, %zs835
  %cvor839 = or i64 %cs836, %vs837
  %nzcv840 = or i64 %nzor838, %cvor839
  %wp841 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv840, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d318 word 0x1a9f07ec
  %t842 = add i32 0, 1
  %r843.p = getelementptr inbounds i8, ptr %c, i64 272
  %r843 = load i64, ptr %r843.p, align 8, !alias.scope !3, !noalias !4
  %fsh845 = lshr i64 %r843, 30
  %cond844 = trunc i64 %fsh845 to i1
  %sel846 = select i1 %cond844, i32 0, i32 %t842
  %c847 = zext i32 %sel846 to i64
  %wp848 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c847, ptr %wp848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d31c word 0xf82c596a
  %r849.p = getelementptr inbounds i8, ptr %c, i64 88
  %r849 = load i64, ptr %r849.p, align 8, !alias.scope !3, !noalias !4
  %r850.p = getelementptr inbounds i8, ptr %c, i64 96
  %r850 = load i64, ptr %r850.p, align 8, !alias.scope !3, !noalias !4
  %c851 = trunc i64 %r850 to i32
  %c852 = zext i32 %c851 to i64
  %t853 = shl i64 %c852, 3
  %t854 = add i64 %r849, %t853
  %r855.p = getelementptr inbounds i8, ptr %c, i64 80
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %gmp856 = inttoptr i64 %t854 to ptr
  store i64 %r855, ptr %gmp856, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80077d320 word 0xf940094c
  %r857.p = getelementptr inbounds i8, ptr %c, i64 80
  %r857 = load i64, ptr %r857.p, align 8, !alias.scope !3, !noalias !4
  %t858 = add i64 %r857, 16
  %gmp859 = inttoptr i64 %t858 to ptr
  %gml860 = load i64, ptr %gmp859, align 1, !alias.scope !4, !noalias !3
  %wp861 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml860, ptr %wp861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d324 word 0x9240018c
  %r862.p = getelementptr inbounds i8, ptr %c, i64 96
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %t863 = and i64 %r862, 1
  %wp864 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t863, ptr %wp864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077d328 word 0xaa0b018b
  %r865.p = getelementptr inbounds i8, ptr %c, i64 88
  %r865 = load i64, ptr %r865.p, align 8, !alias.scope !3, !noalias !4
  %r866.p = getelementptr inbounds i8, ptr %c, i64 96
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %t867 = or i64 %r866, %r865
  %wp868 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t867, ptr %wp868, align 8, !alias.scope !3, !noalias !4
  br label %L_80077d32c
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
