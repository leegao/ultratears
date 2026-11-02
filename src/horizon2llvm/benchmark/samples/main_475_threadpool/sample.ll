; UltraTears chunk main_475_threadpool: 1 functions [0x80084d7f0..0x80084dcc8)
; ModuleID = 'main_475_threadpool_raw'
source_filename = "main_475_threadpool_raw"
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

define dso_local void @f_80084d7f0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80084d7f0:
  ; @pc 0x80084d7f0 word 0xa9bc7bfd
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
  ; @pc 0x80084d7f4 word 0xa9015ff8
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
  ; @pc 0x80084d7f8 word 0xa90257f6
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
  ; @pc 0x80084d7fc word 0xa9034ff4
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
  ; @pc 0x80084d800 word 0x910003fd
  %r34.p = getelementptr inbounds i8, ptr %c, i64 256
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %t35 = add i64 %r34, 0
  %wp36 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t35, ptr %wp36, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d804 word 0xaa0003f3
  %r37.p = getelementptr inbounds i8, ptr %c, i64 0
  %r37 = load i64, ptr %r37.p, align 8, !alias.scope !3, !noalias !4
  %t38 = or i64 0, %r37
  %wp39 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t38, ptr %wp39, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d808 word 0xb5000b81
  %r40.p = getelementptr inbounds i8, ptr %c, i64 8
  %r40 = load i64, ptr %r40.p, align 8, !alias.scope !3, !noalias !4
  %cmp41 = icmp ne i64 %r40, 0
  br i1 %cmp41, label %L_80084d978, label %L_80084d80c_ft
L_80084d844:
  ; @pc 0x80084d844 word 0xc85f7ef5
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
  ; @pc 0x80084d848 word 0xb24002a8
  %r87.p = getelementptr inbounds i8, ptr %c, i64 168
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %t88 = or i64 %r87, 1
  %wp89 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t88, ptr %wp89, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d84c word 0xc8097ee8
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
  ; @pc 0x80084d850 word 0x35ffffa9
  %r105.p = getelementptr inbounds i8, ptr %c, i64 72
  %r105 = load i64, ptr %r105.p, align 8, !alias.scope !3, !noalias !4
  %c106 = trunc i64 %r105 to i32
  %cmp107 = icmp ne i32 %c106, 0
  br i1 %cmp107, label %L_80084d844, label %L_80084d854_ft
L_80084d890:
  ; @pc 0x80084d890 word 0xeb13015f
  %r211.p = getelementptr inbounds i8, ptr %c, i64 80
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %r212.p = getelementptr inbounds i8, ptr %c, i64 152
  %r212 = load i64, ptr %r212.p, align 8, !alias.scope !3, !noalias !4
  %t213 = sub i64 %r211, %r212
  %fn214 = icmp slt i64 %t213, 0
  %fz215 = icmp eq i64 %t213, 0
  %fc216 = icmp uge i64 %r211, %r212
  %fx1217 = xor i64 %r211, %r212
  %fx2218 = xor i64 %r211, %t213
  %fva219 = and i64 %fx1217, %fx2218
  %fv220 = icmp slt i64 %fva219, 0
  %nz221 = zext i1 %fn214 to i64
  %zz222 = zext i1 %fz215 to i64
  %cz223 = zext i1 %fc216 to i64
  %vz224 = zext i1 %fv220 to i64
  %ns225 = shl i64 %nz221, 31
  %zs226 = shl i64 %zz222, 30
  %cs227 = shl i64 %cz223, 29
  %vs228 = shl i64 %vz224, 28
  %nzor229 = or i64 %ns225, %zs226
  %cvor230 = or i64 %cs227, %vs228
  %nzcv231 = or i64 %nzor229, %cvor230
  %wp232 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv231, ptr %wp232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d894 word 0x54000c28
  %r233.p = getelementptr inbounds i8, ptr %c, i64 272
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %fsh235 = lshr i64 %r233, 29
  %ftr236 = trunc i64 %fsh235 to i1
  %fsh237 = lshr i64 %r233, 30
  %ftr238 = trunc i64 %fsh237 to i1
  %fnz239 = xor i1 %ftr238, true
  %cond234 = and i1 %ftr236, %fnz239
  br i1 %cond234, label %L_80084da18, label %L_80084d898_ft
L_80084d8a4:
  ; @pc 0x80084d8a4 word 0x2a1f03e8
  %t274 = or i32 0, 0
  %c275 = zext i32 %t274 to i64
  %wp276 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c275, ptr %wp276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8a8 word 0xaa1f03f8
  %t277 = or i64 0, 0
  %wp278 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t277, ptr %wp278, align 8, !alias.scope !3, !noalias !4
  br label %L_80084d8ac
L_80084d8ac:
  ; @pc 0x80084d8ac word 0xc85f7ee9
  %r279.p = getelementptr inbounds i8, ptr %c, i64 184
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %atp280 = inttoptr i64 %r279 to ptr
  %ldx281 = load atomic i64, ptr %atp280 acquire, align 8, !alias.scope !4, !noalias !3
  %fp282 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r279, ptr %fp282, align 8, !alias.scope !3, !noalias !4
  %fp283 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %ldx281, ptr %fp283, align 8, !alias.scope !3, !noalias !4
  %wp284 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %ldx281, ptr %wp284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8b0 word 0x927ff929
  %r285.p = getelementptr inbounds i8, ptr %c, i64 72
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %t286 = and i64 %r285, -2
  %wp287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8b4 word 0xc80a7ee9
  %r288.p = getelementptr inbounds i8, ptr %c, i64 184
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %atp289 = inttoptr i64 %r288 to ptr
  %fp290 = getelementptr inbounds i8, ptr %c, i64 296
  %fv291 = load i64, ptr %fp290, align 8, !alias.scope !3, !noalias !4
  %fp292 = getelementptr inbounds i8, ptr %c, i64 304
  %fv293 = load i64, ptr %fp292, align 8, !alias.scope !3, !noalias !4
  %fp294 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp294, align 8, !alias.scope !3, !noalias !4
  %cmp295 = icmp eq i64 %fv291, %r288
  %r296.p = getelementptr inbounds i8, ptr %c, i64 72
  %r296 = load i64, ptr %r296.p, align 8, !alias.scope !3, !noalias !4
  %cx297 = cmpxchg ptr %atp289, i64 %fv293, i64 %r296 seq_cst seq_cst, align 8
  %cxok298 = extractvalue { i64, i1 } %cx297, 1
  %t299 = and i1 %cmp295, %cxok298
  %sel300 = select i1 %t299, i32 0, i32 1
  %c301 = zext i32 %sel300 to i64
  %wp302 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8b8 word 0x35ffffaa
  %r303.p = getelementptr inbounds i8, ptr %c, i64 80
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %c304 = trunc i64 %r303 to i32
  %cmp305 = icmp ne i32 %c304, 0
  br i1 %cmp305, label %L_80084d8ac, label %L_80084d8bc_ft
L_80084d8c0:
  ; @pc 0x80084d8c0 word 0xaa1503f4
  %r309.p = getelementptr inbounds i8, ptr %c, i64 168
  %r309 = load i64, ptr %r309.p, align 8, !alias.scope !3, !noalias !4
  %t310 = or i64 0, %r309
  %wp311 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t310, ptr %wp311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8c4 word 0xb4000195
  %r312.p = getelementptr inbounds i8, ptr %c, i64 168
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %cmp313 = icmp eq i64 %r312, 0
  br i1 %cmp313, label %L_80084d8f4, label %L_80084d8c8
L_80084d8c8:
  ; @pc 0x80084d8c8 word 0xf9400288
  %r314.p = getelementptr inbounds i8, ptr %c, i64 160
  %r314 = load i64, ptr %r314.p, align 8, !alias.scope !3, !noalias !4
  %gmp315 = inttoptr i64 %r314 to ptr
  %gml316 = load i64, ptr %gmp315, align 1, !alias.scope !4, !noalias !3
  %wp317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml316, ptr %wp317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8cc word 0xf9401d02
  %r318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %t319 = add i64 %r318, 56
  %gmp320 = inttoptr i64 %t319 to ptr
  %gml321 = load i64, ptr %gmp320, align 1, !alias.scope !4, !noalias !3
  %wp322 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml321, ptr %wp322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8d0 word 0xd000fb28
  %wp323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34401366016, ptr %wp323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8d4 word 0x913c3108
  %r324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %t325 = add i64 %r324, 3852
  %wp326 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t325, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8d8 word 0xeb08005f
  %r327.p = getelementptr inbounds i8, ptr %c, i64 16
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %r328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = sub i64 %r327, %r328
  %fn330 = icmp slt i64 %t329, 0
  %fz331 = icmp eq i64 %t329, 0
  %fc332 = icmp uge i64 %r327, %r328
  %fx1333 = xor i64 %r327, %r328
  %fx2334 = xor i64 %r327, %t329
  %fva335 = and i64 %fx1333, %fx2334
  %fv336 = icmp slt i64 %fva335, 0
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
  ; @pc 0x80084d8dc word 0x540000a0
  %r349.p = getelementptr inbounds i8, ptr %c, i64 272
  %r349 = load i64, ptr %r349.p, align 8, !alias.scope !3, !noalias !4
  %fsh351 = lshr i64 %r349, 30
  %cond350 = trunc i64 %fsh351 to i1
  br i1 %cond350, label %L_80084d8f0, label %L_80084d8e0_ft
L_80084d8f0:
  ; @pc 0x80084d8f0 word 0xb940aa9f
  %r382.p = getelementptr inbounds i8, ptr %c, i64 160
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %t383 = add i64 %r382, 168
  %gmp384 = inttoptr i64 %t383 to ptr
  %gml385 = load i32, ptr %gmp384, align 1, !alias.scope !4, !noalias !3
  %c386 = zext i32 %gml385 to i64
  br label %L_80084d8f4
L_80084d8f4:
  ; @pc 0x80084d8f4 word 0xa9434ff4
  %r387.p = getelementptr inbounds i8, ptr %c, i64 256
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %t388 = add i64 %r387, 48
  %t389 = add i64 %t388, 8
  %gmp390 = inttoptr i64 %t388 to ptr
  %gml391 = load i64, ptr %gmp390, align 1, !alias.scope !4, !noalias !3
  %gmp392 = inttoptr i64 %t389 to ptr
  %gml393 = load i64, ptr %gmp392, align 1, !alias.scope !4, !noalias !3
  %wp394 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml391, ptr %wp394, align 8, !alias.scope !3, !noalias !4
  %wp395 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml393, ptr %wp395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8f8 word 0xa94257f6
  %r396.p = getelementptr inbounds i8, ptr %c, i64 256
  %r396 = load i64, ptr %r396.p, align 8, !alias.scope !3, !noalias !4
  %t397 = add i64 %r396, 32
  %t398 = add i64 %t397, 8
  %gmp399 = inttoptr i64 %t397 to ptr
  %gml400 = load i64, ptr %gmp399, align 1, !alias.scope !4, !noalias !3
  %gmp401 = inttoptr i64 %t398 to ptr
  %gml402 = load i64, ptr %gmp401, align 1, !alias.scope !4, !noalias !3
  %wp403 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml400, ptr %wp403, align 8, !alias.scope !3, !noalias !4
  %wp404 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml402, ptr %wp404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8fc word 0xa9415ff8
  %r405.p = getelementptr inbounds i8, ptr %c, i64 256
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %t406 = add i64 %r405, 16
  %t407 = add i64 %t406, 8
  %gmp408 = inttoptr i64 %t406 to ptr
  %gml409 = load i64, ptr %gmp408, align 1, !alias.scope !4, !noalias !3
  %gmp410 = inttoptr i64 %t407 to ptr
  %gml411 = load i64, ptr %gmp410, align 1, !alias.scope !4, !noalias !3
  %wp412 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml409, ptr %wp412, align 8, !alias.scope !3, !noalias !4
  %wp413 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml411, ptr %wp413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d900 word 0xa8c47bfd
  %r414.p = getelementptr inbounds i8, ptr %c, i64 256
  %r414 = load i64, ptr %r414.p, align 8, !alias.scope !3, !noalias !4
  %t415 = add i64 %r414, 8
  %gmp416 = inttoptr i64 %r414 to ptr
  %gml417 = load i64, ptr %gmp416, align 1, !alias.scope !4, !noalias !3
  %gmp418 = inttoptr i64 %t415 to ptr
  %gml419 = load i64, ptr %gmp418, align 1, !alias.scope !4, !noalias !3
  %t420 = add i64 %r414, 64
  %wp421 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t420, ptr %wp421, align 8, !alias.scope !3, !noalias !4
  %wp422 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml417, ptr %wp422, align 8, !alias.scope !3, !noalias !4
  %wp423 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml419, ptr %wp423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d904 word 0xd65f03c0
  ret void
L_80084d908:
  ; @pc 0x80084d908 word 0xf0ffd209
  %wp424 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34362425344, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d90c word 0x91220129
  %r425.p = getelementptr inbounds i8, ptr %c, i64 72
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %t426 = add i64 %r425, 2176
  %wp427 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t426, ptr %wp427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d910 word 0xeb09011f
  %r428.p = getelementptr inbounds i8, ptr %c, i64 64
  %r428 = load i64, ptr %r428.p, align 8, !alias.scope !3, !noalias !4
  %r429.p = getelementptr inbounds i8, ptr %c, i64 72
  %r429 = load i64, ptr %r429.p, align 8, !alias.scope !3, !noalias !4
  %t430 = sub i64 %r428, %r429
  %fn431 = icmp slt i64 %t430, 0
  %fz432 = icmp eq i64 %t430, 0
  %fc433 = icmp uge i64 %r428, %r429
  %fx1434 = xor i64 %r428, %r429
  %fx2435 = xor i64 %r428, %t430
  %fva436 = and i64 %fx1434, %fx2435
  %fv437 = icmp slt i64 %fva436, 0
  %nz438 = zext i1 %fn431 to i64
  %zz439 = zext i1 %fz432 to i64
  %cz440 = zext i1 %fc433 to i64
  %vz441 = zext i1 %fv437 to i64
  %ns442 = shl i64 %nz438, 31
  %zs443 = shl i64 %zz439, 30
  %cs444 = shl i64 %cz440, 29
  %vs445 = shl i64 %vz441, 28
  %nzor446 = or i64 %ns442, %zs443
  %cvor447 = or i64 %cs444, %vs445
  %nzcv448 = or i64 %nzor446, %cvor447
  %wp449 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv448, ptr %wp449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d914 word 0x540006e0
  %r450.p = getelementptr inbounds i8, ptr %c, i64 272
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %fsh452 = lshr i64 %r450, 30
  %cond451 = trunc i64 %fsh452 to i1
  br i1 %cond451, label %L_80084d9f0, label %L_80084d918_ft
