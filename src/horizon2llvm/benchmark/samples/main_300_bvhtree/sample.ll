; UltraTears chunk main_300_bvhtree: 2 functions [0x8004e71b0..0x8004e9400)
; ModuleID = 'main_300_bvhtree_raw'
source_filename = "main_300_bvhtree_raw"
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

declare dso_local void @f_80009bf90(ptr)
declare dso_local void @f_80009bf94(ptr)
declare dso_local void @f_8004e7bd0(ptr)
declare dso_local void @f_801c1ed1c(ptr)
declare dso_local void @f_8027e47f8(ptr)

define dso_local void @f_8004e71b0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8004e71b0:
  ; @pc 0x8004e71b0 word 0xd10283ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 160
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71b4 word 0xa9057bfd
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
  ; @pc 0x8004e71b8 word 0xa90667fa
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 96
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 208
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 200
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e71bc word 0xa9075ff8
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 112
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 192
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 184
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e71c0 word 0xa90857f6
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 128
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 176
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 168
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e71c4 word 0xa9094ff4
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 144
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 160
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 152
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e71c8 word 0x910143fd
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 80
  %wp45 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t44, ptr %wp45, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71cc word 0xb4002ac2
  %r46.p = getelementptr inbounds i8, ptr %c, i64 16
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %cmp47 = icmp eq i64 %r46, 0
  br i1 %cmp47, label %L_8004e7724, label %L_8004e71d0_ft
L_8004e7204:
  ; @pc 0x8004e7204 word 0xf9400134
  %r109.p = getelementptr inbounds i8, ptr %c, i64 72
  %r109 = load i64, ptr %r109.p, align 8, !alias.scope !3, !noalias !4
  %gmp110 = inttoptr i64 %r109 to ptr
  %gml111 = load i64, ptr %gmp110, align 1, !alias.scope !4, !noalias !3
  %wp112 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml111, ptr %wp112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7208 word 0x3940028b
  %r113.p = getelementptr inbounds i8, ptr %c, i64 160
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %gmp114 = inttoptr i64 %r113 to ptr
  %gml115 = load i8, ptr %gmp114, align 1, !alias.scope !4, !noalias !3
  %c116 = zext i8 %gml115 to i64
  %wp117 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e720c word 0x35002c8b
  %r118.p = getelementptr inbounds i8, ptr %c, i64 88
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %c119 = trunc i64 %r118 to i32
  %cmp120 = icmp ne i32 %c119, 0
  br i1 %cmp120, label %L_8004e779c, label %L_8004e7210
L_8004e7210:
  ; @pc 0x8004e7210 word 0xf9400849
  %r121.p = getelementptr inbounds i8, ptr %c, i64 16
  %r121 = load i64, ptr %r121.p, align 8, !alias.scope !3, !noalias !4
  %t122 = add i64 %r121, 16
  %gmp123 = inttoptr i64 %t122 to ptr
  %gml124 = load i64, ptr %gmp123, align 1, !alias.scope !4, !noalias !3
  %wp125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7214 word 0xf100013f
  %r126.p = getelementptr inbounds i8, ptr %c, i64 72
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = sub i64 %r126, 0
  %fn128 = icmp slt i64 %t127, 0
  %fz129 = icmp eq i64 %t127, 0
  %fc130 = icmp uge i64 %r126, 0
  %fx1131 = xor i64 %r126, 0
  %fx2132 = xor i64 %r126, %t127
  %fva133 = and i64 %fx1131, %fx2132
  %fv134 = icmp slt i64 %fva133, 0
  %nz135 = zext i1 %fn128 to i64
  %zz136 = zext i1 %fz129 to i64
  %cz137 = zext i1 %fc130 to i64
  %vz138 = zext i1 %fv134 to i64
  %ns139 = shl i64 %nz135, 31
  %zs140 = shl i64 %zz136, 30
  %cs141 = shl i64 %cz137, 29
  %vs142 = shl i64 %vz138, 28
  %nzor143 = or i64 %ns139, %zs140
  %cvor144 = or i64 %cs141, %vs142
  %nzcv145 = or i64 %nzor143, %cvor144
  %wp146 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv145, ptr %wp146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7218 word 0x9a890108
  %r147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %r148.p = getelementptr inbounds i8, ptr %c, i64 72
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %r149.p = getelementptr inbounds i8, ptr %c, i64 272
  %r149 = load i64, ptr %r149.p, align 8, !alias.scope !3, !noalias !4
  %fsh151 = lshr i64 %r149, 30
  %cond150 = trunc i64 %fsh151 to i1
  %sel152 = select i1 %cond150, i64 %r147, i64 %r148
  %wp153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e721c
L_8004e721c:
  ; @pc 0x8004e721c word 0x39400109
  %r154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %gmp155 = inttoptr i64 %r154 to ptr
  %gml156 = load i8, ptr %gmp155, align 1, !alias.scope !4, !noalias !3
  %c157 = zext i8 %gml156 to i64
  %wp158 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c157, ptr %wp158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7220 word 0x12000d2a
  %r159.p = getelementptr inbounds i8, ptr %c, i64 72
  %r159 = load i64, ptr %r159.p, align 8, !alias.scope !3, !noalias !4
  %c160 = trunc i64 %r159 to i32
  %t161 = and i32 %c160, 15
  %c162 = zext i32 %t161 to i64
  %wp163 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c162, ptr %wp163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7224 word 0x6b03015f
  %r164.p = getelementptr inbounds i8, ptr %c, i64 80
  %r164 = load i64, ptr %r164.p, align 8, !alias.scope !3, !noalias !4
  %c165 = trunc i64 %r164 to i32
  %r166.p = getelementptr inbounds i8, ptr %c, i64 24
  %r166 = load i64, ptr %r166.p, align 8, !alias.scope !3, !noalias !4
  %c167 = trunc i64 %r166 to i32
  %t168 = sub i32 %c165, %c167
  %fn169 = icmp slt i32 %t168, 0
  %fz170 = icmp eq i32 %t168, 0
  %fc171 = icmp uge i32 %c165, %c167
  %fx1172 = xor i32 %c165, %c167
  %fx2173 = xor i32 %c165, %t168
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
  ; @pc 0x8004e7228 word 0x540027a8
  %r188.p = getelementptr inbounds i8, ptr %c, i64 272
  %r188 = load i64, ptr %r188.p, align 8, !alias.scope !3, !noalias !4
  %fsh190 = lshr i64 %r188, 29
  %ftr191 = trunc i64 %fsh190 to i1
  %fsh192 = lshr i64 %r188, 30
  %ftr193 = trunc i64 %fsh192 to i1
  %fnz194 = xor i1 %ftr193, true
  %cond189 = and i1 %ftr191, %fnz194
  br i1 %cond189, label %L_8004e771c, label %L_8004e722c_ft
L_8004e7280:
  ; @pc 0x8004e7280 word 0x1200056d
  %r264.p = getelementptr inbounds i8, ptr %c, i64 88
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %c265 = trunc i64 %r264 to i32
  %t266 = and i32 %c265, 3
  %c267 = zext i32 %t266 to i64
  %wp268 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7284 word 0x53027d6b
  %r269.p = getelementptr inbounds i8, ptr %c, i64 88
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %c270 = trunc i64 %r269 to i32
  %ror271 = call i32 @llvm.fshr.i32(i32 %c270, i32 %c270, i32 2)
  %t272 = and i32 %ror271, 1073741823
  %c273 = zext i32 %t272 to i64
  %wp274 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c273, ptr %wp274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7288 word 0x8b2d4d2d
  %r275.p = getelementptr inbounds i8, ptr %c, i64 72
  %r275 = load i64, ptr %r275.p, align 8, !alias.scope !3, !noalias !4
  %r276.p = getelementptr inbounds i8, ptr %c, i64 104
  %r276 = load i64, ptr %r276.p, align 8, !alias.scope !3, !noalias !4
  %c277 = trunc i64 %r276 to i32
  %c278 = zext i32 %c277 to i64
  %t279 = shl i64 %c278, 3
  %t280 = add i64 %r275, %t279
  %wp281 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t280, ptr %wp281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e728c word 0x7100058c
  %r282.p = getelementptr inbounds i8, ptr %c, i64 96
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %c283 = trunc i64 %r282 to i32
  %t284 = sub i32 %c283, 1
  %fn285 = icmp slt i32 %t284, 0
  %fz286 = icmp eq i32 %t284, 0
  %fc287 = icmp uge i32 %c283, 1
  %fx1288 = xor i32 %c283, 1
  %fx2289 = xor i32 %c283, %t284
  %fva290 = and i32 %fx1288, %fx2289
  %fv291 = icmp slt i32 %fva290, 0
  %nz292 = zext i1 %fn285 to i64
  %zz293 = zext i1 %fz286 to i64
  %cz294 = zext i1 %fc287 to i64
  %vz295 = zext i1 %fv291 to i64
  %ns296 = shl i64 %nz292, 31
  %zs297 = shl i64 %zz293, 30
  %cs298 = shl i64 %cz294, 29
  %vs299 = shl i64 %vz295, 28
  %nzor300 = or i64 %ns296, %zs297
  %cvor301 = or i64 %cs298, %vs299
  %nzcv302 = or i64 %nzor300, %cvor301
  %wp303 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv302, ptr %wp303, align 8, !alias.scope !3, !noalias !4
  %c304 = zext i32 %t284 to i64
  %wp305 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c304, ptr %wp305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7290 word 0x2d4015a1
  %r306.p = getelementptr inbounds i8, ptr %c, i64 104
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %t307 = add i64 %r306, 4
  %gmp308 = inttoptr i64 %r306 to ptr
  %gml309 = load i32, ptr %gmp308, align 1, !alias.scope !4, !noalias !3
  %gmp310 = inttoptr i64 %t307 to ptr
  %gml311 = load i32, ptr %gmp310, align 1, !alias.scope !4, !noalias !3
  %c312 = zext i32 %gml309 to i128
  %wp313 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c312, ptr %wp313, align 16, !alias.scope !3, !noalias !4
  %c314 = zext i32 %gml311 to i128
  %wp315 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c314, ptr %wp315, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7294 word 0x1e250805
  call void @rt_fp_op_s(ptr %c, i32 2, i32 5, i32 0, i32 5)
  ; @pc 0x8004e7298 word 0x1e210801
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 0, i32 1)
  ; @pc 0x8004e729c word 0x1e202800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 0)
  ; @pc 0x8004e72a0 word 0x1e252842
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 2, i32 5)
  ; @pc 0x8004e72a4 word 0x1e212884
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 4, i32 1)
  ; @pc 0x8004e72a8 word 0x54fffec1
  %r316.p = getelementptr inbounds i8, ptr %c, i64 272
  %r316 = load i64, ptr %r316.p, align 8, !alias.scope !3, !noalias !4
  %fsh318 = lshr i64 %r316, 30
  %ftr319 = trunc i64 %fsh318 to i1
  %cond317 = xor i1 %ftr319, true
  br i1 %cond317, label %L_8004e7280, label %L_8004e72ac
L_8004e72ac:
  ; @pc 0x8004e72ac word 0x2d470440
  %r320.p = getelementptr inbounds i8, ptr %c, i64 16
  %r320 = load i64, ptr %r320.p, align 8, !alias.scope !3, !noalias !4
  %t321 = add i64 %r320, 56
  %t322 = add i64 %t321, 4
  %gmp323 = inttoptr i64 %t321 to ptr
  %gml324 = load i32, ptr %gmp323, align 1, !alias.scope !4, !noalias !3
  %gmp325 = inttoptr i64 %t322 to ptr
  %gml326 = load i32, ptr %gmp325, align 1, !alias.scope !4, !noalias !3
  %c327 = zext i32 %gml324 to i128
  %wp328 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c327, ptr %wp328, align 16, !alias.scope !3, !noalias !4
  %c329 = zext i32 %gml326 to i128
  %wp330 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c329, ptr %wp330, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72b0 word 0x1e2c1005
  %wp331 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 1056964608, ptr %wp331, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72b4 word 0x2d401c26
  %r332.p = getelementptr inbounds i8, ptr %c, i64 8
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %t333 = add i64 %r332, 4
  %gmp334 = inttoptr i64 %r332 to ptr
  %gml335 = load i32, ptr %gmp334, align 1, !alias.scope !4, !noalias !3
  %gmp336 = inttoptr i64 %t333 to ptr
  %gml337 = load i32, ptr %gmp336, align 1, !alias.scope !4, !noalias !3
  %c338 = zext i32 %gml335 to i128
  %wp339 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c338, ptr %wp339, align 16, !alias.scope !3, !noalias !4
  %c340 = zext i32 %gml337 to i128
  %wp341 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c340, ptr %wp341, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72b8 word 0x14000011
  br label %L_8004e72fc
L_8004e72c0:
  ; @pc 0x8004e72c0 word 0x3940010b
  %r342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r342 = load i64, ptr %r342.p, align 8, !alias.scope !3, !noalias !4
  %gmp343 = inttoptr i64 %r342 to ptr
  %gml344 = load i8, ptr %gmp343, align 1, !alias.scope !4, !noalias !3
  %c345 = zext i8 %gml344 to i64
  %wp346 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c345, ptr %wp346, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e72c4
L_8004e72c4:
  ; @pc 0x8004e72c4 word 0x53047d6c
  %r347.p = getelementptr inbounds i8, ptr %c, i64 88
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %c348 = trunc i64 %r347 to i32
  %ror349 = call i32 @llvm.fshr.i32(i32 %c348, i32 %c348, i32 4)
  %t350 = and i32 %ror349, 268435455
  %c351 = zext i32 %t350 to i64
  %wp352 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c351, ptr %wp352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72c8 word 0x121b056b
  %r353.p = getelementptr inbounds i8, ptr %c, i64 88
  %r353 = load i64, ptr %r353.p, align 8, !alias.scope !3, !noalias !4
  %c354 = trunc i64 %r353 to i32
  %t355 = and i32 %c354, 96
  %c356 = zext i32 %t355 to i64
  %wp357 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c356, ptr %wp357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72cc word 0x1e232863
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 3, i32 3)
  ; @pc 0x8004e72d0 word 0x321f018c
  %r358.p = getelementptr inbounds i8, ptr %c, i64 96
  %r358 = load i64, ptr %r358.p, align 8, !alias.scope !3, !noalias !4
  %c359 = trunc i64 %r358 to i32
  %t360 = or i32 %c359, 2
  %c361 = zext i32 %t360 to i64
  %wp362 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c361, ptr %wp362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72d4 word 0xf9400d08
  %r363.p = getelementptr inbounds i8, ptr %c, i64 64
  %r363 = load i64, ptr %r363.p, align 8, !alias.scope !3, !noalias !4
  %t364 = add i64 %r363, 24
  %gmp365 = inttoptr i64 %t364 to ptr
  %gml366 = load i64, ptr %gmp365, align 1, !alias.scope !4, !noalias !3
  %wp367 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml366, ptr %wp367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72d8 word 0x5100054a
  %r368.p = getelementptr inbounds i8, ptr %c, i64 80
  %r368 = load i64, ptr %r368.p, align 8, !alias.scope !3, !noalias !4
  %c369 = trunc i64 %r368 to i32
  %t370 = sub i32 %c369, 1
  %c371 = zext i32 %t370 to i64
  %wp372 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c371, ptr %wp372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72dc word 0x1200098c
  %r373.p = getelementptr inbounds i8, ptr %c, i64 96
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %c374 = trunc i64 %r373 to i32
  %t375 = and i32 %c374, 7
  %c376 = zext i32 %t375 to i64
  %wp377 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c376, ptr %wp377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72e0 word 0x71000d9f
  %r378.p = getelementptr inbounds i8, ptr %c, i64 96
  %r378 = load i64, ptr %r378.p, align 8, !alias.scope !3, !noalias !4
  %c379 = trunc i64 %r378 to i32
  %t380 = sub i32 %c379, 3
  %fn381 = icmp slt i32 %t380, 0
  %fz382 = icmp eq i32 %t380, 0
  %fc383 = icmp uge i32 %c379, 3
  %fx1384 = xor i32 %c379, 3
  %fx2385 = xor i32 %c379, %t380
  %fva386 = and i32 %fx1384, %fx2385
  %fv387 = icmp slt i32 %fva386, 0
  %nz388 = zext i1 %fn381 to i64
  %zz389 = zext i1 %fz382 to i64
  %cz390 = zext i1 %fc383 to i64
  %vz391 = zext i1 %fv387 to i64
  %ns392 = shl i64 %nz388, 31
  %zs393 = shl i64 %zz389, 30
  %cs394 = shl i64 %cz390, 29
  %vs395 = shl i64 %vz391, 28
  %nzor396 = or i64 %ns392, %zs393
  %cvor397 = or i64 %cs394, %vs395
  %nzcv398 = or i64 %nzor396, %cvor397
  %wp399 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv398, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72e4 word 0x1e320e24
  %r400.p = getelementptr inbounds i8, ptr %c, i64 784
  %r400 = load i128, ptr %r400.p, align 16, !alias.scope !3, !noalias !4
  %c401 = trunc i128 %r400 to i32
  %r402.p = getelementptr inbounds i8, ptr %c, i64 800
  %r402 = load i128, ptr %r402.p, align 16, !alias.scope !3, !noalias !4
  %c403 = trunc i128 %r402 to i32
  %r404.p = getelementptr inbounds i8, ptr %c, i64 272
  %r404 = load i64, ptr %r404.p, align 8, !alias.scope !3, !noalias !4
  %fsh406 = lshr i64 %r404, 30
  %cond405 = trunc i64 %fsh406 to i1
  %sel407 = select i1 %cond405, i32 %c401, i32 %c403
  %c408 = zext i32 %sel407 to i128
  %wp409 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c408, ptr %wp409, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72e8 word 0x1e214211
  %r410.p = getelementptr inbounds i8, ptr %c, i64 768
  %r410 = load i128, ptr %r410.p, align 16, !alias.scope !3, !noalias !4
  %c411 = trunc i128 %r410 to i32
  %t412 = xor i32 %c411, -2147483648
  %c413 = zext i32 %t412 to i128
  %wp414 = getelementptr inbounds i8, ptr %c, i64 784
  store i128 %c413, ptr %wp414, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72ec word 0x7100817f
  %r415.p = getelementptr inbounds i8, ptr %c, i64 88
  %r415 = load i64, ptr %r415.p, align 8, !alias.scope !3, !noalias !4
  %c416 = trunc i64 %r415 to i32
  %t417 = sub i32 %c416, 32
  %fn418 = icmp slt i32 %t417, 0
  %fz419 = icmp eq i32 %t417, 0
  %fc420 = icmp uge i32 %c416, 32
  %fx1421 = xor i32 %c416, 32
  %fx2422 = xor i32 %c416, %t417
  %fva423 = and i32 %fx1421, %fx2422
  %fv424 = icmp slt i32 %fva423, 0
  %nz425 = zext i1 %fn418 to i64
  %zz426 = zext i1 %fz419 to i64
  %cz427 = zext i1 %fc420 to i64
  %vz428 = zext i1 %fv424 to i64
  %ns429 = shl i64 %nz425, 31
  %zs430 = shl i64 %zz426, 30
  %cs431 = shl i64 %cz427, 29
  %vs432 = shl i64 %vz428, 28
  %nzor433 = or i64 %ns429, %zs430
  %cvor434 = or i64 %cs431, %vs432
  %nzcv435 = or i64 %nzor433, %cvor434
  %wp436 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv435, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72f0 word 0x1e300e30
  %r437.p = getelementptr inbounds i8, ptr %c, i64 784
  %r437 = load i128, ptr %r437.p, align 16, !alias.scope !3, !noalias !4
  %c438 = trunc i128 %r437 to i32
  %r439.p = getelementptr inbounds i8, ptr %c, i64 768
  %r439 = load i128, ptr %r439.p, align 16, !alias.scope !3, !noalias !4
  %c440 = trunc i128 %r439 to i32
  %r441.p = getelementptr inbounds i8, ptr %c, i64 272
  %r441 = load i64, ptr %r441.p, align 8, !alias.scope !3, !noalias !4
  %fsh443 = lshr i64 %r441, 30
  %cond442 = trunc i64 %fsh443 to i1
  %sel444 = select i1 %cond442, i32 %c438, i32 %c440
  %c445 = zext i32 %sel444 to i128
  %wp446 = getelementptr inbounds i8, ptr %c, i64 768
  store i128 %c445, ptr %wp446, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e72f4 word 0x1e302842
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 2, i32 16)
  ; @pc 0x8004e72f8 word 0xb4002468
  %r447.p = getelementptr inbounds i8, ptr %c, i64 64
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %cmp448 = icmp eq i64 %r447, 0
  br i1 %cmp448, label %L_8004e7784, label %L_8004e72fc
L_8004e72fc:
  ; @pc 0x8004e72fc word 0x1e250870
  call void @rt_fp_op_s(ptr %c, i32 2, i32 16, i32 3, i32 5)
  ; @pc 0x8004e7300 word 0x1e303891
  call void @rt_fp_op_s(ptr %c, i32 1, i32 17, i32 4, i32 16)
  ; @pc 0x8004e7304 word 0x1e242a12
  call void @rt_fp_op_s(ptr %c, i32 0, i32 18, i32 16, i32 4)
  ; @pc 0x8004e7308 word 0x1e262220
  %fcmp449 = call i64 @rt_fp_cmp_s(ptr %c, i32 17, i32 6, i32 0)
  %wp450 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp449, ptr %wp450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e730c word 0x1e3294c0
  %r451.p = getelementptr inbounds i8, ptr %c, i64 272
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %fsh453 = lshr i64 %r451, 29
  %ftr454 = trunc i64 %fsh453 to i1
  %fsh455 = lshr i64 %r451, 30
  %ftr456 = trunc i64 %fsh455 to i1
  %fnz457 = xor i1 %ftr456, true
  %fhi458 = and i1 %ftr454, %fnz457
  %cond452 = xor i1 %fhi458, true
  %fccmp459 = call i64 @rt_fp_cmp_s(ptr %c, i32 6, i32 18, i32 0)
  %sel460 = select i1 %cond452, i64 %fccmp459, i64 0
  %wp461 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7310 word 0x54fffd85
  %r462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %fsh464 = lshr i64 %r462, 31
  %ftr465 = trunc i64 %fsh464 to i1
  %cond463 = xor i1 %ftr465, true
  br i1 %cond463, label %L_8004e72c0, label %L_8004e7314_ft
L_8004e733c:
  ; @pc 0x8004e733c word 0x1e2420c0
  %fcmp526 = call i64 @rt_fp_cmp_s(ptr %c, i32 6, i32 4, i32 0)
  %wp527 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp526, ptr %wp527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7340 word 0x1a9fb7ed
  %t528 = add i32 0, 1
  %r529.p = getelementptr inbounds i8, ptr %c, i64 272
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %fsh531 = lshr i64 %r529, 31
  %ftr532 = trunc i64 %fsh531 to i1
  %fsh533 = lshr i64 %r529, 28
  %ftr534 = trunc i64 %fsh533 to i1
  %cond530 = icmp ne i1 %ftr532, %ftr534
  %sel535 = select i1 %cond530, i32 0, i32 %t528
  %c536 = zext i32 %sel535 to i64
  %wp537 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c536, ptr %wp537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7344 word 0x1e2220e0
  %fcmp538 = call i64 @rt_fp_cmp_s(ptr %c, i32 7, i32 2, i32 0)
  %wp539 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp538, ptr %wp539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7348 word 0x1a9fb7ee
  %t540 = add i32 0, 1
  %r541.p = getelementptr inbounds i8, ptr %c, i64 272
  %r541 = load i64, ptr %r541.p, align 8, !alias.scope !3, !noalias !4
  %fsh543 = lshr i64 %r541, 31
  %ftr544 = trunc i64 %fsh543 to i1
  %fsh545 = lshr i64 %r541, 28
  %ftr546 = trunc i64 %fsh545 to i1
  %cond542 = icmp ne i1 %ftr544, %ftr546
  %sel547 = select i1 %cond542, i32 0, i32 %t540
  %c548 = zext i32 %sel547 to i64
  %wp549 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c548, ptr %wp549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e734c word 0xaa0e05ad
  %r550.p = getelementptr inbounds i8, ptr %c, i64 112
  %r550 = load i64, ptr %r550.p, align 8, !alias.scope !3, !noalias !4
  %t551 = shl i64 %r550, 1
  %r552.p = getelementptr inbounds i8, ptr %c, i64 104
  %r552 = load i64, ptr %r552.p, align 8, !alias.scope !3, !noalias !4
  %t553 = or i64 %r552, %t551
  %wp554 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t553, ptr %wp554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7350 word 0x8b0d0d0e
  %r555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %r556.p = getelementptr inbounds i8, ptr %c, i64 104
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %t557 = shl i64 %r556, 3
  %t558 = add i64 %r555, %t557
  %wp559 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t558, ptr %wp559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7354 word 0xf94011ce
  %r560.p = getelementptr inbounds i8, ptr %c, i64 112
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %t561 = add i64 %r560, 32
  %gmp562 = inttoptr i64 %t561 to ptr
  %gml563 = load i64, ptr %gmp562, align 1, !alias.scope !4, !noalias !3
  %wp564 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml563, ptr %wp564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7358 word 0xb40001ce
  %r565.p = getelementptr inbounds i8, ptr %c, i64 112
  %r565 = load i64, ptr %r565.p, align 8, !alias.scope !3, !noalias !4
  %cmp566 = icmp eq i64 %r565, 0
  br i1 %cmp566, label %L_8004e7390, label %L_8004e735c_ft
L_8004e7368:
  ; @pc 0x8004e7368 word 0x8b0d0d2d
  %r579.p = getelementptr inbounds i8, ptr %c, i64 72
  %r579 = load i64, ptr %r579.p, align 8, !alias.scope !3, !noalias !4
  %r580.p = getelementptr inbounds i8, ptr %c, i64 104
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %t581 = shl i64 %r580, 3
  %t582 = add i64 %r579, %t581
  %wp583 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t582, ptr %wp583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e736c word 0x1e250863
  call void @rt_fp_op_s(ptr %c, i32 2, i32 3, i32 3, i32 5)
  ; @pc 0x8004e7370 word 0x1100058c
  %r584.p = getelementptr inbounds i8, ptr %c, i64 96
  %r584 = load i64, ptr %r584.p, align 8, !alias.scope !3, !noalias !4
  %c585 = trunc i64 %r584 to i32
  %t586 = add i32 %c585, 1
  %c587 = zext i32 %t586 to i64
  %wp588 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c587, ptr %wp588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7374 word 0x6b0a019f
  %r589.p = getelementptr inbounds i8, ptr %c, i64 96
  %r589 = load i64, ptr %r589.p, align 8, !alias.scope !3, !noalias !4
  %c590 = trunc i64 %r589 to i32
  %r591.p = getelementptr inbounds i8, ptr %c, i64 80
  %r591 = load i64, ptr %r591.p, align 8, !alias.scope !3, !noalias !4
  %c592 = trunc i64 %r591 to i32
  %t593 = sub i32 %c590, %c592
  %fn594 = icmp slt i32 %t593, 0
  %fz595 = icmp eq i32 %t593, 0
  %fc596 = icmp uge i32 %c590, %c592
  %fx1597 = xor i32 %c590, %c592
  %fx2598 = xor i32 %c590, %t593
  %fva599 = and i32 %fx1597, %fx2598
  %fv600 = icmp slt i32 %fva599, 0
  %nz601 = zext i1 %fn594 to i64
  %zz602 = zext i1 %fz595 to i64
  %cz603 = zext i1 %fc596 to i64
  %vz604 = zext i1 %fv600 to i64
  %ns605 = shl i64 %nz601, 31
  %zs606 = shl i64 %zz602, 30
  %cs607 = shl i64 %cz603, 29
  %vs608 = shl i64 %vz604, 28
  %nzor609 = or i64 %ns605, %zs606
  %cvor610 = or i64 %cs607, %vs608
  %nzcv611 = or i64 %nzor609, %cvor610
  %wp612 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv611, ptr %wp612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7378 word 0x2d4045b0
  %r613.p = getelementptr inbounds i8, ptr %c, i64 104
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %t614 = add i64 %r613, 4
  %gmp615 = inttoptr i64 %r613 to ptr
  %gml616 = load i32, ptr %gmp615, align 1, !alias.scope !4, !noalias !3
  %gmp617 = inttoptr i64 %t614 to ptr
  %gml618 = load i32, ptr %gmp617, align 1, !alias.scope !4, !noalias !3
  %c619 = zext i32 %gml616 to i128
  %wp620 = getelementptr inbounds i8, ptr %c, i64 768
  store i128 %c619, ptr %wp620, align 16, !alias.scope !3, !noalias !4
  %c621 = zext i32 %gml618 to i128
  %wp622 = getelementptr inbounds i8, ptr %c, i64 784
  store i128 %c621, ptr %wp622, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e737c word 0x1e310871
  call void @rt_fp_op_s(ptr %c, i32 2, i32 17, i32 3, i32 17)
  ; @pc 0x8004e7380 word 0x1e300870
  call void @rt_fp_op_s(ptr %c, i32 2, i32 16, i32 3, i32 16)
  ; @pc 0x8004e7384 word 0x1e312842
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 2, i32 17)
  ; @pc 0x8004e7388 word 0x1e302884
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 4, i32 16)
  ; @pc 0x8004e738c word 0x54fffd83
  %r623.p = getelementptr inbounds i8, ptr %c, i64 272
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %fsh625 = lshr i64 %r623, 29
  %ftr626 = trunc i64 %fsh625 to i1
  %cond624 = xor i1 %ftr626, true
  br i1 %cond624, label %L_8004e733c, label %L_8004e7390
L_8004e7390:
  ; @pc 0x8004e7390 word 0x1280000a
  %c627 = zext i32 -1 to i64
  %wp628 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c627, ptr %wp628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7394 word 0xf9000848
  %r629.p = getelementptr inbounds i8, ptr %c, i64 16
  %r629 = load i64, ptr %r629.p, align 8, !alias.scope !3, !noalias !4
  %t630 = add i64 %r629, 16
  %r631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %gmp632 = inttoptr i64 %t630 to ptr
  store i64 %r631, ptr %gmp632, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7398 word 0x340020eb
  %r633.p = getelementptr inbounds i8, ptr %c, i64 88
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %c634 = trunc i64 %r633 to i32
  %cmp635 = icmp eq i32 %c634, 0
  br i1 %cmp635, label %L_8004e77b4, label %L_8004e739c_ft
L_8004e73a8:
  ; @pc 0x8004e73a8 word 0xb9400d0c
  %r652.p = getelementptr inbounds i8, ptr %c, i64 64
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %t653 = add i64 %r652, 12
  %gmp654 = inttoptr i64 %t653 to ptr
  %gml655 = load i32, ptr %gmp654, align 1, !alias.scope !4, !noalias !3
  %c656 = zext i32 %gml655 to i64
  %wp657 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c656, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73ac word 0x6a0b019f
  %r658.p = getelementptr inbounds i8, ptr %c, i64 88
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %c659 = trunc i64 %r658 to i32
  %r660.p = getelementptr inbounds i8, ptr %c, i64 96
  %r660 = load i64, ptr %r660.p, align 8, !alias.scope !3, !noalias !4
  %c661 = trunc i64 %r660 to i32
  %t662 = and i32 %c661, %c659
  %fn663 = icmp slt i32 %t662, 0
  %fz664 = icmp eq i32 %t662, 0
  %nz665 = zext i1 %fn663 to i64
  %zz666 = zext i1 %fz664 to i64
  %ns667 = shl i64 %nz665, 31
  %zs668 = shl i64 %zz666, 30
  %nzcv669 = or i64 %ns667, %zs668
  %wp670 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv669, ptr %wp670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73b0 word 0x54002060
  %r671.p = getelementptr inbounds i8, ptr %c, i64 272
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %fsh673 = lshr i64 %r671, 30
  %cond672 = trunc i64 %fsh673 to i1
  br i1 %cond672, label %L_8004e77bc, label %L_8004e73b4_ft
L_8004e73bc:
  ; @pc 0x8004e73bc word 0xb9400d6d
  %r679.p = getelementptr inbounds i8, ptr %c, i64 88
  %r679 = load i64, ptr %r679.p, align 8, !alias.scope !3, !noalias !4
  %t680 = add i64 %r679, 12
  %gmp681 = inttoptr i64 %t680 to ptr
  %gml682 = load i32, ptr %gmp681, align 1, !alias.scope !4, !noalias !3
  %c683 = zext i32 %gml682 to i64
  %wp684 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c683, ptr %wp684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73c0 word 0x3940068e
  %r685.p = getelementptr inbounds i8, ptr %c, i64 160
  %r685 = load i64, ptr %r685.p, align 8, !alias.scope !3, !noalias !4
  %t686 = add i64 %r685, 1
  %gmp687 = inttoptr i64 %t686 to ptr
  %gml688 = load i8, ptr %gmp687, align 1, !alias.scope !4, !noalias !3
  %c689 = zext i8 %gml688 to i64
  %wp690 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c689, ptr %wp690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73c4 word 0x1ace25af
  %r691.p = getelementptr inbounds i8, ptr %c, i64 104
  %r691 = load i64, ptr %r691.p, align 8, !alias.scope !3, !noalias !4
  %c692 = trunc i64 %r691 to i32
  %r693.p = getelementptr inbounds i8, ptr %c, i64 112
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %c694 = trunc i64 %r693 to i32
  %t695 = and i32 %c694, 31
  %t696 = lshr i32 %c692, %t695
  %c697 = zext i32 %t696 to i64
  %wp698 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c697, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73c8 word 0x3600026f
  %r699.p = getelementptr inbounds i8, ptr %c, i64 120
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = and i64 %r699, 1
  %cmp701 = icmp eq i64 %t700, 0
  br i1 %cmp701, label %L_8004e7414, label %L_8004e73cc_ft
L_8004e73dc:
  ; @pc 0x8004e73dc word 0xf940096e
  %r743.p = getelementptr inbounds i8, ptr %c, i64 88
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %t744 = add i64 %r743, 16
  %gmp745 = inttoptr i64 %t744 to ptr
  %gml746 = load i64, ptr %gmp745, align 1, !alias.scope !4, !noalias !3
  %wp747 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73e0 word 0xf86d59ce
  %r748.p = getelementptr inbounds i8, ptr %c, i64 112
  %r748 = load i64, ptr %r748.p, align 8, !alias.scope !3, !noalias !4
  %r749.p = getelementptr inbounds i8, ptr %c, i64 104
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %c750 = trunc i64 %r749 to i32
  %c751 = zext i32 %c750 to i64
  %t752 = shl i64 %c751, 3
  %t753 = add i64 %r748, %t752
  %gmp754 = inttoptr i64 %t753 to ptr
  %gml755 = load i64, ptr %gmp754, align 1, !alias.scope !4, !noalias !3
  %wp756 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml755, ptr %wp756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73e4 word 0xb400018e
  %r757.p = getelementptr inbounds i8, ptr %c, i64 112
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %cmp758 = icmp eq i64 %r757, 0
  br i1 %cmp758, label %L_8004e7414, label %L_8004e73e8_ft
L_8004e73ec:
  ; @pc 0x8004e73ec word 0x885f7daf
  %r762.p = getelementptr inbounds i8, ptr %c, i64 104
  %r762 = load i64, ptr %r762.p, align 8, !alias.scope !3, !noalias !4
  %atp763 = inttoptr i64 %r762 to ptr
  %ldx764 = load atomic i32, ptr %atp763 acquire, align 4, !alias.scope !4, !noalias !3
  %c765 = zext i32 %ldx764 to i64
  %fp766 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r762, ptr %fp766, align 8, !alias.scope !3, !noalias !4
  %fp767 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c765, ptr %fp767, align 8, !alias.scope !3, !noalias !4
  %wp768 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c765, ptr %wp768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73f0 word 0x110005f0
  %r769.p = getelementptr inbounds i8, ptr %c, i64 120
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %c770 = trunc i64 %r769 to i32
  %t771 = add i32 %c770, 1
  %c772 = zext i32 %t771 to i64
  %wp773 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c772, ptr %wp773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73f4 word 0x88117db0
  %r774.p = getelementptr inbounds i8, ptr %c, i64 104
  %r774 = load i64, ptr %r774.p, align 8, !alias.scope !3, !noalias !4
  %atp775 = inttoptr i64 %r774 to ptr
  %fp776 = getelementptr inbounds i8, ptr %c, i64 296
  %fv777 = load i64, ptr %fp776, align 8, !alias.scope !3, !noalias !4
  %fp778 = getelementptr inbounds i8, ptr %c, i64 304
  %fv779 = load i64, ptr %fp778, align 8, !alias.scope !3, !noalias !4
  %fp780 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp780, align 8, !alias.scope !3, !noalias !4
  %cmp781 = icmp eq i64 %fv777, %r774
  %c782 = trunc i64 %fv779 to i32
  %r783.p = getelementptr inbounds i8, ptr %c, i64 128
  %r783 = load i64, ptr %r783.p, align 8, !alias.scope !3, !noalias !4
  %c784 = trunc i64 %r783 to i32
  %cx785 = cmpxchg ptr %atp775, i32 %c782, i32 %c784 seq_cst seq_cst, align 4
  %cxok786 = extractvalue { i32, i1 } %cx785, 1
  %t787 = and i1 %cmp781, %cxok786
  %sel788 = select i1 %t787, i32 0, i32 1
  %c789 = zext i32 %sel788 to i64
  %wp790 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c789, ptr %wp790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73f8 word 0x35ffffb1
  %r791.p = getelementptr inbounds i8, ptr %c, i64 136
  %r791 = load i64, ptr %r791.p, align 8, !alias.scope !3, !noalias !4
  %c792 = trunc i64 %r791 to i32
  %cmp793 = icmp ne i32 %c792, 0
  br i1 %cmp793, label %L_8004e73ec, label %L_8004e73fc_ft
L_8004e7404:
  ; @pc 0x8004e7404 word 0x885f7dae
  %r807.p = getelementptr inbounds i8, ptr %c, i64 104
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %atp808 = inttoptr i64 %r807 to ptr
  %ldx809 = load atomic i32, ptr %atp808 acquire, align 4, !alias.scope !4, !noalias !3
  %c810 = zext i32 %ldx809 to i64
  %fp811 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r807, ptr %fp811, align 8, !alias.scope !3, !noalias !4
  %fp812 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c810, ptr %fp812, align 8, !alias.scope !3, !noalias !4
  %wp813 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c810, ptr %wp813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7408 word 0x510005ce
  %r814.p = getelementptr inbounds i8, ptr %c, i64 112
  %r814 = load i64, ptr %r814.p, align 8, !alias.scope !3, !noalias !4
  %c815 = trunc i64 %r814 to i32
  %t816 = sub i32 %c815, 1
  %c817 = zext i32 %t816 to i64
  %wp818 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c817, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e740c word 0x880f7dae
  %r819.p = getelementptr inbounds i8, ptr %c, i64 104
  %r819 = load i64, ptr %r819.p, align 8, !alias.scope !3, !noalias !4
  %atp820 = inttoptr i64 %r819 to ptr
  %fp821 = getelementptr inbounds i8, ptr %c, i64 296
  %fv822 = load i64, ptr %fp821, align 8, !alias.scope !3, !noalias !4
  %fp823 = getelementptr inbounds i8, ptr %c, i64 304
  %fv824 = load i64, ptr %fp823, align 8, !alias.scope !3, !noalias !4
  %fp825 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp825, align 8, !alias.scope !3, !noalias !4
  %cmp826 = icmp eq i64 %fv822, %r819
  %c827 = trunc i64 %fv824 to i32
  %r828.p = getelementptr inbounds i8, ptr %c, i64 112
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %c829 = trunc i64 %r828 to i32
  %cx830 = cmpxchg ptr %atp820, i32 %c827, i32 %c829 seq_cst seq_cst, align 4
  %cxok831 = extractvalue { i32, i1 } %cx830, 1
  %t832 = and i1 %cmp826, %cxok831
  %sel833 = select i1 %t832, i32 0, i32 1
  %c834 = zext i32 %sel833 to i64
  %wp835 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c834, ptr %wp835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7410 word 0x35ffffaf
  %r836.p = getelementptr inbounds i8, ptr %c, i64 120
  %r836 = load i64, ptr %r836.p, align 8, !alias.scope !3, !noalias !4
  %c837 = trunc i64 %r836 to i32
  %cmp838 = icmp ne i32 %c837, 0
  br i1 %cmp838, label %L_8004e7404, label %L_8004e7414
L_8004e7414:
  ; @pc 0x8004e7414 word 0xf9400d6d
  %r839.p = getelementptr inbounds i8, ptr %c, i64 88
  %r839 = load i64, ptr %r839.p, align 8, !alias.scope !3, !noalias !4
  %t840 = add i64 %r839, 24
  %gmp841 = inttoptr i64 %t840 to ptr
  %gml842 = load i64, ptr %gmp841, align 1, !alias.scope !4, !noalias !3
  %wp843 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml842, ptr %wp843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7418 word 0xb4001b2d
  %r844.p = getelementptr inbounds i8, ptr %c, i64 104
  %r844 = load i64, ptr %r844.p, align 8, !alias.scope !3, !noalias !4
  %cmp845 = icmp eq i64 %r844, 0
  br i1 %cmp845, label %L_8004e777c, label %L_8004e741c_ft
L_8004e7424:
  ; @pc 0x8004e7424 word 0x8b0b0d2b
  %r855.p = getelementptr inbounds i8, ptr %c, i64 72
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %r856.p = getelementptr inbounds i8, ptr %c, i64 88
  %r856 = load i64, ptr %r856.p, align 8, !alias.scope !3, !noalias !4
  %t857 = shl i64 %r856, 3
  %t858 = add i64 %r855, %t857
  %wp859 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t858, ptr %wp859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7428 word 0x2d401d66
  %r860.p = getelementptr inbounds i8, ptr %c, i64 88
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %t861 = add i64 %r860, 4
  %gmp862 = inttoptr i64 %r860 to ptr
  %gml863 = load i32, ptr %gmp862, align 1, !alias.scope !4, !noalias !3
  %gmp864 = inttoptr i64 %t861 to ptr
  %gml865 = load i32, ptr %gmp864, align 1, !alias.scope !4, !noalias !3
  %c866 = zext i32 %gml863 to i128
  %wp867 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c866, ptr %wp867, align 16, !alias.scope !3, !noalias !4
  %c868 = zext i32 %gml865 to i128
  %wp869 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c868, ptr %wp869, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e742c word 0xaa0d03eb
  %r870.p = getelementptr inbounds i8, ptr %c, i64 104
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %t871 = or i64 0, %r870
  %wp872 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t871, ptr %wp872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7430 word 0x1f0388e2
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 2, i32 7, i32 3, i32 2)
  ; @pc 0x8004e7434 word 0x1f0390c4
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 4, i32 6, i32 3, i32 4)
  ; @pc 0x8004e7438 word 0x1e232863
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 3, i32 3)
  ; @pc 0x8004e743c word 0xb5fffc0d
  %r873.p = getelementptr inbounds i8, ptr %c, i64 104
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %cmp874 = icmp ne i64 %r873, 0
  br i1 %cmp874, label %L_8004e73bc, label %L_8004e7440_ft
L_8004e7444:
  ; @pc 0x8004e7444 word 0x794025ce
  %r875.p = getelementptr inbounds i8, ptr %c, i64 112
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %t876 = add i64 %r875, 18
  %gmp877 = inttoptr i64 %t876 to ptr
  %gml878 = load i16, ptr %gmp877, align 1, !alias.scope !4, !noalias !3
  %c879 = zext i16 %gml878 to i64
  %wp880 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7448 word 0x6a2e019f
  %r881.p = getelementptr inbounds i8, ptr %c, i64 112
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %c882 = trunc i64 %r881 to i32
  %t883 = xor i32 %c882, -1
  %r884.p = getelementptr inbounds i8, ptr %c, i64 96
  %r884 = load i64, ptr %r884.p, align 8, !alias.scope !3, !noalias !4
  %c885 = trunc i64 %r884 to i32
  %t886 = and i32 %c885, %t883
  %fn887 = icmp slt i32 %t886, 0
  %fz888 = icmp eq i32 %t886, 0
  %nz889 = zext i1 %fn887 to i64
  %zz890 = zext i1 %fz888 to i64
  %ns891 = shl i64 %nz889, 31
  %zs892 = shl i64 %zz890, 30
  %nzcv893 = or i64 %ns891, %zs892
  %wp894 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv893, ptr %wp894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e744c word 0x54fffdc1
  %r895.p = getelementptr inbounds i8, ptr %c, i64 272
  %r895 = load i64, ptr %r895.p, align 8, !alias.scope !3, !noalias !4
  %fsh897 = lshr i64 %r895, 30
  %ftr898 = trunc i64 %fsh897 to i1
  %cond896 = xor i1 %ftr898, true
  br i1 %cond896, label %L_8004e7404, label %L_8004e7450_ft
L_8004e7474:
  ; @pc 0x8004e7474 word 0xf940096e
  %r968.p = getelementptr inbounds i8, ptr %c, i64 88
  %r968 = load i64, ptr %r968.p, align 8, !alias.scope !3, !noalias !4
  %t969 = add i64 %r968, 16
  %gmp970 = inttoptr i64 %t969 to ptr
  %gml971 = load i64, ptr %gmp970, align 1, !alias.scope !4, !noalias !3
  %wp972 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml971, ptr %wp972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7478 word 0xf86f59cf
  %r973.p = getelementptr inbounds i8, ptr %c, i64 112
  %r973 = load i64, ptr %r973.p, align 8, !alias.scope !3, !noalias !4
  %r974.p = getelementptr inbounds i8, ptr %c, i64 120
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %c975 = trunc i64 %r974 to i32
  %c976 = zext i32 %c975 to i64
  %t977 = shl i64 %c976, 3
  %t978 = add i64 %r973, %t977
  %gmp979 = inttoptr i64 %t978 to ptr
  %gml980 = load i64, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  %wp981 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml980, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e747c word 0xb4001e2f
  %r982.p = getelementptr inbounds i8, ptr %c, i64 120
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %cmp983 = icmp eq i64 %r982, 0
  br i1 %cmp983, label %L_8004e7840, label %L_8004e7480_ft
L_8004e7488:
  ; @pc 0x8004e7488 word 0xeb0b011f
  %r993.p = getelementptr inbounds i8, ptr %c, i64 64
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %r994.p = getelementptr inbounds i8, ptr %c, i64 88
  %r994 = load i64, ptr %r994.p, align 8, !alias.scope !3, !noalias !4
  %t995 = sub i64 %r993, %r994
  %fn996 = icmp slt i64 %t995, 0
  %fz997 = icmp eq i64 %t995, 0
  %fc998 = icmp uge i64 %r993, %r994
  %fx1999 = xor i64 %r993, %r994
  %fx21000 = xor i64 %r993, %t995
  %fva1001 = and i64 %fx1999, %fx21000
  %fv1002 = icmp slt i64 %fva1001, 0
  %nz1003 = zext i1 %fn996 to i64
  %zz1004 = zext i1 %fz997 to i64
  %cz1005 = zext i1 %fc998 to i64
  %vz1006 = zext i1 %fv1002 to i64
  %ns1007 = shl i64 %nz1003, 31
  %zs1008 = shl i64 %zz1004, 30
  %cs1009 = shl i64 %cz1005, 29
  %vs1010 = shl i64 %vz1006, 28
  %nzor1011 = or i64 %ns1007, %zs1008
  %cvor1012 = or i64 %cs1009, %vs1010
  %nzcv1013 = or i64 %nzor1011, %cvor1012
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1013, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e748c word 0x52800028
  %c1015 = zext i32 1 to i64
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1015, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7490 word 0x1a881513
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %c1018 = trunc i64 %r1017 to i32
  %r1019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1019 = load i64, ptr %r1019.p, align 8, !alias.scope !3, !noalias !4
  %c1020 = trunc i64 %r1019 to i32
  %t1021 = add i32 %c1020, 1
  %r1022.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1022 = load i64, ptr %r1022.p, align 8, !alias.scope !3, !noalias !4
  %fsh1024 = lshr i64 %r1022, 30
  %ftr1025 = trunc i64 %fsh1024 to i1
  %cond1023 = xor i1 %ftr1025, true
  %sel1026 = select i1 %cond1023, i32 %c1018, i32 %t1021
  %c1027 = zext i32 %sel1026 to i64
  %wp1028 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1027, ptr %wp1028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7494 word 0x710009bf
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %c1030 = trunc i64 %r1029 to i32
  %t1031 = sub i32 %c1030, 2
  %fn1032 = icmp slt i32 %t1031, 0
  %fz1033 = icmp eq i32 %t1031, 0
  %fc1034 = icmp uge i32 %c1030, 2
  %fx11035 = xor i32 %c1030, 2
  %fx21036 = xor i32 %c1030, %t1031
  %fva1037 = and i32 %fx11035, %fx21036
  %fv1038 = icmp slt i32 %fva1037, 0
  %nz1039 = zext i1 %fn1032 to i64
  %zz1040 = zext i1 %fz1033 to i64
  %cz1041 = zext i1 %fc1034 to i64
  %vz1042 = zext i1 %fv1038 to i64
  %ns1043 = shl i64 %nz1039, 31
  %zs1044 = shl i64 %zz1040, 30
  %cs1045 = shl i64 %cz1041, 29
  %vs1046 = shl i64 %vz1042, 28
  %nzor1047 = or i64 %ns1043, %zs1044
  %cvor1048 = or i64 %cs1045, %vs1046
  %nzcv1049 = or i64 %nzor1047, %cvor1048
  %wp1050 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1049, ptr %wp1050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7498 word 0x54002002
  %r1051.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1051 = load i64, ptr %r1051.p, align 8, !alias.scope !3, !noalias !4
  %fsh1053 = lshr i64 %r1051, 29
  %cond1052 = trunc i64 %fsh1053 to i1
  br i1 %cond1052, label %L_8004e7898, label %L_8004e749c
L_8004e749c:
  ; @pc 0x8004e749c word 0xf86d59d5
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %c1056 = trunc i64 %r1055 to i32
  %c1057 = zext i32 %c1056 to i64
  %t1058 = shl i64 %c1057, 3
  %t1059 = add i64 %r1054, %t1058
  %gmp1060 = inttoptr i64 %t1059 to ptr
  %gml1061 = load i64, ptr %gmp1060, align 1, !alias.scope !4, !noalias !3
  %wp1062 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1061, ptr %wp1062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74a0 word 0x794026a8
  %r1063.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1063 = load i64, ptr %r1063.p, align 8, !alias.scope !3, !noalias !4
  %t1064 = add i64 %r1063, 18
  %gmp1065 = inttoptr i64 %t1064 to ptr
  %gml1066 = load i16, ptr %gmp1065, align 1, !alias.scope !4, !noalias !3
  %c1067 = zext i16 %gml1066 to i64
  %wp1068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1067, ptr %wp1068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74a4 word 0x2d401c26
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %t1070 = add i64 %r1069, 4
  %gmp1071 = inttoptr i64 %r1069 to ptr
  %gml1072 = load i32, ptr %gmp1071, align 1, !alias.scope !4, !noalias !3
  %gmp1073 = inttoptr i64 %t1070 to ptr
  %gml1074 = load i32, ptr %gmp1073, align 1, !alias.scope !4, !noalias !3
  %c1075 = zext i32 %gml1072 to i128
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c1075, ptr %wp1076, align 16, !alias.scope !3, !noalias !4
  %c1077 = zext i32 %gml1074 to i128
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c1077, ptr %wp1078, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74a8 word 0x37602128
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %t1080 = and i64 %r1079, 4096
  %cmp1081 = icmp ne i64 %t1080, 0
  br i1 %cmp1081, label %L_8004e78cc, label %L_8004e74ac
L_8004e74ac:
  ; @pc 0x8004e74ac word 0x1f058862
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 2, i32 3, i32 5, i32 2)
  ; @pc 0x8004e74b0 word 0xf94006a9
  %r1082.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1082 = load i64, ptr %r1082.p, align 8, !alias.scope !3, !noalias !4
  %t1083 = add i64 %r1082, 8
  %gmp1084 = inttoptr i64 %t1083 to ptr
  %gml1085 = load i64, ptr %gmp1084, align 1, !alias.scope !4, !noalias !3
  %wp1086 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1085, ptr %wp1086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74b4 word 0x2a0403f8
  %r1087.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1087 = load i64, ptr %r1087.p, align 8, !alias.scope !3, !noalias !4
  %c1088 = trunc i64 %r1087 to i32
  %t1089 = or i32 0, %c1088
  %c1090 = zext i32 %t1089 to i64
  %wp1091 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1090, ptr %wp1091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74b8 word 0x8b181529
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %r1093.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1093 = load i64, ptr %r1093.p, align 8, !alias.scope !3, !noalias !4
  %t1094 = shl i64 %r1093, 5
  %t1095 = add i64 %r1092, %t1094
  %wp1096 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1095, ptr %wp1096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74bc word 0x7949f92c
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %t1098 = add i64 %r1097, 1276
  %gmp1099 = inttoptr i64 %t1098 to ptr
  %gml1100 = load i16, ptr %gmp1099, align 1, !alias.scope !4, !noalias !3
  %c1101 = zext i16 %gml1100 to i64
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1101, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74c0 word 0x1e2238e2
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 7, i32 2)
  ; @pc 0x8004e74c4 word 0x1f059067
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 7, i32 3, i32 5, i32 4)
  ; @pc 0x8004e74c8 word 0x1e2e1004
  %wp1103 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 1065353216, ptr %wp1103, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74cc word 0x1e231883
  call void @rt_fp_op_s(ptr %c, i32 5, i32 3, i32 4, i32 3)
  ; @pc 0x8004e74d0 word 0x1e2738c5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 6, i32 7)
  ; @pc 0x8004e74d4 word 0x7d4a0126
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %t1105 = add i64 %r1104, 1280
  %gmp1106 = inttoptr i64 %t1105 to ptr
  %gml1107 = load i16, ptr %gmp1106, align 1, !alias.scope !4, !noalias !3
  %c1108 = zext i16 %gml1107 to i128
  %wp1109 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c1108, ptr %wp1109, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74d8 word 0x1e250865
  call void @rt_fp_op_s(ptr %c, i32 2, i32 5, i32 3, i32 5)
  ; @pc 0x8004e74dc word 0x1e220862
  call void @rt_fp_op_s(ptr %c, i32 2, i32 2, i32 3, i32 2)
  ; @pc 0x8004e74e0 word 0xbd450523
  %r1110.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1110 = load i64, ptr %r1110.p, align 8, !alias.scope !3, !noalias !4
  %t1111 = add i64 %r1110, 1284
  %gmp1112 = inttoptr i64 %t1111 to ptr
  %gml1113 = load i32, ptr %gmp1112, align 1, !alias.scope !4, !noalias !3
  %c1114 = zext i32 %gml1113 to i128
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c1114, ptr %wp1115, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74e4 word 0x1e2328a3
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 5, i32 3)
  ; @pc 0x8004e74e8 word 0x7e21d8c6
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 6, i32 6)
  ; @pc 0x8004e74ec word 0x7d4a0525
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %t1117 = add i64 %r1116, 1282
  %gmp1118 = inttoptr i64 %t1117 to ptr
  %gml1119 = load i16, ptr %gmp1118, align 1, !alias.scope !4, !noalias !3
  %c1120 = zext i16 %gml1119 to i128
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c1120, ptr %wp1121, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74f0 word 0x1e260866
  call void @rt_fp_op_s(ptr %c, i32 2, i32 6, i32 3, i32 6)
  ; @pc 0x8004e74f4 word 0xbd450923
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = add i64 %r1122, 1288
  %gmp1124 = inttoptr i64 %t1123 to ptr
  %gml1125 = load i32, ptr %gmp1124, align 1, !alias.scope !4, !noalias !3
  %c1126 = zext i32 %gml1125 to i128
  %wp1127 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c1126, ptr %wp1127, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e74f8 word 0x1e232842
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 2, i32 3)
  ; @pc 0x8004e74fc word 0x7e21d8a5
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 5, i32 5)
  ; @pc 0x8004e7500 word 0x2f00e403
  %wp1128 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 0, ptr %wp1128, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7504 word 0x1e2020c8
  %fcmp1129 = call i64 @rt_fp_cmp_s(ptr %c, i32 6, i32 0, i32 1)
  %wp1130 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1129, ptr %wp1130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7508 word 0x1e250845
  call void @rt_fp_op_s(ptr %c, i32 2, i32 5, i32 2, i32 5)
  ; @pc 0x8004e750c word 0x2f00e402
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 0, ptr %wp1131, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7510 word 0x540000c4
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %fsh1134 = lshr i64 %r1132, 31
  %cond1133 = trunc i64 %fsh1134 to i1
  br i1 %cond1133, label %L_8004e7528, label %L_8004e7514_ft
L_8004e7528:
  ; @pc 0x8004e7528 word 0x5ea1b846
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 6, i32 2)
  ; @pc 0x8004e752c word 0x1e38004d
  %fptoi1154 = call i64 @rt_fp_toint(ptr %c, i32 0, i32 2, i32 3, i32 0, i32 32, i32 0)
  %c1155 = trunc i64 %fptoi1154 to i32
  %c1156 = zext i32 %c1155 to i64
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7530 word 0x1e202048
  %fcmp1158 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 0, i32 1)
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1158, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7534 word 0x7949fd2f
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1160, 1278
  %gmp1162 = inttoptr i64 %t1161 to ptr
  %gml1163 = load i16, ptr %gmp1162, align 1, !alias.scope !4, !noalias !3
  %c1164 = zext i16 %gml1163 to i64
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7538 word 0x1a9fa7ee
  %t1166 = add i32 0, 1
  %r1167.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1167 = load i64, ptr %r1167.p, align 8, !alias.scope !3, !noalias !4
  %fsh1169 = lshr i64 %r1167, 31
  %ftr1170 = trunc i64 %fsh1169 to i1
  %fsh1171 = lshr i64 %r1167, 28
  %ftr1172 = trunc i64 %fsh1171 to i1
  %cond1168 = icmp eq i1 %ftr1170, %ftr1172
  %sel1173 = select i1 %cond1168, i32 0, i32 %t1166
  %c1174 = zext i32 %sel1173 to i64
  %wp1175 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1174, ptr %wp1175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e753c word 0x5e21d8c6
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 6, i32 6)
  ; @pc 0x8004e7540 word 0x1e262040
  %fcmp1176 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 6, i32 0)
  %wp1177 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1176, ptr %wp1177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7544 word 0x1a8e03ee
  %r1178.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1178 = load i64, ptr %r1178.p, align 8, !alias.scope !3, !noalias !4
  %c1179 = trunc i64 %r1178 to i32
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %fsh1182 = lshr i64 %r1180, 30
  %cond1181 = trunc i64 %fsh1182 to i1
  %sel1183 = select i1 %cond1181, i32 0, i32 %c1179
  %c1184 = zext i32 %sel1183 to i64
  %wp1185 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1184, ptr %wp1185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7548 word 0x1e2020a8
  %fcmp1186 = call i64 @rt_fp_cmp_s(ptr %c, i32 5, i32 0, i32 1)
  %wp1187 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1186, ptr %wp1187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e754c word 0x4b0e01ad
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %c1189 = trunc i64 %r1188 to i32
  %r1190.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1190 = load i64, ptr %r1190.p, align 8, !alias.scope !3, !noalias !4
  %c1191 = trunc i64 %r1190 to i32
  %t1192 = sub i32 %c1189, %c1191
  %c1193 = zext i32 %t1192 to i64
  %wp1194 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1193, ptr %wp1194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7550 word 0x1e2201a6
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %c1196 = trunc i64 %r1195 to i32
  %c1197 = zext i32 %c1196 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 6, i64 %c1197, i32 32, i32 0, i32 0)
  ; @pc 0x8004e7554 word 0x1e263842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 6)
  ; @pc 0x8004e7558 word 0x540000c4
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %fsh1200 = lshr i64 %r1198, 31
  %cond1199 = trunc i64 %fsh1200 to i1
  br i1 %cond1199, label %L_8004e7570, label %L_8004e755c_ft
L_8004e7570:
  ; @pc 0x8004e7570 word 0x5ea1b864
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 4, i32 3)
  ; @pc 0x8004e7574 word 0x1e38006e
  %fptoi1220 = call i64 @rt_fp_toint(ptr %c, i32 0, i32 3, i32 3, i32 0, i32 32, i32 0)
  %c1221 = trunc i64 %fptoi1220 to i32
  %c1222 = zext i32 %c1221 to i64
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1222, ptr %wp1223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7578 word 0x1e202068
  %fcmp1224 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 0, i32 1)
  %wp1225 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1224, ptr %wp1225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e757c word 0x510005ef
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %c1227 = trunc i64 %r1226 to i32
  %t1228 = sub i32 %c1227, 1
  %c1229 = zext i32 %t1228 to i64
  %wp1230 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1229, ptr %wp1230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7580 word 0xf9427931
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %t1232 = add i64 %r1231, 1264
  %gmp1233 = inttoptr i64 %t1232 to ptr
  %gml1234 = load i64, ptr %gmp1233, align 1, !alias.scope !4, !noalias !3
  %wp1235 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %gml1234, ptr %wp1235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7584 word 0x5100058c
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %c1237 = trunc i64 %r1236 to i32
  %t1238 = sub i32 %c1237, 1
  %c1239 = zext i32 %t1238 to i64
  %wp1240 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1239, ptr %wp1240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7588 word 0x1e203821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 0)
  ; @pc 0x8004e758c word 0x1a9fa7f0
  %t1241 = add i32 0, 1
  %r1242.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1242 = load i64, ptr %r1242.p, align 8, !alias.scope !3, !noalias !4
  %fsh1244 = lshr i64 %r1242, 31
  %ftr1245 = trunc i64 %fsh1244 to i1
  %fsh1246 = lshr i64 %r1242, 28
  %ftr1247 = trunc i64 %fsh1246 to i1
  %cond1243 = icmp eq i1 %ftr1245, %ftr1247
  %sel1248 = select i1 %cond1243, i32 0, i32 %t1241
  %c1249 = zext i32 %sel1248 to i64
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7590 word 0x5e21d884
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 4, i32 4)
  ; @pc 0x8004e7594 word 0x1e242060
  %fcmp1251 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 4, i32 0)
  %wp1252 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1251, ptr %wp1252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7598 word 0x1a9003f0
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %c1254 = trunc i64 %r1253 to i32
  %r1255.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1255 = load i64, ptr %r1255.p, align 8, !alias.scope !3, !noalias !4
  %fsh1257 = lshr i64 %r1255, 30
  %cond1256 = trunc i64 %fsh1257 to i1
  %sel1258 = select i1 %cond1256, i32 0, i32 %c1254
  %c1259 = zext i32 %sel1258 to i64
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e759c word 0x4b1001d0
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %c1262 = trunc i64 %r1261 to i32
  %r1263.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1263 = load i64, ptr %r1263.p, align 8, !alias.scope !3, !noalias !4
  %c1264 = trunc i64 %r1263 to i32
  %t1265 = sub i32 %c1262, %c1264
  %c1266 = zext i32 %t1265 to i64
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1266, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75a0 word 0x7949f12e
  %r1268.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1268 = load i64, ptr %r1268.p, align 8, !alias.scope !3, !noalias !4
  %t1269 = add i64 %r1268, 1272
  %gmp1270 = inttoptr i64 %t1269 to ptr
  %gml1271 = load i16, ptr %gmp1270, align 1, !alias.scope !4, !noalias !3
  %c1272 = zext i16 %gml1271 to i64
  %wp1273 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1272, ptr %wp1273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75a4 word 0x3953e929
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1274 = load i64, ptr %r1274.p, align 8, !alias.scope !3, !noalias !4
  %t1275 = add i64 %r1274, 1274
  %gmp1276 = inttoptr i64 %t1275 to ptr
  %gml1277 = load i8, ptr %gmp1276, align 1, !alias.scope !4, !noalias !3
  %c1278 = zext i8 %gml1277 to i64
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75a8 word 0x1e220204
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %c1281 = trunc i64 %r1280 to i32
  %c1282 = zext i32 %c1281 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 4, i64 %c1282, i32 32, i32 0, i32 0)
  ; @pc 0x8004e75ac word 0x6b0f021f
  %r1283.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1283 = load i64, ptr %r1283.p, align 8, !alias.scope !3, !noalias !4
  %c1284 = trunc i64 %r1283 to i32
  %r1285.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1285 = load i64, ptr %r1285.p, align 8, !alias.scope !3, !noalias !4
  %c1286 = trunc i64 %r1285 to i32
  %t1287 = sub i32 %c1284, %c1286
  %fn1288 = icmp slt i32 %t1287, 0
  %fz1289 = icmp eq i32 %t1287, 0
  %fc1290 = icmp uge i32 %c1284, %c1286
  %fx11291 = xor i32 %c1284, %c1286
  %fx21292 = xor i32 %c1284, %t1287
  %fva1293 = and i32 %fx11291, %fx21292
  %fv1294 = icmp slt i32 %fva1293, 0
  %nz1295 = zext i1 %fn1288 to i64
  %zz1296 = zext i1 %fz1289 to i64
  %cz1297 = zext i1 %fc1290 to i64
  %vz1298 = zext i1 %fv1294 to i64
  %ns1299 = shl i64 %nz1295, 31
  %zs1300 = shl i64 %zz1296, 30
  %cs1301 = shl i64 %cz1297, 29
  %vs1302 = shl i64 %vz1298, 28
  %nzor1303 = or i64 %ns1299, %zs1300
  %cvor1304 = or i64 %cs1301, %vs1302
  %nzcv1305 = or i64 %nzor1303, %cvor1304
  %wp1306 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1305, ptr %wp1306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75b0 word 0x1a8fb212
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %c1308 = trunc i64 %r1307 to i32
  %r1309.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1309 = load i64, ptr %r1309.p, align 8, !alias.scope !3, !noalias !4
  %c1310 = trunc i64 %r1309 to i32
  %r1311.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1311 = load i64, ptr %r1311.p, align 8, !alias.scope !3, !noalias !4
  %fsh1313 = lshr i64 %r1311, 31
  %ftr1314 = trunc i64 %fsh1313 to i1
  %fsh1315 = lshr i64 %r1311, 28
  %ftr1316 = trunc i64 %fsh1315 to i1
  %cond1312 = icmp ne i1 %ftr1314, %ftr1316
  %sel1317 = select i1 %cond1312, i32 %c1308, i32 %c1310
  %c1318 = zext i32 %sel1317 to i64
  %wp1319 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1318, ptr %wp1319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75b4 word 0x7201021f
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %c1321 = trunc i64 %r1320 to i32
  %t1322 = and i32 %c1321, -2147483648
  %fn1323 = icmp slt i32 %t1322, 0
  %fz1324 = icmp eq i32 %t1322, 0
  %nz1325 = zext i1 %fn1323 to i64
  %zz1326 = zext i1 %fz1324 to i64
  %ns1327 = shl i64 %nz1325, 31
  %zs1328 = shl i64 %zz1326, 30
  %nzcv1329 = or i64 %ns1327, %zs1328
  %wp1330 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1329, ptr %wp1330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75b8 word 0x1a9213f2
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %c1332 = trunc i64 %r1331 to i32
  %r1333.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1333 = load i64, ptr %r1333.p, align 8, !alias.scope !3, !noalias !4
  %fsh1335 = lshr i64 %r1333, 30
  %ftr1336 = trunc i64 %fsh1335 to i1
  %cond1334 = xor i1 %ftr1336, true
  %sel1337 = select i1 %cond1334, i32 0, i32 %c1332
  %c1338 = zext i32 %sel1337 to i64
  %wp1339 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1338, ptr %wp1339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75bc word 0x6b0c01bf
  %r1340.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1340 = load i64, ptr %r1340.p, align 8, !alias.scope !3, !noalias !4
  %c1341 = trunc i64 %r1340 to i32
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %c1343 = trunc i64 %r1342 to i32
  %t1344 = sub i32 %c1341, %c1343
  %fn1345 = icmp slt i32 %t1344, 0
  %fz1346 = icmp eq i32 %t1344, 0
  %fc1347 = icmp uge i32 %c1341, %c1343
  %fx11348 = xor i32 %c1341, %c1343
  %fx21349 = xor i32 %c1341, %t1344
  %fva1350 = and i32 %fx11348, %fx21349
  %fv1351 = icmp slt i32 %fva1350, 0
  %nz1352 = zext i1 %fn1345 to i64
  %zz1353 = zext i1 %fz1346 to i64
  %cz1354 = zext i1 %fc1347 to i64
  %vz1355 = zext i1 %fv1351 to i64
  %ns1356 = shl i64 %nz1352, 31
  %zs1357 = shl i64 %zz1353, 30
  %cs1358 = shl i64 %cz1354, 29
  %vs1359 = shl i64 %vz1355, 28
  %nzor1360 = or i64 %ns1356, %zs1357
  %cvor1361 = or i64 %cs1358, %vs1359
  %nzcv1362 = or i64 %nzor1360, %cvor1361
  %wp1363 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1362, ptr %wp1363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75c0 word 0x1a8cb1a4
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %c1365 = trunc i64 %r1364 to i32
  %r1366.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1366 = load i64, ptr %r1366.p, align 8, !alias.scope !3, !noalias !4
  %c1367 = trunc i64 %r1366 to i32
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %fsh1370 = lshr i64 %r1368, 31
  %ftr1371 = trunc i64 %fsh1370 to i1
  %fsh1372 = lshr i64 %r1368, 28
  %ftr1373 = trunc i64 %fsh1372 to i1
  %cond1369 = icmp ne i1 %ftr1371, %ftr1373
  %sel1374 = select i1 %cond1369, i32 %c1365, i32 %c1367
  %c1375 = zext i32 %sel1374 to i64
  %wp1376 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1375, ptr %wp1376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75c4 word 0x720101bf
  %r1377.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1377 = load i64, ptr %r1377.p, align 8, !alias.scope !3, !noalias !4
  %c1378 = trunc i64 %r1377 to i32
  %t1379 = and i32 %c1378, -2147483648
  %fn1380 = icmp slt i32 %t1379, 0
  %fz1381 = icmp eq i32 %t1379, 0
  %nz1382 = zext i1 %fn1380 to i64
  %zz1383 = zext i1 %fz1381 to i64
  %ns1384 = shl i64 %nz1382, 31
  %zs1385 = shl i64 %zz1383, 30
  %nzcv1386 = or i64 %ns1384, %zs1385
  %wp1387 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1386, ptr %wp1387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75c8 word 0x9b327dd2
  %r1388.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1388 = load i64, ptr %r1388.p, align 8, !alias.scope !3, !noalias !4
  %c1389 = trunc i64 %r1388 to i32
  %c1390 = sext i32 %c1389 to i64
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %c1392 = trunc i64 %r1391 to i32
  %c1393 = sext i32 %c1392 to i64
  %t1394 = mul i64 %c1390, %c1393
  %t1395 = add i64 0, %t1394
  %wp1396 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t1395, ptr %wp1396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75cc word 0x1a8413e4
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %c1398 = trunc i64 %r1397 to i32
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %fsh1401 = lshr i64 %r1399, 30
  %ftr1402 = trunc i64 %fsh1401 to i1
  %cond1400 = xor i1 %ftr1402, true
  %sel1403 = select i1 %cond1400, i32 0, i32 %c1398
  %c1404 = zext i32 %sel1403 to i64
  %wp1405 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1404, ptr %wp1405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75d0 word 0x9b247d27
  %r1406.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1406 = load i64, ptr %r1406.p, align 8, !alias.scope !3, !noalias !4
  %c1407 = trunc i64 %r1406 to i32
  %c1408 = sext i32 %c1407 to i64
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %c1410 = trunc i64 %r1409 to i32
  %c1411 = sext i32 %c1410 to i64
  %t1412 = mul i64 %c1408, %c1411
  %t1413 = add i64 0, %t1412
  %wp1414 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %t1413, ptr %wp1414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75d4 word 0x9b244924
  %r1415.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1415 = load i64, ptr %r1415.p, align 8, !alias.scope !3, !noalias !4
  %c1416 = trunc i64 %r1415 to i32
  %c1417 = sext i32 %c1416 to i64
  %r1418.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1418 = load i64, ptr %r1418.p, align 8, !alias.scope !3, !noalias !4
  %c1419 = trunc i64 %r1418 to i32
  %c1420 = sext i32 %c1419 to i64
  %t1421 = mul i64 %c1417, %c1420
  %r1422.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1422 = load i64, ptr %r1422.p, align 8, !alias.scope !3, !noalias !4
  %t1423 = add i64 %r1422, %t1421
  %wp1424 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t1423, ptr %wp1424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75d8 word 0x1e243863
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 3, i32 4)
  ; @pc 0x8004e75dc word 0x7c646a24
  %r1425.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1425 = load i64, ptr %r1425.p, align 8, !alias.scope !3, !noalias !4
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %t1427 = add i64 %r1425, %r1426
  %gmp1428 = inttoptr i64 %t1427 to ptr
  %gml1429 = load i16, ptr %gmp1428, align 1, !alias.scope !4, !noalias !3
  %c1430 = zext i16 %gml1429 to i128
  %wp1431 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c1430, ptr %wp1431, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75e0 word 0x529fe004
  %c1432 = zext i32 65280 to i64
  %wp1433 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1432, ptr %wp1433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75e4 word 0x72a8efe4
  %r1434.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1434 = load i64, ptr %r1434.p, align 8, !alias.scope !3, !noalias !4
  %t1435 = and i64 %r1434, -4294901761
  %t1436 = or i64 %t1435, 1199505408
  %c1437 = trunc i64 %t1436 to i32
  %c1438 = zext i32 %c1437 to i64
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75e8 word 0x1e270085
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %c1441 = trunc i64 %r1440 to i32
  %c1442 = zext i32 %c1441 to i128
  %wp1443 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c1442, ptr %wp1443, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75ec word 0x110005a4
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %c1445 = trunc i64 %r1444 to i32
  %t1446 = add i32 %c1445, 1
  %c1447 = zext i32 %t1446 to i64
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75f0 word 0x6b0c009f
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %c1450 = trunc i64 %r1449 to i32
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %c1452 = trunc i64 %r1451 to i32
  %t1453 = sub i32 %c1450, %c1452
  %fn1454 = icmp slt i32 %t1453, 0
  %fz1455 = icmp eq i32 %t1453, 0
  %fc1456 = icmp uge i32 %c1450, %c1452
  %fx11457 = xor i32 %c1450, %c1452
  %fx21458 = xor i32 %c1450, %t1453
  %fva1459 = and i32 %fx11457, %fx21458
  %fv1460 = icmp slt i32 %fva1459, 0
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
  ; @pc 0x8004e75f4 word 0x1a8da58c
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %c1474 = trunc i64 %r1473 to i32
  %r1475.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1475 = load i64, ptr %r1475.p, align 8, !alias.scope !3, !noalias !4
  %c1476 = trunc i64 %r1475 to i32
  %t1477 = add i32 %c1476, 1
  %r1478.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1478 = load i64, ptr %r1478.p, align 8, !alias.scope !3, !noalias !4
  %fsh1480 = lshr i64 %r1478, 31
  %ftr1481 = trunc i64 %fsh1480 to i1
  %fsh1482 = lshr i64 %r1478, 28
  %ftr1483 = trunc i64 %fsh1482 to i1
  %cond1479 = icmp eq i1 %ftr1481, %ftr1483
  %sel1484 = select i1 %cond1479, i32 %c1474, i32 %t1477
  %c1485 = zext i32 %sel1484 to i64
  %wp1486 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1485, ptr %wp1486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75f8 word 0x310005bf
  %r1487.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1487 = load i64, ptr %r1487.p, align 8, !alias.scope !3, !noalias !4
  %c1488 = trunc i64 %r1487 to i32
  %t1489 = add i32 %c1488, 1
  %fn1490 = icmp slt i32 %t1489, 0
  %fz1491 = icmp eq i32 %t1489, 0
  %fc1492 = icmp ult i32 %t1489, %c1488
  %fx11493 = xor i32 %c1488, %t1489
  %fx21494 = xor i32 1, %t1489
  %fva1495 = and i32 %fx11493, %fx21494
  %fv1496 = icmp slt i32 %fva1495, 0
  %nz1497 = zext i1 %fn1490 to i64
  %zz1498 = zext i1 %fz1491 to i64
  %cz1499 = zext i1 %fc1492 to i64
  %vz1500 = zext i1 %fv1496 to i64
  %ns1501 = shl i64 %nz1497, 31
  %zs1502 = shl i64 %zz1498, 30
  %cs1503 = shl i64 %cz1499, 29
  %vs1504 = shl i64 %vz1500, 28
  %nzor1505 = or i64 %ns1501, %zs1502
  %cvor1506 = or i64 %cs1503, %vs1504
  %nzcv1507 = or i64 %nzor1505, %cvor1506
  %wp1508 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1507, ptr %wp1508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e75fc word 0x1a8cb3ec
  %r1509.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1509 = load i64, ptr %r1509.p, align 8, !alias.scope !3, !noalias !4
  %c1510 = trunc i64 %r1509 to i32
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %fsh1513 = lshr i64 %r1511, 31
  %ftr1514 = trunc i64 %fsh1513 to i1
  %fsh1515 = lshr i64 %r1511, 28
  %ftr1516 = trunc i64 %fsh1515 to i1
  %cond1512 = icmp ne i1 %ftr1514, %ftr1516
  %sel1517 = select i1 %cond1512, i32 0, i32 %c1510
  %c1518 = zext i32 %sel1517 to i64
  %wp1519 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1518, ptr %wp1519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7600 word 0x9b2c492d
  %r1520.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1520 = load i64, ptr %r1520.p, align 8, !alias.scope !3, !noalias !4
  %c1521 = trunc i64 %r1520 to i32
  %c1522 = sext i32 %c1521 to i64
  %r1523.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1523 = load i64, ptr %r1523.p, align 8, !alias.scope !3, !noalias !4
  %c1524 = trunc i64 %r1523 to i32
  %c1525 = sext i32 %c1524 to i64
  %t1526 = mul i64 %c1522, %c1525
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %t1528 = add i64 %r1527, %t1526
  %wp1529 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1528, ptr %wp1529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7604 word 0x9b2c7d29
  %r1530.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1530 = load i64, ptr %r1530.p, align 8, !alias.scope !3, !noalias !4
  %c1531 = trunc i64 %r1530 to i32
  %c1532 = sext i32 %c1531 to i64
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %c1534 = trunc i64 %r1533 to i32
  %c1535 = sext i32 %c1534 to i64
  %t1536 = mul i64 %c1532, %c1535
  %t1537 = add i64 0, %t1536
  %wp1538 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1537, ptr %wp1538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7608 word 0x93407d29
  %r1539.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1539 = load i64, ptr %r1539.p, align 8, !alias.scope !3, !noalias !4
  %t1540 = lshr i64 %r1539, 31
  %t1541 = and i64 %t1540, 1
  %t1542 = sub i64 0, %t1541
  %t1543 = and i64 %t1542, -4294967296
  %t1544 = and i64 %r1539, 4294967295
  %t1545 = or i64 %t1543, %t1544
  %wp1546 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1545, ptr %wp1546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e760c word 0x529fe00c
  %c1547 = zext i32 65280 to i64
  %wp1548 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1547, ptr %wp1548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7610 word 0x72a8efec
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = and i64 %r1549, -4294901761
  %t1551 = or i64 %t1550, 1199505408
  %c1552 = trunc i64 %t1551 to i32
  %c1553 = zext i32 %c1552 to i64
  %wp1554 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1553, ptr %wp1554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7614 word 0x7e21d884
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 4, i32 4)
  ; @pc 0x8004e7618 word 0x1e270187
  %r1555.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1555 = load i64, ptr %r1555.p, align 8, !alias.scope !3, !noalias !4
  %c1556 = trunc i64 %r1555 to i32
  %c1557 = zext i32 %c1556 to i128
  %wp1558 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c1557, ptr %wp1558, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e761c word 0x7c6d6a26
  %r1559.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1559 = load i64, ptr %r1559.p, align 8, !alias.scope !3, !noalias !4
  %r1560.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1560 = load i64, ptr %r1560.p, align 8, !alias.scope !3, !noalias !4
  %t1561 = add i64 %r1559, %r1560
  %gmp1562 = inttoptr i64 %t1561 to ptr
  %gml1563 = load i16, ptr %gmp1562, align 1, !alias.scope !4, !noalias !3
  %c1564 = zext i16 %gml1563 to i128
  %wp1565 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c1564, ptr %wp1565, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7620 word 0x1100060d
  %r1566.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1566 = load i64, ptr %r1566.p, align 8, !alias.scope !3, !noalias !4
  %c1567 = trunc i64 %r1566 to i32
  %t1568 = add i32 %c1567, 1
  %c1569 = zext i32 %t1568 to i64
  %wp1570 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1569, ptr %wp1570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7624 word 0x6b0f01bf
  %r1571.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1571 = load i64, ptr %r1571.p, align 8, !alias.scope !3, !noalias !4
  %c1572 = trunc i64 %r1571 to i32
  %r1573.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1573 = load i64, ptr %r1573.p, align 8, !alias.scope !3, !noalias !4
  %c1574 = trunc i64 %r1573 to i32
  %t1575 = sub i32 %c1572, %c1574
  %fn1576 = icmp slt i32 %t1575, 0
  %fz1577 = icmp eq i32 %t1575, 0
  %fc1578 = icmp uge i32 %c1572, %c1574
  %fx11579 = xor i32 %c1572, %c1574
  %fx21580 = xor i32 %c1572, %t1575
  %fva1581 = and i32 %fx11579, %fx21580
  %fv1582 = icmp slt i32 %fva1581, 0
  %nz1583 = zext i1 %fn1576 to i64
  %zz1584 = zext i1 %fz1577 to i64
  %cz1585 = zext i1 %fc1578 to i64
  %vz1586 = zext i1 %fv1582 to i64
  %ns1587 = shl i64 %nz1583, 31
  %zs1588 = shl i64 %zz1584, 30
  %cs1589 = shl i64 %cz1585, 29
  %vs1590 = shl i64 %vz1586, 28
  %nzor1591 = or i64 %ns1587, %zs1588
  %cvor1592 = or i64 %cs1589, %vs1590
  %nzcv1593 = or i64 %nzor1591, %cvor1592
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1593, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7628 word 0x1a90a5ed
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %c1596 = trunc i64 %r1595 to i32
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %c1598 = trunc i64 %r1597 to i32
  %t1599 = add i32 %c1598, 1
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %fsh1602 = lshr i64 %r1600, 31
  %ftr1603 = trunc i64 %fsh1602 to i1
  %fsh1604 = lshr i64 %r1600, 28
  %ftr1605 = trunc i64 %fsh1604 to i1
  %cond1601 = icmp eq i1 %ftr1603, %ftr1605
  %sel1606 = select i1 %cond1601, i32 %c1596, i32 %t1599
  %c1607 = zext i32 %sel1606 to i64
  %wp1608 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1607, ptr %wp1608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e762c word 0x3100061f
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %c1610 = trunc i64 %r1609 to i32
  %t1611 = add i32 %c1610, 1
  %fn1612 = icmp slt i32 %t1611, 0
  %fz1613 = icmp eq i32 %t1611, 0
  %fc1614 = icmp ult i32 %t1611, %c1610
  %fx11615 = xor i32 %c1610, %t1611
  %fx21616 = xor i32 1, %t1611
  %fva1617 = and i32 %fx11615, %fx21616
  %fv1618 = icmp slt i32 %fva1617, 0
  %nz1619 = zext i1 %fn1612 to i64
  %zz1620 = zext i1 %fz1613 to i64
  %cz1621 = zext i1 %fc1614 to i64
  %vz1622 = zext i1 %fv1618 to i64
  %ns1623 = shl i64 %nz1619, 31
  %zs1624 = shl i64 %zz1620, 30
  %cs1625 = shl i64 %cz1621, 29
  %vs1626 = shl i64 %vz1622, 28
  %nzor1627 = or i64 %ns1623, %zs1624
  %cvor1628 = or i64 %cs1625, %vs1626
  %nzcv1629 = or i64 %nzor1627, %cvor1628
  %wp1630 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1629, ptr %wp1630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7630 word 0x93407cef
  %r1631.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1631 = load i64, ptr %r1631.p, align 8, !alias.scope !3, !noalias !4
  %t1632 = lshr i64 %r1631, 31
  %t1633 = and i64 %t1632, 1
  %t1634 = sub i64 0, %t1633
  %t1635 = and i64 %t1634, -4294967296
  %t1636 = and i64 %r1631, 4294967295
  %t1637 = or i64 %t1635, %t1636
  %wp1638 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1637, ptr %wp1638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7634 word 0x1a8db3ed
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %c1640 = trunc i64 %r1639 to i32
  %r1641.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1641 = load i64, ptr %r1641.p, align 8, !alias.scope !3, !noalias !4
  %fsh1643 = lshr i64 %r1641, 31
  %ftr1644 = trunc i64 %fsh1643 to i1
  %fsh1645 = lshr i64 %r1641, 28
  %ftr1646 = trunc i64 %fsh1645 to i1
  %cond1642 = icmp ne i1 %ftr1644, %ftr1646
  %sel1647 = select i1 %cond1642, i32 0, i32 %c1640
  %c1648 = zext i32 %sel1647 to i64
  %wp1649 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1648, ptr %wp1649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7638 word 0x9b2d3dcf
  %r1650.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1650 = load i64, ptr %r1650.p, align 8, !alias.scope !3, !noalias !4
  %c1651 = trunc i64 %r1650 to i32
  %c1652 = sext i32 %c1651 to i64
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %c1654 = trunc i64 %r1653 to i32
  %c1655 = sext i32 %c1654 to i64
  %t1656 = mul i64 %c1652, %c1655
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %t1658 = add i64 %r1657, %t1656
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e763c word 0x9b2d25c9
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %c1661 = trunc i64 %r1660 to i32
  %c1662 = sext i32 %c1661 to i64
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %c1664 = trunc i64 %r1663 to i32
  %c1665 = sext i32 %c1664 to i64
  %t1666 = mul i64 %c1662, %c1665
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %t1668 = add i64 %r1667, %t1666
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7640 word 0x7c696a30
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %r1671.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1671 = load i64, ptr %r1671.p, align 8, !alias.scope !3, !noalias !4
  %t1672 = add i64 %r1670, %r1671
  %gmp1673 = inttoptr i64 %t1672 to ptr
  %gml1674 = load i16, ptr %gmp1673, align 1, !alias.scope !4, !noalias !3
  %c1675 = zext i16 %gml1674 to i128
  %wp1676 = getelementptr inbounds i8, ptr %c, i64 768
  store i128 %c1675, ptr %wp1676, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7644 word 0x1e251884
  call void @rt_fp_op_s(ptr %c, i32 5, i32 4, i32 4, i32 5)
  ; @pc 0x8004e7648 word 0x7e21d8c5
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 5, i32 6)
  ; @pc 0x8004e764c word 0x7c6f6a26
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %r1678.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1678 = load i64, ptr %r1678.p, align 8, !alias.scope !3, !noalias !4
  %t1679 = add i64 %r1677, %r1678
  %gmp1680 = inttoptr i64 %t1679 to ptr
  %gml1681 = load i16, ptr %gmp1680, align 1, !alias.scope !4, !noalias !3
  %c1682 = zext i16 %gml1681 to i128
  %wp1683 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c1682, ptr %wp1683, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7650 word 0x1e2718a5
  call void @rt_fp_op_s(ptr %c, i32 5, i32 5, i32 5, i32 7)
  ; @pc 0x8004e7654 word 0x7e21d8c6
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 6, i32 6)
  ; @pc 0x8004e7658 word 0x1e2718c6
  call void @rt_fp_op_s(ptr %c, i32 5, i32 6, i32 6, i32 7)
  ; @pc 0x8004e765c word 0x7e21da10
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 16, i32 16)
  ; @pc 0x8004e7660 word 0x1e271a07
  call void @rt_fp_op_s(ptr %c, i32 5, i32 7, i32 16, i32 7)
  ; @pc 0x8004e7664 word 0x1e2438a5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 5, i32 4)
  ; @pc 0x8004e7668 word 0x1f0210a4
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 4, i32 5, i32 2, i32 4)
  ; @pc 0x8004e766c word 0x1e2638e5
  call void @rt_fp_op_s(ptr %c, i32 1, i32 5, i32 7, i32 6)
  ; @pc 0x8004e7670 word 0x1f0218a2
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 2, i32 5, i32 2, i32 6)
  ; @pc 0x8004e7674 word 0x1e243842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 4)
  ; @pc 0x8004e7678 word 0x1f031042
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 2, i32 2, i32 3, i32 4)
  ; @pc 0x8004e767c word 0x1f020023
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 3, i32 1, i32 2, i32 0)
  ; @pc 0x8004e7680 word 0xbd000003
  %r1684.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1684 = load i64, ptr %r1684.p, align 8, !alias.scope !3, !noalias !4
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 560
  %r1685 = load i128, ptr %r1685.p, align 16, !alias.scope !3, !noalias !4
  %c1686 = trunc i128 %r1685 to i32
  %gmp1687 = inttoptr i64 %r1684 to ptr
  store i32 %c1686, ptr %gmp1687, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7684 word 0xb9400d6c
  %r1688.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1688 = load i64, ptr %r1688.p, align 8, !alias.scope !3, !noalias !4
  %t1689 = add i64 %r1688, 12
  %gmp1690 = inttoptr i64 %t1689 to ptr
  %gml1691 = load i32, ptr %gmp1690, align 1, !alias.scope !4, !noalias !3
  %c1692 = zext i32 %gml1691 to i64
  %wp1693 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1692, ptr %wp1693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7688 word 0x3940068d
  %r1694.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1694 = load i64, ptr %r1694.p, align 8, !alias.scope !3, !noalias !4
  %t1695 = add i64 %r1694, 1
  %gmp1696 = inttoptr i64 %t1695 to ptr
  %gml1697 = load i8, ptr %gmp1696, align 1, !alias.scope !4, !noalias !3
  %c1698 = zext i8 %gml1697 to i64
  %wp1699 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1698, ptr %wp1699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e768c word 0x1acd2589
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %c1701 = trunc i64 %r1700 to i32
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %c1703 = trunc i64 %r1702 to i32
  %t1704 = and i32 %c1703, 31
  %t1705 = lshr i32 %c1701, %t1704
  %c1706 = zext i32 %t1705 to i64
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7690 word 0x360001a9
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = and i64 %r1708, 1
  %cmp1710 = icmp eq i64 %t1709, 0
  br i1 %cmp1710, label %L_8004e76c4, label %L_8004e7694_ft
L_8004e76a8:
  ; @pc 0x8004e76a8 word 0xf86a5929
  %r1757.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1757 = load i64, ptr %r1757.p, align 8, !alias.scope !3, !noalias !4
  %r1758.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1758 = load i64, ptr %r1758.p, align 8, !alias.scope !3, !noalias !4
  %c1759 = trunc i64 %r1758 to i32
  %c1760 = zext i32 %c1759 to i64
  %t1761 = shl i64 %c1760, 3
  %t1762 = add i64 %r1757, %t1761
  %gmp1763 = inttoptr i64 %t1762 to ptr
  %gml1764 = load i64, ptr %gmp1763, align 1, !alias.scope !4, !noalias !3
  %wp1765 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1764, ptr %wp1765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76ac word 0xb40000c9
  %r1766.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1766 = load i64, ptr %r1766.p, align 8, !alias.scope !3, !noalias !4
  %cmp1767 = icmp eq i64 %r1766, 0
  br i1 %cmp1767, label %L_8004e76c4, label %L_8004e76b0_ft
L_8004e76b4:
  ; @pc 0x8004e76b4 word 0x885f7d2a
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %atp1772 = inttoptr i64 %r1771 to ptr
  %ldx1773 = load atomic i32, ptr %atp1772 acquire, align 4, !alias.scope !4, !noalias !3
  %c1774 = zext i32 %ldx1773 to i64
  %fp1775 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r1771, ptr %fp1775, align 8, !alias.scope !3, !noalias !4
  %fp1776 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c1774, ptr %fp1776, align 8, !alias.scope !3, !noalias !4
  %wp1777 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1774, ptr %wp1777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76b8 word 0x5100054a
  %r1778.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1778 = load i64, ptr %r1778.p, align 8, !alias.scope !3, !noalias !4
  %c1779 = trunc i64 %r1778 to i32
  %t1780 = sub i32 %c1779, 1
  %c1781 = zext i32 %t1780 to i64
  %wp1782 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1781, ptr %wp1782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76bc word 0x880b7d2a
  %r1783.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1783 = load i64, ptr %r1783.p, align 8, !alias.scope !3, !noalias !4
  %atp1784 = inttoptr i64 %r1783 to ptr
  %fp1785 = getelementptr inbounds i8, ptr %c, i64 296
  %fv1786 = load i64, ptr %fp1785, align 8, !alias.scope !3, !noalias !4
  %fp1787 = getelementptr inbounds i8, ptr %c, i64 304
  %fv1788 = load i64, ptr %fp1787, align 8, !alias.scope !3, !noalias !4
  %fp1789 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp1789, align 8, !alias.scope !3, !noalias !4
  %cmp1790 = icmp eq i64 %fv1786, %r1783
  %c1791 = trunc i64 %fv1788 to i32
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %c1793 = trunc i64 %r1792 to i32
  %cx1794 = cmpxchg ptr %atp1784, i32 %c1791, i32 %c1793 seq_cst seq_cst, align 4
  %cxok1795 = extractvalue { i32, i1 } %cx1794, 1
  %t1796 = and i1 %cmp1790, %cxok1795
  %sel1797 = select i1 %t1796, i32 0, i32 1
  %c1798 = zext i32 %sel1797 to i64
  %wp1799 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1798, ptr %wp1799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76c0 word 0x35ffffab
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %c1801 = trunc i64 %r1800 to i32
  %cmp1802 = icmp ne i32 %c1801, 0
  br i1 %cmp1802, label %L_8004e76b4, label %L_8004e76c4
L_8004e76c4:
  ; @pc 0x8004e76c4 word 0x37001526
  %r1803.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1803 = load i64, ptr %r1803.p, align 8, !alias.scope !3, !noalias !4
  %t1804 = and i64 %r1803, 1
  %cmp1805 = icmp ne i64 %t1804, 0
  br i1 %cmp1805, label %L_8004e7968, label %L_8004e76c8
L_8004e76c8:
  ; @pc 0x8004e76c8 word 0x36000145
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = and i64 %r1806, 1
  %cmp1808 = icmp eq i64 %t1807, 0
  br i1 %cmp1808, label %L_8004e76f0, label %L_8004e76cc_ft
L_8004e76f0:
  ; @pc 0x8004e76f0 word 0x2a1303e0
  %r1884.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1884 = load i64, ptr %r1884.p, align 8, !alias.scope !3, !noalias !4
  %c1885 = trunc i64 %r1884 to i32
  %t1886 = or i32 0, %c1885
  %c1887 = zext i32 %t1886 to i64
  %wp1888 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1887, ptr %wp1888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76f4 word 0xa9494ff4
  %r1889.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1889 = load i64, ptr %r1889.p, align 8, !alias.scope !3, !noalias !4
  %t1890 = add i64 %r1889, 144
  %t1891 = add i64 %t1890, 8
  %gmp1892 = inttoptr i64 %t1890 to ptr
  %gml1893 = load i64, ptr %gmp1892, align 1, !alias.scope !4, !noalias !3
  %gmp1894 = inttoptr i64 %t1891 to ptr
  %gml1895 = load i64, ptr %gmp1894, align 1, !alias.scope !4, !noalias !3
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1893, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  %wp1897 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1895, ptr %wp1897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76f8 word 0xa94857f6
  %r1898.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1898 = load i64, ptr %r1898.p, align 8, !alias.scope !3, !noalias !4
  %t1899 = add i64 %r1898, 128
  %t1900 = add i64 %t1899, 8
  %gmp1901 = inttoptr i64 %t1899 to ptr
  %gml1902 = load i64, ptr %gmp1901, align 1, !alias.scope !4, !noalias !3
  %gmp1903 = inttoptr i64 %t1900 to ptr
  %gml1904 = load i64, ptr %gmp1903, align 1, !alias.scope !4, !noalias !3
  %wp1905 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1902, ptr %wp1905, align 8, !alias.scope !3, !noalias !4
  %wp1906 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1904, ptr %wp1906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76fc word 0xa9475ff8
  %r1907.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1907 = load i64, ptr %r1907.p, align 8, !alias.scope !3, !noalias !4
  %t1908 = add i64 %r1907, 112
  %t1909 = add i64 %t1908, 8
  %gmp1910 = inttoptr i64 %t1908 to ptr
  %gml1911 = load i64, ptr %gmp1910, align 1, !alias.scope !4, !noalias !3
  %gmp1912 = inttoptr i64 %t1909 to ptr
  %gml1913 = load i64, ptr %gmp1912, align 1, !alias.scope !4, !noalias !3
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1911, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1913, ptr %wp1915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7700 word 0xa94667fa
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %t1917 = add i64 %r1916, 96
  %t1918 = add i64 %t1917, 8
  %gmp1919 = inttoptr i64 %t1917 to ptr
  %gml1920 = load i64, ptr %gmp1919, align 1, !alias.scope !4, !noalias !3
  %gmp1921 = inttoptr i64 %t1918 to ptr
  %gml1922 = load i64, ptr %gmp1921, align 1, !alias.scope !4, !noalias !3
  %wp1923 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1920, ptr %wp1923, align 8, !alias.scope !3, !noalias !4
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1922, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7704 word 0xa9457bfd
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %t1926 = add i64 %r1925, 80
  %t1927 = add i64 %t1926, 8
  %gmp1928 = inttoptr i64 %t1926 to ptr
  %gml1929 = load i64, ptr %gmp1928, align 1, !alias.scope !4, !noalias !3
  %gmp1930 = inttoptr i64 %t1927 to ptr
  %gml1931 = load i64, ptr %gmp1930, align 1, !alias.scope !4, !noalias !3
  %wp1932 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1929, ptr %wp1932, align 8, !alias.scope !3, !noalias !4
  %wp1933 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1931, ptr %wp1933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7708 word 0x910283ff
  %r1934.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1934 = load i64, ptr %r1934.p, align 8, !alias.scope !3, !noalias !4
  %t1935 = add i64 %r1934, 160
  %wp1936 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1935, ptr %wp1936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e770c word 0xd65f03c0
  ret void
L_8004e7710:
  ; @pc 0x8004e7710 word 0x1e3e1003
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 3212836864, ptr %wp1937, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7714 word 0x1e2328c3
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 6, i32 3)
  ; @pc 0x8004e7718 word 0x17ffff96
  br label %L_8004e7570
L_8004e771c:
  ; @pc 0x8004e771c word 0xf9400d08
  %r1938.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1938 = load i64, ptr %r1938.p, align 8, !alias.scope !3, !noalias !4
  %t1939 = add i64 %r1938, 24
  %gmp1940 = inttoptr i64 %t1939 to ptr
  %gml1941 = load i64, ptr %gmp1940, align 1, !alias.scope !4, !noalias !3
  %wp1942 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1941, ptr %wp1942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7720 word 0x17fffebf
  br label %L_8004e721c
L_8004e7724:
  ; @pc 0x8004e7724 word 0x2a1f03f3
  %t1943 = or i32 0, 0
  %c1944 = zext i32 %t1943 to i64
  %wp1945 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1944, ptr %wp1945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7728 word 0x17fffff2
  br label %L_8004e76f0
L_8004e772c:
  ; @pc 0x8004e772c word 0x2a1f03eb
  %t1946 = or i32 0, 0
  %c1947 = zext i32 %t1946 to i64
  %wp1948 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1947, ptr %wp1948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7730 word 0x17ffff0e
  br label %L_8004e7368
L_8004e7734:
  ; @pc 0x8004e7734 word 0x1e3e1002
  %wp1949 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 3212836864, ptr %wp1949, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7738 word 0x1e2228e2
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 7, i32 2)
  ; @pc 0x8004e773c word 0x17ffff7b
  br label %L_8004e7528
L_8004e7740:
  ; @pc 0x8004e7740 word 0x2a0803f3
  %r1950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1950 = load i64, ptr %r1950.p, align 8, !alias.scope !3, !noalias !4
  %c1951 = trunc i64 %r1950 to i32
  %t1952 = or i32 0, %c1951
  %c1953 = zext i32 %t1952 to i64
  %wp1954 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1953, ptr %wp1954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7744 word 0x17ffffeb
  br label %L_8004e76f0
L_8004e7748:
  ; @pc 0x8004e7748 word 0x53017dae
  %r1955.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1955 = load i64, ptr %r1955.p, align 8, !alias.scope !3, !noalias !4
  %c1956 = trunc i64 %r1955 to i32
  %ror1957 = call i32 @llvm.fshr.i32(i32 %c1956, i32 %c1956, i32 1)
  %t1958 = and i32 %ror1957, 2147483647
  %c1959 = zext i32 %t1958 to i64
  %wp1960 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1959, ptr %wp1960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e774c word 0x1200f1ce
  %r1961.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1961 = load i64, ptr %r1961.p, align 8, !alias.scope !3, !noalias !4
  %c1962 = trunc i64 %r1961 to i32
  %t1963 = and i32 %c1962, 1431655765
  %c1964 = zext i32 %t1963 to i64
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1964, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7750 word 0x4b0e01ad
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %c1967 = trunc i64 %r1966 to i32
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %c1969 = trunc i64 %r1968 to i32
  %t1970 = sub i32 %c1967, %c1969
  %c1971 = zext i32 %t1970 to i64
  %wp1972 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1971, ptr %wp1972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7754 word 0x1200e5ae
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %c1974 = trunc i64 %r1973 to i32
  %t1975 = and i32 %c1974, 858993459
  %c1976 = zext i32 %t1975 to i64
  %wp1977 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1976, ptr %wp1977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7758 word 0x53027dad
  %r1978.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1978 = load i64, ptr %r1978.p, align 8, !alias.scope !3, !noalias !4
  %c1979 = trunc i64 %r1978 to i32
  %ror1980 = call i32 @llvm.fshr.i32(i32 %c1979, i32 %c1979, i32 2)
  %t1981 = and i32 %ror1980, 1073741823
  %c1982 = zext i32 %t1981 to i64
  %wp1983 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1982, ptr %wp1983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e775c word 0x1200e5ad
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %c1985 = trunc i64 %r1984 to i32
  %t1986 = and i32 %c1985, 858993459
  %c1987 = zext i32 %t1986 to i64
  %wp1988 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1987, ptr %wp1988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7760 word 0x0b0e01ad
  %r1989.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1989 = load i64, ptr %r1989.p, align 8, !alias.scope !3, !noalias !4
  %c1990 = trunc i64 %r1989 to i32
  %r1991.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1991 = load i64, ptr %r1991.p, align 8, !alias.scope !3, !noalias !4
  %c1992 = trunc i64 %r1991 to i32
  %t1993 = add i32 %c1990, %c1992
  %c1994 = zext i32 %t1993 to i64
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1994, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7764 word 0x0b4d11ad
  %r1996.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1996 = load i64, ptr %r1996.p, align 8, !alias.scope !3, !noalias !4
  %c1997 = trunc i64 %r1996 to i32
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %c1999 = trunc i64 %r1998 to i32
  %t2000 = lshr i32 %c1999, 4
  %t2001 = add i32 %c1997, %t2000
  %c2002 = zext i32 %t2001 to i64
  %wp2003 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2002, ptr %wp2003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7768 word 0x1200cdad
  %r2004.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2004 = load i64, ptr %r2004.p, align 8, !alias.scope !3, !noalias !4
  %c2005 = trunc i64 %r2004 to i32
  %t2006 = and i32 %c2005, 252645135
  %c2007 = zext i32 %t2006 to i64
  %wp2008 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2007, ptr %wp2008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e776c word 0x0b4d21ad
  %r2009.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2009 = load i64, ptr %r2009.p, align 8, !alias.scope !3, !noalias !4
  %c2010 = trunc i64 %r2009 to i32
  %r2011.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2011 = load i64, ptr %r2011.p, align 8, !alias.scope !3, !noalias !4
  %c2012 = trunc i64 %r2011 to i32
  %t2013 = lshr i32 %c2012, 8
  %t2014 = add i32 %c2010, %t2013
  %c2015 = zext i32 %t2014 to i64
  %wp2016 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2015, ptr %wp2016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7770 word 0x0b4d41ad
  %r2017.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2017 = load i64, ptr %r2017.p, align 8, !alias.scope !3, !noalias !4
  %c2018 = trunc i64 %r2017 to i32
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %c2020 = trunc i64 %r2019 to i32
  %t2021 = lshr i32 %c2020, 16
  %t2022 = add i32 %c2018, %t2021
  %c2023 = zext i32 %t2022 to i64
  %wp2024 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2023, ptr %wp2024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7774 word 0x120015ad
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %c2026 = trunc i64 %r2025 to i32
  %t2027 = and i32 %c2026, 63
  %c2028 = zext i32 %t2027 to i64
  %wp2029 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2028, ptr %wp2029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7778 word 0x17ffff19
  br label %L_8004e73dc
L_8004e777c:
  ; @pc 0x8004e777c word 0xaa1f03eb
  %t2030 = or i64 0, 0
  %wp2031 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2030, ptr %wp2031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7780 word 0x17ffff29
  br label %L_8004e7424
L_8004e7784:
  ; @pc 0x8004e7784 word 0xf900085f
  %r2032.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2032 = load i64, ptr %r2032.p, align 8, !alias.scope !3, !noalias !4
  %t2033 = add i64 %r2032, 16
  %gmp2034 = inttoptr i64 %t2033 to ptr
  store i64 0, ptr %gmp2034, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7788 word 0x12800053
  %c2035 = zext i32 -3 to i64
  %wp2036 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2035, ptr %wp2036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e778c word 0x17ffffcf
  br label %L_8004e76c8
L_8004e7790:
  ; @pc 0x8004e7790 word 0xb001aef4
  %wp2037 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34421358592, ptr %wp2037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7794 word 0x91258294
  %r2038.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2038 = load i64, ptr %r2038.p, align 8, !alias.scope !3, !noalias !4
  %t2039 = add i64 %r2038, 2400
  %wp2040 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2039, ptr %wp2040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7798 word 0x17fffe9e
  br label %L_8004e7210
L_8004e779c:
  ; @pc 0x8004e779c word 0xb001a374
  %wp2041 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419851264, ptr %wp2041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77a0 word 0x91002129
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %t2043 = add i64 %r2042, 8
  %wp2044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2043, ptr %wp2044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77a4 word 0xf942b294
  %r2045.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2045 = load i64, ptr %r2045.p, align 8, !alias.scope !3, !noalias !4
  %t2046 = add i64 %r2045, 1376
  %gmp2047 = inttoptr i64 %t2046 to ptr
  %gml2048 = load i64, ptr %gmp2047, align 1, !alias.scope !4, !noalias !3
  %wp2049 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2048, ptr %wp2049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77a8 word 0xf100214a
  %r2050.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2050 = load i64, ptr %r2050.p, align 8, !alias.scope !3, !noalias !4
  %t2051 = sub i64 %r2050, 8
  %fn2052 = icmp slt i64 %t2051, 0
  %fz2053 = icmp eq i64 %t2051, 0
  %fc2054 = icmp uge i64 %r2050, 8
  %fx12055 = xor i64 %r2050, 8
  %fx22056 = xor i64 %r2050, %t2051
  %fva2057 = and i64 %fx12055, %fx22056
  %fv2058 = icmp slt i64 %fva2057, 0
  %nz2059 = zext i1 %fn2052 to i64
  %zz2060 = zext i1 %fz2053 to i64
  %cz2061 = zext i1 %fc2054 to i64
  %vz2062 = zext i1 %fv2058 to i64
  %ns2063 = shl i64 %nz2059, 31
  %zs2064 = shl i64 %zz2060, 30
  %cs2065 = shl i64 %cz2061, 29
  %vs2066 = shl i64 %vz2062, 28
  %nzor2067 = or i64 %ns2063, %zs2064
  %cvor2068 = or i64 %cs2065, %vs2066
  %nzcv2069 = or i64 %nzor2067, %cvor2068
  %wp2070 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2069, ptr %wp2070, align 8, !alias.scope !3, !noalias !4
  %wp2071 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2051, ptr %wp2071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77ac word 0x54ffd2c1
  %r2072.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2072 = load i64, ptr %r2072.p, align 8, !alias.scope !3, !noalias !4
  %fsh2074 = lshr i64 %r2072, 30
  %ftr2075 = trunc i64 %fsh2074 to i1
  %cond2073 = xor i1 %ftr2075, true
  br i1 %cond2073, label %L_8004e7204, label %L_8004e77b0_ft
L_8004e77b4:
  ; @pc 0x8004e77b4 word 0x2a0a03f3
  %r2076.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2076 = load i64, ptr %r2076.p, align 8, !alias.scope !3, !noalias !4
  %c2077 = trunc i64 %r2076 to i32
  %t2078 = or i32 0, %c2077
  %c2079 = zext i32 %t2078 to i64
  %wp2080 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2079, ptr %wp2080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77b8 word 0x17ffffc4
  br label %L_8004e76c8
L_8004e77bc:
  ; @pc 0x8004e77bc word 0xf9400d0c
  %r2081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2081 = load i64, ptr %r2081.p, align 8, !alias.scope !3, !noalias !4
  %t2082 = add i64 %r2081, 24
  %gmp2083 = inttoptr i64 %t2082 to ptr
  %gml2084 = load i64, ptr %gmp2083, align 1, !alias.scope !4, !noalias !3
  %wp2085 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2084, ptr %wp2085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77c0 word 0xb4001fec
  %r2086.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2086 = load i64, ptr %r2086.p, align 8, !alias.scope !3, !noalias !4
  %cmp2087 = icmp eq i64 %r2086, 0
  br i1 %cmp2087, label %L_8004e7bbc, label %L_8004e77c4_ft
L_8004e77cc:
  ; @pc 0x8004e77cc word 0x8b080d28
  %r2097.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2097 = load i64, ptr %r2097.p, align 8, !alias.scope !3, !noalias !4
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %t2099 = shl i64 %r2098, 3
  %t2100 = add i64 %r2097, %t2099
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77d0 word 0x2a1f03f3
  %t2102 = or i32 0, 0
  %c2103 = zext i32 %t2102 to i64
  %wp2104 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2103, ptr %wp2104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77d4 word 0x2d401d06
  %r2105.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2105 = load i64, ptr %r2105.p, align 8, !alias.scope !3, !noalias !4
  %t2106 = add i64 %r2105, 4
  %gmp2107 = inttoptr i64 %r2105 to ptr
  %gml2108 = load i32, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  %gmp2109 = inttoptr i64 %t2106 to ptr
  %gml2110 = load i32, ptr %gmp2109, align 1, !alias.scope !4, !noalias !3
  %c2111 = zext i32 %gml2108 to i128
  %wp2112 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c2111, ptr %wp2112, align 16, !alias.scope !3, !noalias !4
  %c2113 = zext i32 %gml2110 to i128
  %wp2114 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c2113, ptr %wp2114, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77d8 word 0xaa0c03e8
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %t2116 = or i64 0, %r2115
  %wp2117 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2116, ptr %wp2117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77dc word 0x1f0388e2
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 2, i32 7, i32 3, i32 2)
  ; @pc 0x8004e77e0 word 0x1f0390c4
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 4, i32 6, i32 3, i32 4)
  ; @pc 0x8004e77e4 word 0x1e232863
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 3, i32 3)
  ; @pc 0x8004e77e8 word 0xb5ffde0c
  %r2118.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2118 = load i64, ptr %r2118.p, align 8, !alias.scope !3, !noalias !4
  %cmp2119 = icmp ne i64 %r2118, 0
  br i1 %cmp2119, label %L_8004e73a8, label %L_8004e77ec_ft
L_8004e77f0:
  ; @pc 0x8004e77f0 word 0x53017dae
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %c2121 = trunc i64 %r2120 to i32
  %ror2122 = call i32 @llvm.fshr.i32(i32 %c2121, i32 %c2121, i32 1)
  %t2123 = and i32 %ror2122, 2147483647
  %c2124 = zext i32 %t2123 to i64
  %wp2125 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2124, ptr %wp2125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77f4 word 0x1200f1ce
  %r2126.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2126 = load i64, ptr %r2126.p, align 8, !alias.scope !3, !noalias !4
  %c2127 = trunc i64 %r2126 to i32
  %t2128 = and i32 %c2127, 1431655765
  %c2129 = zext i32 %t2128 to i64
  %wp2130 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2129, ptr %wp2130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77f8 word 0x4b0e01ae
  %r2131.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2131 = load i64, ptr %r2131.p, align 8, !alias.scope !3, !noalias !4
  %c2132 = trunc i64 %r2131 to i32
  %r2133.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2133 = load i64, ptr %r2133.p, align 8, !alias.scope !3, !noalias !4
  %c2134 = trunc i64 %r2133 to i32
  %t2135 = sub i32 %c2132, %c2134
  %c2136 = zext i32 %t2135 to i64
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2136, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77fc word 0x1200e5cf
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %c2139 = trunc i64 %r2138 to i32
  %t2140 = and i32 %c2139, 858993459
  %c2141 = zext i32 %t2140 to i64
  %wp2142 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2141, ptr %wp2142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7800 word 0x53027dce
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2143 = load i64, ptr %r2143.p, align 8, !alias.scope !3, !noalias !4
  %c2144 = trunc i64 %r2143 to i32
  %ror2145 = call i32 @llvm.fshr.i32(i32 %c2144, i32 %c2144, i32 2)
  %t2146 = and i32 %ror2145, 1073741823
  %c2147 = zext i32 %t2146 to i64
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7804 word 0x1200e5ce
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %c2150 = trunc i64 %r2149 to i32
  %t2151 = and i32 %c2150, 858993459
  %c2152 = zext i32 %t2151 to i64
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7808 word 0x0b0f01ce
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %c2155 = trunc i64 %r2154 to i32
  %r2156.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2156 = load i64, ptr %r2156.p, align 8, !alias.scope !3, !noalias !4
  %c2157 = trunc i64 %r2156 to i32
  %t2158 = add i32 %c2155, %c2157
  %c2159 = zext i32 %t2158 to i64
  %wp2160 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2159, ptr %wp2160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e780c word 0x0b4e11ce
  %r2161.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2161 = load i64, ptr %r2161.p, align 8, !alias.scope !3, !noalias !4
  %c2162 = trunc i64 %r2161 to i32
  %r2163.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2163 = load i64, ptr %r2163.p, align 8, !alias.scope !3, !noalias !4
  %c2164 = trunc i64 %r2163 to i32
  %t2165 = lshr i32 %c2164, 4
  %t2166 = add i32 %c2162, %t2165
  %c2167 = zext i32 %t2166 to i64
  %wp2168 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2167, ptr %wp2168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7810 word 0x1200cdce
  %r2169.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2169 = load i64, ptr %r2169.p, align 8, !alias.scope !3, !noalias !4
  %c2170 = trunc i64 %r2169 to i32
  %t2171 = and i32 %c2170, 252645135
  %c2172 = zext i32 %t2171 to i64
  %wp2173 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2172, ptr %wp2173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7814 word 0x0b4e21ce
  %r2174.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2174 = load i64, ptr %r2174.p, align 8, !alias.scope !3, !noalias !4
  %c2175 = trunc i64 %r2174 to i32
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %c2177 = trunc i64 %r2176 to i32
  %t2178 = lshr i32 %c2177, 8
  %t2179 = add i32 %c2175, %t2178
  %c2180 = zext i32 %t2179 to i64
  %wp2181 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2180, ptr %wp2181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7818 word 0x0b4e41ce
  %r2182.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2182 = load i64, ptr %r2182.p, align 8, !alias.scope !3, !noalias !4
  %c2183 = trunc i64 %r2182 to i32
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %c2185 = trunc i64 %r2184 to i32
  %t2186 = lshr i32 %c2185, 16
  %t2187 = add i32 %c2183, %t2186
  %c2188 = zext i32 %t2187 to i64
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e781c word 0x120015cf
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %c2191 = trunc i64 %r2190 to i32
  %t2192 = and i32 %c2191, 63
  %c2193 = zext i32 %t2192 to i64
  %wp2194 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2193, ptr %wp2194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7820 word 0x17ffff15
  br label %L_8004e7474
L_8004e7824:
  ; @pc 0x8004e7824 word 0xf94005f0
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %t2196 = add i64 %r2195, 8
  %gmp2197 = inttoptr i64 %t2196 to ptr
  %gml2198 = load i64, ptr %gmp2197, align 1, !alias.scope !4, !noalias !3
  %wp2199 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml2198, ptr %wp2199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7828 word 0xb40000d0
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %cmp2201 = icmp eq i64 %r2200, 0
  br i1 %cmp2201, label %L_8004e7840, label %L_8004e782c_ft
L_8004e7840:
  ; @pc 0x8004e7840 word 0x710009bf
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %c2227 = trunc i64 %r2226 to i32
  %t2228 = sub i32 %c2227, 2
  %fn2229 = icmp slt i32 %t2228, 0
  %fz2230 = icmp eq i32 %t2228, 0
  %fc2231 = icmp uge i32 %c2227, 2
  %fx12232 = xor i32 %c2227, 2
  %fx22233 = xor i32 %c2227, %t2228
  %fva2234 = and i32 %fx12232, %fx22233
  %fv2235 = icmp slt i32 %fva2234, 0
  %nz2236 = zext i1 %fn2229 to i64
  %zz2237 = zext i1 %fz2230 to i64
  %cz2238 = zext i1 %fc2231 to i64
  %vz2239 = zext i1 %fv2235 to i64
  %ns2240 = shl i64 %nz2236, 31
  %zs2241 = shl i64 %zz2237, 30
  %cs2242 = shl i64 %cz2238, 29
  %vs2243 = shl i64 %vz2239, 28
  %nzor2244 = or i64 %ns2240, %zs2241
  %cvor2245 = or i64 %cs2242, %vs2243
  %nzcv2246 = or i64 %nzor2244, %cvor2245
  %wp2247 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2246, ptr %wp2247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7844 word 0x540001a3
  %r2248.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2248 = load i64, ptr %r2248.p, align 8, !alias.scope !3, !noalias !4
  %fsh2250 = lshr i64 %r2248, 29
  %ftr2251 = trunc i64 %fsh2250 to i1
  %cond2249 = xor i1 %ftr2251, true
  br i1 %cond2249, label %L_8004e7878, label %L_8004e7848_ft
L_8004e7878:
  ; @pc 0x8004e7878 word 0xf86d59cd
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %r2328.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2328 = load i64, ptr %r2328.p, align 8, !alias.scope !3, !noalias !4
  %c2329 = trunc i64 %r2328 to i32
  %c2330 = zext i32 %c2329 to i64
  %t2331 = shl i64 %c2330, 3
  %t2332 = add i64 %r2327, %t2331
  %gmp2333 = inttoptr i64 %t2332 to ptr
  %gml2334 = load i64, ptr %gmp2333, align 1, !alias.scope !4, !noalias !3
  %wp2335 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2334, ptr %wp2335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e787c word 0xb4ffdccd
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %cmp2337 = icmp eq i64 %r2336, 0
  br i1 %cmp2337, label %L_8004e7414, label %L_8004e7880_ft
L_8004e7884:
  ; @pc 0x8004e7884 word 0x885f7dae
  %r2341.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2341 = load i64, ptr %r2341.p, align 8, !alias.scope !3, !noalias !4
  %atp2342 = inttoptr i64 %r2341 to ptr
  %ldx2343 = load atomic i32, ptr %atp2342 acquire, align 4, !alias.scope !4, !noalias !3
  %c2344 = zext i32 %ldx2343 to i64
  %fp2345 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2341, ptr %fp2345, align 8, !alias.scope !3, !noalias !4
  %fp2346 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2344, ptr %fp2346, align 8, !alias.scope !3, !noalias !4
  %wp2347 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2344, ptr %wp2347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7888 word 0x510005ce
  %r2348.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2348 = load i64, ptr %r2348.p, align 8, !alias.scope !3, !noalias !4
  %c2349 = trunc i64 %r2348 to i32
  %t2350 = sub i32 %c2349, 1
  %c2351 = zext i32 %t2350 to i64
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2351, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e788c word 0x880f7dae
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %atp2354 = inttoptr i64 %r2353 to ptr
  %fp2355 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2356 = load i64, ptr %fp2355, align 8, !alias.scope !3, !noalias !4
  %fp2357 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2358 = load i64, ptr %fp2357, align 8, !alias.scope !3, !noalias !4
  %fp2359 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2359, align 8, !alias.scope !3, !noalias !4
  %cmp2360 = icmp eq i64 %fv2356, %r2353
  %c2361 = trunc i64 %fv2358 to i32
  %r2362.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2362 = load i64, ptr %r2362.p, align 8, !alias.scope !3, !noalias !4
  %c2363 = trunc i64 %r2362 to i32
  %cx2364 = cmpxchg ptr %atp2354, i32 %c2361, i32 %c2363 seq_cst seq_cst, align 4
  %cxok2365 = extractvalue { i32, i1 } %cx2364, 1
  %t2366 = and i1 %cmp2360, %cxok2365
  %sel2367 = select i1 %t2366, i32 0, i32 1
  %c2368 = zext i32 %sel2367 to i64
  %wp2369 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2368, ptr %wp2369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7890 word 0x35ffffaf
  %r2370.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2370 = load i64, ptr %r2370.p, align 8, !alias.scope !3, !noalias !4
  %c2371 = trunc i64 %r2370 to i32
  %cmp2372 = icmp ne i32 %c2371, 0
  br i1 %cmp2372, label %L_8004e7884, label %L_8004e7894_ft
L_8004e7898:
  ; @pc 0x8004e7898 word 0x53017da8
  %r2373.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2373 = load i64, ptr %r2373.p, align 8, !alias.scope !3, !noalias !4
  %c2374 = trunc i64 %r2373 to i32
  %ror2375 = call i32 @llvm.fshr.i32(i32 %c2374, i32 %c2374, i32 1)
  %t2376 = and i32 %ror2375, 2147483647
  %c2377 = zext i32 %t2376 to i64
  %wp2378 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2377, ptr %wp2378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e789c word 0x1200f108
  %r2379.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2379 = load i64, ptr %r2379.p, align 8, !alias.scope !3, !noalias !4
  %c2380 = trunc i64 %r2379 to i32
  %t2381 = and i32 %c2380, 1431655765
  %c2382 = zext i32 %t2381 to i64
  %wp2383 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2382, ptr %wp2383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78a0 word 0x4b0801a8
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %c2385 = trunc i64 %r2384 to i32
  %r2386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2386 = load i64, ptr %r2386.p, align 8, !alias.scope !3, !noalias !4
  %c2387 = trunc i64 %r2386 to i32
  %t2388 = sub i32 %c2385, %c2387
  %c2389 = zext i32 %t2388 to i64
  %wp2390 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2389, ptr %wp2390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78a4 word 0x1200e509
  %r2391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2391 = load i64, ptr %r2391.p, align 8, !alias.scope !3, !noalias !4
  %c2392 = trunc i64 %r2391 to i32
  %t2393 = and i32 %c2392, 858993459
  %c2394 = zext i32 %t2393 to i64
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78a8 word 0x53027d08
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %c2397 = trunc i64 %r2396 to i32
  %ror2398 = call i32 @llvm.fshr.i32(i32 %c2397, i32 %c2397, i32 2)
  %t2399 = and i32 %ror2398, 1073741823
  %c2400 = zext i32 %t2399 to i64
  %wp2401 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2400, ptr %wp2401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78ac word 0x1200e508
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %c2403 = trunc i64 %r2402 to i32
  %t2404 = and i32 %c2403, 858993459
  %c2405 = zext i32 %t2404 to i64
  %wp2406 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2405, ptr %wp2406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78b0 word 0x0b090108
  %r2407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2407 = load i64, ptr %r2407.p, align 8, !alias.scope !3, !noalias !4
  %c2408 = trunc i64 %r2407 to i32
  %r2409.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2409 = load i64, ptr %r2409.p, align 8, !alias.scope !3, !noalias !4
  %c2410 = trunc i64 %r2409 to i32
  %t2411 = add i32 %c2408, %c2410
  %c2412 = zext i32 %t2411 to i64
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2412, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78b4 word 0x0b481108
  %r2414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2414 = load i64, ptr %r2414.p, align 8, !alias.scope !3, !noalias !4
  %c2415 = trunc i64 %r2414 to i32
  %r2416.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2416 = load i64, ptr %r2416.p, align 8, !alias.scope !3, !noalias !4
  %c2417 = trunc i64 %r2416 to i32
  %t2418 = lshr i32 %c2417, 4
  %t2419 = add i32 %c2415, %t2418
  %c2420 = zext i32 %t2419 to i64
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78b8 word 0x1200cd08
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %c2423 = trunc i64 %r2422 to i32
  %t2424 = and i32 %c2423, 252645135
  %c2425 = zext i32 %t2424 to i64
  %wp2426 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2425, ptr %wp2426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78bc word 0x0b482108
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %c2428 = trunc i64 %r2427 to i32
  %r2429.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2429 = load i64, ptr %r2429.p, align 8, !alias.scope !3, !noalias !4
  %c2430 = trunc i64 %r2429 to i32
  %t2431 = lshr i32 %c2430, 8
  %t2432 = add i32 %c2428, %t2431
  %c2433 = zext i32 %t2432 to i64
  %wp2434 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2433, ptr %wp2434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78c0 word 0x0b484108
  %r2435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2435 = load i64, ptr %r2435.p, align 8, !alias.scope !3, !noalias !4
  %c2436 = trunc i64 %r2435 to i32
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %c2438 = trunc i64 %r2437 to i32
  %t2439 = lshr i32 %c2438, 16
  %t2440 = add i32 %c2436, %t2439
  %c2441 = zext i32 %t2440 to i64
  %wp2442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2441, ptr %wp2442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78c4 word 0x1200150d
  %r2443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2443 = load i64, ptr %r2443.p, align 8, !alias.scope !3, !noalias !4
  %c2444 = trunc i64 %r2443 to i32
  %t2445 = and i32 %c2444, 63
  %c2446 = zext i32 %t2445 to i64
  %wp2447 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2446, ptr %wp2447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78c8 word 0x17fffef5
  br label %L_8004e749c
L_8004e78cc:
  ; @pc 0x8004e78cc word 0xf94006a9
  %r2448.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2448 = load i64, ptr %r2448.p, align 8, !alias.scope !3, !noalias !4
  %t2449 = add i64 %r2448, 8
  %gmp2450 = inttoptr i64 %t2449 to ptr
  %gml2451 = load i64, ptr %gmp2450, align 1, !alias.scope !4, !noalias !3
  %wp2452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2451, ptr %wp2452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78d0 word 0xf81e83a0
  %r2453.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2453 = load i64, ptr %r2453.p, align 8, !alias.scope !3, !noalias !4
  %t2454 = add i64 %r2453, -24
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %gmp2456 = inttoptr i64 %t2454 to ptr
  store i64 %r2455, ptr %gmp2456, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e78d4 word 0x2a0303fa
  %r2457.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2457 = load i64, ptr %r2457.p, align 8, !alias.scope !3, !noalias !4
  %c2458 = trunc i64 %r2457 to i32
  %t2459 = or i32 0, %c2458
  %c2460 = zext i32 %t2459 to i64
  %wp2461 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2460, ptr %wp2461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78d8 word 0xa90187e2
  %r2462.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2462 = load i64, ptr %r2462.p, align 8, !alias.scope !3, !noalias !4
  %t2463 = add i64 %r2462, 24
  %t2464 = add i64 %t2463, 8
  %r2465.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2465 = load i64, ptr %r2465.p, align 8, !alias.scope !3, !noalias !4
  %gmp2466 = inttoptr i64 %t2463 to ptr
  store i64 %r2465, ptr %gmp2466, align 1, !alias.scope !4, !noalias !3
  %r2467.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2467 = load i64, ptr %r2467.p, align 8, !alias.scope !3, !noalias !4
  %gmp2468 = inttoptr i64 %t2464 to ptr
  store i64 %r2467, ptr %gmp2468, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e78dc word 0xaa1f03e1
  %t2469 = or i64 0, 0
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78e0 word 0x2a0503f8
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %c2472 = trunc i64 %r2471 to i32
  %t2473 = or i32 0, %c2472
  %c2474 = zext i32 %t2473 to i64
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78e4 word 0x2a0603f6
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %c2477 = trunc i64 %r2476 to i32
  %t2478 = or i32 0, %c2477
  %c2479 = zext i32 %t2478 to i64
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78e8 word 0x2a0403f9
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %c2482 = trunc i64 %r2481 to i32
  %t2483 = or i32 0, %c2482
  %c2484 = zext i32 %t2483 to i64
  %wp2485 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2484, ptr %wp2485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78ec word 0xbc1e43a0
  %r2486.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2486 = load i64, ptr %r2486.p, align 8, !alias.scope !3, !noalias !4
  %t2487 = add i64 %r2486, -28
  %r2488.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2488 = load i128, ptr %r2488.p, align 16, !alias.scope !3, !noalias !4
  %c2489 = trunc i128 %r2488 to i32
  %gmp2490 = inttoptr i64 %t2487 to ptr
  store i32 %c2489, ptr %gmp2490, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e78f0 word 0xaa0b03f7
  %r2491.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2491 = load i64, ptr %r2491.p, align 8, !alias.scope !3, !noalias !4
  %t2492 = or i64 0, %r2491
  %wp2493 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2492, ptr %wp2493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78f4 word 0x910b4128
  %r2494.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2494 = load i64, ptr %r2494.p, align 8, !alias.scope !3, !noalias !4
  %t2495 = add i64 %r2494, 720
  %wp2496 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2495, ptr %wp2496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78f8 word 0xf9419129
  %r2497.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2497 = load i64, ptr %r2497.p, align 8, !alias.scope !3, !noalias !4
  %t2498 = add i64 %r2497, 800
  %gmp2499 = inttoptr i64 %t2498 to ptr
  %gml2500 = load i64, ptr %gmp2499, align 1, !alias.scope !4, !noalias !3
  %wp2501 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2500, ptr %wp2501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e78fc word 0xbd0017e1
  %r2502.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2502 = load i64, ptr %r2502.p, align 8, !alias.scope !3, !noalias !4
  %t2503 = add i64 %r2502, 20
  %r2504.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2504 = load i128, ptr %r2504.p, align 16, !alias.scope !3, !noalias !4
  %c2505 = trunc i128 %r2504 to i32
  %gmp2506 = inttoptr i64 %t2503 to ptr
  store i32 %c2505, ptr %gmp2506, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7900 word 0xaa0803e0
  %r2507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2507 = load i64, ptr %r2507.p, align 8, !alias.scope !3, !noalias !4
  %t2508 = or i64 0, %r2507
  %wp2509 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2508, ptr %wp2509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7904 word 0xbc1e03a3
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %t2511 = add i64 %r2510, -32
  %r2512.p = getelementptr inbounds i8, ptr %c, i64 560
  %r2512 = load i128, ptr %r2512.p, align 16, !alias.scope !3, !noalias !4
  %c2513 = trunc i128 %r2512 to i32
  %gmp2514 = inttoptr i64 %t2511 to ptr
  store i32 %c2513, ptr %gmp2514, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7908 word 0xaa0903e2
  %r2515.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2515 = load i64, ptr %r2515.p, align 8, !alias.scope !3, !noalias !4
  %t2516 = or i64 0, %r2515
  %wp2517 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2516, ptr %wp2517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e790c word 0xbd0013e2
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %t2519 = add i64 %r2518, 16
  %r2520.p = getelementptr inbounds i8, ptr %c, i64 544
  %r2520 = load i128, ptr %r2520.p, align 16, !alias.scope !3, !noalias !4
  %c2521 = trunc i128 %r2520 to i32
  %gmp2522 = inttoptr i64 %t2519 to ptr
  store i32 %c2521, ptr %gmp2522, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7910 word 0xbc1dc3a4
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %t2524 = add i64 %r2523, -36
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 576
  %r2525 = load i128, ptr %r2525.p, align 16, !alias.scope !3, !noalias !4
  %c2526 = trunc i128 %r2525 to i32
  %gmp2527 = inttoptr i64 %t2524 to ptr
  store i32 %c2526, ptr %gmp2527, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7914 word 0xbd000fe6
  %r2528.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2528 = load i64, ptr %r2528.p, align 8, !alias.scope !3, !noalias !4
  %t2529 = add i64 %r2528, 12
  %r2530.p = getelementptr inbounds i8, ptr %c, i64 608
  %r2530 = load i128, ptr %r2530.p, align 16, !alias.scope !3, !noalias !4
  %c2531 = trunc i128 %r2530 to i32
  %gmp2532 = inttoptr i64 %t2529 to ptr
  store i32 %c2531, ptr %gmp2532, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7918 word 0xbd002be7
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %t2534 = add i64 %r2533, 40
  %r2535.p = getelementptr inbounds i8, ptr %c, i64 624
  %r2535 = load i128, ptr %r2535.p, align 16, !alias.scope !3, !noalias !4
  %c2536 = trunc i128 %r2535 to i32
  %gmp2537 = inttoptr i64 %t2534 to ptr
  store i32 %c2536, ptr %gmp2537, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e791c word 0x948bf3b7
  %wp2538 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364881184, ptr %wp2538, align 8, !alias.scope !3, !noalias !4
  call void @f_8027e47f8(ptr %c)
  ; @pc 0x8004e7920 word 0xbd402be7
  %r2539.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2539 = load i64, ptr %r2539.p, align 8, !alias.scope !3, !noalias !4
  %t2540 = add i64 %r2539, 40
  %gmp2541 = inttoptr i64 %t2540 to ptr
  %gml2542 = load i32, ptr %gmp2541, align 1, !alias.scope !4, !noalias !3
  %c2543 = zext i32 %gml2542 to i128
  %wp2544 = getelementptr inbounds i8, ptr %c, i64 624
  store i128 %c2543, ptr %wp2544, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7924 word 0x1e2c1005
  %wp2545 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 1056964608, ptr %wp2545, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7928 word 0xaa1703eb
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %t2547 = or i64 0, %r2546
  %wp2548 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2547, ptr %wp2548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e792c word 0x2d418be6
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2549 = load i64, ptr %r2549.p, align 8, !alias.scope !3, !noalias !4
  %t2550 = add i64 %r2549, 12
  %t2551 = add i64 %t2550, 4
  %gmp2552 = inttoptr i64 %t2550 to ptr
  %gml2553 = load i32, ptr %gmp2552, align 1, !alias.scope !4, !noalias !3
  %gmp2554 = inttoptr i64 %t2551 to ptr
  %gml2555 = load i32, ptr %gmp2554, align 1, !alias.scope !4, !noalias !3
  %c2556 = zext i32 %gml2553 to i128
  %wp2557 = getelementptr inbounds i8, ptr %c, i64 608
  store i128 %c2556, ptr %wp2557, align 16, !alias.scope !3, !noalias !4
  %c2558 = zext i32 %gml2555 to i128
  %wp2559 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2558, ptr %wp2559, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7930 word 0x1280000a
  %c2560 = zext i32 -1 to i64
  %wp2561 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2560, ptr %wp2561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7934 word 0x2d7b8fa4
  %r2562.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2562 = load i64, ptr %r2562.p, align 8, !alias.scope !3, !noalias !4
  %t2563 = add i64 %r2562, -36
  %t2564 = add i64 %t2563, 4
  %gmp2565 = inttoptr i64 %t2563 to ptr
  %gml2566 = load i32, ptr %gmp2565, align 1, !alias.scope !4, !noalias !3
  %gmp2567 = inttoptr i64 %t2564 to ptr
  %gml2568 = load i32, ptr %gmp2567, align 1, !alias.scope !4, !noalias !3
  %c2569 = zext i32 %gml2566 to i128
  %wp2570 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c2569, ptr %wp2570, align 16, !alias.scope !3, !noalias !4
  %c2571 = zext i32 %gml2568 to i128
  %wp2572 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c2571, ptr %wp2572, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7938 word 0x2a1903e4
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %c2574 = trunc i64 %r2573 to i32
  %t2575 = or i32 0, %c2574
  %c2576 = zext i32 %t2575 to i64
  %wp2577 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2576, ptr %wp2577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e793c word 0xbd4017e1
  %r2578.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2578 = load i64, ptr %r2578.p, align 8, !alias.scope !3, !noalias !4
  %t2579 = add i64 %r2578, 20
  %gmp2580 = inttoptr i64 %t2579 to ptr
  %gml2581 = load i32, ptr %gmp2580, align 1, !alias.scope !4, !noalias !3
  %c2582 = zext i32 %gml2581 to i128
  %wp2583 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2582, ptr %wp2583, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7940 word 0x2a1603e6
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %c2585 = trunc i64 %r2584 to i32
  %t2586 = or i32 0, %c2585
  %c2587 = zext i32 %t2586 to i64
  %wp2588 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c2587, ptr %wp2588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7944 word 0x2a1803e5
  %r2589.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2589 = load i64, ptr %r2589.p, align 8, !alias.scope !3, !noalias !4
  %c2590 = trunc i64 %r2589 to i32
  %t2591 = or i32 0, %c2590
  %c2592 = zext i32 %t2591 to i64
  %wp2593 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2592, ptr %wp2593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7948 word 0xbc5e43a0
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %t2595 = add i64 %r2594, -28
  %gmp2596 = inttoptr i64 %t2595 to ptr
  %gml2597 = load i32, ptr %gmp2596, align 1, !alias.scope !4, !noalias !3
  %c2598 = zext i32 %gml2597 to i128
  %wp2599 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2598, ptr %wp2599, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e794c word 0x2a1a03e3
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %c2601 = trunc i64 %r2600 to i32
  %t2602 = or i32 0, %c2601
  %c2603 = zext i32 %t2602 to i64
  %wp2604 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2603, ptr %wp2604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7950 word 0x794026a8
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %t2606 = add i64 %r2605, 18
  %gmp2607 = inttoptr i64 %t2606 to ptr
  %gml2608 = load i16, ptr %gmp2607, align 1, !alias.scope !4, !noalias !3
  %c2609 = zext i16 %gml2608 to i64
  %wp2610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2609, ptr %wp2610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7954 word 0x12137908
  %r2611.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2611 = load i64, ptr %r2611.p, align 8, !alias.scope !3, !noalias !4
  %c2612 = trunc i64 %r2611 to i32
  %t2613 = and i32 %c2612, -4097
  %c2614 = zext i32 %t2613 to i64
  %wp2615 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2614, ptr %wp2615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7958 word 0x790026a8
  %r2616.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2616 = load i64, ptr %r2616.p, align 8, !alias.scope !3, !noalias !4
  %t2617 = add i64 %r2616, 18
  %r2618.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2618 = load i64, ptr %r2618.p, align 8, !alias.scope !3, !noalias !4
  %c2619 = trunc i64 %r2618 to i32
  %c2620 = trunc i32 %c2619 to i16
  %gmp2621 = inttoptr i64 %t2617 to ptr
  store i16 %c2620, ptr %gmp2621, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e795c word 0xf85e83a0
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %t2623 = add i64 %r2622, -24
  %gmp2624 = inttoptr i64 %t2623 to ptr
  %gml2625 = load i64, ptr %gmp2624, align 1, !alias.scope !4, !noalias !3
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7960 word 0xa94187e2
  %r2627.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2627 = load i64, ptr %r2627.p, align 8, !alias.scope !3, !noalias !4
  %t2628 = add i64 %r2627, 24
  %t2629 = add i64 %t2628, 8
  %gmp2630 = inttoptr i64 %t2628 to ptr
  %gml2631 = load i64, ptr %gmp2630, align 1, !alias.scope !4, !noalias !3
  %gmp2632 = inttoptr i64 %t2629 to ptr
  %gml2633 = load i64, ptr %gmp2632, align 1, !alias.scope !4, !noalias !3
  %wp2634 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml2631, ptr %wp2634, align 8, !alias.scope !3, !noalias !4
  %wp2635 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2633, ptr %wp2635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7964 word 0x17fffed2
  br label %L_8004e74ac
L_8004e7968:
  ; @pc 0x8004e7968 word 0xb95df848
  %r2636.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2636 = load i64, ptr %r2636.p, align 8, !alias.scope !3, !noalias !4
  %t2637 = add i64 %r2636, 7672
  %gmp2638 = inttoptr i64 %t2637 to ptr
  %gml2639 = load i32, ptr %gmp2638, align 1, !alias.scope !4, !noalias !3
  %c2640 = zext i32 %gml2639 to i64
  %wp2641 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2640, ptr %wp2641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e796c word 0x2a0503f4
  %r2642.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2642 = load i64, ptr %r2642.p, align 8, !alias.scope !3, !noalias !4
  %c2643 = trunc i64 %r2642 to i32
  %t2644 = or i32 0, %c2643
  %c2645 = zext i32 %t2644 to i64
  %wp2646 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2645, ptr %wp2646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7970 word 0xaa0103f5
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %t2648 = or i64 0, %r2647
  %wp2649 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2648, ptr %wp2649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7974 word 0x2a0303f7
  %r2650.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2650 = load i64, ptr %r2650.p, align 8, !alias.scope !3, !noalias !4
  %c2651 = trunc i64 %r2650 to i32
  %t2652 = or i32 0, %c2651
  %c2653 = zext i32 %t2652 to i64
  %wp2654 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2653, ptr %wp2654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7978 word 0xaa0203f6
  %r2655.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2655 = load i64, ptr %r2655.p, align 8, !alias.scope !3, !noalias !4
  %t2656 = or i64 0, %r2655
  %wp2657 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2656, ptr %wp2657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e797c word 0xf81e83a0
  %r2658.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2658 = load i64, ptr %r2658.p, align 8, !alias.scope !3, !noalias !4
  %t2659 = add i64 %r2658, -24
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %gmp2661 = inttoptr i64 %t2659 to ptr
  store i64 %r2660, ptr %gmp2661, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e7980 word 0x34000fa8
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %c2663 = trunc i64 %r2662 to i32
  %cmp2664 = icmp eq i32 %c2663, 0
  br i1 %cmp2664, label %L_8004e7b74, label %L_8004e7984_ft
L_8004e79c8:
  ; @pc 0x8004e79c8 word 0xb942972c
  %r2746.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2746 = load i64, ptr %r2746.p, align 8, !alias.scope !3, !noalias !4
  %t2747 = add i64 %r2746, 660
  %gmp2748 = inttoptr i64 %t2747 to ptr
  %gml2749 = load i32, ptr %gmp2748, align 1, !alias.scope !4, !noalias !3
  %c2750 = zext i32 %gml2749 to i64
  %wp2751 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2750, ptr %wp2751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79cc word 0x6a2c017f
  %r2752.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2752 = load i64, ptr %r2752.p, align 8, !alias.scope !3, !noalias !4
  %c2753 = trunc i64 %r2752 to i32
  %t2754 = xor i32 %c2753, -1
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %c2756 = trunc i64 %r2755 to i32
  %t2757 = and i32 %c2756, %t2754
  %fn2758 = icmp slt i32 %t2757, 0
  %fz2759 = icmp eq i32 %t2757, 0
  %nz2760 = zext i1 %fn2758 to i64
  %zz2761 = zext i1 %fz2759 to i64
  %ns2762 = shl i64 %nz2760, 31
  %zs2763 = shl i64 %zz2761, 30
  %nzcv2764 = or i64 %ns2762, %zs2763
  %wp2765 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2764, ptr %wp2765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79d0 word 0x54000061
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %fsh2768 = lshr i64 %r2766, 30
  %ftr2769 = trunc i64 %fsh2768 to i1
  %cond2767 = xor i1 %ftr2769, true
  br i1 %cond2767, label %L_8004e79dc, label %L_8004e79d4_ft
L_8004e79dc:
  ; @pc 0x8004e79dc word 0x8b08032c
  %r2779.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2779 = load i64, ptr %r2779.p, align 8, !alias.scope !3, !noalias !4
  %r2780.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2780 = load i64, ptr %r2780.p, align 8, !alias.scope !3, !noalias !4
  %t2781 = add i64 %r2779, %r2780
  %wp2782 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2781, ptr %wp2782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79e0 word 0xf940058c
  %r2783.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2783 = load i64, ptr %r2783.p, align 8, !alias.scope !3, !noalias !4
  %t2784 = add i64 %r2783, 8
  %gmp2785 = inttoptr i64 %t2784 to ptr
  %gml2786 = load i64, ptr %gmp2785, align 1, !alias.scope !4, !noalias !3
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79e4 word 0x8b090199
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %t2790 = add i64 %r2788, %r2789
  %wp2791 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2790, ptr %wp2791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79e8 word 0xeb0a033f
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %r2793.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2793 = load i64, ptr %r2793.p, align 8, !alias.scope !3, !noalias !4
  %t2794 = sub i64 %r2792, %r2793
  %fn2795 = icmp slt i64 %t2794, 0
  %fz2796 = icmp eq i64 %t2794, 0
  %fc2797 = icmp uge i64 %r2792, %r2793
  %fx12798 = xor i64 %r2792, %r2793
  %fx22799 = xor i64 %r2792, %t2794
  %fva2800 = and i64 %fx12798, %fx22799
  %fv2801 = icmp slt i64 %fva2800, 0
  %nz2802 = zext i1 %fn2795 to i64
  %zz2803 = zext i1 %fz2796 to i64
  %cz2804 = zext i1 %fc2797 to i64
  %vz2805 = zext i1 %fv2801 to i64
  %ns2806 = shl i64 %nz2802, 31
  %zs2807 = shl i64 %zz2803, 30
  %cs2808 = shl i64 %cz2804, 29
  %vs2809 = shl i64 %vz2805, 28
  %nzor2810 = or i64 %ns2806, %zs2807
  %cvor2811 = or i64 %cs2808, %vs2809
  %nzcv2812 = or i64 %nzor2810, %cvor2811
  %wp2813 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2812, ptr %wp2813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79ec word 0x54fffee1
  %r2814.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2814 = load i64, ptr %r2814.p, align 8, !alias.scope !3, !noalias !4
  %fsh2816 = lshr i64 %r2814, 30
  %ftr2817 = trunc i64 %fsh2816 to i1
  %cond2815 = xor i1 %ftr2817, true
  br i1 %cond2815, label %L_8004e79c8, label %L_8004e79f0_ft
L_8004e79f4:
  ; @pc 0x8004e79f4 word 0xbd405322
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %t2819 = add i64 %r2818, 80
  %gmp2820 = inttoptr i64 %t2819 to ptr
  %gml2821 = load i32, ptr %gmp2820, align 1, !alias.scope !4, !noalias !3
  %c2822 = zext i32 %gml2821 to i128
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2822, ptr %wp2823, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79f8 word 0x1e212040
  %fcmp2824 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 1, i32 0)
  %wp2825 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2824, ptr %wp2825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79fc word 0xbd405b23
  %r2826.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2826 = load i64, ptr %r2826.p, align 8, !alias.scope !3, !noalias !4
  %t2827 = add i64 %r2826, 88
  %gmp2828 = inttoptr i64 %t2827 to ptr
  %gml2829 = load i32, ptr %gmp2828, align 1, !alias.scope !4, !noalias !3
  %c2830 = zext i32 %gml2829 to i128
  %wp2831 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c2830, ptr %wp2831, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a00 word 0x1e239422
  %r2832.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2832 = load i64, ptr %r2832.p, align 8, !alias.scope !3, !noalias !4
  %fsh2834 = lshr i64 %r2832, 29
  %ftr2835 = trunc i64 %fsh2834 to i1
  %fsh2836 = lshr i64 %r2832, 30
  %ftr2837 = trunc i64 %fsh2836 to i1
  %fnz2838 = xor i1 %ftr2837, true
  %fhi2839 = and i1 %ftr2835, %fnz2838
  %cond2833 = xor i1 %fhi2839, true
  %fccmp2840 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 3, i32 0)
  %sel2841 = select i1 %cond2833, i64 %fccmp2840, i64 536870912
  %wp2842 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel2841, ptr %wp2842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a04 word 0x54fffec8
  %r2843.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2843 = load i64, ptr %r2843.p, align 8, !alias.scope !3, !noalias !4
  %fsh2845 = lshr i64 %r2843, 29
  %ftr2846 = trunc i64 %fsh2845 to i1
  %fsh2847 = lshr i64 %r2843, 30
  %ftr2848 = trunc i64 %fsh2847 to i1
  %fnz2849 = xor i1 %ftr2848, true
  %cond2844 = and i1 %ftr2846, %fnz2849
  br i1 %cond2844, label %L_8004e79dc, label %L_8004e7a08_ft
L_8004e7b6c:
  ; @pc 0x8004e7b6c word 0xaa1a03e0
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %t3398 = or i64 0, %r3397
  %wp3399 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3398, ptr %wp3399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b70 word 0x97eed109
  %wp3400 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364881780, ptr %wp3400, align 8, !alias.scope !3, !noalias !4
  call void @f_80009bf94(ptr %c)
  br label %L_8004e7b74
L_8004e7b74:
  ; @pc 0x8004e7b74 word 0x2a1703e3
  %r3401.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3401 = load i64, ptr %r3401.p, align 8, !alias.scope !3, !noalias !4
  %c3402 = trunc i64 %r3401 to i32
  %t3403 = or i32 0, %c3402
  %c3404 = zext i32 %t3403 to i64
  %wp3405 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c3404, ptr %wp3405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b78 word 0xaa1603e2
  %r3406.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3406 = load i64, ptr %r3406.p, align 8, !alias.scope !3, !noalias !4
  %t3407 = or i64 0, %r3406
  %wp3408 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3407, ptr %wp3408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b7c word 0xaa1503e1
  %r3409.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3409 = load i64, ptr %r3409.p, align 8, !alias.scope !3, !noalias !4
  %t3410 = or i64 0, %r3409
  %wp3411 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3410, ptr %wp3411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b80 word 0x2a1403e5
  %r3412.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3412 = load i64, ptr %r3412.p, align 8, !alias.scope !3, !noalias !4
  %c3413 = trunc i64 %r3412 to i32
  %t3414 = or i32 0, %c3413
  %c3415 = zext i32 %t3414 to i64
  %wp3416 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3415, ptr %wp3416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b84 word 0x17fffed1
  br label %L_8004e76c8
L_8004e7b88:
  ; @pc 0x8004e7b88 word 0x53017d4b
  %r3417.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3417 = load i64, ptr %r3417.p, align 8, !alias.scope !3, !noalias !4
  %c3418 = trunc i64 %r3417 to i32
  %ror3419 = call i32 @llvm.fshr.i32(i32 %c3418, i32 %c3418, i32 1)
  %t3420 = and i32 %ror3419, 2147483647
  %c3421 = zext i32 %t3420 to i64
  %wp3422 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3421, ptr %wp3422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b8c word 0x1200f16b
  %r3423.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3423 = load i64, ptr %r3423.p, align 8, !alias.scope !3, !noalias !4
  %c3424 = trunc i64 %r3423 to i32
  %t3425 = and i32 %c3424, 1431655765
  %c3426 = zext i32 %t3425 to i64
  %wp3427 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3426, ptr %wp3427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b90 word 0x4b0b014a
  %r3428.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3428 = load i64, ptr %r3428.p, align 8, !alias.scope !3, !noalias !4
  %c3429 = trunc i64 %r3428 to i32
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %c3431 = trunc i64 %r3430 to i32
  %t3432 = sub i32 %c3429, %c3431
  %c3433 = zext i32 %t3432 to i64
  %wp3434 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3433, ptr %wp3434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b94 word 0x1200e54b
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3435 = load i64, ptr %r3435.p, align 8, !alias.scope !3, !noalias !4
  %c3436 = trunc i64 %r3435 to i32
  %t3437 = and i32 %c3436, 858993459
  %c3438 = zext i32 %t3437 to i64
  %wp3439 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3438, ptr %wp3439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b98 word 0x53027d4a
  %r3440.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3440 = load i64, ptr %r3440.p, align 8, !alias.scope !3, !noalias !4
  %c3441 = trunc i64 %r3440 to i32
  %ror3442 = call i32 @llvm.fshr.i32(i32 %c3441, i32 %c3441, i32 2)
  %t3443 = and i32 %ror3442, 1073741823
  %c3444 = zext i32 %t3443 to i64
  %wp3445 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3444, ptr %wp3445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b9c word 0x1200e54a
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %c3447 = trunc i64 %r3446 to i32
  %t3448 = and i32 %c3447, 858993459
  %c3449 = zext i32 %t3448 to i64
  %wp3450 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3449, ptr %wp3450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ba0 word 0x0b0b014a
  %r3451.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3451 = load i64, ptr %r3451.p, align 8, !alias.scope !3, !noalias !4
  %c3452 = trunc i64 %r3451 to i32
  %r3453.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3453 = load i64, ptr %r3453.p, align 8, !alias.scope !3, !noalias !4
  %c3454 = trunc i64 %r3453 to i32
  %t3455 = add i32 %c3452, %c3454
  %c3456 = zext i32 %t3455 to i64
  %wp3457 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3456, ptr %wp3457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ba4 word 0x0b4a114a
  %r3458.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3458 = load i64, ptr %r3458.p, align 8, !alias.scope !3, !noalias !4
  %c3459 = trunc i64 %r3458 to i32
  %r3460.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3460 = load i64, ptr %r3460.p, align 8, !alias.scope !3, !noalias !4
  %c3461 = trunc i64 %r3460 to i32
  %t3462 = lshr i32 %c3461, 4
  %t3463 = add i32 %c3459, %t3462
  %c3464 = zext i32 %t3463 to i64
  %wp3465 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3464, ptr %wp3465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ba8 word 0x1200cd4a
  %r3466.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3466 = load i64, ptr %r3466.p, align 8, !alias.scope !3, !noalias !4
  %c3467 = trunc i64 %r3466 to i32
  %t3468 = and i32 %c3467, 252645135
  %c3469 = zext i32 %t3468 to i64
  %wp3470 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3469, ptr %wp3470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7bac word 0x0b4a214a
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %c3472 = trunc i64 %r3471 to i32
  %r3473.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3473 = load i64, ptr %r3473.p, align 8, !alias.scope !3, !noalias !4
  %c3474 = trunc i64 %r3473 to i32
  %t3475 = lshr i32 %c3474, 8
  %t3476 = add i32 %c3472, %t3475
  %c3477 = zext i32 %t3476 to i64
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7bb0 word 0x0b4a414a
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %c3480 = trunc i64 %r3479 to i32
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %c3482 = trunc i64 %r3481 to i32
  %t3483 = lshr i32 %c3482, 16
  %t3484 = add i32 %c3480, %t3483
  %c3485 = zext i32 %t3484 to i64
  %wp3486 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3485, ptr %wp3486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7bb4 word 0x1200154a
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %c3488 = trunc i64 %r3487 to i32
  %t3489 = and i32 %c3488, 63
  %c3490 = zext i32 %t3489 to i64
  %wp3491 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3490, ptr %wp3491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7bb8 word 0x17fffebc
  br label %L_8004e76a8
L_8004e7bbc:
  ; @pc 0x8004e7bbc word 0xaa1f03e8
  %t3492 = or i64 0, 0
  %wp3493 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3492, ptr %wp3493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7bc0 word 0x17ffff03
  br label %L_8004e77cc
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34364879280, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8004e71b0
L_8004e71d0_ft:
  ; @pc 0x8004e71d0 word 0xf9400448
  %r48.p = getelementptr inbounds i8, ptr %c, i64 16
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %t49 = add i64 %r48, 8
  %gmp50 = inttoptr i64 %t49 to ptr
  %gml51 = load i64, ptr %gmp50, align 1, !alias.scope !4, !noalias !3
  %wp52 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71d4 word 0xb4002a88
  %r53.p = getelementptr inbounds i8, ptr %c, i64 64
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %cmp54 = icmp eq i64 %r53, 0
  br i1 %cmp54, label %L_8004e7724, label %L_8004e71d8_ft
L_8004e71d8_ft:
  ; @pc 0x8004e71d8 word 0xb001a329
  %wp55 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp55, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71dc word 0x528000ca
  %c56 = zext i32 6 to i64
  %wp57 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71e0 word 0xf947ad29
  %r58.p = getelementptr inbounds i8, ptr %c, i64 72
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %t59 = add i64 %r58, 3928
  %gmp60 = inttoptr i64 %t59 to ptr
  %gml61 = load i64, ptr %gmp60, align 1, !alias.scope !4, !noalias !3
  %wp62 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml61, ptr %wp62, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71e4 word 0xf9400129
  %r63.p = getelementptr inbounds i8, ptr %c, i64 72
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %gmp64 = inttoptr i64 %r63 to ptr
  %gml65 = load i64, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71e8 word 0xb9496129
  %r67.p = getelementptr inbounds i8, ptr %c, i64 72
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = add i64 %r67, 2400
  %gmp69 = inttoptr i64 %t68 to ptr
  %gml70 = load i32, ptr %gmp69, align 1, !alias.scope !4, !noalias !3
  %c71 = zext i32 %gml70 to i64
  %wp72 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c71, ptr %wp72, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71ec word 0x6a29015f
  %r73.p = getelementptr inbounds i8, ptr %c, i64 72
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %c74 = trunc i64 %r73 to i32
  %t75 = xor i32 %c74, -1
  %r76.p = getelementptr inbounds i8, ptr %c, i64 80
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %c77 = trunc i64 %r76 to i32
  %t78 = and i32 %c77, %t75
  %fn79 = icmp slt i32 %t78, 0
  %fz80 = icmp eq i32 %t78, 0
  %nz81 = zext i1 %fn79 to i64
  %zz82 = zext i1 %fz80 to i64
  %ns83 = shl i64 %nz81, 31
  %zs84 = shl i64 %zz82, 30
  %nzcv85 = or i64 %ns83, %zs84
  %wp86 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71f0 word 0x540029a1
  %r87.p = getelementptr inbounds i8, ptr %c, i64 272
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %fsh89 = lshr i64 %r87, 30
  %ftr90 = trunc i64 %fsh89 to i1
  %cond88 = xor i1 %ftr90, true
  br i1 %cond88, label %L_8004e7724, label %L_8004e71f4_ft
L_8004e71f4_ft:
  ; @pc 0x8004e71f4 word 0xb980784a
  %r91.p = getelementptr inbounds i8, ptr %c, i64 16
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %t92 = add i64 %r91, 120
  %gmp93 = inttoptr i64 %t92 to ptr
  %gml94 = load i32, ptr %gmp93, align 1, !alias.scope !4, !noalias !3
  %c95 = sext i32 %gml94 to i64
  %wp96 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c95, ptr %wp96, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e71f8 word 0x34002cca
  %r97.p = getelementptr inbounds i8, ptr %c, i64 80
  %r97 = load i64, ptr %r97.p, align 8, !alias.scope !3, !noalias !4
  %c98 = trunc i64 %r97 to i32
  %cmp99 = icmp eq i32 %c98, 0
  br i1 %cmp99, label %L_8004e7790, label %L_8004e71fc_ft
L_8004e71fc_ft:
  ; @pc 0x8004e71fc word 0xf9404049
  %r100.p = getelementptr inbounds i8, ptr %c, i64 16
  %r100 = load i64, ptr %r100.p, align 8, !alias.scope !3, !noalias !4
  %t101 = add i64 %r100, 128
  %gmp102 = inttoptr i64 %t101 to ptr
  %gml103 = load i64, ptr %gmp102, align 1, !alias.scope !4, !noalias !3
  %wp104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml103, ptr %wp104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7200 word 0xd37df14a
  %r105.p = getelementptr inbounds i8, ptr %c, i64 80
  %r105 = load i64, ptr %r105.p, align 8, !alias.scope !3, !noalias !4
  %ror106 = call i64 @llvm.fshr.i64(i64 %r105, i64 %r105, i64 61)
  %t107 = and i64 %ror106, -8
  %wp108 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t107, ptr %wp108, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e7204
L_8004e722c_ft:
  ; @pc 0x8004e722c word 0x2d430440
  %r195.p = getelementptr inbounds i8, ptr %c, i64 16
  %r195 = load i64, ptr %r195.p, align 8, !alias.scope !3, !noalias !4
  %t196 = add i64 %r195, 24
  %t197 = add i64 %t196, 4
  %gmp198 = inttoptr i64 %t196 to ptr
  %gml199 = load i32, ptr %gmp198, align 1, !alias.scope !4, !noalias !3
  %gmp200 = inttoptr i64 %t197 to ptr
  %gml201 = load i32, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %c202 = zext i32 %gml199 to i128
  %wp203 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c202, ptr %wp203, align 16, !alias.scope !3, !noalias !4
  %c204 = zext i32 %gml201 to i128
  %wp205 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c204, ptr %wp205, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7230 word 0x52800029
  %c206 = zext i32 1 to i64
  %wp207 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c206, ptr %wp207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7234 word 0x2d440c45
  %r208.p = getelementptr inbounds i8, ptr %c, i64 16
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %t209 = add i64 %r208, 32
  %t210 = add i64 %t209, 4
  %gmp211 = inttoptr i64 %t209 to ptr
  %gml212 = load i32, ptr %gmp211, align 1, !alias.scope !4, !noalias !3
  %gmp213 = inttoptr i64 %t210 to ptr
  %gml214 = load i32, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  %c215 = zext i32 %gml212 to i128
  %wp216 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c215, ptr %wp216, align 16, !alias.scope !3, !noalias !4
  %c217 = zext i32 %gml214 to i128
  %wp218 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c217, ptr %wp218, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7238 word 0x1aca2129
  %r219.p = getelementptr inbounds i8, ptr %c, i64 72
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %c220 = trunc i64 %r219 to i32
  %r221.p = getelementptr inbounds i8, ptr %c, i64 80
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %c222 = trunc i64 %r221 to i32
  %t223 = and i32 %c222, 31
  %t224 = shl i32 %c220, %t223
  %c225 = zext i32 %t224 to i64
  %wp226 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c225, ptr %wp226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e723c word 0xbd402c42
  %r227.p = getelementptr inbounds i8, ptr %c, i64 16
  %r227 = load i64, ptr %r227.p, align 8, !alias.scope !3, !noalias !4
  %t228 = add i64 %r227, 44
  %gmp229 = inttoptr i64 %t228 to ptr
  %gml230 = load i32, ptr %gmp229, align 1, !alias.scope !4, !noalias !3
  %c231 = zext i32 %gml230 to i128
  %wp232 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c231, ptr %wp232, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7240 word 0x1e210861
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 3, i32 1)
  ; @pc 0x8004e7244 word 0x1e200860
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 3, i32 0)
  ; @pc 0x8004e7248 word 0x1e222804
  call void @rt_fp_op_s(ptr %c, i32 0, i32 4, i32 0, i32 2)
  ; @pc 0x8004e724c word 0xbd403440
  %r233.p = getelementptr inbounds i8, ptr %c, i64 16
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %t234 = add i64 %r233, 52
  %gmp235 = inttoptr i64 %t234 to ptr
  %gml236 = load i32, ptr %gmp235, align 1, !alias.scope !4, !noalias !3
  %c237 = zext i32 %gml236 to i128
  %wp238 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c237, ptr %wp238, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7250 word 0x1e202822
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 1, i32 0)
  ; @pc 0x8004e7254 word 0x1e220121
  %r239.p = getelementptr inbounds i8, ptr %c, i64 72
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %c240 = trunc i64 %r239 to i32
  %c241 = zext i32 %c240 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 1, i64 %c241, i32 32, i32 0, i32 0)
  ; @pc 0x8004e7258 word 0x1e250860
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 3, i32 5)
  ; @pc 0x8004e725c word 0xd0014469
  %wp242 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407403520, ptr %wp242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7260 word 0x91079129
  %r243.p = getelementptr inbounds i8, ptr %c, i64 72
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %t244 = add i64 %r243, 484
  %wp245 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t244, ptr %wp245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7264 word 0x1e211803
  call void @rt_fp_op_s(ptr %c, i32 5, i32 3, i32 0, i32 1)
  ; @pc 0x8004e7268 word 0x3400022a
  %r246.p = getelementptr inbounds i8, ptr %c, i64 80
  %r246 = load i64, ptr %r246.p, align 8, !alias.scope !3, !noalias !4
  %c247 = trunc i64 %r246 to i32
  %cmp248 = icmp eq i32 %c247, 0
  br i1 %cmp248, label %L_8004e72ac, label %L_8004e726c_ft
L_8004e726c_ft:
  ; @pc 0x8004e726c word 0xb940090b
  %r249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r249 = load i64, ptr %r249.p, align 8, !alias.scope !3, !noalias !4
  %t250 = add i64 %r249, 8
  %gmp251 = inttoptr i64 %t250 to ptr
  %gml252 = load i32, ptr %gmp251, align 1, !alias.scope !4, !noalias !3
  %c253 = zext i32 %gml252 to i64
  %wp254 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c253, ptr %wp254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7270 word 0x1e204060
  %r255.p = getelementptr inbounds i8, ptr %c, i64 560
  %r255 = load i128, ptr %r255.p, align 16, !alias.scope !3, !noalias !4
  %c256 = trunc i128 %r255 to i32
  %c257 = zext i32 %c256 to i128
  %wp258 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c257, ptr %wp258, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7274 word 0x2a0a03ec
  %r259.p = getelementptr inbounds i8, ptr %c, i64 80
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %c260 = trunc i64 %r259 to i32
  %t261 = or i32 0, %c260
  %c262 = zext i32 %t261 to i64
  %wp263 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c262, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7278 word 0xd503201f
  ; @pc 0x8004e727c word 0xd503201f
  br label %L_8004e7280
L_8004e72bc_unreach:
  ; @pc 0x8004e72bc word 0xd503201f
  br label %L_8004e72c0
L_8004e7314_ft:
  ; @pc 0x8004e7314 word 0x1e303853
  call void @rt_fp_op_s(ptr %c, i32 1, i32 19, i32 2, i32 16)
  ; @pc 0x8004e7318 word 0x1e222a14
  call void @rt_fp_op_s(ptr %c, i32 0, i32 20, i32 16, i32 2)
  ; @pc 0x8004e731c word 0x3940010b
  %r466.p = getelementptr inbounds i8, ptr %c, i64 64
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %gmp467 = inttoptr i64 %r466 to ptr
  %gml468 = load i8, ptr %gmp467, align 1, !alias.scope !4, !noalias !3
  %c469 = zext i8 %gml468 to i64
  %wp470 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c469, ptr %wp470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7320 word 0x1e272260
  %fcmp471 = call i64 @rt_fp_cmp_s(ptr %c, i32 19, i32 7, i32 0)
  %wp472 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp471, ptr %wp472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7324 word 0x1e3494e0
  %r473.p = getelementptr inbounds i8, ptr %c, i64 272
  %r473 = load i64, ptr %r473.p, align 8, !alias.scope !3, !noalias !4
  %fsh475 = lshr i64 %r473, 29
  %ftr476 = trunc i64 %fsh475 to i1
  %fsh477 = lshr i64 %r473, 30
  %ftr478 = trunc i64 %fsh477 to i1
  %fnz479 = xor i1 %ftr478, true
  %fhi480 = and i1 %ftr476, %fnz479
  %cond474 = xor i1 %fhi480, true
  %fccmp481 = call i64 @rt_fp_cmp_s(ptr %c, i32 7, i32 20, i32 0)
  %sel482 = select i1 %cond474, i64 %fccmp481, i64 0
  %wp483 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel482, ptr %wp483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7328 word 0x54fffce5
  %r484.p = getelementptr inbounds i8, ptr %c, i64 272
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %fsh486 = lshr i64 %r484, 31
  %ftr487 = trunc i64 %fsh486 to i1
  %cond485 = xor i1 %ftr487, true
  br i1 %cond485, label %L_8004e72c4, label %L_8004e732c_ft
L_8004e732c_ft:
  ; @pc 0x8004e732c word 0x53077d6b
  %r488.p = getelementptr inbounds i8, ptr %c, i64 88
  %r488 = load i64, ptr %r488.p, align 8, !alias.scope !3, !noalias !4
  %c489 = trunc i64 %r488 to i32
  %ror490 = call i32 @llvm.fshr.i32(i32 %c489, i32 %c489, i32 7)
  %t491 = and i32 %ror490, 33554431
  %c492 = zext i32 %t491 to i64
  %wp493 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c492, ptr %wp493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7330 word 0x6b0a006a
  %r494.p = getelementptr inbounds i8, ptr %c, i64 24
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %c495 = trunc i64 %r494 to i32
  %r496.p = getelementptr inbounds i8, ptr %c, i64 80
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %c497 = trunc i64 %r496 to i32
  %t498 = sub i32 %c495, %c497
  %fn499 = icmp slt i32 %t498, 0
  %fz500 = icmp eq i32 %t498, 0
  %fc501 = icmp uge i32 %c495, %c497
  %fx1502 = xor i32 %c495, %c497
  %fx2503 = xor i32 %c495, %t498
  %fva504 = and i32 %fx1502, %fx2503
  %fv505 = icmp slt i32 %fva504, 0
  %nz506 = zext i1 %fn499 to i64
  %zz507 = zext i1 %fz500 to i64
  %cz508 = zext i1 %fc501 to i64
  %vz509 = zext i1 %fv505 to i64
  %ns510 = shl i64 %nz506, 31
  %zs511 = shl i64 %zz507, 30
  %cs512 = shl i64 %cz508, 29
  %vs513 = shl i64 %vz509, 28
  %nzor514 = or i64 %ns510, %zs511
  %cvor515 = or i64 %cs512, %vs513
  %nzcv516 = or i64 %nzor514, %cvor515
  %wp517 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv516, ptr %wp517, align 8, !alias.scope !3, !noalias !4
  %c518 = zext i32 %t498 to i64
  %wp519 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c518, ptr %wp519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7334 word 0x540002e0
  %r520.p = getelementptr inbounds i8, ptr %c, i64 272
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %fsh522 = lshr i64 %r520, 30
  %cond521 = trunc i64 %fsh522 to i1
  br i1 %cond521, label %L_8004e7390, label %L_8004e7338_ft
L_8004e7338_ft:
  ; @pc 0x8004e7338 word 0x2a1f03ec
  %t523 = or i32 0, 0
  %c524 = zext i32 %t523 to i64
  %wp525 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c524, ptr %wp525, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e733c
L_8004e735c_ft:
  ; @pc 0x8004e735c word 0xaa0e03e8
  %r567.p = getelementptr inbounds i8, ptr %c, i64 112
  %r567 = load i64, ptr %r567.p, align 8, !alias.scope !3, !noalias !4
  %t568 = or i64 0, %r567
  %wp569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t568, ptr %wp569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7360 word 0x39c001ce
  %r570.p = getelementptr inbounds i8, ptr %c, i64 112
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %gmp571 = inttoptr i64 %r570 to ptr
  %gml572 = load i8, ptr %gmp571, align 1, !alias.scope !4, !noalias !3
  %c573 = sext i8 %gml572 to i32
  %c574 = zext i32 %c573 to i64
  %wp575 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7364 word 0x36f81e4e
  %r576.p = getelementptr inbounds i8, ptr %c, i64 112
  %r576 = load i64, ptr %r576.p, align 8, !alias.scope !3, !noalias !4
  %t577 = and i64 %r576, 2147483648
  %cmp578 = icmp eq i64 %t577, 0
  br i1 %cmp578, label %L_8004e772c, label %L_8004e7368
L_8004e739c_ft:
  ; @pc 0x8004e739c word 0x3940068b
  %r636.p = getelementptr inbounds i8, ptr %c, i64 160
  %r636 = load i64, ptr %r636.p, align 8, !alias.scope !3, !noalias !4
  %t637 = add i64 %r636, 1
  %gmp638 = inttoptr i64 %t637 to ptr
  %gml639 = load i8, ptr %gmp638, align 1, !alias.scope !4, !noalias !3
  %c640 = zext i8 %gml639 to i64
  %wp641 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c640, ptr %wp641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73a0 word 0x5280002c
  %c642 = zext i32 1 to i64
  %wp643 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c642, ptr %wp643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73a4 word 0x1acb218b
  %r644.p = getelementptr inbounds i8, ptr %c, i64 96
  %r644 = load i64, ptr %r644.p, align 8, !alias.scope !3, !noalias !4
  %c645 = trunc i64 %r644 to i32
  %r646.p = getelementptr inbounds i8, ptr %c, i64 88
  %r646 = load i64, ptr %r646.p, align 8, !alias.scope !3, !noalias !4
  %c647 = trunc i64 %r646 to i32
  %t648 = and i32 %c647, 31
  %t649 = shl i32 %c645, %t648
  %c650 = zext i32 %t649 to i64
  %wp651 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c650, ptr %wp651, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e73a8
L_8004e73b4_ft:
  ; @pc 0x8004e73b4 word 0x528000cc
  %c674 = zext i32 6 to i64
  %wp675 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c674, ptr %wp675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73b8 word 0xaa0803eb
  %r676.p = getelementptr inbounds i8, ptr %c, i64 64
  %r676 = load i64, ptr %r676.p, align 8, !alias.scope !3, !noalias !4
  %t677 = or i64 0, %r676
  %wp678 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t677, ptr %wp678, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e73bc
L_8004e73cc_ft:
  ; @pc 0x8004e73cc word 0x1ace214e
  %r702.p = getelementptr inbounds i8, ptr %c, i64 80
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %c703 = trunc i64 %r702 to i32
  %r704.p = getelementptr inbounds i8, ptr %c, i64 112
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %c705 = trunc i64 %r704 to i32
  %t706 = and i32 %c705, 31
  %t707 = shl i32 %c703, %t706
  %c708 = zext i32 %t707 to i64
  %wp709 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c708, ptr %wp709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73d0 word 0x0a2e01ad
  %r710.p = getelementptr inbounds i8, ptr %c, i64 112
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %c711 = trunc i64 %r710 to i32
  %t712 = xor i32 %c711, -1
  %r713.p = getelementptr inbounds i8, ptr %c, i64 104
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %c714 = trunc i64 %r713 to i32
  %t715 = and i32 %c714, %t712
  %c716 = zext i32 %t715 to i64
  %wp717 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c716, ptr %wp717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73d4 word 0x710009bf
  %r718.p = getelementptr inbounds i8, ptr %c, i64 104
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %c719 = trunc i64 %r718 to i32
  %t720 = sub i32 %c719, 2
  %fn721 = icmp slt i32 %t720, 0
  %fz722 = icmp eq i32 %t720, 0
  %fc723 = icmp uge i32 %c719, 2
  %fx1724 = xor i32 %c719, 2
  %fx2725 = xor i32 %c719, %t720
  %fva726 = and i32 %fx1724, %fx2725
  %fv727 = icmp slt i32 %fva726, 0
  %nz728 = zext i1 %fn721 to i64
  %zz729 = zext i1 %fz722 to i64
  %cz730 = zext i1 %fc723 to i64
  %vz731 = zext i1 %fv727 to i64
  %ns732 = shl i64 %nz728, 31
  %zs733 = shl i64 %zz729, 30
  %cs734 = shl i64 %cz730, 29
  %vs735 = shl i64 %vz731, 28
  %nzor736 = or i64 %ns732, %zs733
  %cvor737 = or i64 %cs734, %vs735
  %nzcv738 = or i64 %nzor736, %cvor737
  %wp739 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv738, ptr %wp739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e73d8 word 0x54001b82
  %r740.p = getelementptr inbounds i8, ptr %c, i64 272
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %fsh742 = lshr i64 %r740, 29
  %cond741 = trunc i64 %fsh742 to i1
  br i1 %cond741, label %L_8004e7748, label %L_8004e73dc
L_8004e73e8_ft:
  ; @pc 0x8004e73e8 word 0x910061cd
  %r759.p = getelementptr inbounds i8, ptr %c, i64 112
  %r759 = load i64, ptr %r759.p, align 8, !alias.scope !3, !noalias !4
  %t760 = add i64 %r759, 24
  %wp761 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t760, ptr %wp761, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e73ec
L_8004e73fc_ft:
  ; @pc 0x8004e73fc word 0xf26205ff
  %r794.p = getelementptr inbounds i8, ptr %c, i64 120
  %r794 = load i64, ptr %r794.p, align 8, !alias.scope !3, !noalias !4
  %t795 = and i64 %r794, 3221225472
  %fn796 = icmp slt i64 %t795, 0
  %fz797 = icmp eq i64 %t795, 0
  %nz798 = zext i1 %fn796 to i64
  %zz799 = zext i1 %fz797 to i64
  %ns800 = shl i64 %nz798, 31
  %zs801 = shl i64 %zz799, 30
  %nzcv802 = or i64 %ns800, %zs801
  %wp803 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv802, ptr %wp803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7400 word 0x54000220
  %r804.p = getelementptr inbounds i8, ptr %c, i64 272
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %fsh806 = lshr i64 %r804, 30
  %cond805 = trunc i64 %fsh806 to i1
  br i1 %cond805, label %L_8004e7444, label %L_8004e7404
L_8004e741c_ft:
  ; @pc 0x8004e741c word 0x3940016b
  %r846.p = getelementptr inbounds i8, ptr %c, i64 88
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %gmp847 = inttoptr i64 %r846 to ptr
  %gml848 = load i8, ptr %gmp847, align 1, !alias.scope !4, !noalias !3
  %c849 = zext i8 %gml848 to i64
  %wp850 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c849, ptr %wp850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7420 word 0xd344196b
  %r851.p = getelementptr inbounds i8, ptr %c, i64 88
  %r851 = load i64, ptr %r851.p, align 8, !alias.scope !3, !noalias !4
  %ror852 = call i64 @llvm.fshr.i64(i64 %r851, i64 %r851, i64 4)
  %t853 = and i64 %ror852, 7
  %wp854 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t853, ptr %wp854, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e7424
L_8004e7440_ft:
  ; @pc 0x8004e7440 word 0x140000b9
  br label %L_8004e7724
L_8004e7450_ft:
  ; @pc 0x8004e7450 word 0xb9400d6d
  %r899.p = getelementptr inbounds i8, ptr %c, i64 88
  %r899 = load i64, ptr %r899.p, align 8, !alias.scope !3, !noalias !4
  %t900 = add i64 %r899, 12
  %gmp901 = inttoptr i64 %t900 to ptr
  %gml902 = load i32, ptr %gmp901, align 1, !alias.scope !4, !noalias !3
  %c903 = zext i32 %gml902 to i64
  %wp904 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c903, ptr %wp904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7454 word 0x3940068e
  %r905.p = getelementptr inbounds i8, ptr %c, i64 160
  %r905 = load i64, ptr %r905.p, align 8, !alias.scope !3, !noalias !4
  %t906 = add i64 %r905, 1
  %gmp907 = inttoptr i64 %t906 to ptr
  %gml908 = load i8, ptr %gmp907, align 1, !alias.scope !4, !noalias !3
  %c909 = zext i8 %gml908 to i64
  %wp910 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c909, ptr %wp910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7458 word 0x1ace25af
  %r911.p = getelementptr inbounds i8, ptr %c, i64 104
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %c912 = trunc i64 %r911 to i32
  %r913.p = getelementptr inbounds i8, ptr %c, i64 112
  %r913 = load i64, ptr %r913.p, align 8, !alias.scope !3, !noalias !4
  %c914 = trunc i64 %r913 to i32
  %t915 = and i32 %c914, 31
  %t916 = lshr i32 %c912, %t915
  %c917 = zext i32 %t916 to i64
  %wp918 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c917, ptr %wp918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e745c word 0x3607fdcf
  %r919.p = getelementptr inbounds i8, ptr %c, i64 120
  %r919 = load i64, ptr %r919.p, align 8, !alias.scope !3, !noalias !4
  %t920 = and i64 %r919, 1
  %cmp921 = icmp eq i64 %t920, 0
  br i1 %cmp921, label %L_8004e7414, label %L_8004e7460_ft
L_8004e7460_ft:
  ; @pc 0x8004e7460 word 0x1ace214e
  %r922.p = getelementptr inbounds i8, ptr %c, i64 80
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %c923 = trunc i64 %r922 to i32
  %r924.p = getelementptr inbounds i8, ptr %c, i64 112
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %c925 = trunc i64 %r924 to i32
  %t926 = and i32 %c925, 31
  %t927 = shl i32 %c923, %t926
  %c928 = zext i32 %t927 to i64
  %wp929 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c928, ptr %wp929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7464 word 0x0a2e01ad
  %r930.p = getelementptr inbounds i8, ptr %c, i64 112
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %c931 = trunc i64 %r930 to i32
  %t932 = xor i32 %c931, -1
  %r933.p = getelementptr inbounds i8, ptr %c, i64 104
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %c934 = trunc i64 %r933 to i32
  %t935 = and i32 %c934, %t932
  %c936 = zext i32 %t935 to i64
  %wp937 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c936, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7468 word 0x710009bf
  %r938.p = getelementptr inbounds i8, ptr %c, i64 104
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %c939 = trunc i64 %r938 to i32
  %t940 = sub i32 %c939, 2
  %fn941 = icmp slt i32 %t940, 0
  %fz942 = icmp eq i32 %t940, 0
  %fc943 = icmp uge i32 %c939, 2
  %fx1944 = xor i32 %c939, 2
  %fx2945 = xor i32 %c939, %t940
  %fva946 = and i32 %fx1944, %fx2945
  %fv947 = icmp slt i32 %fva946, 0
  %nz948 = zext i1 %fn941 to i64
  %zz949 = zext i1 %fz942 to i64
  %cz950 = zext i1 %fc943 to i64
  %vz951 = zext i1 %fv947 to i64
  %ns952 = shl i64 %nz948, 31
  %zs953 = shl i64 %zz949, 30
  %cs954 = shl i64 %cz950, 29
  %vs955 = shl i64 %vz951, 28
  %nzor956 = or i64 %ns952, %zs953
  %cvor957 = or i64 %cs954, %vs955
  %nzcv958 = or i64 %nzor956, %cvor957
  %wp959 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e746c word 0x2a0d03ef
  %r960.p = getelementptr inbounds i8, ptr %c, i64 104
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %c961 = trunc i64 %r960 to i32
  %t962 = or i32 0, %c961
  %c963 = zext i32 %t962 to i64
  %wp964 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c963, ptr %wp964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7470 word 0x54001c02
  %r965.p = getelementptr inbounds i8, ptr %c, i64 272
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %fsh967 = lshr i64 %r965, 29
  %cond966 = trunc i64 %fsh967 to i1
  br i1 %cond966, label %L_8004e77f0, label %L_8004e7474
L_8004e7480_ft:
  ; @pc 0x8004e7480 word 0x794025f0
  %r984.p = getelementptr inbounds i8, ptr %c, i64 120
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %t985 = add i64 %r984, 18
  %gmp986 = inttoptr i64 %t985 to ptr
  %gml987 = load i16, ptr %gmp986, align 1, !alias.scope !4, !noalias !3
  %c988 = zext i16 %gml987 to i64
  %wp989 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c988, ptr %wp989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7484 word 0x36101d10
  %r990.p = getelementptr inbounds i8, ptr %c, i64 128
  %r990 = load i64, ptr %r990.p, align 8, !alias.scope !3, !noalias !4
  %t991 = and i64 %r990, 4
  %cmp992 = icmp eq i64 %t991, 0
  br i1 %cmp992, label %L_8004e7824, label %L_8004e7488
L_8004e7514_ft:
  ; @pc 0x8004e7514 word 0x1e230187
  %r1135.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1135 = load i64, ptr %r1135.p, align 8, !alias.scope !3, !noalias !4
  %c1136 = trunc i64 %r1135 to i32
  %c1137 = zext i32 %c1136 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 7, i64 %c1137, i32 32, i32 1, i32 0)
  ; @pc 0x8004e7518 word 0x1e2428c2
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 6, i32 4)
  ; @pc 0x8004e751c word 0x1e272040
  %fcmp1138 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 7, i32 0)
  %wp1139 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1138, ptr %wp1139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7520 word 0x1e2040c2
  %r1140.p = getelementptr inbounds i8, ptr %c, i64 608
  %r1140 = load i128, ptr %r1140.p, align 16, !alias.scope !3, !noalias !4
  %c1141 = trunc i128 %r1140 to i32
  %c1142 = zext i32 %c1141 to i128
  %wp1143 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c1142, ptr %wp1143, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7524 word 0x5400108c
  %r1144.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1144 = load i64, ptr %r1144.p, align 8, !alias.scope !3, !noalias !4
  %fsh1146 = lshr i64 %r1144, 30
  %ftr1147 = trunc i64 %fsh1146 to i1
  %fsh1148 = lshr i64 %r1144, 31
  %ftr1149 = trunc i64 %fsh1148 to i1
  %fsh1150 = lshr i64 %r1144, 28
  %ftr1151 = trunc i64 %fsh1150 to i1
  %fnz1152 = xor i1 %ftr1147, true
  %feq1153 = icmp eq i1 %ftr1149, %ftr1151
  %cond1145 = and i1 %fnz1152, %feq1153
  br i1 %cond1145, label %L_8004e7734, label %L_8004e7528
L_8004e755c_ft:
  ; @pc 0x8004e755c word 0x1e2301e6
  %r1201.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1201 = load i64, ptr %r1201.p, align 8, !alias.scope !3, !noalias !4
  %c1202 = trunc i64 %r1201 to i32
  %c1203 = zext i32 %c1202 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 6, i64 %c1203, i32 32, i32 1, i32 0)
  ; @pc 0x8004e7560 word 0x1e2428a3
  call void @rt_fp_op_s(ptr %c, i32 0, i32 3, i32 5, i32 4)
  ; @pc 0x8004e7564 word 0x1e262060
  %fcmp1204 = call i64 @rt_fp_cmp_s(ptr %c, i32 3, i32 6, i32 0)
  %wp1205 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1204, ptr %wp1205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7568 word 0x1e2040a3
  %r1206.p = getelementptr inbounds i8, ptr %c, i64 592
  %r1206 = load i128, ptr %r1206.p, align 16, !alias.scope !3, !noalias !4
  %c1207 = trunc i128 %r1206 to i32
  %c1208 = zext i32 %c1207 to i128
  %wp1209 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c1208, ptr %wp1209, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e756c word 0x54000d2c
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %fsh1212 = lshr i64 %r1210, 30
  %ftr1213 = trunc i64 %fsh1212 to i1
  %fsh1214 = lshr i64 %r1210, 31
  %ftr1215 = trunc i64 %fsh1214 to i1
  %fsh1216 = lshr i64 %r1210, 28
  %ftr1217 = trunc i64 %fsh1216 to i1
  %fnz1218 = xor i1 %ftr1213, true
  %feq1219 = icmp eq i1 %ftr1215, %ftr1217
  %cond1211 = and i1 %fnz1218, %feq1219
  br i1 %cond1211, label %L_8004e7710, label %L_8004e7570
L_8004e7694_ft:
  ; @pc 0x8004e7694 word 0xf9400969
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %t1712 = add i64 %r1711, 16
  %gmp1713 = inttoptr i64 %t1712 to ptr
  %gml1714 = load i64, ptr %gmp1713, align 1, !alias.scope !4, !noalias !3
  %wp1715 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1714, ptr %wp1715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7698 word 0x1acd214a
  %r1716.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1716 = load i64, ptr %r1716.p, align 8, !alias.scope !3, !noalias !4
  %c1717 = trunc i64 %r1716 to i32
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %c1719 = trunc i64 %r1718 to i32
  %t1720 = and i32 %c1719, 31
  %t1721 = shl i32 %c1717, %t1720
  %c1722 = zext i32 %t1721 to i64
  %wp1723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1722, ptr %wp1723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e769c word 0x0a2a018a
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %c1725 = trunc i64 %r1724 to i32
  %t1726 = xor i32 %c1725, -1
  %r1727.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1727 = load i64, ptr %r1727.p, align 8, !alias.scope !3, !noalias !4
  %c1728 = trunc i64 %r1727 to i32
  %t1729 = and i32 %c1728, %t1726
  %c1730 = zext i32 %t1729 to i64
  %wp1731 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1730, ptr %wp1731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76a0 word 0x7100095f
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %c1733 = trunc i64 %r1732 to i32
  %t1734 = sub i32 %c1733, 2
  %fn1735 = icmp slt i32 %t1734, 0
  %fz1736 = icmp eq i32 %t1734, 0
  %fc1737 = icmp uge i32 %c1733, 2
  %fx11738 = xor i32 %c1733, 2
  %fx21739 = xor i32 %c1733, %t1734
  %fva1740 = and i32 %fx11738, %fx21739
  %fv1741 = icmp slt i32 %fva1740, 0
  %nz1742 = zext i1 %fn1735 to i64
  %zz1743 = zext i1 %fz1736 to i64
  %cz1744 = zext i1 %fc1737 to i64
  %vz1745 = zext i1 %fv1741 to i64
  %ns1746 = shl i64 %nz1742, 31
  %zs1747 = shl i64 %zz1743, 30
  %cs1748 = shl i64 %cz1744, 29
  %vs1749 = shl i64 %vz1745, 28
  %nzor1750 = or i64 %ns1746, %zs1747
  %cvor1751 = or i64 %cs1748, %vs1749
  %nzcv1752 = or i64 %nzor1750, %cvor1751
  %wp1753 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1752, ptr %wp1753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76a4 word 0x54002722
  %r1754.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1754 = load i64, ptr %r1754.p, align 8, !alias.scope !3, !noalias !4
  %fsh1756 = lshr i64 %r1754, 29
  %cond1755 = trunc i64 %fsh1756 to i1
  br i1 %cond1755, label %L_8004e7b88, label %L_8004e76a8
L_8004e76b0_ft:
  ; @pc 0x8004e76b0 word 0x91006129
  %r1768.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1768 = load i64, ptr %r1768.p, align 8, !alias.scope !3, !noalias !4
  %t1769 = add i64 %r1768, 24
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e76b4
L_8004e76cc_ft:
  ; @pc 0x8004e76cc word 0x52801fe8
  %c1809 = zext i32 255 to i64
  %wp1810 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1809, ptr %wp1810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76d0 word 0xd10043a0
  %r1811.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1811 = load i64, ptr %r1811.p, align 8, !alias.scope !3, !noalias !4
  %t1812 = sub i64 %r1811, 16
  %wp1813 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1812, ptr %wp1813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76d4 word 0xb81f03a8
  %r1814.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1814 = load i64, ptr %r1814.p, align 8, !alias.scope !3, !noalias !4
  %t1815 = add i64 %r1814, -16
  %r1816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1816 = load i64, ptr %r1816.p, align 8, !alias.scope !3, !noalias !4
  %c1817 = trunc i64 %r1816 to i32
  %gmp1818 = inttoptr i64 %t1815 to ptr
  store i32 %c1817, ptr %gmp1818, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e76d8 word 0x9400013e
  %wp1819 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364880604, ptr %wp1819, align 8, !alias.scope !3, !noalias !4
  call void @f_8004e7bd0(ptr %c)
  ; @pc 0x8004e76dc word 0x7100067f
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %c1821 = trunc i64 %r1820 to i32
  %t1822 = sub i32 %c1821, 1
  %fn1823 = icmp slt i32 %t1822, 0
  %fz1824 = icmp eq i32 %t1822, 0
  %fc1825 = icmp uge i32 %c1821, 1
  %fx11826 = xor i32 %c1821, 1
  %fx21827 = xor i32 %c1821, %t1822
  %fva1828 = and i32 %fx11826, %fx21827
  %fv1829 = icmp slt i32 %fva1828, 0
  %nz1830 = zext i1 %fn1823 to i64
  %zz1831 = zext i1 %fz1824 to i64
  %cz1832 = zext i1 %fc1825 to i64
  %vz1833 = zext i1 %fv1829 to i64
  %ns1834 = shl i64 %nz1830, 31
  %zs1835 = shl i64 %zz1831, 30
  %cs1836 = shl i64 %cz1832, 29
  %vs1837 = shl i64 %vz1833, 28
  %nzor1838 = or i64 %ns1834, %zs1835
  %cvor1839 = or i64 %cs1836, %vs1837
  %nzcv1840 = or i64 %nzor1838, %cvor1839
  %wp1841 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1840, ptr %wp1841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76e0 word 0x12800028
  %c1842 = zext i32 -2 to i64
  %wp1843 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1842, ptr %wp1843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76e4 word 0x1a880508
  %r1844.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1844 = load i64, ptr %r1844.p, align 8, !alias.scope !3, !noalias !4
  %c1845 = trunc i64 %r1844 to i32
  %r1846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1846 = load i64, ptr %r1846.p, align 8, !alias.scope !3, !noalias !4
  %c1847 = trunc i64 %r1846 to i32
  %t1848 = add i32 %c1847, 1
  %r1849.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1849 = load i64, ptr %r1849.p, align 8, !alias.scope !3, !noalias !4
  %fsh1851 = lshr i64 %r1849, 30
  %cond1850 = trunc i64 %fsh1851 to i1
  %sel1852 = select i1 %cond1850, i32 %c1845, i32 %t1848
  %c1853 = zext i32 %sel1852 to i64
  %wp1854 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1853, ptr %wp1854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76e8 word 0x31000c1f
  %r1855.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1855 = load i64, ptr %r1855.p, align 8, !alias.scope !3, !noalias !4
  %c1856 = trunc i64 %r1855 to i32
  %t1857 = add i32 %c1856, 3
  %fn1858 = icmp slt i32 %t1857, 0
  %fz1859 = icmp eq i32 %t1857, 0
  %fc1860 = icmp ult i32 %t1857, %c1856
  %fx11861 = xor i32 %c1856, %t1857
  %fx21862 = xor i32 3, %t1857
  %fva1863 = and i32 %fx11861, %fx21862
  %fv1864 = icmp slt i32 %fva1863, 0
  %nz1865 = zext i1 %fn1858 to i64
  %zz1866 = zext i1 %fz1859 to i64
  %cz1867 = zext i1 %fc1860 to i64
  %vz1868 = zext i1 %fv1864 to i64
  %ns1869 = shl i64 %nz1865, 31
  %zs1870 = shl i64 %zz1866, 30
  %cs1871 = shl i64 %cz1867, 29
  %vs1872 = shl i64 %vz1868, 28
  %nzor1873 = or i64 %ns1869, %zs1870
  %cvor1874 = or i64 %cs1871, %vs1872
  %nzcv1875 = or i64 %nzor1873, %cvor1874
  %wp1876 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1875, ptr %wp1876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e76ec word 0x540002a8
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %fsh1879 = lshr i64 %r1877, 29
  %ftr1880 = trunc i64 %fsh1879 to i1
  %fsh1881 = lshr i64 %r1877, 30
  %ftr1882 = trunc i64 %fsh1881 to i1
  %fnz1883 = xor i1 %ftr1882, true
  %cond1878 = and i1 %ftr1880, %fnz1883
  br i1 %cond1878, label %L_8004e7740, label %L_8004e76f0
L_8004e77b0_ft:
  ; @pc 0x8004e77b0 word 0x17fffe98
  br label %L_8004e7210
L_8004e77c4_ft:
  ; @pc 0x8004e77c4 word 0x39400108
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %gmp2089 = inttoptr i64 %r2088 to ptr
  %gml2090 = load i8, ptr %gmp2089, align 1, !alias.scope !4, !noalias !3
  %c2091 = zext i8 %gml2090 to i64
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2091, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e77c8 word 0xd3441908
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %ror2094 = call i64 @llvm.fshr.i64(i64 %r2093, i64 %r2093, i64 4)
  %t2095 = and i64 %ror2094, 7
  %wp2096 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2095, ptr %wp2096, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e77cc
L_8004e77ec_ft:
  ; @pc 0x8004e77ec word 0x17ffffc1
  br label %L_8004e76f0
L_8004e782c_ft:
  ; @pc 0x8004e782c word 0xb94019f0
  %r2202.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2202 = load i64, ptr %r2202.p, align 8, !alias.scope !3, !noalias !4
  %t2203 = add i64 %r2202, 24
  %gmp2204 = inttoptr i64 %t2203 to ptr
  %gml2205 = load i32, ptr %gmp2204, align 1, !alias.scope !4, !noalias !3
  %c2206 = zext i32 %gml2205 to i64
  %wp2207 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2206, ptr %wp2207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7830 word 0x34000090
  %r2208.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2208 = load i64, ptr %r2208.p, align 8, !alias.scope !3, !noalias !4
  %c2209 = trunc i64 %r2208 to i32
  %cmp2210 = icmp eq i32 %c2209, 0
  br i1 %cmp2210, label %L_8004e7840, label %L_8004e7834_ft
L_8004e7834_ft:
  ; @pc 0x8004e7834 word 0xb94019ef
  %r2211.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2211 = load i64, ptr %r2211.p, align 8, !alias.scope !3, !noalias !4
  %t2212 = add i64 %r2211, 24
  %gmp2213 = inttoptr i64 %t2212 to ptr
  %gml2214 = load i32, ptr %gmp2213, align 1, !alias.scope !4, !noalias !3
  %c2215 = zext i32 %gml2214 to i64
  %wp2216 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2215, ptr %wp2216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7838 word 0x531e7def
  %r2217.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2217 = load i64, ptr %r2217.p, align 8, !alias.scope !3, !noalias !4
  %c2218 = trunc i64 %r2217 to i32
  %ror2219 = call i32 @llvm.fshr.i32(i32 %c2218, i32 %c2218, i32 30)
  %t2220 = and i32 %ror2219, 3
  %c2221 = zext i32 %t2220 to i64
  %wp2222 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2221, ptr %wp2222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e783c word 0x34ffe26f
  %r2223.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2223 = load i64, ptr %r2223.p, align 8, !alias.scope !3, !noalias !4
  %c2224 = trunc i64 %r2223 to i32
  %cmp2225 = icmp eq i32 %c2224, 0
  br i1 %cmp2225, label %L_8004e7488, label %L_8004e7840
L_8004e7848_ft:
  ; @pc 0x8004e7848 word 0x53017daf
  %r2252.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2252 = load i64, ptr %r2252.p, align 8, !alias.scope !3, !noalias !4
  %c2253 = trunc i64 %r2252 to i32
  %ror2254 = call i32 @llvm.fshr.i32(i32 %c2253, i32 %c2253, i32 1)
  %t2255 = and i32 %ror2254, 2147483647
  %c2256 = zext i32 %t2255 to i64
  %wp2257 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2256, ptr %wp2257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e784c word 0x1200f1ef
  %r2258.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2258 = load i64, ptr %r2258.p, align 8, !alias.scope !3, !noalias !4
  %c2259 = trunc i64 %r2258 to i32
  %t2260 = and i32 %c2259, 1431655765
  %c2261 = zext i32 %t2260 to i64
  %wp2262 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2261, ptr %wp2262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7850 word 0x4b0f01ad
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %c2264 = trunc i64 %r2263 to i32
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %c2266 = trunc i64 %r2265 to i32
  %t2267 = sub i32 %c2264, %c2266
  %c2268 = zext i32 %t2267 to i64
  %wp2269 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2268, ptr %wp2269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7854 word 0x1200e5af
  %r2270.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2270 = load i64, ptr %r2270.p, align 8, !alias.scope !3, !noalias !4
  %c2271 = trunc i64 %r2270 to i32
  %t2272 = and i32 %c2271, 858993459
  %c2273 = zext i32 %t2272 to i64
  %wp2274 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2273, ptr %wp2274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7858 word 0x53027dad
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %c2276 = trunc i64 %r2275 to i32
  %ror2277 = call i32 @llvm.fshr.i32(i32 %c2276, i32 %c2276, i32 2)
  %t2278 = and i32 %ror2277, 1073741823
  %c2279 = zext i32 %t2278 to i64
  %wp2280 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2279, ptr %wp2280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e785c word 0x1200e5ad
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %c2282 = trunc i64 %r2281 to i32
  %t2283 = and i32 %c2282, 858993459
  %c2284 = zext i32 %t2283 to i64
  %wp2285 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2284, ptr %wp2285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7860 word 0x0b0f01ad
  %r2286.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2286 = load i64, ptr %r2286.p, align 8, !alias.scope !3, !noalias !4
  %c2287 = trunc i64 %r2286 to i32
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %c2289 = trunc i64 %r2288 to i32
  %t2290 = add i32 %c2287, %c2289
  %c2291 = zext i32 %t2290 to i64
  %wp2292 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2291, ptr %wp2292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7864 word 0x0b4d11ad
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %c2294 = trunc i64 %r2293 to i32
  %r2295.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2295 = load i64, ptr %r2295.p, align 8, !alias.scope !3, !noalias !4
  %c2296 = trunc i64 %r2295 to i32
  %t2297 = lshr i32 %c2296, 4
  %t2298 = add i32 %c2294, %t2297
  %c2299 = zext i32 %t2298 to i64
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2299, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7868 word 0x1200cdad
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %c2302 = trunc i64 %r2301 to i32
  %t2303 = and i32 %c2302, 252645135
  %c2304 = zext i32 %t2303 to i64
  %wp2305 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2304, ptr %wp2305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e786c word 0x0b4d21ad
  %r2306.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2306 = load i64, ptr %r2306.p, align 8, !alias.scope !3, !noalias !4
  %c2307 = trunc i64 %r2306 to i32
  %r2308.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2308 = load i64, ptr %r2308.p, align 8, !alias.scope !3, !noalias !4
  %c2309 = trunc i64 %r2308 to i32
  %t2310 = lshr i32 %c2309, 8
  %t2311 = add i32 %c2307, %t2310
  %c2312 = zext i32 %t2311 to i64
  %wp2313 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2312, ptr %wp2313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7870 word 0x0b4d41ad
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %c2315 = trunc i64 %r2314 to i32
  %r2316.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2316 = load i64, ptr %r2316.p, align 8, !alias.scope !3, !noalias !4
  %c2317 = trunc i64 %r2316 to i32
  %t2318 = lshr i32 %c2317, 16
  %t2319 = add i32 %c2315, %t2318
  %c2320 = zext i32 %t2319 to i64
  %wp2321 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2320, ptr %wp2321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7874 word 0x120015ad
  %r2322.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2322 = load i64, ptr %r2322.p, align 8, !alias.scope !3, !noalias !4
  %c2323 = trunc i64 %r2322 to i32
  %t2324 = and i32 %c2323, 63
  %c2325 = zext i32 %t2324 to i64
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2325, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e7878
L_8004e7880_ft:
  ; @pc 0x8004e7880 word 0x910061ad
  %r2338.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2338 = load i64, ptr %r2338.p, align 8, !alias.scope !3, !noalias !4
  %t2339 = add i64 %r2338, 24
  %wp2340 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2339, ptr %wp2340, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e7884
L_8004e7894_ft:
  ; @pc 0x8004e7894 word 0x17fffee0
  br label %L_8004e7414
L_8004e7984_ft:
  ; @pc 0x8004e7984 word 0x5283b908
  %c2665 = zext i32 7624 to i64
  %wp2666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2665, ptr %wp2666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7988 word 0xaa1603f9
  %r2667.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2667 = load i64, ptr %r2667.p, align 8, !alias.scope !3, !noalias !4
  %t2668 = or i64 0, %r2667
  %wp2669 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2668, ptr %wp2669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e798c word 0x8b0802da
  %r2670.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2670 = load i64, ptr %r2670.p, align 8, !alias.scope !3, !noalias !4
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %t2672 = add i64 %r2670, %r2671
  %wp2673 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2672, ptr %wp2673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7990 word 0xaa1a03e0
  %r2674.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2674 = load i64, ptr %r2674.p, align 8, !alias.scope !3, !noalias !4
  %t2675 = or i64 0, %r2674
  %wp2676 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2675, ptr %wp2676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7994 word 0x97eed17f
  %wp2677 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364881304, ptr %wp2677, align 8, !alias.scope !3, !noalias !4
  call void @f_80009bf90(ptr %c)
  ; @pc 0x8004e7998 word 0xf94efacb
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %t2679 = add i64 %r2678, 7664
  %gmp2680 = inttoptr i64 %t2679 to ptr
  %gml2681 = load i64, ptr %gmp2680, align 1, !alias.scope !4, !noalias !3
  %wp2682 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2681, ptr %wp2682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e799c word 0x5283bd08
  %c2683 = zext i32 7656 to i64
  %wp2684 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2683, ptr %wp2684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79a0 word 0x8b0802ca
  %r2685.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2685 = load i64, ptr %r2685.p, align 8, !alias.scope !3, !noalias !4
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %t2687 = add i64 %r2685, %r2686
  %wp2688 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2687, ptr %wp2688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79a4 word 0xeb0a017f
  %r2689.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2689 = load i64, ptr %r2689.p, align 8, !alias.scope !3, !noalias !4
  %r2690.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2690 = load i64, ptr %r2690.p, align 8, !alias.scope !3, !noalias !4
  %t2691 = sub i64 %r2689, %r2690
  %fn2692 = icmp slt i64 %t2691, 0
  %fz2693 = icmp eq i64 %t2691, 0
  %fc2694 = icmp uge i64 %r2689, %r2690
  %fx12695 = xor i64 %r2689, %r2690
  %fx22696 = xor i64 %r2689, %t2691
  %fva2697 = and i64 %fx12695, %fx22696
  %fv2698 = icmp slt i64 %fva2697, 0
  %nz2699 = zext i1 %fn2692 to i64
  %zz2700 = zext i1 %fz2693 to i64
  %cz2701 = zext i1 %fc2694 to i64
  %vz2702 = zext i1 %fv2698 to i64
  %ns2703 = shl i64 %nz2699, 31
  %zs2704 = shl i64 %zz2700, 30
  %cs2705 = shl i64 %cz2701, 29
  %vs2706 = shl i64 %vz2702, 28
  %nzor2707 = or i64 %ns2703, %zs2704
  %cvor2708 = or i64 %cs2705, %vs2706
  %nzcv2709 = or i64 %nzor2707, %cvor2708
  %wp2710 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2709, ptr %wp2710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79a8 word 0x54000e20
  %r2711.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2711 = load i64, ptr %r2711.p, align 8, !alias.scope !3, !noalias !4
  %fsh2713 = lshr i64 %r2711, 30
  %cond2712 = trunc i64 %fsh2713 to i1
  br i1 %cond2712, label %L_8004e7b6c, label %L_8004e79ac_ft
L_8004e79ac_ft:
  ; @pc 0x8004e79ac word 0xb99dfec8
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %t2715 = add i64 %r2714, 7676
  %gmp2716 = inttoptr i64 %t2715 to ptr
  %gml2717 = load i32, ptr %gmp2716, align 1, !alias.scope !4, !noalias !3
  %c2718 = sext i32 %gml2717 to i64
  %wp2719 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2718, ptr %wp2719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79b0 word 0xcb0803e9
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = sub i64 0, %r2720
  %wp2722 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2721, ptr %wp2722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79b4 word 0xcb08014a
  %r2723.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2723 = load i64, ptr %r2723.p, align 8, !alias.scope !3, !noalias !4
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %t2725 = sub i64 %r2723, %r2724
  %wp2726 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2725, ptr %wp2726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79b8 word 0x2d4002a1
  %r2727.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2727 = load i64, ptr %r2727.p, align 8, !alias.scope !3, !noalias !4
  %t2728 = add i64 %r2727, 4
  %gmp2729 = inttoptr i64 %r2727 to ptr
  %gml2730 = load i32, ptr %gmp2729, align 1, !alias.scope !4, !noalias !3
  %gmp2731 = inttoptr i64 %t2728 to ptr
  %gml2732 = load i32, ptr %gmp2731, align 1, !alias.scope !4, !noalias !3
  %c2733 = zext i32 %gml2730 to i128
  %wp2734 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2733, ptr %wp2734, align 16, !alias.scope !3, !noalias !4
  %c2735 = zext i32 %gml2732 to i128
  %wp2736 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2735, ptr %wp2736, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79bc word 0xcb080179
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %r2738.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2738 = load i64, ptr %r2738.p, align 8, !alias.scope !3, !noalias !4
  %t2739 = sub i64 %r2737, %r2738
  %wp2740 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2739, ptr %wp2740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79c0 word 0xaa1503eb
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %t2742 = or i64 0, %r2741
  %wp2743 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2742, ptr %wp2743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79c4 word 0x5280014b
  %c2744 = zext i32 10 to i64
  %wp2745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2744, ptr %wp2745, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e79c8
L_8004e79d4_ft:
  ; @pc 0x8004e79d4 word 0x3940a32c
  %r2770.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2770 = load i64, ptr %r2770.p, align 8, !alias.scope !3, !noalias !4
  %t2771 = add i64 %r2770, 40
  %gmp2772 = inttoptr i64 %t2771 to ptr
  %gml2773 = load i8, ptr %gmp2772, align 1, !alias.scope !4, !noalias !3
  %c2774 = zext i8 %gml2773 to i64
  %wp2775 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2774, ptr %wp2775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e79d8 word 0x340000ec
  %r2776.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2776 = load i64, ptr %r2776.p, align 8, !alias.scope !3, !noalias !4
  %c2777 = trunc i64 %r2776 to i32
  %cmp2778 = icmp eq i32 %c2777, 0
  br i1 %cmp2778, label %L_8004e79f4, label %L_8004e79dc
L_8004e79f0_ft:
  ; @pc 0x8004e79f0 word 0x1400005f
  br label %L_8004e7b6c
L_8004e7a08_ft:
  ; @pc 0x8004e7a08 word 0xbd405724
  %r2850.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2850 = load i64, ptr %r2850.p, align 8, !alias.scope !3, !noalias !4
  %t2851 = add i64 %r2850, 84
  %gmp2852 = inttoptr i64 %t2851 to ptr
  %gml2853 = load i32, ptr %gmp2852, align 1, !alias.scope !4, !noalias !3
  %c2854 = zext i32 %gml2853 to i128
  %wp2855 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c2854, ptr %wp2855, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a0c word 0x1e202080
  %fcmp2856 = call i64 @rt_fp_cmp_s(ptr %c, i32 4, i32 0, i32 0)
  %wp2857 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2856, ptr %wp2857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a10 word 0x54fffe68
  %r2858.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2858 = load i64, ptr %r2858.p, align 8, !alias.scope !3, !noalias !4
  %fsh2860 = lshr i64 %r2858, 29
  %ftr2861 = trunc i64 %fsh2860 to i1
  %fsh2862 = lshr i64 %r2858, 30
  %ftr2863 = trunc i64 %fsh2862 to i1
  %fnz2864 = xor i1 %ftr2863, true
  %cond2859 = and i1 %ftr2861, %fnz2864
  br i1 %cond2859, label %L_8004e79dc, label %L_8004e7a14_ft
L_8004e7a14_ft:
  ; @pc 0x8004e7a14 word 0xbd405f25
  %r2865.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2865 = load i64, ptr %r2865.p, align 8, !alias.scope !3, !noalias !4
  %t2866 = add i64 %r2865, 92
  %gmp2867 = inttoptr i64 %t2866 to ptr
  %gml2868 = load i32, ptr %gmp2867, align 1, !alias.scope !4, !noalias !3
  %c2869 = zext i32 %gml2868 to i128
  %wp2870 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c2869, ptr %wp2870, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a18 word 0x1e252000
  %fcmp2871 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 5, i32 0)
  %wp2872 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2871, ptr %wp2872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a1c word 0x54fffe08
  %r2873.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2873 = load i64, ptr %r2873.p, align 8, !alias.scope !3, !noalias !4
  %fsh2875 = lshr i64 %r2873, 29
  %ftr2876 = trunc i64 %fsh2875 to i1
  %fsh2877 = lshr i64 %r2873, 30
  %ftr2878 = trunc i64 %fsh2877 to i1
  %fnz2879 = xor i1 %ftr2878, true
  %cond2874 = and i1 %ftr2876, %fnz2879
  br i1 %cond2874, label %L_8004e79dc, label %L_8004e7a20_ft
L_8004e7a20_ft:
  ; @pc 0x8004e7a20 word 0x1e223821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 2)
  ; @pc 0x8004e7a24 word 0x1e223862
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 3, i32 2)
  ; @pc 0x8004e7a28 word 0x8b181738
  %r2880.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2880 = load i64, ptr %r2880.p, align 8, !alias.scope !3, !noalias !4
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %t2882 = shl i64 %r2881, 5
  %t2883 = add i64 %r2880, %t2882
  %wp2884 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2883, ptr %wp2884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a2c word 0x1e2438a3
  call void @rt_fp_op_s(ptr %c, i32 1, i32 3, i32 5, i32 4)
  ; @pc 0x8004e7a30 word 0xd10043a0
  %r2885.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2885 = load i64, ptr %r2885.p, align 8, !alias.scope !3, !noalias !4
  %t2886 = sub i64 %r2885, 16
  %wp2887 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2886, ptr %wp2887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a34 word 0x52800021
  %c2888 = zext i32 1 to i64
  %wp2889 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2888, ptr %wp2889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a38 word 0x1e221821
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 1, i32 2)
  ; @pc 0x8004e7a3c word 0x1e243802
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 0, i32 4)
  ; @pc 0x8004e7a40 word 0x2d589300
  %r2890.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2890 = load i64, ptr %r2890.p, align 8, !alias.scope !3, !noalias !4
  %t2891 = add i64 %r2890, 196
  %t2892 = add i64 %t2891, 4
  %gmp2893 = inttoptr i64 %t2891 to ptr
  %gml2894 = load i32, ptr %gmp2893, align 1, !alias.scope !4, !noalias !3
  %gmp2895 = inttoptr i64 %t2892 to ptr
  %gml2896 = load i32, ptr %gmp2895, align 1, !alias.scope !4, !noalias !3
  %c2897 = zext i32 %gml2894 to i128
  %wp2898 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2897, ptr %wp2898, align 16, !alias.scope !3, !noalias !4
  %c2899 = zext i32 %gml2896 to i128
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c2899, ptr %wp2900, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a44 word 0x1e202820
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 0)
  ; @pc 0x8004e7a48 word 0x7d418301
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %t2902 = add i64 %r2901, 192
  %gmp2903 = inttoptr i64 %t2902 to ptr
  %gml2904 = load i16, ptr %gmp2903, align 1, !alias.scope !4, !noalias !3
  %c2905 = zext i16 %gml2904 to i128
  %wp2906 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2905, ptr %wp2906, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a4c word 0x7e21d821
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1)
  ; @pc 0x8004e7a50 word 0x1e210800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 1)
  ; @pc 0x8004e7a54 word 0x1e231841
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 2, i32 3)
  ; @pc 0x8004e7a58 word 0x7d418702
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %t2908 = add i64 %r2907, 194
  %gmp2909 = inttoptr i64 %t2908 to ptr
  %gml2910 = load i16, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  %c2911 = zext i16 %gml2910 to i128
  %wp2912 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2911, ptr %wp2912, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a5c word 0x7d417f03
  %r2913.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2913 = load i64, ptr %r2913.p, align 8, !alias.scope !3, !noalias !4
  %t2914 = add i64 %r2913, 190
  %gmp2915 = inttoptr i64 %t2914 to ptr
  %gml2916 = load i16, ptr %gmp2915, align 1, !alias.scope !4, !noalias !3
  %c2917 = zext i16 %gml2916 to i128
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c2917, ptr %wp2918, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a60 word 0x7e21d842
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 2, i32 2)
  ; @pc 0x8004e7a64 word 0x7e21d863
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 3, i32 3)
  ; @pc 0x8004e7a68 word 0x1e242821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 4)
  ; @pc 0x8004e7a6c word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x8004e7a70 word 0x7d417b02
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %t2920 = add i64 %r2919, 188
  %gmp2921 = inttoptr i64 %t2920 to ptr
  %gml2922 = load i16, ptr %gmp2921, align 1, !alias.scope !4, !noalias !3
  %c2923 = zext i16 %gml2922 to i128
  %wp2924 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2923, ptr %wp2924, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a74 word 0x7e21d842
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 2, i32 2)
  ; @pc 0x8004e7a78 word 0x945cdca9
  %wp2925 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364881532, ptr %wp2925, align 8, !alias.scope !3, !noalias !4
  call void @f_801c1ed1c(ptr %c)
  ; @pc 0x8004e7a7c word 0x79417f0b
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %t2927 = add i64 %r2926, 190
  %gmp2928 = inttoptr i64 %t2927 to ptr
  %gml2929 = load i16, ptr %gmp2928, align 1, !alias.scope !4, !noalias !3
  %c2930 = zext i16 %gml2929 to i64
  %wp2931 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2930, ptr %wp2931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a80 word 0x5100056b
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %c2933 = trunc i64 %r2932 to i32
  %t2934 = sub i32 %c2933, 1
  %c2935 = zext i32 %t2934 to i64
  %wp2936 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2935, ptr %wp2936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a84 word 0x79417b0a
  %r2937.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2937 = load i64, ptr %r2937.p, align 8, !alias.scope !3, !noalias !4
  %t2938 = add i64 %r2937, 188
  %gmp2939 = inttoptr i64 %t2938 to ptr
  %gml2940 = load i16, ptr %gmp2939, align 1, !alias.scope !4, !noalias !3
  %c2941 = zext i16 %gml2940 to i64
  %wp2942 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2941, ptr %wp2942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a88 word 0x297e27a8
  %r2943.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2943 = load i64, ptr %r2943.p, align 8, !alias.scope !3, !noalias !4
  %t2944 = add i64 %r2943, -16
  %t2945 = add i64 %t2944, 4
  %gmp2946 = inttoptr i64 %t2944 to ptr
  %gml2947 = load i32, ptr %gmp2946, align 1, !alias.scope !4, !noalias !3
  %c2948 = zext i32 %gml2947 to i64
  %gmp2949 = inttoptr i64 %t2945 to ptr
  %gml2950 = load i32, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  %c2951 = zext i32 %gml2950 to i64
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2948, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  %wp2953 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2951, ptr %wp2953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a8c word 0x5100054a
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %c2955 = trunc i64 %r2954 to i32
  %t2956 = sub i32 %c2955, 1
  %c2957 = zext i32 %t2956 to i64
  %wp2958 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2957, ptr %wp2958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a90 word 0x3942eb10
  %r2959.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2959 = load i64, ptr %r2959.p, align 8, !alias.scope !3, !noalias !4
  %t2960 = add i64 %r2959, 186
  %gmp2961 = inttoptr i64 %t2960 to ptr
  %gml2962 = load i8, ptr %gmp2961, align 1, !alias.scope !4, !noalias !3
  %c2963 = zext i8 %gml2962 to i64
  %wp2964 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2963, ptr %wp2964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a94 word 0x7941730c
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2965 = load i64, ptr %r2965.p, align 8, !alias.scope !3, !noalias !4
  %t2966 = add i64 %r2965, 184
  %gmp2967 = inttoptr i64 %t2966 to ptr
  %gml2968 = load i16, ptr %gmp2967, align 1, !alias.scope !4, !noalias !3
  %c2969 = zext i16 %gml2968 to i64
  %wp2970 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2969, ptr %wp2970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a98 word 0x6b0b013f
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %c2972 = trunc i64 %r2971 to i32
  %r2973.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2973 = load i64, ptr %r2973.p, align 8, !alias.scope !3, !noalias !4
  %c2974 = trunc i64 %r2973 to i32
  %t2975 = sub i32 %c2972, %c2974
  %fn2976 = icmp slt i32 %t2975, 0
  %fz2977 = icmp eq i32 %t2975, 0
  %fc2978 = icmp uge i32 %c2972, %c2974
  %fx12979 = xor i32 %c2972, %c2974
  %fx22980 = xor i32 %c2972, %t2975
  %fva2981 = and i32 %fx12979, %fx22980
  %fv2982 = icmp slt i32 %fva2981, 0
  %nz2983 = zext i1 %fn2976 to i64
  %zz2984 = zext i1 %fz2977 to i64
  %cz2985 = zext i1 %fc2978 to i64
  %vz2986 = zext i1 %fv2982 to i64
  %ns2987 = shl i64 %nz2983, 31
  %zs2988 = shl i64 %zz2984, 30
  %cs2989 = shl i64 %cz2985, 29
  %vs2990 = shl i64 %vz2986, 28
  %nzor2991 = or i64 %ns2987, %zs2988
  %cvor2992 = or i64 %cs2989, %vs2990
  %nzcv2993 = or i64 %nzor2991, %cvor2992
  %wp2994 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2993, ptr %wp2994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7a9c word 0xf9405b0d
  %r2995.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2995 = load i64, ptr %r2995.p, align 8, !alias.scope !3, !noalias !4
  %t2996 = add i64 %r2995, 176
  %gmp2997 = inttoptr i64 %t2996 to ptr
  %gml2998 = load i64, ptr %gmp2997, align 1, !alias.scope !4, !noalias !3
  %wp2999 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2998, ptr %wp2999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7aa0 word 0x1a8bb12e
  %r3000.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3000 = load i64, ptr %r3000.p, align 8, !alias.scope !3, !noalias !4
  %c3001 = trunc i64 %r3000 to i32
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %c3003 = trunc i64 %r3002 to i32
  %r3004.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3004 = load i64, ptr %r3004.p, align 8, !alias.scope !3, !noalias !4
  %fsh3006 = lshr i64 %r3004, 31
  %ftr3007 = trunc i64 %fsh3006 to i1
  %fsh3008 = lshr i64 %r3004, 28
  %ftr3009 = trunc i64 %fsh3008 to i1
  %cond3005 = icmp ne i1 %ftr3007, %ftr3009
  %sel3010 = select i1 %cond3005, i32 %c3001, i32 %c3003
  %c3011 = zext i32 %sel3010 to i64
  %wp3012 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3011, ptr %wp3012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7aa4 word 0x7100013f
  %r3013.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3013 = load i64, ptr %r3013.p, align 8, !alias.scope !3, !noalias !4
  %c3014 = trunc i64 %r3013 to i32
  %t3015 = sub i32 %c3014, 0
  %fn3016 = icmp slt i32 %t3015, 0
  %fz3017 = icmp eq i32 %t3015, 0
  %fc3018 = icmp uge i32 %c3014, 0
  %fx13019 = xor i32 %c3014, 0
  %fx23020 = xor i32 %c3014, %t3015
  %fva3021 = and i32 %fx13019, %fx23020
  %fv3022 = icmp slt i32 %fva3021, 0
  %nz3023 = zext i1 %fn3016 to i64
  %zz3024 = zext i1 %fz3017 to i64
  %cz3025 = zext i1 %fc3018 to i64
  %vz3026 = zext i1 %fv3022 to i64
  %ns3027 = shl i64 %nz3023, 31
  %zs3028 = shl i64 %zz3024, 30
  %cs3029 = shl i64 %cz3025, 29
  %vs3030 = shl i64 %vz3026, 28
  %nzor3031 = or i64 %ns3027, %zs3028
  %cvor3032 = or i64 %cs3029, %vs3030
  %nzcv3033 = or i64 %nzor3031, %cvor3032
  %wp3034 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3033, ptr %wp3034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7aa8 word 0x1a8eb3ee
  %r3035.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3035 = load i64, ptr %r3035.p, align 8, !alias.scope !3, !noalias !4
  %c3036 = trunc i64 %r3035 to i32
  %r3037.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3037 = load i64, ptr %r3037.p, align 8, !alias.scope !3, !noalias !4
  %fsh3039 = lshr i64 %r3037, 31
  %ftr3040 = trunc i64 %fsh3039 to i1
  %fsh3041 = lshr i64 %r3037, 28
  %ftr3042 = trunc i64 %fsh3041 to i1
  %cond3038 = icmp ne i1 %ftr3040, %ftr3042
  %sel3043 = select i1 %cond3038, i32 0, i32 %c3036
  %c3044 = zext i32 %sel3043 to i64
  %wp3045 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3044, ptr %wp3045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7aac word 0x6b0a011f
  %r3046.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3046 = load i64, ptr %r3046.p, align 8, !alias.scope !3, !noalias !4
  %c3047 = trunc i64 %r3046 to i32
  %r3048.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3048 = load i64, ptr %r3048.p, align 8, !alias.scope !3, !noalias !4
  %c3049 = trunc i64 %r3048 to i32
  %t3050 = sub i32 %c3047, %c3049
  %fn3051 = icmp slt i32 %t3050, 0
  %fz3052 = icmp eq i32 %t3050, 0
  %fc3053 = icmp uge i32 %c3047, %c3049
  %fx13054 = xor i32 %c3047, %c3049
  %fx23055 = xor i32 %c3047, %t3050
  %fva3056 = and i32 %fx13054, %fx23055
  %fv3057 = icmp slt i32 %fva3056, 0
  %nz3058 = zext i1 %fn3051 to i64
  %zz3059 = zext i1 %fz3052 to i64
  %cz3060 = zext i1 %fc3053 to i64
  %vz3061 = zext i1 %fv3057 to i64
  %ns3062 = shl i64 %nz3058, 31
  %zs3063 = shl i64 %zz3059, 30
  %cs3064 = shl i64 %cz3060, 29
  %vs3065 = shl i64 %vz3061, 28
  %nzor3066 = or i64 %ns3062, %zs3063
  %cvor3067 = or i64 %cs3064, %vs3065
  %nzcv3068 = or i64 %nzor3066, %cvor3067
  %wp3069 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3068, ptr %wp3069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ab0 word 0x1a8ab10f
  %r3070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3070 = load i64, ptr %r3070.p, align 8, !alias.scope !3, !noalias !4
  %c3071 = trunc i64 %r3070 to i32
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %c3073 = trunc i64 %r3072 to i32
  %r3074.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3074 = load i64, ptr %r3074.p, align 8, !alias.scope !3, !noalias !4
  %fsh3076 = lshr i64 %r3074, 31
  %ftr3077 = trunc i64 %fsh3076 to i1
  %fsh3078 = lshr i64 %r3074, 28
  %ftr3079 = trunc i64 %fsh3078 to i1
  %cond3075 = icmp ne i1 %ftr3077, %ftr3079
  %sel3080 = select i1 %cond3075, i32 %c3071, i32 %c3073
  %c3081 = zext i32 %sel3080 to i64
  %wp3082 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3081, ptr %wp3082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ab4 word 0x7100011f
  %r3083.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3083 = load i64, ptr %r3083.p, align 8, !alias.scope !3, !noalias !4
  %c3084 = trunc i64 %r3083 to i32
  %t3085 = sub i32 %c3084, 0
  %fn3086 = icmp slt i32 %t3085, 0
  %fz3087 = icmp eq i32 %t3085, 0
  %fc3088 = icmp uge i32 %c3084, 0
  %fx13089 = xor i32 %c3084, 0
  %fx23090 = xor i32 %c3084, %t3085
  %fva3091 = and i32 %fx13089, %fx23090
  %fv3092 = icmp slt i32 %fva3091, 0
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
  ; @pc 0x8004e7ab8 word 0x1a8fb3ef
  %r3105.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3105 = load i64, ptr %r3105.p, align 8, !alias.scope !3, !noalias !4
  %c3106 = trunc i64 %r3105 to i32
  %r3107.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3107 = load i64, ptr %r3107.p, align 8, !alias.scope !3, !noalias !4
  %fsh3109 = lshr i64 %r3107, 31
  %ftr3110 = trunc i64 %fsh3109 to i1
  %fsh3111 = lshr i64 %r3107, 28
  %ftr3112 = trunc i64 %fsh3111 to i1
  %cond3108 = icmp ne i1 %ftr3110, %ftr3112
  %sel3113 = select i1 %cond3108, i32 0, i32 %c3106
  %c3114 = zext i32 %sel3113 to i64
  %wp3115 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3114, ptr %wp3115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7abc word 0x9b2f7e0f
  %r3116.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3116 = load i64, ptr %r3116.p, align 8, !alias.scope !3, !noalias !4
  %c3117 = trunc i64 %r3116 to i32
  %c3118 = sext i32 %c3117 to i64
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %c3120 = trunc i64 %r3119 to i32
  %c3121 = sext i32 %c3120 to i64
  %t3122 = mul i64 %c3118, %c3121
  %t3123 = add i64 0, %t3122
  %wp3124 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3123, ptr %wp3124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ac0 word 0x9b2e3d91
  %r3125.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3125 = load i64, ptr %r3125.p, align 8, !alias.scope !3, !noalias !4
  %c3126 = trunc i64 %r3125 to i32
  %c3127 = sext i32 %c3126 to i64
  %r3128.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3128 = load i64, ptr %r3128.p, align 8, !alias.scope !3, !noalias !4
  %c3129 = trunc i64 %r3128 to i32
  %c3130 = sext i32 %c3129 to i64
  %t3131 = mul i64 %c3127, %c3130
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %t3133 = add i64 %r3132, %t3131
  %wp3134 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3133, ptr %wp3134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ac4 word 0x7c7169a0
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %r3136.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3136 = load i64, ptr %r3136.p, align 8, !alias.scope !3, !noalias !4
  %t3137 = add i64 %r3135, %r3136
  %gmp3138 = inttoptr i64 %t3137 to ptr
  %gml3139 = load i16, ptr %gmp3138, align 1, !alias.scope !4, !noalias !3
  %c3140 = zext i16 %gml3139 to i128
  %wp3141 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3140, ptr %wp3141, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ac8 word 0x90014051
  %wp3142 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 34406854656, ptr %wp3142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7acc word 0xbd45ba21
  %r3143.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3143 = load i64, ptr %r3143.p, align 8, !alias.scope !3, !noalias !4
  %t3144 = add i64 %r3143, 1464
  %gmp3145 = inttoptr i64 %t3144 to ptr
  %gml3146 = load i32, ptr %gmp3145, align 1, !alias.scope !4, !noalias !3
  %c3147 = zext i32 %gml3146 to i128
  %wp3148 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3147, ptr %wp3148, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ad0 word 0x11000511
  %r3149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3149 = load i64, ptr %r3149.p, align 8, !alias.scope !3, !noalias !4
  %c3150 = trunc i64 %r3149 to i32
  %t3151 = add i32 %c3150, 1
  %c3152 = zext i32 %t3151 to i64
  %wp3153 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c3152, ptr %wp3153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ad4 word 0x6b0a023f
  %r3154.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3154 = load i64, ptr %r3154.p, align 8, !alias.scope !3, !noalias !4
  %c3155 = trunc i64 %r3154 to i32
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %c3157 = trunc i64 %r3156 to i32
  %t3158 = sub i32 %c3155, %c3157
  %fn3159 = icmp slt i32 %t3158, 0
  %fz3160 = icmp eq i32 %t3158, 0
  %fc3161 = icmp uge i32 %c3155, %c3157
  %fx13162 = xor i32 %c3155, %c3157
  %fx23163 = xor i32 %c3155, %t3158
  %fva3164 = and i32 %fx13162, %fx23163
  %fv3165 = icmp slt i32 %fva3164, 0
  %nz3166 = zext i1 %fn3159 to i64
  %zz3167 = zext i1 %fz3160 to i64
  %cz3168 = zext i1 %fc3161 to i64
  %vz3169 = zext i1 %fv3165 to i64
  %ns3170 = shl i64 %nz3166, 31
  %zs3171 = shl i64 %zz3167, 30
  %cs3172 = shl i64 %cz3168, 29
  %vs3173 = shl i64 %vz3169, 28
  %nzor3174 = or i64 %ns3170, %zs3171
  %cvor3175 = or i64 %cs3172, %vs3173
  %nzcv3176 = or i64 %nzor3174, %cvor3175
  %wp3177 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3176, ptr %wp3177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ad8 word 0x1a88a54a
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %c3179 = trunc i64 %r3178 to i32
  %r3180.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3180 = load i64, ptr %r3180.p, align 8, !alias.scope !3, !noalias !4
  %c3181 = trunc i64 %r3180 to i32
  %t3182 = add i32 %c3181, 1
  %r3183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3183 = load i64, ptr %r3183.p, align 8, !alias.scope !3, !noalias !4
  %fsh3185 = lshr i64 %r3183, 31
  %ftr3186 = trunc i64 %fsh3185 to i1
  %fsh3187 = lshr i64 %r3183, 28
  %ftr3188 = trunc i64 %fsh3187 to i1
  %cond3184 = icmp eq i1 %ftr3186, %ftr3188
  %sel3189 = select i1 %cond3184, i32 %c3179, i32 %t3182
  %c3190 = zext i32 %sel3189 to i64
  %wp3191 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3190, ptr %wp3191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7adc word 0x3100051f
  %r3192.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3192 = load i64, ptr %r3192.p, align 8, !alias.scope !3, !noalias !4
  %c3193 = trunc i64 %r3192 to i32
  %t3194 = add i32 %c3193, 1
  %fn3195 = icmp slt i32 %t3194, 0
  %fz3196 = icmp eq i32 %t3194, 0
  %fc3197 = icmp ult i32 %t3194, %c3193
  %fx13198 = xor i32 %c3193, %t3194
  %fx23199 = xor i32 1, %t3194
  %fva3200 = and i32 %fx13198, %fx23199
  %fv3201 = icmp slt i32 %fva3200, 0
  %nz3202 = zext i1 %fn3195 to i64
  %zz3203 = zext i1 %fz3196 to i64
  %cz3204 = zext i1 %fc3197 to i64
  %vz3205 = zext i1 %fv3201 to i64
  %ns3206 = shl i64 %nz3202, 31
  %zs3207 = shl i64 %zz3203, 30
  %cs3208 = shl i64 %cz3204, 29
  %vs3209 = shl i64 %vz3205, 28
  %nzor3210 = or i64 %ns3206, %zs3207
  %cvor3211 = or i64 %cs3208, %vs3209
  %nzcv3212 = or i64 %nzor3210, %cvor3211
  %wp3213 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3212, ptr %wp3213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ae0 word 0x1a8ab3e8
  %r3214.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3214 = load i64, ptr %r3214.p, align 8, !alias.scope !3, !noalias !4
  %c3215 = trunc i64 %r3214 to i32
  %r3216.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3216 = load i64, ptr %r3216.p, align 8, !alias.scope !3, !noalias !4
  %fsh3218 = lshr i64 %r3216, 31
  %ftr3219 = trunc i64 %fsh3218 to i1
  %fsh3220 = lshr i64 %r3216, 28
  %ftr3221 = trunc i64 %fsh3220 to i1
  %cond3217 = icmp ne i1 %ftr3219, %ftr3221
  %sel3222 = select i1 %cond3217, i32 0, i32 %c3215
  %c3223 = zext i32 %sel3222 to i64
  %wp3224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3223, ptr %wp3224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ae4 word 0x9b287e08
  %r3225.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3225 = load i64, ptr %r3225.p, align 8, !alias.scope !3, !noalias !4
  %c3226 = trunc i64 %r3225 to i32
  %c3227 = sext i32 %c3226 to i64
  %r3228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3228 = load i64, ptr %r3228.p, align 8, !alias.scope !3, !noalias !4
  %c3229 = trunc i64 %r3228 to i32
  %c3230 = sext i32 %c3229 to i64
  %t3231 = mul i64 %c3227, %c3230
  %t3232 = add i64 0, %t3231
  %wp3233 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3232, ptr %wp3233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7ae8 word 0x9b2e218a
  %r3234.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3234 = load i64, ptr %r3234.p, align 8, !alias.scope !3, !noalias !4
  %c3235 = trunc i64 %r3234 to i32
  %c3236 = sext i32 %c3235 to i64
  %r3237.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3237 = load i64, ptr %r3237.p, align 8, !alias.scope !3, !noalias !4
  %c3238 = trunc i64 %r3237 to i32
  %c3239 = sext i32 %c3238 to i64
  %t3240 = mul i64 %c3236, %c3239
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %t3242 = add i64 %r3241, %t3240
  %wp3243 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3242, ptr %wp3243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7aec word 0x7e21d800
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  ; @pc 0x8004e7af0 word 0x1e211800
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 0, i32 1)
  ; @pc 0x8004e7af4 word 0x7c6a69a2
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %t3246 = add i64 %r3244, %r3245
  %gmp3247 = inttoptr i64 %t3246 to ptr
  %gml3248 = load i16, ptr %gmp3247, align 1, !alias.scope !4, !noalias !3
  %c3249 = zext i16 %gml3248 to i128
  %wp3250 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c3249, ptr %wp3250, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7af8 word 0x1100052a
  %r3251.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3251 = load i64, ptr %r3251.p, align 8, !alias.scope !3, !noalias !4
  %c3252 = trunc i64 %r3251 to i32
  %t3253 = add i32 %c3252, 1
  %c3254 = zext i32 %t3253 to i64
  %wp3255 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3254, ptr %wp3255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7afc word 0x6b0b015f
  %r3256.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3256 = load i64, ptr %r3256.p, align 8, !alias.scope !3, !noalias !4
  %c3257 = trunc i64 %r3256 to i32
  %r3258.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3258 = load i64, ptr %r3258.p, align 8, !alias.scope !3, !noalias !4
  %c3259 = trunc i64 %r3258 to i32
  %t3260 = sub i32 %c3257, %c3259
  %fn3261 = icmp slt i32 %t3260, 0
  %fz3262 = icmp eq i32 %t3260, 0
  %fc3263 = icmp uge i32 %c3257, %c3259
  %fx13264 = xor i32 %c3257, %c3259
  %fx23265 = xor i32 %c3257, %t3260
  %fva3266 = and i32 %fx13264, %fx23265
  %fv3267 = icmp slt i32 %fva3266, 0
  %nz3268 = zext i1 %fn3261 to i64
  %zz3269 = zext i1 %fz3262 to i64
  %cz3270 = zext i1 %fc3263 to i64
  %vz3271 = zext i1 %fv3267 to i64
  %ns3272 = shl i64 %nz3268, 31
  %zs3273 = shl i64 %zz3269, 30
  %cs3274 = shl i64 %cz3270, 29
  %vs3275 = shl i64 %vz3271, 28
  %nzor3276 = or i64 %ns3272, %zs3273
  %cvor3277 = or i64 %cs3274, %vs3275
  %nzcv3278 = or i64 %nzor3276, %cvor3277
  %wp3279 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3278, ptr %wp3279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b00 word 0x1a89a56a
  %r3280.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3280 = load i64, ptr %r3280.p, align 8, !alias.scope !3, !noalias !4
  %c3281 = trunc i64 %r3280 to i32
  %r3282.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3282 = load i64, ptr %r3282.p, align 8, !alias.scope !3, !noalias !4
  %c3283 = trunc i64 %r3282 to i32
  %t3284 = add i32 %c3283, 1
  %r3285.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3285 = load i64, ptr %r3285.p, align 8, !alias.scope !3, !noalias !4
  %fsh3287 = lshr i64 %r3285, 31
  %ftr3288 = trunc i64 %fsh3287 to i1
  %fsh3289 = lshr i64 %r3285, 28
  %ftr3290 = trunc i64 %fsh3289 to i1
  %cond3286 = icmp eq i1 %ftr3288, %ftr3290
  %sel3291 = select i1 %cond3286, i32 %c3281, i32 %t3284
  %c3292 = zext i32 %sel3291 to i64
  %wp3293 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3292, ptr %wp3293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b04 word 0x3100053f
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %c3295 = trunc i64 %r3294 to i32
  %t3296 = add i32 %c3295, 1
  %fn3297 = icmp slt i32 %t3296, 0
  %fz3298 = icmp eq i32 %t3296, 0
  %fc3299 = icmp ult i32 %t3296, %c3295
  %fx13300 = xor i32 %c3295, %t3296
  %fx23301 = xor i32 1, %t3296
  %fva3302 = and i32 %fx13300, %fx23301
  %fv3303 = icmp slt i32 %fva3302, 0
  %nz3304 = zext i1 %fn3297 to i64
  %zz3305 = zext i1 %fz3298 to i64
  %cz3306 = zext i1 %fc3299 to i64
  %vz3307 = zext i1 %fv3303 to i64
  %ns3308 = shl i64 %nz3304, 31
  %zs3309 = shl i64 %zz3305, 30
  %cs3310 = shl i64 %cz3306, 29
  %vs3311 = shl i64 %vz3307, 28
  %nzor3312 = or i64 %ns3308, %zs3309
  %cvor3313 = or i64 %cs3310, %vs3311
  %nzcv3314 = or i64 %nzor3312, %cvor3313
  %wp3315 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3314, ptr %wp3315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b08 word 0x1a8ab3e9
  %r3316.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3316 = load i64, ptr %r3316.p, align 8, !alias.scope !3, !noalias !4
  %c3317 = trunc i64 %r3316 to i32
  %r3318.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3318 = load i64, ptr %r3318.p, align 8, !alias.scope !3, !noalias !4
  %fsh3320 = lshr i64 %r3318, 31
  %ftr3321 = trunc i64 %fsh3320 to i1
  %fsh3322 = lshr i64 %r3318, 28
  %ftr3323 = trunc i64 %fsh3322 to i1
  %cond3319 = icmp ne i1 %ftr3321, %ftr3323
  %sel3324 = select i1 %cond3319, i32 0, i32 %c3317
  %c3325 = zext i32 %sel3324 to i64
  %wp3326 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3325, ptr %wp3326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b0c word 0x9b293d8a
  %r3327.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3327 = load i64, ptr %r3327.p, align 8, !alias.scope !3, !noalias !4
  %c3328 = trunc i64 %r3327 to i32
  %c3329 = sext i32 %c3328 to i64
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %c3331 = trunc i64 %r3330 to i32
  %c3332 = sext i32 %c3331 to i64
  %t3333 = mul i64 %c3329, %c3332
  %r3334.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3334 = load i64, ptr %r3334.p, align 8, !alias.scope !3, !noalias !4
  %t3335 = add i64 %r3334, %t3333
  %wp3336 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3335, ptr %wp3336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b10 word 0x9b292188
  %r3337.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3337 = load i64, ptr %r3337.p, align 8, !alias.scope !3, !noalias !4
  %c3338 = trunc i64 %r3337 to i32
  %c3339 = sext i32 %c3338 to i64
  %r3340.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3340 = load i64, ptr %r3340.p, align 8, !alias.scope !3, !noalias !4
  %c3341 = trunc i64 %r3340 to i32
  %c3342 = sext i32 %c3341 to i64
  %t3343 = mul i64 %c3339, %c3342
  %r3344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3344 = load i64, ptr %r3344.p, align 8, !alias.scope !3, !noalias !4
  %t3345 = add i64 %r3344, %t3343
  %wp3346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3345, ptr %wp3346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b14 word 0x7c6a69a3
  %r3347.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3347 = load i64, ptr %r3347.p, align 8, !alias.scope !3, !noalias !4
  %r3348.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3348 = load i64, ptr %r3348.p, align 8, !alias.scope !3, !noalias !4
  %t3349 = add i64 %r3347, %r3348
  %gmp3350 = inttoptr i64 %t3349 to ptr
  %gml3351 = load i16, ptr %gmp3350, align 1, !alias.scope !4, !noalias !3
  %c3352 = zext i16 %gml3351 to i128
  %wp3353 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c3352, ptr %wp3353, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b18 word 0x7c6869a4
  %r3354.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3354 = load i64, ptr %r3354.p, align 8, !alias.scope !3, !noalias !4
  %r3355.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3355 = load i64, ptr %r3355.p, align 8, !alias.scope !3, !noalias !4
  %t3356 = add i64 %r3354, %r3355
  %gmp3357 = inttoptr i64 %t3356 to ptr
  %gml3358 = load i16, ptr %gmp3357, align 1, !alias.scope !4, !noalias !3
  %c3359 = zext i16 %gml3358 to i128
  %wp3360 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c3359, ptr %wp3360, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b1c word 0xf85e83a8
  %r3361.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3361 = load i64, ptr %r3361.p, align 8, !alias.scope !3, !noalias !4
  %t3362 = add i64 %r3361, -24
  %gmp3363 = inttoptr i64 %t3362 to ptr
  %gml3364 = load i64, ptr %gmp3363, align 1, !alias.scope !4, !noalias !3
  %wp3365 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3364, ptr %wp3365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b20 word 0x7e21d842
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 2, i32 2)
  ; @pc 0x8004e7b24 word 0x1e211842
  call void @rt_fp_op_s(ptr %c, i32 5, i32 2, i32 2, i32 1)
  ; @pc 0x8004e7b28 word 0x7e21d863
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 3, i32 3)
  ; @pc 0x8004e7b2c word 0x1e211863
  call void @rt_fp_op_s(ptr %c, i32 5, i32 3, i32 3, i32 1)
  ; @pc 0x8004e7b30 word 0x7e21d884
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 4, i32 4)
  ; @pc 0x8004e7b34 word 0x1e203842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 0)
  ; @pc 0x8004e7b38 word 0x1e211881
  call void @rt_fp_op_s(ptr %c, i32 5, i32 1, i32 4, i32 1)
  ; @pc 0x8004e7b3c word 0x2d7f17a4
  %r3366.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3366 = load i64, ptr %r3366.p, align 8, !alias.scope !3, !noalias !4
  %t3367 = add i64 %r3366, -8
  %t3368 = add i64 %t3367, 4
  %gmp3369 = inttoptr i64 %t3367 to ptr
  %gml3370 = load i32, ptr %gmp3369, align 1, !alias.scope !4, !noalias !3
  %gmp3371 = inttoptr i64 %t3368 to ptr
  %gml3372 = load i32, ptr %gmp3371, align 1, !alias.scope !4, !noalias !3
  %c3373 = zext i32 %gml3370 to i128
  %wp3374 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c3373, ptr %wp3374, align 16, !alias.scope !3, !noalias !4
  %c3375 = zext i32 %gml3372 to i128
  %wp3376 = getelementptr inbounds i8, ptr %c, i64 592
  store i128 %c3375, ptr %wp3376, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b40 word 0x1f040040
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 2, i32 4, i32 0)
  ; @pc 0x8004e7b44 word 0x1e233821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 3)
  ; @pc 0x8004e7b48 word 0x1f040c21
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 4, i32 3)
  ; @pc 0x8004e7b4c word 0x1e203821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 0)
  ; @pc 0x8004e7b50 word 0x1f050020
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 1, i32 5, i32 0)
  ; @pc 0x8004e7b54 word 0x2d4c0b21
  %r3377.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3377 = load i64, ptr %r3377.p, align 8, !alias.scope !3, !noalias !4
  %t3378 = add i64 %r3377, 96
  %t3379 = add i64 %t3378, 4
  %gmp3380 = inttoptr i64 %t3378 to ptr
  %gml3381 = load i32, ptr %gmp3380, align 1, !alias.scope !4, !noalias !3
  %gmp3382 = inttoptr i64 %t3379 to ptr
  %gml3383 = load i32, ptr %gmp3382, align 1, !alias.scope !4, !noalias !3
  %c3384 = zext i32 %gml3381 to i128
  %wp3385 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3384, ptr %wp3385, align 16, !alias.scope !3, !noalias !4
  %c3386 = zext i32 %gml3383 to i128
  %wp3387 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c3386, ptr %wp3387, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b58 word 0x1e213842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 1)
  ; @pc 0x8004e7b5c word 0x1f000443
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 3, i32 2, i32 0, i32 1)
  ; @pc 0x8004e7b60 word 0xbd400101
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %gmp3389 = inttoptr i64 %r3388 to ptr
  %gml3390 = load i32, ptr %gmp3389, align 1, !alias.scope !4, !noalias !3
  %c3391 = zext i32 %gml3390 to i128
  %wp3392 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3391, ptr %wp3392, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8004e7b64 word 0x1e232820
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 3)
  ; @pc 0x8004e7b68 word 0xbd000100
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %r3394.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3394 = load i128, ptr %r3394.p, align 16, !alias.scope !3, !noalias !4
  %c3395 = trunc i128 %r3394 to i32
  %gmp3396 = inttoptr i64 %r3393 to ptr
  store i32 %c3395, ptr %gmp3396, align 1, !alias.scope !4, !noalias !3
  br label %L_8004e7b6c
L_8004e7bc4_unreach:
  ; @pc 0x8004e7bc4 word 0x00000000
  call void @rt_udf(ptr %c, i64 34364881860)
  unreachable
L_8004e7bc8_unreach:
  ; @pc 0x8004e7bc8 word 0x00000000
  call void @rt_udf(ptr %c, i64 34364881864)
  unreachable
L_8004e7bcc_unreach:
  ; @pc 0x8004e7bcc word 0x00000000
  call void @rt_udf(ptr %c, i64 34364881868)
  unreachable
}

define dso_local void @f_8004e8eec(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8004e8eec:
  ; @pc 0x8004e8eec word 0xd101c3ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 112
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8ef0 word 0xa9017bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 16
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8ef4 word 0xa9026ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 32
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8ef8 word 0xa90367fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 48
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8efc word 0xa9045ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 64
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8f00 word 0xa90557f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 80
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8f04 word 0xa9064ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 96
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8f08 word 0x910043fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 16
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f0c word 0x39400008
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %gmp54 = inttoptr i64 %r53 to ptr
  %gml55 = load i8, ptr %gmp54, align 1, !alias.scope !4, !noalias !3
  %c56 = zext i8 %gml55 to i64
  %wp57 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f10 word 0x528000e9
  %c58 = zext i32 7 to i64
  %wp59 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c58, ptr %wp59, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f14 word 0x5280002a
  %c60 = zext i32 1 to i64
  %wp61 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f18 word 0xf940041c
  %r62.p = getelementptr inbounds i8, ptr %c, i64 0
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %t63 = add i64 %r62, 8
  %gmp64 = inttoptr i64 %t63 to ptr
  %gml65 = load i64, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f1c word 0x1280000d
  %c67 = zext i32 -1 to i64
  %wp68 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c67, ptr %wp68, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f20 word 0x531e74b3
  %r69.p = getelementptr inbounds i8, ptr %c, i64 40
  %r69 = load i64, ptr %r69.p, align 8, !alias.scope !3, !noalias !4
  %c70 = trunc i64 %r69 to i32
  %ror71 = call i32 @llvm.fshr.i32(i32 %c70, i32 %c70, i32 30)
  %t72 = and i32 %ror71, -4
  %c73 = zext i32 %t72 to i64
  %wp74 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c73, ptr %wp74, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f24 word 0xaa0003f4
  %r75.p = getelementptr inbounds i8, ptr %c, i64 0
  %r75 = load i64, ptr %r75.p, align 8, !alias.scope !3, !noalias !4
  %t76 = or i64 0, %r75
  %wp77 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t76, ptr %wp77, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f28 word 0x2a0303f9
  %r78.p = getelementptr inbounds i8, ptr %c, i64 24
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %c79 = trunc i64 %r78 to i32
  %t80 = or i32 0, %c79
  %c81 = zext i32 %t80 to i64
  %wp82 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c81, ptr %wp82, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f2c word 0x4b080129
  %r83.p = getelementptr inbounds i8, ptr %c, i64 72
  %r83 = load i64, ptr %r83.p, align 8, !alias.scope !3, !noalias !4
  %c84 = trunc i64 %r83 to i32
  %r85.p = getelementptr inbounds i8, ptr %c, i64 64
  %r85 = load i64, ptr %r85.p, align 8, !alias.scope !3, !noalias !4
  %c86 = trunc i64 %r85 to i32
  %t87 = sub i32 %c84, %c86
  %c88 = zext i32 %t87 to i64
  %wp89 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c88, ptr %wp89, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f30 word 0xb9400048
  %r90.p = getelementptr inbounds i8, ptr %c, i64 16
  %r90 = load i64, ptr %r90.p, align 8, !alias.scope !3, !noalias !4
  %gmp91 = inttoptr i64 %r90 to ptr
  %gml92 = load i32, ptr %gmp91, align 1, !alias.scope !4, !noalias !3
  %c93 = zext i32 %gml92 to i64
  %wp94 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c93, ptr %wp94, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f34 word 0xb8736b9a
  %r95.p = getelementptr inbounds i8, ptr %c, i64 224
  %r95 = load i64, ptr %r95.p, align 8, !alias.scope !3, !noalias !4
  %r96.p = getelementptr inbounds i8, ptr %c, i64 152
  %r96 = load i64, ptr %r96.p, align 8, !alias.scope !3, !noalias !4
  %t97 = add i64 %r95, %r96
  %gmp98 = inttoptr i64 %t97 to ptr
  %gml99 = load i32, ptr %gmp98, align 1, !alias.scope !4, !noalias !3
  %c100 = zext i32 %gml99 to i64
  %wp101 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c100, ptr %wp101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f38 word 0x1ac9214a
  %r102.p = getelementptr inbounds i8, ptr %c, i64 80
  %r102 = load i64, ptr %r102.p, align 8, !alias.scope !3, !noalias !4
  %c103 = trunc i64 %r102 to i32
  %r104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r104 = load i64, ptr %r104.p, align 8, !alias.scope !3, !noalias !4
  %c105 = trunc i64 %r104 to i32
  %t106 = and i32 %c105, 31
  %t107 = shl i32 %c103, %t106
  %c108 = zext i32 %t107 to i64
  %wp109 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c108, ptr %wp109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f3c word 0x1ac921ae
  %r110.p = getelementptr inbounds i8, ptr %c, i64 104
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %c111 = trunc i64 %r110 to i32
  %r112.p = getelementptr inbounds i8, ptr %c, i64 72
  %r112 = load i64, ptr %r112.p, align 8, !alias.scope !3, !noalias !4
  %c113 = trunc i64 %r112 to i32
  %t114 = and i32 %c113, 31
  %t115 = shl i32 %c111, %t114
  %c116 = zext i32 %t115 to i64
  %wp117 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f40 word 0x1ac92469
  %r118.p = getelementptr inbounds i8, ptr %c, i64 24
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %c119 = trunc i64 %r118 to i32
  %r120.p = getelementptr inbounds i8, ptr %c, i64 72
  %r120 = load i64, ptr %r120.p, align 8, !alias.scope !3, !noalias !4
  %c121 = trunc i64 %r120 to i32
  %t122 = and i32 %c121, 31
  %t123 = lshr i32 %c119, %t122
  %c124 = zext i32 %t123 to i64
  %wp125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f44 word 0x12000136
  %r126.p = getelementptr inbounds i8, ptr %c, i64 72
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %c127 = trunc i64 %r126 to i32
  %t128 = and i32 %c127, 1
  %c129 = zext i32 %t128 to i64
  %wp130 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f48 word 0x6a08014b
  %r131.p = getelementptr inbounds i8, ptr %c, i64 64
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %c132 = trunc i64 %r131 to i32
  %r133.p = getelementptr inbounds i8, ptr %c, i64 80
  %r133 = load i64, ptr %r133.p, align 8, !alias.scope !3, !noalias !4
  %c134 = trunc i64 %r133 to i32
  %t135 = and i32 %c134, %c132
  %fn136 = icmp slt i32 %t135, 0
  %fz137 = icmp eq i32 %t135, 0
  %nz138 = zext i1 %fn136 to i64
  %zz139 = zext i1 %fz137 to i64
  %ns140 = shl i64 %nz138, 31
  %zs141 = shl i64 %zz139, 30
  %nzcv142 = or i64 %ns140, %zs141
  %wp143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv142, ptr %wp143, align 8, !alias.scope !3, !noalias !4
  %c144 = zext i32 %t135 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f4c word 0x1a9f07e9
  %t146 = add i32 0, 1
  %r147.p = getelementptr inbounds i8, ptr %c, i64 272
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %fsh149 = lshr i64 %r147, 30
  %cond148 = trunc i64 %fsh149 to i1
  %sel150 = select i1 %cond148, i32 0, i32 %t146
  %c151 = zext i32 %sel150 to i64
  %wp152 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c151, ptr %wp152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f50 word 0x6a04015f
  %r153.p = getelementptr inbounds i8, ptr %c, i64 32
  %r153 = load i64, ptr %r153.p, align 8, !alias.scope !3, !noalias !4
  %c154 = trunc i64 %r153 to i32
  %r155.p = getelementptr inbounds i8, ptr %c, i64 80
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %c156 = trunc i64 %r155 to i32
  %t157 = and i32 %c156, %c154
  %fn158 = icmp slt i32 %t157, 0
  %fz159 = icmp eq i32 %t157, 0
  %nz160 = zext i1 %fn158 to i64
  %zz161 = zext i1 %fz159 to i64
  %ns162 = shl i64 %nz160, 31
  %zs163 = shl i64 %zz161, 30
  %nzcv164 = or i64 %ns162, %zs163
  %wp165 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv164, ptr %wp165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f54 word 0x2a0906c9
  %r166.p = getelementptr inbounds i8, ptr %c, i64 72
  %r166 = load i64, ptr %r166.p, align 8, !alias.scope !3, !noalias !4
  %c167 = trunc i64 %r166 to i32
  %t168 = shl i32 %c167, 1
  %r169.p = getelementptr inbounds i8, ptr %c, i64 176
  %r169 = load i64, ptr %r169.p, align 8, !alias.scope !3, !noalias !4
  %c170 = trunc i64 %r169 to i32
  %t171 = or i32 %c170, %t168
  %c172 = zext i32 %t171 to i64
  %wp173 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c172, ptr %wp173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f58 word 0x1a9f07fb
  %t174 = add i32 0, 1
  %r175.p = getelementptr inbounds i8, ptr %c, i64 272
  %r175 = load i64, ptr %r175.p, align 8, !alias.scope !3, !noalias !4
  %fsh177 = lshr i64 %r175, 30
  %cond176 = trunc i64 %fsh177 to i1
  %sel178 = select i1 %cond176, i32 0, i32 %t174
  %c179 = zext i32 %sel178 to i64
  %wp180 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c179, ptr %wp180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f5c word 0x331e0369
  %r181.p = getelementptr inbounds i8, ptr %c, i64 216
  %r181 = load i64, ptr %r181.p, align 8, !alias.scope !3, !noalias !4
  %c182 = trunc i64 %r181 to i32
  %ror183 = call i32 @llvm.fshr.i32(i32 %c182, i32 %c182, i32 30)
  %r184.p = getelementptr inbounds i8, ptr %c, i64 72
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %c185 = trunc i64 %r184 to i32
  %t186 = and i32 %ror183, 4
  %t187 = and i32 %c185, -5
  %t188 = or i32 %t187, %t186
  %t189 = and i32 %t188, 7
  %t190 = and i32 %c185, -8
  %t191 = or i32 %t190, %t189
  %c192 = zext i32 %t191 to i64
  %wp193 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f60 word 0x340005ab
  %r194.p = getelementptr inbounds i8, ptr %c, i64 88
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %c195 = trunc i64 %r194 to i32
  %cmp196 = icmp eq i32 %c195, 0
  br i1 %cmp196, label %L_8004e9014, label %L_8004e8f64_ft
L_8004e8f6c:
  ; @pc 0x8004e8f6c word 0x0a0801c8
  %r208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %c209 = trunc i64 %r208 to i32
  %r210.p = getelementptr inbounds i8, ptr %c, i64 112
  %r210 = load i64, ptr %r210.p, align 8, !alias.scope !3, !noalias !4
  %c211 = trunc i64 %r210 to i32
  %t212 = and i32 %c211, %c209
  %c213 = zext i32 %t212 to i64
  %wp214 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c213, ptr %wp214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f70 word 0x51000508
  %r215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r215 = load i64, ptr %r215.p, align 8, !alias.scope !3, !noalias !4
  %c216 = trunc i64 %r215 to i32
  %t217 = sub i32 %c216, 1
  %c218 = zext i32 %t217 to i64
  %wp219 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c218, ptr %wp219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f74 word 0xb9000048
  %r220.p = getelementptr inbounds i8, ptr %c, i64 16
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %r221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %c222 = trunc i64 %r221 to i32
  %gmp223 = inttoptr i64 %r220 to ptr
  store i32 %c222, ptr %gmp223, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8f78 word 0x6b06011f
  %r224.p = getelementptr inbounds i8, ptr %c, i64 64
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %c225 = trunc i64 %r224 to i32
  %r226.p = getelementptr inbounds i8, ptr %c, i64 48
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %c227 = trunc i64 %r226 to i32
  %t228 = sub i32 %c225, %c227
  %fn229 = icmp slt i32 %t228, 0
  %fz230 = icmp eq i32 %t228, 0
  %fc231 = icmp uge i32 %c225, %c227
  %fx1232 = xor i32 %c225, %c227
  %fx2233 = xor i32 %c225, %t228
  %fva234 = and i32 %fx1232, %fx2233
  %fv235 = icmp slt i32 %fva234, 0
  %nz236 = zext i1 %fn229 to i64
  %zz237 = zext i1 %fz230 to i64
  %cz238 = zext i1 %fc231 to i64
  %vz239 = zext i1 %fv235 to i64
  %ns240 = shl i64 %nz236, 31
  %zs241 = shl i64 %zz237, 30
  %cs242 = shl i64 %cz238, 29
  %vs243 = shl i64 %vz239, 28
  %nzor244 = or i64 %ns240, %zs241
  %cvor245 = or i64 %cs242, %vs243
  %nzcv246 = or i64 %nzor244, %cvor245
  %wp247 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv246, ptr %wp247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f7c word 0x5400048a
  %r248.p = getelementptr inbounds i8, ptr %c, i64 272
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %fsh250 = lshr i64 %r248, 31
  %ftr251 = trunc i64 %fsh250 to i1
  %fsh252 = lshr i64 %r248, 28
  %ftr253 = trunc i64 %fsh252 to i1
  %cond249 = icmp eq i1 %ftr251, %ftr253
  br i1 %cond249, label %L_8004e900c, label %L_8004e8f80
L_8004e8f80:
  ; @pc 0x8004e8f80 word 0x2a1f03e0
  %t254 = or i32 0, 0
  %c255 = zext i32 %t254 to i64
  %wp256 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c255, ptr %wp256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f84 word 0x14000043
  br label %L_8004e9090
L_8004e8f88:
  ; @pc 0x8004e8f88 word 0xf9400e80
  %r257.p = getelementptr inbounds i8, ptr %c, i64 160
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %t258 = add i64 %r257, 24
  %gmp259 = inttoptr i64 %t258 to ptr
  %gml260 = load i64, ptr %gmp259, align 1, !alias.scope !4, !noalias !3
  %wp261 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f8c word 0xb4001b60
  %r262.p = getelementptr inbounds i8, ptr %c, i64 0
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %cmp263 = icmp eq i64 %r262, 0
  br i1 %cmp263, label %L_8004e92f8, label %L_8004e8f90_ft
L_8004e900c:
  ; @pc 0x8004e900c word 0x531e7769
  %r446.p = getelementptr inbounds i8, ptr %c, i64 216
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %c447 = trunc i64 %r446 to i32
  %ror448 = call i32 @llvm.fshr.i32(i32 %c447, i32 %c447, i32 30)
  %t449 = and i32 %ror448, -4
  %c450 = zext i32 %t449 to i64
  %wp451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c450, ptr %wp451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9010 word 0x2a160129
  %r452.p = getelementptr inbounds i8, ptr %c, i64 176
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %c453 = trunc i64 %r452 to i32
  %r454.p = getelementptr inbounds i8, ptr %c, i64 72
  %r454 = load i64, ptr %r454.p, align 8, !alias.scope !3, !noalias !4
  %c455 = trunc i64 %r454 to i32
  %t456 = or i32 %c455, %c453
  %c457 = zext i32 %t456 to i64
  %wp458 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c457, ptr %wp458, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e9014
L_8004e9014:
  ; @pc 0x8004e9014 word 0x12001f4a
  %r459.p = getelementptr inbounds i8, ptr %c, i64 208
  %r459 = load i64, ptr %r459.p, align 8, !alias.scope !3, !noalias !4
  %c460 = trunc i64 %r459 to i32
  %t461 = and i32 %c460, 255
  %c462 = zext i32 %t461 to i64
  %wp463 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c462, ptr %wp463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9018 word 0x1ac9254a
  %r464.p = getelementptr inbounds i8, ptr %c, i64 80
  %r464 = load i64, ptr %r464.p, align 8, !alias.scope !3, !noalias !4
  %c465 = trunc i64 %r464 to i32
  %r466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %c467 = trunc i64 %r466 to i32
  %t468 = and i32 %c467, 31
  %t469 = lshr i32 %c465, %t468
  %c470 = zext i32 %t469 to i64
  %wp471 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c470, ptr %wp471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e901c word 0x36001aca
  %r472.p = getelementptr inbounds i8, ptr %c, i64 80
  %r472 = load i64, ptr %r472.p, align 8, !alias.scope !3, !noalias !4
  %t473 = and i64 %r472, 1
  %cmp474 = icmp eq i64 %t473, 0
  br i1 %cmp474, label %L_8004e9374, label %L_8004e9020_ft
L_8004e908c:
  ; @pc 0x8004e908c word 0x52800020
  %c643 = zext i32 1 to i64
  %wp644 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c643, ptr %wp644, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e9090
L_8004e9090:
  ; @pc 0x8004e9090 word 0xa9464ff4
  %r645.p = getelementptr inbounds i8, ptr %c, i64 256
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %t646 = add i64 %r645, 96
  %t647 = add i64 %t646, 8
  %gmp648 = inttoptr i64 %t646 to ptr
  %gml649 = load i64, ptr %gmp648, align 1, !alias.scope !4, !noalias !3
  %gmp650 = inttoptr i64 %t647 to ptr
  %gml651 = load i64, ptr %gmp650, align 1, !alias.scope !4, !noalias !3
  %wp652 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml649, ptr %wp652, align 8, !alias.scope !3, !noalias !4
  %wp653 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml651, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9094 word 0xa94557f6
  %r654.p = getelementptr inbounds i8, ptr %c, i64 256
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %t655 = add i64 %r654, 80
  %t656 = add i64 %t655, 8
  %gmp657 = inttoptr i64 %t655 to ptr
  %gml658 = load i64, ptr %gmp657, align 1, !alias.scope !4, !noalias !3
  %gmp659 = inttoptr i64 %t656 to ptr
  %gml660 = load i64, ptr %gmp659, align 1, !alias.scope !4, !noalias !3
  %wp661 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml658, ptr %wp661, align 8, !alias.scope !3, !noalias !4
  %wp662 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml660, ptr %wp662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9098 word 0xa9445ff8
  %r663.p = getelementptr inbounds i8, ptr %c, i64 256
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %t664 = add i64 %r663, 64
  %t665 = add i64 %t664, 8
  %gmp666 = inttoptr i64 %t664 to ptr
  %gml667 = load i64, ptr %gmp666, align 1, !alias.scope !4, !noalias !3
  %gmp668 = inttoptr i64 %t665 to ptr
  %gml669 = load i64, ptr %gmp668, align 1, !alias.scope !4, !noalias !3
  %wp670 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml667, ptr %wp670, align 8, !alias.scope !3, !noalias !4
  %wp671 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml669, ptr %wp671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e909c word 0xa94367fa
  %r672.p = getelementptr inbounds i8, ptr %c, i64 256
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %t673 = add i64 %r672, 48
  %t674 = add i64 %t673, 8
  %gmp675 = inttoptr i64 %t673 to ptr
  %gml676 = load i64, ptr %gmp675, align 1, !alias.scope !4, !noalias !3
  %gmp677 = inttoptr i64 %t674 to ptr
  %gml678 = load i64, ptr %gmp677, align 1, !alias.scope !4, !noalias !3
  %wp679 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml676, ptr %wp679, align 8, !alias.scope !3, !noalias !4
  %wp680 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml678, ptr %wp680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90a0 word 0xa9426ffc
  %r681.p = getelementptr inbounds i8, ptr %c, i64 256
  %r681 = load i64, ptr %r681.p, align 8, !alias.scope !3, !noalias !4
  %t682 = add i64 %r681, 32
  %t683 = add i64 %t682, 8
  %gmp684 = inttoptr i64 %t682 to ptr
  %gml685 = load i64, ptr %gmp684, align 1, !alias.scope !4, !noalias !3
  %gmp686 = inttoptr i64 %t683 to ptr
  %gml687 = load i64, ptr %gmp686, align 1, !alias.scope !4, !noalias !3
  %wp688 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml685, ptr %wp688, align 8, !alias.scope !3, !noalias !4
  %wp689 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml687, ptr %wp689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90a4 word 0xa9417bfd
  %r690.p = getelementptr inbounds i8, ptr %c, i64 256
  %r690 = load i64, ptr %r690.p, align 8, !alias.scope !3, !noalias !4
  %t691 = add i64 %r690, 16
  %t692 = add i64 %t691, 8
  %gmp693 = inttoptr i64 %t691 to ptr
  %gml694 = load i64, ptr %gmp693, align 1, !alias.scope !4, !noalias !3
  %gmp695 = inttoptr i64 %t692 to ptr
  %gml696 = load i64, ptr %gmp695, align 1, !alias.scope !4, !noalias !3
  %wp697 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml694, ptr %wp697, align 8, !alias.scope !3, !noalias !4
  %wp698 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml696, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90a8 word 0x9101c3ff
  %r699.p = getelementptr inbounds i8, ptr %c, i64 256
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = add i64 %r699, 112
  %wp701 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t700, ptr %wp701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90ac word 0xd65f03c0
  ret void
L_8004e90b0:
  ; @pc 0x8004e90b0 word 0x39400288
  %r702.p = getelementptr inbounds i8, ptr %c, i64 160
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %gmp703 = inttoptr i64 %r702 to ptr
  %gml704 = load i8, ptr %gmp703, align 1, !alias.scope !4, !noalias !3
  %c705 = zext i8 %gml704 to i64
  %wp706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c705, ptr %wp706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90b4 word 0x7100191f
  %r707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %c708 = trunc i64 %r707 to i32
  %t709 = sub i32 %c708, 6
  %fn710 = icmp slt i32 %t709, 0
  %fz711 = icmp eq i32 %t709, 0
  %fc712 = icmp uge i32 %c708, 6
  %fx1713 = xor i32 %c708, 6
  %fx2714 = xor i32 %c708, %t709
  %fva715 = and i32 %fx1713, %fx2714
  %fv716 = icmp slt i32 %fva715, 0
  %nz717 = zext i1 %fn710 to i64
  %zz718 = zext i1 %fz711 to i64
  %cz719 = zext i1 %fc712 to i64
  %vz720 = zext i1 %fv716 to i64
  %ns721 = shl i64 %nz717, 31
  %zs722 = shl i64 %zz718, 30
  %cs723 = shl i64 %cz719, 29
  %vs724 = shl i64 %vz720, 28
  %nzor725 = or i64 %ns721, %zs722
  %cvor726 = or i64 %cs723, %vs724
  %nzcv727 = or i64 %nzor725, %cvor726
  %wp728 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv727, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90b8 word 0x54000fc0
  %r729.p = getelementptr inbounds i8, ptr %c, i64 272
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %fsh731 = lshr i64 %r729, 30
  %cond730 = trunc i64 %fsh731 to i1
  br i1 %cond730, label %L_8004e92b0, label %L_8004e90bc
L_8004e90bc:
  ; @pc 0x8004e90bc word 0x7100151f
  %r732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %c733 = trunc i64 %r732 to i32
  %t734 = sub i32 %c733, 5
  %fn735 = icmp slt i32 %t734, 0
  %fz736 = icmp eq i32 %t734, 0
  %fc737 = icmp uge i32 %c733, 5
  %fx1738 = xor i32 %c733, 5
  %fx2739 = xor i32 %c733, %t734
  %fva740 = and i32 %fx1738, %fx2739
  %fv741 = icmp slt i32 %fva740, 0
  %nz742 = zext i1 %fn735 to i64
  %zz743 = zext i1 %fz736 to i64
  %cz744 = zext i1 %fc737 to i64
  %vz745 = zext i1 %fv741 to i64
  %ns746 = shl i64 %nz742, 31
  %zs747 = shl i64 %zz743, 30
  %cs748 = shl i64 %cz744, 29
  %vs749 = shl i64 %vz745, 28
  %nzor750 = or i64 %ns746, %zs747
  %cvor751 = or i64 %cs748, %vs749
  %nzcv752 = or i64 %nzor750, %cvor751
  %wp753 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv752, ptr %wp753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90c0 word 0x54fffe61
  %r754.p = getelementptr inbounds i8, ptr %c, i64 272
  %r754 = load i64, ptr %r754.p, align 8, !alias.scope !3, !noalias !4
  %fsh756 = lshr i64 %r754, 30
  %ftr757 = trunc i64 %fsh756 to i1
  %cond755 = xor i1 %ftr757, true
  br i1 %cond755, label %L_8004e908c, label %L_8004e90c4_ft
L_8004e910c:
  ; @pc 0x8004e910c word 0x390082e8
  %r864.p = getelementptr inbounds i8, ptr %c, i64 184
  %r864 = load i64, ptr %r864.p, align 8, !alias.scope !3, !noalias !4
  %t865 = add i64 %r864, 32
  %r866.p = getelementptr inbounds i8, ptr %c, i64 64
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %c867 = trunc i64 %r866 to i32
  %c868 = trunc i32 %c867 to i8
  %gmp869 = inttoptr i64 %t865 to ptr
  store i8 %c868, ptr %gmp869, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9110 word 0x394002e8
  %r870.p = getelementptr inbounds i8, ptr %c, i64 184
  %r870 = load i64, ptr %r870.p, align 8, !alias.scope !3, !noalias !4
  %gmp871 = inttoptr i64 %r870 to ptr
  %gml872 = load i8, ptr %gmp871, align 1, !alias.scope !4, !noalias !3
  %c873 = zext i8 %gml872 to i64
  %wp874 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c873, ptr %wp874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9114 word 0x321e0108
  %r875.p = getelementptr inbounds i8, ptr %c, i64 64
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %c876 = trunc i64 %r875 to i32
  %t877 = or i32 %c876, 4
  %c878 = zext i32 %t877 to i64
  %wp879 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9118 word 0x390086e9
  %r880.p = getelementptr inbounds i8, ptr %c, i64 184
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %t881 = add i64 %r880, 33
  %r882.p = getelementptr inbounds i8, ptr %c, i64 72
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %c883 = trunc i64 %r882 to i32
  %c884 = trunc i32 %c883 to i8
  %gmp885 = inttoptr i64 %t881 to ptr
  store i8 %c884, ptr %gmp885, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e911c word 0x39008aea
  %r886.p = getelementptr inbounds i8, ptr %c, i64 184
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %t887 = add i64 %r886, 34
  %r888.p = getelementptr inbounds i8, ptr %c, i64 80
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %c889 = trunc i64 %r888 to i32
  %c890 = trunc i32 %c889 to i8
  %gmp891 = inttoptr i64 %t887 to ptr
  store i8 %c890, ptr %gmp891, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9120 word 0x39008eeb
  %r892.p = getelementptr inbounds i8, ptr %c, i64 184
  %r892 = load i64, ptr %r892.p, align 8, !alias.scope !3, !noalias !4
  %t893 = add i64 %r892, 35
  %r894.p = getelementptr inbounds i8, ptr %c, i64 88
  %r894 = load i64, ptr %r894.p, align 8, !alias.scope !3, !noalias !4
  %c895 = trunc i64 %r894 to i32
  %c896 = trunc i32 %c895 to i8
  %gmp897 = inttoptr i64 %t893 to ptr
  store i8 %c896, ptr %gmp897, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9124 word 0x390092ec
  %r898.p = getelementptr inbounds i8, ptr %c, i64 184
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %t899 = add i64 %r898, 36
  %r900.p = getelementptr inbounds i8, ptr %c, i64 96
  %r900 = load i64, ptr %r900.p, align 8, !alias.scope !3, !noalias !4
  %c901 = trunc i64 %r900 to i32
  %c902 = trunc i32 %c901 to i8
  %gmp903 = inttoptr i64 %t899 to ptr
  store i8 %c902, ptr %gmp903, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9128 word 0x390096ed
  %r904.p = getelementptr inbounds i8, ptr %c, i64 184
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %t905 = add i64 %r904, 37
  %r906.p = getelementptr inbounds i8, ptr %c, i64 104
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %c907 = trunc i64 %r906 to i32
  %c908 = trunc i32 %c907 to i8
  %gmp909 = inttoptr i64 %t905 to ptr
  store i8 %c908, ptr %gmp909, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e912c word 0x39009aee
  %r910.p = getelementptr inbounds i8, ptr %c, i64 184
  %r910 = load i64, ptr %r910.p, align 8, !alias.scope !3, !noalias !4
  %t911 = add i64 %r910, 38
  %r912.p = getelementptr inbounds i8, ptr %c, i64 112
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %c913 = trunc i64 %r912 to i32
  %c914 = trunc i32 %c913 to i8
  %gmp915 = inttoptr i64 %t911 to ptr
  store i8 %c914, ptr %gmp915, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9130 word 0x39009eef
  %r916.p = getelementptr inbounds i8, ptr %c, i64 184
  %r916 = load i64, ptr %r916.p, align 8, !alias.scope !3, !noalias !4
  %t917 = add i64 %r916, 39
  %r918.p = getelementptr inbounds i8, ptr %c, i64 120
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %c919 = trunc i64 %r918 to i32
  %c920 = trunc i32 %c919 to i8
  %gmp921 = inttoptr i64 %t917 to ptr
  store i8 %c920, ptr %gmp921, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9134 word 0x3900a2f0
  %r922.p = getelementptr inbounds i8, ptr %c, i64 184
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %t923 = add i64 %r922, 40
  %r924.p = getelementptr inbounds i8, ptr %c, i64 128
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %c925 = trunc i64 %r924 to i32
  %c926 = trunc i32 %c925 to i8
  %gmp927 = inttoptr i64 %t923 to ptr
  store i8 %c926, ptr %gmp927, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9138 word 0x3900a6e0
  %r928.p = getelementptr inbounds i8, ptr %c, i64 184
  %r928 = load i64, ptr %r928.p, align 8, !alias.scope !3, !noalias !4
  %t929 = add i64 %r928, 41
  %r930.p = getelementptr inbounds i8, ptr %c, i64 0
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %c931 = trunc i64 %r930 to i32
  %c932 = trunc i32 %c931 to i8
  %gmp933 = inttoptr i64 %t929 to ptr
  store i8 %c932, ptr %gmp933, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e913c word 0x52800020
  %c934 = zext i32 1 to i64
  %wp935 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c934, ptr %wp935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9140 word 0x3900aaf1
  %r936.p = getelementptr inbounds i8, ptr %c, i64 184
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %t937 = add i64 %r936, 42
  %r938.p = getelementptr inbounds i8, ptr %c, i64 136
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %c939 = trunc i64 %r938 to i32
  %c940 = trunc i32 %c939 to i8
  %gmp941 = inttoptr i64 %t937 to ptr
  store i8 %c940, ptr %gmp941, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9144 word 0x3900aef2
  %r942.p = getelementptr inbounds i8, ptr %c, i64 184
  %r942 = load i64, ptr %r942.p, align 8, !alias.scope !3, !noalias !4
  %t943 = add i64 %r942, 43
  %r944.p = getelementptr inbounds i8, ptr %c, i64 144
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %c945 = trunc i64 %r944 to i32
  %c946 = trunc i32 %c945 to i8
  %gmp947 = inttoptr i64 %t943 to ptr
  store i8 %c946, ptr %gmp947, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9148 word 0x29058ae1
  %r948.p = getelementptr inbounds i8, ptr %c, i64 184
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %t949 = add i64 %r948, 44
  %t950 = add i64 %t949, 4
  %r951.p = getelementptr inbounds i8, ptr %c, i64 8
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %c952 = trunc i64 %r951 to i32
  %gmp953 = inttoptr i64 %t949 to ptr
  store i32 %c952, ptr %gmp953, align 1, !alias.scope !4, !noalias !3
  %r954.p = getelementptr inbounds i8, ptr %c, i64 16
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %c955 = trunc i64 %r954 to i32
  %gmp956 = inttoptr i64 %t950 to ptr
  store i32 %c955, ptr %gmp956, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e914c word 0x390002e8
  %r957.p = getelementptr inbounds i8, ptr %c, i64 184
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %r958.p = getelementptr inbounds i8, ptr %c, i64 64
  %r958 = load i64, ptr %r958.p, align 8, !alias.scope !3, !noalias !4
  %c959 = trunc i64 %r958 to i32
  %c960 = trunc i32 %c959 to i8
  %gmp961 = inttoptr i64 %r957 to ptr
  store i8 %c960, ptr %gmp961, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9150 word 0x17ffffd0
  br label %L_8004e9090
L_8004e9154:
  ; @pc 0x8004e9154 word 0xf9400a8a
  %r962.p = getelementptr inbounds i8, ptr %c, i64 160
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %t963 = add i64 %r962, 16
  %gmp964 = inttoptr i64 %t963 to ptr
  %gml965 = load i64, ptr %gmp964, align 1, !alias.scope !4, !noalias !3
  %wp966 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml965, ptr %wp966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9158 word 0xf9405d4a
  %r967.p = getelementptr inbounds i8, ptr %c, i64 80
  %r967 = load i64, ptr %r967.p, align 8, !alias.scope !3, !noalias !4
  %t968 = add i64 %r967, 184
  %gmp969 = inttoptr i64 %t968 to ptr
  %gml970 = load i64, ptr %gmp969, align 1, !alias.scope !4, !noalias !3
  %wp971 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml970, ptr %wp971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e915c word 0xb4000caa
  %r972.p = getelementptr inbounds i8, ptr %c, i64 80
  %r972 = load i64, ptr %r972.p, align 8, !alias.scope !3, !noalias !4
  %cmp973 = icmp eq i64 %r972, 0
  br i1 %cmp973, label %L_8004e92f0, label %L_8004e9160_ft
L_8004e91bc:
  ; @pc 0x8004e91bc word 0x37000da7
  %r1117.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1117 = load i64, ptr %r1117.p, align 8, !alias.scope !3, !noalias !4
  %t1118 = and i64 %r1117, 1
  %cmp1119 = icmp ne i64 %t1118, 0
  br i1 %cmp1119, label %L_8004e9370, label %L_8004e91c0_ft
L_8004e91c4:
  ; @pc 0x8004e91c4 word 0x39400028
  %r1123.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1123 = load i64, ptr %r1123.p, align 8, !alias.scope !3, !noalias !4
  %gmp1124 = inttoptr i64 %r1123 to ptr
  %gml1125 = load i8, ptr %gmp1124, align 1, !alias.scope !4, !noalias !3
  %c1126 = zext i8 %gml1125 to i64
  %wp1127 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1126, ptr %wp1127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91c8 word 0x79003829
  %r1128.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1128 = load i64, ptr %r1128.p, align 8, !alias.scope !3, !noalias !4
  %t1129 = add i64 %r1128, 28
  %r1130.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1130 = load i64, ptr %r1130.p, align 8, !alias.scope !3, !noalias !4
  %c1131 = trunc i64 %r1130 to i32
  %c1132 = trunc i32 %c1131 to i16
  %gmp1133 = inttoptr i64 %t1129 to ptr
  store i16 %c1132, ptr %gmp1133, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e91cc word 0x52800020
  %c1134 = zext i32 1 to i64
  %wp1135 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1134, ptr %wp1135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91d0 word 0x32000108
  %r1136.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1136 = load i64, ptr %r1136.p, align 8, !alias.scope !3, !noalias !4
  %c1137 = trunc i64 %r1136 to i32
  %t1138 = or i32 %c1137, 1
  %c1139 = zext i32 %t1138 to i64
  %wp1140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1139, ptr %wp1140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91d4 word 0x39000028
  %r1141.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1141 = load i64, ptr %r1141.p, align 8, !alias.scope !3, !noalias !4
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %c1143 = trunc i64 %r1142 to i32
  %c1144 = trunc i32 %c1143 to i8
  %gmp1145 = inttoptr i64 %r1141 to ptr
  store i8 %c1144, ptr %gmp1145, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e91d8 word 0x17ffffae
  br label %L_8004e9090
L_8004e91dc:
  ; @pc 0x8004e91dc word 0xf9400a88
  %r1146.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1146 = load i64, ptr %r1146.p, align 8, !alias.scope !3, !noalias !4
  %t1147 = add i64 %r1146, 16
  %gmp1148 = inttoptr i64 %t1147 to ptr
  %gml1149 = load i64, ptr %gmp1148, align 1, !alias.scope !4, !noalias !3
  %wp1150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1149, ptr %wp1150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91e0 word 0xf9406108
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %t1152 = add i64 %r1151, 192
  %gmp1153 = inttoptr i64 %t1152 to ptr
  %gml1154 = load i64, ptr %gmp1153, align 1, !alias.scope !4, !noalias !3
  %wp1155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1154, ptr %wp1155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91e4 word 0xb4000108
  %r1156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1156 = load i64, ptr %r1156.p, align 8, !alias.scope !3, !noalias !4
  %cmp1157 = icmp eq i64 %r1156, 0
  br i1 %cmp1157, label %L_8004e9204, label %L_8004e91e8_ft
L_8004e9204:
  ; @pc 0x8004e9204 word 0x39007868
  %r1197.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1197 = load i64, ptr %r1197.p, align 8, !alias.scope !3, !noalias !4
  %t1198 = add i64 %r1197, 30
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %c1200 = trunc i64 %r1199 to i32
  %c1201 = trunc i32 %c1200 to i8
  %gmp1202 = inttoptr i64 %t1198 to ptr
  store i8 %c1201, ptr %gmp1202, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9208 word 0x39400068
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %gmp1204 = inttoptr i64 %r1203 to ptr
  %gml1205 = load i8, ptr %gmp1204, align 1, !alias.scope !4, !noalias !3
  %c1206 = zext i8 %gml1205 to i64
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e920c word 0x321f0108
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %c1209 = trunc i64 %r1208 to i32
  %t1210 = or i32 %c1209, 2
  %c1211 = zext i32 %t1210 to i64
  %wp1212 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1211, ptr %wp1212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9210 word 0x39000068
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %r1214.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1214 = load i64, ptr %r1214.p, align 8, !alias.scope !3, !noalias !4
  %c1215 = trunc i64 %r1214 to i32
  %c1216 = trunc i32 %c1215 to i8
  %gmp1217 = inttoptr i64 %r1213 to ptr
  store i8 %c1216, ptr %gmp1217, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9214 word 0x39400288
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %gmp1219 = inttoptr i64 %r1218 to ptr
  %gml1220 = load i8, ptr %gmp1219, align 1, !alias.scope !4, !noalias !3
  %c1221 = zext i8 %gml1220 to i64
  %wp1222 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1221, ptr %wp1222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9218 word 0x7100151f
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %c1224 = trunc i64 %r1223 to i32
  %t1225 = sub i32 %c1224, 5
  %fn1226 = icmp slt i32 %t1225, 0
  %fz1227 = icmp eq i32 %t1225, 0
  %fc1228 = icmp uge i32 %c1224, 5
  %fx11229 = xor i32 %c1224, 5
  %fx21230 = xor i32 %c1224, %t1225
  %fva1231 = and i32 %fx11229, %fx21230
  %fv1232 = icmp slt i32 %fva1231, 0
  %nz1233 = zext i1 %fn1226 to i64
  %zz1234 = zext i1 %fz1227 to i64
  %cz1235 = zext i1 %fc1228 to i64
  %vz1236 = zext i1 %fv1232 to i64
  %ns1237 = shl i64 %nz1233, 31
  %zs1238 = shl i64 %zz1234, 30
  %cs1239 = shl i64 %cz1235, 29
  %vs1240 = shl i64 %vz1236, 28
  %nzor1241 = or i64 %ns1237, %zs1238
  %cvor1242 = or i64 %cs1239, %vs1240
  %nzcv1243 = or i64 %nzor1241, %cvor1242
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e921c word 0x54fff381
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %fsh1247 = lshr i64 %r1245, 30
  %ftr1248 = trunc i64 %fsh1247 to i1
  %cond1246 = xor i1 %ftr1248, true
  br i1 %cond1246, label %L_8004e908c, label %L_8004e9220
L_8004e9220:
  ; @pc 0x8004e9220 word 0xf9400a88
  %r1249.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1249 = load i64, ptr %r1249.p, align 8, !alias.scope !3, !noalias !4
  %t1250 = add i64 %r1249, 16
  %gmp1251 = inttoptr i64 %t1250 to ptr
  %gml1252 = load i64, ptr %gmp1251, align 1, !alias.scope !4, !noalias !3
  %wp1253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1252, ptr %wp1253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9224 word 0xf9406508
  %r1254.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1254 = load i64, ptr %r1254.p, align 8, !alias.scope !3, !noalias !4
  %t1255 = add i64 %r1254, 200
  %gmp1256 = inttoptr i64 %t1255 to ptr
  %gml1257 = load i64, ptr %gmp1256, align 1, !alias.scope !4, !noalias !3
  %wp1258 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1257, ptr %wp1258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9228 word 0xb4000b08
  %r1259.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1259 = load i64, ptr %r1259.p, align 8, !alias.scope !3, !noalias !4
  %cmp1260 = icmp eq i64 %r1259, 0
  br i1 %cmp1260, label %L_8004e9388, label %L_8004e922c_ft
L_8004e9268:
  ; @pc 0x8004e9268 word 0x39008068
  %r1355.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1355 = load i64, ptr %r1355.p, align 8, !alias.scope !3, !noalias !4
  %t1356 = add i64 %r1355, 32
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %c1358 = trunc i64 %r1357 to i32
  %c1359 = trunc i32 %c1358 to i8
  %gmp1360 = inttoptr i64 %t1356 to ptr
  store i8 %c1359, ptr %gmp1360, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e926c word 0x39400068
  %r1361.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1361 = load i64, ptr %r1361.p, align 8, !alias.scope !3, !noalias !4
  %gmp1362 = inttoptr i64 %r1361 to ptr
  %gml1363 = load i8, ptr %gmp1362, align 1, !alias.scope !4, !noalias !3
  %c1364 = zext i8 %gml1363 to i64
  %wp1365 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1364, ptr %wp1365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9270 word 0x321e0108
  %r1366.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1366 = load i64, ptr %r1366.p, align 8, !alias.scope !3, !noalias !4
  %c1367 = trunc i64 %r1366 to i32
  %t1368 = or i32 %c1367, 4
  %c1369 = zext i32 %t1368 to i64
  %wp1370 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1369, ptr %wp1370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9274 word 0x3900a460
  %r1371.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1371 = load i64, ptr %r1371.p, align 8, !alias.scope !3, !noalias !4
  %t1372 = add i64 %r1371, 41
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %c1374 = trunc i64 %r1373 to i32
  %c1375 = trunc i32 %c1374 to i8
  %gmp1376 = inttoptr i64 %t1372 to ptr
  store i8 %c1375, ptr %gmp1376, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9278 word 0x52800020
  %c1377 = zext i32 1 to i64
  %wp1378 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1377, ptr %wp1378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e927c word 0x39008469
  %r1379.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1379 = load i64, ptr %r1379.p, align 8, !alias.scope !3, !noalias !4
  %t1380 = add i64 %r1379, 33
  %r1381.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1381 = load i64, ptr %r1381.p, align 8, !alias.scope !3, !noalias !4
  %c1382 = trunc i64 %r1381 to i32
  %c1383 = trunc i32 %c1382 to i8
  %gmp1384 = inttoptr i64 %t1380 to ptr
  store i8 %c1383, ptr %gmp1384, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9280 word 0x3900886a
  %r1385.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1385 = load i64, ptr %r1385.p, align 8, !alias.scope !3, !noalias !4
  %t1386 = add i64 %r1385, 34
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %c1388 = trunc i64 %r1387 to i32
  %c1389 = trunc i32 %c1388 to i8
  %gmp1390 = inttoptr i64 %t1386 to ptr
  store i8 %c1389, ptr %gmp1390, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9284 word 0x39008c6b
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %t1392 = add i64 %r1391, 35
  %r1393.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1393 = load i64, ptr %r1393.p, align 8, !alias.scope !3, !noalias !4
  %c1394 = trunc i64 %r1393 to i32
  %c1395 = trunc i32 %c1394 to i8
  %gmp1396 = inttoptr i64 %t1392 to ptr
  store i8 %c1395, ptr %gmp1396, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9288 word 0x3900906c
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %t1398 = add i64 %r1397, 36
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %c1400 = trunc i64 %r1399 to i32
  %c1401 = trunc i32 %c1400 to i8
  %gmp1402 = inttoptr i64 %t1398 to ptr
  store i8 %c1401, ptr %gmp1402, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e928c word 0x3900946d
  %r1403.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1403 = load i64, ptr %r1403.p, align 8, !alias.scope !3, !noalias !4
  %t1404 = add i64 %r1403, 37
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %c1406 = trunc i64 %r1405 to i32
  %c1407 = trunc i32 %c1406 to i8
  %gmp1408 = inttoptr i64 %t1404 to ptr
  store i8 %c1407, ptr %gmp1408, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9290 word 0x3900986e
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %t1410 = add i64 %r1409, 38
  %r1411.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1411 = load i64, ptr %r1411.p, align 8, !alias.scope !3, !noalias !4
  %c1412 = trunc i64 %r1411 to i32
  %c1413 = trunc i32 %c1412 to i8
  %gmp1414 = inttoptr i64 %t1410 to ptr
  store i8 %c1413, ptr %gmp1414, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9294 word 0x39009c6f
  %r1415.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1415 = load i64, ptr %r1415.p, align 8, !alias.scope !3, !noalias !4
  %t1416 = add i64 %r1415, 39
  %r1417.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1417 = load i64, ptr %r1417.p, align 8, !alias.scope !3, !noalias !4
  %c1418 = trunc i64 %r1417 to i32
  %c1419 = trunc i32 %c1418 to i8
  %gmp1420 = inttoptr i64 %t1416 to ptr
  store i8 %c1419, ptr %gmp1420, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9298 word 0x3900a070
  %r1421.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1421 = load i64, ptr %r1421.p, align 8, !alias.scope !3, !noalias !4
  %t1422 = add i64 %r1421, 40
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %c1424 = trunc i64 %r1423 to i32
  %c1425 = trunc i32 %c1424 to i8
  %gmp1426 = inttoptr i64 %t1422 to ptr
  store i8 %c1425, ptr %gmp1426, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e929c word 0x3900a871
  %r1427.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1427 = load i64, ptr %r1427.p, align 8, !alias.scope !3, !noalias !4
  %t1428 = add i64 %r1427, 42
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %c1430 = trunc i64 %r1429 to i32
  %c1431 = trunc i32 %c1430 to i8
  %gmp1432 = inttoptr i64 %t1428 to ptr
  store i8 %c1431, ptr %gmp1432, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92a0 word 0x3900ac72
  %r1433.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1433 = load i64, ptr %r1433.p, align 8, !alias.scope !3, !noalias !4
  %t1434 = add i64 %r1433, 43
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %c1436 = trunc i64 %r1435 to i32
  %c1437 = trunc i32 %c1436 to i8
  %gmp1438 = inttoptr i64 %t1434 to ptr
  store i8 %c1437, ptr %gmp1438, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92a4 word 0x29058861
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %t1440 = add i64 %r1439, 44
  %t1441 = add i64 %t1440, 4
  %r1442.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1442 = load i64, ptr %r1442.p, align 8, !alias.scope !3, !noalias !4
  %c1443 = trunc i64 %r1442 to i32
  %gmp1444 = inttoptr i64 %t1440 to ptr
  store i32 %c1443, ptr %gmp1444, align 1, !alias.scope !4, !noalias !3
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %c1446 = trunc i64 %r1445 to i32
  %gmp1447 = inttoptr i64 %t1441 to ptr
  store i32 %c1446, ptr %gmp1447, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92a8 word 0x39000068
  %r1448.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1448 = load i64, ptr %r1448.p, align 8, !alias.scope !3, !noalias !4
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %c1450 = trunc i64 %r1449 to i32
  %c1451 = trunc i32 %c1450 to i8
  %gmp1452 = inttoptr i64 %r1448 to ptr
  store i8 %c1451, ptr %gmp1452, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92ac word 0x17ffff79
  br label %L_8004e9090
L_8004e92b0:
  ; @pc 0x8004e92b0 word 0xf9400a88
  %r1453.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1453 = load i64, ptr %r1453.p, align 8, !alias.scope !3, !noalias !4
  %t1454 = add i64 %r1453, 16
  %gmp1455 = inttoptr i64 %t1454 to ptr
  %gml1456 = load i64, ptr %gmp1455, align 1, !alias.scope !4, !noalias !3
  %wp1457 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1456, ptr %wp1457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92b4 word 0xf9406108
  %r1458.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1458 = load i64, ptr %r1458.p, align 8, !alias.scope !3, !noalias !4
  %t1459 = add i64 %r1458, 192
  %gmp1460 = inttoptr i64 %t1459 to ptr
  %gml1461 = load i64, ptr %gmp1460, align 1, !alias.scope !4, !noalias !3
  %wp1462 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1461, ptr %wp1462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92b8 word 0xb4000108
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1463 = load i64, ptr %r1463.p, align 8, !alias.scope !3, !noalias !4
  %cmp1464 = icmp eq i64 %r1463, 0
  br i1 %cmp1464, label %L_8004e92d8, label %L_8004e92bc_ft
L_8004e92d8:
  ; @pc 0x8004e92d8 word 0x39007ae8
  %r1504.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1504 = load i64, ptr %r1504.p, align 8, !alias.scope !3, !noalias !4
  %t1505 = add i64 %r1504, 30
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %c1507 = trunc i64 %r1506 to i32
  %c1508 = trunc i32 %c1507 to i8
  %gmp1509 = inttoptr i64 %t1505 to ptr
  store i8 %c1508, ptr %gmp1509, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92dc word 0x394002e8
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %gmp1511 = inttoptr i64 %r1510 to ptr
  %gml1512 = load i8, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  %c1513 = zext i8 %gml1512 to i64
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92e0 word 0x321f0108
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %c1516 = trunc i64 %r1515 to i32
  %t1517 = or i32 %c1516, 2
  %c1518 = zext i32 %t1517 to i64
  %wp1519 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1518, ptr %wp1519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92e4 word 0x390002e8
  %r1520.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1520 = load i64, ptr %r1520.p, align 8, !alias.scope !3, !noalias !4
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %c1522 = trunc i64 %r1521 to i32
  %c1523 = trunc i32 %c1522 to i8
  %gmp1524 = inttoptr i64 %r1520 to ptr
  store i8 %c1523, ptr %gmp1524, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e92e8 word 0x39400288
  %r1525.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1525 = load i64, ptr %r1525.p, align 8, !alias.scope !3, !noalias !4
  %gmp1526 = inttoptr i64 %r1525 to ptr
  %gml1527 = load i8, ptr %gmp1526, align 1, !alias.scope !4, !noalias !3
  %c1528 = zext i8 %gml1527 to i64
  %wp1529 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1528, ptr %wp1529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92ec word 0x17ffff74
  br label %L_8004e90bc
L_8004e92f0:
  ; @pc 0x8004e92f0 word 0x2a1f03e9
  %t1530 = or i32 0, 0
  %c1531 = zext i32 %t1530 to i64
  %wp1532 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1531, ptr %wp1532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92f4 word 0x17ffffb2
  br label %L_8004e91bc
L_8004e92f8:
  ; @pc 0x8004e92f8 word 0xf9400a8a
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %t1534 = add i64 %r1533, 16
  %gmp1535 = inttoptr i64 %t1534 to ptr
  %gml1536 = load i64, ptr %gmp1535, align 1, !alias.scope !4, !noalias !3
  %wp1537 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1536, ptr %wp1537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92fc word 0xf9405d4a
  %r1538.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1538 = load i64, ptr %r1538.p, align 8, !alias.scope !3, !noalias !4
  %t1539 = add i64 %r1538, 184
  %gmp1540 = inttoptr i64 %t1539 to ptr
  %gml1541 = load i64, ptr %gmp1540, align 1, !alias.scope !4, !noalias !3
  %wp1542 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1541, ptr %wp1542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9300 word 0xb400034a
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %cmp1544 = icmp eq i64 %r1543, 0
  br i1 %cmp1544, label %L_8004e9368, label %L_8004e9304_ft
L_8004e935c:
  ; @pc 0x8004e935c word 0x37000327
  %r1681.p = getelementptr inbounds i8, ptr %c, i64 56
  %r1681 = load i64, ptr %r1681.p, align 8, !alias.scope !3, !noalias !4
  %t1682 = and i64 %r1681, 1
  %cmp1683 = icmp ne i64 %t1682, 0
  br i1 %cmp1683, label %L_8004e93c0, label %L_8004e9360_ft
L_8004e9368:
  ; @pc 0x8004e9368 word 0x2a1f03e9
  %t1687 = or i32 0, 0
  %c1688 = zext i32 %t1687 to i64
  %wp1689 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1688, ptr %wp1689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e936c word 0x17fffffc
  br label %L_8004e935c
L_8004e9370:
  ; @pc 0x8004e9370 word 0x371ff2a9
  %r1690.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1690 = load i64, ptr %r1690.p, align 8, !alias.scope !3, !noalias !4
  %t1691 = and i64 %r1690, 8
  %cmp1692 = icmp ne i64 %t1691, 0
  br i1 %cmp1692, label %L_8004e91c4, label %L_8004e9374
L_8004e9374:
  ; @pc 0x8004e9374 word 0x0a0e0108
  %r1693.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1693 = load i64, ptr %r1693.p, align 8, !alias.scope !3, !noalias !4
  %c1694 = trunc i64 %r1693 to i32
  %r1695.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1695 = load i64, ptr %r1695.p, align 8, !alias.scope !3, !noalias !4
  %c1696 = trunc i64 %r1695 to i32
  %t1697 = and i32 %c1696, %c1694
  %c1698 = zext i32 %t1697 to i64
  %wp1699 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1698, ptr %wp1699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9378 word 0x2a1f03e0
  %t1700 = or i32 0, 0
  %c1701 = zext i32 %t1700 to i64
  %wp1702 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1701, ptr %wp1702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e937c word 0x51000508
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %c1704 = trunc i64 %r1703 to i32
  %t1705 = sub i32 %c1704, 1
  %c1706 = zext i32 %t1705 to i64
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9380 word 0xb9000048
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %r1709.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1709 = load i64, ptr %r1709.p, align 8, !alias.scope !3, !noalias !4
  %c1710 = trunc i64 %r1709 to i32
  %gmp1711 = inttoptr i64 %r1708 to ptr
  store i32 %c1710, ptr %gmp1711, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e9384 word 0x17ffff43
  br label %L_8004e9090
L_8004e9388:
  ; @pc 0x8004e9388 word 0x2a1f03e9
  %t1712 = or i32 0, 0
  %c1713 = zext i32 %t1712 to i64
  %wp1714 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1713, ptr %wp1714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e938c word 0x2a1f03ea
  %t1715 = or i32 0, 0
  %c1716 = zext i32 %t1715 to i64
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1716, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9390 word 0x2a1f03eb
  %t1718 = or i32 0, 0
  %c1719 = zext i32 %t1718 to i64
  %wp1720 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1719, ptr %wp1720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9394 word 0x2a1f03ec
  %t1721 = or i32 0, 0
  %c1722 = zext i32 %t1721 to i64
  %wp1723 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1722, ptr %wp1723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9398 word 0x2a1f03ed
  %t1724 = or i32 0, 0
  %c1725 = zext i32 %t1724 to i64
  %wp1726 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1725, ptr %wp1726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e939c word 0x2a1f03ee
  %t1727 = or i32 0, 0
  %c1728 = zext i32 %t1727 to i64
  %wp1729 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1728, ptr %wp1729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93a0 word 0x2a1f03ef
  %t1730 = or i32 0, 0
  %c1731 = zext i32 %t1730 to i64
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93a4 word 0x2a1f03f0
  %t1733 = or i32 0, 0
  %c1734 = zext i32 %t1733 to i64
  %wp1735 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1734, ptr %wp1735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93a8 word 0x2a1f03f1
  %t1736 = or i32 0, 0
  %c1737 = zext i32 %t1736 to i64
  %wp1738 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1737, ptr %wp1738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93ac word 0x2a1f03f2
  %t1739 = or i32 0, 0
  %c1740 = zext i32 %t1739 to i64
  %wp1741 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1740, ptr %wp1741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93b0 word 0x2a1f03e1
  %t1742 = or i32 0, 0
  %c1743 = zext i32 %t1742 to i64
  %wp1744 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1743, ptr %wp1744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93b4 word 0x2a1f03e2
  %t1745 = or i32 0, 0
  %c1746 = zext i32 %t1745 to i64
  %wp1747 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1746, ptr %wp1747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93b8 word 0x52801fe0
  %c1748 = zext i32 255 to i64
  %wp1749 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1748, ptr %wp1749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93bc word 0x17ffffab
  br label %L_8004e9268
L_8004e93c0:
  ; @pc 0x8004e93c0 word 0x361fdd69
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %t1751 = and i64 %r1750, 8
  %cmp1752 = icmp eq i64 %t1751, 0
  br i1 %cmp1752, label %L_8004e8f6c, label %L_8004e93c4_ft
L_8004e93c8:
  ; @pc 0x8004e93c8 word 0x2a1f03e9
  %t1753 = or i32 0, 0
  %c1754 = zext i32 %t1753 to i64
  %wp1755 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1754, ptr %wp1755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93cc word 0x2a1f03ea
  %t1756 = or i32 0, 0
  %c1757 = zext i32 %t1756 to i64
  %wp1758 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1757, ptr %wp1758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93d0 word 0x2a1f03eb
  %t1759 = or i32 0, 0
  %c1760 = zext i32 %t1759 to i64
  %wp1761 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1760, ptr %wp1761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93d4 word 0x2a1f03ec
  %t1762 = or i32 0, 0
  %c1763 = zext i32 %t1762 to i64
  %wp1764 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1763, ptr %wp1764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93d8 word 0x2a1f03ed
  %t1765 = or i32 0, 0
  %c1766 = zext i32 %t1765 to i64
  %wp1767 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1766, ptr %wp1767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93dc word 0x2a1f03ee
  %t1768 = or i32 0, 0
  %c1769 = zext i32 %t1768 to i64
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93e0 word 0x2a1f03ef
  %t1771 = or i32 0, 0
  %c1772 = zext i32 %t1771 to i64
  %wp1773 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1772, ptr %wp1773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93e4 word 0x2a1f03f0
  %t1774 = or i32 0, 0
  %c1775 = zext i32 %t1774 to i64
  %wp1776 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1775, ptr %wp1776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93e8 word 0x2a1f03f1
  %t1777 = or i32 0, 0
  %c1778 = zext i32 %t1777 to i64
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1778, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93ec word 0x2a1f03f2
  %t1780 = or i32 0, 0
  %c1781 = zext i32 %t1780 to i64
  %wp1782 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1781, ptr %wp1782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93f0 word 0x2a1f03e1
  %t1783 = or i32 0, 0
  %c1784 = zext i32 %t1783 to i64
  %wp1785 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1784, ptr %wp1785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93f4 word 0x2a1f03e2
  %t1786 = or i32 0, 0
  %c1787 = zext i32 %t1786 to i64
  %wp1788 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1787, ptr %wp1788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93f8 word 0x52801fe0
  %c1789 = zext i32 255 to i64
  %wp1790 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1789, ptr %wp1790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e93fc word 0x17ffff44
  br label %L_8004e910c
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34364886764, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8004e8eec
L_8004e8f64_ft:
  ; @pc 0x8004e8f64 word 0x1ac9274a
  %r197.p = getelementptr inbounds i8, ptr %c, i64 208
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %c198 = trunc i64 %r197 to i32
  %r199.p = getelementptr inbounds i8, ptr %c, i64 72
  %r199 = load i64, ptr %r199.p, align 8, !alias.scope !3, !noalias !4
  %c200 = trunc i64 %r199 to i32
  %t201 = and i32 %c200, 31
  %t202 = lshr i32 %c198, %t201
  %c203 = zext i32 %t202 to i64
  %wp204 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c203, ptr %wp204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f68 word 0x3700010a
  %r205.p = getelementptr inbounds i8, ptr %c, i64 80
  %r205 = load i64, ptr %r205.p, align 8, !alias.scope !3, !noalias !4
  %t206 = and i64 %r205, 1
  %cmp207 = icmp ne i64 %t206, 0
  br i1 %cmp207, label %L_8004e8f88, label %L_8004e8f6c
L_8004e8f90_ft:
  ; @pc 0x8004e8f90 word 0x1ac921a8
  %r264.p = getelementptr inbounds i8, ptr %c, i64 104
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %c265 = trunc i64 %r264 to i32
  %r266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r266 = load i64, ptr %r266.p, align 8, !alias.scope !3, !noalias !4
  %c267 = trunc i64 %r266 to i32
  %t268 = and i32 %c267, 31
  %t269 = shl i32 %c265, %t268
  %c270 = zext i32 %t269 to i64
  %wp271 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c270, ptr %wp271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f94 word 0xb81fc3a7
  %r272.p = getelementptr inbounds i8, ptr %c, i64 232
  %r272 = load i64, ptr %r272.p, align 8, !alias.scope !3, !noalias !4
  %t273 = add i64 %r272, -4
  %r274.p = getelementptr inbounds i8, ptr %c, i64 56
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %c275 = trunc i64 %r274 to i32
  %gmp276 = inttoptr i64 %t273 to ptr
  store i32 %c275, ptr %gmp276, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8f98 word 0x120000e7
  %r277.p = getelementptr inbounds i8, ptr %c, i64 56
  %r277 = load i64, ptr %r277.p, align 8, !alias.scope !3, !noalias !4
  %c278 = trunc i64 %r277 to i32
  %t279 = and i32 %c278, 1
  %c280 = zext i32 %t279 to i64
  %wp281 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c280, ptr %wp281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8f9c word 0x0a280348
  %r282.p = getelementptr inbounds i8, ptr %c, i64 64
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %c283 = trunc i64 %r282 to i32
  %t284 = xor i32 %c283, -1
  %r285.p = getelementptr inbounds i8, ptr %c, i64 208
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %c286 = trunc i64 %r285 to i32
  %t287 = and i32 %c286, %t284
  %c288 = zext i32 %t287 to i64
  %wp289 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c288, ptr %wp289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fa0 word 0x2a1903e3
  %r290.p = getelementptr inbounds i8, ptr %c, i64 200
  %r290 = load i64, ptr %r290.p, align 8, !alias.scope !3, !noalias !4
  %c291 = trunc i64 %r290 to i32
  %t292 = or i32 0, %c291
  %c293 = zext i32 %t292 to i64
  %wp294 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c293, ptr %wp294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fa4 word 0xb9000bee
  %r295.p = getelementptr inbounds i8, ptr %c, i64 256
  %r295 = load i64, ptr %r295.p, align 8, !alias.scope !3, !noalias !4
  %t296 = add i64 %r295, 8
  %r297.p = getelementptr inbounds i8, ptr %c, i64 112
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %c298 = trunc i64 %r297 to i32
  %gmp299 = inttoptr i64 %t296 to ptr
  store i32 %c298, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8fa8 word 0x53017d09
  %r300.p = getelementptr inbounds i8, ptr %c, i64 64
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %c301 = trunc i64 %r300 to i32
  %ror302 = call i32 @llvm.fshr.i32(i32 %c301, i32 %c301, i32 1)
  %t303 = and i32 %ror302, 2147483647
  %c304 = zext i32 %t303 to i64
  %wp305 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c304, ptr %wp305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fac word 0xaa0103f7
  %r306.p = getelementptr inbounds i8, ptr %c, i64 8
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %t307 = or i64 0, %r306
  %wp308 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t307, ptr %wp308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fb0 word 0x29001be4
  %r309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r309 = load i64, ptr %r309.p, align 8, !alias.scope !3, !noalias !4
  %t310 = add i64 %r309, 4
  %r311.p = getelementptr inbounds i8, ptr %c, i64 32
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %c312 = trunc i64 %r311 to i32
  %gmp313 = inttoptr i64 %r309 to ptr
  store i32 %c312, ptr %gmp313, align 1, !alias.scope !4, !noalias !3
  %r314.p = getelementptr inbounds i8, ptr %c, i64 48
  %r314 = load i64, ptr %r314.p, align 8, !alias.scope !3, !noalias !4
  %c315 = trunc i64 %r314 to i32
  %gmp316 = inttoptr i64 %t310 to ptr
  store i32 %c315, ptr %gmp316, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8004e8fb4 word 0x1200f129
  %r317.p = getelementptr inbounds i8, ptr %c, i64 72
  %r317 = load i64, ptr %r317.p, align 8, !alias.scope !3, !noalias !4
  %c318 = trunc i64 %r317 to i32
  %t319 = and i32 %c318, 1431655765
  %c320 = zext i32 %t319 to i64
  %wp321 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c320, ptr %wp321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fb8 word 0xaa0203f8
  %r322.p = getelementptr inbounds i8, ptr %c, i64 16
  %r322 = load i64, ptr %r322.p, align 8, !alias.scope !3, !noalias !4
  %t323 = or i64 0, %r322
  %wp324 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t323, ptr %wp324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fbc word 0x4b090108
  %r325.p = getelementptr inbounds i8, ptr %c, i64 64
  %r325 = load i64, ptr %r325.p, align 8, !alias.scope !3, !noalias !4
  %c326 = trunc i64 %r325 to i32
  %r327.p = getelementptr inbounds i8, ptr %c, i64 72
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %c328 = trunc i64 %r327 to i32
  %t329 = sub i32 %c326, %c328
  %c330 = zext i32 %t329 to i64
  %wp331 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c330, ptr %wp331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fc0 word 0x52800669
  %c332 = zext i32 51 to i64
  %wp333 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c332, ptr %wp333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fc4 word 0x0a09010a
  %r334.p = getelementptr inbounds i8, ptr %c, i64 72
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %c335 = trunc i64 %r334 to i32
  %r336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %c337 = trunc i64 %r336 to i32
  %t338 = and i32 %c337, %c335
  %c339 = zext i32 %t338 to i64
  %wp340 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c339, ptr %wp340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fc8 word 0x0a480928
  %r341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r341 = load i64, ptr %r341.p, align 8, !alias.scope !3, !noalias !4
  %c342 = trunc i64 %r341 to i32
  %t343 = lshr i32 %c342, 2
  %r344.p = getelementptr inbounds i8, ptr %c, i64 72
  %r344 = load i64, ptr %r344.p, align 8, !alias.scope !3, !noalias !4
  %c345 = trunc i64 %r344 to i32
  %t346 = and i32 %c345, %t343
  %c347 = zext i32 %t346 to i64
  %wp348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c347, ptr %wp348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fcc word 0x0b0a0108
  %r349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r349 = load i64, ptr %r349.p, align 8, !alias.scope !3, !noalias !4
  %c350 = trunc i64 %r349 to i32
  %r351.p = getelementptr inbounds i8, ptr %c, i64 80
  %r351 = load i64, ptr %r351.p, align 8, !alias.scope !3, !noalias !4
  %c352 = trunc i64 %r351 to i32
  %t353 = add i32 %c350, %c352
  %c354 = zext i32 %t353 to i64
  %wp355 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c354, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fd0 word 0x0b481108
  %r356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %c357 = trunc i64 %r356 to i32
  %r358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r358 = load i64, ptr %r358.p, align 8, !alias.scope !3, !noalias !4
  %c359 = trunc i64 %r358 to i32
  %t360 = lshr i32 %c359, 4
  %t361 = add i32 %c357, %t360
  %c362 = zext i32 %t361 to i64
  %wp363 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c362, ptr %wp363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fd4 word 0x92400d08
  %r364.p = getelementptr inbounds i8, ptr %c, i64 64
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %t365 = and i64 %r364, 15
  %wp366 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t365, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fd8 word 0x8b5a2115
  %r367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %r368.p = getelementptr inbounds i8, ptr %c, i64 208
  %r368 = load i64, ptr %r368.p, align 8, !alias.scope !3, !noalias !4
  %t369 = lshr i64 %r368, 8
  %t370 = add i64 %r367, %t369
  %wp371 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fdc word 0x2a1503e5
  %r372.p = getelementptr inbounds i8, ptr %c, i64 168
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %c373 = trunc i64 %r372 to i32
  %t374 = or i32 0, %c373
  %c375 = zext i32 %t374 to i64
  %wp376 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c375, ptr %wp376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fe0 word 0x97ffffc3
  %wp377 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364887012, ptr %wp377, align 8, !alias.scope !3, !noalias !4
  call void @f_8004e8eec(ptr %c)
  ; @pc 0x8004e8fe4 word 0x37000660
  %r378.p = getelementptr inbounds i8, ptr %c, i64 0
  %r378 = load i64, ptr %r378.p, align 8, !alias.scope !3, !noalias !4
  %t379 = and i64 %r378, 1
  %cmp380 = icmp ne i64 %t379, 0
  br i1 %cmp380, label %L_8004e90b0, label %L_8004e8fe8_ft
L_8004e8fe8_ft:
  ; @pc 0x8004e8fe8 word 0xb9400308
  %r381.p = getelementptr inbounds i8, ptr %c, i64 192
  %r381 = load i64, ptr %r381.p, align 8, !alias.scope !3, !noalias !4
  %gmp382 = inttoptr i64 %r381 to ptr
  %gml383 = load i32, ptr %gmp382, align 1, !alias.scope !4, !noalias !3
  %c384 = zext i32 %gml383 to i64
  %wp385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c384, ptr %wp385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8fec word 0xaa1703e1
  %r386.p = getelementptr inbounds i8, ptr %c, i64 184
  %r386 = load i64, ptr %r386.p, align 8, !alias.scope !3, !noalias !4
  %t387 = or i64 0, %r386
  %wp388 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t387, ptr %wp388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8ff0 word 0x1280000d
  %c389 = zext i32 -1 to i64
  %wp390 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c389, ptr %wp390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8ff4 word 0xb85fc3a7
  %r391.p = getelementptr inbounds i8, ptr %c, i64 232
  %r391 = load i64, ptr %r391.p, align 8, !alias.scope !3, !noalias !4
  %t392 = add i64 %r391, -4
  %gmp393 = inttoptr i64 %t392 to ptr
  %gml394 = load i32, ptr %gmp393, align 1, !alias.scope !4, !noalias !3
  %c395 = zext i32 %gml394 to i64
  %wp396 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c395, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8ff8 word 0xaa1803e2
  %r397.p = getelementptr inbounds i8, ptr %c, i64 192
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %t398 = or i64 0, %r397
  %wp399 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t398, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e8ffc word 0xb94003e4
  %r400.p = getelementptr inbounds i8, ptr %c, i64 256
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %gmp401 = inttoptr i64 %r400 to ptr
  %gml402 = load i32, ptr %gmp401, align 1, !alias.scope !4, !noalias !3
  %c403 = zext i32 %gml402 to i64
  %wp404 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c403, ptr %wp404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9000 word 0x2940bbe6
  %r405.p = getelementptr inbounds i8, ptr %c, i64 256
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %t406 = add i64 %r405, 4
  %t407 = add i64 %t406, 4
  %gmp408 = inttoptr i64 %t406 to ptr
  %gml409 = load i32, ptr %gmp408, align 1, !alias.scope !4, !noalias !3
  %c410 = zext i32 %gml409 to i64
  %gmp411 = inttoptr i64 %t407 to ptr
  %gml412 = load i32, ptr %gmp411, align 1, !alias.scope !4, !noalias !3
  %c413 = zext i32 %gml412 to i64
  %wp414 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %c410, ptr %wp414, align 8, !alias.scope !3, !noalias !4
  %wp415 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c413, ptr %wp415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9004 word 0x6b06011f
  %r416.p = getelementptr inbounds i8, ptr %c, i64 64
  %r416 = load i64, ptr %r416.p, align 8, !alias.scope !3, !noalias !4
  %c417 = trunc i64 %r416 to i32
  %r418.p = getelementptr inbounds i8, ptr %c, i64 48
  %r418 = load i64, ptr %r418.p, align 8, !alias.scope !3, !noalias !4
  %c419 = trunc i64 %r418 to i32
  %t420 = sub i32 %c417, %c419
  %fn421 = icmp slt i32 %t420, 0
  %fz422 = icmp eq i32 %t420, 0
  %fc423 = icmp uge i32 %c417, %c419
  %fx1424 = xor i32 %c417, %c419
  %fx2425 = xor i32 %c417, %t420
  %fva426 = and i32 %fx1424, %fx2425
  %fv427 = icmp slt i32 %fva426, 0
  %nz428 = zext i1 %fn421 to i64
  %zz429 = zext i1 %fz422 to i64
  %cz430 = zext i1 %fc423 to i64
  %vz431 = zext i1 %fv427 to i64
  %ns432 = shl i64 %nz428, 31
  %zs433 = shl i64 %zz429, 30
  %cs434 = shl i64 %cz430, 29
  %vs435 = shl i64 %vz431, 28
  %nzor436 = or i64 %ns432, %zs433
  %cvor437 = or i64 %cs434, %vs435
  %nzcv438 = or i64 %nzor436, %cvor437
  %wp439 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv438, ptr %wp439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9008 word 0x54fffbcb
  %r440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %fsh442 = lshr i64 %r440, 31
  %ftr443 = trunc i64 %fsh442 to i1
  %fsh444 = lshr i64 %r440, 28
  %ftr445 = trunc i64 %fsh444 to i1
  %cond441 = icmp ne i1 %ftr443, %ftr445
  br i1 %cond441, label %L_8004e8f80, label %L_8004e900c
L_8004e9020_ft:
  ; @pc 0x8004e9020 word 0xf9400e80
  %r475.p = getelementptr inbounds i8, ptr %c, i64 160
  %r475 = load i64, ptr %r475.p, align 8, !alias.scope !3, !noalias !4
  %t476 = add i64 %r475, 24
  %gmp477 = inttoptr i64 %t476 to ptr
  %gml478 = load i64, ptr %gmp477, align 1, !alias.scope !4, !noalias !3
  %wp479 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml478, ptr %wp479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9024 word 0xb4000980
  %r480.p = getelementptr inbounds i8, ptr %c, i64 0
  %r480 = load i64, ptr %r480.p, align 8, !alias.scope !3, !noalias !4
  %cmp481 = icmp eq i64 %r480, 0
  br i1 %cmp481, label %L_8004e9154, label %L_8004e9028_ft
L_8004e9028_ft:
  ; @pc 0x8004e9028 word 0xb8736b88
  %r482.p = getelementptr inbounds i8, ptr %c, i64 224
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %r483.p = getelementptr inbounds i8, ptr %c, i64 152
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %t484 = add i64 %r482, %r483
  %gmp485 = inttoptr i64 %t484 to ptr
  %gml486 = load i32, ptr %gmp485, align 1, !alias.scope !4, !noalias !3
  %c487 = zext i32 %gml486 to i64
  %wp488 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c487, ptr %wp488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e902c word 0x1ac921a9
  %r489.p = getelementptr inbounds i8, ptr %c, i64 104
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %c490 = trunc i64 %r489 to i32
  %r491.p = getelementptr inbounds i8, ptr %c, i64 72
  %r491 = load i64, ptr %r491.p, align 8, !alias.scope !3, !noalias !4
  %c492 = trunc i64 %r491 to i32
  %t493 = and i32 %c492, 31
  %t494 = shl i32 %c490, %t493
  %c495 = zext i32 %t494 to i64
  %wp496 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9030 word 0x120000e7
  %r497.p = getelementptr inbounds i8, ptr %c, i64 56
  %r497 = load i64, ptr %r497.p, align 8, !alias.scope !3, !noalias !4
  %c498 = trunc i64 %r497 to i32
  %t499 = and i32 %c498, 1
  %c500 = zext i32 %t499 to i64
  %wp501 = getelementptr inbounds i8, ptr %c, i64 56
  store i64 %c500, ptr %wp501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9034 word 0x2a1903e3
  %r502.p = getelementptr inbounds i8, ptr %c, i64 200
  %r502 = load i64, ptr %r502.p, align 8, !alias.scope !3, !noalias !4
  %c503 = trunc i64 %r502 to i32
  %t504 = or i32 0, %c503
  %c505 = zext i32 %t504 to i64
  %wp506 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c505, ptr %wp506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9038 word 0xaa0103f3
  %r507.p = getelementptr inbounds i8, ptr %c, i64 8
  %r507 = load i64, ptr %r507.p, align 8, !alias.scope !3, !noalias !4
  %t508 = or i64 0, %r507
  %wp509 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t508, ptr %wp509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e903c word 0x0a290109
  %r510.p = getelementptr inbounds i8, ptr %c, i64 72
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %c511 = trunc i64 %r510 to i32
  %t512 = xor i32 %c511, -1
  %r513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %c514 = trunc i64 %r513 to i32
  %t515 = and i32 %c514, %t512
  %c516 = zext i32 %t515 to i64
  %wp517 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c516, ptr %wp517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9040 word 0x53017d2a
  %r518.p = getelementptr inbounds i8, ptr %c, i64 72
  %r518 = load i64, ptr %r518.p, align 8, !alias.scope !3, !noalias !4
  %c519 = trunc i64 %r518 to i32
  %ror520 = call i32 @llvm.fshr.i32(i32 %c519, i32 %c519, i32 1)
  %t521 = and i32 %ror520, 2147483647
  %c522 = zext i32 %t521 to i64
  %wp523 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c522, ptr %wp523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9044 word 0x1200f14a
  %r524.p = getelementptr inbounds i8, ptr %c, i64 80
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %c525 = trunc i64 %r524 to i32
  %t526 = and i32 %c525, 1431655765
  %c527 = zext i32 %t526 to i64
  %wp528 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c527, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9048 word 0x4b0a0129
  %r529.p = getelementptr inbounds i8, ptr %c, i64 72
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %c530 = trunc i64 %r529 to i32
  %r531.p = getelementptr inbounds i8, ptr %c, i64 80
  %r531 = load i64, ptr %r531.p, align 8, !alias.scope !3, !noalias !4
  %c532 = trunc i64 %r531 to i32
  %t533 = sub i32 %c530, %c532
  %c534 = zext i32 %t533 to i64
  %wp535 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c534, ptr %wp535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e904c word 0x5280066a
  %c536 = zext i32 51 to i64
  %wp537 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c536, ptr %wp537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9050 word 0x0a0a012b
  %r538.p = getelementptr inbounds i8, ptr %c, i64 80
  %r538 = load i64, ptr %r538.p, align 8, !alias.scope !3, !noalias !4
  %c539 = trunc i64 %r538 to i32
  %r540.p = getelementptr inbounds i8, ptr %c, i64 72
  %r540 = load i64, ptr %r540.p, align 8, !alias.scope !3, !noalias !4
  %c541 = trunc i64 %r540 to i32
  %t542 = and i32 %c541, %c539
  %c543 = zext i32 %t542 to i64
  %wp544 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c543, ptr %wp544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9054 word 0x0a490949
  %r545.p = getelementptr inbounds i8, ptr %c, i64 72
  %r545 = load i64, ptr %r545.p, align 8, !alias.scope !3, !noalias !4
  %c546 = trunc i64 %r545 to i32
  %t547 = lshr i32 %c546, 2
  %r548.p = getelementptr inbounds i8, ptr %c, i64 80
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %c549 = trunc i64 %r548 to i32
  %t550 = and i32 %c549, %t547
  %c551 = zext i32 %t550 to i64
  %wp552 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c551, ptr %wp552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9058 word 0x0b0b0129
  %r553.p = getelementptr inbounds i8, ptr %c, i64 72
  %r553 = load i64, ptr %r553.p, align 8, !alias.scope !3, !noalias !4
  %c554 = trunc i64 %r553 to i32
  %r555.p = getelementptr inbounds i8, ptr %c, i64 88
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %c556 = trunc i64 %r555 to i32
  %t557 = add i32 %c554, %c556
  %c558 = zext i32 %t557 to i64
  %wp559 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c558, ptr %wp559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e905c word 0x0b491129
  %r560.p = getelementptr inbounds i8, ptr %c, i64 72
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %c561 = trunc i64 %r560 to i32
  %r562.p = getelementptr inbounds i8, ptr %c, i64 72
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %c563 = trunc i64 %r562 to i32
  %t564 = lshr i32 %c563, 4
  %t565 = add i32 %c561, %t564
  %c566 = zext i32 %t565 to i64
  %wp567 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c566, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9060 word 0x92400d29
  %r568.p = getelementptr inbounds i8, ptr %c, i64 72
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %t569 = and i64 %r568, 15
  %wp570 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t569, ptr %wp570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9064 word 0x8b48213a
  %r571.p = getelementptr inbounds i8, ptr %c, i64 72
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %r572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %t573 = lshr i64 %r572, 8
  %t574 = add i64 %r571, %t573
  %wp575 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9068 word 0x2a1a03e5
  %r576.p = getelementptr inbounds i8, ptr %c, i64 208
  %r576 = load i64, ptr %r576.p, align 8, !alias.scope !3, !noalias !4
  %c577 = trunc i64 %r576 to i32
  %t578 = or i32 0, %c577
  %c579 = zext i32 %t578 to i64
  %wp580 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c579, ptr %wp580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e906c word 0x97ffffa0
  %wp581 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34364887152, ptr %wp581, align 8, !alias.scope !3, !noalias !4
  call void @f_8004e8eec(ptr %c)
  ; @pc 0x8004e9070 word 0x3607f880
  %r582.p = getelementptr inbounds i8, ptr %c, i64 0
  %r582 = load i64, ptr %r582.p, align 8, !alias.scope !3, !noalias !4
  %t583 = and i64 %r582, 1
  %cmp584 = icmp eq i64 %t583, 0
  br i1 %cmp584, label %L_8004e8f80, label %L_8004e9074_ft
L_8004e9074_ft:
  ; @pc 0x8004e9074 word 0x39400288
  %r585.p = getelementptr inbounds i8, ptr %c, i64 160
  %r585 = load i64, ptr %r585.p, align 8, !alias.scope !3, !noalias !4
  %gmp586 = inttoptr i64 %r585 to ptr
  %gml587 = load i8, ptr %gmp586, align 1, !alias.scope !4, !noalias !3
  %c588 = zext i8 %gml587 to i64
  %wp589 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c588, ptr %wp589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9078 word 0xaa1303e3
  %r590.p = getelementptr inbounds i8, ptr %c, i64 152
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  %t591 = or i64 0, %r590
  %wp592 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t591, ptr %wp592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e907c word 0x7100191f
  %r593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r593 = load i64, ptr %r593.p, align 8, !alias.scope !3, !noalias !4
  %c594 = trunc i64 %r593 to i32
  %t595 = sub i32 %c594, 6
  %fn596 = icmp slt i32 %t595, 0
  %fz597 = icmp eq i32 %t595, 0
  %fc598 = icmp uge i32 %c594, 6
  %fx1599 = xor i32 %c594, 6
  %fx2600 = xor i32 %c594, %t595
  %fva601 = and i32 %fx1599, %fx2600
  %fv602 = icmp slt i32 %fva601, 0
  %nz603 = zext i1 %fn596 to i64
  %zz604 = zext i1 %fz597 to i64
  %cz605 = zext i1 %fc598 to i64
  %vz606 = zext i1 %fv602 to i64
  %ns607 = shl i64 %nz603, 31
  %zs608 = shl i64 %zz604, 30
  %cs609 = shl i64 %cz605, 29
  %vs610 = shl i64 %vz606, 28
  %nzor611 = or i64 %ns607, %zs608
  %cvor612 = or i64 %cs609, %vs610
  %nzcv613 = or i64 %nzor611, %cvor612
  %wp614 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv613, ptr %wp614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9080 word 0x54000ae0
  %r615.p = getelementptr inbounds i8, ptr %c, i64 272
  %r615 = load i64, ptr %r615.p, align 8, !alias.scope !3, !noalias !4
  %fsh617 = lshr i64 %r615, 30
  %cond616 = trunc i64 %fsh617 to i1
  br i1 %cond616, label %L_8004e91dc, label %L_8004e9084_ft
L_8004e9084_ft:
  ; @pc 0x8004e9084 word 0x7100151f
  %r618.p = getelementptr inbounds i8, ptr %c, i64 64
  %r618 = load i64, ptr %r618.p, align 8, !alias.scope !3, !noalias !4
  %c619 = trunc i64 %r618 to i32
  %t620 = sub i32 %c619, 5
  %fn621 = icmp slt i32 %t620, 0
  %fz622 = icmp eq i32 %t620, 0
  %fc623 = icmp uge i32 %c619, 5
  %fx1624 = xor i32 %c619, 5
  %fx2625 = xor i32 %c619, %t620
  %fva626 = and i32 %fx1624, %fx2625
  %fv627 = icmp slt i32 %fva626, 0
  %nz628 = zext i1 %fn621 to i64
  %zz629 = zext i1 %fz622 to i64
  %cz630 = zext i1 %fc623 to i64
  %vz631 = zext i1 %fv627 to i64
  %ns632 = shl i64 %nz628, 31
  %zs633 = shl i64 %zz629, 30
  %cs634 = shl i64 %cz630, 29
  %vs635 = shl i64 %vz631, 28
  %nzor636 = or i64 %ns632, %zs633
  %cvor637 = or i64 %cs634, %vs635
  %nzcv638 = or i64 %nzor636, %cvor637
  %wp639 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv638, ptr %wp639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9088 word 0x54000cc0
  %r640.p = getelementptr inbounds i8, ptr %c, i64 272
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %fsh642 = lshr i64 %r640, 30
  %cond641 = trunc i64 %fsh642 to i1
  br i1 %cond641, label %L_8004e9220, label %L_8004e908c
L_8004e90c4_ft:
  ; @pc 0x8004e90c4 word 0xf9400a88
  %r758.p = getelementptr inbounds i8, ptr %c, i64 160
  %r758 = load i64, ptr %r758.p, align 8, !alias.scope !3, !noalias !4
  %t759 = add i64 %r758, 16
  %gmp760 = inttoptr i64 %t759 to ptr
  %gml761 = load i64, ptr %gmp760, align 1, !alias.scope !4, !noalias !3
  %wp762 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml761, ptr %wp762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90c8 word 0xf9406508
  %r763.p = getelementptr inbounds i8, ptr %c, i64 64
  %r763 = load i64, ptr %r763.p, align 8, !alias.scope !3, !noalias !4
  %t764 = add i64 %r763, 200
  %gmp765 = inttoptr i64 %t764 to ptr
  %gml766 = load i64, ptr %gmp765, align 1, !alias.scope !4, !noalias !3
  %wp767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml766, ptr %wp767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90cc word 0xb40017e8
  %r768.p = getelementptr inbounds i8, ptr %c, i64 64
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %cmp769 = icmp eq i64 %r768, 0
  br i1 %cmp769, label %L_8004e93c8, label %L_8004e90d0_ft
L_8004e90d0_ft:
  ; @pc 0x8004e90d0 word 0x52800289
  %c770 = zext i32 20 to i64
  %wp771 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c770, ptr %wp771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90d4 word 0x9ba922a2
  %r772.p = getelementptr inbounds i8, ptr %c, i64 168
  %r772 = load i64, ptr %r772.p, align 8, !alias.scope !3, !noalias !4
  %c773 = trunc i64 %r772 to i32
  %c774 = zext i32 %c773 to i64
  %r775.p = getelementptr inbounds i8, ptr %c, i64 72
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %c776 = trunc i64 %r775 to i32
  %c777 = zext i32 %c776 to i64
  %t778 = mul i64 %c774, %c777
  %r779.p = getelementptr inbounds i8, ptr %c, i64 64
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %t780 = add i64 %r779, %t778
  %wp781 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t780, ptr %wp781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90d8 word 0x39400048
  %r782.p = getelementptr inbounds i8, ptr %c, i64 16
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %gmp783 = inttoptr i64 %r782 to ptr
  %gml784 = load i8, ptr %gmp783, align 1, !alias.scope !4, !noalias !3
  %c785 = zext i8 %gml784 to i64
  %wp786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c785, ptr %wp786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90dc word 0x39400449
  %r787.p = getelementptr inbounds i8, ptr %c, i64 16
  %r787 = load i64, ptr %r787.p, align 8, !alias.scope !3, !noalias !4
  %t788 = add i64 %r787, 1
  %gmp789 = inttoptr i64 %t788 to ptr
  %gml790 = load i8, ptr %gmp789, align 1, !alias.scope !4, !noalias !3
  %c791 = zext i8 %gml790 to i64
  %wp792 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c791, ptr %wp792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90e0 word 0x3940084a
  %r793.p = getelementptr inbounds i8, ptr %c, i64 16
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %t794 = add i64 %r793, 2
  %gmp795 = inttoptr i64 %t794 to ptr
  %gml796 = load i8, ptr %gmp795, align 1, !alias.scope !4, !noalias !3
  %c797 = zext i8 %gml796 to i64
  %wp798 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c797, ptr %wp798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90e4 word 0x39400c4b
  %r799.p = getelementptr inbounds i8, ptr %c, i64 16
  %r799 = load i64, ptr %r799.p, align 8, !alias.scope !3, !noalias !4
  %t800 = add i64 %r799, 3
  %gmp801 = inttoptr i64 %t800 to ptr
  %gml802 = load i8, ptr %gmp801, align 1, !alias.scope !4, !noalias !3
  %c803 = zext i8 %gml802 to i64
  %wp804 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c803, ptr %wp804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90e8 word 0x3940104c
  %r805.p = getelementptr inbounds i8, ptr %c, i64 16
  %r805 = load i64, ptr %r805.p, align 8, !alias.scope !3, !noalias !4
  %t806 = add i64 %r805, 4
  %gmp807 = inttoptr i64 %t806 to ptr
  %gml808 = load i8, ptr %gmp807, align 1, !alias.scope !4, !noalias !3
  %c809 = zext i8 %gml808 to i64
  %wp810 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c809, ptr %wp810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90ec word 0x3940144d
  %r811.p = getelementptr inbounds i8, ptr %c, i64 16
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %t812 = add i64 %r811, 5
  %gmp813 = inttoptr i64 %t812 to ptr
  %gml814 = load i8, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %c815 = zext i8 %gml814 to i64
  %wp816 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c815, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90f0 word 0x3940184e
  %r817.p = getelementptr inbounds i8, ptr %c, i64 16
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %t818 = add i64 %r817, 6
  %gmp819 = inttoptr i64 %t818 to ptr
  %gml820 = load i8, ptr %gmp819, align 1, !alias.scope !4, !noalias !3
  %c821 = zext i8 %gml820 to i64
  %wp822 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90f4 word 0x39401c4f
  %r823.p = getelementptr inbounds i8, ptr %c, i64 16
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %t824 = add i64 %r823, 7
  %gmp825 = inttoptr i64 %t824 to ptr
  %gml826 = load i8, ptr %gmp825, align 1, !alias.scope !4, !noalias !3
  %c827 = zext i8 %gml826 to i64
  %wp828 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c827, ptr %wp828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90f8 word 0x39402050
  %r829.p = getelementptr inbounds i8, ptr %c, i64 16
  %r829 = load i64, ptr %r829.p, align 8, !alias.scope !3, !noalias !4
  %t830 = add i64 %r829, 8
  %gmp831 = inttoptr i64 %t830 to ptr
  %gml832 = load i8, ptr %gmp831, align 1, !alias.scope !4, !noalias !3
  %c833 = zext i8 %gml832 to i64
  %wp834 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c833, ptr %wp834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e90fc word 0x39402440
  %r835.p = getelementptr inbounds i8, ptr %c, i64 16
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %t836 = add i64 %r835, 9
  %gmp837 = inttoptr i64 %t836 to ptr
  %gml838 = load i8, ptr %gmp837, align 1, !alias.scope !4, !noalias !3
  %c839 = zext i8 %gml838 to i64
  %wp840 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c839, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9100 word 0x39402851
  %r841.p = getelementptr inbounds i8, ptr %c, i64 16
  %r841 = load i64, ptr %r841.p, align 8, !alias.scope !3, !noalias !4
  %t842 = add i64 %r841, 10
  %gmp843 = inttoptr i64 %t842 to ptr
  %gml844 = load i8, ptr %gmp843, align 1, !alias.scope !4, !noalias !3
  %c845 = zext i8 %gml844 to i64
  %wp846 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c845, ptr %wp846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9104 word 0x39402c52
  %r847.p = getelementptr inbounds i8, ptr %c, i64 16
  %r847 = load i64, ptr %r847.p, align 8, !alias.scope !3, !noalias !4
  %t848 = add i64 %r847, 11
  %gmp849 = inttoptr i64 %t848 to ptr
  %gml850 = load i8, ptr %gmp849, align 1, !alias.scope !4, !noalias !3
  %c851 = zext i8 %gml850 to i64
  %wp852 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c851, ptr %wp852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9108 word 0x29418841
  %r853.p = getelementptr inbounds i8, ptr %c, i64 16
  %r853 = load i64, ptr %r853.p, align 8, !alias.scope !3, !noalias !4
  %t854 = add i64 %r853, 12
  %t855 = add i64 %t854, 4
  %gmp856 = inttoptr i64 %t854 to ptr
  %gml857 = load i32, ptr %gmp856, align 1, !alias.scope !4, !noalias !3
  %c858 = zext i32 %gml857 to i64
  %gmp859 = inttoptr i64 %t855 to ptr
  %gml860 = load i32, ptr %gmp859, align 1, !alias.scope !4, !noalias !3
  %c861 = zext i32 %gml860 to i64
  %wp862 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c858, ptr %wp862, align 8, !alias.scope !3, !noalias !4
  %wp863 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c861, ptr %wp863, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e910c
L_8004e9160_ft:
  ; @pc 0x8004e9160 word 0xb8736b8b
  %r974.p = getelementptr inbounds i8, ptr %c, i64 224
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %r975.p = getelementptr inbounds i8, ptr %c, i64 152
  %r975 = load i64, ptr %r975.p, align 8, !alias.scope !3, !noalias !4
  %t976 = add i64 %r974, %r975
  %gmp977 = inttoptr i64 %t976 to ptr
  %gml978 = load i32, ptr %gmp977, align 1, !alias.scope !4, !noalias !3
  %c979 = zext i32 %gml978 to i64
  %wp980 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c979, ptr %wp980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9164 word 0x1ac921a9
  %r981.p = getelementptr inbounds i8, ptr %c, i64 104
  %r981 = load i64, ptr %r981.p, align 8, !alias.scope !3, !noalias !4
  %c982 = trunc i64 %r981 to i32
  %r983.p = getelementptr inbounds i8, ptr %c, i64 72
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %c984 = trunc i64 %r983 to i32
  %t985 = and i32 %c984, 31
  %t986 = shl i32 %c982, %t985
  %c987 = zext i32 %t986 to i64
  %wp988 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c987, ptr %wp988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9168 word 0x0a290169
  %r989.p = getelementptr inbounds i8, ptr %c, i64 72
  %r989 = load i64, ptr %r989.p, align 8, !alias.scope !3, !noalias !4
  %c990 = trunc i64 %r989 to i32
  %t991 = xor i32 %c990, -1
  %r992.p = getelementptr inbounds i8, ptr %c, i64 88
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %c993 = trunc i64 %r992 to i32
  %t994 = and i32 %c993, %t991
  %c995 = zext i32 %t994 to i64
  %wp996 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e916c word 0x53017d2c
  %r997.p = getelementptr inbounds i8, ptr %c, i64 72
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %c998 = trunc i64 %r997 to i32
  %ror999 = call i32 @llvm.fshr.i32(i32 %c998, i32 %c998, i32 1)
  %t1000 = and i32 %ror999, 2147483647
  %c1001 = zext i32 %t1000 to i64
  %wp1002 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1001, ptr %wp1002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9170 word 0x1200f18c
  %r1003.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1003 = load i64, ptr %r1003.p, align 8, !alias.scope !3, !noalias !4
  %c1004 = trunc i64 %r1003 to i32
  %t1005 = and i32 %c1004, 1431655765
  %c1006 = zext i32 %t1005 to i64
  %wp1007 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1006, ptr %wp1007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9174 word 0x4b0c0129
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %c1009 = trunc i64 %r1008 to i32
  %r1010.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1010 = load i64, ptr %r1010.p, align 8, !alias.scope !3, !noalias !4
  %c1011 = trunc i64 %r1010 to i32
  %t1012 = sub i32 %c1009, %c1011
  %c1013 = zext i32 %t1012 to i64
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1013, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9178 word 0x5280066c
  %c1015 = zext i32 51 to i64
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1015, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e917c word 0x0a0c012d
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %c1018 = trunc i64 %r1017 to i32
  %r1019.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1019 = load i64, ptr %r1019.p, align 8, !alias.scope !3, !noalias !4
  %c1020 = trunc i64 %r1019 to i32
  %t1021 = and i32 %c1020, %c1018
  %c1022 = zext i32 %t1021 to i64
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1022, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9180 word 0x0a490989
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %c1025 = trunc i64 %r1024 to i32
  %t1026 = lshr i32 %c1025, 2
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %c1028 = trunc i64 %r1027 to i32
  %t1029 = and i32 %c1028, %t1026
  %c1030 = zext i32 %t1029 to i64
  %wp1031 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1030, ptr %wp1031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9184 word 0x0b0d0129
  %r1032.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1032 = load i64, ptr %r1032.p, align 8, !alias.scope !3, !noalias !4
  %c1033 = trunc i64 %r1032 to i32
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %c1035 = trunc i64 %r1034 to i32
  %t1036 = add i32 %c1033, %c1035
  %c1037 = zext i32 %t1036 to i64
  %wp1038 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1037, ptr %wp1038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9188 word 0x0b491129
  %r1039.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1039 = load i64, ptr %r1039.p, align 8, !alias.scope !3, !noalias !4
  %c1040 = trunc i64 %r1039 to i32
  %r1041.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1041 = load i64, ptr %r1041.p, align 8, !alias.scope !3, !noalias !4
  %c1042 = trunc i64 %r1041 to i32
  %t1043 = lshr i32 %c1042, 4
  %t1044 = add i32 %c1040, %t1043
  %c1045 = zext i32 %t1044 to i64
  %wp1046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1045, ptr %wp1046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e918c word 0x12000d29
  %r1047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1047 = load i64, ptr %r1047.p, align 8, !alias.scope !3, !noalias !4
  %c1048 = trunc i64 %r1047 to i32
  %t1049 = and i32 %c1048, 15
  %c1050 = zext i32 %t1049 to i64
  %wp1051 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1050, ptr %wp1051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9190 word 0x0b4b2129
  %r1052.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1052 = load i64, ptr %r1052.p, align 8, !alias.scope !3, !noalias !4
  %c1053 = trunc i64 %r1052 to i32
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %c1055 = trunc i64 %r1054 to i32
  %t1056 = lshr i32 %c1055, 8
  %t1057 = add i32 %c1053, %t1056
  %c1058 = zext i32 %t1057 to i64
  %wp1059 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1058, ptr %wp1059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9194 word 0xd001a92b
  %wp1060 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34420617216, ptr %wp1060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9198 word 0xb9470d6b
  %r1061.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1061 = load i64, ptr %r1061.p, align 8, !alias.scope !3, !noalias !4
  %t1062 = add i64 %r1061, 1804
  %gmp1063 = inttoptr i64 %t1062 to ptr
  %gml1064 = load i32, ptr %gmp1063, align 1, !alias.scope !4, !noalias !3
  %c1065 = zext i32 %gml1064 to i64
  %wp1066 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1065, ptr %wp1066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e919c word 0x1b0b7d29
  %r1067.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1067 = load i64, ptr %r1067.p, align 8, !alias.scope !3, !noalias !4
  %c1068 = trunc i64 %r1067 to i32
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %c1070 = trunc i64 %r1069 to i32
  %t1071 = mul i32 %c1070, %c1068
  %t1072 = add i32 0, %t1071
  %c1073 = zext i32 %t1072 to i64
  %wp1074 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1073, ptr %wp1074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91a0 word 0x1200092b
  %r1075.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1075 = load i64, ptr %r1075.p, align 8, !alias.scope !3, !noalias !4
  %c1076 = trunc i64 %r1075 to i32
  %t1077 = and i32 %c1076, 7
  %c1078 = zext i32 %t1077 to i64
  %wp1079 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1078, ptr %wp1079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91a4 word 0x8b490d49
  %r1080.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1080 = load i64, ptr %r1080.p, align 8, !alias.scope !3, !noalias !4
  %r1081.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1081 = load i64, ptr %r1081.p, align 8, !alias.scope !3, !noalias !4
  %t1082 = lshr i64 %r1081, 3
  %t1083 = add i64 %r1080, %t1082
  %wp1084 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1083, ptr %wp1084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91a8 word 0x7940012a
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %gmp1086 = inttoptr i64 %r1085 to ptr
  %gml1087 = load i16, ptr %gmp1086, align 1, !alias.scope !4, !noalias !3
  %c1088 = zext i16 %gml1087 to i64
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1088, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91ac word 0x39400929
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %t1091 = add i64 %r1090, 2
  %gmp1092 = inttoptr i64 %t1091 to ptr
  %gml1093 = load i8, ptr %gmp1092, align 1, !alias.scope !4, !noalias !3
  %c1094 = zext i8 %gml1093 to i64
  %wp1095 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1094, ptr %wp1095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91b0 word 0x2a094149
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %c1097 = trunc i64 %r1096 to i32
  %t1098 = shl i32 %c1097, 16
  %r1099.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1099 = load i64, ptr %r1099.p, align 8, !alias.scope !3, !noalias !4
  %c1100 = trunc i64 %r1099 to i32
  %t1101 = or i32 %c1100, %t1098
  %c1102 = zext i32 %t1101 to i64
  %wp1103 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1102, ptr %wp1103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91b4 word 0x1acb2529
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %c1105 = trunc i64 %r1104 to i32
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %c1107 = trunc i64 %r1106 to i32
  %t1108 = and i32 %c1107, 31
  %t1109 = lshr i32 %c1105, %t1108
  %c1110 = zext i32 %t1109 to i64
  %wp1111 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1110, ptr %wp1111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91b8 word 0x12003d29
  %r1112.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1112 = load i64, ptr %r1112.p, align 8, !alias.scope !3, !noalias !4
  %c1113 = trunc i64 %r1112 to i32
  %t1114 = and i32 %c1113, 65535
  %c1115 = zext i32 %t1114 to i64
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1115, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e91bc
L_8004e91c0_ft:
  ; @pc 0x8004e91c0 word 0x36100da9
  %r1120.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1120 = load i64, ptr %r1120.p, align 8, !alias.scope !3, !noalias !4
  %t1121 = and i64 %r1120, 4
  %cmp1122 = icmp eq i64 %t1121, 0
  br i1 %cmp1122, label %L_8004e9374, label %L_8004e91c4
L_8004e91e8_ft:
  ; @pc 0x8004e91e8 word 0xd001a929
  %wp1158 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34420617216, ptr %wp1158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91ec word 0xb9470929
  %r1159.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1159 = load i64, ptr %r1159.p, align 8, !alias.scope !3, !noalias !4
  %t1160 = add i64 %r1159, 1800
  %gmp1161 = inttoptr i64 %t1160 to ptr
  %gml1162 = load i32, ptr %gmp1161, align 1, !alias.scope !4, !noalias !3
  %c1163 = zext i32 %gml1162 to i64
  %wp1164 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1163, ptr %wp1164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91f0 word 0x1b1a7d29
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %c1166 = trunc i64 %r1165 to i32
  %r1167.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1167 = load i64, ptr %r1167.p, align 8, !alias.scope !3, !noalias !4
  %c1168 = trunc i64 %r1167 to i32
  %t1169 = mul i32 %c1168, %c1166
  %t1170 = add i32 0, %t1169
  %c1171 = zext i32 %t1170 to i64
  %wp1172 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1171, ptr %wp1172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91f4 word 0xd343fd2a
  %r1173.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1173 = load i64, ptr %r1173.p, align 8, !alias.scope !3, !noalias !4
  %ror1174 = call i64 @llvm.fshr.i64(i64 %r1173, i64 %r1173, i64 3)
  %t1175 = and i64 %ror1174, 2305843009213693951
  %wp1176 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1175, ptr %wp1176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91f8 word 0x12000929
  %r1177.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1177 = load i64, ptr %r1177.p, align 8, !alias.scope !3, !noalias !4
  %c1178 = trunc i64 %r1177 to i32
  %t1179 = and i32 %c1178, 7
  %c1180 = zext i32 %t1179 to i64
  %wp1181 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1180, ptr %wp1181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e91fc word 0x786a6908
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %r1183.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1183 = load i64, ptr %r1183.p, align 8, !alias.scope !3, !noalias !4
  %t1184 = add i64 %r1182, %r1183
  %gmp1185 = inttoptr i64 %t1184 to ptr
  %gml1186 = load i16, ptr %gmp1185, align 1, !alias.scope !4, !noalias !3
  %c1187 = zext i16 %gml1186 to i64
  %wp1188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1187, ptr %wp1188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9200 word 0x1ac92508
  %r1189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1189 = load i64, ptr %r1189.p, align 8, !alias.scope !3, !noalias !4
  %c1190 = trunc i64 %r1189 to i32
  %r1191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1191 = load i64, ptr %r1191.p, align 8, !alias.scope !3, !noalias !4
  %c1192 = trunc i64 %r1191 to i32
  %t1193 = and i32 %c1192, 31
  %t1194 = lshr i32 %c1190, %t1193
  %c1195 = zext i32 %t1194 to i64
  %wp1196 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1195, ptr %wp1196, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e9204
L_8004e922c_ft:
  ; @pc 0x8004e922c word 0x52800289
  %c1261 = zext i32 20 to i64
  %wp1262 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1261, ptr %wp1262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9230 word 0x9ba92342
  %r1263.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1263 = load i64, ptr %r1263.p, align 8, !alias.scope !3, !noalias !4
  %c1264 = trunc i64 %r1263 to i32
  %c1265 = zext i32 %c1264 to i64
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %c1267 = trunc i64 %r1266 to i32
  %c1268 = zext i32 %c1267 to i64
  %t1269 = mul i64 %c1265, %c1268
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %t1271 = add i64 %r1270, %t1269
  %wp1272 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1271, ptr %wp1272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9234 word 0x39400048
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %gmp1274 = inttoptr i64 %r1273 to ptr
  %gml1275 = load i8, ptr %gmp1274, align 1, !alias.scope !4, !noalias !3
  %c1276 = zext i8 %gml1275 to i64
  %wp1277 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1276, ptr %wp1277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9238 word 0x39400449
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1278 = load i64, ptr %r1278.p, align 8, !alias.scope !3, !noalias !4
  %t1279 = add i64 %r1278, 1
  %gmp1280 = inttoptr i64 %t1279 to ptr
  %gml1281 = load i8, ptr %gmp1280, align 1, !alias.scope !4, !noalias !3
  %c1282 = zext i8 %gml1281 to i64
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e923c word 0x3940084a
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %t1285 = add i64 %r1284, 2
  %gmp1286 = inttoptr i64 %t1285 to ptr
  %gml1287 = load i8, ptr %gmp1286, align 1, !alias.scope !4, !noalias !3
  %c1288 = zext i8 %gml1287 to i64
  %wp1289 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1288, ptr %wp1289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9240 word 0x39400c4b
  %r1290.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1290 = load i64, ptr %r1290.p, align 8, !alias.scope !3, !noalias !4
  %t1291 = add i64 %r1290, 3
  %gmp1292 = inttoptr i64 %t1291 to ptr
  %gml1293 = load i8, ptr %gmp1292, align 1, !alias.scope !4, !noalias !3
  %c1294 = zext i8 %gml1293 to i64
  %wp1295 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1294, ptr %wp1295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9244 word 0x3940104c
  %r1296.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1296 = load i64, ptr %r1296.p, align 8, !alias.scope !3, !noalias !4
  %t1297 = add i64 %r1296, 4
  %gmp1298 = inttoptr i64 %t1297 to ptr
  %gml1299 = load i8, ptr %gmp1298, align 1, !alias.scope !4, !noalias !3
  %c1300 = zext i8 %gml1299 to i64
  %wp1301 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1300, ptr %wp1301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9248 word 0x3940144d
  %r1302.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1302 = load i64, ptr %r1302.p, align 8, !alias.scope !3, !noalias !4
  %t1303 = add i64 %r1302, 5
  %gmp1304 = inttoptr i64 %t1303 to ptr
  %gml1305 = load i8, ptr %gmp1304, align 1, !alias.scope !4, !noalias !3
  %c1306 = zext i8 %gml1305 to i64
  %wp1307 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1306, ptr %wp1307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e924c word 0x3940184e
  %r1308.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1308 = load i64, ptr %r1308.p, align 8, !alias.scope !3, !noalias !4
  %t1309 = add i64 %r1308, 6
  %gmp1310 = inttoptr i64 %t1309 to ptr
  %gml1311 = load i8, ptr %gmp1310, align 1, !alias.scope !4, !noalias !3
  %c1312 = zext i8 %gml1311 to i64
  %wp1313 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1312, ptr %wp1313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9250 word 0x39401c4f
  %r1314.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1314 = load i64, ptr %r1314.p, align 8, !alias.scope !3, !noalias !4
  %t1315 = add i64 %r1314, 7
  %gmp1316 = inttoptr i64 %t1315 to ptr
  %gml1317 = load i8, ptr %gmp1316, align 1, !alias.scope !4, !noalias !3
  %c1318 = zext i8 %gml1317 to i64
  %wp1319 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1318, ptr %wp1319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9254 word 0x39402050
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %t1321 = add i64 %r1320, 8
  %gmp1322 = inttoptr i64 %t1321 to ptr
  %gml1323 = load i8, ptr %gmp1322, align 1, !alias.scope !4, !noalias !3
  %c1324 = zext i8 %gml1323 to i64
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9258 word 0x39402440
  %r1326.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1326 = load i64, ptr %r1326.p, align 8, !alias.scope !3, !noalias !4
  %t1327 = add i64 %r1326, 9
  %gmp1328 = inttoptr i64 %t1327 to ptr
  %gml1329 = load i8, ptr %gmp1328, align 1, !alias.scope !4, !noalias !3
  %c1330 = zext i8 %gml1329 to i64
  %wp1331 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1330, ptr %wp1331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e925c word 0x39402851
  %r1332.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1332 = load i64, ptr %r1332.p, align 8, !alias.scope !3, !noalias !4
  %t1333 = add i64 %r1332, 10
  %gmp1334 = inttoptr i64 %t1333 to ptr
  %gml1335 = load i8, ptr %gmp1334, align 1, !alias.scope !4, !noalias !3
  %c1336 = zext i8 %gml1335 to i64
  %wp1337 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c1336, ptr %wp1337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9260 word 0x39402c52
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %t1339 = add i64 %r1338, 11
  %gmp1340 = inttoptr i64 %t1339 to ptr
  %gml1341 = load i8, ptr %gmp1340, align 1, !alias.scope !4, !noalias !3
  %c1342 = zext i8 %gml1341 to i64
  %wp1343 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1342, ptr %wp1343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9264 word 0x29418841
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %t1345 = add i64 %r1344, 12
  %t1346 = add i64 %t1345, 4
  %gmp1347 = inttoptr i64 %t1345 to ptr
  %gml1348 = load i32, ptr %gmp1347, align 1, !alias.scope !4, !noalias !3
  %c1349 = zext i32 %gml1348 to i64
  %gmp1350 = inttoptr i64 %t1346 to ptr
  %gml1351 = load i32, ptr %gmp1350, align 1, !alias.scope !4, !noalias !3
  %c1352 = zext i32 %gml1351 to i64
  %wp1353 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1349, ptr %wp1353, align 8, !alias.scope !3, !noalias !4
  %wp1354 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1352, ptr %wp1354, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e9268
L_8004e92bc_ft:
  ; @pc 0x8004e92bc word 0xd001a929
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34420617216, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92c0 word 0xb9470929
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %t1467 = add i64 %r1466, 1800
  %gmp1468 = inttoptr i64 %t1467 to ptr
  %gml1469 = load i32, ptr %gmp1468, align 1, !alias.scope !4, !noalias !3
  %c1470 = zext i32 %gml1469 to i64
  %wp1471 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1470, ptr %wp1471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92c4 word 0x1b157d29
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %c1473 = trunc i64 %r1472 to i32
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %c1475 = trunc i64 %r1474 to i32
  %t1476 = mul i32 %c1475, %c1473
  %t1477 = add i32 0, %t1476
  %c1478 = zext i32 %t1477 to i64
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1478, ptr %wp1479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92c8 word 0xd343fd2a
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %ror1481 = call i64 @llvm.fshr.i64(i64 %r1480, i64 %r1480, i64 3)
  %t1482 = and i64 %ror1481, 2305843009213693951
  %wp1483 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1482, ptr %wp1483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92cc word 0x12000929
  %r1484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1484 = load i64, ptr %r1484.p, align 8, !alias.scope !3, !noalias !4
  %c1485 = trunc i64 %r1484 to i32
  %t1486 = and i32 %c1485, 7
  %c1487 = zext i32 %t1486 to i64
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1487, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92d0 word 0x786a6908
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %t1491 = add i64 %r1489, %r1490
  %gmp1492 = inttoptr i64 %t1491 to ptr
  %gml1493 = load i16, ptr %gmp1492, align 1, !alias.scope !4, !noalias !3
  %c1494 = zext i16 %gml1493 to i64
  %wp1495 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1494, ptr %wp1495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e92d4 word 0x1ac92508
  %r1496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1496 = load i64, ptr %r1496.p, align 8, !alias.scope !3, !noalias !4
  %c1497 = trunc i64 %r1496 to i32
  %r1498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1498 = load i64, ptr %r1498.p, align 8, !alias.scope !3, !noalias !4
  %c1499 = trunc i64 %r1498 to i32
  %t1500 = and i32 %c1499, 31
  %t1501 = lshr i32 %c1497, %t1500
  %c1502 = zext i32 %t1501 to i64
  %wp1503 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1502, ptr %wp1503, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e92d8
L_8004e9304_ft:
  ; @pc 0x8004e9304 word 0x1ac921a9
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %c1546 = trunc i64 %r1545 to i32
  %r1547.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1547 = load i64, ptr %r1547.p, align 8, !alias.scope !3, !noalias !4
  %c1548 = trunc i64 %r1547 to i32
  %t1549 = and i32 %c1548, 31
  %t1550 = shl i32 %c1546, %t1549
  %c1551 = zext i32 %t1550 to i64
  %wp1552 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1551, ptr %wp1552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9308 word 0x0a290349
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %c1554 = trunc i64 %r1553 to i32
  %t1555 = xor i32 %c1554, -1
  %r1556.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1556 = load i64, ptr %r1556.p, align 8, !alias.scope !3, !noalias !4
  %c1557 = trunc i64 %r1556 to i32
  %t1558 = and i32 %c1557, %t1555
  %c1559 = zext i32 %t1558 to i64
  %wp1560 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1559, ptr %wp1560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e930c word 0x53017d2b
  %r1561.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1561 = load i64, ptr %r1561.p, align 8, !alias.scope !3, !noalias !4
  %c1562 = trunc i64 %r1561 to i32
  %ror1563 = call i32 @llvm.fshr.i32(i32 %c1562, i32 %c1562, i32 1)
  %t1564 = and i32 %ror1563, 2147483647
  %c1565 = zext i32 %t1564 to i64
  %wp1566 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1565, ptr %wp1566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9310 word 0x1200f16b
  %r1567.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1567 = load i64, ptr %r1567.p, align 8, !alias.scope !3, !noalias !4
  %c1568 = trunc i64 %r1567 to i32
  %t1569 = and i32 %c1568, 1431655765
  %c1570 = zext i32 %t1569 to i64
  %wp1571 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1570, ptr %wp1571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9314 word 0x4b0b0129
  %r1572.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1572 = load i64, ptr %r1572.p, align 8, !alias.scope !3, !noalias !4
  %c1573 = trunc i64 %r1572 to i32
  %r1574.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1574 = load i64, ptr %r1574.p, align 8, !alias.scope !3, !noalias !4
  %c1575 = trunc i64 %r1574 to i32
  %t1576 = sub i32 %c1573, %c1575
  %c1577 = zext i32 %t1576 to i64
  %wp1578 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1577, ptr %wp1578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9318 word 0x5280066b
  %c1579 = zext i32 51 to i64
  %wp1580 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1579, ptr %wp1580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e931c word 0x0a0b012c
  %r1581.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1581 = load i64, ptr %r1581.p, align 8, !alias.scope !3, !noalias !4
  %c1582 = trunc i64 %r1581 to i32
  %r1583.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1583 = load i64, ptr %r1583.p, align 8, !alias.scope !3, !noalias !4
  %c1584 = trunc i64 %r1583 to i32
  %t1585 = and i32 %c1584, %c1582
  %c1586 = zext i32 %t1585 to i64
  %wp1587 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1586, ptr %wp1587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9320 word 0x0a490969
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %c1589 = trunc i64 %r1588 to i32
  %t1590 = lshr i32 %c1589, 2
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %c1592 = trunc i64 %r1591 to i32
  %t1593 = and i32 %c1592, %t1590
  %c1594 = zext i32 %t1593 to i64
  %wp1595 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1594, ptr %wp1595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9324 word 0xd001a92b
  %wp1596 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34420617216, ptr %wp1596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9328 word 0xb9470d6b
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %t1598 = add i64 %r1597, 1804
  %gmp1599 = inttoptr i64 %t1598 to ptr
  %gml1600 = load i32, ptr %gmp1599, align 1, !alias.scope !4, !noalias !3
  %c1601 = zext i32 %gml1600 to i64
  %wp1602 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1601, ptr %wp1602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e932c word 0x0b0c0129
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %c1604 = trunc i64 %r1603 to i32
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %c1606 = trunc i64 %r1605 to i32
  %t1607 = add i32 %c1604, %c1606
  %c1608 = zext i32 %t1607 to i64
  %wp1609 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1608, ptr %wp1609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9330 word 0x0b491129
  %r1610.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1610 = load i64, ptr %r1610.p, align 8, !alias.scope !3, !noalias !4
  %c1611 = trunc i64 %r1610 to i32
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %c1613 = trunc i64 %r1612 to i32
  %t1614 = lshr i32 %c1613, 4
  %t1615 = add i32 %c1611, %t1614
  %c1616 = zext i32 %t1615 to i64
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9334 word 0x12000d29
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %c1619 = trunc i64 %r1618 to i32
  %t1620 = and i32 %c1619, 15
  %c1621 = zext i32 %t1620 to i64
  %wp1622 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1621, ptr %wp1622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9338 word 0x0b5a2129
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %c1624 = trunc i64 %r1623 to i32
  %r1625.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1625 = load i64, ptr %r1625.p, align 8, !alias.scope !3, !noalias !4
  %c1626 = trunc i64 %r1625 to i32
  %t1627 = lshr i32 %c1626, 8
  %t1628 = add i32 %c1624, %t1627
  %c1629 = zext i32 %t1628 to i64
  %wp1630 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1629, ptr %wp1630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e933c word 0x1b097d69
  %r1631.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1631 = load i64, ptr %r1631.p, align 8, !alias.scope !3, !noalias !4
  %c1632 = trunc i64 %r1631 to i32
  %r1633.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1633 = load i64, ptr %r1633.p, align 8, !alias.scope !3, !noalias !4
  %c1634 = trunc i64 %r1633 to i32
  %t1635 = mul i32 %c1634, %c1632
  %t1636 = add i32 0, %t1635
  %c1637 = zext i32 %t1636 to i64
  %wp1638 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1637, ptr %wp1638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9340 word 0x1200092b
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %c1640 = trunc i64 %r1639 to i32
  %t1641 = and i32 %c1640, 7
  %c1642 = zext i32 %t1641 to i64
  %wp1643 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1642, ptr %wp1643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9344 word 0x8b490d49
  %r1644.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1644 = load i64, ptr %r1644.p, align 8, !alias.scope !3, !noalias !4
  %r1645.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1645 = load i64, ptr %r1645.p, align 8, !alias.scope !3, !noalias !4
  %t1646 = lshr i64 %r1645, 3
  %t1647 = add i64 %r1644, %t1646
  %wp1648 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1647, ptr %wp1648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9348 word 0x7940012a
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %gmp1650 = inttoptr i64 %r1649 to ptr
  %gml1651 = load i16, ptr %gmp1650, align 1, !alias.scope !4, !noalias !3
  %c1652 = zext i16 %gml1651 to i64
  %wp1653 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1652, ptr %wp1653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e934c word 0x39400929
  %r1654.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1654 = load i64, ptr %r1654.p, align 8, !alias.scope !3, !noalias !4
  %t1655 = add i64 %r1654, 2
  %gmp1656 = inttoptr i64 %t1655 to ptr
  %gml1657 = load i8, ptr %gmp1656, align 1, !alias.scope !4, !noalias !3
  %c1658 = zext i8 %gml1657 to i64
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9350 word 0x2a094149
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %c1661 = trunc i64 %r1660 to i32
  %t1662 = shl i32 %c1661, 16
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %c1664 = trunc i64 %r1663 to i32
  %t1665 = or i32 %c1664, %t1662
  %c1666 = zext i32 %t1665 to i64
  %wp1667 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1666, ptr %wp1667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9354 word 0x1acb2529
  %r1668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1668 = load i64, ptr %r1668.p, align 8, !alias.scope !3, !noalias !4
  %c1669 = trunc i64 %r1668 to i32
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %c1671 = trunc i64 %r1670 to i32
  %t1672 = and i32 %c1671, 31
  %t1673 = lshr i32 %c1669, %t1672
  %c1674 = zext i32 %t1673 to i64
  %wp1675 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1674, ptr %wp1675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8004e9358 word 0x12003d29
  %r1676.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1676 = load i64, ptr %r1676.p, align 8, !alias.scope !3, !noalias !4
  %c1677 = trunc i64 %r1676 to i32
  %t1678 = and i32 %c1677, 65535
  %c1679 = zext i32 %t1678 to i64
  %wp1680 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1679, ptr %wp1680, align 8, !alias.scope !3, !noalias !4
  br label %L_8004e935c
L_8004e9360_ft:
  ; @pc 0x8004e9360 word 0x3717f329
  %r1684.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1684 = load i64, ptr %r1684.p, align 8, !alias.scope !3, !noalias !4
  %t1685 = and i64 %r1684, 4
  %cmp1686 = icmp ne i64 %t1685, 0
  br i1 %cmp1686, label %L_8004e91c4, label %L_8004e9364_ft
L_8004e9364_ft:
  ; @pc 0x8004e9364 word 0x17ffff02
  br label %L_8004e8f6c
L_8004e93c4_ft:
  ; @pc 0x8004e93c4 word 0x17ffff80
  br label %L_8004e91c4
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
