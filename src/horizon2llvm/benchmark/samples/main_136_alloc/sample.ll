; UltraTears chunk main_136_alloc: 1 functions [0x8002152a0..0x800215718)
; ModuleID = 'main_136_alloc_raw'
source_filename = "main_136_alloc_raw"
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

declare dso_local void @f_800099ae0(ptr)
declare dso_local void @f_8002908bc(ptr)
declare dso_local void @f_802ba3ac0(ptr)
declare dso_local void @f_802ba4060(ptr)
declare dso_local void @f_802ba4070(ptr)

define dso_local void @f_8002152a0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8002152a0:
  ; @pc 0x8002152a0 word 0xa9bc7bfd
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
  ; @pc 0x8002152a4 word 0xa9015ff8
  %r13.p = getelementptr inbounds i8, ptr %c, i64 256
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %t14 = add i64 %r13, 16
  %t15 = add i64 %t14, 8
  %r16.p = getelementptr inbounds i8, ptr %c, i64 192
  %r16 = load i64, ptr %r16.p, align 8, !alias.scope !3, !noalias !4
  %gmp17 = inttoptr i64 %t14 to ptr
  store i64 %r16, ptr %gmp17, align 1, !alias.scope !4, !noalias !3
  %r18.p = getelementptr inbounds i8, ptr %c, i64 184
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t15 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002152a8 word 0xa90257f6
  %r20.p = getelementptr inbounds i8, ptr %c, i64 256
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %t21 = add i64 %r20, 32
  %t22 = add i64 %t21, 8
  %r23.p = getelementptr inbounds i8, ptr %c, i64 176
  %r23 = load i64, ptr %r23.p, align 8, !alias.scope !3, !noalias !4
  %gmp24 = inttoptr i64 %t21 to ptr
  store i64 %r23, ptr %gmp24, align 1, !alias.scope !4, !noalias !3
  %r25.p = getelementptr inbounds i8, ptr %c, i64 168
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t22 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002152ac word 0xa9034ff4
  %r27.p = getelementptr inbounds i8, ptr %c, i64 256
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %t28 = add i64 %r27, 48
  %t29 = add i64 %t28, 8
  %r30.p = getelementptr inbounds i8, ptr %c, i64 160
  %r30 = load i64, ptr %r30.p, align 8, !alias.scope !3, !noalias !4
  %gmp31 = inttoptr i64 %t28 to ptr
  store i64 %r30, ptr %gmp31, align 1, !alias.scope !4, !noalias !3
  %r32.p = getelementptr inbounds i8, ptr %c, i64 152
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t29 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002152b0 word 0x910003fd
  %r34.p = getelementptr inbounds i8, ptr %c, i64 256
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %t35 = add i64 %r34, 0
  %wp36 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t35, ptr %wp36, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152b4 word 0xd001b9a8
  %wp37 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp37, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152b8 word 0xaa0003f3
  %r38.p = getelementptr inbounds i8, ptr %c, i64 0
  %r38 = load i64, ptr %r38.p, align 8, !alias.scope !3, !noalias !4
  %t39 = or i64 0, %r38
  %wp40 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t39, ptr %wp40, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152bc word 0xf9454108
  %r41.p = getelementptr inbounds i8, ptr %c, i64 64
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %t42 = add i64 %r41, 2688
  %gmp43 = inttoptr i64 %t42 to ptr
  %gml44 = load i64, ptr %gmp43, align 1, !alias.scope !4, !noalias !3
  %wp45 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml44, ptr %wp45, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152c0 word 0xf9400114
  %r46.p = getelementptr inbounds i8, ptr %c, i64 64
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %r46 to ptr
  %gml48 = load i64, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %wp49 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml48, ptr %wp49, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152c4 word 0xb40012d4
  %r50.p = getelementptr inbounds i8, ptr %c, i64 160
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %cmp51 = icmp eq i64 %r50, 0
  br i1 %cmp51, label %L_80021551c, label %L_8002152c8_ft
L_8002152f0:
  ; @pc 0x8002152f0 word 0xc85f7ef5
  %r81.p = getelementptr inbounds i8, ptr %c, i64 184
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %atp82 = inttoptr i64 %r81 to ptr
  %ldx83 = load atomic i64, ptr %atp82 acquire, align 8, !alias.scope !4, !noalias !3
  %fp84 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r81, ptr %fp84, align 8, !alias.scope !3, !noalias !4
  %fp85 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx83, ptr %fp85, align 8, !alias.scope !3, !noalias !4
  %wp86 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %ldx83, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152f4 word 0xb24002a8
  %r87.p = getelementptr inbounds i8, ptr %c, i64 168
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %t88 = or i64 %r87, 1
  %wp89 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t88, ptr %wp89, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152f8 word 0xc8097ee8
  %r90.p = getelementptr inbounds i8, ptr %c, i64 184
  %r90 = load i64, ptr %r90.p, align 8, !alias.scope !3, !noalias !4
  %atp91 = inttoptr i64 %r90 to ptr
  %fp92 = getelementptr inbounds i8, ptr %c, i64 296
  %fv93 = load i64, ptr %fp92, align 8, !alias.scope !3, !noalias !4
  %fp94 = getelementptr inbounds i8, ptr %c, i64 304
  %fv95 = load i64, ptr %fp94, align 8, !alias.scope !3, !noalias !4
  %fp96 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp96, align 8, !alias.scope !3, !noalias !4
  %cmp97 = icmp eq i64 %fv93, %r90
  %r98.p = getelementptr inbounds i8, ptr %c, i64 64
  %r98 = load i64, ptr %r98.p, align 8, !alias.scope !3, !noalias !4
  %cx99 = cmpxchg ptr %atp91, i64 %fv95, i64 %r98 seq_cst seq_cst, align 8
  %cxok100 = extractvalue { i64, i1 } %cx99, 1
  %t101 = and i1 %cmp97, %cxok100
  %sel102 = select i1 %t101, i32 0, i32 1
  %c103 = zext i32 %sel102 to i64
  %wp104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c103, ptr %wp104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152fc word 0x35ffffa9
  %r105.p = getelementptr inbounds i8, ptr %c, i64 72
  %r105 = load i64, ptr %r105.p, align 8, !alias.scope !3, !noalias !4
  %c106 = trunc i64 %r105 to i32
  %cmp107 = icmp ne i32 %c106, 0
  br i1 %cmp107, label %L_8002152f0, label %L_800215300_ft
L_80021534c:
  ; @pc 0x80021534c word 0xeb13015f
  %r231.p = getelementptr inbounds i8, ptr %c, i64 80
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %r232.p = getelementptr inbounds i8, ptr %c, i64 152
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = sub i64 %r231, %r232
  %fn234 = icmp slt i64 %t233, 0
  %fz235 = icmp eq i64 %t233, 0
  %fc236 = icmp uge i64 %r231, %r232
  %fx1237 = xor i64 %r231, %r232
  %fx2238 = xor i64 %r231, %t233
  %fva239 = and i64 %fx1237, %fx2238
  %fv240 = icmp slt i64 %fva239, 0
  %nz241 = zext i1 %fn234 to i64
  %zz242 = zext i1 %fz235 to i64
  %cz243 = zext i1 %fc236 to i64
  %vz244 = zext i1 %fv240 to i64
  %ns245 = shl i64 %nz241, 31
  %zs246 = shl i64 %zz242, 30
  %cs247 = shl i64 %cz243, 29
  %vs248 = shl i64 %vz244, 28
  %nzor249 = or i64 %ns245, %zs246
  %cvor250 = or i64 %cs247, %vs248
  %nzcv251 = or i64 %nzor249, %cvor250
  %wp252 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215350 word 0x54000ae8
  %r253.p = getelementptr inbounds i8, ptr %c, i64 272
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %fsh255 = lshr i64 %r253, 29
  %ftr256 = trunc i64 %fsh255 to i1
  %fsh257 = lshr i64 %r253, 30
  %ftr258 = trunc i64 %fsh257 to i1
  %fnz259 = xor i1 %ftr258, true
  %cond254 = and i1 %ftr256, %fnz259
  br i1 %cond254, label %L_8002154ac, label %L_800215354_ft
L_800215358:
  ; @pc 0x800215358 word 0xeb13011f
  %r264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %r265.p = getelementptr inbounds i8, ptr %c, i64 152
  %r265 = load i64, ptr %r265.p, align 8, !alias.scope !3, !noalias !4
  %t266 = sub i64 %r264, %r265
  %fn267 = icmp slt i64 %t266, 0
  %fz268 = icmp eq i64 %t266, 0
  %fc269 = icmp uge i64 %r264, %r265
  %fx1270 = xor i64 %r264, %r265
  %fx2271 = xor i64 %r264, %t266
  %fva272 = and i64 %fx1270, %fx2271
  %fv273 = icmp slt i64 %fva272, 0
  %nz274 = zext i1 %fn267 to i64
  %zz275 = zext i1 %fz268 to i64
  %cz276 = zext i1 %fc269 to i64
  %vz277 = zext i1 %fv273 to i64
  %ns278 = shl i64 %nz274, 31
  %zs279 = shl i64 %zz275, 30
  %cs280 = shl i64 %cz276, 29
  %vs281 = shl i64 %vz277, 28
  %nzor282 = or i64 %ns278, %zs279
  %cvor283 = or i64 %cs280, %vs281
  %nzcv284 = or i64 %nzor282, %cvor283
  %wp285 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv284, ptr %wp285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021535c word 0xaa1503f8
  %r286.p = getelementptr inbounds i8, ptr %c, i64 168
  %r286 = load i64, ptr %r286.p, align 8, !alias.scope !3, !noalias !4
  %t287 = or i64 0, %r286
  %wp288 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t287, ptr %wp288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215360 word 0x54000889
  %r289.p = getelementptr inbounds i8, ptr %c, i64 272
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %fsh291 = lshr i64 %r289, 29
  %ftr292 = trunc i64 %fsh291 to i1
  %fsh293 = lshr i64 %r289, 30
  %ftr294 = trunc i64 %fsh293 to i1
  %fnz295 = xor i1 %ftr294, true
  %fhi296 = and i1 %ftr292, %fnz295
  %cond290 = xor i1 %fhi296, true
  br i1 %cond290, label %L_800215470, label %L_800215364
L_800215364:
  ; @pc 0x800215364 word 0x2a1f03e8
  %t297 = or i32 0, 0
  %c298 = zext i32 %t297 to i64
  %wp299 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c298, ptr %wp299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215368 word 0xaa1f03f8
  %t300 = or i64 0, 0
  %wp301 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t300, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  br label %L_80021536c
L_80021536c:
  ; @pc 0x80021536c word 0xc85f7ee9
  %r302.p = getelementptr inbounds i8, ptr %c, i64 184
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %atp303 = inttoptr i64 %r302 to ptr
  %ldx304 = load atomic i64, ptr %atp303 acquire, align 8, !alias.scope !4, !noalias !3
  %fp305 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r302, ptr %fp305, align 8, !alias.scope !3, !noalias !4
  %fp306 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx304, ptr %fp306, align 8, !alias.scope !3, !noalias !4
  %wp307 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %ldx304, ptr %wp307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215370 word 0x927ff929
  %r308.p = getelementptr inbounds i8, ptr %c, i64 72
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %t309 = and i64 %r308, -2
  %wp310 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t309, ptr %wp310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215374 word 0xc80a7ee9
  %r311.p = getelementptr inbounds i8, ptr %c, i64 184
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %atp312 = inttoptr i64 %r311 to ptr
  %fp313 = getelementptr inbounds i8, ptr %c, i64 296
  %fv314 = load i64, ptr %fp313, align 8, !alias.scope !3, !noalias !4
  %fp315 = getelementptr inbounds i8, ptr %c, i64 304
  %fv316 = load i64, ptr %fp315, align 8, !alias.scope !3, !noalias !4
  %fp317 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp317, align 8, !alias.scope !3, !noalias !4
  %cmp318 = icmp eq i64 %fv314, %r311
  %r319.p = getelementptr inbounds i8, ptr %c, i64 72
  %r319 = load i64, ptr %r319.p, align 8, !alias.scope !3, !noalias !4
  %cx320 = cmpxchg ptr %atp312, i64 %fv316, i64 %r319 seq_cst seq_cst, align 8
  %cxok321 = extractvalue { i64, i1 } %cx320, 1
  %t322 = and i1 %cmp318, %cxok321
  %sel323 = select i1 %t322, i32 0, i32 1
  %c324 = zext i32 %sel323 to i64
  %wp325 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c324, ptr %wp325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215378 word 0x35ffffaa
  %r326.p = getelementptr inbounds i8, ptr %c, i64 80
  %r326 = load i64, ptr %r326.p, align 8, !alias.scope !3, !noalias !4
  %c327 = trunc i64 %r326 to i32
  %cmp328 = icmp ne i32 %c327, 0
  br i1 %cmp328, label %L_80021536c, label %L_80021537c_ft
L_800215380:
  ; @pc 0x800215380 word 0xaa1503f4
  %r332.p = getelementptr inbounds i8, ptr %c, i64 168
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %t333 = or i64 0, %r332
  %wp334 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t333, ptr %wp334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215384 word 0xb4000195
  %r335.p = getelementptr inbounds i8, ptr %c, i64 168
  %r335 = load i64, ptr %r335.p, align 8, !alias.scope !3, !noalias !4
  %cmp336 = icmp eq i64 %r335, 0
  br i1 %cmp336, label %L_8002153b4, label %L_800215388