L_80084d944:
  ; @pc 0x80084d944 word 0xeb13015f
  %r532.p = getelementptr inbounds i8, ptr %c, i64 80
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %r533.p = getelementptr inbounds i8, ptr %c, i64 152
  %r533 = load i64, ptr %r533.p, align 8, !alias.scope !3, !noalias !4
  %t534 = sub i64 %r532, %r533
  %fn535 = icmp slt i64 %t534, 0
  %fz536 = icmp eq i64 %t534, 0
  %fc537 = icmp uge i64 %r532, %r533
  %fx1538 = xor i64 %r532, %r533
  %fx2539 = xor i64 %r532, %t534
  %fva540 = and i64 %fx1538, %fx2539
  %fv541 = icmp slt i64 %fva540, 0
  %nz542 = zext i1 %fn535 to i64
  %zz543 = zext i1 %fz536 to i64
  %cz544 = zext i1 %fc537 to i64
  %vz545 = zext i1 %fv541 to i64
  %ns546 = shl i64 %nz542, 31
  %zs547 = shl i64 %zz543, 30
  %cs548 = shl i64 %cz544, 29
  %vs549 = shl i64 %vz545, 28
  %nzor550 = or i64 %ns546, %zs547
  %cvor551 = or i64 %cs548, %vs549
  %nzcv552 = or i64 %nzor550, %cvor551
  %wp553 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d948 word 0x54000768
  %r554.p = getelementptr inbounds i8, ptr %c, i64 272
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %fsh556 = lshr i64 %r554, 29
  %ftr557 = trunc i64 %fsh556 to i1
  %fsh558 = lshr i64 %r554, 30
  %ftr559 = trunc i64 %fsh558 to i1
  %fnz560 = xor i1 %ftr559, true
  %cond555 = and i1 %ftr557, %fnz560
  br i1 %cond555, label %L_80084da34, label %L_80084d94c
L_80084d94c:
  ; @pc 0x80084d94c word 0xeb13011f
  %r561.p = getelementptr inbounds i8, ptr %c, i64 64
  %r561 = load i64, ptr %r561.p, align 8, !alias.scope !3, !noalias !4
  %r562.p = getelementptr inbounds i8, ptr %c, i64 152
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = sub i64 %r561, %r562
  %fn564 = icmp slt i64 %t563, 0
  %fz565 = icmp eq i64 %t563, 0
  %fc566 = icmp uge i64 %r561, %r562
  %fx1567 = xor i64 %r561, %r562
  %fx2568 = xor i64 %r561, %t563
  %fva569 = and i64 %fx1567, %fx2568
  %fv570 = icmp slt i64 %fva569, 0
  %nz571 = zext i1 %fn564 to i64
  %zz572 = zext i1 %fz565 to i64
  %cz573 = zext i1 %fc566 to i64
  %vz574 = zext i1 %fv570 to i64
  %ns575 = shl i64 %nz571, 31
  %zs576 = shl i64 %zz572, 30
  %cs577 = shl i64 %cz573, 29
  %vs578 = shl i64 %vz574, 28
  %nzor579 = or i64 %ns575, %zs576
  %cvor580 = or i64 %cs577, %vs578
  %nzcv581 = or i64 %nzor579, %cvor580
  %wp582 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv581, ptr %wp582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d950 word 0xaa1503f8
  %r583.p = getelementptr inbounds i8, ptr %c, i64 168
  %r583 = load i64, ptr %r583.p, align 8, !alias.scope !3, !noalias !4
  %t584 = or i64 0, %r583
  %wp585 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t584, ptr %wp585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d954 word 0x54fffa88
  %r586.p = getelementptr inbounds i8, ptr %c, i64 272
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %fsh588 = lshr i64 %r586, 29
  %ftr589 = trunc i64 %fsh588 to i1
  %fsh590 = lshr i64 %r586, 30
  %ftr591 = trunc i64 %fsh590 to i1
  %fnz592 = xor i1 %ftr591, true
  %cond587 = and i1 %ftr589, %fnz592
  br i1 %cond587, label %L_80084d8a4, label %L_80084d958_ft
L_80084d95c:
  ; @pc 0x80084d95c word 0xaa1403e0
  %r593.p = getelementptr inbounds i8, ptr %c, i64 160
  %r593 = load i64, ptr %r593.p, align 8, !alias.scope !3, !noalias !4
  %t594 = or i64 0, %r593
  %wp595 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t594, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  br label %L_80084d960
L_80084d960:
  ; @pc 0x80084d960 word 0xaa1303e1
  %r596.p = getelementptr inbounds i8, ptr %c, i64 152
  %r596 = load i64, ptr %r596.p, align 8, !alias.scope !3, !noalias !4
  %t597 = or i64 0, %r596
  %wp598 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t597, ptr %wp598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d964 word 0xa9434ff4
  %r599.p = getelementptr inbounds i8, ptr %c, i64 256
  %r599 = load i64, ptr %r599.p, align 8, !alias.scope !3, !noalias !4
  %t600 = add i64 %r599, 48
  %t601 = add i64 %t600, 8
  %gmp602 = inttoptr i64 %t600 to ptr
  %gml603 = load i64, ptr %gmp602, align 1, !alias.scope !4, !noalias !3
  %gmp604 = inttoptr i64 %t601 to ptr
  %gml605 = load i64, ptr %gmp604, align 1, !alias.scope !4, !noalias !3
  %wp606 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml603, ptr %wp606, align 8, !alias.scope !3, !noalias !4
  %wp607 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml605, ptr %wp607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d968 word 0xa94257f6
  %r608.p = getelementptr inbounds i8, ptr %c, i64 256
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = add i64 %r608, 32
  %t610 = add i64 %t609, 8
  %gmp611 = inttoptr i64 %t609 to ptr
  %gml612 = load i64, ptr %gmp611, align 1, !alias.scope !4, !noalias !3
  %gmp613 = inttoptr i64 %t610 to ptr
  %gml614 = load i64, ptr %gmp613, align 1, !alias.scope !4, !noalias !3
  %wp615 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml612, ptr %wp615, align 8, !alias.scope !3, !noalias !4
  %wp616 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml614, ptr %wp616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d96c word 0xa9415ff8
  %r617.p = getelementptr inbounds i8, ptr %c, i64 256
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %t618 = add i64 %r617, 16
  %t619 = add i64 %t618, 8
  %gmp620 = inttoptr i64 %t618 to ptr
  %gml621 = load i64, ptr %gmp620, align 1, !alias.scope !4, !noalias !3
  %gmp622 = inttoptr i64 %t619 to ptr
  %gml623 = load i64, ptr %gmp622, align 1, !alias.scope !4, !noalias !3
  %wp624 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml621, ptr %wp624, align 8, !alias.scope !3, !noalias !4
  %wp625 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml623, ptr %wp625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d970 word 0xa8c47bfd
  %r626.p = getelementptr inbounds i8, ptr %c, i64 256
  %r626 = load i64, ptr %r626.p, align 8, !alias.scope !3, !noalias !4
  %t627 = add i64 %r626, 8
  %gmp628 = inttoptr i64 %r626 to ptr
  %gml629 = load i64, ptr %gmp628, align 1, !alias.scope !4, !noalias !3
  %gmp630 = inttoptr i64 %t627 to ptr
  %gml631 = load i64, ptr %gmp630, align 1, !alias.scope !4, !noalias !3
  %t632 = add i64 %r626, 64
  %wp633 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t632, ptr %wp633, align 8, !alias.scope !3, !noalias !4
  %wp634 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml629, ptr %wp634, align 8, !alias.scope !3, !noalias !4
  %wp635 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml631, ptr %wp635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d974 word 0xd61f0040
  %r636.p = getelementptr inbounds i8, ptr %c, i64 16
  %r636 = load i64, ptr %r636.p, align 8, !alias.scope !3, !noalias !4
  %pcp1617 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r636, ptr %pcp1617, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_80084d978:
  ; @pc 0x80084d978 word 0xf9400028
  %r637.p = getelementptr inbounds i8, ptr %c, i64 8
  %r637 = load i64, ptr %r637.p, align 8, !alias.scope !3, !noalias !4
  %gmp638 = inttoptr i64 %r637 to ptr
  %gml639 = load i64, ptr %gmp638, align 1, !alias.scope !4, !noalias !3
  %wp640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml639, ptr %wp640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d97c word 0xf9401d02
  %r641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r641 = load i64, ptr %r641.p, align 8, !alias.scope !3, !noalias !4
  %t642 = add i64 %r641, 56
  %gmp643 = inttoptr i64 %t642 to ptr
  %gml644 = load i64, ptr %gmp643, align 1, !alias.scope !4, !noalias !3
  %wp645 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml644, ptr %wp645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d980 word 0x9000fb48
  %wp646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34401374208, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d984 word 0x913c5108
  %r647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %t648 = add i64 %r647, 3860
  %wp649 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t648, ptr %wp649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d988 word 0xeb08005f
  %r650.p = getelementptr inbounds i8, ptr %c, i64 16
  %r650 = load i64, ptr %r650.p, align 8, !alias.scope !3, !noalias !4
  %r651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %t652 = sub i64 %r650, %r651
  %fn653 = icmp slt i64 %t652, 0
  %fz654 = icmp eq i64 %t652, 0
  %fc655 = icmp uge i64 %r650, %r651
  %fx1656 = xor i64 %r650, %r651
  %fx2657 = xor i64 %r650, %t652
  %fva658 = and i64 %fx1656, %fx2657
  %fv659 = icmp slt i64 %fva658, 0
  %nz660 = zext i1 %fn653 to i64
  %zz661 = zext i1 %fz654 to i64
  %cz662 = zext i1 %fc655 to i64
  %vz663 = zext i1 %fv659 to i64
  %ns664 = shl i64 %nz660, 31
  %zs665 = shl i64 %zz661, 30
  %cs666 = shl i64 %cz662, 29
  %vs667 = shl i64 %vz663, 28
  %nzor668 = or i64 %ns664, %zs665
  %cvor669 = or i64 %cs666, %vs667
  %nzcv670 = or i64 %nzor668, %cvor669
  %wp671 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv670, ptr %wp671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d98c word 0x54000261
  %r672.p = getelementptr inbounds i8, ptr %c, i64 272
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %fsh674 = lshr i64 %r672, 30
  %ftr675 = trunc i64 %fsh674 to i1
  %cond673 = xor i1 %ftr675, true
  br i1 %cond673, label %L_80084d9d8, label %L_80084d990_ft
L_80084d99c:
  ; @pc 0x80084d99c word 0x2a1f03f6
  %t683 = or i32 0, 0
  %c684 = zext i32 %t683 to i64
  %wp685 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c684, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  br label %L_80084d9a0
L_80084d9a0:
  ; @pc 0x80084d9a0 word 0xb40008f4
  %r686.p = getelementptr inbounds i8, ptr %c, i64 160
  %r686 = load i64, ptr %r686.p, align 8, !alias.scope !3, !noalias !4
  %cmp687 = icmp eq i64 %r686, 0
  br i1 %cmp687, label %L_80084dabc, label %L_80084d9a4_ft
L_80084d9d8:
  ; @pc 0x80084d9d8 word 0xf0fff4c8
  %wp749 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34366980096, ptr %wp749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9dc word 0x91236108
  %r750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %t751 = add i64 %r750, 2264
  %wp752 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t751, ptr %wp752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9e0 word 0xeb08005f
  %r753.p = getelementptr inbounds i8, ptr %c, i64 16
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %r754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r754 = load i64, ptr %r754.p, align 8, !alias.scope !3, !noalias !4
  %t755 = sub i64 %r753, %r754
  %fn756 = icmp slt i64 %t755, 0
  %fz757 = icmp eq i64 %t755, 0
  %fc758 = icmp uge i64 %r753, %r754
  %fx1759 = xor i64 %r753, %r754
  %fx2760 = xor i64 %r753, %t755
  %fva761 = and i64 %fx1759, %fx2760
  %fv762 = icmp slt i64 %fva761, 0
  %nz763 = zext i1 %fn756 to i64
  %zz764 = zext i1 %fz757 to i64
  %cz765 = zext i1 %fc758 to i64
  %vz766 = zext i1 %fv762 to i64
  %ns767 = shl i64 %nz763, 31
  %zs768 = shl i64 %zz764, 30
  %cs769 = shl i64 %cz765, 29
  %vs770 = shl i64 %vz766, 28
  %nzor771 = or i64 %ns767, %zs768
  %cvor772 = or i64 %cs769, %vs770
  %nzcv773 = or i64 %nzor771, %cvor772
  %wp774 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv773, ptr %wp774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9e4 word 0x54000ea0
  %r775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %fsh777 = lshr i64 %r775, 30
  %cond776 = trunc i64 %fsh777 to i1
  br i1 %cond776, label %L_80084dbb8, label %L_80084d9e8_ft
L_80084d9f0:
  ; @pc 0x80084d9f0 word 0xb94082a9
  %r781.p = getelementptr inbounds i8, ptr %c, i64 168
  %r781 = load i64, ptr %r781.p, align 8, !alias.scope !3, !noalias !4
  %t782 = add i64 %r781, 128
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i32, ptr %gmp783, align 1, !alias.scope !4, !noalias !3
  %c785 = zext i32 %gml784 to i64
  %wp786 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c785, ptr %wp786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9f4 word 0x7100053f
  %r787.p = getelementptr inbounds i8, ptr %c, i64 72
  %r787 = load i64, ptr %r787.p, align 8, !alias.scope !3, !noalias !4
  %c788 = trunc i64 %r787 to i32
  %t789 = sub i32 %c788, 1
  %fn790 = icmp slt i32 %t789, 0
  %fz791 = icmp eq i32 %t789, 0
  %fc792 = icmp uge i32 %c788, 1
  %fx1793 = xor i32 %c788, 1
  %fx2794 = xor i32 %c788, %t789
  %fva795 = and i32 %fx1793, %fx2794
  %fv796 = icmp slt i32 %fva795, 0
  %nz797 = zext i1 %fn790 to i64
  %zz798 = zext i1 %fz791 to i64
  %cz799 = zext i1 %fc792 to i64
  %vz800 = zext i1 %fv796 to i64
  %ns801 = shl i64 %nz797, 31
  %zs802 = shl i64 %zz798, 30
  %cs803 = shl i64 %cz799, 29
  %vs804 = shl i64 %vz800, 28
  %nzor805 = or i64 %ns801, %zs802
  %cvor806 = or i64 %cs803, %vs804
  %nzcv807 = or i64 %nzor805, %cvor806
  %wp808 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv807, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9f8 word 0xf94016a8
  %r809.p = getelementptr inbounds i8, ptr %c, i64 168
  %r809 = load i64, ptr %r809.p, align 8, !alias.scope !3, !noalias !4
  %t810 = add i64 %r809, 40
  %gmp811 = inttoptr i64 %t810 to ptr
  %gml812 = load i64, ptr %gmp811, align 1, !alias.scope !4, !noalias !3
  %wp813 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml812, ptr %wp813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9fc word 0x54000321
  %r814.p = getelementptr inbounds i8, ptr %c, i64 272
  %r814 = load i64, ptr %r814.p, align 8, !alias.scope !3, !noalias !4
  %fsh816 = lshr i64 %r814, 30
  %ftr817 = trunc i64 %fsh816 to i1
  %cond815 = xor i1 %ftr817, true
  br i1 %cond815, label %L_80084da60, label %L_80084da00_ft
