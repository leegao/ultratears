; UltraTears chunk main_083_buddy: 1 functions [0x80015f120..0x8001603b0)
; ModuleID = 'main_083_buddy_raw'
source_filename = "main_083_buddy_raw"
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

declare dso_local void @f_800099860(ptr)
declare dso_local void @f_802ba39a0(ptr)
declare dso_local void @f_802ba39b0(ptr)

define dso_local void @f_80015f120(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_80015f120:
  ; @pc 0x80015f120 word 0xd10603ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 384
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f124 word 0xa9127bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 288
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f128 word 0xa9136ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 304
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f12c word 0xa91467fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 320
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f130 word 0xa9155ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 336
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f134 word 0xa91657f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 352
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f138 word 0xa9174ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 368
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f13c word 0x910483fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 288
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f140 word 0xa9402009
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = add i64 %r53, 8
  %gmp55 = inttoptr i64 %r53 to ptr
  %gml56 = load i64, ptr %gmp55, align 1, !alias.scope !4, !noalias !3
  %gmp57 = inttoptr i64 %t54 to ptr
  %gml58 = load i64, ptr %gmp57, align 1, !alias.scope !4, !noalias !3
  %wp59 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml56, ptr %wp59, align 8, !alias.scope !3, !noalias !4
  %wp60 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml58, ptr %wp60, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f144 word 0x2a0303f7
  %r61.p = getelementptr inbounds i8, ptr %c, i64 24
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %c62 = trunc i64 %r61 to i32
  %t63 = or i32 0, %c62
  %c64 = zext i32 %t63 to i64
  %wp65 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c64, ptr %wp65, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f148 word 0xf001bf63
  %wp66 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34419826688, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f14c word 0xaa0203f3
  %r67.p = getelementptr inbounds i8, ptr %c, i64 16
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = or i64 0, %r67
  %wp69 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f150 word 0xaa0003f5
  %r70.p = getelementptr inbounds i8, ptr %c, i64 0
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %t71 = or i64 0, %r70
  %wp72 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t71, ptr %wp72, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f154 word 0xaa0103f6
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f158 word 0xf9400914
  %r76.p = getelementptr inbounds i8, ptr %c, i64 64
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %t77 = add i64 %r76, 16
  %gmp78 = inttoptr i64 %t77 to ptr
  %gml79 = load i64, ptr %gmp78, align 1, !alias.scope !4, !noalias !3
  %wp80 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f15c word 0xf9404d28
  %r81.p = getelementptr inbounds i8, ptr %c, i64 72
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 152
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f160 word 0xf9439863
  %r86.p = getelementptr inbounds i8, ptr %c, i64 24
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 1840
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f164 word 0xeb03011f
  %r91.p = getelementptr inbounds i8, ptr %c, i64 64
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %r92.p = getelementptr inbounds i8, ptr %c, i64 24
  %r92 = load i64, ptr %r92.p, align 8, !alias.scope !3, !noalias !4
  %t93 = sub i64 %r91, %r92
  %fn94 = icmp slt i64 %t93, 0
  %fz95 = icmp eq i64 %t93, 0
  %fc96 = icmp uge i64 %r91, %r92
  %fx197 = xor i64 %r91, %r92
  %fx298 = xor i64 %r91, %t93
  %fva99 = and i64 %fx197, %fx298
  %fv100 = icmp slt i64 %fva99, 0
  %nz101 = zext i1 %fn94 to i64
  %zz102 = zext i1 %fz95 to i64
  %cz103 = zext i1 %fc96 to i64
  %vz104 = zext i1 %fv100 to i64
  %ns105 = shl i64 %nz101, 31
  %zs106 = shl i64 %zz102, 30
  %cs107 = shl i64 %cz103, 29
  %vs108 = shl i64 %vz104, 28
  %nzor109 = or i64 %ns105, %zs106
  %cvor110 = or i64 %cs107, %vs108
  %nzcv111 = or i64 %nzor109, %cvor110
  %wp112 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv111, ptr %wp112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f168 word 0x54004de1
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_80015fb24, label %L_80015f16c_ft
L_80015f188:
  ; @pc 0x80015f188 word 0xb9404409
  %r155.p = getelementptr inbounds i8, ptr %c, i64 0
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %t156 = add i64 %r155, 68
  %gmp157 = inttoptr i64 %t156 to ptr
  %gml158 = load i32, ptr %gmp157, align 1, !alias.scope !4, !noalias !3
  %c159 = zext i32 %gml158 to i64
  %wp160 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c159, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f18c word 0x7100053f
  %r161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r161 = load i64, ptr %r161.p, align 8, !alias.scope !3, !noalias !4
  %c162 = trunc i64 %r161 to i32
  %t163 = sub i32 %c162, 1
  %fn164 = icmp slt i32 %t163, 0
  %fz165 = icmp eq i32 %t163, 0
  %fc166 = icmp uge i32 %c162, 1
  %fx1167 = xor i32 %c162, 1
  %fx2168 = xor i32 %c162, %t163
  %fva169 = and i32 %fx1167, %fx2168
  %fv170 = icmp slt i32 %fva169, 0
  %nz171 = zext i1 %fn164 to i64
  %zz172 = zext i1 %fz165 to i64
  %cz173 = zext i1 %fc166 to i64
  %vz174 = zext i1 %fv170 to i64
  %ns175 = shl i64 %nz171, 31
  %zs176 = shl i64 %zz172, 30
  %cs177 = shl i64 %cz173, 29
  %vs178 = shl i64 %vz174, 28
  %nzor179 = or i64 %ns175, %zs176
  %cvor180 = or i64 %cs177, %vs178
  %nzcv181 = or i64 %nzor179, %cvor180
  %wp182 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv181, ptr %wp182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f190 word 0x5400060b
  %r183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r183 = load i64, ptr %r183.p, align 8, !alias.scope !3, !noalias !4
  %fsh185 = lshr i64 %r183, 31
  %ftr186 = trunc i64 %fsh185 to i1
  %fsh187 = lshr i64 %r183, 28
  %ftr188 = trunc i64 %fsh187 to i1
  %cond184 = icmp ne i1 %ftr186, %ftr188
  br i1 %cond184, label %L_80015f250, label %L_80015f194_ft
L_80015f1c0:
  ; @pc 0x80015f1c0 word 0xd37ced50
  %r237.p = getelementptr inbounds i8, ptr %c, i64 80
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %ror238 = call i64 @llvm.fshr.i64(i64 %r237, i64 %r237, i64 60)
  %t239 = and i64 %ror238, -16
  %wp240 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1c4 word 0xb8b06971
  %r241.p = getelementptr inbounds i8, ptr %c, i64 88
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %r242.p = getelementptr inbounds i8, ptr %c, i64 128
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %t243 = add i64 %r241, %r242
  %gmp244 = inttoptr i64 %t243 to ptr
  %gml245 = load i32, ptr %gmp244, align 1, !alias.scope !4, !noalias !3
  %c246 = sext i32 %gml245 to i64
  %wp247 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c246, ptr %wp247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1c8 word 0x8b110190
  %r248.p = getelementptr inbounds i8, ptr %c, i64 96
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %r249.p = getelementptr inbounds i8, ptr %c, i64 136
  %r249 = load i64, ptr %r249.p, align 8, !alias.scope !3, !noalias !4
  %t250 = add i64 %r248, %r249
  %wp251 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t250, ptr %wp251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1cc word 0xeb1001bf
  %r252.p = getelementptr inbounds i8, ptr %c, i64 104
  %r252 = load i64, ptr %r252.p, align 8, !alias.scope !3, !noalias !4
  %r253.p = getelementptr inbounds i8, ptr %c, i64 128
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %t254 = sub i64 %r252, %r253
  %fn255 = icmp slt i64 %t254, 0
  %fz256 = icmp eq i64 %t254, 0
  %fc257 = icmp uge i64 %r252, %r253
  %fx1258 = xor i64 %r252, %r253
  %fx2259 = xor i64 %r252, %t254
  %fva260 = and i64 %fx1258, %fx2259
  %fv261 = icmp slt i64 %fva260, 0
  %nz262 = zext i1 %fn255 to i64
  %zz263 = zext i1 %fz256 to i64
  %cz264 = zext i1 %fc257 to i64
  %vz265 = zext i1 %fv261 to i64
  %ns266 = shl i64 %nz262, 31
  %zs267 = shl i64 %zz263, 30
  %cs268 = shl i64 %cz264, 29
  %vs269 = shl i64 %vz265, 28
  %nzor270 = or i64 %ns266, %zs267
  %cvor271 = or i64 %cs268, %vs269
  %nzcv272 = or i64 %nzor270, %cvor271
  %wp273 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv272, ptr %wp273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1d0 word 0x54000680
  %r274.p = getelementptr inbounds i8, ptr %c, i64 272
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %fsh276 = lshr i64 %r274, 30
  %cond275 = trunc i64 %fsh276 to i1
  br i1 %cond275, label %L_80015f2a0, label %L_80015f1d4_ft
L_80015f1dc:
  ; @pc 0x80015f1dc word 0x8b1001d2
  %r283.p = getelementptr inbounds i8, ptr %c, i64 112
  %r283 = load i64, ptr %r283.p, align 8, !alias.scope !3, !noalias !4
  %r284.p = getelementptr inbounds i8, ptr %c, i64 128
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %t285 = add i64 %r283, %r284
  %wp286 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t285, ptr %wp286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1e0 word 0x8b100220
  %r287.p = getelementptr inbounds i8, ptr %c, i64 136
  %r287 = load i64, ptr %r287.p, align 8, !alias.scope !3, !noalias !4
  %r288.p = getelementptr inbounds i8, ptr %c, i64 128
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %t289 = add i64 %r287, %r288
  %wp290 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t289, ptr %wp290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1e4 word 0x385ff241
  %r291.p = getelementptr inbounds i8, ptr %c, i64 144
  %r291 = load i64, ptr %r291.p, align 8, !alias.scope !3, !noalias !4
  %t292 = add i64 %r291, -1
  %gmp293 = inttoptr i64 %t292 to ptr
  %gml294 = load i8, ptr %gmp293, align 1, !alias.scope !4, !noalias !3
  %c295 = zext i8 %gml294 to i64
  %wp296 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c295, ptr %wp296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1e8 word 0x385fd002
  %r297.p = getelementptr inbounds i8, ptr %c, i64 0
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, -3
  %gmp299 = inttoptr i64 %t298 to ptr
  %gml300 = load i8, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  %c301 = zext i8 %gml300 to i64
  %wp302 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1ec word 0x6b02003f
  %r303.p = getelementptr inbounds i8, ptr %c, i64 8
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %c304 = trunc i64 %r303 to i32
  %r305.p = getelementptr inbounds i8, ptr %c, i64 16
  %r305 = load i64, ptr %r305.p, align 8, !alias.scope !3, !noalias !4
  %c306 = trunc i64 %r305 to i32
  %t307 = sub i32 %c304, %c306
  %fn308 = icmp slt i32 %t307, 0
  %fz309 = icmp eq i32 %t307, 0
  %fc310 = icmp uge i32 %c304, %c306
  %fx1311 = xor i32 %c304, %c306
  %fx2312 = xor i32 %c304, %t307
  %fva313 = and i32 %fx1311, %fx2312
  %fv314 = icmp slt i32 %fva313, 0
  %nz315 = zext i1 %fn308 to i64
  %zz316 = zext i1 %fz309 to i64
  %cz317 = zext i1 %fc310 to i64
  %vz318 = zext i1 %fv314 to i64
  %ns319 = shl i64 %nz315, 31
  %zs320 = shl i64 %zz316, 30
  %cs321 = shl i64 %cz317, 29
  %vs322 = shl i64 %vz318, 28
  %nzor323 = or i64 %ns319, %zs320
  %cvor324 = or i64 %cs321, %vs322
  %nzcv325 = or i64 %nzor323, %cvor324
  %wp326 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv325, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1f0 word 0x540002a1
  %r327.p = getelementptr inbounds i8, ptr %c, i64 272
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %fsh329 = lshr i64 %r327, 30
  %ftr330 = trunc i64 %fsh329 to i1
  %cond328 = xor i1 %ftr330, true
  br i1 %cond328, label %L_80015f244, label %L_80015f1f4_ft
L_80015f244:
  ; @pc 0x80015f244 word 0x9100054a
  %r492.p = getelementptr inbounds i8, ptr %c, i64 80
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %t493 = add i64 %r492, 1
  %wp494 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t493, ptr %wp494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f248 word 0xeb09015f
  %r495.p = getelementptr inbounds i8, ptr %c, i64 80
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %r496.p = getelementptr inbounds i8, ptr %c, i64 72
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %t497 = sub i64 %r495, %r496
  %fn498 = icmp slt i64 %t497, 0
  %fz499 = icmp eq i64 %t497, 0
  %fc500 = icmp uge i64 %r495, %r496
  %fx1501 = xor i64 %r495, %r496
  %fx2502 = xor i64 %r495, %t497
  %fva503 = and i64 %fx1501, %fx2502
  %fv504 = icmp slt i64 %fva503, 0
  %nz505 = zext i1 %fn498 to i64
  %zz506 = zext i1 %fz499 to i64
  %cz507 = zext i1 %fc500 to i64
  %vz508 = zext i1 %fv504 to i64
  %ns509 = shl i64 %nz505, 31
  %zs510 = shl i64 %zz506, 30
  %cs511 = shl i64 %cz507, 29
  %vs512 = shl i64 %vz508, 28
  %nzor513 = or i64 %ns509, %zs510
  %cvor514 = or i64 %cs511, %vs512
  %nzcv515 = or i64 %nzor513, %cvor514
  %wp516 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv515, ptr %wp516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f24c word 0x54fffba1
  %r517.p = getelementptr inbounds i8, ptr %c, i64 272
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %fsh519 = lshr i64 %r517, 30
  %ftr520 = trunc i64 %fsh519 to i1
  %cond518 = xor i1 %ftr520, true
  br i1 %cond518, label %L_80015f1c0, label %L_80015f250
L_80015f250:
  ; @pc 0x80015f250 word 0x36000217
  %r521.p = getelementptr inbounds i8, ptr %c, i64 184
  %r521 = load i64, ptr %r521.p, align 8, !alias.scope !3, !noalias !4
  %t522 = and i64 %r521, 1
  %cmp523 = icmp eq i64 %t522, 0
  br i1 %cmp523, label %L_80015f290, label %L_80015f254_ft
L_80015f290:
  ; @pc 0x80015f290 word 0x9001c008
  %wp577 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f294 word 0x520002f7
  %r578.p = getelementptr inbounds i8, ptr %c, i64 184
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %c579 = trunc i64 %r578 to i32
  %t580 = xor i32 %c579, 1
  %c581 = zext i32 %t580 to i64
  %wp582 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c581, ptr %wp582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f298 word 0xf9452108
  %r583.p = getelementptr inbounds i8, ptr %c, i64 64
  %r583 = load i64, ptr %r583.p, align 8, !alias.scope !3, !noalias !4
  %t584 = add i64 %r583, 2624
  %gmp585 = inttoptr i64 %t584 to ptr
  %gml586 = load i64, ptr %gmp585, align 1, !alias.scope !4, !noalias !3
  %wp587 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml586, ptr %wp587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f29c word 0x140001e2
  br label %L_80015fa24
L_80015f2a0:
  ; @pc 0x80015f2a0 word 0x8b0a117a
  %r588.p = getelementptr inbounds i8, ptr %c, i64 88
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %r589.p = getelementptr inbounds i8, ptr %c, i64 80
  %r589 = load i64, ptr %r589.p, align 8, !alias.scope !3, !noalias !4
  %t590 = shl i64 %r589, 4
  %t591 = add i64 %r588, %t590
  %wp592 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t591, ptr %wp592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2a4 word 0x52b84019
  %c593 = zext i32 -1040187392 to i64
  %wp594 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c593, ptr %wp594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2a8 word 0xaa1a03fb
  %r595.p = getelementptr inbounds i8, ptr %c, i64 208
  %r595 = load i64, ptr %r595.p, align 8, !alias.scope !3, !noalias !4
  %t596 = or i64 0, %r595
  %wp597 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t596, ptr %wp597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2ac word 0xb8408f68
  %r598.p = getelementptr inbounds i8, ptr %c, i64 216
  %r598 = load i64, ptr %r598.p, align 8, !alias.scope !3, !noalias !4
  %t599 = add i64 %r598, 8
  %gmp600 = inttoptr i64 %t599 to ptr
  %gml601 = load i32, ptr %gmp600, align 1, !alias.scope !4, !noalias !3
  %c602 = zext i32 %gml601 to i64
  %wp603 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t599, ptr %wp603, align 8, !alias.scope !3, !noalias !4
  %wp604 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c602, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2b0 word 0xaa1b03f4
  %r605.p = getelementptr inbounds i8, ptr %c, i64 216
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %t606 = or i64 0, %r605
  %wp607 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t606, ptr %wp607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2b4 word 0x78dfce97
  %r608.p = getelementptr inbounds i8, ptr %c, i64 160
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %t609 = add i64 %r608, -4
  %gmp610 = inttoptr i64 %t609 to ptr
  %gml611 = load i16, ptr %gmp610, align 1, !alias.scope !4, !noalias !3
  %c612 = sext i16 %gml611 to i32
  %wp613 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t609, ptr %wp613, align 8, !alias.scope !3, !noalias !4
  %c614 = zext i32 %c612 to i64
  %wp615 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c614, ptr %wp615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2b8 word 0x0a19011c
  %r616.p = getelementptr inbounds i8, ptr %c, i64 200
  %r616 = load i64, ptr %r616.p, align 8, !alias.scope !3, !noalias !4
  %c617 = trunc i64 %r616 to i32
  %r618.p = getelementptr inbounds i8, ptr %c, i64 64
  %r618 = load i64, ptr %r618.p, align 8, !alias.scope !3, !noalias !4
  %c619 = trunc i64 %r618 to i32
  %t620 = and i32 %c619, %c617
  %c621 = zext i32 %t620 to i64
  %wp622 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c621, ptr %wp622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2bc word 0x36f81117
  %r623.p = getelementptr inbounds i8, ptr %c, i64 184
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %t624 = and i64 %r623, 2147483648
  %cmp625 = icmp eq i64 %t624, 0
  br i1 %cmp625, label %L_80015f4dc, label %L_80015f2c0
L_80015f2c0:
  ; @pc 0x80015f2c0 word 0x529ff388
  %c626 = zext i32 65436 to i64
  %wp627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c626, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2c4 word 0x6b37211f
  %r628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %c629 = trunc i64 %r628 to i32
  %r630.p = getelementptr inbounds i8, ptr %c, i64 184
  %r630 = load i64, ptr %r630.p, align 8, !alias.scope !3, !noalias !4
  %c631 = trunc i64 %r630 to i16
  %c632 = zext i16 %c631 to i64
  %c633 = trunc i64 %c632 to i32
  %t634 = sub i32 %c629, %c633
  %fn635 = icmp slt i32 %t634, 0
  %fz636 = icmp eq i32 %t634, 0
  %fc637 = icmp uge i32 %c629, %c633
  %fx1638 = xor i32 %c629, %c633
  %fx2639 = xor i32 %c629, %t634
  %fva640 = and i32 %fx1638, %fx2639
  %fv641 = icmp slt i32 %fva640, 0
  %nz642 = zext i1 %fn635 to i64
  %zz643 = zext i1 %fz636 to i64
  %cz644 = zext i1 %fc637 to i64
  %vz645 = zext i1 %fv641 to i64
  %ns646 = shl i64 %nz642, 31
  %zs647 = shl i64 %zz643, 30
  %cs648 = shl i64 %cz644, 29
  %vs649 = shl i64 %vz645, 28
  %nzor650 = or i64 %ns646, %zs647
  %cvor651 = or i64 %cs648, %vs649
  %nzcv652 = or i64 %nzor650, %cvor651
  %wp653 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv652, ptr %wp653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2c8 word 0x54000382
  %r654.p = getelementptr inbounds i8, ptr %c, i64 272
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %fsh656 = lshr i64 %r654, 29
  %cond655 = trunc i64 %fsh656 to i1
  br i1 %cond655, label %L_80015f338, label %L_80015f2cc
L_80015f2cc:
  ; @pc 0x80015f2cc word 0xb9400368
  %r657.p = getelementptr inbounds i8, ptr %c, i64 216
  %r657 = load i64, ptr %r657.p, align 8, !alias.scope !3, !noalias !4
  %gmp658 = inttoptr i64 %r657 to ptr
  %gml659 = load i32, ptr %gmp658, align 1, !alias.scope !4, !noalias !3
  %c660 = zext i32 %gml659 to i64
  %wp661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c660, ptr %wp661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2d0 word 0x6b19039f
  %r662.p = getelementptr inbounds i8, ptr %c, i64 224
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %c663 = trunc i64 %r662 to i32
  %r664.p = getelementptr inbounds i8, ptr %c, i64 200
  %r664 = load i64, ptr %r664.p, align 8, !alias.scope !3, !noalias !4
  %c665 = trunc i64 %r664 to i32
  %t666 = sub i32 %c663, %c665
  %fn667 = icmp slt i32 %t666, 0
  %fz668 = icmp eq i32 %t666, 0
  %fc669 = icmp uge i32 %c663, %c665
  %fx1670 = xor i32 %c663, %c665
  %fx2671 = xor i32 %c663, %t666
  %fva672 = and i32 %fx1670, %fx2671
  %fv673 = icmp slt i32 %fva672, 0
  %nz674 = zext i1 %fn667 to i64
  %zz675 = zext i1 %fz668 to i64
  %cz676 = zext i1 %fc669 to i64
  %vz677 = zext i1 %fv673 to i64
  %ns678 = shl i64 %nz674, 31
  %zs679 = shl i64 %zz675, 30
  %cs680 = shl i64 %cz676, 29
  %vs681 = shl i64 %vz677, 28
  %nzor682 = or i64 %ns678, %zs679
  %cvor683 = or i64 %cs680, %vs681
  %nzcv684 = or i64 %nzor682, %cvor683
  %wp685 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv684, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2d4 word 0x12077514
  %r686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r686 = load i64, ptr %r686.p, align 8, !alias.scope !3, !noalias !4
  %c687 = trunc i64 %r686 to i32
  %t688 = and i32 %c687, -25165825
  %c689 = zext i32 %t688 to i64
  %wp690 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c689, ptr %wp690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2d8 word 0x54000040
  %r691.p = getelementptr inbounds i8, ptr %c, i64 272
  %r691 = load i64, ptr %r691.p, align 8, !alias.scope !3, !noalias !4
  %fsh693 = lshr i64 %r691, 30
  %cond692 = trunc i64 %fsh693 to i1
  br i1 %cond692, label %L_80015f2e0, label %L_80015f2dc_ft
L_80015f2e0:
  ; @pc 0x80015f2e0 word 0x9001c009
  %wp697 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2e4 word 0x9001c00a
  %wp698 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34419896320, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2e8 word 0xf9451929
  %r699.p = getelementptr inbounds i8, ptr %c, i64 72
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = add i64 %r699, 2608
  %gmp701 = inttoptr i64 %t700 to ptr
  %gml702 = load i64, ptr %gmp701, align 1, !alias.scope !4, !noalias !3
  %wp703 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml702, ptr %wp703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2ec word 0xf9451d4a
  %r704.p = getelementptr inbounds i8, ptr %c, i64 80
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %t705 = add i64 %r704, 2616
  %gmp706 = inttoptr i64 %t705 to ptr
  %gml707 = load i64, ptr %gmp706, align 1, !alias.scope !4, !noalias !3
  %wp708 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml707, ptr %wp708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2f0 word 0x2a1f03f7
  %t709 = or i32 0, 0
  %c710 = zext i32 %t709 to i64
  %wp711 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c710, ptr %wp711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2f4 word 0xb9400f4b
  %r712.p = getelementptr inbounds i8, ptr %c, i64 208
  %r712 = load i64, ptr %r712.p, align 8, !alias.scope !3, !noalias !4
  %t713 = add i64 %r712, 12
  %gmp714 = inttoptr i64 %t713 to ptr
  %gml715 = load i32, ptr %gmp714, align 1, !alias.scope !4, !noalias !3
  %c716 = zext i32 %gml715 to i64
  %wp717 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c716, ptr %wp717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f2f8 word 0x7100017f
  %r718.p = getelementptr inbounds i8, ptr %c, i64 88
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %c719 = trunc i64 %r718 to i32
  %t720 = sub i32 %c719, 0
  %fn721 = icmp slt i32 %t720, 0
  %fz722 = icmp eq i32 %t720, 0
  %fc723 = icmp uge i32 %c719, 0
  %fx1724 = xor i32 %c719, 0
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
  ; @pc 0x80015f2fc word 0x9a890158
  %r740.p = getelementptr inbounds i8, ptr %c, i64 80
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %r741.p = getelementptr inbounds i8, ptr %c, i64 72
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %r742.p = getelementptr inbounds i8, ptr %c, i64 272
  %r742 = load i64, ptr %r742.p, align 8, !alias.scope !3, !noalias !4
  %fsh744 = lshr i64 %r742, 30
  %cond743 = trunc i64 %fsh744 to i1
  %sel745 = select i1 %cond743, i64 %r740, i64 %r741
  %wp746 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %sel745, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f300 word 0x6a28033f
  %r747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %c748 = trunc i64 %r747 to i32
  %t749 = xor i32 %c748, -1
  %r750.p = getelementptr inbounds i8, ptr %c, i64 200
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %c751 = trunc i64 %r750 to i32
  %t752 = and i32 %c751, %t749
  %fn753 = icmp slt i32 %t752, 0
  %fz754 = icmp eq i32 %t752, 0
  %nz755 = zext i1 %fn753 to i64
  %zz756 = zext i1 %fz754 to i64
  %ns757 = shl i64 %nz755, 31
  %zs758 = shl i64 %zz756, 30
  %nzcv759 = or i64 %ns757, %zs758
  %wp760 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv759, ptr %wp760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f304 word 0xf9400279
  %r761.p = getelementptr inbounds i8, ptr %c, i64 152
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %gmp762 = inttoptr i64 %r761 to ptr
  %gml763 = load i64, ptr %gmp762, align 1, !alias.scope !4, !noalias !3
  %wp764 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml763, ptr %wp764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f308 word 0xf9000278
  %r765.p = getelementptr inbounds i8, ptr %c, i64 152
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %r766.p = getelementptr inbounds i8, ptr %c, i64 192
  %r766 = load i64, ptr %r766.p, align 8, !alias.scope !3, !noalias !4
  %gmp767 = inttoptr i64 %r765 to ptr
  store i64 %r766, ptr %gmp767, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f30c word 0x54000820
  %r768.p = getelementptr inbounds i8, ptr %c, i64 272
  %r768 = load i64, ptr %r768.p, align 8, !alias.scope !3, !noalias !4
  %fsh770 = lshr i64 %r768, 30
  %cond769 = trunc i64 %fsh770 to i1
  br i1 %cond769, label %L_80015f410, label %L_80015f310
L_80015f310:
  ; @pc 0x80015f310 word 0x52800028
  %c771 = zext i32 1 to i64
  %wp772 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c771, ptr %wp772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f314 word 0xa9574ff4
  %r773.p = getelementptr inbounds i8, ptr %c, i64 256
  %r773 = load i64, ptr %r773.p, align 8, !alias.scope !3, !noalias !4
  %t774 = add i64 %r773, 368
  %t775 = add i64 %t774, 8
  %gmp776 = inttoptr i64 %t774 to ptr
  %gml777 = load i64, ptr %gmp776, align 1, !alias.scope !4, !noalias !3
  %gmp778 = inttoptr i64 %t775 to ptr
  %gml779 = load i64, ptr %gmp778, align 1, !alias.scope !4, !noalias !3
  %wp780 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml777, ptr %wp780, align 8, !alias.scope !3, !noalias !4
  %wp781 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml779, ptr %wp781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f318 word 0x0a370100
  %r782.p = getelementptr inbounds i8, ptr %c, i64 184
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %c783 = trunc i64 %r782 to i32
  %t784 = xor i32 %c783, -1
  %r785.p = getelementptr inbounds i8, ptr %c, i64 64
  %r785 = load i64, ptr %r785.p, align 8, !alias.scope !3, !noalias !4
  %c786 = trunc i64 %r785 to i32
  %t787 = and i32 %c786, %t784
  %c788 = zext i32 %t787 to i64
  %wp789 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c788, ptr %wp789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f31c word 0xa95657f6
  %r790.p = getelementptr inbounds i8, ptr %c, i64 256
  %r790 = load i64, ptr %r790.p, align 8, !alias.scope !3, !noalias !4
  %t791 = add i64 %r790, 352
  %t792 = add i64 %t791, 8
  %gmp793 = inttoptr i64 %t791 to ptr
  %gml794 = load i64, ptr %gmp793, align 1, !alias.scope !4, !noalias !3
  %gmp795 = inttoptr i64 %t792 to ptr
  %gml796 = load i64, ptr %gmp795, align 1, !alias.scope !4, !noalias !3
  %wp797 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml794, ptr %wp797, align 8, !alias.scope !3, !noalias !4
  %wp798 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml796, ptr %wp798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f320 word 0xa9555ff8
  %r799.p = getelementptr inbounds i8, ptr %c, i64 256
  %r799 = load i64, ptr %r799.p, align 8, !alias.scope !3, !noalias !4
  %t800 = add i64 %r799, 336
  %t801 = add i64 %t800, 8
  %gmp802 = inttoptr i64 %t800 to ptr
  %gml803 = load i64, ptr %gmp802, align 1, !alias.scope !4, !noalias !3
  %gmp804 = inttoptr i64 %t801 to ptr
  %gml805 = load i64, ptr %gmp804, align 1, !alias.scope !4, !noalias !3
  %wp806 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml803, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  %wp807 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml805, ptr %wp807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f324 word 0xa95467fa
  %r808.p = getelementptr inbounds i8, ptr %c, i64 256
  %r808 = load i64, ptr %r808.p, align 8, !alias.scope !3, !noalias !4
  %t809 = add i64 %r808, 320
  %t810 = add i64 %t809, 8
  %gmp811 = inttoptr i64 %t809 to ptr
  %gml812 = load i64, ptr %gmp811, align 1, !alias.scope !4, !noalias !3
  %gmp813 = inttoptr i64 %t810 to ptr
  %gml814 = load i64, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %wp815 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml812, ptr %wp815, align 8, !alias.scope !3, !noalias !4
  %wp816 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml814, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f328 word 0xa9536ffc
  %r817.p = getelementptr inbounds i8, ptr %c, i64 256
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %t818 = add i64 %r817, 304
  %t819 = add i64 %t818, 8
  %gmp820 = inttoptr i64 %t818 to ptr
  %gml821 = load i64, ptr %gmp820, align 1, !alias.scope !4, !noalias !3
  %gmp822 = inttoptr i64 %t819 to ptr
  %gml823 = load i64, ptr %gmp822, align 1, !alias.scope !4, !noalias !3
  %wp824 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml821, ptr %wp824, align 8, !alias.scope !3, !noalias !4
  %wp825 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml823, ptr %wp825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f32c word 0xa9527bfd
  %r826.p = getelementptr inbounds i8, ptr %c, i64 256
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %t827 = add i64 %r826, 288
  %t828 = add i64 %t827, 8
  %gmp829 = inttoptr i64 %t827 to ptr
  %gml830 = load i64, ptr %gmp829, align 1, !alias.scope !4, !noalias !3
  %gmp831 = inttoptr i64 %t828 to ptr
  %gml832 = load i64, ptr %gmp831, align 1, !alias.scope !4, !noalias !3
  %wp833 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml830, ptr %wp833, align 8, !alias.scope !3, !noalias !4
  %wp834 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml832, ptr %wp834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f330 word 0x910603ff
  %r835.p = getelementptr inbounds i8, ptr %c, i64 256
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %t836 = add i64 %r835, 384
  %wp837 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t836, ptr %wp837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f334 word 0xd65f03c0
  ret void
L_80015f338:
  ; @pc 0x80015f338 word 0x79400f48
  %r838.p = getelementptr inbounds i8, ptr %c, i64 208
  %r838 = load i64, ptr %r838.p, align 8, !alias.scope !3, !noalias !4
  %t839 = add i64 %r838, 6
  %gmp840 = inttoptr i64 %t839 to ptr
  %gml841 = load i16, ptr %gmp840, align 1, !alias.scope !4, !noalias !3
  %c842 = zext i16 %gml841 to i64
  %wp843 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c842, ptr %wp843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f33c word 0x6b19039f
  %r844.p = getelementptr inbounds i8, ptr %c, i64 224
  %r844 = load i64, ptr %r844.p, align 8, !alias.scope !3, !noalias !4
  %c845 = trunc i64 %r844 to i32
  %r846.p = getelementptr inbounds i8, ptr %c, i64 200
  %r846 = load i64, ptr %r846.p, align 8, !alias.scope !3, !noalias !4
  %c847 = trunc i64 %r846 to i32
  %t848 = sub i32 %c845, %c847
  %fn849 = icmp slt i32 %t848, 0
  %fz850 = icmp eq i32 %t848, 0
  %fc851 = icmp uge i32 %c845, %c847
  %fx1852 = xor i32 %c845, %c847
  %fx2853 = xor i32 %c845, %t848
  %fva854 = and i32 %fx1852, %fx2853
  %fv855 = icmp slt i32 %fva854, 0
  %nz856 = zext i1 %fn849 to i64
  %zz857 = zext i1 %fz850 to i64
  %cz858 = zext i1 %fc851 to i64
  %vz859 = zext i1 %fv855 to i64
  %ns860 = shl i64 %nz856, 31
  %zs861 = shl i64 %zz857, 30
  %cs862 = shl i64 %cz858, 29
  %vs863 = shl i64 %vz859, 28
  %nzor864 = or i64 %ns860, %zs861
  %cvor865 = or i64 %cs862, %vs863
  %nzcv866 = or i64 %nzor864, %cvor865
  %wp867 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv866, ptr %wp867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f340 word 0x12003918
  %r868.p = getelementptr inbounds i8, ptr %c, i64 64
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %c869 = trunc i64 %r868 to i32
  %t870 = and i32 %c869, 32767
  %c871 = zext i32 %t870 to i64
  %wp872 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c871, ptr %wp872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f344 word 0x54003a60
  %r873.p = getelementptr inbounds i8, ptr %c, i64 272
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %fsh875 = lshr i64 %r873, 30
  %cond874 = trunc i64 %fsh875 to i1
  br i1 %cond874, label %L_80015fa90, label %L_80015f348_ft
L_80015f350:
  ; @pc 0x80015f350 word 0xf001cae8
  %wp882 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f354 word 0x9114a108
  %r883.p = getelementptr inbounds i8, ptr %c, i64 64
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %t884 = add i64 %r883, 1320
  %wp885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t884, ptr %wp885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f358 word 0xf9400279
  %r886.p = getelementptr inbounds i8, ptr %c, i64 152
  %r886 = load i64, ptr %r886.p, align 8, !alias.scope !3, !noalias !4
  %gmp887 = inttoptr i64 %r886 to ptr
  %gml888 = load i64, ptr %gmp887, align 1, !alias.scope !4, !noalias !3
  %wp889 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml888, ptr %wp889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f35c word 0x08dffd08
  %r890.p = getelementptr inbounds i8, ptr %c, i64 64
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %atp891 = inttoptr i64 %r890 to ptr
  %lda892 = load atomic i8, ptr %atp891 acquire, align 1, !alias.scope !4, !noalias !3
  %c893 = zext i8 %lda892 to i64
  %wp894 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c893, ptr %wp894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f360 word 0x36003c28
  %r895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r895 = load i64, ptr %r895.p, align 8, !alias.scope !3, !noalias !4
  %t896 = and i64 %r895, 1
  %cmp897 = icmp eq i64 %t896, 0
  br i1 %cmp897, label %L_80015fae4, label %L_80015f364
L_80015f364:
  ; @pc 0x80015f364 word 0x37783f17
  %r898.p = getelementptr inbounds i8, ptr %c, i64 184
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %t899 = and i64 %r898, 32768
  %cmp900 = icmp ne i64 %t899, 0
  br i1 %cmp900, label %L_80015fb44, label %L_80015f368_ft
L_80015f3bc:
  ; @pc 0x80015f3bc word 0x3500339a
  %r1049.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1049 = load i64, ptr %r1049.p, align 8, !alias.scope !3, !noalias !4
  %c1050 = trunc i64 %r1049 to i32
  %cmp1051 = icmp ne i32 %c1050, 0
  br i1 %cmp1051, label %L_80015fa2c, label %L_80015f3c0_ft
L_80015f3c8:
  ; @pc 0x80015f3c8 word 0x531e7518
  %r1067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1067 = load i64, ptr %r1067.p, align 8, !alias.scope !3, !noalias !4
  %c1068 = trunc i64 %r1067 to i32
  %ror1069 = call i32 @llvm.fshr.i32(i32 %c1068, i32 %c1068, i32 30)
  %t1070 = and i32 %ror1069, -4
  %c1071 = zext i32 %t1070 to i64
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1071, ptr %wp1072, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f3cc
L_80015f3cc:
  ; @pc 0x80015f3cc word 0xf9400ae0
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %t1074 = add i64 %r1073, 16
  %gmp1075 = inttoptr i64 %t1074 to ptr
  %gml1076 = load i64, ptr %gmp1075, align 1, !alias.scope !4, !noalias !3
  %wp1077 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1076, ptr %wp1077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3d0 word 0xb4000180
  %r1078.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1078 = load i64, ptr %r1078.p, align 8, !alias.scope !3, !noalias !4
  %cmp1079 = icmp eq i64 %r1078, 0
  br i1 %cmp1079, label %L_80015f400, label %L_80015f3d4_ft
L_80015f3fc:
  ; @pc 0x80015f3fc word 0xf9400400
  %r1152.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1152 = load i64, ptr %r1152.p, align 8, !alias.scope !3, !noalias !4
  %t1153 = add i64 %r1152, 8
  %gmp1154 = inttoptr i64 %t1153 to ptr
  %gml1155 = load i64, ptr %gmp1154, align 1, !alias.scope !4, !noalias !3
  %wp1156 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1155, ptr %wp1156, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f400
L_80015f400:
  ; @pc 0x80015f400 word 0x8b38c018
  %r1157.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1157 = load i64, ptr %r1157.p, align 8, !alias.scope !3, !noalias !4
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %c1159 = trunc i64 %r1158 to i32
  %c1160 = sext i32 %c1159 to i64
  %t1161 = add i64 %r1157, %c1160
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f404 word 0x2a1f03f7
  %t1163 = or i32 0, 0
  %c1164 = zext i32 %t1163 to i64
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f408 word 0xf9000278
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %r1167.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1167 = load i64, ptr %r1167.p, align 8, !alias.scope !3, !noalias !4
  %gmp1168 = inttoptr i64 %r1166 to ptr
  store i64 %r1167, ptr %gmp1168, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f40c word 0x3607f83a
  %r1169.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1169 = load i64, ptr %r1169.p, align 8, !alias.scope !3, !noalias !4
  %t1170 = and i64 %r1169, 1
  %cmp1171 = icmp eq i64 %t1170, 0
  br i1 %cmp1171, label %L_80015f310, label %L_80015f410
L_80015f410:
  ; @pc 0x80015f410 word 0x2a0403fb
  %r1172.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1172 = load i64, ptr %r1172.p, align 8, !alias.scope !3, !noalias !4
  %c1173 = trunc i64 %r1172 to i32
  %t1174 = or i32 0, %c1173
  %c1175 = zext i32 %t1174 to i64
  %wp1176 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1175, ptr %wp1176, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f414
L_80015f414:
  ; @pc 0x80015f414 word 0xf9400aa0
  %r1177.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1177 = load i64, ptr %r1177.p, align 8, !alias.scope !3, !noalias !4
  %t1178 = add i64 %r1177, 16
  %gmp1179 = inttoptr i64 %t1178 to ptr
  %gml1180 = load i64, ptr %gmp1179, align 1, !alias.scope !4, !noalias !3
  %wp1181 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1180, ptr %wp1181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f418 word 0xf9400008
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %gmp1183 = inttoptr i64 %r1182 to ptr
  %gml1184 = load i64, ptr %gmp1183, align 1, !alias.scope !4, !noalias !3
  %wp1185 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1184, ptr %wp1185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f41c word 0xf9402d08
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %t1187 = add i64 %r1186, 88
  %gmp1188 = inttoptr i64 %t1187 to ptr
  %gml1189 = load i64, ptr %gmp1188, align 1, !alias.scope !4, !noalias !3
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1189, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f420 word 0xd63f0100
  %r1191.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1191 = load i64, ptr %r1191.p, align 8, !alias.scope !3, !noalias !4
  %fp1192 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1191, ptr %fp1192, align 8, !alias.scope !3, !noalias !4
  %wp1193 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177124, ptr %wp1193, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f424 word 0xb50076f9
  %r1194.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1194 = load i64, ptr %r1194.p, align 8, !alias.scope !3, !noalias !4
  %cmp1195 = icmp ne i64 %r1194, 0
  br i1 %cmp1195, label %L_800160300, label %L_80015f428_ft
L_80015f43c:
  ; @pc 0x80015f43c word 0x12800008
  %c1214 = zext i32 -1 to i64
  %wp1215 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1214, ptr %wp1215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f440 word 0xf9001b28
  %r1216.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1216 = load i64, ptr %r1216.p, align 8, !alias.scope !3, !noalias !4
  %t1217 = add i64 %r1216, 48
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %gmp1219 = inttoptr i64 %t1217 to ptr
  store i64 %r1218, ptr %gmp1219, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f444 word 0x9001bf68
  %wp1220 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f448 word 0xf945bd08
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %t1222 = add i64 %r1221, 2936
  %gmp1223 = inttoptr i64 %t1222 to ptr
  %gml1224 = load i64, ptr %gmp1223, align 1, !alias.scope !4, !noalias !3
  %wp1225 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1224, ptr %wp1225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f44c word 0xa9017f3f
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %t1227 = add i64 %r1226, 16
  %t1228 = add i64 %t1227, 8
  %gmp1229 = inttoptr i64 %t1227 to ptr
  store i64 0, ptr %gmp1229, align 1, !alias.scope !4, !noalias !3
  %gmp1230 = inttoptr i64 %t1228 to ptr
  store i64 0, ptr %gmp1230, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f450 word 0xa9027f3f
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %t1232 = add i64 %r1231, 32
  %t1233 = add i64 %t1232, 8
  %gmp1234 = inttoptr i64 %t1232 to ptr
  store i64 0, ptr %gmp1234, align 1, !alias.scope !4, !noalias !3
  %gmp1235 = inttoptr i64 %t1233 to ptr
  store i64 0, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f454 word 0xa9007f28
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %t1237 = add i64 %r1236, 8
  %r1238.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1238 = load i64, ptr %r1238.p, align 8, !alias.scope !3, !noalias !4
  %gmp1239 = inttoptr i64 %r1236 to ptr
  store i64 %r1238, ptr %gmp1239, align 1, !alias.scope !4, !noalias !3
  %gmp1240 = inttoptr i64 %t1237 to ptr
  store i64 0, ptr %gmp1240, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f458 word 0x29402408
  %r1241.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1241 = load i64, ptr %r1241.p, align 8, !alias.scope !3, !noalias !4
  %t1242 = add i64 %r1241, 4
  %gmp1243 = inttoptr i64 %r1241 to ptr
  %gml1244 = load i32, ptr %gmp1243, align 1, !alias.scope !4, !noalias !3
  %c1245 = zext i32 %gml1244 to i64
  %gmp1246 = inttoptr i64 %t1242 to ptr
  %gml1247 = load i32, ptr %gmp1246, align 1, !alias.scope !4, !noalias !3
  %c1248 = zext i32 %gml1247 to i64
  %wp1249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1245, ptr %wp1249, align 8, !alias.scope !3, !noalias !4
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1248, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f45c word 0x93407d08
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %t1252 = lshr i64 %r1251, 31
  %t1253 = and i64 %t1252, 1
  %t1254 = sub i64 0, %t1253
  %t1255 = and i64 %t1254, -4294967296
  %t1256 = and i64 %r1251, 4294967295
  %t1257 = or i64 %t1255, %t1256
  %wp1258 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1257, ptr %wp1258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f460 word 0x6b09011f
  %r1259.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1259 = load i64, ptr %r1259.p, align 8, !alias.scope !3, !noalias !4
  %c1260 = trunc i64 %r1259 to i32
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %c1262 = trunc i64 %r1261 to i32
  %t1263 = sub i32 %c1260, %c1262
  %fn1264 = icmp slt i32 %t1263, 0
  %fz1265 = icmp eq i32 %t1263, 0
  %fc1266 = icmp uge i32 %c1260, %c1262
  %fx11267 = xor i32 %c1260, %c1262
  %fx21268 = xor i32 %c1260, %t1263
  %fva1269 = and i32 %fx11267, %fx21268
  %fv1270 = icmp slt i32 %fva1269, 0
  %nz1271 = zext i1 %fn1264 to i64
  %zz1272 = zext i1 %fz1265 to i64
  %cz1273 = zext i1 %fc1266 to i64
  %vz1274 = zext i1 %fv1270 to i64
  %ns1275 = shl i64 %nz1271, 31
  %zs1276 = shl i64 %zz1272, 30
  %cs1277 = shl i64 %cz1273, 29
  %vs1278 = shl i64 %vz1274, 28
  %nzor1279 = or i64 %ns1275, %zs1276
  %cvor1280 = or i64 %cs1277, %vs1278
  %nzcv1281 = or i64 %nzor1279, %cvor1280
  %wp1282 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1281, ptr %wp1282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f464 word 0x540000ca
  %r1283.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1283 = load i64, ptr %r1283.p, align 8, !alias.scope !3, !noalias !4
  %fsh1285 = lshr i64 %r1283, 31
  %ftr1286 = trunc i64 %fsh1285 to i1
  %fsh1287 = lshr i64 %r1283, 28
  %ftr1288 = trunc i64 %fsh1287 to i1
  %cond1284 = icmp eq i1 %ftr1286, %ftr1288
  br i1 %cond1284, label %L_80015f47c, label %L_80015f468_ft
L_80015f47c:
  ; @pc 0x80015f47c word 0xf94002c8
  %r1314.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1314 = load i64, ptr %r1314.p, align 8, !alias.scope !3, !noalias !4
  %gmp1315 = inttoptr i64 %r1314 to ptr
  %gml1316 = load i64, ptr %gmp1315, align 1, !alias.scope !4, !noalias !3
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1316, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f480 word 0x52800049
  %c1318 = zext i32 2 to i64
  %wp1319 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1318, ptr %wp1319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f484 word 0x12003e8a
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %c1321 = trunc i64 %r1320 to i32
  %t1322 = and i32 %c1321, 65535
  %c1323 = zext i32 %t1322 to i64
  %wp1324 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1323, ptr %wp1324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f488 word 0x2905272a
  %r1325.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1325 = load i64, ptr %r1325.p, align 8, !alias.scope !3, !noalias !4
  %t1326 = add i64 %r1325, 40
  %t1327 = add i64 %t1326, 4
  %r1328.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1328 = load i64, ptr %r1328.p, align 8, !alias.scope !3, !noalias !4
  %c1329 = trunc i64 %r1328 to i32
  %gmp1330 = inttoptr i64 %t1326 to ptr
  store i32 %c1329, ptr %gmp1330, align 1, !alias.scope !4, !noalias !3
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %c1332 = trunc i64 %r1331 to i32
  %gmp1333 = inttoptr i64 %t1327 to ptr
  store i32 %c1332, ptr %gmp1333, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f48c word 0xa9006328
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %t1335 = add i64 %r1334, 8
  %r1336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1336 = load i64, ptr %r1336.p, align 8, !alias.scope !3, !noalias !4
  %gmp1337 = inttoptr i64 %r1334 to ptr
  store i64 %r1336, ptr %gmp1337, align 1, !alias.scope !4, !noalias !3
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %gmp1339 = inttoptr i64 %t1335 to ptr
  store i64 %r1338, ptr %gmp1339, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f490 word 0xf9400aa0
  %r1340.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1340 = load i64, ptr %r1340.p, align 8, !alias.scope !3, !noalias !4
  %t1341 = add i64 %r1340, 16
  %gmp1342 = inttoptr i64 %t1341 to ptr
  %gml1343 = load i64, ptr %gmp1342, align 1, !alias.scope !4, !noalias !3
  %wp1344 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1343, ptr %wp1344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f494 word 0xf9400008
  %r1345.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1345 = load i64, ptr %r1345.p, align 8, !alias.scope !3, !noalias !4
  %gmp1346 = inttoptr i64 %r1345 to ptr
  %gml1347 = load i64, ptr %gmp1346, align 1, !alias.scope !4, !noalias !3
  %wp1348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1347, ptr %wp1348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f498 word 0xf9402908
  %r1349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1349 = load i64, ptr %r1349.p, align 8, !alias.scope !3, !noalias !4
  %t1350 = add i64 %r1349, 80
  %gmp1351 = inttoptr i64 %t1350 to ptr
  %gml1352 = load i64, ptr %gmp1351, align 1, !alias.scope !4, !noalias !3
  %wp1353 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1352, ptr %wp1353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f49c word 0xd63f0100
  %r1354.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1354 = load i64, ptr %r1354.p, align 8, !alias.scope !3, !noalias !4
  %fp1355 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1354, ptr %fp1355, align 8, !alias.scope !3, !noalias !4
  %wp1356 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177248, ptr %wp1356, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f4a0 word 0xb4007580
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %cmp1358 = icmp eq i64 %r1357, 0
  br i1 %cmp1358, label %L_800160350, label %L_80015f4a4_ft
L_80015f4d0:
  ; @pc 0x80015f4d0 word 0xf9000b28
  %r1434.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1434 = load i64, ptr %r1434.p, align 8, !alias.scope !3, !noalias !4
  %t1435 = add i64 %r1434, 16
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %gmp1437 = inttoptr i64 %t1435 to ptr
  store i64 %r1436, ptr %gmp1437, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f4d4 word 0xb900333f
  %r1438.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1438 = load i64, ptr %r1438.p, align 8, !alias.scope !3, !noalias !4
  %t1439 = add i64 %r1438, 48
  %gmp1440 = inttoptr i64 %t1439 to ptr
  store i32 0, ptr %gmp1440, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f4d8 word 0x14000153
  br label %L_80015fa24
L_80015f4dc:
  ; @pc 0x80015f4dc word 0xf94006a8
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %t1442 = add i64 %r1441, 8
  %gmp1443 = inttoptr i64 %t1442 to ptr
  %gml1444 = load i64, ptr %gmp1443, align 1, !alias.scope !4, !noalias !3
  %wp1445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1444, ptr %wp1445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4e0 word 0x7941b909
  %r1446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1446 = load i64, ptr %r1446.p, align 8, !alias.scope !3, !noalias !4
  %t1447 = add i64 %r1446, 220
  %gmp1448 = inttoptr i64 %t1447 to ptr
  %gml1449 = load i16, ptr %gmp1448, align 1, !alias.scope !4, !noalias !3
  %c1450 = zext i16 %gml1449 to i64
  %wp1451 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1450, ptr %wp1451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4e4 word 0x35002229
  %r1452.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1452 = load i64, ptr %r1452.p, align 8, !alias.scope !3, !noalias !4
  %c1453 = trunc i64 %r1452 to i32
  %cmp1454 = icmp ne i32 %c1453, 0
  br i1 %cmp1454, label %L_80015f928, label %L_80015f4e8_ft
L_80015f4fc:
  ; @pc 0x80015f4fc word 0x9001c008
  %wp1510 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f500 word 0xf9452d08
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %t1512 = add i64 %r1511, 2648
  %gmp1513 = inttoptr i64 %t1512 to ptr
  %gml1514 = load i64, ptr %gmp1513, align 1, !alias.scope !4, !noalias !3
  %wp1515 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1514, ptr %wp1515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f504 word 0x08dffd08
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %atp1517 = inttoptr i64 %r1516 to ptr
  %lda1518 = load atomic i8, ptr %atp1517 acquire, align 1, !alias.scope !4, !noalias !3
  %c1519 = zext i8 %lda1518 to i64
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f508 word 0x36003e28
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %t1522 = and i64 %r1521, 1
  %cmp1523 = icmp eq i64 %t1522, 0
  br i1 %cmp1523, label %L_80015fccc, label %L_80015f50c
L_80015f50c:
  ; @pc 0x80015f50c word 0xb001c0c9
  %wp1524 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f510 word 0xf941b529
  %r1525.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1525 = load i64, ptr %r1525.p, align 8, !alias.scope !3, !noalias !4
  %t1526 = add i64 %r1525, 872
  %gmp1527 = inttoptr i64 %t1526 to ptr
  %gml1528 = load i64, ptr %gmp1527, align 1, !alias.scope !4, !noalias !3
  %wp1529 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1528, ptr %wp1529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f514 word 0xb4000737
  %r1530.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1530 = load i64, ptr %r1530.p, align 8, !alias.scope !3, !noalias !4
  %cmp1531 = icmp eq i64 %r1530, 0
  br i1 %cmp1531, label %L_80015f5f8, label %L_80015f518_ft
L_80015f538:
  ; @pc 0x80015f538 word 0xf001bf68
  %wp1580 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f53c word 0xf9430108
  %r1581.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1581 = load i64, ptr %r1581.p, align 8, !alias.scope !3, !noalias !4
  %t1582 = add i64 %r1581, 1536
  %gmp1583 = inttoptr i64 %t1582 to ptr
  %gml1584 = load i64, ptr %gmp1583, align 1, !alias.scope !4, !noalias !3
  %wp1585 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1584, ptr %wp1585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f540 word 0x08dffd08
  %r1586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1586 = load i64, ptr %r1586.p, align 8, !alias.scope !3, !noalias !4
  %atp1587 = inttoptr i64 %r1586 to ptr
  %lda1588 = load atomic i8, ptr %atp1587 acquire, align 1, !alias.scope !4, !noalias !3
  %c1589 = zext i8 %lda1588 to i64
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f544 word 0x36004dc8
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %t1592 = and i64 %r1591, 1
  %cmp1593 = icmp eq i64 %t1592, 0
  br i1 %cmp1593, label %L_80015fefc, label %L_80015f548
L_80015f548:
  ; @pc 0x80015f548 word 0xf001bf68
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f54c word 0xf9430d08
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = add i64 %r1595, 1560
  %gmp1597 = inttoptr i64 %t1596 to ptr
  %gml1598 = load i64, ptr %gmp1597, align 1, !alias.scope !4, !noalias !3
  %wp1599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1598, ptr %wp1599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f550 word 0x08dffd08
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %atp1601 = inttoptr i64 %r1600 to ptr
  %lda1602 = load atomic i8, ptr %atp1601 acquire, align 1, !alias.scope !4, !noalias !3
  %c1603 = zext i8 %lda1602 to i64
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f554 word 0x37000528
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %t1606 = and i64 %r1605, 1
  %cmp1607 = icmp ne i64 %t1606, 0
  br i1 %cmp1607, label %L_80015f5f8, label %L_80015f558_ft
L_80015f5b8:
  ; @pc 0x80015f5b8 word 0x9001c001
  %wp1681 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5bc word 0xaa1703e0
  %r1682.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1682 = load i64, ptr %r1682.p, align 8, !alias.scope !3, !noalias !4
  %t1683 = or i64 0, %r1682
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5c0 word 0xf9452821
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %t1686 = add i64 %r1685, 2640
  %gmp1687 = inttoptr i64 %t1686 to ptr
  %gml1688 = load i64, ptr %gmp1687, align 1, !alias.scope !4, !noalias !3
  %wp1689 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1688, ptr %wp1689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5c4 word 0x2a0403f8
  %r1690.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1690 = load i64, ptr %r1690.p, align 8, !alias.scope !3, !noalias !4
  %c1691 = trunc i64 %r1690 to i32
  %t1692 = or i32 0, %c1691
  %c1693 = zext i32 %t1692 to i64
  %wp1694 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1693, ptr %wp1694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5c8 word 0xaa1303f9
  %r1695.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1695 = load i64, ptr %r1695.p, align 8, !alias.scope !3, !noalias !4
  %t1696 = or i64 0, %r1695
  %wp1697 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1696, ptr %wp1697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5cc word 0xaa1603f3
  %r1698.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1698 = load i64, ptr %r1698.p, align 8, !alias.scope !3, !noalias !4
  %t1699 = or i64 0, %r1698
  %wp1700 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1699, ptr %wp1700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5d0 word 0xaa0303f6
  %r1701.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1701 = load i64, ptr %r1701.p, align 8, !alias.scope !3, !noalias !4
  %t1702 = or i64 0, %r1701
  %wp1703 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1702, ptr %wp1703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5d4 word 0xd63f0100
  %r1704.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1704 = load i64, ptr %r1704.p, align 8, !alias.scope !3, !noalias !4
  %fp1705 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1704, ptr %fp1705, align 8, !alias.scope !3, !noalias !4
  %wp1706 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177560, ptr %wp1706, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f5d8 word 0xb001c0c9
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5dc word 0xaa1603e3
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = or i64 0, %r1708
  %wp1710 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1709, ptr %wp1710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5e0 word 0xf941b529
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %t1712 = add i64 %r1711, 872
  %gmp1713 = inttoptr i64 %t1712 to ptr
  %gml1714 = load i64, ptr %gmp1713, align 1, !alias.scope !4, !noalias !3
  %wp1715 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1714, ptr %wp1715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5e4 word 0xaa1303f6
  %r1716.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1716 = load i64, ptr %r1716.p, align 8, !alias.scope !3, !noalias !4
  %t1717 = or i64 0, %r1716
  %wp1718 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1717, ptr %wp1718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5e8 word 0xaa1903f3
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %t1720 = or i64 0, %r1719
  %wp1721 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1720, ptr %wp1721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5ec word 0x52b84019
  %c1722 = zext i32 -1040187392 to i64
  %wp1723 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1722, ptr %wp1723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5f0 word 0x2a1803e4
  %r1724.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1724 = load i64, ptr %r1724.p, align 8, !alias.scope !3, !noalias !4
  %c1725 = trunc i64 %r1724 to i32
  %t1726 = or i32 0, %c1725
  %c1727 = zext i32 %t1726 to i64
  %wp1728 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1727, ptr %wp1728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5f4 word 0xb5ffe6c0
  %r1729.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1729 = load i64, ptr %r1729.p, align 8, !alias.scope !3, !noalias !4
  %cmp1730 = icmp ne i64 %r1729, 0
  br i1 %cmp1730, label %L_80015f2cc, label %L_80015f5f8
L_80015f5f8:
  ; @pc 0x80015f5f8 word 0x9001c008
  %wp1731 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5fc word 0xf9453508
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %t1733 = add i64 %r1732, 2664
  %gmp1734 = inttoptr i64 %t1733 to ptr
  %gml1735 = load i64, ptr %gmp1734, align 1, !alias.scope !4, !noalias !3
  %wp1736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1735, ptr %wp1736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f600 word 0x08dffd08
  %r1737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1737 = load i64, ptr %r1737.p, align 8, !alias.scope !3, !noalias !4
  %atp1738 = inttoptr i64 %r1737 to ptr
  %lda1739 = load atomic i8, ptr %atp1738 acquire, align 1, !alias.scope !4, !noalias !3
  %c1740 = zext i8 %lda1739 to i64
  %wp1741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1740, ptr %wp1741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f604 word 0x360038c8
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %t1743 = and i64 %r1742, 1
  %cmp1744 = icmp eq i64 %t1743, 0
  br i1 %cmp1744, label %L_80015fd1c, label %L_80015f608
L_80015f608:
  ; @pc 0x80015f608 word 0xb4000737
  %r1745.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1745 = load i64, ptr %r1745.p, align 8, !alias.scope !3, !noalias !4
  %cmp1746 = icmp eq i64 %r1745, 0
  br i1 %cmp1746, label %L_80015f6ec, label %L_80015f60c_ft
L_80015f62c:
  ; @pc 0x80015f62c word 0xf001bf68
  %wp1795 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f630 word 0xf9430108
  %r1796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1796 = load i64, ptr %r1796.p, align 8, !alias.scope !3, !noalias !4
  %t1797 = add i64 %r1796, 1536
  %gmp1798 = inttoptr i64 %t1797 to ptr
  %gml1799 = load i64, ptr %gmp1798, align 1, !alias.scope !4, !noalias !3
  %wp1800 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1799, ptr %wp1800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f634 word 0x08dffd08
  %r1801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1801 = load i64, ptr %r1801.p, align 8, !alias.scope !3, !noalias !4
  %atp1802 = inttoptr i64 %r1801 to ptr
  %lda1803 = load atomic i8, ptr %atp1802 acquire, align 1, !alias.scope !4, !noalias !3
  %c1804 = zext i8 %lda1803 to i64
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1804, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f638 word 0x36004c28
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = and i64 %r1806, 1
  %cmp1808 = icmp eq i64 %t1807, 0
  br i1 %cmp1808, label %L_80015ffbc, label %L_80015f63c
L_80015f63c:
  ; @pc 0x80015f63c word 0xf001bf68
  %wp1809 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f640 word 0xf9430d08
  %r1810.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1810 = load i64, ptr %r1810.p, align 8, !alias.scope !3, !noalias !4
  %t1811 = add i64 %r1810, 1560
  %gmp1812 = inttoptr i64 %t1811 to ptr
  %gml1813 = load i64, ptr %gmp1812, align 1, !alias.scope !4, !noalias !3
  %wp1814 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1813, ptr %wp1814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f644 word 0x08dffd08
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %atp1816 = inttoptr i64 %r1815 to ptr
  %lda1817 = load atomic i8, ptr %atp1816 acquire, align 1, !alias.scope !4, !noalias !3
  %c1818 = zext i8 %lda1817 to i64
  %wp1819 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1818, ptr %wp1819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f648 word 0x37000528
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %t1821 = and i64 %r1820, 1
  %cmp1822 = icmp ne i64 %t1821, 0
  br i1 %cmp1822, label %L_80015f6ec, label %L_80015f64c_ft
L_80015f6ac:
  ; @pc 0x80015f6ac word 0x9001c001
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6b0 word 0xaa1703e0
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %t1898 = or i64 0, %r1897
  %wp1899 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1898, ptr %wp1899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6b4 word 0xf9453021
  %r1900.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1900 = load i64, ptr %r1900.p, align 8, !alias.scope !3, !noalias !4
  %t1901 = add i64 %r1900, 2656
  %gmp1902 = inttoptr i64 %t1901 to ptr
  %gml1903 = load i64, ptr %gmp1902, align 1, !alias.scope !4, !noalias !3
  %wp1904 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1903, ptr %wp1904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6b8 word 0x2a0403f8
  %r1905.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1905 = load i64, ptr %r1905.p, align 8, !alias.scope !3, !noalias !4
  %c1906 = trunc i64 %r1905 to i32
  %t1907 = or i32 0, %c1906
  %c1908 = zext i32 %t1907 to i64
  %wp1909 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1908, ptr %wp1909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6bc word 0xaa1303f9
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %t1911 = or i64 0, %r1910
  %wp1912 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1911, ptr %wp1912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6c0 word 0xaa1603f3
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %t1914 = or i64 0, %r1913
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1914, ptr %wp1915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6c4 word 0xaa0303f6
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %t1917 = or i64 0, %r1916
  %wp1918 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1917, ptr %wp1918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6c8 word 0xd63f0100
  %r1919.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1919 = load i64, ptr %r1919.p, align 8, !alias.scope !3, !noalias !4
  %fp1920 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1919, ptr %fp1920, align 8, !alias.scope !3, !noalias !4
  %wp1921 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177804, ptr %wp1921, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f6cc word 0xb001c0c9
  %wp1922 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6d0 word 0xaa1603e3
  %r1923.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1923 = load i64, ptr %r1923.p, align 8, !alias.scope !3, !noalias !4
  %t1924 = or i64 0, %r1923
  %wp1925 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1924, ptr %wp1925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6d4 word 0xf941b529
  %r1926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1926 = load i64, ptr %r1926.p, align 8, !alias.scope !3, !noalias !4
  %t1927 = add i64 %r1926, 872
  %gmp1928 = inttoptr i64 %t1927 to ptr
  %gml1929 = load i64, ptr %gmp1928, align 1, !alias.scope !4, !noalias !3
  %wp1930 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1929, ptr %wp1930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6d8 word 0xaa1303f6
  %r1931.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1931 = load i64, ptr %r1931.p, align 8, !alias.scope !3, !noalias !4
  %t1932 = or i64 0, %r1931
  %wp1933 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1932, ptr %wp1933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6dc word 0xaa1903f3
  %r1934.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1934 = load i64, ptr %r1934.p, align 8, !alias.scope !3, !noalias !4
  %t1935 = or i64 0, %r1934
  %wp1936 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1935, ptr %wp1936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6e0 word 0x52b84019
  %c1937 = zext i32 -1040187392 to i64
  %wp1938 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1937, ptr %wp1938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6e4 word 0x2a1803e4
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %c1940 = trunc i64 %r1939 to i32
  %t1941 = or i32 0, %c1940
  %c1942 = zext i32 %t1941 to i64
  %wp1943 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1942, ptr %wp1943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6e8 word 0xb5ffdf20
  %r1944.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1944 = load i64, ptr %r1944.p, align 8, !alias.scope !3, !noalias !4
  %cmp1945 = icmp ne i64 %r1944, 0
  br i1 %cmp1945, label %L_80015f2cc, label %L_80015f6ec
L_80015f6ec:
  ; @pc 0x80015f6ec word 0x9001c008
  %wp1946 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6f0 word 0xf9453d08
  %r1947.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1947 = load i64, ptr %r1947.p, align 8, !alias.scope !3, !noalias !4
  %t1948 = add i64 %r1947, 2680
  %gmp1949 = inttoptr i64 %t1948 to ptr
  %gml1950 = load i64, ptr %gmp1949, align 1, !alias.scope !4, !noalias !3
  %wp1951 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1950, ptr %wp1951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6f4 word 0x08dffd08
  %r1952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1952 = load i64, ptr %r1952.p, align 8, !alias.scope !3, !noalias !4
  %atp1953 = inttoptr i64 %r1952 to ptr
  %lda1954 = load atomic i8, ptr %atp1953 acquire, align 1, !alias.scope !4, !noalias !3
  %c1955 = zext i8 %lda1954 to i64
  %wp1956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1955, ptr %wp1956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6f8 word 0x36003428
  %r1957.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1957 = load i64, ptr %r1957.p, align 8, !alias.scope !3, !noalias !4
  %t1958 = and i64 %r1957, 1
  %cmp1959 = icmp eq i64 %t1958, 0
  br i1 %cmp1959, label %L_80015fd7c, label %L_80015f6fc
L_80015f6fc:
  ; @pc 0x80015f6fc word 0xb4000737
  %r1960.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1960 = load i64, ptr %r1960.p, align 8, !alias.scope !3, !noalias !4
  %cmp1961 = icmp eq i64 %r1960, 0
  br i1 %cmp1961, label %L_80015f7e0, label %L_80015f700_ft
L_80015f720:
  ; @pc 0x80015f720 word 0xf001bf68
  %wp2010 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f724 word 0xf9430108
  %r2011.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2011 = load i64, ptr %r2011.p, align 8, !alias.scope !3, !noalias !4
  %t2012 = add i64 %r2011, 1536
  %gmp2013 = inttoptr i64 %t2012 to ptr
  %gml2014 = load i64, ptr %gmp2013, align 1, !alias.scope !4, !noalias !3
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f728 word 0x08dffd08
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %atp2017 = inttoptr i64 %r2016 to ptr
  %lda2018 = load atomic i8, ptr %atp2017 acquire, align 1, !alias.scope !4, !noalias !3
  %c2019 = zext i8 %lda2018 to i64
  %wp2020 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2019, ptr %wp2020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f72c word 0x36005088
  %r2021.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2021 = load i64, ptr %r2021.p, align 8, !alias.scope !3, !noalias !4
  %t2022 = and i64 %r2021, 1
  %cmp2023 = icmp eq i64 %t2022, 0
  br i1 %cmp2023, label %L_80016013c, label %L_80015f730
L_80015f730:
  ; @pc 0x80015f730 word 0xf001bf68
  %wp2024 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f734 word 0xf9430d08
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %t2026 = add i64 %r2025, 1560
  %gmp2027 = inttoptr i64 %t2026 to ptr
  %gml2028 = load i64, ptr %gmp2027, align 1, !alias.scope !4, !noalias !3
  %wp2029 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2028, ptr %wp2029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f738 word 0x08dffd08
  %r2030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2030 = load i64, ptr %r2030.p, align 8, !alias.scope !3, !noalias !4
  %atp2031 = inttoptr i64 %r2030 to ptr
  %lda2032 = load atomic i8, ptr %atp2031 acquire, align 1, !alias.scope !4, !noalias !3
  %c2033 = zext i8 %lda2032 to i64
  %wp2034 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2033, ptr %wp2034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f73c word 0x37000528
  %r2035.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2035 = load i64, ptr %r2035.p, align 8, !alias.scope !3, !noalias !4
  %t2036 = and i64 %r2035, 1
  %cmp2037 = icmp ne i64 %t2036, 0
  br i1 %cmp2037, label %L_80015f7e0, label %L_80015f740_ft
L_80015f7a0:
  ; @pc 0x80015f7a0 word 0x9001c001
  %wp2111 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7a4 word 0xaa1703e0
  %r2112.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2112 = load i64, ptr %r2112.p, align 8, !alias.scope !3, !noalias !4
  %t2113 = or i64 0, %r2112
  %wp2114 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2113, ptr %wp2114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7a8 word 0xf9453821
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %t2116 = add i64 %r2115, 2672
  %gmp2117 = inttoptr i64 %t2116 to ptr
  %gml2118 = load i64, ptr %gmp2117, align 1, !alias.scope !4, !noalias !3
  %wp2119 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2118, ptr %wp2119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7ac word 0x2a0403f8
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %c2121 = trunc i64 %r2120 to i32
  %t2122 = or i32 0, %c2121
  %c2123 = zext i32 %t2122 to i64
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2123, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7b0 word 0xaa1303f9
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %t2126 = or i64 0, %r2125
  %wp2127 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2126, ptr %wp2127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7b4 word 0xaa1603f3
  %r2128.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2128 = load i64, ptr %r2128.p, align 8, !alias.scope !3, !noalias !4
  %t2129 = or i64 0, %r2128
  %wp2130 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2129, ptr %wp2130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7b8 word 0xaa0303f6
  %r2131.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2131 = load i64, ptr %r2131.p, align 8, !alias.scope !3, !noalias !4
  %t2132 = or i64 0, %r2131
  %wp2133 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2132, ptr %wp2133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7bc word 0xd63f0100
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %fp2135 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2134, ptr %fp2135, align 8, !alias.scope !3, !noalias !4
  %wp2136 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178048, ptr %wp2136, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f7c0 word 0xb001c0c9
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7c4 word 0xaa1603e3
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = or i64 0, %r2138
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2139, ptr %wp2140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7c8 word 0xf941b529
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %t2142 = add i64 %r2141, 872
  %gmp2143 = inttoptr i64 %t2142 to ptr
  %gml2144 = load i64, ptr %gmp2143, align 1, !alias.scope !4, !noalias !3
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7cc word 0xaa1303f6
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %t2147 = or i64 0, %r2146
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2147, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7d0 word 0xaa1903f3
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %t2150 = or i64 0, %r2149
  %wp2151 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2150, ptr %wp2151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7d4 word 0x52b84019
  %c2152 = zext i32 -1040187392 to i64
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7d8 word 0x2a1803e4
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %c2155 = trunc i64 %r2154 to i32
  %t2156 = or i32 0, %c2155
  %c2157 = zext i32 %t2156 to i64
  %wp2158 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2157, ptr %wp2158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7dc word 0xb5ffd780
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %cmp2160 = icmp ne i64 %r2159, 0
  br i1 %cmp2160, label %L_80015f2cc, label %L_80015f7e0
L_80015f7e0:
  ; @pc 0x80015f7e0 word 0x9001c008
  %wp2161 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7e4 word 0xf9454508
  %r2162.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2162 = load i64, ptr %r2162.p, align 8, !alias.scope !3, !noalias !4
  %t2163 = add i64 %r2162, 2696
  %gmp2164 = inttoptr i64 %t2163 to ptr
  %gml2165 = load i64, ptr %gmp2164, align 1, !alias.scope !4, !noalias !3
  %wp2166 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2165, ptr %wp2166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7e8 word 0x08dffd08
  %r2167.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2167 = load i64, ptr %r2167.p, align 8, !alias.scope !3, !noalias !4
  %atp2168 = inttoptr i64 %r2167 to ptr
  %lda2169 = load atomic i8, ptr %atp2168 acquire, align 1, !alias.scope !4, !noalias !3
  %c2170 = zext i8 %lda2169 to i64
  %wp2171 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2170, ptr %wp2171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7ec word 0x36002f88
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %t2173 = and i64 %r2172, 1
  %cmp2174 = icmp eq i64 %t2173, 0
  br i1 %cmp2174, label %L_80015fddc, label %L_80015f7f0
L_80015f7f0:
  ; @pc 0x80015f7f0 word 0xb4000737
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %cmp2176 = icmp eq i64 %r2175, 0
  br i1 %cmp2176, label %L_80015f8d4, label %L_80015f7f4_ft
L_80015f814:
  ; @pc 0x80015f814 word 0xf001bf68
  %wp2225 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f818 word 0xf9430108
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %t2227 = add i64 %r2226, 1536
  %gmp2228 = inttoptr i64 %t2227 to ptr
  %gml2229 = load i64, ptr %gmp2228, align 1, !alias.scope !4, !noalias !3
  %wp2230 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2229, ptr %wp2230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f81c word 0x08dffd08
  %r2231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2231 = load i64, ptr %r2231.p, align 8, !alias.scope !3, !noalias !4
  %atp2232 = inttoptr i64 %r2231 to ptr
  %lda2233 = load atomic i8, ptr %atp2232 acquire, align 1, !alias.scope !4, !noalias !3
  %c2234 = zext i8 %lda2233 to i64
  %wp2235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2234, ptr %wp2235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f820 word 0x360042e8
  %r2236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2236 = load i64, ptr %r2236.p, align 8, !alias.scope !3, !noalias !4
  %t2237 = and i64 %r2236, 1
  %cmp2238 = icmp eq i64 %t2237, 0
  br i1 %cmp2238, label %L_80016007c, label %L_80015f824
L_80015f824:
  ; @pc 0x80015f824 word 0xf001bf68
  %wp2239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f828 word 0xf9430d08
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = add i64 %r2240, 1560
  %gmp2242 = inttoptr i64 %t2241 to ptr
  %gml2243 = load i64, ptr %gmp2242, align 1, !alias.scope !4, !noalias !3
  %wp2244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2243, ptr %wp2244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f82c word 0x08dffd08
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %atp2246 = inttoptr i64 %r2245 to ptr
  %lda2247 = load atomic i8, ptr %atp2246 acquire, align 1, !alias.scope !4, !noalias !3
  %c2248 = zext i8 %lda2247 to i64
  %wp2249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2248, ptr %wp2249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f830 word 0x37000528
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %t2251 = and i64 %r2250, 1
  %cmp2252 = icmp ne i64 %t2251, 0
  br i1 %cmp2252, label %L_80015f8d4, label %L_80015f834_ft
L_80015f894:
  ; @pc 0x80015f894 word 0x9001c001
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f898 word 0xaa1703e0
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = or i64 0, %r2327
  %wp2329 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2328, ptr %wp2329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f89c word 0xf9454021
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %t2331 = add i64 %r2330, 2688
  %gmp2332 = inttoptr i64 %t2331 to ptr
  %gml2333 = load i64, ptr %gmp2332, align 1, !alias.scope !4, !noalias !3
  %wp2334 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2333, ptr %wp2334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8a0 word 0x2a0403f8
  %r2335.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2335 = load i64, ptr %r2335.p, align 8, !alias.scope !3, !noalias !4
  %c2336 = trunc i64 %r2335 to i32
  %t2337 = or i32 0, %c2336
  %c2338 = zext i32 %t2337 to i64
  %wp2339 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2338, ptr %wp2339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8a4 word 0xaa1303f9
  %r2340.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2340 = load i64, ptr %r2340.p, align 8, !alias.scope !3, !noalias !4
  %t2341 = or i64 0, %r2340
  %wp2342 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2341, ptr %wp2342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8a8 word 0xaa1603f3
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %t2344 = or i64 0, %r2343
  %wp2345 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2344, ptr %wp2345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8ac word 0xaa0303f6
  %r2346.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2346 = load i64, ptr %r2346.p, align 8, !alias.scope !3, !noalias !4
  %t2347 = or i64 0, %r2346
  %wp2348 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2347, ptr %wp2348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8b0 word 0xd63f0100
  %r2349.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2349 = load i64, ptr %r2349.p, align 8, !alias.scope !3, !noalias !4
  %fp2350 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2349, ptr %fp2350, align 8, !alias.scope !3, !noalias !4
  %wp2351 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178292, ptr %wp2351, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f8b4 word 0xb001c0c9
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8b8 word 0xaa1603e3
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %t2354 = or i64 0, %r2353
  %wp2355 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2354, ptr %wp2355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8bc word 0xf941b529
  %r2356.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2356 = load i64, ptr %r2356.p, align 8, !alias.scope !3, !noalias !4
  %t2357 = add i64 %r2356, 872
  %gmp2358 = inttoptr i64 %t2357 to ptr
  %gml2359 = load i64, ptr %gmp2358, align 1, !alias.scope !4, !noalias !3
  %wp2360 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2359, ptr %wp2360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8c0 word 0xaa1303f6
  %r2361.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2361 = load i64, ptr %r2361.p, align 8, !alias.scope !3, !noalias !4
  %t2362 = or i64 0, %r2361
  %wp2363 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2362, ptr %wp2363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8c4 word 0xaa1903f3
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %t2365 = or i64 0, %r2364
  %wp2366 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2365, ptr %wp2366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8c8 word 0x52b84019
  %c2367 = zext i32 -1040187392 to i64
  %wp2368 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c2367, ptr %wp2368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8cc word 0x2a1803e4
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %c2370 = trunc i64 %r2369 to i32
  %t2371 = or i32 0, %c2370
  %c2372 = zext i32 %t2371 to i64
  %wp2373 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2372, ptr %wp2373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8d0 word 0xb5ffcfe0
  %r2374.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2374 = load i64, ptr %r2374.p, align 8, !alias.scope !3, !noalias !4
  %cmp2375 = icmp ne i64 %r2374, 0
  br i1 %cmp2375, label %L_80015f2cc, label %L_80015f8d4
L_80015f8d4:
  ; @pc 0x80015f8d4 word 0x9001c008
  %wp2376 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8d8 word 0xf9454d08
  %r2377.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2377 = load i64, ptr %r2377.p, align 8, !alias.scope !3, !noalias !4
  %t2378 = add i64 %r2377, 2712
  %gmp2379 = inttoptr i64 %t2378 to ptr
  %gml2380 = load i64, ptr %gmp2379, align 1, !alias.scope !4, !noalias !3
  %wp2381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2380, ptr %wp2381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8dc word 0x08dffd08
  %r2382.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2382 = load i64, ptr %r2382.p, align 8, !alias.scope !3, !noalias !4
  %atp2383 = inttoptr i64 %r2382 to ptr
  %lda2384 = load atomic i8, ptr %atp2383 acquire, align 1, !alias.scope !4, !noalias !3
  %c2385 = zext i8 %lda2384 to i64
  %wp2386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2385, ptr %wp2386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8e0 word 0x36002ae8
  %r2387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2387 = load i64, ptr %r2387.p, align 8, !alias.scope !3, !noalias !4
  %t2388 = and i64 %r2387, 1
  %cmp2389 = icmp eq i64 %t2388, 0
  br i1 %cmp2389, label %L_80015fe3c, label %L_80015f8e4
L_80015f8e4:
  ; @pc 0x80015f8e4 word 0xb4000237
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %cmp2391 = icmp eq i64 %r2390, 0
  br i1 %cmp2391, label %L_80015f928, label %L_80015f8e8_ft
L_80015f908:
  ; @pc 0x80015f908 word 0xf001bf68
  %wp2440 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f90c word 0xf9430108
  %r2441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2441 = load i64, ptr %r2441.p, align 8, !alias.scope !3, !noalias !4
  %t2442 = add i64 %r2441, 1536
  %gmp2443 = inttoptr i64 %t2442 to ptr
  %gml2444 = load i64, ptr %gmp2443, align 1, !alias.scope !4, !noalias !3
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2444, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f910 word 0x08dffd08
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %atp2447 = inttoptr i64 %r2446 to ptr
  %lda2448 = load atomic i8, ptr %atp2447 acquire, align 1, !alias.scope !4, !noalias !3
  %c2449 = zext i8 %lda2448 to i64
  %wp2450 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2449, ptr %wp2450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f914 word 0x360046c8
  %r2451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2451 = load i64, ptr %r2451.p, align 8, !alias.scope !3, !noalias !4
  %t2452 = and i64 %r2451, 1
  %cmp2453 = icmp eq i64 %t2452, 0
  br i1 %cmp2453, label %L_8001601ec, label %L_80015f918
L_80015f918:
  ; @pc 0x80015f918 word 0xf001bf68
  %wp2454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f91c word 0xf9430d08
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %t2456 = add i64 %r2455, 1560
  %gmp2457 = inttoptr i64 %t2456 to ptr
  %gml2458 = load i64, ptr %gmp2457, align 1, !alias.scope !4, !noalias !3
  %wp2459 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2458, ptr %wp2459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f920 word 0x08dffd08
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %atp2461 = inttoptr i64 %r2460 to ptr
  %lda2462 = load atomic i8, ptr %atp2461 acquire, align 1, !alias.scope !4, !noalias !3
  %c2463 = zext i8 %lda2462 to i64
  %wp2464 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2463, ptr %wp2464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f924 word 0x360048c8
  %r2465.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2465 = load i64, ptr %r2465.p, align 8, !alias.scope !3, !noalias !4
  %t2466 = and i64 %r2465, 1
  %cmp2467 = icmp eq i64 %t2466, 0
  br i1 %cmp2467, label %L_80016023c, label %L_80015f928
L_80015f928:
  ; @pc 0x80015f928 word 0x79400297
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %gmp2469 = inttoptr i64 %r2468 to ptr
  %gml2470 = load i16, ptr %gmp2469, align 1, !alias.scope !4, !noalias !3
  %c2471 = zext i16 %gml2470 to i64
  %wp2472 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2471, ptr %wp2472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f92c word 0x17fffe65
  br label %L_80015f2c0
L_80015f930:
  ; @pc 0x80015f930 word 0x9001c001
  %wp2473 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f934 word 0xaa1703e0
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %t2475 = or i64 0, %r2474
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2475, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f938 word 0xf9454821
  %r2477.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2477 = load i64, ptr %r2477.p, align 8, !alias.scope !3, !noalias !4
  %t2478 = add i64 %r2477, 2704
  %gmp2479 = inttoptr i64 %t2478 to ptr
  %gml2480 = load i64, ptr %gmp2479, align 1, !alias.scope !4, !noalias !3
  %wp2481 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2480, ptr %wp2481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f93c word 0x2a0403f7
  %r2482.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2482 = load i64, ptr %r2482.p, align 8, !alias.scope !3, !noalias !4
  %c2483 = trunc i64 %r2482 to i32
  %t2484 = or i32 0, %c2483
  %c2485 = zext i32 %t2484 to i64
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f940 word 0xaa1303f8
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %t2488 = or i64 0, %r2487
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f944 word 0xaa1603f3
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %t2491 = or i64 0, %r2490
  %wp2492 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2491, ptr %wp2492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f948 word 0xaa0303f6
  %r2493.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2493 = load i64, ptr %r2493.p, align 8, !alias.scope !3, !noalias !4
  %t2494 = or i64 0, %r2493
  %wp2495 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2494, ptr %wp2495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f94c word 0xd63f0100
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %fp2497 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2496, ptr %fp2497, align 8, !alias.scope !3, !noalias !4
  %wp2498 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178448, ptr %wp2498, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f950 word 0xaa1603e3
  %r2499.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2499 = load i64, ptr %r2499.p, align 8, !alias.scope !3, !noalias !4
  %t2500 = or i64 0, %r2499
  %wp2501 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2500, ptr %wp2501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f954 word 0xaa1303f6
  %r2502.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2502 = load i64, ptr %r2502.p, align 8, !alias.scope !3, !noalias !4
  %t2503 = or i64 0, %r2502
  %wp2504 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2503, ptr %wp2504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f958 word 0xaa1803f3
  %r2505.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2505 = load i64, ptr %r2505.p, align 8, !alias.scope !3, !noalias !4
  %t2506 = or i64 0, %r2505
  %wp2507 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2506, ptr %wp2507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f95c word 0x2a1703e4
  %r2508.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2508 = load i64, ptr %r2508.p, align 8, !alias.scope !3, !noalias !4
  %c2509 = trunc i64 %r2508 to i32
  %t2510 = or i32 0, %c2509
  %c2511 = zext i32 %t2510 to i64
  %wp2512 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2511, ptr %wp2512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f960 word 0xb5ffcb60
  %r2513.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2513 = load i64, ptr %r2513.p, align 8, !alias.scope !3, !noalias !4
  %cmp2514 = icmp ne i64 %r2513, 0
  br i1 %cmp2514, label %L_80015f2cc, label %L_80015f964_ft
L_80015f968:
  ; @pc 0x80015f968 word 0x9001c009
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f96c word 0xf9467d29
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %t2517 = add i64 %r2516, 3320
  %gmp2518 = inttoptr i64 %t2517 to ptr
  %gml2519 = load i64, ptr %gmp2518, align 1, !alias.scope !4, !noalias !3
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f970 word 0xeb09011f
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %t2523 = sub i64 %r2521, %r2522
  %fn2524 = icmp slt i64 %t2523, 0
  %fz2525 = icmp eq i64 %t2523, 0
  %fc2526 = icmp uge i64 %r2521, %r2522
  %fx12527 = xor i64 %r2521, %r2522
  %fx22528 = xor i64 %r2521, %t2523
  %fva2529 = and i64 %fx12527, %fx22528
  %fv2530 = icmp slt i64 %fva2529, 0
  %nz2531 = zext i1 %fn2524 to i64
  %zz2532 = zext i1 %fz2525 to i64
  %cz2533 = zext i1 %fc2526 to i64
  %vz2534 = zext i1 %fv2530 to i64
  %ns2535 = shl i64 %nz2531, 31
  %zs2536 = shl i64 %zz2532, 30
  %cs2537 = shl i64 %cz2533, 29
  %vs2538 = shl i64 %vz2534, 28
  %nzor2539 = or i64 %ns2535, %zs2536
  %cvor2540 = or i64 %cs2537, %vs2538
  %nzcv2541 = or i64 %nzor2539, %cvor2540
  %wp2542 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2541, ptr %wp2542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f974 word 0x54ffd440
  %r2543.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2543 = load i64, ptr %r2543.p, align 8, !alias.scope !3, !noalias !4
  %fsh2545 = lshr i64 %r2543, 30
  %cond2544 = trunc i64 %fsh2545 to i1
  br i1 %cond2544, label %L_80015f3fc, label %L_80015f978_ft
L_80015f988:
  ; @pc 0x80015f988 word 0x529ffff7
  %c2559 = zext i32 65535 to i64
  %wp2560 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2559, ptr %wp2560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f98c word 0x529ffff8
  %c2561 = zext i32 65535 to i64
  %wp2562 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2561, ptr %wp2562, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f990
L_80015f990:
  ; @pc 0x80015f990 word 0x0a190288
  %r2563.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2563 = load i64, ptr %r2563.p, align 8, !alias.scope !3, !noalias !4
  %c2564 = trunc i64 %r2563 to i32
  %r2565.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2565 = load i64, ptr %r2565.p, align 8, !alias.scope !3, !noalias !4
  %c2566 = trunc i64 %r2565 to i32
  %t2567 = and i32 %c2566, %c2564
  %c2568 = zext i32 %t2567 to i64
  %wp2569 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2568, ptr %wp2569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f994 word 0x6b19011f
  %r2570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2570 = load i64, ptr %r2570.p, align 8, !alias.scope !3, !noalias !4
  %c2571 = trunc i64 %r2570 to i32
  %r2572.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2572 = load i64, ptr %r2572.p, align 8, !alias.scope !3, !noalias !4
  %c2573 = trunc i64 %r2572 to i32
  %t2574 = sub i32 %c2571, %c2573
  %fn2575 = icmp slt i32 %t2574, 0
  %fz2576 = icmp eq i32 %t2574, 0
  %fc2577 = icmp uge i32 %c2571, %c2573
  %fx12578 = xor i32 %c2571, %c2573
  %fx22579 = xor i32 %c2571, %t2574
  %fva2580 = and i32 %fx12578, %fx22579
  %fv2581 = icmp slt i32 %fva2580, 0
  %nz2582 = zext i1 %fn2575 to i64
  %zz2583 = zext i1 %fz2576 to i64
  %cz2584 = zext i1 %fc2577 to i64
  %vz2585 = zext i1 %fv2581 to i64
  %ns2586 = shl i64 %nz2582, 31
  %zs2587 = shl i64 %zz2583, 30
  %cs2588 = shl i64 %cz2584, 29
  %vs2589 = shl i64 %vz2585, 28
  %nzor2590 = or i64 %ns2586, %zs2587
  %cvor2591 = or i64 %cs2588, %vs2589
  %nzcv2592 = or i64 %nzor2590, %cvor2591
  %wp2593 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2592, ptr %wp2593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f998 word 0x1a9f17fa
  %t2594 = add i32 0, 1
  %r2595.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2595 = load i64, ptr %r2595.p, align 8, !alias.scope !3, !noalias !4
  %fsh2597 = lshr i64 %r2595, 30
  %ftr2598 = trunc i64 %fsh2597 to i1
  %cond2596 = xor i1 %ftr2598, true
  %sel2599 = select i1 %cond2596, i32 0, i32 %t2594
  %c2600 = zext i32 %sel2599 to i64
  %wp2601 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2600, ptr %wp2601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f99c word 0x34ffcdb4
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %c2603 = trunc i64 %r2602 to i32
  %cmp2604 = icmp eq i32 %c2603, 0
  br i1 %cmp2604, label %L_80015f350, label %L_80015f9a0_ft
L_80015f9c8:
  ; @pc 0x80015f9c8 word 0xf9405408
  %r2664.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2664 = load i64, ptr %r2664.p, align 8, !alias.scope !3, !noalias !4
  %t2665 = add i64 %r2664, 168
  %gmp2666 = inttoptr i64 %t2665 to ptr
  %gml2667 = load i64, ptr %gmp2666, align 1, !alias.scope !4, !noalias !3
  %wp2668 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2667, ptr %wp2668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9cc word 0xb4000208
  %r2669.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2669 = load i64, ptr %r2669.p, align 8, !alias.scope !3, !noalias !4
  %cmp2670 = icmp eq i64 %r2669, 0
  br i1 %cmp2670, label %L_80015fa0c, label %L_80015f9d0_ft
L_80015fa04:
  ; @pc 0x80015fa04 word 0xf9400508
  %r2787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2787 = load i64, ptr %r2787.p, align 8, !alias.scope !3, !noalias !4
  %t2788 = add i64 %r2787, 8
  %gmp2789 = inttoptr i64 %t2788 to ptr
  %gml2790 = load i64, ptr %gmp2789, align 1, !alias.scope !4, !noalias !3
  %wp2791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2790, ptr %wp2791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa08 word 0xb5004788
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %cmp2793 = icmp ne i64 %r2792, 0
  br i1 %cmp2793, label %L_8001602f8, label %L_80015fa0c
L_80015fa0c:
  ; @pc 0x80015fa0c word 0xb9404009
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 64
  %gmp2796 = inttoptr i64 %t2795 to ptr
  %gml2797 = load i32, ptr %gmp2796, align 1, !alias.scope !4, !noalias !3
  %c2798 = zext i32 %gml2797 to i64
  %wp2799 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2798, ptr %wp2799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa10 word 0x6b01013f
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %c2801 = trunc i64 %r2800 to i32
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %c2803 = trunc i64 %r2802 to i32
  %t2804 = sub i32 %c2801, %c2803
  %fn2805 = icmp slt i32 %t2804, 0
  %fz2806 = icmp eq i32 %t2804, 0
  %fc2807 = icmp uge i32 %c2801, %c2803
  %fx12808 = xor i32 %c2801, %c2803
  %fx22809 = xor i32 %c2801, %t2804
  %fva2810 = and i32 %fx12808, %fx22809
  %fv2811 = icmp slt i32 %fva2810, 0
  %nz2812 = zext i1 %fn2805 to i64
  %zz2813 = zext i1 %fz2806 to i64
  %cz2814 = zext i1 %fc2807 to i64
  %vz2815 = zext i1 %fv2811 to i64
  %ns2816 = shl i64 %nz2812, 31
  %zs2817 = shl i64 %zz2813, 30
  %cs2818 = shl i64 %cz2814, 29
  %vs2819 = shl i64 %vz2815, 28
  %nzor2820 = or i64 %ns2816, %zs2817
  %cvor2821 = or i64 %cs2818, %vs2819
  %nzcv2822 = or i64 %nzor2820, %cvor2821
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa14 word 0xf9402408
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = add i64 %r2824, 72
  %gmp2826 = inttoptr i64 %t2825 to ptr
  %gml2827 = load i64, ptr %gmp2826, align 1, !alias.scope !4, !noalias !3
  %wp2828 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2827, ptr %wp2828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa18 word 0x54004709
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %fsh2831 = lshr i64 %r2829, 29
  %ftr2832 = trunc i64 %fsh2831 to i1
  %fsh2833 = lshr i64 %r2829, 30
  %ftr2834 = trunc i64 %fsh2833 to i1
  %fnz2835 = xor i1 %ftr2834, true
  %fhi2836 = and i1 %ftr2832, %fnz2835
  %cond2830 = xor i1 %fhi2836, true
  br i1 %cond2830, label %L_8001602f8, label %L_80015fa1c_ft
L_80015fa24:
  ; @pc 0x80015fa24 word 0xf9000268
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %r2847.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2847 = load i64, ptr %r2847.p, align 8, !alias.scope !3, !noalias !4
  %gmp2848 = inttoptr i64 %r2846 to ptr
  store i64 %r2847, ptr %gmp2848, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fa28 word 0x17fffe3a
  br label %L_80015f310
L_80015fa2c:
  ; @pc 0x80015fa2c word 0xf94006a8
  %r2849.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2849 = load i64, ptr %r2849.p, align 8, !alias.scope !3, !noalias !4
  %t2850 = add i64 %r2849, 8
  %gmp2851 = inttoptr i64 %t2850 to ptr
  %gml2852 = load i64, ptr %gmp2851, align 1, !alias.scope !4, !noalias !3
  %wp2853 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2852, ptr %wp2853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa30 word 0xf9400908
  %r2854.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2854 = load i64, ptr %r2854.p, align 8, !alias.scope !3, !noalias !4
  %t2855 = add i64 %r2854, 16
  %gmp2856 = inttoptr i64 %t2855 to ptr
  %gml2857 = load i64, ptr %gmp2856, align 1, !alias.scope !4, !noalias !3
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa34 word 0xf9402908
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %t2860 = add i64 %r2859, 80
  %gmp2861 = inttoptr i64 %t2860 to ptr
  %gml2862 = load i64, ptr %gmp2861, align 1, !alias.scope !4, !noalias !3
  %wp2863 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2862, ptr %wp2863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa38 word 0xb9401909
  %r2864.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2864 = load i64, ptr %r2864.p, align 8, !alias.scope !3, !noalias !4
  %t2865 = add i64 %r2864, 24
  %gmp2866 = inttoptr i64 %t2865 to ptr
  %gml2867 = load i32, ptr %gmp2866, align 1, !alias.scope !4, !noalias !3
  %c2868 = zext i32 %gml2867 to i64
  %wp2869 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2868, ptr %wp2869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa3c word 0x8b090108
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %r2871.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2871 = load i64, ptr %r2871.p, align 8, !alias.scope !3, !noalias !4
  %t2872 = add i64 %r2870, %r2871
  %wp2873 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2872, ptr %wp2873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa40 word 0xb9400109
  %r2874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2874 = load i64, ptr %r2874.p, align 8, !alias.scope !3, !noalias !4
  %gmp2875 = inttoptr i64 %r2874 to ptr
  %gml2876 = load i32, ptr %gmp2875, align 1, !alias.scope !4, !noalias !3
  %c2877 = zext i32 %gml2876 to i64
  %wp2878 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2877, ptr %wp2878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa44 word 0x6b34213f
  %r2879.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2879 = load i64, ptr %r2879.p, align 8, !alias.scope !3, !noalias !4
  %c2880 = trunc i64 %r2879 to i32
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %c2882 = trunc i64 %r2881 to i16
  %c2883 = zext i16 %c2882 to i64
  %c2884 = trunc i64 %c2883 to i32
  %t2885 = sub i32 %c2880, %c2884
  %fn2886 = icmp slt i32 %t2885, 0
  %fz2887 = icmp eq i32 %t2885, 0
  %fc2888 = icmp uge i32 %c2880, %c2884
  %fx12889 = xor i32 %c2880, %c2884
  %fx22890 = xor i32 %c2880, %t2885
  %fva2891 = and i32 %fx12889, %fx22890
  %fv2892 = icmp slt i32 %fva2891, 0
  %nz2893 = zext i1 %fn2886 to i64
  %zz2894 = zext i1 %fz2887 to i64
  %cz2895 = zext i1 %fc2888 to i64
  %vz2896 = zext i1 %fv2892 to i64
  %ns2897 = shl i64 %nz2893, 31
  %zs2898 = shl i64 %zz2894, 30
  %cs2899 = shl i64 %cz2895, 29
  %vs2900 = shl i64 %vz2896, 28
  %nzor2901 = or i64 %ns2897, %zs2898
  %cvor2902 = or i64 %cs2899, %vs2900
  %nzcv2903 = or i64 %nzor2901, %cvor2902
  %wp2904 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2903, ptr %wp2904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa48 word 0x540002ad
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2905 = load i64, ptr %r2905.p, align 8, !alias.scope !3, !noalias !4
  %fsh2907 = lshr i64 %r2905, 30
  %ftr2908 = trunc i64 %fsh2907 to i1
  %fsh2909 = lshr i64 %r2905, 31
  %ftr2910 = trunc i64 %fsh2909 to i1
  %fsh2911 = lshr i64 %r2905, 28
  %ftr2912 = trunc i64 %fsh2911 to i1
  %fnz2913 = xor i1 %ftr2908, true
  %feq2914 = icmp eq i1 %ftr2910, %ftr2912
  %fgt2915 = and i1 %fnz2913, %feq2914
  %cond2906 = xor i1 %fgt2915, true
  br i1 %cond2906, label %L_80015fa9c, label %L_80015fa4c_ft
L_80015fa84:
  ; @pc 0x80015fa84 word 0xb9403c09
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %t3003 = add i64 %r3002, 60
  %gmp3004 = inttoptr i64 %t3003 to ptr
  %gml3005 = load i32, ptr %gmp3004, align 1, !alias.scope !4, !noalias !3
  %c3006 = zext i32 %gml3005 to i64
  %wp3007 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3006, ptr %wp3007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa88 word 0x0b080128
  %r3008.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3008 = load i64, ptr %r3008.p, align 8, !alias.scope !3, !noalias !4
  %c3009 = trunc i64 %r3008 to i32
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %c3011 = trunc i64 %r3010 to i32
  %t3012 = add i32 %c3009, %c3011
  %c3013 = zext i32 %t3012 to i64
  %wp3014 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3013, ptr %wp3014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa8c word 0x17fffe4f
  br label %L_80015f3c8
L_80015fa90:
  ; @pc 0x80015fa90 word 0xb9400368
  %r3015.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3015 = load i64, ptr %r3015.p, align 8, !alias.scope !3, !noalias !4
  %gmp3016 = inttoptr i64 %r3015 to ptr
  %gml3017 = load i32, ptr %gmp3016, align 1, !alias.scope !4, !noalias !3
  %c3018 = zext i32 %gml3017 to i64
  %wp3019 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3018, ptr %wp3019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa94 word 0x12077514
  %r3020.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3020 = load i64, ptr %r3020.p, align 8, !alias.scope !3, !noalias !4
  %c3021 = trunc i64 %r3020 to i32
  %t3022 = and i32 %c3021, -25165825
  %c3023 = zext i32 %t3022 to i64
  %wp3024 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3023, ptr %wp3024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa98 word 0x17ffffbe
  br label %L_80015f990
L_80015fa9c:
  ; @pc 0x80015fa9c word 0x2a1f03f8
  %t3025 = or i32 0, 0
  %c3026 = zext i32 %t3025 to i64
  %wp3027 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3026, ptr %wp3027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faa0 word 0x17fffe4b
  br label %L_80015f3cc
L_80015faa4:
  ; @pc 0x80015faa4 word 0xb9403c09
  %r3028.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3028 = load i64, ptr %r3028.p, align 8, !alias.scope !3, !noalias !4
  %t3029 = add i64 %r3028, 60
  %gmp3030 = inttoptr i64 %t3029 to ptr
  %gml3031 = load i32, ptr %gmp3030, align 1, !alias.scope !4, !noalias !3
  %c3032 = zext i32 %gml3031 to i64
  %wp3033 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3032, ptr %wp3033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faa8 word 0x0b080128
  %r3034.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3034 = load i64, ptr %r3034.p, align 8, !alias.scope !3, !noalias !4
  %c3035 = trunc i64 %r3034 to i32
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %c3037 = trunc i64 %r3036 to i32
  %t3038 = add i32 %c3035, %c3037
  %c3039 = zext i32 %t3038 to i64
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faac word 0xb9404c0a
  %r3041.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3041 = load i64, ptr %r3041.p, align 8, !alias.scope !3, !noalias !4
  %t3042 = add i64 %r3041, 76
  %gmp3043 = inttoptr i64 %t3042 to ptr
  %gml3044 = load i32, ptr %gmp3043, align 1, !alias.scope !4, !noalias !3
  %c3045 = zext i32 %gml3044 to i64
  %wp3046 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3045, ptr %wp3046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fab0 word 0x0b0a0108
  %r3047.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3047 = load i64, ptr %r3047.p, align 8, !alias.scope !3, !noalias !4
  %c3048 = trunc i64 %r3047 to i32
  %r3049.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3049 = load i64, ptr %r3049.p, align 8, !alias.scope !3, !noalias !4
  %c3050 = trunc i64 %r3049 to i32
  %t3051 = add i32 %c3048, %c3050
  %c3052 = zext i32 %t3051 to i64
  %wp3053 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3052, ptr %wp3053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fab4 word 0x17fffe45
  br label %L_80015f3c8
L_80015fab8:
  ; @pc 0x80015fab8 word 0xb9403c09
  %r3054.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3054 = load i64, ptr %r3054.p, align 8, !alias.scope !3, !noalias !4
  %t3055 = add i64 %r3054, 60
  %gmp3056 = inttoptr i64 %t3055 to ptr
  %gml3057 = load i32, ptr %gmp3056, align 1, !alias.scope !4, !noalias !3
  %c3058 = zext i32 %gml3057 to i64
  %wp3059 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3058, ptr %wp3059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fabc word 0x5280018b
  %c3060 = zext i32 12 to i64
  %wp3061 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3060, ptr %wp3061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fac0 word 0x1b0b7d08
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %c3063 = trunc i64 %r3062 to i32
  %r3064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3064 = load i64, ptr %r3064.p, align 8, !alias.scope !3, !noalias !4
  %c3065 = trunc i64 %r3064 to i32
  %t3066 = mul i32 %c3065, %c3063
  %t3067 = add i32 0, %t3066
  %c3068 = zext i32 %t3067 to i64
  %wp3069 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3068, ptr %wp3069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fac4 word 0xb9404c0a
  %r3070.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3070 = load i64, ptr %r3070.p, align 8, !alias.scope !3, !noalias !4
  %t3071 = add i64 %r3070, 76
  %gmp3072 = inttoptr i64 %t3071 to ptr
  %gml3073 = load i32, ptr %gmp3072, align 1, !alias.scope !4, !noalias !3
  %c3074 = zext i32 %gml3073 to i64
  %wp3075 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3074, ptr %wp3075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fac8 word 0x0b090149
  %r3076.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3076 = load i64, ptr %r3076.p, align 8, !alias.scope !3, !noalias !4
  %c3077 = trunc i64 %r3076 to i32
  %r3078.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3078 = load i64, ptr %r3078.p, align 8, !alias.scope !3, !noalias !4
  %c3079 = trunc i64 %r3078 to i32
  %t3080 = add i32 %c3077, %c3079
  %c3081 = zext i32 %t3080 to i64
  %wp3082 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3081, ptr %wp3082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015facc word 0xb9405c0a
  %r3083.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3083 = load i64, ptr %r3083.p, align 8, !alias.scope !3, !noalias !4
  %t3084 = add i64 %r3083, 92
  %gmp3085 = inttoptr i64 %t3084 to ptr
  %gml3086 = load i32, ptr %gmp3085, align 1, !alias.scope !4, !noalias !3
  %c3087 = zext i32 %gml3086 to i64
  %wp3088 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3087, ptr %wp3088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fad0 word 0x0b0a0129
  %r3089.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3089 = load i64, ptr %r3089.p, align 8, !alias.scope !3, !noalias !4
  %c3090 = trunc i64 %r3089 to i32
  %r3091.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3091 = load i64, ptr %r3091.p, align 8, !alias.scope !3, !noalias !4
  %c3092 = trunc i64 %r3091 to i32
  %t3093 = add i32 %c3090, %c3092
  %c3094 = zext i32 %t3093 to i64
  %wp3095 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3094, ptr %wp3095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fad4 word 0xb9406c0a
  %r3096.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3096 = load i64, ptr %r3096.p, align 8, !alias.scope !3, !noalias !4
  %t3097 = add i64 %r3096, 108
  %gmp3098 = inttoptr i64 %t3097 to ptr
  %gml3099 = load i32, ptr %gmp3098, align 1, !alias.scope !4, !noalias !3
  %c3100 = zext i32 %gml3099 to i64
  %wp3101 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3100, ptr %wp3101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fad8 word 0x0b0a0d08
  %r3102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3102 = load i64, ptr %r3102.p, align 8, !alias.scope !3, !noalias !4
  %c3103 = trunc i64 %r3102 to i32
  %r3104.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3104 = load i64, ptr %r3104.p, align 8, !alias.scope !3, !noalias !4
  %c3105 = trunc i64 %r3104 to i32
  %t3106 = shl i32 %c3105, 3
  %t3107 = add i32 %c3103, %t3106
  %c3108 = zext i32 %t3107 to i64
  %wp3109 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3108, ptr %wp3109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fadc word 0x0b090918
  %r3110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3110 = load i64, ptr %r3110.p, align 8, !alias.scope !3, !noalias !4
  %c3111 = trunc i64 %r3110 to i32
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %c3113 = trunc i64 %r3112 to i32
  %t3114 = shl i32 %c3113, 2
  %t3115 = add i32 %c3111, %t3114
  %c3116 = zext i32 %t3115 to i64
  %wp3117 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3116, ptr %wp3117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fae0 word 0x17fffe3b
  br label %L_80015f3cc
L_80015fae4:
  ; @pc 0x80015fae4 word 0xf001cae0
  %wp3118 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp3118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fae8 word 0x9114a000
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %t3120 = add i64 %r3119, 1320
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faec word 0x2a0403fb
  %r3122.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3122 = load i64, ptr %r3122.p, align 8, !alias.scope !3, !noalias !4
  %c3123 = trunc i64 %r3122 to i32
  %t3124 = or i32 0, %c3123
  %c3125 = zext i32 %t3124 to i64
  %wp3126 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3125, ptr %wp3126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faf0 word 0xaa0303fc
  %r3127.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3127 = load i64, ptr %r3127.p, align 8, !alias.scope !3, !noalias !4
  %t3128 = or i64 0, %r3127
  %wp3129 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3128, ptr %wp3129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015faf4 word 0x94a90fab
  %wp3130 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178872, ptr %wp3130, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015faf8 word 0xaa1c03e3
  %r3131.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3131 = load i64, ptr %r3131.p, align 8, !alias.scope !3, !noalias !4
  %t3132 = or i64 0, %r3131
  %wp3133 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3132, ptr %wp3133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fafc word 0x2a1b03e4
  %r3134.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3134 = load i64, ptr %r3134.p, align 8, !alias.scope !3, !noalias !4
  %c3135 = trunc i64 %r3134 to i32
  %t3136 = or i32 0, %c3135
  %c3137 = zext i32 %t3136 to i64
  %wp3138 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3137, ptr %wp3138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb00 word 0x34ffc320
  %r3139.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3139 = load i64, ptr %r3139.p, align 8, !alias.scope !3, !noalias !4
  %c3140 = trunc i64 %r3139 to i32
  %cmp3141 = icmp eq i32 %c3140, 0
  br i1 %cmp3141, label %L_80015f364, label %L_80015fb04_ft
L_80015fb24:
  ; @pc 0x80015fb24 word 0xaa1503e0
  %r3160.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3160 = load i64, ptr %r3160.p, align 8, !alias.scope !3, !noalias !4
  %t3161 = or i64 0, %r3160
  %wp3162 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3161, ptr %wp3162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb28 word 0x2a0403f8
  %r3163.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3163 = load i64, ptr %r3163.p, align 8, !alias.scope !3, !noalias !4
  %c3164 = trunc i64 %r3163 to i32
  %t3165 = or i32 0, %c3164
  %c3166 = zext i32 %t3165 to i64
  %wp3167 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3166, ptr %wp3167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb2c word 0xaa0303f9
  %r3168.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3168 = load i64, ptr %r3168.p, align 8, !alias.scope !3, !noalias !4
  %t3169 = or i64 0, %r3168
  %wp3170 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3169, ptr %wp3170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb30 word 0xd63f0100
  %r3171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3171 = load i64, ptr %r3171.p, align 8, !alias.scope !3, !noalias !4
  %fp3172 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3171, ptr %fp3172, align 8, !alias.scope !3, !noalias !4
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178932, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015fb34 word 0xf9400a88
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %t3175 = add i64 %r3174, 16
  %gmp3176 = inttoptr i64 %t3175 to ptr
  %gml3177 = load i64, ptr %gmp3176, align 1, !alias.scope !4, !noalias !3
  %wp3178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3177, ptr %wp3178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb38 word 0xaa1903e3
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %t3180 = or i64 0, %r3179
  %wp3181 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3180, ptr %wp3181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb3c word 0x2a1803e4
  %r3182.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3182 = load i64, ptr %r3182.p, align 8, !alias.scope !3, !noalias !4
  %c3183 = trunc i64 %r3182 to i32
  %t3184 = or i32 0, %c3183
  %c3185 = zext i32 %t3184 to i64
  %wp3186 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3185, ptr %wp3186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb40 word 0x17fffd92
  br label %L_80015f188
L_80015fb44:
  ; @pc 0x80015fb44 word 0x910023e8
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %t3188 = add i64 %r3187, 8
  %wp3189 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3188, ptr %wp3189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb48 word 0x39044fff
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %t3191 = add i64 %r3190, 275
  %c3192 = trunc i32 0 to i8
  %gmp3193 = inttoptr i64 %t3191 to ptr
  store i8 %c3192, ptr %gmp3193, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb4c word 0xb0015761
  %wp3194 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb50 word 0x91270c21
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %t3196 = add i64 %r3195, 2499
  %wp3197 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3196, ptr %wp3197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb54 word 0x91003108
  %r3198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3198 = load i64, ptr %r3198.p, align 8, !alias.scope !3, !noalias !4
  %t3199 = add i64 %r3198, 12
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3199, ptr %wp3200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb58 word 0x390053ff
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = add i64 %r3201, 20
  %c3203 = trunc i32 0 to i8
  %gmp3204 = inttoptr i64 %t3202 to ptr
  store i8 %c3203, ptr %gmp3204, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb5c word 0xf90007e8
  %r3205.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3205 = load i64, ptr %r3205.p, align 8, !alias.scope !3, !noalias !4
  %t3206 = add i64 %r3205, 8
  %r3207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3207 = load i64, ptr %r3207.p, align 8, !alias.scope !3, !noalias !4
  %gmp3208 = inttoptr i64 %t3206 to ptr
  store i64 %r3207, ptr %gmp3208, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb60 word 0x52802008
  %c3209 = zext i32 256 to i64
  %wp3210 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3209, ptr %wp3210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb64 word 0x910023e0
  %r3211.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3211 = load i64, ptr %r3211.p, align 8, !alias.scope !3, !noalias !4
  %t3212 = add i64 %r3211, 8
  %wp3213 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3212, ptr %wp3213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb68 word 0xb90013e8
  %r3214.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3214 = load i64, ptr %r3214.p, align 8, !alias.scope !3, !noalias !4
  %t3215 = add i64 %r3214, 16
  %r3216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3216 = load i64, ptr %r3216.p, align 8, !alias.scope !3, !noalias !4
  %c3217 = trunc i64 %r3216 to i32
  %gmp3218 = inttoptr i64 %t3215 to ptr
  store i32 %c3217, ptr %gmp3218, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb6c word 0xf94006a8
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %t3220 = add i64 %r3219, 8
  %gmp3221 = inttoptr i64 %t3220 to ptr
  %gml3222 = load i64, ptr %gmp3221, align 1, !alias.scope !4, !noalias !3
  %wp3223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3222, ptr %wp3223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb70 word 0x2a0403fb
  %r3224.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3224 = load i64, ptr %r3224.p, align 8, !alias.scope !3, !noalias !4
  %c3225 = trunc i64 %r3224 to i32
  %t3226 = or i32 0, %c3225
  %c3227 = zext i32 %t3226 to i64
  %wp3228 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3227, ptr %wp3228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb74 word 0xf9400908
  %r3229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3229 = load i64, ptr %r3229.p, align 8, !alias.scope !3, !noalias !4
  %t3230 = add i64 %r3229, 16
  %gmp3231 = inttoptr i64 %t3230 to ptr
  %gml3232 = load i64, ptr %gmp3231, align 1, !alias.scope !4, !noalias !3
  %wp3233 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3232, ptr %wp3233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb78 word 0xf9400908
  %r3234.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3234 = load i64, ptr %r3234.p, align 8, !alias.scope !3, !noalias !4
  %t3235 = add i64 %r3234, 16
  %gmp3236 = inttoptr i64 %t3235 to ptr
  %gml3237 = load i64, ptr %gmp3236, align 1, !alias.scope !4, !noalias !3
  %wp3238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3237, ptr %wp3238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb7c word 0xb980250a
  %r3239.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3239 = load i64, ptr %r3239.p, align 8, !alias.scope !3, !noalias !4
  %t3240 = add i64 %r3239, 36
  %gmp3241 = inttoptr i64 %t3240 to ptr
  %gml3242 = load i32, ptr %gmp3241, align 1, !alias.scope !4, !noalias !3
  %c3243 = sext i32 %gml3242 to i64
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb80 word 0xb9800909
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %t3246 = add i64 %r3245, 8
  %gmp3247 = inttoptr i64 %t3246 to ptr
  %gml3248 = load i32, ptr %gmp3247, align 1, !alias.scope !4, !noalias !3
  %c3249 = sext i32 %gml3248 to i64
  %wp3250 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3249, ptr %wp3250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb84 word 0x8b0a0108
  %r3251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3251 = load i64, ptr %r3251.p, align 8, !alias.scope !3, !noalias !4
  %r3252.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3252 = load i64, ptr %r3252.p, align 8, !alias.scope !3, !noalias !4
  %t3253 = add i64 %r3251, %r3252
  %wp3254 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3253, ptr %wp3254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb88 word 0x8b090102
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %r3256.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3256 = load i64, ptr %r3256.p, align 8, !alias.scope !3, !noalias !4
  %t3257 = add i64 %r3255, %r3256
  %wp3258 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3257, ptr %wp3258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb8c word 0x97fce735
  %wp3259 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179024, ptr %wp3259, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80015fb90 word 0xf001caf8
  %wp3260 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34421334016, ptr %wp3260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb94 word 0x91148318
  %r3261.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3261 = load i64, ptr %r3261.p, align 8, !alias.scope !3, !noalias !4
  %t3262 = add i64 %r3261, 1312
  %wp3263 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3262, ptr %wp3263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb98 word 0xf9000278
  %r3264.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3264 = load i64, ptr %r3264.p, align 8, !alias.scope !3, !noalias !4
  %r3265.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3265 = load i64, ptr %r3265.p, align 8, !alias.scope !3, !noalias !4
  %gmp3266 = inttoptr i64 %r3264 to ptr
  store i64 %r3265, ptr %gmp3266, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb9c word 0x52800037
  %c3267 = zext i32 1 to i64
  %wp3268 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3267, ptr %wp3268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fba0 word 0x3607bb9a
  %r3269.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3269 = load i64, ptr %r3269.p, align 8, !alias.scope !3, !noalias !4
  %t3270 = and i64 %r3269, 1
  %cmp3271 = icmp eq i64 %t3270, 0
  br i1 %cmp3271, label %L_80015f310, label %L_80015fba4_ft
L_80015fbac:
  ; @pc 0x80015fbac word 0x39044fff
  %r3275.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3275 = load i64, ptr %r3275.p, align 8, !alias.scope !3, !noalias !4
  %t3276 = add i64 %r3275, 275
  %c3277 = trunc i32 0 to i8
  %gmp3278 = inttoptr i64 %t3276 to ptr
  store i8 %c3277, ptr %gmp3278, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fbb0 word 0x910023e9
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %t3280 = add i64 %r3279, 8
  %wp3281 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3280, ptr %wp3281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbb4 word 0xb0015761
  %wp3282 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbb8 word 0x91270c21
  %r3283.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3283 = load i64, ptr %r3283.p, align 8, !alias.scope !3, !noalias !4
  %t3284 = add i64 %r3283, 2499
  %wp3285 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3284, ptr %wp3285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbbc word 0xf9400908
  %r3286.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3286 = load i64, ptr %r3286.p, align 8, !alias.scope !3, !noalias !4
  %t3287 = add i64 %r3286, 16
  %gmp3288 = inttoptr i64 %t3287 to ptr
  %gml3289 = load i64, ptr %gmp3288, align 1, !alias.scope !4, !noalias !3
  %wp3290 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3289, ptr %wp3290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbc0 word 0x91003129
  %r3291.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3291 = load i64, ptr %r3291.p, align 8, !alias.scope !3, !noalias !4
  %t3292 = add i64 %r3291, 12
  %wp3293 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3292, ptr %wp3293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbc4 word 0xf90007e9
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %t3295 = add i64 %r3294, 8
  %r3296.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3296 = load i64, ptr %r3296.p, align 8, !alias.scope !3, !noalias !4
  %gmp3297 = inttoptr i64 %t3295 to ptr
  store i64 %r3296, ptr %gmp3297, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fbc8 word 0x52802009
  %c3298 = zext i32 256 to i64
  %wp3299 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3298, ptr %wp3299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbcc word 0x390053ff
  %r3300.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3300 = load i64, ptr %r3300.p, align 8, !alias.scope !3, !noalias !4
  %t3301 = add i64 %r3300, 20
  %c3302 = trunc i32 0 to i8
  %gmp3303 = inttoptr i64 %t3301 to ptr
  store i8 %c3302, ptr %gmp3303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fbd0 word 0xb90013e9
  %r3304.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3304 = load i64, ptr %r3304.p, align 8, !alias.scope !3, !noalias !4
  %t3305 = add i64 %r3304, 16
  %r3306.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3306 = load i64, ptr %r3306.p, align 8, !alias.scope !3, !noalias !4
  %c3307 = trunc i64 %r3306 to i32
  %gmp3308 = inttoptr i64 %t3305 to ptr
  store i32 %c3307, ptr %gmp3308, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fbd4 word 0x910023e0
  %r3309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3309 = load i64, ptr %r3309.p, align 8, !alias.scope !3, !noalias !4
  %t3310 = add i64 %r3309, 8
  %wp3311 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3310, ptr %wp3311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbd8 word 0x2a0403f7
  %r3312.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3312 = load i64, ptr %r3312.p, align 8, !alias.scope !3, !noalias !4
  %c3313 = trunc i64 %r3312 to i32
  %t3314 = or i32 0, %c3313
  %c3315 = zext i32 %t3314 to i64
  %wp3316 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3315, ptr %wp3316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbdc word 0xf9400908
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %t3318 = add i64 %r3317, 16
  %gmp3319 = inttoptr i64 %t3318 to ptr
  %gml3320 = load i64, ptr %gmp3319, align 1, !alias.scope !4, !noalias !3
  %wp3321 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3320, ptr %wp3321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbe0 word 0xb980250a
  %r3322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3322 = load i64, ptr %r3322.p, align 8, !alias.scope !3, !noalias !4
  %t3323 = add i64 %r3322, 36
  %gmp3324 = inttoptr i64 %t3323 to ptr
  %gml3325 = load i32, ptr %gmp3324, align 1, !alias.scope !4, !noalias !3
  %c3326 = sext i32 %gml3325 to i64
  %wp3327 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3326, ptr %wp3327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbe4 word 0xb9800909
  %r3328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3328 = load i64, ptr %r3328.p, align 8, !alias.scope !3, !noalias !4
  %t3329 = add i64 %r3328, 8
  %gmp3330 = inttoptr i64 %t3329 to ptr
  %gml3331 = load i32, ptr %gmp3330, align 1, !alias.scope !4, !noalias !3
  %c3332 = sext i32 %gml3331 to i64
  %wp3333 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3332, ptr %wp3333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbe8 word 0x8b0a0108
  %r3334.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3334 = load i64, ptr %r3334.p, align 8, !alias.scope !3, !noalias !4
  %r3335.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3335 = load i64, ptr %r3335.p, align 8, !alias.scope !3, !noalias !4
  %t3336 = add i64 %r3334, %r3335
  %wp3337 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3336, ptr %wp3337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbec word 0x8b090102
  %r3338.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3338 = load i64, ptr %r3338.p, align 8, !alias.scope !3, !noalias !4
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %t3340 = add i64 %r3338, %r3339
  %wp3341 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3340, ptr %wp3341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbf0 word 0x97fce71c
  %wp3342 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179124, ptr %wp3342, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80015fbf4 word 0xf94006a8
  %r3343.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3343 = load i64, ptr %r3343.p, align 8, !alias.scope !3, !noalias !4
  %t3344 = add i64 %r3343, 8
  %gmp3345 = inttoptr i64 %t3344 to ptr
  %gml3346 = load i64, ptr %gmp3345, align 1, !alias.scope !4, !noalias !3
  %wp3347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3346, ptr %wp3347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fbf8 word 0x2a1703e4
  %r3348.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3348 = load i64, ptr %r3348.p, align 8, !alias.scope !3, !noalias !4
  %c3349 = trunc i64 %r3348 to i32
  %t3350 = or i32 0, %c3349
  %c3351 = zext i32 %t3350 to i64
  %wp3352 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3351, ptr %wp3352, align 8, !alias.scope !3, !noalias !4
  br label %L_80015fbfc
L_80015fbfc:
  ; @pc 0x80015fbfc word 0x39044fff
  %r3353.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3353 = load i64, ptr %r3353.p, align 8, !alias.scope !3, !noalias !4
  %t3354 = add i64 %r3353, 275
  %c3355 = trunc i32 0 to i8
  %gmp3356 = inttoptr i64 %t3354 to ptr
  store i8 %c3355, ptr %gmp3356, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc00 word 0x910023e9
  %r3357.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3357 = load i64, ptr %r3357.p, align 8, !alias.scope !3, !noalias !4
  %t3358 = add i64 %r3357, 8
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3358, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc04 word 0xb0015761
  %wp3360 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc08 word 0x91270c21
  %r3361.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3361 = load i64, ptr %r3361.p, align 8, !alias.scope !3, !noalias !4
  %t3362 = add i64 %r3361, 2499
  %wp3363 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3362, ptr %wp3363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc0c word 0xf9400908
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %t3365 = add i64 %r3364, 16
  %gmp3366 = inttoptr i64 %t3365 to ptr
  %gml3367 = load i64, ptr %gmp3366, align 1, !alias.scope !4, !noalias !3
  %wp3368 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3367, ptr %wp3368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc10 word 0x91003129
  %r3369.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3369 = load i64, ptr %r3369.p, align 8, !alias.scope !3, !noalias !4
  %t3370 = add i64 %r3369, 12
  %wp3371 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3370, ptr %wp3371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc14 word 0xf90007e9
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %t3373 = add i64 %r3372, 8
  %r3374.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3374 = load i64, ptr %r3374.p, align 8, !alias.scope !3, !noalias !4
  %gmp3375 = inttoptr i64 %t3373 to ptr
  store i64 %r3374, ptr %gmp3375, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc18 word 0x52802009
  %c3376 = zext i32 256 to i64
  %wp3377 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3376, ptr %wp3377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc1c word 0x390053ff
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %t3379 = add i64 %r3378, 20
  %c3380 = trunc i32 0 to i8
  %gmp3381 = inttoptr i64 %t3379 to ptr
  store i8 %c3380, ptr %gmp3381, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc20 word 0xb90013e9
  %r3382.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3382 = load i64, ptr %r3382.p, align 8, !alias.scope !3, !noalias !4
  %t3383 = add i64 %r3382, 16
  %r3384.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3384 = load i64, ptr %r3384.p, align 8, !alias.scope !3, !noalias !4
  %c3385 = trunc i64 %r3384 to i32
  %gmp3386 = inttoptr i64 %t3383 to ptr
  store i32 %c3385, ptr %gmp3386, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc24 word 0x910023e0
  %r3387.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3387 = load i64, ptr %r3387.p, align 8, !alias.scope !3, !noalias !4
  %t3388 = add i64 %r3387, 8
  %wp3389 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3388, ptr %wp3389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc28 word 0x2a0403fb
  %r3390.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3390 = load i64, ptr %r3390.p, align 8, !alias.scope !3, !noalias !4
  %c3391 = trunc i64 %r3390 to i32
  %t3392 = or i32 0, %c3391
  %c3393 = zext i32 %t3392 to i64
  %wp3394 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3393, ptr %wp3394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc2c word 0xf9400908
  %r3395.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3395 = load i64, ptr %r3395.p, align 8, !alias.scope !3, !noalias !4
  %t3396 = add i64 %r3395, 16
  %gmp3397 = inttoptr i64 %t3396 to ptr
  %gml3398 = load i64, ptr %gmp3397, align 1, !alias.scope !4, !noalias !3
  %wp3399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3398, ptr %wp3399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc30 word 0xb980250a
  %r3400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3400 = load i64, ptr %r3400.p, align 8, !alias.scope !3, !noalias !4
  %t3401 = add i64 %r3400, 36
  %gmp3402 = inttoptr i64 %t3401 to ptr
  %gml3403 = load i32, ptr %gmp3402, align 1, !alias.scope !4, !noalias !3
  %c3404 = sext i32 %gml3403 to i64
  %wp3405 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3404, ptr %wp3405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc34 word 0xb9800909
  %r3406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3406 = load i64, ptr %r3406.p, align 8, !alias.scope !3, !noalias !4
  %t3407 = add i64 %r3406, 8
  %gmp3408 = inttoptr i64 %t3407 to ptr
  %gml3409 = load i32, ptr %gmp3408, align 1, !alias.scope !4, !noalias !3
  %c3410 = sext i32 %gml3409 to i64
  %wp3411 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3410, ptr %wp3411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc38 word 0x8b0a0108
  %r3412.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3412 = load i64, ptr %r3412.p, align 8, !alias.scope !3, !noalias !4
  %r3413.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3413 = load i64, ptr %r3413.p, align 8, !alias.scope !3, !noalias !4
  %t3414 = add i64 %r3412, %r3413
  %wp3415 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3414, ptr %wp3415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc3c word 0x8b090102
  %r3416.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3416 = load i64, ptr %r3416.p, align 8, !alias.scope !3, !noalias !4
  %r3417.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3417 = load i64, ptr %r3417.p, align 8, !alias.scope !3, !noalias !4
  %t3418 = add i64 %r3416, %r3417
  %wp3419 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3418, ptr %wp3419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc40 word 0x97fce708
  %wp3420 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179204, ptr %wp3420, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80015fc44 word 0xf001caf8
  %wp3421 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34421334016, ptr %wp3421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc48 word 0x91148318
  %r3422.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3422 = load i64, ptr %r3422.p, align 8, !alias.scope !3, !noalias !4
  %t3423 = add i64 %r3422, 1312
  %wp3424 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3423, ptr %wp3424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc4c word 0xf9000278
  %r3425.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3425 = load i64, ptr %r3425.p, align 8, !alias.scope !3, !noalias !4
  %r3426.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3426 = load i64, ptr %r3426.p, align 8, !alias.scope !3, !noalias !4
  %gmp3427 = inttoptr i64 %r3425 to ptr
  store i64 %r3426, ptr %gmp3427, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc50 word 0x52800037
  %c3428 = zext i32 1 to i64
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3428, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc54 word 0x3607b5fa
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %t3431 = and i64 %r3430, 1
  %cmp3432 = icmp eq i64 %t3431, 0
  br i1 %cmp3432, label %L_80015f310, label %L_80015fc58_ft
L_80015fc5c:
  ; @pc 0x80015fc5c word 0xaa1703e0
  %r3433.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3433 = load i64, ptr %r3433.p, align 8, !alias.scope !3, !noalias !4
  %t3434 = or i64 0, %r3433
  %wp3435 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3434, ptr %wp3435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc60 word 0x2a0403fb
  %r3436.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3436 = load i64, ptr %r3436.p, align 8, !alias.scope !3, !noalias !4
  %c3437 = trunc i64 %r3436 to i32
  %t3438 = or i32 0, %c3437
  %c3439 = zext i32 %t3438 to i64
  %wp3440 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3439, ptr %wp3440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc64 word 0xd63f0100
  %r3441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3441 = load i64, ptr %r3441.p, align 8, !alias.scope !3, !noalias !4
  %fp3442 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3441, ptr %fp3442, align 8, !alias.scope !3, !noalias !4
  %wp3443 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179240, ptr %wp3443, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015fc68 word 0x2a1b03e4
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %c3445 = trunc i64 %r3444 to i32
  %t3446 = or i32 0, %c3445
  %c3447 = zext i32 %t3446 to i64
  %wp3448 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3447, ptr %wp3448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc6c word 0x17fffdd4
  br label %L_80015f3bc
L_80015fc70:
  ; @pc 0x80015fc70 word 0x39044fff
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %t3450 = add i64 %r3449, 275
  %c3451 = trunc i32 0 to i8
  %gmp3452 = inttoptr i64 %t3450 to ptr
  store i8 %c3451, ptr %gmp3452, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc74 word 0x910023e9
  %r3453.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3453 = load i64, ptr %r3453.p, align 8, !alias.scope !3, !noalias !4
  %t3454 = add i64 %r3453, 8
  %wp3455 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3454, ptr %wp3455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc78 word 0xb0015761
  %wp3456 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc7c word 0x91270c21
  %r3457.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3457 = load i64, ptr %r3457.p, align 8, !alias.scope !3, !noalias !4
  %t3458 = add i64 %r3457, 2499
  %wp3459 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3458, ptr %wp3459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc80 word 0xf9400908
  %r3460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3460 = load i64, ptr %r3460.p, align 8, !alias.scope !3, !noalias !4
  %t3461 = add i64 %r3460, 16
  %gmp3462 = inttoptr i64 %t3461 to ptr
  %gml3463 = load i64, ptr %gmp3462, align 1, !alias.scope !4, !noalias !3
  %wp3464 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3463, ptr %wp3464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc84 word 0x91003129
  %r3465.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3465 = load i64, ptr %r3465.p, align 8, !alias.scope !3, !noalias !4
  %t3466 = add i64 %r3465, 12
  %wp3467 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3466, ptr %wp3467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc88 word 0xf90007e9
  %r3468.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3468 = load i64, ptr %r3468.p, align 8, !alias.scope !3, !noalias !4
  %t3469 = add i64 %r3468, 8
  %r3470.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3470 = load i64, ptr %r3470.p, align 8, !alias.scope !3, !noalias !4
  %gmp3471 = inttoptr i64 %t3469 to ptr
  store i64 %r3470, ptr %gmp3471, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc8c word 0x52802009
  %c3472 = zext i32 256 to i64
  %wp3473 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3472, ptr %wp3473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc90 word 0x390053ff
  %r3474.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3474 = load i64, ptr %r3474.p, align 8, !alias.scope !3, !noalias !4
  %t3475 = add i64 %r3474, 20
  %c3476 = trunc i32 0 to i8
  %gmp3477 = inttoptr i64 %t3475 to ptr
  store i8 %c3476, ptr %gmp3477, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc94 word 0xb90013e9
  %r3478.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3478 = load i64, ptr %r3478.p, align 8, !alias.scope !3, !noalias !4
  %t3479 = add i64 %r3478, 16
  %r3480.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3480 = load i64, ptr %r3480.p, align 8, !alias.scope !3, !noalias !4
  %c3481 = trunc i64 %r3480 to i32
  %gmp3482 = inttoptr i64 %t3479 to ptr
  store i32 %c3481, ptr %gmp3482, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fc98 word 0x910023e0
  %r3483.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3483 = load i64, ptr %r3483.p, align 8, !alias.scope !3, !noalias !4
  %t3484 = add i64 %r3483, 8
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fc9c word 0x2a0403f7
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %c3487 = trunc i64 %r3486 to i32
  %t3488 = or i32 0, %c3487
  %c3489 = zext i32 %t3488 to i64
  %wp3490 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3489, ptr %wp3490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fca0 word 0xaa0303f8
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %t3492 = or i64 0, %r3491
  %wp3493 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3492, ptr %wp3493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fca4 word 0xf9400908
  %r3494.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3494 = load i64, ptr %r3494.p, align 8, !alias.scope !3, !noalias !4
  %t3495 = add i64 %r3494, 16
  %gmp3496 = inttoptr i64 %t3495 to ptr
  %gml3497 = load i64, ptr %gmp3496, align 1, !alias.scope !4, !noalias !3
  %wp3498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3497, ptr %wp3498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fca8 word 0xb980250a
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %t3500 = add i64 %r3499, 36
  %gmp3501 = inttoptr i64 %t3500 to ptr
  %gml3502 = load i32, ptr %gmp3501, align 1, !alias.scope !4, !noalias !3
  %c3503 = sext i32 %gml3502 to i64
  %wp3504 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3503, ptr %wp3504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcac word 0xb9800909
  %r3505.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3505 = load i64, ptr %r3505.p, align 8, !alias.scope !3, !noalias !4
  %t3506 = add i64 %r3505, 8
  %gmp3507 = inttoptr i64 %t3506 to ptr
  %gml3508 = load i32, ptr %gmp3507, align 1, !alias.scope !4, !noalias !3
  %c3509 = sext i32 %gml3508 to i64
  %wp3510 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3509, ptr %wp3510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcb0 word 0x8b0a0108
  %r3511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3511 = load i64, ptr %r3511.p, align 8, !alias.scope !3, !noalias !4
  %r3512.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3512 = load i64, ptr %r3512.p, align 8, !alias.scope !3, !noalias !4
  %t3513 = add i64 %r3511, %r3512
  %wp3514 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3513, ptr %wp3514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcb4 word 0x8b090102
  %r3515.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3515 = load i64, ptr %r3515.p, align 8, !alias.scope !3, !noalias !4
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %t3517 = add i64 %r3515, %r3516
  %wp3518 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3517, ptr %wp3518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcb8 word 0x97fce6ea
  %wp3519 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179324, ptr %wp3519, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x80015fcbc word 0xaa1803e3
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3520 = load i64, ptr %r3520.p, align 8, !alias.scope !3, !noalias !4
  %t3521 = or i64 0, %r3520
  %wp3522 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3521, ptr %wp3522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcc0 word 0x2a1703e4
  %r3523.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3523 = load i64, ptr %r3523.p, align 8, !alias.scope !3, !noalias !4
  %c3524 = trunc i64 %r3523 to i32
  %t3525 = or i32 0, %c3524
  %c3526 = zext i32 %t3525 to i64
  %wp3527 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3526, ptr %wp3527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcc4 word 0xaa1f03f7
  %t3528 = or i64 0, 0
  %wp3529 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3528, ptr %wp3529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcc8 word 0x17fffe0d
  br label %L_80015f4fc
L_80015fccc:
  ; @pc 0x80015fccc word 0x9001c000
  %wp3530 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcd0 word 0xaa0303f8
  %r3531.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3531 = load i64, ptr %r3531.p, align 8, !alias.scope !3, !noalias !4
  %t3532 = or i64 0, %r3531
  %wp3533 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3532, ptr %wp3533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcd4 word 0xf9452c00
  %r3534.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3534 = load i64, ptr %r3534.p, align 8, !alias.scope !3, !noalias !4
  %t3535 = add i64 %r3534, 2648
  %gmp3536 = inttoptr i64 %t3535 to ptr
  %gml3537 = load i64, ptr %gmp3536, align 1, !alias.scope !4, !noalias !3
  %wp3538 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3537, ptr %wp3538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcd8 word 0xb90007e4
  %r3539.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3539 = load i64, ptr %r3539.p, align 8, !alias.scope !3, !noalias !4
  %t3540 = add i64 %r3539, 4
  %r3541.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3541 = load i64, ptr %r3541.p, align 8, !alias.scope !3, !noalias !4
  %c3542 = trunc i64 %r3541 to i32
  %gmp3543 = inttoptr i64 %t3540 to ptr
  store i32 %c3542, ptr %gmp3543, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fcdc word 0x94a90f31
  %wp3544 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179360, ptr %wp3544, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015fce0 word 0xb94007e4
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %t3546 = add i64 %r3545, 4
  %gmp3547 = inttoptr i64 %t3546 to ptr
  %gml3548 = load i32, ptr %gmp3547, align 1, !alias.scope !4, !noalias !3
  %c3549 = zext i32 %gml3548 to i64
  %wp3550 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3549, ptr %wp3550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fce4 word 0xaa1803e3
  %r3551.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3551 = load i64, ptr %r3551.p, align 8, !alias.scope !3, !noalias !4
  %t3552 = or i64 0, %r3551
  %wp3553 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3552, ptr %wp3553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fce8 word 0x34ffc120
  %r3554.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3554 = load i64, ptr %r3554.p, align 8, !alias.scope !3, !noalias !4
  %c3555 = trunc i64 %r3554 to i32
  %cmp3556 = icmp eq i32 %c3555, 0
  br i1 %cmp3556, label %L_80015f50c, label %L_80015fcec_ft
L_80015fd1c:
  ; @pc 0x80015fd1c word 0x9001c000
  %wp3591 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd20 word 0xaa0303f8
  %r3592.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3592 = load i64, ptr %r3592.p, align 8, !alias.scope !3, !noalias !4
  %t3593 = or i64 0, %r3592
  %wp3594 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3593, ptr %wp3594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd24 word 0xf9453400
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %t3596 = add i64 %r3595, 2664
  %gmp3597 = inttoptr i64 %t3596 to ptr
  %gml3598 = load i64, ptr %gmp3597, align 1, !alias.scope !4, !noalias !3
  %wp3599 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3598, ptr %wp3599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd28 word 0xb90007e4
  %r3600.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3600 = load i64, ptr %r3600.p, align 8, !alias.scope !3, !noalias !4
  %t3601 = add i64 %r3600, 4
  %r3602.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3602 = load i64, ptr %r3602.p, align 8, !alias.scope !3, !noalias !4
  %c3603 = trunc i64 %r3602 to i32
  %gmp3604 = inttoptr i64 %t3601 to ptr
  store i32 %c3603, ptr %gmp3604, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fd2c word 0x94a90f1d
  %wp3605 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179440, ptr %wp3605, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015fd30 word 0xb001c0c9
  %wp3606 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd34 word 0xaa1803e3
  %r3607.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3607 = load i64, ptr %r3607.p, align 8, !alias.scope !3, !noalias !4
  %t3608 = or i64 0, %r3607
  %wp3609 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3608, ptr %wp3609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd38 word 0xf941b529
  %r3610.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3610 = load i64, ptr %r3610.p, align 8, !alias.scope !3, !noalias !4
  %t3611 = add i64 %r3610, 872
  %gmp3612 = inttoptr i64 %t3611 to ptr
  %gml3613 = load i64, ptr %gmp3612, align 1, !alias.scope !4, !noalias !3
  %wp3614 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3613, ptr %wp3614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd3c word 0xb94007e4
  %r3615.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3615 = load i64, ptr %r3615.p, align 8, !alias.scope !3, !noalias !4
  %t3616 = add i64 %r3615, 4
  %gmp3617 = inttoptr i64 %t3616 to ptr
  %gml3618 = load i32, ptr %gmp3617, align 1, !alias.scope !4, !noalias !3
  %c3619 = zext i32 %gml3618 to i64
  %wp3620 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3619, ptr %wp3620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd40 word 0x34ffc640
  %r3621.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3621 = load i64, ptr %r3621.p, align 8, !alias.scope !3, !noalias !4
  %c3622 = trunc i64 %r3621 to i32
  %cmp3623 = icmp eq i32 %c3622, 0
  br i1 %cmp3623, label %L_80015f608, label %L_80015fd44_ft
L_80015fd7c:
  ; @pc 0x80015fd7c word 0x9001c000
  %wp3664 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd80 word 0xaa0303f8
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %t3666 = or i64 0, %r3665
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd84 word 0xf9453c00
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %t3669 = add i64 %r3668, 2680
  %gmp3670 = inttoptr i64 %t3669 to ptr
  %gml3671 = load i64, ptr %gmp3670, align 1, !alias.scope !4, !noalias !3
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd88 word 0xb90007e4
  %r3673.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3673 = load i64, ptr %r3673.p, align 8, !alias.scope !3, !noalias !4
  %t3674 = add i64 %r3673, 4
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %c3676 = trunc i64 %r3675 to i32
  %gmp3677 = inttoptr i64 %t3674 to ptr
  store i32 %c3676, ptr %gmp3677, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fd8c word 0x94a90f05
  %wp3678 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179536, ptr %wp3678, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015fd90 word 0xb001c0c9
  %wp3679 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd94 word 0xaa1803e3
  %r3680.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3680 = load i64, ptr %r3680.p, align 8, !alias.scope !3, !noalias !4
  %t3681 = or i64 0, %r3680
  %wp3682 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3681, ptr %wp3682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd98 word 0xf941b529
  %r3683.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3683 = load i64, ptr %r3683.p, align 8, !alias.scope !3, !noalias !4
  %t3684 = add i64 %r3683, 872
  %gmp3685 = inttoptr i64 %t3684 to ptr
  %gml3686 = load i64, ptr %gmp3685, align 1, !alias.scope !4, !noalias !3
  %wp3687 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3686, ptr %wp3687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd9c word 0xb94007e4
  %r3688.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3688 = load i64, ptr %r3688.p, align 8, !alias.scope !3, !noalias !4
  %t3689 = add i64 %r3688, 4
  %gmp3690 = inttoptr i64 %t3689 to ptr
  %gml3691 = load i32, ptr %gmp3690, align 1, !alias.scope !4, !noalias !3
  %c3692 = zext i32 %gml3691 to i64
  %wp3693 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3692, ptr %wp3693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fda0 word 0x34ffcae0
  %r3694.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3694 = load i64, ptr %r3694.p, align 8, !alias.scope !3, !noalias !4
  %c3695 = trunc i64 %r3694 to i32
  %cmp3696 = icmp eq i32 %c3695, 0
  br i1 %cmp3696, label %L_80015f6fc, label %L_80015fda4_ft
L_80015fddc:
  ; @pc 0x80015fddc word 0x9001c000
  %wp3737 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fde0 word 0xaa0303f8
  %r3738.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3738 = load i64, ptr %r3738.p, align 8, !alias.scope !3, !noalias !4
  %t3739 = or i64 0, %r3738
  %wp3740 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3739, ptr %wp3740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fde4 word 0xf9454400
  %r3741.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3741 = load i64, ptr %r3741.p, align 8, !alias.scope !3, !noalias !4
  %t3742 = add i64 %r3741, 2696
  %gmp3743 = inttoptr i64 %t3742 to ptr
  %gml3744 = load i64, ptr %gmp3743, align 1, !alias.scope !4, !noalias !3
  %wp3745 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3744, ptr %wp3745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fde8 word 0xb90007e4
  %r3746.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3746 = load i64, ptr %r3746.p, align 8, !alias.scope !3, !noalias !4
  %t3747 = add i64 %r3746, 4
  %r3748.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3748 = load i64, ptr %r3748.p, align 8, !alias.scope !3, !noalias !4
  %c3749 = trunc i64 %r3748 to i32
  %gmp3750 = inttoptr i64 %t3747 to ptr
  store i32 %c3749, ptr %gmp3750, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fdec word 0x94a90eed
  %wp3751 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179632, ptr %wp3751, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015fdf0 word 0xb001c0c9
  %wp3752 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdf4 word 0xaa1803e3
  %r3753.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3753 = load i64, ptr %r3753.p, align 8, !alias.scope !3, !noalias !4
  %t3754 = or i64 0, %r3753
  %wp3755 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3754, ptr %wp3755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdf8 word 0xf941b529
  %r3756.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3756 = load i64, ptr %r3756.p, align 8, !alias.scope !3, !noalias !4
  %t3757 = add i64 %r3756, 872
  %gmp3758 = inttoptr i64 %t3757 to ptr
  %gml3759 = load i64, ptr %gmp3758, align 1, !alias.scope !4, !noalias !3
  %wp3760 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3759, ptr %wp3760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdfc word 0xb94007e4
  %r3761.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3761 = load i64, ptr %r3761.p, align 8, !alias.scope !3, !noalias !4
  %t3762 = add i64 %r3761, 4
  %gmp3763 = inttoptr i64 %t3762 to ptr
  %gml3764 = load i32, ptr %gmp3763, align 1, !alias.scope !4, !noalias !3
  %c3765 = zext i32 %gml3764 to i64
  %wp3766 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3765, ptr %wp3766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe00 word 0x34ffcf80
  %r3767.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3767 = load i64, ptr %r3767.p, align 8, !alias.scope !3, !noalias !4
  %c3768 = trunc i64 %r3767 to i32
  %cmp3769 = icmp eq i32 %c3768, 0
  br i1 %cmp3769, label %L_80015f7f0, label %L_80015fe04_ft
L_80015fe3c:
  ; @pc 0x80015fe3c word 0x9001c000
  %wp3810 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe40 word 0xaa0303f8
  %r3811.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3811 = load i64, ptr %r3811.p, align 8, !alias.scope !3, !noalias !4
  %t3812 = or i64 0, %r3811
  %wp3813 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3812, ptr %wp3813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe44 word 0xf9454c00
  %r3814.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3814 = load i64, ptr %r3814.p, align 8, !alias.scope !3, !noalias !4
  %t3815 = add i64 %r3814, 2712
  %gmp3816 = inttoptr i64 %t3815 to ptr
  %gml3817 = load i64, ptr %gmp3816, align 1, !alias.scope !4, !noalias !3
  %wp3818 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3817, ptr %wp3818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe48 word 0xb90007e4
  %r3819.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3819 = load i64, ptr %r3819.p, align 8, !alias.scope !3, !noalias !4
  %t3820 = add i64 %r3819, 4
  %r3821.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3821 = load i64, ptr %r3821.p, align 8, !alias.scope !3, !noalias !4
  %c3822 = trunc i64 %r3821 to i32
  %gmp3823 = inttoptr i64 %t3820 to ptr
  store i32 %c3822, ptr %gmp3823, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fe4c word 0x94a90ed5
  %wp3824 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179728, ptr %wp3824, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015fe50 word 0xb001c0c9
  %wp3825 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe54 word 0xaa1803e3
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %t3827 = or i64 0, %r3826
  %wp3828 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3827, ptr %wp3828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe58 word 0xf941b529
  %r3829.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3829 = load i64, ptr %r3829.p, align 8, !alias.scope !3, !noalias !4
  %t3830 = add i64 %r3829, 872
  %gmp3831 = inttoptr i64 %t3830 to ptr
  %gml3832 = load i64, ptr %gmp3831, align 1, !alias.scope !4, !noalias !3
  %wp3833 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3832, ptr %wp3833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe5c word 0xb94007e4
  %r3834.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3834 = load i64, ptr %r3834.p, align 8, !alias.scope !3, !noalias !4
  %t3835 = add i64 %r3834, 4
  %gmp3836 = inttoptr i64 %t3835 to ptr
  %gml3837 = load i32, ptr %gmp3836, align 1, !alias.scope !4, !noalias !3
  %c3838 = zext i32 %gml3837 to i64
  %wp3839 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3838, ptr %wp3839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe60 word 0x34ffd420
  %r3840.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3840 = load i64, ptr %r3840.p, align 8, !alias.scope !3, !noalias !4
  %c3841 = trunc i64 %r3840 to i32
  %cmp3842 = icmp eq i32 %c3841, 0
  br i1 %cmp3842, label %L_80015f8e4, label %L_80015fe64_ft
L_80015fe9c:
  ; @pc 0x80015fe9c word 0xb001c0c0
  %wp3883 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp3883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fea0 word 0xaa0303f8
  %r3884.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3884 = load i64, ptr %r3884.p, align 8, !alias.scope !3, !noalias !4
  %t3885 = or i64 0, %r3884
  %wp3886 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3885, ptr %wp3886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fea4 word 0xf941bc00
  %r3887.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3887 = load i64, ptr %r3887.p, align 8, !alias.scope !3, !noalias !4
  %t3888 = add i64 %r3887, 888
  %gmp3889 = inttoptr i64 %t3888 to ptr
  %gml3890 = load i64, ptr %gmp3889, align 1, !alias.scope !4, !noalias !3
  %wp3891 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3890, ptr %wp3891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fea8 word 0xb90007e4
  %r3892.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3892 = load i64, ptr %r3892.p, align 8, !alias.scope !3, !noalias !4
  %t3893 = add i64 %r3892, 4
  %r3894.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3894 = load i64, ptr %r3894.p, align 8, !alias.scope !3, !noalias !4
  %c3895 = trunc i64 %r3894 to i32
  %gmp3896 = inttoptr i64 %t3893 to ptr
  store i32 %c3895, ptr %gmp3896, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015feac word 0x94a90ebd
  %wp3897 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179824, ptr %wp3897, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015feb0 word 0xb001c0c9
  %wp3898 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015feb4 word 0xaa1803e3
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3899 = load i64, ptr %r3899.p, align 8, !alias.scope !3, !noalias !4
  %t3900 = or i64 0, %r3899
  %wp3901 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3900, ptr %wp3901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015feb8 word 0xf941b529
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %t3903 = add i64 %r3902, 872
  %gmp3904 = inttoptr i64 %t3903 to ptr
  %gml3905 = load i64, ptr %gmp3904, align 1, !alias.scope !4, !noalias !3
  %wp3906 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3905, ptr %wp3906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015febc word 0xb94007e4
  %r3907.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3907 = load i64, ptr %r3907.p, align 8, !alias.scope !3, !noalias !4
  %t3908 = add i64 %r3907, 4
  %gmp3909 = inttoptr i64 %t3908 to ptr
  %gml3910 = load i32, ptr %gmp3909, align 1, !alias.scope !4, !noalias !3
  %c3911 = zext i32 %gml3910 to i64
  %wp3912 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3911, ptr %wp3912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fec0 word 0x34ffb3c0
  %r3913.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3913 = load i64, ptr %r3913.p, align 8, !alias.scope !3, !noalias !4
  %c3914 = trunc i64 %r3913 to i32
  %cmp3915 = icmp eq i32 %c3914, 0
  br i1 %cmp3915, label %L_80015f538, label %L_80015fec4_ft
L_80015fefc:
  ; @pc 0x80015fefc word 0xf001bf60
  %wp3956 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp3956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff00 word 0xaa0303f8
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %t3958 = or i64 0, %r3957
  %wp3959 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3958, ptr %wp3959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff04 word 0xf9430000
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %t3961 = add i64 %r3960, 1536
  %gmp3962 = inttoptr i64 %t3961 to ptr
  %gml3963 = load i64, ptr %gmp3962, align 1, !alias.scope !4, !noalias !3
  %wp3964 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3963, ptr %wp3964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff08 word 0xb90007e4
  %r3965.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3965 = load i64, ptr %r3965.p, align 8, !alias.scope !3, !noalias !4
  %t3966 = add i64 %r3965, 4
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %c3968 = trunc i64 %r3967 to i32
  %gmp3969 = inttoptr i64 %t3966 to ptr
  store i32 %c3968, ptr %gmp3969, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015ff0c word 0x94a90ea5
  %wp3970 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179920, ptr %wp3970, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015ff10 word 0xb001c0c9
  %wp3971 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff14 word 0xaa1803e3
  %r3972.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3972 = load i64, ptr %r3972.p, align 8, !alias.scope !3, !noalias !4
  %t3973 = or i64 0, %r3972
  %wp3974 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3973, ptr %wp3974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff18 word 0xf941b529
  %r3975.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3975 = load i64, ptr %r3975.p, align 8, !alias.scope !3, !noalias !4
  %t3976 = add i64 %r3975, 872
  %gmp3977 = inttoptr i64 %t3976 to ptr
  %gml3978 = load i64, ptr %gmp3977, align 1, !alias.scope !4, !noalias !3
  %wp3979 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3978, ptr %wp3979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff1c word 0xb94007e4
  %r3980.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3980 = load i64, ptr %r3980.p, align 8, !alias.scope !3, !noalias !4
  %t3981 = add i64 %r3980, 4
  %gmp3982 = inttoptr i64 %t3981 to ptr
  %gml3983 = load i32, ptr %gmp3982, align 1, !alias.scope !4, !noalias !3
  %c3984 = zext i32 %gml3983 to i64
  %wp3985 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3984, ptr %wp3985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff20 word 0x34ffb140
  %r3986.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3986 = load i64, ptr %r3986.p, align 8, !alias.scope !3, !noalias !4
  %c3987 = trunc i64 %r3986 to i32
  %cmp3988 = icmp eq i32 %c3987, 0
  br i1 %cmp3988, label %L_80015f548, label %L_80015ff24_ft
L_80015ff5c:
  ; @pc 0x80015ff5c word 0xb001c0c0
  %wp4029 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff60 word 0xaa0303f8
  %r4030.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4030 = load i64, ptr %r4030.p, align 8, !alias.scope !3, !noalias !4
  %t4031 = or i64 0, %r4030
  %wp4032 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4031, ptr %wp4032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff64 word 0xf941bc00
  %r4033.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4033 = load i64, ptr %r4033.p, align 8, !alias.scope !3, !noalias !4
  %t4034 = add i64 %r4033, 888
  %gmp4035 = inttoptr i64 %t4034 to ptr
  %gml4036 = load i64, ptr %gmp4035, align 1, !alias.scope !4, !noalias !3
  %wp4037 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4036, ptr %wp4037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff68 word 0xb90007e4
  %r4038.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4038 = load i64, ptr %r4038.p, align 8, !alias.scope !3, !noalias !4
  %t4039 = add i64 %r4038, 4
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %c4041 = trunc i64 %r4040 to i32
  %gmp4042 = inttoptr i64 %t4039 to ptr
  store i32 %c4041, ptr %gmp4042, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015ff6c word 0x94a90e8d
  %wp4043 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180016, ptr %wp4043, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015ff70 word 0xb001c0c9
  %wp4044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff74 word 0xaa1803e3
  %r4045.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4045 = load i64, ptr %r4045.p, align 8, !alias.scope !3, !noalias !4
  %t4046 = or i64 0, %r4045
  %wp4047 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4046, ptr %wp4047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff78 word 0xf941b529
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %t4049 = add i64 %r4048, 872
  %gmp4050 = inttoptr i64 %t4049 to ptr
  %gml4051 = load i64, ptr %gmp4050, align 1, !alias.scope !4, !noalias !3
  %wp4052 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4051, ptr %wp4052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff7c word 0xb94007e4
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %t4054 = add i64 %r4053, 4
  %gmp4055 = inttoptr i64 %t4054 to ptr
  %gml4056 = load i32, ptr %gmp4055, align 1, !alias.scope !4, !noalias !3
  %c4057 = zext i32 %gml4056 to i64
  %wp4058 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4057, ptr %wp4058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff80 word 0x34ffb560
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %c4060 = trunc i64 %r4059 to i32
  %cmp4061 = icmp eq i32 %c4060, 0
  br i1 %cmp4061, label %L_80015f62c, label %L_80015ff84_ft
L_80015ffbc:
  ; @pc 0x80015ffbc word 0xf001bf60
  %wp4102 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffc0 word 0xaa0303f8
  %r4103.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4103 = load i64, ptr %r4103.p, align 8, !alias.scope !3, !noalias !4
  %t4104 = or i64 0, %r4103
  %wp4105 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4104, ptr %wp4105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffc4 word 0xf9430000
  %r4106.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4106 = load i64, ptr %r4106.p, align 8, !alias.scope !3, !noalias !4
  %t4107 = add i64 %r4106, 1536
  %gmp4108 = inttoptr i64 %t4107 to ptr
  %gml4109 = load i64, ptr %gmp4108, align 1, !alias.scope !4, !noalias !3
  %wp4110 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4109, ptr %wp4110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffc8 word 0xb90007e4
  %r4111.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4111 = load i64, ptr %r4111.p, align 8, !alias.scope !3, !noalias !4
  %t4112 = add i64 %r4111, 4
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %c4114 = trunc i64 %r4113 to i32
  %gmp4115 = inttoptr i64 %t4112 to ptr
  store i32 %c4114, ptr %gmp4115, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015ffcc word 0x94a90e75
  %wp4116 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180112, ptr %wp4116, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015ffd0 word 0xb001c0c9
  %wp4117 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffd4 word 0xaa1803e3
  %r4118.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4118 = load i64, ptr %r4118.p, align 8, !alias.scope !3, !noalias !4
  %t4119 = or i64 0, %r4118
  %wp4120 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4119, ptr %wp4120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffd8 word 0xf941b529
  %r4121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4121 = load i64, ptr %r4121.p, align 8, !alias.scope !3, !noalias !4
  %t4122 = add i64 %r4121, 872
  %gmp4123 = inttoptr i64 %t4122 to ptr
  %gml4124 = load i64, ptr %gmp4123, align 1, !alias.scope !4, !noalias !3
  %wp4125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4124, ptr %wp4125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffdc word 0xb94007e4
  %r4126.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4126 = load i64, ptr %r4126.p, align 8, !alias.scope !3, !noalias !4
  %t4127 = add i64 %r4126, 4
  %gmp4128 = inttoptr i64 %t4127 to ptr
  %gml4129 = load i32, ptr %gmp4128, align 1, !alias.scope !4, !noalias !3
  %c4130 = zext i32 %gml4129 to i64
  %wp4131 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4130, ptr %wp4131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffe0 word 0x34ffb2e0
  %r4132.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4132 = load i64, ptr %r4132.p, align 8, !alias.scope !3, !noalias !4
  %c4133 = trunc i64 %r4132 to i32
  %cmp4134 = icmp eq i32 %c4133, 0
  br i1 %cmp4134, label %L_80015f63c, label %L_80015ffe4_ft
L_80016001c:
  ; @pc 0x80016001c word 0x9001c0c0
  %wp4175 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160020 word 0xaa0303f8
  %r4176.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4176 = load i64, ptr %r4176.p, align 8, !alias.scope !3, !noalias !4
  %t4177 = or i64 0, %r4176
  %wp4178 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4177, ptr %wp4178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160024 word 0xf941bc00
  %r4179.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4179 = load i64, ptr %r4179.p, align 8, !alias.scope !3, !noalias !4
  %t4180 = add i64 %r4179, 888
  %gmp4181 = inttoptr i64 %t4180 to ptr
  %gml4182 = load i64, ptr %gmp4181, align 1, !alias.scope !4, !noalias !3
  %wp4183 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4182, ptr %wp4183, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160028 word 0xb90007e4
  %r4184.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4184 = load i64, ptr %r4184.p, align 8, !alias.scope !3, !noalias !4
  %t4185 = add i64 %r4184, 4
  %r4186.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4186 = load i64, ptr %r4186.p, align 8, !alias.scope !3, !noalias !4
  %c4187 = trunc i64 %r4186 to i32
  %gmp4188 = inttoptr i64 %t4185 to ptr
  store i32 %c4187, ptr %gmp4188, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80016002c word 0x94a90e5d
  %wp4189 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180208, ptr %wp4189, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800160030 word 0x9001c0c9
  %wp4190 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160034 word 0xaa1803e3
  %r4191.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4191 = load i64, ptr %r4191.p, align 8, !alias.scope !3, !noalias !4
  %t4192 = or i64 0, %r4191
  %wp4193 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4192, ptr %wp4193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160038 word 0xf941b529
  %r4194.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4194 = load i64, ptr %r4194.p, align 8, !alias.scope !3, !noalias !4
  %t4195 = add i64 %r4194, 872
  %gmp4196 = inttoptr i64 %t4195 to ptr
  %gml4197 = load i64, ptr %gmp4196, align 1, !alias.scope !4, !noalias !3
  %wp4198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4197, ptr %wp4198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016003c word 0xb94007e4
  %r4199.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4199 = load i64, ptr %r4199.p, align 8, !alias.scope !3, !noalias !4
  %t4200 = add i64 %r4199, 4
  %gmp4201 = inttoptr i64 %t4200 to ptr
  %gml4202 = load i32, ptr %gmp4201, align 1, !alias.scope !4, !noalias !3
  %c4203 = zext i32 %gml4202 to i64
  %wp4204 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4203, ptr %wp4204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160040 word 0x34ffbea0
  %r4205.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4205 = load i64, ptr %r4205.p, align 8, !alias.scope !3, !noalias !4
  %c4206 = trunc i64 %r4205 to i32
  %cmp4207 = icmp eq i32 %c4206, 0
  br i1 %cmp4207, label %L_80015f814, label %L_800160044_ft
L_80016007c:
  ; @pc 0x80016007c word 0xd001bf60
  %wp4248 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160080 word 0xaa0303f8
  %r4249.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4249 = load i64, ptr %r4249.p, align 8, !alias.scope !3, !noalias !4
  %t4250 = or i64 0, %r4249
  %wp4251 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4250, ptr %wp4251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160084 word 0xf9430000
  %r4252.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4252 = load i64, ptr %r4252.p, align 8, !alias.scope !3, !noalias !4
  %t4253 = add i64 %r4252, 1536
  %gmp4254 = inttoptr i64 %t4253 to ptr
  %gml4255 = load i64, ptr %gmp4254, align 1, !alias.scope !4, !noalias !3
  %wp4256 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4255, ptr %wp4256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160088 word 0xb90007e4
  %r4257.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4257 = load i64, ptr %r4257.p, align 8, !alias.scope !3, !noalias !4
  %t4258 = add i64 %r4257, 4
  %r4259.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4259 = load i64, ptr %r4259.p, align 8, !alias.scope !3, !noalias !4
  %c4260 = trunc i64 %r4259 to i32
  %gmp4261 = inttoptr i64 %t4258 to ptr
  store i32 %c4260, ptr %gmp4261, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80016008c word 0x94a90e45
  %wp4262 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180304, ptr %wp4262, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800160090 word 0x9001c0c9
  %wp4263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160094 word 0xaa1803e3
  %r4264.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4264 = load i64, ptr %r4264.p, align 8, !alias.scope !3, !noalias !4
  %t4265 = or i64 0, %r4264
  %wp4266 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4265, ptr %wp4266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160098 word 0xf941b529
  %r4267.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4267 = load i64, ptr %r4267.p, align 8, !alias.scope !3, !noalias !4
  %t4268 = add i64 %r4267, 872
  %gmp4269 = inttoptr i64 %t4268 to ptr
  %gml4270 = load i64, ptr %gmp4269, align 1, !alias.scope !4, !noalias !3
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4270, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016009c word 0xb94007e4
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %t4273 = add i64 %r4272, 4
  %gmp4274 = inttoptr i64 %t4273 to ptr
  %gml4275 = load i32, ptr %gmp4274, align 1, !alias.scope !4, !noalias !3
  %c4276 = zext i32 %gml4275 to i64
  %wp4277 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4276, ptr %wp4277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600a0 word 0x34ffbc20
  %r4278.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4278 = load i64, ptr %r4278.p, align 8, !alias.scope !3, !noalias !4
  %c4279 = trunc i64 %r4278 to i32
  %cmp4280 = icmp eq i32 %c4279, 0
  br i1 %cmp4280, label %L_80015f824, label %L_8001600a4_ft
L_8001600dc:
  ; @pc 0x8001600dc word 0x9001c0c0
  %wp4321 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600e0 word 0xaa0303f8
  %r4322.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4322 = load i64, ptr %r4322.p, align 8, !alias.scope !3, !noalias !4
  %t4323 = or i64 0, %r4322
  %wp4324 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4323, ptr %wp4324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600e4 word 0xf941bc00
  %r4325.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4325 = load i64, ptr %r4325.p, align 8, !alias.scope !3, !noalias !4
  %t4326 = add i64 %r4325, 888
  %gmp4327 = inttoptr i64 %t4326 to ptr
  %gml4328 = load i64, ptr %gmp4327, align 1, !alias.scope !4, !noalias !3
  %wp4329 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4328, ptr %wp4329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600e8 word 0xb90007e4
  %r4330.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4330 = load i64, ptr %r4330.p, align 8, !alias.scope !3, !noalias !4
  %t4331 = add i64 %r4330, 4
  %r4332.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4332 = load i64, ptr %r4332.p, align 8, !alias.scope !3, !noalias !4
  %c4333 = trunc i64 %r4332 to i32
  %gmp4334 = inttoptr i64 %t4331 to ptr
  store i32 %c4333, ptr %gmp4334, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001600ec word 0x94a90e2d
  %wp4335 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180400, ptr %wp4335, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001600f0 word 0x9001c0c9
  %wp4336 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600f4 word 0xaa1803e3
  %r4337.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4337 = load i64, ptr %r4337.p, align 8, !alias.scope !3, !noalias !4
  %t4338 = or i64 0, %r4337
  %wp4339 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4338, ptr %wp4339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600f8 word 0xf941b529
  %r4340.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4340 = load i64, ptr %r4340.p, align 8, !alias.scope !3, !noalias !4
  %t4341 = add i64 %r4340, 872
  %gmp4342 = inttoptr i64 %t4341 to ptr
  %gml4343 = load i64, ptr %gmp4342, align 1, !alias.scope !4, !noalias !3
  %wp4344 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4343, ptr %wp4344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600fc word 0xb94007e4
  %r4345.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4345 = load i64, ptr %r4345.p, align 8, !alias.scope !3, !noalias !4
  %t4346 = add i64 %r4345, 4
  %gmp4347 = inttoptr i64 %t4346 to ptr
  %gml4348 = load i32, ptr %gmp4347, align 1, !alias.scope !4, !noalias !3
  %c4349 = zext i32 %gml4348 to i64
  %wp4350 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4349, ptr %wp4350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160100 word 0x34ffb100
  %r4351.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4351 = load i64, ptr %r4351.p, align 8, !alias.scope !3, !noalias !4
  %c4352 = trunc i64 %r4351 to i32
  %cmp4353 = icmp eq i32 %c4352, 0
  br i1 %cmp4353, label %L_80015f720, label %L_800160104_ft
L_80016013c:
  ; @pc 0x80016013c word 0xd001bf60
  %wp4394 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160140 word 0xaa0303f8
  %r4395.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4395 = load i64, ptr %r4395.p, align 8, !alias.scope !3, !noalias !4
  %t4396 = or i64 0, %r4395
  %wp4397 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4396, ptr %wp4397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160144 word 0xf9430000
  %r4398.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4398 = load i64, ptr %r4398.p, align 8, !alias.scope !3, !noalias !4
  %t4399 = add i64 %r4398, 1536
  %gmp4400 = inttoptr i64 %t4399 to ptr
  %gml4401 = load i64, ptr %gmp4400, align 1, !alias.scope !4, !noalias !3
  %wp4402 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4401, ptr %wp4402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160148 word 0xb90007e4
  %r4403.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4403 = load i64, ptr %r4403.p, align 8, !alias.scope !3, !noalias !4
  %t4404 = add i64 %r4403, 4
  %r4405.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4405 = load i64, ptr %r4405.p, align 8, !alias.scope !3, !noalias !4
  %c4406 = trunc i64 %r4405 to i32
  %gmp4407 = inttoptr i64 %t4404 to ptr
  store i32 %c4406, ptr %gmp4407, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80016014c word 0x94a90e15
  %wp4408 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180496, ptr %wp4408, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800160150 word 0x9001c0c9
  %wp4409 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160154 word 0xaa1803e3
  %r4410.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4410 = load i64, ptr %r4410.p, align 8, !alias.scope !3, !noalias !4
  %t4411 = or i64 0, %r4410
  %wp4412 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4411, ptr %wp4412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160158 word 0xf941b529
  %r4413.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4413 = load i64, ptr %r4413.p, align 8, !alias.scope !3, !noalias !4
  %t4414 = add i64 %r4413, 872
  %gmp4415 = inttoptr i64 %t4414 to ptr
  %gml4416 = load i64, ptr %gmp4415, align 1, !alias.scope !4, !noalias !3
  %wp4417 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4416, ptr %wp4417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016015c word 0xb94007e4
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %t4419 = add i64 %r4418, 4
  %gmp4420 = inttoptr i64 %t4419 to ptr
  %gml4421 = load i32, ptr %gmp4420, align 1, !alias.scope !4, !noalias !3
  %c4422 = zext i32 %gml4421 to i64
  %wp4423 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4422, ptr %wp4423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160160 word 0x34ffae80
  %r4424.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4424 = load i64, ptr %r4424.p, align 8, !alias.scope !3, !noalias !4
  %c4425 = trunc i64 %r4424 to i32
  %cmp4426 = icmp eq i32 %c4425, 0
  br i1 %cmp4426, label %L_80015f730, label %L_800160164_ft
L_80016019c:
  ; @pc 0x80016019c word 0x9001c0c0
  %wp4467 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601a0 word 0x2a0403f7
  %r4468.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4468 = load i64, ptr %r4468.p, align 8, !alias.scope !3, !noalias !4
  %c4469 = trunc i64 %r4468 to i32
  %t4470 = or i32 0, %c4469
  %c4471 = zext i32 %t4470 to i64
  %wp4472 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4471, ptr %wp4472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601a4 word 0xf941bc00
  %r4473.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4473 = load i64, ptr %r4473.p, align 8, !alias.scope !3, !noalias !4
  %t4474 = add i64 %r4473, 888
  %gmp4475 = inttoptr i64 %t4474 to ptr
  %gml4476 = load i64, ptr %gmp4475, align 1, !alias.scope !4, !noalias !3
  %wp4477 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4476, ptr %wp4477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601a8 word 0xaa0303f8
  %r4478.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4478 = load i64, ptr %r4478.p, align 8, !alias.scope !3, !noalias !4
  %t4479 = or i64 0, %r4478
  %wp4480 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4479, ptr %wp4480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601ac word 0x94a90dfd
  %wp4481 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180592, ptr %wp4481, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001601b0 word 0xaa1803e3
  %r4482.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4482 = load i64, ptr %r4482.p, align 8, !alias.scope !3, !noalias !4
  %t4483 = or i64 0, %r4482
  %wp4484 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4483, ptr %wp4484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601b4 word 0x2a1703e4
  %r4485.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4485 = load i64, ptr %r4485.p, align 8, !alias.scope !3, !noalias !4
  %c4486 = trunc i64 %r4485 to i32
  %t4487 = or i32 0, %c4486
  %c4488 = zext i32 %t4487 to i64
  %wp4489 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4488, ptr %wp4489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601b8 word 0x34ffba80
  %r4490.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4490 = load i64, ptr %r4490.p, align 8, !alias.scope !3, !noalias !4
  %c4491 = trunc i64 %r4490 to i32
  %cmp4492 = icmp eq i32 %c4491, 0
  br i1 %cmp4492, label %L_80015f908, label %L_8001601bc_ft
L_8001601ec:
  ; @pc 0x8001601ec word 0xd001bf60
  %wp4526 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601f0 word 0x2a0403f7
  %r4527.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4527 = load i64, ptr %r4527.p, align 8, !alias.scope !3, !noalias !4
  %c4528 = trunc i64 %r4527 to i32
  %t4529 = or i32 0, %c4528
  %c4530 = zext i32 %t4529 to i64
  %wp4531 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4530, ptr %wp4531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601f4 word 0xf9430000
  %r4532.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4532 = load i64, ptr %r4532.p, align 8, !alias.scope !3, !noalias !4
  %t4533 = add i64 %r4532, 1536
  %gmp4534 = inttoptr i64 %t4533 to ptr
  %gml4535 = load i64, ptr %gmp4534, align 1, !alias.scope !4, !noalias !3
  %wp4536 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4535, ptr %wp4536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601f8 word 0xaa0303f8
  %r4537.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4537 = load i64, ptr %r4537.p, align 8, !alias.scope !3, !noalias !4
  %t4538 = or i64 0, %r4537
  %wp4539 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4538, ptr %wp4539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601fc word 0x94a90de9
  %wp4540 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180672, ptr %wp4540, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800160200 word 0xaa1803e3
  %r4541.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4541 = load i64, ptr %r4541.p, align 8, !alias.scope !3, !noalias !4
  %t4542 = or i64 0, %r4541
  %wp4543 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4542, ptr %wp4543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160204 word 0x2a1703e4
  %r4544.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4544 = load i64, ptr %r4544.p, align 8, !alias.scope !3, !noalias !4
  %c4545 = trunc i64 %r4544 to i32
  %t4546 = or i32 0, %c4545
  %c4547 = zext i32 %t4546 to i64
  %wp4548 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4547, ptr %wp4548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160208 word 0x34ffb880
  %r4549.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4549 = load i64, ptr %r4549.p, align 8, !alias.scope !3, !noalias !4
  %c4550 = trunc i64 %r4549 to i32
  %cmp4551 = icmp eq i32 %c4550, 0
  br i1 %cmp4551, label %L_80015f918, label %L_80016020c_ft
L_80016023c:
  ; @pc 0x80016023c word 0xd001bf60
  %wp4585 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160240 word 0x2a0403f7
  %r4586.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4586 = load i64, ptr %r4586.p, align 8, !alias.scope !3, !noalias !4
  %c4587 = trunc i64 %r4586 to i32
  %t4588 = or i32 0, %c4587
  %c4589 = zext i32 %t4588 to i64
  %wp4590 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4589, ptr %wp4590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160244 word 0xf9430c00
  %r4591.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4591 = load i64, ptr %r4591.p, align 8, !alias.scope !3, !noalias !4
  %t4592 = add i64 %r4591, 1560
  %gmp4593 = inttoptr i64 %t4592 to ptr
  %gml4594 = load i64, ptr %gmp4593, align 1, !alias.scope !4, !noalias !3
  %wp4595 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4594, ptr %wp4595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160248 word 0xaa0303f8
  %r4596.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4596 = load i64, ptr %r4596.p, align 8, !alias.scope !3, !noalias !4
  %t4597 = or i64 0, %r4596
  %wp4598 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4597, ptr %wp4598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016024c word 0x94a90dd5
  %wp4599 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180752, ptr %wp4599, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x800160250 word 0xaa1803e3
  %r4600.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4600 = load i64, ptr %r4600.p, align 8, !alias.scope !3, !noalias !4
  %t4601 = or i64 0, %r4600
  %wp4602 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4601, ptr %wp4602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160254 word 0x2a1703e4
  %r4603.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4603 = load i64, ptr %r4603.p, align 8, !alias.scope !3, !noalias !4
  %c4604 = trunc i64 %r4603 to i32
  %t4605 = or i32 0, %c4604
  %c4606 = zext i32 %t4605 to i64
  %wp4607 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4606, ptr %wp4607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160258 word 0x34ffb680
  %r4608.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4608 = load i64, ptr %r4608.p, align 8, !alias.scope !3, !noalias !4
  %c4609 = trunc i64 %r4608 to i32
  %cmp4610 = icmp eq i32 %c4609, 0
  br i1 %cmp4610, label %L_80015f928, label %L_80016025c_ft
L_80016028c:
  ; @pc 0x80016028c word 0x92401d6a
  %r4644.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4644 = load i64, ptr %r4644.p, align 8, !alias.scope !3, !noalias !4
  %t4645 = and i64 %r4644, 255
  %wp4646 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4645, ptr %wp4646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160290 word 0x9103400b
  %r4647.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4647 = load i64, ptr %r4647.p, align 8, !alias.scope !3, !noalias !4
  %t4648 = add i64 %r4647, 208
  %wp4649 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t4648, ptr %wp4649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160294 word 0x8b091108
  %r4650.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4650 = load i64, ptr %r4650.p, align 8, !alias.scope !3, !noalias !4
  %r4651.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4651 = load i64, ptr %r4651.p, align 8, !alias.scope !3, !noalias !4
  %t4652 = shl i64 %r4651, 4
  %t4653 = add i64 %r4650, %t4652
  %wp4654 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4653, ptr %wp4654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160298 word 0x8b0a0d6c
  %r4655.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4655 = load i64, ptr %r4655.p, align 8, !alias.scope !3, !noalias !4
  %r4656.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4656 = load i64, ptr %r4656.p, align 8, !alias.scope !3, !noalias !4
  %t4657 = shl i64 %r4656, 3
  %t4658 = add i64 %r4655, %t4657
  %wp4659 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4658, ptr %wp4659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016029c word 0x7100115f
  %r4660.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4660 = load i64, ptr %r4660.p, align 8, !alias.scope !3, !noalias !4
  %c4661 = trunc i64 %r4660 to i32
  %t4662 = sub i32 %c4661, 4
  %fn4663 = icmp slt i32 %t4662, 0
  %fz4664 = icmp eq i32 %t4662, 0
  %fc4665 = icmp uge i32 %c4661, 4
  %fx14666 = xor i32 %c4661, 4
  %fx24667 = xor i32 %c4661, %t4662
  %fva4668 = and i32 %fx14666, %fx24667
  %fv4669 = icmp slt i32 %fva4668, 0
  %nz4670 = zext i1 %fn4663 to i64
  %zz4671 = zext i1 %fz4664 to i64
  %cz4672 = zext i1 %fc4665 to i64
  %vz4673 = zext i1 %fv4669 to i64
  %ns4674 = shl i64 %nz4670, 31
  %zs4675 = shl i64 %zz4671, 30
  %cs4676 = shl i64 %cz4672, 29
  %vs4677 = shl i64 %vz4673, 28
  %nzor4678 = or i64 %ns4674, %zs4675
  %cvor4679 = or i64 %cs4676, %vs4677
  %nzcv4680 = or i64 %nzor4678, %cvor4679
  %wp4681 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4680, ptr %wp4681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602a0 word 0x39400501
  %r4682.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4682 = load i64, ptr %r4682.p, align 8, !alias.scope !3, !noalias !4
  %t4683 = add i64 %r4682, 1
  %gmp4684 = inttoptr i64 %t4683 to ptr
  %gml4685 = load i8, ptr %gmp4684, align 1, !alias.scope !4, !noalias !3
  %c4686 = zext i8 %gml4685 to i64
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602a4 word 0x9a8b318a
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %r4689.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4689 = load i64, ptr %r4689.p, align 8, !alias.scope !3, !noalias !4
  %r4690.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4690 = load i64, ptr %r4690.p, align 8, !alias.scope !3, !noalias !4
  %fsh4692 = lshr i64 %r4690, 29
  %ftr4693 = trunc i64 %fsh4692 to i1
  %cond4691 = xor i1 %ftr4693, true
  %sel4694 = select i1 %cond4691, i64 %r4688, i64 %r4689
  %wp4695 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel4694, ptr %wp4695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602a8 word 0xf9400140
  %r4696.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4696 = load i64, ptr %r4696.p, align 8, !alias.scope !3, !noalias !4
  %gmp4697 = inttoptr i64 %r4696 to ptr
  %gml4698 = load i64, ptr %gmp4697, align 1, !alias.scope !4, !noalias !3
  %wp4699 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4698, ptr %wp4699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602ac word 0x17fffdc7
  br label %L_80015f9c8
L_8001602b0:
  ; @pc 0x8001602b0 word 0x79c0050a
  %r4700.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4700 = load i64, ptr %r4700.p, align 8, !alias.scope !3, !noalias !4
  %t4701 = add i64 %r4700, 2
  %gmp4702 = inttoptr i64 %t4701 to ptr
  %gml4703 = load i16, ptr %gmp4702, align 1, !alias.scope !4, !noalias !3
  %c4704 = sext i16 %gml4703 to i32
  %c4705 = zext i32 %c4704 to i64
  %wp4706 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4705, ptr %wp4706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602b4 word 0x37ffba8a
  %r4707.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4707 = load i64, ptr %r4707.p, align 8, !alias.scope !3, !noalias !4
  %t4708 = and i64 %r4707, 2147483648
  %cmp4709 = icmp ne i64 %t4708, 0
  br i1 %cmp4709, label %L_80015fa04, label %L_8001602b8
L_8001602b8:
  ; @pc 0x8001602b8 word 0xf940840b
  %r4710.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4710 = load i64, ptr %r4710.p, align 8, !alias.scope !3, !noalias !4
  %t4711 = add i64 %r4710, 264
  %gmp4712 = inttoptr i64 %t4711 to ptr
  %gml4713 = load i64, ptr %gmp4712, align 1, !alias.scope !4, !noalias !3
  %wp4714 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4713, ptr %wp4714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602bc word 0x92403d4d
  %r4715.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4715 = load i64, ptr %r4715.p, align 8, !alias.scope !3, !noalias !4
  %t4716 = and i64 %r4715, 65535
  %wp4717 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t4716, ptr %wp4717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602c0 word 0x8b091108
  %r4718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4718 = load i64, ptr %r4718.p, align 8, !alias.scope !3, !noalias !4
  %r4719.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4719 = load i64, ptr %r4719.p, align 8, !alias.scope !3, !noalias !4
  %t4720 = shl i64 %r4719, 4
  %t4721 = add i64 %r4718, %t4720
  %wp4722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4721, ptr %wp4722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602c4 word 0x39400501
  %r4723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4723 = load i64, ptr %r4723.p, align 8, !alias.scope !3, !noalias !4
  %t4724 = add i64 %r4723, 1
  %gmp4725 = inttoptr i64 %t4724 to ptr
  %gml4726 = load i8, ptr %gmp4725, align 1, !alias.scope !4, !noalias !3
  %c4727 = zext i8 %gml4726 to i64
  %wp4728 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4727, ptr %wp4728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602c8 word 0xb940196c
  %r4729.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4729 = load i64, ptr %r4729.p, align 8, !alias.scope !3, !noalias !4
  %t4730 = add i64 %r4729, 24
  %gmp4731 = inttoptr i64 %t4730 to ptr
  %gml4732 = load i32, ptr %gmp4731, align 1, !alias.scope !4, !noalias !3
  %c4733 = zext i32 %gml4732 to i64
  %wp4734 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4733, ptr %wp4734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602cc word 0xf940116b
  %r4735.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4735 = load i64, ptr %r4735.p, align 8, !alias.scope !3, !noalias !4
  %t4736 = add i64 %r4735, 32
  %gmp4737 = inttoptr i64 %t4736 to ptr
  %gml4738 = load i64, ptr %gmp4737, align 1, !alias.scope !4, !noalias !3
  %wp4739 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4738, ptr %wp4739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602d0 word 0x6b2a219f
  %r4740.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4740 = load i64, ptr %r4740.p, align 8, !alias.scope !3, !noalias !4
  %c4741 = trunc i64 %r4740 to i32
  %r4742.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4742 = load i64, ptr %r4742.p, align 8, !alias.scope !3, !noalias !4
  %c4743 = trunc i64 %r4742 to i16
  %c4744 = zext i16 %c4743 to i64
  %c4745 = trunc i64 %c4744 to i32
  %t4746 = sub i32 %c4741, %c4745
  %fn4747 = icmp slt i32 %t4746, 0
  %fz4748 = icmp eq i32 %t4746, 0
  %fc4749 = icmp uge i32 %c4741, %c4745
  %fx14750 = xor i32 %c4741, %c4745
  %fx24751 = xor i32 %c4741, %t4746
  %fva4752 = and i32 %fx14750, %fx24751
  %fv4753 = icmp slt i32 %fva4752, 0
  %nz4754 = zext i1 %fn4747 to i64
  %zz4755 = zext i1 %fz4748 to i64
  %cz4756 = zext i1 %fc4749 to i64
  %vz4757 = zext i1 %fv4753 to i64
  %ns4758 = shl i64 %nz4754, 31
  %zs4759 = shl i64 %zz4755, 30
  %cs4760 = shl i64 %cz4756, 29
  %vs4761 = shl i64 %vz4757, 28
  %nzor4762 = or i64 %ns4758, %zs4759
  %cvor4763 = or i64 %cs4760, %vs4761
  %nzcv4764 = or i64 %nzor4762, %cvor4763
  %wp4765 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4764, ptr %wp4765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602d4 word 0x5280030c
  %c4766 = zext i32 24 to i64
  %wp4767 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4766, ptr %wp4767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602d8 word 0x9a9f81aa
  %r4768.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4768 = load i64, ptr %r4768.p, align 8, !alias.scope !3, !noalias !4
  %r4769.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4769 = load i64, ptr %r4769.p, align 8, !alias.scope !3, !noalias !4
  %fsh4771 = lshr i64 %r4769, 29
  %ftr4772 = trunc i64 %fsh4771 to i1
  %fsh4773 = lshr i64 %r4769, 30
  %ftr4774 = trunc i64 %fsh4773 to i1
  %fnz4775 = xor i1 %ftr4774, true
  %cond4770 = and i1 %ftr4772, %fnz4775
  %sel4776 = select i1 %cond4770, i64 %r4768, i64 0
  %wp4777 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel4776, ptr %wp4777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602dc word 0x9bac7d4a
  %r4778.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4778 = load i64, ptr %r4778.p, align 8, !alias.scope !3, !noalias !4
  %c4779 = trunc i64 %r4778 to i32
  %c4780 = zext i32 %c4779 to i64
  %r4781.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4781 = load i64, ptr %r4781.p, align 8, !alias.scope !3, !noalias !4
  %c4782 = trunc i64 %r4781 to i32
  %c4783 = zext i32 %c4782 to i64
  %t4784 = mul i64 %c4780, %c4783
  %t4785 = add i64 0, %t4784
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4785, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602e0 word 0xf86a696a
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %r4788.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4788 = load i64, ptr %r4788.p, align 8, !alias.scope !3, !noalias !4
  %t4789 = add i64 %r4787, %r4788
  %gmp4790 = inttoptr i64 %t4789 to ptr
  %gml4791 = load i64, ptr %gmp4790, align 1, !alias.scope !4, !noalias !3
  %wp4792 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4791, ptr %wp4792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602e4 word 0xf9401140
  %r4793.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4793 = load i64, ptr %r4793.p, align 8, !alias.scope !3, !noalias !4
  %t4794 = add i64 %r4793, 32
  %gmp4795 = inttoptr i64 %t4794 to ptr
  %gml4796 = load i64, ptr %gmp4795, align 1, !alias.scope !4, !noalias !3
  %wp4797 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4796, ptr %wp4797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602e8 word 0xf9400008
  %r4798.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4798 = load i64, ptr %r4798.p, align 8, !alias.scope !3, !noalias !4
  %gmp4799 = inttoptr i64 %r4798 to ptr
  %gml4800 = load i64, ptr %gmp4799, align 1, !alias.scope !4, !noalias !3
  %wp4801 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4800, ptr %wp4801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602ec word 0xf9408d08
  %r4802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4802 = load i64, ptr %r4802.p, align 8, !alias.scope !3, !noalias !4
  %t4803 = add i64 %r4802, 280
  %gmp4804 = inttoptr i64 %t4803 to ptr
  %gml4805 = load i64, ptr %gmp4804, align 1, !alias.scope !4, !noalias !3
  %wp4806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4805, ptr %wp4806, align 8, !alias.scope !3, !noalias !4
  br label %L_8001602f0
L_8001602f0:
  ; @pc 0x8001602f0 word 0xd63f0100
  %r4807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4807 = load i64, ptr %r4807.p, align 8, !alias.scope !3, !noalias !4
  %fp4808 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4807, ptr %fp4808, align 8, !alias.scope !3, !noalias !4
  %wp4809 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180916, ptr %wp4809, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001602f4 word 0xaa0003e8
  %r4810.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4810 = load i64, ptr %r4810.p, align 8, !alias.scope !3, !noalias !4
  %t4811 = or i64 0, %r4810
  %wp4812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4811, ptr %wp4812, align 8, !alias.scope !3, !noalias !4
  br label %L_8001602f8
L_8001602f8:
  ; @pc 0x8001602f8 word 0x2a1f03f7
  %t4813 = or i32 0, 0
  %c4814 = zext i32 %t4813 to i64
  %wp4815 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4814, ptr %wp4815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001602fc word 0x17fffdca
  br label %L_80015fa24
L_800160300:
  ; @pc 0x800160300 word 0xb9800009
  %r4816.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4816 = load i64, ptr %r4816.p, align 8, !alias.scope !3, !noalias !4
  %gmp4817 = inttoptr i64 %r4816 to ptr
  %gml4818 = load i32, ptr %gmp4817, align 1, !alias.scope !4, !noalias !3
  %c4819 = sext i32 %gml4818 to i64
  %wp4820 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4819, ptr %wp4820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160304 word 0x34ff8069
  %r4821.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4821 = load i64, ptr %r4821.p, align 8, !alias.scope !3, !noalias !4
  %c4822 = trunc i64 %r4821 to i32
  %cmp4823 = icmp eq i32 %c4822, 0
  br i1 %cmp4823, label %L_80015f310, label %L_800160308_ft
L_800160318:
  ; @pc 0x800160318 word 0xf940010b
  %r4843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4843 = load i64, ptr %r4843.p, align 8, !alias.scope !3, !noalias !4
  %gmp4844 = inttoptr i64 %r4843 to ptr
  %gml4845 = load i64, ptr %gmp4844, align 1, !alias.scope !4, !noalias !3
  %wp4846 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4845, ptr %wp4846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016031c word 0xb9402d6c
  %r4847.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4847 = load i64, ptr %r4847.p, align 8, !alias.scope !3, !noalias !4
  %t4848 = add i64 %r4847, 44
  %gmp4849 = inttoptr i64 %t4848 to ptr
  %gml4850 = load i32, ptr %gmp4849, align 1, !alias.scope !4, !noalias !3
  %c4851 = zext i32 %gml4850 to i64
  %wp4852 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4851, ptr %wp4852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160320 word 0x7100099f
  %r4853.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4853 = load i64, ptr %r4853.p, align 8, !alias.scope !3, !noalias !4
  %c4854 = trunc i64 %r4853 to i32
  %t4855 = sub i32 %c4854, 2
  %fn4856 = icmp slt i32 %t4855, 0
  %fz4857 = icmp eq i32 %t4855, 0
  %fc4858 = icmp uge i32 %c4854, 2
  %fx14859 = xor i32 %c4854, 2
  %fx24860 = xor i32 %c4854, %t4855
  %fva4861 = and i32 %fx14859, %fx24860
  %fv4862 = icmp slt i32 %fva4861, 0
  %nz4863 = zext i1 %fn4856 to i64
  %zz4864 = zext i1 %fz4857 to i64
  %cz4865 = zext i1 %fc4858 to i64
  %vz4866 = zext i1 %fv4862 to i64
  %ns4867 = shl i64 %nz4863, 31
  %zs4868 = shl i64 %zz4864, 30
  %cs4869 = shl i64 %cz4865, 29
  %vs4870 = shl i64 %vz4866, 28
  %nzor4871 = or i64 %ns4867, %zs4868
  %cvor4872 = or i64 %cs4869, %vs4870
  %nzcv4873 = or i64 %nzor4871, %cvor4872
  %wp4874 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4873, ptr %wp4874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160324 word 0x540003e1
  %r4875.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4875 = load i64, ptr %r4875.p, align 8, !alias.scope !3, !noalias !4
  %fsh4877 = lshr i64 %r4875, 30
  %ftr4878 = trunc i64 %fsh4877 to i1
  %cond4876 = xor i1 %ftr4878, true
  br i1 %cond4876, label %L_8001603a0, label %L_800160328_ft
L_80016033c:
  ; @pc 0x80016033c word 0x37000071
  %r4918.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4918 = load i64, ptr %r4918.p, align 8, !alias.scope !3, !noalias !4
  %t4919 = and i64 %r4918, 1
  %cmp4920 = icmp ne i64 %t4919, 0
  br i1 %cmp4920, label %L_800160348, label %L_800160340_ft
L_800160348:
  ; @pc 0x800160348 word 0xf9400968
  %r4929.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4929 = load i64, ptr %r4929.p, align 8, !alias.scope !3, !noalias !4
  %t4930 = add i64 %r4929, 16
  %gmp4931 = inttoptr i64 %t4930 to ptr
  %gml4932 = load i64, ptr %gmp4931, align 1, !alias.scope !4, !noalias !3
  %wp4933 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4932, ptr %wp4933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016034c word 0x17fffdb6
  br label %L_80015fa24
L_800160350:
  ; @pc 0x800160350 word 0xaa1f03e8
  %t4934 = or i64 0, 0
  %wp4935 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4934, ptr %wp4935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160354 word 0x17fffc5f
  br label %L_80015f4d0
L_800160358:
  ; @pc 0x800160358 word 0xb9403c09
  %r4936.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4936 = load i64, ptr %r4936.p, align 8, !alias.scope !3, !noalias !4
  %t4937 = add i64 %r4936, 60
  %gmp4938 = inttoptr i64 %t4937 to ptr
  %gml4939 = load i32, ptr %gmp4938, align 1, !alias.scope !4, !noalias !3
  %c4940 = zext i32 %gml4939 to i64
  %wp4941 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4940, ptr %wp4941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016035c word 0xb9404c0a
  %r4942.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4942 = load i64, ptr %r4942.p, align 8, !alias.scope !3, !noalias !4
  %t4943 = add i64 %r4942, 76
  %gmp4944 = inttoptr i64 %t4943 to ptr
  %gml4945 = load i32, ptr %gmp4944, align 1, !alias.scope !4, !noalias !3
  %c4946 = zext i32 %gml4945 to i64
  %wp4947 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4946, ptr %wp4947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160360 word 0x0b090149
  %r4948.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4948 = load i64, ptr %r4948.p, align 8, !alias.scope !3, !noalias !4
  %c4949 = trunc i64 %r4948 to i32
  %r4950.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4950 = load i64, ptr %r4950.p, align 8, !alias.scope !3, !noalias !4
  %c4951 = trunc i64 %r4950 to i32
  %t4952 = add i32 %c4949, %c4951
  %c4953 = zext i32 %t4952 to i64
  %wp4954 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4953, ptr %wp4954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160364 word 0xb9405c0a
  %r4955.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4955 = load i64, ptr %r4955.p, align 8, !alias.scope !3, !noalias !4
  %t4956 = add i64 %r4955, 92
  %gmp4957 = inttoptr i64 %t4956 to ptr
  %gml4958 = load i32, ptr %gmp4957, align 1, !alias.scope !4, !noalias !3
  %c4959 = zext i32 %gml4958 to i64
  %wp4960 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4959, ptr %wp4960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160368 word 0x0b0a0129
  %r4961.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4961 = load i64, ptr %r4961.p, align 8, !alias.scope !3, !noalias !4
  %c4962 = trunc i64 %r4961 to i32
  %r4963.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4963 = load i64, ptr %r4963.p, align 8, !alias.scope !3, !noalias !4
  %c4964 = trunc i64 %r4963 to i32
  %t4965 = add i32 %c4962, %c4964
  %c4966 = zext i32 %t4965 to i64
  %wp4967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4966, ptr %wp4967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016036c word 0x531e7529
  %r4968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4968 = load i64, ptr %r4968.p, align 8, !alias.scope !3, !noalias !4
  %c4969 = trunc i64 %r4968 to i32
  %ror4970 = call i32 @llvm.fshr.i32(i32 %c4969, i32 %c4969, i32 30)
  %t4971 = and i32 %ror4970, -4
  %c4972 = zext i32 %t4971 to i64
  %wp4973 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4972, ptr %wp4973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160370 word 0x0b080d38
  %r4974.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4974 = load i64, ptr %r4974.p, align 8, !alias.scope !3, !noalias !4
  %c4975 = trunc i64 %r4974 to i32
  %r4976.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4976 = load i64, ptr %r4976.p, align 8, !alias.scope !3, !noalias !4
  %c4977 = trunc i64 %r4976 to i32
  %t4978 = shl i32 %c4977, 3
  %t4979 = add i32 %c4975, %t4978
  %c4980 = zext i32 %t4979 to i64
  %wp4981 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c4980, ptr %wp4981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160374 word 0x17fffc16
  br label %L_80015f3cc
L_800160378:
  ; @pc 0x800160378 word 0x5280002d
  %c4982 = zext i32 1 to i64
  %wp4983 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4982, ptr %wp4983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016037c word 0x72a0080d
  %r4984.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4984 = load i64, ptr %r4984.p, align 8, !alias.scope !3, !noalias !4
  %t4985 = and i64 %r4984, -4294901761
  %t4986 = or i64 %t4985, 4194304
  %c4987 = trunc i64 %t4986 to i32
  %c4988 = zext i32 %c4987 to i64
  %wp4989 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4988, ptr %wp4989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160380 word 0xaa0a03ee
  %r4990.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4990 = load i64, ptr %r4990.p, align 8, !alias.scope !3, !noalias !4
  %t4991 = or i64 0, %r4990
  %wp4992 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t4991, ptr %wp4992, align 8, !alias.scope !3, !noalias !4
  br label %L_800160384
L_800160384:
  ; @pc 0x800160384 word 0x3840158f
  %r4993.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4993 = load i64, ptr %r4993.p, align 8, !alias.scope !3, !noalias !4
  %t4994 = add i64 %r4993, 1
  %gmp4995 = inttoptr i64 %r4993 to ptr
  %gml4996 = load i8, ptr %gmp4995, align 1, !alias.scope !4, !noalias !3
  %c4997 = zext i8 %gml4996 to i64
  %wp4998 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4994, ptr %wp4998, align 8, !alias.scope !3, !noalias !4
  %wp4999 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c4997, ptr %wp4999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160388 word 0x384015d0
  %r5000.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5000 = load i64, ptr %r5000.p, align 8, !alias.scope !3, !noalias !4
  %t5001 = add i64 %r5000, 1
  %gmp5002 = inttoptr i64 %r5000 to ptr
  %gml5003 = load i8, ptr %gmp5002, align 1, !alias.scope !4, !noalias !3
  %c5004 = zext i8 %gml5003 to i64
  %wp5005 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5001, ptr %wp5005, align 8, !alias.scope !3, !noalias !4
  %wp5006 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c5004, ptr %wp5006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016038c word 0x6b1001ff
  %r5007.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5007 = load i64, ptr %r5007.p, align 8, !alias.scope !3, !noalias !4
  %c5008 = trunc i64 %r5007 to i32
  %r5009.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5009 = load i64, ptr %r5009.p, align 8, !alias.scope !3, !noalias !4
  %c5010 = trunc i64 %r5009 to i32
  %t5011 = sub i32 %c5008, %c5010
  %fn5012 = icmp slt i32 %t5011, 0
  %fz5013 = icmp eq i32 %t5011, 0
  %fc5014 = icmp uge i32 %c5008, %c5010
  %fx15015 = xor i32 %c5008, %c5010
  %fx25016 = xor i32 %c5008, %t5011
  %fva5017 = and i32 %fx15015, %fx25016
  %fv5018 = icmp slt i32 %fva5017, 0
  %nz5019 = zext i1 %fn5012 to i64
  %zz5020 = zext i1 %fz5013 to i64
  %cz5021 = zext i1 %fc5014 to i64
  %vz5022 = zext i1 %fv5018 to i64
  %ns5023 = shl i64 %nz5019, 31
  %zs5024 = shl i64 %zz5020, 30
  %cs5025 = shl i64 %cz5021, 29
  %vs5026 = shl i64 %vz5022, 28
  %nzor5027 = or i64 %ns5023, %zs5024
  %cvor5028 = or i64 %cs5025, %vs5026
  %nzcv5029 = or i64 %nzor5027, %cvor5028
  %wp5030 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5029, ptr %wp5030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160390 word 0x54000081
  %r5031.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5031 = load i64, ptr %r5031.p, align 8, !alias.scope !3, !noalias !4
  %fsh5033 = lshr i64 %r5031, 30
  %ftr5034 = trunc i64 %fsh5033 to i1
  %cond5032 = xor i1 %ftr5034, true
  br i1 %cond5032, label %L_8001603a0, label %L_800160394_ft
L_8001603a0:
  ; @pc 0x8001603a0 word 0x91002108
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %t5065 = add i64 %r5064, 8
  %wp5066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5065, ptr %wp5066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001603a4 word 0xeb09011f
  %r5067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5067 = load i64, ptr %r5067.p, align 8, !alias.scope !3, !noalias !4
  %r5068.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5068 = load i64, ptr %r5068.p, align 8, !alias.scope !3, !noalias !4
  %t5069 = sub i64 %r5067, %r5068
  %fn5070 = icmp slt i64 %t5069, 0
  %fz5071 = icmp eq i64 %t5069, 0
  %fc5072 = icmp uge i64 %r5067, %r5068
  %fx15073 = xor i64 %r5067, %r5068
  %fx25074 = xor i64 %r5067, %t5069
  %fva5075 = and i64 %fx15073, %fx25074
  %fv5076 = icmp slt i64 %fva5075, 0
  %nz5077 = zext i1 %fn5070 to i64
  %zz5078 = zext i1 %fz5071 to i64
  %cz5079 = zext i1 %fc5072 to i64
  %vz5080 = zext i1 %fv5076 to i64
  %ns5081 = shl i64 %nz5077, 31
  %zs5082 = shl i64 %zz5078, 30
  %cs5083 = shl i64 %cz5079, 29
  %vs5084 = shl i64 %vz5080, 28
  %nzor5085 = or i64 %ns5081, %zs5082
  %cvor5086 = or i64 %cs5083, %vs5084
  %nzcv5087 = or i64 %nzor5085, %cvor5086
  %wp5088 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5087, ptr %wp5088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001603a8 word 0x54fffb81
  %r5089.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5089 = load i64, ptr %r5089.p, align 8, !alias.scope !3, !noalias !4
  %fsh5091 = lshr i64 %r5089, 30
  %ftr5092 = trunc i64 %fsh5091 to i1
  %cond5090 = xor i1 %ftr5092, true
  br i1 %cond5090, label %L_800160318, label %L_8001603ac_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361176352, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80015f120
L_80015f16c_ft:
  ; @pc 0x80015f16c word 0x79403aa8
  %r117.p = getelementptr inbounds i8, ptr %c, i64 168
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 28
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i16, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i16 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f170 word 0x5280078a
  %c123 = zext i32 60 to i64
  %wp124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f174 word 0xf9402689
  %r125.p = getelementptr inbounds i8, ptr %c, i64 160
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %t126 = add i64 %r125, 72
  %gmp127 = inttoptr i64 %t126 to ptr
  %gml128 = load i64, ptr %gmp127, align 1, !alias.scope !4, !noalias !3
  %wp129 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f178 word 0x9baa2508
  %r130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %c131 = trunc i64 %r130 to i32
  %c132 = zext i32 %c131 to i64
  %r133.p = getelementptr inbounds i8, ptr %c, i64 80
  %r133 = load i64, ptr %r133.p, align 8, !alias.scope !3, !noalias !4
  %c134 = trunc i64 %r133 to i32
  %c135 = zext i32 %c134 to i64
  %t136 = mul i64 %c132, %c135
  %r137.p = getelementptr inbounds i8, ptr %c, i64 72
  %r137 = load i64, ptr %r137.p, align 8, !alias.scope !3, !noalias !4
  %t138 = add i64 %r137, %t136
  %wp139 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f17c word 0xb9801509
  %r140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %t141 = add i64 %r140, 20
  %gmp142 = inttoptr i64 %t141 to ptr
  %gml143 = load i32, ptr %gmp142, align 1, !alias.scope !4, !noalias !3
  %c144 = sext i32 %gml143 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f180 word 0xf9400a88
  %r146.p = getelementptr inbounds i8, ptr %c, i64 160
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %t147 = add i64 %r146, 16
  %gmp148 = inttoptr i64 %t147 to ptr
  %gml149 = load i64, ptr %gmp148, align 1, !alias.scope !4, !noalias !3
  %wp150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f184 word 0x8b090100
  %r151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %r152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r151, %r152
  %wp154 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t153, ptr %wp154, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f188
L_80015f194_ft:
  ; @pc 0x80015f194 word 0xf940168b
  %r189.p = getelementptr inbounds i8, ptr %c, i64 160
  %r189 = load i64, ptr %r189.p, align 8, !alias.scope !3, !noalias !4
  %t190 = add i64 %r189, 40
  %gmp191 = inttoptr i64 %t190 to ptr
  %gml192 = load i64, ptr %gmp191, align 1, !alias.scope !4, !noalias !3
  %wp193 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f198 word 0xaa1f03ea
  %t194 = or i64 0, 0
  %wp195 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f19c word 0xb980400c
  %r196.p = getelementptr inbounds i8, ptr %c, i64 0
  %r196 = load i64, ptr %r196.p, align 8, !alias.scope !3, !noalias !4
  %t197 = add i64 %r196, 64
  %gmp198 = inttoptr i64 %t197 to ptr
  %gml199 = load i32, ptr %gmp198, align 1, !alias.scope !4, !noalias !3
  %c200 = sext i32 %gml199 to i64
  %wp201 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c200, ptr %wp201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1a0 word 0xf94002cd
  %r202.p = getelementptr inbounds i8, ptr %c, i64 176
  %r202 = load i64, ptr %r202.p, align 8, !alias.scope !3, !noalias !4
  %gmp203 = inttoptr i64 %r202 to ptr
  %gml204 = load i64, ptr %gmp203, align 1, !alias.scope !4, !noalias !3
  %wp205 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1a4 word 0x910005ae
  %r206.p = getelementptr inbounds i8, ptr %c, i64 104
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %t207 = add i64 %r206, 1
  %wp208 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t207, ptr %wp208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1a8 word 0xb980096b
  %r209.p = getelementptr inbounds i8, ptr %c, i64 88
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %t210 = add i64 %r209, 8
  %gmp211 = inttoptr i64 %t210 to ptr
  %gml212 = load i32, ptr %gmp211, align 1, !alias.scope !4, !noalias !3
  %c213 = sext i32 %gml212 to i64
  %wp214 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c213, ptr %wp214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1ac word 0x8b0b010b
  %r215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r215 = load i64, ptr %r215.p, align 8, !alias.scope !3, !noalias !4
  %r216.p = getelementptr inbounds i8, ptr %c, i64 88
  %r216 = load i64, ptr %r216.p, align 8, !alias.scope !3, !noalias !4
  %t217 = add i64 %r215, %r216
  %wp218 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t217, ptr %wp218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1b0 word 0x8b0c116b
  %r219.p = getelementptr inbounds i8, ptr %c, i64 88
  %r219 = load i64, ptr %r219.p, align 8, !alias.scope !3, !noalias !4
  %r220.p = getelementptr inbounds i8, ptr %c, i64 96
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %t221 = shl i64 %r220, 4
  %t222 = add i64 %r219, %t221
  %wp223 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t222, ptr %wp223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1b4 word 0xb980250c
  %r224.p = getelementptr inbounds i8, ptr %c, i64 64
  %r224 = load i64, ptr %r224.p, align 8, !alias.scope !3, !noalias !4
  %t225 = add i64 %r224, 36
  %gmp226 = inttoptr i64 %t225 to ptr
  %gml227 = load i32, ptr %gmp226, align 1, !alias.scope !4, !noalias !3
  %c228 = sext i32 %gml227 to i64
  %wp229 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c228, ptr %wp229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1b8 word 0x8b0c010c
  %r230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r230 = load i64, ptr %r230.p, align 8, !alias.scope !3, !noalias !4
  %r231.p = getelementptr inbounds i8, ptr %c, i64 96
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %t232 = add i64 %r230, %r231
  %wp233 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t232, ptr %wp233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1bc word 0x91000d8f
  %r234.p = getelementptr inbounds i8, ptr %c, i64 96
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %t235 = add i64 %r234, 3
  %wp236 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f1c0
L_80015f1d4_ft:
  ; @pc 0x80015f1d4 word 0xaa1f03f0
  %t277 = or i64 0, 0
  %wp278 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t277, ptr %wp278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1d8 word 0x8b1101f1
  %r279.p = getelementptr inbounds i8, ptr %c, i64 120
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %r280.p = getelementptr inbounds i8, ptr %c, i64 136
  %r280 = load i64, ptr %r280.p, align 8, !alias.scope !3, !noalias !4
  %t281 = add i64 %r279, %r280
  %wp282 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t281, ptr %wp282, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f1dc
L_80015f1f4_ft:
  ; @pc 0x80015f1f4 word 0x34000561
  %r331.p = getelementptr inbounds i8, ptr %c, i64 8
  %r331 = load i64, ptr %r331.p, align 8, !alias.scope !3, !noalias !4
  %c332 = trunc i64 %r331 to i32
  %cmp333 = icmp eq i32 %c332, 0
  br i1 %cmp333, label %L_80015f2a0, label %L_80015f1f8_ft
L_80015f1f8_ft:
  ; @pc 0x80015f1f8 word 0xf150021f
  %r334.p = getelementptr inbounds i8, ptr %c, i64 128
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %t335 = sub i64 %r334, 4194304
  %fn336 = icmp slt i64 %t335, 0
  %fz337 = icmp eq i64 %t335, 0
  %fc338 = icmp uge i64 %r334, 4194304
  %fx1339 = xor i64 %r334, 4194304
  %fx2340 = xor i64 %r334, %t335
  %fva341 = and i64 %fx1339, %fx2340
  %fv342 = icmp slt i64 %fva341, 0
  %nz343 = zext i1 %fn336 to i64
  %zz344 = zext i1 %fz337 to i64
  %cz345 = zext i1 %fc338 to i64
  %vz346 = zext i1 %fv342 to i64
  %ns347 = shl i64 %nz343, 31
  %zs348 = shl i64 %zz344, 30
  %cs349 = shl i64 %cz345, 29
  %vs350 = shl i64 %vz346, 28
  %nzor351 = or i64 %ns347, %zs348
  %cvor352 = or i64 %cs349, %vs350
  %nzcv353 = or i64 %nzor351, %cvor352
  %wp354 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv353, ptr %wp354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f1fc word 0x54000240
  %r355.p = getelementptr inbounds i8, ptr %c, i64 272
  %r355 = load i64, ptr %r355.p, align 8, !alias.scope !3, !noalias !4
  %fsh357 = lshr i64 %r355, 30
  %cond356 = trunc i64 %fsh357 to i1
  br i1 %cond356, label %L_80015f244, label %L_80015f200_ft
L_80015f200_ft:
  ; @pc 0x80015f200 word 0x387069c1
  %r358.p = getelementptr inbounds i8, ptr %c, i64 112
  %r358 = load i64, ptr %r358.p, align 8, !alias.scope !3, !noalias !4
  %r359.p = getelementptr inbounds i8, ptr %c, i64 128
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %t360 = add i64 %r358, %r359
  %gmp361 = inttoptr i64 %t360 to ptr
  %gml362 = load i8, ptr %gmp361, align 1, !alias.scope !4, !noalias !3
  %c363 = zext i8 %gml362 to i64
  %wp364 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c363, ptr %wp364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f204 word 0x385fe002
  %r365.p = getelementptr inbounds i8, ptr %c, i64 0
  %r365 = load i64, ptr %r365.p, align 8, !alias.scope !3, !noalias !4
  %t366 = add i64 %r365, -2
  %gmp367 = inttoptr i64 %t366 to ptr
  %gml368 = load i8, ptr %gmp367, align 1, !alias.scope !4, !noalias !3
  %c369 = zext i8 %gml368 to i64
  %wp370 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c369, ptr %wp370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f208 word 0x6b02003f
  %r371.p = getelementptr inbounds i8, ptr %c, i64 8
  %r371 = load i64, ptr %r371.p, align 8, !alias.scope !3, !noalias !4
  %c372 = trunc i64 %r371 to i32
  %r373.p = getelementptr inbounds i8, ptr %c, i64 16
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %c374 = trunc i64 %r373 to i32
  %t375 = sub i32 %c372, %c374
  %fn376 = icmp slt i32 %t375, 0
  %fz377 = icmp eq i32 %t375, 0
  %fc378 = icmp uge i32 %c372, %c374
  %fx1379 = xor i32 %c372, %c374
  %fx2380 = xor i32 %c372, %t375
  %fva381 = and i32 %fx1379, %fx2380
  %fv382 = icmp slt i32 %fva381, 0
  %nz383 = zext i1 %fn376 to i64
  %zz384 = zext i1 %fz377 to i64
  %cz385 = zext i1 %fc378 to i64
  %vz386 = zext i1 %fv382 to i64
  %ns387 = shl i64 %nz383, 31
  %zs388 = shl i64 %zz384, 30
  %cs389 = shl i64 %cz385, 29
  %vs390 = shl i64 %vz386, 28
  %nzor391 = or i64 %ns387, %zs388
  %cvor392 = or i64 %cs389, %vs390
  %nzcv393 = or i64 %nzor391, %cvor392
  %wp394 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv393, ptr %wp394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f20c word 0x540001c1
  %r395.p = getelementptr inbounds i8, ptr %c, i64 272
  %r395 = load i64, ptr %r395.p, align 8, !alias.scope !3, !noalias !4
  %fsh397 = lshr i64 %r395, 30
  %ftr398 = trunc i64 %fsh397 to i1
  %cond396 = xor i1 %ftr398, true
  br i1 %cond396, label %L_80015f244, label %L_80015f210_ft
L_80015f210_ft:
  ; @pc 0x80015f210 word 0x34000481
  %r399.p = getelementptr inbounds i8, ptr %c, i64 8
  %r399 = load i64, ptr %r399.p, align 8, !alias.scope !3, !noalias !4
  %c400 = trunc i64 %r399 to i32
  %cmp401 = icmp eq i32 %c400, 0
  br i1 %cmp401, label %L_80015f2a0, label %L_80015f214_ft
L_80015f214_ft:
  ; @pc 0x80015f214 word 0x39400641
  %r402.p = getelementptr inbounds i8, ptr %c, i64 144
  %r402 = load i64, ptr %r402.p, align 8, !alias.scope !3, !noalias !4
  %t403 = add i64 %r402, 1
  %gmp404 = inttoptr i64 %t403 to ptr
  %gml405 = load i8, ptr %gmp404, align 1, !alias.scope !4, !noalias !3
  %c406 = zext i8 %gml405 to i64
  %wp407 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c406, ptr %wp407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f218 word 0x385ff000
  %r408.p = getelementptr inbounds i8, ptr %c, i64 0
  %r408 = load i64, ptr %r408.p, align 8, !alias.scope !3, !noalias !4
  %t409 = add i64 %r408, -1
  %gmp410 = inttoptr i64 %t409 to ptr
  %gml411 = load i8, ptr %gmp410, align 1, !alias.scope !4, !noalias !3
  %c412 = zext i8 %gml411 to i64
  %wp413 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c412, ptr %wp413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f21c word 0x6b00003f
  %r414.p = getelementptr inbounds i8, ptr %c, i64 8
  %r414 = load i64, ptr %r414.p, align 8, !alias.scope !3, !noalias !4
  %c415 = trunc i64 %r414 to i32
  %r416.p = getelementptr inbounds i8, ptr %c, i64 0
  %r416 = load i64, ptr %r416.p, align 8, !alias.scope !3, !noalias !4
  %c417 = trunc i64 %r416 to i32
  %t418 = sub i32 %c415, %c417
  %fn419 = icmp slt i32 %t418, 0
  %fz420 = icmp eq i32 %t418, 0
  %fc421 = icmp uge i32 %c415, %c417
  %fx1422 = xor i32 %c415, %c417
  %fx2423 = xor i32 %c415, %t418
  %fva424 = and i32 %fx1422, %fx2423
  %fv425 = icmp slt i32 %fva424, 0
  %nz426 = zext i1 %fn419 to i64
  %zz427 = zext i1 %fz420 to i64
  %cz428 = zext i1 %fc421 to i64
  %vz429 = zext i1 %fv425 to i64
  %ns430 = shl i64 %nz426, 31
  %zs431 = shl i64 %zz427, 30
  %cs432 = shl i64 %cz428, 29
  %vs433 = shl i64 %vz429, 28
  %nzor434 = or i64 %ns430, %zs431
  %cvor435 = or i64 %cs432, %vs433
  %nzcv436 = or i64 %nzor434, %cvor435
  %wp437 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f220 word 0x54000121
  %r438.p = getelementptr inbounds i8, ptr %c, i64 272
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %fsh440 = lshr i64 %r438, 30
  %ftr441 = trunc i64 %fsh440 to i1
  %cond439 = xor i1 %ftr441, true
  br i1 %cond439, label %L_80015f244, label %L_80015f224_ft
L_80015f224_ft:
  ; @pc 0x80015f224 word 0x340003e1
  %r442.p = getelementptr inbounds i8, ptr %c, i64 8
  %r442 = load i64, ptr %r442.p, align 8, !alias.scope !3, !noalias !4
  %c443 = trunc i64 %r442 to i32
  %cmp444 = icmp eq i32 %c443, 0
  br i1 %cmp444, label %L_80015f2a0, label %L_80015f228_ft
L_80015f228_ft:
  ; @pc 0x80015f228 word 0x39400a52
  %r445.p = getelementptr inbounds i8, ptr %c, i64 144
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %t446 = add i64 %r445, 2
  %gmp447 = inttoptr i64 %t446 to ptr
  %gml448 = load i8, ptr %gmp447, align 1, !alias.scope !4, !noalias !3
  %c449 = zext i8 %gml448 to i64
  %wp450 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c449, ptr %wp450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f22c word 0x38706a20
  %r451.p = getelementptr inbounds i8, ptr %c, i64 136
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %r452.p = getelementptr inbounds i8, ptr %c, i64 128
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %t453 = add i64 %r451, %r452
  %gmp454 = inttoptr i64 %t453 to ptr
  %gml455 = load i8, ptr %gmp454, align 1, !alias.scope !4, !noalias !3
  %c456 = zext i8 %gml455 to i64
  %wp457 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c456, ptr %wp457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f230 word 0x6b00025f
  %r458.p = getelementptr inbounds i8, ptr %c, i64 144
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %c459 = trunc i64 %r458 to i32
  %r460.p = getelementptr inbounds i8, ptr %c, i64 0
  %r460 = load i64, ptr %r460.p, align 8, !alias.scope !3, !noalias !4
  %c461 = trunc i64 %r460 to i32
  %t462 = sub i32 %c459, %c461
  %fn463 = icmp slt i32 %t462, 0
  %fz464 = icmp eq i32 %t462, 0
  %fc465 = icmp uge i32 %c459, %c461
  %fx1466 = xor i32 %c459, %c461
  %fx2467 = xor i32 %c459, %t462
  %fva468 = and i32 %fx1466, %fx2467
  %fv469 = icmp slt i32 %fva468, 0
  %nz470 = zext i1 %fn463 to i64
  %zz471 = zext i1 %fz464 to i64
  %cz472 = zext i1 %fc465 to i64
  %vz473 = zext i1 %fv469 to i64
  %ns474 = shl i64 %nz470, 31
  %zs475 = shl i64 %zz471, 30
  %cs476 = shl i64 %cz472, 29
  %vs477 = shl i64 %vz473, 28
  %nzor478 = or i64 %ns474, %zs475
  %cvor479 = or i64 %cs476, %vs477
  %nzcv480 = or i64 %nzor478, %cvor479
  %wp481 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv480, ptr %wp481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f234 word 0x54000081
  %r482.p = getelementptr inbounds i8, ptr %c, i64 272
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %fsh484 = lshr i64 %r482, 30
  %ftr485 = trunc i64 %fsh484 to i1
  %cond483 = xor i1 %ftr485, true
  br i1 %cond483, label %L_80015f244, label %L_80015f238_ft
L_80015f238_ft:
  ; @pc 0x80015f238 word 0x34000352
  %r486.p = getelementptr inbounds i8, ptr %c, i64 144
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %c487 = trunc i64 %r486 to i32
  %cmp488 = icmp eq i32 %c487, 0
  br i1 %cmp488, label %L_80015f2a0, label %L_80015f23c_ft
L_80015f23c_ft:
  ; @pc 0x80015f23c word 0x91001210
  %r489.p = getelementptr inbounds i8, ptr %c, i64 128
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %t490 = add i64 %r489, 4
  %wp491 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t490, ptr %wp491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f240 word 0x17ffffe7
  br label %L_80015f1dc
L_80015f254_ft:
  ; @pc 0x80015f254 word 0x910023e9
  %r524.p = getelementptr inbounds i8, ptr %c, i64 256
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %t525 = add i64 %r524, 8
  %wp526 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t525, ptr %wp526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f258 word 0x39044fff
  %r527.p = getelementptr inbounds i8, ptr %c, i64 256
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %t528 = add i64 %r527, 275
  %c529 = trunc i32 0 to i8
  %gmp530 = inttoptr i64 %t528 to ptr
  store i8 %c529, ptr %gmp530, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f25c word 0xb0015761
  %wp531 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f260 word 0x91270c21
  %r532.p = getelementptr inbounds i8, ptr %c, i64 8
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %t533 = add i64 %r532, 2499
  %wp534 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t533, ptr %wp534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f264 word 0x91003129
  %r535.p = getelementptr inbounds i8, ptr %c, i64 72
  %r535 = load i64, ptr %r535.p, align 8, !alias.scope !3, !noalias !4
  %t536 = add i64 %r535, 12
  %wp537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t536, ptr %wp537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f268 word 0x390053ff
  %r538.p = getelementptr inbounds i8, ptr %c, i64 256
  %r538 = load i64, ptr %r538.p, align 8, !alias.scope !3, !noalias !4
  %t539 = add i64 %r538, 20
  %c540 = trunc i32 0 to i8
  %gmp541 = inttoptr i64 %t539 to ptr
  store i8 %c540, ptr %gmp541, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f26c word 0xf90007e9
  %r542.p = getelementptr inbounds i8, ptr %c, i64 256
  %r542 = load i64, ptr %r542.p, align 8, !alias.scope !3, !noalias !4
  %t543 = add i64 %r542, 8
  %r544.p = getelementptr inbounds i8, ptr %c, i64 72
  %r544 = load i64, ptr %r544.p, align 8, !alias.scope !3, !noalias !4
  %gmp545 = inttoptr i64 %t543 to ptr
  store i64 %r544, ptr %gmp545, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f270 word 0x52802009
  %c546 = zext i32 256 to i64
  %wp547 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c546, ptr %wp547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f274 word 0xb980250a
  %r548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %t549 = add i64 %r548, 36
  %gmp550 = inttoptr i64 %t549 to ptr
  %gml551 = load i32, ptr %gmp550, align 1, !alias.scope !4, !noalias !3
  %c552 = sext i32 %gml551 to i64
  %wp553 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c552, ptr %wp553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f278 word 0xb90013e9
  %r554.p = getelementptr inbounds i8, ptr %c, i64 256
  %r554 = load i64, ptr %r554.p, align 8, !alias.scope !3, !noalias !4
  %t555 = add i64 %r554, 16
  %r556.p = getelementptr inbounds i8, ptr %c, i64 72
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %c557 = trunc i64 %r556 to i32
  %gmp558 = inttoptr i64 %t555 to ptr
  store i32 %c557, ptr %gmp558, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f27c word 0x910023e0
  %r559.p = getelementptr inbounds i8, ptr %c, i64 256
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = add i64 %r559, 8
  %wp561 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t560, ptr %wp561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f280 word 0xb9800909
  %r562.p = getelementptr inbounds i8, ptr %c, i64 64
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = add i64 %r562, 8
  %gmp564 = inttoptr i64 %t563 to ptr
  %gml565 = load i32, ptr %gmp564, align 1, !alias.scope !4, !noalias !3
  %c566 = sext i32 %gml565 to i64
  %wp567 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c566, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f284 word 0x8b0a0108
  %r568.p = getelementptr inbounds i8, ptr %c, i64 64
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %r569.p = getelementptr inbounds i8, ptr %c, i64 80
  %r569 = load i64, ptr %r569.p, align 8, !alias.scope !3, !noalias !4
  %t570 = add i64 %r568, %r569
  %wp571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t570, ptr %wp571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f288 word 0x8b090102
  %r572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %r573.p = getelementptr inbounds i8, ptr %c, i64 72
  %r573 = load i64, ptr %r573.p, align 8, !alias.scope !3, !noalias !4
  %t574 = add i64 %r572, %r573
  %wp575 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t574, ptr %wp575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f28c word 0x97fce975
  %wp576 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361176720, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  br label %L_80015f290
L_80015f2dc_ft:
  ; @pc 0x80015f2dc word 0x35003574
  %r694.p = getelementptr inbounds i8, ptr %c, i64 160
  %r694 = load i64, ptr %r694.p, align 8, !alias.scope !3, !noalias !4
  %c695 = trunc i64 %r694 to i32
  %cmp696 = icmp ne i32 %c695, 0
  br i1 %cmp696, label %L_80015f988, label %L_80015f2e0
L_80015f348_ft:
  ; @pc 0x80015f348 word 0x2a1f03fa
  %t876 = or i32 0, 0
  %c877 = zext i32 %t876 to i64
  %wp878 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c877, ptr %wp878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f34c word 0x2a1f03f4
  %t879 = or i32 0, 0
  %c880 = zext i32 %t879 to i64
  %wp881 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c880, ptr %wp881, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f350
L_80015f368_ft:
  ; @pc 0x80015f368 word 0xf94006a8
  %r901.p = getelementptr inbounds i8, ptr %c, i64 168
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = add i64 %r901, 8
  %gmp903 = inttoptr i64 %t902 to ptr
  %gml904 = load i64, ptr %gmp903, align 1, !alias.scope !4, !noalias !3
  %wp905 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml904, ptr %wp905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f36c word 0xb9406109
  %r906.p = getelementptr inbounds i8, ptr %c, i64 64
  %r906 = load i64, ptr %r906.p, align 8, !alias.scope !3, !noalias !4
  %t907 = add i64 %r906, 96
  %gmp908 = inttoptr i64 %t907 to ptr
  %gml909 = load i32, ptr %gmp908, align 1, !alias.scope !4, !noalias !3
  %c910 = zext i32 %gml909 to i64
  %wp911 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f370 word 0x6b37213f
  %r912.p = getelementptr inbounds i8, ptr %c, i64 72
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %c913 = trunc i64 %r912 to i32
  %r914.p = getelementptr inbounds i8, ptr %c, i64 184
  %r914 = load i64, ptr %r914.p, align 8, !alias.scope !3, !noalias !4
  %c915 = trunc i64 %r914 to i16
  %c916 = zext i16 %c915 to i64
  %c917 = trunc i64 %c916 to i32
  %t918 = sub i32 %c913, %c917
  %fn919 = icmp slt i32 %t918, 0
  %fz920 = icmp eq i32 %t918, 0
  %fc921 = icmp uge i32 %c913, %c917
  %fx1922 = xor i32 %c913, %c917
  %fx2923 = xor i32 %c913, %t918
  %fva924 = and i32 %fx1922, %fx2923
  %fv925 = icmp slt i32 %fva924, 0
  %nz926 = zext i1 %fn919 to i64
  %zz927 = zext i1 %fz920 to i64
  %cz928 = zext i1 %fc921 to i64
  %vz929 = zext i1 %fv925 to i64
  %ns930 = shl i64 %nz926, 31
  %zs931 = shl i64 %zz927, 30
  %cs932 = shl i64 %cz928, 29
  %vs933 = shl i64 %vz929, 28
  %nzor934 = or i64 %ns930, %zs931
  %cvor935 = or i64 %cs932, %vs933
  %nzcv936 = or i64 %nzor934, %cvor935
  %wp937 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv936, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f374 word 0x540041cd
  %r938.p = getelementptr inbounds i8, ptr %c, i64 272
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %fsh940 = lshr i64 %r938, 30
  %ftr941 = trunc i64 %fsh940 to i1
  %fsh942 = lshr i64 %r938, 31
  %ftr943 = trunc i64 %fsh942 to i1
  %fsh944 = lshr i64 %r938, 28
  %ftr945 = trunc i64 %fsh944 to i1
  %fnz946 = xor i1 %ftr941, true
  %feq947 = icmp eq i1 %ftr943, %ftr945
  %fgt948 = and i1 %fnz946, %feq947
  %cond939 = xor i1 %fgt948, true
  br i1 %cond939, label %L_80015fbac, label %L_80015f378_ft
L_80015f378_ft:
  ; @pc 0x80015f378 word 0xf9403509
  %r949.p = getelementptr inbounds i8, ptr %c, i64 64
  %r949 = load i64, ptr %r949.p, align 8, !alias.scope !3, !noalias !4
  %t950 = add i64 %r949, 104
  %gmp951 = inttoptr i64 %t950 to ptr
  %gml952 = load i64, ptr %gmp951, align 1, !alias.scope !4, !noalias !3
  %wp953 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f37c word 0x92403eea
  %r954.p = getelementptr inbounds i8, ptr %c, i64 184
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %t955 = and i64 %r954, 65535
  %wp956 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t955, ptr %wp956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f380 word 0xf86a7937
  %r957.p = getelementptr inbounds i8, ptr %c, i64 72
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %r958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r958 = load i64, ptr %r958.p, align 8, !alias.scope !3, !noalias !4
  %t959 = shl i64 %r958, 3
  %t960 = add i64 %r957, %t959
  %gmp961 = inttoptr i64 %t960 to ptr
  %gml962 = load i64, ptr %gmp961, align 1, !alias.scope !4, !noalias !3
  %wp963 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml962, ptr %wp963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f384 word 0xb40043d7
  %r964.p = getelementptr inbounds i8, ptr %c, i64 184
  %r964 = load i64, ptr %r964.p, align 8, !alias.scope !3, !noalias !4
  %cmp965 = icmp eq i64 %r964, 0
  br i1 %cmp965, label %L_80015fbfc, label %L_80015f388_ft
L_80015f388_ft:
  ; @pc 0x80015f388 word 0xf94002e8
  %r966.p = getelementptr inbounds i8, ptr %c, i64 184
  %r966 = load i64, ptr %r966.p, align 8, !alias.scope !3, !noalias !4
  %gmp967 = inttoptr i64 %r966 to ptr
  %gml968 = load i64, ptr %gmp967, align 1, !alias.scope !4, !noalias !3
  %wp969 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f38c word 0xf9404d08
  %r970.p = getelementptr inbounds i8, ptr %c, i64 64
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 152
  %gmp972 = inttoptr i64 %t971 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %wp974 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml973, ptr %wp974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f390 word 0xeb03011f
  %r975.p = getelementptr inbounds i8, ptr %c, i64 64
  %r975 = load i64, ptr %r975.p, align 8, !alias.scope !3, !noalias !4
  %r976.p = getelementptr inbounds i8, ptr %c, i64 24
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %t977 = sub i64 %r975, %r976
  %fn978 = icmp slt i64 %t977, 0
  %fz979 = icmp eq i64 %t977, 0
  %fc980 = icmp uge i64 %r975, %r976
  %fx1981 = xor i64 %r975, %r976
  %fx2982 = xor i64 %r975, %t977
  %fva983 = and i64 %fx1981, %fx2982
  %fv984 = icmp slt i64 %fva983, 0
  %nz985 = zext i1 %fn978 to i64
  %zz986 = zext i1 %fz979 to i64
  %cz987 = zext i1 %fc980 to i64
  %vz988 = zext i1 %fv984 to i64
  %ns989 = shl i64 %nz985, 31
  %zs990 = shl i64 %zz986, 30
  %cs991 = shl i64 %cz987, 29
  %vs992 = shl i64 %vz988, 28
  %nzor993 = or i64 %ns989, %zs990
  %cvor994 = or i64 %cs991, %vs992
  %nzcv995 = or i64 %nzor993, %cvor994
  %wp996 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f394 word 0x54004641
  %r997.p = getelementptr inbounds i8, ptr %c, i64 272
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %fsh999 = lshr i64 %r997, 30
  %ftr1000 = trunc i64 %fsh999 to i1
  %cond998 = xor i1 %ftr1000, true
  br i1 %cond998, label %L_80015fc5c, label %L_80015f398_ft
L_80015f398_ft:
  ; @pc 0x80015f398 word 0xf94006e8
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %t1002 = add i64 %r1001, 8
  %gmp1003 = inttoptr i64 %t1002 to ptr
  %gml1004 = load i64, ptr %gmp1003, align 1, !alias.scope !4, !noalias !3
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1004, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f39c word 0x5280078b
  %c1006 = zext i32 60 to i64
  %wp1007 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1006, ptr %wp1007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3a0 word 0x79403ae9
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %t1009 = add i64 %r1008, 28
  %gmp1010 = inttoptr i64 %t1009 to ptr
  %gml1011 = load i16, ptr %gmp1010, align 1, !alias.scope !4, !noalias !3
  %c1012 = zext i16 %gml1011 to i64
  %wp1013 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1012, ptr %wp1013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3a4 word 0xf9400908
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %t1015 = add i64 %r1014, 16
  %gmp1016 = inttoptr i64 %t1015 to ptr
  %gml1017 = load i64, ptr %gmp1016, align 1, !alias.scope !4, !noalias !3
  %wp1018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1017, ptr %wp1018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3a8 word 0xf940250a
  %r1019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1019 = load i64, ptr %r1019.p, align 8, !alias.scope !3, !noalias !4
  %t1020 = add i64 %r1019, 72
  %gmp1021 = inttoptr i64 %t1020 to ptr
  %gml1022 = load i64, ptr %gmp1021, align 1, !alias.scope !4, !noalias !3
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1022, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3ac word 0xf9400908
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = add i64 %r1024, 16
  %gmp1026 = inttoptr i64 %t1025 to ptr
  %gml1027 = load i64, ptr %gmp1026, align 1, !alias.scope !4, !noalias !3
  %wp1028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1027, ptr %wp1028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3b0 word 0x9bab2929
  %r1029.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1029 = load i64, ptr %r1029.p, align 8, !alias.scope !3, !noalias !4
  %c1030 = trunc i64 %r1029 to i32
  %c1031 = zext i32 %c1030 to i64
  %r1032.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1032 = load i64, ptr %r1032.p, align 8, !alias.scope !3, !noalias !4
  %c1033 = trunc i64 %r1032 to i32
  %c1034 = zext i32 %c1033 to i64
  %t1035 = mul i64 %c1031, %c1034
  %r1036.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1036 = load i64, ptr %r1036.p, align 8, !alias.scope !3, !noalias !4
  %t1037 = add i64 %r1036, %t1035
  %wp1038 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1037, ptr %wp1038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3b4 word 0xb9801529
  %r1039.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1039 = load i64, ptr %r1039.p, align 8, !alias.scope !3, !noalias !4
  %t1040 = add i64 %r1039, 20
  %gmp1041 = inttoptr i64 %t1040 to ptr
  %gml1042 = load i32, ptr %gmp1041, align 1, !alias.scope !4, !noalias !3
  %c1043 = sext i32 %gml1042 to i64
  %wp1044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1043, ptr %wp1044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3b8 word 0x8b090100
  %r1045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1045 = load i64, ptr %r1045.p, align 8, !alias.scope !3, !noalias !4
  %r1046.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1046 = load i64, ptr %r1046.p, align 8, !alias.scope !3, !noalias !4
  %t1047 = add i64 %r1045, %r1046
  %wp1048 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1047, ptr %wp1048, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f3bc
L_80015f3c0_ft:
  ; @pc 0x80015f3c0 word 0xb9403c08
  %r1052.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1052 = load i64, ptr %r1052.p, align 8, !alias.scope !3, !noalias !4
  %t1053 = add i64 %r1052, 60
  %gmp1054 = inttoptr i64 %t1053 to ptr
  %gml1055 = load i32, ptr %gmp1054, align 1, !alias.scope !4, !noalias !3
  %c1056 = zext i32 %gml1055 to i64
  %wp1057 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1056, ptr %wp1057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3c4 word 0x0b38a108
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %c1059 = trunc i64 %r1058 to i32
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %c1061 = trunc i64 %r1060 to i16
  %c1062 = sext i16 %c1061 to i64
  %c1063 = trunc i64 %c1062 to i32
  %t1064 = add i32 %c1059, %c1063
  %c1065 = zext i32 %t1064 to i64
  %wp1066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1065, ptr %wp1066, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f3c8
L_80015f3d4_ft:
  ; @pc 0x80015f3d4 word 0xf9400008
  %r1080.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1080 = load i64, ptr %r1080.p, align 8, !alias.scope !3, !noalias !4
  %gmp1081 = inttoptr i64 %r1080 to ptr
  %gml1082 = load i64, ptr %gmp1081, align 1, !alias.scope !4, !noalias !3
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1082, ptr %wp1083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3d8 word 0x9001c009
  %wp1084 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3dc word 0xf9400908
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %t1086 = add i64 %r1085, 16
  %gmp1087 = inttoptr i64 %t1086 to ptr
  %gml1088 = load i64, ptr %gmp1087, align 1, !alias.scope !4, !noalias !3
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1088, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3e0 word 0xf9462929
  %r1090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1090 = load i64, ptr %r1090.p, align 8, !alias.scope !3, !noalias !4
  %t1091 = add i64 %r1090, 3152
  %gmp1092 = inttoptr i64 %t1091 to ptr
  %gml1093 = load i64, ptr %gmp1092, align 1, !alias.scope !4, !noalias !3
  %wp1094 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1093, ptr %wp1094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3e4 word 0xeb09011f
  %r1095.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1095 = load i64, ptr %r1095.p, align 8, !alias.scope !3, !noalias !4
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %t1097 = sub i64 %r1095, %r1096
  %fn1098 = icmp slt i64 %t1097, 0
  %fz1099 = icmp eq i64 %t1097, 0
  %fc1100 = icmp uge i64 %r1095, %r1096
  %fx11101 = xor i64 %r1095, %r1096
  %fx21102 = xor i64 %r1095, %t1097
  %fva1103 = and i64 %fx11101, %fx21102
  %fv1104 = icmp slt i64 %fva1103, 0
  %nz1105 = zext i1 %fn1098 to i64
  %zz1106 = zext i1 %fz1099 to i64
  %cz1107 = zext i1 %fc1100 to i64
  %vz1108 = zext i1 %fv1104 to i64
  %ns1109 = shl i64 %nz1105, 31
  %zs1110 = shl i64 %zz1106, 30
  %cs1111 = shl i64 %cz1107, 29
  %vs1112 = shl i64 %vz1108, 28
  %nzor1113 = or i64 %ns1109, %zs1110
  %cvor1114 = or i64 %cs1111, %vs1112
  %nzcv1115 = or i64 %nzor1113, %cvor1114
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1115, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3e8 word 0x540000a0
  %r1117.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1117 = load i64, ptr %r1117.p, align 8, !alias.scope !3, !noalias !4
  %fsh1119 = lshr i64 %r1117, 30
  %cond1118 = trunc i64 %fsh1119 to i1
  br i1 %cond1118, label %L_80015f3fc, label %L_80015f3ec_ft
L_80015f3ec_ft:
  ; @pc 0x80015f3ec word 0x9001c009
  %wp1120 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3f0 word 0xf9464529
  %r1121.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1121 = load i64, ptr %r1121.p, align 8, !alias.scope !3, !noalias !4
  %t1122 = add i64 %r1121, 3208
  %gmp1123 = inttoptr i64 %t1122 to ptr
  %gml1124 = load i64, ptr %gmp1123, align 1, !alias.scope !4, !noalias !3
  %wp1125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1124, ptr %wp1125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3f4 word 0xeb09011f
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1126 = load i64, ptr %r1126.p, align 8, !alias.scope !3, !noalias !4
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %t1128 = sub i64 %r1126, %r1127
  %fn1129 = icmp slt i64 %t1128, 0
  %fz1130 = icmp eq i64 %t1128, 0
  %fc1131 = icmp uge i64 %r1126, %r1127
  %fx11132 = xor i64 %r1126, %r1127
  %fx21133 = xor i64 %r1126, %t1128
  %fva1134 = and i64 %fx11132, %fx21133
  %fv1135 = icmp slt i64 %fva1134, 0
  %nz1136 = zext i1 %fn1129 to i64
  %zz1137 = zext i1 %fz1130 to i64
  %cz1138 = zext i1 %fc1131 to i64
  %vz1139 = zext i1 %fv1135 to i64
  %ns1140 = shl i64 %nz1136, 31
  %zs1141 = shl i64 %zz1137, 30
  %cs1142 = shl i64 %cz1138, 29
  %vs1143 = shl i64 %vz1139, 28
  %nzor1144 = or i64 %ns1140, %zs1141
  %cvor1145 = or i64 %cs1142, %vs1143
  %nzcv1146 = or i64 %nzor1144, %cvor1145
  %wp1147 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1146, ptr %wp1147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f3f8 word 0x54002b81
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %fsh1150 = lshr i64 %r1148, 30
  %ftr1151 = trunc i64 %fsh1150 to i1
  %cond1149 = xor i1 %ftr1151, true
  br i1 %cond1149, label %L_80015f968, label %L_80015f3fc
L_80015f428_ft:
  ; @pc 0x80015f428 word 0x370076db
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %t1197 = and i64 %r1196, 1
  %cmp1198 = icmp ne i64 %t1197, 0
  br i1 %cmp1198, label %L_800160300, label %L_80015f42c_ft
L_80015f42c_ft:
  ; @pc 0x80015f42c word 0xf9400819
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %t1200 = add i64 %r1199, 16
  %gmp1201 = inttoptr i64 %t1200 to ptr
  %gml1202 = load i64, ptr %gmp1201, align 1, !alias.scope !4, !noalias !3
  %wp1203 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1202, ptr %wp1203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f430 word 0xb4000079
  %r1204.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1204 = load i64, ptr %r1204.p, align 8, !alias.scope !3, !noalias !4
  %cmp1205 = icmp eq i64 %r1204, 0
  br i1 %cmp1205, label %L_80015f43c, label %L_80015f434_ft
L_80015f434_ft:
  ; @pc 0x80015f434 word 0xf9400328
  %r1206.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1206 = load i64, ptr %r1206.p, align 8, !alias.scope !3, !noalias !4
  %gmp1207 = inttoptr i64 %r1206 to ptr
  %gml1208 = load i64, ptr %gmp1207, align 1, !alias.scope !4, !noalias !3
  %wp1209 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1208, ptr %wp1209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f438 word 0xf9000808
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %t1211 = add i64 %r1210, 16
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %gmp1213 = inttoptr i64 %t1211 to ptr
  store i64 %r1212, ptr %gmp1213, align 1, !alias.scope !4, !noalias !3
  br label %L_80015f43c
L_80015f468_ft:
  ; @pc 0x80015f468 word 0xf9400409
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %t1290 = add i64 %r1289, 8
  %gmp1291 = inttoptr i64 %t1290 to ptr
  %gml1292 = load i64, ptr %gmp1291, align 1, !alias.scope !4, !noalias !3
  %wp1293 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1292, ptr %wp1293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f46c word 0xf8287939
  %r1294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1294 = load i64, ptr %r1294.p, align 8, !alias.scope !3, !noalias !4
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %t1296 = shl i64 %r1295, 3
  %t1297 = add i64 %r1294, %t1296
  %r1298.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1298 = load i64, ptr %r1298.p, align 8, !alias.scope !3, !noalias !4
  %gmp1299 = inttoptr i64 %t1297 to ptr
  store i64 %r1298, ptr %gmp1299, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f470 word 0xb9400008
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %gmp1301 = inttoptr i64 %r1300 to ptr
  %gml1302 = load i32, ptr %gmp1301, align 1, !alias.scope !4, !noalias !3
  %c1303 = zext i32 %gml1302 to i64
  %wp1304 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1303, ptr %wp1304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f474 word 0x11000508
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %c1306 = trunc i64 %r1305 to i32
  %t1307 = add i32 %c1306, 1
  %c1308 = zext i32 %t1307 to i64
  %wp1309 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1308, ptr %wp1309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f478 word 0xb9000008
  %r1310.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1310 = load i64, ptr %r1310.p, align 8, !alias.scope !3, !noalias !4
  %r1311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1311 = load i64, ptr %r1311.p, align 8, !alias.scope !3, !noalias !4
  %c1312 = trunc i64 %r1311 to i32
  %gmp1313 = inttoptr i64 %r1310 to ptr
  store i32 %c1312, ptr %gmp1313, align 1, !alias.scope !4, !noalias !3
  br label %L_80015f47c
L_80015f4a4_ft:
  ; @pc 0x80015f4a4 word 0xf9400aa0
  %r1359.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1359 = load i64, ptr %r1359.p, align 8, !alias.scope !3, !noalias !4
  %t1360 = add i64 %r1359, 16
  %gmp1361 = inttoptr i64 %t1360 to ptr
  %gml1362 = load i64, ptr %gmp1361, align 1, !alias.scope !4, !noalias !3
  %wp1363 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1362, ptr %wp1363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4a8 word 0xf9400008
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %gmp1365 = inttoptr i64 %r1364 to ptr
  %gml1366 = load i64, ptr %gmp1365, align 1, !alias.scope !4, !noalias !3
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1366, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4ac word 0xf9402908
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %t1369 = add i64 %r1368, 80
  %gmp1370 = inttoptr i64 %t1369 to ptr
  %gml1371 = load i64, ptr %gmp1370, align 1, !alias.scope !4, !noalias !3
  %wp1372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1371, ptr %wp1372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4b0 word 0xd63f0100
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %fp1374 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1373, ptr %fp1374, align 8, !alias.scope !3, !noalias !4
  %wp1375 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177268, ptr %wp1375, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f4b4 word 0x29422408
  %r1376.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1376 = load i64, ptr %r1376.p, align 8, !alias.scope !3, !noalias !4
  %t1377 = add i64 %r1376, 16
  %t1378 = add i64 %t1377, 4
  %gmp1379 = inttoptr i64 %t1377 to ptr
  %gml1380 = load i32, ptr %gmp1379, align 1, !alias.scope !4, !noalias !3
  %c1381 = zext i32 %gml1380 to i64
  %gmp1382 = inttoptr i64 %t1378 to ptr
  %gml1383 = load i32, ptr %gmp1382, align 1, !alias.scope !4, !noalias !3
  %c1384 = zext i32 %gml1383 to i64
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1381, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1384, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4b8 word 0x6b09011f
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %c1388 = trunc i64 %r1387 to i32
  %r1389.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1389 = load i64, ptr %r1389.p, align 8, !alias.scope !3, !noalias !4
  %c1390 = trunc i64 %r1389 to i32
  %t1391 = sub i32 %c1388, %c1390
  %fn1392 = icmp slt i32 %t1391, 0
  %fz1393 = icmp eq i32 %t1391, 0
  %fc1394 = icmp uge i32 %c1388, %c1390
  %fx11395 = xor i32 %c1388, %c1390
  %fx21396 = xor i32 %c1388, %t1391
  %fva1397 = and i32 %fx11395, %fx21396
  %fv1398 = icmp slt i32 %fva1397, 0
  %nz1399 = zext i1 %fn1392 to i64
  %zz1400 = zext i1 %fz1393 to i64
  %cz1401 = zext i1 %fc1394 to i64
  %vz1402 = zext i1 %fv1398 to i64
  %ns1403 = shl i64 %nz1399, 31
  %zs1404 = shl i64 %zz1400, 30
  %cs1405 = shl i64 %cz1401, 29
  %vs1406 = shl i64 %vz1402, 28
  %nzor1407 = or i64 %ns1403, %zs1404
  %cvor1408 = or i64 %cs1405, %vs1406
  %nzcv1409 = or i64 %nzor1407, %cvor1408
  %wp1410 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1409, ptr %wp1410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4bc word 0x540074a3
  %r1411.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1411 = load i64, ptr %r1411.p, align 8, !alias.scope !3, !noalias !4
  %fsh1413 = lshr i64 %r1411, 29
  %ftr1414 = trunc i64 %fsh1413 to i1
  %cond1412 = xor i1 %ftr1414, true
  br i1 %cond1412, label %L_800160350, label %L_80015f4c0_ft
L_80015f4c0_ft:
  ; @pc 0x80015f4c0 word 0xf9400009
  %r1415.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1415 = load i64, ptr %r1415.p, align 8, !alias.scope !3, !noalias !4
  %gmp1416 = inttoptr i64 %r1415 to ptr
  %gml1417 = load i64, ptr %gmp1416, align 1, !alias.scope !4, !noalias !3
  %wp1418 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1417, ptr %wp1418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4c4 word 0x5100050a
  %r1419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1419 = load i64, ptr %r1419.p, align 8, !alias.scope !3, !noalias !4
  %c1420 = trunc i64 %r1419 to i32
  %t1421 = sub i32 %c1420, 1
  %c1422 = zext i32 %t1421 to i64
  %wp1423 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1422, ptr %wp1423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4c8 word 0xb900100a
  %r1424.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1424 = load i64, ptr %r1424.p, align 8, !alias.scope !3, !noalias !4
  %t1425 = add i64 %r1424, 16
  %r1426.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1426 = load i64, ptr %r1426.p, align 8, !alias.scope !3, !noalias !4
  %c1427 = trunc i64 %r1426 to i32
  %gmp1428 = inttoptr i64 %t1425 to ptr
  store i32 %c1427, ptr %gmp1428, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f4cc word 0x8b080928
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %r1430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1430 = load i64, ptr %r1430.p, align 8, !alias.scope !3, !noalias !4
  %t1431 = shl i64 %r1430, 2
  %t1432 = add i64 %r1429, %t1431
  %wp1433 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1432, ptr %wp1433, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f4d0
L_80015f4e8_ft:
  ; @pc 0x80015f4e8 word 0xb9406109
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = add i64 %r1455, 96
  %gmp1457 = inttoptr i64 %t1456 to ptr
  %gml1458 = load i32, ptr %gmp1457, align 1, !alias.scope !4, !noalias !3
  %c1459 = zext i32 %gml1458 to i64
  %wp1460 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1459, ptr %wp1460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4ec word 0x6b17013f
  %r1461.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1461 = load i64, ptr %r1461.p, align 8, !alias.scope !3, !noalias !4
  %c1462 = trunc i64 %r1461 to i32
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1463 = load i64, ptr %r1463.p, align 8, !alias.scope !3, !noalias !4
  %c1464 = trunc i64 %r1463 to i32
  %t1465 = sub i32 %c1462, %c1464
  %fn1466 = icmp slt i32 %t1465, 0
  %fz1467 = icmp eq i32 %t1465, 0
  %fc1468 = icmp uge i32 %c1462, %c1464
  %fx11469 = xor i32 %c1462, %c1464
  %fx21470 = xor i32 %c1462, %t1465
  %fva1471 = and i32 %fx11469, %fx21470
  %fv1472 = icmp slt i32 %fva1471, 0
  %nz1473 = zext i1 %fn1466 to i64
  %zz1474 = zext i1 %fz1467 to i64
  %cz1475 = zext i1 %fc1468 to i64
  %vz1476 = zext i1 %fv1472 to i64
  %ns1477 = shl i64 %nz1473, 31
  %zs1478 = shl i64 %zz1474, 30
  %cs1479 = shl i64 %cz1475, 29
  %vs1480 = shl i64 %vz1476, 28
  %nzor1481 = or i64 %ns1477, %zs1478
  %cvor1482 = or i64 %cs1479, %vs1480
  %nzcv1483 = or i64 %nzor1481, %cvor1482
  %wp1484 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1483, ptr %wp1484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4f0 word 0x54003c0d
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %fsh1487 = lshr i64 %r1485, 30
  %ftr1488 = trunc i64 %fsh1487 to i1
  %fsh1489 = lshr i64 %r1485, 31
  %ftr1490 = trunc i64 %fsh1489 to i1
  %fsh1491 = lshr i64 %r1485, 28
  %ftr1492 = trunc i64 %fsh1491 to i1
  %fnz1493 = xor i1 %ftr1488, true
  %feq1494 = icmp eq i1 %ftr1490, %ftr1492
  %fgt1495 = and i1 %fnz1493, %feq1494
  %cond1486 = xor i1 %fgt1495, true
  br i1 %cond1486, label %L_80015fc70, label %L_80015f4f4_ft
L_80015f4f4_ft:
  ; @pc 0x80015f4f4 word 0xf9403508
  %r1496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1496 = load i64, ptr %r1496.p, align 8, !alias.scope !3, !noalias !4
  %t1497 = add i64 %r1496, 104
  %gmp1498 = inttoptr i64 %t1497 to ptr
  %gml1499 = load i64, ptr %gmp1498, align 1, !alias.scope !4, !noalias !3
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f4f8 word 0xf8775917
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %r1502.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1502 = load i64, ptr %r1502.p, align 8, !alias.scope !3, !noalias !4
  %c1503 = trunc i64 %r1502 to i32
  %c1504 = zext i32 %c1503 to i64
  %t1505 = shl i64 %c1504, 3
  %t1506 = add i64 %r1501, %t1505
  %gmp1507 = inttoptr i64 %t1506 to ptr
  %gml1508 = load i64, ptr %gmp1507, align 1, !alias.scope !4, !noalias !3
  %wp1509 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1508, ptr %wp1509, align 8, !alias.scope !3, !noalias !4
  br label %L_80015f4fc
L_80015f518_ft:
  ; @pc 0x80015f518 word 0xf94002e8
  %r1532.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1532 = load i64, ptr %r1532.p, align 8, !alias.scope !3, !noalias !4
  %gmp1533 = inttoptr i64 %r1532 to ptr
  %gml1534 = load i64, ptr %gmp1533, align 1, !alias.scope !4, !noalias !3
  %wp1535 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1534, ptr %wp1535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f51c word 0xf9400108
  %r1536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1536 = load i64, ptr %r1536.p, align 8, !alias.scope !3, !noalias !4
  %gmp1537 = inttoptr i64 %r1536 to ptr
  %gml1538 = load i64, ptr %gmp1537, align 1, !alias.scope !4, !noalias !3
  %wp1539 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1538, ptr %wp1539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f520 word 0xeb09011f
  %r1540.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1540 = load i64, ptr %r1540.p, align 8, !alias.scope !3, !noalias !4
  %r1541.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1541 = load i64, ptr %r1541.p, align 8, !alias.scope !3, !noalias !4
  %t1542 = sub i64 %r1540, %r1541
  %fn1543 = icmp slt i64 %t1542, 0
  %fz1544 = icmp eq i64 %t1542, 0
  %fc1545 = icmp uge i64 %r1540, %r1541
  %fx11546 = xor i64 %r1540, %r1541
  %fx21547 = xor i64 %r1540, %t1542
  %fva1548 = and i64 %fx11546, %fx21547
  %fv1549 = icmp slt i64 %fva1548, 0
  %nz1550 = zext i1 %fn1543 to i64
  %zz1551 = zext i1 %fz1544 to i64
  %cz1552 = zext i1 %fc1545 to i64
  %vz1553 = zext i1 %fv1549 to i64
  %ns1554 = shl i64 %nz1550, 31
  %zs1555 = shl i64 %zz1551, 30
  %cs1556 = shl i64 %cz1552, 29
  %vs1557 = shl i64 %vz1553, 28
  %nzor1558 = or i64 %ns1554, %zs1555
  %cvor1559 = or i64 %cs1556, %vs1557
  %nzcv1560 = or i64 %nzor1558, %cvor1559
  %wp1561 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1560, ptr %wp1561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f524 word 0x540004a1
  %r1562.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1562 = load i64, ptr %r1562.p, align 8, !alias.scope !3, !noalias !4
  %fsh1564 = lshr i64 %r1562, 30
  %ftr1565 = trunc i64 %fsh1564 to i1
  %cond1563 = xor i1 %ftr1565, true
  br i1 %cond1563, label %L_80015f5b8, label %L_80015f528_ft
L_80015f528_ft:
  ; @pc 0x80015f528 word 0xb001c0c8
  %wp1566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419998720, ptr %wp1566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f52c word 0xf941bd08
  %r1567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1567 = load i64, ptr %r1567.p, align 8, !alias.scope !3, !noalias !4
  %t1568 = add i64 %r1567, 888
  %gmp1569 = inttoptr i64 %t1568 to ptr
  %gml1570 = load i64, ptr %gmp1569, align 1, !alias.scope !4, !noalias !3
  %wp1571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1570, ptr %wp1571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f530 word 0x08dffd08
  %r1572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1572 = load i64, ptr %r1572.p, align 8, !alias.scope !3, !noalias !4
  %atp1573 = inttoptr i64 %r1572 to ptr
  %lda1574 = load atomic i8, ptr %atp1573 acquire, align 1, !alias.scope !4, !noalias !3
  %c1575 = zext i8 %lda1574 to i64
  %wp1576 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1575, ptr %wp1576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f534 word 0x36004b48
  %r1577.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1577 = load i64, ptr %r1577.p, align 8, !alias.scope !3, !noalias !4
  %t1578 = and i64 %r1577, 1
  %cmp1579 = icmp eq i64 %t1578, 0
  br i1 %cmp1579, label %L_80015fe9c, label %L_80015f538
L_80015f558_ft:
  ; @pc 0x80015f558 word 0xf001bf60
  %wp1608 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f55c word 0xaa0303f8
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %t1610 = or i64 0, %r1609
  %wp1611 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1610, ptr %wp1611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f560 word 0xf9430c00
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %t1613 = add i64 %r1612, 1560
  %gmp1614 = inttoptr i64 %t1613 to ptr
  %gml1615 = load i64, ptr %gmp1614, align 1, !alias.scope !4, !noalias !3
  %wp1616 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1615, ptr %wp1616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f564 word 0xb90007e4
  %r1617.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1617 = load i64, ptr %r1617.p, align 8, !alias.scope !3, !noalias !4
  %t1618 = add i64 %r1617, 4
  %r1619.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1619 = load i64, ptr %r1619.p, align 8, !alias.scope !3, !noalias !4
  %c1620 = trunc i64 %r1619 to i32
  %gmp1621 = inttoptr i64 %t1618 to ptr
  store i32 %c1620, ptr %gmp1621, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f568 word 0x94a9110e
  %wp1622 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177452, ptr %wp1622, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015f56c word 0xb001c0c9
  %wp1623 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f570 word 0xaa1803e3
  %r1624.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1624 = load i64, ptr %r1624.p, align 8, !alias.scope !3, !noalias !4
  %t1625 = or i64 0, %r1624
  %wp1626 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1625, ptr %wp1626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f574 word 0xf941b529
  %r1627.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1627 = load i64, ptr %r1627.p, align 8, !alias.scope !3, !noalias !4
  %t1628 = add i64 %r1627, 872
  %gmp1629 = inttoptr i64 %t1628 to ptr
  %gml1630 = load i64, ptr %gmp1629, align 1, !alias.scope !4, !noalias !3
  %wp1631 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1630, ptr %wp1631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f578 word 0xb94007e4
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %t1633 = add i64 %r1632, 4
  %gmp1634 = inttoptr i64 %t1633 to ptr
  %gml1635 = load i32, ptr %gmp1634, align 1, !alias.scope !4, !noalias !3
  %c1636 = zext i32 %gml1635 to i64
  %wp1637 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1636, ptr %wp1637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f57c word 0x340003e0
  %r1638.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1638 = load i64, ptr %r1638.p, align 8, !alias.scope !3, !noalias !4
  %c1639 = trunc i64 %r1638 to i32
  %cmp1640 = icmp eq i32 %c1639, 0
  br i1 %cmp1640, label %L_80015f5f8, label %L_80015f580_ft
L_80015f580_ft:
  ; @pc 0x80015f580 word 0x9001bf68
  %wp1641 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f584 word 0xf001bf69
  %wp1642 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f588 word 0xf9440508
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %t1644 = add i64 %r1643, 2056
  %gmp1645 = inttoptr i64 %t1644 to ptr
  %gml1646 = load i64, ptr %gmp1645, align 1, !alias.scope !4, !noalias !3
  %wp1647 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1646, ptr %wp1647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f58c word 0xf9430929
  %r1648.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1648 = load i64, ptr %r1648.p, align 8, !alias.scope !3, !noalias !4
  %t1649 = add i64 %r1648, 1552
  %gmp1650 = inttoptr i64 %t1649 to ptr
  %gml1651 = load i64, ptr %gmp1650, align 1, !alias.scope !4, !noalias !3
  %wp1652 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1651, ptr %wp1652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f590 word 0xf001bf60
  %wp1653 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f594 word 0x91004108
  %r1654.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1654 = load i64, ptr %r1654.p, align 8, !alias.scope !3, !noalias !4
  %t1655 = add i64 %r1654, 16
  %wp1656 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1655, ptr %wp1656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f598 word 0xf9000128
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %r1658.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1658 = load i64, ptr %r1658.p, align 8, !alias.scope !3, !noalias !4
  %gmp1659 = inttoptr i64 %r1657 to ptr
  store i64 %r1658, ptr %gmp1659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f59c word 0xf9430c00
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = add i64 %r1660, 1560
  %gmp1662 = inttoptr i64 %t1661 to ptr
  %gml1663 = load i64, ptr %gmp1662, align 1, !alias.scope !4, !noalias !3
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1663, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5a0 word 0x94a91104
  %wp1665 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177508, ptr %wp1665, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015f5a4 word 0xb001c0c9
  %wp1666 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5a8 word 0xaa1803e3
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %t1668 = or i64 0, %r1667
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5ac word 0xf941b529
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %t1671 = add i64 %r1670, 872
  %gmp1672 = inttoptr i64 %t1671 to ptr
  %gml1673 = load i64, ptr %gmp1672, align 1, !alias.scope !4, !noalias !3
  %wp1674 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1673, ptr %wp1674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5b0 word 0xb94007e4
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %t1676 = add i64 %r1675, 4
  %gmp1677 = inttoptr i64 %t1676 to ptr
  %gml1678 = load i32, ptr %gmp1677, align 1, !alias.scope !4, !noalias !3
  %c1679 = zext i32 %gml1678 to i64
  %wp1680 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1679, ptr %wp1680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f5b4 word 0x14000011
  br label %L_80015f5f8
L_80015f60c_ft:
  ; @pc 0x80015f60c word 0xf94002e8
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %gmp1748 = inttoptr i64 %r1747 to ptr
  %gml1749 = load i64, ptr %gmp1748, align 1, !alias.scope !4, !noalias !3
  %wp1750 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1749, ptr %wp1750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f610 word 0xf9400108
  %r1751.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1751 = load i64, ptr %r1751.p, align 8, !alias.scope !3, !noalias !4
  %gmp1752 = inttoptr i64 %r1751 to ptr
  %gml1753 = load i64, ptr %gmp1752, align 1, !alias.scope !4, !noalias !3
  %wp1754 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1753, ptr %wp1754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f614 word 0xeb09011f
  %r1755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1755 = load i64, ptr %r1755.p, align 8, !alias.scope !3, !noalias !4
  %r1756.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1756 = load i64, ptr %r1756.p, align 8, !alias.scope !3, !noalias !4
  %t1757 = sub i64 %r1755, %r1756
  %fn1758 = icmp slt i64 %t1757, 0
  %fz1759 = icmp eq i64 %t1757, 0
  %fc1760 = icmp uge i64 %r1755, %r1756
  %fx11761 = xor i64 %r1755, %r1756
  %fx21762 = xor i64 %r1755, %t1757
  %fva1763 = and i64 %fx11761, %fx21762
  %fv1764 = icmp slt i64 %fva1763, 0
  %nz1765 = zext i1 %fn1758 to i64
  %zz1766 = zext i1 %fz1759 to i64
  %cz1767 = zext i1 %fc1760 to i64
  %vz1768 = zext i1 %fv1764 to i64
  %ns1769 = shl i64 %nz1765, 31
  %zs1770 = shl i64 %zz1766, 30
  %cs1771 = shl i64 %cz1767, 29
  %vs1772 = shl i64 %vz1768, 28
  %nzor1773 = or i64 %ns1769, %zs1770
  %cvor1774 = or i64 %cs1771, %vs1772
  %nzcv1775 = or i64 %nzor1773, %cvor1774
  %wp1776 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1775, ptr %wp1776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f618 word 0x540004a1
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %fsh1779 = lshr i64 %r1777, 30
  %ftr1780 = trunc i64 %fsh1779 to i1
  %cond1778 = xor i1 %ftr1780, true
  br i1 %cond1778, label %L_80015f6ac, label %L_80015f61c_ft
L_80015f61c_ft:
  ; @pc 0x80015f61c word 0xb001c0c8
  %wp1781 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419998720, ptr %wp1781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f620 word 0xf941bd08
  %r1782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1782 = load i64, ptr %r1782.p, align 8, !alias.scope !3, !noalias !4
  %t1783 = add i64 %r1782, 888
  %gmp1784 = inttoptr i64 %t1783 to ptr
  %gml1785 = load i64, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  %wp1786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1785, ptr %wp1786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f624 word 0x08dffd08
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %atp1788 = inttoptr i64 %r1787 to ptr
  %lda1789 = load atomic i8, ptr %atp1788 acquire, align 1, !alias.scope !4, !noalias !3
  %c1790 = zext i8 %lda1789 to i64
  %wp1791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1790, ptr %wp1791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f628 word 0x360049a8
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %t1793 = and i64 %r1792, 1
  %cmp1794 = icmp eq i64 %t1793, 0
  br i1 %cmp1794, label %L_80015ff5c, label %L_80015f62c
L_80015f64c_ft:
  ; @pc 0x80015f64c word 0xf001bf60
  %wp1823 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f650 word 0xaa0303f8
  %r1824.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1824 = load i64, ptr %r1824.p, align 8, !alias.scope !3, !noalias !4
  %t1825 = or i64 0, %r1824
  %wp1826 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1825, ptr %wp1826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f654 word 0xf9430c00
  %r1827.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1827 = load i64, ptr %r1827.p, align 8, !alias.scope !3, !noalias !4
  %t1828 = add i64 %r1827, 1560
  %gmp1829 = inttoptr i64 %t1828 to ptr
  %gml1830 = load i64, ptr %gmp1829, align 1, !alias.scope !4, !noalias !3
  %wp1831 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1830, ptr %wp1831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f658 word 0xb90007e4
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %t1833 = add i64 %r1832, 4
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %c1835 = trunc i64 %r1834 to i32
  %gmp1836 = inttoptr i64 %t1833 to ptr
  store i32 %c1835, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f65c word 0x94a910d1
  %wp1837 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177696, ptr %wp1837, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015f660 word 0xb001c0c9
  %wp1838 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f664 word 0xaa1803e3
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %t1840 = or i64 0, %r1839
  %wp1841 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1840, ptr %wp1841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f668 word 0xf941b529
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %t1843 = add i64 %r1842, 872
  %gmp1844 = inttoptr i64 %t1843 to ptr
  %gml1845 = load i64, ptr %gmp1844, align 1, !alias.scope !4, !noalias !3
  %wp1846 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1845, ptr %wp1846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f66c word 0xb94007e4
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %t1848 = add i64 %r1847, 4
  %gmp1849 = inttoptr i64 %t1848 to ptr
  %gml1850 = load i32, ptr %gmp1849, align 1, !alias.scope !4, !noalias !3
  %c1851 = zext i32 %gml1850 to i64
  %wp1852 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1851, ptr %wp1852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f670 word 0x340003e0
  %r1853.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1853 = load i64, ptr %r1853.p, align 8, !alias.scope !3, !noalias !4
  %c1854 = trunc i64 %r1853 to i32
  %cmp1855 = icmp eq i32 %c1854, 0
  br i1 %cmp1855, label %L_80015f6ec, label %L_80015f674_ft
L_80015f674_ft:
  ; @pc 0x80015f674 word 0x9001bf68
  %wp1856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f678 word 0xf001bf69
  %wp1857 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f67c word 0xf9440508
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %t1859 = add i64 %r1858, 2056
  %gmp1860 = inttoptr i64 %t1859 to ptr
  %gml1861 = load i64, ptr %gmp1860, align 1, !alias.scope !4, !noalias !3
  %wp1862 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1861, ptr %wp1862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f680 word 0xf9430929
  %r1863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1863 = load i64, ptr %r1863.p, align 8, !alias.scope !3, !noalias !4
  %t1864 = add i64 %r1863, 1552
  %gmp1865 = inttoptr i64 %t1864 to ptr
  %gml1866 = load i64, ptr %gmp1865, align 1, !alias.scope !4, !noalias !3
  %wp1867 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1866, ptr %wp1867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f684 word 0xf001bf60
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f688 word 0x91004108
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %t1870 = add i64 %r1869, 16
  %wp1871 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1870, ptr %wp1871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f68c word 0xf9000128
  %r1872.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1872 = load i64, ptr %r1872.p, align 8, !alias.scope !3, !noalias !4
  %r1873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1873 = load i64, ptr %r1873.p, align 8, !alias.scope !3, !noalias !4
  %gmp1874 = inttoptr i64 %r1872 to ptr
  store i64 %r1873, ptr %gmp1874, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f690 word 0xf9430c00
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = add i64 %r1875, 1560
  %gmp1877 = inttoptr i64 %t1876 to ptr
  %gml1878 = load i64, ptr %gmp1877, align 1, !alias.scope !4, !noalias !3
  %wp1879 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1878, ptr %wp1879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f694 word 0x94a910c7
  %wp1880 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177752, ptr %wp1880, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015f698 word 0xb001c0c9
  %wp1881 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp1881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f69c word 0xaa1803e3
  %r1882.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1882 = load i64, ptr %r1882.p, align 8, !alias.scope !3, !noalias !4
  %t1883 = or i64 0, %r1882
  %wp1884 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1883, ptr %wp1884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6a0 word 0xf941b529
  %r1885.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1885 = load i64, ptr %r1885.p, align 8, !alias.scope !3, !noalias !4
  %t1886 = add i64 %r1885, 872
  %gmp1887 = inttoptr i64 %t1886 to ptr
  %gml1888 = load i64, ptr %gmp1887, align 1, !alias.scope !4, !noalias !3
  %wp1889 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1888, ptr %wp1889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6a4 word 0xb94007e4
  %r1890.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1890 = load i64, ptr %r1890.p, align 8, !alias.scope !3, !noalias !4
  %t1891 = add i64 %r1890, 4
  %gmp1892 = inttoptr i64 %t1891 to ptr
  %gml1893 = load i32, ptr %gmp1892, align 1, !alias.scope !4, !noalias !3
  %c1894 = zext i32 %gml1893 to i64
  %wp1895 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1894, ptr %wp1895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f6a8 word 0x14000011
  br label %L_80015f6ec
L_80015f700_ft:
  ; @pc 0x80015f700 word 0xf94002e8
  %r1962.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1962 = load i64, ptr %r1962.p, align 8, !alias.scope !3, !noalias !4
  %gmp1963 = inttoptr i64 %r1962 to ptr
  %gml1964 = load i64, ptr %gmp1963, align 1, !alias.scope !4, !noalias !3
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1964, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f704 word 0xf9400108
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %gmp1967 = inttoptr i64 %r1966 to ptr
  %gml1968 = load i64, ptr %gmp1967, align 1, !alias.scope !4, !noalias !3
  %wp1969 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1968, ptr %wp1969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f708 word 0xeb09011f
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %r1971.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1971 = load i64, ptr %r1971.p, align 8, !alias.scope !3, !noalias !4
  %t1972 = sub i64 %r1970, %r1971
  %fn1973 = icmp slt i64 %t1972, 0
  %fz1974 = icmp eq i64 %t1972, 0
  %fc1975 = icmp uge i64 %r1970, %r1971
  %fx11976 = xor i64 %r1970, %r1971
  %fx21977 = xor i64 %r1970, %t1972
  %fva1978 = and i64 %fx11976, %fx21977
  %fv1979 = icmp slt i64 %fva1978, 0
  %nz1980 = zext i1 %fn1973 to i64
  %zz1981 = zext i1 %fz1974 to i64
  %cz1982 = zext i1 %fc1975 to i64
  %vz1983 = zext i1 %fv1979 to i64
  %ns1984 = shl i64 %nz1980, 31
  %zs1985 = shl i64 %zz1981, 30
  %cs1986 = shl i64 %cz1982, 29
  %vs1987 = shl i64 %vz1983, 28
  %nzor1988 = or i64 %ns1984, %zs1985
  %cvor1989 = or i64 %cs1986, %vs1987
  %nzcv1990 = or i64 %nzor1988, %cvor1989
  %wp1991 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1990, ptr %wp1991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f70c word 0x540004a1
  %r1992.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1992 = load i64, ptr %r1992.p, align 8, !alias.scope !3, !noalias !4
  %fsh1994 = lshr i64 %r1992, 30
  %ftr1995 = trunc i64 %fsh1994 to i1
  %cond1993 = xor i1 %ftr1995, true
  br i1 %cond1993, label %L_80015f7a0, label %L_80015f710_ft
L_80015f710_ft:
  ; @pc 0x80015f710 word 0xb001c0c8
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419998720, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f714 word 0xf941bd08
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %t1998 = add i64 %r1997, 888
  %gmp1999 = inttoptr i64 %t1998 to ptr
  %gml2000 = load i64, ptr %gmp1999, align 1, !alias.scope !4, !noalias !3
  %wp2001 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2000, ptr %wp2001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f718 word 0x08dffd08
  %r2002.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2002 = load i64, ptr %r2002.p, align 8, !alias.scope !3, !noalias !4
  %atp2003 = inttoptr i64 %r2002 to ptr
  %lda2004 = load atomic i8, ptr %atp2003 acquire, align 1, !alias.scope !4, !noalias !3
  %c2005 = zext i8 %lda2004 to i64
  %wp2006 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2005, ptr %wp2006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f71c word 0x36004e08
  %r2007.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2007 = load i64, ptr %r2007.p, align 8, !alias.scope !3, !noalias !4
  %t2008 = and i64 %r2007, 1
  %cmp2009 = icmp eq i64 %t2008, 0
  br i1 %cmp2009, label %L_8001600dc, label %L_80015f720
L_80015f740_ft:
  ; @pc 0x80015f740 word 0xf001bf60
  %wp2038 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f744 word 0xaa0303f8
  %r2039.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2039 = load i64, ptr %r2039.p, align 8, !alias.scope !3, !noalias !4
  %t2040 = or i64 0, %r2039
  %wp2041 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2040, ptr %wp2041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f748 word 0xf9430c00
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %t2043 = add i64 %r2042, 1560
  %gmp2044 = inttoptr i64 %t2043 to ptr
  %gml2045 = load i64, ptr %gmp2044, align 1, !alias.scope !4, !noalias !3
  %wp2046 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2045, ptr %wp2046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f74c word 0xb90007e4
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %t2048 = add i64 %r2047, 4
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %c2050 = trunc i64 %r2049 to i32
  %gmp2051 = inttoptr i64 %t2048 to ptr
  store i32 %c2050, ptr %gmp2051, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f750 word 0x94a91094
  %wp2052 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177940, ptr %wp2052, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015f754 word 0xb001c0c9
  %wp2053 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f758 word 0xaa1803e3
  %r2054.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2054 = load i64, ptr %r2054.p, align 8, !alias.scope !3, !noalias !4
  %t2055 = or i64 0, %r2054
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f75c word 0xf941b529
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 872
  %gmp2059 = inttoptr i64 %t2058 to ptr
  %gml2060 = load i64, ptr %gmp2059, align 1, !alias.scope !4, !noalias !3
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f760 word 0xb94007e4
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %t2063 = add i64 %r2062, 4
  %gmp2064 = inttoptr i64 %t2063 to ptr
  %gml2065 = load i32, ptr %gmp2064, align 1, !alias.scope !4, !noalias !3
  %c2066 = zext i32 %gml2065 to i64
  %wp2067 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2066, ptr %wp2067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f764 word 0x340003e0
  %r2068.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2068 = load i64, ptr %r2068.p, align 8, !alias.scope !3, !noalias !4
  %c2069 = trunc i64 %r2068 to i32
  %cmp2070 = icmp eq i32 %c2069, 0
  br i1 %cmp2070, label %L_80015f7e0, label %L_80015f768_ft
L_80015f768_ft:
  ; @pc 0x80015f768 word 0x9001bf68
  %wp2071 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp2071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f76c word 0xf001bf69
  %wp2072 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f770 word 0xf9440508
  %r2073.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2073 = load i64, ptr %r2073.p, align 8, !alias.scope !3, !noalias !4
  %t2074 = add i64 %r2073, 2056
  %gmp2075 = inttoptr i64 %t2074 to ptr
  %gml2076 = load i64, ptr %gmp2075, align 1, !alias.scope !4, !noalias !3
  %wp2077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2076, ptr %wp2077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f774 word 0xf9430929
  %r2078.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2078 = load i64, ptr %r2078.p, align 8, !alias.scope !3, !noalias !4
  %t2079 = add i64 %r2078, 1552
  %gmp2080 = inttoptr i64 %t2079 to ptr
  %gml2081 = load i64, ptr %gmp2080, align 1, !alias.scope !4, !noalias !3
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2081, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f778 word 0xf001bf60
  %wp2083 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f77c word 0x91004108
  %r2084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2084 = load i64, ptr %r2084.p, align 8, !alias.scope !3, !noalias !4
  %t2085 = add i64 %r2084, 16
  %wp2086 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2085, ptr %wp2086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f780 word 0xf9000128
  %r2087.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2087 = load i64, ptr %r2087.p, align 8, !alias.scope !3, !noalias !4
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %gmp2089 = inttoptr i64 %r2087 to ptr
  store i64 %r2088, ptr %gmp2089, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f784 word 0xf9430c00
  %r2090.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2090 = load i64, ptr %r2090.p, align 8, !alias.scope !3, !noalias !4
  %t2091 = add i64 %r2090, 1560
  %gmp2092 = inttoptr i64 %t2091 to ptr
  %gml2093 = load i64, ptr %gmp2092, align 1, !alias.scope !4, !noalias !3
  %wp2094 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2093, ptr %wp2094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f788 word 0x94a9108a
  %wp2095 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361177996, ptr %wp2095, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015f78c word 0xb001c0c9
  %wp2096 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f790 word 0xaa1803e3
  %r2097.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2097 = load i64, ptr %r2097.p, align 8, !alias.scope !3, !noalias !4
  %t2098 = or i64 0, %r2097
  %wp2099 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2098, ptr %wp2099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f794 word 0xf941b529
  %r2100.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2100 = load i64, ptr %r2100.p, align 8, !alias.scope !3, !noalias !4
  %t2101 = add i64 %r2100, 872
  %gmp2102 = inttoptr i64 %t2101 to ptr
  %gml2103 = load i64, ptr %gmp2102, align 1, !alias.scope !4, !noalias !3
  %wp2104 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2103, ptr %wp2104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f798 word 0xb94007e4
  %r2105.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2105 = load i64, ptr %r2105.p, align 8, !alias.scope !3, !noalias !4
  %t2106 = add i64 %r2105, 4
  %gmp2107 = inttoptr i64 %t2106 to ptr
  %gml2108 = load i32, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  %c2109 = zext i32 %gml2108 to i64
  %wp2110 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2109, ptr %wp2110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f79c word 0x14000011
  br label %L_80015f7e0
L_80015f7f4_ft:
  ; @pc 0x80015f7f4 word 0xf94002e8
  %r2177.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2177 = load i64, ptr %r2177.p, align 8, !alias.scope !3, !noalias !4
  %gmp2178 = inttoptr i64 %r2177 to ptr
  %gml2179 = load i64, ptr %gmp2178, align 1, !alias.scope !4, !noalias !3
  %wp2180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2179, ptr %wp2180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7f8 word 0xf9400108
  %r2181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2181 = load i64, ptr %r2181.p, align 8, !alias.scope !3, !noalias !4
  %gmp2182 = inttoptr i64 %r2181 to ptr
  %gml2183 = load i64, ptr %gmp2182, align 1, !alias.scope !4, !noalias !3
  %wp2184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2183, ptr %wp2184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f7fc word 0xeb09011f
  %r2185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2185 = load i64, ptr %r2185.p, align 8, !alias.scope !3, !noalias !4
  %r2186.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2186 = load i64, ptr %r2186.p, align 8, !alias.scope !3, !noalias !4
  %t2187 = sub i64 %r2185, %r2186
  %fn2188 = icmp slt i64 %t2187, 0
  %fz2189 = icmp eq i64 %t2187, 0
  %fc2190 = icmp uge i64 %r2185, %r2186
  %fx12191 = xor i64 %r2185, %r2186
  %fx22192 = xor i64 %r2185, %t2187
  %fva2193 = and i64 %fx12191, %fx22192
  %fv2194 = icmp slt i64 %fva2193, 0
  %nz2195 = zext i1 %fn2188 to i64
  %zz2196 = zext i1 %fz2189 to i64
  %cz2197 = zext i1 %fc2190 to i64
  %vz2198 = zext i1 %fv2194 to i64
  %ns2199 = shl i64 %nz2195, 31
  %zs2200 = shl i64 %zz2196, 30
  %cs2201 = shl i64 %cz2197, 29
  %vs2202 = shl i64 %vz2198, 28
  %nzor2203 = or i64 %ns2199, %zs2200
  %cvor2204 = or i64 %cs2201, %vs2202
  %nzcv2205 = or i64 %nzor2203, %cvor2204
  %wp2206 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2205, ptr %wp2206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f800 word 0x540004a1
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %fsh2209 = lshr i64 %r2207, 30
  %ftr2210 = trunc i64 %fsh2209 to i1
  %cond2208 = xor i1 %ftr2210, true
  br i1 %cond2208, label %L_80015f894, label %L_80015f804_ft
L_80015f804_ft:
  ; @pc 0x80015f804 word 0xb001c0c8
  %wp2211 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419998720, ptr %wp2211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f808 word 0xf941bd08
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %t2213 = add i64 %r2212, 888
  %gmp2214 = inttoptr i64 %t2213 to ptr
  %gml2215 = load i64, ptr %gmp2214, align 1, !alias.scope !4, !noalias !3
  %wp2216 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2215, ptr %wp2216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f80c word 0x08dffd08
  %r2217.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2217 = load i64, ptr %r2217.p, align 8, !alias.scope !3, !noalias !4
  %atp2218 = inttoptr i64 %r2217 to ptr
  %lda2219 = load atomic i8, ptr %atp2218 acquire, align 1, !alias.scope !4, !noalias !3
  %c2220 = zext i8 %lda2219 to i64
  %wp2221 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2220, ptr %wp2221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f810 word 0x36004068
  %r2222.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2222 = load i64, ptr %r2222.p, align 8, !alias.scope !3, !noalias !4
  %t2223 = and i64 %r2222, 1
  %cmp2224 = icmp eq i64 %t2223, 0
  br i1 %cmp2224, label %L_80016001c, label %L_80015f814
L_80015f834_ft:
  ; @pc 0x80015f834 word 0xf001bf60
  %wp2253 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f838 word 0xaa0303f8
  %r2254.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2254 = load i64, ptr %r2254.p, align 8, !alias.scope !3, !noalias !4
  %t2255 = or i64 0, %r2254
  %wp2256 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2255, ptr %wp2256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f83c word 0xf9430c00
  %r2257.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2257 = load i64, ptr %r2257.p, align 8, !alias.scope !3, !noalias !4
  %t2258 = add i64 %r2257, 1560
  %gmp2259 = inttoptr i64 %t2258 to ptr
  %gml2260 = load i64, ptr %gmp2259, align 1, !alias.scope !4, !noalias !3
  %wp2261 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2260, ptr %wp2261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f840 word 0xb90007e4
  %r2262.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2262 = load i64, ptr %r2262.p, align 8, !alias.scope !3, !noalias !4
  %t2263 = add i64 %r2262, 4
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %c2265 = trunc i64 %r2264 to i32
  %gmp2266 = inttoptr i64 %t2263 to ptr
  store i32 %c2265, ptr %gmp2266, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f844 word 0x94a91057
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178184, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x80015f848 word 0xb001c0c9
  %wp2268 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f84c word 0xaa1803e3
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %t2270 = or i64 0, %r2269
  %wp2271 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2270, ptr %wp2271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f850 word 0xf941b529
  %r2272.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2272 = load i64, ptr %r2272.p, align 8, !alias.scope !3, !noalias !4
  %t2273 = add i64 %r2272, 872
  %gmp2274 = inttoptr i64 %t2273 to ptr
  %gml2275 = load i64, ptr %gmp2274, align 1, !alias.scope !4, !noalias !3
  %wp2276 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2275, ptr %wp2276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f854 word 0xb94007e4
  %r2277.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2277 = load i64, ptr %r2277.p, align 8, !alias.scope !3, !noalias !4
  %t2278 = add i64 %r2277, 4
  %gmp2279 = inttoptr i64 %t2278 to ptr
  %gml2280 = load i32, ptr %gmp2279, align 1, !alias.scope !4, !noalias !3
  %c2281 = zext i32 %gml2280 to i64
  %wp2282 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2281, ptr %wp2282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f858 word 0x340003e0
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %c2284 = trunc i64 %r2283 to i32
  %cmp2285 = icmp eq i32 %c2284, 0
  br i1 %cmp2285, label %L_80015f8d4, label %L_80015f85c_ft
L_80015f85c_ft:
  ; @pc 0x80015f85c word 0x9001bf68
  %wp2286 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp2286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f860 word 0xf001bf69
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f864 word 0xf9440508
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %t2289 = add i64 %r2288, 2056
  %gmp2290 = inttoptr i64 %t2289 to ptr
  %gml2291 = load i64, ptr %gmp2290, align 1, !alias.scope !4, !noalias !3
  %wp2292 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2291, ptr %wp2292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f868 word 0xf9430929
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %t2294 = add i64 %r2293, 1552
  %gmp2295 = inttoptr i64 %t2294 to ptr
  %gml2296 = load i64, ptr %gmp2295, align 1, !alias.scope !4, !noalias !3
  %wp2297 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2296, ptr %wp2297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f86c word 0xf001bf60
  %wp2298 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f870 word 0x91004108
  %r2299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2299 = load i64, ptr %r2299.p, align 8, !alias.scope !3, !noalias !4
  %t2300 = add i64 %r2299, 16
  %wp2301 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2300, ptr %wp2301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f874 word 0xf9000128
  %r2302.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2302 = load i64, ptr %r2302.p, align 8, !alias.scope !3, !noalias !4
  %r2303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2303 = load i64, ptr %r2303.p, align 8, !alias.scope !3, !noalias !4
  %gmp2304 = inttoptr i64 %r2302 to ptr
  store i64 %r2303, ptr %gmp2304, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015f878 word 0xf9430c00
  %r2305.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2305 = load i64, ptr %r2305.p, align 8, !alias.scope !3, !noalias !4
  %t2306 = add i64 %r2305, 1560
  %gmp2307 = inttoptr i64 %t2306 to ptr
  %gml2308 = load i64, ptr %gmp2307, align 1, !alias.scope !4, !noalias !3
  %wp2309 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2308, ptr %wp2309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f87c word 0x94a9104d
  %wp2310 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178240, ptr %wp2310, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015f880 word 0xb001c0c9
  %wp2311 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp2311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f884 word 0xaa1803e3
  %r2312.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2312 = load i64, ptr %r2312.p, align 8, !alias.scope !3, !noalias !4
  %t2313 = or i64 0, %r2312
  %wp2314 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2313, ptr %wp2314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f888 word 0xf941b529
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %t2316 = add i64 %r2315, 872
  %gmp2317 = inttoptr i64 %t2316 to ptr
  %gml2318 = load i64, ptr %gmp2317, align 1, !alias.scope !4, !noalias !3
  %wp2319 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2318, ptr %wp2319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f88c word 0xb94007e4
  %r2320.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2320 = load i64, ptr %r2320.p, align 8, !alias.scope !3, !noalias !4
  %t2321 = add i64 %r2320, 4
  %gmp2322 = inttoptr i64 %t2321 to ptr
  %gml2323 = load i32, ptr %gmp2322, align 1, !alias.scope !4, !noalias !3
  %c2324 = zext i32 %gml2323 to i64
  %wp2325 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2324, ptr %wp2325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f890 word 0x14000011
  br label %L_80015f8d4
L_80015f8e8_ft:
  ; @pc 0x80015f8e8 word 0xf94002e8
  %r2392.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2392 = load i64, ptr %r2392.p, align 8, !alias.scope !3, !noalias !4
  %gmp2393 = inttoptr i64 %r2392 to ptr
  %gml2394 = load i64, ptr %gmp2393, align 1, !alias.scope !4, !noalias !3
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8ec word 0xf9400108
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %gmp2397 = inttoptr i64 %r2396 to ptr
  %gml2398 = load i64, ptr %gmp2397, align 1, !alias.scope !4, !noalias !3
  %wp2399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2398, ptr %wp2399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8f0 word 0xeb09011f
  %r2400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2400 = load i64, ptr %r2400.p, align 8, !alias.scope !3, !noalias !4
  %r2401.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2401 = load i64, ptr %r2401.p, align 8, !alias.scope !3, !noalias !4
  %t2402 = sub i64 %r2400, %r2401
  %fn2403 = icmp slt i64 %t2402, 0
  %fz2404 = icmp eq i64 %t2402, 0
  %fc2405 = icmp uge i64 %r2400, %r2401
  %fx12406 = xor i64 %r2400, %r2401
  %fx22407 = xor i64 %r2400, %t2402
  %fva2408 = and i64 %fx12406, %fx22407
  %fv2409 = icmp slt i64 %fva2408, 0
  %nz2410 = zext i1 %fn2403 to i64
  %zz2411 = zext i1 %fz2404 to i64
  %cz2412 = zext i1 %fc2405 to i64
  %vz2413 = zext i1 %fv2409 to i64
  %ns2414 = shl i64 %nz2410, 31
  %zs2415 = shl i64 %zz2411, 30
  %cs2416 = shl i64 %cz2412, 29
  %vs2417 = shl i64 %vz2413, 28
  %nzor2418 = or i64 %ns2414, %zs2415
  %cvor2419 = or i64 %cs2416, %vs2417
  %nzcv2420 = or i64 %nzor2418, %cvor2419
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8f4 word 0x540001e1
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %fsh2424 = lshr i64 %r2422, 30
  %ftr2425 = trunc i64 %fsh2424 to i1
  %cond2423 = xor i1 %ftr2425, true
  br i1 %cond2423, label %L_80015f930, label %L_80015f8f8_ft
L_80015f8f8_ft:
  ; @pc 0x80015f8f8 word 0xb001c0c8
  %wp2426 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419998720, ptr %wp2426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f8fc word 0xf941bd08
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %t2428 = add i64 %r2427, 888
  %gmp2429 = inttoptr i64 %t2428 to ptr
  %gml2430 = load i64, ptr %gmp2429, align 1, !alias.scope !4, !noalias !3
  %wp2431 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2430, ptr %wp2431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f900 word 0x08dffd08
  %r2432.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2432 = load i64, ptr %r2432.p, align 8, !alias.scope !3, !noalias !4
  %atp2433 = inttoptr i64 %r2432 to ptr
  %lda2434 = load atomic i8, ptr %atp2433 acquire, align 1, !alias.scope !4, !noalias !3
  %c2435 = zext i8 %lda2434 to i64
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f904 word 0x360044c8
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %t2438 = and i64 %r2437, 1
  %cmp2439 = icmp eq i64 %t2438, 0
  br i1 %cmp2439, label %L_80016019c, label %L_80015f908
L_80015f964_ft:
  ; @pc 0x80015f964 word 0x17fffff1
  br label %L_80015f928
L_80015f978_ft:
  ; @pc 0x80015f978 word 0x2a0403f7
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %c2547 = trunc i64 %r2546 to i32
  %t2548 = or i32 0, %c2547
  %c2549 = zext i32 %t2548 to i64
  %wp2550 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2549, ptr %wp2550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f97c word 0xd63f0100
  %r2551.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2551 = load i64, ptr %r2551.p, align 8, !alias.scope !3, !noalias !4
  %fp2552 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2551, ptr %fp2552, align 8, !alias.scope !3, !noalias !4
  %wp2553 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178496, ptr %wp2553, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80015f980 word 0x2a1703e4
  %r2554.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2554 = load i64, ptr %r2554.p, align 8, !alias.scope !3, !noalias !4
  %c2555 = trunc i64 %r2554 to i32
  %t2556 = or i32 0, %c2555
  %c2557 = zext i32 %t2556 to i64
  %wp2558 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2557, ptr %wp2558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f984 word 0x17fffe9f
  br label %L_80015f400
L_80015f9a0_ft:
  ; @pc 0x80015f9a0 word 0x54ffcd80
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %fsh2607 = lshr i64 %r2605, 30
  %cond2606 = trunc i64 %fsh2607 to i1
  br i1 %cond2606, label %L_80015f350, label %L_80015f9a4_ft
L_80015f9a4_ft:
  ; @pc 0x80015f9a4 word 0xf94006a8
  %r2608.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2608 = load i64, ptr %r2608.p, align 8, !alias.scope !3, !noalias !4
  %t2609 = add i64 %r2608, 8
  %gmp2610 = inttoptr i64 %t2609 to ptr
  %gml2611 = load i64, ptr %gmp2610, align 1, !alias.scope !4, !noalias !3
  %wp2612 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2611, ptr %wp2612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9a8 word 0x9001c009
  %wp2613 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp2613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9ac word 0x12003e81
  %r2614.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2614 = load i64, ptr %r2614.p, align 8, !alias.scope !3, !noalias !4
  %c2615 = trunc i64 %r2614 to i32
  %t2616 = and i32 %c2615, 65535
  %c2617 = zext i32 %t2616 to i64
  %wp2618 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2617, ptr %wp2618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9b0 word 0xf9401100
  %r2619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2619 = load i64, ptr %r2619.p, align 8, !alias.scope !3, !noalias !4
  %t2620 = add i64 %r2619, 32
  %gmp2621 = inttoptr i64 %t2620 to ptr
  %gml2622 = load i64, ptr %gmp2621, align 1, !alias.scope !4, !noalias !3
  %wp2623 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2622, ptr %wp2623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9b4 word 0xf9400008
  %r2624.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2624 = load i64, ptr %r2624.p, align 8, !alias.scope !3, !noalias !4
  %gmp2625 = inttoptr i64 %r2624 to ptr
  %gml2626 = load i64, ptr %gmp2625, align 1, !alias.scope !4, !noalias !3
  %wp2627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2626, ptr %wp2627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9b8 word 0xf9408d08
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %t2629 = add i64 %r2628, 280
  %gmp2630 = inttoptr i64 %t2629 to ptr
  %gml2631 = load i64, ptr %gmp2630, align 1, !alias.scope !4, !noalias !3
  %wp2632 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2631, ptr %wp2632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9bc word 0xf9448929
  %r2633.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2633 = load i64, ptr %r2633.p, align 8, !alias.scope !3, !noalias !4
  %t2634 = add i64 %r2633, 2320
  %gmp2635 = inttoptr i64 %t2634 to ptr
  %gml2636 = load i64, ptr %gmp2635, align 1, !alias.scope !4, !noalias !3
  %wp2637 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2636, ptr %wp2637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9c0 word 0xeb09011f
  %r2638.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2638 = load i64, ptr %r2638.p, align 8, !alias.scope !3, !noalias !4
  %r2639.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2639 = load i64, ptr %r2639.p, align 8, !alias.scope !3, !noalias !4
  %t2640 = sub i64 %r2638, %r2639
  %fn2641 = icmp slt i64 %t2640, 0
  %fz2642 = icmp eq i64 %t2640, 0
  %fc2643 = icmp uge i64 %r2638, %r2639
  %fx12644 = xor i64 %r2638, %r2639
  %fx22645 = xor i64 %r2638, %t2640
  %fva2646 = and i64 %fx12644, %fx22645
  %fv2647 = icmp slt i64 %fva2646, 0
  %nz2648 = zext i1 %fn2641 to i64
  %zz2649 = zext i1 %fz2642 to i64
  %cz2650 = zext i1 %fc2643 to i64
  %vz2651 = zext i1 %fv2647 to i64
  %ns2652 = shl i64 %nz2648, 31
  %zs2653 = shl i64 %zz2649, 30
  %cs2654 = shl i64 %cz2650, 29
  %vs2655 = shl i64 %vz2651, 28
  %nzor2656 = or i64 %ns2652, %zs2653
  %cvor2657 = or i64 %cs2654, %vs2655
  %nzcv2658 = or i64 %nzor2656, %cvor2657
  %wp2659 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2658, ptr %wp2659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9c4 word 0x54004961
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %fsh2662 = lshr i64 %r2660, 30
  %ftr2663 = trunc i64 %fsh2662 to i1
  %cond2661 = xor i1 %ftr2663, true
  br i1 %cond2661, label %L_8001602f0, label %L_80015f9c8
L_80015f9d0_ft:
  ; @pc 0x80015f9d0 word 0xb940a00a
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %t2672 = add i64 %r2671, 160
  %gmp2673 = inttoptr i64 %t2672 to ptr
  %gml2674 = load i32, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  %c2675 = zext i32 %gml2674 to i64
  %wp2676 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2675, ptr %wp2676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9d4 word 0x6b01015f
  %r2677.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2677 = load i64, ptr %r2677.p, align 8, !alias.scope !3, !noalias !4
  %c2678 = trunc i64 %r2677 to i32
  %r2679.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2679 = load i64, ptr %r2679.p, align 8, !alias.scope !3, !noalias !4
  %c2680 = trunc i64 %r2679 to i32
  %t2681 = sub i32 %c2678, %c2680
  %fn2682 = icmp slt i32 %t2681, 0
  %fz2683 = icmp eq i32 %t2681, 0
  %fc2684 = icmp uge i32 %c2678, %c2680
  %fx12685 = xor i32 %c2678, %c2680
  %fx22686 = xor i32 %c2678, %t2681
  %fva2687 = and i32 %fx12685, %fx22686
  %fv2688 = icmp slt i32 %fva2687, 0
  %nz2689 = zext i1 %fn2682 to i64
  %zz2690 = zext i1 %fz2683 to i64
  %cz2691 = zext i1 %fc2684 to i64
  %vz2692 = zext i1 %fv2688 to i64
  %ns2693 = shl i64 %nz2689, 31
  %zs2694 = shl i64 %zz2690, 30
  %cs2695 = shl i64 %cz2691, 29
  %vs2696 = shl i64 %vz2692, 28
  %nzor2697 = or i64 %ns2693, %zs2694
  %cvor2698 = or i64 %cs2695, %vs2696
  %nzcv2699 = or i64 %nzor2697, %cvor2698
  %wp2700 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2699, ptr %wp2700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9d8 word 0x1a9f8029
  %r2701.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2701 = load i64, ptr %r2701.p, align 8, !alias.scope !3, !noalias !4
  %c2702 = trunc i64 %r2701 to i32
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %fsh2705 = lshr i64 %r2703, 29
  %ftr2706 = trunc i64 %fsh2705 to i1
  %fsh2707 = lshr i64 %r2703, 30
  %ftr2708 = trunc i64 %fsh2707 to i1
  %fnz2709 = xor i1 %ftr2708, true
  %cond2704 = and i1 %ftr2706, %fnz2709
  %sel2710 = select i1 %cond2704, i32 %c2702, i32 0
  %c2711 = zext i32 %sel2710 to i64
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2711, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9dc word 0xd37c7d2b
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %ror2714 = call i64 @llvm.fshr.i64(i64 %r2713, i64 %r2713, i64 60)
  %t2715 = and i64 %ror2714, 68719476720
  %wp2716 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2715, ptr %wp2716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9e0 word 0x38eb690b
  %r2717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2717 = load i64, ptr %r2717.p, align 8, !alias.scope !3, !noalias !4
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %t2719 = add i64 %r2717, %r2718
  %gmp2720 = inttoptr i64 %t2719 to ptr
  %gml2721 = load i8, ptr %gmp2720, align 1, !alias.scope !4, !noalias !3
  %c2722 = sext i8 %gml2721 to i32
  %c2723 = zext i32 %c2722 to i64
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2723, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9e4 word 0x36f8454b
  %r2725.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2725 = load i64, ptr %r2725.p, align 8, !alias.scope !3, !noalias !4
  %t2726 = and i64 %r2725, 2147483648
  %cmp2727 = icmp eq i64 %t2726, 0
  br i1 %cmp2727, label %L_80016028c, label %L_80015f9e8_ft
L_80015f9e8_ft:
  ; @pc 0x80015f9e8 word 0x6b01015f
  %r2728.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2728 = load i64, ptr %r2728.p, align 8, !alias.scope !3, !noalias !4
  %c2729 = trunc i64 %r2728 to i32
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %c2731 = trunc i64 %r2730 to i32
  %t2732 = sub i32 %c2729, %c2731
  %fn2733 = icmp slt i32 %t2732, 0
  %fz2734 = icmp eq i32 %t2732, 0
  %fc2735 = icmp uge i32 %c2729, %c2731
  %fx12736 = xor i32 %c2729, %c2731
  %fx22737 = xor i32 %c2729, %t2732
  %fva2738 = and i32 %fx12736, %fx22737
  %fv2739 = icmp slt i32 %fva2738, 0
  %nz2740 = zext i1 %fn2733 to i64
  %zz2741 = zext i1 %fz2734 to i64
  %cz2742 = zext i1 %fc2735 to i64
  %vz2743 = zext i1 %fv2739 to i64
  %ns2744 = shl i64 %nz2740, 31
  %zs2745 = shl i64 %zz2741, 30
  %cs2746 = shl i64 %cz2742, 29
  %vs2747 = shl i64 %vz2743, 28
  %nzor2748 = or i64 %ns2744, %zs2745
  %cvor2749 = or i64 %cs2746, %vs2747
  %nzcv2750 = or i64 %nzor2748, %cvor2749
  %wp2751 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2750, ptr %wp2751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9ec word 0x54004629
  %r2752.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2752 = load i64, ptr %r2752.p, align 8, !alias.scope !3, !noalias !4
  %fsh2754 = lshr i64 %r2752, 29
  %ftr2755 = trunc i64 %fsh2754 to i1
  %fsh2756 = lshr i64 %r2752, 30
  %ftr2757 = trunc i64 %fsh2756 to i1
  %fnz2758 = xor i1 %ftr2757, true
  %fhi2759 = and i1 %ftr2755, %fnz2758
  %cond2753 = xor i1 %fhi2759, true
  br i1 %cond2753, label %L_8001602b0, label %L_80015f9f0_ft
L_80015f9f0_ft:
  ; @pc 0x80015f9f0 word 0x8b21510a
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %r2761.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2761 = load i64, ptr %r2761.p, align 8, !alias.scope !3, !noalias !4
  %c2762 = trunc i64 %r2761 to i32
  %c2763 = zext i32 %c2762 to i64
  %t2764 = shl i64 %c2763, 4
  %t2765 = add i64 %r2760, %t2764
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2765, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9f4 word 0x79c0054a
  %r2767.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2767 = load i64, ptr %r2767.p, align 8, !alias.scope !3, !noalias !4
  %t2768 = add i64 %r2767, 2
  %gmp2769 = inttoptr i64 %t2768 to ptr
  %gml2770 = load i16, ptr %gmp2769, align 1, !alias.scope !4, !noalias !3
  %c2771 = sext i16 %gml2770 to i32
  %c2772 = zext i32 %c2771 to i64
  %wp2773 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2772, ptr %wp2773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015f9f8 word 0x36f8460a
  %r2774.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2774 = load i64, ptr %r2774.p, align 8, !alias.scope !3, !noalias !4
  %t2775 = and i64 %r2774, 2147483648
  %cmp2776 = icmp eq i64 %t2775, 0
  br i1 %cmp2776, label %L_8001602b8, label %L_80015f9fc_ft
L_80015f9fc_ft:
  ; @pc 0x80015f9fc word 0x2a0103e9
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %c2778 = trunc i64 %r2777 to i32
  %t2779 = or i32 0, %c2778
  %c2780 = zext i32 %t2779 to i64
  %wp2781 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2780, ptr %wp2781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa00 word 0x8b091108
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %r2783.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2783 = load i64, ptr %r2783.p, align 8, !alias.scope !3, !noalias !4
  %t2784 = shl i64 %r2783, 4
  %t2785 = add i64 %r2782, %t2784
  %wp2786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2785, ptr %wp2786, align 8, !alias.scope !3, !noalias !4
  br label %L_80015fa04
L_80015fa1c_ft:
  ; @pc 0x80015fa1c word 0x2a1f03f7
  %t2837 = or i32 0, 0
  %c2838 = zext i32 %t2837 to i64
  %wp2839 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2838, ptr %wp2839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa20 word 0x8b214108
  %r2840.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2840 = load i64, ptr %r2840.p, align 8, !alias.scope !3, !noalias !4
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %c2842 = trunc i64 %r2841 to i32
  %c2843 = zext i32 %c2842 to i64
  %t2844 = add i64 %r2840, %c2843
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  br label %L_80015fa24
L_80015fa4c_ft:
  ; @pc 0x80015fa4c word 0x12003e89
  %r2916.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2916 = load i64, ptr %r2916.p, align 8, !alias.scope !3, !noalias !4
  %c2917 = trunc i64 %r2916 to i32
  %t2918 = and i32 %c2917, 65535
  %c2919 = zext i32 %t2918 to i64
  %wp2920 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2919, ptr %wp2920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa50 word 0x5280038a
  %c2921 = zext i32 28 to i64
  %wp2922 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2921, ptr %wp2922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa54 word 0x9baa2128
  %r2923.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2923 = load i64, ptr %r2923.p, align 8, !alias.scope !3, !noalias !4
  %c2924 = trunc i64 %r2923 to i32
  %c2925 = zext i32 %c2924 to i64
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %c2927 = trunc i64 %r2926 to i32
  %c2928 = zext i32 %c2927 to i64
  %t2929 = mul i64 %c2925, %c2928
  %r2930.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2930 = load i64, ptr %r2930.p, align 8, !alias.scope !3, !noalias !4
  %t2931 = add i64 %r2930, %t2929
  %wp2932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2931, ptr %wp2932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa58 word 0x79403d08
  %r2933.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2933 = load i64, ptr %r2933.p, align 8, !alias.scope !3, !noalias !4
  %t2934 = add i64 %r2933, 30
  %gmp2935 = inttoptr i64 %t2934 to ptr
  %gml2936 = load i16, ptr %gmp2935, align 1, !alias.scope !4, !noalias !3
  %c2937 = zext i16 %gml2936 to i64
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa5c word 0x51000909
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %c2940 = trunc i64 %r2939 to i32
  %t2941 = sub i32 %c2940, 2
  %c2942 = zext i32 %t2941 to i64
  %wp2943 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2942, ptr %wp2943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa60 word 0x7100113f
  %r2944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2944 = load i64, ptr %r2944.p, align 8, !alias.scope !3, !noalias !4
  %c2945 = trunc i64 %r2944 to i32
  %t2946 = sub i32 %c2945, 4
  %fn2947 = icmp slt i32 %t2946, 0
  %fz2948 = icmp eq i32 %t2946, 0
  %fc2949 = icmp uge i32 %c2945, 4
  %fx12950 = xor i32 %c2945, 4
  %fx22951 = xor i32 %c2945, %t2946
  %fva2952 = and i32 %fx12950, %fx22951
  %fv2953 = icmp slt i32 %fva2952, 0
  %nz2954 = zext i1 %fn2947 to i64
  %zz2955 = zext i1 %fz2948 to i64
  %cz2956 = zext i1 %fc2949 to i64
  %vz2957 = zext i1 %fv2953 to i64
  %ns2958 = shl i64 %nz2954, 31
  %zs2959 = shl i64 %zz2955, 30
  %cs2960 = shl i64 %cz2956, 29
  %vs2961 = shl i64 %vz2957, 28
  %nzor2962 = or i64 %ns2958, %zs2959
  %cvor2963 = or i64 %cs2960, %vs2961
  %nzcv2964 = or i64 %nzor2962, %cvor2963
  %wp2965 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2964, ptr %wp2965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa64 word 0x540001c8
  %r2966.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2966 = load i64, ptr %r2966.p, align 8, !alias.scope !3, !noalias !4
  %fsh2968 = lshr i64 %r2966, 29
  %ftr2969 = trunc i64 %fsh2968 to i1
  %fsh2970 = lshr i64 %r2966, 30
  %ftr2971 = trunc i64 %fsh2970 to i1
  %fnz2972 = xor i1 %ftr2971, true
  %cond2967 = and i1 %ftr2969, %fnz2972
  br i1 %cond2967, label %L_80015fa9c, label %L_80015fa68_ft
L_80015fa68_ft:
  ; @pc 0x80015fa68 word 0x900160aa
  %wp2973 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34407395328, ptr %wp2973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa6c word 0x9130214a
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = add i64 %r2974, 3080
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2975, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa70 word 0x10ffcacb
  %wp2977 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34361177032, ptr %wp2977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa74 word 0x7869794c
  %r2978.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2978 = load i64, ptr %r2978.p, align 8, !alias.scope !3, !noalias !4
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %t2980 = shl i64 %r2979, 1
  %t2981 = add i64 %r2978, %t2980
  %gmp2982 = inttoptr i64 %t2981 to ptr
  %gml2983 = load i16, ptr %gmp2982, align 1, !alias.scope !4, !noalias !3
  %c2984 = zext i16 %gml2983 to i64
  %wp2985 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2984, ptr %wp2985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa78 word 0x8b0c096b
  %r2986.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2986 = load i64, ptr %r2986.p, align 8, !alias.scope !3, !noalias !4
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2987 = load i64, ptr %r2987.p, align 8, !alias.scope !3, !noalias !4
  %t2988 = shl i64 %r2987, 2
  %t2989 = add i64 %r2986, %t2988
  %wp2990 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2989, ptr %wp2990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa7c word 0x13003f08
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %c2992 = trunc i64 %r2991 to i32
  %t2993 = lshr i32 %c2992, 15
  %t2994 = and i32 %t2993, 1
  %t2995 = sub i32 0, %t2994
  %t2996 = and i32 %t2995, -65536
  %t2997 = and i32 %c2992, 65535
  %t2998 = or i32 %t2996, %t2997
  %c2999 = zext i32 %t2998 to i64
  %wp3000 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2999, ptr %wp3000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fa80 word 0xd61f0160
  %r3001.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3001 = load i64, ptr %r3001.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r3001, label %L_80015fa80_jt_def [
    i64 34361177032, label %L_80015f3c8
    i64 34361178756, label %L_80015fa84
    i64 34361178788, label %L_80015faa4
    i64 34361178808, label %L_80015fab8
    i64 34361181016, label %L_800160358
  ]
L_80015fb04_ft:
  ; @pc 0x80015fb04 word 0xf001cae8
  %wp3142 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp3142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb08 word 0xf001cae0
  %wp3143 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp3143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb0c word 0x9114a000
  %r3144.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3144 = load i64, ptr %r3144.p, align 8, !alias.scope !3, !noalias !4
  %t3145 = add i64 %r3144, 1320
  %wp3146 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3145, ptr %wp3146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb10 word 0x3914811f
  %r3147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3147 = load i64, ptr %r3147.p, align 8, !alias.scope !3, !noalias !4
  %t3148 = add i64 %r3147, 1312
  %c3149 = trunc i32 0 to i8
  %gmp3150 = inttoptr i64 %t3148 to ptr
  store i8 %c3149, ptr %gmp3150, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fb14 word 0x94a90fa7
  %wp3151 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361178904, ptr %wp3151, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fb18 word 0xaa1c03e3
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %t3153 = or i64 0, %r3152
  %wp3154 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3153, ptr %wp3154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb1c word 0x2a1b03e4
  %r3155.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3155 = load i64, ptr %r3155.p, align 8, !alias.scope !3, !noalias !4
  %c3156 = trunc i64 %r3155 to i32
  %t3157 = or i32 0, %c3156
  %c3158 = zext i32 %t3157 to i64
  %wp3159 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3158, ptr %wp3159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fb20 word 0x17fffe11
  br label %L_80015f364
L_80015fba4_ft:
  ; @pc 0x80015fba4 word 0xaa1303e8
  %r3272.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3272 = load i64, ptr %r3272.p, align 8, !alias.scope !3, !noalias !4
  %t3273 = or i64 0, %r3272
  %wp3274 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3273, ptr %wp3274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fba8 word 0x17fffe1b
  br label %L_80015f414
L_80015fc58_ft:
  ; @pc 0x80015fc58 word 0x17fffdef
  br label %L_80015f414
L_80015fcec_ft:
  ; @pc 0x80015fcec word 0xf001bf68
  %wp3557 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcf0 word 0x9001c009
  %wp3558 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcf4 word 0xf942f908
  %r3559.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3559 = load i64, ptr %r3559.p, align 8, !alias.scope !3, !noalias !4
  %t3560 = add i64 %r3559, 1520
  %gmp3561 = inttoptr i64 %t3560 to ptr
  %gml3562 = load i64, ptr %gmp3561, align 1, !alias.scope !4, !noalias !3
  %wp3563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3562, ptr %wp3563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcf8 word 0xf9452929
  %r3564.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3564 = load i64, ptr %r3564.p, align 8, !alias.scope !3, !noalias !4
  %t3565 = add i64 %r3564, 2640
  %gmp3566 = inttoptr i64 %t3565 to ptr
  %gml3567 = load i64, ptr %gmp3566, align 1, !alias.scope !4, !noalias !3
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3567, ptr %wp3568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fcfc word 0x9001c000
  %wp3569 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd00 word 0x91004108
  %r3570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3570 = load i64, ptr %r3570.p, align 8, !alias.scope !3, !noalias !4
  %t3571 = add i64 %r3570, 16
  %wp3572 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3571, ptr %wp3572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd04 word 0xf9000128
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %r3574.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3574 = load i64, ptr %r3574.p, align 8, !alias.scope !3, !noalias !4
  %gmp3575 = inttoptr i64 %r3573 to ptr
  store i64 %r3574, ptr %gmp3575, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fd08 word 0xf9452c00
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3576, 2648
  %gmp3578 = inttoptr i64 %t3577 to ptr
  %gml3579 = load i64, ptr %gmp3578, align 1, !alias.scope !4, !noalias !3
  %wp3580 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3579, ptr %wp3580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd0c word 0x94a90f29
  %wp3581 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179408, ptr %wp3581, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fd10 word 0xb94007e4
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = add i64 %r3582, 4
  %gmp3584 = inttoptr i64 %t3583 to ptr
  %gml3585 = load i32, ptr %gmp3584, align 1, !alias.scope !4, !noalias !3
  %c3586 = zext i32 %gml3585 to i64
  %wp3587 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3586, ptr %wp3587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd14 word 0xaa1803e3
  %r3588.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3588 = load i64, ptr %r3588.p, align 8, !alias.scope !3, !noalias !4
  %t3589 = or i64 0, %r3588
  %wp3590 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3589, ptr %wp3590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd18 word 0x17fffdfd
  br label %L_80015f50c
L_80015fd44_ft:
  ; @pc 0x80015fd44 word 0xf001bf68
  %wp3624 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd48 word 0x9001c009
  %wp3625 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd4c word 0xf942f908
  %r3626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3626 = load i64, ptr %r3626.p, align 8, !alias.scope !3, !noalias !4
  %t3627 = add i64 %r3626, 1520
  %gmp3628 = inttoptr i64 %t3627 to ptr
  %gml3629 = load i64, ptr %gmp3628, align 1, !alias.scope !4, !noalias !3
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd50 word 0xf9453129
  %r3631.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3631 = load i64, ptr %r3631.p, align 8, !alias.scope !3, !noalias !4
  %t3632 = add i64 %r3631, 2656
  %gmp3633 = inttoptr i64 %t3632 to ptr
  %gml3634 = load i64, ptr %gmp3633, align 1, !alias.scope !4, !noalias !3
  %wp3635 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3634, ptr %wp3635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd54 word 0x9001c000
  %wp3636 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd58 word 0x91004108
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %t3638 = add i64 %r3637, 16
  %wp3639 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3638, ptr %wp3639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd5c word 0xf9000128
  %r3640.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3640 = load i64, ptr %r3640.p, align 8, !alias.scope !3, !noalias !4
  %r3641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3641 = load i64, ptr %r3641.p, align 8, !alias.scope !3, !noalias !4
  %gmp3642 = inttoptr i64 %r3640 to ptr
  store i64 %r3641, ptr %gmp3642, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fd60 word 0xf9453400
  %r3643.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3643 = load i64, ptr %r3643.p, align 8, !alias.scope !3, !noalias !4
  %t3644 = add i64 %r3643, 2664
  %gmp3645 = inttoptr i64 %t3644 to ptr
  %gml3646 = load i64, ptr %gmp3645, align 1, !alias.scope !4, !noalias !3
  %wp3647 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3646, ptr %wp3647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd64 word 0x94a90f13
  %wp3648 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179496, ptr %wp3648, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fd68 word 0xb001c0c9
  %wp3649 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd6c word 0xaa1803e3
  %r3650.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3650 = load i64, ptr %r3650.p, align 8, !alias.scope !3, !noalias !4
  %t3651 = or i64 0, %r3650
  %wp3652 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3651, ptr %wp3652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd70 word 0xf941b529
  %r3653.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3653 = load i64, ptr %r3653.p, align 8, !alias.scope !3, !noalias !4
  %t3654 = add i64 %r3653, 872
  %gmp3655 = inttoptr i64 %t3654 to ptr
  %gml3656 = load i64, ptr %gmp3655, align 1, !alias.scope !4, !noalias !3
  %wp3657 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3656, ptr %wp3657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd74 word 0xb94007e4
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %t3659 = add i64 %r3658, 4
  %gmp3660 = inttoptr i64 %t3659 to ptr
  %gml3661 = load i32, ptr %gmp3660, align 1, !alias.scope !4, !noalias !3
  %c3662 = zext i32 %gml3661 to i64
  %wp3663 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3662, ptr %wp3663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fd78 word 0x17fffe24
  br label %L_80015f608
L_80015fda4_ft:
  ; @pc 0x80015fda4 word 0xf001bf68
  %wp3697 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fda8 word 0x9001c009
  %wp3698 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdac word 0xf942f908
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %t3700 = add i64 %r3699, 1520
  %gmp3701 = inttoptr i64 %t3700 to ptr
  %gml3702 = load i64, ptr %gmp3701, align 1, !alias.scope !4, !noalias !3
  %wp3703 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3702, ptr %wp3703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdb0 word 0xf9453929
  %r3704.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3704 = load i64, ptr %r3704.p, align 8, !alias.scope !3, !noalias !4
  %t3705 = add i64 %r3704, 2672
  %gmp3706 = inttoptr i64 %t3705 to ptr
  %gml3707 = load i64, ptr %gmp3706, align 1, !alias.scope !4, !noalias !3
  %wp3708 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3707, ptr %wp3708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdb4 word 0x9001c000
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdb8 word 0x91004108
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %t3711 = add i64 %r3710, 16
  %wp3712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3711, ptr %wp3712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdbc word 0xf9000128
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %r3714.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3714 = load i64, ptr %r3714.p, align 8, !alias.scope !3, !noalias !4
  %gmp3715 = inttoptr i64 %r3713 to ptr
  store i64 %r3714, ptr %gmp3715, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fdc0 word 0xf9453c00
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3716 = load i64, ptr %r3716.p, align 8, !alias.scope !3, !noalias !4
  %t3717 = add i64 %r3716, 2680
  %gmp3718 = inttoptr i64 %t3717 to ptr
  %gml3719 = load i64, ptr %gmp3718, align 1, !alias.scope !4, !noalias !3
  %wp3720 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3719, ptr %wp3720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdc4 word 0x94a90efb
  %wp3721 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179592, ptr %wp3721, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fdc8 word 0xb001c0c9
  %wp3722 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdcc word 0xaa1803e3
  %r3723.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3723 = load i64, ptr %r3723.p, align 8, !alias.scope !3, !noalias !4
  %t3724 = or i64 0, %r3723
  %wp3725 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3724, ptr %wp3725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdd0 word 0xf941b529
  %r3726.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3726 = load i64, ptr %r3726.p, align 8, !alias.scope !3, !noalias !4
  %t3727 = add i64 %r3726, 872
  %gmp3728 = inttoptr i64 %t3727 to ptr
  %gml3729 = load i64, ptr %gmp3728, align 1, !alias.scope !4, !noalias !3
  %wp3730 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3729, ptr %wp3730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdd4 word 0xb94007e4
  %r3731.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3731 = load i64, ptr %r3731.p, align 8, !alias.scope !3, !noalias !4
  %t3732 = add i64 %r3731, 4
  %gmp3733 = inttoptr i64 %t3732 to ptr
  %gml3734 = load i32, ptr %gmp3733, align 1, !alias.scope !4, !noalias !3
  %c3735 = zext i32 %gml3734 to i64
  %wp3736 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3735, ptr %wp3736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fdd8 word 0x17fffe49
  br label %L_80015f6fc
L_80015fe04_ft:
  ; @pc 0x80015fe04 word 0xf001bf68
  %wp3770 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe08 word 0x9001c009
  %wp3771 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe0c word 0xf942f908
  %r3772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3772 = load i64, ptr %r3772.p, align 8, !alias.scope !3, !noalias !4
  %t3773 = add i64 %r3772, 1520
  %gmp3774 = inttoptr i64 %t3773 to ptr
  %gml3775 = load i64, ptr %gmp3774, align 1, !alias.scope !4, !noalias !3
  %wp3776 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3775, ptr %wp3776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe10 word 0xf9454129
  %r3777.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3777 = load i64, ptr %r3777.p, align 8, !alias.scope !3, !noalias !4
  %t3778 = add i64 %r3777, 2688
  %gmp3779 = inttoptr i64 %t3778 to ptr
  %gml3780 = load i64, ptr %gmp3779, align 1, !alias.scope !4, !noalias !3
  %wp3781 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3780, ptr %wp3781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe14 word 0x9001c000
  %wp3782 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe18 word 0x91004108
  %r3783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3783 = load i64, ptr %r3783.p, align 8, !alias.scope !3, !noalias !4
  %t3784 = add i64 %r3783, 16
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3784, ptr %wp3785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe1c word 0xf9000128
  %r3786.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3786 = load i64, ptr %r3786.p, align 8, !alias.scope !3, !noalias !4
  %r3787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3787 = load i64, ptr %r3787.p, align 8, !alias.scope !3, !noalias !4
  %gmp3788 = inttoptr i64 %r3786 to ptr
  store i64 %r3787, ptr %gmp3788, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fe20 word 0xf9454400
  %r3789.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3789 = load i64, ptr %r3789.p, align 8, !alias.scope !3, !noalias !4
  %t3790 = add i64 %r3789, 2696
  %gmp3791 = inttoptr i64 %t3790 to ptr
  %gml3792 = load i64, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3792, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe24 word 0x94a90ee3
  %wp3794 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179688, ptr %wp3794, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fe28 word 0xb001c0c9
  %wp3795 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe2c word 0xaa1803e3
  %r3796.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3796 = load i64, ptr %r3796.p, align 8, !alias.scope !3, !noalias !4
  %t3797 = or i64 0, %r3796
  %wp3798 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3797, ptr %wp3798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe30 word 0xf941b529
  %r3799.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3799 = load i64, ptr %r3799.p, align 8, !alias.scope !3, !noalias !4
  %t3800 = add i64 %r3799, 872
  %gmp3801 = inttoptr i64 %t3800 to ptr
  %gml3802 = load i64, ptr %gmp3801, align 1, !alias.scope !4, !noalias !3
  %wp3803 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3802, ptr %wp3803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe34 word 0xb94007e4
  %r3804.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3804 = load i64, ptr %r3804.p, align 8, !alias.scope !3, !noalias !4
  %t3805 = add i64 %r3804, 4
  %gmp3806 = inttoptr i64 %t3805 to ptr
  %gml3807 = load i32, ptr %gmp3806, align 1, !alias.scope !4, !noalias !3
  %c3808 = zext i32 %gml3807 to i64
  %wp3809 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3808, ptr %wp3809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe38 word 0x17fffe6e
  br label %L_80015f7f0
L_80015fe64_ft:
  ; @pc 0x80015fe64 word 0xf001bf68
  %wp3843 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe68 word 0x9001c009
  %wp3844 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe6c word 0xf942f908
  %r3845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3845 = load i64, ptr %r3845.p, align 8, !alias.scope !3, !noalias !4
  %t3846 = add i64 %r3845, 1520
  %gmp3847 = inttoptr i64 %t3846 to ptr
  %gml3848 = load i64, ptr %gmp3847, align 1, !alias.scope !4, !noalias !3
  %wp3849 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3848, ptr %wp3849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe70 word 0xf9454929
  %r3850.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3850 = load i64, ptr %r3850.p, align 8, !alias.scope !3, !noalias !4
  %t3851 = add i64 %r3850, 2704
  %gmp3852 = inttoptr i64 %t3851 to ptr
  %gml3853 = load i64, ptr %gmp3852, align 1, !alias.scope !4, !noalias !3
  %wp3854 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3853, ptr %wp3854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe74 word 0x9001c000
  %wp3855 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe78 word 0x91004108
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %t3857 = add i64 %r3856, 16
  %wp3858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3857, ptr %wp3858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe7c word 0xf9000128
  %r3859.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3859 = load i64, ptr %r3859.p, align 8, !alias.scope !3, !noalias !4
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %gmp3861 = inttoptr i64 %r3859 to ptr
  store i64 %r3860, ptr %gmp3861, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fe80 word 0xf9454c00
  %r3862.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3862 = load i64, ptr %r3862.p, align 8, !alias.scope !3, !noalias !4
  %t3863 = add i64 %r3862, 2712
  %gmp3864 = inttoptr i64 %t3863 to ptr
  %gml3865 = load i64, ptr %gmp3864, align 1, !alias.scope !4, !noalias !3
  %wp3866 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3865, ptr %wp3866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe84 word 0x94a90ecb
  %wp3867 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179784, ptr %wp3867, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fe88 word 0xb001c0c9
  %wp3868 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe8c word 0xaa1803e3
  %r3869.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3869 = load i64, ptr %r3869.p, align 8, !alias.scope !3, !noalias !4
  %t3870 = or i64 0, %r3869
  %wp3871 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3870, ptr %wp3871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe90 word 0xf941b529
  %r3872.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3872 = load i64, ptr %r3872.p, align 8, !alias.scope !3, !noalias !4
  %t3873 = add i64 %r3872, 872
  %gmp3874 = inttoptr i64 %t3873 to ptr
  %gml3875 = load i64, ptr %gmp3874, align 1, !alias.scope !4, !noalias !3
  %wp3876 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3875, ptr %wp3876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe94 word 0xb94007e4
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %t3878 = add i64 %r3877, 4
  %gmp3879 = inttoptr i64 %t3878 to ptr
  %gml3880 = load i32, ptr %gmp3879, align 1, !alias.scope !4, !noalias !3
  %c3881 = zext i32 %gml3880 to i64
  %wp3882 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3881, ptr %wp3882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fe98 word 0x17fffe93
  br label %L_80015f8e4
L_80015fec4_ft:
  ; @pc 0x80015fec4 word 0xf001bf68
  %wp3916 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fec8 word 0xb001c0c9
  %wp3917 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fecc word 0xf942f908
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %t3919 = add i64 %r3918, 1520
  %gmp3920 = inttoptr i64 %t3919 to ptr
  %gml3921 = load i64, ptr %gmp3920, align 1, !alias.scope !4, !noalias !3
  %wp3922 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3921, ptr %wp3922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fed0 word 0xf941b929
  %r3923.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3923 = load i64, ptr %r3923.p, align 8, !alias.scope !3, !noalias !4
  %t3924 = add i64 %r3923, 880
  %gmp3925 = inttoptr i64 %t3924 to ptr
  %gml3926 = load i64, ptr %gmp3925, align 1, !alias.scope !4, !noalias !3
  %wp3927 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3926, ptr %wp3927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fed4 word 0xb001c0c0
  %wp3928 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp3928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fed8 word 0x91004108
  %r3929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3929 = load i64, ptr %r3929.p, align 8, !alias.scope !3, !noalias !4
  %t3930 = add i64 %r3929, 16
  %wp3931 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3930, ptr %wp3931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fedc word 0xf9000128
  %r3932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3932 = load i64, ptr %r3932.p, align 8, !alias.scope !3, !noalias !4
  %r3933.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3933 = load i64, ptr %r3933.p, align 8, !alias.scope !3, !noalias !4
  %gmp3934 = inttoptr i64 %r3932 to ptr
  store i64 %r3933, ptr %gmp3934, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015fee0 word 0xf941bc00
  %r3935.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3935 = load i64, ptr %r3935.p, align 8, !alias.scope !3, !noalias !4
  %t3936 = add i64 %r3935, 888
  %gmp3937 = inttoptr i64 %t3936 to ptr
  %gml3938 = load i64, ptr %gmp3937, align 1, !alias.scope !4, !noalias !3
  %wp3939 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3938, ptr %wp3939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fee4 word 0x94a90eb3
  %wp3940 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179880, ptr %wp3940, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015fee8 word 0xb001c0c9
  %wp3941 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp3941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015feec word 0xaa1803e3
  %r3942.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3942 = load i64, ptr %r3942.p, align 8, !alias.scope !3, !noalias !4
  %t3943 = or i64 0, %r3942
  %wp3944 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3943, ptr %wp3944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fef0 word 0xf941b529
  %r3945.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3945 = load i64, ptr %r3945.p, align 8, !alias.scope !3, !noalias !4
  %t3946 = add i64 %r3945, 872
  %gmp3947 = inttoptr i64 %t3946 to ptr
  %gml3948 = load i64, ptr %gmp3947, align 1, !alias.scope !4, !noalias !3
  %wp3949 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3948, ptr %wp3949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fef4 word 0xb94007e4
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %t3951 = add i64 %r3950, 4
  %gmp3952 = inttoptr i64 %t3951 to ptr
  %gml3953 = load i32, ptr %gmp3952, align 1, !alias.scope !4, !noalias !3
  %c3954 = zext i32 %gml3953 to i64
  %wp3955 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3954, ptr %wp3955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fef8 word 0x17fffd90
  br label %L_80015f538
L_80015ff24_ft:
  ; @pc 0x80015ff24 word 0xf001bf68
  %wp3989 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff28 word 0xf001bf69
  %wp3990 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff2c word 0xf9430508
  %r3991.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3991 = load i64, ptr %r3991.p, align 8, !alias.scope !3, !noalias !4
  %t3992 = add i64 %r3991, 1544
  %gmp3993 = inttoptr i64 %t3992 to ptr
  %gml3994 = load i64, ptr %gmp3993, align 1, !alias.scope !4, !noalias !3
  %wp3995 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3994, ptr %wp3995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff30 word 0xf942fd29
  %r3996.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3996 = load i64, ptr %r3996.p, align 8, !alias.scope !3, !noalias !4
  %t3997 = add i64 %r3996, 1528
  %gmp3998 = inttoptr i64 %t3997 to ptr
  %gml3999 = load i64, ptr %gmp3998, align 1, !alias.scope !4, !noalias !3
  %wp4000 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3999, ptr %wp4000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff34 word 0xf001bf60
  %wp4001 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff38 word 0x91004108
  %r4002.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4002 = load i64, ptr %r4002.p, align 8, !alias.scope !3, !noalias !4
  %t4003 = add i64 %r4002, 16
  %wp4004 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4003, ptr %wp4004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff3c word 0xf9000128
  %r4005.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4005 = load i64, ptr %r4005.p, align 8, !alias.scope !3, !noalias !4
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %gmp4007 = inttoptr i64 %r4005 to ptr
  store i64 %r4006, ptr %gmp4007, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015ff40 word 0xf9430000
  %r4008.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4008 = load i64, ptr %r4008.p, align 8, !alias.scope !3, !noalias !4
  %t4009 = add i64 %r4008, 1536
  %gmp4010 = inttoptr i64 %t4009 to ptr
  %gml4011 = load i64, ptr %gmp4010, align 1, !alias.scope !4, !noalias !3
  %wp4012 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4011, ptr %wp4012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff44 word 0x94a90e9b
  %wp4013 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361179976, ptr %wp4013, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015ff48 word 0xb001c0c9
  %wp4014 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff4c word 0xaa1803e3
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %t4016 = or i64 0, %r4015
  %wp4017 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4016, ptr %wp4017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff50 word 0xf941b529
  %r4018.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4018 = load i64, ptr %r4018.p, align 8, !alias.scope !3, !noalias !4
  %t4019 = add i64 %r4018, 872
  %gmp4020 = inttoptr i64 %t4019 to ptr
  %gml4021 = load i64, ptr %gmp4020, align 1, !alias.scope !4, !noalias !3
  %wp4022 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4021, ptr %wp4022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff54 word 0xb94007e4
  %r4023.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4023 = load i64, ptr %r4023.p, align 8, !alias.scope !3, !noalias !4
  %t4024 = add i64 %r4023, 4
  %gmp4025 = inttoptr i64 %t4024 to ptr
  %gml4026 = load i32, ptr %gmp4025, align 1, !alias.scope !4, !noalias !3
  %c4027 = zext i32 %gml4026 to i64
  %wp4028 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4027, ptr %wp4028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff58 word 0x17fffd7c
  br label %L_80015f548
L_80015ff84_ft:
  ; @pc 0x80015ff84 word 0xf001bf68
  %wp4062 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff88 word 0xb001c0c9
  %wp4063 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff8c word 0xf942f908
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %t4065 = add i64 %r4064, 1520
  %gmp4066 = inttoptr i64 %t4065 to ptr
  %gml4067 = load i64, ptr %gmp4066, align 1, !alias.scope !4, !noalias !3
  %wp4068 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4067, ptr %wp4068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff90 word 0xf941b929
  %r4069.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4069 = load i64, ptr %r4069.p, align 8, !alias.scope !3, !noalias !4
  %t4070 = add i64 %r4069, 880
  %gmp4071 = inttoptr i64 %t4070 to ptr
  %gml4072 = load i64, ptr %gmp4071, align 1, !alias.scope !4, !noalias !3
  %wp4073 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4072, ptr %wp4073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff94 word 0xb001c0c0
  %wp4074 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff98 word 0x91004108
  %r4075.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4075 = load i64, ptr %r4075.p, align 8, !alias.scope !3, !noalias !4
  %t4076 = add i64 %r4075, 16
  %wp4077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4076, ptr %wp4077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ff9c word 0xf9000128
  %r4078.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4078 = load i64, ptr %r4078.p, align 8, !alias.scope !3, !noalias !4
  %r4079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4079 = load i64, ptr %r4079.p, align 8, !alias.scope !3, !noalias !4
  %gmp4080 = inttoptr i64 %r4078 to ptr
  store i64 %r4079, ptr %gmp4080, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80015ffa0 word 0xf941bc00
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %t4082 = add i64 %r4081, 888
  %gmp4083 = inttoptr i64 %t4082 to ptr
  %gml4084 = load i64, ptr %gmp4083, align 1, !alias.scope !4, !noalias !3
  %wp4085 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4084, ptr %wp4085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffa4 word 0x94a90e83
  %wp4086 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180072, ptr %wp4086, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x80015ffa8 word 0xb001c0c9
  %wp4087 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffac word 0xaa1803e3
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %t4089 = or i64 0, %r4088
  %wp4090 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4089, ptr %wp4090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffb0 word 0xf941b529
  %r4091.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4091 = load i64, ptr %r4091.p, align 8, !alias.scope !3, !noalias !4
  %t4092 = add i64 %r4091, 872
  %gmp4093 = inttoptr i64 %t4092 to ptr
  %gml4094 = load i64, ptr %gmp4093, align 1, !alias.scope !4, !noalias !3
  %wp4095 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4094, ptr %wp4095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffb4 word 0xb94007e4
  %r4096.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4096 = load i64, ptr %r4096.p, align 8, !alias.scope !3, !noalias !4
  %t4097 = add i64 %r4096, 4
  %gmp4098 = inttoptr i64 %t4097 to ptr
  %gml4099 = load i32, ptr %gmp4098, align 1, !alias.scope !4, !noalias !3
  %c4100 = zext i32 %gml4099 to i64
  %wp4101 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4100, ptr %wp4101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffb8 word 0x17fffd9d
  br label %L_80015f62c
L_80015ffe4_ft:
  ; @pc 0x80015ffe4 word 0xf001bf68
  %wp4135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffe8 word 0xf001bf69
  %wp4136 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015ffec word 0xf9430508
  %r4137.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4137 = load i64, ptr %r4137.p, align 8, !alias.scope !3, !noalias !4
  %t4138 = add i64 %r4137, 1544
  %gmp4139 = inttoptr i64 %t4138 to ptr
  %gml4140 = load i64, ptr %gmp4139, align 1, !alias.scope !4, !noalias !3
  %wp4141 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4140, ptr %wp4141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fff0 word 0xf942fd29
  %r4142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4142 = load i64, ptr %r4142.p, align 8, !alias.scope !3, !noalias !4
  %t4143 = add i64 %r4142, 1528
  %gmp4144 = inttoptr i64 %t4143 to ptr
  %gml4145 = load i64, ptr %gmp4144, align 1, !alias.scope !4, !noalias !3
  %wp4146 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4145, ptr %wp4146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fff4 word 0xf001bf60
  %wp4147 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fff8 word 0x91004108
  %r4148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4148 = load i64, ptr %r4148.p, align 8, !alias.scope !3, !noalias !4
  %t4149 = add i64 %r4148, 16
  %wp4150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4149, ptr %wp4150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80015fffc word 0xf9000128
  %r4151.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4151 = load i64, ptr %r4151.p, align 8, !alias.scope !3, !noalias !4
  %r4152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4152 = load i64, ptr %r4152.p, align 8, !alias.scope !3, !noalias !4
  %gmp4153 = inttoptr i64 %r4151 to ptr
  store i64 %r4152, ptr %gmp4153, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160000 word 0xf9430000
  %r4154.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4154 = load i64, ptr %r4154.p, align 8, !alias.scope !3, !noalias !4
  %t4155 = add i64 %r4154, 1536
  %gmp4156 = inttoptr i64 %t4155 to ptr
  %gml4157 = load i64, ptr %gmp4156, align 1, !alias.scope !4, !noalias !3
  %wp4158 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4157, ptr %wp4158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160004 word 0x94a90e6b
  %wp4159 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180168, ptr %wp4159, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160008 word 0x9001c0c9
  %wp4160 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016000c word 0xaa1803e3
  %r4161.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4161 = load i64, ptr %r4161.p, align 8, !alias.scope !3, !noalias !4
  %t4162 = or i64 0, %r4161
  %wp4163 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4162, ptr %wp4163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160010 word 0xf941b529
  %r4164.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4164 = load i64, ptr %r4164.p, align 8, !alias.scope !3, !noalias !4
  %t4165 = add i64 %r4164, 872
  %gmp4166 = inttoptr i64 %t4165 to ptr
  %gml4167 = load i64, ptr %gmp4166, align 1, !alias.scope !4, !noalias !3
  %wp4168 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4167, ptr %wp4168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160014 word 0xb94007e4
  %r4169.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4169 = load i64, ptr %r4169.p, align 8, !alias.scope !3, !noalias !4
  %t4170 = add i64 %r4169, 4
  %gmp4171 = inttoptr i64 %t4170 to ptr
  %gml4172 = load i32, ptr %gmp4171, align 1, !alias.scope !4, !noalias !3
  %c4173 = zext i32 %gml4172 to i64
  %wp4174 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4173, ptr %wp4174, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160018 word 0x17fffd89
  br label %L_80015f63c
L_800160044_ft:
  ; @pc 0x800160044 word 0xd001bf68
  %wp4208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160048 word 0x9001c0c9
  %wp4209 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016004c word 0xf942f908
  %r4210.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4210 = load i64, ptr %r4210.p, align 8, !alias.scope !3, !noalias !4
  %t4211 = add i64 %r4210, 1520
  %gmp4212 = inttoptr i64 %t4211 to ptr
  %gml4213 = load i64, ptr %gmp4212, align 1, !alias.scope !4, !noalias !3
  %wp4214 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4213, ptr %wp4214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160050 word 0xf941b929
  %r4215.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4215 = load i64, ptr %r4215.p, align 8, !alias.scope !3, !noalias !4
  %t4216 = add i64 %r4215, 880
  %gmp4217 = inttoptr i64 %t4216 to ptr
  %gml4218 = load i64, ptr %gmp4217, align 1, !alias.scope !4, !noalias !3
  %wp4219 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4218, ptr %wp4219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160054 word 0x9001c0c0
  %wp4220 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160058 word 0x91004108
  %r4221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4221 = load i64, ptr %r4221.p, align 8, !alias.scope !3, !noalias !4
  %t4222 = add i64 %r4221, 16
  %wp4223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4222, ptr %wp4223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016005c word 0xf9000128
  %r4224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4224 = load i64, ptr %r4224.p, align 8, !alias.scope !3, !noalias !4
  %r4225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4225 = load i64, ptr %r4225.p, align 8, !alias.scope !3, !noalias !4
  %gmp4226 = inttoptr i64 %r4224 to ptr
  store i64 %r4225, ptr %gmp4226, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160060 word 0xf941bc00
  %r4227.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4227 = load i64, ptr %r4227.p, align 8, !alias.scope !3, !noalias !4
  %t4228 = add i64 %r4227, 888
  %gmp4229 = inttoptr i64 %t4228 to ptr
  %gml4230 = load i64, ptr %gmp4229, align 1, !alias.scope !4, !noalias !3
  %wp4231 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4230, ptr %wp4231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160064 word 0x94a90e53
  %wp4232 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180264, ptr %wp4232, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160068 word 0x9001c0c9
  %wp4233 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016006c word 0xaa1803e3
  %r4234.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4234 = load i64, ptr %r4234.p, align 8, !alias.scope !3, !noalias !4
  %t4235 = or i64 0, %r4234
  %wp4236 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4235, ptr %wp4236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160070 word 0xf941b529
  %r4237.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4237 = load i64, ptr %r4237.p, align 8, !alias.scope !3, !noalias !4
  %t4238 = add i64 %r4237, 872
  %gmp4239 = inttoptr i64 %t4238 to ptr
  %gml4240 = load i64, ptr %gmp4239, align 1, !alias.scope !4, !noalias !3
  %wp4241 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4240, ptr %wp4241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160074 word 0xb94007e4
  %r4242.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4242 = load i64, ptr %r4242.p, align 8, !alias.scope !3, !noalias !4
  %t4243 = add i64 %r4242, 4
  %gmp4244 = inttoptr i64 %t4243 to ptr
  %gml4245 = load i32, ptr %gmp4244, align 1, !alias.scope !4, !noalias !3
  %c4246 = zext i32 %gml4245 to i64
  %wp4247 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4246, ptr %wp4247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160078 word 0x17fffde7
  br label %L_80015f814
L_8001600a4_ft:
  ; @pc 0x8001600a4 word 0xd001bf68
  %wp4281 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600a8 word 0xd001bf69
  %wp4282 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600ac word 0xf9430508
  %r4283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4283 = load i64, ptr %r4283.p, align 8, !alias.scope !3, !noalias !4
  %t4284 = add i64 %r4283, 1544
  %gmp4285 = inttoptr i64 %t4284 to ptr
  %gml4286 = load i64, ptr %gmp4285, align 1, !alias.scope !4, !noalias !3
  %wp4287 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4286, ptr %wp4287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600b0 word 0xf942fd29
  %r4288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4288 = load i64, ptr %r4288.p, align 8, !alias.scope !3, !noalias !4
  %t4289 = add i64 %r4288, 1528
  %gmp4290 = inttoptr i64 %t4289 to ptr
  %gml4291 = load i64, ptr %gmp4290, align 1, !alias.scope !4, !noalias !3
  %wp4292 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4291, ptr %wp4292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600b4 word 0xd001bf60
  %wp4293 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600b8 word 0x91004108
  %r4294.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4294 = load i64, ptr %r4294.p, align 8, !alias.scope !3, !noalias !4
  %t4295 = add i64 %r4294, 16
  %wp4296 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4295, ptr %wp4296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600bc word 0xf9000128
  %r4297.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4297 = load i64, ptr %r4297.p, align 8, !alias.scope !3, !noalias !4
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %gmp4299 = inttoptr i64 %r4297 to ptr
  store i64 %r4298, ptr %gmp4299, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001600c0 word 0xf9430000
  %r4300.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4300 = load i64, ptr %r4300.p, align 8, !alias.scope !3, !noalias !4
  %t4301 = add i64 %r4300, 1536
  %gmp4302 = inttoptr i64 %t4301 to ptr
  %gml4303 = load i64, ptr %gmp4302, align 1, !alias.scope !4, !noalias !3
  %wp4304 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4303, ptr %wp4304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600c4 word 0x94a90e3b
  %wp4305 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180360, ptr %wp4305, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001600c8 word 0x9001c0c9
  %wp4306 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600cc word 0xaa1803e3
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %t4308 = or i64 0, %r4307
  %wp4309 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4308, ptr %wp4309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600d0 word 0xf941b529
  %r4310.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4310 = load i64, ptr %r4310.p, align 8, !alias.scope !3, !noalias !4
  %t4311 = add i64 %r4310, 872
  %gmp4312 = inttoptr i64 %t4311 to ptr
  %gml4313 = load i64, ptr %gmp4312, align 1, !alias.scope !4, !noalias !3
  %wp4314 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4313, ptr %wp4314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600d4 word 0xb94007e4
  %r4315.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4315 = load i64, ptr %r4315.p, align 8, !alias.scope !3, !noalias !4
  %t4316 = add i64 %r4315, 4
  %gmp4317 = inttoptr i64 %t4316 to ptr
  %gml4318 = load i32, ptr %gmp4317, align 1, !alias.scope !4, !noalias !3
  %c4319 = zext i32 %gml4318 to i64
  %wp4320 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4319, ptr %wp4320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001600d8 word 0x17fffdd3
  br label %L_80015f824
L_800160104_ft:
  ; @pc 0x800160104 word 0xd001bf68
  %wp4354 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160108 word 0x9001c0c9
  %wp4355 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016010c word 0xf942f908
  %r4356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4356 = load i64, ptr %r4356.p, align 8, !alias.scope !3, !noalias !4
  %t4357 = add i64 %r4356, 1520
  %gmp4358 = inttoptr i64 %t4357 to ptr
  %gml4359 = load i64, ptr %gmp4358, align 1, !alias.scope !4, !noalias !3
  %wp4360 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4359, ptr %wp4360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160110 word 0xf941b929
  %r4361.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4361 = load i64, ptr %r4361.p, align 8, !alias.scope !3, !noalias !4
  %t4362 = add i64 %r4361, 880
  %gmp4363 = inttoptr i64 %t4362 to ptr
  %gml4364 = load i64, ptr %gmp4363, align 1, !alias.scope !4, !noalias !3
  %wp4365 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4364, ptr %wp4365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160114 word 0x9001c0c0
  %wp4366 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160118 word 0x91004108
  %r4367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4367 = load i64, ptr %r4367.p, align 8, !alias.scope !3, !noalias !4
  %t4368 = add i64 %r4367, 16
  %wp4369 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4368, ptr %wp4369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016011c word 0xf9000128
  %r4370.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4370 = load i64, ptr %r4370.p, align 8, !alias.scope !3, !noalias !4
  %r4371.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4371 = load i64, ptr %r4371.p, align 8, !alias.scope !3, !noalias !4
  %gmp4372 = inttoptr i64 %r4370 to ptr
  store i64 %r4371, ptr %gmp4372, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160120 word 0xf941bc00
  %r4373.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4373 = load i64, ptr %r4373.p, align 8, !alias.scope !3, !noalias !4
  %t4374 = add i64 %r4373, 888
  %gmp4375 = inttoptr i64 %t4374 to ptr
  %gml4376 = load i64, ptr %gmp4375, align 1, !alias.scope !4, !noalias !3
  %wp4377 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4376, ptr %wp4377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160124 word 0x94a90e23
  %wp4378 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180456, ptr %wp4378, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160128 word 0x9001c0c9
  %wp4379 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016012c word 0xaa1803e3
  %r4380.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4380 = load i64, ptr %r4380.p, align 8, !alias.scope !3, !noalias !4
  %t4381 = or i64 0, %r4380
  %wp4382 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4381, ptr %wp4382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160130 word 0xf941b529
  %r4383.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4383 = load i64, ptr %r4383.p, align 8, !alias.scope !3, !noalias !4
  %t4384 = add i64 %r4383, 872
  %gmp4385 = inttoptr i64 %t4384 to ptr
  %gml4386 = load i64, ptr %gmp4385, align 1, !alias.scope !4, !noalias !3
  %wp4387 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4386, ptr %wp4387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160134 word 0xb94007e4
  %r4388.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4388 = load i64, ptr %r4388.p, align 8, !alias.scope !3, !noalias !4
  %t4389 = add i64 %r4388, 4
  %gmp4390 = inttoptr i64 %t4389 to ptr
  %gml4391 = load i32, ptr %gmp4390, align 1, !alias.scope !4, !noalias !3
  %c4392 = zext i32 %gml4391 to i64
  %wp4393 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4392, ptr %wp4393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160138 word 0x17fffd7a
  br label %L_80015f720
L_800160164_ft:
  ; @pc 0x800160164 word 0xd001bf68
  %wp4427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160168 word 0xd001bf69
  %wp4428 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016016c word 0xf9430508
  %r4429.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4429 = load i64, ptr %r4429.p, align 8, !alias.scope !3, !noalias !4
  %t4430 = add i64 %r4429, 1544
  %gmp4431 = inttoptr i64 %t4430 to ptr
  %gml4432 = load i64, ptr %gmp4431, align 1, !alias.scope !4, !noalias !3
  %wp4433 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4432, ptr %wp4433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160170 word 0xf942fd29
  %r4434.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4434 = load i64, ptr %r4434.p, align 8, !alias.scope !3, !noalias !4
  %t4435 = add i64 %r4434, 1528
  %gmp4436 = inttoptr i64 %t4435 to ptr
  %gml4437 = load i64, ptr %gmp4436, align 1, !alias.scope !4, !noalias !3
  %wp4438 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4437, ptr %wp4438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160174 word 0xd001bf60
  %wp4439 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160178 word 0x91004108
  %r4440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4440 = load i64, ptr %r4440.p, align 8, !alias.scope !3, !noalias !4
  %t4441 = add i64 %r4440, 16
  %wp4442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4441, ptr %wp4442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016017c word 0xf9000128
  %r4443.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4443 = load i64, ptr %r4443.p, align 8, !alias.scope !3, !noalias !4
  %r4444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4444 = load i64, ptr %r4444.p, align 8, !alias.scope !3, !noalias !4
  %gmp4445 = inttoptr i64 %r4443 to ptr
  store i64 %r4444, ptr %gmp4445, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160180 word 0xf9430000
  %r4446.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4446 = load i64, ptr %r4446.p, align 8, !alias.scope !3, !noalias !4
  %t4447 = add i64 %r4446, 1536
  %gmp4448 = inttoptr i64 %t4447 to ptr
  %gml4449 = load i64, ptr %gmp4448, align 1, !alias.scope !4, !noalias !3
  %wp4450 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4449, ptr %wp4450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160184 word 0x94a90e0b
  %wp4451 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180552, ptr %wp4451, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160188 word 0x9001c0c9
  %wp4452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016018c word 0xaa1803e3
  %r4453.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4453 = load i64, ptr %r4453.p, align 8, !alias.scope !3, !noalias !4
  %t4454 = or i64 0, %r4453
  %wp4455 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4454, ptr %wp4455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160190 word 0xf941b529
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %t4457 = add i64 %r4456, 872
  %gmp4458 = inttoptr i64 %t4457 to ptr
  %gml4459 = load i64, ptr %gmp4458, align 1, !alias.scope !4, !noalias !3
  %wp4460 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4459, ptr %wp4460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160194 word 0xb94007e4
  %r4461.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4461 = load i64, ptr %r4461.p, align 8, !alias.scope !3, !noalias !4
  %t4462 = add i64 %r4461, 4
  %gmp4463 = inttoptr i64 %t4462 to ptr
  %gml4464 = load i32, ptr %gmp4463, align 1, !alias.scope !4, !noalias !3
  %c4465 = zext i32 %gml4464 to i64
  %wp4466 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4465, ptr %wp4466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160198 word 0x17fffd66
  br label %L_80015f730
L_8001601bc_ft:
  ; @pc 0x8001601bc word 0xd001bf68
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601c0 word 0x9001c0c9
  %wp4494 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601c4 word 0xf942f908
  %r4495.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4495 = load i64, ptr %r4495.p, align 8, !alias.scope !3, !noalias !4
  %t4496 = add i64 %r4495, 1520
  %gmp4497 = inttoptr i64 %t4496 to ptr
  %gml4498 = load i64, ptr %gmp4497, align 1, !alias.scope !4, !noalias !3
  %wp4499 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4498, ptr %wp4499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601c8 word 0xf941b929
  %r4500.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4500 = load i64, ptr %r4500.p, align 8, !alias.scope !3, !noalias !4
  %t4501 = add i64 %r4500, 880
  %gmp4502 = inttoptr i64 %t4501 to ptr
  %gml4503 = load i64, ptr %gmp4502, align 1, !alias.scope !4, !noalias !3
  %wp4504 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4503, ptr %wp4504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601cc word 0x9001c0c0
  %wp4505 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601d0 word 0x91004108
  %r4506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4506 = load i64, ptr %r4506.p, align 8, !alias.scope !3, !noalias !4
  %t4507 = add i64 %r4506, 16
  %wp4508 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4507, ptr %wp4508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601d4 word 0xf9000128
  %r4509.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4509 = load i64, ptr %r4509.p, align 8, !alias.scope !3, !noalias !4
  %r4510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4510 = load i64, ptr %r4510.p, align 8, !alias.scope !3, !noalias !4
  %gmp4511 = inttoptr i64 %r4509 to ptr
  store i64 %r4510, ptr %gmp4511, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001601d8 word 0xf941bc00
  %r4512.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4512 = load i64, ptr %r4512.p, align 8, !alias.scope !3, !noalias !4
  %t4513 = add i64 %r4512, 888
  %gmp4514 = inttoptr i64 %t4513 to ptr
  %gml4515 = load i64, ptr %gmp4514, align 1, !alias.scope !4, !noalias !3
  %wp4516 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4515, ptr %wp4516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601dc word 0x94a90df5
  %wp4517 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180640, ptr %wp4517, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001601e0 word 0xaa1803e3
  %r4518.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4518 = load i64, ptr %r4518.p, align 8, !alias.scope !3, !noalias !4
  %t4519 = or i64 0, %r4518
  %wp4520 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4519, ptr %wp4520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601e4 word 0x2a1703e4
  %r4521.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4521 = load i64, ptr %r4521.p, align 8, !alias.scope !3, !noalias !4
  %c4522 = trunc i64 %r4521 to i32
  %t4523 = or i32 0, %c4522
  %c4524 = zext i32 %t4523 to i64
  %wp4525 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4524, ptr %wp4525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001601e8 word 0x17fffdc8
  br label %L_80015f908
L_80016020c_ft:
  ; @pc 0x80016020c word 0xd001bf68
  %wp4552 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160210 word 0xd001bf69
  %wp4553 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160214 word 0xf9430508
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %t4555 = add i64 %r4554, 1544
  %gmp4556 = inttoptr i64 %t4555 to ptr
  %gml4557 = load i64, ptr %gmp4556, align 1, !alias.scope !4, !noalias !3
  %wp4558 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4557, ptr %wp4558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160218 word 0xf942fd29
  %r4559.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4559 = load i64, ptr %r4559.p, align 8, !alias.scope !3, !noalias !4
  %t4560 = add i64 %r4559, 1528
  %gmp4561 = inttoptr i64 %t4560 to ptr
  %gml4562 = load i64, ptr %gmp4561, align 1, !alias.scope !4, !noalias !3
  %wp4563 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4562, ptr %wp4563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016021c word 0xd001bf60
  %wp4564 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160220 word 0x91004108
  %r4565.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4565 = load i64, ptr %r4565.p, align 8, !alias.scope !3, !noalias !4
  %t4566 = add i64 %r4565, 16
  %wp4567 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4566, ptr %wp4567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160224 word 0xf9000128
  %r4568.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4568 = load i64, ptr %r4568.p, align 8, !alias.scope !3, !noalias !4
  %r4569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4569 = load i64, ptr %r4569.p, align 8, !alias.scope !3, !noalias !4
  %gmp4570 = inttoptr i64 %r4568 to ptr
  store i64 %r4569, ptr %gmp4570, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160228 word 0xf9430000
  %r4571.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4571 = load i64, ptr %r4571.p, align 8, !alias.scope !3, !noalias !4
  %t4572 = add i64 %r4571, 1536
  %gmp4573 = inttoptr i64 %t4572 to ptr
  %gml4574 = load i64, ptr %gmp4573, align 1, !alias.scope !4, !noalias !3
  %wp4575 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4574, ptr %wp4575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016022c word 0x94a90de1
  %wp4576 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180720, ptr %wp4576, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160230 word 0xaa1803e3
  %r4577.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4577 = load i64, ptr %r4577.p, align 8, !alias.scope !3, !noalias !4
  %t4578 = or i64 0, %r4577
  %wp4579 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4578, ptr %wp4579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160234 word 0x2a1703e4
  %r4580.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4580 = load i64, ptr %r4580.p, align 8, !alias.scope !3, !noalias !4
  %c4581 = trunc i64 %r4580 to i32
  %t4582 = or i32 0, %c4581
  %c4583 = zext i32 %t4582 to i64
  %wp4584 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4583, ptr %wp4584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160238 word 0x17fffdb8
  br label %L_80015f918
L_80016025c_ft:
  ; @pc 0x80016025c word 0xf001bf48
  %wp4611 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160260 word 0xd001bf69
  %wp4612 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160264 word 0xf9440508
  %r4613.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4613 = load i64, ptr %r4613.p, align 8, !alias.scope !3, !noalias !4
  %t4614 = add i64 %r4613, 2056
  %gmp4615 = inttoptr i64 %t4614 to ptr
  %gml4616 = load i64, ptr %gmp4615, align 1, !alias.scope !4, !noalias !3
  %wp4617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4616, ptr %wp4617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160268 word 0xf9430929
  %r4618.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4618 = load i64, ptr %r4618.p, align 8, !alias.scope !3, !noalias !4
  %t4619 = add i64 %r4618, 1552
  %gmp4620 = inttoptr i64 %t4619 to ptr
  %gml4621 = load i64, ptr %gmp4620, align 1, !alias.scope !4, !noalias !3
  %wp4622 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4621, ptr %wp4622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016026c word 0xd001bf60
  %wp4623 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160270 word 0x91004108
  %r4624.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4624 = load i64, ptr %r4624.p, align 8, !alias.scope !3, !noalias !4
  %t4625 = add i64 %r4624, 16
  %wp4626 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4625, ptr %wp4626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160274 word 0xf9000128
  %r4627.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4627 = load i64, ptr %r4627.p, align 8, !alias.scope !3, !noalias !4
  %r4628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4628 = load i64, ptr %r4628.p, align 8, !alias.scope !3, !noalias !4
  %gmp4629 = inttoptr i64 %r4627 to ptr
  store i64 %r4628, ptr %gmp4629, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800160278 word 0xf9430c00
  %r4630.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4630 = load i64, ptr %r4630.p, align 8, !alias.scope !3, !noalias !4
  %t4631 = add i64 %r4630, 1560
  %gmp4632 = inttoptr i64 %t4631 to ptr
  %gml4633 = load i64, ptr %gmp4632, align 1, !alias.scope !4, !noalias !3
  %wp4634 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4633, ptr %wp4634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016027c word 0x94a90dcd
  %wp4635 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361180800, ptr %wp4635, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x800160280 word 0xaa1803e3
  %r4636.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4636 = load i64, ptr %r4636.p, align 8, !alias.scope !3, !noalias !4
  %t4637 = or i64 0, %r4636
  %wp4638 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4637, ptr %wp4638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160284 word 0x2a1703e4
  %r4639.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4639 = load i64, ptr %r4639.p, align 8, !alias.scope !3, !noalias !4
  %c4640 = trunc i64 %r4639 to i32
  %t4641 = or i32 0, %c4640
  %c4642 = zext i32 %t4641 to i64
  %wp4643 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4642, ptr %wp4643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160288 word 0x17fffda8
  br label %L_80015f928
L_800160308_ft:
  ; @pc 0x800160308 word 0xf9400408
  %r4824.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4824 = load i64, ptr %r4824.p, align 8, !alias.scope !3, !noalias !4
  %t4825 = add i64 %r4824, 8
  %gmp4826 = inttoptr i64 %t4825 to ptr
  %gml4827 = load i64, ptr %gmp4826, align 1, !alias.scope !4, !noalias !3
  %wp4828 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4827, ptr %wp4828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016030c word 0x2a1b03f1
  %r4829.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4829 = load i64, ptr %r4829.p, align 8, !alias.scope !3, !noalias !4
  %c4830 = trunc i64 %r4829 to i32
  %t4831 = or i32 0, %c4830
  %c4832 = zext i32 %t4831 to i64
  %wp4833 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c4832, ptr %wp4833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160310 word 0x8b090d09
  %r4834.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4834 = load i64, ptr %r4834.p, align 8, !alias.scope !3, !noalias !4
  %r4835.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4835 = load i64, ptr %r4835.p, align 8, !alias.scope !3, !noalias !4
  %t4836 = shl i64 %r4835, 3
  %t4837 = add i64 %r4834, %t4836
  %wp4838 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4837, ptr %wp4838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160314 word 0xf94002ca
  %r4839.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4839 = load i64, ptr %r4839.p, align 8, !alias.scope !3, !noalias !4
  %gmp4840 = inttoptr i64 %r4839 to ptr
  %gml4841 = load i64, ptr %gmp4840, align 1, !alias.scope !4, !noalias !3
  %wp4842 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4841, ptr %wp4842, align 8, !alias.scope !3, !noalias !4
  br label %L_800160318
L_800160328_ft:
  ; @pc 0x800160328 word 0xb940316c
  %r4879.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4879 = load i64, ptr %r4879.p, align 8, !alias.scope !3, !noalias !4
  %t4880 = add i64 %r4879, 48
  %gmp4881 = inttoptr i64 %t4880 to ptr
  %gml4882 = load i32, ptr %gmp4881, align 1, !alias.scope !4, !noalias !3
  %c4883 = zext i32 %gml4882 to i64
  %wp4884 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4883, ptr %wp4884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016032c word 0x37f803ac
  %r4885.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4885 = load i64, ptr %r4885.p, align 8, !alias.scope !3, !noalias !4
  %t4886 = and i64 %r4885, 2147483648
  %cmp4887 = icmp ne i64 %t4886, 0
  br i1 %cmp4887, label %L_8001603a0, label %L_800160330_ft
L_800160330_ft:
  ; @pc 0x800160330 word 0xf940016c
  %r4888.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4888 = load i64, ptr %r4888.p, align 8, !alias.scope !3, !noalias !4
  %gmp4889 = inttoptr i64 %r4888 to ptr
  %gml4890 = load i64, ptr %gmp4889, align 1, !alias.scope !4, !noalias !3
  %wp4891 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4890, ptr %wp4891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160334 word 0xeb0a019f
  %r4892.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4892 = load i64, ptr %r4892.p, align 8, !alias.scope !3, !noalias !4
  %r4893.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4893 = load i64, ptr %r4893.p, align 8, !alias.scope !3, !noalias !4
  %t4894 = sub i64 %r4892, %r4893
  %fn4895 = icmp slt i64 %t4894, 0
  %fz4896 = icmp eq i64 %t4894, 0
  %fc4897 = icmp uge i64 %r4892, %r4893
  %fx14898 = xor i64 %r4892, %r4893
  %fx24899 = xor i64 %r4892, %t4894
  %fva4900 = and i64 %fx14898, %fx24899
  %fv4901 = icmp slt i64 %fva4900, 0
  %nz4902 = zext i1 %fn4895 to i64
  %zz4903 = zext i1 %fz4896 to i64
  %cz4904 = zext i1 %fc4897 to i64
  %vz4905 = zext i1 %fv4901 to i64
  %ns4906 = shl i64 %nz4902, 31
  %zs4907 = shl i64 %zz4903, 30
  %cs4908 = shl i64 %cz4904, 29
  %vs4909 = shl i64 %vz4905, 28
  %nzor4910 = or i64 %ns4906, %zs4907
  %cvor4911 = or i64 %cs4908, %vs4909
  %nzcv4912 = or i64 %nzor4910, %cvor4911
  %wp4913 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4912, ptr %wp4913, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160338 word 0x54000201
  %r4914.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4914 = load i64, ptr %r4914.p, align 8, !alias.scope !3, !noalias !4
  %fsh4916 = lshr i64 %r4914, 30
  %ftr4917 = trunc i64 %fsh4916 to i1
  %cond4915 = xor i1 %ftr4917, true
  br i1 %cond4915, label %L_800160378, label %L_80016033c
L_800160340_ft:
  ; @pc 0x800160340 word 0xf9400268
  %r4921.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4921 = load i64, ptr %r4921.p, align 8, !alias.scope !3, !noalias !4
  %gmp4922 = inttoptr i64 %r4921 to ptr
  %gml4923 = load i64, ptr %gmp4922, align 1, !alias.scope !4, !noalias !3
  %wp4924 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4923, ptr %wp4924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800160344 word 0xf9000568
  %r4925.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4925 = load i64, ptr %r4925.p, align 8, !alias.scope !3, !noalias !4
  %t4926 = add i64 %r4925, 8
  %r4927.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4927 = load i64, ptr %r4927.p, align 8, !alias.scope !3, !noalias !4
  %gmp4928 = inttoptr i64 %t4926 to ptr
  store i64 %r4927, ptr %gmp4928, align 1, !alias.scope !4, !noalias !3
  br label %L_800160348
L_800160394_ft:
  ; @pc 0x800160394 word 0x34fffd4f
  %r5035.p = getelementptr inbounds i8, ptr %c, i64 120
  %r5035 = load i64, ptr %r5035.p, align 8, !alias.scope !3, !noalias !4
  %c5036 = trunc i64 %r5035 to i32
  %cmp5037 = icmp eq i32 %c5036, 0
  br i1 %cmp5037, label %L_80016033c, label %L_800160398_ft
L_800160398_ft:
  ; @pc 0x800160398 word 0xf10005ad
  %r5038.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5038 = load i64, ptr %r5038.p, align 8, !alias.scope !3, !noalias !4
  %t5039 = sub i64 %r5038, 1
  %fn5040 = icmp slt i64 %t5039, 0
  %fz5041 = icmp eq i64 %t5039, 0
  %fc5042 = icmp uge i64 %r5038, 1
  %fx15043 = xor i64 %r5038, 1
  %fx25044 = xor i64 %r5038, %t5039
  %fva5045 = and i64 %fx15043, %fx25044
  %fv5046 = icmp slt i64 %fva5045, 0
  %nz5047 = zext i1 %fn5040 to i64
  %zz5048 = zext i1 %fz5041 to i64
  %cz5049 = zext i1 %fc5042 to i64
  %vz5050 = zext i1 %fv5046 to i64
  %ns5051 = shl i64 %nz5047, 31
  %zs5052 = shl i64 %zz5048, 30
  %cs5053 = shl i64 %cz5049, 29
  %vs5054 = shl i64 %vz5050, 28
  %nzor5055 = or i64 %ns5051, %zs5052
  %cvor5056 = or i64 %cs5053, %vs5054
  %nzcv5057 = or i64 %nzor5055, %cvor5056
  %wp5058 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5057, ptr %wp5058, align 8, !alias.scope !3, !noalias !4
  %wp5059 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t5039, ptr %wp5059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80016039c word 0x54ffff41
  %r5060.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5060 = load i64, ptr %r5060.p, align 8, !alias.scope !3, !noalias !4
  %fsh5062 = lshr i64 %r5060, 30
  %ftr5063 = trunc i64 %fsh5062 to i1
  %cond5061 = xor i1 %ftr5063, true
  br i1 %cond5061, label %L_800160384, label %L_8001603a0
L_8001603ac_ft:
  ; @pc 0x8001603ac word 0x17fffbd9
  br label %L_80015f310
L_80015fa80_jt_def:
  %fp5093 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3001, ptr %fp5093, align 8, !alias.scope !3, !noalias !4
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