L_800215388:
  ; @pc 0x800215388 word 0xf9400288
  %r337.p = getelementptr inbounds i8, ptr %c, i64 160
  %r337 = load i64, ptr %r337.p, align 8, !alias.scope !3, !noalias !4
  %gmp338 = inttoptr i64 %r337 to ptr
  %gml339 = load i64, ptr %gmp338, align 1, !alias.scope !4, !noalias !3
  %wp340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml339, ptr %wp340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021538c word 0xf9401d02
  %r341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r341 = load i64, ptr %r341.p, align 8, !alias.scope !3, !noalias !4
  %t342 = add i64 %r341, 56
  %gmp343 = inttoptr i64 %t342 to ptr
  %gml344 = load i64, ptr %gmp343, align 1, !alias.scope !4, !noalias !3
  %wp345 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml344, ptr %wp345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215390 word 0xd0012ce8
  %wp346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34401366016, ptr %wp346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215394 word 0x913c3108
  %r347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %t348 = add i64 %r347, 3852
  %wp349 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t348, ptr %wp349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215398 word 0xeb08005f
  %r350.p = getelementptr inbounds i8, ptr %c, i64 16
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %r351.p = getelementptr inbounds i8, ptr %c, i64 64
  %r351 = load i64, ptr %r351.p, align 8, !alias.scope !3, !noalias !4
  %t352 = sub i64 %r350, %r351
  %fn353 = icmp slt i64 %t352, 0
  %fz354 = icmp eq i64 %t352, 0
  %fc355 = icmp uge i64 %r350, %r351
  %fx1356 = xor i64 %r350, %r351
  %fx2357 = xor i64 %r350, %t352
  %fva358 = and i64 %fx1356, %fx2357
  %fv359 = icmp slt i64 %fva358, 0
  %nz360 = zext i1 %fn353 to i64
  %zz361 = zext i1 %fz354 to i64
  %cz362 = zext i1 %fc355 to i64
  %vz363 = zext i1 %fv359 to i64
  %ns364 = shl i64 %nz360, 31
  %zs365 = shl i64 %zz361, 30
  %cs366 = shl i64 %cz362, 29
  %vs367 = shl i64 %vz363, 28
  %nzor368 = or i64 %ns364, %zs365
  %cvor369 = or i64 %cs366, %vs367
  %nzcv370 = or i64 %nzor368, %cvor369
  %wp371 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021539c word 0x540000a0
  %r372.p = getelementptr inbounds i8, ptr %c, i64 272
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %fsh374 = lshr i64 %r372, 30
  %cond373 = trunc i64 %fsh374 to i1
  br i1 %cond373, label %L_8002153b0, label %L_8002153a0_ft
L_8002153b0:
  ; @pc 0x8002153b0 word 0xb940aa9f
  %r405.p = getelementptr inbounds i8, ptr %c, i64 160
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %t406 = add i64 %r405, 168
  %gmp407 = inttoptr i64 %t406 to ptr
  %gml408 = load i32, ptr %gmp407, align 1, !alias.scope !4, !noalias !3
  %c409 = zext i32 %gml408 to i64
  br label %L_8002153b4
L_8002153b4:
  ; @pc 0x8002153b4 word 0xa9434ff4
  %r410.p = getelementptr inbounds i8, ptr %c, i64 256
  %r410 = load i64, ptr %r410.p, align 8, !alias.scope !3, !noalias !4
  %t411 = add i64 %r410, 48
  %t412 = add i64 %t411, 8
  %gmp413 = inttoptr i64 %t411 to ptr
  %gml414 = load i64, ptr %gmp413, align 1, !alias.scope !4, !noalias !3
  %gmp415 = inttoptr i64 %t412 to ptr
  %gml416 = load i64, ptr %gmp415, align 1, !alias.scope !4, !noalias !3
  %wp417 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml414, ptr %wp417, align 8, !alias.scope !3, !noalias !4
  %wp418 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml416, ptr %wp418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153b8 word 0xa94257f6
  %r419.p = getelementptr inbounds i8, ptr %c, i64 256
  %r419 = load i64, ptr %r419.p, align 8, !alias.scope !3, !noalias !4
  %t420 = add i64 %r419, 32
  %t421 = add i64 %t420, 8
  %gmp422 = inttoptr i64 %t420 to ptr
  %gml423 = load i64, ptr %gmp422, align 1, !alias.scope !4, !noalias !3
  %gmp424 = inttoptr i64 %t421 to ptr
  %gml425 = load i64, ptr %gmp424, align 1, !alias.scope !4, !noalias !3
  %wp426 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml423, ptr %wp426, align 8, !alias.scope !3, !noalias !4
  %wp427 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml425, ptr %wp427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153bc word 0xa9415ff8
  %r428.p = getelementptr inbounds i8, ptr %c, i64 256
  %r428 = load i64, ptr %r428.p, align 8, !alias.scope !3, !noalias !4
  %t429 = add i64 %r428, 16
  %t430 = add i64 %t429, 8
  %gmp431 = inttoptr i64 %t429 to ptr
  %gml432 = load i64, ptr %gmp431, align 1, !alias.scope !4, !noalias !3
  %gmp433 = inttoptr i64 %t430 to ptr
  %gml434 = load i64, ptr %gmp433, align 1, !alias.scope !4, !noalias !3
  %wp435 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml432, ptr %wp435, align 8, !alias.scope !3, !noalias !4
  %wp436 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml434, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153c0 word 0xa8c47bfd
  %r437.p = getelementptr inbounds i8, ptr %c, i64 256
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %t438 = add i64 %r437, 8
  %gmp439 = inttoptr i64 %r437 to ptr
  %gml440 = load i64, ptr %gmp439, align 1, !alias.scope !4, !noalias !3
  %gmp441 = inttoptr i64 %t438 to ptr
  %gml442 = load i64, ptr %gmp441, align 1, !alias.scope !4, !noalias !3
  %t443 = add i64 %r437, 64
  %wp444 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t443, ptr %wp444, align 8, !alias.scope !3, !noalias !4
  %wp445 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml440, ptr %wp445, align 8, !alias.scope !3, !noalias !4
  %wp446 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml442, ptr %wp446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153c4 word 0xd65f03c0
  ret void
L_8002153c8:
  ; @pc 0x8002153c8 word 0xb94082aa
  %r447.p = getelementptr inbounds i8, ptr %c, i64 168
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = add i64 %r447, 128
  %gmp449 = inttoptr i64 %t448 to ptr
  %gml450 = load i32, ptr %gmp449, align 1, !alias.scope !4, !noalias !3
  %c451 = zext i32 %gml450 to i64
  %wp452 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c451, ptr %wp452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153cc word 0x7100055f
  %r453.p = getelementptr inbounds i8, ptr %c, i64 80
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %c454 = trunc i64 %r453 to i32
  %t455 = sub i32 %c454, 1
  %fn456 = icmp slt i32 %t455, 0
  %fz457 = icmp eq i32 %t455, 0
  %fc458 = icmp uge i32 %c454, 1
  %fx1459 = xor i32 %c454, 1
  %fx2460 = xor i32 %c454, %t455
  %fva461 = and i32 %fx1459, %fx2460
  %fv462 = icmp slt i32 %fva461, 0
  %nz463 = zext i1 %fn456 to i64
  %zz464 = zext i1 %fz457 to i64
  %cz465 = zext i1 %fc458 to i64
  %vz466 = zext i1 %fv462 to i64
  %ns467 = shl i64 %nz463, 31
  %zs468 = shl i64 %zz464, 30
  %cs469 = shl i64 %cz465, 29
  %vs470 = shl i64 %vz466, 28
  %nzor471 = or i64 %ns467, %zs468
  %cvor472 = or i64 %cs469, %vs470
  %nzcv473 = or i64 %nzor471, %cvor472
  %wp474 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv473, ptr %wp474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153d0 word 0xa942a6a8
  %r475.p = getelementptr inbounds i8, ptr %c, i64 168
  %r475 = load i64, ptr %r475.p, align 8, !alias.scope !3, !noalias !4
  %t476 = add i64 %r475, 40
  %t477 = add i64 %t476, 8
  %gmp478 = inttoptr i64 %t476 to ptr
  %gml479 = load i64, ptr %gmp478, align 1, !alias.scope !4, !noalias !3
  %gmp480 = inttoptr i64 %t477 to ptr
  %gml481 = load i64, ptr %gmp480, align 1, !alias.scope !4, !noalias !3
  %wp482 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml479, ptr %wp482, align 8, !alias.scope !3, !noalias !4
  %wp483 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml481, ptr %wp483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153d4 word 0x9103410b
  %r484.p = getelementptr inbounds i8, ptr %c, i64 64
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %t485 = add i64 %r484, 208
  %wp486 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t485, ptr %wp486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153d8 word 0x9a88016a
  %r487.p = getelementptr inbounds i8, ptr %c, i64 88
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %r488.p = getelementptr inbounds i8, ptr %c, i64 64
  %r488 = load i64, ptr %r488.p, align 8, !alias.scope !3, !noalias !4
  %r489.p = getelementptr inbounds i8, ptr %c, i64 272
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %fsh491 = lshr i64 %r489, 30
  %cond490 = trunc i64 %fsh491 to i1
  %sel492 = select i1 %cond490, i64 %r487, i64 %r488
  %wp493 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel492, ptr %wp493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153dc word 0x54000ac1
  %r494.p = getelementptr inbounds i8, ptr %c, i64 272
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %fsh496 = lshr i64 %r494, 30
  %ftr497 = trunc i64 %fsh496 to i1
  %cond495 = xor i1 %ftr497, true
  br i1 %cond495, label %L_800215534, label %L_8002153e0
L_8002153e0:
  ; @pc 0x8002153e0 word 0xeb13015f
  %r498.p = getelementptr inbounds i8, ptr %c, i64 80
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %r499.p = getelementptr inbounds i8, ptr %c, i64 152
  %r499 = load i64, ptr %r499.p, align 8, !alias.scope !3, !noalias !4
  %t500 = sub i64 %r498, %r499
  %fn501 = icmp slt i64 %t500, 0
  %fz502 = icmp eq i64 %t500, 0
  %fc503 = icmp uge i64 %r498, %r499
  %fx1504 = xor i64 %r498, %r499
  %fx2505 = xor i64 %r498, %t500
  %fva506 = and i64 %fx1504, %fx2505
  %fv507 = icmp slt i64 %fva506, 0
  %nz508 = zext i1 %fn501 to i64
  %zz509 = zext i1 %fz502 to i64
  %cz510 = zext i1 %fc503 to i64
  %vz511 = zext i1 %fv507 to i64
  %ns512 = shl i64 %nz508, 31
  %zs513 = shl i64 %zz509, 30
  %cs514 = shl i64 %cz510, 29
  %vs515 = shl i64 %vz511, 28
  %nzor516 = or i64 %ns512, %zs513
  %cvor517 = or i64 %cs514, %vs515
  %nzcv518 = or i64 %nzor516, %cvor517
  %wp519 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv518, ptr %wp519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153e4 word 0x54000088
  %r520.p = getelementptr inbounds i8, ptr %c, i64 272
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %fsh522 = lshr i64 %r520, 29
  %ftr523 = trunc i64 %fsh522 to i1
  %fsh524 = lshr i64 %r520, 30
  %ftr525 = trunc i64 %fsh524 to i1
  %fnz526 = xor i1 %ftr525, true
  %cond521 = and i1 %ftr523, %fnz526
  br i1 %cond521, label %L_8002153f4, label %L_8002153e8_ft
L_8002153f4:
  ; @pc 0x8002153f4 word 0x910222b6
  %r560.p = getelementptr inbounds i8, ptr %c, i64 168
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %t561 = add i64 %r560, 136
  %wp562 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t561, ptr %wp562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153f8 word 0xaa1603e0
  %r563.p = getelementptr inbounds i8, ptr %c, i64 176
  %r563 = load i64, ptr %r563.p, align 8, !alias.scope !3, !noalias !4
  %t564 = or i64 0, %r563
  %wp565 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t564, ptr %wp565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153fc word 0x94a63b19
  %wp566 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922560, ptr %wp566, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x800215400 word 0xf94062a8
  %r567.p = getelementptr inbounds i8, ptr %c, i64 168
  %r567 = load i64, ptr %r567.p, align 8, !alias.scope !3, !noalias !4
  %t568 = add i64 %r567, 192
  %gmp569 = inttoptr i64 %t568 to ptr
  %gml570 = load i64, ptr %gmp569, align 1, !alias.scope !4, !noalias !3
  %wp571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml570, ptr %wp571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215404 word 0xb50006a8
  %r572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %cmp573 = icmp ne i64 %r572, 0
  br i1 %cmp573, label %L_8002154d8, label %L_800215408
L_800215408:
  ; @pc 0x800215408 word 0xaa1603e0
  %r574.p = getelementptr inbounds i8, ptr %c, i64 176
  %r574 = load i64, ptr %r574.p, align 8, !alias.scope !3, !noalias !4
  %t575 = or i64 0, %r574
  %wp576 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t575, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021540c word 0x94a63b19
  %wp577 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922576, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x800215410 word 0x14000027
  br label %L_8002154ac
L_800215414:
  ; @pc 0x800215414 word 0x2a1f03f6
  %t578 = or i32 0, 0
  %c579 = zext i32 %t578 to i64
  %wp580 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c579, ptr %wp580, align 8, !alias.scope !3, !noalias !4
  br label %L_800215418
L_800215418:
  ; @pc 0x800215418 word 0xb4000954
  %r581.p = getelementptr inbounds i8, ptr %c, i64 160
  %r581 = load i64, ptr %r581.p, align 8, !alias.scope !3, !noalias !4
  %cmp582 = icmp eq i64 %r581, 0
  br i1 %cmp582, label %L_800215540, label %L_80021541c_ft