L_80084da08:
  ; @pc 0x80084da08 word 0xeb13015f
  %r826.p = getelementptr inbounds i8, ptr %c, i64 80
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %r827.p = getelementptr inbounds i8, ptr %c, i64 152
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %t828 = sub i64 %r826, %r827
  %fn829 = icmp slt i64 %t828, 0
  %fz830 = icmp eq i64 %t828, 0
  %fc831 = icmp uge i64 %r826, %r827
  %fx1832 = xor i64 %r826, %r827
  %fx2833 = xor i64 %r826, %t828
  %fva834 = and i64 %fx1832, %fx2833
  %fv835 = icmp slt i64 %fva834, 0
  %nz836 = zext i1 %fn829 to i64
  %zz837 = zext i1 %fz830 to i64
  %cz838 = zext i1 %fc831 to i64
  %vz839 = zext i1 %fv835 to i64
  %ns840 = shl i64 %nz836, 31
  %zs841 = shl i64 %zz837, 30
  %cs842 = shl i64 %cz838, 29
  %vs843 = shl i64 %vz839, 28
  %nzor844 = or i64 %ns840, %zs841
  %cvor845 = or i64 %cs842, %vs843
  %nzcv846 = or i64 %nzor844, %cvor845
  %wp847 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv846, ptr %wp847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da0c word 0x54000148
  %r848.p = getelementptr inbounds i8, ptr %c, i64 272
  %r848 = load i64, ptr %r848.p, align 8, !alias.scope !3, !noalias !4
  %fsh850 = lshr i64 %r848, 29
  %ftr851 = trunc i64 %fsh850 to i1
  %fsh852 = lshr i64 %r848, 30
  %ftr853 = trunc i64 %fsh852 to i1
  %fnz854 = xor i1 %ftr853, true
  %cond849 = and i1 %ftr851, %fnz854
  br i1 %cond849, label %L_80084da34, label %L_80084da10_ft
L_80084da18:
  ; @pc 0x80084da18 word 0x910222b6
  %r859.p = getelementptr inbounds i8, ptr %c, i64 168
  %r859 = load i64, ptr %r859.p, align 8, !alias.scope !3, !noalias !4
  %t860 = add i64 %r859, 136
  %wp861 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t860, ptr %wp861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da1c word 0xaa1603e0
  %r862.p = getelementptr inbounds i8, ptr %c, i64 176
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %t863 = or i64 0, %r862
  %wp864 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t863, ptr %wp864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da20 word 0x948d5990
  %wp865 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368444964, ptr %wp865, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x80084da24 word 0xf94062a8
  %r866.p = getelementptr inbounds i8, ptr %c, i64 168
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %t867 = add i64 %r866, 192
  %gmp868 = inttoptr i64 %t867 to ptr
  %gml869 = load i64, ptr %gmp868, align 1, !alias.scope !4, !noalias !3
  %wp870 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml869, ptr %wp870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da28 word 0xb5000e28
  %r871.p = getelementptr inbounds i8, ptr %c, i64 64
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %cmp872 = icmp ne i64 %r871, 0
  br i1 %cmp872, label %L_80084dbec, label %L_80084da2c
L_80084da2c:
  ; @pc 0x80084da2c word 0xaa1603e0
  %r873.p = getelementptr inbounds i8, ptr %c, i64 176
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %t874 = or i64 0, %r873
  %wp875 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t874, ptr %wp875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da30 word 0x948d5990
  %wp876 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368444980, ptr %wp876, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  br label %L_80084da34
L_80084da34:
  ; @pc 0x80084da34 word 0xaa1503f8
  %r877.p = getelementptr inbounds i8, ptr %c, i64 168
  %r877 = load i64, ptr %r877.p, align 8, !alias.scope !3, !noalias !4
  %t878 = or i64 0, %r877
  %wp879 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  br label %L_80084da38
L_80084da38:
  ; @pc 0x80084da38 word 0x52800028
  %c880 = zext i32 1 to i64
  %wp881 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c880, ptr %wp881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da3c word 0x17ffff9c
  br label %L_80084d8ac
L_80084da40:
  ; @pc 0x80084da40 word 0xaa1503e0
  %r882.p = getelementptr inbounds i8, ptr %c, i64 168
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %t883 = or i64 0, %r882
  %wp884 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da44 word 0xaa1303e1
  %r885.p = getelementptr inbounds i8, ptr %c, i64 152
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %t886 = or i64 0, %r885
  %wp887 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t886, ptr %wp887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da48 word 0xd63f0100
  %r888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %fp889 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r888, ptr %fp889, align 8, !alias.scope !3, !noalias !4
  %wp890 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445004, ptr %wp890, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80084da4c word 0xaa1503f8
  %r891.p = getelementptr inbounds i8, ptr %c, i64 168
  %r891 = load i64, ptr %r891.p, align 8, !alias.scope !3, !noalias !4
  %t892 = or i64 0, %r891
  %wp893 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t892, ptr %wp893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da50 word 0x3707f2a0
  %r894.p = getelementptr inbounds i8, ptr %c, i64 0
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %t895 = and i64 %r894, 1
  %cmp896 = icmp ne i64 %t895, 0
  br i1 %cmp896, label %L_80084d8a4, label %L_80084da54_ft
L_80084da58:
  ; @pc 0x80084da58 word 0xaa1f03f8
  %t897 = or i64 0, 0
  %wp898 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t897, ptr %wp898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da5c word 0x17fffff7
  br label %L_80084da38
L_80084da60:
  ; @pc 0x80084da60 word 0xf9401aa9
  %r899.p = getelementptr inbounds i8, ptr %c, i64 168
  %r899 = load i64, ptr %r899.p, align 8, !alias.scope !3, !noalias !4
  %t900 = add i64 %r899, 48
  %gmp901 = inttoptr i64 %t900 to ptr
  %gml902 = load i64, ptr %gmp901, align 1, !alias.scope !4, !noalias !3
  %wp903 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml902, ptr %wp903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da64 word 0xaa0803ea
  %r904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %t905 = or i64 0, %r904
  %wp906 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t905, ptr %wp906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da68 word 0xd1030129
  %r907.p = getelementptr inbounds i8, ptr %c, i64 72
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = sub i64 %r907, 192
  %wp909 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t908, ptr %wp909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da6c word 0x17ffffe7
  br label %L_80084da08
L_80084da70:
  ; @pc 0x80084da70 word 0xf9400694
  %r910.p = getelementptr inbounds i8, ptr %c, i64 160
  %r910 = load i64, ptr %r910.p, align 8, !alias.scope !3, !noalias !4
  %t911 = add i64 %r910, 8
  %gmp912 = inttoptr i64 %t911 to ptr
  %gml913 = load i64, ptr %gmp912, align 1, !alias.scope !4, !noalias !3
  %wp914 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml913, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da74 word 0xaa1f03f7
  %t915 = or i64 0, 0
  %wp916 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t915, ptr %wp916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da78 word 0xaa1f03f8
  %t917 = or i64 0, 0
  %wp918 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t917, ptr %wp918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da7c word 0x52800036
  %c919 = zext i32 1 to i64
  %wp920 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c919, ptr %wp920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da80 word 0x17ffffc8
  br label %L_80084d9a0
L_80084da84:
  ; @pc 0x80084da84 word 0xaa1303e0
  %r921.p = getelementptr inbounds i8, ptr %c, i64 152
  %r921 = load i64, ptr %r921.p, align 8, !alias.scope !3, !noalias !4
  %t922 = or i64 0, %r921
  %wp923 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t922, ptr %wp923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da88 word 0xa9434ff4
  %r924.p = getelementptr inbounds i8, ptr %c, i64 256
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = add i64 %r924, 48
  %t926 = add i64 %t925, 8
  %gmp927 = inttoptr i64 %t925 to ptr
  %gml928 = load i64, ptr %gmp927, align 1, !alias.scope !4, !noalias !3
  %gmp929 = inttoptr i64 %t926 to ptr
  %gml930 = load i64, ptr %gmp929, align 1, !alias.scope !4, !noalias !3
  %wp931 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml928, ptr %wp931, align 8, !alias.scope !3, !noalias !4
  %wp932 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml930, ptr %wp932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da8c word 0xa94257f6
  %r933.p = getelementptr inbounds i8, ptr %c, i64 256
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %t934 = add i64 %r933, 32
  %t935 = add i64 %t934, 8
  %gmp936 = inttoptr i64 %t934 to ptr
  %gml937 = load i64, ptr %gmp936, align 1, !alias.scope !4, !noalias !3
  %gmp938 = inttoptr i64 %t935 to ptr
  %gml939 = load i64, ptr %gmp938, align 1, !alias.scope !4, !noalias !3
  %wp940 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml937, ptr %wp940, align 8, !alias.scope !3, !noalias !4
  %wp941 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml939, ptr %wp941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da90 word 0xa9415ff8
  %r942.p = getelementptr inbounds i8, ptr %c, i64 256
  %r942 = load i64, ptr %r942.p, align 8, !alias.scope !3, !noalias !4
  %t943 = add i64 %r942, 16
  %t944 = add i64 %t943, 8
  %gmp945 = inttoptr i64 %t943 to ptr
  %gml946 = load i64, ptr %gmp945, align 1, !alias.scope !4, !noalias !3
  %gmp947 = inttoptr i64 %t944 to ptr
  %gml948 = load i64, ptr %gmp947, align 1, !alias.scope !4, !noalias !3
  %wp949 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml946, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  %wp950 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml948, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da94 word 0xa8c47bfd
  %r951.p = getelementptr inbounds i8, ptr %c, i64 256
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %t952 = add i64 %r951, 8
  %gmp953 = inttoptr i64 %r951 to ptr
  %gml954 = load i64, ptr %gmp953, align 1, !alias.scope !4, !noalias !3
  %gmp955 = inttoptr i64 %t952 to ptr
  %gml956 = load i64, ptr %gmp955, align 1, !alias.scope !4, !noalias !3
  %t957 = add i64 %r951, 64
  %wp958 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t957, ptr %wp958, align 8, !alias.scope !3, !noalias !4
  %wp959 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml954, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  %wp960 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml956, ptr %wp960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da98 word 0x17e13012
  musttail call void @f_800099ae0(ptr %c)
  ret void
L_80084da9c:
  ; @pc 0x80084da9c word 0xd1034129
  %r961.p = getelementptr inbounds i8, ptr %c, i64 72
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %t962 = sub i64 %r961, 208
  %wp963 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t962, ptr %wp963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daa0 word 0x17ffff7c
  br label %L_80084d890
L_80084daa4:
  ; @pc 0x80084daa4 word 0xf9401aa8
  %r964.p = getelementptr inbounds i8, ptr %c, i64 168
  %r964 = load i64, ptr %r964.p, align 8, !alias.scope !3, !noalias !4
  %t965 = add i64 %r964, 48
  %gmp966 = inttoptr i64 %t965 to ptr
  %gml967 = load i64, ptr %gmp966, align 1, !alias.scope !4, !noalias !3
  %wp968 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml967, ptr %wp968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daa8 word 0xaa0903ea
  %r969.p = getelementptr inbounds i8, ptr %c, i64 72
  %r969 = load i64, ptr %r969.p, align 8, !alias.scope !3, !noalias !4
  %t970 = or i64 0, %r969
  %wp971 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t970, ptr %wp971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daac word 0x8b080128
  %r972.p = getelementptr inbounds i8, ptr %c, i64 72
  %r972 = load i64, ptr %r972.p, align 8, !alias.scope !3, !noalias !4
  %r973.p = getelementptr inbounds i8, ptr %c, i64 64
  %r973 = load i64, ptr %r973.p, align 8, !alias.scope !3, !noalias !4
  %t974 = add i64 %r972, %r973
  %wp975 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t974, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dab0 word 0xd1038108
  %r976.p = getelementptr inbounds i8, ptr %c, i64 64
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %t977 = sub i64 %r976, 224
  %wp978 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t977, ptr %wp978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dab4 word 0x17ffffa4
  br label %L_80084d944
L_80084dab8:
  ; @pc 0x80084dab8 word 0xaa1f03f4
  %t979 = or i64 0, 0
  %wp980 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t979, ptr %wp980, align 8, !alias.scope !3, !noalias !4
  br label %L_80084dabc
L_80084dabc:
  ; @pc 0x80084dabc word 0xb0019360
  %wp981 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421317632, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dac0 word 0x91308000
  %r982.p = getelementptr inbounds i8, ptr %c, i64 0
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %t983 = add i64 %r982, 3104
  %wp984 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dac4 word 0x948d5967
  %wp985 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445128, ptr %wp985, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x80084dac8 word 0x370000b6
  %r986.p = getelementptr inbounds i8, ptr %c, i64 176
  %r986 = load i64, ptr %r986.p, align 8, !alias.scope !3, !noalias !4
  %t987 = and i64 %r986, 1
  %cmp988 = icmp ne i64 %t987, 0
  br i1 %cmp988, label %L_80084dadc, label %L_80084dacc_ft
L_80084dadc:
  ; @pc 0x80084dadc word 0xb4000074
  %r1021.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1021 = load i64, ptr %r1021.p, align 8, !alias.scope !3, !noalias !4
  %cmp1022 = icmp eq i64 %r1021, 0
  br i1 %cmp1022, label %L_80084dae8, label %L_80084dae0_ft
