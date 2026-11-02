; UltraTears chunk main_159_dispatch: 1 functions [0x8002824a0..0x800283868)
; ModuleID = 'main_159_dispatch_raw'
source_filename = "main_159_dispatch_raw"
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

declare dso_local void @f_8028e5c98(ptr)
declare dso_local void @f_8028e5e6c(ptr)

define dso_local void @f_8002824a0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8002824a0:
  ; @pc 0x8002824a0 word 0xd10203ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 128
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824a4 word 0xa9027bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 32
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824a8 word 0xa9036ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 48
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824ac word 0xa90467fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 64
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824b0 word 0xa9055ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 80
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824b4 word 0xa90657f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 96
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824b8 word 0xa9074ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 112
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8002824bc word 0x910083fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 32
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824c0 word 0xb940e009
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = add i64 %r53, 224
  %gmp55 = inttoptr i64 %t54 to ptr
  %gml56 = load i32, ptr %gmp55, align 1, !alias.scope !4, !noalias !3
  %c57 = zext i32 %gml56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824c4 word 0xaa0003f3
  %r59.p = getelementptr inbounds i8, ptr %c, i64 0
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = or i64 0, %r59
  %wp61 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824c8 word 0x5280002b
  %c62 = zext i32 1 to i64
  %wp63 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c62, ptr %wp63, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824cc word 0xb940c808
  %r64.p = getelementptr inbounds i8, ptr %c, i64 0
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = add i64 %r64, 200
  %gmp66 = inttoptr i64 %t65 to ptr
  %gml67 = load i32, ptr %gmp66, align 1, !alias.scope !4, !noalias !3
  %c68 = zext i32 %gml67 to i64
  %wp69 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824d0 word 0x3100053f
  %r70.p = getelementptr inbounds i8, ptr %c, i64 72
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %c71 = trunc i64 %r70 to i32
  %t72 = add i32 %c71, 1
  %fn73 = icmp slt i32 %t72, 0
  %fz74 = icmp eq i32 %t72, 0
  %fc75 = icmp ult i32 %t72, %c71
  %fx176 = xor i32 %c71, %t72
  %fx277 = xor i32 1, %t72
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
  ; @pc 0x8002824d4 word 0x39439017
  %r92.p = getelementptr inbounds i8, ptr %c, i64 0
  %r92 = load i64, ptr %r92.p, align 8, !alias.scope !3, !noalias !4
  %t93 = add i64 %r92, 228
  %gmp94 = inttoptr i64 %t93 to ptr
  %gml95 = load i8, ptr %gmp94, align 1, !alias.scope !4, !noalias !3
  %c96 = zext i8 %gml95 to i64
  %wp97 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c96, ptr %wp97, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824d8 word 0xf9400000
  %r98.p = getelementptr inbounds i8, ptr %c, i64 0
  %r98 = load i64, ptr %r98.p, align 8, !alias.scope !3, !noalias !4
  %gmp99 = inttoptr i64 %r98 to ptr
  %gml100 = load i64, ptr %gmp99, align 1, !alias.scope !4, !noalias !3
  %wp101 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml100, ptr %wp101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824dc word 0x1a9f07ea
  %t102 = add i32 0, 1
  %r103.p = getelementptr inbounds i8, ptr %c, i64 272
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %fsh105 = lshr i64 %r103, 30
  %cond104 = trunc i64 %fsh105 to i1
  %sel106 = select i1 %cond104, i32 0, i32 %t102
  %c107 = zext i32 %sel106 to i64
  %wp108 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c107, ptr %wp108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824e0 word 0x3100051f
  %r109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r109 = load i64, ptr %r109.p, align 8, !alias.scope !3, !noalias !4
  %c110 = trunc i64 %r109 to i32
  %t111 = add i32 %c110, 1
  %fn112 = icmp slt i32 %t111, 0
  %fz113 = icmp eq i32 %t111, 0
  %fc114 = icmp ult i32 %t111, %c110
  %fx1115 = xor i32 %c110, %t111
  %fx2116 = xor i32 1, %t111
  %fva117 = and i32 %fx1115, %fx2116
  %fv118 = icmp slt i32 %fva117, 0
  %nz119 = zext i1 %fn112 to i64
  %zz120 = zext i1 %fz113 to i64
  %cz121 = zext i1 %fc114 to i64
  %vz122 = zext i1 %fv118 to i64
  %ns123 = shl i64 %nz119, 31
  %zs124 = shl i64 %zz120, 30
  %cs125 = shl i64 %cz121, 29
  %vs126 = shl i64 %vz122, 28
  %nzor127 = or i64 %ns123, %zs124
  %cvor128 = or i64 %cs125, %vs126
  %nzcv129 = or i64 %nzor127, %cvor128
  %wp130 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824e4 word 0x1a8a116a
  %r131.p = getelementptr inbounds i8, ptr %c, i64 88
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %c132 = trunc i64 %r131 to i32
  %r133.p = getelementptr inbounds i8, ptr %c, i64 80
  %r133 = load i64, ptr %r133.p, align 8, !alias.scope !3, !noalias !4
  %c134 = trunc i64 %r133 to i32
  %r135.p = getelementptr inbounds i8, ptr %c, i64 272
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %fsh137 = lshr i64 %r135, 30
  %ftr138 = trunc i64 %fsh137 to i1
  %cond136 = xor i1 %ftr138, true
  %sel139 = select i1 %cond136, i32 %c132, i32 %c134
  %c140 = zext i32 %sel139 to i64
  %wp141 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c140, ptr %wp141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824e8 word 0x3400056a
  %r142.p = getelementptr inbounds i8, ptr %c, i64 80
  %r142 = load i64, ptr %r142.p, align 8, !alias.scope !3, !noalias !4
  %c143 = trunc i64 %r142 to i32
  %cmp144 = icmp eq i32 %c143, 0
  br i1 %cmp144, label %L_800282594, label %L_8002824ec_ft
L_800282518:
  ; @pc 0x800282518 word 0x2a1f03f6
  %t233 = or i32 0, 0
  %c234 = zext i32 %t233 to i64
  %wp235 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c234, ptr %wp235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028251c word 0x350013f7
  %r236.p = getelementptr inbounds i8, ptr %c, i64 184
  %r236 = load i64, ptr %r236.p, align 8, !alias.scope !3, !noalias !4
  %c237 = trunc i64 %r236 to i32
  %cmp238 = icmp ne i32 %c237, 0
  br i1 %cmp238, label %L_800282798, label %L_800282520
L_800282520:
  ; @pc 0x800282520 word 0xf9400260
  %r239.p = getelementptr inbounds i8, ptr %c, i64 152
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %gmp240 = inttoptr i64 %r239 to ptr
  %gml241 = load i64, ptr %gmp240, align 1, !alias.scope !4, !noalias !3
  %wp242 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml241, ptr %wp242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282524 word 0xf9400008
  %r243.p = getelementptr inbounds i8, ptr %c, i64 0
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %gmp244 = inttoptr i64 %r243 to ptr
  %gml245 = load i64, ptr %gmp244, align 1, !alias.scope !4, !noalias !3
  %wp246 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml245, ptr %wp246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282528 word 0xf9403108
  %r247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %t248 = add i64 %r247, 96
  %gmp249 = inttoptr i64 %t248 to ptr
  %gml250 = load i64, ptr %gmp249, align 1, !alias.scope !4, !noalias !3
  %wp251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml250, ptr %wp251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028252c word 0xd63f0100
  %r252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r252 = load i64, ptr %r252.p, align 8, !alias.scope !3, !noalias !4
  %fp253 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r252, ptr %fp253, align 8, !alias.scope !3, !noalias !4
  %wp254 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369328, ptr %wp254, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282530 word 0xb940ce68
  %r255.p = getelementptr inbounds i8, ptr %c, i64 152
  %r255 = load i64, ptr %r255.p, align 8, !alias.scope !3, !noalias !4
  %t256 = add i64 %r255, 204
  %gmp257 = inttoptr i64 %t256 to ptr
  %gml258 = load i32, ptr %gmp257, align 1, !alias.scope !4, !noalias !3
  %c259 = zext i32 %gml258 to i64
  %wp260 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c259, ptr %wp260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282534 word 0x2a1f03ec
  %t261 = or i32 0, 0
  %c262 = zext i32 %t261 to i64
  %wp263 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c262, ptr %wp263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282538 word 0x2a1603eb
  %r264.p = getelementptr inbounds i8, ptr %c, i64 176
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %c265 = trunc i64 %r264 to i32
  %t266 = or i32 0, %c265
  %c267 = zext i32 %t266 to i64
  %wp268 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028253c word 0x51000416
  %r269.p = getelementptr inbounds i8, ptr %c, i64 0
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %c270 = trunc i64 %r269 to i32
  %t271 = sub i32 %c270, 1
  %c272 = zext i32 %t271 to i64
  %wp273 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c272, ptr %wp273, align 8, !alias.scope !3, !noalias !4
  br label %L_800282540
L_800282540:
  ; @pc 0x800282540 word 0xb9400289
  %r274.p = getelementptr inbounds i8, ptr %c, i64 160
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %gmp275 = inttoptr i64 %r274 to ptr
  %gml276 = load i32, ptr %gmp275, align 1, !alias.scope !4, !noalias !3
  %c277 = zext i32 %gml276 to i64
  %wp278 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c277, ptr %wp278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282544 word 0x7100191f
  %r279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %c280 = trunc i64 %r279 to i32
  %t281 = sub i32 %c280, 6
  %fn282 = icmp slt i32 %t281, 0
  %fz283 = icmp eq i32 %t281, 0
  %fc284 = icmp uge i32 %c280, 6
  %fx1285 = xor i32 %c280, 6
  %fx2286 = xor i32 %c280, %t281
  %fva287 = and i32 %fx1285, %fx2286
  %fv288 = icmp slt i32 %fva287, 0
  %nz289 = zext i1 %fn282 to i64
  %zz290 = zext i1 %fz283 to i64
  %cz291 = zext i1 %fc284 to i64
  %vz292 = zext i1 %fv288 to i64
  %ns293 = shl i64 %nz289, 31
  %zs294 = shl i64 %zz290, 30
  %cs295 = shl i64 %cz291, 29
  %vs296 = shl i64 %vz292, 28
  %nzor297 = or i64 %ns293, %zs294
  %cvor298 = or i64 %cs295, %vs296
  %nzcv299 = or i64 %nzor297, %cvor298
  %wp300 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv299, ptr %wp300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282548 word 0x1a9f27fc
  %t301 = add i32 0, 1
  %r302.p = getelementptr inbounds i8, ptr %c, i64 272
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %fsh304 = lshr i64 %r302, 29
  %cond303 = trunc i64 %fsh304 to i1
  %sel305 = select i1 %cond303, i32 0, i32 %t301
  %c306 = zext i32 %sel305 to i64
  %wp307 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c306, ptr %wp307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028254c word 0x340016a9
  %r308.p = getelementptr inbounds i8, ptr %c, i64 72
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %c309 = trunc i64 %r308 to i32
  %cmp310 = icmp eq i32 %c309, 0
  br i1 %cmp310, label %L_800282820, label %L_800282550_ft
L_800282588:
  ; @pc 0x800282588 word 0x2a1f03f8
  %t382 = or i32 0, 0
  %c383 = zext i32 %t382 to i64
  %wp384 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c383, ptr %wp384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028258c word 0x2a1f03fb
  %t385 = or i32 0, 0
  %c386 = zext i32 %t385 to i64
  %wp387 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c386, ptr %wp387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282590 word 0x140001a5
  br label %L_800282c24
L_800282594:
  ; @pc 0x800282594 word 0xf9400008
  %r388.p = getelementptr inbounds i8, ptr %c, i64 0
  %r388 = load i64, ptr %r388.p, align 8, !alias.scope !3, !noalias !4
  %gmp389 = inttoptr i64 %r388 to ptr
  %gml390 = load i64, ptr %gmp389, align 1, !alias.scope !4, !noalias !3
  %wp391 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml390, ptr %wp391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282598 word 0xf9403108
  %r392.p = getelementptr inbounds i8, ptr %c, i64 64
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %t393 = add i64 %r392, 96
  %gmp394 = inttoptr i64 %t393 to ptr
  %gml395 = load i64, ptr %gmp394, align 1, !alias.scope !4, !noalias !3
  %wp396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml395, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028259c word 0xd63f0100
  %r397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %fp398 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r397, ptr %fp398, align 8, !alias.scope !3, !noalias !4
  %wp399 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369440, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002825a0 word 0x51000408
  %r400.p = getelementptr inbounds i8, ptr %c, i64 0
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %c401 = trunc i64 %r400 to i32
  %t402 = sub i32 %c401, 1
  %c403 = zext i32 %t402 to i64
  %wp404 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c403, ptr %wp404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825a4 word 0x710002ff
  %r405.p = getelementptr inbounds i8, ptr %c, i64 184
  %r405 = load i64, ptr %r405.p, align 8, !alias.scope !3, !noalias !4
  %c406 = trunc i64 %r405 to i32
  %t407 = sub i32 %c406, 0
  %fn408 = icmp slt i32 %t407, 0
  %fz409 = icmp eq i32 %t407, 0
  %fc410 = icmp uge i32 %c406, 0
  %fx1411 = xor i32 %c406, 0
  %fx2412 = xor i32 %c406, %t407
  %fva413 = and i32 %fx1411, %fx2412
  %fv414 = icmp slt i32 %fva413, 0
  %nz415 = zext i1 %fn408 to i64
  %zz416 = zext i1 %fz409 to i64
  %cz417 = zext i1 %fc410 to i64
  %vz418 = zext i1 %fv414 to i64
  %ns419 = shl i64 %nz415, 31
  %zs420 = shl i64 %zz416, 30
  %cs421 = shl i64 %cz417, 29
  %vs422 = shl i64 %vz418, 28
  %nzor423 = or i64 %ns419, %zs420
  %cvor424 = or i64 %cs421, %vs422
  %nzcv425 = or i64 %nzor423, %cvor424
  %wp426 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv425, ptr %wp426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825a8 word 0x52800118
  %c427 = zext i32 8 to i64
  %wp428 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c427, ptr %wp428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825ac word 0x93407d16
  %r429.p = getelementptr inbounds i8, ptr %c, i64 64
  %r429 = load i64, ptr %r429.p, align 8, !alias.scope !3, !noalias !4
  %t430 = lshr i64 %r429, 31
  %t431 = and i64 %t430, 1
  %t432 = sub i64 0, %t431
  %t433 = and i64 %t432, -4294967296
  %t434 = and i64 %r429, 4294967295
  %t435 = or i64 %t433, %t434
  %wp436 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t435, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825b0 word 0x9a9603f4
  %r437.p = getelementptr inbounds i8, ptr %c, i64 176
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %r438.p = getelementptr inbounds i8, ptr %c, i64 272
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %fsh440 = lshr i64 %r438, 30
  %cond439 = trunc i64 %fsh440 to i1
  %sel441 = select i1 %cond439, i64 0, i64 %r437
  %wp442 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel441, ptr %wp442, align 8, !alias.scope !3, !noalias !4
  br label %L_8002825b4
L_8002825b4:
  ; @pc 0x8002825b4 word 0x350008f7
  %r443.p = getelementptr inbounds i8, ptr %c, i64 184
  %r443 = load i64, ptr %r443.p, align 8, !alias.scope !3, !noalias !4
  %c444 = trunc i64 %r443 to i32
  %cmp445 = icmp ne i32 %c444, 0
  br i1 %cmp445, label %L_8002826d0, label %L_8002825b8_ft
L_8002825c4:
  ; @pc 0x8002825c4 word 0xaa1403f9
  %r478.p = getelementptr inbounds i8, ptr %c, i64 160
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %t479 = or i64 0, %r478
  %wp480 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t479, ptr %wp480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825c8 word 0x2a1f03f8
  %t481 = or i32 0, 0
  %c482 = zext i32 %t481 to i64
  %wp483 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c482, ptr %wp483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825cc word 0x2a1f03fc
  %t484 = or i32 0, 0
  %c485 = zext i32 %t484 to i64
  %wp486 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c485, ptr %wp486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825d0 word 0xb8408728
  %r487.p = getelementptr inbounds i8, ptr %c, i64 200
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %t488 = add i64 %r487, 8
  %gmp489 = inttoptr i64 %r487 to ptr
  %gml490 = load i32, ptr %gmp489, align 1, !alias.scope !4, !noalias !3
  %c491 = zext i32 %gml490 to i64
  %wp492 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t488, ptr %wp492, align 8, !alias.scope !3, !noalias !4
  %wp493 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c491, ptr %wp493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825d4 word 0x91034275
  %r494.p = getelementptr inbounds i8, ptr %c, i64 152
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %t495 = add i64 %r494, 208
  %wp496 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t495, ptr %wp496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825d8 word 0x9100227a
  %r497.p = getelementptr inbounds i8, ptr %c, i64 152
  %r497 = load i64, ptr %r497.p, align 8, !alias.scope !3, !noalias !4
  %t498 = add i64 %r497, 8
  %wp499 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t498, ptr %wp499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825dc word 0x9100427b
  %r500.p = getelementptr inbounds i8, ptr %c, i64 152
  %r500 = load i64, ptr %r500.p, align 8, !alias.scope !3, !noalias !4
  %t501 = add i64 %r500, 16
  %wp502 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t501, ptr %wp502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825e0 word 0x51000516
  %r503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r503 = load i64, ptr %r503.p, align 8, !alias.scope !3, !noalias !4
  %c504 = trunc i64 %r503 to i32
  %t505 = sub i32 %c504, 1
  %c506 = zext i32 %t505 to i64
  %wp507 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c506, ptr %wp507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825e4 word 0x2a1603e8
  %r508.p = getelementptr inbounds i8, ptr %c, i64 176
  %r508 = load i64, ptr %r508.p, align 8, !alias.scope !3, !noalias !4
  %c509 = trunc i64 %r508 to i32
  %t510 = or i32 0, %c509
  %c511 = zext i32 %t510 to i64
  %wp512 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c511, ptr %wp512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825e8 word 0x34001217
  %r513.p = getelementptr inbounds i8, ptr %c, i64 184
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %c514 = trunc i64 %r513 to i32
  %cmp515 = icmp eq i32 %c514, 0
  br i1 %cmp515, label %L_800282828, label %L_8002825ec
L_8002825ec:
  ; @pc 0x8002825ec word 0x6b1c011f
  %r516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r516 = load i64, ptr %r516.p, align 8, !alias.scope !3, !noalias !4
  %c517 = trunc i64 %r516 to i32
  %r518.p = getelementptr inbounds i8, ptr %c, i64 224
  %r518 = load i64, ptr %r518.p, align 8, !alias.scope !3, !noalias !4
  %c519 = trunc i64 %r518 to i32
  %t520 = sub i32 %c517, %c519
  %fn521 = icmp slt i32 %t520, 0
  %fz522 = icmp eq i32 %t520, 0
  %fc523 = icmp uge i32 %c517, %c519
  %fx1524 = xor i32 %c517, %c519
  %fx2525 = xor i32 %c517, %t520
  %fva526 = and i32 %fx1524, %fx2525
  %fv527 = icmp slt i32 %fva526, 0
  %nz528 = zext i1 %fn521 to i64
  %zz529 = zext i1 %fz522 to i64
  %cz530 = zext i1 %fc523 to i64
  %vz531 = zext i1 %fv527 to i64
  %ns532 = shl i64 %nz528, 31
  %zs533 = shl i64 %zz529, 30
  %cs534 = shl i64 %cz530, 29
  %vs535 = shl i64 %vz531, 28
  %nzor536 = or i64 %ns532, %zs533
  %cvor537 = or i64 %cs534, %vs535
  %nzcv538 = or i64 %nzor536, %cvor537
  %wp539 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv538, ptr %wp539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825f0 word 0x5400118b
  %r540.p = getelementptr inbounds i8, ptr %c, i64 272
  %r540 = load i64, ptr %r540.p, align 8, !alias.scope !3, !noalias !4
  %fsh542 = lshr i64 %r540, 31
  %ftr543 = trunc i64 %fsh542 to i1
  %fsh544 = lshr i64 %r540, 28
  %ftr545 = trunc i64 %fsh544 to i1
  %cond541 = icmp ne i1 %ftr543, %ftr545
  br i1 %cond541, label %L_800282820, label %L_8002825f4_ft
L_8002825f8:
  ; @pc 0x8002825f8 word 0xb940ca62
  %r554.p = getelementptr inbounds i8, ptr %c, i64 152
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %t555 = add i64 %r554, 200
  %gmp556 = inttoptr i64 %t555 to ptr
  %gml557 = load i32, ptr %gmp556, align 1, !alias.scope !4, !noalias !3
  %c558 = zext i32 %gml557 to i64
  %wp559 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c558, ptr %wp559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825fc word 0x3100045f
  %r560.p = getelementptr inbounds i8, ptr %c, i64 16
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %c561 = trunc i64 %r560 to i32
  %t562 = add i32 %c561, 1
  %fn563 = icmp slt i32 %t562, 0
  %fz564 = icmp eq i32 %t562, 0
  %fc565 = icmp ult i32 %t562, %c561
  %fx1566 = xor i32 %c561, %t562
  %fx2567 = xor i32 1, %t562
  %fva568 = and i32 %fx1566, %fx2567
  %fv569 = icmp slt i32 %fva568, 0
  %nz570 = zext i1 %fn563 to i64
  %zz571 = zext i1 %fz564 to i64
  %cz572 = zext i1 %fc565 to i64
  %vz573 = zext i1 %fv569 to i64
  %ns574 = shl i64 %nz570, 31
  %zs575 = shl i64 %zz571, 30
  %cs576 = shl i64 %cz572, 29
  %vs577 = shl i64 %vz573, 28
  %nzor578 = or i64 %ns574, %zs575
  %cvor579 = or i64 %cs576, %vs577
  %nzcv580 = or i64 %nzor578, %cvor579
  %wp581 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv580, ptr %wp581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282600 word 0x540001a0
  %r582.p = getelementptr inbounds i8, ptr %c, i64 272
  %r582 = load i64, ptr %r582.p, align 8, !alias.scope !3, !noalias !4
  %fsh584 = lshr i64 %r582, 30
  %cond583 = trunc i64 %fsh584 to i1
  br i1 %cond583, label %L_800282634, label %L_800282604_ft
L_800282634:
  ; @pc 0x800282634 word 0xb9400356
  %r631.p = getelementptr inbounds i8, ptr %c, i64 208
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %gmp632 = inttoptr i64 %r631 to ptr
  %gml633 = load i32, ptr %gmp632, align 1, !alias.scope !4, !noalias !3
  %c634 = zext i32 %gml633 to i64
  %wp635 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c634, ptr %wp635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282638 word 0x34001756
  %r636.p = getelementptr inbounds i8, ptr %c, i64 176
  %r636 = load i64, ptr %r636.p, align 8, !alias.scope !3, !noalias !4
  %c637 = trunc i64 %r636 to i32
  %cmp638 = icmp eq i32 %c637, 0
  br i1 %cmp638, label %L_800282920, label %L_80028263c_ft
L_80028266c:
  ; @pc 0x80028266c word 0xb40015b8
  %r690.p = getelementptr inbounds i8, ptr %c, i64 192
  %r690 = load i64, ptr %r690.p, align 8, !alias.scope !3, !noalias !4
  %cmp691 = icmp eq i64 %r690, 0
  br i1 %cmp691, label %L_800282920, label %L_800282670_ft
L_800282690:
  ; @pc 0x800282690 word 0xaa1f03e0
  %t726 = or i64 0, 0
  %wp727 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t726, ptr %wp727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282694 word 0xeb3cc2ff
  %r728.p = getelementptr inbounds i8, ptr %c, i64 184
  %r728 = load i64, ptr %r728.p, align 8, !alias.scope !3, !noalias !4
  %r729.p = getelementptr inbounds i8, ptr %c, i64 224
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %c730 = trunc i64 %r729 to i32
  %c731 = sext i32 %c730 to i64
  %t732 = sub i64 %r728, %c731
  %fn733 = icmp slt i64 %t732, 0
  %fz734 = icmp eq i64 %t732, 0
  %fc735 = icmp uge i64 %r728, %c731
  %fx1736 = xor i64 %r728, %c731
  %fx2737 = xor i64 %r728, %t732
  %fva738 = and i64 %fx1736, %fx2737
  %fv739 = icmp slt i64 %fva738, 0
  %nz740 = zext i1 %fn733 to i64
  %zz741 = zext i1 %fz734 to i64
  %cz742 = zext i1 %fc735 to i64
  %vz743 = zext i1 %fv739 to i64
  %ns744 = shl i64 %nz740, 31
  %zs745 = shl i64 %zz741, 30
  %cs746 = shl i64 %cz742, 29
  %vs747 = shl i64 %vz743, 28
  %nzor748 = or i64 %ns744, %zs745
  %cvor749 = or i64 %cs746, %vs747
  %nzcv750 = or i64 %nzor748, %cvor749
  %wp751 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv750, ptr %wp751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282698 word 0xd10006f7
  %r752.p = getelementptr inbounds i8, ptr %c, i64 184
  %r752 = load i64, ptr %r752.p, align 8, !alias.scope !3, !noalias !4
  %t753 = sub i64 %r752, 1
  %wp754 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t753, ptr %wp754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028269c word 0x54fffaec
  %r755.p = getelementptr inbounds i8, ptr %c, i64 272
  %r755 = load i64, ptr %r755.p, align 8, !alias.scope !3, !noalias !4
  %fsh757 = lshr i64 %r755, 30
  %ftr758 = trunc i64 %fsh757 to i1
  %fsh759 = lshr i64 %r755, 31
  %ftr760 = trunc i64 %fsh759 to i1
  %fsh761 = lshr i64 %r755, 28
  %ftr762 = trunc i64 %fsh761 to i1
  %fnz763 = xor i1 %ftr758, true
  %feq764 = icmp eq i1 %ftr760, %ftr762
  %cond756 = and i1 %fnz763, %feq764
  br i1 %cond756, label %L_8002825f8, label %L_8002826a0_ft
L_8002826a4:
  ; @pc 0x8002826a4 word 0x51001109
  %r765.p = getelementptr inbounds i8, ptr %c, i64 64
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %c766 = trunc i64 %r765 to i32
  %t767 = sub i32 %c766, 4
  %c768 = zext i32 %t767 to i64
  %wp769 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c768, ptr %wp769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826a8 word 0x7100093f
  %r770.p = getelementptr inbounds i8, ptr %c, i64 72
  %r770 = load i64, ptr %r770.p, align 8, !alias.scope !3, !noalias !4
  %c771 = trunc i64 %r770 to i32
  %t772 = sub i32 %c771, 2
  %fn773 = icmp slt i32 %t772, 0
  %fz774 = icmp eq i32 %t772, 0
  %fc775 = icmp uge i32 %c771, 2
  %fx1776 = xor i32 %c771, 2
  %fx2777 = xor i32 %c771, %t772
  %fva778 = and i32 %fx1776, %fx2777
  %fv779 = icmp slt i32 %fva778, 0
  %nz780 = zext i1 %fn773 to i64
  %zz781 = zext i1 %fz774 to i64
  %cz782 = zext i1 %fc775 to i64
  %vz783 = zext i1 %fv779 to i64
  %ns784 = shl i64 %nz780, 31
  %zs785 = shl i64 %zz781, 30
  %cs786 = shl i64 %cz782, 29
  %vs787 = shl i64 %vz783, 28
  %nzor788 = or i64 %ns784, %zs785
  %cvor789 = or i64 %cs786, %vs787
  %nzcv790 = or i64 %nzor788, %cvor789
  %wp791 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv790, ptr %wp791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826ac word 0x54fff363
  %r792.p = getelementptr inbounds i8, ptr %c, i64 272
  %r792 = load i64, ptr %r792.p, align 8, !alias.scope !3, !noalias !4
  %fsh794 = lshr i64 %r792, 29
  %ftr795 = trunc i64 %fsh794 to i1
  %cond793 = xor i1 %ftr795, true
  br i1 %cond793, label %L_800282518, label %L_8002826b0_ft
L_8002826c8:
  ; @pc 0x8002826c8 word 0x2a1f03f6
  %t838 = or i32 0, 0
  %c839 = zext i32 %t838 to i64
  %wp840 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c839, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826cc word 0x17ffff95
  br label %L_800282520
L_8002826d0:
  ; @pc 0x8002826d0 word 0xb7f80a94
  %r841.p = getelementptr inbounds i8, ptr %c, i64 160
  %r841 = load i64, ptr %r841.p, align 8, !alias.scope !3, !noalias !4
  %t842 = and i64 %r841, -9223372036854775808
  %cmp843 = icmp ne i64 %t842, 0
  br i1 %cmp843, label %L_800282820, label %L_8002826d4
L_8002826d4:
  ; @pc 0x8002826d4 word 0xb940ca62
  %r844.p = getelementptr inbounds i8, ptr %c, i64 152
  %r844 = load i64, ptr %r844.p, align 8, !alias.scope !3, !noalias !4
  %t845 = add i64 %r844, 200
  %gmp846 = inttoptr i64 %t845 to ptr
  %gml847 = load i32, ptr %gmp846, align 1, !alias.scope !4, !noalias !3
  %c848 = zext i32 %gml847 to i64
  %wp849 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c848, ptr %wp849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826d8 word 0x3100045f
  %r850.p = getelementptr inbounds i8, ptr %c, i64 16
  %r850 = load i64, ptr %r850.p, align 8, !alias.scope !3, !noalias !4
  %c851 = trunc i64 %r850 to i32
  %t852 = add i32 %c851, 1
  %fn853 = icmp slt i32 %t852, 0
  %fz854 = icmp eq i32 %t852, 0
  %fc855 = icmp ult i32 %t852, %c851
  %fx1856 = xor i32 %c851, %t852
  %fx2857 = xor i32 1, %t852
  %fva858 = and i32 %fx1856, %fx2857
  %fv859 = icmp slt i32 %fva858, 0
  %nz860 = zext i1 %fn853 to i64
  %zz861 = zext i1 %fz854 to i64
  %cz862 = zext i1 %fc855 to i64
  %vz863 = zext i1 %fv859 to i64
  %ns864 = shl i64 %nz860, 31
  %zs865 = shl i64 %zz861, 30
  %cs866 = shl i64 %cz862, 29
  %vs867 = shl i64 %vz863, 28
  %nzor868 = or i64 %ns864, %zs865
  %cvor869 = or i64 %cs866, %vs867
  %nzcv870 = or i64 %nzor868, %cvor869
  %wp871 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv870, ptr %wp871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826dc word 0x540004c0
  %r872.p = getelementptr inbounds i8, ptr %c, i64 272
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %fsh874 = lshr i64 %r872, 30
  %cond873 = trunc i64 %fsh874 to i1
  br i1 %cond873, label %L_800282774, label %L_8002826e0_ft
L_800282744:
  ; @pc 0x800282744 word 0xf84086a0
  %r974.p = getelementptr inbounds i8, ptr %c, i64 168
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = add i64 %r974, 8
  %gmp976 = inttoptr i64 %r974 to ptr
  %gml977 = load i64, ptr %gmp976, align 1, !alias.scope !4, !noalias !3
  %wp978 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t975, ptr %wp978, align 8, !alias.scope !3, !noalias !4
  %wp979 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml977, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282748 word 0xf9400308
  %r980.p = getelementptr inbounds i8, ptr %c, i64 192
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %gmp981 = inttoptr i64 %r980 to ptr
  %gml982 = load i64, ptr %gmp981, align 1, !alias.scope !4, !noalias !3
  %wp983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml982, ptr %wp983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028274c word 0xf8747901
  %r984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %r985.p = getelementptr inbounds i8, ptr %c, i64 160
  %r985 = load i64, ptr %r985.p, align 8, !alias.scope !3, !noalias !4
  %t986 = shl i64 %r985, 3
  %t987 = add i64 %r984, %t986
  %gmp988 = inttoptr i64 %t987 to ptr
  %gml989 = load i64, ptr %gmp988, align 1, !alias.scope !4, !noalias !3
  %wp990 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml989, ptr %wp990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282750 word 0xf9400008
  %r991.p = getelementptr inbounds i8, ptr %c, i64 0
  %r991 = load i64, ptr %r991.p, align 8, !alias.scope !3, !noalias !4
  %gmp992 = inttoptr i64 %r991 to ptr
  %gml993 = load i64, ptr %gmp992, align 1, !alias.scope !4, !noalias !3
  %wp994 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml993, ptr %wp994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282754 word 0xf9400108
  %r995.p = getelementptr inbounds i8, ptr %c, i64 64
  %r995 = load i64, ptr %r995.p, align 8, !alias.scope !3, !noalias !4
  %gmp996 = inttoptr i64 %r995 to ptr
  %gml997 = load i64, ptr %gmp996, align 1, !alias.scope !4, !noalias !3
  %wp998 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml997, ptr %wp998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282758 word 0xd63f0100
  %r999.p = getelementptr inbounds i8, ptr %c, i64 64
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %fp1000 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r999, ptr %fp1000, align 8, !alias.scope !3, !noalias !4
  %wp1001 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369884, ptr %wp1001, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80028275c word 0xd1002339
  %r1002.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1002 = load i64, ptr %r1002.p, align 8, !alias.scope !3, !noalias !4
  %t1003 = sub i64 %r1002, 8
  %wp1004 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1003, ptr %wp1004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282760 word 0x3707ff20
  %r1005.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1005 = load i64, ptr %r1005.p, align 8, !alias.scope !3, !noalias !4
  %t1006 = and i64 %r1005, 1
  %cmp1007 = icmp ne i64 %t1006, 0
  br i1 %cmp1007, label %L_800282744, label %L_800282764
L_800282764:
  ; @pc 0x800282764 word 0xd1000688
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %t1009 = sub i64 %r1008, 1
  %wp1010 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1009, ptr %wp1010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282768 word 0x710002ff
  %r1011.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1011 = load i64, ptr %r1011.p, align 8, !alias.scope !3, !noalias !4
  %c1012 = trunc i64 %r1011 to i32
  %t1013 = sub i32 %c1012, 0
  %fn1014 = icmp slt i32 %t1013, 0
  %fz1015 = icmp eq i32 %t1013, 0
  %fc1016 = icmp uge i32 %c1012, 0
  %fx11017 = xor i32 %c1012, 0
  %fx21018 = xor i32 %c1012, %t1013
  %fva1019 = and i32 %fx11017, %fx21018
  %fv1020 = icmp slt i32 %fva1019, 0
  %nz1021 = zext i1 %fn1014 to i64
  %zz1022 = zext i1 %fz1015 to i64
  %cz1023 = zext i1 %fc1016 to i64
  %vz1024 = zext i1 %fv1020 to i64
  %ns1025 = shl i64 %nz1021, 31
  %zs1026 = shl i64 %zz1022, 30
  %cs1027 = shl i64 %cz1023, 29
  %vs1028 = shl i64 %vz1024, 28
  %nzor1029 = or i64 %ns1025, %zs1026
  %cvor1030 = or i64 %cs1027, %vs1028
  %nzcv1031 = or i64 %nzor1029, %cvor1030
  %wp1032 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1031, ptr %wp1032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028276c word 0x9a941514
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %t1035 = add i64 %r1034, 1
  %r1036.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1036 = load i64, ptr %r1036.p, align 8, !alias.scope !3, !noalias !4
  %fsh1038 = lshr i64 %r1036, 30
  %ftr1039 = trunc i64 %fsh1038 to i1
  %cond1037 = xor i1 %ftr1039, true
  %sel1040 = select i1 %cond1037, i64 %r1033, i64 %t1035
  %wp1041 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel1040, ptr %wp1041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282770 word 0x17ffff91
  br label %L_8002825b4
L_800282774:
  ; @pc 0x800282774 word 0xb9800a7a
  %r1042.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1042 = load i64, ptr %r1042.p, align 8, !alias.scope !3, !noalias !4
  %t1043 = add i64 %r1042, 8
  %gmp1044 = inttoptr i64 %t1043 to ptr
  %gml1045 = load i32, ptr %gmp1044, align 1, !alias.scope !4, !noalias !3
  %c1046 = sext i32 %gml1045 to i64
  %wp1047 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1046, ptr %wp1047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282778 word 0x3500017a
  %r1048.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1048 = load i64, ptr %r1048.p, align 8, !alias.scope !3, !noalias !4
  %c1049 = trunc i64 %r1048 to i32
  %cmp1050 = icmp ne i32 %c1049, 0
  br i1 %cmp1050, label %L_8002827a4, label %L_80028277c
L_80028277c:
  ; @pc 0x80028277c word 0xf9400260
  %r1051.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1051 = load i64, ptr %r1051.p, align 8, !alias.scope !3, !noalias !4
  %gmp1052 = inttoptr i64 %r1051 to ptr
  %gml1053 = load i64, ptr %gmp1052, align 1, !alias.scope !4, !noalias !3
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282780 word 0x2a1403e1
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %c1056 = trunc i64 %r1055 to i32
  %t1057 = or i32 0, %c1056
  %c1058 = zext i32 %t1057 to i64
  %wp1059 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1058, ptr %wp1059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282784 word 0xf9400008
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %gmp1061 = inttoptr i64 %r1060 to ptr
  %gml1062 = load i64, ptr %gmp1061, align 1, !alias.scope !4, !noalias !3
  %wp1063 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1062, ptr %wp1063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282788 word 0xf9404108
  %r1064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1064 = load i64, ptr %r1064.p, align 8, !alias.scope !3, !noalias !4
  %t1065 = add i64 %r1064, 128
  %gmp1066 = inttoptr i64 %t1065 to ptr
  %gml1067 = load i64, ptr %gmp1066, align 1, !alias.scope !4, !noalias !3
  %wp1068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1067, ptr %wp1068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028278c word 0xd63f0100
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %fp1070 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1069, ptr %fp1070, align 8, !alias.scope !3, !noalias !4
  %wp1071 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369936, ptr %wp1071, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282790 word 0x1400006a
  br label %L_800282938
L_800282794:
  ; @pc 0x800282794 word 0x2a1f03f6
  %t1072 = or i32 0, 0
  %c1073 = zext i32 %t1072 to i64
  %wp1074 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c1073, ptr %wp1074, align 8, !alias.scope !3, !noalias !4
  br label %L_800282798
L_800282798:
  ; @pc 0x800282798 word 0x5280002b
  %c1075 = zext i32 1 to i64
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1075, ptr %wp1076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028279c word 0x5280002c
  %c1077 = zext i32 1 to i64
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827a0 word 0x17ffff68
  br label %L_800282540
L_8002827a4:
  ; @pc 0x8002827a4 word 0xf9400260
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %gmp1080 = inttoptr i64 %r1079 to ptr
  %gml1081 = load i64, ptr %gmp1080, align 1, !alias.scope !4, !noalias !3
  %wp1082 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1081, ptr %wp1082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827a8 word 0x2a1403e1
  %r1083.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1083 = load i64, ptr %r1083.p, align 8, !alias.scope !3, !noalias !4
  %c1084 = trunc i64 %r1083 to i32
  %t1085 = or i32 0, %c1084
  %c1086 = zext i32 %t1085 to i64
  %wp1087 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1086, ptr %wp1087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827ac word 0xf9400a79
  %r1088.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1088 = load i64, ptr %r1088.p, align 8, !alias.scope !3, !noalias !4
  %t1089 = add i64 %r1088, 16
  %gmp1090 = inttoptr i64 %t1089 to ptr
  %gml1091 = load i64, ptr %gmp1090, align 1, !alias.scope !4, !noalias !3
  %wp1092 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1091, ptr %wp1092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827b0 word 0xf9400008
  %r1093.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1093 = load i64, ptr %r1093.p, align 8, !alias.scope !3, !noalias !4
  %gmp1094 = inttoptr i64 %r1093 to ptr
  %gml1095 = load i64, ptr %gmp1094, align 1, !alias.scope !4, !noalias !3
  %wp1096 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1095, ptr %wp1096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827b4 word 0xf9400335
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %gmp1098 = inttoptr i64 %r1097 to ptr
  %gml1099 = load i64, ptr %gmp1098, align 1, !alias.scope !4, !noalias !3
  %wp1100 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1099, ptr %wp1100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827b8 word 0xf9404108
  %r1101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1101 = load i64, ptr %r1101.p, align 8, !alias.scope !3, !noalias !4
  %t1102 = add i64 %r1101, 128
  %gmp1103 = inttoptr i64 %t1102 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827bc word 0xd63f0100
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %fp1107 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1106, ptr %fp1107, align 8, !alias.scope !3, !noalias !4
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369984, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002827c0 word 0xf94002a8
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %gmp1110 = inttoptr i64 %r1109 to ptr
  %gml1111 = load i64, ptr %gmp1110, align 1, !alias.scope !4, !noalias !3
  %wp1112 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1111, ptr %wp1112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827c4 word 0xaa0003e1
  %r1113.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1113 = load i64, ptr %r1113.p, align 8, !alias.scope !3, !noalias !4
  %t1114 = or i64 0, %r1113
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1114, ptr %wp1115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827c8 word 0xaa1503e0
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %t1117 = or i64 0, %r1116
  %wp1118 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1117, ptr %wp1118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827cc word 0xf9400108
  %r1119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1119 = load i64, ptr %r1119.p, align 8, !alias.scope !3, !noalias !4
  %gmp1120 = inttoptr i64 %r1119 to ptr
  %gml1121 = load i64, ptr %gmp1120, align 1, !alias.scope !4, !noalias !3
  %wp1122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1121, ptr %wp1122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827d0 word 0xd63f0100
  %r1123.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1123 = load i64, ptr %r1123.p, align 8, !alias.scope !3, !noalias !4
  %fp1124 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1123, ptr %fp1124, align 8, !alias.scope !3, !noalias !4
  %wp1125 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370004, ptr %wp1125, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002827d4 word 0x3607fc80
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1126 = load i64, ptr %r1126.p, align 8, !alias.scope !3, !noalias !4
  %t1127 = and i64 %r1126, 1
  %cmp1128 = icmp eq i64 %t1127, 0
  br i1 %cmp1128, label %L_800282764, label %L_8002827d8_ft
L_8002827e4:
  ; @pc 0x8002827e4 word 0xb4fffcda
  %r1139.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1139 = load i64, ptr %r1139.p, align 8, !alias.scope !3, !noalias !4
  %cmp1140 = icmp eq i64 %r1139, 0
  br i1 %cmp1140, label %L_80028277c, label %L_8002827e8_ft
L_800282820:
  ; @pc 0x800282820 word 0xaa1f03e0
  %t1191 = or i64 0, 0
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1191, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282824 word 0x14000045
  br label %L_800282938
L_800282828:
  ; @pc 0x800282828 word 0x6b1802df
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %c1194 = trunc i64 %r1193 to i32
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %c1196 = trunc i64 %r1195 to i32
  %t1197 = sub i32 %c1194, %c1196
  %fn1198 = icmp slt i32 %t1197, 0
  %fz1199 = icmp eq i32 %t1197, 0
  %fc1200 = icmp uge i32 %c1194, %c1196
  %fx11201 = xor i32 %c1194, %c1196
  %fx21202 = xor i32 %c1194, %t1197
  %fva1203 = and i32 %fx11201, %fx21202
  %fv1204 = icmp slt i32 %fva1203, 0
  %nz1205 = zext i1 %fn1198 to i64
  %zz1206 = zext i1 %fz1199 to i64
  %cz1207 = zext i1 %fc1200 to i64
  %vz1208 = zext i1 %fv1204 to i64
  %ns1209 = shl i64 %nz1205, 31
  %zs1210 = shl i64 %zz1206, 30
  %cs1211 = shl i64 %cz1207, 29
  %vs1212 = shl i64 %vz1208, 28
  %nzor1213 = or i64 %ns1209, %zs1210
  %cvor1214 = or i64 %cs1211, %vs1212
  %nzcv1215 = or i64 %nzor1213, %cvor1214
  %wp1216 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1215, ptr %wp1216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028282c word 0x54ffffab
  %r1217.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1217 = load i64, ptr %r1217.p, align 8, !alias.scope !3, !noalias !4
  %fsh1219 = lshr i64 %r1217, 31
  %ftr1220 = trunc i64 %fsh1219 to i1
  %fsh1221 = lshr i64 %r1217, 28
  %ftr1222 = trunc i64 %fsh1221 to i1
  %cond1218 = icmp ne i1 %ftr1220, %ftr1222
  br i1 %cond1218, label %L_800282820, label %L_800282830_ft
L_800282838:
  ; @pc 0x800282838 word 0xb940ca62
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %t1234 = add i64 %r1233, 200
  %gmp1235 = inttoptr i64 %t1234 to ptr
  %gml1236 = load i32, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  %c1237 = zext i32 %gml1236 to i64
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1237, ptr %wp1238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028283c word 0x3100045f
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %c1240 = trunc i64 %r1239 to i32
  %t1241 = add i32 %c1240, 1
  %fn1242 = icmp slt i32 %t1241, 0
  %fz1243 = icmp eq i32 %t1241, 0
  %fc1244 = icmp ult i32 %t1241, %c1240
  %fx11245 = xor i32 %c1240, %t1241
  %fx21246 = xor i32 1, %t1241
  %fva1247 = and i32 %fx11245, %fx21246
  %fv1248 = icmp slt i32 %fva1247, 0
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
  ; @pc 0x800282840 word 0x540006c0
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %fsh1263 = lshr i64 %r1261, 30
  %cond1262 = trunc i64 %fsh1263 to i1
  br i1 %cond1262, label %L_800282918, label %L_800282844_ft
L_800282894:
  ; @pc 0x800282894 word 0x386b692c
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %r1406.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1406 = load i64, ptr %r1406.p, align 8, !alias.scope !3, !noalias !4
  %t1407 = add i64 %r1405, %r1406
  %gmp1408 = inttoptr i64 %t1407 to ptr
  %gml1409 = load i8, ptr %gmp1408, align 1, !alias.scope !4, !noalias !3
  %c1410 = zext i8 %gml1409 to i64
  %wp1411 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1410, ptr %wp1411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282898 word 0x7100019f
  %r1412.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1412 = load i64, ptr %r1412.p, align 8, !alias.scope !3, !noalias !4
  %c1413 = trunc i64 %r1412 to i32
  %t1414 = sub i32 %c1413, 0
  %fn1415 = icmp slt i32 %t1414, 0
  %fz1416 = icmp eq i32 %t1414, 0
  %fc1417 = icmp uge i32 %c1413, 0
  %fx11418 = xor i32 %c1413, 0
  %fx21419 = xor i32 %c1413, %t1414
  %fva1420 = and i32 %fx11418, %fx21419
  %fv1421 = icmp slt i32 %fva1420, 0
  %nz1422 = zext i1 %fn1415 to i64
  %zz1423 = zext i1 %fz1416 to i64
  %cz1424 = zext i1 %fc1417 to i64
  %vz1425 = zext i1 %fv1421 to i64
  %ns1426 = shl i64 %nz1422, 31
  %zs1427 = shl i64 %zz1423, 30
  %cs1428 = shl i64 %cz1424, 29
  %vs1429 = shl i64 %vz1425, 28
  %nzor1430 = or i64 %ns1426, %zs1427
  %cvor1431 = or i64 %cs1428, %vs1429
  %nzcv1432 = or i64 %nzor1430, %cvor1431
  %wp1433 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1432, ptr %wp1433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028289c word 0x386b694d
  %r1434.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1434 = load i64, ptr %r1434.p, align 8, !alias.scope !3, !noalias !4
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %t1436 = add i64 %r1434, %r1435
  %gmp1437 = inttoptr i64 %t1436 to ptr
  %gml1438 = load i8, ptr %gmp1437, align 1, !alias.scope !4, !noalias !3
  %c1439 = zext i8 %gml1438 to i64
  %wp1440 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1439, ptr %wp1440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828a0 word 0x1a9f1108
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %c1442 = trunc i64 %r1441 to i32
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %fsh1445 = lshr i64 %r1443, 30
  %ftr1446 = trunc i64 %fsh1445 to i1
  %cond1444 = xor i1 %ftr1446, true
  %sel1447 = select i1 %cond1444, i32 %c1442, i32 0
  %c1448 = zext i32 %sel1447 to i64
  %wp1449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1448, ptr %wp1449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828a4 word 0x6b0d019f
  %r1450.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1450 = load i64, ptr %r1450.p, align 8, !alias.scope !3, !noalias !4
  %c1451 = trunc i64 %r1450 to i32
  %r1452.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1452 = load i64, ptr %r1452.p, align 8, !alias.scope !3, !noalias !4
  %c1453 = trunc i64 %r1452 to i32
  %t1454 = sub i32 %c1451, %c1453
  %fn1455 = icmp slt i32 %t1454, 0
  %fz1456 = icmp eq i32 %t1454, 0
  %fc1457 = icmp uge i32 %c1451, %c1453
  %fx11458 = xor i32 %c1451, %c1453
  %fx21459 = xor i32 %c1451, %t1454
  %fva1460 = and i32 %fx11458, %fx21459
  %fv1461 = icmp slt i32 %fva1460, 0
  %nz1462 = zext i1 %fn1455 to i64
  %zz1463 = zext i1 %fz1456 to i64
  %cz1464 = zext i1 %fc1457 to i64
  %vz1465 = zext i1 %fv1461 to i64
  %ns1466 = shl i64 %nz1462, 31
  %zs1467 = shl i64 %zz1463, 30
  %cs1468 = shl i64 %cz1464, 29
  %vs1469 = shl i64 %vz1465, 28
  %nzor1470 = or i64 %ns1466, %zs1467
  %cvor1471 = or i64 %cs1468, %vs1469
  %nzcv1472 = or i64 %nzor1470, %cvor1471
  %wp1473 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1472, ptr %wp1473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828a8 word 0x54000603
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %fsh1476 = lshr i64 %r1474, 29
  %ftr1477 = trunc i64 %fsh1476 to i1
  %cond1475 = xor i1 %ftr1477, true
  br i1 %cond1475, label %L_800282968, label %L_8002828ac_ft
L_8002828b0:
  ; @pc 0x8002828b0 word 0x7100019f
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %c1481 = trunc i64 %r1480 to i32
  %t1482 = sub i32 %c1481, 0
  %fn1483 = icmp slt i32 %t1482, 0
  %fz1484 = icmp eq i32 %t1482, 0
  %fc1485 = icmp uge i32 %c1481, 0
  %fx11486 = xor i32 %c1481, 0
  %fx21487 = xor i32 %c1481, %t1482
  %fva1488 = and i32 %fx11486, %fx21487
  %fv1489 = icmp slt i32 %fva1488, 0
  %nz1490 = zext i1 %fn1483 to i64
  %zz1491 = zext i1 %fz1484 to i64
  %cz1492 = zext i1 %fc1485 to i64
  %vz1493 = zext i1 %fv1489 to i64
  %ns1494 = shl i64 %nz1490, 31
  %zs1495 = shl i64 %zz1491, 30
  %cs1496 = shl i64 %cz1492, 29
  %vs1497 = shl i64 %vz1493, 28
  %nzor1498 = or i64 %ns1494, %zs1495
  %cvor1499 = or i64 %cs1496, %vs1497
  %nzcv1500 = or i64 %nzor1498, %cvor1499
  %wp1501 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1500, ptr %wp1501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828b4 word 0x1a9f07ef
  %t1502 = add i32 0, 1
  %r1503.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1503 = load i64, ptr %r1503.p, align 8, !alias.scope !3, !noalias !4
  %fsh1505 = lshr i64 %r1503, 30
  %cond1504 = trunc i64 %fsh1505 to i1
  %sel1506 = select i1 %cond1504, i32 0, i32 %t1502
  %c1507 = zext i32 %sel1506 to i64
  %wp1508 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1507, ptr %wp1508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828b8 word 0x6b0d019f
  %r1509.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1509 = load i64, ptr %r1509.p, align 8, !alias.scope !3, !noalias !4
  %c1510 = trunc i64 %r1509 to i32
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %c1512 = trunc i64 %r1511 to i32
  %t1513 = sub i32 %c1510, %c1512
  %fn1514 = icmp slt i32 %t1513, 0
  %fz1515 = icmp eq i32 %t1513, 0
  %fc1516 = icmp uge i32 %c1510, %c1512
  %fx11517 = xor i32 %c1510, %c1512
  %fx21518 = xor i32 %c1510, %t1513
  %fva1519 = and i32 %fx11517, %fx21518
  %fv1520 = icmp slt i32 %fva1519, 0
  %nz1521 = zext i1 %fn1514 to i64
  %zz1522 = zext i1 %fz1515 to i64
  %cz1523 = zext i1 %fc1516 to i64
  %vz1524 = zext i1 %fv1520 to i64
  %ns1525 = shl i64 %nz1521, 31
  %zs1526 = shl i64 %zz1522, 30
  %cs1527 = shl i64 %cz1523, 29
  %vs1528 = shl i64 %vz1524, 28
  %nzor1529 = or i64 %ns1525, %zs1526
  %cvor1530 = or i64 %cs1527, %vs1528
  %nzcv1531 = or i64 %nzor1529, %cvor1530
  %wp1532 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1531, ptr %wp1532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828bc word 0x1a8f13ec
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %c1534 = trunc i64 %r1533 to i32
  %r1535.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1535 = load i64, ptr %r1535.p, align 8, !alias.scope !3, !noalias !4
  %fsh1537 = lshr i64 %r1535, 30
  %ftr1538 = trunc i64 %fsh1537 to i1
  %cond1536 = xor i1 %ftr1538, true
  %sel1539 = select i1 %cond1536, i32 0, i32 %c1534
  %c1540 = zext i32 %sel1539 to i64
  %wp1541 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1540, ptr %wp1541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828c0 word 0x540004c1
  %r1542.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1542 = load i64, ptr %r1542.p, align 8, !alias.scope !3, !noalias !4
  %fsh1544 = lshr i64 %r1542, 30
  %ftr1545 = trunc i64 %fsh1544 to i1
  %cond1543 = xor i1 %ftr1545, true
  br i1 %cond1543, label %L_800282958, label %L_8002828c4
L_8002828c4:
  ; @pc 0x8002828c4 word 0x3600028c
  %r1546.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1546 = load i64, ptr %r1546.p, align 8, !alias.scope !3, !noalias !4
  %t1547 = and i64 %r1546, 1
  %cmp1548 = icmp eq i64 %t1547, 0
  br i1 %cmp1548, label %L_800282914, label %L_8002828c8_ft
L_8002828ec:
  ; @pc 0x8002828ec word 0x7100019f
  %r1630.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1630 = load i64, ptr %r1630.p, align 8, !alias.scope !3, !noalias !4
  %c1631 = trunc i64 %r1630 to i32
  %t1632 = sub i32 %c1631, 0
  %fn1633 = icmp slt i32 %t1632, 0
  %fz1634 = icmp eq i32 %t1632, 0
  %fc1635 = icmp uge i32 %c1631, 0
  %fx11636 = xor i32 %c1631, 0
  %fx21637 = xor i32 %c1631, %t1632
  %fva1638 = and i32 %fx11636, %fx21637
  %fv1639 = icmp slt i32 %fva1638, 0
  %nz1640 = zext i1 %fn1633 to i64
  %zz1641 = zext i1 %fz1634 to i64
  %cz1642 = zext i1 %fc1635 to i64
  %vz1643 = zext i1 %fv1639 to i64
  %ns1644 = shl i64 %nz1640, 31
  %zs1645 = shl i64 %zz1641, 30
  %cs1646 = shl i64 %cz1642, 29
  %vs1647 = shl i64 %vz1643, 28
  %nzor1648 = or i64 %ns1644, %zs1645
  %cvor1649 = or i64 %cs1646, %vs1647
  %nzcv1650 = or i64 %nzor1648, %cvor1649
  %wp1651 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1650, ptr %wp1651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828f0 word 0x1a9f07ef
  %t1652 = add i32 0, 1
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %fsh1655 = lshr i64 %r1653, 30
  %cond1654 = trunc i64 %fsh1655 to i1
  %sel1656 = select i1 %cond1654, i32 0, i32 %t1652
  %c1657 = zext i32 %sel1656 to i64
  %wp1658 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1657, ptr %wp1658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828f4 word 0x6b0d019f
  %r1659.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1659 = load i64, ptr %r1659.p, align 8, !alias.scope !3, !noalias !4
  %c1660 = trunc i64 %r1659 to i32
  %r1661.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1661 = load i64, ptr %r1661.p, align 8, !alias.scope !3, !noalias !4
  %c1662 = trunc i64 %r1661 to i32
  %t1663 = sub i32 %c1660, %c1662
  %fn1664 = icmp slt i32 %t1663, 0
  %fz1665 = icmp eq i32 %t1663, 0
  %fc1666 = icmp uge i32 %c1660, %c1662
  %fx11667 = xor i32 %c1660, %c1662
  %fx21668 = xor i32 %c1660, %t1663
  %fva1669 = and i32 %fx11667, %fx21668
  %fv1670 = icmp slt i32 %fva1669, 0
  %nz1671 = zext i1 %fn1664 to i64
  %zz1672 = zext i1 %fz1665 to i64
  %cz1673 = zext i1 %fc1666 to i64
  %vz1674 = zext i1 %fv1670 to i64
  %ns1675 = shl i64 %nz1671, 31
  %zs1676 = shl i64 %zz1672, 30
  %cs1677 = shl i64 %cz1673, 29
  %vs1678 = shl i64 %vz1674, 28
  %nzor1679 = or i64 %ns1675, %zs1676
  %cvor1680 = or i64 %cs1677, %vs1678
  %nzcv1681 = or i64 %nzor1679, %cvor1680
  %wp1682 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1681, ptr %wp1682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828f8 word 0x1a8f13ec
  %r1683.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1683 = load i64, ptr %r1683.p, align 8, !alias.scope !3, !noalias !4
  %c1684 = trunc i64 %r1683 to i32
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %fsh1687 = lshr i64 %r1685, 30
  %ftr1688 = trunc i64 %fsh1687 to i1
  %cond1686 = xor i1 %ftr1688, true
  %sel1689 = select i1 %cond1686, i32 0, i32 %c1684
  %c1690 = zext i32 %sel1689 to i64
  %wp1691 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1690, ptr %wp1691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828fc word 0x54000321
  %r1692.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1692 = load i64, ptr %r1692.p, align 8, !alias.scope !3, !noalias !4
  %fsh1694 = lshr i64 %r1692, 30
  %ftr1695 = trunc i64 %fsh1694 to i1
  %cond1693 = xor i1 %ftr1695, true
  br i1 %cond1693, label %L_800282960, label %L_800282900
L_800282900:
  ; @pc 0x800282900 word 0x340000ac
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %c1697 = trunc i64 %r1696 to i32
  %cmp1698 = icmp eq i32 %c1697, 0
  br i1 %cmp1698, label %L_800282914, label %L_800282904_ft
L_800282914:
  ; @pc 0x800282914 word 0x350004c8
  %r1727.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1727 = load i64, ptr %r1727.p, align 8, !alias.scope !3, !noalias !4
  %c1728 = trunc i64 %r1727 to i32
  %cmp1729 = icmp ne i32 %c1728, 0
  br i1 %cmp1729, label %L_8002829ac, label %L_800282918
L_800282918:
  ; @pc 0x800282918 word 0xb940035c
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %gmp1731 = inttoptr i64 %r1730 to ptr
  %gml1732 = load i32, ptr %gmp1731, align 1, !alias.scope !4, !noalias !3
  %c1733 = zext i32 %gml1732 to i64
  %wp1734 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1733, ptr %wp1734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028291c word 0x3500079c
  %r1735.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1735 = load i64, ptr %r1735.p, align 8, !alias.scope !3, !noalias !4
  %c1736 = trunc i64 %r1735 to i32
  %cmp1737 = icmp ne i32 %c1736, 0
  br i1 %cmp1737, label %L_800282a0c, label %L_800282920
L_800282920:
  ; @pc 0x800282920 word 0xb9400288
  %r1738.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1738 = load i64, ptr %r1738.p, align 8, !alias.scope !3, !noalias !4
  %gmp1739 = inttoptr i64 %r1738 to ptr
  %gml1740 = load i32, ptr %gmp1739, align 1, !alias.scope !4, !noalias !3
  %c1741 = zext i32 %gml1740 to i64
  %wp1742 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1741, ptr %wp1742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282924 word 0x93407eea
  %r1743.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1743 = load i64, ptr %r1743.p, align 8, !alias.scope !3, !noalias !4
  %t1744 = lshr i64 %r1743, 31
  %t1745 = and i64 %t1744, 1
  %t1746 = sub i64 0, %t1745
  %t1747 = and i64 %t1746, -4294967296
  %t1748 = and i64 %r1743, 4294967295
  %t1749 = or i64 %t1747, %t1748
  %wp1750 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1749, ptr %wp1750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282928 word 0x6b17011f
  %r1751.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1751 = load i64, ptr %r1751.p, align 8, !alias.scope !3, !noalias !4
  %c1752 = trunc i64 %r1751 to i32
  %r1753.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1753 = load i64, ptr %r1753.p, align 8, !alias.scope !3, !noalias !4
  %c1754 = trunc i64 %r1753 to i32
  %t1755 = sub i32 %c1752, %c1754
  %fn1756 = icmp slt i32 %t1755, 0
  %fz1757 = icmp eq i32 %t1755, 0
  %fc1758 = icmp uge i32 %c1752, %c1754
  %fx11759 = xor i32 %c1752, %c1754
  %fx21760 = xor i32 %c1752, %t1755
  %fva1761 = and i32 %fx11759, %fx21760
  %fv1762 = icmp slt i32 %fva1761, 0
  %nz1763 = zext i1 %fn1756 to i64
  %zz1764 = zext i1 %fz1757 to i64
  %cz1765 = zext i1 %fc1758 to i64
  %vz1766 = zext i1 %fv1762 to i64
  %ns1767 = shl i64 %nz1763, 31
  %zs1768 = shl i64 %zz1764, 30
  %cs1769 = shl i64 %cz1765, 29
  %vs1770 = shl i64 %vz1766, 28
  %nzor1771 = or i64 %ns1767, %zs1768
  %cvor1772 = or i64 %cs1769, %vs1770
  %nzcv1773 = or i64 %nzor1771, %cvor1772
  %wp1774 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1773, ptr %wp1774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028292c word 0xf9400689
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %t1776 = add i64 %r1775, 8
  %gmp1777 = inttoptr i64 %t1776 to ptr
  %gml1778 = load i64, ptr %gmp1777, align 1, !alias.scope !4, !noalias !3
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1778, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282930 word 0x9a9f8148
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %r1781.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1781 = load i64, ptr %r1781.p, align 8, !alias.scope !3, !noalias !4
  %fsh1783 = lshr i64 %r1781, 29
  %ftr1784 = trunc i64 %fsh1783 to i1
  %fsh1785 = lshr i64 %r1781, 30
  %ftr1786 = trunc i64 %fsh1785 to i1
  %fnz1787 = xor i1 %ftr1786, true
  %cond1782 = and i1 %ftr1784, %fnz1787
  %sel1788 = select i1 %cond1782, i64 %r1780, i64 0
  %wp1789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1788, ptr %wp1789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282934 word 0xf8687920
  %r1790.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1790 = load i64, ptr %r1790.p, align 8, !alias.scope !3, !noalias !4
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %t1792 = shl i64 %r1791, 3
  %t1793 = add i64 %r1790, %t1792
  %gmp1794 = inttoptr i64 %t1793 to ptr
  %gml1795 = load i64, ptr %gmp1794, align 1, !alias.scope !4, !noalias !3
  %wp1796 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1795, ptr %wp1796, align 8, !alias.scope !3, !noalias !4
  br label %L_800282938
L_800282938:
  ; @pc 0x800282938 word 0xa9474ff4
  %r1797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1797 = load i64, ptr %r1797.p, align 8, !alias.scope !3, !noalias !4
  %t1798 = add i64 %r1797, 112
  %t1799 = add i64 %t1798, 8
  %gmp1800 = inttoptr i64 %t1798 to ptr
  %gml1801 = load i64, ptr %gmp1800, align 1, !alias.scope !4, !noalias !3
  %gmp1802 = inttoptr i64 %t1799 to ptr
  %gml1803 = load i64, ptr %gmp1802, align 1, !alias.scope !4, !noalias !3
  %wp1804 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1801, ptr %wp1804, align 8, !alias.scope !3, !noalias !4
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1803, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028293c word 0xa94657f6
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = add i64 %r1806, 96
  %t1808 = add i64 %t1807, 8
  %gmp1809 = inttoptr i64 %t1807 to ptr
  %gml1810 = load i64, ptr %gmp1809, align 1, !alias.scope !4, !noalias !3
  %gmp1811 = inttoptr i64 %t1808 to ptr
  %gml1812 = load i64, ptr %gmp1811, align 1, !alias.scope !4, !noalias !3
  %wp1813 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1810, ptr %wp1813, align 8, !alias.scope !3, !noalias !4
  %wp1814 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1812, ptr %wp1814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282940 word 0xa9455ff8
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %t1816 = add i64 %r1815, 80
  %t1817 = add i64 %t1816, 8
  %gmp1818 = inttoptr i64 %t1816 to ptr
  %gml1819 = load i64, ptr %gmp1818, align 1, !alias.scope !4, !noalias !3
  %gmp1820 = inttoptr i64 %t1817 to ptr
  %gml1821 = load i64, ptr %gmp1820, align 1, !alias.scope !4, !noalias !3
  %wp1822 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1819, ptr %wp1822, align 8, !alias.scope !3, !noalias !4
  %wp1823 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1821, ptr %wp1823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282944 word 0xa94467fa
  %r1824.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1824 = load i64, ptr %r1824.p, align 8, !alias.scope !3, !noalias !4
  %t1825 = add i64 %r1824, 64
  %t1826 = add i64 %t1825, 8
  %gmp1827 = inttoptr i64 %t1825 to ptr
  %gml1828 = load i64, ptr %gmp1827, align 1, !alias.scope !4, !noalias !3
  %gmp1829 = inttoptr i64 %t1826 to ptr
  %gml1830 = load i64, ptr %gmp1829, align 1, !alias.scope !4, !noalias !3
  %wp1831 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1828, ptr %wp1831, align 8, !alias.scope !3, !noalias !4
  %wp1832 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1830, ptr %wp1832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282948 word 0xa9436ffc
  %r1833.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1833 = load i64, ptr %r1833.p, align 8, !alias.scope !3, !noalias !4
  %t1834 = add i64 %r1833, 48
  %t1835 = add i64 %t1834, 8
  %gmp1836 = inttoptr i64 %t1834 to ptr
  %gml1837 = load i64, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  %gmp1838 = inttoptr i64 %t1835 to ptr
  %gml1839 = load i64, ptr %gmp1838, align 1, !alias.scope !4, !noalias !3
  %wp1840 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1837, ptr %wp1840, align 8, !alias.scope !3, !noalias !4
  %wp1841 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1839, ptr %wp1841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028294c word 0xa9427bfd
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %t1843 = add i64 %r1842, 32
  %t1844 = add i64 %t1843, 8
  %gmp1845 = inttoptr i64 %t1843 to ptr
  %gml1846 = load i64, ptr %gmp1845, align 1, !alias.scope !4, !noalias !3
  %gmp1847 = inttoptr i64 %t1844 to ptr
  %gml1848 = load i64, ptr %gmp1847, align 1, !alias.scope !4, !noalias !3
  %wp1849 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1846, ptr %wp1849, align 8, !alias.scope !3, !noalias !4
  %wp1850 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1848, ptr %wp1850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282950 word 0x910203ff
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %t1852 = add i64 %r1851, 128
  %wp1853 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1852, ptr %wp1853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282954 word 0xd65f03c0
  ret void
L_800282958:
  ; @pc 0x800282958 word 0x2a0e03e8
  %r1854.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1854 = load i64, ptr %r1854.p, align 8, !alias.scope !3, !noalias !4
  %c1855 = trunc i64 %r1854 to i32
  %t1856 = or i32 0, %c1855
  %c1857 = zext i32 %t1856 to i64
  %wp1858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1857, ptr %wp1858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028295c word 0x17ffffda
  br label %L_8002828c4
L_800282960:
  ; @pc 0x800282960 word 0x2a0e03e8
  %r1859.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1859 = load i64, ptr %r1859.p, align 8, !alias.scope !3, !noalias !4
  %c1860 = trunc i64 %r1859 to i32
  %t1861 = or i32 0, %c1860
  %c1862 = zext i32 %t1861 to i64
  %wp1863 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1862, ptr %wp1863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282964 word 0x17ffffe7
  br label %L_800282900
L_800282968:
  ; @pc 0x800282968 word 0x2a1803ee
  %r1864.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1864 = load i64, ptr %r1864.p, align 8, !alias.scope !3, !noalias !4
  %c1865 = trunc i64 %r1864 to i32
  %t1866 = or i32 0, %c1865
  %c1867 = zext i32 %t1866 to i64
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1867, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028296c word 0x17ffffd1
  br label %L_8002828b0
L_800282970:
  ; @pc 0x800282970 word 0x2a1803ee
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %c1870 = trunc i64 %r1869 to i32
  %t1871 = or i32 0, %c1870
  %c1872 = zext i32 %t1871 to i64
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1872, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282974 word 0x17ffffde
  br label %L_8002828ec
L_800282978:
  ; @pc 0x800282978 word 0x51000508
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %c1875 = trunc i64 %r1874 to i32
  %t1876 = sub i32 %c1875, 1
  %c1877 = zext i32 %t1876 to i64
  %wp1878 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1877, ptr %wp1878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028297c word 0x7100191f
  %r1879.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1879 = load i64, ptr %r1879.p, align 8, !alias.scope !3, !noalias !4
  %c1880 = trunc i64 %r1879 to i32
  %t1881 = sub i32 %c1880, 6
  %fn1882 = icmp slt i32 %t1881, 0
  %fz1883 = icmp eq i32 %t1881, 0
  %fc1884 = icmp uge i32 %c1880, 6
  %fx11885 = xor i32 %c1880, 6
  %fx21886 = xor i32 %c1880, %t1881
  %fva1887 = and i32 %fx11885, %fx21886
  %fv1888 = icmp slt i32 %fva1887, 0
  %nz1889 = zext i1 %fn1882 to i64
  %zz1890 = zext i1 %fz1883 to i64
  %cz1891 = zext i1 %fc1884 to i64
  %vz1892 = zext i1 %fv1888 to i64
  %ns1893 = shl i64 %nz1889, 31
  %zs1894 = shl i64 %zz1890, 30
  %cs1895 = shl i64 %cz1891, 29
  %vs1896 = shl i64 %vz1892, 28
  %nzor1897 = or i64 %ns1893, %zs1894
  %cvor1898 = or i64 %cs1895, %vs1896
  %nzcv1899 = or i64 %nzor1897, %cvor1898
  %wp1900 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1899, ptr %wp1900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282980 word 0x54fffcc8
  %r1901.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1901 = load i64, ptr %r1901.p, align 8, !alias.scope !3, !noalias !4
  %fsh1903 = lshr i64 %r1901, 29
  %ftr1904 = trunc i64 %fsh1903 to i1
  %fsh1905 = lshr i64 %r1901, 30
  %ftr1906 = trunc i64 %fsh1905 to i1
  %fnz1907 = xor i1 %ftr1906, true
  %cond1902 = and i1 %ftr1904, %fnz1907
  br i1 %cond1902, label %L_800282918, label %L_800282984_ft
L_80028299c:
  ; @pc 0x80028299c word 0xb9401be8
  %r1926.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1926 = load i64, ptr %r1926.p, align 8, !alias.scope !3, !noalias !4
  %t1927 = add i64 %r1926, 24
  %gmp1928 = inttoptr i64 %t1927 to ptr
  %gml1929 = load i32, ptr %gmp1928, align 1, !alias.scope !4, !noalias !3
  %c1930 = zext i32 %gml1929 to i64
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1930, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829a0 word 0xb940da69
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %t1933 = add i64 %r1932, 216
  %gmp1934 = inttoptr i64 %t1933 to ptr
  %gml1935 = load i32, ptr %gmp1934, align 1, !alias.scope !4, !noalias !3
  %c1936 = zext i32 %gml1935 to i64
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1936, ptr %wp1937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829a4 word 0x6b09011f
  %r1938.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1938 = load i64, ptr %r1938.p, align 8, !alias.scope !3, !noalias !4
  %c1939 = trunc i64 %r1938 to i32
  %r1940.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1940 = load i64, ptr %r1940.p, align 8, !alias.scope !3, !noalias !4
  %c1941 = trunc i64 %r1940 to i32
  %t1942 = sub i32 %c1939, %c1941
  %fn1943 = icmp slt i32 %t1942, 0
  %fz1944 = icmp eq i32 %t1942, 0
  %fc1945 = icmp uge i32 %c1939, %c1941
  %fx11946 = xor i32 %c1939, %c1941
  %fx21947 = xor i32 %c1939, %t1942
  %fva1948 = and i32 %fx11946, %fx21947
  %fv1949 = icmp slt i32 %fva1948, 0
  %nz1950 = zext i1 %fn1943 to i64
  %zz1951 = zext i1 %fz1944 to i64
  %cz1952 = zext i1 %fc1945 to i64
  %vz1953 = zext i1 %fv1949 to i64
  %ns1954 = shl i64 %nz1950, 31
  %zs1955 = shl i64 %zz1951, 30
  %cs1956 = shl i64 %cz1952, 29
  %vs1957 = shl i64 %vz1953, 28
  %nzor1958 = or i64 %ns1954, %zs1955
  %cvor1959 = or i64 %cs1956, %vs1957
  %nzcv1960 = or i64 %nzor1958, %cvor1959
  %wp1961 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1960, ptr %wp1961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829a8 word 0x540009cd
  %r1962.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1962 = load i64, ptr %r1962.p, align 8, !alias.scope !3, !noalias !4
  %fsh1964 = lshr i64 %r1962, 30
  %ftr1965 = trunc i64 %fsh1964 to i1
  %fsh1966 = lshr i64 %r1962, 31
  %ftr1967 = trunc i64 %fsh1966 to i1
  %fsh1968 = lshr i64 %r1962, 28
  %ftr1969 = trunc i64 %fsh1968 to i1
  %fnz1970 = xor i1 %ftr1965, true
  %feq1971 = icmp eq i1 %ftr1967, %ftr1969
  %fgt1972 = and i1 %fnz1970, %feq1971
  %cond1963 = xor i1 %fgt1972, true
  br i1 %cond1963, label %L_800282ae0, label %L_8002829ac
L_8002829ac:
  ; @pc 0x8002829ac word 0xeb36c2ff
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %r1974.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1974 = load i64, ptr %r1974.p, align 8, !alias.scope !3, !noalias !4
  %c1975 = trunc i64 %r1974 to i32
  %c1976 = sext i32 %c1975 to i64
  %t1977 = sub i64 %r1973, %c1976
  %fn1978 = icmp slt i64 %t1977, 0
  %fz1979 = icmp eq i64 %t1977, 0
  %fc1980 = icmp uge i64 %r1973, %c1976
  %fx11981 = xor i64 %r1973, %c1976
  %fx21982 = xor i64 %r1973, %t1977
  %fva1983 = and i64 %fx11981, %fx21982
  %fv1984 = icmp slt i64 %fva1983, 0
  %nz1985 = zext i1 %fn1978 to i64
  %zz1986 = zext i1 %fz1979 to i64
  %cz1987 = zext i1 %fc1980 to i64
  %vz1988 = zext i1 %fv1984 to i64
  %ns1989 = shl i64 %nz1985, 31
  %zs1990 = shl i64 %zz1986, 30
  %cs1991 = shl i64 %cz1987, 29
  %vs1992 = shl i64 %vz1988, 28
  %nzor1993 = or i64 %ns1989, %zs1990
  %cvor1994 = or i64 %cs1991, %vs1992
  %nzcv1995 = or i64 %nzor1993, %cvor1994
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1995, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829b0 word 0x910006f7
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %t1998 = add i64 %r1997, 1
  %wp1999 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t1998, ptr %wp1999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829b4 word 0x54fff36a
  %r2000.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2000 = load i64, ptr %r2000.p, align 8, !alias.scope !3, !noalias !4
  %fsh2002 = lshr i64 %r2000, 31
  %ftr2003 = trunc i64 %fsh2002 to i1
  %fsh2004 = lshr i64 %r2000, 28
  %ftr2005 = trunc i64 %fsh2004 to i1
  %cond2001 = icmp eq i1 %ftr2003, %ftr2005
  br i1 %cond2001, label %L_800282820, label %L_8002829b8_ft
L_8002829bc:
  ; @pc 0x8002829bc word 0xb9401be8
  %r2006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2006 = load i64, ptr %r2006.p, align 8, !alias.scope !3, !noalias !4
  %t2007 = add i64 %r2006, 24
  %gmp2008 = inttoptr i64 %t2007 to ptr
  %gml2009 = load i32, ptr %gmp2008, align 1, !alias.scope !4, !noalias !3
  %c2010 = zext i32 %gml2009 to i64
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2010, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829c0 word 0xb940da69
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %t2013 = add i64 %r2012, 216
  %gmp2014 = inttoptr i64 %t2013 to ptr
  %gml2015 = load i32, ptr %gmp2014, align 1, !alias.scope !4, !noalias !3
  %c2016 = zext i32 %gml2015 to i64
  %wp2017 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2016, ptr %wp2017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829c4 word 0x6b09011f
  %r2018.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2018 = load i64, ptr %r2018.p, align 8, !alias.scope !3, !noalias !4
  %c2019 = trunc i64 %r2018 to i32
  %r2020.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2020 = load i64, ptr %r2020.p, align 8, !alias.scope !3, !noalias !4
  %c2021 = trunc i64 %r2020 to i32
  %t2022 = sub i32 %c2019, %c2021
  %fn2023 = icmp slt i32 %t2022, 0
  %fz2024 = icmp eq i32 %t2022, 0
  %fc2025 = icmp uge i32 %c2019, %c2021
  %fx12026 = xor i32 %c2019, %c2021
  %fx22027 = xor i32 %c2019, %t2022
  %fva2028 = and i32 %fx12026, %fx22027
  %fv2029 = icmp slt i32 %fva2028, 0
  %nz2030 = zext i1 %fn2023 to i64
  %zz2031 = zext i1 %fz2024 to i64
  %cz2032 = zext i1 %fc2025 to i64
  %vz2033 = zext i1 %fv2029 to i64
  %ns2034 = shl i64 %nz2030, 31
  %zs2035 = shl i64 %zz2031, 30
  %cs2036 = shl i64 %cz2032, 29
  %vs2037 = shl i64 %vz2033, 28
  %nzor2038 = or i64 %ns2034, %zs2035
  %cvor2039 = or i64 %cs2036, %vs2037
  %nzcv2040 = or i64 %nzor2038, %cvor2039
  %wp2041 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2040, ptr %wp2041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829c8 word 0x54ffff28
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %fsh2044 = lshr i64 %r2042, 29
  %ftr2045 = trunc i64 %fsh2044 to i1
  %fsh2046 = lshr i64 %r2042, 30
  %ftr2047 = trunc i64 %fsh2046 to i1
  %fnz2048 = xor i1 %ftr2047, true
  %cond2043 = and i1 %ftr2045, %fnz2048
  br i1 %cond2043, label %L_8002829ac, label %L_8002829cc
L_8002829cc:
  ; @pc 0x8002829cc word 0x5a9f23e8
  %t2049 = xor i32 0, -1
  %r2050.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2050 = load i64, ptr %r2050.p, align 8, !alias.scope !3, !noalias !4
  %fsh2052 = lshr i64 %r2050, 29
  %cond2051 = trunc i64 %fsh2052 to i1
  %sel2053 = select i1 %cond2051, i32 0, i32 %t2049
  %c2054 = zext i32 %sel2053 to i64
  %wp2055 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2054, ptr %wp2055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829d0 word 0x17ffffd1
  br label %L_800282914
L_8002829d4:
  ; @pc 0x8002829d4 word 0x51000508
  %r2056.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2056 = load i64, ptr %r2056.p, align 8, !alias.scope !3, !noalias !4
  %c2057 = trunc i64 %r2056 to i32
  %t2058 = sub i32 %c2057, 1
  %c2059 = zext i32 %t2058 to i64
  %wp2060 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2059, ptr %wp2060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829d8 word 0x7100111f
  %r2061.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2061 = load i64, ptr %r2061.p, align 8, !alias.scope !3, !noalias !4
  %c2062 = trunc i64 %r2061 to i32
  %t2063 = sub i32 %c2062, 4
  %fn2064 = icmp slt i32 %t2063, 0
  %fz2065 = icmp eq i32 %t2063, 0
  %fc2066 = icmp uge i32 %c2062, 4
  %fx12067 = xor i32 %c2062, 4
  %fx22068 = xor i32 %c2062, %t2063
  %fva2069 = and i32 %fx12067, %fx22068
  %fv2070 = icmp slt i32 %fva2069, 0
  %nz2071 = zext i1 %fn2064 to i64
  %zz2072 = zext i1 %fz2065 to i64
  %cz2073 = zext i1 %fc2066 to i64
  %vz2074 = zext i1 %fv2070 to i64
  %ns2075 = shl i64 %nz2071, 31
  %zs2076 = shl i64 %zz2072, 30
  %cs2077 = shl i64 %cz2073, 29
  %vs2078 = shl i64 %vz2074, 28
  %nzor2079 = or i64 %ns2075, %zs2076
  %cvor2080 = or i64 %cs2077, %vs2078
  %nzcv2081 = or i64 %nzor2079, %cvor2080
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2081, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829dc word 0x54fffe88
  %r2083.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2083 = load i64, ptr %r2083.p, align 8, !alias.scope !3, !noalias !4
  %fsh2085 = lshr i64 %r2083, 29
  %ftr2086 = trunc i64 %fsh2085 to i1
  %fsh2087 = lshr i64 %r2083, 30
  %ftr2088 = trunc i64 %fsh2087 to i1
  %fnz2089 = xor i1 %ftr2088, true
  %cond2084 = and i1 %ftr2086, %fnz2089
  br i1 %cond2084, label %L_8002829ac, label %L_8002829e0_ft
L_8002829f8:
  ; @pc 0x8002829f8 word 0x910043e0
  %r2108.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2108 = load i64, ptr %r2108.p, align 8, !alias.scope !3, !noalias !4
  %t2109 = add i64 %r2108, 16
  %wp2110 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2109, ptr %wp2110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829fc word 0xaa1503e1
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %t2112 = or i64 0, %r2111
  %wp2113 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2112, ptr %wp2113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a00 word 0x94998d1b
  %wp2114 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370564, ptr %wp2114, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5e6c(ptr %c)
  ; @pc 0x800282a04 word 0x35fff8a0
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %c2116 = trunc i64 %r2115 to i32
  %cmp2117 = icmp ne i32 %c2116, 0
  br i1 %cmp2117, label %L_800282918, label %L_800282a08_ft
L_800282a0c:
  ; @pc 0x800282a0c word 0xf9400369
  %r2118.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2118 = load i64, ptr %r2118.p, align 8, !alias.scope !3, !noalias !4
  %gmp2119 = inttoptr i64 %r2118 to ptr
  %gml2120 = load i64, ptr %gmp2119, align 1, !alias.scope !4, !noalias !3
  %wp2121 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2120, ptr %wp2121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a10 word 0xf90007e9
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %t2123 = add i64 %r2122, 8
  %r2124.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2124 = load i64, ptr %r2124.p, align 8, !alias.scope !3, !noalias !4
  %gmp2125 = inttoptr i64 %t2123 to ptr
  store i64 %r2124, ptr %gmp2125, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800282a14 word 0xf9400328
  %r2126.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2126 = load i64, ptr %r2126.p, align 8, !alias.scope !3, !noalias !4
  %gmp2127 = inttoptr i64 %r2126 to ptr
  %gml2128 = load i64, ptr %gmp2127, align 1, !alias.scope !4, !noalias !3
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a18 word 0xf9400120
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %gmp2131 = inttoptr i64 %r2130 to ptr
  %gml2132 = load i64, ptr %gmp2131, align 1, !alias.scope !4, !noalias !3
  %wp2133 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2132, ptr %wp2133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a1c word 0xf8777901
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %r2135.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2135 = load i64, ptr %r2135.p, align 8, !alias.scope !3, !noalias !4
  %t2136 = shl i64 %r2135, 3
  %t2137 = add i64 %r2134, %t2136
  %gmp2138 = inttoptr i64 %t2137 to ptr
  %gml2139 = load i64, ptr %gmp2138, align 1, !alias.scope !4, !noalias !3
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2139, ptr %wp2140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a20 word 0xf9400008
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %gmp2142 = inttoptr i64 %r2141 to ptr
  %gml2143 = load i64, ptr %gmp2142, align 1, !alias.scope !4, !noalias !3
  %wp2144 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2143, ptr %wp2144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a24 word 0xf9400108
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %gmp2146 = inttoptr i64 %r2145 to ptr
  %gml2147 = load i64, ptr %gmp2146, align 1, !alias.scope !4, !noalias !3
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a28 word 0xd63f0100
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %fp2150 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2149, ptr %fp2150, align 8, !alias.scope !3, !noalias !4
  %wp2151 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370604, ptr %wp2151, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282a2c word 0x3607fc00
  %r2152.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2152 = load i64, ptr %r2152.p, align 8, !alias.scope !3, !noalias !4
  %t2153 = and i64 %r2152, 1
  %cmp2154 = icmp eq i64 %t2153, 0
  br i1 %cmp2154, label %L_8002829ac, label %L_800282a30_ft
L_800282a48:
  ; @pc 0x800282a48 word 0xb4fff6dc
  %r2182.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2182 = load i64, ptr %r2182.p, align 8, !alias.scope !3, !noalias !4
  %cmp2183 = icmp eq i64 %r2182, 0
  br i1 %cmp2183, label %L_800282920, label %L_800282a4c_ft
L_800282a78:
  ; @pc 0x800282a78 word 0x910043e0
  %r2227.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2227 = load i64, ptr %r2227.p, align 8, !alias.scope !3, !noalias !4
  %t2228 = add i64 %r2227, 16
  %wp2229 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2228, ptr %wp2229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a7c word 0xaa1503e1
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %t2231 = or i64 0, %r2230
  %wp2232 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2231, ptr %wp2232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a80 word 0x94998cfb
  %wp2233 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370692, ptr %wp2233, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5e6c(ptr %c)
  ; @pc 0x800282a84 word 0x37fff4a0
  %r2234.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2234 = load i64, ptr %r2234.p, align 8, !alias.scope !3, !noalias !4
  %t2235 = and i64 %r2234, 2147483648
  %cmp2236 = icmp ne i64 %t2235, 0
  br i1 %cmp2236, label %L_800282918, label %L_800282a88_ft
L_800282a8c:
  ; @pc 0x800282a8c word 0x910043e0
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %t2238 = add i64 %r2237, 16
  %wp2239 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2238, ptr %wp2239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a90 word 0xaa1503e1
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = or i64 0, %r2240
  %wp2242 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2241, ptr %wp2242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a94 word 0x94998cf6
  %wp2243 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370712, ptr %wp2243, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5e6c(ptr %c)
  ; @pc 0x800282a98 word 0x7100041f
  %r2244.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2244 = load i64, ptr %r2244.p, align 8, !alias.scope !3, !noalias !4
  %c2245 = trunc i64 %r2244 to i32
  %t2246 = sub i32 %c2245, 1
  %fn2247 = icmp slt i32 %t2246, 0
  %fz2248 = icmp eq i32 %t2246, 0
  %fc2249 = icmp uge i32 %c2245, 1
  %fx12250 = xor i32 %c2245, 1
  %fx22251 = xor i32 %c2245, %t2246
  %fva2252 = and i32 %fx12250, %fx22251
  %fv2253 = icmp slt i32 %fva2252, 0
  %nz2254 = zext i1 %fn2247 to i64
  %zz2255 = zext i1 %fz2248 to i64
  %cz2256 = zext i1 %fc2249 to i64
  %vz2257 = zext i1 %fv2253 to i64
  %ns2258 = shl i64 %nz2254, 31
  %zs2259 = shl i64 %zz2255, 30
  %cs2260 = shl i64 %cz2256, 29
  %vs2261 = shl i64 %vz2257, 28
  %nzor2262 = or i64 %ns2258, %zs2259
  %cvor2263 = or i64 %cs2260, %vs2261
  %nzcv2264 = or i64 %nzor2262, %cvor2263
  %wp2265 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2264, ptr %wp2265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a9c word 0x54fff3eb
  %r2266.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2266 = load i64, ptr %r2266.p, align 8, !alias.scope !3, !noalias !4
  %fsh2268 = lshr i64 %r2266, 31
  %ftr2269 = trunc i64 %fsh2268 to i1
  %fsh2270 = lshr i64 %r2266, 28
  %ftr2271 = trunc i64 %fsh2270 to i1
  %cond2267 = icmp ne i1 %ftr2269, %ftr2271
  br i1 %cond2267, label %L_800282918, label %L_800282aa0_ft
L_800282aa4:
  ; @pc 0x800282aa4 word 0x910043e0
  %r2272.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2272 = load i64, ptr %r2272.p, align 8, !alias.scope !3, !noalias !4
  %t2273 = add i64 %r2272, 16
  %wp2274 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2273, ptr %wp2274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282aa8 word 0xaa1503e1
  %r2275.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2275 = load i64, ptr %r2275.p, align 8, !alias.scope !3, !noalias !4
  %t2276 = or i64 0, %r2275
  %wp2277 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2276, ptr %wp2277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282aac word 0x94998cf0
  %wp2278 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370736, ptr %wp2278, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5e6c(ptr %c)
  ; @pc 0x800282ab0 word 0x7100001f
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %c2280 = trunc i64 %r2279 to i32
  %t2281 = sub i32 %c2280, 0
  %fn2282 = icmp slt i32 %t2281, 0
  %fz2283 = icmp eq i32 %t2281, 0
  %fc2284 = icmp uge i32 %c2280, 0
  %fx12285 = xor i32 %c2280, 0
  %fx22286 = xor i32 %c2280, %t2281
  %fva2287 = and i32 %fx12285, %fx22286
  %fv2288 = icmp slt i32 %fva2287, 0
  %nz2289 = zext i1 %fn2282 to i64
  %zz2290 = zext i1 %fz2283 to i64
  %cz2291 = zext i1 %fc2284 to i64
  %vz2292 = zext i1 %fv2288 to i64
  %ns2293 = shl i64 %nz2289, 31
  %zs2294 = shl i64 %zz2290, 30
  %cs2295 = shl i64 %cz2291, 29
  %vs2296 = shl i64 %vz2292, 28
  %nzor2297 = or i64 %ns2293, %zs2294
  %cvor2298 = or i64 %cs2295, %vs2296
  %nzcv2299 = or i64 %nzor2297, %cvor2298
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2299, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ab4 word 0x54fff32c
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %fsh2303 = lshr i64 %r2301, 30
  %ftr2304 = trunc i64 %fsh2303 to i1
  %fsh2305 = lshr i64 %r2301, 31
  %ftr2306 = trunc i64 %fsh2305 to i1
  %fsh2307 = lshr i64 %r2301, 28
  %ftr2308 = trunc i64 %fsh2307 to i1
  %fnz2309 = xor i1 %ftr2304, true
  %feq2310 = icmp eq i1 %ftr2306, %ftr2308
  %cond2302 = and i1 %fnz2309, %feq2310
  br i1 %cond2302, label %L_800282918, label %L_800282ab8_ft
L_800282abc:
  ; @pc 0x800282abc word 0x910043e0
  %r2311.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2311 = load i64, ptr %r2311.p, align 8, !alias.scope !3, !noalias !4
  %t2312 = add i64 %r2311, 16
  %wp2313 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2312, ptr %wp2313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ac0 word 0xaa1503e1
  %r2314.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2314 = load i64, ptr %r2314.p, align 8, !alias.scope !3, !noalias !4
  %t2315 = or i64 0, %r2314
  %wp2316 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2315, ptr %wp2316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ac4 word 0x94998cea
  %wp2317 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370760, ptr %wp2317, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5e6c(ptr %c)
  ; @pc 0x800282ac8 word 0x36fff280
  %r2318.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2318 = load i64, ptr %r2318.p, align 8, !alias.scope !3, !noalias !4
  %t2319 = and i64 %r2318, 2147483648
  %cmp2320 = icmp eq i64 %t2319, 0
  br i1 %cmp2320, label %L_800282918, label %L_800282acc_ft
L_800282ad0:
  ; @pc 0x800282ad0 word 0xf9400fe8
  %r2321.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2321 = load i64, ptr %r2321.p, align 8, !alias.scope !3, !noalias !4
  %t2322 = add i64 %r2321, 24
  %gmp2323 = inttoptr i64 %t2322 to ptr
  %gml2324 = load i64, ptr %gmp2323, align 1, !alias.scope !4, !noalias !3
  %wp2325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2324, ptr %wp2325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ad4 word 0xf9406e69
  %r2326.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2326 = load i64, ptr %r2326.p, align 8, !alias.scope !3, !noalias !4
  %t2327 = add i64 %r2326, 216
  %gmp2328 = inttoptr i64 %t2327 to ptr
  %gml2329 = load i64, ptr %gmp2328, align 1, !alias.scope !4, !noalias !3
  %wp2330 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2329, ptr %wp2330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ad8 word 0xeb09011f
  %r2331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2331 = load i64, ptr %r2331.p, align 8, !alias.scope !3, !noalias !4
  %r2332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2332 = load i64, ptr %r2332.p, align 8, !alias.scope !3, !noalias !4
  %t2333 = sub i64 %r2331, %r2332
  %fn2334 = icmp slt i64 %t2333, 0
  %fz2335 = icmp eq i64 %t2333, 0
  %fc2336 = icmp uge i64 %r2331, %r2332
  %fx12337 = xor i64 %r2331, %r2332
  %fx22338 = xor i64 %r2331, %t2333
  %fva2339 = and i64 %fx12337, %fx22338
  %fv2340 = icmp slt i64 %fva2339, 0
  %nz2341 = zext i1 %fn2334 to i64
  %zz2342 = zext i1 %fz2335 to i64
  %cz2343 = zext i1 %fc2336 to i64
  %vz2344 = zext i1 %fv2340 to i64
  %ns2345 = shl i64 %nz2341, 31
  %zs2346 = shl i64 %zz2342, 30
  %cs2347 = shl i64 %cz2343, 29
  %vs2348 = shl i64 %vz2344, 28
  %nzor2349 = or i64 %ns2345, %zs2346
  %cvor2350 = or i64 %cs2347, %vs2348
  %nzcv2351 = or i64 %nzor2349, %cvor2350
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2351, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282adc word 0x54fff68c
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %fsh2355 = lshr i64 %r2353, 30
  %ftr2356 = trunc i64 %fsh2355 to i1
  %fsh2357 = lshr i64 %r2353, 31
  %ftr2358 = trunc i64 %fsh2357 to i1
  %fsh2359 = lshr i64 %r2353, 28
  %ftr2360 = trunc i64 %fsh2359 to i1
  %fnz2361 = xor i1 %ftr2356, true
  %feq2362 = icmp eq i1 %ftr2358, %ftr2360
  %cond2354 = and i1 %fnz2361, %feq2362
  br i1 %cond2354, label %L_8002829ac, label %L_800282ae0
L_800282ae0:
  ; @pc 0x800282ae0 word 0x5a9fa3e8
  %t2363 = xor i32 0, -1
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %fsh2366 = lshr i64 %r2364, 31
  %ftr2367 = trunc i64 %fsh2366 to i1
  %fsh2368 = lshr i64 %r2364, 28
  %ftr2369 = trunc i64 %fsh2368 to i1
  %cond2365 = icmp eq i1 %ftr2367, %ftr2369
  %sel2370 = select i1 %cond2365, i32 0, i32 %t2363
  %c2371 = zext i32 %sel2370 to i64
  %wp2372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2371, ptr %wp2372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ae4 word 0x17ffff8c
  br label %L_800282914
L_800282ae8:
  ; @pc 0x800282ae8 word 0xf9400fe8
  %r2373.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2373 = load i64, ptr %r2373.p, align 8, !alias.scope !3, !noalias !4
  %t2374 = add i64 %r2373, 24
  %gmp2375 = inttoptr i64 %t2374 to ptr
  %gml2376 = load i64, ptr %gmp2375, align 1, !alias.scope !4, !noalias !3
  %wp2377 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2376, ptr %wp2377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282aec word 0xf9406e69
  %r2378.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2378 = load i64, ptr %r2378.p, align 8, !alias.scope !3, !noalias !4
  %t2379 = add i64 %r2378, 216
  %gmp2380 = inttoptr i64 %t2379 to ptr
  %gml2381 = load i64, ptr %gmp2380, align 1, !alias.scope !4, !noalias !3
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2381, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282af0 word 0xeb09011f
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %t2385 = sub i64 %r2383, %r2384
  %fn2386 = icmp slt i64 %t2385, 0
  %fz2387 = icmp eq i64 %t2385, 0
  %fc2388 = icmp uge i64 %r2383, %r2384
  %fx12389 = xor i64 %r2383, %r2384
  %fx22390 = xor i64 %r2383, %t2385
  %fva2391 = and i64 %fx12389, %fx22390
  %fv2392 = icmp slt i64 %fva2391, 0
  %nz2393 = zext i1 %fn2386 to i64
  %zz2394 = zext i1 %fz2387 to i64
  %cz2395 = zext i1 %fc2388 to i64
  %vz2396 = zext i1 %fv2392 to i64
  %ns2397 = shl i64 %nz2393, 31
  %zs2398 = shl i64 %zz2394, 30
  %cs2399 = shl i64 %cz2395, 29
  %vs2400 = shl i64 %vz2396, 28
  %nzor2401 = or i64 %ns2397, %zs2398
  %cvor2402 = or i64 %cs2399, %vs2400
  %nzcv2403 = or i64 %nzor2401, %cvor2402
  %wp2404 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2403, ptr %wp2404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282af4 word 0x54fff5c8
  %r2405.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2405 = load i64, ptr %r2405.p, align 8, !alias.scope !3, !noalias !4
  %fsh2407 = lshr i64 %r2405, 29
  %ftr2408 = trunc i64 %fsh2407 to i1
  %fsh2409 = lshr i64 %r2405, 30
  %ftr2410 = trunc i64 %fsh2409 to i1
  %fnz2411 = xor i1 %ftr2410, true
  %cond2406 = and i1 %ftr2408, %fnz2411
  br i1 %cond2406, label %L_8002829ac, label %L_800282af8_ft
L_800282afc:
  ; @pc 0x800282afc word 0xbd401be0
  %r2412.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2412 = load i64, ptr %r2412.p, align 8, !alias.scope !3, !noalias !4
  %t2413 = add i64 %r2412, 24
  %gmp2414 = inttoptr i64 %t2413 to ptr
  %gml2415 = load i32, ptr %gmp2414, align 1, !alias.scope !4, !noalias !3
  %c2416 = zext i32 %gml2415 to i128
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2416, ptr %wp2417, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800282b00 word 0xbd40da61
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %t2419 = add i64 %r2418, 216
  %gmp2420 = inttoptr i64 %t2419 to ptr
  %gml2421 = load i32, ptr %gmp2420, align 1, !alias.scope !4, !noalias !3
  %c2422 = zext i32 %gml2421 to i128
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2422, ptr %wp2423, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800282b04 word 0x1e212000
  %fcmp2424 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp2425 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2424, ptr %wp2425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b08 word 0x54fff52c
  %r2426.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2426 = load i64, ptr %r2426.p, align 8, !alias.scope !3, !noalias !4
  %fsh2428 = lshr i64 %r2426, 30
  %ftr2429 = trunc i64 %fsh2428 to i1
  %fsh2430 = lshr i64 %r2426, 31
  %ftr2431 = trunc i64 %fsh2430 to i1
  %fsh2432 = lshr i64 %r2426, 28
  %ftr2433 = trunc i64 %fsh2432 to i1
  %fnz2434 = xor i1 %ftr2429, true
  %feq2435 = icmp eq i1 %ftr2431, %ftr2433
  %cond2427 = and i1 %fnz2434, %feq2435
  br i1 %cond2427, label %L_8002829ac, label %L_800282b0c_ft
L_800282b10:
  ; @pc 0x800282b10 word 0xfd400fe0
  %r2436.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2436 = load i64, ptr %r2436.p, align 8, !alias.scope !3, !noalias !4
  %t2437 = add i64 %r2436, 24
  %gmp2438 = inttoptr i64 %t2437 to ptr
  %gml2439 = load i64, ptr %gmp2438, align 1, !alias.scope !4, !noalias !3
  %c2440 = zext i64 %gml2439 to i128
  %wp2441 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2440, ptr %wp2441, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800282b14 word 0xfd406e61
  %r2442.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2442 = load i64, ptr %r2442.p, align 8, !alias.scope !3, !noalias !4
  %t2443 = add i64 %r2442, 216
  %gmp2444 = inttoptr i64 %t2443 to ptr
  %gml2445 = load i64, ptr %gmp2444, align 1, !alias.scope !4, !noalias !3
  %c2446 = zext i64 %gml2445 to i128
  %wp2447 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2446, ptr %wp2447, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800282b18 word 0x1e612000
  %fcmp2448 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp2449 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2448, ptr %wp2449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b1c word 0x54fff48c
  %r2450.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2450 = load i64, ptr %r2450.p, align 8, !alias.scope !3, !noalias !4
  %fsh2452 = lshr i64 %r2450, 30
  %ftr2453 = trunc i64 %fsh2452 to i1
  %fsh2454 = lshr i64 %r2450, 31
  %ftr2455 = trunc i64 %fsh2454 to i1
  %fsh2456 = lshr i64 %r2450, 28
  %ftr2457 = trunc i64 %fsh2456 to i1
  %fnz2458 = xor i1 %ftr2453, true
  %feq2459 = icmp eq i1 %ftr2455, %ftr2457
  %cond2451 = and i1 %fnz2458, %feq2459
  br i1 %cond2451, label %L_8002829ac, label %L_800282b20
L_800282b20:
  ; @pc 0x800282b20 word 0x5a9f53e8
  %t2460 = xor i32 0, -1
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %fsh2463 = lshr i64 %r2461, 31
  %ftr2464 = trunc i64 %fsh2463 to i1
  %cond2462 = xor i1 %ftr2464, true
  %sel2465 = select i1 %cond2462, i32 0, i32 %t2460
  %c2466 = zext i32 %sel2465 to i64
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b24 word 0x17ffff7c
  br label %L_800282914
L_800282b28:
  ; @pc 0x800282b28 word 0x394063e8
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %t2469 = add i64 %r2468, 24
  %gmp2470 = inttoptr i64 %t2469 to ptr
  %gml2471 = load i8, ptr %gmp2470, align 1, !alias.scope !4, !noalias !3
  %c2472 = zext i8 %gml2471 to i64
  %wp2473 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2472, ptr %wp2473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b2c word 0x39436269
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %t2475 = add i64 %r2474, 216
  %gmp2476 = inttoptr i64 %t2475 to ptr
  %gml2477 = load i8, ptr %gmp2476, align 1, !alias.scope !4, !noalias !3
  %c2478 = zext i8 %gml2477 to i64
  %wp2479 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2478, ptr %wp2479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b30 word 0x4b090108
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %c2481 = trunc i64 %r2480 to i32
  %r2482.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2482 = load i64, ptr %r2482.p, align 8, !alias.scope !3, !noalias !4
  %c2483 = trunc i64 %r2482 to i32
  %t2484 = sub i32 %c2481, %c2483
  %c2485 = zext i32 %t2484 to i64
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b34 word 0x17ffff78
  br label %L_800282914
L_800282b38:
  ; @pc 0x800282b38 word 0x394063e8
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %t2488 = add i64 %r2487, 24
  %gmp2489 = inttoptr i64 %t2488 to ptr
  %gml2490 = load i8, ptr %gmp2489, align 1, !alias.scope !4, !noalias !3
  %c2491 = zext i8 %gml2490 to i64
  %wp2492 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2491, ptr %wp2492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b3c word 0x39436269
  %r2493.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2493 = load i64, ptr %r2493.p, align 8, !alias.scope !3, !noalias !4
  %t2494 = add i64 %r2493, 216
  %gmp2495 = inttoptr i64 %t2494 to ptr
  %gml2496 = load i8, ptr %gmp2495, align 1, !alias.scope !4, !noalias !3
  %c2497 = zext i8 %gml2496 to i64
  %wp2498 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2497, ptr %wp2498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b40 word 0x4b090108
  %r2499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2499 = load i64, ptr %r2499.p, align 8, !alias.scope !3, !noalias !4
  %c2500 = trunc i64 %r2499 to i32
  %r2501.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2501 = load i64, ptr %r2501.p, align 8, !alias.scope !3, !noalias !4
  %c2502 = trunc i64 %r2501 to i32
  %t2503 = sub i32 %c2500, %c2502
  %c2504 = zext i32 %t2503 to i64
  %wp2505 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2504, ptr %wp2505, align 8, !alias.scope !3, !noalias !4
  br label %L_800282b44
L_800282b44:
  ; @pc 0x800282b44 word 0x7100011f
  %r2506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2506 = load i64, ptr %r2506.p, align 8, !alias.scope !3, !noalias !4
  %c2507 = trunc i64 %r2506 to i32
  %t2508 = sub i32 %c2507, 0
  %fn2509 = icmp slt i32 %t2508, 0
  %fz2510 = icmp eq i32 %t2508, 0
  %fc2511 = icmp uge i32 %c2507, 0
  %fx12512 = xor i32 %c2507, 0
  %fx22513 = xor i32 %c2507, %t2508
  %fva2514 = and i32 %fx12512, %fx22513
  %fv2515 = icmp slt i32 %fva2514, 0
  %nz2516 = zext i1 %fn2509 to i64
  %zz2517 = zext i1 %fz2510 to i64
  %cz2518 = zext i1 %fc2511 to i64
  %vz2519 = zext i1 %fv2515 to i64
  %ns2520 = shl i64 %nz2516, 31
  %zs2521 = shl i64 %zz2517, 30
  %cs2522 = shl i64 %cz2518, 29
  %vs2523 = shl i64 %vz2519, 28
  %nzor2524 = or i64 %ns2520, %zs2521
  %cvor2525 = or i64 %cs2522, %vs2523
  %nzcv2526 = or i64 %nzor2524, %cvor2525
  %wp2527 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2526, ptr %wp2527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b48 word 0x1a9ba718
  %r2528.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2528 = load i64, ptr %r2528.p, align 8, !alias.scope !3, !noalias !4
  %c2529 = trunc i64 %r2528 to i32
  %r2530.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2530 = load i64, ptr %r2530.p, align 8, !alias.scope !3, !noalias !4
  %c2531 = trunc i64 %r2530 to i32
  %t2532 = add i32 %c2531, 1
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %fsh2535 = lshr i64 %r2533, 31
  %ftr2536 = trunc i64 %fsh2535 to i1
  %fsh2537 = lshr i64 %r2533, 28
  %ftr2538 = trunc i64 %fsh2537 to i1
  %cond2534 = icmp eq i1 %ftr2536, %ftr2538
  %sel2539 = select i1 %cond2534, i32 %c2529, i32 %t2532
  %c2540 = zext i32 %sel2539 to i64
  %wp2541 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2540, ptr %wp2541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b4c word 0x1a9bb2f7
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %c2543 = trunc i64 %r2542 to i32
  %r2544.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2544 = load i64, ptr %r2544.p, align 8, !alias.scope !3, !noalias !4
  %c2545 = trunc i64 %r2544 to i32
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %fsh2548 = lshr i64 %r2546, 31
  %ftr2549 = trunc i64 %fsh2548 to i1
  %fsh2550 = lshr i64 %r2546, 28
  %ftr2551 = trunc i64 %fsh2550 to i1
  %cond2547 = icmp ne i1 %ftr2549, %ftr2551
  %sel2552 = select i1 %cond2547, i32 %c2543, i32 %c2545
  %c2553 = zext i32 %sel2552 to i64
  %wp2554 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2553, ptr %wp2554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b50 word 0x6b17031f
  %r2555.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2555 = load i64, ptr %r2555.p, align 8, !alias.scope !3, !noalias !4
  %c2556 = trunc i64 %r2555 to i32
  %r2557.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2557 = load i64, ptr %r2557.p, align 8, !alias.scope !3, !noalias !4
  %c2558 = trunc i64 %r2557 to i32
  %t2559 = sub i32 %c2556, %c2558
  %fn2560 = icmp slt i32 %t2559, 0
  %fz2561 = icmp eq i32 %t2559, 0
  %fc2562 = icmp uge i32 %c2556, %c2558
  %fx12563 = xor i32 %c2556, %c2558
  %fx22564 = xor i32 %c2556, %t2559
  %fva2565 = and i32 %fx12563, %fx22564
  %fv2566 = icmp slt i32 %fva2565, 0
  %nz2567 = zext i1 %fn2560 to i64
  %zz2568 = zext i1 %fz2561 to i64
  %cz2569 = zext i1 %fc2562 to i64
  %vz2570 = zext i1 %fv2566 to i64
  %ns2571 = shl i64 %nz2567, 31
  %zs2572 = shl i64 %zz2568, 30
  %cs2573 = shl i64 %cz2569, 29
  %vs2574 = shl i64 %vz2570, 28
  %nzor2575 = or i64 %ns2571, %zs2572
  %cvor2576 = or i64 %cs2573, %vs2574
  %nzcv2577 = or i64 %nzor2575, %cvor2576
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b54 word 0x5400066a
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %fsh2581 = lshr i64 %r2579, 31
  %ftr2582 = trunc i64 %fsh2581 to i1
  %fsh2583 = lshr i64 %r2579, 28
  %ftr2584 = trunc i64 %fsh2583 to i1
  %cond2580 = icmp eq i1 %ftr2582, %ftr2584
  br i1 %cond2580, label %L_800282c20, label %L_800282b58
L_800282b58:
  ; @pc 0x800282b58 word 0x2b170308
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2585 = load i64, ptr %r2585.p, align 8, !alias.scope !3, !noalias !4
  %c2586 = trunc i64 %r2585 to i32
  %r2587.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2587 = load i64, ptr %r2587.p, align 8, !alias.scope !3, !noalias !4
  %c2588 = trunc i64 %r2587 to i32
  %t2589 = add i32 %c2586, %c2588
  %fn2590 = icmp slt i32 %t2589, 0
  %fz2591 = icmp eq i32 %t2589, 0
  %fc2592 = icmp ult i32 %t2589, %c2586
  %fx12593 = xor i32 %c2586, %t2589
  %fx22594 = xor i32 %c2588, %t2589
  %fva2595 = and i32 %fx12593, %fx22594
  %fv2596 = icmp slt i32 %fva2595, 0
  %nz2597 = zext i1 %fn2590 to i64
  %zz2598 = zext i1 %fz2591 to i64
  %cz2599 = zext i1 %fc2592 to i64
  %vz2600 = zext i1 %fv2596 to i64
  %ns2601 = shl i64 %nz2597, 31
  %zs2602 = shl i64 %zz2598, 30
  %cs2603 = shl i64 %cz2599, 29
  %vs2604 = shl i64 %vz2600, 28
  %nzor2605 = or i64 %ns2601, %zs2602
  %cvor2606 = or i64 %cs2603, %vs2604
  %nzcv2607 = or i64 %nzor2605, %cvor2606
  %wp2608 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2607, ptr %wp2608, align 8, !alias.scope !3, !noalias !4
  %c2609 = zext i32 %t2589 to i64
  %wp2610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2609, ptr %wp2610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b5c word 0xa9408289
  %r2611.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2611 = load i64, ptr %r2611.p, align 8, !alias.scope !3, !noalias !4
  %t2612 = add i64 %r2611, 8
  %t2613 = add i64 %t2612, 8
  %gmp2614 = inttoptr i64 %t2612 to ptr
  %gml2615 = load i64, ptr %gmp2614, align 1, !alias.scope !4, !noalias !3
  %gmp2616 = inttoptr i64 %t2613 to ptr
  %gml2617 = load i64, ptr %gmp2616, align 1, !alias.scope !4, !noalias !3
  %wp2618 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2615, ptr %wp2618, align 8, !alias.scope !3, !noalias !4
  %wp2619 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2617, ptr %wp2619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b60 word 0x1a88a508
  %r2620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2620 = load i64, ptr %r2620.p, align 8, !alias.scope !3, !noalias !4
  %c2621 = trunc i64 %r2620 to i32
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %c2623 = trunc i64 %r2622 to i32
  %t2624 = add i32 %c2623, 1
  %r2625.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2625 = load i64, ptr %r2625.p, align 8, !alias.scope !3, !noalias !4
  %fsh2627 = lshr i64 %r2625, 31
  %ftr2628 = trunc i64 %fsh2627 to i1
  %fsh2629 = lshr i64 %r2625, 28
  %ftr2630 = trunc i64 %fsh2629 to i1
  %cond2626 = icmp eq i1 %ftr2628, %ftr2630
  %sel2631 = select i1 %cond2626, i32 %c2621, i32 %t2624
  %c2632 = zext i32 %sel2631 to i64
  %wp2633 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2632, ptr %wp2633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b64 word 0xb9401a82
  %r2634.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2634 = load i64, ptr %r2634.p, align 8, !alias.scope !3, !noalias !4
  %t2635 = add i64 %r2634, 24
  %gmp2636 = inttoptr i64 %t2635 to ptr
  %gml2637 = load i32, ptr %gmp2636, align 1, !alias.scope !4, !noalias !3
  %c2638 = zext i32 %gml2637 to i64
  %wp2639 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2638, ptr %wp2639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b68 word 0x13017d1b
  %r2640.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2640 = load i64, ptr %r2640.p, align 8, !alias.scope !3, !noalias !4
  %c2641 = trunc i64 %r2640 to i32
  %ror2642 = call i32 @llvm.fshr.i32(i32 %c2641, i32 %c2641, i32 1)
  %t2643 = lshr i32 %c2641, 31
  %t2644 = and i32 %t2643, 1
  %t2645 = sub i32 0, %t2644
  %t2646 = and i32 %t2645, -2147483648
  %t2647 = and i32 %ror2642, 2147483647
  %t2648 = or i32 %t2646, %t2647
  %c2649 = zext i32 %t2648 to i64
  %wp2650 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2649, ptr %wp2650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b6c word 0xb9400288
  %r2651.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2651 = load i64, ptr %r2651.p, align 8, !alias.scope !3, !noalias !4
  %gmp2652 = inttoptr i64 %r2651 to ptr
  %gml2653 = load i32, ptr %gmp2652, align 1, !alias.scope !4, !noalias !3
  %c2654 = zext i32 %gml2653 to i64
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b70 word 0x6b1b011f
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %c2657 = trunc i64 %r2656 to i32
  %r2658.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2658 = load i64, ptr %r2658.p, align 8, !alias.scope !3, !noalias !4
  %c2659 = trunc i64 %r2658 to i32
  %t2660 = sub i32 %c2657, %c2659
  %fn2661 = icmp slt i32 %t2660, 0
  %fz2662 = icmp eq i32 %t2660, 0
  %fc2663 = icmp uge i32 %c2657, %c2659
  %fx12664 = xor i32 %c2657, %c2659
  %fx22665 = xor i32 %c2657, %t2660
  %fva2666 = and i32 %fx12664, %fx22665
  %fv2667 = icmp slt i32 %fva2666, 0
  %nz2668 = zext i1 %fn2661 to i64
  %zz2669 = zext i1 %fz2662 to i64
  %cz2670 = zext i1 %fc2663 to i64
  %vz2671 = zext i1 %fv2667 to i64
  %ns2672 = shl i64 %nz2668, 31
  %zs2673 = shl i64 %zz2669, 30
  %cs2674 = shl i64 %cz2670, 29
  %vs2675 = shl i64 %vz2671, 28
  %nzor2676 = or i64 %ns2672, %zs2673
  %cvor2677 = or i64 %cs2674, %vs2675
  %nzcv2678 = or i64 %nzor2676, %cvor2677
  %wp2679 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2678, ptr %wp2679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b74 word 0x1a9f8368
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %c2681 = trunc i64 %r2680 to i32
  %r2682.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2682 = load i64, ptr %r2682.p, align 8, !alias.scope !3, !noalias !4
  %fsh2684 = lshr i64 %r2682, 29
  %ftr2685 = trunc i64 %fsh2684 to i1
  %fsh2686 = lshr i64 %r2682, 30
  %ftr2687 = trunc i64 %fsh2686 to i1
  %fnz2688 = xor i1 %ftr2687, true
  %cond2683 = and i1 %ftr2685, %fnz2688
  %sel2689 = select i1 %cond2683, i32 %c2681, i32 0
  %c2690 = zext i32 %sel2689 to i64
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2690, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b78 word 0xf868d921
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %c2694 = trunc i64 %r2693 to i32
  %c2695 = sext i32 %c2694 to i64
  %t2696 = shl i64 %c2695, 3
  %t2697 = add i64 %r2692, %t2696
  %gmp2698 = inttoptr i64 %t2697 to ptr
  %gml2699 = load i64, ptr %gmp2698, align 1, !alias.scope !4, !noalias !3
  %wp2700 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2699, ptr %wp2700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b7c word 0xf9400008
  %r2701.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2701 = load i64, ptr %r2701.p, align 8, !alias.scope !3, !noalias !4
  %gmp2702 = inttoptr i64 %r2701 to ptr
  %gml2703 = load i64, ptr %gmp2702, align 1, !alias.scope !4, !noalias !3
  %wp2704 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2703, ptr %wp2704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b80 word 0xf9403d09
  %r2705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2705 = load i64, ptr %r2705.p, align 8, !alias.scope !3, !noalias !4
  %t2706 = add i64 %r2705, 120
  %gmp2707 = inttoptr i64 %t2706 to ptr
  %gml2708 = load i64, ptr %gmp2707, align 1, !alias.scope !4, !noalias !3
  %wp2709 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2708, ptr %wp2709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b84 word 0x910043e8
  %r2710.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2710 = load i64, ptr %r2710.p, align 8, !alias.scope !3, !noalias !4
  %t2711 = add i64 %r2710, 16
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2711, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b88 word 0xd63f0120
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %fp2714 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2713, ptr %fp2714, align 8, !alias.scope !3, !noalias !4
  %wp2715 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370956, ptr %wp2715, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282b8c word 0xb94013e8
  %r2716.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2716 = load i64, ptr %r2716.p, align 8, !alias.scope !3, !noalias !4
  %t2717 = add i64 %r2716, 16
  %gmp2718 = inttoptr i64 %t2717 to ptr
  %gml2719 = load i32, ptr %gmp2718, align 1, !alias.scope !4, !noalias !3
  %c2720 = zext i32 %gml2719 to i64
  %wp2721 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2720, ptr %wp2721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b90 word 0xb94002a9
  %r2722.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2722 = load i64, ptr %r2722.p, align 8, !alias.scope !3, !noalias !4
  %gmp2723 = inttoptr i64 %r2722 to ptr
  %gml2724 = load i32, ptr %gmp2723, align 1, !alias.scope !4, !noalias !3
  %c2725 = zext i32 %gml2724 to i64
  %wp2726 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2725, ptr %wp2726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b94 word 0x6b09011f
  %r2727.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2727 = load i64, ptr %r2727.p, align 8, !alias.scope !3, !noalias !4
  %c2728 = trunc i64 %r2727 to i32
  %r2729.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2729 = load i64, ptr %r2729.p, align 8, !alias.scope !3, !noalias !4
  %c2730 = trunc i64 %r2729 to i32
  %t2731 = sub i32 %c2728, %c2730
  %fn2732 = icmp slt i32 %t2731, 0
  %fz2733 = icmp eq i32 %t2731, 0
  %fc2734 = icmp uge i32 %c2728, %c2730
  %fx12735 = xor i32 %c2728, %c2730
  %fx22736 = xor i32 %c2728, %t2731
  %fva2737 = and i32 %fx12735, %fx22736
  %fv2738 = icmp slt i32 %fva2737, 0
  %nz2739 = zext i1 %fn2732 to i64
  %zz2740 = zext i1 %fz2733 to i64
  %cz2741 = zext i1 %fc2734 to i64
  %vz2742 = zext i1 %fv2738 to i64
  %ns2743 = shl i64 %nz2739, 31
  %zs2744 = shl i64 %zz2740, 30
  %cs2745 = shl i64 %cz2741, 29
  %vs2746 = shl i64 %vz2742, 28
  %nzor2747 = or i64 %ns2743, %zs2744
  %cvor2748 = or i64 %cs2745, %vs2746
  %nzcv2749 = or i64 %nzor2747, %cvor2748
  %wp2750 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2749, ptr %wp2750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282b98 word 0x54001c81
  %r2751.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2751 = load i64, ptr %r2751.p, align 8, !alias.scope !3, !noalias !4
  %fsh2753 = lshr i64 %r2751, 30
  %ftr2754 = trunc i64 %fsh2753 to i1
  %cond2752 = xor i1 %ftr2754, true
  br i1 %cond2752, label %L_800282f28, label %L_800282b9c_ft
L_800282bb8:
  ; @pc 0x800282bb8 word 0x386b692c
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %r2819.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2819 = load i64, ptr %r2819.p, align 8, !alias.scope !3, !noalias !4
  %t2820 = add i64 %r2818, %r2819
  %gmp2821 = inttoptr i64 %t2820 to ptr
  %gml2822 = load i8, ptr %gmp2821, align 1, !alias.scope !4, !noalias !3
  %c2823 = zext i8 %gml2822 to i64
  %wp2824 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2823, ptr %wp2824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bbc word 0x34001bac
  %r2825.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2825 = load i64, ptr %r2825.p, align 8, !alias.scope !3, !noalias !4
  %c2826 = trunc i64 %r2825 to i32
  %cmp2827 = icmp eq i32 %c2826, 0
  br i1 %cmp2827, label %L_800282f30, label %L_800282bc0
L_800282bc0:
  ; @pc 0x800282bc0 word 0x386b694d
  %r2828.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2828 = load i64, ptr %r2828.p, align 8, !alias.scope !3, !noalias !4
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %t2830 = add i64 %r2828, %r2829
  %gmp2831 = inttoptr i64 %t2830 to ptr
  %gml2832 = load i8, ptr %gmp2831, align 1, !alias.scope !4, !noalias !3
  %c2833 = zext i8 %gml2832 to i64
  %wp2834 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2833, ptr %wp2834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bc4 word 0x7100019f
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %c2836 = trunc i64 %r2835 to i32
  %t2837 = sub i32 %c2836, 0
  %fn2838 = icmp slt i32 %t2837, 0
  %fz2839 = icmp eq i32 %t2837, 0
  %fc2840 = icmp uge i32 %c2836, 0
  %fx12841 = xor i32 %c2836, 0
  %fx22842 = xor i32 %c2836, %t2837
  %fva2843 = and i32 %fx12841, %fx22842
  %fv2844 = icmp slt i32 %fva2843, 0
  %nz2845 = zext i1 %fn2838 to i64
  %zz2846 = zext i1 %fz2839 to i64
  %cz2847 = zext i1 %fc2840 to i64
  %vz2848 = zext i1 %fv2844 to i64
  %ns2849 = shl i64 %nz2845, 31
  %zs2850 = shl i64 %zz2846, 30
  %cs2851 = shl i64 %cz2847, 29
  %vs2852 = shl i64 %vz2848, 28
  %nzor2853 = or i64 %ns2849, %zs2850
  %cvor2854 = or i64 %cs2851, %vs2852
  %nzcv2855 = or i64 %nzor2853, %cvor2854
  %wp2856 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2855, ptr %wp2856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bc8 word 0x1a9f07ee
  %t2857 = add i32 0, 1
  %r2858.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2858 = load i64, ptr %r2858.p, align 8, !alias.scope !3, !noalias !4
  %fsh2860 = lshr i64 %r2858, 30
  %cond2859 = trunc i64 %fsh2860 to i1
  %sel2861 = select i1 %cond2859, i32 0, i32 %t2857
  %c2862 = zext i32 %sel2861 to i64
  %wp2863 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2862, ptr %wp2863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bcc word 0x6b0d019f
  %r2864.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2864 = load i64, ptr %r2864.p, align 8, !alias.scope !3, !noalias !4
  %c2865 = trunc i64 %r2864 to i32
  %r2866.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2866 = load i64, ptr %r2866.p, align 8, !alias.scope !3, !noalias !4
  %c2867 = trunc i64 %r2866 to i32
  %t2868 = sub i32 %c2865, %c2867
  %fn2869 = icmp slt i32 %t2868, 0
  %fz2870 = icmp eq i32 %t2868, 0
  %fc2871 = icmp uge i32 %c2865, %c2867
  %fx12872 = xor i32 %c2865, %c2867
  %fx22873 = xor i32 %c2865, %t2868
  %fva2874 = and i32 %fx12872, %fx22873
  %fv2875 = icmp slt i32 %fva2874, 0
  %nz2876 = zext i1 %fn2869 to i64
  %zz2877 = zext i1 %fz2870 to i64
  %cz2878 = zext i1 %fc2871 to i64
  %vz2879 = zext i1 %fv2875 to i64
  %ns2880 = shl i64 %nz2876, 31
  %zs2881 = shl i64 %zz2877, 30
  %cs2882 = shl i64 %cz2878, 29
  %vs2883 = shl i64 %vz2879, 28
  %nzor2884 = or i64 %ns2880, %zs2881
  %cvor2885 = or i64 %cs2882, %vs2883
  %nzcv2886 = or i64 %nzor2884, %cvor2885
  %wp2887 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2886, ptr %wp2887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bd0 word 0x5a99372c
  %r2888.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2888 = load i64, ptr %r2888.p, align 8, !alias.scope !3, !noalias !4
  %c2889 = trunc i64 %r2888 to i32
  %r2890.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2890 = load i64, ptr %r2890.p, align 8, !alias.scope !3, !noalias !4
  %c2891 = trunc i64 %r2890 to i32
  %t2892 = sub i32 0, %c2891
  %r2893.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2893 = load i64, ptr %r2893.p, align 8, !alias.scope !3, !noalias !4
  %fsh2895 = lshr i64 %r2893, 29
  %ftr2896 = trunc i64 %fsh2895 to i1
  %cond2894 = xor i1 %ftr2896, true
  %sel2897 = select i1 %cond2894, i32 %c2889, i32 %t2892
  %c2898 = zext i32 %sel2897 to i64
  %wp2899 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2898, ptr %wp2899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bd4 word 0x1a8e13ed
  %r2900.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2900 = load i64, ptr %r2900.p, align 8, !alias.scope !3, !noalias !4
  %c2901 = trunc i64 %r2900 to i32
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %fsh2904 = lshr i64 %r2902, 30
  %ftr2905 = trunc i64 %fsh2904 to i1
  %cond2903 = xor i1 %ftr2905, true
  %sel2906 = select i1 %cond2903, i32 0, i32 %c2901
  %c2907 = zext i32 %sel2906 to i64
  %wp2908 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2907, ptr %wp2908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bd8 word 0x1a8c0108
  %r2909.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2909 = load i64, ptr %r2909.p, align 8, !alias.scope !3, !noalias !4
  %c2910 = trunc i64 %r2909 to i32
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %c2912 = trunc i64 %r2911 to i32
  %r2913.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2913 = load i64, ptr %r2913.p, align 8, !alias.scope !3, !noalias !4
  %fsh2915 = lshr i64 %r2913, 30
  %cond2914 = trunc i64 %fsh2915 to i1
  %sel2916 = select i1 %cond2914, i32 %c2910, i32 %c2912
  %c2917 = zext i32 %sel2916 to i64
  %wp2918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2917, ptr %wp2918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bdc word 0x3607fb4d
  %r2919.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2919 = load i64, ptr %r2919.p, align 8, !alias.scope !3, !noalias !4
  %t2920 = and i64 %r2919, 1
  %cmp2921 = icmp eq i64 %t2920, 0
  br i1 %cmp2921, label %L_800282b44, label %L_800282be0_ft
L_800282bec:
  ; @pc 0x800282bec word 0x8b0b014d
  %r2935.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2935 = load i64, ptr %r2935.p, align 8, !alias.scope !3, !noalias !4
  %r2936.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2936 = load i64, ptr %r2936.p, align 8, !alias.scope !3, !noalias !4
  %t2937 = add i64 %r2935, %r2936
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bf0 word 0x7100019f
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %c2940 = trunc i64 %r2939 to i32
  %t2941 = sub i32 %c2940, 0
  %fn2942 = icmp slt i32 %t2941, 0
  %fz2943 = icmp eq i32 %t2941, 0
  %fc2944 = icmp uge i32 %c2940, 0
  %fx12945 = xor i32 %c2940, 0
  %fx22946 = xor i32 %c2940, %t2941
  %fva2947 = and i32 %fx12945, %fx22946
  %fv2948 = icmp slt i32 %fva2947, 0
  %nz2949 = zext i1 %fn2942 to i64
  %zz2950 = zext i1 %fz2943 to i64
  %cz2951 = zext i1 %fc2944 to i64
  %vz2952 = zext i1 %fv2948 to i64
  %ns2953 = shl i64 %nz2949, 31
  %zs2954 = shl i64 %zz2950, 30
  %cs2955 = shl i64 %cz2951, 29
  %vs2956 = shl i64 %vz2952, 28
  %nzor2957 = or i64 %ns2953, %zs2954
  %cvor2958 = or i64 %cs2955, %vs2956
  %nzcv2959 = or i64 %nzor2957, %cvor2958
  %wp2960 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2959, ptr %wp2960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bf4 word 0x394005ad
  %r2961.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2961 = load i64, ptr %r2961.p, align 8, !alias.scope !3, !noalias !4
  %t2962 = add i64 %r2961, 1
  %gmp2963 = inttoptr i64 %t2962 to ptr
  %gml2964 = load i8, ptr %gmp2963, align 1, !alias.scope !4, !noalias !3
  %c2965 = zext i8 %gml2964 to i64
  %wp2966 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2965, ptr %wp2966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bf8 word 0x1a9f07ee
  %t2967 = add i32 0, 1
  %r2968.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2968 = load i64, ptr %r2968.p, align 8, !alias.scope !3, !noalias !4
  %fsh2970 = lshr i64 %r2968, 30
  %cond2969 = trunc i64 %fsh2970 to i1
  %sel2971 = select i1 %cond2969, i32 0, i32 %t2967
  %c2972 = zext i32 %sel2971 to i64
  %wp2973 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c2972, ptr %wp2973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bfc word 0x6b0d019f
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %c2975 = trunc i64 %r2974 to i32
  %r2976.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2976 = load i64, ptr %r2976.p, align 8, !alias.scope !3, !noalias !4
  %c2977 = trunc i64 %r2976 to i32
  %t2978 = sub i32 %c2975, %c2977
  %fn2979 = icmp slt i32 %t2978, 0
  %fz2980 = icmp eq i32 %t2978, 0
  %fc2981 = icmp uge i32 %c2975, %c2977
  %fx12982 = xor i32 %c2975, %c2977
  %fx22983 = xor i32 %c2975, %t2978
  %fva2984 = and i32 %fx12982, %fx22983
  %fv2985 = icmp slt i32 %fva2984, 0
  %nz2986 = zext i1 %fn2979 to i64
  %zz2987 = zext i1 %fz2980 to i64
  %cz2988 = zext i1 %fc2981 to i64
  %vz2989 = zext i1 %fv2985 to i64
  %ns2990 = shl i64 %nz2986, 31
  %zs2991 = shl i64 %zz2987, 30
  %cs2992 = shl i64 %cz2988, 29
  %vs2993 = shl i64 %vz2989, 28
  %nzor2994 = or i64 %ns2990, %zs2991
  %cvor2995 = or i64 %cs2992, %vs2993
  %nzcv2996 = or i64 %nzor2994, %cvor2995
  %wp2997 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2996, ptr %wp2997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c00 word 0x5a99372c
  %r2998.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2998 = load i64, ptr %r2998.p, align 8, !alias.scope !3, !noalias !4
  %c2999 = trunc i64 %r2998 to i32
  %r3000.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3000 = load i64, ptr %r3000.p, align 8, !alias.scope !3, !noalias !4
  %c3001 = trunc i64 %r3000 to i32
  %t3002 = sub i32 0, %c3001
  %r3003.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3003 = load i64, ptr %r3003.p, align 8, !alias.scope !3, !noalias !4
  %fsh3005 = lshr i64 %r3003, 29
  %ftr3006 = trunc i64 %fsh3005 to i1
  %cond3004 = xor i1 %ftr3006, true
  %sel3007 = select i1 %cond3004, i32 %c2999, i32 %t3002
  %c3008 = zext i32 %sel3007 to i64
  %wp3009 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3008, ptr %wp3009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c04 word 0x1a8e13ed
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %c3011 = trunc i64 %r3010 to i32
  %r3012.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3012 = load i64, ptr %r3012.p, align 8, !alias.scope !3, !noalias !4
  %fsh3014 = lshr i64 %r3012, 30
  %ftr3015 = trunc i64 %fsh3014 to i1
  %cond3013 = xor i1 %ftr3015, true
  %sel3016 = select i1 %cond3013, i32 0, i32 %c3011
  %c3017 = zext i32 %sel3016 to i64
  %wp3018 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3017, ptr %wp3018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c08 word 0x1a8c0108
  %r3019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3019 = load i64, ptr %r3019.p, align 8, !alias.scope !3, !noalias !4
  %c3020 = trunc i64 %r3019 to i32
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %c3022 = trunc i64 %r3021 to i32
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %fsh3025 = lshr i64 %r3023, 30
  %cond3024 = trunc i64 %fsh3025 to i1
  %sel3026 = select i1 %cond3024, i32 %c3020, i32 %c3022
  %c3027 = zext i32 %sel3026 to i64
  %wp3028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3027, ptr %wp3028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c0c word 0x34fff9cd
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %c3030 = trunc i64 %r3029 to i32
  %cmp3031 = icmp eq i32 %c3030, 0
  br i1 %cmp3031, label %L_800282b44, label %L_800282c10_ft
L_800282c20:
  ; @pc 0x800282c20 word 0x531f7d1b
  %r3060.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3060 = load i64, ptr %r3060.p, align 8, !alias.scope !3, !noalias !4
  %c3061 = trunc i64 %r3060 to i32
  %ror3062 = call i32 @llvm.fshr.i32(i32 %c3061, i32 %c3061, i32 31)
  %t3063 = and i32 %ror3062, 1
  %c3064 = zext i32 %t3063 to i64
  %wp3065 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3064, ptr %wp3065, align 8, !alias.scope !3, !noalias !4
  br label %L_800282c24
L_800282c24:
  ; @pc 0x800282c24 word 0xb94007e8
  %r3066.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3066 = load i64, ptr %r3066.p, align 8, !alias.scope !3, !noalias !4
  %t3067 = add i64 %r3066, 4
  %gmp3068 = inttoptr i64 %t3067 to ptr
  %gml3069 = load i32, ptr %gmp3068, align 1, !alias.scope !4, !noalias !3
  %c3070 = zext i32 %gml3069 to i64
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c28 word 0x0a08039a
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %c3073 = trunc i64 %r3072 to i32
  %r3074.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3074 = load i64, ptr %r3074.p, align 8, !alias.scope !3, !noalias !4
  %c3075 = trunc i64 %r3074 to i32
  %t3076 = and i32 %c3075, %c3073
  %c3077 = zext i32 %t3076 to i64
  %wp3078 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3077, ptr %wp3078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c2c word 0x370000bb
  %r3079.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3079 = load i64, ptr %r3079.p, align 8, !alias.scope !3, !noalias !4
  %t3080 = and i64 %r3079, 1
  %cmp3081 = icmp ne i64 %t3080, 0
  br i1 %cmp3081, label %L_800282c40, label %L_800282c30_ft
L_800282c40:
  ; @pc 0x800282c40 word 0xb9400288
  %r3099.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3099 = load i64, ptr %r3099.p, align 8, !alias.scope !3, !noalias !4
  %gmp3100 = inttoptr i64 %r3099 to ptr
  %gml3101 = load i32, ptr %gmp3100, align 1, !alias.scope !4, !noalias !3
  %c3102 = zext i32 %gml3101 to i64
  %wp3103 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3102, ptr %wp3103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c44 word 0x51000509
  %r3104.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3104 = load i64, ptr %r3104.p, align 8, !alias.scope !3, !noalias !4
  %c3105 = trunc i64 %r3104 to i32
  %t3106 = sub i32 %c3105, 1
  %c3107 = zext i32 %t3106 to i64
  %wp3108 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3107, ptr %wp3108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c48 word 0x6b09031f
  %r3109.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3109 = load i64, ptr %r3109.p, align 8, !alias.scope !3, !noalias !4
  %c3110 = trunc i64 %r3109 to i32
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %c3112 = trunc i64 %r3111 to i32
  %t3113 = sub i32 %c3110, %c3112
  %fn3114 = icmp slt i32 %t3113, 0
  %fz3115 = icmp eq i32 %t3113, 0
  %fc3116 = icmp uge i32 %c3110, %c3112
  %fx13117 = xor i32 %c3110, %c3112
  %fx23118 = xor i32 %c3110, %t3113
  %fva3119 = and i32 %fx13117, %fx23118
  %fv3120 = icmp slt i32 %fva3119, 0
  %nz3121 = zext i1 %fn3114 to i64
  %zz3122 = zext i1 %fz3115 to i64
  %cz3123 = zext i1 %fc3116 to i64
  %vz3124 = zext i1 %fv3120 to i64
  %ns3125 = shl i64 %nz3121, 31
  %zs3126 = shl i64 %zz3122, 30
  %cs3127 = shl i64 %cz3123, 29
  %vs3128 = shl i64 %vz3124, 28
  %nzor3129 = or i64 %ns3125, %zs3126
  %cvor3130 = or i64 %cs3127, %vs3128
  %nzcv3131 = or i64 %nzor3129, %cvor3130
  %wp3132 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3131, ptr %wp3132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c4c word 0x52000369
  %r3133.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3133 = load i64, ptr %r3133.p, align 8, !alias.scope !3, !noalias !4
  %c3134 = trunc i64 %r3133 to i32
  %t3135 = xor i32 %c3134, 1
  %c3136 = zext i32 %t3135 to i64
  %wp3137 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3136, ptr %wp3137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c50 word 0xb9400bfb
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %t3139 = add i64 %r3138, 8
  %gmp3140 = inttoptr i64 %t3139 to ptr
  %gml3141 = load i32, ptr %gmp3140, align 1, !alias.scope !4, !noalias !3
  %c3142 = zext i32 %gml3141 to i64
  %wp3143 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3142, ptr %wp3143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c54 word 0x1a9f0529
  %r3144.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3144 = load i64, ptr %r3144.p, align 8, !alias.scope !3, !noalias !4
  %c3145 = trunc i64 %r3144 to i32
  %t3146 = add i32 0, 1
  %r3147.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3147 = load i64, ptr %r3147.p, align 8, !alias.scope !3, !noalias !4
  %fsh3149 = lshr i64 %r3147, 30
  %cond3148 = trunc i64 %fsh3149 to i1
  %sel3150 = select i1 %cond3148, i32 %c3145, i32 %t3146
  %c3151 = zext i32 %sel3150 to i64
  %wp3152 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3151, ptr %wp3152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c58 word 0x2a090369
  %r3153.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3153 = load i64, ptr %r3153.p, align 8, !alias.scope !3, !noalias !4
  %c3154 = trunc i64 %r3153 to i32
  %r3155.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3155 = load i64, ptr %r3155.p, align 8, !alias.scope !3, !noalias !4
  %c3156 = trunc i64 %r3155 to i32
  %t3157 = or i32 %c3156, %c3154
  %c3158 = zext i32 %t3157 to i64
  %wp3159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3158, ptr %wp3159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c5c word 0x36000849
  %r3160.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3160 = load i64, ptr %r3160.p, align 8, !alias.scope !3, !noalias !4
  %t3161 = and i64 %r3160, 1
  %cmp3162 = icmp eq i64 %t3161, 0
  br i1 %cmp3162, label %L_800282d64, label %L_800282c60_ft
L_800282c68:
  ; @pc 0x800282c68 word 0xb940ce68
  %r3188.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3188 = load i64, ptr %r3188.p, align 8, !alias.scope !3, !noalias !4
  %t3189 = add i64 %r3188, 204
  %gmp3190 = inttoptr i64 %t3189 to ptr
  %gml3191 = load i32, ptr %gmp3190, align 1, !alias.scope !4, !noalias !3
  %c3192 = zext i32 %gml3191 to i64
  %wp3193 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3192, ptr %wp3193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c6c word 0x350006c8
  %r3194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3194 = load i64, ptr %r3194.p, align 8, !alias.scope !3, !noalias !4
  %c3195 = trunc i64 %r3194 to i32
  %cmp3196 = icmp ne i32 %c3195, 0
  br i1 %cmp3196, label %L_800282d44, label %L_800282c70_ft
L_800282c8c:
  ; @pc 0x800282c8c word 0x2b1702c8
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %c3245 = trunc i64 %r3244 to i32
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %c3247 = trunc i64 %r3246 to i32
  %t3248 = add i32 %c3245, %c3247
  %fn3249 = icmp slt i32 %t3248, 0
  %fz3250 = icmp eq i32 %t3248, 0
  %fc3251 = icmp ult i32 %t3248, %c3245
  %fx13252 = xor i32 %c3245, %t3248
  %fx23253 = xor i32 %c3247, %t3248
  %fva3254 = and i32 %fx13252, %fx23253
  %fv3255 = icmp slt i32 %fva3254, 0
  %nz3256 = zext i1 %fn3249 to i64
  %zz3257 = zext i1 %fz3250 to i64
  %cz3258 = zext i1 %fc3251 to i64
  %vz3259 = zext i1 %fv3255 to i64
  %ns3260 = shl i64 %nz3256, 31
  %zs3261 = shl i64 %zz3257, 30
  %cs3262 = shl i64 %cz3258, 29
  %vs3263 = shl i64 %vz3259, 28
  %nzor3264 = or i64 %ns3260, %zs3261
  %cvor3265 = or i64 %cs3262, %vs3263
  %nzcv3266 = or i64 %nzor3264, %cvor3265
  %wp3267 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3266, ptr %wp3267, align 8, !alias.scope !3, !noalias !4
  %c3268 = zext i32 %t3248 to i64
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c90 word 0xa9408289
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %t3271 = add i64 %r3270, 8
  %t3272 = add i64 %t3271, 8
  %gmp3273 = inttoptr i64 %t3271 to ptr
  %gml3274 = load i64, ptr %gmp3273, align 1, !alias.scope !4, !noalias !3
  %gmp3275 = inttoptr i64 %t3272 to ptr
  %gml3276 = load i64, ptr %gmp3275, align 1, !alias.scope !4, !noalias !3
  %wp3277 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3274, ptr %wp3277, align 8, !alias.scope !3, !noalias !4
  %wp3278 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3276, ptr %wp3278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c94 word 0x1a88a508
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %c3280 = trunc i64 %r3279 to i32
  %r3281.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3281 = load i64, ptr %r3281.p, align 8, !alias.scope !3, !noalias !4
  %c3282 = trunc i64 %r3281 to i32
  %t3283 = add i32 %c3282, 1
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %fsh3286 = lshr i64 %r3284, 31
  %ftr3287 = trunc i64 %fsh3286 to i1
  %fsh3288 = lshr i64 %r3284, 28
  %ftr3289 = trunc i64 %fsh3288 to i1
  %cond3285 = icmp eq i1 %ftr3287, %ftr3289
  %sel3290 = select i1 %cond3285, i32 %c3280, i32 %t3283
  %c3291 = zext i32 %sel3290 to i64
  %wp3292 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3291, ptr %wp3292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c98 word 0xb9401a82
  %r3293.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3293 = load i64, ptr %r3293.p, align 8, !alias.scope !3, !noalias !4
  %t3294 = add i64 %r3293, 24
  %gmp3295 = inttoptr i64 %t3294 to ptr
  %gml3296 = load i32, ptr %gmp3295, align 1, !alias.scope !4, !noalias !3
  %c3297 = zext i32 %gml3296 to i64
  %wp3298 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3297, ptr %wp3298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c9c word 0x13017d1b
  %r3299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3299 = load i64, ptr %r3299.p, align 8, !alias.scope !3, !noalias !4
  %c3300 = trunc i64 %r3299 to i32
  %ror3301 = call i32 @llvm.fshr.i32(i32 %c3300, i32 %c3300, i32 1)
  %t3302 = lshr i32 %c3300, 31
  %t3303 = and i32 %t3302, 1
  %t3304 = sub i32 0, %t3303
  %t3305 = and i32 %t3304, -2147483648
  %t3306 = and i32 %ror3301, 2147483647
  %t3307 = or i32 %t3305, %t3306
  %c3308 = zext i32 %t3307 to i64
  %wp3309 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3308, ptr %wp3309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ca0 word 0xb9400288
  %r3310.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3310 = load i64, ptr %r3310.p, align 8, !alias.scope !3, !noalias !4
  %gmp3311 = inttoptr i64 %r3310 to ptr
  %gml3312 = load i32, ptr %gmp3311, align 1, !alias.scope !4, !noalias !3
  %c3313 = zext i32 %gml3312 to i64
  %wp3314 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3313, ptr %wp3314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ca4 word 0x6b1b011f
  %r3315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3315 = load i64, ptr %r3315.p, align 8, !alias.scope !3, !noalias !4
  %c3316 = trunc i64 %r3315 to i32
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %c3318 = trunc i64 %r3317 to i32
  %t3319 = sub i32 %c3316, %c3318
  %fn3320 = icmp slt i32 %t3319, 0
  %fz3321 = icmp eq i32 %t3319, 0
  %fc3322 = icmp uge i32 %c3316, %c3318
  %fx13323 = xor i32 %c3316, %c3318
  %fx23324 = xor i32 %c3316, %t3319
  %fva3325 = and i32 %fx13323, %fx23324
  %fv3326 = icmp slt i32 %fva3325, 0
  %nz3327 = zext i1 %fn3320 to i64
  %zz3328 = zext i1 %fz3321 to i64
  %cz3329 = zext i1 %fc3322 to i64
  %vz3330 = zext i1 %fv3326 to i64
  %ns3331 = shl i64 %nz3327, 31
  %zs3332 = shl i64 %zz3328, 30
  %cs3333 = shl i64 %cz3329, 29
  %vs3334 = shl i64 %vz3330, 28
  %nzor3335 = or i64 %ns3331, %zs3332
  %cvor3336 = or i64 %cs3333, %vs3334
  %nzcv3337 = or i64 %nzor3335, %cvor3336
  %wp3338 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3337, ptr %wp3338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ca8 word 0x1a9f8368
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %c3340 = trunc i64 %r3339 to i32
  %r3341.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3341 = load i64, ptr %r3341.p, align 8, !alias.scope !3, !noalias !4
  %fsh3343 = lshr i64 %r3341, 29
  %ftr3344 = trunc i64 %fsh3343 to i1
  %fsh3345 = lshr i64 %r3341, 30
  %ftr3346 = trunc i64 %fsh3345 to i1
  %fnz3347 = xor i1 %ftr3346, true
  %cond3342 = and i1 %ftr3344, %fnz3347
  %sel3348 = select i1 %cond3342, i32 %c3340, i32 0
  %c3349 = zext i32 %sel3348 to i64
  %wp3350 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3349, ptr %wp3350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cac word 0xf868d921
  %r3351.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3351 = load i64, ptr %r3351.p, align 8, !alias.scope !3, !noalias !4
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %c3353 = trunc i64 %r3352 to i32
  %c3354 = sext i32 %c3353 to i64
  %t3355 = shl i64 %c3354, 3
  %t3356 = add i64 %r3351, %t3355
  %gmp3357 = inttoptr i64 %t3356 to ptr
  %gml3358 = load i64, ptr %gmp3357, align 1, !alias.scope !4, !noalias !3
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml3358, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cb0 word 0xf9400008
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %gmp3361 = inttoptr i64 %r3360 to ptr
  %gml3362 = load i64, ptr %gmp3361, align 1, !alias.scope !4, !noalias !3
  %wp3363 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3362, ptr %wp3363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cb4 word 0xf9403d09
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %t3365 = add i64 %r3364, 120
  %gmp3366 = inttoptr i64 %t3365 to ptr
  %gml3367 = load i64, ptr %gmp3366, align 1, !alias.scope !4, !noalias !3
  %wp3368 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3367, ptr %wp3368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cb8 word 0x910043e8
  %r3369.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3369 = load i64, ptr %r3369.p, align 8, !alias.scope !3, !noalias !4
  %t3370 = add i64 %r3369, 16
  %wp3371 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3370, ptr %wp3371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cbc word 0xd63f0120
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %fp3373 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3372, ptr %fp3373, align 8, !alias.scope !3, !noalias !4
  %wp3374 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362371264, ptr %wp3374, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282cc0 word 0xb94013e9
  %r3375.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3375 = load i64, ptr %r3375.p, align 8, !alias.scope !3, !noalias !4
  %t3376 = add i64 %r3375, 16
  %gmp3377 = inttoptr i64 %t3376 to ptr
  %gml3378 = load i32, ptr %gmp3377, align 1, !alias.scope !4, !noalias !3
  %c3379 = zext i32 %gml3378 to i64
  %wp3380 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3379, ptr %wp3380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cc4 word 0xb94002a8
  %r3381.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3381 = load i64, ptr %r3381.p, align 8, !alias.scope !3, !noalias !4
  %gmp3382 = inttoptr i64 %r3381 to ptr
  %gml3383 = load i32, ptr %gmp3382, align 1, !alias.scope !4, !noalias !3
  %c3384 = zext i32 %gml3383 to i64
  %wp3385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3384, ptr %wp3385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cc8 word 0x6b08013f
  %r3386.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3386 = load i64, ptr %r3386.p, align 8, !alias.scope !3, !noalias !4
  %c3387 = trunc i64 %r3386 to i32
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %c3389 = trunc i64 %r3388 to i32
  %t3390 = sub i32 %c3387, %c3389
  %fn3391 = icmp slt i32 %t3390, 0
  %fz3392 = icmp eq i32 %t3390, 0
  %fc3393 = icmp uge i32 %c3387, %c3389
  %fx13394 = xor i32 %c3387, %c3389
  %fx23395 = xor i32 %c3387, %t3390
  %fva3396 = and i32 %fx13394, %fx23395
  %fv3397 = icmp slt i32 %fva3396, 0
  %nz3398 = zext i1 %fn3391 to i64
  %zz3399 = zext i1 %fz3392 to i64
  %cz3400 = zext i1 %fc3393 to i64
  %vz3401 = zext i1 %fv3397 to i64
  %ns3402 = shl i64 %nz3398, 31
  %zs3403 = shl i64 %zz3399, 30
  %cs3404 = shl i64 %cz3400, 29
  %vs3405 = shl i64 %vz3401, 28
  %nzor3406 = or i64 %ns3402, %zs3403
  %cvor3407 = or i64 %cs3404, %vs3405
  %nzcv3408 = or i64 %nzor3406, %cvor3407
  %wp3409 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3408, ptr %wp3409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ccc word 0x54002021
  %r3410.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3410 = load i64, ptr %r3410.p, align 8, !alias.scope !3, !noalias !4
  %fsh3412 = lshr i64 %r3410, 30
  %ftr3413 = trunc i64 %fsh3412 to i1
  %cond3411 = xor i1 %ftr3413, true
  br i1 %cond3411, label %L_8002830d0, label %L_800282cd0_ft
L_800282ce8:
  ; @pc 0x800282ce8 word 0x52800028
  %c3484 = zext i32 1 to i64
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  br label %L_800282cec
L_800282cec:
  ; @pc 0x800282cec word 0x7201011f
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %c3487 = trunc i64 %r3486 to i32
  %t3488 = and i32 %c3487, -2147483648
  %fn3489 = icmp slt i32 %t3488, 0
  %fz3490 = icmp eq i32 %t3488, 0
  %nz3491 = zext i1 %fn3489 to i64
  %zz3492 = zext i1 %fz3490 to i64
  %ns3493 = shl i64 %nz3491, 31
  %zs3494 = shl i64 %zz3492, 30
  %nzcv3495 = or i64 %ns3493, %zs3494
  %wp3496 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3495, ptr %wp3496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cf0 word 0x531f7d1c
  %r3497.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3497 = load i64, ptr %r3497.p, align 8, !alias.scope !3, !noalias !4
  %c3498 = trunc i64 %r3497 to i32
  %ror3499 = call i32 @llvm.fshr.i32(i32 %c3498, i32 %c3498, i32 31)
  %t3500 = and i32 %ror3499, 1
  %c3501 = zext i32 %t3500 to i64
  %wp3502 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c3501, ptr %wp3502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cf4 word 0x1a9b06d6
  %r3503.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3503 = load i64, ptr %r3503.p, align 8, !alias.scope !3, !noalias !4
  %c3504 = trunc i64 %r3503 to i32
  %r3505.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3505 = load i64, ptr %r3505.p, align 8, !alias.scope !3, !noalias !4
  %c3506 = trunc i64 %r3505 to i32
  %t3507 = add i32 %c3506, 1
  %r3508.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3508 = load i64, ptr %r3508.p, align 8, !alias.scope !3, !noalias !4
  %fsh3510 = lshr i64 %r3508, 30
  %cond3509 = trunc i64 %fsh3510 to i1
  %sel3511 = select i1 %cond3509, i32 %c3504, i32 %t3507
  %c3512 = zext i32 %sel3511 to i64
  %wp3513 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3512, ptr %wp3513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cf8 word 0x1a9b12f7
  %r3514.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3514 = load i64, ptr %r3514.p, align 8, !alias.scope !3, !noalias !4
  %c3515 = trunc i64 %r3514 to i32
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %c3517 = trunc i64 %r3516 to i32
  %r3518.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3518 = load i64, ptr %r3518.p, align 8, !alias.scope !3, !noalias !4
  %fsh3520 = lshr i64 %r3518, 30
  %ftr3521 = trunc i64 %fsh3520 to i1
  %cond3519 = xor i1 %ftr3521, true
  %sel3522 = select i1 %cond3519, i32 %c3515, i32 %c3517
  %c3523 = zext i32 %sel3522 to i64
  %wp3524 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3523, ptr %wp3524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cfc word 0x6b1702df
  %r3525.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3525 = load i64, ptr %r3525.p, align 8, !alias.scope !3, !noalias !4
  %c3526 = trunc i64 %r3525 to i32
  %r3527.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3527 = load i64, ptr %r3527.p, align 8, !alias.scope !3, !noalias !4
  %c3528 = trunc i64 %r3527 to i32
  %t3529 = sub i32 %c3526, %c3528
  %fn3530 = icmp slt i32 %t3529, 0
  %fz3531 = icmp eq i32 %t3529, 0
  %fc3532 = icmp uge i32 %c3526, %c3528
  %fx13533 = xor i32 %c3526, %c3528
  %fx23534 = xor i32 %c3526, %t3529
  %fva3535 = and i32 %fx13533, %fx23534
  %fv3536 = icmp slt i32 %fva3535, 0
  %nz3537 = zext i1 %fn3530 to i64
  %zz3538 = zext i1 %fz3531 to i64
  %cz3539 = zext i1 %fc3532 to i64
  %vz3540 = zext i1 %fv3536 to i64
  %ns3541 = shl i64 %nz3537, 31
  %zs3542 = shl i64 %zz3538, 30
  %cs3543 = shl i64 %cz3539, 29
  %vs3544 = shl i64 %vz3540, 28
  %nzor3545 = or i64 %ns3541, %zs3542
  %cvor3546 = or i64 %cs3543, %vs3544
  %nzcv3547 = or i64 %nzor3545, %cvor3546
  %wp3548 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3547, ptr %wp3548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d00 word 0x5400008a
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %fsh3551 = lshr i64 %r3549, 31
  %ftr3552 = trunc i64 %fsh3551 to i1
  %fsh3553 = lshr i64 %r3549, 28
  %ftr3554 = trunc i64 %fsh3553 to i1
  %cond3550 = icmp eq i1 %ftr3552, %ftr3554
  br i1 %cond3550, label %L_800282d10, label %L_800282d04_ft
L_800282d08:
  ; @pc 0x800282d08 word 0x2a1f03f6
  %t3555 = or i32 0, 0
  %c3556 = zext i32 %t3555 to i64
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3556, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d0c word 0x2a1f03fc
  %t3558 = or i32 0, 0
  %c3559 = zext i32 %t3558 to i64
  %wp3560 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c3559, ptr %wp3560, align 8, !alias.scope !3, !noalias !4
  br label %L_800282d10
L_800282d10:
  ; @pc 0x800282d10 word 0xb9400bf7
  %r3561.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3561 = load i64, ptr %r3561.p, align 8, !alias.scope !3, !noalias !4
  %t3562 = add i64 %r3561, 8
  %gmp3563 = inttoptr i64 %t3562 to ptr
  %gml3564 = load i32, ptr %gmp3563, align 1, !alias.scope !4, !noalias !3
  %c3565 = zext i32 %gml3564 to i64
  %wp3566 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3565, ptr %wp3566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d14 word 0x710002df
  %r3567.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3567 = load i64, ptr %r3567.p, align 8, !alias.scope !3, !noalias !4
  %c3568 = trunc i64 %r3567 to i32
  %t3569 = sub i32 %c3568, 0
  %fn3570 = icmp slt i32 %t3569, 0
  %fz3571 = icmp eq i32 %t3569, 0
  %fc3572 = icmp uge i32 %c3568, 0
  %fx13573 = xor i32 %c3568, 0
  %fx23574 = xor i32 %c3568, %t3569
  %fva3575 = and i32 %fx13573, %fx23574
  %fv3576 = icmp slt i32 %fva3575, 0
  %nz3577 = zext i1 %fn3570 to i64
  %zz3578 = zext i1 %fz3571 to i64
  %cz3579 = zext i1 %fc3572 to i64
  %vz3580 = zext i1 %fv3576 to i64
  %ns3581 = shl i64 %nz3577, 31
  %zs3582 = shl i64 %zz3578, 30
  %cs3583 = shl i64 %cz3579, 29
  %vs3584 = shl i64 %vz3580, 28
  %nzor3585 = or i64 %ns3581, %zs3582
  %cvor3586 = or i64 %cs3583, %vs3584
  %nzcv3587 = or i64 %nzor3585, %cvor3586
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d18 word 0x1a9f06e8
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %c3590 = trunc i64 %r3589 to i32
  %t3591 = add i32 0, 1
  %r3592.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3592 = load i64, ptr %r3592.p, align 8, !alias.scope !3, !noalias !4
  %fsh3594 = lshr i64 %r3592, 30
  %cond3593 = trunc i64 %fsh3594 to i1
  %sel3595 = select i1 %cond3593, i32 %c3590, i32 %t3591
  %c3596 = zext i32 %sel3595 to i64
  %wp3597 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3596, ptr %wp3597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d1c word 0x3700005c
  %r3598.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3598 = load i64, ptr %r3598.p, align 8, !alias.scope !3, !noalias !4
  %t3599 = and i64 %r3598, 1
  %cmp3600 = icmp ne i64 %t3599, 0
  br i1 %cmp3600, label %L_800282d24, label %L_800282d20_ft
L_800282d24:
  ; @pc 0x800282d24 word 0xb9400288
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %gmp3605 = inttoptr i64 %r3604 to ptr
  %gml3606 = load i32, ptr %gmp3605, align 1, !alias.scope !4, !noalias !3
  %c3607 = zext i32 %gml3606 to i64
  %wp3608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3607, ptr %wp3608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d28 word 0x51000509
  %r3609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3609 = load i64, ptr %r3609.p, align 8, !alias.scope !3, !noalias !4
  %c3610 = trunc i64 %r3609 to i32
  %t3611 = sub i32 %c3610, 1
  %c3612 = zext i32 %t3611 to i64
  %wp3613 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3612, ptr %wp3613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d2c word 0x6b0902df
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %c3615 = trunc i64 %r3614 to i32
  %r3616.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3616 = load i64, ptr %r3616.p, align 8, !alias.scope !3, !noalias !4
  %c3617 = trunc i64 %r3616 to i32
  %t3618 = sub i32 %c3615, %c3617
  %fn3619 = icmp slt i32 %t3618, 0
  %fz3620 = icmp eq i32 %t3618, 0
  %fc3621 = icmp uge i32 %c3615, %c3617
  %fx13622 = xor i32 %c3615, %c3617
  %fx23623 = xor i32 %c3615, %t3618
  %fva3624 = and i32 %fx13622, %fx23623
  %fv3625 = icmp slt i32 %fva3624, 0
  %nz3626 = zext i1 %fn3619 to i64
  %zz3627 = zext i1 %fz3620 to i64
  %cz3628 = zext i1 %fc3621 to i64
  %vz3629 = zext i1 %fv3625 to i64
  %ns3630 = shl i64 %nz3626, 31
  %zs3631 = shl i64 %zz3627, 30
  %cs3632 = shl i64 %cz3628, 29
  %vs3633 = shl i64 %vz3629, 28
  %nzor3634 = or i64 %ns3630, %zs3631
  %cvor3635 = or i64 %cs3632, %vs3633
  %nzcv3636 = or i64 %nzor3634, %cvor3635
  %wp3637 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3636, ptr %wp3637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d30 word 0x1a9713e9
  %r3638.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3638 = load i64, ptr %r3638.p, align 8, !alias.scope !3, !noalias !4
  %c3639 = trunc i64 %r3638 to i32
  %r3640.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3640 = load i64, ptr %r3640.p, align 8, !alias.scope !3, !noalias !4
  %fsh3642 = lshr i64 %r3640, 30
  %ftr3643 = trunc i64 %fsh3642 to i1
  %cond3641 = xor i1 %ftr3643, true
  %sel3644 = select i1 %cond3641, i32 0, i32 %c3639
  %c3645 = zext i32 %sel3644 to i64
  %wp3646 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3645, ptr %wp3646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d34 word 0x0a090389
  %r3647.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3647 = load i64, ptr %r3647.p, align 8, !alias.scope !3, !noalias !4
  %c3648 = trunc i64 %r3647 to i32
  %r3649.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3649 = load i64, ptr %r3649.p, align 8, !alias.scope !3, !noalias !4
  %c3650 = trunc i64 %r3649 to i32
  %t3651 = and i32 %c3650, %c3648
  %c3652 = zext i32 %t3651 to i64
  %wp3653 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3652, ptr %wp3653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d38 word 0x37002829
  %r3654.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3654 = load i64, ptr %r3654.p, align 8, !alias.scope !3, !noalias !4
  %t3655 = and i64 %r3654, 1
  %cmp3656 = icmp ne i64 %t3655, 0
  br i1 %cmp3656, label %L_80028323c, label %L_800282d3c_ft
L_800282d44:
  ; @pc 0x800282d44 word 0xb94003e9
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %gmp3683 = inttoptr i64 %r3682 to ptr
  %gml3684 = load i32, ptr %gmp3683, align 1, !alias.scope !4, !noalias !3
  %c3685 = zext i32 %gml3684 to i64
  %wp3686 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3685, ptr %wp3686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d48 word 0x91002299
  %r3687.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3687 = load i64, ptr %r3687.p, align 8, !alias.scope !3, !noalias !4
  %t3688 = add i64 %r3687, 8
  %wp3689 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3688, ptr %wp3689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d4c word 0x9100227a
  %r3690.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3690 = load i64, ptr %r3690.p, align 8, !alias.scope !3, !noalias !4
  %t3691 = add i64 %r3690, 8
  %wp3692 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3691, ptr %wp3692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d50 word 0x9100427b
  %r3693.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3693 = load i64, ptr %r3693.p, align 8, !alias.scope !3, !noalias !4
  %t3694 = add i64 %r3693, 16
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3694, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d54 word 0x2a1803e8
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %c3697 = trunc i64 %r3696 to i32
  %t3698 = or i32 0, %c3697
  %c3699 = zext i32 %t3698 to i64
  %wp3700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3699, ptr %wp3700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d58 word 0x2a1603fc
  %r3701.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3701 = load i64, ptr %r3701.p, align 8, !alias.scope !3, !noalias !4
  %c3702 = trunc i64 %r3701 to i32
  %t3703 = or i32 0, %c3702
  %c3704 = zext i32 %t3703 to i64
  %wp3705 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c3704, ptr %wp3705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d5c word 0x34ffd669
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %c3707 = trunc i64 %r3706 to i32
  %cmp3708 = icmp eq i32 %c3707, 0
  br i1 %cmp3708, label %L_800282828, label %L_800282d60_ft
L_800282d64:
  ; @pc 0x800282d64 word 0xa9408289
  %r3709.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3709 = load i64, ptr %r3709.p, align 8, !alias.scope !3, !noalias !4
  %t3710 = add i64 %r3709, 8
  %t3711 = add i64 %t3710, 8
  %gmp3712 = inttoptr i64 %t3710 to ptr
  %gml3713 = load i64, ptr %gmp3712, align 1, !alias.scope !4, !noalias !3
  %gmp3714 = inttoptr i64 %t3711 to ptr
  %gml3715 = load i64, ptr %gmp3714, align 1, !alias.scope !4, !noalias !3
  %wp3716 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3713, ptr %wp3716, align 8, !alias.scope !3, !noalias !4
  %wp3717 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3715, ptr %wp3717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d68 word 0x6b18011f
  %r3718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3718 = load i64, ptr %r3718.p, align 8, !alias.scope !3, !noalias !4
  %c3719 = trunc i64 %r3718 to i32
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3720 = load i64, ptr %r3720.p, align 8, !alias.scope !3, !noalias !4
  %c3721 = trunc i64 %r3720 to i32
  %t3722 = sub i32 %c3719, %c3721
  %fn3723 = icmp slt i32 %t3722, 0
  %fz3724 = icmp eq i32 %t3722, 0
  %fc3725 = icmp uge i32 %c3719, %c3721
  %fx13726 = xor i32 %c3719, %c3721
  %fx23727 = xor i32 %c3719, %t3722
  %fva3728 = and i32 %fx13726, %fx23727
  %fv3729 = icmp slt i32 %fva3728, 0
  %nz3730 = zext i1 %fn3723 to i64
  %zz3731 = zext i1 %fz3724 to i64
  %cz3732 = zext i1 %fc3725 to i64
  %vz3733 = zext i1 %fv3729 to i64
  %ns3734 = shl i64 %nz3730, 31
  %zs3735 = shl i64 %zz3731, 30
  %cs3736 = shl i64 %cz3732, 29
  %vs3737 = shl i64 %vz3733, 28
  %nzor3738 = or i64 %ns3734, %zs3735
  %cvor3739 = or i64 %cs3736, %vs3737
  %nzcv3740 = or i64 %nzor3738, %cvor3739
  %wp3741 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3740, ptr %wp3741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d6c word 0x1a9f8308
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %c3743 = trunc i64 %r3742 to i32
  %r3744.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3744 = load i64, ptr %r3744.p, align 8, !alias.scope !3, !noalias !4
  %fsh3746 = lshr i64 %r3744, 29
  %ftr3747 = trunc i64 %fsh3746 to i1
  %fsh3748 = lshr i64 %r3744, 30
  %ftr3749 = trunc i64 %fsh3748 to i1
  %fnz3750 = xor i1 %ftr3749, true
  %cond3745 = and i1 %ftr3747, %fnz3750
  %sel3751 = select i1 %cond3745, i32 %c3743, i32 0
  %c3752 = zext i32 %sel3751 to i64
  %wp3753 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3752, ptr %wp3753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d70 word 0xb9401a82
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %t3755 = add i64 %r3754, 24
  %gmp3756 = inttoptr i64 %t3755 to ptr
  %gml3757 = load i32, ptr %gmp3756, align 1, !alias.scope !4, !noalias !3
  %c3758 = zext i32 %gml3757 to i64
  %wp3759 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3758, ptr %wp3759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d74 word 0xf868d921
  %r3760.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3760 = load i64, ptr %r3760.p, align 8, !alias.scope !3, !noalias !4
  %r3761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3761 = load i64, ptr %r3761.p, align 8, !alias.scope !3, !noalias !4
  %c3762 = trunc i64 %r3761 to i32
  %c3763 = sext i32 %c3762 to i64
  %t3764 = shl i64 %c3763, 3
  %t3765 = add i64 %r3760, %t3764
  %gmp3766 = inttoptr i64 %t3765 to ptr
  %gml3767 = load i64, ptr %gmp3766, align 1, !alias.scope !4, !noalias !3
  %wp3768 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml3767, ptr %wp3768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d78 word 0xf9400008
  %r3769.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3769 = load i64, ptr %r3769.p, align 8, !alias.scope !3, !noalias !4
  %gmp3770 = inttoptr i64 %r3769 to ptr
  %gml3771 = load i64, ptr %gmp3770, align 1, !alias.scope !4, !noalias !3
  %wp3772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3771, ptr %wp3772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d7c word 0xf9403d09
  %r3773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3773 = load i64, ptr %r3773.p, align 8, !alias.scope !3, !noalias !4
  %t3774 = add i64 %r3773, 120
  %gmp3775 = inttoptr i64 %t3774 to ptr
  %gml3776 = load i64, ptr %gmp3775, align 1, !alias.scope !4, !noalias !3
  %wp3777 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3776, ptr %wp3777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d80 word 0x910043e8
  %r3778.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3778 = load i64, ptr %r3778.p, align 8, !alias.scope !3, !noalias !4
  %t3779 = add i64 %r3778, 16
  %wp3780 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3779, ptr %wp3780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d84 word 0xd63f0120
  %r3781.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3781 = load i64, ptr %r3781.p, align 8, !alias.scope !3, !noalias !4
  %fp3782 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3781, ptr %fp3782, align 8, !alias.scope !3, !noalias !4
  %wp3783 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362371464, ptr %wp3783, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282d88 word 0xb94013e8
  %r3784.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3784 = load i64, ptr %r3784.p, align 8, !alias.scope !3, !noalias !4
  %t3785 = add i64 %r3784, 16
  %gmp3786 = inttoptr i64 %t3785 to ptr
  %gml3787 = load i32, ptr %gmp3786, align 1, !alias.scope !4, !noalias !3
  %c3788 = zext i32 %gml3787 to i64
  %wp3789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3788, ptr %wp3789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d8c word 0xb94002a9
  %r3790.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3790 = load i64, ptr %r3790.p, align 8, !alias.scope !3, !noalias !4
  %gmp3791 = inttoptr i64 %r3790 to ptr
  %gml3792 = load i32, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %c3793 = zext i32 %gml3792 to i64
  %wp3794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3793, ptr %wp3794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d90 word 0x6b09011f
  %r3795.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3795 = load i64, ptr %r3795.p, align 8, !alias.scope !3, !noalias !4
  %c3796 = trunc i64 %r3795 to i32
  %r3797.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3797 = load i64, ptr %r3797.p, align 8, !alias.scope !3, !noalias !4
  %c3798 = trunc i64 %r3797 to i32
  %t3799 = sub i32 %c3796, %c3798
  %fn3800 = icmp slt i32 %t3799, 0
  %fz3801 = icmp eq i32 %t3799, 0
  %fc3802 = icmp uge i32 %c3796, %c3798
  %fx13803 = xor i32 %c3796, %c3798
  %fx23804 = xor i32 %c3796, %t3799
  %fva3805 = and i32 %fx13803, %fx23804
  %fv3806 = icmp slt i32 %fva3805, 0
  %nz3807 = zext i1 %fn3800 to i64
  %zz3808 = zext i1 %fz3801 to i64
  %cz3809 = zext i1 %fc3802 to i64
  %vz3810 = zext i1 %fv3806 to i64
  %ns3811 = shl i64 %nz3807, 31
  %zs3812 = shl i64 %zz3808, 30
  %cs3813 = shl i64 %cz3809, 29
  %vs3814 = shl i64 %vz3810, 28
  %nzor3815 = or i64 %ns3811, %zs3812
  %cvor3816 = or i64 %cs3813, %vs3814
  %nzcv3817 = or i64 %nzor3815, %cvor3816
  %wp3818 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3817, ptr %wp3818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d94 word 0x540002a1
  %r3819.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3819 = load i64, ptr %r3819.p, align 8, !alias.scope !3, !noalias !4
  %fsh3821 = lshr i64 %r3819, 30
  %ftr3822 = trunc i64 %fsh3821 to i1
  %cond3820 = xor i1 %ftr3822, true
  br i1 %cond3820, label %L_800282de8, label %L_800282d98_ft
L_800282db4:
  ; @pc 0x800282db4 word 0x386b692c
  %r3886.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3886 = load i64, ptr %r3886.p, align 8, !alias.scope !3, !noalias !4
  %r3887.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3887 = load i64, ptr %r3887.p, align 8, !alias.scope !3, !noalias !4
  %t3888 = add i64 %r3886, %r3887
  %gmp3889 = inttoptr i64 %t3888 to ptr
  %gml3890 = load i8, ptr %gmp3889, align 1, !alias.scope !4, !noalias !3
  %c3891 = zext i8 %gml3890 to i64
  %wp3892 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3891, ptr %wp3892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282db8 word 0x7100019f
  %r3893.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3893 = load i64, ptr %r3893.p, align 8, !alias.scope !3, !noalias !4
  %c3894 = trunc i64 %r3893 to i32
  %t3895 = sub i32 %c3894, 0
  %fn3896 = icmp slt i32 %t3895, 0
  %fz3897 = icmp eq i32 %t3895, 0
  %fc3898 = icmp uge i32 %c3894, 0
  %fx13899 = xor i32 %c3894, 0
  %fx23900 = xor i32 %c3894, %t3895
  %fva3901 = and i32 %fx13899, %fx23900
  %fv3902 = icmp slt i32 %fva3901, 0
  %nz3903 = zext i1 %fn3896 to i64
  %zz3904 = zext i1 %fz3897 to i64
  %cz3905 = zext i1 %fc3898 to i64
  %vz3906 = zext i1 %fv3902 to i64
  %ns3907 = shl i64 %nz3903, 31
  %zs3908 = shl i64 %zz3904, 30
  %cs3909 = shl i64 %cz3905, 29
  %vs3910 = shl i64 %vz3906, 28
  %nzor3911 = or i64 %ns3907, %zs3908
  %cvor3912 = or i64 %cs3909, %vs3910
  %nzcv3913 = or i64 %nzor3911, %cvor3912
  %wp3914 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3913, ptr %wp3914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dbc word 0x386b694d
  %r3915.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3915 = load i64, ptr %r3915.p, align 8, !alias.scope !3, !noalias !4
  %r3916.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3916 = load i64, ptr %r3916.p, align 8, !alias.scope !3, !noalias !4
  %t3917 = add i64 %r3915, %r3916
  %gmp3918 = inttoptr i64 %t3917 to ptr
  %gml3919 = load i8, ptr %gmp3918, align 1, !alias.scope !4, !noalias !3
  %c3920 = zext i8 %gml3919 to i64
  %wp3921 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3920, ptr %wp3921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dc0 word 0x1a9f1108
  %r3922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3922 = load i64, ptr %r3922.p, align 8, !alias.scope !3, !noalias !4
  %c3923 = trunc i64 %r3922 to i32
  %r3924.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3924 = load i64, ptr %r3924.p, align 8, !alias.scope !3, !noalias !4
  %fsh3926 = lshr i64 %r3924, 30
  %ftr3927 = trunc i64 %fsh3926 to i1
  %cond3925 = xor i1 %ftr3927, true
  %sel3928 = select i1 %cond3925, i32 %c3923, i32 0
  %c3929 = zext i32 %sel3928 to i64
  %wp3930 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3929, ptr %wp3930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dc4 word 0x6b0d019f
  %r3931.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3931 = load i64, ptr %r3931.p, align 8, !alias.scope !3, !noalias !4
  %c3932 = trunc i64 %r3931 to i32
  %r3933.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3933 = load i64, ptr %r3933.p, align 8, !alias.scope !3, !noalias !4
  %c3934 = trunc i64 %r3933 to i32
  %t3935 = sub i32 %c3932, %c3934
  %fn3936 = icmp slt i32 %t3935, 0
  %fz3937 = icmp eq i32 %t3935, 0
  %fc3938 = icmp uge i32 %c3932, %c3934
  %fx13939 = xor i32 %c3932, %c3934
  %fx23940 = xor i32 %c3932, %t3935
  %fva3941 = and i32 %fx13939, %fx23940
  %fv3942 = icmp slt i32 %fva3941, 0
  %nz3943 = zext i1 %fn3936 to i64
  %zz3944 = zext i1 %fz3937 to i64
  %cz3945 = zext i1 %fc3938 to i64
  %vz3946 = zext i1 %fv3942 to i64
  %ns3947 = shl i64 %nz3943, 31
  %zs3948 = shl i64 %zz3944, 30
  %cs3949 = shl i64 %cz3945, 29
  %vs3950 = shl i64 %vz3946, 28
  %nzor3951 = or i64 %ns3947, %zs3948
  %cvor3952 = or i64 %cs3949, %vs3950
  %nzcv3953 = or i64 %nzor3951, %cvor3952
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3953, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dc8 word 0x5a99372e
  %r3955.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3955 = load i64, ptr %r3955.p, align 8, !alias.scope !3, !noalias !4
  %c3956 = trunc i64 %r3955 to i32
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %c3958 = trunc i64 %r3957 to i32
  %t3959 = sub i32 0, %c3958
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %fsh3962 = lshr i64 %r3960, 29
  %ftr3963 = trunc i64 %fsh3962 to i1
  %cond3961 = xor i1 %ftr3963, true
  %sel3964 = select i1 %cond3961, i32 %c3956, i32 %t3959
  %c3965 = zext i32 %sel3964 to i64
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3965, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dcc word 0x1a8e0108
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %c3968 = trunc i64 %r3967 to i32
  %r3969.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3969 = load i64, ptr %r3969.p, align 8, !alias.scope !3, !noalias !4
  %c3970 = trunc i64 %r3969 to i32
  %r3971.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3971 = load i64, ptr %r3971.p, align 8, !alias.scope !3, !noalias !4
  %fsh3973 = lshr i64 %r3971, 30
  %cond3972 = trunc i64 %fsh3973 to i1
  %sel3974 = select i1 %cond3972, i32 %c3968, i32 %c3970
  %c3975 = zext i32 %sel3974 to i64
  %wp3976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3975, ptr %wp3976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dd0 word 0x3400094c
  %r3977.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3977 = load i64, ptr %r3977.p, align 8, !alias.scope !3, !noalias !4
  %c3978 = trunc i64 %r3977 to i32
  %cmp3979 = icmp eq i32 %c3978, 0
  br i1 %cmp3979, label %L_800282ef8, label %L_800282dd4_ft
L_800282de8:
  ; @pc 0x800282de8 word 0x2a1f03e8
  %t4036 = or i32 0, 0
  %c4037 = zext i32 %t4036 to i64
  %wp4038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4037, ptr %wp4038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dec word 0x14000043
  br label %L_800282ef8
L_800282df0:
  ; @pc 0x800282df0 word 0xa9408288
  %r4039.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4039 = load i64, ptr %r4039.p, align 8, !alias.scope !3, !noalias !4
  %t4040 = add i64 %r4039, 8
  %t4041 = add i64 %t4040, 8
  %gmp4042 = inttoptr i64 %t4040 to ptr
  %gml4043 = load i64, ptr %gmp4042, align 1, !alias.scope !4, !noalias !3
  %gmp4044 = inttoptr i64 %t4041 to ptr
  %gml4045 = load i64, ptr %gmp4044, align 1, !alias.scope !4, !noalias !3
  %wp4046 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4043, ptr %wp4046, align 8, !alias.scope !3, !noalias !4
  %wp4047 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4045, ptr %wp4047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282df4 word 0xb9401a82
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = add i64 %r4048, 24
  %gmp4050 = inttoptr i64 %t4049 to ptr
  %gml4051 = load i32, ptr %gmp4050, align 1, !alias.scope !4, !noalias !3
  %c4052 = zext i32 %gml4051 to i64
  %wp4053 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4052, ptr %wp4053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282df8 word 0xf9400101
  %r4054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4054 = load i64, ptr %r4054.p, align 8, !alias.scope !3, !noalias !4
  %gmp4055 = inttoptr i64 %r4054 to ptr
  %gml4056 = load i64, ptr %gmp4055, align 1, !alias.scope !4, !noalias !3
  %wp4057 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml4056, ptr %wp4057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dfc word 0xf9400008
  %r4058.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4058 = load i64, ptr %r4058.p, align 8, !alias.scope !3, !noalias !4
  %gmp4059 = inttoptr i64 %r4058 to ptr
  %gml4060 = load i64, ptr %gmp4059, align 1, !alias.scope !4, !noalias !3
  %wp4061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4060, ptr %wp4061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e00 word 0xf9403d09
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %t4063 = add i64 %r4062, 120
  %gmp4064 = inttoptr i64 %t4063 to ptr
  %gml4065 = load i64, ptr %gmp4064, align 1, !alias.scope !4, !noalias !3
  %wp4066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4065, ptr %wp4066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e04 word 0x910043e8
  %r4067.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4067 = load i64, ptr %r4067.p, align 8, !alias.scope !3, !noalias !4
  %t4068 = add i64 %r4067, 16
  %wp4069 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4068, ptr %wp4069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e08 word 0xd63f0120
  %r4070.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4070 = load i64, ptr %r4070.p, align 8, !alias.scope !3, !noalias !4
  %fp4071 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4070, ptr %fp4071, align 8, !alias.scope !3, !noalias !4
  %wp4072 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362371596, ptr %wp4072, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282e0c word 0xb94013e8
  %r4073.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4073 = load i64, ptr %r4073.p, align 8, !alias.scope !3, !noalias !4
  %t4074 = add i64 %r4073, 16
  %gmp4075 = inttoptr i64 %t4074 to ptr
  %gml4076 = load i32, ptr %gmp4075, align 1, !alias.scope !4, !noalias !3
  %c4077 = zext i32 %gml4076 to i64
  %wp4078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4077, ptr %wp4078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e10 word 0xb94002a9
  %r4079.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4079 = load i64, ptr %r4079.p, align 8, !alias.scope !3, !noalias !4
  %gmp4080 = inttoptr i64 %r4079 to ptr
  %gml4081 = load i32, ptr %gmp4080, align 1, !alias.scope !4, !noalias !3
  %c4082 = zext i32 %gml4081 to i64
  %wp4083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4082, ptr %wp4083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e14 word 0x6b09011f
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %c4085 = trunc i64 %r4084 to i32
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4086 = load i64, ptr %r4086.p, align 8, !alias.scope !3, !noalias !4
  %c4087 = trunc i64 %r4086 to i32
  %t4088 = sub i32 %c4085, %c4087
  %fn4089 = icmp slt i32 %t4088, 0
  %fz4090 = icmp eq i32 %t4088, 0
  %fc4091 = icmp uge i32 %c4085, %c4087
  %fx14092 = xor i32 %c4085, %c4087
  %fx24093 = xor i32 %c4085, %t4088
  %fva4094 = and i32 %fx14092, %fx24093
  %fv4095 = icmp slt i32 %fva4094, 0
  %nz4096 = zext i1 %fn4089 to i64
  %zz4097 = zext i1 %fz4090 to i64
  %cz4098 = zext i1 %fc4091 to i64
  %vz4099 = zext i1 %fv4095 to i64
  %ns4100 = shl i64 %nz4096, 31
  %zs4101 = shl i64 %zz4097, 30
  %cs4102 = shl i64 %cz4098, 29
  %vs4103 = shl i64 %vz4099, 28
  %nzor4104 = or i64 %ns4100, %zs4101
  %cvor4105 = or i64 %cs4102, %vs4103
  %nzcv4106 = or i64 %nzor4104, %cvor4105
  %wp4107 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4106, ptr %wp4107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e18 word 0x54001681
  %r4108.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4108 = load i64, ptr %r4108.p, align 8, !alias.scope !3, !noalias !4
  %fsh4110 = lshr i64 %r4108, 30
  %ftr4111 = trunc i64 %fsh4110 to i1
  %cond4109 = xor i1 %ftr4111, true
  br i1 %cond4109, label %L_8002830e8, label %L_800282e1c_ft
L_800282e38:
  ; @pc 0x800282e38 word 0x386b692c
  %r4175.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4175 = load i64, ptr %r4175.p, align 8, !alias.scope !3, !noalias !4
  %r4176.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4176 = load i64, ptr %r4176.p, align 8, !alias.scope !3, !noalias !4
  %t4177 = add i64 %r4175, %r4176
  %gmp4178 = inttoptr i64 %t4177 to ptr
  %gml4179 = load i8, ptr %gmp4178, align 1, !alias.scope !4, !noalias !3
  %c4180 = zext i8 %gml4179 to i64
  %wp4181 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4180, ptr %wp4181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e3c word 0x7100019f
  %r4182.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4182 = load i64, ptr %r4182.p, align 8, !alias.scope !3, !noalias !4
  %c4183 = trunc i64 %r4182 to i32
  %t4184 = sub i32 %c4183, 0
  %fn4185 = icmp slt i32 %t4184, 0
  %fz4186 = icmp eq i32 %t4184, 0
  %fc4187 = icmp uge i32 %c4183, 0
  %fx14188 = xor i32 %c4183, 0
  %fx24189 = xor i32 %c4183, %t4184
  %fva4190 = and i32 %fx14188, %fx24189
  %fv4191 = icmp slt i32 %fva4190, 0
  %nz4192 = zext i1 %fn4185 to i64
  %zz4193 = zext i1 %fz4186 to i64
  %cz4194 = zext i1 %fc4187 to i64
  %vz4195 = zext i1 %fv4191 to i64
  %ns4196 = shl i64 %nz4192, 31
  %zs4197 = shl i64 %zz4193, 30
  %cs4198 = shl i64 %cz4194, 29
  %vs4199 = shl i64 %vz4195, 28
  %nzor4200 = or i64 %ns4196, %zs4197
  %cvor4201 = or i64 %cs4198, %vs4199
  %nzcv4202 = or i64 %nzor4200, %cvor4201
  %wp4203 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4202, ptr %wp4203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e40 word 0x386b694d
  %r4204.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4204 = load i64, ptr %r4204.p, align 8, !alias.scope !3, !noalias !4
  %r4205.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4205 = load i64, ptr %r4205.p, align 8, !alias.scope !3, !noalias !4
  %t4206 = add i64 %r4204, %r4205
  %gmp4207 = inttoptr i64 %t4206 to ptr
  %gml4208 = load i8, ptr %gmp4207, align 1, !alias.scope !4, !noalias !3
  %c4209 = zext i8 %gml4208 to i64
  %wp4210 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4209, ptr %wp4210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e44 word 0x1a9f1108
  %r4211.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4211 = load i64, ptr %r4211.p, align 8, !alias.scope !3, !noalias !4
  %c4212 = trunc i64 %r4211 to i32
  %r4213.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4213 = load i64, ptr %r4213.p, align 8, !alias.scope !3, !noalias !4
  %fsh4215 = lshr i64 %r4213, 30
  %ftr4216 = trunc i64 %fsh4215 to i1
  %cond4214 = xor i1 %ftr4216, true
  %sel4217 = select i1 %cond4214, i32 %c4212, i32 0
  %c4218 = zext i32 %sel4217 to i64
  %wp4219 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4218, ptr %wp4219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e48 word 0x6b0d019f
  %r4220.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4220 = load i64, ptr %r4220.p, align 8, !alias.scope !3, !noalias !4
  %c4221 = trunc i64 %r4220 to i32
  %r4222.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4222 = load i64, ptr %r4222.p, align 8, !alias.scope !3, !noalias !4
  %c4223 = trunc i64 %r4222 to i32
  %t4224 = sub i32 %c4221, %c4223
  %fn4225 = icmp slt i32 %t4224, 0
  %fz4226 = icmp eq i32 %t4224, 0
  %fc4227 = icmp uge i32 %c4221, %c4223
  %fx14228 = xor i32 %c4221, %c4223
  %fx24229 = xor i32 %c4221, %t4224
  %fva4230 = and i32 %fx14228, %fx24229
  %fv4231 = icmp slt i32 %fva4230, 0
  %nz4232 = zext i1 %fn4225 to i64
  %zz4233 = zext i1 %fz4226 to i64
  %cz4234 = zext i1 %fc4227 to i64
  %vz4235 = zext i1 %fv4231 to i64
  %ns4236 = shl i64 %nz4232, 31
  %zs4237 = shl i64 %zz4233, 30
  %cs4238 = shl i64 %cz4234, 29
  %vs4239 = shl i64 %vz4235, 28
  %nzor4240 = or i64 %ns4236, %zs4237
  %cvor4241 = or i64 %cs4238, %vs4239
  %nzcv4242 = or i64 %nzor4240, %cvor4241
  %wp4243 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4242, ptr %wp4243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e4c word 0x5a99372e
  %r4244.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4244 = load i64, ptr %r4244.p, align 8, !alias.scope !3, !noalias !4
  %c4245 = trunc i64 %r4244 to i32
  %r4246.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4246 = load i64, ptr %r4246.p, align 8, !alias.scope !3, !noalias !4
  %c4247 = trunc i64 %r4246 to i32
  %t4248 = sub i32 0, %c4247
  %r4249.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4249 = load i64, ptr %r4249.p, align 8, !alias.scope !3, !noalias !4
  %fsh4251 = lshr i64 %r4249, 29
  %ftr4252 = trunc i64 %fsh4251 to i1
  %cond4250 = xor i1 %ftr4252, true
  %sel4253 = select i1 %cond4250, i32 %c4245, i32 %t4248
  %c4254 = zext i32 %sel4253 to i64
  %wp4255 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c4254, ptr %wp4255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e50 word 0x1a8e0108
  %r4256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4256 = load i64, ptr %r4256.p, align 8, !alias.scope !3, !noalias !4
  %c4257 = trunc i64 %r4256 to i32
  %r4258.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4258 = load i64, ptr %r4258.p, align 8, !alias.scope !3, !noalias !4
  %c4259 = trunc i64 %r4258 to i32
  %r4260.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4260 = load i64, ptr %r4260.p, align 8, !alias.scope !3, !noalias !4
  %fsh4262 = lshr i64 %r4260, 30
  %cond4261 = trunc i64 %fsh4262 to i1
  %sel4263 = select i1 %cond4261, i32 %c4257, i32 %c4259
  %c4264 = zext i32 %sel4263 to i64
  %wp4265 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4264, ptr %wp4265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e54 word 0x340014cc
  %r4266.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4266 = load i64, ptr %r4266.p, align 8, !alias.scope !3, !noalias !4
  %c4267 = trunc i64 %r4266 to i32
  %cmp4268 = icmp eq i32 %c4267, 0
  br i1 %cmp4268, label %L_8002830ec, label %L_800282e58_ft
L_800282e70:
  ; @pc 0x800282e70 word 0x51000508
  %r4325.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4325 = load i64, ptr %r4325.p, align 8, !alias.scope !3, !noalias !4
  %c4326 = trunc i64 %r4325 to i32
  %t4327 = sub i32 %c4326, 1
  %c4328 = zext i32 %t4327 to i64
  %wp4329 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4328, ptr %wp4329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e74 word 0x7100191f
  %r4330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4330 = load i64, ptr %r4330.p, align 8, !alias.scope !3, !noalias !4
  %c4331 = trunc i64 %r4330 to i32
  %t4332 = sub i32 %c4331, 6
  %fn4333 = icmp slt i32 %t4332, 0
  %fz4334 = icmp eq i32 %t4332, 0
  %fc4335 = icmp uge i32 %c4331, 6
  %fx14336 = xor i32 %c4331, 6
  %fx24337 = xor i32 %c4331, %t4332
  %fva4338 = and i32 %fx14336, %fx24337
  %fv4339 = icmp slt i32 %fva4338, 0
  %nz4340 = zext i1 %fn4333 to i64
  %zz4341 = zext i1 %fz4334 to i64
  %cz4342 = zext i1 %fc4335 to i64
  %vz4343 = zext i1 %fv4339 to i64
  %ns4344 = shl i64 %nz4340, 31
  %zs4345 = shl i64 %zz4341, 30
  %cs4346 = shl i64 %cz4342, 29
  %vs4347 = shl i64 %vz4343, 28
  %nzor4348 = or i64 %ns4344, %zs4345
  %cvor4349 = or i64 %cs4346, %vs4347
  %nzcv4350 = or i64 %nzor4348, %cvor4349
  %wp4351 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4350, ptr %wp4351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e78 word 0x54000588
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %fsh4354 = lshr i64 %r4352, 29
  %ftr4355 = trunc i64 %fsh4354 to i1
  %fsh4356 = lshr i64 %r4352, 30
  %ftr4357 = trunc i64 %fsh4356 to i1
  %fnz4358 = xor i1 %ftr4357, true
  %cond4353 = and i1 %ftr4355, %fnz4358
  br i1 %cond4353, label %L_800282f28, label %L_800282e7c_ft
L_800282e8c:
  ; @pc 0x800282e8c word 0xb9401be8
  %r4374.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4374 = load i64, ptr %r4374.p, align 8, !alias.scope !3, !noalias !4
  %t4375 = add i64 %r4374, 24
  %gmp4376 = inttoptr i64 %t4375 to ptr
  %gml4377 = load i32, ptr %gmp4376, align 1, !alias.scope !4, !noalias !3
  %c4378 = zext i32 %gml4377 to i64
  %wp4379 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4378, ptr %wp4379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e90 word 0xb940da69
  %r4380.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4380 = load i64, ptr %r4380.p, align 8, !alias.scope !3, !noalias !4
  %t4381 = add i64 %r4380, 216
  %gmp4382 = inttoptr i64 %t4381 to ptr
  %gml4383 = load i32, ptr %gmp4382, align 1, !alias.scope !4, !noalias !3
  %c4384 = zext i32 %gml4383 to i64
  %wp4385 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4384, ptr %wp4385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e94 word 0x6b09011f
  %r4386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4386 = load i64, ptr %r4386.p, align 8, !alias.scope !3, !noalias !4
  %c4387 = trunc i64 %r4386 to i32
  %r4388.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4388 = load i64, ptr %r4388.p, align 8, !alias.scope !3, !noalias !4
  %c4389 = trunc i64 %r4388 to i32
  %t4390 = sub i32 %c4387, %c4389
  %fn4391 = icmp slt i32 %t4390, 0
  %fz4392 = icmp eq i32 %t4390, 0
  %fc4393 = icmp uge i32 %c4387, %c4389
  %fx14394 = xor i32 %c4387, %c4389
  %fx24395 = xor i32 %c4387, %t4390
  %fva4396 = and i32 %fx14394, %fx24395
  %fv4397 = icmp slt i32 %fva4396, 0
  %nz4398 = zext i1 %fn4391 to i64
  %zz4399 = zext i1 %fz4392 to i64
  %cz4400 = zext i1 %fc4393 to i64
  %vz4401 = zext i1 %fv4397 to i64
  %ns4402 = shl i64 %nz4398, 31
  %zs4403 = shl i64 %zz4399, 30
  %cs4404 = shl i64 %cz4400, 29
  %vs4405 = shl i64 %vz4401, 28
  %nzor4406 = or i64 %ns4402, %zs4403
  %cvor4407 = or i64 %cs4404, %vs4405
  %nzcv4408 = or i64 %nzor4406, %cvor4407
  %wp4409 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4408, ptr %wp4409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e98 word 0x540013ad
  %r4410.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4410 = load i64, ptr %r4410.p, align 8, !alias.scope !3, !noalias !4
  %fsh4412 = lshr i64 %r4410, 30
  %ftr4413 = trunc i64 %fsh4412 to i1
  %fsh4414 = lshr i64 %r4410, 31
  %ftr4415 = trunc i64 %fsh4414 to i1
  %fsh4416 = lshr i64 %r4410, 28
  %ftr4417 = trunc i64 %fsh4416 to i1
  %fnz4418 = xor i1 %ftr4413, true
  %feq4419 = icmp eq i1 %ftr4415, %ftr4417
  %fgt4420 = and i1 %fnz4418, %feq4419
  %cond4411 = xor i1 %fgt4420, true
  br i1 %cond4411, label %L_80028310c, label %L_800282e9c
L_800282e9c:
  ; @pc 0x800282e9c word 0x52800028
  %c4421 = zext i32 1 to i64
  %wp4422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4421, ptr %wp4422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ea0 word 0x17ffff29
  br label %L_800282b44
L_800282ea4:
  ; @pc 0x800282ea4 word 0xb9401be8
  %r4423.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4423 = load i64, ptr %r4423.p, align 8, !alias.scope !3, !noalias !4
  %t4424 = add i64 %r4423, 24
  %gmp4425 = inttoptr i64 %t4424 to ptr
  %gml4426 = load i32, ptr %gmp4425, align 1, !alias.scope !4, !noalias !3
  %c4427 = zext i32 %gml4426 to i64
  %wp4428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4427, ptr %wp4428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ea8 word 0xb940da69
  %r4429.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4429 = load i64, ptr %r4429.p, align 8, !alias.scope !3, !noalias !4
  %t4430 = add i64 %r4429, 216
  %gmp4431 = inttoptr i64 %t4430 to ptr
  %gml4432 = load i32, ptr %gmp4431, align 1, !alias.scope !4, !noalias !3
  %c4433 = zext i32 %gml4432 to i64
  %wp4434 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4433, ptr %wp4434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282eac word 0x6b09011f
  %r4435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4435 = load i64, ptr %r4435.p, align 8, !alias.scope !3, !noalias !4
  %c4436 = trunc i64 %r4435 to i32
  %r4437.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4437 = load i64, ptr %r4437.p, align 8, !alias.scope !3, !noalias !4
  %c4438 = trunc i64 %r4437 to i32
  %t4439 = sub i32 %c4436, %c4438
  %fn4440 = icmp slt i32 %t4439, 0
  %fz4441 = icmp eq i32 %t4439, 0
  %fc4442 = icmp uge i32 %c4436, %c4438
  %fx14443 = xor i32 %c4436, %c4438
  %fx24444 = xor i32 %c4436, %t4439
  %fva4445 = and i32 %fx14443, %fx24444
  %fv4446 = icmp slt i32 %fva4445, 0
  %nz4447 = zext i1 %fn4440 to i64
  %zz4448 = zext i1 %fz4441 to i64
  %cz4449 = zext i1 %fc4442 to i64
  %vz4450 = zext i1 %fv4446 to i64
  %ns4451 = shl i64 %nz4447, 31
  %zs4452 = shl i64 %zz4448, 30
  %cs4453 = shl i64 %cz4449, 29
  %vs4454 = shl i64 %vz4450, 28
  %nzor4455 = or i64 %ns4451, %zs4452
  %cvor4456 = or i64 %cs4453, %vs4454
  %nzcv4457 = or i64 %nzor4455, %cvor4456
  %wp4458 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4457, ptr %wp4458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282eb0 word 0x54ffff68
  %r4459.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4459 = load i64, ptr %r4459.p, align 8, !alias.scope !3, !noalias !4
  %fsh4461 = lshr i64 %r4459, 29
  %ftr4462 = trunc i64 %fsh4461 to i1
  %fsh4463 = lshr i64 %r4459, 30
  %ftr4464 = trunc i64 %fsh4463 to i1
  %fnz4465 = xor i1 %ftr4464, true
  %cond4460 = and i1 %ftr4462, %fnz4465
  br i1 %cond4460, label %L_800282e9c, label %L_800282eb4
L_800282eb4:
  ; @pc 0x800282eb4 word 0x5a9f23e8
  %t4466 = xor i32 0, -1
  %r4467.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4467 = load i64, ptr %r4467.p, align 8, !alias.scope !3, !noalias !4
  %fsh4469 = lshr i64 %r4467, 29
  %cond4468 = trunc i64 %fsh4469 to i1
  %sel4470 = select i1 %cond4468, i32 0, i32 %t4466
  %c4471 = zext i32 %sel4470 to i64
  %wp4472 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4471, ptr %wp4472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282eb8 word 0x17ffff23
  br label %L_800282b44
L_800282ebc:
  ; @pc 0x800282ebc word 0x51000508
  %r4473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4473 = load i64, ptr %r4473.p, align 8, !alias.scope !3, !noalias !4
  %c4474 = trunc i64 %r4473 to i32
  %t4475 = sub i32 %c4474, 1
  %c4476 = zext i32 %t4475 to i64
  %wp4477 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4476, ptr %wp4477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ec0 word 0x7100191f
  %r4478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4478 = load i64, ptr %r4478.p, align 8, !alias.scope !3, !noalias !4
  %c4479 = trunc i64 %r4478 to i32
  %t4480 = sub i32 %c4479, 6
  %fn4481 = icmp slt i32 %t4480, 0
  %fz4482 = icmp eq i32 %t4480, 0
  %fc4483 = icmp uge i32 %c4479, 6
  %fx14484 = xor i32 %c4479, 6
  %fx24485 = xor i32 %c4479, %t4480
  %fva4486 = and i32 %fx14484, %fx24485
  %fv4487 = icmp slt i32 %fva4486, 0
  %nz4488 = zext i1 %fn4481 to i64
  %zz4489 = zext i1 %fz4482 to i64
  %cz4490 = zext i1 %fc4483 to i64
  %vz4491 = zext i1 %fv4487 to i64
  %ns4492 = shl i64 %nz4488, 31
  %zs4493 = shl i64 %zz4489, 30
  %cs4494 = shl i64 %cz4490, 29
  %vs4495 = shl i64 %vz4491, 28
  %nzor4496 = or i64 %ns4492, %zs4493
  %cvor4497 = or i64 %cs4494, %vs4495
  %nzcv4498 = or i64 %nzor4496, %cvor4497
  %wp4499 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4498, ptr %wp4499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ec4 word 0x540025c8
  %r4500.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4500 = load i64, ptr %r4500.p, align 8, !alias.scope !3, !noalias !4
  %fsh4502 = lshr i64 %r4500, 29
  %ftr4503 = trunc i64 %fsh4502 to i1
  %fsh4504 = lshr i64 %r4500, 30
  %ftr4505 = trunc i64 %fsh4504 to i1
  %fnz4506 = xor i1 %ftr4505, true
  %cond4501 = and i1 %ftr4503, %fnz4506
  br i1 %cond4501, label %L_80028337c, label %L_800282ec8_ft
L_800282ee0:
  ; @pc 0x800282ee0 word 0xb9401be8
  %r4526.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4526 = load i64, ptr %r4526.p, align 8, !alias.scope !3, !noalias !4
  %t4527 = add i64 %r4526, 24
  %gmp4528 = inttoptr i64 %t4527 to ptr
  %gml4529 = load i32, ptr %gmp4528, align 1, !alias.scope !4, !noalias !3
  %c4530 = zext i32 %gml4529 to i64
  %wp4531 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4530, ptr %wp4531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ee4 word 0xb940da69
  %r4532.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4532 = load i64, ptr %r4532.p, align 8, !alias.scope !3, !noalias !4
  %t4533 = add i64 %r4532, 216
  %gmp4534 = inttoptr i64 %t4533 to ptr
  %gml4535 = load i32, ptr %gmp4534, align 1, !alias.scope !4, !noalias !3
  %c4536 = zext i32 %gml4535 to i64
  %wp4537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4536, ptr %wp4537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ee8 word 0x6b09011f
  %r4538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4538 = load i64, ptr %r4538.p, align 8, !alias.scope !3, !noalias !4
  %c4539 = trunc i64 %r4538 to i32
  %r4540.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4540 = load i64, ptr %r4540.p, align 8, !alias.scope !3, !noalias !4
  %c4541 = trunc i64 %r4540 to i32
  %t4542 = sub i32 %c4539, %c4541
  %fn4543 = icmp slt i32 %t4542, 0
  %fz4544 = icmp eq i32 %t4542, 0
  %fc4545 = icmp uge i32 %c4539, %c4541
  %fx14546 = xor i32 %c4539, %c4541
  %fx24547 = xor i32 %c4539, %t4542
  %fva4548 = and i32 %fx14546, %fx24547
  %fv4549 = icmp slt i32 %fva4548, 0
  %nz4550 = zext i1 %fn4543 to i64
  %zz4551 = zext i1 %fz4544 to i64
  %cz4552 = zext i1 %fc4545 to i64
  %vz4553 = zext i1 %fv4549 to i64
  %ns4554 = shl i64 %nz4550, 31
  %zs4555 = shl i64 %zz4551, 30
  %cs4556 = shl i64 %cz4552, 29
  %vs4557 = shl i64 %vz4553, 28
  %nzor4558 = or i64 %ns4554, %zs4555
  %cvor4559 = or i64 %cs4556, %vs4557
  %nzcv4560 = or i64 %nzor4558, %cvor4559
  %wp4561 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4560, ptr %wp4561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282eec word 0x54ffc9ac
  %r4562.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4562 = load i64, ptr %r4562.p, align 8, !alias.scope !3, !noalias !4
  %fsh4564 = lshr i64 %r4562, 30
  %ftr4565 = trunc i64 %fsh4564 to i1
  %fsh4566 = lshr i64 %r4562, 31
  %ftr4567 = trunc i64 %fsh4566 to i1
  %fsh4568 = lshr i64 %r4562, 28
  %ftr4569 = trunc i64 %fsh4568 to i1
  %fnz4570 = xor i1 %ftr4565, true
  %feq4571 = icmp eq i1 %ftr4567, %ftr4569
  %cond4563 = and i1 %fnz4570, %feq4571
  br i1 %cond4563, label %L_800282820, label %L_800282ef0
L_800282ef0:
  ; @pc 0x800282ef0 word 0x5a9fa3e8
  %t4572 = xor i32 0, -1
  %r4573.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4573 = load i64, ptr %r4573.p, align 8, !alias.scope !3, !noalias !4
  %fsh4575 = lshr i64 %r4573, 31
  %ftr4576 = trunc i64 %fsh4575 to i1
  %fsh4577 = lshr i64 %r4573, 28
  %ftr4578 = trunc i64 %fsh4577 to i1
  %cond4574 = icmp eq i1 %ftr4576, %ftr4578
  %sel4579 = select i1 %cond4574, i32 0, i32 %t4572
  %c4580 = zext i32 %sel4579 to i64
  %wp4581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4580, ptr %wp4581, align 8, !alias.scope !3, !noalias !4
  br label %L_800282ef4
L_800282ef4:
  ; @pc 0x800282ef4 word 0xb9400bfb
  %r4582.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4582 = load i64, ptr %r4582.p, align 8, !alias.scope !3, !noalias !4
  %t4583 = add i64 %r4582, 8
  %gmp4584 = inttoptr i64 %t4583 to ptr
  %gml4585 = load i32, ptr %gmp4584, align 1, !alias.scope !4, !noalias !3
  %c4586 = zext i32 %gml4585 to i64
  %wp4587 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c4586, ptr %wp4587, align 8, !alias.scope !3, !noalias !4
  br label %L_800282ef8
L_800282ef8:
  ; @pc 0x800282ef8 word 0xaa1f03e0
  %t4588 = or i64 0, 0
  %wp4589 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4588, ptr %wp4589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282efc word 0x3100071f
  %r4590.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4590 = load i64, ptr %r4590.p, align 8, !alias.scope !3, !noalias !4
  %c4591 = trunc i64 %r4590 to i32
  %t4592 = add i32 %c4591, 1
  %fn4593 = icmp slt i32 %t4592, 0
  %fz4594 = icmp eq i32 %t4592, 0
  %fc4595 = icmp ult i32 %t4592, %c4591
  %fx14596 = xor i32 %c4591, %t4592
  %fx24597 = xor i32 1, %t4592
  %fva4598 = and i32 %fx14596, %fx24597
  %fv4599 = icmp slt i32 %fva4598, 0
  %nz4600 = zext i1 %fn4593 to i64
  %zz4601 = zext i1 %fz4594 to i64
  %cz4602 = zext i1 %fc4595 to i64
  %vz4603 = zext i1 %fv4599 to i64
  %ns4604 = shl i64 %nz4600, 31
  %zs4605 = shl i64 %zz4601, 30
  %cs4606 = shl i64 %cz4602, 29
  %vs4607 = shl i64 %vz4603, 28
  %nzor4608 = or i64 %ns4604, %zs4605
  %cvor4609 = or i64 %cs4606, %vs4607
  %nzcv4610 = or i64 %nzor4608, %cvor4609
  %wp4611 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4610, ptr %wp4611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f00 word 0x54ffd1c0
  %r4612.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4612 = load i64, ptr %r4612.p, align 8, !alias.scope !3, !noalias !4
  %fsh4614 = lshr i64 %r4612, 30
  %cond4613 = trunc i64 %fsh4614 to i1
  br i1 %cond4613, label %L_800282938, label %L_800282f04_ft
L_800282f10:
  ; @pc 0x800282f10 word 0xb9401be8
  %r4645.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4645 = load i64, ptr %r4645.p, align 8, !alias.scope !3, !noalias !4
  %t4646 = add i64 %r4645, 24
  %gmp4647 = inttoptr i64 %t4646 to ptr
  %gml4648 = load i32, ptr %gmp4647, align 1, !alias.scope !4, !noalias !3
  %c4649 = zext i32 %gml4648 to i64
  %wp4650 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4649, ptr %wp4650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f14 word 0xb940da69
  %r4651.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4651 = load i64, ptr %r4651.p, align 8, !alias.scope !3, !noalias !4
  %t4652 = add i64 %r4651, 216
  %gmp4653 = inttoptr i64 %t4652 to ptr
  %gml4654 = load i32, ptr %gmp4653, align 1, !alias.scope !4, !noalias !3
  %c4655 = zext i32 %gml4654 to i64
  %wp4656 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4655, ptr %wp4656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f18 word 0x6b09011f
  %r4657.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4657 = load i64, ptr %r4657.p, align 8, !alias.scope !3, !noalias !4
  %c4658 = trunc i64 %r4657 to i32
  %r4659.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4659 = load i64, ptr %r4659.p, align 8, !alias.scope !3, !noalias !4
  %c4660 = trunc i64 %r4659 to i32
  %t4661 = sub i32 %c4658, %c4660
  %fn4662 = icmp slt i32 %t4661, 0
  %fz4663 = icmp eq i32 %t4661, 0
  %fc4664 = icmp uge i32 %c4658, %c4660
  %fx14665 = xor i32 %c4658, %c4660
  %fx24666 = xor i32 %c4658, %t4661
  %fva4667 = and i32 %fx14665, %fx24666
  %fv4668 = icmp slt i32 %fva4667, 0
  %nz4669 = zext i1 %fn4662 to i64
  %zz4670 = zext i1 %fz4663 to i64
  %cz4671 = zext i1 %fc4664 to i64
  %vz4672 = zext i1 %fv4668 to i64
  %ns4673 = shl i64 %nz4669, 31
  %zs4674 = shl i64 %zz4670, 30
  %cs4675 = shl i64 %cz4671, 29
  %vs4676 = shl i64 %vz4672, 28
  %nzor4677 = or i64 %ns4673, %zs4674
  %cvor4678 = or i64 %cs4675, %vs4676
  %nzcv4679 = or i64 %nzor4677, %cvor4678
  %wp4680 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4679, ptr %wp4680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f1c word 0x54ffc828
  %r4681.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4681 = load i64, ptr %r4681.p, align 8, !alias.scope !3, !noalias !4
  %fsh4683 = lshr i64 %r4681, 29
  %ftr4684 = trunc i64 %fsh4683 to i1
  %fsh4685 = lshr i64 %r4681, 30
  %ftr4686 = trunc i64 %fsh4685 to i1
  %fnz4687 = xor i1 %ftr4686, true
  %cond4682 = and i1 %ftr4684, %fnz4687
  br i1 %cond4682, label %L_800282820, label %L_800282f20
L_800282f20:
  ; @pc 0x800282f20 word 0x5a9f23e8
  %t4688 = xor i32 0, -1
  %r4689.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4689 = load i64, ptr %r4689.p, align 8, !alias.scope !3, !noalias !4
  %fsh4691 = lshr i64 %r4689, 29
  %cond4690 = trunc i64 %fsh4691 to i1
  %sel4692 = select i1 %cond4690, i32 0, i32 %t4688
  %c4693 = zext i32 %sel4692 to i64
  %wp4694 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4693, ptr %wp4694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f24 word 0x17fffff4
  br label %L_800282ef4
L_800282f28:
  ; @pc 0x800282f28 word 0x2a1f03e8
  %t4695 = or i32 0, 0
  %c4696 = zext i32 %t4695 to i64
  %wp4697 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4696, ptr %wp4697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f2c word 0x17ffff06
  br label %L_800282b44
L_800282f30:
  ; @pc 0x800282f30 word 0x2a1f03e8
  %t4698 = or i32 0, 0
  %c4699 = zext i32 %t4698 to i64
  %wp4700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4699, ptr %wp4700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f34 word 0x17ffff23
  br label %L_800282bc0
L_800282f38:
  ; @pc 0x800282f38 word 0x2a1f03e8
  %t4701 = or i32 0, 0
  %c4702 = zext i32 %t4701 to i64
  %wp4703 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4702, ptr %wp4703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f3c word 0x17ffff2c
  br label %L_800282bec
L_800282f40:
  ; @pc 0x800282f40 word 0x51000529
  %r4704.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4704 = load i64, ptr %r4704.p, align 8, !alias.scope !3, !noalias !4
  %c4705 = trunc i64 %r4704 to i32
  %t4706 = sub i32 %c4705, 1
  %c4707 = zext i32 %t4706 to i64
  %wp4708 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4707, ptr %wp4708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f44 word 0x2a1f03e8
  %t4709 = or i32 0, 0
  %c4710 = zext i32 %t4709 to i64
  %wp4711 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4710, ptr %wp4711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f48 word 0x71001d3f
  %r4712.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4712 = load i64, ptr %r4712.p, align 8, !alias.scope !3, !noalias !4
  %c4713 = trunc i64 %r4712 to i32
  %t4714 = sub i32 %c4713, 7
  %fn4715 = icmp slt i32 %t4714, 0
  %fz4716 = icmp eq i32 %t4714, 0
  %fc4717 = icmp uge i32 %c4713, 7
  %fx14718 = xor i32 %c4713, 7
  %fx24719 = xor i32 %c4713, %t4714
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
  ; @pc 0x800282f4c word 0x54ffed08
  %r4734.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4734 = load i64, ptr %r4734.p, align 8, !alias.scope !3, !noalias !4
  %fsh4736 = lshr i64 %r4734, 29
  %ftr4737 = trunc i64 %fsh4736 to i1
  %fsh4738 = lshr i64 %r4734, 30
  %ftr4739 = trunc i64 %fsh4738 to i1
  %fnz4740 = xor i1 %ftr4739, true
  %cond4735 = and i1 %ftr4737, %fnz4740
  br i1 %cond4735, label %L_800282cec, label %L_800282f50_ft
L_800282f68:
  ; @pc 0x800282f68 word 0x394063e8
  %r4759.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4759 = load i64, ptr %r4759.p, align 8, !alias.scope !3, !noalias !4
  %t4760 = add i64 %r4759, 24
  %gmp4761 = inttoptr i64 %t4760 to ptr
  %gml4762 = load i8, ptr %gmp4761, align 1, !alias.scope !4, !noalias !3
  %c4763 = zext i8 %gml4762 to i64
  %wp4764 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4763, ptr %wp4764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f6c word 0x39436269
  %r4765.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4765 = load i64, ptr %r4765.p, align 8, !alias.scope !3, !noalias !4
  %t4766 = add i64 %r4765, 216
  %gmp4767 = inttoptr i64 %t4766 to ptr
  %gml4768 = load i8, ptr %gmp4767, align 1, !alias.scope !4, !noalias !3
  %c4769 = zext i8 %gml4768 to i64
  %wp4770 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4769, ptr %wp4770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f70 word 0x4b090108
  %r4771.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4771 = load i64, ptr %r4771.p, align 8, !alias.scope !3, !noalias !4
  %c4772 = trunc i64 %r4771 to i32
  %r4773.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4773 = load i64, ptr %r4773.p, align 8, !alias.scope !3, !noalias !4
  %c4774 = trunc i64 %r4773 to i32
  %t4775 = sub i32 %c4772, %c4774
  %c4776 = zext i32 %t4775 to i64
  %wp4777 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4776, ptr %wp4777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f74 word 0x17ffff5e
  br label %L_800282cec
L_800282f78:
  ; @pc 0x800282f78 word 0xa9408288
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %t4779 = add i64 %r4778, 8
  %t4780 = add i64 %t4779, 8
  %gmp4781 = inttoptr i64 %t4779 to ptr
  %gml4782 = load i64, ptr %gmp4781, align 1, !alias.scope !4, !noalias !3
  %gmp4783 = inttoptr i64 %t4780 to ptr
  %gml4784 = load i64, ptr %gmp4783, align 1, !alias.scope !4, !noalias !3
  %wp4785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4782, ptr %wp4785, align 8, !alias.scope !3, !noalias !4
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4784, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f7c word 0xb9401a82
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %t4788 = add i64 %r4787, 24
  %gmp4789 = inttoptr i64 %t4788 to ptr
  %gml4790 = load i32, ptr %gmp4789, align 1, !alias.scope !4, !noalias !3
  %c4791 = zext i32 %gml4790 to i64
  %wp4792 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4791, ptr %wp4792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f80 word 0xf9400101
  %r4793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4793 = load i64, ptr %r4793.p, align 8, !alias.scope !3, !noalias !4
  %gmp4794 = inttoptr i64 %r4793 to ptr
  %gml4795 = load i64, ptr %gmp4794, align 1, !alias.scope !4, !noalias !3
  %wp4796 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml4795, ptr %wp4796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f84 word 0xf9400008
  %r4797.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4797 = load i64, ptr %r4797.p, align 8, !alias.scope !3, !noalias !4
  %gmp4798 = inttoptr i64 %r4797 to ptr
  %gml4799 = load i64, ptr %gmp4798, align 1, !alias.scope !4, !noalias !3
  %wp4800 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4799, ptr %wp4800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f88 word 0xf9403d09
  %r4801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4801 = load i64, ptr %r4801.p, align 8, !alias.scope !3, !noalias !4
  %t4802 = add i64 %r4801, 120
  %gmp4803 = inttoptr i64 %t4802 to ptr
  %gml4804 = load i64, ptr %gmp4803, align 1, !alias.scope !4, !noalias !3
  %wp4805 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4804, ptr %wp4805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f8c word 0x910043e8
  %r4806.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4806 = load i64, ptr %r4806.p, align 8, !alias.scope !3, !noalias !4
  %t4807 = add i64 %r4806, 16
  %wp4808 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4807, ptr %wp4808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f90 word 0xd63f0120
  %r4809.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4809 = load i64, ptr %r4809.p, align 8, !alias.scope !3, !noalias !4
  %fp4810 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4809, ptr %fp4810, align 8, !alias.scope !3, !noalias !4
  %wp4811 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362371988, ptr %wp4811, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282f94 word 0xb94013e8
  %r4812.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4812 = load i64, ptr %r4812.p, align 8, !alias.scope !3, !noalias !4
  %t4813 = add i64 %r4812, 16
  %gmp4814 = inttoptr i64 %t4813 to ptr
  %gml4815 = load i32, ptr %gmp4814, align 1, !alias.scope !4, !noalias !3
  %c4816 = zext i32 %gml4815 to i64
  %wp4817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4816, ptr %wp4817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f98 word 0xb94002a9
  %r4818.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4818 = load i64, ptr %r4818.p, align 8, !alias.scope !3, !noalias !4
  %gmp4819 = inttoptr i64 %r4818 to ptr
  %gml4820 = load i32, ptr %gmp4819, align 1, !alias.scope !4, !noalias !3
  %c4821 = zext i32 %gml4820 to i64
  %wp4822 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4821, ptr %wp4822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f9c word 0x6b09011f
  %r4823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4823 = load i64, ptr %r4823.p, align 8, !alias.scope !3, !noalias !4
  %c4824 = trunc i64 %r4823 to i32
  %r4825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4825 = load i64, ptr %r4825.p, align 8, !alias.scope !3, !noalias !4
  %c4826 = trunc i64 %r4825 to i32
  %t4827 = sub i32 %c4824, %c4826
  %fn4828 = icmp slt i32 %t4827, 0
  %fz4829 = icmp eq i32 %t4827, 0
  %fc4830 = icmp uge i32 %c4824, %c4826
  %fx14831 = xor i32 %c4824, %c4826
  %fx24832 = xor i32 %c4824, %t4827
  %fva4833 = and i32 %fx14831, %fx24832
  %fv4834 = icmp slt i32 %fva4833, 0
  %nz4835 = zext i1 %fn4828 to i64
  %zz4836 = zext i1 %fz4829 to i64
  %cz4837 = zext i1 %fc4830 to i64
  %vz4838 = zext i1 %fv4834 to i64
  %ns4839 = shl i64 %nz4835, 31
  %zs4840 = shl i64 %zz4836, 30
  %cs4841 = shl i64 %cz4837, 29
  %vs4842 = shl i64 %vz4838, 28
  %nzor4843 = or i64 %ns4839, %zs4840
  %cvor4844 = or i64 %cs4841, %vs4842
  %nzcv4845 = or i64 %nzor4843, %cvor4844
  %wp4846 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4845, ptr %wp4846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fa0 word 0x54002241
  %r4847.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4847 = load i64, ptr %r4847.p, align 8, !alias.scope !3, !noalias !4
  %fsh4849 = lshr i64 %r4847, 30
  %ftr4850 = trunc i64 %fsh4849 to i1
  %cond4848 = xor i1 %ftr4850, true
  br i1 %cond4848, label %L_8002833e8, label %L_800282fa4_ft
L_800282fc0:
  ; @pc 0x800282fc0 word 0x386b692c
  %r4914.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4914 = load i64, ptr %r4914.p, align 8, !alias.scope !3, !noalias !4
  %r4915.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4915 = load i64, ptr %r4915.p, align 8, !alias.scope !3, !noalias !4
  %t4916 = add i64 %r4914, %r4915
  %gmp4917 = inttoptr i64 %t4916 to ptr
  %gml4918 = load i8, ptr %gmp4917, align 1, !alias.scope !4, !noalias !3
  %c4919 = zext i8 %gml4918 to i64
  %wp4920 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4919, ptr %wp4920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fc4 word 0x7100019f
  %r4921.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4921 = load i64, ptr %r4921.p, align 8, !alias.scope !3, !noalias !4
  %c4922 = trunc i64 %r4921 to i32
  %t4923 = sub i32 %c4922, 0
  %fn4924 = icmp slt i32 %t4923, 0
  %fz4925 = icmp eq i32 %t4923, 0
  %fc4926 = icmp uge i32 %c4922, 0
  %fx14927 = xor i32 %c4922, 0
  %fx24928 = xor i32 %c4922, %t4923
  %fva4929 = and i32 %fx14927, %fx24928
  %fv4930 = icmp slt i32 %fva4929, 0
  %nz4931 = zext i1 %fn4924 to i64
  %zz4932 = zext i1 %fz4925 to i64
  %cz4933 = zext i1 %fc4926 to i64
  %vz4934 = zext i1 %fv4930 to i64
  %ns4935 = shl i64 %nz4931, 31
  %zs4936 = shl i64 %zz4932, 30
  %cs4937 = shl i64 %cz4933, 29
  %vs4938 = shl i64 %vz4934, 28
  %nzor4939 = or i64 %ns4935, %zs4936
  %cvor4940 = or i64 %cs4937, %vs4938
  %nzcv4941 = or i64 %nzor4939, %cvor4940
  %wp4942 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4941, ptr %wp4942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fc8 word 0x386b694d
  %r4943.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4943 = load i64, ptr %r4943.p, align 8, !alias.scope !3, !noalias !4
  %r4944.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4944 = load i64, ptr %r4944.p, align 8, !alias.scope !3, !noalias !4
  %t4945 = add i64 %r4943, %r4944
  %gmp4946 = inttoptr i64 %t4945 to ptr
  %gml4947 = load i8, ptr %gmp4946, align 1, !alias.scope !4, !noalias !3
  %c4948 = zext i8 %gml4947 to i64
  %wp4949 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4948, ptr %wp4949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fcc word 0x1a9f1108
  %r4950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4950 = load i64, ptr %r4950.p, align 8, !alias.scope !3, !noalias !4
  %c4951 = trunc i64 %r4950 to i32
  %r4952.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4952 = load i64, ptr %r4952.p, align 8, !alias.scope !3, !noalias !4
  %fsh4954 = lshr i64 %r4952, 30
  %ftr4955 = trunc i64 %fsh4954 to i1
  %cond4953 = xor i1 %ftr4955, true
  %sel4956 = select i1 %cond4953, i32 %c4951, i32 0
  %c4957 = zext i32 %sel4956 to i64
  %wp4958 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4957, ptr %wp4958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fd0 word 0x6b0d019f
  %r4959.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4959 = load i64, ptr %r4959.p, align 8, !alias.scope !3, !noalias !4
  %c4960 = trunc i64 %r4959 to i32
  %r4961.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4961 = load i64, ptr %r4961.p, align 8, !alias.scope !3, !noalias !4
  %c4962 = trunc i64 %r4961 to i32
  %t4963 = sub i32 %c4960, %c4962
  %fn4964 = icmp slt i32 %t4963, 0
  %fz4965 = icmp eq i32 %t4963, 0
  %fc4966 = icmp uge i32 %c4960, %c4962
  %fx14967 = xor i32 %c4960, %c4962
  %fx24968 = xor i32 %c4960, %t4963
  %fva4969 = and i32 %fx14967, %fx24968
  %fv4970 = icmp slt i32 %fva4969, 0
  %nz4971 = zext i1 %fn4964 to i64
  %zz4972 = zext i1 %fz4965 to i64
  %cz4973 = zext i1 %fc4966 to i64
  %vz4974 = zext i1 %fv4970 to i64
  %ns4975 = shl i64 %nz4971, 31
  %zs4976 = shl i64 %zz4972, 30
  %cs4977 = shl i64 %cz4973, 29
  %vs4978 = shl i64 %vz4974, 28
  %nzor4979 = or i64 %ns4975, %zs4976
  %cvor4980 = or i64 %cs4977, %vs4978
  %nzcv4981 = or i64 %nzor4979, %cvor4980
  %wp4982 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4981, ptr %wp4982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fd4 word 0x5a99372e
  %r4983.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4983 = load i64, ptr %r4983.p, align 8, !alias.scope !3, !noalias !4
  %c4984 = trunc i64 %r4983 to i32
  %r4985.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4985 = load i64, ptr %r4985.p, align 8, !alias.scope !3, !noalias !4
  %c4986 = trunc i64 %r4985 to i32
  %t4987 = sub i32 0, %c4986
  %r4988.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4988 = load i64, ptr %r4988.p, align 8, !alias.scope !3, !noalias !4
  %fsh4990 = lshr i64 %r4988, 29
  %ftr4991 = trunc i64 %fsh4990 to i1
  %cond4989 = xor i1 %ftr4991, true
  %sel4992 = select i1 %cond4989, i32 %c4984, i32 %t4987
  %c4993 = zext i32 %sel4992 to i64
  %wp4994 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c4993, ptr %wp4994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fd8 word 0x1a8e0108
  %r4995.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4995 = load i64, ptr %r4995.p, align 8, !alias.scope !3, !noalias !4
  %c4996 = trunc i64 %r4995 to i32
  %r4997.p = getelementptr inbounds i8, ptr %c, i64 112
  %r4997 = load i64, ptr %r4997.p, align 8, !alias.scope !3, !noalias !4
  %c4998 = trunc i64 %r4997 to i32
  %r4999.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4999 = load i64, ptr %r4999.p, align 8, !alias.scope !3, !noalias !4
  %fsh5001 = lshr i64 %r4999, 30
  %cond5000 = trunc i64 %fsh5001 to i1
  %sel5002 = select i1 %cond5000, i32 %c4996, i32 %c4998
  %c5003 = zext i32 %sel5002 to i64
  %wp5004 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5003, ptr %wp5004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fdc word 0x34001b8c
  %r5005.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5005 = load i64, ptr %r5005.p, align 8, !alias.scope !3, !noalias !4
  %c5006 = trunc i64 %r5005 to i32
  %cmp5007 = icmp eq i32 %c5006, 0
  br i1 %cmp5007, label %L_80028334c, label %L_800282fe0_ft
L_800282ff8:
  ; @pc 0x800282ff8 word 0xb9401be8
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %t5065 = add i64 %r5064, 24
  %gmp5066 = inttoptr i64 %t5065 to ptr
  %gml5067 = load i32, ptr %gmp5066, align 1, !alias.scope !4, !noalias !3
  %c5068 = zext i32 %gml5067 to i64
  %wp5069 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5068, ptr %wp5069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ffc word 0xb940da69
  %r5070.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5070 = load i64, ptr %r5070.p, align 8, !alias.scope !3, !noalias !4
  %t5071 = add i64 %r5070, 216
  %gmp5072 = inttoptr i64 %t5071 to ptr
  %gml5073 = load i32, ptr %gmp5072, align 1, !alias.scope !4, !noalias !3
  %c5074 = zext i32 %gml5073 to i64
  %wp5075 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5074, ptr %wp5075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283000 word 0x6b09011f
  %r5076.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5076 = load i64, ptr %r5076.p, align 8, !alias.scope !3, !noalias !4
  %c5077 = trunc i64 %r5076 to i32
  %r5078.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5078 = load i64, ptr %r5078.p, align 8, !alias.scope !3, !noalias !4
  %c5079 = trunc i64 %r5078 to i32
  %t5080 = sub i32 %c5077, %c5079
  %fn5081 = icmp slt i32 %t5080, 0
  %fz5082 = icmp eq i32 %t5080, 0
  %fc5083 = icmp uge i32 %c5077, %c5079
  %fx15084 = xor i32 %c5077, %c5079
  %fx25085 = xor i32 %c5077, %t5080
  %fva5086 = and i32 %fx15084, %fx25085
  %fv5087 = icmp slt i32 %fva5086, 0
  %nz5088 = zext i1 %fn5081 to i64
  %zz5089 = zext i1 %fz5082 to i64
  %cz5090 = zext i1 %fc5083 to i64
  %vz5091 = zext i1 %fv5087 to i64
  %ns5092 = shl i64 %nz5088, 31
  %zs5093 = shl i64 %zz5089, 30
  %cs5094 = shl i64 %cz5090, 29
  %vs5095 = shl i64 %vz5091, 28
  %nzor5096 = or i64 %ns5092, %zs5093
  %cvor5097 = or i64 %cs5094, %vs5095
  %nzcv5098 = or i64 %nzor5096, %cvor5097
  %wp5099 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5098, ptr %wp5099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283004 word 0x54ffe72c
  %r5100.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5100 = load i64, ptr %r5100.p, align 8, !alias.scope !3, !noalias !4
  %fsh5102 = lshr i64 %r5100, 30
  %ftr5103 = trunc i64 %fsh5102 to i1
  %fsh5104 = lshr i64 %r5100, 31
  %ftr5105 = trunc i64 %fsh5104 to i1
  %fsh5106 = lshr i64 %r5100, 28
  %ftr5107 = trunc i64 %fsh5106 to i1
  %fnz5108 = xor i1 %ftr5103, true
  %feq5109 = icmp eq i1 %ftr5105, %ftr5107
  %cond5101 = and i1 %fnz5108, %feq5109
  br i1 %cond5101, label %L_800282ce8, label %L_800283008
L_800283008:
  ; @pc 0x800283008 word 0x5a9fa3e8
  %t5110 = xor i32 0, -1
  %r5111.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5111 = load i64, ptr %r5111.p, align 8, !alias.scope !3, !noalias !4
  %fsh5113 = lshr i64 %r5111, 31
  %ftr5114 = trunc i64 %fsh5113 to i1
  %fsh5115 = lshr i64 %r5111, 28
  %ftr5116 = trunc i64 %fsh5115 to i1
  %cond5112 = icmp eq i1 %ftr5114, %ftr5116
  %sel5117 = select i1 %cond5112, i32 0, i32 %t5110
  %c5118 = zext i32 %sel5117 to i64
  %wp5119 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5118, ptr %wp5119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028300c word 0x17ffff38
  br label %L_800282cec
L_800283010:
  ; @pc 0x800283010 word 0xf9400fe8
  %r5120.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5120 = load i64, ptr %r5120.p, align 8, !alias.scope !3, !noalias !4
  %t5121 = add i64 %r5120, 24
  %gmp5122 = inttoptr i64 %t5121 to ptr
  %gml5123 = load i64, ptr %gmp5122, align 1, !alias.scope !4, !noalias !3
  %wp5124 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5123, ptr %wp5124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283014 word 0xf9406e69
  %r5125.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5125 = load i64, ptr %r5125.p, align 8, !alias.scope !3, !noalias !4
  %t5126 = add i64 %r5125, 216
  %gmp5127 = inttoptr i64 %t5126 to ptr
  %gml5128 = load i64, ptr %gmp5127, align 1, !alias.scope !4, !noalias !3
  %wp5129 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5128, ptr %wp5129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283018 word 0xeb09011f
  %r5130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5130 = load i64, ptr %r5130.p, align 8, !alias.scope !3, !noalias !4
  %r5131.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5131 = load i64, ptr %r5131.p, align 8, !alias.scope !3, !noalias !4
  %t5132 = sub i64 %r5130, %r5131
  %fn5133 = icmp slt i64 %t5132, 0
  %fz5134 = icmp eq i64 %t5132, 0
  %fc5135 = icmp uge i64 %r5130, %r5131
  %fx15136 = xor i64 %r5130, %r5131
  %fx25137 = xor i64 %r5130, %t5132
  %fva5138 = and i64 %fx15136, %fx25137
  %fv5139 = icmp slt i64 %fva5138, 0
  %nz5140 = zext i1 %fn5133 to i64
  %zz5141 = zext i1 %fz5134 to i64
  %cz5142 = zext i1 %fc5135 to i64
  %vz5143 = zext i1 %fv5139 to i64
  %ns5144 = shl i64 %nz5140, 31
  %zs5145 = shl i64 %zz5141, 30
  %cs5146 = shl i64 %cz5142, 29
  %vs5147 = shl i64 %vz5143, 28
  %nzor5148 = or i64 %ns5144, %zs5145
  %cvor5149 = or i64 %cs5146, %vs5147
  %nzcv5150 = or i64 %nzor5148, %cvor5149
  %wp5151 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5150, ptr %wp5151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028301c word 0x54ffe66c
  %r5152.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5152 = load i64, ptr %r5152.p, align 8, !alias.scope !3, !noalias !4
  %fsh5154 = lshr i64 %r5152, 30
  %ftr5155 = trunc i64 %fsh5154 to i1
  %fsh5156 = lshr i64 %r5152, 31
  %ftr5157 = trunc i64 %fsh5156 to i1
  %fsh5158 = lshr i64 %r5152, 28
  %ftr5159 = trunc i64 %fsh5158 to i1
  %fnz5160 = xor i1 %ftr5155, true
  %feq5161 = icmp eq i1 %ftr5157, %ftr5159
  %cond5153 = and i1 %fnz5160, %feq5161
  br i1 %cond5153, label %L_800282ce8, label %L_800283020_ft
L_800283024:
  ; @pc 0x800283024 word 0xf9400fe8
  %r5162.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5162 = load i64, ptr %r5162.p, align 8, !alias.scope !3, !noalias !4
  %t5163 = add i64 %r5162, 24
  %gmp5164 = inttoptr i64 %t5163 to ptr
  %gml5165 = load i64, ptr %gmp5164, align 1, !alias.scope !4, !noalias !3
  %wp5166 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5165, ptr %wp5166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283028 word 0xf9406e69
  %r5167.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5167 = load i64, ptr %r5167.p, align 8, !alias.scope !3, !noalias !4
  %t5168 = add i64 %r5167, 216
  %gmp5169 = inttoptr i64 %t5168 to ptr
  %gml5170 = load i64, ptr %gmp5169, align 1, !alias.scope !4, !noalias !3
  %wp5171 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5170, ptr %wp5171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028302c word 0xeb09011f
  %r5172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5172 = load i64, ptr %r5172.p, align 8, !alias.scope !3, !noalias !4
  %r5173.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5173 = load i64, ptr %r5173.p, align 8, !alias.scope !3, !noalias !4
  %t5174 = sub i64 %r5172, %r5173
  %fn5175 = icmp slt i64 %t5174, 0
  %fz5176 = icmp eq i64 %t5174, 0
  %fc5177 = icmp uge i64 %r5172, %r5173
  %fx15178 = xor i64 %r5172, %r5173
  %fx25179 = xor i64 %r5172, %t5174
  %fva5180 = and i64 %fx15178, %fx25179
  %fv5181 = icmp slt i64 %fva5180, 0
  %nz5182 = zext i1 %fn5175 to i64
  %zz5183 = zext i1 %fz5176 to i64
  %cz5184 = zext i1 %fc5177 to i64
  %vz5185 = zext i1 %fv5181 to i64
  %ns5186 = shl i64 %nz5182, 31
  %zs5187 = shl i64 %zz5183, 30
  %cs5188 = shl i64 %cz5184, 29
  %vs5189 = shl i64 %vz5185, 28
  %nzor5190 = or i64 %ns5186, %zs5187
  %cvor5191 = or i64 %cs5188, %vs5189
  %nzcv5192 = or i64 %nzor5190, %cvor5191
  %wp5193 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5192, ptr %wp5193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283030 word 0x54ffe5c8
  %r5194.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5194 = load i64, ptr %r5194.p, align 8, !alias.scope !3, !noalias !4
  %fsh5196 = lshr i64 %r5194, 29
  %ftr5197 = trunc i64 %fsh5196 to i1
  %fsh5198 = lshr i64 %r5194, 30
  %ftr5199 = trunc i64 %fsh5198 to i1
  %fnz5200 = xor i1 %ftr5199, true
  %cond5195 = and i1 %ftr5197, %fnz5200
  br i1 %cond5195, label %L_800282ce8, label %L_800283034
L_800283034:
  ; @pc 0x800283034 word 0x5a9f23e8
  %t5201 = xor i32 0, -1
  %r5202.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5202 = load i64, ptr %r5202.p, align 8, !alias.scope !3, !noalias !4
  %fsh5204 = lshr i64 %r5202, 29
  %cond5203 = trunc i64 %fsh5204 to i1
  %sel5205 = select i1 %cond5203, i32 0, i32 %t5201
  %c5206 = zext i32 %sel5205 to i64
  %wp5207 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5206, ptr %wp5207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283038 word 0x17ffff2d
  br label %L_800282cec
L_80028303c:
  ; @pc 0x80028303c word 0xbd401be0
  %r5208.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5208 = load i64, ptr %r5208.p, align 8, !alias.scope !3, !noalias !4
  %t5209 = add i64 %r5208, 24
  %gmp5210 = inttoptr i64 %t5209 to ptr
  %gml5211 = load i32, ptr %gmp5210, align 1, !alias.scope !4, !noalias !3
  %c5212 = zext i32 %gml5211 to i128
  %wp5213 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5212, ptr %wp5213, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283040 word 0xbd40da61
  %r5214.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5214 = load i64, ptr %r5214.p, align 8, !alias.scope !3, !noalias !4
  %t5215 = add i64 %r5214, 216
  %gmp5216 = inttoptr i64 %t5215 to ptr
  %gml5217 = load i32, ptr %gmp5216, align 1, !alias.scope !4, !noalias !3
  %c5218 = zext i32 %gml5217 to i128
  %wp5219 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5218, ptr %wp5219, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283044 word 0x1e212000
  %fcmp5220 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp5221 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5220, ptr %wp5221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283048 word 0x54ffe50c
  %r5222.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5222 = load i64, ptr %r5222.p, align 8, !alias.scope !3, !noalias !4
  %fsh5224 = lshr i64 %r5222, 30
  %ftr5225 = trunc i64 %fsh5224 to i1
  %fsh5226 = lshr i64 %r5222, 31
  %ftr5227 = trunc i64 %fsh5226 to i1
  %fsh5228 = lshr i64 %r5222, 28
  %ftr5229 = trunc i64 %fsh5228 to i1
  %fnz5230 = xor i1 %ftr5225, true
  %feq5231 = icmp eq i1 %ftr5227, %ftr5229
  %cond5223 = and i1 %fnz5230, %feq5231
  br i1 %cond5223, label %L_800282ce8, label %L_80028304c_ft
L_800283050:
  ; @pc 0x800283050 word 0xfd400fe0
  %r5232.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5232 = load i64, ptr %r5232.p, align 8, !alias.scope !3, !noalias !4
  %t5233 = add i64 %r5232, 24
  %gmp5234 = inttoptr i64 %t5233 to ptr
  %gml5235 = load i64, ptr %gmp5234, align 1, !alias.scope !4, !noalias !3
  %c5236 = zext i64 %gml5235 to i128
  %wp5237 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5236, ptr %wp5237, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283054 word 0xfd406e61
  %r5238.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5238 = load i64, ptr %r5238.p, align 8, !alias.scope !3, !noalias !4
  %t5239 = add i64 %r5238, 216
  %gmp5240 = inttoptr i64 %t5239 to ptr
  %gml5241 = load i64, ptr %gmp5240, align 1, !alias.scope !4, !noalias !3
  %c5242 = zext i64 %gml5241 to i128
  %wp5243 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5242, ptr %wp5243, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283058 word 0x1e612000
  %fcmp5244 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp5245 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5244, ptr %wp5245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028305c word 0x54ffe46c
  %r5246.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5246 = load i64, ptr %r5246.p, align 8, !alias.scope !3, !noalias !4
  %fsh5248 = lshr i64 %r5246, 30
  %ftr5249 = trunc i64 %fsh5248 to i1
  %fsh5250 = lshr i64 %r5246, 31
  %ftr5251 = trunc i64 %fsh5250 to i1
  %fsh5252 = lshr i64 %r5246, 28
  %ftr5253 = trunc i64 %fsh5252 to i1
  %fnz5254 = xor i1 %ftr5249, true
  %feq5255 = icmp eq i1 %ftr5251, %ftr5253
  %cond5247 = and i1 %fnz5254, %feq5255
  br i1 %cond5247, label %L_800282ce8, label %L_800283060
L_800283060:
  ; @pc 0x800283060 word 0x5a9f53e8
  %t5256 = xor i32 0, -1
  %r5257.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5257 = load i64, ptr %r5257.p, align 8, !alias.scope !3, !noalias !4
  %fsh5259 = lshr i64 %r5257, 31
  %ftr5260 = trunc i64 %fsh5259 to i1
  %cond5258 = xor i1 %ftr5260, true
  %sel5261 = select i1 %cond5258, i32 0, i32 %t5256
  %c5262 = zext i32 %sel5261 to i64
  %wp5263 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5262, ptr %wp5263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283064 word 0x17ffff22
  br label %L_800282cec
L_800283068:
  ; @pc 0x800283068 word 0xf9400fe9
  %r5264.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5264 = load i64, ptr %r5264.p, align 8, !alias.scope !3, !noalias !4
  %t5265 = add i64 %r5264, 24
  %gmp5266 = inttoptr i64 %t5265 to ptr
  %gml5267 = load i64, ptr %gmp5266, align 1, !alias.scope !4, !noalias !3
  %wp5268 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5267, ptr %wp5268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028306c word 0xf9406e6a
  %r5269.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5269 = load i64, ptr %r5269.p, align 8, !alias.scope !3, !noalias !4
  %t5270 = add i64 %r5269, 216
  %gmp5271 = inttoptr i64 %t5270 to ptr
  %gml5272 = load i64, ptr %gmp5271, align 1, !alias.scope !4, !noalias !3
  %wp5273 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5272, ptr %wp5273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283070 word 0xeb0a013f
  %r5274.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5274 = load i64, ptr %r5274.p, align 8, !alias.scope !3, !noalias !4
  %r5275.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5275 = load i64, ptr %r5275.p, align 8, !alias.scope !3, !noalias !4
  %t5276 = sub i64 %r5274, %r5275
  %fn5277 = icmp slt i64 %t5276, 0
  %fz5278 = icmp eq i64 %t5276, 0
  %fc5279 = icmp uge i64 %r5274, %r5275
  %fx15280 = xor i64 %r5274, %r5275
  %fx25281 = xor i64 %r5274, %t5276
  %fva5282 = and i64 %fx15280, %fx25281
  %fv5283 = icmp slt i64 %fva5282, 0
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
  ; @pc 0x800283074 word 0x540002e0
  %r5296.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5296 = load i64, ptr %r5296.p, align 8, !alias.scope !3, !noalias !4
  %fsh5298 = lshr i64 %r5296, 30
  %cond5297 = trunc i64 %fsh5298 to i1
  br i1 %cond5297, label %L_8002830d0, label %L_800283078_ft
L_80028307c:
  ; @pc 0x80028307c word 0x386b6928
  %r5301.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5301 = load i64, ptr %r5301.p, align 8, !alias.scope !3, !noalias !4
  %r5302.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5302 = load i64, ptr %r5302.p, align 8, !alias.scope !3, !noalias !4
  %t5303 = add i64 %r5301, %r5302
  %gmp5304 = inttoptr i64 %t5303 to ptr
  %gml5305 = load i8, ptr %gmp5304, align 1, !alias.scope !4, !noalias !3
  %c5306 = zext i8 %gml5305 to i64
  %wp5307 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5306, ptr %wp5307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283080 word 0x35000048
  %r5308.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5308 = load i64, ptr %r5308.p, align 8, !alias.scope !3, !noalias !4
  %c5309 = trunc i64 %r5308 to i32
  %cmp5310 = icmp ne i32 %c5309, 0
  br i1 %cmp5310, label %L_800283088, label %L_800283084_ft
L_800283088:
  ; @pc 0x800283088 word 0x386b694c
  %r5314.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5314 = load i64, ptr %r5314.p, align 8, !alias.scope !3, !noalias !4
  %r5315.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5315 = load i64, ptr %r5315.p, align 8, !alias.scope !3, !noalias !4
  %t5316 = add i64 %r5314, %r5315
  %gmp5317 = inttoptr i64 %t5316 to ptr
  %gml5318 = load i8, ptr %gmp5317, align 1, !alias.scope !4, !noalias !3
  %c5319 = zext i8 %gml5318 to i64
  %wp5320 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c5319, ptr %wp5320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028308c word 0x6b0c011f
  %r5321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5321 = load i64, ptr %r5321.p, align 8, !alias.scope !3, !noalias !4
  %c5322 = trunc i64 %r5321 to i32
  %r5323.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5323 = load i64, ptr %r5323.p, align 8, !alias.scope !3, !noalias !4
  %c5324 = trunc i64 %r5323 to i32
  %t5325 = sub i32 %c5322, %c5324
  %fn5326 = icmp slt i32 %t5325, 0
  %fz5327 = icmp eq i32 %t5325, 0
  %fc5328 = icmp uge i32 %c5322, %c5324
  %fx15329 = xor i32 %c5322, %c5324
  %fx25330 = xor i32 %c5322, %t5325
  %fva5331 = and i32 %fx15329, %fx25330
  %fv5332 = icmp slt i32 %fva5331, 0
  %nz5333 = zext i1 %fn5326 to i64
  %zz5334 = zext i1 %fz5327 to i64
  %cz5335 = zext i1 %fc5328 to i64
  %vz5336 = zext i1 %fv5332 to i64
  %ns5337 = shl i64 %nz5333, 31
  %zs5338 = shl i64 %zz5334, 30
  %cs5339 = shl i64 %cz5335, 29
  %vs5340 = shl i64 %vz5336, 28
  %nzor5341 = or i64 %ns5337, %zs5338
  %cvor5342 = or i64 %cs5339, %vs5340
  %nzcv5343 = or i64 %nzor5341, %cvor5342
  %wp5344 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5343, ptr %wp5344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283090 word 0x540001c3
  %r5345.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5345 = load i64, ptr %r5345.p, align 8, !alias.scope !3, !noalias !4
  %fsh5347 = lshr i64 %r5345, 29
  %ftr5348 = trunc i64 %fsh5347 to i1
  %cond5346 = xor i1 %ftr5348, true
  br i1 %cond5346, label %L_8002830c8, label %L_800283094_ft
L_800283098:
  ; @pc 0x800283098 word 0x7100011f
  %r5351.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5351 = load i64, ptr %r5351.p, align 8, !alias.scope !3, !noalias !4
  %c5352 = trunc i64 %r5351 to i32
  %t5353 = sub i32 %c5352, 0
  %fn5354 = icmp slt i32 %t5353, 0
  %fz5355 = icmp eq i32 %t5353, 0
  %fc5356 = icmp uge i32 %c5352, 0
  %fx15357 = xor i32 %c5352, 0
  %fx25358 = xor i32 %c5352, %t5353
  %fva5359 = and i32 %fx15357, %fx25358
  %fv5360 = icmp slt i32 %fva5359, 0
  %nz5361 = zext i1 %fn5354 to i64
  %zz5362 = zext i1 %fz5355 to i64
  %cz5363 = zext i1 %fc5356 to i64
  %vz5364 = zext i1 %fv5360 to i64
  %ns5365 = shl i64 %nz5361, 31
  %zs5366 = shl i64 %zz5362, 30
  %cs5367 = shl i64 %cz5363, 29
  %vs5368 = shl i64 %vz5364, 28
  %nzor5369 = or i64 %ns5365, %zs5366
  %cvor5370 = or i64 %cs5367, %vs5368
  %nzcv5371 = or i64 %nzor5369, %cvor5370
  %wp5372 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5371, ptr %wp5372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028309c word 0x1a9f07ee
  %t5373 = add i32 0, 1
  %r5374.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5374 = load i64, ptr %r5374.p, align 8, !alias.scope !3, !noalias !4
  %fsh5376 = lshr i64 %r5374, 30
  %cond5375 = trunc i64 %fsh5376 to i1
  %sel5377 = select i1 %cond5375, i32 0, i32 %t5373
  %c5378 = zext i32 %sel5377 to i64
  %wp5379 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c5378, ptr %wp5379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830a0 word 0x6b0c011f
  %r5380.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5380 = load i64, ptr %r5380.p, align 8, !alias.scope !3, !noalias !4
  %c5381 = trunc i64 %r5380 to i32
  %r5382.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5382 = load i64, ptr %r5382.p, align 8, !alias.scope !3, !noalias !4
  %c5383 = trunc i64 %r5382 to i32
  %t5384 = sub i32 %c5381, %c5383
  %fn5385 = icmp slt i32 %t5384, 0
  %fz5386 = icmp eq i32 %t5384, 0
  %fc5387 = icmp uge i32 %c5381, %c5383
  %fx15388 = xor i32 %c5381, %c5383
  %fx25389 = xor i32 %c5381, %t5384
  %fva5390 = and i32 %fx15388, %fx25389
  %fv5391 = icmp slt i32 %fva5390, 0
  %nz5392 = zext i1 %fn5385 to i64
  %zz5393 = zext i1 %fz5386 to i64
  %cz5394 = zext i1 %fc5387 to i64
  %vz5395 = zext i1 %fv5391 to i64
  %ns5396 = shl i64 %nz5392, 31
  %zs5397 = shl i64 %zz5393, 30
  %cs5398 = shl i64 %cz5394, 29
  %vs5399 = shl i64 %vz5395, 28
  %nzor5400 = or i64 %ns5396, %zs5397
  %cvor5401 = or i64 %cs5398, %vs5399
  %nzcv5402 = or i64 %nzor5400, %cvor5401
  %wp5403 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5402, ptr %wp5403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830a4 word 0x1a8e13e8
  %r5404.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5404 = load i64, ptr %r5404.p, align 8, !alias.scope !3, !noalias !4
  %c5405 = trunc i64 %r5404 to i32
  %r5406.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5406 = load i64, ptr %r5406.p, align 8, !alias.scope !3, !noalias !4
  %fsh5408 = lshr i64 %r5406, 30
  %ftr5409 = trunc i64 %fsh5408 to i1
  %cond5407 = xor i1 %ftr5409, true
  %sel5410 = select i1 %cond5407, i32 0, i32 %c5405
  %c5411 = zext i32 %sel5410 to i64
  %wp5412 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5411, ptr %wp5412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830a8 word 0x54000040
  %r5413.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5413 = load i64, ptr %r5413.p, align 8, !alias.scope !3, !noalias !4
  %fsh5415 = lshr i64 %r5413, 30
  %cond5414 = trunc i64 %fsh5415 to i1
  br i1 %cond5414, label %L_8002830b0, label %L_8002830ac_ft
L_8002830b0:
  ; @pc 0x8002830b0 word 0x36000528
  %r5421.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5421 = load i64, ptr %r5421.p, align 8, !alias.scope !3, !noalias !4
  %t5422 = and i64 %r5421, 1
  %cmp5423 = icmp eq i64 %t5422, 0
  br i1 %cmp5423, label %L_800283154, label %L_8002830b4_ft
L_8002830c8:
  ; @pc 0x8002830c8 word 0x1280000d
  %c5455 = zext i32 -1 to i64
  %wp5456 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5455, ptr %wp5456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830cc word 0x17fffff3
  br label %L_800283098
L_8002830d0:
  ; @pc 0x8002830d0 word 0x2a1f03e8
  %t5457 = or i32 0, 0
  %c5458 = zext i32 %t5457 to i64
  %wp5459 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5458, ptr %wp5459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830d4 word 0x17ffff06
  br label %L_800282cec
L_8002830d8:
  ; @pc 0x8002830d8 word 0x51000508
  %r5460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5460 = load i64, ptr %r5460.p, align 8, !alias.scope !3, !noalias !4
  %c5461 = trunc i64 %r5460 to i32
  %t5462 = sub i32 %c5461, 1
  %c5463 = zext i32 %t5462 to i64
  %wp5464 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5463, ptr %wp5464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830dc word 0x7100191f
  %r5465.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5465 = load i64, ptr %r5465.p, align 8, !alias.scope !3, !noalias !4
  %c5466 = trunc i64 %r5465 to i32
  %t5467 = sub i32 %c5466, 6
  %fn5468 = icmp slt i32 %t5467, 0
  %fz5469 = icmp eq i32 %t5467, 0
  %fc5470 = icmp uge i32 %c5466, 6
  %fx15471 = xor i32 %c5466, 6
  %fx25472 = xor i32 %c5466, %t5467
  %fva5473 = and i32 %fx15471, %fx25472
  %fv5474 = icmp slt i32 %fva5473, 0
  %nz5475 = zext i1 %fn5468 to i64
  %zz5476 = zext i1 %fz5469 to i64
  %cz5477 = zext i1 %fc5470 to i64
  %vz5478 = zext i1 %fv5474 to i64
  %ns5479 = shl i64 %nz5475, 31
  %zs5480 = shl i64 %zz5476, 30
  %cs5481 = shl i64 %cz5477, 29
  %vs5482 = shl i64 %vz5478, 28
  %nzor5483 = or i64 %ns5479, %zs5480
  %cvor5484 = or i64 %cs5481, %vs5482
  %nzcv5485 = or i64 %nzor5483, %cvor5484
  %wp5486 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5485, ptr %wp5486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830e0 word 0x540003e9
  %r5487.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5487 = load i64, ptr %r5487.p, align 8, !alias.scope !3, !noalias !4
  %fsh5489 = lshr i64 %r5487, 29
  %ftr5490 = trunc i64 %fsh5489 to i1
  %fsh5491 = lshr i64 %r5487, 30
  %ftr5492 = trunc i64 %fsh5491 to i1
  %fnz5493 = xor i1 %ftr5492, true
  %fhi5494 = and i1 %ftr5490, %fnz5493
  %cond5488 = xor i1 %fhi5494, true
  br i1 %cond5488, label %L_80028315c, label %L_8002830e4_ft
L_8002830e8:
  ; @pc 0x8002830e8 word 0x2a1f03e8
  %t5501 = or i32 0, 0
  %c5502 = zext i32 %t5501 to i64
  %wp5503 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5502, ptr %wp5503, align 8, !alias.scope !3, !noalias !4
  br label %L_8002830ec
L_8002830ec:
  ; @pc 0x8002830ec word 0x13000349
  %r5504.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5504 = load i64, ptr %r5504.p, align 8, !alias.scope !3, !noalias !4
  %c5505 = trunc i64 %r5504 to i32
  %t5506 = lshr i32 %c5505, 0
  %t5507 = and i32 %t5506, 1
  %t5508 = sub i32 0, %t5507
  %t5509 = and i32 %t5508, -2
  %t5510 = and i32 %c5505, 1
  %t5511 = or i32 %t5509, %t5510
  %c5512 = zext i32 %t5511 to i64
  %wp5513 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5512, ptr %wp5513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830f0 word 0x6b09011f
  %r5514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5514 = load i64, ptr %r5514.p, align 8, !alias.scope !3, !noalias !4
  %c5515 = trunc i64 %r5514 to i32
  %r5516.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5516 = load i64, ptr %r5516.p, align 8, !alias.scope !3, !noalias !4
  %c5517 = trunc i64 %r5516 to i32
  %t5518 = sub i32 %c5515, %c5517
  %fn5519 = icmp slt i32 %t5518, 0
  %fz5520 = icmp eq i32 %t5518, 0
  %fc5521 = icmp uge i32 %c5515, %c5517
  %fx15522 = xor i32 %c5515, %c5517
  %fx25523 = xor i32 %c5515, %t5518
  %fva5524 = and i32 %fx15522, %fx25523
  %fv5525 = icmp slt i32 %fva5524, 0
  %nz5526 = zext i1 %fn5519 to i64
  %zz5527 = zext i1 %fz5520 to i64
  %cz5528 = zext i1 %fc5521 to i64
  %vz5529 = zext i1 %fv5525 to i64
  %ns5530 = shl i64 %nz5526, 31
  %zs5531 = shl i64 %zz5527, 30
  %cs5532 = shl i64 %cz5528, 29
  %vs5533 = shl i64 %vz5529, 28
  %nzor5534 = or i64 %ns5530, %zs5531
  %cvor5535 = or i64 %cs5532, %vs5533
  %nzcv5536 = or i64 %nzor5534, %cvor5535
  %wp5537 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5536, ptr %wp5537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830f4 word 0x54ffe18c
  %r5538.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5538 = load i64, ptr %r5538.p, align 8, !alias.scope !3, !noalias !4
  %fsh5540 = lshr i64 %r5538, 30
  %ftr5541 = trunc i64 %fsh5540 to i1
  %fsh5542 = lshr i64 %r5538, 31
  %ftr5543 = trunc i64 %fsh5542 to i1
  %fsh5544 = lshr i64 %r5538, 28
  %ftr5545 = trunc i64 %fsh5544 to i1
  %fnz5546 = xor i1 %ftr5541, true
  %feq5547 = icmp eq i1 %ftr5543, %ftr5545
  %cond5539 = and i1 %fnz5546, %feq5547
  br i1 %cond5539, label %L_800282d24, label %L_8002830f8_ft
L_8002830fc:
  ; @pc 0x8002830fc word 0xf9400fe8
  %r5548.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5548 = load i64, ptr %r5548.p, align 8, !alias.scope !3, !noalias !4
  %t5549 = add i64 %r5548, 24
  %gmp5550 = inttoptr i64 %t5549 to ptr
  %gml5551 = load i64, ptr %gmp5550, align 1, !alias.scope !4, !noalias !3
  %wp5552 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5551, ptr %wp5552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283100 word 0xf9406e69
  %r5553.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5553 = load i64, ptr %r5553.p, align 8, !alias.scope !3, !noalias !4
  %t5554 = add i64 %r5553, 216
  %gmp5555 = inttoptr i64 %t5554 to ptr
  %gml5556 = load i64, ptr %gmp5555, align 1, !alias.scope !4, !noalias !3
  %wp5557 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5556, ptr %wp5557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283104 word 0xeb09011f
  %r5558.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5558 = load i64, ptr %r5558.p, align 8, !alias.scope !3, !noalias !4
  %r5559.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5559 = load i64, ptr %r5559.p, align 8, !alias.scope !3, !noalias !4
  %t5560 = sub i64 %r5558, %r5559
  %fn5561 = icmp slt i64 %t5560, 0
  %fz5562 = icmp eq i64 %t5560, 0
  %fc5563 = icmp uge i64 %r5558, %r5559
  %fx15564 = xor i64 %r5558, %r5559
  %fx25565 = xor i64 %r5558, %t5560
  %fva5566 = and i64 %fx15564, %fx25565
  %fv5567 = icmp slt i64 %fva5566, 0
  %nz5568 = zext i1 %fn5561 to i64
  %zz5569 = zext i1 %fz5562 to i64
  %cz5570 = zext i1 %fc5563 to i64
  %vz5571 = zext i1 %fv5567 to i64
  %ns5572 = shl i64 %nz5568, 31
  %zs5573 = shl i64 %zz5569, 30
  %cs5574 = shl i64 %cz5570, 29
  %vs5575 = shl i64 %vz5571, 28
  %nzor5576 = or i64 %ns5572, %zs5573
  %cvor5577 = or i64 %cs5574, %vs5575
  %nzcv5578 = or i64 %nzor5576, %cvor5577
  %wp5579 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5578, ptr %wp5579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283108 word 0x54ffecac
  %r5580.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5580 = load i64, ptr %r5580.p, align 8, !alias.scope !3, !noalias !4
  %fsh5582 = lshr i64 %r5580, 30
  %ftr5583 = trunc i64 %fsh5582 to i1
  %fsh5584 = lshr i64 %r5580, 31
  %ftr5585 = trunc i64 %fsh5584 to i1
  %fsh5586 = lshr i64 %r5580, 28
  %ftr5587 = trunc i64 %fsh5586 to i1
  %fnz5588 = xor i1 %ftr5583, true
  %feq5589 = icmp eq i1 %ftr5585, %ftr5587
  %cond5581 = and i1 %fnz5588, %feq5589
  br i1 %cond5581, label %L_800282e9c, label %L_80028310c
L_80028310c:
  ; @pc 0x80028310c word 0x5a9fa3e8
  %t5590 = xor i32 0, -1
  %r5591.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5591 = load i64, ptr %r5591.p, align 8, !alias.scope !3, !noalias !4
  %fsh5593 = lshr i64 %r5591, 31
  %ftr5594 = trunc i64 %fsh5593 to i1
  %fsh5595 = lshr i64 %r5591, 28
  %ftr5596 = trunc i64 %fsh5595 to i1
  %cond5592 = icmp eq i1 %ftr5594, %ftr5596
  %sel5597 = select i1 %cond5592, i32 0, i32 %t5590
  %c5598 = zext i32 %sel5597 to i64
  %wp5599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5598, ptr %wp5599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283110 word 0x17fffe8d
  br label %L_800282b44
L_800283114:
  ; @pc 0x800283114 word 0xf9400fe8
  %r5600.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5600 = load i64, ptr %r5600.p, align 8, !alias.scope !3, !noalias !4
  %t5601 = add i64 %r5600, 24
  %gmp5602 = inttoptr i64 %t5601 to ptr
  %gml5603 = load i64, ptr %gmp5602, align 1, !alias.scope !4, !noalias !3
  %wp5604 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5603, ptr %wp5604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283118 word 0xf9406e69
  %r5605.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5605 = load i64, ptr %r5605.p, align 8, !alias.scope !3, !noalias !4
  %t5606 = add i64 %r5605, 216
  %gmp5607 = inttoptr i64 %t5606 to ptr
  %gml5608 = load i64, ptr %gmp5607, align 1, !alias.scope !4, !noalias !3
  %wp5609 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5608, ptr %wp5609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028311c word 0xeb09011f
  %r5610.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5610 = load i64, ptr %r5610.p, align 8, !alias.scope !3, !noalias !4
  %r5611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5611 = load i64, ptr %r5611.p, align 8, !alias.scope !3, !noalias !4
  %t5612 = sub i64 %r5610, %r5611
  %fn5613 = icmp slt i64 %t5612, 0
  %fz5614 = icmp eq i64 %t5612, 0
  %fc5615 = icmp uge i64 %r5610, %r5611
  %fx15616 = xor i64 %r5610, %r5611
  %fx25617 = xor i64 %r5610, %t5612
  %fva5618 = and i64 %fx15616, %fx25617
  %fv5619 = icmp slt i64 %fva5618, 0
  %nz5620 = zext i1 %fn5613 to i64
  %zz5621 = zext i1 %fz5614 to i64
  %cz5622 = zext i1 %fc5615 to i64
  %vz5623 = zext i1 %fv5619 to i64
  %ns5624 = shl i64 %nz5620, 31
  %zs5625 = shl i64 %zz5621, 30
  %cs5626 = shl i64 %cz5622, 29
  %vs5627 = shl i64 %vz5623, 28
  %nzor5628 = or i64 %ns5624, %zs5625
  %cvor5629 = or i64 %cs5626, %vs5627
  %nzcv5630 = or i64 %nzor5628, %cvor5629
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5630, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283120 word 0x54ffebe8
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %fsh5634 = lshr i64 %r5632, 29
  %ftr5635 = trunc i64 %fsh5634 to i1
  %fsh5636 = lshr i64 %r5632, 30
  %ftr5637 = trunc i64 %fsh5636 to i1
  %fnz5638 = xor i1 %ftr5637, true
  %cond5633 = and i1 %ftr5635, %fnz5638
  br i1 %cond5633, label %L_800282e9c, label %L_800283124_ft
L_800283128:
  ; @pc 0x800283128 word 0xbd401be0
  %r5639.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5639 = load i64, ptr %r5639.p, align 8, !alias.scope !3, !noalias !4
  %t5640 = add i64 %r5639, 24
  %gmp5641 = inttoptr i64 %t5640 to ptr
  %gml5642 = load i32, ptr %gmp5641, align 1, !alias.scope !4, !noalias !3
  %c5643 = zext i32 %gml5642 to i128
  %wp5644 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5643, ptr %wp5644, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80028312c word 0xbd40da61
  %r5645.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5645 = load i64, ptr %r5645.p, align 8, !alias.scope !3, !noalias !4
  %t5646 = add i64 %r5645, 216
  %gmp5647 = inttoptr i64 %t5646 to ptr
  %gml5648 = load i32, ptr %gmp5647, align 1, !alias.scope !4, !noalias !3
  %c5649 = zext i32 %gml5648 to i128
  %wp5650 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5649, ptr %wp5650, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283130 word 0x1e212000
  %fcmp5651 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp5652 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5651, ptr %wp5652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283134 word 0x54ffeb4c
  %r5653.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5653 = load i64, ptr %r5653.p, align 8, !alias.scope !3, !noalias !4
  %fsh5655 = lshr i64 %r5653, 30
  %ftr5656 = trunc i64 %fsh5655 to i1
  %fsh5657 = lshr i64 %r5653, 31
  %ftr5658 = trunc i64 %fsh5657 to i1
  %fsh5659 = lshr i64 %r5653, 28
  %ftr5660 = trunc i64 %fsh5659 to i1
  %fnz5661 = xor i1 %ftr5656, true
  %feq5662 = icmp eq i1 %ftr5658, %ftr5660
  %cond5654 = and i1 %fnz5661, %feq5662
  br i1 %cond5654, label %L_800282e9c, label %L_800283138_ft
L_80028313c:
  ; @pc 0x80028313c word 0xfd400fe0
  %r5663.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5663 = load i64, ptr %r5663.p, align 8, !alias.scope !3, !noalias !4
  %t5664 = add i64 %r5663, 24
  %gmp5665 = inttoptr i64 %t5664 to ptr
  %gml5666 = load i64, ptr %gmp5665, align 1, !alias.scope !4, !noalias !3
  %c5667 = zext i64 %gml5666 to i128
  %wp5668 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5667, ptr %wp5668, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283140 word 0xfd406e61
  %r5669.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5669 = load i64, ptr %r5669.p, align 8, !alias.scope !3, !noalias !4
  %t5670 = add i64 %r5669, 216
  %gmp5671 = inttoptr i64 %t5670 to ptr
  %gml5672 = load i64, ptr %gmp5671, align 1, !alias.scope !4, !noalias !3
  %c5673 = zext i64 %gml5672 to i128
  %wp5674 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5673, ptr %wp5674, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283144 word 0x1e612000
  %fcmp5675 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp5676 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5675, ptr %wp5676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283148 word 0x54ffeaac
  %r5677.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5677 = load i64, ptr %r5677.p, align 8, !alias.scope !3, !noalias !4
  %fsh5679 = lshr i64 %r5677, 30
  %ftr5680 = trunc i64 %fsh5679 to i1
  %fsh5681 = lshr i64 %r5677, 31
  %ftr5682 = trunc i64 %fsh5681 to i1
  %fsh5683 = lshr i64 %r5677, 28
  %ftr5684 = trunc i64 %fsh5683 to i1
  %fnz5685 = xor i1 %ftr5680, true
  %feq5686 = icmp eq i1 %ftr5682, %ftr5684
  %cond5678 = and i1 %fnz5685, %feq5686
  br i1 %cond5678, label %L_800282e9c, label %L_80028314c
L_80028314c:
  ; @pc 0x80028314c word 0x5a9f53e8
  %t5687 = xor i32 0, -1
  %r5688.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5688 = load i64, ptr %r5688.p, align 8, !alias.scope !3, !noalias !4
  %fsh5690 = lshr i64 %r5688, 31
  %ftr5691 = trunc i64 %fsh5690 to i1
  %cond5689 = xor i1 %ftr5691, true
  %sel5692 = select i1 %cond5689, i32 0, i32 %t5687
  %c5693 = zext i32 %sel5692 to i64
  %wp5694 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5693, ptr %wp5694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283150 word 0x17fffe7d
  br label %L_800282b44
L_800283154:
  ; @pc 0x800283154 word 0x2a0003e8
  %r5695.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5695 = load i64, ptr %r5695.p, align 8, !alias.scope !3, !noalias !4
  %c5696 = trunc i64 %r5695 to i32
  %t5697 = or i32 0, %c5696
  %c5698 = zext i32 %t5697 to i64
  %wp5699 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5698, ptr %wp5699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283158 word 0x17fffee5
  br label %L_800282cec
L_80028315c:
  ; @pc 0x80028315c word 0x90015789
  %wp5700 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp5700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283160 word 0x91229d29
  %r5701.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5701 = load i64, ptr %r5701.p, align 8, !alias.scope !3, !noalias !4
  %t5702 = add i64 %r5701, 2215
  %wp5703 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5702, ptr %wp5703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283164 word 0x1000008a
  %wp5704 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362372468, ptr %wp5704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283168 word 0x3868692b
  %r5705.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5705 = load i64, ptr %r5705.p, align 8, !alias.scope !3, !noalias !4
  %r5706.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5706 = load i64, ptr %r5706.p, align 8, !alias.scope !3, !noalias !4
  %t5707 = add i64 %r5705, %r5706
  %gmp5708 = inttoptr i64 %t5707 to ptr
  %gml5709 = load i8, ptr %gmp5708, align 1, !alias.scope !4, !noalias !3
  %c5710 = zext i8 %gml5709 to i64
  %wp5711 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5710, ptr %wp5711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028316c word 0x8b0b094a
  %r5712.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5712 = load i64, ptr %r5712.p, align 8, !alias.scope !3, !noalias !4
  %r5713.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5713 = load i64, ptr %r5713.p, align 8, !alias.scope !3, !noalias !4
  %t5714 = shl i64 %r5713, 2
  %t5715 = add i64 %r5712, %t5714
  %wp5716 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5715, ptr %wp5716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283170 word 0xd61f0140
  %r5717.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5717 = load i64, ptr %r5717.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r5717, label %L_800283170_jt_def [
    i64 34362372468, label %L_800283174
    i64 34362372488, label %L_800283188
    i64 34362372516, label %L_8002831a4
    i64 34362372544, label %L_8002831c0
    i64 34362372564, label %L_8002831d4
    i64 34362372584, label %L_8002831e8
    i64 34362372612, label %L_800283204
  ]
L_800283174:
  ; @pc 0x800283174 word 0x394063e8
  %r5718.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5718 = load i64, ptr %r5718.p, align 8, !alias.scope !3, !noalias !4
  %t5719 = add i64 %r5718, 24
  %gmp5720 = inttoptr i64 %t5719 to ptr
  %gml5721 = load i8, ptr %gmp5720, align 1, !alias.scope !4, !noalias !3
  %c5722 = zext i8 %gml5721 to i64
  %wp5723 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5722, ptr %wp5723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283178 word 0x39436269
  %r5724.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5724 = load i64, ptr %r5724.p, align 8, !alias.scope !3, !noalias !4
  %t5725 = add i64 %r5724, 216
  %gmp5726 = inttoptr i64 %t5725 to ptr
  %gml5727 = load i8, ptr %gmp5726, align 1, !alias.scope !4, !noalias !3
  %c5728 = zext i8 %gml5727 to i64
  %wp5729 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5728, ptr %wp5729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028317c word 0x4b090108
  %r5730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5730 = load i64, ptr %r5730.p, align 8, !alias.scope !3, !noalias !4
  %c5731 = trunc i64 %r5730 to i32
  %r5732.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5732 = load i64, ptr %r5732.p, align 8, !alias.scope !3, !noalias !4
  %c5733 = trunc i64 %r5732 to i32
  %t5734 = sub i32 %c5731, %c5733
  %c5735 = zext i32 %t5734 to i64
  %wp5736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5735, ptr %wp5736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283180 word 0xb9400bf7
  %r5737.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5737 = load i64, ptr %r5737.p, align 8, !alias.scope !3, !noalias !4
  %t5738 = add i64 %r5737, 8
  %gmp5739 = inttoptr i64 %t5738 to ptr
  %gml5740 = load i32, ptr %gmp5739, align 1, !alias.scope !4, !noalias !3
  %c5741 = zext i32 %gml5740 to i64
  %wp5742 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5741, ptr %wp5742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283184 word 0x17ffffda
  br label %L_8002830ec
L_800283188:
  ; @pc 0x800283188 word 0xb9401be8
  %r5743.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5743 = load i64, ptr %r5743.p, align 8, !alias.scope !3, !noalias !4
  %t5744 = add i64 %r5743, 24
  %gmp5745 = inttoptr i64 %t5744 to ptr
  %gml5746 = load i32, ptr %gmp5745, align 1, !alias.scope !4, !noalias !3
  %c5747 = zext i32 %gml5746 to i64
  %wp5748 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5747, ptr %wp5748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028318c word 0xb940da69
  %r5749.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5749 = load i64, ptr %r5749.p, align 8, !alias.scope !3, !noalias !4
  %t5750 = add i64 %r5749, 216
  %gmp5751 = inttoptr i64 %t5750 to ptr
  %gml5752 = load i32, ptr %gmp5751, align 1, !alias.scope !4, !noalias !3
  %c5753 = zext i32 %gml5752 to i64
  %wp5754 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5753, ptr %wp5754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283190 word 0x6b09011f
  %r5755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5755 = load i64, ptr %r5755.p, align 8, !alias.scope !3, !noalias !4
  %c5756 = trunc i64 %r5755 to i32
  %r5757.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5757 = load i64, ptr %r5757.p, align 8, !alias.scope !3, !noalias !4
  %c5758 = trunc i64 %r5757 to i32
  %t5759 = sub i32 %c5756, %c5758
  %fn5760 = icmp slt i32 %t5759, 0
  %fz5761 = icmp eq i32 %t5759, 0
  %fc5762 = icmp uge i32 %c5756, %c5758
  %fx15763 = xor i32 %c5756, %c5758
  %fx25764 = xor i32 %c5756, %t5759
  %fva5765 = and i32 %fx15763, %fx25764
  %fv5766 = icmp slt i32 %fva5765, 0
  %nz5767 = zext i1 %fn5760 to i64
  %zz5768 = zext i1 %fz5761 to i64
  %cz5769 = zext i1 %fc5762 to i64
  %vz5770 = zext i1 %fv5766 to i64
  %ns5771 = shl i64 %nz5767, 31
  %zs5772 = shl i64 %zz5768, 30
  %cs5773 = shl i64 %cz5769, 29
  %vs5774 = shl i64 %vz5770, 28
  %nzor5775 = or i64 %ns5771, %zs5772
  %cvor5776 = or i64 %cs5773, %vs5774
  %nzcv5777 = or i64 %nzor5775, %cvor5776
  %wp5778 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5777, ptr %wp5778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283194 word 0x5400040c
  %r5779.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5779 = load i64, ptr %r5779.p, align 8, !alias.scope !3, !noalias !4
  %fsh5781 = lshr i64 %r5779, 30
  %ftr5782 = trunc i64 %fsh5781 to i1
  %fsh5783 = lshr i64 %r5779, 31
  %ftr5784 = trunc i64 %fsh5783 to i1
  %fsh5785 = lshr i64 %r5779, 28
  %ftr5786 = trunc i64 %fsh5785 to i1
  %fnz5787 = xor i1 %ftr5782, true
  %feq5788 = icmp eq i1 %ftr5784, %ftr5786
  %cond5780 = and i1 %fnz5787, %feq5788
  br i1 %cond5780, label %L_800283214, label %L_800283198
L_800283198:
  ; @pc 0x800283198 word 0xb9400bf7
  %r5789.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5789 = load i64, ptr %r5789.p, align 8, !alias.scope !3, !noalias !4
  %t5790 = add i64 %r5789, 8
  %gmp5791 = inttoptr i64 %t5790 to ptr
  %gml5792 = load i32, ptr %gmp5791, align 1, !alias.scope !4, !noalias !3
  %c5793 = zext i32 %gml5792 to i64
  %wp5794 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5793, ptr %wp5794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028319c word 0x5a9fa3e8
  %t5795 = xor i32 0, -1
  %r5796.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5796 = load i64, ptr %r5796.p, align 8, !alias.scope !3, !noalias !4
  %fsh5798 = lshr i64 %r5796, 31
  %ftr5799 = trunc i64 %fsh5798 to i1
  %fsh5800 = lshr i64 %r5796, 28
  %ftr5801 = trunc i64 %fsh5800 to i1
  %cond5797 = icmp eq i1 %ftr5799, %ftr5801
  %sel5802 = select i1 %cond5797, i32 0, i32 %t5795
  %c5803 = zext i32 %sel5802 to i64
  %wp5804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5803, ptr %wp5804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831a0 word 0x17ffffd3
  br label %L_8002830ec
L_8002831a4:
  ; @pc 0x8002831a4 word 0xb9401be8
  %r5805.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5805 = load i64, ptr %r5805.p, align 8, !alias.scope !3, !noalias !4
  %t5806 = add i64 %r5805, 24
  %gmp5807 = inttoptr i64 %t5806 to ptr
  %gml5808 = load i32, ptr %gmp5807, align 1, !alias.scope !4, !noalias !3
  %c5809 = zext i32 %gml5808 to i64
  %wp5810 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5809, ptr %wp5810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831a8 word 0xb940da69
  %r5811.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5811 = load i64, ptr %r5811.p, align 8, !alias.scope !3, !noalias !4
  %t5812 = add i64 %r5811, 216
  %gmp5813 = inttoptr i64 %t5812 to ptr
  %gml5814 = load i32, ptr %gmp5813, align 1, !alias.scope !4, !noalias !3
  %c5815 = zext i32 %gml5814 to i64
  %wp5816 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5815, ptr %wp5816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831ac word 0x6b09011f
  %r5817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5817 = load i64, ptr %r5817.p, align 8, !alias.scope !3, !noalias !4
  %c5818 = trunc i64 %r5817 to i32
  %r5819.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5819 = load i64, ptr %r5819.p, align 8, !alias.scope !3, !noalias !4
  %c5820 = trunc i64 %r5819 to i32
  %t5821 = sub i32 %c5818, %c5820
  %fn5822 = icmp slt i32 %t5821, 0
  %fz5823 = icmp eq i32 %t5821, 0
  %fc5824 = icmp uge i32 %c5818, %c5820
  %fx15825 = xor i32 %c5818, %c5820
  %fx25826 = xor i32 %c5818, %t5821
  %fva5827 = and i32 %fx15825, %fx25826
  %fv5828 = icmp slt i32 %fva5827, 0
  %nz5829 = zext i1 %fn5822 to i64
  %zz5830 = zext i1 %fz5823 to i64
  %cz5831 = zext i1 %fc5824 to i64
  %vz5832 = zext i1 %fv5828 to i64
  %ns5833 = shl i64 %nz5829, 31
  %zs5834 = shl i64 %zz5830, 30
  %cs5835 = shl i64 %cz5831, 29
  %vs5836 = shl i64 %vz5832, 28
  %nzor5837 = or i64 %ns5833, %zs5834
  %cvor5838 = or i64 %cs5835, %vs5836
  %nzcv5839 = or i64 %nzor5837, %cvor5838
  %wp5840 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5839, ptr %wp5840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831b0 word 0x54000328
  %r5841.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5841 = load i64, ptr %r5841.p, align 8, !alias.scope !3, !noalias !4
  %fsh5843 = lshr i64 %r5841, 29
  %ftr5844 = trunc i64 %fsh5843 to i1
  %fsh5845 = lshr i64 %r5841, 30
  %ftr5846 = trunc i64 %fsh5845 to i1
  %fnz5847 = xor i1 %ftr5846, true
  %cond5842 = and i1 %ftr5844, %fnz5847
  br i1 %cond5842, label %L_800283214, label %L_8002831b4
L_8002831b4:
  ; @pc 0x8002831b4 word 0xb9400bf7
  %r5848.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5848 = load i64, ptr %r5848.p, align 8, !alias.scope !3, !noalias !4
  %t5849 = add i64 %r5848, 8
  %gmp5850 = inttoptr i64 %t5849 to ptr
  %gml5851 = load i32, ptr %gmp5850, align 1, !alias.scope !4, !noalias !3
  %c5852 = zext i32 %gml5851 to i64
  %wp5853 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5852, ptr %wp5853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831b8 word 0x5a9f23e8
  %t5854 = xor i32 0, -1
  %r5855.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5855 = load i64, ptr %r5855.p, align 8, !alias.scope !3, !noalias !4
  %fsh5857 = lshr i64 %r5855, 29
  %cond5856 = trunc i64 %fsh5857 to i1
  %sel5858 = select i1 %cond5856, i32 0, i32 %t5854
  %c5859 = zext i32 %sel5858 to i64
  %wp5860 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5859, ptr %wp5860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831bc word 0x17ffffcc
  br label %L_8002830ec
L_8002831c0:
  ; @pc 0x8002831c0 word 0xf9400fe8
  %r5861.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5861 = load i64, ptr %r5861.p, align 8, !alias.scope !3, !noalias !4
  %t5862 = add i64 %r5861, 24
  %gmp5863 = inttoptr i64 %t5862 to ptr
  %gml5864 = load i64, ptr %gmp5863, align 1, !alias.scope !4, !noalias !3
  %wp5865 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5864, ptr %wp5865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831c4 word 0xf9406e69
  %r5866.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5866 = load i64, ptr %r5866.p, align 8, !alias.scope !3, !noalias !4
  %t5867 = add i64 %r5866, 216
  %gmp5868 = inttoptr i64 %t5867 to ptr
  %gml5869 = load i64, ptr %gmp5868, align 1, !alias.scope !4, !noalias !3
  %wp5870 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5869, ptr %wp5870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831c8 word 0xeb09011f
  %r5871.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5871 = load i64, ptr %r5871.p, align 8, !alias.scope !3, !noalias !4
  %r5872.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5872 = load i64, ptr %r5872.p, align 8, !alias.scope !3, !noalias !4
  %t5873 = sub i64 %r5871, %r5872
  %fn5874 = icmp slt i64 %t5873, 0
  %fz5875 = icmp eq i64 %t5873, 0
  %fc5876 = icmp uge i64 %r5871, %r5872
  %fx15877 = xor i64 %r5871, %r5872
  %fx25878 = xor i64 %r5871, %t5873
  %fva5879 = and i64 %fx15877, %fx25878
  %fv5880 = icmp slt i64 %fva5879, 0
  %nz5881 = zext i1 %fn5874 to i64
  %zz5882 = zext i1 %fz5875 to i64
  %cz5883 = zext i1 %fc5876 to i64
  %vz5884 = zext i1 %fv5880 to i64
  %ns5885 = shl i64 %nz5881, 31
  %zs5886 = shl i64 %zz5882, 30
  %cs5887 = shl i64 %cz5883, 29
  %vs5888 = shl i64 %vz5884, 28
  %nzor5889 = or i64 %ns5885, %zs5886
  %cvor5890 = or i64 %cs5887, %vs5888
  %nzcv5891 = or i64 %nzor5889, %cvor5890
  %wp5892 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5891, ptr %wp5892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831cc word 0x54fffe6d
  %r5893.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5893 = load i64, ptr %r5893.p, align 8, !alias.scope !3, !noalias !4
  %fsh5895 = lshr i64 %r5893, 30
  %ftr5896 = trunc i64 %fsh5895 to i1
  %fsh5897 = lshr i64 %r5893, 31
  %ftr5898 = trunc i64 %fsh5897 to i1
  %fsh5899 = lshr i64 %r5893, 28
  %ftr5900 = trunc i64 %fsh5899 to i1
  %fnz5901 = xor i1 %ftr5896, true
  %feq5902 = icmp eq i1 %ftr5898, %ftr5900
  %fgt5903 = and i1 %fnz5901, %feq5902
  %cond5894 = xor i1 %fgt5903, true
  br i1 %cond5894, label %L_800283198, label %L_8002831d0_ft
L_8002831d4:
  ; @pc 0x8002831d4 word 0xf9400fe8
  %r5904.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5904 = load i64, ptr %r5904.p, align 8, !alias.scope !3, !noalias !4
  %t5905 = add i64 %r5904, 24
  %gmp5906 = inttoptr i64 %t5905 to ptr
  %gml5907 = load i64, ptr %gmp5906, align 1, !alias.scope !4, !noalias !3
  %wp5908 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5907, ptr %wp5908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831d8 word 0xf9406e69
  %r5909.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5909 = load i64, ptr %r5909.p, align 8, !alias.scope !3, !noalias !4
  %t5910 = add i64 %r5909, 216
  %gmp5911 = inttoptr i64 %t5910 to ptr
  %gml5912 = load i64, ptr %gmp5911, align 1, !alias.scope !4, !noalias !3
  %wp5913 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5912, ptr %wp5913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831dc word 0xeb09011f
  %r5914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5914 = load i64, ptr %r5914.p, align 8, !alias.scope !3, !noalias !4
  %r5915.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5915 = load i64, ptr %r5915.p, align 8, !alias.scope !3, !noalias !4
  %t5916 = sub i64 %r5914, %r5915
  %fn5917 = icmp slt i64 %t5916, 0
  %fz5918 = icmp eq i64 %t5916, 0
  %fc5919 = icmp uge i64 %r5914, %r5915
  %fx15920 = xor i64 %r5914, %r5915
  %fx25921 = xor i64 %r5914, %t5916
  %fva5922 = and i64 %fx15920, %fx25921
  %fv5923 = icmp slt i64 %fva5922, 0
  %nz5924 = zext i1 %fn5917 to i64
  %zz5925 = zext i1 %fz5918 to i64
  %cz5926 = zext i1 %fc5919 to i64
  %vz5927 = zext i1 %fv5923 to i64
  %ns5928 = shl i64 %nz5924, 31
  %zs5929 = shl i64 %zz5925, 30
  %cs5930 = shl i64 %cz5926, 29
  %vs5931 = shl i64 %vz5927, 28
  %nzor5932 = or i64 %ns5928, %zs5929
  %cvor5933 = or i64 %cs5930, %vs5931
  %nzcv5934 = or i64 %nzor5932, %cvor5933
  %wp5935 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5934, ptr %wp5935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831e0 word 0x54fffea9
  %r5936.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5936 = load i64, ptr %r5936.p, align 8, !alias.scope !3, !noalias !4
  %fsh5938 = lshr i64 %r5936, 29
  %ftr5939 = trunc i64 %fsh5938 to i1
  %fsh5940 = lshr i64 %r5936, 30
  %ftr5941 = trunc i64 %fsh5940 to i1
  %fnz5942 = xor i1 %ftr5941, true
  %fhi5943 = and i1 %ftr5939, %fnz5942
  %cond5937 = xor i1 %fhi5943, true
  br i1 %cond5937, label %L_8002831b4, label %L_8002831e4_ft
L_8002831e8:
  ; @pc 0x8002831e8 word 0xbd401be0
  %r5944.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5944 = load i64, ptr %r5944.p, align 8, !alias.scope !3, !noalias !4
  %t5945 = add i64 %r5944, 24
  %gmp5946 = inttoptr i64 %t5945 to ptr
  %gml5947 = load i32, ptr %gmp5946, align 1, !alias.scope !4, !noalias !3
  %c5948 = zext i32 %gml5947 to i128
  %wp5949 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5948, ptr %wp5949, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002831ec word 0xbd40da61
  %r5950.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5950 = load i64, ptr %r5950.p, align 8, !alias.scope !3, !noalias !4
  %t5951 = add i64 %r5950, 216
  %gmp5952 = inttoptr i64 %t5951 to ptr
  %gml5953 = load i32, ptr %gmp5952, align 1, !alias.scope !4, !noalias !3
  %c5954 = zext i32 %gml5953 to i128
  %wp5955 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5954, ptr %wp5955, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002831f0 word 0x1e212000
  %fcmp5956 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp5957 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5956, ptr %wp5957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831f4 word 0x5400010c
  %r5958.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5958 = load i64, ptr %r5958.p, align 8, !alias.scope !3, !noalias !4
  %fsh5960 = lshr i64 %r5958, 30
  %ftr5961 = trunc i64 %fsh5960 to i1
  %fsh5962 = lshr i64 %r5958, 31
  %ftr5963 = trunc i64 %fsh5962 to i1
  %fsh5964 = lshr i64 %r5958, 28
  %ftr5965 = trunc i64 %fsh5964 to i1
  %fnz5966 = xor i1 %ftr5961, true
  %feq5967 = icmp eq i1 %ftr5963, %ftr5965
  %cond5959 = and i1 %fnz5966, %feq5967
  br i1 %cond5959, label %L_800283214, label %L_8002831f8
L_8002831f8:
  ; @pc 0x8002831f8 word 0xb9400bf7
  %r5968.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5968 = load i64, ptr %r5968.p, align 8, !alias.scope !3, !noalias !4
  %t5969 = add i64 %r5968, 8
  %gmp5970 = inttoptr i64 %t5969 to ptr
  %gml5971 = load i32, ptr %gmp5970, align 1, !alias.scope !4, !noalias !3
  %c5972 = zext i32 %gml5971 to i64
  %wp5973 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5972, ptr %wp5973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002831fc word 0x5a9f53e8
  %t5974 = xor i32 0, -1
  %r5975.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5975 = load i64, ptr %r5975.p, align 8, !alias.scope !3, !noalias !4
  %fsh5977 = lshr i64 %r5975, 31
  %ftr5978 = trunc i64 %fsh5977 to i1
  %cond5976 = xor i1 %ftr5978, true
  %sel5979 = select i1 %cond5976, i32 0, i32 %t5974
  %c5980 = zext i32 %sel5979 to i64
  %wp5981 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5980, ptr %wp5981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283200 word 0x17ffffbb
  br label %L_8002830ec
L_800283204:
  ; @pc 0x800283204 word 0xfd400fe0
  %r5982.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5982 = load i64, ptr %r5982.p, align 8, !alias.scope !3, !noalias !4
  %t5983 = add i64 %r5982, 24
  %gmp5984 = inttoptr i64 %t5983 to ptr
  %gml5985 = load i64, ptr %gmp5984, align 1, !alias.scope !4, !noalias !3
  %c5986 = zext i64 %gml5985 to i128
  %wp5987 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c5986, ptr %wp5987, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283208 word 0xfd406e61
  %r5988.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5988 = load i64, ptr %r5988.p, align 8, !alias.scope !3, !noalias !4
  %t5989 = add i64 %r5988, 216
  %gmp5990 = inttoptr i64 %t5989 to ptr
  %gml5991 = load i64, ptr %gmp5990, align 1, !alias.scope !4, !noalias !3
  %c5992 = zext i64 %gml5991 to i128
  %wp5993 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c5992, ptr %wp5993, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80028320c word 0x1e612000
  %fcmp5994 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp5995 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp5994, ptr %wp5995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283210 word 0x54ffff4d
  %r5996.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5996 = load i64, ptr %r5996.p, align 8, !alias.scope !3, !noalias !4
  %fsh5998 = lshr i64 %r5996, 30
  %ftr5999 = trunc i64 %fsh5998 to i1
  %fsh6000 = lshr i64 %r5996, 31
  %ftr6001 = trunc i64 %fsh6000 to i1
  %fsh6002 = lshr i64 %r5996, 28
  %ftr6003 = trunc i64 %fsh6002 to i1
  %fnz6004 = xor i1 %ftr5999, true
  %feq6005 = icmp eq i1 %ftr6001, %ftr6003
  %fgt6006 = and i1 %fnz6004, %feq6005
  %cond5997 = xor i1 %fgt6006, true
  br i1 %cond5997, label %L_8002831f8, label %L_800283214
L_800283214:
  ; @pc 0x800283214 word 0xb9400288
  %r6007.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6007 = load i64, ptr %r6007.p, align 8, !alias.scope !3, !noalias !4
  %gmp6008 = inttoptr i64 %r6007 to ptr
  %gml6009 = load i32, ptr %gmp6008, align 1, !alias.scope !4, !noalias !3
  %c6010 = zext i32 %gml6009 to i64
  %wp6011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6010, ptr %wp6011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283218 word 0x51000509
  %r6012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6012 = load i64, ptr %r6012.p, align 8, !alias.scope !3, !noalias !4
  %c6013 = trunc i64 %r6012 to i32
  %t6014 = sub i32 %c6013, 1
  %c6015 = zext i32 %t6014 to i64
  %wp6016 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6015, ptr %wp6016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028321c word 0x6b0902df
  %r6017.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6017 = load i64, ptr %r6017.p, align 8, !alias.scope !3, !noalias !4
  %c6018 = trunc i64 %r6017 to i32
  %r6019.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6019 = load i64, ptr %r6019.p, align 8, !alias.scope !3, !noalias !4
  %c6020 = trunc i64 %r6019 to i32
  %t6021 = sub i32 %c6018, %c6020
  %fn6022 = icmp slt i32 %t6021, 0
  %fz6023 = icmp eq i32 %t6021, 0
  %fc6024 = icmp uge i32 %c6018, %c6020
  %fx16025 = xor i32 %c6018, %c6020
  %fx26026 = xor i32 %c6018, %t6021
  %fva6027 = and i32 %fx16025, %fx26026
  %fv6028 = icmp slt i32 %fva6027, 0
  %nz6029 = zext i1 %fn6022 to i64
  %zz6030 = zext i1 %fz6023 to i64
  %cz6031 = zext i1 %fc6024 to i64
  %vz6032 = zext i1 %fv6028 to i64
  %ns6033 = shl i64 %nz6029, 31
  %zs6034 = shl i64 %zz6030, 30
  %cs6035 = shl i64 %cz6031, 29
  %vs6036 = shl i64 %vz6032, 28
  %nzor6037 = or i64 %ns6033, %zs6034
  %cvor6038 = or i64 %cs6035, %vs6036
  %nzcv6039 = or i64 %nzor6037, %cvor6038
  %wp6040 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6039, ptr %wp6040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283220 word 0xb9400be9
  %r6041.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6041 = load i64, ptr %r6041.p, align 8, !alias.scope !3, !noalias !4
  %t6042 = add i64 %r6041, 8
  %gmp6043 = inttoptr i64 %t6042 to ptr
  %gml6044 = load i32, ptr %gmp6043, align 1, !alias.scope !4, !noalias !3
  %c6045 = zext i32 %gml6044 to i64
  %wp6046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6045, ptr %wp6046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283224 word 0x1a8913e9
  %r6047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6047 = load i64, ptr %r6047.p, align 8, !alias.scope !3, !noalias !4
  %c6048 = trunc i64 %r6047 to i32
  %r6049.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6049 = load i64, ptr %r6049.p, align 8, !alias.scope !3, !noalias !4
  %fsh6051 = lshr i64 %r6049, 30
  %ftr6052 = trunc i64 %fsh6051 to i1
  %cond6050 = xor i1 %ftr6052, true
  %sel6053 = select i1 %cond6050, i32 0, i32 %c6048
  %c6054 = zext i32 %sel6053 to i64
  %wp6055 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6054, ptr %wp6055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283228 word 0x0a090389
  %r6056.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6056 = load i64, ptr %r6056.p, align 8, !alias.scope !3, !noalias !4
  %c6057 = trunc i64 %r6056 to i32
  %r6058.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6058 = load i64, ptr %r6058.p, align 8, !alias.scope !3, !noalias !4
  %c6059 = trunc i64 %r6058 to i32
  %t6060 = and i32 %c6059, %c6057
  %c6061 = zext i32 %t6060 to i64
  %wp6062 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6061, ptr %wp6062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028322c word 0x7100053f
  %r6063.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6063 = load i64, ptr %r6063.p, align 8, !alias.scope !3, !noalias !4
  %c6064 = trunc i64 %r6063 to i32
  %t6065 = sub i32 %c6064, 1
  %fn6066 = icmp slt i32 %t6065, 0
  %fz6067 = icmp eq i32 %t6065, 0
  %fc6068 = icmp uge i32 %c6064, 1
  %fx16069 = xor i32 %c6064, 1
  %fx26070 = xor i32 %c6064, %t6065
  %fva6071 = and i32 %fx16069, %fx26070
  %fv6072 = icmp slt i32 %fva6071, 0
  %nz6073 = zext i1 %fn6066 to i64
  %zz6074 = zext i1 %fz6067 to i64
  %cz6075 = zext i1 %fc6068 to i64
  %vz6076 = zext i1 %fv6072 to i64
  %ns6077 = shl i64 %nz6073, 31
  %zs6078 = shl i64 %zz6074, 30
  %cs6079 = shl i64 %cz6075, 29
  %vs6080 = shl i64 %vz6076, 28
  %nzor6081 = or i64 %ns6077, %zs6078
  %cvor6082 = or i64 %cs6079, %vs6080
  %nzcv6083 = or i64 %nzor6081, %cvor6082
  %wp6084 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6083, ptr %wp6084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283230 word 0x54000060
  %r6085.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6085 = load i64, ptr %r6085.p, align 8, !alias.scope !3, !noalias !4
  %fsh6087 = lshr i64 %r6085, 30
  %cond6086 = trunc i64 %fsh6087 to i1
  br i1 %cond6086, label %L_80028323c, label %L_800283234_ft
L_80028323c:
  ; @pc 0x80028323c word 0xa9408289
  %r6091.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6091 = load i64, ptr %r6091.p, align 8, !alias.scope !3, !noalias !4
  %t6092 = add i64 %r6091, 8
  %t6093 = add i64 %t6092, 8
  %gmp6094 = inttoptr i64 %t6092 to ptr
  %gml6095 = load i64, ptr %gmp6094, align 1, !alias.scope !4, !noalias !3
  %gmp6096 = inttoptr i64 %t6093 to ptr
  %gml6097 = load i64, ptr %gmp6096, align 1, !alias.scope !4, !noalias !3
  %wp6098 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6095, ptr %wp6098, align 8, !alias.scope !3, !noalias !4
  %wp6099 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml6097, ptr %wp6099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283240 word 0x6b16011f
  %r6100.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6100 = load i64, ptr %r6100.p, align 8, !alias.scope !3, !noalias !4
  %c6101 = trunc i64 %r6100 to i32
  %r6102.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6102 = load i64, ptr %r6102.p, align 8, !alias.scope !3, !noalias !4
  %c6103 = trunc i64 %r6102 to i32
  %t6104 = sub i32 %c6101, %c6103
  %fn6105 = icmp slt i32 %t6104, 0
  %fz6106 = icmp eq i32 %t6104, 0
  %fc6107 = icmp uge i32 %c6101, %c6103
  %fx16108 = xor i32 %c6101, %c6103
  %fx26109 = xor i32 %c6101, %t6104
  %fva6110 = and i32 %fx16108, %fx26109
  %fv6111 = icmp slt i32 %fva6110, 0
  %nz6112 = zext i1 %fn6105 to i64
  %zz6113 = zext i1 %fz6106 to i64
  %cz6114 = zext i1 %fc6107 to i64
  %vz6115 = zext i1 %fv6111 to i64
  %ns6116 = shl i64 %nz6112, 31
  %zs6117 = shl i64 %zz6113, 30
  %cs6118 = shl i64 %cz6114, 29
  %vs6119 = shl i64 %vz6115, 28
  %nzor6120 = or i64 %ns6116, %zs6117
  %cvor6121 = or i64 %cs6118, %vs6119
  %nzcv6122 = or i64 %nzor6120, %cvor6121
  %wp6123 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6122, ptr %wp6123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283244 word 0x1a9f82c8
  %r6124.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6124 = load i64, ptr %r6124.p, align 8, !alias.scope !3, !noalias !4
  %c6125 = trunc i64 %r6124 to i32
  %r6126.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6126 = load i64, ptr %r6126.p, align 8, !alias.scope !3, !noalias !4
  %fsh6128 = lshr i64 %r6126, 29
  %ftr6129 = trunc i64 %fsh6128 to i1
  %fsh6130 = lshr i64 %r6126, 30
  %ftr6131 = trunc i64 %fsh6130 to i1
  %fnz6132 = xor i1 %ftr6131, true
  %cond6127 = and i1 %ftr6129, %fnz6132
  %sel6133 = select i1 %cond6127, i32 %c6125, i32 0
  %c6134 = zext i32 %sel6133 to i64
  %wp6135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6134, ptr %wp6135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283248 word 0xb9401a82
  %r6136.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6136 = load i64, ptr %r6136.p, align 8, !alias.scope !3, !noalias !4
  %t6137 = add i64 %r6136, 24
  %gmp6138 = inttoptr i64 %t6137 to ptr
  %gml6139 = load i32, ptr %gmp6138, align 1, !alias.scope !4, !noalias !3
  %c6140 = zext i32 %gml6139 to i64
  %wp6141 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c6140, ptr %wp6141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028324c word 0xf868d921
  %r6142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6142 = load i64, ptr %r6142.p, align 8, !alias.scope !3, !noalias !4
  %r6143.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6143 = load i64, ptr %r6143.p, align 8, !alias.scope !3, !noalias !4
  %c6144 = trunc i64 %r6143 to i32
  %c6145 = sext i32 %c6144 to i64
  %t6146 = shl i64 %c6145, 3
  %t6147 = add i64 %r6142, %t6146
  %gmp6148 = inttoptr i64 %t6147 to ptr
  %gml6149 = load i64, ptr %gmp6148, align 1, !alias.scope !4, !noalias !3
  %wp6150 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml6149, ptr %wp6150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283250 word 0xf9400008
  %r6151.p = getelementptr inbounds i8, ptr %c, i64 0
  %r6151 = load i64, ptr %r6151.p, align 8, !alias.scope !3, !noalias !4
  %gmp6152 = inttoptr i64 %r6151 to ptr
  %gml6153 = load i64, ptr %gmp6152, align 1, !alias.scope !4, !noalias !3
  %wp6154 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6153, ptr %wp6154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283254 word 0xf9403d09
  %r6155.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6155 = load i64, ptr %r6155.p, align 8, !alias.scope !3, !noalias !4
  %t6156 = add i64 %r6155, 120
  %gmp6157 = inttoptr i64 %t6156 to ptr
  %gml6158 = load i64, ptr %gmp6157, align 1, !alias.scope !4, !noalias !3
  %wp6159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6158, ptr %wp6159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283258 word 0x910043e8
  %r6160.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6160 = load i64, ptr %r6160.p, align 8, !alias.scope !3, !noalias !4
  %t6161 = add i64 %r6160, 16
  %wp6162 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6161, ptr %wp6162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028325c word 0xd63f0120
  %r6163.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6163 = load i64, ptr %r6163.p, align 8, !alias.scope !3, !noalias !4
  %fp6164 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6163, ptr %fp6164, align 8, !alias.scope !3, !noalias !4
  %wp6165 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362372704, ptr %wp6165, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800283260 word 0xb94013e8
  %r6166.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6166 = load i64, ptr %r6166.p, align 8, !alias.scope !3, !noalias !4
  %t6167 = add i64 %r6166, 16
  %gmp6168 = inttoptr i64 %t6167 to ptr
  %gml6169 = load i32, ptr %gmp6168, align 1, !alias.scope !4, !noalias !3
  %c6170 = zext i32 %gml6169 to i64
  %wp6171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6170, ptr %wp6171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283264 word 0xb94002a9
  %r6172.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6172 = load i64, ptr %r6172.p, align 8, !alias.scope !3, !noalias !4
  %gmp6173 = inttoptr i64 %r6172 to ptr
  %gml6174 = load i32, ptr %gmp6173, align 1, !alias.scope !4, !noalias !3
  %c6175 = zext i32 %gml6174 to i64
  %wp6176 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6175, ptr %wp6176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283268 word 0x6b09011f
  %r6177.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6177 = load i64, ptr %r6177.p, align 8, !alias.scope !3, !noalias !4
  %c6178 = trunc i64 %r6177 to i32
  %r6179.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6179 = load i64, ptr %r6179.p, align 8, !alias.scope !3, !noalias !4
  %c6180 = trunc i64 %r6179 to i32
  %t6181 = sub i32 %c6178, %c6180
  %fn6182 = icmp slt i32 %t6181, 0
  %fz6183 = icmp eq i32 %t6181, 0
  %fc6184 = icmp uge i32 %c6178, %c6180
  %fx16185 = xor i32 %c6178, %c6180
  %fx26186 = xor i32 %c6178, %t6181
  %fva6187 = and i32 %fx16185, %fx26186
  %fv6188 = icmp slt i32 %fva6187, 0
  %nz6189 = zext i1 %fn6182 to i64
  %zz6190 = zext i1 %fz6183 to i64
  %cz6191 = zext i1 %fc6184 to i64
  %vz6192 = zext i1 %fv6188 to i64
  %ns6193 = shl i64 %nz6189, 31
  %zs6194 = shl i64 %zz6190, 30
  %cs6195 = shl i64 %cz6191, 29
  %vs6196 = shl i64 %vz6192, 28
  %nzor6197 = or i64 %ns6193, %zs6194
  %cvor6198 = or i64 %cs6195, %vs6196
  %nzcv6199 = or i64 %nzor6197, %cvor6198
  %wp6200 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6199, ptr %wp6200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028326c word 0x54000781
  %r6201.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6201 = load i64, ptr %r6201.p, align 8, !alias.scope !3, !noalias !4
  %fsh6203 = lshr i64 %r6201, 30
  %ftr6204 = trunc i64 %fsh6203 to i1
  %cond6202 = xor i1 %ftr6204, true
  br i1 %cond6202, label %L_80028335c, label %L_800283270_ft
L_80028328c:
  ; @pc 0x80028328c word 0x386b692c
  %r6268.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6268 = load i64, ptr %r6268.p, align 8, !alias.scope !3, !noalias !4
  %r6269.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6269 = load i64, ptr %r6269.p, align 8, !alias.scope !3, !noalias !4
  %t6270 = add i64 %r6268, %r6269
  %gmp6271 = inttoptr i64 %t6270 to ptr
  %gml6272 = load i8, ptr %gmp6271, align 1, !alias.scope !4, !noalias !3
  %c6273 = zext i8 %gml6272 to i64
  %wp6274 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6273, ptr %wp6274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283290 word 0x7100019f
  %r6275.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6275 = load i64, ptr %r6275.p, align 8, !alias.scope !3, !noalias !4
  %c6276 = trunc i64 %r6275 to i32
  %t6277 = sub i32 %c6276, 0
  %fn6278 = icmp slt i32 %t6277, 0
  %fz6279 = icmp eq i32 %t6277, 0
  %fc6280 = icmp uge i32 %c6276, 0
  %fx16281 = xor i32 %c6276, 0
  %fx26282 = xor i32 %c6276, %t6277
  %fva6283 = and i32 %fx16281, %fx26282
  %fv6284 = icmp slt i32 %fva6283, 0
  %nz6285 = zext i1 %fn6278 to i64
  %zz6286 = zext i1 %fz6279 to i64
  %cz6287 = zext i1 %fc6280 to i64
  %vz6288 = zext i1 %fv6284 to i64
  %ns6289 = shl i64 %nz6285, 31
  %zs6290 = shl i64 %zz6286, 30
  %cs6291 = shl i64 %cz6287, 29
  %vs6292 = shl i64 %vz6288, 28
  %nzor6293 = or i64 %ns6289, %zs6290
  %cvor6294 = or i64 %cs6291, %vs6292
  %nzcv6295 = or i64 %nzor6293, %cvor6294
  %wp6296 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6295, ptr %wp6296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283294 word 0x386b694d
  %r6297.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6297 = load i64, ptr %r6297.p, align 8, !alias.scope !3, !noalias !4
  %r6298.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6298 = load i64, ptr %r6298.p, align 8, !alias.scope !3, !noalias !4
  %t6299 = add i64 %r6297, %r6298
  %gmp6300 = inttoptr i64 %t6299 to ptr
  %gml6301 = load i8, ptr %gmp6300, align 1, !alias.scope !4, !noalias !3
  %c6302 = zext i8 %gml6301 to i64
  %wp6303 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c6302, ptr %wp6303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283298 word 0x1a9f1108
  %r6304.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6304 = load i64, ptr %r6304.p, align 8, !alias.scope !3, !noalias !4
  %c6305 = trunc i64 %r6304 to i32
  %r6306.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6306 = load i64, ptr %r6306.p, align 8, !alias.scope !3, !noalias !4
  %fsh6308 = lshr i64 %r6306, 30
  %ftr6309 = trunc i64 %fsh6308 to i1
  %cond6307 = xor i1 %ftr6309, true
  %sel6310 = select i1 %cond6307, i32 %c6305, i32 0
  %c6311 = zext i32 %sel6310 to i64
  %wp6312 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6311, ptr %wp6312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028329c word 0x6b0d019f
  %r6313.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6313 = load i64, ptr %r6313.p, align 8, !alias.scope !3, !noalias !4
  %c6314 = trunc i64 %r6313 to i32
  %r6315.p = getelementptr inbounds i8, ptr %c, i64 104
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
  ; @pc 0x8002832a0 word 0x5a99372e
  %r6337.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6337 = load i64, ptr %r6337.p, align 8, !alias.scope !3, !noalias !4
  %c6338 = trunc i64 %r6337 to i32
  %r6339.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6339 = load i64, ptr %r6339.p, align 8, !alias.scope !3, !noalias !4
  %c6340 = trunc i64 %r6339 to i32
  %t6341 = sub i32 0, %c6340
  %r6342.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6342 = load i64, ptr %r6342.p, align 8, !alias.scope !3, !noalias !4
  %fsh6344 = lshr i64 %r6342, 29
  %ftr6345 = trunc i64 %fsh6344 to i1
  %cond6343 = xor i1 %ftr6345, true
  %sel6346 = select i1 %cond6343, i32 %c6338, i32 %t6341
  %c6347 = zext i32 %sel6346 to i64
  %wp6348 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c6347, ptr %wp6348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832a4 word 0x1a8e0108
  %r6349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6349 = load i64, ptr %r6349.p, align 8, !alias.scope !3, !noalias !4
  %c6350 = trunc i64 %r6349 to i32
  %r6351.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6351 = load i64, ptr %r6351.p, align 8, !alias.scope !3, !noalias !4
  %c6352 = trunc i64 %r6351 to i32
  %r6353.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6353 = load i64, ptr %r6353.p, align 8, !alias.scope !3, !noalias !4
  %fsh6355 = lshr i64 %r6353, 30
  %cond6354 = trunc i64 %fsh6355 to i1
  %sel6356 = select i1 %cond6354, i32 %c6350, i32 %c6352
  %c6357 = zext i32 %sel6356 to i64
  %wp6358 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6357, ptr %wp6358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832a8 word 0x340002ac
  %r6359.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6359 = load i64, ptr %r6359.p, align 8, !alias.scope !3, !noalias !4
  %c6360 = trunc i64 %r6359 to i32
  %cmp6361 = icmp eq i32 %c6360, 0
  br i1 %cmp6361, label %L_8002832fc, label %L_8002832ac_ft
L_8002832c4:
  ; @pc 0x8002832c4 word 0x51000508
  %r6418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6418 = load i64, ptr %r6418.p, align 8, !alias.scope !3, !noalias !4
  %c6419 = trunc i64 %r6418 to i32
  %t6420 = sub i32 %c6419, 1
  %c6421 = zext i32 %t6420 to i64
  %wp6422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6421, ptr %wp6422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832c8 word 0x7100191f
  %r6423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6423 = load i64, ptr %r6423.p, align 8, !alias.scope !3, !noalias !4
  %c6424 = trunc i64 %r6423 to i32
  %t6425 = sub i32 %c6424, 6
  %fn6426 = icmp slt i32 %t6425, 0
  %fz6427 = icmp eq i32 %t6425, 0
  %fc6428 = icmp uge i32 %c6424, 6
  %fx16429 = xor i32 %c6424, 6
  %fx26430 = xor i32 %c6424, %t6425
  %fva6431 = and i32 %fx16429, %fx26430
  %fv6432 = icmp slt i32 %fva6431, 0
  %nz6433 = zext i1 %fn6426 to i64
  %zz6434 = zext i1 %fz6427 to i64
  %cz6435 = zext i1 %fc6428 to i64
  %vz6436 = zext i1 %fv6432 to i64
  %ns6437 = shl i64 %nz6433, 31
  %zs6438 = shl i64 %zz6434, 30
  %cs6439 = shl i64 %cz6435, 29
  %vs6440 = shl i64 %vz6436, 28
  %nzor6441 = or i64 %ns6437, %zs6438
  %cvor6442 = or i64 %cs6439, %vs6440
  %nzcv6443 = or i64 %nzor6441, %cvor6442
  %wp6444 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6443, ptr %wp6444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832cc word 0x54000488
  %r6445.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6445 = load i64, ptr %r6445.p, align 8, !alias.scope !3, !noalias !4
  %fsh6447 = lshr i64 %r6445, 29
  %ftr6448 = trunc i64 %fsh6447 to i1
  %fsh6449 = lshr i64 %r6445, 30
  %ftr6450 = trunc i64 %fsh6449 to i1
  %fnz6451 = xor i1 %ftr6450, true
  %cond6446 = and i1 %ftr6448, %fnz6451
  br i1 %cond6446, label %L_80028335c, label %L_8002832d0_ft
L_8002832e8:
  ; @pc 0x8002832e8 word 0xb9401be8
  %r6470.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6470 = load i64, ptr %r6470.p, align 8, !alias.scope !3, !noalias !4
  %t6471 = add i64 %r6470, 24
  %gmp6472 = inttoptr i64 %t6471 to ptr
  %gml6473 = load i32, ptr %gmp6472, align 1, !alias.scope !4, !noalias !3
  %c6474 = zext i32 %gml6473 to i64
  %wp6475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6474, ptr %wp6475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832ec word 0xb940da69
  %r6476.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6476 = load i64, ptr %r6476.p, align 8, !alias.scope !3, !noalias !4
  %t6477 = add i64 %r6476, 216
  %gmp6478 = inttoptr i64 %t6477 to ptr
  %gml6479 = load i32, ptr %gmp6478, align 1, !alias.scope !4, !noalias !3
  %c6480 = zext i32 %gml6479 to i64
  %wp6481 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6480, ptr %wp6481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832f0 word 0x6b09011f
  %r6482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6482 = load i64, ptr %r6482.p, align 8, !alias.scope !3, !noalias !4
  %c6483 = trunc i64 %r6482 to i32
  %r6484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6484 = load i64, ptr %r6484.p, align 8, !alias.scope !3, !noalias !4
  %c6485 = trunc i64 %r6484 to i32
  %t6486 = sub i32 %c6483, %c6485
  %fn6487 = icmp slt i32 %t6486, 0
  %fz6488 = icmp eq i32 %t6486, 0
  %fc6489 = icmp uge i32 %c6483, %c6485
  %fx16490 = xor i32 %c6483, %c6485
  %fx26491 = xor i32 %c6483, %t6486
  %fva6492 = and i32 %fx16490, %fx26491
  %fv6493 = icmp slt i32 %fva6492, 0
  %nz6494 = zext i1 %fn6487 to i64
  %zz6495 = zext i1 %fz6488 to i64
  %cz6496 = zext i1 %fc6489 to i64
  %vz6497 = zext i1 %fv6493 to i64
  %ns6498 = shl i64 %nz6494, 31
  %zs6499 = shl i64 %zz6495, 30
  %cs6500 = shl i64 %cz6496, 29
  %vs6501 = shl i64 %vz6497, 28
  %nzor6502 = or i64 %ns6498, %zs6499
  %cvor6503 = or i64 %cs6500, %vs6501
  %nzcv6504 = or i64 %nzor6502, %cvor6503
  %wp6505 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6504, ptr %wp6505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832f4 word 0x54ffa96c
  %r6506.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6506 = load i64, ptr %r6506.p, align 8, !alias.scope !3, !noalias !4
  %fsh6508 = lshr i64 %r6506, 30
  %ftr6509 = trunc i64 %fsh6508 to i1
  %fsh6510 = lshr i64 %r6506, 31
  %ftr6511 = trunc i64 %fsh6510 to i1
  %fsh6512 = lshr i64 %r6506, 28
  %ftr6513 = trunc i64 %fsh6512 to i1
  %fnz6514 = xor i1 %ftr6509, true
  %feq6515 = icmp eq i1 %ftr6511, %ftr6513
  %cond6507 = and i1 %fnz6514, %feq6515
  br i1 %cond6507, label %L_800282820, label %L_8002832f8
L_8002832f8:
  ; @pc 0x8002832f8 word 0x5a9fa3e8
  %t6516 = xor i32 0, -1
  %r6517.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6517 = load i64, ptr %r6517.p, align 8, !alias.scope !3, !noalias !4
  %fsh6519 = lshr i64 %r6517, 31
  %ftr6520 = trunc i64 %fsh6519 to i1
  %fsh6521 = lshr i64 %r6517, 28
  %ftr6522 = trunc i64 %fsh6521 to i1
  %cond6518 = icmp eq i1 %ftr6520, %ftr6522
  %sel6523 = select i1 %cond6518, i32 0, i32 %t6516
  %c6524 = zext i32 %sel6523 to i64
  %wp6525 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6524, ptr %wp6525, align 8, !alias.scope !3, !noalias !4
  br label %L_8002832fc
L_8002832fc:
  ; @pc 0x8002832fc word 0xaa1f03e0
  %t6526 = or i64 0, 0
  %wp6527 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t6526, ptr %wp6527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283300 word 0x310006df
  %r6528.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6528 = load i64, ptr %r6528.p, align 8, !alias.scope !3, !noalias !4
  %c6529 = trunc i64 %r6528 to i32
  %t6530 = add i32 %c6529, 1
  %fn6531 = icmp slt i32 %t6530, 0
  %fz6532 = icmp eq i32 %t6530, 0
  %fc6533 = icmp ult i32 %t6530, %c6529
  %fx16534 = xor i32 %c6529, %t6530
  %fx26535 = xor i32 1, %t6530
  %fva6536 = and i32 %fx16534, %fx26535
  %fv6537 = icmp slt i32 %fva6536, 0
  %nz6538 = zext i1 %fn6531 to i64
  %zz6539 = zext i1 %fz6532 to i64
  %cz6540 = zext i1 %fc6533 to i64
  %vz6541 = zext i1 %fv6537 to i64
  %ns6542 = shl i64 %nz6538, 31
  %zs6543 = shl i64 %zz6539, 30
  %cs6544 = shl i64 %cz6540, 29
  %vs6545 = shl i64 %vz6541, 28
  %nzor6546 = or i64 %ns6542, %zs6543
  %cvor6547 = or i64 %cs6544, %vs6545
  %nzcv6548 = or i64 %nzor6546, %cvor6547
  %wp6549 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6548, ptr %wp6549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283304 word 0x54ffb1a0
  %r6550.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6550 = load i64, ptr %r6550.p, align 8, !alias.scope !3, !noalias !4
  %fsh6552 = lshr i64 %r6550, 30
  %cond6551 = trunc i64 %fsh6552 to i1
  br i1 %cond6551, label %L_800282938, label %L_800283308_ft
L_800283314:
  ; @pc 0x800283314 word 0x51000508
  %r6583.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6583 = load i64, ptr %r6583.p, align 8, !alias.scope !3, !noalias !4
  %c6584 = trunc i64 %r6583 to i32
  %t6585 = sub i32 %c6584, 1
  %c6586 = zext i32 %t6585 to i64
  %wp6587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6586, ptr %wp6587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283318 word 0x7100191f
  %r6588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6588 = load i64, ptr %r6588.p, align 8, !alias.scope !3, !noalias !4
  %c6589 = trunc i64 %r6588 to i32
  %t6590 = sub i32 %c6589, 6
  %fn6591 = icmp slt i32 %t6590, 0
  %fz6592 = icmp eq i32 %t6590, 0
  %fc6593 = icmp uge i32 %c6589, 6
  %fx16594 = xor i32 %c6589, 6
  %fx26595 = xor i32 %c6589, %t6590
  %fva6596 = and i32 %fx16594, %fx26595
  %fv6597 = icmp slt i32 %fva6596, 0
  %nz6598 = zext i1 %fn6591 to i64
  %zz6599 = zext i1 %fz6592 to i64
  %cz6600 = zext i1 %fc6593 to i64
  %vz6601 = zext i1 %fv6597 to i64
  %ns6602 = shl i64 %nz6598, 31
  %zs6603 = shl i64 %zz6599, 30
  %cs6604 = shl i64 %cz6600, 29
  %vs6605 = shl i64 %vz6601, 28
  %nzor6606 = or i64 %ns6602, %zs6603
  %cvor6607 = or i64 %cs6604, %vs6605
  %nzcv6608 = or i64 %nzor6606, %cvor6607
  %wp6609 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6608, ptr %wp6609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028331c word 0x54000668
  %r6610.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6610 = load i64, ptr %r6610.p, align 8, !alias.scope !3, !noalias !4
  %fsh6612 = lshr i64 %r6610, 29
  %ftr6613 = trunc i64 %fsh6612 to i1
  %fsh6614 = lshr i64 %r6610, 30
  %ftr6615 = trunc i64 %fsh6614 to i1
  %fnz6616 = xor i1 %ftr6615, true
  %cond6611 = and i1 %ftr6613, %fnz6616
  br i1 %cond6611, label %L_8002833e8, label %L_800283320_ft
L_800283338:
  ; @pc 0x800283338 word 0xb9401be8
  %r6635.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6635 = load i64, ptr %r6635.p, align 8, !alias.scope !3, !noalias !4
  %t6636 = add i64 %r6635, 24
  %gmp6637 = inttoptr i64 %t6636 to ptr
  %gml6638 = load i32, ptr %gmp6637, align 1, !alias.scope !4, !noalias !3
  %c6639 = zext i32 %gml6638 to i64
  %wp6640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6639, ptr %wp6640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028333c word 0xb940da69
  %r6641.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6641 = load i64, ptr %r6641.p, align 8, !alias.scope !3, !noalias !4
  %t6642 = add i64 %r6641, 216
  %gmp6643 = inttoptr i64 %t6642 to ptr
  %gml6644 = load i32, ptr %gmp6643, align 1, !alias.scope !4, !noalias !3
  %c6645 = zext i32 %gml6644 to i64
  %wp6646 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6645, ptr %wp6646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283340 word 0x6b09011f
  %r6647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6647 = load i64, ptr %r6647.p, align 8, !alias.scope !3, !noalias !4
  %c6648 = trunc i64 %r6647 to i32
  %r6649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6649 = load i64, ptr %r6649.p, align 8, !alias.scope !3, !noalias !4
  %c6650 = trunc i64 %r6649 to i32
  %t6651 = sub i32 %c6648, %c6650
  %fn6652 = icmp slt i32 %t6651, 0
  %fz6653 = icmp eq i32 %t6651, 0
  %fc6654 = icmp uge i32 %c6648, %c6650
  %fx16655 = xor i32 %c6648, %c6650
  %fx26656 = xor i32 %c6648, %t6651
  %fva6657 = and i32 %fx16655, %fx26656
  %fv6658 = icmp slt i32 %fva6657, 0
  %nz6659 = zext i1 %fn6652 to i64
  %zz6660 = zext i1 %fz6653 to i64
  %cz6661 = zext i1 %fc6654 to i64
  %vz6662 = zext i1 %fv6658 to i64
  %ns6663 = shl i64 %nz6659, 31
  %zs6664 = shl i64 %zz6660, 30
  %cs6665 = shl i64 %cz6661, 29
  %vs6666 = shl i64 %vz6662, 28
  %nzor6667 = or i64 %ns6663, %zs6664
  %cvor6668 = or i64 %cs6665, %vs6666
  %nzcv6669 = or i64 %nzor6667, %cvor6668
  %wp6670 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6669, ptr %wp6670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283344 word 0x54ffc7ec
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
  br i1 %cond6672, label %L_800282c40, label %L_800283348
L_800283348:
  ; @pc 0x800283348 word 0x5a9fa3e8
  %t6681 = xor i32 0, -1
  %r6682.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6682 = load i64, ptr %r6682.p, align 8, !alias.scope !3, !noalias !4
  %fsh6684 = lshr i64 %r6682, 31
  %ftr6685 = trunc i64 %fsh6684 to i1
  %fsh6686 = lshr i64 %r6682, 28
  %ftr6687 = trunc i64 %fsh6686 to i1
  %cond6683 = icmp eq i1 %ftr6685, %ftr6687
  %sel6688 = select i1 %cond6683, i32 0, i32 %t6681
  %c6689 = zext i32 %sel6688 to i64
  %wp6690 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6689, ptr %wp6690, align 8, !alias.scope !3, !noalias !4
  br label %L_80028334c
L_80028334c:
  ; @pc 0x80028334c word 0x13000349
  %r6691.p = getelementptr inbounds i8, ptr %c, i64 208
  %r6691 = load i64, ptr %r6691.p, align 8, !alias.scope !3, !noalias !4
  %c6692 = trunc i64 %r6691 to i32
  %t6693 = lshr i32 %c6692, 0
  %t6694 = and i32 %t6693, 1
  %t6695 = sub i32 0, %t6694
  %t6696 = and i32 %t6695, -2
  %t6697 = and i32 %c6692, 1
  %t6698 = or i32 %t6696, %t6697
  %c6699 = zext i32 %t6698 to i64
  %wp6700 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6699, ptr %wp6700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283350 word 0x6b09011f
  %r6701.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6701 = load i64, ptr %r6701.p, align 8, !alias.scope !3, !noalias !4
  %c6702 = trunc i64 %r6701 to i32
  %r6703.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6703 = load i64, ptr %r6703.p, align 8, !alias.scope !3, !noalias !4
  %c6704 = trunc i64 %r6703 to i32
  %t6705 = sub i32 %c6702, %c6704
  %fn6706 = icmp slt i32 %t6705, 0
  %fz6707 = icmp eq i32 %t6705, 0
  %fc6708 = icmp uge i32 %c6702, %c6704
  %fx16709 = xor i32 %c6702, %c6704
  %fx26710 = xor i32 %c6702, %t6705
  %fva6711 = and i32 %fx16709, %fx26710
  %fv6712 = icmp slt i32 %fva6711, 0
  %nz6713 = zext i1 %fn6706 to i64
  %zz6714 = zext i1 %fz6707 to i64
  %cz6715 = zext i1 %fc6708 to i64
  %vz6716 = zext i1 %fv6712 to i64
  %ns6717 = shl i64 %nz6713, 31
  %zs6718 = shl i64 %zz6714, 30
  %cs6719 = shl i64 %cz6715, 29
  %vs6720 = shl i64 %vz6716, 28
  %nzor6721 = or i64 %ns6717, %zs6718
  %cvor6722 = or i64 %cs6719, %vs6720
  %nzcv6723 = or i64 %nzor6721, %cvor6722
  %wp6724 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6723, ptr %wp6724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283354 word 0x54ffc76c
  %r6725.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6725 = load i64, ptr %r6725.p, align 8, !alias.scope !3, !noalias !4
  %fsh6727 = lshr i64 %r6725, 30
  %ftr6728 = trunc i64 %fsh6727 to i1
  %fsh6729 = lshr i64 %r6725, 31
  %ftr6730 = trunc i64 %fsh6729 to i1
  %fsh6731 = lshr i64 %r6725, 28
  %ftr6732 = trunc i64 %fsh6731 to i1
  %fnz6733 = xor i1 %ftr6728, true
  %feq6734 = icmp eq i1 %ftr6730, %ftr6732
  %cond6726 = and i1 %fnz6733, %feq6734
  br i1 %cond6726, label %L_800282c40, label %L_800283358_ft
L_80028335c:
  ; @pc 0x80028335c word 0x2a1f03e8
  %t6735 = or i32 0, 0
  %c6736 = zext i32 %t6735 to i64
  %wp6737 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6736, ptr %wp6737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283360 word 0x17ffffe7
  br label %L_8002832fc
L_800283364:
  ; @pc 0x800283364 word 0xb9401be8
  %r6738.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6738 = load i64, ptr %r6738.p, align 8, !alias.scope !3, !noalias !4
  %t6739 = add i64 %r6738, 24
  %gmp6740 = inttoptr i64 %t6739 to ptr
  %gml6741 = load i32, ptr %gmp6740, align 1, !alias.scope !4, !noalias !3
  %c6742 = zext i32 %gml6741 to i64
  %wp6743 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6742, ptr %wp6743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283368 word 0xb940da69
  %r6744.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6744 = load i64, ptr %r6744.p, align 8, !alias.scope !3, !noalias !4
  %t6745 = add i64 %r6744, 216
  %gmp6746 = inttoptr i64 %t6745 to ptr
  %gml6747 = load i32, ptr %gmp6746, align 1, !alias.scope !4, !noalias !3
  %c6748 = zext i32 %gml6747 to i64
  %wp6749 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6748, ptr %wp6749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028336c word 0x6b09011f
  %r6750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6750 = load i64, ptr %r6750.p, align 8, !alias.scope !3, !noalias !4
  %c6751 = trunc i64 %r6750 to i32
  %r6752.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6752 = load i64, ptr %r6752.p, align 8, !alias.scope !3, !noalias !4
  %c6753 = trunc i64 %r6752 to i32
  %t6754 = sub i32 %c6751, %c6753
  %fn6755 = icmp slt i32 %t6754, 0
  %fz6756 = icmp eq i32 %t6754, 0
  %fc6757 = icmp uge i32 %c6751, %c6753
  %fx16758 = xor i32 %c6751, %c6753
  %fx26759 = xor i32 %c6751, %t6754
  %fva6760 = and i32 %fx16758, %fx26759
  %fv6761 = icmp slt i32 %fva6760, 0
  %nz6762 = zext i1 %fn6755 to i64
  %zz6763 = zext i1 %fz6756 to i64
  %cz6764 = zext i1 %fc6757 to i64
  %vz6765 = zext i1 %fv6761 to i64
  %ns6766 = shl i64 %nz6762, 31
  %zs6767 = shl i64 %zz6763, 30
  %cs6768 = shl i64 %cz6764, 29
  %vs6769 = shl i64 %vz6765, 28
  %nzor6770 = or i64 %ns6766, %zs6767
  %cvor6771 = or i64 %cs6768, %vs6769
  %nzcv6772 = or i64 %nzor6770, %cvor6771
  %wp6773 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6772, ptr %wp6773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283370 word 0x54ffa588
  %r6774.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6774 = load i64, ptr %r6774.p, align 8, !alias.scope !3, !noalias !4
  %fsh6776 = lshr i64 %r6774, 29
  %ftr6777 = trunc i64 %fsh6776 to i1
  %fsh6778 = lshr i64 %r6774, 30
  %ftr6779 = trunc i64 %fsh6778 to i1
  %fnz6780 = xor i1 %ftr6779, true
  %cond6775 = and i1 %ftr6777, %fnz6780
  br i1 %cond6775, label %L_800282820, label %L_800283374
L_800283374:
  ; @pc 0x800283374 word 0x5a9f23e8
  %t6781 = xor i32 0, -1
  %r6782.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6782 = load i64, ptr %r6782.p, align 8, !alias.scope !3, !noalias !4
  %fsh6784 = lshr i64 %r6782, 29
  %cond6783 = trunc i64 %fsh6784 to i1
  %sel6785 = select i1 %cond6783, i32 0, i32 %t6781
  %c6786 = zext i32 %sel6785 to i64
  %wp6787 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6786, ptr %wp6787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283378 word 0x17ffffe1
  br label %L_8002832fc
L_80028337c:
  ; @pc 0x80028337c word 0x2a1f03e8
  %t6788 = or i32 0, 0
  %c6789 = zext i32 %t6788 to i64
  %wp6790 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6789, ptr %wp6790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283380 word 0x17fffedd
  br label %L_800282ef4
L_800283384:
  ; @pc 0x800283384 word 0xf9400fe8
  %r6791.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6791 = load i64, ptr %r6791.p, align 8, !alias.scope !3, !noalias !4
  %t6792 = add i64 %r6791, 24
  %gmp6793 = inttoptr i64 %t6792 to ptr
  %gml6794 = load i64, ptr %gmp6793, align 1, !alias.scope !4, !noalias !3
  %wp6795 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6794, ptr %wp6795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283388 word 0xf9406e69
  %r6796.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6796 = load i64, ptr %r6796.p, align 8, !alias.scope !3, !noalias !4
  %t6797 = add i64 %r6796, 216
  %gmp6798 = inttoptr i64 %t6797 to ptr
  %gml6799 = load i64, ptr %gmp6798, align 1, !alias.scope !4, !noalias !3
  %wp6800 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6799, ptr %wp6800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028338c word 0xeb09011f
  %r6801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6801 = load i64, ptr %r6801.p, align 8, !alias.scope !3, !noalias !4
  %r6802.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6802 = load i64, ptr %r6802.p, align 8, !alias.scope !3, !noalias !4
  %t6803 = sub i64 %r6801, %r6802
  %fn6804 = icmp slt i64 %t6803, 0
  %fz6805 = icmp eq i64 %t6803, 0
  %fc6806 = icmp uge i64 %r6801, %r6802
  %fx16807 = xor i64 %r6801, %r6802
  %fx26808 = xor i64 %r6801, %t6803
  %fva6809 = and i64 %fx16807, %fx26808
  %fv6810 = icmp slt i64 %fva6809, 0
  %nz6811 = zext i1 %fn6804 to i64
  %zz6812 = zext i1 %fz6805 to i64
  %cz6813 = zext i1 %fc6806 to i64
  %vz6814 = zext i1 %fv6810 to i64
  %ns6815 = shl i64 %nz6811, 31
  %zs6816 = shl i64 %zz6812, 30
  %cs6817 = shl i64 %cz6813, 29
  %vs6818 = shl i64 %vz6814, 28
  %nzor6819 = or i64 %ns6815, %zs6816
  %cvor6820 = or i64 %cs6817, %vs6818
  %nzcv6821 = or i64 %nzor6819, %cvor6820
  %wp6822 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6821, ptr %wp6822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283390 word 0x54ffa48c
  %r6823.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6823 = load i64, ptr %r6823.p, align 8, !alias.scope !3, !noalias !4
  %fsh6825 = lshr i64 %r6823, 30
  %ftr6826 = trunc i64 %fsh6825 to i1
  %fsh6827 = lshr i64 %r6823, 31
  %ftr6828 = trunc i64 %fsh6827 to i1
  %fsh6829 = lshr i64 %r6823, 28
  %ftr6830 = trunc i64 %fsh6829 to i1
  %fnz6831 = xor i1 %ftr6826, true
  %feq6832 = icmp eq i1 %ftr6828, %ftr6830
  %cond6824 = and i1 %fnz6831, %feq6832
  br i1 %cond6824, label %L_800282820, label %L_800283394_ft
L_800283398:
  ; @pc 0x800283398 word 0xf9400fe8
  %r6833.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6833 = load i64, ptr %r6833.p, align 8, !alias.scope !3, !noalias !4
  %t6834 = add i64 %r6833, 24
  %gmp6835 = inttoptr i64 %t6834 to ptr
  %gml6836 = load i64, ptr %gmp6835, align 1, !alias.scope !4, !noalias !3
  %wp6837 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6836, ptr %wp6837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028339c word 0xf9406e69
  %r6838.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6838 = load i64, ptr %r6838.p, align 8, !alias.scope !3, !noalias !4
  %t6839 = add i64 %r6838, 216
  %gmp6840 = inttoptr i64 %t6839 to ptr
  %gml6841 = load i64, ptr %gmp6840, align 1, !alias.scope !4, !noalias !3
  %wp6842 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6841, ptr %wp6842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833a0 word 0xeb09011f
  %r6843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6843 = load i64, ptr %r6843.p, align 8, !alias.scope !3, !noalias !4
  %r6844.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6844 = load i64, ptr %r6844.p, align 8, !alias.scope !3, !noalias !4
  %t6845 = sub i64 %r6843, %r6844
  %fn6846 = icmp slt i64 %t6845, 0
  %fz6847 = icmp eq i64 %t6845, 0
  %fc6848 = icmp uge i64 %r6843, %r6844
  %fx16849 = xor i64 %r6843, %r6844
  %fx26850 = xor i64 %r6843, %t6845
  %fva6851 = and i64 %fx16849, %fx26850
  %fv6852 = icmp slt i64 %fva6851, 0
  %nz6853 = zext i1 %fn6846 to i64
  %zz6854 = zext i1 %fz6847 to i64
  %cz6855 = zext i1 %fc6848 to i64
  %vz6856 = zext i1 %fv6852 to i64
  %ns6857 = shl i64 %nz6853, 31
  %zs6858 = shl i64 %zz6854, 30
  %cs6859 = shl i64 %cz6855, 29
  %vs6860 = shl i64 %vz6856, 28
  %nzor6861 = or i64 %ns6857, %zs6858
  %cvor6862 = or i64 %cs6859, %vs6860
  %nzcv6863 = or i64 %nzor6861, %cvor6862
  %wp6864 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6863, ptr %wp6864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833a4 word 0x54ffa3e8
  %r6865.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6865 = load i64, ptr %r6865.p, align 8, !alias.scope !3, !noalias !4
  %fsh6867 = lshr i64 %r6865, 29
  %ftr6868 = trunc i64 %fsh6867 to i1
  %fsh6869 = lshr i64 %r6865, 30
  %ftr6870 = trunc i64 %fsh6869 to i1
  %fnz6871 = xor i1 %ftr6870, true
  %cond6866 = and i1 %ftr6868, %fnz6871
  br i1 %cond6866, label %L_800282820, label %L_8002833a8_ft
L_8002833ac:
  ; @pc 0x8002833ac word 0xbd401be0
  %r6872.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6872 = load i64, ptr %r6872.p, align 8, !alias.scope !3, !noalias !4
  %t6873 = add i64 %r6872, 24
  %gmp6874 = inttoptr i64 %t6873 to ptr
  %gml6875 = load i32, ptr %gmp6874, align 1, !alias.scope !4, !noalias !3
  %c6876 = zext i32 %gml6875 to i128
  %wp6877 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6876, ptr %wp6877, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002833b0 word 0xbd40da61
  %r6878.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6878 = load i64, ptr %r6878.p, align 8, !alias.scope !3, !noalias !4
  %t6879 = add i64 %r6878, 216
  %gmp6880 = inttoptr i64 %t6879 to ptr
  %gml6881 = load i32, ptr %gmp6880, align 1, !alias.scope !4, !noalias !3
  %c6882 = zext i32 %gml6881 to i128
  %wp6883 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6882, ptr %wp6883, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002833b4 word 0x1e212000
  %fcmp6884 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp6885 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6884, ptr %wp6885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833b8 word 0x54ffa34c
  %r6886.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6886 = load i64, ptr %r6886.p, align 8, !alias.scope !3, !noalias !4
  %fsh6888 = lshr i64 %r6886, 30
  %ftr6889 = trunc i64 %fsh6888 to i1
  %fsh6890 = lshr i64 %r6886, 31
  %ftr6891 = trunc i64 %fsh6890 to i1
  %fsh6892 = lshr i64 %r6886, 28
  %ftr6893 = trunc i64 %fsh6892 to i1
  %fnz6894 = xor i1 %ftr6889, true
  %feq6895 = icmp eq i1 %ftr6891, %ftr6893
  %cond6887 = and i1 %fnz6894, %feq6895
  br i1 %cond6887, label %L_800282820, label %L_8002833bc_ft
L_8002833c0:
  ; @pc 0x8002833c0 word 0xfd400fe0
  %r6896.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6896 = load i64, ptr %r6896.p, align 8, !alias.scope !3, !noalias !4
  %t6897 = add i64 %r6896, 24
  %gmp6898 = inttoptr i64 %t6897 to ptr
  %gml6899 = load i64, ptr %gmp6898, align 1, !alias.scope !4, !noalias !3
  %c6900 = zext i64 %gml6899 to i128
  %wp6901 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c6900, ptr %wp6901, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002833c4 word 0xfd406e61
  %r6902.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6902 = load i64, ptr %r6902.p, align 8, !alias.scope !3, !noalias !4
  %t6903 = add i64 %r6902, 216
  %gmp6904 = inttoptr i64 %t6903 to ptr
  %gml6905 = load i64, ptr %gmp6904, align 1, !alias.scope !4, !noalias !3
  %c6906 = zext i64 %gml6905 to i128
  %wp6907 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c6906, ptr %wp6907, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002833c8 word 0x1e612000
  %fcmp6908 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp6909 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp6908, ptr %wp6909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833cc word 0x54ffa2ac
  %r6910.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6910 = load i64, ptr %r6910.p, align 8, !alias.scope !3, !noalias !4
  %fsh6912 = lshr i64 %r6910, 30
  %ftr6913 = trunc i64 %fsh6912 to i1
  %fsh6914 = lshr i64 %r6910, 31
  %ftr6915 = trunc i64 %fsh6914 to i1
  %fsh6916 = lshr i64 %r6910, 28
  %ftr6917 = trunc i64 %fsh6916 to i1
  %fnz6918 = xor i1 %ftr6913, true
  %feq6919 = icmp eq i1 %ftr6915, %ftr6917
  %cond6911 = and i1 %fnz6918, %feq6919
  br i1 %cond6911, label %L_800282820, label %L_8002833d0
L_8002833d0:
  ; @pc 0x8002833d0 word 0x5a9f53e8
  %t6920 = xor i32 0, -1
  %r6921.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6921 = load i64, ptr %r6921.p, align 8, !alias.scope !3, !noalias !4
  %fsh6923 = lshr i64 %r6921, 31
  %ftr6924 = trunc i64 %fsh6923 to i1
  %cond6922 = xor i1 %ftr6924, true
  %sel6925 = select i1 %cond6922, i32 0, i32 %t6920
  %c6926 = zext i32 %sel6925 to i64
  %wp6927 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6926, ptr %wp6927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833d4 word 0x17fffec8
  br label %L_800282ef4
L_8002833d8:
  ; @pc 0x8002833d8 word 0x394063e8
  %r6928.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6928 = load i64, ptr %r6928.p, align 8, !alias.scope !3, !noalias !4
  %t6929 = add i64 %r6928, 24
  %gmp6930 = inttoptr i64 %t6929 to ptr
  %gml6931 = load i8, ptr %gmp6930, align 1, !alias.scope !4, !noalias !3
  %c6932 = zext i8 %gml6931 to i64
  %wp6933 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6932, ptr %wp6933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833dc word 0x39436269
  %r6934.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6934 = load i64, ptr %r6934.p, align 8, !alias.scope !3, !noalias !4
  %t6935 = add i64 %r6934, 216
  %gmp6936 = inttoptr i64 %t6935 to ptr
  %gml6937 = load i8, ptr %gmp6936, align 1, !alias.scope !4, !noalias !3
  %c6938 = zext i8 %gml6937 to i64
  %wp6939 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6938, ptr %wp6939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833e0 word 0x4b090108
  %r6940.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6940 = load i64, ptr %r6940.p, align 8, !alias.scope !3, !noalias !4
  %c6941 = trunc i64 %r6940 to i32
  %r6942.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6942 = load i64, ptr %r6942.p, align 8, !alias.scope !3, !noalias !4
  %c6943 = trunc i64 %r6942 to i32
  %t6944 = sub i32 %c6941, %c6943
  %c6945 = zext i32 %t6944 to i64
  %wp6946 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6945, ptr %wp6946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833e4 word 0x17fffec4
  br label %L_800282ef4
L_8002833e8:
  ; @pc 0x8002833e8 word 0x2a1f03e8
  %t6947 = or i32 0, 0
  %c6948 = zext i32 %t6947 to i64
  %wp6949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6948, ptr %wp6949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833ec word 0x17ffffd8
  br label %L_80028334c
L_8002833f0:
  ; @pc 0x8002833f0 word 0xb9401be8
  %r6950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6950 = load i64, ptr %r6950.p, align 8, !alias.scope !3, !noalias !4
  %t6951 = add i64 %r6950, 24
  %gmp6952 = inttoptr i64 %t6951 to ptr
  %gml6953 = load i32, ptr %gmp6952, align 1, !alias.scope !4, !noalias !3
  %c6954 = zext i32 %gml6953 to i64
  %wp6955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6954, ptr %wp6955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833f4 word 0xb940da69
  %r6956.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6956 = load i64, ptr %r6956.p, align 8, !alias.scope !3, !noalias !4
  %t6957 = add i64 %r6956, 216
  %gmp6958 = inttoptr i64 %t6957 to ptr
  %gml6959 = load i32, ptr %gmp6958, align 1, !alias.scope !4, !noalias !3
  %c6960 = zext i32 %gml6959 to i64
  %wp6961 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6960, ptr %wp6961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833f8 word 0x6b09011f
  %r6962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6962 = load i64, ptr %r6962.p, align 8, !alias.scope !3, !noalias !4
  %c6963 = trunc i64 %r6962 to i32
  %r6964.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6964 = load i64, ptr %r6964.p, align 8, !alias.scope !3, !noalias !4
  %c6965 = trunc i64 %r6964 to i32
  %t6966 = sub i32 %c6963, %c6965
  %fn6967 = icmp slt i32 %t6966, 0
  %fz6968 = icmp eq i32 %t6966, 0
  %fc6969 = icmp uge i32 %c6963, %c6965
  %fx16970 = xor i32 %c6963, %c6965
  %fx26971 = xor i32 %c6963, %t6966
  %fva6972 = and i32 %fx16970, %fx26971
  %fv6973 = icmp slt i32 %fva6972, 0
  %nz6974 = zext i1 %fn6967 to i64
  %zz6975 = zext i1 %fz6968 to i64
  %cz6976 = zext i1 %fc6969 to i64
  %vz6977 = zext i1 %fv6973 to i64
  %ns6978 = shl i64 %nz6974, 31
  %zs6979 = shl i64 %zz6975, 30
  %cs6980 = shl i64 %cz6976, 29
  %vs6981 = shl i64 %vz6977, 28
  %nzor6982 = or i64 %ns6978, %zs6979
  %cvor6983 = or i64 %cs6980, %vs6981
  %nzcv6984 = or i64 %nzor6982, %cvor6983
  %wp6985 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6984, ptr %wp6985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002833fc word 0x54ffc228
  %r6986.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6986 = load i64, ptr %r6986.p, align 8, !alias.scope !3, !noalias !4
  %fsh6988 = lshr i64 %r6986, 29
  %ftr6989 = trunc i64 %fsh6988 to i1
  %fsh6990 = lshr i64 %r6986, 30
  %ftr6991 = trunc i64 %fsh6990 to i1
  %fnz6992 = xor i1 %ftr6991, true
  %cond6987 = and i1 %ftr6989, %fnz6992
  br i1 %cond6987, label %L_800282c40, label %L_800283400
L_800283400:
  ; @pc 0x800283400 word 0x5a9f23e8
  %t6993 = xor i32 0, -1
  %r6994.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6994 = load i64, ptr %r6994.p, align 8, !alias.scope !3, !noalias !4
  %fsh6996 = lshr i64 %r6994, 29
  %cond6995 = trunc i64 %fsh6996 to i1
  %sel6997 = select i1 %cond6995, i32 0, i32 %t6993
  %c6998 = zext i32 %sel6997 to i64
  %wp6999 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6998, ptr %wp6999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283404 word 0x17ffffd2
  br label %L_80028334c
L_800283408:
  ; @pc 0x800283408 word 0x394063e8
  %r7000.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7000 = load i64, ptr %r7000.p, align 8, !alias.scope !3, !noalias !4
  %t7001 = add i64 %r7000, 24
  %gmp7002 = inttoptr i64 %t7001 to ptr
  %gml7003 = load i8, ptr %gmp7002, align 1, !alias.scope !4, !noalias !3
  %c7004 = zext i8 %gml7003 to i64
  %wp7005 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7004, ptr %wp7005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028340c word 0x39436269
  %r7006.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7006 = load i64, ptr %r7006.p, align 8, !alias.scope !3, !noalias !4
  %t7007 = add i64 %r7006, 216
  %gmp7008 = inttoptr i64 %t7007 to ptr
  %gml7009 = load i8, ptr %gmp7008, align 1, !alias.scope !4, !noalias !3
  %c7010 = zext i8 %gml7009 to i64
  %wp7011 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7010, ptr %wp7011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283410 word 0x4b090108
  %r7012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7012 = load i64, ptr %r7012.p, align 8, !alias.scope !3, !noalias !4
  %c7013 = trunc i64 %r7012 to i32
  %r7014.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7014 = load i64, ptr %r7014.p, align 8, !alias.scope !3, !noalias !4
  %c7015 = trunc i64 %r7014 to i32
  %t7016 = sub i32 %c7013, %c7015
  %c7017 = zext i32 %t7016 to i64
  %wp7018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7017, ptr %wp7018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283414 word 0x17ffffba
  br label %L_8002832fc
L_800283418:
  ; @pc 0x800283418 word 0xf9400fe8
  %r7019.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7019 = load i64, ptr %r7019.p, align 8, !alias.scope !3, !noalias !4
  %t7020 = add i64 %r7019, 24
  %gmp7021 = inttoptr i64 %t7020 to ptr
  %gml7022 = load i64, ptr %gmp7021, align 1, !alias.scope !4, !noalias !3
  %wp7023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7022, ptr %wp7023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028341c word 0xf9406e69
  %r7024.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7024 = load i64, ptr %r7024.p, align 8, !alias.scope !3, !noalias !4
  %t7025 = add i64 %r7024, 216
  %gmp7026 = inttoptr i64 %t7025 to ptr
  %gml7027 = load i64, ptr %gmp7026, align 1, !alias.scope !4, !noalias !3
  %wp7028 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7027, ptr %wp7028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283420 word 0xeb09011f
  %r7029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7029 = load i64, ptr %r7029.p, align 8, !alias.scope !3, !noalias !4
  %r7030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7030 = load i64, ptr %r7030.p, align 8, !alias.scope !3, !noalias !4
  %t7031 = sub i64 %r7029, %r7030
  %fn7032 = icmp slt i64 %t7031, 0
  %fz7033 = icmp eq i64 %t7031, 0
  %fc7034 = icmp uge i64 %r7029, %r7030
  %fx17035 = xor i64 %r7029, %r7030
  %fx27036 = xor i64 %r7029, %t7031
  %fva7037 = and i64 %fx17035, %fx27036
  %fv7038 = icmp slt i64 %fva7037, 0
  %nz7039 = zext i1 %fn7032 to i64
  %zz7040 = zext i1 %fz7033 to i64
  %cz7041 = zext i1 %fc7034 to i64
  %vz7042 = zext i1 %fv7038 to i64
  %ns7043 = shl i64 %nz7039, 31
  %zs7044 = shl i64 %zz7040, 30
  %cs7045 = shl i64 %cz7041, 29
  %vs7046 = shl i64 %vz7042, 28
  %nzor7047 = or i64 %ns7043, %zs7044
  %cvor7048 = or i64 %cs7045, %vs7046
  %nzcv7049 = or i64 %nzor7047, %cvor7048
  %wp7050 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7049, ptr %wp7050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283424 word 0x54ff9fec
  %r7051.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7051 = load i64, ptr %r7051.p, align 8, !alias.scope !3, !noalias !4
  %fsh7053 = lshr i64 %r7051, 30
  %ftr7054 = trunc i64 %fsh7053 to i1
  %fsh7055 = lshr i64 %r7051, 31
  %ftr7056 = trunc i64 %fsh7055 to i1
  %fsh7057 = lshr i64 %r7051, 28
  %ftr7058 = trunc i64 %fsh7057 to i1
  %fnz7059 = xor i1 %ftr7054, true
  %feq7060 = icmp eq i1 %ftr7056, %ftr7058
  %cond7052 = and i1 %fnz7059, %feq7060
  br i1 %cond7052, label %L_800282820, label %L_800283428_ft
L_80028342c:
  ; @pc 0x80028342c word 0xf9400fe8
  %r7061.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7061 = load i64, ptr %r7061.p, align 8, !alias.scope !3, !noalias !4
  %t7062 = add i64 %r7061, 24
  %gmp7063 = inttoptr i64 %t7062 to ptr
  %gml7064 = load i64, ptr %gmp7063, align 1, !alias.scope !4, !noalias !3
  %wp7065 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7064, ptr %wp7065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283430 word 0xf9406e69
  %r7066.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7066 = load i64, ptr %r7066.p, align 8, !alias.scope !3, !noalias !4
  %t7067 = add i64 %r7066, 216
  %gmp7068 = inttoptr i64 %t7067 to ptr
  %gml7069 = load i64, ptr %gmp7068, align 1, !alias.scope !4, !noalias !3
  %wp7070 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7069, ptr %wp7070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283434 word 0xeb09011f
  %r7071.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7071 = load i64, ptr %r7071.p, align 8, !alias.scope !3, !noalias !4
  %r7072.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7072 = load i64, ptr %r7072.p, align 8, !alias.scope !3, !noalias !4
  %t7073 = sub i64 %r7071, %r7072
  %fn7074 = icmp slt i64 %t7073, 0
  %fz7075 = icmp eq i64 %t7073, 0
  %fc7076 = icmp uge i64 %r7071, %r7072
  %fx17077 = xor i64 %r7071, %r7072
  %fx27078 = xor i64 %r7071, %t7073
  %fva7079 = and i64 %fx17077, %fx27078
  %fv7080 = icmp slt i64 %fva7079, 0
  %nz7081 = zext i1 %fn7074 to i64
  %zz7082 = zext i1 %fz7075 to i64
  %cz7083 = zext i1 %fc7076 to i64
  %vz7084 = zext i1 %fv7080 to i64
  %ns7085 = shl i64 %nz7081, 31
  %zs7086 = shl i64 %zz7082, 30
  %cs7087 = shl i64 %cz7083, 29
  %vs7088 = shl i64 %vz7084, 28
  %nzor7089 = or i64 %ns7085, %zs7086
  %cvor7090 = or i64 %cs7087, %vs7088
  %nzcv7091 = or i64 %nzor7089, %cvor7090
  %wp7092 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7091, ptr %wp7092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283438 word 0x54ff9f48
  %r7093.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7093 = load i64, ptr %r7093.p, align 8, !alias.scope !3, !noalias !4
  %fsh7095 = lshr i64 %r7093, 29
  %ftr7096 = trunc i64 %fsh7095 to i1
  %fsh7097 = lshr i64 %r7093, 30
  %ftr7098 = trunc i64 %fsh7097 to i1
  %fnz7099 = xor i1 %ftr7098, true
  %cond7094 = and i1 %ftr7096, %fnz7099
  br i1 %cond7094, label %L_800282820, label %L_80028343c_ft
L_800283440:
  ; @pc 0x800283440 word 0xbd401be0
  %r7100.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7100 = load i64, ptr %r7100.p, align 8, !alias.scope !3, !noalias !4
  %t7101 = add i64 %r7100, 24
  %gmp7102 = inttoptr i64 %t7101 to ptr
  %gml7103 = load i32, ptr %gmp7102, align 1, !alias.scope !4, !noalias !3
  %c7104 = zext i32 %gml7103 to i128
  %wp7105 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c7104, ptr %wp7105, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283444 word 0xbd40da61
  %r7106.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7106 = load i64, ptr %r7106.p, align 8, !alias.scope !3, !noalias !4
  %t7107 = add i64 %r7106, 216
  %gmp7108 = inttoptr i64 %t7107 to ptr
  %gml7109 = load i32, ptr %gmp7108, align 1, !alias.scope !4, !noalias !3
  %c7110 = zext i32 %gml7109 to i128
  %wp7111 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c7110, ptr %wp7111, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283448 word 0x1e212000
  %fcmp7112 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp7113 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp7112, ptr %wp7113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028344c word 0x54ff9eac
  %r7114.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7114 = load i64, ptr %r7114.p, align 8, !alias.scope !3, !noalias !4
  %fsh7116 = lshr i64 %r7114, 30
  %ftr7117 = trunc i64 %fsh7116 to i1
  %fsh7118 = lshr i64 %r7114, 31
  %ftr7119 = trunc i64 %fsh7118 to i1
  %fsh7120 = lshr i64 %r7114, 28
  %ftr7121 = trunc i64 %fsh7120 to i1
  %fnz7122 = xor i1 %ftr7117, true
  %feq7123 = icmp eq i1 %ftr7119, %ftr7121
  %cond7115 = and i1 %fnz7122, %feq7123
  br i1 %cond7115, label %L_800282820, label %L_800283450_ft
L_800283454:
  ; @pc 0x800283454 word 0xfd400fe0
  %r7124.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7124 = load i64, ptr %r7124.p, align 8, !alias.scope !3, !noalias !4
  %t7125 = add i64 %r7124, 24
  %gmp7126 = inttoptr i64 %t7125 to ptr
  %gml7127 = load i64, ptr %gmp7126, align 1, !alias.scope !4, !noalias !3
  %c7128 = zext i64 %gml7127 to i128
  %wp7129 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c7128, ptr %wp7129, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283458 word 0xfd406e61
  %r7130.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7130 = load i64, ptr %r7130.p, align 8, !alias.scope !3, !noalias !4
  %t7131 = add i64 %r7130, 216
  %gmp7132 = inttoptr i64 %t7131 to ptr
  %gml7133 = load i64, ptr %gmp7132, align 1, !alias.scope !4, !noalias !3
  %c7134 = zext i64 %gml7133 to i128
  %wp7135 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c7134, ptr %wp7135, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80028345c word 0x1e612000
  %fcmp7136 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp7137 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp7136, ptr %wp7137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283460 word 0x54ff9e0c
  %r7138.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7138 = load i64, ptr %r7138.p, align 8, !alias.scope !3, !noalias !4
  %fsh7140 = lshr i64 %r7138, 30
  %ftr7141 = trunc i64 %fsh7140 to i1
  %fsh7142 = lshr i64 %r7138, 31
  %ftr7143 = trunc i64 %fsh7142 to i1
  %fsh7144 = lshr i64 %r7138, 28
  %ftr7145 = trunc i64 %fsh7144 to i1
  %fnz7146 = xor i1 %ftr7141, true
  %feq7147 = icmp eq i1 %ftr7143, %ftr7145
  %cond7139 = and i1 %fnz7146, %feq7147
  br i1 %cond7139, label %L_800282820, label %L_800283464
L_800283464:
  ; @pc 0x800283464 word 0x5a9f53e8
  %t7148 = xor i32 0, -1
  %r7149.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7149 = load i64, ptr %r7149.p, align 8, !alias.scope !3, !noalias !4
  %fsh7151 = lshr i64 %r7149, 31
  %ftr7152 = trunc i64 %fsh7151 to i1
  %cond7150 = xor i1 %ftr7152, true
  %sel7153 = select i1 %cond7150, i32 0, i32 %t7148
  %c7154 = zext i32 %sel7153 to i64
  %wp7155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7154, ptr %wp7155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283468 word 0x17ffffa5
  br label %L_8002832fc
L_80028346c:
  ; @pc 0x80028346c word 0x394063e8
  %r7156.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7156 = load i64, ptr %r7156.p, align 8, !alias.scope !3, !noalias !4
  %t7157 = add i64 %r7156, 24
  %gmp7158 = inttoptr i64 %t7157 to ptr
  %gml7159 = load i8, ptr %gmp7158, align 1, !alias.scope !4, !noalias !3
  %c7160 = zext i8 %gml7159 to i64
  %wp7161 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7160, ptr %wp7161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283470 word 0x39436269
  %r7162.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7162 = load i64, ptr %r7162.p, align 8, !alias.scope !3, !noalias !4
  %t7163 = add i64 %r7162, 216
  %gmp7164 = inttoptr i64 %t7163 to ptr
  %gml7165 = load i8, ptr %gmp7164, align 1, !alias.scope !4, !noalias !3
  %c7166 = zext i8 %gml7165 to i64
  %wp7167 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7166, ptr %wp7167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283474 word 0x4b090108
  %r7168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7168 = load i64, ptr %r7168.p, align 8, !alias.scope !3, !noalias !4
  %c7169 = trunc i64 %r7168 to i32
  %r7170.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7170 = load i64, ptr %r7170.p, align 8, !alias.scope !3, !noalias !4
  %c7171 = trunc i64 %r7170 to i32
  %t7172 = sub i32 %c7169, %c7171
  %c7173 = zext i32 %t7172 to i64
  %wp7174 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7173, ptr %wp7174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283478 word 0x17ffffb5
  br label %L_80028334c
L_80028347c:
  ; @pc 0x80028347c word 0xf9400fe8
  %r7175.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7175 = load i64, ptr %r7175.p, align 8, !alias.scope !3, !noalias !4
  %t7176 = add i64 %r7175, 24
  %gmp7177 = inttoptr i64 %t7176 to ptr
  %gml7178 = load i64, ptr %gmp7177, align 1, !alias.scope !4, !noalias !3
  %wp7179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7178, ptr %wp7179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283480 word 0xf9406e69
  %r7180.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7180 = load i64, ptr %r7180.p, align 8, !alias.scope !3, !noalias !4
  %t7181 = add i64 %r7180, 216
  %gmp7182 = inttoptr i64 %t7181 to ptr
  %gml7183 = load i64, ptr %gmp7182, align 1, !alias.scope !4, !noalias !3
  %wp7184 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7183, ptr %wp7184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283484 word 0xeb09011f
  %r7185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7185 = load i64, ptr %r7185.p, align 8, !alias.scope !3, !noalias !4
  %r7186.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7186 = load i64, ptr %r7186.p, align 8, !alias.scope !3, !noalias !4
  %t7187 = sub i64 %r7185, %r7186
  %fn7188 = icmp slt i64 %t7187, 0
  %fz7189 = icmp eq i64 %t7187, 0
  %fc7190 = icmp uge i64 %r7185, %r7186
  %fx17191 = xor i64 %r7185, %r7186
  %fx27192 = xor i64 %r7185, %t7187
  %fva7193 = and i64 %fx17191, %fx27192
  %fv7194 = icmp slt i64 %fva7193, 0
  %nz7195 = zext i1 %fn7188 to i64
  %zz7196 = zext i1 %fz7189 to i64
  %cz7197 = zext i1 %fc7190 to i64
  %vz7198 = zext i1 %fv7194 to i64
  %ns7199 = shl i64 %nz7195, 31
  %zs7200 = shl i64 %zz7196, 30
  %cs7201 = shl i64 %cz7197, 29
  %vs7202 = shl i64 %vz7198, 28
  %nzor7203 = or i64 %ns7199, %zs7200
  %cvor7204 = or i64 %cs7201, %vs7202
  %nzcv7205 = or i64 %nzor7203, %cvor7204
  %wp7206 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7205, ptr %wp7206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283488 word 0x54ffbdcc
  %r7207.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7207 = load i64, ptr %r7207.p, align 8, !alias.scope !3, !noalias !4
  %fsh7209 = lshr i64 %r7207, 30
  %ftr7210 = trunc i64 %fsh7209 to i1
  %fsh7211 = lshr i64 %r7207, 31
  %ftr7212 = trunc i64 %fsh7211 to i1
  %fsh7213 = lshr i64 %r7207, 28
  %ftr7214 = trunc i64 %fsh7213 to i1
  %fnz7215 = xor i1 %ftr7210, true
  %feq7216 = icmp eq i1 %ftr7212, %ftr7214
  %cond7208 = and i1 %fnz7215, %feq7216
  br i1 %cond7208, label %L_800282c40, label %L_80028348c_ft
L_800283490:
  ; @pc 0x800283490 word 0xf9400fe8
  %r7217.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7217 = load i64, ptr %r7217.p, align 8, !alias.scope !3, !noalias !4
  %t7218 = add i64 %r7217, 24
  %gmp7219 = inttoptr i64 %t7218 to ptr
  %gml7220 = load i64, ptr %gmp7219, align 1, !alias.scope !4, !noalias !3
  %wp7221 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7220, ptr %wp7221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283494 word 0xf9406e69
  %r7222.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7222 = load i64, ptr %r7222.p, align 8, !alias.scope !3, !noalias !4
  %t7223 = add i64 %r7222, 216
  %gmp7224 = inttoptr i64 %t7223 to ptr
  %gml7225 = load i64, ptr %gmp7224, align 1, !alias.scope !4, !noalias !3
  %wp7226 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7225, ptr %wp7226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283498 word 0xeb09011f
  %r7227.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7227 = load i64, ptr %r7227.p, align 8, !alias.scope !3, !noalias !4
  %r7228.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7228 = load i64, ptr %r7228.p, align 8, !alias.scope !3, !noalias !4
  %t7229 = sub i64 %r7227, %r7228
  %fn7230 = icmp slt i64 %t7229, 0
  %fz7231 = icmp eq i64 %t7229, 0
  %fc7232 = icmp uge i64 %r7227, %r7228
  %fx17233 = xor i64 %r7227, %r7228
  %fx27234 = xor i64 %r7227, %t7229
  %fva7235 = and i64 %fx17233, %fx27234
  %fv7236 = icmp slt i64 %fva7235, 0
  %nz7237 = zext i1 %fn7230 to i64
  %zz7238 = zext i1 %fz7231 to i64
  %cz7239 = zext i1 %fc7232 to i64
  %vz7240 = zext i1 %fv7236 to i64
  %ns7241 = shl i64 %nz7237, 31
  %zs7242 = shl i64 %zz7238, 30
  %cs7243 = shl i64 %cz7239, 29
  %vs7244 = shl i64 %vz7240, 28
  %nzor7245 = or i64 %ns7241, %zs7242
  %cvor7246 = or i64 %cs7243, %vs7244
  %nzcv7247 = or i64 %nzor7245, %cvor7246
  %wp7248 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7247, ptr %wp7248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028349c word 0x54ffbd28
  %r7249.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7249 = load i64, ptr %r7249.p, align 8, !alias.scope !3, !noalias !4
  %fsh7251 = lshr i64 %r7249, 29
  %ftr7252 = trunc i64 %fsh7251 to i1
  %fsh7253 = lshr i64 %r7249, 30
  %ftr7254 = trunc i64 %fsh7253 to i1
  %fnz7255 = xor i1 %ftr7254, true
  %cond7250 = and i1 %ftr7252, %fnz7255
  br i1 %cond7250, label %L_800282c40, label %L_8002834a0_ft
L_8002834a4:
  ; @pc 0x8002834a4 word 0xbd401be0
  %r7256.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7256 = load i64, ptr %r7256.p, align 8, !alias.scope !3, !noalias !4
  %t7257 = add i64 %r7256, 24
  %gmp7258 = inttoptr i64 %t7257 to ptr
  %gml7259 = load i32, ptr %gmp7258, align 1, !alias.scope !4, !noalias !3
  %c7260 = zext i32 %gml7259 to i128
  %wp7261 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c7260, ptr %wp7261, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002834a8 word 0xbd40da61
  %r7262.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7262 = load i64, ptr %r7262.p, align 8, !alias.scope !3, !noalias !4
  %t7263 = add i64 %r7262, 216
  %gmp7264 = inttoptr i64 %t7263 to ptr
  %gml7265 = load i32, ptr %gmp7264, align 1, !alias.scope !4, !noalias !3
  %c7266 = zext i32 %gml7265 to i128
  %wp7267 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c7266, ptr %wp7267, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002834ac word 0x1e212000
  %fcmp7268 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp7269 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp7268, ptr %wp7269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834b0 word 0x54ffbc8c
  %r7270.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7270 = load i64, ptr %r7270.p, align 8, !alias.scope !3, !noalias !4
  %fsh7272 = lshr i64 %r7270, 30
  %ftr7273 = trunc i64 %fsh7272 to i1
  %fsh7274 = lshr i64 %r7270, 31
  %ftr7275 = trunc i64 %fsh7274 to i1
  %fsh7276 = lshr i64 %r7270, 28
  %ftr7277 = trunc i64 %fsh7276 to i1
  %fnz7278 = xor i1 %ftr7273, true
  %feq7279 = icmp eq i1 %ftr7275, %ftr7277
  %cond7271 = and i1 %fnz7278, %feq7279
  br i1 %cond7271, label %L_800282c40, label %L_8002834b4_ft
L_8002834b8:
  ; @pc 0x8002834b8 word 0xfd400fe0
  %r7280.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7280 = load i64, ptr %r7280.p, align 8, !alias.scope !3, !noalias !4
  %t7281 = add i64 %r7280, 24
  %gmp7282 = inttoptr i64 %t7281 to ptr
  %gml7283 = load i64, ptr %gmp7282, align 1, !alias.scope !4, !noalias !3
  %c7284 = zext i64 %gml7283 to i128
  %wp7285 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c7284, ptr %wp7285, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002834bc word 0xfd406e61
  %r7286.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7286 = load i64, ptr %r7286.p, align 8, !alias.scope !3, !noalias !4
  %t7287 = add i64 %r7286, 216
  %gmp7288 = inttoptr i64 %t7287 to ptr
  %gml7289 = load i64, ptr %gmp7288, align 1, !alias.scope !4, !noalias !3
  %c7290 = zext i64 %gml7289 to i128
  %wp7291 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c7290, ptr %wp7291, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8002834c0 word 0x1e612000
  %fcmp7292 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp7293 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp7292, ptr %wp7293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834c4 word 0x54ffbbec
  %r7294.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7294 = load i64, ptr %r7294.p, align 8, !alias.scope !3, !noalias !4
  %fsh7296 = lshr i64 %r7294, 30
  %ftr7297 = trunc i64 %fsh7296 to i1
  %fsh7298 = lshr i64 %r7294, 31
  %ftr7299 = trunc i64 %fsh7298 to i1
  %fsh7300 = lshr i64 %r7294, 28
  %ftr7301 = trunc i64 %fsh7300 to i1
  %fnz7302 = xor i1 %ftr7297, true
  %feq7303 = icmp eq i1 %ftr7299, %ftr7301
  %cond7295 = and i1 %fnz7302, %feq7303
  br i1 %cond7295, label %L_800282c40, label %L_8002834c8
L_8002834c8:
  ; @pc 0x8002834c8 word 0x5a9f53e8
  %t7304 = xor i32 0, -1
  %r7305.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7305 = load i64, ptr %r7305.p, align 8, !alias.scope !3, !noalias !4
  %fsh7307 = lshr i64 %r7305, 31
  %ftr7308 = trunc i64 %fsh7307 to i1
  %cond7306 = xor i1 %ftr7308, true
  %sel7309 = select i1 %cond7306, i32 0, i32 %t7304
  %c7310 = zext i32 %sel7309 to i64
  %wp7311 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7310, ptr %wp7311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834cc word 0x17ffffa0
  br label %L_80028334c
L_8002834d0:
  ; @pc 0x8002834d0 word 0x11000758
  %r7312.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7312 = load i64, ptr %r7312.p, align 8, !alias.scope !3, !noalias !4
  %c7313 = trunc i64 %r7312 to i32
  %t7314 = add i32 %c7313, 1
  %c7315 = zext i32 %t7314 to i64
  %wp7316 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c7315, ptr %wp7316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834d4 word 0x5280003b
  %c7317 = zext i32 1 to i64
  %wp7318 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c7317, ptr %wp7318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834d8 word 0x2a1703fa
  %r7319.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7319 = load i64, ptr %r7319.p, align 8, !alias.scope !3, !noalias !4
  %c7320 = trunc i64 %r7319 to i32
  %t7321 = or i32 0, %c7320
  %c7322 = zext i32 %t7321 to i64
  %wp7323 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c7322, ptr %wp7323, align 8, !alias.scope !3, !noalias !4
  br label %L_8002834dc
L_8002834dc:
  ; @pc 0x8002834dc word 0x6b1a031f
  %r7324.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7324 = load i64, ptr %r7324.p, align 8, !alias.scope !3, !noalias !4
  %c7325 = trunc i64 %r7324 to i32
  %r7326.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7326 = load i64, ptr %r7326.p, align 8, !alias.scope !3, !noalias !4
  %c7327 = trunc i64 %r7326 to i32
  %t7328 = sub i32 %c7325, %c7327
  %fn7329 = icmp slt i32 %t7328, 0
  %fz7330 = icmp eq i32 %t7328, 0
  %fc7331 = icmp uge i32 %c7325, %c7327
  %fx17332 = xor i32 %c7325, %c7327
  %fx27333 = xor i32 %c7325, %t7328
  %fva7334 = and i32 %fx17332, %fx27333
  %fv7335 = icmp slt i32 %fva7334, 0
  %nz7336 = zext i1 %fn7329 to i64
  %zz7337 = zext i1 %fz7330 to i64
  %cz7338 = zext i1 %fc7331 to i64
  %vz7339 = zext i1 %fv7335 to i64
  %ns7340 = shl i64 %nz7336, 31
  %zs7341 = shl i64 %zz7337, 30
  %cs7342 = shl i64 %cz7338, 29
  %vs7343 = shl i64 %vz7339, 28
  %nzor7344 = or i64 %ns7340, %zs7341
  %cvor7345 = or i64 %cs7342, %vs7343
  %nzcv7346 = or i64 %nzor7344, %cvor7345
  %wp7347 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7346, ptr %wp7347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834e0 word 0x2a1a03f7
  %r7348.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7348 = load i64, ptr %r7348.p, align 8, !alias.scope !3, !noalias !4
  %c7349 = trunc i64 %r7348 to i32
  %t7350 = or i32 0, %c7349
  %c7351 = zext i32 %t7350 to i64
  %wp7352 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c7351, ptr %wp7352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834e4 word 0x54ffba0a
  %r7353.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7353 = load i64, ptr %r7353.p, align 8, !alias.scope !3, !noalias !4
  %fsh7355 = lshr i64 %r7353, 31
  %ftr7356 = trunc i64 %fsh7355 to i1
  %fsh7357 = lshr i64 %r7353, 28
  %ftr7358 = trunc i64 %fsh7357 to i1
  %cond7354 = icmp eq i1 %ftr7356, %ftr7358
  br i1 %cond7354, label %L_800282c24, label %L_8002834e8
L_8002834e8:
  ; @pc 0x8002834e8 word 0x2b170308
  %r7359.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7359 = load i64, ptr %r7359.p, align 8, !alias.scope !3, !noalias !4
  %c7360 = trunc i64 %r7359 to i32
  %r7361.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7361 = load i64, ptr %r7361.p, align 8, !alias.scope !3, !noalias !4
  %c7362 = trunc i64 %r7361 to i32
  %t7363 = add i32 %c7360, %c7362
  %fn7364 = icmp slt i32 %t7363, 0
  %fz7365 = icmp eq i32 %t7363, 0
  %fc7366 = icmp ult i32 %t7363, %c7360
  %fx17367 = xor i32 %c7360, %t7363
  %fx27368 = xor i32 %c7362, %t7363
  %fva7369 = and i32 %fx17367, %fx27368
  %fv7370 = icmp slt i32 %fva7369, 0
  %nz7371 = zext i1 %fn7364 to i64
  %zz7372 = zext i1 %fz7365 to i64
  %cz7373 = zext i1 %fc7366 to i64
  %vz7374 = zext i1 %fv7370 to i64
  %ns7375 = shl i64 %nz7371, 31
  %zs7376 = shl i64 %zz7372, 30
  %cs7377 = shl i64 %cz7373, 29
  %vs7378 = shl i64 %vz7374, 28
  %nzor7379 = or i64 %ns7375, %zs7376
  %cvor7380 = or i64 %cs7377, %vs7378
  %nzcv7381 = or i64 %nzor7379, %cvor7380
  %wp7382 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7381, ptr %wp7382, align 8, !alias.scope !3, !noalias !4
  %c7383 = zext i32 %t7363 to i64
  %wp7384 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7383, ptr %wp7384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834ec word 0xa9408289
  %r7385.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7385 = load i64, ptr %r7385.p, align 8, !alias.scope !3, !noalias !4
  %t7386 = add i64 %r7385, 8
  %t7387 = add i64 %t7386, 8
  %gmp7388 = inttoptr i64 %t7386 to ptr
  %gml7389 = load i64, ptr %gmp7388, align 1, !alias.scope !4, !noalias !3
  %gmp7390 = inttoptr i64 %t7387 to ptr
  %gml7391 = load i64, ptr %gmp7390, align 1, !alias.scope !4, !noalias !3
  %wp7392 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7389, ptr %wp7392, align 8, !alias.scope !3, !noalias !4
  %wp7393 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml7391, ptr %wp7393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834f0 word 0x1a88a508
  %r7394.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7394 = load i64, ptr %r7394.p, align 8, !alias.scope !3, !noalias !4
  %c7395 = trunc i64 %r7394 to i32
  %r7396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7396 = load i64, ptr %r7396.p, align 8, !alias.scope !3, !noalias !4
  %c7397 = trunc i64 %r7396 to i32
  %t7398 = add i32 %c7397, 1
  %r7399.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7399 = load i64, ptr %r7399.p, align 8, !alias.scope !3, !noalias !4
  %fsh7401 = lshr i64 %r7399, 31
  %ftr7402 = trunc i64 %fsh7401 to i1
  %fsh7403 = lshr i64 %r7399, 28
  %ftr7404 = trunc i64 %fsh7403 to i1
  %cond7400 = icmp eq i1 %ftr7402, %ftr7404
  %sel7405 = select i1 %cond7400, i32 %c7395, i32 %t7398
  %c7406 = zext i32 %sel7405 to i64
  %wp7407 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7406, ptr %wp7407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834f4 word 0xb9401a82
  %r7408.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7408 = load i64, ptr %r7408.p, align 8, !alias.scope !3, !noalias !4
  %t7409 = add i64 %r7408, 24
  %gmp7410 = inttoptr i64 %t7409 to ptr
  %gml7411 = load i32, ptr %gmp7410, align 1, !alias.scope !4, !noalias !3
  %c7412 = zext i32 %gml7411 to i64
  %wp7413 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c7412, ptr %wp7413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834f8 word 0x13017d1a
  %r7414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7414 = load i64, ptr %r7414.p, align 8, !alias.scope !3, !noalias !4
  %c7415 = trunc i64 %r7414 to i32
  %ror7416 = call i32 @llvm.fshr.i32(i32 %c7415, i32 %c7415, i32 1)
  %t7417 = lshr i32 %c7415, 31
  %t7418 = and i32 %t7417, 1
  %t7419 = sub i32 0, %t7418
  %t7420 = and i32 %t7419, -2147483648
  %t7421 = and i32 %ror7416, 2147483647
  %t7422 = or i32 %t7420, %t7421
  %c7423 = zext i32 %t7422 to i64
  %wp7424 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c7423, ptr %wp7424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002834fc word 0xb9400288
  %r7425.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7425 = load i64, ptr %r7425.p, align 8, !alias.scope !3, !noalias !4
  %gmp7426 = inttoptr i64 %r7425 to ptr
  %gml7427 = load i32, ptr %gmp7426, align 1, !alias.scope !4, !noalias !3
  %c7428 = zext i32 %gml7427 to i64
  %wp7429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7428, ptr %wp7429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283500 word 0x6b1a011f
  %r7430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7430 = load i64, ptr %r7430.p, align 8, !alias.scope !3, !noalias !4
  %c7431 = trunc i64 %r7430 to i32
  %r7432.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7432 = load i64, ptr %r7432.p, align 8, !alias.scope !3, !noalias !4
  %c7433 = trunc i64 %r7432 to i32
  %t7434 = sub i32 %c7431, %c7433
  %fn7435 = icmp slt i32 %t7434, 0
  %fz7436 = icmp eq i32 %t7434, 0
  %fc7437 = icmp uge i32 %c7431, %c7433
  %fx17438 = xor i32 %c7431, %c7433
  %fx27439 = xor i32 %c7431, %t7434
  %fva7440 = and i32 %fx17438, %fx27439
  %fv7441 = icmp slt i32 %fva7440, 0
  %nz7442 = zext i1 %fn7435 to i64
  %zz7443 = zext i1 %fz7436 to i64
  %cz7444 = zext i1 %fc7437 to i64
  %vz7445 = zext i1 %fv7441 to i64
  %ns7446 = shl i64 %nz7442, 31
  %zs7447 = shl i64 %zz7443, 30
  %cs7448 = shl i64 %cz7444, 29
  %vs7449 = shl i64 %vz7445, 28
  %nzor7450 = or i64 %ns7446, %zs7447
  %cvor7451 = or i64 %cs7448, %vs7449
  %nzcv7452 = or i64 %nzor7450, %cvor7451
  %wp7453 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7452, ptr %wp7453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283504 word 0x1a9f8348
  %r7454.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7454 = load i64, ptr %r7454.p, align 8, !alias.scope !3, !noalias !4
  %c7455 = trunc i64 %r7454 to i32
  %r7456.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7456 = load i64, ptr %r7456.p, align 8, !alias.scope !3, !noalias !4
  %fsh7458 = lshr i64 %r7456, 29
  %ftr7459 = trunc i64 %fsh7458 to i1
  %fsh7460 = lshr i64 %r7456, 30
  %ftr7461 = trunc i64 %fsh7460 to i1
  %fnz7462 = xor i1 %ftr7461, true
  %cond7457 = and i1 %ftr7459, %fnz7462
  %sel7463 = select i1 %cond7457, i32 %c7455, i32 0
  %c7464 = zext i32 %sel7463 to i64
  %wp7465 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7464, ptr %wp7465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283508 word 0xf868d921
  %r7466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7466 = load i64, ptr %r7466.p, align 8, !alias.scope !3, !noalias !4
  %r7467.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7467 = load i64, ptr %r7467.p, align 8, !alias.scope !3, !noalias !4
  %c7468 = trunc i64 %r7467 to i32
  %c7469 = sext i32 %c7468 to i64
  %t7470 = shl i64 %c7469, 3
  %t7471 = add i64 %r7466, %t7470
  %gmp7472 = inttoptr i64 %t7471 to ptr
  %gml7473 = load i64, ptr %gmp7472, align 1, !alias.scope !4, !noalias !3
  %wp7474 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml7473, ptr %wp7474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028350c word 0xf9400008
  %r7475.p = getelementptr inbounds i8, ptr %c, i64 0
  %r7475 = load i64, ptr %r7475.p, align 8, !alias.scope !3, !noalias !4
  %gmp7476 = inttoptr i64 %r7475 to ptr
  %gml7477 = load i64, ptr %gmp7476, align 1, !alias.scope !4, !noalias !3
  %wp7478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7477, ptr %wp7478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283510 word 0xf9403d09
  %r7479.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7479 = load i64, ptr %r7479.p, align 8, !alias.scope !3, !noalias !4
  %t7480 = add i64 %r7479, 120
  %gmp7481 = inttoptr i64 %t7480 to ptr
  %gml7482 = load i64, ptr %gmp7481, align 1, !alias.scope !4, !noalias !3
  %wp7483 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7482, ptr %wp7483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283514 word 0x910043e8
  %r7484.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7484 = load i64, ptr %r7484.p, align 8, !alias.scope !3, !noalias !4
  %t7485 = add i64 %r7484, 16
  %wp7486 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7485, ptr %wp7486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283518 word 0xd63f0120
  %r7487.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7487 = load i64, ptr %r7487.p, align 8, !alias.scope !3, !noalias !4
  %fp7488 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7487, ptr %fp7488, align 8, !alias.scope !3, !noalias !4
  %wp7489 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362373404, ptr %wp7489, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80028351c word 0xb94013e8
  %r7490.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7490 = load i64, ptr %r7490.p, align 8, !alias.scope !3, !noalias !4
  %t7491 = add i64 %r7490, 16
  %gmp7492 = inttoptr i64 %t7491 to ptr
  %gml7493 = load i32, ptr %gmp7492, align 1, !alias.scope !4, !noalias !3
  %c7494 = zext i32 %gml7493 to i64
  %wp7495 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7494, ptr %wp7495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283520 word 0xb94002a9
  %r7496.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7496 = load i64, ptr %r7496.p, align 8, !alias.scope !3, !noalias !4
  %gmp7497 = inttoptr i64 %r7496 to ptr
  %gml7498 = load i32, ptr %gmp7497, align 1, !alias.scope !4, !noalias !3
  %c7499 = zext i32 %gml7498 to i64
  %wp7500 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7499, ptr %wp7500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283524 word 0x6b09011f
  %r7501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7501 = load i64, ptr %r7501.p, align 8, !alias.scope !3, !noalias !4
  %c7502 = trunc i64 %r7501 to i32
  %r7503.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7503 = load i64, ptr %r7503.p, align 8, !alias.scope !3, !noalias !4
  %c7504 = trunc i64 %r7503 to i32
  %t7505 = sub i32 %c7502, %c7504
  %fn7506 = icmp slt i32 %t7505, 0
  %fz7507 = icmp eq i32 %t7505, 0
  %fc7508 = icmp uge i32 %c7502, %c7504
  %fx17509 = xor i32 %c7502, %c7504
  %fx27510 = xor i32 %c7502, %t7505
  %fva7511 = and i32 %fx17509, %fx27510
  %fv7512 = icmp slt i32 %fva7511, 0
  %nz7513 = zext i1 %fn7506 to i64
  %zz7514 = zext i1 %fz7507 to i64
  %cz7515 = zext i1 %fc7508 to i64
  %vz7516 = zext i1 %fv7512 to i64
  %ns7517 = shl i64 %nz7513, 31
  %zs7518 = shl i64 %zz7514, 30
  %cs7519 = shl i64 %cz7515, 29
  %vs7520 = shl i64 %vz7516, 28
  %nzor7521 = or i64 %ns7517, %zs7518
  %cvor7522 = or i64 %cs7519, %vs7520
  %nzcv7523 = or i64 %nzor7521, %cvor7522
  %wp7524 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7523, ptr %wp7524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283528 word 0x54fffd41
  %r7525.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7525 = load i64, ptr %r7525.p, align 8, !alias.scope !3, !noalias !4
  %fsh7527 = lshr i64 %r7525, 30
  %ftr7528 = trunc i64 %fsh7527 to i1
  %cond7526 = xor i1 %ftr7528, true
  br i1 %cond7526, label %L_8002834d0, label %L_80028352c_ft
L_800283544:
  ; @pc 0x800283544 word 0x5a9fa3e8
  %t7601 = xor i32 0, -1
  %r7602.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7602 = load i64, ptr %r7602.p, align 8, !alias.scope !3, !noalias !4
  %fsh7604 = lshr i64 %r7602, 31
  %ftr7605 = trunc i64 %fsh7604 to i1
  %fsh7606 = lshr i64 %r7602, 28
  %ftr7607 = trunc i64 %fsh7606 to i1
  %cond7603 = icmp eq i1 %ftr7605, %ftr7607
  %sel7608 = select i1 %cond7603, i32 0, i32 %t7601
  %c7609 = zext i32 %sel7608 to i64
  %wp7610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7609, ptr %wp7610, align 8, !alias.scope !3, !noalias !4
  br label %L_800283548
L_800283548:
  ; @pc 0x800283548 word 0x34fffc48
  %r7611.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7611 = load i64, ptr %r7611.p, align 8, !alias.scope !3, !noalias !4
  %c7612 = trunc i64 %r7611 to i32
  %cmp7613 = icmp eq i32 %c7612, 0
  br i1 %cmp7613, label %L_8002834d0, label %L_80028354c_ft
L_800283550:
  ; @pc 0x800283550 word 0x2a1f03fb
  %t7617 = or i32 0, 0
  %c7618 = zext i32 %t7617 to i64
  %wp7619 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c7618, ptr %wp7619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283554 word 0x17ffffe2
  br label %L_8002834dc
L_800283558:
  ; @pc 0x800283558 word 0x386b692c
  %r7620.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7620 = load i64, ptr %r7620.p, align 8, !alias.scope !3, !noalias !4
  %r7621.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7621 = load i64, ptr %r7621.p, align 8, !alias.scope !3, !noalias !4
  %t7622 = add i64 %r7620, %r7621
  %gmp7623 = inttoptr i64 %t7622 to ptr
  %gml7624 = load i8, ptr %gmp7623, align 1, !alias.scope !4, !noalias !3
  %c7625 = zext i8 %gml7624 to i64
  %wp7626 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7625, ptr %wp7626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028355c word 0x3500004c
  %r7627.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7627 = load i64, ptr %r7627.p, align 8, !alias.scope !3, !noalias !4
  %c7628 = trunc i64 %r7627 to i32
  %cmp7629 = icmp ne i32 %c7628, 0
  br i1 %cmp7629, label %L_800283564, label %L_800283560_ft
L_800283564:
  ; @pc 0x800283564 word 0x386b694d
  %r7633.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7633 = load i64, ptr %r7633.p, align 8, !alias.scope !3, !noalias !4
  %r7634.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7634 = load i64, ptr %r7634.p, align 8, !alias.scope !3, !noalias !4
  %t7635 = add i64 %r7633, %r7634
  %gmp7636 = inttoptr i64 %t7635 to ptr
  %gml7637 = load i8, ptr %gmp7636, align 1, !alias.scope !4, !noalias !3
  %c7638 = zext i8 %gml7637 to i64
  %wp7639 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7638, ptr %wp7639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283568 word 0x6b0d019f
  %r7640.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7640 = load i64, ptr %r7640.p, align 8, !alias.scope !3, !noalias !4
  %c7641 = trunc i64 %r7640 to i32
  %r7642.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7642 = load i64, ptr %r7642.p, align 8, !alias.scope !3, !noalias !4
  %c7643 = trunc i64 %r7642 to i32
  %t7644 = sub i32 %c7641, %c7643
  %fn7645 = icmp slt i32 %t7644, 0
  %fz7646 = icmp eq i32 %t7644, 0
  %fc7647 = icmp uge i32 %c7641, %c7643
  %fx17648 = xor i32 %c7641, %c7643
  %fx27649 = xor i32 %c7641, %t7644
  %fva7650 = and i32 %fx17648, %fx27649
  %fv7651 = icmp slt i32 %fva7650, 0
  %nz7652 = zext i1 %fn7645 to i64
  %zz7653 = zext i1 %fz7646 to i64
  %cz7654 = zext i1 %fc7647 to i64
  %vz7655 = zext i1 %fv7651 to i64
  %ns7656 = shl i64 %nz7652, 31
  %zs7657 = shl i64 %zz7653, 30
  %cs7658 = shl i64 %cz7654, 29
  %vs7659 = shl i64 %vz7655, 28
  %nzor7660 = or i64 %ns7656, %zs7657
  %cvor7661 = or i64 %cs7658, %vs7659
  %nzcv7662 = or i64 %nzor7660, %cvor7661
  %wp7663 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7662, ptr %wp7663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028356c word 0x540003a3
  %r7664.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7664 = load i64, ptr %r7664.p, align 8, !alias.scope !3, !noalias !4
  %fsh7666 = lshr i64 %r7664, 29
  %ftr7667 = trunc i64 %fsh7666 to i1
  %cond7665 = xor i1 %ftr7667, true
  br i1 %cond7665, label %L_8002835e0, label %L_800283570_ft
L_800283574:
  ; @pc 0x800283574 word 0x7100019f
  %r7670.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7670 = load i64, ptr %r7670.p, align 8, !alias.scope !3, !noalias !4
  %c7671 = trunc i64 %r7670 to i32
  %t7672 = sub i32 %c7671, 0
  %fn7673 = icmp slt i32 %t7672, 0
  %fz7674 = icmp eq i32 %t7672, 0
  %fc7675 = icmp uge i32 %c7671, 0
  %fx17676 = xor i32 %c7671, 0
  %fx27677 = xor i32 %c7671, %t7672
  %fva7678 = and i32 %fx17676, %fx27677
  %fv7679 = icmp slt i32 %fva7678, 0
  %nz7680 = zext i1 %fn7673 to i64
  %zz7681 = zext i1 %fz7674 to i64
  %cz7682 = zext i1 %fc7675 to i64
  %vz7683 = zext i1 %fv7679 to i64
  %ns7684 = shl i64 %nz7680, 31
  %zs7685 = shl i64 %zz7681, 30
  %cs7686 = shl i64 %cz7682, 29
  %vs7687 = shl i64 %vz7683, 28
  %nzor7688 = or i64 %ns7684, %zs7685
  %cvor7689 = or i64 %cs7686, %vs7687
  %nzcv7690 = or i64 %nzor7688, %cvor7689
  %wp7691 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7690, ptr %wp7691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283578 word 0x1a9f07ef
  %t7692 = add i32 0, 1
  %r7693.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7693 = load i64, ptr %r7693.p, align 8, !alias.scope !3, !noalias !4
  %fsh7695 = lshr i64 %r7693, 30
  %cond7694 = trunc i64 %fsh7695 to i1
  %sel7696 = select i1 %cond7694, i32 0, i32 %t7692
  %c7697 = zext i32 %sel7696 to i64
  %wp7698 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c7697, ptr %wp7698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028357c word 0x6b0d019f
  %r7699.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7699 = load i64, ptr %r7699.p, align 8, !alias.scope !3, !noalias !4
  %c7700 = trunc i64 %r7699 to i32
  %r7701.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7701 = load i64, ptr %r7701.p, align 8, !alias.scope !3, !noalias !4
  %c7702 = trunc i64 %r7701 to i32
  %t7703 = sub i32 %c7700, %c7702
  %fn7704 = icmp slt i32 %t7703, 0
  %fz7705 = icmp eq i32 %t7703, 0
  %fc7706 = icmp uge i32 %c7700, %c7702
  %fx17707 = xor i32 %c7700, %c7702
  %fx27708 = xor i32 %c7700, %t7703
  %fva7709 = and i32 %fx17707, %fx27708
  %fv7710 = icmp slt i32 %fva7709, 0
  %nz7711 = zext i1 %fn7704 to i64
  %zz7712 = zext i1 %fz7705 to i64
  %cz7713 = zext i1 %fc7706 to i64
  %vz7714 = zext i1 %fv7710 to i64
  %ns7715 = shl i64 %nz7711, 31
  %zs7716 = shl i64 %zz7712, 30
  %cs7717 = shl i64 %cz7713, 29
  %vs7718 = shl i64 %vz7714, 28
  %nzor7719 = or i64 %ns7715, %zs7716
  %cvor7720 = or i64 %cs7717, %vs7718
  %nzcv7721 = or i64 %nzor7719, %cvor7720
  %wp7722 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7721, ptr %wp7722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283580 word 0x1a8f13ec
  %r7723.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7723 = load i64, ptr %r7723.p, align 8, !alias.scope !3, !noalias !4
  %c7724 = trunc i64 %r7723 to i32
  %r7725.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7725 = load i64, ptr %r7725.p, align 8, !alias.scope !3, !noalias !4
  %fsh7727 = lshr i64 %r7725, 30
  %ftr7728 = trunc i64 %fsh7727 to i1
  %cond7726 = xor i1 %ftr7728, true
  %sel7729 = select i1 %cond7726, i32 0, i32 %c7724
  %c7730 = zext i32 %sel7729 to i64
  %wp7731 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7730, ptr %wp7731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283584 word 0x54000040
  %r7732.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7732 = load i64, ptr %r7732.p, align 8, !alias.scope !3, !noalias !4
  %fsh7734 = lshr i64 %r7732, 30
  %cond7733 = trunc i64 %fsh7734 to i1
  br i1 %cond7733, label %L_80028358c, label %L_800283588_ft
L_80028358c:
  ; @pc 0x80028358c word 0x3607fdec
  %r7740.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7740 = load i64, ptr %r7740.p, align 8, !alias.scope !3, !noalias !4
  %t7741 = and i64 %r7740, 1
  %cmp7742 = icmp eq i64 %t7741, 0
  br i1 %cmp7742, label %L_800283548, label %L_800283590_ft
L_8002835a0:
  ; @pc 0x8002835a0 word 0x8b0b014d
  %r7759.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7759 = load i64, ptr %r7759.p, align 8, !alias.scope !3, !noalias !4
  %r7760.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7760 = load i64, ptr %r7760.p, align 8, !alias.scope !3, !noalias !4
  %t7761 = add i64 %r7759, %r7760
  %wp7762 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t7761, ptr %wp7762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835a4 word 0x394005ad
  %r7763.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7763 = load i64, ptr %r7763.p, align 8, !alias.scope !3, !noalias !4
  %t7764 = add i64 %r7763, 1
  %gmp7765 = inttoptr i64 %t7764 to ptr
  %gml7766 = load i8, ptr %gmp7765, align 1, !alias.scope !4, !noalias !3
  %c7767 = zext i8 %gml7766 to i64
  %wp7768 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c7767, ptr %wp7768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835a8 word 0x6b0d019f
  %r7769.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7769 = load i64, ptr %r7769.p, align 8, !alias.scope !3, !noalias !4
  %c7770 = trunc i64 %r7769 to i32
  %r7771.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7771 = load i64, ptr %r7771.p, align 8, !alias.scope !3, !noalias !4
  %c7772 = trunc i64 %r7771 to i32
  %t7773 = sub i32 %c7770, %c7772
  %fn7774 = icmp slt i32 %t7773, 0
  %fz7775 = icmp eq i32 %t7773, 0
  %fc7776 = icmp uge i32 %c7770, %c7772
  %fx17777 = xor i32 %c7770, %c7772
  %fx27778 = xor i32 %c7770, %t7773
  %fva7779 = and i32 %fx17777, %fx27778
  %fv7780 = icmp slt i32 %fva7779, 0
  %nz7781 = zext i1 %fn7774 to i64
  %zz7782 = zext i1 %fz7775 to i64
  %cz7783 = zext i1 %fc7776 to i64
  %vz7784 = zext i1 %fv7780 to i64
  %ns7785 = shl i64 %nz7781, 31
  %zs7786 = shl i64 %zz7782, 30
  %cs7787 = shl i64 %cz7783, 29
  %vs7788 = shl i64 %vz7784, 28
  %nzor7789 = or i64 %ns7785, %zs7786
  %cvor7790 = or i64 %cs7787, %vs7788
  %nzcv7791 = or i64 %nzor7789, %cvor7790
  %wp7792 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7791, ptr %wp7792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835ac word 0x540001e3
  %r7793.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7793 = load i64, ptr %r7793.p, align 8, !alias.scope !3, !noalias !4
  %fsh7795 = lshr i64 %r7793, 29
  %ftr7796 = trunc i64 %fsh7795 to i1
  %cond7794 = xor i1 %ftr7796, true
  br i1 %cond7794, label %L_8002835e8, label %L_8002835b0_ft
L_8002835b4:
  ; @pc 0x8002835b4 word 0x7100019f
  %r7799.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7799 = load i64, ptr %r7799.p, align 8, !alias.scope !3, !noalias !4
  %c7800 = trunc i64 %r7799 to i32
  %t7801 = sub i32 %c7800, 0
  %fn7802 = icmp slt i32 %t7801, 0
  %fz7803 = icmp eq i32 %t7801, 0
  %fc7804 = icmp uge i32 %c7800, 0
  %fx17805 = xor i32 %c7800, 0
  %fx27806 = xor i32 %c7800, %t7801
  %fva7807 = and i32 %fx17805, %fx27806
  %fv7808 = icmp slt i32 %fva7807, 0
  %nz7809 = zext i1 %fn7802 to i64
  %zz7810 = zext i1 %fz7803 to i64
  %cz7811 = zext i1 %fc7804 to i64
  %vz7812 = zext i1 %fv7808 to i64
  %ns7813 = shl i64 %nz7809, 31
  %zs7814 = shl i64 %zz7810, 30
  %cs7815 = shl i64 %cz7811, 29
  %vs7816 = shl i64 %vz7812, 28
  %nzor7817 = or i64 %ns7813, %zs7814
  %cvor7818 = or i64 %cs7815, %vs7816
  %nzcv7819 = or i64 %nzor7817, %cvor7818
  %wp7820 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7819, ptr %wp7820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835b8 word 0x1a9f07ef
  %t7821 = add i32 0, 1
  %r7822.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7822 = load i64, ptr %r7822.p, align 8, !alias.scope !3, !noalias !4
  %fsh7824 = lshr i64 %r7822, 30
  %cond7823 = trunc i64 %fsh7824 to i1
  %sel7825 = select i1 %cond7823, i32 0, i32 %t7821
  %c7826 = zext i32 %sel7825 to i64
  %wp7827 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c7826, ptr %wp7827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835bc word 0x6b0d019f
  %r7828.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7828 = load i64, ptr %r7828.p, align 8, !alias.scope !3, !noalias !4
  %c7829 = trunc i64 %r7828 to i32
  %r7830.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7830 = load i64, ptr %r7830.p, align 8, !alias.scope !3, !noalias !4
  %c7831 = trunc i64 %r7830 to i32
  %t7832 = sub i32 %c7829, %c7831
  %fn7833 = icmp slt i32 %t7832, 0
  %fz7834 = icmp eq i32 %t7832, 0
  %fc7835 = icmp uge i32 %c7829, %c7831
  %fx17836 = xor i32 %c7829, %c7831
  %fx27837 = xor i32 %c7829, %t7832
  %fva7838 = and i32 %fx17836, %fx27837
  %fv7839 = icmp slt i32 %fva7838, 0
  %nz7840 = zext i1 %fn7833 to i64
  %zz7841 = zext i1 %fz7834 to i64
  %cz7842 = zext i1 %fc7835 to i64
  %vz7843 = zext i1 %fv7839 to i64
  %ns7844 = shl i64 %nz7840, 31
  %zs7845 = shl i64 %zz7841, 30
  %cs7846 = shl i64 %cz7842, 29
  %vs7847 = shl i64 %vz7843, 28
  %nzor7848 = or i64 %ns7844, %zs7845
  %cvor7849 = or i64 %cs7846, %vs7847
  %nzcv7850 = or i64 %nzor7848, %cvor7849
  %wp7851 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7850, ptr %wp7851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835c0 word 0x1a8f13ec
  %r7852.p = getelementptr inbounds i8, ptr %c, i64 120
  %r7852 = load i64, ptr %r7852.p, align 8, !alias.scope !3, !noalias !4
  %c7853 = trunc i64 %r7852 to i32
  %r7854.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7854 = load i64, ptr %r7854.p, align 8, !alias.scope !3, !noalias !4
  %fsh7856 = lshr i64 %r7854, 30
  %ftr7857 = trunc i64 %fsh7856 to i1
  %cond7855 = xor i1 %ftr7857, true
  %sel7858 = select i1 %cond7855, i32 0, i32 %c7853
  %c7859 = zext i32 %sel7858 to i64
  %wp7860 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7859, ptr %wp7860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835c4 word 0x54000040
  %r7861.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7861 = load i64, ptr %r7861.p, align 8, !alias.scope !3, !noalias !4
  %fsh7863 = lshr i64 %r7861, 30
  %cond7862 = trunc i64 %fsh7863 to i1
  br i1 %cond7862, label %L_8002835cc, label %L_8002835c8_ft
L_8002835cc:
  ; @pc 0x8002835cc word 0x34fffbec
  %r7869.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7869 = load i64, ptr %r7869.p, align 8, !alias.scope !3, !noalias !4
  %c7870 = trunc i64 %r7869 to i32
  %cmp7871 = icmp eq i32 %c7870, 0
  br i1 %cmp7871, label %L_800283548, label %L_8002835d0_ft
L_8002835e0:
  ; @pc 0x8002835e0 word 0x1280000e
  %c7900 = zext i32 -1 to i64
  %wp7901 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7900, ptr %wp7901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835e4 word 0x17ffffe4
  br label %L_800283574
L_8002835e8:
  ; @pc 0x8002835e8 word 0x1280000e
  %c7902 = zext i32 -1 to i64
  %wp7903 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7902, ptr %wp7903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835ec word 0x17fffff2
  br label %L_8002835b4
L_8002835f0:
  ; @pc 0x8002835f0 word 0x51000508
  %r7904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7904 = load i64, ptr %r7904.p, align 8, !alias.scope !3, !noalias !4
  %c7905 = trunc i64 %r7904 to i32
  %t7906 = sub i32 %c7905, 1
  %c7907 = zext i32 %t7906 to i64
  %wp7908 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7907, ptr %wp7908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835f4 word 0x71001d1f
  %r7909.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7909 = load i64, ptr %r7909.p, align 8, !alias.scope !3, !noalias !4
  %c7910 = trunc i64 %r7909 to i32
  %t7911 = sub i32 %c7910, 7
  %fn7912 = icmp slt i32 %t7911, 0
  %fz7913 = icmp eq i32 %t7911, 0
  %fc7914 = icmp uge i32 %c7910, 7
  %fx17915 = xor i32 %c7910, 7
  %fx27916 = xor i32 %c7910, %t7911
  %fva7917 = and i32 %fx17915, %fx27916
  %fv7918 = icmp slt i32 %fva7917, 0
  %nz7919 = zext i1 %fn7912 to i64
  %zz7920 = zext i1 %fz7913 to i64
  %cz7921 = zext i1 %fc7914 to i64
  %vz7922 = zext i1 %fv7918 to i64
  %ns7923 = shl i64 %nz7919, 31
  %zs7924 = shl i64 %zz7920, 30
  %cs7925 = shl i64 %cz7921, 29
  %vs7926 = shl i64 %vz7922, 28
  %nzor7927 = or i64 %ns7923, %zs7924
  %cvor7928 = or i64 %cs7925, %vs7926
  %nzcv7929 = or i64 %nzor7927, %cvor7928
  %wp7930 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7929, ptr %wp7930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835f8 word 0x54fff6c8
  %r7931.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7931 = load i64, ptr %r7931.p, align 8, !alias.scope !3, !noalias !4
  %fsh7933 = lshr i64 %r7931, 29
  %ftr7934 = trunc i64 %fsh7933 to i1
  %fsh7935 = lshr i64 %r7931, 30
  %ftr7936 = trunc i64 %fsh7935 to i1
  %fnz7937 = xor i1 %ftr7936, true
  %cond7932 = and i1 %ftr7934, %fnz7937
  br i1 %cond7932, label %L_8002834d0, label %L_8002835fc_ft
L_800283614:
  ; @pc 0x800283614 word 0x394063e8
  %r7956.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7956 = load i64, ptr %r7956.p, align 8, !alias.scope !3, !noalias !4
  %t7957 = add i64 %r7956, 24
  %gmp7958 = inttoptr i64 %t7957 to ptr
  %gml7959 = load i8, ptr %gmp7958, align 1, !alias.scope !4, !noalias !3
  %c7960 = zext i8 %gml7959 to i64
  %wp7961 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7960, ptr %wp7961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283618 word 0x39436269
  %r7962.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7962 = load i64, ptr %r7962.p, align 8, !alias.scope !3, !noalias !4
  %t7963 = add i64 %r7962, 216
  %gmp7964 = inttoptr i64 %t7963 to ptr
  %gml7965 = load i8, ptr %gmp7964, align 1, !alias.scope !4, !noalias !3
  %c7966 = zext i8 %gml7965 to i64
  %wp7967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7966, ptr %wp7967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028361c word 0x4b090108
  %r7968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7968 = load i64, ptr %r7968.p, align 8, !alias.scope !3, !noalias !4
  %c7969 = trunc i64 %r7968 to i32
  %r7970.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7970 = load i64, ptr %r7970.p, align 8, !alias.scope !3, !noalias !4
  %c7971 = trunc i64 %r7970 to i32
  %t7972 = sub i32 %c7969, %c7971
  %c7973 = zext i32 %t7972 to i64
  %wp7974 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7973, ptr %wp7974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283620 word 0x17ffffca
  br label %L_800283548
L_800283624:
  ; @pc 0x800283624 word 0xb9401be8
  %r7975.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7975 = load i64, ptr %r7975.p, align 8, !alias.scope !3, !noalias !4
  %t7976 = add i64 %r7975, 24
  %gmp7977 = inttoptr i64 %t7976 to ptr
  %gml7978 = load i32, ptr %gmp7977, align 1, !alias.scope !4, !noalias !3
  %c7979 = zext i32 %gml7978 to i64
  %wp7980 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7979, ptr %wp7980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283628 word 0xb940da69
  %r7981.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7981 = load i64, ptr %r7981.p, align 8, !alias.scope !3, !noalias !4
  %t7982 = add i64 %r7981, 216
  %gmp7983 = inttoptr i64 %t7982 to ptr
  %gml7984 = load i32, ptr %gmp7983, align 1, !alias.scope !4, !noalias !3
  %c7985 = zext i32 %gml7984 to i64
  %wp7986 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7985, ptr %wp7986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028362c word 0x6b09011f
  %r7987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7987 = load i64, ptr %r7987.p, align 8, !alias.scope !3, !noalias !4
  %c7988 = trunc i64 %r7987 to i32
  %r7989.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7989 = load i64, ptr %r7989.p, align 8, !alias.scope !3, !noalias !4
  %c7990 = trunc i64 %r7989 to i32
  %t7991 = sub i32 %c7988, %c7990
  %fn7992 = icmp slt i32 %t7991, 0
  %fz7993 = icmp eq i32 %t7991, 0
  %fc7994 = icmp uge i32 %c7988, %c7990
  %fx17995 = xor i32 %c7988, %c7990
  %fx27996 = xor i32 %c7988, %t7991
  %fva7997 = and i32 %fx17995, %fx27996
  %fv7998 = icmp slt i32 %fva7997, 0
  %nz7999 = zext i1 %fn7992 to i64
  %zz8000 = zext i1 %fz7993 to i64
  %cz8001 = zext i1 %fc7994 to i64
  %vz8002 = zext i1 %fv7998 to i64
  %ns8003 = shl i64 %nz7999, 31
  %zs8004 = shl i64 %zz8000, 30
  %cs8005 = shl i64 %cz8001, 29
  %vs8006 = shl i64 %vz8002, 28
  %nzor8007 = or i64 %ns8003, %zs8004
  %cvor8008 = or i64 %cs8005, %vs8006
  %nzcv8009 = or i64 %nzor8007, %cvor8008
  %wp8010 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8009, ptr %wp8010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283630 word 0x54fff908
  %r8011.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8011 = load i64, ptr %r8011.p, align 8, !alias.scope !3, !noalias !4
  %fsh8013 = lshr i64 %r8011, 29
  %ftr8014 = trunc i64 %fsh8013 to i1
  %fsh8015 = lshr i64 %r8011, 30
  %ftr8016 = trunc i64 %fsh8015 to i1
  %fnz8017 = xor i1 %ftr8016, true
  %cond8012 = and i1 %ftr8014, %fnz8017
  br i1 %cond8012, label %L_800283550, label %L_800283634
L_800283634:
  ; @pc 0x800283634 word 0x5a9f23e8
  %t8018 = xor i32 0, -1
  %r8019.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8019 = load i64, ptr %r8019.p, align 8, !alias.scope !3, !noalias !4
  %fsh8021 = lshr i64 %r8019, 29
  %cond8020 = trunc i64 %fsh8021 to i1
  %sel8022 = select i1 %cond8020, i32 0, i32 %t8018
  %c8023 = zext i32 %sel8022 to i64
  %wp8024 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8023, ptr %wp8024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283638 word 0x17ffffc4
  br label %L_800283548
L_80028363c:
  ; @pc 0x80028363c word 0xf9400fe8
  %r8025.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8025 = load i64, ptr %r8025.p, align 8, !alias.scope !3, !noalias !4
  %t8026 = add i64 %r8025, 24
  %gmp8027 = inttoptr i64 %t8026 to ptr
  %gml8028 = load i64, ptr %gmp8027, align 1, !alias.scope !4, !noalias !3
  %wp8029 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8028, ptr %wp8029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283640 word 0xf9406e69
  %r8030.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8030 = load i64, ptr %r8030.p, align 8, !alias.scope !3, !noalias !4
  %t8031 = add i64 %r8030, 216
  %gmp8032 = inttoptr i64 %t8031 to ptr
  %gml8033 = load i64, ptr %gmp8032, align 1, !alias.scope !4, !noalias !3
  %wp8034 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8033, ptr %wp8034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283644 word 0xeb09011f
  %r8035.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8035 = load i64, ptr %r8035.p, align 8, !alias.scope !3, !noalias !4
  %r8036.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8036 = load i64, ptr %r8036.p, align 8, !alias.scope !3, !noalias !4
  %t8037 = sub i64 %r8035, %r8036
  %fn8038 = icmp slt i64 %t8037, 0
  %fz8039 = icmp eq i64 %t8037, 0
  %fc8040 = icmp uge i64 %r8035, %r8036
  %fx18041 = xor i64 %r8035, %r8036
  %fx28042 = xor i64 %r8035, %t8037
  %fva8043 = and i64 %fx18041, %fx28042
  %fv8044 = icmp slt i64 %fva8043, 0
  %nz8045 = zext i1 %fn8038 to i64
  %zz8046 = zext i1 %fz8039 to i64
  %cz8047 = zext i1 %fc8040 to i64
  %vz8048 = zext i1 %fv8044 to i64
  %ns8049 = shl i64 %nz8045, 31
  %zs8050 = shl i64 %zz8046, 30
  %cs8051 = shl i64 %cz8047, 29
  %vs8052 = shl i64 %vz8048, 28
  %nzor8053 = or i64 %ns8049, %zs8050
  %cvor8054 = or i64 %cs8051, %vs8052
  %nzcv8055 = or i64 %nzor8053, %cvor8054
  %wp8056 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8055, ptr %wp8056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283648 word 0x54fff7ed
  %r8057.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8057 = load i64, ptr %r8057.p, align 8, !alias.scope !3, !noalias !4
  %fsh8059 = lshr i64 %r8057, 30
  %ftr8060 = trunc i64 %fsh8059 to i1
  %fsh8061 = lshr i64 %r8057, 31
  %ftr8062 = trunc i64 %fsh8061 to i1
  %fsh8063 = lshr i64 %r8057, 28
  %ftr8064 = trunc i64 %fsh8063 to i1
  %fnz8065 = xor i1 %ftr8060, true
  %feq8066 = icmp eq i1 %ftr8062, %ftr8064
  %fgt8067 = and i1 %fnz8065, %feq8066
  %cond8058 = xor i1 %fgt8067, true
  br i1 %cond8058, label %L_800283544, label %L_80028364c_ft
L_800283650:
  ; @pc 0x800283650 word 0xf9400fe8
  %r8068.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8068 = load i64, ptr %r8068.p, align 8, !alias.scope !3, !noalias !4
  %t8069 = add i64 %r8068, 24
  %gmp8070 = inttoptr i64 %t8069 to ptr
  %gml8071 = load i64, ptr %gmp8070, align 1, !alias.scope !4, !noalias !3
  %wp8072 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8071, ptr %wp8072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283654 word 0xf9406e69
  %r8073.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8073 = load i64, ptr %r8073.p, align 8, !alias.scope !3, !noalias !4
  %t8074 = add i64 %r8073, 216
  %gmp8075 = inttoptr i64 %t8074 to ptr
  %gml8076 = load i64, ptr %gmp8075, align 1, !alias.scope !4, !noalias !3
  %wp8077 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8076, ptr %wp8077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283658 word 0xeb09011f
  %r8078.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8078 = load i64, ptr %r8078.p, align 8, !alias.scope !3, !noalias !4
  %r8079.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8079 = load i64, ptr %r8079.p, align 8, !alias.scope !3, !noalias !4
  %t8080 = sub i64 %r8078, %r8079
  %fn8081 = icmp slt i64 %t8080, 0
  %fz8082 = icmp eq i64 %t8080, 0
  %fc8083 = icmp uge i64 %r8078, %r8079
  %fx18084 = xor i64 %r8078, %r8079
  %fx28085 = xor i64 %r8078, %t8080
  %fva8086 = and i64 %fx18084, %fx28085
  %fv8087 = icmp slt i64 %fva8086, 0
  %nz8088 = zext i1 %fn8081 to i64
  %zz8089 = zext i1 %fz8082 to i64
  %cz8090 = zext i1 %fc8083 to i64
  %vz8091 = zext i1 %fv8087 to i64
  %ns8092 = shl i64 %nz8088, 31
  %zs8093 = shl i64 %zz8089, 30
  %cs8094 = shl i64 %cz8090, 29
  %vs8095 = shl i64 %vz8091, 28
  %nzor8096 = or i64 %ns8092, %zs8093
  %cvor8097 = or i64 %cs8094, %vs8095
  %nzcv8098 = or i64 %nzor8096, %cvor8097
  %wp8099 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8098, ptr %wp8099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028365c word 0x54fffec9
  %r8100.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8100 = load i64, ptr %r8100.p, align 8, !alias.scope !3, !noalias !4
  %fsh8102 = lshr i64 %r8100, 29
  %ftr8103 = trunc i64 %fsh8102 to i1
  %fsh8104 = lshr i64 %r8100, 30
  %ftr8105 = trunc i64 %fsh8104 to i1
  %fnz8106 = xor i1 %ftr8105, true
  %fhi8107 = and i1 %ftr8103, %fnz8106
  %cond8101 = xor i1 %fhi8107, true
  br i1 %cond8101, label %L_800283634, label %L_800283660_ft
L_800283664:
  ; @pc 0x800283664 word 0xbd401be0
  %r8108.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8108 = load i64, ptr %r8108.p, align 8, !alias.scope !3, !noalias !4
  %t8109 = add i64 %r8108, 24
  %gmp8110 = inttoptr i64 %t8109 to ptr
  %gml8111 = load i32, ptr %gmp8110, align 1, !alias.scope !4, !noalias !3
  %c8112 = zext i32 %gml8111 to i128
  %wp8113 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8112, ptr %wp8113, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283668 word 0xbd40da61
  %r8114.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8114 = load i64, ptr %r8114.p, align 8, !alias.scope !3, !noalias !4
  %t8115 = add i64 %r8114, 216
  %gmp8116 = inttoptr i64 %t8115 to ptr
  %gml8117 = load i32, ptr %gmp8116, align 1, !alias.scope !4, !noalias !3
  %c8118 = zext i32 %gml8117 to i128
  %wp8119 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8118, ptr %wp8119, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80028366c word 0x1e212000
  %fcmp8120 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp8121 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8120, ptr %wp8121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283670 word 0x54fff70c
  %r8122.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8122 = load i64, ptr %r8122.p, align 8, !alias.scope !3, !noalias !4
  %fsh8124 = lshr i64 %r8122, 30
  %ftr8125 = trunc i64 %fsh8124 to i1
  %fsh8126 = lshr i64 %r8122, 31
  %ftr8127 = trunc i64 %fsh8126 to i1
  %fsh8128 = lshr i64 %r8122, 28
  %ftr8129 = trunc i64 %fsh8128 to i1
  %fnz8130 = xor i1 %ftr8125, true
  %feq8131 = icmp eq i1 %ftr8127, %ftr8129
  %cond8123 = and i1 %fnz8130, %feq8131
  br i1 %cond8123, label %L_800283550, label %L_800283674_ft
L_800283678:
  ; @pc 0x800283678 word 0xfd400fe0
  %r8132.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8132 = load i64, ptr %r8132.p, align 8, !alias.scope !3, !noalias !4
  %t8133 = add i64 %r8132, 24
  %gmp8134 = inttoptr i64 %t8133 to ptr
  %gml8135 = load i64, ptr %gmp8134, align 1, !alias.scope !4, !noalias !3
  %c8136 = zext i64 %gml8135 to i128
  %wp8137 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c8136, ptr %wp8137, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x80028367c word 0xfd406e61
  %r8138.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8138 = load i64, ptr %r8138.p, align 8, !alias.scope !3, !noalias !4
  %t8139 = add i64 %r8138, 216
  %gmp8140 = inttoptr i64 %t8139 to ptr
  %gml8141 = load i64, ptr %gmp8140, align 1, !alias.scope !4, !noalias !3
  %c8142 = zext i64 %gml8141 to i128
  %wp8143 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c8142, ptr %wp8143, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283680 word 0x1e612000
  %fcmp8144 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp8145 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp8144, ptr %wp8145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283684 word 0x54fff66c
  %r8146.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8146 = load i64, ptr %r8146.p, align 8, !alias.scope !3, !noalias !4
  %fsh8148 = lshr i64 %r8146, 30
  %ftr8149 = trunc i64 %fsh8148 to i1
  %fsh8150 = lshr i64 %r8146, 31
  %ftr8151 = trunc i64 %fsh8150 to i1
  %fsh8152 = lshr i64 %r8146, 28
  %ftr8153 = trunc i64 %fsh8152 to i1
  %fnz8154 = xor i1 %ftr8149, true
  %feq8155 = icmp eq i1 %ftr8151, %ftr8153
  %cond8147 = and i1 %fnz8154, %feq8155
  br i1 %cond8147, label %L_800283550, label %L_800283688
L_800283688:
  ; @pc 0x800283688 word 0x5a9f53e8
  %t8156 = xor i32 0, -1
  %r8157.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8157 = load i64, ptr %r8157.p, align 8, !alias.scope !3, !noalias !4
  %fsh8159 = lshr i64 %r8157, 31
  %ftr8160 = trunc i64 %fsh8159 to i1
  %cond8158 = xor i1 %ftr8160, true
  %sel8161 = select i1 %cond8158, i32 0, i32 %t8156
  %c8162 = zext i32 %sel8161 to i64
  %wp8163 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8162, ptr %wp8163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028368c word 0x17ffffaf
  br label %L_800283548
L_800283690:
  ; @pc 0x800283690 word 0xf9400fe9
  %r8164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8164 = load i64, ptr %r8164.p, align 8, !alias.scope !3, !noalias !4
  %t8165 = add i64 %r8164, 24
  %gmp8166 = inttoptr i64 %t8165 to ptr
  %gml8167 = load i64, ptr %gmp8166, align 1, !alias.scope !4, !noalias !3
  %wp8168 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8167, ptr %wp8168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283694 word 0xf9406e6a
  %r8169.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8169 = load i64, ptr %r8169.p, align 8, !alias.scope !3, !noalias !4
  %t8170 = add i64 %r8169, 216
  %gmp8171 = inttoptr i64 %t8170 to ptr
  %gml8172 = load i64, ptr %gmp8171, align 1, !alias.scope !4, !noalias !3
  %wp8173 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml8172, ptr %wp8173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283698 word 0xeb0a013f
  %r8174.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8174 = load i64, ptr %r8174.p, align 8, !alias.scope !3, !noalias !4
  %r8175.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8175 = load i64, ptr %r8175.p, align 8, !alias.scope !3, !noalias !4
  %t8176 = sub i64 %r8174, %r8175
  %fn8177 = icmp slt i64 %t8176, 0
  %fz8178 = icmp eq i64 %t8176, 0
  %fc8179 = icmp uge i64 %r8174, %r8175
  %fx18180 = xor i64 %r8174, %r8175
  %fx28181 = xor i64 %r8174, %t8176
  %fva8182 = and i64 %fx18180, %fx28181
  %fv8183 = icmp slt i64 %fva8182, 0
  %nz8184 = zext i1 %fn8177 to i64
  %zz8185 = zext i1 %fz8178 to i64
  %cz8186 = zext i1 %fc8179 to i64
  %vz8187 = zext i1 %fv8183 to i64
  %ns8188 = shl i64 %nz8184, 31
  %zs8189 = shl i64 %zz8185, 30
  %cs8190 = shl i64 %cz8186, 29
  %vs8191 = shl i64 %vz8187, 28
  %nzor8192 = or i64 %ns8188, %zs8189
  %cvor8193 = or i64 %cs8190, %vs8191
  %nzcv8194 = or i64 %nzor8192, %cvor8193
  %wp8195 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8194, ptr %wp8195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028369c word 0x54fff1a0
  %r8196.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8196 = load i64, ptr %r8196.p, align 8, !alias.scope !3, !noalias !4
  %fsh8198 = lshr i64 %r8196, 30
  %cond8197 = trunc i64 %fsh8198 to i1
  br i1 %cond8197, label %L_8002834d0, label %L_8002836a0_ft
L_8002836b0:
  ; @pc 0x8002836b0 word 0x11000776
  %r8201.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8201 = load i64, ptr %r8201.p, align 8, !alias.scope !3, !noalias !4
  %c8202 = trunc i64 %r8201 to i32
  %t8203 = add i32 %c8202, 1
  %c8204 = zext i32 %t8203 to i64
  %wp8205 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c8204, ptr %wp8205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836b4 word 0x5280003c
  %c8206 = zext i32 1 to i64
  %wp8207 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c8206, ptr %wp8207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836b8 word 0x2a1703fb
  %r8208.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8208 = load i64, ptr %r8208.p, align 8, !alias.scope !3, !noalias !4
  %c8209 = trunc i64 %r8208 to i32
  %t8210 = or i32 0, %c8209
  %c8211 = zext i32 %t8210 to i64
  %wp8212 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c8211, ptr %wp8212, align 8, !alias.scope !3, !noalias !4
  br label %L_8002836bc
L_8002836bc:
  ; @pc 0x8002836bc word 0x6b1b02df
  %r8213.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8213 = load i64, ptr %r8213.p, align 8, !alias.scope !3, !noalias !4
  %c8214 = trunc i64 %r8213 to i32
  %r8215.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8215 = load i64, ptr %r8215.p, align 8, !alias.scope !3, !noalias !4
  %c8216 = trunc i64 %r8215 to i32
  %t8217 = sub i32 %c8214, %c8216
  %fn8218 = icmp slt i32 %t8217, 0
  %fz8219 = icmp eq i32 %t8217, 0
  %fc8220 = icmp uge i32 %c8214, %c8216
  %fx18221 = xor i32 %c8214, %c8216
  %fx28222 = xor i32 %c8214, %t8217
  %fva8223 = and i32 %fx18221, %fx28222
  %fv8224 = icmp slt i32 %fva8223, 0
  %nz8225 = zext i1 %fn8218 to i64
  %zz8226 = zext i1 %fz8219 to i64
  %cz8227 = zext i1 %fc8220 to i64
  %vz8228 = zext i1 %fv8224 to i64
  %ns8229 = shl i64 %nz8225, 31
  %zs8230 = shl i64 %zz8226, 30
  %cs8231 = shl i64 %cz8227, 29
  %vs8232 = shl i64 %vz8228, 28
  %nzor8233 = or i64 %ns8229, %zs8230
  %cvor8234 = or i64 %cs8231, %vs8232
  %nzcv8235 = or i64 %nzor8233, %cvor8234
  %wp8236 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8235, ptr %wp8236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836c0 word 0x2a1b03f7
  %r8237.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8237 = load i64, ptr %r8237.p, align 8, !alias.scope !3, !noalias !4
  %c8238 = trunc i64 %r8237 to i32
  %t8239 = or i32 0, %c8238
  %c8240 = zext i32 %t8239 to i64
  %wp8241 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c8240, ptr %wp8241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836c4 word 0x54ffb26a
  %r8242.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8242 = load i64, ptr %r8242.p, align 8, !alias.scope !3, !noalias !4
  %fsh8244 = lshr i64 %r8242, 31
  %ftr8245 = trunc i64 %fsh8244 to i1
  %fsh8246 = lshr i64 %r8242, 28
  %ftr8247 = trunc i64 %fsh8246 to i1
  %cond8243 = icmp eq i1 %ftr8245, %ftr8247
  br i1 %cond8243, label %L_800282d10, label %L_8002836c8
L_8002836c8:
  ; @pc 0x8002836c8 word 0x2b1702c8
  %r8248.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8248 = load i64, ptr %r8248.p, align 8, !alias.scope !3, !noalias !4
  %c8249 = trunc i64 %r8248 to i32
  %r8250.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8250 = load i64, ptr %r8250.p, align 8, !alias.scope !3, !noalias !4
  %c8251 = trunc i64 %r8250 to i32
  %t8252 = add i32 %c8249, %c8251
  %fn8253 = icmp slt i32 %t8252, 0
  %fz8254 = icmp eq i32 %t8252, 0
  %fc8255 = icmp ult i32 %t8252, %c8249
  %fx18256 = xor i32 %c8249, %t8252
  %fx28257 = xor i32 %c8251, %t8252
  %fva8258 = and i32 %fx18256, %fx28257
  %fv8259 = icmp slt i32 %fva8258, 0
  %nz8260 = zext i1 %fn8253 to i64
  %zz8261 = zext i1 %fz8254 to i64
  %cz8262 = zext i1 %fc8255 to i64
  %vz8263 = zext i1 %fv8259 to i64
  %ns8264 = shl i64 %nz8260, 31
  %zs8265 = shl i64 %zz8261, 30
  %cs8266 = shl i64 %cz8262, 29
  %vs8267 = shl i64 %vz8263, 28
  %nzor8268 = or i64 %ns8264, %zs8265
  %cvor8269 = or i64 %cs8266, %vs8267
  %nzcv8270 = or i64 %nzor8268, %cvor8269
  %wp8271 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8270, ptr %wp8271, align 8, !alias.scope !3, !noalias !4
  %c8272 = zext i32 %t8252 to i64
  %wp8273 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8272, ptr %wp8273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836cc word 0xa9408289
  %r8274.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8274 = load i64, ptr %r8274.p, align 8, !alias.scope !3, !noalias !4
  %t8275 = add i64 %r8274, 8
  %t8276 = add i64 %t8275, 8
  %gmp8277 = inttoptr i64 %t8275 to ptr
  %gml8278 = load i64, ptr %gmp8277, align 1, !alias.scope !4, !noalias !3
  %gmp8279 = inttoptr i64 %t8276 to ptr
  %gml8280 = load i64, ptr %gmp8279, align 1, !alias.scope !4, !noalias !3
  %wp8281 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8278, ptr %wp8281, align 8, !alias.scope !3, !noalias !4
  %wp8282 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml8280, ptr %wp8282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836d0 word 0x1a88a508
  %r8283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8283 = load i64, ptr %r8283.p, align 8, !alias.scope !3, !noalias !4
  %c8284 = trunc i64 %r8283 to i32
  %r8285.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8285 = load i64, ptr %r8285.p, align 8, !alias.scope !3, !noalias !4
  %c8286 = trunc i64 %r8285 to i32
  %t8287 = add i32 %c8286, 1
  %r8288.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8288 = load i64, ptr %r8288.p, align 8, !alias.scope !3, !noalias !4
  %fsh8290 = lshr i64 %r8288, 31
  %ftr8291 = trunc i64 %fsh8290 to i1
  %fsh8292 = lshr i64 %r8288, 28
  %ftr8293 = trunc i64 %fsh8292 to i1
  %cond8289 = icmp eq i1 %ftr8291, %ftr8293
  %sel8294 = select i1 %cond8289, i32 %c8284, i32 %t8287
  %c8295 = zext i32 %sel8294 to i64
  %wp8296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8295, ptr %wp8296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836d4 word 0xb9401a82
  %r8297.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8297 = load i64, ptr %r8297.p, align 8, !alias.scope !3, !noalias !4
  %t8298 = add i64 %r8297, 24
  %gmp8299 = inttoptr i64 %t8298 to ptr
  %gml8300 = load i32, ptr %gmp8299, align 1, !alias.scope !4, !noalias !3
  %c8301 = zext i32 %gml8300 to i64
  %wp8302 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8301, ptr %wp8302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836d8 word 0x13017d1b
  %r8303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8303 = load i64, ptr %r8303.p, align 8, !alias.scope !3, !noalias !4
  %c8304 = trunc i64 %r8303 to i32
  %ror8305 = call i32 @llvm.fshr.i32(i32 %c8304, i32 %c8304, i32 1)
  %t8306 = lshr i32 %c8304, 31
  %t8307 = and i32 %t8306, 1
  %t8308 = sub i32 0, %t8307
  %t8309 = and i32 %t8308, -2147483648
  %t8310 = and i32 %ror8305, 2147483647
  %t8311 = or i32 %t8309, %t8310
  %c8312 = zext i32 %t8311 to i64
  %wp8313 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c8312, ptr %wp8313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836dc word 0xb9400288
  %r8314.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8314 = load i64, ptr %r8314.p, align 8, !alias.scope !3, !noalias !4
  %gmp8315 = inttoptr i64 %r8314 to ptr
  %gml8316 = load i32, ptr %gmp8315, align 1, !alias.scope !4, !noalias !3
  %c8317 = zext i32 %gml8316 to i64
  %wp8318 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8317, ptr %wp8318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836e0 word 0x6b1b011f
  %r8319.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8319 = load i64, ptr %r8319.p, align 8, !alias.scope !3, !noalias !4
  %c8320 = trunc i64 %r8319 to i32
  %r8321.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8321 = load i64, ptr %r8321.p, align 8, !alias.scope !3, !noalias !4
  %c8322 = trunc i64 %r8321 to i32
  %t8323 = sub i32 %c8320, %c8322
  %fn8324 = icmp slt i32 %t8323, 0
  %fz8325 = icmp eq i32 %t8323, 0
  %fc8326 = icmp uge i32 %c8320, %c8322
  %fx18327 = xor i32 %c8320, %c8322
  %fx28328 = xor i32 %c8320, %t8323
  %fva8329 = and i32 %fx18327, %fx28328
  %fv8330 = icmp slt i32 %fva8329, 0
  %nz8331 = zext i1 %fn8324 to i64
  %zz8332 = zext i1 %fz8325 to i64
  %cz8333 = zext i1 %fc8326 to i64
  %vz8334 = zext i1 %fv8330 to i64
  %ns8335 = shl i64 %nz8331, 31
  %zs8336 = shl i64 %zz8332, 30
  %cs8337 = shl i64 %cz8333, 29
  %vs8338 = shl i64 %vz8334, 28
  %nzor8339 = or i64 %ns8335, %zs8336
  %cvor8340 = or i64 %cs8337, %vs8338
  %nzcv8341 = or i64 %nzor8339, %cvor8340
  %wp8342 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8341, ptr %wp8342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836e4 word 0x1a9f8368
  %r8343.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8343 = load i64, ptr %r8343.p, align 8, !alias.scope !3, !noalias !4
  %c8344 = trunc i64 %r8343 to i32
  %r8345.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8345 = load i64, ptr %r8345.p, align 8, !alias.scope !3, !noalias !4
  %fsh8347 = lshr i64 %r8345, 29
  %ftr8348 = trunc i64 %fsh8347 to i1
  %fsh8349 = lshr i64 %r8345, 30
  %ftr8350 = trunc i64 %fsh8349 to i1
  %fnz8351 = xor i1 %ftr8350, true
  %cond8346 = and i1 %ftr8348, %fnz8351
  %sel8352 = select i1 %cond8346, i32 %c8344, i32 0
  %c8353 = zext i32 %sel8352 to i64
  %wp8354 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8353, ptr %wp8354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836e8 word 0xf868d921
  %r8355.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8355 = load i64, ptr %r8355.p, align 8, !alias.scope !3, !noalias !4
  %r8356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8356 = load i64, ptr %r8356.p, align 8, !alias.scope !3, !noalias !4
  %c8357 = trunc i64 %r8356 to i32
  %c8358 = sext i32 %c8357 to i64
  %t8359 = shl i64 %c8358, 3
  %t8360 = add i64 %r8355, %t8359
  %gmp8361 = inttoptr i64 %t8360 to ptr
  %gml8362 = load i64, ptr %gmp8361, align 1, !alias.scope !4, !noalias !3
  %wp8363 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml8362, ptr %wp8363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836ec word 0xf9400008
  %r8364.p = getelementptr inbounds i8, ptr %c, i64 0
  %r8364 = load i64, ptr %r8364.p, align 8, !alias.scope !3, !noalias !4
  %gmp8365 = inttoptr i64 %r8364 to ptr
  %gml8366 = load i64, ptr %gmp8365, align 1, !alias.scope !4, !noalias !3
  %wp8367 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8366, ptr %wp8367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836f0 word 0xf9403d09
  %r8368.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8368 = load i64, ptr %r8368.p, align 8, !alias.scope !3, !noalias !4
  %t8369 = add i64 %r8368, 120
  %gmp8370 = inttoptr i64 %t8369 to ptr
  %gml8371 = load i64, ptr %gmp8370, align 1, !alias.scope !4, !noalias !3
  %wp8372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8371, ptr %wp8372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836f4 word 0x910043e8
  %r8373.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8373 = load i64, ptr %r8373.p, align 8, !alias.scope !3, !noalias !4
  %t8374 = add i64 %r8373, 16
  %wp8375 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8374, ptr %wp8375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836f8 word 0xd63f0120
  %r8376.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8376 = load i64, ptr %r8376.p, align 8, !alias.scope !3, !noalias !4
  %fp8377 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8376, ptr %fp8377, align 8, !alias.scope !3, !noalias !4
  %wp8378 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362373884, ptr %wp8378, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8002836fc word 0xb94013e8
  %r8379.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8379 = load i64, ptr %r8379.p, align 8, !alias.scope !3, !noalias !4
  %t8380 = add i64 %r8379, 16
  %gmp8381 = inttoptr i64 %t8380 to ptr
  %gml8382 = load i32, ptr %gmp8381, align 1, !alias.scope !4, !noalias !3
  %c8383 = zext i32 %gml8382 to i64
  %wp8384 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8383, ptr %wp8384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283700 word 0xb94002a9
  %r8385.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8385 = load i64, ptr %r8385.p, align 8, !alias.scope !3, !noalias !4
  %gmp8386 = inttoptr i64 %r8385 to ptr
  %gml8387 = load i32, ptr %gmp8386, align 1, !alias.scope !4, !noalias !3
  %c8388 = zext i32 %gml8387 to i64
  %wp8389 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8388, ptr %wp8389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283704 word 0x6b09011f
  %r8390.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8390 = load i64, ptr %r8390.p, align 8, !alias.scope !3, !noalias !4
  %c8391 = trunc i64 %r8390 to i32
  %r8392.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8392 = load i64, ptr %r8392.p, align 8, !alias.scope !3, !noalias !4
  %c8393 = trunc i64 %r8392 to i32
  %t8394 = sub i32 %c8391, %c8393
  %fn8395 = icmp slt i32 %t8394, 0
  %fz8396 = icmp eq i32 %t8394, 0
  %fc8397 = icmp uge i32 %c8391, %c8393
  %fx18398 = xor i32 %c8391, %c8393
  %fx28399 = xor i32 %c8391, %t8394
  %fva8400 = and i32 %fx18398, %fx28399
  %fv8401 = icmp slt i32 %fva8400, 0
  %nz8402 = zext i1 %fn8395 to i64
  %zz8403 = zext i1 %fz8396 to i64
  %cz8404 = zext i1 %fc8397 to i64
  %vz8405 = zext i1 %fv8401 to i64
  %ns8406 = shl i64 %nz8402, 31
  %zs8407 = shl i64 %zz8403, 30
  %cs8408 = shl i64 %cz8404, 29
  %vs8409 = shl i64 %vz8405, 28
  %nzor8410 = or i64 %ns8406, %zs8407
  %cvor8411 = or i64 %cs8408, %vs8409
  %nzcv8412 = or i64 %nzor8410, %cvor8411
  %wp8413 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8412, ptr %wp8413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283708 word 0x54fffd41
  %r8414.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8414 = load i64, ptr %r8414.p, align 8, !alias.scope !3, !noalias !4
  %fsh8416 = lshr i64 %r8414, 30
  %ftr8417 = trunc i64 %fsh8416 to i1
  %cond8415 = xor i1 %ftr8417, true
  br i1 %cond8415, label %L_8002836b0, label %L_80028370c_ft
L_800283728:
  ; @pc 0x800283728 word 0x386b692c
  %r8481.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8481 = load i64, ptr %r8481.p, align 8, !alias.scope !3, !noalias !4
  %r8482.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8482 = load i64, ptr %r8482.p, align 8, !alias.scope !3, !noalias !4
  %t8483 = add i64 %r8481, %r8482
  %gmp8484 = inttoptr i64 %t8483 to ptr
  %gml8485 = load i8, ptr %gmp8484, align 1, !alias.scope !4, !noalias !3
  %c8486 = zext i8 %gml8485 to i64
  %wp8487 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8486, ptr %wp8487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028372c word 0x3400058c
  %r8488.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8488 = load i64, ptr %r8488.p, align 8, !alias.scope !3, !noalias !4
  %c8489 = trunc i64 %r8488 to i32
  %cmp8490 = icmp eq i32 %c8489, 0
  br i1 %cmp8490, label %L_8002837dc, label %L_800283730
L_800283730:
  ; @pc 0x800283730 word 0x386b694d
  %r8491.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8491 = load i64, ptr %r8491.p, align 8, !alias.scope !3, !noalias !4
  %r8492.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8492 = load i64, ptr %r8492.p, align 8, !alias.scope !3, !noalias !4
  %t8493 = add i64 %r8491, %r8492
  %gmp8494 = inttoptr i64 %t8493 to ptr
  %gml8495 = load i8, ptr %gmp8494, align 1, !alias.scope !4, !noalias !3
  %c8496 = zext i8 %gml8495 to i64
  %wp8497 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8496, ptr %wp8497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283734 word 0x7100019f
  %r8498.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8498 = load i64, ptr %r8498.p, align 8, !alias.scope !3, !noalias !4
  %c8499 = trunc i64 %r8498 to i32
  %t8500 = sub i32 %c8499, 0
  %fn8501 = icmp slt i32 %t8500, 0
  %fz8502 = icmp eq i32 %t8500, 0
  %fc8503 = icmp uge i32 %c8499, 0
  %fx18504 = xor i32 %c8499, 0
  %fx28505 = xor i32 %c8499, %t8500
  %fva8506 = and i32 %fx18504, %fx28505
  %fv8507 = icmp slt i32 %fva8506, 0
  %nz8508 = zext i1 %fn8501 to i64
  %zz8509 = zext i1 %fz8502 to i64
  %cz8510 = zext i1 %fc8503 to i64
  %vz8511 = zext i1 %fv8507 to i64
  %ns8512 = shl i64 %nz8508, 31
  %zs8513 = shl i64 %zz8509, 30
  %cs8514 = shl i64 %cz8510, 29
  %vs8515 = shl i64 %vz8511, 28
  %nzor8516 = or i64 %ns8512, %zs8513
  %cvor8517 = or i64 %cs8514, %vs8515
  %nzcv8518 = or i64 %nzor8516, %cvor8517
  %wp8519 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8518, ptr %wp8519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283738 word 0x1a9f07ee
  %t8520 = add i32 0, 1
  %r8521.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8521 = load i64, ptr %r8521.p, align 8, !alias.scope !3, !noalias !4
  %fsh8523 = lshr i64 %r8521, 30
  %cond8522 = trunc i64 %fsh8523 to i1
  %sel8524 = select i1 %cond8522, i32 0, i32 %t8520
  %c8525 = zext i32 %sel8524 to i64
  %wp8526 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c8525, ptr %wp8526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028373c word 0x6b0d019f
  %r8527.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8527 = load i64, ptr %r8527.p, align 8, !alias.scope !3, !noalias !4
  %c8528 = trunc i64 %r8527 to i32
  %r8529.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8529 = load i64, ptr %r8529.p, align 8, !alias.scope !3, !noalias !4
  %c8530 = trunc i64 %r8529 to i32
  %t8531 = sub i32 %c8528, %c8530
  %fn8532 = icmp slt i32 %t8531, 0
  %fz8533 = icmp eq i32 %t8531, 0
  %fc8534 = icmp uge i32 %c8528, %c8530
  %fx18535 = xor i32 %c8528, %c8530
  %fx28536 = xor i32 %c8528, %t8531
  %fva8537 = and i32 %fx18535, %fx28536
  %fv8538 = icmp slt i32 %fva8537, 0
  %nz8539 = zext i1 %fn8532 to i64
  %zz8540 = zext i1 %fz8533 to i64
  %cz8541 = zext i1 %fc8534 to i64
  %vz8542 = zext i1 %fv8538 to i64
  %ns8543 = shl i64 %nz8539, 31
  %zs8544 = shl i64 %zz8540, 30
  %cs8545 = shl i64 %cz8541, 29
  %vs8546 = shl i64 %vz8542, 28
  %nzor8547 = or i64 %ns8543, %zs8544
  %cvor8548 = or i64 %cs8545, %vs8546
  %nzcv8549 = or i64 %nzor8547, %cvor8548
  %wp8550 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8549, ptr %wp8550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283740 word 0x5a99372c
  %r8551.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8551 = load i64, ptr %r8551.p, align 8, !alias.scope !3, !noalias !4
  %c8552 = trunc i64 %r8551 to i32
  %r8553.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8553 = load i64, ptr %r8553.p, align 8, !alias.scope !3, !noalias !4
  %c8554 = trunc i64 %r8553 to i32
  %t8555 = sub i32 0, %c8554
  %r8556.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8556 = load i64, ptr %r8556.p, align 8, !alias.scope !3, !noalias !4
  %fsh8558 = lshr i64 %r8556, 29
  %ftr8559 = trunc i64 %fsh8558 to i1
  %cond8557 = xor i1 %ftr8559, true
  %sel8560 = select i1 %cond8557, i32 %c8552, i32 %t8555
  %c8561 = zext i32 %sel8560 to i64
  %wp8562 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8561, ptr %wp8562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283744 word 0x1a8e13ed
  %r8563.p = getelementptr inbounds i8, ptr %c, i64 112
  %r8563 = load i64, ptr %r8563.p, align 8, !alias.scope !3, !noalias !4
  %c8564 = trunc i64 %r8563 to i32
  %r8565.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8565 = load i64, ptr %r8565.p, align 8, !alias.scope !3, !noalias !4
  %fsh8567 = lshr i64 %r8565, 30
  %ftr8568 = trunc i64 %fsh8567 to i1
  %cond8566 = xor i1 %ftr8568, true
  %sel8569 = select i1 %cond8566, i32 0, i32 %c8564
  %c8570 = zext i32 %sel8569 to i64
  %wp8571 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8570, ptr %wp8571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283748 word 0x1a8c0108
  %r8572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8572 = load i64, ptr %r8572.p, align 8, !alias.scope !3, !noalias !4
  %c8573 = trunc i64 %r8572 to i32
  %r8574.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8574 = load i64, ptr %r8574.p, align 8, !alias.scope !3, !noalias !4
  %c8575 = trunc i64 %r8574 to i32
  %r8576.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8576 = load i64, ptr %r8576.p, align 8, !alias.scope !3, !noalias !4
  %fsh8578 = lshr i64 %r8576, 30
  %cond8577 = trunc i64 %fsh8578 to i1
  %sel8579 = select i1 %cond8577, i32 %c8573, i32 %c8575
  %c8580 = zext i32 %sel8579 to i64
  %wp8581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8580, ptr %wp8581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028374c word 0x3600022d
  %r8582.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8582 = load i64, ptr %r8582.p, align 8, !alias.scope !3, !noalias !4
  %t8583 = and i64 %r8582, 1
  %cmp8584 = icmp eq i64 %t8583, 0
  br i1 %cmp8584, label %L_800283790, label %L_800283750_ft
L_80028375c:
  ; @pc 0x80028375c word 0x8b0b014d
  %r8598.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8598 = load i64, ptr %r8598.p, align 8, !alias.scope !3, !noalias !4
  %r8599.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8599 = load i64, ptr %r8599.p, align 8, !alias.scope !3, !noalias !4
  %t8600 = add i64 %r8598, %r8599
  %wp8601 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t8600, ptr %wp8601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283760 word 0x7100019f
  %r8602.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8602 = load i64, ptr %r8602.p, align 8, !alias.scope !3, !noalias !4
  %c8603 = trunc i64 %r8602 to i32
  %t8604 = sub i32 %c8603, 0
  %fn8605 = icmp slt i32 %t8604, 0
  %fz8606 = icmp eq i32 %t8604, 0
  %fc8607 = icmp uge i32 %c8603, 0
  %fx18608 = xor i32 %c8603, 0
  %fx28609 = xor i32 %c8603, %t8604
  %fva8610 = and i32 %fx18608, %fx28609
  %fv8611 = icmp slt i32 %fva8610, 0
  %nz8612 = zext i1 %fn8605 to i64
  %zz8613 = zext i1 %fz8606 to i64
  %cz8614 = zext i1 %fc8607 to i64
  %vz8615 = zext i1 %fv8611 to i64
  %ns8616 = shl i64 %nz8612, 31
  %zs8617 = shl i64 %zz8613, 30
  %cs8618 = shl i64 %cz8614, 29
  %vs8619 = shl i64 %vz8615, 28
  %nzor8620 = or i64 %ns8616, %zs8617
  %cvor8621 = or i64 %cs8618, %vs8619
  %nzcv8622 = or i64 %nzor8620, %cvor8621
  %wp8623 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8622, ptr %wp8623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283764 word 0x394005ad
  %r8624.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8624 = load i64, ptr %r8624.p, align 8, !alias.scope !3, !noalias !4
  %t8625 = add i64 %r8624, 1
  %gmp8626 = inttoptr i64 %t8625 to ptr
  %gml8627 = load i8, ptr %gmp8626, align 1, !alias.scope !4, !noalias !3
  %c8628 = zext i8 %gml8627 to i64
  %wp8629 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8628, ptr %wp8629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283768 word 0x1a9f07ee
  %t8630 = add i32 0, 1
  %r8631.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8631 = load i64, ptr %r8631.p, align 8, !alias.scope !3, !noalias !4
  %fsh8633 = lshr i64 %r8631, 30
  %cond8632 = trunc i64 %fsh8633 to i1
  %sel8634 = select i1 %cond8632, i32 0, i32 %t8630
  %c8635 = zext i32 %sel8634 to i64
  %wp8636 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c8635, ptr %wp8636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028376c word 0x6b0d019f
  %r8637.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8637 = load i64, ptr %r8637.p, align 8, !alias.scope !3, !noalias !4
  %c8638 = trunc i64 %r8637 to i32
  %r8639.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8639 = load i64, ptr %r8639.p, align 8, !alias.scope !3, !noalias !4
  %c8640 = trunc i64 %r8639 to i32
  %t8641 = sub i32 %c8638, %c8640
  %fn8642 = icmp slt i32 %t8641, 0
  %fz8643 = icmp eq i32 %t8641, 0
  %fc8644 = icmp uge i32 %c8638, %c8640
  %fx18645 = xor i32 %c8638, %c8640
  %fx28646 = xor i32 %c8638, %t8641
  %fva8647 = and i32 %fx18645, %fx28646
  %fv8648 = icmp slt i32 %fva8647, 0
  %nz8649 = zext i1 %fn8642 to i64
  %zz8650 = zext i1 %fz8643 to i64
  %cz8651 = zext i1 %fc8644 to i64
  %vz8652 = zext i1 %fv8648 to i64
  %ns8653 = shl i64 %nz8649, 31
  %zs8654 = shl i64 %zz8650, 30
  %cs8655 = shl i64 %cz8651, 29
  %vs8656 = shl i64 %vz8652, 28
  %nzor8657 = or i64 %ns8653, %zs8654
  %cvor8658 = or i64 %cs8655, %vs8656
  %nzcv8659 = or i64 %nzor8657, %cvor8658
  %wp8660 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8659, ptr %wp8660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283770 word 0x5a99372c
  %r8661.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8661 = load i64, ptr %r8661.p, align 8, !alias.scope !3, !noalias !4
  %c8662 = trunc i64 %r8661 to i32
  %r8663.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8663 = load i64, ptr %r8663.p, align 8, !alias.scope !3, !noalias !4
  %c8664 = trunc i64 %r8663 to i32
  %t8665 = sub i32 0, %c8664
  %r8666.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8666 = load i64, ptr %r8666.p, align 8, !alias.scope !3, !noalias !4
  %fsh8668 = lshr i64 %r8666, 29
  %ftr8669 = trunc i64 %fsh8668 to i1
  %cond8667 = xor i1 %ftr8669, true
  %sel8670 = select i1 %cond8667, i32 %c8662, i32 %t8665
  %c8671 = zext i32 %sel8670 to i64
  %wp8672 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8671, ptr %wp8672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283774 word 0x1a8e13ed
  %r8673.p = getelementptr inbounds i8, ptr %c, i64 112
  %r8673 = load i64, ptr %r8673.p, align 8, !alias.scope !3, !noalias !4
  %c8674 = trunc i64 %r8673 to i32
  %r8675.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8675 = load i64, ptr %r8675.p, align 8, !alias.scope !3, !noalias !4
  %fsh8677 = lshr i64 %r8675, 30
  %ftr8678 = trunc i64 %fsh8677 to i1
  %cond8676 = xor i1 %ftr8678, true
  %sel8679 = select i1 %cond8676, i32 0, i32 %c8674
  %c8680 = zext i32 %sel8679 to i64
  %wp8681 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8680, ptr %wp8681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283778 word 0x1a8c0108
  %r8682.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8682 = load i64, ptr %r8682.p, align 8, !alias.scope !3, !noalias !4
  %c8683 = trunc i64 %r8682 to i32
  %r8684.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8684 = load i64, ptr %r8684.p, align 8, !alias.scope !3, !noalias !4
  %c8685 = trunc i64 %r8684 to i32
  %r8686.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8686 = load i64, ptr %r8686.p, align 8, !alias.scope !3, !noalias !4
  %fsh8688 = lshr i64 %r8686, 30
  %cond8687 = trunc i64 %fsh8688 to i1
  %sel8689 = select i1 %cond8687, i32 %c8683, i32 %c8685
  %c8690 = zext i32 %sel8689 to i64
  %wp8691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8690, ptr %wp8691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028377c word 0x340000ad
  %r8692.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8692 = load i64, ptr %r8692.p, align 8, !alias.scope !3, !noalias !4
  %c8693 = trunc i64 %r8692 to i32
  %cmp8694 = icmp eq i32 %c8693, 0
  br i1 %cmp8694, label %L_800283790, label %L_800283780_ft
L_800283790:
  ; @pc 0x800283790 word 0x34fff908
  %r8723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8723 = load i64, ptr %r8723.p, align 8, !alias.scope !3, !noalias !4
  %c8724 = trunc i64 %r8723 to i32
  %cmp8725 = icmp eq i32 %c8724, 0
  br i1 %cmp8725, label %L_8002836b0, label %L_800283794_ft
L_800283798:
  ; @pc 0x800283798 word 0x2a1f03fc
  %t8729 = or i32 0, 0
  %c8730 = zext i32 %t8729 to i64
  %wp8731 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c8730, ptr %wp8731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028379c word 0x17ffffc8
  br label %L_8002836bc
L_8002837a0:
  ; @pc 0x8002837a0 word 0x51000508
  %r8732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8732 = load i64, ptr %r8732.p, align 8, !alias.scope !3, !noalias !4
  %c8733 = trunc i64 %r8732 to i32
  %t8734 = sub i32 %c8733, 1
  %c8735 = zext i32 %t8734 to i64
  %wp8736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8735, ptr %wp8736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837a4 word 0x7100191f
  %r8737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8737 = load i64, ptr %r8737.p, align 8, !alias.scope !3, !noalias !4
  %c8738 = trunc i64 %r8737 to i32
  %t8739 = sub i32 %c8738, 6
  %fn8740 = icmp slt i32 %t8739, 0
  %fz8741 = icmp eq i32 %t8739, 0
  %fc8742 = icmp uge i32 %c8738, 6
  %fx18743 = xor i32 %c8738, 6
  %fx28744 = xor i32 %c8738, %t8739
  %fva8745 = and i32 %fx18743, %fx28744
  %fv8746 = icmp slt i32 %fva8745, 0
  %nz8747 = zext i1 %fn8740 to i64
  %zz8748 = zext i1 %fz8741 to i64
  %cz8749 = zext i1 %fc8742 to i64
  %vz8750 = zext i1 %fv8746 to i64
  %ns8751 = shl i64 %nz8747, 31
  %zs8752 = shl i64 %zz8748, 30
  %cs8753 = shl i64 %cz8749, 29
  %vs8754 = shl i64 %vz8750, 28
  %nzor8755 = or i64 %ns8751, %zs8752
  %cvor8756 = or i64 %cs8753, %vs8754
  %nzcv8757 = or i64 %nzor8755, %cvor8756
  %wp8758 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8757, ptr %wp8758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837a8 word 0x54fff848
  %r8759.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8759 = load i64, ptr %r8759.p, align 8, !alias.scope !3, !noalias !4
  %fsh8761 = lshr i64 %r8759, 29
  %ftr8762 = trunc i64 %fsh8761 to i1
  %fsh8763 = lshr i64 %r8759, 30
  %ftr8764 = trunc i64 %fsh8763 to i1
  %fnz8765 = xor i1 %ftr8764, true
  %cond8760 = and i1 %ftr8762, %fnz8765
  br i1 %cond8760, label %L_8002836b0, label %L_8002837ac_ft
L_8002837c4:
  ; @pc 0x8002837c4 word 0xb9401be8
  %r8784.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8784 = load i64, ptr %r8784.p, align 8, !alias.scope !3, !noalias !4
  %t8785 = add i64 %r8784, 24
  %gmp8786 = inttoptr i64 %t8785 to ptr
  %gml8787 = load i32, ptr %gmp8786, align 1, !alias.scope !4, !noalias !3
  %c8788 = zext i32 %gml8787 to i64
  %wp8789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8788, ptr %wp8789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837c8 word 0xb940da69
  %r8790.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8790 = load i64, ptr %r8790.p, align 8, !alias.scope !3, !noalias !4
  %t8791 = add i64 %r8790, 216
  %gmp8792 = inttoptr i64 %t8791 to ptr
  %gml8793 = load i32, ptr %gmp8792, align 1, !alias.scope !4, !noalias !3
  %c8794 = zext i32 %gml8793 to i64
  %wp8795 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8794, ptr %wp8795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837cc word 0x6b09011f
  %r8796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8796 = load i64, ptr %r8796.p, align 8, !alias.scope !3, !noalias !4
  %c8797 = trunc i64 %r8796 to i32
  %r8798.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8798 = load i64, ptr %r8798.p, align 8, !alias.scope !3, !noalias !4
  %c8799 = trunc i64 %r8798 to i32
  %t8800 = sub i32 %c8797, %c8799
  %fn8801 = icmp slt i32 %t8800, 0
  %fz8802 = icmp eq i32 %t8800, 0
  %fc8803 = icmp uge i32 %c8797, %c8799
  %fx18804 = xor i32 %c8797, %c8799
  %fx28805 = xor i32 %c8797, %t8800
  %fva8806 = and i32 %fx18804, %fx28805
  %fv8807 = icmp slt i32 %fva8806, 0
  %nz8808 = zext i1 %fn8801 to i64
  %zz8809 = zext i1 %fz8802 to i64
  %cz8810 = zext i1 %fc8803 to i64
  %vz8811 = zext i1 %fv8807 to i64
  %ns8812 = shl i64 %nz8808, 31
  %zs8813 = shl i64 %zz8809, 30
  %cs8814 = shl i64 %cz8810, 29
  %vs8815 = shl i64 %vz8811, 28
  %nzor8816 = or i64 %ns8812, %zs8813
  %cvor8817 = or i64 %cs8814, %vs8815
  %nzcv8818 = or i64 %nzor8816, %cvor8817
  %wp8819 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8818, ptr %wp8819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837d0 word 0x54fffe48
  %r8820.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8820 = load i64, ptr %r8820.p, align 8, !alias.scope !3, !noalias !4
  %fsh8822 = lshr i64 %r8820, 29
  %ftr8823 = trunc i64 %fsh8822 to i1
  %fsh8824 = lshr i64 %r8820, 30
  %ftr8825 = trunc i64 %fsh8824 to i1
  %fnz8826 = xor i1 %ftr8825, true
  %cond8821 = and i1 %ftr8823, %fnz8826
  br i1 %cond8821, label %L_800283798, label %L_8002837d4
L_8002837d4:
  ; @pc 0x8002837d4 word 0x5a9f23e8
  %t8827 = xor i32 0, -1
  %r8828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8828 = load i64, ptr %r8828.p, align 8, !alias.scope !3, !noalias !4
  %fsh8830 = lshr i64 %r8828, 29
  %cond8829 = trunc i64 %fsh8830 to i1
  %sel8831 = select i1 %cond8829, i32 0, i32 %t8827
  %c8832 = zext i32 %sel8831 to i64
  %wp8833 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8832, ptr %wp8833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837d8 word 0x17ffffee
  br label %L_800283790
L_8002837dc:
  ; @pc 0x8002837dc word 0x2a1f03e8
  %t8834 = or i32 0, 0
  %c8835 = zext i32 %t8834 to i64
  %wp8836 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8835, ptr %wp8836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837e0 word 0x17ffffd4
  br label %L_800283730
L_8002837e4:
  ; @pc 0x8002837e4 word 0x2a1f03e8
  %t8837 = or i32 0, 0
  %c8838 = zext i32 %t8837 to i64
  %wp8839 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8838, ptr %wp8839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837e8 word 0x17ffffdd
  br label %L_80028375c
L_8002837ec:
  ; @pc 0x8002837ec word 0x394063e8
  %r8840.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8840 = load i64, ptr %r8840.p, align 8, !alias.scope !3, !noalias !4
  %t8841 = add i64 %r8840, 24
  %gmp8842 = inttoptr i64 %t8841 to ptr
  %gml8843 = load i8, ptr %gmp8842, align 1, !alias.scope !4, !noalias !3
  %c8844 = zext i8 %gml8843 to i64
  %wp8845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8844, ptr %wp8845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837f0 word 0x39436269
  %r8846.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8846 = load i64, ptr %r8846.p, align 8, !alias.scope !3, !noalias !4
  %t8847 = add i64 %r8846, 216
  %gmp8848 = inttoptr i64 %t8847 to ptr
  %gml8849 = load i8, ptr %gmp8848, align 1, !alias.scope !4, !noalias !3
  %c8850 = zext i8 %gml8849 to i64
  %wp8851 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8850, ptr %wp8851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837f4 word 0x4b090108
  %r8852.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8852 = load i64, ptr %r8852.p, align 8, !alias.scope !3, !noalias !4
  %c8853 = trunc i64 %r8852 to i32
  %r8854.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8854 = load i64, ptr %r8854.p, align 8, !alias.scope !3, !noalias !4
  %c8855 = trunc i64 %r8854 to i32
  %t8856 = sub i32 %c8853, %c8855
  %c8857 = zext i32 %t8856 to i64
  %wp8858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8857, ptr %wp8858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837f8 word 0x17ffffe6
  br label %L_800283790
L_8002837fc:
  ; @pc 0x8002837fc word 0xb9401be8
  %r8859.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8859 = load i64, ptr %r8859.p, align 8, !alias.scope !3, !noalias !4
  %t8860 = add i64 %r8859, 24
  %gmp8861 = inttoptr i64 %t8860 to ptr
  %gml8862 = load i32, ptr %gmp8861, align 1, !alias.scope !4, !noalias !3
  %c8863 = zext i32 %gml8862 to i64
  %wp8864 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8863, ptr %wp8864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283800 word 0xb940da69
  %r8865.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8865 = load i64, ptr %r8865.p, align 8, !alias.scope !3, !noalias !4
  %t8866 = add i64 %r8865, 216
  %gmp8867 = inttoptr i64 %t8866 to ptr
  %gml8868 = load i32, ptr %gmp8867, align 1, !alias.scope !4, !noalias !3
  %c8869 = zext i32 %gml8868 to i64
  %wp8870 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8869, ptr %wp8870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283804 word 0x6b09011f
  %r8871.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8871 = load i64, ptr %r8871.p, align 8, !alias.scope !3, !noalias !4
  %c8872 = trunc i64 %r8871 to i32
  %r8873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8873 = load i64, ptr %r8873.p, align 8, !alias.scope !3, !noalias !4
  %c8874 = trunc i64 %r8873 to i32
  %t8875 = sub i32 %c8872, %c8874
  %fn8876 = icmp slt i32 %t8875, 0
  %fz8877 = icmp eq i32 %t8875, 0
  %fc8878 = icmp uge i32 %c8872, %c8874
  %fx18879 = xor i32 %c8872, %c8874
  %fx28880 = xor i32 %c8872, %t8875
  %fva8881 = and i32 %fx18879, %fx28880
  %fv8882 = icmp slt i32 %fva8881, 0
  %nz8883 = zext i1 %fn8876 to i64
  %zz8884 = zext i1 %fz8877 to i64
  %cz8885 = zext i1 %fc8878 to i64
  %vz8886 = zext i1 %fv8882 to i64
  %ns8887 = shl i64 %nz8883, 31
  %zs8888 = shl i64 %zz8884, 30
  %cs8889 = shl i64 %cz8885, 29
  %vs8890 = shl i64 %vz8886, 28
  %nzor8891 = or i64 %ns8887, %zs8888
  %cvor8892 = or i64 %cs8889, %vs8890
  %nzcv8893 = or i64 %nzor8891, %cvor8892
  %wp8894 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8893, ptr %wp8894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283808 word 0x54fffc8c
  %r8895.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8895 = load i64, ptr %r8895.p, align 8, !alias.scope !3, !noalias !4
  %fsh8897 = lshr i64 %r8895, 30
  %ftr8898 = trunc i64 %fsh8897 to i1
  %fsh8899 = lshr i64 %r8895, 31
  %ftr8900 = trunc i64 %fsh8899 to i1
  %fsh8901 = lshr i64 %r8895, 28
  %ftr8902 = trunc i64 %fsh8901 to i1
  %fnz8903 = xor i1 %ftr8898, true
  %feq8904 = icmp eq i1 %ftr8900, %ftr8902
  %cond8896 = and i1 %fnz8903, %feq8904
  br i1 %cond8896, label %L_800283798, label %L_80028380c
L_80028380c:
  ; @pc 0x80028380c word 0x5a9fa3e8
  %t8905 = xor i32 0, -1
  %r8906.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8906 = load i64, ptr %r8906.p, align 8, !alias.scope !3, !noalias !4
  %fsh8908 = lshr i64 %r8906, 31
  %ftr8909 = trunc i64 %fsh8908 to i1
  %fsh8910 = lshr i64 %r8906, 28
  %ftr8911 = trunc i64 %fsh8910 to i1
  %cond8907 = icmp eq i1 %ftr8909, %ftr8911
  %sel8912 = select i1 %cond8907, i32 0, i32 %t8905
  %c8913 = zext i32 %sel8912 to i64
  %wp8914 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8913, ptr %wp8914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283810 word 0x17ffffe0
  br label %L_800283790
L_800283814:
  ; @pc 0x800283814 word 0xf9400fe8
  %r8915.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8915 = load i64, ptr %r8915.p, align 8, !alias.scope !3, !noalias !4
  %t8916 = add i64 %r8915, 24
  %gmp8917 = inttoptr i64 %t8916 to ptr
  %gml8918 = load i64, ptr %gmp8917, align 1, !alias.scope !4, !noalias !3
  %wp8919 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8918, ptr %wp8919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283818 word 0xf9406e69
  %r8920.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8920 = load i64, ptr %r8920.p, align 8, !alias.scope !3, !noalias !4
  %t8921 = add i64 %r8920, 216
  %gmp8922 = inttoptr i64 %t8921 to ptr
  %gml8923 = load i64, ptr %gmp8922, align 1, !alias.scope !4, !noalias !3
  %wp8924 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8923, ptr %wp8924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028381c word 0xeb09011f
  %r8925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8925 = load i64, ptr %r8925.p, align 8, !alias.scope !3, !noalias !4
  %r8926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8926 = load i64, ptr %r8926.p, align 8, !alias.scope !3, !noalias !4
  %t8927 = sub i64 %r8925, %r8926
  %fn8928 = icmp slt i64 %t8927, 0
  %fz8929 = icmp eq i64 %t8927, 0
  %fc8930 = icmp uge i64 %r8925, %r8926
  %fx18931 = xor i64 %r8925, %r8926
  %fx28932 = xor i64 %r8925, %t8927
  %fva8933 = and i64 %fx18931, %fx28932
  %fv8934 = icmp slt i64 %fva8933, 0
  %nz8935 = zext i1 %fn8928 to i64
  %zz8936 = zext i1 %fz8929 to i64
  %cz8937 = zext i1 %fc8930 to i64
  %vz8938 = zext i1 %fv8934 to i64
  %ns8939 = shl i64 %nz8935, 31
  %zs8940 = shl i64 %zz8936, 30
  %cs8941 = shl i64 %cz8937, 29
  %vs8942 = shl i64 %vz8938, 28
  %nzor8943 = or i64 %ns8939, %zs8940
  %cvor8944 = or i64 %cs8941, %vs8942
  %nzcv8945 = or i64 %nzor8943, %cvor8944
  %wp8946 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8945, ptr %wp8946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283820 word 0x54ffff6d
  %r8947.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8947 = load i64, ptr %r8947.p, align 8, !alias.scope !3, !noalias !4
  %fsh8949 = lshr i64 %r8947, 30
  %ftr8950 = trunc i64 %fsh8949 to i1
  %fsh8951 = lshr i64 %r8947, 31
  %ftr8952 = trunc i64 %fsh8951 to i1
  %fsh8953 = lshr i64 %r8947, 28
  %ftr8954 = trunc i64 %fsh8953 to i1
  %fnz8955 = xor i1 %ftr8950, true
  %feq8956 = icmp eq i1 %ftr8952, %ftr8954
  %fgt8957 = and i1 %fnz8955, %feq8956
  %cond8948 = xor i1 %fgt8957, true
  br i1 %cond8948, label %L_80028380c, label %L_800283824_ft
L_800283828:
  ; @pc 0x800283828 word 0xf9400fe8
  %r8958.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8958 = load i64, ptr %r8958.p, align 8, !alias.scope !3, !noalias !4
  %t8959 = add i64 %r8958, 24
  %gmp8960 = inttoptr i64 %t8959 to ptr
  %gml8961 = load i64, ptr %gmp8960, align 1, !alias.scope !4, !noalias !3
  %wp8962 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8961, ptr %wp8962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028382c word 0xf9406e69
  %r8963.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8963 = load i64, ptr %r8963.p, align 8, !alias.scope !3, !noalias !4
  %t8964 = add i64 %r8963, 216
  %gmp8965 = inttoptr i64 %t8964 to ptr
  %gml8966 = load i64, ptr %gmp8965, align 1, !alias.scope !4, !noalias !3
  %wp8967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8966, ptr %wp8967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283830 word 0xeb09011f
  %r8968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8968 = load i64, ptr %r8968.p, align 8, !alias.scope !3, !noalias !4
  %r8969.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8969 = load i64, ptr %r8969.p, align 8, !alias.scope !3, !noalias !4
  %t8970 = sub i64 %r8968, %r8969
  %fn8971 = icmp slt i64 %t8970, 0
  %fz8972 = icmp eq i64 %t8970, 0
  %fc8973 = icmp uge i64 %r8968, %r8969
  %fx18974 = xor i64 %r8968, %r8969
  %fx28975 = xor i64 %r8968, %t8970
  %fva8976 = and i64 %fx18974, %fx28975
  %fv8977 = icmp slt i64 %fva8976, 0
  %nz8978 = zext i1 %fn8971 to i64
  %zz8979 = zext i1 %fz8972 to i64
  %cz8980 = zext i1 %fc8973 to i64
  %vz8981 = zext i1 %fv8977 to i64
  %ns8982 = shl i64 %nz8978, 31
  %zs8983 = shl i64 %zz8979, 30
  %cs8984 = shl i64 %cz8980, 29
  %vs8985 = shl i64 %vz8981, 28
  %nzor8986 = or i64 %ns8982, %zs8983
  %cvor8987 = or i64 %cs8984, %vs8985
  %nzcv8988 = or i64 %nzor8986, %cvor8987
  %wp8989 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8988, ptr %wp8989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283834 word 0x54fffd09
  %r8990.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8990 = load i64, ptr %r8990.p, align 8, !alias.scope !3, !noalias !4
  %fsh8992 = lshr i64 %r8990, 29
  %ftr8993 = trunc i64 %fsh8992 to i1
  %fsh8994 = lshr i64 %r8990, 30
  %ftr8995 = trunc i64 %fsh8994 to i1
  %fnz8996 = xor i1 %ftr8995, true
  %fhi8997 = and i1 %ftr8993, %fnz8996
  %cond8991 = xor i1 %fhi8997, true
  br i1 %cond8991, label %L_8002837d4, label %L_800283838_ft
L_80028383c:
  ; @pc 0x80028383c word 0xbd401be0
  %r8998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8998 = load i64, ptr %r8998.p, align 8, !alias.scope !3, !noalias !4
  %t8999 = add i64 %r8998, 24
  %gmp9000 = inttoptr i64 %t8999 to ptr
  %gml9001 = load i32, ptr %gmp9000, align 1, !alias.scope !4, !noalias !3
  %c9002 = zext i32 %gml9001 to i128
  %wp9003 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9002, ptr %wp9003, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283840 word 0xbd40da61
  %r9004.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9004 = load i64, ptr %r9004.p, align 8, !alias.scope !3, !noalias !4
  %t9005 = add i64 %r9004, 216
  %gmp9006 = inttoptr i64 %t9005 to ptr
  %gml9007 = load i32, ptr %gmp9006, align 1, !alias.scope !4, !noalias !3
  %c9008 = zext i32 %gml9007 to i128
  %wp9009 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9008, ptr %wp9009, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283844 word 0x1e212000
  %fcmp9010 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp9011 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp9010, ptr %wp9011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283848 word 0x54fffa8c
  %r9012.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9012 = load i64, ptr %r9012.p, align 8, !alias.scope !3, !noalias !4
  %fsh9014 = lshr i64 %r9012, 30
  %ftr9015 = trunc i64 %fsh9014 to i1
  %fsh9016 = lshr i64 %r9012, 31
  %ftr9017 = trunc i64 %fsh9016 to i1
  %fsh9018 = lshr i64 %r9012, 28
  %ftr9019 = trunc i64 %fsh9018 to i1
  %fnz9020 = xor i1 %ftr9015, true
  %feq9021 = icmp eq i1 %ftr9017, %ftr9019
  %cond9013 = and i1 %fnz9020, %feq9021
  br i1 %cond9013, label %L_800283798, label %L_80028384c_ft
L_800283850:
  ; @pc 0x800283850 word 0xfd400fe0
  %r9022.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9022 = load i64, ptr %r9022.p, align 8, !alias.scope !3, !noalias !4
  %t9023 = add i64 %r9022, 24
  %gmp9024 = inttoptr i64 %t9023 to ptr
  %gml9025 = load i64, ptr %gmp9024, align 1, !alias.scope !4, !noalias !3
  %c9026 = zext i64 %gml9025 to i128
  %wp9027 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c9026, ptr %wp9027, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283854 word 0xfd406e61
  %r9028.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9028 = load i64, ptr %r9028.p, align 8, !alias.scope !3, !noalias !4
  %t9029 = add i64 %r9028, 216
  %gmp9030 = inttoptr i64 %t9029 to ptr
  %gml9031 = load i64, ptr %gmp9030, align 1, !alias.scope !4, !noalias !3
  %c9032 = zext i64 %gml9031 to i128
  %wp9033 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c9032, ptr %wp9033, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x800283858 word 0x1e612000
  %fcmp9034 = call i64 @rt_fp_cmp_d(ptr %c, i32 0, i32 1, i32 0)
  %wp9035 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp9034, ptr %wp9035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028385c word 0x54fff9ec
  %r9036.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9036 = load i64, ptr %r9036.p, align 8, !alias.scope !3, !noalias !4
  %fsh9038 = lshr i64 %r9036, 30
  %ftr9039 = trunc i64 %fsh9038 to i1
  %fsh9040 = lshr i64 %r9036, 31
  %ftr9041 = trunc i64 %fsh9040 to i1
  %fsh9042 = lshr i64 %r9036, 28
  %ftr9043 = trunc i64 %fsh9042 to i1
  %fnz9044 = xor i1 %ftr9039, true
  %feq9045 = icmp eq i1 %ftr9041, %ftr9043
  %cond9037 = and i1 %fnz9044, %feq9045
  br i1 %cond9037, label %L_800283798, label %L_800283860
L_800283860:
  ; @pc 0x800283860 word 0x5a9f53e8
  %t9046 = xor i32 0, -1
  %r9047.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9047 = load i64, ptr %r9047.p, align 8, !alias.scope !3, !noalias !4
  %fsh9049 = lshr i64 %r9047, 31
  %ftr9050 = trunc i64 %fsh9049 to i1
  %cond9048 = xor i1 %ftr9050, true
  %sel9051 = select i1 %cond9048, i32 0, i32 %t9046
  %c9052 = zext i32 %sel9051 to i64
  %wp9053 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9052, ptr %wp9053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283864 word 0x17ffffcb
  br label %L_800283790
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34362369184, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8002824a0
L_8002824ec_ft:
  ; @pc 0x8002824ec word 0x3100053f
  %r145.p = getelementptr inbounds i8, ptr %c, i64 72
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %c146 = trunc i64 %r145 to i32
  %t147 = add i32 %c146, 1
  %fn148 = icmp slt i32 %t147, 0
  %fz149 = icmp eq i32 %t147, 0
  %fc150 = icmp ult i32 %t147, %c146
  %fx1151 = xor i32 %c146, %t147
  %fx2152 = xor i32 1, %t147
  %fva153 = and i32 %fx1151, %fx2152
  %fv154 = icmp slt i32 %fva153, 0
  %nz155 = zext i1 %fn148 to i64
  %zz156 = zext i1 %fz149 to i64
  %cz157 = zext i1 %fc150 to i64
  %vz158 = zext i1 %fv154 to i64
  %ns159 = shl i64 %nz155, 31
  %zs160 = shl i64 %zz156, 30
  %cs161 = shl i64 %cz157, 29
  %vs162 = shl i64 %vz158, 28
  %nzor163 = or i64 %ns159, %zs160
  %cvor164 = or i64 %cs161, %vs162
  %nzcv165 = or i64 %nzor163, %cvor164
  %wp166 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv165, ptr %wp166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824f0 word 0x1a890101
  %r167.p = getelementptr inbounds i8, ptr %c, i64 64
  %r167 = load i64, ptr %r167.p, align 8, !alias.scope !3, !noalias !4
  %c168 = trunc i64 %r167 to i32
  %r169.p = getelementptr inbounds i8, ptr %c, i64 72
  %r169 = load i64, ptr %r169.p, align 8, !alias.scope !3, !noalias !4
  %c170 = trunc i64 %r169 to i32
  %r171.p = getelementptr inbounds i8, ptr %c, i64 272
  %r171 = load i64, ptr %r171.p, align 8, !alias.scope !3, !noalias !4
  %fsh173 = lshr i64 %r171, 30
  %cond172 = trunc i64 %fsh173 to i1
  %sel174 = select i1 %cond172, i32 %c168, i32 %c170
  %c175 = zext i32 %sel174 to i64
  %wp176 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c175, ptr %wp176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824f4 word 0xf9400008
  %r177.p = getelementptr inbounds i8, ptr %c, i64 0
  %r177 = load i64, ptr %r177.p, align 8, !alias.scope !3, !noalias !4
  %gmp178 = inttoptr i64 %r177 to ptr
  %gml179 = load i64, ptr %gmp178, align 1, !alias.scope !4, !noalias !3
  %wp180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml179, ptr %wp180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824f8 word 0xf9403908
  %r181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r181 = load i64, ptr %r181.p, align 8, !alias.scope !3, !noalias !4
  %t182 = add i64 %r181, 112
  %gmp183 = inttoptr i64 %t182 to ptr
  %gml184 = load i64, ptr %gmp183, align 1, !alias.scope !4, !noalias !3
  %wp185 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml184, ptr %wp185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002824fc word 0xd63f0100
  %r186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r186 = load i64, ptr %r186.p, align 8, !alias.scope !3, !noalias !4
  %fp187 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r186, ptr %fp187, align 8, !alias.scope !3, !noalias !4
  %wp188 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369280, ptr %wp188, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282500 word 0xb940e268
  %r189.p = getelementptr inbounds i8, ptr %c, i64 152
  %r189 = load i64, ptr %r189.p, align 8, !alias.scope !3, !noalias !4
  %t190 = add i64 %r189, 224
  %gmp191 = inttoptr i64 %t190 to ptr
  %gml192 = load i32, ptr %gmp191, align 1, !alias.scope !4, !noalias !3
  %c193 = zext i32 %gml192 to i64
  %wp194 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c193, ptr %wp194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282504 word 0xaa0003f4
  %r195.p = getelementptr inbounds i8, ptr %c, i64 0
  %r195 = load i64, ptr %r195.p, align 8, !alias.scope !3, !noalias !4
  %t196 = or i64 0, %r195
  %wp197 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282508 word 0x3100051f
  %r198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %c199 = trunc i64 %r198 to i32
  %t200 = add i32 %c199, 1
  %fn201 = icmp slt i32 %t200, 0
  %fz202 = icmp eq i32 %t200, 0
  %fc203 = icmp ult i32 %t200, %c199
  %fx1204 = xor i32 %c199, %t200
  %fx2205 = xor i32 1, %t200
  %fva206 = and i32 %fx1204, %fx2205
  %fv207 = icmp slt i32 %fva206, 0
  %nz208 = zext i1 %fn201 to i64
  %zz209 = zext i1 %fz202 to i64
  %cz210 = zext i1 %fc203 to i64
  %vz211 = zext i1 %fv207 to i64
  %ns212 = shl i64 %nz208, 31
  %zs213 = shl i64 %zz209, 30
  %cs214 = shl i64 %cz210, 29
  %vs215 = shl i64 %vz211, 28
  %nzor216 = or i64 %ns212, %zs213
  %cvor217 = or i64 %cs214, %vs215
  %nzcv218 = or i64 %nzor216, %cvor217
  %wp219 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv218, ptr %wp219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028250c word 0x540005c1
  %r220.p = getelementptr inbounds i8, ptr %c, i64 272
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %fsh222 = lshr i64 %r220, 30
  %ftr223 = trunc i64 %fsh222 to i1
  %cond221 = xor i1 %ftr223, true
  br i1 %cond221, label %L_8002825c4, label %L_800282510_ft
L_800282510_ft:
  ; @pc 0x800282510 word 0xb940ce68
  %r224.p = getelementptr inbounds i8, ptr %c, i64 152
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %t225 = add i64 %r224, 204
  %gmp226 = inttoptr i64 %t225 to ptr
  %gml227 = load i32, ptr %gmp226, align 1, !alias.scope !4, !noalias !3
  %c228 = zext i32 %gml227 to i64
  %wp229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c228, ptr %wp229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282514 word 0x35000c88
  %r230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r230 = load i64, ptr %r230.p, align 8, !alias.scope !3, !noalias !4
  %c231 = trunc i64 %r230 to i32
  %cmp232 = icmp ne i32 %c231, 0
  br i1 %cmp232, label %L_8002826a4, label %L_800282518
L_800282550_ft:
  ; @pc 0x800282550 word 0x5280052a
  %c311 = zext i32 41 to i64
  %wp312 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c311, ptr %wp312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282554 word 0x12800019
  %c313 = zext i32 -1 to i64
  %wp314 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c313, ptr %wp314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282558 word 0xb90003eb
  %r315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r315 = load i64, ptr %r315.p, align 8, !alias.scope !3, !noalias !4
  %r316.p = getelementptr inbounds i8, ptr %c, i64 88
  %r316 = load i64, ptr %r316.p, align 8, !alias.scope !3, !noalias !4
  %c317 = trunc i64 %r316 to i32
  %gmp318 = inttoptr i64 %r315 to ptr
  store i32 %c317, ptr %gmp318, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80028255c word 0x1ac82548
  %r319.p = getelementptr inbounds i8, ptr %c, i64 80
  %r319 = load i64, ptr %r319.p, align 8, !alias.scope !3, !noalias !4
  %c320 = trunc i64 %r319 to i32
  %r321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %c322 = trunc i64 %r321 to i32
  %t323 = and i32 %c322, 31
  %t324 = lshr i32 %c320, %t323
  %c325 = zext i32 %t324 to i64
  %wp326 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c325, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282560 word 0x91034275
  %r327.p = getelementptr inbounds i8, ptr %c, i64 152
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %t328 = add i64 %r327, 208
  %wp329 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t328, ptr %wp329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282564 word 0x2900b3e8
  %r330.p = getelementptr inbounds i8, ptr %c, i64 256
  %r330 = load i64, ptr %r330.p, align 8, !alias.scope !3, !noalias !4
  %t331 = add i64 %r330, 4
  %t332 = add i64 %t331, 4
  %r333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r333 = load i64, ptr %r333.p, align 8, !alias.scope !3, !noalias !4
  %c334 = trunc i64 %r333 to i32
  %gmp335 = inttoptr i64 %t331 to ptr
  store i32 %c334, ptr %gmp335, align 1, !alias.scope !4, !noalias !3
  %r336.p = getelementptr inbounds i8, ptr %c, i64 96
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %c337 = trunc i64 %r336 to i32
  %gmp338 = inttoptr i64 %t332 to ptr
  store i32 %c337, ptr %gmp338, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800282568 word 0x7100093f
  %r339.p = getelementptr inbounds i8, ptr %c, i64 72
  %r339 = load i64, ptr %r339.p, align 8, !alias.scope !3, !noalias !4
  %c340 = trunc i64 %r339 to i32
  %t341 = sub i32 %c340, 2
  %fn342 = icmp slt i32 %t341, 0
  %fz343 = icmp eq i32 %t341, 0
  %fc344 = icmp uge i32 %c340, 2
  %fx1345 = xor i32 %c340, 2
  %fx2346 = xor i32 %c340, %t341
  %fva347 = and i32 %fx1345, %fx2346
  %fv348 = icmp slt i32 %fva347, 0
  %nz349 = zext i1 %fn342 to i64
  %zz350 = zext i1 %fz343 to i64
  %cz351 = zext i1 %fc344 to i64
  %vz352 = zext i1 %fv348 to i64
  %ns353 = shl i64 %nz349, 31
  %zs354 = shl i64 %zz350, 30
  %cs355 = shl i64 %cz351, 29
  %vs356 = shl i64 %vz352, 28
  %nzor357 = or i64 %ns353, %zs354
  %cvor358 = or i64 %cs355, %vs356
  %nzcv359 = or i64 %nzor357, %cvor358
  %wp360 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv359, ptr %wp360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028256c word 0x540000eb
  %r361.p = getelementptr inbounds i8, ptr %c, i64 272
  %r361 = load i64, ptr %r361.p, align 8, !alias.scope !3, !noalias !4
  %fsh363 = lshr i64 %r361, 31
  %ftr364 = trunc i64 %fsh363 to i1
  %fsh365 = lshr i64 %r361, 28
  %ftr366 = trunc i64 %fsh365 to i1
  %cond362 = icmp ne i1 %ftr364, %ftr366
  br i1 %cond362, label %L_800282588, label %L_800282570_ft
L_800282570_ft:
  ; @pc 0x800282570 word 0x51000537
  %r367.p = getelementptr inbounds i8, ptr %c, i64 72
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %c368 = trunc i64 %r367 to i32
  %t369 = sub i32 %c368, 1
  %c370 = zext i32 %t369 to i64
  %wp371 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282574 word 0x2a1f03f8
  %t372 = or i32 0, 0
  %c373 = zext i32 %t372 to i64
  %wp374 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c373, ptr %wp374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282578 word 0x37007b8c
  %r375.p = getelementptr inbounds i8, ptr %c, i64 96
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %t376 = and i64 %r375, 1
  %cmp377 = icmp ne i64 %t376, 0
  br i1 %cmp377, label %L_8002834e8, label %L_80028257c_ft
L_80028257c_ft:
  ; @pc 0x80028257c word 0xb001579a
  %wp378 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 34407395328, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282580 word 0x9121b35a
  %r379.p = getelementptr inbounds i8, ptr %c, i64 208
  %r379 = load i64, ptr %r379.p, align 8, !alias.scope !3, !noalias !4
  %t380 = add i64 %r379, 2156
  %wp381 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t380, ptr %wp381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282584 word 0x14000175
  br label %L_800282b58
L_8002825b8_ft:
  ; @pc 0x8002825b8 word 0xeb16029f
  %r446.p = getelementptr inbounds i8, ptr %c, i64 160
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %r447.p = getelementptr inbounds i8, ptr %c, i64 176
  %r447 = load i64, ptr %r447.p, align 8, !alias.scope !3, !noalias !4
  %t448 = sub i64 %r446, %r447
  %fn449 = icmp slt i64 %t448, 0
  %fz450 = icmp eq i64 %t448, 0
  %fc451 = icmp uge i64 %r446, %r447
  %fx1452 = xor i64 %r446, %r447
  %fx2453 = xor i64 %r446, %t448
  %fva454 = and i64 %fx1452, %fx2453
  %fv455 = icmp slt i64 %fva454, 0
  %nz456 = zext i1 %fn449 to i64
  %zz457 = zext i1 %fz450 to i64
  %cz458 = zext i1 %fc451 to i64
  %vz459 = zext i1 %fv455 to i64
  %ns460 = shl i64 %nz456, 31
  %zs461 = shl i64 %zz457, 30
  %cs462 = shl i64 %cz458, 29
  %vs463 = shl i64 %vz459, 28
  %nzor464 = or i64 %ns460, %zs461
  %cvor465 = or i64 %cs462, %vs463
  %nzcv466 = or i64 %nzor464, %cvor465
  %wp467 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv466, ptr %wp467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002825bc word 0x5400132c
  %r468.p = getelementptr inbounds i8, ptr %c, i64 272
  %r468 = load i64, ptr %r468.p, align 8, !alias.scope !3, !noalias !4
  %fsh470 = lshr i64 %r468, 30
  %ftr471 = trunc i64 %fsh470 to i1
  %fsh472 = lshr i64 %r468, 31
  %ftr473 = trunc i64 %fsh472 to i1
  %fsh474 = lshr i64 %r468, 28
  %ftr475 = trunc i64 %fsh474 to i1
  %fnz476 = xor i1 %ftr471, true
  %feq477 = icmp eq i1 %ftr473, %ftr475
  %cond469 = and i1 %fnz476, %feq477
  br i1 %cond469, label %L_800282820, label %L_8002825c0_ft
L_8002825c0_ft:
  ; @pc 0x8002825c0 word 0x14000045
  br label %L_8002826d4
L_8002825f4_ft:
  ; @pc 0x8002825f4 word 0x93407d17
  %r546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r546 = load i64, ptr %r546.p, align 8, !alias.scope !3, !noalias !4
  %t547 = lshr i64 %r546, 31
  %t548 = and i64 %t547, 1
  %t549 = sub i64 0, %t548
  %t550 = and i64 %t549, -4294967296
  %t551 = and i64 %r546, 4294967295
  %t552 = or i64 %t550, %t551
  %wp553 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  br label %L_8002825f8
L_800282604_ft:
  ; @pc 0x800282604 word 0xf9400328
  %r585.p = getelementptr inbounds i8, ptr %c, i64 200
  %r585 = load i64, ptr %r585.p, align 8, !alias.scope !3, !noalias !4
  %gmp586 = inttoptr i64 %r585 to ptr
  %gml587 = load i64, ptr %gmp586, align 1, !alias.scope !4, !noalias !3
  %wp588 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml587, ptr %wp588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282608 word 0xf9400260
  %r589.p = getelementptr inbounds i8, ptr %c, i64 152
  %r589 = load i64, ptr %r589.p, align 8, !alias.scope !3, !noalias !4
  %gmp590 = inttoptr i64 %r589 to ptr
  %gml591 = load i64, ptr %gmp590, align 1, !alias.scope !4, !noalias !3
  %wp592 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml591, ptr %wp592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028260c word 0xf8777901
  %r593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r593 = load i64, ptr %r593.p, align 8, !alias.scope !3, !noalias !4
  %r594.p = getelementptr inbounds i8, ptr %c, i64 184
  %r594 = load i64, ptr %r594.p, align 8, !alias.scope !3, !noalias !4
  %t595 = shl i64 %r594, 3
  %t596 = add i64 %r593, %t595
  %gmp597 = inttoptr i64 %t596 to ptr
  %gml598 = load i64, ptr %gmp597, align 1, !alias.scope !4, !noalias !3
  %wp599 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml598, ptr %wp599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282610 word 0xf9400008
  %r600.p = getelementptr inbounds i8, ptr %c, i64 0
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %gmp601 = inttoptr i64 %r600 to ptr
  %gml602 = load i64, ptr %gmp601, align 1, !alias.scope !4, !noalias !3
  %wp603 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml602, ptr %wp603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282614 word 0xf9403d09
  %r604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r604 = load i64, ptr %r604.p, align 8, !alias.scope !3, !noalias !4
  %t605 = add i64 %r604, 120
  %gmp606 = inttoptr i64 %t605 to ptr
  %gml607 = load i64, ptr %gmp606, align 1, !alias.scope !4, !noalias !3
  %wp608 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282618 word 0x910043e8
  %r609.p = getelementptr inbounds i8, ptr %c, i64 256
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = add i64 %r609, 16
  %wp611 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t610, ptr %wp611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028261c word 0xd63f0120
  %r612.p = getelementptr inbounds i8, ptr %c, i64 72
  %r612 = load i64, ptr %r612.p, align 8, !alias.scope !3, !noalias !4
  %fp613 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r612, ptr %fp613, align 8, !alias.scope !3, !noalias !4
  %wp614 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369568, ptr %wp614, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282620 word 0xb940ce61
  %r615.p = getelementptr inbounds i8, ptr %c, i64 152
  %r615 = load i64, ptr %r615.p, align 8, !alias.scope !3, !noalias !4
  %t616 = add i64 %r615, 204
  %gmp617 = inttoptr i64 %t616 to ptr
  %gml618 = load i32, ptr %gmp617, align 1, !alias.scope !4, !noalias !3
  %c619 = zext i32 %gml618 to i64
  %wp620 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c619, ptr %wp620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282624 word 0x910043e0
  %r621.p = getelementptr inbounds i8, ptr %c, i64 256
  %r621 = load i64, ptr %r621.p, align 8, !alias.scope !3, !noalias !4
  %t622 = add i64 %r621, 16
  %wp623 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t622, ptr %wp623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282628 word 0xaa1503e2
  %r624.p = getelementptr inbounds i8, ptr %c, i64 168
  %r624 = load i64, ptr %r624.p, align 8, !alias.scope !3, !noalias !4
  %t625 = or i64 0, %r624
  %wp626 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t625, ptr %wp626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028262c word 0x94998d9b
  %wp627 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369584, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5c98(ptr %c)
  ; @pc 0x800282630 word 0x36000300
  %r628.p = getelementptr inbounds i8, ptr %c, i64 0
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %t629 = and i64 %r628, 1
  %cmp630 = icmp eq i64 %t629, 0
  br i1 %cmp630, label %L_800282690, label %L_800282634
L_80028263c_ft:
  ; @pc 0x80028263c word 0xf9400378
  %r639.p = getelementptr inbounds i8, ptr %c, i64 216
  %r639 = load i64, ptr %r639.p, align 8, !alias.scope !3, !noalias !4
  %gmp640 = inttoptr i64 %r639 to ptr
  %gml641 = load i64, ptr %gmp640, align 1, !alias.scope !4, !noalias !3
  %wp642 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml641, ptr %wp642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282640 word 0xf9400328
  %r643.p = getelementptr inbounds i8, ptr %c, i64 200
  %r643 = load i64, ptr %r643.p, align 8, !alias.scope !3, !noalias !4
  %gmp644 = inttoptr i64 %r643 to ptr
  %gml645 = load i64, ptr %gmp644, align 1, !alias.scope !4, !noalias !3
  %wp646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282644 word 0xf9400300
  %r647.p = getelementptr inbounds i8, ptr %c, i64 192
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %gmp648 = inttoptr i64 %r647 to ptr
  %gml649 = load i64, ptr %gmp648, align 1, !alias.scope !4, !noalias !3
  %wp650 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282648 word 0xf8777901
  %r651.p = getelementptr inbounds i8, ptr %c, i64 64
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %r652.p = getelementptr inbounds i8, ptr %c, i64 184
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %t653 = shl i64 %r652, 3
  %t654 = add i64 %r651, %t653
  %gmp655 = inttoptr i64 %t654 to ptr
  %gml656 = load i64, ptr %gmp655, align 1, !alias.scope !4, !noalias !3
  %wp657 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml656, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028264c word 0xf9400008
  %r658.p = getelementptr inbounds i8, ptr %c, i64 0
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %gmp659 = inttoptr i64 %r658 to ptr
  %gml660 = load i64, ptr %gmp659, align 1, !alias.scope !4, !noalias !3
  %wp661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml660, ptr %wp661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282650 word 0xf9400108
  %r662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %gmp663 = inttoptr i64 %r662 to ptr
  %gml664 = load i64, ptr %gmp663, align 1, !alias.scope !4, !noalias !3
  %wp665 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml664, ptr %wp665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282654 word 0xd63f0100
  %r666.p = getelementptr inbounds i8, ptr %c, i64 64
  %r666 = load i64, ptr %r666.p, align 8, !alias.scope !3, !noalias !4
  %fp667 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r666, ptr %fp667, align 8, !alias.scope !3, !noalias !4
  %wp668 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369624, ptr %wp668, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282658 word 0x360001c0
  %r669.p = getelementptr inbounds i8, ptr %c, i64 0
  %r669 = load i64, ptr %r669.p, align 8, !alias.scope !3, !noalias !4
  %t670 = and i64 %r669, 1
  %cmp671 = icmp eq i64 %t670, 0
  br i1 %cmp671, label %L_800282690, label %L_80028265c_ft
L_80028265c_ft:
  ; @pc 0x80028265c word 0x93407ec8
  %r672.p = getelementptr inbounds i8, ptr %c, i64 176
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %t673 = lshr i64 %r672, 31
  %t674 = and i64 %t673, 1
  %t675 = sub i64 0, %t674
  %t676 = and i64 %t675, -4294967296
  %t677 = and i64 %r672, 4294967295
  %t678 = or i64 %t676, %t677
  %wp679 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t678, ptr %wp679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282660 word 0x91002316
  %r680.p = getelementptr inbounds i8, ptr %c, i64 192
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %t681 = add i64 %r680, 8
  %wp682 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t681, ptr %wp682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282664 word 0xd37df108
  %r683.p = getelementptr inbounds i8, ptr %c, i64 64
  %r683 = load i64, ptr %r683.p, align 8, !alias.scope !3, !noalias !4
  %ror684 = call i64 @llvm.fshr.i64(i64 %r683, i64 %r683, i64 61)
  %t685 = and i64 %ror684, -8
  %wp686 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t685, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282668 word 0xd1002118
  %r687.p = getelementptr inbounds i8, ptr %c, i64 64
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %t688 = sub i64 %r687, 8
  %wp689 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t688, ptr %wp689, align 8, !alias.scope !3, !noalias !4
  br label %L_80028266c
L_800282670_ft:
  ; @pc 0x800282670 word 0xf84086c0
  %r692.p = getelementptr inbounds i8, ptr %c, i64 176
  %r692 = load i64, ptr %r692.p, align 8, !alias.scope !3, !noalias !4
  %t693 = add i64 %r692, 8
  %gmp694 = inttoptr i64 %r692 to ptr
  %gml695 = load i64, ptr %gmp694, align 1, !alias.scope !4, !noalias !3
  %wp696 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t693, ptr %wp696, align 8, !alias.scope !3, !noalias !4
  %wp697 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml695, ptr %wp697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282674 word 0xf9400328
  %r698.p = getelementptr inbounds i8, ptr %c, i64 200
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %gmp699 = inttoptr i64 %r698 to ptr
  %gml700 = load i64, ptr %gmp699, align 1, !alias.scope !4, !noalias !3
  %wp701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml700, ptr %wp701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282678 word 0xf8777901
  %r702.p = getelementptr inbounds i8, ptr %c, i64 64
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %r703.p = getelementptr inbounds i8, ptr %c, i64 184
  %r703 = load i64, ptr %r703.p, align 8, !alias.scope !3, !noalias !4
  %t704 = shl i64 %r703, 3
  %t705 = add i64 %r702, %t704
  %gmp706 = inttoptr i64 %t705 to ptr
  %gml707 = load i64, ptr %gmp706, align 1, !alias.scope !4, !noalias !3
  %wp708 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml707, ptr %wp708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028267c word 0xf9400008
  %r709.p = getelementptr inbounds i8, ptr %c, i64 0
  %r709 = load i64, ptr %r709.p, align 8, !alias.scope !3, !noalias !4
  %gmp710 = inttoptr i64 %r709 to ptr
  %gml711 = load i64, ptr %gmp710, align 1, !alias.scope !4, !noalias !3
  %wp712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml711, ptr %wp712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282680 word 0xf9400108
  %r713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r713 = load i64, ptr %r713.p, align 8, !alias.scope !3, !noalias !4
  %gmp714 = inttoptr i64 %r713 to ptr
  %gml715 = load i64, ptr %gmp714, align 1, !alias.scope !4, !noalias !3
  %wp716 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml715, ptr %wp716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282684 word 0xd63f0100
  %r717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r717 = load i64, ptr %r717.p, align 8, !alias.scope !3, !noalias !4
  %fp718 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r717, ptr %fp718, align 8, !alias.scope !3, !noalias !4
  %wp719 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369672, ptr %wp719, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282688 word 0xd1002318
  %r720.p = getelementptr inbounds i8, ptr %c, i64 192
  %r720 = load i64, ptr %r720.p, align 8, !alias.scope !3, !noalias !4
  %t721 = sub i64 %r720, 8
  %wp722 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t721, ptr %wp722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028268c word 0x3707ff00
  %r723.p = getelementptr inbounds i8, ptr %c, i64 0
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %t724 = and i64 %r723, 1
  %cmp725 = icmp ne i64 %t724, 0
  br i1 %cmp725, label %L_80028266c, label %L_800282690
L_8002826a0_ft:
  ; @pc 0x8002826a0 word 0x140000a6
  br label %L_800282938
L_8002826b0_ft:
  ; @pc 0x8002826b0 word 0x51000909
  %r796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r796 = load i64, ptr %r796.p, align 8, !alias.scope !3, !noalias !4
  %c797 = trunc i64 %r796 to i32
  %t798 = sub i32 %c797, 2
  %c799 = zext i32 %t798 to i64
  %wp800 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c799, ptr %wp800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826b4 word 0x7100053f
  %r801.p = getelementptr inbounds i8, ptr %c, i64 72
  %r801 = load i64, ptr %r801.p, align 8, !alias.scope !3, !noalias !4
  %c802 = trunc i64 %r801 to i32
  %t803 = sub i32 %c802, 1
  %fn804 = icmp slt i32 %t803, 0
  %fz805 = icmp eq i32 %t803, 0
  %fc806 = icmp uge i32 %c802, 1
  %fx1807 = xor i32 %c802, 1
  %fx2808 = xor i32 %c802, %t803
  %fva809 = and i32 %fx1807, %fx2808
  %fv810 = icmp slt i32 %fva809, 0
  %nz811 = zext i1 %fn804 to i64
  %zz812 = zext i1 %fz805 to i64
  %cz813 = zext i1 %fc806 to i64
  %vz814 = zext i1 %fv810 to i64
  %ns815 = shl i64 %nz811, 31
  %zs816 = shl i64 %zz812, 30
  %cs817 = shl i64 %cz813, 29
  %vs818 = shl i64 %vz814, 28
  %nzor819 = or i64 %ns815, %zs816
  %cvor820 = or i64 %cs817, %vs818
  %nzcv821 = or i64 %nzor819, %cvor820
  %wp822 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826b8 word 0x54000088
  %r823.p = getelementptr inbounds i8, ptr %c, i64 272
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %fsh825 = lshr i64 %r823, 29
  %ftr826 = trunc i64 %fsh825 to i1
  %fsh827 = lshr i64 %r823, 30
  %ftr828 = trunc i64 %fsh827 to i1
  %fnz829 = xor i1 %ftr828, true
  %cond824 = and i1 %ftr826, %fnz829
  br i1 %cond824, label %L_8002826c8, label %L_8002826bc_ft
L_8002826bc_ft:
  ; @pc 0x8002826bc word 0x340006d7
  %r830.p = getelementptr inbounds i8, ptr %c, i64 184
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %c831 = trunc i64 %r830 to i32
  %cmp832 = icmp eq i32 %c831, 0
  br i1 %cmp832, label %L_800282794, label %L_8002826c0_ft
L_8002826c0_ft:
  ; @pc 0x8002826c0 word 0x520002f6
  %r833.p = getelementptr inbounds i8, ptr %c, i64 184
  %r833 = load i64, ptr %r833.p, align 8, !alias.scope !3, !noalias !4
  %c834 = trunc i64 %r833 to i32
  %t835 = xor i32 %c834, 1
  %c836 = zext i32 %t835 to i64
  %wp837 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c836, ptr %wp837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826c4 word 0x17ffff97
  br label %L_800282520
L_8002826e0_ft:
  ; @pc 0x8002826e0 word 0xf9400308
  %r875.p = getelementptr inbounds i8, ptr %c, i64 192
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %gmp876 = inttoptr i64 %r875 to ptr
  %gml877 = load i64, ptr %gmp876, align 1, !alias.scope !4, !noalias !3
  %wp878 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml877, ptr %wp878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826e4 word 0x91034275
  %r879.p = getelementptr inbounds i8, ptr %c, i64 152
  %r879 = load i64, ptr %r879.p, align 8, !alias.scope !3, !noalias !4
  %t880 = add i64 %r879, 208
  %wp881 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t880, ptr %wp881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826e8 word 0xf9400260
  %r882.p = getelementptr inbounds i8, ptr %c, i64 152
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %gmp883 = inttoptr i64 %r882 to ptr
  %gml884 = load i64, ptr %gmp883, align 1, !alias.scope !4, !noalias !3
  %wp885 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml884, ptr %wp885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826ec word 0xf8747901
  %r886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %r887.p = getelementptr inbounds i8, ptr %c, i64 160
  %r887 = load i64, ptr %r887.p, align 8, !alias.scope !3, !noalias !4
  %t888 = shl i64 %r887, 3
  %t889 = add i64 %r886, %t888
  %gmp890 = inttoptr i64 %t889 to ptr
  %gml891 = load i64, ptr %gmp890, align 1, !alias.scope !4, !noalias !3
  %wp892 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml891, ptr %wp892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826f0 word 0xf9400008
  %r893.p = getelementptr inbounds i8, ptr %c, i64 0
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %gmp894 = inttoptr i64 %r893 to ptr
  %gml895 = load i64, ptr %gmp894, align 1, !alias.scope !4, !noalias !3
  %wp896 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml895, ptr %wp896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826f4 word 0xf9403d09
  %r897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r897 = load i64, ptr %r897.p, align 8, !alias.scope !3, !noalias !4
  %t898 = add i64 %r897, 120
  %gmp899 = inttoptr i64 %t898 to ptr
  %gml900 = load i64, ptr %gmp899, align 1, !alias.scope !4, !noalias !3
  %wp901 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml900, ptr %wp901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826f8 word 0x910043e8
  %r902.p = getelementptr inbounds i8, ptr %c, i64 256
  %r902 = load i64, ptr %r902.p, align 8, !alias.scope !3, !noalias !4
  %t903 = add i64 %r902, 16
  %wp904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t903, ptr %wp904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002826fc word 0xd63f0120
  %r905.p = getelementptr inbounds i8, ptr %c, i64 72
  %r905 = load i64, ptr %r905.p, align 8, !alias.scope !3, !noalias !4
  %fp906 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r905, ptr %fp906, align 8, !alias.scope !3, !noalias !4
  %wp907 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369792, ptr %wp907, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282700 word 0xb940ce61
  %r908.p = getelementptr inbounds i8, ptr %c, i64 152
  %r908 = load i64, ptr %r908.p, align 8, !alias.scope !3, !noalias !4
  %t909 = add i64 %r908, 204
  %gmp910 = inttoptr i64 %t909 to ptr
  %gml911 = load i32, ptr %gmp910, align 1, !alias.scope !4, !noalias !3
  %c912 = zext i32 %gml911 to i64
  %wp913 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c912, ptr %wp913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282704 word 0x910043e0
  %r914.p = getelementptr inbounds i8, ptr %c, i64 256
  %r914 = load i64, ptr %r914.p, align 8, !alias.scope !3, !noalias !4
  %t915 = add i64 %r914, 16
  %wp916 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t915, ptr %wp916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282708 word 0xaa1503e2
  %r917.p = getelementptr inbounds i8, ptr %c, i64 168
  %r917 = load i64, ptr %r917.p, align 8, !alias.scope !3, !noalias !4
  %t918 = or i64 0, %r917
  %wp919 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t918, ptr %wp919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028270c word 0x94998d63
  %wp920 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369808, ptr %wp920, align 8, !alias.scope !3, !noalias !4
  call void @f_8028e5c98(ptr %c)
  ; @pc 0x800282710 word 0x360002a0
  %r921.p = getelementptr inbounds i8, ptr %c, i64 0
  %r921 = load i64, ptr %r921.p, align 8, !alias.scope !3, !noalias !4
  %t922 = and i64 %r921, 1
  %cmp923 = icmp eq i64 %t922, 0
  br i1 %cmp923, label %L_800282764, label %L_800282714_ft
L_800282714_ft:
  ; @pc 0x800282714 word 0xf9400a75
  %r924.p = getelementptr inbounds i8, ptr %c, i64 152
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = add i64 %r924, 16
  %gmp926 = inttoptr i64 %t925 to ptr
  %gml927 = load i64, ptr %gmp926, align 1, !alias.scope !4, !noalias !3
  %wp928 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml927, ptr %wp928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282718 word 0xf9400308
  %r929.p = getelementptr inbounds i8, ptr %c, i64 192
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %gmp930 = inttoptr i64 %r929 to ptr
  %gml931 = load i64, ptr %gmp930, align 1, !alias.scope !4, !noalias !3
  %wp932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml931, ptr %wp932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028271c word 0xb9800a79
  %r933.p = getelementptr inbounds i8, ptr %c, i64 152
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %t934 = add i64 %r933, 8
  %gmp935 = inttoptr i64 %t934 to ptr
  %gml936 = load i32, ptr %gmp935, align 1, !alias.scope !4, !noalias !3
  %c937 = sext i32 %gml936 to i64
  %wp938 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c937, ptr %wp938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282720 word 0xf94002a0
  %r939.p = getelementptr inbounds i8, ptr %c, i64 168
  %r939 = load i64, ptr %r939.p, align 8, !alias.scope !3, !noalias !4
  %gmp940 = inttoptr i64 %r939 to ptr
  %gml941 = load i64, ptr %gmp940, align 1, !alias.scope !4, !noalias !3
  %wp942 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml941, ptr %wp942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282724 word 0xf8747901
  %r943.p = getelementptr inbounds i8, ptr %c, i64 64
  %r943 = load i64, ptr %r943.p, align 8, !alias.scope !3, !noalias !4
  %r944.p = getelementptr inbounds i8, ptr %c, i64 160
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %t945 = shl i64 %r944, 3
  %t946 = add i64 %r943, %t945
  %gmp947 = inttoptr i64 %t946 to ptr
  %gml948 = load i64, ptr %gmp947, align 1, !alias.scope !4, !noalias !3
  %wp949 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml948, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282728 word 0xf9400008
  %r950.p = getelementptr inbounds i8, ptr %c, i64 0
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %gmp951 = inttoptr i64 %r950 to ptr
  %gml952 = load i64, ptr %gmp951, align 1, !alias.scope !4, !noalias !3
  %wp953 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028272c word 0xf9400108
  %r954.p = getelementptr inbounds i8, ptr %c, i64 64
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %gmp955 = inttoptr i64 %r954 to ptr
  %gml956 = load i64, ptr %gmp955, align 1, !alias.scope !4, !noalias !3
  %wp957 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml956, ptr %wp957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282730 word 0xd63f0100
  %r958.p = getelementptr inbounds i8, ptr %c, i64 64
  %r958 = load i64, ptr %r958.p, align 8, !alias.scope !3, !noalias !4
  %fp959 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r958, ptr %fp959, align 8, !alias.scope !3, !noalias !4
  %wp960 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362369844, ptr %wp960, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282734 word 0x36000180
  %r961.p = getelementptr inbounds i8, ptr %c, i64 0
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %t962 = and i64 %r961, 1
  %cmp963 = icmp eq i64 %t962, 0
  br i1 %cmp963, label %L_800282764, label %L_800282738_ft
L_800282738_ft:
  ; @pc 0x800282738 word 0xd37df328
  %r964.p = getelementptr inbounds i8, ptr %c, i64 200
  %r964 = load i64, ptr %r964.p, align 8, !alias.scope !3, !noalias !4
  %ror965 = call i64 @llvm.fshr.i64(i64 %r964, i64 %r964, i64 61)
  %t966 = and i64 %ror965, -8
  %wp967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t966, ptr %wp967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028273c word 0x910022b5
  %r968.p = getelementptr inbounds i8, ptr %c, i64 168
  %r968 = load i64, ptr %r968.p, align 8, !alias.scope !3, !noalias !4
  %t969 = add i64 %r968, 8
  %wp970 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t969, ptr %wp970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282740 word 0xd1002119
  %r971.p = getelementptr inbounds i8, ptr %c, i64 64
  %r971 = load i64, ptr %r971.p, align 8, !alias.scope !3, !noalias !4
  %t972 = sub i64 %r971, 8
  %wp973 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t972, ptr %wp973, align 8, !alias.scope !3, !noalias !4
  br label %L_800282744
L_8002827d8_ft:
  ; @pc 0x8002827d8 word 0xd37df348
  %r1129.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1129 = load i64, ptr %r1129.p, align 8, !alias.scope !3, !noalias !4
  %ror1130 = call i64 @llvm.fshr.i64(i64 %r1129, i64 %r1129, i64 61)
  %t1131 = and i64 %ror1130, -8
  %wp1132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1131, ptr %wp1132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827dc word 0x91002339
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %t1134 = add i64 %r1133, 8
  %wp1135 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1134, ptr %wp1135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827e0 word 0xd100211a
  %r1136.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1136 = load i64, ptr %r1136.p, align 8, !alias.scope !3, !noalias !4
  %t1137 = sub i64 %r1136, 8
  %wp1138 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1137, ptr %wp1138, align 8, !alias.scope !3, !noalias !4
  br label %L_8002827e4
L_8002827e8_ft:
  ; @pc 0x8002827e8 word 0xf9400260
  %r1141.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1141 = load i64, ptr %r1141.p, align 8, !alias.scope !3, !noalias !4
  %gmp1142 = inttoptr i64 %r1141 to ptr
  %gml1143 = load i64, ptr %gmp1142, align 1, !alias.scope !4, !noalias !3
  %wp1144 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1143, ptr %wp1144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827ec word 0x2a1403e1
  %r1145.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1145 = load i64, ptr %r1145.p, align 8, !alias.scope !3, !noalias !4
  %c1146 = trunc i64 %r1145 to i32
  %t1147 = or i32 0, %c1146
  %c1148 = zext i32 %t1147 to i64
  %wp1149 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1148, ptr %wp1149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827f0 word 0xf9400008
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %gmp1151 = inttoptr i64 %r1150 to ptr
  %gml1152 = load i64, ptr %gmp1151, align 1, !alias.scope !4, !noalias !3
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1152, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827f4 word 0xf8408735
  %r1154.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1154 = load i64, ptr %r1154.p, align 8, !alias.scope !3, !noalias !4
  %t1155 = add i64 %r1154, 8
  %gmp1156 = inttoptr i64 %r1154 to ptr
  %gml1157 = load i64, ptr %gmp1156, align 1, !alias.scope !4, !noalias !3
  %wp1158 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1155, ptr %wp1158, align 8, !alias.scope !3, !noalias !4
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1157, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827f8 word 0xf9404108
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1160, 128
  %gmp1162 = inttoptr i64 %t1161 to ptr
  %gml1163 = load i64, ptr %gmp1162, align 1, !alias.scope !4, !noalias !3
  %wp1164 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1163, ptr %wp1164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002827fc word 0xd63f0100
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %fp1166 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1165, ptr %fp1166, align 8, !alias.scope !3, !noalias !4
  %wp1167 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370048, ptr %wp1167, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282800 word 0xf94002a8
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %gmp1169 = inttoptr i64 %r1168 to ptr
  %gml1170 = load i64, ptr %gmp1169, align 1, !alias.scope !4, !noalias !3
  %wp1171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1170, ptr %wp1171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282804 word 0xaa0003e1
  %r1172.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1172 = load i64, ptr %r1172.p, align 8, !alias.scope !3, !noalias !4
  %t1173 = or i64 0, %r1172
  %wp1174 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1173, ptr %wp1174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282808 word 0xaa1503e0
  %r1175.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1175 = load i64, ptr %r1175.p, align 8, !alias.scope !3, !noalias !4
  %t1176 = or i64 0, %r1175
  %wp1177 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1176, ptr %wp1177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028280c word 0xf9400108
  %r1178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1178 = load i64, ptr %r1178.p, align 8, !alias.scope !3, !noalias !4
  %gmp1179 = inttoptr i64 %r1178 to ptr
  %gml1180 = load i64, ptr %gmp1179, align 1, !alias.scope !4, !noalias !3
  %wp1181 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1180, ptr %wp1181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282810 word 0xd63f0100
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %fp1183 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1182, ptr %fp1183, align 8, !alias.scope !3, !noalias !4
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370068, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282814 word 0xd100235a
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = sub i64 %r1185, 8
  %wp1187 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1186, ptr %wp1187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282818 word 0x3707fe60
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %t1189 = and i64 %r1188, 1
  %cmp1190 = icmp ne i64 %t1189, 0
  br i1 %cmp1190, label %L_8002827e4, label %L_80028281c_ft
L_80028281c_ft:
  ; @pc 0x80028281c word 0x17ffffd2
  br label %L_800282764
L_800282830_ft:
  ; @pc 0x800282830 word 0x93407f17
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %t1224 = lshr i64 %r1223, 31
  %t1225 = and i64 %t1224, 1
  %t1226 = sub i64 0, %t1225
  %t1227 = and i64 %t1226, -4294967296
  %t1228 = and i64 %r1223, 4294967295
  %t1229 = or i64 %t1227, %t1228
  %wp1230 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t1229, ptr %wp1230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282834 word 0x12800018
  %c1231 = zext i32 -1 to i64
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1231, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  br label %L_800282838
L_800282844_ft:
  ; @pc 0x800282844 word 0xf9400328
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %gmp1265 = inttoptr i64 %r1264 to ptr
  %gml1266 = load i64, ptr %gmp1265, align 1, !alias.scope !4, !noalias !3
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1266, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282848 word 0xf9400260
  %r1268.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1268 = load i64, ptr %r1268.p, align 8, !alias.scope !3, !noalias !4
  %gmp1269 = inttoptr i64 %r1268 to ptr
  %gml1270 = load i64, ptr %gmp1269, align 1, !alias.scope !4, !noalias !3
  %wp1271 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1270, ptr %wp1271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028284c word 0xf8777901
  %r1272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1272 = load i64, ptr %r1272.p, align 8, !alias.scope !3, !noalias !4
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %t1274 = shl i64 %r1273, 3
  %t1275 = add i64 %r1272, %t1274
  %gmp1276 = inttoptr i64 %t1275 to ptr
  %gml1277 = load i64, ptr %gmp1276, align 1, !alias.scope !4, !noalias !3
  %wp1278 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1277, ptr %wp1278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282850 word 0xf9400008
  %r1279.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1279 = load i64, ptr %r1279.p, align 8, !alias.scope !3, !noalias !4
  %gmp1280 = inttoptr i64 %r1279 to ptr
  %gml1281 = load i64, ptr %gmp1280, align 1, !alias.scope !4, !noalias !3
  %wp1282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1281, ptr %wp1282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282854 word 0xf9403d09
  %r1283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1283 = load i64, ptr %r1283.p, align 8, !alias.scope !3, !noalias !4
  %t1284 = add i64 %r1283, 120
  %gmp1285 = inttoptr i64 %t1284 to ptr
  %gml1286 = load i64, ptr %gmp1285, align 1, !alias.scope !4, !noalias !3
  %wp1287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1286, ptr %wp1287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282858 word 0x910043e8
  %r1288.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1288 = load i64, ptr %r1288.p, align 8, !alias.scope !3, !noalias !4
  %t1289 = add i64 %r1288, 16
  %wp1290 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1289, ptr %wp1290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028285c word 0xd63f0120
  %r1291.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1291 = load i64, ptr %r1291.p, align 8, !alias.scope !3, !noalias !4
  %fp1292 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1291, ptr %fp1292, align 8, !alias.scope !3, !noalias !4
  %wp1293 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370144, ptr %wp1293, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282860 word 0xb940ce68
  %r1294.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1294 = load i64, ptr %r1294.p, align 8, !alias.scope !3, !noalias !4
  %t1295 = add i64 %r1294, 204
  %gmp1296 = inttoptr i64 %t1295 to ptr
  %gml1297 = load i32, ptr %gmp1296, align 1, !alias.scope !4, !noalias !3
  %c1298 = zext i32 %gml1297 to i64
  %wp1299 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1298, ptr %wp1299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282864 word 0x35000b88
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %c1301 = trunc i64 %r1300 to i32
  %cmp1302 = icmp ne i32 %c1301, 0
  br i1 %cmp1302, label %L_8002829d4, label %L_800282868_ft
L_800282868_ft:
  ; @pc 0x800282868 word 0xb94013e8
  %r1303.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1303 = load i64, ptr %r1303.p, align 8, !alias.scope !3, !noalias !4
  %t1304 = add i64 %r1303, 16
  %gmp1305 = inttoptr i64 %t1304 to ptr
  %gml1306 = load i32, ptr %gmp1305, align 1, !alias.scope !4, !noalias !3
  %c1307 = zext i32 %gml1306 to i64
  %wp1308 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1307, ptr %wp1308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028286c word 0xb94002a9
  %r1309.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1309 = load i64, ptr %r1309.p, align 8, !alias.scope !3, !noalias !4
  %gmp1310 = inttoptr i64 %r1309 to ptr
  %gml1311 = load i32, ptr %gmp1310, align 1, !alias.scope !4, !noalias !3
  %c1312 = zext i32 %gml1311 to i64
  %wp1313 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1312, ptr %wp1313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282870 word 0x6b09011f
  %r1314.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1314 = load i64, ptr %r1314.p, align 8, !alias.scope !3, !noalias !4
  %c1315 = trunc i64 %r1314 to i32
  %r1316.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1316 = load i64, ptr %r1316.p, align 8, !alias.scope !3, !noalias !4
  %c1317 = trunc i64 %r1316 to i32
  %t1318 = sub i32 %c1315, %c1317
  %fn1319 = icmp slt i32 %t1318, 0
  %fz1320 = icmp eq i32 %t1318, 0
  %fc1321 = icmp uge i32 %c1315, %c1317
  %fx11322 = xor i32 %c1315, %c1317
  %fx21323 = xor i32 %c1315, %t1318
  %fva1324 = and i32 %fx11322, %fx21323
  %fv1325 = icmp slt i32 %fva1324, 0
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
  ; @pc 0x800282874 word 0x54000521
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %fsh1340 = lshr i64 %r1338, 30
  %ftr1341 = trunc i64 %fsh1340 to i1
  %cond1339 = xor i1 %ftr1341, true
  br i1 %cond1339, label %L_800282918, label %L_800282878_ft
L_800282878_ft:
  ; @pc 0x800282878 word 0x7100211f
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %c1343 = trunc i64 %r1342 to i32
  %t1344 = sub i32 %c1343, 8
  %fn1345 = icmp slt i32 %t1344, 0
  %fz1346 = icmp eq i32 %t1344, 0
  %fc1347 = icmp uge i32 %c1343, 8
  %fx11348 = xor i32 %c1343, 8
  %fx21349 = xor i32 %c1343, %t1344
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
  ; @pc 0x80028287c word 0x540007e1
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %fsh1366 = lshr i64 %r1364, 30
  %ftr1367 = trunc i64 %fsh1366 to i1
  %cond1365 = xor i1 %ftr1367, true
  br i1 %cond1365, label %L_800282978, label %L_800282880_ft
L_800282880_ft:
  ; @pc 0x800282880 word 0xf9400fe9
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %t1369 = add i64 %r1368, 24
  %gmp1370 = inttoptr i64 %t1369 to ptr
  %gml1371 = load i64, ptr %gmp1370, align 1, !alias.scope !4, !noalias !3
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282884 word 0xf9406e6a
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %t1374 = add i64 %r1373, 216
  %gmp1375 = inttoptr i64 %t1374 to ptr
  %gml1376 = load i64, ptr %gmp1375, align 1, !alias.scope !4, !noalias !3
  %wp1377 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1376, ptr %wp1377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282888 word 0xeb0a013f
  %r1378.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1378 = load i64, ptr %r1378.p, align 8, !alias.scope !3, !noalias !4
  %r1379.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1379 = load i64, ptr %r1379.p, align 8, !alias.scope !3, !noalias !4
  %t1380 = sub i64 %r1378, %r1379
  %fn1381 = icmp slt i64 %t1380, 0
  %fz1382 = icmp eq i64 %t1380, 0
  %fc1383 = icmp uge i64 %r1378, %r1379
  %fx11384 = xor i64 %r1378, %r1379
  %fx21385 = xor i64 %r1378, %t1380
  %fva1386 = and i64 %fx11384, %fx21385
  %fv1387 = icmp slt i64 %fva1386, 0
  %nz1388 = zext i1 %fn1381 to i64
  %zz1389 = zext i1 %fz1382 to i64
  %cz1390 = zext i1 %fc1383 to i64
  %vz1391 = zext i1 %fv1387 to i64
  %ns1392 = shl i64 %nz1388, 31
  %zs1393 = shl i64 %zz1389, 30
  %cs1394 = shl i64 %cz1390, 29
  %vs1395 = shl i64 %vz1391, 28
  %nzor1396 = or i64 %ns1392, %zs1393
  %cvor1397 = or i64 %cs1394, %vs1395
  %nzcv1398 = or i64 %nzor1396, %cvor1397
  %wp1399 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1398, ptr %wp1399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028288c word 0x54000460
  %r1400.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1400 = load i64, ptr %r1400.p, align 8, !alias.scope !3, !noalias !4
  %fsh1402 = lshr i64 %r1400, 30
  %cond1401 = trunc i64 %fsh1402 to i1
  br i1 %cond1401, label %L_800282918, label %L_800282890_ft
L_800282890_ft:
  ; @pc 0x800282890 word 0xaa1f03eb
  %t1403 = or i64 0, 0
  %wp1404 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1403, ptr %wp1404, align 8, !alias.scope !3, !noalias !4
  br label %L_800282894
L_8002828ac_ft:
  ; @pc 0x8002828ac word 0x5280002e
  %c1478 = zext i32 1 to i64
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1478, ptr %wp1479, align 8, !alias.scope !3, !noalias !4
  br label %L_8002828b0
L_8002828c8_ft:
  ; @pc 0x8002828c8 word 0x8b0b012c
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %r1550.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1550 = load i64, ptr %r1550.p, align 8, !alias.scope !3, !noalias !4
  %t1551 = add i64 %r1549, %r1550
  %wp1552 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1551, ptr %wp1552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828cc word 0x8b0b014d
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %r1554.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1554 = load i64, ptr %r1554.p, align 8, !alias.scope !3, !noalias !4
  %t1555 = add i64 %r1553, %r1554
  %wp1556 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1555, ptr %wp1556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828d0 word 0x3940058c
  %r1557.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1557 = load i64, ptr %r1557.p, align 8, !alias.scope !3, !noalias !4
  %t1558 = add i64 %r1557, 1
  %gmp1559 = inttoptr i64 %t1558 to ptr
  %gml1560 = load i8, ptr %gmp1559, align 1, !alias.scope !4, !noalias !3
  %c1561 = zext i8 %gml1560 to i64
  %wp1562 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1561, ptr %wp1562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828d4 word 0x394005ad
  %r1563.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1563 = load i64, ptr %r1563.p, align 8, !alias.scope !3, !noalias !4
  %t1564 = add i64 %r1563, 1
  %gmp1565 = inttoptr i64 %t1564 to ptr
  %gml1566 = load i8, ptr %gmp1565, align 1, !alias.scope !4, !noalias !3
  %c1567 = zext i8 %gml1566 to i64
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1567, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828d8 word 0x7100019f
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %c1570 = trunc i64 %r1569 to i32
  %t1571 = sub i32 %c1570, 0
  %fn1572 = icmp slt i32 %t1571, 0
  %fz1573 = icmp eq i32 %t1571, 0
  %fc1574 = icmp uge i32 %c1570, 0
  %fx11575 = xor i32 %c1570, 0
  %fx21576 = xor i32 %c1570, %t1571
  %fva1577 = and i32 %fx11575, %fx21576
  %fv1578 = icmp slt i32 %fva1577, 0
  %nz1579 = zext i1 %fn1572 to i64
  %zz1580 = zext i1 %fz1573 to i64
  %cz1581 = zext i1 %fc1574 to i64
  %vz1582 = zext i1 %fv1578 to i64
  %ns1583 = shl i64 %nz1579, 31
  %zs1584 = shl i64 %zz1580, 30
  %cs1585 = shl i64 %cz1581, 29
  %vs1586 = shl i64 %vz1582, 28
  %nzor1587 = or i64 %ns1583, %zs1584
  %cvor1588 = or i64 %cs1585, %vs1586
  %nzcv1589 = or i64 %nzor1587, %cvor1588
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828dc word 0x1a9f1108
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %c1592 = trunc i64 %r1591 to i32
  %r1593.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1593 = load i64, ptr %r1593.p, align 8, !alias.scope !3, !noalias !4
  %fsh1595 = lshr i64 %r1593, 30
  %ftr1596 = trunc i64 %fsh1595 to i1
  %cond1594 = xor i1 %ftr1596, true
  %sel1597 = select i1 %cond1594, i32 %c1592, i32 0
  %c1598 = zext i32 %sel1597 to i64
  %wp1599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1598, ptr %wp1599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828e0 word 0x6b0d019f
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %c1601 = trunc i64 %r1600 to i32
  %r1602.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1602 = load i64, ptr %r1602.p, align 8, !alias.scope !3, !noalias !4
  %c1603 = trunc i64 %r1602 to i32
  %t1604 = sub i32 %c1601, %c1603
  %fn1605 = icmp slt i32 %t1604, 0
  %fz1606 = icmp eq i32 %t1604, 0
  %fc1607 = icmp uge i32 %c1601, %c1603
  %fx11608 = xor i32 %c1601, %c1603
  %fx21609 = xor i32 %c1601, %t1604
  %fva1610 = and i32 %fx11608, %fx21609
  %fv1611 = icmp slt i32 %fva1610, 0
  %nz1612 = zext i1 %fn1605 to i64
  %zz1613 = zext i1 %fz1606 to i64
  %cz1614 = zext i1 %fc1607 to i64
  %vz1615 = zext i1 %fv1611 to i64
  %ns1616 = shl i64 %nz1612, 31
  %zs1617 = shl i64 %zz1613, 30
  %cs1618 = shl i64 %cz1614, 29
  %vs1619 = shl i64 %vz1615, 28
  %nzor1620 = or i64 %ns1616, %zs1617
  %cvor1621 = or i64 %cs1618, %vs1619
  %nzcv1622 = or i64 %nzor1620, %cvor1621
  %wp1623 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1622, ptr %wp1623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002828e4 word 0x54000463
  %r1624.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1624 = load i64, ptr %r1624.p, align 8, !alias.scope !3, !noalias !4
  %fsh1626 = lshr i64 %r1624, 29
  %ftr1627 = trunc i64 %fsh1626 to i1
  %cond1625 = xor i1 %ftr1627, true
  br i1 %cond1625, label %L_800282970, label %L_8002828e8_ft
L_8002828e8_ft:
  ; @pc 0x8002828e8 word 0x5280002e
  %c1628 = zext i32 1 to i64
  %wp1629 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1628, ptr %wp1629, align 8, !alias.scope !3, !noalias !4
  br label %L_8002828ec
L_800282904_ft:
  ; @pc 0x800282904 word 0x9100096b
  %r1699.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1699 = load i64, ptr %r1699.p, align 8, !alias.scope !3, !noalias !4
  %t1700 = add i64 %r1699, 2
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1700, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282908 word 0xf150017f
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %t1703 = sub i64 %r1702, 4194304
  %fn1704 = icmp slt i64 %t1703, 0
  %fz1705 = icmp eq i64 %t1703, 0
  %fc1706 = icmp uge i64 %r1702, 4194304
  %fx11707 = xor i64 %r1702, 4194304
  %fx21708 = xor i64 %r1702, %t1703
  %fva1709 = and i64 %fx11707, %fx21708
  %fv1710 = icmp slt i64 %fva1709, 0
  %nz1711 = zext i1 %fn1704 to i64
  %zz1712 = zext i1 %fz1705 to i64
  %cz1713 = zext i1 %fc1706 to i64
  %vz1714 = zext i1 %fv1710 to i64
  %ns1715 = shl i64 %nz1711, 31
  %zs1716 = shl i64 %zz1712, 30
  %cs1717 = shl i64 %cz1713, 29
  %vs1718 = shl i64 %vz1714, 28
  %nzor1719 = or i64 %ns1715, %zs1716
  %cvor1720 = or i64 %cs1717, %vs1718
  %nzcv1721 = or i64 %nzor1719, %cvor1720
  %wp1722 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1721, ptr %wp1722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028290c word 0x54fffc41
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %fsh1725 = lshr i64 %r1723, 30
  %ftr1726 = trunc i64 %fsh1725 to i1
  %cond1724 = xor i1 %ftr1726, true
  br i1 %cond1724, label %L_800282894, label %L_800282910_ft
L_800282910_ft:
  ; @pc 0x800282910 word 0x14000002
  br label %L_800282918
L_800282984_ft:
  ; @pc 0x800282984 word 0xb0015789
  %wp1908 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp1908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282988 word 0x9122e929
  %r1909.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1909 = load i64, ptr %r1909.p, align 8, !alias.scope !3, !noalias !4
  %t1910 = add i64 %r1909, 2234
  %wp1911 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1910, ptr %wp1911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028298c word 0x1000008a
  %wp1912 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362370460, ptr %wp1912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282990 word 0x3868692b
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %r1914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1914 = load i64, ptr %r1914.p, align 8, !alias.scope !3, !noalias !4
  %t1915 = add i64 %r1913, %r1914
  %gmp1916 = inttoptr i64 %t1915 to ptr
  %gml1917 = load i8, ptr %gmp1916, align 1, !alias.scope !4, !noalias !3
  %c1918 = zext i8 %gml1917 to i64
  %wp1919 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1918, ptr %wp1919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282994 word 0x8b0b094a
  %r1920.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1920 = load i64, ptr %r1920.p, align 8, !alias.scope !3, !noalias !4
  %r1921.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1921 = load i64, ptr %r1921.p, align 8, !alias.scope !3, !noalias !4
  %t1922 = shl i64 %r1921, 2
  %t1923 = add i64 %r1920, %t1922
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1923, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282998 word 0xd61f0140
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r1925, label %L_800282998_jt_def [
    i64 34362370460, label %L_80028299c
    i64 34362370492, label %L_8002829bc
    i64 34362370768, label %L_800282ad0
    i64 34362370792, label %L_800282ae8
    i64 34362370812, label %L_800282afc
    i64 34362370832, label %L_800282b10
    i64 34362370856, label %L_800282b28
  ]
L_8002829b8_ft:
  ; @pc 0x8002829b8 word 0x17ffffa0
  br label %L_800282838
L_8002829e0_ft:
  ; @pc 0x8002829e0 word 0xb0015789
  %wp2090 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp2090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829e4 word 0x9122d529
  %r2091.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2091 = load i64, ptr %r2091.p, align 8, !alias.scope !3, !noalias !4
  %t2092 = add i64 %r2091, 2229
  %wp2093 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2092, ptr %wp2093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829e8 word 0x1000008a
  %wp2094 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362370552, ptr %wp2094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829ec word 0x3868692b
  %r2095.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2095 = load i64, ptr %r2095.p, align 8, !alias.scope !3, !noalias !4
  %r2096.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2096 = load i64, ptr %r2096.p, align 8, !alias.scope !3, !noalias !4
  %t2097 = add i64 %r2095, %r2096
  %gmp2098 = inttoptr i64 %t2097 to ptr
  %gml2099 = load i8, ptr %gmp2098, align 1, !alias.scope !4, !noalias !3
  %c2100 = zext i8 %gml2099 to i64
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829f0 word 0x8b0b094a
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %r2103.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2103 = load i64, ptr %r2103.p, align 8, !alias.scope !3, !noalias !4
  %t2104 = shl i64 %r2103, 2
  %t2105 = add i64 %r2102, %t2104
  %wp2106 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2105, ptr %wp2106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002829f4 word 0xd61f0140
  %r2107.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2107 = load i64, ptr %r2107.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r2107, label %L_8002829f4_jt_def [
    i64 34362370552, label %L_8002829f8
    i64 34362370680, label %L_800282a78
    i64 34362370700, label %L_800282a8c
    i64 34362370724, label %L_800282aa4
    i64 34362370748, label %L_800282abc
  ]
L_800282a08_ft:
  ; @pc 0x800282a08 word 0x17ffffe9
  br label %L_8002829ac
L_800282a30_ft:
  ; @pc 0x800282a30 word 0xf94007e9
  %r2155.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2155 = load i64, ptr %r2155.p, align 8, !alias.scope !3, !noalias !4
  %t2156 = add i64 %r2155, 8
  %gmp2157 = inttoptr i64 %t2156 to ptr
  %gml2158 = load i64, ptr %gmp2157, align 1, !alias.scope !4, !noalias !3
  %wp2159 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2158, ptr %wp2159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a34 word 0x93407f88
  %r2160.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2160 = load i64, ptr %r2160.p, align 8, !alias.scope !3, !noalias !4
  %t2161 = lshr i64 %r2160, 31
  %t2162 = and i64 %t2161, 1
  %t2163 = sub i64 0, %t2162
  %t2164 = and i64 %t2163, -4294967296
  %t2165 = and i64 %r2160, 4294967295
  %t2166 = or i64 %t2164, %t2165
  %wp2167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2166, ptr %wp2167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a38 word 0xd37df108
  %r2168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2168 = load i64, ptr %r2168.p, align 8, !alias.scope !3, !noalias !4
  %ror2169 = call i64 @llvm.fshr.i64(i64 %r2168, i64 %r2168, i64 61)
  %t2170 = and i64 %ror2169, -8
  %wp2171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2170, ptr %wp2171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a3c word 0xd100211c
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %t2173 = sub i64 %r2172, 8
  %wp2174 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2173, ptr %wp2174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a40 word 0x91002129
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %t2176 = add i64 %r2175, 8
  %wp2177 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2176, ptr %wp2177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a44 word 0xf90007e9
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %t2179 = add i64 %r2178, 8
  %r2180.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2180 = load i64, ptr %r2180.p, align 8, !alias.scope !3, !noalias !4
  %gmp2181 = inttoptr i64 %t2179 to ptr
  store i64 %r2180, ptr %gmp2181, align 1, !alias.scope !4, !noalias !3
  br label %L_800282a48
L_800282a4c_ft:
  ; @pc 0x800282a4c word 0xf94007e8
  %r2184.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2184 = load i64, ptr %r2184.p, align 8, !alias.scope !3, !noalias !4
  %t2185 = add i64 %r2184, 8
  %gmp2186 = inttoptr i64 %t2185 to ptr
  %gml2187 = load i64, ptr %gmp2186, align 1, !alias.scope !4, !noalias !3
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a50 word 0xf8408500
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %t2190 = add i64 %r2189, 8
  %gmp2191 = inttoptr i64 %r2189 to ptr
  %gml2192 = load i64, ptr %gmp2191, align 1, !alias.scope !4, !noalias !3
  %wp2193 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2190, ptr %wp2193, align 8, !alias.scope !3, !noalias !4
  %wp2194 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2192, ptr %wp2194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a54 word 0xf90007e8
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %t2196 = add i64 %r2195, 8
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %gmp2198 = inttoptr i64 %t2196 to ptr
  store i64 %r2197, ptr %gmp2198, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800282a58 word 0xf9400328
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %gmp2200 = inttoptr i64 %r2199 to ptr
  %gml2201 = load i64, ptr %gmp2200, align 1, !alias.scope !4, !noalias !3
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2201, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a5c word 0xf8777901
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %r2204.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2204 = load i64, ptr %r2204.p, align 8, !alias.scope !3, !noalias !4
  %t2205 = shl i64 %r2204, 3
  %t2206 = add i64 %r2203, %t2205
  %gmp2207 = inttoptr i64 %t2206 to ptr
  %gml2208 = load i64, ptr %gmp2207, align 1, !alias.scope !4, !noalias !3
  %wp2209 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2208, ptr %wp2209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a60 word 0xf9400008
  %r2210.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2210 = load i64, ptr %r2210.p, align 8, !alias.scope !3, !noalias !4
  %gmp2211 = inttoptr i64 %r2210 to ptr
  %gml2212 = load i64, ptr %gmp2211, align 1, !alias.scope !4, !noalias !3
  %wp2213 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2212, ptr %wp2213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a64 word 0xf9400108
  %r2214.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2214 = load i64, ptr %r2214.p, align 8, !alias.scope !3, !noalias !4
  %gmp2215 = inttoptr i64 %r2214 to ptr
  %gml2216 = load i64, ptr %gmp2215, align 1, !alias.scope !4, !noalias !3
  %wp2217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2216, ptr %wp2217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a68 word 0xd63f0100
  %r2218.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2218 = load i64, ptr %r2218.p, align 8, !alias.scope !3, !noalias !4
  %fp2219 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2218, ptr %fp2219, align 8, !alias.scope !3, !noalias !4
  %wp2220 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34362370668, ptr %wp2220, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800282a6c word 0xd100239c
  %r2221.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2221 = load i64, ptr %r2221.p, align 8, !alias.scope !3, !noalias !4
  %t2222 = sub i64 %r2221, 8
  %wp2223 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2222, ptr %wp2223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282a70 word 0x3707fec0
  %r2224.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2224 = load i64, ptr %r2224.p, align 8, !alias.scope !3, !noalias !4
  %t2225 = and i64 %r2224, 1
  %cmp2226 = icmp ne i64 %t2225, 0
  br i1 %cmp2226, label %L_800282a48, label %L_800282a74_ft
L_800282a74_ft:
  ; @pc 0x800282a74 word 0x17ffffce
  br label %L_8002829ac
L_800282a88_ft:
  ; @pc 0x800282a88 word 0x17ffffc9
  br label %L_8002829ac
L_800282aa0_ft:
  ; @pc 0x800282aa0 word 0x17ffffc3
  br label %L_8002829ac
L_800282ab8_ft:
  ; @pc 0x800282ab8 word 0x17ffffbd
  br label %L_8002829ac
L_800282acc_ft:
  ; @pc 0x800282acc word 0x17ffffb8
  br label %L_8002829ac
L_800282af8_ft:
  ; @pc 0x800282af8 word 0x17ffffb5
  br label %L_8002829cc
L_800282b0c_ft:
  ; @pc 0x800282b0c word 0x14000005
  br label %L_800282b20
L_800282b9c_ft:
  ; @pc 0x800282b9c word 0x7100211f
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %c2756 = trunc i64 %r2755 to i32
  %t2757 = sub i32 %c2756, 8
  %fn2758 = icmp slt i32 %t2757, 0
  %fz2759 = icmp eq i32 %t2757, 0
  %fc2760 = icmp uge i32 %c2756, 8
  %fx12761 = xor i32 %c2756, 8
  %fx22762 = xor i32 %c2756, %t2757
  %fva2763 = and i32 %fx12761, %fx22762
  %fv2764 = icmp slt i32 %fva2763, 0
  %nz2765 = zext i1 %fn2758 to i64
  %zz2766 = zext i1 %fz2759 to i64
  %cz2767 = zext i1 %fc2760 to i64
  %vz2768 = zext i1 %fv2764 to i64
  %ns2769 = shl i64 %nz2765, 31
  %zs2770 = shl i64 %zz2766, 30
  %cs2771 = shl i64 %cz2767, 29
  %vs2772 = shl i64 %vz2768, 28
  %nzor2773 = or i64 %ns2769, %zs2770
  %cvor2774 = or i64 %cs2771, %vs2772
  %nzcv2775 = or i64 %nzor2773, %cvor2774
  %wp2776 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2775, ptr %wp2776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ba0 word 0x54001681
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %fsh2779 = lshr i64 %r2777, 30
  %ftr2780 = trunc i64 %fsh2779 to i1
  %cond2778 = xor i1 %ftr2780, true
  br i1 %cond2778, label %L_800282e70, label %L_800282ba4_ft
L_800282ba4_ft:
  ; @pc 0x800282ba4 word 0xf9400fe9
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 24
  %gmp2783 = inttoptr i64 %t2782 to ptr
  %gml2784 = load i64, ptr %gmp2783, align 1, !alias.scope !4, !noalias !3
  %wp2785 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2784, ptr %wp2785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ba8 word 0xf9406e6a
  %r2786.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2786 = load i64, ptr %r2786.p, align 8, !alias.scope !3, !noalias !4
  %t2787 = add i64 %r2786, 216
  %gmp2788 = inttoptr i64 %t2787 to ptr
  %gml2789 = load i64, ptr %gmp2788, align 1, !alias.scope !4, !noalias !3
  %wp2790 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2789, ptr %wp2790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bac word 0xeb0a013f
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %t2793 = sub i64 %r2791, %r2792
  %fn2794 = icmp slt i64 %t2793, 0
  %fz2795 = icmp eq i64 %t2793, 0
  %fc2796 = icmp uge i64 %r2791, %r2792
  %fx12797 = xor i64 %r2791, %r2792
  %fx22798 = xor i64 %r2791, %t2793
  %fva2799 = and i64 %fx12797, %fx22798
  %fv2800 = icmp slt i64 %fva2799, 0
  %nz2801 = zext i1 %fn2794 to i64
  %zz2802 = zext i1 %fz2795 to i64
  %cz2803 = zext i1 %fc2796 to i64
  %vz2804 = zext i1 %fv2800 to i64
  %ns2805 = shl i64 %nz2801, 31
  %zs2806 = shl i64 %zz2802, 30
  %cs2807 = shl i64 %cz2803, 29
  %vs2808 = shl i64 %vz2804, 28
  %nzor2809 = or i64 %ns2805, %zs2806
  %cvor2810 = or i64 %cs2807, %vs2808
  %nzcv2811 = or i64 %nzor2809, %cvor2810
  %wp2812 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2811, ptr %wp2812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282bb0 word 0x54001bc0
  %r2813.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2813 = load i64, ptr %r2813.p, align 8, !alias.scope !3, !noalias !4
  %fsh2815 = lshr i64 %r2813, 30
  %cond2814 = trunc i64 %fsh2815 to i1
  br i1 %cond2814, label %L_800282f28, label %L_800282bb4_ft
L_800282bb4_ft:
  ; @pc 0x800282bb4 word 0xaa1f03eb
  %t2816 = or i64 0, 0
  %wp2817 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2816, ptr %wp2817, align 8, !alias.scope !3, !noalias !4
  br label %L_800282bb8
L_800282be0_ft:
  ; @pc 0x800282be0 word 0x8b0b012c
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %r2923.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2923 = load i64, ptr %r2923.p, align 8, !alias.scope !3, !noalias !4
  %t2924 = add i64 %r2922, %r2923
  %wp2925 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2924, ptr %wp2925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282be4 word 0x3940058c
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %t2927 = add i64 %r2926, 1
  %gmp2928 = inttoptr i64 %t2927 to ptr
  %gml2929 = load i8, ptr %gmp2928, align 1, !alias.scope !4, !noalias !3
  %c2930 = zext i8 %gml2929 to i64
  %wp2931 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2930, ptr %wp2931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282be8 word 0x34001a8c
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %c2933 = trunc i64 %r2932 to i32
  %cmp2934 = icmp eq i32 %c2933, 0
  br i1 %cmp2934, label %L_800282f38, label %L_800282bec
L_800282c10_ft:
  ; @pc 0x800282c10 word 0x9100096b
  %r3032.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3032 = load i64, ptr %r3032.p, align 8, !alias.scope !3, !noalias !4
  %t3033 = add i64 %r3032, 2
  %wp3034 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3033, ptr %wp3034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c14 word 0xf150017f
  %r3035.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3035 = load i64, ptr %r3035.p, align 8, !alias.scope !3, !noalias !4
  %t3036 = sub i64 %r3035, 4194304
  %fn3037 = icmp slt i64 %t3036, 0
  %fz3038 = icmp eq i64 %t3036, 0
  %fc3039 = icmp uge i64 %r3035, 4194304
  %fx13040 = xor i64 %r3035, 4194304
  %fx23041 = xor i64 %r3035, %t3036
  %fva3042 = and i64 %fx13040, %fx23041
  %fv3043 = icmp slt i64 %fva3042, 0
  %nz3044 = zext i1 %fn3037 to i64
  %zz3045 = zext i1 %fz3038 to i64
  %cz3046 = zext i1 %fc3039 to i64
  %vz3047 = zext i1 %fv3043 to i64
  %ns3048 = shl i64 %nz3044, 31
  %zs3049 = shl i64 %zz3045, 30
  %cs3050 = shl i64 %cz3046, 29
  %vs3051 = shl i64 %vz3047, 28
  %nzor3052 = or i64 %ns3048, %zs3049
  %cvor3053 = or i64 %cs3050, %vs3051
  %nzcv3054 = or i64 %nzor3052, %cvor3053
  %wp3055 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3054, ptr %wp3055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c18 word 0x54fffd01
  %r3056.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3056 = load i64, ptr %r3056.p, align 8, !alias.scope !3, !noalias !4
  %fsh3058 = lshr i64 %r3056, 30
  %ftr3059 = trunc i64 %fsh3058 to i1
  %cond3057 = xor i1 %ftr3059, true
  br i1 %cond3057, label %L_800282bb8, label %L_800282c1c_ft
L_800282c1c_ft:
  ; @pc 0x800282c1c word 0x140000c3
  br label %L_800282f28
L_800282c30_ft:
  ; @pc 0x800282c30 word 0x35000098
  %r3082.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3082 = load i64, ptr %r3082.p, align 8, !alias.scope !3, !noalias !4
  %c3083 = trunc i64 %r3082 to i32
  %cmp3084 = icmp ne i32 %c3083, 0
  br i1 %cmp3084, label %L_800282c40, label %L_800282c34_ft
L_800282c34_ft:
  ; @pc 0x800282c34 word 0xb9400be8
  %r3085.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3085 = load i64, ptr %r3085.p, align 8, !alias.scope !3, !noalias !4
  %t3086 = add i64 %r3085, 8
  %gmp3087 = inttoptr i64 %t3086 to ptr
  %gml3088 = load i32, ptr %gmp3087, align 1, !alias.scope !4, !noalias !3
  %c3089 = zext i32 %gml3088 to i64
  %wp3090 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3089, ptr %wp3090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c38 word 0x52000108
  %r3091.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3091 = load i64, ptr %r3091.p, align 8, !alias.scope !3, !noalias !4
  %c3092 = trunc i64 %r3091 to i32
  %t3093 = xor i32 %c3092, 1
  %c3094 = zext i32 %t3093 to i64
  %wp3095 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3094, ptr %wp3095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c3c word 0x360019e8
  %r3096.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3096 = load i64, ptr %r3096.p, align 8, !alias.scope !3, !noalias !4
  %t3097 = and i64 %r3096, 1
  %cmp3098 = icmp eq i64 %t3097, 0
  br i1 %cmp3098, label %L_800282f78, label %L_800282c40
L_800282c60_ft:
  ; @pc 0x800282c60 word 0x3100071f
  %r3163.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3163 = load i64, ptr %r3163.p, align 8, !alias.scope !3, !noalias !4
  %c3164 = trunc i64 %r3163 to i32
  %t3165 = add i32 %c3164, 1
  %fn3166 = icmp slt i32 %t3165, 0
  %fz3167 = icmp eq i32 %t3165, 0
  %fc3168 = icmp ult i32 %t3165, %c3164
  %fx13169 = xor i32 %c3164, %t3165
  %fx23170 = xor i32 1, %t3165
  %fva3171 = and i32 %fx13169, %fx23170
  %fv3172 = icmp slt i32 %fva3171, 0
  %nz3173 = zext i1 %fn3166 to i64
  %zz3174 = zext i1 %fz3167 to i64
  %cz3175 = zext i1 %fc3168 to i64
  %vz3176 = zext i1 %fv3172 to i64
  %ns3177 = shl i64 %nz3173, 31
  %zs3178 = shl i64 %zz3174, 30
  %cs3179 = shl i64 %cz3175, 29
  %vs3180 = shl i64 %vz3176, 28
  %nzor3181 = or i64 %ns3177, %zs3178
  %cvor3182 = or i64 %cs3179, %vs3180
  %nzcv3183 = or i64 %nzor3181, %cvor3182
  %wp3184 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3183, ptr %wp3184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c64 word 0x54ffdde0
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %fsh3187 = lshr i64 %r3185, 30
  %cond3186 = trunc i64 %fsh3187 to i1
  br i1 %cond3186, label %L_800282820, label %L_800282c68
L_800282c70_ft:
  ; @pc 0x800282c70 word 0xb9400288
  %r3197.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3197 = load i64, ptr %r3197.p, align 8, !alias.scope !3, !noalias !4
  %gmp3198 = inttoptr i64 %r3197 to ptr
  %gml3199 = load i32, ptr %gmp3198, align 1, !alias.scope !4, !noalias !3
  %c3200 = zext i32 %gml3199 to i64
  %wp3201 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3200, ptr %wp3201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c74 word 0x34ffdd68
  %r3202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3202 = load i64, ptr %r3202.p, align 8, !alias.scope !3, !noalias !4
  %c3203 = trunc i64 %r3202 to i32
  %cmp3204 = icmp eq i32 %c3203, 0
  br i1 %cmp3204, label %L_800282820, label %L_800282c78_ft
L_800282c78_ft:
  ; @pc 0x800282c78 word 0x7100091f
  %r3205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3205 = load i64, ptr %r3205.p, align 8, !alias.scope !3, !noalias !4
  %c3206 = trunc i64 %r3205 to i32
  %t3207 = sub i32 %c3206, 2
  %fn3208 = icmp slt i32 %t3207, 0
  %fz3209 = icmp eq i32 %t3207, 0
  %fc3210 = icmp uge i32 %c3206, 2
  %fx13211 = xor i32 %c3206, 2
  %fx23212 = xor i32 %c3206, %t3207
  %fva3213 = and i32 %fx13211, %fx23212
  %fv3214 = icmp slt i32 %fva3213, 0
  %nz3215 = zext i1 %fn3208 to i64
  %zz3216 = zext i1 %fz3209 to i64
  %cz3217 = zext i1 %fc3210 to i64
  %vz3218 = zext i1 %fv3214 to i64
  %ns3219 = shl i64 %nz3215, 31
  %zs3220 = shl i64 %zz3216, 30
  %cs3221 = shl i64 %cz3217, 29
  %vs3222 = shl i64 %vz3218, 28
  %nzor3223 = or i64 %ns3219, %zs3220
  %cvor3224 = or i64 %cs3221, %vs3222
  %nzcv3225 = or i64 %nzor3223, %cvor3224
  %wp3226 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3225, ptr %wp3226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c7c word 0x5400046b
  %r3227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3227 = load i64, ptr %r3227.p, align 8, !alias.scope !3, !noalias !4
  %fsh3229 = lshr i64 %r3227, 31
  %ftr3230 = trunc i64 %fsh3229 to i1
  %fsh3231 = lshr i64 %r3227, 28
  %ftr3232 = trunc i64 %fsh3231 to i1
  %cond3228 = icmp ne i1 %ftr3230, %ftr3232
  br i1 %cond3228, label %L_800282d08, label %L_800282c80_ft
L_800282c80_ft:
  ; @pc 0x800282c80 word 0x51000517
  %r3233.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3233 = load i64, ptr %r3233.p, align 8, !alias.scope !3, !noalias !4
  %c3234 = trunc i64 %r3233 to i32
  %t3235 = sub i32 %c3234, 1
  %c3236 = zext i32 %t3235 to i64
  %wp3237 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3236, ptr %wp3237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c84 word 0x2a1f03f6
  %t3238 = or i32 0, 0
  %c3239 = zext i32 %t3238 to i64
  %wp3240 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3239, ptr %wp3240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282c88 word 0x3600521b
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %t3242 = and i64 %r3241, 1
  %cmp3243 = icmp eq i64 %t3242, 0
  br i1 %cmp3243, label %L_8002836c8, label %L_800282c8c
L_800282cd0_ft:
  ; @pc 0x800282cd0 word 0x71000d3f
  %r3414.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3414 = load i64, ptr %r3414.p, align 8, !alias.scope !3, !noalias !4
  %c3415 = trunc i64 %r3414 to i32
  %t3416 = sub i32 %c3415, 3
  %fn3417 = icmp slt i32 %t3416, 0
  %fz3418 = icmp eq i32 %t3416, 0
  %fc3419 = icmp uge i32 %c3415, 3
  %fx13420 = xor i32 %c3415, 3
  %fx23421 = xor i32 %c3415, %t3416
  %fva3422 = and i32 %fx13420, %fx23421
  %fv3423 = icmp slt i32 %fva3422, 0
  %nz3424 = zext i1 %fn3417 to i64
  %zz3425 = zext i1 %fz3418 to i64
  %cz3426 = zext i1 %fc3419 to i64
  %vz3427 = zext i1 %fv3423 to i64
  %ns3428 = shl i64 %nz3424, 31
  %zs3429 = shl i64 %zz3425, 30
  %cs3430 = shl i64 %cz3426, 29
  %vs3431 = shl i64 %vz3427, 28
  %nzor3432 = or i64 %ns3428, %zs3429
  %cvor3433 = or i64 %cs3430, %vs3431
  %nzcv3434 = or i64 %nzor3432, %cvor3433
  %wp3435 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3434, ptr %wp3435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cd4 word 0x54001361
  %r3436.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3436 = load i64, ptr %r3436.p, align 8, !alias.scope !3, !noalias !4
  %fsh3438 = lshr i64 %r3436, 30
  %ftr3439 = trunc i64 %fsh3438 to i1
  %cond3437 = xor i1 %ftr3439, true
  br i1 %cond3437, label %L_800282f40, label %L_800282cd8_ft
L_800282cd8_ft:
  ; @pc 0x800282cd8 word 0xb9401be8
  %r3440.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3440 = load i64, ptr %r3440.p, align 8, !alias.scope !3, !noalias !4
  %t3441 = add i64 %r3440, 24
  %gmp3442 = inttoptr i64 %t3441 to ptr
  %gml3443 = load i32, ptr %gmp3442, align 1, !alias.scope !4, !noalias !3
  %c3444 = zext i32 %gml3443 to i64
  %wp3445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3444, ptr %wp3445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282cdc word 0xb940da69
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %t3447 = add i64 %r3446, 216
  %gmp3448 = inttoptr i64 %t3447 to ptr
  %gml3449 = load i32, ptr %gmp3448, align 1, !alias.scope !4, !noalias !3
  %c3450 = zext i32 %gml3449 to i64
  %wp3451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3450, ptr %wp3451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ce0 word 0x6b09011f
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %c3453 = trunc i64 %r3452 to i32
  %r3454.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3454 = load i64, ptr %r3454.p, align 8, !alias.scope !3, !noalias !4
  %c3455 = trunc i64 %r3454 to i32
  %t3456 = sub i32 %c3453, %c3455
  %fn3457 = icmp slt i32 %t3456, 0
  %fz3458 = icmp eq i32 %t3456, 0
  %fc3459 = icmp uge i32 %c3453, %c3455
  %fx13460 = xor i32 %c3453, %c3455
  %fx23461 = xor i32 %c3453, %t3456
  %fva3462 = and i32 %fx13460, %fx23461
  %fv3463 = icmp slt i32 %fva3462, 0
  %nz3464 = zext i1 %fn3457 to i64
  %zz3465 = zext i1 %fz3458 to i64
  %cz3466 = zext i1 %fc3459 to i64
  %vz3467 = zext i1 %fv3463 to i64
  %ns3468 = shl i64 %nz3464, 31
  %zs3469 = shl i64 %zz3465, 30
  %cs3470 = shl i64 %cz3466, 29
  %vs3471 = shl i64 %vz3467, 28
  %nzor3472 = or i64 %ns3468, %zs3469
  %cvor3473 = or i64 %cs3470, %vs3471
  %nzcv3474 = or i64 %nzor3472, %cvor3473
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ce4 word 0x54001a89
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %fsh3478 = lshr i64 %r3476, 29
  %ftr3479 = trunc i64 %fsh3478 to i1
  %fsh3480 = lshr i64 %r3476, 30
  %ftr3481 = trunc i64 %fsh3480 to i1
  %fnz3482 = xor i1 %ftr3481, true
  %fhi3483 = and i1 %ftr3479, %fnz3482
  %cond3477 = xor i1 %fhi3483, true
  br i1 %cond3477, label %L_800283034, label %L_800282ce8
L_800282d04_ft:
  ; @pc 0x800282d04 word 0x17ffffe2
  br label %L_800282c8c
L_800282d20_ft:
  ; @pc 0x800282d20 word 0x36000688
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %t3602 = and i64 %r3601, 1
  %cmp3603 = icmp eq i64 %t3602, 0
  br i1 %cmp3603, label %L_800282df0, label %L_800282d24
L_800282d3c_ft:
  ; @pc 0x800282d3c word 0x310006df
  %r3657.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3657 = load i64, ptr %r3657.p, align 8, !alias.scope !3, !noalias !4
  %c3658 = trunc i64 %r3657 to i32
  %t3659 = add i32 %c3658, 1
  %fn3660 = icmp slt i32 %t3659, 0
  %fz3661 = icmp eq i32 %t3659, 0
  %fc3662 = icmp ult i32 %t3659, %c3658
  %fx13663 = xor i32 %c3658, %t3659
  %fx23664 = xor i32 1, %t3659
  %fva3665 = and i32 %fx13663, %fx23664
  %fv3666 = icmp slt i32 %fva3665, 0
  %nz3667 = zext i1 %fn3660 to i64
  %zz3668 = zext i1 %fz3661 to i64
  %cz3669 = zext i1 %fc3662 to i64
  %vz3670 = zext i1 %fv3666 to i64
  %ns3671 = shl i64 %nz3667, 31
  %zs3672 = shl i64 %zz3668, 30
  %cs3673 = shl i64 %cz3669, 29
  %vs3674 = shl i64 %vz3670, 28
  %nzor3675 = or i64 %ns3671, %zs3672
  %cvor3676 = or i64 %cs3673, %vs3674
  %nzcv3677 = or i64 %nzor3675, %cvor3676
  %wp3678 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3677, ptr %wp3678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d40 word 0x54ffd700
  %r3679.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3679 = load i64, ptr %r3679.p, align 8, !alias.scope !3, !noalias !4
  %fsh3681 = lshr i64 %r3679, 30
  %cond3680 = trunc i64 %fsh3681 to i1
  br i1 %cond3680, label %L_800282820, label %L_800282d44
L_800282d60_ft:
  ; @pc 0x800282d60 word 0x17fffe23
  br label %L_8002825ec
L_800282d98_ft:
  ; @pc 0x800282d98 word 0x7100211f
  %r3823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3823 = load i64, ptr %r3823.p, align 8, !alias.scope !3, !noalias !4
  %c3824 = trunc i64 %r3823 to i32
  %t3825 = sub i32 %c3824, 8
  %fn3826 = icmp slt i32 %t3825, 0
  %fz3827 = icmp eq i32 %t3825, 0
  %fc3828 = icmp uge i32 %c3824, 8
  %fx13829 = xor i32 %c3824, 8
  %fx23830 = xor i32 %c3824, %t3825
  %fva3831 = and i32 %fx13829, %fx23830
  %fv3832 = icmp slt i32 %fva3831, 0
  %nz3833 = zext i1 %fn3826 to i64
  %zz3834 = zext i1 %fz3827 to i64
  %cz3835 = zext i1 %fc3828 to i64
  %vz3836 = zext i1 %fv3832 to i64
  %ns3837 = shl i64 %nz3833, 31
  %zs3838 = shl i64 %zz3834, 30
  %cs3839 = shl i64 %cz3835, 29
  %vs3840 = shl i64 %vz3836, 28
  %nzor3841 = or i64 %ns3837, %zs3838
  %cvor3842 = or i64 %cs3839, %vs3840
  %nzcv3843 = or i64 %nzor3841, %cvor3842
  %wp3844 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3843, ptr %wp3844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282d9c word 0x54000901
  %r3845.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3845 = load i64, ptr %r3845.p, align 8, !alias.scope !3, !noalias !4
  %fsh3847 = lshr i64 %r3845, 30
  %ftr3848 = trunc i64 %fsh3847 to i1
  %cond3846 = xor i1 %ftr3848, true
  br i1 %cond3846, label %L_800282ebc, label %L_800282da0_ft
L_800282da0_ft:
  ; @pc 0x800282da0 word 0xf9400fe9
  %r3849.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3849 = load i64, ptr %r3849.p, align 8, !alias.scope !3, !noalias !4
  %t3850 = add i64 %r3849, 24
  %gmp3851 = inttoptr i64 %t3850 to ptr
  %gml3852 = load i64, ptr %gmp3851, align 1, !alias.scope !4, !noalias !3
  %wp3853 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3852, ptr %wp3853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282da4 word 0xf9406e6a
  %r3854.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3854 = load i64, ptr %r3854.p, align 8, !alias.scope !3, !noalias !4
  %t3855 = add i64 %r3854, 216
  %gmp3856 = inttoptr i64 %t3855 to ptr
  %gml3857 = load i64, ptr %gmp3856, align 1, !alias.scope !4, !noalias !3
  %wp3858 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3857, ptr %wp3858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282da8 word 0xeb0a013f
  %r3859.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3859 = load i64, ptr %r3859.p, align 8, !alias.scope !3, !noalias !4
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %t3861 = sub i64 %r3859, %r3860
  %fn3862 = icmp slt i64 %t3861, 0
  %fz3863 = icmp eq i64 %t3861, 0
  %fc3864 = icmp uge i64 %r3859, %r3860
  %fx13865 = xor i64 %r3859, %r3860
  %fx23866 = xor i64 %r3859, %t3861
  %fva3867 = and i64 %fx13865, %fx23866
  %fv3868 = icmp slt i64 %fva3867, 0
  %nz3869 = zext i1 %fn3862 to i64
  %zz3870 = zext i1 %fz3863 to i64
  %cz3871 = zext i1 %fc3864 to i64
  %vz3872 = zext i1 %fv3868 to i64
  %ns3873 = shl i64 %nz3869, 31
  %zs3874 = shl i64 %zz3870, 30
  %cs3875 = shl i64 %cz3871, 29
  %vs3876 = shl i64 %vz3872, 28
  %nzor3877 = or i64 %ns3873, %zs3874
  %cvor3878 = or i64 %cs3875, %vs3876
  %nzcv3879 = or i64 %nzor3877, %cvor3878
  %wp3880 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3879, ptr %wp3880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dac word 0x540001e0
  %r3881.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3881 = load i64, ptr %r3881.p, align 8, !alias.scope !3, !noalias !4
  %fsh3883 = lshr i64 %r3881, 30
  %cond3882 = trunc i64 %fsh3883 to i1
  br i1 %cond3882, label %L_800282de8, label %L_800282db0_ft
L_800282db0_ft:
  ; @pc 0x800282db0 word 0xaa1f03eb
  %t3884 = or i64 0, 0
  %wp3885 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3884, ptr %wp3885, align 8, !alias.scope !3, !noalias !4
  br label %L_800282db4
L_800282dd4_ft:
  ; @pc 0x800282dd4 word 0x6b0d019f
  %r3980.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3980 = load i64, ptr %r3980.p, align 8, !alias.scope !3, !noalias !4
  %c3981 = trunc i64 %r3980 to i32
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %c3983 = trunc i64 %r3982 to i32
  %t3984 = sub i32 %c3981, %c3983
  %fn3985 = icmp slt i32 %t3984, 0
  %fz3986 = icmp eq i32 %t3984, 0
  %fc3987 = icmp uge i32 %c3981, %c3983
  %fx13988 = xor i32 %c3981, %c3983
  %fx23989 = xor i32 %c3981, %t3984
  %fva3990 = and i32 %fx13988, %fx23989
  %fv3991 = icmp slt i32 %fva3990, 0
  %nz3992 = zext i1 %fn3985 to i64
  %zz3993 = zext i1 %fz3986 to i64
  %cz3994 = zext i1 %fc3987 to i64
  %vz3995 = zext i1 %fv3991 to i64
  %ns3996 = shl i64 %nz3992, 31
  %zs3997 = shl i64 %zz3993, 30
  %cs3998 = shl i64 %cz3994, 29
  %vs3999 = shl i64 %vz3995, 28
  %nzor4000 = or i64 %ns3996, %zs3997
  %cvor4001 = or i64 %cs3998, %vs3999
  %nzcv4002 = or i64 %nzor4000, %cvor4001
  %wp4003 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4002, ptr %wp4003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282dd8 word 0x54000901
  %r4004.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4004 = load i64, ptr %r4004.p, align 8, !alias.scope !3, !noalias !4
  %fsh4006 = lshr i64 %r4004, 30
  %ftr4007 = trunc i64 %fsh4006 to i1
  %cond4005 = xor i1 %ftr4007, true
  br i1 %cond4005, label %L_800282ef8, label %L_800282ddc_ft
L_800282ddc_ft:
  ; @pc 0x800282ddc word 0x9100056b
  %r4008.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4008 = load i64, ptr %r4008.p, align 8, !alias.scope !3, !noalias !4
  %t4009 = add i64 %r4008, 1
  %wp4010 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4009, ptr %wp4010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282de0 word 0xf150017f
  %r4011.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4011 = load i64, ptr %r4011.p, align 8, !alias.scope !3, !noalias !4
  %t4012 = sub i64 %r4011, 4194304
  %fn4013 = icmp slt i64 %t4012, 0
  %fz4014 = icmp eq i64 %t4012, 0
  %fc4015 = icmp uge i64 %r4011, 4194304
  %fx14016 = xor i64 %r4011, 4194304
  %fx24017 = xor i64 %r4011, %t4012
  %fva4018 = and i64 %fx14016, %fx24017
  %fv4019 = icmp slt i64 %fva4018, 0
  %nz4020 = zext i1 %fn4013 to i64
  %zz4021 = zext i1 %fz4014 to i64
  %cz4022 = zext i1 %fc4015 to i64
  %vz4023 = zext i1 %fv4019 to i64
  %ns4024 = shl i64 %nz4020, 31
  %zs4025 = shl i64 %zz4021, 30
  %cs4026 = shl i64 %cz4022, 29
  %vs4027 = shl i64 %vz4023, 28
  %nzor4028 = or i64 %ns4024, %zs4025
  %cvor4029 = or i64 %cs4026, %vs4027
  %nzcv4030 = or i64 %nzor4028, %cvor4029
  %wp4031 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4030, ptr %wp4031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282de4 word 0x54fffe81
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %fsh4034 = lshr i64 %r4032, 30
  %ftr4035 = trunc i64 %fsh4034 to i1
  %cond4033 = xor i1 %ftr4035, true
  br i1 %cond4033, label %L_800282db4, label %L_800282de8
L_800282e1c_ft:
  ; @pc 0x800282e1c word 0x7100211f
  %r4112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4112 = load i64, ptr %r4112.p, align 8, !alias.scope !3, !noalias !4
  %c4113 = trunc i64 %r4112 to i32
  %t4114 = sub i32 %c4113, 8
  %fn4115 = icmp slt i32 %t4114, 0
  %fz4116 = icmp eq i32 %t4114, 0
  %fc4117 = icmp uge i32 %c4113, 8
  %fx14118 = xor i32 %c4113, 8
  %fx24119 = xor i32 %c4113, %t4114
  %fva4120 = and i32 %fx14118, %fx24119
  %fv4121 = icmp slt i32 %fva4120, 0
  %nz4122 = zext i1 %fn4115 to i64
  %zz4123 = zext i1 %fz4116 to i64
  %cz4124 = zext i1 %fc4117 to i64
  %vz4125 = zext i1 %fv4121 to i64
  %ns4126 = shl i64 %nz4122, 31
  %zs4127 = shl i64 %zz4123, 30
  %cs4128 = shl i64 %cz4124, 29
  %vs4129 = shl i64 %vz4125, 28
  %nzor4130 = or i64 %ns4126, %zs4127
  %cvor4131 = or i64 %cs4128, %vs4129
  %nzcv4132 = or i64 %nzor4130, %cvor4131
  %wp4133 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4132, ptr %wp4133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e20 word 0x540015c1
  %r4134.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4134 = load i64, ptr %r4134.p, align 8, !alias.scope !3, !noalias !4
  %fsh4136 = lshr i64 %r4134, 30
  %ftr4137 = trunc i64 %fsh4136 to i1
  %cond4135 = xor i1 %ftr4137, true
  br i1 %cond4135, label %L_8002830d8, label %L_800282e24_ft
L_800282e24_ft:
  ; @pc 0x800282e24 word 0xf9400fe9
  %r4138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4138 = load i64, ptr %r4138.p, align 8, !alias.scope !3, !noalias !4
  %t4139 = add i64 %r4138, 24
  %gmp4140 = inttoptr i64 %t4139 to ptr
  %gml4141 = load i64, ptr %gmp4140, align 1, !alias.scope !4, !noalias !3
  %wp4142 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4141, ptr %wp4142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e28 word 0xf9406e6a
  %r4143.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4143 = load i64, ptr %r4143.p, align 8, !alias.scope !3, !noalias !4
  %t4144 = add i64 %r4143, 216
  %gmp4145 = inttoptr i64 %t4144 to ptr
  %gml4146 = load i64, ptr %gmp4145, align 1, !alias.scope !4, !noalias !3
  %wp4147 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4146, ptr %wp4147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e2c word 0xeb0a013f
  %r4148.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4148 = load i64, ptr %r4148.p, align 8, !alias.scope !3, !noalias !4
  %r4149.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4149 = load i64, ptr %r4149.p, align 8, !alias.scope !3, !noalias !4
  %t4150 = sub i64 %r4148, %r4149
  %fn4151 = icmp slt i64 %t4150, 0
  %fz4152 = icmp eq i64 %t4150, 0
  %fc4153 = icmp uge i64 %r4148, %r4149
  %fx14154 = xor i64 %r4148, %r4149
  %fx24155 = xor i64 %r4148, %t4150
  %fva4156 = and i64 %fx14154, %fx24155
  %fv4157 = icmp slt i64 %fva4156, 0
  %nz4158 = zext i1 %fn4151 to i64
  %zz4159 = zext i1 %fz4152 to i64
  %cz4160 = zext i1 %fc4153 to i64
  %vz4161 = zext i1 %fv4157 to i64
  %ns4162 = shl i64 %nz4158, 31
  %zs4163 = shl i64 %zz4159, 30
  %cs4164 = shl i64 %cz4160, 29
  %vs4165 = shl i64 %vz4161, 28
  %nzor4166 = or i64 %ns4162, %zs4163
  %cvor4167 = or i64 %cs4164, %vs4165
  %nzcv4168 = or i64 %nzor4166, %cvor4167
  %wp4169 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4168, ptr %wp4169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e30 word 0x540015c0
  %r4170.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4170 = load i64, ptr %r4170.p, align 8, !alias.scope !3, !noalias !4
  %fsh4172 = lshr i64 %r4170, 30
  %cond4171 = trunc i64 %fsh4172 to i1
  br i1 %cond4171, label %L_8002830e8, label %L_800282e34_ft
L_800282e34_ft:
  ; @pc 0x800282e34 word 0xaa1f03eb
  %t4173 = or i64 0, 0
  %wp4174 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4173, ptr %wp4174, align 8, !alias.scope !3, !noalias !4
  br label %L_800282e38
L_800282e58_ft:
  ; @pc 0x800282e58 word 0x6b0d019f
  %r4269.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4269 = load i64, ptr %r4269.p, align 8, !alias.scope !3, !noalias !4
  %c4270 = trunc i64 %r4269 to i32
  %r4271.p = getelementptr inbounds i8, ptr %c, i64 104
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
  ; @pc 0x800282e5c word 0x54001481
  %r4293.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4293 = load i64, ptr %r4293.p, align 8, !alias.scope !3, !noalias !4
  %fsh4295 = lshr i64 %r4293, 30
  %ftr4296 = trunc i64 %fsh4295 to i1
  %cond4294 = xor i1 %ftr4296, true
  br i1 %cond4294, label %L_8002830ec, label %L_800282e60_ft
L_800282e60_ft:
  ; @pc 0x800282e60 word 0x9100056b
  %r4297.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4297 = load i64, ptr %r4297.p, align 8, !alias.scope !3, !noalias !4
  %t4298 = add i64 %r4297, 1
  %wp4299 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4298, ptr %wp4299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e64 word 0xf150017f
  %r4300.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4300 = load i64, ptr %r4300.p, align 8, !alias.scope !3, !noalias !4
  %t4301 = sub i64 %r4300, 4194304
  %fn4302 = icmp slt i64 %t4301, 0
  %fz4303 = icmp eq i64 %t4301, 0
  %fc4304 = icmp uge i64 %r4300, 4194304
  %fx14305 = xor i64 %r4300, 4194304
  %fx24306 = xor i64 %r4300, %t4301
  %fva4307 = and i64 %fx14305, %fx24306
  %fv4308 = icmp slt i64 %fva4307, 0
  %nz4309 = zext i1 %fn4302 to i64
  %zz4310 = zext i1 %fz4303 to i64
  %cz4311 = zext i1 %fc4304 to i64
  %vz4312 = zext i1 %fv4308 to i64
  %ns4313 = shl i64 %nz4309, 31
  %zs4314 = shl i64 %zz4310, 30
  %cs4315 = shl i64 %cz4311, 29
  %vs4316 = shl i64 %vz4312, 28
  %nzor4317 = or i64 %ns4313, %zs4314
  %cvor4318 = or i64 %cs4315, %vs4316
  %nzcv4319 = or i64 %nzor4317, %cvor4318
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e68 word 0x54fffe81
  %r4321.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4321 = load i64, ptr %r4321.p, align 8, !alias.scope !3, !noalias !4
  %fsh4323 = lshr i64 %r4321, 30
  %ftr4324 = trunc i64 %fsh4323 to i1
  %cond4322 = xor i1 %ftr4324, true
  br i1 %cond4322, label %L_800282e38, label %L_800282e6c_ft
L_800282e6c_ft:
  ; @pc 0x800282e6c word 0x1400009f
  br label %L_8002830e8
L_800282e7c_ft:
  ; @pc 0x800282e7c word 0x10ffe5e9
  %wp4359 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34362370872, ptr %wp4359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e80 word 0x78687b4a
  %r4360.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4360 = load i64, ptr %r4360.p, align 8, !alias.scope !3, !noalias !4
  %r4361.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4361 = load i64, ptr %r4361.p, align 8, !alias.scope !3, !noalias !4
  %t4362 = shl i64 %r4361, 1
  %t4363 = add i64 %r4360, %t4362
  %gmp4364 = inttoptr i64 %t4363 to ptr
  %gml4365 = load i16, ptr %gmp4364, align 1, !alias.scope !4, !noalias !3
  %c4366 = zext i16 %gml4365 to i64
  %wp4367 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4366, ptr %wp4367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e84 word 0x8b0a0929
  %r4368.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4368 = load i64, ptr %r4368.p, align 8, !alias.scope !3, !noalias !4
  %r4369.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4369 = load i64, ptr %r4369.p, align 8, !alias.scope !3, !noalias !4
  %t4370 = shl i64 %r4369, 2
  %t4371 = add i64 %r4368, %t4370
  %wp4372 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4371, ptr %wp4372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282e88 word 0xd61f0120
  %r4373.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4373 = load i64, ptr %r4373.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r4373, label %L_800282e88_jt_def [
    i64 34362370872, label %L_800282b38
    i64 34362371724, label %L_800282e8c
    i64 34362371748, label %L_800282ea4
    i64 34362372348, label %L_8002830fc
    i64 34362372372, label %L_800283114
    i64 34362372392, label %L_800283128
    i64 34362372412, label %L_80028313c
  ]
L_800282ec8_ft:
  ; @pc 0x800282ec8 word 0xb0015789
  %wp4507 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp4507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ecc word 0x91222929
  %r4508.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4508 = load i64, ptr %r4508.p, align 8, !alias.scope !3, !noalias !4
  %t4509 = add i64 %r4508, 2186
  %wp4510 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4509, ptr %wp4510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ed0 word 0x1000008a
  %wp4511 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362371808, ptr %wp4511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ed4 word 0x7868792b
  %r4512.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4512 = load i64, ptr %r4512.p, align 8, !alias.scope !3, !noalias !4
  %r4513.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4513 = load i64, ptr %r4513.p, align 8, !alias.scope !3, !noalias !4
  %t4514 = shl i64 %r4513, 1
  %t4515 = add i64 %r4512, %t4514
  %gmp4516 = inttoptr i64 %t4515 to ptr
  %gml4517 = load i16, ptr %gmp4516, align 1, !alias.scope !4, !noalias !3
  %c4518 = zext i16 %gml4517 to i64
  %wp4519 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4518, ptr %wp4519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ed8 word 0x8b0b094a
  %r4520.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4520 = load i64, ptr %r4520.p, align 8, !alias.scope !3, !noalias !4
  %r4521.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4521 = load i64, ptr %r4521.p, align 8, !alias.scope !3, !noalias !4
  %t4522 = shl i64 %r4521, 2
  %t4523 = add i64 %r4520, %t4522
  %wp4524 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4523, ptr %wp4524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282edc word 0xd61f0140
  %r4525.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4525 = load i64, ptr %r4525.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r4525, label %L_800282edc_jt_def [
    i64 34362371808, label %L_800282ee0
    i64 34362371856, label %L_800282f10
    i64 34362372996, label %L_800283384
    i64 34362373016, label %L_800283398
    i64 34362373036, label %L_8002833ac
    i64 34362373056, label %L_8002833c0
    i64 34362373080, label %L_8002833d8
  ]
L_800282f04_ft:
  ; @pc 0x800282f04 word 0x6b1a011f
  %r4615.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4615 = load i64, ptr %r4615.p, align 8, !alias.scope !3, !noalias !4
  %c4616 = trunc i64 %r4615 to i32
  %r4617.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4617 = load i64, ptr %r4617.p, align 8, !alias.scope !3, !noalias !4
  %c4618 = trunc i64 %r4617 to i32
  %t4619 = sub i32 %c4616, %c4618
  %fn4620 = icmp slt i32 %t4619, 0
  %fz4621 = icmp eq i32 %t4619, 0
  %fc4622 = icmp uge i32 %c4616, %c4618
  %fx14623 = xor i32 %c4616, %c4618
  %fx24624 = xor i32 %c4616, %t4619
  %fva4625 = and i32 %fx14623, %fx24624
  %fv4626 = icmp slt i32 %fva4625, 0
  %nz4627 = zext i1 %fn4620 to i64
  %zz4628 = zext i1 %fz4621 to i64
  %cz4629 = zext i1 %fc4622 to i64
  %vz4630 = zext i1 %fv4626 to i64
  %ns4631 = shl i64 %nz4627, 31
  %zs4632 = shl i64 %zz4628, 30
  %cs4633 = shl i64 %cz4629, 29
  %vs4634 = shl i64 %vz4630, 28
  %nzor4635 = or i64 %ns4631, %zs4632
  %cvor4636 = or i64 %cs4633, %vs4634
  %nzcv4637 = or i64 %nzor4635, %cvor4636
  %wp4638 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4637, ptr %wp4638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f08 word 0x54ffeb0b
  %r4639.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4639 = load i64, ptr %r4639.p, align 8, !alias.scope !3, !noalias !4
  %fsh4641 = lshr i64 %r4639, 31
  %ftr4642 = trunc i64 %fsh4641 to i1
  %fsh4643 = lshr i64 %r4639, 28
  %ftr4644 = trunc i64 %fsh4643 to i1
  %cond4640 = icmp ne i1 %ftr4642, %ftr4644
  br i1 %cond4640, label %L_800282c68, label %L_800282f0c_ft
L_800282f0c_ft:
  ; @pc 0x800282f0c word 0x17fffe8b
  br label %L_800282938
L_800282f50_ft:
  ; @pc 0x800282f50 word 0xb001578a
  %wp4741 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34407395328, ptr %wp4741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f54 word 0x91227d4a
  %r4742.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4742 = load i64, ptr %r4742.p, align 8, !alias.scope !3, !noalias !4
  %t4743 = add i64 %r4742, 2207
  %wp4744 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4743, ptr %wp4744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f58 word 0x10ffecab
  %wp4745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34362371308, ptr %wp4745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f5c word 0x3869694c
  %r4746.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4746 = load i64, ptr %r4746.p, align 8, !alias.scope !3, !noalias !4
  %r4747.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4747 = load i64, ptr %r4747.p, align 8, !alias.scope !3, !noalias !4
  %t4748 = add i64 %r4746, %r4747
  %gmp4749 = inttoptr i64 %t4748 to ptr
  %gml4750 = load i8, ptr %gmp4749, align 1, !alias.scope !4, !noalias !3
  %c4751 = zext i8 %gml4750 to i64
  %wp4752 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4751, ptr %wp4752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f60 word 0x8b0c096b
  %r4753.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4753 = load i64, ptr %r4753.p, align 8, !alias.scope !3, !noalias !4
  %r4754.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4754 = load i64, ptr %r4754.p, align 8, !alias.scope !3, !noalias !4
  %t4755 = shl i64 %r4754, 2
  %t4756 = add i64 %r4753, %t4755
  %wp4757 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4756, ptr %wp4757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282f64 word 0xd61f0160
  %r4758.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4758 = load i64, ptr %r4758.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r4758, label %L_800282f64_jt_def [
    i64 34362371308, label %L_800282cec
    i64 34362371944, label %L_800282f68
    i64 34362372088, label %L_800282ff8
    i64 34362372112, label %L_800283010
    i64 34362372132, label %L_800283024
    i64 34362372156, label %L_80028303c
    i64 34362372176, label %L_800283050
    i64 34362372200, label %L_800283068
  ]
L_800282fa4_ft:
  ; @pc 0x800282fa4 word 0x7100211f
  %r4851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4851 = load i64, ptr %r4851.p, align 8, !alias.scope !3, !noalias !4
  %c4852 = trunc i64 %r4851 to i32
  %t4853 = sub i32 %c4852, 8
  %fn4854 = icmp slt i32 %t4853, 0
  %fz4855 = icmp eq i32 %t4853, 0
  %fc4856 = icmp uge i32 %c4852, 8
  %fx14857 = xor i32 %c4852, 8
  %fx24858 = xor i32 %c4852, %t4853
  %fva4859 = and i32 %fx14857, %fx24858
  %fv4860 = icmp slt i32 %fva4859, 0
  %nz4861 = zext i1 %fn4854 to i64
  %zz4862 = zext i1 %fz4855 to i64
  %cz4863 = zext i1 %fc4856 to i64
  %vz4864 = zext i1 %fv4860 to i64
  %ns4865 = shl i64 %nz4861, 31
  %zs4866 = shl i64 %zz4862, 30
  %cs4867 = shl i64 %cz4863, 29
  %vs4868 = shl i64 %vz4864, 28
  %nzor4869 = or i64 %ns4865, %zs4866
  %cvor4870 = or i64 %cs4867, %vs4868
  %nzcv4871 = or i64 %nzor4869, %cvor4870
  %wp4872 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4871, ptr %wp4872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fa8 word 0x54001b61
  %r4873.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4873 = load i64, ptr %r4873.p, align 8, !alias.scope !3, !noalias !4
  %fsh4875 = lshr i64 %r4873, 30
  %ftr4876 = trunc i64 %fsh4875 to i1
  %cond4874 = xor i1 %ftr4876, true
  br i1 %cond4874, label %L_800283314, label %L_800282fac_ft
L_800282fac_ft:
  ; @pc 0x800282fac word 0xf9400fe9
  %r4877.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4877 = load i64, ptr %r4877.p, align 8, !alias.scope !3, !noalias !4
  %t4878 = add i64 %r4877, 24
  %gmp4879 = inttoptr i64 %t4878 to ptr
  %gml4880 = load i64, ptr %gmp4879, align 1, !alias.scope !4, !noalias !3
  %wp4881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4880, ptr %wp4881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fb0 word 0xf9406e6a
  %r4882.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4882 = load i64, ptr %r4882.p, align 8, !alias.scope !3, !noalias !4
  %t4883 = add i64 %r4882, 216
  %gmp4884 = inttoptr i64 %t4883 to ptr
  %gml4885 = load i64, ptr %gmp4884, align 1, !alias.scope !4, !noalias !3
  %wp4886 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4885, ptr %wp4886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fb4 word 0xeb0a013f
  %r4887.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4887 = load i64, ptr %r4887.p, align 8, !alias.scope !3, !noalias !4
  %r4888.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4888 = load i64, ptr %r4888.p, align 8, !alias.scope !3, !noalias !4
  %t4889 = sub i64 %r4887, %r4888
  %fn4890 = icmp slt i64 %t4889, 0
  %fz4891 = icmp eq i64 %t4889, 0
  %fc4892 = icmp uge i64 %r4887, %r4888
  %fx14893 = xor i64 %r4887, %r4888
  %fx24894 = xor i64 %r4887, %t4889
  %fva4895 = and i64 %fx14893, %fx24894
  %fv4896 = icmp slt i64 %fva4895, 0
  %nz4897 = zext i1 %fn4890 to i64
  %zz4898 = zext i1 %fz4891 to i64
  %cz4899 = zext i1 %fc4892 to i64
  %vz4900 = zext i1 %fv4896 to i64
  %ns4901 = shl i64 %nz4897, 31
  %zs4902 = shl i64 %zz4898, 30
  %cs4903 = shl i64 %cz4899, 29
  %vs4904 = shl i64 %vz4900, 28
  %nzor4905 = or i64 %ns4901, %zs4902
  %cvor4906 = or i64 %cs4903, %vs4904
  %nzcv4907 = or i64 %nzor4905, %cvor4906
  %wp4908 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4907, ptr %wp4908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fb8 word 0x54002180
  %r4909.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4909 = load i64, ptr %r4909.p, align 8, !alias.scope !3, !noalias !4
  %fsh4911 = lshr i64 %r4909, 30
  %cond4910 = trunc i64 %fsh4911 to i1
  br i1 %cond4910, label %L_8002833e8, label %L_800282fbc_ft
L_800282fbc_ft:
  ; @pc 0x800282fbc word 0xaa1f03eb
  %t4912 = or i64 0, 0
  %wp4913 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4912, ptr %wp4913, align 8, !alias.scope !3, !noalias !4
  br label %L_800282fc0
L_800282fe0_ft:
  ; @pc 0x800282fe0 word 0x6b0d019f
  %r5008.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5008 = load i64, ptr %r5008.p, align 8, !alias.scope !3, !noalias !4
  %c5009 = trunc i64 %r5008 to i32
  %r5010.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5010 = load i64, ptr %r5010.p, align 8, !alias.scope !3, !noalias !4
  %c5011 = trunc i64 %r5010 to i32
  %t5012 = sub i32 %c5009, %c5011
  %fn5013 = icmp slt i32 %t5012, 0
  %fz5014 = icmp eq i32 %t5012, 0
  %fc5015 = icmp uge i32 %c5009, %c5011
  %fx15016 = xor i32 %c5009, %c5011
  %fx25017 = xor i32 %c5009, %t5012
  %fva5018 = and i32 %fx15016, %fx25017
  %fv5019 = icmp slt i32 %fva5018, 0
  %nz5020 = zext i1 %fn5013 to i64
  %zz5021 = zext i1 %fz5014 to i64
  %cz5022 = zext i1 %fc5015 to i64
  %vz5023 = zext i1 %fv5019 to i64
  %ns5024 = shl i64 %nz5020, 31
  %zs5025 = shl i64 %zz5021, 30
  %cs5026 = shl i64 %cz5022, 29
  %vs5027 = shl i64 %vz5023, 28
  %nzor5028 = or i64 %ns5024, %zs5025
  %cvor5029 = or i64 %cs5026, %vs5027
  %nzcv5030 = or i64 %nzor5028, %cvor5029
  %wp5031 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5030, ptr %wp5031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fe4 word 0x54001b41
  %r5032.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5032 = load i64, ptr %r5032.p, align 8, !alias.scope !3, !noalias !4
  %fsh5034 = lshr i64 %r5032, 30
  %ftr5035 = trunc i64 %fsh5034 to i1
  %cond5033 = xor i1 %ftr5035, true
  br i1 %cond5033, label %L_80028334c, label %L_800282fe8_ft
L_800282fe8_ft:
  ; @pc 0x800282fe8 word 0x9100056b
  %r5036.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5036 = load i64, ptr %r5036.p, align 8, !alias.scope !3, !noalias !4
  %t5037 = add i64 %r5036, 1
  %wp5038 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t5037, ptr %wp5038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282fec word 0xf150017f
  %r5039.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5039 = load i64, ptr %r5039.p, align 8, !alias.scope !3, !noalias !4
  %t5040 = sub i64 %r5039, 4194304
  %fn5041 = icmp slt i64 %t5040, 0
  %fz5042 = icmp eq i64 %t5040, 0
  %fc5043 = icmp uge i64 %r5039, 4194304
  %fx15044 = xor i64 %r5039, 4194304
  %fx25045 = xor i64 %r5039, %t5040
  %fva5046 = and i64 %fx15044, %fx25045
  %fv5047 = icmp slt i64 %fva5046, 0
  %nz5048 = zext i1 %fn5041 to i64
  %zz5049 = zext i1 %fz5042 to i64
  %cz5050 = zext i1 %fc5043 to i64
  %vz5051 = zext i1 %fv5047 to i64
  %ns5052 = shl i64 %nz5048, 31
  %zs5053 = shl i64 %zz5049, 30
  %cs5054 = shl i64 %cz5050, 29
  %vs5055 = shl i64 %vz5051, 28
  %nzor5056 = or i64 %ns5052, %zs5053
  %cvor5057 = or i64 %cs5054, %vs5055
  %nzcv5058 = or i64 %nzor5056, %cvor5057
  %wp5059 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5058, ptr %wp5059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800282ff0 word 0x54fffe81
  %r5060.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5060 = load i64, ptr %r5060.p, align 8, !alias.scope !3, !noalias !4
  %fsh5062 = lshr i64 %r5060, 30
  %ftr5063 = trunc i64 %fsh5062 to i1
  %cond5061 = xor i1 %ftr5063, true
  br i1 %cond5061, label %L_800282fc0, label %L_800282ff4_ft
L_800282ff4_ft:
  ; @pc 0x800282ff4 word 0x140000fd
  br label %L_8002833e8
L_800283020_ft:
  ; @pc 0x800283020 word 0x17fffffa
  br label %L_800283008
L_80028304c_ft:
  ; @pc 0x80028304c word 0x14000005
  br label %L_800283060
L_800283078_ft:
  ; @pc 0x800283078 word 0xaa1f03eb
  %t5299 = or i64 0, 0
  %wp5300 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t5299, ptr %wp5300, align 8, !alias.scope !3, !noalias !4
  br label %L_80028307c
L_800283084_ft:
  ; @pc 0x800283084 word 0x2a1f03e0
  %t5311 = or i32 0, 0
  %c5312 = zext i32 %t5311 to i64
  %wp5313 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5312, ptr %wp5313, align 8, !alias.scope !3, !noalias !4
  br label %L_800283088
L_800283094_ft:
  ; @pc 0x800283094 word 0x5280002d
  %c5349 = zext i32 1 to i64
  %wp5350 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5349, ptr %wp5350, align 8, !alias.scope !3, !noalias !4
  br label %L_800283098
L_8002830ac_ft:
  ; @pc 0x8002830ac word 0x2a0d03e0
  %r5416.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5416 = load i64, ptr %r5416.p, align 8, !alias.scope !3, !noalias !4
  %c5417 = trunc i64 %r5416 to i32
  %t5418 = or i32 0, %c5417
  %c5419 = zext i32 %t5418 to i64
  %wp5420 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c5419, ptr %wp5420, align 8, !alias.scope !3, !noalias !4
  br label %L_8002830b0
L_8002830b4_ft:
  ; @pc 0x8002830b4 word 0x9100056b
  %r5424.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5424 = load i64, ptr %r5424.p, align 8, !alias.scope !3, !noalias !4
  %t5425 = add i64 %r5424, 1
  %wp5426 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t5425, ptr %wp5426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830b8 word 0x2a1f03e8
  %t5427 = or i32 0, 0
  %c5428 = zext i32 %t5427 to i64
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5428, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830bc word 0xf150017f
  %r5430.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5430 = load i64, ptr %r5430.p, align 8, !alias.scope !3, !noalias !4
  %t5431 = sub i64 %r5430, 4194304
  %fn5432 = icmp slt i64 %t5431, 0
  %fz5433 = icmp eq i64 %t5431, 0
  %fc5434 = icmp uge i64 %r5430, 4194304
  %fx15435 = xor i64 %r5430, 4194304
  %fx25436 = xor i64 %r5430, %t5431
  %fva5437 = and i64 %fx15435, %fx25436
  %fv5438 = icmp slt i64 %fva5437, 0
  %nz5439 = zext i1 %fn5432 to i64
  %zz5440 = zext i1 %fz5433 to i64
  %cz5441 = zext i1 %fc5434 to i64
  %vz5442 = zext i1 %fv5438 to i64
  %ns5443 = shl i64 %nz5439, 31
  %zs5444 = shl i64 %zz5440, 30
  %cs5445 = shl i64 %cz5441, 29
  %vs5446 = shl i64 %vz5442, 28
  %nzor5447 = or i64 %ns5443, %zs5444
  %cvor5448 = or i64 %cs5445, %vs5446
  %nzcv5449 = or i64 %nzor5447, %cvor5448
  %wp5450 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5449, ptr %wp5450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002830c0 word 0x54fffde1
  %r5451.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5451 = load i64, ptr %r5451.p, align 8, !alias.scope !3, !noalias !4
  %fsh5453 = lshr i64 %r5451, 30
  %ftr5454 = trunc i64 %fsh5453 to i1
  %cond5452 = xor i1 %ftr5454, true
  br i1 %cond5452, label %L_80028307c, label %L_8002830c4_ft
L_8002830c4_ft:
  ; @pc 0x8002830c4 word 0x17ffff0a
  br label %L_800282cec
L_8002830e4_ft:
  ; @pc 0x8002830e4 word 0xb9400bf7
  %r5495.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5495 = load i64, ptr %r5495.p, align 8, !alias.scope !3, !noalias !4
  %t5496 = add i64 %r5495, 8
  %gmp5497 = inttoptr i64 %t5496 to ptr
  %gml5498 = load i32, ptr %gmp5497, align 1, !alias.scope !4, !noalias !3
  %c5499 = zext i32 %gml5498 to i64
  %wp5500 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5499, ptr %wp5500, align 8, !alias.scope !3, !noalias !4
  br label %L_8002830e8
L_8002830f8_ft:
  ; @pc 0x8002830f8 word 0x17fffdca
  br label %L_800282820
L_800283124_ft:
  ; @pc 0x800283124 word 0x17ffff64
  br label %L_800282eb4
L_800283138_ft:
  ; @pc 0x800283138 word 0x14000005
  br label %L_80028314c
L_8002831d0_ft:
  ; @pc 0x8002831d0 word 0x14000011
  br label %L_800283214
L_8002831e4_ft:
  ; @pc 0x8002831e4 word 0x1400000c
  br label %L_800283214
L_800283234_ft:
  ; @pc 0x800283234 word 0x2a1f03f6
  %t6088 = or i32 0, 0
  %c6089 = zext i32 %t6088 to i64
  %wp6090 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c6089, ptr %wp6090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283238 word 0x17fffec3
  br label %L_800282d44
L_800283270_ft:
  ; @pc 0x800283270 word 0x7100211f
  %r6205.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6205 = load i64, ptr %r6205.p, align 8, !alias.scope !3, !noalias !4
  %c6206 = trunc i64 %r6205 to i32
  %t6207 = sub i32 %c6206, 8
  %fn6208 = icmp slt i32 %t6207, 0
  %fz6209 = icmp eq i32 %t6207, 0
  %fc6210 = icmp uge i32 %c6206, 8
  %fx16211 = xor i32 %c6206, 8
  %fx26212 = xor i32 %c6206, %t6207
  %fva6213 = and i32 %fx16211, %fx26212
  %fv6214 = icmp slt i32 %fva6213, 0
  %nz6215 = zext i1 %fn6208 to i64
  %zz6216 = zext i1 %fz6209 to i64
  %cz6217 = zext i1 %fc6210 to i64
  %vz6218 = zext i1 %fv6214 to i64
  %ns6219 = shl i64 %nz6215, 31
  %zs6220 = shl i64 %zz6216, 30
  %cs6221 = shl i64 %cz6217, 29
  %vs6222 = shl i64 %vz6218, 28
  %nzor6223 = or i64 %ns6219, %zs6220
  %cvor6224 = or i64 %cs6221, %vs6222
  %nzcv6225 = or i64 %nzor6223, %cvor6224
  %wp6226 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6225, ptr %wp6226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283274 word 0x54000281
  %r6227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6227 = load i64, ptr %r6227.p, align 8, !alias.scope !3, !noalias !4
  %fsh6229 = lshr i64 %r6227, 30
  %ftr6230 = trunc i64 %fsh6229 to i1
  %cond6228 = xor i1 %ftr6230, true
  br i1 %cond6228, label %L_8002832c4, label %L_800283278_ft
L_800283278_ft:
  ; @pc 0x800283278 word 0xf9400fe9
  %r6231.p = getelementptr inbounds i8, ptr %c, i64 256
  %r6231 = load i64, ptr %r6231.p, align 8, !alias.scope !3, !noalias !4
  %t6232 = add i64 %r6231, 24
  %gmp6233 = inttoptr i64 %t6232 to ptr
  %gml6234 = load i64, ptr %gmp6233, align 1, !alias.scope !4, !noalias !3
  %wp6235 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6234, ptr %wp6235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028327c word 0xf9406e6a
  %r6236.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6236 = load i64, ptr %r6236.p, align 8, !alias.scope !3, !noalias !4
  %t6237 = add i64 %r6236, 216
  %gmp6238 = inttoptr i64 %t6237 to ptr
  %gml6239 = load i64, ptr %gmp6238, align 1, !alias.scope !4, !noalias !3
  %wp6240 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6239, ptr %wp6240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283280 word 0xeb0a013f
  %r6241.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6241 = load i64, ptr %r6241.p, align 8, !alias.scope !3, !noalias !4
  %r6242.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6242 = load i64, ptr %r6242.p, align 8, !alias.scope !3, !noalias !4
  %t6243 = sub i64 %r6241, %r6242
  %fn6244 = icmp slt i64 %t6243, 0
  %fz6245 = icmp eq i64 %t6243, 0
  %fc6246 = icmp uge i64 %r6241, %r6242
  %fx16247 = xor i64 %r6241, %r6242
  %fx26248 = xor i64 %r6241, %t6243
  %fva6249 = and i64 %fx16247, %fx26248
  %fv6250 = icmp slt i64 %fva6249, 0
  %nz6251 = zext i1 %fn6244 to i64
  %zz6252 = zext i1 %fz6245 to i64
  %cz6253 = zext i1 %fc6246 to i64
  %vz6254 = zext i1 %fv6250 to i64
  %ns6255 = shl i64 %nz6251, 31
  %zs6256 = shl i64 %zz6252, 30
  %cs6257 = shl i64 %cz6253, 29
  %vs6258 = shl i64 %vz6254, 28
  %nzor6259 = or i64 %ns6255, %zs6256
  %cvor6260 = or i64 %cs6257, %vs6258
  %nzcv6261 = or i64 %nzor6259, %cvor6260
  %wp6262 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6261, ptr %wp6262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283284 word 0x540006c0
  %r6263.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6263 = load i64, ptr %r6263.p, align 8, !alias.scope !3, !noalias !4
  %fsh6265 = lshr i64 %r6263, 30
  %cond6264 = trunc i64 %fsh6265 to i1
  br i1 %cond6264, label %L_80028335c, label %L_800283288_ft
L_800283288_ft:
  ; @pc 0x800283288 word 0xaa1f03eb
  %t6266 = or i64 0, 0
  %wp6267 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6266, ptr %wp6267, align 8, !alias.scope !3, !noalias !4
  br label %L_80028328c
L_8002832ac_ft:
  ; @pc 0x8002832ac word 0x6b0d019f
  %r6362.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6362 = load i64, ptr %r6362.p, align 8, !alias.scope !3, !noalias !4
  %c6363 = trunc i64 %r6362 to i32
  %r6364.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6364 = load i64, ptr %r6364.p, align 8, !alias.scope !3, !noalias !4
  %c6365 = trunc i64 %r6364 to i32
  %t6366 = sub i32 %c6363, %c6365
  %fn6367 = icmp slt i32 %t6366, 0
  %fz6368 = icmp eq i32 %t6366, 0
  %fc6369 = icmp uge i32 %c6363, %c6365
  %fx16370 = xor i32 %c6363, %c6365
  %fx26371 = xor i32 %c6363, %t6366
  %fva6372 = and i32 %fx16370, %fx26371
  %fv6373 = icmp slt i32 %fva6372, 0
  %nz6374 = zext i1 %fn6367 to i64
  %zz6375 = zext i1 %fz6368 to i64
  %cz6376 = zext i1 %fc6369 to i64
  %vz6377 = zext i1 %fv6373 to i64
  %ns6378 = shl i64 %nz6374, 31
  %zs6379 = shl i64 %zz6375, 30
  %cs6380 = shl i64 %cz6376, 29
  %vs6381 = shl i64 %vz6377, 28
  %nzor6382 = or i64 %ns6378, %zs6379
  %cvor6383 = or i64 %cs6380, %vs6381
  %nzcv6384 = or i64 %nzor6382, %cvor6383
  %wp6385 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6384, ptr %wp6385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832b0 word 0x54000261
  %r6386.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6386 = load i64, ptr %r6386.p, align 8, !alias.scope !3, !noalias !4
  %fsh6388 = lshr i64 %r6386, 30
  %ftr6389 = trunc i64 %fsh6388 to i1
  %cond6387 = xor i1 %ftr6389, true
  br i1 %cond6387, label %L_8002832fc, label %L_8002832b4_ft
L_8002832b4_ft:
  ; @pc 0x8002832b4 word 0x9100056b
  %r6390.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6390 = load i64, ptr %r6390.p, align 8, !alias.scope !3, !noalias !4
  %t6391 = add i64 %r6390, 1
  %wp6392 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6391, ptr %wp6392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832b8 word 0xf150017f
  %r6393.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6393 = load i64, ptr %r6393.p, align 8, !alias.scope !3, !noalias !4
  %t6394 = sub i64 %r6393, 4194304
  %fn6395 = icmp slt i64 %t6394, 0
  %fz6396 = icmp eq i64 %t6394, 0
  %fc6397 = icmp uge i64 %r6393, 4194304
  %fx16398 = xor i64 %r6393, 4194304
  %fx26399 = xor i64 %r6393, %t6394
  %fva6400 = and i64 %fx16398, %fx26399
  %fv6401 = icmp slt i64 %fva6400, 0
  %nz6402 = zext i1 %fn6395 to i64
  %zz6403 = zext i1 %fz6396 to i64
  %cz6404 = zext i1 %fc6397 to i64
  %vz6405 = zext i1 %fv6401 to i64
  %ns6406 = shl i64 %nz6402, 31
  %zs6407 = shl i64 %zz6403, 30
  %cs6408 = shl i64 %cz6404, 29
  %vs6409 = shl i64 %vz6405, 28
  %nzor6410 = or i64 %ns6406, %zs6407
  %cvor6411 = or i64 %cs6408, %vs6409
  %nzcv6412 = or i64 %nzor6410, %cvor6411
  %wp6413 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6412, ptr %wp6413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832bc word 0x54fffe81
  %r6414.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6414 = load i64, ptr %r6414.p, align 8, !alias.scope !3, !noalias !4
  %fsh6416 = lshr i64 %r6414, 30
  %ftr6417 = trunc i64 %fsh6416 to i1
  %cond6415 = xor i1 %ftr6417, true
  br i1 %cond6415, label %L_80028328c, label %L_8002832c0_ft
L_8002832c0_ft:
  ; @pc 0x8002832c0 word 0x14000027
  br label %L_80028335c
L_8002832d0_ft:
  ; @pc 0x8002832d0 word 0x90015789
  %wp6452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp6452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832d4 word 0x9122b929
  %r6453.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6453 = load i64, ptr %r6453.p, align 8, !alias.scope !3, !noalias !4
  %t6454 = add i64 %r6453, 2222
  %wp6455 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6454, ptr %wp6455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832d8 word 0x1000008a
  %wp6456 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362372840, ptr %wp6456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832dc word 0x3868692b
  %r6457.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6457 = load i64, ptr %r6457.p, align 8, !alias.scope !3, !noalias !4
  %r6458.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6458 = load i64, ptr %r6458.p, align 8, !alias.scope !3, !noalias !4
  %t6459 = add i64 %r6457, %r6458
  %gmp6460 = inttoptr i64 %t6459 to ptr
  %gml6461 = load i8, ptr %gmp6460, align 1, !alias.scope !4, !noalias !3
  %c6462 = zext i8 %gml6461 to i64
  %wp6463 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6462, ptr %wp6463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832e0 word 0x8b0b094a
  %r6464.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6464 = load i64, ptr %r6464.p, align 8, !alias.scope !3, !noalias !4
  %r6465.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6465 = load i64, ptr %r6465.p, align 8, !alias.scope !3, !noalias !4
  %t6466 = shl i64 %r6465, 2
  %t6467 = add i64 %r6464, %t6466
  %wp6468 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6467, ptr %wp6468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002832e4 word 0xd61f0140
  %r6469.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6469 = load i64, ptr %r6469.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r6469, label %L_8002832e4_jt_def [
    i64 34362372840, label %L_8002832e8
    i64 34362372964, label %L_800283364
    i64 34362373128, label %L_800283408
    i64 34362373144, label %L_800283418
    i64 34362373164, label %L_80028342c
    i64 34362373184, label %L_800283440
    i64 34362373204, label %L_800283454
  ]
L_800283308_ft:
  ; @pc 0x800283308 word 0x6b1a011f
  %r6553.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6553 = load i64, ptr %r6553.p, align 8, !alias.scope !3, !noalias !4
  %c6554 = trunc i64 %r6553 to i32
  %r6555.p = getelementptr inbounds i8, ptr %c, i64 208
  %r6555 = load i64, ptr %r6555.p, align 8, !alias.scope !3, !noalias !4
  %c6556 = trunc i64 %r6555 to i32
  %t6557 = sub i32 %c6554, %c6556
  %fn6558 = icmp slt i32 %t6557, 0
  %fz6559 = icmp eq i32 %t6557, 0
  %fc6560 = icmp uge i32 %c6554, %c6556
  %fx16561 = xor i32 %c6554, %c6556
  %fx26562 = xor i32 %c6554, %t6557
  %fva6563 = and i32 %fx16561, %fx26562
  %fv6564 = icmp slt i32 %fva6563, 0
  %nz6565 = zext i1 %fn6558 to i64
  %zz6566 = zext i1 %fz6559 to i64
  %cz6567 = zext i1 %fc6560 to i64
  %vz6568 = zext i1 %fv6564 to i64
  %ns6569 = shl i64 %nz6565, 31
  %zs6570 = shl i64 %zz6566, 30
  %cs6571 = shl i64 %cz6567, 29
  %vs6572 = shl i64 %vz6568, 28
  %nzor6573 = or i64 %ns6569, %zs6570
  %cvor6574 = or i64 %cs6571, %vs6572
  %nzcv6575 = or i64 %nzor6573, %cvor6574
  %wp6576 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6575, ptr %wp6576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028330c word 0x54ffd1cb
  %r6577.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6577 = load i64, ptr %r6577.p, align 8, !alias.scope !3, !noalias !4
  %fsh6579 = lshr i64 %r6577, 31
  %ftr6580 = trunc i64 %fsh6579 to i1
  %fsh6581 = lshr i64 %r6577, 28
  %ftr6582 = trunc i64 %fsh6581 to i1
  %cond6578 = icmp ne i1 %ftr6580, %ftr6582
  br i1 %cond6578, label %L_800282d44, label %L_800283310_ft
L_800283310_ft:
  ; @pc 0x800283310 word 0x17fffd8a
  br label %L_800282938
L_800283320_ft:
  ; @pc 0x800283320 word 0x90015789
  %wp6617 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp6617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283324 word 0x91220929
  %r6618.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6618 = load i64, ptr %r6618.p, align 8, !alias.scope !3, !noalias !4
  %t6619 = add i64 %r6618, 2178
  %wp6620 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6619, ptr %wp6620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283328 word 0x1000008a
  %wp6621 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362372920, ptr %wp6621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028332c word 0x3868692b
  %r6622.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6622 = load i64, ptr %r6622.p, align 8, !alias.scope !3, !noalias !4
  %r6623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6623 = load i64, ptr %r6623.p, align 8, !alias.scope !3, !noalias !4
  %t6624 = add i64 %r6622, %r6623
  %gmp6625 = inttoptr i64 %t6624 to ptr
  %gml6626 = load i8, ptr %gmp6625, align 1, !alias.scope !4, !noalias !3
  %c6627 = zext i8 %gml6626 to i64
  %wp6628 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c6627, ptr %wp6628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283330 word 0x8b0b094a
  %r6629.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6629 = load i64, ptr %r6629.p, align 8, !alias.scope !3, !noalias !4
  %r6630.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6630 = load i64, ptr %r6630.p, align 8, !alias.scope !3, !noalias !4
  %t6631 = shl i64 %r6630, 2
  %t6632 = add i64 %r6629, %t6631
  %wp6633 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6632, ptr %wp6633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283334 word 0xd61f0140
  %r6634.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6634 = load i64, ptr %r6634.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r6634, label %L_800283334_jt_def [
    i64 34362372920, label %L_800283338
    i64 34362373104, label %L_8002833f0
    i64 34362373228, label %L_80028346c
    i64 34362373244, label %L_80028347c
    i64 34362373264, label %L_800283490
    i64 34362373284, label %L_8002834a4
    i64 34362373304, label %L_8002834b8
  ]
L_800283358_ft:
  ; @pc 0x800283358 word 0x17fffd32
  br label %L_800282820
L_800283394_ft:
  ; @pc 0x800283394 word 0x17fffed7
  br label %L_800282ef0
L_8002833a8_ft:
  ; @pc 0x8002833a8 word 0x17fffede
  br label %L_800282f20
L_8002833bc_ft:
  ; @pc 0x8002833bc word 0x14000005
  br label %L_8002833d0
L_800283428_ft:
  ; @pc 0x800283428 word 0x17ffffb4
  br label %L_8002832f8
L_80028343c_ft:
  ; @pc 0x80028343c word 0x17ffffce
  br label %L_800283374
L_800283450_ft:
  ; @pc 0x800283450 word 0x14000005
  br label %L_800283464
L_80028348c_ft:
  ; @pc 0x80028348c word 0x17ffffaf
  br label %L_800283348
L_8002834a0_ft:
  ; @pc 0x8002834a0 word 0x17ffffd8
  br label %L_800283400
L_8002834b4_ft:
  ; @pc 0x8002834b4 word 0x14000005
  br label %L_8002834c8
L_80028352c_ft:
  ; @pc 0x80028352c word 0x7100091f
  %r7529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7529 = load i64, ptr %r7529.p, align 8, !alias.scope !3, !noalias !4
  %c7530 = trunc i64 %r7529 to i32
  %t7531 = sub i32 %c7530, 2
  %fn7532 = icmp slt i32 %t7531, 0
  %fz7533 = icmp eq i32 %t7531, 0
  %fc7534 = icmp uge i32 %c7530, 2
  %fx17535 = xor i32 %c7530, 2
  %fx27536 = xor i32 %c7530, %t7531
  %fva7537 = and i32 %fx17535, %fx27536
  %fv7538 = icmp slt i32 %fva7537, 0
  %nz7539 = zext i1 %fn7532 to i64
  %zz7540 = zext i1 %fz7533 to i64
  %cz7541 = zext i1 %fc7534 to i64
  %vz7542 = zext i1 %fv7538 to i64
  %ns7543 = shl i64 %nz7539, 31
  %zs7544 = shl i64 %zz7540, 30
  %cs7545 = shl i64 %cz7541, 29
  %vs7546 = shl i64 %vz7542, 28
  %nzor7547 = or i64 %ns7543, %zs7544
  %cvor7548 = or i64 %cs7545, %vs7546
  %nzcv7549 = or i64 %nzor7547, %cvor7548
  %wp7550 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7549, ptr %wp7550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283530 word 0x54000601
  %r7551.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7551 = load i64, ptr %r7551.p, align 8, !alias.scope !3, !noalias !4
  %fsh7553 = lshr i64 %r7551, 30
  %ftr7554 = trunc i64 %fsh7553 to i1
  %cond7552 = xor i1 %ftr7554, true
  br i1 %cond7552, label %L_8002835f0, label %L_800283534_ft
L_800283534_ft:
  ; @pc 0x800283534 word 0xb9401be8
  %r7555.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7555 = load i64, ptr %r7555.p, align 8, !alias.scope !3, !noalias !4
  %t7556 = add i64 %r7555, 24
  %gmp7557 = inttoptr i64 %t7556 to ptr
  %gml7558 = load i32, ptr %gmp7557, align 1, !alias.scope !4, !noalias !3
  %c7559 = zext i32 %gml7558 to i64
  %wp7560 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7559, ptr %wp7560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283538 word 0xb940da69
  %r7561.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7561 = load i64, ptr %r7561.p, align 8, !alias.scope !3, !noalias !4
  %t7562 = add i64 %r7561, 216
  %gmp7563 = inttoptr i64 %t7562 to ptr
  %gml7564 = load i32, ptr %gmp7563, align 1, !alias.scope !4, !noalias !3
  %c7565 = zext i32 %gml7564 to i64
  %wp7566 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7565, ptr %wp7566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028353c word 0x6b09011f
  %r7567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7567 = load i64, ptr %r7567.p, align 8, !alias.scope !3, !noalias !4
  %c7568 = trunc i64 %r7567 to i32
  %r7569.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7569 = load i64, ptr %r7569.p, align 8, !alias.scope !3, !noalias !4
  %c7570 = trunc i64 %r7569 to i32
  %t7571 = sub i32 %c7568, %c7570
  %fn7572 = icmp slt i32 %t7571, 0
  %fz7573 = icmp eq i32 %t7571, 0
  %fc7574 = icmp uge i32 %c7568, %c7570
  %fx17575 = xor i32 %c7568, %c7570
  %fx27576 = xor i32 %c7568, %t7571
  %fva7577 = and i32 %fx17575, %fx27576
  %fv7578 = icmp slt i32 %fva7577, 0
  %nz7579 = zext i1 %fn7572 to i64
  %zz7580 = zext i1 %fz7573 to i64
  %cz7581 = zext i1 %fc7574 to i64
  %vz7582 = zext i1 %fv7578 to i64
  %ns7583 = shl i64 %nz7579, 31
  %zs7584 = shl i64 %zz7580, 30
  %cs7585 = shl i64 %cz7581, 29
  %vs7586 = shl i64 %vz7582, 28
  %nzor7587 = or i64 %ns7583, %zs7584
  %cvor7588 = or i64 %cs7585, %vs7586
  %nzcv7589 = or i64 %nzor7587, %cvor7588
  %wp7590 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7589, ptr %wp7590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283540 word 0x5400008c
  %r7591.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7591 = load i64, ptr %r7591.p, align 8, !alias.scope !3, !noalias !4
  %fsh7593 = lshr i64 %r7591, 30
  %ftr7594 = trunc i64 %fsh7593 to i1
  %fsh7595 = lshr i64 %r7591, 31
  %ftr7596 = trunc i64 %fsh7595 to i1
  %fsh7597 = lshr i64 %r7591, 28
  %ftr7598 = trunc i64 %fsh7597 to i1
  %fnz7599 = xor i1 %ftr7594, true
  %feq7600 = icmp eq i1 %ftr7596, %ftr7598
  %cond7592 = and i1 %fnz7599, %feq7600
  br i1 %cond7592, label %L_800283550, label %L_800283544
L_80028354c_ft:
  ; @pc 0x80028354c word 0x37fffc28
  %r7614.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7614 = load i64, ptr %r7614.p, align 8, !alias.scope !3, !noalias !4
  %t7615 = and i64 %r7614, 2147483648
  %cmp7616 = icmp ne i64 %t7615, 0
  br i1 %cmp7616, label %L_8002834d0, label %L_800283550
L_800283560_ft:
  ; @pc 0x800283560 word 0x2a1f03e8
  %t7630 = or i32 0, 0
  %c7631 = zext i32 %t7630 to i64
  %wp7632 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7631, ptr %wp7632, align 8, !alias.scope !3, !noalias !4
  br label %L_800283564
L_800283570_ft:
  ; @pc 0x800283570 word 0x5280002e
  %c7668 = zext i32 1 to i64
  %wp7669 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7668, ptr %wp7669, align 8, !alias.scope !3, !noalias !4
  br label %L_800283574
L_800283588_ft:
  ; @pc 0x800283588 word 0x2a0e03e8
  %r7735.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7735 = load i64, ptr %r7735.p, align 8, !alias.scope !3, !noalias !4
  %c7736 = trunc i64 %r7735 to i32
  %t7737 = or i32 0, %c7736
  %c7738 = zext i32 %t7737 to i64
  %wp7739 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7738, ptr %wp7739, align 8, !alias.scope !3, !noalias !4
  br label %L_80028358c
L_800283590_ft:
  ; @pc 0x800283590 word 0x8b0b012c
  %r7743.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7743 = load i64, ptr %r7743.p, align 8, !alias.scope !3, !noalias !4
  %r7744.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7744 = load i64, ptr %r7744.p, align 8, !alias.scope !3, !noalias !4
  %t7745 = add i64 %r7743, %r7744
  %wp7746 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t7745, ptr %wp7746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283594 word 0x3940058c
  %r7747.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7747 = load i64, ptr %r7747.p, align 8, !alias.scope !3, !noalias !4
  %t7748 = add i64 %r7747, 1
  %gmp7749 = inttoptr i64 %t7748 to ptr
  %gml7750 = load i8, ptr %gmp7749, align 1, !alias.scope !4, !noalias !3
  %c7751 = zext i8 %gml7750 to i64
  %wp7752 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7751, ptr %wp7752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283598 word 0x3500004c
  %r7753.p = getelementptr inbounds i8, ptr %c, i64 96
  %r7753 = load i64, ptr %r7753.p, align 8, !alias.scope !3, !noalias !4
  %c7754 = trunc i64 %r7753 to i32
  %cmp7755 = icmp ne i32 %c7754, 0
  br i1 %cmp7755, label %L_8002835a0, label %L_80028359c_ft
L_80028359c_ft:
  ; @pc 0x80028359c word 0x2a1f03e8
  %t7756 = or i32 0, 0
  %c7757 = zext i32 %t7756 to i64
  %wp7758 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7757, ptr %wp7758, align 8, !alias.scope !3, !noalias !4
  br label %L_8002835a0
L_8002835b0_ft:
  ; @pc 0x8002835b0 word 0x5280002e
  %c7797 = zext i32 1 to i64
  %wp7798 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c7797, ptr %wp7798, align 8, !alias.scope !3, !noalias !4
  br label %L_8002835b4
L_8002835c8_ft:
  ; @pc 0x8002835c8 word 0x2a0e03e8
  %r7864.p = getelementptr inbounds i8, ptr %c, i64 112
  %r7864 = load i64, ptr %r7864.p, align 8, !alias.scope !3, !noalias !4
  %c7865 = trunc i64 %r7864 to i32
  %t7866 = or i32 0, %c7865
  %c7867 = zext i32 %t7866 to i64
  %wp7868 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7867, ptr %wp7868, align 8, !alias.scope !3, !noalias !4
  br label %L_8002835cc
L_8002835d0_ft:
  ; @pc 0x8002835d0 word 0x9100096b
  %r7872.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7872 = load i64, ptr %r7872.p, align 8, !alias.scope !3, !noalias !4
  %t7873 = add i64 %r7872, 2
  %wp7874 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7873, ptr %wp7874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835d4 word 0xf150017f
  %r7875.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7875 = load i64, ptr %r7875.p, align 8, !alias.scope !3, !noalias !4
  %t7876 = sub i64 %r7875, 4194304
  %fn7877 = icmp slt i64 %t7876, 0
  %fz7878 = icmp eq i64 %t7876, 0
  %fc7879 = icmp uge i64 %r7875, 4194304
  %fx17880 = xor i64 %r7875, 4194304
  %fx27881 = xor i64 %r7875, %t7876
  %fva7882 = and i64 %fx17880, %fx27881
  %fv7883 = icmp slt i64 %fva7882, 0
  %nz7884 = zext i1 %fn7877 to i64
  %zz7885 = zext i1 %fz7878 to i64
  %cz7886 = zext i1 %fc7879 to i64
  %vz7887 = zext i1 %fv7883 to i64
  %ns7888 = shl i64 %nz7884, 31
  %zs7889 = shl i64 %zz7885, 30
  %cs7890 = shl i64 %cz7886, 29
  %vs7891 = shl i64 %vz7887, 28
  %nzor7892 = or i64 %ns7888, %zs7889
  %cvor7893 = or i64 %cs7890, %vs7891
  %nzcv7894 = or i64 %nzor7892, %cvor7893
  %wp7895 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7894, ptr %wp7895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002835d8 word 0x54fffc01
  %r7896.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7896 = load i64, ptr %r7896.p, align 8, !alias.scope !3, !noalias !4
  %fsh7898 = lshr i64 %r7896, 30
  %ftr7899 = trunc i64 %fsh7898 to i1
  %cond7897 = xor i1 %ftr7899, true
  br i1 %cond7897, label %L_800283558, label %L_8002835dc_ft
L_8002835dc_ft:
  ; @pc 0x8002835dc word 0x17ffffbd
  br label %L_8002834d0
L_8002835fc_ft:
  ; @pc 0x8002835fc word 0x90015789
  %wp7938 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp7938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283600 word 0x9121e929
  %r7939.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7939 = load i64, ptr %r7939.p, align 8, !alias.scope !3, !noalias !4
  %t7940 = add i64 %r7939, 2170
  %wp7941 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7940, ptr %wp7941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283604 word 0x10fff66a
  %wp7942 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362373328, ptr %wp7942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283608 word 0x3868692b
  %r7943.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7943 = load i64, ptr %r7943.p, align 8, !alias.scope !3, !noalias !4
  %r7944.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7944 = load i64, ptr %r7944.p, align 8, !alias.scope !3, !noalias !4
  %t7945 = add i64 %r7943, %r7944
  %gmp7946 = inttoptr i64 %t7945 to ptr
  %gml7947 = load i8, ptr %gmp7946, align 1, !alias.scope !4, !noalias !3
  %c7948 = zext i8 %gml7947 to i64
  %wp7949 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7948, ptr %wp7949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028360c word 0x8b0b094a
  %r7950.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7950 = load i64, ptr %r7950.p, align 8, !alias.scope !3, !noalias !4
  %r7951.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7951 = load i64, ptr %r7951.p, align 8, !alias.scope !3, !noalias !4
  %t7952 = shl i64 %r7951, 2
  %t7953 = add i64 %r7950, %t7952
  %wp7954 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t7953, ptr %wp7954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283610 word 0xd61f0140
  %r7955.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7955 = load i64, ptr %r7955.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r7955, label %L_800283610_jt_def [
    i64 34362373328, label %L_8002834d0
    i64 34362373652, label %L_800283614
    i64 34362373668, label %L_800283624
    i64 34362373692, label %L_80028363c
    i64 34362373712, label %L_800283650
    i64 34362373732, label %L_800283664
    i64 34362373752, label %L_800283678
    i64 34362373776, label %L_800283690
  ]
L_80028364c_ft:
  ; @pc 0x80028364c word 0x17ffffc1
  br label %L_800283550
L_800283660_ft:
  ; @pc 0x800283660 word 0x17ffffbc
  br label %L_800283550
L_800283674_ft:
  ; @pc 0x800283674 word 0x14000005
  br label %L_800283688
L_8002836a0_ft:
  ; @pc 0x8002836a0 word 0xaa1f03eb
  %t8199 = or i64 0, 0
  %wp8200 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t8199, ptr %wp8200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002836a4 word 0x17ffffad
  br label %L_800283558
L_8002836a8_unreach:
  ; @pc 0x8002836a8 word 0xd503201f
  ; @pc 0x8002836ac word 0xd503201f
  br label %L_8002836b0
L_80028370c_ft:
  ; @pc 0x80028370c word 0x7100211f
  %r8418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8418 = load i64, ptr %r8418.p, align 8, !alias.scope !3, !noalias !4
  %c8419 = trunc i64 %r8418 to i32
  %t8420 = sub i32 %c8419, 8
  %fn8421 = icmp slt i32 %t8420, 0
  %fz8422 = icmp eq i32 %t8420, 0
  %fc8423 = icmp uge i32 %c8419, 8
  %fx18424 = xor i32 %c8419, 8
  %fx28425 = xor i32 %c8419, %t8420
  %fva8426 = and i32 %fx18424, %fx28425
  %fv8427 = icmp slt i32 %fva8426, 0
  %nz8428 = zext i1 %fn8421 to i64
  %zz8429 = zext i1 %fz8422 to i64
  %cz8430 = zext i1 %fc8423 to i64
  %vz8431 = zext i1 %fv8427 to i64
  %ns8432 = shl i64 %nz8428, 31
  %zs8433 = shl i64 %zz8429, 30
  %cs8434 = shl i64 %cz8430, 29
  %vs8435 = shl i64 %vz8431, 28
  %nzor8436 = or i64 %ns8432, %zs8433
  %cvor8437 = or i64 %cs8434, %vs8435
  %nzcv8438 = or i64 %nzor8436, %cvor8437
  %wp8439 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8438, ptr %wp8439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283710 word 0x54000481
  %r8440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8440 = load i64, ptr %r8440.p, align 8, !alias.scope !3, !noalias !4
  %fsh8442 = lshr i64 %r8440, 30
  %ftr8443 = trunc i64 %fsh8442 to i1
  %cond8441 = xor i1 %ftr8443, true
  br i1 %cond8441, label %L_8002837a0, label %L_800283714_ft
L_800283714_ft:
  ; @pc 0x800283714 word 0xf9400fe9
  %r8444.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8444 = load i64, ptr %r8444.p, align 8, !alias.scope !3, !noalias !4
  %t8445 = add i64 %r8444, 24
  %gmp8446 = inttoptr i64 %t8445 to ptr
  %gml8447 = load i64, ptr %gmp8446, align 1, !alias.scope !4, !noalias !3
  %wp8448 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8447, ptr %wp8448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283718 word 0xf9406e6a
  %r8449.p = getelementptr inbounds i8, ptr %c, i64 152
  %r8449 = load i64, ptr %r8449.p, align 8, !alias.scope !3, !noalias !4
  %t8450 = add i64 %r8449, 216
  %gmp8451 = inttoptr i64 %t8450 to ptr
  %gml8452 = load i64, ptr %gmp8451, align 1, !alias.scope !4, !noalias !3
  %wp8453 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml8452, ptr %wp8453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80028371c word 0xeb0a013f
  %r8454.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8454 = load i64, ptr %r8454.p, align 8, !alias.scope !3, !noalias !4
  %r8455.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8455 = load i64, ptr %r8455.p, align 8, !alias.scope !3, !noalias !4
  %t8456 = sub i64 %r8454, %r8455
  %fn8457 = icmp slt i64 %t8456, 0
  %fz8458 = icmp eq i64 %t8456, 0
  %fc8459 = icmp uge i64 %r8454, %r8455
  %fx18460 = xor i64 %r8454, %r8455
  %fx28461 = xor i64 %r8454, %t8456
  %fva8462 = and i64 %fx18460, %fx28461
  %fv8463 = icmp slt i64 %fva8462, 0
  %nz8464 = zext i1 %fn8457 to i64
  %zz8465 = zext i1 %fz8458 to i64
  %cz8466 = zext i1 %fc8459 to i64
  %vz8467 = zext i1 %fv8463 to i64
  %ns8468 = shl i64 %nz8464, 31
  %zs8469 = shl i64 %zz8465, 30
  %cs8470 = shl i64 %cz8466, 29
  %vs8471 = shl i64 %vz8467, 28
  %nzor8472 = or i64 %ns8468, %zs8469
  %cvor8473 = or i64 %cs8470, %vs8471
  %nzcv8474 = or i64 %nzor8472, %cvor8473
  %wp8475 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8474, ptr %wp8475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283720 word 0x54fffc80
  %r8476.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8476 = load i64, ptr %r8476.p, align 8, !alias.scope !3, !noalias !4
  %fsh8478 = lshr i64 %r8476, 30
  %cond8477 = trunc i64 %fsh8478 to i1
  br i1 %cond8477, label %L_8002836b0, label %L_800283724_ft
L_800283724_ft:
  ; @pc 0x800283724 word 0xaa1f03eb
  %t8479 = or i64 0, 0
  %wp8480 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t8479, ptr %wp8480, align 8, !alias.scope !3, !noalias !4
  br label %L_800283728
L_800283750_ft:
  ; @pc 0x800283750 word 0x8b0b012c
  %r8585.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8585 = load i64, ptr %r8585.p, align 8, !alias.scope !3, !noalias !4
  %r8586.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8586 = load i64, ptr %r8586.p, align 8, !alias.scope !3, !noalias !4
  %t8587 = add i64 %r8585, %r8586
  %wp8588 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t8587, ptr %wp8588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283754 word 0x3940058c
  %r8589.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8589 = load i64, ptr %r8589.p, align 8, !alias.scope !3, !noalias !4
  %t8590 = add i64 %r8589, 1
  %gmp8591 = inttoptr i64 %t8590 to ptr
  %gml8592 = load i8, ptr %gmp8591, align 1, !alias.scope !4, !noalias !3
  %c8593 = zext i8 %gml8592 to i64
  %wp8594 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c8593, ptr %wp8594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283758 word 0x3400046c
  %r8595.p = getelementptr inbounds i8, ptr %c, i64 96
  %r8595 = load i64, ptr %r8595.p, align 8, !alias.scope !3, !noalias !4
  %c8596 = trunc i64 %r8595 to i32
  %cmp8597 = icmp eq i32 %c8596, 0
  br i1 %cmp8597, label %L_8002837e4, label %L_80028375c
L_800283780_ft:
  ; @pc 0x800283780 word 0x9100096b
  %r8695.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8695 = load i64, ptr %r8695.p, align 8, !alias.scope !3, !noalias !4
  %t8696 = add i64 %r8695, 2
  %wp8697 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t8696, ptr %wp8697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283784 word 0xf150017f
  %r8698.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8698 = load i64, ptr %r8698.p, align 8, !alias.scope !3, !noalias !4
  %t8699 = sub i64 %r8698, 4194304
  %fn8700 = icmp slt i64 %t8699, 0
  %fz8701 = icmp eq i64 %t8699, 0
  %fc8702 = icmp uge i64 %r8698, 4194304
  %fx18703 = xor i64 %r8698, 4194304
  %fx28704 = xor i64 %r8698, %t8699
  %fva8705 = and i64 %fx18703, %fx28704
  %fv8706 = icmp slt i64 %fva8705, 0
  %nz8707 = zext i1 %fn8700 to i64
  %zz8708 = zext i1 %fz8701 to i64
  %cz8709 = zext i1 %fc8702 to i64
  %vz8710 = zext i1 %fv8706 to i64
  %ns8711 = shl i64 %nz8707, 31
  %zs8712 = shl i64 %zz8708, 30
  %cs8713 = shl i64 %cz8709, 29
  %vs8714 = shl i64 %vz8710, 28
  %nzor8715 = or i64 %ns8711, %zs8712
  %cvor8716 = or i64 %cs8713, %vs8714
  %nzcv8717 = or i64 %nzor8715, %cvor8716
  %wp8718 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8717, ptr %wp8718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800283788 word 0x54fffd01
  %r8719.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8719 = load i64, ptr %r8719.p, align 8, !alias.scope !3, !noalias !4
  %fsh8721 = lshr i64 %r8719, 30
  %ftr8722 = trunc i64 %fsh8721 to i1
  %cond8720 = xor i1 %ftr8722, true
  br i1 %cond8720, label %L_800283728, label %L_80028378c_ft
L_80028378c_ft:
  ; @pc 0x80028378c word 0x17ffffc9
  br label %L_8002836b0
L_800283794_ft:
  ; @pc 0x800283794 word 0x37fff8e8
  %r8726.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8726 = load i64, ptr %r8726.p, align 8, !alias.scope !3, !noalias !4
  %t8727 = and i64 %r8726, 2147483648
  %cmp8728 = icmp ne i64 %t8727, 0
  br i1 %cmp8728, label %L_8002836b0, label %L_800283798
L_8002837ac_ft:
  ; @pc 0x8002837ac word 0x90015789
  %wp8766 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34407395328, ptr %wp8766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837b0 word 0x91226129
  %r8767.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8767 = load i64, ptr %r8767.p, align 8, !alias.scope !3, !noalias !4
  %t8768 = add i64 %r8767, 2200
  %wp8769 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t8768, ptr %wp8769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837b4 word 0x1000008a
  %wp8770 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34362374084, ptr %wp8770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837b8 word 0x3868692b
  %r8771.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8771 = load i64, ptr %r8771.p, align 8, !alias.scope !3, !noalias !4
  %r8772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8772 = load i64, ptr %r8772.p, align 8, !alias.scope !3, !noalias !4
  %t8773 = add i64 %r8771, %r8772
  %gmp8774 = inttoptr i64 %t8773 to ptr
  %gml8775 = load i8, ptr %gmp8774, align 1, !alias.scope !4, !noalias !3
  %c8776 = zext i8 %gml8775 to i64
  %wp8777 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8776, ptr %wp8777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837bc word 0x8b0b094a
  %r8778.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8778 = load i64, ptr %r8778.p, align 8, !alias.scope !3, !noalias !4
  %r8779.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8779 = load i64, ptr %r8779.p, align 8, !alias.scope !3, !noalias !4
  %t8780 = shl i64 %r8779, 2
  %t8781 = add i64 %r8778, %t8780
  %wp8782 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t8781, ptr %wp8782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8002837c0 word 0xd61f0140
  %r8783.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8783 = load i64, ptr %r8783.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r8783, label %L_8002837c0_jt_def [
    i64 34362374084, label %L_8002837c4
    i64 34362374124, label %L_8002837ec
    i64 34362374140, label %L_8002837fc
    i64 34362374164, label %L_800283814
    i64 34362374184, label %L_800283828
    i64 34362374204, label %L_80028383c
    i64 34362374224, label %L_800283850
  ]
L_800283824_ft:
  ; @pc 0x800283824 word 0x17ffffdd
  br label %L_800283798
L_800283838_ft:
  ; @pc 0x800283838 word 0x17ffffd8
  br label %L_800283798
L_80028384c_ft:
  ; @pc 0x80028384c word 0x14000005
  br label %L_800283860
L_800283170_jt_def:
  %fp9054 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5717, ptr %fp9054, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800282998_jt_def:
  %fp9055 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1925, ptr %fp9055, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8002829f4_jt_def:
  %fp9056 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2107, ptr %fp9056, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800282e88_jt_def:
  %fp9057 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4373, ptr %fp9057, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800282edc_jt_def:
  %fp9058 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4525, ptr %fp9058, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800282f64_jt_def:
  %fp9059 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4758, ptr %fp9059, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8002832e4_jt_def:
  %fp9060 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6469, ptr %fp9060, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800283334_jt_def:
  %fp9061 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r6634, ptr %fp9061, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800283610_jt_def:
  %fp9062 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7955, ptr %fp9062, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8002837c0_jt_def:
  %fp9063 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8783, ptr %fp9063, align 8, !alias.scope !3, !noalias !4
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