L_800215450:
  ; @pc 0x800215450 word 0xaa1403e0
  %r644.p = getelementptr inbounds i8, ptr %c, i64 160
  %r644 = load i64, ptr %r644.p, align 8, !alias.scope !3, !noalias !4
  %t645 = or i64 0, %r644
  %wp646 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215454 word 0xaa1303e1
  %r647.p = getelementptr inbounds i8, ptr %c, i64 152
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %t648 = or i64 0, %r647
  %wp649 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t648, ptr %wp649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215458 word 0xa9434ff4
  %r650.p = getelementptr inbounds i8, ptr %c, i64 256
  %r650 = load i64, ptr %r650.p, align 8, !alias.scope !3, !noalias !4
  %t651 = add i64 %r650, 48
  %t652 = add i64 %t651, 8
  %gmp653 = inttoptr i64 %t651 to ptr
  %gml654 = load i64, ptr %gmp653, align 1, !alias.scope !4, !noalias !3
  %gmp655 = inttoptr i64 %t652 to ptr
  %gml656 = load i64, ptr %gmp655, align 1, !alias.scope !4, !noalias !3
  %wp657 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml654, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  %wp658 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml656, ptr %wp658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021545c word 0xa94257f6
  %r659.p = getelementptr inbounds i8, ptr %c, i64 256
  %r659 = load i64, ptr %r659.p, align 8, !alias.scope !3, !noalias !4
  %t660 = add i64 %r659, 32
  %t661 = add i64 %t660, 8
  %gmp662 = inttoptr i64 %t660 to ptr
  %gml663 = load i64, ptr %gmp662, align 1, !alias.scope !4, !noalias !3
  %gmp664 = inttoptr i64 %t661 to ptr
  %gml665 = load i64, ptr %gmp664, align 1, !alias.scope !4, !noalias !3
  %wp666 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml663, ptr %wp666, align 8, !alias.scope !3, !noalias !4
  %wp667 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml665, ptr %wp667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215460 word 0xa9415ff8
  %r668.p = getelementptr inbounds i8, ptr %c, i64 256
  %r668 = load i64, ptr %r668.p, align 8, !alias.scope !3, !noalias !4
  %t669 = add i64 %r668, 16
  %t670 = add i64 %t669, 8
  %gmp671 = inttoptr i64 %t669 to ptr
  %gml672 = load i64, ptr %gmp671, align 1, !alias.scope !4, !noalias !3
  %gmp673 = inttoptr i64 %t670 to ptr
  %gml674 = load i64, ptr %gmp673, align 1, !alias.scope !4, !noalias !3
  %wp675 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml672, ptr %wp675, align 8, !alias.scope !3, !noalias !4
  %wp676 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml674, ptr %wp676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215464 word 0xa8c47bfd
  %r677.p = getelementptr inbounds i8, ptr %c, i64 256
  %r677 = load i64, ptr %r677.p, align 8, !alias.scope !3, !noalias !4
  %t678 = add i64 %r677, 8
  %gmp679 = inttoptr i64 %r677 to ptr
  %gml680 = load i64, ptr %gmp679, align 1, !alias.scope !4, !noalias !3
  %gmp681 = inttoptr i64 %t678 to ptr
  %gml682 = load i64, ptr %gmp681, align 1, !alias.scope !4, !noalias !3
  %t683 = add i64 %r677, 64
  %wp684 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t683, ptr %wp684, align 8, !alias.scope !3, !noalias !4
  %wp685 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml680, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  %wp686 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml682, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215468 word 0xd61f0040
  %r687.p = getelementptr inbounds i8, ptr %c, i64 16
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %pcp1507 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r687, ptr %pcp1507, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_80021546c:
  ; @pc 0x80021546c word 0xaa1f03f8
  %t688 = or i64 0, 0
  %wp689 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t688, ptr %wp689, align 8, !alias.scope !3, !noalias !4
  br label %L_800215470
L_800215470:
  ; @pc 0x800215470 word 0x52800028
  %c690 = zext i32 1 to i64
  %wp691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c690, ptr %wp691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215474 word 0x17ffffbe
  br label %L_80021536c
L_800215478:
  ; @pc 0x800215478 word 0xd503201f
  ; @pc 0x80021547c word 0x1034fac9
  %wp692 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34362356692, ptr %wp692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215480 word 0xeb09011f
  %r693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %r694.p = getelementptr inbounds i8, ptr %c, i64 72
  %r694 = load i64, ptr %r694.p, align 8, !alias.scope !3, !noalias !4
  %t695 = sub i64 %r693, %r694
  %fn696 = icmp slt i64 %t695, 0
  %fz697 = icmp eq i64 %t695, 0
  %fc698 = icmp uge i64 %r693, %r694
  %fx1699 = xor i64 %r693, %r694
  %fx2700 = xor i64 %r693, %t695
  %fva701 = and i64 %fx1699, %fx2700
  %fv702 = icmp slt i64 %fva701, 0
  %nz703 = zext i1 %fn696 to i64
  %zz704 = zext i1 %fz697 to i64
  %cz705 = zext i1 %fc698 to i64
  %vz706 = zext i1 %fv702 to i64
  %ns707 = shl i64 %nz703, 31
  %zs708 = shl i64 %zz704, 30
  %cs709 = shl i64 %cz705, 29
  %vs710 = shl i64 %vz706, 28
  %nzor711 = or i64 %ns707, %zs708
  %cvor712 = or i64 %cs709, %vs710
  %nzcv713 = or i64 %nzor711, %cvor712
  %wp714 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv713, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215484 word 0x54000201
  %r715.p = getelementptr inbounds i8, ptr %c, i64 272
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %fsh717 = lshr i64 %r715, 30
  %ftr718 = trunc i64 %fsh717 to i1
  %cond716 = xor i1 %ftr718, true
  br i1 %cond716, label %L_8002154c4, label %L_800215488_ft
L_8002154a4:
  ; @pc 0x8002154a4 word 0xeb13015f
  %r768.p = getelementptr inbounds i8, ptr %c, i64 80
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %r769.p = getelementptr inbounds i8, ptr %c, i64 152
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %t770 = sub i64 %r768, %r769
  %fn771 = icmp slt i64 %t770, 0
  %fz772 = icmp eq i64 %t770, 0
  %fc773 = icmp uge i64 %r768, %r769
  %fx1774 = xor i64 %r768, %r769
  %fx2775 = xor i64 %r768, %t770
  %fva776 = and i64 %fx1774, %fx2775
  %fv777 = icmp slt i64 %fva776, 0
  %nz778 = zext i1 %fn771 to i64
  %zz779 = zext i1 %fz772 to i64
  %cz780 = zext i1 %fc773 to i64
  %vz781 = zext i1 %fv777 to i64
  %ns782 = shl i64 %nz778, 31
  %zs783 = shl i64 %zz779, 30
  %cs784 = shl i64 %cz780, 29
  %vs785 = shl i64 %vz781, 28
  %nzor786 = or i64 %ns782, %zs783
  %cvor787 = or i64 %cs784, %vs785
  %nzcv788 = or i64 %nzor786, %cvor787
  %wp789 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv788, ptr %wp789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154a8 word 0x54fff589
  %r790.p = getelementptr inbounds i8, ptr %c, i64 272
  %r790 = load i64, ptr %r790.p, align 8, !alias.scope !3, !noalias !4
  %fsh792 = lshr i64 %r790, 29
  %ftr793 = trunc i64 %fsh792 to i1
  %fsh794 = lshr i64 %r790, 30
  %ftr795 = trunc i64 %fsh794 to i1
  %fnz796 = xor i1 %ftr795, true
  %fhi797 = and i1 %ftr793, %fnz796
  %cond791 = xor i1 %fhi797, true
  br i1 %cond791, label %L_800215358, label %L_8002154ac
L_8002154ac:
  ; @pc 0x8002154ac word 0xaa1503f8
  %r798.p = getelementptr inbounds i8, ptr %c, i64 168
  %r798 = load i64, ptr %r798.p, align 8, !alias.scope !3, !noalias !4
  %t799 = or i64 0, %r798
  %wp800 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t799, ptr %wp800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154b0 word 0x17fffff0
  br label %L_800215470
L_8002154b4:
  ; @pc 0x8002154b4 word 0xf9401aa9
  %r801.p = getelementptr inbounds i8, ptr %c, i64 168
  %r801 = load i64, ptr %r801.p, align 8, !alias.scope !3, !noalias !4
  %t802 = add i64 %r801, 48
  %gmp803 = inttoptr i64 %t802 to ptr
  %gml804 = load i64, ptr %gmp803, align 1, !alias.scope !4, !noalias !3
  %wp805 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml804, ptr %wp805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154b8 word 0xaa0803ea
  %r806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %t807 = or i64 0, %r806
  %wp808 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t807, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154bc word 0xd1030129
  %r809.p = getelementptr inbounds i8, ptr %c, i64 72
  %r809 = load i64, ptr %r809.p, align 8, !alias.scope !3, !noalias !4
  %t810 = sub i64 %r809, 192
  %wp811 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t810, ptr %wp811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154c0 word 0x17ffffa3
  br label %L_80021534c
L_8002154c4:
  ; @pc 0x8002154c4 word 0xaa1503e0
  %r812.p = getelementptr inbounds i8, ptr %c, i64 168
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %t813 = or i64 0, %r812
  %wp814 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t813, ptr %wp814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154c8 word 0xaa1303e1
  %r815.p = getelementptr inbounds i8, ptr %c, i64 152
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %t816 = or i64 0, %r815
  %wp817 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t816, ptr %wp817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154cc word 0xd63f0100
  %r818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r818 = load i64, ptr %r818.p, align 8, !alias.scope !3, !noalias !4
  %fp819 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r818, ptr %fp819, align 8, !alias.scope !3, !noalias !4
  %wp820 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922768, ptr %wp820, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002154d0 word 0x3707f4a0
  %r821.p = getelementptr inbounds i8, ptr %c, i64 0
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %t822 = and i64 %r821, 1
  %cmp823 = icmp ne i64 %t822, 0
  br i1 %cmp823, label %L_800215364, label %L_8002154d4_ft
L_8002154d8:
  ; @pc 0x8002154d8 word 0xb94082a9
  %r824.p = getelementptr inbounds i8, ptr %c, i64 168
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %t825 = add i64 %r824, 128
  %gmp826 = inttoptr i64 %t825 to ptr
  %gml827 = load i32, ptr %gmp826, align 1, !alias.scope !4, !noalias !3
  %c828 = zext i32 %gml827 to i64
  %wp829 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c828, ptr %wp829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154dc word 0x7100053f
  %r830.p = getelementptr inbounds i8, ptr %c, i64 72
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %c831 = trunc i64 %r830 to i32
  %t832 = sub i32 %c831, 1
  %fn833 = icmp slt i32 %t832, 0
  %fz834 = icmp eq i32 %t832, 0
  %fc835 = icmp uge i32 %c831, 1
  %fx1836 = xor i32 %c831, 1
  %fx2837 = xor i32 %c831, %t832
  %fva838 = and i32 %fx1836, %fx2837
  %fv839 = icmp slt i32 %fva838, 0
  %nz840 = zext i1 %fn833 to i64
  %zz841 = zext i1 %fz834 to i64
  %cz842 = zext i1 %fc835 to i64
  %vz843 = zext i1 %fv839 to i64
  %ns844 = shl i64 %nz840, 31
  %zs845 = shl i64 %zz841, 30
  %cs846 = shl i64 %cz842, 29
  %vs847 = shl i64 %vz843, 28
  %nzor848 = or i64 %ns844, %zs845
  %cvor849 = or i64 %cs846, %vs847
  %nzcv850 = or i64 %nzor848, %cvor849
  %wp851 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv850, ptr %wp851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154e0 word 0x54000e41
  %r852.p = getelementptr inbounds i8, ptr %c, i64 272
  %r852 = load i64, ptr %r852.p, align 8, !alias.scope !3, !noalias !4
  %fsh854 = lshr i64 %r852, 30
  %ftr855 = trunc i64 %fsh854 to i1
  %cond853 = xor i1 %ftr855, true
  br i1 %cond853, label %L_8002156a8, label %L_8002154e4
L_8002154e4:
  ; @pc 0x8002154e4 word 0xeb13011f
  %r856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r856 = load i64, ptr %r856.p, align 8, !alias.scope !3, !noalias !4
  %r857.p = getelementptr inbounds i8, ptr %c, i64 152
  %r857 = load i64, ptr %r857.p, align 8, !alias.scope !3, !noalias !4
  %t858 = sub i64 %r856, %r857
  %fn859 = icmp slt i64 %t858, 0
  %fz860 = icmp eq i64 %t858, 0
  %fc861 = icmp uge i64 %r856, %r857
  %fx1862 = xor i64 %r856, %r857
  %fx2863 = xor i64 %r856, %t858
  %fva864 = and i64 %fx1862, %fx2863
  %fv865 = icmp slt i64 %fva864, 0
  %nz866 = zext i1 %fn859 to i64
  %zz867 = zext i1 %fz860 to i64
  %cz868 = zext i1 %fc861 to i64
  %vz869 = zext i1 %fv865 to i64
  %ns870 = shl i64 %nz866, 31
  %zs871 = shl i64 %zz867, 30
  %cs872 = shl i64 %cz868, 29
  %vs873 = shl i64 %vz869, 28
  %nzor874 = or i64 %ns870, %zs871
  %cvor875 = or i64 %cs872, %vs873
  %nzcv876 = or i64 %nzor874, %cvor875
  %wp877 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv876, ptr %wp877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154e8 word 0x540000a8
  %r878.p = getelementptr inbounds i8, ptr %c, i64 272
  %r878 = load i64, ptr %r878.p, align 8, !alias.scope !3, !noalias !4
  %fsh880 = lshr i64 %r878, 29
  %ftr881 = trunc i64 %fsh880 to i1
  %fsh882 = lshr i64 %r878, 30
  %ftr883 = trunc i64 %fsh882 to i1
  %fnz884 = xor i1 %ftr883, true
  %cond879 = and i1 %ftr881, %fnz884
  br i1 %cond879, label %L_8002154fc, label %L_8002154ec_ft
L_8002154fc:
  ; @pc 0x8002154fc word 0xf9400508
  %r922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %t923 = add i64 %r922, 8
  %gmp924 = inttoptr i64 %t923 to ptr
  %gml925 = load i64, ptr %gmp924, align 1, !alias.scope !4, !noalias !3
  %wp926 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml925, ptr %wp926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215500 word 0xb5ffff28
  %r927.p = getelementptr inbounds i8, ptr %c, i64 64
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %cmp928 = icmp ne i64 %r927, 0
  br i1 %cmp928, label %L_8002154e4, label %L_800215504_ft