L_80084dae8:
  ; @pc 0x80084dae8 word 0xb0019369
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34421317632, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daec word 0x912ea129
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %t1051 = add i64 %r1050, 2984
  %wp1052 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1051, ptr %wp1052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daf0 word 0xb9800128
  %r1053.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1053 = load i64, ptr %r1053.p, align 8, !alias.scope !3, !noalias !4
  %gmp1054 = inttoptr i64 %r1053 to ptr
  %gml1055 = load i32, ptr %gmp1054, align 1, !alias.scope !4, !noalias !3
  %c1056 = sext i32 %gml1055 to i64
  %wp1057 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1056, ptr %wp1057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084daf4 word 0x34000228
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %c1059 = trunc i64 %r1058 to i32
  %cmp1060 = icmp eq i32 %c1059, 0
  br i1 %cmp1060, label %L_80084db38, label %L_80084daf8_ft
L_80084db04:
  ; @pc 0x80084db04 word 0xf9400280
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %gmp1074 = inttoptr i64 %r1073 to ptr
  %gml1075 = load i64, ptr %gmp1074, align 1, !alias.scope !4, !noalias !3
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1075, ptr %wp1076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db08 word 0xaa1303e1
  %r1077.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1077 = load i64, ptr %r1077.p, align 8, !alias.scope !3, !noalias !4
  %t1078 = or i64 0, %r1077
  %wp1079 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1078, ptr %wp1079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db0c word 0x97e90b6c
  %wp1080 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445200, ptr %wp1080, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084db10 word 0xb40000e0
  %r1081.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1081 = load i64, ptr %r1081.p, align 8, !alias.scope !3, !noalias !4
  %cmp1082 = icmp eq i64 %r1081, 0
  br i1 %cmp1082, label %L_80084db2c, label %L_80084db14_ft
L_80084db18:
  ; @pc 0x80084db18 word 0xf90002f5
  %r1086.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1086 = load i64, ptr %r1086.p, align 8, !alias.scope !3, !noalias !4
  %r1087.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1087 = load i64, ptr %r1087.p, align 8, !alias.scope !3, !noalias !4
  %gmp1088 = inttoptr i64 %r1086 to ptr
  store i64 %r1087, ptr %gmp1088, align 1, !alias.scope !4, !noalias !3
  br label %L_80084db1c
L_80084db1c:
  ; @pc 0x80084db1c word 0xb0019360
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421317632, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db20 word 0x91308000
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %t1091 = add i64 %r1090, 3104
  %wp1092 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1091, ptr %wp1092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db24 word 0x948d5953
  %wp1093 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445224, ptr %wp1093, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x80084db28 word 0x17ffff66
  br label %L_80084d8c0
L_80084db2c:
  ; @pc 0x80084db2c word 0x91002294
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = add i64 %r1094, 8
  %wp1096 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1095, ptr %wp1096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db30 word 0xf1002318
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %t1098 = sub i64 %r1097, 8
  %fn1099 = icmp slt i64 %t1098, 0
  %fz1100 = icmp eq i64 %t1098, 0
  %fc1101 = icmp uge i64 %r1097, 8
  %fx11102 = xor i64 %r1097, 8
  %fx21103 = xor i64 %r1097, %t1098
  %fva1104 = and i64 %fx11102, %fx21103
  %fv1105 = icmp slt i64 %fva1104, 0
  %nz1106 = zext i1 %fn1099 to i64
  %zz1107 = zext i1 %fz1100 to i64
  %cz1108 = zext i1 %fc1101 to i64
  %vz1109 = zext i1 %fv1105 to i64
  %ns1110 = shl i64 %nz1106, 31
  %zs1111 = shl i64 %zz1107, 30
  %cs1112 = shl i64 %cz1108, 29
  %vs1113 = shl i64 %vz1109, 28
  %nzor1114 = or i64 %ns1110, %zs1111
  %cvor1115 = or i64 %cs1112, %vs1113
  %nzcv1116 = or i64 %nzor1114, %cvor1115
  %wp1117 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1116, ptr %wp1117, align 8, !alias.scope !3, !noalias !4
  %wp1118 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1098, ptr %wp1118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db34 word 0x54fffe81
  %r1119.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1119 = load i64, ptr %r1119.p, align 8, !alias.scope !3, !noalias !4
  %fsh1121 = lshr i64 %r1119, 30
  %ftr1122 = trunc i64 %fsh1121 to i1
  %cond1120 = xor i1 %ftr1122, true
  br i1 %cond1120, label %L_80084db04, label %L_80084db38
L_80084db38:
  ; @pc 0x80084db38 word 0xb0019368
  %wp1123 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp1123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db3c word 0x912f6108
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1124 = load i64, ptr %r1124.p, align 8, !alias.scope !3, !noalias !4
  %t1125 = add i64 %r1124, 3032
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db40 word 0xb9800118
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %gmp1128 = inttoptr i64 %r1127 to ptr
  %gml1129 = load i32, ptr %gmp1128, align 1, !alias.scope !4, !noalias !3
  %c1130 = sext i32 %gml1129 to i64
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1130, ptr %wp1131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db44 word 0x340008f8
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %c1133 = trunc i64 %r1132 to i32
  %cmp1134 = icmp eq i32 %c1133, 0
  br i1 %cmp1134, label %L_80084dc60, label %L_80084db48_ft
L_80084db70:
  ; @pc 0x80084db70 word 0xb4000798
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %cmp1167 = icmp eq i64 %r1166, 0
  br i1 %cmp1167, label %L_80084dc60, label %L_80084db74_ft
L_80084db90:
  ; @pc 0x80084db90 word 0xaa1503e0
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %t1187 = or i64 0, %r1186
  %wp1188 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1187, ptr %wp1188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db94 word 0xaa1303e1
  %r1189.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1189 = load i64, ptr %r1189.p, align 8, !alias.scope !3, !noalias !4
  %t1190 = or i64 0, %r1189
  %wp1191 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1190, ptr %wp1191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db98 word 0x97e90b49
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445340, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084db9c word 0xaa1503f8
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %t1194 = or i64 0, %r1193
  %wp1195 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1194, ptr %wp1195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dba0 word 0xb4fff9e0
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %cmp1197 = icmp eq i64 %r1196, 0
  br i1 %cmp1197, label %L_80084dadc, label %L_80084dba4_ft
L_80084dbb0:
  ; @pc 0x80084dbb0 word 0xaa0003f5
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %t1227 = or i64 0, %r1226
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbb4 word 0x17ffffda
  br label %L_80084db1c
L_80084dbb8:
  ; @pc 0x80084dbb8 word 0xb4ffe9f3
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %cmp1230 = icmp eq i64 %r1229, 0
  br i1 %cmp1230, label %L_80084d8f4, label %L_80084dbbc_ft
L_80084dbcc:
  ; @pc 0x80084dbcc word 0xf9400280
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %gmp1246 = inttoptr i64 %r1245 to ptr
  %gml1247 = load i64, ptr %gmp1246, align 1, !alias.scope !4, !noalias !3
  %wp1248 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1247, ptr %wp1248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbd0 word 0xaa1303e1
  %r1249.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1249 = load i64, ptr %r1249.p, align 8, !alias.scope !3, !noalias !4
  %t1250 = or i64 0, %r1249
  %wp1251 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1250, ptr %wp1251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbd4 word 0x97e90b3a
  %wp1252 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445400, ptr %wp1252, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084dbd8 word 0xb5fffec0
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %cmp1254 = icmp ne i64 %r1253, 0
  br i1 %cmp1254, label %L_80084dbb0, label %L_80084dbdc_ft
L_80084dbec:
  ; @pc 0x80084dbec word 0xb94082a9
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %t1285 = add i64 %r1284, 128
  %gmp1286 = inttoptr i64 %t1285 to ptr
  %gml1287 = load i32, ptr %gmp1286, align 1, !alias.scope !4, !noalias !3
  %c1288 = zext i32 %gml1287 to i64
  %wp1289 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1288, ptr %wp1289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbf0 word 0x7100053f
  %r1290.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1290 = load i64, ptr %r1290.p, align 8, !alias.scope !3, !noalias !4
  %c1291 = trunc i64 %r1290 to i32
  %t1292 = sub i32 %c1291, 1
  %fn1293 = icmp slt i32 %t1292, 0
  %fz1294 = icmp eq i32 %t1292, 0
  %fc1295 = icmp uge i32 %c1291, 1
  %fx11296 = xor i32 %c1291, 1
  %fx21297 = xor i32 %c1291, %t1292
  %fva1298 = and i32 %fx11296, %fx21297
  %fv1299 = icmp slt i32 %fva1298, 0
  %nz1300 = zext i1 %fn1293 to i64
  %zz1301 = zext i1 %fz1294 to i64
  %cz1302 = zext i1 %fc1295 to i64
  %vz1303 = zext i1 %fv1299 to i64
  %ns1304 = shl i64 %nz1300, 31
  %zs1305 = shl i64 %zz1301, 30
  %cs1306 = shl i64 %cz1302, 29
  %vs1307 = shl i64 %vz1303, 28
  %nzor1308 = or i64 %ns1304, %zs1305
  %cvor1309 = or i64 %cs1306, %vs1307
  %nzcv1310 = or i64 %nzor1308, %cvor1309
  %wp1311 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1310, ptr %wp1311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbf4 word 0x54000501
  %r1312.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1312 = load i64, ptr %r1312.p, align 8, !alias.scope !3, !noalias !4
  %fsh1314 = lshr i64 %r1312, 30
  %ftr1315 = trunc i64 %fsh1314 to i1
  %cond1313 = xor i1 %ftr1315, true
  br i1 %cond1313, label %L_80084dc94, label %L_80084dbf8
L_80084dbf8:
  ; @pc 0x80084dbf8 word 0xeb13011f
  %r1316.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1316 = load i64, ptr %r1316.p, align 8, !alias.scope !3, !noalias !4
  %r1317.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1317 = load i64, ptr %r1317.p, align 8, !alias.scope !3, !noalias !4
  %t1318 = sub i64 %r1316, %r1317
  %fn1319 = icmp slt i64 %t1318, 0
  %fz1320 = icmp eq i64 %t1318, 0
  %fc1321 = icmp uge i64 %r1316, %r1317
  %fx11322 = xor i64 %r1316, %r1317
  %fx21323 = xor i64 %r1316, %t1318
  %fva1324 = and i64 %fx11322, %fx21323
  %fv1325 = icmp slt i64 %fva1324, 0
  %nz1326 = zext i1 %fn1319 to i64
  %zz1327 = zext i1 %fz1320 to i64
  %cz1328 = zext i1 %fc1321 to i64
  %vz1329 = zext i1 %fv1325 to i64
  %ns1330 = shl i64 %nz1326, 31
  %zs1331 = shl i64 %zz1327, 30
  %cs1332 = shl i64 %cz1328, 29
  %vs1333 = shl i64 %vz1329, 28
  %nzor1334 = or i64 %ns1330, %zs1331
  %cvor1335 = or i64 %cs1332, %vs1333
  %nzcv1336 = or i64 %nzor1334, %cvor1335
  %wp1337 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1336, ptr %wp1337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbfc word 0x540000a8
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %fsh1340 = lshr i64 %r1338, 29
  %ftr1341 = trunc i64 %fsh1340 to i1
  %fsh1342 = lshr i64 %r1338, 30
  %ftr1343 = trunc i64 %fsh1342 to i1
  %fnz1344 = xor i1 %ftr1343, true
  %cond1339 = and i1 %ftr1341, %fnz1344
  br i1 %cond1339, label %L_80084dc10, label %L_80084dc00_ft
L_80084dc10:
  ; @pc 0x80084dc10 word 0xf9400508
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %t1383 = add i64 %r1382, 8
  %gmp1384 = inttoptr i64 %t1383 to ptr
  %gml1385 = load i64, ptr %gmp1384, align 1, !alias.scope !4, !noalias !3
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1385, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc14 word 0xb4fff0c8
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %cmp1388 = icmp eq i64 %r1387, 0
  br i1 %cmp1388, label %L_80084da2c, label %L_80084dc18_ft
L_80084dc1c:
  ; @pc 0x80084dc1c word 0xaa1403e0
  %r1389.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1389 = load i64, ptr %r1389.p, align 8, !alias.scope !3, !noalias !4
  %t1390 = or i64 0, %r1389
  %wp1391 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1390, ptr %wp1391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc20 word 0xaa1303e1
  %r1392.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1392 = load i64, ptr %r1392.p, align 8, !alias.scope !3, !noalias !4
  %t1393 = or i64 0, %r1392
  %wp1394 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1393, ptr %wp1394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc24 word 0x97e90b26
  %wp1395 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445480, ptr %wp1395, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084dc28 word 0xf100001f
  %r1396.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1396 = load i64, ptr %r1396.p, align 8, !alias.scope !3, !noalias !4
  %t1397 = sub i64 %r1396, 0
  %fn1398 = icmp slt i64 %t1397, 0
  %fz1399 = icmp eq i64 %t1397, 0
  %fc1400 = icmp uge i64 %r1396, 0
  %fx11401 = xor i64 %r1396, 0
  %fx21402 = xor i64 %r1396, %t1397
  %fva1403 = and i64 %fx11401, %fx21402
  %fv1404 = icmp slt i64 %fva1403, 0
  %nz1405 = zext i1 %fn1398 to i64
  %zz1406 = zext i1 %fz1399 to i64
  %cz1407 = zext i1 %fc1400 to i64
  %vz1408 = zext i1 %fv1404 to i64
  %ns1409 = shl i64 %nz1405, 31
  %zs1410 = shl i64 %zz1406, 30
  %cs1411 = shl i64 %cz1407, 29
  %vs1412 = shl i64 %vz1408, 28
  %nzor1413 = or i64 %ns1409, %zs1410
  %cvor1414 = or i64 %cs1411, %vs1412
  %nzcv1415 = or i64 %nzor1413, %cvor1414
  %wp1416 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1415, ptr %wp1416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc2c word 0xaa0003f5
  %r1417.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1417 = load i64, ptr %r1417.p, align 8, !alias.scope !3, !noalias !4
  %t1418 = or i64 0, %r1417
  %wp1419 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1418, ptr %wp1419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc30 word 0x1a9f16c8
  %r1420.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1420 = load i64, ptr %r1420.p, align 8, !alias.scope !3, !noalias !4
  %c1421 = trunc i64 %r1420 to i32
  %t1422 = add i32 0, 1
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %fsh1425 = lshr i64 %r1423, 30
  %ftr1426 = trunc i64 %fsh1425 to i1
  %cond1424 = xor i1 %ftr1426, true
  %sel1427 = select i1 %cond1424, i32 %c1421, i32 %t1422
  %c1428 = zext i32 %sel1427 to i64
  %wp1429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1428, ptr %wp1429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc34 word 0x3607f728
  %r1430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1430 = load i64, ptr %r1430.p, align 8, !alias.scope !3, !noalias !4
  %t1431 = and i64 %r1430, 1
  %cmp1432 = icmp eq i64 %t1431, 0
  br i1 %cmp1432, label %L_80084db18, label %L_80084dc38_ft
