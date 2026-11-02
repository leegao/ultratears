; UltraTears chunk main_180_eventengine: 1 functions [0x8002d8e30..0x8002da8f0)
; ModuleID = 'main_180_eventengine_raw'
source_filename = "main_180_eventengine_raw"
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

declare dso_local void @f_80021b4ac(ptr)
declare dso_local void @f_8027cf394(ptr)

define dso_local void @f_8002d8e30(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8002d8e30:
  ; @pc 0x8002d8e30 word 0xd10403ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 256
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e34 word 0xa90a7bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 160
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e38 word 0xa90b6ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 176
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e3c word 0xa90c67fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 192
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e40 word 0xa90d5ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 208
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e44 word 0xa90e57f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 224
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e48 word 0xa90f4ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 240
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8e4c word 0x910283fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 160
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e50 word 0xaa0003f9
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = or i64 0, %r53
  %wp55 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t54, ptr %wp55, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e54 word 0xaa0103f3
  %r56.p = getelementptr inbounds i8, ptr %c, i64 8
  %r56 = load i64, ptr %r56.p, align 8, !alias.scope !3, !noalias !4
  %t57 = or i64 0, %r56
  %wp58 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e58 word 0xaa0003f4
  %r59.p = getelementptr inbounds i8, ptr %c, i64 0
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = or i64 0, %r59
  %wp61 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e5c word 0xf8420f29
  %r62.p = getelementptr inbounds i8, ptr %c, i64 200
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %t63 = add i64 %r62, 32
  %gmp64 = inttoptr i64 %t63 to ptr
  %gml65 = load i64, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t63, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  %wp67 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml65, ptr %wp67, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e60 word 0xf100013f
  %r68.p = getelementptr inbounds i8, ptr %c, i64 72
  %r68 = load i64, ptr %r68.p, align 8, !alias.scope !3, !noalias !4
  %t69 = sub i64 %r68, 0
  %fn70 = icmp slt i64 %t69, 0
  %fz71 = icmp eq i64 %t69, 0
  %fc72 = icmp uge i64 %r68, 0
  %fx173 = xor i64 %r68, 0
  %fx274 = xor i64 %r68, %t69
  %fva75 = and i64 %fx173, %fx274
  %fv76 = icmp slt i64 %fva75, 0
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
  ; @pc 0x8002d8e64 word 0x1a9f07e8
  %t89 = add i32 0, 1
  %r90.p = getelementptr inbounds i8, ptr %c, i64 272
  %r90 = load i64, ptr %r90.p, align 8, !alias.scope !3, !noalias !4
  %fsh92 = lshr i64 %r90, 30
  %cond91 = trunc i64 %fsh92 to i1
  %sel93 = select i1 %cond91, i32 0, i32 %t89
  %c94 = zext i32 %sel93 to i64
  %wp95 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c94, ptr %wp95, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e68 word 0xb4000c49
  %r96.p = getelementptr inbounds i8, ptr %c, i64 72
  %r96 = load i64, ptr %r96.p, align 8, !alias.scope !3, !noalias !4
  %cmp97 = icmp eq i64 %r96, 0
  br i1 %cmp97, label %L_8002d8ff0, label %L_8002d8e6c_ft
L_8002d8e70:
  ; @pc 0x8002d8e70 word 0xf9401689
  %r103.p = getelementptr inbounds i8, ptr %c, i64 160
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %t104 = add i64 %r103, 40
  %gmp105 = inttoptr i64 %t104 to ptr
  %gml106 = load i64, ptr %gmp105, align 1, !alias.scope !4, !noalias !3
  %wp107 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml106, ptr %wp107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e74 word 0xb50008e9
  %r108.p = getelementptr inbounds i8, ptr %c, i64 72
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %cmp109 = icmp ne i64 %r108, 0
  br i1 %cmp109, label %L_8002d8f90, label %L_8002d8e78_ft
L_8002d8e80:
  ; @pc 0x8002d8e80 word 0xf9401e89
  %r117.p = getelementptr inbounds i8, ptr %c, i64 160
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 56
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i64, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %wp121 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml120, ptr %wp121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e84 word 0xb5000969
  %r122.p = getelementptr inbounds i8, ptr %c, i64 72
  %r122 = load i64, ptr %r122.p, align 8, !alias.scope !3, !noalias !4
  %cmp123 = icmp ne i64 %r122, 0
  br i1 %cmp123, label %L_8002d8fb0, label %L_8002d8e88
L_8002d8e88:
  ; @pc 0x8002d8e88 word 0xf9402289
  %r124.p = getelementptr inbounds i8, ptr %c, i64 160
  %r124 = load i64, ptr %r124.p, align 8, !alias.scope !3, !noalias !4
  %t125 = add i64 %r124, 64
  %gmp126 = inttoptr i64 %t125 to ptr
  %gml127 = load i64, ptr %gmp126, align 1, !alias.scope !4, !noalias !3
  %wp128 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e8c word 0xb50009a9
  %r129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r129 = load i64, ptr %r129.p, align 8, !alias.scope !3, !noalias !4
  %cmp130 = icmp ne i64 %r129, 0
  br i1 %cmp130, label %L_8002d8fc0, label %L_8002d8e90
L_8002d8e90:
  ; @pc 0x8002d8e90 word 0xf9402689
  %r131.p = getelementptr inbounds i8, ptr %c, i64 160
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %t132 = add i64 %r131, 72
  %gmp133 = inttoptr i64 %t132 to ptr
  %gml134 = load i64, ptr %gmp133, align 1, !alias.scope !4, !noalias !3
  %wp135 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml134, ptr %wp135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e94 word 0xb50009e9
  %r136.p = getelementptr inbounds i8, ptr %c, i64 72
  %r136 = load i64, ptr %r136.p, align 8, !alias.scope !3, !noalias !4
  %cmp137 = icmp ne i64 %r136, 0
  br i1 %cmp137, label %L_8002d8fd0, label %L_8002d8e98
L_8002d8e98:
  ; @pc 0x8002d8e98 word 0xf9402a89
  %r138.p = getelementptr inbounds i8, ptr %c, i64 160
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %t139 = add i64 %r138, 80
  %gmp140 = inttoptr i64 %t139 to ptr
  %gml141 = load i64, ptr %gmp140, align 1, !alias.scope !4, !noalias !3
  %wp142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml141, ptr %wp142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e9c word 0xb5000b09
  %r143.p = getelementptr inbounds i8, ptr %c, i64 72
  %r143 = load i64, ptr %r143.p, align 8, !alias.scope !3, !noalias !4
  %cmp144 = icmp ne i64 %r143, 0
  br i1 %cmp144, label %L_8002d8ffc, label %L_8002d8ea0
L_8002d8ea0:
  ; @pc 0x8002d8ea0 word 0xf9402e89
  %r145.p = getelementptr inbounds i8, ptr %c, i64 160
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %t146 = add i64 %r145, 88
  %gmp147 = inttoptr i64 %t146 to ptr
  %gml148 = load i64, ptr %gmp147, align 1, !alias.scope !4, !noalias !3
  %wp149 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml148, ptr %wp149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ea4 word 0xb50009c9
  %r150.p = getelementptr inbounds i8, ptr %c, i64 72
  %r150 = load i64, ptr %r150.p, align 8, !alias.scope !3, !noalias !4
  %cmp151 = icmp ne i64 %r150, 0
  br i1 %cmp151, label %L_8002d8fdc, label %L_8002d8ea8_ft
L_8002d8ec0:
  ; @pc 0x8002d8ec0 word 0x39450268
  %r198.p = getelementptr inbounds i8, ptr %c, i64 152
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %t199 = add i64 %r198, 320
  %gmp200 = inttoptr i64 %t199 to ptr
  %gml201 = load i8, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %c202 = zext i8 %gml201 to i64
  %wp203 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c202, ptr %wp203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ec4 word 0x37000a28
  %r204.p = getelementptr inbounds i8, ptr %c, i64 64
  %r204 = load i64, ptr %r204.p, align 8, !alias.scope !3, !noalias !4
  %t205 = and i64 %r204, 1
  %cmp206 = icmp ne i64 %t205, 0
  br i1 %cmp206, label %L_8002d9008, label %L_8002d8ec8
L_8002d8ec8:
  ; @pc 0x8002d8ec8 word 0xb940f268
  %r207.p = getelementptr inbounds i8, ptr %c, i64 152
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %t208 = add i64 %r207, 240
  %gmp209 = inttoptr i64 %t208 to ptr
  %gml210 = load i32, ptr %gmp209, align 1, !alias.scope !4, !noalias !3
  %c211 = zext i32 %gml210 to i64
  %wp212 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c211, ptr %wp212, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d8ecc
L_8002d8ecc:
  ; @pc 0x8002d8ecc word 0x8b28ce68
  %r213.p = getelementptr inbounds i8, ptr %c, i64 152
  %r213 = load i64, ptr %r213.p, align 8, !alias.scope !3, !noalias !4
  %r214.p = getelementptr inbounds i8, ptr %c, i64 64
  %r214 = load i64, ptr %r214.p, align 8, !alias.scope !3, !noalias !4
  %c215 = trunc i64 %r214 to i32
  %c216 = sext i32 %c215 to i64
  %t217 = shl i64 %c216, 3
  %t218 = add i64 %r213, %t217
  %wp219 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t218, ptr %wp219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ed0 word 0xf9009116
  %r220.p = getelementptr inbounds i8, ptr %c, i64 64
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %t221 = add i64 %r220, 288
  %r222.p = getelementptr inbounds i8, ptr %c, i64 176
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %gmp223 = inttoptr i64 %t221 to ptr
  store i64 %r222, ptr %gmp223, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8ed4 word 0xf9007674
  %r224.p = getelementptr inbounds i8, ptr %c, i64 152
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %t225 = add i64 %r224, 232
  %r226.p = getelementptr inbounds i8, ptr %c, i64 160
  %r226 = load i64, ptr %r226.p, align 8, !alias.scope !3, !noalias !4
  %gmp227 = inttoptr i64 %t225 to ptr
  store i64 %r226, ptr %gmp227, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8ed8 word 0x39450268
  %r228.p = getelementptr inbounds i8, ptr %c, i64 152
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %t229 = add i64 %r228, 320
  %gmp230 = inttoptr i64 %t229 to ptr
  %gml231 = load i8, ptr %gmp230, align 1, !alias.scope !4, !noalias !3
  %c232 = zext i8 %gml231 to i64
  %wp233 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c232, ptr %wp233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8edc word 0x32000108
  %r234.p = getelementptr inbounds i8, ptr %c, i64 64
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %c235 = trunc i64 %r234 to i32
  %t236 = or i32 %c235, 1
  %c237 = zext i32 %t236 to i64
  %wp238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c237, ptr %wp238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ee0 word 0x39050268
  %r239.p = getelementptr inbounds i8, ptr %c, i64 152
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %t240 = add i64 %r239, 320
  %r241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %c242 = trunc i64 %r241 to i32
  %c243 = trunc i32 %c242 to i8
  %gmp244 = inttoptr i64 %t240 to ptr
  store i8 %c243, ptr %gmp244, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8ee4 word 0x295e2668
  %r245.p = getelementptr inbounds i8, ptr %c, i64 152
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %t246 = add i64 %r245, 240
  %t247 = add i64 %t246, 4
  %gmp248 = inttoptr i64 %t246 to ptr
  %gml249 = load i32, ptr %gmp248, align 1, !alias.scope !4, !noalias !3
  %c250 = zext i32 %gml249 to i64
  %gmp251 = inttoptr i64 %t247 to ptr
  %gml252 = load i32, ptr %gmp251, align 1, !alias.scope !4, !noalias !3
  %c253 = zext i32 %gml252 to i64
  %wp254 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c250, ptr %wp254, align 8, !alias.scope !3, !noalias !4
  %wp255 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c253, ptr %wp255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ee8 word 0x93407d08
  %r256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r256 = load i64, ptr %r256.p, align 8, !alias.scope !3, !noalias !4
  %t257 = lshr i64 %r256, 31
  %t258 = and i64 %t257, 1
  %t259 = sub i64 0, %t258
  %t260 = and i64 %t259, -4294967296
  %t261 = and i64 %r256, 4294967295
  %t262 = or i64 %t260, %t261
  %wp263 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t262, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8eec word 0x6b09011f
  %r264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %c265 = trunc i64 %r264 to i32
  %r266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r266 = load i64, ptr %r266.p, align 8, !alias.scope !3, !noalias !4
  %c267 = trunc i64 %r266 to i32
  %t268 = sub i32 %c265, %c267
  %fn269 = icmp slt i32 %t268, 0
  %fz270 = icmp eq i32 %t268, 0
  %fc271 = icmp uge i32 %c265, %c267
  %fx1272 = xor i32 %c265, %c267
  %fx2273 = xor i32 %c265, %t268
  %fva274 = and i32 %fx1272, %fx2273
  %fv275 = icmp slt i32 %fva274, 0
  %nz276 = zext i1 %fn269 to i64
  %zz277 = zext i1 %fz270 to i64
  %cz278 = zext i1 %fc271 to i64
  %vz279 = zext i1 %fv275 to i64
  %ns280 = shl i64 %nz276, 31
  %zs281 = shl i64 %zz277, 30
  %cs282 = shl i64 %cz278, 29
  %vs283 = shl i64 %vz279, 28
  %nzor284 = or i64 %ns280, %zs281
  %cvor285 = or i64 %cs282, %vs283
  %nzcv286 = or i64 %nzor284, %cvor285
  %wp287 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ef0 word 0x540000ca
  %r288.p = getelementptr inbounds i8, ptr %c, i64 272
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %fsh290 = lshr i64 %r288, 31
  %ftr291 = trunc i64 %fsh290 to i1
  %fsh292 = lshr i64 %r288, 28
  %ftr293 = trunc i64 %fsh292 to i1
  %cond289 = icmp eq i1 %ftr291, %ftr293
  br i1 %cond289, label %L_8002d8f08, label %L_8002d8ef4_ft
L_8002d8f08:
  ; @pc 0x8002d8f08 word 0xf90007f3
  %r321.p = getelementptr inbounds i8, ptr %c, i64 256
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %t322 = add i64 %r321, 8
  %r323.p = getelementptr inbounds i8, ptr %c, i64 152
  %r323 = load i64, ptr %r323.p, align 8, !alias.scope !3, !noalias !4
  %gmp324 = inttoptr i64 %t322 to ptr
  store i64 %r323, ptr %gmp324, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f0c word 0x9001b3a8
  %wp325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f10 word 0xd2869b69
  %wp326 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 13531, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f14 word 0xf2baf6c9
  %r327.p = getelementptr inbounds i8, ptr %c, i64 72
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %t328 = and i64 %r327, -4294901761
  %t329 = or i64 %t328, 3619028992
  %wp330 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t329, ptr %wp330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f18 word 0xf81f83bf
  %r331.p = getelementptr inbounds i8, ptr %c, i64 232
  %r331 = load i64, ptr %r331.p, align 8, !alias.scope !3, !noalias !4
  %t332 = add i64 %r331, -8
  %gmp333 = inttoptr i64 %t332 to ptr
  store i64 0, ptr %gmp333, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f1c word 0xf9478508
  %r334.p = getelementptr inbounds i8, ptr %c, i64 64
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %t335 = add i64 %r334, 3848
  %gmp336 = inttoptr i64 %t335 to ptr
  %gml337 = load i64, ptr %gmp336, align 1, !alias.scope !4, !noalias !3
  %wp338 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml337, ptr %wp338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f20 word 0xf2dbd049
  %r339.p = getelementptr inbounds i8, ptr %c, i64 72
  %r339 = load i64, ptr %r339.p, align 8, !alias.scope !3, !noalias !4
  %t340 = and i64 %r339, -281470681743361
  %t341 = or i64 %t340, 244649927114752
  %wp342 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t341, ptr %wp342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f24 word 0xf2e86369
  %r343.p = getelementptr inbounds i8, ptr %c, i64 72
  %r343 = load i64, ptr %r343.p, align 8, !alias.scope !3, !noalias !4
  %t344 = and i64 %r343, 281474976710655
  %t345 = or i64 %t344, 4835458624912359424
  %wp346 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t345, ptr %wp346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f28 word 0xf90023ff
  %r347.p = getelementptr inbounds i8, ptr %c, i64 256
  %r347 = load i64, ptr %r347.p, align 8, !alias.scope !3, !noalias !4
  %t348 = add i64 %r347, 64
  %gmp349 = inttoptr i64 %t348 to ptr
  store i64 0, ptr %gmp349, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f2c word 0xa93effbf
  %r350.p = getelementptr inbounds i8, ptr %c, i64 232
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %t351 = add i64 %r350, -24
  %t352 = add i64 %t351, 8
  %gmp353 = inttoptr i64 %t351 to ptr
  store i64 0, ptr %gmp353, align 1, !alias.scope !4, !noalias !3
  %gmp354 = inttoptr i64 %t352 to ptr
  store i64 0, ptr %gmp354, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f30 word 0x9001b3ba
  %wp355 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34419818496, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f34 word 0xb001b42d
  %wp356 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419888128, ptr %wp356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f38 word 0xf001b3ec
  %wp357 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419863552, ptr %wp357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f3c word 0xaa1f03fb
  %t358 = or i64 0, 0
  %wp359 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t358, ptr %wp359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f40 word 0xf9400108
  %r360.p = getelementptr inbounds i8, ptr %c, i64 64
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %gmp361 = inttoptr i64 %r360 to ptr
  %gml362 = load i64, ptr %gmp361, align 1, !alias.scope !4, !noalias !3
  %wp363 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml362, ptr %wp363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f44 word 0xa93dffbf
  %r364.p = getelementptr inbounds i8, ptr %c, i64 232
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %t365 = add i64 %r364, -40
  %t366 = add i64 %t365, 8
  %gmp367 = inttoptr i64 %t365 to ptr
  store i64 0, ptr %gmp367, align 1, !alias.scope !4, !noalias !3
  %gmp368 = inttoptr i64 %t366 to ptr
  store i64 0, ptr %gmp368, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f48 word 0x2a1f03f5
  %t369 = or i32 0, 0
  %c370 = zext i32 %t369 to i64
  %wp371 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f4c word 0x5280051c
  %c372 = zext i32 40 to i64
  %wp373 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c372, ptr %wp373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f50 word 0xd10123ae
  %r374.p = getelementptr inbounds i8, ptr %c, i64 232
  %r374 = load i64, ptr %r374.p, align 8, !alias.scope !3, !noalias !4
  %t375 = sub i64 %r374, 72
  %wp376 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t375, ptr %wp376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f54 word 0xa93cffbf
  %r377.p = getelementptr inbounds i8, ptr %c, i64 232
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %t378 = add i64 %r377, -56
  %t379 = add i64 %t378, 8
  %gmp380 = inttoptr i64 %t378 to ptr
  store i64 0, ptr %gmp380, align 1, !alias.scope !4, !noalias !3
  %gmp381 = inttoptr i64 %t379 to ptr
  store i64 0, ptr %gmp381, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f58 word 0x910043ef
  %r382.p = getelementptr inbounds i8, ptr %c, i64 256
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %t383 = add i64 %r382, 16
  %wp384 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t383, ptr %wp384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f5c word 0x9b497d08
  %r385.p = getelementptr inbounds i8, ptr %c, i64 64
  %r385 = load i64, ptr %r385.p, align 8, !alias.scope !3, !noalias !4
  %c386 = sext i64 %r385 to i128
  %r387.p = getelementptr inbounds i8, ptr %c, i64 72
  %r387 = load i64, ptr %r387.p, align 8, !alias.scope !3, !noalias !4
  %c388 = sext i64 %r387 to i128
  %t389 = mul i128 %c386, %c388
  %t390 = lshr i128 %t389, 64
  %c391 = trunc i128 %t390 to i64
  %wp392 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c391, ptr %wp392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f60 word 0xa93bffbf
  %r393.p = getelementptr inbounds i8, ptr %c, i64 232
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = add i64 %r393, -72
  %t395 = add i64 %t394, 8
  %gmp396 = inttoptr i64 %t394 to ptr
  store i64 0, ptr %gmp396, align 1, !alias.scope !4, !noalias !3
  %gmp397 = inttoptr i64 %t395 to ptr
  store i64 0, ptr %gmp397, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f64 word 0x9352fd09
  %r398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r398 = load i64, ptr %r398.p, align 8, !alias.scope !3, !noalias !4
  %ror399 = call i64 @llvm.fshr.i64(i64 %r398, i64 %r398, i64 18)
  %t400 = lshr i64 %r398, 63
  %t401 = and i64 %t400, 1
  %t402 = sub i64 0, %t401
  %t403 = and i64 %t402, -70368744177664
  %t404 = and i64 %ror399, 70368744177663
  %t405 = or i64 %t403, %t404
  %wp406 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t405, ptr %wp406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f68 word 0xa904ffff
  %r407.p = getelementptr inbounds i8, ptr %c, i64 256
  %r407 = load i64, ptr %r407.p, align 8, !alias.scope !3, !noalias !4
  %t408 = add i64 %r407, 72
  %t409 = add i64 %t408, 8
  %gmp410 = inttoptr i64 %t408 to ptr
  store i64 0, ptr %gmp410, align 1, !alias.scope !4, !noalias !3
  %gmp411 = inttoptr i64 %t409 to ptr
  store i64 0, ptr %gmp411, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f6c word 0xf947bb5a
  %r412.p = getelementptr inbounds i8, ptr %c, i64 208
  %r412 = load i64, ptr %r412.p, align 8, !alias.scope !3, !noalias !4
  %t413 = add i64 %r412, 3952
  %gmp414 = inttoptr i64 %t413 to ptr
  %gml415 = load i64, ptr %gmp414, align 1, !alias.scope !4, !noalias !3
  %wp416 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml415, ptr %wp416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f70 word 0xa9037fff
  %r417.p = getelementptr inbounds i8, ptr %c, i64 256
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %t418 = add i64 %r417, 48
  %t419 = add i64 %t418, 8
  %gmp420 = inttoptr i64 %t418 to ptr
  store i64 0, ptr %gmp420, align 1, !alias.scope !4, !noalias !3
  %gmp421 = inttoptr i64 %t419 to ptr
  store i64 0, ptr %gmp421, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f74 word 0xf94771ad
  %r422.p = getelementptr inbounds i8, ptr %c, i64 104
  %r422 = load i64, ptr %r422.p, align 8, !alias.scope !3, !noalias !4
  %t423 = add i64 %r422, 3808
  %gmp424 = inttoptr i64 %t423 to ptr
  %gml425 = load i64, ptr %gmp424, align 1, !alias.scope !4, !noalias !3
  %wp426 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml425, ptr %wp426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f78 word 0xf9418d8c
  %r427.p = getelementptr inbounds i8, ptr %c, i64 96
  %r427 = load i64, ptr %r427.p, align 8, !alias.scope !3, !noalias !4
  %t428 = add i64 %r427, 792
  %gmp429 = inttoptr i64 %t428 to ptr
  %gml430 = load i64, ptr %gmp429, align 1, !alias.scope !4, !noalias !3
  %wp431 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml430, ptr %wp431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f7c word 0x8b48fd28
  %r432.p = getelementptr inbounds i8, ptr %c, i64 72
  %r432 = load i64, ptr %r432.p, align 8, !alias.scope !3, !noalias !4
  %r433.p = getelementptr inbounds i8, ptr %c, i64 64
  %r433 = load i64, ptr %r433.p, align 8, !alias.scope !3, !noalias !4
  %t434 = lshr i64 %r433, 63
  %t435 = add i64 %r432, %t434
  %wp436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t435, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f80 word 0xa9027fff
  %r437.p = getelementptr inbounds i8, ptr %c, i64 256
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %t438 = add i64 %r437, 32
  %t439 = add i64 %t438, 8
  %gmp440 = inttoptr i64 %t438 to ptr
  store i64 0, ptr %gmp440, align 1, !alias.scope !4, !noalias !3
  %gmp441 = inttoptr i64 %t439 to ptr
  store i64 0, ptr %gmp441, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f84 word 0xf90003e8
  %r442.p = getelementptr inbounds i8, ptr %c, i64 256
  %r442 = load i64, ptr %r442.p, align 8, !alias.scope !3, !noalias !4
  %r443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r443 = load i64, ptr %r443.p, align 8, !alias.scope !3, !noalias !4
  %gmp444 = inttoptr i64 %r442 to ptr
  store i64 %r443, ptr %gmp444, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f88 word 0xa9017fff
  %r445.p = getelementptr inbounds i8, ptr %c, i64 256
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %t446 = add i64 %r445, 16
  %t447 = add i64 %t446, 8
  %gmp448 = inttoptr i64 %t446 to ptr
  store i64 0, ptr %gmp448, align 1, !alias.scope !4, !noalias !3
  %gmp449 = inttoptr i64 %t447 to ptr
  store i64 0, ptr %gmp449, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8f8c word 0x14000037
  br label %L_8002d9068
L_8002d8f90:
  ; @pc 0x8002d8f90 word 0xf9406536
  %r450.p = getelementptr inbounds i8, ptr %c, i64 72
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %t451 = add i64 %r450, 200
  %gmp452 = inttoptr i64 %t451 to ptr
  %gml453 = load i64, ptr %gmp452, align 1, !alias.scope !4, !noalias !3
  %wp454 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml453, ptr %wp454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f94 word 0x52800028
  %c455 = zext i32 1 to i64
  %wp456 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c455, ptr %wp456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f98 word 0xf9401a89
  %r457.p = getelementptr inbounds i8, ptr %c, i64 160
  %r457 = load i64, ptr %r457.p, align 8, !alias.scope !3, !noalias !4
  %t458 = add i64 %r457, 48
  %gmp459 = inttoptr i64 %t458 to ptr
  %gml460 = load i64, ptr %gmp459, align 1, !alias.scope !4, !noalias !3
  %wp461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f9c word 0xb4fff729
  %r462.p = getelementptr inbounds i8, ptr %c, i64 72
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %cmp463 = icmp eq i64 %r462, 0
  br i1 %cmp463, label %L_8002d8e80, label %L_8002d8fa0
L_8002d8fa0:
  ; @pc 0x8002d8fa0 word 0xf9406536
  %r464.p = getelementptr inbounds i8, ptr %c, i64 72
  %r464 = load i64, ptr %r464.p, align 8, !alias.scope !3, !noalias !4
  %t465 = add i64 %r464, 200
  %gmp466 = inttoptr i64 %t465 to ptr
  %gml467 = load i64, ptr %gmp466, align 1, !alias.scope !4, !noalias !3
  %wp468 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml467, ptr %wp468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fa4 word 0x52800028
  %c469 = zext i32 1 to i64
  %wp470 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c469, ptr %wp470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fa8 word 0xf9401e89
  %r471.p = getelementptr inbounds i8, ptr %c, i64 160
  %r471 = load i64, ptr %r471.p, align 8, !alias.scope !3, !noalias !4
  %t472 = add i64 %r471, 56
  %gmp473 = inttoptr i64 %t472 to ptr
  %gml474 = load i64, ptr %gmp473, align 1, !alias.scope !4, !noalias !3
  %wp475 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml474, ptr %wp475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fac word 0xb4fff6e9
  %r476.p = getelementptr inbounds i8, ptr %c, i64 72
  %r476 = load i64, ptr %r476.p, align 8, !alias.scope !3, !noalias !4
  %cmp477 = icmp eq i64 %r476, 0
  br i1 %cmp477, label %L_8002d8e88, label %L_8002d8fb0
L_8002d8fb0:
  ; @pc 0x8002d8fb0 word 0xf9406536
  %r478.p = getelementptr inbounds i8, ptr %c, i64 72
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %t479 = add i64 %r478, 200
  %gmp480 = inttoptr i64 %t479 to ptr
  %gml481 = load i64, ptr %gmp480, align 1, !alias.scope !4, !noalias !3
  %wp482 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml481, ptr %wp482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fb4 word 0x52800028
  %c483 = zext i32 1 to i64
  %wp484 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c483, ptr %wp484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fb8 word 0xf9402289
  %r485.p = getelementptr inbounds i8, ptr %c, i64 160
  %r485 = load i64, ptr %r485.p, align 8, !alias.scope !3, !noalias !4
  %t486 = add i64 %r485, 64
  %gmp487 = inttoptr i64 %t486 to ptr
  %gml488 = load i64, ptr %gmp487, align 1, !alias.scope !4, !noalias !3
  %wp489 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml488, ptr %wp489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fbc word 0xb4fff6a9
  %r490.p = getelementptr inbounds i8, ptr %c, i64 72
  %r490 = load i64, ptr %r490.p, align 8, !alias.scope !3, !noalias !4
  %cmp491 = icmp eq i64 %r490, 0
  br i1 %cmp491, label %L_8002d8e90, label %L_8002d8fc0
L_8002d8fc0:
  ; @pc 0x8002d8fc0 word 0xf9406536
  %r492.p = getelementptr inbounds i8, ptr %c, i64 72
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %t493 = add i64 %r492, 200
  %gmp494 = inttoptr i64 %t493 to ptr
  %gml495 = load i64, ptr %gmp494, align 1, !alias.scope !4, !noalias !3
  %wp496 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fc4 word 0x52800028
  %c497 = zext i32 1 to i64
  %wp498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c497, ptr %wp498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fc8 word 0xf9402689
  %r499.p = getelementptr inbounds i8, ptr %c, i64 160
  %r499 = load i64, ptr %r499.p, align 8, !alias.scope !3, !noalias !4
  %t500 = add i64 %r499, 72
  %gmp501 = inttoptr i64 %t500 to ptr
  %gml502 = load i64, ptr %gmp501, align 1, !alias.scope !4, !noalias !3
  %wp503 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml502, ptr %wp503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fcc word 0xb4fff669
  %r504.p = getelementptr inbounds i8, ptr %c, i64 72
  %r504 = load i64, ptr %r504.p, align 8, !alias.scope !3, !noalias !4
  %cmp505 = icmp eq i64 %r504, 0
  br i1 %cmp505, label %L_8002d8e98, label %L_8002d8fd0
L_8002d8fd0:
  ; @pc 0x8002d8fd0 word 0xf9406536
  %r506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r506 = load i64, ptr %r506.p, align 8, !alias.scope !3, !noalias !4
  %t507 = add i64 %r506, 200
  %gmp508 = inttoptr i64 %t507 to ptr
  %gml509 = load i64, ptr %gmp508, align 1, !alias.scope !4, !noalias !3
  %wp510 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml509, ptr %wp510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fd4 word 0x52800028
  %c511 = zext i32 1 to i64
  %wp512 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c511, ptr %wp512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fd8 word 0x17ffffb0
  br label %L_8002d8e98
L_8002d8fdc:
  ; @pc 0x8002d8fdc word 0x91002128
  %r513.p = getelementptr inbounds i8, ptr %c, i64 72
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %t514 = add i64 %r513, 8
  %wp515 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t514, ptr %wp515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fe0 word 0xf9406116
  %r516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r516 = load i64, ptr %r516.p, align 8, !alias.scope !3, !noalias !4
  %t517 = add i64 %r516, 192
  %gmp518 = inttoptr i64 %t517 to ptr
  %gml519 = load i64, ptr %gmp518, align 1, !alias.scope !4, !noalias !3
  %wp520 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml519, ptr %wp520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fe4 word 0xf9407675
  %r521.p = getelementptr inbounds i8, ptr %c, i64 152
  %r521 = load i64, ptr %r521.p, align 8, !alias.scope !3, !noalias !4
  %t522 = add i64 %r521, 232
  %gmp523 = inttoptr i64 %t522 to ptr
  %gml524 = load i64, ptr %gmp523, align 1, !alias.scope !4, !noalias !3
  %wp525 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml524, ptr %wp525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8fe8 word 0xb5fff6d5
  %r526.p = getelementptr inbounds i8, ptr %c, i64 168
  %r526 = load i64, ptr %r526.p, align 8, !alias.scope !3, !noalias !4
  %cmp527 = icmp ne i64 %r526, 0
  br i1 %cmp527, label %L_8002d8ec0, label %L_8002d8fec_ft
L_8002d8ff0:
  ; @pc 0x8002d8ff0 word 0xd0014c36
  %wp528 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34406260736, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ff4 word 0x9107ced6
  %r529.p = getelementptr inbounds i8, ptr %c, i64 176
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %t530 = add i64 %r529, 499
  %wp531 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ff8 word 0x17ffff9e
  br label %L_8002d8e70
L_8002d8ffc:
  ; @pc 0x8002d8ffc word 0xf9406536
  %r532.p = getelementptr inbounds i8, ptr %c, i64 72
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %t533 = add i64 %r532, 200
  %gmp534 = inttoptr i64 %t533 to ptr
  %gml535 = load i64, ptr %gmp534, align 1, !alias.scope !4, !noalias !3
  %wp536 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml535, ptr %wp536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9000 word 0x52800028
  %c537 = zext i32 1 to i64
  %wp538 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c537, ptr %wp538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9004 word 0x17ffffa7
  br label %L_8002d8ea0
L_8002d9008:
  ; @pc 0x8002d9008 word 0xf94002a8
  %r539.p = getelementptr inbounds i8, ptr %c, i64 168
  %r539 = load i64, ptr %r539.p, align 8, !alias.scope !3, !noalias !4
  %gmp540 = inttoptr i64 %r539 to ptr
  %gml541 = load i64, ptr %gmp540, align 1, !alias.scope !4, !noalias !3
  %wp542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml541, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d900c word 0xaa1503e0
  %r543.p = getelementptr inbounds i8, ptr %c, i64 168
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %t544 = or i64 0, %r543
  %wp545 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t544, ptr %wp545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9010 word 0xaa1303e1
  %r546.p = getelementptr inbounds i8, ptr %c, i64 152
  %r546 = load i64, ptr %r546.p, align 8, !alias.scope !3, !noalias !4
  %t547 = or i64 0, %r546
  %wp548 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t547, ptr %wp548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9014 word 0xf9401508
  %r549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r549 = load i64, ptr %r549.p, align 8, !alias.scope !3, !noalias !4
  %t550 = add i64 %r549, 40
  %gmp551 = inttoptr i64 %t550 to ptr
  %gml552 = load i64, ptr %gmp551, align 1, !alias.scope !4, !noalias !3
  %wp553 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9018 word 0xd63f0100
  %r554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %fp555 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r554, ptr %fp555, align 8, !alias.scope !3, !noalias !4
  %wp556 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362724380, ptr %wp556, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d901c word 0x295e2668
  %r557.p = getelementptr inbounds i8, ptr %c, i64 152
  %r557 = load i64, ptr %r557.p, align 8, !alias.scope !3, !noalias !4
  %t558 = add i64 %r557, 240
  %t559 = add i64 %t558, 4
  %gmp560 = inttoptr i64 %t558 to ptr
  %gml561 = load i32, ptr %gmp560, align 1, !alias.scope !4, !noalias !3
  %c562 = zext i32 %gml561 to i64
  %gmp563 = inttoptr i64 %t559 to ptr
  %gml564 = load i32, ptr %gmp563, align 1, !alias.scope !4, !noalias !3
  %c565 = zext i32 %gml564 to i64
  %wp566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c562, ptr %wp566, align 8, !alias.scope !3, !noalias !4
  %wp567 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c565, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9020 word 0x6b09011f
  %r568.p = getelementptr inbounds i8, ptr %c, i64 64
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %c569 = trunc i64 %r568 to i32
  %r570.p = getelementptr inbounds i8, ptr %c, i64 72
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %c571 = trunc i64 %r570 to i32
  %t572 = sub i32 %c569, %c571
  %fn573 = icmp slt i32 %t572, 0
  %fz574 = icmp eq i32 %t572, 0
  %fc575 = icmp uge i32 %c569, %c571
  %fx1576 = xor i32 %c569, %c571
  %fx2577 = xor i32 %c569, %t572
  %fva578 = and i32 %fx1576, %fx2577
  %fv579 = icmp slt i32 %fva578, 0
  %nz580 = zext i1 %fn573 to i64
  %zz581 = zext i1 %fz574 to i64
  %cz582 = zext i1 %fc575 to i64
  %vz583 = zext i1 %fv579 to i64
  %ns584 = shl i64 %nz580, 31
  %zs585 = shl i64 %zz581, 30
  %cs586 = shl i64 %cz582, 29
  %vs587 = shl i64 %vz583, 28
  %nzor588 = or i64 %ns584, %zs585
  %cvor589 = or i64 %cs586, %vs587
  %nzcv590 = or i64 %nzor588, %cvor589
  %wp591 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9024 word 0x54fff54a
  %r592.p = getelementptr inbounds i8, ptr %c, i64 272
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %fsh594 = lshr i64 %r592, 31
  %ftr595 = trunc i64 %fsh594 to i1
  %fsh596 = lshr i64 %r592, 28
  %ftr597 = trunc i64 %fsh596 to i1
  %cond593 = icmp eq i1 %ftr595, %ftr597
  br i1 %cond593, label %L_8002d8ecc, label %L_8002d9028_ft
L_8002d9044:
  ; @pc 0x8002d9044 word 0x885f7edf
  %r633.p = getelementptr inbounds i8, ptr %c, i64 176
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %atp634 = inttoptr i64 %r633 to ptr
  %ldx635 = load atomic i32, ptr %atp634 acquire, align 4, !alias.scope !4, !noalias !3
  %c636 = zext i32 %ldx635 to i64
  %fp637 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r633, ptr %fp637, align 8, !alias.scope !3, !noalias !4
  %fp638 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c636, ptr %fp638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9048 word 0x88087edf
  %r639.p = getelementptr inbounds i8, ptr %c, i64 176
  %r639 = load i64, ptr %r639.p, align 8, !alias.scope !3, !noalias !4
  %atp640 = inttoptr i64 %r639 to ptr
  %fp641 = getelementptr inbounds i8, ptr %c, i64 296
  %fv642 = load i64, ptr %fp641, align 8, !alias.scope !3, !noalias !4
  %fp643 = getelementptr inbounds i8, ptr %c, i64 304
  %fv644 = load i64, ptr %fp643, align 8, !alias.scope !3, !noalias !4
  %fp645 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp645, align 8, !alias.scope !3, !noalias !4
  %cmp646 = icmp eq i64 %fv642, %r639
  %c647 = trunc i64 %fv644 to i32
  %cx648 = cmpxchg ptr %atp640, i32 %c647, i32 0 seq_cst seq_cst, align 4
  %cxok649 = extractvalue { i32, i1 } %cx648, 1
  %t650 = and i1 %cmp646, %cxok649
  %sel651 = select i1 %t650, i32 0, i32 1
  %c652 = zext i32 %sel651 to i64
  %wp653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d904c word 0x35ffffc8
  %r654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %c655 = trunc i64 %r654 to i32
  %cmp656 = icmp ne i32 %c655, 0
  br i1 %cmp656, label %L_8002d9044, label %L_8002d9050
L_8002d9050:
  ; @pc 0x8002d9050 word 0x910342e8
  %r657.p = getelementptr inbounds i8, ptr %c, i64 184
  %r657 = load i64, ptr %r657.p, align 8, !alias.scope !3, !noalias !4
  %t658 = add i64 %r657, 208
  %wp659 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t658, ptr %wp659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9054 word 0x11000775
  %r660.p = getelementptr inbounds i8, ptr %c, i64 216
  %r660 = load i64, ptr %r660.p, align 8, !alias.scope !3, !noalias !4
  %c661 = trunc i64 %r660 to i32
  %t662 = add i32 %c661, 1
  %c663 = zext i32 %t662 to i64
  %wp664 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c663, ptr %wp664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9058 word 0xf83b79e8
  %r665.p = getelementptr inbounds i8, ptr %c, i64 120
  %r665 = load i64, ptr %r665.p, align 8, !alias.scope !3, !noalias !4
  %r666.p = getelementptr inbounds i8, ptr %c, i64 216
  %r666 = load i64, ptr %r666.p, align 8, !alias.scope !3, !noalias !4
  %t667 = shl i64 %r666, 3
  %t668 = add i64 %r665, %t667
  %r669.p = getelementptr inbounds i8, ptr %c, i64 64
  %r669 = load i64, ptr %r669.p, align 8, !alias.scope !3, !noalias !4
  %gmp670 = inttoptr i64 %t668 to ptr
  store i64 %r669, ptr %gmp670, align 1, !alias.scope !4, !noalias !3
  br label %L_8002d905c
L_8002d905c:
  ; @pc 0x8002d905c word 0x9100077b
  %r671.p = getelementptr inbounds i8, ptr %c, i64 216
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %t672 = add i64 %r671, 1
  %wp673 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t672, ptr %wp673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9060 word 0xf100237f
  %r674.p = getelementptr inbounds i8, ptr %c, i64 216
  %r674 = load i64, ptr %r674.p, align 8, !alias.scope !3, !noalias !4
  %t675 = sub i64 %r674, 8
  %fn676 = icmp slt i64 %t675, 0
  %fz677 = icmp eq i64 %t675, 0
  %fc678 = icmp uge i64 %r674, 8
  %fx1679 = xor i64 %r674, 8
  %fx2680 = xor i64 %r674, %t675
  %fva681 = and i64 %fx1679, %fx2680
  %fv682 = icmp slt i64 %fva681, 0
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
  ; @pc 0x8002d9064 word 0x540007e0
  %r695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %fsh697 = lshr i64 %r695, 30
  %cond696 = trunc i64 %fsh697 to i1
  br i1 %cond696, label %L_8002d9160, label %L_8002d9068
L_8002d9068:
  ; @pc 0x8002d9068 word 0xf87b7b37
  %r698.p = getelementptr inbounds i8, ptr %c, i64 200
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %r699.p = getelementptr inbounds i8, ptr %c, i64 216
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = shl i64 %r699, 3
  %t701 = add i64 %r698, %t700
  %gmp702 = inttoptr i64 %t701 to ptr
  %gml703 = load i64, ptr %gmp702, align 1, !alias.scope !4, !noalias !3
  %wp704 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml703, ptr %wp704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d906c word 0xb4ffff97
  %r705.p = getelementptr inbounds i8, ptr %c, i64 184
  %r705 = load i64, ptr %r705.p, align 8, !alias.scope !3, !noalias !4
  %cmp706 = icmp eq i64 %r705, 0
  br i1 %cmp706, label %L_8002d905c, label %L_8002d9070_ft
L_8002d90b0:
  ; @pc 0x8002d90b0 word 0x885ffec1
  %r834.p = getelementptr inbounds i8, ptr %c, i64 176
  %r834 = load i64, ptr %r834.p, align 8, !alias.scope !3, !noalias !4
  %atp835 = inttoptr i64 %r834 to ptr
  %ldx836 = load atomic i32, ptr %atp835 acquire, align 4, !alias.scope !4, !noalias !3
  %c837 = zext i32 %ldx836 to i64
  %fp838 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r834, ptr %fp838, align 8, !alias.scope !3, !noalias !4
  %fp839 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c837, ptr %fp839, align 8, !alias.scope !3, !noalias !4
  %wp840 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c837, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90b4 word 0x32010028
  %r841.p = getelementptr inbounds i8, ptr %c, i64 8
  %r841 = load i64, ptr %r841.p, align 8, !alias.scope !3, !noalias !4
  %c842 = trunc i64 %r841 to i32
  %t843 = or i32 %c842, -2147483648
  %c844 = zext i32 %t843 to i64
  %wp845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c844, ptr %wp845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90b8 word 0x88097ec8
  %r846.p = getelementptr inbounds i8, ptr %c, i64 176
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %atp847 = inttoptr i64 %r846 to ptr
  %fp848 = getelementptr inbounds i8, ptr %c, i64 296
  %fv849 = load i64, ptr %fp848, align 8, !alias.scope !3, !noalias !4
  %fp850 = getelementptr inbounds i8, ptr %c, i64 304
  %fv851 = load i64, ptr %fp850, align 8, !alias.scope !3, !noalias !4
  %fp852 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp852, align 8, !alias.scope !3, !noalias !4
  %cmp853 = icmp eq i64 %fv849, %r846
  %c854 = trunc i64 %fv851 to i32
  %r855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r855 = load i64, ptr %r855.p, align 8, !alias.scope !3, !noalias !4
  %c856 = trunc i64 %r855 to i32
  %cx857 = cmpxchg ptr %atp847, i32 %c854, i32 %c856 seq_cst seq_cst, align 4
  %cxok858 = extractvalue { i32, i1 } %cx857, 1
  %t859 = and i1 %cmp853, %cxok858
  %sel860 = select i1 %t859, i32 0, i32 1
  %c861 = zext i32 %sel860 to i64
  %wp862 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c861, ptr %wp862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90bc word 0x35ffffa9
  %r863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r863 = load i64, ptr %r863.p, align 8, !alias.scope !3, !noalias !4
  %c864 = trunc i64 %r863 to i32
  %cmp865 = icmp ne i32 %c864, 0
  br i1 %cmp865, label %L_8002d90b0, label %L_8002d90c0_ft
L_8002d9134:
  ; @pc 0x8002d9134 word 0xaa1a03ec
  %r991.p = getelementptr inbounds i8, ptr %c, i64 208
  %r991 = load i64, ptr %r991.p, align 8, !alias.scope !3, !noalias !4
  %t992 = or i64 0, %r991
  %wp993 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t992, ptr %wp993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9138 word 0xaa1403fa
  %r994.p = getelementptr inbounds i8, ptr %c, i64 160
  %r994 = load i64, ptr %r994.p, align 8, !alias.scope !3, !noalias !4
  %t995 = or i64 0, %r994
  %wp996 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d913c word 0xaa1803f4
  %r997.p = getelementptr inbounds i8, ptr %c, i64 192
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %t998 = or i64 0, %r997
  %wp999 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t998, ptr %wp999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9140 word 0xaa1303ed
  %r1000.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1000 = load i64, ptr %r1000.p, align 8, !alias.scope !3, !noalias !4
  %t1001 = or i64 0, %r1000
  %wp1002 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1001, ptr %wp1002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9144 word 0xd10123ae
  %r1003.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1003 = load i64, ptr %r1003.p, align 8, !alias.scope !3, !noalias !4
  %t1004 = sub i64 %r1003, 72
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1004, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9148 word 0x910043ef
  %r1006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1006 = load i64, ptr %r1006.p, align 8, !alias.scope !3, !noalias !4
  %t1007 = add i64 %r1006, 16
  %wp1008 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1007, ptr %wp1008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d914c word 0xd503201f
  br label %L_8002d9150
L_8002d9150:
  ; @pc 0x8002d9150 word 0x885f7edf
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %atp1010 = inttoptr i64 %r1009 to ptr
  %ldx1011 = load atomic i32, ptr %atp1010 acquire, align 4, !alias.scope !4, !noalias !3
  %c1012 = zext i32 %ldx1011 to i64
  %fp1013 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r1009, ptr %fp1013, align 8, !alias.scope !3, !noalias !4
  %fp1014 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c1012, ptr %fp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9154 word 0x8808fedf
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %atp1016 = inttoptr i64 %r1015 to ptr
  %fp1017 = getelementptr inbounds i8, ptr %c, i64 296
  %fv1018 = load i64, ptr %fp1017, align 8, !alias.scope !3, !noalias !4
  %fp1019 = getelementptr inbounds i8, ptr %c, i64 304
  %fv1020 = load i64, ptr %fp1019, align 8, !alias.scope !3, !noalias !4
  %fp1021 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp1021, align 8, !alias.scope !3, !noalias !4
  %cmp1022 = icmp eq i64 %fv1018, %r1015
  %c1023 = trunc i64 %fv1020 to i32
  %cx1024 = cmpxchg ptr %atp1016, i32 %c1023, i32 0 seq_cst seq_cst, align 4
  %cxok1025 = extractvalue { i32, i1 } %cx1024, 1
  %t1026 = and i1 %cmp1022, %cxok1025
  %sel1027 = select i1 %t1026, i32 0, i32 1
  %c1028 = zext i32 %sel1027 to i64
  %wp1029 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1028, ptr %wp1029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9158 word 0x35ffffc8
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %c1031 = trunc i64 %r1030 to i32
  %cmp1032 = icmp ne i32 %c1031, 0
  br i1 %cmp1032, label %L_8002d9150, label %L_8002d915c_ft
L_8002d9160:
  ; @pc 0x8002d9160 word 0xf9403297
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %t1034 = add i64 %r1033, 96
  %gmp1035 = inttoptr i64 %t1034 to ptr
  %gml1036 = load i64, ptr %gmp1035, align 1, !alias.scope !4, !noalias !3
  %wp1037 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1036, ptr %wp1037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9164 word 0xf94007f8
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = add i64 %r1038, 8
  %gmp1040 = inttoptr i64 %t1039 to ptr
  %gml1041 = load i64, ptr %gmp1040, align 1, !alias.scope !4, !noalias !3
  %wp1042 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1041, ptr %wp1042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9168 word 0xb5001a77
  %r1043.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1043 = load i64, ptr %r1043.p, align 8, !alias.scope !3, !noalias !4
  %cmp1044 = icmp ne i64 %r1043, 0
  br i1 %cmp1044, label %L_8002d94b4, label %L_8002d916c
L_8002d916c:
  ; @pc 0x8002d916c word 0xf001b408
  %wp1045 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9170 word 0xf9405f00
  %r1046.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1046 = load i64, ptr %r1046.p, align 8, !alias.scope !3, !noalias !4
  %t1047 = add i64 %r1046, 184
  %gmp1048 = inttoptr i64 %t1047 to ptr
  %gml1049 = load i64, ptr %gmp1048, align 1, !alias.scope !4, !noalias !3
  %wp1050 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1049, ptr %wp1050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9174 word 0xd10123a2
  %r1051.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1051 = load i64, ptr %r1051.p, align 8, !alias.scope !3, !noalias !4
  %t1052 = sub i64 %r1051, 72
  %wp1053 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1052, ptr %wp1053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9178 word 0xf85f83a4
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %t1055 = add i64 %r1054, -8
  %gmp1056 = inttoptr i64 %t1055 to ptr
  %gml1057 = load i64, ptr %gmp1056, align 1, !alias.scope !4, !noalias !3
  %wp1058 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml1057, ptr %wp1058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d917c word 0x910043e3
  %r1059.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1059 = load i64, ptr %r1059.p, align 8, !alias.scope !3, !noalias !4
  %t1060 = add i64 %r1059, 16
  %wp1061 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1060, ptr %wp1061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9180 word 0x2a1503e1
  %r1062.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1062 = load i64, ptr %r1062.p, align 8, !alias.scope !3, !noalias !4
  %c1063 = trunc i64 %r1062 to i32
  %t1064 = or i32 0, %c1063
  %c1065 = zext i32 %t1064 to i64
  %wp1066 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1065, ptr %wp1066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9184 word 0xf9402be5
  %r1067.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1067 = load i64, ptr %r1067.p, align 8, !alias.scope !3, !noalias !4
  %t1068 = add i64 %r1067, 80
  %gmp1069 = inttoptr i64 %t1068 to ptr
  %gml1070 = load i64, ptr %gmp1069, align 1, !alias.scope !4, !noalias !3
  %wp1071 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml1070, ptr %wp1071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9188 word 0xf940fd08
  %r1072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1072 = load i64, ptr %r1072.p, align 8, !alias.scope !3, !noalias !4
  %t1073 = add i64 %r1072, 504
  %gmp1074 = inttoptr i64 %t1073 to ptr
  %gml1075 = load i64, ptr %gmp1074, align 1, !alias.scope !4, !noalias !3
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1075, ptr %wp1076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d918c word 0xf9400108
  %r1077.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1077 = load i64, ptr %r1077.p, align 8, !alias.scope !3, !noalias !4
  %gmp1078 = inttoptr i64 %r1077 to ptr
  %gml1079 = load i64, ptr %gmp1078, align 1, !alias.scope !4, !noalias !3
  %wp1080 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1079, ptr %wp1080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9190 word 0xd63f0100
  %r1081.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1081 = load i64, ptr %r1081.p, align 8, !alias.scope !3, !noalias !4
  %fp1082 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1081, ptr %fp1082, align 8, !alias.scope !3, !noalias !4
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362724756, ptr %wp1083, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9194 word 0xf9400355
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %gmp1085 = inttoptr i64 %r1084 to ptr
  %gml1086 = load i64, ptr %gmp1085, align 1, !alias.scope !4, !noalias !3
  %wp1087 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1086, ptr %wp1087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9198 word 0xf940032c
  %r1088.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1088 = load i64, ptr %r1088.p, align 8, !alias.scope !3, !noalias !4
  %gmp1089 = inttoptr i64 %r1088 to ptr
  %gml1090 = load i64, ptr %gmp1089, align 1, !alias.scope !4, !noalias !3
  %wp1091 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1090, ptr %wp1091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d919c word 0xb400362c
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %cmp1093 = icmp eq i64 %r1092, 0
  br i1 %cmp1093, label %L_8002d9860, label %L_8002d91a0_ft
L_8002d91e0:
  ; @pc 0x8002d91e0 word 0xf940168c
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1205 = load i64, ptr %r1205.p, align 8, !alias.scope !3, !noalias !4
  %t1206 = add i64 %r1205, 40
  %gmp1207 = inttoptr i64 %t1206 to ptr
  %gml1208 = load i64, ptr %gmp1207, align 1, !alias.scope !4, !noalias !3
  %wp1209 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1208, ptr %wp1209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91e4 word 0xb500036c
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %cmp1211 = icmp ne i64 %r1210, 0
  br i1 %cmp1211, label %L_8002d9250, label %L_8002d91e8
L_8002d91e8:
  ; @pc 0x8002d91e8 word 0xf9401a8c
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %t1213 = add i64 %r1212, 48
  %gmp1214 = inttoptr i64 %t1213 to ptr
  %gml1215 = load i64, ptr %gmp1214, align 1, !alias.scope !4, !noalias !3
  %wp1216 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1215, ptr %wp1216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91ec word 0xb500056c
  %r1217.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1217 = load i64, ptr %r1217.p, align 8, !alias.scope !3, !noalias !4
  %cmp1218 = icmp ne i64 %r1217, 0
  br i1 %cmp1218, label %L_8002d9298, label %L_8002d91f0
L_8002d91f0:
  ; @pc 0x8002d91f0 word 0xf9401e8c
  %r1219.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1219 = load i64, ptr %r1219.p, align 8, !alias.scope !3, !noalias !4
  %t1220 = add i64 %r1219, 56
  %gmp1221 = inttoptr i64 %t1220 to ptr
  %gml1222 = load i64, ptr %gmp1221, align 1, !alias.scope !4, !noalias !3
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1222, ptr %wp1223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91f4 word 0xb500076c
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %cmp1225 = icmp ne i64 %r1224, 0
  br i1 %cmp1225, label %L_8002d92e0, label %L_8002d91f8
L_8002d91f8:
  ; @pc 0x8002d91f8 word 0xf940228c
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %t1227 = add i64 %r1226, 64
  %gmp1228 = inttoptr i64 %t1227 to ptr
  %gml1229 = load i64, ptr %gmp1228, align 1, !alias.scope !4, !noalias !3
  %wp1230 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1229, ptr %wp1230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91fc word 0xb500096c
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %cmp1232 = icmp ne i64 %r1231, 0
  br i1 %cmp1232, label %L_8002d9328, label %L_8002d9200
L_8002d9200:
  ; @pc 0x8002d9200 word 0xf940268c
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %t1234 = add i64 %r1233, 72
  %gmp1235 = inttoptr i64 %t1234 to ptr
  %gml1236 = load i64, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  %wp1237 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1236, ptr %wp1237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9204 word 0xb5000b6c
  %r1238.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1238 = load i64, ptr %r1238.p, align 8, !alias.scope !3, !noalias !4
  %cmp1239 = icmp ne i64 %r1238, 0
  br i1 %cmp1239, label %L_8002d9370, label %L_8002d9208
L_8002d9208:
  ; @pc 0x8002d9208 word 0xf9402a8c
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = add i64 %r1240, 80
  %gmp1242 = inttoptr i64 %t1241 to ptr
  %gml1243 = load i64, ptr %gmp1242, align 1, !alias.scope !4, !noalias !3
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d920c word 0xb5003c4c
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %cmp1246 = icmp ne i64 %r1245, 0
  br i1 %cmp1246, label %L_8002d9994, label %L_8002d9210
L_8002d9210:
  ; @pc 0x8002d9210 word 0xf9402e8c
  %r1247.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1247 = load i64, ptr %r1247.p, align 8, !alias.scope !3, !noalias !4
  %t1248 = add i64 %r1247, 88
  %gmp1249 = inttoptr i64 %t1248 to ptr
  %gml1250 = load i64, ptr %gmp1249, align 1, !alias.scope !4, !noalias !3
  %wp1251 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1250, ptr %wp1251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9214 word 0xb500286c
  %r1252.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1252 = load i64, ptr %r1252.p, align 8, !alias.scope !3, !noalias !4
  %cmp1253 = icmp ne i64 %r1252, 0
  br i1 %cmp1253, label %L_8002d9720, label %L_8002d9218
L_8002d9218:
  ; @pc 0x8002d9218 word 0xf9403297
  %r1254.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1254 = load i64, ptr %r1254.p, align 8, !alias.scope !3, !noalias !4
  %t1255 = add i64 %r1254, 96
  %gmp1256 = inttoptr i64 %t1255 to ptr
  %gml1257 = load i64, ptr %gmp1256, align 1, !alias.scope !4, !noalias !3
  %wp1258 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1257, ptr %wp1258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d921c word 0xb5001bb7
  %r1259.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1259 = load i64, ptr %r1259.p, align 8, !alias.scope !3, !noalias !4
  %cmp1260 = icmp ne i64 %r1259, 0
  br i1 %cmp1260, label %L_8002d9590, label %L_8002d9220_ft
L_8002d9224:
  ; @pc 0x8002d9224 word 0xa94f4ff4
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %t1265 = add i64 %r1264, 240
  %t1266 = add i64 %t1265, 8
  %gmp1267 = inttoptr i64 %t1265 to ptr
  %gml1268 = load i64, ptr %gmp1267, align 1, !alias.scope !4, !noalias !3
  %gmp1269 = inttoptr i64 %t1266 to ptr
  %gml1270 = load i64, ptr %gmp1269, align 1, !alias.scope !4, !noalias !3
  %wp1271 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1268, ptr %wp1271, align 8, !alias.scope !3, !noalias !4
  %wp1272 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1270, ptr %wp1272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9228 word 0xa94e57f6
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %t1274 = add i64 %r1273, 224
  %t1275 = add i64 %t1274, 8
  %gmp1276 = inttoptr i64 %t1274 to ptr
  %gml1277 = load i64, ptr %gmp1276, align 1, !alias.scope !4, !noalias !3
  %gmp1278 = inttoptr i64 %t1275 to ptr
  %gml1279 = load i64, ptr %gmp1278, align 1, !alias.scope !4, !noalias !3
  %wp1280 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1277, ptr %wp1280, align 8, !alias.scope !3, !noalias !4
  %wp1281 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1279, ptr %wp1281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d922c word 0xa94d5ff8
  %r1282.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1282 = load i64, ptr %r1282.p, align 8, !alias.scope !3, !noalias !4
  %t1283 = add i64 %r1282, 208
  %t1284 = add i64 %t1283, 8
  %gmp1285 = inttoptr i64 %t1283 to ptr
  %gml1286 = load i64, ptr %gmp1285, align 1, !alias.scope !4, !noalias !3
  %gmp1287 = inttoptr i64 %t1284 to ptr
  %gml1288 = load i64, ptr %gmp1287, align 1, !alias.scope !4, !noalias !3
  %wp1289 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1286, ptr %wp1289, align 8, !alias.scope !3, !noalias !4
  %wp1290 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1288, ptr %wp1290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9230 word 0xa94c67fa
  %r1291.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1291 = load i64, ptr %r1291.p, align 8, !alias.scope !3, !noalias !4
  %t1292 = add i64 %r1291, 192
  %t1293 = add i64 %t1292, 8
  %gmp1294 = inttoptr i64 %t1292 to ptr
  %gml1295 = load i64, ptr %gmp1294, align 1, !alias.scope !4, !noalias !3
  %gmp1296 = inttoptr i64 %t1293 to ptr
  %gml1297 = load i64, ptr %gmp1296, align 1, !alias.scope !4, !noalias !3
  %wp1298 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1295, ptr %wp1298, align 8, !alias.scope !3, !noalias !4
  %wp1299 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1297, ptr %wp1299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9234 word 0xa94b6ffc
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %t1301 = add i64 %r1300, 176
  %t1302 = add i64 %t1301, 8
  %gmp1303 = inttoptr i64 %t1301 to ptr
  %gml1304 = load i64, ptr %gmp1303, align 1, !alias.scope !4, !noalias !3
  %gmp1305 = inttoptr i64 %t1302 to ptr
  %gml1306 = load i64, ptr %gmp1305, align 1, !alias.scope !4, !noalias !3
  %wp1307 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1304, ptr %wp1307, align 8, !alias.scope !3, !noalias !4
  %wp1308 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1306, ptr %wp1308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9238 word 0xa94a7bfd
  %r1309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1309 = load i64, ptr %r1309.p, align 8, !alias.scope !3, !noalias !4
  %t1310 = add i64 %r1309, 160
  %t1311 = add i64 %t1310, 8
  %gmp1312 = inttoptr i64 %t1310 to ptr
  %gml1313 = load i64, ptr %gmp1312, align 1, !alias.scope !4, !noalias !3
  %gmp1314 = inttoptr i64 %t1311 to ptr
  %gml1315 = load i64, ptr %gmp1314, align 1, !alias.scope !4, !noalias !3
  %wp1316 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1313, ptr %wp1316, align 8, !alias.scope !3, !noalias !4
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1315, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d923c word 0x910403ff
  %r1318.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1318 = load i64, ptr %r1318.p, align 8, !alias.scope !3, !noalias !4
  %t1319 = add i64 %r1318, 256
  %wp1320 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1319, ptr %wp1320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9240 word 0xd65f03c0
  ret void
L_8002d9244:
  ; @pc 0x8002d9244 word 0x2a1f03f9
  %t1321 = or i32 0, 0
  %c1322 = zext i32 %t1321 to i64
  %wp1323 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1322, ptr %wp1323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9248 word 0xf940168c
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %t1325 = add i64 %r1324, 40
  %gmp1326 = inttoptr i64 %t1325 to ptr
  %gml1327 = load i64, ptr %gmp1326, align 1, !alias.scope !4, !noalias !3
  %wp1328 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1327, ptr %wp1328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d924c word 0xb4fffcec
  %r1329.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1329 = load i64, ptr %r1329.p, align 8, !alias.scope !3, !noalias !4
  %cmp1330 = icmp eq i64 %r1329, 0
  br i1 %cmp1330, label %L_8002d91e8, label %L_8002d9250
L_8002d9250:
  ; @pc 0x8002d9250 word 0xb94c8aad
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %t1332 = add i64 %r1331, 3208
  %gmp1333 = inttoptr i64 %t1332 to ptr
  %gml1334 = load i32, ptr %gmp1333, align 1, !alias.scope !4, !noalias !3
  %c1335 = zext i32 %gml1334 to i64
  %wp1336 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1335, ptr %wp1336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9254 word 0x363001ad
  %r1337.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1337 = load i64, ptr %r1337.p, align 8, !alias.scope !3, !noalias !4
  %t1338 = and i64 %r1337, 64
  %cmp1339 = icmp eq i64 %t1338, 0
  br i1 %cmp1339, label %L_8002d9288, label %L_8002d9258_ft
L_8002d9288:
  ; @pc 0x8002d9288 word 0x2a1f03f3
  %t1434 = or i32 0, 0
  %c1435 = zext i32 %t1434 to i64
  %wp1436 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1435, ptr %wp1436, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d928c
L_8002d928c:
  ; @pc 0x8002d928c word 0x2a130339
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %c1438 = trunc i64 %r1437 to i32
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %c1440 = trunc i64 %r1439 to i32
  %t1441 = or i32 %c1440, %c1438
  %c1442 = zext i32 %t1441 to i64
  %wp1443 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1442, ptr %wp1443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9290 word 0xf9401a8c
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %t1445 = add i64 %r1444, 48
  %gmp1446 = inttoptr i64 %t1445 to ptr
  %gml1447 = load i64, ptr %gmp1446, align 1, !alias.scope !4, !noalias !3
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9294 word 0xb4fffaec
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %cmp1450 = icmp eq i64 %r1449, 0
  br i1 %cmp1450, label %L_8002d91f0, label %L_8002d9298
L_8002d9298:
  ; @pc 0x8002d9298 word 0xb94c8aad
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %t1452 = add i64 %r1451, 3208
  %gmp1453 = inttoptr i64 %t1452 to ptr
  %gml1454 = load i32, ptr %gmp1453, align 1, !alias.scope !4, !noalias !3
  %c1455 = zext i32 %gml1454 to i64
  %wp1456 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1455, ptr %wp1456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d929c word 0x363001ad
  %r1457.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1457 = load i64, ptr %r1457.p, align 8, !alias.scope !3, !noalias !4
  %t1458 = and i64 %r1457, 64
  %cmp1459 = icmp eq i64 %t1458, 0
  br i1 %cmp1459, label %L_8002d92d0, label %L_8002d92a0_ft
L_8002d92d0:
  ; @pc 0x8002d92d0 word 0x2a1f03f3
  %t1554 = or i32 0, 0
  %c1555 = zext i32 %t1554 to i64
  %wp1556 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1555, ptr %wp1556, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d92d4
L_8002d92d4:
  ; @pc 0x8002d92d4 word 0x2a130339
  %r1557.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1557 = load i64, ptr %r1557.p, align 8, !alias.scope !3, !noalias !4
  %c1558 = trunc i64 %r1557 to i32
  %r1559.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1559 = load i64, ptr %r1559.p, align 8, !alias.scope !3, !noalias !4
  %c1560 = trunc i64 %r1559 to i32
  %t1561 = or i32 %c1560, %c1558
  %c1562 = zext i32 %t1561 to i64
  %wp1563 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1562, ptr %wp1563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92d8 word 0xf9401e8c
  %r1564.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1564 = load i64, ptr %r1564.p, align 8, !alias.scope !3, !noalias !4
  %t1565 = add i64 %r1564, 56
  %gmp1566 = inttoptr i64 %t1565 to ptr
  %gml1567 = load i64, ptr %gmp1566, align 1, !alias.scope !4, !noalias !3
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1567, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92dc word 0xb4fff8ec
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %cmp1570 = icmp eq i64 %r1569, 0
  br i1 %cmp1570, label %L_8002d91f8, label %L_8002d92e0
L_8002d92e0:
  ; @pc 0x8002d92e0 word 0xb94c8aad
  %r1571.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1571 = load i64, ptr %r1571.p, align 8, !alias.scope !3, !noalias !4
  %t1572 = add i64 %r1571, 3208
  %gmp1573 = inttoptr i64 %t1572 to ptr
  %gml1574 = load i32, ptr %gmp1573, align 1, !alias.scope !4, !noalias !3
  %c1575 = zext i32 %gml1574 to i64
  %wp1576 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1575, ptr %wp1576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92e4 word 0x363001ad
  %r1577.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1577 = load i64, ptr %r1577.p, align 8, !alias.scope !3, !noalias !4
  %t1578 = and i64 %r1577, 64
  %cmp1579 = icmp eq i64 %t1578, 0
  br i1 %cmp1579, label %L_8002d9318, label %L_8002d92e8_ft
L_8002d9318:
  ; @pc 0x8002d9318 word 0x2a1f03f3
  %t1674 = or i32 0, 0
  %c1675 = zext i32 %t1674 to i64
  %wp1676 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1675, ptr %wp1676, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d931c
L_8002d931c:
  ; @pc 0x8002d931c word 0x2a130339
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %c1678 = trunc i64 %r1677 to i32
  %r1679.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1679 = load i64, ptr %r1679.p, align 8, !alias.scope !3, !noalias !4
  %c1680 = trunc i64 %r1679 to i32
  %t1681 = or i32 %c1680, %c1678
  %c1682 = zext i32 %t1681 to i64
  %wp1683 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1682, ptr %wp1683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9320 word 0xf940228c
  %r1684.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1684 = load i64, ptr %r1684.p, align 8, !alias.scope !3, !noalias !4
  %t1685 = add i64 %r1684, 64
  %gmp1686 = inttoptr i64 %t1685 to ptr
  %gml1687 = load i64, ptr %gmp1686, align 1, !alias.scope !4, !noalias !3
  %wp1688 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1687, ptr %wp1688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9324 word 0xb4fff6ec
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %cmp1690 = icmp eq i64 %r1689, 0
  br i1 %cmp1690, label %L_8002d9200, label %L_8002d9328
L_8002d9328:
  ; @pc 0x8002d9328 word 0xb94c8aad
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %t1692 = add i64 %r1691, 3208
  %gmp1693 = inttoptr i64 %t1692 to ptr
  %gml1694 = load i32, ptr %gmp1693, align 1, !alias.scope !4, !noalias !3
  %c1695 = zext i32 %gml1694 to i64
  %wp1696 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1695, ptr %wp1696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d932c word 0x363001ad
  %r1697.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1697 = load i64, ptr %r1697.p, align 8, !alias.scope !3, !noalias !4
  %t1698 = and i64 %r1697, 64
  %cmp1699 = icmp eq i64 %t1698, 0
  br i1 %cmp1699, label %L_8002d9360, label %L_8002d9330_ft
L_8002d9360:
  ; @pc 0x8002d9360 word 0x2a1f03f3
  %t1794 = or i32 0, 0
  %c1795 = zext i32 %t1794 to i64
  %wp1796 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1795, ptr %wp1796, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9364
L_8002d9364:
  ; @pc 0x8002d9364 word 0x2a130339
  %r1797.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1797 = load i64, ptr %r1797.p, align 8, !alias.scope !3, !noalias !4
  %c1798 = trunc i64 %r1797 to i32
  %r1799.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1799 = load i64, ptr %r1799.p, align 8, !alias.scope !3, !noalias !4
  %c1800 = trunc i64 %r1799 to i32
  %t1801 = or i32 %c1800, %c1798
  %c1802 = zext i32 %t1801 to i64
  %wp1803 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1802, ptr %wp1803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9368 word 0xf940268c
  %r1804.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1804 = load i64, ptr %r1804.p, align 8, !alias.scope !3, !noalias !4
  %t1805 = add i64 %r1804, 72
  %gmp1806 = inttoptr i64 %t1805 to ptr
  %gml1807 = load i64, ptr %gmp1806, align 1, !alias.scope !4, !noalias !3
  %wp1808 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1807, ptr %wp1808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d936c word 0xb4fff4ec
  %r1809.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1809 = load i64, ptr %r1809.p, align 8, !alias.scope !3, !noalias !4
  %cmp1810 = icmp eq i64 %r1809, 0
  br i1 %cmp1810, label %L_8002d9208, label %L_8002d9370
L_8002d9370:
  ; @pc 0x8002d9370 word 0xb94c8aad
  %r1811.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1811 = load i64, ptr %r1811.p, align 8, !alias.scope !3, !noalias !4
  %t1812 = add i64 %r1811, 3208
  %gmp1813 = inttoptr i64 %t1812 to ptr
  %gml1814 = load i32, ptr %gmp1813, align 1, !alias.scope !4, !noalias !3
  %c1815 = zext i32 %gml1814 to i64
  %wp1816 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1815, ptr %wp1816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9374 word 0x3637f4ad
  %r1817.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1817 = load i64, ptr %r1817.p, align 8, !alias.scope !3, !noalias !4
  %t1818 = and i64 %r1817, 64
  %cmp1819 = icmp eq i64 %t1818, 0
  br i1 %cmp1819, label %L_8002d9208, label %L_8002d9378_ft
L_8002d9398:
  ; @pc 0x8002d9398 word 0x9b3021cb
  %r1887.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1887 = load i64, ptr %r1887.p, align 8, !alias.scope !3, !noalias !4
  %c1888 = trunc i64 %r1887 to i32
  %c1889 = sext i32 %c1888 to i64
  %r1890.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1890 = load i64, ptr %r1890.p, align 8, !alias.scope !3, !noalias !4
  %c1891 = trunc i64 %r1890 to i32
  %c1892 = sext i32 %c1891 to i64
  %t1893 = mul i64 %c1889, %c1892
  %r1894.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1894 = load i64, ptr %r1894.p, align 8, !alias.scope !3, !noalias !4
  %t1895 = add i64 %r1894, %t1893
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1895, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d939c word 0xb8404d6f
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %t1898 = add i64 %r1897, 4
  %gmp1899 = inttoptr i64 %t1898 to ptr
  %gml1900 = load i32, ptr %gmp1899, align 1, !alias.scope !4, !noalias !3
  %c1901 = zext i32 %gml1900 to i64
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1898, ptr %wp1902, align 8, !alias.scope !3, !noalias !4
  %wp1903 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1901, ptr %wp1903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93a0 word 0x3607f34f
  %r1904.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1904 = load i64, ptr %r1904.p, align 8, !alias.scope !3, !noalias !4
  %t1905 = and i64 %r1904, 1
  %cmp1906 = icmp eq i64 %t1905, 0
  br i1 %cmp1906, label %L_8002d9208, label %L_8002d93a4_ft
L_8002d93e8:
  ; @pc 0x8002d93e8 word 0xf94081ad
  %r1985.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1985 = load i64, ptr %r1985.p, align 8, !alias.scope !3, !noalias !4
  %t1986 = add i64 %r1985, 256
  %gmp1987 = inttoptr i64 %t1986 to ptr
  %gml1988 = load i64, ptr %gmp1987, align 1, !alias.scope !4, !noalias !3
  %wp1989 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1988, ptr %wp1989, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d93ec
L_8002d93ec:
  ; @pc 0x8002d93ec word 0x8b0c01cc
  %r1990.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1990 = load i64, ptr %r1990.p, align 8, !alias.scope !3, !noalias !4
  %r1991.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1991 = load i64, ptr %r1991.p, align 8, !alias.scope !3, !noalias !4
  %t1992 = add i64 %r1990, %r1991
  %wp1993 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1992, ptr %wp1993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93f0 word 0xf86d698c
  %r1994.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1994 = load i64, ptr %r1994.p, align 8, !alias.scope !3, !noalias !4
  %r1995.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1995 = load i64, ptr %r1995.p, align 8, !alias.scope !3, !noalias !4
  %t1996 = add i64 %r1994, %r1995
  %gmp1997 = inttoptr i64 %t1996 to ptr
  %gml1998 = load i64, ptr %gmp1997, align 1, !alias.scope !4, !noalias !3
  %wp1999 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1998, ptr %wp1999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93f4 word 0xb400590c
  %r2000.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2000 = load i64, ptr %r2000.p, align 8, !alias.scope !3, !noalias !4
  %cmp2001 = icmp eq i64 %r2000, 0
  br i1 %cmp2001, label %L_8002d9f14, label %L_8002d93f8_ft
L_8002d93fc:
  ; @pc 0x8002d93fc word 0x6b09015f
  %r2005.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2005 = load i64, ptr %r2005.p, align 8, !alias.scope !3, !noalias !4
  %c2006 = trunc i64 %r2005 to i32
  %r2007.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2007 = load i64, ptr %r2007.p, align 8, !alias.scope !3, !noalias !4
  %c2008 = trunc i64 %r2007 to i32
  %t2009 = sub i32 %c2006, %c2008
  %fn2010 = icmp slt i32 %t2009, 0
  %fz2011 = icmp eq i32 %t2009, 0
  %fc2012 = icmp uge i32 %c2006, %c2008
  %fx12013 = xor i32 %c2006, %c2008
  %fx22014 = xor i32 %c2006, %t2009
  %fva2015 = and i32 %fx12013, %fx22014
  %fv2016 = icmp slt i32 %fva2015, 0
  %nz2017 = zext i1 %fn2010 to i64
  %zz2018 = zext i1 %fz2011 to i64
  %cz2019 = zext i1 %fc2012 to i64
  %vz2020 = zext i1 %fv2016 to i64
  %ns2021 = shl i64 %nz2017, 31
  %zs2022 = shl i64 %zz2018, 30
  %cs2023 = shl i64 %cz2019, 29
  %vs2024 = shl i64 %vz2020, 28
  %nzor2025 = or i64 %ns2021, %zs2022
  %cvor2026 = or i64 %cs2023, %vs2024
  %nzcv2027 = or i64 %nzor2025, %cvor2026
  %wp2028 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2027, ptr %wp2028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9400 word 0xf9405f16
  %r2029.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2029 = load i64, ptr %r2029.p, align 8, !alias.scope !3, !noalias !4
  %t2030 = add i64 %r2029, 184
  %gmp2031 = inttoptr i64 %t2030 to ptr
  %gml2032 = load i64, ptr %gmp2031, align 1, !alias.scope !4, !noalias !3
  %wp2033 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2032, ptr %wp2033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9404 word 0x1a9f8129
  %r2034.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2034 = load i64, ptr %r2034.p, align 8, !alias.scope !3, !noalias !4
  %c2035 = trunc i64 %r2034 to i32
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %fsh2038 = lshr i64 %r2036, 29
  %ftr2039 = trunc i64 %fsh2038 to i1
  %fsh2040 = lshr i64 %r2036, 30
  %ftr2041 = trunc i64 %fsh2040 to i1
  %fnz2042 = xor i1 %ftr2041, true
  %cond2037 = and i1 %ftr2039, %fnz2042
  %sel2043 = select i1 %cond2037, i32 %c2035, i32 0
  %c2044 = zext i32 %sel2043 to i64
  %wp2045 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2044, ptr %wp2045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9408 word 0x9b302128
  %r2046.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2046 = load i64, ptr %r2046.p, align 8, !alias.scope !3, !noalias !4
  %c2047 = trunc i64 %r2046 to i32
  %c2048 = sext i32 %c2047 to i64
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %c2050 = trunc i64 %r2049 to i32
  %c2051 = sext i32 %c2050 to i64
  %t2052 = mul i64 %c2048, %c2051
  %r2053.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2053 = load i64, ptr %r2053.p, align 8, !alias.scope !3, !noalias !4
  %t2054 = add i64 %r2053, %t2052
  %wp2055 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2054, ptr %wp2055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d940c word 0xf94686a9
  %r2056.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2056 = load i64, ptr %r2056.p, align 8, !alias.scope !3, !noalias !4
  %t2057 = add i64 %r2056, 3336
  %gmp2058 = inttoptr i64 %t2057 to ptr
  %gml2059 = load i64, ptr %gmp2058, align 1, !alias.scope !4, !noalias !3
  %wp2060 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2059, ptr %wp2060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9410 word 0xf9400d08
  %r2061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2061 = load i64, ptr %r2061.p, align 8, !alias.scope !3, !noalias !4
  %t2062 = add i64 %r2061, 24
  %gmp2063 = inttoptr i64 %t2062 to ptr
  %gml2064 = load i64, ptr %gmp2063, align 1, !alias.scope !4, !noalias !3
  %wp2065 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2064, ptr %wp2065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9414 word 0xf9400108
  %r2066.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2066 = load i64, ptr %r2066.p, align 8, !alias.scope !3, !noalias !4
  %gmp2067 = inttoptr i64 %r2066 to ptr
  %gml2068 = load i64, ptr %gmp2067, align 1, !alias.scope !4, !noalias !3
  %wp2069 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2068, ptr %wp2069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9418 word 0x79410908
  %r2070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2070 = load i64, ptr %r2070.p, align 8, !alias.scope !3, !noalias !4
  %t2071 = add i64 %r2070, 132
  %gmp2072 = inttoptr i64 %t2071 to ptr
  %gml2073 = load i16, ptr %gmp2072, align 1, !alias.scope !4, !noalias !3
  %c2074 = zext i16 %gml2073 to i64
  %wp2075 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2074, ptr %wp2075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d941c word 0x8b081537
  %r2076.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2076 = load i64, ptr %r2076.p, align 8, !alias.scope !3, !noalias !4
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %t2078 = shl i64 %r2077, 5
  %t2079 = add i64 %r2076, %t2078
  %wp2080 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2079, ptr %wp2080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9420 word 0x3700014b
  %r2081.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2081 = load i64, ptr %r2081.p, align 8, !alias.scope !3, !noalias !4
  %t2082 = and i64 %r2081, 1
  %cmp2083 = icmp ne i64 %t2082, 0
  br i1 %cmp2083, label %L_8002d9448, label %L_8002d9424_ft
L_8002d9448:
  ; @pc 0x8002d9448 word 0xf001b408
  %wp2114 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d944c word 0xb0015322
  %wp2115 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp2115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9450 word 0x910bb042
  %r2116.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2116 = load i64, ptr %r2116.p, align 8, !alias.scope !3, !noalias !4
  %t2117 = add i64 %r2116, 748
  %wp2118 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2117, ptr %wp2118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9454 word 0xf946a108
  %r2119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2119 = load i64, ptr %r2119.p, align 8, !alias.scope !3, !noalias !4
  %t2120 = add i64 %r2119, 3392
  %gmp2121 = inttoptr i64 %t2120 to ptr
  %gml2122 = load i64, ptr %gmp2121, align 1, !alias.scope !4, !noalias !3
  %wp2123 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2122, ptr %wp2123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9458 word 0x528000a1
  %c2124 = zext i32 5 to i64
  %wp2125 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2124, ptr %wp2125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d945c word 0xf9400108
  %r2126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2126 = load i64, ptr %r2126.p, align 8, !alias.scope !3, !noalias !4
  %gmp2127 = inttoptr i64 %r2126 to ptr
  %gml2128 = load i64, ptr %gmp2127, align 1, !alias.scope !4, !noalias !3
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9460 word 0xaa1603e0
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %t2131 = or i64 0, %r2130
  %wp2132 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2131, ptr %wp2132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9464 word 0x528001e3
  %c2133 = zext i32 15 to i64
  %wp2134 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2133, ptr %wp2134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9468 word 0xd63f0100
  %r2135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2135 = load i64, ptr %r2135.p, align 8, !alias.scope !3, !noalias !4
  %fp2136 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2135, ptr %fp2136, align 8, !alias.scope !3, !noalias !4
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725484, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d946c word 0xb94c8aa8
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = add i64 %r2138, 3208
  %gmp2140 = inttoptr i64 %t2139 to ptr
  %gml2141 = load i32, ptr %gmp2140, align 1, !alias.scope !4, !noalias !3
  %c2142 = zext i32 %gml2141 to i64
  %wp2143 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2142, ptr %wp2143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9470 word 0x36a001c8
  %r2144.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2144 = load i64, ptr %r2144.p, align 8, !alias.scope !3, !noalias !4
  %t2145 = and i64 %r2144, 1048576
  %cmp2146 = icmp eq i64 %t2145, 0
  br i1 %cmp2146, label %L_8002d94a8, label %L_8002d9474_ft
L_8002d94a0:
  ; @pc 0x8002d94a0 word 0x39722aa8
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %t2204 = add i64 %r2203, 3210
  %gmp2205 = inttoptr i64 %t2204 to ptr
  %gml2206 = load i8, ptr %gmp2205, align 1, !alias.scope !4, !noalias !3
  %c2207 = zext i8 %gml2206 to i64
  %wp2208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2207, ptr %wp2208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94a4 word 0x37286aa8
  %r2209.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2209 = load i64, ptr %r2209.p, align 8, !alias.scope !3, !noalias !4
  %t2210 = and i64 %r2209, 32
  %cmp2211 = icmp ne i64 %t2210, 0
  br i1 %cmp2211, label %L_8002da1f8, label %L_8002d94a8
L_8002d94a8:
  ; @pc 0x8002d94a8 word 0x52800039
  %c2212 = zext i32 1 to i64
  %wp2213 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2212, ptr %wp2213, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d94ac
L_8002d94ac:
  ; @pc 0x8002d94ac word 0x2a1c03f0
  %r2214.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2214 = load i64, ptr %r2214.p, align 8, !alias.scope !3, !noalias !4
  %c2215 = trunc i64 %r2214 to i32
  %t2216 = or i32 0, %c2215
  %c2217 = zext i32 %t2216 to i64
  %wp2218 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c2217, ptr %wp2218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94b0 word 0x17ffff56
  br label %L_8002d9208
L_8002d94b4:
  ; @pc 0x8002d94b4 word 0xb94072e8
  %r2219.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2219 = load i64, ptr %r2219.p, align 8, !alias.scope !3, !noalias !4
  %t2220 = add i64 %r2219, 112
  %gmp2221 = inttoptr i64 %t2220 to ptr
  %gml2222 = load i32, ptr %gmp2221, align 1, !alias.scope !4, !noalias !3
  %c2223 = zext i32 %gml2222 to i64
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94b8 word 0x3100051f
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %c2226 = trunc i64 %r2225 to i32
  %t2227 = add i32 %c2226, 1
  %fn2228 = icmp slt i32 %t2227, 0
  %fz2229 = icmp eq i32 %t2227, 0
  %fc2230 = icmp ult i32 %t2227, %c2226
  %fx12231 = xor i32 %c2226, %t2227
  %fx22232 = xor i32 1, %t2227
  %fva2233 = and i32 %fx12231, %fx22232
  %fv2234 = icmp slt i32 %fva2233, 0
  %nz2235 = zext i1 %fn2228 to i64
  %zz2236 = zext i1 %fz2229 to i64
  %cz2237 = zext i1 %fc2230 to i64
  %vz2238 = zext i1 %fv2234 to i64
  %ns2239 = shl i64 %nz2235, 31
  %zs2240 = shl i64 %zz2236, 30
  %cs2241 = shl i64 %cz2237, 29
  %vs2242 = shl i64 %vz2238, 28
  %nzor2243 = or i64 %ns2239, %zs2240
  %cvor2244 = or i64 %cs2241, %vs2242
  %nzcv2245 = or i64 %nzor2243, %cvor2244
  %wp2246 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2245, ptr %wp2246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94bc word 0x54ffe580
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %fsh2249 = lshr i64 %r2247, 30
  %cond2248 = trunc i64 %fsh2249 to i1
  br i1 %cond2248, label %L_8002d916c, label %L_8002d94c0_ft
L_8002d94f4:
  ; @pc 0x8002d94f4 word 0x910342e8
  %r2344.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2344 = load i64, ptr %r2344.p, align 8, !alias.scope !3, !noalias !4
  %t2345 = add i64 %r2344, 208
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2345, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94f8 word 0xf9002be8
  %r2347.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2347 = load i64, ptr %r2347.p, align 8, !alias.scope !3, !noalias !4
  %t2348 = add i64 %r2347, 80
  %r2349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2349 = load i64, ptr %r2349.p, align 8, !alias.scope !3, !noalias !4
  %gmp2350 = inttoptr i64 %t2348 to ptr
  store i64 %r2349, ptr %gmp2350, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d94fc word 0x17ffff1c
  br label %L_8002d916c
L_8002d9500:
  ; @pc 0x8002d9500 word 0x885ffe61
  %r2351.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2351 = load i64, ptr %r2351.p, align 8, !alias.scope !3, !noalias !4
  %atp2352 = inttoptr i64 %r2351 to ptr
  %ldx2353 = load atomic i32, ptr %atp2352 acquire, align 4, !alias.scope !4, !noalias !3
  %c2354 = zext i32 %ldx2353 to i64
  %fp2355 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2351, ptr %fp2355, align 8, !alias.scope !3, !noalias !4
  %fp2356 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2354, ptr %fp2356, align 8, !alias.scope !3, !noalias !4
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2354, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9504 word 0x32010028
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %c2359 = trunc i64 %r2358 to i32
  %t2360 = or i32 %c2359, -2147483648
  %c2361 = zext i32 %t2360 to i64
  %wp2362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2361, ptr %wp2362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9508 word 0x88097e68
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %atp2364 = inttoptr i64 %r2363 to ptr
  %fp2365 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2366 = load i64, ptr %fp2365, align 8, !alias.scope !3, !noalias !4
  %fp2367 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2368 = load i64, ptr %fp2367, align 8, !alias.scope !3, !noalias !4
  %fp2369 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2369, align 8, !alias.scope !3, !noalias !4
  %cmp2370 = icmp eq i64 %fv2366, %r2363
  %c2371 = trunc i64 %fv2368 to i32
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %c2373 = trunc i64 %r2372 to i32
  %cx2374 = cmpxchg ptr %atp2364, i32 %c2371, i32 %c2373 seq_cst seq_cst, align 4
  %cxok2375 = extractvalue { i32, i1 } %cx2374, 1
  %t2376 = and i1 %cmp2370, %cxok2375
  %sel2377 = select i1 %t2376, i32 0, i32 1
  %c2378 = zext i32 %sel2377 to i64
  %wp2379 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2378, ptr %wp2379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d950c word 0x35ffffa9
  %r2380.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2380 = load i64, ptr %r2380.p, align 8, !alias.scope !3, !noalias !4
  %c2381 = trunc i64 %r2380 to i32
  %cmp2382 = icmp ne i32 %c2381, 0
  br i1 %cmp2382, label %L_8002d9500, label %L_8002d9510_ft
L_8002d9580:
  ; @pc 0x8002d9580 word 0x885f7e7f
  %r2503.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2503 = load i64, ptr %r2503.p, align 8, !alias.scope !3, !noalias !4
  %atp2504 = inttoptr i64 %r2503 to ptr
  %ldx2505 = load atomic i32, ptr %atp2504 acquire, align 4, !alias.scope !4, !noalias !3
  %c2506 = zext i32 %ldx2505 to i64
  %fp2507 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r2503, ptr %fp2507, align 8, !alias.scope !3, !noalias !4
  %fp2508 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c2506, ptr %fp2508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9584 word 0x8808fe7f
  %r2509.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2509 = load i64, ptr %r2509.p, align 8, !alias.scope !3, !noalias !4
  %atp2510 = inttoptr i64 %r2509 to ptr
  %fp2511 = getelementptr inbounds i8, ptr %c, i64 296
  %fv2512 = load i64, ptr %fp2511, align 8, !alias.scope !3, !noalias !4
  %fp2513 = getelementptr inbounds i8, ptr %c, i64 304
  %fv2514 = load i64, ptr %fp2513, align 8, !alias.scope !3, !noalias !4
  %fp2515 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp2515, align 8, !alias.scope !3, !noalias !4
  %cmp2516 = icmp eq i64 %fv2512, %r2509
  %c2517 = trunc i64 %fv2514 to i32
  %cx2518 = cmpxchg ptr %atp2510, i32 %c2517, i32 0 seq_cst seq_cst, align 4
  %cxok2519 = extractvalue { i32, i1 } %cx2518, 1
  %t2520 = and i1 %cmp2516, %cxok2519
  %sel2521 = select i1 %t2520, i32 0, i32 1
  %c2522 = zext i32 %sel2521 to i64
  %wp2523 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2522, ptr %wp2523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9588 word 0x35ffffc8
  %r2524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2524 = load i64, ptr %r2524.p, align 8, !alias.scope !3, !noalias !4
  %c2525 = trunc i64 %r2524 to i32
  %cmp2526 = icmp ne i32 %c2525, 0
  br i1 %cmp2526, label %L_8002d9580, label %L_8002d958c_ft
L_8002d9590:
  ; @pc 0x8002d9590 word 0xb94c8aac
  %r2527.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2527 = load i64, ptr %r2527.p, align 8, !alias.scope !3, !noalias !4
  %t2528 = add i64 %r2527, 3208
  %gmp2529 = inttoptr i64 %t2528 to ptr
  %gml2530 = load i32, ptr %gmp2529, align 1, !alias.scope !4, !noalias !3
  %c2531 = zext i32 %gml2530 to i64
  %wp2532 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2531, ptr %wp2532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9594 word 0x363001ac
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %t2534 = and i64 %r2533, 64
  %cmp2535 = icmp eq i64 %t2534, 0
  br i1 %cmp2535, label %L_8002d95c8, label %L_8002d9598_ft
L_8002d95c8:
  ; @pc 0x8002d95c8 word 0x3607e2f9
  %r2630.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2630 = load i64, ptr %r2630.p, align 8, !alias.scope !3, !noalias !4
  %t2631 = and i64 %r2630, 1
  %cmp2632 = icmp eq i64 %t2631, 0
  br i1 %cmp2632, label %L_8002d9224, label %L_8002d95cc
L_8002d95cc:
  ; @pc 0x8002d95cc word 0xb94c8aa8
  %r2633.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2633 = load i64, ptr %r2633.p, align 8, !alias.scope !3, !noalias !4
  %t2634 = add i64 %r2633, 3208
  %gmp2635 = inttoptr i64 %t2634 to ptr
  %gml2636 = load i32, ptr %gmp2635, align 1, !alias.scope !4, !noalias !3
  %c2637 = zext i32 %gml2636 to i64
  %wp2638 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2637, ptr %wp2638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95d0 word 0x120c0508
  %r2639.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2639 = load i64, ptr %r2639.p, align 8, !alias.scope !3, !noalias !4
  %c2640 = trunc i64 %r2639 to i32
  %t2641 = and i32 %c2640, 3145728
  %c2642 = zext i32 %t2641 to i64
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2642, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95d4 word 0x7144011f
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %c2645 = trunc i64 %r2644 to i32
  %t2646 = sub i32 %c2645, 1048576
  %fn2647 = icmp slt i32 %t2646, 0
  %fz2648 = icmp eq i32 %t2646, 0
  %fc2649 = icmp uge i32 %c2645, 1048576
  %fx12650 = xor i32 %c2645, 1048576
  %fx22651 = xor i32 %c2645, %t2646
  %fva2652 = and i32 %fx12650, %fx22651
  %fv2653 = icmp slt i32 %fva2652, 0
  %nz2654 = zext i1 %fn2647 to i64
  %zz2655 = zext i1 %fz2648 to i64
  %cz2656 = zext i1 %fc2649 to i64
  %vz2657 = zext i1 %fv2653 to i64
  %ns2658 = shl i64 %nz2654, 31
  %zs2659 = shl i64 %zz2655, 30
  %cs2660 = shl i64 %cz2656, 29
  %vs2661 = shl i64 %vz2657, 28
  %nzor2662 = or i64 %ns2658, %zs2659
  %cvor2663 = or i64 %cs2660, %vs2661
  %nzcv2664 = or i64 %nzor2662, %cvor2663
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2664, ptr %wp2665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95d8 word 0x54ffe261
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %fsh2668 = lshr i64 %r2666, 30
  %ftr2669 = trunc i64 %fsh2668 to i1
  %cond2667 = xor i1 %ftr2669, true
  br i1 %cond2667, label %L_8002d9224, label %L_8002d95dc_ft
L_8002d9610:
  ; @pc 0x8002d9610 word 0x36a0528d
  %r2745.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2745 = load i64, ptr %r2745.p, align 8, !alias.scope !3, !noalias !4
  %t2746 = and i64 %r2745, 1048576
  %cmp2747 = icmp eq i64 %t2746, 0
  br i1 %cmp2747, label %L_8002da060, label %L_8002d9614_ft
L_8002d964c:
  ; @pc 0x8002d964c word 0xf94081ad
  %r2815.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2815 = load i64, ptr %r2815.p, align 8, !alias.scope !3, !noalias !4
  %t2816 = add i64 %r2815, 256
  %gmp2817 = inttoptr i64 %t2816 to ptr
  %gml2818 = load i64, ptr %gmp2817, align 1, !alias.scope !4, !noalias !3
  %wp2819 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2818, ptr %wp2819, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9650
L_8002d9650:
  ; @pc 0x8002d9650 word 0x8b0c01cc
  %r2820.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2820 = load i64, ptr %r2820.p, align 8, !alias.scope !3, !noalias !4
  %r2821.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2821 = load i64, ptr %r2821.p, align 8, !alias.scope !3, !noalias !4
  %t2822 = add i64 %r2820, %r2821
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9654 word 0xf86d698c
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %r2825.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2825 = load i64, ptr %r2825.p, align 8, !alias.scope !3, !noalias !4
  %t2826 = add i64 %r2824, %r2825
  %gmp2827 = inttoptr i64 %t2826 to ptr
  %gml2828 = load i64, ptr %gmp2827, align 1, !alias.scope !4, !noalias !3
  %wp2829 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2828, ptr %wp2829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9658 word 0xb4002c2c
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %cmp2831 = icmp eq i64 %r2830, 0
  br i1 %cmp2831, label %L_8002d9bdc, label %L_8002d965c_ft
L_8002d9660:
  ; @pc 0x8002d9660 word 0x6b09015f
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %c2836 = trunc i64 %r2835 to i32
  %r2837.p = getelementptr inbounds i8, ptr %c, i64 72
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
  ; @pc 0x8002d9664 word 0x540049e9
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %fsh2861 = lshr i64 %r2859, 29
  %ftr2862 = trunc i64 %fsh2861 to i1
  %fsh2863 = lshr i64 %r2859, 30
  %ftr2864 = trunc i64 %fsh2863 to i1
  %fnz2865 = xor i1 %ftr2864, true
  %fhi2866 = and i1 %ftr2862, %fnz2865
  %cond2860 = xor i1 %fhi2866, true
  br i1 %cond2860, label %L_8002d9fa0, label %L_8002d9668
L_8002d9668:
  ; @pc 0x8002d9668 word 0x9b302128
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %c2868 = trunc i64 %r2867 to i32
  %c2869 = sext i32 %c2868 to i64
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %c2871 = trunc i64 %r2870 to i32
  %c2872 = sext i32 %c2871 to i64
  %t2873 = mul i64 %c2869, %c2872
  %r2874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2874 = load i64, ptr %r2874.p, align 8, !alias.scope !3, !noalias !4
  %t2875 = add i64 %r2874, %t2873
  %wp2876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2875, ptr %wp2876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d966c word 0xf94686a9
  %r2877.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2877 = load i64, ptr %r2877.p, align 8, !alias.scope !3, !noalias !4
  %t2878 = add i64 %r2877, 3336
  %gmp2879 = inttoptr i64 %t2878 to ptr
  %gml2880 = load i64, ptr %gmp2879, align 1, !alias.scope !4, !noalias !3
  %wp2881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2880, ptr %wp2881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9670 word 0xf9405f16
  %r2882.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2882 = load i64, ptr %r2882.p, align 8, !alias.scope !3, !noalias !4
  %t2883 = add i64 %r2882, 184
  %gmp2884 = inttoptr i64 %t2883 to ptr
  %gml2885 = load i64, ptr %gmp2884, align 1, !alias.scope !4, !noalias !3
  %wp2886 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2885, ptr %wp2886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9674 word 0xf9400d08
  %r2887.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2887 = load i64, ptr %r2887.p, align 8, !alias.scope !3, !noalias !4
  %t2888 = add i64 %r2887, 24
  %gmp2889 = inttoptr i64 %t2888 to ptr
  %gml2890 = load i64, ptr %gmp2889, align 1, !alias.scope !4, !noalias !3
  %wp2891 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2890, ptr %wp2891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9678 word 0xf9400108
  %r2892.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2892 = load i64, ptr %r2892.p, align 8, !alias.scope !3, !noalias !4
  %gmp2893 = inttoptr i64 %r2892 to ptr
  %gml2894 = load i64, ptr %gmp2893, align 1, !alias.scope !4, !noalias !3
  %wp2895 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2894, ptr %wp2895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d967c word 0x79410908
  %r2896.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2896 = load i64, ptr %r2896.p, align 8, !alias.scope !3, !noalias !4
  %t2897 = add i64 %r2896, 132
  %gmp2898 = inttoptr i64 %t2897 to ptr
  %gml2899 = load i16, ptr %gmp2898, align 1, !alias.scope !4, !noalias !3
  %c2900 = zext i16 %gml2899 to i64
  %wp2901 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2900, ptr %wp2901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9680 word 0x8b081537
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %r2903.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2903 = load i64, ptr %r2903.p, align 8, !alias.scope !3, !noalias !4
  %t2904 = shl i64 %r2903, 5
  %t2905 = add i64 %r2902, %t2904
  %wp2906 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2905, ptr %wp2906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9684 word 0x3700014b
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %t2908 = and i64 %r2907, 1
  %cmp2909 = icmp ne i64 %t2908, 0
  br i1 %cmp2909, label %L_8002d96ac, label %L_8002d9688_ft
L_8002d96ac:
  ; @pc 0x8002d96ac word 0xf001b408
  %wp2940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96b0 word 0xb0015322
  %wp2941 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp2941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96b4 word 0x910bb042
  %r2942.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2942 = load i64, ptr %r2942.p, align 8, !alias.scope !3, !noalias !4
  %t2943 = add i64 %r2942, 748
  %wp2944 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2943, ptr %wp2944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96b8 word 0xf946a108
  %r2945.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2945 = load i64, ptr %r2945.p, align 8, !alias.scope !3, !noalias !4
  %t2946 = add i64 %r2945, 3392
  %gmp2947 = inttoptr i64 %t2946 to ptr
  %gml2948 = load i64, ptr %gmp2947, align 1, !alias.scope !4, !noalias !3
  %wp2949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2948, ptr %wp2949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96bc word 0xaa1603e0
  %r2950.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2950 = load i64, ptr %r2950.p, align 8, !alias.scope !3, !noalias !4
  %t2951 = or i64 0, %r2950
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2951, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96c0 word 0xf9400108
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %gmp2954 = inttoptr i64 %r2953 to ptr
  %gml2955 = load i64, ptr %gmp2954, align 1, !alias.scope !4, !noalias !3
  %wp2956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2955, ptr %wp2956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96c4 word 0x2a1f03e1
  %t2957 = or i32 0, 0
  %c2958 = zext i32 %t2957 to i64
  %wp2959 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2958, ptr %wp2959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96c8 word 0x528001e3
  %c2960 = zext i32 15 to i64
  %wp2961 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2960, ptr %wp2961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96cc word 0xd63f0100
  %r2962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2962 = load i64, ptr %r2962.p, align 8, !alias.scope !3, !noalias !4
  %fp2963 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2962, ptr %fp2963, align 8, !alias.scope !3, !noalias !4
  %wp2964 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726096, ptr %wp2964, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d96d0 word 0xb94c8aa8
  %r2965.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2965 = load i64, ptr %r2965.p, align 8, !alias.scope !3, !noalias !4
  %t2966 = add i64 %r2965, 3208
  %gmp2967 = inttoptr i64 %t2966 to ptr
  %gml2968 = load i32, ptr %gmp2967, align 1, !alias.scope !4, !noalias !3
  %c2969 = zext i32 %gml2968 to i64
  %wp2970 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2969, ptr %wp2970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96d4 word 0x36a04f68
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %t2972 = and i64 %r2971, 1048576
  %cmp2973 = icmp eq i64 %t2972, 0
  br i1 %cmp2973, label %L_8002da0c0, label %L_8002d96d8_ft
L_8002d9704:
  ; @pc 0x8002d9704 word 0x39722aa8
  %r3030.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3030 = load i64, ptr %r3030.p, align 8, !alias.scope !3, !noalias !4
  %t3031 = add i64 %r3030, 3210
  %gmp3032 = inttoptr i64 %t3031 to ptr
  %gml3033 = load i8, ptr %gmp3032, align 1, !alias.scope !4, !noalias !3
  %c3034 = zext i8 %gml3033 to i64
  %wp3035 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3034, ptr %wp3035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9708 word 0x37284f68
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %t3037 = and i64 %r3036, 32
  %cmp3038 = icmp ne i64 %t3037, 0
  br i1 %cmp3038, label %L_8002da0f4, label %L_8002d970c_ft
L_8002d9720:
  ; @pc 0x8002d9720 word 0xb94c8aad
  %r3053.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3053 = load i64, ptr %r3053.p, align 8, !alias.scope !3, !noalias !4
  %t3054 = add i64 %r3053, 3208
  %gmp3055 = inttoptr i64 %t3054 to ptr
  %gml3056 = load i32, ptr %gmp3055, align 1, !alias.scope !4, !noalias !3
  %c3057 = zext i32 %gml3056 to i64
  %wp3058 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3057, ptr %wp3058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9724 word 0x3637d7ad
  %r3059.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3059 = load i64, ptr %r3059.p, align 8, !alias.scope !3, !noalias !4
  %t3060 = and i64 %r3059, 64
  %cmp3061 = icmp eq i64 %t3060, 0
  br i1 %cmp3061, label %L_8002d9218, label %L_8002d9728_ft
L_8002d9794:
  ; @pc 0x8002d9794 word 0xf94081ad
  %r3226.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3226 = load i64, ptr %r3226.p, align 8, !alias.scope !3, !noalias !4
  %t3227 = add i64 %r3226, 256
  %gmp3228 = inttoptr i64 %t3227 to ptr
  %gml3229 = load i64, ptr %gmp3228, align 1, !alias.scope !4, !noalias !3
  %wp3230 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3229, ptr %wp3230, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9798
L_8002d9798:
  ; @pc 0x8002d9798 word 0x8b0c01cc
  %r3231.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3231 = load i64, ptr %r3231.p, align 8, !alias.scope !3, !noalias !4
  %r3232.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3232 = load i64, ptr %r3232.p, align 8, !alias.scope !3, !noalias !4
  %t3233 = add i64 %r3231, %r3232
  %wp3234 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3233, ptr %wp3234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d979c word 0xf86d698c
  %r3235.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3235 = load i64, ptr %r3235.p, align 8, !alias.scope !3, !noalias !4
  %r3236.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3236 = load i64, ptr %r3236.p, align 8, !alias.scope !3, !noalias !4
  %t3237 = add i64 %r3235, %r3236
  %gmp3238 = inttoptr i64 %t3237 to ptr
  %gml3239 = load i64, ptr %gmp3238, align 1, !alias.scope !4, !noalias !3
  %wp3240 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3239, ptr %wp3240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97a0 word 0xb4006b8c
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %cmp3242 = icmp eq i64 %r3241, 0
  br i1 %cmp3242, label %L_8002da510, label %L_8002d97a4_ft
L_8002d97a8:
  ; @pc 0x8002d97a8 word 0x6b0a013f
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %c3247 = trunc i64 %r3246 to i32
  %r3248.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3248 = load i64, ptr %r3248.p, align 8, !alias.scope !3, !noalias !4
  %c3249 = trunc i64 %r3248 to i32
  %t3250 = sub i32 %c3247, %c3249
  %fn3251 = icmp slt i32 %t3250, 0
  %fz3252 = icmp eq i32 %t3250, 0
  %fc3253 = icmp uge i32 %c3247, %c3249
  %fx13254 = xor i32 %c3247, %c3249
  %fx23255 = xor i32 %c3247, %t3250
  %fva3256 = and i32 %fx13254, %fx23255
  %fv3257 = icmp slt i32 %fva3256, 0
  %nz3258 = zext i1 %fn3251 to i64
  %zz3259 = zext i1 %fz3252 to i64
  %cz3260 = zext i1 %fc3253 to i64
  %vz3261 = zext i1 %fv3257 to i64
  %ns3262 = shl i64 %nz3258, 31
  %zs3263 = shl i64 %zz3259, 30
  %cs3264 = shl i64 %cz3260, 29
  %vs3265 = shl i64 %vz3261, 28
  %nzor3266 = or i64 %ns3262, %zs3263
  %cvor3267 = or i64 %cs3264, %vs3265
  %nzcv3268 = or i64 %nzor3266, %cvor3267
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97ac word 0xf9405f16
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %t3271 = add i64 %r3270, 184
  %gmp3272 = inttoptr i64 %t3271 to ptr
  %gml3273 = load i64, ptr %gmp3272, align 1, !alias.scope !4, !noalias !3
  %wp3274 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3273, ptr %wp3274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97b0 word 0x1a9f8149
  %r3275.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3275 = load i64, ptr %r3275.p, align 8, !alias.scope !3, !noalias !4
  %c3276 = trunc i64 %r3275 to i32
  %r3277.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3277 = load i64, ptr %r3277.p, align 8, !alias.scope !3, !noalias !4
  %fsh3279 = lshr i64 %r3277, 29
  %ftr3280 = trunc i64 %fsh3279 to i1
  %fsh3281 = lshr i64 %r3277, 30
  %ftr3282 = trunc i64 %fsh3281 to i1
  %fnz3283 = xor i1 %ftr3282, true
  %cond3278 = and i1 %ftr3280, %fnz3283
  %sel3284 = select i1 %cond3278, i32 %c3276, i32 0
  %c3285 = zext i32 %sel3284 to i64
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3285, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97b4 word 0x9b302128
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %c3288 = trunc i64 %r3287 to i32
  %c3289 = sext i32 %c3288 to i64
  %r3290.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3290 = load i64, ptr %r3290.p, align 8, !alias.scope !3, !noalias !4
  %c3291 = trunc i64 %r3290 to i32
  %c3292 = sext i32 %c3291 to i64
  %t3293 = mul i64 %c3289, %c3292
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %t3295 = add i64 %r3294, %t3293
  %wp3296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3295, ptr %wp3296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97b8 word 0xf94686a9
  %r3297.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3297 = load i64, ptr %r3297.p, align 8, !alias.scope !3, !noalias !4
  %t3298 = add i64 %r3297, 3336
  %gmp3299 = inttoptr i64 %t3298 to ptr
  %gml3300 = load i64, ptr %gmp3299, align 1, !alias.scope !4, !noalias !3
  %wp3301 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3300, ptr %wp3301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97bc word 0xf9400d08
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %t3303 = add i64 %r3302, 24
  %gmp3304 = inttoptr i64 %t3303 to ptr
  %gml3305 = load i64, ptr %gmp3304, align 1, !alias.scope !4, !noalias !3
  %wp3306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3305, ptr %wp3306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97c0 word 0xf9400108
  %r3307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3307 = load i64, ptr %r3307.p, align 8, !alias.scope !3, !noalias !4
  %gmp3308 = inttoptr i64 %r3307 to ptr
  %gml3309 = load i64, ptr %gmp3308, align 1, !alias.scope !4, !noalias !3
  %wp3310 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3309, ptr %wp3310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97c4 word 0x79410908
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %t3312 = add i64 %r3311, 132
  %gmp3313 = inttoptr i64 %t3312 to ptr
  %gml3314 = load i16, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  %c3315 = zext i16 %gml3314 to i64
  %wp3316 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3315, ptr %wp3316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97c8 word 0x8b081537
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %r3318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3318 = load i64, ptr %r3318.p, align 8, !alias.scope !3, !noalias !4
  %t3319 = shl i64 %r3318, 5
  %t3320 = add i64 %r3317, %t3319
  %wp3321 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3320, ptr %wp3321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97cc word 0x3700014b
  %r3322.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3322 = load i64, ptr %r3322.p, align 8, !alias.scope !3, !noalias !4
  %t3323 = and i64 %r3322, 1
  %cmp3324 = icmp ne i64 %t3323, 0
  br i1 %cmp3324, label %L_8002d97f4, label %L_8002d97d0_ft
L_8002d97f4:
  ; @pc 0x8002d97f4 word 0xf001b408
  %wp3355 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp3355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97f8 word 0xb0015322
  %wp3356 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp3356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97fc word 0x910bb042
  %r3357.p = getelementptr inbounds i8, ptr %c, i64 16
  %r3357 = load i64, ptr %r3357.p, align 8, !alias.scope !3, !noalias !4
  %t3358 = add i64 %r3357, 748
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3358, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9800 word 0xf946a108
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %t3361 = add i64 %r3360, 3392
  %gmp3362 = inttoptr i64 %t3361 to ptr
  %gml3363 = load i64, ptr %gmp3362, align 1, !alias.scope !4, !noalias !3
  %wp3364 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3363, ptr %wp3364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9804 word 0xaa1603e0
  %r3365.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3365 = load i64, ptr %r3365.p, align 8, !alias.scope !3, !noalias !4
  %t3366 = or i64 0, %r3365
  %wp3367 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3366, ptr %wp3367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9808 word 0xf9400108
  %r3368.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3368 = load i64, ptr %r3368.p, align 8, !alias.scope !3, !noalias !4
  %gmp3369 = inttoptr i64 %r3368 to ptr
  %gml3370 = load i64, ptr %gmp3369, align 1, !alias.scope !4, !noalias !3
  %wp3371 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3370, ptr %wp3371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d980c word 0x528000e1
  %c3372 = zext i32 7 to i64
  %wp3373 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3372, ptr %wp3373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9810 word 0x528001e3
  %c3374 = zext i32 15 to i64
  %wp3375 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c3374, ptr %wp3375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9814 word 0xd63f0100
  %r3376.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3376 = load i64, ptr %r3376.p, align 8, !alias.scope !3, !noalias !4
  %fp3377 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3376, ptr %fp3377, align 8, !alias.scope !3, !noalias !4
  %wp3378 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726424, ptr %wp3378, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9818 word 0xb94c8aa8
  %r3379.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3379 = load i64, ptr %r3379.p, align 8, !alias.scope !3, !noalias !4
  %t3380 = add i64 %r3379, 3208
  %gmp3381 = inttoptr i64 %t3380 to ptr
  %gml3382 = load i32, ptr %gmp3381, align 1, !alias.scope !4, !noalias !3
  %c3383 = zext i32 %gml3382 to i64
  %wp3384 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3383, ptr %wp3384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d981c word 0x36a001c8
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %t3386 = and i64 %r3385, 1048576
  %cmp3387 = icmp eq i64 %t3386, 0
  br i1 %cmp3387, label %L_8002d9854, label %L_8002d9820_ft
L_8002d984c:
  ; @pc 0x8002d984c word 0x39722aa8
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = add i64 %r3444, 3210
  %gmp3446 = inttoptr i64 %t3445 to ptr
  %gml3447 = load i8, ptr %gmp3446, align 1, !alias.scope !4, !noalias !3
  %c3448 = zext i8 %gml3447 to i64
  %wp3449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3448, ptr %wp3449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9850 word 0x372868c8
  %r3450.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3450 = load i64, ptr %r3450.p, align 8, !alias.scope !3, !noalias !4
  %t3451 = and i64 %r3450, 32
  %cmp3452 = icmp ne i64 %t3451, 0
  br i1 %cmp3452, label %L_8002da568, label %L_8002d9854
L_8002d9854:
  ; @pc 0x8002d9854 word 0x52800039
  %c3453 = zext i32 1 to i64
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c3453, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9858
L_8002d9858:
  ; @pc 0x8002d9858 word 0x2a1c03f0
  %r3455.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3455 = load i64, ptr %r3455.p, align 8, !alias.scope !3, !noalias !4
  %c3456 = trunc i64 %r3455 to i32
  %t3457 = or i32 0, %c3456
  %c3458 = zext i32 %t3457 to i64
  %wp3459 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3458, ptr %wp3459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d985c word 0x17fffe6f
  br label %L_8002d9218
L_8002d9860:
  ; @pc 0x8002d9860 word 0x2a1f03f9
  %t3460 = or i32 0, 0
  %c3461 = zext i32 %t3460 to i64
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c3461, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9864
L_8002d9864:
  ; @pc 0x8002d9864 word 0x2a1c03f0
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %c3464 = trunc i64 %r3463 to i32
  %t3465 = or i32 0, %c3464
  %c3466 = zext i32 %t3465 to i64
  %wp3467 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3466, ptr %wp3467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9868 word 0x17fffe5e
  br label %L_8002d91e0
L_8002d986c:
  ; @pc 0x8002d986c word 0x36a04d6c
  %r3468.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3468 = load i64, ptr %r3468.p, align 8, !alias.scope !3, !noalias !4
  %t3469 = and i64 %r3468, 1048576
  %cmp3470 = icmp eq i64 %t3469, 0
  br i1 %cmp3470, label %L_8002da218, label %L_8002d9870_ft
L_8002d98a8:
  ; @pc 0x8002d98a8 word 0xf94081ad
  %r3538.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3538 = load i64, ptr %r3538.p, align 8, !alias.scope !3, !noalias !4
  %t3539 = add i64 %r3538, 256
  %gmp3540 = inttoptr i64 %t3539 to ptr
  %gml3541 = load i64, ptr %gmp3540, align 1, !alias.scope !4, !noalias !3
  %wp3542 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3541, ptr %wp3542, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d98ac
L_8002d98ac:
  ; @pc 0x8002d98ac word 0x8b0c01cc
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %r3544.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3544 = load i64, ptr %r3544.p, align 8, !alias.scope !3, !noalias !4
  %t3545 = add i64 %r3543, %r3544
  %wp3546 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3545, ptr %wp3546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98b0 word 0xf86d698c
  %r3547.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3547 = load i64, ptr %r3547.p, align 8, !alias.scope !3, !noalias !4
  %r3548.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3548 = load i64, ptr %r3548.p, align 8, !alias.scope !3, !noalias !4
  %t3549 = add i64 %r3547, %r3548
  %gmp3550 = inttoptr i64 %t3549 to ptr
  %gml3551 = load i64, ptr %gmp3550, align 1, !alias.scope !4, !noalias !3
  %wp3552 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3551, ptr %wp3552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98b4 word 0xb400386c
  %r3553.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3553 = load i64, ptr %r3553.p, align 8, !alias.scope !3, !noalias !4
  %cmp3554 = icmp eq i64 %r3553, 0
  br i1 %cmp3554, label %L_8002d9fc0, label %L_8002d98b8_ft
L_8002d98bc:
  ; @pc 0x8002d98bc word 0x6b0a013f
  %r3558.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3558 = load i64, ptr %r3558.p, align 8, !alias.scope !3, !noalias !4
  %c3559 = trunc i64 %r3558 to i32
  %r3560.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3560 = load i64, ptr %r3560.p, align 8, !alias.scope !3, !noalias !4
  %c3561 = trunc i64 %r3560 to i32
  %t3562 = sub i32 %c3559, %c3561
  %fn3563 = icmp slt i32 %t3562, 0
  %fz3564 = icmp eq i32 %t3562, 0
  %fc3565 = icmp uge i32 %c3559, %c3561
  %fx13566 = xor i32 %c3559, %c3561
  %fx23567 = xor i32 %c3559, %t3562
  %fva3568 = and i32 %fx13566, %fx23567
  %fv3569 = icmp slt i32 %fva3568, 0
  %nz3570 = zext i1 %fn3563 to i64
  %zz3571 = zext i1 %fz3564 to i64
  %cz3572 = zext i1 %fc3565 to i64
  %vz3573 = zext i1 %fv3569 to i64
  %ns3574 = shl i64 %nz3570, 31
  %zs3575 = shl i64 %zz3571, 30
  %cs3576 = shl i64 %cz3572, 29
  %vs3577 = shl i64 %vz3573, 28
  %nzor3578 = or i64 %ns3574, %zs3575
  %cvor3579 = or i64 %cs3576, %vs3577
  %nzcv3580 = or i64 %nzor3578, %cvor3579
  %wp3581 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3580, ptr %wp3581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98c0 word 0xf9405f14
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = add i64 %r3582, 184
  %gmp3584 = inttoptr i64 %t3583 to ptr
  %gml3585 = load i64, ptr %gmp3584, align 1, !alias.scope !4, !noalias !3
  %wp3586 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3585, ptr %wp3586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98c4 word 0x1a9f8149
  %r3587.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3587 = load i64, ptr %r3587.p, align 8, !alias.scope !3, !noalias !4
  %c3588 = trunc i64 %r3587 to i32
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %fsh3591 = lshr i64 %r3589, 29
  %ftr3592 = trunc i64 %fsh3591 to i1
  %fsh3593 = lshr i64 %r3589, 30
  %ftr3594 = trunc i64 %fsh3593 to i1
  %fnz3595 = xor i1 %ftr3594, true
  %cond3590 = and i1 %ftr3592, %fnz3595
  %sel3596 = select i1 %cond3590, i32 %c3588, i32 0
  %c3597 = zext i32 %sel3596 to i64
  %wp3598 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3597, ptr %wp3598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98c8 word 0x9b302128
  %r3599.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3599 = load i64, ptr %r3599.p, align 8, !alias.scope !3, !noalias !4
  %c3600 = trunc i64 %r3599 to i32
  %c3601 = sext i32 %c3600 to i64
  %r3602.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3602 = load i64, ptr %r3602.p, align 8, !alias.scope !3, !noalias !4
  %c3603 = trunc i64 %r3602 to i32
  %c3604 = sext i32 %c3603 to i64
  %t3605 = mul i64 %c3601, %c3604
  %r3606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3606 = load i64, ptr %r3606.p, align 8, !alias.scope !3, !noalias !4
  %t3607 = add i64 %r3606, %t3605
  %wp3608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3607, ptr %wp3608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98cc word 0xf94686a9
  %r3609.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3609 = load i64, ptr %r3609.p, align 8, !alias.scope !3, !noalias !4
  %t3610 = add i64 %r3609, 3336
  %gmp3611 = inttoptr i64 %t3610 to ptr
  %gml3612 = load i64, ptr %gmp3611, align 1, !alias.scope !4, !noalias !3
  %wp3613 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3612, ptr %wp3613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98d0 word 0xf9400d08
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %t3615 = add i64 %r3614, 24
  %gmp3616 = inttoptr i64 %t3615 to ptr
  %gml3617 = load i64, ptr %gmp3616, align 1, !alias.scope !4, !noalias !3
  %wp3618 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3617, ptr %wp3618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98d4 word 0xf9400108
  %r3619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3619 = load i64, ptr %r3619.p, align 8, !alias.scope !3, !noalias !4
  %gmp3620 = inttoptr i64 %r3619 to ptr
  %gml3621 = load i64, ptr %gmp3620, align 1, !alias.scope !4, !noalias !3
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98d8 word 0x79410908
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %t3624 = add i64 %r3623, 132
  %gmp3625 = inttoptr i64 %t3624 to ptr
  %gml3626 = load i16, ptr %gmp3625, align 1, !alias.scope !4, !noalias !3
  %c3627 = zext i16 %gml3626 to i64
  %wp3628 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3627, ptr %wp3628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98dc word 0x8b081536
  %r3629.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3629 = load i64, ptr %r3629.p, align 8, !alias.scope !3, !noalias !4
  %r3630.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3630 = load i64, ptr %r3630.p, align 8, !alias.scope !3, !noalias !4
  %t3631 = shl i64 %r3630, 5
  %t3632 = add i64 %r3629, %t3631
  %wp3633 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3632, ptr %wp3633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98e0 word 0x3700014b
  %r3634.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3634 = load i64, ptr %r3634.p, align 8, !alias.scope !3, !noalias !4
  %t3635 = and i64 %r3634, 1
  %cmp3636 = icmp ne i64 %t3635, 0
  br i1 %cmp3636, label %L_8002d9908, label %L_8002d98e4_ft
L_8002d9908:
  ; @pc 0x8002d9908 word 0x394302e8
  %r3667.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3667 = load i64, ptr %r3667.p, align 8, !alias.scope !3, !noalias !4
  %t3668 = add i64 %r3667, 192
  %gmp3669 = inttoptr i64 %t3668 to ptr
  %gml3670 = load i8, ptr %gmp3669, align 1, !alias.scope !4, !noalias !3
  %c3671 = zext i8 %gml3670 to i64
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d990c word 0x1e2e1000
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1065353216, ptr %wp3673, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9910 word 0xaa1403e0
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %t3675 = or i64 0, %r3674
  %wp3676 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3675, ptr %wp3676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9914 word 0x52800021
  %c3677 = zext i32 1 to i64
  %wp3678 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3677, ptr %wp3678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9918 word 0x2a1f03e2
  %t3679 = or i32 0, 0
  %c3680 = zext i32 %t3679 to i64
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3680, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d991c word 0x121f1908
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %c3683 = trunc i64 %r3682 to i32
  %t3684 = and i32 %c3683, 254
  %c3685 = zext i32 %t3684 to i64
  %wp3686 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3685, ptr %wp3686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9920 word 0x7101711f
  %r3687.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3687 = load i64, ptr %r3687.p, align 8, !alias.scope !3, !noalias !4
  %c3688 = trunc i64 %r3687 to i32
  %t3689 = sub i32 %c3688, 92
  %fn3690 = icmp slt i32 %t3689, 0
  %fz3691 = icmp eq i32 %t3689, 0
  %fc3692 = icmp uge i32 %c3688, 92
  %fx13693 = xor i32 %c3688, 92
  %fx23694 = xor i32 %c3688, %t3689
  %fva3695 = and i32 %fx13693, %fx23694
  %fv3696 = icmp slt i32 %fva3695, 0
  %nz3697 = zext i1 %fn3690 to i64
  %zz3698 = zext i1 %fz3691 to i64
  %cz3699 = zext i1 %fc3692 to i64
  %vz3700 = zext i1 %fv3696 to i64
  %ns3701 = shl i64 %nz3697, 31
  %zs3702 = shl i64 %zz3698, 30
  %cs3703 = shl i64 %cz3699, 29
  %vs3704 = shl i64 %vz3700, 28
  %nzor3705 = or i64 %ns3701, %zs3702
  %cvor3706 = or i64 %cs3703, %vs3704
  %nzcv3707 = or i64 %nzor3705, %cvor3706
  %wp3708 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3707, ptr %wp3708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9924 word 0x52801fe8
  %c3709 = zext i32 255 to i64
  %wp3710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3709, ptr %wp3710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9928 word 0x1a9f0103
  %r3711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3711 = load i64, ptr %r3711.p, align 8, !alias.scope !3, !noalias !4
  %c3712 = trunc i64 %r3711 to i32
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %fsh3715 = lshr i64 %r3713, 30
  %cond3714 = trunc i64 %fsh3715 to i1
  %sel3716 = select i1 %cond3714, i32 %c3712, i32 0
  %c3717 = zext i32 %sel3716 to i64
  %wp3718 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c3717, ptr %wp3718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d992c word 0xf001b408
  %wp3719 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp3719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9930 word 0xf9415908
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %t3721 = add i64 %r3720, 688
  %gmp3722 = inttoptr i64 %t3721 to ptr
  %gml3723 = load i64, ptr %gmp3722, align 1, !alias.scope !4, !noalias !3
  %wp3724 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3723, ptr %wp3724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9934 word 0xf9400108
  %r3725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3725 = load i64, ptr %r3725.p, align 8, !alias.scope !3, !noalias !4
  %gmp3726 = inttoptr i64 %r3725 to ptr
  %gml3727 = load i64, ptr %gmp3726, align 1, !alias.scope !4, !noalias !3
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3727, ptr %wp3728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9938 word 0xd63f0100
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %fp3730 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3729, ptr %fp3730, align 8, !alias.scope !3, !noalias !4
  %wp3731 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726716, ptr %wp3731, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d993c word 0xb94c8aa8
  %r3732.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3732 = load i64, ptr %r3732.p, align 8, !alias.scope !3, !noalias !4
  %t3733 = add i64 %r3732, 3208
  %gmp3734 = inttoptr i64 %t3733 to ptr
  %gml3735 = load i32, ptr %gmp3734, align 1, !alias.scope !4, !noalias !3
  %c3736 = zext i32 %gml3735 to i64
  %wp3737 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3736, ptr %wp3737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9940 word 0x36a7e468
  %r3738.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3738 = load i64, ptr %r3738.p, align 8, !alias.scope !3, !noalias !4
  %t3739 = and i64 %r3738, 1048576
  %cmp3740 = icmp eq i64 %t3739, 0
  br i1 %cmp3740, label %L_8002d95cc, label %L_8002d9944_ft
L_8002d9970:
  ; @pc 0x8002d9970 word 0x39722aa8
  %r3797.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3797 = load i64, ptr %r3797.p, align 8, !alias.scope !3, !noalias !4
  %t3798 = add i64 %r3797, 3210
  %gmp3799 = inttoptr i64 %t3798 to ptr
  %gml3800 = load i8, ptr %gmp3799, align 1, !alias.scope !4, !noalias !3
  %c3801 = zext i8 %gml3800 to i64
  %wp3802 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3801, ptr %wp3802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9974 word 0x362fe2c8
  %r3803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3803 = load i64, ptr %r3803.p, align 8, !alias.scope !3, !noalias !4
  %t3804 = and i64 %r3803, 32
  %cmp3805 = icmp eq i64 %t3804, 0
  br i1 %cmp3805, label %L_8002d95cc, label %L_8002d9978_ft
L_8002d9994:
  ; @pc 0x8002d9994 word 0xb94c8aad
  %r3824.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3824 = load i64, ptr %r3824.p, align 8, !alias.scope !3, !noalias !4
  %t3825 = add i64 %r3824, 3208
  %gmp3826 = inttoptr i64 %t3825 to ptr
  %gml3827 = load i32, ptr %gmp3826, align 1, !alias.scope !4, !noalias !3
  %c3828 = zext i32 %gml3827 to i64
  %wp3829 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3828, ptr %wp3829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9998 word 0x3637c3cd
  %r3830.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3830 = load i64, ptr %r3830.p, align 8, !alias.scope !3, !noalias !4
  %t3831 = and i64 %r3830, 64
  %cmp3832 = icmp eq i64 %t3831, 0
  br i1 %cmp3832, label %L_8002d9210, label %L_8002d999c_ft
L_8002d9a08:
  ; @pc 0x8002d9a08 word 0xf94081ad
  %r3997.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3997 = load i64, ptr %r3997.p, align 8, !alias.scope !3, !noalias !4
  %t3998 = add i64 %r3997, 256
  %gmp3999 = inttoptr i64 %t3998 to ptr
  %gml4000 = load i64, ptr %gmp3999, align 1, !alias.scope !4, !noalias !3
  %wp4001 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4000, ptr %wp4001, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9a0c
L_8002d9a0c:
  ; @pc 0x8002d9a0c word 0x8b0c01cc
  %r4002.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4002 = load i64, ptr %r4002.p, align 8, !alias.scope !3, !noalias !4
  %r4003.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4003 = load i64, ptr %r4003.p, align 8, !alias.scope !3, !noalias !4
  %t4004 = add i64 %r4002, %r4003
  %wp4005 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4004, ptr %wp4005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a10 word 0xf86d698c
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %r4007.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4007 = load i64, ptr %r4007.p, align 8, !alias.scope !3, !noalias !4
  %t4008 = add i64 %r4006, %r4007
  %gmp4009 = inttoptr i64 %t4008 to ptr
  %gml4010 = load i64, ptr %gmp4009, align 1, !alias.scope !4, !noalias !3
  %wp4011 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4010, ptr %wp4011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a14 word 0xb4002cac
  %r4012.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4012 = load i64, ptr %r4012.p, align 8, !alias.scope !3, !noalias !4
  %cmp4013 = icmp eq i64 %r4012, 0
  br i1 %cmp4013, label %L_8002d9fa8, label %L_8002d9a18_ft
L_8002d9a1c:
  ; @pc 0x8002d9a1c word 0x6b0a013f
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %c4018 = trunc i64 %r4017 to i32
  %r4019.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4019 = load i64, ptr %r4019.p, align 8, !alias.scope !3, !noalias !4
  %c4020 = trunc i64 %r4019 to i32
  %t4021 = sub i32 %c4018, %c4020
  %fn4022 = icmp slt i32 %t4021, 0
  %fz4023 = icmp eq i32 %t4021, 0
  %fc4024 = icmp uge i32 %c4018, %c4020
  %fx14025 = xor i32 %c4018, %c4020
  %fx24026 = xor i32 %c4018, %t4021
  %fva4027 = and i32 %fx14025, %fx24026
  %fv4028 = icmp slt i32 %fva4027, 0
  %nz4029 = zext i1 %fn4022 to i64
  %zz4030 = zext i1 %fz4023 to i64
  %cz4031 = zext i1 %fc4024 to i64
  %vz4032 = zext i1 %fv4028 to i64
  %ns4033 = shl i64 %nz4029, 31
  %zs4034 = shl i64 %zz4030, 30
  %cs4035 = shl i64 %cz4031, 29
  %vs4036 = shl i64 %vz4032, 28
  %nzor4037 = or i64 %ns4033, %zs4034
  %cvor4038 = or i64 %cs4035, %vs4036
  %nzcv4039 = or i64 %nzor4037, %cvor4038
  %wp4040 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4039, ptr %wp4040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a20 word 0xf9405f16
  %r4041.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4041 = load i64, ptr %r4041.p, align 8, !alias.scope !3, !noalias !4
  %t4042 = add i64 %r4041, 184
  %gmp4043 = inttoptr i64 %t4042 to ptr
  %gml4044 = load i64, ptr %gmp4043, align 1, !alias.scope !4, !noalias !3
  %wp4045 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4044, ptr %wp4045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a24 word 0x1a9f8149
  %r4046.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4046 = load i64, ptr %r4046.p, align 8, !alias.scope !3, !noalias !4
  %c4047 = trunc i64 %r4046 to i32
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %fsh4050 = lshr i64 %r4048, 29
  %ftr4051 = trunc i64 %fsh4050 to i1
  %fsh4052 = lshr i64 %r4048, 30
  %ftr4053 = trunc i64 %fsh4052 to i1
  %fnz4054 = xor i1 %ftr4053, true
  %cond4049 = and i1 %ftr4051, %fnz4054
  %sel4055 = select i1 %cond4049, i32 %c4047, i32 0
  %c4056 = zext i32 %sel4055 to i64
  %wp4057 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4056, ptr %wp4057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a28 word 0x9b302128
  %r4058.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4058 = load i64, ptr %r4058.p, align 8, !alias.scope !3, !noalias !4
  %c4059 = trunc i64 %r4058 to i32
  %c4060 = sext i32 %c4059 to i64
  %r4061.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4061 = load i64, ptr %r4061.p, align 8, !alias.scope !3, !noalias !4
  %c4062 = trunc i64 %r4061 to i32
  %c4063 = sext i32 %c4062 to i64
  %t4064 = mul i64 %c4060, %c4063
  %r4065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4065 = load i64, ptr %r4065.p, align 8, !alias.scope !3, !noalias !4
  %t4066 = add i64 %r4065, %t4064
  %wp4067 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4066, ptr %wp4067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a2c word 0xf94686a9
  %r4068.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4068 = load i64, ptr %r4068.p, align 8, !alias.scope !3, !noalias !4
  %t4069 = add i64 %r4068, 3336
  %gmp4070 = inttoptr i64 %t4069 to ptr
  %gml4071 = load i64, ptr %gmp4070, align 1, !alias.scope !4, !noalias !3
  %wp4072 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4071, ptr %wp4072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a30 word 0xf9400d08
  %r4073.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4073 = load i64, ptr %r4073.p, align 8, !alias.scope !3, !noalias !4
  %t4074 = add i64 %r4073, 24
  %gmp4075 = inttoptr i64 %t4074 to ptr
  %gml4076 = load i64, ptr %gmp4075, align 1, !alias.scope !4, !noalias !3
  %wp4077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4076, ptr %wp4077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a34 word 0xf9400108
  %r4078.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4078 = load i64, ptr %r4078.p, align 8, !alias.scope !3, !noalias !4
  %gmp4079 = inttoptr i64 %r4078 to ptr
  %gml4080 = load i64, ptr %gmp4079, align 1, !alias.scope !4, !noalias !3
  %wp4081 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4080, ptr %wp4081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a38 word 0x79410908
  %r4082.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4082 = load i64, ptr %r4082.p, align 8, !alias.scope !3, !noalias !4
  %t4083 = add i64 %r4082, 132
  %gmp4084 = inttoptr i64 %t4083 to ptr
  %gml4085 = load i16, ptr %gmp4084, align 1, !alias.scope !4, !noalias !3
  %c4086 = zext i16 %gml4085 to i64
  %wp4087 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4086, ptr %wp4087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a3c word 0x8b081537
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %r4089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4089 = load i64, ptr %r4089.p, align 8, !alias.scope !3, !noalias !4
  %t4090 = shl i64 %r4089, 5
  %t4091 = add i64 %r4088, %t4090
  %wp4092 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t4091, ptr %wp4092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a40 word 0x3700014b
  %r4093.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4093 = load i64, ptr %r4093.p, align 8, !alias.scope !3, !noalias !4
  %t4094 = and i64 %r4093, 1
  %cmp4095 = icmp ne i64 %t4094, 0
  br i1 %cmp4095, label %L_8002d9a68, label %L_8002d9a44_ft
L_8002d9a68:
  ; @pc 0x8002d9a68 word 0xf001b408
  %wp4126 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a6c word 0xb0015322
  %wp4127 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp4127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a70 word 0x910bb042
  %r4128.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4128 = load i64, ptr %r4128.p, align 8, !alias.scope !3, !noalias !4
  %t4129 = add i64 %r4128, 748
  %wp4130 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4129, ptr %wp4130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a74 word 0xf946a108
  %r4131.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4131 = load i64, ptr %r4131.p, align 8, !alias.scope !3, !noalias !4
  %t4132 = add i64 %r4131, 3392
  %gmp4133 = inttoptr i64 %t4132 to ptr
  %gml4134 = load i64, ptr %gmp4133, align 1, !alias.scope !4, !noalias !3
  %wp4135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4134, ptr %wp4135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a78 word 0xaa1603e0
  %r4136.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4136 = load i64, ptr %r4136.p, align 8, !alias.scope !3, !noalias !4
  %t4137 = or i64 0, %r4136
  %wp4138 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4137, ptr %wp4138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a7c word 0xf9400108
  %r4139.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4139 = load i64, ptr %r4139.p, align 8, !alias.scope !3, !noalias !4
  %gmp4140 = inttoptr i64 %r4139 to ptr
  %gml4141 = load i64, ptr %gmp4140, align 1, !alias.scope !4, !noalias !3
  %wp4142 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4141, ptr %wp4142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a80 word 0x528000c1
  %c4143 = zext i32 6 to i64
  %wp4144 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4143, ptr %wp4144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a84 word 0x528001e3
  %c4145 = zext i32 15 to i64
  %wp4146 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4145, ptr %wp4146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a88 word 0xd63f0100
  %r4147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4147 = load i64, ptr %r4147.p, align 8, !alias.scope !3, !noalias !4
  %fp4148 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4147, ptr %fp4148, align 8, !alias.scope !3, !noalias !4
  %wp4149 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727052, ptr %wp4149, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9a8c word 0xb94c8aa8
  %r4150.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4150 = load i64, ptr %r4150.p, align 8, !alias.scope !3, !noalias !4
  %t4151 = add i64 %r4150, 3208
  %gmp4152 = inttoptr i64 %t4151 to ptr
  %gml4153 = load i32, ptr %gmp4152, align 1, !alias.scope !4, !noalias !3
  %c4154 = zext i32 %gml4153 to i64
  %wp4155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4154, ptr %wp4155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a90 word 0x36a001c8
  %r4156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4156 = load i64, ptr %r4156.p, align 8, !alias.scope !3, !noalias !4
  %t4157 = and i64 %r4156, 1048576
  %cmp4158 = icmp eq i64 %t4157, 0
  br i1 %cmp4158, label %L_8002d9ac8, label %L_8002d9a94_ft
L_8002d9ac0:
  ; @pc 0x8002d9ac0 word 0x39722aa8
  %r4215.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4215 = load i64, ptr %r4215.p, align 8, !alias.scope !3, !noalias !4
  %t4216 = add i64 %r4215, 3210
  %gmp4217 = inttoptr i64 %t4216 to ptr
  %gml4218 = load i8, ptr %gmp4217, align 1, !alias.scope !4, !noalias !3
  %c4219 = zext i8 %gml4218 to i64
  %wp4220 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4219, ptr %wp4220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ac4 word 0x372866e8
  %r4221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4221 = load i64, ptr %r4221.p, align 8, !alias.scope !3, !noalias !4
  %t4222 = and i64 %r4221, 32
  %cmp4223 = icmp ne i64 %t4222, 0
  br i1 %cmp4223, label %L_8002da7a0, label %L_8002d9ac8
L_8002d9ac8:
  ; @pc 0x8002d9ac8 word 0x52800039
  %c4224 = zext i32 1 to i64
  %wp4225 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c4224, ptr %wp4225, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9acc
L_8002d9acc:
  ; @pc 0x8002d9acc word 0x2a1c03f0
  %r4226.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4226 = load i64, ptr %r4226.p, align 8, !alias.scope !3, !noalias !4
  %c4227 = trunc i64 %r4226 to i32
  %t4228 = or i32 0, %c4227
  %c4229 = zext i32 %t4228 to i64
  %wp4230 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4229, ptr %wp4230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ad0 word 0x17fffdd0
  br label %L_8002d9210
L_8002d9ad4:
  ; @pc 0x8002d9ad4 word 0x36a03f2d
  %r4231.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4231 = load i64, ptr %r4231.p, align 8, !alias.scope !3, !noalias !4
  %t4232 = and i64 %r4231, 1048576
  %cmp4233 = icmp eq i64 %t4232, 0
  br i1 %cmp4233, label %L_8002da2b8, label %L_8002d9ad8_ft
L_8002d9b10:
  ; @pc 0x8002d9b10 word 0xf94081ad
  %r4301.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4301 = load i64, ptr %r4301.p, align 8, !alias.scope !3, !noalias !4
  %t4302 = add i64 %r4301, 256
  %gmp4303 = inttoptr i64 %t4302 to ptr
  %gml4304 = load i64, ptr %gmp4303, align 1, !alias.scope !4, !noalias !3
  %wp4305 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4304, ptr %wp4305, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9b14
L_8002d9b14:
  ; @pc 0x8002d9b14 word 0x8b0c01cc
  %r4306.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4306 = load i64, ptr %r4306.p, align 8, !alias.scope !3, !noalias !4
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %t4308 = add i64 %r4306, %r4307
  %wp4309 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4308, ptr %wp4309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b18 word 0xf86d698c
  %r4310.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4310 = load i64, ptr %r4310.p, align 8, !alias.scope !3, !noalias !4
  %r4311.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4311 = load i64, ptr %r4311.p, align 8, !alias.scope !3, !noalias !4
  %t4312 = add i64 %r4310, %r4311
  %gmp4313 = inttoptr i64 %t4312 to ptr
  %gml4314 = load i64, ptr %gmp4313, align 1, !alias.scope !4, !noalias !3
  %wp4315 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4314, ptr %wp4315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b1c word 0xb40021ac
  %r4316.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4316 = load i64, ptr %r4316.p, align 8, !alias.scope !3, !noalias !4
  %cmp4317 = icmp eq i64 %r4316, 0
  br i1 %cmp4317, label %L_8002d9f50, label %L_8002d9b20_ft
L_8002d9b24:
  ; @pc 0x8002d9b24 word 0x6b0a013f
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %c4322 = trunc i64 %r4321 to i32
  %r4323.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4323 = load i64, ptr %r4323.p, align 8, !alias.scope !3, !noalias !4
  %c4324 = trunc i64 %r4323 to i32
  %t4325 = sub i32 %c4322, %c4324
  %fn4326 = icmp slt i32 %t4325, 0
  %fz4327 = icmp eq i32 %t4325, 0
  %fc4328 = icmp uge i32 %c4322, %c4324
  %fx14329 = xor i32 %c4322, %c4324
  %fx24330 = xor i32 %c4322, %t4325
  %fva4331 = and i32 %fx14329, %fx24330
  %fv4332 = icmp slt i32 %fva4331, 0
  %nz4333 = zext i1 %fn4326 to i64
  %zz4334 = zext i1 %fz4327 to i64
  %cz4335 = zext i1 %fc4328 to i64
  %vz4336 = zext i1 %fv4332 to i64
  %ns4337 = shl i64 %nz4333, 31
  %zs4338 = shl i64 %zz4334, 30
  %cs4339 = shl i64 %cz4335, 29
  %vs4340 = shl i64 %vz4336, 28
  %nzor4341 = or i64 %ns4337, %zs4338
  %cvor4342 = or i64 %cs4339, %vs4340
  %nzcv4343 = or i64 %nzor4341, %cvor4342
  %wp4344 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4343, ptr %wp4344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b28 word 0xf9405f16
  %r4345.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4345 = load i64, ptr %r4345.p, align 8, !alias.scope !3, !noalias !4
  %t4346 = add i64 %r4345, 184
  %gmp4347 = inttoptr i64 %t4346 to ptr
  %gml4348 = load i64, ptr %gmp4347, align 1, !alias.scope !4, !noalias !3
  %wp4349 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4348, ptr %wp4349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b2c word 0x1a9f8149
  %r4350.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4350 = load i64, ptr %r4350.p, align 8, !alias.scope !3, !noalias !4
  %c4351 = trunc i64 %r4350 to i32
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %fsh4354 = lshr i64 %r4352, 29
  %ftr4355 = trunc i64 %fsh4354 to i1
  %fsh4356 = lshr i64 %r4352, 30
  %ftr4357 = trunc i64 %fsh4356 to i1
  %fnz4358 = xor i1 %ftr4357, true
  %cond4353 = and i1 %ftr4355, %fnz4358
  %sel4359 = select i1 %cond4353, i32 %c4351, i32 0
  %c4360 = zext i32 %sel4359 to i64
  %wp4361 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4360, ptr %wp4361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b30 word 0x9b302128
  %r4362.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4362 = load i64, ptr %r4362.p, align 8, !alias.scope !3, !noalias !4
  %c4363 = trunc i64 %r4362 to i32
  %c4364 = sext i32 %c4363 to i64
  %r4365.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4365 = load i64, ptr %r4365.p, align 8, !alias.scope !3, !noalias !4
  %c4366 = trunc i64 %r4365 to i32
  %c4367 = sext i32 %c4366 to i64
  %t4368 = mul i64 %c4364, %c4367
  %r4369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4369 = load i64, ptr %r4369.p, align 8, !alias.scope !3, !noalias !4
  %t4370 = add i64 %r4369, %t4368
  %wp4371 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4370, ptr %wp4371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b34 word 0xf94686a9
  %r4372.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4372 = load i64, ptr %r4372.p, align 8, !alias.scope !3, !noalias !4
  %t4373 = add i64 %r4372, 3336
  %gmp4374 = inttoptr i64 %t4373 to ptr
  %gml4375 = load i64, ptr %gmp4374, align 1, !alias.scope !4, !noalias !3
  %wp4376 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4375, ptr %wp4376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b38 word 0xf9400d08
  %r4377.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4377 = load i64, ptr %r4377.p, align 8, !alias.scope !3, !noalias !4
  %t4378 = add i64 %r4377, 24
  %gmp4379 = inttoptr i64 %t4378 to ptr
  %gml4380 = load i64, ptr %gmp4379, align 1, !alias.scope !4, !noalias !3
  %wp4381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4380, ptr %wp4381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b3c word 0xf9400108
  %r4382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4382 = load i64, ptr %r4382.p, align 8, !alias.scope !3, !noalias !4
  %gmp4383 = inttoptr i64 %r4382 to ptr
  %gml4384 = load i64, ptr %gmp4383, align 1, !alias.scope !4, !noalias !3
  %wp4385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4384, ptr %wp4385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b40 word 0x79410908
  %r4386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4386 = load i64, ptr %r4386.p, align 8, !alias.scope !3, !noalias !4
  %t4387 = add i64 %r4386, 132
  %gmp4388 = inttoptr i64 %t4387 to ptr
  %gml4389 = load i16, ptr %gmp4388, align 1, !alias.scope !4, !noalias !3
  %c4390 = zext i16 %gml4389 to i64
  %wp4391 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4390, ptr %wp4391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b44 word 0x8b081537
  %r4392.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4392 = load i64, ptr %r4392.p, align 8, !alias.scope !3, !noalias !4
  %r4393.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4393 = load i64, ptr %r4393.p, align 8, !alias.scope !3, !noalias !4
  %t4394 = shl i64 %r4393, 5
  %t4395 = add i64 %r4392, %t4394
  %wp4396 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t4395, ptr %wp4396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b48 word 0x3700014b
  %r4397.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4397 = load i64, ptr %r4397.p, align 8, !alias.scope !3, !noalias !4
  %t4398 = and i64 %r4397, 1
  %cmp4399 = icmp ne i64 %t4398, 0
  br i1 %cmp4399, label %L_8002d9b70, label %L_8002d9b4c_ft
L_8002d9b70:
  ; @pc 0x8002d9b70 word 0xf001b408
  %wp4430 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b74 word 0xb0015322
  %wp4431 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp4431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b78 word 0x910bb042
  %r4432.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4432 = load i64, ptr %r4432.p, align 8, !alias.scope !3, !noalias !4
  %t4433 = add i64 %r4432, 748
  %wp4434 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4433, ptr %wp4434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b7c word 0xf946a108
  %r4435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4435 = load i64, ptr %r4435.p, align 8, !alias.scope !3, !noalias !4
  %t4436 = add i64 %r4435, 3392
  %gmp4437 = inttoptr i64 %t4436 to ptr
  %gml4438 = load i64, ptr %gmp4437, align 1, !alias.scope !4, !noalias !3
  %wp4439 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4438, ptr %wp4439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b80 word 0xaa1603e0
  %r4440.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4440 = load i64, ptr %r4440.p, align 8, !alias.scope !3, !noalias !4
  %t4441 = or i64 0, %r4440
  %wp4442 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4441, ptr %wp4442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b84 word 0xf9400108
  %r4443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4443 = load i64, ptr %r4443.p, align 8, !alias.scope !3, !noalias !4
  %gmp4444 = inttoptr i64 %r4443 to ptr
  %gml4445 = load i64, ptr %gmp4444, align 1, !alias.scope !4, !noalias !3
  %wp4446 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4445, ptr %wp4446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b88 word 0x52800021
  %c4447 = zext i32 1 to i64
  %wp4448 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4447, ptr %wp4448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b8c word 0x528001e3
  %c4449 = zext i32 15 to i64
  %wp4450 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4449, ptr %wp4450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b90 word 0x52800033
  %c4451 = zext i32 1 to i64
  %wp4452 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c4451, ptr %wp4452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b94 word 0xd63f0100
  %r4453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4453 = load i64, ptr %r4453.p, align 8, !alias.scope !3, !noalias !4
  %fp4454 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4453, ptr %fp4454, align 8, !alias.scope !3, !noalias !4
  %wp4455 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727320, ptr %wp4455, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9b98 word 0xb94c8aa8
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %t4457 = add i64 %r4456, 3208
  %gmp4458 = inttoptr i64 %t4457 to ptr
  %gml4459 = load i32, ptr %gmp4458, align 1, !alias.scope !4, !noalias !3
  %c4460 = zext i32 %gml4459 to i64
  %wp4461 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4460, ptr %wp4461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b9c word 0x36a001c8
  %r4462.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4462 = load i64, ptr %r4462.p, align 8, !alias.scope !3, !noalias !4
  %t4463 = and i64 %r4462, 1048576
  %cmp4464 = icmp eq i64 %t4463, 0
  br i1 %cmp4464, label %L_8002d9bd4, label %L_8002d9ba0_ft
L_8002d9bcc:
  ; @pc 0x8002d9bcc word 0x39722aa8
  %r4521.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4521 = load i64, ptr %r4521.p, align 8, !alias.scope !3, !noalias !4
  %t4522 = add i64 %r4521, 3210
  %gmp4523 = inttoptr i64 %t4522 to ptr
  %gml4524 = load i8, ptr %gmp4523, align 1, !alias.scope !4, !noalias !3
  %c4525 = zext i8 %gml4524 to i64
  %wp4526 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4525, ptr %wp4526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bd0 word 0x37283ba8
  %r4527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4527 = load i64, ptr %r4527.p, align 8, !alias.scope !3, !noalias !4
  %t4528 = and i64 %r4527, 32
  %cmp4529 = icmp ne i64 %t4528, 0
  br i1 %cmp4529, label %L_8002da344, label %L_8002d9bd4
L_8002d9bd4:
  ; @pc 0x8002d9bd4 word 0x2a1c03f0
  %r4530.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4530 = load i64, ptr %r4530.p, align 8, !alias.scope !3, !noalias !4
  %c4531 = trunc i64 %r4530 to i32
  %t4532 = or i32 0, %c4531
  %c4533 = zext i32 %t4532 to i64
  %wp4534 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4533, ptr %wp4534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bd8 word 0x17fffdad
  br label %L_8002d928c
L_8002d9bdc:
  ; @pc 0x8002d9bdc word 0x12800048
  %c4535 = zext i32 -3 to i64
  %wp4536 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4535, ptr %wp4536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9be0 word 0x2a1f03f9
  %t4537 = or i32 0, 0
  %c4538 = zext i32 %t4537 to i64
  %wp4539 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c4538, ptr %wp4539, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9be4
L_8002d9be4:
  ; @pc 0x8002d9be4 word 0x885f7d69
  %r4540.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4540 = load i64, ptr %r4540.p, align 8, !alias.scope !3, !noalias !4
  %atp4541 = inttoptr i64 %r4540 to ptr
  %ldx4542 = load atomic i32, ptr %atp4541 acquire, align 4, !alias.scope !4, !noalias !3
  %c4543 = zext i32 %ldx4542 to i64
  %fp4544 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r4540, ptr %fp4544, align 8, !alias.scope !3, !noalias !4
  %fp4545 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c4543, ptr %fp4545, align 8, !alias.scope !3, !noalias !4
  %wp4546 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4543, ptr %wp4546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9be8 word 0x8a080129
  %r4547.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4547 = load i64, ptr %r4547.p, align 8, !alias.scope !3, !noalias !4
  %r4548.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4548 = load i64, ptr %r4548.p, align 8, !alias.scope !3, !noalias !4
  %t4549 = and i64 %r4548, %r4547
  %wp4550 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4549, ptr %wp4550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bec word 0xb27f0129
  %r4551.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4551 = load i64, ptr %r4551.p, align 8, !alias.scope !3, !noalias !4
  %t4552 = or i64 %r4551, 2
  %wp4553 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4552, ptr %wp4553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bf0 word 0x880a7d69
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %atp4555 = inttoptr i64 %r4554 to ptr
  %fp4556 = getelementptr inbounds i8, ptr %c, i64 296
  %fv4557 = load i64, ptr %fp4556, align 8, !alias.scope !3, !noalias !4
  %fp4558 = getelementptr inbounds i8, ptr %c, i64 304
  %fv4559 = load i64, ptr %fp4558, align 8, !alias.scope !3, !noalias !4
  %fp4560 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp4560, align 8, !alias.scope !3, !noalias !4
  %cmp4561 = icmp eq i64 %fv4557, %r4554
  %c4562 = trunc i64 %fv4559 to i32
  %r4563.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4563 = load i64, ptr %r4563.p, align 8, !alias.scope !3, !noalias !4
  %c4564 = trunc i64 %r4563 to i32
  %cx4565 = cmpxchg ptr %atp4555, i32 %c4562, i32 %c4564 seq_cst seq_cst, align 4
  %cxok4566 = extractvalue { i32, i1 } %cx4565, 1
  %t4567 = and i1 %cmp4561, %cxok4566
  %sel4568 = select i1 %t4567, i32 0, i32 1
  %c4569 = zext i32 %sel4568 to i64
  %wp4570 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4569, ptr %wp4570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bf4 word 0x34ffaf6a
  %r4571.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4571 = load i64, ptr %r4571.p, align 8, !alias.scope !3, !noalias !4
  %c4572 = trunc i64 %r4571 to i32
  %cmp4573 = icmp eq i32 %c4572, 0
  br i1 %cmp4573, label %L_8002d91e0, label %L_8002d9bf8_ft
L_8002d9bfc:
  ; @pc 0x8002d9bfc word 0x36a040ed
  %r4574.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4574 = load i64, ptr %r4574.p, align 8, !alias.scope !3, !noalias !4
  %t4575 = and i64 %r4574, 1048576
  %cmp4576 = icmp eq i64 %t4575, 0
  br i1 %cmp4576, label %L_8002da418, label %L_8002d9c00_ft
L_8002d9c38:
  ; @pc 0x8002d9c38 word 0xf94081ad
  %r4644.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4644 = load i64, ptr %r4644.p, align 8, !alias.scope !3, !noalias !4
  %t4645 = add i64 %r4644, 256
  %gmp4646 = inttoptr i64 %t4645 to ptr
  %gml4647 = load i64, ptr %gmp4646, align 1, !alias.scope !4, !noalias !3
  %wp4648 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4647, ptr %wp4648, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9c3c
L_8002d9c3c:
  ; @pc 0x8002d9c3c word 0x8b0c01cc
  %r4649.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4649 = load i64, ptr %r4649.p, align 8, !alias.scope !3, !noalias !4
  %r4650.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4650 = load i64, ptr %r4650.p, align 8, !alias.scope !3, !noalias !4
  %t4651 = add i64 %r4649, %r4650
  %wp4652 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4651, ptr %wp4652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c40 word 0xf86d698c
  %r4653.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4653 = load i64, ptr %r4653.p, align 8, !alias.scope !3, !noalias !4
  %r4654.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4654 = load i64, ptr %r4654.p, align 8, !alias.scope !3, !noalias !4
  %t4655 = add i64 %r4653, %r4654
  %gmp4656 = inttoptr i64 %t4655 to ptr
  %gml4657 = load i64, ptr %gmp4656, align 1, !alias.scope !4, !noalias !3
  %wp4658 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4657, ptr %wp4658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c44 word 0xb4001a2c
  %r4659.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4659 = load i64, ptr %r4659.p, align 8, !alias.scope !3, !noalias !4
  %cmp4660 = icmp eq i64 %r4659, 0
  br i1 %cmp4660, label %L_8002d9f88, label %L_8002d9c48_ft
L_8002d9c4c:
  ; @pc 0x8002d9c4c word 0x6b0a013f
  %r4664.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4664 = load i64, ptr %r4664.p, align 8, !alias.scope !3, !noalias !4
  %c4665 = trunc i64 %r4664 to i32
  %r4666.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4666 = load i64, ptr %r4666.p, align 8, !alias.scope !3, !noalias !4
  %c4667 = trunc i64 %r4666 to i32
  %t4668 = sub i32 %c4665, %c4667
  %fn4669 = icmp slt i32 %t4668, 0
  %fz4670 = icmp eq i32 %t4668, 0
  %fc4671 = icmp uge i32 %c4665, %c4667
  %fx14672 = xor i32 %c4665, %c4667
  %fx24673 = xor i32 %c4665, %t4668
  %fva4674 = and i32 %fx14672, %fx24673
  %fv4675 = icmp slt i32 %fva4674, 0
  %nz4676 = zext i1 %fn4669 to i64
  %zz4677 = zext i1 %fz4670 to i64
  %cz4678 = zext i1 %fc4671 to i64
  %vz4679 = zext i1 %fv4675 to i64
  %ns4680 = shl i64 %nz4676, 31
  %zs4681 = shl i64 %zz4677, 30
  %cs4682 = shl i64 %cz4678, 29
  %vs4683 = shl i64 %vz4679, 28
  %nzor4684 = or i64 %ns4680, %zs4681
  %cvor4685 = or i64 %cs4682, %vs4683
  %nzcv4686 = or i64 %nzor4684, %cvor4685
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c50 word 0xf9405f16
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %t4689 = add i64 %r4688, 184
  %gmp4690 = inttoptr i64 %t4689 to ptr
  %gml4691 = load i64, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  %wp4692 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4691, ptr %wp4692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c54 word 0x1a9f8149
  %r4693.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4693 = load i64, ptr %r4693.p, align 8, !alias.scope !3, !noalias !4
  %c4694 = trunc i64 %r4693 to i32
  %r4695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4695 = load i64, ptr %r4695.p, align 8, !alias.scope !3, !noalias !4
  %fsh4697 = lshr i64 %r4695, 29
  %ftr4698 = trunc i64 %fsh4697 to i1
  %fsh4699 = lshr i64 %r4695, 30
  %ftr4700 = trunc i64 %fsh4699 to i1
  %fnz4701 = xor i1 %ftr4700, true
  %cond4696 = and i1 %ftr4698, %fnz4701
  %sel4702 = select i1 %cond4696, i32 %c4694, i32 0
  %c4703 = zext i32 %sel4702 to i64
  %wp4704 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4703, ptr %wp4704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c58 word 0x9b302128
  %r4705.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4705 = load i64, ptr %r4705.p, align 8, !alias.scope !3, !noalias !4
  %c4706 = trunc i64 %r4705 to i32
  %c4707 = sext i32 %c4706 to i64
  %r4708.p = getelementptr inbounds i8, ptr %c, i64 128
  %r4708 = load i64, ptr %r4708.p, align 8, !alias.scope !3, !noalias !4
  %c4709 = trunc i64 %r4708 to i32
  %c4710 = sext i32 %c4709 to i64
  %t4711 = mul i64 %c4707, %c4710
  %r4712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4712 = load i64, ptr %r4712.p, align 8, !alias.scope !3, !noalias !4
  %t4713 = add i64 %r4712, %t4711
  %wp4714 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4713, ptr %wp4714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c5c word 0xf94686a9
  %r4715.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4715 = load i64, ptr %r4715.p, align 8, !alias.scope !3, !noalias !4
  %t4716 = add i64 %r4715, 3336
  %gmp4717 = inttoptr i64 %t4716 to ptr
  %gml4718 = load i64, ptr %gmp4717, align 1, !alias.scope !4, !noalias !3
  %wp4719 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4718, ptr %wp4719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c60 word 0xf9400d08
  %r4720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4720 = load i64, ptr %r4720.p, align 8, !alias.scope !3, !noalias !4
  %t4721 = add i64 %r4720, 24
  %gmp4722 = inttoptr i64 %t4721 to ptr
  %gml4723 = load i64, ptr %gmp4722, align 1, !alias.scope !4, !noalias !3
  %wp4724 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4723, ptr %wp4724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c64 word 0xf9400108
  %r4725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4725 = load i64, ptr %r4725.p, align 8, !alias.scope !3, !noalias !4
  %gmp4726 = inttoptr i64 %r4725 to ptr
  %gml4727 = load i64, ptr %gmp4726, align 1, !alias.scope !4, !noalias !3
  %wp4728 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4727, ptr %wp4728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c68 word 0x79410908
  %r4729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4729 = load i64, ptr %r4729.p, align 8, !alias.scope !3, !noalias !4
  %t4730 = add i64 %r4729, 132
  %gmp4731 = inttoptr i64 %t4730 to ptr
  %gml4732 = load i16, ptr %gmp4731, align 1, !alias.scope !4, !noalias !3
  %c4733 = zext i16 %gml4732 to i64
  %wp4734 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4733, ptr %wp4734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c6c word 0x8b081537
  %r4735.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4735 = load i64, ptr %r4735.p, align 8, !alias.scope !3, !noalias !4
  %r4736.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4736 = load i64, ptr %r4736.p, align 8, !alias.scope !3, !noalias !4
  %t4737 = shl i64 %r4736, 5
  %t4738 = add i64 %r4735, %t4737
  %wp4739 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t4738, ptr %wp4739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c70 word 0x3700014b
  %r4740.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4740 = load i64, ptr %r4740.p, align 8, !alias.scope !3, !noalias !4
  %t4741 = and i64 %r4740, 1
  %cmp4742 = icmp ne i64 %t4741, 0
  br i1 %cmp4742, label %L_8002d9c98, label %L_8002d9c74_ft
L_8002d9c98:
  ; @pc 0x8002d9c98 word 0xf001b408
  %wp4773 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c9c word 0xb0015322
  %wp4774 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp4774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ca0 word 0x910bb042
  %r4775.p = getelementptr inbounds i8, ptr %c, i64 16
  %r4775 = load i64, ptr %r4775.p, align 8, !alias.scope !3, !noalias !4
  %t4776 = add i64 %r4775, 748
  %wp4777 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4776, ptr %wp4777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ca4 word 0xf946a108
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %t4779 = add i64 %r4778, 3392
  %gmp4780 = inttoptr i64 %t4779 to ptr
  %gml4781 = load i64, ptr %gmp4780, align 1, !alias.scope !4, !noalias !3
  %wp4782 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4781, ptr %wp4782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ca8 word 0xaa1603e0
  %r4783.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4783 = load i64, ptr %r4783.p, align 8, !alias.scope !3, !noalias !4
  %t4784 = or i64 0, %r4783
  %wp4785 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4784, ptr %wp4785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cac word 0xf9400108
  %r4786.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4786 = load i64, ptr %r4786.p, align 8, !alias.scope !3, !noalias !4
  %gmp4787 = inttoptr i64 %r4786 to ptr
  %gml4788 = load i64, ptr %gmp4787, align 1, !alias.scope !4, !noalias !3
  %wp4789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4788, ptr %wp4789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cb0 word 0x52800041
  %c4790 = zext i32 2 to i64
  %wp4791 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4790, ptr %wp4791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cb4 word 0x528001e3
  %c4792 = zext i32 15 to i64
  %wp4793 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c4792, ptr %wp4793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cb8 word 0xd63f0100
  %r4794.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4794 = load i64, ptr %r4794.p, align 8, !alias.scope !3, !noalias !4
  %fp4795 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4794, ptr %fp4795, align 8, !alias.scope !3, !noalias !4
  %wp4796 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727612, ptr %wp4796, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9cbc word 0xb94c8aa8
  %r4797.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4797 = load i64, ptr %r4797.p, align 8, !alias.scope !3, !noalias !4
  %t4798 = add i64 %r4797, 3208
  %gmp4799 = inttoptr i64 %t4798 to ptr
  %gml4800 = load i32, ptr %gmp4799, align 1, !alias.scope !4, !noalias !3
  %c4801 = zext i32 %gml4800 to i64
  %wp4802 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4801, ptr %wp4802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cc0 word 0x36a001c8
  %r4803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4803 = load i64, ptr %r4803.p, align 8, !alias.scope !3, !noalias !4
  %t4804 = and i64 %r4803, 1048576
  %cmp4805 = icmp eq i64 %t4804, 0
  br i1 %cmp4805, label %L_8002d9cf8, label %L_8002d9cc4_ft
L_8002d9cf0:
  ; @pc 0x8002d9cf0 word 0x39722aa8
  %r4862.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4862 = load i64, ptr %r4862.p, align 8, !alias.scope !3, !noalias !4
  %t4863 = add i64 %r4862, 3210
  %gmp4864 = inttoptr i64 %t4863 to ptr
  %gml4865 = load i8, ptr %gmp4864, align 1, !alias.scope !4, !noalias !3
  %c4866 = zext i8 %gml4865 to i64
  %wp4867 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4866, ptr %wp4867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cf4 word 0x37283d88
  %r4868.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4868 = load i64, ptr %r4868.p, align 8, !alias.scope !3, !noalias !4
  %t4869 = and i64 %r4868, 32
  %cmp4870 = icmp ne i64 %t4869, 0
  br i1 %cmp4870, label %L_8002da4a4, label %L_8002d9cf8
L_8002d9cf8:
  ; @pc 0x8002d9cf8 word 0x52800033
  %c4871 = zext i32 1 to i64
  %wp4872 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c4871, ptr %wp4872, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9cfc
L_8002d9cfc:
  ; @pc 0x8002d9cfc word 0x2a1c03f0
  %r4873.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4873 = load i64, ptr %r4873.p, align 8, !alias.scope !3, !noalias !4
  %c4874 = trunc i64 %r4873 to i32
  %t4875 = or i32 0, %c4874
  %c4876 = zext i32 %t4875 to i64
  %wp4877 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4876, ptr %wp4877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d00 word 0x17fffd75
  br label %L_8002d92d4
L_8002d9d04:
  ; @pc 0x8002d9d04 word 0x36a0442d
  %r4878.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4878 = load i64, ptr %r4878.p, align 8, !alias.scope !3, !noalias !4
  %t4879 = and i64 %r4878, 1048576
  %cmp4880 = icmp eq i64 %t4879, 0
  br i1 %cmp4880, label %L_8002da588, label %L_8002d9d08_ft
L_8002d9d40:
  ; @pc 0x8002d9d40 word 0xf94081ad
  %r4948.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4948 = load i64, ptr %r4948.p, align 8, !alias.scope !3, !noalias !4
  %t4949 = add i64 %r4948, 256
  %gmp4950 = inttoptr i64 %t4949 to ptr
  %gml4951 = load i64, ptr %gmp4950, align 1, !alias.scope !4, !noalias !3
  %wp4952 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4951, ptr %wp4952, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9d44
L_8002d9d44:
  ; @pc 0x8002d9d44 word 0x8b0c01cc
  %r4953.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4953 = load i64, ptr %r4953.p, align 8, !alias.scope !3, !noalias !4
  %r4954.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4954 = load i64, ptr %r4954.p, align 8, !alias.scope !3, !noalias !4
  %t4955 = add i64 %r4953, %r4954
  %wp4956 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4955, ptr %wp4956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d48 word 0xf86d698c
  %r4957.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4957 = load i64, ptr %r4957.p, align 8, !alias.scope !3, !noalias !4
  %r4958.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4958 = load i64, ptr %r4958.p, align 8, !alias.scope !3, !noalias !4
  %t4959 = add i64 %r4957, %r4958
  %gmp4960 = inttoptr i64 %t4959 to ptr
  %gml4961 = load i64, ptr %gmp4960, align 1, !alias.scope !4, !noalias !3
  %wp4962 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4961, ptr %wp4962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d4c word 0xb4000f2c
  %r4963.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4963 = load i64, ptr %r4963.p, align 8, !alias.scope !3, !noalias !4
  %cmp4964 = icmp eq i64 %r4963, 0
  br i1 %cmp4964, label %L_8002d9f30, label %L_8002d9d50_ft
L_8002d9d54:
  ; @pc 0x8002d9d54 word 0x6b0a013f
  %r4968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4968 = load i64, ptr %r4968.p, align 8, !alias.scope !3, !noalias !4
  %c4969 = trunc i64 %r4968 to i32
  %r4970.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4970 = load i64, ptr %r4970.p, align 8, !alias.scope !3, !noalias !4
  %c4971 = trunc i64 %r4970 to i32
  %t4972 = sub i32 %c4969, %c4971
  %fn4973 = icmp slt i32 %t4972, 0
  %fz4974 = icmp eq i32 %t4972, 0
  %fc4975 = icmp uge i32 %c4969, %c4971
  %fx14976 = xor i32 %c4969, %c4971
  %fx24977 = xor i32 %c4969, %t4972
  %fva4978 = and i32 %fx14976, %fx24977
  %fv4979 = icmp slt i32 %fva4978, 0
  %nz4980 = zext i1 %fn4973 to i64
  %zz4981 = zext i1 %fz4974 to i64
  %cz4982 = zext i1 %fc4975 to i64
  %vz4983 = zext i1 %fv4979 to i64
  %ns4984 = shl i64 %nz4980, 31
  %zs4985 = shl i64 %zz4981, 30
  %cs4986 = shl i64 %cz4982, 29
  %vs4987 = shl i64 %vz4983, 28
  %nzor4988 = or i64 %ns4984, %zs4985
  %cvor4989 = or i64 %cs4986, %vs4987
  %nzcv4990 = or i64 %nzor4988, %cvor4989
  %wp4991 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4990, ptr %wp4991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d58 word 0xf9405f16
  %r4992.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4992 = load i64, ptr %r4992.p, align 8, !alias.scope !3, !noalias !4
  %t4993 = add i64 %r4992, 184
  %gmp4994 = inttoptr i64 %t4993 to ptr
  %gml4995 = load i64, ptr %gmp4994, align 1, !alias.scope !4, !noalias !3
  %wp4996 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4995, ptr %wp4996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d5c word 0x1a9f8149
  %r4997.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4997 = load i64, ptr %r4997.p, align 8, !alias.scope !3, !noalias !4
  %c4998 = trunc i64 %r4997 to i32
  %r4999.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4999 = load i64, ptr %r4999.p, align 8, !alias.scope !3, !noalias !4
  %fsh5001 = lshr i64 %r4999, 29
  %ftr5002 = trunc i64 %fsh5001 to i1
  %fsh5003 = lshr i64 %r4999, 30
  %ftr5004 = trunc i64 %fsh5003 to i1
  %fnz5005 = xor i1 %ftr5004, true
  %cond5000 = and i1 %ftr5002, %fnz5005
  %sel5006 = select i1 %cond5000, i32 %c4998, i32 0
  %c5007 = zext i32 %sel5006 to i64
  %wp5008 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5007, ptr %wp5008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d60 word 0x9b302128
  %r5009.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5009 = load i64, ptr %r5009.p, align 8, !alias.scope !3, !noalias !4
  %c5010 = trunc i64 %r5009 to i32
  %c5011 = sext i32 %c5010 to i64
  %r5012.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5012 = load i64, ptr %r5012.p, align 8, !alias.scope !3, !noalias !4
  %c5013 = trunc i64 %r5012 to i32
  %c5014 = sext i32 %c5013 to i64
  %t5015 = mul i64 %c5011, %c5014
  %r5016.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5016 = load i64, ptr %r5016.p, align 8, !alias.scope !3, !noalias !4
  %t5017 = add i64 %r5016, %t5015
  %wp5018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5017, ptr %wp5018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d64 word 0xf94686a9
  %r5019.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5019 = load i64, ptr %r5019.p, align 8, !alias.scope !3, !noalias !4
  %t5020 = add i64 %r5019, 3336
  %gmp5021 = inttoptr i64 %t5020 to ptr
  %gml5022 = load i64, ptr %gmp5021, align 1, !alias.scope !4, !noalias !3
  %wp5023 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5022, ptr %wp5023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d68 word 0xf9400d08
  %r5024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5024 = load i64, ptr %r5024.p, align 8, !alias.scope !3, !noalias !4
  %t5025 = add i64 %r5024, 24
  %gmp5026 = inttoptr i64 %t5025 to ptr
  %gml5027 = load i64, ptr %gmp5026, align 1, !alias.scope !4, !noalias !3
  %wp5028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5027, ptr %wp5028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d6c word 0xf9400108
  %r5029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5029 = load i64, ptr %r5029.p, align 8, !alias.scope !3, !noalias !4
  %gmp5030 = inttoptr i64 %r5029 to ptr
  %gml5031 = load i64, ptr %gmp5030, align 1, !alias.scope !4, !noalias !3
  %wp5032 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5031, ptr %wp5032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d70 word 0x79410908
  %r5033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5033 = load i64, ptr %r5033.p, align 8, !alias.scope !3, !noalias !4
  %t5034 = add i64 %r5033, 132
  %gmp5035 = inttoptr i64 %t5034 to ptr
  %gml5036 = load i16, ptr %gmp5035, align 1, !alias.scope !4, !noalias !3
  %c5037 = zext i16 %gml5036 to i64
  %wp5038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5037, ptr %wp5038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d74 word 0x8b081537
  %r5039.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5039 = load i64, ptr %r5039.p, align 8, !alias.scope !3, !noalias !4
  %r5040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5040 = load i64, ptr %r5040.p, align 8, !alias.scope !3, !noalias !4
  %t5041 = shl i64 %r5040, 5
  %t5042 = add i64 %r5039, %t5041
  %wp5043 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t5042, ptr %wp5043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d78 word 0x3700014b
  %r5044.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5044 = load i64, ptr %r5044.p, align 8, !alias.scope !3, !noalias !4
  %t5045 = and i64 %r5044, 1
  %cmp5046 = icmp ne i64 %t5045, 0
  br i1 %cmp5046, label %L_8002d9da0, label %L_8002d9d7c_ft
L_8002d9da0:
  ; @pc 0x8002d9da0 word 0xf001b408
  %wp5077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp5077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9da4 word 0xb0015322
  %wp5078 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp5078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9da8 word 0x910bb042
  %r5079.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5079 = load i64, ptr %r5079.p, align 8, !alias.scope !3, !noalias !4
  %t5080 = add i64 %r5079, 748
  %wp5081 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5080, ptr %wp5081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dac word 0xf946a108
  %r5082.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5082 = load i64, ptr %r5082.p, align 8, !alias.scope !3, !noalias !4
  %t5083 = add i64 %r5082, 3392
  %gmp5084 = inttoptr i64 %t5083 to ptr
  %gml5085 = load i64, ptr %gmp5084, align 1, !alias.scope !4, !noalias !3
  %wp5086 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5085, ptr %wp5086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9db0 word 0xaa1603e0
  %r5087.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5087 = load i64, ptr %r5087.p, align 8, !alias.scope !3, !noalias !4
  %t5088 = or i64 0, %r5087
  %wp5089 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5088, ptr %wp5089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9db4 word 0xf9400108
  %r5090.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5090 = load i64, ptr %r5090.p, align 8, !alias.scope !3, !noalias !4
  %gmp5091 = inttoptr i64 %r5090 to ptr
  %gml5092 = load i64, ptr %gmp5091, align 1, !alias.scope !4, !noalias !3
  %wp5093 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5092, ptr %wp5093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9db8 word 0x52800081
  %c5094 = zext i32 4 to i64
  %wp5095 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5094, ptr %wp5095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dbc word 0x528001e3
  %c5096 = zext i32 15 to i64
  %wp5097 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5096, ptr %wp5097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dc0 word 0xd63f0100
  %r5098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5098 = load i64, ptr %r5098.p, align 8, !alias.scope !3, !noalias !4
  %fp5099 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5098, ptr %fp5099, align 8, !alias.scope !3, !noalias !4
  %wp5100 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727876, ptr %wp5100, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9dc4 word 0xb94c8aa8
  %r5101.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5101 = load i64, ptr %r5101.p, align 8, !alias.scope !3, !noalias !4
  %t5102 = add i64 %r5101, 3208
  %gmp5103 = inttoptr i64 %t5102 to ptr
  %gml5104 = load i32, ptr %gmp5103, align 1, !alias.scope !4, !noalias !3
  %c5105 = zext i32 %gml5104 to i64
  %wp5106 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5105, ptr %wp5106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dc8 word 0x36a04108
  %r5107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5107 = load i64, ptr %r5107.p, align 8, !alias.scope !3, !noalias !4
  %t5108 = and i64 %r5107, 1048576
  %cmp5109 = icmp eq i64 %t5108, 0
  br i1 %cmp5109, label %L_8002da5e8, label %L_8002d9dcc_ft
L_8002d9df8:
  ; @pc 0x8002d9df8 word 0x39722aa8
  %r5166.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5166 = load i64, ptr %r5166.p, align 8, !alias.scope !3, !noalias !4
  %t5167 = add i64 %r5166, 3210
  %gmp5168 = inttoptr i64 %t5167 to ptr
  %gml5169 = load i8, ptr %gmp5168, align 1, !alias.scope !4, !noalias !3
  %c5170 = zext i8 %gml5169 to i64
  %wp5171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5170, ptr %wp5171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dfc word 0x37284108
  %r5172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5172 = load i64, ptr %r5172.p, align 8, !alias.scope !3, !noalias !4
  %t5173 = and i64 %r5172, 32
  %cmp5174 = icmp ne i64 %t5173, 0
  br i1 %cmp5174, label %L_8002da61c, label %L_8002d9e00_ft
L_8002d9e0c:
  ; @pc 0x8002d9e0c word 0x36a0424d
  %r5182.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5182 = load i64, ptr %r5182.p, align 8, !alias.scope !3, !noalias !4
  %t5183 = and i64 %r5182, 1048576
  %cmp5184 = icmp eq i64 %t5183, 0
  br i1 %cmp5184, label %L_8002da654, label %L_8002d9e10_ft
L_8002d9e48:
  ; @pc 0x8002d9e48 word 0xf94081ad
  %r5252.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5252 = load i64, ptr %r5252.p, align 8, !alias.scope !3, !noalias !4
  %t5253 = add i64 %r5252, 256
  %gmp5254 = inttoptr i64 %t5253 to ptr
  %gml5255 = load i64, ptr %gmp5254, align 1, !alias.scope !4, !noalias !3
  %wp5256 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5255, ptr %wp5256, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9e4c
L_8002d9e4c:
  ; @pc 0x8002d9e4c word 0x8b0c01cc
  %r5257.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5257 = load i64, ptr %r5257.p, align 8, !alias.scope !3, !noalias !4
  %r5258.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5258 = load i64, ptr %r5258.p, align 8, !alias.scope !3, !noalias !4
  %t5259 = add i64 %r5257, %r5258
  %wp5260 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5259, ptr %wp5260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e50 word 0xf86d698c
  %r5261.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5261 = load i64, ptr %r5261.p, align 8, !alias.scope !3, !noalias !4
  %r5262.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5262 = load i64, ptr %r5262.p, align 8, !alias.scope !3, !noalias !4
  %t5263 = add i64 %r5261, %r5262
  %gmp5264 = inttoptr i64 %t5263 to ptr
  %gml5265 = load i64, ptr %gmp5264, align 1, !alias.scope !4, !noalias !3
  %wp5266 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5265, ptr %wp5266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e54 word 0xb40008ec
  %r5267.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5267 = load i64, ptr %r5267.p, align 8, !alias.scope !3, !noalias !4
  %cmp5268 = icmp eq i64 %r5267, 0
  br i1 %cmp5268, label %L_8002d9f70, label %L_8002d9e58_ft
L_8002d9e5c:
  ; @pc 0x8002d9e5c word 0x6b0a013f
  %r5272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5272 = load i64, ptr %r5272.p, align 8, !alias.scope !3, !noalias !4
  %c5273 = trunc i64 %r5272 to i32
  %r5274.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5274 = load i64, ptr %r5274.p, align 8, !alias.scope !3, !noalias !4
  %c5275 = trunc i64 %r5274 to i32
  %t5276 = sub i32 %c5273, %c5275
  %fn5277 = icmp slt i32 %t5276, 0
  %fz5278 = icmp eq i32 %t5276, 0
  %fc5279 = icmp uge i32 %c5273, %c5275
  %fx15280 = xor i32 %c5273, %c5275
  %fx25281 = xor i32 %c5273, %t5276
  %fva5282 = and i32 %fx15280, %fx25281
  %fv5283 = icmp slt i32 %fva5282, 0
  %nz5284 = zext i1 %fn5277 to i64
  %zz5285 = zext i1 %fz5278 to i64
  %cz5286 = zext i1 %fc5279 to i64
  %vz5287 = zext i1 %fv5283 to i64
  %ns5288 = shl i64 %nz5284, 31
  %zs5289 = shl i64 %zz5285, 30
  %cs5290 = shl i64 %cz5286, 29
  %vs5291 = shl i64 %vz5287, 28
  %nzor5292 = or i64 %ns5288, %zs5289
  %cvor5293 = or i64 %cs5290, %vs5291
  %nzcv5294 = or i64 %nzor5292, %cvor5293
  %wp5295 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5294, ptr %wp5295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e60 word 0xf9405f16
  %r5296.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5296 = load i64, ptr %r5296.p, align 8, !alias.scope !3, !noalias !4
  %t5297 = add i64 %r5296, 184
  %gmp5298 = inttoptr i64 %t5297 to ptr
  %gml5299 = load i64, ptr %gmp5298, align 1, !alias.scope !4, !noalias !3
  %wp5300 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5299, ptr %wp5300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e64 word 0x1a9f8149
  %r5301.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5301 = load i64, ptr %r5301.p, align 8, !alias.scope !3, !noalias !4
  %c5302 = trunc i64 %r5301 to i32
  %r5303.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5303 = load i64, ptr %r5303.p, align 8, !alias.scope !3, !noalias !4
  %fsh5305 = lshr i64 %r5303, 29
  %ftr5306 = trunc i64 %fsh5305 to i1
  %fsh5307 = lshr i64 %r5303, 30
  %ftr5308 = trunc i64 %fsh5307 to i1
  %fnz5309 = xor i1 %ftr5308, true
  %cond5304 = and i1 %ftr5306, %fnz5309
  %sel5310 = select i1 %cond5304, i32 %c5302, i32 0
  %c5311 = zext i32 %sel5310 to i64
  %wp5312 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5311, ptr %wp5312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e68 word 0x9b302128
  %r5313.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5313 = load i64, ptr %r5313.p, align 8, !alias.scope !3, !noalias !4
  %c5314 = trunc i64 %r5313 to i32
  %c5315 = sext i32 %c5314 to i64
  %r5316.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5316 = load i64, ptr %r5316.p, align 8, !alias.scope !3, !noalias !4
  %c5317 = trunc i64 %r5316 to i32
  %c5318 = sext i32 %c5317 to i64
  %t5319 = mul i64 %c5315, %c5318
  %r5320.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5320 = load i64, ptr %r5320.p, align 8, !alias.scope !3, !noalias !4
  %t5321 = add i64 %r5320, %t5319
  %wp5322 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5321, ptr %wp5322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e6c word 0xf94686a9
  %r5323.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5323 = load i64, ptr %r5323.p, align 8, !alias.scope !3, !noalias !4
  %t5324 = add i64 %r5323, 3336
  %gmp5325 = inttoptr i64 %t5324 to ptr
  %gml5326 = load i64, ptr %gmp5325, align 1, !alias.scope !4, !noalias !3
  %wp5327 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5326, ptr %wp5327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e70 word 0xf9400d08
  %r5328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5328 = load i64, ptr %r5328.p, align 8, !alias.scope !3, !noalias !4
  %t5329 = add i64 %r5328, 24
  %gmp5330 = inttoptr i64 %t5329 to ptr
  %gml5331 = load i64, ptr %gmp5330, align 1, !alias.scope !4, !noalias !3
  %wp5332 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5331, ptr %wp5332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e74 word 0xf9400108
  %r5333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5333 = load i64, ptr %r5333.p, align 8, !alias.scope !3, !noalias !4
  %gmp5334 = inttoptr i64 %r5333 to ptr
  %gml5335 = load i64, ptr %gmp5334, align 1, !alias.scope !4, !noalias !3
  %wp5336 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5335, ptr %wp5336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e78 word 0x79410908
  %r5337.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5337 = load i64, ptr %r5337.p, align 8, !alias.scope !3, !noalias !4
  %t5338 = add i64 %r5337, 132
  %gmp5339 = inttoptr i64 %t5338 to ptr
  %gml5340 = load i16, ptr %gmp5339, align 1, !alias.scope !4, !noalias !3
  %c5341 = zext i16 %gml5340 to i64
  %wp5342 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5341, ptr %wp5342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e7c word 0x8b081537
  %r5343.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5343 = load i64, ptr %r5343.p, align 8, !alias.scope !3, !noalias !4
  %r5344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5344 = load i64, ptr %r5344.p, align 8, !alias.scope !3, !noalias !4
  %t5345 = shl i64 %r5344, 5
  %t5346 = add i64 %r5343, %t5345
  %wp5347 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t5346, ptr %wp5347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e80 word 0x3700014b
  %r5348.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5348 = load i64, ptr %r5348.p, align 8, !alias.scope !3, !noalias !4
  %t5349 = and i64 %r5348, 1
  %cmp5350 = icmp ne i64 %t5349, 0
  br i1 %cmp5350, label %L_8002d9ea8, label %L_8002d9e84_ft
L_8002d9ea8:
  ; @pc 0x8002d9ea8 word 0xf001b408
  %wp5381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp5381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9eac word 0xb0015322
  %wp5382 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 34407178240, ptr %wp5382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9eb0 word 0x910bb042
  %r5383.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5383 = load i64, ptr %r5383.p, align 8, !alias.scope !3, !noalias !4
  %t5384 = add i64 %r5383, 748
  %wp5385 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5384, ptr %wp5385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9eb4 word 0xf946a108
  %r5386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5386 = load i64, ptr %r5386.p, align 8, !alias.scope !3, !noalias !4
  %t5387 = add i64 %r5386, 3392
  %gmp5388 = inttoptr i64 %t5387 to ptr
  %gml5389 = load i64, ptr %gmp5388, align 1, !alias.scope !4, !noalias !3
  %wp5390 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5389, ptr %wp5390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9eb8 word 0xaa1603e0
  %r5391.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5391 = load i64, ptr %r5391.p, align 8, !alias.scope !3, !noalias !4
  %t5392 = or i64 0, %r5391
  %wp5393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5392, ptr %wp5393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ebc word 0xf9400108
  %r5394.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5394 = load i64, ptr %r5394.p, align 8, !alias.scope !3, !noalias !4
  %gmp5395 = inttoptr i64 %r5394 to ptr
  %gml5396 = load i64, ptr %gmp5395, align 1, !alias.scope !4, !noalias !3
  %wp5397 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5396, ptr %wp5397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ec0 word 0x52800061
  %c5398 = zext i32 3 to i64
  %wp5399 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5398, ptr %wp5399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ec4 word 0x528001e3
  %c5400 = zext i32 15 to i64
  %wp5401 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5400, ptr %wp5401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ec8 word 0xd63f0100
  %r5402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5402 = load i64, ptr %r5402.p, align 8, !alias.scope !3, !noalias !4
  %fp5403 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5402, ptr %fp5403, align 8, !alias.scope !3, !noalias !4
  %wp5404 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728140, ptr %wp5404, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9ecc word 0xb94c8aa8
  %r5405.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5405 = load i64, ptr %r5405.p, align 8, !alias.scope !3, !noalias !4
  %t5406 = add i64 %r5405, 3208
  %gmp5407 = inttoptr i64 %t5406 to ptr
  %gml5408 = load i32, ptr %gmp5407, align 1, !alias.scope !4, !noalias !3
  %c5409 = zext i32 %gml5408 to i64
  %wp5410 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5409, ptr %wp5410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ed0 word 0x36a001c8
  %r5411.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5411 = load i64, ptr %r5411.p, align 8, !alias.scope !3, !noalias !4
  %t5412 = and i64 %r5411, 1048576
  %cmp5413 = icmp eq i64 %t5412, 0
  br i1 %cmp5413, label %L_8002d9f08, label %L_8002d9ed4_ft
L_8002d9f00:
  ; @pc 0x8002d9f00 word 0x39722aa8
  %r5470.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5470 = load i64, ptr %r5470.p, align 8, !alias.scope !3, !noalias !4
  %t5471 = add i64 %r5470, 3210
  %gmp5472 = inttoptr i64 %t5471 to ptr
  %gml5473 = load i8, ptr %gmp5472, align 1, !alias.scope !4, !noalias !3
  %c5474 = zext i8 %gml5473 to i64
  %wp5475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5474, ptr %wp5475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f04 word 0x37283ee8
  %r5476.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5476 = load i64, ptr %r5476.p, align 8, !alias.scope !3, !noalias !4
  %t5477 = and i64 %r5476, 32
  %cmp5478 = icmp ne i64 %t5477, 0
  br i1 %cmp5478, label %L_8002da6e0, label %L_8002d9f08
L_8002d9f08:
  ; @pc 0x8002d9f08 word 0x52800033
  %c5479 = zext i32 1 to i64
  %wp5480 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5479, ptr %wp5480, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f0c
L_8002d9f0c:
  ; @pc 0x8002d9f0c word 0x2a1c03f0
  %r5481.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5481 = load i64, ptr %r5481.p, align 8, !alias.scope !3, !noalias !4
  %c5482 = trunc i64 %r5481 to i32
  %t5483 = or i32 0, %c5482
  %c5484 = zext i32 %t5483 to i64
  %wp5485 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5484, ptr %wp5485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f10 word 0x17fffd03
  br label %L_8002d931c
L_8002d9f14:
  ; @pc 0x8002d9f14 word 0x12800048
  %c5486 = zext i32 -3 to i64
  %wp5487 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5486, ptr %wp5487, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f18
L_8002d9f18:
  ; @pc 0x8002d9f18 word 0x885f7d69
  %r5488.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5488 = load i64, ptr %r5488.p, align 8, !alias.scope !3, !noalias !4
  %atp5489 = inttoptr i64 %r5488 to ptr
  %ldx5490 = load atomic i32, ptr %atp5489 acquire, align 4, !alias.scope !4, !noalias !3
  %c5491 = zext i32 %ldx5490 to i64
  %fp5492 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5488, ptr %fp5492, align 8, !alias.scope !3, !noalias !4
  %fp5493 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5491, ptr %fp5493, align 8, !alias.scope !3, !noalias !4
  %wp5494 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5491, ptr %wp5494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f1c word 0x8a080129
  %r5495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5495 = load i64, ptr %r5495.p, align 8, !alias.scope !3, !noalias !4
  %r5496.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5496 = load i64, ptr %r5496.p, align 8, !alias.scope !3, !noalias !4
  %t5497 = and i64 %r5496, %r5495
  %wp5498 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5497, ptr %wp5498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f20 word 0xb27f0129
  %r5499.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5499 = load i64, ptr %r5499.p, align 8, !alias.scope !3, !noalias !4
  %t5500 = or i64 %r5499, 2
  %wp5501 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5500, ptr %wp5501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f24 word 0x880a7d69
  %r5502.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5502 = load i64, ptr %r5502.p, align 8, !alias.scope !3, !noalias !4
  %atp5503 = inttoptr i64 %r5502 to ptr
  %fp5504 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5505 = load i64, ptr %fp5504, align 8, !alias.scope !3, !noalias !4
  %fp5506 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5507 = load i64, ptr %fp5506, align 8, !alias.scope !3, !noalias !4
  %fp5508 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5508, align 8, !alias.scope !3, !noalias !4
  %cmp5509 = icmp eq i64 %fv5505, %r5502
  %c5510 = trunc i64 %fv5507 to i32
  %r5511.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5511 = load i64, ptr %r5511.p, align 8, !alias.scope !3, !noalias !4
  %c5512 = trunc i64 %r5511 to i32
  %cx5513 = cmpxchg ptr %atp5503, i32 %c5510, i32 %c5512 seq_cst seq_cst, align 4
  %cxok5514 = extractvalue { i32, i1 } %cx5513, 1
  %t5515 = and i1 %cmp5509, %cxok5514
  %sel5516 = select i1 %t5515, i32 0, i32 1
  %c5517 = zext i32 %sel5516 to i64
  %wp5518 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5517, ptr %wp5518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f28 word 0x34ff970a
  %r5519.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5519 = load i64, ptr %r5519.p, align 8, !alias.scope !3, !noalias !4
  %c5520 = trunc i64 %r5519 to i32
  %cmp5521 = icmp eq i32 %c5520, 0
  br i1 %cmp5521, label %L_8002d9208, label %L_8002d9f2c_ft
L_8002d9f30:
  ; @pc 0x8002d9f30 word 0x12800048
  %c5522 = zext i32 -3 to i64
  %wp5523 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5522, ptr %wp5523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f34 word 0x2a1f03f3
  %t5524 = or i32 0, 0
  %c5525 = zext i32 %t5524 to i64
  %wp5526 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5525, ptr %wp5526, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f38
L_8002d9f38:
  ; @pc 0x8002d9f38 word 0x885f7d69
  %r5527.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5527 = load i64, ptr %r5527.p, align 8, !alias.scope !3, !noalias !4
  %atp5528 = inttoptr i64 %r5527 to ptr
  %ldx5529 = load atomic i32, ptr %atp5528 acquire, align 4, !alias.scope !4, !noalias !3
  %c5530 = zext i32 %ldx5529 to i64
  %fp5531 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5527, ptr %fp5531, align 8, !alias.scope !3, !noalias !4
  %fp5532 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5530, ptr %fp5532, align 8, !alias.scope !3, !noalias !4
  %wp5533 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5530, ptr %wp5533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f3c word 0x8a080129
  %r5534.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5534 = load i64, ptr %r5534.p, align 8, !alias.scope !3, !noalias !4
  %r5535.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5535 = load i64, ptr %r5535.p, align 8, !alias.scope !3, !noalias !4
  %t5536 = and i64 %r5535, %r5534
  %wp5537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5536, ptr %wp5537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f40 word 0xb27f0129
  %r5538.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5538 = load i64, ptr %r5538.p, align 8, !alias.scope !3, !noalias !4
  %t5539 = or i64 %r5538, 2
  %wp5540 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5539, ptr %wp5540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f44 word 0x880a7d69
  %r5541.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5541 = load i64, ptr %r5541.p, align 8, !alias.scope !3, !noalias !4
  %atp5542 = inttoptr i64 %r5541 to ptr
  %fp5543 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5544 = load i64, ptr %fp5543, align 8, !alias.scope !3, !noalias !4
  %fp5545 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5546 = load i64, ptr %fp5545, align 8, !alias.scope !3, !noalias !4
  %fp5547 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5547, align 8, !alias.scope !3, !noalias !4
  %cmp5548 = icmp eq i64 %fv5544, %r5541
  %c5549 = trunc i64 %fv5546 to i32
  %r5550.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5550 = load i64, ptr %r5550.p, align 8, !alias.scope !3, !noalias !4
  %c5551 = trunc i64 %r5550 to i32
  %cx5552 = cmpxchg ptr %atp5542, i32 %c5549, i32 %c5551 seq_cst seq_cst, align 4
  %cxok5553 = extractvalue { i32, i1 } %cx5552, 1
  %t5554 = and i1 %cmp5548, %cxok5553
  %sel5555 = select i1 %t5554, i32 0, i32 1
  %c5556 = zext i32 %sel5555 to i64
  %wp5557 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5556, ptr %wp5557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f48 word 0x34ffa0ea
  %r5558.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5558 = load i64, ptr %r5558.p, align 8, !alias.scope !3, !noalias !4
  %c5559 = trunc i64 %r5558 to i32
  %cmp5560 = icmp eq i32 %c5559, 0
  br i1 %cmp5560, label %L_8002d9364, label %L_8002d9f4c_ft
L_8002d9f50:
  ; @pc 0x8002d9f50 word 0x12800048
  %c5561 = zext i32 -3 to i64
  %wp5562 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5561, ptr %wp5562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f54 word 0x2a1f03f3
  %t5563 = or i32 0, 0
  %c5564 = zext i32 %t5563 to i64
  %wp5565 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5564, ptr %wp5565, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f58
L_8002d9f58:
  ; @pc 0x8002d9f58 word 0x885f7d69
  %r5566.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5566 = load i64, ptr %r5566.p, align 8, !alias.scope !3, !noalias !4
  %atp5567 = inttoptr i64 %r5566 to ptr
  %ldx5568 = load atomic i32, ptr %atp5567 acquire, align 4, !alias.scope !4, !noalias !3
  %c5569 = zext i32 %ldx5568 to i64
  %fp5570 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5566, ptr %fp5570, align 8, !alias.scope !3, !noalias !4
  %fp5571 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5569, ptr %fp5571, align 8, !alias.scope !3, !noalias !4
  %wp5572 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5569, ptr %wp5572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f5c word 0x8a080129
  %r5573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5573 = load i64, ptr %r5573.p, align 8, !alias.scope !3, !noalias !4
  %r5574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5574 = load i64, ptr %r5574.p, align 8, !alias.scope !3, !noalias !4
  %t5575 = and i64 %r5574, %r5573
  %wp5576 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5575, ptr %wp5576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f60 word 0xb27f0129
  %r5577.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5577 = load i64, ptr %r5577.p, align 8, !alias.scope !3, !noalias !4
  %t5578 = or i64 %r5577, 2
  %wp5579 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5578, ptr %wp5579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f64 word 0x880a7d69
  %r5580.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5580 = load i64, ptr %r5580.p, align 8, !alias.scope !3, !noalias !4
  %atp5581 = inttoptr i64 %r5580 to ptr
  %fp5582 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5583 = load i64, ptr %fp5582, align 8, !alias.scope !3, !noalias !4
  %fp5584 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5585 = load i64, ptr %fp5584, align 8, !alias.scope !3, !noalias !4
  %fp5586 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5586, align 8, !alias.scope !3, !noalias !4
  %cmp5587 = icmp eq i64 %fv5583, %r5580
  %c5588 = trunc i64 %fv5585 to i32
  %r5589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5589 = load i64, ptr %r5589.p, align 8, !alias.scope !3, !noalias !4
  %c5590 = trunc i64 %r5589 to i32
  %cx5591 = cmpxchg ptr %atp5581, i32 %c5588, i32 %c5590 seq_cst seq_cst, align 4
  %cxok5592 = extractvalue { i32, i1 } %cx5591, 1
  %t5593 = and i1 %cmp5587, %cxok5592
  %sel5594 = select i1 %t5593, i32 0, i32 1
  %c5595 = zext i32 %sel5594 to i64
  %wp5596 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5595, ptr %wp5596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f68 word 0x34ff992a
  %r5597.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5597 = load i64, ptr %r5597.p, align 8, !alias.scope !3, !noalias !4
  %c5598 = trunc i64 %r5597 to i32
  %cmp5599 = icmp eq i32 %c5598, 0
  br i1 %cmp5599, label %L_8002d928c, label %L_8002d9f6c_ft
L_8002d9f70:
  ; @pc 0x8002d9f70 word 0x2a1f03f3
  %t5600 = or i32 0, 0
  %c5601 = zext i32 %t5600 to i64
  %wp5602 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5601, ptr %wp5602, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f74
L_8002d9f74:
  ; @pc 0x8002d9f74 word 0x885f7d68
  %r5603.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5603 = load i64, ptr %r5603.p, align 8, !alias.scope !3, !noalias !4
  %atp5604 = inttoptr i64 %r5603 to ptr
  %ldx5605 = load atomic i32, ptr %atp5604 acquire, align 4, !alias.scope !4, !noalias !3
  %c5606 = zext i32 %ldx5605 to i64
  %fp5607 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5603, ptr %fp5607, align 8, !alias.scope !3, !noalias !4
  %fp5608 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5606, ptr %fp5608, align 8, !alias.scope !3, !noalias !4
  %wp5609 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5606, ptr %wp5609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f78 word 0xb27f0108
  %r5610.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5610 = load i64, ptr %r5610.p, align 8, !alias.scope !3, !noalias !4
  %t5611 = or i64 %r5610, 2
  %wp5612 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5611, ptr %wp5612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f7c word 0x88097d68
  %r5613.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5613 = load i64, ptr %r5613.p, align 8, !alias.scope !3, !noalias !4
  %atp5614 = inttoptr i64 %r5613 to ptr
  %fp5615 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5616 = load i64, ptr %fp5615, align 8, !alias.scope !3, !noalias !4
  %fp5617 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5618 = load i64, ptr %fp5617, align 8, !alias.scope !3, !noalias !4
  %fp5619 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5619, align 8, !alias.scope !3, !noalias !4
  %cmp5620 = icmp eq i64 %fv5616, %r5613
  %c5621 = trunc i64 %fv5618 to i32
  %r5622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5622 = load i64, ptr %r5622.p, align 8, !alias.scope !3, !noalias !4
  %c5623 = trunc i64 %r5622 to i32
  %cx5624 = cmpxchg ptr %atp5614, i32 %c5621, i32 %c5623 seq_cst seq_cst, align 4
  %cxok5625 = extractvalue { i32, i1 } %cx5624, 1
  %t5626 = and i1 %cmp5620, %cxok5625
  %sel5627 = select i1 %t5626, i32 0, i32 1
  %c5628 = zext i32 %sel5627 to i64
  %wp5629 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5628, ptr %wp5629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f80 word 0x34ff9ce9
  %r5630.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5630 = load i64, ptr %r5630.p, align 8, !alias.scope !3, !noalias !4
  %c5631 = trunc i64 %r5630 to i32
  %cmp5632 = icmp eq i32 %c5631, 0
  br i1 %cmp5632, label %L_8002d931c, label %L_8002d9f84_ft
L_8002d9f88:
  ; @pc 0x8002d9f88 word 0x2a1f03f3
  %t5633 = or i32 0, 0
  %c5634 = zext i32 %t5633 to i64
  %wp5635 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5634, ptr %wp5635, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9f8c
L_8002d9f8c:
  ; @pc 0x8002d9f8c word 0x885f7d68
  %r5636.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5636 = load i64, ptr %r5636.p, align 8, !alias.scope !3, !noalias !4
  %atp5637 = inttoptr i64 %r5636 to ptr
  %ldx5638 = load atomic i32, ptr %atp5637 acquire, align 4, !alias.scope !4, !noalias !3
  %c5639 = zext i32 %ldx5638 to i64
  %fp5640 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5636, ptr %fp5640, align 8, !alias.scope !3, !noalias !4
  %fp5641 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5639, ptr %fp5641, align 8, !alias.scope !3, !noalias !4
  %wp5642 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5639, ptr %wp5642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f90 word 0xb27f0108
  %r5643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5643 = load i64, ptr %r5643.p, align 8, !alias.scope !3, !noalias !4
  %t5644 = or i64 %r5643, 2
  %wp5645 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5644, ptr %wp5645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f94 word 0x88097d68
  %r5646.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5646 = load i64, ptr %r5646.p, align 8, !alias.scope !3, !noalias !4
  %atp5647 = inttoptr i64 %r5646 to ptr
  %fp5648 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5649 = load i64, ptr %fp5648, align 8, !alias.scope !3, !noalias !4
  %fp5650 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5651 = load i64, ptr %fp5650, align 8, !alias.scope !3, !noalias !4
  %fp5652 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5652, align 8, !alias.scope !3, !noalias !4
  %cmp5653 = icmp eq i64 %fv5649, %r5646
  %c5654 = trunc i64 %fv5651 to i32
  %r5655.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5655 = load i64, ptr %r5655.p, align 8, !alias.scope !3, !noalias !4
  %c5656 = trunc i64 %r5655 to i32
  %cx5657 = cmpxchg ptr %atp5647, i32 %c5654, i32 %c5656 seq_cst seq_cst, align 4
  %cxok5658 = extractvalue { i32, i1 } %cx5657, 1
  %t5659 = and i1 %cmp5653, %cxok5658
  %sel5660 = select i1 %t5659, i32 0, i32 1
  %c5661 = zext i32 %sel5660 to i64
  %wp5662 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5661, ptr %wp5662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9f98 word 0x34ff99e9
  %r5663.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5663 = load i64, ptr %r5663.p, align 8, !alias.scope !3, !noalias !4
  %c5664 = trunc i64 %r5663 to i32
  %cmp5665 = icmp eq i32 %c5664, 0
  br i1 %cmp5665, label %L_8002d92d4, label %L_8002d9f9c_ft
L_8002d9fa0:
  ; @pc 0x8002d9fa0 word 0x2a1f03e9
  %t5666 = or i32 0, 0
  %c5667 = zext i32 %t5666 to i64
  %wp5668 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5667, ptr %wp5668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fa4 word 0x17fffdb1
  br label %L_8002d9668
L_8002d9fa8:
  ; @pc 0x8002d9fa8 word 0x885f7d68
  %r5669.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5669 = load i64, ptr %r5669.p, align 8, !alias.scope !3, !noalias !4
  %atp5670 = inttoptr i64 %r5669 to ptr
  %ldx5671 = load atomic i32, ptr %atp5670 acquire, align 4, !alias.scope !4, !noalias !3
  %c5672 = zext i32 %ldx5671 to i64
  %fp5673 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5669, ptr %fp5673, align 8, !alias.scope !3, !noalias !4
  %fp5674 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5672, ptr %fp5674, align 8, !alias.scope !3, !noalias !4
  %wp5675 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5672, ptr %wp5675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fac word 0xb27f0108
  %r5676.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5676 = load i64, ptr %r5676.p, align 8, !alias.scope !3, !noalias !4
  %t5677 = or i64 %r5676, 2
  %wp5678 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5677, ptr %wp5678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fb0 word 0x88097d68
  %r5679.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5679 = load i64, ptr %r5679.p, align 8, !alias.scope !3, !noalias !4
  %atp5680 = inttoptr i64 %r5679 to ptr
  %fp5681 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5682 = load i64, ptr %fp5681, align 8, !alias.scope !3, !noalias !4
  %fp5683 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5684 = load i64, ptr %fp5683, align 8, !alias.scope !3, !noalias !4
  %fp5685 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5685, align 8, !alias.scope !3, !noalias !4
  %cmp5686 = icmp eq i64 %fv5682, %r5679
  %c5687 = trunc i64 %fv5684 to i32
  %r5688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5688 = load i64, ptr %r5688.p, align 8, !alias.scope !3, !noalias !4
  %c5689 = trunc i64 %r5688 to i32
  %cx5690 = cmpxchg ptr %atp5680, i32 %c5687, i32 %c5689 seq_cst seq_cst, align 4
  %cxok5691 = extractvalue { i32, i1 } %cx5690, 1
  %t5692 = and i1 %cmp5686, %cxok5691
  %sel5693 = select i1 %t5692, i32 0, i32 1
  %c5694 = zext i32 %sel5693 to i64
  %wp5695 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5694, ptr %wp5695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fb4 word 0x35ffffa9
  %r5696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5696 = load i64, ptr %r5696.p, align 8, !alias.scope !3, !noalias !4
  %c5697 = trunc i64 %r5696 to i32
  %cmp5698 = icmp ne i32 %c5697, 0
  br i1 %cmp5698, label %L_8002d9fa8, label %L_8002d9fb8_ft
L_8002d9fc0:
  ; @pc 0x8002d9fc0 word 0x885f7d68
  %r5704.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5704 = load i64, ptr %r5704.p, align 8, !alias.scope !3, !noalias !4
  %atp5705 = inttoptr i64 %r5704 to ptr
  %ldx5706 = load atomic i32, ptr %atp5705 acquire, align 4, !alias.scope !4, !noalias !3
  %c5707 = zext i32 %ldx5706 to i64
  %fp5708 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5704, ptr %fp5708, align 8, !alias.scope !3, !noalias !4
  %fp5709 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5707, ptr %fp5709, align 8, !alias.scope !3, !noalias !4
  %wp5710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5707, ptr %wp5710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fc4 word 0xb27f0108
  %r5711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5711 = load i64, ptr %r5711.p, align 8, !alias.scope !3, !noalias !4
  %t5712 = or i64 %r5711, 2
  %wp5713 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5712, ptr %wp5713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fc8 word 0x88097d68
  %r5714.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5714 = load i64, ptr %r5714.p, align 8, !alias.scope !3, !noalias !4
  %atp5715 = inttoptr i64 %r5714 to ptr
  %fp5716 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5717 = load i64, ptr %fp5716, align 8, !alias.scope !3, !noalias !4
  %fp5718 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5719 = load i64, ptr %fp5718, align 8, !alias.scope !3, !noalias !4
  %fp5720 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5720, align 8, !alias.scope !3, !noalias !4
  %cmp5721 = icmp eq i64 %fv5717, %r5714
  %c5722 = trunc i64 %fv5719 to i32
  %r5723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5723 = load i64, ptr %r5723.p, align 8, !alias.scope !3, !noalias !4
  %c5724 = trunc i64 %r5723 to i32
  %cx5725 = cmpxchg ptr %atp5715, i32 %c5722, i32 %c5724 seq_cst seq_cst, align 4
  %cxok5726 = extractvalue { i32, i1 } %cx5725, 1
  %t5727 = and i1 %cmp5721, %cxok5726
  %sel5728 = select i1 %t5727, i32 0, i32 1
  %c5729 = zext i32 %sel5728 to i64
  %wp5730 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5729, ptr %wp5730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fcc word 0x34ffafe9
  %r5731.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5731 = load i64, ptr %r5731.p, align 8, !alias.scope !3, !noalias !4
  %c5732 = trunc i64 %r5731 to i32
  %cmp5733 = icmp eq i32 %c5732, 0
  br i1 %cmp5733, label %L_8002d95c8, label %L_8002d9fd0_ft
L_8002d9fd4:
  ; @pc 0x8002d9fd4 word 0x885f7e7f
  %r5734.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5734 = load i64, ptr %r5734.p, align 8, !alias.scope !3, !noalias !4
  %atp5735 = inttoptr i64 %r5734 to ptr
  %ldx5736 = load atomic i32, ptr %atp5735 acquire, align 4, !alias.scope !4, !noalias !3
  %c5737 = zext i32 %ldx5736 to i64
  %fp5738 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5734, ptr %fp5738, align 8, !alias.scope !3, !noalias !4
  %fp5739 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5737, ptr %fp5739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fd8 word 0x88087e7f
  %r5740.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5740 = load i64, ptr %r5740.p, align 8, !alias.scope !3, !noalias !4
  %atp5741 = inttoptr i64 %r5740 to ptr
  %fp5742 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5743 = load i64, ptr %fp5742, align 8, !alias.scope !3, !noalias !4
  %fp5744 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5745 = load i64, ptr %fp5744, align 8, !alias.scope !3, !noalias !4
  %fp5746 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5746, align 8, !alias.scope !3, !noalias !4
  %cmp5747 = icmp eq i64 %fv5743, %r5740
  %c5748 = trunc i64 %fv5745 to i32
  %cx5749 = cmpxchg ptr %atp5741, i32 %c5748, i32 0 seq_cst seq_cst, align 4
  %cxok5750 = extractvalue { i32, i1 } %cx5749, 1
  %t5751 = and i1 %cmp5747, %cxok5750
  %sel5752 = select i1 %t5751, i32 0, i32 1
  %c5753 = zext i32 %sel5752 to i64
  %wp5754 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5753, ptr %wp5754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fdc word 0x35ffffc8
  %r5755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5755 = load i64, ptr %r5755.p, align 8, !alias.scope !3, !noalias !4
  %c5756 = trunc i64 %r5755 to i32
  %cmp5757 = icmp ne i32 %c5756, 0
  br i1 %cmp5757, label %L_8002d9fd4, label %L_8002d9fe0_ft
L_8002d9fe4:
  ; @pc 0x8002d9fe4 word 0xf94003e0
  %r5758.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5758 = load i64, ptr %r5758.p, align 8, !alias.scope !3, !noalias !4
  %gmp5759 = inttoptr i64 %r5758 to ptr
  %gml5760 = load i64, ptr %gmp5759, align 1, !alias.scope !4, !noalias !3
  %wp5761 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5760, ptr %wp5761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fe8 word 0x97fd0531
  %wp5762 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728428, ptr %wp5762, align 8, !alias.scope !3, !noalias !4
  call void @f_80021b4ac(ptr %c)
  br label %L_8002d9fec
L_8002d9fec:
  ; @pc 0x8002d9fec word 0xb9400268
  %r5763.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5763 = load i64, ptr %r5763.p, align 8, !alias.scope !3, !noalias !4
  %gmp5764 = inttoptr i64 %r5763 to ptr
  %gml5765 = load i32, ptr %gmp5764, align 1, !alias.scope !4, !noalias !3
  %c5766 = zext i32 %gml5765 to i64
  %wp5767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5766, ptr %wp5767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ff0 word 0x37ffffa8
  %r5768.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5768 = load i64, ptr %r5768.p, align 8, !alias.scope !3, !noalias !4
  %t5769 = and i64 %r5768, 2147483648
  %cmp5770 = icmp ne i64 %t5769, 0
  br i1 %cmp5770, label %L_8002d9fe4, label %L_8002d9ff4_ft
L_8002d9ff8:
  ; @pc 0x8002d9ff8 word 0x885ffe7f
  %r5776.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5776 = load i64, ptr %r5776.p, align 8, !alias.scope !3, !noalias !4
  %atp5777 = inttoptr i64 %r5776 to ptr
  %ldx5778 = load atomic i32, ptr %atp5777 acquire, align 4, !alias.scope !4, !noalias !3
  %c5779 = zext i32 %ldx5778 to i64
  %fp5780 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5776, ptr %fp5780, align 8, !alias.scope !3, !noalias !4
  %fp5781 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5779, ptr %fp5781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ffc word 0x88087e7f
  %r5782.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5782 = load i64, ptr %r5782.p, align 8, !alias.scope !3, !noalias !4
  %atp5783 = inttoptr i64 %r5782 to ptr
  %fp5784 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5785 = load i64, ptr %fp5784, align 8, !alias.scope !3, !noalias !4
  %fp5786 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5787 = load i64, ptr %fp5786, align 8, !alias.scope !3, !noalias !4
  %fp5788 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5788, align 8, !alias.scope !3, !noalias !4
  %cmp5789 = icmp eq i64 %fv5785, %r5782
  %c5790 = trunc i64 %fv5787 to i32
  %cx5791 = cmpxchg ptr %atp5783, i32 %c5790, i32 0 seq_cst seq_cst, align 4
  %cxok5792 = extractvalue { i32, i1 } %cx5791, 1
  %t5793 = and i1 %cmp5789, %cxok5792
  %sel5794 = select i1 %t5793, i32 0, i32 1
  %c5795 = zext i32 %sel5794 to i64
  %wp5796 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5795, ptr %wp5796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da000 word 0x35ffffc8
  %r5797.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5797 = load i64, ptr %r5797.p, align 8, !alias.scope !3, !noalias !4
  %c5798 = trunc i64 %r5797 to i32
  %cmp5799 = icmp ne i32 %c5798, 0
  br i1 %cmp5799, label %L_8002d9ff8, label %L_8002da004_ft
L_8002da008:
  ; @pc 0x8002da008 word 0xaa0d03f3
  %r5800.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5800 = load i64, ptr %r5800.p, align 8, !alias.scope !3, !noalias !4
  %t5801 = or i64 0, %r5800
  %wp5802 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t5801, ptr %wp5802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da00c word 0xaa1a03f4
  %r5803.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5803 = load i64, ptr %r5803.p, align 8, !alias.scope !3, !noalias !4
  %t5804 = or i64 0, %r5803
  %wp5805 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5804, ptr %wp5805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da010 word 0xaa0c03fa
  %r5806.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5806 = load i64, ptr %r5806.p, align 8, !alias.scope !3, !noalias !4
  %t5807 = or i64 0, %r5806
  %wp5808 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5807, ptr %wp5808, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da014
L_8002da014:
  ; @pc 0x8002da014 word 0xb94002c8
  %r5809.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5809 = load i64, ptr %r5809.p, align 8, !alias.scope !3, !noalias !4
  %gmp5810 = inttoptr i64 %r5809 to ptr
  %gml5811 = load i32, ptr %gmp5810, align 1, !alias.scope !4, !noalias !3
  %c5812 = zext i32 %gml5811 to i64
  %wp5813 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5812, ptr %wp5813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da018 word 0x36f80108
  %r5814.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5814 = load i64, ptr %r5814.p, align 8, !alias.scope !3, !noalias !4
  %t5815 = and i64 %r5814, 2147483648
  %cmp5816 = icmp eq i64 %t5815, 0
  br i1 %cmp5816, label %L_8002da038, label %L_8002da01c_ft
L_8002da028:
  ; @pc 0x8002da028 word 0xaa1703e0
  %r5822.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5822 = load i64, ptr %r5822.p, align 8, !alias.scope !3, !noalias !4
  %t5823 = or i64 0, %r5822
  %wp5824 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5823, ptr %wp5824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da02c word 0xaa0c03fa
  %r5825.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5825 = load i64, ptr %r5825.p, align 8, !alias.scope !3, !noalias !4
  %t5826 = or i64 0, %r5825
  %wp5827 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5826, ptr %wp5827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da030 word 0xd63f0100
  %r5828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5828 = load i64, ptr %r5828.p, align 8, !alias.scope !3, !noalias !4
  %fp5829 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5828, ptr %fp5829, align 8, !alias.scope !3, !noalias !4
  %wp5830 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728500, ptr %wp5830, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da034 word 0x17fffc40
  br label %L_8002d9134
L_8002da038:
  ; @pc 0x8002da038 word 0xaa1a03ec
  %r5831.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5831 = load i64, ptr %r5831.p, align 8, !alias.scope !3, !noalias !4
  %t5832 = or i64 0, %r5831
  %wp5833 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5832, ptr %wp5833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da03c word 0xaa1403fa
  %r5834.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5834 = load i64, ptr %r5834.p, align 8, !alias.scope !3, !noalias !4
  %t5835 = or i64 0, %r5834
  %wp5836 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5835, ptr %wp5836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da040 word 0xaa1803f4
  %r5837.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5837 = load i64, ptr %r5837.p, align 8, !alias.scope !3, !noalias !4
  %t5838 = or i64 0, %r5837
  %wp5839 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5838, ptr %wp5839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da044 word 0xaa1303ed
  %r5840.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5840 = load i64, ptr %r5840.p, align 8, !alias.scope !3, !noalias !4
  %t5841 = or i64 0, %r5840
  %wp5842 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t5841, ptr %wp5842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da048 word 0xd10123ae
  %r5843.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5843 = load i64, ptr %r5843.p, align 8, !alias.scope !3, !noalias !4
  %t5844 = sub i64 %r5843, 72
  %wp5845 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5844, ptr %wp5845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da04c word 0x910043ef
  %r5846.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5846 = load i64, ptr %r5846.p, align 8, !alias.scope !3, !noalias !4
  %t5847 = add i64 %r5846, 16
  %wp5848 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t5847, ptr %wp5848, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da050
L_8002da050:
  ; @pc 0x8002da050 word 0x885ffedf
  %r5849.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5849 = load i64, ptr %r5849.p, align 8, !alias.scope !3, !noalias !4
  %atp5850 = inttoptr i64 %r5849 to ptr
  %ldx5851 = load atomic i32, ptr %atp5850 acquire, align 4, !alias.scope !4, !noalias !3
  %c5852 = zext i32 %ldx5851 to i64
  %fp5853 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5849, ptr %fp5853, align 8, !alias.scope !3, !noalias !4
  %fp5854 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5852, ptr %fp5854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da054 word 0x88087edf
  %r5855.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5855 = load i64, ptr %r5855.p, align 8, !alias.scope !3, !noalias !4
  %atp5856 = inttoptr i64 %r5855 to ptr
  %fp5857 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5858 = load i64, ptr %fp5857, align 8, !alias.scope !3, !noalias !4
  %fp5859 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5860 = load i64, ptr %fp5859, align 8, !alias.scope !3, !noalias !4
  %fp5861 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5861, align 8, !alias.scope !3, !noalias !4
  %cmp5862 = icmp eq i64 %fv5858, %r5855
  %c5863 = trunc i64 %fv5860 to i32
  %cx5864 = cmpxchg ptr %atp5856, i32 %c5863, i32 0 seq_cst seq_cst, align 4
  %cxok5865 = extractvalue { i32, i1 } %cx5864, 1
  %t5866 = and i1 %cmp5862, %cxok5865
  %sel5867 = select i1 %t5866, i32 0, i32 1
  %c5868 = zext i32 %sel5867 to i64
  %wp5869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5868, ptr %wp5869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da058 word 0x35ffffc8
  %r5870.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5870 = load i64, ptr %r5870.p, align 8, !alias.scope !3, !noalias !4
  %c5871 = trunc i64 %r5870 to i32
  %cmp5872 = icmp ne i32 %c5871, 0
  br i1 %cmp5872, label %L_8002da050, label %L_8002da05c_ft
L_8002da060:
  ; @pc 0x8002da060 word 0x12800048
  %c5873 = zext i32 -3 to i64
  %wp5874 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5873, ptr %wp5874, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da064
L_8002da064:
  ; @pc 0x8002da064 word 0x885f7d69
  %r5875.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5875 = load i64, ptr %r5875.p, align 8, !alias.scope !3, !noalias !4
  %atp5876 = inttoptr i64 %r5875 to ptr
  %ldx5877 = load atomic i32, ptr %atp5876 acquire, align 4, !alias.scope !4, !noalias !3
  %c5878 = zext i32 %ldx5877 to i64
  %fp5879 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r5875, ptr %fp5879, align 8, !alias.scope !3, !noalias !4
  %fp5880 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c5878, ptr %fp5880, align 8, !alias.scope !3, !noalias !4
  %wp5881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5878, ptr %wp5881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da068 word 0x8a080129
  %r5882.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5882 = load i64, ptr %r5882.p, align 8, !alias.scope !3, !noalias !4
  %r5883.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5883 = load i64, ptr %r5883.p, align 8, !alias.scope !3, !noalias !4
  %t5884 = and i64 %r5883, %r5882
  %wp5885 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5884, ptr %wp5885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da06c word 0xb27f0129
  %r5886.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5886 = load i64, ptr %r5886.p, align 8, !alias.scope !3, !noalias !4
  %t5887 = or i64 %r5886, 2
  %wp5888 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5887, ptr %wp5888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da070 word 0x880a7d69
  %r5889.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5889 = load i64, ptr %r5889.p, align 8, !alias.scope !3, !noalias !4
  %atp5890 = inttoptr i64 %r5889 to ptr
  %fp5891 = getelementptr inbounds i8, ptr %c, i64 296
  %fv5892 = load i64, ptr %fp5891, align 8, !alias.scope !3, !noalias !4
  %fp5893 = getelementptr inbounds i8, ptr %c, i64 304
  %fv5894 = load i64, ptr %fp5893, align 8, !alias.scope !3, !noalias !4
  %fp5895 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp5895, align 8, !alias.scope !3, !noalias !4
  %cmp5896 = icmp eq i64 %fv5892, %r5889
  %c5897 = trunc i64 %fv5894 to i32
  %r5898.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5898 = load i64, ptr %r5898.p, align 8, !alias.scope !3, !noalias !4
  %c5899 = trunc i64 %r5898 to i32
  %cx5900 = cmpxchg ptr %atp5890, i32 %c5897, i32 %c5899 seq_cst seq_cst, align 4
  %cxok5901 = extractvalue { i32, i1 } %cx5900, 1
  %t5902 = and i1 %cmp5896, %cxok5901
  %sel5903 = select i1 %t5902, i32 0, i32 1
  %c5904 = zext i32 %sel5903 to i64
  %wp5905 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5904, ptr %wp5905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da074 word 0x35ffff8a
  %r5906.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5906 = load i64, ptr %r5906.p, align 8, !alias.scope !3, !noalias !4
  %c5907 = trunc i64 %r5906 to i32
  %cmp5908 = icmp ne i32 %c5907, 0
  br i1 %cmp5908, label %L_8002da064, label %L_8002da078_ft
L_8002da0a4:
  ; @pc 0x8002da0a4 word 0xaa1f03ee
  %t5974 = or i64 0, 0
  %wp5975 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5974, ptr %wp5975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0a8 word 0x17fffd6a
  br label %L_8002d9650
L_8002da0ac:
  ; @pc 0x8002da0ac word 0xaa1503e0
  %r5976.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5976 = load i64, ptr %r5976.p, align 8, !alias.scope !3, !noalias !4
  %t5977 = or i64 0, %r5976
  %wp5978 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5977, ptr %wp5978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0b0 word 0xaa1603e1
  %r5979.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5979 = load i64, ptr %r5979.p, align 8, !alias.scope !3, !noalias !4
  %t5980 = or i64 0, %r5979
  %wp5981 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5980, ptr %wp5981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0b4 word 0xaa1703e2
  %r5982.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5982 = load i64, ptr %r5982.p, align 8, !alias.scope !3, !noalias !4
  %t5983 = or i64 0, %r5982
  %wp5984 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5983, ptr %wp5984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0b8 word 0x9493d4b7
  %wp5985 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728636, ptr %wp5985, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da0bc word 0x17fffd7c
  br label %L_8002d96ac
L_8002da0c0:
  ; @pc 0x8002da0c0 word 0x52800039
  %c5986 = zext i32 1 to i64
  %wp5987 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c5986, ptr %wp5987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0c4 word 0x17fffde8
  br label %L_8002d9864
L_8002da0c8:
  ; @pc 0x8002da0c8 word 0x71000d1f
  %r5988.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5988 = load i64, ptr %r5988.p, align 8, !alias.scope !3, !noalias !4
  %c5989 = trunc i64 %r5988 to i32
  %t5990 = sub i32 %c5989, 3
  %fn5991 = icmp slt i32 %t5990, 0
  %fz5992 = icmp eq i32 %t5990, 0
  %fc5993 = icmp uge i32 %c5989, 3
  %fx15994 = xor i32 %c5989, 3
  %fx25995 = xor i32 %c5989, %t5990
  %fva5996 = and i32 %fx15994, %fx25995
  %fv5997 = icmp slt i32 %fva5996, 0
  %nz5998 = zext i1 %fn5991 to i64
  %zz5999 = zext i1 %fz5992 to i64
  %cz6000 = zext i1 %fc5993 to i64
  %vz6001 = zext i1 %fv5997 to i64
  %ns6002 = shl i64 %nz5998, 31
  %zs6003 = shl i64 %zz5999, 30
  %cs6004 = shl i64 %cz6000, 29
  %vs6005 = shl i64 %vz6001, 28
  %nzor6006 = or i64 %ns6002, %zs6003
  %cvor6007 = or i64 %cs6004, %vs6005
  %nzcv6008 = or i64 %nzor6006, %cvor6007
  %wp6009 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6008, ptr %wp6009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0cc word 0x54000281
  %r6010.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6010 = load i64, ptr %r6010.p, align 8, !alias.scope !3, !noalias !4
  %fsh6012 = lshr i64 %r6010, 30
  %ftr6013 = trunc i64 %fsh6012 to i1
  %cond6011 = xor i1 %ftr6013, true
  br i1 %cond6011, label %L_8002da11c, label %L_8002da0d0_ft
L_8002da0d8:
  ; @pc 0x8002da0d8 word 0xf9400108
  %r6020.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6020 = load i64, ptr %r6020.p, align 8, !alias.scope !3, !noalias !4
  %gmp6021 = inttoptr i64 %r6020 to ptr
  %gml6022 = load i64, ptr %gmp6021, align 1, !alias.scope !4, !noalias !3
  %wp6023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6022, ptr %wp6023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0dc word 0xaa1603e0
  %r6024.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6024 = load i64, ptr %r6024.p, align 8, !alias.scope !3, !noalias !4
  %t6025 = or i64 0, %r6024
  %wp6026 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6025, ptr %wp6026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0e0 word 0x2a1f03e1
  %t6027 = or i32 0, 0
  %c6028 = zext i32 %t6027 to i64
  %wp6029 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6028, ptr %wp6029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0e4 word 0xaa1703e2
  %r6030.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6030 = load i64, ptr %r6030.p, align 8, !alias.scope !3, !noalias !4
  %t6031 = or i64 0, %r6030
  %wp6032 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6031, ptr %wp6032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0e8 word 0xd63f0100
  %r6033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6033 = load i64, ptr %r6033.p, align 8, !alias.scope !3, !noalias !4
  %fp6034 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6033, ptr %fp6034, align 8, !alias.scope !3, !noalias !4
  %wp6035 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728684, ptr %wp6035, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da0ec word 0xf94007f8
  %r6036.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6036 = load i64, ptr %r6036.p, align 8, !alias.scope !3, !noalias !4
  %t6037 = add i64 %r6036, 8
  %gmp6038 = inttoptr i64 %t6037 to ptr
  %gml6039 = load i64, ptr %gmp6038, align 1, !alias.scope !4, !noalias !3
  %wp6040 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6039, ptr %wp6040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0f0 word 0x17fffd85
  br label %L_8002d9704
L_8002da0f4:
  ; @pc 0x8002da0f4 word 0xb001b3e8
  %wp6041 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp6041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0f8 word 0xaa1603e0
  %r6042.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6042 = load i64, ptr %r6042.p, align 8, !alias.scope !3, !noalias !4
  %t6043 = or i64 0, %r6042
  %wp6044 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6043, ptr %wp6044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0fc word 0xf940b108
  %r6045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6045 = load i64, ptr %r6045.p, align 8, !alias.scope !3, !noalias !4
  %t6046 = add i64 %r6045, 352
  %gmp6047 = inttoptr i64 %t6046 to ptr
  %gml6048 = load i64, ptr %gmp6047, align 1, !alias.scope !4, !noalias !3
  %wp6049 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6048, ptr %wp6049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da100 word 0x52800021
  %c6050 = zext i32 1 to i64
  %wp6051 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6050, ptr %wp6051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da104 word 0x52800039
  %c6052 = zext i32 1 to i64
  %wp6053 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c6052, ptr %wp6053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da108 word 0xf9400108
  %r6054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6054 = load i64, ptr %r6054.p, align 8, !alias.scope !3, !noalias !4
  %gmp6055 = inttoptr i64 %r6054 to ptr
  %gml6056 = load i64, ptr %gmp6055, align 1, !alias.scope !4, !noalias !3
  %wp6057 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6056, ptr %wp6057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da10c word 0xd63f0100
  %r6058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6058 = load i64, ptr %r6058.p, align 8, !alias.scope !3, !noalias !4
  %fp6059 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6058, ptr %fp6059, align 8, !alias.scope !3, !noalias !4
  %wp6060 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728720, ptr %wp6060, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da110 word 0x17fffdd5
  br label %L_8002d9864
L_8002da114:
  ; @pc 0x8002da114 word 0x2a1f03ee
  %t6061 = or i32 0, 0
  %c6062 = zext i32 %t6061 to i64
  %wp6063 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c6062, ptr %wp6063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da118 word 0x17fffca0
  br label %L_8002d9398
L_8002da11c:
  ; @pc 0x8002da11c word 0x7100091f
  %r6064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6064 = load i64, ptr %r6064.p, align 8, !alias.scope !3, !noalias !4
  %c6065 = trunc i64 %r6064 to i32
  %t6066 = sub i32 %c6065, 2
  %fn6067 = icmp slt i32 %t6066, 0
  %fz6068 = icmp eq i32 %t6066, 0
  %fc6069 = icmp uge i32 %c6065, 2
  %fx16070 = xor i32 %c6065, 2
  %fx26071 = xor i32 %c6065, %t6066
  %fva6072 = and i32 %fx16070, %fx26071
  %fv6073 = icmp slt i32 %fva6072, 0
  %nz6074 = zext i1 %fn6067 to i64
  %zz6075 = zext i1 %fz6068 to i64
  %cz6076 = zext i1 %fc6069 to i64
  %vz6077 = zext i1 %fv6073 to i64
  %ns6078 = shl i64 %nz6074, 31
  %zs6079 = shl i64 %zz6075, 30
  %cs6080 = shl i64 %cz6076, 29
  %vs6081 = shl i64 %vz6077, 28
  %nzor6082 = or i64 %ns6078, %zs6079
  %cvor6083 = or i64 %cs6080, %vs6081
  %nzcv6084 = or i64 %nzor6082, %cvor6083
  %wp6085 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6084, ptr %wp6085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da120 word 0x540000e1
  %r6086.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6086 = load i64, ptr %r6086.p, align 8, !alias.scope !3, !noalias !4
  %fsh6088 = lshr i64 %r6086, 30
  %ftr6089 = trunc i64 %fsh6088 to i1
  %cond6087 = xor i1 %ftr6089, true
  br i1 %cond6087, label %L_8002da13c, label %L_8002da124_ft
L_8002da130:
  ; @pc 0x8002da130 word 0xaa1703e0
  %r6096.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6096 = load i64, ptr %r6096.p, align 8, !alias.scope !3, !noalias !4
  %t6097 = or i64 0, %r6096
  %wp6098 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6097, ptr %wp6098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da134 word 0xd63f0100
  %r6099.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6099 = load i64, ptr %r6099.p, align 8, !alias.scope !3, !noalias !4
  %fp6100 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6099, ptr %fp6100, align 8, !alias.scope !3, !noalias !4
  %wp6101 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728760, ptr %wp6101, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da138 word 0x17fffd12
  br label %L_8002d9580
L_8002da13c:
  ; @pc 0x8002da13c word 0xf94007f8
  %r6102.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6102 = load i64, ptr %r6102.p, align 8, !alias.scope !3, !noalias !4
  %t6103 = add i64 %r6102, 8
  %gmp6104 = inttoptr i64 %t6103 to ptr
  %gml6105 = load i64, ptr %gmp6104, align 1, !alias.scope !4, !noalias !3
  %wp6106 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6105, ptr %wp6106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da140 word 0x7100051f
  %r6107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6107 = load i64, ptr %r6107.p, align 8, !alias.scope !3, !noalias !4
  %c6108 = trunc i64 %r6107 to i32
  %t6109 = sub i32 %c6108, 1
  %fn6110 = icmp slt i32 %t6109, 0
  %fz6111 = icmp eq i32 %t6109, 0
  %fc6112 = icmp uge i32 %c6108, 1
  %fx16113 = xor i32 %c6108, 1
  %fx26114 = xor i32 %c6108, %t6109
  %fva6115 = and i32 %fx16113, %fx26114
  %fv6116 = icmp slt i32 %fva6115, 0
  %nz6117 = zext i1 %fn6110 to i64
  %zz6118 = zext i1 %fz6111 to i64
  %cz6119 = zext i1 %fc6112 to i64
  %vz6120 = zext i1 %fv6116 to i64
  %ns6121 = shl i64 %nz6117, 31
  %zs6122 = shl i64 %zz6118, 30
  %cs6123 = shl i64 %cz6119, 29
  %vs6124 = shl i64 %vz6120, 28
  %nzor6125 = or i64 %ns6121, %zs6122
  %cvor6126 = or i64 %cs6123, %vs6124
  %nzcv6127 = or i64 %nzor6125, %cvor6126
  %wp6128 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6127, ptr %wp6128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da144 word 0x54ffae01
  %r6129.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6129 = load i64, ptr %r6129.p, align 8, !alias.scope !3, !noalias !4
  %fsh6131 = lshr i64 %r6129, 30
  %ftr6132 = trunc i64 %fsh6131 to i1
  %cond6130 = xor i1 %ftr6132, true
  br i1 %cond6130, label %L_8002d9704, label %L_8002da148_ft
L_8002da16c:
  ; @pc 0x8002da16c word 0x12800048
  %c6157 = zext i32 -3 to i64
  %wp6158 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6157, ptr %wp6158, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da170
L_8002da170:
  ; @pc 0x8002da170 word 0x885f7d69
  %r6159.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6159 = load i64, ptr %r6159.p, align 8, !alias.scope !3, !noalias !4
  %atp6160 = inttoptr i64 %r6159 to ptr
  %ldx6161 = load atomic i32, ptr %atp6160 acquire, align 4, !alias.scope !4, !noalias !3
  %c6162 = zext i32 %ldx6161 to i64
  %fp6163 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r6159, ptr %fp6163, align 8, !alias.scope !3, !noalias !4
  %fp6164 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c6162, ptr %fp6164, align 8, !alias.scope !3, !noalias !4
  %wp6165 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6162, ptr %wp6165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da174 word 0x8a080129
  %r6166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6166 = load i64, ptr %r6166.p, align 8, !alias.scope !3, !noalias !4
  %r6167.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6167 = load i64, ptr %r6167.p, align 8, !alias.scope !3, !noalias !4
  %t6168 = and i64 %r6167, %r6166
  %wp6169 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6168, ptr %wp6169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da178 word 0xb27f0129
  %r6170.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6170 = load i64, ptr %r6170.p, align 8, !alias.scope !3, !noalias !4
  %t6171 = or i64 %r6170, 2
  %wp6172 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6171, ptr %wp6172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da17c word 0x880a7d69
  %r6173.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6173 = load i64, ptr %r6173.p, align 8, !alias.scope !3, !noalias !4
  %atp6174 = inttoptr i64 %r6173 to ptr
  %fp6175 = getelementptr inbounds i8, ptr %c, i64 296
  %fv6176 = load i64, ptr %fp6175, align 8, !alias.scope !3, !noalias !4
  %fp6177 = getelementptr inbounds i8, ptr %c, i64 304
  %fv6178 = load i64, ptr %fp6177, align 8, !alias.scope !3, !noalias !4
  %fp6179 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp6179, align 8, !alias.scope !3, !noalias !4
  %cmp6180 = icmp eq i64 %fv6176, %r6173
  %c6181 = trunc i64 %fv6178 to i32
  %r6182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6182 = load i64, ptr %r6182.p, align 8, !alias.scope !3, !noalias !4
  %c6183 = trunc i64 %r6182 to i32
  %cx6184 = cmpxchg ptr %atp6174, i32 %c6181, i32 %c6183 seq_cst seq_cst, align 4
  %cxok6185 = extractvalue { i32, i1 } %cx6184, 1
  %t6186 = and i1 %cmp6180, %cxok6185
  %sel6187 = select i1 %t6186, i32 0, i32 1
  %c6188 = zext i32 %sel6187 to i64
  %wp6189 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6188, ptr %wp6189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da180 word 0x35ffff8a
  %r6190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6190 = load i64, ptr %r6190.p, align 8, !alias.scope !3, !noalias !4
  %c6191 = trunc i64 %r6190 to i32
  %cmp6192 = icmp ne i32 %c6191, 0
  br i1 %cmp6192, label %L_8002da170, label %L_8002da184_ft
L_8002da1b0:
  ; @pc 0x8002da1b0 word 0xaa1f03ee
  %t6258 = or i64 0, 0
  %wp6259 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6258, ptr %wp6259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1b4 word 0x17fffc8e
  br label %L_8002d93ec
L_8002da1b8:
  ; @pc 0x8002da1b8 word 0xaa1503e0
  %r6260.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6260 = load i64, ptr %r6260.p, align 8, !alias.scope !3, !noalias !4
  %t6261 = or i64 0, %r6260
  %wp6262 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6261, ptr %wp6262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1bc word 0xaa1603e1
  %r6263.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6263 = load i64, ptr %r6263.p, align 8, !alias.scope !3, !noalias !4
  %t6264 = or i64 0, %r6263
  %wp6265 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6264, ptr %wp6265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1c0 word 0xaa1703e2
  %r6266.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6266 = load i64, ptr %r6266.p, align 8, !alias.scope !3, !noalias !4
  %t6267 = or i64 0, %r6266
  %wp6268 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6267, ptr %wp6268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1c4 word 0x9493d474
  %wp6269 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728904, ptr %wp6269, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da1c8 word 0x17fffca0
  br label %L_8002d9448
L_8002da1cc:
  ; @pc 0x8002da1cc word 0x71000d1f
  %r6270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6270 = load i64, ptr %r6270.p, align 8, !alias.scope !3, !noalias !4
  %c6271 = trunc i64 %r6270 to i32
  %t6272 = sub i32 %c6271, 3
  %fn6273 = icmp slt i32 %t6272, 0
  %fz6274 = icmp eq i32 %t6272, 0
  %fc6275 = icmp uge i32 %c6271, 3
  %fx16276 = xor i32 %c6271, 3
  %fx26277 = xor i32 %c6271, %t6272
  %fva6278 = and i32 %fx16276, %fx26277
  %fv6279 = icmp slt i32 %fva6278, 0
  %nz6280 = zext i1 %fn6273 to i64
  %zz6281 = zext i1 %fz6274 to i64
  %cz6282 = zext i1 %fc6275 to i64
  %vz6283 = zext i1 %fv6279 to i64
  %ns6284 = shl i64 %nz6280, 31
  %zs6285 = shl i64 %zz6281, 30
  %cs6286 = shl i64 %cz6282, 29
  %vs6287 = shl i64 %vz6283, 28
  %nzor6288 = or i64 %ns6284, %zs6285
  %cvor6289 = or i64 %cs6286, %vs6287
  %nzcv6290 = or i64 %nzor6288, %cvor6289
  %wp6291 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6290, ptr %wp6291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1d0 word 0x540006a1
  %r6292.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6292 = load i64, ptr %r6292.p, align 8, !alias.scope !3, !noalias !4
  %fsh6294 = lshr i64 %r6292, 30
  %ftr6295 = trunc i64 %fsh6294 to i1
  %cond6293 = xor i1 %ftr6295, true
  br i1 %cond6293, label %L_8002da2a4, label %L_8002da1d4_ft
L_8002da1dc:
  ; @pc 0x8002da1dc word 0xf9400108
  %r6302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6302 = load i64, ptr %r6302.p, align 8, !alias.scope !3, !noalias !4
  %gmp6303 = inttoptr i64 %r6302 to ptr
  %gml6304 = load i64, ptr %gmp6303, align 1, !alias.scope !4, !noalias !3
  %wp6305 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6304, ptr %wp6305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1e0 word 0xaa1603e0
  %r6306.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6306 = load i64, ptr %r6306.p, align 8, !alias.scope !3, !noalias !4
  %t6307 = or i64 0, %r6306
  %wp6308 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6307, ptr %wp6308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1e4 word 0x2a1f03e1
  %t6309 = or i32 0, 0
  %c6310 = zext i32 %t6309 to i64
  %wp6311 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6310, ptr %wp6311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1e8 word 0xaa1703e2
  %r6312.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6312 = load i64, ptr %r6312.p, align 8, !alias.scope !3, !noalias !4
  %t6313 = or i64 0, %r6312
  %wp6314 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6313, ptr %wp6314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1ec word 0xd63f0100
  %r6315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6315 = load i64, ptr %r6315.p, align 8, !alias.scope !3, !noalias !4
  %fp6316 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6315, ptr %fp6316, align 8, !alias.scope !3, !noalias !4
  %wp6317 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728944, ptr %wp6317, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da1f0 word 0xf94007f8
  %r6318.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6318 = load i64, ptr %r6318.p, align 8, !alias.scope !3, !noalias !4
  %t6319 = add i64 %r6318, 8
  %gmp6320 = inttoptr i64 %t6319 to ptr
  %gml6321 = load i64, ptr %gmp6320, align 1, !alias.scope !4, !noalias !3
  %wp6322 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6321, ptr %wp6322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1f4 word 0x17fffcab
  br label %L_8002d94a0
L_8002da1f8:
  ; @pc 0x8002da1f8 word 0xb001b3e8
  %wp6323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp6323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1fc word 0xaa1603e0
  %r6324.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6324 = load i64, ptr %r6324.p, align 8, !alias.scope !3, !noalias !4
  %t6325 = or i64 0, %r6324
  %wp6326 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6325, ptr %wp6326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da200 word 0xf940b108
  %r6327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6327 = load i64, ptr %r6327.p, align 8, !alias.scope !3, !noalias !4
  %t6328 = add i64 %r6327, 352
  %gmp6329 = inttoptr i64 %t6328 to ptr
  %gml6330 = load i64, ptr %gmp6329, align 1, !alias.scope !4, !noalias !3
  %wp6331 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6330, ptr %wp6331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da204 word 0x52800021
  %c6332 = zext i32 1 to i64
  %wp6333 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6332, ptr %wp6333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da208 word 0x52800039
  %c6334 = zext i32 1 to i64
  %wp6335 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c6334, ptr %wp6335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da20c word 0xf9400108
  %r6336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6336 = load i64, ptr %r6336.p, align 8, !alias.scope !3, !noalias !4
  %gmp6337 = inttoptr i64 %r6336 to ptr
  %gml6338 = load i64, ptr %gmp6337, align 1, !alias.scope !4, !noalias !3
  %wp6339 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6338, ptr %wp6339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da210 word 0xd63f0100
  %r6340.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6340 = load i64, ptr %r6340.p, align 8, !alias.scope !3, !noalias !4
  %fp6341 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6340, ptr %fp6341, align 8, !alias.scope !3, !noalias !4
  %wp6342 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728980, ptr %wp6342, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da214 word 0x17fffca6
  br label %L_8002d94ac
L_8002da218:
  ; @pc 0x8002da218 word 0x12800048
  %c6343 = zext i32 -3 to i64
  %wp6344 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6343, ptr %wp6344, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da21c
L_8002da21c:
  ; @pc 0x8002da21c word 0x885f7d69
  %r6345.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6345 = load i64, ptr %r6345.p, align 8, !alias.scope !3, !noalias !4
  %atp6346 = inttoptr i64 %r6345 to ptr
  %ldx6347 = load atomic i32, ptr %atp6346 acquire, align 4, !alias.scope !4, !noalias !3
  %c6348 = zext i32 %ldx6347 to i64
  %fp6349 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r6345, ptr %fp6349, align 8, !alias.scope !3, !noalias !4
  %fp6350 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c6348, ptr %fp6350, align 8, !alias.scope !3, !noalias !4
  %wp6351 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6348, ptr %wp6351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da220 word 0x8a080129
  %r6352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6352 = load i64, ptr %r6352.p, align 8, !alias.scope !3, !noalias !4
  %r6353.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6353 = load i64, ptr %r6353.p, align 8, !alias.scope !3, !noalias !4
  %t6354 = and i64 %r6353, %r6352
  %wp6355 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6354, ptr %wp6355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da224 word 0xb27f0129
  %r6356.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6356 = load i64, ptr %r6356.p, align 8, !alias.scope !3, !noalias !4
  %t6357 = or i64 %r6356, 2
  %wp6358 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6357, ptr %wp6358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da228 word 0x880a7d69
  %r6359.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6359 = load i64, ptr %r6359.p, align 8, !alias.scope !3, !noalias !4
  %atp6360 = inttoptr i64 %r6359 to ptr
  %fp6361 = getelementptr inbounds i8, ptr %c, i64 296
  %fv6362 = load i64, ptr %fp6361, align 8, !alias.scope !3, !noalias !4
  %fp6363 = getelementptr inbounds i8, ptr %c, i64 304
  %fv6364 = load i64, ptr %fp6363, align 8, !alias.scope !3, !noalias !4
  %fp6365 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp6365, align 8, !alias.scope !3, !noalias !4
  %cmp6366 = icmp eq i64 %fv6362, %r6359
  %c6367 = trunc i64 %fv6364 to i32
  %r6368.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6368 = load i64, ptr %r6368.p, align 8, !alias.scope !3, !noalias !4
  %c6369 = trunc i64 %r6368 to i32
  %cx6370 = cmpxchg ptr %atp6360, i32 %c6367, i32 %c6369 seq_cst seq_cst, align 4
  %cxok6371 = extractvalue { i32, i1 } %cx6370, 1
  %t6372 = and i1 %cmp6366, %cxok6371
  %sel6373 = select i1 %t6372, i32 0, i32 1
  %c6374 = zext i32 %sel6373 to i64
  %wp6375 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6374, ptr %wp6375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da22c word 0x35ffff8a
  %r6376.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6376 = load i64, ptr %r6376.p, align 8, !alias.scope !3, !noalias !4
  %c6377 = trunc i64 %r6376 to i32
  %cmp6378 = icmp ne i32 %c6377, 0
  br i1 %cmp6378, label %L_8002da21c, label %L_8002da230_ft
L_8002da25c:
  ; @pc 0x8002da25c word 0xaa1f03ee
  %t6444 = or i64 0, 0
  %wp6445 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6444, ptr %wp6445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da260 word 0x17fffd93
  br label %L_8002d98ac
L_8002da264:
  ; @pc 0x8002da264 word 0xaa1503e0
  %r6446.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6446 = load i64, ptr %r6446.p, align 8, !alias.scope !3, !noalias !4
  %t6447 = or i64 0, %r6446
  %wp6448 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6447, ptr %wp6448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da268 word 0xaa1403e1
  %r6449.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6449 = load i64, ptr %r6449.p, align 8, !alias.scope !3, !noalias !4
  %t6450 = or i64 0, %r6449
  %wp6451 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6450, ptr %wp6451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da26c word 0xaa1603e2
  %r6452.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6452 = load i64, ptr %r6452.p, align 8, !alias.scope !3, !noalias !4
  %t6453 = or i64 0, %r6452
  %wp6454 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6453, ptr %wp6454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da270 word 0x9493d449
  %wp6455 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729076, ptr %wp6455, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da274 word 0x17fffda5
  br label %L_8002d9908
L_8002da278:
  ; @pc 0x8002da278 word 0x71000d1f
  %r6456.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6456 = load i64, ptr %r6456.p, align 8, !alias.scope !3, !noalias !4
  %c6457 = trunc i64 %r6456 to i32
  %t6458 = sub i32 %c6457, 3
  %fn6459 = icmp slt i32 %t6458, 0
  %fz6460 = icmp eq i32 %t6458, 0
  %fc6461 = icmp uge i32 %c6457, 3
  %fx16462 = xor i32 %c6457, 3
  %fx26463 = xor i32 %c6457, %t6458
  %fva6464 = and i32 %fx16462, %fx26463
  %fv6465 = icmp slt i32 %fva6464, 0
  %nz6466 = zext i1 %fn6459 to i64
  %zz6467 = zext i1 %fz6460 to i64
  %cz6468 = zext i1 %fc6461 to i64
  %vz6469 = zext i1 %fv6465 to i64
  %ns6470 = shl i64 %nz6466, 31
  %zs6471 = shl i64 %zz6467, 30
  %cs6472 = shl i64 %cz6468, 29
  %vs6473 = shl i64 %vz6469, 28
  %nzor6474 = or i64 %ns6470, %zs6471
  %cvor6475 = or i64 %cs6472, %vs6473
  %nzcv6476 = or i64 %nzor6474, %cvor6475
  %wp6477 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6476, ptr %wp6477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da27c word 0x54000721
  %r6478.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6478 = load i64, ptr %r6478.p, align 8, !alias.scope !3, !noalias !4
  %fsh6480 = lshr i64 %r6478, 30
  %ftr6481 = trunc i64 %fsh6480 to i1
  %cond6479 = xor i1 %ftr6481, true
  br i1 %cond6479, label %L_8002da360, label %L_8002da280_ft
L_8002da288:
  ; @pc 0x8002da288 word 0xf9400108
  %r6488.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6488 = load i64, ptr %r6488.p, align 8, !alias.scope !3, !noalias !4
  %gmp6489 = inttoptr i64 %r6488 to ptr
  %gml6490 = load i64, ptr %gmp6489, align 1, !alias.scope !4, !noalias !3
  %wp6491 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6490, ptr %wp6491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da28c word 0xaa1403e0
  %r6492.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6492 = load i64, ptr %r6492.p, align 8, !alias.scope !3, !noalias !4
  %t6493 = or i64 0, %r6492
  %wp6494 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6493, ptr %wp6494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da290 word 0x2a1f03e1
  %t6495 = or i32 0, 0
  %c6496 = zext i32 %t6495 to i64
  %wp6497 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6496, ptr %wp6497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da294 word 0xaa1603e2
  %r6498.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6498 = load i64, ptr %r6498.p, align 8, !alias.scope !3, !noalias !4
  %t6499 = or i64 0, %r6498
  %wp6500 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6499, ptr %wp6500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da298 word 0xd63f0100
  %r6501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6501 = load i64, ptr %r6501.p, align 8, !alias.scope !3, !noalias !4
  %fp6502 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6501, ptr %fp6502, align 8, !alias.scope !3, !noalias !4
  %wp6503 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729116, ptr %wp6503, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da29c word 0xf94007f8
  %r6504.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6504 = load i64, ptr %r6504.p, align 8, !alias.scope !3, !noalias !4
  %t6505 = add i64 %r6504, 8
  %gmp6506 = inttoptr i64 %t6505 to ptr
  %gml6507 = load i64, ptr %gmp6506, align 1, !alias.scope !4, !noalias !3
  %wp6508 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6507, ptr %wp6508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2a0 word 0x17fffdb4
  br label %L_8002d9970
L_8002da2a4:
  ; @pc 0x8002da2a4 word 0x7100091f
  %r6509.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6509 = load i64, ptr %r6509.p, align 8, !alias.scope !3, !noalias !4
  %c6510 = trunc i64 %r6509 to i32
  %t6511 = sub i32 %c6510, 2
  %fn6512 = icmp slt i32 %t6511, 0
  %fz6513 = icmp eq i32 %t6511, 0
  %fc6514 = icmp uge i32 %c6510, 2
  %fx16515 = xor i32 %c6510, 2
  %fx26516 = xor i32 %c6510, %t6511
  %fva6517 = and i32 %fx16515, %fx26516
  %fv6518 = icmp slt i32 %fva6517, 0
  %nz6519 = zext i1 %fn6512 to i64
  %zz6520 = zext i1 %fz6513 to i64
  %cz6521 = zext i1 %fc6514 to i64
  %vz6522 = zext i1 %fv6518 to i64
  %ns6523 = shl i64 %nz6519, 31
  %zs6524 = shl i64 %zz6520, 30
  %cs6525 = shl i64 %cz6521, 29
  %vs6526 = shl i64 %vz6522, 28
  %nzor6527 = or i64 %ns6523, %zs6524
  %cvor6528 = or i64 %cs6525, %vs6526
  %nzcv6529 = or i64 %nzor6527, %cvor6528
  %wp6530 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6529, ptr %wp6530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2a8 word 0x54000661
  %r6531.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6531 = load i64, ptr %r6531.p, align 8, !alias.scope !3, !noalias !4
  %fsh6533 = lshr i64 %r6531, 30
  %ftr6534 = trunc i64 %fsh6533 to i1
  %cond6532 = xor i1 %ftr6534, true
  br i1 %cond6532, label %L_8002da374, label %L_8002da2ac_ft
L_8002da2b8:
  ; @pc 0x8002da2b8 word 0x12800048
  %c6541 = zext i32 -3 to i64
  %wp6542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6541, ptr %wp6542, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da2bc
L_8002da2bc:
  ; @pc 0x8002da2bc word 0x885f7d69
  %r6543.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6543 = load i64, ptr %r6543.p, align 8, !alias.scope !3, !noalias !4
  %atp6544 = inttoptr i64 %r6543 to ptr
  %ldx6545 = load atomic i32, ptr %atp6544 acquire, align 4, !alias.scope !4, !noalias !3
  %c6546 = zext i32 %ldx6545 to i64
  %fp6547 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r6543, ptr %fp6547, align 8, !alias.scope !3, !noalias !4
  %fp6548 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c6546, ptr %fp6548, align 8, !alias.scope !3, !noalias !4
  %wp6549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6546, ptr %wp6549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2c0 word 0x8a080129
  %r6550.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6550 = load i64, ptr %r6550.p, align 8, !alias.scope !3, !noalias !4
  %r6551.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6551 = load i64, ptr %r6551.p, align 8, !alias.scope !3, !noalias !4
  %t6552 = and i64 %r6551, %r6550
  %wp6553 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6552, ptr %wp6553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2c4 word 0xb27f0129
  %r6554.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6554 = load i64, ptr %r6554.p, align 8, !alias.scope !3, !noalias !4
  %t6555 = or i64 %r6554, 2
  %wp6556 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6555, ptr %wp6556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2c8 word 0x880a7d69
  %r6557.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6557 = load i64, ptr %r6557.p, align 8, !alias.scope !3, !noalias !4
  %atp6558 = inttoptr i64 %r6557 to ptr
  %fp6559 = getelementptr inbounds i8, ptr %c, i64 296
  %fv6560 = load i64, ptr %fp6559, align 8, !alias.scope !3, !noalias !4
  %fp6561 = getelementptr inbounds i8, ptr %c, i64 304
  %fv6562 = load i64, ptr %fp6561, align 8, !alias.scope !3, !noalias !4
  %fp6563 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp6563, align 8, !alias.scope !3, !noalias !4
  %cmp6564 = icmp eq i64 %fv6560, %r6557
  %c6565 = trunc i64 %fv6562 to i32
  %r6566.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6566 = load i64, ptr %r6566.p, align 8, !alias.scope !3, !noalias !4
  %c6567 = trunc i64 %r6566 to i32
  %cx6568 = cmpxchg ptr %atp6558, i32 %c6565, i32 %c6567 seq_cst seq_cst, align 4
  %cxok6569 = extractvalue { i32, i1 } %cx6568, 1
  %t6570 = and i1 %cmp6564, %cxok6569
  %sel6571 = select i1 %t6570, i32 0, i32 1
  %c6572 = zext i32 %sel6571 to i64
  %wp6573 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6572, ptr %wp6573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2cc word 0x35ffff8a
  %r6574.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6574 = load i64, ptr %r6574.p, align 8, !alias.scope !3, !noalias !4
  %c6575 = trunc i64 %r6574 to i32
  %cmp6576 = icmp ne i32 %c6575, 0
  br i1 %cmp6576, label %L_8002da2bc, label %L_8002da2d0_ft
L_8002da2fc:
  ; @pc 0x8002da2fc word 0xaa1f03ee
  %t6642 = or i64 0, 0
  %wp6643 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6642, ptr %wp6643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da300 word 0x17fffe05
  br label %L_8002d9b14
L_8002da304:
  ; @pc 0x8002da304 word 0xaa1503e0
  %r6644.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6644 = load i64, ptr %r6644.p, align 8, !alias.scope !3, !noalias !4
  %t6645 = or i64 0, %r6644
  %wp6646 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6645, ptr %wp6646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da308 word 0xaa1603e1
  %r6647.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6647 = load i64, ptr %r6647.p, align 8, !alias.scope !3, !noalias !4
  %t6648 = or i64 0, %r6647
  %wp6649 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6648, ptr %wp6649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da30c word 0xaa1703e2
  %r6650.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6650 = load i64, ptr %r6650.p, align 8, !alias.scope !3, !noalias !4
  %t6651 = or i64 0, %r6650
  %wp6652 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6651, ptr %wp6652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da310 word 0x9493d421
  %wp6653 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729236, ptr %wp6653, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da314 word 0x17fffe17
  br label %L_8002d9b70
L_8002da318:
  ; @pc 0x8002da318 word 0x71000d1f
  %r6654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6654 = load i64, ptr %r6654.p, align 8, !alias.scope !3, !noalias !4
  %c6655 = trunc i64 %r6654 to i32
  %t6656 = sub i32 %c6655, 3
  %fn6657 = icmp slt i32 %t6656, 0
  %fz6658 = icmp eq i32 %t6656, 0
  %fc6659 = icmp uge i32 %c6655, 3
  %fx16660 = xor i32 %c6655, 3
  %fx26661 = xor i32 %c6655, %t6656
  %fva6662 = and i32 %fx16660, %fx26661
  %fv6663 = icmp slt i32 %fva6662, 0
  %nz6664 = zext i1 %fn6657 to i64
  %zz6665 = zext i1 %fz6658 to i64
  %cz6666 = zext i1 %fc6659 to i64
  %vz6667 = zext i1 %fv6663 to i64
  %ns6668 = shl i64 %nz6664, 31
  %zs6669 = shl i64 %zz6665, 30
  %cs6670 = shl i64 %cz6666, 29
  %vs6671 = shl i64 %vz6667, 28
  %nzor6672 = or i64 %ns6668, %zs6669
  %cvor6673 = or i64 %cs6670, %vs6671
  %nzcv6674 = or i64 %nzor6672, %cvor6673
  %wp6675 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6674, ptr %wp6675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da31c word 0x54000441
  %r6676.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6676 = load i64, ptr %r6676.p, align 8, !alias.scope !3, !noalias !4
  %fsh6678 = lshr i64 %r6676, 30
  %ftr6679 = trunc i64 %fsh6678 to i1
  %cond6677 = xor i1 %ftr6679, true
  br i1 %cond6677, label %L_8002da3a4, label %L_8002da320_ft
L_8002da328:
  ; @pc 0x8002da328 word 0xf9400108
  %r6686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6686 = load i64, ptr %r6686.p, align 8, !alias.scope !3, !noalias !4
  %gmp6687 = inttoptr i64 %r6686 to ptr
  %gml6688 = load i64, ptr %gmp6687, align 1, !alias.scope !4, !noalias !3
  %wp6689 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6688, ptr %wp6689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da32c word 0xaa1603e0
  %r6690.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6690 = load i64, ptr %r6690.p, align 8, !alias.scope !3, !noalias !4
  %t6691 = or i64 0, %r6690
  %wp6692 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6691, ptr %wp6692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da330 word 0x2a1f03e1
  %t6693 = or i32 0, 0
  %c6694 = zext i32 %t6693 to i64
  %wp6695 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6694, ptr %wp6695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da334 word 0xaa1703e2
  %r6696.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6696 = load i64, ptr %r6696.p, align 8, !alias.scope !3, !noalias !4
  %t6697 = or i64 0, %r6696
  %wp6698 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t6697, ptr %wp6698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da338 word 0xd63f0100
  %r6699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6699 = load i64, ptr %r6699.p, align 8, !alias.scope !3, !noalias !4
  %fp6700 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6699, ptr %fp6700, align 8, !alias.scope !3, !noalias !4
  %wp6701 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729276, ptr %wp6701, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da33c word 0xf94007f8
  %r6702.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6702 = load i64, ptr %r6702.p, align 8, !alias.scope !3, !noalias !4
  %t6703 = add i64 %r6702, 8
  %gmp6704 = inttoptr i64 %t6703 to ptr
  %gml6705 = load i64, ptr %gmp6704, align 1, !alias.scope !4, !noalias !3
  %wp6706 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6705, ptr %wp6706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da340 word 0x17fffe23
  br label %L_8002d9bcc
L_8002da344:
  ; @pc 0x8002da344 word 0xb001b3e8
  %wp6707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp6707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da348 word 0xaa1603e0
  %r6708.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6708 = load i64, ptr %r6708.p, align 8, !alias.scope !3, !noalias !4
  %t6709 = or i64 0, %r6708
  %wp6710 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6709, ptr %wp6710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da34c word 0xf940b108
  %r6711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6711 = load i64, ptr %r6711.p, align 8, !alias.scope !3, !noalias !4
  %t6712 = add i64 %r6711, 352
  %gmp6713 = inttoptr i64 %t6712 to ptr
  %gml6714 = load i64, ptr %gmp6713, align 1, !alias.scope !4, !noalias !3
  %wp6715 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6714, ptr %wp6715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da350 word 0x52800021
  %c6716 = zext i32 1 to i64
  %wp6717 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c6716, ptr %wp6717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da354 word 0xf9400108
  %r6718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6718 = load i64, ptr %r6718.p, align 8, !alias.scope !3, !noalias !4
  %gmp6719 = inttoptr i64 %r6718 to ptr
  %gml6720 = load i64, ptr %gmp6719, align 1, !alias.scope !4, !noalias !3
  %wp6721 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6720, ptr %wp6721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da358 word 0xd63f0100
  %r6722.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6722 = load i64, ptr %r6722.p, align 8, !alias.scope !3, !noalias !4
  %fp6723 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6722, ptr %fp6723, align 8, !alias.scope !3, !noalias !4
  %wp6724 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729308, ptr %wp6724, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da35c word 0x17fffe1e
  br label %L_8002d9bd4
L_8002da360:
  ; @pc 0x8002da360 word 0x7100091f
  %r6725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6725 = load i64, ptr %r6725.p, align 8, !alias.scope !3, !noalias !4
  %c6726 = trunc i64 %r6725 to i32
  %t6727 = sub i32 %c6726, 2
  %fn6728 = icmp slt i32 %t6727, 0
  %fz6729 = icmp eq i32 %t6727, 0
  %fc6730 = icmp uge i32 %c6726, 2
  %fx16731 = xor i32 %c6726, 2
  %fx26732 = xor i32 %c6726, %t6727
  %fva6733 = and i32 %fx16731, %fx26732
  %fv6734 = icmp slt i32 %fva6733, 0
  %nz6735 = zext i1 %fn6728 to i64
  %zz6736 = zext i1 %fz6729 to i64
  %cz6737 = zext i1 %fc6730 to i64
  %vz6738 = zext i1 %fv6734 to i64
  %ns6739 = shl i64 %nz6735, 31
  %zs6740 = shl i64 %zz6736, 30
  %cs6741 = shl i64 %cz6737, 29
  %vs6742 = shl i64 %vz6738, 28
  %nzor6743 = or i64 %ns6739, %zs6740
  %cvor6744 = or i64 %cs6741, %vs6742
  %nzcv6745 = or i64 %nzor6743, %cvor6744
  %wp6746 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6745, ptr %wp6746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da364 word 0x540002a1
  %r6747.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6747 = load i64, ptr %r6747.p, align 8, !alias.scope !3, !noalias !4
  %fsh6749 = lshr i64 %r6747, 30
  %ftr6750 = trunc i64 %fsh6749 to i1
  %cond6748 = xor i1 %ftr6750, true
  br i1 %cond6748, label %L_8002da3b8, label %L_8002da368_ft
L_8002da374:
  ; @pc 0x8002da374 word 0xf94007f8
  %r6757.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6757 = load i64, ptr %r6757.p, align 8, !alias.scope !3, !noalias !4
  %t6758 = add i64 %r6757, 8
  %gmp6759 = inttoptr i64 %t6758 to ptr
  %gml6760 = load i64, ptr %gmp6759, align 1, !alias.scope !4, !noalias !3
  %wp6761 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6760, ptr %wp6761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da378 word 0x7100051f
  %r6762.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6762 = load i64, ptr %r6762.p, align 8, !alias.scope !3, !noalias !4
  %c6763 = trunc i64 %r6762 to i32
  %t6764 = sub i32 %c6763, 1
  %fn6765 = icmp slt i32 %t6764, 0
  %fz6766 = icmp eq i32 %t6764, 0
  %fc6767 = icmp uge i32 %c6763, 1
  %fx16768 = xor i32 %c6763, 1
  %fx26769 = xor i32 %c6763, %t6764
  %fva6770 = and i32 %fx16768, %fx26769
  %fv6771 = icmp slt i32 %fva6770, 0
  %nz6772 = zext i1 %fn6765 to i64
  %zz6773 = zext i1 %fz6766 to i64
  %cz6774 = zext i1 %fc6767 to i64
  %vz6775 = zext i1 %fv6771 to i64
  %ns6776 = shl i64 %nz6772, 31
  %zs6777 = shl i64 %zz6773, 30
  %cs6778 = shl i64 %cz6774, 29
  %vs6779 = shl i64 %vz6775, 28
  %nzor6780 = or i64 %ns6776, %zs6777
  %cvor6781 = or i64 %cs6778, %vs6779
  %nzcv6782 = or i64 %nzor6780, %cvor6781
  %wp6783 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6782, ptr %wp6783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da37c word 0x54ff8921
  %r6784.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6784 = load i64, ptr %r6784.p, align 8, !alias.scope !3, !noalias !4
  %fsh6786 = lshr i64 %r6784, 30
  %ftr6787 = trunc i64 %fsh6786 to i1
  %cond6785 = xor i1 %ftr6787, true
  br i1 %cond6785, label %L_8002d94a0, label %L_8002da380_ft
L_8002da3a4:
  ; @pc 0x8002da3a4 word 0x7100091f
  %r6812.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6812 = load i64, ptr %r6812.p, align 8, !alias.scope !3, !noalias !4
  %c6813 = trunc i64 %r6812 to i32
  %t6814 = sub i32 %c6813, 2
  %fn6815 = icmp slt i32 %t6814, 0
  %fz6816 = icmp eq i32 %t6814, 0
  %fc6817 = icmp uge i32 %c6813, 2
  %fx16818 = xor i32 %c6813, 2
  %fx26819 = xor i32 %c6813, %t6814
  %fva6820 = and i32 %fx16818, %fx26819
  %fv6821 = icmp slt i32 %fva6820, 0
  %nz6822 = zext i1 %fn6815 to i64
  %zz6823 = zext i1 %fz6816 to i64
  %cz6824 = zext i1 %fc6817 to i64
  %vz6825 = zext i1 %fv6821 to i64
  %ns6826 = shl i64 %nz6822, 31
  %zs6827 = shl i64 %zz6823, 30
  %cs6828 = shl i64 %cz6824, 29
  %vs6829 = shl i64 %vz6825, 28
  %nzor6830 = or i64 %ns6826, %zs6827
  %cvor6831 = or i64 %cs6828, %vs6829
  %nzcv6832 = or i64 %nzor6830, %cvor6831
  %wp6833 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6832, ptr %wp6833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3a8 word 0x54000201
  %r6834.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6834 = load i64, ptr %r6834.p, align 8, !alias.scope !3, !noalias !4
  %fsh6836 = lshr i64 %r6834, 30
  %ftr6837 = trunc i64 %fsh6836 to i1
  %cond6835 = xor i1 %ftr6837, true
  br i1 %cond6835, label %L_8002da3e8, label %L_8002da3ac_ft
L_8002da3b8:
  ; @pc 0x8002da3b8 word 0xf94007f8
  %r6844.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6844 = load i64, ptr %r6844.p, align 8, !alias.scope !3, !noalias !4
  %t6845 = add i64 %r6844, 8
  %gmp6846 = inttoptr i64 %t6845 to ptr
  %gml6847 = load i64, ptr %gmp6846, align 1, !alias.scope !4, !noalias !3
  %wp6848 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6847, ptr %wp6848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3bc word 0x7100051f
  %r6849.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6849 = load i64, ptr %r6849.p, align 8, !alias.scope !3, !noalias !4
  %c6850 = trunc i64 %r6849 to i32
  %t6851 = sub i32 %c6850, 1
  %fn6852 = icmp slt i32 %t6851, 0
  %fz6853 = icmp eq i32 %t6851, 0
  %fc6854 = icmp uge i32 %c6850, 1
  %fx16855 = xor i32 %c6850, 1
  %fx26856 = xor i32 %c6850, %t6851
  %fva6857 = and i32 %fx16855, %fx26856
  %fv6858 = icmp slt i32 %fva6857, 0
  %nz6859 = zext i1 %fn6852 to i64
  %zz6860 = zext i1 %fz6853 to i64
  %cz6861 = zext i1 %fc6854 to i64
  %vz6862 = zext i1 %fv6858 to i64
  %ns6863 = shl i64 %nz6859, 31
  %zs6864 = shl i64 %zz6860, 30
  %cs6865 = shl i64 %cz6861, 29
  %vs6866 = shl i64 %vz6862, 28
  %nzor6867 = or i64 %ns6863, %zs6864
  %cvor6868 = or i64 %cs6865, %vs6866
  %nzcv6869 = or i64 %nzor6867, %cvor6868
  %wp6870 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6869, ptr %wp6870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3c0 word 0x54ffad81
  %r6871.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6871 = load i64, ptr %r6871.p, align 8, !alias.scope !3, !noalias !4
  %fsh6873 = lshr i64 %r6871, 30
  %ftr6874 = trunc i64 %fsh6873 to i1
  %cond6872 = xor i1 %ftr6874, true
  br i1 %cond6872, label %L_8002d9970, label %L_8002da3c4_ft
L_8002da3e8:
  ; @pc 0x8002da3e8 word 0xf94007f8
  %r6899.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6899 = load i64, ptr %r6899.p, align 8, !alias.scope !3, !noalias !4
  %t6900 = add i64 %r6899, 8
  %gmp6901 = inttoptr i64 %t6900 to ptr
  %gml6902 = load i64, ptr %gmp6901, align 1, !alias.scope !4, !noalias !3
  %wp6903 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6902, ptr %wp6903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3ec word 0x7100051f
  %r6904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6904 = load i64, ptr %r6904.p, align 8, !alias.scope !3, !noalias !4
  %c6905 = trunc i64 %r6904 to i32
  %t6906 = sub i32 %c6905, 1
  %fn6907 = icmp slt i32 %t6906, 0
  %fz6908 = icmp eq i32 %t6906, 0
  %fc6909 = icmp uge i32 %c6905, 1
  %fx16910 = xor i32 %c6905, 1
  %fx26911 = xor i32 %c6905, %t6906
  %fva6912 = and i32 %fx16910, %fx26911
  %fv6913 = icmp slt i32 %fva6912, 0
  %nz6914 = zext i1 %fn6907 to i64
  %zz6915 = zext i1 %fz6908 to i64
  %cz6916 = zext i1 %fc6909 to i64
  %vz6917 = zext i1 %fv6913 to i64
  %ns6918 = shl i64 %nz6914, 31
  %zs6919 = shl i64 %zz6915, 30
  %cs6920 = shl i64 %cz6916, 29
  %vs6921 = shl i64 %vz6917, 28
  %nzor6922 = or i64 %ns6918, %zs6919
  %cvor6923 = or i64 %cs6920, %vs6921
  %nzcv6924 = or i64 %nzor6922, %cvor6923
  %wp6925 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6924, ptr %wp6925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3f0 word 0x54ffbee1
  %r6926.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6926 = load i64, ptr %r6926.p, align 8, !alias.scope !3, !noalias !4
  %fsh6928 = lshr i64 %r6926, 30
  %ftr6929 = trunc i64 %fsh6928 to i1
  %cond6927 = xor i1 %ftr6929, true
  br i1 %cond6927, label %L_8002d9bcc, label %L_8002da3f4_ft
L_8002da418:
  ; @pc 0x8002da418 word 0x12800048
  %c6954 = zext i32 -3 to i64
  %wp6955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6954, ptr %wp6955, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da41c
L_8002da41c:
  ; @pc 0x8002da41c word 0x885f7d69
  %r6956.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6956 = load i64, ptr %r6956.p, align 8, !alias.scope !3, !noalias !4
  %atp6957 = inttoptr i64 %r6956 to ptr
  %ldx6958 = load atomic i32, ptr %atp6957 acquire, align 4, !alias.scope !4, !noalias !3
  %c6959 = zext i32 %ldx6958 to i64
  %fp6960 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r6956, ptr %fp6960, align 8, !alias.scope !3, !noalias !4
  %fp6961 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c6959, ptr %fp6961, align 8, !alias.scope !3, !noalias !4
  %wp6962 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6959, ptr %wp6962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da420 word 0x8a080129
  %r6963.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6963 = load i64, ptr %r6963.p, align 8, !alias.scope !3, !noalias !4
  %r6964.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6964 = load i64, ptr %r6964.p, align 8, !alias.scope !3, !noalias !4
  %t6965 = and i64 %r6964, %r6963
  %wp6966 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6965, ptr %wp6966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da424 word 0xb27f0129
  %r6967.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6967 = load i64, ptr %r6967.p, align 8, !alias.scope !3, !noalias !4
  %t6968 = or i64 %r6967, 2
  %wp6969 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6968, ptr %wp6969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da428 word 0x880a7d69
  %r6970.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6970 = load i64, ptr %r6970.p, align 8, !alias.scope !3, !noalias !4
  %atp6971 = inttoptr i64 %r6970 to ptr
  %fp6972 = getelementptr inbounds i8, ptr %c, i64 296
  %fv6973 = load i64, ptr %fp6972, align 8, !alias.scope !3, !noalias !4
  %fp6974 = getelementptr inbounds i8, ptr %c, i64 304
  %fv6975 = load i64, ptr %fp6974, align 8, !alias.scope !3, !noalias !4
  %fp6976 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp6976, align 8, !alias.scope !3, !noalias !4
  %cmp6977 = icmp eq i64 %fv6973, %r6970
  %c6978 = trunc i64 %fv6975 to i32
  %r6979.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6979 = load i64, ptr %r6979.p, align 8, !alias.scope !3, !noalias !4
  %c6980 = trunc i64 %r6979 to i32
  %cx6981 = cmpxchg ptr %atp6971, i32 %c6978, i32 %c6980 seq_cst seq_cst, align 4
  %cxok6982 = extractvalue { i32, i1 } %cx6981, 1
  %t6983 = and i1 %cmp6977, %cxok6982
  %sel6984 = select i1 %t6983, i32 0, i32 1
  %c6985 = zext i32 %sel6984 to i64
  %wp6986 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6985, ptr %wp6986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da42c word 0x35ffff8a
  %r6987.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6987 = load i64, ptr %r6987.p, align 8, !alias.scope !3, !noalias !4
  %c6988 = trunc i64 %r6987 to i32
  %cmp6989 = icmp ne i32 %c6988, 0
  br i1 %cmp6989, label %L_8002da41c, label %L_8002da430_ft
L_8002da45c:
  ; @pc 0x8002da45c word 0xaa1f03ee
  %t7055 = or i64 0, 0
  %wp7056 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t7055, ptr %wp7056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da460 word 0x17fffdf7
  br label %L_8002d9c3c
L_8002da464:
  ; @pc 0x8002da464 word 0xaa1503e0
  %r7057.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7057 = load i64, ptr %r7057.p, align 8, !alias.scope !3, !noalias !4
  %t7058 = or i64 0, %r7057
  %wp7059 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7058, ptr %wp7059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da468 word 0xaa1603e1
  %r7060.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7060 = load i64, ptr %r7060.p, align 8, !alias.scope !3, !noalias !4
  %t7061 = or i64 0, %r7060
  %wp7062 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7061, ptr %wp7062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da46c word 0xaa1703e2
  %r7063.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7063 = load i64, ptr %r7063.p, align 8, !alias.scope !3, !noalias !4
  %t7064 = or i64 0, %r7063
  %wp7065 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7064, ptr %wp7065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da470 word 0x9493d3c9
  %wp7066 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729588, ptr %wp7066, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da474 word 0x17fffe09
  br label %L_8002d9c98
L_8002da478:
  ; @pc 0x8002da478 word 0x71000d1f
  %r7067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7067 = load i64, ptr %r7067.p, align 8, !alias.scope !3, !noalias !4
  %c7068 = trunc i64 %r7067 to i32
  %t7069 = sub i32 %c7068, 3
  %fn7070 = icmp slt i32 %t7069, 0
  %fz7071 = icmp eq i32 %t7069, 0
  %fc7072 = icmp uge i32 %c7068, 3
  %fx17073 = xor i32 %c7068, 3
  %fx27074 = xor i32 %c7068, %t7069
  %fva7075 = and i32 %fx17073, %fx27074
  %fv7076 = icmp slt i32 %fva7075, 0
  %nz7077 = zext i1 %fn7070 to i64
  %zz7078 = zext i1 %fz7071 to i64
  %cz7079 = zext i1 %fc7072 to i64
  %vz7080 = zext i1 %fv7076 to i64
  %ns7081 = shl i64 %nz7077, 31
  %zs7082 = shl i64 %zz7078, 30
  %cs7083 = shl i64 %cz7079, 29
  %vs7084 = shl i64 %vz7080, 28
  %nzor7085 = or i64 %ns7081, %zs7082
  %cvor7086 = or i64 %cs7083, %vs7084
  %nzcv7087 = or i64 %nzor7085, %cvor7086
  %wp7088 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7087, ptr %wp7088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da47c word 0x54000e21
  %r7089.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7089 = load i64, ptr %r7089.p, align 8, !alias.scope !3, !noalias !4
  %fsh7091 = lshr i64 %r7089, 30
  %ftr7092 = trunc i64 %fsh7091 to i1
  %cond7090 = xor i1 %ftr7092, true
  br i1 %cond7090, label %L_8002da640, label %L_8002da480_ft
L_8002da488:
  ; @pc 0x8002da488 word 0xf9400108
  %r7099.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7099 = load i64, ptr %r7099.p, align 8, !alias.scope !3, !noalias !4
  %gmp7100 = inttoptr i64 %r7099 to ptr
  %gml7101 = load i64, ptr %gmp7100, align 1, !alias.scope !4, !noalias !3
  %wp7102 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7101, ptr %wp7102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da48c word 0xaa1603e0
  %r7103.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7103 = load i64, ptr %r7103.p, align 8, !alias.scope !3, !noalias !4
  %t7104 = or i64 0, %r7103
  %wp7105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7104, ptr %wp7105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da490 word 0x2a1f03e1
  %t7106 = or i32 0, 0
  %c7107 = zext i32 %t7106 to i64
  %wp7108 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7107, ptr %wp7108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da494 word 0xaa1703e2
  %r7109.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7109 = load i64, ptr %r7109.p, align 8, !alias.scope !3, !noalias !4
  %t7110 = or i64 0, %r7109
  %wp7111 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7110, ptr %wp7111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da498 word 0xd63f0100
  %r7112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7112 = load i64, ptr %r7112.p, align 8, !alias.scope !3, !noalias !4
  %fp7113 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7112, ptr %fp7113, align 8, !alias.scope !3, !noalias !4
  %wp7114 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729628, ptr %wp7114, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da49c word 0xf94007f8
  %r7115.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7115 = load i64, ptr %r7115.p, align 8, !alias.scope !3, !noalias !4
  %t7116 = add i64 %r7115, 8
  %gmp7117 = inttoptr i64 %t7116 to ptr
  %gml7118 = load i64, ptr %gmp7117, align 1, !alias.scope !4, !noalias !3
  %wp7119 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7118, ptr %wp7119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4a0 word 0x17fffe14
  br label %L_8002d9cf0
L_8002da4a4:
  ; @pc 0x8002da4a4 word 0xb001b3e8
  %wp7120 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp7120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4a8 word 0xaa1603e0
  %r7121.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7121 = load i64, ptr %r7121.p, align 8, !alias.scope !3, !noalias !4
  %t7122 = or i64 0, %r7121
  %wp7123 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7122, ptr %wp7123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4ac word 0xf940b108
  %r7124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7124 = load i64, ptr %r7124.p, align 8, !alias.scope !3, !noalias !4
  %t7125 = add i64 %r7124, 352
  %gmp7126 = inttoptr i64 %t7125 to ptr
  %gml7127 = load i64, ptr %gmp7126, align 1, !alias.scope !4, !noalias !3
  %wp7128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7127, ptr %wp7128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4b0 word 0x52800021
  %c7129 = zext i32 1 to i64
  %wp7130 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7129, ptr %wp7130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4b4 word 0x52800033
  %c7131 = zext i32 1 to i64
  %wp7132 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c7131, ptr %wp7132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4b8 word 0xf9400108
  %r7133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7133 = load i64, ptr %r7133.p, align 8, !alias.scope !3, !noalias !4
  %gmp7134 = inttoptr i64 %r7133 to ptr
  %gml7135 = load i64, ptr %gmp7134, align 1, !alias.scope !4, !noalias !3
  %wp7136 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7135, ptr %wp7136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4bc word 0xd63f0100
  %r7137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7137 = load i64, ptr %r7137.p, align 8, !alias.scope !3, !noalias !4
  %fp7138 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7137, ptr %fp7138, align 8, !alias.scope !3, !noalias !4
  %wp7139 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729664, ptr %wp7139, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da4c0 word 0x17fffe0f
  br label %L_8002d9cfc
L_8002da4c4:
  ; @pc 0x8002da4c4 word 0x12800048
  %c7140 = zext i32 -3 to i64
  %wp7141 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7140, ptr %wp7141, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da4c8
L_8002da4c8:
  ; @pc 0x8002da4c8 word 0x885f7d69
  %r7142.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7142 = load i64, ptr %r7142.p, align 8, !alias.scope !3, !noalias !4
  %atp7143 = inttoptr i64 %r7142 to ptr
  %ldx7144 = load atomic i32, ptr %atp7143 acquire, align 4, !alias.scope !4, !noalias !3
  %c7145 = zext i32 %ldx7144 to i64
  %fp7146 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r7142, ptr %fp7146, align 8, !alias.scope !3, !noalias !4
  %fp7147 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c7145, ptr %fp7147, align 8, !alias.scope !3, !noalias !4
  %wp7148 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7145, ptr %wp7148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4cc word 0x8a080129
  %r7149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7149 = load i64, ptr %r7149.p, align 8, !alias.scope !3, !noalias !4
  %r7150.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7150 = load i64, ptr %r7150.p, align 8, !alias.scope !3, !noalias !4
  %t7151 = and i64 %r7150, %r7149
  %wp7152 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7151, ptr %wp7152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4d0 word 0xb27f0129
  %r7153.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7153 = load i64, ptr %r7153.p, align 8, !alias.scope !3, !noalias !4
  %t7154 = or i64 %r7153, 2
  %wp7155 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7154, ptr %wp7155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4d4 word 0x880a7d69
  %r7156.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7156 = load i64, ptr %r7156.p, align 8, !alias.scope !3, !noalias !4
  %atp7157 = inttoptr i64 %r7156 to ptr
  %fp7158 = getelementptr inbounds i8, ptr %c, i64 296
  %fv7159 = load i64, ptr %fp7158, align 8, !alias.scope !3, !noalias !4
  %fp7160 = getelementptr inbounds i8, ptr %c, i64 304
  %fv7161 = load i64, ptr %fp7160, align 8, !alias.scope !3, !noalias !4
  %fp7162 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp7162, align 8, !alias.scope !3, !noalias !4
  %cmp7163 = icmp eq i64 %fv7159, %r7156
  %c7164 = trunc i64 %fv7161 to i32
  %r7165.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7165 = load i64, ptr %r7165.p, align 8, !alias.scope !3, !noalias !4
  %c7166 = trunc i64 %r7165 to i32
  %cx7167 = cmpxchg ptr %atp7157, i32 %c7164, i32 %c7166 seq_cst seq_cst, align 4
  %cxok7168 = extractvalue { i32, i1 } %cx7167, 1
  %t7169 = and i1 %cmp7163, %cxok7168
  %sel7170 = select i1 %t7169, i32 0, i32 1
  %c7171 = zext i32 %sel7170 to i64
  %wp7172 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7171, ptr %wp7172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4d8 word 0x35ffff8a
  %r7173.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7173 = load i64, ptr %r7173.p, align 8, !alias.scope !3, !noalias !4
  %c7174 = trunc i64 %r7173 to i32
  %cmp7175 = icmp ne i32 %c7174, 0
  br i1 %cmp7175, label %L_8002da4c8, label %L_8002da4dc_ft
L_8002da508:
  ; @pc 0x8002da508 word 0xaa1f03ee
  %t7241 = or i64 0, 0
  %wp7242 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t7241, ptr %wp7242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da50c word 0x17fffca3
  br label %L_8002d9798
L_8002da510:
  ; @pc 0x8002da510 word 0x885f7d68
  %r7243.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7243 = load i64, ptr %r7243.p, align 8, !alias.scope !3, !noalias !4
  %atp7244 = inttoptr i64 %r7243 to ptr
  %ldx7245 = load atomic i32, ptr %atp7244 acquire, align 4, !alias.scope !4, !noalias !3
  %c7246 = zext i32 %ldx7245 to i64
  %fp7247 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r7243, ptr %fp7247, align 8, !alias.scope !3, !noalias !4
  %fp7248 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c7246, ptr %fp7248, align 8, !alias.scope !3, !noalias !4
  %wp7249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7246, ptr %wp7249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da514 word 0xb27f0108
  %r7250.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7250 = load i64, ptr %r7250.p, align 8, !alias.scope !3, !noalias !4
  %t7251 = or i64 %r7250, 2
  %wp7252 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7251, ptr %wp7252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da518 word 0x88097d68
  %r7253.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7253 = load i64, ptr %r7253.p, align 8, !alias.scope !3, !noalias !4
  %atp7254 = inttoptr i64 %r7253 to ptr
  %fp7255 = getelementptr inbounds i8, ptr %c, i64 296
  %fv7256 = load i64, ptr %fp7255, align 8, !alias.scope !3, !noalias !4
  %fp7257 = getelementptr inbounds i8, ptr %c, i64 304
  %fv7258 = load i64, ptr %fp7257, align 8, !alias.scope !3, !noalias !4
  %fp7259 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp7259, align 8, !alias.scope !3, !noalias !4
  %cmp7260 = icmp eq i64 %fv7256, %r7253
  %c7261 = trunc i64 %fv7258 to i32
  %r7262.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7262 = load i64, ptr %r7262.p, align 8, !alias.scope !3, !noalias !4
  %c7263 = trunc i64 %r7262 to i32
  %cx7264 = cmpxchg ptr %atp7254, i32 %c7261, i32 %c7263 seq_cst seq_cst, align 4
  %cxok7265 = extractvalue { i32, i1 } %cx7264, 1
  %t7266 = and i1 %cmp7260, %cxok7265
  %sel7267 = select i1 %t7266, i32 0, i32 1
  %c7268 = zext i32 %sel7267 to i64
  %wp7269 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7268, ptr %wp7269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da51c word 0x35ffffa9
  %r7270.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7270 = load i64, ptr %r7270.p, align 8, !alias.scope !3, !noalias !4
  %c7271 = trunc i64 %r7270 to i32
  %cmp7272 = icmp ne i32 %c7271, 0
  br i1 %cmp7272, label %L_8002da510, label %L_8002da520_ft
L_8002da528:
  ; @pc 0x8002da528 word 0xaa1503e0
  %r7278.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7278 = load i64, ptr %r7278.p, align 8, !alias.scope !3, !noalias !4
  %t7279 = or i64 0, %r7278
  %wp7280 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7279, ptr %wp7280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da52c word 0xaa1603e1
  %r7281.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7281 = load i64, ptr %r7281.p, align 8, !alias.scope !3, !noalias !4
  %t7282 = or i64 0, %r7281
  %wp7283 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7282, ptr %wp7283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da530 word 0xaa1703e2
  %r7284.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7284 = load i64, ptr %r7284.p, align 8, !alias.scope !3, !noalias !4
  %t7285 = or i64 0, %r7284
  %wp7286 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7285, ptr %wp7286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da534 word 0x9493d398
  %wp7287 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729784, ptr %wp7287, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da538 word 0x17fffcaf
  br label %L_8002d97f4
L_8002da53c:
  ; @pc 0x8002da53c word 0x71000d1f
  %r7288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7288 = load i64, ptr %r7288.p, align 8, !alias.scope !3, !noalias !4
  %c7289 = trunc i64 %r7288 to i32
  %t7290 = sub i32 %c7289, 3
  %fn7291 = icmp slt i32 %t7290, 0
  %fz7292 = icmp eq i32 %t7290, 0
  %fc7293 = icmp uge i32 %c7289, 3
  %fx17294 = xor i32 %c7289, 3
  %fx27295 = xor i32 %c7289, %t7290
  %fva7296 = and i32 %fx17294, %fx27295
  %fv7297 = icmp slt i32 %fva7296, 0
  %nz7298 = zext i1 %fn7291 to i64
  %zz7299 = zext i1 %fz7292 to i64
  %cz7300 = zext i1 %fc7293 to i64
  %vz7301 = zext i1 %fv7297 to i64
  %ns7302 = shl i64 %nz7298, 31
  %zs7303 = shl i64 %zz7299, 30
  %cs7304 = shl i64 %cz7300, 29
  %vs7305 = shl i64 %vz7301, 28
  %nzor7306 = or i64 %ns7302, %zs7303
  %cvor7307 = or i64 %cs7304, %vs7305
  %nzcv7308 = or i64 %nzor7306, %cvor7307
  %wp7309 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7308, ptr %wp7309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da540 word 0x54000e01
  %r7310.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7310 = load i64, ptr %r7310.p, align 8, !alias.scope !3, !noalias !4
  %fsh7312 = lshr i64 %r7310, 30
  %ftr7313 = trunc i64 %fsh7312 to i1
  %cond7311 = xor i1 %ftr7313, true
  br i1 %cond7311, label %L_8002da700, label %L_8002da544_ft
L_8002da54c:
  ; @pc 0x8002da54c word 0xf9400108
  %r7320.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7320 = load i64, ptr %r7320.p, align 8, !alias.scope !3, !noalias !4
  %gmp7321 = inttoptr i64 %r7320 to ptr
  %gml7322 = load i64, ptr %gmp7321, align 1, !alias.scope !4, !noalias !3
  %wp7323 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7322, ptr %wp7323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da550 word 0xaa1603e0
  %r7324.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7324 = load i64, ptr %r7324.p, align 8, !alias.scope !3, !noalias !4
  %t7325 = or i64 0, %r7324
  %wp7326 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7325, ptr %wp7326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da554 word 0x2a1f03e1
  %t7327 = or i32 0, 0
  %c7328 = zext i32 %t7327 to i64
  %wp7329 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7328, ptr %wp7329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da558 word 0xaa1703e2
  %r7330.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7330 = load i64, ptr %r7330.p, align 8, !alias.scope !3, !noalias !4
  %t7331 = or i64 0, %r7330
  %wp7332 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7331, ptr %wp7332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da55c word 0xd63f0100
  %r7333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7333 = load i64, ptr %r7333.p, align 8, !alias.scope !3, !noalias !4
  %fp7334 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7333, ptr %fp7334, align 8, !alias.scope !3, !noalias !4
  %wp7335 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729824, ptr %wp7335, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da560 word 0xf94007f8
  %r7336.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7336 = load i64, ptr %r7336.p, align 8, !alias.scope !3, !noalias !4
  %t7337 = add i64 %r7336, 8
  %gmp7338 = inttoptr i64 %t7337 to ptr
  %gml7339 = load i64, ptr %gmp7338, align 1, !alias.scope !4, !noalias !3
  %wp7340 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7339, ptr %wp7340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da564 word 0x17fffcba
  br label %L_8002d984c
L_8002da568:
  ; @pc 0x8002da568 word 0xb001b3e8
  %wp7341 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp7341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da56c word 0xaa1603e0
  %r7342.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7342 = load i64, ptr %r7342.p, align 8, !alias.scope !3, !noalias !4
  %t7343 = or i64 0, %r7342
  %wp7344 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7343, ptr %wp7344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da570 word 0xf940b108
  %r7345.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7345 = load i64, ptr %r7345.p, align 8, !alias.scope !3, !noalias !4
  %t7346 = add i64 %r7345, 352
  %gmp7347 = inttoptr i64 %t7346 to ptr
  %gml7348 = load i64, ptr %gmp7347, align 1, !alias.scope !4, !noalias !3
  %wp7349 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7348, ptr %wp7349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da574 word 0x52800021
  %c7350 = zext i32 1 to i64
  %wp7351 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7350, ptr %wp7351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da578 word 0x52800039
  %c7352 = zext i32 1 to i64
  %wp7353 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c7352, ptr %wp7353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da57c word 0xf9400108
  %r7354.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7354 = load i64, ptr %r7354.p, align 8, !alias.scope !3, !noalias !4
  %gmp7355 = inttoptr i64 %r7354 to ptr
  %gml7356 = load i64, ptr %gmp7355, align 1, !alias.scope !4, !noalias !3
  %wp7357 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7356, ptr %wp7357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da580 word 0xd63f0100
  %r7358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7358 = load i64, ptr %r7358.p, align 8, !alias.scope !3, !noalias !4
  %fp7359 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7358, ptr %fp7359, align 8, !alias.scope !3, !noalias !4
  %wp7360 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729860, ptr %wp7360, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da584 word 0x17fffcb5
  br label %L_8002d9858
L_8002da588:
  ; @pc 0x8002da588 word 0x12800048
  %c7361 = zext i32 -3 to i64
  %wp7362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7361, ptr %wp7362, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da58c
L_8002da58c:
  ; @pc 0x8002da58c word 0x885f7d69
  %r7363.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7363 = load i64, ptr %r7363.p, align 8, !alias.scope !3, !noalias !4
  %atp7364 = inttoptr i64 %r7363 to ptr
  %ldx7365 = load atomic i32, ptr %atp7364 acquire, align 4, !alias.scope !4, !noalias !3
  %c7366 = zext i32 %ldx7365 to i64
  %fp7367 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r7363, ptr %fp7367, align 8, !alias.scope !3, !noalias !4
  %fp7368 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c7366, ptr %fp7368, align 8, !alias.scope !3, !noalias !4
  %wp7369 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7366, ptr %wp7369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da590 word 0x8a080129
  %r7370.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7370 = load i64, ptr %r7370.p, align 8, !alias.scope !3, !noalias !4
  %r7371.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7371 = load i64, ptr %r7371.p, align 8, !alias.scope !3, !noalias !4
  %t7372 = and i64 %r7371, %r7370
  %wp7373 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7372, ptr %wp7373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da594 word 0xb27f0129
  %r7374.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7374 = load i64, ptr %r7374.p, align 8, !alias.scope !3, !noalias !4
  %t7375 = or i64 %r7374, 2
  %wp7376 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7375, ptr %wp7376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da598 word 0x880a7d69
  %r7377.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7377 = load i64, ptr %r7377.p, align 8, !alias.scope !3, !noalias !4
  %atp7378 = inttoptr i64 %r7377 to ptr
  %fp7379 = getelementptr inbounds i8, ptr %c, i64 296
  %fv7380 = load i64, ptr %fp7379, align 8, !alias.scope !3, !noalias !4
  %fp7381 = getelementptr inbounds i8, ptr %c, i64 304
  %fv7382 = load i64, ptr %fp7381, align 8, !alias.scope !3, !noalias !4
  %fp7383 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp7383, align 8, !alias.scope !3, !noalias !4
  %cmp7384 = icmp eq i64 %fv7380, %r7377
  %c7385 = trunc i64 %fv7382 to i32
  %r7386.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7386 = load i64, ptr %r7386.p, align 8, !alias.scope !3, !noalias !4
  %c7387 = trunc i64 %r7386 to i32
  %cx7388 = cmpxchg ptr %atp7378, i32 %c7385, i32 %c7387 seq_cst seq_cst, align 4
  %cxok7389 = extractvalue { i32, i1 } %cx7388, 1
  %t7390 = and i1 %cmp7384, %cxok7389
  %sel7391 = select i1 %t7390, i32 0, i32 1
  %c7392 = zext i32 %sel7391 to i64
  %wp7393 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7392, ptr %wp7393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da59c word 0x35ffff8a
  %r7394.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7394 = load i64, ptr %r7394.p, align 8, !alias.scope !3, !noalias !4
  %c7395 = trunc i64 %r7394 to i32
  %cmp7396 = icmp ne i32 %c7395, 0
  br i1 %cmp7396, label %L_8002da58c, label %L_8002da5a0_ft
L_8002da5cc:
  ; @pc 0x8002da5cc word 0xaa1f03ee
  %t7462 = or i64 0, 0
  %wp7463 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t7462, ptr %wp7463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5d0 word 0x17fffddd
  br label %L_8002d9d44
L_8002da5d4:
  ; @pc 0x8002da5d4 word 0xaa1503e0
  %r7464.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7464 = load i64, ptr %r7464.p, align 8, !alias.scope !3, !noalias !4
  %t7465 = or i64 0, %r7464
  %wp7466 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7465, ptr %wp7466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5d8 word 0xaa1603e1
  %r7467.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7467 = load i64, ptr %r7467.p, align 8, !alias.scope !3, !noalias !4
  %t7468 = or i64 0, %r7467
  %wp7469 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7468, ptr %wp7469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5dc word 0xaa1703e2
  %r7470.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7470 = load i64, ptr %r7470.p, align 8, !alias.scope !3, !noalias !4
  %t7471 = or i64 0, %r7470
  %wp7472 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7471, ptr %wp7472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5e0 word 0x9493d36d
  %wp7473 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729956, ptr %wp7473, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da5e4 word 0x17fffdef
  br label %L_8002d9da0
L_8002da5e8:
  ; @pc 0x8002da5e8 word 0x52800033
  %c7474 = zext i32 1 to i64
  %wp7475 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c7474, ptr %wp7475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5ec word 0x14000013
  br label %L_8002da638
L_8002da5f0:
  ; @pc 0x8002da5f0 word 0x71000d1f
  %r7476.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7476 = load i64, ptr %r7476.p, align 8, !alias.scope !3, !noalias !4
  %c7477 = trunc i64 %r7476 to i32
  %t7478 = sub i32 %c7477, 3
  %fn7479 = icmp slt i32 %t7478, 0
  %fz7480 = icmp eq i32 %t7478, 0
  %fc7481 = icmp uge i32 %c7477, 3
  %fx17482 = xor i32 %c7477, 3
  %fx27483 = xor i32 %c7477, %t7478
  %fva7484 = and i32 %fx17482, %fx27483
  %fv7485 = icmp slt i32 %fva7484, 0
  %nz7486 = zext i1 %fn7479 to i64
  %zz7487 = zext i1 %fz7480 to i64
  %cz7488 = zext i1 %fc7481 to i64
  %vz7489 = zext i1 %fv7485 to i64
  %ns7490 = shl i64 %nz7486, 31
  %zs7491 = shl i64 %zz7487, 30
  %cs7492 = shl i64 %cz7488, 29
  %vs7493 = shl i64 %vz7489, 28
  %nzor7494 = or i64 %ns7490, %zs7491
  %cvor7495 = or i64 %cs7492, %vs7493
  %nzcv7496 = or i64 %nzor7494, %cvor7495
  %wp7497 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7496, ptr %wp7497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5f4 word 0x54000e61
  %r7498.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7498 = load i64, ptr %r7498.p, align 8, !alias.scope !3, !noalias !4
  %fsh7500 = lshr i64 %r7498, 30
  %ftr7501 = trunc i64 %fsh7500 to i1
  %cond7499 = xor i1 %ftr7501, true
  br i1 %cond7499, label %L_8002da7c0, label %L_8002da5f8_ft
L_8002da600:
  ; @pc 0x8002da600 word 0xf9400108
  %r7508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7508 = load i64, ptr %r7508.p, align 8, !alias.scope !3, !noalias !4
  %gmp7509 = inttoptr i64 %r7508 to ptr
  %gml7510 = load i64, ptr %gmp7509, align 1, !alias.scope !4, !noalias !3
  %wp7511 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7510, ptr %wp7511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da604 word 0xaa1603e0
  %r7512.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7512 = load i64, ptr %r7512.p, align 8, !alias.scope !3, !noalias !4
  %t7513 = or i64 0, %r7512
  %wp7514 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7513, ptr %wp7514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da608 word 0x2a1f03e1
  %t7515 = or i32 0, 0
  %c7516 = zext i32 %t7515 to i64
  %wp7517 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7516, ptr %wp7517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da60c word 0xaa1703e2
  %r7518.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7518 = load i64, ptr %r7518.p, align 8, !alias.scope !3, !noalias !4
  %t7519 = or i64 0, %r7518
  %wp7520 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7519, ptr %wp7520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da610 word 0xd63f0100
  %r7521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7521 = load i64, ptr %r7521.p, align 8, !alias.scope !3, !noalias !4
  %fp7522 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7521, ptr %fp7522, align 8, !alias.scope !3, !noalias !4
  %wp7523 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730004, ptr %wp7523, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da614 word 0xf94007f8
  %r7524.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7524 = load i64, ptr %r7524.p, align 8, !alias.scope !3, !noalias !4
  %t7525 = add i64 %r7524, 8
  %gmp7526 = inttoptr i64 %t7525 to ptr
  %gml7527 = load i64, ptr %gmp7526, align 1, !alias.scope !4, !noalias !3
  %wp7528 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7527, ptr %wp7528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da618 word 0x17fffdf8
  br label %L_8002d9df8
L_8002da61c:
  ; @pc 0x8002da61c word 0xb001b3e8
  %wp7529 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp7529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da620 word 0xaa1603e0
  %r7530.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7530 = load i64, ptr %r7530.p, align 8, !alias.scope !3, !noalias !4
  %t7531 = or i64 0, %r7530
  %wp7532 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7531, ptr %wp7532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da624 word 0xf940b108
  %r7533.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7533 = load i64, ptr %r7533.p, align 8, !alias.scope !3, !noalias !4
  %t7534 = add i64 %r7533, 352
  %gmp7535 = inttoptr i64 %t7534 to ptr
  %gml7536 = load i64, ptr %gmp7535, align 1, !alias.scope !4, !noalias !3
  %wp7537 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7536, ptr %wp7537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da628 word 0x52800021
  %c7538 = zext i32 1 to i64
  %wp7539 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7538, ptr %wp7539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da62c word 0x52800033
  %c7540 = zext i32 1 to i64
  %wp7541 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c7540, ptr %wp7541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da630 word 0xf9400108
  %r7542.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7542 = load i64, ptr %r7542.p, align 8, !alias.scope !3, !noalias !4
  %gmp7543 = inttoptr i64 %r7542 to ptr
  %gml7544 = load i64, ptr %gmp7543, align 1, !alias.scope !4, !noalias !3
  %wp7545 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7544, ptr %wp7545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da634 word 0xd63f0100
  %r7546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7546 = load i64, ptr %r7546.p, align 8, !alias.scope !3, !noalias !4
  %fp7547 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7546, ptr %fp7547, align 8, !alias.scope !3, !noalias !4
  %wp7548 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730040, ptr %wp7548, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002da638
L_8002da638:
  ; @pc 0x8002da638 word 0x2a1c03f0
  %r7549.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7549 = load i64, ptr %r7549.p, align 8, !alias.scope !3, !noalias !4
  %c7550 = trunc i64 %r7549 to i32
  %t7551 = or i32 0, %c7550
  %c7552 = zext i32 %t7551 to i64
  %wp7553 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7552, ptr %wp7553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da63c word 0x17fffb4a
  br label %L_8002d9364
L_8002da640:
  ; @pc 0x8002da640 word 0x7100091f
  %r7554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7554 = load i64, ptr %r7554.p, align 8, !alias.scope !3, !noalias !4
  %c7555 = trunc i64 %r7554 to i32
  %t7556 = sub i32 %c7555, 2
  %fn7557 = icmp slt i32 %t7556, 0
  %fz7558 = icmp eq i32 %t7556, 0
  %fc7559 = icmp uge i32 %c7555, 2
  %fx17560 = xor i32 %c7555, 2
  %fx27561 = xor i32 %c7555, %t7556
  %fva7562 = and i32 %fx17560, %fx27561
  %fv7563 = icmp slt i32 %fva7562, 0
  %nz7564 = zext i1 %fn7557 to i64
  %zz7565 = zext i1 %fz7558 to i64
  %cz7566 = zext i1 %fc7559 to i64
  %vz7567 = zext i1 %fv7563 to i64
  %ns7568 = shl i64 %nz7564, 31
  %zs7569 = shl i64 %zz7565, 30
  %cs7570 = shl i64 %cz7566, 29
  %vs7571 = shl i64 %vz7567, 28
  %nzor7572 = or i64 %ns7568, %zs7569
  %cvor7573 = or i64 %cs7570, %vs7571
  %nzcv7574 = or i64 %nzor7572, %cvor7573
  %wp7575 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7574, ptr %wp7575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da644 word 0x54000c81
  %r7576.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7576 = load i64, ptr %r7576.p, align 8, !alias.scope !3, !noalias !4
  %fsh7578 = lshr i64 %r7576, 30
  %ftr7579 = trunc i64 %fsh7578 to i1
  %cond7577 = xor i1 %ftr7579, true
  br i1 %cond7577, label %L_8002da7d4, label %L_8002da648_ft
L_8002da654:
  ; @pc 0x8002da654 word 0x12800048
  %c7586 = zext i32 -3 to i64
  %wp7587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7586, ptr %wp7587, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da658
L_8002da658:
  ; @pc 0x8002da658 word 0x885f7d69
  %r7588.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7588 = load i64, ptr %r7588.p, align 8, !alias.scope !3, !noalias !4
  %atp7589 = inttoptr i64 %r7588 to ptr
  %ldx7590 = load atomic i32, ptr %atp7589 acquire, align 4, !alias.scope !4, !noalias !3
  %c7591 = zext i32 %ldx7590 to i64
  %fp7592 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r7588, ptr %fp7592, align 8, !alias.scope !3, !noalias !4
  %fp7593 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c7591, ptr %fp7593, align 8, !alias.scope !3, !noalias !4
  %wp7594 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7591, ptr %wp7594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da65c word 0x8a080129
  %r7595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7595 = load i64, ptr %r7595.p, align 8, !alias.scope !3, !noalias !4
  %r7596.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7596 = load i64, ptr %r7596.p, align 8, !alias.scope !3, !noalias !4
  %t7597 = and i64 %r7596, %r7595
  %wp7598 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7597, ptr %wp7598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da660 word 0xb27f0129
  %r7599.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7599 = load i64, ptr %r7599.p, align 8, !alias.scope !3, !noalias !4
  %t7600 = or i64 %r7599, 2
  %wp7601 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7600, ptr %wp7601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da664 word 0x880a7d69
  %r7602.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7602 = load i64, ptr %r7602.p, align 8, !alias.scope !3, !noalias !4
  %atp7603 = inttoptr i64 %r7602 to ptr
  %fp7604 = getelementptr inbounds i8, ptr %c, i64 296
  %fv7605 = load i64, ptr %fp7604, align 8, !alias.scope !3, !noalias !4
  %fp7606 = getelementptr inbounds i8, ptr %c, i64 304
  %fv7607 = load i64, ptr %fp7606, align 8, !alias.scope !3, !noalias !4
  %fp7608 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp7608, align 8, !alias.scope !3, !noalias !4
  %cmp7609 = icmp eq i64 %fv7605, %r7602
  %c7610 = trunc i64 %fv7607 to i32
  %r7611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7611 = load i64, ptr %r7611.p, align 8, !alias.scope !3, !noalias !4
  %c7612 = trunc i64 %r7611 to i32
  %cx7613 = cmpxchg ptr %atp7603, i32 %c7610, i32 %c7612 seq_cst seq_cst, align 4
  %cxok7614 = extractvalue { i32, i1 } %cx7613, 1
  %t7615 = and i1 %cmp7609, %cxok7614
  %sel7616 = select i1 %t7615, i32 0, i32 1
  %c7617 = zext i32 %sel7616 to i64
  %wp7618 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7617, ptr %wp7618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da668 word 0x35ffff8a
  %r7619.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7619 = load i64, ptr %r7619.p, align 8, !alias.scope !3, !noalias !4
  %c7620 = trunc i64 %r7619 to i32
  %cmp7621 = icmp ne i32 %c7620, 0
  br i1 %cmp7621, label %L_8002da658, label %L_8002da66c_ft
L_8002da698:
  ; @pc 0x8002da698 word 0xaa1f03ee
  %t7687 = or i64 0, 0
  %wp7688 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t7687, ptr %wp7688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da69c word 0x17fffdec
  br label %L_8002d9e4c
L_8002da6a0:
  ; @pc 0x8002da6a0 word 0xaa1503e0
  %r7689.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7689 = load i64, ptr %r7689.p, align 8, !alias.scope !3, !noalias !4
  %t7690 = or i64 0, %r7689
  %wp7691 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7690, ptr %wp7691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6a4 word 0xaa1603e1
  %r7692.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7692 = load i64, ptr %r7692.p, align 8, !alias.scope !3, !noalias !4
  %t7693 = or i64 0, %r7692
  %wp7694 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7693, ptr %wp7694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6a8 word 0xaa1703e2
  %r7695.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7695 = load i64, ptr %r7695.p, align 8, !alias.scope !3, !noalias !4
  %t7696 = or i64 0, %r7695
  %wp7697 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7696, ptr %wp7697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6ac word 0x9493d33a
  %wp7698 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730160, ptr %wp7698, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da6b0 word 0x17fffdfe
  br label %L_8002d9ea8
L_8002da6b4:
  ; @pc 0x8002da6b4 word 0x71000d1f
  %r7699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7699 = load i64, ptr %r7699.p, align 8, !alias.scope !3, !noalias !4
  %c7700 = trunc i64 %r7699 to i32
  %t7701 = sub i32 %c7700, 3
  %fn7702 = icmp slt i32 %t7701, 0
  %fz7703 = icmp eq i32 %t7701, 0
  %fc7704 = icmp uge i32 %c7700, 3
  %fx17705 = xor i32 %c7700, 3
  %fx27706 = xor i32 %c7700, %t7701
  %fva7707 = and i32 %fx17705, %fx27706
  %fv7708 = icmp slt i32 %fva7707, 0
  %nz7709 = zext i1 %fn7702 to i64
  %zz7710 = zext i1 %fz7703 to i64
  %cz7711 = zext i1 %fc7704 to i64
  %vz7712 = zext i1 %fv7708 to i64
  %ns7713 = shl i64 %nz7709, 31
  %zs7714 = shl i64 %zz7710, 30
  %cs7715 = shl i64 %cz7711, 29
  %vs7716 = shl i64 %vz7712, 28
  %nzor7717 = or i64 %ns7713, %zs7714
  %cvor7718 = or i64 %cs7715, %vs7716
  %nzcv7719 = or i64 %nzor7717, %cvor7718
  %wp7720 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7719, ptr %wp7720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6b8 word 0x54000a61
  %r7721.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7721 = load i64, ptr %r7721.p, align 8, !alias.scope !3, !noalias !4
  %fsh7723 = lshr i64 %r7721, 30
  %ftr7724 = trunc i64 %fsh7723 to i1
  %cond7722 = xor i1 %ftr7724, true
  br i1 %cond7722, label %L_8002da804, label %L_8002da6bc_ft
L_8002da6c4:
  ; @pc 0x8002da6c4 word 0xf9400108
  %r7731.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7731 = load i64, ptr %r7731.p, align 8, !alias.scope !3, !noalias !4
  %gmp7732 = inttoptr i64 %r7731 to ptr
  %gml7733 = load i64, ptr %gmp7732, align 1, !alias.scope !4, !noalias !3
  %wp7734 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7733, ptr %wp7734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6c8 word 0xaa1603e0
  %r7735.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7735 = load i64, ptr %r7735.p, align 8, !alias.scope !3, !noalias !4
  %t7736 = or i64 0, %r7735
  %wp7737 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7736, ptr %wp7737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6cc word 0x2a1f03e1
  %t7738 = or i32 0, 0
  %c7739 = zext i32 %t7738 to i64
  %wp7740 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7739, ptr %wp7740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6d0 word 0xaa1703e2
  %r7741.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7741 = load i64, ptr %r7741.p, align 8, !alias.scope !3, !noalias !4
  %t7742 = or i64 0, %r7741
  %wp7743 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7742, ptr %wp7743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6d4 word 0xd63f0100
  %r7744.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7744 = load i64, ptr %r7744.p, align 8, !alias.scope !3, !noalias !4
  %fp7745 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7744, ptr %fp7745, align 8, !alias.scope !3, !noalias !4
  %wp7746 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730200, ptr %wp7746, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da6d8 word 0xf94007f8
  %r7747.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7747 = load i64, ptr %r7747.p, align 8, !alias.scope !3, !noalias !4
  %t7748 = add i64 %r7747, 8
  %gmp7749 = inttoptr i64 %t7748 to ptr
  %gml7750 = load i64, ptr %gmp7749, align 1, !alias.scope !4, !noalias !3
  %wp7751 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7750, ptr %wp7751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6dc word 0x17fffe09
  br label %L_8002d9f00
L_8002da6e0:
  ; @pc 0x8002da6e0 word 0xb001b3e8
  %wp7752 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp7752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6e4 word 0xaa1603e0
  %r7753.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7753 = load i64, ptr %r7753.p, align 8, !alias.scope !3, !noalias !4
  %t7754 = or i64 0, %r7753
  %wp7755 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7754, ptr %wp7755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6e8 word 0xf940b108
  %r7756.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7756 = load i64, ptr %r7756.p, align 8, !alias.scope !3, !noalias !4
  %t7757 = add i64 %r7756, 352
  %gmp7758 = inttoptr i64 %t7757 to ptr
  %gml7759 = load i64, ptr %gmp7758, align 1, !alias.scope !4, !noalias !3
  %wp7760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7759, ptr %wp7760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6ec word 0x52800021
  %c7761 = zext i32 1 to i64
  %wp7762 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7761, ptr %wp7762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6f0 word 0x52800033
  %c7763 = zext i32 1 to i64
  %wp7764 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c7763, ptr %wp7764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6f4 word 0xf9400108
  %r7765.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7765 = load i64, ptr %r7765.p, align 8, !alias.scope !3, !noalias !4
  %gmp7766 = inttoptr i64 %r7765 to ptr
  %gml7767 = load i64, ptr %gmp7766, align 1, !alias.scope !4, !noalias !3
  %wp7768 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7767, ptr %wp7768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6f8 word 0xd63f0100
  %r7769.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7769 = load i64, ptr %r7769.p, align 8, !alias.scope !3, !noalias !4
  %fp7770 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7769, ptr %fp7770, align 8, !alias.scope !3, !noalias !4
  %wp7771 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730236, ptr %wp7771, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da6fc word 0x17fffe04
  br label %L_8002d9f0c
L_8002da700:
  ; @pc 0x8002da700 word 0x7100091f
  %r7772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7772 = load i64, ptr %r7772.p, align 8, !alias.scope !3, !noalias !4
  %c7773 = trunc i64 %r7772 to i32
  %t7774 = sub i32 %c7773, 2
  %fn7775 = icmp slt i32 %t7774, 0
  %fz7776 = icmp eq i32 %t7774, 0
  %fc7777 = icmp uge i32 %c7773, 2
  %fx17778 = xor i32 %c7773, 2
  %fx27779 = xor i32 %c7773, %t7774
  %fva7780 = and i32 %fx17778, %fx27779
  %fv7781 = icmp slt i32 %fva7780, 0
  %nz7782 = zext i1 %fn7775 to i64
  %zz7783 = zext i1 %fz7776 to i64
  %cz7784 = zext i1 %fc7777 to i64
  %vz7785 = zext i1 %fv7781 to i64
  %ns7786 = shl i64 %nz7782, 31
  %zs7787 = shl i64 %zz7783, 30
  %cs7788 = shl i64 %cz7784, 29
  %vs7789 = shl i64 %vz7785, 28
  %nzor7790 = or i64 %ns7786, %zs7787
  %cvor7791 = or i64 %cs7788, %vs7789
  %nzcv7792 = or i64 %nzor7790, %cvor7791
  %wp7793 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7792, ptr %wp7793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da704 word 0x540008a1
  %r7794.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7794 = load i64, ptr %r7794.p, align 8, !alias.scope !3, !noalias !4
  %fsh7796 = lshr i64 %r7794, 30
  %ftr7797 = trunc i64 %fsh7796 to i1
  %cond7795 = xor i1 %ftr7797, true
  br i1 %cond7795, label %L_8002da818, label %L_8002da708_ft
L_8002da714:
  ; @pc 0x8002da714 word 0x12800048
  %c7804 = zext i32 -3 to i64
  %wp7805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7804, ptr %wp7805, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da718
L_8002da718:
  ; @pc 0x8002da718 word 0x885f7d69
  %r7806.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7806 = load i64, ptr %r7806.p, align 8, !alias.scope !3, !noalias !4
  %atp7807 = inttoptr i64 %r7806 to ptr
  %ldx7808 = load atomic i32, ptr %atp7807 acquire, align 4, !alias.scope !4, !noalias !3
  %c7809 = zext i32 %ldx7808 to i64
  %fp7810 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r7806, ptr %fp7810, align 8, !alias.scope !3, !noalias !4
  %fp7811 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c7809, ptr %fp7811, align 8, !alias.scope !3, !noalias !4
  %wp7812 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7809, ptr %wp7812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da71c word 0x8a080129
  %r7813.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7813 = load i64, ptr %r7813.p, align 8, !alias.scope !3, !noalias !4
  %r7814.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7814 = load i64, ptr %r7814.p, align 8, !alias.scope !3, !noalias !4
  %t7815 = and i64 %r7814, %r7813
  %wp7816 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7815, ptr %wp7816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da720 word 0xb27f0129
  %r7817.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7817 = load i64, ptr %r7817.p, align 8, !alias.scope !3, !noalias !4
  %t7818 = or i64 %r7817, 2
  %wp7819 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7818, ptr %wp7819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da724 word 0x880a7d69
  %r7820.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7820 = load i64, ptr %r7820.p, align 8, !alias.scope !3, !noalias !4
  %atp7821 = inttoptr i64 %r7820 to ptr
  %fp7822 = getelementptr inbounds i8, ptr %c, i64 296
  %fv7823 = load i64, ptr %fp7822, align 8, !alias.scope !3, !noalias !4
  %fp7824 = getelementptr inbounds i8, ptr %c, i64 304
  %fv7825 = load i64, ptr %fp7824, align 8, !alias.scope !3, !noalias !4
  %fp7826 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp7826, align 8, !alias.scope !3, !noalias !4
  %cmp7827 = icmp eq i64 %fv7823, %r7820
  %c7828 = trunc i64 %fv7825 to i32
  %r7829.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7829 = load i64, ptr %r7829.p, align 8, !alias.scope !3, !noalias !4
  %c7830 = trunc i64 %r7829 to i32
  %cx7831 = cmpxchg ptr %atp7821, i32 %c7828, i32 %c7830 seq_cst seq_cst, align 4
  %cxok7832 = extractvalue { i32, i1 } %cx7831, 1
  %t7833 = and i1 %cmp7827, %cxok7832
  %sel7834 = select i1 %t7833, i32 0, i32 1
  %c7835 = zext i32 %sel7834 to i64
  %wp7836 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7835, ptr %wp7836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da728 word 0x35ffff8a
  %r7837.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7837 = load i64, ptr %r7837.p, align 8, !alias.scope !3, !noalias !4
  %c7838 = trunc i64 %r7837 to i32
  %cmp7839 = icmp ne i32 %c7838, 0
  br i1 %cmp7839, label %L_8002da718, label %L_8002da72c_ft
L_8002da758:
  ; @pc 0x8002da758 word 0xaa1f03ee
  %t7905 = or i64 0, 0
  %wp7906 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t7905, ptr %wp7906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da75c word 0x17fffcac
  br label %L_8002d9a0c
L_8002da760:
  ; @pc 0x8002da760 word 0xaa1503e0
  %r7907.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7907 = load i64, ptr %r7907.p, align 8, !alias.scope !3, !noalias !4
  %t7908 = or i64 0, %r7907
  %wp7909 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7908, ptr %wp7909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da764 word 0xaa1603e1
  %r7910.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7910 = load i64, ptr %r7910.p, align 8, !alias.scope !3, !noalias !4
  %t7911 = or i64 0, %r7910
  %wp7912 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t7911, ptr %wp7912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da768 word 0xaa1703e2
  %r7913.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7913 = load i64, ptr %r7913.p, align 8, !alias.scope !3, !noalias !4
  %t7914 = or i64 0, %r7913
  %wp7915 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7914, ptr %wp7915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da76c word 0x9493d30a
  %wp7916 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730352, ptr %wp7916, align 8, !alias.scope !3, !noalias !4
  call void @f_8027cf394(ptr %c)
  ; @pc 0x8002da770 word 0x17fffcbe
  br label %L_8002d9a68
L_8002da774:
  ; @pc 0x8002da774 word 0x71000d1f
  %r7917.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7917 = load i64, ptr %r7917.p, align 8, !alias.scope !3, !noalias !4
  %c7918 = trunc i64 %r7917 to i32
  %t7919 = sub i32 %c7918, 3
  %fn7920 = icmp slt i32 %t7919, 0
  %fz7921 = icmp eq i32 %t7919, 0
  %fc7922 = icmp uge i32 %c7918, 3
  %fx17923 = xor i32 %c7918, 3
  %fx27924 = xor i32 %c7918, %t7919
  %fva7925 = and i32 %fx17923, %fx27924
  %fv7926 = icmp slt i32 %fva7925, 0
  %nz7927 = zext i1 %fn7920 to i64
  %zz7928 = zext i1 %fz7921 to i64
  %cz7929 = zext i1 %fc7922 to i64
  %vz7930 = zext i1 %fv7926 to i64
  %ns7931 = shl i64 %nz7927, 31
  %zs7932 = shl i64 %zz7928, 30
  %cs7933 = shl i64 %cz7929, 29
  %vs7934 = shl i64 %vz7930, 28
  %nzor7935 = or i64 %ns7931, %zs7932
  %cvor7936 = or i64 %cs7933, %vs7934
  %nzcv7937 = or i64 %nzor7935, %cvor7936
  %wp7938 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7937, ptr %wp7938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da778 word 0x54000681
  %r7939.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7939 = load i64, ptr %r7939.p, align 8, !alias.scope !3, !noalias !4
  %fsh7941 = lshr i64 %r7939, 30
  %ftr7942 = trunc i64 %fsh7941 to i1
  %cond7940 = xor i1 %ftr7942, true
  br i1 %cond7940, label %L_8002da848, label %L_8002da77c_ft
L_8002da784:
  ; @pc 0x8002da784 word 0xf9400108
  %r7949.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7949 = load i64, ptr %r7949.p, align 8, !alias.scope !3, !noalias !4
  %gmp7950 = inttoptr i64 %r7949 to ptr
  %gml7951 = load i64, ptr %gmp7950, align 1, !alias.scope !4, !noalias !3
  %wp7952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7951, ptr %wp7952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da788 word 0xaa1603e0
  %r7953.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7953 = load i64, ptr %r7953.p, align 8, !alias.scope !3, !noalias !4
  %t7954 = or i64 0, %r7953
  %wp7955 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7954, ptr %wp7955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da78c word 0x2a1f03e1
  %t7956 = or i32 0, 0
  %c7957 = zext i32 %t7956 to i64
  %wp7958 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7957, ptr %wp7958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da790 word 0xaa1703e2
  %r7959.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7959 = load i64, ptr %r7959.p, align 8, !alias.scope !3, !noalias !4
  %t7960 = or i64 0, %r7959
  %wp7961 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t7960, ptr %wp7961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da794 word 0xd63f0100
  %r7962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7962 = load i64, ptr %r7962.p, align 8, !alias.scope !3, !noalias !4
  %fp7963 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7962, ptr %fp7963, align 8, !alias.scope !3, !noalias !4
  %wp7964 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730392, ptr %wp7964, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da798 word 0xf94007f8
  %r7965.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7965 = load i64, ptr %r7965.p, align 8, !alias.scope !3, !noalias !4
  %t7966 = add i64 %r7965, 8
  %gmp7967 = inttoptr i64 %t7966 to ptr
  %gml7968 = load i64, ptr %gmp7967, align 1, !alias.scope !4, !noalias !3
  %wp7969 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7968, ptr %wp7969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da79c word 0x17fffcc9
  br label %L_8002d9ac0
L_8002da7a0:
  ; @pc 0x8002da7a0 word 0xb001b3e8
  %wp7970 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp7970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7a4 word 0xaa1603e0
  %r7971.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7971 = load i64, ptr %r7971.p, align 8, !alias.scope !3, !noalias !4
  %t7972 = or i64 0, %r7971
  %wp7973 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7972, ptr %wp7973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7a8 word 0xf940b108
  %r7974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7974 = load i64, ptr %r7974.p, align 8, !alias.scope !3, !noalias !4
  %t7975 = add i64 %r7974, 352
  %gmp7976 = inttoptr i64 %t7975 to ptr
  %gml7977 = load i64, ptr %gmp7976, align 1, !alias.scope !4, !noalias !3
  %wp7978 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7977, ptr %wp7978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7ac word 0x52800021
  %c7979 = zext i32 1 to i64
  %wp7980 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7979, ptr %wp7980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7b0 word 0x52800039
  %c7981 = zext i32 1 to i64
  %wp7982 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c7981, ptr %wp7982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7b4 word 0xf9400108
  %r7983.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7983 = load i64, ptr %r7983.p, align 8, !alias.scope !3, !noalias !4
  %gmp7984 = inttoptr i64 %r7983 to ptr
  %gml7985 = load i64, ptr %gmp7984, align 1, !alias.scope !4, !noalias !3
  %wp7986 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7985, ptr %wp7986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7b8 word 0xd63f0100
  %r7987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7987 = load i64, ptr %r7987.p, align 8, !alias.scope !3, !noalias !4
  %fp7988 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7987, ptr %fp7988, align 8, !alias.scope !3, !noalias !4
  %wp7989 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730428, ptr %wp7989, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da7bc word 0x17fffcc4
  br label %L_8002d9acc
L_8002da7c0:
  ; @pc 0x8002da7c0 word 0x7100091f
  %r7990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7990 = load i64, ptr %r7990.p, align 8, !alias.scope !3, !noalias !4
  %c7991 = trunc i64 %r7990 to i32
  %t7992 = sub i32 %c7991, 2
  %fn7993 = icmp slt i32 %t7992, 0
  %fz7994 = icmp eq i32 %t7992, 0
  %fc7995 = icmp uge i32 %c7991, 2
  %fx17996 = xor i32 %c7991, 2
  %fx27997 = xor i32 %c7991, %t7992
  %fva7998 = and i32 %fx17996, %fx27997
  %fv7999 = icmp slt i32 %fva7998, 0
  %nz8000 = zext i1 %fn7993 to i64
  %zz8001 = zext i1 %fz7994 to i64
  %cz8002 = zext i1 %fc7995 to i64
  %vz8003 = zext i1 %fv7999 to i64
  %ns8004 = shl i64 %nz8000, 31
  %zs8005 = shl i64 %zz8001, 30
  %cs8006 = shl i64 %cz8002, 29
  %vs8007 = shl i64 %vz8003, 28
  %nzor8008 = or i64 %ns8004, %zs8005
  %cvor8009 = or i64 %cs8006, %vs8007
  %nzcv8010 = or i64 %nzor8008, %cvor8009
  %wp8011 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8010, ptr %wp8011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7c4 word 0x540004c1
  %r8012.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8012 = load i64, ptr %r8012.p, align 8, !alias.scope !3, !noalias !4
  %fsh8014 = lshr i64 %r8012, 30
  %ftr8015 = trunc i64 %fsh8014 to i1
  %cond8013 = xor i1 %ftr8015, true
  br i1 %cond8013, label %L_8002da85c, label %L_8002da7c8_ft
L_8002da7d4:
  ; @pc 0x8002da7d4 word 0xf94007f8
  %r8022.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8022 = load i64, ptr %r8022.p, align 8, !alias.scope !3, !noalias !4
  %t8023 = add i64 %r8022, 8
  %gmp8024 = inttoptr i64 %t8023 to ptr
  %gml8025 = load i64, ptr %gmp8024, align 1, !alias.scope !4, !noalias !3
  %wp8026 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml8025, ptr %wp8026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7d8 word 0x7100051f
  %r8027.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8027 = load i64, ptr %r8027.p, align 8, !alias.scope !3, !noalias !4
  %c8028 = trunc i64 %r8027 to i32
  %t8029 = sub i32 %c8028, 1
  %fn8030 = icmp slt i32 %t8029, 0
  %fz8031 = icmp eq i32 %t8029, 0
  %fc8032 = icmp uge i32 %c8028, 1
  %fx18033 = xor i32 %c8028, 1
  %fx28034 = xor i32 %c8028, %t8029
  %fva8035 = and i32 %fx18033, %fx28034
  %fv8036 = icmp slt i32 %fva8035, 0
  %nz8037 = zext i1 %fn8030 to i64
  %zz8038 = zext i1 %fz8031 to i64
  %cz8039 = zext i1 %fc8032 to i64
  %vz8040 = zext i1 %fv8036 to i64
  %ns8041 = shl i64 %nz8037, 31
  %zs8042 = shl i64 %zz8038, 30
  %cs8043 = shl i64 %cz8039, 29
  %vs8044 = shl i64 %vz8040, 28
  %nzor8045 = or i64 %ns8041, %zs8042
  %cvor8046 = or i64 %cs8043, %vs8044
  %nzcv8047 = or i64 %nzor8045, %cvor8046
  %wp8048 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8047, ptr %wp8048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7dc word 0x54ffa8a1
  %r8049.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8049 = load i64, ptr %r8049.p, align 8, !alias.scope !3, !noalias !4
  %fsh8051 = lshr i64 %r8049, 30
  %ftr8052 = trunc i64 %fsh8051 to i1
  %cond8050 = xor i1 %ftr8052, true
  br i1 %cond8050, label %L_8002d9cf0, label %L_8002da7e0_ft
L_8002da804:
  ; @pc 0x8002da804 word 0x7100091f
  %r8077.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8077 = load i64, ptr %r8077.p, align 8, !alias.scope !3, !noalias !4
  %c8078 = trunc i64 %r8077 to i32
  %t8079 = sub i32 %c8078, 2
  %fn8080 = icmp slt i32 %t8079, 0
  %fz8081 = icmp eq i32 %t8079, 0
  %fc8082 = icmp uge i32 %c8078, 2
  %fx18083 = xor i32 %c8078, 2
  %fx28084 = xor i32 %c8078, %t8079
  %fva8085 = and i32 %fx18083, %fx28084
  %fv8086 = icmp slt i32 %fva8085, 0
  %nz8087 = zext i1 %fn8080 to i64
  %zz8088 = zext i1 %fz8081 to i64
  %cz8089 = zext i1 %fc8082 to i64
  %vz8090 = zext i1 %fv8086 to i64
  %ns8091 = shl i64 %nz8087, 31
  %zs8092 = shl i64 %zz8088, 30
  %cs8093 = shl i64 %cz8089, 29
  %vs8094 = shl i64 %vz8090, 28
  %nzor8095 = or i64 %ns8091, %zs8092
  %cvor8096 = or i64 %cs8093, %vs8094
  %nzcv8097 = or i64 %nzor8095, %cvor8096
  %wp8098 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8097, ptr %wp8098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da808 word 0x54000421
  %r8099.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8099 = load i64, ptr %r8099.p, align 8, !alias.scope !3, !noalias !4
  %fsh8101 = lshr i64 %r8099, 30
  %ftr8102 = trunc i64 %fsh8101 to i1
  %cond8100 = xor i1 %ftr8102, true
  br i1 %cond8100, label %L_8002da88c, label %L_8002da80c_ft
L_8002da818:
  ; @pc 0x8002da818 word 0xf94007f8
  %r8109.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8109 = load i64, ptr %r8109.p, align 8, !alias.scope !3, !noalias !4
  %t8110 = add i64 %r8109, 8
  %gmp8111 = inttoptr i64 %t8110 to ptr
  %gml8112 = load i64, ptr %gmp8111, align 1, !alias.scope !4, !noalias !3
  %wp8113 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml8112, ptr %wp8113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da81c word 0x7100051f
  %r8114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8114 = load i64, ptr %r8114.p, align 8, !alias.scope !3, !noalias !4
  %c8115 = trunc i64 %r8114 to i32
  %t8116 = sub i32 %c8115, 1
  %fn8117 = icmp slt i32 %t8116, 0
  %fz8118 = icmp eq i32 %t8116, 0
  %fc8119 = icmp uge i32 %c8115, 1
  %fx18120 = xor i32 %c8115, 1
  %fx28121 = xor i32 %c8115, %t8116
  %fva8122 = and i32 %fx18120, %fx28121
  %fv8123 = icmp slt i32 %fva8122, 0
  %nz8124 = zext i1 %fn8117 to i64
  %zz8125 = zext i1 %fz8118 to i64
  %cz8126 = zext i1 %fc8119 to i64
  %vz8127 = zext i1 %fv8123 to i64
  %ns8128 = shl i64 %nz8124, 31
  %zs8129 = shl i64 %zz8125, 30
  %cs8130 = shl i64 %cz8126, 29
  %vs8131 = shl i64 %vz8127, 28
  %nzor8132 = or i64 %ns8128, %zs8129
  %cvor8133 = or i64 %cs8130, %vs8131
  %nzcv8134 = or i64 %nzor8132, %cvor8133
  %wp8135 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8134, ptr %wp8135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da820 word 0x54ff8161
  %r8136.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8136 = load i64, ptr %r8136.p, align 8, !alias.scope !3, !noalias !4
  %fsh8138 = lshr i64 %r8136, 30
  %ftr8139 = trunc i64 %fsh8138 to i1
  %cond8137 = xor i1 %ftr8139, true
  br i1 %cond8137, label %L_8002d984c, label %L_8002da824_ft
L_8002da848:
  ; @pc 0x8002da848 word 0x7100091f
  %r8164.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8164 = load i64, ptr %r8164.p, align 8, !alias.scope !3, !noalias !4
  %c8165 = trunc i64 %r8164 to i32
  %t8166 = sub i32 %c8165, 2
  %fn8167 = icmp slt i32 %t8166, 0
  %fz8168 = icmp eq i32 %t8166, 0
  %fc8169 = icmp uge i32 %c8165, 2
  %fx18170 = xor i32 %c8165, 2
  %fx28171 = xor i32 %c8165, %t8166
  %fva8172 = and i32 %fx18170, %fx28171
  %fv8173 = icmp slt i32 %fva8172, 0
  %nz8174 = zext i1 %fn8167 to i64
  %zz8175 = zext i1 %fz8168 to i64
  %cz8176 = zext i1 %fc8169 to i64
  %vz8177 = zext i1 %fv8173 to i64
  %ns8178 = shl i64 %nz8174, 31
  %zs8179 = shl i64 %zz8175, 30
  %cs8180 = shl i64 %cz8176, 29
  %vs8181 = shl i64 %vz8177, 28
  %nzor8182 = or i64 %ns8178, %zs8179
  %cvor8183 = or i64 %cs8180, %vs8181
  %nzcv8184 = or i64 %nzor8182, %cvor8183
  %wp8185 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8184, ptr %wp8185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da84c word 0x54000381
  %r8186.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8186 = load i64, ptr %r8186.p, align 8, !alias.scope !3, !noalias !4
  %fsh8188 = lshr i64 %r8186, 30
  %ftr8189 = trunc i64 %fsh8188 to i1
  %cond8187 = xor i1 %ftr8189, true
  br i1 %cond8187, label %L_8002da8bc, label %L_8002da850_ft
L_8002da85c:
  ; @pc 0x8002da85c word 0xf94007f8
  %r8196.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8196 = load i64, ptr %r8196.p, align 8, !alias.scope !3, !noalias !4
  %t8197 = add i64 %r8196, 8
  %gmp8198 = inttoptr i64 %t8197 to ptr
  %gml8199 = load i64, ptr %gmp8198, align 1, !alias.scope !4, !noalias !3
  %wp8200 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml8199, ptr %wp8200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da860 word 0x7100051f
  %r8201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8201 = load i64, ptr %r8201.p, align 8, !alias.scope !3, !noalias !4
  %c8202 = trunc i64 %r8201 to i32
  %t8203 = sub i32 %c8202, 1
  %fn8204 = icmp slt i32 %t8203, 0
  %fz8205 = icmp eq i32 %t8203, 0
  %fc8206 = icmp uge i32 %c8202, 1
  %fx18207 = xor i32 %c8202, 1
  %fx28208 = xor i32 %c8202, %t8203
  %fva8209 = and i32 %fx18207, %fx28208
  %fv8210 = icmp slt i32 %fva8209, 0
  %nz8211 = zext i1 %fn8204 to i64
  %zz8212 = zext i1 %fz8205 to i64
  %cz8213 = zext i1 %fc8206 to i64
  %vz8214 = zext i1 %fv8210 to i64
  %ns8215 = shl i64 %nz8211, 31
  %zs8216 = shl i64 %zz8212, 30
  %cs8217 = shl i64 %cz8213, 29
  %vs8218 = shl i64 %vz8214, 28
  %nzor8219 = or i64 %ns8215, %zs8216
  %cvor8220 = or i64 %cs8217, %vs8218
  %nzcv8221 = or i64 %nzor8219, %cvor8220
  %wp8222 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8221, ptr %wp8222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da864 word 0x54ffaca1
  %r8223.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8223 = load i64, ptr %r8223.p, align 8, !alias.scope !3, !noalias !4
  %fsh8225 = lshr i64 %r8223, 30
  %ftr8226 = trunc i64 %fsh8225 to i1
  %cond8224 = xor i1 %ftr8226, true
  br i1 %cond8224, label %L_8002d9df8, label %L_8002da868_ft
L_8002da88c:
  ; @pc 0x8002da88c word 0xf94007f8
  %r8251.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8251 = load i64, ptr %r8251.p, align 8, !alias.scope !3, !noalias !4
  %t8252 = add i64 %r8251, 8
  %gmp8253 = inttoptr i64 %t8252 to ptr
  %gml8254 = load i64, ptr %gmp8253, align 1, !alias.scope !4, !noalias !3
  %wp8255 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml8254, ptr %wp8255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da890 word 0x7100051f
  %r8256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8256 = load i64, ptr %r8256.p, align 8, !alias.scope !3, !noalias !4
  %c8257 = trunc i64 %r8256 to i32
  %t8258 = sub i32 %c8257, 1
  %fn8259 = icmp slt i32 %t8258, 0
  %fz8260 = icmp eq i32 %t8258, 0
  %fc8261 = icmp uge i32 %c8257, 1
  %fx18262 = xor i32 %c8257, 1
  %fx28263 = xor i32 %c8257, %t8258
  %fva8264 = and i32 %fx18262, %fx28263
  %fv8265 = icmp slt i32 %fva8264, 0
  %nz8266 = zext i1 %fn8259 to i64
  %zz8267 = zext i1 %fz8260 to i64
  %cz8268 = zext i1 %fc8261 to i64
  %vz8269 = zext i1 %fv8265 to i64
  %ns8270 = shl i64 %nz8266, 31
  %zs8271 = shl i64 %zz8267, 30
  %cs8272 = shl i64 %cz8268, 29
  %vs8273 = shl i64 %vz8269, 28
  %nzor8274 = or i64 %ns8270, %zs8271
  %cvor8275 = or i64 %cs8272, %vs8273
  %nzcv8276 = or i64 %nzor8274, %cvor8275
  %wp8277 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8276, ptr %wp8277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da894 word 0x54ffb361
  %r8278.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8278 = load i64, ptr %r8278.p, align 8, !alias.scope !3, !noalias !4
  %fsh8280 = lshr i64 %r8278, 30
  %ftr8281 = trunc i64 %fsh8280 to i1
  %cond8279 = xor i1 %ftr8281, true
  br i1 %cond8279, label %L_8002d9f00, label %L_8002da898_ft
L_8002da8bc:
  ; @pc 0x8002da8bc word 0xf94007f8
  %r8306.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8306 = load i64, ptr %r8306.p, align 8, !alias.scope !3, !noalias !4
  %t8307 = add i64 %r8306, 8
  %gmp8308 = inttoptr i64 %t8307 to ptr
  %gml8309 = load i64, ptr %gmp8308, align 1, !alias.scope !4, !noalias !3
  %wp8310 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml8309, ptr %wp8310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8c0 word 0x7100051f
  %r8311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8311 = load i64, ptr %r8311.p, align 8, !alias.scope !3, !noalias !4
  %c8312 = trunc i64 %r8311 to i32
  %t8313 = sub i32 %c8312, 1
  %fn8314 = icmp slt i32 %t8313, 0
  %fz8315 = icmp eq i32 %t8313, 0
  %fc8316 = icmp uge i32 %c8312, 1
  %fx18317 = xor i32 %c8312, 1
  %fx28318 = xor i32 %c8312, %t8313
  %fva8319 = and i32 %fx18317, %fx28318
  %fv8320 = icmp slt i32 %fva8319, 0
  %nz8321 = zext i1 %fn8314 to i64
  %zz8322 = zext i1 %fz8315 to i64
  %cz8323 = zext i1 %fc8316 to i64
  %vz8324 = zext i1 %fv8320 to i64
  %ns8325 = shl i64 %nz8321, 31
  %zs8326 = shl i64 %zz8322, 30
  %cs8327 = shl i64 %cz8323, 29
  %vs8328 = shl i64 %vz8324, 28
  %nzor8329 = or i64 %ns8325, %zs8326
  %cvor8330 = or i64 %cs8327, %vs8328
  %nzcv8331 = or i64 %nzor8329, %cvor8330
  %wp8332 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8331, ptr %wp8332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8c4 word 0x54ff8fe1
  %r8333.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8333 = load i64, ptr %r8333.p, align 8, !alias.scope !3, !noalias !4
  %fsh8335 = lshr i64 %r8333, 30
  %ftr8336 = trunc i64 %fsh8335 to i1
  %cond8334 = xor i1 %ftr8336, true
  br i1 %cond8334, label %L_8002d9ac0, label %L_8002da8c8_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34362723888, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8002d8e30
L_8002d8e6c_ft:
  ; @pc 0x8002d8e6c word 0xf9406536
  %r98.p = getelementptr inbounds i8, ptr %c, i64 72
  %r98 = load i64, ptr %r98.p, align 8, !alias.scope !3, !noalias !4
  %t99 = add i64 %r98, 200
  %gmp100 = inttoptr i64 %t99 to ptr
  %gml101 = load i64, ptr %gmp100, align 1, !alias.scope !4, !noalias !3
  %wp102 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml101, ptr %wp102, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d8e70
L_8002d8e78_ft:
  ; @pc 0x8002d8e78 word 0xf9401a89
  %r110.p = getelementptr inbounds i8, ptr %c, i64 160
  %r110 = load i64, ptr %r110.p, align 8, !alias.scope !3, !noalias !4
  %t111 = add i64 %r110, 48
  %gmp112 = inttoptr i64 %t111 to ptr
  %gml113 = load i64, ptr %gmp112, align 1, !alias.scope !4, !noalias !3
  %wp114 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml113, ptr %wp114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8e7c word 0xb5000929
  %r115.p = getelementptr inbounds i8, ptr %c, i64 72
  %r115 = load i64, ptr %r115.p, align 8, !alias.scope !3, !noalias !4
  %cmp116 = icmp ne i64 %r115, 0
  br i1 %cmp116, label %L_8002d8fa0, label %L_8002d8e80
L_8002d8ea8_ft:
  ; @pc 0x8002d8ea8 word 0xf9403289
  %r152.p = getelementptr inbounds i8, ptr %c, i64 160
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r152, 96
  %gmp154 = inttoptr i64 %t153 to ptr
  %gml155 = load i64, ptr %gmp154, align 1, !alias.scope !4, !noalias !3
  %wp156 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml155, ptr %wp156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8eac word 0xf100013f
  %r157.p = getelementptr inbounds i8, ptr %c, i64 72
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %t158 = sub i64 %r157, 0
  %fn159 = icmp slt i64 %t158, 0
  %fz160 = icmp eq i64 %t158, 0
  %fc161 = icmp uge i64 %r157, 0
  %fx1162 = xor i64 %r157, 0
  %fx2163 = xor i64 %r157, %t158
  %fva164 = and i64 %fx1162, %fx2163
  %fv165 = icmp slt i64 %fva164, 0
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
  ; @pc 0x8002d8eb0 word 0x1a9f1508
  %r178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r178 = load i64, ptr %r178.p, align 8, !alias.scope !3, !noalias !4
  %c179 = trunc i64 %r178 to i32
  %t180 = add i32 0, 1
  %r181.p = getelementptr inbounds i8, ptr %c, i64 272
  %r181 = load i64, ptr %r181.p, align 8, !alias.scope !3, !noalias !4
  %fsh183 = lshr i64 %r181, 30
  %ftr184 = trunc i64 %fsh183 to i1
  %cond182 = xor i1 %ftr184, true
  %sel185 = select i1 %cond182, i32 %c179, i32 %t180
  %c186 = zext i32 %sel185 to i64
  %wp187 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c186, ptr %wp187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8eb4 word 0x36000948
  %r188.p = getelementptr inbounds i8, ptr %c, i64 64
  %r188 = load i64, ptr %r188.p, align 8, !alias.scope !3, !noalias !4
  %t189 = and i64 %r188, 1
  %cmp190 = icmp eq i64 %t189, 0
  br i1 %cmp190, label %L_8002d8fdc, label %L_8002d8eb8_ft
L_8002d8eb8_ft:
  ; @pc 0x8002d8eb8 word 0xf9407675
  %r191.p = getelementptr inbounds i8, ptr %c, i64 152
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 232
  %gmp193 = inttoptr i64 %t192 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ebc word 0xb4000075
  %r196.p = getelementptr inbounds i8, ptr %c, i64 168
  %r196 = load i64, ptr %r196.p, align 8, !alias.scope !3, !noalias !4
  %cmp197 = icmp eq i64 %r196, 0
  br i1 %cmp197, label %L_8002d8ec8, label %L_8002d8ec0
L_8002d8ef4_ft:
  ; @pc 0x8002d8ef4 word 0xf9407e69
  %r294.p = getelementptr inbounds i8, ptr %c, i64 152
  %r294 = load i64, ptr %r294.p, align 8, !alias.scope !3, !noalias !4
  %t295 = add i64 %r294, 248
  %gmp296 = inttoptr i64 %t295 to ptr
  %gml297 = load i64, ptr %gmp296, align 1, !alias.scope !4, !noalias !3
  %wp298 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml297, ptr %wp298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8ef8 word 0xf8287934
  %r299.p = getelementptr inbounds i8, ptr %c, i64 72
  %r299 = load i64, ptr %r299.p, align 8, !alias.scope !3, !noalias !4
  %r300.p = getelementptr inbounds i8, ptr %c, i64 64
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %t301 = shl i64 %r300, 3
  %t302 = add i64 %r299, %t301
  %r303.p = getelementptr inbounds i8, ptr %c, i64 160
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %gmp304 = inttoptr i64 %t302 to ptr
  store i64 %r303, ptr %gmp304, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d8efc word 0xb940f268
  %r305.p = getelementptr inbounds i8, ptr %c, i64 152
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %t306 = add i64 %r305, 240
  %gmp307 = inttoptr i64 %t306 to ptr
  %gml308 = load i32, ptr %gmp307, align 1, !alias.scope !4, !noalias !3
  %c309 = zext i32 %gml308 to i64
  %wp310 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c309, ptr %wp310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f00 word 0x11000508
  %r311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %c312 = trunc i64 %r311 to i32
  %t313 = add i32 %c312, 1
  %c314 = zext i32 %t313 to i64
  %wp315 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c314, ptr %wp315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d8f04 word 0xb900f268
  %r316.p = getelementptr inbounds i8, ptr %c, i64 152
  %r316 = load i64, ptr %r316.p, align 8, !alias.scope !3, !noalias !4
  %t317 = add i64 %r316, 240
  %r318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %c319 = trunc i64 %r318 to i32
  %gmp320 = inttoptr i64 %t317 to ptr
  store i32 %c319, ptr %gmp320, align 1, !alias.scope !4, !noalias !3
  br label %L_8002d8f08
L_8002d8fec_ft:
  ; @pc 0x8002d8fec word 0x17ffffb7
  br label %L_8002d8ec8
L_8002d9028_ft:
  ; @pc 0x8002d9028 word 0xf9407e69
  %r598.p = getelementptr inbounds i8, ptr %c, i64 152
  %r598 = load i64, ptr %r598.p, align 8, !alias.scope !3, !noalias !4
  %t599 = add i64 %r598, 248
  %gmp600 = inttoptr i64 %t599 to ptr
  %gml601 = load i64, ptr %gmp600, align 1, !alias.scope !4, !noalias !3
  %wp602 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml601, ptr %wp602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d902c word 0x93407d08
  %r603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r603 = load i64, ptr %r603.p, align 8, !alias.scope !3, !noalias !4
  %t604 = lshr i64 %r603, 31
  %t605 = and i64 %t604, 1
  %t606 = sub i64 0, %t605
  %t607 = and i64 %t606, -4294967296
  %t608 = and i64 %r603, 4294967295
  %t609 = or i64 %t607, %t608
  %wp610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9030 word 0xf8287935
  %r611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %r612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r612 = load i64, ptr %r612.p, align 8, !alias.scope !3, !noalias !4
  %t613 = shl i64 %r612, 3
  %t614 = add i64 %r611, %t613
  %r615.p = getelementptr inbounds i8, ptr %c, i64 168
  %r615 = load i64, ptr %r615.p, align 8, !alias.scope !3, !noalias !4
  %gmp616 = inttoptr i64 %t614 to ptr
  store i64 %r615, ptr %gmp616, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d9034 word 0xb940f268
  %r617.p = getelementptr inbounds i8, ptr %c, i64 152
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %t618 = add i64 %r617, 240
  %gmp619 = inttoptr i64 %t618 to ptr
  %gml620 = load i32, ptr %gmp619, align 1, !alias.scope !4, !noalias !3
  %c621 = zext i32 %gml620 to i64
  %wp622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c621, ptr %wp622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9038 word 0x11000508
  %r623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %c624 = trunc i64 %r623 to i32
  %t625 = add i32 %c624, 1
  %c626 = zext i32 %t625 to i64
  %wp627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c626, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d903c word 0xb900f268
  %r628.p = getelementptr inbounds i8, ptr %c, i64 152
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %t629 = add i64 %r628, 240
  %r630.p = getelementptr inbounds i8, ptr %c, i64 64
  %r630 = load i64, ptr %r630.p, align 8, !alias.scope !3, !noalias !4
  %c631 = trunc i64 %r630 to i32
  %gmp632 = inttoptr i64 %t629 to ptr
  store i32 %c631, ptr %gmp632, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d9040 word 0x17ffffa3
  br label %L_8002d8ecc
L_8002d9070_ft:
  ; @pc 0x8002d9070 word 0xb94072e8
  %r707.p = getelementptr inbounds i8, ptr %c, i64 184
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %t708 = add i64 %r707, 112
  %gmp709 = inttoptr i64 %t708 to ptr
  %gml710 = load i32, ptr %gmp709, align 1, !alias.scope !4, !noalias !3
  %c711 = zext i32 %gml710 to i64
  %wp712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c711, ptr %wp712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9074 word 0x3100051f
  %r713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %c714 = trunc i64 %r713 to i32
  %t715 = add i32 %c714, 1
  %fn716 = icmp slt i32 %t715, 0
  %fz717 = icmp eq i32 %t715, 0
  %fc718 = icmp ult i32 %t715, %c714
  %fx1719 = xor i32 %c714, %t715
  %fx2720 = xor i32 1, %t715
  %fva721 = and i32 %fx1719, %fx2720
  %fv722 = icmp slt i32 %fva721, 0
  %nz723 = zext i1 %fn716 to i64
  %zz724 = zext i1 %fz717 to i64
  %cz725 = zext i1 %fc718 to i64
  %vz726 = zext i1 %fv722 to i64
  %ns727 = shl i64 %nz723, 31
  %zs728 = shl i64 %zz724, 30
  %cs729 = shl i64 %cz725, 29
  %vs730 = shl i64 %vz726, 28
  %nzor731 = or i64 %ns727, %zs728
  %cvor732 = or i64 %cs729, %vs730
  %nzcv733 = or i64 %nzor731, %cvor732
  %wp734 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv733, ptr %wp734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9078 word 0x54ffff20
  %r735.p = getelementptr inbounds i8, ptr %c, i64 272
  %r735 = load i64, ptr %r735.p, align 8, !alias.scope !3, !noalias !4
  %fsh737 = lshr i64 %r735, 30
  %cond736 = trunc i64 %fsh737 to i1
  br i1 %cond736, label %L_8002d905c, label %L_8002d907c_ft
L_8002d907c_ft:
  ; @pc 0x8002d907c word 0xf9400349
  %r738.p = getelementptr inbounds i8, ptr %c, i64 208
  %r738 = load i64, ptr %r738.p, align 8, !alias.scope !3, !noalias !4
  %gmp739 = inttoptr i64 %r738 to ptr
  %gml740 = load i64, ptr %gmp739, align 1, !alias.scope !4, !noalias !3
  %wp741 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml740, ptr %wp741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9080 word 0x910382f6
  %r742.p = getelementptr inbounds i8, ptr %c, i64 184
  %r742 = load i64, ptr %r742.p, align 8, !alias.scope !3, !noalias !4
  %t743 = add i64 %r742, 224
  %wp744 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t743, ptr %wp744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9084 word 0x7955552a
  %r745.p = getelementptr inbounds i8, ptr %c, i64 72
  %r745 = load i64, ptr %r745.p, align 8, !alias.scope !3, !noalias !4
  %t746 = add i64 %r745, 2730
  %gmp747 = inttoptr i64 %t746 to ptr
  %gml748 = load i16, ptr %gmp747, align 1, !alias.scope !4, !noalias !3
  %c749 = zext i16 %gml748 to i64
  %wp750 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c749, ptr %wp750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9088 word 0x4b0a0108
  %r751.p = getelementptr inbounds i8, ptr %c, i64 64
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %c752 = trunc i64 %r751 to i32
  %r753.p = getelementptr inbounds i8, ptr %c, i64 80
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %c754 = trunc i64 %r753 to i32
  %t755 = sub i32 %c752, %c754
  %c756 = zext i32 %t755 to i64
  %wp757 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c756, ptr %wp757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d908c word 0xb94a392a
  %r758.p = getelementptr inbounds i8, ptr %c, i64 72
  %r758 = load i64, ptr %r758.p, align 8, !alias.scope !3, !noalias !4
  %t759 = add i64 %r758, 2616
  %gmp760 = inttoptr i64 %t759 to ptr
  %gml761 = load i32, ptr %gmp760, align 1, !alias.scope !4, !noalias !3
  %c762 = zext i32 %gml761 to i64
  %wp763 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c762, ptr %wp763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9090 word 0xf9452129
  %r764.p = getelementptr inbounds i8, ptr %c, i64 72
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %t765 = add i64 %r764, 2624
  %gmp766 = inttoptr i64 %t765 to ptr
  %gml767 = load i64, ptr %gmp766, align 1, !alias.scope !4, !noalias !3
  %wp768 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml767, ptr %wp768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9094 word 0x6b08015f
  %r769.p = getelementptr inbounds i8, ptr %c, i64 80
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %c770 = trunc i64 %r769 to i32
  %r771.p = getelementptr inbounds i8, ptr %c, i64 64
  %r771 = load i64, ptr %r771.p, align 8, !alias.scope !3, !noalias !4
  %c772 = trunc i64 %r771 to i32
  %t773 = sub i32 %c770, %c772
  %fn774 = icmp slt i32 %t773, 0
  %fz775 = icmp eq i32 %t773, 0
  %fc776 = icmp uge i32 %c770, %c772
  %fx1777 = xor i32 %c770, %c772
  %fx2778 = xor i32 %c770, %t773
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
  ; @pc 0x8002d9098 word 0x1a9f8108
  %r793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %c794 = trunc i64 %r793 to i32
  %r795.p = getelementptr inbounds i8, ptr %c, i64 272
  %r795 = load i64, ptr %r795.p, align 8, !alias.scope !3, !noalias !4
  %fsh797 = lshr i64 %r795, 29
  %ftr798 = trunc i64 %fsh797 to i1
  %fsh799 = lshr i64 %r795, 30
  %ftr800 = trunc i64 %fsh799 to i1
  %fnz801 = xor i1 %ftr800, true
  %cond796 = and i1 %ftr798, %fnz801
  %sel802 = select i1 %cond796, i32 %c794, i32 0
  %c803 = zext i32 %sel802 to i64
  %wp804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c803, ptr %wp804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d909c word 0x9b3c2508
  %r805.p = getelementptr inbounds i8, ptr %c, i64 64
  %r805 = load i64, ptr %r805.p, align 8, !alias.scope !3, !noalias !4
  %c806 = trunc i64 %r805 to i32
  %c807 = sext i32 %c806 to i64
  %r808.p = getelementptr inbounds i8, ptr %c, i64 224
  %r808 = load i64, ptr %r808.p, align 8, !alias.scope !3, !noalias !4
  %c809 = trunc i64 %r808 to i32
  %c810 = sext i32 %c809 to i64
  %t811 = mul i64 %c807, %c810
  %r812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %t813 = add i64 %r812, %t811
  %wp814 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t813, ptr %wp814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90a0 word 0xf9401108
  %r815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %t816 = add i64 %r815, 32
  %gmp817 = inttoptr i64 %t816 to ptr
  %gml818 = load i64, ptr %gmp817, align 1, !alias.scope !4, !noalias !3
  %wp819 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml818, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90a4 word 0xf83b79c8
  %r820.p = getelementptr inbounds i8, ptr %c, i64 112
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %r821.p = getelementptr inbounds i8, ptr %c, i64 216
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %t822 = shl i64 %r821, 3
  %t823 = add i64 %r820, %t822
  %r824.p = getelementptr inbounds i8, ptr %c, i64 64
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %gmp825 = inttoptr i64 %t823 to ptr
  store i64 %r824, ptr %gmp825, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d90a8 word 0x88dffec8
  %r826.p = getelementptr inbounds i8, ptr %c, i64 176
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %atp827 = inttoptr i64 %r826 to ptr
  %lda828 = load atomic i32, ptr %atp827 acquire, align 4, !alias.scope !4, !noalias !3
  %c829 = zext i32 %lda828 to i64
  %wp830 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c829, ptr %wp830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90ac word 0x34fffd28
  %r831.p = getelementptr inbounds i8, ptr %c, i64 64
  %r831 = load i64, ptr %r831.p, align 8, !alias.scope !3, !noalias !4
  %c832 = trunc i64 %r831 to i32
  %cmp833 = icmp eq i32 %c832, 0
  br i1 %cmp833, label %L_8002d9050, label %L_8002d90b0
L_8002d90c0_ft:
  ; @pc 0x8002d90c0 word 0x7200783f
  %r866.p = getelementptr inbounds i8, ptr %c, i64 8
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %c867 = trunc i64 %r866 to i32
  %t868 = and i32 %c867, 2147483647
  %fn869 = icmp slt i32 %t868, 0
  %fz870 = icmp eq i32 %t868, 0
  %nz871 = zext i1 %fn869 to i64
  %zz872 = zext i1 %fz870 to i64
  %ns873 = shl i64 %nz871, 31
  %zs874 = shl i64 %zz872, 30
  %nzcv875 = or i64 %ns873, %zs874
  %wp876 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv875, ptr %wp876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90c4 word 0x54fffc00
  %r877.p = getelementptr inbounds i8, ptr %c, i64 272
  %r877 = load i64, ptr %r877.p, align 8, !alias.scope !3, !noalias !4
  %fsh879 = lshr i64 %r877, 30
  %cond878 = trunc i64 %fsh879 to i1
  br i1 %cond878, label %L_8002d9044, label %L_8002d90c8_ft
L_8002d90c8_ft:
  ; @pc 0x8002d90c8 word 0xaa1403f8
  %r880.p = getelementptr inbounds i8, ptr %c, i64 160
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %t881 = or i64 0, %r880
  %wp882 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t881, ptr %wp882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90cc word 0x37f879e1
  %r883.p = getelementptr inbounds i8, ptr %c, i64 8
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %t884 = and i64 %r883, 2147483648
  %cmp885 = icmp ne i64 %t884, 0
  br i1 %cmp885, label %L_8002da008, label %L_8002d90d0_ft
L_8002d90d0_ft:
  ; @pc 0x8002d90d0 word 0xf94002e8
  %r886.p = getelementptr inbounds i8, ptr %c, i64 184
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %gmp887 = inttoptr i64 %r886 to ptr
  %gml888 = load i64, ptr %gmp887, align 1, !alias.scope !4, !noalias !3
  %wp889 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml888, ptr %wp889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90d4 word 0xaa1a03f4
  %r890.p = getelementptr inbounds i8, ptr %c, i64 208
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %t891 = or i64 0, %r890
  %wp892 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t891, ptr %wp892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90d8 word 0xaa0d03f3
  %r893.p = getelementptr inbounds i8, ptr %c, i64 104
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %t894 = or i64 0, %r893
  %wp895 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t894, ptr %wp895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90dc word 0xf9400d08
  %r896.p = getelementptr inbounds i8, ptr %c, i64 64
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %t897 = add i64 %r896, 24
  %gmp898 = inttoptr i64 %t897 to ptr
  %gml899 = load i64, ptr %gmp898, align 1, !alias.scope !4, !noalias !3
  %wp900 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml899, ptr %wp900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90e0 word 0xeb0d011f
  %r901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %r902.p = getelementptr inbounds i8, ptr %c, i64 104
  %r902 = load i64, ptr %r902.p, align 8, !alias.scope !3, !noalias !4
  %t903 = sub i64 %r901, %r902
  %fn904 = icmp slt i64 %t903, 0
  %fz905 = icmp eq i64 %t903, 0
  %fc906 = icmp uge i64 %r901, %r902
  %fx1907 = xor i64 %r901, %r902
  %fx2908 = xor i64 %r901, %t903
  %fva909 = and i64 %fx1907, %fx2908
  %fv910 = icmp slt i64 %fva909, 0
  %nz911 = zext i1 %fn904 to i64
  %zz912 = zext i1 %fz905 to i64
  %cz913 = zext i1 %fc906 to i64
  %vz914 = zext i1 %fv910 to i64
  %ns915 = shl i64 %nz911, 31
  %zs916 = shl i64 %zz912, 30
  %cs917 = shl i64 %cz913, 29
  %vs918 = shl i64 %vz914, 28
  %nzor919 = or i64 %ns915, %zs916
  %cvor920 = or i64 %cs917, %vs918
  %nzcv921 = or i64 %nzor919, %cvor920
  %wp922 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv921, ptr %wp922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90e4 word 0x54007a21
  %r923.p = getelementptr inbounds i8, ptr %c, i64 272
  %r923 = load i64, ptr %r923.p, align 8, !alias.scope !3, !noalias !4
  %fsh925 = lshr i64 %r923, 30
  %ftr926 = trunc i64 %fsh925 to i1
  %cond924 = xor i1 %ftr926, true
  br i1 %cond924, label %L_8002da028, label %L_8002d90e8_ft
L_8002d90e8_ft:
  ; @pc 0x8002d90e8 word 0xf9400188
  %r927.p = getelementptr inbounds i8, ptr %c, i64 96
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %gmp928 = inttoptr i64 %r927 to ptr
  %gml929 = load i64, ptr %gmp928, align 1, !alias.scope !4, !noalias !3
  %wp930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml929, ptr %wp930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90ec word 0x910342f5
  %r931.p = getelementptr inbounds i8, ptr %c, i64 184
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %t932 = add i64 %r931, 208
  %wp933 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t932, ptr %wp933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90f0 word 0xaa0c03fa
  %r934.p = getelementptr inbounds i8, ptr %c, i64 96
  %r934 = load i64, ptr %r934.p, align 8, !alias.scope !3, !noalias !4
  %t935 = or i64 0, %r934
  %wp936 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t935, ptr %wp936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90f4 word 0xaa1503e0
  %r937.p = getelementptr inbounds i8, ptr %c, i64 168
  %r937 = load i64, ptr %r937.p, align 8, !alias.scope !3, !noalias !4
  %t938 = or i64 0, %r937
  %wp939 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t938, ptr %wp939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d90f8 word 0xd63f0100
  %r940.p = getelementptr inbounds i8, ptr %c, i64 64
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %fp941 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r940, ptr %fp941, align 8, !alias.scope !3, !noalias !4
  %wp942 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362724604, ptr %wp942, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d90fc word 0xd001b3e8
  %wp943 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9100 word 0x39439ae1
  %r944.p = getelementptr inbounds i8, ptr %c, i64 184
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %t945 = add i64 %r944, 230
  %gmp946 = inttoptr i64 %t945 to ptr
  %gml947 = load i8, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %c948 = zext i8 %gml947 to i64
  %wp949 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c948, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9104 word 0xaa1503e0
  %r950.p = getelementptr inbounds i8, ptr %c, i64 168
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %t951 = or i64 0, %r950
  %wp952 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t951, ptr %wp952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9108 word 0xf9419508
  %r953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r953 = load i64, ptr %r953.p, align 8, !alias.scope !3, !noalias !4
  %t954 = add i64 %r953, 808
  %gmp955 = inttoptr i64 %t954 to ptr
  %gml956 = load i64, ptr %gmp955, align 1, !alias.scope !4, !noalias !3
  %wp957 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml956, ptr %wp957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d910c word 0x52800022
  %c958 = zext i32 1 to i64
  %wp959 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9110 word 0xf9400108
  %r960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %gmp961 = inttoptr i64 %r960 to ptr
  %gml962 = load i64, ptr %gmp961, align 1, !alias.scope !4, !noalias !3
  %wp963 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml962, ptr %wp963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9114 word 0xd63f0100
  %r964.p = getelementptr inbounds i8, ptr %c, i64 64
  %r964 = load i64, ptr %r964.p, align 8, !alias.scope !3, !noalias !4
  %fp965 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r964, ptr %fp965, align 8, !alias.scope !3, !noalias !4
  %wp966 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362724632, ptr %wp966, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9118 word 0xd001b3e8
  %wp967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d911c word 0x7941cae1
  %r968.p = getelementptr inbounds i8, ptr %c, i64 184
  %r968 = load i64, ptr %r968.p, align 8, !alias.scope !3, !noalias !4
  %t969 = add i64 %r968, 228
  %gmp970 = inttoptr i64 %t969 to ptr
  %gml971 = load i16, ptr %gmp970, align 1, !alias.scope !4, !noalias !3
  %c972 = zext i16 %gml971 to i64
  %wp973 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c972, ptr %wp973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9120 word 0xaa1503e0
  %r974.p = getelementptr inbounds i8, ptr %c, i64 168
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = or i64 0, %r974
  %wp976 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t975, ptr %wp976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9124 word 0xf9419108
  %r977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r977 = load i64, ptr %r977.p, align 8, !alias.scope !3, !noalias !4
  %t978 = add i64 %r977, 800
  %gmp979 = inttoptr i64 %t978 to ptr
  %gml980 = load i64, ptr %gmp979, align 1, !alias.scope !4, !noalias !3
  %wp981 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml980, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9128 word 0x52800022
  %c982 = zext i32 1 to i64
  %wp983 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c982, ptr %wp983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d912c word 0xf9400108
  %r984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %gmp985 = inttoptr i64 %r984 to ptr
  %gml986 = load i64, ptr %gmp985, align 1, !alias.scope !4, !noalias !3
  %wp987 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml986, ptr %wp987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9130 word 0xd63f0100
  %r988.p = getelementptr inbounds i8, ptr %c, i64 64
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %fp989 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r988, ptr %fp989, align 8, !alias.scope !3, !noalias !4
  %wp990 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362724660, ptr %wp990, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9134
L_8002d915c_ft:
  ; @pc 0x8002d915c word 0x17ffffbd
  br label %L_8002d9050
L_8002d91a0_ft:
  ; @pc 0x8002d91a0 word 0xb94c8aad
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = add i64 %r1094, 3208
  %gmp1096 = inttoptr i64 %t1095 to ptr
  %gml1097 = load i32, ptr %gmp1096, align 1, !alias.scope !4, !noalias !3
  %c1098 = zext i32 %gml1097 to i64
  %wp1099 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1098, ptr %wp1099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91a4 word 0x363035ed
  %r1100.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1100 = load i64, ptr %r1100.p, align 8, !alias.scope !3, !noalias !4
  %t1101 = and i64 %r1100, 64
  %cmp1102 = icmp eq i64 %t1101, 0
  br i1 %cmp1102, label %L_8002d9860, label %L_8002d91a8_ft
L_8002d91a8_ft:
  ; @pc 0x8002d91a8 word 0xb9407188
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %t1104 = add i64 %r1103, 112
  %gmp1105 = inttoptr i64 %t1104 to ptr
  %gml1106 = load i32, ptr %gmp1105, align 1, !alias.scope !4, !noalias !3
  %c1107 = zext i32 %gml1106 to i64
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1107, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91ac word 0x2a1c03f0
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %c1110 = trunc i64 %r1109 to i32
  %t1111 = or i32 0, %c1110
  %c1112 = zext i32 %t1111 to i64
  %wp1113 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1112, ptr %wp1113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91b0 word 0x795556a9
  %r1114.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1114 = load i64, ptr %r1114.p, align 8, !alias.scope !3, !noalias !4
  %t1115 = add i64 %r1114, 2730
  %gmp1116 = inttoptr i64 %t1115 to ptr
  %gml1117 = load i16, ptr %gmp1116, align 1, !alias.scope !4, !noalias !3
  %c1118 = zext i16 %gml1117 to i64
  %wp1119 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1118, ptr %wp1119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91b4 word 0x4b090109
  %r1120.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1120 = load i64, ptr %r1120.p, align 8, !alias.scope !3, !noalias !4
  %c1121 = trunc i64 %r1120 to i32
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %c1123 = trunc i64 %r1122 to i32
  %t1124 = sub i32 %c1121, %c1123
  %c1125 = zext i32 %t1124 to i64
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91b8 word 0xb94a3aaa
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %t1128 = add i64 %r1127, 2616
  %gmp1129 = inttoptr i64 %t1128 to ptr
  %gml1130 = load i32, ptr %gmp1129, align 1, !alias.scope !4, !noalias !3
  %c1131 = zext i32 %gml1130 to i64
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91bc word 0xf94522a8
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %t1134 = add i64 %r1133, 2624
  %gmp1135 = inttoptr i64 %t1134 to ptr
  %gml1136 = load i64, ptr %gmp1135, align 1, !alias.scope !4, !noalias !3
  %wp1137 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1136, ptr %wp1137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91c0 word 0x6b09015f
  %r1138.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1138 = load i64, ptr %r1138.p, align 8, !alias.scope !3, !noalias !4
  %c1139 = trunc i64 %r1138 to i32
  %r1140.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1140 = load i64, ptr %r1140.p, align 8, !alias.scope !3, !noalias !4
  %c1141 = trunc i64 %r1140 to i32
  %t1142 = sub i32 %c1139, %c1141
  %fn1143 = icmp slt i32 %t1142, 0
  %fz1144 = icmp eq i32 %t1142, 0
  %fc1145 = icmp uge i32 %c1139, %c1141
  %fx11146 = xor i32 %c1139, %c1141
  %fx21147 = xor i32 %c1139, %t1142
  %fva1148 = and i32 %fx11146, %fx21147
  %fv1149 = icmp slt i32 %fva1148, 0
  %nz1150 = zext i1 %fn1143 to i64
  %zz1151 = zext i1 %fz1144 to i64
  %cz1152 = zext i1 %fc1145 to i64
  %vz1153 = zext i1 %fv1149 to i64
  %ns1154 = shl i64 %nz1150, 31
  %zs1155 = shl i64 %zz1151, 30
  %cs1156 = shl i64 %cz1152, 29
  %vs1157 = shl i64 %vz1153, 28
  %nzor1158 = or i64 %ns1154, %zs1155
  %cvor1159 = or i64 %cs1156, %vs1157
  %nzcv1160 = or i64 %nzor1158, %cvor1159
  %wp1161 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1160, ptr %wp1161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91c4 word 0x1a9f812e
  %r1162.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1162 = load i64, ptr %r1162.p, align 8, !alias.scope !3, !noalias !4
  %c1163 = trunc i64 %r1162 to i32
  %r1164.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1164 = load i64, ptr %r1164.p, align 8, !alias.scope !3, !noalias !4
  %fsh1166 = lshr i64 %r1164, 29
  %ftr1167 = trunc i64 %fsh1166 to i1
  %fsh1168 = lshr i64 %r1164, 30
  %ftr1169 = trunc i64 %fsh1168 to i1
  %fnz1170 = xor i1 %ftr1169, true
  %cond1165 = and i1 %ftr1167, %fnz1170
  %sel1171 = select i1 %cond1165, i32 %c1163, i32 0
  %c1172 = zext i32 %sel1171 to i64
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1172, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91c8 word 0x9b3c21cb
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %c1175 = trunc i64 %r1174 to i32
  %c1176 = sext i32 %c1175 to i64
  %r1177.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1177 = load i64, ptr %r1177.p, align 8, !alias.scope !3, !noalias !4
  %c1178 = trunc i64 %r1177 to i32
  %c1179 = sext i32 %c1178 to i64
  %t1180 = mul i64 %c1176, %c1179
  %r1181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1181 = load i64, ptr %r1181.p, align 8, !alias.scope !3, !noalias !4
  %t1182 = add i64 %r1181, %t1180
  %wp1183 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1182, ptr %wp1183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91cc word 0xb8404d6f
  %r1184.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1184 = load i64, ptr %r1184.p, align 8, !alias.scope !3, !noalias !4
  %t1185 = add i64 %r1184, 4
  %gmp1186 = inttoptr i64 %t1185 to ptr
  %gml1187 = load i32, ptr %gmp1186, align 1, !alias.scope !4, !noalias !3
  %c1188 = zext i32 %gml1187 to i64
  %wp1189 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1185, ptr %wp1189, align 8, !alias.scope !3, !noalias !4
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1188, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91d0 word 0x360003af
  %r1191.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1191 = load i64, ptr %r1191.p, align 8, !alias.scope !3, !noalias !4
  %t1192 = and i64 %r1191, 1
  %cmp1193 = icmp eq i64 %t1192, 0
  br i1 %cmp1193, label %L_8002d9244, label %L_8002d91d4_ft
L_8002d91d4_ft:
  ; @pc 0x8002d91d4 word 0xb940016f
  %r1194.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1194 = load i64, ptr %r1194.p, align 8, !alias.scope !3, !noalias !4
  %gmp1195 = inttoptr i64 %r1194 to ptr
  %gml1196 = load i32, ptr %gmp1195, align 1, !alias.scope !4, !noalias !3
  %c1197 = zext i32 %gml1196 to i64
  %wp1198 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1197, ptr %wp1198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d91d8 word 0x360821cf
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %t1200 = and i64 %r1199, 2
  %cmp1201 = icmp eq i64 %t1200, 0
  br i1 %cmp1201, label %L_8002d9610, label %L_8002d91dc_ft
L_8002d91dc_ft:
  ; @pc 0x8002d91dc word 0x2a1f03f9
  %t1202 = or i32 0, 0
  %c1203 = zext i32 %t1202 to i64
  %wp1204 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1203, ptr %wp1204, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d91e0
L_8002d9220_ft:
  ; @pc 0x8002d9220 word 0x35001d79
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %c1262 = trunc i64 %r1261 to i32
  %cmp1263 = icmp ne i32 %c1262, 0
  br i1 %cmp1263, label %L_8002d95cc, label %L_8002d9224
L_8002d9258_ft:
  ; @pc 0x8002d9258 word 0xb9407188
  %r1340.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1340 = load i64, ptr %r1340.p, align 8, !alias.scope !3, !noalias !4
  %t1341 = add i64 %r1340, 112
  %gmp1342 = inttoptr i64 %t1341 to ptr
  %gml1343 = load i32, ptr %gmp1342, align 1, !alias.scope !4, !noalias !3
  %c1344 = zext i32 %gml1343 to i64
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d925c word 0x795556a9
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %t1347 = add i64 %r1346, 2730
  %gmp1348 = inttoptr i64 %t1347 to ptr
  %gml1349 = load i16, ptr %gmp1348, align 1, !alias.scope !4, !noalias !3
  %c1350 = zext i16 %gml1349 to i64
  %wp1351 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1350, ptr %wp1351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9260 word 0x4b09010a
  %r1352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1352 = load i64, ptr %r1352.p, align 8, !alias.scope !3, !noalias !4
  %c1353 = trunc i64 %r1352 to i32
  %r1354.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1354 = load i64, ptr %r1354.p, align 8, !alias.scope !3, !noalias !4
  %c1355 = trunc i64 %r1354 to i32
  %t1356 = sub i32 %c1353, %c1355
  %c1357 = zext i32 %t1356 to i64
  %wp1358 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1357, ptr %wp1358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9264 word 0xb94a3aa9
  %r1359.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1359 = load i64, ptr %r1359.p, align 8, !alias.scope !3, !noalias !4
  %t1360 = add i64 %r1359, 2616
  %gmp1361 = inttoptr i64 %t1360 to ptr
  %gml1362 = load i32, ptr %gmp1361, align 1, !alias.scope !4, !noalias !3
  %c1363 = zext i32 %gml1362 to i64
  %wp1364 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1363, ptr %wp1364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9268 word 0xf94522a8
  %r1365.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1365 = load i64, ptr %r1365.p, align 8, !alias.scope !3, !noalias !4
  %t1366 = add i64 %r1365, 2624
  %gmp1367 = inttoptr i64 %t1366 to ptr
  %gml1368 = load i64, ptr %gmp1367, align 1, !alias.scope !4, !noalias !3
  %wp1369 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1368, ptr %wp1369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d926c word 0x6b0a013f
  %r1370.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1370 = load i64, ptr %r1370.p, align 8, !alias.scope !3, !noalias !4
  %c1371 = trunc i64 %r1370 to i32
  %r1372.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1372 = load i64, ptr %r1372.p, align 8, !alias.scope !3, !noalias !4
  %c1373 = trunc i64 %r1372 to i32
  %t1374 = sub i32 %c1371, %c1373
  %fn1375 = icmp slt i32 %t1374, 0
  %fz1376 = icmp eq i32 %t1374, 0
  %fc1377 = icmp uge i32 %c1371, %c1373
  %fx11378 = xor i32 %c1371, %c1373
  %fx21379 = xor i32 %c1371, %t1374
  %fva1380 = and i32 %fx11378, %fx21379
  %fv1381 = icmp slt i32 %fva1380, 0
  %nz1382 = zext i1 %fn1375 to i64
  %zz1383 = zext i1 %fz1376 to i64
  %cz1384 = zext i1 %fc1377 to i64
  %vz1385 = zext i1 %fv1381 to i64
  %ns1386 = shl i64 %nz1382, 31
  %zs1387 = shl i64 %zz1383, 30
  %cs1388 = shl i64 %cz1384, 29
  %vs1389 = shl i64 %vz1385, 28
  %nzor1390 = or i64 %ns1386, %zs1387
  %cvor1391 = or i64 %cs1388, %vs1389
  %nzcv1392 = or i64 %nzor1390, %cvor1391
  %wp1393 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1392, ptr %wp1393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9270 word 0x1a9f814e
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %c1395 = trunc i64 %r1394 to i32
  %r1396.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1396 = load i64, ptr %r1396.p, align 8, !alias.scope !3, !noalias !4
  %fsh1398 = lshr i64 %r1396, 29
  %ftr1399 = trunc i64 %fsh1398 to i1
  %fsh1400 = lshr i64 %r1396, 30
  %ftr1401 = trunc i64 %fsh1400 to i1
  %fnz1402 = xor i1 %ftr1401, true
  %cond1397 = and i1 %ftr1399, %fnz1402
  %sel1403 = select i1 %cond1397, i32 %c1395, i32 0
  %c1404 = zext i32 %sel1403 to i64
  %wp1405 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1404, ptr %wp1405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9274 word 0x9b3021cb
  %r1406.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1406 = load i64, ptr %r1406.p, align 8, !alias.scope !3, !noalias !4
  %c1407 = trunc i64 %r1406 to i32
  %c1408 = sext i32 %c1407 to i64
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %c1410 = trunc i64 %r1409 to i32
  %c1411 = sext i32 %c1410 to i64
  %t1412 = mul i64 %c1408, %c1411
  %r1413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1413 = load i64, ptr %r1413.p, align 8, !alias.scope !3, !noalias !4
  %t1414 = add i64 %r1413, %t1412
  %wp1415 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1414, ptr %wp1415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9278 word 0xb8404d6f
  %r1416.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1416 = load i64, ptr %r1416.p, align 8, !alias.scope !3, !noalias !4
  %t1417 = add i64 %r1416, 4
  %gmp1418 = inttoptr i64 %t1417 to ptr
  %gml1419 = load i32, ptr %gmp1418, align 1, !alias.scope !4, !noalias !3
  %c1420 = zext i32 %gml1419 to i64
  %wp1421 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1417, ptr %wp1421, align 8, !alias.scope !3, !noalias !4
  %wp1422 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1420, ptr %wp1422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d927c word 0x3600006f
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %t1424 = and i64 %r1423, 1
  %cmp1425 = icmp eq i64 %t1424, 0
  br i1 %cmp1425, label %L_8002d9288, label %L_8002d9280_ft
L_8002d9280_ft:
  ; @pc 0x8002d9280 word 0xb940016f
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %gmp1427 = inttoptr i64 %r1426 to ptr
  %gml1428 = load i32, ptr %gmp1427, align 1, !alias.scope !4, !noalias !3
  %c1429 = zext i32 %gml1428 to i64
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9284 word 0x3608428f
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %t1432 = and i64 %r1431, 2
  %cmp1433 = icmp eq i64 %t1432, 0
  br i1 %cmp1433, label %L_8002d9ad4, label %L_8002d9288
L_8002d92a0_ft:
  ; @pc 0x8002d92a0 word 0xb9407188
  %r1460.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1460 = load i64, ptr %r1460.p, align 8, !alias.scope !3, !noalias !4
  %t1461 = add i64 %r1460, 112
  %gmp1462 = inttoptr i64 %t1461 to ptr
  %gml1463 = load i32, ptr %gmp1462, align 1, !alias.scope !4, !noalias !3
  %c1464 = zext i32 %gml1463 to i64
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1464, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92a4 word 0x795556a9
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %t1467 = add i64 %r1466, 2730
  %gmp1468 = inttoptr i64 %t1467 to ptr
  %gml1469 = load i16, ptr %gmp1468, align 1, !alias.scope !4, !noalias !3
  %c1470 = zext i16 %gml1469 to i64
  %wp1471 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1470, ptr %wp1471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92a8 word 0x4b09010a
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %c1473 = trunc i64 %r1472 to i32
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %c1475 = trunc i64 %r1474 to i32
  %t1476 = sub i32 %c1473, %c1475
  %c1477 = zext i32 %t1476 to i64
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1477, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92ac word 0xb94a3aa9
  %r1479.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1479 = load i64, ptr %r1479.p, align 8, !alias.scope !3, !noalias !4
  %t1480 = add i64 %r1479, 2616
  %gmp1481 = inttoptr i64 %t1480 to ptr
  %gml1482 = load i32, ptr %gmp1481, align 1, !alias.scope !4, !noalias !3
  %c1483 = zext i32 %gml1482 to i64
  %wp1484 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1483, ptr %wp1484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92b0 word 0xf94522a8
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %t1486 = add i64 %r1485, 2624
  %gmp1487 = inttoptr i64 %t1486 to ptr
  %gml1488 = load i64, ptr %gmp1487, align 1, !alias.scope !4, !noalias !3
  %wp1489 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1488, ptr %wp1489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92b4 word 0x6b0a013f
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %c1491 = trunc i64 %r1490 to i32
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %c1493 = trunc i64 %r1492 to i32
  %t1494 = sub i32 %c1491, %c1493
  %fn1495 = icmp slt i32 %t1494, 0
  %fz1496 = icmp eq i32 %t1494, 0
  %fc1497 = icmp uge i32 %c1491, %c1493
  %fx11498 = xor i32 %c1491, %c1493
  %fx21499 = xor i32 %c1491, %t1494
  %fva1500 = and i32 %fx11498, %fx21499
  %fv1501 = icmp slt i32 %fva1500, 0
  %nz1502 = zext i1 %fn1495 to i64
  %zz1503 = zext i1 %fz1496 to i64
  %cz1504 = zext i1 %fc1497 to i64
  %vz1505 = zext i1 %fv1501 to i64
  %ns1506 = shl i64 %nz1502, 31
  %zs1507 = shl i64 %zz1503, 30
  %cs1508 = shl i64 %cz1504, 29
  %vs1509 = shl i64 %vz1505, 28
  %nzor1510 = or i64 %ns1506, %zs1507
  %cvor1511 = or i64 %cs1508, %vs1509
  %nzcv1512 = or i64 %nzor1510, %cvor1511
  %wp1513 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1512, ptr %wp1513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92b8 word 0x1a9f814e
  %r1514.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1514 = load i64, ptr %r1514.p, align 8, !alias.scope !3, !noalias !4
  %c1515 = trunc i64 %r1514 to i32
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %fsh1518 = lshr i64 %r1516, 29
  %ftr1519 = trunc i64 %fsh1518 to i1
  %fsh1520 = lshr i64 %r1516, 30
  %ftr1521 = trunc i64 %fsh1520 to i1
  %fnz1522 = xor i1 %ftr1521, true
  %cond1517 = and i1 %ftr1519, %fnz1522
  %sel1523 = select i1 %cond1517, i32 %c1515, i32 0
  %c1524 = zext i32 %sel1523 to i64
  %wp1525 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1524, ptr %wp1525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92bc word 0x9b3021cb
  %r1526.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1526 = load i64, ptr %r1526.p, align 8, !alias.scope !3, !noalias !4
  %c1527 = trunc i64 %r1526 to i32
  %c1528 = sext i32 %c1527 to i64
  %r1529.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1529 = load i64, ptr %r1529.p, align 8, !alias.scope !3, !noalias !4
  %c1530 = trunc i64 %r1529 to i32
  %c1531 = sext i32 %c1530 to i64
  %t1532 = mul i64 %c1528, %c1531
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %t1534 = add i64 %r1533, %t1532
  %wp1535 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1534, ptr %wp1535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92c0 word 0xb8404d6f
  %r1536.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1536 = load i64, ptr %r1536.p, align 8, !alias.scope !3, !noalias !4
  %t1537 = add i64 %r1536, 4
  %gmp1538 = inttoptr i64 %t1537 to ptr
  %gml1539 = load i32, ptr %gmp1538, align 1, !alias.scope !4, !noalias !3
  %c1540 = zext i32 %gml1539 to i64
  %wp1541 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1537, ptr %wp1541, align 8, !alias.scope !3, !noalias !4
  %wp1542 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1540, ptr %wp1542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92c4 word 0x3600006f
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %t1544 = and i64 %r1543, 1
  %cmp1545 = icmp eq i64 %t1544, 0
  br i1 %cmp1545, label %L_8002d92d0, label %L_8002d92c8_ft
L_8002d92c8_ft:
  ; @pc 0x8002d92c8 word 0xb940016f
  %r1546.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1546 = load i64, ptr %r1546.p, align 8, !alias.scope !3, !noalias !4
  %gmp1547 = inttoptr i64 %r1546 to ptr
  %gml1548 = load i32, ptr %gmp1547, align 1, !alias.scope !4, !noalias !3
  %c1549 = zext i32 %gml1548 to i64
  %wp1550 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1549, ptr %wp1550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92cc word 0x3608498f
  %r1551.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1551 = load i64, ptr %r1551.p, align 8, !alias.scope !3, !noalias !4
  %t1552 = and i64 %r1551, 2
  %cmp1553 = icmp eq i64 %t1552, 0
  br i1 %cmp1553, label %L_8002d9bfc, label %L_8002d92d0
L_8002d92e8_ft:
  ; @pc 0x8002d92e8 word 0xb9407188
  %r1580.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1580 = load i64, ptr %r1580.p, align 8, !alias.scope !3, !noalias !4
  %t1581 = add i64 %r1580, 112
  %gmp1582 = inttoptr i64 %t1581 to ptr
  %gml1583 = load i32, ptr %gmp1582, align 1, !alias.scope !4, !noalias !3
  %c1584 = zext i32 %gml1583 to i64
  %wp1585 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1584, ptr %wp1585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92ec word 0x795556a9
  %r1586.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1586 = load i64, ptr %r1586.p, align 8, !alias.scope !3, !noalias !4
  %t1587 = add i64 %r1586, 2730
  %gmp1588 = inttoptr i64 %t1587 to ptr
  %gml1589 = load i16, ptr %gmp1588, align 1, !alias.scope !4, !noalias !3
  %c1590 = zext i16 %gml1589 to i64
  %wp1591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1590, ptr %wp1591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92f0 word 0x4b09010a
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %c1593 = trunc i64 %r1592 to i32
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %c1595 = trunc i64 %r1594 to i32
  %t1596 = sub i32 %c1593, %c1595
  %c1597 = zext i32 %t1596 to i64
  %wp1598 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1597, ptr %wp1598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92f4 word 0xb94a3aa9
  %r1599.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1599 = load i64, ptr %r1599.p, align 8, !alias.scope !3, !noalias !4
  %t1600 = add i64 %r1599, 2616
  %gmp1601 = inttoptr i64 %t1600 to ptr
  %gml1602 = load i32, ptr %gmp1601, align 1, !alias.scope !4, !noalias !3
  %c1603 = zext i32 %gml1602 to i64
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92f8 word 0xf94522a8
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %t1606 = add i64 %r1605, 2624
  %gmp1607 = inttoptr i64 %t1606 to ptr
  %gml1608 = load i64, ptr %gmp1607, align 1, !alias.scope !4, !noalias !3
  %wp1609 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1608, ptr %wp1609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d92fc word 0x6b0a013f
  %r1610.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1610 = load i64, ptr %r1610.p, align 8, !alias.scope !3, !noalias !4
  %c1611 = trunc i64 %r1610 to i32
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %c1613 = trunc i64 %r1612 to i32
  %t1614 = sub i32 %c1611, %c1613
  %fn1615 = icmp slt i32 %t1614, 0
  %fz1616 = icmp eq i32 %t1614, 0
  %fc1617 = icmp uge i32 %c1611, %c1613
  %fx11618 = xor i32 %c1611, %c1613
  %fx21619 = xor i32 %c1611, %t1614
  %fva1620 = and i32 %fx11618, %fx21619
  %fv1621 = icmp slt i32 %fva1620, 0
  %nz1622 = zext i1 %fn1615 to i64
  %zz1623 = zext i1 %fz1616 to i64
  %cz1624 = zext i1 %fc1617 to i64
  %vz1625 = zext i1 %fv1621 to i64
  %ns1626 = shl i64 %nz1622, 31
  %zs1627 = shl i64 %zz1623, 30
  %cs1628 = shl i64 %cz1624, 29
  %vs1629 = shl i64 %vz1625, 28
  %nzor1630 = or i64 %ns1626, %zs1627
  %cvor1631 = or i64 %cs1628, %vs1629
  %nzcv1632 = or i64 %nzor1630, %cvor1631
  %wp1633 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1632, ptr %wp1633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9300 word 0x1a9f814e
  %r1634.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1634 = load i64, ptr %r1634.p, align 8, !alias.scope !3, !noalias !4
  %c1635 = trunc i64 %r1634 to i32
  %r1636.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1636 = load i64, ptr %r1636.p, align 8, !alias.scope !3, !noalias !4
  %fsh1638 = lshr i64 %r1636, 29
  %ftr1639 = trunc i64 %fsh1638 to i1
  %fsh1640 = lshr i64 %r1636, 30
  %ftr1641 = trunc i64 %fsh1640 to i1
  %fnz1642 = xor i1 %ftr1641, true
  %cond1637 = and i1 %ftr1639, %fnz1642
  %sel1643 = select i1 %cond1637, i32 %c1635, i32 0
  %c1644 = zext i32 %sel1643 to i64
  %wp1645 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1644, ptr %wp1645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9304 word 0x9b3021cb
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %c1647 = trunc i64 %r1646 to i32
  %c1648 = sext i32 %c1647 to i64
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %c1650 = trunc i64 %r1649 to i32
  %c1651 = sext i32 %c1650 to i64
  %t1652 = mul i64 %c1648, %c1651
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %t1654 = add i64 %r1653, %t1652
  %wp1655 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1654, ptr %wp1655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9308 word 0xb8404d6f
  %r1656.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1656 = load i64, ptr %r1656.p, align 8, !alias.scope !3, !noalias !4
  %t1657 = add i64 %r1656, 4
  %gmp1658 = inttoptr i64 %t1657 to ptr
  %gml1659 = load i32, ptr %gmp1658, align 1, !alias.scope !4, !noalias !3
  %c1660 = zext i32 %gml1659 to i64
  %wp1661 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1657, ptr %wp1661, align 8, !alias.scope !3, !noalias !4
  %wp1662 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1660, ptr %wp1662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d930c word 0x3600006f
  %r1663.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1663 = load i64, ptr %r1663.p, align 8, !alias.scope !3, !noalias !4
  %t1664 = and i64 %r1663, 1
  %cmp1665 = icmp eq i64 %t1664, 0
  br i1 %cmp1665, label %L_8002d9318, label %L_8002d9310_ft
L_8002d9310_ft:
  ; @pc 0x8002d9310 word 0xb940016f
  %r1666.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1666 = load i64, ptr %r1666.p, align 8, !alias.scope !3, !noalias !4
  %gmp1667 = inttoptr i64 %r1666 to ptr
  %gml1668 = load i32, ptr %gmp1667, align 1, !alias.scope !4, !noalias !3
  %c1669 = zext i32 %gml1668 to i64
  %wp1670 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1669, ptr %wp1670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9314 word 0x360857cf
  %r1671.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1671 = load i64, ptr %r1671.p, align 8, !alias.scope !3, !noalias !4
  %t1672 = and i64 %r1671, 2
  %cmp1673 = icmp eq i64 %t1672, 0
  br i1 %cmp1673, label %L_8002d9e0c, label %L_8002d9318
L_8002d9330_ft:
  ; @pc 0x8002d9330 word 0xb9407188
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %t1701 = add i64 %r1700, 112
  %gmp1702 = inttoptr i64 %t1701 to ptr
  %gml1703 = load i32, ptr %gmp1702, align 1, !alias.scope !4, !noalias !3
  %c1704 = zext i32 %gml1703 to i64
  %wp1705 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1704, ptr %wp1705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9334 word 0x795556a9
  %r1706.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1706 = load i64, ptr %r1706.p, align 8, !alias.scope !3, !noalias !4
  %t1707 = add i64 %r1706, 2730
  %gmp1708 = inttoptr i64 %t1707 to ptr
  %gml1709 = load i16, ptr %gmp1708, align 1, !alias.scope !4, !noalias !3
  %c1710 = zext i16 %gml1709 to i64
  %wp1711 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1710, ptr %wp1711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9338 word 0x4b09010a
  %r1712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1712 = load i64, ptr %r1712.p, align 8, !alias.scope !3, !noalias !4
  %c1713 = trunc i64 %r1712 to i32
  %r1714.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1714 = load i64, ptr %r1714.p, align 8, !alias.scope !3, !noalias !4
  %c1715 = trunc i64 %r1714 to i32
  %t1716 = sub i32 %c1713, %c1715
  %c1717 = zext i32 %t1716 to i64
  %wp1718 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1717, ptr %wp1718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d933c word 0xb94a3aa9
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %t1720 = add i64 %r1719, 2616
  %gmp1721 = inttoptr i64 %t1720 to ptr
  %gml1722 = load i32, ptr %gmp1721, align 1, !alias.scope !4, !noalias !3
  %c1723 = zext i32 %gml1722 to i64
  %wp1724 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1723, ptr %wp1724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9340 word 0xf94522a8
  %r1725.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1725 = load i64, ptr %r1725.p, align 8, !alias.scope !3, !noalias !4
  %t1726 = add i64 %r1725, 2624
  %gmp1727 = inttoptr i64 %t1726 to ptr
  %gml1728 = load i64, ptr %gmp1727, align 1, !alias.scope !4, !noalias !3
  %wp1729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1728, ptr %wp1729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9344 word 0x6b0a013f
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %c1731 = trunc i64 %r1730 to i32
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %c1733 = trunc i64 %r1732 to i32
  %t1734 = sub i32 %c1731, %c1733
  %fn1735 = icmp slt i32 %t1734, 0
  %fz1736 = icmp eq i32 %t1734, 0
  %fc1737 = icmp uge i32 %c1731, %c1733
  %fx11738 = xor i32 %c1731, %c1733
  %fx21739 = xor i32 %c1731, %t1734
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
  ; @pc 0x8002d9348 word 0x1a9f814e
  %r1754.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1754 = load i64, ptr %r1754.p, align 8, !alias.scope !3, !noalias !4
  %c1755 = trunc i64 %r1754 to i32
  %r1756.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1756 = load i64, ptr %r1756.p, align 8, !alias.scope !3, !noalias !4
  %fsh1758 = lshr i64 %r1756, 29
  %ftr1759 = trunc i64 %fsh1758 to i1
  %fsh1760 = lshr i64 %r1756, 30
  %ftr1761 = trunc i64 %fsh1760 to i1
  %fnz1762 = xor i1 %ftr1761, true
  %cond1757 = and i1 %ftr1759, %fnz1762
  %sel1763 = select i1 %cond1757, i32 %c1755, i32 0
  %c1764 = zext i32 %sel1763 to i64
  %wp1765 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1764, ptr %wp1765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d934c word 0x9b3021cb
  %r1766.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1766 = load i64, ptr %r1766.p, align 8, !alias.scope !3, !noalias !4
  %c1767 = trunc i64 %r1766 to i32
  %c1768 = sext i32 %c1767 to i64
  %r1769.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1769 = load i64, ptr %r1769.p, align 8, !alias.scope !3, !noalias !4
  %c1770 = trunc i64 %r1769 to i32
  %c1771 = sext i32 %c1770 to i64
  %t1772 = mul i64 %c1768, %c1771
  %r1773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1773 = load i64, ptr %r1773.p, align 8, !alias.scope !3, !noalias !4
  %t1774 = add i64 %r1773, %t1772
  %wp1775 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1774, ptr %wp1775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9350 word 0xb8404d6f
  %r1776.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1776 = load i64, ptr %r1776.p, align 8, !alias.scope !3, !noalias !4
  %t1777 = add i64 %r1776, 4
  %gmp1778 = inttoptr i64 %t1777 to ptr
  %gml1779 = load i32, ptr %gmp1778, align 1, !alias.scope !4, !noalias !3
  %c1780 = zext i32 %gml1779 to i64
  %wp1781 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1777, ptr %wp1781, align 8, !alias.scope !3, !noalias !4
  %wp1782 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1780, ptr %wp1782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9354 word 0x3600006f
  %r1783.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1783 = load i64, ptr %r1783.p, align 8, !alias.scope !3, !noalias !4
  %t1784 = and i64 %r1783, 1
  %cmp1785 = icmp eq i64 %t1784, 0
  br i1 %cmp1785, label %L_8002d9360, label %L_8002d9358_ft
L_8002d9358_ft:
  ; @pc 0x8002d9358 word 0xb940016f
  %r1786.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1786 = load i64, ptr %r1786.p, align 8, !alias.scope !3, !noalias !4
  %gmp1787 = inttoptr i64 %r1786 to ptr
  %gml1788 = load i32, ptr %gmp1787, align 1, !alias.scope !4, !noalias !3
  %c1789 = zext i32 %gml1788 to i64
  %wp1790 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1789, ptr %wp1790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d935c word 0x36084d4f
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %t1792 = and i64 %r1791, 2
  %cmp1793 = icmp eq i64 %t1792, 0
  br i1 %cmp1793, label %L_8002d9d04, label %L_8002d9360
L_8002d9378_ft:
  ; @pc 0x8002d9378 word 0xb9407188
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %t1821 = add i64 %r1820, 112
  %gmp1822 = inttoptr i64 %t1821 to ptr
  %gml1823 = load i32, ptr %gmp1822, align 1, !alias.scope !4, !noalias !3
  %c1824 = zext i32 %gml1823 to i64
  %wp1825 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1824, ptr %wp1825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d937c word 0x795556a9
  %r1826.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1826 = load i64, ptr %r1826.p, align 8, !alias.scope !3, !noalias !4
  %t1827 = add i64 %r1826, 2730
  %gmp1828 = inttoptr i64 %t1827 to ptr
  %gml1829 = load i16, ptr %gmp1828, align 1, !alias.scope !4, !noalias !3
  %c1830 = zext i16 %gml1829 to i64
  %wp1831 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1830, ptr %wp1831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9380 word 0x4b090109
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %c1833 = trunc i64 %r1832 to i32
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %c1835 = trunc i64 %r1834 to i32
  %t1836 = sub i32 %c1833, %c1835
  %c1837 = zext i32 %t1836 to i64
  %wp1838 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1837, ptr %wp1838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9384 word 0xb94a3aaa
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %t1840 = add i64 %r1839, 2616
  %gmp1841 = inttoptr i64 %t1840 to ptr
  %gml1842 = load i32, ptr %gmp1841, align 1, !alias.scope !4, !noalias !3
  %c1843 = zext i32 %gml1842 to i64
  %wp1844 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1843, ptr %wp1844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9388 word 0xf94522a8
  %r1845.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1845 = load i64, ptr %r1845.p, align 8, !alias.scope !3, !noalias !4
  %t1846 = add i64 %r1845, 2624
  %gmp1847 = inttoptr i64 %t1846 to ptr
  %gml1848 = load i64, ptr %gmp1847, align 1, !alias.scope !4, !noalias !3
  %wp1849 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1848, ptr %wp1849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d938c word 0x6b09015f
  %r1850.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1850 = load i64, ptr %r1850.p, align 8, !alias.scope !3, !noalias !4
  %c1851 = trunc i64 %r1850 to i32
  %r1852.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1852 = load i64, ptr %r1852.p, align 8, !alias.scope !3, !noalias !4
  %c1853 = trunc i64 %r1852 to i32
  %t1854 = sub i32 %c1851, %c1853
  %fn1855 = icmp slt i32 %t1854, 0
  %fz1856 = icmp eq i32 %t1854, 0
  %fc1857 = icmp uge i32 %c1851, %c1853
  %fx11858 = xor i32 %c1851, %c1853
  %fx21859 = xor i32 %c1851, %t1854
  %fva1860 = and i32 %fx11858, %fx21859
  %fv1861 = icmp slt i32 %fva1860, 0
  %nz1862 = zext i1 %fn1855 to i64
  %zz1863 = zext i1 %fz1856 to i64
  %cz1864 = zext i1 %fc1857 to i64
  %vz1865 = zext i1 %fv1861 to i64
  %ns1866 = shl i64 %nz1862, 31
  %zs1867 = shl i64 %zz1863, 30
  %cs1868 = shl i64 %cz1864, 29
  %vs1869 = shl i64 %vz1865, 28
  %nzor1870 = or i64 %ns1866, %zs1867
  %cvor1871 = or i64 %cs1868, %vs1869
  %nzcv1872 = or i64 %nzor1870, %cvor1871
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1872, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9390 word 0x2a0903ee
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %c1875 = trunc i64 %r1874 to i32
  %t1876 = or i32 0, %c1875
  %c1877 = zext i32 %t1876 to i64
  %wp1878 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1877, ptr %wp1878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9394 word 0x54006c09
  %r1879.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1879 = load i64, ptr %r1879.p, align 8, !alias.scope !3, !noalias !4
  %fsh1881 = lshr i64 %r1879, 29
  %ftr1882 = trunc i64 %fsh1881 to i1
  %fsh1883 = lshr i64 %r1879, 30
  %ftr1884 = trunc i64 %fsh1883 to i1
  %fnz1885 = xor i1 %ftr1884, true
  %fhi1886 = and i1 %ftr1882, %fnz1885
  %cond1880 = xor i1 %fhi1886, true
  br i1 %cond1880, label %L_8002da114, label %L_8002d9398
L_8002d93a4_ft:
  ; @pc 0x8002d93a4 word 0xb940016f
  %r1907.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1907 = load i64, ptr %r1907.p, align 8, !alias.scope !3, !noalias !4
  %gmp1908 = inttoptr i64 %r1907 to ptr
  %gml1909 = load i32, ptr %gmp1908, align 1, !alias.scope !4, !noalias !3
  %c1910 = zext i32 %gml1909 to i64
  %wp1911 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1910, ptr %wp1911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93a8 word 0x370ff30f
  %r1912.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1912 = load i64, ptr %r1912.p, align 8, !alias.scope !3, !noalias !4
  %t1913 = and i64 %r1912, 2
  %cmp1914 = icmp ne i64 %t1913, 0
  br i1 %cmp1914, label %L_8002d9208, label %L_8002d93ac_ft
L_8002d93ac_ft:
  ; @pc 0x8002d93ac word 0x36a06e0d
  %r1915.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1915 = load i64, ptr %r1915.p, align 8, !alias.scope !3, !noalias !4
  %t1916 = and i64 %r1915, 1048576
  %cmp1917 = icmp eq i64 %t1916, 0
  br i1 %cmp1917, label %L_8002da16c, label %L_8002d93b0_ft
L_8002d93b0_ft:
  ; @pc 0x8002d93b0 word 0x93407dcc
  %r1918.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1918 = load i64, ptr %r1918.p, align 8, !alias.scope !3, !noalias !4
  %t1919 = lshr i64 %r1918, 31
  %t1920 = and i64 %t1919, 1
  %t1921 = sub i64 0, %t1920
  %t1922 = and i64 %t1921, -4294967296
  %t1923 = and i64 %r1918, 4294967295
  %t1924 = or i64 %t1922, %t1923
  %wp1925 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1924, ptr %wp1925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93b4 word 0x5280050d
  %c1926 = zext i32 40 to i64
  %wp1927 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1926, ptr %wp1927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93b8 word 0x9b2d218c
  %r1928.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1928 = load i64, ptr %r1928.p, align 8, !alias.scope !3, !noalias !4
  %c1929 = trunc i64 %r1928 to i32
  %c1930 = sext i32 %c1929 to i64
  %r1931.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1931 = load i64, ptr %r1931.p, align 8, !alias.scope !3, !noalias !4
  %c1932 = trunc i64 %r1931 to i32
  %c1933 = sext i32 %c1932 to i64
  %t1934 = mul i64 %c1930, %c1933
  %r1935.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1935 = load i64, ptr %r1935.p, align 8, !alias.scope !3, !noalias !4
  %t1936 = add i64 %r1935, %t1934
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1936, ptr %wp1937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93bc word 0xf94656ad
  %r1938.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1938 = load i64, ptr %r1938.p, align 8, !alias.scope !3, !noalias !4
  %t1939 = add i64 %r1938, 3240
  %gmp1940 = inttoptr i64 %t1939 to ptr
  %gml1941 = load i64, ptr %gmp1940, align 1, !alias.scope !4, !noalias !3
  %wp1942 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1941, ptr %wp1942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93c0 word 0xf9400d8c
  %r1943.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1943 = load i64, ptr %r1943.p, align 8, !alias.scope !3, !noalias !4
  %t1944 = add i64 %r1943, 24
  %gmp1945 = inttoptr i64 %t1944 to ptr
  %gml1946 = load i64, ptr %gmp1945, align 1, !alias.scope !4, !noalias !3
  %wp1947 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1946, ptr %wp1947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93c4 word 0xf940018c
  %r1948.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1948 = load i64, ptr %r1948.p, align 8, !alias.scope !3, !noalias !4
  %gmp1949 = inttoptr i64 %r1948 to ptr
  %gml1950 = load i64, ptr %gmp1949, align 1, !alias.scope !4, !noalias !3
  %wp1951 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1950, ptr %wp1951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93c8 word 0x7941098c
  %r1952.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1952 = load i64, ptr %r1952.p, align 8, !alias.scope !3, !noalias !4
  %t1953 = add i64 %r1952, 132
  %gmp1954 = inttoptr i64 %t1953 to ptr
  %gml1955 = load i16, ptr %gmp1954, align 1, !alias.scope !4, !noalias !3
  %c1956 = zext i16 %gml1955 to i64
  %wp1957 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1956, ptr %wp1957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93cc word 0xd37be98c
  %r1958.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1958 = load i64, ptr %r1958.p, align 8, !alias.scope !3, !noalias !4
  %ror1959 = call i64 @llvm.fshr.i64(i64 %r1958, i64 %r1958, i64 59)
  %t1960 = and i64 %ror1959, -32
  %wp1961 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1960, ptr %wp1961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93d0 word 0xb4006f0d
  %r1962.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1962 = load i64, ptr %r1962.p, align 8, !alias.scope !3, !noalias !4
  %cmp1963 = icmp eq i64 %r1962, 0
  br i1 %cmp1963, label %L_8002da1b0, label %L_8002d93d4_ft
L_8002d93d4_ft:
  ; @pc 0x8002d93d4 word 0xf94089ae
  %r1964.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1964 = load i64, ptr %r1964.p, align 8, !alias.scope !3, !noalias !4
  %t1965 = add i64 %r1964, 272
  %gmp1966 = inttoptr i64 %t1965 to ptr
  %gml1967 = load i64, ptr %gmp1966, align 1, !alias.scope !4, !noalias !3
  %wp1968 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1967, ptr %wp1968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93d8 word 0xb400008e
  %r1969.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1969 = load i64, ptr %r1969.p, align 8, !alias.scope !3, !noalias !4
  %cmp1970 = icmp eq i64 %r1969, 0
  br i1 %cmp1970, label %L_8002d93e8, label %L_8002d93dc_ft
L_8002d93dc_ft:
  ; @pc 0x8002d93dc word 0xf94652af
  %r1971.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1971 = load i64, ptr %r1971.p, align 8, !alias.scope !3, !noalias !4
  %t1972 = add i64 %r1971, 3232
  %gmp1973 = inttoptr i64 %t1972 to ptr
  %gml1974 = load i64, ptr %gmp1973, align 1, !alias.scope !4, !noalias !3
  %wp1975 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml1974, ptr %wp1975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93e0 word 0xf9400dce
  %r1976.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1976 = load i64, ptr %r1976.p, align 8, !alias.scope !3, !noalias !4
  %t1977 = add i64 %r1976, 24
  %gmp1978 = inttoptr i64 %t1977 to ptr
  %gml1979 = load i64, ptr %gmp1978, align 1, !alias.scope !4, !noalias !3
  %wp1980 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1979, ptr %wp1980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d93e4 word 0xcb0e01ee
  %r1981.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1981 = load i64, ptr %r1981.p, align 8, !alias.scope !3, !noalias !4
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %t1983 = sub i64 %r1981, %r1982
  %wp1984 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1983, ptr %wp1984, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d93e8
L_8002d93f8_ft:
  ; @pc 0x8002d93f8 word 0x2a1f03eb
  %t2002 = or i32 0, 0
  %c2003 = zext i32 %t2002 to i64
  %wp2004 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2003, ptr %wp2004, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d93fc
L_8002d9424_ft:
  ; @pc 0x8002d9424 word 0xd001b3e8
  %wp2084 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp2084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9428 word 0xaa1603e0
  %r2085.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2085 = load i64, ptr %r2085.p, align 8, !alias.scope !3, !noalias !4
  %t2086 = or i64 0, %r2085
  %wp2087 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2086, ptr %wp2087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d942c word 0xf940ad08
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %t2089 = add i64 %r2088, 344
  %gmp2090 = inttoptr i64 %t2089 to ptr
  %gml2091 = load i64, ptr %gmp2090, align 1, !alias.scope !4, !noalias !3
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2091, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9430 word 0x52800021
  %c2093 = zext i32 1 to i64
  %wp2094 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2093, ptr %wp2094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9434 word 0xaa1703e2
  %r2095.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2095 = load i64, ptr %r2095.p, align 8, !alias.scope !3, !noalias !4
  %t2096 = or i64 0, %r2095
  %wp2097 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2096, ptr %wp2097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9438 word 0xf9400108
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %gmp2099 = inttoptr i64 %r2098 to ptr
  %gml2100 = load i64, ptr %gmp2099, align 1, !alias.scope !4, !noalias !3
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d943c word 0xd63f0100
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %fp2103 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2102, ptr %fp2103, align 8, !alias.scope !3, !noalias !4
  %wp2104 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725440, ptr %wp2104, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9440 word 0x39722aa8
  %r2105.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2105 = load i64, ptr %r2105.p, align 8, !alias.scope !3, !noalias !4
  %t2106 = add i64 %r2105, 3210
  %gmp2107 = inttoptr i64 %t2106 to ptr
  %gml2108 = load i8, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  %c2109 = zext i8 %gml2108 to i64
  %wp2110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2109, ptr %wp2110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9444 word 0x37386ba8
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %t2112 = and i64 %r2111, 128
  %cmp2113 = icmp ne i64 %t2112, 0
  br i1 %cmp2113, label %L_8002da1b8, label %L_8002d9448
L_8002d9474_ft:
  ; @pc 0x8002d9474 word 0x37b80168
  %r2147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2147 = load i64, ptr %r2147.p, align 8, !alias.scope !3, !noalias !4
  %t2148 = and i64 %r2147, 8388608
  %cmp2149 = icmp ne i64 %t2148, 0
  br i1 %cmp2149, label %L_8002d94a0, label %L_8002d9478_ft
L_8002d9478_ft:
  ; @pc 0x8002d9478 word 0x397242a8
  %r2150.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2150 = load i64, ptr %r2150.p, align 8, !alias.scope !3, !noalias !4
  %t2151 = add i64 %r2150, 3216
  %gmp2152 = inttoptr i64 %t2151 to ptr
  %gml2153 = load i8, ptr %gmp2152, align 1, !alias.scope !4, !noalias !3
  %c2154 = zext i8 %gml2153 to i64
  %wp2155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2154, ptr %wp2155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d947c word 0x7100111f
  %r2156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2156 = load i64, ptr %r2156.p, align 8, !alias.scope !3, !noalias !4
  %c2157 = trunc i64 %r2156 to i32
  %t2158 = sub i32 %c2157, 4
  %fn2159 = icmp slt i32 %t2158, 0
  %fz2160 = icmp eq i32 %t2158, 0
  %fc2161 = icmp uge i32 %c2157, 4
  %fx12162 = xor i32 %c2157, 4
  %fx22163 = xor i32 %c2157, %t2158
  %fva2164 = and i32 %fx12162, %fx22163
  %fv2165 = icmp slt i32 %fva2164, 0
  %nz2166 = zext i1 %fn2159 to i64
  %zz2167 = zext i1 %fz2160 to i64
  %cz2168 = zext i1 %fc2161 to i64
  %vz2169 = zext i1 %fv2165 to i64
  %ns2170 = shl i64 %nz2166, 31
  %zs2171 = shl i64 %zz2167, 30
  %cs2172 = shl i64 %cz2168, 29
  %vs2173 = shl i64 %vz2169, 28
  %nzor2174 = or i64 %ns2170, %zs2171
  %cvor2175 = or i64 %cs2172, %vs2173
  %nzcv2176 = or i64 %nzor2174, %cvor2175
  %wp2177 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2176, ptr %wp2177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9480 word 0x54006a61
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %fsh2180 = lshr i64 %r2178, 30
  %ftr2181 = trunc i64 %fsh2180 to i1
  %cond2179 = xor i1 %ftr2181, true
  br i1 %cond2179, label %L_8002da1cc, label %L_8002d9484_ft
L_8002d9484_ft:
  ; @pc 0x8002d9484 word 0xb001b3e8
  %wp2182 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp2182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9488 word 0xaa1603e0
  %r2183.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2183 = load i64, ptr %r2183.p, align 8, !alias.scope !3, !noalias !4
  %t2184 = or i64 0, %r2183
  %wp2185 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2184, ptr %wp2185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d948c word 0xf9470108
  %r2186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2186 = load i64, ptr %r2186.p, align 8, !alias.scope !3, !noalias !4
  %t2187 = add i64 %r2186, 3584
  %gmp2188 = inttoptr i64 %t2187 to ptr
  %gml2189 = load i64, ptr %gmp2188, align 1, !alias.scope !4, !noalias !3
  %wp2190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2189, ptr %wp2190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9490 word 0x52800201
  %c2191 = zext i32 16 to i64
  %wp2192 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2191, ptr %wp2192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9494 word 0xaa1703e2
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %t2194 = or i64 0, %r2193
  %wp2195 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2194, ptr %wp2195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9498 word 0xf9400108
  %r2196.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2196 = load i64, ptr %r2196.p, align 8, !alias.scope !3, !noalias !4
  %gmp2197 = inttoptr i64 %r2196 to ptr
  %gml2198 = load i64, ptr %gmp2197, align 1, !alias.scope !4, !noalias !3
  %wp2199 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2198, ptr %wp2199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d949c word 0xd63f0100
  %r2200.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2200 = load i64, ptr %r2200.p, align 8, !alias.scope !3, !noalias !4
  %fp2201 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2200, ptr %fp2201, align 8, !alias.scope !3, !noalias !4
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725536, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d94a0
L_8002d94c0_ft:
  ; @pc 0x8002d94c0 word 0xf9400349
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %gmp2251 = inttoptr i64 %r2250 to ptr
  %gml2252 = load i64, ptr %gmp2251, align 1, !alias.scope !4, !noalias !3
  %wp2253 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2252, ptr %wp2253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94c4 word 0x910382f3
  %r2254.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2254 = load i64, ptr %r2254.p, align 8, !alias.scope !3, !noalias !4
  %t2255 = add i64 %r2254, 224
  %wp2256 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2255, ptr %wp2256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94c8 word 0x7955552a
  %r2257.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2257 = load i64, ptr %r2257.p, align 8, !alias.scope !3, !noalias !4
  %t2258 = add i64 %r2257, 2730
  %gmp2259 = inttoptr i64 %t2258 to ptr
  %gml2260 = load i16, ptr %gmp2259, align 1, !alias.scope !4, !noalias !3
  %c2261 = zext i16 %gml2260 to i64
  %wp2262 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2261, ptr %wp2262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94cc word 0x4b0a0108
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %c2264 = trunc i64 %r2263 to i32
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %c2266 = trunc i64 %r2265 to i32
  %t2267 = sub i32 %c2264, %c2266
  %c2268 = zext i32 %t2267 to i64
  %wp2269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2268, ptr %wp2269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94d0 word 0xb94a392a
  %r2270.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2270 = load i64, ptr %r2270.p, align 8, !alias.scope !3, !noalias !4
  %t2271 = add i64 %r2270, 2616
  %gmp2272 = inttoptr i64 %t2271 to ptr
  %gml2273 = load i32, ptr %gmp2272, align 1, !alias.scope !4, !noalias !3
  %c2274 = zext i32 %gml2273 to i64
  %wp2275 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2274, ptr %wp2275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94d4 word 0xf9452129
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %t2277 = add i64 %r2276, 2624
  %gmp2278 = inttoptr i64 %t2277 to ptr
  %gml2279 = load i64, ptr %gmp2278, align 1, !alias.scope !4, !noalias !3
  %wp2280 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2279, ptr %wp2280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94d8 word 0x6b08015f
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %c2282 = trunc i64 %r2281 to i32
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %c2284 = trunc i64 %r2283 to i32
  %t2285 = sub i32 %c2282, %c2284
  %fn2286 = icmp slt i32 %t2285, 0
  %fz2287 = icmp eq i32 %t2285, 0
  %fc2288 = icmp uge i32 %c2282, %c2284
  %fx12289 = xor i32 %c2282, %c2284
  %fx22290 = xor i32 %c2282, %t2285
  %fva2291 = and i32 %fx12289, %fx22290
  %fv2292 = icmp slt i32 %fva2291, 0
  %nz2293 = zext i1 %fn2286 to i64
  %zz2294 = zext i1 %fz2287 to i64
  %cz2295 = zext i1 %fc2288 to i64
  %vz2296 = zext i1 %fv2292 to i64
  %ns2297 = shl i64 %nz2293, 31
  %zs2298 = shl i64 %zz2294, 30
  %cs2299 = shl i64 %cz2295, 29
  %vs2300 = shl i64 %vz2296, 28
  %nzor2301 = or i64 %ns2297, %zs2298
  %cvor2302 = or i64 %cs2299, %vs2300
  %nzcv2303 = or i64 %nzor2301, %cvor2302
  %wp2304 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2303, ptr %wp2304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94dc word 0x1a9f8108
  %r2305.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2305 = load i64, ptr %r2305.p, align 8, !alias.scope !3, !noalias !4
  %c2306 = trunc i64 %r2305 to i32
  %r2307.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2307 = load i64, ptr %r2307.p, align 8, !alias.scope !3, !noalias !4
  %fsh2309 = lshr i64 %r2307, 29
  %ftr2310 = trunc i64 %fsh2309 to i1
  %fsh2311 = lshr i64 %r2307, 30
  %ftr2312 = trunc i64 %fsh2311 to i1
  %fnz2313 = xor i1 %ftr2312, true
  %cond2308 = and i1 %ftr2310, %fnz2313
  %sel2314 = select i1 %cond2308, i32 %c2306, i32 0
  %c2315 = zext i32 %sel2314 to i64
  %wp2316 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2315, ptr %wp2316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94e0 word 0x9b3c2508
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %c2318 = trunc i64 %r2317 to i32
  %c2319 = sext i32 %c2318 to i64
  %r2320.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2320 = load i64, ptr %r2320.p, align 8, !alias.scope !3, !noalias !4
  %c2321 = trunc i64 %r2320 to i32
  %c2322 = sext i32 %c2321 to i64
  %t2323 = mul i64 %c2319, %c2322
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %t2325 = add i64 %r2324, %t2323
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2325, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94e4 word 0xf9401108
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = add i64 %r2327, 32
  %gmp2329 = inttoptr i64 %t2328 to ptr
  %gml2330 = load i64, ptr %gmp2329, align 1, !alias.scope !4, !noalias !3
  %wp2331 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2330, ptr %wp2331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94e8 word 0xf81f83a8
  %r2332.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2332 = load i64, ptr %r2332.p, align 8, !alias.scope !3, !noalias !4
  %t2333 = add i64 %r2332, -8
  %r2334.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2334 = load i64, ptr %r2334.p, align 8, !alias.scope !3, !noalias !4
  %gmp2335 = inttoptr i64 %t2333 to ptr
  store i64 %r2334, ptr %gmp2335, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002d94ec word 0x88dffe68
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %atp2337 = inttoptr i64 %r2336 to ptr
  %lda2338 = load atomic i32, ptr %atp2337 acquire, align 4, !alias.scope !4, !noalias !3
  %c2339 = zext i32 %lda2338 to i64
  %wp2340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2339, ptr %wp2340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d94f0 word 0x35000088
  %r2341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2341 = load i64, ptr %r2341.p, align 8, !alias.scope !3, !noalias !4
  %c2342 = trunc i64 %r2341 to i32
  %cmp2343 = icmp ne i32 %c2342, 0
  br i1 %cmp2343, label %L_8002d9500, label %L_8002d94f4
L_8002d9510_ft:
  ; @pc 0x8002d9510 word 0x7200783f
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %c2384 = trunc i64 %r2383 to i32
  %t2385 = and i32 %c2384, 2147483647
  %fn2386 = icmp slt i32 %t2385, 0
  %fz2387 = icmp eq i32 %t2385, 0
  %nz2388 = zext i1 %fn2386 to i64
  %zz2389 = zext i1 %fz2387 to i64
  %ns2390 = shl i64 %nz2388, 31
  %zs2391 = shl i64 %zz2389, 30
  %nzcv2392 = or i64 %ns2390, %zs2391
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9514 word 0x54005600
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %fsh2396 = lshr i64 %r2394, 30
  %cond2395 = trunc i64 %fsh2396 to i1
  br i1 %cond2395, label %L_8002d9fd4, label %L_8002d9518_ft
L_8002d9518_ft:
  ; @pc 0x8002d9518 word 0x37f856a1
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = and i64 %r2397, 2147483648
  %cmp2399 = icmp ne i64 %t2398, 0
  br i1 %cmp2399, label %L_8002d9fec, label %L_8002d951c_ft
L_8002d951c_ft:
  ; @pc 0x8002d951c word 0xf94002e8
  %r2400.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2400 = load i64, ptr %r2400.p, align 8, !alias.scope !3, !noalias !4
  %gmp2401 = inttoptr i64 %r2400 to ptr
  %gml2402 = load i64, ptr %gmp2401, align 1, !alias.scope !4, !noalias !3
  %wp2403 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2402, ptr %wp2403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9520 word 0x9001b429
  %wp2404 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp2404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9524 word 0xf9400d08
  %r2405.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2405 = load i64, ptr %r2405.p, align 8, !alias.scope !3, !noalias !4
  %t2406 = add i64 %r2405, 24
  %gmp2407 = inttoptr i64 %t2406 to ptr
  %gml2408 = load i64, ptr %gmp2407, align 1, !alias.scope !4, !noalias !3
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2408, ptr %wp2409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9528 word 0xf9477929
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %t2411 = add i64 %r2410, 3824
  %gmp2412 = inttoptr i64 %t2411 to ptr
  %gml2413 = load i64, ptr %gmp2412, align 1, !alias.scope !4, !noalias !3
  %wp2414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2413, ptr %wp2414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d952c word 0xeb09011f
  %r2415.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2415 = load i64, ptr %r2415.p, align 8, !alias.scope !3, !noalias !4
  %r2416.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2416 = load i64, ptr %r2416.p, align 8, !alias.scope !3, !noalias !4
  %t2417 = sub i64 %r2415, %r2416
  %fn2418 = icmp slt i64 %t2417, 0
  %fz2419 = icmp eq i64 %t2417, 0
  %fc2420 = icmp uge i64 %r2415, %r2416
  %fx12421 = xor i64 %r2415, %r2416
  %fx22422 = xor i64 %r2415, %t2417
  %fva2423 = and i64 %fx12421, %fx22422
  %fv2424 = icmp slt i64 %fva2423, 0
  %nz2425 = zext i1 %fn2418 to i64
  %zz2426 = zext i1 %fz2419 to i64
  %cz2427 = zext i1 %fc2420 to i64
  %vz2428 = zext i1 %fv2424 to i64
  %ns2429 = shl i64 %nz2425, 31
  %zs2430 = shl i64 %zz2426, 30
  %cs2431 = shl i64 %cz2427, 29
  %vs2432 = shl i64 %vz2428, 28
  %nzor2433 = or i64 %ns2429, %zs2430
  %cvor2434 = or i64 %cs2431, %vs2432
  %nzcv2435 = or i64 %nzor2433, %cvor2434
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9530 word 0x54006001
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %fsh2439 = lshr i64 %r2437, 30
  %ftr2440 = trunc i64 %fsh2439 to i1
  %cond2438 = xor i1 %ftr2440, true
  br i1 %cond2438, label %L_8002da130, label %L_8002d9534_ft
L_8002d9534_ft:
  ; @pc 0x8002d9534 word 0xf9400188
  %r2441.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2441 = load i64, ptr %r2441.p, align 8, !alias.scope !3, !noalias !4
  %gmp2442 = inttoptr i64 %r2441 to ptr
  %gml2443 = load i64, ptr %gmp2442, align 1, !alias.scope !4, !noalias !3
  %wp2444 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2443, ptr %wp2444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9538 word 0x910342f6
  %r2445.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2445 = load i64, ptr %r2445.p, align 8, !alias.scope !3, !noalias !4
  %t2446 = add i64 %r2445, 208
  %wp2447 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2446, ptr %wp2447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d953c word 0xaa1603e0
  %r2448.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2448 = load i64, ptr %r2448.p, align 8, !alias.scope !3, !noalias !4
  %t2449 = or i64 0, %r2448
  %wp2450 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2449, ptr %wp2450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9540 word 0xd63f0100
  %r2451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2451 = load i64, ptr %r2451.p, align 8, !alias.scope !3, !noalias !4
  %fp2452 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2451, ptr %fp2452, align 8, !alias.scope !3, !noalias !4
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725700, ptr %wp2453, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9544 word 0xd001b3e8
  %wp2454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp2454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9548 word 0x39439ae1
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %t2456 = add i64 %r2455, 230
  %gmp2457 = inttoptr i64 %t2456 to ptr
  %gml2458 = load i8, ptr %gmp2457, align 1, !alias.scope !4, !noalias !3
  %c2459 = zext i8 %gml2458 to i64
  %wp2460 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2459, ptr %wp2460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d954c word 0xaa1603e0
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %t2462 = or i64 0, %r2461
  %wp2463 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2462, ptr %wp2463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9550 word 0xf9419508
  %r2464.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2464 = load i64, ptr %r2464.p, align 8, !alias.scope !3, !noalias !4
  %t2465 = add i64 %r2464, 808
  %gmp2466 = inttoptr i64 %t2465 to ptr
  %gml2467 = load i64, ptr %gmp2466, align 1, !alias.scope !4, !noalias !3
  %wp2468 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2467, ptr %wp2468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9554 word 0x2a1f03e2
  %t2469 = or i32 0, 0
  %c2470 = zext i32 %t2469 to i64
  %wp2471 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2470, ptr %wp2471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9558 word 0xf9400108
  %r2472.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2472 = load i64, ptr %r2472.p, align 8, !alias.scope !3, !noalias !4
  %gmp2473 = inttoptr i64 %r2472 to ptr
  %gml2474 = load i64, ptr %gmp2473, align 1, !alias.scope !4, !noalias !3
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d955c word 0xd63f0100
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %fp2477 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2476, ptr %fp2477, align 8, !alias.scope !3, !noalias !4
  %wp2478 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725728, ptr %wp2478, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9560 word 0xd001b3e8
  %wp2479 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp2479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9564 word 0x7941cae1
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %t2481 = add i64 %r2480, 228
  %gmp2482 = inttoptr i64 %t2481 to ptr
  %gml2483 = load i16, ptr %gmp2482, align 1, !alias.scope !4, !noalias !3
  %c2484 = zext i16 %gml2483 to i64
  %wp2485 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2484, ptr %wp2485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9568 word 0xaa1603e0
  %r2486.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2486 = load i64, ptr %r2486.p, align 8, !alias.scope !3, !noalias !4
  %t2487 = or i64 0, %r2486
  %wp2488 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2487, ptr %wp2488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d956c word 0xf9419108
  %r2489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2489 = load i64, ptr %r2489.p, align 8, !alias.scope !3, !noalias !4
  %t2490 = add i64 %r2489, 800
  %gmp2491 = inttoptr i64 %t2490 to ptr
  %gml2492 = load i64, ptr %gmp2491, align 1, !alias.scope !4, !noalias !3
  %wp2493 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2492, ptr %wp2493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9570 word 0x52800022
  %c2494 = zext i32 1 to i64
  %wp2495 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2494, ptr %wp2495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9574 word 0xf9400108
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %gmp2497 = inttoptr i64 %r2496 to ptr
  %gml2498 = load i64, ptr %gmp2497, align 1, !alias.scope !4, !noalias !3
  %wp2499 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2498, ptr %wp2499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9578 word 0xd63f0100
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %fp2501 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2500, ptr %fp2501, align 8, !alias.scope !3, !noalias !4
  %wp2502 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362725756, ptr %wp2502, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d957c word 0xd503201f
  br label %L_8002d9580
L_8002d958c_ft:
  ; @pc 0x8002d958c word 0x17ffffda
  br label %L_8002d94f4
L_8002d9598_ft:
  ; @pc 0x8002d9598 word 0xb94072e8
  %r2536.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2536 = load i64, ptr %r2536.p, align 8, !alias.scope !3, !noalias !4
  %t2537 = add i64 %r2536, 112
  %gmp2538 = inttoptr i64 %t2537 to ptr
  %gml2539 = load i32, ptr %gmp2538, align 1, !alias.scope !4, !noalias !3
  %c2540 = zext i32 %gml2539 to i64
  %wp2541 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2540, ptr %wp2541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d959c word 0x795556a9
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %t2543 = add i64 %r2542, 2730
  %gmp2544 = inttoptr i64 %t2543 to ptr
  %gml2545 = load i16, ptr %gmp2544, align 1, !alias.scope !4, !noalias !3
  %c2546 = zext i16 %gml2545 to i64
  %wp2547 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2546, ptr %wp2547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95a0 word 0x4b09010a
  %r2548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2548 = load i64, ptr %r2548.p, align 8, !alias.scope !3, !noalias !4
  %c2549 = trunc i64 %r2548 to i32
  %r2550.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2550 = load i64, ptr %r2550.p, align 8, !alias.scope !3, !noalias !4
  %c2551 = trunc i64 %r2550 to i32
  %t2552 = sub i32 %c2549, %c2551
  %c2553 = zext i32 %t2552 to i64
  %wp2554 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2553, ptr %wp2554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95a4 word 0xb94a3aa9
  %r2555.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2555 = load i64, ptr %r2555.p, align 8, !alias.scope !3, !noalias !4
  %t2556 = add i64 %r2555, 2616
  %gmp2557 = inttoptr i64 %t2556 to ptr
  %gml2558 = load i32, ptr %gmp2557, align 1, !alias.scope !4, !noalias !3
  %c2559 = zext i32 %gml2558 to i64
  %wp2560 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2559, ptr %wp2560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95a8 word 0xf94522a8
  %r2561.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2561 = load i64, ptr %r2561.p, align 8, !alias.scope !3, !noalias !4
  %t2562 = add i64 %r2561, 2624
  %gmp2563 = inttoptr i64 %t2562 to ptr
  %gml2564 = load i64, ptr %gmp2563, align 1, !alias.scope !4, !noalias !3
  %wp2565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2564, ptr %wp2565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95ac word 0x6b0a013f
  %r2566.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2566 = load i64, ptr %r2566.p, align 8, !alias.scope !3, !noalias !4
  %c2567 = trunc i64 %r2566 to i32
  %r2568.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2568 = load i64, ptr %r2568.p, align 8, !alias.scope !3, !noalias !4
  %c2569 = trunc i64 %r2568 to i32
  %t2570 = sub i32 %c2567, %c2569
  %fn2571 = icmp slt i32 %t2570, 0
  %fz2572 = icmp eq i32 %t2570, 0
  %fc2573 = icmp uge i32 %c2567, %c2569
  %fx12574 = xor i32 %c2567, %c2569
  %fx22575 = xor i32 %c2567, %t2570
  %fva2576 = and i32 %fx12574, %fx22575
  %fv2577 = icmp slt i32 %fva2576, 0
  %nz2578 = zext i1 %fn2571 to i64
  %zz2579 = zext i1 %fz2572 to i64
  %cz2580 = zext i1 %fc2573 to i64
  %vz2581 = zext i1 %fv2577 to i64
  %ns2582 = shl i64 %nz2578, 31
  %zs2583 = shl i64 %zz2579, 30
  %cs2584 = shl i64 %cz2580, 29
  %vs2585 = shl i64 %vz2581, 28
  %nzor2586 = or i64 %ns2582, %zs2583
  %cvor2587 = or i64 %cs2584, %vs2585
  %nzcv2588 = or i64 %nzor2586, %cvor2587
  %wp2589 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2588, ptr %wp2589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95b0 word 0x1a9f814d
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %c2591 = trunc i64 %r2590 to i32
  %r2592.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2592 = load i64, ptr %r2592.p, align 8, !alias.scope !3, !noalias !4
  %fsh2594 = lshr i64 %r2592, 29
  %ftr2595 = trunc i64 %fsh2594 to i1
  %fsh2596 = lshr i64 %r2592, 30
  %ftr2597 = trunc i64 %fsh2596 to i1
  %fnz2598 = xor i1 %ftr2597, true
  %cond2593 = and i1 %ftr2595, %fnz2598
  %sel2599 = select i1 %cond2593, i32 %c2591, i32 0
  %c2600 = zext i32 %sel2599 to i64
  %wp2601 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2600, ptr %wp2601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95b4 word 0x9b3021ab
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %c2603 = trunc i64 %r2602 to i32
  %c2604 = sext i32 %c2603 to i64
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 128
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %c2606 = trunc i64 %r2605 to i32
  %c2607 = sext i32 %c2606 to i64
  %t2608 = mul i64 %c2604, %c2607
  %r2609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2609 = load i64, ptr %r2609.p, align 8, !alias.scope !3, !noalias !4
  %t2610 = add i64 %r2609, %t2608
  %wp2611 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2610, ptr %wp2611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95b8 word 0xb8404d6e
  %r2612.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2612 = load i64, ptr %r2612.p, align 8, !alias.scope !3, !noalias !4
  %t2613 = add i64 %r2612, 4
  %gmp2614 = inttoptr i64 %t2613 to ptr
  %gml2615 = load i32, ptr %gmp2614, align 1, !alias.scope !4, !noalias !3
  %c2616 = zext i32 %gml2615 to i64
  %wp2617 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2613, ptr %wp2617, align 8, !alias.scope !3, !noalias !4
  %wp2618 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2616, ptr %wp2618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95bc word 0x3600006e
  %r2619.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2619 = load i64, ptr %r2619.p, align 8, !alias.scope !3, !noalias !4
  %t2620 = and i64 %r2619, 1
  %cmp2621 = icmp eq i64 %t2620, 0
  br i1 %cmp2621, label %L_8002d95c8, label %L_8002d95c0_ft
L_8002d95c0_ft:
  ; @pc 0x8002d95c0 word 0xb940016e
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %gmp2623 = inttoptr i64 %r2622 to ptr
  %gml2624 = load i32, ptr %gmp2623, align 1, !alias.scope !4, !noalias !3
  %c2625 = zext i32 %gml2624 to i64
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95c4 word 0x3608154e
  %r2627.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2627 = load i64, ptr %r2627.p, align 8, !alias.scope !3, !noalias !4
  %t2628 = and i64 %r2627, 2
  %cmp2629 = icmp eq i64 %t2628, 0
  br i1 %cmp2629, label %L_8002d986c, label %L_8002d95c8
L_8002d95dc_ft:
  ; @pc 0x8002d95dc word 0xd001b3e8
  %wp2670 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp2670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95e0 word 0xf9405f00
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %t2672 = add i64 %r2671, 184
  %gmp2673 = inttoptr i64 %t2672 to ptr
  %gml2674 = load i64, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  %wp2675 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2674, ptr %wp2675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95e4 word 0x52800021
  %c2676 = zext i32 1 to i64
  %wp2677 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2676, ptr %wp2677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95e8 word 0xf940b108
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %t2679 = add i64 %r2678, 352
  %gmp2680 = inttoptr i64 %t2679 to ptr
  %gml2681 = load i64, ptr %gmp2680, align 1, !alias.scope !4, !noalias !3
  %wp2682 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2681, ptr %wp2682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95ec word 0xa94f4ff4
  %r2683.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2683 = load i64, ptr %r2683.p, align 8, !alias.scope !3, !noalias !4
  %t2684 = add i64 %r2683, 240
  %t2685 = add i64 %t2684, 8
  %gmp2686 = inttoptr i64 %t2684 to ptr
  %gml2687 = load i64, ptr %gmp2686, align 1, !alias.scope !4, !noalias !3
  %gmp2688 = inttoptr i64 %t2685 to ptr
  %gml2689 = load i64, ptr %gmp2688, align 1, !alias.scope !4, !noalias !3
  %wp2690 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2687, ptr %wp2690, align 8, !alias.scope !3, !noalias !4
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2689, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95f0 word 0xa94e57f6
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %t2693 = add i64 %r2692, 224
  %t2694 = add i64 %t2693, 8
  %gmp2695 = inttoptr i64 %t2693 to ptr
  %gml2696 = load i64, ptr %gmp2695, align 1, !alias.scope !4, !noalias !3
  %gmp2697 = inttoptr i64 %t2694 to ptr
  %gml2698 = load i64, ptr %gmp2697, align 1, !alias.scope !4, !noalias !3
  %wp2699 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2696, ptr %wp2699, align 8, !alias.scope !3, !noalias !4
  %wp2700 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2698, ptr %wp2700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95f4 word 0xf9400102
  %r2701.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2701 = load i64, ptr %r2701.p, align 8, !alias.scope !3, !noalias !4
  %gmp2702 = inttoptr i64 %r2701 to ptr
  %gml2703 = load i64, ptr %gmp2702, align 1, !alias.scope !4, !noalias !3
  %wp2704 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml2703, ptr %wp2704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95f8 word 0xa94d5ff8
  %r2705.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2705 = load i64, ptr %r2705.p, align 8, !alias.scope !3, !noalias !4
  %t2706 = add i64 %r2705, 208
  %t2707 = add i64 %t2706, 8
  %gmp2708 = inttoptr i64 %t2706 to ptr
  %gml2709 = load i64, ptr %gmp2708, align 1, !alias.scope !4, !noalias !3
  %gmp2710 = inttoptr i64 %t2707 to ptr
  %gml2711 = load i64, ptr %gmp2710, align 1, !alias.scope !4, !noalias !3
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2709, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  %wp2713 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2711, ptr %wp2713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d95fc word 0xa94c67fa
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %t2715 = add i64 %r2714, 192
  %t2716 = add i64 %t2715, 8
  %gmp2717 = inttoptr i64 %t2715 to ptr
  %gml2718 = load i64, ptr %gmp2717, align 1, !alias.scope !4, !noalias !3
  %gmp2719 = inttoptr i64 %t2716 to ptr
  %gml2720 = load i64, ptr %gmp2719, align 1, !alias.scope !4, !noalias !3
  %wp2721 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2718, ptr %wp2721, align 8, !alias.scope !3, !noalias !4
  %wp2722 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2720, ptr %wp2722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9600 word 0xa94b6ffc
  %r2723.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2723 = load i64, ptr %r2723.p, align 8, !alias.scope !3, !noalias !4
  %t2724 = add i64 %r2723, 176
  %t2725 = add i64 %t2724, 8
  %gmp2726 = inttoptr i64 %t2724 to ptr
  %gml2727 = load i64, ptr %gmp2726, align 1, !alias.scope !4, !noalias !3
  %gmp2728 = inttoptr i64 %t2725 to ptr
  %gml2729 = load i64, ptr %gmp2728, align 1, !alias.scope !4, !noalias !3
  %wp2730 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2727, ptr %wp2730, align 8, !alias.scope !3, !noalias !4
  %wp2731 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml2729, ptr %wp2731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9604 word 0xa94a7bfd
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %t2733 = add i64 %r2732, 160
  %t2734 = add i64 %t2733, 8
  %gmp2735 = inttoptr i64 %t2733 to ptr
  %gml2736 = load i64, ptr %gmp2735, align 1, !alias.scope !4, !noalias !3
  %gmp2737 = inttoptr i64 %t2734 to ptr
  %gml2738 = load i64, ptr %gmp2737, align 1, !alias.scope !4, !noalias !3
  %wp2739 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml2736, ptr %wp2739, align 8, !alias.scope !3, !noalias !4
  %wp2740 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml2738, ptr %wp2740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9608 word 0x910403ff
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %t2742 = add i64 %r2741, 256
  %wp2743 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2742, ptr %wp2743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d960c word 0xd61f0040
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 16
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %pcp8361 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2744, ptr %pcp8361, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8002d9614_ft:
  ; @pc 0x8002d9614 word 0x93407dcc
  %r2748.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2748 = load i64, ptr %r2748.p, align 8, !alias.scope !3, !noalias !4
  %t2749 = lshr i64 %r2748, 31
  %t2750 = and i64 %t2749, 1
  %t2751 = sub i64 0, %t2750
  %t2752 = and i64 %t2751, -4294967296
  %t2753 = and i64 %r2748, 4294967295
  %t2754 = or i64 %t2752, %t2753
  %wp2755 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2754, ptr %wp2755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9618 word 0x5280050d
  %c2756 = zext i32 40 to i64
  %wp2757 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2756, ptr %wp2757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d961c word 0x9b2d218c
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %c2759 = trunc i64 %r2758 to i32
  %c2760 = sext i32 %c2759 to i64
  %r2761.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2761 = load i64, ptr %r2761.p, align 8, !alias.scope !3, !noalias !4
  %c2762 = trunc i64 %r2761 to i32
  %c2763 = sext i32 %c2762 to i64
  %t2764 = mul i64 %c2760, %c2763
  %r2765.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2765 = load i64, ptr %r2765.p, align 8, !alias.scope !3, !noalias !4
  %t2766 = add i64 %r2765, %t2764
  %wp2767 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2766, ptr %wp2767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9620 word 0xf94656ad
  %r2768.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2768 = load i64, ptr %r2768.p, align 8, !alias.scope !3, !noalias !4
  %t2769 = add i64 %r2768, 3240
  %gmp2770 = inttoptr i64 %t2769 to ptr
  %gml2771 = load i64, ptr %gmp2770, align 1, !alias.scope !4, !noalias !3
  %wp2772 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2771, ptr %wp2772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9624 word 0xf9400d8c
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %t2774 = add i64 %r2773, 24
  %gmp2775 = inttoptr i64 %t2774 to ptr
  %gml2776 = load i64, ptr %gmp2775, align 1, !alias.scope !4, !noalias !3
  %wp2777 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2776, ptr %wp2777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9628 word 0xf940018c
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %gmp2779 = inttoptr i64 %r2778 to ptr
  %gml2780 = load i64, ptr %gmp2779, align 1, !alias.scope !4, !noalias !3
  %wp2781 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2780, ptr %wp2781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d962c word 0x7941098c
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %t2783 = add i64 %r2782, 132
  %gmp2784 = inttoptr i64 %t2783 to ptr
  %gml2785 = load i16, ptr %gmp2784, align 1, !alias.scope !4, !noalias !3
  %c2786 = zext i16 %gml2785 to i64
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9630 word 0xd37be98c
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %ror2789 = call i64 @llvm.fshr.i64(i64 %r2788, i64 %r2788, i64 59)
  %t2790 = and i64 %ror2789, -32
  %wp2791 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2790, ptr %wp2791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9634 word 0xb400538d
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %cmp2793 = icmp eq i64 %r2792, 0
  br i1 %cmp2793, label %L_8002da0a4, label %L_8002d9638_ft
L_8002d9638_ft:
  ; @pc 0x8002d9638 word 0xf94089ae
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 272
  %gmp2796 = inttoptr i64 %t2795 to ptr
  %gml2797 = load i64, ptr %gmp2796, align 1, !alias.scope !4, !noalias !3
  %wp2798 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2797, ptr %wp2798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d963c word 0xb400008e
  %r2799.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2799 = load i64, ptr %r2799.p, align 8, !alias.scope !3, !noalias !4
  %cmp2800 = icmp eq i64 %r2799, 0
  br i1 %cmp2800, label %L_8002d964c, label %L_8002d9640_ft
L_8002d9640_ft:
  ; @pc 0x8002d9640 word 0xf94652af
  %r2801.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2801 = load i64, ptr %r2801.p, align 8, !alias.scope !3, !noalias !4
  %t2802 = add i64 %r2801, 3232
  %gmp2803 = inttoptr i64 %t2802 to ptr
  %gml2804 = load i64, ptr %gmp2803, align 1, !alias.scope !4, !noalias !3
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml2804, ptr %wp2805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9644 word 0xf9400dce
  %r2806.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2806 = load i64, ptr %r2806.p, align 8, !alias.scope !3, !noalias !4
  %t2807 = add i64 %r2806, 24
  %gmp2808 = inttoptr i64 %t2807 to ptr
  %gml2809 = load i64, ptr %gmp2808, align 1, !alias.scope !4, !noalias !3
  %wp2810 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2809, ptr %wp2810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9648 word 0xcb0e01ee
  %r2811.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2811 = load i64, ptr %r2811.p, align 8, !alias.scope !3, !noalias !4
  %r2812.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2812 = load i64, ptr %r2812.p, align 8, !alias.scope !3, !noalias !4
  %t2813 = sub i64 %r2811, %r2812
  %wp2814 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t2813, ptr %wp2814, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d964c
L_8002d965c_ft:
  ; @pc 0x8002d965c word 0x2a1f03eb
  %t2832 = or i32 0, 0
  %c2833 = zext i32 %t2832 to i64
  %wp2834 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2833, ptr %wp2834, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9660
L_8002d9688_ft:
  ; @pc 0x8002d9688 word 0xd001b3e8
  %wp2910 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp2910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d968c word 0xaa1603e0
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %t2912 = or i64 0, %r2911
  %wp2913 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2912, ptr %wp2913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9690 word 0xf940ad08
  %r2914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2914 = load i64, ptr %r2914.p, align 8, !alias.scope !3, !noalias !4
  %t2915 = add i64 %r2914, 344
  %gmp2916 = inttoptr i64 %t2915 to ptr
  %gml2917 = load i64, ptr %gmp2916, align 1, !alias.scope !4, !noalias !3
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2917, ptr %wp2918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9694 word 0x52800021
  %c2919 = zext i32 1 to i64
  %wp2920 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2919, ptr %wp2920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9698 word 0xaa1703e2
  %r2921.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2921 = load i64, ptr %r2921.p, align 8, !alias.scope !3, !noalias !4
  %t2922 = or i64 0, %r2921
  %wp2923 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2922, ptr %wp2923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d969c word 0xf9400108
  %r2924.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2924 = load i64, ptr %r2924.p, align 8, !alias.scope !3, !noalias !4
  %gmp2925 = inttoptr i64 %r2924 to ptr
  %gml2926 = load i64, ptr %gmp2925, align 1, !alias.scope !4, !noalias !3
  %wp2927 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2926, ptr %wp2927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96a0 word 0xd63f0100
  %r2928.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2928 = load i64, ptr %r2928.p, align 8, !alias.scope !3, !noalias !4
  %fp2929 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2928, ptr %fp2929, align 8, !alias.scope !3, !noalias !4
  %wp2930 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726052, ptr %wp2930, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d96a4 word 0x39722aa8
  %r2931.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2931 = load i64, ptr %r2931.p, align 8, !alias.scope !3, !noalias !4
  %t2932 = add i64 %r2931, 3210
  %gmp2933 = inttoptr i64 %t2932 to ptr
  %gml2934 = load i8, ptr %gmp2933, align 1, !alias.scope !4, !noalias !3
  %c2935 = zext i8 %gml2934 to i64
  %wp2936 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2935, ptr %wp2936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96a8 word 0x37385028
  %r2937.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2937 = load i64, ptr %r2937.p, align 8, !alias.scope !3, !noalias !4
  %t2938 = and i64 %r2937, 128
  %cmp2939 = icmp ne i64 %t2938, 0
  br i1 %cmp2939, label %L_8002da0ac, label %L_8002d96ac
L_8002d96d8_ft:
  ; @pc 0x8002d96d8 word 0x37b80168
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = and i64 %r2974, 8388608
  %cmp2976 = icmp ne i64 %t2975, 0
  br i1 %cmp2976, label %L_8002d9704, label %L_8002d96dc_ft
L_8002d96dc_ft:
  ; @pc 0x8002d96dc word 0x397242a8
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %t2978 = add i64 %r2977, 3216
  %gmp2979 = inttoptr i64 %t2978 to ptr
  %gml2980 = load i8, ptr %gmp2979, align 1, !alias.scope !4, !noalias !3
  %c2981 = zext i8 %gml2980 to i64
  %wp2982 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2981, ptr %wp2982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96e0 word 0x7100111f
  %r2983.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2983 = load i64, ptr %r2983.p, align 8, !alias.scope !3, !noalias !4
  %c2984 = trunc i64 %r2983 to i32
  %t2985 = sub i32 %c2984, 4
  %fn2986 = icmp slt i32 %t2985, 0
  %fz2987 = icmp eq i32 %t2985, 0
  %fc2988 = icmp uge i32 %c2984, 4
  %fx12989 = xor i32 %c2984, 4
  %fx22990 = xor i32 %c2984, %t2985
  %fva2991 = and i32 %fx12989, %fx22990
  %fv2992 = icmp slt i32 %fva2991, 0
  %nz2993 = zext i1 %fn2986 to i64
  %zz2994 = zext i1 %fz2987 to i64
  %cz2995 = zext i1 %fc2988 to i64
  %vz2996 = zext i1 %fv2992 to i64
  %ns2997 = shl i64 %nz2993, 31
  %zs2998 = shl i64 %zz2994, 30
  %cs2999 = shl i64 %cz2995, 29
  %vs3000 = shl i64 %vz2996, 28
  %nzor3001 = or i64 %ns2997, %zs2998
  %cvor3002 = or i64 %cs2999, %vs3000
  %nzcv3003 = or i64 %nzor3001, %cvor3002
  %wp3004 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3003, ptr %wp3004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96e4 word 0x54004f21
  %r3005.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3005 = load i64, ptr %r3005.p, align 8, !alias.scope !3, !noalias !4
  %fsh3007 = lshr i64 %r3005, 30
  %ftr3008 = trunc i64 %fsh3007 to i1
  %cond3006 = xor i1 %ftr3008, true
  br i1 %cond3006, label %L_8002da0c8, label %L_8002d96e8_ft
L_8002d96e8_ft:
  ; @pc 0x8002d96e8 word 0xb001b3e8
  %wp3009 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp3009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96ec word 0xaa1603e0
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %t3011 = or i64 0, %r3010
  %wp3012 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3011, ptr %wp3012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96f0 word 0xf9470108
  %r3013.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3013 = load i64, ptr %r3013.p, align 8, !alias.scope !3, !noalias !4
  %t3014 = add i64 %r3013, 3584
  %gmp3015 = inttoptr i64 %t3014 to ptr
  %gml3016 = load i64, ptr %gmp3015, align 1, !alias.scope !4, !noalias !3
  %wp3017 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3016, ptr %wp3017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96f4 word 0x52800201
  %c3018 = zext i32 16 to i64
  %wp3019 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3018, ptr %wp3019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96f8 word 0xaa1703e2
  %r3020.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3020 = load i64, ptr %r3020.p, align 8, !alias.scope !3, !noalias !4
  %t3021 = or i64 0, %r3020
  %wp3022 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3021, ptr %wp3022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d96fc word 0xf9400108
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %gmp3024 = inttoptr i64 %r3023 to ptr
  %gml3025 = load i64, ptr %gmp3024, align 1, !alias.scope !4, !noalias !3
  %wp3026 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3025, ptr %wp3026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9700 word 0xd63f0100
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %fp3028 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3027, ptr %fp3028, align 8, !alias.scope !3, !noalias !4
  %wp3029 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726148, ptr %wp3029, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9704
L_8002d970c_ft:
  ; @pc 0x8002d970c word 0x2a1c03f0
  %r3039.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3039 = load i64, ptr %r3039.p, align 8, !alias.scope !3, !noalias !4
  %c3040 = trunc i64 %r3039 to i32
  %t3041 = or i32 0, %c3040
  %c3042 = zext i32 %t3041 to i64
  %wp3043 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3042, ptr %wp3043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9710 word 0x52800039
  %c3044 = zext i32 1 to i64
  %wp3045 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c3044, ptr %wp3045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9714 word 0xf940168c
  %r3046.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3046 = load i64, ptr %r3046.p, align 8, !alias.scope !3, !noalias !4
  %t3047 = add i64 %r3046, 40
  %gmp3048 = inttoptr i64 %t3047 to ptr
  %gml3049 = load i64, ptr %gmp3048, align 1, !alias.scope !4, !noalias !3
  %wp3050 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3049, ptr %wp3050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9718 word 0xb4ffd68c
  %r3051.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3051 = load i64, ptr %r3051.p, align 8, !alias.scope !3, !noalias !4
  %cmp3052 = icmp eq i64 %r3051, 0
  br i1 %cmp3052, label %L_8002d91e8, label %L_8002d971c_ft
L_8002d971c_ft:
  ; @pc 0x8002d971c word 0x17fffecd
  br label %L_8002d9250
L_8002d9728_ft:
  ; @pc 0x8002d9728 word 0xb9407188
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %t3063 = add i64 %r3062, 112
  %gmp3064 = inttoptr i64 %t3063 to ptr
  %gml3065 = load i32, ptr %gmp3064, align 1, !alias.scope !4, !noalias !3
  %c3066 = zext i32 %gml3065 to i64
  %wp3067 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3066, ptr %wp3067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d972c word 0x795556a9
  %r3068.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3068 = load i64, ptr %r3068.p, align 8, !alias.scope !3, !noalias !4
  %t3069 = add i64 %r3068, 2730
  %gmp3070 = inttoptr i64 %t3069 to ptr
  %gml3071 = load i16, ptr %gmp3070, align 1, !alias.scope !4, !noalias !3
  %c3072 = zext i16 %gml3071 to i64
  %wp3073 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3072, ptr %wp3073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9730 word 0x4b09010a
  %r3074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3074 = load i64, ptr %r3074.p, align 8, !alias.scope !3, !noalias !4
  %c3075 = trunc i64 %r3074 to i32
  %r3076.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3076 = load i64, ptr %r3076.p, align 8, !alias.scope !3, !noalias !4
  %c3077 = trunc i64 %r3076 to i32
  %t3078 = sub i32 %c3075, %c3077
  %c3079 = zext i32 %t3078 to i64
  %wp3080 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3079, ptr %wp3080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9734 word 0xb94a3aa9
  %r3081.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3081 = load i64, ptr %r3081.p, align 8, !alias.scope !3, !noalias !4
  %t3082 = add i64 %r3081, 2616
  %gmp3083 = inttoptr i64 %t3082 to ptr
  %gml3084 = load i32, ptr %gmp3083, align 1, !alias.scope !4, !noalias !3
  %c3085 = zext i32 %gml3084 to i64
  %wp3086 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3085, ptr %wp3086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9738 word 0xf94522a8
  %r3087.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3087 = load i64, ptr %r3087.p, align 8, !alias.scope !3, !noalias !4
  %t3088 = add i64 %r3087, 2624
  %gmp3089 = inttoptr i64 %t3088 to ptr
  %gml3090 = load i64, ptr %gmp3089, align 1, !alias.scope !4, !noalias !3
  %wp3091 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3090, ptr %wp3091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d973c word 0x6b0a013f
  %r3092.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3092 = load i64, ptr %r3092.p, align 8, !alias.scope !3, !noalias !4
  %c3093 = trunc i64 %r3092 to i32
  %r3094.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3094 = load i64, ptr %r3094.p, align 8, !alias.scope !3, !noalias !4
  %c3095 = trunc i64 %r3094 to i32
  %t3096 = sub i32 %c3093, %c3095
  %fn3097 = icmp slt i32 %t3096, 0
  %fz3098 = icmp eq i32 %t3096, 0
  %fc3099 = icmp uge i32 %c3093, %c3095
  %fx13100 = xor i32 %c3093, %c3095
  %fx23101 = xor i32 %c3093, %t3096
  %fva3102 = and i32 %fx13100, %fx23101
  %fv3103 = icmp slt i32 %fva3102, 0
  %nz3104 = zext i1 %fn3097 to i64
  %zz3105 = zext i1 %fz3098 to i64
  %cz3106 = zext i1 %fc3099 to i64
  %vz3107 = zext i1 %fv3103 to i64
  %ns3108 = shl i64 %nz3104, 31
  %zs3109 = shl i64 %zz3105, 30
  %cs3110 = shl i64 %cz3106, 29
  %vs3111 = shl i64 %vz3107, 28
  %nzor3112 = or i64 %ns3108, %zs3109
  %cvor3113 = or i64 %cs3110, %vs3111
  %nzcv3114 = or i64 %nzor3112, %cvor3113
  %wp3115 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3114, ptr %wp3115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9740 word 0x1a9f814e
  %r3116.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3116 = load i64, ptr %r3116.p, align 8, !alias.scope !3, !noalias !4
  %c3117 = trunc i64 %r3116 to i32
  %r3118.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3118 = load i64, ptr %r3118.p, align 8, !alias.scope !3, !noalias !4
  %fsh3120 = lshr i64 %r3118, 29
  %ftr3121 = trunc i64 %fsh3120 to i1
  %fsh3122 = lshr i64 %r3118, 30
  %ftr3123 = trunc i64 %fsh3122 to i1
  %fnz3124 = xor i1 %ftr3123, true
  %cond3119 = and i1 %ftr3121, %fnz3124
  %sel3125 = select i1 %cond3119, i32 %c3117, i32 0
  %c3126 = zext i32 %sel3125 to i64
  %wp3127 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3126, ptr %wp3127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9744 word 0x9b3021cb
  %r3128.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3128 = load i64, ptr %r3128.p, align 8, !alias.scope !3, !noalias !4
  %c3129 = trunc i64 %r3128 to i32
  %c3130 = sext i32 %c3129 to i64
  %r3131.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3131 = load i64, ptr %r3131.p, align 8, !alias.scope !3, !noalias !4
  %c3132 = trunc i64 %r3131 to i32
  %c3133 = sext i32 %c3132 to i64
  %t3134 = mul i64 %c3130, %c3133
  %r3135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3135 = load i64, ptr %r3135.p, align 8, !alias.scope !3, !noalias !4
  %t3136 = add i64 %r3135, %t3134
  %wp3137 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3136, ptr %wp3137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9748 word 0xb8404d6f
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %t3139 = add i64 %r3138, 4
  %gmp3140 = inttoptr i64 %t3139 to ptr
  %gml3141 = load i32, ptr %gmp3140, align 1, !alias.scope !4, !noalias !3
  %c3142 = zext i32 %gml3141 to i64
  %wp3143 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3139, ptr %wp3143, align 8, !alias.scope !3, !noalias !4
  %wp3144 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3142, ptr %wp3144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d974c word 0x3607d66f
  %r3145.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3145 = load i64, ptr %r3145.p, align 8, !alias.scope !3, !noalias !4
  %t3146 = and i64 %r3145, 1
  %cmp3147 = icmp eq i64 %t3146, 0
  br i1 %cmp3147, label %L_8002d9218, label %L_8002d9750_ft
L_8002d9750_ft:
  ; @pc 0x8002d9750 word 0xb940016f
  %r3148.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3148 = load i64, ptr %r3148.p, align 8, !alias.scope !3, !noalias !4
  %gmp3149 = inttoptr i64 %r3148 to ptr
  %gml3150 = load i32, ptr %gmp3149, align 1, !alias.scope !4, !noalias !3
  %c3151 = zext i32 %gml3150 to i64
  %wp3152 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3151, ptr %wp3152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9754 word 0x370fd62f
  %r3153.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3153 = load i64, ptr %r3153.p, align 8, !alias.scope !3, !noalias !4
  %t3154 = and i64 %r3153, 2
  %cmp3155 = icmp ne i64 %t3154, 0
  br i1 %cmp3155, label %L_8002d9218, label %L_8002d9758_ft
L_8002d9758_ft:
  ; @pc 0x8002d9758 word 0x36a06b6d
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %t3157 = and i64 %r3156, 1048576
  %cmp3158 = icmp eq i64 %t3157, 0
  br i1 %cmp3158, label %L_8002da4c4, label %L_8002d975c_ft
L_8002d975c_ft:
  ; @pc 0x8002d975c word 0x93407dcc
  %r3159.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3159 = load i64, ptr %r3159.p, align 8, !alias.scope !3, !noalias !4
  %t3160 = lshr i64 %r3159, 31
  %t3161 = and i64 %t3160, 1
  %t3162 = sub i64 0, %t3161
  %t3163 = and i64 %t3162, -4294967296
  %t3164 = and i64 %r3159, 4294967295
  %t3165 = or i64 %t3163, %t3164
  %wp3166 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3165, ptr %wp3166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9760 word 0x5280050d
  %c3167 = zext i32 40 to i64
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3167, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9764 word 0x9b2d218c
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %c3170 = trunc i64 %r3169 to i32
  %c3171 = sext i32 %c3170 to i64
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %c3173 = trunc i64 %r3172 to i32
  %c3174 = sext i32 %c3173 to i64
  %t3175 = mul i64 %c3171, %c3174
  %r3176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3176 = load i64, ptr %r3176.p, align 8, !alias.scope !3, !noalias !4
  %t3177 = add i64 %r3176, %t3175
  %wp3178 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3177, ptr %wp3178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9768 word 0xf94656ad
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %t3180 = add i64 %r3179, 3240
  %gmp3181 = inttoptr i64 %t3180 to ptr
  %gml3182 = load i64, ptr %gmp3181, align 1, !alias.scope !4, !noalias !3
  %wp3183 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3182, ptr %wp3183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d976c word 0xf9400d8c
  %r3184.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3184 = load i64, ptr %r3184.p, align 8, !alias.scope !3, !noalias !4
  %t3185 = add i64 %r3184, 24
  %gmp3186 = inttoptr i64 %t3185 to ptr
  %gml3187 = load i64, ptr %gmp3186, align 1, !alias.scope !4, !noalias !3
  %wp3188 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3187, ptr %wp3188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9770 word 0xf940018c
  %r3189.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3189 = load i64, ptr %r3189.p, align 8, !alias.scope !3, !noalias !4
  %gmp3190 = inttoptr i64 %r3189 to ptr
  %gml3191 = load i64, ptr %gmp3190, align 1, !alias.scope !4, !noalias !3
  %wp3192 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3191, ptr %wp3192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9774 word 0x7941098c
  %r3193.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3193 = load i64, ptr %r3193.p, align 8, !alias.scope !3, !noalias !4
  %t3194 = add i64 %r3193, 132
  %gmp3195 = inttoptr i64 %t3194 to ptr
  %gml3196 = load i16, ptr %gmp3195, align 1, !alias.scope !4, !noalias !3
  %c3197 = zext i16 %gml3196 to i64
  %wp3198 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3197, ptr %wp3198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9778 word 0xd37be98c
  %r3199.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3199 = load i64, ptr %r3199.p, align 8, !alias.scope !3, !noalias !4
  %ror3200 = call i64 @llvm.fshr.i64(i64 %r3199, i64 %r3199, i64 59)
  %t3201 = and i64 %ror3200, -32
  %wp3202 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3201, ptr %wp3202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d977c word 0xb4006c6d
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %cmp3204 = icmp eq i64 %r3203, 0
  br i1 %cmp3204, label %L_8002da508, label %L_8002d9780_ft
L_8002d9780_ft:
  ; @pc 0x8002d9780 word 0xf94089ae
  %r3205.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3205 = load i64, ptr %r3205.p, align 8, !alias.scope !3, !noalias !4
  %t3206 = add i64 %r3205, 272
  %gmp3207 = inttoptr i64 %t3206 to ptr
  %gml3208 = load i64, ptr %gmp3207, align 1, !alias.scope !4, !noalias !3
  %wp3209 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3208, ptr %wp3209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9784 word 0xb400008e
  %r3210.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3210 = load i64, ptr %r3210.p, align 8, !alias.scope !3, !noalias !4
  %cmp3211 = icmp eq i64 %r3210, 0
  br i1 %cmp3211, label %L_8002d9794, label %L_8002d9788_ft
L_8002d9788_ft:
  ; @pc 0x8002d9788 word 0xf94652af
  %r3212.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3212 = load i64, ptr %r3212.p, align 8, !alias.scope !3, !noalias !4
  %t3213 = add i64 %r3212, 3232
  %gmp3214 = inttoptr i64 %t3213 to ptr
  %gml3215 = load i64, ptr %gmp3214, align 1, !alias.scope !4, !noalias !3
  %wp3216 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3215, ptr %wp3216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d978c word 0xf9400dce
  %r3217.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3217 = load i64, ptr %r3217.p, align 8, !alias.scope !3, !noalias !4
  %t3218 = add i64 %r3217, 24
  %gmp3219 = inttoptr i64 %t3218 to ptr
  %gml3220 = load i64, ptr %gmp3219, align 1, !alias.scope !4, !noalias !3
  %wp3221 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3220, ptr %wp3221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9790 word 0xcb0e01ee
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %r3223.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3223 = load i64, ptr %r3223.p, align 8, !alias.scope !3, !noalias !4
  %t3224 = sub i64 %r3222, %r3223
  %wp3225 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3224, ptr %wp3225, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9794
L_8002d97a4_ft:
  ; @pc 0x8002d97a4 word 0x2a1f03eb
  %t3243 = or i32 0, 0
  %c3244 = zext i32 %t3243 to i64
  %wp3245 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3244, ptr %wp3245, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d97a8
L_8002d97d0_ft:
  ; @pc 0x8002d97d0 word 0xd001b3e8
  %wp3325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp3325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97d4 word 0xaa1603e0
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %t3327 = or i64 0, %r3326
  %wp3328 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3327, ptr %wp3328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97d8 word 0xf940ad08
  %r3329.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3329 = load i64, ptr %r3329.p, align 8, !alias.scope !3, !noalias !4
  %t3330 = add i64 %r3329, 344
  %gmp3331 = inttoptr i64 %t3330 to ptr
  %gml3332 = load i64, ptr %gmp3331, align 1, !alias.scope !4, !noalias !3
  %wp3333 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3332, ptr %wp3333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97dc word 0x52800021
  %c3334 = zext i32 1 to i64
  %wp3335 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3334, ptr %wp3335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97e0 word 0xaa1703e2
  %r3336.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3336 = load i64, ptr %r3336.p, align 8, !alias.scope !3, !noalias !4
  %t3337 = or i64 0, %r3336
  %wp3338 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3337, ptr %wp3338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97e4 word 0xf9400108
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %gmp3340 = inttoptr i64 %r3339 to ptr
  %gml3341 = load i64, ptr %gmp3340, align 1, !alias.scope !4, !noalias !3
  %wp3342 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3341, ptr %wp3342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97e8 word 0xd63f0100
  %r3343.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3343 = load i64, ptr %r3343.p, align 8, !alias.scope !3, !noalias !4
  %fp3344 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3343, ptr %fp3344, align 8, !alias.scope !3, !noalias !4
  %wp3345 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726380, ptr %wp3345, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d97ec word 0x39722aa8
  %r3346.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3346 = load i64, ptr %r3346.p, align 8, !alias.scope !3, !noalias !4
  %t3347 = add i64 %r3346, 3210
  %gmp3348 = inttoptr i64 %t3347 to ptr
  %gml3349 = load i8, ptr %gmp3348, align 1, !alias.scope !4, !noalias !3
  %c3350 = zext i8 %gml3349 to i64
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3350, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d97f0 word 0x373869c8
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %t3353 = and i64 %r3352, 128
  %cmp3354 = icmp ne i64 %t3353, 0
  br i1 %cmp3354, label %L_8002da528, label %L_8002d97f4
L_8002d9820_ft:
  ; @pc 0x8002d9820 word 0x37b80168
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %t3389 = and i64 %r3388, 8388608
  %cmp3390 = icmp ne i64 %t3389, 0
  br i1 %cmp3390, label %L_8002d984c, label %L_8002d9824_ft
L_8002d9824_ft:
  ; @pc 0x8002d9824 word 0x397242a8
  %r3391.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3391 = load i64, ptr %r3391.p, align 8, !alias.scope !3, !noalias !4
  %t3392 = add i64 %r3391, 3216
  %gmp3393 = inttoptr i64 %t3392 to ptr
  %gml3394 = load i8, ptr %gmp3393, align 1, !alias.scope !4, !noalias !3
  %c3395 = zext i8 %gml3394 to i64
  %wp3396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3395, ptr %wp3396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9828 word 0x7100111f
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %c3398 = trunc i64 %r3397 to i32
  %t3399 = sub i32 %c3398, 4
  %fn3400 = icmp slt i32 %t3399, 0
  %fz3401 = icmp eq i32 %t3399, 0
  %fc3402 = icmp uge i32 %c3398, 4
  %fx13403 = xor i32 %c3398, 4
  %fx23404 = xor i32 %c3398, %t3399
  %fva3405 = and i32 %fx13403, %fx23404
  %fv3406 = icmp slt i32 %fva3405, 0
  %nz3407 = zext i1 %fn3400 to i64
  %zz3408 = zext i1 %fz3401 to i64
  %cz3409 = zext i1 %fc3402 to i64
  %vz3410 = zext i1 %fv3406 to i64
  %ns3411 = shl i64 %nz3407, 31
  %zs3412 = shl i64 %zz3408, 30
  %cs3413 = shl i64 %cz3409, 29
  %vs3414 = shl i64 %vz3410, 28
  %nzor3415 = or i64 %ns3411, %zs3412
  %cvor3416 = or i64 %cs3413, %vs3414
  %nzcv3417 = or i64 %nzor3415, %cvor3416
  %wp3418 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3417, ptr %wp3418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d982c word 0x54006881
  %r3419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3419 = load i64, ptr %r3419.p, align 8, !alias.scope !3, !noalias !4
  %fsh3421 = lshr i64 %r3419, 30
  %ftr3422 = trunc i64 %fsh3421 to i1
  %cond3420 = xor i1 %ftr3422, true
  br i1 %cond3420, label %L_8002da53c, label %L_8002d9830_ft
L_8002d9830_ft:
  ; @pc 0x8002d9830 word 0xb001b3e8
  %wp3423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp3423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9834 word 0xaa1603e0
  %r3424.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3424 = load i64, ptr %r3424.p, align 8, !alias.scope !3, !noalias !4
  %t3425 = or i64 0, %r3424
  %wp3426 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3425, ptr %wp3426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9838 word 0xf9470108
  %r3427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3427 = load i64, ptr %r3427.p, align 8, !alias.scope !3, !noalias !4
  %t3428 = add i64 %r3427, 3584
  %gmp3429 = inttoptr i64 %t3428 to ptr
  %gml3430 = load i64, ptr %gmp3429, align 1, !alias.scope !4, !noalias !3
  %wp3431 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3430, ptr %wp3431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d983c word 0x52800201
  %c3432 = zext i32 16 to i64
  %wp3433 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3432, ptr %wp3433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9840 word 0xaa1703e2
  %r3434.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3434 = load i64, ptr %r3434.p, align 8, !alias.scope !3, !noalias !4
  %t3435 = or i64 0, %r3434
  %wp3436 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3435, ptr %wp3436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9844 word 0xf9400108
  %r3437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3437 = load i64, ptr %r3437.p, align 8, !alias.scope !3, !noalias !4
  %gmp3438 = inttoptr i64 %r3437 to ptr
  %gml3439 = load i64, ptr %gmp3438, align 1, !alias.scope !4, !noalias !3
  %wp3440 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3439, ptr %wp3440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9848 word 0xd63f0100
  %r3441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3441 = load i64, ptr %r3441.p, align 8, !alias.scope !3, !noalias !4
  %fp3442 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3441, ptr %fp3442, align 8, !alias.scope !3, !noalias !4
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726476, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d984c
L_8002d9870_ft:
  ; @pc 0x8002d9870 word 0x93407dac
  %r3471.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3471 = load i64, ptr %r3471.p, align 8, !alias.scope !3, !noalias !4
  %t3472 = lshr i64 %r3471, 31
  %t3473 = and i64 %t3472, 1
  %t3474 = sub i64 0, %t3473
  %t3475 = and i64 %t3474, -4294967296
  %t3476 = and i64 %r3471, 4294967295
  %t3477 = or i64 %t3475, %t3476
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9874 word 0x5280050d
  %c3479 = zext i32 40 to i64
  %wp3480 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3479, ptr %wp3480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9878 word 0x9b2d218c
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %c3482 = trunc i64 %r3481 to i32
  %c3483 = sext i32 %c3482 to i64
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %c3485 = trunc i64 %r3484 to i32
  %c3486 = sext i32 %c3485 to i64
  %t3487 = mul i64 %c3483, %c3486
  %r3488.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3488 = load i64, ptr %r3488.p, align 8, !alias.scope !3, !noalias !4
  %t3489 = add i64 %r3488, %t3487
  %wp3490 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3489, ptr %wp3490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d987c word 0xf94656ad
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %t3492 = add i64 %r3491, 3240
  %gmp3493 = inttoptr i64 %t3492 to ptr
  %gml3494 = load i64, ptr %gmp3493, align 1, !alias.scope !4, !noalias !3
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3494, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9880 word 0xf9400d8c
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %t3497 = add i64 %r3496, 24
  %gmp3498 = inttoptr i64 %t3497 to ptr
  %gml3499 = load i64, ptr %gmp3498, align 1, !alias.scope !4, !noalias !3
  %wp3500 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3499, ptr %wp3500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9884 word 0xf940018c
  %r3501.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3501 = load i64, ptr %r3501.p, align 8, !alias.scope !3, !noalias !4
  %gmp3502 = inttoptr i64 %r3501 to ptr
  %gml3503 = load i64, ptr %gmp3502, align 1, !alias.scope !4, !noalias !3
  %wp3504 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3503, ptr %wp3504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9888 word 0x7941098c
  %r3505.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3505 = load i64, ptr %r3505.p, align 8, !alias.scope !3, !noalias !4
  %t3506 = add i64 %r3505, 132
  %gmp3507 = inttoptr i64 %t3506 to ptr
  %gml3508 = load i16, ptr %gmp3507, align 1, !alias.scope !4, !noalias !3
  %c3509 = zext i16 %gml3508 to i64
  %wp3510 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3509, ptr %wp3510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d988c word 0xd37be98c
  %r3511.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3511 = load i64, ptr %r3511.p, align 8, !alias.scope !3, !noalias !4
  %ror3512 = call i64 @llvm.fshr.i64(i64 %r3511, i64 %r3511, i64 59)
  %t3513 = and i64 %ror3512, -32
  %wp3514 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3513, ptr %wp3514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9890 word 0xb4004e6d
  %r3515.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3515 = load i64, ptr %r3515.p, align 8, !alias.scope !3, !noalias !4
  %cmp3516 = icmp eq i64 %r3515, 0
  br i1 %cmp3516, label %L_8002da25c, label %L_8002d9894_ft
L_8002d9894_ft:
  ; @pc 0x8002d9894 word 0xf94089ae
  %r3517.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3517 = load i64, ptr %r3517.p, align 8, !alias.scope !3, !noalias !4
  %t3518 = add i64 %r3517, 272
  %gmp3519 = inttoptr i64 %t3518 to ptr
  %gml3520 = load i64, ptr %gmp3519, align 1, !alias.scope !4, !noalias !3
  %wp3521 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3520, ptr %wp3521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9898 word 0xb400008e
  %r3522.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3522 = load i64, ptr %r3522.p, align 8, !alias.scope !3, !noalias !4
  %cmp3523 = icmp eq i64 %r3522, 0
  br i1 %cmp3523, label %L_8002d98a8, label %L_8002d989c_ft
L_8002d989c_ft:
  ; @pc 0x8002d989c word 0xf94652af
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %t3525 = add i64 %r3524, 3232
  %gmp3526 = inttoptr i64 %t3525 to ptr
  %gml3527 = load i64, ptr %gmp3526, align 1, !alias.scope !4, !noalias !3
  %wp3528 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3527, ptr %wp3528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98a0 word 0xf9400dce
  %r3529.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3529 = load i64, ptr %r3529.p, align 8, !alias.scope !3, !noalias !4
  %t3530 = add i64 %r3529, 24
  %gmp3531 = inttoptr i64 %t3530 to ptr
  %gml3532 = load i64, ptr %gmp3531, align 1, !alias.scope !4, !noalias !3
  %wp3533 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3532, ptr %wp3533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98a4 word 0xcb0e01ee
  %r3534.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3534 = load i64, ptr %r3534.p, align 8, !alias.scope !3, !noalias !4
  %r3535.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3535 = load i64, ptr %r3535.p, align 8, !alias.scope !3, !noalias !4
  %t3536 = sub i64 %r3534, %r3535
  %wp3537 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3536, ptr %wp3537, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d98a8
L_8002d98b8_ft:
  ; @pc 0x8002d98b8 word 0x2a1f03eb
  %t3555 = or i32 0, 0
  %c3556 = zext i32 %t3555 to i64
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3556, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d98bc
L_8002d98e4_ft:
  ; @pc 0x8002d98e4 word 0xd001b3e8
  %wp3637 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp3637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98e8 word 0xaa1403e0
  %r3638.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3638 = load i64, ptr %r3638.p, align 8, !alias.scope !3, !noalias !4
  %t3639 = or i64 0, %r3638
  %wp3640 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3639, ptr %wp3640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98ec word 0xf940ad08
  %r3641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3641 = load i64, ptr %r3641.p, align 8, !alias.scope !3, !noalias !4
  %t3642 = add i64 %r3641, 344
  %gmp3643 = inttoptr i64 %t3642 to ptr
  %gml3644 = load i64, ptr %gmp3643, align 1, !alias.scope !4, !noalias !3
  %wp3645 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3644, ptr %wp3645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98f0 word 0x52800021
  %c3646 = zext i32 1 to i64
  %wp3647 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3646, ptr %wp3647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98f4 word 0xaa1603e2
  %r3648.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3648 = load i64, ptr %r3648.p, align 8, !alias.scope !3, !noalias !4
  %t3649 = or i64 0, %r3648
  %wp3650 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3649, ptr %wp3650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98f8 word 0xf9400108
  %r3651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3651 = load i64, ptr %r3651.p, align 8, !alias.scope !3, !noalias !4
  %gmp3652 = inttoptr i64 %r3651 to ptr
  %gml3653 = load i64, ptr %gmp3652, align 1, !alias.scope !4, !noalias !3
  %wp3654 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3653, ptr %wp3654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d98fc word 0xd63f0100
  %r3655.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3655 = load i64, ptr %r3655.p, align 8, !alias.scope !3, !noalias !4
  %fp3656 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3655, ptr %fp3656, align 8, !alias.scope !3, !noalias !4
  %wp3657 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726656, ptr %wp3657, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9900 word 0x39722aa8
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %t3659 = add i64 %r3658, 3210
  %gmp3660 = inttoptr i64 %t3659 to ptr
  %gml3661 = load i8, ptr %gmp3660, align 1, !alias.scope !4, !noalias !3
  %c3662 = zext i8 %gml3661 to i64
  %wp3663 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3662, ptr %wp3663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9904 word 0x37384b08
  %r3664.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3664 = load i64, ptr %r3664.p, align 8, !alias.scope !3, !noalias !4
  %t3665 = and i64 %r3664, 128
  %cmp3666 = icmp ne i64 %t3665, 0
  br i1 %cmp3666, label %L_8002da264, label %L_8002d9908
L_8002d9944_ft:
  ; @pc 0x8002d9944 word 0x37b80168
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %t3742 = and i64 %r3741, 8388608
  %cmp3743 = icmp ne i64 %t3742, 0
  br i1 %cmp3743, label %L_8002d9970, label %L_8002d9948_ft
L_8002d9948_ft:
  ; @pc 0x8002d9948 word 0x397242a8
  %r3744.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3744 = load i64, ptr %r3744.p, align 8, !alias.scope !3, !noalias !4
  %t3745 = add i64 %r3744, 3216
  %gmp3746 = inttoptr i64 %t3745 to ptr
  %gml3747 = load i8, ptr %gmp3746, align 1, !alias.scope !4, !noalias !3
  %c3748 = zext i8 %gml3747 to i64
  %wp3749 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3748, ptr %wp3749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d994c word 0x7100111f
  %r3750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3750 = load i64, ptr %r3750.p, align 8, !alias.scope !3, !noalias !4
  %c3751 = trunc i64 %r3750 to i32
  %t3752 = sub i32 %c3751, 4
  %fn3753 = icmp slt i32 %t3752, 0
  %fz3754 = icmp eq i32 %t3752, 0
  %fc3755 = icmp uge i32 %c3751, 4
  %fx13756 = xor i32 %c3751, 4
  %fx23757 = xor i32 %c3751, %t3752
  %fva3758 = and i32 %fx13756, %fx23757
  %fv3759 = icmp slt i32 %fva3758, 0
  %nz3760 = zext i1 %fn3753 to i64
  %zz3761 = zext i1 %fz3754 to i64
  %cz3762 = zext i1 %fc3755 to i64
  %vz3763 = zext i1 %fv3759 to i64
  %ns3764 = shl i64 %nz3760, 31
  %zs3765 = shl i64 %zz3761, 30
  %cs3766 = shl i64 %cz3762, 29
  %vs3767 = shl i64 %vz3763, 28
  %nzor3768 = or i64 %ns3764, %zs3765
  %cvor3769 = or i64 %cs3766, %vs3767
  %nzcv3770 = or i64 %nzor3768, %cvor3769
  %wp3771 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3770, ptr %wp3771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9950 word 0x54004941
  %r3772.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3772 = load i64, ptr %r3772.p, align 8, !alias.scope !3, !noalias !4
  %fsh3774 = lshr i64 %r3772, 30
  %ftr3775 = trunc i64 %fsh3774 to i1
  %cond3773 = xor i1 %ftr3775, true
  br i1 %cond3773, label %L_8002da278, label %L_8002d9954_ft
L_8002d9954_ft:
  ; @pc 0x8002d9954 word 0xb001b3e8
  %wp3776 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp3776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9958 word 0xaa1403e0
  %r3777.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3777 = load i64, ptr %r3777.p, align 8, !alias.scope !3, !noalias !4
  %t3778 = or i64 0, %r3777
  %wp3779 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3778, ptr %wp3779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d995c word 0xf9470108
  %r3780.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3780 = load i64, ptr %r3780.p, align 8, !alias.scope !3, !noalias !4
  %t3781 = add i64 %r3780, 3584
  %gmp3782 = inttoptr i64 %t3781 to ptr
  %gml3783 = load i64, ptr %gmp3782, align 1, !alias.scope !4, !noalias !3
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9960 word 0x52800201
  %c3785 = zext i32 16 to i64
  %wp3786 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3785, ptr %wp3786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9964 word 0xaa1603e2
  %r3787.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3787 = load i64, ptr %r3787.p, align 8, !alias.scope !3, !noalias !4
  %t3788 = or i64 0, %r3787
  %wp3789 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3788, ptr %wp3789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9968 word 0xf9400108
  %r3790.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3790 = load i64, ptr %r3790.p, align 8, !alias.scope !3, !noalias !4
  %gmp3791 = inttoptr i64 %r3790 to ptr
  %gml3792 = load i64, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3792, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d996c word 0xd63f0100
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %fp3795 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3794, ptr %fp3795, align 8, !alias.scope !3, !noalias !4
  %wp3796 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726768, ptr %wp3796, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9970
L_8002d9978_ft:
  ; @pc 0x8002d9978 word 0xd001b3e8
  %wp3806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp3806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d997c word 0xaa1403e0
  %r3807.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3807 = load i64, ptr %r3807.p, align 8, !alias.scope !3, !noalias !4
  %t3808 = or i64 0, %r3807
  %wp3809 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3808, ptr %wp3809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9980 word 0xf940b108
  %r3810.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3810 = load i64, ptr %r3810.p, align 8, !alias.scope !3, !noalias !4
  %t3811 = add i64 %r3810, 352
  %gmp3812 = inttoptr i64 %t3811 to ptr
  %gml3813 = load i64, ptr %gmp3812, align 1, !alias.scope !4, !noalias !3
  %wp3814 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3813, ptr %wp3814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9984 word 0x52800021
  %c3815 = zext i32 1 to i64
  %wp3816 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3815, ptr %wp3816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9988 word 0xf9400108
  %r3817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3817 = load i64, ptr %r3817.p, align 8, !alias.scope !3, !noalias !4
  %gmp3818 = inttoptr i64 %r3817 to ptr
  %gml3819 = load i64, ptr %gmp3818, align 1, !alias.scope !4, !noalias !3
  %wp3820 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3819, ptr %wp3820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d998c word 0xd63f0100
  %r3821.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3821 = load i64, ptr %r3821.p, align 8, !alias.scope !3, !noalias !4
  %fp3822 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3821, ptr %fp3822, align 8, !alias.scope !3, !noalias !4
  %wp3823 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362726800, ptr %wp3823, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9990 word 0x17ffff0f
  br label %L_8002d95cc
L_8002d999c_ft:
  ; @pc 0x8002d999c word 0xb9407188
  %r3833.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3833 = load i64, ptr %r3833.p, align 8, !alias.scope !3, !noalias !4
  %t3834 = add i64 %r3833, 112
  %gmp3835 = inttoptr i64 %t3834 to ptr
  %gml3836 = load i32, ptr %gmp3835, align 1, !alias.scope !4, !noalias !3
  %c3837 = zext i32 %gml3836 to i64
  %wp3838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3837, ptr %wp3838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99a0 word 0x795556a9
  %r3839.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3839 = load i64, ptr %r3839.p, align 8, !alias.scope !3, !noalias !4
  %t3840 = add i64 %r3839, 2730
  %gmp3841 = inttoptr i64 %t3840 to ptr
  %gml3842 = load i16, ptr %gmp3841, align 1, !alias.scope !4, !noalias !3
  %c3843 = zext i16 %gml3842 to i64
  %wp3844 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3843, ptr %wp3844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99a4 word 0x4b09010a
  %r3845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3845 = load i64, ptr %r3845.p, align 8, !alias.scope !3, !noalias !4
  %c3846 = trunc i64 %r3845 to i32
  %r3847.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3847 = load i64, ptr %r3847.p, align 8, !alias.scope !3, !noalias !4
  %c3848 = trunc i64 %r3847 to i32
  %t3849 = sub i32 %c3846, %c3848
  %c3850 = zext i32 %t3849 to i64
  %wp3851 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3850, ptr %wp3851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99a8 word 0xb94a3aa9
  %r3852.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3852 = load i64, ptr %r3852.p, align 8, !alias.scope !3, !noalias !4
  %t3853 = add i64 %r3852, 2616
  %gmp3854 = inttoptr i64 %t3853 to ptr
  %gml3855 = load i32, ptr %gmp3854, align 1, !alias.scope !4, !noalias !3
  %c3856 = zext i32 %gml3855 to i64
  %wp3857 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3856, ptr %wp3857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99ac word 0xf94522a8
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %t3859 = add i64 %r3858, 2624
  %gmp3860 = inttoptr i64 %t3859 to ptr
  %gml3861 = load i64, ptr %gmp3860, align 1, !alias.scope !4, !noalias !3
  %wp3862 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3861, ptr %wp3862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99b0 word 0x6b0a013f
  %r3863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3863 = load i64, ptr %r3863.p, align 8, !alias.scope !3, !noalias !4
  %c3864 = trunc i64 %r3863 to i32
  %r3865.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3865 = load i64, ptr %r3865.p, align 8, !alias.scope !3, !noalias !4
  %c3866 = trunc i64 %r3865 to i32
  %t3867 = sub i32 %c3864, %c3866
  %fn3868 = icmp slt i32 %t3867, 0
  %fz3869 = icmp eq i32 %t3867, 0
  %fc3870 = icmp uge i32 %c3864, %c3866
  %fx13871 = xor i32 %c3864, %c3866
  %fx23872 = xor i32 %c3864, %t3867
  %fva3873 = and i32 %fx13871, %fx23872
  %fv3874 = icmp slt i32 %fva3873, 0
  %nz3875 = zext i1 %fn3868 to i64
  %zz3876 = zext i1 %fz3869 to i64
  %cz3877 = zext i1 %fc3870 to i64
  %vz3878 = zext i1 %fv3874 to i64
  %ns3879 = shl i64 %nz3875, 31
  %zs3880 = shl i64 %zz3876, 30
  %cs3881 = shl i64 %cz3877, 29
  %vs3882 = shl i64 %vz3878, 28
  %nzor3883 = or i64 %ns3879, %zs3880
  %cvor3884 = or i64 %cs3881, %vs3882
  %nzcv3885 = or i64 %nzor3883, %cvor3884
  %wp3886 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3885, ptr %wp3886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99b4 word 0x1a9f814e
  %r3887.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3887 = load i64, ptr %r3887.p, align 8, !alias.scope !3, !noalias !4
  %c3888 = trunc i64 %r3887 to i32
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %fsh3891 = lshr i64 %r3889, 29
  %ftr3892 = trunc i64 %fsh3891 to i1
  %fsh3893 = lshr i64 %r3889, 30
  %ftr3894 = trunc i64 %fsh3893 to i1
  %fnz3895 = xor i1 %ftr3894, true
  %cond3890 = and i1 %ftr3892, %fnz3895
  %sel3896 = select i1 %cond3890, i32 %c3888, i32 0
  %c3897 = zext i32 %sel3896 to i64
  %wp3898 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3897, ptr %wp3898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99b8 word 0x9b3021cb
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3899 = load i64, ptr %r3899.p, align 8, !alias.scope !3, !noalias !4
  %c3900 = trunc i64 %r3899 to i32
  %c3901 = sext i32 %c3900 to i64
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %c3903 = trunc i64 %r3902 to i32
  %c3904 = sext i32 %c3903 to i64
  %t3905 = mul i64 %c3901, %c3904
  %r3906.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3906 = load i64, ptr %r3906.p, align 8, !alias.scope !3, !noalias !4
  %t3907 = add i64 %r3906, %t3905
  %wp3908 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3907, ptr %wp3908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99bc word 0xb8404d6f
  %r3909.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3909 = load i64, ptr %r3909.p, align 8, !alias.scope !3, !noalias !4
  %t3910 = add i64 %r3909, 4
  %gmp3911 = inttoptr i64 %t3910 to ptr
  %gml3912 = load i32, ptr %gmp3911, align 1, !alias.scope !4, !noalias !3
  %c3913 = zext i32 %gml3912 to i64
  %wp3914 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3910, ptr %wp3914, align 8, !alias.scope !3, !noalias !4
  %wp3915 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3913, ptr %wp3915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99c0 word 0x3607c28f
  %r3916.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3916 = load i64, ptr %r3916.p, align 8, !alias.scope !3, !noalias !4
  %t3917 = and i64 %r3916, 1
  %cmp3918 = icmp eq i64 %t3917, 0
  br i1 %cmp3918, label %L_8002d9210, label %L_8002d99c4_ft
L_8002d99c4_ft:
  ; @pc 0x8002d99c4 word 0xb940016f
  %r3919.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3919 = load i64, ptr %r3919.p, align 8, !alias.scope !3, !noalias !4
  %gmp3920 = inttoptr i64 %r3919 to ptr
  %gml3921 = load i32, ptr %gmp3920, align 1, !alias.scope !4, !noalias !3
  %c3922 = zext i32 %gml3921 to i64
  %wp3923 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3922, ptr %wp3923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99c8 word 0x370fc24f
  %r3924.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3924 = load i64, ptr %r3924.p, align 8, !alias.scope !3, !noalias !4
  %t3925 = and i64 %r3924, 2
  %cmp3926 = icmp ne i64 %t3925, 0
  br i1 %cmp3926, label %L_8002d9210, label %L_8002d99cc_ft
L_8002d99cc_ft:
  ; @pc 0x8002d99cc word 0x36a06a4d
  %r3927.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3927 = load i64, ptr %r3927.p, align 8, !alias.scope !3, !noalias !4
  %t3928 = and i64 %r3927, 1048576
  %cmp3929 = icmp eq i64 %t3928, 0
  br i1 %cmp3929, label %L_8002da714, label %L_8002d99d0_ft
L_8002d99d0_ft:
  ; @pc 0x8002d99d0 word 0x93407dcc
  %r3930.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3930 = load i64, ptr %r3930.p, align 8, !alias.scope !3, !noalias !4
  %t3931 = lshr i64 %r3930, 31
  %t3932 = and i64 %t3931, 1
  %t3933 = sub i64 0, %t3932
  %t3934 = and i64 %t3933, -4294967296
  %t3935 = and i64 %r3930, 4294967295
  %t3936 = or i64 %t3934, %t3935
  %wp3937 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3936, ptr %wp3937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99d4 word 0x5280050d
  %c3938 = zext i32 40 to i64
  %wp3939 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3938, ptr %wp3939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99d8 word 0x9b2d218c
  %r3940.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3940 = load i64, ptr %r3940.p, align 8, !alias.scope !3, !noalias !4
  %c3941 = trunc i64 %r3940 to i32
  %c3942 = sext i32 %c3941 to i64
  %r3943.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3943 = load i64, ptr %r3943.p, align 8, !alias.scope !3, !noalias !4
  %c3944 = trunc i64 %r3943 to i32
  %c3945 = sext i32 %c3944 to i64
  %t3946 = mul i64 %c3942, %c3945
  %r3947.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3947 = load i64, ptr %r3947.p, align 8, !alias.scope !3, !noalias !4
  %t3948 = add i64 %r3947, %t3946
  %wp3949 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3948, ptr %wp3949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99dc word 0xf94656ad
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %t3951 = add i64 %r3950, 3240
  %gmp3952 = inttoptr i64 %t3951 to ptr
  %gml3953 = load i64, ptr %gmp3952, align 1, !alias.scope !4, !noalias !3
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3953, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99e0 word 0xf9400d8c
  %r3955.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3955 = load i64, ptr %r3955.p, align 8, !alias.scope !3, !noalias !4
  %t3956 = add i64 %r3955, 24
  %gmp3957 = inttoptr i64 %t3956 to ptr
  %gml3958 = load i64, ptr %gmp3957, align 1, !alias.scope !4, !noalias !3
  %wp3959 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3958, ptr %wp3959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99e4 word 0xf940018c
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %gmp3961 = inttoptr i64 %r3960 to ptr
  %gml3962 = load i64, ptr %gmp3961, align 1, !alias.scope !4, !noalias !3
  %wp3963 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3962, ptr %wp3963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99e8 word 0x7941098c
  %r3964.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3964 = load i64, ptr %r3964.p, align 8, !alias.scope !3, !noalias !4
  %t3965 = add i64 %r3964, 132
  %gmp3966 = inttoptr i64 %t3965 to ptr
  %gml3967 = load i16, ptr %gmp3966, align 1, !alias.scope !4, !noalias !3
  %c3968 = zext i16 %gml3967 to i64
  %wp3969 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3968, ptr %wp3969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99ec word 0xd37be98c
  %r3970.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3970 = load i64, ptr %r3970.p, align 8, !alias.scope !3, !noalias !4
  %ror3971 = call i64 @llvm.fshr.i64(i64 %r3970, i64 %r3970, i64 59)
  %t3972 = and i64 %ror3971, -32
  %wp3973 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3972, ptr %wp3973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99f0 word 0xb4006b4d
  %r3974.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3974 = load i64, ptr %r3974.p, align 8, !alias.scope !3, !noalias !4
  %cmp3975 = icmp eq i64 %r3974, 0
  br i1 %cmp3975, label %L_8002da758, label %L_8002d99f4_ft
L_8002d99f4_ft:
  ; @pc 0x8002d99f4 word 0xf94089ae
  %r3976.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3976 = load i64, ptr %r3976.p, align 8, !alias.scope !3, !noalias !4
  %t3977 = add i64 %r3976, 272
  %gmp3978 = inttoptr i64 %t3977 to ptr
  %gml3979 = load i64, ptr %gmp3978, align 1, !alias.scope !4, !noalias !3
  %wp3980 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3979, ptr %wp3980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d99f8 word 0xb400008e
  %r3981.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3981 = load i64, ptr %r3981.p, align 8, !alias.scope !3, !noalias !4
  %cmp3982 = icmp eq i64 %r3981, 0
  br i1 %cmp3982, label %L_8002d9a08, label %L_8002d99fc_ft
L_8002d99fc_ft:
  ; @pc 0x8002d99fc word 0xf94652af
  %r3983.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3983 = load i64, ptr %r3983.p, align 8, !alias.scope !3, !noalias !4
  %t3984 = add i64 %r3983, 3232
  %gmp3985 = inttoptr i64 %t3984 to ptr
  %gml3986 = load i64, ptr %gmp3985, align 1, !alias.scope !4, !noalias !3
  %wp3987 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3986, ptr %wp3987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a00 word 0xf9400dce
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %t3989 = add i64 %r3988, 24
  %gmp3990 = inttoptr i64 %t3989 to ptr
  %gml3991 = load i64, ptr %gmp3990, align 1, !alias.scope !4, !noalias !3
  %wp3992 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3991, ptr %wp3992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a04 word 0xcb0e01ee
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %t3995 = sub i64 %r3993, %r3994
  %wp3996 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3995, ptr %wp3996, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9a08
L_8002d9a18_ft:
  ; @pc 0x8002d9a18 word 0x2a1f03eb
  %t4014 = or i32 0, 0
  %c4015 = zext i32 %t4014 to i64
  %wp4016 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4015, ptr %wp4016, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9a1c
L_8002d9a44_ft:
  ; @pc 0x8002d9a44 word 0xd001b3e8
  %wp4096 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp4096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a48 word 0xaa1603e0
  %r4097.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4097 = load i64, ptr %r4097.p, align 8, !alias.scope !3, !noalias !4
  %t4098 = or i64 0, %r4097
  %wp4099 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4098, ptr %wp4099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a4c word 0xf940ad08
  %r4100.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4100 = load i64, ptr %r4100.p, align 8, !alias.scope !3, !noalias !4
  %t4101 = add i64 %r4100, 344
  %gmp4102 = inttoptr i64 %t4101 to ptr
  %gml4103 = load i64, ptr %gmp4102, align 1, !alias.scope !4, !noalias !3
  %wp4104 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4103, ptr %wp4104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a50 word 0x52800021
  %c4105 = zext i32 1 to i64
  %wp4106 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4105, ptr %wp4106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a54 word 0xaa1703e2
  %r4107.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4107 = load i64, ptr %r4107.p, align 8, !alias.scope !3, !noalias !4
  %t4108 = or i64 0, %r4107
  %wp4109 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4108, ptr %wp4109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a58 word 0xf9400108
  %r4110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4110 = load i64, ptr %r4110.p, align 8, !alias.scope !3, !noalias !4
  %gmp4111 = inttoptr i64 %r4110 to ptr
  %gml4112 = load i64, ptr %gmp4111, align 1, !alias.scope !4, !noalias !3
  %wp4113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4112, ptr %wp4113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a5c word 0xd63f0100
  %r4114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4114 = load i64, ptr %r4114.p, align 8, !alias.scope !3, !noalias !4
  %fp4115 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4114, ptr %fp4115, align 8, !alias.scope !3, !noalias !4
  %wp4116 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727008, ptr %wp4116, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9a60 word 0x39722aa8
  %r4117.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4117 = load i64, ptr %r4117.p, align 8, !alias.scope !3, !noalias !4
  %t4118 = add i64 %r4117, 3210
  %gmp4119 = inttoptr i64 %t4118 to ptr
  %gml4120 = load i8, ptr %gmp4119, align 1, !alias.scope !4, !noalias !3
  %c4121 = zext i8 %gml4120 to i64
  %wp4122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4121, ptr %wp4122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a64 word 0x373867e8
  %r4123.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4123 = load i64, ptr %r4123.p, align 8, !alias.scope !3, !noalias !4
  %t4124 = and i64 %r4123, 128
  %cmp4125 = icmp ne i64 %t4124, 0
  br i1 %cmp4125, label %L_8002da760, label %L_8002d9a68
L_8002d9a94_ft:
  ; @pc 0x8002d9a94 word 0x37b80168
  %r4159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4159 = load i64, ptr %r4159.p, align 8, !alias.scope !3, !noalias !4
  %t4160 = and i64 %r4159, 8388608
  %cmp4161 = icmp ne i64 %t4160, 0
  br i1 %cmp4161, label %L_8002d9ac0, label %L_8002d9a98_ft
L_8002d9a98_ft:
  ; @pc 0x8002d9a98 word 0x397242a8
  %r4162.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4162 = load i64, ptr %r4162.p, align 8, !alias.scope !3, !noalias !4
  %t4163 = add i64 %r4162, 3216
  %gmp4164 = inttoptr i64 %t4163 to ptr
  %gml4165 = load i8, ptr %gmp4164, align 1, !alias.scope !4, !noalias !3
  %c4166 = zext i8 %gml4165 to i64
  %wp4167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4166, ptr %wp4167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9a9c word 0x7100111f
  %r4168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4168 = load i64, ptr %r4168.p, align 8, !alias.scope !3, !noalias !4
  %c4169 = trunc i64 %r4168 to i32
  %t4170 = sub i32 %c4169, 4
  %fn4171 = icmp slt i32 %t4170, 0
  %fz4172 = icmp eq i32 %t4170, 0
  %fc4173 = icmp uge i32 %c4169, 4
  %fx14174 = xor i32 %c4169, 4
  %fx24175 = xor i32 %c4169, %t4170
  %fva4176 = and i32 %fx14174, %fx24175
  %fv4177 = icmp slt i32 %fva4176, 0
  %nz4178 = zext i1 %fn4171 to i64
  %zz4179 = zext i1 %fz4172 to i64
  %cz4180 = zext i1 %fc4173 to i64
  %vz4181 = zext i1 %fv4177 to i64
  %ns4182 = shl i64 %nz4178, 31
  %zs4183 = shl i64 %zz4179, 30
  %cs4184 = shl i64 %cz4180, 29
  %vs4185 = shl i64 %vz4181, 28
  %nzor4186 = or i64 %ns4182, %zs4183
  %cvor4187 = or i64 %cs4184, %vs4185
  %nzcv4188 = or i64 %nzor4186, %cvor4187
  %wp4189 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4188, ptr %wp4189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9aa0 word 0x540066a1
  %r4190.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4190 = load i64, ptr %r4190.p, align 8, !alias.scope !3, !noalias !4
  %fsh4192 = lshr i64 %r4190, 30
  %ftr4193 = trunc i64 %fsh4192 to i1
  %cond4191 = xor i1 %ftr4193, true
  br i1 %cond4191, label %L_8002da774, label %L_8002d9aa4_ft
L_8002d9aa4_ft:
  ; @pc 0x8002d9aa4 word 0xb001b3e8
  %wp4194 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp4194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9aa8 word 0xaa1603e0
  %r4195.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4195 = load i64, ptr %r4195.p, align 8, !alias.scope !3, !noalias !4
  %t4196 = or i64 0, %r4195
  %wp4197 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4196, ptr %wp4197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9aac word 0xf9470108
  %r4198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4198 = load i64, ptr %r4198.p, align 8, !alias.scope !3, !noalias !4
  %t4199 = add i64 %r4198, 3584
  %gmp4200 = inttoptr i64 %t4199 to ptr
  %gml4201 = load i64, ptr %gmp4200, align 1, !alias.scope !4, !noalias !3
  %wp4202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4201, ptr %wp4202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ab0 word 0x52800201
  %c4203 = zext i32 16 to i64
  %wp4204 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4203, ptr %wp4204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ab4 word 0xaa1703e2
  %r4205.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4205 = load i64, ptr %r4205.p, align 8, !alias.scope !3, !noalias !4
  %t4206 = or i64 0, %r4205
  %wp4207 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4206, ptr %wp4207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ab8 word 0xf9400108
  %r4208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4208 = load i64, ptr %r4208.p, align 8, !alias.scope !3, !noalias !4
  %gmp4209 = inttoptr i64 %r4208 to ptr
  %gml4210 = load i64, ptr %gmp4209, align 1, !alias.scope !4, !noalias !3
  %wp4211 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4210, ptr %wp4211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9abc word 0xd63f0100
  %r4212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4212 = load i64, ptr %r4212.p, align 8, !alias.scope !3, !noalias !4
  %fp4213 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4212, ptr %fp4213, align 8, !alias.scope !3, !noalias !4
  %wp4214 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727104, ptr %wp4214, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9ac0
L_8002d9ad8_ft:
  ; @pc 0x8002d9ad8 word 0x93407dcc
  %r4234.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4234 = load i64, ptr %r4234.p, align 8, !alias.scope !3, !noalias !4
  %t4235 = lshr i64 %r4234, 31
  %t4236 = and i64 %t4235, 1
  %t4237 = sub i64 0, %t4236
  %t4238 = and i64 %t4237, -4294967296
  %t4239 = and i64 %r4234, 4294967295
  %t4240 = or i64 %t4238, %t4239
  %wp4241 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4240, ptr %wp4241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9adc word 0x5280050d
  %c4242 = zext i32 40 to i64
  %wp4243 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4242, ptr %wp4243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ae0 word 0x9b2d218c
  %r4244.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4244 = load i64, ptr %r4244.p, align 8, !alias.scope !3, !noalias !4
  %c4245 = trunc i64 %r4244 to i32
  %c4246 = sext i32 %c4245 to i64
  %r4247.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4247 = load i64, ptr %r4247.p, align 8, !alias.scope !3, !noalias !4
  %c4248 = trunc i64 %r4247 to i32
  %c4249 = sext i32 %c4248 to i64
  %t4250 = mul i64 %c4246, %c4249
  %r4251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4251 = load i64, ptr %r4251.p, align 8, !alias.scope !3, !noalias !4
  %t4252 = add i64 %r4251, %t4250
  %wp4253 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4252, ptr %wp4253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ae4 word 0xf94656ad
  %r4254.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4254 = load i64, ptr %r4254.p, align 8, !alias.scope !3, !noalias !4
  %t4255 = add i64 %r4254, 3240
  %gmp4256 = inttoptr i64 %t4255 to ptr
  %gml4257 = load i64, ptr %gmp4256, align 1, !alias.scope !4, !noalias !3
  %wp4258 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4257, ptr %wp4258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ae8 word 0xf9400d8c
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %t4260 = add i64 %r4259, 24
  %gmp4261 = inttoptr i64 %t4260 to ptr
  %gml4262 = load i64, ptr %gmp4261, align 1, !alias.scope !4, !noalias !3
  %wp4263 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4262, ptr %wp4263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9aec word 0xf940018c
  %r4264.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4264 = load i64, ptr %r4264.p, align 8, !alias.scope !3, !noalias !4
  %gmp4265 = inttoptr i64 %r4264 to ptr
  %gml4266 = load i64, ptr %gmp4265, align 1, !alias.scope !4, !noalias !3
  %wp4267 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4266, ptr %wp4267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9af0 word 0x7941098c
  %r4268.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4268 = load i64, ptr %r4268.p, align 8, !alias.scope !3, !noalias !4
  %t4269 = add i64 %r4268, 132
  %gmp4270 = inttoptr i64 %t4269 to ptr
  %gml4271 = load i16, ptr %gmp4270, align 1, !alias.scope !4, !noalias !3
  %c4272 = zext i16 %gml4271 to i64
  %wp4273 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4272, ptr %wp4273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9af4 word 0xd37be98c
  %r4274.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4274 = load i64, ptr %r4274.p, align 8, !alias.scope !3, !noalias !4
  %ror4275 = call i64 @llvm.fshr.i64(i64 %r4274, i64 %r4274, i64 59)
  %t4276 = and i64 %ror4275, -32
  %wp4277 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4276, ptr %wp4277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9af8 word 0xb400402d
  %r4278.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4278 = load i64, ptr %r4278.p, align 8, !alias.scope !3, !noalias !4
  %cmp4279 = icmp eq i64 %r4278, 0
  br i1 %cmp4279, label %L_8002da2fc, label %L_8002d9afc_ft
L_8002d9afc_ft:
  ; @pc 0x8002d9afc word 0xf94089ae
  %r4280.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4280 = load i64, ptr %r4280.p, align 8, !alias.scope !3, !noalias !4
  %t4281 = add i64 %r4280, 272
  %gmp4282 = inttoptr i64 %t4281 to ptr
  %gml4283 = load i64, ptr %gmp4282, align 1, !alias.scope !4, !noalias !3
  %wp4284 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4283, ptr %wp4284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b00 word 0xb400008e
  %r4285.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4285 = load i64, ptr %r4285.p, align 8, !alias.scope !3, !noalias !4
  %cmp4286 = icmp eq i64 %r4285, 0
  br i1 %cmp4286, label %L_8002d9b10, label %L_8002d9b04_ft
L_8002d9b04_ft:
  ; @pc 0x8002d9b04 word 0xf94652af
  %r4287.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4287 = load i64, ptr %r4287.p, align 8, !alias.scope !3, !noalias !4
  %t4288 = add i64 %r4287, 3232
  %gmp4289 = inttoptr i64 %t4288 to ptr
  %gml4290 = load i64, ptr %gmp4289, align 1, !alias.scope !4, !noalias !3
  %wp4291 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml4290, ptr %wp4291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b08 word 0xf9400dce
  %r4292.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4292 = load i64, ptr %r4292.p, align 8, !alias.scope !3, !noalias !4
  %t4293 = add i64 %r4292, 24
  %gmp4294 = inttoptr i64 %t4293 to ptr
  %gml4295 = load i64, ptr %gmp4294, align 1, !alias.scope !4, !noalias !3
  %wp4296 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4295, ptr %wp4296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b0c word 0xcb0e01ee
  %r4297.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4297 = load i64, ptr %r4297.p, align 8, !alias.scope !3, !noalias !4
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %t4299 = sub i64 %r4297, %r4298
  %wp4300 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4299, ptr %wp4300, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9b10
L_8002d9b20_ft:
  ; @pc 0x8002d9b20 word 0x2a1f03eb
  %t4318 = or i32 0, 0
  %c4319 = zext i32 %t4318 to i64
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9b24
L_8002d9b4c_ft:
  ; @pc 0x8002d9b4c word 0xd001b3e8
  %wp4400 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp4400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b50 word 0xaa1603e0
  %r4401.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4401 = load i64, ptr %r4401.p, align 8, !alias.scope !3, !noalias !4
  %t4402 = or i64 0, %r4401
  %wp4403 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4402, ptr %wp4403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b54 word 0xf940ad08
  %r4404.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4404 = load i64, ptr %r4404.p, align 8, !alias.scope !3, !noalias !4
  %t4405 = add i64 %r4404, 344
  %gmp4406 = inttoptr i64 %t4405 to ptr
  %gml4407 = load i64, ptr %gmp4406, align 1, !alias.scope !4, !noalias !3
  %wp4408 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4407, ptr %wp4408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b58 word 0x52800021
  %c4409 = zext i32 1 to i64
  %wp4410 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4409, ptr %wp4410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b5c word 0xaa1703e2
  %r4411.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4411 = load i64, ptr %r4411.p, align 8, !alias.scope !3, !noalias !4
  %t4412 = or i64 0, %r4411
  %wp4413 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4412, ptr %wp4413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b60 word 0xf9400108
  %r4414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4414 = load i64, ptr %r4414.p, align 8, !alias.scope !3, !noalias !4
  %gmp4415 = inttoptr i64 %r4414 to ptr
  %gml4416 = load i64, ptr %gmp4415, align 1, !alias.scope !4, !noalias !3
  %wp4417 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4416, ptr %wp4417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b64 word 0xd63f0100
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %fp4419 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4418, ptr %fp4419, align 8, !alias.scope !3, !noalias !4
  %wp4420 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727272, ptr %wp4420, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9b68 word 0x39722aa8
  %r4421.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4421 = load i64, ptr %r4421.p, align 8, !alias.scope !3, !noalias !4
  %t4422 = add i64 %r4421, 3210
  %gmp4423 = inttoptr i64 %t4422 to ptr
  %gml4424 = load i8, ptr %gmp4423, align 1, !alias.scope !4, !noalias !3
  %c4425 = zext i8 %gml4424 to i64
  %wp4426 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4425, ptr %wp4426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9b6c word 0x37383cc8
  %r4427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4427 = load i64, ptr %r4427.p, align 8, !alias.scope !3, !noalias !4
  %t4428 = and i64 %r4427, 128
  %cmp4429 = icmp ne i64 %t4428, 0
  br i1 %cmp4429, label %L_8002da304, label %L_8002d9b70
L_8002d9ba0_ft:
  ; @pc 0x8002d9ba0 word 0x37b80168
  %r4465.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4465 = load i64, ptr %r4465.p, align 8, !alias.scope !3, !noalias !4
  %t4466 = and i64 %r4465, 8388608
  %cmp4467 = icmp ne i64 %t4466, 0
  br i1 %cmp4467, label %L_8002d9bcc, label %L_8002d9ba4_ft
L_8002d9ba4_ft:
  ; @pc 0x8002d9ba4 word 0x397242a8
  %r4468.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4468 = load i64, ptr %r4468.p, align 8, !alias.scope !3, !noalias !4
  %t4469 = add i64 %r4468, 3216
  %gmp4470 = inttoptr i64 %t4469 to ptr
  %gml4471 = load i8, ptr %gmp4470, align 1, !alias.scope !4, !noalias !3
  %c4472 = zext i8 %gml4471 to i64
  %wp4473 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4472, ptr %wp4473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ba8 word 0x7100111f
  %r4474.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4474 = load i64, ptr %r4474.p, align 8, !alias.scope !3, !noalias !4
  %c4475 = trunc i64 %r4474 to i32
  %t4476 = sub i32 %c4475, 4
  %fn4477 = icmp slt i32 %t4476, 0
  %fz4478 = icmp eq i32 %t4476, 0
  %fc4479 = icmp uge i32 %c4475, 4
  %fx14480 = xor i32 %c4475, 4
  %fx24481 = xor i32 %c4475, %t4476
  %fva4482 = and i32 %fx14480, %fx24481
  %fv4483 = icmp slt i32 %fva4482, 0
  %nz4484 = zext i1 %fn4477 to i64
  %zz4485 = zext i1 %fz4478 to i64
  %cz4486 = zext i1 %fc4479 to i64
  %vz4487 = zext i1 %fv4483 to i64
  %ns4488 = shl i64 %nz4484, 31
  %zs4489 = shl i64 %zz4485, 30
  %cs4490 = shl i64 %cz4486, 29
  %vs4491 = shl i64 %vz4487, 28
  %nzor4492 = or i64 %ns4488, %zs4489
  %cvor4493 = or i64 %cs4490, %vs4491
  %nzcv4494 = or i64 %nzor4492, %cvor4493
  %wp4495 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4494, ptr %wp4495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bac word 0x54003b61
  %r4496.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4496 = load i64, ptr %r4496.p, align 8, !alias.scope !3, !noalias !4
  %fsh4498 = lshr i64 %r4496, 30
  %ftr4499 = trunc i64 %fsh4498 to i1
  %cond4497 = xor i1 %ftr4499, true
  br i1 %cond4497, label %L_8002da318, label %L_8002d9bb0_ft
L_8002d9bb0_ft:
  ; @pc 0x8002d9bb0 word 0xb001b3e8
  %wp4500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp4500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bb4 word 0xaa1603e0
  %r4501.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4501 = load i64, ptr %r4501.p, align 8, !alias.scope !3, !noalias !4
  %t4502 = or i64 0, %r4501
  %wp4503 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4502, ptr %wp4503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bb8 word 0xf9470108
  %r4504.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4504 = load i64, ptr %r4504.p, align 8, !alias.scope !3, !noalias !4
  %t4505 = add i64 %r4504, 3584
  %gmp4506 = inttoptr i64 %t4505 to ptr
  %gml4507 = load i64, ptr %gmp4506, align 1, !alias.scope !4, !noalias !3
  %wp4508 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4507, ptr %wp4508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bbc word 0x52800201
  %c4509 = zext i32 16 to i64
  %wp4510 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4509, ptr %wp4510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bc0 word 0xaa1703e2
  %r4511.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4511 = load i64, ptr %r4511.p, align 8, !alias.scope !3, !noalias !4
  %t4512 = or i64 0, %r4511
  %wp4513 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4512, ptr %wp4513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bc4 word 0xf9400108
  %r4514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4514 = load i64, ptr %r4514.p, align 8, !alias.scope !3, !noalias !4
  %gmp4515 = inttoptr i64 %r4514 to ptr
  %gml4516 = load i64, ptr %gmp4515, align 1, !alias.scope !4, !noalias !3
  %wp4517 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4516, ptr %wp4517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9bc8 word 0xd63f0100
  %r4518.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4518 = load i64, ptr %r4518.p, align 8, !alias.scope !3, !noalias !4
  %fp4519 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4518, ptr %fp4519, align 8, !alias.scope !3, !noalias !4
  %wp4520 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727372, ptr %wp4520, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9bcc
L_8002d9bf8_ft:
  ; @pc 0x8002d9bf8 word 0x17fffffb
  br label %L_8002d9be4
L_8002d9c00_ft:
  ; @pc 0x8002d9c00 word 0x93407dcc
  %r4577.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4577 = load i64, ptr %r4577.p, align 8, !alias.scope !3, !noalias !4
  %t4578 = lshr i64 %r4577, 31
  %t4579 = and i64 %t4578, 1
  %t4580 = sub i64 0, %t4579
  %t4581 = and i64 %t4580, -4294967296
  %t4582 = and i64 %r4577, 4294967295
  %t4583 = or i64 %t4581, %t4582
  %wp4584 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4583, ptr %wp4584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c04 word 0x5280050d
  %c4585 = zext i32 40 to i64
  %wp4586 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4585, ptr %wp4586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c08 word 0x9b2d218c
  %r4587.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4587 = load i64, ptr %r4587.p, align 8, !alias.scope !3, !noalias !4
  %c4588 = trunc i64 %r4587 to i32
  %c4589 = sext i32 %c4588 to i64
  %r4590.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4590 = load i64, ptr %r4590.p, align 8, !alias.scope !3, !noalias !4
  %c4591 = trunc i64 %r4590 to i32
  %c4592 = sext i32 %c4591 to i64
  %t4593 = mul i64 %c4589, %c4592
  %r4594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4594 = load i64, ptr %r4594.p, align 8, !alias.scope !3, !noalias !4
  %t4595 = add i64 %r4594, %t4593
  %wp4596 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4595, ptr %wp4596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c0c word 0xf94656ad
  %r4597.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4597 = load i64, ptr %r4597.p, align 8, !alias.scope !3, !noalias !4
  %t4598 = add i64 %r4597, 3240
  %gmp4599 = inttoptr i64 %t4598 to ptr
  %gml4600 = load i64, ptr %gmp4599, align 1, !alias.scope !4, !noalias !3
  %wp4601 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4600, ptr %wp4601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c10 word 0xf9400d8c
  %r4602.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4602 = load i64, ptr %r4602.p, align 8, !alias.scope !3, !noalias !4
  %t4603 = add i64 %r4602, 24
  %gmp4604 = inttoptr i64 %t4603 to ptr
  %gml4605 = load i64, ptr %gmp4604, align 1, !alias.scope !4, !noalias !3
  %wp4606 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4605, ptr %wp4606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c14 word 0xf940018c
  %r4607.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4607 = load i64, ptr %r4607.p, align 8, !alias.scope !3, !noalias !4
  %gmp4608 = inttoptr i64 %r4607 to ptr
  %gml4609 = load i64, ptr %gmp4608, align 1, !alias.scope !4, !noalias !3
  %wp4610 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4609, ptr %wp4610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c18 word 0x7941098c
  %r4611.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4611 = load i64, ptr %r4611.p, align 8, !alias.scope !3, !noalias !4
  %t4612 = add i64 %r4611, 132
  %gmp4613 = inttoptr i64 %t4612 to ptr
  %gml4614 = load i16, ptr %gmp4613, align 1, !alias.scope !4, !noalias !3
  %c4615 = zext i16 %gml4614 to i64
  %wp4616 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4615, ptr %wp4616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c1c word 0xd37be98c
  %r4617.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4617 = load i64, ptr %r4617.p, align 8, !alias.scope !3, !noalias !4
  %ror4618 = call i64 @llvm.fshr.i64(i64 %r4617, i64 %r4617, i64 59)
  %t4619 = and i64 %ror4618, -32
  %wp4620 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4619, ptr %wp4620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c20 word 0xb40041ed
  %r4621.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4621 = load i64, ptr %r4621.p, align 8, !alias.scope !3, !noalias !4
  %cmp4622 = icmp eq i64 %r4621, 0
  br i1 %cmp4622, label %L_8002da45c, label %L_8002d9c24_ft
L_8002d9c24_ft:
  ; @pc 0x8002d9c24 word 0xf94089ae
  %r4623.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4623 = load i64, ptr %r4623.p, align 8, !alias.scope !3, !noalias !4
  %t4624 = add i64 %r4623, 272
  %gmp4625 = inttoptr i64 %t4624 to ptr
  %gml4626 = load i64, ptr %gmp4625, align 1, !alias.scope !4, !noalias !3
  %wp4627 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4626, ptr %wp4627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c28 word 0xb400008e
  %r4628.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4628 = load i64, ptr %r4628.p, align 8, !alias.scope !3, !noalias !4
  %cmp4629 = icmp eq i64 %r4628, 0
  br i1 %cmp4629, label %L_8002d9c38, label %L_8002d9c2c_ft
L_8002d9c2c_ft:
  ; @pc 0x8002d9c2c word 0xf94652af
  %r4630.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4630 = load i64, ptr %r4630.p, align 8, !alias.scope !3, !noalias !4
  %t4631 = add i64 %r4630, 3232
  %gmp4632 = inttoptr i64 %t4631 to ptr
  %gml4633 = load i64, ptr %gmp4632, align 1, !alias.scope !4, !noalias !3
  %wp4634 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml4633, ptr %wp4634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c30 word 0xf9400dce
  %r4635.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4635 = load i64, ptr %r4635.p, align 8, !alias.scope !3, !noalias !4
  %t4636 = add i64 %r4635, 24
  %gmp4637 = inttoptr i64 %t4636 to ptr
  %gml4638 = load i64, ptr %gmp4637, align 1, !alias.scope !4, !noalias !3
  %wp4639 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4638, ptr %wp4639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c34 word 0xcb0e01ee
  %r4640.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4640 = load i64, ptr %r4640.p, align 8, !alias.scope !3, !noalias !4
  %r4641.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4641 = load i64, ptr %r4641.p, align 8, !alias.scope !3, !noalias !4
  %t4642 = sub i64 %r4640, %r4641
  %wp4643 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4642, ptr %wp4643, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9c38
L_8002d9c48_ft:
  ; @pc 0x8002d9c48 word 0x2a1f03eb
  %t4661 = or i32 0, 0
  %c4662 = zext i32 %t4661 to i64
  %wp4663 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4662, ptr %wp4663, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9c4c
L_8002d9c74_ft:
  ; @pc 0x8002d9c74 word 0xd001b3e8
  %wp4743 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp4743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c78 word 0xaa1603e0
  %r4744.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4744 = load i64, ptr %r4744.p, align 8, !alias.scope !3, !noalias !4
  %t4745 = or i64 0, %r4744
  %wp4746 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4745, ptr %wp4746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c7c word 0xf940ad08
  %r4747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4747 = load i64, ptr %r4747.p, align 8, !alias.scope !3, !noalias !4
  %t4748 = add i64 %r4747, 344
  %gmp4749 = inttoptr i64 %t4748 to ptr
  %gml4750 = load i64, ptr %gmp4749, align 1, !alias.scope !4, !noalias !3
  %wp4751 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4750, ptr %wp4751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c80 word 0x52800021
  %c4752 = zext i32 1 to i64
  %wp4753 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4752, ptr %wp4753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c84 word 0xaa1703e2
  %r4754.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4754 = load i64, ptr %r4754.p, align 8, !alias.scope !3, !noalias !4
  %t4755 = or i64 0, %r4754
  %wp4756 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4755, ptr %wp4756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c88 word 0xf9400108
  %r4757.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4757 = load i64, ptr %r4757.p, align 8, !alias.scope !3, !noalias !4
  %gmp4758 = inttoptr i64 %r4757 to ptr
  %gml4759 = load i64, ptr %gmp4758, align 1, !alias.scope !4, !noalias !3
  %wp4760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4759, ptr %wp4760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c8c word 0xd63f0100
  %r4761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4761 = load i64, ptr %r4761.p, align 8, !alias.scope !3, !noalias !4
  %fp4762 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4761, ptr %fp4762, align 8, !alias.scope !3, !noalias !4
  %wp4763 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727568, ptr %wp4763, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9c90 word 0x39722aa8
  %r4764.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4764 = load i64, ptr %r4764.p, align 8, !alias.scope !3, !noalias !4
  %t4765 = add i64 %r4764, 3210
  %gmp4766 = inttoptr i64 %t4765 to ptr
  %gml4767 = load i8, ptr %gmp4766, align 1, !alias.scope !4, !noalias !3
  %c4768 = zext i8 %gml4767 to i64
  %wp4769 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4768, ptr %wp4769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9c94 word 0x37383e88
  %r4770.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4770 = load i64, ptr %r4770.p, align 8, !alias.scope !3, !noalias !4
  %t4771 = and i64 %r4770, 128
  %cmp4772 = icmp ne i64 %t4771, 0
  br i1 %cmp4772, label %L_8002da464, label %L_8002d9c98
L_8002d9cc4_ft:
  ; @pc 0x8002d9cc4 word 0x37b80168
  %r4806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4806 = load i64, ptr %r4806.p, align 8, !alias.scope !3, !noalias !4
  %t4807 = and i64 %r4806, 8388608
  %cmp4808 = icmp ne i64 %t4807, 0
  br i1 %cmp4808, label %L_8002d9cf0, label %L_8002d9cc8_ft
L_8002d9cc8_ft:
  ; @pc 0x8002d9cc8 word 0x397242a8
  %r4809.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4809 = load i64, ptr %r4809.p, align 8, !alias.scope !3, !noalias !4
  %t4810 = add i64 %r4809, 3216
  %gmp4811 = inttoptr i64 %t4810 to ptr
  %gml4812 = load i8, ptr %gmp4811, align 1, !alias.scope !4, !noalias !3
  %c4813 = zext i8 %gml4812 to i64
  %wp4814 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4813, ptr %wp4814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ccc word 0x7100111f
  %r4815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4815 = load i64, ptr %r4815.p, align 8, !alias.scope !3, !noalias !4
  %c4816 = trunc i64 %r4815 to i32
  %t4817 = sub i32 %c4816, 4
  %fn4818 = icmp slt i32 %t4817, 0
  %fz4819 = icmp eq i32 %t4817, 0
  %fc4820 = icmp uge i32 %c4816, 4
  %fx14821 = xor i32 %c4816, 4
  %fx24822 = xor i32 %c4816, %t4817
  %fva4823 = and i32 %fx14821, %fx24822
  %fv4824 = icmp slt i32 %fva4823, 0
  %nz4825 = zext i1 %fn4818 to i64
  %zz4826 = zext i1 %fz4819 to i64
  %cz4827 = zext i1 %fc4820 to i64
  %vz4828 = zext i1 %fv4824 to i64
  %ns4829 = shl i64 %nz4825, 31
  %zs4830 = shl i64 %zz4826, 30
  %cs4831 = shl i64 %cz4827, 29
  %vs4832 = shl i64 %vz4828, 28
  %nzor4833 = or i64 %ns4829, %zs4830
  %cvor4834 = or i64 %cs4831, %vs4832
  %nzcv4835 = or i64 %nzor4833, %cvor4834
  %wp4836 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4835, ptr %wp4836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cd0 word 0x54003d41
  %r4837.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4837 = load i64, ptr %r4837.p, align 8, !alias.scope !3, !noalias !4
  %fsh4839 = lshr i64 %r4837, 30
  %ftr4840 = trunc i64 %fsh4839 to i1
  %cond4838 = xor i1 %ftr4840, true
  br i1 %cond4838, label %L_8002da478, label %L_8002d9cd4_ft
L_8002d9cd4_ft:
  ; @pc 0x8002d9cd4 word 0xb001b3e8
  %wp4841 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp4841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cd8 word 0xaa1603e0
  %r4842.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4842 = load i64, ptr %r4842.p, align 8, !alias.scope !3, !noalias !4
  %t4843 = or i64 0, %r4842
  %wp4844 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4843, ptr %wp4844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cdc word 0xf9470108
  %r4845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4845 = load i64, ptr %r4845.p, align 8, !alias.scope !3, !noalias !4
  %t4846 = add i64 %r4845, 3584
  %gmp4847 = inttoptr i64 %t4846 to ptr
  %gml4848 = load i64, ptr %gmp4847, align 1, !alias.scope !4, !noalias !3
  %wp4849 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4848, ptr %wp4849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ce0 word 0x52800201
  %c4850 = zext i32 16 to i64
  %wp4851 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4850, ptr %wp4851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ce4 word 0xaa1703e2
  %r4852.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4852 = load i64, ptr %r4852.p, align 8, !alias.scope !3, !noalias !4
  %t4853 = or i64 0, %r4852
  %wp4854 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4853, ptr %wp4854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ce8 word 0xf9400108
  %r4855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4855 = load i64, ptr %r4855.p, align 8, !alias.scope !3, !noalias !4
  %gmp4856 = inttoptr i64 %r4855 to ptr
  %gml4857 = load i64, ptr %gmp4856, align 1, !alias.scope !4, !noalias !3
  %wp4858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4857, ptr %wp4858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9cec word 0xd63f0100
  %r4859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4859 = load i64, ptr %r4859.p, align 8, !alias.scope !3, !noalias !4
  %fp4860 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4859, ptr %fp4860, align 8, !alias.scope !3, !noalias !4
  %wp4861 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727664, ptr %wp4861, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9cf0
L_8002d9d08_ft:
  ; @pc 0x8002d9d08 word 0x93407dcc
  %r4881.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4881 = load i64, ptr %r4881.p, align 8, !alias.scope !3, !noalias !4
  %t4882 = lshr i64 %r4881, 31
  %t4883 = and i64 %t4882, 1
  %t4884 = sub i64 0, %t4883
  %t4885 = and i64 %t4884, -4294967296
  %t4886 = and i64 %r4881, 4294967295
  %t4887 = or i64 %t4885, %t4886
  %wp4888 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4887, ptr %wp4888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d0c word 0x5280050d
  %c4889 = zext i32 40 to i64
  %wp4890 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4889, ptr %wp4890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d10 word 0x9b2d218c
  %r4891.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4891 = load i64, ptr %r4891.p, align 8, !alias.scope !3, !noalias !4
  %c4892 = trunc i64 %r4891 to i32
  %c4893 = sext i32 %c4892 to i64
  %r4894.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4894 = load i64, ptr %r4894.p, align 8, !alias.scope !3, !noalias !4
  %c4895 = trunc i64 %r4894 to i32
  %c4896 = sext i32 %c4895 to i64
  %t4897 = mul i64 %c4893, %c4896
  %r4898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4898 = load i64, ptr %r4898.p, align 8, !alias.scope !3, !noalias !4
  %t4899 = add i64 %r4898, %t4897
  %wp4900 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4899, ptr %wp4900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d14 word 0xf94656ad
  %r4901.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4901 = load i64, ptr %r4901.p, align 8, !alias.scope !3, !noalias !4
  %t4902 = add i64 %r4901, 3240
  %gmp4903 = inttoptr i64 %t4902 to ptr
  %gml4904 = load i64, ptr %gmp4903, align 1, !alias.scope !4, !noalias !3
  %wp4905 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4904, ptr %wp4905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d18 word 0xf9400d8c
  %r4906.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4906 = load i64, ptr %r4906.p, align 8, !alias.scope !3, !noalias !4
  %t4907 = add i64 %r4906, 24
  %gmp4908 = inttoptr i64 %t4907 to ptr
  %gml4909 = load i64, ptr %gmp4908, align 1, !alias.scope !4, !noalias !3
  %wp4910 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4909, ptr %wp4910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d1c word 0xf940018c
  %r4911.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4911 = load i64, ptr %r4911.p, align 8, !alias.scope !3, !noalias !4
  %gmp4912 = inttoptr i64 %r4911 to ptr
  %gml4913 = load i64, ptr %gmp4912, align 1, !alias.scope !4, !noalias !3
  %wp4914 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4913, ptr %wp4914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d20 word 0x7941098c
  %r4915.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4915 = load i64, ptr %r4915.p, align 8, !alias.scope !3, !noalias !4
  %t4916 = add i64 %r4915, 132
  %gmp4917 = inttoptr i64 %t4916 to ptr
  %gml4918 = load i16, ptr %gmp4917, align 1, !alias.scope !4, !noalias !3
  %c4919 = zext i16 %gml4918 to i64
  %wp4920 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4919, ptr %wp4920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d24 word 0xd37be98c
  %r4921.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4921 = load i64, ptr %r4921.p, align 8, !alias.scope !3, !noalias !4
  %ror4922 = call i64 @llvm.fshr.i64(i64 %r4921, i64 %r4921, i64 59)
  %t4923 = and i64 %ror4922, -32
  %wp4924 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4923, ptr %wp4924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d28 word 0xb400452d
  %r4925.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4925 = load i64, ptr %r4925.p, align 8, !alias.scope !3, !noalias !4
  %cmp4926 = icmp eq i64 %r4925, 0
  br i1 %cmp4926, label %L_8002da5cc, label %L_8002d9d2c_ft
L_8002d9d2c_ft:
  ; @pc 0x8002d9d2c word 0xf94089ae
  %r4927.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4927 = load i64, ptr %r4927.p, align 8, !alias.scope !3, !noalias !4
  %t4928 = add i64 %r4927, 272
  %gmp4929 = inttoptr i64 %t4928 to ptr
  %gml4930 = load i64, ptr %gmp4929, align 1, !alias.scope !4, !noalias !3
  %wp4931 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4930, ptr %wp4931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d30 word 0xb400008e
  %r4932.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4932 = load i64, ptr %r4932.p, align 8, !alias.scope !3, !noalias !4
  %cmp4933 = icmp eq i64 %r4932, 0
  br i1 %cmp4933, label %L_8002d9d40, label %L_8002d9d34_ft
L_8002d9d34_ft:
  ; @pc 0x8002d9d34 word 0xf94652af
  %r4934.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4934 = load i64, ptr %r4934.p, align 8, !alias.scope !3, !noalias !4
  %t4935 = add i64 %r4934, 3232
  %gmp4936 = inttoptr i64 %t4935 to ptr
  %gml4937 = load i64, ptr %gmp4936, align 1, !alias.scope !4, !noalias !3
  %wp4938 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml4937, ptr %wp4938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d38 word 0xf9400dce
  %r4939.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4939 = load i64, ptr %r4939.p, align 8, !alias.scope !3, !noalias !4
  %t4940 = add i64 %r4939, 24
  %gmp4941 = inttoptr i64 %t4940 to ptr
  %gml4942 = load i64, ptr %gmp4941, align 1, !alias.scope !4, !noalias !3
  %wp4943 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml4942, ptr %wp4943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d3c word 0xcb0e01ee
  %r4944.p = getelementptr inbounds i8, ptr %c, i64 120
  %r4944 = load i64, ptr %r4944.p, align 8, !alias.scope !3, !noalias !4
  %r4945.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4945 = load i64, ptr %r4945.p, align 8, !alias.scope !3, !noalias !4
  %t4946 = sub i64 %r4944, %r4945
  %wp4947 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4946, ptr %wp4947, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9d40
L_8002d9d50_ft:
  ; @pc 0x8002d9d50 word 0x2a1f03eb
  %t4965 = or i32 0, 0
  %c4966 = zext i32 %t4965 to i64
  %wp4967 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4966, ptr %wp4967, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9d54
L_8002d9d7c_ft:
  ; @pc 0x8002d9d7c word 0xd001b3e8
  %wp5047 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp5047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d80 word 0xaa1603e0
  %r5048.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5048 = load i64, ptr %r5048.p, align 8, !alias.scope !3, !noalias !4
  %t5049 = or i64 0, %r5048
  %wp5050 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5049, ptr %wp5050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d84 word 0xf940ad08
  %r5051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5051 = load i64, ptr %r5051.p, align 8, !alias.scope !3, !noalias !4
  %t5052 = add i64 %r5051, 344
  %gmp5053 = inttoptr i64 %t5052 to ptr
  %gml5054 = load i64, ptr %gmp5053, align 1, !alias.scope !4, !noalias !3
  %wp5055 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5054, ptr %wp5055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d88 word 0x52800021
  %c5056 = zext i32 1 to i64
  %wp5057 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5056, ptr %wp5057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d8c word 0xaa1703e2
  %r5058.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5058 = load i64, ptr %r5058.p, align 8, !alias.scope !3, !noalias !4
  %t5059 = or i64 0, %r5058
  %wp5060 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5059, ptr %wp5060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d90 word 0xf9400108
  %r5061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5061 = load i64, ptr %r5061.p, align 8, !alias.scope !3, !noalias !4
  %gmp5062 = inttoptr i64 %r5061 to ptr
  %gml5063 = load i64, ptr %gmp5062, align 1, !alias.scope !4, !noalias !3
  %wp5064 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5063, ptr %wp5064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d94 word 0xd63f0100
  %r5065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5065 = load i64, ptr %r5065.p, align 8, !alias.scope !3, !noalias !4
  %fp5066 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5065, ptr %fp5066, align 8, !alias.scope !3, !noalias !4
  %wp5067 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727832, ptr %wp5067, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9d98 word 0x39722aa8
  %r5068.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5068 = load i64, ptr %r5068.p, align 8, !alias.scope !3, !noalias !4
  %t5069 = add i64 %r5068, 3210
  %gmp5070 = inttoptr i64 %t5069 to ptr
  %gml5071 = load i8, ptr %gmp5070, align 1, !alias.scope !4, !noalias !3
  %c5072 = zext i8 %gml5071 to i64
  %wp5073 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5072, ptr %wp5073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9d9c word 0x373841c8
  %r5074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5074 = load i64, ptr %r5074.p, align 8, !alias.scope !3, !noalias !4
  %t5075 = and i64 %r5074, 128
  %cmp5076 = icmp ne i64 %t5075, 0
  br i1 %cmp5076, label %L_8002da5d4, label %L_8002d9da0
L_8002d9dcc_ft:
  ; @pc 0x8002d9dcc word 0x37b80168
  %r5110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5110 = load i64, ptr %r5110.p, align 8, !alias.scope !3, !noalias !4
  %t5111 = and i64 %r5110, 8388608
  %cmp5112 = icmp ne i64 %t5111, 0
  br i1 %cmp5112, label %L_8002d9df8, label %L_8002d9dd0_ft
L_8002d9dd0_ft:
  ; @pc 0x8002d9dd0 word 0x397242a8
  %r5113.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5113 = load i64, ptr %r5113.p, align 8, !alias.scope !3, !noalias !4
  %t5114 = add i64 %r5113, 3216
  %gmp5115 = inttoptr i64 %t5114 to ptr
  %gml5116 = load i8, ptr %gmp5115, align 1, !alias.scope !4, !noalias !3
  %c5117 = zext i8 %gml5116 to i64
  %wp5118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5117, ptr %wp5118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dd4 word 0x7100111f
  %r5119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5119 = load i64, ptr %r5119.p, align 8, !alias.scope !3, !noalias !4
  %c5120 = trunc i64 %r5119 to i32
  %t5121 = sub i32 %c5120, 4
  %fn5122 = icmp slt i32 %t5121, 0
  %fz5123 = icmp eq i32 %t5121, 0
  %fc5124 = icmp uge i32 %c5120, 4
  %fx15125 = xor i32 %c5120, 4
  %fx25126 = xor i32 %c5120, %t5121
  %fva5127 = and i32 %fx15125, %fx25126
  %fv5128 = icmp slt i32 %fva5127, 0
  %nz5129 = zext i1 %fn5122 to i64
  %zz5130 = zext i1 %fz5123 to i64
  %cz5131 = zext i1 %fc5124 to i64
  %vz5132 = zext i1 %fv5128 to i64
  %ns5133 = shl i64 %nz5129, 31
  %zs5134 = shl i64 %zz5130, 30
  %cs5135 = shl i64 %cz5131, 29
  %vs5136 = shl i64 %vz5132, 28
  %nzor5137 = or i64 %ns5133, %zs5134
  %cvor5138 = or i64 %cs5135, %vs5136
  %nzcv5139 = or i64 %nzor5137, %cvor5138
  %wp5140 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5139, ptr %wp5140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dd8 word 0x540040c1
  %r5141.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5141 = load i64, ptr %r5141.p, align 8, !alias.scope !3, !noalias !4
  %fsh5143 = lshr i64 %r5141, 30
  %ftr5144 = trunc i64 %fsh5143 to i1
  %cond5142 = xor i1 %ftr5144, true
  br i1 %cond5142, label %L_8002da5f0, label %L_8002d9ddc_ft
L_8002d9ddc_ft:
  ; @pc 0x8002d9ddc word 0xb001b3e8
  %wp5145 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp5145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9de0 word 0xaa1603e0
  %r5146.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5146 = load i64, ptr %r5146.p, align 8, !alias.scope !3, !noalias !4
  %t5147 = or i64 0, %r5146
  %wp5148 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5147, ptr %wp5148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9de4 word 0xf9470108
  %r5149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5149 = load i64, ptr %r5149.p, align 8, !alias.scope !3, !noalias !4
  %t5150 = add i64 %r5149, 3584
  %gmp5151 = inttoptr i64 %t5150 to ptr
  %gml5152 = load i64, ptr %gmp5151, align 1, !alias.scope !4, !noalias !3
  %wp5153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5152, ptr %wp5153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9de8 word 0x52800201
  %c5154 = zext i32 16 to i64
  %wp5155 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5154, ptr %wp5155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9dec word 0xaa1703e2
  %r5156.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5156 = load i64, ptr %r5156.p, align 8, !alias.scope !3, !noalias !4
  %t5157 = or i64 0, %r5156
  %wp5158 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5157, ptr %wp5158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9df0 word 0xf9400108
  %r5159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5159 = load i64, ptr %r5159.p, align 8, !alias.scope !3, !noalias !4
  %gmp5160 = inttoptr i64 %r5159 to ptr
  %gml5161 = load i64, ptr %gmp5160, align 1, !alias.scope !4, !noalias !3
  %wp5162 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5161, ptr %wp5162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9df4 word 0xd63f0100
  %r5163.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5163 = load i64, ptr %r5163.p, align 8, !alias.scope !3, !noalias !4
  %fp5164 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5163, ptr %fp5164, align 8, !alias.scope !3, !noalias !4
  %wp5165 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362727928, ptr %wp5165, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9df8
L_8002d9e00_ft:
  ; @pc 0x8002d9e00 word 0x2a1c03f0
  %r5175.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5175 = load i64, ptr %r5175.p, align 8, !alias.scope !3, !noalias !4
  %c5176 = trunc i64 %r5175 to i32
  %t5177 = or i32 0, %c5176
  %c5178 = zext i32 %t5177 to i64
  %wp5179 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5178, ptr %wp5179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e04 word 0x52800033
  %c5180 = zext i32 1 to i64
  %wp5181 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c5180, ptr %wp5181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e08 word 0x17fffd57
  br label %L_8002d9364
L_8002d9e10_ft:
  ; @pc 0x8002d9e10 word 0x93407dcc
  %r5185.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5185 = load i64, ptr %r5185.p, align 8, !alias.scope !3, !noalias !4
  %t5186 = lshr i64 %r5185, 31
  %t5187 = and i64 %t5186, 1
  %t5188 = sub i64 0, %t5187
  %t5189 = and i64 %t5188, -4294967296
  %t5190 = and i64 %r5185, 4294967295
  %t5191 = or i64 %t5189, %t5190
  %wp5192 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5191, ptr %wp5192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e14 word 0x5280050d
  %c5193 = zext i32 40 to i64
  %wp5194 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5193, ptr %wp5194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e18 word 0x9b2d218c
  %r5195.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5195 = load i64, ptr %r5195.p, align 8, !alias.scope !3, !noalias !4
  %c5196 = trunc i64 %r5195 to i32
  %c5197 = sext i32 %c5196 to i64
  %r5198.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5198 = load i64, ptr %r5198.p, align 8, !alias.scope !3, !noalias !4
  %c5199 = trunc i64 %r5198 to i32
  %c5200 = sext i32 %c5199 to i64
  %t5201 = mul i64 %c5197, %c5200
  %r5202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5202 = load i64, ptr %r5202.p, align 8, !alias.scope !3, !noalias !4
  %t5203 = add i64 %r5202, %t5201
  %wp5204 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5203, ptr %wp5204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e1c word 0xf94656ad
  %r5205.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5205 = load i64, ptr %r5205.p, align 8, !alias.scope !3, !noalias !4
  %t5206 = add i64 %r5205, 3240
  %gmp5207 = inttoptr i64 %t5206 to ptr
  %gml5208 = load i64, ptr %gmp5207, align 1, !alias.scope !4, !noalias !3
  %wp5209 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5208, ptr %wp5209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e20 word 0xf9400d8c
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %t5211 = add i64 %r5210, 24
  %gmp5212 = inttoptr i64 %t5211 to ptr
  %gml5213 = load i64, ptr %gmp5212, align 1, !alias.scope !4, !noalias !3
  %wp5214 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5213, ptr %wp5214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e24 word 0xf940018c
  %r5215.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5215 = load i64, ptr %r5215.p, align 8, !alias.scope !3, !noalias !4
  %gmp5216 = inttoptr i64 %r5215 to ptr
  %gml5217 = load i64, ptr %gmp5216, align 1, !alias.scope !4, !noalias !3
  %wp5218 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5217, ptr %wp5218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e28 word 0x7941098c
  %r5219.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5219 = load i64, ptr %r5219.p, align 8, !alias.scope !3, !noalias !4
  %t5220 = add i64 %r5219, 132
  %gmp5221 = inttoptr i64 %t5220 to ptr
  %gml5222 = load i16, ptr %gmp5221, align 1, !alias.scope !4, !noalias !3
  %c5223 = zext i16 %gml5222 to i64
  %wp5224 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c5223, ptr %wp5224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e2c word 0xd37be98c
  %r5225.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5225 = load i64, ptr %r5225.p, align 8, !alias.scope !3, !noalias !4
  %ror5226 = call i64 @llvm.fshr.i64(i64 %r5225, i64 %r5225, i64 59)
  %t5227 = and i64 %ror5226, -32
  %wp5228 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t5227, ptr %wp5228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e30 word 0xb400434d
  %r5229.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5229 = load i64, ptr %r5229.p, align 8, !alias.scope !3, !noalias !4
  %cmp5230 = icmp eq i64 %r5229, 0
  br i1 %cmp5230, label %L_8002da698, label %L_8002d9e34_ft
L_8002d9e34_ft:
  ; @pc 0x8002d9e34 word 0xf94089ae
  %r5231.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5231 = load i64, ptr %r5231.p, align 8, !alias.scope !3, !noalias !4
  %t5232 = add i64 %r5231, 272
  %gmp5233 = inttoptr i64 %t5232 to ptr
  %gml5234 = load i64, ptr %gmp5233, align 1, !alias.scope !4, !noalias !3
  %wp5235 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5234, ptr %wp5235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e38 word 0xb400008e
  %r5236.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5236 = load i64, ptr %r5236.p, align 8, !alias.scope !3, !noalias !4
  %cmp5237 = icmp eq i64 %r5236, 0
  br i1 %cmp5237, label %L_8002d9e48, label %L_8002d9e3c_ft
L_8002d9e3c_ft:
  ; @pc 0x8002d9e3c word 0xf94652af
  %r5238.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5238 = load i64, ptr %r5238.p, align 8, !alias.scope !3, !noalias !4
  %t5239 = add i64 %r5238, 3232
  %gmp5240 = inttoptr i64 %t5239 to ptr
  %gml5241 = load i64, ptr %gmp5240, align 1, !alias.scope !4, !noalias !3
  %wp5242 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml5241, ptr %wp5242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e40 word 0xf9400dce
  %r5243.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5243 = load i64, ptr %r5243.p, align 8, !alias.scope !3, !noalias !4
  %t5244 = add i64 %r5243, 24
  %gmp5245 = inttoptr i64 %t5244 to ptr
  %gml5246 = load i64, ptr %gmp5245, align 1, !alias.scope !4, !noalias !3
  %wp5247 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml5246, ptr %wp5247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e44 word 0xcb0e01ee
  %r5248.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5248 = load i64, ptr %r5248.p, align 8, !alias.scope !3, !noalias !4
  %r5249.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5249 = load i64, ptr %r5249.p, align 8, !alias.scope !3, !noalias !4
  %t5250 = sub i64 %r5248, %r5249
  %wp5251 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5250, ptr %wp5251, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9e48
L_8002d9e58_ft:
  ; @pc 0x8002d9e58 word 0x2a1f03eb
  %t5269 = or i32 0, 0
  %c5270 = zext i32 %t5269 to i64
  %wp5271 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5270, ptr %wp5271, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9e5c
L_8002d9e84_ft:
  ; @pc 0x8002d9e84 word 0xd001b3e8
  %wp5351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419863552, ptr %wp5351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e88 word 0xaa1603e0
  %r5352.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5352 = load i64, ptr %r5352.p, align 8, !alias.scope !3, !noalias !4
  %t5353 = or i64 0, %r5352
  %wp5354 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5353, ptr %wp5354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e8c word 0xf940ad08
  %r5355.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5355 = load i64, ptr %r5355.p, align 8, !alias.scope !3, !noalias !4
  %t5356 = add i64 %r5355, 344
  %gmp5357 = inttoptr i64 %t5356 to ptr
  %gml5358 = load i64, ptr %gmp5357, align 1, !alias.scope !4, !noalias !3
  %wp5359 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5358, ptr %wp5359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e90 word 0x52800021
  %c5360 = zext i32 1 to i64
  %wp5361 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5360, ptr %wp5361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e94 word 0xaa1703e2
  %r5362.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5362 = load i64, ptr %r5362.p, align 8, !alias.scope !3, !noalias !4
  %t5363 = or i64 0, %r5362
  %wp5364 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5363, ptr %wp5364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e98 word 0xf9400108
  %r5365.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5365 = load i64, ptr %r5365.p, align 8, !alias.scope !3, !noalias !4
  %gmp5366 = inttoptr i64 %r5365 to ptr
  %gml5367 = load i64, ptr %gmp5366, align 1, !alias.scope !4, !noalias !3
  %wp5368 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5367, ptr %wp5368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9e9c word 0xd63f0100
  %r5369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5369 = load i64, ptr %r5369.p, align 8, !alias.scope !3, !noalias !4
  %fp5370 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5369, ptr %fp5370, align 8, !alias.scope !3, !noalias !4
  %wp5371 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728096, ptr %wp5371, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002d9ea0 word 0x39722aa8
  %r5372.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5372 = load i64, ptr %r5372.p, align 8, !alias.scope !3, !noalias !4
  %t5373 = add i64 %r5372, 3210
  %gmp5374 = inttoptr i64 %t5373 to ptr
  %gml5375 = load i8, ptr %gmp5374, align 1, !alias.scope !4, !noalias !3
  %c5376 = zext i8 %gml5375 to i64
  %wp5377 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5376, ptr %wp5377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ea4 word 0x37383fe8
  %r5378.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5378 = load i64, ptr %r5378.p, align 8, !alias.scope !3, !noalias !4
  %t5379 = and i64 %r5378, 128
  %cmp5380 = icmp ne i64 %t5379, 0
  br i1 %cmp5380, label %L_8002da6a0, label %L_8002d9ea8
L_8002d9ed4_ft:
  ; @pc 0x8002d9ed4 word 0x37b80168
  %r5414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5414 = load i64, ptr %r5414.p, align 8, !alias.scope !3, !noalias !4
  %t5415 = and i64 %r5414, 8388608
  %cmp5416 = icmp ne i64 %t5415, 0
  br i1 %cmp5416, label %L_8002d9f00, label %L_8002d9ed8_ft
L_8002d9ed8_ft:
  ; @pc 0x8002d9ed8 word 0x397242a8
  %r5417.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5417 = load i64, ptr %r5417.p, align 8, !alias.scope !3, !noalias !4
  %t5418 = add i64 %r5417, 3216
  %gmp5419 = inttoptr i64 %t5418 to ptr
  %gml5420 = load i8, ptr %gmp5419, align 1, !alias.scope !4, !noalias !3
  %c5421 = zext i8 %gml5420 to i64
  %wp5422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5421, ptr %wp5422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9edc word 0x7100111f
  %r5423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5423 = load i64, ptr %r5423.p, align 8, !alias.scope !3, !noalias !4
  %c5424 = trunc i64 %r5423 to i32
  %t5425 = sub i32 %c5424, 4
  %fn5426 = icmp slt i32 %t5425, 0
  %fz5427 = icmp eq i32 %t5425, 0
  %fc5428 = icmp uge i32 %c5424, 4
  %fx15429 = xor i32 %c5424, 4
  %fx25430 = xor i32 %c5424, %t5425
  %fva5431 = and i32 %fx15429, %fx25430
  %fv5432 = icmp slt i32 %fva5431, 0
  %nz5433 = zext i1 %fn5426 to i64
  %zz5434 = zext i1 %fz5427 to i64
  %cz5435 = zext i1 %fc5428 to i64
  %vz5436 = zext i1 %fv5432 to i64
  %ns5437 = shl i64 %nz5433, 31
  %zs5438 = shl i64 %zz5434, 30
  %cs5439 = shl i64 %cz5435, 29
  %vs5440 = shl i64 %vz5436, 28
  %nzor5441 = or i64 %ns5437, %zs5438
  %cvor5442 = or i64 %cs5439, %vs5440
  %nzcv5443 = or i64 %nzor5441, %cvor5442
  %wp5444 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5443, ptr %wp5444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ee0 word 0x54003ea1
  %r5445.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5445 = load i64, ptr %r5445.p, align 8, !alias.scope !3, !noalias !4
  %fsh5447 = lshr i64 %r5445, 30
  %ftr5448 = trunc i64 %fsh5447 to i1
  %cond5446 = xor i1 %ftr5448, true
  br i1 %cond5446, label %L_8002da6b4, label %L_8002d9ee4_ft
L_8002d9ee4_ft:
  ; @pc 0x8002d9ee4 word 0xb001b3e8
  %wp5449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp5449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ee8 word 0xaa1603e0
  %r5450.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5450 = load i64, ptr %r5450.p, align 8, !alias.scope !3, !noalias !4
  %t5451 = or i64 0, %r5450
  %wp5452 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5451, ptr %wp5452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9eec word 0xf9470108
  %r5453.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5453 = load i64, ptr %r5453.p, align 8, !alias.scope !3, !noalias !4
  %t5454 = add i64 %r5453, 3584
  %gmp5455 = inttoptr i64 %t5454 to ptr
  %gml5456 = load i64, ptr %gmp5455, align 1, !alias.scope !4, !noalias !3
  %wp5457 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5456, ptr %wp5457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ef0 word 0x52800201
  %c5458 = zext i32 16 to i64
  %wp5459 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5458, ptr %wp5459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ef4 word 0xaa1703e2
  %r5460.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5460 = load i64, ptr %r5460.p, align 8, !alias.scope !3, !noalias !4
  %t5461 = or i64 0, %r5460
  %wp5462 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5461, ptr %wp5462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9ef8 word 0xf9400108
  %r5463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5463 = load i64, ptr %r5463.p, align 8, !alias.scope !3, !noalias !4
  %gmp5464 = inttoptr i64 %r5463 to ptr
  %gml5465 = load i64, ptr %gmp5464, align 1, !alias.scope !4, !noalias !3
  %wp5466 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5465, ptr %wp5466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9efc word 0xd63f0100
  %r5467.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5467 = load i64, ptr %r5467.p, align 8, !alias.scope !3, !noalias !4
  %fp5468 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5467, ptr %fp5468, align 8, !alias.scope !3, !noalias !4
  %wp5469 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728192, ptr %wp5469, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8002d9f00
L_8002d9f2c_ft:
  ; @pc 0x8002d9f2c word 0x17fffffb
  br label %L_8002d9f18
L_8002d9f4c_ft:
  ; @pc 0x8002d9f4c word 0x17fffffb
  br label %L_8002d9f38
L_8002d9f6c_ft:
  ; @pc 0x8002d9f6c word 0x17fffffb
  br label %L_8002d9f58
L_8002d9f84_ft:
  ; @pc 0x8002d9f84 word 0x17fffffc
  br label %L_8002d9f74
L_8002d9f9c_ft:
  ; @pc 0x8002d9f9c word 0x17fffffc
  br label %L_8002d9f8c
L_8002d9fb8_ft:
  ; @pc 0x8002d9fb8 word 0xf94007f8
  %r5699.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5699 = load i64, ptr %r5699.p, align 8, !alias.scope !3, !noalias !4
  %t5700 = add i64 %r5699, 8
  %gmp5701 = inttoptr i64 %t5700 to ptr
  %gml5702 = load i64, ptr %gmp5701, align 1, !alias.scope !4, !noalias !3
  %wp5703 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5702, ptr %wp5703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002d9fbc word 0x17fffec4
  br label %L_8002d9acc
L_8002d9fd0_ft:
  ; @pc 0x8002d9fd0 word 0x17fffffc
  br label %L_8002d9fc0
L_8002d9fe0_ft:
  ; @pc 0x8002d9fe0 word 0x17fffd45
  br label %L_8002d94f4
L_8002d9ff4_ft:
  ; @pc 0x8002d9ff4 word 0xf94007f8
  %r5771.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5771 = load i64, ptr %r5771.p, align 8, !alias.scope !3, !noalias !4
  %t5772 = add i64 %r5771, 8
  %gmp5773 = inttoptr i64 %t5772 to ptr
  %gml5774 = load i64, ptr %gmp5773, align 1, !alias.scope !4, !noalias !3
  %wp5775 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5774, ptr %wp5775, align 8, !alias.scope !3, !noalias !4
  br label %L_8002d9ff8
L_8002da004_ft:
  ; @pc 0x8002da004 word 0x17fffd3c
  br label %L_8002d94f4
L_8002da01c_ft:
  ; @pc 0x8002da01c word 0xf94003e0
  %r5817.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5817 = load i64, ptr %r5817.p, align 8, !alias.scope !3, !noalias !4
  %gmp5818 = inttoptr i64 %r5817 to ptr
  %gml5819 = load i64, ptr %gmp5818, align 1, !alias.scope !4, !noalias !3
  %wp5820 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5819, ptr %wp5820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da020 word 0x97fd0523
  %wp5821 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728484, ptr %wp5821, align 8, !alias.scope !3, !noalias !4
  call void @f_80021b4ac(ptr %c)
  ; @pc 0x8002da024 word 0x17fffffc
  br label %L_8002da014
L_8002da05c_ft:
  ; @pc 0x8002da05c word 0x17fffbfd
  br label %L_8002d9050
L_8002da078_ft:
  ; @pc 0x8002da078 word 0xb9407189
  %r5909.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5909 = load i64, ptr %r5909.p, align 8, !alias.scope !3, !noalias !4
  %t5910 = add i64 %r5909, 112
  %gmp5911 = inttoptr i64 %t5910 to ptr
  %gml5912 = load i32, ptr %gmp5911, align 1, !alias.scope !4, !noalias !3
  %c5913 = zext i32 %gml5912 to i64
  %wp5914 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5913, ptr %wp5914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da07c word 0x2a1c03f0
  %r5915.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5915 = load i64, ptr %r5915.p, align 8, !alias.scope !3, !noalias !4
  %c5916 = trunc i64 %r5915 to i32
  %t5917 = or i32 0, %c5916
  %c5918 = zext i32 %t5917 to i64
  %wp5919 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5918, ptr %wp5919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da080 word 0x795556ab
  %r5920.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5920 = load i64, ptr %r5920.p, align 8, !alias.scope !3, !noalias !4
  %t5921 = add i64 %r5920, 2730
  %gmp5922 = inttoptr i64 %t5921 to ptr
  %gml5923 = load i16, ptr %gmp5922, align 1, !alias.scope !4, !noalias !3
  %c5924 = zext i16 %gml5923 to i64
  %wp5925 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5924, ptr %wp5925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da084 word 0x4b0b0129
  %r5926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5926 = load i64, ptr %r5926.p, align 8, !alias.scope !3, !noalias !4
  %c5927 = trunc i64 %r5926 to i32
  %r5928.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5928 = load i64, ptr %r5928.p, align 8, !alias.scope !3, !noalias !4
  %c5929 = trunc i64 %r5928 to i32
  %t5930 = sub i32 %c5927, %c5929
  %c5931 = zext i32 %t5930 to i64
  %wp5932 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5931, ptr %wp5932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da088 word 0x39722aab
  %r5933.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5933 = load i64, ptr %r5933.p, align 8, !alias.scope !3, !noalias !4
  %t5934 = add i64 %r5933, 3210
  %gmp5935 = inttoptr i64 %t5934 to ptr
  %gml5936 = load i8, ptr %gmp5935, align 1, !alias.scope !4, !noalias !3
  %c5937 = zext i8 %gml5936 to i64
  %wp5938 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5937, ptr %wp5938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da08c word 0xb94a3aaa
  %r5939.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5939 = load i64, ptr %r5939.p, align 8, !alias.scope !3, !noalias !4
  %t5940 = add i64 %r5939, 2616
  %gmp5941 = inttoptr i64 %t5940 to ptr
  %gml5942 = load i32, ptr %gmp5941, align 1, !alias.scope !4, !noalias !3
  %c5943 = zext i32 %gml5942 to i64
  %wp5944 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5943, ptr %wp5944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da090 word 0xf94522a8
  %r5945.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5945 = load i64, ptr %r5945.p, align 8, !alias.scope !3, !noalias !4
  %t5946 = add i64 %r5945, 2624
  %gmp5947 = inttoptr i64 %t5946 to ptr
  %gml5948 = load i64, ptr %gmp5947, align 1, !alias.scope !4, !noalias !3
  %wp5949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5948, ptr %wp5949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da094 word 0x721c017f
  %r5950.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5950 = load i64, ptr %r5950.p, align 8, !alias.scope !3, !noalias !4
  %c5951 = trunc i64 %r5950 to i32
  %t5952 = and i32 %c5951, 16
  %fn5953 = icmp slt i32 %t5952, 0
  %fz5954 = icmp eq i32 %t5952, 0
  %nz5955 = zext i1 %fn5953 to i64
  %zz5956 = zext i1 %fz5954 to i64
  %ns5957 = shl i64 %nz5955, 31
  %zs5958 = shl i64 %zz5956, 30
  %nzcv5959 = or i64 %ns5957, %zs5958
  %wp5960 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5959, ptr %wp5960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da098 word 0xf94007f8
  %r5961.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5961 = load i64, ptr %r5961.p, align 8, !alias.scope !3, !noalias !4
  %t5962 = add i64 %r5961, 8
  %gmp5963 = inttoptr i64 %t5962 to ptr
  %gml5964 = load i64, ptr %gmp5963, align 1, !alias.scope !4, !noalias !3
  %wp5965 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml5964, ptr %wp5965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da09c word 0x1a9f17eb
  %t5966 = add i32 0, 1
  %r5967.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5967 = load i64, ptr %r5967.p, align 8, !alias.scope !3, !noalias !4
  %fsh5969 = lshr i64 %r5967, 30
  %ftr5970 = trunc i64 %fsh5969 to i1
  %cond5968 = xor i1 %ftr5970, true
  %sel5971 = select i1 %cond5968, i32 0, i32 %t5966
  %c5972 = zext i32 %sel5971 to i64
  %wp5973 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5972, ptr %wp5973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0a0 word 0x17fffd70
  br label %L_8002d9660
L_8002da0d0_ft:
  ; @pc 0x8002da0d0 word 0x9001b3e8
  %wp6014 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp6014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da0d4 word 0xf9470108
  %r6015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6015 = load i64, ptr %r6015.p, align 8, !alias.scope !3, !noalias !4
  %t6016 = add i64 %r6015, 3584
  %gmp6017 = inttoptr i64 %t6016 to ptr
  %gml6018 = load i64, ptr %gmp6017, align 1, !alias.scope !4, !noalias !3
  %wp6019 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6018, ptr %wp6019, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da0d8
L_8002da124_ft:
  ; @pc 0x8002da124 word 0xd001b408
  %wp6090 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da128 word 0xf946ed08
  %r6091.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6091 = load i64, ptr %r6091.p, align 8, !alias.scope !3, !noalias !4
  %t6092 = add i64 %r6091, 3544
  %gmp6093 = inttoptr i64 %t6092 to ptr
  %gml6094 = load i64, ptr %gmp6093, align 1, !alias.scope !4, !noalias !3
  %wp6095 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6094, ptr %wp6095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da12c word 0x17ffffeb
  br label %L_8002da0d8
L_8002da148_ft:
  ; @pc 0x8002da148 word 0xd001b408
  %wp6133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da14c word 0xaa1603e0
  %r6134.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6134 = load i64, ptr %r6134.p, align 8, !alias.scope !3, !noalias !4
  %t6135 = or i64 0, %r6134
  %wp6136 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6135, ptr %wp6136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da150 word 0xf9413508
  %r6137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6137 = load i64, ptr %r6137.p, align 8, !alias.scope !3, !noalias !4
  %t6138 = add i64 %r6137, 616
  %gmp6139 = inttoptr i64 %t6138 to ptr
  %gml6140 = load i64, ptr %gmp6139, align 1, !alias.scope !4, !noalias !3
  %wp6141 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6140, ptr %wp6141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da154 word 0xaa1703e1
  %r6142.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6142 = load i64, ptr %r6142.p, align 8, !alias.scope !3, !noalias !4
  %t6143 = or i64 0, %r6142
  %wp6144 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6143, ptr %wp6144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da158 word 0x52800082
  %c6145 = zext i32 4 to i64
  %wp6146 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6145, ptr %wp6146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da15c word 0xf9400108
  %r6147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6147 = load i64, ptr %r6147.p, align 8, !alias.scope !3, !noalias !4
  %gmp6148 = inttoptr i64 %r6147 to ptr
  %gml6149 = load i64, ptr %gmp6148, align 1, !alias.scope !4, !noalias !3
  %wp6150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6149, ptr %wp6150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da160 word 0x2a1f03e3
  %t6151 = or i32 0, 0
  %c6152 = zext i32 %t6151 to i64
  %wp6153 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6152, ptr %wp6153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da164 word 0xd63f0100
  %r6154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6154 = load i64, ptr %r6154.p, align 8, !alias.scope !3, !noalias !4
  %fp6155 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6154, ptr %fp6155, align 8, !alias.scope !3, !noalias !4
  %wp6156 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362728808, ptr %wp6156, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da168 word 0x17fffd67
  br label %L_8002d9704
L_8002da184_ft:
  ; @pc 0x8002da184 word 0xb9407189
  %r6193.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6193 = load i64, ptr %r6193.p, align 8, !alias.scope !3, !noalias !4
  %t6194 = add i64 %r6193, 112
  %gmp6195 = inttoptr i64 %t6194 to ptr
  %gml6196 = load i32, ptr %gmp6195, align 1, !alias.scope !4, !noalias !3
  %c6197 = zext i32 %gml6196 to i64
  %wp6198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6197, ptr %wp6198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da188 word 0x2a1c03f0
  %r6199.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6199 = load i64, ptr %r6199.p, align 8, !alias.scope !3, !noalias !4
  %c6200 = trunc i64 %r6199 to i32
  %t6201 = or i32 0, %c6200
  %c6202 = zext i32 %t6201 to i64
  %wp6203 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c6202, ptr %wp6203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da18c word 0x795556ab
  %r6204.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6204 = load i64, ptr %r6204.p, align 8, !alias.scope !3, !noalias !4
  %t6205 = add i64 %r6204, 2730
  %gmp6206 = inttoptr i64 %t6205 to ptr
  %gml6207 = load i16, ptr %gmp6206, align 1, !alias.scope !4, !noalias !3
  %c6208 = zext i16 %gml6207 to i64
  %wp6209 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6208, ptr %wp6209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da190 word 0x4b0b0129
  %r6210.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6210 = load i64, ptr %r6210.p, align 8, !alias.scope !3, !noalias !4
  %c6211 = trunc i64 %r6210 to i32
  %r6212.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6212 = load i64, ptr %r6212.p, align 8, !alias.scope !3, !noalias !4
  %c6213 = trunc i64 %r6212 to i32
  %t6214 = sub i32 %c6211, %c6213
  %c6215 = zext i32 %t6214 to i64
  %wp6216 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6215, ptr %wp6216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da194 word 0x39722aab
  %r6217.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6217 = load i64, ptr %r6217.p, align 8, !alias.scope !3, !noalias !4
  %t6218 = add i64 %r6217, 3210
  %gmp6219 = inttoptr i64 %t6218 to ptr
  %gml6220 = load i8, ptr %gmp6219, align 1, !alias.scope !4, !noalias !3
  %c6221 = zext i8 %gml6220 to i64
  %wp6222 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6221, ptr %wp6222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da198 word 0xb94a3aaa
  %r6223.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6223 = load i64, ptr %r6223.p, align 8, !alias.scope !3, !noalias !4
  %t6224 = add i64 %r6223, 2616
  %gmp6225 = inttoptr i64 %t6224 to ptr
  %gml6226 = load i32, ptr %gmp6225, align 1, !alias.scope !4, !noalias !3
  %c6227 = zext i32 %gml6226 to i64
  %wp6228 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6227, ptr %wp6228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da19c word 0xf94522a8
  %r6229.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6229 = load i64, ptr %r6229.p, align 8, !alias.scope !3, !noalias !4
  %t6230 = add i64 %r6229, 2624
  %gmp6231 = inttoptr i64 %t6230 to ptr
  %gml6232 = load i64, ptr %gmp6231, align 1, !alias.scope !4, !noalias !3
  %wp6233 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6232, ptr %wp6233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1a0 word 0x721c017f
  %r6234.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6234 = load i64, ptr %r6234.p, align 8, !alias.scope !3, !noalias !4
  %c6235 = trunc i64 %r6234 to i32
  %t6236 = and i32 %c6235, 16
  %fn6237 = icmp slt i32 %t6236, 0
  %fz6238 = icmp eq i32 %t6236, 0
  %nz6239 = zext i1 %fn6237 to i64
  %zz6240 = zext i1 %fz6238 to i64
  %ns6241 = shl i64 %nz6239, 31
  %zs6242 = shl i64 %zz6240, 30
  %nzcv6243 = or i64 %ns6241, %zs6242
  %wp6244 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6243, ptr %wp6244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1a4 word 0xf94007f8
  %r6245.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6245 = load i64, ptr %r6245.p, align 8, !alias.scope !3, !noalias !4
  %t6246 = add i64 %r6245, 8
  %gmp6247 = inttoptr i64 %t6246 to ptr
  %gml6248 = load i64, ptr %gmp6247, align 1, !alias.scope !4, !noalias !3
  %wp6249 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6248, ptr %wp6249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1a8 word 0x1a9f17eb
  %t6250 = add i32 0, 1
  %r6251.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6251 = load i64, ptr %r6251.p, align 8, !alias.scope !3, !noalias !4
  %fsh6253 = lshr i64 %r6251, 30
  %ftr6254 = trunc i64 %fsh6253 to i1
  %cond6252 = xor i1 %ftr6254, true
  %sel6255 = select i1 %cond6252, i32 0, i32 %t6250
  %c6256 = zext i32 %sel6255 to i64
  %wp6257 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6256, ptr %wp6257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1ac word 0x17fffc94
  br label %L_8002d93fc
L_8002da1d4_ft:
  ; @pc 0x8002da1d4 word 0x9001b3e8
  %wp6296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp6296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da1d8 word 0xf9470108
  %r6297.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6297 = load i64, ptr %r6297.p, align 8, !alias.scope !3, !noalias !4
  %t6298 = add i64 %r6297, 3584
  %gmp6299 = inttoptr i64 %t6298 to ptr
  %gml6300 = load i64, ptr %gmp6299, align 1, !alias.scope !4, !noalias !3
  %wp6301 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6300, ptr %wp6301, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da1dc
L_8002da230_ft:
  ; @pc 0x8002da230 word 0xb94072ea
  %r6379.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6379 = load i64, ptr %r6379.p, align 8, !alias.scope !3, !noalias !4
  %t6380 = add i64 %r6379, 112
  %gmp6381 = inttoptr i64 %t6380 to ptr
  %gml6382 = load i32, ptr %gmp6381, align 1, !alias.scope !4, !noalias !3
  %c6383 = zext i32 %gml6382 to i64
  %wp6384 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6383, ptr %wp6384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da234 word 0x2a1c03f0
  %r6385.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6385 = load i64, ptr %r6385.p, align 8, !alias.scope !3, !noalias !4
  %c6386 = trunc i64 %r6385 to i32
  %t6387 = or i32 0, %c6386
  %c6388 = zext i32 %t6387 to i64
  %wp6389 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c6388, ptr %wp6389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da238 word 0x795556ab
  %r6390.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6390 = load i64, ptr %r6390.p, align 8, !alias.scope !3, !noalias !4
  %t6391 = add i64 %r6390, 2730
  %gmp6392 = inttoptr i64 %t6391 to ptr
  %gml6393 = load i16, ptr %gmp6392, align 1, !alias.scope !4, !noalias !3
  %c6394 = zext i16 %gml6393 to i64
  %wp6395 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6394, ptr %wp6395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da23c word 0x4b0b014a
  %r6396.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6396 = load i64, ptr %r6396.p, align 8, !alias.scope !3, !noalias !4
  %c6397 = trunc i64 %r6396 to i32
  %r6398.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6398 = load i64, ptr %r6398.p, align 8, !alias.scope !3, !noalias !4
  %c6399 = trunc i64 %r6398 to i32
  %t6400 = sub i32 %c6397, %c6399
  %c6401 = zext i32 %t6400 to i64
  %wp6402 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6401, ptr %wp6402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da240 word 0x39722aab
  %r6403.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6403 = load i64, ptr %r6403.p, align 8, !alias.scope !3, !noalias !4
  %t6404 = add i64 %r6403, 3210
  %gmp6405 = inttoptr i64 %t6404 to ptr
  %gml6406 = load i8, ptr %gmp6405, align 1, !alias.scope !4, !noalias !3
  %c6407 = zext i8 %gml6406 to i64
  %wp6408 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6407, ptr %wp6408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da244 word 0xb94a3aa9
  %r6409.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6409 = load i64, ptr %r6409.p, align 8, !alias.scope !3, !noalias !4
  %t6410 = add i64 %r6409, 2616
  %gmp6411 = inttoptr i64 %t6410 to ptr
  %gml6412 = load i32, ptr %gmp6411, align 1, !alias.scope !4, !noalias !3
  %c6413 = zext i32 %gml6412 to i64
  %wp6414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6413, ptr %wp6414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da248 word 0xf94522a8
  %r6415.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6415 = load i64, ptr %r6415.p, align 8, !alias.scope !3, !noalias !4
  %t6416 = add i64 %r6415, 2624
  %gmp6417 = inttoptr i64 %t6416 to ptr
  %gml6418 = load i64, ptr %gmp6417, align 1, !alias.scope !4, !noalias !3
  %wp6419 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6418, ptr %wp6419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da24c word 0x721c017f
  %r6420.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6420 = load i64, ptr %r6420.p, align 8, !alias.scope !3, !noalias !4
  %c6421 = trunc i64 %r6420 to i32
  %t6422 = and i32 %c6421, 16
  %fn6423 = icmp slt i32 %t6422, 0
  %fz6424 = icmp eq i32 %t6422, 0
  %nz6425 = zext i1 %fn6423 to i64
  %zz6426 = zext i1 %fz6424 to i64
  %ns6427 = shl i64 %nz6425, 31
  %zs6428 = shl i64 %zz6426, 30
  %nzcv6429 = or i64 %ns6427, %zs6428
  %wp6430 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6429, ptr %wp6430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da250 word 0xf94007f8
  %r6431.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6431 = load i64, ptr %r6431.p, align 8, !alias.scope !3, !noalias !4
  %t6432 = add i64 %r6431, 8
  %gmp6433 = inttoptr i64 %t6432 to ptr
  %gml6434 = load i64, ptr %gmp6433, align 1, !alias.scope !4, !noalias !3
  %wp6435 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6434, ptr %wp6435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da254 word 0x1a9f17eb
  %t6436 = add i32 0, 1
  %r6437.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6437 = load i64, ptr %r6437.p, align 8, !alias.scope !3, !noalias !4
  %fsh6439 = lshr i64 %r6437, 30
  %ftr6440 = trunc i64 %fsh6439 to i1
  %cond6438 = xor i1 %ftr6440, true
  %sel6441 = select i1 %cond6438, i32 0, i32 %t6436
  %c6442 = zext i32 %sel6441 to i64
  %wp6443 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6442, ptr %wp6443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da258 word 0x17fffd99
  br label %L_8002d98bc
L_8002da280_ft:
  ; @pc 0x8002da280 word 0x9001b3e8
  %wp6482 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp6482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da284 word 0xf9470108
  %r6483.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6483 = load i64, ptr %r6483.p, align 8, !alias.scope !3, !noalias !4
  %t6484 = add i64 %r6483, 3584
  %gmp6485 = inttoptr i64 %t6484 to ptr
  %gml6486 = load i64, ptr %gmp6485, align 1, !alias.scope !4, !noalias !3
  %wp6487 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6486, ptr %wp6487, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da288
L_8002da2ac_ft:
  ; @pc 0x8002da2ac word 0xd001b408
  %wp6535 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2b0 word 0xf946ed08
  %r6536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6536 = load i64, ptr %r6536.p, align 8, !alias.scope !3, !noalias !4
  %t6537 = add i64 %r6536, 3544
  %gmp6538 = inttoptr i64 %t6537 to ptr
  %gml6539 = load i64, ptr %gmp6538, align 1, !alias.scope !4, !noalias !3
  %wp6540 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6539, ptr %wp6540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2b4 word 0x17ffffca
  br label %L_8002da1dc
L_8002da2d0_ft:
  ; @pc 0x8002da2d0 word 0xb940718a
  %r6577.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6577 = load i64, ptr %r6577.p, align 8, !alias.scope !3, !noalias !4
  %t6578 = add i64 %r6577, 112
  %gmp6579 = inttoptr i64 %t6578 to ptr
  %gml6580 = load i32, ptr %gmp6579, align 1, !alias.scope !4, !noalias !3
  %c6581 = zext i32 %gml6580 to i64
  %wp6582 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6581, ptr %wp6582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2d4 word 0x2a1c03f0
  %r6583.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6583 = load i64, ptr %r6583.p, align 8, !alias.scope !3, !noalias !4
  %c6584 = trunc i64 %r6583 to i32
  %t6585 = or i32 0, %c6584
  %c6586 = zext i32 %t6585 to i64
  %wp6587 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c6586, ptr %wp6587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2d8 word 0x795556ab
  %r6588.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6588 = load i64, ptr %r6588.p, align 8, !alias.scope !3, !noalias !4
  %t6589 = add i64 %r6588, 2730
  %gmp6590 = inttoptr i64 %t6589 to ptr
  %gml6591 = load i16, ptr %gmp6590, align 1, !alias.scope !4, !noalias !3
  %c6592 = zext i16 %gml6591 to i64
  %wp6593 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6592, ptr %wp6593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2dc word 0x4b0b014a
  %r6594.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6594 = load i64, ptr %r6594.p, align 8, !alias.scope !3, !noalias !4
  %c6595 = trunc i64 %r6594 to i32
  %r6596.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6596 = load i64, ptr %r6596.p, align 8, !alias.scope !3, !noalias !4
  %c6597 = trunc i64 %r6596 to i32
  %t6598 = sub i32 %c6595, %c6597
  %c6599 = zext i32 %t6598 to i64
  %wp6600 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6599, ptr %wp6600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2e0 word 0x39722aab
  %r6601.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6601 = load i64, ptr %r6601.p, align 8, !alias.scope !3, !noalias !4
  %t6602 = add i64 %r6601, 3210
  %gmp6603 = inttoptr i64 %t6602 to ptr
  %gml6604 = load i8, ptr %gmp6603, align 1, !alias.scope !4, !noalias !3
  %c6605 = zext i8 %gml6604 to i64
  %wp6606 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6605, ptr %wp6606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2e4 word 0xb94a3aa9
  %r6607.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6607 = load i64, ptr %r6607.p, align 8, !alias.scope !3, !noalias !4
  %t6608 = add i64 %r6607, 2616
  %gmp6609 = inttoptr i64 %t6608 to ptr
  %gml6610 = load i32, ptr %gmp6609, align 1, !alias.scope !4, !noalias !3
  %c6611 = zext i32 %gml6610 to i64
  %wp6612 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6611, ptr %wp6612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2e8 word 0xf94522a8
  %r6613.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6613 = load i64, ptr %r6613.p, align 8, !alias.scope !3, !noalias !4
  %t6614 = add i64 %r6613, 2624
  %gmp6615 = inttoptr i64 %t6614 to ptr
  %gml6616 = load i64, ptr %gmp6615, align 1, !alias.scope !4, !noalias !3
  %wp6617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6616, ptr %wp6617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2ec word 0x721c017f
  %r6618.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6618 = load i64, ptr %r6618.p, align 8, !alias.scope !3, !noalias !4
  %c6619 = trunc i64 %r6618 to i32
  %t6620 = and i32 %c6619, 16
  %fn6621 = icmp slt i32 %t6620, 0
  %fz6622 = icmp eq i32 %t6620, 0
  %nz6623 = zext i1 %fn6621 to i64
  %zz6624 = zext i1 %fz6622 to i64
  %ns6625 = shl i64 %nz6623, 31
  %zs6626 = shl i64 %zz6624, 30
  %nzcv6627 = or i64 %ns6625, %zs6626
  %wp6628 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6627, ptr %wp6628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2f0 word 0xf94007f8
  %r6629.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6629 = load i64, ptr %r6629.p, align 8, !alias.scope !3, !noalias !4
  %t6630 = add i64 %r6629, 8
  %gmp6631 = inttoptr i64 %t6630 to ptr
  %gml6632 = load i64, ptr %gmp6631, align 1, !alias.scope !4, !noalias !3
  %wp6633 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml6632, ptr %wp6633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2f4 word 0x1a9f17eb
  %t6634 = add i32 0, 1
  %r6635.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6635 = load i64, ptr %r6635.p, align 8, !alias.scope !3, !noalias !4
  %fsh6637 = lshr i64 %r6635, 30
  %ftr6638 = trunc i64 %fsh6637 to i1
  %cond6636 = xor i1 %ftr6638, true
  %sel6639 = select i1 %cond6636, i32 0, i32 %t6634
  %c6640 = zext i32 %sel6639 to i64
  %wp6641 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6640, ptr %wp6641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da2f8 word 0x17fffe0b
  br label %L_8002d9b24
L_8002da320_ft:
  ; @pc 0x8002da320 word 0x9001b3e8
  %wp6680 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp6680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da324 word 0xf9470108
  %r6681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6681 = load i64, ptr %r6681.p, align 8, !alias.scope !3, !noalias !4
  %t6682 = add i64 %r6681, 3584
  %gmp6683 = inttoptr i64 %t6682 to ptr
  %gml6684 = load i64, ptr %gmp6683, align 1, !alias.scope !4, !noalias !3
  %wp6685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6684, ptr %wp6685, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da328
L_8002da368_ft:
  ; @pc 0x8002da368 word 0xd001b408
  %wp6751 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da36c word 0xf946ed08
  %r6752.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6752 = load i64, ptr %r6752.p, align 8, !alias.scope !3, !noalias !4
  %t6753 = add i64 %r6752, 3544
  %gmp6754 = inttoptr i64 %t6753 to ptr
  %gml6755 = load i64, ptr %gmp6754, align 1, !alias.scope !4, !noalias !3
  %wp6756 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6755, ptr %wp6756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da370 word 0x17ffffc6
  br label %L_8002da288
L_8002da380_ft:
  ; @pc 0x8002da380 word 0xd001b408
  %wp6788 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da384 word 0xaa1603e0
  %r6789.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6789 = load i64, ptr %r6789.p, align 8, !alias.scope !3, !noalias !4
  %t6790 = or i64 0, %r6789
  %wp6791 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6790, ptr %wp6791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da388 word 0xf9413508
  %r6792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6792 = load i64, ptr %r6792.p, align 8, !alias.scope !3, !noalias !4
  %t6793 = add i64 %r6792, 616
  %gmp6794 = inttoptr i64 %t6793 to ptr
  %gml6795 = load i64, ptr %gmp6794, align 1, !alias.scope !4, !noalias !3
  %wp6796 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6795, ptr %wp6796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da38c word 0xaa1703e1
  %r6797.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6797 = load i64, ptr %r6797.p, align 8, !alias.scope !3, !noalias !4
  %t6798 = or i64 0, %r6797
  %wp6799 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6798, ptr %wp6799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da390 word 0x52800082
  %c6800 = zext i32 4 to i64
  %wp6801 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6800, ptr %wp6801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da394 word 0xf9400108
  %r6802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6802 = load i64, ptr %r6802.p, align 8, !alias.scope !3, !noalias !4
  %gmp6803 = inttoptr i64 %r6802 to ptr
  %gml6804 = load i64, ptr %gmp6803, align 1, !alias.scope !4, !noalias !3
  %wp6805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6804, ptr %wp6805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da398 word 0x2a1f03e3
  %t6806 = or i32 0, 0
  %c6807 = zext i32 %t6806 to i64
  %wp6808 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6807, ptr %wp6808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da39c word 0xd63f0100
  %r6809.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6809 = load i64, ptr %r6809.p, align 8, !alias.scope !3, !noalias !4
  %fp6810 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6809, ptr %fp6810, align 8, !alias.scope !3, !noalias !4
  %wp6811 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729376, ptr %wp6811, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da3a0 word 0x17fffc40
  br label %L_8002d94a0
L_8002da3ac_ft:
  ; @pc 0x8002da3ac word 0xd001b408
  %wp6838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3b0 word 0xf946ed08
  %r6839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6839 = load i64, ptr %r6839.p, align 8, !alias.scope !3, !noalias !4
  %t6840 = add i64 %r6839, 3544
  %gmp6841 = inttoptr i64 %t6840 to ptr
  %gml6842 = load i64, ptr %gmp6841, align 1, !alias.scope !4, !noalias !3
  %wp6843 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6842, ptr %wp6843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3b4 word 0x17ffffdd
  br label %L_8002da328
L_8002da3c4_ft:
  ; @pc 0x8002da3c4 word 0xd001b408
  %wp6875 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3c8 word 0xaa1403e0
  %r6876.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6876 = load i64, ptr %r6876.p, align 8, !alias.scope !3, !noalias !4
  %t6877 = or i64 0, %r6876
  %wp6878 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6877, ptr %wp6878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3cc word 0xf9413508
  %r6879.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6879 = load i64, ptr %r6879.p, align 8, !alias.scope !3, !noalias !4
  %t6880 = add i64 %r6879, 616
  %gmp6881 = inttoptr i64 %t6880 to ptr
  %gml6882 = load i64, ptr %gmp6881, align 1, !alias.scope !4, !noalias !3
  %wp6883 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6882, ptr %wp6883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3d0 word 0xaa1603e1
  %r6884.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6884 = load i64, ptr %r6884.p, align 8, !alias.scope !3, !noalias !4
  %t6885 = or i64 0, %r6884
  %wp6886 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6885, ptr %wp6886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3d4 word 0x52800082
  %c6887 = zext i32 4 to i64
  %wp6888 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6887, ptr %wp6888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3d8 word 0xf9400108
  %r6889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6889 = load i64, ptr %r6889.p, align 8, !alias.scope !3, !noalias !4
  %gmp6890 = inttoptr i64 %r6889 to ptr
  %gml6891 = load i64, ptr %gmp6890, align 1, !alias.scope !4, !noalias !3
  %wp6892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6891, ptr %wp6892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3dc word 0x2a1f03e3
  %t6893 = or i32 0, 0
  %c6894 = zext i32 %t6893 to i64
  %wp6895 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6894, ptr %wp6895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3e0 word 0xd63f0100
  %r6896.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6896 = load i64, ptr %r6896.p, align 8, !alias.scope !3, !noalias !4
  %fp6897 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6896, ptr %fp6897, align 8, !alias.scope !3, !noalias !4
  %wp6898 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729444, ptr %wp6898, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da3e4 word 0x17fffd63
  br label %L_8002d9970
L_8002da3f4_ft:
  ; @pc 0x8002da3f4 word 0xd001b408
  %wp6930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp6930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3f8 word 0xaa1603e0
  %r6931.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6931 = load i64, ptr %r6931.p, align 8, !alias.scope !3, !noalias !4
  %t6932 = or i64 0, %r6931
  %wp6933 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6932, ptr %wp6933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da3fc word 0xf9413508
  %r6934.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6934 = load i64, ptr %r6934.p, align 8, !alias.scope !3, !noalias !4
  %t6935 = add i64 %r6934, 616
  %gmp6936 = inttoptr i64 %t6935 to ptr
  %gml6937 = load i64, ptr %gmp6936, align 1, !alias.scope !4, !noalias !3
  %wp6938 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6937, ptr %wp6938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da400 word 0xaa1703e1
  %r6939.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6939 = load i64, ptr %r6939.p, align 8, !alias.scope !3, !noalias !4
  %t6940 = or i64 0, %r6939
  %wp6941 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t6940, ptr %wp6941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da404 word 0x52800082
  %c6942 = zext i32 4 to i64
  %wp6943 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6942, ptr %wp6943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da408 word 0xf9400108
  %r6944.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6944 = load i64, ptr %r6944.p, align 8, !alias.scope !3, !noalias !4
  %gmp6945 = inttoptr i64 %r6944 to ptr
  %gml6946 = load i64, ptr %gmp6945, align 1, !alias.scope !4, !noalias !3
  %wp6947 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6946, ptr %wp6947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da40c word 0x2a1f03e3
  %t6948 = or i32 0, 0
  %c6949 = zext i32 %t6948 to i64
  %wp6950 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c6949, ptr %wp6950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da410 word 0xd63f0100
  %r6951.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6951 = load i64, ptr %r6951.p, align 8, !alias.scope !3, !noalias !4
  %fp6952 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6951, ptr %fp6952, align 8, !alias.scope !3, !noalias !4
  %wp6953 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362729492, ptr %wp6953, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da414 word 0x17fffdee
  br label %L_8002d9bcc
L_8002da430_ft:
  ; @pc 0x8002da430 word 0xb940718a
  %r6990.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6990 = load i64, ptr %r6990.p, align 8, !alias.scope !3, !noalias !4
  %t6991 = add i64 %r6990, 112
  %gmp6992 = inttoptr i64 %t6991 to ptr
  %gml6993 = load i32, ptr %gmp6992, align 1, !alias.scope !4, !noalias !3
  %c6994 = zext i32 %gml6993 to i64
  %wp6995 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6994, ptr %wp6995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da434 word 0x2a1c03f0
  %r6996.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6996 = load i64, ptr %r6996.p, align 8, !alias.scope !3, !noalias !4
  %c6997 = trunc i64 %r6996 to i32
  %t6998 = or i32 0, %c6997
  %c6999 = zext i32 %t6998 to i64
  %wp7000 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c6999, ptr %wp7000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da438 word 0x795556ab
  %r7001.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7001 = load i64, ptr %r7001.p, align 8, !alias.scope !3, !noalias !4
  %t7002 = add i64 %r7001, 2730
  %gmp7003 = inttoptr i64 %t7002 to ptr
  %gml7004 = load i16, ptr %gmp7003, align 1, !alias.scope !4, !noalias !3
  %c7005 = zext i16 %gml7004 to i64
  %wp7006 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7005, ptr %wp7006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da43c word 0x4b0b014a
  %r7007.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7007 = load i64, ptr %r7007.p, align 8, !alias.scope !3, !noalias !4
  %c7008 = trunc i64 %r7007 to i32
  %r7009.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7009 = load i64, ptr %r7009.p, align 8, !alias.scope !3, !noalias !4
  %c7010 = trunc i64 %r7009 to i32
  %t7011 = sub i32 %c7008, %c7010
  %c7012 = zext i32 %t7011 to i64
  %wp7013 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7012, ptr %wp7013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da440 word 0x39722aab
  %r7014.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7014 = load i64, ptr %r7014.p, align 8, !alias.scope !3, !noalias !4
  %t7015 = add i64 %r7014, 3210
  %gmp7016 = inttoptr i64 %t7015 to ptr
  %gml7017 = load i8, ptr %gmp7016, align 1, !alias.scope !4, !noalias !3
  %c7018 = zext i8 %gml7017 to i64
  %wp7019 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7018, ptr %wp7019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da444 word 0xb94a3aa9
  %r7020.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7020 = load i64, ptr %r7020.p, align 8, !alias.scope !3, !noalias !4
  %t7021 = add i64 %r7020, 2616
  %gmp7022 = inttoptr i64 %t7021 to ptr
  %gml7023 = load i32, ptr %gmp7022, align 1, !alias.scope !4, !noalias !3
  %c7024 = zext i32 %gml7023 to i64
  %wp7025 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7024, ptr %wp7025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da448 word 0xf94522a8
  %r7026.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7026 = load i64, ptr %r7026.p, align 8, !alias.scope !3, !noalias !4
  %t7027 = add i64 %r7026, 2624
  %gmp7028 = inttoptr i64 %t7027 to ptr
  %gml7029 = load i64, ptr %gmp7028, align 1, !alias.scope !4, !noalias !3
  %wp7030 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7029, ptr %wp7030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da44c word 0x721c017f
  %r7031.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7031 = load i64, ptr %r7031.p, align 8, !alias.scope !3, !noalias !4
  %c7032 = trunc i64 %r7031 to i32
  %t7033 = and i32 %c7032, 16
  %fn7034 = icmp slt i32 %t7033, 0
  %fz7035 = icmp eq i32 %t7033, 0
  %nz7036 = zext i1 %fn7034 to i64
  %zz7037 = zext i1 %fz7035 to i64
  %ns7038 = shl i64 %nz7036, 31
  %zs7039 = shl i64 %zz7037, 30
  %nzcv7040 = or i64 %ns7038, %zs7039
  %wp7041 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7040, ptr %wp7041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da450 word 0xf94007f8
  %r7042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7042 = load i64, ptr %r7042.p, align 8, !alias.scope !3, !noalias !4
  %t7043 = add i64 %r7042, 8
  %gmp7044 = inttoptr i64 %t7043 to ptr
  %gml7045 = load i64, ptr %gmp7044, align 1, !alias.scope !4, !noalias !3
  %wp7046 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7045, ptr %wp7046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da454 word 0x1a9f17eb
  %t7047 = add i32 0, 1
  %r7048.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7048 = load i64, ptr %r7048.p, align 8, !alias.scope !3, !noalias !4
  %fsh7050 = lshr i64 %r7048, 30
  %ftr7051 = trunc i64 %fsh7050 to i1
  %cond7049 = xor i1 %ftr7051, true
  %sel7052 = select i1 %cond7049, i32 0, i32 %t7047
  %c7053 = zext i32 %sel7052 to i64
  %wp7054 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7053, ptr %wp7054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da458 word 0x17fffdfd
  br label %L_8002d9c4c
L_8002da480_ft:
  ; @pc 0x8002da480 word 0x9001b3e8
  %wp7093 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp7093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da484 word 0xf9470108
  %r7094.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7094 = load i64, ptr %r7094.p, align 8, !alias.scope !3, !noalias !4
  %t7095 = add i64 %r7094, 3584
  %gmp7096 = inttoptr i64 %t7095 to ptr
  %gml7097 = load i64, ptr %gmp7096, align 1, !alias.scope !4, !noalias !3
  %wp7098 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7097, ptr %wp7098, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da488
L_8002da4dc_ft:
  ; @pc 0x8002da4dc word 0xb940718a
  %r7176.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7176 = load i64, ptr %r7176.p, align 8, !alias.scope !3, !noalias !4
  %t7177 = add i64 %r7176, 112
  %gmp7178 = inttoptr i64 %t7177 to ptr
  %gml7179 = load i32, ptr %gmp7178, align 1, !alias.scope !4, !noalias !3
  %c7180 = zext i32 %gml7179 to i64
  %wp7181 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7180, ptr %wp7181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4e0 word 0x2a1c03f0
  %r7182.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7182 = load i64, ptr %r7182.p, align 8, !alias.scope !3, !noalias !4
  %c7183 = trunc i64 %r7182 to i32
  %t7184 = or i32 0, %c7183
  %c7185 = zext i32 %t7184 to i64
  %wp7186 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7185, ptr %wp7186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4e4 word 0x795556ab
  %r7187.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7187 = load i64, ptr %r7187.p, align 8, !alias.scope !3, !noalias !4
  %t7188 = add i64 %r7187, 2730
  %gmp7189 = inttoptr i64 %t7188 to ptr
  %gml7190 = load i16, ptr %gmp7189, align 1, !alias.scope !4, !noalias !3
  %c7191 = zext i16 %gml7190 to i64
  %wp7192 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7191, ptr %wp7192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4e8 word 0x4b0b014a
  %r7193.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7193 = load i64, ptr %r7193.p, align 8, !alias.scope !3, !noalias !4
  %c7194 = trunc i64 %r7193 to i32
  %r7195.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7195 = load i64, ptr %r7195.p, align 8, !alias.scope !3, !noalias !4
  %c7196 = trunc i64 %r7195 to i32
  %t7197 = sub i32 %c7194, %c7196
  %c7198 = zext i32 %t7197 to i64
  %wp7199 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7198, ptr %wp7199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4ec word 0x39722aab
  %r7200.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7200 = load i64, ptr %r7200.p, align 8, !alias.scope !3, !noalias !4
  %t7201 = add i64 %r7200, 3210
  %gmp7202 = inttoptr i64 %t7201 to ptr
  %gml7203 = load i8, ptr %gmp7202, align 1, !alias.scope !4, !noalias !3
  %c7204 = zext i8 %gml7203 to i64
  %wp7205 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7204, ptr %wp7205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4f0 word 0xb94a3aa9
  %r7206.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7206 = load i64, ptr %r7206.p, align 8, !alias.scope !3, !noalias !4
  %t7207 = add i64 %r7206, 2616
  %gmp7208 = inttoptr i64 %t7207 to ptr
  %gml7209 = load i32, ptr %gmp7208, align 1, !alias.scope !4, !noalias !3
  %c7210 = zext i32 %gml7209 to i64
  %wp7211 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7210, ptr %wp7211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4f4 word 0xf94522a8
  %r7212.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7212 = load i64, ptr %r7212.p, align 8, !alias.scope !3, !noalias !4
  %t7213 = add i64 %r7212, 2624
  %gmp7214 = inttoptr i64 %t7213 to ptr
  %gml7215 = load i64, ptr %gmp7214, align 1, !alias.scope !4, !noalias !3
  %wp7216 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7215, ptr %wp7216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4f8 word 0x721c017f
  %r7217.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7217 = load i64, ptr %r7217.p, align 8, !alias.scope !3, !noalias !4
  %c7218 = trunc i64 %r7217 to i32
  %t7219 = and i32 %c7218, 16
  %fn7220 = icmp slt i32 %t7219, 0
  %fz7221 = icmp eq i32 %t7219, 0
  %nz7222 = zext i1 %fn7220 to i64
  %zz7223 = zext i1 %fz7221 to i64
  %ns7224 = shl i64 %nz7222, 31
  %zs7225 = shl i64 %zz7223, 30
  %nzcv7226 = or i64 %ns7224, %zs7225
  %wp7227 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7226, ptr %wp7227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da4fc word 0xf94007f8
  %r7228.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7228 = load i64, ptr %r7228.p, align 8, !alias.scope !3, !noalias !4
  %t7229 = add i64 %r7228, 8
  %gmp7230 = inttoptr i64 %t7229 to ptr
  %gml7231 = load i64, ptr %gmp7230, align 1, !alias.scope !4, !noalias !3
  %wp7232 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7231, ptr %wp7232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da500 word 0x1a9f17eb
  %t7233 = add i32 0, 1
  %r7234.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7234 = load i64, ptr %r7234.p, align 8, !alias.scope !3, !noalias !4
  %fsh7236 = lshr i64 %r7234, 30
  %ftr7237 = trunc i64 %fsh7236 to i1
  %cond7235 = xor i1 %ftr7237, true
  %sel7238 = select i1 %cond7235, i32 0, i32 %t7233
  %c7239 = zext i32 %sel7238 to i64
  %wp7240 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7239, ptr %wp7240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da504 word 0x17fffca9
  br label %L_8002d97a8
L_8002da520_ft:
  ; @pc 0x8002da520 word 0xf94007f8
  %r7273.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7273 = load i64, ptr %r7273.p, align 8, !alias.scope !3, !noalias !4
  %t7274 = add i64 %r7273, 8
  %gmp7275 = inttoptr i64 %t7274 to ptr
  %gml7276 = load i64, ptr %gmp7275, align 1, !alias.scope !4, !noalias !3
  %wp7277 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7276, ptr %wp7277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da524 word 0x17fffccd
  br label %L_8002d9858
L_8002da544_ft:
  ; @pc 0x8002da544 word 0x9001b3e8
  %wp7314 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp7314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da548 word 0xf9470108
  %r7315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7315 = load i64, ptr %r7315.p, align 8, !alias.scope !3, !noalias !4
  %t7316 = add i64 %r7315, 3584
  %gmp7317 = inttoptr i64 %t7316 to ptr
  %gml7318 = load i64, ptr %gmp7317, align 1, !alias.scope !4, !noalias !3
  %wp7319 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7318, ptr %wp7319, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da54c
L_8002da5a0_ft:
  ; @pc 0x8002da5a0 word 0xb940718a
  %r7397.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7397 = load i64, ptr %r7397.p, align 8, !alias.scope !3, !noalias !4
  %t7398 = add i64 %r7397, 112
  %gmp7399 = inttoptr i64 %t7398 to ptr
  %gml7400 = load i32, ptr %gmp7399, align 1, !alias.scope !4, !noalias !3
  %c7401 = zext i32 %gml7400 to i64
  %wp7402 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7401, ptr %wp7402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5a4 word 0x2a1c03f0
  %r7403.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7403 = load i64, ptr %r7403.p, align 8, !alias.scope !3, !noalias !4
  %c7404 = trunc i64 %r7403 to i32
  %t7405 = or i32 0, %c7404
  %c7406 = zext i32 %t7405 to i64
  %wp7407 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7406, ptr %wp7407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5a8 word 0x795556ab
  %r7408.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7408 = load i64, ptr %r7408.p, align 8, !alias.scope !3, !noalias !4
  %t7409 = add i64 %r7408, 2730
  %gmp7410 = inttoptr i64 %t7409 to ptr
  %gml7411 = load i16, ptr %gmp7410, align 1, !alias.scope !4, !noalias !3
  %c7412 = zext i16 %gml7411 to i64
  %wp7413 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7412, ptr %wp7413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5ac word 0x4b0b014a
  %r7414.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7414 = load i64, ptr %r7414.p, align 8, !alias.scope !3, !noalias !4
  %c7415 = trunc i64 %r7414 to i32
  %r7416.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7416 = load i64, ptr %r7416.p, align 8, !alias.scope !3, !noalias !4
  %c7417 = trunc i64 %r7416 to i32
  %t7418 = sub i32 %c7415, %c7417
  %c7419 = zext i32 %t7418 to i64
  %wp7420 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7419, ptr %wp7420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5b0 word 0x39722aab
  %r7421.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7421 = load i64, ptr %r7421.p, align 8, !alias.scope !3, !noalias !4
  %t7422 = add i64 %r7421, 3210
  %gmp7423 = inttoptr i64 %t7422 to ptr
  %gml7424 = load i8, ptr %gmp7423, align 1, !alias.scope !4, !noalias !3
  %c7425 = zext i8 %gml7424 to i64
  %wp7426 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7425, ptr %wp7426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5b4 word 0xb94a3aa9
  %r7427.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7427 = load i64, ptr %r7427.p, align 8, !alias.scope !3, !noalias !4
  %t7428 = add i64 %r7427, 2616
  %gmp7429 = inttoptr i64 %t7428 to ptr
  %gml7430 = load i32, ptr %gmp7429, align 1, !alias.scope !4, !noalias !3
  %c7431 = zext i32 %gml7430 to i64
  %wp7432 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7431, ptr %wp7432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5b8 word 0xf94522a8
  %r7433.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7433 = load i64, ptr %r7433.p, align 8, !alias.scope !3, !noalias !4
  %t7434 = add i64 %r7433, 2624
  %gmp7435 = inttoptr i64 %t7434 to ptr
  %gml7436 = load i64, ptr %gmp7435, align 1, !alias.scope !4, !noalias !3
  %wp7437 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7436, ptr %wp7437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5bc word 0x721c017f
  %r7438.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7438 = load i64, ptr %r7438.p, align 8, !alias.scope !3, !noalias !4
  %c7439 = trunc i64 %r7438 to i32
  %t7440 = and i32 %c7439, 16
  %fn7441 = icmp slt i32 %t7440, 0
  %fz7442 = icmp eq i32 %t7440, 0
  %nz7443 = zext i1 %fn7441 to i64
  %zz7444 = zext i1 %fz7442 to i64
  %ns7445 = shl i64 %nz7443, 31
  %zs7446 = shl i64 %zz7444, 30
  %nzcv7447 = or i64 %ns7445, %zs7446
  %wp7448 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7447, ptr %wp7448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5c0 word 0xf94007f8
  %r7449.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7449 = load i64, ptr %r7449.p, align 8, !alias.scope !3, !noalias !4
  %t7450 = add i64 %r7449, 8
  %gmp7451 = inttoptr i64 %t7450 to ptr
  %gml7452 = load i64, ptr %gmp7451, align 1, !alias.scope !4, !noalias !3
  %wp7453 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7452, ptr %wp7453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5c4 word 0x1a9f17eb
  %t7454 = add i32 0, 1
  %r7455.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7455 = load i64, ptr %r7455.p, align 8, !alias.scope !3, !noalias !4
  %fsh7457 = lshr i64 %r7455, 30
  %ftr7458 = trunc i64 %fsh7457 to i1
  %cond7456 = xor i1 %ftr7458, true
  %sel7459 = select i1 %cond7456, i32 0, i32 %t7454
  %c7460 = zext i32 %sel7459 to i64
  %wp7461 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7460, ptr %wp7461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5c8 word 0x17fffde3
  br label %L_8002d9d54
L_8002da5f8_ft:
  ; @pc 0x8002da5f8 word 0x9001b3e8
  %wp7502 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp7502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da5fc word 0xf9470108
  %r7503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7503 = load i64, ptr %r7503.p, align 8, !alias.scope !3, !noalias !4
  %t7504 = add i64 %r7503, 3584
  %gmp7505 = inttoptr i64 %t7504 to ptr
  %gml7506 = load i64, ptr %gmp7505, align 1, !alias.scope !4, !noalias !3
  %wp7507 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7506, ptr %wp7507, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da600
L_8002da648_ft:
  ; @pc 0x8002da648 word 0xd001b408
  %wp7580 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp7580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da64c word 0xf946ed08
  %r7581.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7581 = load i64, ptr %r7581.p, align 8, !alias.scope !3, !noalias !4
  %t7582 = add i64 %r7581, 3544
  %gmp7583 = inttoptr i64 %t7582 to ptr
  %gml7584 = load i64, ptr %gmp7583, align 1, !alias.scope !4, !noalias !3
  %wp7585 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7584, ptr %wp7585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da650 word 0x17ffff8e
  br label %L_8002da488
L_8002da66c_ft:
  ; @pc 0x8002da66c word 0xb940718a
  %r7622.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7622 = load i64, ptr %r7622.p, align 8, !alias.scope !3, !noalias !4
  %t7623 = add i64 %r7622, 112
  %gmp7624 = inttoptr i64 %t7623 to ptr
  %gml7625 = load i32, ptr %gmp7624, align 1, !alias.scope !4, !noalias !3
  %c7626 = zext i32 %gml7625 to i64
  %wp7627 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7626, ptr %wp7627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da670 word 0x2a1c03f0
  %r7628.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7628 = load i64, ptr %r7628.p, align 8, !alias.scope !3, !noalias !4
  %c7629 = trunc i64 %r7628 to i32
  %t7630 = or i32 0, %c7629
  %c7631 = zext i32 %t7630 to i64
  %wp7632 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7631, ptr %wp7632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da674 word 0x795556ab
  %r7633.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7633 = load i64, ptr %r7633.p, align 8, !alias.scope !3, !noalias !4
  %t7634 = add i64 %r7633, 2730
  %gmp7635 = inttoptr i64 %t7634 to ptr
  %gml7636 = load i16, ptr %gmp7635, align 1, !alias.scope !4, !noalias !3
  %c7637 = zext i16 %gml7636 to i64
  %wp7638 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7637, ptr %wp7638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da678 word 0x4b0b014a
  %r7639.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7639 = load i64, ptr %r7639.p, align 8, !alias.scope !3, !noalias !4
  %c7640 = trunc i64 %r7639 to i32
  %r7641.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7641 = load i64, ptr %r7641.p, align 8, !alias.scope !3, !noalias !4
  %c7642 = trunc i64 %r7641 to i32
  %t7643 = sub i32 %c7640, %c7642
  %c7644 = zext i32 %t7643 to i64
  %wp7645 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7644, ptr %wp7645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da67c word 0x39722aab
  %r7646.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7646 = load i64, ptr %r7646.p, align 8, !alias.scope !3, !noalias !4
  %t7647 = add i64 %r7646, 3210
  %gmp7648 = inttoptr i64 %t7647 to ptr
  %gml7649 = load i8, ptr %gmp7648, align 1, !alias.scope !4, !noalias !3
  %c7650 = zext i8 %gml7649 to i64
  %wp7651 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7650, ptr %wp7651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da680 word 0xb94a3aa9
  %r7652.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7652 = load i64, ptr %r7652.p, align 8, !alias.scope !3, !noalias !4
  %t7653 = add i64 %r7652, 2616
  %gmp7654 = inttoptr i64 %t7653 to ptr
  %gml7655 = load i32, ptr %gmp7654, align 1, !alias.scope !4, !noalias !3
  %c7656 = zext i32 %gml7655 to i64
  %wp7657 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7656, ptr %wp7657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da684 word 0xf94522a8
  %r7658.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7658 = load i64, ptr %r7658.p, align 8, !alias.scope !3, !noalias !4
  %t7659 = add i64 %r7658, 2624
  %gmp7660 = inttoptr i64 %t7659 to ptr
  %gml7661 = load i64, ptr %gmp7660, align 1, !alias.scope !4, !noalias !3
  %wp7662 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7661, ptr %wp7662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da688 word 0x721c017f
  %r7663.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7663 = load i64, ptr %r7663.p, align 8, !alias.scope !3, !noalias !4
  %c7664 = trunc i64 %r7663 to i32
  %t7665 = and i32 %c7664, 16
  %fn7666 = icmp slt i32 %t7665, 0
  %fz7667 = icmp eq i32 %t7665, 0
  %nz7668 = zext i1 %fn7666 to i64
  %zz7669 = zext i1 %fz7667 to i64
  %ns7670 = shl i64 %nz7668, 31
  %zs7671 = shl i64 %zz7669, 30
  %nzcv7672 = or i64 %ns7670, %zs7671
  %wp7673 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7672, ptr %wp7673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da68c word 0xf94007f8
  %r7674.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7674 = load i64, ptr %r7674.p, align 8, !alias.scope !3, !noalias !4
  %t7675 = add i64 %r7674, 8
  %gmp7676 = inttoptr i64 %t7675 to ptr
  %gml7677 = load i64, ptr %gmp7676, align 1, !alias.scope !4, !noalias !3
  %wp7678 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7677, ptr %wp7678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da690 word 0x1a9f17eb
  %t7679 = add i32 0, 1
  %r7680.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7680 = load i64, ptr %r7680.p, align 8, !alias.scope !3, !noalias !4
  %fsh7682 = lshr i64 %r7680, 30
  %ftr7683 = trunc i64 %fsh7682 to i1
  %cond7681 = xor i1 %ftr7683, true
  %sel7684 = select i1 %cond7681, i32 0, i32 %t7679
  %c7685 = zext i32 %sel7684 to i64
  %wp7686 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7685, ptr %wp7686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da694 word 0x17fffdf2
  br label %L_8002d9e5c
L_8002da6bc_ft:
  ; @pc 0x8002da6bc word 0x9001b3e8
  %wp7725 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp7725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da6c0 word 0xf9470108
  %r7726.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7726 = load i64, ptr %r7726.p, align 8, !alias.scope !3, !noalias !4
  %t7727 = add i64 %r7726, 3584
  %gmp7728 = inttoptr i64 %t7727 to ptr
  %gml7729 = load i64, ptr %gmp7728, align 1, !alias.scope !4, !noalias !3
  %wp7730 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7729, ptr %wp7730, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da6c4
L_8002da708_ft:
  ; @pc 0x8002da708 word 0xd001b408
  %wp7798 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp7798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da70c word 0xf946ed08
  %r7799.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7799 = load i64, ptr %r7799.p, align 8, !alias.scope !3, !noalias !4
  %t7800 = add i64 %r7799, 3544
  %gmp7801 = inttoptr i64 %t7800 to ptr
  %gml7802 = load i64, ptr %gmp7801, align 1, !alias.scope !4, !noalias !3
  %wp7803 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7802, ptr %wp7803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da710 word 0x17ffff8f
  br label %L_8002da54c
L_8002da72c_ft:
  ; @pc 0x8002da72c word 0xb940718a
  %r7840.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7840 = load i64, ptr %r7840.p, align 8, !alias.scope !3, !noalias !4
  %t7841 = add i64 %r7840, 112
  %gmp7842 = inttoptr i64 %t7841 to ptr
  %gml7843 = load i32, ptr %gmp7842, align 1, !alias.scope !4, !noalias !3
  %c7844 = zext i32 %gml7843 to i64
  %wp7845 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7844, ptr %wp7845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da730 word 0x2a1c03f0
  %r7846.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7846 = load i64, ptr %r7846.p, align 8, !alias.scope !3, !noalias !4
  %c7847 = trunc i64 %r7846 to i32
  %t7848 = or i32 0, %c7847
  %c7849 = zext i32 %t7848 to i64
  %wp7850 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c7849, ptr %wp7850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da734 word 0x795556ab
  %r7851.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7851 = load i64, ptr %r7851.p, align 8, !alias.scope !3, !noalias !4
  %t7852 = add i64 %r7851, 2730
  %gmp7853 = inttoptr i64 %t7852 to ptr
  %gml7854 = load i16, ptr %gmp7853, align 1, !alias.scope !4, !noalias !3
  %c7855 = zext i16 %gml7854 to i64
  %wp7856 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7855, ptr %wp7856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da738 word 0x4b0b014a
  %r7857.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7857 = load i64, ptr %r7857.p, align 8, !alias.scope !3, !noalias !4
  %c7858 = trunc i64 %r7857 to i32
  %r7859.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7859 = load i64, ptr %r7859.p, align 8, !alias.scope !3, !noalias !4
  %c7860 = trunc i64 %r7859 to i32
  %t7861 = sub i32 %c7858, %c7860
  %c7862 = zext i32 %t7861 to i64
  %wp7863 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7862, ptr %wp7863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da73c word 0x39722aab
  %r7864.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7864 = load i64, ptr %r7864.p, align 8, !alias.scope !3, !noalias !4
  %t7865 = add i64 %r7864, 3210
  %gmp7866 = inttoptr i64 %t7865 to ptr
  %gml7867 = load i8, ptr %gmp7866, align 1, !alias.scope !4, !noalias !3
  %c7868 = zext i8 %gml7867 to i64
  %wp7869 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7868, ptr %wp7869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da740 word 0xb94a3aa9
  %r7870.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7870 = load i64, ptr %r7870.p, align 8, !alias.scope !3, !noalias !4
  %t7871 = add i64 %r7870, 2616
  %gmp7872 = inttoptr i64 %t7871 to ptr
  %gml7873 = load i32, ptr %gmp7872, align 1, !alias.scope !4, !noalias !3
  %c7874 = zext i32 %gml7873 to i64
  %wp7875 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7874, ptr %wp7875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da744 word 0xf94522a8
  %r7876.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7876 = load i64, ptr %r7876.p, align 8, !alias.scope !3, !noalias !4
  %t7877 = add i64 %r7876, 2624
  %gmp7878 = inttoptr i64 %t7877 to ptr
  %gml7879 = load i64, ptr %gmp7878, align 1, !alias.scope !4, !noalias !3
  %wp7880 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7879, ptr %wp7880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da748 word 0x721c017f
  %r7881.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7881 = load i64, ptr %r7881.p, align 8, !alias.scope !3, !noalias !4
  %c7882 = trunc i64 %r7881 to i32
  %t7883 = and i32 %c7882, 16
  %fn7884 = icmp slt i32 %t7883, 0
  %fz7885 = icmp eq i32 %t7883, 0
  %nz7886 = zext i1 %fn7884 to i64
  %zz7887 = zext i1 %fz7885 to i64
  %ns7888 = shl i64 %nz7886, 31
  %zs7889 = shl i64 %zz7887, 30
  %nzcv7890 = or i64 %ns7888, %zs7889
  %wp7891 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7890, ptr %wp7891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da74c word 0xf94007f8
  %r7892.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7892 = load i64, ptr %r7892.p, align 8, !alias.scope !3, !noalias !4
  %t7893 = add i64 %r7892, 8
  %gmp7894 = inttoptr i64 %t7893 to ptr
  %gml7895 = load i64, ptr %gmp7894, align 1, !alias.scope !4, !noalias !3
  %wp7896 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml7895, ptr %wp7896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da750 word 0x1a9f17eb
  %t7897 = add i32 0, 1
  %r7898.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7898 = load i64, ptr %r7898.p, align 8, !alias.scope !3, !noalias !4
  %fsh7900 = lshr i64 %r7898, 30
  %ftr7901 = trunc i64 %fsh7900 to i1
  %cond7899 = xor i1 %ftr7901, true
  %sel7902 = select i1 %cond7899, i32 0, i32 %t7897
  %c7903 = zext i32 %sel7902 to i64
  %wp7904 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7903, ptr %wp7904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da754 word 0x17fffcb2
  br label %L_8002d9a1c
L_8002da77c_ft:
  ; @pc 0x8002da77c word 0x9001b3e8
  %wp7943 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419859456, ptr %wp7943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da780 word 0xf9470108
  %r7944.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7944 = load i64, ptr %r7944.p, align 8, !alias.scope !3, !noalias !4
  %t7945 = add i64 %r7944, 3584
  %gmp7946 = inttoptr i64 %t7945 to ptr
  %gml7947 = load i64, ptr %gmp7946, align 1, !alias.scope !4, !noalias !3
  %wp7948 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7947, ptr %wp7948, align 8, !alias.scope !3, !noalias !4
  br label %L_8002da784
L_8002da7c8_ft:
  ; @pc 0x8002da7c8 word 0xd001b408
  %wp8016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7cc word 0xf946ed08
  %r8017.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8017 = load i64, ptr %r8017.p, align 8, !alias.scope !3, !noalias !4
  %t8018 = add i64 %r8017, 3544
  %gmp8019 = inttoptr i64 %t8018 to ptr
  %gml8020 = load i64, ptr %gmp8019, align 1, !alias.scope !4, !noalias !3
  %wp8021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8020, ptr %wp8021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7d0 word 0x17ffff8c
  br label %L_8002da600
L_8002da7e0_ft:
  ; @pc 0x8002da7e0 word 0xd001b408
  %wp8053 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7e4 word 0xaa1603e0
  %r8054.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8054 = load i64, ptr %r8054.p, align 8, !alias.scope !3, !noalias !4
  %t8055 = or i64 0, %r8054
  %wp8056 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8055, ptr %wp8056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7e8 word 0xf9413508
  %r8057.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8057 = load i64, ptr %r8057.p, align 8, !alias.scope !3, !noalias !4
  %t8058 = add i64 %r8057, 616
  %gmp8059 = inttoptr i64 %t8058 to ptr
  %gml8060 = load i64, ptr %gmp8059, align 1, !alias.scope !4, !noalias !3
  %wp8061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8060, ptr %wp8061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7ec word 0xaa1703e1
  %r8062.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8062 = load i64, ptr %r8062.p, align 8, !alias.scope !3, !noalias !4
  %t8063 = or i64 0, %r8062
  %wp8064 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8063, ptr %wp8064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7f0 word 0x52800082
  %c8065 = zext i32 4 to i64
  %wp8066 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8065, ptr %wp8066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7f4 word 0xf9400108
  %r8067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8067 = load i64, ptr %r8067.p, align 8, !alias.scope !3, !noalias !4
  %gmp8068 = inttoptr i64 %r8067 to ptr
  %gml8069 = load i64, ptr %gmp8068, align 1, !alias.scope !4, !noalias !3
  %wp8070 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8069, ptr %wp8070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7f8 word 0x2a1f03e3
  %t8071 = or i32 0, 0
  %c8072 = zext i32 %t8071 to i64
  %wp8073 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8072, ptr %wp8073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da7fc word 0xd63f0100
  %r8074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8074 = load i64, ptr %r8074.p, align 8, !alias.scope !3, !noalias !4
  %fp8075 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8074, ptr %fp8075, align 8, !alias.scope !3, !noalias !4
  %wp8076 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730496, ptr %wp8076, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da800 word 0x17fffd3c
  br label %L_8002d9cf0
L_8002da80c_ft:
  ; @pc 0x8002da80c word 0xd001b408
  %wp8103 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da810 word 0xf946ed08
  %r8104.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8104 = load i64, ptr %r8104.p, align 8, !alias.scope !3, !noalias !4
  %t8105 = add i64 %r8104, 3544
  %gmp8106 = inttoptr i64 %t8105 to ptr
  %gml8107 = load i64, ptr %gmp8106, align 1, !alias.scope !4, !noalias !3
  %wp8108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8107, ptr %wp8108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da814 word 0x17ffffac
  br label %L_8002da6c4
L_8002da824_ft:
  ; @pc 0x8002da824 word 0xd001b408
  %wp8140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da828 word 0xaa1603e0
  %r8141.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8141 = load i64, ptr %r8141.p, align 8, !alias.scope !3, !noalias !4
  %t8142 = or i64 0, %r8141
  %wp8143 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8142, ptr %wp8143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da82c word 0xf9413508
  %r8144.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8144 = load i64, ptr %r8144.p, align 8, !alias.scope !3, !noalias !4
  %t8145 = add i64 %r8144, 616
  %gmp8146 = inttoptr i64 %t8145 to ptr
  %gml8147 = load i64, ptr %gmp8146, align 1, !alias.scope !4, !noalias !3
  %wp8148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8147, ptr %wp8148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da830 word 0xaa1703e1
  %r8149.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8149 = load i64, ptr %r8149.p, align 8, !alias.scope !3, !noalias !4
  %t8150 = or i64 0, %r8149
  %wp8151 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8150, ptr %wp8151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da834 word 0x52800082
  %c8152 = zext i32 4 to i64
  %wp8153 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8152, ptr %wp8153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da838 word 0xf9400108
  %r8154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8154 = load i64, ptr %r8154.p, align 8, !alias.scope !3, !noalias !4
  %gmp8155 = inttoptr i64 %r8154 to ptr
  %gml8156 = load i64, ptr %gmp8155, align 1, !alias.scope !4, !noalias !3
  %wp8157 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8156, ptr %wp8157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da83c word 0x2a1f03e3
  %t8158 = or i32 0, 0
  %c8159 = zext i32 %t8158 to i64
  %wp8160 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8159, ptr %wp8160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da840 word 0xd63f0100
  %r8161.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8161 = load i64, ptr %r8161.p, align 8, !alias.scope !3, !noalias !4
  %fp8162 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8161, ptr %fp8162, align 8, !alias.scope !3, !noalias !4
  %wp8163 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730564, ptr %wp8163, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da844 word 0x17fffc02
  br label %L_8002d984c
L_8002da850_ft:
  ; @pc 0x8002da850 word 0xd001b408
  %wp8190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da854 word 0xf946ed08
  %r8191.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8191 = load i64, ptr %r8191.p, align 8, !alias.scope !3, !noalias !4
  %t8192 = add i64 %r8191, 3544
  %gmp8193 = inttoptr i64 %t8192 to ptr
  %gml8194 = load i64, ptr %gmp8193, align 1, !alias.scope !4, !noalias !3
  %wp8195 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8194, ptr %wp8195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da858 word 0x17ffffcb
  br label %L_8002da784
L_8002da868_ft:
  ; @pc 0x8002da868 word 0xd001b408
  %wp8227 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da86c word 0xaa1603e0
  %r8228.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8228 = load i64, ptr %r8228.p, align 8, !alias.scope !3, !noalias !4
  %t8229 = or i64 0, %r8228
  %wp8230 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8229, ptr %wp8230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da870 word 0xf9413508
  %r8231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8231 = load i64, ptr %r8231.p, align 8, !alias.scope !3, !noalias !4
  %t8232 = add i64 %r8231, 616
  %gmp8233 = inttoptr i64 %t8232 to ptr
  %gml8234 = load i64, ptr %gmp8233, align 1, !alias.scope !4, !noalias !3
  %wp8235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8234, ptr %wp8235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da874 word 0xaa1703e1
  %r8236.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8236 = load i64, ptr %r8236.p, align 8, !alias.scope !3, !noalias !4
  %t8237 = or i64 0, %r8236
  %wp8238 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8237, ptr %wp8238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da878 word 0x52800082
  %c8239 = zext i32 4 to i64
  %wp8240 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8239, ptr %wp8240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da87c word 0xf9400108
  %r8241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8241 = load i64, ptr %r8241.p, align 8, !alias.scope !3, !noalias !4
  %gmp8242 = inttoptr i64 %r8241 to ptr
  %gml8243 = load i64, ptr %gmp8242, align 1, !alias.scope !4, !noalias !3
  %wp8244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8243, ptr %wp8244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da880 word 0x2a1f03e3
  %t8245 = or i32 0, 0
  %c8246 = zext i32 %t8245 to i64
  %wp8247 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8246, ptr %wp8247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da884 word 0xd63f0100
  %r8248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8248 = load i64, ptr %r8248.p, align 8, !alias.scope !3, !noalias !4
  %fp8249 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8248, ptr %fp8249, align 8, !alias.scope !3, !noalias !4
  %wp8250 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730632, ptr %wp8250, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da888 word 0x17fffd5c
  br label %L_8002d9df8
L_8002da898_ft:
  ; @pc 0x8002da898 word 0xd001b408
  %wp8282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da89c word 0xaa1603e0
  %r8283.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8283 = load i64, ptr %r8283.p, align 8, !alias.scope !3, !noalias !4
  %t8284 = or i64 0, %r8283
  %wp8285 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8284, ptr %wp8285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8a0 word 0xf9413508
  %r8286.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8286 = load i64, ptr %r8286.p, align 8, !alias.scope !3, !noalias !4
  %t8287 = add i64 %r8286, 616
  %gmp8288 = inttoptr i64 %t8287 to ptr
  %gml8289 = load i64, ptr %gmp8288, align 1, !alias.scope !4, !noalias !3
  %wp8290 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8289, ptr %wp8290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8a4 word 0xaa1703e1
  %r8291.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8291 = load i64, ptr %r8291.p, align 8, !alias.scope !3, !noalias !4
  %t8292 = or i64 0, %r8291
  %wp8293 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8292, ptr %wp8293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8a8 word 0x52800082
  %c8294 = zext i32 4 to i64
  %wp8295 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8294, ptr %wp8295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8ac word 0xf9400108
  %r8296.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8296 = load i64, ptr %r8296.p, align 8, !alias.scope !3, !noalias !4
  %gmp8297 = inttoptr i64 %r8296 to ptr
  %gml8298 = load i64, ptr %gmp8297, align 1, !alias.scope !4, !noalias !3
  %wp8299 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8298, ptr %wp8299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8b0 word 0x2a1f03e3
  %t8300 = or i32 0, 0
  %c8301 = zext i32 %t8300 to i64
  %wp8302 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8301, ptr %wp8302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8b4 word 0xd63f0100
  %r8303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8303 = load i64, ptr %r8303.p, align 8, !alias.scope !3, !noalias !4
  %fp8304 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8303, ptr %fp8304, align 8, !alias.scope !3, !noalias !4
  %wp8305 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730680, ptr %wp8305, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da8b8 word 0x17fffd92
  br label %L_8002d9f00
L_8002da8c8_ft:
  ; @pc 0x8002da8c8 word 0xd001b408
  %wp8337 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8cc word 0xaa1603e0
  %r8338.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8338 = load i64, ptr %r8338.p, align 8, !alias.scope !3, !noalias !4
  %t8339 = or i64 0, %r8338
  %wp8340 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8339, ptr %wp8340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8d0 word 0xf9413508
  %r8341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8341 = load i64, ptr %r8341.p, align 8, !alias.scope !3, !noalias !4
  %t8342 = add i64 %r8341, 616
  %gmp8343 = inttoptr i64 %t8342 to ptr
  %gml8344 = load i64, ptr %gmp8343, align 1, !alias.scope !4, !noalias !3
  %wp8345 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8344, ptr %wp8345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8d4 word 0xaa1703e1
  %r8346.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8346 = load i64, ptr %r8346.p, align 8, !alias.scope !3, !noalias !4
  %t8347 = or i64 0, %r8346
  %wp8348 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8347, ptr %wp8348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8d8 word 0x52800082
  %c8349 = zext i32 4 to i64
  %wp8350 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8349, ptr %wp8350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8dc word 0xf9400108
  %r8351.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8351 = load i64, ptr %r8351.p, align 8, !alias.scope !3, !noalias !4
  %gmp8352 = inttoptr i64 %r8351 to ptr
  %gml8353 = load i64, ptr %gmp8352, align 1, !alias.scope !4, !noalias !3
  %wp8354 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8353, ptr %wp8354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8e0 word 0x2a1f03e3
  %t8355 = or i32 0, 0
  %c8356 = zext i32 %t8355 to i64
  %wp8357 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8356, ptr %wp8357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002da8e4 word 0xd63f0100
  %r8358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8358 = load i64, ptr %r8358.p, align 8, !alias.scope !3, !noalias !4
  %fp8359 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8358, ptr %fp8359, align 8, !alias.scope !3, !noalias !4
  %wp8360 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362730728, ptr %wp8360, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002da8e8 word 0x17fffc76
  br label %L_8002d9ac0
L_8002da8ec_unreach:
  ; @pc 0x8002da8ec word 0x00000000
  call void @rt_udf(ptr %c, i64 34362730732)
  unreachable
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