L_800215508:
  ; @pc 0x800215508 word 0xf9400694
  %r929.p = getelementptr inbounds i8, ptr %c, i64 160
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %t930 = add i64 %r929, 8
  %gmp931 = inttoptr i64 %t930 to ptr
  %gml932 = load i64, ptr %gmp931, align 1, !alias.scope !4, !noalias !3
  %wp933 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml932, ptr %wp933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021550c word 0xaa1f03f7
  %t934 = or i64 0, 0
  %wp935 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t934, ptr %wp935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215510 word 0xaa1f03f8
  %t936 = or i64 0, 0
  %wp937 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t936, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215514 word 0x52800036
  %c938 = zext i32 1 to i64
  %wp939 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c938, ptr %wp939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215518 word 0x17ffffc0
  br label %L_800215418
L_80021551c:
  ; @pc 0x80021551c word 0xaa1303e0
  %r940.p = getelementptr inbounds i8, ptr %c, i64 152
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %t941 = or i64 0, %r940
  %wp942 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t941, ptr %wp942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215520 word 0xa9434ff4
  %r943.p = getelementptr inbounds i8, ptr %c, i64 256
  %r943 = load i64, ptr %r943.p, align 8, !alias.scope !3, !noalias !4
  %t944 = add i64 %r943, 48
  %t945 = add i64 %t944, 8
  %gmp946 = inttoptr i64 %t944 to ptr
  %gml947 = load i64, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %gmp948 = inttoptr i64 %t945 to ptr
  %gml949 = load i64, ptr %gmp948, align 1, !alias.scope !4, !noalias !3
  %wp950 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml947, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  %wp951 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml949, ptr %wp951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215524 word 0xa94257f6
  %r952.p = getelementptr inbounds i8, ptr %c, i64 256
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %t953 = add i64 %r952, 32
  %t954 = add i64 %t953, 8
  %gmp955 = inttoptr i64 %t953 to ptr
  %gml956 = load i64, ptr %gmp955, align 1, !alias.scope !4, !noalias !3
  %gmp957 = inttoptr i64 %t954 to ptr
  %gml958 = load i64, ptr %gmp957, align 1, !alias.scope !4, !noalias !3
  %wp959 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml956, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  %wp960 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml958, ptr %wp960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215528 word 0xa9415ff8
  %r961.p = getelementptr inbounds i8, ptr %c, i64 256
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %t962 = add i64 %r961, 16
  %t963 = add i64 %t962, 8
  %gmp964 = inttoptr i64 %t962 to ptr
  %gml965 = load i64, ptr %gmp964, align 1, !alias.scope !4, !noalias !3
  %gmp966 = inttoptr i64 %t963 to ptr
  %gml967 = load i64, ptr %gmp966, align 1, !alias.scope !4, !noalias !3
  %wp968 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml965, ptr %wp968, align 8, !alias.scope !3, !noalias !4
  %wp969 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml967, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021552c word 0xa8c47bfd
  %r970.p = getelementptr inbounds i8, ptr %c, i64 256
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 8
  %gmp972 = inttoptr i64 %r970 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %gmp974 = inttoptr i64 %t971 to ptr
  %gml975 = load i64, ptr %gmp974, align 1, !alias.scope !4, !noalias !3
  %t976 = add i64 %r970, 64
  %wp977 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t976, ptr %wp977, align 8, !alias.scope !3, !noalias !4
  %wp978 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml973, ptr %wp978, align 8, !alias.scope !3, !noalias !4
  %wp979 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml975, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215530 word 0x17fa116c
  musttail call void @f_800099ae0(ptr %c)
  ret void
L_800215534:
  ; @pc 0x800215534 word 0xd1034129
  %r980.p = getelementptr inbounds i8, ptr %c, i64 72
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %t981 = sub i64 %r980, 208
  %wp982 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t981, ptr %wp982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215538 word 0x17ffffaa
  br label %L_8002153e0
L_80021553c:
  ; @pc 0x80021553c word 0xaa1f03f4
  %t983 = or i64 0, 0
  %wp984 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  br label %L_800215540
L_800215540:
  ; @pc 0x800215540 word 0xb001c520
  %wp985 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421317632, ptr %wp985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215544 word 0x91308000
  %r986.p = getelementptr inbounds i8, ptr %c, i64 0
  %r986 = load i64, ptr %r986.p, align 8, !alias.scope !3, !noalias !4
  %t987 = add i64 %r986, 3104
  %wp988 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t987, ptr %wp988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215548 word 0x94a63ac6
  %wp989 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922892, ptr %wp989, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x80021554c word 0x37000296
  %r990.p = getelementptr inbounds i8, ptr %c, i64 176
  %r990 = load i64, ptr %r990.p, align 8, !alias.scope !3, !noalias !4
  %t991 = and i64 %r990, 1
  %cmp992 = icmp ne i64 %t991, 0
  br i1 %cmp992, label %L_80021559c, label %L_800215550_ft
L_80021557c:
  ; @pc 0x80021557c word 0xaa0003f5
  %r1061.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1061 = load i64, ptr %r1061.p, align 8, !alias.scope !3, !noalias !4
  %t1062 = or i64 0, %r1061
  %wp1063 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1062, ptr %wp1063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215580 word 0x14000017
  br label %L_8002155dc
L_800215584:
  ; @pc 0x800215584 word 0xf9401aa8
  %r1064.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1064 = load i64, ptr %r1064.p, align 8, !alias.scope !3, !noalias !4
  %t1065 = add i64 %r1064, 48
  %gmp1066 = inttoptr i64 %t1065 to ptr
  %gml1067 = load i64, ptr %gmp1066, align 1, !alias.scope !4, !noalias !3
  %wp1068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1067, ptr %wp1068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215588 word 0xaa0903ea
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %t1070 = or i64 0, %r1069
  %wp1071 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1070, ptr %wp1071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021558c word 0x8b080128
  %r1072.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1072 = load i64, ptr %r1072.p, align 8, !alias.scope !3, !noalias !4
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %t1074 = add i64 %r1072, %r1073
  %wp1075 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1074, ptr %wp1075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215590 word 0xd1038108
  %r1076.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1076 = load i64, ptr %r1076.p, align 8, !alias.scope !3, !noalias !4
  %t1077 = sub i64 %r1076, 224
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215594 word 0x17ffffc4
  br label %L_8002154a4
L_800215598:
  ; @pc 0x800215598 word 0xaa1503f8
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %t1080 = or i64 0, %r1079
  %wp1081 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1080, ptr %wp1081, align 8, !alias.scope !3, !noalias !4
  br label %L_80021559c
L_80021559c:
  ; @pc 0x80021559c word 0xb4000074
  %r1082.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1082 = load i64, ptr %r1082.p, align 8, !alias.scope !3, !noalias !4
  %cmp1083 = icmp eq i64 %r1082, 0
  br i1 %cmp1083, label %L_8002155a8, label %L_8002155a0_ft
L_8002155a8:
  ; @pc 0x8002155a8 word 0xb001c529
  %wp1110 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34421317632, ptr %wp1110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155ac word 0x912ea129
  %r1111.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1111 = load i64, ptr %r1111.p, align 8, !alias.scope !3, !noalias !4
  %t1112 = add i64 %r1111, 2984
  %wp1113 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1112, ptr %wp1113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155b0 word 0xb9800128
  %r1114.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1114 = load i64, ptr %r1114.p, align 8, !alias.scope !3, !noalias !4
  %gmp1115 = inttoptr i64 %r1114 to ptr
  %gml1116 = load i32, ptr %gmp1115, align 1, !alias.scope !4, !noalias !3
  %c1117 = sext i32 %gml1116 to i64
  %wp1118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1117, ptr %wp1118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155b4 word 0x34000228
  %r1119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1119 = load i64, ptr %r1119.p, align 8, !alias.scope !3, !noalias !4
  %c1120 = trunc i64 %r1119 to i32
  %cmp1121 = icmp eq i32 %c1120, 0
  br i1 %cmp1121, label %L_8002155f8, label %L_8002155b8_ft
L_8002155c4:
  ; @pc 0x8002155c4 word 0xf9400280
  %r1134.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1134 = load i64, ptr %r1134.p, align 8, !alias.scope !3, !noalias !4
  %gmp1135 = inttoptr i64 %r1134 to ptr
  %gml1136 = load i64, ptr %gmp1135, align 1, !alias.scope !4, !noalias !3
  %wp1137 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1136, ptr %wp1137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155c8 word 0xaa1303e1
  %r1138.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1138 = load i64, ptr %r1138.p, align 8, !alias.scope !3, !noalias !4
  %t1139 = or i64 0, %r1138
  %wp1140 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1139, ptr %wp1140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155cc word 0x9401ecbc
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923024, ptr %wp1141, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x8002155d0 word 0xb40000e0
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %cmp1143 = icmp eq i64 %r1142, 0
  br i1 %cmp1143, label %L_8002155ec, label %L_8002155d4
L_8002155d4:
  ; @pc 0x8002155d4 word 0xaa0003f5
  %r1144.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1144 = load i64, ptr %r1144.p, align 8, !alias.scope !3, !noalias !4
  %t1145 = or i64 0, %r1144
  %wp1146 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1145, ptr %wp1146, align 8, !alias.scope !3, !noalias !4
  br label %L_8002155d8
L_8002155d8:
  ; @pc 0x8002155d8 word 0xf90002f5
  %r1147.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1147 = load i64, ptr %r1147.p, align 8, !alias.scope !3, !noalias !4
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %gmp1149 = inttoptr i64 %r1147 to ptr
  store i64 %r1148, ptr %gmp1149, align 1, !alias.scope !4, !noalias !3
  br label %L_8002155dc
L_8002155dc:
  ; @pc 0x8002155dc word 0xb001c520
  %wp1150 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421317632, ptr %wp1150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155e0 word 0x91308000
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %t1152 = add i64 %r1151, 3104
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1152, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155e4 word 0x94a63aa3
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923048, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8002155e8 word 0x17ffff66
  br label %L_800215380
L_8002155ec:
  ; @pc 0x8002155ec word 0x91002294
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %t1156 = add i64 %r1155, 8
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155f0 word 0xf1002318
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %t1159 = sub i64 %r1158, 8
  %fn1160 = icmp slt i64 %t1159, 0
  %fz1161 = icmp eq i64 %t1159, 0
  %fc1162 = icmp uge i64 %r1158, 8
  %fx11163 = xor i64 %r1158, 8
  %fx21164 = xor i64 %r1158, %t1159
  %fva1165 = and i64 %fx11163, %fx21164
  %fv1166 = icmp slt i64 %fva1165, 0
  %nz1167 = zext i1 %fn1160 to i64
  %zz1168 = zext i1 %fz1161 to i64
  %cz1169 = zext i1 %fc1162 to i64
  %vz1170 = zext i1 %fv1166 to i64
  %ns1171 = shl i64 %nz1167, 31
  %zs1172 = shl i64 %zz1168, 30
  %cs1173 = shl i64 %cz1169, 29
  %vs1174 = shl i64 %vz1170, 28
  %nzor1175 = or i64 %ns1171, %zs1172
  %cvor1176 = or i64 %cs1173, %vs1174
  %nzcv1177 = or i64 %nzor1175, %cvor1176
  %wp1178 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1177, ptr %wp1178, align 8, !alias.scope !3, !noalias !4
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1159, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155f4 word 0x54fffe81
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %fsh1182 = lshr i64 %r1180, 30
  %ftr1183 = trunc i64 %fsh1182 to i1
  %cond1181 = xor i1 %ftr1183, true
  br i1 %cond1181, label %L_8002155c4, label %L_8002155f8
L_8002155f8:
  ; @pc 0x8002155f8 word 0xb001c528
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155fc word 0x912f6108
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = add i64 %r1185, 3032
  %wp1187 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1186, ptr %wp1187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215600 word 0xb9800118
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %gmp1189 = inttoptr i64 %r1188 to ptr
  %gml1190 = load i32, ptr %gmp1189, align 1, !alias.scope !4, !noalias !3
  %c1191 = sext i32 %gml1190 to i64
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1191, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215604 word 0x34000178
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %c1194 = trunc i64 %r1193 to i32
  %cmp1195 = icmp eq i32 %c1194, 0
  br i1 %cmp1195, label %L_800215630, label %L_800215608_ft
L_80021562c:
  ; @pc 0x80021562c word 0xb50006b8
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %cmp1225 = icmp ne i64 %r1224, 0
  br i1 %cmp1225, label %L_800215700, label %L_800215630
L_800215630:
  ; @pc 0x800215630 word 0xb001c528
  %wp1226 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp1226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215634 word 0x91302108
  %r1227.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1227 = load i64, ptr %r1227.p, align 8, !alias.scope !3, !noalias !4
  %t1228 = add i64 %r1227, 3080
  %wp1229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1228, ptr %wp1229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215638 word 0xf9400100
  %r1230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1230 = load i64, ptr %r1230.p, align 8, !alias.scope !3, !noalias !4
  %gmp1231 = inttoptr i64 %r1230 to ptr
  %gml1232 = load i64, ptr %gmp1231, align 1, !alias.scope !4, !noalias !3
  %wp1233 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1232, ptr %wp1233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021563c word 0xb4000100
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %cmp1235 = icmp eq i64 %r1234, 0
  br i1 %cmp1235, label %L_80021565c, label %L_800215640_ft
L_80021565c:
  ; @pc 0x80021565c word 0xaa1f03f5
  %t1279 = or i64 0, 0
  %wp1280 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1279, ptr %wp1280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215660 word 0x17ffffdf
  br label %L_8002155dc