L_80084dc40:
  ; @pc 0x80084dc40 word 0xd37df318
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %ror1436 = call i64 @llvm.fshr.i64(i64 %r1435, i64 %r1435, i64 61)
  %t1437 = and i64 %ror1436, -8
  %wp1438 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1437, ptr %wp1438, align 8, !alias.scope !3, !noalias !4
  br label %L_80084dc44
L_80084dc44:
  ; @pc 0x80084dc44 word 0xf9400280
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %gmp1440 = inttoptr i64 %r1439 to ptr
  %gml1441 = load i64, ptr %gmp1440, align 1, !alias.scope !4, !noalias !3
  %wp1442 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1441, ptr %wp1442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc48 word 0xaa1303e1
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %t1444 = or i64 0, %r1443
  %wp1445 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1444, ptr %wp1445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc4c word 0x97e90b1c
  %wp1446 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445520, ptr %wp1446, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084dc50 word 0xb5fffb00
  %r1447.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1447 = load i64, ptr %r1447.p, align 8, !alias.scope !3, !noalias !4
  %cmp1448 = icmp ne i64 %r1447, 0
  br i1 %cmp1448, label %L_80084dbb0, label %L_80084dc54_ft
L_80084dc60:
  ; @pc 0x80084dc60 word 0xb0019368
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc64 word 0x91302108
  %r1479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1479 = load i64, ptr %r1479.p, align 8, !alias.scope !3, !noalias !4
  %t1480 = add i64 %r1479, 3080
  %wp1481 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1480, ptr %wp1481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc68 word 0xf9400100
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %gmp1483 = inttoptr i64 %r1482 to ptr
  %gml1484 = load i64, ptr %gmp1483, align 1, !alias.scope !4, !noalias !3
  %wp1485 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1484, ptr %wp1485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc6c word 0xb4000100
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %cmp1487 = icmp eq i64 %r1486, 0
  br i1 %cmp1487, label %L_80084dc8c, label %L_80084dc70_ft
L_80084dc8c:
  ; @pc 0x80084dc8c word 0xaa1f03f5
  %t1531 = or i64 0, 0
  %wp1532 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1531, ptr %wp1532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc90 word 0x17ffffa3
  br label %L_80084db1c
L_80084dc94:
  ; @pc 0x80084dc94 word 0xaa0803e9
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %t1534 = or i64 0, %r1533
  %wp1535 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1534, ptr %wp1535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc98 word 0xf841052a
  %r1536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1536 = load i64, ptr %r1536.p, align 8, !alias.scope !3, !noalias !4
  %t1537 = add i64 %r1536, 16
  %gmp1538 = inttoptr i64 %r1536 to ptr
  %gml1539 = load i64, ptr %gmp1538, align 1, !alias.scope !4, !noalias !3
  %wp1540 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1537, ptr %wp1540, align 8, !alias.scope !3, !noalias !4
  %wp1541 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1539, ptr %wp1541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc9c word 0xeb13013f
  %r1542.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1542 = load i64, ptr %r1542.p, align 8, !alias.scope !3, !noalias !4
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %t1544 = sub i64 %r1542, %r1543
  %fn1545 = icmp slt i64 %t1544, 0
  %fz1546 = icmp eq i64 %t1544, 0
  %fc1547 = icmp uge i64 %r1542, %r1543
  %fx11548 = xor i64 %r1542, %r1543
  %fx21549 = xor i64 %r1542, %t1544
  %fva1550 = and i64 %fx11548, %fx21549
  %fv1551 = icmp slt i64 %fva1550, 0
  %nz1552 = zext i1 %fn1545 to i64
  %zz1553 = zext i1 %fz1546 to i64
  %cz1554 = zext i1 %fc1547 to i64
  %vz1555 = zext i1 %fv1551 to i64
  %ns1556 = shl i64 %nz1552, 31
  %zs1557 = shl i64 %zz1553, 30
  %cs1558 = shl i64 %cz1554, 29
  %vs1559 = shl i64 %vz1555, 28
  %nzor1560 = or i64 %ns1556, %zs1557
  %cvor1561 = or i64 %cs1558, %vs1559
  %nzcv1562 = or i64 %nzor1560, %cvor1561
  %wp1563 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1562, ptr %wp1563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dca0 word 0x54000089
  %r1564.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1564 = load i64, ptr %r1564.p, align 8, !alias.scope !3, !noalias !4
  %fsh1566 = lshr i64 %r1564, 29
  %ftr1567 = trunc i64 %fsh1566 to i1
  %fsh1568 = lshr i64 %r1564, 30
  %ftr1569 = trunc i64 %fsh1568 to i1
  %fnz1570 = xor i1 %ftr1569, true
  %fhi1571 = and i1 %ftr1567, %fnz1570
  %cond1565 = xor i1 %fhi1571, true
  br i1 %cond1565, label %L_80084dcb0, label %L_80084dca4_ft
L_80084dcb0:
  ; @pc 0x80084dcb0 word 0xf9400508
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = add i64 %r1606, 8
  %gmp1608 = inttoptr i64 %t1607 to ptr
  %gml1609 = load i64, ptr %gmp1608, align 1, !alias.scope !4, !noalias !3
  %wp1610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1609, ptr %wp1610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dcb4 word 0xb4ffebc8
  %r1611.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1611 = load i64, ptr %r1611.p, align 8, !alias.scope !3, !noalias !4
  %cmp1612 = icmp eq i64 %r1611, 0
  br i1 %cmp1612, label %L_80084da2c, label %L_80084dcb8_ft
L_80084dcbc:
  ; @pc 0x80084dcbc word 0xaa1603e0
  %r1613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1613 = load i64, ptr %r1613.p, align 8, !alias.scope !3, !noalias !4
  %t1614 = or i64 0, %r1613
  %wp1615 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1614, ptr %wp1615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dcc0 word 0x948d58ec
  %wp1616 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445636, ptr %wp1616, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x80084dcc4 word 0x17fffef8
  br label %L_80084d8a4
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34368444400, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80084d7f0
L_80084d80c_ft:
  ; @pc 0x80084d80c word 0xb0019368
  %wp42 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp42, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d810 word 0x91310108
  %r43.p = getelementptr inbounds i8, ptr %c, i64 64
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 3136
  %wp45 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t44, ptr %wp45, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d814 word 0xf9400114
  %r46.p = getelementptr inbounds i8, ptr %c, i64 64
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %r46 to ptr
  %gml48 = load i64, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %wp49 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml48, ptr %wp49, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d818 word 0xb4001374
  %r50.p = getelementptr inbounds i8, ptr %c, i64 160
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %cmp51 = icmp eq i64 %r50, 0
  br i1 %cmp51, label %L_80084da84, label %L_80084d81c_ft
L_80084d81c_ft:
  ; @pc 0x80084d81c word 0xb40006d3
  %r52.p = getelementptr inbounds i8, ptr %c, i64 152
  %r52 = load i64, ptr %r52.p, align 8, !alias.scope !3, !noalias !4
  %cmp53 = icmp eq i64 %r52, 0
  br i1 %cmp53, label %L_80084d8f4, label %L_80084d820_ft
L_80084d820_ft:
  ; @pc 0x80084d820 word 0xb0019368
  %wp54 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp54, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d824 word 0x91368108
  %r55.p = getelementptr inbounds i8, ptr %c, i64 64
  %r55 = load i64, ptr %r55.p, align 8, !alias.scope !3, !noalias !4
  %t56 = add i64 %r55, 3488
  %wp57 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d828 word 0xf9400108
  %r58.p = getelementptr inbounds i8, ptr %c, i64 64
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %gmp59 = inttoptr i64 %r58 to ptr
  %gml60 = load i64, ptr %gmp59, align 1, !alias.scope !4, !noalias !3
  %wp61 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d82c word 0xb4001228
  %r62.p = getelementptr inbounds i8, ptr %c, i64 64
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %cmp63 = icmp eq i64 %r62, 0
  br i1 %cmp63, label %L_80084da70, label %L_80084d830_ft
L_80084d830_ft:
  ; @pc 0x80084d830 word 0xb9404900
  %r64.p = getelementptr inbounds i8, ptr %c, i64 64
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = add i64 %r64, 72
  %gmp66 = inttoptr i64 %t65 to ptr
  %gml67 = load i32, ptr %gmp66, align 1, !alias.scope !4, !noalias !3
  %c68 = zext i32 %gml67 to i64
  %wp69 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d834 word 0x948d58a3
  %wp70 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368444472, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x80084d838 word 0xb40011c0
  %r71.p = getelementptr inbounds i8, ptr %c, i64 0
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %cmp72 = icmp eq i64 %r71, 0
  br i1 %cmp72, label %L_80084da70, label %L_80084d83c_ft
L_80084d83c_ft:
  ; @pc 0x80084d83c word 0xf9404414
  %r73.p = getelementptr inbounds i8, ptr %c, i64 0
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = add i64 %r73, 136
  %gmp75 = inttoptr i64 %t74 to ptr
  %gml76 = load i64, ptr %gmp75, align 1, !alias.scope !4, !noalias !3
  %wp77 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml76, ptr %wp77, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d840 word 0x91024017
  %r78.p = getelementptr inbounds i8, ptr %c, i64 0
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %t79 = add i64 %r78, 144
  %wp80 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  br label %L_80084d844
L_80084d854_ft:
  ; @pc 0x80084d854 word 0xb4001035
  %r108.p = getelementptr inbounds i8, ptr %c, i64 168
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %cmp109 = icmp eq i64 %r108, 0
  br i1 %cmp109, label %L_80084da58, label %L_80084d858_ft
L_80084d858_ft:
  ; @pc 0x80084d858 word 0xb94052a8
  %r110.p = getelementptr inbounds i8, ptr %c, i64 168
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %t111 = add i64 %r110, 80
  %gmp112 = inttoptr i64 %t111 to ptr
  %gml113 = load i32, ptr %gmp112, align 1, !alias.scope !4, !noalias !3
  %c114 = zext i32 %gml113 to i64
  %wp115 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c114, ptr %wp115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d85c word 0x35000fe8
  %r116.p = getelementptr inbounds i8, ptr %c, i64 64
  %r116 = load i64, ptr %r116.p, align 8, !alias.scope !3, !noalias !4
  %c117 = trunc i64 %r116 to i32
  %cmp118 = icmp ne i32 %c117, 0
  br i1 %cmp118, label %L_80084da58, label %L_80084d860_ft
L_80084d860_ft:
  ; @pc 0x80084d860 word 0xf94002a8
  %r119.p = getelementptr inbounds i8, ptr %c, i64 168
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %gmp120 = inttoptr i64 %r119 to ptr
  %gml121 = load i64, ptr %gmp120, align 1, !alias.scope !4, !noalias !3
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d864 word 0x90018889
  %wp123 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d868 word 0xf9404908
  %r124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r124 = load i64, ptr %r124.p, align 8, !alias.scope !3, !noalias !4
  %t125 = add i64 %r124, 144
  %gmp126 = inttoptr i64 %t125 to ptr
  %gml127 = load i64, ptr %gmp126, align 1, !alias.scope !4, !noalias !3
  %wp128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d86c word 0xf944a129
  %r129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %t130 = add i64 %r129, 2368
  %gmp131 = inttoptr i64 %t130 to ptr
  %gml132 = load i64, ptr %gmp131, align 1, !alias.scope !4, !noalias !3
  %wp133 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml132, ptr %wp133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d870 word 0xeb09011f
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
  ; @pc 0x80084d874 word 0x540004a1
  %r156.p = getelementptr inbounds i8, ptr %c, i64 272
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %fsh158 = lshr i64 %r156, 30
  %ftr159 = trunc i64 %fsh158 to i1
  %cond157 = xor i1 %ftr159, true
  br i1 %cond157, label %L_80084d908, label %L_80084d878_ft
L_80084d878_ft:
  ; @pc 0x80084d878 word 0xb94082aa
  %r160.p = getelementptr inbounds i8, ptr %c, i64 168
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %t161 = add i64 %r160, 128
  %gmp162 = inttoptr i64 %t161 to ptr
  %gml163 = load i32, ptr %gmp162, align 1, !alias.scope !4, !noalias !3
  %c164 = zext i32 %gml163 to i64
  %wp165 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c164, ptr %wp165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d87c word 0x7100055f
  %r166.p = getelementptr inbounds i8, ptr %c, i64 80
  %r166 = load i64, ptr %r166.p, align 8, !alias.scope !3, !noalias !4
  %c167 = trunc i64 %r166 to i32
  %t168 = sub i32 %c167, 1
  %fn169 = icmp slt i32 %t168, 0
  %fz170 = icmp eq i32 %t168, 0
  %fc171 = icmp uge i32 %c167, 1
  %fx1172 = xor i32 %c167, 1
  %fx2173 = xor i32 %c167, %t168
  %fva174 = and i32 %fx1172, %fx2173
  %fv175 = icmp slt i32 %fva174, 0
  %nz176 = zext i1 %fn169 to i64
  %zz177 = zext i1 %fz170 to i64
  %cz178 = zext i1 %fc171 to i64
  %vz179 = zext i1 %fv175 to i64
  %ns180 = shl i64 %nz176, 31
  %zs181 = shl i64 %zz177, 30
  %cs182 = shl i64 %cz178, 29
  %vs183 = shl i64 %vz179, 28
  %nzor184 = or i64 %ns180, %zs181
  %cvor185 = or i64 %cs182, %vs183
  %nzcv186 = or i64 %nzor184, %cvor185
  %wp187 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv186, ptr %wp187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d880 word 0xa942a6a8
  %r188.p = getelementptr inbounds i8, ptr %c, i64 168
  %r188 = load i64, ptr %r188.p, align 8, !alias.scope !3, !noalias !4
  %t189 = add i64 %r188, 40
  %t190 = add i64 %t189, 8
  %gmp191 = inttoptr i64 %t189 to ptr
  %gml192 = load i64, ptr %gmp191, align 1, !alias.scope !4, !noalias !3
  %gmp193 = inttoptr i64 %t190 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml192, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  %wp196 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml194, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d884 word 0x9103410b
  %r197.p = getelementptr inbounds i8, ptr %c, i64 64
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %t198 = add i64 %r197, 208
  %wp199 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t198, ptr %wp199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d888 word 0x9a88016a
  %r200.p = getelementptr inbounds i8, ptr %c, i64 88
  %r200 = load i64, ptr %r200.p, align 8, !alias.scope !3, !noalias !4
  %r201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r201 = load i64, ptr %r201.p, align 8, !alias.scope !3, !noalias !4
  %r202.p = getelementptr inbounds i8, ptr %c, i64 272
  %r202 = load i64, ptr %r202.p, align 8, !alias.scope !3, !noalias !4
  %fsh204 = lshr i64 %r202, 30
  %cond203 = trunc i64 %fsh204 to i1
  %sel205 = select i1 %cond203, i64 %r200, i64 %r201
  %wp206 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel205, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d88c word 0x54001081
  %r207.p = getelementptr inbounds i8, ptr %c, i64 272
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %fsh209 = lshr i64 %r207, 30
  %ftr210 = trunc i64 %fsh209 to i1
  %cond208 = xor i1 %ftr210, true
  br i1 %cond208, label %L_80084da9c, label %L_80084d890
