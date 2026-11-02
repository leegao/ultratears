; UltraTears chunk main_067_statickernel: 1 functions [0x8001161d0..0x8001177d8)
; ModuleID = 'main_067_statickernel_raw'
source_filename = "main_067_statickernel_raw"
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

declare dso_local void @f_8000ef570(ptr)
declare dso_local void @f_8001177d8(ptr)
declare dso_local void @f_800117868(ptr)
declare dso_local void @f_802843244(ptr)
declare dso_local void @f_802844c70(ptr)
declare dso_local void @f_802844d84(ptr)
declare dso_local void @f_802855d74(ptr)
declare dso_local void @f_802ba41d0(ptr)

define dso_local void @f_8001161d0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001161d0:
  ; @pc 0x8001161d0 word 0xd104c3ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 304
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001161d4 word 0xa90d7bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 208
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161d8 word 0xa90e6ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 224
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161dc word 0xa90f67fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 240
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161e0 word 0xa9105ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 256
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161e4 word 0xa91157f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 272
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161e8 word 0xa9124ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 288
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001161ec word 0x910343fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 208
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001161f0 word 0xaa0203f5
  %r53.p = getelementptr inbounds i8, ptr %c, i64 16
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = or i64 0, %r53
  %wp55 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t54, ptr %wp55, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001161f4 word 0x52852288
  %c56 = zext i32 10516 to i64
  %wp57 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001161f8 word 0xaa0103f3
  %r58.p = getelementptr inbounds i8, ptr %c, i64 8
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %t59 = or i64 0, %r58
  %wp60 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t59, ptr %wp60, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001161fc word 0xaa0003f4
  %r61.p = getelementptr inbounds i8, ptr %c, i64 0
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %t62 = or i64 0, %r61
  %wp63 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t62, ptr %wp63, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116200 word 0x8b08002d
  %r64.p = getelementptr inbounds i8, ptr %c, i64 8
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %r65.p = getelementptr inbounds i8, ptr %c, i64 64
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %t66 = add i64 %r64, %r65
  %wp67 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t66, ptr %wp67, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116204 word 0x710082bf
  %r68.p = getelementptr inbounds i8, ptr %c, i64 168
  %r68 = load i64, ptr %r68.p, align 8, !alias.scope !3, !noalias !4
  %c69 = trunc i64 %r68 to i32
  %t70 = sub i32 %c69, 32
  %fn71 = icmp slt i32 %t70, 0
  %fz72 = icmp eq i32 %t70, 0
  %fc73 = icmp uge i32 %c69, 32
  %fx174 = xor i32 %c69, 32
  %fx275 = xor i32 %c69, %t70
  %fva76 = and i32 %fx174, %fx275
  %fv77 = icmp slt i32 %fva76, 0
  %nz78 = zext i1 %fn71 to i64
  %zz79 = zext i1 %fz72 to i64
  %cz80 = zext i1 %fc73 to i64
  %vz81 = zext i1 %fv77 to i64
  %ns82 = shl i64 %nz78, 31
  %zs83 = shl i64 %zz79, 30
  %cs84 = shl i64 %cz80, 29
  %vs85 = shl i64 %vz81, 28
  %nzor86 = or i64 %ns82, %zs83
  %cvor87 = or i64 %cs84, %vs85
  %nzcv88 = or i64 %nzor86, %cvor87
  %wp89 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv88, ptr %wp89, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116208 word 0x540000a2
  %r90.p = getelementptr inbounds i8, ptr %c, i64 272
  %r90 = load i64, ptr %r90.p, align 8, !alias.scope !3, !noalias !4
  %fsh92 = lshr i64 %r90, 29
  %cond91 = trunc i64 %fsh92 to i1
  br i1 %cond91, label %L_80011621c, label %L_80011620c_ft
L_80011621c:
  ; @pc 0x80011621c word 0x71004abf
  %r112.p = getelementptr inbounds i8, ptr %c, i64 168
  %r112 = load i64, ptr %r112.p, align 8, !alias.scope !3, !noalias !4
  %c113 = trunc i64 %r112 to i32
  %t114 = sub i32 %c113, 18
  %fn115 = icmp slt i32 %t114, 0
  %fz116 = icmp eq i32 %t114, 0
  %fc117 = icmp uge i32 %c113, 18
  %fx1118 = xor i32 %c113, 18
  %fx2119 = xor i32 %c113, %t114
  %fva120 = and i32 %fx1118, %fx2119
  %fv121 = icmp slt i32 %fva120, 0
  %nz122 = zext i1 %fn115 to i64
  %zz123 = zext i1 %fz116 to i64
  %cz124 = zext i1 %fc117 to i64
  %vz125 = zext i1 %fv121 to i64
  %ns126 = shl i64 %nz122, 31
  %zs127 = shl i64 %zz123, 30
  %cs128 = shl i64 %cz124, 29
  %vs129 = shl i64 %vz125, 28
  %nzor130 = or i64 %ns126, %zs127
  %cvor131 = or i64 %cs128, %vs129
  %nzcv132 = or i64 %nzor130, %cvor131
  %wp133 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv132, ptr %wp133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116220 word 0x5400abc0
  %r134.p = getelementptr inbounds i8, ptr %c, i64 272
  %r134 = load i64, ptr %r134.p, align 8, !alias.scope !3, !noalias !4
  %fsh136 = lshr i64 %r134, 30
  %cond135 = trunc i64 %fsh136 to i1
  br i1 %cond135, label %L_800117798, label %L_800116224_ft
L_800116228:
  ; @pc 0x800116228 word 0x39800daa
  %r139.p = getelementptr inbounds i8, ptr %c, i64 104
  %r139 = load i64, ptr %r139.p, align 8, !alias.scope !3, !noalias !4
  %t140 = add i64 %r139, 3
  %gmp141 = inttoptr i64 %t140 to ptr
  %gml142 = load i8, ptr %gmp141, align 1, !alias.scope !4, !noalias !3
  %c143 = sext i8 %gml142 to i64
  %wp144 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c143, ptr %wp144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011622c word 0x910003f8
  %r145.p = getelementptr inbounds i8, ptr %c, i64 256
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %t146 = add i64 %r145, 0
  %wp147 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t146, ptr %wp147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116230 word 0xb973928b
  %r148.p = getelementptr inbounds i8, ptr %c, i64 160
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = add i64 %r148, 13200
  %gmp150 = inttoptr i64 %t149 to ptr
  %gml151 = load i32, ptr %gmp150, align 1, !alias.scope !4, !noalias !3
  %c152 = zext i32 %gml151 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116234 word 0x6b0a017f
  %r154.p = getelementptr inbounds i8, ptr %c, i64 88
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %c155 = trunc i64 %r154 to i32
  %r156.p = getelementptr inbounds i8, ptr %c, i64 80
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %c157 = trunc i64 %r156 to i32
  %t158 = sub i32 %c155, %c157
  %fn159 = icmp slt i32 %t158, 0
  %fz160 = icmp eq i32 %t158, 0
  %fc161 = icmp uge i32 %c155, %c157
  %fx1162 = xor i32 %c155, %c157
  %fx2163 = xor i32 %c155, %t158
  %fva164 = and i32 %fx1162, %fx2163
  %fv165 = icmp slt i32 %fva164, 0
  %nz166 = zext i1 %fn159 to i64
  %zz167 = zext i1 %fz160 to i64
  %cz168 = zext i1 %fc161 to i64
  %vz169 = zext i1 %fv165 to i64
  %ns170 = shl i64 %nz166, 31
  %zs171 = shl i64 %zz167, 30
  %cs172 = shl i64 %cz168, 29
  %vs173 = shl i64 %vz169, 28
  %nzor174 = or i64 %ns170, %zs171
  %cvor175 = or i64 %cs172, %vs173
  %nzcv176 = or i64 %nzor174, %cvor175
  %wp177 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv176, ptr %wp177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116238 word 0xf959ce89
  %r178.p = getelementptr inbounds i8, ptr %c, i64 160
  %r178 = load i64, ptr %r178.p, align 8, !alias.scope !3, !noalias !4
  %t179 = add i64 %r178, 13208
  %gmp180 = inttoptr i64 %t179 to ptr
  %gml181 = load i64, ptr %gmp180, align 1, !alias.scope !4, !noalias !3
  %wp182 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml181, ptr %wp182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011623c word 0x5400a009
  %r183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r183 = load i64, ptr %r183.p, align 8, !alias.scope !3, !noalias !4
  %fsh185 = lshr i64 %r183, 29
  %ftr186 = trunc i64 %fsh185 to i1
  %fsh187 = lshr i64 %r183, 30
  %ftr188 = trunc i64 %fsh187 to i1
  %fnz189 = xor i1 %ftr188, true
  %fhi190 = and i1 %ftr186, %fnz189
  %cond184 = xor i1 %fhi190, true
  br i1 %cond184, label %L_80011763c, label %L_800116240
L_800116240:
  ; @pc 0x800116240 word 0x5280e90b
  %c191 = zext i32 1864 to i64
  %wp192 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c191, ptr %wp192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116244 word 0xd2c002ec
  %wp193 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 98784247808, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116248 word 0x9b2b2549
  %r194.p = getelementptr inbounds i8, ptr %c, i64 80
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %c195 = trunc i64 %r194 to i32
  %c196 = sext i32 %c195 to i64
  %r197.p = getelementptr inbounds i8, ptr %c, i64 88
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %c198 = trunc i64 %r197 to i32
  %c199 = sext i32 %c198 to i64
  %t200 = mul i64 %c196, %c199
  %r201.p = getelementptr inbounds i8, ptr %c, i64 72
  %r201 = load i64, ptr %r201.p, align 8, !alias.scope !3, !noalias !4
  %t202 = add i64 %r201, %t200
  %wp203 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t202, ptr %wp203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011624c word 0x529fffef
  %c204 = zext i32 65535 to i64
  %wp205 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116250 word 0x9280000e
  %wp206 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 -1, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116254 word 0xb2607ff0
  %t207 = or i64 0, -4294967296
  %wp208 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t207, ptr %wp208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116258 word 0xa9007fec
  %r209.p = getelementptr inbounds i8, ptr %c, i64 256
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %t210 = add i64 %r209, 8
  %r211.p = getelementptr inbounds i8, ptr %c, i64 96
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %gmp212 = inttoptr i64 %r209 to ptr
  store i64 %r211, ptr %gmp212, align 1, !alias.scope !4, !noalias !3
  %gmp213 = inttoptr i64 %t210 to ptr
  store i64 0, ptr %gmp213, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011625c word 0xd2c0002c
  %wp214 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4294967296, ptr %wp214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116260 word 0xa9013bef
  %r215.p = getelementptr inbounds i8, ptr %c, i64 256
  %r215 = load i64, ptr %r215.p, align 8, !alias.scope !3, !noalias !4
  %t216 = add i64 %r215, 16
  %t217 = add i64 %t216, 8
  %r218.p = getelementptr inbounds i8, ptr %c, i64 120
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %gmp219 = inttoptr i64 %t216 to ptr
  store i64 %r218, ptr %gmp219, align 1, !alias.scope !4, !noalias !3
  %r220.p = getelementptr inbounds i8, ptr %c, i64 112
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %gmp221 = inttoptr i64 %t217 to ptr
  store i64 %r220, ptr %gmp221, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116264 word 0x1280000f
  %c222 = zext i32 -1 to i64
  %wp223 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c222, ptr %wp223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116268 word 0xb2091bea
  %t224 = or i64 0, 4575657222473777152
  %wp225 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t224, ptr %wp225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011626c word 0xa90243ec
  %r226.p = getelementptr inbounds i8, ptr %c, i64 256
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %t227 = add i64 %r226, 32
  %t228 = add i64 %t227, 8
  %r229.p = getelementptr inbounds i8, ptr %c, i64 96
  %r229 = load i64, ptr %r229.p, align 8, !alias.scope !3, !noalias !4
  %gmp230 = inttoptr i64 %t227 to ptr
  store i64 %r229, ptr %gmp230, align 1, !alias.scope !4, !noalias !3
  %r231.p = getelementptr inbounds i8, ptr %c, i64 128
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %gmp232 = inttoptr i64 %t228 to ptr
  store i64 %r231, ptr %gmp232, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116270 word 0x9107a129
  %r233.p = getelementptr inbounds i8, ptr %c, i64 72
  %r233 = load i64, ptr %r233.p, align 8, !alias.scope !3, !noalias !4
  %t234 = add i64 %r233, 488
  %wp235 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t234, ptr %wp235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116274 word 0x8b082137
  %r236.p = getelementptr inbounds i8, ptr %c, i64 72
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %r237.p = getelementptr inbounds i8, ptr %c, i64 64
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %t238 = shl i64 %r237, 8
  %t239 = add i64 %r236, %t238
  %wp240 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116278 word 0xb001c1a9
  %wp241 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419814400, ptr %wp241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011627c word 0xa9032bef
  %r242.p = getelementptr inbounds i8, ptr %c, i64 256
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %t243 = add i64 %r242, 48
  %t244 = add i64 %t243, 8
  %r245.p = getelementptr inbounds i8, ptr %c, i64 120
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %gmp246 = inttoptr i64 %t243 to ptr
  store i64 %r245, ptr %gmp246, align 1, !alias.scope !4, !noalias !3
  %r247.p = getelementptr inbounds i8, ptr %c, i64 80
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %gmp248 = inttoptr i64 %t244 to ptr
  store i64 %r247, ptr %gmp248, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116280 word 0x92b0100b
  %wp249 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 -2155872257, ptr %wp249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116284 word 0xf2efefeb
  %r250.p = getelementptr inbounds i8, ptr %c, i64 88
  %r250 = load i64, ptr %r250.p, align 8, !alias.scope !3, !noalias !4
  %t251 = and i64 %r250, 281474976710655
  %t252 = or i64 %t251, 9187061764859101184
  %wp253 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t252, ptr %wp253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116288 word 0xf001c22c
  %wp254 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419888128, ptr %wp254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011628c word 0x710086bf
  %r255.p = getelementptr inbounds i8, ptr %c, i64 168
  %r255 = load i64, ptr %r255.p, align 8, !alias.scope !3, !noalias !4
  %c256 = trunc i64 %r255 to i32
  %t257 = sub i32 %c256, 33
  %fn258 = icmp slt i32 %t257, 0
  %fz259 = icmp eq i32 %t257, 0
  %fc260 = icmp uge i32 %c256, 33
  %fx1261 = xor i32 %c256, 33
  %fx2262 = xor i32 %c256, %t257
  %fva263 = and i32 %fx1261, %fx2262
  %fv264 = icmp slt i32 %fva263, 0
  %nz265 = zext i1 %fn258 to i64
  %zz266 = zext i1 %fz259 to i64
  %cz267 = zext i1 %fc260 to i64
  %vz268 = zext i1 %fv264 to i64
  %ns269 = shl i64 %nz265, 31
  %zs270 = shl i64 %zz266, 30
  %cs271 = shl i64 %cz267, 29
  %vs272 = shl i64 %vz268, 28
  %nzor273 = or i64 %ns269, %zs270
  %cvor274 = or i64 %cs271, %vs272
  %nzcv275 = or i64 %nzor273, %cvor274
  %wp276 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv275, ptr %wp276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116290 word 0xa9047fea
  %r277.p = getelementptr inbounds i8, ptr %c, i64 256
  %r277 = load i64, ptr %r277.p, align 8, !alias.scope !3, !noalias !4
  %t278 = add i64 %r277, 64
  %t279 = add i64 %t278, 8
  %r280.p = getelementptr inbounds i8, ptr %c, i64 80
  %r280 = load i64, ptr %r280.p, align 8, !alias.scope !3, !noalias !4
  %gmp281 = inttoptr i64 %t278 to ptr
  store i64 %r280, ptr %gmp281, align 1, !alias.scope !4, !noalias !3
  %gmp282 = inttoptr i64 %t279 to ptr
  store i64 0, ptr %gmp282, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116294 word 0x9001c24a
  %wp283 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419892224, ptr %wp283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116298 word 0xf942254a
  %r284.p = getelementptr inbounds i8, ptr %c, i64 80
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %t285 = add i64 %r284, 1096
  %gmp286 = inttoptr i64 %t285 to ptr
  %gml287 = load i64, ptr %gmp286, align 1, !alias.scope !4, !noalias !3
  %wp288 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml287, ptr %wp288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011629c word 0xf945bd29
  %r289.p = getelementptr inbounds i8, ptr %c, i64 72
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %t290 = add i64 %r289, 2936
  %gmp291 = inttoptr i64 %t290 to ptr
  %gml292 = load i64, ptr %gmp291, align 1, !alias.scope !4, !noalias !3
  %wp293 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml292, ptr %wp293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162a0 word 0x91004148
  %r294.p = getelementptr inbounds i8, ptr %c, i64 80
  %r294 = load i64, ptr %r294.p, align 8, !alias.scope !3, !noalias !4
  %t295 = add i64 %r294, 16
  %wp296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t295, ptr %wp296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162a4 word 0xf9002be8
  %r297.p = getelementptr inbounds i8, ptr %c, i64 256
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 80
  %r299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %gmp300 = inttoptr i64 %t298 to ptr
  store i64 %r299, ptr %gmp300, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162a8 word 0xd2e7f008
  %wp301 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 4575657221408423936, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162ac word 0xf9003be9
  %r302.p = getelementptr inbounds i8, ptr %c, i64 256
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %t303 = add i64 %r302, 112
  %r304.p = getelementptr inbounds i8, ptr %c, i64 72
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %gmp305 = inttoptr i64 %t303 to ptr
  store i64 %r304, ptr %gmp305, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162b0 word 0xb2087be9
  %t306 = or i64 0, -36028797027352577
  %wp307 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t306, ptr %wp307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162b4 word 0xf946418c
  %r308.p = getelementptr inbounds i8, ptr %c, i64 96
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %t309 = add i64 %r308, 3200
  %gmp310 = inttoptr i64 %t309 to ptr
  %gml311 = load i64, ptr %gmp310, align 1, !alias.scope !4, !noalias !3
  %wp312 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml311, ptr %wp312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162b8 word 0x91004190
  %r313.p = getelementptr inbounds i8, ptr %c, i64 96
  %r313 = load i64, ptr %r313.p, align 8, !alias.scope !3, !noalias !4
  %t314 = add i64 %r313, 16
  %wp315 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t314, ptr %wp315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162bc word 0xa907a7eb
  %r316.p = getelementptr inbounds i8, ptr %c, i64 256
  %r316 = load i64, ptr %r316.p, align 8, !alias.scope !3, !noalias !4
  %t317 = add i64 %r316, 120
  %t318 = add i64 %t317, 8
  %r319.p = getelementptr inbounds i8, ptr %c, i64 88
  %r319 = load i64, ptr %r319.p, align 8, !alias.scope !3, !noalias !4
  %gmp320 = inttoptr i64 %t317 to ptr
  store i64 %r319, ptr %gmp320, align 1, !alias.scope !4, !noalias !3
  %r321.p = getelementptr inbounds i8, ptr %c, i64 72
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %gmp322 = inttoptr i64 %t318 to ptr
  store i64 %r321, ptr %gmp322, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162c0 word 0xf80a4308
  %r323.p = getelementptr inbounds i8, ptr %c, i64 192
  %r323 = load i64, ptr %r323.p, align 8, !alias.scope !3, !noalias !4
  %t324 = add i64 %r323, 164
  %r325.p = getelementptr inbounds i8, ptr %c, i64 64
  %r325 = load i64, ptr %r325.p, align 8, !alias.scope !3, !noalias !4
  %gmp326 = inttoptr i64 %t324 to ptr
  store i64 %r325, ptr %gmp326, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162c4 word 0xf001c228
  %wp327 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419888128, ptr %wp327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162c8 word 0xf945c908
  %r328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 2960
  %gmp330 = inttoptr i64 %t329 to ptr
  %gml331 = load i64, ptr %gmp330, align 1, !alias.scope !4, !noalias !3
  %wp332 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml331, ptr %wp332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162cc word 0xf9004fe9
  %r333.p = getelementptr inbounds i8, ptr %c, i64 256
  %r333 = load i64, ptr %r333.p, align 8, !alias.scope !3, !noalias !4
  %t334 = add i64 %r333, 152
  %r335.p = getelementptr inbounds i8, ptr %c, i64 72
  %r335 = load i64, ptr %r335.p, align 8, !alias.scope !3, !noalias !4
  %gmp336 = inttoptr i64 %t334 to ptr
  store i64 %r335, ptr %gmp336, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162d0 word 0xb9400108
  %r337.p = getelementptr inbounds i8, ptr %c, i64 64
  %r337 = load i64, ptr %r337.p, align 8, !alias.scope !3, !noalias !4
  %gmp338 = inttoptr i64 %r337 to ptr
  %gml339 = load i32, ptr %gmp338, align 1, !alias.scope !4, !noalias !3
  %c340 = zext i32 %gml339 to i64
  %wp341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c340, ptr %wp341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162d4 word 0xa908aff0
  %r342.p = getelementptr inbounds i8, ptr %c, i64 256
  %r342 = load i64, ptr %r342.p, align 8, !alias.scope !3, !noalias !4
  %t343 = add i64 %r342, 136
  %t344 = add i64 %t343, 8
  %r345.p = getelementptr inbounds i8, ptr %c, i64 128
  %r345 = load i64, ptr %r345.p, align 8, !alias.scope !3, !noalias !4
  %gmp346 = inttoptr i64 %t343 to ptr
  store i64 %r345, ptr %gmp346, align 1, !alias.scope !4, !noalias !3
  %r347.p = getelementptr inbounds i8, ptr %c, i64 88
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %gmp348 = inttoptr i64 %t344 to ptr
  store i64 %r347, ptr %gmp348, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162d8 word 0xf9005bff
  %r349.p = getelementptr inbounds i8, ptr %c, i64 256
  %r349 = load i64, ptr %r349.p, align 8, !alias.scope !3, !noalias !4
  %t350 = add i64 %r349, 176
  %gmp351 = inttoptr i64 %t350 to ptr
  store i64 0, ptr %gmp351, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162dc word 0x3902e3ff
  %r352.p = getelementptr inbounds i8, ptr %c, i64 256
  %r352 = load i64, ptr %r352.p, align 8, !alias.scope !3, !noalias !4
  %t353 = add i64 %r352, 184
  %c354 = trunc i32 0 to i8
  %gmp355 = inttoptr i64 %t353 to ptr
  store i8 %c354, ptr %gmp355, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162e0 word 0xb900bfff
  %r356.p = getelementptr inbounds i8, ptr %c, i64 256
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %t357 = add i64 %r356, 188
  %gmp358 = inttoptr i64 %t357 to ptr
  store i32 0, ptr %gmp358, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162e4 word 0xb900a3e8
  %r359.p = getelementptr inbounds i8, ptr %c, i64 256
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %t360 = add i64 %r359, 160
  %r361.p = getelementptr inbounds i8, ptr %c, i64 64
  %r361 = load i64, ptr %r361.p, align 8, !alias.scope !3, !noalias !4
  %c362 = trunc i64 %r361 to i32
  %gmp363 = inttoptr i64 %t360 to ptr
  store i32 %c362, ptr %gmp363, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001162e8 word 0x54006768
  %r364.p = getelementptr inbounds i8, ptr %c, i64 272
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %fsh366 = lshr i64 %r364, 29
  %ftr367 = trunc i64 %fsh366 to i1
  %fsh368 = lshr i64 %r364, 30
  %ftr369 = trunc i64 %fsh368 to i1
  %fnz370 = xor i1 %ftr369, true
  %cond365 = and i1 %ftr367, %fnz370
  br i1 %cond365, label %L_800116fd4, label %L_8001162ec_ft
L_80011631c:
  ; @pc 0x80011631c word 0x7959ca92
  %r410.p = getelementptr inbounds i8, ptr %c, i64 160
  %r410 = load i64, ptr %r410.p, align 8, !alias.scope !3, !noalias !4
  %t411 = add i64 %r410, 3300
  %gmp412 = inttoptr i64 %t411 to ptr
  %gml413 = load i16, ptr %gmp412, align 1, !alias.scope !4, !noalias !3
  %c414 = zext i16 %gml413 to i64
  %wp415 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c414, ptr %wp415, align 8, !alias.scope !3, !noalias !4
  br label %L_800116320
L_800116320:
  ; @pc 0x800116320 word 0x510006ad
  %r416.p = getelementptr inbounds i8, ptr %c, i64 168
  %r416 = load i64, ptr %r416.p, align 8, !alias.scope !3, !noalias !4
  %c417 = trunc i64 %r416 to i32
  %t418 = sub i32 %c417, 1
  %c419 = zext i32 %t418 to i64
  %wp420 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c419, ptr %wp420, align 8, !alias.scope !3, !noalias !4
  br label %L_800116324
L_800116324:
  ; @pc 0x800116324 word 0x9100414a
  %r421.p = getelementptr inbounds i8, ptr %c, i64 80
  %r421 = load i64, ptr %r421.p, align 8, !alias.scope !3, !noalias !4
  %t422 = add i64 %r421, 16
  %wp423 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t422, ptr %wp423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116328 word 0x3940226f
  %r424.p = getelementptr inbounds i8, ptr %c, i64 152
  %r424 = load i64, ptr %r424.p, align 8, !alias.scope !3, !noalias !4
  %t425 = add i64 %r424, 8
  %gmp426 = inttoptr i64 %t425 to ptr
  %gml427 = load i8, ptr %gmp426, align 1, !alias.scope !4, !noalias !3
  %c428 = zext i8 %gml427 to i64
  %wp429 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c428, ptr %wp429, align 8, !alias.scope !3, !noalias !4
  br label %L_80011632c
L_80011632c:
  ; @pc 0x80011632c word 0xa904abff
  %r430.p = getelementptr inbounds i8, ptr %c, i64 256
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %t431 = add i64 %r430, 72
  %t432 = add i64 %t431, 8
  %gmp433 = inttoptr i64 %t431 to ptr
  store i64 0, ptr %gmp433, align 1, !alias.scope !4, !noalias !3
  %r434.p = getelementptr inbounds i8, ptr %c, i64 80
  %r434 = load i64, ptr %r434.p, align 8, !alias.scope !3, !noalias !4
  %gmp435 = inttoptr i64 %t432 to ptr
  store i64 %r434, ptr %gmp435, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116330 word 0xb94dfe89
  %r436.p = getelementptr inbounds i8, ptr %c, i64 160
  %r436 = load i64, ptr %r436.p, align 8, !alias.scope !3, !noalias !4
  %t437 = add i64 %r436, 3580
  %gmp438 = inttoptr i64 %t437 to ptr
  %gml439 = load i32, ptr %gmp438, align 1, !alias.scope !4, !noalias !3
  %c440 = zext i32 %gml439 to i64
  %wp441 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c440, ptr %wp441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116334 word 0x110022aa
  %r442.p = getelementptr inbounds i8, ptr %c, i64 168
  %r442 = load i64, ptr %r442.p, align 8, !alias.scope !3, !noalias !4
  %c443 = trunc i64 %r442 to i32
  %t444 = add i32 %c443, 8
  %c445 = zext i32 %t444 to i64
  %wp446 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c445, ptr %wp446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116338 word 0x290637ea
  %r447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = add i64 %r447, 48
  %t449 = add i64 %t448, 4
  %r450.p = getelementptr inbounds i8, ptr %c, i64 80
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %c451 = trunc i64 %r450 to i32
  %gmp452 = inttoptr i64 %t448 to ptr
  store i32 %c451, ptr %gmp452, align 1, !alias.scope !4, !noalias !3
  %r453.p = getelementptr inbounds i8, ptr %c, i64 104
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %c454 = trunc i64 %r453 to i32
  %gmp455 = inttoptr i64 %t449 to ptr
  store i32 %c454, ptr %gmp455, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011633c word 0xb94d2290
  %r456.p = getelementptr inbounds i8, ptr %c, i64 160
  %r456 = load i64, ptr %r456.p, align 8, !alias.scope !3, !noalias !4
  %t457 = add i64 %r456, 3360
  %gmp458 = inttoptr i64 %t457 to ptr
  %gml459 = load i32, ptr %gmp458, align 1, !alias.scope !4, !noalias !3
  %c460 = zext i32 %gml459 to i64
  %wp461 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116340 word 0x5281760a
  %c462 = zext i32 2992 to i64
  %wp463 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c462, ptr %wp463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116344 word 0x9100418c
  %r464.p = getelementptr inbounds i8, ptr %c, i64 96
  %r464 = load i64, ptr %r464.p, align 8, !alias.scope !3, !noalias !4
  %t465 = add i64 %r464, 16
  %wp466 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t465, ptr %wp466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116348 word 0x7217025f
  %r467.p = getelementptr inbounds i8, ptr %c, i64 144
  %r467 = load i64, ptr %r467.p, align 8, !alias.scope !3, !noalias !4
  %c468 = trunc i64 %r467 to i32
  %t469 = and i32 %c468, 512
  %fn470 = icmp slt i32 %t469, 0
  %fz471 = icmp eq i32 %t469, 0
  %nz472 = zext i1 %fn470 to i64
  %zz473 = zext i1 %fz471 to i64
  %ns474 = shl i64 %nz472, 31
  %zs475 = shl i64 %zz473, 30
  %nzcv476 = or i64 %ns474, %zs475
  %wp477 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv476, ptr %wp477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011634c word 0x1acf2531
  %r478.p = getelementptr inbounds i8, ptr %c, i64 72
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %c479 = trunc i64 %r478 to i32
  %r480.p = getelementptr inbounds i8, ptr %c, i64 120
  %r480 = load i64, ptr %r480.p, align 8, !alias.scope !3, !noalias !4
  %c481 = trunc i64 %r480 to i32
  %t482 = and i32 %c481, 31
  %t483 = lshr i32 %c479, %t482
  %c484 = zext i32 %t483 to i64
  %wp485 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c484, ptr %wp485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116350 word 0x52800029
  %c486 = zext i32 1 to i64
  %wp487 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c486, ptr %wp487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116354 word 0x1a9f17e0
  %t488 = add i32 0, 1
  %r489.p = getelementptr inbounds i8, ptr %c, i64 272
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %fsh491 = lshr i64 %r489, 30
  %ftr492 = trunc i64 %fsh491 to i1
  %cond490 = xor i1 %ftr492, true
  %sel493 = select i1 %cond490, i32 0, i32 %t488
  %c494 = zext i32 %sel493 to i64
  %wp495 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c494, ptr %wp495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116358 word 0x1acd2121
  %r496.p = getelementptr inbounds i8, ptr %c, i64 72
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %c497 = trunc i64 %r496 to i32
  %r498.p = getelementptr inbounds i8, ptr %c, i64 104
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %c499 = trunc i64 %r498 to i32
  %t500 = and i32 %c499, 31
  %t501 = shl i32 %c497, %t500
  %c502 = zext i32 %t501 to i64
  %wp503 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c502, ptr %wp503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011635c word 0xf946968e
  %r504.p = getelementptr inbounds i8, ptr %c, i64 160
  %r504 = load i64, ptr %r504.p, align 8, !alias.scope !3, !noalias !4
  %t505 = add i64 %r504, 3368
  %gmp506 = inttoptr i64 %t505 to ptr
  %gml507 = load i64, ptr %gmp506, align 1, !alias.scope !4, !noalias !3
  %wp508 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml507, ptr %wp508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116360 word 0x6a00023f
  %r509.p = getelementptr inbounds i8, ptr %c, i64 0
  %r509 = load i64, ptr %r509.p, align 8, !alias.scope !3, !noalias !4
  %c510 = trunc i64 %r509 to i32
  %r511.p = getelementptr inbounds i8, ptr %c, i64 136
  %r511 = load i64, ptr %r511.p, align 8, !alias.scope !3, !noalias !4
  %c512 = trunc i64 %r511 to i32
  %t513 = and i32 %c512, %c510
  %fn514 = icmp slt i32 %t513, 0
  %fz515 = icmp eq i32 %t513, 0
  %nz516 = zext i1 %fn514 to i64
  %zz517 = zext i1 %fz515 to i64
  %ns518 = shl i64 %nz516, 31
  %zs519 = shl i64 %zz517, 30
  %nzcv520 = or i64 %ns518, %zs519
  %wp521 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv520, ptr %wp521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116364 word 0x528001f1
  %c522 = zext i32 15 to i64
  %wp523 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c522, ptr %wp523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116368 word 0x52800200
  %c524 = zext i32 16 to i64
  %wp525 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c524, ptr %wp525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011636c word 0x72a00400
  %r526.p = getelementptr inbounds i8, ptr %c, i64 0
  %r526 = load i64, ptr %r526.p, align 8, !alias.scope !3, !noalias !4
  %t527 = and i64 %r526, -4294901761
  %t528 = or i64 %t527, 2097152
  %c529 = trunc i64 %t528 to i32
  %c530 = zext i32 %c529 to i64
  %wp531 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116370 word 0x1a911031
  %r532.p = getelementptr inbounds i8, ptr %c, i64 8
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %c533 = trunc i64 %r532 to i32
  %r534.p = getelementptr inbounds i8, ptr %c, i64 136
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %c535 = trunc i64 %r534 to i32
  %r536.p = getelementptr inbounds i8, ptr %c, i64 272
  %r536 = load i64, ptr %r536.p, align 8, !alias.scope !3, !noalias !4
  %fsh538 = lshr i64 %r536, 30
  %ftr539 = trunc i64 %fsh538 to i1
  %cond537 = xor i1 %ftr539, true
  %sel540 = select i1 %cond537, i32 %c533, i32 %c535
  %c541 = zext i32 %sel540 to i64
  %wp542 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c541, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116374 word 0x6b0f021f
  %r543.p = getelementptr inbounds i8, ptr %c, i64 128
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %c544 = trunc i64 %r543 to i32
  %r545.p = getelementptr inbounds i8, ptr %c, i64 120
  %r545 = load i64, ptr %r545.p, align 8, !alias.scope !3, !noalias !4
  %c546 = trunc i64 %r545 to i32
  %t547 = sub i32 %c544, %c546
  %fn548 = icmp slt i32 %t547, 0
  %fz549 = icmp eq i32 %t547, 0
  %fc550 = icmp uge i32 %c544, %c546
  %fx1551 = xor i32 %c544, %c546
  %fx2552 = xor i32 %c544, %t547
  %fva553 = and i32 %fx1551, %fx2552
  %fv554 = icmp slt i32 %fva553, 0
  %nz555 = zext i1 %fn548 to i64
  %zz556 = zext i1 %fz549 to i64
  %cz557 = zext i1 %fc550 to i64
  %vz558 = zext i1 %fv554 to i64
  %ns559 = shl i64 %nz555, 31
  %zs560 = shl i64 %zz556, 30
  %cs561 = shl i64 %cz557, 29
  %vs562 = shl i64 %vz558, 28
  %nzor563 = or i64 %ns559, %zs560
  %cvor564 = or i64 %cs561, %vs562
  %nzcv565 = or i64 %nzor563, %cvor564
  %wp566 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv565, ptr %wp566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116378 word 0x9a9f81ef
  %r567.p = getelementptr inbounds i8, ptr %c, i64 120
  %r567 = load i64, ptr %r567.p, align 8, !alias.scope !3, !noalias !4
  %r568.p = getelementptr inbounds i8, ptr %c, i64 272
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %fsh570 = lshr i64 %r568, 29
  %ftr571 = trunc i64 %fsh570 to i1
  %fsh572 = lshr i64 %r568, 30
  %ftr573 = trunc i64 %fsh572 to i1
  %fnz574 = xor i1 %ftr573, true
  %cond569 = and i1 %ftr571, %fnz574
  %sel575 = select i1 %cond569, i64 %r567, i64 0
  %wp576 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %sel575, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011637c word 0x7212025f
  %r577.p = getelementptr inbounds i8, ptr %c, i64 144
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %c578 = trunc i64 %r577 to i32
  %t579 = and i32 %c578, 16384
  %fn580 = icmp slt i32 %t579, 0
  %fz581 = icmp eq i32 %t579, 0
  %nz582 = zext i1 %fn580 to i64
  %zz583 = zext i1 %fz581 to i64
  %ns584 = shl i64 %nz582, 31
  %zs585 = shl i64 %zz583, 30
  %nzcv586 = or i64 %ns584, %zs585
  %wp587 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv586, ptr %wp587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116380 word 0xf900037f
  %r588.p = getelementptr inbounds i8, ptr %c, i64 216
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %gmp589 = inttoptr i64 %r588 to ptr
  store i64 0, ptr %gmp589, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116384 word 0x52a00410
  %c590 = zext i32 2097152 to i64
  %wp591 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116388 word 0x12140252
  %r592.p = getelementptr inbounds i8, ptr %c, i64 144
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %c593 = trunc i64 %r592 to i32
  %t594 = and i32 %c593, 4096
  %c595 = zext i32 %t594 to i64
  %wp596 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c595, ptr %wp596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011638c word 0x9baa39ea
  %r597.p = getelementptr inbounds i8, ptr %c, i64 120
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %c598 = trunc i64 %r597 to i32
  %c599 = zext i32 %c598 to i64
  %r600.p = getelementptr inbounds i8, ptr %c, i64 80
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %c601 = trunc i64 %r600 to i32
  %c602 = zext i32 %c601 to i64
  %t603 = mul i64 %c599, %c602
  %r604.p = getelementptr inbounds i8, ptr %c, i64 112
  %r604 = load i64, ptr %r604.p, align 8, !alias.scope !3, !noalias !4
  %t605 = add i64 %r604, %t603
  %wp606 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t605, ptr %wp606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116390 word 0x1a900010
  %r607.p = getelementptr inbounds i8, ptr %c, i64 0
  %r607 = load i64, ptr %r607.p, align 8, !alias.scope !3, !noalias !4
  %c608 = trunc i64 %r607 to i32
  %r609.p = getelementptr inbounds i8, ptr %c, i64 128
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %c610 = trunc i64 %r609 to i32
  %r611.p = getelementptr inbounds i8, ptr %c, i64 272
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %fsh613 = lshr i64 %r611, 30
  %cond612 = trunc i64 %fsh613 to i1
  %sel614 = select i1 %cond612, i32 %c608, i32 %c610
  %c615 = zext i32 %sel614 to i64
  %wp616 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c615, ptr %wp616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116394 word 0x530c7e52
  %r617.p = getelementptr inbounds i8, ptr %c, i64 144
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %c618 = trunc i64 %r617 to i32
  %ror619 = call i32 @llvm.fshr.i32(i32 %c618, i32 %c618, i32 12)
  %t620 = and i32 %ror619, 1048575
  %c621 = zext i32 %t620 to i64
  %wp622 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c621, ptr %wp622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116398 word 0x330e0250
  %r623.p = getelementptr inbounds i8, ptr %c, i64 144
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %c624 = trunc i64 %r623 to i32
  %ror625 = call i32 @llvm.fshr.i32(i32 %c624, i32 %c624, i32 14)
  %r626.p = getelementptr inbounds i8, ptr %c, i64 128
  %r626 = load i64, ptr %r626.p, align 8, !alias.scope !3, !noalias !4
  %c627 = trunc i64 %r626 to i32
  %t628 = and i32 %ror625, 262144
  %t629 = and i32 %c627, -262145
  %t630 = or i32 %t629, %t628
  %t631 = and i32 %t630, 524287
  %t632 = and i32 %c627, -524288
  %t633 = or i32 %t632, %t631
  %c634 = zext i32 %t633 to i64
  %wp635 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c634, ptr %wp635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011639c word 0x52800100
  %c636 = zext i32 8 to i64
  %wp637 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c636, ptr %wp637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163a0 word 0x110012b2
  %r638.p = getelementptr inbounds i8, ptr %c, i64 168
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %c639 = trunc i64 %r638 to i32
  %t640 = add i32 %c639, 4
  %c641 = zext i32 %t640 to i64
  %wp642 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c641, ptr %wp642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163a4 word 0x290003f1
  %r643.p = getelementptr inbounds i8, ptr %c, i64 256
  %r643 = load i64, ptr %r643.p, align 8, !alias.scope !3, !noalias !4
  %t644 = add i64 %r643, 4
  %r645.p = getelementptr inbounds i8, ptr %c, i64 136
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %c646 = trunc i64 %r645 to i32
  %gmp647 = inttoptr i64 %r643 to ptr
  store i32 %c646, ptr %gmp647, align 1, !alias.scope !4, !noalias !3
  %r648.p = getelementptr inbounds i8, ptr %c, i64 0
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %c649 = trunc i64 %r648 to i32
  %gmp650 = inttoptr i64 %t644 to ptr
  store i32 %c649, ptr %gmp650, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163a8 word 0x929fffb1
  %wp651 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 -65534, ptr %wp651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163ac word 0x290143f2
  %r652.p = getelementptr inbounds i8, ptr %c, i64 256
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %t653 = add i64 %r652, 8
  %t654 = add i64 %t653, 4
  %r655.p = getelementptr inbounds i8, ptr %c, i64 144
  %r655 = load i64, ptr %r655.p, align 8, !alias.scope !3, !noalias !4
  %c656 = trunc i64 %r655 to i32
  %gmp657 = inttoptr i64 %t653 to ptr
  store i32 %c656, ptr %gmp657, align 1, !alias.scope !4, !noalias !3
  %r658.p = getelementptr inbounds i8, ptr %c, i64 128
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %c659 = trunc i64 %r658 to i32
  %gmp660 = inttoptr i64 %t654 to ptr
  store i32 %c659, ptr %gmp660, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163b0 word 0x529ffff0
  %c661 = zext i32 65535 to i64
  %wp662 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c661, ptr %wp662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163b4 word 0xf2a00011
  %r663.p = getelementptr inbounds i8, ptr %c, i64 136
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %t664 = and i64 %r663, -4294901761
  %t665 = or i64 %t664, 0
  %wp666 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t665, ptr %wp666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163b8 word 0xa90147f0
  %r667.p = getelementptr inbounds i8, ptr %c, i64 256
  %r667 = load i64, ptr %r667.p, align 8, !alias.scope !3, !noalias !4
  %t668 = add i64 %r667, 16
  %t669 = add i64 %t668, 8
  %r670.p = getelementptr inbounds i8, ptr %c, i64 128
  %r670 = load i64, ptr %r670.p, align 8, !alias.scope !3, !noalias !4
  %gmp671 = inttoptr i64 %t668 to ptr
  store i64 %r670, ptr %gmp671, align 1, !alias.scope !4, !noalias !3
  %r672.p = getelementptr inbounds i8, ptr %c, i64 136
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %gmp673 = inttoptr i64 %t669 to ptr
  store i64 %r672, ptr %gmp673, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163bc word 0xd2c00030
  %wp674 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4294967296, ptr %wp674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163c0 word 0xb2607ff1
  %t675 = or i64 0, -4294967296
  %wp676 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t675, ptr %wp676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163c4 word 0xd2e7f012
  %wp677 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 4575657221408423936, ptr %wp677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163c8 word 0xa90247f0
  %r678.p = getelementptr inbounds i8, ptr %c, i64 256
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %t679 = add i64 %r678, 32
  %t680 = add i64 %t679, 8
  %r681.p = getelementptr inbounds i8, ptr %c, i64 128
  %r681 = load i64, ptr %r681.p, align 8, !alias.scope !3, !noalias !4
  %gmp682 = inttoptr i64 %t679 to ptr
  store i64 %r681, ptr %gmp682, align 1, !alias.scope !4, !noalias !3
  %r683.p = getelementptr inbounds i8, ptr %c, i64 136
  %r683 = load i64, ptr %r683.p, align 8, !alias.scope !3, !noalias !4
  %gmp684 = inttoptr i64 %t680 to ptr
  store i64 %r683, ptr %gmp684, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163cc word 0xb2091bf0
  %t685 = or i64 0, 4575657222473777152
  %wp686 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t685, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163d0 word 0xa903c3f0
  %r687.p = getelementptr inbounds i8, ptr %c, i64 256
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %t688 = add i64 %r687, 56
  %t689 = add i64 %t688, 8
  %r690.p = getelementptr inbounds i8, ptr %c, i64 128
  %r690 = load i64, ptr %r690.p, align 8, !alias.scope !3, !noalias !4
  %gmp691 = inttoptr i64 %t688 to ptr
  store i64 %r690, ptr %gmp691, align 1, !alias.scope !4, !noalias !3
  %r692.p = getelementptr inbounds i8, ptr %c, i64 128
  %r692 = load i64, ptr %r692.p, align 8, !alias.scope !3, !noalias !4
  %gmp693 = inttoptr i64 %t689 to ptr
  store i64 %r692, ptr %gmp693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163d4 word 0xd0015d70
  %wp694 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 34406678528, ptr %wp694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163d8 word 0x910dee10
  %r695.p = getelementptr inbounds i8, ptr %c, i64 128
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %t696 = add i64 %r695, 891
  %wp697 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t696, ptr %wp697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163dc word 0xb2087bf1
  %t698 = or i64 0, -36028797027352577
  %wp699 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t698, ptr %wp699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001163e0 word 0xf80a4312
  %r700.p = getelementptr inbounds i8, ptr %c, i64 192
  %r700 = load i64, ptr %r700.p, align 8, !alias.scope !3, !noalias !4
  %t701 = add i64 %r700, 164
  %r702.p = getelementptr inbounds i8, ptr %c, i64 144
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %gmp703 = inttoptr i64 %t701 to ptr
  store i64 %r702, ptr %gmp703, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163e4 word 0xa907c7eb
  %r704.p = getelementptr inbounds i8, ptr %c, i64 256
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %t705 = add i64 %r704, 120
  %t706 = add i64 %t705, 8
  %r707.p = getelementptr inbounds i8, ptr %c, i64 88
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %gmp708 = inttoptr i64 %t705 to ptr
  store i64 %r707, ptr %gmp708, align 1, !alias.scope !4, !noalias !3
  %r709.p = getelementptr inbounds i8, ptr %c, i64 136
  %r709 = load i64, ptr %r709.p, align 8, !alias.scope !3, !noalias !4
  %gmp710 = inttoptr i64 %t706 to ptr
  store i64 %r709, ptr %gmp710, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163e8 word 0xf9004ff1
  %r711.p = getelementptr inbounds i8, ptr %c, i64 256
  %r711 = load i64, ptr %r711.p, align 8, !alias.scope !3, !noalias !4
  %t712 = add i64 %r711, 152
  %r713.p = getelementptr inbounds i8, ptr %c, i64 136
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %gmp714 = inttoptr i64 %t712 to ptr
  store i64 %r713, ptr %gmp714, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163ec word 0xa908afec
  %r715.p = getelementptr inbounds i8, ptr %c, i64 256
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %t716 = add i64 %r715, 136
  %t717 = add i64 %t716, 8
  %r718.p = getelementptr inbounds i8, ptr %c, i64 96
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %gmp719 = inttoptr i64 %t716 to ptr
  store i64 %r718, ptr %gmp719, align 1, !alias.scope !4, !noalias !3
  %r720.p = getelementptr inbounds i8, ptr %c, i64 88
  %r720 = load i64, ptr %r720.p, align 8, !alias.scope !3, !noalias !4
  %gmp721 = inttoptr i64 %t717 to ptr
  store i64 %r720, ptr %gmp721, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163f0 word 0x3900237f
  %r722.p = getelementptr inbounds i8, ptr %c, i64 216
  %r722 = load i64, ptr %r722.p, align 8, !alias.scope !3, !noalias !4
  %t723 = add i64 %r722, 8
  %c724 = trunc i32 0 to i8
  %gmp725 = inttoptr i64 %t723 to ptr
  store i8 %c724, ptr %gmp725, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163f4 word 0xb900a3e8
  %r726.p = getelementptr inbounds i8, ptr %c, i64 256
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %t727 = add i64 %r726, 160
  %r728.p = getelementptr inbounds i8, ptr %c, i64 64
  %r728 = load i64, ptr %r728.p, align 8, !alias.scope !3, !noalias !4
  %c729 = trunc i64 %r728 to i32
  %gmp730 = inttoptr i64 %t727 to ptr
  store i32 %c729, ptr %gmp730, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163f8 word 0xb900bfff
  %r731.p = getelementptr inbounds i8, ptr %c, i64 256
  %r731 = load i64, ptr %r731.p, align 8, !alias.scope !3, !noalias !4
  %t732 = add i64 %r731, 188
  %gmp733 = inttoptr i64 %t732 to ptr
  store i32 0, ptr %gmp733, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001163fc word 0xa905ffff
  %r734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %t735 = add i64 %r734, 88
  %t736 = add i64 %t735, 8
  %gmp737 = inttoptr i64 %t735 to ptr
  store i64 0, ptr %gmp737, align 1, !alias.scope !4, !noalias !3
  %gmp738 = inttoptr i64 %t736 to ptr
  store i64 0, ptr %gmp738, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116400 word 0xa906c3ff
  %r739.p = getelementptr inbounds i8, ptr %c, i64 256
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %t740 = add i64 %r739, 104
  %t741 = add i64 %t740, 8
  %gmp742 = inttoptr i64 %t740 to ptr
  store i64 0, ptr %gmp742, align 1, !alias.scope !4, !noalias !3
  %r743.p = getelementptr inbounds i8, ptr %c, i64 128
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %gmp744 = inttoptr i64 %t741 to ptr
  store i64 %r743, ptr %gmp744, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116404 word 0xb943d94b
  %r745.p = getelementptr inbounds i8, ptr %c, i64 80
  %r745 = load i64, ptr %r745.p, align 8, !alias.scope !3, !noalias !4
  %t746 = add i64 %r745, 984
  %gmp747 = inttoptr i64 %t746 to ptr
  %gml748 = load i32, ptr %gmp747, align 1, !alias.scope !4, !noalias !3
  %c749 = zext i32 %gml748 to i64
  %wp750 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c749, ptr %wp750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116408 word 0xb943f94c
  %r751.p = getelementptr inbounds i8, ptr %c, i64 80
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %t752 = add i64 %r751, 1016
  %gmp753 = inttoptr i64 %t752 to ptr
  %gml754 = load i32, ptr %gmp753, align 1, !alias.scope !4, !noalias !3
  %c755 = zext i32 %gml754 to i64
  %wp756 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c755, ptr %wp756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011640c word 0x0aab7d6d
  %r757.p = getelementptr inbounds i8, ptr %c, i64 88
  %r757 = load i64, ptr %r757.p, align 8, !alias.scope !3, !noalias !4
  %c758 = trunc i64 %r757 to i32
  %t759 = ashr i32 %c758, 31
  %t760 = xor i32 %t759, -1
  %r761.p = getelementptr inbounds i8, ptr %c, i64 88
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %c762 = trunc i64 %r761 to i32
  %t763 = and i32 %c762, %t760
  %c764 = zext i32 %t763 to i64
  %wp765 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c764, ptr %wp765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116410 word 0x0a8b7d6b
  %r766.p = getelementptr inbounds i8, ptr %c, i64 88
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %c767 = trunc i64 %r766 to i32
  %t768 = ashr i32 %c767, 31
  %r769.p = getelementptr inbounds i8, ptr %c, i64 88
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %c770 = trunc i64 %r769 to i32
  %t771 = and i32 %c770, %t768
  %c772 = zext i32 %t771 to i64
  %wp773 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c772, ptr %wp773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116414 word 0x1e220161
  %r774.p = getelementptr inbounds i8, ptr %c, i64 88
  %r774 = load i64, ptr %r774.p, align 8, !alias.scope !3, !noalias !4
  %c775 = trunc i64 %r774 to i32
  %c776 = zext i32 %c775 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 1, i64 %c776, i32 32, i32 0, i32 0)
  ; @pc 0x800116418 word 0x0aac7d8b
  %r777.p = getelementptr inbounds i8, ptr %c, i64 96
  %r777 = load i64, ptr %r777.p, align 8, !alias.scope !3, !noalias !4
  %c778 = trunc i64 %r777 to i32
  %t779 = ashr i32 %c778, 31
  %t780 = xor i32 %t779, -1
  %r781.p = getelementptr inbounds i8, ptr %c, i64 96
  %r781 = load i64, ptr %r781.p, align 8, !alias.scope !3, !noalias !4
  %c782 = trunc i64 %r781 to i32
  %t783 = and i32 %c782, %t780
  %c784 = zext i32 %t783 to i64
  %wp785 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c784, ptr %wp785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011641c word 0x1e220162
  %r786.p = getelementptr inbounds i8, ptr %c, i64 88
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %c787 = trunc i64 %r786 to i32
  %c788 = zext i32 %c787 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 2, i64 %c788, i32 32, i32 0, i32 0)
  ; @pc 0x800116420 word 0x0a8c7d8b
  %r789.p = getelementptr inbounds i8, ptr %c, i64 96
  %r789 = load i64, ptr %r789.p, align 8, !alias.scope !3, !noalias !4
  %c790 = trunc i64 %r789 to i32
  %t791 = ashr i32 %c790, 31
  %r792.p = getelementptr inbounds i8, ptr %c, i64 96
  %r792 = load i64, ptr %r792.p, align 8, !alias.scope !3, !noalias !4
  %c793 = trunc i64 %r792 to i32
  %t794 = and i32 %c793, %t791
  %c795 = zext i32 %t794 to i64
  %wp796 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c795, ptr %wp796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116424 word 0x1e2201a0
  %r797.p = getelementptr inbounds i8, ptr %c, i64 104
  %r797 = load i64, ptr %r797.p, align 8, !alias.scope !3, !noalias !4
  %c798 = trunc i64 %r797 to i32
  %c799 = zext i32 %c798 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 0, i64 %c799, i32 32, i32 0, i32 0)
  ; @pc 0x800116428 word 0x2d100be0
  %r800.p = getelementptr inbounds i8, ptr %c, i64 256
  %r800 = load i64, ptr %r800.p, align 8, !alias.scope !3, !noalias !4
  %t801 = add i64 %r800, 128
  %t802 = add i64 %t801, 4
  %r803.p = getelementptr inbounds i8, ptr %c, i64 512
  %r803 = load i128, ptr %r803.p, align 16, !alias.scope !3, !noalias !4
  %r804.p = getelementptr inbounds i8, ptr %c, i64 544
  %r804 = load i128, ptr %r804.p, align 16, !alias.scope !3, !noalias !4
  %c805 = trunc i128 %r803 to i32
  %c806 = trunc i128 %r804 to i32
  %gmp807 = inttoptr i64 %t801 to ptr
  store i32 %c805, ptr %gmp807, align 1, !alias.scope !4, !noalias !3
  %gmp808 = inttoptr i64 %t802 to ptr
  store i32 %c806, ptr %gmp808, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011642c word 0x1e220163
  %r809.p = getelementptr inbounds i8, ptr %c, i64 88
  %r809 = load i64, ptr %r809.p, align 8, !alias.scope !3, !noalias !4
  %c810 = trunc i64 %r809 to i32
  %c811 = zext i32 %c810 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 3, i64 %c811, i32 32, i32 0, i32 0)
  ; @pc 0x800116430 word 0x2d0f0fe1
  %r812.p = getelementptr inbounds i8, ptr %c, i64 256
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %t813 = add i64 %r812, 120
  %t814 = add i64 %t813, 4
  %r815.p = getelementptr inbounds i8, ptr %c, i64 528
  %r815 = load i128, ptr %r815.p, align 16, !alias.scope !3, !noalias !4
  %r816.p = getelementptr inbounds i8, ptr %c, i64 560
  %r816 = load i128, ptr %r816.p, align 16, !alias.scope !3, !noalias !4
  %c817 = trunc i128 %r815 to i32
  %c818 = trunc i128 %r816 to i32
  %gmp819 = inttoptr i64 %t813 to ptr
  store i32 %c817, ptr %gmp819, align 1, !alias.scope !4, !noalias !3
  %gmp820 = inttoptr i64 %t814 to ptr
  store i32 %c818, ptr %gmp820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116434 word 0xb943d94b
  %r821.p = getelementptr inbounds i8, ptr %c, i64 80
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %t822 = add i64 %r821, 984
  %gmp823 = inttoptr i64 %t822 to ptr
  %gml824 = load i32, ptr %gmp823, align 1, !alias.scope !4, !noalias !3
  %c825 = zext i32 %gml824 to i64
  %wp826 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c825, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116438 word 0xb943f94c
  %r827.p = getelementptr inbounds i8, ptr %c, i64 80
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %t828 = add i64 %r827, 1016
  %gmp829 = inttoptr i64 %t828 to ptr
  %gml830 = load i32, ptr %gmp829, align 1, !alias.scope !4, !noalias !3
  %c831 = zext i32 %gml830 to i64
  %wp832 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c831, ptr %wp832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011643c word 0xb900a3e8
  %r833.p = getelementptr inbounds i8, ptr %c, i64 256
  %r833 = load i64, ptr %r833.p, align 8, !alias.scope !3, !noalias !4
  %t834 = add i64 %r833, 160
  %r835.p = getelementptr inbounds i8, ptr %c, i64 64
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %c836 = trunc i64 %r835 to i32
  %gmp837 = inttoptr i64 %t834 to ptr
  store i32 %c836, ptr %gmp837, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116440 word 0xf80a4312
  %r838.p = getelementptr inbounds i8, ptr %c, i64 192
  %r838 = load i64, ptr %r838.p, align 8, !alias.scope !3, !noalias !4
  %t839 = add i64 %r838, 164
  %r840.p = getelementptr inbounds i8, ptr %c, i64 144
  %r840 = load i64, ptr %r840.p, align 8, !alias.scope !3, !noalias !4
  %gmp841 = inttoptr i64 %t839 to ptr
  store i64 %r840, ptr %gmp841, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116444 word 0x0aab7d6d
  %r842.p = getelementptr inbounds i8, ptr %c, i64 88
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %c843 = trunc i64 %r842 to i32
  %t844 = ashr i32 %c843, 31
  %t845 = xor i32 %t844, -1
  %r846.p = getelementptr inbounds i8, ptr %c, i64 88
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %c847 = trunc i64 %r846 to i32
  %t848 = and i32 %c847, %t845
  %c849 = zext i32 %t848 to i64
  %wp850 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c849, ptr %wp850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116448 word 0x0a8b7d6b
  %r851.p = getelementptr inbounds i8, ptr %c, i64 88
  %r851 = load i64, ptr %r851.p, align 8, !alias.scope !3, !noalias !4
  %c852 = trunc i64 %r851 to i32
  %t853 = ashr i32 %c852, 31
  %r854.p = getelementptr inbounds i8, ptr %c, i64 88
  %r854 = load i64, ptr %r854.p, align 8, !alias.scope !3, !noalias !4
  %c855 = trunc i64 %r854 to i32
  %t856 = and i32 %c855, %t853
  %c857 = zext i32 %t856 to i64
  %wp858 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c857, ptr %wp858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011644c word 0x1e220161
  %r859.p = getelementptr inbounds i8, ptr %c, i64 88
  %r859 = load i64, ptr %r859.p, align 8, !alias.scope !3, !noalias !4
  %c860 = trunc i64 %r859 to i32
  %c861 = zext i32 %c860 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 1, i64 %c861, i32 32, i32 0, i32 0)
  ; @pc 0x800116450 word 0x0aac7d8b
  %r862.p = getelementptr inbounds i8, ptr %c, i64 96
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %c863 = trunc i64 %r862 to i32
  %t864 = ashr i32 %c863, 31
  %t865 = xor i32 %t864, -1
  %r866.p = getelementptr inbounds i8, ptr %c, i64 96
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %c867 = trunc i64 %r866 to i32
  %t868 = and i32 %c867, %t865
  %c869 = zext i32 %t868 to i64
  %wp870 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c869, ptr %wp870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116454 word 0x1e2201a0
  %r871.p = getelementptr inbounds i8, ptr %c, i64 104
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %c872 = trunc i64 %r871 to i32
  %c873 = zext i32 %c872 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 0, i64 %c873, i32 32, i32 0, i32 0)
  ; @pc 0x800116458 word 0x1e220162
  %r874.p = getelementptr inbounds i8, ptr %c, i64 88
  %r874 = load i64, ptr %r874.p, align 8, !alias.scope !3, !noalias !4
  %c875 = trunc i64 %r874 to i32
  %c876 = zext i32 %c875 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 2, i64 %c876, i32 32, i32 0, i32 0)
  ; @pc 0x80011645c word 0x0a8c7d8b
  %r877.p = getelementptr inbounds i8, ptr %c, i64 96
  %r877 = load i64, ptr %r877.p, align 8, !alias.scope !3, !noalias !4
  %c878 = trunc i64 %r877 to i32
  %t879 = ashr i32 %c878, 31
  %r880.p = getelementptr inbounds i8, ptr %c, i64 96
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %c881 = trunc i64 %r880 to i32
  %t882 = and i32 %c881, %t879
  %c883 = zext i32 %t882 to i64
  %wp884 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116460 word 0x1e220163
  %r885.p = getelementptr inbounds i8, ptr %c, i64 88
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %c886 = trunc i64 %r885 to i32
  %c887 = zext i32 %c886 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 3, i64 %c887, i32 32, i32 0, i32 0)
  ; @pc 0x800116464 word 0x2d130be0
  %r888.p = getelementptr inbounds i8, ptr %c, i64 256
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %t889 = add i64 %r888, 152
  %t890 = add i64 %t889, 4
  %r891.p = getelementptr inbounds i8, ptr %c, i64 512
  %r891 = load i128, ptr %r891.p, align 16, !alias.scope !3, !noalias !4
  %r892.p = getelementptr inbounds i8, ptr %c, i64 544
  %r892 = load i128, ptr %r892.p, align 16, !alias.scope !3, !noalias !4
  %c893 = trunc i128 %r891 to i32
  %c894 = trunc i128 %r892 to i32
  %gmp895 = inttoptr i64 %t889 to ptr
  store i32 %c893, ptr %gmp895, align 1, !alias.scope !4, !noalias !3
  %gmp896 = inttoptr i64 %t890 to ptr
  store i32 %c894, ptr %gmp896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116468 word 0x2d120fe1
  %r897.p = getelementptr inbounds i8, ptr %c, i64 256
  %r897 = load i64, ptr %r897.p, align 8, !alias.scope !3, !noalias !4
  %t898 = add i64 %r897, 144
  %t899 = add i64 %t898, 4
  %r900.p = getelementptr inbounds i8, ptr %c, i64 528
  %r900 = load i128, ptr %r900.p, align 16, !alias.scope !3, !noalias !4
  %r901.p = getelementptr inbounds i8, ptr %c, i64 560
  %r901 = load i128, ptr %r901.p, align 16, !alias.scope !3, !noalias !4
  %c902 = trunc i128 %r900 to i32
  %c903 = trunc i128 %r901 to i32
  %gmp904 = inttoptr i64 %t898 to ptr
  store i32 %c902, ptr %gmp904, align 1, !alias.scope !4, !noalias !3
  %gmp905 = inttoptr i64 %t899 to ptr
  store i32 %c903, ptr %gmp905, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011646c word 0x39516148
  %r906.p = getelementptr inbounds i8, ptr %c, i64 80
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %t907 = add i64 %r906, 1112
  %gmp908 = inttoptr i64 %t907 to ptr
  %gml909 = load i8, ptr %gmp908, align 1, !alias.scope !4, !noalias !3
  %c910 = zext i8 %gml909 to i64
  %wp911 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116470 word 0x52800b6a
  %c912 = zext i32 91 to i64
  %wp913 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c912, ptr %wp913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116474 word 0xf9005bff
  %r914.p = getelementptr inbounds i8, ptr %c, i64 256
  %r914 = load i64, ptr %r914.p, align 8, !alias.scope !3, !noalias !4
  %t915 = add i64 %r914, 176
  %gmp916 = inttoptr i64 %t915 to ptr
  store i64 0, ptr %gmp916, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116478 word 0xb900bfe9
  %r917.p = getelementptr inbounds i8, ptr %c, i64 256
  %r917 = load i64, ptr %r917.p, align 8, !alias.scope !3, !noalias !4
  %t918 = add i64 %r917, 188
  %r919.p = getelementptr inbounds i8, ptr %c, i64 72
  %r919 = load i64, ptr %r919.p, align 8, !alias.scope !3, !noalias !4
  %c920 = trunc i64 %r919 to i32
  %gmp921 = inttoptr i64 %t918 to ptr
  store i32 %c920, ptr %gmp921, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011647c word 0x7100011f
  %r922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %c923 = trunc i64 %r922 to i32
  %t924 = sub i32 %c923, 0
  %fn925 = icmp slt i32 %t924, 0
  %fz926 = icmp eq i32 %t924, 0
  %fc927 = icmp uge i32 %c923, 0
  %fx1928 = xor i32 %c923, 0
  %fx2929 = xor i32 %c923, %t924
  %fva930 = and i32 %fx1928, %fx2929
  %fv931 = icmp slt i32 %fva930, 0
  %nz932 = zext i1 %fn925 to i64
  %zz933 = zext i1 %fz926 to i64
  %cz934 = zext i1 %fc927 to i64
  %vz935 = zext i1 %fv931 to i64
  %ns936 = shl i64 %nz932, 31
  %zs937 = shl i64 %zz933, 30
  %cs938 = shl i64 %cz934, 29
  %vs939 = shl i64 %vz935, 28
  %nzor940 = or i64 %ns936, %zs937
  %cvor941 = or i64 %cs938, %vs939
  %nzcv942 = or i64 %nzor940, %cvor941
  %wp943 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv942, ptr %wp943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116480 word 0x52800b28
  %c944 = zext i32 89 to i64
  %wp945 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c944, ptr %wp945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116484 word 0x1a880148
  %r946.p = getelementptr inbounds i8, ptr %c, i64 80
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %c947 = trunc i64 %r946 to i32
  %r948.p = getelementptr inbounds i8, ptr %c, i64 64
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %c949 = trunc i64 %r948 to i32
  %r950.p = getelementptr inbounds i8, ptr %c, i64 272
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %fsh952 = lshr i64 %r950, 30
  %cond951 = trunc i64 %fsh952 to i1
  %sel953 = select i1 %cond951, i32 %c947, i32 %c949
  %c954 = zext i32 %sel953 to i64
  %wp955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c954, ptr %wp955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116488 word 0x140002d2
  br label %L_800116fd0
L_80011648c:
  ; @pc 0x80011648c word 0xd00162a8
  %wp956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34407366656, ptr %wp956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116490 word 0x91262108
  %r957.p = getelementptr inbounds i8, ptr %c, i64 64
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %t958 = add i64 %r957, 2440
  %wp959 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116494 word 0x937d7ea9
  %r960.p = getelementptr inbounds i8, ptr %c, i64 168
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %ror961 = call i64 @llvm.fshr.i64(i64 %r960, i64 %r960, i64 61)
  %t962 = lshr i64 %r960, 31
  %t963 = and i64 %t962, 1
  %t964 = sub i64 0, %t963
  %t965 = and i64 %t964, -34359738368
  %t966 = and i64 %ror961, 34359738360
  %t967 = or i64 %t965, %t966
  %wp968 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t967, ptr %wp968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116498 word 0xf8696908
  %r969.p = getelementptr inbounds i8, ptr %c, i64 64
  %r969 = load i64, ptr %r969.p, align 8, !alias.scope !3, !noalias !4
  %r970.p = getelementptr inbounds i8, ptr %c, i64 72
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r969, %r970
  %gmp972 = inttoptr i64 %t971 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %wp974 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml973, ptr %wp974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011649c word 0x17ffff63
  br label %L_800116228
L_8001164a0:
  ; @pc 0x8001164a0 word 0x5280010d
  %c975 = zext i32 8 to i64
  %wp976 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c975, ptr %wp976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164a4 word 0xd2e0080e
  %wp977 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164a8 word 0x529fffef
  %c978 = zext i32 65535 to i64
  %wp979 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c978, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164ac word 0xa9003bed
  %r980.p = getelementptr inbounds i8, ptr %c, i64 256
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %t981 = add i64 %r980, 8
  %r982.p = getelementptr inbounds i8, ptr %c, i64 104
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %gmp983 = inttoptr i64 %r980 to ptr
  store i64 %r982, ptr %gmp983, align 1, !alias.scope !4, !noalias !3
  %r984.p = getelementptr inbounds i8, ptr %c, i64 112
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %gmp985 = inttoptr i64 %t981 to ptr
  store i64 %r984, ptr %gmp985, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164b0 word 0xb2608fed
  %t986 = or i64 0, -4294967281
  %wp987 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t986, ptr %wp987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164b4 word 0xa90137ef
  %r988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %t989 = add i64 %r988, 16
  %t990 = add i64 %t989, 8
  %r991.p = getelementptr inbounds i8, ptr %c, i64 120
  %r991 = load i64, ptr %r991.p, align 8, !alias.scope !3, !noalias !4
  %gmp992 = inttoptr i64 %t989 to ptr
  store i64 %r991, ptr %gmp992, align 1, !alias.scope !4, !noalias !3
  %r993.p = getelementptr inbounds i8, ptr %c, i64 104
  %r993 = load i64, ptr %r993.p, align 8, !alias.scope !3, !noalias !4
  %gmp994 = inttoptr i64 %t990 to ptr
  store i64 %r993, ptr %gmp994, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164b8 word 0xd2c0002d
  %wp995 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164bc word 0xb2607fee
  %t996 = or i64 0, -4294967296
  %wp997 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t996, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164c0 word 0xa9023bed
  %r998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %t999 = add i64 %r998, 32
  %t1000 = add i64 %t999, 8
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %gmp1002 = inttoptr i64 %t999 to ptr
  store i64 %r1001, ptr %gmp1002, align 1, !alias.scope !4, !noalias !3
  %r1003.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1003 = load i64, ptr %r1003.p, align 8, !alias.scope !3, !noalias !4
  %gmp1004 = inttoptr i64 %t1000 to ptr
  store i64 %r1003, ptr %gmp1004, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164c4 word 0x1280000d
  %c1005 = zext i32 -1 to i64
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1005, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164c8 word 0xb2091bee
  %t1007 = or i64 0, 4575657222473777152
  %wp1008 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1007, ptr %wp1008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164cc word 0xa9033bed
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %t1010 = add i64 %r1009, 48
  %t1011 = add i64 %t1010, 8
  %r1012.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1012 = load i64, ptr %r1012.p, align 8, !alias.scope !3, !noalias !4
  %gmp1013 = inttoptr i64 %t1010 to ptr
  store i64 %r1012, ptr %gmp1013, align 1, !alias.scope !4, !noalias !3
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %gmp1015 = inttoptr i64 %t1011 to ptr
  store i64 %r1014, ptr %gmp1015, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164d0 word 0xf0015ded
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406748160, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164d4 word 0x9101d5ad
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %t1018 = add i64 %r1017, 117
  %wp1019 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1018, ptr %wp1019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164d8 word 0x14000293
  br label %L_800116f24
L_8001164dc:
  ; @pc 0x8001164dc word 0x5280200d
  %c1020 = zext i32 256 to i64
  %wp1021 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1020, ptr %wp1021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164e0 word 0xd2e0080e
  %wp1022 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp1022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164e4 word 0x529fffef
  %c1023 = zext i32 65535 to i64
  %wp1024 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1023, ptr %wp1024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164e8 word 0xa9003bed
  %r1025.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1025 = load i64, ptr %r1025.p, align 8, !alias.scope !3, !noalias !4
  %t1026 = add i64 %r1025, 8
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %gmp1028 = inttoptr i64 %r1025 to ptr
  store i64 %r1027, ptr %gmp1028, align 1, !alias.scope !4, !noalias !3
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %gmp1030 = inttoptr i64 %t1026 to ptr
  store i64 %r1029, ptr %gmp1030, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164ec word 0x929ffd8d
  %wp1031 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65517, ptr %wp1031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164f0 word 0xf2a0000d
  %r1032.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1032 = load i64, ptr %r1032.p, align 8, !alias.scope !3, !noalias !4
  %t1033 = and i64 %r1032, -4294901761
  %t1034 = or i64 %t1033, 0
  %wp1035 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1034, ptr %wp1035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164f4 word 0xb2607fee
  %t1036 = or i64 0, -4294967296
  %wp1037 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1036, ptr %wp1037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001164f8 word 0xa90137ef
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = add i64 %r1038, 16
  %t1040 = add i64 %t1039, 8
  %r1041.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1041 = load i64, ptr %r1041.p, align 8, !alias.scope !3, !noalias !4
  %gmp1042 = inttoptr i64 %t1039 to ptr
  store i64 %r1041, ptr %gmp1042, align 1, !alias.scope !4, !noalias !3
  %r1043.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1043 = load i64, ptr %r1043.p, align 8, !alias.scope !3, !noalias !4
  %gmp1044 = inttoptr i64 %t1040 to ptr
  store i64 %r1043, ptr %gmp1044, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001164fc word 0xd2c0002d
  %wp1045 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp1045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116500 word 0xa9023bed
  %r1046.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1046 = load i64, ptr %r1046.p, align 8, !alias.scope !3, !noalias !4
  %t1047 = add i64 %r1046, 32
  %t1048 = add i64 %t1047, 8
  %r1049.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1049 = load i64, ptr %r1049.p, align 8, !alias.scope !3, !noalias !4
  %gmp1050 = inttoptr i64 %t1047 to ptr
  store i64 %r1049, ptr %gmp1050, align 1, !alias.scope !4, !noalias !3
  %r1051.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1051 = load i64, ptr %r1051.p, align 8, !alias.scope !3, !noalias !4
  %gmp1052 = inttoptr i64 %t1048 to ptr
  store i64 %r1051, ptr %gmp1052, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116504 word 0x1280000d
  %c1053 = zext i32 -1 to i64
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116508 word 0xb2091bee
  %t1055 = or i64 0, 4575657222473777152
  %wp1056 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1055, ptr %wp1056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011650c word 0xa9033bed
  %r1057.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1057 = load i64, ptr %r1057.p, align 8, !alias.scope !3, !noalias !4
  %t1058 = add i64 %r1057, 48
  %t1059 = add i64 %t1058, 8
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %gmp1061 = inttoptr i64 %t1058 to ptr
  store i64 %r1060, ptr %gmp1061, align 1, !alias.scope !4, !noalias !3
  %r1062.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1062 = load i64, ptr %r1062.p, align 8, !alias.scope !3, !noalias !4
  %gmp1063 = inttoptr i64 %t1059 to ptr
  store i64 %r1062, ptr %gmp1063, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116510 word 0xd00156ad
  %wp1064 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405793792, ptr %wp1064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116514 word 0x9135adad
  %r1065.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1065 = load i64, ptr %r1065.p, align 8, !alias.scope !3, !noalias !4
  %t1066 = add i64 %r1065, 3435
  %wp1067 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1066, ptr %wp1067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116518 word 0x14000283
  br label %L_800116f24
L_80011651c:
  ; @pc 0x80011651c word 0xf94f6681
  %r1068.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1068 = load i64, ptr %r1068.p, align 8, !alias.scope !3, !noalias !4
  %t1069 = add i64 %r1068, 7880
  %gmp1070 = inttoptr i64 %t1069 to ptr
  %gml1071 = load i64, ptr %gmp1070, align 1, !alias.scope !4, !noalias !3
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1071, ptr %wp1072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116520 word 0x9100418c
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %t1074 = add i64 %r1073, 16
  %wp1075 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1074, ptr %wp1075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116524 word 0x2a1f03e2
  %t1076 = or i32 0, 0
  %c1077 = zext i32 %t1076 to i64
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116528 word 0x3940226d
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %t1080 = add i64 %r1079, 8
  %gmp1081 = inttoptr i64 %t1080 to ptr
  %gml1082 = load i8, ptr %gmp1081, align 1, !alias.scope !4, !noalias !3
  %c1083 = zext i8 %gml1082 to i64
  %wp1084 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1083, ptr %wp1084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011652c word 0xb940082e
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %t1086 = add i64 %r1085, 8
  %gmp1087 = inttoptr i64 %t1086 to ptr
  %gml1088 = load i32, ptr %gmp1087, align 1, !alias.scope !4, !noalias !3
  %c1089 = zext i32 %gml1088 to i64
  %wp1090 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1089, ptr %wp1090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116530 word 0xf940082f
  %r1091.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1091 = load i64, ptr %r1091.p, align 8, !alias.scope !3, !noalias !4
  %t1092 = add i64 %r1091, 16
  %gmp1093 = inttoptr i64 %t1092 to ptr
  %gml1094 = load i64, ptr %gmp1093, align 1, !alias.scope !4, !noalias !3
  %wp1095 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml1094, ptr %wp1095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116534 word 0x6b0d01df
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %c1097 = trunc i64 %r1096 to i32
  %r1098.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1098 = load i64, ptr %r1098.p, align 8, !alias.scope !3, !noalias !4
  %c1099 = trunc i64 %r1098 to i32
  %t1100 = sub i32 %c1097, %c1099
  %fn1101 = icmp slt i32 %t1100, 0
  %fz1102 = icmp eq i32 %t1100, 0
  %fc1103 = icmp uge i32 %c1097, %c1099
  %fx11104 = xor i32 %c1097, %c1099
  %fx21105 = xor i32 %c1097, %t1100
  %fva1106 = and i32 %fx11104, %fx21105
  %fv1107 = icmp slt i32 %fva1106, 0
  %nz1108 = zext i1 %fn1101 to i64
  %zz1109 = zext i1 %fz1102 to i64
  %cz1110 = zext i1 %fc1103 to i64
  %vz1111 = zext i1 %fv1107 to i64
  %ns1112 = shl i64 %nz1108, 31
  %zs1113 = shl i64 %zz1109, 30
  %cs1114 = shl i64 %cz1110, 29
  %vs1115 = shl i64 %vz1111, 28
  %nzor1116 = or i64 %ns1112, %zs1113
  %cvor1117 = or i64 %cs1114, %vs1115
  %nzcv1118 = or i64 %nzor1116, %cvor1117
  %wp1119 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1118, ptr %wp1119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116538 word 0x52879c0e
  %c1120 = zext i32 15584 to i64
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1120, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011653c word 0x9a9f81b0
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %r1123.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1123 = load i64, ptr %r1123.p, align 8, !alias.scope !3, !noalias !4
  %fsh1125 = lshr i64 %r1123, 29
  %ftr1126 = trunc i64 %fsh1125 to i1
  %fsh1127 = lshr i64 %r1123, 30
  %ftr1128 = trunc i64 %fsh1127 to i1
  %fnz1129 = xor i1 %ftr1128, true
  %cond1124 = and i1 %ftr1126, %fnz1129
  %sel1130 = select i1 %cond1124, i64 %r1122, i64 0
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %sel1130, ptr %wp1131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116540 word 0x9bae3e0f
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %c1133 = trunc i64 %r1132 to i32
  %c1134 = zext i32 %c1133 to i64
  %r1135.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1135 = load i64, ptr %r1135.p, align 8, !alias.scope !3, !noalias !4
  %c1136 = trunc i64 %r1135 to i32
  %c1137 = zext i32 %c1136 to i64
  %t1138 = mul i64 %c1134, %c1137
  %r1139.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1139 = load i64, ptr %r1139.p, align 8, !alias.scope !3, !noalias !4
  %t1140 = add i64 %r1139, %t1138
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1140, ptr %wp1141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116544 word 0xd2e00c10
  %wp1142 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 27021597764222976, ptr %wp1142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116548 word 0xf95e21f6
  %r1143.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1143 = load i64, ptr %r1143.p, align 8, !alias.scope !3, !noalias !4
  %t1144 = add i64 %r1143, 15424
  %gmp1145 = inttoptr i64 %t1144 to ptr
  %gml1146 = load i64, ptr %gmp1145, align 1, !alias.scope !4, !noalias !3
  %wp1147 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1146, ptr %wp1147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011654c word 0xd280200f
  %wp1148 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 256, ptr %wp1148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116550 word 0xb900a3e8
  %r1149.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1149 = load i64, ptr %r1149.p, align 8, !alias.scope !3, !noalias !4
  %t1150 = add i64 %r1149, 160
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %c1152 = trunc i64 %r1151 to i32
  %gmp1153 = inttoptr i64 %t1150 to ptr
  store i32 %c1152, ptr %gmp1153, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116554 word 0x91004148
  %r1154.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1154 = load i64, ptr %r1154.p, align 8, !alias.scope !3, !noalias !4
  %t1155 = add i64 %r1154, 16
  %wp1156 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1155, ptr %wp1156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116558 word 0xa908afec
  %r1157.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1157 = load i64, ptr %r1157.p, align 8, !alias.scope !3, !noalias !4
  %t1158 = add i64 %r1157, 136
  %t1159 = add i64 %t1158, 8
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %gmp1161 = inttoptr i64 %t1158 to ptr
  store i64 %r1160, ptr %gmp1161, align 1, !alias.scope !4, !noalias !3
  %r1162.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1162 = load i64, ptr %r1162.p, align 8, !alias.scope !3, !noalias !4
  %gmp1163 = inttoptr i64 %t1159 to ptr
  store i64 %r1162, ptr %gmp1163, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011655c word 0xf900037f
  %r1164.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1164 = load i64, ptr %r1164.p, align 8, !alias.scope !3, !noalias !4
  %gmp1165 = inttoptr i64 %r1164 to ptr
  store i64 0, ptr %gmp1165, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116560 word 0x3900237f
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %t1167 = add i64 %r1166, 8
  %c1168 = trunc i32 0 to i8
  %gmp1169 = inttoptr i64 %t1167 to ptr
  store i8 %c1168, ptr %gmp1169, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116564 word 0xb900bfff
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %t1171 = add i64 %r1170, 188
  %gmp1172 = inttoptr i64 %t1171 to ptr
  store i32 0, ptr %gmp1172, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116568 word 0xf2c0006f
  %r1173.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1173 = load i64, ptr %r1173.p, align 8, !alias.scope !3, !noalias !4
  %t1174 = and i64 %r1173, -281470681743361
  %t1175 = or i64 %t1174, 12884901888
  %wp1176 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1175, ptr %wp1176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011656c word 0xa904a3ff
  %r1177.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1177 = load i64, ptr %r1177.p, align 8, !alias.scope !3, !noalias !4
  %t1178 = add i64 %r1177, 72
  %t1179 = add i64 %t1178, 8
  %gmp1180 = inttoptr i64 %t1178 to ptr
  store i64 0, ptr %gmp1180, align 1, !alias.scope !4, !noalias !3
  %r1181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1181 = load i64, ptr %r1181.p, align 8, !alias.scope !3, !noalias !4
  %gmp1182 = inttoptr i64 %t1179 to ptr
  store i64 %r1181, ptr %gmp1182, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116570 word 0x528000a8
  %c1183 = zext i32 5 to i64
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1183, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116574 word 0xa905ffff
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = add i64 %r1185, 88
  %t1187 = add i64 %t1186, 8
  %gmp1188 = inttoptr i64 %t1186 to ptr
  store i64 0, ptr %gmp1188, align 1, !alias.scope !4, !noalias !3
  %gmp1189 = inttoptr i64 %t1187 to ptr
  store i64 0, ptr %gmp1189, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116578 word 0x29067fe8
  %r1190.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1190 = load i64, ptr %r1190.p, align 8, !alias.scope !3, !noalias !4
  %t1191 = add i64 %r1190, 48
  %t1192 = add i64 %t1191, 4
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %c1194 = trunc i64 %r1193 to i32
  %gmp1195 = inttoptr i64 %t1191 to ptr
  store i32 %c1194, ptr %gmp1195, align 1, !alias.scope !4, !noalias !3
  %gmp1196 = inttoptr i64 %t1192 to ptr
  store i32 0, ptr %gmp1196, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011657c word 0xa90043ef
  %r1197.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1197 = load i64, ptr %r1197.p, align 8, !alias.scope !3, !noalias !4
  %t1198 = add i64 %r1197, 8
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %gmp1200 = inttoptr i64 %r1197 to ptr
  store i64 %r1199, ptr %gmp1200, align 1, !alias.scope !4, !noalias !3
  %r1201.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1201 = load i64, ptr %r1201.p, align 8, !alias.scope !3, !noalias !4
  %gmp1202 = inttoptr i64 %t1198 to ptr
  store i64 %r1201, ptr %gmp1202, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116580 word 0x929ffef0
  %wp1203 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 -65528, ptr %wp1203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116584 word 0x529fffef
  %c1204 = zext i32 65535 to i64
  %wp1205 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1204, ptr %wp1205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116588 word 0xf2a00010
  %r1206.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1206 = load i64, ptr %r1206.p, align 8, !alias.scope !3, !noalias !4
  %t1207 = and i64 %r1206, -4294901761
  %t1208 = or i64 %t1207, 0
  %wp1209 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1208, ptr %wp1209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011658c word 0xaa1603e0
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %t1211 = or i64 0, %r1210
  %wp1212 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1211, ptr %wp1212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116590 word 0xa90143ef
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %t1214 = add i64 %r1213, 16
  %t1215 = add i64 %t1214, 8
  %r1216.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1216 = load i64, ptr %r1216.p, align 8, !alias.scope !3, !noalias !4
  %gmp1217 = inttoptr i64 %t1214 to ptr
  store i64 %r1216, ptr %gmp1217, align 1, !alias.scope !4, !noalias !3
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %gmp1219 = inttoptr i64 %t1215 to ptr
  store i64 %r1218, ptr %gmp1219, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116594 word 0xd2c0002f
  %wp1220 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4294967296, ptr %wp1220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116598 word 0xb2607ff0
  %t1221 = or i64 0, -4294967296
  %wp1222 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1221, ptr %wp1222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011659c word 0xa90243ef
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %t1224 = add i64 %r1223, 32
  %t1225 = add i64 %t1224, 8
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %gmp1227 = inttoptr i64 %t1224 to ptr
  store i64 %r1226, ptr %gmp1227, align 1, !alias.scope !4, !noalias !3
  %r1228.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1228 = load i64, ptr %r1228.p, align 8, !alias.scope !3, !noalias !4
  %gmp1229 = inttoptr i64 %t1225 to ptr
  store i64 %r1228, ptr %gmp1229, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165a0 word 0xb2091bef
  %t1230 = or i64 0, 4575657222473777152
  %wp1231 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1230, ptr %wp1231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165a4 word 0xd2e7f010
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4575657221408423936, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165a8 word 0xf80a4310
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %t1234 = add i64 %r1233, 164
  %r1235.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1235 = load i64, ptr %r1235.p, align 8, !alias.scope !3, !noalias !4
  %gmp1236 = inttoptr i64 %t1234 to ptr
  store i64 %r1235, ptr %gmp1236, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165ac word 0xa903bfef
  %r1237.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1237 = load i64, ptr %r1237.p, align 8, !alias.scope !3, !noalias !4
  %t1238 = add i64 %r1237, 56
  %t1239 = add i64 %t1238, 8
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %gmp1241 = inttoptr i64 %t1238 to ptr
  store i64 %r1240, ptr %gmp1241, align 1, !alias.scope !4, !noalias !3
  %r1242.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1242 = load i64, ptr %r1242.p, align 8, !alias.scope !3, !noalias !4
  %gmp1243 = inttoptr i64 %t1239 to ptr
  store i64 %r1242, ptr %gmp1243, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165b0 word 0xb0015c2f
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 34406510592, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165b4 word 0x91079def
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %t1246 = add i64 %r1245, 487
  %wp1247 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1246, ptr %wp1247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165b8 word 0xb2087bf0
  %t1248 = or i64 0, -36028797027352577
  %wp1249 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1248, ptr %wp1249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165bc word 0xf9004ff0
  %r1250.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1250 = load i64, ptr %r1250.p, align 8, !alias.scope !3, !noalias !4
  %t1251 = add i64 %r1250, 152
  %r1252.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1252 = load i64, ptr %r1252.p, align 8, !alias.scope !3, !noalias !4
  %gmp1253 = inttoptr i64 %t1251 to ptr
  store i64 %r1252, ptr %gmp1253, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165c0 word 0xa907c3eb
  %r1254.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1254 = load i64, ptr %r1254.p, align 8, !alias.scope !3, !noalias !4
  %t1255 = add i64 %r1254, 120
  %t1256 = add i64 %t1255, 8
  %r1257.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1257 = load i64, ptr %r1257.p, align 8, !alias.scope !3, !noalias !4
  %gmp1258 = inttoptr i64 %t1255 to ptr
  store i64 %r1257, ptr %gmp1258, align 1, !alias.scope !4, !noalias !3
  %r1259.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1259 = load i64, ptr %r1259.p, align 8, !alias.scope !3, !noalias !4
  %gmp1260 = inttoptr i64 %t1256 to ptr
  store i64 %r1259, ptr %gmp1260, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165c4 word 0xa906bfff
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1261, 104
  %t1263 = add i64 %t1262, 8
  %gmp1264 = inttoptr i64 %t1262 to ptr
  store i64 0, ptr %gmp1264, align 1, !alias.scope !4, !noalias !3
  %r1265.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1265 = load i64, ptr %r1265.p, align 8, !alias.scope !3, !noalias !4
  %gmp1266 = inttoptr i64 %t1263 to ptr
  store i64 %r1265, ptr %gmp1266, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165c8 word 0xb9400828
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %t1268 = add i64 %r1267, 8
  %gmp1269 = inttoptr i64 %t1268 to ptr
  %gml1270 = load i32, ptr %gmp1269, align 1, !alias.scope !4, !noalias !3
  %c1271 = zext i32 %gml1270 to i64
  %wp1272 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1271, ptr %wp1272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165cc word 0xf940082a
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %t1274 = add i64 %r1273, 16
  %gmp1275 = inttoptr i64 %t1274 to ptr
  %gml1276 = load i64, ptr %gmp1275, align 1, !alias.scope !4, !noalias !3
  %wp1277 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1276, ptr %wp1277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165d0 word 0x6b0d011f
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1278 = load i64, ptr %r1278.p, align 8, !alias.scope !3, !noalias !4
  %c1279 = trunc i64 %r1278 to i32
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %c1281 = trunc i64 %r1280 to i32
  %t1282 = sub i32 %c1279, %c1281
  %fn1283 = icmp slt i32 %t1282, 0
  %fz1284 = icmp eq i32 %t1282, 0
  %fc1285 = icmp uge i32 %c1279, %c1281
  %fx11286 = xor i32 %c1279, %c1281
  %fx21287 = xor i32 %c1279, %t1282
  %fva1288 = and i32 %fx11286, %fx21287
  %fv1289 = icmp slt i32 %fva1288, 0
  %nz1290 = zext i1 %fn1283 to i64
  %zz1291 = zext i1 %fz1284 to i64
  %cz1292 = zext i1 %fc1285 to i64
  %vz1293 = zext i1 %fv1289 to i64
  %ns1294 = shl i64 %nz1290, 31
  %zs1295 = shl i64 %zz1291, 30
  %cs1296 = shl i64 %cz1292, 29
  %vs1297 = shl i64 %vz1293, 28
  %nzor1298 = or i64 %ns1294, %zs1295
  %cvor1299 = or i64 %cs1296, %vs1297
  %nzcv1300 = or i64 %nzor1298, %cvor1299
  %wp1301 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1300, ptr %wp1301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165d4 word 0x9a9f81a8
  %r1302.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1302 = load i64, ptr %r1302.p, align 8, !alias.scope !3, !noalias !4
  %r1303.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1303 = load i64, ptr %r1303.p, align 8, !alias.scope !3, !noalias !4
  %fsh1305 = lshr i64 %r1303, 29
  %ftr1306 = trunc i64 %fsh1305 to i1
  %fsh1307 = lshr i64 %r1303, 30
  %ftr1308 = trunc i64 %fsh1307 to i1
  %fnz1309 = xor i1 %ftr1308, true
  %cond1304 = and i1 %ftr1306, %fnz1309
  %sel1310 = select i1 %cond1304, i64 %r1302, i64 0
  %wp1311 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1310, ptr %wp1311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165d8 word 0x9bae2908
  %r1312.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1312 = load i64, ptr %r1312.p, align 8, !alias.scope !3, !noalias !4
  %c1313 = trunc i64 %r1312 to i32
  %c1314 = zext i32 %c1313 to i64
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %c1316 = trunc i64 %r1315 to i32
  %c1317 = zext i32 %c1316 to i64
  %t1318 = mul i64 %c1314, %c1317
  %r1319.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1319 = load i64, ptr %r1319.p, align 8, !alias.scope !3, !noalias !4
  %t1320 = add i64 %r1319, %t1318
  %wp1321 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1320, ptr %wp1321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165dc word 0xf957010a
  %r1322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1322 = load i64, ptr %r1322.p, align 8, !alias.scope !3, !noalias !4
  %t1323 = add i64 %r1322, 11776
  %gmp1324 = inttoptr i64 %t1323 to ptr
  %gml1325 = load i64, ptr %gmp1324, align 1, !alias.scope !4, !noalias !3
  %wp1326 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1325, ptr %wp1326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165e0 word 0xf9570508
  %r1327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1327 = load i64, ptr %r1327.p, align 8, !alias.scope !3, !noalias !4
  %t1328 = add i64 %r1327, 11784
  %gmp1329 = inttoptr i64 %t1328 to ptr
  %gml1330 = load i64, ptr %gmp1329, align 1, !alias.scope !4, !noalias !3
  %wp1331 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1330, ptr %wp1331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165e4 word 0xa900212a
  %r1332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1332 = load i64, ptr %r1332.p, align 8, !alias.scope !3, !noalias !4
  %t1333 = add i64 %r1332, 8
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %gmp1335 = inttoptr i64 %r1332 to ptr
  store i64 %r1334, ptr %gmp1335, align 1, !alias.scope !4, !noalias !3
  %r1336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1336 = load i64, ptr %r1336.p, align 8, !alias.scope !3, !noalias !4
  %gmp1337 = inttoptr i64 %t1333 to ptr
  store i64 %r1336, ptr %gmp1337, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001165e8 word 0xb9400828
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %t1339 = add i64 %r1338, 8
  %gmp1340 = inttoptr i64 %t1339 to ptr
  %gml1341 = load i32, ptr %gmp1340, align 1, !alias.scope !4, !noalias !3
  %c1342 = zext i32 %gml1341 to i64
  %wp1343 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1342, ptr %wp1343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165ec word 0xf9400829
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %t1345 = add i64 %r1344, 16
  %gmp1346 = inttoptr i64 %t1345 to ptr
  %gml1347 = load i64, ptr %gmp1346, align 1, !alias.scope !4, !noalias !3
  %wp1348 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1347, ptr %wp1348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165f0 word 0x6b0d011f
  %r1349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1349 = load i64, ptr %r1349.p, align 8, !alias.scope !3, !noalias !4
  %c1350 = trunc i64 %r1349 to i32
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %c1352 = trunc i64 %r1351 to i32
  %t1353 = sub i32 %c1350, %c1352
  %fn1354 = icmp slt i32 %t1353, 0
  %fz1355 = icmp eq i32 %t1353, 0
  %fc1356 = icmp uge i32 %c1350, %c1352
  %fx11357 = xor i32 %c1350, %c1352
  %fx21358 = xor i32 %c1350, %t1353
  %fva1359 = and i32 %fx11357, %fx21358
  %fv1360 = icmp slt i32 %fva1359, 0
  %nz1361 = zext i1 %fn1354 to i64
  %zz1362 = zext i1 %fz1355 to i64
  %cz1363 = zext i1 %fc1356 to i64
  %vz1364 = zext i1 %fv1360 to i64
  %ns1365 = shl i64 %nz1361, 31
  %zs1366 = shl i64 %zz1362, 30
  %cs1367 = shl i64 %cz1363, 29
  %vs1368 = shl i64 %vz1364, 28
  %nzor1369 = or i64 %ns1365, %zs1366
  %cvor1370 = or i64 %cs1367, %vs1368
  %nzcv1371 = or i64 %nzor1369, %cvor1370
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165f4 word 0x9a9f81a8
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %r1374.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1374 = load i64, ptr %r1374.p, align 8, !alias.scope !3, !noalias !4
  %fsh1376 = lshr i64 %r1374, 29
  %ftr1377 = trunc i64 %fsh1376 to i1
  %fsh1378 = lshr i64 %r1374, 30
  %ftr1379 = trunc i64 %fsh1378 to i1
  %fnz1380 = xor i1 %ftr1379, true
  %cond1375 = and i1 %ftr1377, %fnz1380
  %sel1381 = select i1 %cond1375, i64 %r1373, i64 0
  %wp1382 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1381, ptr %wp1382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165f8 word 0x9bae2508
  %r1383.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1383 = load i64, ptr %r1383.p, align 8, !alias.scope !3, !noalias !4
  %c1384 = trunc i64 %r1383 to i32
  %c1385 = zext i32 %c1384 to i64
  %r1386.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1386 = load i64, ptr %r1386.p, align 8, !alias.scope !3, !noalias !4
  %c1387 = trunc i64 %r1386 to i32
  %c1388 = zext i32 %c1387 to i64
  %t1389 = mul i64 %c1385, %c1388
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %t1391 = add i64 %r1390, %t1389
  %wp1392 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1391, ptr %wp1392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001165fc word 0xf9584109
  %r1393.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1393 = load i64, ptr %r1393.p, align 8, !alias.scope !3, !noalias !4
  %t1394 = add i64 %r1393, 12416
  %gmp1395 = inttoptr i64 %t1394 to ptr
  %gml1396 = load i64, ptr %gmp1395, align 1, !alias.scope !4, !noalias !3
  %wp1397 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1396, ptr %wp1397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116600 word 0xf958450a
  %r1398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1398 = load i64, ptr %r1398.p, align 8, !alias.scope !3, !noalias !4
  %t1399 = add i64 %r1398, 12424
  %gmp1400 = inttoptr i64 %t1399 to ptr
  %gml1401 = load i64, ptr %gmp1400, align 1, !alias.scope !4, !noalias !3
  %wp1402 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1401, ptr %wp1402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116604 word 0xa9002b49
  %r1403.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1403 = load i64, ptr %r1403.p, align 8, !alias.scope !3, !noalias !4
  %t1404 = add i64 %r1403, 8
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %gmp1406 = inttoptr i64 %r1403 to ptr
  store i64 %r1405, ptr %gmp1406, align 1, !alias.scope !4, !noalias !3
  %r1407.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1407 = load i64, ptr %r1407.p, align 8, !alias.scope !3, !noalias !4
  %gmp1408 = inttoptr i64 %t1404 to ptr
  store i64 %r1407, ptr %gmp1408, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116608 word 0xf9584909
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %t1410 = add i64 %r1409, 12432
  %gmp1411 = inttoptr i64 %t1410 to ptr
  %gml1412 = load i64, ptr %gmp1411, align 1, !alias.scope !4, !noalias !3
  %wp1413 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1412, ptr %wp1413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011660c word 0xb9709908
  %r1414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1414 = load i64, ptr %r1414.p, align 8, !alias.scope !3, !noalias !4
  %t1415 = add i64 %r1414, 12440
  %gmp1416 = inttoptr i64 %t1415 to ptr
  %gml1417 = load i32, ptr %gmp1416, align 1, !alias.scope !4, !noalias !3
  %c1418 = zext i32 %gml1417 to i64
  %wp1419 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1418, ptr %wp1419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116610 word 0xb9000b28
  %r1420.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1420 = load i64, ptr %r1420.p, align 8, !alias.scope !3, !noalias !4
  %t1421 = add i64 %r1420, 8
  %r1422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1422 = load i64, ptr %r1422.p, align 8, !alias.scope !3, !noalias !4
  %c1423 = trunc i64 %r1422 to i32
  %gmp1424 = inttoptr i64 %t1421 to ptr
  store i32 %c1423, ptr %gmp1424, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116614 word 0xd10027a8
  %r1425.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1425 = load i64, ptr %r1425.p, align 8, !alias.scope !3, !noalias !4
  %t1426 = sub i64 %r1425, 9
  %wp1427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1426, ptr %wp1427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116618 word 0xf9000329
  %r1428.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1428 = load i64, ptr %r1428.p, align 8, !alias.scope !3, !noalias !4
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %gmp1430 = inttoptr i64 %r1428 to ptr
  store i64 %r1429, ptr %gmp1430, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011661c word 0x9400046f
  %wp1431 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360878624, ptr %wp1431, align 8, !alias.scope !3, !noalias !4
  call void @f_8001177d8(ptr %c)
  ; @pc 0x800116620 word 0xf84c7308
  %r1432.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1432 = load i64, ptr %r1432.p, align 8, !alias.scope !3, !noalias !4
  %t1433 = add i64 %r1432, 199
  %gmp1434 = inttoptr i64 %t1433 to ptr
  %gml1435 = load i64, ptr %gmp1434, align 1, !alias.scope !4, !noalias !3
  %wp1436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1435, ptr %wp1436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116624 word 0xf9000368
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %r1438.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1438 = load i64, ptr %r1438.p, align 8, !alias.scope !3, !noalias !4
  %gmp1439 = inttoptr i64 %r1437 to ptr
  store i64 %r1438, ptr %gmp1439, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116628 word 0x385ff3a9
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %t1441 = add i64 %r1440, -1
  %gmp1442 = inttoptr i64 %t1441 to ptr
  %gml1443 = load i8, ptr %gmp1442, align 1, !alias.scope !4, !noalias !3
  %c1444 = zext i8 %gml1443 to i64
  %wp1445 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1444, ptr %wp1445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011662c word 0xf94afeca
  %r1446.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1446 = load i64, ptr %r1446.p, align 8, !alias.scope !3, !noalias !4
  %t1447 = add i64 %r1446, 5624
  %gmp1448 = inttoptr i64 %t1447 to ptr
  %gml1449 = load i64, ptr %gmp1448, align 1, !alias.scope !4, !noalias !3
  %wp1450 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1449, ptr %wp1450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116630 word 0xb95602c8
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %t1452 = add i64 %r1451, 5632
  %gmp1453 = inttoptr i64 %t1452 to ptr
  %gml1454 = load i32, ptr %gmp1453, align 1, !alias.scope !4, !noalias !3
  %c1455 = zext i32 %gml1454 to i64
  %wp1456 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1455, ptr %wp1456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116634 word 0x39002369
  %r1457.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1457 = load i64, ptr %r1457.p, align 8, !alias.scope !3, !noalias !4
  %t1458 = add i64 %r1457, 8
  %r1459.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1459 = load i64, ptr %r1459.p, align 8, !alias.scope !3, !noalias !4
  %c1460 = trunc i64 %r1459 to i32
  %c1461 = trunc i32 %c1460 to i8
  %gmp1462 = inttoptr i64 %t1458 to ptr
  store i8 %c1461, ptr %gmp1462, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116638 word 0xf801c3ea
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1463 = load i64, ptr %r1463.p, align 8, !alias.scope !3, !noalias !4
  %t1464 = add i64 %r1463, 28
  %r1465.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1465 = load i64, ptr %r1465.p, align 8, !alias.scope !3, !noalias !4
  %gmp1466 = inttoptr i64 %t1464 to ptr
  store i64 %r1465, ptr %gmp1466, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011663c word 0x140000e6
  br label %L_8001169d4
L_800116640:
  ; @pc 0x800116640 word 0x5282000d
  %c1467 = zext i32 4096 to i64
  %wp1468 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1467, ptr %wp1468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116644 word 0x5280002e
  %c1469 = zext i32 1 to i64
  %wp1470 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1469, ptr %wp1470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116648 word 0x529fffef
  %c1471 = zext i32 65535 to i64
  %wp1472 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1471, ptr %wp1472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011664c word 0xa9003bed
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %t1474 = add i64 %r1473, 8
  %r1475.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1475 = load i64, ptr %r1475.p, align 8, !alias.scope !3, !noalias !4
  %gmp1476 = inttoptr i64 %r1473 to ptr
  store i64 %r1475, ptr %gmp1476, align 1, !alias.scope !4, !noalias !3
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %gmp1478 = inttoptr i64 %t1474 to ptr
  store i64 %r1477, ptr %gmp1478, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116650 word 0x929ffe6d
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65524, ptr %wp1479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116654 word 0xf2a0000d
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %t1481 = and i64 %r1480, -4294901761
  %t1482 = or i64 %t1481, 0
  %wp1483 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1482, ptr %wp1483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116658 word 0xb2607fee
  %t1484 = or i64 0, -4294967296
  %wp1485 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1484, ptr %wp1485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011665c word 0xa90137ef
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1486, 16
  %t1488 = add i64 %t1487, 8
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %gmp1490 = inttoptr i64 %t1487 to ptr
  store i64 %r1489, ptr %gmp1490, align 1, !alias.scope !4, !noalias !3
  %r1491.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1491 = load i64, ptr %r1491.p, align 8, !alias.scope !3, !noalias !4
  %gmp1492 = inttoptr i64 %t1488 to ptr
  store i64 %r1491, ptr %gmp1492, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116660 word 0xd2c0002d
  %wp1493 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp1493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116664 word 0xa9023bed
  %r1494.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1494 = load i64, ptr %r1494.p, align 8, !alias.scope !3, !noalias !4
  %t1495 = add i64 %r1494, 32
  %t1496 = add i64 %t1495, 8
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %gmp1498 = inttoptr i64 %t1495 to ptr
  store i64 %r1497, ptr %gmp1498, align 1, !alias.scope !4, !noalias !3
  %r1499.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1499 = load i64, ptr %r1499.p, align 8, !alias.scope !3, !noalias !4
  %gmp1500 = inttoptr i64 %t1496 to ptr
  store i64 %r1499, ptr %gmp1500, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116668 word 0x1280000d
  %c1501 = zext i32 -1 to i64
  %wp1502 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1501, ptr %wp1502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011666c word 0xb2091bee
  %t1503 = or i64 0, 4575657222473777152
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1503, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116670 word 0xa9033bed
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %t1506 = add i64 %r1505, 48
  %t1507 = add i64 %t1506, 8
  %r1508.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1508 = load i64, ptr %r1508.p, align 8, !alias.scope !3, !noalias !4
  %gmp1509 = inttoptr i64 %t1506 to ptr
  store i64 %r1508, ptr %gmp1509, align 1, !alias.scope !4, !noalias !3
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %gmp1511 = inttoptr i64 %t1507 to ptr
  store i64 %r1510, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116674 word 0xd001594d
  %wp1512 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406137856, ptr %wp1512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116678 word 0x9109f1ad
  %r1513.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1513 = load i64, ptr %r1513.p, align 8, !alias.scope !3, !noalias !4
  %t1514 = add i64 %r1513, 636
  %wp1515 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1514, ptr %wp1515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011667c word 0x14000146
  br label %L_800116b94
L_800116680:
  ; @pc 0x800116680 word 0xf94f6681
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %t1517 = add i64 %r1516, 7880
  %gmp1518 = inttoptr i64 %t1517 to ptr
  %gml1519 = load i64, ptr %gmp1518, align 1, !alias.scope !4, !noalias !3
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116684 word 0x9100418c
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %t1522 = add i64 %r1521, 16
  %wp1523 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1522, ptr %wp1523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116688 word 0x2a1f03e2
  %t1524 = or i32 0, 0
  %c1525 = zext i32 %t1524 to i64
  %wp1526 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1525, ptr %wp1526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011668c word 0x3940226e
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %t1528 = add i64 %r1527, 8
  %gmp1529 = inttoptr i64 %t1528 to ptr
  %gml1530 = load i8, ptr %gmp1529, align 1, !alias.scope !4, !noalias !3
  %c1531 = zext i8 %gml1530 to i64
  %wp1532 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1531, ptr %wp1532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116690 word 0x794001ad
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %gmp1534 = inttoptr i64 %r1533 to ptr
  %gml1535 = load i16, ptr %gmp1534, align 1, !alias.scope !4, !noalias !3
  %c1536 = zext i16 %gml1535 to i64
  %wp1537 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1536, ptr %wp1537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116694 word 0x121a01ad
  %r1538.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1538 = load i64, ptr %r1538.p, align 8, !alias.scope !3, !noalias !4
  %c1539 = trunc i64 %r1538 to i32
  %t1540 = and i32 %c1539, 64
  %c1541 = zext i32 %t1540 to i64
  %wp1542 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1541, ptr %wp1542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116698 word 0xb940082f
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %t1544 = add i64 %r1543, 8
  %gmp1545 = inttoptr i64 %t1544 to ptr
  %gml1546 = load i32, ptr %gmp1545, align 1, !alias.scope !4, !noalias !3
  %c1547 = zext i32 %gml1546 to i64
  %wp1548 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1547, ptr %wp1548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011669c word 0xf9400830
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = add i64 %r1549, 16
  %gmp1551 = inttoptr i64 %t1550 to ptr
  %gml1552 = load i64, ptr %gmp1551, align 1, !alias.scope !4, !noalias !3
  %wp1553 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1552, ptr %wp1553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166a0 word 0x6b0e01ff
  %r1554.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1554 = load i64, ptr %r1554.p, align 8, !alias.scope !3, !noalias !4
  %c1555 = trunc i64 %r1554 to i32
  %r1556.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1556 = load i64, ptr %r1556.p, align 8, !alias.scope !3, !noalias !4
  %c1557 = trunc i64 %r1556 to i32
  %t1558 = sub i32 %c1555, %c1557
  %fn1559 = icmp slt i32 %t1558, 0
  %fz1560 = icmp eq i32 %t1558, 0
  %fc1561 = icmp uge i32 %c1555, %c1557
  %fx11562 = xor i32 %c1555, %c1557
  %fx21563 = xor i32 %c1555, %t1558
  %fva1564 = and i32 %fx11562, %fx21563
  %fv1565 = icmp slt i32 %fva1564, 0
  %nz1566 = zext i1 %fn1559 to i64
  %zz1567 = zext i1 %fz1560 to i64
  %cz1568 = zext i1 %fc1561 to i64
  %vz1569 = zext i1 %fv1565 to i64
  %ns1570 = shl i64 %nz1566, 31
  %zs1571 = shl i64 %zz1567, 30
  %cs1572 = shl i64 %cz1568, 29
  %vs1573 = shl i64 %vz1569, 28
  %nzor1574 = or i64 %ns1570, %zs1571
  %cvor1575 = or i64 %cs1572, %vs1573
  %nzcv1576 = or i64 %nzor1574, %cvor1575
  %wp1577 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1576, ptr %wp1577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166a4 word 0x52879c0f
  %c1578 = zext i32 15584 to i64
  %wp1579 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1578, ptr %wp1579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166a8 word 0x9a9f81d1
  %r1580.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1580 = load i64, ptr %r1580.p, align 8, !alias.scope !3, !noalias !4
  %r1581.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1581 = load i64, ptr %r1581.p, align 8, !alias.scope !3, !noalias !4
  %fsh1583 = lshr i64 %r1581, 29
  %ftr1584 = trunc i64 %fsh1583 to i1
  %fsh1585 = lshr i64 %r1581, 30
  %ftr1586 = trunc i64 %fsh1585 to i1
  %fnz1587 = xor i1 %ftr1586, true
  %cond1582 = and i1 %ftr1584, %fnz1587
  %sel1588 = select i1 %cond1582, i64 %r1580, i64 0
  %wp1589 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %sel1588, ptr %wp1589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166ac word 0x9baf4230
  %r1590.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1590 = load i64, ptr %r1590.p, align 8, !alias.scope !3, !noalias !4
  %c1591 = trunc i64 %r1590 to i32
  %c1592 = zext i32 %c1591 to i64
  %r1593.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1593 = load i64, ptr %r1593.p, align 8, !alias.scope !3, !noalias !4
  %c1594 = trunc i64 %r1593 to i32
  %c1595 = zext i32 %c1594 to i64
  %t1596 = mul i64 %c1592, %c1595
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %t1598 = add i64 %r1597, %t1596
  %wp1599 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1598, ptr %wp1599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166b0 word 0xf95e2216
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %t1601 = add i64 %r1600, 15424
  %gmp1602 = inttoptr i64 %t1601 to ptr
  %gml1603 = load i64, ptr %gmp1602, align 1, !alias.scope !4, !noalias !3
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166b4 word 0xf94f5e90
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %t1606 = add i64 %r1605, 7864
  %gmp1607 = inttoptr i64 %t1606 to ptr
  %gml1608 = load i64, ptr %gmp1607, align 1, !alias.scope !4, !noalias !3
  %wp1609 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml1608, ptr %wp1609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166b8 word 0xb900a3e8
  %r1610.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1610 = load i64, ptr %r1610.p, align 8, !alias.scope !3, !noalias !4
  %t1611 = add i64 %r1610, 160
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %c1613 = trunc i64 %r1612 to i32
  %gmp1614 = inttoptr i64 %t1611 to ptr
  store i32 %c1613, ptr %gmp1614, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166bc word 0x91004148
  %r1615.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1615 = load i64, ptr %r1615.p, align 8, !alias.scope !3, !noalias !4
  %t1616 = add i64 %r1615, 16
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166c0 word 0xa908afec
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %t1619 = add i64 %r1618, 136
  %t1620 = add i64 %t1619, 8
  %r1621.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1621 = load i64, ptr %r1621.p, align 8, !alias.scope !3, !noalias !4
  %gmp1622 = inttoptr i64 %t1619 to ptr
  store i64 %r1621, ptr %gmp1622, align 1, !alias.scope !4, !noalias !3
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %gmp1624 = inttoptr i64 %t1620 to ptr
  store i64 %r1623, ptr %gmp1624, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166c4 word 0xf900037f
  %r1625.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1625 = load i64, ptr %r1625.p, align 8, !alias.scope !3, !noalias !4
  %gmp1626 = inttoptr i64 %r1625 to ptr
  store i64 0, ptr %gmp1626, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166c8 word 0x3900237f
  %r1627.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1627 = load i64, ptr %r1627.p, align 8, !alias.scope !3, !noalias !4
  %t1628 = add i64 %r1627, 8
  %c1629 = trunc i32 0 to i8
  %gmp1630 = inttoptr i64 %t1628 to ptr
  store i8 %c1629, ptr %gmp1630, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166cc word 0xb900bfff
  %r1631.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1631 = load i64, ptr %r1631.p, align 8, !alias.scope !3, !noalias !4
  %t1632 = add i64 %r1631, 188
  %gmp1633 = inttoptr i64 %t1632 to ptr
  store i32 0, ptr %gmp1633, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166d0 word 0xa905ffff
  %r1634.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1634 = load i64, ptr %r1634.p, align 8, !alias.scope !3, !noalias !4
  %t1635 = add i64 %r1634, 88
  %t1636 = add i64 %t1635, 8
  %gmp1637 = inttoptr i64 %t1635 to ptr
  store i64 0, ptr %gmp1637, align 1, !alias.scope !4, !noalias !3
  %gmp1638 = inttoptr i64 %t1636 to ptr
  store i64 0, ptr %gmp1638, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166d4 word 0x395ac210
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %t1640 = add i64 %r1639, 1712
  %gmp1641 = inttoptr i64 %t1640 to ptr
  %gml1642 = load i8, ptr %gmp1641, align 1, !alias.scope !4, !noalias !3
  %c1643 = zext i8 %gml1642 to i64
  %wp1644 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1643, ptr %wp1644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166d8 word 0xa904a3ff
  %r1645.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1645 = load i64, ptr %r1645.p, align 8, !alias.scope !3, !noalias !4
  %t1646 = add i64 %r1645, 72
  %t1647 = add i64 %t1646, 8
  %gmp1648 = inttoptr i64 %t1646 to ptr
  store i64 0, ptr %gmp1648, align 1, !alias.scope !4, !noalias !3
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %gmp1650 = inttoptr i64 %t1647 to ptr
  store i64 %r1649, ptr %gmp1650, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166dc word 0x52800088
  %c1651 = zext i32 4 to i64
  %wp1652 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1651, ptr %wp1652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166e0 word 0x29067fe8
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %t1654 = add i64 %r1653, 48
  %t1655 = add i64 %t1654, 4
  %r1656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1656 = load i64, ptr %r1656.p, align 8, !alias.scope !3, !noalias !4
  %c1657 = trunc i64 %r1656 to i32
  %gmp1658 = inttoptr i64 %t1654 to ptr
  store i32 %c1657, ptr %gmp1658, align 1, !alias.scope !4, !noalias !3
  %gmp1659 = inttoptr i64 %t1655 to ptr
  store i32 0, ptr %gmp1659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001166e4 word 0xaa1603e0
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = or i64 0, %r1660
  %wp1662 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1661, ptr %wp1662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166e8 word 0x7100021f
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %c1664 = trunc i64 %r1663 to i32
  %t1665 = sub i32 %c1664, 0
  %fn1666 = icmp slt i32 %t1665, 0
  %fz1667 = icmp eq i32 %t1665, 0
  %fc1668 = icmp uge i32 %c1664, 0
  %fx11669 = xor i32 %c1664, 0
  %fx21670 = xor i32 %c1664, %t1665
  %fva1671 = and i32 %fx11669, %fx21670
  %fv1672 = icmp slt i32 %fva1671, 0
  %nz1673 = zext i1 %fn1666 to i64
  %zz1674 = zext i1 %fz1667 to i64
  %cz1675 = zext i1 %fc1668 to i64
  %vz1676 = zext i1 %fv1672 to i64
  %ns1677 = shl i64 %nz1673, 31
  %zs1678 = shl i64 %zz1674, 30
  %cs1679 = shl i64 %cz1675, 29
  %vs1680 = shl i64 %vz1676, 28
  %nzor1681 = or i64 %ns1677, %zs1678
  %cvor1682 = or i64 %cs1679, %vs1680
  %nzcv1683 = or i64 %nzor1681, %cvor1682
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166ec word 0x1a9f07f0
  %t1685 = add i32 0, 1
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %fsh1688 = lshr i64 %r1686, 30
  %cond1687 = trunc i64 %fsh1688 to i1
  %sel1689 = select i1 %cond1687, i32 0, i32 %t1685
  %c1690 = zext i32 %sel1689 to i64
  %wp1691 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1690, ptr %wp1691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166f0 word 0x6a4d1a1f
  %r1692.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1692 = load i64, ptr %r1692.p, align 8, !alias.scope !3, !noalias !4
  %c1693 = trunc i64 %r1692 to i32
  %t1694 = lshr i32 %c1693, 6
  %r1695.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1695 = load i64, ptr %r1695.p, align 8, !alias.scope !3, !noalias !4
  %c1696 = trunc i64 %r1695 to i32
  %t1697 = and i32 %c1696, %t1694
  %fn1698 = icmp slt i32 %t1697, 0
  %fz1699 = icmp eq i32 %t1697, 0
  %nz1700 = zext i1 %fn1698 to i64
  %zz1701 = zext i1 %fz1699 to i64
  %ns1702 = shl i64 %nz1700, 31
  %zs1703 = shl i64 %zz1701, 30
  %nzcv1704 = or i64 %ns1702, %zs1703
  %wp1705 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1704, ptr %wp1705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166f4 word 0x5280002d
  %c1706 = zext i32 1 to i64
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166f8 word 0x72a0080d
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = and i64 %r1708, -4294901761
  %t1710 = or i64 %t1709, 4194304
  %c1711 = trunc i64 %t1710 to i32
  %c1712 = zext i32 %c1711 to i64
  %wp1713 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1712, ptr %wp1713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001166fc word 0x52800030
  %c1714 = zext i32 1 to i64
  %wp1715 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1714, ptr %wp1715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116700 word 0x72a08810
  %r1716.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1716 = load i64, ptr %r1716.p, align 8, !alias.scope !3, !noalias !4
  %t1717 = and i64 %r1716, -4294901761
  %t1718 = or i64 %t1717, 71303168
  %c1719 = trunc i64 %t1718 to i32
  %c1720 = zext i32 %c1719 to i64
  %wp1721 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1720, ptr %wp1721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116704 word 0x1a8d120d
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %c1723 = trunc i64 %r1722 to i32
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %c1725 = trunc i64 %r1724 to i32
  %r1726.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1726 = load i64, ptr %r1726.p, align 8, !alias.scope !3, !noalias !4
  %fsh1728 = lshr i64 %r1726, 30
  %ftr1729 = trunc i64 %fsh1728 to i1
  %cond1727 = xor i1 %ftr1729, true
  %sel1730 = select i1 %cond1727, i32 %c1723, i32 %c1725
  %c1731 = zext i32 %sel1730 to i64
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116708 word 0xd2800210
  %wp1733 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 16, ptr %wp1733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011670c word 0xf2c00070
  %r1734.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1734 = load i64, ptr %r1734.p, align 8, !alias.scope !3, !noalias !4
  %t1735 = and i64 %r1734, -281470681743361
  %t1736 = or i64 %t1735, 12884901888
  %wp1737 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1736, ptr %wp1737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116710 word 0x290137ff
  %r1738.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1738 = load i64, ptr %r1738.p, align 8, !alias.scope !3, !noalias !4
  %t1739 = add i64 %r1738, 8
  %t1740 = add i64 %t1739, 4
  %gmp1741 = inttoptr i64 %t1739 to ptr
  store i32 0, ptr %gmp1741, align 1, !alias.scope !4, !noalias !3
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %c1743 = trunc i64 %r1742 to i32
  %gmp1744 = inttoptr i64 %t1740 to ptr
  store i32 %c1743, ptr %gmp1744, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116714 word 0x529fffed
  %c1745 = zext i32 65535 to i64
  %wp1746 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1745, ptr %wp1746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116718 word 0xf90003f0
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %r1748.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1748 = load i64, ptr %r1748.p, align 8, !alias.scope !3, !noalias !4
  %gmp1749 = inttoptr i64 %r1747 to ptr
  store i64 %r1748, ptr %gmp1749, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011671c word 0xb2608bf0
  %t1750 = or i64 0, -4294967289
  %wp1751 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1750, ptr %wp1751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116720 word 0xa90143ed
  %r1752.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1752 = load i64, ptr %r1752.p, align 8, !alias.scope !3, !noalias !4
  %t1753 = add i64 %r1752, 16
  %t1754 = add i64 %t1753, 8
  %r1755.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1755 = load i64, ptr %r1755.p, align 8, !alias.scope !3, !noalias !4
  %gmp1756 = inttoptr i64 %t1753 to ptr
  store i64 %r1755, ptr %gmp1756, align 1, !alias.scope !4, !noalias !3
  %r1757.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1757 = load i64, ptr %r1757.p, align 8, !alias.scope !3, !noalias !4
  %gmp1758 = inttoptr i64 %t1754 to ptr
  store i64 %r1757, ptr %gmp1758, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116724 word 0xd2c0002d
  %wp1759 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp1759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116728 word 0xb2607ff0
  %t1760 = or i64 0, -4294967296
  %wp1761 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1760, ptr %wp1761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011672c word 0xa90243ed
  %r1762.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1762 = load i64, ptr %r1762.p, align 8, !alias.scope !3, !noalias !4
  %t1763 = add i64 %r1762, 32
  %t1764 = add i64 %t1763, 8
  %r1765.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1765 = load i64, ptr %r1765.p, align 8, !alias.scope !3, !noalias !4
  %gmp1766 = inttoptr i64 %t1763 to ptr
  store i64 %r1765, ptr %gmp1766, align 1, !alias.scope !4, !noalias !3
  %r1767.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1767 = load i64, ptr %r1767.p, align 8, !alias.scope !3, !noalias !4
  %gmp1768 = inttoptr i64 %t1764 to ptr
  store i64 %r1767, ptr %gmp1768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116730 word 0xb2091bed
  %t1769 = or i64 0, 4575657222473777152
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116734 word 0xd2e7f010
  %wp1771 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4575657221408423936, ptr %wp1771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116738 word 0xa903b7ed
  %r1772.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1772 = load i64, ptr %r1772.p, align 8, !alias.scope !3, !noalias !4
  %t1773 = add i64 %r1772, 56
  %t1774 = add i64 %t1773, 8
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %gmp1776 = inttoptr i64 %t1773 to ptr
  store i64 %r1775, ptr %gmp1776, align 1, !alias.scope !4, !noalias !3
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %gmp1778 = inttoptr i64 %t1774 to ptr
  store i64 %r1777, ptr %gmp1778, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011673c word 0xb0015c2d
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406510592, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116740 word 0x910729ad
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %t1781 = add i64 %r1780, 458
  %wp1782 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1781, ptr %wp1782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116744 word 0xf80a4310
  %r1783.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1783 = load i64, ptr %r1783.p, align 8, !alias.scope !3, !noalias !4
  %t1784 = add i64 %r1783, 164
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %gmp1786 = inttoptr i64 %t1784 to ptr
  store i64 %r1785, ptr %gmp1786, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116748 word 0xb2087bf0
  %t1787 = or i64 0, -36028797027352577
  %wp1788 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1787, ptr %wp1788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011674c word 0xa907c3eb
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %t1790 = add i64 %r1789, 120
  %t1791 = add i64 %t1790, 8
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %gmp1793 = inttoptr i64 %t1790 to ptr
  store i64 %r1792, ptr %gmp1793, align 1, !alias.scope !4, !noalias !3
  %r1794.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1794 = load i64, ptr %r1794.p, align 8, !alias.scope !3, !noalias !4
  %gmp1795 = inttoptr i64 %t1791 to ptr
  store i64 %r1794, ptr %gmp1795, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116750 word 0xf9004ff0
  %r1796.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1796 = load i64, ptr %r1796.p, align 8, !alias.scope !3, !noalias !4
  %t1797 = add i64 %r1796, 152
  %r1798.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1798 = load i64, ptr %r1798.p, align 8, !alias.scope !3, !noalias !4
  %gmp1799 = inttoptr i64 %t1797 to ptr
  store i64 %r1798, ptr %gmp1799, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116754 word 0xa906b7ff
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %t1801 = add i64 %r1800, 104
  %t1802 = add i64 %t1801, 8
  %gmp1803 = inttoptr i64 %t1801 to ptr
  store i64 0, ptr %gmp1803, align 1, !alias.scope !4, !noalias !3
  %r1804.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1804 = load i64, ptr %r1804.p, align 8, !alias.scope !3, !noalias !4
  %gmp1805 = inttoptr i64 %t1802 to ptr
  store i64 %r1804, ptr %gmp1805, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116758 word 0xb9400828
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = add i64 %r1806, 8
  %gmp1808 = inttoptr i64 %t1807 to ptr
  %gml1809 = load i32, ptr %gmp1808, align 1, !alias.scope !4, !noalias !3
  %c1810 = zext i32 %gml1809 to i64
  %wp1811 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1810, ptr %wp1811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011675c word 0xf940082a
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %t1813 = add i64 %r1812, 16
  %gmp1814 = inttoptr i64 %t1813 to ptr
  %gml1815 = load i64, ptr %gmp1814, align 1, !alias.scope !4, !noalias !3
  %wp1816 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1815, ptr %wp1816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116760 word 0x6b0e011f
  %r1817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1817 = load i64, ptr %r1817.p, align 8, !alias.scope !3, !noalias !4
  %c1818 = trunc i64 %r1817 to i32
  %r1819.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1819 = load i64, ptr %r1819.p, align 8, !alias.scope !3, !noalias !4
  %c1820 = trunc i64 %r1819 to i32
  %t1821 = sub i32 %c1818, %c1820
  %fn1822 = icmp slt i32 %t1821, 0
  %fz1823 = icmp eq i32 %t1821, 0
  %fc1824 = icmp uge i32 %c1818, %c1820
  %fx11825 = xor i32 %c1818, %c1820
  %fx21826 = xor i32 %c1818, %t1821
  %fva1827 = and i32 %fx11825, %fx21826
  %fv1828 = icmp slt i32 %fva1827, 0
  %nz1829 = zext i1 %fn1822 to i64
  %zz1830 = zext i1 %fz1823 to i64
  %cz1831 = zext i1 %fc1824 to i64
  %vz1832 = zext i1 %fv1828 to i64
  %ns1833 = shl i64 %nz1829, 31
  %zs1834 = shl i64 %zz1830, 30
  %cs1835 = shl i64 %cz1831, 29
  %vs1836 = shl i64 %vz1832, 28
  %nzor1837 = or i64 %ns1833, %zs1834
  %cvor1838 = or i64 %cs1835, %vs1836
  %nzcv1839 = or i64 %nzor1837, %cvor1838
  %wp1840 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1839, ptr %wp1840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116764 word 0x9a9f81c8
  %r1841.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1841 = load i64, ptr %r1841.p, align 8, !alias.scope !3, !noalias !4
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %fsh1844 = lshr i64 %r1842, 29
  %ftr1845 = trunc i64 %fsh1844 to i1
  %fsh1846 = lshr i64 %r1842, 30
  %ftr1847 = trunc i64 %fsh1846 to i1
  %fnz1848 = xor i1 %ftr1847, true
  %cond1843 = and i1 %ftr1845, %fnz1848
  %sel1849 = select i1 %cond1843, i64 %r1841, i64 0
  %wp1850 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1849, ptr %wp1850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116768 word 0x9baf2908
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %c1852 = trunc i64 %r1851 to i32
  %c1853 = zext i32 %c1852 to i64
  %r1854.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1854 = load i64, ptr %r1854.p, align 8, !alias.scope !3, !noalias !4
  %c1855 = trunc i64 %r1854 to i32
  %c1856 = zext i32 %c1855 to i64
  %t1857 = mul i64 %c1853, %c1856
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %t1859 = add i64 %r1858, %t1857
  %wp1860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1859, ptr %wp1860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011676c word 0xf957010a
  %r1861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1861 = load i64, ptr %r1861.p, align 8, !alias.scope !3, !noalias !4
  %t1862 = add i64 %r1861, 11776
  %gmp1863 = inttoptr i64 %t1862 to ptr
  %gml1864 = load i64, ptr %gmp1863, align 1, !alias.scope !4, !noalias !3
  %wp1865 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1864, ptr %wp1865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116770 word 0xf9570508
  %r1866.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1866 = load i64, ptr %r1866.p, align 8, !alias.scope !3, !noalias !4
  %t1867 = add i64 %r1866, 11784
  %gmp1868 = inttoptr i64 %t1867 to ptr
  %gml1869 = load i64, ptr %gmp1868, align 1, !alias.scope !4, !noalias !3
  %wp1870 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1869, ptr %wp1870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116774 word 0xa900212a
  %r1871.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1871 = load i64, ptr %r1871.p, align 8, !alias.scope !3, !noalias !4
  %t1872 = add i64 %r1871, 8
  %r1873.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1873 = load i64, ptr %r1873.p, align 8, !alias.scope !3, !noalias !4
  %gmp1874 = inttoptr i64 %r1871 to ptr
  store i64 %r1873, ptr %gmp1874, align 1, !alias.scope !4, !noalias !3
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %gmp1876 = inttoptr i64 %t1872 to ptr
  store i64 %r1875, ptr %gmp1876, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116778 word 0xb9400828
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %t1878 = add i64 %r1877, 8
  %gmp1879 = inttoptr i64 %t1878 to ptr
  %gml1880 = load i32, ptr %gmp1879, align 1, !alias.scope !4, !noalias !3
  %c1881 = zext i32 %gml1880 to i64
  %wp1882 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1881, ptr %wp1882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011677c word 0xf9400829
  %r1883.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1883 = load i64, ptr %r1883.p, align 8, !alias.scope !3, !noalias !4
  %t1884 = add i64 %r1883, 16
  %gmp1885 = inttoptr i64 %t1884 to ptr
  %gml1886 = load i64, ptr %gmp1885, align 1, !alias.scope !4, !noalias !3
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1886, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116780 word 0x6b0e011f
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %c1889 = trunc i64 %r1888 to i32
  %r1890.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1890 = load i64, ptr %r1890.p, align 8, !alias.scope !3, !noalias !4
  %c1891 = trunc i64 %r1890 to i32
  %t1892 = sub i32 %c1889, %c1891
  %fn1893 = icmp slt i32 %t1892, 0
  %fz1894 = icmp eq i32 %t1892, 0
  %fc1895 = icmp uge i32 %c1889, %c1891
  %fx11896 = xor i32 %c1889, %c1891
  %fx21897 = xor i32 %c1889, %t1892
  %fva1898 = and i32 %fx11896, %fx21897
  %fv1899 = icmp slt i32 %fva1898, 0
  %nz1900 = zext i1 %fn1893 to i64
  %zz1901 = zext i1 %fz1894 to i64
  %cz1902 = zext i1 %fc1895 to i64
  %vz1903 = zext i1 %fv1899 to i64
  %ns1904 = shl i64 %nz1900, 31
  %zs1905 = shl i64 %zz1901, 30
  %cs1906 = shl i64 %cz1902, 29
  %vs1907 = shl i64 %vz1903, 28
  %nzor1908 = or i64 %ns1904, %zs1905
  %cvor1909 = or i64 %cs1906, %vs1907
  %nzcv1910 = or i64 %nzor1908, %cvor1909
  %wp1911 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1910, ptr %wp1911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116784 word 0x9a9f81c8
  %r1912.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1912 = load i64, ptr %r1912.p, align 8, !alias.scope !3, !noalias !4
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %fsh1915 = lshr i64 %r1913, 29
  %ftr1916 = trunc i64 %fsh1915 to i1
  %fsh1917 = lshr i64 %r1913, 30
  %ftr1918 = trunc i64 %fsh1917 to i1
  %fnz1919 = xor i1 %ftr1918, true
  %cond1914 = and i1 %ftr1916, %fnz1919
  %sel1920 = select i1 %cond1914, i64 %r1912, i64 0
  %wp1921 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1920, ptr %wp1921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116788 word 0x9baf2508
  %r1922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1922 = load i64, ptr %r1922.p, align 8, !alias.scope !3, !noalias !4
  %c1923 = trunc i64 %r1922 to i32
  %c1924 = zext i32 %c1923 to i64
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %c1926 = trunc i64 %r1925 to i32
  %c1927 = zext i32 %c1926 to i64
  %t1928 = mul i64 %c1924, %c1927
  %r1929.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1929 = load i64, ptr %r1929.p, align 8, !alias.scope !3, !noalias !4
  %t1930 = add i64 %r1929, %t1928
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1930, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011678c word 0xf9584109
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %t1933 = add i64 %r1932, 12416
  %gmp1934 = inttoptr i64 %t1933 to ptr
  %gml1935 = load i64, ptr %gmp1934, align 1, !alias.scope !4, !noalias !3
  %wp1936 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1935, ptr %wp1936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116790 word 0xf958450a
  %r1937.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1937 = load i64, ptr %r1937.p, align 8, !alias.scope !3, !noalias !4
  %t1938 = add i64 %r1937, 12424
  %gmp1939 = inttoptr i64 %t1938 to ptr
  %gml1940 = load i64, ptr %gmp1939, align 1, !alias.scope !4, !noalias !3
  %wp1941 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1940, ptr %wp1941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116794 word 0xa9002b49
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %t1943 = add i64 %r1942, 8
  %r1944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1944 = load i64, ptr %r1944.p, align 8, !alias.scope !3, !noalias !4
  %gmp1945 = inttoptr i64 %r1942 to ptr
  store i64 %r1944, ptr %gmp1945, align 1, !alias.scope !4, !noalias !3
  %r1946.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1946 = load i64, ptr %r1946.p, align 8, !alias.scope !3, !noalias !4
  %gmp1947 = inttoptr i64 %t1943 to ptr
  store i64 %r1946, ptr %gmp1947, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116798 word 0xf9584909
  %r1948.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1948 = load i64, ptr %r1948.p, align 8, !alias.scope !3, !noalias !4
  %t1949 = add i64 %r1948, 12432
  %gmp1950 = inttoptr i64 %t1949 to ptr
  %gml1951 = load i64, ptr %gmp1950, align 1, !alias.scope !4, !noalias !3
  %wp1952 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1951, ptr %wp1952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011679c word 0xb9709908
  %r1953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1953 = load i64, ptr %r1953.p, align 8, !alias.scope !3, !noalias !4
  %t1954 = add i64 %r1953, 12440
  %gmp1955 = inttoptr i64 %t1954 to ptr
  %gml1956 = load i32, ptr %gmp1955, align 1, !alias.scope !4, !noalias !3
  %c1957 = zext i32 %gml1956 to i64
  %wp1958 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1957, ptr %wp1958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167a0 word 0xb9000b28
  %r1959.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1959 = load i64, ptr %r1959.p, align 8, !alias.scope !3, !noalias !4
  %t1960 = add i64 %r1959, 8
  %r1961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1961 = load i64, ptr %r1961.p, align 8, !alias.scope !3, !noalias !4
  %c1962 = trunc i64 %r1961 to i32
  %gmp1963 = inttoptr i64 %t1960 to ptr
  store i32 %c1962, ptr %gmp1963, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167a4 word 0xd10027a8
  %r1964.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1964 = load i64, ptr %r1964.p, align 8, !alias.scope !3, !noalias !4
  %t1965 = sub i64 %r1964, 9
  %wp1966 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1965, ptr %wp1966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167a8 word 0xf9000329
  %r1967.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1967 = load i64, ptr %r1967.p, align 8, !alias.scope !3, !noalias !4
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %gmp1969 = inttoptr i64 %r1967 to ptr
  store i64 %r1968, ptr %gmp1969, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167ac word 0x9400040b
  %wp1970 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360879024, ptr %wp1970, align 8, !alias.scope !3, !noalias !4
  call void @f_8001177d8(ptr %c)
  ; @pc 0x8001167b0 word 0xf84c7308
  %r1971.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1971 = load i64, ptr %r1971.p, align 8, !alias.scope !3, !noalias !4
  %t1972 = add i64 %r1971, 199
  %gmp1973 = inttoptr i64 %t1972 to ptr
  %gml1974 = load i64, ptr %gmp1973, align 1, !alias.scope !4, !noalias !3
  %wp1975 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1974, ptr %wp1975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167b4 word 0xf9000368
  %r1976.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1976 = load i64, ptr %r1976.p, align 8, !alias.scope !3, !noalias !4
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %gmp1978 = inttoptr i64 %r1976 to ptr
  store i64 %r1977, ptr %gmp1978, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167b8 word 0x385ff3a9
  %r1979.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1979 = load i64, ptr %r1979.p, align 8, !alias.scope !3, !noalias !4
  %t1980 = add i64 %r1979, -1
  %gmp1981 = inttoptr i64 %t1980 to ptr
  %gml1982 = load i8, ptr %gmp1981, align 1, !alias.scope !4, !noalias !3
  %c1983 = zext i8 %gml1982 to i64
  %wp1984 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1983, ptr %wp1984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167bc word 0xf94afeca
  %r1985.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1985 = load i64, ptr %r1985.p, align 8, !alias.scope !3, !noalias !4
  %t1986 = add i64 %r1985, 5624
  %gmp1987 = inttoptr i64 %t1986 to ptr
  %gml1988 = load i64, ptr %gmp1987, align 1, !alias.scope !4, !noalias !3
  %wp1989 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1988, ptr %wp1989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167c0 word 0xb95602c8
  %r1990.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1990 = load i64, ptr %r1990.p, align 8, !alias.scope !3, !noalias !4
  %t1991 = add i64 %r1990, 5632
  %gmp1992 = inttoptr i64 %t1991 to ptr
  %gml1993 = load i32, ptr %gmp1992, align 1, !alias.scope !4, !noalias !3
  %c1994 = zext i32 %gml1993 to i64
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1994, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167c4 word 0x39002369
  %r1996.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1996 = load i64, ptr %r1996.p, align 8, !alias.scope !3, !noalias !4
  %t1997 = add i64 %r1996, 8
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %c1999 = trunc i64 %r1998 to i32
  %c2000 = trunc i32 %c1999 to i8
  %gmp2001 = inttoptr i64 %t1997 to ptr
  store i8 %c2000, ptr %gmp2001, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167c8 word 0xf801c3ea
  %r2002.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2002 = load i64, ptr %r2002.p, align 8, !alias.scope !3, !noalias !4
  %t2003 = add i64 %r2002, 28
  %r2004.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2004 = load i64, ptr %r2004.p, align 8, !alias.scope !3, !noalias !4
  %gmp2005 = inttoptr i64 %t2003 to ptr
  store i64 %r2004, ptr %gmp2005, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167cc word 0xb90027e8
  %r2006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2006 = load i64, ptr %r2006.p, align 8, !alias.scope !3, !noalias !4
  %t2007 = add i64 %r2006, 36
  %r2008.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2008 = load i64, ptr %r2008.p, align 8, !alias.scope !3, !noalias !4
  %c2009 = trunc i64 %r2008 to i32
  %gmp2010 = inttoptr i64 %t2007 to ptr
  store i32 %c2009, ptr %gmp2010, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001167d0 word 0x14000201
  br label %L_800116fd4
L_8001167d4:
  ; @pc 0x8001167d4 word 0xf94f6681
  %r2011.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2011 = load i64, ptr %r2011.p, align 8, !alias.scope !3, !noalias !4
  %t2012 = add i64 %r2011, 7880
  %gmp2013 = inttoptr i64 %t2012 to ptr
  %gml2014 = load i64, ptr %gmp2013, align 1, !alias.scope !4, !noalias !3
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167d8 word 0x9100418c
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %t2017 = add i64 %r2016, 16
  %wp2018 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2017, ptr %wp2018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167dc word 0x3940226d
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %t2020 = add i64 %r2019, 8
  %gmp2021 = inttoptr i64 %t2020 to ptr
  %gml2022 = load i8, ptr %gmp2021, align 1, !alias.scope !4, !noalias !3
  %c2023 = zext i8 %gml2022 to i64
  %wp2024 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2023, ptr %wp2024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167e0 word 0xb940082e
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %t2026 = add i64 %r2025, 8
  %gmp2027 = inttoptr i64 %t2026 to ptr
  %gml2028 = load i32, ptr %gmp2027, align 1, !alias.scope !4, !noalias !3
  %c2029 = zext i32 %gml2028 to i64
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2029, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167e4 word 0xf940082f
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %t2032 = add i64 %r2031, 16
  %gmp2033 = inttoptr i64 %t2032 to ptr
  %gml2034 = load i64, ptr %gmp2033, align 1, !alias.scope !4, !noalias !3
  %wp2035 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml2034, ptr %wp2035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167e8 word 0x6b0d01df
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %c2037 = trunc i64 %r2036 to i32
  %r2038.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2038 = load i64, ptr %r2038.p, align 8, !alias.scope !3, !noalias !4
  %c2039 = trunc i64 %r2038 to i32
  %t2040 = sub i32 %c2037, %c2039
  %fn2041 = icmp slt i32 %t2040, 0
  %fz2042 = icmp eq i32 %t2040, 0
  %fc2043 = icmp uge i32 %c2037, %c2039
  %fx12044 = xor i32 %c2037, %c2039
  %fx22045 = xor i32 %c2037, %t2040
  %fva2046 = and i32 %fx12044, %fx22045
  %fv2047 = icmp slt i32 %fva2046, 0
  %nz2048 = zext i1 %fn2041 to i64
  %zz2049 = zext i1 %fz2042 to i64
  %cz2050 = zext i1 %fc2043 to i64
  %vz2051 = zext i1 %fv2047 to i64
  %ns2052 = shl i64 %nz2048, 31
  %zs2053 = shl i64 %zz2049, 30
  %cs2054 = shl i64 %cz2050, 29
  %vs2055 = shl i64 %vz2051, 28
  %nzor2056 = or i64 %ns2052, %zs2053
  %cvor2057 = or i64 %cs2054, %vs2055
  %nzcv2058 = or i64 %nzor2056, %cvor2057
  %wp2059 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2058, ptr %wp2059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167ec word 0x52879c0e
  %c2060 = zext i32 15584 to i64
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167f0 word 0x9a9f81b0
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %r2063.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2063 = load i64, ptr %r2063.p, align 8, !alias.scope !3, !noalias !4
  %fsh2065 = lshr i64 %r2063, 29
  %ftr2066 = trunc i64 %fsh2065 to i1
  %fsh2067 = lshr i64 %r2063, 30
  %ftr2068 = trunc i64 %fsh2067 to i1
  %fnz2069 = xor i1 %ftr2068, true
  %cond2064 = and i1 %ftr2066, %fnz2069
  %sel2070 = select i1 %cond2064, i64 %r2062, i64 0
  %wp2071 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %sel2070, ptr %wp2071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167f4 word 0x9bae3e0f
  %r2072.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2072 = load i64, ptr %r2072.p, align 8, !alias.scope !3, !noalias !4
  %c2073 = trunc i64 %r2072 to i32
  %c2074 = zext i32 %c2073 to i64
  %r2075.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2075 = load i64, ptr %r2075.p, align 8, !alias.scope !3, !noalias !4
  %c2076 = trunc i64 %r2075 to i32
  %c2077 = zext i32 %c2076 to i64
  %t2078 = mul i64 %c2074, %c2077
  %r2079.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2079 = load i64, ptr %r2079.p, align 8, !alias.scope !3, !noalias !4
  %t2080 = add i64 %r2079, %t2078
  %wp2081 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2080, ptr %wp2081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167f8 word 0xd2c00030
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4294967296, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001167fc word 0xf2e00810
  %r2083.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2083 = load i64, ptr %r2083.p, align 8, !alias.scope !3, !noalias !4
  %t2084 = and i64 %r2083, 281474976710655
  %t2085 = or i64 %t2084, 18014398509481984
  %wp2086 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2085, ptr %wp2086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116800 word 0xf95e21f6
  %r2087.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2087 = load i64, ptr %r2087.p, align 8, !alias.scope !3, !noalias !4
  %t2088 = add i64 %r2087, 15424
  %gmp2089 = inttoptr i64 %t2088 to ptr
  %gml2090 = load i64, ptr %gmp2089, align 1, !alias.scope !4, !noalias !3
  %wp2091 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2090, ptr %wp2091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116804 word 0xd280040f
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 32, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116808 word 0xb900a3e8
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %t2094 = add i64 %r2093, 160
  %r2095.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2095 = load i64, ptr %r2095.p, align 8, !alias.scope !3, !noalias !4
  %c2096 = trunc i64 %r2095 to i32
  %gmp2097 = inttoptr i64 %t2094 to ptr
  store i32 %c2096, ptr %gmp2097, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011680c word 0x91004148
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %t2099 = add i64 %r2098, 16
  %wp2100 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2099, ptr %wp2100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116810 word 0xa908afec
  %r2101.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2101 = load i64, ptr %r2101.p, align 8, !alias.scope !3, !noalias !4
  %t2102 = add i64 %r2101, 136
  %t2103 = add i64 %t2102, 8
  %r2104.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2104 = load i64, ptr %r2104.p, align 8, !alias.scope !3, !noalias !4
  %gmp2105 = inttoptr i64 %t2102 to ptr
  store i64 %r2104, ptr %gmp2105, align 1, !alias.scope !4, !noalias !3
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %gmp2107 = inttoptr i64 %t2103 to ptr
  store i64 %r2106, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116814 word 0xf900037f
  %r2108.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2108 = load i64, ptr %r2108.p, align 8, !alias.scope !3, !noalias !4
  %gmp2109 = inttoptr i64 %r2108 to ptr
  store i64 0, ptr %gmp2109, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116818 word 0x3900237f
  %r2110.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2110 = load i64, ptr %r2110.p, align 8, !alias.scope !3, !noalias !4
  %t2111 = add i64 %r2110, 8
  %c2112 = trunc i32 0 to i8
  %gmp2113 = inttoptr i64 %t2111 to ptr
  store i8 %c2112, ptr %gmp2113, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011681c word 0xb900bfff
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %t2115 = add i64 %r2114, 188
  %gmp2116 = inttoptr i64 %t2115 to ptr
  store i32 0, ptr %gmp2116, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116820 word 0xf2c0006f
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %t2118 = and i64 %r2117, -281470681743361
  %t2119 = or i64 %t2118, 12884901888
  %wp2120 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2119, ptr %wp2120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116824 word 0xa904a3ff
  %r2121.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2121 = load i64, ptr %r2121.p, align 8, !alias.scope !3, !noalias !4
  %t2122 = add i64 %r2121, 72
  %t2123 = add i64 %t2122, 8
  %gmp2124 = inttoptr i64 %t2122 to ptr
  store i64 0, ptr %gmp2124, align 1, !alias.scope !4, !noalias !3
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %gmp2126 = inttoptr i64 %t2123 to ptr
  store i64 %r2125, ptr %gmp2126, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116828 word 0x528000c8
  %c2127 = zext i32 6 to i64
  %wp2128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2127, ptr %wp2128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011682c word 0xa905ffff
  %r2129.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2129 = load i64, ptr %r2129.p, align 8, !alias.scope !3, !noalias !4
  %t2130 = add i64 %r2129, 88
  %t2131 = add i64 %t2130, 8
  %gmp2132 = inttoptr i64 %t2130 to ptr
  store i64 0, ptr %gmp2132, align 1, !alias.scope !4, !noalias !3
  %gmp2133 = inttoptr i64 %t2131 to ptr
  store i64 0, ptr %gmp2133, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116830 word 0x29067fe8
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %t2135 = add i64 %r2134, 48
  %t2136 = add i64 %t2135, 4
  %r2137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2137 = load i64, ptr %r2137.p, align 8, !alias.scope !3, !noalias !4
  %c2138 = trunc i64 %r2137 to i32
  %gmp2139 = inttoptr i64 %t2135 to ptr
  store i32 %c2138, ptr %gmp2139, align 1, !alias.scope !4, !noalias !3
  %gmp2140 = inttoptr i64 %t2136 to ptr
  store i32 0, ptr %gmp2140, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116834 word 0xa90043ef
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %t2142 = add i64 %r2141, 8
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2143 = load i64, ptr %r2143.p, align 8, !alias.scope !3, !noalias !4
  %gmp2144 = inttoptr i64 %r2141 to ptr
  store i64 %r2143, ptr %gmp2144, align 1, !alias.scope !4, !noalias !3
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %gmp2146 = inttoptr i64 %t2142 to ptr
  store i64 %r2145, ptr %gmp2146, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116838 word 0x929ffed0
  %wp2147 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 -65527, ptr %wp2147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011683c word 0x529fffef
  %c2148 = zext i32 65535 to i64
  %wp2149 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2148, ptr %wp2149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116840 word 0xf2a00010
  %r2150.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2150 = load i64, ptr %r2150.p, align 8, !alias.scope !3, !noalias !4
  %t2151 = and i64 %r2150, -4294901761
  %t2152 = or i64 %t2151, 0
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116844 word 0xa90143ef
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %t2155 = add i64 %r2154, 16
  %t2156 = add i64 %t2155, 8
  %r2157.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2157 = load i64, ptr %r2157.p, align 8, !alias.scope !3, !noalias !4
  %gmp2158 = inttoptr i64 %t2155 to ptr
  store i64 %r2157, ptr %gmp2158, align 1, !alias.scope !4, !noalias !3
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %gmp2160 = inttoptr i64 %t2156 to ptr
  store i64 %r2159, ptr %gmp2160, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116848 word 0xd2c0002f
  %wp2161 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4294967296, ptr %wp2161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011684c word 0xb2607ff0
  %t2162 = or i64 0, -4294967296
  %wp2163 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2162, ptr %wp2163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116850 word 0xa90243ef
  %r2164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2164 = load i64, ptr %r2164.p, align 8, !alias.scope !3, !noalias !4
  %t2165 = add i64 %r2164, 32
  %t2166 = add i64 %t2165, 8
  %r2167.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2167 = load i64, ptr %r2167.p, align 8, !alias.scope !3, !noalias !4
  %gmp2168 = inttoptr i64 %t2165 to ptr
  store i64 %r2167, ptr %gmp2168, align 1, !alias.scope !4, !noalias !3
  %r2169.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2169 = load i64, ptr %r2169.p, align 8, !alias.scope !3, !noalias !4
  %gmp2170 = inttoptr i64 %t2166 to ptr
  store i64 %r2169, ptr %gmp2170, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116854 word 0xb2091bef
  %t2171 = or i64 0, 4575657222473777152
  %wp2172 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2171, ptr %wp2172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116858 word 0xd2e7f010
  %wp2173 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4575657221408423936, ptr %wp2173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011685c word 0xf80a4310
  %r2174.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2174 = load i64, ptr %r2174.p, align 8, !alias.scope !3, !noalias !4
  %t2175 = add i64 %r2174, 164
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %gmp2177 = inttoptr i64 %t2175 to ptr
  store i64 %r2176, ptr %gmp2177, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116860 word 0xa903bfef
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %t2179 = add i64 %r2178, 56
  %t2180 = add i64 %t2179, 8
  %r2181.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2181 = load i64, ptr %r2181.p, align 8, !alias.scope !3, !noalias !4
  %gmp2182 = inttoptr i64 %t2179 to ptr
  store i64 %r2181, ptr %gmp2182, align 1, !alias.scope !4, !noalias !3
  %r2183.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2183 = load i64, ptr %r2183.p, align 8, !alias.scope !3, !noalias !4
  %gmp2184 = inttoptr i64 %t2180 to ptr
  store i64 %r2183, ptr %gmp2184, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116864 word 0x90015b6f
  %wp2185 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 34406408192, ptr %wp2185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116868 word 0x9115e5ef
  %r2186.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2186 = load i64, ptr %r2186.p, align 8, !alias.scope !3, !noalias !4
  %t2187 = add i64 %r2186, 1401
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011686c word 0xb2087bf0
  %t2189 = or i64 0, -36028797027352577
  %wp2190 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2189, ptr %wp2190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116870 word 0xf9004ff0
  %r2191.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2191 = load i64, ptr %r2191.p, align 8, !alias.scope !3, !noalias !4
  %t2192 = add i64 %r2191, 152
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %gmp2194 = inttoptr i64 %t2192 to ptr
  store i64 %r2193, ptr %gmp2194, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116874 word 0xa907c3eb
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %t2196 = add i64 %r2195, 120
  %t2197 = add i64 %t2196, 8
  %r2198.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2198 = load i64, ptr %r2198.p, align 8, !alias.scope !3, !noalias !4
  %gmp2199 = inttoptr i64 %t2196 to ptr
  store i64 %r2198, ptr %gmp2199, align 1, !alias.scope !4, !noalias !3
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %gmp2201 = inttoptr i64 %t2197 to ptr
  store i64 %r2200, ptr %gmp2201, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116878 word 0xa906bfff
  %r2202.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2202 = load i64, ptr %r2202.p, align 8, !alias.scope !3, !noalias !4
  %t2203 = add i64 %r2202, 104
  %t2204 = add i64 %t2203, 8
  %gmp2205 = inttoptr i64 %t2203 to ptr
  store i64 0, ptr %gmp2205, align 1, !alias.scope !4, !noalias !3
  %r2206.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2206 = load i64, ptr %r2206.p, align 8, !alias.scope !3, !noalias !4
  %gmp2207 = inttoptr i64 %t2204 to ptr
  store i64 %r2206, ptr %gmp2207, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011687c word 0xb9400828
  %r2208.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2208 = load i64, ptr %r2208.p, align 8, !alias.scope !3, !noalias !4
  %t2209 = add i64 %r2208, 8
  %gmp2210 = inttoptr i64 %t2209 to ptr
  %gml2211 = load i32, ptr %gmp2210, align 1, !alias.scope !4, !noalias !3
  %c2212 = zext i32 %gml2211 to i64
  %wp2213 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2212, ptr %wp2213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116880 word 0xf940082a
  %r2214.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2214 = load i64, ptr %r2214.p, align 8, !alias.scope !3, !noalias !4
  %t2215 = add i64 %r2214, 16
  %gmp2216 = inttoptr i64 %t2215 to ptr
  %gml2217 = load i64, ptr %gmp2216, align 1, !alias.scope !4, !noalias !3
  %wp2218 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2217, ptr %wp2218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116884 word 0x6b0d011f
  %r2219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2219 = load i64, ptr %r2219.p, align 8, !alias.scope !3, !noalias !4
  %c2220 = trunc i64 %r2219 to i32
  %r2221.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2221 = load i64, ptr %r2221.p, align 8, !alias.scope !3, !noalias !4
  %c2222 = trunc i64 %r2221 to i32
  %t2223 = sub i32 %c2220, %c2222
  %fn2224 = icmp slt i32 %t2223, 0
  %fz2225 = icmp eq i32 %t2223, 0
  %fc2226 = icmp uge i32 %c2220, %c2222
  %fx12227 = xor i32 %c2220, %c2222
  %fx22228 = xor i32 %c2220, %t2223
  %fva2229 = and i32 %fx12227, %fx22228
  %fv2230 = icmp slt i32 %fva2229, 0
  %nz2231 = zext i1 %fn2224 to i64
  %zz2232 = zext i1 %fz2225 to i64
  %cz2233 = zext i1 %fc2226 to i64
  %vz2234 = zext i1 %fv2230 to i64
  %ns2235 = shl i64 %nz2231, 31
  %zs2236 = shl i64 %zz2232, 30
  %cs2237 = shl i64 %cz2233, 29
  %vs2238 = shl i64 %vz2234, 28
  %nzor2239 = or i64 %ns2235, %zs2236
  %cvor2240 = or i64 %cs2237, %vs2238
  %nzcv2241 = or i64 %nzor2239, %cvor2240
  %wp2242 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2241, ptr %wp2242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116888 word 0x9a9f81a8
  %r2243.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2243 = load i64, ptr %r2243.p, align 8, !alias.scope !3, !noalias !4
  %r2244.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2244 = load i64, ptr %r2244.p, align 8, !alias.scope !3, !noalias !4
  %fsh2246 = lshr i64 %r2244, 29
  %ftr2247 = trunc i64 %fsh2246 to i1
  %fsh2248 = lshr i64 %r2244, 30
  %ftr2249 = trunc i64 %fsh2248 to i1
  %fnz2250 = xor i1 %ftr2249, true
  %cond2245 = and i1 %ftr2247, %fnz2250
  %sel2251 = select i1 %cond2245, i64 %r2243, i64 0
  %wp2252 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2251, ptr %wp2252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011688c word 0x9bae2908
  %r2253.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2253 = load i64, ptr %r2253.p, align 8, !alias.scope !3, !noalias !4
  %c2254 = trunc i64 %r2253 to i32
  %c2255 = zext i32 %c2254 to i64
  %r2256.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2256 = load i64, ptr %r2256.p, align 8, !alias.scope !3, !noalias !4
  %c2257 = trunc i64 %r2256 to i32
  %c2258 = zext i32 %c2257 to i64
  %t2259 = mul i64 %c2255, %c2258
  %r2260.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2260 = load i64, ptr %r2260.p, align 8, !alias.scope !3, !noalias !4
  %t2261 = add i64 %r2260, %t2259
  %wp2262 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2261, ptr %wp2262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116890 word 0xf957010a
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %t2264 = add i64 %r2263, 11776
  %gmp2265 = inttoptr i64 %t2264 to ptr
  %gml2266 = load i64, ptr %gmp2265, align 1, !alias.scope !4, !noalias !3
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2266, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116894 word 0xf9570508
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %t2269 = add i64 %r2268, 11784
  %gmp2270 = inttoptr i64 %t2269 to ptr
  %gml2271 = load i64, ptr %gmp2270, align 1, !alias.scope !4, !noalias !3
  %wp2272 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2271, ptr %wp2272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116898 word 0xa900212a
  %r2273.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2273 = load i64, ptr %r2273.p, align 8, !alias.scope !3, !noalias !4
  %t2274 = add i64 %r2273, 8
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %gmp2276 = inttoptr i64 %r2273 to ptr
  store i64 %r2275, ptr %gmp2276, align 1, !alias.scope !4, !noalias !3
  %r2277.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2277 = load i64, ptr %r2277.p, align 8, !alias.scope !3, !noalias !4
  %gmp2278 = inttoptr i64 %t2274 to ptr
  store i64 %r2277, ptr %gmp2278, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011689c word 0xb9400828
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %t2280 = add i64 %r2279, 8
  %gmp2281 = inttoptr i64 %t2280 to ptr
  %gml2282 = load i32, ptr %gmp2281, align 1, !alias.scope !4, !noalias !3
  %c2283 = zext i32 %gml2282 to i64
  %wp2284 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2283, ptr %wp2284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168a0 word 0xf9400829
  %r2285.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2285 = load i64, ptr %r2285.p, align 8, !alias.scope !3, !noalias !4
  %t2286 = add i64 %r2285, 16
  %gmp2287 = inttoptr i64 %t2286 to ptr
  %gml2288 = load i64, ptr %gmp2287, align 1, !alias.scope !4, !noalias !3
  %wp2289 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2288, ptr %wp2289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168a4 word 0x6b0d011f
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %c2291 = trunc i64 %r2290 to i32
  %r2292.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2292 = load i64, ptr %r2292.p, align 8, !alias.scope !3, !noalias !4
  %c2293 = trunc i64 %r2292 to i32
  %t2294 = sub i32 %c2291, %c2293
  %fn2295 = icmp slt i32 %t2294, 0
  %fz2296 = icmp eq i32 %t2294, 0
  %fc2297 = icmp uge i32 %c2291, %c2293
  %fx12298 = xor i32 %c2291, %c2293
  %fx22299 = xor i32 %c2291, %t2294
  %fva2300 = and i32 %fx12298, %fx22299
  %fv2301 = icmp slt i32 %fva2300, 0
  %nz2302 = zext i1 %fn2295 to i64
  %zz2303 = zext i1 %fz2296 to i64
  %cz2304 = zext i1 %fc2297 to i64
  %vz2305 = zext i1 %fv2301 to i64
  %ns2306 = shl i64 %nz2302, 31
  %zs2307 = shl i64 %zz2303, 30
  %cs2308 = shl i64 %cz2304, 29
  %vs2309 = shl i64 %vz2305, 28
  %nzor2310 = or i64 %ns2306, %zs2307
  %cvor2311 = or i64 %cs2308, %vs2309
  %nzcv2312 = or i64 %nzor2310, %cvor2311
  %wp2313 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2312, ptr %wp2313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168a8 word 0x9a9f81a8
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %fsh2317 = lshr i64 %r2315, 29
  %ftr2318 = trunc i64 %fsh2317 to i1
  %fsh2319 = lshr i64 %r2315, 30
  %ftr2320 = trunc i64 %fsh2319 to i1
  %fnz2321 = xor i1 %ftr2320, true
  %cond2316 = and i1 %ftr2318, %fnz2321
  %sel2322 = select i1 %cond2316, i64 %r2314, i64 0
  %wp2323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2322, ptr %wp2323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168ac word 0x9bae2508
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %c2325 = trunc i64 %r2324 to i32
  %c2326 = zext i32 %c2325 to i64
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %c2328 = trunc i64 %r2327 to i32
  %c2329 = zext i32 %c2328 to i64
  %t2330 = mul i64 %c2326, %c2329
  %r2331.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2331 = load i64, ptr %r2331.p, align 8, !alias.scope !3, !noalias !4
  %t2332 = add i64 %r2331, %t2330
  %wp2333 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2332, ptr %wp2333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168b0 word 0x14000036
  br label %L_800116988
L_8001168b4:
  ; @pc 0x8001168b4 word 0xf94f6681
  %r2334.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2334 = load i64, ptr %r2334.p, align 8, !alias.scope !3, !noalias !4
  %t2335 = add i64 %r2334, 7880
  %gmp2336 = inttoptr i64 %t2335 to ptr
  %gml2337 = load i64, ptr %gmp2336, align 1, !alias.scope !4, !noalias !3
  %wp2338 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2337, ptr %wp2338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168b8 word 0x52879c10
  %c2339 = zext i32 15584 to i64
  %wp2340 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2339, ptr %wp2340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168bc word 0x9100418c
  %r2341.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2341 = load i64, ptr %r2341.p, align 8, !alias.scope !3, !noalias !4
  %t2342 = add i64 %r2341, 16
  %wp2343 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2342, ptr %wp2343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168c0 word 0x3940226d
  %r2344.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2344 = load i64, ptr %r2344.p, align 8, !alias.scope !3, !noalias !4
  %t2345 = add i64 %r2344, 8
  %gmp2346 = inttoptr i64 %t2345 to ptr
  %gml2347 = load i8, ptr %gmp2346, align 1, !alias.scope !4, !noalias !3
  %c2348 = zext i8 %gml2347 to i64
  %wp2349 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2348, ptr %wp2349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168c4 word 0xb940082e
  %r2350.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2350 = load i64, ptr %r2350.p, align 8, !alias.scope !3, !noalias !4
  %t2351 = add i64 %r2350, 8
  %gmp2352 = inttoptr i64 %t2351 to ptr
  %gml2353 = load i32, ptr %gmp2352, align 1, !alias.scope !4, !noalias !3
  %c2354 = zext i32 %gml2353 to i64
  %wp2355 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2354, ptr %wp2355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168c8 word 0xf940082f
  %r2356.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2356 = load i64, ptr %r2356.p, align 8, !alias.scope !3, !noalias !4
  %t2357 = add i64 %r2356, 16
  %gmp2358 = inttoptr i64 %t2357 to ptr
  %gml2359 = load i64, ptr %gmp2358, align 1, !alias.scope !4, !noalias !3
  %wp2360 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml2359, ptr %wp2360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168cc word 0x6b0d01df
  %r2361.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2361 = load i64, ptr %r2361.p, align 8, !alias.scope !3, !noalias !4
  %c2362 = trunc i64 %r2361 to i32
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %c2364 = trunc i64 %r2363 to i32
  %t2365 = sub i32 %c2362, %c2364
  %fn2366 = icmp slt i32 %t2365, 0
  %fz2367 = icmp eq i32 %t2365, 0
  %fc2368 = icmp uge i32 %c2362, %c2364
  %fx12369 = xor i32 %c2362, %c2364
  %fx22370 = xor i32 %c2362, %t2365
  %fva2371 = and i32 %fx12369, %fx22370
  %fv2372 = icmp slt i32 %fva2371, 0
  %nz2373 = zext i1 %fn2366 to i64
  %zz2374 = zext i1 %fz2367 to i64
  %cz2375 = zext i1 %fc2368 to i64
  %vz2376 = zext i1 %fv2372 to i64
  %ns2377 = shl i64 %nz2373, 31
  %zs2378 = shl i64 %zz2374, 30
  %cs2379 = shl i64 %cz2375, 29
  %vs2380 = shl i64 %vz2376, 28
  %nzor2381 = or i64 %ns2377, %zs2378
  %cvor2382 = or i64 %cs2379, %vs2380
  %nzcv2383 = or i64 %nzor2381, %cvor2382
  %wp2384 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2383, ptr %wp2384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168d0 word 0x9a9f81ae
  %r2385.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2385 = load i64, ptr %r2385.p, align 8, !alias.scope !3, !noalias !4
  %r2386.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2386 = load i64, ptr %r2386.p, align 8, !alias.scope !3, !noalias !4
  %fsh2388 = lshr i64 %r2386, 29
  %ftr2389 = trunc i64 %fsh2388 to i1
  %fsh2390 = lshr i64 %r2386, 30
  %ftr2391 = trunc i64 %fsh2390 to i1
  %fnz2392 = xor i1 %ftr2391, true
  %cond2387 = and i1 %ftr2389, %fnz2392
  %sel2393 = select i1 %cond2387, i64 %r2385, i64 0
  %wp2394 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %sel2393, ptr %wp2394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168d4 word 0x9bb03dce
  %r2395.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2395 = load i64, ptr %r2395.p, align 8, !alias.scope !3, !noalias !4
  %c2396 = trunc i64 %r2395 to i32
  %c2397 = zext i32 %c2396 to i64
  %r2398.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2398 = load i64, ptr %r2398.p, align 8, !alias.scope !3, !noalias !4
  %c2399 = trunc i64 %r2398 to i32
  %c2400 = zext i32 %c2399 to i64
  %t2401 = mul i64 %c2397, %c2400
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %t2403 = add i64 %r2402, %t2401
  %wp2404 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2403, ptr %wp2404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168d8 word 0x929ffe4f
  %wp2405 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 -65523, ptr %wp2405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168dc word 0xf2a0000f
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %t2407 = and i64 %r2406, -4294901761
  %t2408 = or i64 %t2407, 0
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2408, ptr %wp2409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168e0 word 0xf95e21d6
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %t2411 = add i64 %r2410, 15424
  %gmp2412 = inttoptr i64 %t2411 to ptr
  %gml2413 = load i64, ptr %gmp2412, align 1, !alias.scope !4, !noalias !3
  %wp2414 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2413, ptr %wp2414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168e4 word 0xd280020e
  %wp2415 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 16, ptr %wp2415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168e8 word 0xb900a3e8
  %r2416.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2416 = load i64, ptr %r2416.p, align 8, !alias.scope !3, !noalias !4
  %t2417 = add i64 %r2416, 160
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %c2419 = trunc i64 %r2418 to i32
  %gmp2420 = inttoptr i64 %t2417 to ptr
  store i32 %c2419, ptr %gmp2420, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001168ec word 0x91004148
  %r2421.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2421 = load i64, ptr %r2421.p, align 8, !alias.scope !3, !noalias !4
  %t2422 = add i64 %r2421, 16
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2422, ptr %wp2423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001168f0 word 0xa908afec
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %t2425 = add i64 %r2424, 136
  %t2426 = add i64 %t2425, 8
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %gmp2428 = inttoptr i64 %t2425 to ptr
  store i64 %r2427, ptr %gmp2428, align 1, !alias.scope !4, !noalias !3
  %r2429.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2429 = load i64, ptr %r2429.p, align 8, !alias.scope !3, !noalias !4
  %gmp2430 = inttoptr i64 %t2426 to ptr
  store i64 %r2429, ptr %gmp2430, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001168f4 word 0xf900037f
  %r2431.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2431 = load i64, ptr %r2431.p, align 8, !alias.scope !3, !noalias !4
  %gmp2432 = inttoptr i64 %r2431 to ptr
  store i64 0, ptr %gmp2432, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001168f8 word 0x3900237f
  %r2433.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2433 = load i64, ptr %r2433.p, align 8, !alias.scope !3, !noalias !4
  %t2434 = add i64 %r2433, 8
  %c2435 = trunc i32 0 to i8
  %gmp2436 = inttoptr i64 %t2434 to ptr
  store i8 %c2435, ptr %gmp2436, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001168fc word 0xb900bfff
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %t2438 = add i64 %r2437, 188
  %gmp2439 = inttoptr i64 %t2438 to ptr
  store i32 0, ptr %gmp2439, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116900 word 0xf2c0006e
  %r2440.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2440 = load i64, ptr %r2440.p, align 8, !alias.scope !3, !noalias !4
  %t2441 = and i64 %r2440, -281470681743361
  %t2442 = or i64 %t2441, 12884901888
  %wp2443 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2442, ptr %wp2443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116904 word 0xa904a3ff
  %r2444.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2444 = load i64, ptr %r2444.p, align 8, !alias.scope !3, !noalias !4
  %t2445 = add i64 %r2444, 72
  %t2446 = add i64 %t2445, 8
  %gmp2447 = inttoptr i64 %t2445 to ptr
  store i64 0, ptr %gmp2447, align 1, !alias.scope !4, !noalias !3
  %r2448.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2448 = load i64, ptr %r2448.p, align 8, !alias.scope !3, !noalias !4
  %gmp2449 = inttoptr i64 %t2446 to ptr
  store i64 %r2448, ptr %gmp2449, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116908 word 0x52800108
  %c2450 = zext i32 8 to i64
  %wp2451 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2450, ptr %wp2451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011690c word 0xa905ffff
  %r2452.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2452 = load i64, ptr %r2452.p, align 8, !alias.scope !3, !noalias !4
  %t2453 = add i64 %r2452, 88
  %t2454 = add i64 %t2453, 8
  %gmp2455 = inttoptr i64 %t2453 to ptr
  store i64 0, ptr %gmp2455, align 1, !alias.scope !4, !noalias !3
  %gmp2456 = inttoptr i64 %t2454 to ptr
  store i64 0, ptr %gmp2456, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116910 word 0x29067fe8
  %r2457.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2457 = load i64, ptr %r2457.p, align 8, !alias.scope !3, !noalias !4
  %t2458 = add i64 %r2457, 48
  %t2459 = add i64 %t2458, 4
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %c2461 = trunc i64 %r2460 to i32
  %gmp2462 = inttoptr i64 %t2458 to ptr
  store i32 %c2461, ptr %gmp2462, align 1, !alias.scope !4, !noalias !3
  %gmp2463 = inttoptr i64 %t2459 to ptr
  store i32 0, ptr %gmp2463, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116914 word 0xa9007fee
  %r2464.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2464 = load i64, ptr %r2464.p, align 8, !alias.scope !3, !noalias !4
  %t2465 = add i64 %r2464, 8
  %r2466.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2466 = load i64, ptr %r2466.p, align 8, !alias.scope !3, !noalias !4
  %gmp2467 = inttoptr i64 %r2464 to ptr
  store i64 %r2466, ptr %gmp2467, align 1, !alias.scope !4, !noalias !3
  %gmp2468 = inttoptr i64 %t2465 to ptr
  store i64 0, ptr %gmp2468, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116918 word 0x529fffee
  %c2469 = zext i32 65535 to i64
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011691c word 0xa9013fee
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %t2472 = add i64 %r2471, 16
  %t2473 = add i64 %t2472, 8
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %gmp2475 = inttoptr i64 %t2472 to ptr
  store i64 %r2474, ptr %gmp2475, align 1, !alias.scope !4, !noalias !3
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %gmp2477 = inttoptr i64 %t2473 to ptr
  store i64 %r2476, ptr %gmp2477, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116920 word 0xd2c0002e
  %wp2478 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 4294967296, ptr %wp2478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116924 word 0xb2607fef
  %t2479 = or i64 0, -4294967296
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116928 word 0xa9023fee
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %t2482 = add i64 %r2481, 32
  %t2483 = add i64 %t2482, 8
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %gmp2485 = inttoptr i64 %t2482 to ptr
  store i64 %r2484, ptr %gmp2485, align 1, !alias.scope !4, !noalias !3
  %r2486.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2486 = load i64, ptr %r2486.p, align 8, !alias.scope !3, !noalias !4
  %gmp2487 = inttoptr i64 %t2483 to ptr
  store i64 %r2486, ptr %gmp2487, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011692c word 0xb2091bee
  %t2488 = or i64 0, 4575657222473777152
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116930 word 0xd2e7f00f
  %wp2490 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4575657221408423936, ptr %wp2490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116934 word 0xf80a430f
  %r2491.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2491 = load i64, ptr %r2491.p, align 8, !alias.scope !3, !noalias !4
  %t2492 = add i64 %r2491, 164
  %r2493.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2493 = load i64, ptr %r2493.p, align 8, !alias.scope !3, !noalias !4
  %gmp2494 = inttoptr i64 %t2492 to ptr
  store i64 %r2493, ptr %gmp2494, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116938 word 0xa903bbee
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %t2496 = add i64 %r2495, 56
  %t2497 = add i64 %t2496, 8
  %r2498.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2498 = load i64, ptr %r2498.p, align 8, !alias.scope !3, !noalias !4
  %gmp2499 = inttoptr i64 %t2496 to ptr
  store i64 %r2498, ptr %gmp2499, align 1, !alias.scope !4, !noalias !3
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %gmp2501 = inttoptr i64 %t2497 to ptr
  store i64 %r2500, ptr %gmp2501, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011693c word 0x9001588e
  %wp2502 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34406031360, ptr %wp2502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116940 word 0x912d55ce
  %r2503.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2503 = load i64, ptr %r2503.p, align 8, !alias.scope !3, !noalias !4
  %t2504 = add i64 %r2503, 2901
  %wp2505 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2504, ptr %wp2505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116944 word 0xb2087bef
  %t2506 = or i64 0, -36028797027352577
  %wp2507 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2506, ptr %wp2507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116948 word 0xf9004fef
  %r2508.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2508 = load i64, ptr %r2508.p, align 8, !alias.scope !3, !noalias !4
  %t2509 = add i64 %r2508, 152
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %gmp2511 = inttoptr i64 %t2509 to ptr
  store i64 %r2510, ptr %gmp2511, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011694c word 0xa907bfeb
  %r2512.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2512 = load i64, ptr %r2512.p, align 8, !alias.scope !3, !noalias !4
  %t2513 = add i64 %r2512, 120
  %t2514 = add i64 %t2513, 8
  %r2515.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2515 = load i64, ptr %r2515.p, align 8, !alias.scope !3, !noalias !4
  %gmp2516 = inttoptr i64 %t2513 to ptr
  store i64 %r2515, ptr %gmp2516, align 1, !alias.scope !4, !noalias !3
  %r2517.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2517 = load i64, ptr %r2517.p, align 8, !alias.scope !3, !noalias !4
  %gmp2518 = inttoptr i64 %t2514 to ptr
  store i64 %r2517, ptr %gmp2518, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116950 word 0xa906bbff
  %r2519.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2519 = load i64, ptr %r2519.p, align 8, !alias.scope !3, !noalias !4
  %t2520 = add i64 %r2519, 104
  %t2521 = add i64 %t2520, 8
  %gmp2522 = inttoptr i64 %t2520 to ptr
  store i64 0, ptr %gmp2522, align 1, !alias.scope !4, !noalias !3
  %r2523.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2523 = load i64, ptr %r2523.p, align 8, !alias.scope !3, !noalias !4
  %gmp2524 = inttoptr i64 %t2521 to ptr
  store i64 %r2523, ptr %gmp2524, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116954 word 0xb9400828
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %t2526 = add i64 %r2525, 8
  %gmp2527 = inttoptr i64 %t2526 to ptr
  %gml2528 = load i32, ptr %gmp2527, align 1, !alias.scope !4, !noalias !3
  %c2529 = zext i32 %gml2528 to i64
  %wp2530 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2529, ptr %wp2530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116958 word 0xf940082a
  %r2531.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2531 = load i64, ptr %r2531.p, align 8, !alias.scope !3, !noalias !4
  %t2532 = add i64 %r2531, 16
  %gmp2533 = inttoptr i64 %t2532 to ptr
  %gml2534 = load i64, ptr %gmp2533, align 1, !alias.scope !4, !noalias !3
  %wp2535 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2534, ptr %wp2535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011695c word 0x6b0d011f
  %r2536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2536 = load i64, ptr %r2536.p, align 8, !alias.scope !3, !noalias !4
  %c2537 = trunc i64 %r2536 to i32
  %r2538.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2538 = load i64, ptr %r2538.p, align 8, !alias.scope !3, !noalias !4
  %c2539 = trunc i64 %r2538 to i32
  %t2540 = sub i32 %c2537, %c2539
  %fn2541 = icmp slt i32 %t2540, 0
  %fz2542 = icmp eq i32 %t2540, 0
  %fc2543 = icmp uge i32 %c2537, %c2539
  %fx12544 = xor i32 %c2537, %c2539
  %fx22545 = xor i32 %c2537, %t2540
  %fva2546 = and i32 %fx12544, %fx22545
  %fv2547 = icmp slt i32 %fva2546, 0
  %nz2548 = zext i1 %fn2541 to i64
  %zz2549 = zext i1 %fz2542 to i64
  %cz2550 = zext i1 %fc2543 to i64
  %vz2551 = zext i1 %fv2547 to i64
  %ns2552 = shl i64 %nz2548, 31
  %zs2553 = shl i64 %zz2549, 30
  %cs2554 = shl i64 %cz2550, 29
  %vs2555 = shl i64 %vz2551, 28
  %nzor2556 = or i64 %ns2552, %zs2553
  %cvor2557 = or i64 %cs2554, %vs2555
  %nzcv2558 = or i64 %nzor2556, %cvor2557
  %wp2559 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2558, ptr %wp2559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116960 word 0x9a9f81a8
  %r2560.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2560 = load i64, ptr %r2560.p, align 8, !alias.scope !3, !noalias !4
  %r2561.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2561 = load i64, ptr %r2561.p, align 8, !alias.scope !3, !noalias !4
  %fsh2563 = lshr i64 %r2561, 29
  %ftr2564 = trunc i64 %fsh2563 to i1
  %fsh2565 = lshr i64 %r2561, 30
  %ftr2566 = trunc i64 %fsh2565 to i1
  %fnz2567 = xor i1 %ftr2566, true
  %cond2562 = and i1 %ftr2564, %fnz2567
  %sel2568 = select i1 %cond2562, i64 %r2560, i64 0
  %wp2569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2568, ptr %wp2569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116964 word 0x9bb02908
  %r2570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2570 = load i64, ptr %r2570.p, align 8, !alias.scope !3, !noalias !4
  %c2571 = trunc i64 %r2570 to i32
  %c2572 = zext i32 %c2571 to i64
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %c2574 = trunc i64 %r2573 to i32
  %c2575 = zext i32 %c2574 to i64
  %t2576 = mul i64 %c2572, %c2575
  %r2577.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2577 = load i64, ptr %r2577.p, align 8, !alias.scope !3, !noalias !4
  %t2578 = add i64 %r2577, %t2576
  %wp2579 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2578, ptr %wp2579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116968 word 0xf957010a
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %t2581 = add i64 %r2580, 11776
  %gmp2582 = inttoptr i64 %t2581 to ptr
  %gml2583 = load i64, ptr %gmp2582, align 1, !alias.scope !4, !noalias !3
  %wp2584 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2583, ptr %wp2584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011696c word 0xf9570508
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2585 = load i64, ptr %r2585.p, align 8, !alias.scope !3, !noalias !4
  %t2586 = add i64 %r2585, 11784
  %gmp2587 = inttoptr i64 %t2586 to ptr
  %gml2588 = load i64, ptr %gmp2587, align 1, !alias.scope !4, !noalias !3
  %wp2589 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2588, ptr %wp2589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116970 word 0xa900212a
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %t2591 = add i64 %r2590, 8
  %r2592.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2592 = load i64, ptr %r2592.p, align 8, !alias.scope !3, !noalias !4
  %gmp2593 = inttoptr i64 %r2590 to ptr
  store i64 %r2592, ptr %gmp2593, align 1, !alias.scope !4, !noalias !3
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %gmp2595 = inttoptr i64 %t2591 to ptr
  store i64 %r2594, ptr %gmp2595, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116974 word 0xb9400828
  %r2596.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2596 = load i64, ptr %r2596.p, align 8, !alias.scope !3, !noalias !4
  %t2597 = add i64 %r2596, 8
  %gmp2598 = inttoptr i64 %t2597 to ptr
  %gml2599 = load i32, ptr %gmp2598, align 1, !alias.scope !4, !noalias !3
  %c2600 = zext i32 %gml2599 to i64
  %wp2601 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2600, ptr %wp2601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116978 word 0xf9400829
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %t2603 = add i64 %r2602, 16
  %gmp2604 = inttoptr i64 %t2603 to ptr
  %gml2605 = load i64, ptr %gmp2604, align 1, !alias.scope !4, !noalias !3
  %wp2606 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2605, ptr %wp2606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011697c word 0x6b0d011f
  %r2607.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2607 = load i64, ptr %r2607.p, align 8, !alias.scope !3, !noalias !4
  %c2608 = trunc i64 %r2607 to i32
  %r2609.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2609 = load i64, ptr %r2609.p, align 8, !alias.scope !3, !noalias !4
  %c2610 = trunc i64 %r2609 to i32
  %t2611 = sub i32 %c2608, %c2610
  %fn2612 = icmp slt i32 %t2611, 0
  %fz2613 = icmp eq i32 %t2611, 0
  %fc2614 = icmp uge i32 %c2608, %c2610
  %fx12615 = xor i32 %c2608, %c2610
  %fx22616 = xor i32 %c2608, %t2611
  %fva2617 = and i32 %fx12615, %fx22616
  %fv2618 = icmp slt i32 %fva2617, 0
  %nz2619 = zext i1 %fn2612 to i64
  %zz2620 = zext i1 %fz2613 to i64
  %cz2621 = zext i1 %fc2614 to i64
  %vz2622 = zext i1 %fv2618 to i64
  %ns2623 = shl i64 %nz2619, 31
  %zs2624 = shl i64 %zz2620, 30
  %cs2625 = shl i64 %cz2621, 29
  %vs2626 = shl i64 %vz2622, 28
  %nzor2627 = or i64 %ns2623, %zs2624
  %cvor2628 = or i64 %cs2625, %vs2626
  %nzcv2629 = or i64 %nzor2627, %cvor2628
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2629, ptr %wp2630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116980 word 0x9a9f81a8
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %r2632.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2632 = load i64, ptr %r2632.p, align 8, !alias.scope !3, !noalias !4
  %fsh2634 = lshr i64 %r2632, 29
  %ftr2635 = trunc i64 %fsh2634 to i1
  %fsh2636 = lshr i64 %r2632, 30
  %ftr2637 = trunc i64 %fsh2636 to i1
  %fnz2638 = xor i1 %ftr2637, true
  %cond2633 = and i1 %ftr2635, %fnz2638
  %sel2639 = select i1 %cond2633, i64 %r2631, i64 0
  %wp2640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2639, ptr %wp2640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116984 word 0x9bb02508
  %r2641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2641 = load i64, ptr %r2641.p, align 8, !alias.scope !3, !noalias !4
  %c2642 = trunc i64 %r2641 to i32
  %c2643 = zext i32 %c2642 to i64
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %c2645 = trunc i64 %r2644 to i32
  %c2646 = zext i32 %c2645 to i64
  %t2647 = mul i64 %c2643, %c2646
  %r2648.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2648 = load i64, ptr %r2648.p, align 8, !alias.scope !3, !noalias !4
  %t2649 = add i64 %r2648, %t2647
  %wp2650 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2649, ptr %wp2650, align 8, !alias.scope !3, !noalias !4
  br label %L_800116988
L_800116988:
  ; @pc 0x800116988 word 0xf9584109
  %r2651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2651 = load i64, ptr %r2651.p, align 8, !alias.scope !3, !noalias !4
  %t2652 = add i64 %r2651, 12416
  %gmp2653 = inttoptr i64 %t2652 to ptr
  %gml2654 = load i64, ptr %gmp2653, align 1, !alias.scope !4, !noalias !3
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011698c word 0xaa1603e0
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %t2657 = or i64 0, %r2656
  %wp2658 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2657, ptr %wp2658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116990 word 0x2a1f03e2
  %t2659 = or i32 0, 0
  %c2660 = zext i32 %t2659 to i64
  %wp2661 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2660, ptr %wp2661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116994 word 0xf958450a
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %t2663 = add i64 %r2662, 12424
  %gmp2664 = inttoptr i64 %t2663 to ptr
  %gml2665 = load i64, ptr %gmp2664, align 1, !alias.scope !4, !noalias !3
  %wp2666 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2665, ptr %wp2666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116998 word 0xa9002b49
  %r2667.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2667 = load i64, ptr %r2667.p, align 8, !alias.scope !3, !noalias !4
  %t2668 = add i64 %r2667, 8
  %r2669.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2669 = load i64, ptr %r2669.p, align 8, !alias.scope !3, !noalias !4
  %gmp2670 = inttoptr i64 %r2667 to ptr
  store i64 %r2669, ptr %gmp2670, align 1, !alias.scope !4, !noalias !3
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %gmp2672 = inttoptr i64 %t2668 to ptr
  store i64 %r2671, ptr %gmp2672, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011699c word 0xf9584909
  %r2673.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2673 = load i64, ptr %r2673.p, align 8, !alias.scope !3, !noalias !4
  %t2674 = add i64 %r2673, 12432
  %gmp2675 = inttoptr i64 %t2674 to ptr
  %gml2676 = load i64, ptr %gmp2675, align 1, !alias.scope !4, !noalias !3
  %wp2677 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2676, ptr %wp2677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169a0 word 0xb9709908
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %t2679 = add i64 %r2678, 12440
  %gmp2680 = inttoptr i64 %t2679 to ptr
  %gml2681 = load i32, ptr %gmp2680, align 1, !alias.scope !4, !noalias !3
  %c2682 = zext i32 %gml2681 to i64
  %wp2683 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2682, ptr %wp2683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169a4 word 0xb9000b28
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %t2685 = add i64 %r2684, 8
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %c2687 = trunc i64 %r2686 to i32
  %gmp2688 = inttoptr i64 %t2685 to ptr
  store i32 %c2687, ptr %gmp2688, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169a8 word 0xd10027a8
  %r2689.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2689 = load i64, ptr %r2689.p, align 8, !alias.scope !3, !noalias !4
  %t2690 = sub i64 %r2689, 9
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2690, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169ac word 0xf9000329
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %gmp2694 = inttoptr i64 %r2692 to ptr
  store i64 %r2693, ptr %gmp2694, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169b0 word 0x9400038a
  %wp2695 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360879540, ptr %wp2695, align 8, !alias.scope !3, !noalias !4
  call void @f_8001177d8(ptr %c)
  ; @pc 0x8001169b4 word 0x5282c088
  %c2696 = zext i32 5636 to i64
  %wp2697 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2696, ptr %wp2697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169b8 word 0xf84c7309
  %r2698.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2698 = load i64, ptr %r2698.p, align 8, !alias.scope !3, !noalias !4
  %t2699 = add i64 %r2698, 199
  %gmp2700 = inttoptr i64 %t2699 to ptr
  %gml2701 = load i64, ptr %gmp2700, align 1, !alias.scope !4, !noalias !3
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2701, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169bc word 0xf9000369
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %r2704.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2704 = load i64, ptr %r2704.p, align 8, !alias.scope !3, !noalias !4
  %gmp2705 = inttoptr i64 %r2703 to ptr
  store i64 %r2704, ptr %gmp2705, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169c0 word 0xf8686ac8
  %r2706.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2706 = load i64, ptr %r2706.p, align 8, !alias.scope !3, !noalias !4
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %t2708 = add i64 %r2706, %r2707
  %gmp2709 = inttoptr i64 %t2708 to ptr
  %gml2710 = load i64, ptr %gmp2709, align 1, !alias.scope !4, !noalias !3
  %wp2711 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2710, ptr %wp2711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169c4 word 0x385ff3aa
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %t2713 = add i64 %r2712, -1
  %gmp2714 = inttoptr i64 %t2713 to ptr
  %gml2715 = load i8, ptr %gmp2714, align 1, !alias.scope !4, !noalias !3
  %c2716 = zext i8 %gml2715 to i64
  %wp2717 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2716, ptr %wp2717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169c8 word 0x3900236a
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %t2719 = add i64 %r2718, 8
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %c2721 = trunc i64 %r2720 to i32
  %c2722 = trunc i32 %c2721 to i8
  %gmp2723 = inttoptr i64 %t2719 to ptr
  store i8 %c2722, ptr %gmp2723, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169cc word 0xf801c3e8
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %t2725 = add i64 %r2724, 28
  %r2726.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2726 = load i64, ptr %r2726.p, align 8, !alias.scope !3, !noalias !4
  %gmp2727 = inttoptr i64 %t2725 to ptr
  store i64 %r2726, ptr %gmp2727, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169d0 word 0xb9560ec8
  %r2728.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2728 = load i64, ptr %r2728.p, align 8, !alias.scope !3, !noalias !4
  %t2729 = add i64 %r2728, 5644
  %gmp2730 = inttoptr i64 %t2729 to ptr
  %gml2731 = load i32, ptr %gmp2730, align 1, !alias.scope !4, !noalias !3
  %c2732 = zext i32 %gml2731 to i64
  %wp2733 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2732, ptr %wp2733, align 8, !alias.scope !3, !noalias !4
  br label %L_8001169d4
L_8001169d4:
  ; @pc 0x8001169d4 word 0x52800049
  %c2734 = zext i32 2 to i64
  %wp2735 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2734, ptr %wp2735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169d8 word 0xb90027e8
  %r2736.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2736 = load i64, ptr %r2736.p, align 8, !alias.scope !3, !noalias !4
  %t2737 = add i64 %r2736, 36
  %r2738.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2738 = load i64, ptr %r2738.p, align 8, !alias.scope !3, !noalias !4
  %c2739 = trunc i64 %r2738 to i32
  %gmp2740 = inttoptr i64 %t2737 to ptr
  store i32 %c2739, ptr %gmp2740, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169dc word 0xb900bfe9
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %t2742 = add i64 %r2741, 188
  %r2743.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2743 = load i64, ptr %r2743.p, align 8, !alias.scope !3, !noalias !4
  %c2744 = trunc i64 %r2743 to i32
  %gmp2745 = inttoptr i64 %t2742 to ptr
  store i32 %c2744, ptr %gmp2745, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001169e0 word 0x1400017d
  br label %L_800116fd4
L_8001169e4:
  ; @pc 0x8001169e4 word 0x5283d608
  %c2746 = zext i32 7856 to i64
  %wp2747 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2746, ptr %wp2747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169e8 word 0x910003e1
  %r2748.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2748 = load i64, ptr %r2748.p, align 8, !alias.scope !3, !noalias !4
  %t2749 = add i64 %r2748, 0
  %wp2750 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2749, ptr %wp2750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169ec word 0xaa1303e2
  %r2751.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2751 = load i64, ptr %r2751.p, align 8, !alias.scope !3, !noalias !4
  %t2752 = or i64 0, %r2751
  %wp2753 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2752, ptr %wp2753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169f0 word 0x8b080280
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %t2756 = add i64 %r2754, %r2755
  %wp2757 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2756, ptr %wp2757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001169f4 word 0x9400039d
  %wp2758 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360879608, ptr %wp2758, align 8, !alias.scope !3, !noalias !4
  call void @f_800117868(ptr %c)
  ; @pc 0x8001169f8 word 0x14000177
  br label %L_800116fd4
L_8001169fc:
  ; @pc 0x8001169fc word 0x5280010d
  %c2759 = zext i32 8 to i64
  %wp2760 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2759, ptr %wp2760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a00 word 0xd2e0080e
  %wp2761 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp2761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a04 word 0x529fffef
  %c2762 = zext i32 65535 to i64
  %wp2763 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2762, ptr %wp2763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a08 word 0xa9003bed
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %t2765 = add i64 %r2764, 8
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %gmp2767 = inttoptr i64 %r2764 to ptr
  store i64 %r2766, ptr %gmp2767, align 1, !alias.scope !4, !noalias !3
  %r2768.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2768 = load i64, ptr %r2768.p, align 8, !alias.scope !3, !noalias !4
  %gmp2769 = inttoptr i64 %t2765 to ptr
  store i64 %r2768, ptr %gmp2769, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a0c word 0x929ffd4d
  %wp2770 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65515, ptr %wp2770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a10 word 0xf2a0000d
  %r2771.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2771 = load i64, ptr %r2771.p, align 8, !alias.scope !3, !noalias !4
  %t2772 = and i64 %r2771, -4294901761
  %t2773 = or i64 %t2772, 0
  %wp2774 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2773, ptr %wp2774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a14 word 0xb2607fee
  %t2775 = or i64 0, -4294967296
  %wp2776 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2775, ptr %wp2776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a18 word 0xa90137ef
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %t2778 = add i64 %r2777, 16
  %t2779 = add i64 %t2778, 8
  %r2780.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2780 = load i64, ptr %r2780.p, align 8, !alias.scope !3, !noalias !4
  %gmp2781 = inttoptr i64 %t2778 to ptr
  store i64 %r2780, ptr %gmp2781, align 1, !alias.scope !4, !noalias !3
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %gmp2783 = inttoptr i64 %t2779 to ptr
  store i64 %r2782, ptr %gmp2783, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a1c word 0xd2c0002d
  %wp2784 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp2784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a20 word 0xa9023bed
  %r2785.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2785 = load i64, ptr %r2785.p, align 8, !alias.scope !3, !noalias !4
  %t2786 = add i64 %r2785, 32
  %t2787 = add i64 %t2786, 8
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %gmp2789 = inttoptr i64 %t2786 to ptr
  store i64 %r2788, ptr %gmp2789, align 1, !alias.scope !4, !noalias !3
  %r2790.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2790 = load i64, ptr %r2790.p, align 8, !alias.scope !3, !noalias !4
  %gmp2791 = inttoptr i64 %t2787 to ptr
  store i64 %r2790, ptr %gmp2791, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a24 word 0x1280000d
  %c2792 = zext i32 -1 to i64
  %wp2793 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2792, ptr %wp2793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a28 word 0xb2091bee
  %t2794 = or i64 0, 4575657222473777152
  %wp2795 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2794, ptr %wp2795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a2c word 0xa9033bed
  %r2796.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2796 = load i64, ptr %r2796.p, align 8, !alias.scope !3, !noalias !4
  %t2797 = add i64 %r2796, 48
  %t2798 = add i64 %t2797, 8
  %r2799.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2799 = load i64, ptr %r2799.p, align 8, !alias.scope !3, !noalias !4
  %gmp2800 = inttoptr i64 %t2797 to ptr
  store i64 %r2799, ptr %gmp2800, align 1, !alias.scope !4, !noalias !3
  %r2801.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2801 = load i64, ptr %r2801.p, align 8, !alias.scope !3, !noalias !4
  %gmp2802 = inttoptr i64 %t2798 to ptr
  store i64 %r2801, ptr %gmp2802, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a30 word 0xd0015a0d
  %wp2803 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406236160, ptr %wp2803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a34 word 0x9129e5ad
  %r2804.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2804 = load i64, ptr %r2804.p, align 8, !alias.scope !3, !noalias !4
  %t2805 = add i64 %r2804, 2681
  %wp2806 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2805, ptr %wp2806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a38 word 0x1400013b
  br label %L_800116f24
L_800116a3c:
  ; @pc 0x800116a3c word 0xf94f6681
  %r2807.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2807 = load i64, ptr %r2807.p, align 8, !alias.scope !3, !noalias !4
  %t2808 = add i64 %r2807, 7880
  %gmp2809 = inttoptr i64 %t2808 to ptr
  %gml2810 = load i64, ptr %gmp2809, align 1, !alias.scope !4, !noalias !3
  %wp2811 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2810, ptr %wp2811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a40 word 0x9100418c
  %r2812.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2812 = load i64, ptr %r2812.p, align 8, !alias.scope !3, !noalias !4
  %t2813 = add i64 %r2812, 16
  %wp2814 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2813, ptr %wp2814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a44 word 0x2a1f03e2
  %t2815 = or i32 0, 0
  %c2816 = zext i32 %t2815 to i64
  %wp2817 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2816, ptr %wp2817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a48 word 0x3940226d
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %t2819 = add i64 %r2818, 8
  %gmp2820 = inttoptr i64 %t2819 to ptr
  %gml2821 = load i8, ptr %gmp2820, align 1, !alias.scope !4, !noalias !3
  %c2822 = zext i8 %gml2821 to i64
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a4c word 0xb940082e
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = add i64 %r2824, 8
  %gmp2826 = inttoptr i64 %t2825 to ptr
  %gml2827 = load i32, ptr %gmp2826, align 1, !alias.scope !4, !noalias !3
  %c2828 = zext i32 %gml2827 to i64
  %wp2829 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2828, ptr %wp2829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a50 word 0xf940082f
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %t2831 = add i64 %r2830, 16
  %gmp2832 = inttoptr i64 %t2831 to ptr
  %gml2833 = load i64, ptr %gmp2832, align 1, !alias.scope !4, !noalias !3
  %wp2834 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml2833, ptr %wp2834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a54 word 0x6b0d01df
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %c2836 = trunc i64 %r2835 to i32
  %r2837.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2837 = load i64, ptr %r2837.p, align 8, !alias.scope !3, !noalias !4
  %c2838 = trunc i64 %r2837 to i32
  %t2839 = sub i32 %c2836, %c2838
  %fn2840 = icmp slt i32 %t2839, 0
  %fz2841 = icmp eq i32 %t2839, 0
  %fc2842 = icmp uge i32 %c2836, %c2838
  %fx12843 = xor i32 %c2836, %c2838
  %fx22844 = xor i32 %c2836, %t2839
  %fva2845 = and i32 %fx12843, %fx22844
  %fv2846 = icmp slt i32 %fva2845, 0
  %nz2847 = zext i1 %fn2840 to i64
  %zz2848 = zext i1 %fz2841 to i64
  %cz2849 = zext i1 %fc2842 to i64
  %vz2850 = zext i1 %fv2846 to i64
  %ns2851 = shl i64 %nz2847, 31
  %zs2852 = shl i64 %zz2848, 30
  %cs2853 = shl i64 %cz2849, 29
  %vs2854 = shl i64 %vz2850, 28
  %nzor2855 = or i64 %ns2851, %zs2852
  %cvor2856 = or i64 %cs2853, %vs2854
  %nzcv2857 = or i64 %nzor2855, %cvor2856
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a58 word 0x52879c0e
  %c2859 = zext i32 15584 to i64
  %wp2860 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2859, ptr %wp2860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a5c word 0x9a9f81b0
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %r2862.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2862 = load i64, ptr %r2862.p, align 8, !alias.scope !3, !noalias !4
  %fsh2864 = lshr i64 %r2862, 29
  %ftr2865 = trunc i64 %fsh2864 to i1
  %fsh2866 = lshr i64 %r2862, 30
  %ftr2867 = trunc i64 %fsh2866 to i1
  %fnz2868 = xor i1 %ftr2867, true
  %cond2863 = and i1 %ftr2865, %fnz2868
  %sel2869 = select i1 %cond2863, i64 %r2861, i64 0
  %wp2870 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %sel2869, ptr %wp2870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a60 word 0x9bae3e0f
  %r2871.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2871 = load i64, ptr %r2871.p, align 8, !alias.scope !3, !noalias !4
  %c2872 = trunc i64 %r2871 to i32
  %c2873 = zext i32 %c2872 to i64
  %r2874.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2874 = load i64, ptr %r2874.p, align 8, !alias.scope !3, !noalias !4
  %c2875 = trunc i64 %r2874 to i32
  %c2876 = zext i32 %c2875 to i64
  %t2877 = mul i64 %c2873, %c2876
  %r2878.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2878 = load i64, ptr %r2878.p, align 8, !alias.scope !3, !noalias !4
  %t2879 = add i64 %r2878, %t2877
  %wp2880 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2879, ptr %wp2880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a64 word 0xd2c10010
  %wp2881 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 8796093022208, ptr %wp2881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a68 word 0xf2e00850
  %r2882.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2882 = load i64, ptr %r2882.p, align 8, !alias.scope !3, !noalias !4
  %t2883 = and i64 %r2882, 281474976710655
  %t2884 = or i64 %t2883, 18577348462903296
  %wp2885 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2884, ptr %wp2885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a6c word 0xf95e21e0
  %r2886.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2886 = load i64, ptr %r2886.p, align 8, !alias.scope !3, !noalias !4
  %t2887 = add i64 %r2886, 15424
  %gmp2888 = inttoptr i64 %t2887 to ptr
  %gml2889 = load i64, ptr %gmp2888, align 1, !alias.scope !4, !noalias !3
  %wp2890 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2889, ptr %wp2890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a70 word 0x5280040f
  %c2891 = zext i32 32 to i64
  %wp2892 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2891, ptr %wp2892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a74 word 0xb900a3e8
  %r2893.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2893 = load i64, ptr %r2893.p, align 8, !alias.scope !3, !noalias !4
  %t2894 = add i64 %r2893, 160
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %c2896 = trunc i64 %r2895 to i32
  %gmp2897 = inttoptr i64 %t2894 to ptr
  store i32 %c2896, ptr %gmp2897, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a78 word 0x91004148
  %r2898.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2898 = load i64, ptr %r2898.p, align 8, !alias.scope !3, !noalias !4
  %t2899 = add i64 %r2898, 16
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2899, ptr %wp2900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a7c word 0xa908afec
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %t2902 = add i64 %r2901, 136
  %t2903 = add i64 %t2902, 8
  %r2904.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2904 = load i64, ptr %r2904.p, align 8, !alias.scope !3, !noalias !4
  %gmp2905 = inttoptr i64 %t2902 to ptr
  store i64 %r2904, ptr %gmp2905, align 1, !alias.scope !4, !noalias !3
  %r2906.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2906 = load i64, ptr %r2906.p, align 8, !alias.scope !3, !noalias !4
  %gmp2907 = inttoptr i64 %t2903 to ptr
  store i64 %r2906, ptr %gmp2907, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a80 word 0xf900037f
  %r2908.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2908 = load i64, ptr %r2908.p, align 8, !alias.scope !3, !noalias !4
  %gmp2909 = inttoptr i64 %r2908 to ptr
  store i64 0, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a84 word 0x3900237f
  %r2910.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2910 = load i64, ptr %r2910.p, align 8, !alias.scope !3, !noalias !4
  %t2911 = add i64 %r2910, 8
  %c2912 = trunc i32 0 to i8
  %gmp2913 = inttoptr i64 %t2911 to ptr
  store i8 %c2912, ptr %gmp2913, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a88 word 0xb900bfff
  %r2914.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2914 = load i64, ptr %r2914.p, align 8, !alias.scope !3, !noalias !4
  %t2915 = add i64 %r2914, 188
  %gmp2916 = inttoptr i64 %t2915 to ptr
  store i32 0, ptr %gmp2916, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a8c word 0xa905ffff
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %t2918 = add i64 %r2917, 88
  %t2919 = add i64 %t2918, 8
  %gmp2920 = inttoptr i64 %t2918 to ptr
  store i64 0, ptr %gmp2920, align 1, !alias.scope !4, !noalias !3
  %gmp2921 = inttoptr i64 %t2919 to ptr
  store i64 0, ptr %gmp2921, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a90 word 0xa90043ef
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %t2923 = add i64 %r2922, 8
  %r2924.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2924 = load i64, ptr %r2924.p, align 8, !alias.scope !3, !noalias !4
  %gmp2925 = inttoptr i64 %r2922 to ptr
  store i64 %r2924, ptr %gmp2925, align 1, !alias.scope !4, !noalias !3
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %gmp2927 = inttoptr i64 %t2923 to ptr
  store i64 %r2926, ptr %gmp2927, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116a94 word 0x929ffeb0
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 -65526, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a98 word 0x529fffef
  %c2929 = zext i32 65535 to i64
  %wp2930 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c2929, ptr %wp2930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116a9c word 0xa904a3ff
  %r2931.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2931 = load i64, ptr %r2931.p, align 8, !alias.scope !3, !noalias !4
  %t2932 = add i64 %r2931, 72
  %t2933 = add i64 %t2932, 8
  %gmp2934 = inttoptr i64 %t2932 to ptr
  store i64 0, ptr %gmp2934, align 1, !alias.scope !4, !noalias !3
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %gmp2936 = inttoptr i64 %t2933 to ptr
  store i64 %r2935, ptr %gmp2936, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116aa0 word 0x528000e8
  %c2937 = zext i32 7 to i64
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116aa4 word 0xf2a00010
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %t2940 = and i64 %r2939, -4294901761
  %t2941 = or i64 %t2940, 0
  %wp2942 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2941, ptr %wp2942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116aa8 word 0x29067fe8
  %r2943.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2943 = load i64, ptr %r2943.p, align 8, !alias.scope !3, !noalias !4
  %t2944 = add i64 %r2943, 48
  %t2945 = add i64 %t2944, 4
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %c2947 = trunc i64 %r2946 to i32
  %gmp2948 = inttoptr i64 %t2944 to ptr
  store i32 %c2947, ptr %gmp2948, align 1, !alias.scope !4, !noalias !3
  %gmp2949 = inttoptr i64 %t2945 to ptr
  store i32 0, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116aac word 0xa90143ef
  %r2950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2950 = load i64, ptr %r2950.p, align 8, !alias.scope !3, !noalias !4
  %t2951 = add i64 %r2950, 16
  %t2952 = add i64 %t2951, 8
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %gmp2954 = inttoptr i64 %t2951 to ptr
  store i64 %r2953, ptr %gmp2954, align 1, !alias.scope !4, !noalias !3
  %r2955.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2955 = load i64, ptr %r2955.p, align 8, !alias.scope !3, !noalias !4
  %gmp2956 = inttoptr i64 %t2952 to ptr
  store i64 %r2955, ptr %gmp2956, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ab0 word 0xd2c0002f
  %wp2957 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4294967296, ptr %wp2957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ab4 word 0xb2607ff0
  %t2958 = or i64 0, -4294967296
  %wp2959 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2958, ptr %wp2959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ab8 word 0xa90243ef
  %r2960.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2960 = load i64, ptr %r2960.p, align 8, !alias.scope !3, !noalias !4
  %t2961 = add i64 %r2960, 32
  %t2962 = add i64 %t2961, 8
  %r2963.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2963 = load i64, ptr %r2963.p, align 8, !alias.scope !3, !noalias !4
  %gmp2964 = inttoptr i64 %t2961 to ptr
  store i64 %r2963, ptr %gmp2964, align 1, !alias.scope !4, !noalias !3
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2965 = load i64, ptr %r2965.p, align 8, !alias.scope !3, !noalias !4
  %gmp2966 = inttoptr i64 %t2962 to ptr
  store i64 %r2965, ptr %gmp2966, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116abc word 0xb2091bef
  %t2967 = or i64 0, 4575657222473777152
  %wp2968 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2967, ptr %wp2968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ac0 word 0xd2e7f010
  %wp2969 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4575657221408423936, ptr %wp2969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ac4 word 0xf80a4310
  %r2970.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2970 = load i64, ptr %r2970.p, align 8, !alias.scope !3, !noalias !4
  %t2971 = add i64 %r2970, 164
  %r2972.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2972 = load i64, ptr %r2972.p, align 8, !alias.scope !3, !noalias !4
  %gmp2973 = inttoptr i64 %t2971 to ptr
  store i64 %r2972, ptr %gmp2973, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ac8 word 0xa903bfef
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = add i64 %r2974, 56
  %t2976 = add i64 %t2975, 8
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %gmp2978 = inttoptr i64 %t2975 to ptr
  store i64 %r2977, ptr %gmp2978, align 1, !alias.scope !4, !noalias !3
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %gmp2980 = inttoptr i64 %t2976 to ptr
  store i64 %r2979, ptr %gmp2980, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116acc word 0xd0015d6f
  %wp2981 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 34406678528, ptr %wp2981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ad0 word 0x910a3def
  %r2982.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2982 = load i64, ptr %r2982.p, align 8, !alias.scope !3, !noalias !4
  %t2983 = add i64 %r2982, 655
  %wp2984 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t2983, ptr %wp2984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ad4 word 0xb2087bf0
  %t2985 = or i64 0, -36028797027352577
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t2985, ptr %wp2986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ad8 word 0xf9004ff0
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2987 = load i64, ptr %r2987.p, align 8, !alias.scope !3, !noalias !4
  %t2988 = add i64 %r2987, 152
  %r2989.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2989 = load i64, ptr %r2989.p, align 8, !alias.scope !3, !noalias !4
  %gmp2990 = inttoptr i64 %t2988 to ptr
  store i64 %r2989, ptr %gmp2990, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116adc word 0xa907c3eb
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %t2992 = add i64 %r2991, 120
  %t2993 = add i64 %t2992, 8
  %r2994.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2994 = load i64, ptr %r2994.p, align 8, !alias.scope !3, !noalias !4
  %gmp2995 = inttoptr i64 %t2992 to ptr
  store i64 %r2994, ptr %gmp2995, align 1, !alias.scope !4, !noalias !3
  %r2996.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2996 = load i64, ptr %r2996.p, align 8, !alias.scope !3, !noalias !4
  %gmp2997 = inttoptr i64 %t2993 to ptr
  store i64 %r2996, ptr %gmp2997, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ae0 word 0xa906bfff
  %r2998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2998 = load i64, ptr %r2998.p, align 8, !alias.scope !3, !noalias !4
  %t2999 = add i64 %r2998, 104
  %t3000 = add i64 %t2999, 8
  %gmp3001 = inttoptr i64 %t2999 to ptr
  store i64 0, ptr %gmp3001, align 1, !alias.scope !4, !noalias !3
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %gmp3003 = inttoptr i64 %t3000 to ptr
  store i64 %r3002, ptr %gmp3003, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ae4 word 0xb9400828
  %r3004.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3004 = load i64, ptr %r3004.p, align 8, !alias.scope !3, !noalias !4
  %t3005 = add i64 %r3004, 8
  %gmp3006 = inttoptr i64 %t3005 to ptr
  %gml3007 = load i32, ptr %gmp3006, align 1, !alias.scope !4, !noalias !3
  %c3008 = zext i32 %gml3007 to i64
  %wp3009 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3008, ptr %wp3009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ae8 word 0xf940082a
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %t3011 = add i64 %r3010, 16
  %gmp3012 = inttoptr i64 %t3011 to ptr
  %gml3013 = load i64, ptr %gmp3012, align 1, !alias.scope !4, !noalias !3
  %wp3014 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3013, ptr %wp3014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116aec word 0x6b0d011f
  %r3015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3015 = load i64, ptr %r3015.p, align 8, !alias.scope !3, !noalias !4
  %c3016 = trunc i64 %r3015 to i32
  %r3017.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3017 = load i64, ptr %r3017.p, align 8, !alias.scope !3, !noalias !4
  %c3018 = trunc i64 %r3017 to i32
  %t3019 = sub i32 %c3016, %c3018
  %fn3020 = icmp slt i32 %t3019, 0
  %fz3021 = icmp eq i32 %t3019, 0
  %fc3022 = icmp uge i32 %c3016, %c3018
  %fx13023 = xor i32 %c3016, %c3018
  %fx23024 = xor i32 %c3016, %t3019
  %fva3025 = and i32 %fx13023, %fx23024
  %fv3026 = icmp slt i32 %fva3025, 0
  %nz3027 = zext i1 %fn3020 to i64
  %zz3028 = zext i1 %fz3021 to i64
  %cz3029 = zext i1 %fc3022 to i64
  %vz3030 = zext i1 %fv3026 to i64
  %ns3031 = shl i64 %nz3027, 31
  %zs3032 = shl i64 %zz3028, 30
  %cs3033 = shl i64 %cz3029, 29
  %vs3034 = shl i64 %vz3030, 28
  %nzor3035 = or i64 %ns3031, %zs3032
  %cvor3036 = or i64 %cs3033, %vs3034
  %nzcv3037 = or i64 %nzor3035, %cvor3036
  %wp3038 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3037, ptr %wp3038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116af0 word 0x9a9f81a8
  %r3039.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3039 = load i64, ptr %r3039.p, align 8, !alias.scope !3, !noalias !4
  %r3040.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3040 = load i64, ptr %r3040.p, align 8, !alias.scope !3, !noalias !4
  %fsh3042 = lshr i64 %r3040, 29
  %ftr3043 = trunc i64 %fsh3042 to i1
  %fsh3044 = lshr i64 %r3040, 30
  %ftr3045 = trunc i64 %fsh3044 to i1
  %fnz3046 = xor i1 %ftr3045, true
  %cond3041 = and i1 %ftr3043, %fnz3046
  %sel3047 = select i1 %cond3041, i64 %r3039, i64 0
  %wp3048 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3047, ptr %wp3048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116af4 word 0x9bae2908
  %r3049.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3049 = load i64, ptr %r3049.p, align 8, !alias.scope !3, !noalias !4
  %c3050 = trunc i64 %r3049 to i32
  %c3051 = zext i32 %c3050 to i64
  %r3052.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3052 = load i64, ptr %r3052.p, align 8, !alias.scope !3, !noalias !4
  %c3053 = trunc i64 %r3052 to i32
  %c3054 = zext i32 %c3053 to i64
  %t3055 = mul i64 %c3051, %c3054
  %r3056.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3056 = load i64, ptr %r3056.p, align 8, !alias.scope !3, !noalias !4
  %t3057 = add i64 %r3056, %t3055
  %wp3058 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3057, ptr %wp3058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116af8 word 0xf958590a
  %r3059.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3059 = load i64, ptr %r3059.p, align 8, !alias.scope !3, !noalias !4
  %t3060 = add i64 %r3059, 12464
  %gmp3061 = inttoptr i64 %t3060 to ptr
  %gml3062 = load i64, ptr %gmp3061, align 1, !alias.scope !4, !noalias !3
  %wp3063 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3062, ptr %wp3063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116afc word 0xf9585d08
  %r3064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3064 = load i64, ptr %r3064.p, align 8, !alias.scope !3, !noalias !4
  %t3065 = add i64 %r3064, 12472
  %gmp3066 = inttoptr i64 %t3065 to ptr
  %gml3067 = load i64, ptr %gmp3066, align 1, !alias.scope !4, !noalias !3
  %wp3068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3067, ptr %wp3068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b00 word 0xa900212a
  %r3069.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3069 = load i64, ptr %r3069.p, align 8, !alias.scope !3, !noalias !4
  %t3070 = add i64 %r3069, 8
  %r3071.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3071 = load i64, ptr %r3071.p, align 8, !alias.scope !3, !noalias !4
  %gmp3072 = inttoptr i64 %r3069 to ptr
  store i64 %r3071, ptr %gmp3072, align 1, !alias.scope !4, !noalias !3
  %r3073.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3073 = load i64, ptr %r3073.p, align 8, !alias.scope !3, !noalias !4
  %gmp3074 = inttoptr i64 %t3070 to ptr
  store i64 %r3073, ptr %gmp3074, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b04 word 0xb9400828
  %r3075.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3075 = load i64, ptr %r3075.p, align 8, !alias.scope !3, !noalias !4
  %t3076 = add i64 %r3075, 8
  %gmp3077 = inttoptr i64 %t3076 to ptr
  %gml3078 = load i32, ptr %gmp3077, align 1, !alias.scope !4, !noalias !3
  %c3079 = zext i32 %gml3078 to i64
  %wp3080 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3079, ptr %wp3080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b08 word 0xf9400829
  %r3081.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3081 = load i64, ptr %r3081.p, align 8, !alias.scope !3, !noalias !4
  %t3082 = add i64 %r3081, 16
  %gmp3083 = inttoptr i64 %t3082 to ptr
  %gml3084 = load i64, ptr %gmp3083, align 1, !alias.scope !4, !noalias !3
  %wp3085 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3084, ptr %wp3085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b0c word 0x6b0d011f
  %r3086.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3086 = load i64, ptr %r3086.p, align 8, !alias.scope !3, !noalias !4
  %c3087 = trunc i64 %r3086 to i32
  %r3088.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3088 = load i64, ptr %r3088.p, align 8, !alias.scope !3, !noalias !4
  %c3089 = trunc i64 %r3088 to i32
  %t3090 = sub i32 %c3087, %c3089
  %fn3091 = icmp slt i32 %t3090, 0
  %fz3092 = icmp eq i32 %t3090, 0
  %fc3093 = icmp uge i32 %c3087, %c3089
  %fx13094 = xor i32 %c3087, %c3089
  %fx23095 = xor i32 %c3087, %t3090
  %fva3096 = and i32 %fx13094, %fx23095
  %fv3097 = icmp slt i32 %fva3096, 0
  %nz3098 = zext i1 %fn3091 to i64
  %zz3099 = zext i1 %fz3092 to i64
  %cz3100 = zext i1 %fc3093 to i64
  %vz3101 = zext i1 %fv3097 to i64
  %ns3102 = shl i64 %nz3098, 31
  %zs3103 = shl i64 %zz3099, 30
  %cs3104 = shl i64 %cz3100, 29
  %vs3105 = shl i64 %vz3101, 28
  %nzor3106 = or i64 %ns3102, %zs3103
  %cvor3107 = or i64 %cs3104, %vs3105
  %nzcv3108 = or i64 %nzor3106, %cvor3107
  %wp3109 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3108, ptr %wp3109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b10 word 0x9a9f81a8
  %r3110.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3110 = load i64, ptr %r3110.p, align 8, !alias.scope !3, !noalias !4
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %fsh3113 = lshr i64 %r3111, 29
  %ftr3114 = trunc i64 %fsh3113 to i1
  %fsh3115 = lshr i64 %r3111, 30
  %ftr3116 = trunc i64 %fsh3115 to i1
  %fnz3117 = xor i1 %ftr3116, true
  %cond3112 = and i1 %ftr3114, %fnz3117
  %sel3118 = select i1 %cond3112, i64 %r3110, i64 0
  %wp3119 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3118, ptr %wp3119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b14 word 0x9bae2508
  %r3120.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3120 = load i64, ptr %r3120.p, align 8, !alias.scope !3, !noalias !4
  %c3121 = trunc i64 %r3120 to i32
  %c3122 = zext i32 %c3121 to i64
  %r3123.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3123 = load i64, ptr %r3123.p, align 8, !alias.scope !3, !noalias !4
  %c3124 = trunc i64 %r3123 to i32
  %c3125 = zext i32 %c3124 to i64
  %t3126 = mul i64 %c3122, %c3125
  %r3127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3127 = load i64, ptr %r3127.p, align 8, !alias.scope !3, !noalias !4
  %t3128 = add i64 %r3127, %t3126
  %wp3129 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3128, ptr %wp3129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b18 word 0xf9599909
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %t3131 = add i64 %r3130, 13104
  %gmp3132 = inttoptr i64 %t3131 to ptr
  %gml3133 = load i64, ptr %gmp3132, align 1, !alias.scope !4, !noalias !3
  %wp3134 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3133, ptr %wp3134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b1c word 0xf9599d0a
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %t3136 = add i64 %r3135, 13112
  %gmp3137 = inttoptr i64 %t3136 to ptr
  %gml3138 = load i64, ptr %gmp3137, align 1, !alias.scope !4, !noalias !3
  %wp3139 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3138, ptr %wp3139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b20 word 0xa9002b49
  %r3140.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3140 = load i64, ptr %r3140.p, align 8, !alias.scope !3, !noalias !4
  %t3141 = add i64 %r3140, 8
  %r3142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3142 = load i64, ptr %r3142.p, align 8, !alias.scope !3, !noalias !4
  %gmp3143 = inttoptr i64 %r3140 to ptr
  store i64 %r3142, ptr %gmp3143, align 1, !alias.scope !4, !noalias !3
  %r3144.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3144 = load i64, ptr %r3144.p, align 8, !alias.scope !3, !noalias !4
  %gmp3145 = inttoptr i64 %t3141 to ptr
  store i64 %r3144, ptr %gmp3145, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b24 word 0xf959a109
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %t3147 = add i64 %r3146, 13120
  %gmp3148 = inttoptr i64 %t3147 to ptr
  %gml3149 = load i64, ptr %gmp3148, align 1, !alias.scope !4, !noalias !3
  %wp3150 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3149, ptr %wp3150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b28 word 0xb9734908
  %r3151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3151 = load i64, ptr %r3151.p, align 8, !alias.scope !3, !noalias !4
  %t3152 = add i64 %r3151, 13128
  %gmp3153 = inttoptr i64 %t3152 to ptr
  %gml3154 = load i32, ptr %gmp3153, align 1, !alias.scope !4, !noalias !3
  %c3155 = zext i32 %gml3154 to i64
  %wp3156 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3155, ptr %wp3156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b2c word 0xb9000b28
  %r3157.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3157 = load i64, ptr %r3157.p, align 8, !alias.scope !3, !noalias !4
  %t3158 = add i64 %r3157, 8
  %r3159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3159 = load i64, ptr %r3159.p, align 8, !alias.scope !3, !noalias !4
  %c3160 = trunc i64 %r3159 to i32
  %gmp3161 = inttoptr i64 %t3158 to ptr
  store i32 %c3160, ptr %gmp3161, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b30 word 0xd10027a8
  %r3162.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3162 = load i64, ptr %r3162.p, align 8, !alias.scope !3, !noalias !4
  %t3163 = sub i64 %r3162, 9
  %wp3164 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3163, ptr %wp3164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b34 word 0xf9000329
  %r3165.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3165 = load i64, ptr %r3165.p, align 8, !alias.scope !3, !noalias !4
  %r3166.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3166 = load i64, ptr %r3166.p, align 8, !alias.scope !3, !noalias !4
  %gmp3167 = inttoptr i64 %r3165 to ptr
  store i64 %r3166, ptr %gmp3167, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b38 word 0x94000328
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360879932, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  call void @f_8001177d8(ptr %c)
  ; @pc 0x800116b3c word 0xf84c7308
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %t3170 = add i64 %r3169, 199
  %gmp3171 = inttoptr i64 %t3170 to ptr
  %gml3172 = load i64, ptr %gmp3171, align 1, !alias.scope !4, !noalias !3
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3172, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b40 word 0xf9000368
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %r3175.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3175 = load i64, ptr %r3175.p, align 8, !alias.scope !3, !noalias !4
  %gmp3176 = inttoptr i64 %r3174 to ptr
  store i64 %r3175, ptr %gmp3176, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b44 word 0x385ff3a8
  %r3177.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3177 = load i64, ptr %r3177.p, align 8, !alias.scope !3, !noalias !4
  %t3178 = add i64 %r3177, -1
  %gmp3179 = inttoptr i64 %t3178 to ptr
  %gml3180 = load i8, ptr %gmp3179, align 1, !alias.scope !4, !noalias !3
  %c3181 = zext i8 %gml3180 to i64
  %wp3182 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3181, ptr %wp3182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b48 word 0x39002368
  %r3183.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3183 = load i64, ptr %r3183.p, align 8, !alias.scope !3, !noalias !4
  %t3184 = add i64 %r3183, 8
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %c3186 = trunc i64 %r3185 to i32
  %c3187 = trunc i32 %c3186 to i8
  %gmp3188 = inttoptr i64 %t3184 to ptr
  store i8 %c3187, ptr %gmp3188, align 1, !alias.scope !4, !noalias !3
  br label %L_800116b4c
L_800116b4c:
  ; @pc 0x800116b4c word 0x52800048
  %c3189 = zext i32 2 to i64
  %wp3190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3189, ptr %wp3190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b50 word 0xb900bfe8
  %r3191.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3191 = load i64, ptr %r3191.p, align 8, !alias.scope !3, !noalias !4
  %t3192 = add i64 %r3191, 188
  %r3193.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3193 = load i64, ptr %r3193.p, align 8, !alias.scope !3, !noalias !4
  %c3194 = trunc i64 %r3193 to i32
  %gmp3195 = inttoptr i64 %t3192 to ptr
  store i32 %c3194, ptr %gmp3195, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b54 word 0x14000120
  br label %L_800116fd4
L_800116b58:
  ; @pc 0x800116b58 word 0x5281000d
  %c3196 = zext i32 2048 to i64
  %wp3197 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3196, ptr %wp3197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b5c word 0x5280002e
  %c3198 = zext i32 1 to i64
  %wp3199 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3198, ptr %wp3199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b60 word 0x529fffef
  %c3200 = zext i32 65535 to i64
  %wp3201 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3200, ptr %wp3201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b64 word 0xa9003bed
  %r3202.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3202 = load i64, ptr %r3202.p, align 8, !alias.scope !3, !noalias !4
  %t3203 = add i64 %r3202, 8
  %r3204.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3204 = load i64, ptr %r3204.p, align 8, !alias.scope !3, !noalias !4
  %gmp3205 = inttoptr i64 %r3202 to ptr
  store i64 %r3204, ptr %gmp3205, align 1, !alias.scope !4, !noalias !3
  %r3206.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3206 = load i64, ptr %r3206.p, align 8, !alias.scope !3, !noalias !4
  %gmp3207 = inttoptr i64 %t3203 to ptr
  store i64 %r3206, ptr %gmp3207, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b68 word 0x929ffe8d
  %wp3208 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65525, ptr %wp3208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b6c word 0xf2a0000d
  %r3209.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3209 = load i64, ptr %r3209.p, align 8, !alias.scope !3, !noalias !4
  %t3210 = and i64 %r3209, -4294901761
  %t3211 = or i64 %t3210, 0
  %wp3212 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3211, ptr %wp3212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b70 word 0xb2607fee
  %t3213 = or i64 0, -4294967296
  %wp3214 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3213, ptr %wp3214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b74 word 0xa90137ef
  %r3215.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3215 = load i64, ptr %r3215.p, align 8, !alias.scope !3, !noalias !4
  %t3216 = add i64 %r3215, 16
  %t3217 = add i64 %t3216, 8
  %r3218.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3218 = load i64, ptr %r3218.p, align 8, !alias.scope !3, !noalias !4
  %gmp3219 = inttoptr i64 %t3216 to ptr
  store i64 %r3218, ptr %gmp3219, align 1, !alias.scope !4, !noalias !3
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %gmp3221 = inttoptr i64 %t3217 to ptr
  store i64 %r3220, ptr %gmp3221, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b78 word 0xd2c0002d
  %wp3222 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp3222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b7c word 0xa9023bed
  %r3223.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3223 = load i64, ptr %r3223.p, align 8, !alias.scope !3, !noalias !4
  %t3224 = add i64 %r3223, 32
  %t3225 = add i64 %t3224, 8
  %r3226.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3226 = load i64, ptr %r3226.p, align 8, !alias.scope !3, !noalias !4
  %gmp3227 = inttoptr i64 %t3224 to ptr
  store i64 %r3226, ptr %gmp3227, align 1, !alias.scope !4, !noalias !3
  %r3228.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3228 = load i64, ptr %r3228.p, align 8, !alias.scope !3, !noalias !4
  %gmp3229 = inttoptr i64 %t3225 to ptr
  store i64 %r3228, ptr %gmp3229, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b80 word 0x1280000d
  %c3230 = zext i32 -1 to i64
  %wp3231 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3230, ptr %wp3231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b84 word 0xb2091bee
  %t3232 = or i64 0, 4575657222473777152
  %wp3233 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3232, ptr %wp3233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b88 word 0xa9033bed
  %r3234.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3234 = load i64, ptr %r3234.p, align 8, !alias.scope !3, !noalias !4
  %t3235 = add i64 %r3234, 48
  %t3236 = add i64 %t3235, 8
  %r3237.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3237 = load i64, ptr %r3237.p, align 8, !alias.scope !3, !noalias !4
  %gmp3238 = inttoptr i64 %t3235 to ptr
  store i64 %r3237, ptr %gmp3238, align 1, !alias.scope !4, !noalias !3
  %r3239.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3239 = load i64, ptr %r3239.p, align 8, !alias.scope !3, !noalias !4
  %gmp3240 = inttoptr i64 %t3236 to ptr
  store i64 %r3239, ptr %gmp3240, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b8c word 0xd00159cd
  %wp3241 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406203392, ptr %wp3241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b90 word 0x911745ad
  %r3242.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3242 = load i64, ptr %r3242.p, align 8, !alias.scope !3, !noalias !4
  %t3243 = add i64 %r3242, 1489
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  br label %L_800116b94
L_800116b94:
  ; @pc 0x800116b94 word 0xb900a3e8
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %t3246 = add i64 %r3245, 160
  %r3247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3247 = load i64, ptr %r3247.p, align 8, !alias.scope !3, !noalias !4
  %c3248 = trunc i64 %r3247 to i32
  %gmp3249 = inttoptr i64 %t3246 to ptr
  store i32 %c3248, ptr %gmp3249, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116b98 word 0xf957ea88
  %r3250.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3250 = load i64, ptr %r3250.p, align 8, !alias.scope !3, !noalias !4
  %t3251 = add i64 %r3250, 12240
  %gmp3252 = inttoptr i64 %t3251 to ptr
  %gml3253 = load i64, ptr %gmp3252, align 1, !alias.scope !4, !noalias !3
  %wp3254 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3253, ptr %wp3254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116b9c word 0x9100418c
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %t3256 = add i64 %r3255, 16
  %wp3257 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3256, ptr %wp3257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ba0 word 0xa9072fed
  %r3258.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3258 = load i64, ptr %r3258.p, align 8, !alias.scope !3, !noalias !4
  %t3259 = add i64 %r3258, 112
  %t3260 = add i64 %t3259, 8
  %r3261.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3261 = load i64, ptr %r3261.p, align 8, !alias.scope !3, !noalias !4
  %gmp3262 = inttoptr i64 %t3259 to ptr
  store i64 %r3261, ptr %gmp3262, align 1, !alias.scope !4, !noalias !3
  %r3263.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3263 = load i64, ptr %r3263.p, align 8, !alias.scope !3, !noalias !4
  %gmp3264 = inttoptr i64 %t3260 to ptr
  store i64 %r3263, ptr %gmp3264, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ba4 word 0xb2087bed
  %t3265 = or i64 0, -36028797027352577
  %wp3266 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3265, ptr %wp3266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ba8 word 0x9100414a
  %r3267.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3267 = load i64, ptr %r3267.p, align 8, !alias.scope !3, !noalias !4
  %t3268 = add i64 %r3267, 16
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bac word 0x3900237f
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %t3271 = add i64 %r3270, 8
  %c3272 = trunc i32 0 to i8
  %gmp3273 = inttoptr i64 %t3271 to ptr
  store i8 %c3272, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bb0 word 0xf900037f
  %r3274.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3274 = load i64, ptr %r3274.p, align 8, !alias.scope !3, !noalias !4
  %gmp3275 = inttoptr i64 %r3274 to ptr
  store i64 0, ptr %gmp3275, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bb4 word 0xb900bfff
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %t3277 = add i64 %r3276, 188
  %gmp3278 = inttoptr i64 %t3277 to ptr
  store i32 0, ptr %gmp3278, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bb8 word 0xa90833ed
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %t3280 = add i64 %r3279, 128
  %t3281 = add i64 %t3280, 8
  %r3282.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3282 = load i64, ptr %r3282.p, align 8, !alias.scope !3, !noalias !4
  %gmp3283 = inttoptr i64 %t3280 to ptr
  store i64 %r3282, ptr %gmp3283, align 1, !alias.scope !4, !noalias !3
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %gmp3285 = inttoptr i64 %t3281 to ptr
  store i64 %r3284, ptr %gmp3285, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bbc word 0xd2e7f00c
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bc0 word 0xf80a430c
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %t3288 = add i64 %r3287, 164
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %gmp3290 = inttoptr i64 %t3288 to ptr
  store i64 %r3289, ptr %gmp3290, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bc4 word 0xa9047fee
  %r3291.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3291 = load i64, ptr %r3291.p, align 8, !alias.scope !3, !noalias !4
  %t3292 = add i64 %r3291, 64
  %t3293 = add i64 %t3292, 8
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %gmp3295 = inttoptr i64 %t3292 to ptr
  store i64 %r3294, ptr %gmp3295, align 1, !alias.scope !4, !noalias !3
  %gmp3296 = inttoptr i64 %t3293 to ptr
  store i64 0, ptr %gmp3296, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bc8 word 0xa90937eb
  %r3297.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3297 = load i64, ptr %r3297.p, align 8, !alias.scope !3, !noalias !4
  %t3298 = add i64 %r3297, 144
  %t3299 = add i64 %t3298, 8
  %r3300.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3300 = load i64, ptr %r3300.p, align 8, !alias.scope !3, !noalias !4
  %gmp3301 = inttoptr i64 %t3298 to ptr
  store i64 %r3300, ptr %gmp3301, align 1, !alias.scope !4, !noalias !3
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %gmp3303 = inttoptr i64 %t3299 to ptr
  store i64 %r3302, ptr %gmp3303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bcc word 0xa9067fff
  %r3304.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3304 = load i64, ptr %r3304.p, align 8, !alias.scope !3, !noalias !4
  %t3305 = add i64 %r3304, 96
  %t3306 = add i64 %t3305, 8
  %gmp3307 = inttoptr i64 %t3305 to ptr
  store i64 0, ptr %gmp3307, align 1, !alias.scope !4, !noalias !3
  %gmp3308 = inttoptr i64 %t3306 to ptr
  store i64 0, ptr %gmp3308, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bd0 word 0xa9057fea
  %r3309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3309 = load i64, ptr %r3309.p, align 8, !alias.scope !3, !noalias !4
  %t3310 = add i64 %r3309, 80
  %t3311 = add i64 %t3310, 8
  %r3312.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3312 = load i64, ptr %r3312.p, align 8, !alias.scope !3, !noalias !4
  %gmp3313 = inttoptr i64 %t3310 to ptr
  store i64 %r3312, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  %gmp3314 = inttoptr i64 %t3311 to ptr
  store i64 0, ptr %gmp3314, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116bd4 word 0xb4fffbc8
  %r3315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3315 = load i64, ptr %r3315.p, align 8, !alias.scope !3, !noalias !4
  %cmp3316 = icmp eq i64 %r3315, 0
  br i1 %cmp3316, label %L_800116b4c, label %L_800116bd8_ft
L_800116c64:
  ; @pc 0x800116c64 word 0x929ffe2f
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 -65522, ptr %wp3568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c68 word 0x5280800d
  %c3569 = zext i32 1024 to i64
  %wp3570 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3569, ptr %wp3570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c6c word 0x529fffee
  %c3571 = zext i32 65535 to i64
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c70 word 0xf2a0000f
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %t3574 = and i64 %r3573, -4294901761
  %t3575 = or i64 %t3574, 0
  %wp3576 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3575, ptr %wp3576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c74 word 0xa9007fed
  %r3577.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3577 = load i64, ptr %r3577.p, align 8, !alias.scope !3, !noalias !4
  %t3578 = add i64 %r3577, 8
  %r3579.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3579 = load i64, ptr %r3579.p, align 8, !alias.scope !3, !noalias !4
  %gmp3580 = inttoptr i64 %r3577 to ptr
  store i64 %r3579, ptr %gmp3580, align 1, !alias.scope !4, !noalias !3
  %gmp3581 = inttoptr i64 %t3578 to ptr
  store i64 0, ptr %gmp3581, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c78 word 0xa9013fee
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = add i64 %r3582, 16
  %t3584 = add i64 %t3583, 8
  %r3585.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3585 = load i64, ptr %r3585.p, align 8, !alias.scope !3, !noalias !4
  %gmp3586 = inttoptr i64 %t3583 to ptr
  store i64 %r3585, ptr %gmp3586, align 1, !alias.scope !4, !noalias !3
  %r3587.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3587 = load i64, ptr %r3587.p, align 8, !alias.scope !3, !noalias !4
  %gmp3588 = inttoptr i64 %t3584 to ptr
  store i64 %r3587, ptr %gmp3588, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c7c word 0xd2c0002d
  %wp3589 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp3589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c80 word 0xb2607fee
  %t3590 = or i64 0, -4294967296
  %wp3591 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3590, ptr %wp3591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c84 word 0xa9023bed
  %r3592.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3592 = load i64, ptr %r3592.p, align 8, !alias.scope !3, !noalias !4
  %t3593 = add i64 %r3592, 32
  %t3594 = add i64 %t3593, 8
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %gmp3596 = inttoptr i64 %t3593 to ptr
  store i64 %r3595, ptr %gmp3596, align 1, !alias.scope !4, !noalias !3
  %r3597.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3597 = load i64, ptr %r3597.p, align 8, !alias.scope !3, !noalias !4
  %gmp3598 = inttoptr i64 %t3594 to ptr
  store i64 %r3597, ptr %gmp3598, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c88 word 0x1280000d
  %c3599 = zext i32 -1 to i64
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c8c word 0xb2091bee
  %t3601 = or i64 0, 4575657222473777152
  %wp3602 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3601, ptr %wp3602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c90 word 0xa9033bed
  %r3603.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3603 = load i64, ptr %r3603.p, align 8, !alias.scope !3, !noalias !4
  %t3604 = add i64 %r3603, 48
  %t3605 = add i64 %t3604, 8
  %r3606.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3606 = load i64, ptr %r3606.p, align 8, !alias.scope !3, !noalias !4
  %gmp3607 = inttoptr i64 %t3604 to ptr
  store i64 %r3606, ptr %gmp3607, align 1, !alias.scope !4, !noalias !3
  %r3608.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3608 = load i64, ptr %r3608.p, align 8, !alias.scope !3, !noalias !4
  %gmp3609 = inttoptr i64 %t3605 to ptr
  store i64 %r3608, ptr %gmp3609, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c94 word 0x900157cd
  %wp3610 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405933056, ptr %wp3610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c98 word 0x910e8dad
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %t3612 = add i64 %r3611, 931
  %wp3613 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3612, ptr %wp3613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c9c word 0x140000a2
  br label %L_800116f24
L_800116ca0:
  ; @pc 0x800116ca0 word 0xd2a1080d
  %wp3614 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 138412032, ptr %wp3614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ca4 word 0xd2c001ee
  %wp3615 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 64424509440, ptr %wp3615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ca8 word 0xb900a3e8
  %r3616.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3616 = load i64, ptr %r3616.p, align 8, !alias.scope !3, !noalias !4
  %t3617 = add i64 %r3616, 160
  %r3618.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3618 = load i64, ptr %r3618.p, align 8, !alias.scope !3, !noalias !4
  %c3619 = trunc i64 %r3618 to i32
  %gmp3620 = inttoptr i64 %t3617 to ptr
  store i32 %c3619, ptr %gmp3620, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cac word 0xf2dfffed
  %r3621.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3621 = load i64, ptr %r3621.p, align 8, !alias.scope !3, !noalias !4
  %t3622 = and i64 %r3621, -281470681743361
  %t3623 = or i64 %t3622, 281470681743360
  %wp3624 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3623, ptr %wp3624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cb0 word 0xf80143ee
  %r3625.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3625 = load i64, ptr %r3625.p, align 8, !alias.scope !3, !noalias !4
  %t3626 = add i64 %r3625, 20
  %r3627.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3627 = load i64, ptr %r3627.p, align 8, !alias.scope !3, !noalias !4
  %gmp3628 = inttoptr i64 %t3626 to ptr
  store i64 %r3627, ptr %gmp3628, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cb4 word 0x5280400e
  %c3629 = zext i32 512 to i64
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cb8 word 0x72a8000e
  %r3631.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3631 = load i64, ptr %r3631.p, align 8, !alias.scope !3, !noalias !4
  %t3632 = and i64 %r3631, -4294901761
  %t3633 = or i64 %t3632, 1073741824
  %c3634 = trunc i64 %t3633 to i32
  %c3635 = zext i32 %c3634 to i64
  %wp3636 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3635, ptr %wp3636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cbc word 0xf800c3ed
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %t3638 = add i64 %r3637, 12
  %r3639.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3639 = load i64, ptr %r3639.p, align 8, !alias.scope !3, !noalias !4
  %gmp3640 = inttoptr i64 %t3638 to ptr
  store i64 %r3639, ptr %gmp3640, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cc0 word 0xb97a8e8d
  %r3641.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3641 = load i64, ptr %r3641.p, align 8, !alias.scope !3, !noalias !4
  %t3642 = add i64 %r3641, 14988
  %gmp3643 = inttoptr i64 %t3642 to ptr
  %gml3644 = load i32, ptr %gmp3643, align 1, !alias.scope !4, !noalias !3
  %c3645 = zext i32 %gml3644 to i64
  %wp3646 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3645, ptr %wp3646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cc4 word 0x52a80010
  %c3647 = zext i32 1073741824 to i64
  %wp3648 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3647, ptr %wp3648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cc8 word 0x9100418c
  %r3649.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3649 = load i64, ptr %r3649.p, align 8, !alias.scope !3, !noalias !4
  %t3650 = add i64 %r3649, 16
  %wp3651 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3650, ptr %wp3651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ccc word 0x91004148
  %r3652.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3652 = load i64, ptr %r3652.p, align 8, !alias.scope !3, !noalias !4
  %t3653 = add i64 %r3652, 16
  %wp3654 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3653, ptr %wp3654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cd0 word 0xf80043ff
  %r3655.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3655 = load i64, ptr %r3655.p, align 8, !alias.scope !3, !noalias !4
  %t3656 = add i64 %r3655, 4
  %gmp3657 = inttoptr i64 %t3656 to ptr
  store i64 0, ptr %gmp3657, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cd4 word 0xf801c3ef
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %t3659 = add i64 %r3658, 28
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %gmp3661 = inttoptr i64 %t3659 to ptr
  store i64 %r3660, ptr %gmp3661, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cd8 word 0x720f01bf
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %c3663 = trunc i64 %r3662 to i32
  %t3664 = and i32 %c3663, 131072
  %fn3665 = icmp slt i32 %t3664, 0
  %fz3666 = icmp eq i32 %t3664, 0
  %nz3667 = zext i1 %fn3665 to i64
  %zz3668 = zext i1 %fz3666 to i64
  %ns3669 = shl i64 %nz3667, 31
  %zs3670 = shl i64 %zz3668, 30
  %nzcv3671 = or i64 %ns3669, %zs3670
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cdc word 0x5280002d
  %c3673 = zext i32 1 to i64
  %wp3674 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3673, ptr %wp3674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ce0 word 0xb90037ff
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %t3676 = add i64 %r3675, 52
  %gmp3677 = inttoptr i64 %t3676 to ptr
  store i32 0, ptr %gmp3677, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ce4 word 0xf900037f
  %r3678.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3678 = load i64, ptr %r3678.p, align 8, !alias.scope !3, !noalias !4
  %gmp3679 = inttoptr i64 %r3678 to ptr
  store i64 0, ptr %gmp3679, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ce8 word 0x1a8e020e
  %r3680.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3680 = load i64, ptr %r3680.p, align 8, !alias.scope !3, !noalias !4
  %c3681 = trunc i64 %r3680 to i32
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %c3683 = trunc i64 %r3682 to i32
  %r3684.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3684 = load i64, ptr %r3684.p, align 8, !alias.scope !3, !noalias !4
  %fsh3686 = lshr i64 %r3684, 30
  %cond3685 = trunc i64 %fsh3686 to i1
  %sel3687 = select i1 %cond3685, i32 %c3681, i32 %c3683
  %c3688 = zext i32 %sel3687 to i64
  %wp3689 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3688, ptr %wp3689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cec word 0xb2091bf0
  %t3690 = or i64 0, 4575657222473777152
  %wp3691 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3690, ptr %wp3691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116cf0 word 0xf80243ed
  %r3692.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3692 = load i64, ptr %r3692.p, align 8, !alias.scope !3, !noalias !4
  %t3693 = add i64 %r3692, 36
  %r3694.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3694 = load i64, ptr %r3694.p, align 8, !alias.scope !3, !noalias !4
  %gmp3695 = inttoptr i64 %t3693 to ptr
  store i64 %r3694, ptr %gmp3695, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cf4 word 0x3900237f
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %t3697 = add i64 %r3696, 8
  %c3698 = trunc i32 0 to i8
  %gmp3699 = inttoptr i64 %t3697 to ptr
  store i8 %c3698, ptr %gmp3699, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cf8 word 0xb900bfff
  %r3700.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3700 = load i64, ptr %r3700.p, align 8, !alias.scope !3, !noalias !4
  %t3701 = add i64 %r3700, 188
  %gmp3702 = inttoptr i64 %t3701 to ptr
  store i32 0, ptr %gmp3702, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116cfc word 0x2905b7ef
  %r3703.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3703 = load i64, ptr %r3703.p, align 8, !alias.scope !3, !noalias !4
  %t3704 = add i64 %r3703, 44
  %t3705 = add i64 %t3704, 4
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %c3707 = trunc i64 %r3706 to i32
  %gmp3708 = inttoptr i64 %t3704 to ptr
  store i32 %c3707, ptr %gmp3708, align 1, !alias.scope !4, !noalias !3
  %r3709.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3709 = load i64, ptr %r3709.p, align 8, !alias.scope !3, !noalias !4
  %c3710 = trunc i64 %r3709 to i32
  %gmp3711 = inttoptr i64 %t3705 to ptr
  store i32 %c3710, ptr %gmp3711, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d00 word 0xb90003ee
  %r3712.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3712 = load i64, ptr %r3712.p, align 8, !alias.scope !3, !noalias !4
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %c3714 = trunc i64 %r3713 to i32
  %gmp3715 = inttoptr i64 %r3712 to ptr
  store i32 %c3714, ptr %gmp3715, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d04 word 0x900157ce
  %wp3716 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34405933056, ptr %wp3716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d08 word 0x910ee9ce
  %r3717.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3717 = load i64, ptr %r3717.p, align 8, !alias.scope !3, !noalias !4
  %t3718 = add i64 %r3717, 954
  %wp3719 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3718, ptr %wp3719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d0c word 0xa903c3f0
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %t3721 = add i64 %r3720, 56
  %t3722 = add i64 %t3721, 8
  %r3723.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3723 = load i64, ptr %r3723.p, align 8, !alias.scope !3, !noalias !4
  %gmp3724 = inttoptr i64 %t3721 to ptr
  store i64 %r3723, ptr %gmp3724, align 1, !alias.scope !4, !noalias !3
  %r3725.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3725 = load i64, ptr %r3725.p, align 8, !alias.scope !3, !noalias !4
  %gmp3726 = inttoptr i64 %t3722 to ptr
  store i64 %r3725, ptr %gmp3726, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d10 word 0xd2e7f010
  %wp3727 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 4575657221408423936, ptr %wp3727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d14 word 0xf80a4310
  %r3728.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3728 = load i64, ptr %r3728.p, align 8, !alias.scope !3, !noalias !4
  %t3729 = add i64 %r3728, 164
  %r3730.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3730 = load i64, ptr %r3730.p, align 8, !alias.scope !3, !noalias !4
  %gmp3731 = inttoptr i64 %t3729 to ptr
  store i64 %r3730, ptr %gmp3731, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d18 word 0xb2087bf0
  %t3732 = or i64 0, -36028797027352577
  %wp3733 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3732, ptr %wp3733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d1c word 0xf9004ff0
  %r3734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3734 = load i64, ptr %r3734.p, align 8, !alias.scope !3, !noalias !4
  %t3735 = add i64 %r3734, 152
  %r3736.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3736 = load i64, ptr %r3736.p, align 8, !alias.scope !3, !noalias !4
  %gmp3737 = inttoptr i64 %t3735 to ptr
  store i64 %r3736, ptr %gmp3737, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d20 word 0xa907c3eb
  %r3738.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3738 = load i64, ptr %r3738.p, align 8, !alias.scope !3, !noalias !4
  %t3739 = add i64 %r3738, 120
  %t3740 = add i64 %t3739, 8
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %gmp3742 = inttoptr i64 %t3739 to ptr
  store i64 %r3741, ptr %gmp3742, align 1, !alias.scope !4, !noalias !3
  %r3743.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3743 = load i64, ptr %r3743.p, align 8, !alias.scope !3, !noalias !4
  %gmp3744 = inttoptr i64 %t3740 to ptr
  store i64 %r3743, ptr %gmp3744, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d24 word 0xa908afec
  %r3745.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3745 = load i64, ptr %r3745.p, align 8, !alias.scope !3, !noalias !4
  %t3746 = add i64 %r3745, 136
  %t3747 = add i64 %t3746, 8
  %r3748.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3748 = load i64, ptr %r3748.p, align 8, !alias.scope !3, !noalias !4
  %gmp3749 = inttoptr i64 %t3746 to ptr
  store i64 %r3748, ptr %gmp3749, align 1, !alias.scope !4, !noalias !3
  %r3750.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3750 = load i64, ptr %r3750.p, align 8, !alias.scope !3, !noalias !4
  %gmp3751 = inttoptr i64 %t3747 to ptr
  store i64 %r3750, ptr %gmp3751, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d28 word 0xa905ffff
  %r3752.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3752 = load i64, ptr %r3752.p, align 8, !alias.scope !3, !noalias !4
  %t3753 = add i64 %r3752, 88
  %t3754 = add i64 %t3753, 8
  %gmp3755 = inttoptr i64 %t3753 to ptr
  store i64 0, ptr %gmp3755, align 1, !alias.scope !4, !noalias !3
  %gmp3756 = inttoptr i64 %t3754 to ptr
  store i64 0, ptr %gmp3756, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d2c word 0xa906bbff
  %r3757.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3757 = load i64, ptr %r3757.p, align 8, !alias.scope !3, !noalias !4
  %t3758 = add i64 %r3757, 104
  %t3759 = add i64 %t3758, 8
  %gmp3760 = inttoptr i64 %t3758 to ptr
  store i64 0, ptr %gmp3760, align 1, !alias.scope !4, !noalias !3
  %r3761.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3761 = load i64, ptr %r3761.p, align 8, !alias.scope !3, !noalias !4
  %gmp3762 = inttoptr i64 %t3759 to ptr
  store i64 %r3761, ptr %gmp3762, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d30 word 0xa904a3ff
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3763 = load i64, ptr %r3763.p, align 8, !alias.scope !3, !noalias !4
  %t3764 = add i64 %r3763, 72
  %t3765 = add i64 %t3764, 8
  %gmp3766 = inttoptr i64 %t3764 to ptr
  store i64 0, ptr %gmp3766, align 1, !alias.scope !4, !noalias !3
  %r3767.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3767 = load i64, ptr %r3767.p, align 8, !alias.scope !3, !noalias !4
  %gmp3768 = inttoptr i64 %t3765 to ptr
  store i64 %r3767, ptr %gmp3768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d34 word 0x1400008c
  br label %L_800116f64
L_800116d38:
  ; @pc 0x800116d38 word 0x5280100d
  %c3769 = zext i32 128 to i64
  %wp3770 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3769, ptr %wp3770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d3c word 0xd2e00c0e
  %wp3771 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 27021597764222976, ptr %wp3771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d40 word 0x529fffef
  %c3772 = zext i32 65535 to i64
  %wp3773 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3772, ptr %wp3773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d44 word 0xa9003bed
  %r3774.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3774 = load i64, ptr %r3774.p, align 8, !alias.scope !3, !noalias !4
  %t3775 = add i64 %r3774, 8
  %r3776.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3776 = load i64, ptr %r3776.p, align 8, !alias.scope !3, !noalias !4
  %gmp3777 = inttoptr i64 %r3774 to ptr
  store i64 %r3776, ptr %gmp3777, align 1, !alias.scope !4, !noalias !3
  %r3778.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3778 = load i64, ptr %r3778.p, align 8, !alias.scope !3, !noalias !4
  %gmp3779 = inttoptr i64 %t3775 to ptr
  store i64 %r3778, ptr %gmp3779, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d48 word 0x929ffdad
  %wp3780 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65518, ptr %wp3780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d4c word 0xf2a0000d
  %r3781.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3781 = load i64, ptr %r3781.p, align 8, !alias.scope !3, !noalias !4
  %t3782 = and i64 %r3781, -4294901761
  %t3783 = or i64 %t3782, 0
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d50 word 0xb2607fee
  %t3785 = or i64 0, -4294967296
  %wp3786 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3785, ptr %wp3786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d54 word 0xa90137ef
  %r3787.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3787 = load i64, ptr %r3787.p, align 8, !alias.scope !3, !noalias !4
  %t3788 = add i64 %r3787, 16
  %t3789 = add i64 %t3788, 8
  %r3790.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3790 = load i64, ptr %r3790.p, align 8, !alias.scope !3, !noalias !4
  %gmp3791 = inttoptr i64 %t3788 to ptr
  store i64 %r3790, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %r3792.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3792 = load i64, ptr %r3792.p, align 8, !alias.scope !3, !noalias !4
  %gmp3793 = inttoptr i64 %t3789 to ptr
  store i64 %r3792, ptr %gmp3793, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d58 word 0xd2c0002d
  %wp3794 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp3794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d5c word 0xa9023bed
  %r3795.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3795 = load i64, ptr %r3795.p, align 8, !alias.scope !3, !noalias !4
  %t3796 = add i64 %r3795, 32
  %t3797 = add i64 %t3796, 8
  %r3798.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3798 = load i64, ptr %r3798.p, align 8, !alias.scope !3, !noalias !4
  %gmp3799 = inttoptr i64 %t3796 to ptr
  store i64 %r3798, ptr %gmp3799, align 1, !alias.scope !4, !noalias !3
  %r3800.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3800 = load i64, ptr %r3800.p, align 8, !alias.scope !3, !noalias !4
  %gmp3801 = inttoptr i64 %t3797 to ptr
  store i64 %r3800, ptr %gmp3801, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d60 word 0x1280000d
  %c3802 = zext i32 -1 to i64
  %wp3803 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3802, ptr %wp3803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d64 word 0xb2091bee
  %t3804 = or i64 0, 4575657222473777152
  %wp3805 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3804, ptr %wp3805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d68 word 0xa9033bed
  %r3806.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3806 = load i64, ptr %r3806.p, align 8, !alias.scope !3, !noalias !4
  %t3807 = add i64 %r3806, 48
  %t3808 = add i64 %t3807, 8
  %r3809.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3809 = load i64, ptr %r3809.p, align 8, !alias.scope !3, !noalias !4
  %gmp3810 = inttoptr i64 %t3807 to ptr
  store i64 %r3809, ptr %gmp3810, align 1, !alias.scope !4, !noalias !3
  %r3811.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3811 = load i64, ptr %r3811.p, align 8, !alias.scope !3, !noalias !4
  %gmp3812 = inttoptr i64 %t3808 to ptr
  store i64 %r3811, ptr %gmp3812, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d6c word 0x90015cad
  %wp3813 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406572032, ptr %wp3813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d70 word 0x9134ddad
  %r3814.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3814 = load i64, ptr %r3814.p, align 8, !alias.scope !3, !noalias !4
  %t3815 = add i64 %r3814, 3383
  %wp3816 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3815, ptr %wp3816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d74 word 0x1400006c
  br label %L_800116f24
L_800116d78:
  ; @pc 0x800116d78 word 0x52a8000d
  %c3817 = zext i32 1073741824 to i64
  %wp3818 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3817, ptr %wp3818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d7c word 0xd2e0080e
  %wp3819 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp3819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d80 word 0xb900a3e8
  %r3820.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3820 = load i64, ptr %r3820.p, align 8, !alias.scope !3, !noalias !4
  %t3821 = add i64 %r3820, 160
  %r3822.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3822 = load i64, ptr %r3822.p, align 8, !alias.scope !3, !noalias !4
  %c3823 = trunc i64 %r3822 to i32
  %gmp3824 = inttoptr i64 %t3821 to ptr
  store i32 %c3823, ptr %gmp3824, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d84 word 0xa9003bed
  %r3825.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3825 = load i64, ptr %r3825.p, align 8, !alias.scope !3, !noalias !4
  %t3826 = add i64 %r3825, 8
  %r3827.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3827 = load i64, ptr %r3827.p, align 8, !alias.scope !3, !noalias !4
  %gmp3828 = inttoptr i64 %r3825 to ptr
  store i64 %r3827, ptr %gmp3828, align 1, !alias.scope !4, !noalias !3
  %r3829.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3829 = load i64, ptr %r3829.p, align 8, !alias.scope !3, !noalias !4
  %gmp3830 = inttoptr i64 %t3826 to ptr
  store i64 %r3829, ptr %gmp3830, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d88 word 0x929ffd6d
  %wp3831 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65516, ptr %wp3831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d8c word 0x529fffef
  %c3832 = zext i32 65535 to i64
  %wp3833 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3832, ptr %wp3833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d90 word 0xf2a0000d
  %r3834.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3834 = load i64, ptr %r3834.p, align 8, !alias.scope !3, !noalias !4
  %t3835 = and i64 %r3834, -4294901761
  %t3836 = or i64 %t3835, 0
  %wp3837 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3836, ptr %wp3837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d94 word 0xb2607fee
  %t3838 = or i64 0, -4294967296
  %wp3839 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3838, ptr %wp3839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116d98 word 0xa90137ef
  %r3840.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3840 = load i64, ptr %r3840.p, align 8, !alias.scope !3, !noalias !4
  %t3841 = add i64 %r3840, 16
  %t3842 = add i64 %t3841, 8
  %r3843.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3843 = load i64, ptr %r3843.p, align 8, !alias.scope !3, !noalias !4
  %gmp3844 = inttoptr i64 %t3841 to ptr
  store i64 %r3843, ptr %gmp3844, align 1, !alias.scope !4, !noalias !3
  %r3845.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3845 = load i64, ptr %r3845.p, align 8, !alias.scope !3, !noalias !4
  %gmp3846 = inttoptr i64 %t3842 to ptr
  store i64 %r3845, ptr %gmp3846, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116d9c word 0xd2c0002d
  %wp3847 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp3847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116da0 word 0x9100418c
  %r3848.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3848 = load i64, ptr %r3848.p, align 8, !alias.scope !3, !noalias !4
  %t3849 = add i64 %r3848, 16
  %wp3850 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3849, ptr %wp3850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116da4 word 0x91004148
  %r3851.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3851 = load i64, ptr %r3851.p, align 8, !alias.scope !3, !noalias !4
  %t3852 = add i64 %r3851, 16
  %wp3853 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3852, ptr %wp3853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116da8 word 0x3900237f
  %r3854.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3854 = load i64, ptr %r3854.p, align 8, !alias.scope !3, !noalias !4
  %t3855 = add i64 %r3854, 8
  %c3856 = trunc i32 0 to i8
  %gmp3857 = inttoptr i64 %t3855 to ptr
  store i8 %c3856, ptr %gmp3857, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116dac word 0xf900037f
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %gmp3859 = inttoptr i64 %r3858 to ptr
  store i64 0, ptr %gmp3859, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116db0 word 0xb900bfff
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %t3861 = add i64 %r3860, 188
  %gmp3862 = inttoptr i64 %t3861 to ptr
  store i32 0, ptr %gmp3862, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116db4 word 0xa9023bed
  %r3863.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3863 = load i64, ptr %r3863.p, align 8, !alias.scope !3, !noalias !4
  %t3864 = add i64 %r3863, 32
  %t3865 = add i64 %t3864, 8
  %r3866.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3866 = load i64, ptr %r3866.p, align 8, !alias.scope !3, !noalias !4
  %gmp3867 = inttoptr i64 %t3864 to ptr
  store i64 %r3866, ptr %gmp3867, align 1, !alias.scope !4, !noalias !3
  %r3868.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3868 = load i64, ptr %r3868.p, align 8, !alias.scope !3, !noalias !4
  %gmp3869 = inttoptr i64 %t3865 to ptr
  store i64 %r3868, ptr %gmp3869, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116db8 word 0x1280000d
  %c3870 = zext i32 -1 to i64
  %wp3871 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3870, ptr %wp3871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dbc word 0xb2091bee
  %t3872 = or i64 0, 4575657222473777152
  %wp3873 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3872, ptr %wp3873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dc0 word 0xa9033bed
  %r3874.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3874 = load i64, ptr %r3874.p, align 8, !alias.scope !3, !noalias !4
  %t3875 = add i64 %r3874, 48
  %t3876 = add i64 %t3875, 8
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %gmp3878 = inttoptr i64 %t3875 to ptr
  store i64 %r3877, ptr %gmp3878, align 1, !alias.scope !4, !noalias !3
  %r3879.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3879 = load i64, ptr %r3879.p, align 8, !alias.scope !3, !noalias !4
  %gmp3880 = inttoptr i64 %t3876 to ptr
  store i64 %r3879, ptr %gmp3880, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116dc4 word 0x9001588d
  %wp3881 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406031360, ptr %wp3881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dc8 word 0x912d29ad
  %r3882.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3882 = load i64, ptr %r3882.p, align 8, !alias.scope !3, !noalias !4
  %t3883 = add i64 %r3882, 2890
  %wp3884 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3883, ptr %wp3884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dcc word 0xa9072fed
  %r3885.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3885 = load i64, ptr %r3885.p, align 8, !alias.scope !3, !noalias !4
  %t3886 = add i64 %r3885, 112
  %t3887 = add i64 %t3886, 8
  %r3888.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3888 = load i64, ptr %r3888.p, align 8, !alias.scope !3, !noalias !4
  %gmp3889 = inttoptr i64 %t3886 to ptr
  store i64 %r3888, ptr %gmp3889, align 1, !alias.scope !4, !noalias !3
  %r3890.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3890 = load i64, ptr %r3890.p, align 8, !alias.scope !3, !noalias !4
  %gmp3891 = inttoptr i64 %t3887 to ptr
  store i64 %r3890, ptr %gmp3891, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116dd0 word 0xb2087bed
  %t3892 = or i64 0, -36028797027352577
  %wp3893 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3892, ptr %wp3893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dd4 word 0xa90833ed
  %r3894.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3894 = load i64, ptr %r3894.p, align 8, !alias.scope !3, !noalias !4
  %t3895 = add i64 %r3894, 128
  %t3896 = add i64 %t3895, 8
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %gmp3898 = inttoptr i64 %t3895 to ptr
  store i64 %r3897, ptr %gmp3898, align 1, !alias.scope !4, !noalias !3
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3899 = load i64, ptr %r3899.p, align 8, !alias.scope !3, !noalias !4
  %gmp3900 = inttoptr i64 %t3896 to ptr
  store i64 %r3899, ptr %gmp3900, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116dd8 word 0xd2e7f00c
  %wp3901 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp3901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ddc word 0xf80a430c
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %t3903 = add i64 %r3902, 164
  %r3904.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3904 = load i64, ptr %r3904.p, align 8, !alias.scope !3, !noalias !4
  %gmp3905 = inttoptr i64 %t3903 to ptr
  store i64 %r3904, ptr %gmp3905, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116de0 word 0xa9047fee
  %r3906.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3906 = load i64, ptr %r3906.p, align 8, !alias.scope !3, !noalias !4
  %t3907 = add i64 %r3906, 64
  %t3908 = add i64 %t3907, 8
  %r3909.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3909 = load i64, ptr %r3909.p, align 8, !alias.scope !3, !noalias !4
  %gmp3910 = inttoptr i64 %t3907 to ptr
  store i64 %r3909, ptr %gmp3910, align 1, !alias.scope !4, !noalias !3
  %gmp3911 = inttoptr i64 %t3908 to ptr
  store i64 0, ptr %gmp3911, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116de4 word 0xa90937eb
  %r3912.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3912 = load i64, ptr %r3912.p, align 8, !alias.scope !3, !noalias !4
  %t3913 = add i64 %r3912, 144
  %t3914 = add i64 %t3913, 8
  %r3915.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3915 = load i64, ptr %r3915.p, align 8, !alias.scope !3, !noalias !4
  %gmp3916 = inttoptr i64 %t3913 to ptr
  store i64 %r3915, ptr %gmp3916, align 1, !alias.scope !4, !noalias !3
  %r3917.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3917 = load i64, ptr %r3917.p, align 8, !alias.scope !3, !noalias !4
  %gmp3918 = inttoptr i64 %t3914 to ptr
  store i64 %r3917, ptr %gmp3918, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116de8 word 0xa9067fff
  %r3919.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3919 = load i64, ptr %r3919.p, align 8, !alias.scope !3, !noalias !4
  %t3920 = add i64 %r3919, 96
  %t3921 = add i64 %t3920, 8
  %gmp3922 = inttoptr i64 %t3920 to ptr
  store i64 0, ptr %gmp3922, align 1, !alias.scope !4, !noalias !3
  %gmp3923 = inttoptr i64 %t3921 to ptr
  store i64 0, ptr %gmp3923, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116dec word 0xa9057fe8
  %r3924.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3924 = load i64, ptr %r3924.p, align 8, !alias.scope !3, !noalias !4
  %t3925 = add i64 %r3924, 80
  %t3926 = add i64 %t3925, 8
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %gmp3928 = inttoptr i64 %t3925 to ptr
  store i64 %r3927, ptr %gmp3928, align 1, !alias.scope !4, !noalias !3
  %gmp3929 = inttoptr i64 %t3926 to ptr
  store i64 0, ptr %gmp3929, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116df0 word 0x1400005d
  br label %L_800116f64
L_800116df4:
  ; @pc 0x800116df4 word 0x5280006d
  %c3930 = zext i32 3 to i64
  %wp3931 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3930, ptr %wp3931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116df8 word 0xd2e0080e
  %wp3932 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp3932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116dfc word 0x529fffef
  %c3933 = zext i32 65535 to i64
  %wp3934 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3933, ptr %wp3934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e00 word 0xa9003bed
  %r3935.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3935 = load i64, ptr %r3935.p, align 8, !alias.scope !3, !noalias !4
  %t3936 = add i64 %r3935, 8
  %r3937.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3937 = load i64, ptr %r3937.p, align 8, !alias.scope !3, !noalias !4
  %gmp3938 = inttoptr i64 %r3935 to ptr
  store i64 %r3937, ptr %gmp3938, align 1, !alias.scope !4, !noalias !3
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %gmp3940 = inttoptr i64 %t3936 to ptr
  store i64 %r3939, ptr %gmp3940, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e04 word 0xb2608fed
  %t3941 = or i64 0, -4294967281
  %wp3942 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3941, ptr %wp3942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e08 word 0xa90137ef
  %r3943.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3943 = load i64, ptr %r3943.p, align 8, !alias.scope !3, !noalias !4
  %t3944 = add i64 %r3943, 16
  %t3945 = add i64 %t3944, 8
  %r3946.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3946 = load i64, ptr %r3946.p, align 8, !alias.scope !3, !noalias !4
  %gmp3947 = inttoptr i64 %t3944 to ptr
  store i64 %r3946, ptr %gmp3947, align 1, !alias.scope !4, !noalias !3
  %r3948.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3948 = load i64, ptr %r3948.p, align 8, !alias.scope !3, !noalias !4
  %gmp3949 = inttoptr i64 %t3945 to ptr
  store i64 %r3948, ptr %gmp3949, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e0c word 0xd2c0002d
  %wp3950 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp3950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e10 word 0xb2607fee
  %t3951 = or i64 0, -4294967296
  %wp3952 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3951, ptr %wp3952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e14 word 0xa9023bed
  %r3953.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3953 = load i64, ptr %r3953.p, align 8, !alias.scope !3, !noalias !4
  %t3954 = add i64 %r3953, 32
  %t3955 = add i64 %t3954, 8
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %gmp3957 = inttoptr i64 %t3954 to ptr
  store i64 %r3956, ptr %gmp3957, align 1, !alias.scope !4, !noalias !3
  %r3958.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3958 = load i64, ptr %r3958.p, align 8, !alias.scope !3, !noalias !4
  %gmp3959 = inttoptr i64 %t3955 to ptr
  store i64 %r3958, ptr %gmp3959, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e18 word 0x1280000d
  %c3960 = zext i32 -1 to i64
  %wp3961 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3960, ptr %wp3961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e1c word 0xb2091bee
  %t3962 = or i64 0, 4575657222473777152
  %wp3963 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3962, ptr %wp3963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e20 word 0xa9033bed
  %r3964.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3964 = load i64, ptr %r3964.p, align 8, !alias.scope !3, !noalias !4
  %t3965 = add i64 %r3964, 48
  %t3966 = add i64 %t3965, 8
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %gmp3968 = inttoptr i64 %t3965 to ptr
  store i64 %r3967, ptr %gmp3968, align 1, !alias.scope !4, !noalias !3
  %r3969.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3969 = load i64, ptr %r3969.p, align 8, !alias.scope !3, !noalias !4
  %gmp3970 = inttoptr i64 %t3966 to ptr
  store i64 %r3969, ptr %gmp3970, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e24 word 0xf0015a4d
  %wp3971 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406273024, ptr %wp3971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e28 word 0x910715ad
  %r3972.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3972 = load i64, ptr %r3972.p, align 8, !alias.scope !3, !noalias !4
  %t3973 = add i64 %r3972, 453
  %wp3974 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3973, ptr %wp3974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e2c word 0x1400003e
  br label %L_800116f24
L_800116e30:
  ; @pc 0x800116e30 word 0xd280002d
  %wp3975 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 1, ptr %wp3975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e34 word 0xd2c1004e
  %wp3976 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 8804682956800, ptr %wp3976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e38 word 0x529fffef
  %c3977 = zext i32 65535 to i64
  %wp3978 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3977, ptr %wp3978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e3c word 0xf2c0008d
  %r3979.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3979 = load i64, ptr %r3979.p, align 8, !alias.scope !3, !noalias !4
  %t3980 = and i64 %r3979, -281470681743361
  %t3981 = or i64 %t3980, 17179869184
  %wp3982 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3981, ptr %wp3982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e40 word 0xa9003bed
  %r3983.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3983 = load i64, ptr %r3983.p, align 8, !alias.scope !3, !noalias !4
  %t3984 = add i64 %r3983, 8
  %r3985.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3985 = load i64, ptr %r3985.p, align 8, !alias.scope !3, !noalias !4
  %gmp3986 = inttoptr i64 %r3983 to ptr
  store i64 %r3985, ptr %gmp3986, align 1, !alias.scope !4, !noalias !3
  %r3987.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3987 = load i64, ptr %r3987.p, align 8, !alias.scope !3, !noalias !4
  %gmp3988 = inttoptr i64 %t3984 to ptr
  store i64 %r3987, ptr %gmp3988, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e44 word 0xb2608fed
  %t3989 = or i64 0, -4294967281
  %wp3990 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3989, ptr %wp3990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e48 word 0xb2607fee
  %t3991 = or i64 0, -4294967296
  %wp3992 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3991, ptr %wp3992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e4c word 0xa90137ef
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %t3994 = add i64 %r3993, 16
  %t3995 = add i64 %t3994, 8
  %r3996.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3996 = load i64, ptr %r3996.p, align 8, !alias.scope !3, !noalias !4
  %gmp3997 = inttoptr i64 %t3994 to ptr
  store i64 %r3996, ptr %gmp3997, align 1, !alias.scope !4, !noalias !3
  %r3998.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3998 = load i64, ptr %r3998.p, align 8, !alias.scope !3, !noalias !4
  %gmp3999 = inttoptr i64 %t3995 to ptr
  store i64 %r3998, ptr %gmp3999, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e50 word 0xd2c0002d
  %wp4000 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp4000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e54 word 0xa9023bed
  %r4001.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4001 = load i64, ptr %r4001.p, align 8, !alias.scope !3, !noalias !4
  %t4002 = add i64 %r4001, 32
  %t4003 = add i64 %t4002, 8
  %r4004.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4004 = load i64, ptr %r4004.p, align 8, !alias.scope !3, !noalias !4
  %gmp4005 = inttoptr i64 %t4002 to ptr
  store i64 %r4004, ptr %gmp4005, align 1, !alias.scope !4, !noalias !3
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %gmp4007 = inttoptr i64 %t4003 to ptr
  store i64 %r4006, ptr %gmp4007, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e58 word 0x1280000d
  %c4008 = zext i32 -1 to i64
  %wp4009 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4008, ptr %wp4009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e5c word 0xb2091bee
  %t4010 = or i64 0, 4575657222473777152
  %wp4011 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4010, ptr %wp4011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e60 word 0xa9033bed
  %r4012.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4012 = load i64, ptr %r4012.p, align 8, !alias.scope !3, !noalias !4
  %t4013 = add i64 %r4012, 48
  %t4014 = add i64 %t4013, 8
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %gmp4016 = inttoptr i64 %t4013 to ptr
  store i64 %r4015, ptr %gmp4016, align 1, !alias.scope !4, !noalias !3
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %gmp4018 = inttoptr i64 %t4014 to ptr
  store i64 %r4017, ptr %gmp4018, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e64 word 0xb0015ced
  %wp4019 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406608896, ptr %wp4019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e68 word 0x912549ad
  %r4020.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4020 = load i64, ptr %r4020.p, align 8, !alias.scope !3, !noalias !4
  %t4021 = add i64 %r4020, 2386
  %wp4022 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4021, ptr %wp4022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e6c word 0x1400002e
  br label %L_800116f24
L_800116e70:
  ; @pc 0x800116e70 word 0x5280002d
  %c4023 = zext i32 1 to i64
  %wp4024 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4023, ptr %wp4024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e74 word 0xd2e0080e
  %wp4025 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp4025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e78 word 0x3900237f
  %r4026.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4026 = load i64, ptr %r4026.p, align 8, !alias.scope !3, !noalias !4
  %t4027 = add i64 %r4026, 8
  %c4028 = trunc i32 0 to i8
  %gmp4029 = inttoptr i64 %t4027 to ptr
  store i8 %c4028, ptr %gmp4029, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e7c word 0xa9003bed
  %r4030.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4030 = load i64, ptr %r4030.p, align 8, !alias.scope !3, !noalias !4
  %t4031 = add i64 %r4030, 8
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %gmp4033 = inttoptr i64 %r4030 to ptr
  store i64 %r4032, ptr %gmp4033, align 1, !alias.scope !4, !noalias !3
  %r4034.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4034 = load i64, ptr %r4034.p, align 8, !alias.scope !3, !noalias !4
  %gmp4035 = inttoptr i64 %t4031 to ptr
  store i64 %r4034, ptr %gmp4035, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e80 word 0x929ffd4d
  %wp4036 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65515, ptr %wp4036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e84 word 0x529fffef
  %c4037 = zext i32 65535 to i64
  %wp4038 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4037, ptr %wp4038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e88 word 0xf2a0000d
  %r4039.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4039 = load i64, ptr %r4039.p, align 8, !alias.scope !3, !noalias !4
  %t4040 = and i64 %r4039, -4294901761
  %t4041 = or i64 %t4040, 0
  %wp4042 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4041, ptr %wp4042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e8c word 0xb2607fee
  %t4043 = or i64 0, -4294967296
  %wp4044 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4043, ptr %wp4044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e90 word 0xa90137ef
  %r4045.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4045 = load i64, ptr %r4045.p, align 8, !alias.scope !3, !noalias !4
  %t4046 = add i64 %r4045, 16
  %t4047 = add i64 %t4046, 8
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %gmp4049 = inttoptr i64 %t4046 to ptr
  store i64 %r4048, ptr %gmp4049, align 1, !alias.scope !4, !noalias !3
  %r4050.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4050 = load i64, ptr %r4050.p, align 8, !alias.scope !3, !noalias !4
  %gmp4051 = inttoptr i64 %t4047 to ptr
  store i64 %r4050, ptr %gmp4051, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116e94 word 0xd2c0002d
  %wp4052 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp4052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e98 word 0x9100418c
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %t4054 = add i64 %r4053, 16
  %wp4055 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4054, ptr %wp4055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116e9c word 0x9100414a
  %r4056.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4056 = load i64, ptr %r4056.p, align 8, !alias.scope !3, !noalias !4
  %t4057 = add i64 %r4056, 16
  %wp4058 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4057, ptr %wp4058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ea0 word 0xf900037f
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %gmp4060 = inttoptr i64 %r4059 to ptr
  store i64 0, ptr %gmp4060, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ea4 word 0xa9023bed
  %r4061.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4061 = load i64, ptr %r4061.p, align 8, !alias.scope !3, !noalias !4
  %t4062 = add i64 %r4061, 32
  %t4063 = add i64 %t4062, 8
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %gmp4065 = inttoptr i64 %t4062 to ptr
  store i64 %r4064, ptr %gmp4065, align 1, !alias.scope !4, !noalias !3
  %r4066.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4066 = load i64, ptr %r4066.p, align 8, !alias.scope !3, !noalias !4
  %gmp4067 = inttoptr i64 %t4063 to ptr
  store i64 %r4066, ptr %gmp4067, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ea8 word 0x1280000d
  %c4068 = zext i32 -1 to i64
  %wp4069 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4068, ptr %wp4069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116eac word 0xb2091bee
  %t4070 = or i64 0, 4575657222473777152
  %wp4071 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4070, ptr %wp4071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116eb0 word 0xa9033bed
  %r4072.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4072 = load i64, ptr %r4072.p, align 8, !alias.scope !3, !noalias !4
  %t4073 = add i64 %r4072, 48
  %t4074 = add i64 %t4073, 8
  %r4075.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4075 = load i64, ptr %r4075.p, align 8, !alias.scope !3, !noalias !4
  %gmp4076 = inttoptr i64 %t4073 to ptr
  store i64 %r4075, ptr %gmp4076, align 1, !alias.scope !4, !noalias !3
  %r4077.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4077 = load i64, ptr %r4077.p, align 8, !alias.scope !3, !noalias !4
  %gmp4078 = inttoptr i64 %t4074 to ptr
  store i64 %r4077, ptr %gmp4078, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116eb4 word 0x90015cad
  %wp4079 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406572032, ptr %wp4079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116eb8 word 0x913519ad
  %r4080.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4080 = load i64, ptr %r4080.p, align 8, !alias.scope !3, !noalias !4
  %t4081 = add i64 %r4080, 3398
  %wp4082 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4081, ptr %wp4082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ebc word 0xa9072fed
  %r4083.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4083 = load i64, ptr %r4083.p, align 8, !alias.scope !3, !noalias !4
  %t4084 = add i64 %r4083, 112
  %t4085 = add i64 %t4084, 8
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4086 = load i64, ptr %r4086.p, align 8, !alias.scope !3, !noalias !4
  %gmp4087 = inttoptr i64 %t4084 to ptr
  store i64 %r4086, ptr %gmp4087, align 1, !alias.scope !4, !noalias !3
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %gmp4089 = inttoptr i64 %t4085 to ptr
  store i64 %r4088, ptr %gmp4089, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ec0 word 0xb2087bed
  %t4090 = or i64 0, -36028797027352577
  %wp4091 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4090, ptr %wp4091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ec4 word 0xa90833ed
  %r4092.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4092 = load i64, ptr %r4092.p, align 8, !alias.scope !3, !noalias !4
  %t4093 = add i64 %r4092, 128
  %t4094 = add i64 %t4093, 8
  %r4095.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4095 = load i64, ptr %r4095.p, align 8, !alias.scope !3, !noalias !4
  %gmp4096 = inttoptr i64 %t4093 to ptr
  store i64 %r4095, ptr %gmp4096, align 1, !alias.scope !4, !noalias !3
  %r4097.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4097 = load i64, ptr %r4097.p, align 8, !alias.scope !3, !noalias !4
  %gmp4098 = inttoptr i64 %t4094 to ptr
  store i64 %r4097, ptr %gmp4098, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ec8 word 0xd2e7f00c
  %wp4099 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp4099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ecc word 0xf80a430c
  %r4100.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4100 = load i64, ptr %r4100.p, align 8, !alias.scope !3, !noalias !4
  %t4101 = add i64 %r4100, 164
  %r4102.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4102 = load i64, ptr %r4102.p, align 8, !alias.scope !3, !noalias !4
  %gmp4103 = inttoptr i64 %t4101 to ptr
  store i64 %r4102, ptr %gmp4103, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ed0 word 0xa9047fee
  %r4104.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4104 = load i64, ptr %r4104.p, align 8, !alias.scope !3, !noalias !4
  %t4105 = add i64 %r4104, 64
  %t4106 = add i64 %t4105, 8
  %r4107.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4107 = load i64, ptr %r4107.p, align 8, !alias.scope !3, !noalias !4
  %gmp4108 = inttoptr i64 %t4105 to ptr
  store i64 %r4107, ptr %gmp4108, align 1, !alias.scope !4, !noalias !3
  %gmp4109 = inttoptr i64 %t4106 to ptr
  store i64 0, ptr %gmp4109, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ed4 word 0xa90937eb
  %r4110.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4110 = load i64, ptr %r4110.p, align 8, !alias.scope !3, !noalias !4
  %t4111 = add i64 %r4110, 144
  %t4112 = add i64 %t4111, 8
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %gmp4114 = inttoptr i64 %t4111 to ptr
  store i64 %r4113, ptr %gmp4114, align 1, !alias.scope !4, !noalias !3
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %gmp4116 = inttoptr i64 %t4112 to ptr
  store i64 %r4115, ptr %gmp4116, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ed8 word 0xa9067fff
  %r4117.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4117 = load i64, ptr %r4117.p, align 8, !alias.scope !3, !noalias !4
  %t4118 = add i64 %r4117, 96
  %t4119 = add i64 %t4118, 8
  %gmp4120 = inttoptr i64 %t4118 to ptr
  store i64 0, ptr %gmp4120, align 1, !alias.scope !4, !noalias !3
  %gmp4121 = inttoptr i64 %t4119 to ptr
  store i64 0, ptr %gmp4121, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116edc word 0xa9057fea
  %r4122.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4122 = load i64, ptr %r4122.p, align 8, !alias.scope !3, !noalias !4
  %t4123 = add i64 %r4122, 80
  %t4124 = add i64 %t4123, 8
  %r4125.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4125 = load i64, ptr %r4125.p, align 8, !alias.scope !3, !noalias !4
  %gmp4126 = inttoptr i64 %t4123 to ptr
  store i64 %r4125, ptr %gmp4126, align 1, !alias.scope !4, !noalias !3
  %gmp4127 = inttoptr i64 %t4124 to ptr
  store i64 0, ptr %gmp4127, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ee0 word 0x5280006a
  %c4128 = zext i32 3 to i64
  %wp4129 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4128, ptr %wp4129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ee4 word 0x1400001e
  br label %L_800116f5c
L_800116ee8:
  ; @pc 0x800116ee8 word 0x5280400d
  %c4130 = zext i32 512 to i64
  %wp4131 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4130, ptr %wp4131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116eec word 0xd2e0080e
  %wp4132 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 18014398509481984, ptr %wp4132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ef0 word 0x529fffef
  %c4133 = zext i32 65535 to i64
  %wp4134 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4133, ptr %wp4134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ef4 word 0xa9003bed
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %t4136 = add i64 %r4135, 8
  %r4137.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4137 = load i64, ptr %r4137.p, align 8, !alias.scope !3, !noalias !4
  %gmp4138 = inttoptr i64 %r4135 to ptr
  store i64 %r4137, ptr %gmp4138, align 1, !alias.scope !4, !noalias !3
  %r4139.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4139 = load i64, ptr %r4139.p, align 8, !alias.scope !3, !noalias !4
  %gmp4140 = inttoptr i64 %t4136 to ptr
  store i64 %r4139, ptr %gmp4140, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116ef8 word 0x929ffd8d
  %wp4141 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 -65517, ptr %wp4141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116efc word 0xf2a0000d
  %r4142.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4142 = load i64, ptr %r4142.p, align 8, !alias.scope !3, !noalias !4
  %t4143 = and i64 %r4142, -4294901761
  %t4144 = or i64 %t4143, 0
  %wp4145 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4144, ptr %wp4145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f00 word 0xb2607fee
  %t4146 = or i64 0, -4294967296
  %wp4147 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4146, ptr %wp4147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f04 word 0xa90137ef
  %r4148.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4148 = load i64, ptr %r4148.p, align 8, !alias.scope !3, !noalias !4
  %t4149 = add i64 %r4148, 16
  %t4150 = add i64 %t4149, 8
  %r4151.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4151 = load i64, ptr %r4151.p, align 8, !alias.scope !3, !noalias !4
  %gmp4152 = inttoptr i64 %t4149 to ptr
  store i64 %r4151, ptr %gmp4152, align 1, !alias.scope !4, !noalias !3
  %r4153.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4153 = load i64, ptr %r4153.p, align 8, !alias.scope !3, !noalias !4
  %gmp4154 = inttoptr i64 %t4150 to ptr
  store i64 %r4153, ptr %gmp4154, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f08 word 0xd2c0002d
  %wp4155 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp4155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f0c word 0xa9023bed
  %r4156.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4156 = load i64, ptr %r4156.p, align 8, !alias.scope !3, !noalias !4
  %t4157 = add i64 %r4156, 32
  %t4158 = add i64 %t4157, 8
  %r4159.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4159 = load i64, ptr %r4159.p, align 8, !alias.scope !3, !noalias !4
  %gmp4160 = inttoptr i64 %t4157 to ptr
  store i64 %r4159, ptr %gmp4160, align 1, !alias.scope !4, !noalias !3
  %r4161.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4161 = load i64, ptr %r4161.p, align 8, !alias.scope !3, !noalias !4
  %gmp4162 = inttoptr i64 %t4158 to ptr
  store i64 %r4161, ptr %gmp4162, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f10 word 0x1280000d
  %c4163 = zext i32 -1 to i64
  %wp4164 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4163, ptr %wp4164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f14 word 0xb2091bee
  %t4165 = or i64 0, 4575657222473777152
  %wp4166 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4165, ptr %wp4166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f18 word 0xa9033bed
  %r4167.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4167 = load i64, ptr %r4167.p, align 8, !alias.scope !3, !noalias !4
  %t4168 = add i64 %r4167, 48
  %t4169 = add i64 %t4168, 8
  %r4170.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4170 = load i64, ptr %r4170.p, align 8, !alias.scope !3, !noalias !4
  %gmp4171 = inttoptr i64 %t4168 to ptr
  store i64 %r4170, ptr %gmp4171, align 1, !alias.scope !4, !noalias !3
  %r4172.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4172 = load i64, ptr %r4172.p, align 8, !alias.scope !3, !noalias !4
  %gmp4173 = inttoptr i64 %t4169 to ptr
  store i64 %r4172, ptr %gmp4173, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f1c word 0xf001572d
  %wp4174 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405863424, ptr %wp4174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f20 word 0x91230dad
  %r4175.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4175 = load i64, ptr %r4175.p, align 8, !alias.scope !3, !noalias !4
  %t4176 = add i64 %r4175, 2243
  %wp4177 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4176, ptr %wp4177, align 8, !alias.scope !3, !noalias !4
  br label %L_800116f24
L_800116f24:
  ; @pc 0x800116f24 word 0xa9072fed
  %r4178.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4178 = load i64, ptr %r4178.p, align 8, !alias.scope !3, !noalias !4
  %t4179 = add i64 %r4178, 112
  %t4180 = add i64 %t4179, 8
  %r4181.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4181 = load i64, ptr %r4181.p, align 8, !alias.scope !3, !noalias !4
  %gmp4182 = inttoptr i64 %t4179 to ptr
  store i64 %r4181, ptr %gmp4182, align 1, !alias.scope !4, !noalias !3
  %r4183.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4183 = load i64, ptr %r4183.p, align 8, !alias.scope !3, !noalias !4
  %gmp4184 = inttoptr i64 %t4180 to ptr
  store i64 %r4183, ptr %gmp4184, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f28 word 0xb2087bed
  %t4185 = or i64 0, -36028797027352577
  %wp4186 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4185, ptr %wp4186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f2c word 0x9100418c
  %r4187.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4187 = load i64, ptr %r4187.p, align 8, !alias.scope !3, !noalias !4
  %t4188 = add i64 %r4187, 16
  %wp4189 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4188, ptr %wp4189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f30 word 0x9100414a
  %r4190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4190 = load i64, ptr %r4190.p, align 8, !alias.scope !3, !noalias !4
  %t4191 = add i64 %r4190, 16
  %wp4192 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4191, ptr %wp4192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f34 word 0x3900237f
  %r4193.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4193 = load i64, ptr %r4193.p, align 8, !alias.scope !3, !noalias !4
  %t4194 = add i64 %r4193, 8
  %c4195 = trunc i32 0 to i8
  %gmp4196 = inttoptr i64 %t4194 to ptr
  store i8 %c4195, ptr %gmp4196, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f38 word 0xf900037f
  %r4197.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4197 = load i64, ptr %r4197.p, align 8, !alias.scope !3, !noalias !4
  %gmp4198 = inttoptr i64 %r4197 to ptr
  store i64 0, ptr %gmp4198, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f3c word 0xa90833ed
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %t4200 = add i64 %r4199, 128
  %t4201 = add i64 %t4200, 8
  %r4202.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4202 = load i64, ptr %r4202.p, align 8, !alias.scope !3, !noalias !4
  %gmp4203 = inttoptr i64 %t4200 to ptr
  store i64 %r4202, ptr %gmp4203, align 1, !alias.scope !4, !noalias !3
  %r4204.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4204 = load i64, ptr %r4204.p, align 8, !alias.scope !3, !noalias !4
  %gmp4205 = inttoptr i64 %t4201 to ptr
  store i64 %r4204, ptr %gmp4205, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f40 word 0xd2e7f00c
  %wp4206 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp4206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f44 word 0xa9047fee
  %r4207.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4207 = load i64, ptr %r4207.p, align 8, !alias.scope !3, !noalias !4
  %t4208 = add i64 %r4207, 64
  %t4209 = add i64 %t4208, 8
  %r4210.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4210 = load i64, ptr %r4210.p, align 8, !alias.scope !3, !noalias !4
  %gmp4211 = inttoptr i64 %t4208 to ptr
  store i64 %r4210, ptr %gmp4211, align 1, !alias.scope !4, !noalias !3
  %gmp4212 = inttoptr i64 %t4209 to ptr
  store i64 0, ptr %gmp4212, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f48 word 0xf80a430c
  %r4213.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4213 = load i64, ptr %r4213.p, align 8, !alias.scope !3, !noalias !4
  %t4214 = add i64 %r4213, 164
  %r4215.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4215 = load i64, ptr %r4215.p, align 8, !alias.scope !3, !noalias !4
  %gmp4216 = inttoptr i64 %t4214 to ptr
  store i64 %r4215, ptr %gmp4216, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f4c word 0xa9057fea
  %r4217.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4217 = load i64, ptr %r4217.p, align 8, !alias.scope !3, !noalias !4
  %t4218 = add i64 %r4217, 80
  %t4219 = add i64 %t4218, 8
  %r4220.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4220 = load i64, ptr %r4220.p, align 8, !alias.scope !3, !noalias !4
  %gmp4221 = inttoptr i64 %t4218 to ptr
  store i64 %r4220, ptr %gmp4221, align 1, !alias.scope !4, !noalias !3
  %gmp4222 = inttoptr i64 %t4219 to ptr
  store i64 0, ptr %gmp4222, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f50 word 0x5280004a
  %c4223 = zext i32 2 to i64
  %wp4224 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4223, ptr %wp4224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f54 word 0xa90937eb
  %r4225.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4225 = load i64, ptr %r4225.p, align 8, !alias.scope !3, !noalias !4
  %t4226 = add i64 %r4225, 144
  %t4227 = add i64 %t4226, 8
  %r4228.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4228 = load i64, ptr %r4228.p, align 8, !alias.scope !3, !noalias !4
  %gmp4229 = inttoptr i64 %t4226 to ptr
  store i64 %r4228, ptr %gmp4229, align 1, !alias.scope !4, !noalias !3
  %r4230.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4230 = load i64, ptr %r4230.p, align 8, !alias.scope !3, !noalias !4
  %gmp4231 = inttoptr i64 %t4227 to ptr
  store i64 %r4230, ptr %gmp4231, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f58 word 0xa9067fff
  %r4232.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4232 = load i64, ptr %r4232.p, align 8, !alias.scope !3, !noalias !4
  %t4233 = add i64 %r4232, 96
  %t4234 = add i64 %t4233, 8
  %gmp4235 = inttoptr i64 %t4233 to ptr
  store i64 0, ptr %gmp4235, align 1, !alias.scope !4, !noalias !3
  %gmp4236 = inttoptr i64 %t4234 to ptr
  store i64 0, ptr %gmp4236, align 1, !alias.scope !4, !noalias !3
  br label %L_800116f5c
L_800116f5c:
  ; @pc 0x800116f5c word 0xb900a3e8
  %r4237.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4237 = load i64, ptr %r4237.p, align 8, !alias.scope !3, !noalias !4
  %t4238 = add i64 %r4237, 160
  %r4239.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4239 = load i64, ptr %r4239.p, align 8, !alias.scope !3, !noalias !4
  %c4240 = trunc i64 %r4239 to i32
  %gmp4241 = inttoptr i64 %t4238 to ptr
  store i32 %c4240, ptr %gmp4241, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f60 word 0xb900bfea
  %r4242.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4242 = load i64, ptr %r4242.p, align 8, !alias.scope !3, !noalias !4
  %t4243 = add i64 %r4242, 188
  %r4244.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4244 = load i64, ptr %r4244.p, align 8, !alias.scope !3, !noalias !4
  %c4245 = trunc i64 %r4244 to i32
  %gmp4246 = inttoptr i64 %t4243 to ptr
  store i32 %c4245, ptr %gmp4246, align 1, !alias.scope !4, !noalias !3
  br label %L_800116f64
L_800116f64:
  ; @pc 0x800116f64 word 0xf94f6688
  %r4247.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4247 = load i64, ptr %r4247.p, align 8, !alias.scope !3, !noalias !4
  %t4248 = add i64 %r4247, 7880
  %gmp4249 = inttoptr i64 %t4248 to ptr
  %gml4250 = load i64, ptr %gmp4249, align 1, !alias.scope !4, !noalias !3
  %wp4251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4250, ptr %wp4251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f68 word 0x3940226a
  %r4252.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4252 = load i64, ptr %r4252.p, align 8, !alias.scope !3, !noalias !4
  %t4253 = add i64 %r4252, 8
  %gmp4254 = inttoptr i64 %t4253 to ptr
  %gml4255 = load i8, ptr %gmp4254, align 1, !alias.scope !4, !noalias !3
  %c4256 = zext i8 %gml4255 to i64
  %wp4257 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4256, ptr %wp4257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f6c word 0xb940090b
  %r4258.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4258 = load i64, ptr %r4258.p, align 8, !alias.scope !3, !noalias !4
  %t4259 = add i64 %r4258, 8
  %gmp4260 = inttoptr i64 %t4259 to ptr
  %gml4261 = load i32, ptr %gmp4260, align 1, !alias.scope !4, !noalias !3
  %c4262 = zext i32 %gml4261 to i64
  %wp4263 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4262, ptr %wp4263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f70 word 0xf940090c
  %r4264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4264 = load i64, ptr %r4264.p, align 8, !alias.scope !3, !noalias !4
  %t4265 = add i64 %r4264, 16
  %gmp4266 = inttoptr i64 %t4265 to ptr
  %gml4267 = load i64, ptr %gmp4266, align 1, !alias.scope !4, !noalias !3
  %wp4268 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4267, ptr %wp4268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f74 word 0x6b0a017f
  %r4269.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4269 = load i64, ptr %r4269.p, align 8, !alias.scope !3, !noalias !4
  %c4270 = trunc i64 %r4269 to i32
  %r4271.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4271 = load i64, ptr %r4271.p, align 8, !alias.scope !3, !noalias !4
  %c4272 = trunc i64 %r4271 to i32
  %t4273 = sub i32 %c4270, %c4272
  %fn4274 = icmp slt i32 %t4273, 0
  %fz4275 = icmp eq i32 %t4273, 0
  %fc4276 = icmp uge i32 %c4270, %c4272
  %fx14277 = xor i32 %c4270, %c4272
  %fx24278 = xor i32 %c4270, %t4273
  %fva4279 = and i32 %fx14277, %fx24278
  %fv4280 = icmp slt i32 %fva4279, 0
  %nz4281 = zext i1 %fn4274 to i64
  %zz4282 = zext i1 %fz4275 to i64
  %cz4283 = zext i1 %fc4276 to i64
  %vz4284 = zext i1 %fv4280 to i64
  %ns4285 = shl i64 %nz4281, 31
  %zs4286 = shl i64 %zz4282, 30
  %cs4287 = shl i64 %cz4283, 29
  %vs4288 = shl i64 %vz4284, 28
  %nzor4289 = or i64 %ns4285, %zs4286
  %cvor4290 = or i64 %cs4287, %vs4288
  %nzcv4291 = or i64 %nzor4289, %cvor4290
  %wp4292 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4291, ptr %wp4292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f78 word 0x52879c0b
  %c4293 = zext i32 15584 to i64
  %wp4294 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4293, ptr %wp4294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f7c word 0x9a9f814d
  %r4295.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4295 = load i64, ptr %r4295.p, align 8, !alias.scope !3, !noalias !4
  %r4296.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4296 = load i64, ptr %r4296.p, align 8, !alias.scope !3, !noalias !4
  %fsh4298 = lshr i64 %r4296, 29
  %ftr4299 = trunc i64 %fsh4298 to i1
  %fsh4300 = lshr i64 %r4296, 30
  %ftr4301 = trunc i64 %fsh4300 to i1
  %fnz4302 = xor i1 %ftr4301, true
  %cond4297 = and i1 %ftr4299, %fnz4302
  %sel4303 = select i1 %cond4297, i64 %r4295, i64 0
  %wp4304 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %sel4303, ptr %wp4304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f80 word 0x9bab31ac
  %r4305.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4305 = load i64, ptr %r4305.p, align 8, !alias.scope !3, !noalias !4
  %c4306 = trunc i64 %r4305 to i32
  %c4307 = zext i32 %c4306 to i64
  %r4308.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4308 = load i64, ptr %r4308.p, align 8, !alias.scope !3, !noalias !4
  %c4309 = trunc i64 %r4308 to i32
  %c4310 = zext i32 %c4309 to i64
  %t4311 = mul i64 %c4307, %c4310
  %r4312.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4312 = load i64, ptr %r4312.p, align 8, !alias.scope !3, !noalias !4
  %t4313 = add i64 %r4312, %t4311
  %wp4314 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4313, ptr %wp4314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f84 word 0xf957058d
  %r4315.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4315 = load i64, ptr %r4315.p, align 8, !alias.scope !3, !noalias !4
  %t4316 = add i64 %r4315, 11784
  %gmp4317 = inttoptr i64 %t4316 to ptr
  %gml4318 = load i64, ptr %gmp4317, align 1, !alias.scope !4, !noalias !3
  %wp4319 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4318, ptr %wp4319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f88 word 0xf957018c
  %r4320.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4320 = load i64, ptr %r4320.p, align 8, !alias.scope !3, !noalias !4
  %t4321 = add i64 %r4320, 11776
  %gmp4322 = inttoptr i64 %t4321 to ptr
  %gml4323 = load i64, ptr %gmp4322, align 1, !alias.scope !4, !noalias !3
  %wp4324 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4323, ptr %wp4324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f8c word 0xa900352c
  %r4325.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4325 = load i64, ptr %r4325.p, align 8, !alias.scope !3, !noalias !4
  %t4326 = add i64 %r4325, 8
  %r4327.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4327 = load i64, ptr %r4327.p, align 8, !alias.scope !3, !noalias !4
  %gmp4328 = inttoptr i64 %r4325 to ptr
  store i64 %r4327, ptr %gmp4328, align 1, !alias.scope !4, !noalias !3
  %r4329.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4329 = load i64, ptr %r4329.p, align 8, !alias.scope !3, !noalias !4
  %gmp4330 = inttoptr i64 %t4326 to ptr
  store i64 %r4329, ptr %gmp4330, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116f90 word 0xb9400909
  %r4331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4331 = load i64, ptr %r4331.p, align 8, !alias.scope !3, !noalias !4
  %t4332 = add i64 %r4331, 8
  %gmp4333 = inttoptr i64 %t4332 to ptr
  %gml4334 = load i32, ptr %gmp4333, align 1, !alias.scope !4, !noalias !3
  %c4335 = zext i32 %gml4334 to i64
  %wp4336 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4335, ptr %wp4336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f94 word 0xf940090c
  %r4337.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4337 = load i64, ptr %r4337.p, align 8, !alias.scope !3, !noalias !4
  %t4338 = add i64 %r4337, 16
  %gmp4339 = inttoptr i64 %t4338 to ptr
  %gml4340 = load i64, ptr %gmp4339, align 1, !alias.scope !4, !noalias !3
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4340, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f98 word 0x6b0a013f
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %c4343 = trunc i64 %r4342 to i32
  %r4344.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4344 = load i64, ptr %r4344.p, align 8, !alias.scope !3, !noalias !4
  %c4345 = trunc i64 %r4344 to i32
  %t4346 = sub i32 %c4343, %c4345
  %fn4347 = icmp slt i32 %t4346, 0
  %fz4348 = icmp eq i32 %t4346, 0
  %fc4349 = icmp uge i32 %c4343, %c4345
  %fx14350 = xor i32 %c4343, %c4345
  %fx24351 = xor i32 %c4343, %t4346
  %fva4352 = and i32 %fx14350, %fx24351
  %fv4353 = icmp slt i32 %fva4352, 0
  %nz4354 = zext i1 %fn4347 to i64
  %zz4355 = zext i1 %fz4348 to i64
  %cz4356 = zext i1 %fc4349 to i64
  %vz4357 = zext i1 %fv4353 to i64
  %ns4358 = shl i64 %nz4354, 31
  %zs4359 = shl i64 %zz4355, 30
  %cs4360 = shl i64 %cz4356, 29
  %vs4361 = shl i64 %vz4357, 28
  %nzor4362 = or i64 %ns4358, %zs4359
  %cvor4363 = or i64 %cs4360, %vs4361
  %nzcv4364 = or i64 %nzor4362, %cvor4363
  %wp4365 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4364, ptr %wp4365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116f9c word 0x9a9f8149
  %r4366.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4366 = load i64, ptr %r4366.p, align 8, !alias.scope !3, !noalias !4
  %r4367.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4367 = load i64, ptr %r4367.p, align 8, !alias.scope !3, !noalias !4
  %fsh4369 = lshr i64 %r4367, 29
  %ftr4370 = trunc i64 %fsh4369 to i1
  %fsh4371 = lshr i64 %r4367, 30
  %ftr4372 = trunc i64 %fsh4371 to i1
  %fnz4373 = xor i1 %ftr4372, true
  %cond4368 = and i1 %ftr4370, %fnz4373
  %sel4374 = select i1 %cond4368, i64 %r4366, i64 0
  %wp4375 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel4374, ptr %wp4375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fa0 word 0x9bab3129
  %r4376.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4376 = load i64, ptr %r4376.p, align 8, !alias.scope !3, !noalias !4
  %c4377 = trunc i64 %r4376 to i32
  %c4378 = zext i32 %c4377 to i64
  %r4379.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4379 = load i64, ptr %r4379.p, align 8, !alias.scope !3, !noalias !4
  %c4380 = trunc i64 %r4379 to i32
  %c4381 = zext i32 %c4380 to i64
  %t4382 = mul i64 %c4378, %c4381
  %r4383.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4383 = load i64, ptr %r4383.p, align 8, !alias.scope !3, !noalias !4
  %t4384 = add i64 %r4383, %t4382
  %wp4385 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4384, ptr %wp4385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fa4 word 0xf958452a
  %r4386.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4386 = load i64, ptr %r4386.p, align 8, !alias.scope !3, !noalias !4
  %t4387 = add i64 %r4386, 12424
  %gmp4388 = inttoptr i64 %t4387 to ptr
  %gml4389 = load i64, ptr %gmp4388, align 1, !alias.scope !4, !noalias !3
  %wp4390 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4389, ptr %wp4390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fa8 word 0xf958412b
  %r4391.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4391 = load i64, ptr %r4391.p, align 8, !alias.scope !3, !noalias !4
  %t4392 = add i64 %r4391, 12416
  %gmp4393 = inttoptr i64 %t4392 to ptr
  %gml4394 = load i64, ptr %gmp4393, align 1, !alias.scope !4, !noalias !3
  %wp4395 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4394, ptr %wp4395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fac word 0xa9002b4b
  %r4396.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4396 = load i64, ptr %r4396.p, align 8, !alias.scope !3, !noalias !4
  %t4397 = add i64 %r4396, 8
  %r4398.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4398 = load i64, ptr %r4398.p, align 8, !alias.scope !3, !noalias !4
  %gmp4399 = inttoptr i64 %r4396 to ptr
  store i64 %r4398, ptr %gmp4399, align 1, !alias.scope !4, !noalias !3
  %r4400.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4400 = load i64, ptr %r4400.p, align 8, !alias.scope !3, !noalias !4
  %gmp4401 = inttoptr i64 %t4397 to ptr
  store i64 %r4400, ptr %gmp4401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fb0 word 0xb970992a
  %r4402.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4402 = load i64, ptr %r4402.p, align 8, !alias.scope !3, !noalias !4
  %t4403 = add i64 %r4402, 12440
  %gmp4404 = inttoptr i64 %t4403 to ptr
  %gml4405 = load i32, ptr %gmp4404, align 1, !alias.scope !4, !noalias !3
  %c4406 = zext i32 %gml4405 to i64
  %wp4407 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4406, ptr %wp4407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fb4 word 0xf9584929
  %r4408.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4408 = load i64, ptr %r4408.p, align 8, !alias.scope !3, !noalias !4
  %t4409 = add i64 %r4408, 12432
  %gmp4410 = inttoptr i64 %t4409 to ptr
  %gml4411 = load i64, ptr %gmp4410, align 1, !alias.scope !4, !noalias !3
  %wp4412 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4411, ptr %wp4412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fb8 word 0xf9000329
  %r4413.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4413 = load i64, ptr %r4413.p, align 8, !alias.scope !3, !noalias !4
  %r4414.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4414 = load i64, ptr %r4414.p, align 8, !alias.scope !3, !noalias !4
  %gmp4415 = inttoptr i64 %r4413 to ptr
  store i64 %r4414, ptr %gmp4415, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fbc word 0xb9000b2a
  %r4416.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4416 = load i64, ptr %r4416.p, align 8, !alias.scope !3, !noalias !4
  %t4417 = add i64 %r4416, 8
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %c4419 = trunc i64 %r4418 to i32
  %gmp4420 = inttoptr i64 %t4417 to ptr
  store i32 %c4419, ptr %gmp4420, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fc0 word 0x29442109
  %r4421.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4421 = load i64, ptr %r4421.p, align 8, !alias.scope !3, !noalias !4
  %t4422 = add i64 %r4421, 32
  %t4423 = add i64 %t4422, 4
  %gmp4424 = inttoptr i64 %t4422 to ptr
  %gml4425 = load i32, ptr %gmp4424, align 1, !alias.scope !4, !noalias !3
  %c4426 = zext i32 %gml4425 to i64
  %gmp4427 = inttoptr i64 %t4423 to ptr
  %gml4428 = load i32, ptr %gmp4427, align 1, !alias.scope !4, !noalias !3
  %c4429 = zext i32 %gml4428 to i64
  %wp4430 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4426, ptr %wp4430, align 8, !alias.scope !3, !noalias !4
  %wp4431 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4429, ptr %wp4431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fc4 word 0xb900b7ff
  %r4432.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4432 = load i64, ptr %r4432.p, align 8, !alias.scope !3, !noalias !4
  %t4433 = add i64 %r4432, 180
  %gmp4434 = inttoptr i64 %t4433 to ptr
  store i32 0, ptr %gmp4434, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fc8 word 0xb80b131f
  %r4435.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4435 = load i64, ptr %r4435.p, align 8, !alias.scope !3, !noalias !4
  %t4436 = add i64 %r4435, 177
  %gmp4437 = inttoptr i64 %t4436 to ptr
  store i32 0, ptr %gmp4437, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fcc word 0x3902c3e9
  %r4438.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4438 = load i64, ptr %r4438.p, align 8, !alias.scope !3, !noalias !4
  %t4439 = add i64 %r4438, 176
  %r4440.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4440 = load i64, ptr %r4440.p, align 8, !alias.scope !3, !noalias !4
  %c4441 = trunc i64 %r4440 to i32
  %c4442 = trunc i32 %c4441 to i8
  %gmp4443 = inttoptr i64 %t4439 to ptr
  store i8 %c4442, ptr %gmp4443, align 1, !alias.scope !4, !noalias !3
  br label %L_800116fd0
L_800116fd0:
  ; @pc 0x800116fd0 word 0x3902e3e8
  %r4444.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4444 = load i64, ptr %r4444.p, align 8, !alias.scope !3, !noalias !4
  %t4445 = add i64 %r4444, 184
  %r4446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4446 = load i64, ptr %r4446.p, align 8, !alias.scope !3, !noalias !4
  %c4447 = trunc i64 %r4446 to i32
  %c4448 = trunc i32 %c4447 to i8
  %gmp4449 = inttoptr i64 %t4445 to ptr
  store i8 %c4448, ptr %gmp4449, align 1, !alias.scope !4, !noalias !3
  br label %L_800116fd4
L_800116fd4:
  ; @pc 0x800116fd4 word 0xaa1703e8
  %r4450.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4450 = load i64, ptr %r4450.p, align 8, !alias.scope !3, !noalias !4
  %t4451 = or i64 0, %r4450
  %wp4452 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4451, ptr %wp4452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fd8 word 0xaa1703f6
  %r4453.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4453 = load i64, ptr %r4453.p, align 8, !alias.scope !3, !noalias !4
  %t4454 = or i64 0, %r4453
  %wp4455 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4454, ptr %wp4455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fdc word 0xb94003ea
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %gmp4457 = inttoptr i64 %r4456 to ptr
  %gml4458 = load i32, ptr %gmp4457, align 1, !alias.scope !4, !noalias !3
  %c4459 = zext i32 %gml4458 to i64
  %wp4460 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4459, ptr %wp4460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fe0 word 0xb841cd09
  %r4461.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4461 = load i64, ptr %r4461.p, align 8, !alias.scope !3, !noalias !4
  %t4462 = add i64 %r4461, 28
  %gmp4463 = inttoptr i64 %t4462 to ptr
  %gml4464 = load i32, ptr %gmp4463, align 1, !alias.scope !4, !noalias !3
  %c4465 = zext i32 %gml4464 to i64
  %wp4466 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4462, ptr %wp4466, align 8, !alias.scope !3, !noalias !4
  %wp4467 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4465, ptr %wp4467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fe4 word 0xb9004be9
  %r4468.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4468 = load i64, ptr %r4468.p, align 8, !alias.scope !3, !noalias !4
  %t4469 = add i64 %r4468, 72
  %r4470.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4470 = load i64, ptr %r4470.p, align 8, !alias.scope !3, !noalias !4
  %c4471 = trunc i64 %r4470 to i32
  %gmp4472 = inttoptr i64 %t4469 to ptr
  store i32 %c4471, ptr %gmp4472, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116fe8 word 0xb842cecc
  %r4473.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4473 = load i64, ptr %r4473.p, align 8, !alias.scope !3, !noalias !4
  %t4474 = add i64 %r4473, 44
  %gmp4475 = inttoptr i64 %t4474 to ptr
  %gml4476 = load i32, ptr %gmp4475, align 1, !alias.scope !4, !noalias !3
  %c4477 = zext i32 %gml4476 to i64
  %wp4478 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4474, ptr %wp4478, align 8, !alias.scope !3, !noalias !4
  %wp4479 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4477, ptr %wp4479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116fec word 0xb85e82cb
  %r4480.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4480 = load i64, ptr %r4480.p, align 8, !alias.scope !3, !noalias !4
  %t4481 = add i64 %r4480, -24
  %gmp4482 = inttoptr i64 %t4481 to ptr
  %gml4483 = load i32, ptr %gmp4482, align 1, !alias.scope !4, !noalias !3
  %c4484 = zext i32 %gml4483 to i64
  %wp4485 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4484, ptr %wp4485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ff0 word 0x6a0a017f
  %r4486.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4486 = load i64, ptr %r4486.p, align 8, !alias.scope !3, !noalias !4
  %c4487 = trunc i64 %r4486 to i32
  %r4488.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4488 = load i64, ptr %r4488.p, align 8, !alias.scope !3, !noalias !4
  %c4489 = trunc i64 %r4488 to i32
  %t4490 = and i32 %c4489, %c4487
  %fn4491 = icmp slt i32 %t4490, 0
  %fz4492 = icmp eq i32 %t4490, 0
  %nz4493 = zext i1 %fn4491 to i64
  %zz4494 = zext i1 %fz4492 to i64
  %ns4495 = shl i64 %nz4493, 31
  %zs4496 = shl i64 %zz4494, 30
  %nzcv4497 = or i64 %ns4495, %zs4496
  %wp4498 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4497, ptr %wp4498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ff4 word 0x1a9f07eb
  %t4499 = add i32 0, 1
  %r4500.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4500 = load i64, ptr %r4500.p, align 8, !alias.scope !3, !noalias !4
  %fsh4502 = lshr i64 %r4500, 30
  %cond4501 = trunc i64 %fsh4502 to i1
  %sel4503 = select i1 %cond4501, i32 0, i32 %t4499
  %c4504 = zext i32 %sel4503 to i64
  %wp4505 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4504, ptr %wp4505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ff8 word 0x7100019f
  %r4506.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4506 = load i64, ptr %r4506.p, align 8, !alias.scope !3, !noalias !4
  %c4507 = trunc i64 %r4506 to i32
  %t4508 = sub i32 %c4507, 0
  %fn4509 = icmp slt i32 %t4508, 0
  %fz4510 = icmp eq i32 %t4508, 0
  %fc4511 = icmp uge i32 %c4507, 0
  %fx14512 = xor i32 %c4507, 0
  %fx24513 = xor i32 %c4507, %t4508
  %fva4514 = and i32 %fx14512, %fx24513
  %fv4515 = icmp slt i32 %fva4514, 0
  %nz4516 = zext i1 %fn4509 to i64
  %zz4517 = zext i1 %fz4510 to i64
  %cz4518 = zext i1 %fc4511 to i64
  %vz4519 = zext i1 %fv4515 to i64
  %ns4520 = shl i64 %nz4516, 31
  %zs4521 = shl i64 %zz4517, 30
  %cs4522 = shl i64 %cz4518, 29
  %vs4523 = shl i64 %vz4519, 28
  %nzor4524 = or i64 %ns4520, %zs4521
  %cvor4525 = or i64 %cs4522, %vs4523
  %nzcv4526 = or i64 %nzor4524, %cvor4525
  %wp4527 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4526, ptr %wp4527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116ffc word 0x5400340d
  %r4528.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4528 = load i64, ptr %r4528.p, align 8, !alias.scope !3, !noalias !4
  %fsh4530 = lshr i64 %r4528, 30
  %ftr4531 = trunc i64 %fsh4530 to i1
  %fsh4532 = lshr i64 %r4528, 31
  %ftr4533 = trunc i64 %fsh4532 to i1
  %fsh4534 = lshr i64 %r4528, 28
  %ftr4535 = trunc i64 %fsh4534 to i1
  %fnz4536 = xor i1 %ftr4531, true
  %feq4537 = icmp eq i1 %ftr4533, %ftr4535
  %fgt4538 = and i1 %fnz4536, %feq4537
  %cond4529 = xor i1 %fgt4538, true
  br i1 %cond4529, label %L_80011767c, label %L_800117000
L_800117000:
  ; @pc 0x800117000 word 0x34000d2b
  %r4539.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4539 = load i64, ptr %r4539.p, align 8, !alias.scope !3, !noalias !4
  %c4540 = trunc i64 %r4539 to i32
  %cmp4541 = icmp eq i32 %c4540, 0
  br i1 %cmp4541, label %L_8001171a4, label %L_800117004_ft
L_80011701c:
  ; @pc 0x80011701c word 0x52801a08
  %c4572 = zext i32 208 to i64
  %wp4573 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4572, ptr %wp4573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117020 word 0x910003e1
  %r4574.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4574 = load i64, ptr %r4574.p, align 8, !alias.scope !3, !noalias !4
  %t4575 = add i64 %r4574, 0
  %wp4576 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4575, ptr %wp4576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117024 word 0x9b284f3a
  %r4577.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4577 = load i64, ptr %r4577.p, align 8, !alias.scope !3, !noalias !4
  %c4578 = trunc i64 %r4577 to i32
  %c4579 = sext i32 %c4578 to i64
  %r4580.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4580 = load i64, ptr %r4580.p, align 8, !alias.scope !3, !noalias !4
  %c4581 = trunc i64 %r4580 to i32
  %c4582 = sext i32 %c4581 to i64
  %t4583 = mul i64 %c4579, %c4582
  %r4584.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4584 = load i64, ptr %r4584.p, align 8, !alias.scope !3, !noalias !4
  %t4585 = add i64 %r4584, %t4583
  %wp4586 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t4585, ptr %wp4586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117028 word 0x52801802
  %c4587 = zext i32 192 to i64
  %wp4588 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4587, ptr %wp4588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011702c word 0x91350355
  %r4589.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4589 = load i64, ptr %r4589.p, align 8, !alias.scope !3, !noalias !4
  %t4590 = add i64 %r4589, 3392
  %wp4591 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t4590, ptr %wp4591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117030 word 0xaa1503e0
  %r4592.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4592 = load i64, ptr %r4592.p, align 8, !alias.scope !3, !noalias !4
  %t4593 = or i64 0, %r4592
  %wp4594 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4593, ptr %wp4594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117034 word 0x94aa3467
  %wp4595 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360881208, ptr %wp4595, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41d0(ptr %c)
  ; @pc 0x800117038 word 0x3974e348
  %r4596.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4596 = load i64, ptr %r4596.p, align 8, !alias.scope !3, !noalias !4
  %t4597 = add i64 %r4596, 3384
  %gmp4598 = inttoptr i64 %t4597 to ptr
  %gml4599 = load i8, ptr %gmp4598, align 1, !alias.scope !4, !noalias !3
  %c4600 = zext i8 %gml4599 to i64
  %wp4601 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4600, ptr %wp4601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011703c word 0x32000108
  %r4602.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4602 = load i64, ptr %r4602.p, align 8, !alias.scope !3, !noalias !4
  %c4603 = trunc i64 %r4602 to i32
  %t4604 = or i32 %c4603, 1
  %c4605 = zext i32 %t4604 to i64
  %wp4606 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4605, ptr %wp4606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117040 word 0x3934e348
  %r4607.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4607 = load i64, ptr %r4607.p, align 8, !alias.scope !3, !noalias !4
  %t4608 = add i64 %r4607, 3384
  %r4609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4609 = load i64, ptr %r4609.p, align 8, !alias.scope !3, !noalias !4
  %c4610 = trunc i64 %r4609 to i32
  %c4611 = trunc i32 %c4610 to i8
  %gmp4612 = inttoptr i64 %t4608 to ptr
  store i8 %c4611, ptr %gmp4612, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117044 word 0x52875028
  %c4613 = zext i32 14977 to i64
  %wp4614 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4613, ptr %wp4614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117048 word 0x38686a88
  %r4615.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4615 = load i64, ptr %r4615.p, align 8, !alias.scope !3, !noalias !4
  %r4616.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4616 = load i64, ptr %r4616.p, align 8, !alias.scope !3, !noalias !4
  %t4617 = add i64 %r4615, %r4616
  %gmp4618 = inttoptr i64 %t4617 to ptr
  %gml4619 = load i8, ptr %gmp4618, align 1, !alias.scope !4, !noalias !3
  %c4620 = zext i8 %gml4619 to i64
  %wp4621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4620, ptr %wp4621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011704c word 0x36300ac8
  %r4622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4622 = load i64, ptr %r4622.p, align 8, !alias.scope !3, !noalias !4
  %t4623 = and i64 %r4622, 64
  %cmp4624 = icmp eq i64 %t4623, 0
  br i1 %cmp4624, label %L_8001171a4, label %L_800117050_ft
L_8001170d8:
  ; @pc 0x8001170d8 word 0x885f7db2
  %r4858.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4858 = load i64, ptr %r4858.p, align 8, !alias.scope !3, !noalias !4
  %atp4859 = inttoptr i64 %r4858 to ptr
  %ldx4860 = load atomic i32, ptr %atp4859 acquire, align 4, !alias.scope !4, !noalias !3
  %c4861 = zext i32 %ldx4860 to i64
  %fp4862 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r4858, ptr %fp4862, align 8, !alias.scope !3, !noalias !4
  %fp4863 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c4861, ptr %fp4863, align 8, !alias.scope !3, !noalias !4
  %wp4864 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c4861, ptr %wp4864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170dc word 0x11000640
  %r4865.p = getelementptr inbounds i8, ptr %c, i64 144
  %r4865 = load i64, ptr %r4865.p, align 8, !alias.scope !3, !noalias !4
  %c4866 = trunc i64 %r4865 to i32
  %t4867 = add i32 %c4866, 1
  %c4868 = zext i32 %t4867 to i64
  %wp4869 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c4868, ptr %wp4869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170e0 word 0x88017da0
  %r4870.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4870 = load i64, ptr %r4870.p, align 8, !alias.scope !3, !noalias !4
  %atp4871 = inttoptr i64 %r4870 to ptr
  %fp4872 = getelementptr inbounds i8, ptr %c, i64 296
  %fv4873 = load i64, ptr %fp4872, align 8, !alias.scope !3, !noalias !4
  %fp4874 = getelementptr inbounds i8, ptr %c, i64 304
  %fv4875 = load i64, ptr %fp4874, align 8, !alias.scope !3, !noalias !4
  %fp4876 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp4876, align 8, !alias.scope !3, !noalias !4
  %cmp4877 = icmp eq i64 %fv4873, %r4870
  %c4878 = trunc i64 %fv4875 to i32
  %r4879.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4879 = load i64, ptr %r4879.p, align 8, !alias.scope !3, !noalias !4
  %c4880 = trunc i64 %r4879 to i32
  %cx4881 = cmpxchg ptr %atp4871, i32 %c4878, i32 %c4880 seq_cst seq_cst, align 4
  %cxok4882 = extractvalue { i32, i1 } %cx4881, 1
  %t4883 = and i1 %cmp4877, %cxok4882
  %sel4884 = select i1 %t4883, i32 0, i32 1
  %c4885 = zext i32 %sel4884 to i64
  %wp4886 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4885, ptr %wp4886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170e4 word 0x35ffffa1
  %r4887.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4887 = load i64, ptr %r4887.p, align 8, !alias.scope !3, !noalias !4
  %c4888 = trunc i64 %r4887 to i32
  %cmp4889 = icmp ne i32 %c4888, 0
  br i1 %cmp4889, label %L_8001170d8, label %L_8001170e8_ft
L_800117104:
  ; @pc 0x800117104 word 0x0b110051
  %r4973.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4973 = load i64, ptr %r4973.p, align 8, !alias.scope !3, !noalias !4
  %c4974 = trunc i64 %r4973 to i32
  %r4975.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4975 = load i64, ptr %r4975.p, align 8, !alias.scope !3, !noalias !4
  %c4976 = trunc i64 %r4975 to i32
  %t4977 = add i32 %c4974, %c4976
  %c4978 = zext i32 %t4977 to i64
  %wp4979 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c4978, ptr %wp4979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117108 word 0x9b2f0032
  %r4980.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4980 = load i64, ptr %r4980.p, align 8, !alias.scope !3, !noalias !4
  %c4981 = trunc i64 %r4980 to i32
  %c4982 = sext i32 %c4981 to i64
  %r4983.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4983 = load i64, ptr %r4983.p, align 8, !alias.scope !3, !noalias !4
  %c4984 = trunc i64 %r4983 to i32
  %c4985 = sext i32 %c4984 to i64
  %t4986 = mul i64 %c4982, %c4985
  %r4987.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4987 = load i64, ptr %r4987.p, align 8, !alias.scope !3, !noalias !4
  %t4988 = add i64 %r4987, %t4986
  %wp4989 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t4988, ptr %wp4989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011710c word 0x2a0b03e2
  %r4990.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4990 = load i64, ptr %r4990.p, align 8, !alias.scope !3, !noalias !4
  %c4991 = trunc i64 %r4990 to i32
  %t4992 = or i32 0, %c4991
  %c4993 = zext i32 %t4992 to i64
  %wp4994 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4993, ptr %wp4994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117110 word 0xaa118042
  %r4995.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4995 = load i64, ptr %r4995.p, align 8, !alias.scope !3, !noalias !4
  %t4996 = shl i64 %r4995, 32
  %r4997.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4997 = load i64, ptr %r4997.p, align 8, !alias.scope !3, !noalias !4
  %t4998 = or i64 %r4997, %t4996
  %wp4999 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4998, ptr %wp4999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117114 word 0xa9005e53
  %r5000.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5000 = load i64, ptr %r5000.p, align 8, !alias.scope !3, !noalias !4
  %t5001 = add i64 %r5000, 8
  %r5002.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5002 = load i64, ptr %r5002.p, align 8, !alias.scope !3, !noalias !4
  %gmp5003 = inttoptr i64 %r5000 to ptr
  store i64 %r5002, ptr %gmp5003, align 1, !alias.scope !4, !noalias !3
  %r5004.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5004 = load i64, ptr %r5004.p, align 8, !alias.scope !3, !noalias !4
  %gmp5005 = inttoptr i64 %t5001 to ptr
  store i64 %r5004, ptr %gmp5005, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117118 word 0xa9010a55
  %r5006.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5006 = load i64, ptr %r5006.p, align 8, !alias.scope !3, !noalias !4
  %t5007 = add i64 %r5006, 16
  %t5008 = add i64 %t5007, 8
  %r5009.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5009 = load i64, ptr %r5009.p, align 8, !alias.scope !3, !noalias !4
  %gmp5010 = inttoptr i64 %t5007 to ptr
  store i64 %r5009, ptr %gmp5010, align 1, !alias.scope !4, !noalias !3
  %r5011.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5011 = load i64, ptr %r5011.p, align 8, !alias.scope !3, !noalias !4
  %gmp5012 = inttoptr i64 %t5008 to ptr
  store i64 %r5011, ptr %gmp5012, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011711c word 0xb940bea2
  %r5013.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5013 = load i64, ptr %r5013.p, align 8, !alias.scope !3, !noalias !4
  %t5014 = add i64 %r5013, 188
  %gmp5015 = inttoptr i64 %t5014 to ptr
  %gml5016 = load i32, ptr %gmp5015, align 1, !alias.scope !4, !noalias !3
  %c5017 = zext i32 %gml5016 to i64
  %wp5018 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5017, ptr %wp5018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117120 word 0x7100085f
  %r5019.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5019 = load i64, ptr %r5019.p, align 8, !alias.scope !3, !noalias !4
  %c5020 = trunc i64 %r5019 to i32
  %t5021 = sub i32 %c5020, 2
  %fn5022 = icmp slt i32 %t5021, 0
  %fz5023 = icmp eq i32 %t5021, 0
  %fc5024 = icmp uge i32 %c5020, 2
  %fx15025 = xor i32 %c5020, 2
  %fx25026 = xor i32 %c5020, %t5021
  %fva5027 = and i32 %fx15025, %fx25026
  %fv5028 = icmp slt i32 %fva5027, 0
  %nz5029 = zext i1 %fn5022 to i64
  %zz5030 = zext i1 %fz5023 to i64
  %cz5031 = zext i1 %fc5024 to i64
  %vz5032 = zext i1 %fv5028 to i64
  %ns5033 = shl i64 %nz5029, 31
  %zs5034 = shl i64 %zz5030, 30
  %cs5035 = shl i64 %cz5031, 29
  %vs5036 = shl i64 %vz5032, 28
  %nzor5037 = or i64 %ns5033, %zs5034
  %cvor5038 = or i64 %cs5035, %vs5036
  %nzcv5039 = or i64 %nzor5037, %cvor5038
  %wp5040 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5039, ptr %wp5040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117124 word 0x540000e0
  %r5041.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5041 = load i64, ptr %r5041.p, align 8, !alias.scope !3, !noalias !4
  %fsh5043 = lshr i64 %r5041, 30
  %cond5042 = trunc i64 %fsh5043 to i1
  br i1 %cond5042, label %L_800117140, label %L_800117128_ft
L_800117140:
  ; @pc 0x800117140 word 0x1e220220
  %r5100.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5100 = load i64, ptr %r5100.p, align 8, !alias.scope !3, !noalias !4
  %c5101 = trunc i64 %r5100 to i32
  %c5102 = zext i32 %c5101 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 0, i64 %c5102, i32 32, i32 0, i32 0)
  ; @pc 0x800117144 word 0x1e270201
  %r5103.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5103 = load i64, ptr %r5103.p, align 8, !alias.scope !3, !noalias !4
  %c5104 = trunc i64 %r5103 to i32
  %c5105 = zext i32 %c5104 to i128
  %wp5106 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5105, ptr %wp5106, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800117148 word 0x1e210800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 1)
  ; @pc 0x80011714c word 0x1e390002
  %fptoi5107 = call i64 @rt_fp_toint(ptr %c, i32 0, i32 0, i32 3, i32 0, i32 32, i32 1)
  %c5108 = trunc i64 %fptoi5107 to i32
  %c5109 = zext i32 %c5108 to i64
  %wp5110 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5109, ptr %wp5110, align 8, !alias.scope !3, !noalias !4
  br label %L_800117150
L_800117150:
  ; @pc 0x800117150 word 0x9b2f0020
  %r5111.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5111 = load i64, ptr %r5111.p, align 8, !alias.scope !3, !noalias !4
  %c5112 = trunc i64 %r5111 to i32
  %c5113 = sext i32 %c5112 to i64
  %r5114.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5114 = load i64, ptr %r5114.p, align 8, !alias.scope !3, !noalias !4
  %c5115 = trunc i64 %r5114 to i32
  %c5116 = sext i32 %c5115 to i64
  %t5117 = mul i64 %c5113, %c5116
  %r5118.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5118 = load i64, ptr %r5118.p, align 8, !alias.scope !3, !noalias !4
  %t5119 = add i64 %r5118, %t5117
  %wp5120 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5119, ptr %wp5120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117154 word 0xb9002002
  %r5121.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5121 = load i64, ptr %r5121.p, align 8, !alias.scope !3, !noalias !4
  %t5122 = add i64 %r5121, 32
  %r5123.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5123 = load i64, ptr %r5123.p, align 8, !alias.scope !3, !noalias !4
  %c5124 = trunc i64 %r5123 to i32
  %gmp5125 = inttoptr i64 %t5122 to ptr
  store i32 %c5124, ptr %gmp5125, align 1, !alias.scope !4, !noalias !3
  br label %L_800117158
L_800117158:
  ; @pc 0x800117158 word 0x885f7dc0
  %r5126.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5126 = load i64, ptr %r5126.p, align 8, !alias.scope !3, !noalias !4
  %atp5127 = inttoptr i64 %r5126 to ptr
  %ldx5128 = load atomic i32, ptr %atp5127 acquire, align 4, !alias.scope !4, !noalias !3
  %c5129 = zext i32 %ldx5128 to i64
  %fp5130 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5126, ptr %fp5130, align 8, !alias.scope !3, !noalias !4
  %fp5131 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5129, ptr %fp5131, align 8, !alias.scope !3, !noalias !4
  %wp5132 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5129, ptr %wp5132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011715c word 0x11000401
  %r5133.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5133 = load i64, ptr %r5133.p, align 8, !alias.scope !3, !noalias !4
  %c5134 = trunc i64 %r5133 to i32
  %t5135 = add i32 %c5134, 1
  %c5136 = zext i32 %t5135 to i64
  %wp5137 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5136, ptr %wp5137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117160 word 0x88027dc1
  %r5138.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5138 = load i64, ptr %r5138.p, align 8, !alias.scope !3, !noalias !4
  %atp5139 = inttoptr i64 %r5138 to ptr
  %fp5140 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5141 = load i64, ptr %fp5140, align 8, !alias.scope !3, !noalias !4
  %fp5142 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5143 = load i64, ptr %fp5142, align 8, !alias.scope !3, !noalias !4
  %fp5144 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5144, align 8, !alias.scope !3, !noalias !4
  %cmp5145 = icmp eq i64 %fv5141, %r5138
  %c5146 = trunc i64 %fv5143 to i32
  %r5147.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5147 = load i64, ptr %r5147.p, align 8, !alias.scope !3, !noalias !4
  %c5148 = trunc i64 %r5147 to i32
  %cx5149 = cmpxchg ptr %atp5139, i32 %c5146, i32 %c5148 seq_cst seq_cst, align 4
  %cxok5150 = extractvalue { i32, i1 } %cx5149, 1
  %t5151 = and i1 %cmp5145, %cxok5150
  %sel5152 = select i1 %t5151, i32 0, i32 1
  %c5153 = zext i32 %sel5152 to i64
  %wp5154 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5153, ptr %wp5154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117164 word 0x35ffffa2
  %r5155.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5155 = load i64, ptr %r5155.p, align 8, !alias.scope !3, !noalias !4
  %c5156 = trunc i64 %r5155 to i32
  %cmp5157 = icmp ne i32 %c5156, 0
  br i1 %cmp5157, label %L_800117158, label %L_800117168_ft
L_800117180:
  ; @pc 0x800117180 word 0x1100054a
  %r5218.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5218 = load i64, ptr %r5218.p, align 8, !alias.scope !3, !noalias !4
  %c5219 = trunc i64 %r5218 to i32
  %t5220 = add i32 %c5219, 1
  %c5221 = zext i32 %t5220 to i64
  %wp5222 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5221, ptr %wp5222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117184 word 0x0b0b022b
  %r5223.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5223 = load i64, ptr %r5223.p, align 8, !alias.scope !3, !noalias !4
  %c5224 = trunc i64 %r5223 to i32
  %r5225.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5225 = load i64, ptr %r5225.p, align 8, !alias.scope !3, !noalias !4
  %c5226 = trunc i64 %r5225 to i32
  %t5227 = add i32 %c5224, %c5226
  %c5228 = zext i32 %t5227 to i64
  %wp5229 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5228, ptr %wp5229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117188 word 0x6b08015f
  %r5230.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5230 = load i64, ptr %r5230.p, align 8, !alias.scope !3, !noalias !4
  %c5231 = trunc i64 %r5230 to i32
  %r5232.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5232 = load i64, ptr %r5232.p, align 8, !alias.scope !3, !noalias !4
  %c5233 = trunc i64 %r5232 to i32
  %t5234 = sub i32 %c5231, %c5233
  %fn5235 = icmp slt i32 %t5234, 0
  %fz5236 = icmp eq i32 %t5234, 0
  %fc5237 = icmp uge i32 %c5231, %c5233
  %fx15238 = xor i32 %c5231, %c5233
  %fx25239 = xor i32 %c5231, %t5234
  %fva5240 = and i32 %fx15238, %fx25239
  %fv5241 = icmp slt i32 %fva5240, 0
  %nz5242 = zext i1 %fn5235 to i64
  %zz5243 = zext i1 %fz5236 to i64
  %cz5244 = zext i1 %fc5237 to i64
  %vz5245 = zext i1 %fv5241 to i64
  %ns5246 = shl i64 %nz5242, 31
  %zs5247 = shl i64 %zz5243, 30
  %cs5248 = shl i64 %cz5244, 29
  %vs5249 = shl i64 %vz5245, 28
  %nzor5250 = or i64 %ns5246, %zs5247
  %cvor5251 = or i64 %cs5248, %vs5249
  %nzcv5252 = or i64 %nzor5250, %cvor5251
  %wp5253 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5252, ptr %wp5253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011718c word 0x54fffa61
  %r5254.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5254 = load i64, ptr %r5254.p, align 8, !alias.scope !3, !noalias !4
  %fsh5256 = lshr i64 %r5254, 30
  %ftr5257 = trunc i64 %fsh5256 to i1
  %cond5255 = xor i1 %ftr5257, true
  br i1 %cond5255, label %L_8001170d8, label %L_800117190_ft
L_800117194:
  ; @pc 0x800117194 word 0x7100023f
  %r5258.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5258 = load i64, ptr %r5258.p, align 8, !alias.scope !3, !noalias !4
  %c5259 = trunc i64 %r5258 to i32
  %t5260 = sub i32 %c5259, 0
  %fn5261 = icmp slt i32 %t5260, 0
  %fz5262 = icmp eq i32 %t5260, 0
  %fc5263 = icmp uge i32 %c5259, 0
  %fx15264 = xor i32 %c5259, 0
  %fx25265 = xor i32 %c5259, %t5260
  %fva5266 = and i32 %fx15264, %fx25265
  %fv5267 = icmp slt i32 %fva5266, 0
  %nz5268 = zext i1 %fn5261 to i64
  %zz5269 = zext i1 %fz5262 to i64
  %cz5270 = zext i1 %fc5263 to i64
  %vz5271 = zext i1 %fv5267 to i64
  %ns5272 = shl i64 %nz5268, 31
  %zs5273 = shl i64 %zz5269, 30
  %cs5274 = shl i64 %cz5270, 29
  %vs5275 = shl i64 %vz5271, 28
  %nzor5276 = or i64 %ns5272, %zs5273
  %cvor5277 = or i64 %cs5274, %vs5275
  %nzcv5278 = or i64 %nzor5276, %cvor5277
  %wp5279 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5278, ptr %wp5279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117198 word 0x1a91a622
  %r5280.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5280 = load i64, ptr %r5280.p, align 8, !alias.scope !3, !noalias !4
  %c5281 = trunc i64 %r5280 to i32
  %r5282.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5282 = load i64, ptr %r5282.p, align 8, !alias.scope !3, !noalias !4
  %c5283 = trunc i64 %r5282 to i32
  %t5284 = add i32 %c5283, 1
  %r5285.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5285 = load i64, ptr %r5285.p, align 8, !alias.scope !3, !noalias !4
  %fsh5287 = lshr i64 %r5285, 31
  %ftr5288 = trunc i64 %fsh5287 to i1
  %fsh5289 = lshr i64 %r5285, 28
  %ftr5290 = trunc i64 %fsh5289 to i1
  %cond5286 = icmp eq i1 %ftr5288, %ftr5290
  %sel5291 = select i1 %cond5286, i32 %c5281, i32 %t5284
  %c5292 = zext i32 %sel5291 to i64
  %wp5293 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5292, ptr %wp5293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011719c word 0x13017c42
  %r5294.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5294 = load i64, ptr %r5294.p, align 8, !alias.scope !3, !noalias !4
  %c5295 = trunc i64 %r5294 to i32
  %ror5296 = call i32 @llvm.fshr.i32(i32 %c5295, i32 %c5295, i32 1)
  %t5297 = lshr i32 %c5295, 31
  %t5298 = and i32 %t5297, 1
  %t5299 = sub i32 0, %t5298
  %t5300 = and i32 %t5299, -2147483648
  %t5301 = and i32 %ror5296, 2147483647
  %t5302 = or i32 %t5300, %t5301
  %c5303 = zext i32 %t5302 to i64
  %wp5304 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5303, ptr %wp5304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171a0 word 0x17ffffec
  br label %L_800117150
L_8001171a4:
  ; @pc 0x8001171a4 word 0xa9524ff4
  %r5305.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5305 = load i64, ptr %r5305.p, align 8, !alias.scope !3, !noalias !4
  %t5306 = add i64 %r5305, 288
  %t5307 = add i64 %t5306, 8
  %gmp5308 = inttoptr i64 %t5306 to ptr
  %gml5309 = load i64, ptr %gmp5308, align 1, !alias.scope !4, !noalias !3
  %gmp5310 = inttoptr i64 %t5307 to ptr
  %gml5311 = load i64, ptr %gmp5310, align 1, !alias.scope !4, !noalias !3
  %wp5312 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml5309, ptr %wp5312, align 8, !alias.scope !3, !noalias !4
  %wp5313 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml5311, ptr %wp5313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171a8 word 0xa95157f6
  %r5314.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5314 = load i64, ptr %r5314.p, align 8, !alias.scope !3, !noalias !4
  %t5315 = add i64 %r5314, 272
  %t5316 = add i64 %t5315, 8
  %gmp5317 = inttoptr i64 %t5315 to ptr
  %gml5318 = load i64, ptr %gmp5317, align 1, !alias.scope !4, !noalias !3
  %gmp5319 = inttoptr i64 %t5316 to ptr
  %gml5320 = load i64, ptr %gmp5319, align 1, !alias.scope !4, !noalias !3
  %wp5321 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5318, ptr %wp5321, align 8, !alias.scope !3, !noalias !4
  %wp5322 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml5320, ptr %wp5322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171ac word 0xa9505ff8
  %r5323.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5323 = load i64, ptr %r5323.p, align 8, !alias.scope !3, !noalias !4
  %t5324 = add i64 %r5323, 256
  %t5325 = add i64 %t5324, 8
  %gmp5326 = inttoptr i64 %t5324 to ptr
  %gml5327 = load i64, ptr %gmp5326, align 1, !alias.scope !4, !noalias !3
  %gmp5328 = inttoptr i64 %t5325 to ptr
  %gml5329 = load i64, ptr %gmp5328, align 1, !alias.scope !4, !noalias !3
  %wp5330 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5327, ptr %wp5330, align 8, !alias.scope !3, !noalias !4
  %wp5331 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml5329, ptr %wp5331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171b0 word 0xa94f67fa
  %r5332.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5332 = load i64, ptr %r5332.p, align 8, !alias.scope !3, !noalias !4
  %t5333 = add i64 %r5332, 240
  %t5334 = add i64 %t5333, 8
  %gmp5335 = inttoptr i64 %t5333 to ptr
  %gml5336 = load i64, ptr %gmp5335, align 1, !alias.scope !4, !noalias !3
  %gmp5337 = inttoptr i64 %t5334 to ptr
  %gml5338 = load i64, ptr %gmp5337, align 1, !alias.scope !4, !noalias !3
  %wp5339 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml5336, ptr %wp5339, align 8, !alias.scope !3, !noalias !4
  %wp5340 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml5338, ptr %wp5340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171b4 word 0xa94e6ffc
  %r5341.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5341 = load i64, ptr %r5341.p, align 8, !alias.scope !3, !noalias !4
  %t5342 = add i64 %r5341, 224
  %t5343 = add i64 %t5342, 8
  %gmp5344 = inttoptr i64 %t5342 to ptr
  %gml5345 = load i64, ptr %gmp5344, align 1, !alias.scope !4, !noalias !3
  %gmp5346 = inttoptr i64 %t5343 to ptr
  %gml5347 = load i64, ptr %gmp5346, align 1, !alias.scope !4, !noalias !3
  %wp5348 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml5345, ptr %wp5348, align 8, !alias.scope !3, !noalias !4
  %wp5349 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml5347, ptr %wp5349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171b8 word 0xa94d7bfd
  %r5350.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5350 = load i64, ptr %r5350.p, align 8, !alias.scope !3, !noalias !4
  %t5351 = add i64 %r5350, 208
  %t5352 = add i64 %t5351, 8
  %gmp5353 = inttoptr i64 %t5351 to ptr
  %gml5354 = load i64, ptr %gmp5353, align 1, !alias.scope !4, !noalias !3
  %gmp5355 = inttoptr i64 %t5352 to ptr
  %gml5356 = load i64, ptr %gmp5355, align 1, !alias.scope !4, !noalias !3
  %wp5357 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml5354, ptr %wp5357, align 8, !alias.scope !3, !noalias !4
  %wp5358 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml5356, ptr %wp5358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171bc word 0x9104c3ff
  %r5359.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5359 = load i64, ptr %r5359.p, align 8, !alias.scope !3, !noalias !4
  %t5360 = add i64 %r5359, 304
  %wp5361 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t5360, ptr %wp5361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171c0 word 0xd65f03c0
  ret void
L_8001171c4:
  ; @pc 0x8001171c4 word 0x2a090149
  %r5362.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5362 = load i64, ptr %r5362.p, align 8, !alias.scope !3, !noalias !4
  %c5363 = trunc i64 %r5362 to i32
  %r5364.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5364 = load i64, ptr %r5364.p, align 8, !alias.scope !3, !noalias !4
  %c5365 = trunc i64 %r5364 to i32
  %t5366 = or i32 %c5365, %c5363
  %c5367 = zext i32 %t5366 to i64
  %wp5368 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5367, ptr %wp5368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171c8 word 0xb9000109
  %r5369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5369 = load i64, ptr %r5369.p, align 8, !alias.scope !3, !noalias !4
  %r5370.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5370 = load i64, ptr %r5370.p, align 8, !alias.scope !3, !noalias !4
  %c5371 = trunc i64 %r5370 to i32
  %gmp5372 = inttoptr i64 %r5369 to ptr
  store i32 %c5371, ptr %gmp5372, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001171cc word 0x17ffff94
  br label %L_80011701c
L_8001171d0:
  ; @pc 0x8001171d0 word 0x929ffcae
  %wp5373 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 -65510, ptr %wp5373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171d4 word 0x52840009
  %c5374 = zext i32 8192 to i64
  %wp5375 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5374, ptr %wp5375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171d8 word 0xf94f6696
  %r5376.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5376 = load i64, ptr %r5376.p, align 8, !alias.scope !3, !noalias !4
  %t5377 = add i64 %r5376, 7880
  %gmp5378 = inttoptr i64 %t5377 to ptr
  %gml5379 = load i64, ptr %gmp5378, align 1, !alias.scope !4, !noalias !3
  %wp5380 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5379, ptr %wp5380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171dc word 0x529fffed
  %c5381 = zext i32 65535 to i64
  %wp5382 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5381, ptr %wp5382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171e0 word 0xf2a0000e
  %r5383.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5383 = load i64, ptr %r5383.p, align 8, !alias.scope !3, !noalias !4
  %t5384 = and i64 %r5383, -4294901761
  %t5385 = or i64 %t5384, 0
  %wp5386 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5385, ptr %wp5386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171e4 word 0x3900237f
  %r5387.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5387 = load i64, ptr %r5387.p, align 8, !alias.scope !3, !noalias !4
  %t5388 = add i64 %r5387, 8
  %c5389 = trunc i32 0 to i8
  %gmp5390 = inttoptr i64 %t5388 to ptr
  store i8 %c5389, ptr %gmp5390, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001171e8 word 0xa9007fe9
  %r5391.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5391 = load i64, ptr %r5391.p, align 8, !alias.scope !3, !noalias !4
  %t5392 = add i64 %r5391, 8
  %r5393.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5393 = load i64, ptr %r5393.p, align 8, !alias.scope !3, !noalias !4
  %gmp5394 = inttoptr i64 %r5391 to ptr
  store i64 %r5393, ptr %gmp5394, align 1, !alias.scope !4, !noalias !3
  %gmp5395 = inttoptr i64 %t5392 to ptr
  store i64 0, ptr %gmp5395, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001171ec word 0xd2c00029
  %wp5396 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 4294967296, ptr %wp5396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171f0 word 0xa9013bed
  %r5397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5397 = load i64, ptr %r5397.p, align 8, !alias.scope !3, !noalias !4
  %t5398 = add i64 %r5397, 16
  %t5399 = add i64 %t5398, 8
  %r5400.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5400 = load i64, ptr %r5400.p, align 8, !alias.scope !3, !noalias !4
  %gmp5401 = inttoptr i64 %t5398 to ptr
  store i64 %r5400, ptr %gmp5401, align 1, !alias.scope !4, !noalias !3
  %r5402.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5402 = load i64, ptr %r5402.p, align 8, !alias.scope !3, !noalias !4
  %gmp5403 = inttoptr i64 %t5399 to ptr
  store i64 %r5402, ptr %gmp5403, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001171f4 word 0xb2607fed
  %t5404 = or i64 0, -4294967296
  %wp5405 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t5404, ptr %wp5405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171f8 word 0x9100418c
  %r5406.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5406 = load i64, ptr %r5406.p, align 8, !alias.scope !3, !noalias !4
  %t5407 = add i64 %r5406, 16
  %wp5408 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5407, ptr %wp5408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001171fc word 0xaa1303e1
  %r5409.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5409 = load i64, ptr %r5409.p, align 8, !alias.scope !3, !noalias !4
  %t5410 = or i64 0, %r5409
  %wp5411 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5410, ptr %wp5411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117200 word 0xf900037f
  %r5412.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5412 = load i64, ptr %r5412.p, align 8, !alias.scope !3, !noalias !4
  %gmp5413 = inttoptr i64 %r5412 to ptr
  store i64 0, ptr %gmp5413, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117204 word 0xb900a3e8
  %r5414.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5414 = load i64, ptr %r5414.p, align 8, !alias.scope !3, !noalias !4
  %t5415 = add i64 %r5414, 160
  %r5416.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5416 = load i64, ptr %r5416.p, align 8, !alias.scope !3, !noalias !4
  %c5417 = trunc i64 %r5416 to i32
  %gmp5418 = inttoptr i64 %t5415 to ptr
  store i32 %c5417, ptr %gmp5418, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117208 word 0xa90237e9
  %r5419.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5419 = load i64, ptr %r5419.p, align 8, !alias.scope !3, !noalias !4
  %t5420 = add i64 %r5419, 32
  %t5421 = add i64 %t5420, 8
  %r5422.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5422 = load i64, ptr %r5422.p, align 8, !alias.scope !3, !noalias !4
  %gmp5423 = inttoptr i64 %t5420 to ptr
  store i64 %r5422, ptr %gmp5423, align 1, !alias.scope !4, !noalias !3
  %r5424.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5424 = load i64, ptr %r5424.p, align 8, !alias.scope !3, !noalias !4
  %gmp5425 = inttoptr i64 %t5421 to ptr
  store i64 %r5424, ptr %gmp5425, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011720c word 0x12800009
  %c5426 = zext i32 -1 to i64
  %wp5427 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5426, ptr %wp5427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117210 word 0xb2091bed
  %t5428 = or i64 0, 4575657222473777152
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t5428, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117214 word 0xa90337e9
  %r5430.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5430 = load i64, ptr %r5430.p, align 8, !alias.scope !3, !noalias !4
  %t5431 = add i64 %r5430, 48
  %t5432 = add i64 %t5431, 8
  %r5433.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5433 = load i64, ptr %r5433.p, align 8, !alias.scope !3, !noalias !4
  %gmp5434 = inttoptr i64 %t5431 to ptr
  store i64 %r5433, ptr %gmp5434, align 1, !alias.scope !4, !noalias !3
  %r5435.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5435 = load i64, ptr %r5435.p, align 8, !alias.scope !3, !noalias !4
  %gmp5436 = inttoptr i64 %t5432 to ptr
  store i64 %r5435, ptr %gmp5436, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117218 word 0x90015c29
  %wp5437 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34406510592, ptr %wp5437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011721c word 0x91057d29
  %r5438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5438 = load i64, ptr %r5438.p, align 8, !alias.scope !3, !noalias !4
  %t5439 = add i64 %r5438, 351
  %wp5440 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5439, ptr %wp5440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117220 word 0xa9072fe9
  %r5441.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5441 = load i64, ptr %r5441.p, align 8, !alias.scope !3, !noalias !4
  %t5442 = add i64 %r5441, 112
  %t5443 = add i64 %t5442, 8
  %r5444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5444 = load i64, ptr %r5444.p, align 8, !alias.scope !3, !noalias !4
  %gmp5445 = inttoptr i64 %t5442 to ptr
  store i64 %r5444, ptr %gmp5445, align 1, !alias.scope !4, !noalias !3
  %r5446.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5446 = load i64, ptr %r5446.p, align 8, !alias.scope !3, !noalias !4
  %gmp5447 = inttoptr i64 %t5443 to ptr
  store i64 %r5446, ptr %gmp5447, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117224 word 0xb2087be9
  %t5448 = or i64 0, -36028797027352577
  %wp5449 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5448, ptr %wp5449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117228 word 0xa90833e9
  %r5450.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5450 = load i64, ptr %r5450.p, align 8, !alias.scope !3, !noalias !4
  %t5451 = add i64 %r5450, 128
  %t5452 = add i64 %t5451, 8
  %r5453.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5453 = load i64, ptr %r5453.p, align 8, !alias.scope !3, !noalias !4
  %gmp5454 = inttoptr i64 %t5451 to ptr
  store i64 %r5453, ptr %gmp5454, align 1, !alias.scope !4, !noalias !3
  %r5455.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5455 = load i64, ptr %r5455.p, align 8, !alias.scope !3, !noalias !4
  %gmp5456 = inttoptr i64 %t5452 to ptr
  store i64 %r5455, ptr %gmp5456, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011722c word 0xd2e7f00c
  %wp5457 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp5457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117230 word 0xf80a430c
  %r5458.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5458 = load i64, ptr %r5458.p, align 8, !alias.scope !3, !noalias !4
  %t5459 = add i64 %r5458, 164
  %r5460.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5460 = load i64, ptr %r5460.p, align 8, !alias.scope !3, !noalias !4
  %gmp5461 = inttoptr i64 %t5459 to ptr
  store i64 %r5460, ptr %gmp5461, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117234 word 0xa90927eb
  %r5462.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5462 = load i64, ptr %r5462.p, align 8, !alias.scope !3, !noalias !4
  %t5463 = add i64 %r5462, 144
  %t5464 = add i64 %t5463, 8
  %r5465.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5465 = load i64, ptr %r5465.p, align 8, !alias.scope !3, !noalias !4
  %gmp5466 = inttoptr i64 %t5463 to ptr
  store i64 %r5465, ptr %gmp5466, align 1, !alias.scope !4, !noalias !3
  %r5467.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5467 = load i64, ptr %r5467.p, align 8, !alias.scope !3, !noalias !4
  %gmp5468 = inttoptr i64 %t5464 to ptr
  store i64 %r5467, ptr %gmp5468, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117238 word 0x91004149
  %r5469.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5469 = load i64, ptr %r5469.p, align 8, !alias.scope !3, !noalias !4
  %t5470 = add i64 %r5469, 16
  %wp5471 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5470, ptr %wp5471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011723c word 0x5283d60a
  %c5472 = zext i32 7856 to i64
  %wp5473 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5472, ptr %wp5473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117240 word 0x8b0a0280
  %r5474.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5474 = load i64, ptr %r5474.p, align 8, !alias.scope !3, !noalias !4
  %r5475.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5475 = load i64, ptr %r5475.p, align 8, !alias.scope !3, !noalias !4
  %t5476 = add i64 %r5474, %r5475
  %wp5477 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5476, ptr %wp5477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117244 word 0xa9057fe9
  %r5478.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5478 = load i64, ptr %r5478.p, align 8, !alias.scope !3, !noalias !4
  %t5479 = add i64 %r5478, 80
  %t5480 = add i64 %t5479, 8
  %r5481.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5481 = load i64, ptr %r5481.p, align 8, !alias.scope !3, !noalias !4
  %gmp5482 = inttoptr i64 %t5479 to ptr
  store i64 %r5481, ptr %gmp5482, align 1, !alias.scope !4, !noalias !3
  %gmp5483 = inttoptr i64 %t5480 to ptr
  store i64 0, ptr %gmp5483, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117248 word 0x52800069
  %c5484 = zext i32 3 to i64
  %wp5485 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5484, ptr %wp5485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011724c word 0xb900bfe9
  %r5486.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5486 = load i64, ptr %r5486.p, align 8, !alias.scope !3, !noalias !4
  %t5487 = add i64 %r5486, 188
  %r5488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5488 = load i64, ptr %r5488.p, align 8, !alias.scope !3, !noalias !4
  %c5489 = trunc i64 %r5488 to i32
  %gmp5490 = inttoptr i64 %t5487 to ptr
  store i32 %c5489, ptr %gmp5490, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117250 word 0xa9047fed
  %r5491.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5491 = load i64, ptr %r5491.p, align 8, !alias.scope !3, !noalias !4
  %t5492 = add i64 %r5491, 64
  %t5493 = add i64 %t5492, 8
  %r5494.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5494 = load i64, ptr %r5494.p, align 8, !alias.scope !3, !noalias !4
  %gmp5495 = inttoptr i64 %t5492 to ptr
  store i64 %r5494, ptr %gmp5495, align 1, !alias.scope !4, !noalias !3
  %gmp5496 = inttoptr i64 %t5493 to ptr
  store i64 0, ptr %gmp5496, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117254 word 0xa9067fff
  %r5497.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5497 = load i64, ptr %r5497.p, align 8, !alias.scope !3, !noalias !4
  %t5498 = add i64 %r5497, 96
  %t5499 = add i64 %t5498, 8
  %gmp5500 = inttoptr i64 %t5498 to ptr
  store i64 0, ptr %gmp5500, align 1, !alias.scope !4, !noalias !3
  %gmp5501 = inttoptr i64 %t5499 to ptr
  store i64 0, ptr %gmp5501, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117258 word 0x97ff60c6
  %wp5502 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360881756, ptr %wp5502, align 8, !alias.scope !3, !noalias !4
  call void @f_8000ef570(ptr %c)
  ; @pc 0x80011725c word 0x39402268
  %r5503.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5503 = load i64, ptr %r5503.p, align 8, !alias.scope !3, !noalias !4
  %t5504 = add i64 %r5503, 8
  %gmp5505 = inttoptr i64 %t5504 to ptr
  %gml5506 = load i8, ptr %gmp5505, align 1, !alias.scope !4, !noalias !3
  %c5507 = zext i8 %gml5506 to i64
  %wp5508 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5507, ptr %wp5508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117260 word 0x52879c0b
  %c5509 = zext i32 15584 to i64
  %wp5510 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5509, ptr %wp5510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117264 word 0xb9400aca
  %r5511.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5511 = load i64, ptr %r5511.p, align 8, !alias.scope !3, !noalias !4
  %t5512 = add i64 %r5511, 8
  %gmp5513 = inttoptr i64 %t5512 to ptr
  %gml5514 = load i32, ptr %gmp5513, align 1, !alias.scope !4, !noalias !3
  %c5515 = zext i32 %gml5514 to i64
  %wp5516 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5515, ptr %wp5516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117268 word 0x6b08015f
  %r5517.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5517 = load i64, ptr %r5517.p, align 8, !alias.scope !3, !noalias !4
  %c5518 = trunc i64 %r5517 to i32
  %r5519.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5519 = load i64, ptr %r5519.p, align 8, !alias.scope !3, !noalias !4
  %c5520 = trunc i64 %r5519 to i32
  %t5521 = sub i32 %c5518, %c5520
  %fn5522 = icmp slt i32 %t5521, 0
  %fz5523 = icmp eq i32 %t5521, 0
  %fc5524 = icmp uge i32 %c5518, %c5520
  %fx15525 = xor i32 %c5518, %c5520
  %fx25526 = xor i32 %c5518, %t5521
  %fva5527 = and i32 %fx15525, %fx25526
  %fv5528 = icmp slt i32 %fva5527, 0
  %nz5529 = zext i1 %fn5522 to i64
  %zz5530 = zext i1 %fz5523 to i64
  %cz5531 = zext i1 %fc5524 to i64
  %vz5532 = zext i1 %fv5528 to i64
  %ns5533 = shl i64 %nz5529, 31
  %zs5534 = shl i64 %zz5530, 30
  %cs5535 = shl i64 %cz5531, 29
  %vs5536 = shl i64 %vz5532, 28
  %nzor5537 = or i64 %ns5533, %zs5534
  %cvor5538 = or i64 %cs5535, %vs5536
  %nzcv5539 = or i64 %nzor5537, %cvor5538
  %wp5540 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5539, ptr %wp5540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011726c word 0xf9400ac9
  %r5541.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5541 = load i64, ptr %r5541.p, align 8, !alias.scope !3, !noalias !4
  %t5542 = add i64 %r5541, 16
  %gmp5543 = inttoptr i64 %t5542 to ptr
  %gml5544 = load i64, ptr %gmp5543, align 1, !alias.scope !4, !noalias !3
  %wp5545 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5544, ptr %wp5545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117270 word 0x9a9f810a
  %r5546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5546 = load i64, ptr %r5546.p, align 8, !alias.scope !3, !noalias !4
  %r5547.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5547 = load i64, ptr %r5547.p, align 8, !alias.scope !3, !noalias !4
  %fsh5549 = lshr i64 %r5547, 29
  %ftr5550 = trunc i64 %fsh5549 to i1
  %fsh5551 = lshr i64 %r5547, 30
  %ftr5552 = trunc i64 %fsh5551 to i1
  %fnz5553 = xor i1 %ftr5552, true
  %cond5548 = and i1 %ftr5550, %fnz5553
  %sel5554 = select i1 %cond5548, i64 %r5546, i64 0
  %wp5555 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel5554, ptr %wp5555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117274 word 0x37000fa0
  %r5556.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5556 = load i64, ptr %r5556.p, align 8, !alias.scope !3, !noalias !4
  %t5557 = and i64 %r5556, 1
  %cmp5558 = icmp ne i64 %t5557, 0
  br i1 %cmp5558, label %L_800117468, label %L_800117278_ft
L_80011728c:
  ; @pc 0x80011728c word 0xbd400120
  %r5581.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5581 = load i64, ptr %r5581.p, align 8, !alias.scope !3, !noalias !4
  %gmp5582 = inttoptr i64 %r5581 to ptr
  %gml5583 = load i32, ptr %gmp5582, align 1, !alias.scope !4, !noalias !3
  %c5584 = zext i32 %gml5583 to i128
  %wp5585 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5584, ptr %wp5585, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800117290 word 0xbd400141
  %r5586.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5586 = load i64, ptr %r5586.p, align 8, !alias.scope !3, !noalias !4
  %gmp5587 = inttoptr i64 %r5586 to ptr
  %gml5588 = load i32, ptr %gmp5587, align 1, !alias.scope !4, !noalias !3
  %c5589 = zext i32 %gml5588 to i128
  %wp5590 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5589, ptr %wp5590, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800117294 word 0xbd400162
  %r5591.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5591 = load i64, ptr %r5591.p, align 8, !alias.scope !3, !noalias !4
  %gmp5592 = inttoptr i64 %r5591 to ptr
  %gml5593 = load i32, ptr %gmp5592, align 1, !alias.scope !4, !noalias !3
  %c5594 = zext i32 %gml5593 to i128
  %wp5595 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c5594, ptr %wp5595, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800117298 word 0x52879c0b
  %c5596 = zext i32 15584 to i64
  %wp5597 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5596, ptr %wp5597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011729c word 0xbd400183
  %r5598.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5598 = load i64, ptr %r5598.p, align 8, !alias.scope !3, !noalias !4
  %gmp5599 = inttoptr i64 %r5598 to ptr
  %gml5600 = load i32, ptr %gmp5599, align 1, !alias.scope !4, !noalias !3
  %c5601 = zext i32 %gml5600 to i128
  %wp5602 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c5601, ptr %wp5602, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001172a0 word 0x2d0f07e0
  %r5603.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5603 = load i64, ptr %r5603.p, align 8, !alias.scope !3, !noalias !4
  %t5604 = add i64 %r5603, 120
  %t5605 = add i64 %t5604, 4
  %r5606.p = getelementptr inbounds i8, ptr %c, i64 512
  %r5606 = load i128, ptr %r5606.p, align 16, !alias.scope !3, !noalias !4
  %r5607.p = getelementptr inbounds i8, ptr %c, i64 528
  %r5607 = load i128, ptr %r5607.p, align 16, !alias.scope !3, !noalias !4
  %c5608 = trunc i128 %r5606 to i32
  %c5609 = trunc i128 %r5607 to i32
  %gmp5610 = inttoptr i64 %t5604 to ptr
  store i32 %c5608, ptr %gmp5610, align 1, !alias.scope !4, !noalias !3
  %gmp5611 = inttoptr i64 %t5605 to ptr
  store i32 %c5609, ptr %gmp5611, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001172a4 word 0x2d100fe2
  %r5612.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5612 = load i64, ptr %r5612.p, align 8, !alias.scope !3, !noalias !4
  %t5613 = add i64 %r5612, 128
  %t5614 = add i64 %t5613, 4
  %r5615.p = getelementptr inbounds i8, ptr %c, i64 544
  %r5615 = load i128, ptr %r5615.p, align 16, !alias.scope !3, !noalias !4
  %r5616.p = getelementptr inbounds i8, ptr %c, i64 560
  %r5616 = load i128, ptr %r5616.p, align 16, !alias.scope !3, !noalias !4
  %c5617 = trunc i128 %r5615 to i32
  %c5618 = trunc i128 %r5616 to i32
  %gmp5619 = inttoptr i64 %t5613 to ptr
  store i32 %c5617, ptr %gmp5619, align 1, !alias.scope !4, !noalias !3
  %gmp5620 = inttoptr i64 %t5614 to ptr
  store i32 %c5618, ptr %gmp5620, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001172a8 word 0xb9400aca
  %r5621.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5621 = load i64, ptr %r5621.p, align 8, !alias.scope !3, !noalias !4
  %t5622 = add i64 %r5621, 8
  %gmp5623 = inttoptr i64 %t5622 to ptr
  %gml5624 = load i32, ptr %gmp5623, align 1, !alias.scope !4, !noalias !3
  %c5625 = zext i32 %gml5624 to i64
  %wp5626 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5625, ptr %wp5626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172ac word 0xf9400ac9
  %r5627.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5627 = load i64, ptr %r5627.p, align 8, !alias.scope !3, !noalias !4
  %t5628 = add i64 %r5627, 16
  %gmp5629 = inttoptr i64 %t5628 to ptr
  %gml5630 = load i64, ptr %gmp5629, align 1, !alias.scope !4, !noalias !3
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5630, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172b0 word 0x6b08015f
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %c5633 = trunc i64 %r5632 to i32
  %r5634.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5634 = load i64, ptr %r5634.p, align 8, !alias.scope !3, !noalias !4
  %c5635 = trunc i64 %r5634 to i32
  %t5636 = sub i32 %c5633, %c5635
  %fn5637 = icmp slt i32 %t5636, 0
  %fz5638 = icmp eq i32 %t5636, 0
  %fc5639 = icmp uge i32 %c5633, %c5635
  %fx15640 = xor i32 %c5633, %c5635
  %fx25641 = xor i32 %c5633, %t5636
  %fva5642 = and i32 %fx15640, %fx25641
  %fv5643 = icmp slt i32 %fva5642, 0
  %nz5644 = zext i1 %fn5637 to i64
  %zz5645 = zext i1 %fz5638 to i64
  %cz5646 = zext i1 %fc5639 to i64
  %vz5647 = zext i1 %fv5643 to i64
  %ns5648 = shl i64 %nz5644, 31
  %zs5649 = shl i64 %zz5645, 30
  %cs5650 = shl i64 %cz5646, 29
  %vs5651 = shl i64 %vz5647, 28
  %nzor5652 = or i64 %ns5648, %zs5649
  %cvor5653 = or i64 %cs5650, %vs5651
  %nzcv5654 = or i64 %nzor5652, %cvor5653
  %wp5655 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5654, ptr %wp5655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172b4 word 0x9a9f810a
  %r5656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5656 = load i64, ptr %r5656.p, align 8, !alias.scope !3, !noalias !4
  %r5657.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5657 = load i64, ptr %r5657.p, align 8, !alias.scope !3, !noalias !4
  %fsh5659 = lshr i64 %r5657, 29
  %ftr5660 = trunc i64 %fsh5659 to i1
  %fsh5661 = lshr i64 %r5657, 30
  %ftr5662 = trunc i64 %fsh5661 to i1
  %fnz5663 = xor i1 %ftr5662, true
  %cond5658 = and i1 %ftr5660, %fnz5663
  %sel5664 = select i1 %cond5658, i64 %r5656, i64 0
  %wp5665 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel5664, ptr %wp5665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172b8 word 0x9bab2549
  %r5666.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5666 = load i64, ptr %r5666.p, align 8, !alias.scope !3, !noalias !4
  %c5667 = trunc i64 %r5666 to i32
  %c5668 = zext i32 %c5667 to i64
  %r5669.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5669 = load i64, ptr %r5669.p, align 8, !alias.scope !3, !noalias !4
  %c5670 = trunc i64 %r5669 to i32
  %c5671 = zext i32 %c5670 to i64
  %t5672 = mul i64 %c5668, %c5671
  %r5673.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5673 = load i64, ptr %r5673.p, align 8, !alias.scope !3, !noalias !4
  %t5674 = add i64 %r5673, %t5672
  %wp5675 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5674, ptr %wp5675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172bc word 0x37000ea0
  %r5676.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5676 = load i64, ptr %r5676.p, align 8, !alias.scope !3, !noalias !4
  %t5677 = and i64 %r5676, 1
  %cmp5678 = icmp ne i64 %t5677, 0
  br i1 %cmp5678, label %L_800117490, label %L_8001172c0_ft
L_8001172f0:
  ; @pc 0x8001172f0 word 0xf9401109
  %r5771.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5771 = load i64, ptr %r5771.p, align 8, !alias.scope !3, !noalias !4
  %t5772 = add i64 %r5771, 32
  %gmp5773 = inttoptr i64 %t5772 to ptr
  %gml5774 = load i64, ptr %gmp5773, align 1, !alias.scope !4, !noalias !3
  %wp5775 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5774, ptr %wp5775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172f4 word 0xb4000049
  %r5776.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5776 = load i64, ptr %r5776.p, align 8, !alias.scope !3, !noalias !4
  %cmp5777 = icmp eq i64 %r5776, 0
  br i1 %cmp5777, label %L_8001172fc, label %L_8001172f8_ft
L_8001172fc:
  ; @pc 0x8001172fc word 0x3902c3e9
  %r5784.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5784 = load i64, ptr %r5784.p, align 8, !alias.scope !3, !noalias !4
  %t5785 = add i64 %r5784, 176
  %r5786.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5786 = load i64, ptr %r5786.p, align 8, !alias.scope !3, !noalias !4
  %c5787 = trunc i64 %r5786 to i32
  %c5788 = trunc i32 %c5787 to i8
  %gmp5789 = inttoptr i64 %t5785 to ptr
  store i8 %c5788, ptr %gmp5789, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117300 word 0xf9401509
  %r5790.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5790 = load i64, ptr %r5790.p, align 8, !alias.scope !3, !noalias !4
  %t5791 = add i64 %r5790, 40
  %gmp5792 = inttoptr i64 %t5791 to ptr
  %gml5793 = load i64, ptr %gmp5792, align 1, !alias.scope !4, !noalias !3
  %wp5794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5793, ptr %wp5794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117304 word 0xb50024e9
  %r5795.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5795 = load i64, ptr %r5795.p, align 8, !alias.scope !3, !noalias !4
  %cmp5796 = icmp ne i64 %r5795, 0
  br i1 %cmp5796, label %L_8001177a0, label %L_800117308
L_800117308:
  ; @pc 0x800117308 word 0x3902c7e9
  %r5797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5797 = load i64, ptr %r5797.p, align 8, !alias.scope !3, !noalias !4
  %t5798 = add i64 %r5797, 177
  %r5799.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5799 = load i64, ptr %r5799.p, align 8, !alias.scope !3, !noalias !4
  %c5800 = trunc i64 %r5799 to i32
  %c5801 = trunc i32 %c5800 to i8
  %gmp5802 = inttoptr i64 %t5798 to ptr
  store i8 %c5801, ptr %gmp5802, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011730c word 0xf9401909
  %r5803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5803 = load i64, ptr %r5803.p, align 8, !alias.scope !3, !noalias !4
  %t5804 = add i64 %r5803, 48
  %gmp5805 = inttoptr i64 %t5804 to ptr
  %gml5806 = load i64, ptr %gmp5805, align 1, !alias.scope !4, !noalias !3
  %wp5807 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5806, ptr %wp5807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117310 word 0xb50024c9
  %r5808.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5808 = load i64, ptr %r5808.p, align 8, !alias.scope !3, !noalias !4
  %cmp5809 = icmp ne i64 %r5808, 0
  br i1 %cmp5809, label %L_8001177a8, label %L_800117314
L_800117314:
  ; @pc 0x800117314 word 0x3902cbe9
  %r5810.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5810 = load i64, ptr %r5810.p, align 8, !alias.scope !3, !noalias !4
  %t5811 = add i64 %r5810, 178
  %r5812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5812 = load i64, ptr %r5812.p, align 8, !alias.scope !3, !noalias !4
  %c5813 = trunc i64 %r5812 to i32
  %c5814 = trunc i32 %c5813 to i8
  %gmp5815 = inttoptr i64 %t5811 to ptr
  store i8 %c5814, ptr %gmp5815, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117318 word 0xf9401d09
  %r5816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5816 = load i64, ptr %r5816.p, align 8, !alias.scope !3, !noalias !4
  %t5817 = add i64 %r5816, 56
  %gmp5818 = inttoptr i64 %t5817 to ptr
  %gml5819 = load i64, ptr %gmp5818, align 1, !alias.scope !4, !noalias !3
  %wp5820 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5819, ptr %wp5820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011731c word 0xb50024a9
  %r5821.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5821 = load i64, ptr %r5821.p, align 8, !alias.scope !3, !noalias !4
  %cmp5822 = icmp ne i64 %r5821, 0
  br i1 %cmp5822, label %L_8001177b0, label %L_800117320
L_800117320:
  ; @pc 0x800117320 word 0x3902cfe9
  %r5823.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5823 = load i64, ptr %r5823.p, align 8, !alias.scope !3, !noalias !4
  %t5824 = add i64 %r5823, 179
  %r5825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5825 = load i64, ptr %r5825.p, align 8, !alias.scope !3, !noalias !4
  %c5826 = trunc i64 %r5825 to i32
  %c5827 = trunc i32 %c5826 to i8
  %gmp5828 = inttoptr i64 %t5824 to ptr
  store i8 %c5827, ptr %gmp5828, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117324 word 0xf9402109
  %r5829.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5829 = load i64, ptr %r5829.p, align 8, !alias.scope !3, !noalias !4
  %t5830 = add i64 %r5829, 64
  %gmp5831 = inttoptr i64 %t5830 to ptr
  %gml5832 = load i64, ptr %gmp5831, align 1, !alias.scope !4, !noalias !3
  %wp5833 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5832, ptr %wp5833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117328 word 0xb5002489
  %r5834.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5834 = load i64, ptr %r5834.p, align 8, !alias.scope !3, !noalias !4
  %cmp5835 = icmp ne i64 %r5834, 0
  br i1 %cmp5835, label %L_8001177b8, label %L_80011732c
L_80011732c:
  ; @pc 0x80011732c word 0x3902d3e9
  %r5836.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5836 = load i64, ptr %r5836.p, align 8, !alias.scope !3, !noalias !4
  %t5837 = add i64 %r5836, 180
  %r5838.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5838 = load i64, ptr %r5838.p, align 8, !alias.scope !3, !noalias !4
  %c5839 = trunc i64 %r5838 to i32
  %c5840 = trunc i32 %c5839 to i8
  %gmp5841 = inttoptr i64 %t5837 to ptr
  store i8 %c5840, ptr %gmp5841, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117330 word 0xf9402509
  %r5842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5842 = load i64, ptr %r5842.p, align 8, !alias.scope !3, !noalias !4
  %t5843 = add i64 %r5842, 72
  %gmp5844 = inttoptr i64 %t5843 to ptr
  %gml5845 = load i64, ptr %gmp5844, align 1, !alias.scope !4, !noalias !3
  %wp5846 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5845, ptr %wp5846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117334 word 0xb5002469
  %r5847.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5847 = load i64, ptr %r5847.p, align 8, !alias.scope !3, !noalias !4
  %cmp5848 = icmp ne i64 %r5847, 0
  br i1 %cmp5848, label %L_8001177c0, label %L_800117338
L_800117338:
  ; @pc 0x800117338 word 0x3902d7e9
  %r5849.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5849 = load i64, ptr %r5849.p, align 8, !alias.scope !3, !noalias !4
  %t5850 = add i64 %r5849, 181
  %r5851.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5851 = load i64, ptr %r5851.p, align 8, !alias.scope !3, !noalias !4
  %c5852 = trunc i64 %r5851 to i32
  %c5853 = trunc i32 %c5852 to i8
  %gmp5854 = inttoptr i64 %t5850 to ptr
  store i8 %c5853, ptr %gmp5854, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011733c word 0xf9402909
  %r5855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5855 = load i64, ptr %r5855.p, align 8, !alias.scope !3, !noalias !4
  %t5856 = add i64 %r5855, 80
  %gmp5857 = inttoptr i64 %t5856 to ptr
  %gml5858 = load i64, ptr %gmp5857, align 1, !alias.scope !4, !noalias !3
  %wp5859 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5858, ptr %wp5859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117340 word 0xb5002449
  %r5860.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5860 = load i64, ptr %r5860.p, align 8, !alias.scope !3, !noalias !4
  %cmp5861 = icmp ne i64 %r5860, 0
  br i1 %cmp5861, label %L_8001177c8, label %L_800117344
L_800117344:
  ; @pc 0x800117344 word 0x3902dbe9
  %r5862.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5862 = load i64, ptr %r5862.p, align 8, !alias.scope !3, !noalias !4
  %t5863 = add i64 %r5862, 182
  %r5864.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5864 = load i64, ptr %r5864.p, align 8, !alias.scope !3, !noalias !4
  %c5865 = trunc i64 %r5864 to i32
  %c5866 = trunc i32 %c5865 to i8
  %gmp5867 = inttoptr i64 %t5863 to ptr
  store i8 %c5866, ptr %gmp5867, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117348 word 0xf9402d09
  %r5868.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5868 = load i64, ptr %r5868.p, align 8, !alias.scope !3, !noalias !4
  %t5869 = add i64 %r5868, 88
  %gmp5870 = inttoptr i64 %t5869 to ptr
  %gml5871 = load i64, ptr %gmp5870, align 1, !alias.scope !4, !noalias !3
  %wp5872 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5871, ptr %wp5872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011734c word 0xb5002429
  %r5873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5873 = load i64, ptr %r5873.p, align 8, !alias.scope !3, !noalias !4
  %cmp5874 = icmp ne i64 %r5873, 0
  br i1 %cmp5874, label %L_8001177d0, label %L_800117350
L_800117350:
  ; @pc 0x800117350 word 0x3902dfe9
  %r5875.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5875 = load i64, ptr %r5875.p, align 8, !alias.scope !3, !noalias !4
  %t5876 = add i64 %r5875, 183
  %r5877.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5877 = load i64, ptr %r5877.p, align 8, !alias.scope !3, !noalias !4
  %c5878 = trunc i64 %r5877 to i32
  %c5879 = trunc i32 %c5878 to i8
  %gmp5880 = inttoptr i64 %t5876 to ptr
  store i8 %c5879, ptr %gmp5880, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117354 word 0xf9403108
  %r5881.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5881 = load i64, ptr %r5881.p, align 8, !alias.scope !3, !noalias !4
  %t5882 = add i64 %r5881, 96
  %gmp5883 = inttoptr i64 %t5882 to ptr
  %gml5884 = load i64, ptr %gmp5883, align 1, !alias.scope !4, !noalias !3
  %wp5885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5884, ptr %wp5885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117358 word 0xb4ffe3c8
  %r5886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5886 = load i64, ptr %r5886.p, align 8, !alias.scope !3, !noalias !4
  %cmp5887 = icmp eq i64 %r5886, 0
  br i1 %cmp5887, label %L_800116fd0, label %L_80011735c_ft
L_800117364:
  ; @pc 0x800117364 word 0xd2800030
  %wp5894 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 1, ptr %wp5894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117368 word 0x5280004f
  %c5895 = zext i32 2 to i64
  %wp5896 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c5895, ptr %wp5896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011736c word 0xf94f668e
  %r5897.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5897 = load i64, ptr %r5897.p, align 8, !alias.scope !3, !noalias !4
  %t5898 = add i64 %r5897, 7880
  %gmp5899 = inttoptr i64 %t5898 to ptr
  %gml5900 = load i64, ptr %gmp5899, align 1, !alias.scope !4, !noalias !3
  %wp5901 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5900, ptr %wp5901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117370 word 0xf2e00810
  %r5902.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5902 = load i64, ptr %r5902.p, align 8, !alias.scope !3, !noalias !4
  %t5903 = and i64 %r5902, 281474976710655
  %t5904 = or i64 %t5903, 18014398509481984
  %wp5905 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t5904, ptr %wp5905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117374 word 0xd2c00020
  %wp5906 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 4294967296, ptr %wp5906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117378 word 0x3900237f
  %r5907.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5907 = load i64, ptr %r5907.p, align 8, !alias.scope !3, !noalias !4
  %t5908 = add i64 %r5907, 8
  %c5909 = trunc i32 0 to i8
  %gmp5910 = inttoptr i64 %t5908 to ptr
  store i8 %c5909, ptr %gmp5910, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011737c word 0xa90043ef
  %r5911.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5911 = load i64, ptr %r5911.p, align 8, !alias.scope !3, !noalias !4
  %t5912 = add i64 %r5911, 8
  %r5913.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5913 = load i64, ptr %r5913.p, align 8, !alias.scope !3, !noalias !4
  %gmp5914 = inttoptr i64 %r5911 to ptr
  store i64 %r5913, ptr %gmp5914, align 1, !alias.scope !4, !noalias !3
  %r5915.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5915 = load i64, ptr %r5915.p, align 8, !alias.scope !3, !noalias !4
  %gmp5916 = inttoptr i64 %t5912 to ptr
  store i64 %r5915, ptr %gmp5916, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117380 word 0xb2607fef
  %t5917 = or i64 0, -4294967296
  %wp5918 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t5917, ptr %wp5918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117384 word 0xa9023fe0
  %r5919.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5919 = load i64, ptr %r5919.p, align 8, !alias.scope !3, !noalias !4
  %t5920 = add i64 %r5919, 32
  %t5921 = add i64 %t5920, 8
  %r5922.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5922 = load i64, ptr %r5922.p, align 8, !alias.scope !3, !noalias !4
  %gmp5923 = inttoptr i64 %t5920 to ptr
  store i64 %r5922, ptr %gmp5923, align 1, !alias.scope !4, !noalias !3
  %r5924.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5924 = load i64, ptr %r5924.p, align 8, !alias.scope !3, !noalias !4
  %gmp5925 = inttoptr i64 %t5921 to ptr
  store i64 %r5924, ptr %gmp5925, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117388 word 0xb2087bef
  %t5926 = or i64 0, -36028797027352577
  %wp5927 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t5926, ptr %wp5927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011738c word 0x9100418c
  %r5928.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5928 = load i64, ptr %r5928.p, align 8, !alias.scope !3, !noalias !4
  %t5929 = add i64 %r5928, 16
  %wp5930 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5929, ptr %wp5930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117390 word 0x929ffd32
  %wp5931 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 -65514, ptr %wp5931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117394 word 0xd001576d
  %wp5932 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405896192, ptr %wp5932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117398 word 0x913729ad
  %r5933.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5933 = load i64, ptr %r5933.p, align 8, !alias.scope !3, !noalias !4
  %t5934 = add i64 %r5933, 3530
  %wp5935 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t5934, ptr %wp5935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011739c word 0xa90833ef
  %r5936.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5936 = load i64, ptr %r5936.p, align 8, !alias.scope !3, !noalias !4
  %t5937 = add i64 %r5936, 128
  %t5938 = add i64 %t5937, 8
  %r5939.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5939 = load i64, ptr %r5939.p, align 8, !alias.scope !3, !noalias !4
  %gmp5940 = inttoptr i64 %t5937 to ptr
  store i64 %r5939, ptr %gmp5940, align 1, !alias.scope !4, !noalias !3
  %r5941.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5941 = load i64, ptr %r5941.p, align 8, !alias.scope !3, !noalias !4
  %gmp5942 = inttoptr i64 %t5938 to ptr
  store i64 %r5941, ptr %gmp5942, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173a0 word 0xd2e7f00c
  %wp5943 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp5943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173a4 word 0x529ffff1
  %c5944 = zext i32 65535 to i64
  %wp5945 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c5944, ptr %wp5945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173a8 word 0xf2a00012
  %r5946.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5946 = load i64, ptr %r5946.p, align 8, !alias.scope !3, !noalias !4
  %t5947 = and i64 %r5946, -4294901761
  %t5948 = or i64 %t5947, 0
  %wp5949 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t5948, ptr %wp5949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173ac word 0x12800010
  %c5950 = zext i32 -1 to i64
  %wp5951 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5950, ptr %wp5951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173b0 word 0xf80a430c
  %r5952.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5952 = load i64, ptr %r5952.p, align 8, !alias.scope !3, !noalias !4
  %t5953 = add i64 %r5952, 164
  %r5954.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5954 = load i64, ptr %r5954.p, align 8, !alias.scope !3, !noalias !4
  %gmp5955 = inttoptr i64 %t5953 to ptr
  store i64 %r5954, ptr %gmp5955, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173b4 word 0xb2091bec
  %t5956 = or i64 0, 4575657222473777152
  %wp5957 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5956, ptr %wp5957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173b8 word 0x9100414a
  %r5958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5958 = load i64, ptr %r5958.p, align 8, !alias.scope !3, !noalias !4
  %t5959 = add i64 %r5958, 16
  %wp5960 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5959, ptr %wp5960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173bc word 0xa9093feb
  %r5961.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5961 = load i64, ptr %r5961.p, align 8, !alias.scope !3, !noalias !4
  %t5962 = add i64 %r5961, 144
  %t5963 = add i64 %t5962, 8
  %r5964.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5964 = load i64, ptr %r5964.p, align 8, !alias.scope !3, !noalias !4
  %gmp5965 = inttoptr i64 %t5962 to ptr
  store i64 %r5964, ptr %gmp5965, align 1, !alias.scope !4, !noalias !3
  %r5966.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5966 = load i64, ptr %r5966.p, align 8, !alias.scope !3, !noalias !4
  %gmp5967 = inttoptr i64 %t5963 to ptr
  store i64 %r5966, ptr %gmp5967, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173c0 word 0x5280006f
  %c5968 = zext i32 3 to i64
  %wp5969 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c5968, ptr %wp5969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173c4 word 0xf900037f
  %r5970.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5970 = load i64, ptr %r5970.p, align 8, !alias.scope !3, !noalias !4
  %gmp5971 = inttoptr i64 %r5970 to ptr
  store i64 0, ptr %gmp5971, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173c8 word 0xb900a3e8
  %r5972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5972 = load i64, ptr %r5972.p, align 8, !alias.scope !3, !noalias !4
  %t5973 = add i64 %r5972, 160
  %r5974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5974 = load i64, ptr %r5974.p, align 8, !alias.scope !3, !noalias !4
  %c5975 = trunc i64 %r5974 to i32
  %gmp5976 = inttoptr i64 %t5973 to ptr
  store i32 %c5975, ptr %gmp5976, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173cc word 0x39402268
  %r5977.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5977 = load i64, ptr %r5977.p, align 8, !alias.scope !3, !noalias !4
  %t5978 = add i64 %r5977, 8
  %gmp5979 = inttoptr i64 %t5978 to ptr
  %gml5980 = load i8, ptr %gmp5979, align 1, !alias.scope !4, !noalias !3
  %c5981 = zext i8 %gml5980 to i64
  %wp5982 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5981, ptr %wp5982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173d0 word 0xb900bfef
  %r5983.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5983 = load i64, ptr %r5983.p, align 8, !alias.scope !3, !noalias !4
  %t5984 = add i64 %r5983, 188
  %r5985.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5985 = load i64, ptr %r5985.p, align 8, !alias.scope !3, !noalias !4
  %c5986 = trunc i64 %r5985 to i32
  %gmp5987 = inttoptr i64 %t5984 to ptr
  store i32 %c5986, ptr %gmp5987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173d4 word 0xa9014bf1
  %r5988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5988 = load i64, ptr %r5988.p, align 8, !alias.scope !3, !noalias !4
  %t5989 = add i64 %r5988, 16
  %t5990 = add i64 %t5989, 8
  %r5991.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5991 = load i64, ptr %r5991.p, align 8, !alias.scope !3, !noalias !4
  %gmp5992 = inttoptr i64 %t5989 to ptr
  store i64 %r5991, ptr %gmp5992, align 1, !alias.scope !4, !noalias !3
  %r5993.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5993 = load i64, ptr %r5993.p, align 8, !alias.scope !3, !noalias !4
  %gmp5994 = inttoptr i64 %t5990 to ptr
  store i64 %r5993, ptr %gmp5994, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173d8 word 0xa9067fff
  %r5995.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5995 = load i64, ptr %r5995.p, align 8, !alias.scope !3, !noalias !4
  %t5996 = add i64 %r5995, 96
  %t5997 = add i64 %t5996, 8
  %gmp5998 = inttoptr i64 %t5996 to ptr
  store i64 0, ptr %gmp5998, align 1, !alias.scope !4, !noalias !3
  %gmp5999 = inttoptr i64 %t5997 to ptr
  store i64 0, ptr %gmp5999, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173dc word 0xa90333f0
  %r6000.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6000 = load i64, ptr %r6000.p, align 8, !alias.scope !3, !noalias !4
  %t6001 = add i64 %r6000, 48
  %t6002 = add i64 %t6001, 8
  %r6003.p = getelementptr inbounds i8, ptr %c, i64 128
  %r6003 = load i64, ptr %r6003.p, align 8, !alias.scope !3, !noalias !4
  %gmp6004 = inttoptr i64 %t6001 to ptr
  store i64 %r6003, ptr %gmp6004, align 1, !alias.scope !4, !noalias !3
  %r6005.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6005 = load i64, ptr %r6005.p, align 8, !alias.scope !3, !noalias !4
  %gmp6006 = inttoptr i64 %t6002 to ptr
  store i64 %r6005, ptr %gmp6006, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173e0 word 0xa9047fec
  %r6007.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6007 = load i64, ptr %r6007.p, align 8, !alias.scope !3, !noalias !4
  %t6008 = add i64 %r6007, 64
  %t6009 = add i64 %t6008, 8
  %r6010.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6010 = load i64, ptr %r6010.p, align 8, !alias.scope !3, !noalias !4
  %gmp6011 = inttoptr i64 %t6008 to ptr
  store i64 %r6010, ptr %gmp6011, align 1, !alias.scope !4, !noalias !3
  %gmp6012 = inttoptr i64 %t6009 to ptr
  store i64 0, ptr %gmp6012, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173e4 word 0xa9057fea
  %r6013.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6013 = load i64, ptr %r6013.p, align 8, !alias.scope !3, !noalias !4
  %t6014 = add i64 %r6013, 80
  %t6015 = add i64 %t6014, 8
  %r6016.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6016 = load i64, ptr %r6016.p, align 8, !alias.scope !3, !noalias !4
  %gmp6017 = inttoptr i64 %t6014 to ptr
  store i64 %r6016, ptr %gmp6017, align 1, !alias.scope !4, !noalias !3
  %gmp6018 = inttoptr i64 %t6015 to ptr
  store i64 0, ptr %gmp6018, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173e8 word 0xa9072fed
  %r6019.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6019 = load i64, ptr %r6019.p, align 8, !alias.scope !3, !noalias !4
  %t6020 = add i64 %r6019, 112
  %t6021 = add i64 %t6020, 8
  %r6022.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6022 = load i64, ptr %r6022.p, align 8, !alias.scope !3, !noalias !4
  %gmp6023 = inttoptr i64 %t6020 to ptr
  store i64 %r6022, ptr %gmp6023, align 1, !alias.scope !4, !noalias !3
  %r6024.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6024 = load i64, ptr %r6024.p, align 8, !alias.scope !3, !noalias !4
  %gmp6025 = inttoptr i64 %t6021 to ptr
  store i64 %r6024, ptr %gmp6025, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001173ec word 0xb94009ca
  %r6026.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6026 = load i64, ptr %r6026.p, align 8, !alias.scope !3, !noalias !4
  %t6027 = add i64 %r6026, 8
  %gmp6028 = inttoptr i64 %t6027 to ptr
  %gml6029 = load i32, ptr %gmp6028, align 1, !alias.scope !4, !noalias !3
  %c6030 = zext i32 %gml6029 to i64
  %wp6031 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6030, ptr %wp6031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173f0 word 0xf94009cb
  %r6032.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6032 = load i64, ptr %r6032.p, align 8, !alias.scope !3, !noalias !4
  %t6033 = add i64 %r6032, 16
  %gmp6034 = inttoptr i64 %t6033 to ptr
  %gml6035 = load i64, ptr %gmp6034, align 1, !alias.scope !4, !noalias !3
  %wp6036 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6035, ptr %wp6036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173f4 word 0x6b08015f
  %r6037.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6037 = load i64, ptr %r6037.p, align 8, !alias.scope !3, !noalias !4
  %c6038 = trunc i64 %r6037 to i32
  %r6039.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6039 = load i64, ptr %r6039.p, align 8, !alias.scope !3, !noalias !4
  %c6040 = trunc i64 %r6039 to i32
  %t6041 = sub i32 %c6038, %c6040
  %fn6042 = icmp slt i32 %t6041, 0
  %fz6043 = icmp eq i32 %t6041, 0
  %fc6044 = icmp uge i32 %c6038, %c6040
  %fx16045 = xor i32 %c6038, %c6040
  %fx26046 = xor i32 %c6038, %t6041
  %fva6047 = and i32 %fx16045, %fx26046
  %fv6048 = icmp slt i32 %fva6047, 0
  %nz6049 = zext i1 %fn6042 to i64
  %zz6050 = zext i1 %fz6043 to i64
  %cz6051 = zext i1 %fc6044 to i64
  %vz6052 = zext i1 %fv6048 to i64
  %ns6053 = shl i64 %nz6049, 31
  %zs6054 = shl i64 %zz6050, 30
  %cs6055 = shl i64 %cz6051, 29
  %vs6056 = shl i64 %vz6052, 28
  %nzor6057 = or i64 %ns6053, %zs6054
  %cvor6058 = or i64 %cs6055, %vs6056
  %nzcv6059 = or i64 %nzor6057, %cvor6058
  %wp6060 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6059, ptr %wp6060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173f8 word 0x52879c0a
  %c6061 = zext i32 15584 to i64
  %wp6062 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6061, ptr %wp6062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001173fc word 0x9a9f810c
  %r6063.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6063 = load i64, ptr %r6063.p, align 8, !alias.scope !3, !noalias !4
  %r6064.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6064 = load i64, ptr %r6064.p, align 8, !alias.scope !3, !noalias !4
  %fsh6066 = lshr i64 %r6064, 29
  %ftr6067 = trunc i64 %fsh6066 to i1
  %fsh6068 = lshr i64 %r6064, 30
  %ftr6069 = trunc i64 %fsh6068 to i1
  %fnz6070 = xor i1 %ftr6069, true
  %cond6065 = and i1 %ftr6067, %fnz6070
  %sel6071 = select i1 %cond6065, i64 %r6063, i64 0
  %wp6072 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel6071, ptr %wp6072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117400 word 0x9baa2d8b
  %r6073.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6073 = load i64, ptr %r6073.p, align 8, !alias.scope !3, !noalias !4
  %c6074 = trunc i64 %r6073 to i32
  %c6075 = zext i32 %c6074 to i64
  %r6076.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6076 = load i64, ptr %r6076.p, align 8, !alias.scope !3, !noalias !4
  %c6077 = trunc i64 %r6076 to i32
  %c6078 = zext i32 %c6077 to i64
  %t6079 = mul i64 %c6075, %c6078
  %r6080.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6080 = load i64, ptr %r6080.p, align 8, !alias.scope !3, !noalias !4
  %t6081 = add i64 %r6080, %t6079
  %wp6082 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6081, ptr %wp6082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117404 word 0xf9585d6c
  %r6083.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6083 = load i64, ptr %r6083.p, align 8, !alias.scope !3, !noalias !4
  %t6084 = add i64 %r6083, 12472
  %gmp6085 = inttoptr i64 %t6084 to ptr
  %gml6086 = load i64, ptr %gmp6085, align 1, !alias.scope !4, !noalias !3
  %wp6087 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6086, ptr %wp6087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117408 word 0xf958596b
  %r6088.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6088 = load i64, ptr %r6088.p, align 8, !alias.scope !3, !noalias !4
  %t6089 = add i64 %r6088, 12464
  %gmp6090 = inttoptr i64 %t6089 to ptr
  %gml6091 = load i64, ptr %gmp6090, align 1, !alias.scope !4, !noalias !3
  %wp6092 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6091, ptr %wp6092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011740c word 0xa900312b
  %r6093.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6093 = load i64, ptr %r6093.p, align 8, !alias.scope !3, !noalias !4
  %t6094 = add i64 %r6093, 8
  %r6095.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6095 = load i64, ptr %r6095.p, align 8, !alias.scope !3, !noalias !4
  %gmp6096 = inttoptr i64 %r6093 to ptr
  store i64 %r6095, ptr %gmp6096, align 1, !alias.scope !4, !noalias !3
  %r6097.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6097 = load i64, ptr %r6097.p, align 8, !alias.scope !3, !noalias !4
  %gmp6098 = inttoptr i64 %t6094 to ptr
  store i64 %r6097, ptr %gmp6098, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117410 word 0xb94009c9
  %r6099.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6099 = load i64, ptr %r6099.p, align 8, !alias.scope !3, !noalias !4
  %t6100 = add i64 %r6099, 8
  %gmp6101 = inttoptr i64 %t6100 to ptr
  %gml6102 = load i32, ptr %gmp6101, align 1, !alias.scope !4, !noalias !3
  %c6103 = zext i32 %gml6102 to i64
  %wp6104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6103, ptr %wp6104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117414 word 0xf94009cb
  %r6105.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6105 = load i64, ptr %r6105.p, align 8, !alias.scope !3, !noalias !4
  %t6106 = add i64 %r6105, 16
  %gmp6107 = inttoptr i64 %t6106 to ptr
  %gml6108 = load i64, ptr %gmp6107, align 1, !alias.scope !4, !noalias !3
  %wp6109 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6108, ptr %wp6109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117418 word 0x6b08013f
  %r6110.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6110 = load i64, ptr %r6110.p, align 8, !alias.scope !3, !noalias !4
  %c6111 = trunc i64 %r6110 to i32
  %r6112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6112 = load i64, ptr %r6112.p, align 8, !alias.scope !3, !noalias !4
  %c6113 = trunc i64 %r6112 to i32
  %t6114 = sub i32 %c6111, %c6113
  %fn6115 = icmp slt i32 %t6114, 0
  %fz6116 = icmp eq i32 %t6114, 0
  %fc6117 = icmp uge i32 %c6111, %c6113
  %fx16118 = xor i32 %c6111, %c6113
  %fx26119 = xor i32 %c6111, %t6114
  %fva6120 = and i32 %fx16118, %fx26119
  %fv6121 = icmp slt i32 %fva6120, 0
  %nz6122 = zext i1 %fn6115 to i64
  %zz6123 = zext i1 %fz6116 to i64
  %cz6124 = zext i1 %fc6117 to i64
  %vz6125 = zext i1 %fv6121 to i64
  %ns6126 = shl i64 %nz6122, 31
  %zs6127 = shl i64 %zz6123, 30
  %cs6128 = shl i64 %cz6124, 29
  %vs6129 = shl i64 %vz6125, 28
  %nzor6130 = or i64 %ns6126, %zs6127
  %cvor6131 = or i64 %cs6128, %vs6129
  %nzcv6132 = or i64 %nzor6130, %cvor6131
  %wp6133 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6132, ptr %wp6133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011741c word 0x9a9f8108
  %r6134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6134 = load i64, ptr %r6134.p, align 8, !alias.scope !3, !noalias !4
  %r6135.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6135 = load i64, ptr %r6135.p, align 8, !alias.scope !3, !noalias !4
  %fsh6137 = lshr i64 %r6135, 29
  %ftr6138 = trunc i64 %fsh6137 to i1
  %fsh6139 = lshr i64 %r6135, 30
  %ftr6140 = trunc i64 %fsh6139 to i1
  %fnz6141 = xor i1 %ftr6140, true
  %cond6136 = and i1 %ftr6138, %fnz6141
  %sel6142 = select i1 %cond6136, i64 %r6134, i64 0
  %wp6143 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel6142, ptr %wp6143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117420 word 0x9baa2d08
  %r6144.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6144 = load i64, ptr %r6144.p, align 8, !alias.scope !3, !noalias !4
  %c6145 = trunc i64 %r6144 to i32
  %c6146 = zext i32 %c6145 to i64
  %r6147.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6147 = load i64, ptr %r6147.p, align 8, !alias.scope !3, !noalias !4
  %c6148 = trunc i64 %r6147 to i32
  %c6149 = zext i32 %c6148 to i64
  %t6150 = mul i64 %c6146, %c6149
  %r6151.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6151 = load i64, ptr %r6151.p, align 8, !alias.scope !3, !noalias !4
  %t6152 = add i64 %r6151, %t6150
  %wp6153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6152, ptr %wp6153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117424 word 0xf9599d09
  %r6154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6154 = load i64, ptr %r6154.p, align 8, !alias.scope !3, !noalias !4
  %t6155 = add i64 %r6154, 13112
  %gmp6156 = inttoptr i64 %t6155 to ptr
  %gml6157 = load i64, ptr %gmp6156, align 1, !alias.scope !4, !noalias !3
  %wp6158 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6157, ptr %wp6158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117428 word 0xf959990a
  %r6159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6159 = load i64, ptr %r6159.p, align 8, !alias.scope !3, !noalias !4
  %t6160 = add i64 %r6159, 13104
  %gmp6161 = inttoptr i64 %t6160 to ptr
  %gml6162 = load i64, ptr %gmp6161, align 1, !alias.scope !4, !noalias !3
  %wp6163 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6162, ptr %wp6163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011742c word 0xa900274a
  %r6164.p = getelementptr inbounds i8, ptr %c, i64 208
  %r6164 = load i64, ptr %r6164.p, align 8, !alias.scope !3, !noalias !4
  %t6165 = add i64 %r6164, 8
  %r6166.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6166 = load i64, ptr %r6166.p, align 8, !alias.scope !3, !noalias !4
  %gmp6167 = inttoptr i64 %r6164 to ptr
  store i64 %r6166, ptr %gmp6167, align 1, !alias.scope !4, !noalias !3
  %r6168.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6168 = load i64, ptr %r6168.p, align 8, !alias.scope !3, !noalias !4
  %gmp6169 = inttoptr i64 %t6165 to ptr
  store i64 %r6168, ptr %gmp6169, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117430 word 0xb9734909
  %r6170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6170 = load i64, ptr %r6170.p, align 8, !alias.scope !3, !noalias !4
  %t6171 = add i64 %r6170, 13128
  %gmp6172 = inttoptr i64 %t6171 to ptr
  %gml6173 = load i32, ptr %gmp6172, align 1, !alias.scope !4, !noalias !3
  %c6174 = zext i32 %gml6173 to i64
  %wp6175 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6174, ptr %wp6175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117434 word 0xf959a108
  %r6176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6176 = load i64, ptr %r6176.p, align 8, !alias.scope !3, !noalias !4
  %t6177 = add i64 %r6176, 13120
  %gmp6178 = inttoptr i64 %t6177 to ptr
  %gml6179 = load i64, ptr %gmp6178, align 1, !alias.scope !4, !noalias !3
  %wp6180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6179, ptr %wp6180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117438 word 0xf9000328
  %r6181.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6181 = load i64, ptr %r6181.p, align 8, !alias.scope !3, !noalias !4
  %r6182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6182 = load i64, ptr %r6182.p, align 8, !alias.scope !3, !noalias !4
  %gmp6183 = inttoptr i64 %r6181 to ptr
  store i64 %r6182, ptr %gmp6183, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011743c word 0xb9000b29
  %r6184.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6184 = load i64, ptr %r6184.p, align 8, !alias.scope !3, !noalias !4
  %t6185 = add i64 %r6184, 8
  %r6186.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6186 = load i64, ptr %r6186.p, align 8, !alias.scope !3, !noalias !4
  %c6187 = trunc i64 %r6186 to i32
  %gmp6188 = inttoptr i64 %t6185 to ptr
  store i32 %c6187, ptr %gmp6188, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117440 word 0xb94045c8
  %r6189.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6189 = load i64, ptr %r6189.p, align 8, !alias.scope !3, !noalias !4
  %t6190 = add i64 %r6189, 68
  %gmp6191 = inttoptr i64 %t6190 to ptr
  %gml6192 = load i32, ptr %gmp6191, align 1, !alias.scope !4, !noalias !3
  %c6193 = zext i32 %gml6192 to i64
  %wp6194 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6193, ptr %wp6194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117444 word 0xb94031c9
  %r6195.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6195 = load i64, ptr %r6195.p, align 8, !alias.scope !3, !noalias !4
  %t6196 = add i64 %r6195, 48
  %gmp6197 = inttoptr i64 %t6196 to ptr
  %gml6198 = load i32, ptr %gmp6197, align 1, !alias.scope !4, !noalias !3
  %c6199 = zext i32 %gml6198 to i64
  %wp6200 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6199, ptr %wp6200, align 8, !alias.scope !3, !noalias !4
  br label %L_800117448
L_800117448:
  ; @pc 0x800117448 word 0x3902c3e8
  %r6201.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6201 = load i64, ptr %r6201.p, align 8, !alias.scope !3, !noalias !4
  %t6202 = add i64 %r6201, 176
  %r6203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6203 = load i64, ptr %r6203.p, align 8, !alias.scope !3, !noalias !4
  %c6204 = trunc i64 %r6203 to i32
  %c6205 = trunc i32 %c6204 to i8
  %gmp6206 = inttoptr i64 %t6202 to ptr
  store i8 %c6205, ptr %gmp6206, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011744c word 0xb900b7ff
  %r6207.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6207 = load i64, ptr %r6207.p, align 8, !alias.scope !3, !noalias !4
  %t6208 = add i64 %r6207, 180
  %gmp6209 = inttoptr i64 %t6208 to ptr
  store i32 0, ptr %gmp6209, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117450 word 0xb80b131f
  %r6210.p = getelementptr inbounds i8, ptr %c, i64 192
  %r6210 = load i64, ptr %r6210.p, align 8, !alias.scope !3, !noalias !4
  %t6211 = add i64 %r6210, 177
  %gmp6212 = inttoptr i64 %t6211 to ptr
  store i32 0, ptr %gmp6212, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117454 word 0x3902e3e9
  %r6213.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6213 = load i64, ptr %r6213.p, align 8, !alias.scope !3, !noalias !4
  %t6214 = add i64 %r6213, 184
  %r6215.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6215 = load i64, ptr %r6215.p, align 8, !alias.scope !3, !noalias !4
  %c6216 = trunc i64 %r6215 to i32
  %c6217 = trunc i32 %c6216 to i8
  %gmp6218 = inttoptr i64 %t6214 to ptr
  store i8 %c6217, ptr %gmp6218, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117458 word 0x17fffedf
  br label %L_800116fd4
L_80011745c:
  ; @pc 0x80011745c word 0x0b110a22
  %r6219.p = getelementptr inbounds i8, ptr %c, i64 136
  %r6219 = load i64, ptr %r6219.p, align 8, !alias.scope !3, !noalias !4
  %c6220 = trunc i64 %r6219 to i32
  %r6221.p = getelementptr inbounds i8, ptr %c, i64 136
  %r6221 = load i64, ptr %r6221.p, align 8, !alias.scope !3, !noalias !4
  %c6222 = trunc i64 %r6221 to i32
  %t6223 = shl i32 %c6222, 2
  %t6224 = add i32 %c6220, %t6223
  %c6225 = zext i32 %t6224 to i64
  %wp6226 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6225, ptr %wp6226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117460 word 0x531f7842
  %r6227.p = getelementptr inbounds i8, ptr %c, i64 16
  %r6227 = load i64, ptr %r6227.p, align 8, !alias.scope !3, !noalias !4
  %c6228 = trunc i64 %r6227 to i32
  %ror6229 = call i32 @llvm.fshr.i32(i32 %c6228, i32 %c6228, i32 31)
  %t6230 = and i32 %ror6229, -2
  %c6231 = zext i32 %t6230 to i64
  %wp6232 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6231, ptr %wp6232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117464 word 0x17ffff3b
  br label %L_800117150
L_800117468:
  ; @pc 0x800117468 word 0x9bab254d
  %r6233.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6233 = load i64, ptr %r6233.p, align 8, !alias.scope !3, !noalias !4
  %c6234 = trunc i64 %r6233 to i32
  %c6235 = zext i32 %c6234 to i64
  %r6236.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6236 = load i64, ptr %r6236.p, align 8, !alias.scope !3, !noalias !4
  %c6237 = trunc i64 %r6236 to i32
  %c6238 = zext i32 %c6237 to i64
  %t6239 = mul i64 %c6235, %c6238
  %r6240.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6240 = load i64, ptr %r6240.p, align 8, !alias.scope !3, !noalias !4
  %t6241 = add i64 %r6240, %t6239
  %wp6242 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6241, ptr %wp6242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011746c word 0x5285c00c
  %c6243 = zext i32 11776 to i64
  %wp6244 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6243, ptr %wp6244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117470 word 0x5285c08a
  %c6245 = zext i32 11780 to i64
  %wp6246 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6245, ptr %wp6246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117474 word 0x5285c10b
  %c6247 = zext i32 11784 to i64
  %wp6248 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6247, ptr %wp6248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117478 word 0x8b0c01a9
  %r6249.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6249 = load i64, ptr %r6249.p, align 8, !alias.scope !3, !noalias !4
  %r6250.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6250 = load i64, ptr %r6250.p, align 8, !alias.scope !3, !noalias !4
  %t6251 = add i64 %r6249, %r6250
  %wp6252 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6251, ptr %wp6252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011747c word 0x5285c18c
  %c6253 = zext i32 11788 to i64
  %wp6254 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6253, ptr %wp6254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117480 word 0x8b0a01aa
  %r6255.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6255 = load i64, ptr %r6255.p, align 8, !alias.scope !3, !noalias !4
  %r6256.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6256 = load i64, ptr %r6256.p, align 8, !alias.scope !3, !noalias !4
  %t6257 = add i64 %r6255, %r6256
  %wp6258 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6257, ptr %wp6258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117484 word 0x8b0b01ab
  %r6259.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6259 = load i64, ptr %r6259.p, align 8, !alias.scope !3, !noalias !4
  %r6260.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6260 = load i64, ptr %r6260.p, align 8, !alias.scope !3, !noalias !4
  %t6261 = add i64 %r6259, %r6260
  %wp6262 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6261, ptr %wp6262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117488 word 0x8b0c01ac
  %r6263.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6263 = load i64, ptr %r6263.p, align 8, !alias.scope !3, !noalias !4
  %r6264.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6264 = load i64, ptr %r6264.p, align 8, !alias.scope !3, !noalias !4
  %t6265 = add i64 %r6263, %r6264
  %wp6266 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6265, ptr %wp6266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011748c word 0x17ffff80
  br label %L_80011728c
L_800117490:
  ; @pc 0x800117490 word 0xf958412a
  %r6267.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6267 = load i64, ptr %r6267.p, align 8, !alias.scope !3, !noalias !4
  %t6268 = add i64 %r6267, 12416
  %gmp6269 = inttoptr i64 %t6268 to ptr
  %gml6270 = load i64, ptr %gmp6269, align 1, !alias.scope !4, !noalias !3
  %wp6271 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6270, ptr %wp6271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117494 word 0xf958452c
  %r6272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6272 = load i64, ptr %r6272.p, align 8, !alias.scope !3, !noalias !4
  %t6273 = add i64 %r6272, 12424
  %gmp6274 = inttoptr i64 %t6273 to ptr
  %gml6275 = load i64, ptr %gmp6274, align 1, !alias.scope !4, !noalias !3
  %wp6276 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6275, ptr %wp6276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117498 word 0xa900334a
  %r6277.p = getelementptr inbounds i8, ptr %c, i64 208
  %r6277 = load i64, ptr %r6277.p, align 8, !alias.scope !3, !noalias !4
  %t6278 = add i64 %r6277, 8
  %r6279.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6279 = load i64, ptr %r6279.p, align 8, !alias.scope !3, !noalias !4
  %gmp6280 = inttoptr i64 %r6277 to ptr
  store i64 %r6279, ptr %gmp6280, align 1, !alias.scope !4, !noalias !3
  %r6281.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6281 = load i64, ptr %r6281.p, align 8, !alias.scope !3, !noalias !4
  %gmp6282 = inttoptr i64 %t6278 to ptr
  store i64 %r6281, ptr %gmp6282, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011749c word 0xf958492a
  %r6283.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6283 = load i64, ptr %r6283.p, align 8, !alias.scope !3, !noalias !4
  %t6284 = add i64 %r6283, 12432
  %gmp6285 = inttoptr i64 %t6284 to ptr
  %gml6286 = load i64, ptr %gmp6285, align 1, !alias.scope !4, !noalias !3
  %wp6287 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6286, ptr %wp6287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174a0 word 0xb9709929
  %r6288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6288 = load i64, ptr %r6288.p, align 8, !alias.scope !3, !noalias !4
  %t6289 = add i64 %r6288, 12440
  %gmp6290 = inttoptr i64 %t6289 to ptr
  %gml6291 = load i32, ptr %gmp6290, align 1, !alias.scope !4, !noalias !3
  %c6292 = zext i32 %gml6291 to i64
  %wp6293 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6292, ptr %wp6293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174a4 word 0xb9000b29
  %r6294.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6294 = load i64, ptr %r6294.p, align 8, !alias.scope !3, !noalias !4
  %t6295 = add i64 %r6294, 8
  %r6296.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6296 = load i64, ptr %r6296.p, align 8, !alias.scope !3, !noalias !4
  %c6297 = trunc i64 %r6296 to i32
  %gmp6298 = inttoptr i64 %t6295 to ptr
  store i32 %c6297, ptr %gmp6298, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001174a8 word 0xf900032a
  %r6299.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6299 = load i64, ptr %r6299.p, align 8, !alias.scope !3, !noalias !4
  %r6300.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6300 = load i64, ptr %r6300.p, align 8, !alias.scope !3, !noalias !4
  %gmp6301 = inttoptr i64 %r6299 to ptr
  store i64 %r6300, ptr %gmp6301, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001174ac word 0xb9400ac9
  %r6302.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6302 = load i64, ptr %r6302.p, align 8, !alias.scope !3, !noalias !4
  %t6303 = add i64 %r6302, 8
  %gmp6304 = inttoptr i64 %t6303 to ptr
  %gml6305 = load i32, ptr %gmp6304, align 1, !alias.scope !4, !noalias !3
  %c6306 = zext i32 %gml6305 to i64
  %wp6307 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6306, ptr %wp6307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174b0 word 0xf9400aca
  %r6308.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6308 = load i64, ptr %r6308.p, align 8, !alias.scope !3, !noalias !4
  %t6309 = add i64 %r6308, 16
  %gmp6310 = inttoptr i64 %t6309 to ptr
  %gml6311 = load i64, ptr %gmp6310, align 1, !alias.scope !4, !noalias !3
  %wp6312 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6311, ptr %wp6312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174b4 word 0x6b08013f
  %r6313.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6313 = load i64, ptr %r6313.p, align 8, !alias.scope !3, !noalias !4
  %c6314 = trunc i64 %r6313 to i32
  %r6315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6315 = load i64, ptr %r6315.p, align 8, !alias.scope !3, !noalias !4
  %c6316 = trunc i64 %r6315 to i32
  %t6317 = sub i32 %c6314, %c6316
  %fn6318 = icmp slt i32 %t6317, 0
  %fz6319 = icmp eq i32 %t6317, 0
  %fc6320 = icmp uge i32 %c6314, %c6316
  %fx16321 = xor i32 %c6314, %c6316
  %fx26322 = xor i32 %c6314, %t6317
  %fva6323 = and i32 %fx16321, %fx26322
  %fv6324 = icmp slt i32 %fva6323, 0
  %nz6325 = zext i1 %fn6318 to i64
  %zz6326 = zext i1 %fz6319 to i64
  %cz6327 = zext i1 %fc6320 to i64
  %vz6328 = zext i1 %fv6324 to i64
  %ns6329 = shl i64 %nz6325, 31
  %zs6330 = shl i64 %zz6326, 30
  %cs6331 = shl i64 %cz6327, 29
  %vs6332 = shl i64 %vz6328, 28
  %nzor6333 = or i64 %ns6329, %zs6330
  %cvor6334 = or i64 %cs6331, %vs6332
  %nzcv6335 = or i64 %nzor6333, %cvor6334
  %wp6336 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6335, ptr %wp6336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174b8 word 0x5285be09
  %c6337 = zext i32 11760 to i64
  %wp6338 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6337, ptr %wp6338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174bc word 0x9a9f8108
  %r6339.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6339 = load i64, ptr %r6339.p, align 8, !alias.scope !3, !noalias !4
  %r6340.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6340 = load i64, ptr %r6340.p, align 8, !alias.scope !3, !noalias !4
  %fsh6342 = lshr i64 %r6340, 29
  %ftr6343 = trunc i64 %fsh6342 to i1
  %fsh6344 = lshr i64 %r6340, 30
  %ftr6345 = trunc i64 %fsh6344 to i1
  %fnz6346 = xor i1 %ftr6345, true
  %cond6341 = and i1 %ftr6343, %fnz6346
  %sel6347 = select i1 %cond6341, i64 %r6339, i64 0
  %wp6348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel6347, ptr %wp6348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174c0 word 0x9bab2908
  %r6349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6349 = load i64, ptr %r6349.p, align 8, !alias.scope !3, !noalias !4
  %c6350 = trunc i64 %r6349 to i32
  %c6351 = zext i32 %c6350 to i64
  %r6352.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6352 = load i64, ptr %r6352.p, align 8, !alias.scope !3, !noalias !4
  %c6353 = trunc i64 %r6352 to i32
  %c6354 = zext i32 %c6353 to i64
  %t6355 = mul i64 %c6351, %c6354
  %r6356.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6356 = load i64, ptr %r6356.p, align 8, !alias.scope !3, !noalias !4
  %t6357 = add i64 %r6356, %t6355
  %wp6358 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6357, ptr %wp6358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174c4 word 0x8b090108
  %r6359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6359 = load i64, ptr %r6359.p, align 8, !alias.scope !3, !noalias !4
  %r6360.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6360 = load i64, ptr %r6360.p, align 8, !alias.scope !3, !noalias !4
  %t6361 = add i64 %r6359, %r6360
  %wp6362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6361, ptr %wp6362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174c8 word 0x17ffff8a
  br label %L_8001172f0
L_8001174cc:
  ; @pc 0x8001174cc word 0xaa1f03e1
  %t6363 = or i64 0, 0
  %wp6364 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6363, ptr %wp6364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174d0 word 0x17ffff0d
  br label %L_800117104
L_8001174d4:
  ; @pc 0x8001174d4 word 0x52a20009
  %c6365 = zext i32 268435456 to i64
  %wp6366 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6365, ptr %wp6366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174d8 word 0xd001576d
  %wp6367 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405896192, ptr %wp6367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174dc word 0x9136a9ad
  %r6368.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6368 = load i64, ptr %r6368.p, align 8, !alias.scope !3, !noalias !4
  %t6369 = add i64 %r6368, 3498
  %wp6370 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6369, ptr %wp6370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174e0 word 0x1400000c
  br label %L_800117510
L_8001174e4:
  ; @pc 0x8001174e4 word 0x52a20009
  %c6371 = zext i32 268435456 to i64
  %wp6372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6371, ptr %wp6372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174e8 word 0xf0015c4d
  %wp6373 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406539264, ptr %wp6373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174ec word 0x913b55ad
  %r6374.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6374 = load i64, ptr %r6374.p, align 8, !alias.scope !3, !noalias !4
  %t6375 = add i64 %r6374, 3797
  %wp6376 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6375, ptr %wp6376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174f0 word 0x14000008
  br label %L_800117510
L_8001174f4:
  ; @pc 0x8001174f4 word 0x52a20009
  %c6377 = zext i32 268435456 to i64
  %wp6378 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6377, ptr %wp6378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174f8 word 0xf001582d
  %wp6379 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34405998592, ptr %wp6379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001174fc word 0x9127ddad
  %r6380.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6380 = load i64, ptr %r6380.p, align 8, !alias.scope !3, !noalias !4
  %t6381 = add i64 %r6380, 2551
  %wp6382 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6381, ptr %wp6382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117500 word 0x14000004
  br label %L_800117510
L_800117504:
  ; @pc 0x800117504 word 0x52a20009
  %c6383 = zext i32 268435456 to i64
  %wp6384 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6383, ptr %wp6384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117508 word 0xf0015c8d
  %wp6385 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406572032, ptr %wp6385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011750c word 0x913455ad
  %r6386.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6386 = load i64, ptr %r6386.p, align 8, !alias.scope !3, !noalias !4
  %t6387 = add i64 %r6386, 3349
  %wp6388 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6387, ptr %wp6388, align 8, !alias.scope !3, !noalias !4
  br label %L_800117510
L_800117510:
  ; @pc 0x800117510 word 0xb90003e9
  %r6389.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6389 = load i64, ptr %r6389.p, align 8, !alias.scope !3, !noalias !4
  %r6390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6390 = load i64, ptr %r6390.p, align 8, !alias.scope !3, !noalias !4
  %c6391 = trunc i64 %r6390 to i32
  %gmp6392 = inttoptr i64 %r6389 to ptr
  store i32 %c6391, ptr %gmp6392, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117514 word 0xd28000c9
  %wp6393 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 6, ptr %wp6393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117518 word 0xf958fa80
  %r6394.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6394 = load i64, ptr %r6394.p, align 8, !alias.scope !3, !noalias !4
  %t6395 = add i64 %r6394, 12784
  %gmp6396 = inttoptr i64 %t6395 to ptr
  %gml6397 = load i64, ptr %gmp6396, align 1, !alias.scope !4, !noalias !3
  %wp6398 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6397, ptr %wp6398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011751c word 0xd2c0006f
  %wp6399 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 12884901888, ptr %wp6399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117520 word 0xf2c00069
  %r6400.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6400 = load i64, ptr %r6400.p, align 8, !alias.scope !3, !noalias !4
  %t6401 = and i64 %r6400, -281470681743361
  %t6402 = or i64 %t6401, 12884901888
  %wp6403 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6402, ptr %wp6403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117524 word 0xf80143ef
  %r6404.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6404 = load i64, ptr %r6404.p, align 8, !alias.scope !3, !noalias !4
  %t6405 = add i64 %r6404, 20
  %r6406.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6406 = load i64, ptr %r6406.p, align 8, !alias.scope !3, !noalias !4
  %gmp6407 = inttoptr i64 %t6405 to ptr
  store i64 %r6406, ptr %gmp6407, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117528 word 0x5280002f
  %c6408 = zext i32 1 to i64
  %wp6409 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c6408, ptr %wp6409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011752c word 0xf80043e9
  %r6410.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6410 = load i64, ptr %r6410.p, align 8, !alias.scope !3, !noalias !4
  %t6411 = add i64 %r6410, 4
  %r6412.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6412 = load i64, ptr %r6412.p, align 8, !alias.scope !3, !noalias !4
  %gmp6413 = inttoptr i64 %t6411 to ptr
  store i64 %r6412, ptr %gmp6413, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117530 word 0xd2dfffe9
  %wp6414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 281470681743360, ptr %wp6414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117534 word 0xf802c3ee
  %r6415.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6415 = load i64, ptr %r6415.p, align 8, !alias.scope !3, !noalias !4
  %t6416 = add i64 %r6415, 44
  %r6417.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6417 = load i64, ptr %r6417.p, align 8, !alias.scope !3, !noalias !4
  %gmp6418 = inttoptr i64 %t6416 to ptr
  store i64 %r6417, ptr %gmp6418, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117538 word 0xf800c3e9
  %r6419.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6419 = load i64, ptr %r6419.p, align 8, !alias.scope !3, !noalias !4
  %t6420 = add i64 %r6419, 12
  %r6421.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6421 = load i64, ptr %r6421.p, align 8, !alias.scope !3, !noalias !4
  %gmp6422 = inttoptr i64 %t6420 to ptr
  store i64 %r6421, ptr %gmp6422, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011753c word 0x12800009
  %c6423 = zext i32 -1 to i64
  %wp6424 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6423, ptr %wp6424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117540 word 0xb2087bee
  %t6425 = or i64 0, -36028797027352577
  %wp6426 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6425, ptr %wp6426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117544 word 0xf801c3e9
  %r6427.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6427 = load i64, ptr %r6427.p, align 8, !alias.scope !3, !noalias !4
  %t6428 = add i64 %r6427, 28
  %r6429.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6429 = load i64, ptr %r6429.p, align 8, !alias.scope !3, !noalias !4
  %gmp6430 = inttoptr i64 %t6428 to ptr
  store i64 %r6429, ptr %gmp6430, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117548 word 0xb2091be9
  %t6431 = or i64 0, 4575657222473777152
  %wp6432 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6431, ptr %wp6432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011754c word 0x9100418c
  %r6433.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6433 = load i64, ptr %r6433.p, align 8, !alias.scope !3, !noalias !4
  %t6434 = add i64 %r6433, 16
  %wp6435 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6434, ptr %wp6435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117550 word 0xa903a7e9
  %r6436.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6436 = load i64, ptr %r6436.p, align 8, !alias.scope !3, !noalias !4
  %t6437 = add i64 %r6436, 56
  %t6438 = add i64 %t6437, 8
  %r6439.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6439 = load i64, ptr %r6439.p, align 8, !alias.scope !3, !noalias !4
  %gmp6440 = inttoptr i64 %t6437 to ptr
  store i64 %r6439, ptr %gmp6440, align 1, !alias.scope !4, !noalias !3
  %r6441.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6441 = load i64, ptr %r6441.p, align 8, !alias.scope !3, !noalias !4
  %gmp6442 = inttoptr i64 %t6438 to ptr
  store i64 %r6441, ptr %gmp6442, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117554 word 0xd2e7f009
  %wp6443 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 4575657221408423936, ptr %wp6443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117558 word 0x9100414a
  %r6444.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6444 = load i64, ptr %r6444.p, align 8, !alias.scope !3, !noalias !4
  %t6445 = add i64 %r6444, 16
  %wp6446 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6445, ptr %wp6446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011755c word 0xf80243ef
  %r6447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6447 = load i64, ptr %r6447.p, align 8, !alias.scope !3, !noalias !4
  %t6448 = add i64 %r6447, 36
  %r6449.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6449 = load i64, ptr %r6449.p, align 8, !alias.scope !3, !noalias !4
  %gmp6450 = inttoptr i64 %t6448 to ptr
  store i64 %r6449, ptr %gmp6450, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117560 word 0xb90037ff
  %r6451.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6451 = load i64, ptr %r6451.p, align 8, !alias.scope !3, !noalias !4
  %t6452 = add i64 %r6451, 52
  %gmp6453 = inttoptr i64 %t6452 to ptr
  store i32 0, ptr %gmp6453, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117564 word 0xf80a4309
  %r6454.p = getelementptr inbounds i8, ptr %c, i64 192
  %r6454 = load i64, ptr %r6454.p, align 8, !alias.scope !3, !noalias !4
  %t6455 = add i64 %r6454, 164
  %r6456.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6456 = load i64, ptr %r6456.p, align 8, !alias.scope !3, !noalias !4
  %gmp6457 = inttoptr i64 %t6455 to ptr
  store i64 %r6456, ptr %gmp6457, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117568 word 0xf9004fee
  %r6458.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6458 = load i64, ptr %r6458.p, align 8, !alias.scope !3, !noalias !4
  %t6459 = add i64 %r6458, 152
  %r6460.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6460 = load i64, ptr %r6460.p, align 8, !alias.scope !3, !noalias !4
  %gmp6461 = inttoptr i64 %t6459 to ptr
  store i64 %r6460, ptr %gmp6461, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011756c word 0x3900237f
  %r6462.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6462 = load i64, ptr %r6462.p, align 8, !alias.scope !3, !noalias !4
  %t6463 = add i64 %r6462, 8
  %c6464 = trunc i32 0 to i8
  %gmp6465 = inttoptr i64 %t6463 to ptr
  store i8 %c6464, ptr %gmp6465, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117570 word 0xf900037f
  %r6466.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6466 = load i64, ptr %r6466.p, align 8, !alias.scope !3, !noalias !4
  %gmp6467 = inttoptr i64 %r6466 to ptr
  store i64 0, ptr %gmp6467, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117574 word 0xb900a3e8
  %r6468.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6468 = load i64, ptr %r6468.p, align 8, !alias.scope !3, !noalias !4
  %t6469 = add i64 %r6468, 160
  %r6470.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6470 = load i64, ptr %r6470.p, align 8, !alias.scope !3, !noalias !4
  %c6471 = trunc i64 %r6470 to i32
  %gmp6472 = inttoptr i64 %t6469 to ptr
  store i32 %c6471, ptr %gmp6472, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117578 word 0xb900bfef
  %r6473.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6473 = load i64, ptr %r6473.p, align 8, !alias.scope !3, !noalias !4
  %t6474 = add i64 %r6473, 188
  %r6475.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6475 = load i64, ptr %r6475.p, align 8, !alias.scope !3, !noalias !4
  %c6476 = trunc i64 %r6475 to i32
  %gmp6477 = inttoptr i64 %t6474 to ptr
  store i32 %c6476, ptr %gmp6477, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011757c word 0xa907bbeb
  %r6478.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6478 = load i64, ptr %r6478.p, align 8, !alias.scope !3, !noalias !4
  %t6479 = add i64 %r6478, 120
  %t6480 = add i64 %t6479, 8
  %r6481.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6481 = load i64, ptr %r6481.p, align 8, !alias.scope !3, !noalias !4
  %gmp6482 = inttoptr i64 %t6479 to ptr
  store i64 %r6481, ptr %gmp6482, align 1, !alias.scope !4, !noalias !3
  %r6483.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6483 = load i64, ptr %r6483.p, align 8, !alias.scope !3, !noalias !4
  %gmp6484 = inttoptr i64 %t6480 to ptr
  store i64 %r6483, ptr %gmp6484, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117580 word 0xa908afec
  %r6485.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6485 = load i64, ptr %r6485.p, align 8, !alias.scope !3, !noalias !4
  %t6486 = add i64 %r6485, 136
  %t6487 = add i64 %t6486, 8
  %r6488.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6488 = load i64, ptr %r6488.p, align 8, !alias.scope !3, !noalias !4
  %gmp6489 = inttoptr i64 %t6486 to ptr
  store i64 %r6488, ptr %gmp6489, align 1, !alias.scope !4, !noalias !3
  %r6490.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6490 = load i64, ptr %r6490.p, align 8, !alias.scope !3, !noalias !4
  %gmp6491 = inttoptr i64 %t6487 to ptr
  store i64 %r6490, ptr %gmp6491, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117584 word 0xa905ffff
  %r6492.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6492 = load i64, ptr %r6492.p, align 8, !alias.scope !3, !noalias !4
  %t6493 = add i64 %r6492, 88
  %t6494 = add i64 %t6493, 8
  %gmp6495 = inttoptr i64 %t6493 to ptr
  store i64 0, ptr %gmp6495, align 1, !alias.scope !4, !noalias !3
  %gmp6496 = inttoptr i64 %t6494 to ptr
  store i64 0, ptr %gmp6496, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117588 word 0xa906b7ff
  %r6497.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6497 = load i64, ptr %r6497.p, align 8, !alias.scope !3, !noalias !4
  %t6498 = add i64 %r6497, 104
  %t6499 = add i64 %t6498, 8
  %gmp6500 = inttoptr i64 %t6498 to ptr
  store i64 0, ptr %gmp6500, align 1, !alias.scope !4, !noalias !3
  %r6501.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6501 = load i64, ptr %r6501.p, align 8, !alias.scope !3, !noalias !4
  %gmp6502 = inttoptr i64 %t6499 to ptr
  store i64 %r6501, ptr %gmp6502, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011758c word 0xa904abff
  %r6503.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6503 = load i64, ptr %r6503.p, align 8, !alias.scope !3, !noalias !4
  %t6504 = add i64 %r6503, 72
  %t6505 = add i64 %t6504, 8
  %gmp6506 = inttoptr i64 %t6504 to ptr
  store i64 0, ptr %gmp6506, align 1, !alias.scope !4, !noalias !3
  %r6507.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6507 = load i64, ptr %r6507.p, align 8, !alias.scope !3, !noalias !4
  %gmp6508 = inttoptr i64 %t6505 to ptr
  store i64 %r6507, ptr %gmp6508, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117590 word 0xb4ffd220
  %r6509.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6509 = load i64, ptr %r6509.p, align 8, !alias.scope !3, !noalias !4
  %cmp6510 = icmp eq i64 %r6509, 0
  br i1 %cmp6510, label %L_800116fd4, label %L_800117594_ft
L_80011763c:
  ; @pc 0x80011763c word 0xaa1f03ea
  %t6723 = or i64 0, 0
  %wp6724 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6723, ptr %wp6724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117640 word 0x17fffb00
  br label %L_800116240
L_800117644:
  ; @pc 0x800117644 word 0x5283d608
  %c6725 = zext i32 7856 to i64
  %wp6726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6725, ptr %wp6726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117648 word 0x910003e1
  %r6727.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6727 = load i64, ptr %r6727.p, align 8, !alias.scope !3, !noalias !4
  %t6728 = add i64 %r6727, 0
  %wp6729 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6728, ptr %wp6729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011764c word 0xaa1303e2
  %r6730.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6730 = load i64, ptr %r6730.p, align 8, !alias.scope !3, !noalias !4
  %t6731 = or i64 0, %r6730
  %wp6732 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6731, ptr %wp6732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117650 word 0x8b080280
  %r6733.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6733 = load i64, ptr %r6733.p, align 8, !alias.scope !3, !noalias !4
  %r6734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6734 = load i64, ptr %r6734.p, align 8, !alias.scope !3, !noalias !4
  %t6735 = add i64 %r6733, %r6734
  %wp6736 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6735, ptr %wp6736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117654 word 0x52800023
  %c6737 = zext i32 1 to i64
  %wp6738 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6737, ptr %wp6738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117658 word 0x949cb586
  %wp6739 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360882780, ptr %wp6739, align 8, !alias.scope !3, !noalias !4
  call void @f_802844c70(ptr %c)
  ; @pc 0x80011765c word 0x17fffe5e
  br label %L_800116fd4
L_800117660:
  ; @pc 0x800117660 word 0x5283d608
  %c6740 = zext i32 7856 to i64
  %wp6741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6740, ptr %wp6741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117664 word 0x910003e1
  %r6742.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6742 = load i64, ptr %r6742.p, align 8, !alias.scope !3, !noalias !4
  %t6743 = add i64 %r6742, 0
  %wp6744 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6743, ptr %wp6744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117668 word 0xaa1303e2
  %r6745.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6745 = load i64, ptr %r6745.p, align 8, !alias.scope !3, !noalias !4
  %t6746 = or i64 0, %r6745
  %wp6747 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6746, ptr %wp6747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011766c word 0x8b080280
  %r6748.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6748 = load i64, ptr %r6748.p, align 8, !alias.scope !3, !noalias !4
  %r6749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6749 = load i64, ptr %r6749.p, align 8, !alias.scope !3, !noalias !4
  %t6750 = add i64 %r6748, %r6749
  %wp6751 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6750, ptr %wp6751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117670 word 0x2a1f03e3
  %t6752 = or i32 0, 0
  %c6753 = zext i32 %t6752 to i64
  %wp6754 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6753, ptr %wp6754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117674 word 0x949cb57f
  %wp6755 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360882808, ptr %wp6755, align 8, !alias.scope !3, !noalias !4
  call void @f_802844c70(ptr %c)
  ; @pc 0x800117678 word 0x17fffe57
  br label %L_800116fd4
L_80011767c:
  ; @pc 0x80011767c word 0x2a1f03eb
  %t6756 = or i32 0, 0
  %c6757 = zext i32 %t6756 to i64
  %wp6758 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6757, ptr %wp6758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117680 word 0x17fffe60
  br label %L_800117000
L_800117684:
  ; @pc 0x800117684 word 0x5283d608
  %c6759 = zext i32 7856 to i64
  %wp6760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6759, ptr %wp6760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117688 word 0x910003e1
  %r6761.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6761 = load i64, ptr %r6761.p, align 8, !alias.scope !3, !noalias !4
  %t6762 = add i64 %r6761, 0
  %wp6763 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6762, ptr %wp6763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011768c word 0xaa1303e2
  %r6764.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6764 = load i64, ptr %r6764.p, align 8, !alias.scope !3, !noalias !4
  %t6765 = or i64 0, %r6764
  %wp6766 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6765, ptr %wp6766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117690 word 0x8b080280
  %r6767.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6767 = load i64, ptr %r6767.p, align 8, !alias.scope !3, !noalias !4
  %r6768.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6768 = load i64, ptr %r6768.p, align 8, !alias.scope !3, !noalias !4
  %t6769 = add i64 %r6767, %r6768
  %wp6770 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6769, ptr %wp6770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117694 word 0x949cb5bc
  %wp6771 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360882840, ptr %wp6771, align 8, !alias.scope !3, !noalias !4
  call void @f_802844d84(ptr %c)
  ; @pc 0x800117698 word 0x17fffe4f
  br label %L_800116fd4
L_80011769c:
  ; @pc 0x80011769c word 0xd2800030
  %wp6772 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 1, ptr %wp6772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176a0 word 0x5280008f
  %c6773 = zext i32 4 to i64
  %wp6774 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c6773, ptr %wp6774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176a4 word 0xf94f668e
  %r6775.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6775 = load i64, ptr %r6775.p, align 8, !alias.scope !3, !noalias !4
  %t6776 = add i64 %r6775, 7880
  %gmp6777 = inttoptr i64 %t6776 to ptr
  %gml6778 = load i64, ptr %gmp6777, align 1, !alias.scope !4, !noalias !3
  %wp6779 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml6778, ptr %wp6779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176a8 word 0xf2e00810
  %r6780.p = getelementptr inbounds i8, ptr %c, i64 128
  %r6780 = load i64, ptr %r6780.p, align 8, !alias.scope !3, !noalias !4
  %t6781 = and i64 %r6780, 281474976710655
  %t6782 = or i64 %t6781, 18014398509481984
  %wp6783 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t6782, ptr %wp6783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176ac word 0xd2c00020
  %wp6784 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 4294967296, ptr %wp6784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176b0 word 0x3900237f
  %r6785.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6785 = load i64, ptr %r6785.p, align 8, !alias.scope !3, !noalias !4
  %t6786 = add i64 %r6785, 8
  %c6787 = trunc i32 0 to i8
  %gmp6788 = inttoptr i64 %t6786 to ptr
  store i8 %c6787, ptr %gmp6788, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176b4 word 0xa90043ef
  %r6789.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6789 = load i64, ptr %r6789.p, align 8, !alias.scope !3, !noalias !4
  %t6790 = add i64 %r6789, 8
  %r6791.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6791 = load i64, ptr %r6791.p, align 8, !alias.scope !3, !noalias !4
  %gmp6792 = inttoptr i64 %r6789 to ptr
  store i64 %r6791, ptr %gmp6792, align 1, !alias.scope !4, !noalias !3
  %r6793.p = getelementptr inbounds i8, ptr %c, i64 128
  %r6793 = load i64, ptr %r6793.p, align 8, !alias.scope !3, !noalias !4
  %gmp6794 = inttoptr i64 %t6790 to ptr
  store i64 %r6793, ptr %gmp6794, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176b8 word 0xb2607fef
  %t6795 = or i64 0, -4294967296
  %wp6796 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t6795, ptr %wp6796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176bc word 0xa9023fe0
  %r6797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6797 = load i64, ptr %r6797.p, align 8, !alias.scope !3, !noalias !4
  %t6798 = add i64 %r6797, 32
  %t6799 = add i64 %t6798, 8
  %r6800.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6800 = load i64, ptr %r6800.p, align 8, !alias.scope !3, !noalias !4
  %gmp6801 = inttoptr i64 %t6798 to ptr
  store i64 %r6800, ptr %gmp6801, align 1, !alias.scope !4, !noalias !3
  %r6802.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6802 = load i64, ptr %r6802.p, align 8, !alias.scope !3, !noalias !4
  %gmp6803 = inttoptr i64 %t6799 to ptr
  store i64 %r6802, ptr %gmp6803, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176c0 word 0xb2087bef
  %t6804 = or i64 0, -36028797027352577
  %wp6805 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t6804, ptr %wp6805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176c4 word 0x9100418c
  %r6806.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6806 = load i64, ptr %r6806.p, align 8, !alias.scope !3, !noalias !4
  %t6807 = add i64 %r6806, 16
  %wp6808 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6807, ptr %wp6808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176c8 word 0x929ffd12
  %wp6809 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 -65513, ptr %wp6809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176cc word 0xd0015e2d
  %wp6810 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34406780928, ptr %wp6810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176d0 word 0x9107bdad
  %r6811.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6811 = load i64, ptr %r6811.p, align 8, !alias.scope !3, !noalias !4
  %t6812 = add i64 %r6811, 495
  %wp6813 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6812, ptr %wp6813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176d4 word 0xa90833ef
  %r6814.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6814 = load i64, ptr %r6814.p, align 8, !alias.scope !3, !noalias !4
  %t6815 = add i64 %r6814, 128
  %t6816 = add i64 %t6815, 8
  %r6817.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6817 = load i64, ptr %r6817.p, align 8, !alias.scope !3, !noalias !4
  %gmp6818 = inttoptr i64 %t6815 to ptr
  store i64 %r6817, ptr %gmp6818, align 1, !alias.scope !4, !noalias !3
  %r6819.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6819 = load i64, ptr %r6819.p, align 8, !alias.scope !3, !noalias !4
  %gmp6820 = inttoptr i64 %t6816 to ptr
  store i64 %r6819, ptr %gmp6820, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176d8 word 0xd2e7f00c
  %wp6821 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 4575657221408423936, ptr %wp6821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176dc word 0x529ffff1
  %c6822 = zext i32 65535 to i64
  %wp6823 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c6822, ptr %wp6823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176e0 word 0xf2a00012
  %r6824.p = getelementptr inbounds i8, ptr %c, i64 144
  %r6824 = load i64, ptr %r6824.p, align 8, !alias.scope !3, !noalias !4
  %t6825 = and i64 %r6824, -4294901761
  %t6826 = or i64 %t6825, 0
  %wp6827 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t6826, ptr %wp6827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176e4 word 0x12800010
  %c6828 = zext i32 -1 to i64
  %wp6829 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c6828, ptr %wp6829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176e8 word 0xf80a430c
  %r6830.p = getelementptr inbounds i8, ptr %c, i64 192
  %r6830 = load i64, ptr %r6830.p, align 8, !alias.scope !3, !noalias !4
  %t6831 = add i64 %r6830, 164
  %r6832.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6832 = load i64, ptr %r6832.p, align 8, !alias.scope !3, !noalias !4
  %gmp6833 = inttoptr i64 %t6831 to ptr
  store i64 %r6832, ptr %gmp6833, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176ec word 0xb2091bec
  %t6834 = or i64 0, 4575657222473777152
  %wp6835 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6834, ptr %wp6835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176f0 word 0x9100414a
  %r6836.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6836 = load i64, ptr %r6836.p, align 8, !alias.scope !3, !noalias !4
  %t6837 = add i64 %r6836, 16
  %wp6838 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6837, ptr %wp6838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176f4 word 0xa9093feb
  %r6839.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6839 = load i64, ptr %r6839.p, align 8, !alias.scope !3, !noalias !4
  %t6840 = add i64 %r6839, 144
  %t6841 = add i64 %t6840, 8
  %r6842.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6842 = load i64, ptr %r6842.p, align 8, !alias.scope !3, !noalias !4
  %gmp6843 = inttoptr i64 %t6840 to ptr
  store i64 %r6842, ptr %gmp6843, align 1, !alias.scope !4, !noalias !3
  %r6844.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6844 = load i64, ptr %r6844.p, align 8, !alias.scope !3, !noalias !4
  %gmp6845 = inttoptr i64 %t6841 to ptr
  store i64 %r6844, ptr %gmp6845, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001176f8 word 0x5280006f
  %c6846 = zext i32 3 to i64
  %wp6847 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c6846, ptr %wp6847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001176fc word 0xf900037f
  %r6848.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6848 = load i64, ptr %r6848.p, align 8, !alias.scope !3, !noalias !4
  %gmp6849 = inttoptr i64 %r6848 to ptr
  store i64 0, ptr %gmp6849, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117700 word 0xb900a3e8
  %r6850.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6850 = load i64, ptr %r6850.p, align 8, !alias.scope !3, !noalias !4
  %t6851 = add i64 %r6850, 160
  %r6852.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6852 = load i64, ptr %r6852.p, align 8, !alias.scope !3, !noalias !4
  %c6853 = trunc i64 %r6852 to i32
  %gmp6854 = inttoptr i64 %t6851 to ptr
  store i32 %c6853, ptr %gmp6854, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117704 word 0x39402268
  %r6855.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6855 = load i64, ptr %r6855.p, align 8, !alias.scope !3, !noalias !4
  %t6856 = add i64 %r6855, 8
  %gmp6857 = inttoptr i64 %t6856 to ptr
  %gml6858 = load i8, ptr %gmp6857, align 1, !alias.scope !4, !noalias !3
  %c6859 = zext i8 %gml6858 to i64
  %wp6860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6859, ptr %wp6860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117708 word 0xb900bfef
  %r6861.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6861 = load i64, ptr %r6861.p, align 8, !alias.scope !3, !noalias !4
  %t6862 = add i64 %r6861, 188
  %r6863.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6863 = load i64, ptr %r6863.p, align 8, !alias.scope !3, !noalias !4
  %c6864 = trunc i64 %r6863 to i32
  %gmp6865 = inttoptr i64 %t6862 to ptr
  store i32 %c6864, ptr %gmp6865, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011770c word 0xa9014bf1
  %r6866.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6866 = load i64, ptr %r6866.p, align 8, !alias.scope !3, !noalias !4
  %t6867 = add i64 %r6866, 16
  %t6868 = add i64 %t6867, 8
  %r6869.p = getelementptr inbounds i8, ptr %c, i64 136
  %r6869 = load i64, ptr %r6869.p, align 8, !alias.scope !3, !noalias !4
  %gmp6870 = inttoptr i64 %t6867 to ptr
  store i64 %r6869, ptr %gmp6870, align 1, !alias.scope !4, !noalias !3
  %r6871.p = getelementptr inbounds i8, ptr %c, i64 144
  %r6871 = load i64, ptr %r6871.p, align 8, !alias.scope !3, !noalias !4
  %gmp6872 = inttoptr i64 %t6868 to ptr
  store i64 %r6871, ptr %gmp6872, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117710 word 0xa9067fff
  %r6873.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6873 = load i64, ptr %r6873.p, align 8, !alias.scope !3, !noalias !4
  %t6874 = add i64 %r6873, 96
  %t6875 = add i64 %t6874, 8
  %gmp6876 = inttoptr i64 %t6874 to ptr
  store i64 0, ptr %gmp6876, align 1, !alias.scope !4, !noalias !3
  %gmp6877 = inttoptr i64 %t6875 to ptr
  store i64 0, ptr %gmp6877, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117714 word 0xa90333f0
  %r6878.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6878 = load i64, ptr %r6878.p, align 8, !alias.scope !3, !noalias !4
  %t6879 = add i64 %r6878, 48
  %t6880 = add i64 %t6879, 8
  %r6881.p = getelementptr inbounds i8, ptr %c, i64 128
  %r6881 = load i64, ptr %r6881.p, align 8, !alias.scope !3, !noalias !4
  %gmp6882 = inttoptr i64 %t6879 to ptr
  store i64 %r6881, ptr %gmp6882, align 1, !alias.scope !4, !noalias !3
  %r6883.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6883 = load i64, ptr %r6883.p, align 8, !alias.scope !3, !noalias !4
  %gmp6884 = inttoptr i64 %t6880 to ptr
  store i64 %r6883, ptr %gmp6884, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117718 word 0xa9047fec
  %r6885.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6885 = load i64, ptr %r6885.p, align 8, !alias.scope !3, !noalias !4
  %t6886 = add i64 %r6885, 64
  %t6887 = add i64 %t6886, 8
  %r6888.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6888 = load i64, ptr %r6888.p, align 8, !alias.scope !3, !noalias !4
  %gmp6889 = inttoptr i64 %t6886 to ptr
  store i64 %r6888, ptr %gmp6889, align 1, !alias.scope !4, !noalias !3
  %gmp6890 = inttoptr i64 %t6887 to ptr
  store i64 0, ptr %gmp6890, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80011771c word 0xa9057fea
  %r6891.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6891 = load i64, ptr %r6891.p, align 8, !alias.scope !3, !noalias !4
  %t6892 = add i64 %r6891, 80
  %t6893 = add i64 %t6892, 8
  %r6894.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6894 = load i64, ptr %r6894.p, align 8, !alias.scope !3, !noalias !4
  %gmp6895 = inttoptr i64 %t6892 to ptr
  store i64 %r6894, ptr %gmp6895, align 1, !alias.scope !4, !noalias !3
  %gmp6896 = inttoptr i64 %t6893 to ptr
  store i64 0, ptr %gmp6896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117720 word 0xa9072fed
  %r6897.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6897 = load i64, ptr %r6897.p, align 8, !alias.scope !3, !noalias !4
  %t6898 = add i64 %r6897, 112
  %t6899 = add i64 %t6898, 8
  %r6900.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6900 = load i64, ptr %r6900.p, align 8, !alias.scope !3, !noalias !4
  %gmp6901 = inttoptr i64 %t6898 to ptr
  store i64 %r6900, ptr %gmp6901, align 1, !alias.scope !4, !noalias !3
  %r6902.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6902 = load i64, ptr %r6902.p, align 8, !alias.scope !3, !noalias !4
  %gmp6903 = inttoptr i64 %t6899 to ptr
  store i64 %r6902, ptr %gmp6903, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117724 word 0xb94009ca
  %r6904.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6904 = load i64, ptr %r6904.p, align 8, !alias.scope !3, !noalias !4
  %t6905 = add i64 %r6904, 8
  %gmp6906 = inttoptr i64 %t6905 to ptr
  %gml6907 = load i32, ptr %gmp6906, align 1, !alias.scope !4, !noalias !3
  %c6908 = zext i32 %gml6907 to i64
  %wp6909 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6908, ptr %wp6909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117728 word 0xf94009cb
  %r6910.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6910 = load i64, ptr %r6910.p, align 8, !alias.scope !3, !noalias !4
  %t6911 = add i64 %r6910, 16
  %gmp6912 = inttoptr i64 %t6911 to ptr
  %gml6913 = load i64, ptr %gmp6912, align 1, !alias.scope !4, !noalias !3
  %wp6914 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6913, ptr %wp6914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011772c word 0x6b08015f
  %r6915.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6915 = load i64, ptr %r6915.p, align 8, !alias.scope !3, !noalias !4
  %c6916 = trunc i64 %r6915 to i32
  %r6917.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6917 = load i64, ptr %r6917.p, align 8, !alias.scope !3, !noalias !4
  %c6918 = trunc i64 %r6917 to i32
  %t6919 = sub i32 %c6916, %c6918
  %fn6920 = icmp slt i32 %t6919, 0
  %fz6921 = icmp eq i32 %t6919, 0
  %fc6922 = icmp uge i32 %c6916, %c6918
  %fx16923 = xor i32 %c6916, %c6918
  %fx26924 = xor i32 %c6916, %t6919
  %fva6925 = and i32 %fx16923, %fx26924
  %fv6926 = icmp slt i32 %fva6925, 0
  %nz6927 = zext i1 %fn6920 to i64
  %zz6928 = zext i1 %fz6921 to i64
  %cz6929 = zext i1 %fc6922 to i64
  %vz6930 = zext i1 %fv6926 to i64
  %ns6931 = shl i64 %nz6927, 31
  %zs6932 = shl i64 %zz6928, 30
  %cs6933 = shl i64 %cz6929, 29
  %vs6934 = shl i64 %vz6930, 28
  %nzor6935 = or i64 %ns6931, %zs6932
  %cvor6936 = or i64 %cs6933, %vs6934
  %nzcv6937 = or i64 %nzor6935, %cvor6936
  %wp6938 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6937, ptr %wp6938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117730 word 0x52879c0a
  %c6939 = zext i32 15584 to i64
  %wp6940 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6939, ptr %wp6940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117734 word 0x9a9f810c
  %r6941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6941 = load i64, ptr %r6941.p, align 8, !alias.scope !3, !noalias !4
  %r6942.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6942 = load i64, ptr %r6942.p, align 8, !alias.scope !3, !noalias !4
  %fsh6944 = lshr i64 %r6942, 29
  %ftr6945 = trunc i64 %fsh6944 to i1
  %fsh6946 = lshr i64 %r6942, 30
  %ftr6947 = trunc i64 %fsh6946 to i1
  %fnz6948 = xor i1 %ftr6947, true
  %cond6943 = and i1 %ftr6945, %fnz6948
  %sel6949 = select i1 %cond6943, i64 %r6941, i64 0
  %wp6950 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %sel6949, ptr %wp6950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117738 word 0x9baa2d8b
  %r6951.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6951 = load i64, ptr %r6951.p, align 8, !alias.scope !3, !noalias !4
  %c6952 = trunc i64 %r6951 to i32
  %c6953 = zext i32 %c6952 to i64
  %r6954.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6954 = load i64, ptr %r6954.p, align 8, !alias.scope !3, !noalias !4
  %c6955 = trunc i64 %r6954 to i32
  %c6956 = zext i32 %c6955 to i64
  %t6957 = mul i64 %c6953, %c6956
  %r6958.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6958 = load i64, ptr %r6958.p, align 8, !alias.scope !3, !noalias !4
  %t6959 = add i64 %r6958, %t6957
  %wp6960 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6959, ptr %wp6960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011773c word 0xf959b56c
  %r6961.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6961 = load i64, ptr %r6961.p, align 8, !alias.scope !3, !noalias !4
  %t6962 = add i64 %r6961, 13160
  %gmp6963 = inttoptr i64 %t6962 to ptr
  %gml6964 = load i64, ptr %gmp6963, align 1, !alias.scope !4, !noalias !3
  %wp6965 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6964, ptr %wp6965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117740 word 0xf959b16b
  %r6966.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6966 = load i64, ptr %r6966.p, align 8, !alias.scope !3, !noalias !4
  %t6967 = add i64 %r6966, 13152
  %gmp6968 = inttoptr i64 %t6967 to ptr
  %gml6969 = load i64, ptr %gmp6968, align 1, !alias.scope !4, !noalias !3
  %wp6970 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6969, ptr %wp6970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117744 word 0xa900312b
  %r6971.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6971 = load i64, ptr %r6971.p, align 8, !alias.scope !3, !noalias !4
  %t6972 = add i64 %r6971, 8
  %r6973.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6973 = load i64, ptr %r6973.p, align 8, !alias.scope !3, !noalias !4
  %gmp6974 = inttoptr i64 %r6971 to ptr
  store i64 %r6973, ptr %gmp6974, align 1, !alias.scope !4, !noalias !3
  %r6975.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6975 = load i64, ptr %r6975.p, align 8, !alias.scope !3, !noalias !4
  %gmp6976 = inttoptr i64 %t6972 to ptr
  store i64 %r6975, ptr %gmp6976, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117748 word 0xb94009c9
  %r6977.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6977 = load i64, ptr %r6977.p, align 8, !alias.scope !3, !noalias !4
  %t6978 = add i64 %r6977, 8
  %gmp6979 = inttoptr i64 %t6978 to ptr
  %gml6980 = load i32, ptr %gmp6979, align 1, !alias.scope !4, !noalias !3
  %c6981 = zext i32 %gml6980 to i64
  %wp6982 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6981, ptr %wp6982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011774c word 0xf94009cb
  %r6983.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6983 = load i64, ptr %r6983.p, align 8, !alias.scope !3, !noalias !4
  %t6984 = add i64 %r6983, 16
  %gmp6985 = inttoptr i64 %t6984 to ptr
  %gml6986 = load i64, ptr %gmp6985, align 1, !alias.scope !4, !noalias !3
  %wp6987 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6986, ptr %wp6987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117750 word 0x6b08013f
  %r6988.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6988 = load i64, ptr %r6988.p, align 8, !alias.scope !3, !noalias !4
  %c6989 = trunc i64 %r6988 to i32
  %r6990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6990 = load i64, ptr %r6990.p, align 8, !alias.scope !3, !noalias !4
  %c6991 = trunc i64 %r6990 to i32
  %t6992 = sub i32 %c6989, %c6991
  %fn6993 = icmp slt i32 %t6992, 0
  %fz6994 = icmp eq i32 %t6992, 0
  %fc6995 = icmp uge i32 %c6989, %c6991
  %fx16996 = xor i32 %c6989, %c6991
  %fx26997 = xor i32 %c6989, %t6992
  %fva6998 = and i32 %fx16996, %fx26997
  %fv6999 = icmp slt i32 %fva6998, 0
  %nz7000 = zext i1 %fn6993 to i64
  %zz7001 = zext i1 %fz6994 to i64
  %cz7002 = zext i1 %fc6995 to i64
  %vz7003 = zext i1 %fv6999 to i64
  %ns7004 = shl i64 %nz7000, 31
  %zs7005 = shl i64 %zz7001, 30
  %cs7006 = shl i64 %cz7002, 29
  %vs7007 = shl i64 %vz7003, 28
  %nzor7008 = or i64 %ns7004, %zs7005
  %cvor7009 = or i64 %cs7006, %vs7007
  %nzcv7010 = or i64 %nzor7008, %cvor7009
  %wp7011 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7010, ptr %wp7011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117754 word 0x9a9f8108
  %r7012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7012 = load i64, ptr %r7012.p, align 8, !alias.scope !3, !noalias !4
  %r7013.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7013 = load i64, ptr %r7013.p, align 8, !alias.scope !3, !noalias !4
  %fsh7015 = lshr i64 %r7013, 29
  %ftr7016 = trunc i64 %fsh7015 to i1
  %fsh7017 = lshr i64 %r7013, 30
  %ftr7018 = trunc i64 %fsh7017 to i1
  %fnz7019 = xor i1 %ftr7018, true
  %cond7014 = and i1 %ftr7016, %fnz7019
  %sel7020 = select i1 %cond7014, i64 %r7012, i64 0
  %wp7021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel7020, ptr %wp7021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117758 word 0x9baa2d08
  %r7022.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7022 = load i64, ptr %r7022.p, align 8, !alias.scope !3, !noalias !4
  %c7023 = trunc i64 %r7022 to i32
  %c7024 = zext i32 %c7023 to i64
  %r7025.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7025 = load i64, ptr %r7025.p, align 8, !alias.scope !3, !noalias !4
  %c7026 = trunc i64 %r7025 to i32
  %c7027 = zext i32 %c7026 to i64
  %t7028 = mul i64 %c7024, %c7027
  %r7029.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7029 = load i64, ptr %r7029.p, align 8, !alias.scope !3, !noalias !4
  %t7030 = add i64 %r7029, %t7028
  %wp7031 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7030, ptr %wp7031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011775c word 0xf95af509
  %r7032.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7032 = load i64, ptr %r7032.p, align 8, !alias.scope !3, !noalias !4
  %t7033 = add i64 %r7032, 13800
  %gmp7034 = inttoptr i64 %t7033 to ptr
  %gml7035 = load i64, ptr %gmp7034, align 1, !alias.scope !4, !noalias !3
  %wp7036 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7035, ptr %wp7036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117760 word 0xf95af10a
  %r7037.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7037 = load i64, ptr %r7037.p, align 8, !alias.scope !3, !noalias !4
  %t7038 = add i64 %r7037, 13792
  %gmp7039 = inttoptr i64 %t7038 to ptr
  %gml7040 = load i64, ptr %gmp7039, align 1, !alias.scope !4, !noalias !3
  %wp7041 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml7040, ptr %wp7041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117764 word 0xa900274a
  %r7042.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7042 = load i64, ptr %r7042.p, align 8, !alias.scope !3, !noalias !4
  %t7043 = add i64 %r7042, 8
  %r7044.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7044 = load i64, ptr %r7044.p, align 8, !alias.scope !3, !noalias !4
  %gmp7045 = inttoptr i64 %r7042 to ptr
  store i64 %r7044, ptr %gmp7045, align 1, !alias.scope !4, !noalias !3
  %r7046.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7046 = load i64, ptr %r7046.p, align 8, !alias.scope !3, !noalias !4
  %gmp7047 = inttoptr i64 %t7043 to ptr
  store i64 %r7046, ptr %gmp7047, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117768 word 0xb975f909
  %r7048.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7048 = load i64, ptr %r7048.p, align 8, !alias.scope !3, !noalias !4
  %t7049 = add i64 %r7048, 13816
  %gmp7050 = inttoptr i64 %t7049 to ptr
  %gml7051 = load i32, ptr %gmp7050, align 1, !alias.scope !4, !noalias !3
  %c7052 = zext i32 %gml7051 to i64
  %wp7053 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7052, ptr %wp7053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011776c word 0xf95af908
  %r7054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7054 = load i64, ptr %r7054.p, align 8, !alias.scope !3, !noalias !4
  %t7055 = add i64 %r7054, 13808
  %gmp7056 = inttoptr i64 %t7055 to ptr
  %gml7057 = load i64, ptr %gmp7056, align 1, !alias.scope !4, !noalias !3
  %wp7058 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7057, ptr %wp7058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117770 word 0xf9000328
  %r7059.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7059 = load i64, ptr %r7059.p, align 8, !alias.scope !3, !noalias !4
  %r7060.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7060 = load i64, ptr %r7060.p, align 8, !alias.scope !3, !noalias !4
  %gmp7061 = inttoptr i64 %r7059 to ptr
  store i64 %r7060, ptr %gmp7061, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117774 word 0xb9000b29
  %r7062.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7062 = load i64, ptr %r7062.p, align 8, !alias.scope !3, !noalias !4
  %t7063 = add i64 %r7062, 8
  %r7064.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7064 = load i64, ptr %r7064.p, align 8, !alias.scope !3, !noalias !4
  %c7065 = trunc i64 %r7064 to i32
  %gmp7066 = inttoptr i64 %t7063 to ptr
  store i32 %c7065, ptr %gmp7066, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117778 word 0xb94045c8
  %r7067.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7067 = load i64, ptr %r7067.p, align 8, !alias.scope !3, !noalias !4
  %t7068 = add i64 %r7067, 68
  %gmp7069 = inttoptr i64 %t7068 to ptr
  %gml7070 = load i32, ptr %gmp7069, align 1, !alias.scope !4, !noalias !3
  %c7071 = zext i32 %gml7070 to i64
  %wp7072 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7071, ptr %wp7072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011777c word 0xb9403dc9
  %r7073.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7073 = load i64, ptr %r7073.p, align 8, !alias.scope !3, !noalias !4
  %t7074 = add i64 %r7073, 60
  %gmp7075 = inttoptr i64 %t7074 to ptr
  %gml7076 = load i32, ptr %gmp7075, align 1, !alias.scope !4, !noalias !3
  %c7077 = zext i32 %gml7076 to i64
  %wp7078 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7077, ptr %wp7078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117780 word 0x17ffff32
  br label %L_800117448
L_800117784:
  ; @pc 0x800117784 word 0x912ba280
  %r7079.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7079 = load i64, ptr %r7079.p, align 8, !alias.scope !3, !noalias !4
  %t7080 = add i64 %r7079, 2792
  %wp7081 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7080, ptr %wp7081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117788 word 0x910003e1
  %r7082.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7082 = load i64, ptr %r7082.p, align 8, !alias.scope !3, !noalias !4
  %t7083 = add i64 %r7082, 0
  %wp7084 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7083, ptr %wp7084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011778c word 0xaa1303e2
  %r7085.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7085 = load i64, ptr %r7085.p, align 8, !alias.scope !3, !noalias !4
  %t7086 = or i64 0, %r7085
  %wp7087 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7086, ptr %wp7087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117790 word 0x949cf979
  %wp7088 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360883092, ptr %wp7088, align 8, !alias.scope !3, !noalias !4
  call void @f_802855d74(ptr %c)
  ; @pc 0x800117794 word 0x17fffe10
  br label %L_800116fd4
L_800117798:
  ; @pc 0x800117798 word 0x52800068
  %c7089 = zext i32 3 to i64
  %wp7090 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7089, ptr %wp7090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011779c word 0x17fffaa3
  br label %L_800116228
L_8001177a0:
  ; @pc 0x8001177a0 word 0x39430129
  %r7091.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7091 = load i64, ptr %r7091.p, align 8, !alias.scope !3, !noalias !4
  %t7092 = add i64 %r7091, 192
  %gmp7093 = inttoptr i64 %t7092 to ptr
  %gml7094 = load i8, ptr %gmp7093, align 1, !alias.scope !4, !noalias !3
  %c7095 = zext i8 %gml7094 to i64
  %wp7096 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7095, ptr %wp7096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177a4 word 0x17fffed9
  br label %L_800117308
L_8001177a8:
  ; @pc 0x8001177a8 word 0x39430129
  %r7097.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7097 = load i64, ptr %r7097.p, align 8, !alias.scope !3, !noalias !4
  %t7098 = add i64 %r7097, 192
  %gmp7099 = inttoptr i64 %t7098 to ptr
  %gml7100 = load i8, ptr %gmp7099, align 1, !alias.scope !4, !noalias !3
  %c7101 = zext i8 %gml7100 to i64
  %wp7102 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7101, ptr %wp7102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177ac word 0x17fffeda
  br label %L_800117314
L_8001177b0:
  ; @pc 0x8001177b0 word 0x39430129
  %r7103.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7103 = load i64, ptr %r7103.p, align 8, !alias.scope !3, !noalias !4
  %t7104 = add i64 %r7103, 192
  %gmp7105 = inttoptr i64 %t7104 to ptr
  %gml7106 = load i8, ptr %gmp7105, align 1, !alias.scope !4, !noalias !3
  %c7107 = zext i8 %gml7106 to i64
  %wp7108 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7107, ptr %wp7108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177b4 word 0x17fffedb
  br label %L_800117320
L_8001177b8:
  ; @pc 0x8001177b8 word 0x39430129
  %r7109.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7109 = load i64, ptr %r7109.p, align 8, !alias.scope !3, !noalias !4
  %t7110 = add i64 %r7109, 192
  %gmp7111 = inttoptr i64 %t7110 to ptr
  %gml7112 = load i8, ptr %gmp7111, align 1, !alias.scope !4, !noalias !3
  %c7113 = zext i8 %gml7112 to i64
  %wp7114 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7113, ptr %wp7114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177bc word 0x17fffedc
  br label %L_80011732c
L_8001177c0:
  ; @pc 0x8001177c0 word 0x39430129
  %r7115.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7115 = load i64, ptr %r7115.p, align 8, !alias.scope !3, !noalias !4
  %t7116 = add i64 %r7115, 192
  %gmp7117 = inttoptr i64 %t7116 to ptr
  %gml7118 = load i8, ptr %gmp7117, align 1, !alias.scope !4, !noalias !3
  %c7119 = zext i8 %gml7118 to i64
  %wp7120 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7119, ptr %wp7120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177c4 word 0x17fffedd
  br label %L_800117338
L_8001177c8:
  ; @pc 0x8001177c8 word 0x39430129
  %r7121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7121 = load i64, ptr %r7121.p, align 8, !alias.scope !3, !noalias !4
  %t7122 = add i64 %r7121, 192
  %gmp7123 = inttoptr i64 %t7122 to ptr
  %gml7124 = load i8, ptr %gmp7123, align 1, !alias.scope !4, !noalias !3
  %c7125 = zext i8 %gml7124 to i64
  %wp7126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7125, ptr %wp7126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177cc word 0x17fffede
  br label %L_800117344
L_8001177d0:
  ; @pc 0x8001177d0 word 0x39430129
  %r7127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7127 = load i64, ptr %r7127.p, align 8, !alias.scope !3, !noalias !4
  %t7128 = add i64 %r7127, 192
  %gmp7129 = inttoptr i64 %t7128 to ptr
  %gml7130 = load i8, ptr %gmp7129, align 1, !alias.scope !4, !noalias !3
  %c7131 = zext i8 %gml7130 to i64
  %wp7132 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7131, ptr %wp7132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001177d4 word 0x17fffedf
  br label %L_800117350
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34360877520, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001161d0
L_80011620c_ft:
  ; @pc 0x80011620c word 0x528fa3e8
  %c93 = zext i32 32031 to i64
  %wp94 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c93, ptr %wp94, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116210 word 0x72bed868
  %r95.p = getelementptr inbounds i8, ptr %c, i64 64
  %r95 = load i64, ptr %r95.p, align 8, !alias.scope !3, !noalias !4
  %t96 = and i64 %r95, -4294901761
  %t97 = or i64 %t96, 4139974656
  %c98 = trunc i64 %t97 to i32
  %c99 = zext i32 %c98 to i64
  %wp100 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c99, ptr %wp100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116214 word 0x1ad52508
  %r101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r101 = load i64, ptr %r101.p, align 8, !alias.scope !3, !noalias !4
  %c102 = trunc i64 %r101 to i32
  %r103.p = getelementptr inbounds i8, ptr %c, i64 168
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %c104 = trunc i64 %r103 to i32
  %t105 = and i32 %c104, 31
  %t106 = lshr i32 %c102, %t105
  %c107 = zext i32 %t106 to i64
  %wp108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c107, ptr %wp108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116218 word 0x370013a8
  %r109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r109 = load i64, ptr %r109.p, align 8, !alias.scope !3, !noalias !4
  %t110 = and i64 %r109, 1
  %cmp111 = icmp ne i64 %t110, 0
  br i1 %cmp111, label %L_80011648c, label %L_80011621c
L_800116224_ft:
  ; @pc 0x800116224 word 0xaa1f03e8
  %t137 = or i64 0, 0
  %wp138 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t137, ptr %wp138, align 8, !alias.scope !3, !noalias !4
  br label %L_800116228
L_8001162ec_ft:
  ; @pc 0x8001162ec word 0xd00162b1
  %wp371 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 34407366656, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162f0 word 0x91250231
  %r372.p = getelementptr inbounds i8, ptr %c, i64 136
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %t373 = add i64 %r372, 2368
  %wp374 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t373, ptr %wp374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162f4 word 0x2a1503f2
  %r375.p = getelementptr inbounds i8, ptr %c, i64 168
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %c376 = trunc i64 %r375 to i32
  %t377 = or i32 0, %c376
  %c378 = zext i32 %t377 to i64
  %wp379 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c378, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162f8 word 0x910003f0
  %r380.p = getelementptr inbounds i8, ptr %c, i64 256
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %t381 = add i64 %r380, 0
  %wp382 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t381, ptr %wp382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001162fc word 0x10000100
  %wp383 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34360877852, ptr %wp383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116300 word 0x78727a21
  %r384.p = getelementptr inbounds i8, ptr %c, i64 136
  %r384 = load i64, ptr %r384.p, align 8, !alias.scope !3, !noalias !4
  %r385.p = getelementptr inbounds i8, ptr %c, i64 144
  %r385 = load i64, ptr %r385.p, align 8, !alias.scope !3, !noalias !4
  %t386 = shl i64 %r385, 1
  %t387 = add i64 %r384, %t386
  %gmp388 = inttoptr i64 %t387 to ptr
  %gml389 = load i16, ptr %gmp388, align 1, !alias.scope !4, !noalias !3
  %c390 = zext i16 %gml389 to i64
  %wp391 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c390, ptr %wp391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116304 word 0x8b010800
  %r392.p = getelementptr inbounds i8, ptr %c, i64 0
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %r393.p = getelementptr inbounds i8, ptr %c, i64 8
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = shl i64 %r393, 2
  %t395 = add i64 %r392, %t394
  %wp396 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t395, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116308 word 0x9101e209
  %r397.p = getelementptr inbounds i8, ptr %c, i64 128
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %t398 = add i64 %r397, 120
  %wp399 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t398, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011630c word 0x9102421a
  %r400.p = getelementptr inbounds i8, ptr %c, i64 128
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %t401 = add i64 %r400, 144
  %wp402 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t401, ptr %wp402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116310 word 0x91028219
  %r403.p = getelementptr inbounds i8, ptr %c, i64 128
  %r403 = load i64, ptr %r403.p, align 8, !alias.scope !3, !noalias !4
  %t404 = add i64 %r403, 160
  %wp405 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t404, ptr %wp405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116314 word 0x9102c21b
  %r406.p = getelementptr inbounds i8, ptr %c, i64 128
  %r406 = load i64, ptr %r406.p, align 8, !alias.scope !3, !noalias !4
  %t407 = add i64 %r406, 176
  %wp408 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t407, ptr %wp408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116318 word 0xd61f0000
  %r409.p = getelementptr inbounds i8, ptr %c, i64 0
  %r409 = load i64, ptr %r409.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r409, label %L_800116318_jt_def [
    i64 34360877852, label %L_80011631c
    i64 34360877856, label %L_800116320
    i64 34360877860, label %L_800116324
    i64 34360877868, label %L_80011632c
    i64 34360878240, label %L_8001164a0
    i64 34360878300, label %L_8001164dc
    i64 34360878364, label %L_80011651c
    i64 34360878656, label %L_800116640
    i64 34360878720, label %L_800116680
    i64 34360879060, label %L_8001167d4
    i64 34360879284, label %L_8001168b4
    i64 34360879588, label %L_8001169e4
    i64 34360879612, label %L_8001169fc
    i64 34360879676, label %L_800116a3c
    i64 34360879960, label %L_800116b58
    i64 34360880228, label %L_800116c64
    i64 34360880288, label %L_800116ca0
    i64 34360880440, label %L_800116d38
    i64 34360880504, label %L_800116d78
    i64 34360880628, label %L_800116df4
    i64 34360880688, label %L_800116e30
    i64 34360880752, label %L_800116e70
    i64 34360880872, label %L_800116ee8
    i64 34360881616, label %L_8001171d0
    i64 34360882020, label %L_800117364
    i64 34360882388, label %L_8001174d4
    i64 34360882404, label %L_8001174e4
    i64 34360882420, label %L_8001174f4
    i64 34360882436, label %L_800117504
    i64 34360882756, label %L_800117644
    i64 34360882784, label %L_800117660
    i64 34360882820, label %L_800117684
    i64 34360882844, label %L_80011769c
    i64 34360883076, label %L_800117784
  ]
L_800116bd8_ft:
  ; @pc 0x800116bd8 word 0x3940226a
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %t3318 = add i64 %r3317, 8
  %gmp3319 = inttoptr i64 %t3318 to ptr
  %gml3320 = load i8, ptr %gmp3319, align 1, !alias.scope !4, !noalias !3
  %c3321 = zext i8 %gml3320 to i64
  %wp3322 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3321, ptr %wp3322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bdc word 0x5281ec0c
  %c3323 = zext i32 3936 to i64
  %wp3324 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3323, ptr %wp3324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116be0 word 0x52879c0d
  %c3325 = zext i32 15584 to i64
  %wp3326 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3325, ptr %wp3326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116be4 word 0xb940110b
  %r3327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3327 = load i64, ptr %r3327.p, align 8, !alias.scope !3, !noalias !4
  %t3328 = add i64 %r3327, 16
  %gmp3329 = inttoptr i64 %t3328 to ptr
  %gml3330 = load i32, ptr %gmp3329, align 1, !alias.scope !4, !noalias !3
  %c3331 = zext i32 %gml3330 to i64
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3331, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116be8 word 0x6b0a017f
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %c3334 = trunc i64 %r3333 to i32
  %r3335.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3335 = load i64, ptr %r3335.p, align 8, !alias.scope !3, !noalias !4
  %c3336 = trunc i64 %r3335 to i32
  %t3337 = sub i32 %c3334, %c3336
  %fn3338 = icmp slt i32 %t3337, 0
  %fz3339 = icmp eq i32 %t3337, 0
  %fc3340 = icmp uge i32 %c3334, %c3336
  %fx13341 = xor i32 %c3334, %c3336
  %fx23342 = xor i32 %c3334, %t3337
  %fva3343 = and i32 %fx13341, %fx23342
  %fv3344 = icmp slt i32 %fva3343, 0
  %nz3345 = zext i1 %fn3338 to i64
  %zz3346 = zext i1 %fz3339 to i64
  %cz3347 = zext i1 %fc3340 to i64
  %vz3348 = zext i1 %fv3344 to i64
  %ns3349 = shl i64 %nz3345, 31
  %zs3350 = shl i64 %zz3346, 30
  %cs3351 = shl i64 %cz3347, 29
  %vs3352 = shl i64 %vz3348, 28
  %nzor3353 = or i64 %ns3349, %zs3350
  %cvor3354 = or i64 %cs3351, %vs3352
  %nzcv3355 = or i64 %nzor3353, %cvor3354
  %wp3356 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3355, ptr %wp3356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bec word 0xf9400d08
  %r3357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3357 = load i64, ptr %r3357.p, align 8, !alias.scope !3, !noalias !4
  %t3358 = add i64 %r3357, 24
  %gmp3359 = inttoptr i64 %t3358 to ptr
  %gml3360 = load i64, ptr %gmp3359, align 1, !alias.scope !4, !noalias !3
  %wp3361 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3360, ptr %wp3361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bf0 word 0x9a9f814b
  %r3362.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3362 = load i64, ptr %r3362.p, align 8, !alias.scope !3, !noalias !4
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %fsh3365 = lshr i64 %r3363, 29
  %ftr3366 = trunc i64 %fsh3365 to i1
  %fsh3367 = lshr i64 %r3363, 30
  %ftr3368 = trunc i64 %fsh3367 to i1
  %fnz3369 = xor i1 %ftr3368, true
  %cond3364 = and i1 %ftr3366, %fnz3369
  %sel3370 = select i1 %cond3364, i64 %r3362, i64 0
  %wp3371 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel3370, ptr %wp3371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bf4 word 0x9bac2168
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %c3373 = trunc i64 %r3372 to i32
  %c3374 = zext i32 %c3373 to i64
  %r3375.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3375 = load i64, ptr %r3375.p, align 8, !alias.scope !3, !noalias !4
  %c3376 = trunc i64 %r3375 to i32
  %c3377 = zext i32 %c3376 to i64
  %t3378 = mul i64 %c3374, %c3377
  %r3379.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3379 = load i64, ptr %r3379.p, align 8, !alias.scope !3, !noalias !4
  %t3380 = add i64 %r3379, %t3378
  %wp3381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3380, ptr %wp3381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bf8 word 0xb9429d08
  %r3382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3382 = load i64, ptr %r3382.p, align 8, !alias.scope !3, !noalias !4
  %t3383 = add i64 %r3382, 668
  %gmp3384 = inttoptr i64 %t3383 to ptr
  %gml3385 = load i32, ptr %gmp3384, align 1, !alias.scope !4, !noalias !3
  %c3386 = zext i32 %gml3385 to i64
  %wp3387 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3386, ptr %wp3387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116bfc word 0xb2600108
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %t3389 = or i64 %r3388, 4294967296
  %wp3390 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3389, ptr %wp3390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c00 word 0xf801c3e8
  %r3391.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3391 = load i64, ptr %r3391.p, align 8, !alias.scope !3, !noalias !4
  %t3392 = add i64 %r3391, 28
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %gmp3394 = inttoptr i64 %t3392 to ptr
  store i64 %r3393, ptr %gmp3394, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c04 word 0x52800048
  %c3395 = zext i32 2 to i64
  %wp3396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3395, ptr %wp3396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c08 word 0xb900bfe8
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %t3398 = add i64 %r3397, 188
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %c3400 = trunc i64 %r3399 to i32
  %gmp3401 = inttoptr i64 %t3398 to ptr
  store i32 %c3400, ptr %gmp3401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c0c word 0xf94f6688
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %t3403 = add i64 %r3402, 7880
  %gmp3404 = inttoptr i64 %t3403 to ptr
  %gml3405 = load i64, ptr %gmp3404, align 1, !alias.scope !4, !noalias !3
  %wp3406 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3405, ptr %wp3406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c10 word 0xb940090b
  %r3407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3407 = load i64, ptr %r3407.p, align 8, !alias.scope !3, !noalias !4
  %t3408 = add i64 %r3407, 8
  %gmp3409 = inttoptr i64 %t3408 to ptr
  %gml3410 = load i32, ptr %gmp3409, align 1, !alias.scope !4, !noalias !3
  %c3411 = zext i32 %gml3410 to i64
  %wp3412 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3411, ptr %wp3412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c14 word 0xf940090c
  %r3413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3413 = load i64, ptr %r3413.p, align 8, !alias.scope !3, !noalias !4
  %t3414 = add i64 %r3413, 16
  %gmp3415 = inttoptr i64 %t3414 to ptr
  %gml3416 = load i64, ptr %gmp3415, align 1, !alias.scope !4, !noalias !3
  %wp3417 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3416, ptr %wp3417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c18 word 0x6b0a017f
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %c3419 = trunc i64 %r3418 to i32
  %r3420.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3420 = load i64, ptr %r3420.p, align 8, !alias.scope !3, !noalias !4
  %c3421 = trunc i64 %r3420 to i32
  %t3422 = sub i32 %c3419, %c3421
  %fn3423 = icmp slt i32 %t3422, 0
  %fz3424 = icmp eq i32 %t3422, 0
  %fc3425 = icmp uge i32 %c3419, %c3421
  %fx13426 = xor i32 %c3419, %c3421
  %fx23427 = xor i32 %c3419, %t3422
  %fva3428 = and i32 %fx13426, %fx23427
  %fv3429 = icmp slt i32 %fva3428, 0
  %nz3430 = zext i1 %fn3423 to i64
  %zz3431 = zext i1 %fz3424 to i64
  %cz3432 = zext i1 %fc3425 to i64
  %vz3433 = zext i1 %fv3429 to i64
  %ns3434 = shl i64 %nz3430, 31
  %zs3435 = shl i64 %zz3431, 30
  %cs3436 = shl i64 %cz3432, 29
  %vs3437 = shl i64 %vz3433, 28
  %nzor3438 = or i64 %ns3434, %zs3435
  %cvor3439 = or i64 %cs3436, %vs3437
  %nzcv3440 = or i64 %nzor3438, %cvor3439
  %wp3441 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3440, ptr %wp3441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c1c word 0x9a9f814b
  %r3442.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3442 = load i64, ptr %r3442.p, align 8, !alias.scope !3, !noalias !4
  %r3443.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3443 = load i64, ptr %r3443.p, align 8, !alias.scope !3, !noalias !4
  %fsh3445 = lshr i64 %r3443, 29
  %ftr3446 = trunc i64 %fsh3445 to i1
  %fsh3447 = lshr i64 %r3443, 30
  %ftr3448 = trunc i64 %fsh3447 to i1
  %fnz3449 = xor i1 %ftr3448, true
  %cond3444 = and i1 %ftr3446, %fnz3449
  %sel3450 = select i1 %cond3444, i64 %r3442, i64 0
  %wp3451 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel3450, ptr %wp3451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c20 word 0x9bad316b
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %c3453 = trunc i64 %r3452 to i32
  %c3454 = zext i32 %c3453 to i64
  %r3455.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3455 = load i64, ptr %r3455.p, align 8, !alias.scope !3, !noalias !4
  %c3456 = trunc i64 %r3455 to i32
  %c3457 = zext i32 %c3456 to i64
  %t3458 = mul i64 %c3454, %c3457
  %r3459.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3459 = load i64, ptr %r3459.p, align 8, !alias.scope !3, !noalias !4
  %t3460 = add i64 %r3459, %t3458
  %wp3461 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3460, ptr %wp3461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c24 word 0xf9585d6c
  %r3462.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3462 = load i64, ptr %r3462.p, align 8, !alias.scope !3, !noalias !4
  %t3463 = add i64 %r3462, 12472
  %gmp3464 = inttoptr i64 %t3463 to ptr
  %gml3465 = load i64, ptr %gmp3464, align 1, !alias.scope !4, !noalias !3
  %wp3466 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3465, ptr %wp3466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c28 word 0xf958596b
  %r3467.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3467 = load i64, ptr %r3467.p, align 8, !alias.scope !3, !noalias !4
  %t3468 = add i64 %r3467, 12464
  %gmp3469 = inttoptr i64 %t3468 to ptr
  %gml3470 = load i64, ptr %gmp3469, align 1, !alias.scope !4, !noalias !3
  %wp3471 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3470, ptr %wp3471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c2c word 0xa900312b
  %r3472.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3472 = load i64, ptr %r3472.p, align 8, !alias.scope !3, !noalias !4
  %t3473 = add i64 %r3472, 8
  %r3474.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3474 = load i64, ptr %r3474.p, align 8, !alias.scope !3, !noalias !4
  %gmp3475 = inttoptr i64 %r3472 to ptr
  store i64 %r3474, ptr %gmp3475, align 1, !alias.scope !4, !noalias !3
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %gmp3477 = inttoptr i64 %t3473 to ptr
  store i64 %r3476, ptr %gmp3477, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c30 word 0xb9400909
  %r3478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3478 = load i64, ptr %r3478.p, align 8, !alias.scope !3, !noalias !4
  %t3479 = add i64 %r3478, 8
  %gmp3480 = inttoptr i64 %t3479 to ptr
  %gml3481 = load i32, ptr %gmp3480, align 1, !alias.scope !4, !noalias !3
  %c3482 = zext i32 %gml3481 to i64
  %wp3483 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3482, ptr %wp3483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c34 word 0xf9400908
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %t3485 = add i64 %r3484, 16
  %gmp3486 = inttoptr i64 %t3485 to ptr
  %gml3487 = load i64, ptr %gmp3486, align 1, !alias.scope !4, !noalias !3
  %wp3488 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3487, ptr %wp3488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c38 word 0x6b0a013f
  %r3489.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3489 = load i64, ptr %r3489.p, align 8, !alias.scope !3, !noalias !4
  %c3490 = trunc i64 %r3489 to i32
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %c3492 = trunc i64 %r3491 to i32
  %t3493 = sub i32 %c3490, %c3492
  %fn3494 = icmp slt i32 %t3493, 0
  %fz3495 = icmp eq i32 %t3493, 0
  %fc3496 = icmp uge i32 %c3490, %c3492
  %fx13497 = xor i32 %c3490, %c3492
  %fx23498 = xor i32 %c3490, %t3493
  %fva3499 = and i32 %fx13497, %fx23498
  %fv3500 = icmp slt i32 %fva3499, 0
  %nz3501 = zext i1 %fn3494 to i64
  %zz3502 = zext i1 %fz3495 to i64
  %cz3503 = zext i1 %fc3496 to i64
  %vz3504 = zext i1 %fv3500 to i64
  %ns3505 = shl i64 %nz3501, 31
  %zs3506 = shl i64 %zz3502, 30
  %cs3507 = shl i64 %cz3503, 29
  %vs3508 = shl i64 %vz3504, 28
  %nzor3509 = or i64 %ns3505, %zs3506
  %cvor3510 = or i64 %cs3507, %vs3508
  %nzcv3511 = or i64 %nzor3509, %cvor3510
  %wp3512 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3511, ptr %wp3512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c3c word 0x9a9f8149
  %r3513.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3513 = load i64, ptr %r3513.p, align 8, !alias.scope !3, !noalias !4
  %r3514.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3514 = load i64, ptr %r3514.p, align 8, !alias.scope !3, !noalias !4
  %fsh3516 = lshr i64 %r3514, 29
  %ftr3517 = trunc i64 %fsh3516 to i1
  %fsh3518 = lshr i64 %r3514, 30
  %ftr3519 = trunc i64 %fsh3518 to i1
  %fnz3520 = xor i1 %ftr3519, true
  %cond3515 = and i1 %ftr3517, %fnz3520
  %sel3521 = select i1 %cond3515, i64 %r3513, i64 0
  %wp3522 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel3521, ptr %wp3522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c40 word 0x9bad2128
  %r3523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3523 = load i64, ptr %r3523.p, align 8, !alias.scope !3, !noalias !4
  %c3524 = trunc i64 %r3523 to i32
  %c3525 = zext i32 %c3524 to i64
  %r3526.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3526 = load i64, ptr %r3526.p, align 8, !alias.scope !3, !noalias !4
  %c3527 = trunc i64 %r3526 to i32
  %c3528 = zext i32 %c3527 to i64
  %t3529 = mul i64 %c3525, %c3528
  %r3530.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3530 = load i64, ptr %r3530.p, align 8, !alias.scope !3, !noalias !4
  %t3531 = add i64 %r3530, %t3529
  %wp3532 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3531, ptr %wp3532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c44 word 0xf9599d09
  %r3533.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3533 = load i64, ptr %r3533.p, align 8, !alias.scope !3, !noalias !4
  %t3534 = add i64 %r3533, 13112
  %gmp3535 = inttoptr i64 %t3534 to ptr
  %gml3536 = load i64, ptr %gmp3535, align 1, !alias.scope !4, !noalias !3
  %wp3537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3536, ptr %wp3537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c48 word 0xf959990a
  %r3538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3538 = load i64, ptr %r3538.p, align 8, !alias.scope !3, !noalias !4
  %t3539 = add i64 %r3538, 13104
  %gmp3540 = inttoptr i64 %t3539 to ptr
  %gml3541 = load i64, ptr %gmp3540, align 1, !alias.scope !4, !noalias !3
  %wp3542 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3541, ptr %wp3542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c4c word 0xa900274a
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %t3544 = add i64 %r3543, 8
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %gmp3546 = inttoptr i64 %r3543 to ptr
  store i64 %r3545, ptr %gmp3546, align 1, !alias.scope !4, !noalias !3
  %r3547.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3547 = load i64, ptr %r3547.p, align 8, !alias.scope !3, !noalias !4
  %gmp3548 = inttoptr i64 %t3544 to ptr
  store i64 %r3547, ptr %gmp3548, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c50 word 0xb9734909
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %t3550 = add i64 %r3549, 13128
  %gmp3551 = inttoptr i64 %t3550 to ptr
  %gml3552 = load i32, ptr %gmp3551, align 1, !alias.scope !4, !noalias !3
  %c3553 = zext i32 %gml3552 to i64
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c54 word 0xf959a108
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %t3556 = add i64 %r3555, 13120
  %gmp3557 = inttoptr i64 %t3556 to ptr
  %gml3558 = load i64, ptr %gmp3557, align 1, !alias.scope !4, !noalias !3
  %wp3559 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3558, ptr %wp3559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800116c58 word 0xf9000328
  %r3560.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3560 = load i64, ptr %r3560.p, align 8, !alias.scope !3, !noalias !4
  %r3561.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3561 = load i64, ptr %r3561.p, align 8, !alias.scope !3, !noalias !4
  %gmp3562 = inttoptr i64 %r3560 to ptr
  store i64 %r3561, ptr %gmp3562, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c5c word 0xb9000b29
  %r3563.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3563 = load i64, ptr %r3563.p, align 8, !alias.scope !3, !noalias !4
  %t3564 = add i64 %r3563, 8
  %r3565.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3565 = load i64, ptr %r3565.p, align 8, !alias.scope !3, !noalias !4
  %c3566 = trunc i64 %r3565 to i32
  %gmp3567 = inttoptr i64 %t3564 to ptr
  store i32 %c3566, ptr %gmp3567, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800116c60 word 0x140000dd
  br label %L_800116fd4
L_800117004_ft:
  ; @pc 0x800117004 word 0x91050298
  %r4542.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4542 = load i64, ptr %r4542.p, align 8, !alias.scope !3, !noalias !4
  %t4543 = add i64 %r4542, 320
  %wp4544 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4543, ptr %wp4544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117008 word 0x93407eb9
  %r4545.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4545 = load i64, ptr %r4545.p, align 8, !alias.scope !3, !noalias !4
  %t4546 = lshr i64 %r4545, 31
  %t4547 = and i64 %t4546, 1
  %t4548 = sub i64 0, %t4547
  %t4549 = and i64 %t4548, -4294967296
  %t4550 = and i64 %r4545, 4294967295
  %t4551 = or i64 %t4549, %t4550
  %wp4552 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4551, ptr %wp4552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011700c word 0x38796b0b
  %r4553.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4553 = load i64, ptr %r4553.p, align 8, !alias.scope !3, !noalias !4
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %t4555 = add i64 %r4553, %r4554
  %gmp4556 = inttoptr i64 %t4555 to ptr
  %gml4557 = load i8, ptr %gmp4556, align 1, !alias.scope !4, !noalias !3
  %c4558 = zext i8 %gml4557 to i64
  %wp4559 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4558, ptr %wp4559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117010 word 0x36000cab
  %r4560.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4560 = load i64, ptr %r4560.p, align 8, !alias.scope !3, !noalias !4
  %t4561 = and i64 %r4560, 1
  %cmp4562 = icmp eq i64 %t4561, 0
  br i1 %cmp4562, label %L_8001171a4, label %L_800117014_ft
L_800117014_ft:
  ; @pc 0x800117014 word 0x394033eb
  %r4563.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4563 = load i64, ptr %r4563.p, align 8, !alias.scope !3, !noalias !4
  %t4564 = add i64 %r4563, 12
  %gmp4565 = inttoptr i64 %t4564 to ptr
  %gml4566 = load i8, ptr %gmp4565, align 1, !alias.scope !4, !noalias !3
  %c4567 = zext i8 %gml4566 to i64
  %wp4568 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4567, ptr %wp4568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117018 word 0x37000d6b
  %r4569.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4569 = load i64, ptr %r4569.p, align 8, !alias.scope !3, !noalias !4
  %t4570 = and i64 %r4569, 1
  %cmp4571 = icmp ne i64 %t4570, 0
  br i1 %cmp4571, label %L_8001171c4, label %L_80011701c
L_800117050_ft:
  ; @pc 0x800117050 word 0x38796b08
  %r4625.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4625 = load i64, ptr %r4625.p, align 8, !alias.scope !3, !noalias !4
  %r4626.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4626 = load i64, ptr %r4626.p, align 8, !alias.scope !3, !noalias !4
  %t4627 = add i64 %r4625, %r4626
  %gmp4628 = inttoptr i64 %t4627 to ptr
  %gml4629 = load i8, ptr %gmp4628, align 1, !alias.scope !4, !noalias !3
  %c4630 = zext i8 %gml4629 to i64
  %wp4631 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4630, ptr %wp4631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117054 word 0x36080a88
  %r4632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4632 = load i64, ptr %r4632.p, align 8, !alias.scope !3, !noalias !4
  %t4633 = and i64 %r4632, 2
  %cmp4634 = icmp eq i64 %t4633, 0
  br i1 %cmp4634, label %L_8001171a4, label %L_800117058_ft
L_800117058_ft:
  ; @pc 0x800117058 word 0xf95db288
  %r4635.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4635 = load i64, ptr %r4635.p, align 8, !alias.scope !3, !noalias !4
  %t4636 = add i64 %r4635, 15200
  %gmp4637 = inttoptr i64 %t4636 to ptr
  %gml4638 = load i64, ptr %gmp4637, align 1, !alias.scope !4, !noalias !3
  %wp4639 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4638, ptr %wp4639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011705c word 0xb4000a48
  %r4640.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4640 = load i64, ptr %r4640.p, align 8, !alias.scope !3, !noalias !4
  %cmp4641 = icmp eq i64 %r4640, 0
  br i1 %cmp4641, label %L_8001171a4, label %L_800117060_ft
L_800117060_ft:
  ; @pc 0x800117060 word 0x528750a8
  %c4642 = zext i32 14981 to i64
  %wp4643 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4642, ptr %wp4643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117064 word 0x38686a88
  %r4644.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4644 = load i64, ptr %r4644.p, align 8, !alias.scope !3, !noalias !4
  %r4645.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4645 = load i64, ptr %r4645.p, align 8, !alias.scope !3, !noalias !4
  %t4646 = add i64 %r4644, %r4645
  %gmp4647 = inttoptr i64 %t4646 to ptr
  %gml4648 = load i8, ptr %gmp4647, align 1, !alias.scope !4, !noalias !3
  %c4649 = zext i8 %gml4648 to i64
  %wp4650 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4649, ptr %wp4650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117068 word 0x360809e8
  %r4651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4651 = load i64, ptr %r4651.p, align 8, !alias.scope !3, !noalias !4
  %t4652 = and i64 %r4651, 2
  %cmp4653 = icmp eq i64 %t4652, 0
  br i1 %cmp4653, label %L_8001171a4, label %L_80011706c_ft
L_80011706c_ft:
  ; @pc 0x80011706c word 0xb94002a8
  %r4654.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4654 = load i64, ptr %r4654.p, align 8, !alias.scope !3, !noalias !4
  %gmp4655 = inttoptr i64 %r4654 to ptr
  %gml4656 = load i32, ptr %gmp4655, align 1, !alias.scope !4, !noalias !3
  %c4657 = zext i32 %gml4656 to i64
  %wp4658 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4657, ptr %wp4658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117070 word 0xb94012e9
  %r4659.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4659 = load i64, ptr %r4659.p, align 8, !alias.scope !3, !noalias !4
  %t4660 = add i64 %r4659, 16
  %gmp4661 = inttoptr i64 %t4660 to ptr
  %gml4662 = load i32, ptr %gmp4661, align 1, !alias.scope !4, !noalias !3
  %c4663 = zext i32 %gml4662 to i64
  %wp4664 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4663, ptr %wp4664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117074 word 0x6a29011f
  %r4665.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4665 = load i64, ptr %r4665.p, align 8, !alias.scope !3, !noalias !4
  %c4666 = trunc i64 %r4665 to i32
  %t4667 = xor i32 %c4666, -1
  %r4668.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4668 = load i64, ptr %r4668.p, align 8, !alias.scope !3, !noalias !4
  %c4669 = trunc i64 %r4668 to i32
  %t4670 = and i32 %c4669, %t4667
  %fn4671 = icmp slt i32 %t4670, 0
  %fz4672 = icmp eq i32 %t4670, 0
  %nz4673 = zext i1 %fn4671 to i64
  %zz4674 = zext i1 %fz4672 to i64
  %ns4675 = shl i64 %nz4673, 31
  %zs4676 = shl i64 %zz4674, 30
  %nzcv4677 = or i64 %ns4675, %zs4676
  %wp4678 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4677, ptr %wp4678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117078 word 0x54000961
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %fsh4681 = lshr i64 %r4679, 30
  %ftr4682 = trunc i64 %fsh4681 to i1
  %cond4680 = xor i1 %ftr4682, true
  br i1 %cond4680, label %L_8001171a4, label %L_80011707c_ft
L_80011707c_ft:
  ; @pc 0x80011707c word 0xb94002c8
  %r4683.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4683 = load i64, ptr %r4683.p, align 8, !alias.scope !3, !noalias !4
  %gmp4684 = inttoptr i64 %r4683 to ptr
  %gml4685 = load i32, ptr %gmp4684, align 1, !alias.scope !4, !noalias !3
  %c4686 = zext i32 %gml4685 to i64
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117080 word 0xb97b9289
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %t4689 = add i64 %r4688, 15248
  %gmp4690 = inttoptr i64 %t4689 to ptr
  %gml4691 = load i32, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  %c4692 = zext i32 %gml4691 to i64
  %wp4693 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4692, ptr %wp4693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117084 word 0x1ac90908
  %r4694.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4694 = load i64, ptr %r4694.p, align 8, !alias.scope !3, !noalias !4
  %c4695 = trunc i64 %r4694 to i32
  %r4696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4696 = load i64, ptr %r4696.p, align 8, !alias.scope !3, !noalias !4
  %c4697 = trunc i64 %r4696 to i32
  %cmp4698 = icmp eq i32 %c4697, 0
  %sel4699 = select i1 %cmp4698, i32 1, i32 %c4697
  %t4700 = udiv i32 %c4695, %sel4699
  %sel4701 = select i1 %cmp4698, i32 0, i32 %t4700
  %c4702 = zext i32 %sel4701 to i64
  %wp4703 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4702, ptr %wp4703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117088 word 0xb97b9689
  %r4704.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4704 = load i64, ptr %r4704.p, align 8, !alias.scope !3, !noalias !4
  %t4705 = add i64 %r4704, 15252
  %gmp4706 = inttoptr i64 %t4705 to ptr
  %gml4707 = load i32, ptr %gmp4706, align 1, !alias.scope !4, !noalias !3
  %c4708 = zext i32 %gml4707 to i64
  %wp4709 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4708, ptr %wp4709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011708c word 0x6b09011f
  %r4710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4710 = load i64, ptr %r4710.p, align 8, !alias.scope !3, !noalias !4
  %c4711 = trunc i64 %r4710 to i32
  %r4712.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4712 = load i64, ptr %r4712.p, align 8, !alias.scope !3, !noalias !4
  %c4713 = trunc i64 %r4712 to i32
  %t4714 = sub i32 %c4711, %c4713
  %fn4715 = icmp slt i32 %t4714, 0
  %fz4716 = icmp eq i32 %t4714, 0
  %fc4717 = icmp uge i32 %c4711, %c4713
  %fx14718 = xor i32 %c4711, %c4713
  %fx24719 = xor i32 %c4711, %t4714
  %fva4720 = and i32 %fx14718, %fx24719
  %fv4721 = icmp slt i32 %fva4720, 0
  %nz4722 = zext i1 %fn4715 to i64
  %zz4723 = zext i1 %fz4716 to i64
  %cz4724 = zext i1 %fc4717 to i64
  %vz4725 = zext i1 %fv4721 to i64
  %ns4726 = shl i64 %nz4722, 31
  %zs4727 = shl i64 %zz4723, 30
  %cs4728 = shl i64 %cz4724, 29
  %vs4729 = shl i64 %vz4725, 28
  %nzor4730 = or i64 %ns4726, %zs4727
  %cvor4731 = or i64 %cs4728, %vs4729
  %nzcv4732 = or i64 %nzor4730, %cvor4731
  %wp4733 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4732, ptr %wp4733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117090 word 0x1a89b108
  %r4734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4734 = load i64, ptr %r4734.p, align 8, !alias.scope !3, !noalias !4
  %c4735 = trunc i64 %r4734 to i32
  %r4736.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4736 = load i64, ptr %r4736.p, align 8, !alias.scope !3, !noalias !4
  %c4737 = trunc i64 %r4736 to i32
  %r4738.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4738 = load i64, ptr %r4738.p, align 8, !alias.scope !3, !noalias !4
  %fsh4740 = lshr i64 %r4738, 31
  %ftr4741 = trunc i64 %fsh4740 to i1
  %fsh4742 = lshr i64 %r4738, 28
  %ftr4743 = trunc i64 %fsh4742 to i1
  %cond4739 = icmp ne i1 %ftr4741, %ftr4743
  %sel4744 = select i1 %cond4739, i32 %c4735, i32 %c4737
  %c4745 = zext i32 %sel4744 to i64
  %wp4746 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4745, ptr %wp4746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117094 word 0x34000888
  %r4747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4747 = load i64, ptr %r4747.p, align 8, !alias.scope !3, !noalias !4
  %c4748 = trunc i64 %r4747 to i32
  %cmp4749 = icmp eq i32 %c4748, 0
  br i1 %cmp4749, label %L_8001171a4, label %L_800117098_ft
L_800117098_ft:
  ; @pc 0x800117098 word 0xb94002d1
  %r4750.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4750 = load i64, ptr %r4750.p, align 8, !alias.scope !3, !noalias !4
  %gmp4751 = inttoptr i64 %r4750 to ptr
  %gml4752 = load i32, ptr %gmp4751, align 1, !alias.scope !4, !noalias !3
  %c4753 = zext i32 %gml4752 to i64
  %wp4754 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c4753, ptr %wp4754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011709c word 0x71000509
  %r4755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4755 = load i64, ptr %r4755.p, align 8, !alias.scope !3, !noalias !4
  %c4756 = trunc i64 %r4755 to i32
  %t4757 = sub i32 %c4756, 1
  %fn4758 = icmp slt i32 %t4757, 0
  %fz4759 = icmp eq i32 %t4757, 0
  %fc4760 = icmp uge i32 %c4756, 1
  %fx14761 = xor i32 %c4756, 1
  %fx24762 = xor i32 %c4756, %t4757
  %fva4763 = and i32 %fx14761, %fx24762
  %fv4764 = icmp slt i32 %fva4763, 0
  %nz4765 = zext i1 %fn4758 to i64
  %zz4766 = zext i1 %fz4759 to i64
  %cz4767 = zext i1 %fc4760 to i64
  %vz4768 = zext i1 %fv4764 to i64
  %ns4769 = shl i64 %nz4765, 31
  %zs4770 = shl i64 %zz4766, 30
  %cs4771 = shl i64 %cz4767, 29
  %vs4772 = shl i64 %vz4768, 28
  %nzor4773 = or i64 %ns4769, %zs4770
  %cvor4774 = or i64 %cs4771, %vs4772
  %nzcv4775 = or i64 %nzor4773, %cvor4774
  %wp4776 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4775, ptr %wp4776, align 8, !alias.scope !3, !noalias !4
  %c4777 = zext i32 %t4757 to i64
  %wp4778 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4777, ptr %wp4778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170a0 word 0xb94002cc
  %r4779.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4779 = load i64, ptr %r4779.p, align 8, !alias.scope !3, !noalias !4
  %gmp4780 = inttoptr i64 %r4779 to ptr
  %gml4781 = load i32, ptr %gmp4780, align 1, !alias.scope !4, !noalias !3
  %c4782 = zext i32 %gml4781 to i64
  %wp4783 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4782, ptr %wp4783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170a4 word 0x5400080b
  %r4784.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4784 = load i64, ptr %r4784.p, align 8, !alias.scope !3, !noalias !4
  %fsh4786 = lshr i64 %r4784, 31
  %ftr4787 = trunc i64 %fsh4786 to i1
  %fsh4788 = lshr i64 %r4784, 28
  %ftr4789 = trunc i64 %fsh4788 to i1
  %cond4785 = icmp ne i1 %ftr4787, %ftr4789
  br i1 %cond4785, label %L_8001171a4, label %L_8001170a8_ft
L_8001170a8_ft:
  ; @pc 0x8001170a8 word 0x1ac80d8d
  %r4790.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4790 = load i64, ptr %r4790.p, align 8, !alias.scope !3, !noalias !4
  %c4791 = trunc i64 %r4790 to i32
  %r4792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4792 = load i64, ptr %r4792.p, align 8, !alias.scope !3, !noalias !4
  %c4793 = trunc i64 %r4792 to i32
  %cmp4794 = icmp eq i32 %c4793, 0
  %cmp4795 = icmp eq i32 %c4793, -1
  %cmp4796 = icmp eq i32 %c4791, -2147483648
  %t4797 = and i1 %cmp4796, %cmp4795
  %t4798 = or i1 %cmp4794, %t4797
  %sel4799 = select i1 %t4798, i32 1, i32 %c4793
  %t4800 = sdiv i32 %c4791, %sel4799
  %sel4801 = select i1 %t4797, i32 %c4791, i32 %t4800
  %sel4802 = select i1 %cmp4794, i32 0, i32 %sel4801
  %c4803 = zext i32 %sel4802 to i64
  %wp4804 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4803, ptr %wp4804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170ac word 0x5287700e
  %c4805 = zext i32 15232 to i64
  %wp4806 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c4805, ptr %wp4806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170b0 word 0x2a1f03ea
  %t4807 = or i32 0, 0
  %c4808 = zext i32 %t4807 to i64
  %wp4809 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4808, ptr %wp4809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170b4 word 0x2a1f03eb
  %t4810 = or i32 0, 0
  %c4811 = zext i32 %t4810 to i64
  %wp4812 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4811, ptr %wp4812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170b8 word 0x8b0e028e
  %r4813.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4813 = load i64, ptr %r4813.p, align 8, !alias.scope !3, !noalias !4
  %r4814.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4814 = load i64, ptr %r4814.p, align 8, !alias.scope !3, !noalias !4
  %t4815 = add i64 %r4813, %r4814
  %wp4816 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4815, ptr %wp4816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170bc word 0x5280050f
  %c4817 = zext i32 40 to i64
  %wp4818 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4817, ptr %wp4818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170c0 word 0x529999b0
  %c4819 = zext i32 52429 to i64
  %wp4820 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4819, ptr %wp4820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170c4 word 0x72a7b990
  %r4821.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4821 = load i64, ptr %r4821.p, align 8, !alias.scope !3, !noalias !4
  %t4822 = and i64 %r4821, -4294901761
  %t4823 = or i64 %t4822, 1036779520
  %c4824 = trunc i64 %t4823 to i32
  %c4825 = zext i32 %c4824 to i64
  %wp4826 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4825, ptr %wp4826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170c8 word 0x1b08b1ac
  %r4827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4827 = load i64, ptr %r4827.p, align 8, !alias.scope !3, !noalias !4
  %c4828 = trunc i64 %r4827 to i32
  %r4829.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4829 = load i64, ptr %r4829.p, align 8, !alias.scope !3, !noalias !4
  %c4830 = trunc i64 %r4829 to i32
  %t4831 = mul i32 %c4830, %c4828
  %r4832.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4832 = load i64, ptr %r4832.p, align 8, !alias.scope !3, !noalias !4
  %c4833 = trunc i64 %r4832 to i32
  %t4834 = sub i32 %c4833, %t4831
  %c4835 = zext i32 %t4834 to i64
  %wp4836 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4835, ptr %wp4836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170cc word 0x52876f0d
  %c4837 = zext i32 15224 to i64
  %wp4838 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4837, ptr %wp4838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170d0 word 0x8b0d028d
  %r4839.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4839 = load i64, ptr %r4839.p, align 8, !alias.scope !3, !noalias !4
  %r4840.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4840 = load i64, ptr %r4840.p, align 8, !alias.scope !3, !noalias !4
  %t4841 = add i64 %r4839, %r4840
  %wp4842 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4841, ptr %wp4842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170d4 word 0x1ac80e31
  %r4843.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4843 = load i64, ptr %r4843.p, align 8, !alias.scope !3, !noalias !4
  %c4844 = trunc i64 %r4843 to i32
  %r4845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4845 = load i64, ptr %r4845.p, align 8, !alias.scope !3, !noalias !4
  %c4846 = trunc i64 %r4845 to i32
  %cmp4847 = icmp eq i32 %c4846, 0
  %cmp4848 = icmp eq i32 %c4846, -1
  %cmp4849 = icmp eq i32 %c4844, -2147483648
  %t4850 = and i1 %cmp4849, %cmp4848
  %t4851 = or i1 %cmp4847, %t4850
  %sel4852 = select i1 %t4851, i32 1, i32 %c4846
  %t4853 = sdiv i32 %c4844, %sel4852
  %sel4854 = select i1 %t4850, i32 %c4844, i32 %t4853
  %sel4855 = select i1 %cmp4847, i32 0, i32 %sel4854
  %c4856 = zext i32 %sel4855 to i64
  %wp4857 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c4856, ptr %wp4857, align 8, !alias.scope !3, !noalias !4
  br label %L_8001170d8
L_8001170e8_ft:
  ; @pc 0x8001170e8 word 0xb97b6a81
  %r4890.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4890 = load i64, ptr %r4890.p, align 8, !alias.scope !3, !noalias !4
  %t4891 = add i64 %r4890, 15208
  %gmp4892 = inttoptr i64 %t4891 to ptr
  %gml4893 = load i32, ptr %gmp4892, align 1, !alias.scope !4, !noalias !3
  %c4894 = zext i32 %gml4893 to i64
  %wp4895 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4894, ptr %wp4895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170ec word 0x6b09015f
  %r4896.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4896 = load i64, ptr %r4896.p, align 8, !alias.scope !3, !noalias !4
  %c4897 = trunc i64 %r4896 to i32
  %r4898.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4898 = load i64, ptr %r4898.p, align 8, !alias.scope !3, !noalias !4
  %c4899 = trunc i64 %r4898 to i32
  %t4900 = sub i32 %c4897, %c4899
  %fn4901 = icmp slt i32 %t4900, 0
  %fz4902 = icmp eq i32 %t4900, 0
  %fc4903 = icmp uge i32 %c4897, %c4899
  %fx14904 = xor i32 %c4897, %c4899
  %fx24905 = xor i32 %c4897, %t4900
  %fva4906 = and i32 %fx14904, %fx24905
  %fv4907 = icmp slt i32 %fva4906, 0
  %nz4908 = zext i1 %fn4901 to i64
  %zz4909 = zext i1 %fz4902 to i64
  %cz4910 = zext i1 %fc4903 to i64
  %vz4911 = zext i1 %fv4907 to i64
  %ns4912 = shl i64 %nz4908, 31
  %zs4913 = shl i64 %zz4909, 30
  %cs4914 = shl i64 %cz4910, 29
  %vs4915 = shl i64 %vz4911, 28
  %nzor4916 = or i64 %ns4912, %zs4913
  %cvor4917 = or i64 %cs4914, %vs4915
  %nzcv4918 = or i64 %nzor4916, %cvor4917
  %wp4919 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4918, ptr %wp4919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170f0 word 0x1a9f0182
  %r4920.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4920 = load i64, ptr %r4920.p, align 8, !alias.scope !3, !noalias !4
  %c4921 = trunc i64 %r4920 to i32
  %r4922.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4922 = load i64, ptr %r4922.p, align 8, !alias.scope !3, !noalias !4
  %fsh4924 = lshr i64 %r4922, 30
  %cond4923 = trunc i64 %fsh4924 to i1
  %sel4925 = select i1 %cond4923, i32 %c4921, i32 0
  %c4926 = zext i32 %sel4925 to i64
  %wp4927 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4926, ptr %wp4927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170f4 word 0xf95dba80
  %r4928.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4928 = load i64, ptr %r4928.p, align 8, !alias.scope !3, !noalias !4
  %t4929 = add i64 %r4928, 15216
  %gmp4930 = inttoptr i64 %t4929 to ptr
  %gml4931 = load i64, ptr %gmp4930, align 1, !alias.scope !4, !noalias !3
  %wp4932 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4931, ptr %wp4932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170f8 word 0x6b12003f
  %r4933.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4933 = load i64, ptr %r4933.p, align 8, !alias.scope !3, !noalias !4
  %c4934 = trunc i64 %r4933 to i32
  %r4935.p = getelementptr inbounds i8, ptr %c, i64 144
  %r4935 = load i64, ptr %r4935.p, align 8, !alias.scope !3, !noalias !4
  %c4936 = trunc i64 %r4935 to i32
  %t4937 = sub i32 %c4934, %c4936
  %fn4938 = icmp slt i32 %t4937, 0
  %fz4939 = icmp eq i32 %t4937, 0
  %fc4940 = icmp uge i32 %c4934, %c4936
  %fx14941 = xor i32 %c4934, %c4936
  %fx24942 = xor i32 %c4934, %t4937
  %fva4943 = and i32 %fx14941, %fx24942
  %fv4944 = icmp slt i32 %fva4943, 0
  %nz4945 = zext i1 %fn4938 to i64
  %zz4946 = zext i1 %fz4939 to i64
  %cz4947 = zext i1 %fc4940 to i64
  %vz4948 = zext i1 %fv4944 to i64
  %ns4949 = shl i64 %nz4945, 31
  %zs4950 = shl i64 %zz4946, 30
  %cs4951 = shl i64 %cz4947, 29
  %vs4952 = shl i64 %vz4948, 28
  %nzor4953 = or i64 %ns4949, %zs4950
  %cvor4954 = or i64 %cs4951, %vs4952
  %nzcv4955 = or i64 %nzor4953, %cvor4954
  %wp4956 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4955, ptr %wp4956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001170fc word 0x54001e89
  %r4957.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4957 = load i64, ptr %r4957.p, align 8, !alias.scope !3, !noalias !4
  %fsh4959 = lshr i64 %r4957, 29
  %ftr4960 = trunc i64 %fsh4959 to i1
  %fsh4961 = lshr i64 %r4957, 30
  %ftr4962 = trunc i64 %fsh4961 to i1
  %fnz4963 = xor i1 %ftr4962, true
  %fhi4964 = and i1 %ftr4960, %fnz4963
  %cond4958 = xor i1 %fhi4964, true
  br i1 %cond4958, label %L_8001174cc, label %L_800117100_ft
L_800117100_ft:
  ; @pc 0x800117100 word 0x93407e41
  %r4965.p = getelementptr inbounds i8, ptr %c, i64 144
  %r4965 = load i64, ptr %r4965.p, align 8, !alias.scope !3, !noalias !4
  %t4966 = lshr i64 %r4965, 31
  %t4967 = and i64 %t4966, 1
  %t4968 = sub i64 0, %t4967
  %t4969 = and i64 %t4968, -4294967296
  %t4970 = and i64 %r4965, 4294967295
  %t4971 = or i64 %t4969, %t4970
  %wp4972 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4971, ptr %wp4972, align 8, !alias.scope !3, !noalias !4
  br label %L_800117104
L_800117128_ft:
  ; @pc 0x800117128 word 0x7100045f
  %r5044.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5044 = load i64, ptr %r5044.p, align 8, !alias.scope !3, !noalias !4
  %c5045 = trunc i64 %r5044 to i32
  %t5046 = sub i32 %c5045, 1
  %fn5047 = icmp slt i32 %t5046, 0
  %fz5048 = icmp eq i32 %t5046, 0
  %fc5049 = icmp uge i32 %c5045, 1
  %fx15050 = xor i32 %c5045, 1
  %fx25051 = xor i32 %c5045, %t5046
  %fva5052 = and i32 %fx15050, %fx25051
  %fv5053 = icmp slt i32 %fva5052, 0
  %nz5054 = zext i1 %fn5047 to i64
  %zz5055 = zext i1 %fz5048 to i64
  %cz5056 = zext i1 %fc5049 to i64
  %vz5057 = zext i1 %fv5053 to i64
  %ns5058 = shl i64 %nz5054, 31
  %zs5059 = shl i64 %zz5055, 30
  %cs5060 = shl i64 %cz5056, 29
  %vs5061 = shl i64 %vz5057, 28
  %nzor5062 = or i64 %ns5058, %zs5059
  %cvor5063 = or i64 %cs5060, %vs5061
  %nzcv5064 = or i64 %nzor5062, %cvor5063
  %wp5065 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5064, ptr %wp5065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011712c word 0x54000340
  %r5066.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5066 = load i64, ptr %r5066.p, align 8, !alias.scope !3, !noalias !4
  %fsh5068 = lshr i64 %r5066, 30
  %cond5067 = trunc i64 %fsh5068 to i1
  br i1 %cond5067, label %L_800117194, label %L_800117130_ft
L_800117130_ft:
  ; @pc 0x800117130 word 0x71000c5f
  %r5069.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5069 = load i64, ptr %r5069.p, align 8, !alias.scope !3, !noalias !4
  %c5070 = trunc i64 %r5069 to i32
  %t5071 = sub i32 %c5070, 3
  %fn5072 = icmp slt i32 %t5071, 0
  %fz5073 = icmp eq i32 %t5071, 0
  %fc5074 = icmp uge i32 %c5070, 3
  %fx15075 = xor i32 %c5070, 3
  %fx25076 = xor i32 %c5070, %t5071
  %fva5077 = and i32 %fx15075, %fx25076
  %fv5078 = icmp slt i32 %fva5077, 0
  %nz5079 = zext i1 %fn5072 to i64
  %zz5080 = zext i1 %fz5073 to i64
  %cz5081 = zext i1 %fc5074 to i64
  %vz5082 = zext i1 %fv5078 to i64
  %ns5083 = shl i64 %nz5079, 31
  %zs5084 = shl i64 %zz5080, 30
  %cs5085 = shl i64 %cz5081, 29
  %vs5086 = shl i64 %vz5082, 28
  %nzor5087 = or i64 %ns5083, %zs5084
  %cvor5088 = or i64 %cs5085, %vs5086
  %nzcv5089 = or i64 %nzor5087, %cvor5088
  %wp5090 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5089, ptr %wp5090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117134 word 0x2a1103e2
  %r5091.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5091 = load i64, ptr %r5091.p, align 8, !alias.scope !3, !noalias !4
  %c5092 = trunc i64 %r5091 to i32
  %t5093 = or i32 0, %c5092
  %c5094 = zext i32 %t5093 to i64
  %wp5095 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5094, ptr %wp5095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117138 word 0x540000c1
  %r5096.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5096 = load i64, ptr %r5096.p, align 8, !alias.scope !3, !noalias !4
  %fsh5098 = lshr i64 %r5096, 30
  %ftr5099 = trunc i64 %fsh5098 to i1
  %cond5097 = xor i1 %ftr5099, true
  br i1 %cond5097, label %L_800117150, label %L_80011713c_ft
L_80011713c_ft:
  ; @pc 0x80011713c word 0x140000c8
  br label %L_80011745c
L_800117168_ft:
  ; @pc 0x800117168 word 0xb97b8681
  %r5158.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5158 = load i64, ptr %r5158.p, align 8, !alias.scope !3, !noalias !4
  %t5159 = add i64 %r5158, 15236
  %gmp5160 = inttoptr i64 %t5159 to ptr
  %gml5161 = load i32, ptr %gmp5160, align 1, !alias.scope !4, !noalias !3
  %c5162 = zext i32 %gml5161 to i64
  %wp5163 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5162, ptr %wp5163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011716c word 0x6b00003f
  %r5164.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5164 = load i64, ptr %r5164.p, align 8, !alias.scope !3, !noalias !4
  %c5165 = trunc i64 %r5164 to i32
  %r5166.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5166 = load i64, ptr %r5166.p, align 8, !alias.scope !3, !noalias !4
  %c5167 = trunc i64 %r5166 to i32
  %t5168 = sub i32 %c5165, %c5167
  %fn5169 = icmp slt i32 %t5168, 0
  %fz5170 = icmp eq i32 %t5168, 0
  %fc5171 = icmp uge i32 %c5165, %c5167
  %fx15172 = xor i32 %c5165, %c5167
  %fx25173 = xor i32 %c5165, %t5168
  %fva5174 = and i32 %fx15172, %fx25173
  %fv5175 = icmp slt i32 %fva5174, 0
  %nz5176 = zext i1 %fn5169 to i64
  %zz5177 = zext i1 %fz5170 to i64
  %cz5178 = zext i1 %fc5171 to i64
  %vz5179 = zext i1 %fv5175 to i64
  %ns5180 = shl i64 %nz5176, 31
  %zs5181 = shl i64 %zz5177, 30
  %cs5182 = shl i64 %cz5178, 29
  %vs5183 = shl i64 %vz5179, 28
  %nzor5184 = or i64 %ns5180, %zs5181
  %cvor5185 = or i64 %cs5182, %vs5183
  %nzcv5186 = or i64 %nzor5184, %cvor5185
  %wp5187 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5186, ptr %wp5187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117170 word 0x5400008d
  %r5188.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5188 = load i64, ptr %r5188.p, align 8, !alias.scope !3, !noalias !4
  %fsh5190 = lshr i64 %r5188, 30
  %ftr5191 = trunc i64 %fsh5190 to i1
  %fsh5192 = lshr i64 %r5188, 31
  %ftr5193 = trunc i64 %fsh5192 to i1
  %fsh5194 = lshr i64 %r5188, 28
  %ftr5195 = trunc i64 %fsh5194 to i1
  %fnz5196 = xor i1 %ftr5191, true
  %feq5197 = icmp eq i1 %ftr5193, %ftr5195
  %fgt5198 = and i1 %fnz5196, %feq5197
  %cond5189 = xor i1 %fgt5198, true
  br i1 %cond5189, label %L_800117180, label %L_800117174_ft
L_800117174_ft:
  ; @pc 0x800117174 word 0xf95dc681
  %r5199.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5199 = load i64, ptr %r5199.p, align 8, !alias.scope !3, !noalias !4
  %t5200 = add i64 %r5199, 15240
  %gmp5201 = inttoptr i64 %t5200 to ptr
  %gml5202 = load i64, ptr %gmp5201, align 1, !alias.scope !4, !noalias !3
  %wp5203 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5202, ptr %wp5203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117178 word 0x937d7c00
  %r5204.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5204 = load i64, ptr %r5204.p, align 8, !alias.scope !3, !noalias !4
  %ror5205 = call i64 @llvm.fshr.i64(i64 %r5204, i64 %r5204, i64 61)
  %t5206 = lshr i64 %r5204, 31
  %t5207 = and i64 %t5206, 1
  %t5208 = sub i64 0, %t5207
  %t5209 = and i64 %t5208, -34359738368
  %t5210 = and i64 %ror5205, 34359738360
  %t5211 = or i64 %t5209, %t5210
  %wp5212 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5211, ptr %wp5212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011717c word 0xf8206832
  %r5213.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5213 = load i64, ptr %r5213.p, align 8, !alias.scope !3, !noalias !4
  %r5214.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5214 = load i64, ptr %r5214.p, align 8, !alias.scope !3, !noalias !4
  %t5215 = add i64 %r5213, %r5214
  %r5216.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5216 = load i64, ptr %r5216.p, align 8, !alias.scope !3, !noalias !4
  %gmp5217 = inttoptr i64 %t5215 to ptr
  store i64 %r5216, ptr %gmp5217, align 1, !alias.scope !4, !noalias !3
  br label %L_800117180
L_800117190_ft:
  ; @pc 0x800117190 word 0x14000005
  br label %L_8001171a4
L_800117278_ft:
  ; @pc 0x800117278 word 0x9bab254c
  %r5559.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5559 = load i64, ptr %r5559.p, align 8, !alias.scope !3, !noalias !4
  %c5560 = trunc i64 %r5559 to i32
  %c5561 = zext i32 %c5560 to i64
  %r5562.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5562 = load i64, ptr %r5562.p, align 8, !alias.scope !3, !noalias !4
  %c5563 = trunc i64 %r5562 to i32
  %c5564 = zext i32 %c5563 to i64
  %t5565 = mul i64 %c5561, %c5564
  %r5566.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5566 = load i64, ptr %r5566.p, align 8, !alias.scope !3, !noalias !4
  %t5567 = add i64 %r5566, %t5565
  %wp5568 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5567, ptr %wp5568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011727c word 0x91014189
  %r5569.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5569 = load i64, ptr %r5569.p, align 8, !alias.scope !3, !noalias !4
  %t5570 = add i64 %r5569, 80
  %wp5571 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5570, ptr %wp5571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117280 word 0x9101518a
  %r5572.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5572 = load i64, ptr %r5572.p, align 8, !alias.scope !3, !noalias !4
  %t5573 = add i64 %r5572, 84
  %wp5574 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5573, ptr %wp5574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117284 word 0x9101618b
  %r5575.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5575 = load i64, ptr %r5575.p, align 8, !alias.scope !3, !noalias !4
  %t5576 = add i64 %r5575, 88
  %wp5577 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t5576, ptr %wp5577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117288 word 0x9101718c
  %r5578.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5578 = load i64, ptr %r5578.p, align 8, !alias.scope !3, !noalias !4
  %t5579 = add i64 %r5578, 92
  %wp5580 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5579, ptr %wp5580, align 8, !alias.scope !3, !noalias !4
  br label %L_80011728c
L_8001172c0_ft:
  ; @pc 0x8001172c0 word 0xa942312a
  %r5679.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5679 = load i64, ptr %r5679.p, align 8, !alias.scope !3, !noalias !4
  %t5680 = add i64 %r5679, 32
  %t5681 = add i64 %t5680, 8
  %gmp5682 = inttoptr i64 %t5680 to ptr
  %gml5683 = load i64, ptr %gmp5682, align 1, !alias.scope !4, !noalias !3
  %gmp5684 = inttoptr i64 %t5681 to ptr
  %gml5685 = load i64, ptr %gmp5684, align 1, !alias.scope !4, !noalias !3
  %wp5686 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5683, ptr %wp5686, align 8, !alias.scope !3, !noalias !4
  %wp5687 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5685, ptr %wp5687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172c4 word 0xa900334a
  %r5688.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5688 = load i64, ptr %r5688.p, align 8, !alias.scope !3, !noalias !4
  %t5689 = add i64 %r5688, 8
  %r5690.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5690 = load i64, ptr %r5690.p, align 8, !alias.scope !3, !noalias !4
  %gmp5691 = inttoptr i64 %r5688 to ptr
  store i64 %r5690, ptr %gmp5691, align 1, !alias.scope !4, !noalias !3
  %r5692.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5692 = load i64, ptr %r5692.p, align 8, !alias.scope !3, !noalias !4
  %gmp5693 = inttoptr i64 %t5689 to ptr
  store i64 %r5692, ptr %gmp5693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001172c8 word 0xf940192a
  %r5694.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5694 = load i64, ptr %r5694.p, align 8, !alias.scope !3, !noalias !4
  %t5695 = add i64 %r5694, 48
  %gmp5696 = inttoptr i64 %t5695 to ptr
  %gml5697 = load i64, ptr %gmp5696, align 1, !alias.scope !4, !noalias !3
  %wp5698 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5697, ptr %wp5698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172cc word 0xb9403929
  %r5699.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5699 = load i64, ptr %r5699.p, align 8, !alias.scope !3, !noalias !4
  %t5700 = add i64 %r5699, 56
  %gmp5701 = inttoptr i64 %t5700 to ptr
  %gml5702 = load i32, ptr %gmp5701, align 1, !alias.scope !4, !noalias !3
  %c5703 = zext i32 %gml5702 to i64
  %wp5704 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5703, ptr %wp5704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172d0 word 0xb9000b29
  %r5705.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5705 = load i64, ptr %r5705.p, align 8, !alias.scope !3, !noalias !4
  %t5706 = add i64 %r5705, 8
  %r5707.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5707 = load i64, ptr %r5707.p, align 8, !alias.scope !3, !noalias !4
  %c5708 = trunc i64 %r5707 to i32
  %gmp5709 = inttoptr i64 %t5706 to ptr
  store i32 %c5708, ptr %gmp5709, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001172d4 word 0xf900032a
  %r5710.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5710 = load i64, ptr %r5710.p, align 8, !alias.scope !3, !noalias !4
  %r5711.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5711 = load i64, ptr %r5711.p, align 8, !alias.scope !3, !noalias !4
  %gmp5712 = inttoptr i64 %r5710 to ptr
  store i64 %r5711, ptr %gmp5712, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001172d8 word 0xb9400ac9
  %r5713.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5713 = load i64, ptr %r5713.p, align 8, !alias.scope !3, !noalias !4
  %t5714 = add i64 %r5713, 8
  %gmp5715 = inttoptr i64 %t5714 to ptr
  %gml5716 = load i32, ptr %gmp5715, align 1, !alias.scope !4, !noalias !3
  %c5717 = zext i32 %gml5716 to i64
  %wp5718 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5717, ptr %wp5718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172dc word 0xf9400aca
  %r5719.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5719 = load i64, ptr %r5719.p, align 8, !alias.scope !3, !noalias !4
  %t5720 = add i64 %r5719, 16
  %gmp5721 = inttoptr i64 %t5720 to ptr
  %gml5722 = load i64, ptr %gmp5721, align 1, !alias.scope !4, !noalias !3
  %wp5723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5722, ptr %wp5723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172e0 word 0x6b08013f
  %r5724.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5724 = load i64, ptr %r5724.p, align 8, !alias.scope !3, !noalias !4
  %c5725 = trunc i64 %r5724 to i32
  %r5726.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5726 = load i64, ptr %r5726.p, align 8, !alias.scope !3, !noalias !4
  %c5727 = trunc i64 %r5726 to i32
  %t5728 = sub i32 %c5725, %c5727
  %fn5729 = icmp slt i32 %t5728, 0
  %fz5730 = icmp eq i32 %t5728, 0
  %fc5731 = icmp uge i32 %c5725, %c5727
  %fx15732 = xor i32 %c5725, %c5727
  %fx25733 = xor i32 %c5725, %t5728
  %fva5734 = and i32 %fx15732, %fx25733
  %fv5735 = icmp slt i32 %fva5734, 0
  %nz5736 = zext i1 %fn5729 to i64
  %zz5737 = zext i1 %fz5730 to i64
  %cz5738 = zext i1 %fc5731 to i64
  %vz5739 = zext i1 %fv5735 to i64
  %ns5740 = shl i64 %nz5736, 31
  %zs5741 = shl i64 %zz5737, 30
  %cs5742 = shl i64 %cz5738, 29
  %vs5743 = shl i64 %vz5739, 28
  %nzor5744 = or i64 %ns5740, %zs5741
  %cvor5745 = or i64 %cs5742, %vs5743
  %nzcv5746 = or i64 %nzor5744, %cvor5745
  %wp5747 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5746, ptr %wp5747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172e4 word 0x9a9f8108
  %r5748.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5748 = load i64, ptr %r5748.p, align 8, !alias.scope !3, !noalias !4
  %r5749.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5749 = load i64, ptr %r5749.p, align 8, !alias.scope !3, !noalias !4
  %fsh5751 = lshr i64 %r5749, 29
  %ftr5752 = trunc i64 %fsh5751 to i1
  %fsh5753 = lshr i64 %r5749, 30
  %ftr5754 = trunc i64 %fsh5753 to i1
  %fnz5755 = xor i1 %ftr5754, true
  %cond5750 = and i1 %ftr5752, %fnz5755
  %sel5756 = select i1 %cond5750, i64 %r5748, i64 0
  %wp5757 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel5756, ptr %wp5757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172e8 word 0x9bab2908
  %r5758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5758 = load i64, ptr %r5758.p, align 8, !alias.scope !3, !noalias !4
  %c5759 = trunc i64 %r5758 to i32
  %c5760 = zext i32 %c5759 to i64
  %r5761.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5761 = load i64, ptr %r5761.p, align 8, !alias.scope !3, !noalias !4
  %c5762 = trunc i64 %r5761 to i32
  %c5763 = zext i32 %c5762 to i64
  %t5764 = mul i64 %c5760, %c5763
  %r5765.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5765 = load i64, ptr %r5765.p, align 8, !alias.scope !3, !noalias !4
  %t5766 = add i64 %r5765, %t5764
  %wp5767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5766, ptr %wp5767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001172ec word 0x91010108
  %r5768.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5768 = load i64, ptr %r5768.p, align 8, !alias.scope !3, !noalias !4
  %t5769 = add i64 %r5768, 64
  %wp5770 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5769, ptr %wp5770, align 8, !alias.scope !3, !noalias !4
  br label %L_8001172f0
L_8001172f8_ft:
  ; @pc 0x8001172f8 word 0x39430129
  %r5778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5778 = load i64, ptr %r5778.p, align 8, !alias.scope !3, !noalias !4
  %t5779 = add i64 %r5778, 192
  %gmp5780 = inttoptr i64 %t5779 to ptr
  %gml5781 = load i8, ptr %gmp5780, align 1, !alias.scope !4, !noalias !3
  %c5782 = zext i8 %gml5781 to i64
  %wp5783 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5782, ptr %wp5783, align 8, !alias.scope !3, !noalias !4
  br label %L_8001172fc
L_80011735c_ft:
  ; @pc 0x80011735c word 0x39430108
  %r5888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5888 = load i64, ptr %r5888.p, align 8, !alias.scope !3, !noalias !4
  %t5889 = add i64 %r5888, 192
  %gmp5890 = inttoptr i64 %t5889 to ptr
  %gml5891 = load i8, ptr %gmp5890, align 1, !alias.scope !4, !noalias !3
  %c5892 = zext i8 %gml5891 to i64
  %wp5893 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5892, ptr %wp5893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117360 word 0x17ffff1c
  br label %L_800116fd0
L_800117594_ft:
  ; @pc 0x800117594 word 0xf94f668a
  %r6511.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6511 = load i64, ptr %r6511.p, align 8, !alias.scope !3, !noalias !4
  %t6512 = add i64 %r6511, 7880
  %gmp6513 = inttoptr i64 %t6512 to ptr
  %gml6514 = load i64, ptr %gmp6513, align 1, !alias.scope !4, !noalias !3
  %wp6515 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6514, ptr %wp6515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117598 word 0x3940226b
  %r6516.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6516 = load i64, ptr %r6516.p, align 8, !alias.scope !3, !noalias !4
  %t6517 = add i64 %r6516, 8
  %gmp6518 = inttoptr i64 %t6517 to ptr
  %gml6519 = load i8, ptr %gmp6518, align 1, !alias.scope !4, !noalias !3
  %c6520 = zext i8 %gml6519 to i64
  %wp6521 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6520, ptr %wp6521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011759c word 0xb940094c
  %r6522.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6522 = load i64, ptr %r6522.p, align 8, !alias.scope !3, !noalias !4
  %t6523 = add i64 %r6522, 8
  %gmp6524 = inttoptr i64 %t6523 to ptr
  %gml6525 = load i32, ptr %gmp6524, align 1, !alias.scope !4, !noalias !3
  %c6526 = zext i32 %gml6525 to i64
  %wp6527 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6526, ptr %wp6527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175a0 word 0xf940094a
  %r6528.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6528 = load i64, ptr %r6528.p, align 8, !alias.scope !3, !noalias !4
  %t6529 = add i64 %r6528, 16
  %gmp6530 = inttoptr i64 %t6529 to ptr
  %gml6531 = load i64, ptr %gmp6530, align 1, !alias.scope !4, !noalias !3
  %wp6532 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6531, ptr %wp6532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175a4 word 0x6b0b019f
  %r6533.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6533 = load i64, ptr %r6533.p, align 8, !alias.scope !3, !noalias !4
  %c6534 = trunc i64 %r6533 to i32
  %r6535.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6535 = load i64, ptr %r6535.p, align 8, !alias.scope !3, !noalias !4
  %c6536 = trunc i64 %r6535 to i32
  %t6537 = sub i32 %c6534, %c6536
  %fn6538 = icmp slt i32 %t6537, 0
  %fz6539 = icmp eq i32 %t6537, 0
  %fc6540 = icmp uge i32 %c6534, %c6536
  %fx16541 = xor i32 %c6534, %c6536
  %fx26542 = xor i32 %c6534, %t6537
  %fva6543 = and i32 %fx16541, %fx26542
  %fv6544 = icmp slt i32 %fva6543, 0
  %nz6545 = zext i1 %fn6538 to i64
  %zz6546 = zext i1 %fz6539 to i64
  %cz6547 = zext i1 %fc6540 to i64
  %vz6548 = zext i1 %fv6544 to i64
  %ns6549 = shl i64 %nz6545, 31
  %zs6550 = shl i64 %zz6546, 30
  %cs6551 = shl i64 %cz6547, 29
  %vs6552 = shl i64 %vz6548, 28
  %nzor6553 = or i64 %ns6549, %zs6550
  %cvor6554 = or i64 %cs6551, %vs6552
  %nzcv6555 = or i64 %nzor6553, %cvor6554
  %wp6556 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6555, ptr %wp6556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175a8 word 0x52879c0c
  %c6557 = zext i32 15584 to i64
  %wp6558 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6557, ptr %wp6558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175ac word 0x9a9f816b
  %r6559.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6559 = load i64, ptr %r6559.p, align 8, !alias.scope !3, !noalias !4
  %r6560.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6560 = load i64, ptr %r6560.p, align 8, !alias.scope !3, !noalias !4
  %fsh6562 = lshr i64 %r6560, 29
  %ftr6563 = trunc i64 %fsh6562 to i1
  %fsh6564 = lshr i64 %r6560, 30
  %ftr6565 = trunc i64 %fsh6564 to i1
  %fnz6566 = xor i1 %ftr6565, true
  %cond6561 = and i1 %ftr6563, %fnz6566
  %sel6567 = select i1 %cond6561, i64 %r6559, i64 0
  %wp6568 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %sel6567, ptr %wp6568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175b0 word 0x9bac296a
  %r6569.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6569 = load i64, ptr %r6569.p, align 8, !alias.scope !3, !noalias !4
  %c6570 = trunc i64 %r6569 to i32
  %c6571 = zext i32 %c6570 to i64
  %r6572.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6572 = load i64, ptr %r6572.p, align 8, !alias.scope !3, !noalias !4
  %c6573 = trunc i64 %r6572 to i32
  %c6574 = zext i32 %c6573 to i64
  %t6575 = mul i64 %c6571, %c6574
  %r6576.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6576 = load i64, ptr %r6576.p, align 8, !alias.scope !3, !noalias !4
  %t6577 = add i64 %r6576, %t6575
  %wp6578 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6577, ptr %wp6578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175b4 word 0xbd6e0140
  %r6579.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6579 = load i64, ptr %r6579.p, align 8, !alias.scope !3, !noalias !4
  %t6580 = add i64 %r6579, 11776
  %gmp6581 = inttoptr i64 %t6580 to ptr
  %gml6582 = load i32, ptr %gmp6581, align 1, !alias.scope !4, !noalias !3
  %c6583 = zext i32 %gml6582 to i128
  %wp6584 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6583, ptr %wp6584, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175b8 word 0xbd6e0941
  %r6585.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6585 = load i64, ptr %r6585.p, align 8, !alias.scope !3, !noalias !4
  %t6586 = add i64 %r6585, 11784
  %gmp6587 = inttoptr i64 %t6586 to ptr
  %gml6588 = load i32, ptr %gmp6587, align 1, !alias.scope !4, !noalias !3
  %c6589 = zext i32 %gml6588 to i128
  %wp6590 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6589, ptr %wp6590, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175bc word 0xbd6e0542
  %r6591.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6591 = load i64, ptr %r6591.p, align 8, !alias.scope !3, !noalias !4
  %t6592 = add i64 %r6591, 11780
  %gmp6593 = inttoptr i64 %t6592 to ptr
  %gml6594 = load i32, ptr %gmp6593, align 1, !alias.scope !4, !noalias !3
  %c6595 = zext i32 %gml6594 to i128
  %wp6596 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6595, ptr %wp6596, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175c0 word 0xbd6e0d43
  %r6597.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6597 = load i64, ptr %r6597.p, align 8, !alias.scope !3, !noalias !4
  %t6598 = add i64 %r6597, 11788
  %gmp6599 = inttoptr i64 %t6598 to ptr
  %gml6600 = load i32, ptr %gmp6599, align 1, !alias.scope !4, !noalias !3
  %c6601 = zext i32 %gml6600 to i128
  %wp6602 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c6601, ptr %wp6602, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175c4 word 0xb900a3e8
  %r6603.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6603 = load i64, ptr %r6603.p, align 8, !alias.scope !3, !noalias !4
  %t6604 = add i64 %r6603, 160
  %r6605.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6605 = load i64, ptr %r6605.p, align 8, !alias.scope !3, !noalias !4
  %c6606 = trunc i64 %r6605 to i32
  %gmp6607 = inttoptr i64 %t6604 to ptr
  store i32 %c6606, ptr %gmp6607, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001175c8 word 0xd10027a8
  %r6608.p = getelementptr inbounds i8, ptr %c, i64 232
  %r6608 = load i64, ptr %r6608.p, align 8, !alias.scope !3, !noalias !4
  %t6609 = sub i64 %r6608, 9
  %wp6610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6609, ptr %wp6610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001175cc word 0xf80a4309
  %r6611.p = getelementptr inbounds i8, ptr %c, i64 192
  %r6611 = load i64, ptr %r6611.p, align 8, !alias.scope !3, !noalias !4
  %t6612 = add i64 %r6611, 164
  %r6613.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6613 = load i64, ptr %r6613.p, align 8, !alias.scope !3, !noalias !4
  %gmp6614 = inttoptr i64 %t6612 to ptr
  store i64 %r6613, ptr %gmp6614, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001175d0 word 0x1e203820
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 1, i32 0)
  ; @pc 0x8001175d4 word 0x1e223861
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 3, i32 2)
  ; @pc 0x8001175d8 word 0xbd430802
  %r6615.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6615 = load i64, ptr %r6615.p, align 8, !alias.scope !3, !noalias !4
  %t6616 = add i64 %r6615, 776
  %gmp6617 = inttoptr i64 %t6616 to ptr
  %gml6618 = load i32, ptr %gmp6617, align 1, !alias.scope !4, !noalias !3
  %c6619 = zext i32 %gml6618 to i128
  %wp6620 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c6619, ptr %wp6620, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175dc word 0xbd430c03
  %r6621.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6621 = load i64, ptr %r6621.p, align 8, !alias.scope !3, !noalias !4
  %t6622 = add i64 %r6621, 780
  %gmp6623 = inttoptr i64 %t6622 to ptr
  %gml6624 = load i32, ptr %gmp6623, align 1, !alias.scope !4, !noalias !3
  %c6625 = zext i32 %gml6624 to i128
  %wp6626 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c6625, ptr %wp6626, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175e0 word 0x7ea1b800
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 1, i32 0, i32 0)
  ; @pc 0x8001175e4 word 0x7ea1b821
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 1, i32 3, i32 0, i32 1, i32 1, i32 1)
  ; @pc 0x8001175e8 word 0x7e21d800
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  ; @pc 0x8001175ec word 0x1e200840
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 2, i32 0)
  ; @pc 0x8001175f0 word 0x7e21d821
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1)
  ; @pc 0x8001175f4 word 0x1e210861
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 3, i32 1)
  ; @pc 0x8001175f8 word 0x2f00e402
  %wp6627 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 0, ptr %wp6627, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001175fc word 0x1e202008
  %fcmp6628 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp6629 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6628, ptr %wp6629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117600 word 0x1e226803
  call void @rt_fp_op_s(ptr %c, i32 13, i32 3, i32 0, i32 2)
  ; @pc 0x800117604 word 0x1e226824
  call void @rt_fp_op_s(ptr %c, i32 13, i32 4, i32 1, i32 2)
  ; @pc 0x800117608 word 0x1e20cc40
  %r6630.p = getelementptr inbounds i8, ptr %c, i64 544
  %r6630 = load i128, ptr %r6630.p, align 16, !alias.scope !3, !noalias !4
  %c6631 = trunc i128 %r6630 to i32
  %r6632.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6632 = load i128, ptr %r6632.p, align 16, !alias.scope !3, !noalias !4
  %c6633 = trunc i128 %r6632 to i32
  %r6634.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6634 = load i64, ptr %r6634.p, align 8, !alias.scope !3, !noalias !4
  %fsh6636 = lshr i64 %r6634, 30
  %ftr6637 = trunc i64 %fsh6636 to i1
  %fsh6638 = lshr i64 %r6634, 31
  %ftr6639 = trunc i64 %fsh6638 to i1
  %fsh6640 = lshr i64 %r6634, 28
  %ftr6641 = trunc i64 %fsh6640 to i1
  %fnz6642 = xor i1 %ftr6637, true
  %feq6643 = icmp eq i1 %ftr6639, %ftr6641
  %cond6635 = and i1 %fnz6642, %feq6643
  %sel6644 = select i1 %cond6635, i32 %c6631, i32 %c6633
  %c6645 = zext i32 %sel6644 to i128
  %wp6646 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6645, ptr %wp6646, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80011760c word 0x1e202028
  %fcmp6647 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 1)
  %wp6648 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6647, ptr %wp6648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117610 word 0x2d1013e3
  %r6649.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6649 = load i64, ptr %r6649.p, align 8, !alias.scope !3, !noalias !4
  %t6650 = add i64 %r6649, 128
  %t6651 = add i64 %t6650, 4
  %r6652.p = getelementptr inbounds i8, ptr %c, i64 560
  %r6652 = load i128, ptr %r6652.p, align 16, !alias.scope !3, !noalias !4
  %r6653.p = getelementptr inbounds i8, ptr %c, i64 576
  %r6653 = load i128, ptr %r6653.p, align 16, !alias.scope !3, !noalias !4
  %c6654 = trunc i128 %r6652 to i32
  %c6655 = trunc i128 %r6653 to i32
  %gmp6656 = inttoptr i64 %t6650 to ptr
  store i32 %c6654, ptr %gmp6656, align 1, !alias.scope !4, !noalias !3
  %gmp6657 = inttoptr i64 %t6651 to ptr
  store i32 %c6655, ptr %gmp6657, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117614 word 0x2d1313e3
  %r6658.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6658 = load i64, ptr %r6658.p, align 8, !alias.scope !3, !noalias !4
  %t6659 = add i64 %r6658, 152
  %t6660 = add i64 %t6659, 4
  %r6661.p = getelementptr inbounds i8, ptr %c, i64 560
  %r6661 = load i128, ptr %r6661.p, align 16, !alias.scope !3, !noalias !4
  %r6662.p = getelementptr inbounds i8, ptr %c, i64 576
  %r6662 = load i128, ptr %r6662.p, align 16, !alias.scope !3, !noalias !4
  %c6663 = trunc i128 %r6661 to i32
  %c6664 = trunc i128 %r6662 to i32
  %gmp6665 = inttoptr i64 %t6659 to ptr
  store i32 %c6663, ptr %gmp6665, align 1, !alias.scope !4, !noalias !3
  %gmp6666 = inttoptr i64 %t6660 to ptr
  store i32 %c6664, ptr %gmp6666, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117618 word 0x1e21cc41
  %r6667.p = getelementptr inbounds i8, ptr %c, i64 544
  %r6667 = load i128, ptr %r6667.p, align 16, !alias.scope !3, !noalias !4
  %c6668 = trunc i128 %r6667 to i32
  %r6669.p = getelementptr inbounds i8, ptr %c, i64 528
  %r6669 = load i128, ptr %r6669.p, align 16, !alias.scope !3, !noalias !4
  %c6670 = trunc i128 %r6669 to i32
  %r6671.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6671 = load i64, ptr %r6671.p, align 8, !alias.scope !3, !noalias !4
  %fsh6673 = lshr i64 %r6671, 30
  %ftr6674 = trunc i64 %fsh6673 to i1
  %fsh6675 = lshr i64 %r6671, 31
  %ftr6676 = trunc i64 %fsh6675 to i1
  %fsh6677 = lshr i64 %r6671, 28
  %ftr6678 = trunc i64 %fsh6677 to i1
  %fnz6679 = xor i1 %ftr6674, true
  %feq6680 = icmp eq i1 %ftr6676, %ftr6678
  %cond6672 = and i1 %fnz6679, %feq6680
  %sel6681 = select i1 %cond6672, i32 %c6668, i32 %c6670
  %c6682 = zext i32 %sel6681 to i128
  %wp6683 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6682, ptr %wp6683, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80011761c word 0x2d0f07e0
  %r6684.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6684 = load i64, ptr %r6684.p, align 8, !alias.scope !3, !noalias !4
  %t6685 = add i64 %r6684, 120
  %t6686 = add i64 %t6685, 4
  %r6687.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6687 = load i128, ptr %r6687.p, align 16, !alias.scope !3, !noalias !4
  %r6688.p = getelementptr inbounds i8, ptr %c, i64 528
  %r6688 = load i128, ptr %r6688.p, align 16, !alias.scope !3, !noalias !4
  %c6689 = trunc i128 %r6687 to i32
  %c6690 = trunc i128 %r6688 to i32
  %gmp6691 = inttoptr i64 %t6685 to ptr
  store i32 %c6689, ptr %gmp6691, align 1, !alias.scope !4, !noalias !3
  %gmp6692 = inttoptr i64 %t6686 to ptr
  store i32 %c6690, ptr %gmp6692, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117620 word 0x2d1207e0
  %r6693.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6693 = load i64, ptr %r6693.p, align 8, !alias.scope !3, !noalias !4
  %t6694 = add i64 %r6693, 144
  %t6695 = add i64 %t6694, 4
  %r6696.p = getelementptr inbounds i8, ptr %c, i64 512
  %r6696 = load i128, ptr %r6696.p, align 16, !alias.scope !3, !noalias !4
  %r6697.p = getelementptr inbounds i8, ptr %c, i64 528
  %r6697 = load i128, ptr %r6697.p, align 16, !alias.scope !3, !noalias !4
  %c6698 = trunc i128 %r6696 to i32
  %c6699 = trunc i128 %r6697 to i32
  %gmp6700 = inttoptr i64 %t6694 to ptr
  store i32 %c6698, ptr %gmp6700, align 1, !alias.scope !4, !noalias !3
  %gmp6701 = inttoptr i64 %t6695 to ptr
  store i32 %c6699, ptr %gmp6701, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117624 word 0x949caf08
  %wp6702 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360882728, ptr %wp6702, align 8, !alias.scope !3, !noalias !4
  call void @f_802843244(ptr %c)
  ; @pc 0x800117628 word 0xf84c7308
  %r6703.p = getelementptr inbounds i8, ptr %c, i64 192
  %r6703 = load i64, ptr %r6703.p, align 8, !alias.scope !3, !noalias !4
  %t6704 = add i64 %r6703, 199
  %gmp6705 = inttoptr i64 %t6704 to ptr
  %gml6706 = load i64, ptr %gmp6705, align 1, !alias.scope !4, !noalias !3
  %wp6707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6706, ptr %wp6707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80011762c word 0xf9000368
  %r6708.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6708 = load i64, ptr %r6708.p, align 8, !alias.scope !3, !noalias !4
  %r6709.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6709 = load i64, ptr %r6709.p, align 8, !alias.scope !3, !noalias !4
  %gmp6710 = inttoptr i64 %r6708 to ptr
  store i64 %r6709, ptr %gmp6710, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117630 word 0x385ff3a8
  %r6711.p = getelementptr inbounds i8, ptr %c, i64 232
  %r6711 = load i64, ptr %r6711.p, align 8, !alias.scope !3, !noalias !4
  %t6712 = add i64 %r6711, -1
  %gmp6713 = inttoptr i64 %t6712 to ptr
  %gml6714 = load i8, ptr %gmp6713, align 1, !alias.scope !4, !noalias !3
  %c6715 = zext i8 %gml6714 to i64
  %wp6716 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6715, ptr %wp6716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800117634 word 0x39002368
  %r6717.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6717 = load i64, ptr %r6717.p, align 8, !alias.scope !3, !noalias !4
  %t6718 = add i64 %r6717, 8
  %r6719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6719 = load i64, ptr %r6719.p, align 8, !alias.scope !3, !noalias !4
  %c6720 = trunc i64 %r6719 to i32
  %c6721 = trunc i32 %c6720 to i8
  %gmp6722 = inttoptr i64 %t6718 to ptr
  store i8 %c6721, ptr %gmp6722, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800117638 word 0x17fffe67
  br label %L_800116fd4
L_800116318_jt_def:
  %fp7133 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r409, ptr %fp7133, align 8, !alias.scope !3, !noalias !4
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