L_800215664:
  ; @pc 0x800215664 word 0xf9400280
  %r1281.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1281 = load i64, ptr %r1281.p, align 8, !alias.scope !3, !noalias !4
  %gmp1282 = inttoptr i64 %r1281 to ptr
  %gml1283 = load i64, ptr %gmp1282, align 1, !alias.scope !4, !noalias !3
  %wp1284 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1283, ptr %wp1284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215668 word 0xaa1303e1
  %r1285.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1285 = load i64, ptr %r1285.p, align 8, !alias.scope !3, !noalias !4
  %t1286 = or i64 0, %r1285
  %wp1287 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1286, ptr %wp1287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021566c word 0x9401ec94
  %wp1288 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923184, ptr %wp1288, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x800215670 word 0xb5fff860
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %cmp1290 = icmp ne i64 %r1289, 0
  br i1 %cmp1290, label %L_80021557c, label %L_800215674_ft
L_800215684:
  ; @pc 0x800215684 word 0xaa1403e0
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %t1321 = or i64 0, %r1320
  %wp1322 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1321, ptr %wp1322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215688 word 0xaa1303e1
  %r1323.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1323 = load i64, ptr %r1323.p, align 8, !alias.scope !3, !noalias !4
  %t1324 = or i64 0, %r1323
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021568c word 0x9401ec8c
  %wp1326 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923216, ptr %wp1326, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x800215690 word 0xf100001f
  %r1327.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1327 = load i64, ptr %r1327.p, align 8, !alias.scope !3, !noalias !4
  %t1328 = sub i64 %r1327, 0
  %fn1329 = icmp slt i64 %t1328, 0
  %fz1330 = icmp eq i64 %t1328, 0
  %fc1331 = icmp uge i64 %r1327, 0
  %fx11332 = xor i64 %r1327, 0
  %fx21333 = xor i64 %r1327, %t1328
  %fva1334 = and i64 %fx11332, %fx21333
  %fv1335 = icmp slt i64 %fva1334, 0
  %nz1336 = zext i1 %fn1329 to i64
  %zz1337 = zext i1 %fz1330 to i64
  %cz1338 = zext i1 %fc1331 to i64
  %vz1339 = zext i1 %fv1335 to i64
  %ns1340 = shl i64 %nz1336, 31
  %zs1341 = shl i64 %zz1337, 30
  %cs1342 = shl i64 %cz1338, 29
  %vs1343 = shl i64 %vz1339, 28
  %nzor1344 = or i64 %ns1340, %zs1341
  %cvor1345 = or i64 %cs1342, %vs1343
  %nzcv1346 = or i64 %nzor1344, %cvor1345
  %wp1347 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1346, ptr %wp1347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215694 word 0xaa0003f5
  %r1348.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1348 = load i64, ptr %r1348.p, align 8, !alias.scope !3, !noalias !4
  %t1349 = or i64 0, %r1348
  %wp1350 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1349, ptr %wp1350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215698 word 0x1a9f16c8
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %c1352 = trunc i64 %r1351 to i32
  %t1353 = add i32 0, 1
  %r1354.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1354 = load i64, ptr %r1354.p, align 8, !alias.scope !3, !noalias !4
  %fsh1356 = lshr i64 %r1354, 30
  %ftr1357 = trunc i64 %fsh1356 to i1
  %cond1355 = xor i1 %ftr1357, true
  %sel1358 = select i1 %cond1355, i32 %c1352, i32 %t1353
  %c1359 = zext i32 %sel1358 to i64
  %wp1360 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1359, ptr %wp1360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021569c word 0x3607f9e8
  %r1361.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1361 = load i64, ptr %r1361.p, align 8, !alias.scope !3, !noalias !4
  %t1362 = and i64 %r1361, 1
  %cmp1363 = icmp eq i64 %t1362, 0
  br i1 %cmp1363, label %L_8002155d8, label %L_8002156a0_ft
L_8002156a8:
  ; @pc 0x8002156a8 word 0xaa0803e9
  %r1366.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1366 = load i64, ptr %r1366.p, align 8, !alias.scope !3, !noalias !4
  %t1367 = or i64 0, %r1366
  %wp1368 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1367, ptr %wp1368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156ac word 0xf841052a
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1369 = load i64, ptr %r1369.p, align 8, !alias.scope !3, !noalias !4
  %t1370 = add i64 %r1369, 16
  %gmp1371 = inttoptr i64 %r1369 to ptr
  %gml1372 = load i64, ptr %gmp1371, align 1, !alias.scope !4, !noalias !3
  %wp1373 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1370, ptr %wp1373, align 8, !alias.scope !3, !noalias !4
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1372, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156b0 word 0xeb13013f
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %r1376.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1376 = load i64, ptr %r1376.p, align 8, !alias.scope !3, !noalias !4
  %t1377 = sub i64 %r1375, %r1376
  %fn1378 = icmp slt i64 %t1377, 0
  %fz1379 = icmp eq i64 %t1377, 0
  %fc1380 = icmp uge i64 %r1375, %r1376
  %fx11381 = xor i64 %r1375, %r1376
  %fx21382 = xor i64 %r1375, %t1377
  %fva1383 = and i64 %fx11381, %fx21382
  %fv1384 = icmp slt i64 %fva1383, 0
  %nz1385 = zext i1 %fn1378 to i64
  %zz1386 = zext i1 %fz1379 to i64
  %cz1387 = zext i1 %fc1380 to i64
  %vz1388 = zext i1 %fv1384 to i64
  %ns1389 = shl i64 %nz1385, 31
  %zs1390 = shl i64 %zz1386, 30
  %cs1391 = shl i64 %cz1387, 29
  %vs1392 = shl i64 %vz1388, 28
  %nzor1393 = or i64 %ns1389, %zs1390
  %cvor1394 = or i64 %cs1391, %vs1392
  %nzcv1395 = or i64 %nzor1393, %cvor1394
  %wp1396 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1395, ptr %wp1396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156b4 word 0x54000089
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %fsh1399 = lshr i64 %r1397, 29
  %ftr1400 = trunc i64 %fsh1399 to i1
  %fsh1401 = lshr i64 %r1397, 30
  %ftr1402 = trunc i64 %fsh1401 to i1
  %fnz1403 = xor i1 %ftr1402, true
  %fhi1404 = and i1 %ftr1400, %fnz1403
  %cond1398 = xor i1 %fhi1404, true
  br i1 %cond1398, label %L_8002156c4, label %L_8002156b8_ft
L_8002156c4:
  ; @pc 0x8002156c4 word 0xf9400508
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %t1440 = add i64 %r1439, 8
  %gmp1441 = inttoptr i64 %t1440 to ptr
  %gml1442 = load i64, ptr %gmp1441, align 1, !alias.scope !4, !noalias !3
  %wp1443 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1442, ptr %wp1443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156c8 word 0xb4ffea08
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %cmp1445 = icmp eq i64 %r1444, 0
  br i1 %cmp1445, label %L_800215408, label %L_8002156cc_ft
L_8002156d0:
  ; @pc 0x8002156d0 word 0xaa1603e0
  %r1446.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1446 = load i64, ptr %r1446.p, align 8, !alias.scope !3, !noalias !4
  %t1447 = or i64 0, %r1446
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156d4 word 0x94a63a67
  %wp1449 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923288, ptr %wp1449, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8002156d8 word 0x17ffff23
  br label %L_800215364
L_8002156dc:
  ; @pc 0x8002156dc word 0xd37df318
  %r1450.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1450 = load i64, ptr %r1450.p, align 8, !alias.scope !3, !noalias !4
  %ror1451 = call i64 @llvm.fshr.i64(i64 %r1450, i64 %r1450, i64 61)
  %t1452 = and i64 %ror1451, -8
  %wp1453 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1452, ptr %wp1453, align 8, !alias.scope !3, !noalias !4
  br label %L_8002156e0
L_8002156e0:
  ; @pc 0x8002156e0 word 0xf9400280
  %r1454.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1454 = load i64, ptr %r1454.p, align 8, !alias.scope !3, !noalias !4
  %gmp1455 = inttoptr i64 %r1454 to ptr
  %gml1456 = load i64, ptr %gmp1455, align 1, !alias.scope !4, !noalias !3
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156e4 word 0xaa1303e1
  %r1458.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1458 = load i64, ptr %r1458.p, align 8, !alias.scope !3, !noalias !4
  %t1459 = or i64 0, %r1458
  %wp1460 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1459, ptr %wp1460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156e8 word 0x9401ec75
  %wp1461 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923308, ptr %wp1461, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x8002156ec word 0xb5fff480
  %r1462.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1462 = load i64, ptr %r1462.p, align 8, !alias.scope !3, !noalias !4
  %cmp1463 = icmp ne i64 %r1462, 0
  br i1 %cmp1463, label %L_80021557c, label %L_8002156f0_ft
L_800215700:
  ; @pc 0x800215700 word 0xf8408680
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %t1493 = add i64 %r1492, 8
  %gmp1494 = inttoptr i64 %r1492 to ptr
  %gml1495 = load i64, ptr %gmp1494, align 1, !alias.scope !4, !noalias !3
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1493, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  %wp1497 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1495, ptr %wp1497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215704 word 0xaa1303e1
  %r1498.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1498 = load i64, ptr %r1498.p, align 8, !alias.scope !3, !noalias !4
  %t1499 = or i64 0, %r1498
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215708 word 0x9401ec6d
  %wp1501 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923340, ptr %wp1501, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80021570c word 0xd1002318
  %r1502.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1502 = load i64, ptr %r1502.p, align 8, !alias.scope !3, !noalias !4
  %t1503 = sub i64 %r1502, 8
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1503, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215710 word 0xb4fff8e0
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %cmp1506 = icmp eq i64 %r1505, 0
  br i1 %cmp1506, label %L_80021562c, label %L_800215714_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361922208, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8002152a0
L_8002152c8_ft:
  ; @pc 0x8002152c8 word 0xb4000773
  %r52.p = getelementptr inbounds i8, ptr %c, i64 152
  %r52 = load i64, ptr %r52.p, align 8, !alias.scope !3, !noalias !4
  %cmp53 = icmp eq i64 %r52, 0
  br i1 %cmp53, label %L_8002153b4, label %L_8002152cc_ft
L_8002152cc_ft:
  ; @pc 0x8002152cc word 0xb001c528
  %wp54 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp54, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152d0 word 0x91368108
  %r55.p = getelementptr inbounds i8, ptr %c, i64 64
  %r55 = load i64, ptr %r55.p, align 8, !alias.scope !3, !noalias !4
  %t56 = add i64 %r55, 3488
  %wp57 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152d4 word 0xf9400108
  %r58.p = getelementptr inbounds i8, ptr %c, i64 64
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %gmp59 = inttoptr i64 %r58 to ptr
  %gml60 = load i64, ptr %gmp59, align 1, !alias.scope !4, !noalias !3
  %wp61 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152d8 word 0xb4001188
  %r62.p = getelementptr inbounds i8, ptr %c, i64 64
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %cmp63 = icmp eq i64 %r62, 0
  br i1 %cmp63, label %L_800215508, label %L_8002152dc_ft
L_8002152dc_ft:
  ; @pc 0x8002152dc word 0xb9404900
  %r64.p = getelementptr inbounds i8, ptr %c, i64 64
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = add i64 %r64, 72
  %gmp66 = inttoptr i64 %t65 to ptr
  %gml67 = load i32, ptr %gmp66, align 1, !alias.scope !4, !noalias !3
  %c68 = zext i32 %gml67 to i64
  %wp69 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152e0 word 0x94a639f8
  %wp70 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922276, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8002152e4 word 0xb4001120
  %r71.p = getelementptr inbounds i8, ptr %c, i64 0
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %cmp72 = icmp eq i64 %r71, 0
  br i1 %cmp72, label %L_800215508, label %L_8002152e8_ft
L_8002152e8_ft:
  ; @pc 0x8002152e8 word 0xf9404414
  %r73.p = getelementptr inbounds i8, ptr %c, i64 0
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = add i64 %r73, 136
  %gmp75 = inttoptr i64 %t74 to ptr
  %gml76 = load i64, ptr %gmp75, align 1, !alias.scope !4, !noalias !3
  %wp77 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml76, ptr %wp77, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002152ec word 0x91024017
  %r78.p = getelementptr inbounds i8, ptr %c, i64 0
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %t79 = add i64 %r78, 144
  %wp80 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  br label %L_8002152f0
L_800215300_ft:
  ; @pc 0x800215300 word 0xb4000b75
  %r108.p = getelementptr inbounds i8, ptr %c, i64 168
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %cmp109 = icmp eq i64 %r108, 0
  br i1 %cmp109, label %L_80021546c, label %L_800215304_ft
L_800215304_ft:
  ; @pc 0x800215304 word 0xb94052a8
  %r110.p = getelementptr inbounds i8, ptr %c, i64 168
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %t111 = add i64 %r110, 80
  %gmp112 = inttoptr i64 %t111 to ptr
  %gml113 = load i32, ptr %gmp112, align 1, !alias.scope !4, !noalias !3
  %c114 = zext i32 %gml113 to i64
  %wp115 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c114, ptr %wp115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215308 word 0x35000b28
  %r116.p = getelementptr inbounds i8, ptr %c, i64 64
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %c117 = trunc i64 %r116 to i32
  %cmp118 = icmp ne i32 %c117, 0
  br i1 %cmp118, label %L_80021546c, label %L_80021530c_ft