L_80084d898_ft:
  ; @pc 0x80084d898 word 0x8b080128
  %r240.p = getelementptr inbounds i8, ptr %c, i64 72
  %r240 = load i64, ptr %r240.p, align 8, !alias.scope !3, !noalias !4
  %r241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %t242 = add i64 %r240, %r241
  %wp243 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t242, ptr %wp243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d89c word 0xeb13011f
  %r244.p = getelementptr inbounds i8, ptr %c, i64 64
  %r244 = load i64, ptr %r244.p, align 8, !alias.scope !3, !noalias !4
  %r245.p = getelementptr inbounds i8, ptr %c, i64 152
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %t246 = sub i64 %r244, %r245
  %fn247 = icmp slt i64 %t246, 0
  %fz248 = icmp eq i64 %t246, 0
  %fc249 = icmp uge i64 %r244, %r245
  %fx1250 = xor i64 %r244, %r245
  %fx2251 = xor i64 %r244, %t246
  %fva252 = and i64 %fx1250, %fx2251
  %fv253 = icmp slt i64 %fva252, 0
  %nz254 = zext i1 %fn247 to i64
  %zz255 = zext i1 %fz248 to i64
  %cz256 = zext i1 %fc249 to i64
  %vz257 = zext i1 %fv253 to i64
  %ns258 = shl i64 %nz254, 31
  %zs259 = shl i64 %zz255, 30
  %cs260 = shl i64 %cz256, 29
  %vs261 = shl i64 %vz257, 28
  %nzor262 = or i64 %ns258, %zs259
  %cvor263 = or i64 %cs260, %vs261
  %nzcv264 = or i64 %nzor262, %cvor263
  %wp265 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv264, ptr %wp265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8a0 word 0x54000bc9
  %r266.p = getelementptr inbounds i8, ptr %c, i64 272
  %r266 = load i64, ptr %r266.p, align 8, !alias.scope !3, !noalias !4
  %fsh268 = lshr i64 %r266, 29
  %ftr269 = trunc i64 %fsh268 to i1
  %fsh270 = lshr i64 %r266, 30
  %ftr271 = trunc i64 %fsh270 to i1
  %fnz272 = xor i1 %ftr271, true
  %fhi273 = and i1 %ftr269, %fnz272
  %cond267 = xor i1 %fhi273, true
  br i1 %cond267, label %L_80084da18, label %L_80084d8a4
L_80084d8bc_ft:
  ; @pc 0x80084d8bc word 0x35000708
  %r306.p = getelementptr inbounds i8, ptr %c, i64 64
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %c307 = trunc i64 %r306 to i32
  %cmp308 = icmp ne i32 %c307, 0
  br i1 %cmp308, label %L_80084d99c, label %L_80084d8c0
L_80084d8e0_ft:
  ; @pc 0x80084d8e0 word 0x9000fb48
  %wp352 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34401374208, ptr %wp352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8e4 word 0x913c5108
  %r353.p = getelementptr inbounds i8, ptr %c, i64 64
  %r353 = load i64, ptr %r353.p, align 8, !alias.scope !3, !noalias !4
  %t354 = add i64 %r353, 3860
  %wp355 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t354, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8e8 word 0xeb08005f
  %r356.p = getelementptr inbounds i8, ptr %c, i64 16
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %r357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %t358 = sub i64 %r356, %r357
  %fn359 = icmp slt i64 %t358, 0
  %fz360 = icmp eq i64 %t358, 0
  %fc361 = icmp uge i64 %r356, %r357
  %fx1362 = xor i64 %r356, %r357
  %fx2363 = xor i64 %r356, %t358
  %fva364 = and i64 %fx1362, %fx2363
  %fv365 = icmp slt i64 %fva364, 0
  %nz366 = zext i1 %fn359 to i64
  %zz367 = zext i1 %fz360 to i64
  %cz368 = zext i1 %fc361 to i64
  %vz369 = zext i1 %fv365 to i64
  %ns370 = shl i64 %nz366, 31
  %zs371 = shl i64 %zz367, 30
  %cs372 = shl i64 %cz368, 29
  %vs373 = shl i64 %vz369, 28
  %nzor374 = or i64 %ns370, %zs371
  %cvor375 = or i64 %cs372, %vs373
  %nzcv376 = or i64 %nzor374, %cvor375
  %wp377 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv376, ptr %wp377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d8ec word 0x54000381
  %r378.p = getelementptr inbounds i8, ptr %c, i64 272
  %r378 = load i64, ptr %r378.p, align 8, !alias.scope !3, !noalias !4
  %fsh380 = lshr i64 %r378, 30
  %ftr381 = trunc i64 %fsh380 to i1
  %cond379 = xor i1 %ftr381, true
  br i1 %cond379, label %L_80084d95c, label %L_80084d8f0
L_80084d918_ft:
  ; @pc 0x80084d918 word 0xd0ffd189
  %wp453 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34362355712, ptr %wp453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d91c word 0x910f5129
  %r454.p = getelementptr inbounds i8, ptr %c, i64 72
  %r454 = load i64, ptr %r454.p, align 8, !alias.scope !3, !noalias !4
  %t455 = add i64 %r454, 980
  %wp456 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t455, ptr %wp456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d920 word 0xeb09011f
  %r457.p = getelementptr inbounds i8, ptr %c, i64 64
  %r457 = load i64, ptr %r457.p, align 8, !alias.scope !3, !noalias !4
  %r458.p = getelementptr inbounds i8, ptr %c, i64 72
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %t459 = sub i64 %r457, %r458
  %fn460 = icmp slt i64 %t459, 0
  %fz461 = icmp eq i64 %t459, 0
  %fc462 = icmp uge i64 %r457, %r458
  %fx1463 = xor i64 %r457, %r458
  %fx2464 = xor i64 %r457, %t459
  %fva465 = and i64 %fx1463, %fx2464
  %fv466 = icmp slt i64 %fva465, 0
  %nz467 = zext i1 %fn460 to i64
  %zz468 = zext i1 %fz461 to i64
  %cz469 = zext i1 %fc462 to i64
  %vz470 = zext i1 %fv466 to i64
  %ns471 = shl i64 %nz467, 31
  %zs472 = shl i64 %zz468, 30
  %cs473 = shl i64 %cz469, 29
  %vs474 = shl i64 %vz470, 28
  %nzor475 = or i64 %ns471, %zs472
  %cvor476 = or i64 %cs473, %vs474
  %nzcv477 = or i64 %nzor475, %cvor476
  %wp478 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv477, ptr %wp478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d924 word 0x540008e1
  %r479.p = getelementptr inbounds i8, ptr %c, i64 272
  %r479 = load i64, ptr %r479.p, align 8, !alias.scope !3, !noalias !4
  %fsh481 = lshr i64 %r479, 30
  %ftr482 = trunc i64 %fsh481 to i1
  %cond480 = xor i1 %ftr482, true
  br i1 %cond480, label %L_80084da40, label %L_80084d928_ft
L_80084d928_ft:
  ; @pc 0x80084d928 word 0xb94082a8
  %r483.p = getelementptr inbounds i8, ptr %c, i64 168
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %t484 = add i64 %r483, 128
  %gmp485 = inttoptr i64 %t484 to ptr
  %gml486 = load i32, ptr %gmp485, align 1, !alias.scope !4, !noalias !3
  %c487 = zext i32 %gml486 to i64
  %wp488 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c487, ptr %wp488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d92c word 0x7100051f
  %r489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %c490 = trunc i64 %r489 to i32
  %t491 = sub i32 %c490, 1
  %fn492 = icmp slt i32 %t491, 0
  %fz493 = icmp eq i32 %t491, 0
  %fc494 = icmp uge i32 %c490, 1
  %fx1495 = xor i32 %c490, 1
  %fx2496 = xor i32 %c490, %t491
  %fva497 = and i32 %fx1495, %fx2496
  %fv498 = icmp slt i32 %fva497, 0
  %nz499 = zext i1 %fn492 to i64
  %zz500 = zext i1 %fz493 to i64
  %cz501 = zext i1 %fc494 to i64
  %vz502 = zext i1 %fv498 to i64
  %ns503 = shl i64 %nz499, 31
  %zs504 = shl i64 %zz500, 30
  %cs505 = shl i64 %cz501, 29
  %vs506 = shl i64 %vz502, 28
  %nzor507 = or i64 %ns503, %zs504
  %cvor508 = or i64 %cs505, %vs506
  %nzcv509 = or i64 %nzor507, %cvor508
  %wp510 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv509, ptr %wp510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d930 word 0xf94016a9
  %r511.p = getelementptr inbounds i8, ptr %c, i64 168
  %r511 = load i64, ptr %r511.p, align 8, !alias.scope !3, !noalias !4
  %t512 = add i64 %r511, 40
  %gmp513 = inttoptr i64 %t512 to ptr
  %gml514 = load i64, ptr %gmp513, align 1, !alias.scope !4, !noalias !3
  %wp515 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml514, ptr %wp515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d934 word 0x54000b81
  %r516.p = getelementptr inbounds i8, ptr %c, i64 272
  %r516 = load i64, ptr %r516.p, align 8, !alias.scope !3, !noalias !4
  %fsh518 = lshr i64 %r516, 30
  %ftr519 = trunc i64 %fsh518 to i1
  %cond517 = xor i1 %ftr519, true
  br i1 %cond517, label %L_80084daa4, label %L_80084d938_ft
L_80084d938_ft:
  ; @pc 0x80084d938 word 0xf9401aa8
  %r520.p = getelementptr inbounds i8, ptr %c, i64 168
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %t521 = add i64 %r520, 48
  %gmp522 = inttoptr i64 %t521 to ptr
  %gml523 = load i64, ptr %gmp522, align 1, !alias.scope !4, !noalias !3
  %wp524 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml523, ptr %wp524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d93c word 0x9103812a
  %r525.p = getelementptr inbounds i8, ptr %c, i64 72
  %r525 = load i64, ptr %r525.p, align 8, !alias.scope !3, !noalias !4
  %t526 = add i64 %r525, 224
  %wp527 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t526, ptr %wp527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d940 word 0x8b090108
  %r528.p = getelementptr inbounds i8, ptr %c, i64 64
  %r528 = load i64, ptr %r528.p, align 8, !alias.scope !3, !noalias !4
  %r529.p = getelementptr inbounds i8, ptr %c, i64 72
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %t530 = add i64 %r528, %r529
  %wp531 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  br label %L_80084d944
L_80084d958_ft:
  ; @pc 0x80084d958 word 0x14000038
  br label %L_80084da38
L_80084d990_ft:
  ; @pc 0x80084d990 word 0xb4fffb33
  %r676.p = getelementptr inbounds i8, ptr %c, i64 152
  %r676 = load i64, ptr %r676.p, align 8, !alias.scope !3, !noalias !4
  %cmp677 = icmp eq i64 %r676, 0
  br i1 %cmp677, label %L_80084d8f4, label %L_80084d994_ft
L_80084d994_ft:
  ; @pc 0x80084d994 word 0xb940a83f
  %r678.p = getelementptr inbounds i8, ptr %c, i64 8
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %t679 = add i64 %r678, 168
  %gmp680 = inttoptr i64 %t679 to ptr
  %gml681 = load i32, ptr %gmp680, align 1, !alias.scope !4, !noalias !3
  %c682 = zext i32 %gml681 to i64
  ; @pc 0x80084d998 word 0x17ffffd7
  br label %L_80084d8f4
L_80084d9a4_ft:
  ; @pc 0x80084d9a4 word 0xeb18029f
  %r688.p = getelementptr inbounds i8, ptr %c, i64 160
  %r688 = load i64, ptr %r688.p, align 8, !alias.scope !3, !noalias !4
  %r689.p = getelementptr inbounds i8, ptr %c, i64 192
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
  ; @pc 0x80084d9a8 word 0x540008a0
  %r710.p = getelementptr inbounds i8, ptr %c, i64 272
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %fsh712 = lshr i64 %r710, 30
  %cond711 = trunc i64 %fsh712 to i1
  br i1 %cond711, label %L_80084dabc, label %L_80084d9ac_ft
L_80084d9ac_ft:
  ; @pc 0x80084d9ac word 0xb9405288
  %r713.p = getelementptr inbounds i8, ptr %c, i64 160
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %t714 = add i64 %r713, 80
  %gmp715 = inttoptr i64 %t714 to ptr
  %gml716 = load i32, ptr %gmp715, align 1, !alias.scope !4, !noalias !3
  %c717 = zext i32 %gml716 to i64
  %wp718 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c717, ptr %wp718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9b0 word 0x35000868
  %r719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r719 = load i64, ptr %r719.p, align 8, !alias.scope !3, !noalias !4
  %c720 = trunc i64 %r719 to i32
  %cmp721 = icmp ne i32 %c720, 0
  br i1 %cmp721, label %L_80084dabc, label %L_80084d9b4_ft
L_80084d9b4_ft:
  ; @pc 0x80084d9b4 word 0xf9400288
  %r722.p = getelementptr inbounds i8, ptr %c, i64 160
  %r722 = load i64, ptr %r722.p, align 8, !alias.scope !3, !noalias !4
  %gmp723 = inttoptr i64 %r722 to ptr
  %gml724 = load i64, ptr %gmp723, align 1, !alias.scope !4, !noalias !3
  %wp725 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml724, ptr %wp725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9b8 word 0xaa1403e0
  %r726.p = getelementptr inbounds i8, ptr %c, i64 160
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %t727 = or i64 0, %r726
  %wp728 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t727, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9bc word 0xaa1303e1
  %r729.p = getelementptr inbounds i8, ptr %c, i64 152
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %t730 = or i64 0, %r729
  %wp731 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t730, ptr %wp731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9c0 word 0xf9404908
  %r732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %t733 = add i64 %r732, 144
  %gmp734 = inttoptr i64 %t733 to ptr
  %gml735 = load i64, ptr %gmp734, align 1, !alias.scope !4, !noalias !3
  %wp736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml735, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9c4 word 0xd63f0100
  %r737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %fp738 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r737, ptr %fp738, align 8, !alias.scope !3, !noalias !4
  %wp739 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368444872, ptr %wp739, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80084d9c8 word 0x36000780
  %r740.p = getelementptr inbounds i8, ptr %c, i64 0
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %t741 = and i64 %r740, 1
  %cmp742 = icmp eq i64 %t741, 0
  br i1 %cmp742, label %L_80084dab8, label %L_80084d9cc_ft
L_80084d9cc_ft:
  ; @pc 0x80084d9cc word 0x3707f7f6
  %r743.p = getelementptr inbounds i8, ptr %c, i64 176
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %t744 = and i64 %r743, 1
  %cmp745 = icmp ne i64 %t744, 0
  br i1 %cmp745, label %L_80084d8c8, label %L_80084d9d0_ft
L_80084d9d0_ft:
  ; @pc 0x80084d9d0 word 0xf90002f4
  %r746.p = getelementptr inbounds i8, ptr %c, i64 184
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %r747.p = getelementptr inbounds i8, ptr %c, i64 160
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %gmp748 = inttoptr i64 %r746 to ptr
  store i64 %r747, ptr %gmp748, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80084d9d4 word 0x17ffffbd
  br label %L_80084d8c8
L_80084d9e8_ft:
  ; @pc 0x80084d9e8 word 0xaa0103e0
  %r778.p = getelementptr inbounds i8, ptr %c, i64 8
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %t779 = or i64 0, %r778
  %wp780 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t779, ptr %wp780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084d9ec word 0x17ffffdd
  br label %L_80084d960
L_80084da00_ft:
  ; @pc 0x80084da00 word 0xf9401aa9
  %r818.p = getelementptr inbounds i8, ptr %c, i64 168
  %r818 = load i64, ptr %r818.p, align 8, !alias.scope !3, !noalias !4
  %t819 = add i64 %r818, 48
  %gmp820 = inttoptr i64 %t819 to ptr
  %gml821 = load i64, ptr %gmp820, align 1, !alias.scope !4, !noalias !3
  %wp822 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da04 word 0x9103010a
  %r823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %t824 = add i64 %r823, 192
  %wp825 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t824, ptr %wp825, align 8, !alias.scope !3, !noalias !4
  br label %L_80084da08
L_80084da10_ft:
  ; @pc 0x80084da10 word 0x8b080128
  %r855.p = getelementptr inbounds i8, ptr %c, i64 72
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %r856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r856 = load i64, ptr %r856.p, align 8, !alias.scope !3, !noalias !4
  %t857 = add i64 %r855, %r856
  %wp858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t857, ptr %wp858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084da14 word 0x17ffffce
  br label %L_80084d94c
L_80084da54_ft:
  ; @pc 0x80084da54 word 0x17fffff9
  br label %L_80084da38
L_80084dacc_ft:
  ; @pc 0x80084dacc word 0xf94002f5
  %r989.p = getelementptr inbounds i8, ptr %c, i64 184
  %r989 = load i64, ptr %r989.p, align 8, !alias.scope !3, !noalias !4
  %gmp990 = inttoptr i64 %r989 to ptr
  %gml991 = load i64, ptr %gmp990, align 1, !alias.scope !4, !noalias !3
  %wp992 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml991, ptr %wp992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dad0 word 0xb4000075
  %r993.p = getelementptr inbounds i8, ptr %c, i64 168
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %cmp994 = icmp eq i64 %r993, 0
  br i1 %cmp994, label %L_80084dadc, label %L_80084dad4_ft
L_80084dad4_ft:
  ; @pc 0x80084dad4 word 0xeb15031f
  %r995.p = getelementptr inbounds i8, ptr %c, i64 192
  %r995 = load i64, ptr %r995.p, align 8, !alias.scope !3, !noalias !4
  %r996.p = getelementptr inbounds i8, ptr %c, i64 168
  %r996 = load i64, ptr %r996.p, align 8, !alias.scope !3, !noalias !4
  %t997 = sub i64 %r995, %r996
  %fn998 = icmp slt i64 %t997, 0
  %fz999 = icmp eq i64 %t997, 0
  %fc1000 = icmp uge i64 %r995, %r996
  %fx11001 = xor i64 %r995, %r996
  %fx21002 = xor i64 %r995, %t997
  %fva1003 = and i64 %fx11001, %fx21002
  %fv1004 = icmp slt i64 %fva1003, 0
  %nz1005 = zext i1 %fn998 to i64
  %zz1006 = zext i1 %fz999 to i64
  %cz1007 = zext i1 %fc1000 to i64
  %vz1008 = zext i1 %fv1004 to i64
  %ns1009 = shl i64 %nz1005, 31
  %zs1010 = shl i64 %zz1006, 30
  %cs1011 = shl i64 %cz1007, 29
  %vs1012 = shl i64 %vz1008, 28
  %nzor1013 = or i64 %ns1009, %zs1010
  %cvor1014 = or i64 %cs1011, %vs1012
  %nzcv1015 = or i64 %nzor1013, %cvor1014
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1015, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dad8 word 0x540005c1
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %fsh1019 = lshr i64 %r1017, 30
  %ftr1020 = trunc i64 %fsh1019 to i1
  %cond1018 = xor i1 %ftr1020, true
  br i1 %cond1018, label %L_80084db90, label %L_80084dadc
L_80084dae0_ft:
  ; @pc 0x80084dae0 word 0xeb18029f
  %r1023.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1023 = load i64, ptr %r1023.p, align 8, !alias.scope !3, !noalias !4
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = sub i64 %r1023, %r1024
  %fn1026 = icmp slt i64 %t1025, 0
  %fz1027 = icmp eq i64 %t1025, 0
  %fc1028 = icmp uge i64 %r1023, %r1024
  %fx11029 = xor i64 %r1023, %r1024
  %fx21030 = xor i64 %r1023, %t1025
  %fva1031 = and i64 %fx11029, %fx21030
  %fv1032 = icmp slt i64 %fva1031, 0
  %nz1033 = zext i1 %fn1026 to i64
  %zz1034 = zext i1 %fz1027 to i64
  %cz1035 = zext i1 %fc1028 to i64
  %vz1036 = zext i1 %fv1032 to i64
  %ns1037 = shl i64 %nz1033, 31
  %zs1038 = shl i64 %zz1034, 30
  %cs1039 = shl i64 %cz1035, 29
  %vs1040 = shl i64 %vz1036, 28
  %nzor1041 = or i64 %ns1037, %zs1038
  %cvor1042 = or i64 %cs1039, %vs1040
  %nzcv1043 = or i64 %nzor1041, %cvor1042
  %wp1044 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1043, ptr %wp1044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dae4 word 0x540009c1
  %r1045.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1045 = load i64, ptr %r1045.p, align 8, !alias.scope !3, !noalias !4
  %fsh1047 = lshr i64 %r1045, 30
  %ftr1048 = trunc i64 %fsh1047 to i1
  %cond1046 = xor i1 %ftr1048, true
  br i1 %cond1046, label %L_80084dc1c, label %L_80084dae8
L_80084daf8_ft:
  ; @pc 0x80084daf8 word 0xf9400534
  %r1061.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1061 = load i64, ptr %r1061.p, align 8, !alias.scope !3, !noalias !4
  %t1062 = add i64 %r1061, 8
  %gmp1063 = inttoptr i64 %t1062 to ptr
  %gml1064 = load i64, ptr %gmp1063, align 1, !alias.scope !4, !noalias !3
  %wp1065 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1064, ptr %wp1065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dafc word 0xd37df118
  %r1066.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1066 = load i64, ptr %r1066.p, align 8, !alias.scope !3, !noalias !4
  %ror1067 = call i64 @llvm.fshr.i64(i64 %r1066, i64 %r1066, i64 61)
  %t1068 = and i64 %ror1067, -8
  %wp1069 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1068, ptr %wp1069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db00 word 0x37000676
  %r1070.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1070 = load i64, ptr %r1070.p, align 8, !alias.scope !3, !noalias !4
  %t1071 = and i64 %r1070, 1
  %cmp1072 = icmp ne i64 %t1071, 0
  br i1 %cmp1072, label %L_80084dbcc, label %L_80084db04
L_80084db14_ft:
  ; @pc 0x80084db14 word 0xaa0003f5
  %r1083.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1083 = load i64, ptr %r1083.p, align 8, !alias.scope !3, !noalias !4
  %t1084 = or i64 0, %r1083
  %wp1085 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1084, ptr %wp1085, align 8, !alias.scope !3, !noalias !4
  br label %L_80084db18
L_80084db48_ft:
  ; @pc 0x80084db48 word 0xf9400514
  %r1135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1135 = load i64, ptr %r1135.p, align 8, !alias.scope !3, !noalias !4
  %t1136 = add i64 %r1135, 8
  %gmp1137 = inttoptr i64 %t1136 to ptr
  %gml1138 = load i64, ptr %gmp1137, align 1, !alias.scope !4, !noalias !3
  %wp1139 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1138, ptr %wp1139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db4c word 0x350007b6
  %r1140.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1140 = load i64, ptr %r1140.p, align 8, !alias.scope !3, !noalias !4
  %c1141 = trunc i64 %r1140 to i32
  %cmp1142 = icmp ne i32 %c1141, 0
  br i1 %cmp1142, label %L_80084dc40, label %L_80084db50_ft
L_80084db50_ft:
  ; @pc 0x80084db50 word 0xf9400280
  %r1143.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1143 = load i64, ptr %r1143.p, align 8, !alias.scope !3, !noalias !4
  %gmp1144 = inttoptr i64 %r1143 to ptr
  %gml1145 = load i64, ptr %gmp1144, align 1, !alias.scope !4, !noalias !3
  %wp1146 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1145, ptr %wp1146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db54 word 0xaa1303e1
  %r1147.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1147 = load i64, ptr %r1147.p, align 8, !alias.scope !3, !noalias !4
  %t1148 = or i64 0, %r1147
  %wp1149 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1148, ptr %wp1149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db58 word 0x97e90b59
  %wp1150 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445276, ptr %wp1150, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084db5c word 0xaa0003f5
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %t1152 = or i64 0, %r1151
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1152, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db60 word 0xb5fffdc0
  %r1154.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1154 = load i64, ptr %r1154.p, align 8, !alias.scope !3, !noalias !4
  %cmp1155 = icmp ne i64 %r1154, 0
  br i1 %cmp1155, label %L_80084db18, label %L_80084db64_ft
L_80084db64_ft:
  ; @pc 0x80084db64 word 0xd37df308
  %r1156.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1156 = load i64, ptr %r1156.p, align 8, !alias.scope !3, !noalias !4
  %ror1157 = call i64 @llvm.fshr.i64(i64 %r1156, i64 %r1156, i64 61)
  %t1158 = and i64 %ror1157, -8
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1158, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db68 word 0x91002294
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1160, 8
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db6c word 0xd1002118
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %t1164 = sub i64 %r1163, 8
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  br label %L_80084db70
L_80084db74_ft:
  ; @pc 0x80084db74 word 0xf8408680
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %t1169 = add i64 %r1168, 8
  %gmp1170 = inttoptr i64 %r1168 to ptr
  %gml1171 = load i64, ptr %gmp1170, align 1, !alias.scope !4, !noalias !3
  %wp1172 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1169, ptr %wp1172, align 8, !alias.scope !3, !noalias !4
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1171, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db78 word 0xaa1303e1
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %t1175 = or i64 0, %r1174
  %wp1176 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1175, ptr %wp1176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db7c word 0x97e90b50
  %wp1177 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445312, ptr %wp1177, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084db80 word 0xaa0003f5
  %r1178.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1178 = load i64, ptr %r1178.p, align 8, !alias.scope !3, !noalias !4
  %t1179 = or i64 0, %r1178
  %wp1180 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1179, ptr %wp1180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db84 word 0xd1002318
  %r1181.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1181 = load i64, ptr %r1181.p, align 8, !alias.scope !3, !noalias !4
  %t1182 = sub i64 %r1181, 8
  %wp1183 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1182, ptr %wp1183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084db88 word 0xb5fffc80
  %r1184.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1184 = load i64, ptr %r1184.p, align 8, !alias.scope !3, !noalias !4
  %cmp1185 = icmp ne i64 %r1184, 0
  br i1 %cmp1185, label %L_80084db18, label %L_80084db8c_ft
L_80084db8c_ft:
  ; @pc 0x80084db8c word 0x17fffff9
  br label %L_80084db70
L_80084dba4_ft:
  ; @pc 0x80084dba4 word 0xeb15001f
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %t1200 = sub i64 %r1198, %r1199
  %fn1201 = icmp slt i64 %t1200, 0
  %fz1202 = icmp eq i64 %t1200, 0
  %fc1203 = icmp uge i64 %r1198, %r1199
  %fx11204 = xor i64 %r1198, %r1199
  %fx21205 = xor i64 %r1198, %t1200
  %fva1206 = and i64 %fx11204, %fx21205
  %fv1207 = icmp slt i64 %fva1206, 0
  %nz1208 = zext i1 %fn1201 to i64
  %zz1209 = zext i1 %fz1202 to i64
  %cz1210 = zext i1 %fc1203 to i64
  %vz1211 = zext i1 %fv1207 to i64
  %ns1212 = shl i64 %nz1208, 31
  %zs1213 = shl i64 %zz1209, 30
  %cs1214 = shl i64 %cz1210, 29
  %vs1215 = shl i64 %vz1211, 28
  %nzor1216 = or i64 %ns1212, %zs1213
  %cvor1217 = or i64 %cs1214, %vs1215
  %nzcv1218 = or i64 %nzor1216, %cvor1217
  %wp1219 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1218, ptr %wp1219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dba8 word 0x54fffba0
  %r1220.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1220 = load i64, ptr %r1220.p, align 8, !alias.scope !3, !noalias !4
  %fsh1222 = lshr i64 %r1220, 30
  %cond1221 = trunc i64 %fsh1222 to i1
  br i1 %cond1221, label %L_80084db1c, label %L_80084dbac_ft