L_80021530c_ft:
  ; @pc 0x80021530c word 0xf94002a8
  %r119.p = getelementptr inbounds i8, ptr %c, i64 168
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %gmp120 = inttoptr i64 %r119 to ptr
  %gml121 = load i64, ptr %gmp120, align 1, !alias.scope !4, !noalias !3
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215310 word 0x9001ba49
  %wp123 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215314 word 0xf9404908
  %r124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r124 = load i64, ptr %r124.p, align 8, !alias.scope !3, !noalias !4
  %t125 = add i64 %r124, 144
  %gmp126 = inttoptr i64 %t125 to ptr
  %gml127 = load i64, ptr %gmp126, align 1, !alias.scope !4, !noalias !3
  %wp128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215318 word 0xf944a129
  %r129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %t130 = add i64 %r129, 2368
  %gmp131 = inttoptr i64 %t130 to ptr
  %gml132 = load i64, ptr %gmp131, align 1, !alias.scope !4, !noalias !3
  %wp133 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml132, ptr %wp133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021531c word 0xeb09011f
  %r134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r134 = load i64, ptr %r134.p, align 8, !alias.scope !3, !noalias !4
  %r135.p = getelementptr inbounds i8, ptr %c, i64 72
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %t136 = sub i64 %r134, %r135
  %fn137 = icmp slt i64 %t136, 0
  %fz138 = icmp eq i64 %t136, 0
  %fc139 = icmp uge i64 %r134, %r135
  %fx1140 = xor i64 %r134, %r135
  %fx2141 = xor i64 %r134, %t136
  %fva142 = and i64 %fx1140, %fx2141
  %fv143 = icmp slt i64 %fva142, 0
  %nz144 = zext i1 %fn137 to i64
  %zz145 = zext i1 %fz138 to i64
  %cz146 = zext i1 %fc139 to i64
  %vz147 = zext i1 %fv143 to i64
  %ns148 = shl i64 %nz144, 31
  %zs149 = shl i64 %zz145, 30
  %cs150 = shl i64 %cz146, 29
  %vs151 = shl i64 %vz147, 28
  %nzor152 = or i64 %ns148, %zs149
  %cvor153 = or i64 %cs150, %vs151
  %nzcv154 = or i64 %nzor152, %cvor153
  %wp155 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv154, ptr %wp155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215320 word 0x54000540
  %r156.p = getelementptr inbounds i8, ptr %c, i64 272
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %fsh158 = lshr i64 %r156, 30
  %cond157 = trunc i64 %fsh158 to i1
  br i1 %cond157, label %L_8002153c8, label %L_800215324_ft
L_800215324_ft:
  ; @pc 0x800215324 word 0xd503201f
  ; @pc 0x800215328 word 0x103daac9
  %wp159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34362427520, ptr %wp159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021532c word 0xeb09011f
  %r160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %r161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r161 = load i64, ptr %r161.p, align 8, !alias.scope !3, !noalias !4
  %t162 = sub i64 %r160, %r161
  %fn163 = icmp slt i64 %t162, 0
  %fz164 = icmp eq i64 %t162, 0
  %fc165 = icmp uge i64 %r160, %r161
  %fx1166 = xor i64 %r160, %r161
  %fx2167 = xor i64 %r160, %t162
  %fva168 = and i64 %fx1166, %fx2167
  %fv169 = icmp slt i64 %fva168, 0
  %nz170 = zext i1 %fn163 to i64
  %zz171 = zext i1 %fz164 to i64
  %cz172 = zext i1 %fc165 to i64
  %vz173 = zext i1 %fv169 to i64
  %ns174 = shl i64 %nz170, 31
  %zs175 = shl i64 %zz171, 30
  %cs176 = shl i64 %cz172, 29
  %vs177 = shl i64 %vz173, 28
  %nzor178 = or i64 %ns174, %zs175
  %cvor179 = or i64 %cs176, %vs177
  %nzcv180 = or i64 %nzor178, %cvor179
  %wp181 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv180, ptr %wp181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215330 word 0x54000a41
  %r182.p = getelementptr inbounds i8, ptr %c, i64 272
  %r182 = load i64, ptr %r182.p, align 8, !alias.scope !3, !noalias !4
  %fsh184 = lshr i64 %r182, 30
  %ftr185 = trunc i64 %fsh184 to i1
  %cond183 = xor i1 %ftr185, true
  br i1 %cond183, label %L_800215478, label %L_800215334_ft
L_800215334_ft:
  ; @pc 0x800215334 word 0xb94082a9
  %r186.p = getelementptr inbounds i8, ptr %c, i64 168
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %t187 = add i64 %r186, 128
  %gmp188 = inttoptr i64 %t187 to ptr
  %gml189 = load i32, ptr %gmp188, align 1, !alias.scope !4, !noalias !3
  %c190 = zext i32 %gml189 to i64
  %wp191 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c190, ptr %wp191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215338 word 0x7100053f
  %r192.p = getelementptr inbounds i8, ptr %c, i64 72
  %r192 = load i64, ptr %r192.p, align 8, !alias.scope !3, !noalias !4
  %c193 = trunc i64 %r192 to i32
  %t194 = sub i32 %c193, 1
  %fn195 = icmp slt i32 %t194, 0
  %fz196 = icmp eq i32 %t194, 0
  %fc197 = icmp uge i32 %c193, 1
  %fx1198 = xor i32 %c193, 1
  %fx2199 = xor i32 %c193, %t194
  %fva200 = and i32 %fx1198, %fx2199
  %fv201 = icmp slt i32 %fva200, 0
  %nz202 = zext i1 %fn195 to i64
  %zz203 = zext i1 %fz196 to i64
  %cz204 = zext i1 %fc197 to i64
  %vz205 = zext i1 %fv201 to i64
  %ns206 = shl i64 %nz202, 31
  %zs207 = shl i64 %zz203, 30
  %cs208 = shl i64 %cz204, 29
  %vs209 = shl i64 %vz205, 28
  %nzor210 = or i64 %ns206, %zs207
  %cvor211 = or i64 %cs208, %vs209
  %nzcv212 = or i64 %nzor210, %cvor211
  %wp213 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv212, ptr %wp213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021533c word 0xf94016a8
  %r214.p = getelementptr inbounds i8, ptr %c, i64 168
  %r214 = load i64, ptr %r214.p, align 8, !alias.scope !3, !noalias !4
  %t215 = add i64 %r214, 40
  %gmp216 = inttoptr i64 %t215 to ptr
  %gml217 = load i64, ptr %gmp216, align 1, !alias.scope !4, !noalias !3
  %wp218 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml217, ptr %wp218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215340 word 0x54000ba1
  %r219.p = getelementptr inbounds i8, ptr %c, i64 272
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %fsh221 = lshr i64 %r219, 30
  %ftr222 = trunc i64 %fsh221 to i1
  %cond220 = xor i1 %ftr222, true
  br i1 %cond220, label %L_8002154b4, label %L_800215344_ft
L_800215344_ft:
  ; @pc 0x800215344 word 0xf9401aa9
  %r223.p = getelementptr inbounds i8, ptr %c, i64 168
  %r223 = load i64, ptr %r223.p, align 8, !alias.scope !3, !noalias !4
  %t224 = add i64 %r223, 48
  %gmp225 = inttoptr i64 %t224 to ptr
  %gml226 = load i64, ptr %gmp225, align 1, !alias.scope !4, !noalias !3
  %wp227 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml226, ptr %wp227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215348 word 0x9103010a
  %r228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %t229 = add i64 %r228, 192
  %wp230 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t229, ptr %wp230, align 8, !alias.scope !3, !noalias !4
  br label %L_80021534c
L_800215354_ft:
  ; @pc 0x800215354 word 0x8b080128
  %r260.p = getelementptr inbounds i8, ptr %c, i64 72
  %r260 = load i64, ptr %r260.p, align 8, !alias.scope !3, !noalias !4
  %r261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r261 = load i64, ptr %r261.p, align 8, !alias.scope !3, !noalias !4
  %t262 = add i64 %r260, %r261
  %wp263 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t262, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  br label %L_800215358
L_80021537c_ft:
  ; @pc 0x80021537c word 0x350004c8
  %r329.p = getelementptr inbounds i8, ptr %c, i64 64
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %c330 = trunc i64 %r329 to i32
  %cmp331 = icmp ne i32 %c330, 0
  br i1 %cmp331, label %L_800215414, label %L_800215380
L_8002153a0_ft:
  ; @pc 0x8002153a0 word 0x90012d08
  %wp375 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34401374208, ptr %wp375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153a4 word 0x913c5108
  %r376.p = getelementptr inbounds i8, ptr %c, i64 64
  %r376 = load i64, ptr %r376.p, align 8, !alias.scope !3, !noalias !4
  %t377 = add i64 %r376, 3860
  %wp378 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t377, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153a8 word 0xeb08005f
  %r379.p = getelementptr inbounds i8, ptr %c, i64 16
  %r379 = load i64, ptr %r379.p, align 8, !alias.scope !3, !noalias !4
  %r380.p = getelementptr inbounds i8, ptr %c, i64 64
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %t381 = sub i64 %r379, %r380
  %fn382 = icmp slt i64 %t381, 0
  %fz383 = icmp eq i64 %t381, 0
  %fc384 = icmp uge i64 %r379, %r380
  %fx1385 = xor i64 %r379, %r380
  %fx2386 = xor i64 %r379, %t381
  %fva387 = and i64 %fx1385, %fx2386
  %fv388 = icmp slt i64 %fva387, 0
  %nz389 = zext i1 %fn382 to i64
  %zz390 = zext i1 %fz383 to i64
  %cz391 = zext i1 %fc384 to i64
  %vz392 = zext i1 %fv388 to i64
  %ns393 = shl i64 %nz389, 31
  %zs394 = shl i64 %zz390, 30
  %cs395 = shl i64 %cz391, 29
  %vs396 = shl i64 %vz392, 28
  %nzor397 = or i64 %ns393, %zs394
  %cvor398 = or i64 %cs395, %vs396
  %nzcv399 = or i64 %nzor397, %cvor398
  %wp400 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv399, ptr %wp400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153ac word 0x54000521
  %r401.p = getelementptr inbounds i8, ptr %c, i64 272
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %fsh403 = lshr i64 %r401, 30
  %ftr404 = trunc i64 %fsh403 to i1
  %cond402 = xor i1 %ftr404, true
  br i1 %cond402, label %L_800215450, label %L_8002153b0
L_8002153e8_ft:
  ; @pc 0x8002153e8 word 0x8b080128
  %r527.p = getelementptr inbounds i8, ptr %c, i64 72
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %r528.p = getelementptr inbounds i8, ptr %c, i64 64
  %r528 = load i64, ptr %r528.p, align 8, !alias.scope !3, !noalias !4
  %t529 = add i64 %r527, %r528
  %wp530 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t529, ptr %wp530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153ec word 0xeb13011f
  %r531.p = getelementptr inbounds i8, ptr %c, i64 64
  %r531 = load i64, ptr %r531.p, align 8, !alias.scope !3, !noalias !4
  %r532.p = getelementptr inbounds i8, ptr %c, i64 152
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %t533 = sub i64 %r531, %r532
  %fn534 = icmp slt i64 %t533, 0
  %fz535 = icmp eq i64 %t533, 0
  %fc536 = icmp uge i64 %r531, %r532
  %fx1537 = xor i64 %r531, %r532
  %fx2538 = xor i64 %r531, %t533
  %fva539 = and i64 %fx1537, %fx2538
  %fv540 = icmp slt i64 %fva539, 0
  %nz541 = zext i1 %fn534 to i64
  %zz542 = zext i1 %fz535 to i64
  %cz543 = zext i1 %fc536 to i64
  %vz544 = zext i1 %fv540 to i64
  %ns545 = shl i64 %nz541, 31
  %zs546 = shl i64 %zz542, 30
  %cs547 = shl i64 %cz543, 29
  %vs548 = shl i64 %vz544, 28
  %nzor549 = or i64 %ns545, %zs546
  %cvor550 = or i64 %cs547, %vs548
  %nzcv551 = or i64 %nzor549, %cvor550
  %wp552 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv551, ptr %wp552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002153f0 word 0x54fffba8
  %r553.p = getelementptr inbounds i8, ptr %c, i64 272
  %r553 = load i64, ptr %r553.p, align 8, !alias.scope !3, !noalias !4
  %fsh555 = lshr i64 %r553, 29
  %ftr556 = trunc i64 %fsh555 to i1
  %fsh557 = lshr i64 %r553, 30
  %ftr558 = trunc i64 %fsh557 to i1
  %fnz559 = xor i1 %ftr558, true
  %cond554 = and i1 %ftr556, %fnz559
  br i1 %cond554, label %L_800215364, label %L_8002153f4
L_80021541c_ft:
  ; @pc 0x80021541c word 0xeb18029f
  %r583.p = getelementptr inbounds i8, ptr %c, i64 160
  %r583 = load i64, ptr %r583.p, align 8, !alias.scope !3, !noalias !4
  %r584.p = getelementptr inbounds i8, ptr %c, i64 192
  %r584 = load i64, ptr %r584.p, align 8, !alias.scope !3, !noalias !4
  %t585 = sub i64 %r583, %r584
  %fn586 = icmp slt i64 %t585, 0
  %fz587 = icmp eq i64 %t585, 0
  %fc588 = icmp uge i64 %r583, %r584
  %fx1589 = xor i64 %r583, %r584
  %fx2590 = xor i64 %r583, %t585
  %fva591 = and i64 %fx1589, %fx2590
  %fv592 = icmp slt i64 %fva591, 0
  %nz593 = zext i1 %fn586 to i64
  %zz594 = zext i1 %fz587 to i64
  %cz595 = zext i1 %fc588 to i64
  %vz596 = zext i1 %fv592 to i64
  %ns597 = shl i64 %nz593, 31
  %zs598 = shl i64 %zz594, 30
  %cs599 = shl i64 %cz595, 29
  %vs600 = shl i64 %vz596, 28
  %nzor601 = or i64 %ns597, %zs598
  %cvor602 = or i64 %cs599, %vs600
  %nzcv603 = or i64 %nzor601, %cvor602
  %wp604 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv603, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215420 word 0x54000900
  %r605.p = getelementptr inbounds i8, ptr %c, i64 272
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %fsh607 = lshr i64 %r605, 30
  %cond606 = trunc i64 %fsh607 to i1
  br i1 %cond606, label %L_800215540, label %L_800215424_ft