L_80084dbac_ft:
  ; @pc 0x80084dbac word 0xf90002e0
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %gmp1225 = inttoptr i64 %r1223 to ptr
  store i64 %r1224, ptr %gmp1225, align 1, !alias.scope !4, !noalias !3
  br label %L_80084dbb0
L_80084dbbc_ft:
  ; @pc 0x80084dbbc word 0xf9405820
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %t1232 = add i64 %r1231, 176
  %gmp1233 = inttoptr i64 %t1232 to ptr
  %gml1234 = load i64, ptr %gmp1233, align 1, !alias.scope !4, !noalias !3
  %wp1235 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1234, ptr %wp1235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbc0 word 0xf9400008
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %gmp1237 = inttoptr i64 %r1236 to ptr
  %gml1238 = load i64, ptr %gmp1237, align 1, !alias.scope !4, !noalias !3
  %wp1239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1238, ptr %wp1239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbc4 word 0xf9402102
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = add i64 %r1240, 64
  %gmp1242 = inttoptr i64 %t1241 to ptr
  %gml1243 = load i64, ptr %gmp1242, align 1, !alias.scope !4, !noalias !3
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbc8 word 0x17ffff66
  br label %L_80084d960
L_80084dbdc_ft:
  ; @pc 0x80084dbdc word 0x91002294
  %r1255.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1255 = load i64, ptr %r1255.p, align 8, !alias.scope !3, !noalias !4
  %t1256 = add i64 %r1255, 8
  %wp1257 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1256, ptr %wp1257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbe0 word 0xf1002318
  %r1258.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1258 = load i64, ptr %r1258.p, align 8, !alias.scope !3, !noalias !4
  %t1259 = sub i64 %r1258, 8
  %fn1260 = icmp slt i64 %t1259, 0
  %fz1261 = icmp eq i64 %t1259, 0
  %fc1262 = icmp uge i64 %r1258, 8
  %fx11263 = xor i64 %r1258, 8
  %fx21264 = xor i64 %r1258, %t1259
  %fva1265 = and i64 %fx11263, %fx21264
  %fv1266 = icmp slt i64 %fva1265, 0
  %nz1267 = zext i1 %fn1260 to i64
  %zz1268 = zext i1 %fz1261 to i64
  %cz1269 = zext i1 %fc1262 to i64
  %vz1270 = zext i1 %fv1266 to i64
  %ns1271 = shl i64 %nz1267, 31
  %zs1272 = shl i64 %zz1268, 30
  %cs1273 = shl i64 %cz1269, 29
  %vs1274 = shl i64 %vz1270, 28
  %nzor1275 = or i64 %ns1271, %zs1272
  %cvor1276 = or i64 %cs1273, %vs1274
  %nzcv1277 = or i64 %nzor1275, %cvor1276
  %wp1278 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1277, ptr %wp1278, align 8, !alias.scope !3, !noalias !4
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1259, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dbe4 word 0x54ffff41
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %fsh1282 = lshr i64 %r1280, 30
  %ftr1283 = trunc i64 %fsh1282 to i1
  %cond1281 = xor i1 %ftr1283, true
  br i1 %cond1281, label %L_80084dbcc, label %L_80084dbe8_ft
L_80084dbe8_ft:
  ; @pc 0x80084dbe8 word 0x17ffffd4
  br label %L_80084db38
L_80084dc00_ft:
  ; @pc 0x80084dc00 word 0xf9400109
  %r1345.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1345 = load i64, ptr %r1345.p, align 8, !alias.scope !3, !noalias !4
  %gmp1346 = inttoptr i64 %r1345 to ptr
  %gml1347 = load i64, ptr %gmp1346, align 1, !alias.scope !4, !noalias !3
  %wp1348 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1347, ptr %wp1348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc04 word 0x8b080129
  %r1349.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1349 = load i64, ptr %r1349.p, align 8, !alias.scope !3, !noalias !4
  %r1350.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1350 = load i64, ptr %r1350.p, align 8, !alias.scope !3, !noalias !4
  %t1351 = add i64 %r1349, %r1350
  %wp1352 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1351, ptr %wp1352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc08 word 0xeb13013f
  %r1353.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1353 = load i64, ptr %r1353.p, align 8, !alias.scope !3, !noalias !4
  %r1354.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1354 = load i64, ptr %r1354.p, align 8, !alias.scope !3, !noalias !4
  %t1355 = sub i64 %r1353, %r1354
  %fn1356 = icmp slt i64 %t1355, 0
  %fz1357 = icmp eq i64 %t1355, 0
  %fc1358 = icmp uge i64 %r1353, %r1354
  %fx11359 = xor i64 %r1353, %r1354
  %fx21360 = xor i64 %r1353, %t1355
  %fva1361 = and i64 %fx11359, %fx21360
  %fv1362 = icmp slt i64 %fva1361, 0
  %nz1363 = zext i1 %fn1356 to i64
  %zz1364 = zext i1 %fz1357 to i64
  %cz1365 = zext i1 %fc1358 to i64
  %vz1366 = zext i1 %fv1362 to i64
  %ns1367 = shl i64 %nz1363, 31
  %zs1368 = shl i64 %zz1364, 30
  %cs1369 = shl i64 %cz1365, 29
  %vs1370 = shl i64 %vz1366, 28
  %nzor1371 = or i64 %ns1367, %zs1368
  %cvor1372 = or i64 %cs1369, %vs1370
  %nzcv1373 = or i64 %nzor1371, %cvor1372
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1373, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc0c word 0x54000588
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %fsh1377 = lshr i64 %r1375, 29
  %ftr1378 = trunc i64 %fsh1377 to i1
  %fsh1379 = lshr i64 %r1375, 30
  %ftr1380 = trunc i64 %fsh1379 to i1
  %fnz1381 = xor i1 %ftr1380, true
  %cond1376 = and i1 %ftr1378, %fnz1381
  br i1 %cond1376, label %L_80084dcbc, label %L_80084dc10
L_80084dc18_ft:
  ; @pc 0x80084dc18 word 0x17fffff8
  br label %L_80084dbf8
L_80084dc38_ft:
  ; @pc 0x80084dc38 word 0xb5fff735
  %r1433.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1433 = load i64, ptr %r1433.p, align 8, !alias.scope !3, !noalias !4
  %cmp1434 = icmp ne i64 %r1433, 0
  br i1 %cmp1434, label %L_80084db1c, label %L_80084dc3c_ft
L_80084dc3c_ft:
  ; @pc 0x80084dc3c word 0x17ffffab
  br label %L_80084dae8
L_80084dc54_ft:
  ; @pc 0x80084dc54 word 0x91002294
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %t1450 = add i64 %r1449, 8
  %wp1451 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1450, ptr %wp1451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc58 word 0xf1002318
  %r1452.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1452 = load i64, ptr %r1452.p, align 8, !alias.scope !3, !noalias !4
  %t1453 = sub i64 %r1452, 8
  %fn1454 = icmp slt i64 %t1453, 0
  %fz1455 = icmp eq i64 %t1453, 0
  %fc1456 = icmp uge i64 %r1452, 8
  %fx11457 = xor i64 %r1452, 8
  %fx21458 = xor i64 %r1452, %t1453
  %fva1459 = and i64 %fx11457, %fx21458
  %fv1460 = icmp slt i64 %fva1459, 0
  %nz1461 = zext i1 %fn1454 to i64
  %zz1462 = zext i1 %fz1455 to i64
  %cz1463 = zext i1 %fc1456 to i64
  %vz1464 = zext i1 %fv1460 to i64
  %ns1465 = shl i64 %nz1461, 31
  %zs1466 = shl i64 %zz1462, 30
  %cs1467 = shl i64 %cz1463, 29
  %vs1468 = shl i64 %vz1464, 28
  %nzor1469 = or i64 %ns1465, %zs1466
  %cvor1470 = or i64 %cs1467, %vs1468
  %nzcv1471 = or i64 %nzor1469, %cvor1470
  %wp1472 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1471, ptr %wp1472, align 8, !alias.scope !3, !noalias !4
  %wp1473 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1453, ptr %wp1473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc5c word 0x54ffff41
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %fsh1476 = lshr i64 %r1474, 30
  %ftr1477 = trunc i64 %fsh1476 to i1
  %cond1475 = xor i1 %ftr1477, true
  br i1 %cond1475, label %L_80084dc44, label %L_80084dc60
L_80084dc70_ft:
  ; @pc 0x80084dc70 word 0xaa1303e1
  %r1488.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1488 = load i64, ptr %r1488.p, align 8, !alias.scope !3, !noalias !4
  %t1489 = or i64 0, %r1488
  %wp1490 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1489, ptr %wp1490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc74 word 0x97e90b12
  %wp1491 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34368445560, ptr %wp1491, align 8, !alias.scope !3, !noalias !4
  call void @f_8002908bc(ptr %c)
  ; @pc 0x80084dc78 word 0xf100001f
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %t1493 = sub i64 %r1492, 0
  %fn1494 = icmp slt i64 %t1493, 0
  %fz1495 = icmp eq i64 %t1493, 0
  %fc1496 = icmp uge i64 %r1492, 0
  %fx11497 = xor i64 %r1492, 0
  %fx21498 = xor i64 %r1492, %t1493
  %fva1499 = and i64 %fx11497, %fx21498
  %fv1500 = icmp slt i64 %fva1499, 0
  %nz1501 = zext i1 %fn1494 to i64
  %zz1502 = zext i1 %fz1495 to i64
  %cz1503 = zext i1 %fc1496 to i64
  %vz1504 = zext i1 %fv1500 to i64
  %ns1505 = shl i64 %nz1501, 31
  %zs1506 = shl i64 %zz1502, 30
  %cs1507 = shl i64 %cz1503, 29
  %vs1508 = shl i64 %vz1504, 28
  %nzor1509 = or i64 %ns1505, %zs1506
  %cvor1510 = or i64 %cs1507, %vs1508
  %nzcv1511 = or i64 %nzor1509, %cvor1510
  %wp1512 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1511, ptr %wp1512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc7c word 0xaa0003f5
  %r1513.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1513 = load i64, ptr %r1513.p, align 8, !alias.scope !3, !noalias !4
  %t1514 = or i64 0, %r1513
  %wp1515 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1514, ptr %wp1515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc80 word 0x1a9f16c8
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %c1517 = trunc i64 %r1516 to i32
  %t1518 = add i32 0, 1
  %r1519.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1519 = load i64, ptr %r1519.p, align 8, !alias.scope !3, !noalias !4
  %fsh1521 = lshr i64 %r1519, 30
  %ftr1522 = trunc i64 %fsh1521 to i1
  %cond1520 = xor i1 %ftr1522, true
  %sel1523 = select i1 %cond1520, i32 %c1517, i32 %t1518
  %c1524 = zext i32 %sel1523 to i64
  %wp1525 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1524, ptr %wp1525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dc84 word 0x3607f4a8
  %r1526.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1526 = load i64, ptr %r1526.p, align 8, !alias.scope !3, !noalias !4
  %t1527 = and i64 %r1526, 1
  %cmp1528 = icmp eq i64 %t1527, 0
  br i1 %cmp1528, label %L_80084db18, label %L_80084dc88_ft
L_80084dc88_ft:
  ; @pc 0x80084dc88 word 0xb5fff4b5
  %r1529.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1529 = load i64, ptr %r1529.p, align 8, !alias.scope !3, !noalias !4
  %cmp1530 = icmp ne i64 %r1529, 0
  br i1 %cmp1530, label %L_80084db1c, label %L_80084dc8c
L_80084dca4_ft:
  ; @pc 0x80084dca4 word 0xcb0a0129
  %r1572.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1572 = load i64, ptr %r1572.p, align 8, !alias.scope !3, !noalias !4
  %r1573.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1573 = load i64, ptr %r1573.p, align 8, !alias.scope !3, !noalias !4
  %t1574 = sub i64 %r1572, %r1573
  %wp1575 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1574, ptr %wp1575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dca8 word 0xeb13013f
  %r1576.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1576 = load i64, ptr %r1576.p, align 8, !alias.scope !3, !noalias !4
  %r1577.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1577 = load i64, ptr %r1577.p, align 8, !alias.scope !3, !noalias !4
  %t1578 = sub i64 %r1576, %r1577
  %fn1579 = icmp slt i64 %t1578, 0
  %fz1580 = icmp eq i64 %t1578, 0
  %fc1581 = icmp uge i64 %r1576, %r1577
  %fx11582 = xor i64 %r1576, %r1577
  %fx21583 = xor i64 %r1576, %t1578
  %fva1584 = and i64 %fx11582, %fx21583
  %fv1585 = icmp slt i64 %fva1584, 0
  %nz1586 = zext i1 %fn1579 to i64
  %zz1587 = zext i1 %fz1580 to i64
  %cz1588 = zext i1 %fc1581 to i64
  %vz1589 = zext i1 %fv1585 to i64
  %ns1590 = shl i64 %nz1586, 31
  %zs1591 = shl i64 %zz1587, 30
  %cs1592 = shl i64 %cz1588, 29
  %vs1593 = shl i64 %vz1589, 28
  %nzor1594 = or i64 %ns1590, %zs1591
  %cvor1595 = or i64 %cs1592, %vs1593
  %nzcv1596 = or i64 %nzor1594, %cvor1595
  %wp1597 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1596, ptr %wp1597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80084dcac word 0x54000089
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %fsh1600 = lshr i64 %r1598, 29
  %ftr1601 = trunc i64 %fsh1600 to i1
  %fsh1602 = lshr i64 %r1598, 30
  %ftr1603 = trunc i64 %fsh1602 to i1
  %fnz1604 = xor i1 %ftr1603, true
  %fhi1605 = and i1 %ftr1601, %fnz1604
  %cond1599 = xor i1 %fhi1605, true
  br i1 %cond1599, label %L_80084dcbc, label %L_80084dcb0
L_80084dcb8_ft:
  ; @pc 0x80084dcb8 word 0x17fffff7
  br label %L_80084dc94
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