L_800215424_ft:
  ; @pc 0x800215424 word 0xb9405288
  %r608.p = getelementptr inbounds i8, ptr %c, i64 160
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = add i64 %r608, 80
  %gmp610 = inttoptr i64 %t609 to ptr
  %gml611 = load i32, ptr %gmp610, align 1, !alias.scope !4, !noalias !3
  %c612 = zext i32 %gml611 to i64
  %wp613 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c612, ptr %wp613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215428 word 0x350008c8
  %r614.p = getelementptr inbounds i8, ptr %c, i64 64
  %r614 = load i64, ptr %r614.p, align 8, !alias.scope !3, !noalias !4
  %c615 = trunc i64 %r614 to i32
  %cmp616 = icmp ne i32 %c615, 0
  br i1 %cmp616, label %L_800215540, label %L_80021542c_ft
L_80021542c_ft:
  ; @pc 0x80021542c word 0xf9400288
  %r617.p = getelementptr inbounds i8, ptr %c, i64 160
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %gmp618 = inttoptr i64 %r617 to ptr
  %gml619 = load i64, ptr %gmp618, align 1, !alias.scope !4, !noalias !3
  %wp620 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml619, ptr %wp620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215430 word 0xaa1403e0
  %r621.p = getelementptr inbounds i8, ptr %c, i64 160
  %r621 = load i64, ptr %r621.p, align 8, !alias.scope !3, !noalias !4
  %t622 = or i64 0, %r621
  %wp623 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t622, ptr %wp623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215434 word 0xaa1303e1
  %r624.p = getelementptr inbounds i8, ptr %c, i64 152
  %r624 = load i64, ptr %r624.p, align 8, !alias.scope !3, !noalias !4
  %t625 = or i64 0, %r624
  %wp626 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t625, ptr %wp626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215438 word 0xf9404908
  %r627.p = getelementptr inbounds i8, ptr %c, i64 64
  %r627 = load i64, ptr %r627.p, align 8, !alias.scope !3, !noalias !4
  %t628 = add i64 %r627, 144
  %gmp629 = inttoptr i64 %t628 to ptr
  %gml630 = load i64, ptr %gmp629, align 1, !alias.scope !4, !noalias !3
  %wp631 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml630, ptr %wp631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021543c word 0xd63f0100
  %r632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %fp633 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r632, ptr %fp633, align 8, !alias.scope !3, !noalias !4
  %wp634 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922624, ptr %wp634, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800215440 word 0x360007e0
  %r635.p = getelementptr inbounds i8, ptr %c, i64 0
  %r635 = load i64, ptr %r635.p, align 8, !alias.scope !3, !noalias !4
  %t636 = and i64 %r635, 1
  %cmp637 = icmp eq i64 %t636, 0
  br i1 %cmp637, label %L_80021553c, label %L_800215444_ft
L_800215444_ft:
  ; @pc 0x800215444 word 0x3707fa36
  %r638.p = getelementptr inbounds i8, ptr %c, i64 176
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %t639 = and i64 %r638, 1
  %cmp640 = icmp ne i64 %t639, 0
  br i1 %cmp640, label %L_800215388, label %L_800215448_ft
L_800215448_ft:
  ; @pc 0x800215448 word 0xf90002f4
  %r641.p = getelementptr inbounds i8, ptr %c, i64 184
  %r641 = load i64, ptr %r641.p, align 8, !alias.scope !3, !noalias !4
  %r642.p = getelementptr inbounds i8, ptr %c, i64 160
  %r642 = load i64, ptr %r642.p, align 8, !alias.scope !3, !noalias !4
  %gmp643 = inttoptr i64 %r641 to ptr
  store i64 %r642, ptr %gmp643, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80021544c word 0x17ffffcf
  br label %L_800215388
L_800215488_ft:
  ; @pc 0x800215488 word 0xb94082a8
  %r719.p = getelementptr inbounds i8, ptr %c, i64 168
  %r719 = load i64, ptr %r719.p, align 8, !alias.scope !3, !noalias !4
  %t720 = add i64 %r719, 128
  %gmp721 = inttoptr i64 %t720 to ptr
  %gml722 = load i32, ptr %gmp721, align 1, !alias.scope !4, !noalias !3
  %c723 = zext i32 %gml722 to i64
  %wp724 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c723, ptr %wp724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021548c word 0x7100051f
  %r725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r725 = load i64, ptr %r725.p, align 8, !alias.scope !3, !noalias !4
  %c726 = trunc i64 %r725 to i32
  %t727 = sub i32 %c726, 1
  %fn728 = icmp slt i32 %t727, 0
  %fz729 = icmp eq i32 %t727, 0
  %fc730 = icmp uge i32 %c726, 1
  %fx1731 = xor i32 %c726, 1
  %fx2732 = xor i32 %c726, %t727
  %fva733 = and i32 %fx1731, %fx2732
  %fv734 = icmp slt i32 %fva733, 0
  %nz735 = zext i1 %fn728 to i64
  %zz736 = zext i1 %fz729 to i64
  %cz737 = zext i1 %fc730 to i64
  %vz738 = zext i1 %fv734 to i64
  %ns739 = shl i64 %nz735, 31
  %zs740 = shl i64 %zz736, 30
  %cs741 = shl i64 %cz737, 29
  %vs742 = shl i64 %vz738, 28
  %nzor743 = or i64 %ns739, %zs740
  %cvor744 = or i64 %cs741, %vs742
  %nzcv745 = or i64 %nzor743, %cvor744
  %wp746 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv745, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215490 word 0xf94016a9
  %r747.p = getelementptr inbounds i8, ptr %c, i64 168
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %t748 = add i64 %r747, 40
  %gmp749 = inttoptr i64 %t748 to ptr
  %gml750 = load i64, ptr %gmp749, align 1, !alias.scope !4, !noalias !3
  %wp751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml750, ptr %wp751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215494 word 0x54000781
  %r752.p = getelementptr inbounds i8, ptr %c, i64 272
  %r752 = load i64, ptr %r752.p, align 8, !alias.scope !3, !noalias !4
  %fsh754 = lshr i64 %r752, 30
  %ftr755 = trunc i64 %fsh754 to i1
  %cond753 = xor i1 %ftr755, true
  br i1 %cond753, label %L_800215584, label %L_800215498_ft
L_800215498_ft:
  ; @pc 0x800215498 word 0xf9401aa8
  %r756.p = getelementptr inbounds i8, ptr %c, i64 168
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %t757 = add i64 %r756, 48
  %gmp758 = inttoptr i64 %t757 to ptr
  %gml759 = load i64, ptr %gmp758, align 1, !alias.scope !4, !noalias !3
  %wp760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml759, ptr %wp760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021549c word 0x9103812a
  %r761.p = getelementptr inbounds i8, ptr %c, i64 72
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %t762 = add i64 %r761, 224
  %wp763 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t762, ptr %wp763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154a0 word 0x8b090108
  %r764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %r765.p = getelementptr inbounds i8, ptr %c, i64 72
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %t766 = add i64 %r764, %r765
  %wp767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t766, ptr %wp767, align 8, !alias.scope !3, !noalias !4
  br label %L_8002154a4
L_8002154d4_ft:
  ; @pc 0x8002154d4 word 0x17fffff6
  br label %L_8002154ac
L_8002154ec_ft:
  ; @pc 0x8002154ec word 0xf9400109
  %r885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %gmp886 = inttoptr i64 %r885 to ptr
  %gml887 = load i64, ptr %gmp886, align 1, !alias.scope !4, !noalias !3
  %wp888 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml887, ptr %wp888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154f0 word 0x8b080129
  %r889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %r890.p = getelementptr inbounds i8, ptr %c, i64 64
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %t891 = add i64 %r889, %r890
  %wp892 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t891, ptr %wp892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154f4 word 0xeb13013f
  %r893.p = getelementptr inbounds i8, ptr %c, i64 72
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %r894.p = getelementptr inbounds i8, ptr %c, i64 152
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %t895 = sub i64 %r893, %r894
  %fn896 = icmp slt i64 %t895, 0
  %fz897 = icmp eq i64 %t895, 0
  %fc898 = icmp uge i64 %r893, %r894
  %fx1899 = xor i64 %r893, %r894
  %fx2900 = xor i64 %r893, %t895
  %fva901 = and i64 %fx1899, %fx2900
  %fv902 = icmp slt i64 %fva901, 0
  %nz903 = zext i1 %fn896 to i64
  %zz904 = zext i1 %fz897 to i64
  %cz905 = zext i1 %fc898 to i64
  %vz906 = zext i1 %fv902 to i64
  %ns907 = shl i64 %nz903, 31
  %zs908 = shl i64 %zz904, 30
  %cs909 = shl i64 %cz905, 29
  %vs910 = shl i64 %vz906, 28
  %nzor911 = or i64 %ns907, %zs908
  %cvor912 = or i64 %cs909, %vs910
  %nzcv913 = or i64 %nzor911, %cvor912
  %wp914 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv913, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002154f8 word 0x54000ec8
  %r915.p = getelementptr inbounds i8, ptr %c, i64 272
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %fsh917 = lshr i64 %r915, 29
  %ftr918 = trunc i64 %fsh917 to i1
  %fsh919 = lshr i64 %r915, 30
  %ftr920 = trunc i64 %fsh919 to i1
  %fnz921 = xor i1 %ftr920, true
  %cond916 = and i1 %ftr918, %fnz921
  br i1 %cond916, label %L_8002156d0, label %L_8002154fc
L_800215504_ft:
  ; @pc 0x800215504 word 0x17ffffc1
  br label %L_800215408
L_800215550_ft:
  ; @pc 0x800215550 word 0xf94002f5
  %r993.p = getelementptr inbounds i8, ptr %c, i64 184
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %gmp994 = inttoptr i64 %r993 to ptr
  %gml995 = load i64, ptr %gmp994, align 1, !alias.scope !4, !noalias !3
  %wp996 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215554 word 0xb4000255
  %r997.p = getelementptr inbounds i8, ptr %c, i64 168
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %cmp998 = icmp eq i64 %r997, 0
  br i1 %cmp998, label %L_80021559c, label %L_800215558_ft
L_800215558_ft:
  ; @pc 0x800215558 word 0xeb15031f
  %r999.p = getelementptr inbounds i8, ptr %c, i64 192
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %r1000.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1000 = load i64, ptr %r1000.p, align 8, !alias.scope !3, !noalias !4
  %t1001 = sub i64 %r999, %r1000
  %fn1002 = icmp slt i64 %t1001, 0
  %fz1003 = icmp eq i64 %t1001, 0
  %fc1004 = icmp uge i64 %r999, %r1000
  %fx11005 = xor i64 %r999, %r1000
  %fx21006 = xor i64 %r999, %t1001
  %fva1007 = and i64 %fx11005, %fx21006
  %fv1008 = icmp slt i64 %fva1007, 0
  %nz1009 = zext i1 %fn1002 to i64
  %zz1010 = zext i1 %fz1003 to i64
  %cz1011 = zext i1 %fc1004 to i64
  %vz1012 = zext i1 %fv1008 to i64
  %ns1013 = shl i64 %nz1009, 31
  %zs1014 = shl i64 %zz1010, 30
  %cs1015 = shl i64 %cz1011, 29
  %vs1016 = shl i64 %vz1012, 28
  %nzor1017 = or i64 %ns1013, %zs1014
  %cvor1018 = or i64 %cs1015, %vs1016
  %nzcv1019 = or i64 %nzor1017, %cvor1018
  %wp1020 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1019, ptr %wp1020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021555c word 0x54000200
  %r1021.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1021 = load i64, ptr %r1021.p, align 8, !alias.scope !3, !noalias !4
  %fsh1023 = lshr i64 %r1021, 30
  %cond1022 = trunc i64 %fsh1023 to i1
  br i1 %cond1022, label %L_80021559c, label %L_800215560_ft
L_800215560_ft:
  ; @pc 0x800215560 word 0xaa1503e0
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = or i64 0, %r1024
  %wp1026 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1025, ptr %wp1026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215564 word 0xaa1303e1
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %t1028 = or i64 0, %r1027
  %wp1029 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1028, ptr %wp1029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215568 word 0x9401ecd5
  %wp1030 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361922924, ptr %wp1030, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80021556c word 0xb4000160
  %r1031.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1031 = load i64, ptr %r1031.p, align 8, !alias.scope !3, !noalias !4
  %cmp1032 = icmp eq i64 %r1031, 0
  br i1 %cmp1032, label %L_800215598, label %L_800215570_ft
L_800215570_ft:
  ; @pc 0x800215570 word 0xeb15001f
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %t1035 = sub i64 %r1033, %r1034
  %fn1036 = icmp slt i64 %t1035, 0
  %fz1037 = icmp eq i64 %t1035, 0
  %fc1038 = icmp uge i64 %r1033, %r1034
  %fx11039 = xor i64 %r1033, %r1034
  %fx21040 = xor i64 %r1033, %t1035
  %fva1041 = and i64 %fx11039, %fx21040
  %fv1042 = icmp slt i64 %fva1041, 0
  %nz1043 = zext i1 %fn1036 to i64
  %zz1044 = zext i1 %fz1037 to i64
  %cz1045 = zext i1 %fc1038 to i64
  %vz1046 = zext i1 %fv1042 to i64
  %ns1047 = shl i64 %nz1043, 31
  %zs1048 = shl i64 %zz1044, 30
  %cs1049 = shl i64 %cz1045, 29
  %vs1050 = shl i64 %vz1046, 28
  %nzor1051 = or i64 %ns1047, %zs1048
  %cvor1052 = or i64 %cs1049, %vs1050
  %nzcv1053 = or i64 %nzor1051, %cvor1052
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215574 word 0x54000340
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %fsh1057 = lshr i64 %r1055, 30
  %cond1056 = trunc i64 %fsh1057 to i1
  br i1 %cond1056, label %L_8002155dc, label %L_800215578_ft
L_800215578_ft:
  ; @pc 0x800215578 word 0xf90002e0
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %r1059.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1059 = load i64, ptr %r1059.p, align 8, !alias.scope !3, !noalias !4
  %gmp1060 = inttoptr i64 %r1058 to ptr
  store i64 %r1059, ptr %gmp1060, align 1, !alias.scope !4, !noalias !3
  br label %L_80021557c
L_8002155a0_ft:
  ; @pc 0x8002155a0 word 0xeb18029f
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %t1086 = sub i64 %r1084, %r1085
  %fn1087 = icmp slt i64 %t1086, 0
  %fz1088 = icmp eq i64 %t1086, 0
  %fc1089 = icmp uge i64 %r1084, %r1085
  %fx11090 = xor i64 %r1084, %r1085
  %fx21091 = xor i64 %r1084, %t1086
  %fva1092 = and i64 %fx11090, %fx21091
  %fv1093 = icmp slt i64 %fva1092, 0
  %nz1094 = zext i1 %fn1087 to i64
  %zz1095 = zext i1 %fz1088 to i64
  %cz1096 = zext i1 %fc1089 to i64
  %vz1097 = zext i1 %fv1093 to i64
  %ns1098 = shl i64 %nz1094, 31
  %zs1099 = shl i64 %zz1095, 30
  %cs1100 = shl i64 %cz1096, 29
  %vs1101 = shl i64 %vz1097, 28
  %nzor1102 = or i64 %ns1098, %zs1099
  %cvor1103 = or i64 %cs1100, %vs1101
  %nzcv1104 = or i64 %nzor1102, %cvor1103
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155a4 word 0x54000701
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %fsh1108 = lshr i64 %r1106, 30
  %ftr1109 = trunc i64 %fsh1108 to i1
  %cond1107 = xor i1 %ftr1109, true
  br i1 %cond1107, label %L_800215684, label %L_8002155a8
L_8002155b8_ft:
  ; @pc 0x8002155b8 word 0xf9400534
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = add i64 %r1122, 8
  %gmp1124 = inttoptr i64 %t1123 to ptr
  %gml1125 = load i64, ptr %gmp1124, align 1, !alias.scope !4, !noalias !3
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155bc word 0xd37df118
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %ror1128 = call i64 @llvm.fshr.i64(i64 %r1127, i64 %r1127, i64 61)
  %t1129 = and i64 %ror1128, -8
  %wp1130 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1129, ptr %wp1130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002155c0 word 0x37000536
  %r1131.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1131 = load i64, ptr %r1131.p, align 8, !alias.scope !3, !noalias !4
  %t1132 = and i64 %r1131, 1
  %cmp1133 = icmp ne i64 %t1132, 0
  br i1 %cmp1133, label %L_800215664, label %L_8002155c4
L_800215608_ft:
  ; @pc 0x800215608 word 0xf9400514
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %t1197 = add i64 %r1196, 8
  %gmp1198 = inttoptr i64 %t1197 to ptr
  %gml1199 = load i64, ptr %gmp1198, align 1, !alias.scope !4, !noalias !3
  %wp1200 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1199, ptr %wp1200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021560c word 0x35000696
  %r1201.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1201 = load i64, ptr %r1201.p, align 8, !alias.scope !3, !noalias !4
  %c1202 = trunc i64 %r1201 to i32
  %cmp1203 = icmp ne i32 %c1202, 0
  br i1 %cmp1203, label %L_8002156dc, label %L_800215610_ft
L_800215610_ft:
  ; @pc 0x800215610 word 0xf9400280
  %r1204.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1204 = load i64, ptr %r1204.p, align 8, !alias.scope !3, !noalias !4
  %gmp1205 = inttoptr i64 %r1204 to ptr
  %gml1206 = load i64, ptr %gmp1205, align 1, !alias.scope !4, !noalias !3
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215614 word 0xaa1303e1
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %t1209 = or i64 0, %r1208
  %wp1210 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1209, ptr %wp1210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215618 word 0x9401eca9
  %wp1211 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923100, ptr %wp1211, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80021561c word 0xb5fffdc0
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %cmp1213 = icmp ne i64 %r1212, 0
  br i1 %cmp1213, label %L_8002155d4, label %L_800215620_ft
L_800215620_ft:
  ; @pc 0x800215620 word 0xd37df308
  %r1214.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1214 = load i64, ptr %r1214.p, align 8, !alias.scope !3, !noalias !4
  %ror1215 = call i64 @llvm.fshr.i64(i64 %r1214, i64 %r1214, i64 61)
  %t1216 = and i64 %ror1215, -8
  %wp1217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1216, ptr %wp1217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215624 word 0x91002294
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %t1219 = add i64 %r1218, 8
  %wp1220 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1219, ptr %wp1220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215628 word 0xd1002118
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %t1222 = sub i64 %r1221, 8
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1222, ptr %wp1223, align 8, !alias.scope !3, !noalias !4
  br label %L_80021562c
L_800215640_ft:
  ; @pc 0x800215640 word 0xaa1303e1
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %t1237 = or i64 0, %r1236
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1237, ptr %wp1238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215644 word 0x9401ec9e
  %wp1239 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361923144, ptr %wp1239, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x800215648 word 0xf100001f
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = sub i64 %r1240, 0
  %fn1242 = icmp slt i64 %t1241, 0
  %fz1243 = icmp eq i64 %t1241, 0
  %fc1244 = icmp uge i64 %r1240, 0
  %fx11245 = xor i64 %r1240, 0
  %fx21246 = xor i64 %r1240, %t1241
  %fva1247 = and i64 %fx11245, %fx21246
  %fv1248 = icmp slt i64 %fva1247, 0
  %nz1249 = zext i1 %fn1242 to i64
  %zz1250 = zext i1 %fz1243 to i64
  %cz1251 = zext i1 %fc1244 to i64
  %vz1252 = zext i1 %fv1248 to i64
  %ns1253 = shl i64 %nz1249, 31
  %zs1254 = shl i64 %zz1250, 30
  %cs1255 = shl i64 %cz1251, 29
  %vs1256 = shl i64 %vz1252, 28
  %nzor1257 = or i64 %ns1253, %zs1254
  %cvor1258 = or i64 %cs1255, %vs1256
  %nzcv1259 = or i64 %nzor1257, %cvor1258
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021564c word 0xaa0003f5
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = or i64 0, %r1261
  %wp1263 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1262, ptr %wp1263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215650 word 0x1a9f16c8
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %c1265 = trunc i64 %r1264 to i32
  %t1266 = add i32 0, 1
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %fsh1269 = lshr i64 %r1267, 30
  %ftr1270 = trunc i64 %fsh1269 to i1
  %cond1268 = xor i1 %ftr1270, true
  %sel1271 = select i1 %cond1268, i32 %c1265, i32 %t1266
  %c1272 = zext i32 %sel1271 to i64
  %wp1273 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1272, ptr %wp1273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215654 word 0x3607fc28
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1274 = load i64, ptr %r1274.p, align 8, !alias.scope !3, !noalias !4
  %t1275 = and i64 %r1274, 1
  %cmp1276 = icmp eq i64 %t1275, 0
  br i1 %cmp1276, label %L_8002155d8, label %L_800215658_ft
L_800215658_ft:
  ; @pc 0x800215658 word 0xb5fffc35
  %r1277.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1277 = load i64, ptr %r1277.p, align 8, !alias.scope !3, !noalias !4
  %cmp1278 = icmp ne i64 %r1277, 0
  br i1 %cmp1278, label %L_8002155dc, label %L_80021565c
L_800215674_ft:
  ; @pc 0x800215674 word 0x91002294
  %r1291.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1291 = load i64, ptr %r1291.p, align 8, !alias.scope !3, !noalias !4
  %t1292 = add i64 %r1291, 8
  %wp1293 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1292, ptr %wp1293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800215678 word 0xf1002318
  %r1294.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1294 = load i64, ptr %r1294.p, align 8, !alias.scope !3, !noalias !4
  %t1295 = sub i64 %r1294, 8
  %fn1296 = icmp slt i64 %t1295, 0
  %fz1297 = icmp eq i64 %t1295, 0
  %fc1298 = icmp uge i64 %r1294, 8
  %fx11299 = xor i64 %r1294, 8
  %fx21300 = xor i64 %r1294, %t1295
  %fva1301 = and i64 %fx11299, %fx21300
  %fv1302 = icmp slt i64 %fva1301, 0
  %nz1303 = zext i1 %fn1296 to i64
  %zz1304 = zext i1 %fz1297 to i64
  %cz1305 = zext i1 %fc1298 to i64
  %vz1306 = zext i1 %fv1302 to i64
  %ns1307 = shl i64 %nz1303, 31
  %zs1308 = shl i64 %zz1304, 30
  %cs1309 = shl i64 %cz1305, 29
  %vs1310 = shl i64 %vz1306, 28
  %nzor1311 = or i64 %ns1307, %zs1308
  %cvor1312 = or i64 %cs1309, %vs1310
  %nzcv1313 = or i64 %nzor1311, %cvor1312
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1313, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  %wp1315 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1295, ptr %wp1315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80021567c word 0x54ffff41
  %r1316.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1316 = load i64, ptr %r1316.p, align 8, !alias.scope !3, !noalias !4
  %fsh1318 = lshr i64 %r1316, 30
  %ftr1319 = trunc i64 %fsh1318 to i1
  %cond1317 = xor i1 %ftr1319, true
  br i1 %cond1317, label %L_800215664, label %L_800215680_ft
L_800215680_ft:
  ; @pc 0x800215680 word 0x17ffffde
  br label %L_8002155f8
L_8002156a0_ft:
  ; @pc 0x8002156a0 word 0xb5fff9f5
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %cmp1365 = icmp ne i64 %r1364, 0
  br i1 %cmp1365, label %L_8002155dc, label %L_8002156a4_ft
L_8002156a4_ft:
  ; @pc 0x8002156a4 word 0x17ffffc1
  br label %L_8002155a8
L_8002156b8_ft:
  ; @pc 0x8002156b8 word 0xcb0a0129
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %r1406.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1406 = load i64, ptr %r1406.p, align 8, !alias.scope !3, !noalias !4
  %t1407 = sub i64 %r1405, %r1406
  %wp1408 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1407, ptr %wp1408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156bc word 0xeb13013f
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %r1410.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1410 = load i64, ptr %r1410.p, align 8, !alias.scope !3, !noalias !4
  %t1411 = sub i64 %r1409, %r1410
  %fn1412 = icmp slt i64 %t1411, 0
  %fz1413 = icmp eq i64 %t1411, 0
  %fc1414 = icmp uge i64 %r1409, %r1410
  %fx11415 = xor i64 %r1409, %r1410
  %fx21416 = xor i64 %r1409, %t1411
  %fva1417 = and i64 %fx11415, %fx21416
  %fv1418 = icmp slt i64 %fva1417, 0
  %nz1419 = zext i1 %fn1412 to i64
  %zz1420 = zext i1 %fz1413 to i64
  %cz1421 = zext i1 %fc1414 to i64
  %vz1422 = zext i1 %fv1418 to i64
  %ns1423 = shl i64 %nz1419, 31
  %zs1424 = shl i64 %zz1420, 30
  %cs1425 = shl i64 %cz1421, 29
  %vs1426 = shl i64 %vz1422, 28
  %nzor1427 = or i64 %ns1423, %zs1424
  %cvor1428 = or i64 %cs1425, %vs1426
  %nzcv1429 = or i64 %nzor1427, %cvor1428
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156c0 word 0x54000089
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %fsh1433 = lshr i64 %r1431, 29
  %ftr1434 = trunc i64 %fsh1433 to i1
  %fsh1435 = lshr i64 %r1431, 30
  %ftr1436 = trunc i64 %fsh1435 to i1
  %fnz1437 = xor i1 %ftr1436, true
  %fhi1438 = and i1 %ftr1434, %fnz1437
  %cond1432 = xor i1 %fhi1438, true
  br i1 %cond1432, label %L_8002156d0, label %L_8002156c4
L_8002156cc_ft:
  ; @pc 0x8002156cc word 0x17fffff7
  br label %L_8002156a8
L_8002156f0_ft:
  ; @pc 0x8002156f0 word 0x91002294
  %r1464.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1464 = load i64, ptr %r1464.p, align 8, !alias.scope !3, !noalias !4
  %t1465 = add i64 %r1464, 8
  %wp1466 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1465, ptr %wp1466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156f4 word 0xf1002318
  %r1467.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1467 = load i64, ptr %r1467.p, align 8, !alias.scope !3, !noalias !4
  %t1468 = sub i64 %r1467, 8
  %fn1469 = icmp slt i64 %t1468, 0
  %fz1470 = icmp eq i64 %t1468, 0
  %fc1471 = icmp uge i64 %r1467, 8
  %fx11472 = xor i64 %r1467, 8
  %fx21473 = xor i64 %r1467, %t1468
  %fva1474 = and i64 %fx11472, %fx21473
  %fv1475 = icmp slt i64 %fva1474, 0
  %nz1476 = zext i1 %fn1469 to i64
  %zz1477 = zext i1 %fz1470 to i64
  %cz1478 = zext i1 %fc1471 to i64
  %vz1479 = zext i1 %fv1475 to i64
  %ns1480 = shl i64 %nz1476, 31
  %zs1481 = shl i64 %zz1477, 30
  %cs1482 = shl i64 %cz1478, 29
  %vs1483 = shl i64 %vz1479, 28
  %nzor1484 = or i64 %ns1480, %zs1481
  %cvor1485 = or i64 %cs1482, %vs1483
  %nzcv1486 = or i64 %nzor1484, %cvor1485
  %wp1487 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1486, ptr %wp1487, align 8, !alias.scope !3, !noalias !4
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1468, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002156f8 word 0x54fff9c0
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %fsh1491 = lshr i64 %r1489, 30
  %cond1490 = trunc i64 %fsh1491 to i1
  br i1 %cond1490, label %L_800215630, label %L_8002156fc_ft
L_8002156fc_ft:
  ; @pc 0x8002156fc word 0x17fffff9
  br label %L_8002156e0
L_800215714_ft:
  ; @pc 0x800215714 word 0x17ffffb0
  br label %L_8002155d4
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
