; UltraTears chunk main_107_arenabucket: 1 functions [0x8001a6c10..0x8001a771c)
; ModuleID = 'main_107_arenabucket_raw'
source_filename = "main_107_arenabucket_raw"
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

declare dso_local void @f_80007a838(ptr)
declare dso_local void @f_800099ce0(ptr)
declare dso_local void @f_80017c9c8(ptr)
declare dso_local void @f_80017cbe0(ptr)
declare dso_local void @f_8027a9c88(ptr)
declare dso_local void @f_802ba3ac0(ptr)
declare dso_local void @f_802ba4060(ptr)
declare dso_local void @f_802ba4070(ptr)

define dso_local void @f_8001a6c10(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001a6c10:
  ; @pc 0x8001a6c10 word 0xd10243ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 144
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c14 word 0xa9037bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 48
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c18 word 0xa9046ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 64
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c1c word 0xa90567fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 80
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c20 word 0xa9065ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 96
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c24 word 0xa90757f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 112
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c28 word 0xa9084ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 128
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6c2c word 0x9100c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 48
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c30 word 0xb001bd38
  %wp53 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419814400, ptr %wp53, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c34 word 0x2a0203f4
  %r54.p = getelementptr inbounds i8, ptr %c, i64 16
  %r54 = load i64, ptr %r54.p, align 8, !alias.scope !3, !noalias !4
  %c55 = trunc i64 %r54 to i32
  %t56 = or i32 0, %c55
  %c57 = zext i32 %t56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c38 word 0xf9454318
  %r59.p = getelementptr inbounds i8, ptr %c, i64 192
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = add i64 %r59, 2688
  %gmp61 = inttoptr i64 %t60 to ptr
  %gml62 = load i64, ptr %gmp61, align 1, !alias.scope !4, !noalias !3
  %wp63 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml62, ptr %wp63, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c3c word 0xaa0003f5
  %r64.p = getelementptr inbounds i8, ptr %c, i64 0
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = or i64 0, %r64
  %wp66 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c40 word 0xf9400316
  %r67.p = getelementptr inbounds i8, ptr %c, i64 192
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %gmp68 = inttoptr i64 %r67 to ptr
  %gml69 = load i64, ptr %gmp68, align 1, !alias.scope !4, !noalias !3
  %wp70 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c44 word 0xb4003096
  %r71.p = getelementptr inbounds i8, ptr %c, i64 176
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %cmp72 = icmp eq i64 %r71, 0
  br i1 %cmp72, label %L_8001a7254, label %L_8001a6c48_ft
L_8001a6c50:
  ; @pc 0x8001a6c50 word 0xf9400268
  %r78.p = getelementptr inbounds i8, ptr %c, i64 152
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %gmp79 = inttoptr i64 %r78 to ptr
  %gml80 = load i64, ptr %gmp79, align 1, !alias.scope !4, !noalias !3
  %wp81 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml80, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c54 word 0xf9401903
  %r82.p = getelementptr inbounds i8, ptr %c, i64 64
  %r82 = load i64, ptr %r82.p, align 8, !alias.scope !3, !noalias !4
  %t83 = add i64 %r82, 48
  %gmp84 = inttoptr i64 %t83 to ptr
  %gml85 = load i64, ptr %gmp84, align 1, !alias.scope !4, !noalias !3
  %wp86 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c58 word 0x90002328
  %wp87 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34366070784, ptr %wp87, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c5c word 0x91374108
  %r88.p = getelementptr inbounds i8, ptr %c, i64 64
  %r88 = load i64, ptr %r88.p, align 8, !alias.scope !3, !noalias !4
  %t89 = add i64 %r88, 3536
  %wp90 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c60 word 0xeb08007f
  %r91.p = getelementptr inbounds i8, ptr %c, i64 24
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %r92.p = getelementptr inbounds i8, ptr %c, i64 64
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
  ; @pc 0x8001a6c64 word 0x54000521
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_8001a6d08, label %L_8001a6c68_ft
L_8001a6c78:
  ; @pc 0x8001a6c78 word 0xf10022bf
  %r131.p = getelementptr inbounds i8, ptr %c, i64 168
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %t132 = sub i64 %r131, 8
  %fn133 = icmp slt i64 %t132, 0
  %fz134 = icmp eq i64 %t132, 0
  %fc135 = icmp uge i64 %r131, 8
  %fx1136 = xor i64 %r131, 8
  %fx2137 = xor i64 %r131, %t132
  %fva138 = and i64 %fx1136, %fx2137
  %fv139 = icmp slt i64 %fva138, 0
  %nz140 = zext i1 %fn133 to i64
  %zz141 = zext i1 %fz134 to i64
  %cz142 = zext i1 %fc135 to i64
  %vz143 = zext i1 %fv139 to i64
  %ns144 = shl i64 %nz140, 31
  %zs145 = shl i64 %zz141, 30
  %cs146 = shl i64 %cz142, 29
  %vs147 = shl i64 %vz143, 28
  %nzor148 = or i64 %ns144, %zs145
  %cvor149 = or i64 %cs146, %vs147
  %nzcv150 = or i64 %nzor148, %cvor149
  %wp151 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv150, ptr %wp151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c7c word 0x52800108
  %c152 = zext i32 8 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c80 word 0xf9400309
  %r154.p = getelementptr inbounds i8, ptr %c, i64 192
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %gmp155 = inttoptr i64 %r154 to ptr
  %gml156 = load i64, ptr %gmp155, align 1, !alias.scope !4, !noalias !3
  %wp157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml156, ptr %wp157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c84 word 0x9a8882a8
  %r158.p = getelementptr inbounds i8, ptr %c, i64 168
  %r158 = load i64, ptr %r158.p, align 8, !alias.scope !3, !noalias !4
  %r159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r159 = load i64, ptr %r159.p, align 8, !alias.scope !3, !noalias !4
  %r160.p = getelementptr inbounds i8, ptr %c, i64 272
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %fsh162 = lshr i64 %r160, 29
  %ftr163 = trunc i64 %fsh162 to i1
  %fsh164 = lshr i64 %r160, 30
  %ftr165 = trunc i64 %fsh164 to i1
  %fnz166 = xor i1 %ftr165, true
  %cond161 = and i1 %ftr163, %fnz166
  %sel167 = select i1 %cond161, i64 %r158, i64 %r159
  %wp168 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel167, ptr %wp168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c88 word 0x7100029f
  %r169.p = getelementptr inbounds i8, ptr %c, i64 160
  %r169 = load i64, ptr %r169.p, align 8, !alias.scope !3, !noalias !4
  %c170 = trunc i64 %r169 to i32
  %t171 = sub i32 %c170, 0
  %fn172 = icmp slt i32 %t171, 0
  %fz173 = icmp eq i32 %t171, 0
  %fc174 = icmp uge i32 %c170, 0
  %fx1175 = xor i32 %c170, 0
  %fx2176 = xor i32 %c170, %t171
  %fva177 = and i32 %fx1175, %fx2176
  %fv178 = icmp slt i32 %fva177, 0
  %nz179 = zext i1 %fn172 to i64
  %zz180 = zext i1 %fz173 to i64
  %cz181 = zext i1 %fc174 to i64
  %vz182 = zext i1 %fv178 to i64
  %ns183 = shl i64 %nz179, 31
  %zs184 = shl i64 %zz180, 30
  %cs185 = shl i64 %cz181, 29
  %vs186 = shl i64 %vz182, 28
  %nzor187 = or i64 %ns183, %zs184
  %cvor188 = or i64 %cs185, %vs186
  %nzcv189 = or i64 %nzor187, %cvor188
  %wp190 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv189, ptr %wp190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c8c word 0x91001d08
  %r191.p = getelementptr inbounds i8, ptr %c, i64 64
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 7
  %wp193 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c90 word 0x927df119
  %r194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %t195 = and i64 %r194, -8
  %wp196 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t195, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c94 word 0x5a945688
  %r197.p = getelementptr inbounds i8, ptr %c, i64 160
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %c198 = trunc i64 %r197 to i32
  %r199.p = getelementptr inbounds i8, ptr %c, i64 160
  %r199 = load i64, ptr %r199.p, align 8, !alias.scope !3, !noalias !4
  %c200 = trunc i64 %r199 to i32
  %t201 = sub i32 0, %c200
  %r202.p = getelementptr inbounds i8, ptr %c, i64 272
  %r202 = load i64, ptr %r202.p, align 8, !alias.scope !3, !noalias !4
  %fsh204 = lshr i64 %r202, 31
  %ftr205 = trunc i64 %fsh204 to i1
  %cond203 = xor i1 %ftr205, true
  %sel206 = select i1 %cond203, i32 %c198, i32 %t201
  %c207 = zext i32 %sel206 to i64
  %wp208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c207, ptr %wp208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c98 word 0x5100050a
  %r209.p = getelementptr inbounds i8, ptr %c, i64 64
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %c210 = trunc i64 %r209 to i32
  %t211 = sub i32 %c210, 1
  %c212 = zext i32 %t211 to i64
  %wp213 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c212, ptr %wp213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c9c word 0x6a0a011f
  %r214.p = getelementptr inbounds i8, ptr %c, i64 80
  %r214 = load i64, ptr %r214.p, align 8, !alias.scope !3, !noalias !4
  %c215 = trunc i64 %r214 to i32
  %r216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r216 = load i64, ptr %r216.p, align 8, !alias.scope !3, !noalias !4
  %c217 = trunc i64 %r216 to i32
  %t218 = and i32 %c217, %c215
  %fn219 = icmp slt i32 %t218, 0
  %fz220 = icmp eq i32 %t218, 0
  %nz221 = zext i1 %fn219 to i64
  %zz222 = zext i1 %fz220 to i64
  %ns223 = shl i64 %nz221, 31
  %zs224 = shl i64 %zz222, 30
  %nzcv225 = or i64 %ns223, %zs224
  %wp226 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv225, ptr %wp226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ca0 word 0x54002f61
  %r227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r227 = load i64, ptr %r227.p, align 8, !alias.scope !3, !noalias !4
  %fsh229 = lshr i64 %r227, 30
  %ftr230 = trunc i64 %fsh229 to i1
  %cond228 = xor i1 %ftr230, true
  br i1 %cond228, label %L_8001a728c, label %L_8001a6ca4_ft
L_8001a6cdc:
  ; @pc 0x8001a6cdc word 0xb40020b8
  %r332.p = getelementptr inbounds i8, ptr %c, i64 192
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %cmp333 = icmp eq i64 %r332, 0
  br i1 %cmp333, label %L_8001a70f0, label %L_8001a6ce0
L_8001a6ce0:
  ; @pc 0x8001a6ce0 word 0xb5000eb6
  %r334.p = getelementptr inbounds i8, ptr %c, i64 176
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %cmp335 = icmp ne i64 %r334, 0
  br i1 %cmp335, label %L_8001a6eb4, label %L_8001a6ce4
L_8001a6ce4:
  ; @pc 0x8001a6ce4 word 0xaa1803e0
  %r336.p = getelementptr inbounds i8, ptr %c, i64 192
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = or i64 0, %r336
  %wp338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t337, ptr %wp338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ce8 word 0xa9484ff4
  %r339.p = getelementptr inbounds i8, ptr %c, i64 256
  %r339 = load i64, ptr %r339.p, align 8, !alias.scope !3, !noalias !4
  %t340 = add i64 %r339, 128
  %t341 = add i64 %t340, 8
  %gmp342 = inttoptr i64 %t340 to ptr
  %gml343 = load i64, ptr %gmp342, align 1, !alias.scope !4, !noalias !3
  %gmp344 = inttoptr i64 %t341 to ptr
  %gml345 = load i64, ptr %gmp344, align 1, !alias.scope !4, !noalias !3
  %wp346 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml343, ptr %wp346, align 8, !alias.scope !3, !noalias !4
  %wp347 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml345, ptr %wp347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cec word 0xa94757f6
  %r348.p = getelementptr inbounds i8, ptr %c, i64 256
  %r348 = load i64, ptr %r348.p, align 8, !alias.scope !3, !noalias !4
  %t349 = add i64 %r348, 112
  %t350 = add i64 %t349, 8
  %gmp351 = inttoptr i64 %t349 to ptr
  %gml352 = load i64, ptr %gmp351, align 1, !alias.scope !4, !noalias !3
  %gmp353 = inttoptr i64 %t350 to ptr
  %gml354 = load i64, ptr %gmp353, align 1, !alias.scope !4, !noalias !3
  %wp355 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml352, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  %wp356 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml354, ptr %wp356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cf0 word 0xa9465ff8
  %r357.p = getelementptr inbounds i8, ptr %c, i64 256
  %r357 = load i64, ptr %r357.p, align 8, !alias.scope !3, !noalias !4
  %t358 = add i64 %r357, 96
  %t359 = add i64 %t358, 8
  %gmp360 = inttoptr i64 %t358 to ptr
  %gml361 = load i64, ptr %gmp360, align 1, !alias.scope !4, !noalias !3
  %gmp362 = inttoptr i64 %t359 to ptr
  %gml363 = load i64, ptr %gmp362, align 1, !alias.scope !4, !noalias !3
  %wp364 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml361, ptr %wp364, align 8, !alias.scope !3, !noalias !4
  %wp365 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml363, ptr %wp365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cf4 word 0xa94567fa
  %r366.p = getelementptr inbounds i8, ptr %c, i64 256
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %t367 = add i64 %r366, 80
  %t368 = add i64 %t367, 8
  %gmp369 = inttoptr i64 %t367 to ptr
  %gml370 = load i64, ptr %gmp369, align 1, !alias.scope !4, !noalias !3
  %gmp371 = inttoptr i64 %t368 to ptr
  %gml372 = load i64, ptr %gmp371, align 1, !alias.scope !4, !noalias !3
  %wp373 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml370, ptr %wp373, align 8, !alias.scope !3, !noalias !4
  %wp374 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml372, ptr %wp374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cf8 word 0xa9446ffc
  %r375.p = getelementptr inbounds i8, ptr %c, i64 256
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %t376 = add i64 %r375, 64
  %t377 = add i64 %t376, 8
  %gmp378 = inttoptr i64 %t376 to ptr
  %gml379 = load i64, ptr %gmp378, align 1, !alias.scope !4, !noalias !3
  %gmp380 = inttoptr i64 %t377 to ptr
  %gml381 = load i64, ptr %gmp380, align 1, !alias.scope !4, !noalias !3
  %wp382 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml379, ptr %wp382, align 8, !alias.scope !3, !noalias !4
  %wp383 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml381, ptr %wp383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cfc word 0xa9437bfd
  %r384.p = getelementptr inbounds i8, ptr %c, i64 256
  %r384 = load i64, ptr %r384.p, align 8, !alias.scope !3, !noalias !4
  %t385 = add i64 %r384, 48
  %t386 = add i64 %t385, 8
  %gmp387 = inttoptr i64 %t385 to ptr
  %gml388 = load i64, ptr %gmp387, align 1, !alias.scope !4, !noalias !3
  %gmp389 = inttoptr i64 %t386 to ptr
  %gml390 = load i64, ptr %gmp389, align 1, !alias.scope !4, !noalias !3
  %wp391 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml388, ptr %wp391, align 8, !alias.scope !3, !noalias !4
  %wp392 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml390, ptr %wp392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d00 word 0x910243ff
  %r393.p = getelementptr inbounds i8, ptr %c, i64 256
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = add i64 %r393, 144
  %wp395 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t394, ptr %wp395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d04 word 0xd65f03c0
  ret void
L_8001a6d08:
  ; @pc 0x8001a6d08 word 0xd503201f
  ; @pc 0x8001a6d0c word 0x10340a08
  %wp396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361896524, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d10 word 0xeb08007f
  %r397.p = getelementptr inbounds i8, ptr %c, i64 24
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %r398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r398 = load i64, ptr %r398.p, align 8, !alias.scope !3, !noalias !4
  %t399 = sub i64 %r397, %r398
  %fn400 = icmp slt i64 %t399, 0
  %fz401 = icmp eq i64 %t399, 0
  %fc402 = icmp uge i64 %r397, %r398
  %fx1403 = xor i64 %r397, %r398
  %fx2404 = xor i64 %r397, %t399
  %fva405 = and i64 %fx1403, %fx2404
  %fv406 = icmp slt i64 %fva405, 0
  %nz407 = zext i1 %fn400 to i64
  %zz408 = zext i1 %fz401 to i64
  %cz409 = zext i1 %fc402 to i64
  %vz410 = zext i1 %fv406 to i64
  %ns411 = shl i64 %nz407, 31
  %zs412 = shl i64 %zz408, 30
  %cs413 = shl i64 %cz409, 29
  %vs414 = shl i64 %vz410, 28
  %nzor415 = or i64 %ns411, %zs412
  %cvor416 = or i64 %cs413, %vs414
  %nzcv417 = or i64 %nzor415, %cvor416
  %wp418 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv417, ptr %wp418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d14 word 0x54000ec0
  %r419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r419 = load i64, ptr %r419.p, align 8, !alias.scope !3, !noalias !4
  %fsh421 = lshr i64 %r419, 30
  %cond420 = trunc i64 %fsh421 to i1
  br i1 %cond420, label %L_8001a6eec, label %L_8001a6d18_ft
L_8001a6d68:
  ; @pc 0x8001a6d68 word 0xb9408268
  %r586.p = getelementptr inbounds i8, ptr %c, i64 152
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %t587 = add i64 %r586, 128
  %gmp588 = inttoptr i64 %t587 to ptr
  %gml589 = load i32, ptr %gmp588, align 1, !alias.scope !4, !noalias !3
  %c590 = zext i32 %gml589 to i64
  %wp591 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d6c word 0x1b147d08
  %r592.p = getelementptr inbounds i8, ptr %c, i64 160
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %c593 = trunc i64 %r592 to i32
  %r594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r594 = load i64, ptr %r594.p, align 8, !alias.scope !3, !noalias !4
  %c595 = trunc i64 %r594 to i32
  %t596 = mul i32 %c595, %c593
  %t597 = add i32 0, %t596
  %c598 = zext i32 %t597 to i64
  %wp599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c598, ptr %wp599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d70 word 0x37f832a8
  %r600.p = getelementptr inbounds i8, ptr %c, i64 64
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %t601 = and i64 %r600, 2147483648
  %cmp602 = icmp ne i64 %t601, 0
  br i1 %cmp602, label %L_8001a73c4, label %L_8001a6d74_ft
L_8001a6dac:
  ; @pc 0x8001a6dac word 0xf9400d1a
  %r699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = add i64 %r699, 24
  %gmp701 = inttoptr i64 %t700 to ptr
  %gml702 = load i64, ptr %gmp701, align 1, !alias.scope !4, !noalias !3
  %wp703 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml702, ptr %wp703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6db0 word 0xeb17035f
  %r704.p = getelementptr inbounds i8, ptr %c, i64 208
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %r705.p = getelementptr inbounds i8, ptr %c, i64 184
  %r705 = load i64, ptr %r705.p, align 8, !alias.scope !3, !noalias !4
  %t706 = sub i64 %r704, %r705
  %fn707 = icmp slt i64 %t706, 0
  %fz708 = icmp eq i64 %t706, 0
  %fc709 = icmp uge i64 %r704, %r705
  %fx1710 = xor i64 %r704, %r705
  %fx2711 = xor i64 %r704, %t706
  %fva712 = and i64 %fx1710, %fx2711
  %fv713 = icmp slt i64 %fva712, 0
  %nz714 = zext i1 %fn707 to i64
  %zz715 = zext i1 %fz708 to i64
  %cz716 = zext i1 %fc709 to i64
  %vz717 = zext i1 %fv713 to i64
  %ns718 = shl i64 %nz714, 31
  %zs719 = shl i64 %zz715, 30
  %cs720 = shl i64 %cz716, 29
  %vs721 = shl i64 %vz717, 28
  %nzor722 = or i64 %ns718, %zs719
  %cvor723 = or i64 %cs720, %vs721
  %nzcv724 = or i64 %nzor722, %cvor723
  %wp725 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv724, ptr %wp725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6db4 word 0x54001723
  %r726.p = getelementptr inbounds i8, ptr %c, i64 272
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %fsh728 = lshr i64 %r726, 29
  %ftr729 = trunc i64 %fsh728 to i1
  %cond727 = xor i1 %ftr729, true
  br i1 %cond727, label %L_8001a7098, label %L_8001a6db8
L_8001a6db8:
  ; @pc 0x8001a6db8 word 0xf9000d17
  %r730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r730 = load i64, ptr %r730.p, align 8, !alias.scope !3, !noalias !4
  %t731 = add i64 %r730, 24
  %r732.p = getelementptr inbounds i8, ptr %c, i64 184
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %gmp733 = inttoptr i64 %t731 to ptr
  store i64 %r732, ptr %gmp733, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6dbc word 0x79402515
  %r734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %t735 = add i64 %r734, 18
  %gmp736 = inttoptr i64 %t735 to ptr
  %gml737 = load i16, ptr %gmp736, align 1, !alias.scope !4, !noalias !3
  %c738 = zext i16 %gml737 to i64
  %wp739 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c738, ptr %wp739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dc0 word 0xb980c66b
  %r740.p = getelementptr inbounds i8, ptr %c, i64 152
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %t741 = add i64 %r740, 196
  %gmp742 = inttoptr i64 %t741 to ptr
  %gml743 = load i32, ptr %gmp742, align 1, !alias.scope !4, !noalias !3
  %c744 = sext i32 %gml743 to i64
  %wp745 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c744, ptr %wp745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dc4 word 0x8b080169
  %r746.p = getelementptr inbounds i8, ptr %c, i64 88
  %r746 = load i64, ptr %r746.p, align 8, !alias.scope !3, !noalias !4
  %r747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %t748 = add i64 %r746, %r747
  %wp749 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t748, ptr %wp749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dc8 word 0xf940052a
  %r750.p = getelementptr inbounds i8, ptr %c, i64 72
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %t751 = add i64 %r750, 8
  %gmp752 = inttoptr i64 %t751 to ptr
  %gml753 = load i64, ptr %gmp752, align 1, !alias.scope !4, !noalias !3
  %wp754 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml753, ptr %wp754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dcc word 0xeb18015f
  %r755.p = getelementptr inbounds i8, ptr %c, i64 80
  %r755 = load i64, ptr %r755.p, align 8, !alias.scope !3, !noalias !4
  %r756.p = getelementptr inbounds i8, ptr %c, i64 192
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %t757 = sub i64 %r755, %r756
  %fn758 = icmp slt i64 %t757, 0
  %fz759 = icmp eq i64 %t757, 0
  %fc760 = icmp uge i64 %r755, %r756
  %fx1761 = xor i64 %r755, %r756
  %fx2762 = xor i64 %r755, %t757
  %fva763 = and i64 %fx1761, %fx2762
  %fv764 = icmp slt i64 %fva763, 0
  %nz765 = zext i1 %fn758 to i64
  %zz766 = zext i1 %fz759 to i64
  %cz767 = zext i1 %fc760 to i64
  %vz768 = zext i1 %fv764 to i64
  %ns769 = shl i64 %nz765, 31
  %zs770 = shl i64 %zz766, 30
  %cs771 = shl i64 %cz767, 29
  %vs772 = shl i64 %vz768, 28
  %nzor773 = or i64 %ns769, %zs770
  %cvor774 = or i64 %cs771, %vs772
  %nzcv775 = or i64 %nzor773, %cvor774
  %wp776 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv775, ptr %wp776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dd0 word 0x54001701
  %r777.p = getelementptr inbounds i8, ptr %c, i64 272
  %r777 = load i64, ptr %r777.p, align 8, !alias.scope !3, !noalias !4
  %fsh779 = lshr i64 %r777, 30
  %ftr780 = trunc i64 %fsh779 to i1
  %cond778 = xor i1 %ftr780, true
  br i1 %cond778, label %L_8001a70b0, label %L_8001a6dd4_ft
L_8001a6dd8:
  ; @pc 0x8001a6dd8 word 0xf940012b
  %r783.p = getelementptr inbounds i8, ptr %c, i64 72
  %r783 = load i64, ptr %r783.p, align 8, !alias.scope !3, !noalias !4
  %gmp784 = inttoptr i64 %r783 to ptr
  %gml785 = load i64, ptr %gmp784, align 1, !alias.scope !4, !noalias !3
  %wp786 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml785, ptr %wp786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ddc word 0xb400006b
  %r787.p = getelementptr inbounds i8, ptr %c, i64 88
  %r787 = load i64, ptr %r787.p, align 8, !alias.scope !3, !noalias !4
  %cmp788 = icmp eq i64 %r787, 0
  br i1 %cmp788, label %L_8001a6de8, label %L_8001a6de0_ft
L_8001a6de8:
  ; @pc 0x8001a6de8 word 0xb400006a
  %r798.p = getelementptr inbounds i8, ptr %c, i64 80
  %r798 = load i64, ptr %r798.p, align 8, !alias.scope !3, !noalias !4
  %cmp799 = icmp eq i64 %r798, 0
  br i1 %cmp799, label %L_8001a6df4, label %L_8001a6dec_ft
L_8001a6df4:
  ; @pc 0x8001a6df4 word 0xa9007d3f
  %r807.p = getelementptr inbounds i8, ptr %c, i64 72
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %t808 = add i64 %r807, 8
  %gmp809 = inttoptr i64 %r807 to ptr
  store i64 0, ptr %gmp809, align 1, !alias.scope !4, !noalias !3
  %gmp810 = inttoptr i64 %t808 to ptr
  store i64 0, ptr %gmp810, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6df8 word 0xcb170359
  %r811.p = getelementptr inbounds i8, ptr %c, i64 208
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %r812.p = getelementptr inbounds i8, ptr %c, i64 184
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %t813 = sub i64 %r811, %r812
  %wp814 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t813, ptr %wp814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6dfc word 0xb940c269
  %r815.p = getelementptr inbounds i8, ptr %c, i64 152
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %t816 = add i64 %r815, 192
  %gmp817 = inttoptr i64 %t816 to ptr
  %gml818 = load i32, ptr %gmp817, align 1, !alias.scope !4, !noalias !3
  %c819 = zext i32 %gml818 to i64
  %wp820 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c819, ptr %wp820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e00 word 0xb940826a
  %r821.p = getelementptr inbounds i8, ptr %c, i64 152
  %r821 = load i64, ptr %r821.p, align 8, !alias.scope !3, !noalias !4
  %t822 = add i64 %r821, 128
  %gmp823 = inttoptr i64 %t822 to ptr
  %gml824 = load i32, ptr %gmp823, align 1, !alias.scope !4, !noalias !3
  %c825 = zext i32 %gml824 to i64
  %wp826 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c825, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e04 word 0x91032260
  %r827.p = getelementptr inbounds i8, ptr %c, i64 152
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %t828 = add i64 %r827, 200
  %wp829 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t828, ptr %wp829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e08 word 0x51000529
  %r830.p = getelementptr inbounds i8, ptr %c, i64 72
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %c831 = trunc i64 %r830 to i32
  %t832 = sub i32 %c831, 1
  %c833 = zext i32 %t832 to i64
  %wp834 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c833, ptr %wp834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e0c word 0x7100055f
  %r835.p = getelementptr inbounds i8, ptr %c, i64 80
  %r835 = load i64, ptr %r835.p, align 8, !alias.scope !3, !noalias !4
  %c836 = trunc i64 %r835 to i32
  %t837 = sub i32 %c836, 1
  %fn838 = icmp slt i32 %t837, 0
  %fz839 = icmp eq i32 %t837, 0
  %fc840 = icmp uge i32 %c836, 1
  %fx1841 = xor i32 %c836, 1
  %fx2842 = xor i32 %c836, %t837
  %fva843 = and i32 %fx1841, %fx2842
  %fv844 = icmp slt i32 %fva843, 0
  %nz845 = zext i1 %fn838 to i64
  %zz846 = zext i1 %fz839 to i64
  %cz847 = zext i1 %fc840 to i64
  %vz848 = zext i1 %fv844 to i64
  %ns849 = shl i64 %nz845, 31
  %zs850 = shl i64 %zz846, 30
  %cs851 = shl i64 %cz847, 29
  %vs852 = shl i64 %vz848, 28
  %nzor853 = or i64 %ns849, %zs850
  %cvor854 = or i64 %cs851, %vs852
  %nzcv855 = or i64 %nzor853, %cvor854
  %wp856 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv855, ptr %wp856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e10 word 0xb900c269
  %r857.p = getelementptr inbounds i8, ptr %c, i64 152
  %r857 = load i64, ptr %r857.p, align 8, !alias.scope !3, !noalias !4
  %t858 = add i64 %r857, 192
  %r859.p = getelementptr inbounds i8, ptr %c, i64 72
  %r859 = load i64, ptr %r859.p, align 8, !alias.scope !3, !noalias !4
  %c860 = trunc i64 %r859 to i32
  %gmp861 = inttoptr i64 %t858 to ptr
  store i32 %c860, ptr %gmp861, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e14 word 0xb980de69
  %r862.p = getelementptr inbounds i8, ptr %c, i64 152
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %t863 = add i64 %r862, 220
  %gmp864 = inttoptr i64 %t863 to ptr
  %gml865 = load i32, ptr %gmp864, align 1, !alias.scope !4, !noalias !3
  %c866 = sext i32 %gml865 to i64
  %wp867 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c866, ptr %wp867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e18 word 0x8b080121
  %r868.p = getelementptr inbounds i8, ptr %c, i64 72
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %r869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r869 = load i64, ptr %r869.p, align 8, !alias.scope !3, !noalias !4
  %t870 = add i64 %r868, %r869
  %wp871 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t870, ptr %wp871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e1c word 0x54003101
  %r872.p = getelementptr inbounds i8, ptr %c, i64 272
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %fsh874 = lshr i64 %r872, 30
  %ftr875 = trunc i64 %fsh874 to i1
  %cond873 = xor i1 %ftr875, true
  br i1 %cond873, label %L_8001a743c, label %L_8001a6e20_ft
L_8001a6e34:
  ; @pc 0x8001a6e34 word 0xb940da69
  %r895.p = getelementptr inbounds i8, ptr %c, i64 152
  %r895 = load i64, ptr %r895.p, align 8, !alias.scope !3, !noalias !4
  %t896 = add i64 %r895, 216
  %gmp897 = inttoptr i64 %t896 to ptr
  %gml898 = load i32, ptr %gmp897, align 1, !alias.scope !4, !noalias !3
  %c899 = zext i32 %gml898 to i64
  %wp900 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c899, ptr %wp900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e38 word 0xf100873f
  %r901.p = getelementptr inbounds i8, ptr %c, i64 200
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = sub i64 %r901, 33
  %fn903 = icmp slt i64 %t902, 0
  %fz904 = icmp eq i64 %t902, 0
  %fc905 = icmp uge i64 %r901, 33
  %fx1906 = xor i64 %r901, 33
  %fx2907 = xor i64 %r901, %t902
  %fva908 = and i64 %fx1906, %fx2907
  %fv909 = icmp slt i64 %fva908, 0
  %nz910 = zext i1 %fn903 to i64
  %zz911 = zext i1 %fz904 to i64
  %cz912 = zext i1 %fc905 to i64
  %vz913 = zext i1 %fv909 to i64
  %ns914 = shl i64 %nz910, 31
  %zs915 = shl i64 %zz911, 30
  %cs916 = shl i64 %cz912, 29
  %vs917 = shl i64 %vz913, 28
  %nzor918 = or i64 %ns914, %zs915
  %cvor919 = or i64 %cs916, %vs917
  %nzcv920 = or i64 %nzor918, %cvor919
  %wp921 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv920, ptr %wp921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e3c word 0x11000529
  %r922.p = getelementptr inbounds i8, ptr %c, i64 72
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %c923 = trunc i64 %r922 to i32
  %t924 = add i32 %c923, 1
  %c925 = zext i32 %t924 to i64
  %wp926 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c925, ptr %wp926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e40 word 0xb900da69
  %r927.p = getelementptr inbounds i8, ptr %c, i64 152
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %t928 = add i64 %r927, 216
  %r929.p = getelementptr inbounds i8, ptr %c, i64 72
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %c930 = trunc i64 %r929 to i32
  %gmp931 = inttoptr i64 %t928 to ptr
  store i32 %c930, ptr %gmp931, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e44 word 0x54001483
  %r932.p = getelementptr inbounds i8, ptr %c, i64 272
  %r932 = load i64, ptr %r932.p, align 8, !alias.scope !3, !noalias !4
  %fsh934 = lshr i64 %r932, 29
  %ftr935 = trunc i64 %fsh934 to i1
  %cond933 = xor i1 %ftr935, true
  br i1 %cond933, label %L_8001a70d4, label %L_8001a6e48_ft
L_8001a6e50:
  ; @pc 0x8001a6e50 word 0xf8020d3f
  %r944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %t945 = add i64 %r944, 32
  %gmp946 = inttoptr i64 %t945 to ptr
  store i64 0, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %wp947 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t945, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e54 word 0xd100832a
  %r948.p = getelementptr inbounds i8, ptr %c, i64 200
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %t949 = sub i64 %r948, 32
  %wp950 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t949, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e58 word 0xf9000d2a
  %r951.p = getelementptr inbounds i8, ptr %c, i64 72
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %t952 = add i64 %r951, 24
  %r953.p = getelementptr inbounds i8, ptr %c, i64 80
  %r953 = load i64, ptr %r953.p, align 8, !alias.scope !3, !noalias !4
  %gmp954 = inttoptr i64 %t952 to ptr
  store i64 %r953, ptr %gmp954, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e5c word 0x529fffea
  %c955 = zext i32 65535 to i64
  %wp956 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c955, ptr %wp956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e60 word 0xb900113f
  %r957.p = getelementptr inbounds i8, ptr %c, i64 72
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %t958 = add i64 %r957, 16
  %gmp959 = inttoptr i64 %t958 to ptr
  store i32 0, ptr %gmp959, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e64 word 0xf900053f
  %r960.p = getelementptr inbounds i8, ptr %c, i64 72
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %t961 = add i64 %r960, 8
  %gmp962 = inttoptr i64 %t961 to ptr
  store i64 0, ptr %gmp962, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e68 word 0x7900212a
  %r963.p = getelementptr inbounds i8, ptr %c, i64 72
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %t964 = add i64 %r963, 16
  %r965.p = getelementptr inbounds i8, ptr %c, i64 80
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %c966 = trunc i64 %r965 to i32
  %c967 = trunc i32 %c966 to i16
  %gmp968 = inttoptr i64 %t964 to ptr
  store i16 %c967, ptr %gmp968, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e6c word 0xb980c66a
  %r969.p = getelementptr inbounds i8, ptr %c, i64 152
  %r969 = load i64, ptr %r969.p, align 8, !alias.scope !3, !noalias !4
  %t970 = add i64 %r969, 196
  %gmp971 = inttoptr i64 %t970 to ptr
  %gml972 = load i32, ptr %gmp971, align 1, !alias.scope !4, !noalias !3
  %c973 = sext i32 %gml972 to i64
  %wp974 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c973, ptr %wp974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e70 word 0xb5001254
  %r975.p = getelementptr inbounds i8, ptr %c, i64 160
  %r975 = load i64, ptr %r975.p, align 8, !alias.scope !3, !noalias !4
  %cmp976 = icmp ne i64 %r975, 0
  br i1 %cmp976, label %L_8001a70b8, label %L_8001a6e74_ft
L_8001a6e88:
  ; @pc 0x8001a6e88 word 0xf9000549
  %r996.p = getelementptr inbounds i8, ptr %c, i64 80
  %r996 = load i64, ptr %r996.p, align 8, !alias.scope !3, !noalias !4
  %t997 = add i64 %r996, 8
  %r998.p = getelementptr inbounds i8, ptr %c, i64 72
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %gmp999 = inttoptr i64 %t997 to ptr
  store i64 %r998, ptr %gmp999, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6e8c
L_8001a6e8c:
  ; @pc 0x8001a6e8c word 0xb940c269
  %r1000.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1000 = load i64, ptr %r1000.p, align 8, !alias.scope !3, !noalias !4
  %t1001 = add i64 %r1000, 192
  %gmp1002 = inttoptr i64 %t1001 to ptr
  %gml1003 = load i32, ptr %gmp1002, align 1, !alias.scope !4, !noalias !3
  %c1004 = zext i32 %gml1003 to i64
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1004, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e90 word 0x11000529
  %r1006.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1006 = load i64, ptr %r1006.p, align 8, !alias.scope !3, !noalias !4
  %c1007 = trunc i64 %r1006 to i32
  %t1008 = add i32 %c1007, 1
  %c1009 = zext i32 %t1008 to i64
  %wp1010 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1009, ptr %wp1010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e94 word 0xb900c269
  %r1011.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1011 = load i64, ptr %r1011.p, align 8, !alias.scope !3, !noalias !4
  %t1012 = add i64 %r1011, 192
  %r1013.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1013 = load i64, ptr %r1013.p, align 8, !alias.scope !3, !noalias !4
  %c1014 = trunc i64 %r1013 to i32
  %gmp1015 = inttoptr i64 %t1012 to ptr
  store i32 %c1014, ptr %gmp1015, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6e98
L_8001a6e98:
  ; @pc 0x8001a6e98 word 0xb940aa69
  %r1016.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1016 = load i64, ptr %r1016.p, align 8, !alias.scope !3, !noalias !4
  %t1017 = add i64 %r1016, 168
  %gmp1018 = inttoptr i64 %t1017 to ptr
  %gml1019 = load i32, ptr %gmp1018, align 1, !alias.scope !4, !noalias !3
  %c1020 = zext i32 %gml1019 to i64
  %wp1021 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1020, ptr %wp1021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e9c word 0x53107d29
  %r1022.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1022 = load i64, ptr %r1022.p, align 8, !alias.scope !3, !noalias !4
  %c1023 = trunc i64 %r1022 to i32
  %ror1024 = call i32 @llvm.fshr.i32(i32 %c1023, i32 %c1023, i32 16)
  %t1025 = and i32 %ror1024, 65535
  %c1026 = zext i32 %t1025 to i64
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ea0 word 0x79002109
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %t1029 = add i64 %r1028, 16
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %c1031 = trunc i64 %r1030 to i32
  %c1032 = trunc i32 %c1031 to i16
  %gmp1033 = inttoptr i64 %t1029 to ptr
  store i16 %c1032, ptr %gmp1033, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6ea4 word 0x79402509
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %t1035 = add i64 %r1034, 18
  %gmp1036 = inttoptr i64 %t1035 to ptr
  %gml1037 = load i16, ptr %gmp1036, align 1, !alias.scope !4, !noalias !3
  %c1038 = zext i16 %gml1037 to i64
  %wp1039 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1038, ptr %wp1039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ea8 word 0x8b090108
  %r1040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1040 = load i64, ptr %r1040.p, align 8, !alias.scope !3, !noalias !4
  %r1041.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1041 = load i64, ptr %r1041.p, align 8, !alias.scope !3, !noalias !4
  %t1042 = add i64 %r1040, %r1041
  %wp1043 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1042, ptr %wp1043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6eac word 0x91008118
  %r1044.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1044 = load i64, ptr %r1044.p, align 8, !alias.scope !3, !noalias !4
  %t1045 = add i64 %r1044, 32
  %wp1046 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1045, ptr %wp1046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6eb0 word 0xb4fff1b6
  %r1047.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1047 = load i64, ptr %r1047.p, align 8, !alias.scope !3, !noalias !4
  %cmp1048 = icmp eq i64 %r1047, 0
  br i1 %cmp1048, label %L_8001a6ce4, label %L_8001a6eb4
L_8001a6eb4:
  ; @pc 0x8001a6eb4 word 0xaa1603e0
  %r1049.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1049 = load i64, ptr %r1049.p, align 8, !alias.scope !3, !noalias !4
  %t1050 = or i64 0, %r1049
  %wp1051 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1050, ptr %wp1051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6eb8 word 0x94a7f46e
  %wp1052 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361470652, ptr %wp1052, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a6ebc word 0x17ffff8a
  br label %L_8001a6ce4
L_8001a6ec0:
  ; @pc 0x8001a6ec0 word 0xaa1303e0
  %r1053.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1053 = load i64, ptr %r1053.p, align 8, !alias.scope !3, !noalias !4
  %t1054 = or i64 0, %r1053
  %wp1055 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1054, ptr %wp1055, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ec4 word 0xaa1503e1
  %r1056.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1056 = load i64, ptr %r1056.p, align 8, !alias.scope !3, !noalias !4
  %t1057 = or i64 0, %r1056
  %wp1058 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1057, ptr %wp1058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ec8 word 0x2a1403e2
  %r1059.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1059 = load i64, ptr %r1059.p, align 8, !alias.scope !3, !noalias !4
  %c1060 = trunc i64 %r1059 to i32
  %t1061 = or i32 0, %c1060
  %c1062 = zext i32 %t1061 to i64
  %wp1063 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1062, ptr %wp1063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ecc word 0xa9484ff4
  %r1064.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1064 = load i64, ptr %r1064.p, align 8, !alias.scope !3, !noalias !4
  %t1065 = add i64 %r1064, 128
  %t1066 = add i64 %t1065, 8
  %gmp1067 = inttoptr i64 %t1065 to ptr
  %gml1068 = load i64, ptr %gmp1067, align 1, !alias.scope !4, !noalias !3
  %gmp1069 = inttoptr i64 %t1066 to ptr
  %gml1070 = load i64, ptr %gmp1069, align 1, !alias.scope !4, !noalias !3
  %wp1071 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1068, ptr %wp1071, align 8, !alias.scope !3, !noalias !4
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1070, ptr %wp1072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ed0 word 0xa94757f6
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %t1074 = add i64 %r1073, 112
  %t1075 = add i64 %t1074, 8
  %gmp1076 = inttoptr i64 %t1074 to ptr
  %gml1077 = load i64, ptr %gmp1076, align 1, !alias.scope !4, !noalias !3
  %gmp1078 = inttoptr i64 %t1075 to ptr
  %gml1079 = load i64, ptr %gmp1078, align 1, !alias.scope !4, !noalias !3
  %wp1080 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1077, ptr %wp1080, align 8, !alias.scope !3, !noalias !4
  %wp1081 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1079, ptr %wp1081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ed4 word 0xa9465ff8
  %r1082.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1082 = load i64, ptr %r1082.p, align 8, !alias.scope !3, !noalias !4
  %t1083 = add i64 %r1082, 96
  %t1084 = add i64 %t1083, 8
  %gmp1085 = inttoptr i64 %t1083 to ptr
  %gml1086 = load i64, ptr %gmp1085, align 1, !alias.scope !4, !noalias !3
  %gmp1087 = inttoptr i64 %t1084 to ptr
  %gml1088 = load i64, ptr %gmp1087, align 1, !alias.scope !4, !noalias !3
  %wp1089 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1086, ptr %wp1089, align 8, !alias.scope !3, !noalias !4
  %wp1090 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1088, ptr %wp1090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ed8 word 0xa94567fa
  %r1091.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1091 = load i64, ptr %r1091.p, align 8, !alias.scope !3, !noalias !4
  %t1092 = add i64 %r1091, 80
  %t1093 = add i64 %t1092, 8
  %gmp1094 = inttoptr i64 %t1092 to ptr
  %gml1095 = load i64, ptr %gmp1094, align 1, !alias.scope !4, !noalias !3
  %gmp1096 = inttoptr i64 %t1093 to ptr
  %gml1097 = load i64, ptr %gmp1096, align 1, !alias.scope !4, !noalias !3
  %wp1098 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1095, ptr %wp1098, align 8, !alias.scope !3, !noalias !4
  %wp1099 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1097, ptr %wp1099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6edc word 0xa9446ffc
  %r1100.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1100 = load i64, ptr %r1100.p, align 8, !alias.scope !3, !noalias !4
  %t1101 = add i64 %r1100, 64
  %t1102 = add i64 %t1101, 8
  %gmp1103 = inttoptr i64 %t1101 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %gmp1105 = inttoptr i64 %t1102 to ptr
  %gml1106 = load i64, ptr %gmp1105, align 1, !alias.scope !4, !noalias !3
  %wp1107 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1104, ptr %wp1107, align 8, !alias.scope !3, !noalias !4
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1106, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ee0 word 0xa9437bfd
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %t1110 = add i64 %r1109, 48
  %t1111 = add i64 %t1110, 8
  %gmp1112 = inttoptr i64 %t1110 to ptr
  %gml1113 = load i64, ptr %gmp1112, align 1, !alias.scope !4, !noalias !3
  %gmp1114 = inttoptr i64 %t1111 to ptr
  %gml1115 = load i64, ptr %gmp1114, align 1, !alias.scope !4, !noalias !3
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1113, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  %wp1117 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1115, ptr %wp1117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ee4 word 0x910243ff
  %r1118.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1118 = load i64, ptr %r1118.p, align 8, !alias.scope !3, !noalias !4
  %t1119 = add i64 %r1118, 144
  %wp1120 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1119, ptr %wp1120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ee8 word 0xd61f0060
  %r1121.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1121 = load i64, ptr %r1121.p, align 8, !alias.scope !3, !noalias !4
  %pcp4095 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1121, ptr %pcp4095, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8001a6eec:
  ; @pc 0x8001a6eec word 0xf10022bf
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = sub i64 %r1122, 8
  %fn1124 = icmp slt i64 %t1123, 0
  %fz1125 = icmp eq i64 %t1123, 0
  %fc1126 = icmp uge i64 %r1122, 8
  %fx11127 = xor i64 %r1122, 8
  %fx21128 = xor i64 %r1122, %t1123
  %fva1129 = and i64 %fx11127, %fx21128
  %fv1130 = icmp slt i64 %fva1129, 0
  %nz1131 = zext i1 %fn1124 to i64
  %zz1132 = zext i1 %fz1125 to i64
  %cz1133 = zext i1 %fc1126 to i64
  %vz1134 = zext i1 %fv1130 to i64
  %ns1135 = shl i64 %nz1131, 31
  %zs1136 = shl i64 %zz1132, 30
  %cs1137 = shl i64 %cz1133, 29
  %vs1138 = shl i64 %vz1134, 28
  %nzor1139 = or i64 %ns1135, %zs1136
  %cvor1140 = or i64 %cs1137, %vs1138
  %nzcv1141 = or i64 %nzor1139, %cvor1140
  %wp1142 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1141, ptr %wp1142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ef0 word 0x52800108
  %c1143 = zext i32 8 to i64
  %wp1144 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1143, ptr %wp1144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ef4 word 0xf9400319
  %r1145.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1145 = load i64, ptr %r1145.p, align 8, !alias.scope !3, !noalias !4
  %gmp1146 = inttoptr i64 %r1145 to ptr
  %gml1147 = load i64, ptr %gmp1146, align 1, !alias.scope !4, !noalias !3
  %wp1148 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1147, ptr %wp1148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ef8 word 0x9a8882a8
  %r1149.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1149 = load i64, ptr %r1149.p, align 8, !alias.scope !3, !noalias !4
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %r1151.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1151 = load i64, ptr %r1151.p, align 8, !alias.scope !3, !noalias !4
  %fsh1153 = lshr i64 %r1151, 29
  %ftr1154 = trunc i64 %fsh1153 to i1
  %fsh1155 = lshr i64 %r1151, 30
  %ftr1156 = trunc i64 %fsh1155 to i1
  %fnz1157 = xor i1 %ftr1156, true
  %cond1152 = and i1 %ftr1154, %fnz1157
  %sel1158 = select i1 %cond1152, i64 %r1149, i64 %r1150
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1158, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6efc word 0x7100029f
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %c1161 = trunc i64 %r1160 to i32
  %t1162 = sub i32 %c1161, 0
  %fn1163 = icmp slt i32 %t1162, 0
  %fz1164 = icmp eq i32 %t1162, 0
  %fc1165 = icmp uge i32 %c1161, 0
  %fx11166 = xor i32 %c1161, 0
  %fx21167 = xor i32 %c1161, %t1162
  %fva1168 = and i32 %fx11166, %fx21167
  %fv1169 = icmp slt i32 %fva1168, 0
  %nz1170 = zext i1 %fn1163 to i64
  %zz1171 = zext i1 %fz1164 to i64
  %cz1172 = zext i1 %fc1165 to i64
  %vz1173 = zext i1 %fv1169 to i64
  %ns1174 = shl i64 %nz1170, 31
  %zs1175 = shl i64 %zz1171, 30
  %cs1176 = shl i64 %cz1172, 29
  %vs1177 = shl i64 %vz1173, 28
  %nzor1178 = or i64 %ns1174, %zs1175
  %cvor1179 = or i64 %cs1176, %vs1177
  %nzcv1180 = or i64 %nzor1178, %cvor1179
  %wp1181 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1180, ptr %wp1181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f00 word 0x91001d08
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %t1183 = add i64 %r1182, 7
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1183, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f04 word 0x927df117
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = and i64 %r1185, -8
  %wp1187 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t1186, ptr %wp1187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f08 word 0x5a945688
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %c1189 = trunc i64 %r1188 to i32
  %r1190.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1190 = load i64, ptr %r1190.p, align 8, !alias.scope !3, !noalias !4
  %c1191 = trunc i64 %r1190 to i32
  %t1192 = sub i32 0, %c1191
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %fsh1195 = lshr i64 %r1193, 31
  %ftr1196 = trunc i64 %fsh1195 to i1
  %cond1194 = xor i1 %ftr1196, true
  %sel1197 = select i1 %cond1194, i32 %c1189, i32 %t1192
  %c1198 = zext i32 %sel1197 to i64
  %wp1199 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1198, ptr %wp1199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f0c word 0x51000509
  %r1200.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1200 = load i64, ptr %r1200.p, align 8, !alias.scope !3, !noalias !4
  %c1201 = trunc i64 %r1200 to i32
  %t1202 = sub i32 %c1201, 1
  %c1203 = zext i32 %t1202 to i64
  %wp1204 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1203, ptr %wp1204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f10 word 0x6a09011f
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1205 = load i64, ptr %r1205.p, align 8, !alias.scope !3, !noalias !4
  %c1206 = trunc i64 %r1205 to i32
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %c1208 = trunc i64 %r1207 to i32
  %t1209 = and i32 %c1208, %c1206
  %fn1210 = icmp slt i32 %t1209, 0
  %fz1211 = icmp eq i32 %t1209, 0
  %nz1212 = zext i1 %fn1210 to i64
  %zz1213 = zext i1 %fz1211 to i64
  %ns1214 = shl i64 %nz1212, 31
  %zs1215 = shl i64 %zz1213, 30
  %nzcv1216 = or i64 %ns1214, %zs1215
  %wp1217 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1216, ptr %wp1217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f14 word 0x54002181
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %fsh1220 = lshr i64 %r1218, 30
  %ftr1221 = trunc i64 %fsh1220 to i1
  %cond1219 = xor i1 %ftr1221, true
  br i1 %cond1219, label %L_8001a7344, label %L_8001a6f18_ft
L_8001a6f24:
  ; @pc 0x8001a6f24 word 0xb9408268
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %t1234 = add i64 %r1233, 128
  %gmp1235 = inttoptr i64 %t1234 to ptr
  %gml1236 = load i32, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  %c1237 = zext i32 %gml1236 to i64
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1237, ptr %wp1238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f28 word 0x1b147d08
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %c1240 = trunc i64 %r1239 to i32
  %r1241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1241 = load i64, ptr %r1241.p, align 8, !alias.scope !3, !noalias !4
  %c1242 = trunc i64 %r1241 to i32
  %t1243 = mul i32 %c1242, %c1240
  %t1244 = add i32 0, %t1243
  %c1245 = zext i32 %t1244 to i64
  %wp1246 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1245, ptr %wp1246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f2c word 0x37f817c8
  %r1247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1247 = load i64, ptr %r1247.p, align 8, !alias.scope !3, !noalias !4
  %t1248 = and i64 %r1247, 2147483648
  %cmp1249 = icmp ne i64 %t1248, 0
  br i1 %cmp1249, label %L_8001a7224, label %L_8001a6f30_ft
L_8001a6f60:
  ; @pc 0x8001a6f60 word 0x91022276
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %t1335 = add i64 %r1334, 136
  %wp1336 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1335, ptr %wp1336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f64 word 0xaa1603e0
  %r1337.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1337 = load i64, ptr %r1337.p, align 8, !alias.scope !3, !noalias !4
  %t1338 = or i64 0, %r1337
  %wp1339 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1338, ptr %wp1339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f68 word 0x94a7f43e
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361470828, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a6f6c word 0x17ffff7f
  br label %L_8001a6d68
L_8001a6f70:
  ; @pc 0x8001a6f70 word 0xeb0b019f
  %r1341.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1341 = load i64, ptr %r1341.p, align 8, !alias.scope !3, !noalias !4
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %t1343 = sub i64 %r1341, %r1342
  %fn1344 = icmp slt i64 %t1343, 0
  %fz1345 = icmp eq i64 %t1343, 0
  %fc1346 = icmp uge i64 %r1341, %r1342
  %fx11347 = xor i64 %r1341, %r1342
  %fx21348 = xor i64 %r1341, %t1343
  %fva1349 = and i64 %fx11347, %fx21348
  %fv1350 = icmp slt i64 %fva1349, 0
  %nz1351 = zext i1 %fn1344 to i64
  %zz1352 = zext i1 %fz1345 to i64
  %cz1353 = zext i1 %fc1346 to i64
  %vz1354 = zext i1 %fv1350 to i64
  %ns1355 = shl i64 %nz1351, 31
  %zs1356 = shl i64 %zz1352, 30
  %cs1357 = shl i64 %cz1353, 29
  %vs1358 = shl i64 %vz1354, 28
  %nzor1359 = or i64 %ns1355, %zs1356
  %cvor1360 = or i64 %cs1357, %vs1358
  %nzcv1361 = or i64 %nzor1359, %cvor1360
  %wp1362 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1361, ptr %wp1362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f74 word 0x54002b60
  %r1363.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1363 = load i64, ptr %r1363.p, align 8, !alias.scope !3, !noalias !4
  %fsh1365 = lshr i64 %r1363, 30
  %cond1364 = trunc i64 %fsh1365 to i1
  br i1 %cond1364, label %L_8001a74e0, label %L_8001a6f78_ft
L_8001a6f8c:
  ; @pc 0x8001a6f8c word 0xf9400d0c
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %t1388 = add i64 %r1387, 24
  %gmp1389 = inttoptr i64 %t1388 to ptr
  %gml1390 = load i64, ptr %gmp1389, align 1, !alias.scope !4, !noalias !3
  %wp1391 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1390, ptr %wp1391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f90 word 0xeb17019f
  %r1392.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1392 = load i64, ptr %r1392.p, align 8, !alias.scope !3, !noalias !4
  %r1393.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1393 = load i64, ptr %r1393.p, align 8, !alias.scope !3, !noalias !4
  %t1394 = sub i64 %r1392, %r1393
  %fn1395 = icmp slt i64 %t1394, 0
  %fz1396 = icmp eq i64 %t1394, 0
  %fc1397 = icmp uge i64 %r1392, %r1393
  %fx11398 = xor i64 %r1392, %r1393
  %fx21399 = xor i64 %r1392, %t1394
  %fva1400 = and i64 %fx11398, %fx21399
  %fv1401 = icmp slt i64 %fva1400, 0
  %nz1402 = zext i1 %fn1395 to i64
  %zz1403 = zext i1 %fz1396 to i64
  %cz1404 = zext i1 %fc1397 to i64
  %vz1405 = zext i1 %fv1401 to i64
  %ns1406 = shl i64 %nz1402, 31
  %zs1407 = shl i64 %zz1403, 30
  %cs1408 = shl i64 %cz1404, 29
  %vs1409 = shl i64 %vz1405, 28
  %nzor1410 = or i64 %ns1406, %zs1407
  %cvor1411 = or i64 %cs1408, %vs1409
  %nzcv1412 = or i64 %nzor1410, %cvor1411
  %wp1413 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1412, ptr %wp1413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f94 word 0x540029c3
  %r1414.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1414 = load i64, ptr %r1414.p, align 8, !alias.scope !3, !noalias !4
  %fsh1416 = lshr i64 %r1414, 29
  %ftr1417 = trunc i64 %fsh1416 to i1
  %cond1415 = xor i1 %ftr1417, true
  br i1 %cond1415, label %L_8001a74cc, label %L_8001a6f98_ft
L_8001a6fbc:
  ; @pc 0x8001a6fbc word 0x8b0a010b
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %t1475 = add i64 %r1473, %r1474
  %wp1476 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1475, ptr %wp1476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fc0 word 0x9100810a
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %t1478 = add i64 %r1477, 32
  %wp1479 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1478, ptr %wp1479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fc4 word 0xf940056b
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %t1481 = add i64 %r1480, 8
  %gmp1482 = inttoptr i64 %t1481 to ptr
  %gml1483 = load i64, ptr %gmp1482, align 1, !alias.scope !4, !noalias !3
  %wp1484 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1483, ptr %wp1484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fc8 word 0x8b090169
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1485, %r1486
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1487, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fcc word 0xeb18017f
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %t1491 = sub i64 %r1489, %r1490
  %fn1492 = icmp slt i64 %t1491, 0
  %fz1493 = icmp eq i64 %t1491, 0
  %fc1494 = icmp uge i64 %r1489, %r1490
  %fx11495 = xor i64 %r1489, %r1490
  %fx21496 = xor i64 %r1489, %t1491
  %fva1497 = and i64 %fx11495, %fx21496
  %fv1498 = icmp slt i64 %fva1497, 0
  %nz1499 = zext i1 %fn1492 to i64
  %zz1500 = zext i1 %fz1493 to i64
  %cz1501 = zext i1 %fc1494 to i64
  %vz1502 = zext i1 %fv1498 to i64
  %ns1503 = shl i64 %nz1499, 31
  %zs1504 = shl i64 %zz1500, 30
  %cs1505 = shl i64 %cz1501, 29
  %vs1506 = shl i64 %vz1502, 28
  %nzor1507 = or i64 %ns1503, %zs1504
  %cvor1508 = or i64 %cs1505, %vs1506
  %nzcv1509 = or i64 %nzor1507, %cvor1508
  %wp1510 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1509, ptr %wp1510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fd0 word 0x9a8903f4
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %r1512.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1512 = load i64, ptr %r1512.p, align 8, !alias.scope !3, !noalias !4
  %fsh1514 = lshr i64 %r1512, 30
  %cond1513 = trunc i64 %fsh1514 to i1
  %sel1515 = select i1 %cond1513, i64 0, i64 %r1511
  %wp1516 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel1515, ptr %wp1516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fd4 word 0x8b100149
  %r1517.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1517 = load i64, ptr %r1517.p, align 8, !alias.scope !3, !noalias !4
  %r1518.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1518 = load i64, ptr %r1518.p, align 8, !alias.scope !3, !noalias !4
  %t1519 = add i64 %r1517, %r1518
  %wp1520 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1519, ptr %wp1520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fd8 word 0x8b0d012b
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %r1522.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1522 = load i64, ptr %r1522.p, align 8, !alias.scope !3, !noalias !4
  %t1523 = add i64 %r1521, %r1522
  %wp1524 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1523, ptr %wp1524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fdc word 0x8a0e016b
  %r1525.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1525 = load i64, ptr %r1525.p, align 8, !alias.scope !3, !noalias !4
  %r1526.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1526 = load i64, ptr %r1526.p, align 8, !alias.scope !3, !noalias !4
  %t1527 = and i64 %r1526, %r1525
  %wp1528 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1527, ptr %wp1528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fe0 word 0xcb090169
  %r1529.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1529 = load i64, ptr %r1529.p, align 8, !alias.scope !3, !noalias !4
  %r1530.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1530 = load i64, ptr %r1530.p, align 8, !alias.scope !3, !noalias !4
  %t1531 = sub i64 %r1529, %r1530
  %wp1532 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1531, ptr %wp1532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fe4 word 0x8b170135
  %r1533.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1533 = load i64, ptr %r1533.p, align 8, !alias.scope !3, !noalias !4
  %r1534.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1534 = load i64, ptr %r1534.p, align 8, !alias.scope !3, !noalias !4
  %t1535 = add i64 %r1533, %r1534
  %wp1536 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1535, ptr %wp1536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fe8 word 0xf140413f
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %t1538 = sub i64 %r1537, 65536
  %fn1539 = icmp slt i64 %t1538, 0
  %fz1540 = icmp eq i64 %t1538, 0
  %fc1541 = icmp uge i64 %r1537, 65536
  %fx11542 = xor i64 %r1537, 65536
  %fx21543 = xor i64 %r1537, %t1538
  %fva1544 = and i64 %fx11542, %fx21543
  %fv1545 = icmp slt i64 %fva1544, 0
  %nz1546 = zext i1 %fn1539 to i64
  %zz1547 = zext i1 %fz1540 to i64
  %cz1548 = zext i1 %fc1541 to i64
  %vz1549 = zext i1 %fv1545 to i64
  %ns1550 = shl i64 %nz1546, 31
  %zs1551 = shl i64 %zz1547, 30
  %cs1552 = shl i64 %cz1548, 29
  %vs1553 = shl i64 %vz1549, 28
  %nzor1554 = or i64 %ns1550, %zs1551
  %cvor1555 = or i64 %cs1552, %vs1553
  %nzcv1556 = or i64 %nzor1554, %cvor1555
  %wp1557 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1556, ptr %wp1557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fec word 0x54002be2
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %fsh1560 = lshr i64 %r1558, 29
  %cond1559 = trunc i64 %fsh1560 to i1
  br i1 %cond1559, label %L_8001a7568, label %L_8001a6ff0_ft
L_8001a7008:
  ; @pc 0x8001a7008 word 0xf9000d17
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = add i64 %r1592, 24
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %gmp1595 = inttoptr i64 %t1593 to ptr
  store i64 %r1594, ptr %gmp1595, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a700c word 0xb980c669
  %r1596.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1596 = load i64, ptr %r1596.p, align 8, !alias.scope !3, !noalias !4
  %t1597 = add i64 %r1596, 196
  %gmp1598 = inttoptr i64 %t1597 to ptr
  %gml1599 = load i32, ptr %gmp1598, align 1, !alias.scope !4, !noalias !3
  %c1600 = sext i32 %gml1599 to i64
  %wp1601 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1600, ptr %wp1601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7010 word 0x8b080129
  %r1602.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1602 = load i64, ptr %r1602.p, align 8, !alias.scope !3, !noalias !4
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %t1604 = add i64 %r1602, %r1603
  %wp1605 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1604, ptr %wp1605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7014 word 0xf940012a
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %gmp1607 = inttoptr i64 %r1606 to ptr
  %gml1608 = load i64, ptr %gmp1607, align 1, !alias.scope !4, !noalias !3
  %wp1609 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1608, ptr %wp1609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7018 word 0xb400006a
  %r1610.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1610 = load i64, ptr %r1610.p, align 8, !alias.scope !3, !noalias !4
  %cmp1611 = icmp eq i64 %r1610, 0
  br i1 %cmp1611, label %L_8001a7024, label %L_8001a701c_ft
L_8001a7024:
  ; @pc 0x8001a7024 word 0xf940052a
  %r1621.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1621 = load i64, ptr %r1621.p, align 8, !alias.scope !3, !noalias !4
  %t1622 = add i64 %r1621, 8
  %gmp1623 = inttoptr i64 %t1622 to ptr
  %gml1624 = load i64, ptr %gmp1623, align 1, !alias.scope !4, !noalias !3
  %wp1625 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1624, ptr %wp1625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7028 word 0xb400006a
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %cmp1627 = icmp eq i64 %r1626, 0
  br i1 %cmp1627, label %L_8001a7034, label %L_8001a702c_ft
L_8001a7034:
  ; @pc 0x8001a7034 word 0xa9007d3f
  %r1635.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1635 = load i64, ptr %r1635.p, align 8, !alias.scope !3, !noalias !4
  %t1636 = add i64 %r1635, 8
  %gmp1637 = inttoptr i64 %r1635 to ptr
  store i64 0, ptr %gmp1637, align 1, !alias.scope !4, !noalias !3
  %gmp1638 = inttoptr i64 %t1636 to ptr
  store i64 0, ptr %gmp1638, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7038 word 0xb940c269
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %t1640 = add i64 %r1639, 192
  %gmp1641 = inttoptr i64 %t1640 to ptr
  %gml1642 = load i32, ptr %gmp1641, align 1, !alias.scope !4, !noalias !3
  %c1643 = zext i32 %gml1642 to i64
  %wp1644 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1643, ptr %wp1644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a703c word 0x51000529
  %r1645.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1645 = load i64, ptr %r1645.p, align 8, !alias.scope !3, !noalias !4
  %c1646 = trunc i64 %r1645 to i32
  %t1647 = sub i32 %c1646, 1
  %c1648 = zext i32 %t1647 to i64
  %wp1649 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1648, ptr %wp1649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7040 word 0xb900c269
  %r1650.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1650 = load i64, ptr %r1650.p, align 8, !alias.scope !3, !noalias !4
  %t1651 = add i64 %r1650, 192
  %r1652.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1652 = load i64, ptr %r1652.p, align 8, !alias.scope !3, !noalias !4
  %c1653 = trunc i64 %r1652 to i32
  %gmp1654 = inttoptr i64 %t1651 to ptr
  store i32 %c1653, ptr %gmp1654, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7044
L_8001a7044:
  ; @pc 0x8001a7044 word 0xb9408269
  %r1655.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1655 = load i64, ptr %r1655.p, align 8, !alias.scope !3, !noalias !4
  %t1656 = add i64 %r1655, 128
  %gmp1657 = inttoptr i64 %t1656 to ptr
  %gml1658 = load i32, ptr %gmp1657, align 1, !alias.scope !4, !noalias !3
  %c1659 = zext i32 %gml1658 to i64
  %wp1660 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1659, ptr %wp1660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7048 word 0xcb150199
  %r1661.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1661 = load i64, ptr %r1661.p, align 8, !alias.scope !3, !noalias !4
  %r1662.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1662 = load i64, ptr %r1662.p, align 8, !alias.scope !3, !noalias !4
  %t1663 = sub i64 %r1661, %r1662
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1663, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a704c word 0x91032260
  %r1665.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1665 = load i64, ptr %r1665.p, align 8, !alias.scope !3, !noalias !4
  %t1666 = add i64 %r1665, 200
  %wp1667 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1666, ptr %wp1667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7050 word 0xb980de6a
  %r1668.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1668 = load i64, ptr %r1668.p, align 8, !alias.scope !3, !noalias !4
  %t1669 = add i64 %r1668, 220
  %gmp1670 = inttoptr i64 %t1669 to ptr
  %gml1671 = load i32, ptr %gmp1670, align 1, !alias.scope !4, !noalias !3
  %c1672 = sext i32 %gml1671 to i64
  %wp1673 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1672, ptr %wp1673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7054 word 0x8b0a0101
  %r1674.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1674 = load i64, ptr %r1674.p, align 8, !alias.scope !3, !noalias !4
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %t1676 = add i64 %r1674, %r1675
  %wp1677 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1676, ptr %wp1677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7058 word 0x7100053f
  %r1678.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1678 = load i64, ptr %r1678.p, align 8, !alias.scope !3, !noalias !4
  %c1679 = trunc i64 %r1678 to i32
  %t1680 = sub i32 %c1679, 1
  %fn1681 = icmp slt i32 %t1680, 0
  %fz1682 = icmp eq i32 %t1680, 0
  %fc1683 = icmp uge i32 %c1679, 1
  %fx11684 = xor i32 %c1679, 1
  %fx21685 = xor i32 %c1679, %t1680
  %fva1686 = and i32 %fx11684, %fx21685
  %fv1687 = icmp slt i32 %fva1686, 0
  %nz1688 = zext i1 %fn1681 to i64
  %zz1689 = zext i1 %fz1682 to i64
  %cz1690 = zext i1 %fc1683 to i64
  %vz1691 = zext i1 %fv1687 to i64
  %ns1692 = shl i64 %nz1688, 31
  %zs1693 = shl i64 %zz1689, 30
  %cs1694 = shl i64 %cz1690, 29
  %vs1695 = shl i64 %vz1691, 28
  %nzor1696 = or i64 %ns1692, %zs1693
  %cvor1697 = or i64 %cs1694, %vs1695
  %nzcv1698 = or i64 %nzor1696, %cvor1697
  %wp1699 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1698, ptr %wp1699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a705c word 0x54002961
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %fsh1702 = lshr i64 %r1700, 30
  %ftr1703 = trunc i64 %fsh1702 to i1
  %cond1701 = xor i1 %ftr1703, true
  br i1 %cond1701, label %L_8001a7588, label %L_8001a7060_ft
L_8001a7074:
  ; @pc 0x8001a7074 word 0xb940da69
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %t1724 = add i64 %r1723, 216
  %gmp1725 = inttoptr i64 %t1724 to ptr
  %gml1726 = load i32, ptr %gmp1725, align 1, !alias.scope !4, !noalias !3
  %c1727 = zext i32 %gml1726 to i64
  %wp1728 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1727, ptr %wp1728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7078 word 0xf100873f
  %r1729.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1729 = load i64, ptr %r1729.p, align 8, !alias.scope !3, !noalias !4
  %t1730 = sub i64 %r1729, 33
  %fn1731 = icmp slt i64 %t1730, 0
  %fz1732 = icmp eq i64 %t1730, 0
  %fc1733 = icmp uge i64 %r1729, 33
  %fx11734 = xor i64 %r1729, 33
  %fx21735 = xor i64 %r1729, %t1730
  %fva1736 = and i64 %fx11734, %fx21735
  %fv1737 = icmp slt i64 %fva1736, 0
  %nz1738 = zext i1 %fn1731 to i64
  %zz1739 = zext i1 %fz1732 to i64
  %cz1740 = zext i1 %fc1733 to i64
  %vz1741 = zext i1 %fv1737 to i64
  %ns1742 = shl i64 %nz1738, 31
  %zs1743 = shl i64 %zz1739, 30
  %cs1744 = shl i64 %cz1740, 29
  %vs1745 = shl i64 %vz1741, 28
  %nzor1746 = or i64 %ns1742, %zs1743
  %cvor1747 = or i64 %cs1744, %vs1745
  %nzcv1748 = or i64 %nzor1746, %cvor1747
  %wp1749 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1748, ptr %wp1749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a707c word 0x11000529
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %c1751 = trunc i64 %r1750 to i32
  %t1752 = add i32 %c1751, 1
  %c1753 = zext i32 %t1752 to i64
  %wp1754 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1753, ptr %wp1754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7080 word 0xb900da69
  %r1755.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1755 = load i64, ptr %r1755.p, align 8, !alias.scope !3, !noalias !4
  %t1756 = add i64 %r1755, 216
  %r1757.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1757 = load i64, ptr %r1757.p, align 8, !alias.scope !3, !noalias !4
  %c1758 = trunc i64 %r1757 to i32
  %gmp1759 = inttoptr i64 %t1756 to ptr
  store i32 %c1758, ptr %gmp1759, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7084 word 0x540028e3
  %r1760.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1760 = load i64, ptr %r1760.p, align 8, !alias.scope !3, !noalias !4
  %fsh1762 = lshr i64 %r1760, 29
  %ftr1763 = trunc i64 %fsh1762 to i1
  %cond1761 = xor i1 %ftr1763, true
  br i1 %cond1761, label %L_8001a75a0, label %L_8001a7088_ft
L_8001a7098:
  ; @pc 0x8001a7098 word 0x8b0a0108
  %r1778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1778 = load i64, ptr %r1778.p, align 8, !alias.scope !3, !noalias !4
  %r1779.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1779 = load i64, ptr %r1779.p, align 8, !alias.scope !3, !noalias !4
  %t1780 = add i64 %r1778, %r1779
  %wp1781 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1780, ptr %wp1781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a709c word 0xf9400508
  %r1782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1782 = load i64, ptr %r1782.p, align 8, !alias.scope !3, !noalias !4
  %t1783 = add i64 %r1782, 8
  %gmp1784 = inttoptr i64 %t1783 to ptr
  %gml1785 = load i64, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  %wp1786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1785, ptr %wp1786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70a0 word 0x8b090108
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %r1788.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1788 = load i64, ptr %r1788.p, align 8, !alias.scope !3, !noalias !4
  %t1789 = add i64 %r1787, %r1788
  %wp1790 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1789, ptr %wp1790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70a4 word 0xeb0b011f
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %t1793 = sub i64 %r1791, %r1792
  %fn1794 = icmp slt i64 %t1793, 0
  %fz1795 = icmp eq i64 %t1793, 0
  %fc1796 = icmp uge i64 %r1791, %r1792
  %fx11797 = xor i64 %r1791, %r1792
  %fx21798 = xor i64 %r1791, %t1793
  %fva1799 = and i64 %fx11797, %fx21798
  %fv1800 = icmp slt i64 %fva1799, 0
  %nz1801 = zext i1 %fn1794 to i64
  %zz1802 = zext i1 %fz1795 to i64
  %cz1803 = zext i1 %fc1796 to i64
  %vz1804 = zext i1 %fv1800 to i64
  %ns1805 = shl i64 %nz1801, 31
  %zs1806 = shl i64 %zz1802, 30
  %cs1807 = shl i64 %cz1803, 29
  %vs1808 = shl i64 %vz1804, 28
  %nzor1809 = or i64 %ns1805, %zs1806
  %cvor1810 = or i64 %cs1807, %vs1808
  %nzcv1811 = or i64 %nzor1809, %cvor1810
  %wp1812 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1811, ptr %wp1812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70a8 word 0x54ffe821
  %r1813.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1813 = load i64, ptr %r1813.p, align 8, !alias.scope !3, !noalias !4
  %fsh1815 = lshr i64 %r1813, 30
  %ftr1816 = trunc i64 %fsh1815 to i1
  %cond1814 = xor i1 %ftr1816, true
  br i1 %cond1814, label %L_8001a6dac, label %L_8001a70ac_ft
L_8001a70b0:
  ; @pc 0x8001a70b0 word 0xcb0b0154
  %r1817.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1817 = load i64, ptr %r1817.p, align 8, !alias.scope !3, !noalias !4
  %r1818.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1818 = load i64, ptr %r1818.p, align 8, !alias.scope !3, !noalias !4
  %t1819 = sub i64 %r1817, %r1818
  %wp1820 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1819, ptr %wp1820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70b4 word 0x17ffff49
  br label %L_8001a6dd8
L_8001a70b8:
  ; @pc 0x8001a70b8 word 0x8b14014b
  %r1821.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1821 = load i64, ptr %r1821.p, align 8, !alias.scope !3, !noalias !4
  %r1822.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1822 = load i64, ptr %r1822.p, align 8, !alias.scope !3, !noalias !4
  %t1823 = add i64 %r1821, %r1822
  %wp1824 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1823, ptr %wp1824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70bc word 0x8b0a0129
  %r1825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1825 = load i64, ptr %r1825.p, align 8, !alias.scope !3, !noalias !4
  %r1826.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1826 = load i64, ptr %r1826.p, align 8, !alias.scope !3, !noalias !4
  %t1827 = add i64 %r1825, %r1826
  %wp1828 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1827, ptr %wp1828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70c0 word 0xf940016a
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %gmp1830 = inttoptr i64 %r1829 to ptr
  %gml1831 = load i64, ptr %gmp1830, align 1, !alias.scope !4, !noalias !3
  %wp1832 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1831, ptr %wp1832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70c4 word 0xf9000169
  %r1833.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1833 = load i64, ptr %r1833.p, align 8, !alias.scope !3, !noalias !4
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %gmp1835 = inttoptr i64 %r1833 to ptr
  store i64 %r1834, ptr %gmp1835, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a70c8 word 0xa9002d2a
  %r1836.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1836 = load i64, ptr %r1836.p, align 8, !alias.scope !3, !noalias !4
  %t1837 = add i64 %r1836, 8
  %r1838.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1838 = load i64, ptr %r1838.p, align 8, !alias.scope !3, !noalias !4
  %gmp1839 = inttoptr i64 %r1836 to ptr
  store i64 %r1838, ptr %gmp1839, align 1, !alias.scope !4, !noalias !3
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %gmp1841 = inttoptr i64 %t1837 to ptr
  store i64 %r1840, ptr %gmp1841, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a70cc word 0xb5ffedea
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %cmp1843 = icmp ne i64 %r1842, 0
  br i1 %cmp1843, label %L_8001a6e88, label %L_8001a70d0_ft
L_8001a70d4:
  ; @pc 0x8001a70d4 word 0xeb17035f
  %r1844.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1844 = load i64, ptr %r1844.p, align 8, !alias.scope !3, !noalias !4
  %r1845.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1845 = load i64, ptr %r1845.p, align 8, !alias.scope !3, !noalias !4
  %t1846 = sub i64 %r1844, %r1845
  %fn1847 = icmp slt i64 %t1846, 0
  %fz1848 = icmp eq i64 %t1846, 0
  %fc1849 = icmp uge i64 %r1844, %r1845
  %fx11850 = xor i64 %r1844, %r1845
  %fx21851 = xor i64 %r1844, %t1846
  %fva1852 = and i64 %fx11850, %fx21851
  %fv1853 = icmp slt i64 %fva1852, 0
  %nz1854 = zext i1 %fn1847 to i64
  %zz1855 = zext i1 %fz1848 to i64
  %cz1856 = zext i1 %fc1849 to i64
  %vz1857 = zext i1 %fv1853 to i64
  %ns1858 = shl i64 %nz1854, 31
  %zs1859 = shl i64 %zz1855, 30
  %cs1860 = shl i64 %cz1856, 29
  %vs1861 = shl i64 %vz1857, 28
  %nzor1862 = or i64 %ns1858, %zs1859
  %cvor1863 = or i64 %cs1860, %vs1861
  %nzcv1864 = or i64 %nzor1862, %cvor1863
  %wp1865 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1864, ptr %wp1865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70d8 word 0x54ffee00
  %r1866.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1866 = load i64, ptr %r1866.p, align 8, !alias.scope !3, !noalias !4
  %fsh1868 = lshr i64 %r1866, 30
  %cond1867 = trunc i64 %fsh1868 to i1
  br i1 %cond1867, label %L_8001a6e98, label %L_8001a70dc_ft
L_8001a70e4:
  ; @pc 0x8001a70e4 word 0xb4000069
  %r1873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1873 = load i64, ptr %r1873.p, align 8, !alias.scope !3, !noalias !4
  %cmp1874 = icmp eq i64 %r1873, 0
  br i1 %cmp1874, label %L_8001a70f0, label %L_8001a70e8_ft
L_8001a70f0:
  ; @pc 0x8001a70f0 word 0xaa1f03f8
  %t1882 = or i64 0, 0
  %wp1883 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1882, ptr %wp1883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70f4 word 0xeb15033f
  %r1884.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1884 = load i64, ptr %r1884.p, align 8, !alias.scope !3, !noalias !4
  %r1885.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1885 = load i64, ptr %r1885.p, align 8, !alias.scope !3, !noalias !4
  %t1886 = sub i64 %r1884, %r1885
  %fn1887 = icmp slt i64 %t1886, 0
  %fz1888 = icmp eq i64 %t1886, 0
  %fc1889 = icmp uge i64 %r1884, %r1885
  %fx11890 = xor i64 %r1884, %r1885
  %fx21891 = xor i64 %r1884, %t1886
  %fva1892 = and i64 %fx11890, %fx21891
  %fv1893 = icmp slt i64 %fva1892, 0
  %nz1894 = zext i1 %fn1887 to i64
  %zz1895 = zext i1 %fz1888 to i64
  %cz1896 = zext i1 %fc1889 to i64
  %vz1897 = zext i1 %fv1893 to i64
  %ns1898 = shl i64 %nz1894, 31
  %zs1899 = shl i64 %zz1895, 30
  %cs1900 = shl i64 %cz1896, 29
  %vs1901 = shl i64 %vz1897, 28
  %nzor1902 = or i64 %ns1898, %zs1899
  %cvor1903 = or i64 %cs1900, %vs1901
  %nzcv1904 = or i64 %nzor1902, %cvor1903
  %wp1905 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1904, ptr %wp1905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70f8 word 0x54ffdf43
  %r1906.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1906 = load i64, ptr %r1906.p, align 8, !alias.scope !3, !noalias !4
  %fsh1908 = lshr i64 %r1906, 29
  %ftr1909 = trunc i64 %fsh1908 to i1
  %cond1907 = xor i1 %ftr1909, true
  br i1 %cond1907, label %L_8001a6ce0, label %L_8001a70fc_ft
L_8001a7120:
  ; @pc 0x8001a7120 word 0xf9400268
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %gmp1969 = inttoptr i64 %r1968 to ptr
  %gml1970 = load i64, ptr %gmp1969, align 1, !alias.scope !4, !noalias !3
  %wp1971 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1970, ptr %wp1971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7124 word 0xaa1303e0
  %r1972.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1972 = load i64, ptr %r1972.p, align 8, !alias.scope !3, !noalias !4
  %t1973 = or i64 0, %r1972
  %wp1974 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1973, ptr %wp1974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7128 word 0xf9401508
  %r1975.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1975 = load i64, ptr %r1975.p, align 8, !alias.scope !3, !noalias !4
  %t1976 = add i64 %r1975, 40
  %gmp1977 = inttoptr i64 %t1976 to ptr
  %gml1978 = load i64, ptr %gmp1977, align 1, !alias.scope !4, !noalias !3
  %wp1979 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1978, ptr %wp1979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a712c word 0xd63f0100
  %r1980.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1980 = load i64, ptr %r1980.p, align 8, !alias.scope !3, !noalias !4
  %fp1981 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1980, ptr %fp1981, align 8, !alias.scope !3, !noalias !4
  %wp1982 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471280, ptr %wp1982, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a7130 word 0xf9401e60
  %r1983.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1983 = load i64, ptr %r1983.p, align 8, !alias.scope !3, !noalias !4
  %t1984 = add i64 %r1983, 56
  %gmp1985 = inttoptr i64 %t1984 to ptr
  %gml1986 = load i64, ptr %gmp1985, align 1, !alias.scope !4, !noalias !3
  %wp1987 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1986, ptr %wp1987, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7134
L_8001a7134:
  ; @pc 0x8001a7134 word 0x8b384328
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %r1989.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1989 = load i64, ptr %r1989.p, align 8, !alias.scope !3, !noalias !4
  %c1990 = trunc i64 %r1989 to i32
  %c1991 = zext i32 %c1990 to i64
  %t1992 = add i64 %r1988, %c1991
  %wp1993 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1992, ptr %wp1993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7138 word 0x9100411b
  %r1994.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1994 = load i64, ptr %r1994.p, align 8, !alias.scope !3, !noalias !4
  %t1995 = add i64 %r1994, 16
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1995, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a713c word 0x29590a68
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %t1998 = add i64 %r1997, 200
  %t1999 = add i64 %t1998, 4
  %gmp2000 = inttoptr i64 %t1998 to ptr
  %gml2001 = load i32, ptr %gmp2000, align 1, !alias.scope !4, !noalias !3
  %c2002 = zext i32 %gml2001 to i64
  %gmp2003 = inttoptr i64 %t1999 to ptr
  %gml2004 = load i32, ptr %gmp2003, align 1, !alias.scope !4, !noalias !3
  %c2005 = zext i32 %gml2004 to i64
  %wp2006 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2002, ptr %wp2006, align 8, !alias.scope !3, !noalias !4
  %wp2007 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2005, ptr %wp2007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7140 word 0xd37ef51c
  %r2008.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2008 = load i64, ptr %r2008.p, align 8, !alias.scope !3, !noalias !4
  %ror2009 = call i64 @llvm.fshr.i64(i64 %r2008, i64 %r2008, i64 62)
  %t2010 = and i64 %ror2009, -4
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2010, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7144 word 0xf9400008
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %gmp2013 = inttoptr i64 %r2012 to ptr
  %gml2014 = load i64, ptr %gmp2013, align 1, !alias.scope !4, !noalias !3
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7148 word 0xeb1b039f
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %r2017.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2017 = load i64, ptr %r2017.p, align 8, !alias.scope !3, !noalias !4
  %t2018 = sub i64 %r2016, %r2017
  %fn2019 = icmp slt i64 %t2018, 0
  %fz2020 = icmp eq i64 %t2018, 0
  %fc2021 = icmp uge i64 %r2016, %r2017
  %fx12022 = xor i64 %r2016, %r2017
  %fx22023 = xor i64 %r2016, %t2018
  %fva2024 = and i64 %fx12022, %fx22023
  %fv2025 = icmp slt i64 %fva2024, 0
  %nz2026 = zext i1 %fn2019 to i64
  %zz2027 = zext i1 %fz2020 to i64
  %cz2028 = zext i1 %fc2021 to i64
  %vz2029 = zext i1 %fv2025 to i64
  %ns2030 = shl i64 %nz2026, 31
  %zs2031 = shl i64 %zz2027, 30
  %cs2032 = shl i64 %cz2028, 29
  %vs2033 = shl i64 %vz2029, 28
  %nzor2034 = or i64 %ns2030, %zs2031
  %cvor2035 = or i64 %cs2032, %vs2033
  %nzcv2036 = or i64 %nzor2034, %cvor2035
  %wp2037 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2036, ptr %wp2037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a714c word 0x9a9b8399
  %r2038.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2038 = load i64, ptr %r2038.p, align 8, !alias.scope !3, !noalias !4
  %r2039.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2039 = load i64, ptr %r2039.p, align 8, !alias.scope !3, !noalias !4
  %r2040.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2040 = load i64, ptr %r2040.p, align 8, !alias.scope !3, !noalias !4
  %fsh2042 = lshr i64 %r2040, 29
  %ftr2043 = trunc i64 %fsh2042 to i1
  %fsh2044 = lshr i64 %r2040, 30
  %ftr2045 = trunc i64 %fsh2044 to i1
  %fnz2046 = xor i1 %ftr2045, true
  %cond2041 = and i1 %ftr2043, %fnz2046
  %sel2047 = select i1 %cond2041, i64 %r2038, i64 %r2039
  %wp2048 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %sel2047, ptr %wp2048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7150 word 0xaa1903e1
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %t2050 = or i64 0, %r2049
  %wp2051 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2050, ptr %wp2051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7154 word 0xf9401908
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %t2053 = add i64 %r2052, 48
  %gmp2054 = inttoptr i64 %t2053 to ptr
  %gml2055 = load i64, ptr %gmp2054, align 1, !alias.scope !4, !noalias !3
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7158 word 0xd63f0100
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %fp2058 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2057, ptr %fp2058, align 8, !alias.scope !3, !noalias !4
  %wp2059 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471324, ptr %wp2059, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a715c word 0xb4002920
  %r2060.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2060 = load i64, ptr %r2060.p, align 8, !alias.scope !3, !noalias !4
  %cmp2061 = icmp eq i64 %r2060, 0
  br i1 %cmp2061, label %L_8001a7680, label %L_8001a7160_ft
L_8001a7164:
  ; @pc 0x8001a7164 word 0xb940aa68
  %r2065.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2065 = load i64, ptr %r2065.p, align 8, !alias.scope !3, !noalias !4
  %t2066 = add i64 %r2065, 168
  %gmp2067 = inttoptr i64 %t2066 to ptr
  %gml2068 = load i32, ptr %gmp2067, align 1, !alias.scope !4, !noalias !3
  %c2069 = zext i32 %gml2068 to i64
  %wp2070 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2069, ptr %wp2070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7168 word 0x37002b28
  %r2071.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2071 = load i64, ptr %r2071.p, align 8, !alias.scope !3, !noalias !4
  %t2072 = and i64 %r2071, 1
  %cmp2073 = icmp ne i64 %t2072, 0
  br i1 %cmp2073, label %L_8001a76cc, label %L_8001a716c_ft
L_8001a7174:
  ; @pc 0x8001a7174 word 0xb940826a
  %r2078.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2078 = load i64, ptr %r2078.p, align 8, !alias.scope !3, !noalias !4
  %t2079 = add i64 %r2078, 128
  %gmp2080 = inttoptr i64 %t2079 to ptr
  %gml2081 = load i32, ptr %gmp2080, align 1, !alias.scope !4, !noalias !3
  %c2082 = zext i32 %gml2081 to i64
  %wp2083 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2082, ptr %wp2083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7178 word 0x8b180328
  %r2084.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2084 = load i64, ptr %r2084.p, align 8, !alias.scope !3, !noalias !4
  %r2085.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2085 = load i64, ptr %r2085.p, align 8, !alias.scope !3, !noalias !4
  %t2086 = add i64 %r2084, %r2085
  %wp2087 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2086, ptr %wp2087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a717c word 0xd1004109
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %t2089 = sub i64 %r2088, 16
  %wp2090 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2089, ptr %wp2090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7180 word 0x7100055f
  %r2091.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2091 = load i64, ptr %r2091.p, align 8, !alias.scope !3, !noalias !4
  %c2092 = trunc i64 %r2091 to i32
  %t2093 = sub i32 %c2092, 1
  %fn2094 = icmp slt i32 %t2093, 0
  %fz2095 = icmp eq i32 %t2093, 0
  %fc2096 = icmp uge i32 %c2092, 1
  %fx12097 = xor i32 %c2092, 1
  %fx22098 = xor i32 %c2092, %t2093
  %fva2099 = and i32 %fx12097, %fx22098
  %fv2100 = icmp slt i32 %fva2099, 0
  %nz2101 = zext i1 %fn2094 to i64
  %zz2102 = zext i1 %fz2095 to i64
  %cz2103 = zext i1 %fc2096 to i64
  %vz2104 = zext i1 %fv2100 to i64
  %ns2105 = shl i64 %nz2101, 31
  %zs2106 = shl i64 %zz2102, 30
  %cs2107 = shl i64 %cz2103, 29
  %vs2108 = shl i64 %vz2104, 28
  %nzor2109 = or i64 %ns2105, %zs2106
  %cvor2110 = or i64 %cs2107, %vs2108
  %nzcv2111 = or i64 %nzor2109, %cvor2110
  %wp2112 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2111, ptr %wp2112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7184 word 0x9a89030a
  %r2113.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2113 = load i64, ptr %r2113.p, align 8, !alias.scope !3, !noalias !4
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %fsh2117 = lshr i64 %r2115, 30
  %cond2116 = trunc i64 %fsh2117 to i1
  %sel2118 = select i1 %cond2116, i64 %r2113, i64 %r2114
  %wp2119 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel2118, ptr %wp2119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7188 word 0xa9007d59
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %t2121 = add i64 %r2120, 8
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %gmp2123 = inttoptr i64 %r2120 to ptr
  store i64 %r2122, ptr %gmp2123, align 1, !alias.scope !4, !noalias !3
  %gmp2124 = inttoptr i64 %t2121 to ptr
  store i64 0, ptr %gmp2124, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a718c word 0xf940626b
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %t2126 = add i64 %r2125, 192
  %gmp2127 = inttoptr i64 %t2126 to ptr
  %gml2128 = load i64, ptr %gmp2127, align 1, !alias.scope !4, !noalias !3
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7190 word 0xb40000ab
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %cmp2131 = icmp eq i64 %r2130, 0
  br i1 %cmp2131, label %L_8001a71a4, label %L_8001a7194
L_8001a7194:
  ; @pc 0x8001a7194 word 0xaa0b03ec
  %r2132.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2132 = load i64, ptr %r2132.p, align 8, !alias.scope !3, !noalias !4
  %t2133 = or i64 0, %r2132
  %wp2134 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2133, ptr %wp2134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7198 word 0xf940056b
  %r2135.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2135 = load i64, ptr %r2135.p, align 8, !alias.scope !3, !noalias !4
  %t2136 = add i64 %r2135, 8
  %gmp2137 = inttoptr i64 %t2136 to ptr
  %gml2138 = load i64, ptr %gmp2137, align 1, !alias.scope !4, !noalias !3
  %wp2139 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2138, ptr %wp2139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a719c word 0xb5ffffcb
  %r2140.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2140 = load i64, ptr %r2140.p, align 8, !alias.scope !3, !noalias !4
  %cmp2141 = icmp ne i64 %r2140, 0
  br i1 %cmp2141, label %L_8001a7194, label %L_8001a71a0_ft
L_8001a71a4:
  ; @pc 0x8001a71a4 word 0xf900034a
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %gmp2147 = inttoptr i64 %r2145 to ptr
  store i64 %r2146, ptr %gmp2147, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a71a8 word 0x9100430b
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %t2149 = add i64 %r2148, 16
  %wp2150 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2149, ptr %wp2150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71ac word 0xaa1303e0
  %r2151.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2151 = load i64, ptr %r2151.p, align 8, !alias.scope !3, !noalias !4
  %t2152 = or i64 0, %r2151
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71b0 word 0xb940826a
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %t2155 = add i64 %r2154, 128
  %gmp2156 = inttoptr i64 %t2155 to ptr
  %gml2157 = load i32, ptr %gmp2156, align 1, !alias.scope !4, !noalias !3
  %c2158 = zext i32 %gml2157 to i64
  %wp2159 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2158, ptr %wp2159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71b4 word 0xaa1503e1
  %r2160.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2160 = load i64, ptr %r2160.p, align 8, !alias.scope !3, !noalias !4
  %t2161 = or i64 0, %r2160
  %wp2162 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2161, ptr %wp2162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71b8 word 0x2a1403e2
  %r2163.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2163 = load i64, ptr %r2163.p, align 8, !alias.scope !3, !noalias !4
  %c2164 = trunc i64 %r2163 to i32
  %t2165 = or i32 0, %c2164
  %c2166 = zext i32 %t2165 to i64
  %wp2167 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2166, ptr %wp2167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71bc word 0x7100055f
  %r2168.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2168 = load i64, ptr %r2168.p, align 8, !alias.scope !3, !noalias !4
  %c2169 = trunc i64 %r2168 to i32
  %t2170 = sub i32 %c2169, 1
  %fn2171 = icmp slt i32 %t2170, 0
  %fz2172 = icmp eq i32 %t2170, 0
  %fc2173 = icmp uge i32 %c2169, 1
  %fx12174 = xor i32 %c2169, 1
  %fx22175 = xor i32 %c2169, %t2170
  %fva2176 = and i32 %fx12174, %fx22175
  %fv2177 = icmp slt i32 %fva2176, 0
  %nz2178 = zext i1 %fn2171 to i64
  %zz2179 = zext i1 %fz2172 to i64
  %cz2180 = zext i1 %fc2173 to i64
  %vz2181 = zext i1 %fv2177 to i64
  %ns2182 = shl i64 %nz2178, 31
  %zs2183 = shl i64 %zz2179, 30
  %cs2184 = shl i64 %cz2180, 29
  %vs2185 = shl i64 %vz2181, 28
  %nzor2186 = or i64 %ns2182, %zs2183
  %cvor2187 = or i64 %cs2184, %vs2185
  %nzcv2188 = or i64 %nzor2186, %cvor2187
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71c0 word 0x9a98016a
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %r2191.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2191 = load i64, ptr %r2191.p, align 8, !alias.scope !3, !noalias !4
  %r2192.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2192 = load i64, ptr %r2192.p, align 8, !alias.scope !3, !noalias !4
  %fsh2194 = lshr i64 %r2192, 30
  %cond2193 = trunc i64 %fsh2194 to i1
  %sel2195 = select i1 %cond2193, i64 %r2190, i64 %r2191
  %wp2196 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel2195, ptr %wp2196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71c4 word 0x9a890108
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %r2198.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2198 = load i64, ptr %r2198.p, align 8, !alias.scope !3, !noalias !4
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %fsh2201 = lshr i64 %r2199, 30
  %cond2200 = trunc i64 %fsh2201 to i1
  %sel2202 = select i1 %cond2200, i64 %r2197, i64 %r2198
  %wp2203 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2202, ptr %wp2203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71c8 word 0xa90b226a
  %r2204.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2204 = load i64, ptr %r2204.p, align 8, !alias.scope !3, !noalias !4
  %t2205 = add i64 %r2204, 176
  %t2206 = add i64 %t2205, 8
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %gmp2208 = inttoptr i64 %t2205 to ptr
  store i64 %r2207, ptr %gmp2208, align 1, !alias.scope !4, !noalias !3
  %r2209.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2209 = load i64, ptr %r2209.p, align 8, !alias.scope !3, !noalias !4
  %gmp2210 = inttoptr i64 %t2206 to ptr
  store i64 %r2209, ptr %gmp2210, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a71cc word 0x97fb4d9b
  %wp2211 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471440, ptr %wp2211, align 8, !alias.scope !3, !noalias !4
  call void @f_80007a838(ptr %c)
  ; @pc 0x8001a71d0 word 0xaa0003f8
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %t2213 = or i64 0, %r2212
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2213, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71d4 word 0xb4ffd877
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %cmp2216 = icmp eq i64 %r2215, 0
  br i1 %cmp2216, label %L_8001a6ce0, label %L_8001a71d8_ft
L_8001a71e4:
  ; @pc 0x8001a71e4 word 0xf001c888
  %wp2221 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp2221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71e8 word 0x91368108
  %r2222.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2222 = load i64, ptr %r2222.p, align 8, !alias.scope !3, !noalias !4
  %t2223 = add i64 %r2222, 3488
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71ec word 0xf9400108
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %gmp2226 = inttoptr i64 %r2225 to ptr
  %gml2227 = load i64, ptr %gmp2226, align 1, !alias.scope !4, !noalias !3
  %wp2228 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2227, ptr %wp2228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71f0 word 0xb9404900
  %r2229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2229 = load i64, ptr %r2229.p, align 8, !alias.scope !3, !noalias !4
  %t2230 = add i64 %r2229, 72
  %gmp2231 = inttoptr i64 %t2230 to ptr
  %gml2232 = load i32, ptr %gmp2231, align 1, !alias.scope !4, !noalias !3
  %c2233 = zext i32 %gml2232 to i64
  %wp2234 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2233, ptr %wp2234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71f4 word 0x94a7f233
  %wp2235 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471480, ptr %wp2235, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8001a71f8 word 0x910022c8
  %r2236.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2236 = load i64, ptr %r2236.p, align 8, !alias.scope !3, !noalias !4
  %t2237 = add i64 %r2236, 8
  %wp2238 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2237, ptr %wp2238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71fc word 0x91022009
  %r2239.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2239 = load i64, ptr %r2239.p, align 8, !alias.scope !3, !noalias !4
  %t2240 = add i64 %r2239, 136
  %wp2241 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2240, ptr %wp2241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7200 word 0xf100001f
  %r2242.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2242 = load i64, ptr %r2242.p, align 8, !alias.scope !3, !noalias !4
  %t2243 = sub i64 %r2242, 0
  %fn2244 = icmp slt i64 %t2243, 0
  %fz2245 = icmp eq i64 %t2243, 0
  %fc2246 = icmp uge i64 %r2242, 0
  %fx12247 = xor i64 %r2242, 0
  %fx22248 = xor i64 %r2242, %t2243
  %fva2249 = and i64 %fx12247, %fx22248
  %fv2250 = icmp slt i64 %fva2249, 0
  %nz2251 = zext i1 %fn2244 to i64
  %zz2252 = zext i1 %fz2245 to i64
  %cz2253 = zext i1 %fc2246 to i64
  %vz2254 = zext i1 %fv2250 to i64
  %ns2255 = shl i64 %nz2251, 31
  %zs2256 = shl i64 %zz2252, 30
  %cs2257 = shl i64 %cz2253, 29
  %vs2258 = shl i64 %vz2254, 28
  %nzor2259 = or i64 %ns2255, %zs2256
  %cvor2260 = or i64 %cs2257, %vs2258
  %nzcv2261 = or i64 %nzor2259, %cvor2260
  %wp2262 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2261, ptr %wp2262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7204 word 0x9a890108
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %r2265.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2265 = load i64, ptr %r2265.p, align 8, !alias.scope !3, !noalias !4
  %fsh2267 = lshr i64 %r2265, 30
  %cond2266 = trunc i64 %fsh2267 to i1
  %sel2268 = select i1 %cond2266, i64 %r2263, i64 %r2264
  %wp2269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2268, ptr %wp2269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7208 word 0xf9400113
  %r2270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2270 = load i64, ptr %r2270.p, align 8, !alias.scope !3, !noalias !4
  %gmp2271 = inttoptr i64 %r2270 to ptr
  %gml2272 = load i64, ptr %gmp2271, align 1, !alias.scope !4, !noalias !3
  %wp2273 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2272, ptr %wp2273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a720c word 0xb5ffd233
  %r2274.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2274 = load i64, ptr %r2274.p, align 8, !alias.scope !3, !noalias !4
  %cmp2275 = icmp ne i64 %r2274, 0
  br i1 %cmp2275, label %L_8001a6c50, label %L_8001a7210_ft
L_8001a7214:
  ; @pc 0x8001a7214 word 0x91022276
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %t2277 = add i64 %r2276, 136
  %wp2278 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2277, ptr %wp2278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7218 word 0xaa1603e0
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %t2280 = or i64 0, %r2279
  %wp2281 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2280, ptr %wp2281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a721c word 0x94a7f391
  %wp2282 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471520, ptr %wp2282, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a7220 word 0x17ffff41
  br label %L_8001a6f24
L_8001a7224:
  ; @pc 0x8001a7224 word 0xf9405e6b
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %t2284 = add i64 %r2283, 184
  %gmp2285 = inttoptr i64 %t2284 to ptr
  %gml2286 = load i64, ptr %gmp2285, align 1, !alias.scope !4, !noalias !3
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7228 word 0x4b0803e9
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %c2289 = trunc i64 %r2288 to i32
  %t2290 = sub i32 0, %c2289
  %c2291 = zext i32 %t2290 to i64
  %wp2292 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2291, ptr %wp2292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a722c word 0xcb17016a
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %r2294.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2294 = load i64, ptr %r2294.p, align 8, !alias.scope !3, !noalias !4
  %t2295 = sub i64 %r2293, %r2294
  %wp2296 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2295, ptr %wp2296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7230 word 0xeb0a017f
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %r2298.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2298 = load i64, ptr %r2298.p, align 8, !alias.scope !3, !noalias !4
  %t2299 = sub i64 %r2297, %r2298
  %fn2300 = icmp slt i64 %t2299, 0
  %fz2301 = icmp eq i64 %t2299, 0
  %fc2302 = icmp uge i64 %r2297, %r2298
  %fx12303 = xor i64 %r2297, %r2298
  %fx22304 = xor i64 %r2297, %t2299
  %fva2305 = and i64 %fx12303, %fx22304
  %fv2306 = icmp slt i64 %fva2305, 0
  %nz2307 = zext i1 %fn2300 to i64
  %zz2308 = zext i1 %fz2301 to i64
  %cz2309 = zext i1 %fc2302 to i64
  %vz2310 = zext i1 %fv2306 to i64
  %ns2311 = shl i64 %nz2307, 31
  %zs2312 = shl i64 %zz2308, 30
  %cs2313 = shl i64 %cz2309, 29
  %vs2314 = shl i64 %vz2310, 28
  %nzor2315 = or i64 %ns2311, %zs2312
  %cvor2316 = or i64 %cs2313, %vs2314
  %nzcv2317 = or i64 %nzor2315, %cvor2316
  %wp2318 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2317, ptr %wp2318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7234 word 0x54002563
  %r2319.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2319 = load i64, ptr %r2319.p, align 8, !alias.scope !3, !noalias !4
  %fsh2321 = lshr i64 %r2319, 29
  %ftr2322 = trunc i64 %fsh2321 to i1
  %cond2320 = xor i1 %ftr2322, true
  br i1 %cond2320, label %L_8001a76e0, label %L_8001a7238_ft
L_8001a7254:
  ; @pc 0x8001a7254 word 0x93407e80
  %r2368.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2368 = load i64, ptr %r2368.p, align 8, !alias.scope !3, !noalias !4
  %t2369 = lshr i64 %r2368, 31
  %t2370 = and i64 %t2369, 1
  %t2371 = sub i64 0, %t2370
  %t2372 = and i64 %t2371, -4294967296
  %t2373 = and i64 %r2368, 4294967295
  %t2374 = or i64 %t2372, %t2373
  %wp2375 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2374, ptr %wp2375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7258 word 0xaa1503e1
  %r2376.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2376 = load i64, ptr %r2376.p, align 8, !alias.scope !3, !noalias !4
  %t2377 = or i64 0, %r2376
  %wp2378 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2377, ptr %wp2378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a725c word 0xa9484ff4
  %r2379.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2379 = load i64, ptr %r2379.p, align 8, !alias.scope !3, !noalias !4
  %t2380 = add i64 %r2379, 128
  %t2381 = add i64 %t2380, 8
  %gmp2382 = inttoptr i64 %t2380 to ptr
  %gml2383 = load i64, ptr %gmp2382, align 1, !alias.scope !4, !noalias !3
  %gmp2384 = inttoptr i64 %t2381 to ptr
  %gml2385 = load i64, ptr %gmp2384, align 1, !alias.scope !4, !noalias !3
  %wp2386 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2383, ptr %wp2386, align 8, !alias.scope !3, !noalias !4
  %wp2387 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2385, ptr %wp2387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7260 word 0xa94757f6
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %t2389 = add i64 %r2388, 112
  %t2390 = add i64 %t2389, 8
  %gmp2391 = inttoptr i64 %t2389 to ptr
  %gml2392 = load i64, ptr %gmp2391, align 1, !alias.scope !4, !noalias !3
  %gmp2393 = inttoptr i64 %t2390 to ptr
  %gml2394 = load i64, ptr %gmp2393, align 1, !alias.scope !4, !noalias !3
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2392, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  %wp2396 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2394, ptr %wp2396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7264 word 0xa9465ff8
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = add i64 %r2397, 96
  %t2399 = add i64 %t2398, 8
  %gmp2400 = inttoptr i64 %t2398 to ptr
  %gml2401 = load i64, ptr %gmp2400, align 1, !alias.scope !4, !noalias !3
  %gmp2402 = inttoptr i64 %t2399 to ptr
  %gml2403 = load i64, ptr %gmp2402, align 1, !alias.scope !4, !noalias !3
  %wp2404 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2401, ptr %wp2404, align 8, !alias.scope !3, !noalias !4
  %wp2405 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2403, ptr %wp2405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7268 word 0xa94567fa
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %t2407 = add i64 %r2406, 80
  %t2408 = add i64 %t2407, 8
  %gmp2409 = inttoptr i64 %t2407 to ptr
  %gml2410 = load i64, ptr %gmp2409, align 1, !alias.scope !4, !noalias !3
  %gmp2411 = inttoptr i64 %t2408 to ptr
  %gml2412 = load i64, ptr %gmp2411, align 1, !alias.scope !4, !noalias !3
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2410, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  %wp2414 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2412, ptr %wp2414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a726c word 0xa9446ffc
  %r2415.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2415 = load i64, ptr %r2415.p, align 8, !alias.scope !3, !noalias !4
  %t2416 = add i64 %r2415, 64
  %t2417 = add i64 %t2416, 8
  %gmp2418 = inttoptr i64 %t2416 to ptr
  %gml2419 = load i64, ptr %gmp2418, align 1, !alias.scope !4, !noalias !3
  %gmp2420 = inttoptr i64 %t2417 to ptr
  %gml2421 = load i64, ptr %gmp2420, align 1, !alias.scope !4, !noalias !3
  %wp2422 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2419, ptr %wp2422, align 8, !alias.scope !3, !noalias !4
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml2421, ptr %wp2423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7270 word 0xa9437bfd
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %t2425 = add i64 %r2424, 48
  %t2426 = add i64 %t2425, 8
  %gmp2427 = inttoptr i64 %t2425 to ptr
  %gml2428 = load i64, ptr %gmp2427, align 1, !alias.scope !4, !noalias !3
  %gmp2429 = inttoptr i64 %t2426 to ptr
  %gml2430 = load i64, ptr %gmp2429, align 1, !alias.scope !4, !noalias !3
  %wp2431 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml2428, ptr %wp2431, align 8, !alias.scope !3, !noalias !4
  %wp2432 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml2430, ptr %wp2432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7274 word 0x910243ff
  %r2433.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2433 = load i64, ptr %r2433.p, align 8, !alias.scope !3, !noalias !4
  %t2434 = add i64 %r2433, 144
  %wp2435 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2434, ptr %wp2435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7278 word 0x17fbca9a
  musttail call void @f_800099ce0(ptr %c)
  ret void
L_8001a727c:
  ; @pc 0x8001a727c word 0xaa1703e0
  %r2436.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2436 = load i64, ptr %r2436.p, align 8, !alias.scope !3, !noalias !4
  %t2437 = or i64 0, %r2436
  %wp2438 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2437, ptr %wp2438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7280 word 0x94a7f378
  %wp2439 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471620, ptr %wp2439, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a7284 word 0xaa1703f6
  %r2440.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2440 = load i64, ptr %r2440.p, align 8, !alias.scope !3, !noalias !4
  %t2441 = or i64 0, %r2440
  %wp2442 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2441, ptr %wp2442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7288 word 0x17fffe7c
  br label %L_8001a6c78
L_8001a728c:
  ; @pc 0x8001a728c word 0xb4001329
  %r2443.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2443 = load i64, ptr %r2443.p, align 8, !alias.scope !3, !noalias !4
  %cmp2444 = icmp eq i64 %r2443, 0
  br i1 %cmp2444, label %L_8001a74f0, label %L_8001a7290_ft
L_8001a72ac:
  ; @pc 0x8001a72ac word 0xf9400008
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %gmp2477 = inttoptr i64 %r2476 to ptr
  %gml2478 = load i64, ptr %gmp2477, align 1, !alias.scope !4, !noalias !3
  %wp2479 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2478, ptr %wp2479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72b0 word 0x1400003b
  br label %L_8001a739c
L_8001a72b4:
  ; @pc 0x8001a72b4 word 0xf9405e6c
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %t2481 = add i64 %r2480, 184
  %gmp2482 = inttoptr i64 %t2481 to ptr
  %gml2483 = load i64, ptr %gmp2482, align 1, !alias.scope !4, !noalias !3
  %wp2484 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2483, ptr %wp2484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72b8 word 0x2a0803fa
  %r2485.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2485 = load i64, ptr %r2485.p, align 8, !alias.scope !3, !noalias !4
  %c2486 = trunc i64 %r2485 to i32
  %t2487 = or i32 0, %c2486
  %c2488 = zext i32 %t2487 to i64
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72bc word 0x4b0a03eb
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %c2491 = trunc i64 %r2490 to i32
  %t2492 = sub i32 0, %c2491
  %c2493 = zext i32 %t2492 to i64
  %wp2494 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2493, ptr %wp2494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72c0 word 0xcb190188
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %r2496.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2496 = load i64, ptr %r2496.p, align 8, !alias.scope !3, !noalias !4
  %t2497 = sub i64 %r2495, %r2496
  %wp2498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2497, ptr %wp2498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72c4 word 0xeb08019f
  %r2499.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2499 = load i64, ptr %r2499.p, align 8, !alias.scope !3, !noalias !4
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %t2501 = sub i64 %r2499, %r2500
  %fn2502 = icmp slt i64 %t2501, 0
  %fz2503 = icmp eq i64 %t2501, 0
  %fc2504 = icmp uge i64 %r2499, %r2500
  %fx12505 = xor i64 %r2499, %r2500
  %fx22506 = xor i64 %r2499, %t2501
  %fva2507 = and i64 %fx12505, %fx22506
  %fv2508 = icmp slt i64 %fva2507, 0
  %nz2509 = zext i1 %fn2502 to i64
  %zz2510 = zext i1 %fz2503 to i64
  %cz2511 = zext i1 %fc2504 to i64
  %vz2512 = zext i1 %fv2508 to i64
  %ns2513 = shl i64 %nz2509, 31
  %zs2514 = shl i64 %zz2510, 30
  %cs2515 = shl i64 %cz2511, 29
  %vs2516 = shl i64 %vz2512, 28
  %nzor2517 = or i64 %ns2513, %zs2514
  %cvor2518 = or i64 %cs2515, %vs2516
  %nzcv2519 = or i64 %nzor2517, %cvor2518
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72c8 word 0x540000c3
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %fsh2523 = lshr i64 %r2521, 29
  %ftr2524 = trunc i64 %fsh2523 to i1
  %cond2522 = xor i1 %ftr2524, true
  br i1 %cond2522, label %L_8001a72e0, label %L_8001a72cc_ft
L_8001a72e0:
  ; @pc 0x8001a72e0 word 0x2a1a03e8
  %r2567.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2567 = load i64, ptr %r2567.p, align 8, !alias.scope !3, !noalias !4
  %c2568 = trunc i64 %r2567 to i32
  %t2569 = or i32 0, %c2568
  %c2570 = zext i32 %t2569 to i64
  %wp2571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2570, ptr %wp2571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72e4 word 0xb4fff069
  %r2572.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2572 = load i64, ptr %r2572.p, align 8, !alias.scope !3, !noalias !4
  %cmp2573 = icmp eq i64 %r2572, 0
  br i1 %cmp2573, label %L_8001a70f0, label %L_8001a72e8_ft
L_8001a7318:
  ; @pc 0x8001a7318 word 0xa900d7f3
  %r2621.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2621 = load i64, ptr %r2621.p, align 8, !alias.scope !3, !noalias !4
  %t2622 = add i64 %r2621, 8
  %t2623 = add i64 %t2622, 8
  %r2624.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2624 = load i64, ptr %r2624.p, align 8, !alias.scope !3, !noalias !4
  %gmp2625 = inttoptr i64 %t2622 to ptr
  store i64 %r2624, ptr %gmp2625, align 1, !alias.scope !4, !noalias !3
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %gmp2627 = inttoptr i64 %t2623 to ptr
  store i64 %r2626, ptr %gmp2627, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a731c word 0x910023e1
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %t2629 = add i64 %r2628, 8
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2629, ptr %wp2630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7320 word 0x2a0803f8
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %c2632 = trunc i64 %r2631 to i32
  %t2633 = or i32 0, %c2632
  %c2634 = zext i32 %t2633 to i64
  %wp2635 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2634, ptr %wp2635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7324 word 0xb9001bf4
  %r2636.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2636 = load i64, ptr %r2636.p, align 8, !alias.scope !3, !noalias !4
  %t2637 = add i64 %r2636, 24
  %r2638.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2638 = load i64, ptr %r2638.p, align 8, !alias.scope !3, !noalias !4
  %c2639 = trunc i64 %r2638 to i32
  %gmp2640 = inttoptr i64 %t2637 to ptr
  store i32 %c2639, ptr %gmp2640, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7328 word 0xf90013f9
  %r2641.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2641 = load i64, ptr %r2641.p, align 8, !alias.scope !3, !noalias !4
  %t2642 = add i64 %r2641, 32
  %r2643.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2643 = load i64, ptr %r2643.p, align 8, !alias.scope !3, !noalias !4
  %gmp2644 = inttoptr i64 %t2642 to ptr
  store i64 %r2643, ptr %gmp2644, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a732c word 0xb9002bea
  %r2645.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2645 = load i64, ptr %r2645.p, align 8, !alias.scope !3, !noalias !4
  %t2646 = add i64 %r2645, 40
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %c2648 = trunc i64 %r2647 to i32
  %gmp2649 = inttoptr i64 %t2646 to ptr
  store i32 %c2648, ptr %gmp2649, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7330 word 0xf9400009
  %r2650.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2650 = load i64, ptr %r2650.p, align 8, !alias.scope !3, !noalias !4
  %gmp2651 = inttoptr i64 %r2650 to ptr
  %gml2652 = load i64, ptr %gmp2651, align 1, !alias.scope !4, !noalias !3
  %wp2653 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2652, ptr %wp2653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7334 word 0xf9400129
  %r2654.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2654 = load i64, ptr %r2654.p, align 8, !alias.scope !3, !noalias !4
  %gmp2655 = inttoptr i64 %r2654 to ptr
  %gml2656 = load i64, ptr %gmp2655, align 1, !alias.scope !4, !noalias !3
  %wp2657 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2656, ptr %wp2657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7338 word 0xd63f0120
  %r2658.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2658 = load i64, ptr %r2658.p, align 8, !alias.scope !3, !noalias !4
  %fp2659 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2658, ptr %fp2659, align 8, !alias.scope !3, !noalias !4
  %wp2660 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471804, ptr %wp2660, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a733c word 0x2a1803e8
  %r2661.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2661 = load i64, ptr %r2661.p, align 8, !alias.scope !3, !noalias !4
  %c2662 = trunc i64 %r2661 to i32
  %t2663 = or i32 0, %c2662
  %c2664 = zext i32 %t2663 to i64
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2664, ptr %wp2665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7340 word 0x17ffff6c
  br label %L_8001a70f0
L_8001a7344:
  ; @pc 0x8001a7344 word 0xb4000179
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %cmp2667 = icmp eq i64 %r2666, 0
  br i1 %cmp2667, label %L_8001a7370, label %L_8001a7348_ft
L_8001a735c:
  ; @pc 0x8001a735c word 0xb9002bf4
  %r2691.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2691 = load i64, ptr %r2691.p, align 8, !alias.scope !3, !noalias !4
  %t2692 = add i64 %r2691, 40
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %c2694 = trunc i64 %r2693 to i32
  %gmp2695 = inttoptr i64 %t2692 to ptr
  store i32 %c2694, ptr %gmp2695, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7360 word 0x910023e1
  %r2696.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2696 = load i64, ptr %r2696.p, align 8, !alias.scope !3, !noalias !4
  %t2697 = add i64 %r2696, 8
  %wp2698 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2697, ptr %wp2698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7364 word 0xf9400008
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %gmp2700 = inttoptr i64 %r2699 to ptr
  %gml2701 = load i64, ptr %gmp2700, align 1, !alias.scope !4, !noalias !3
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2701, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7368 word 0xf9400108
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %gmp2704 = inttoptr i64 %r2703 to ptr
  %gml2705 = load i64, ptr %gmp2704, align 1, !alias.scope !4, !noalias !3
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2705, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a736c word 0xd63f0100
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %fp2708 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2707, ptr %fp2708, align 8, !alias.scope !3, !noalias !4
  %wp2709 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471856, ptr %wp2709, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a7370
L_8001a7370:
  ; @pc 0x8001a7370 word 0xaa1f03f8
  %t2710 = or i64 0, 0
  %wp2711 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2710, ptr %wp2711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7374 word 0x17fffe5c
  br label %L_8001a6ce4
L_8001a7378:
  ; @pc 0x8001a7378 word 0xb4000bd9
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %cmp2713 = icmp eq i64 %r2712, 0
  br i1 %cmp2713, label %L_8001a74f0, label %L_8001a737c_ft
L_8001a7394:
  ; @pc 0x8001a7394 word 0xf9400008
  %r2742.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2742 = load i64, ptr %r2742.p, align 8, !alias.scope !3, !noalias !4
  %gmp2743 = inttoptr i64 %r2742 to ptr
  %gml2744 = load i64, ptr %gmp2743, align 1, !alias.scope !4, !noalias !3
  %wp2745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2744, ptr %wp2745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7398 word 0x910023e1
  %r2746.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2746 = load i64, ptr %r2746.p, align 8, !alias.scope !3, !noalias !4
  %t2747 = add i64 %r2746, 8
  %wp2748 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2747, ptr %wp2748, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a739c
L_8001a739c:
  ; @pc 0x8001a739c word 0xf9400108
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %gmp2750 = inttoptr i64 %r2749 to ptr
  %gml2751 = load i64, ptr %gmp2750, align 1, !alias.scope !4, !noalias !3
  %wp2752 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2751, ptr %wp2752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73a0 word 0xd63f0100
  %r2753.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2753 = load i64, ptr %r2753.p, align 8, !alias.scope !3, !noalias !4
  %fp2754 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2753, ptr %fp2754, align 8, !alias.scope !3, !noalias !4
  %wp2755 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471908, ptr %wp2755, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a73a4 word 0x14000053
  br label %L_8001a74f0
L_8001a73a8:
  ; @pc 0x8001a73a8 word 0xb4fffe59
  %r2756.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2756 = load i64, ptr %r2756.p, align 8, !alias.scope !3, !noalias !4
  %cmp2757 = icmp eq i64 %r2756, 0
  br i1 %cmp2757, label %L_8001a7370, label %L_8001a73ac_ft
L_8001a73c4:
  ; @pc 0x8001a73c4 word 0x4b0803e9
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %c2782 = trunc i64 %r2781 to i32
  %t2783 = sub i32 0, %c2782
  %c2784 = zext i32 %t2783 to i64
  %wp2785 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2784, ptr %wp2785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73c8 word 0xaa1303e0
  %r2786.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2786 = load i64, ptr %r2786.p, align 8, !alias.scope !3, !noalias !4
  %t2787 = or i64 0, %r2786
  %wp2788 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2787, ptr %wp2788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73cc word 0xb90007e9
  %r2789.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2789 = load i64, ptr %r2789.p, align 8, !alias.scope !3, !noalias !4
  %t2790 = add i64 %r2789, 4
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %c2792 = trunc i64 %r2791 to i32
  %gmp2793 = inttoptr i64 %t2790 to ptr
  store i32 %c2792, ptr %gmp2793, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a73d0 word 0xaa1703e1
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = or i64 0, %r2794
  %wp2796 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2795, ptr %wp2796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73d4 word 0x3100211f
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %c2798 = trunc i64 %r2797 to i32
  %t2799 = add i32 %c2798, 8
  %fn2800 = icmp slt i32 %t2799, 0
  %fz2801 = icmp eq i32 %t2799, 0
  %fc2802 = icmp ult i32 %t2799, %c2798
  %fx12803 = xor i32 %c2798, %t2799
  %fx22804 = xor i32 8, %t2799
  %fva2805 = and i32 %fx12803, %fx22804
  %fv2806 = icmp slt i32 %fva2805, 0
  %nz2807 = zext i1 %fn2800 to i64
  %zz2808 = zext i1 %fz2801 to i64
  %cz2809 = zext i1 %fc2802 to i64
  %vz2810 = zext i1 %fv2806 to i64
  %ns2811 = shl i64 %nz2807, 31
  %zs2812 = shl i64 %zz2808, 30
  %cs2813 = shl i64 %cz2809, 29
  %vs2814 = shl i64 %vz2810, 28
  %nzor2815 = or i64 %ns2811, %zs2812
  %cvor2816 = or i64 %cs2813, %vs2814
  %nzcv2817 = or i64 %nzor2815, %cvor2816
  %wp2818 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2817, ptr %wp2818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73d8 word 0x540017e3
  %r2819.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2819 = load i64, ptr %r2819.p, align 8, !alias.scope !3, !noalias !4
  %fsh2821 = lshr i64 %r2819, 29
  %ftr2822 = trunc i64 %fsh2821 to i1
  %cond2820 = xor i1 %ftr2822, true
  br i1 %cond2820, label %L_8001a76d4, label %L_8001a73dc_ft
L_8001a73e0:
  ; @pc 0x8001a73e0 word 0xaa0003e8
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = or i64 0, %r2824
  %wp2826 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2825, ptr %wp2826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73e4 word 0xb5ffd5a0
  %r2827.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2827 = load i64, ptr %r2827.p, align 8, !alias.scope !3, !noalias !4
  %cmp2828 = icmp ne i64 %r2827, 0
  br i1 %cmp2828, label %L_8001a6e98, label %L_8001a73e8_ft
L_8001a73ec:
  ; @pc 0x8001a73ec word 0x7100051f
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %c2830 = trunc i64 %r2829 to i32
  %t2831 = sub i32 %c2830, 1
  %fn2832 = icmp slt i32 %t2831, 0
  %fz2833 = icmp eq i32 %t2831, 0
  %fc2834 = icmp uge i32 %c2830, 1
  %fx12835 = xor i32 %c2830, 1
  %fx22836 = xor i32 %c2830, %t2831
  %fva2837 = and i32 %fx12835, %fx22836
  %fv2838 = icmp slt i32 %fva2837, 0
  %nz2839 = zext i1 %fn2832 to i64
  %zz2840 = zext i1 %fz2833 to i64
  %cz2841 = zext i1 %fc2834 to i64
  %vz2842 = zext i1 %fv2838 to i64
  %ns2843 = shl i64 %nz2839, 31
  %zs2844 = shl i64 %zz2840, 30
  %cs2845 = shl i64 %cz2841, 29
  %vs2846 = shl i64 %vz2842, 28
  %nzor2847 = or i64 %ns2843, %zs2844
  %cvor2848 = or i64 %cs2845, %vs2846
  %nzcv2849 = or i64 %nzor2847, %cvor2848
  %wp2850 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2849, ptr %wp2850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73f0 word 0xb90007ef
  %r2851.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2851 = load i64, ptr %r2851.p, align 8, !alias.scope !3, !noalias !4
  %t2852 = add i64 %r2851, 4
  %r2853.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2853 = load i64, ptr %r2853.p, align 8, !alias.scope !3, !noalias !4
  %c2854 = trunc i64 %r2853 to i32
  %gmp2855 = inttoptr i64 %t2852 to ptr
  store i32 %c2854, ptr %gmp2855, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a73f4 word 0x54000321
  %r2856.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2856 = load i64, ptr %r2856.p, align 8, !alias.scope !3, !noalias !4
  %fsh2858 = lshr i64 %r2856, 30
  %ftr2859 = trunc i64 %fsh2858 to i1
  %cond2857 = xor i1 %ftr2859, true
  br i1 %cond2857, label %L_8001a7458, label %L_8001a73f8_ft
L_8001a73fc:
  ; @pc 0x8001a73fc word 0xf9400d8d
  %r2862.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2862 = load i64, ptr %r2862.p, align 8, !alias.scope !3, !noalias !4
  %t2863 = add i64 %r2862, 24
  %gmp2864 = inttoptr i64 %t2863 to ptr
  %gml2865 = load i64, ptr %gmp2864, align 1, !alias.scope !4, !noalias !3
  %wp2866 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2865, ptr %wp2866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7400 word 0xeb1701bf
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %r2868.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2868 = load i64, ptr %r2868.p, align 8, !alias.scope !3, !noalias !4
  %t2869 = sub i64 %r2867, %r2868
  %fn2870 = icmp slt i64 %t2869, 0
  %fz2871 = icmp eq i64 %t2869, 0
  %fc2872 = icmp uge i64 %r2867, %r2868
  %fx12873 = xor i64 %r2867, %r2868
  %fx22874 = xor i64 %r2867, %t2869
  %fva2875 = and i64 %fx12873, %fx22874
  %fv2876 = icmp slt i64 %fva2875, 0
  %nz2877 = zext i1 %fn2870 to i64
  %zz2878 = zext i1 %fz2871 to i64
  %cz2879 = zext i1 %fc2872 to i64
  %vz2880 = zext i1 %fv2876 to i64
  %ns2881 = shl i64 %nz2877, 31
  %zs2882 = shl i64 %zz2878, 30
  %cs2883 = shl i64 %cz2879, 29
  %vs2884 = shl i64 %vz2880, 28
  %nzor2885 = or i64 %ns2881, %zs2882
  %cvor2886 = or i64 %cs2883, %vs2884
  %nzcv2887 = or i64 %nzor2885, %cvor2886
  %wp2888 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2887, ptr %wp2888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7404 word 0x540000c3
  %r2889.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2889 = load i64, ptr %r2889.p, align 8, !alias.scope !3, !noalias !4
  %fsh2891 = lshr i64 %r2889, 29
  %ftr2892 = trunc i64 %fsh2891 to i1
  %cond2890 = xor i1 %ftr2892, true
  br i1 %cond2890, label %L_8001a741c, label %L_8001a7408_ft
L_8001a7418:
  ; @pc 0x8001a7418 word 0xaa0c03e8
  %r2930.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2930 = load i64, ptr %r2930.p, align 8, !alias.scope !3, !noalias !4
  %t2931 = or i64 0, %r2930
  %wp2932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2931, ptr %wp2932, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a741c
L_8001a741c:
  ; @pc 0x8001a741c word 0x8b0a018c
  %r2933.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2933 = load i64, ptr %r2933.p, align 8, !alias.scope !3, !noalias !4
  %r2934.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2934 = load i64, ptr %r2934.p, align 8, !alias.scope !3, !noalias !4
  %t2935 = add i64 %r2933, %r2934
  %wp2936 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2935, ptr %wp2936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7420 word 0xf940058c
  %r2937.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2937 = load i64, ptr %r2937.p, align 8, !alias.scope !3, !noalias !4
  %t2938 = add i64 %r2937, 8
  %gmp2939 = inttoptr i64 %t2938 to ptr
  %gml2940 = load i64, ptr %gmp2939, align 1, !alias.scope !4, !noalias !3
  %wp2941 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2940, ptr %wp2941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7424 word 0x8b09018c
  %r2942.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2942 = load i64, ptr %r2942.p, align 8, !alias.scope !3, !noalias !4
  %r2943.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2943 = load i64, ptr %r2943.p, align 8, !alias.scope !3, !noalias !4
  %t2944 = add i64 %r2942, %r2943
  %wp2945 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2944, ptr %wp2945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7428 word 0xeb0b019f
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %t2948 = sub i64 %r2946, %r2947
  %fn2949 = icmp slt i64 %t2948, 0
  %fz2950 = icmp eq i64 %t2948, 0
  %fc2951 = icmp uge i64 %r2946, %r2947
  %fx12952 = xor i64 %r2946, %r2947
  %fx22953 = xor i64 %r2946, %t2948
  %fva2954 = and i64 %fx12952, %fx22953
  %fv2955 = icmp slt i64 %fva2954, 0
  %nz2956 = zext i1 %fn2949 to i64
  %zz2957 = zext i1 %fz2950 to i64
  %cz2958 = zext i1 %fc2951 to i64
  %vz2959 = zext i1 %fv2955 to i64
  %ns2960 = shl i64 %nz2956, 31
  %zs2961 = shl i64 %zz2957, 30
  %cs2962 = shl i64 %cz2958, 29
  %vs2963 = shl i64 %vz2959, 28
  %nzor2964 = or i64 %ns2960, %zs2961
  %cvor2965 = or i64 %cs2962, %vs2963
  %nzcv2966 = or i64 %nzor2964, %cvor2965
  %wp2967 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2966, ptr %wp2967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a742c word 0x54fffe81
  %r2968.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2968 = load i64, ptr %r2968.p, align 8, !alias.scope !3, !noalias !4
  %fsh2970 = lshr i64 %r2968, 30
  %ftr2971 = trunc i64 %fsh2970 to i1
  %cond2969 = xor i1 %ftr2971, true
  br i1 %cond2969, label %L_8001a73fc, label %L_8001a7430
L_8001a7430:
  ; @pc 0x8001a7430 word 0xb40005a8
  %r2972.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2972 = load i64, ptr %r2972.p, align 8, !alias.scope !3, !noalias !4
  %cmp2973 = icmp eq i64 %r2972, 0
  br i1 %cmp2973, label %L_8001a74e4, label %L_8001a7434_ft
L_8001a743c:
  ; @pc 0x8001a743c word 0xaa0803fb
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %t2980 = or i64 0, %r2979
  %wp2981 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2980, ptr %wp2981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7440 word 0x94980a12
  %wp2982 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361472068, ptr %wp2982, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a7444 word 0xaa1b03e8
  %r2983.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2983 = load i64, ptr %r2983.p, align 8, !alias.scope !3, !noalias !4
  %t2984 = or i64 0, %r2983
  %wp2985 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2984, ptr %wp2985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7448 word 0x17fffe7b
  br label %L_8001a6e34
L_8001a744c:
  ; @pc 0x8001a744c word 0x2a1a03e8
  %r2986.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2986 = load i64, ptr %r2986.p, align 8, !alias.scope !3, !noalias !4
  %c2987 = trunc i64 %r2986 to i32
  %t2988 = or i32 0, %c2987
  %c2989 = zext i32 %t2988 to i64
  %wp2990 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2989, ptr %wp2990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7450 word 0xf9005e78
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %t2992 = add i64 %r2991, 184
  %r2993.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2993 = load i64, ptr %r2993.p, align 8, !alias.scope !3, !noalias !4
  %gmp2994 = inttoptr i64 %t2992 to ptr
  store i64 %r2993, ptr %gmp2994, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7454 word 0x17fffe22
  br label %L_8001a6cdc
L_8001a7458:
  ; @pc 0x8001a7458 word 0x7100091f
  %r2995.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2995 = load i64, ptr %r2995.p, align 8, !alias.scope !3, !noalias !4
  %c2996 = trunc i64 %r2995 to i32
  %t2997 = sub i32 %c2996, 2
  %fn2998 = icmp slt i32 %t2997, 0
  %fz2999 = icmp eq i32 %t2997, 0
  %fc3000 = icmp uge i32 %c2996, 2
  %fx13001 = xor i32 %c2996, 2
  %fx23002 = xor i32 %c2996, %t2997
  %fva3003 = and i32 %fx13001, %fx23002
  %fv3004 = icmp slt i32 %fva3003, 0
  %nz3005 = zext i1 %fn2998 to i64
  %zz3006 = zext i1 %fz2999 to i64
  %cz3007 = zext i1 %fc3000 to i64
  %vz3008 = zext i1 %fv3004 to i64
  %ns3009 = shl i64 %nz3005, 31
  %zs3010 = shl i64 %zz3006, 30
  %cs3011 = shl i64 %cz3007, 29
  %vs3012 = shl i64 %vz3008, 28
  %nzor3013 = or i64 %ns3009, %zs3010
  %cvor3014 = or i64 %cs3011, %vs3012
  %nzcv3015 = or i64 %nzor3013, %cvor3014
  %wp3016 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3015, ptr %wp3016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a745c word 0x54000201
  %r3017.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3017 = load i64, ptr %r3017.p, align 8, !alias.scope !3, !noalias !4
  %fsh3019 = lshr i64 %r3017, 30
  %ftr3020 = trunc i64 %fsh3019 to i1
  %cond3018 = xor i1 %ftr3020, true
  br i1 %cond3018, label %L_8001a749c, label %L_8001a7460_ft
L_8001a7464:
  ; @pc 0x8001a7464 word 0xf9400d8d
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %t3024 = add i64 %r3023, 24
  %gmp3025 = inttoptr i64 %t3024 to ptr
  %gml3026 = load i64, ptr %gmp3025, align 1, !alias.scope !4, !noalias !3
  %wp3027 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3026, ptr %wp3027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7468 word 0xeb1701bf
  %r3028.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3028 = load i64, ptr %r3028.p, align 8, !alias.scope !3, !noalias !4
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %t3030 = sub i64 %r3028, %r3029
  %fn3031 = icmp slt i64 %t3030, 0
  %fz3032 = icmp eq i64 %t3030, 0
  %fc3033 = icmp uge i64 %r3028, %r3029
  %fx13034 = xor i64 %r3028, %r3029
  %fx23035 = xor i64 %r3028, %t3030
  %fva3036 = and i64 %fx13034, %fx23035
  %fv3037 = icmp slt i64 %fva3036, 0
  %nz3038 = zext i1 %fn3031 to i64
  %zz3039 = zext i1 %fz3032 to i64
  %cz3040 = zext i1 %fc3033 to i64
  %vz3041 = zext i1 %fv3037 to i64
  %ns3042 = shl i64 %nz3038, 31
  %zs3043 = shl i64 %zz3039, 30
  %cs3044 = shl i64 %cz3040, 29
  %vs3045 = shl i64 %vz3041, 28
  %nzor3046 = or i64 %ns3042, %zs3043
  %cvor3047 = or i64 %cs3044, %vs3045
  %nzcv3048 = or i64 %nzor3046, %cvor3047
  %wp3049 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3048, ptr %wp3049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a746c word 0x540000c3
  %r3050.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3050 = load i64, ptr %r3050.p, align 8, !alias.scope !3, !noalias !4
  %fsh3052 = lshr i64 %r3050, 29
  %ftr3053 = trunc i64 %fsh3052 to i1
  %cond3051 = xor i1 %ftr3053, true
  br i1 %cond3051, label %L_8001a7484, label %L_8001a7470_ft
L_8001a7480:
  ; @pc 0x8001a7480 word 0xaa0c03e8
  %r3086.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3086 = load i64, ptr %r3086.p, align 8, !alias.scope !3, !noalias !4
  %t3087 = or i64 0, %r3086
  %wp3088 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3087, ptr %wp3088, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7484
L_8001a7484:
  ; @pc 0x8001a7484 word 0x8b0a018c
  %r3089.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3089 = load i64, ptr %r3089.p, align 8, !alias.scope !3, !noalias !4
  %r3090.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3090 = load i64, ptr %r3090.p, align 8, !alias.scope !3, !noalias !4
  %t3091 = add i64 %r3089, %r3090
  %wp3092 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3091, ptr %wp3092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7488 word 0xf940058c
  %r3093.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3093 = load i64, ptr %r3093.p, align 8, !alias.scope !3, !noalias !4
  %t3094 = add i64 %r3093, 8
  %gmp3095 = inttoptr i64 %t3094 to ptr
  %gml3096 = load i64, ptr %gmp3095, align 1, !alias.scope !4, !noalias !3
  %wp3097 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3096, ptr %wp3097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a748c word 0x8b09018c
  %r3098.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3098 = load i64, ptr %r3098.p, align 8, !alias.scope !3, !noalias !4
  %r3099.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3099 = load i64, ptr %r3099.p, align 8, !alias.scope !3, !noalias !4
  %t3100 = add i64 %r3098, %r3099
  %wp3101 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3100, ptr %wp3101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7490 word 0xeb0b019f
  %r3102.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3102 = load i64, ptr %r3102.p, align 8, !alias.scope !3, !noalias !4
  %r3103.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3103 = load i64, ptr %r3103.p, align 8, !alias.scope !3, !noalias !4
  %t3104 = sub i64 %r3102, %r3103
  %fn3105 = icmp slt i64 %t3104, 0
  %fz3106 = icmp eq i64 %t3104, 0
  %fc3107 = icmp uge i64 %r3102, %r3103
  %fx13108 = xor i64 %r3102, %r3103
  %fx23109 = xor i64 %r3102, %t3104
  %fva3110 = and i64 %fx13108, %fx23109
  %fv3111 = icmp slt i64 %fva3110, 0
  %nz3112 = zext i1 %fn3105 to i64
  %zz3113 = zext i1 %fz3106 to i64
  %cz3114 = zext i1 %fc3107 to i64
  %vz3115 = zext i1 %fv3111 to i64
  %ns3116 = shl i64 %nz3112, 31
  %zs3117 = shl i64 %zz3113, 30
  %cs3118 = shl i64 %cz3114, 29
  %vs3119 = shl i64 %vz3115, 28
  %nzor3120 = or i64 %ns3116, %zs3117
  %cvor3121 = or i64 %cs3118, %vs3119
  %nzcv3122 = or i64 %nzor3120, %cvor3121
  %wp3123 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3122, ptr %wp3123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7494 word 0x54fffe81
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %fsh3126 = lshr i64 %r3124, 30
  %ftr3127 = trunc i64 %fsh3126 to i1
  %cond3125 = xor i1 %ftr3127, true
  br i1 %cond3125, label %L_8001a7464, label %L_8001a7498_ft
L_8001a749c:
  ; @pc 0x8001a749c word 0xaa1f03e8
  %t3128 = or i64 0, 0
  %wp3129 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3128, ptr %wp3129, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a74a0
L_8001a74a0:
  ; @pc 0x8001a74a0 word 0xf100011f
  %r3130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3130 = load i64, ptr %r3130.p, align 8, !alias.scope !3, !noalias !4
  %t3131 = sub i64 %r3130, 0
  %fn3132 = icmp slt i64 %t3131, 0
  %fz3133 = icmp eq i64 %t3131, 0
  %fc3134 = icmp uge i64 %r3130, 0
  %fx13135 = xor i64 %r3130, 0
  %fx23136 = xor i64 %r3130, %t3131
  %fva3137 = and i64 %fx13135, %fx23136
  %fv3138 = icmp slt i64 %fva3137, 0
  %nz3139 = zext i1 %fn3132 to i64
  %zz3140 = zext i1 %fz3133 to i64
  %cz3141 = zext i1 %fc3134 to i64
  %vz3142 = zext i1 %fv3138 to i64
  %ns3143 = shl i64 %nz3139, 31
  %zs3144 = shl i64 %zz3140, 30
  %cs3145 = shl i64 %cz3141, 29
  %vs3146 = shl i64 %vz3142, 28
  %nzor3147 = or i64 %ns3143, %zs3144
  %cvor3148 = or i64 %cs3145, %vs3146
  %nzcv3149 = or i64 %nzor3147, %cvor3148
  %wp3150 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3149, ptr %wp3150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74a4 word 0xf9400d8d
  %r3151.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3151 = load i64, ptr %r3151.p, align 8, !alias.scope !3, !noalias !4
  %t3152 = add i64 %r3151, 24
  %gmp3153 = inttoptr i64 %t3152 to ptr
  %gml3154 = load i64, ptr %gmp3153, align 1, !alias.scope !4, !noalias !3
  %wp3155 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3154, ptr %wp3155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74a8 word 0x9a88018e
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %r3157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3157 = load i64, ptr %r3157.p, align 8, !alias.scope !3, !noalias !4
  %r3158.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3158 = load i64, ptr %r3158.p, align 8, !alias.scope !3, !noalias !4
  %fsh3160 = lshr i64 %r3158, 30
  %cond3159 = trunc i64 %fsh3160 to i1
  %sel3161 = select i1 %cond3159, i64 %r3156, i64 %r3157
  %wp3162 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %sel3161, ptr %wp3162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74ac word 0x8b0a018c
  %r3163.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3163 = load i64, ptr %r3163.p, align 8, !alias.scope !3, !noalias !4
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3163, %r3164
  %wp3166 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3165, ptr %wp3166, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74b0 word 0xf940058c
  %r3167.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3167 = load i64, ptr %r3167.p, align 8, !alias.scope !3, !noalias !4
  %t3168 = add i64 %r3167, 8
  %gmp3169 = inttoptr i64 %t3168 to ptr
  %gml3170 = load i64, ptr %gmp3169, align 1, !alias.scope !4, !noalias !3
  %wp3171 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3170, ptr %wp3171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74b4 word 0xeb1701bf
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %r3173.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3173 = load i64, ptr %r3173.p, align 8, !alias.scope !3, !noalias !4
  %t3174 = sub i64 %r3172, %r3173
  %fn3175 = icmp slt i64 %t3174, 0
  %fz3176 = icmp eq i64 %t3174, 0
  %fc3177 = icmp uge i64 %r3172, %r3173
  %fx13178 = xor i64 %r3172, %r3173
  %fx23179 = xor i64 %r3172, %t3174
  %fva3180 = and i64 %fx13178, %fx23179
  %fv3181 = icmp slt i64 %fva3180, 0
  %nz3182 = zext i1 %fn3175 to i64
  %zz3183 = zext i1 %fz3176 to i64
  %cz3184 = zext i1 %fc3177 to i64
  %vz3185 = zext i1 %fv3181 to i64
  %ns3186 = shl i64 %nz3182, 31
  %zs3187 = shl i64 %zz3183, 30
  %cs3188 = shl i64 %cz3184, 29
  %vs3189 = shl i64 %vz3185, 28
  %nzor3190 = or i64 %ns3186, %zs3187
  %cvor3191 = or i64 %cs3188, %vs3189
  %nzcv3192 = or i64 %nzor3190, %cvor3191
  %wp3193 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3192, ptr %wp3193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74b8 word 0x9a8e3108
  %r3194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3194 = load i64, ptr %r3194.p, align 8, !alias.scope !3, !noalias !4
  %r3195.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3195 = load i64, ptr %r3195.p, align 8, !alias.scope !3, !noalias !4
  %r3196.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3196 = load i64, ptr %r3196.p, align 8, !alias.scope !3, !noalias !4
  %fsh3198 = lshr i64 %r3196, 29
  %ftr3199 = trunc i64 %fsh3198 to i1
  %cond3197 = xor i1 %ftr3199, true
  %sel3200 = select i1 %cond3197, i64 %r3194, i64 %r3195
  %wp3201 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3200, ptr %wp3201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74bc word 0x8b09018c
  %r3202.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3202 = load i64, ptr %r3202.p, align 8, !alias.scope !3, !noalias !4
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %t3204 = add i64 %r3202, %r3203
  %wp3205 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3204, ptr %wp3205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74c0 word 0xeb0b019f
  %r3206.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3206 = load i64, ptr %r3206.p, align 8, !alias.scope !3, !noalias !4
  %r3207.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3207 = load i64, ptr %r3207.p, align 8, !alias.scope !3, !noalias !4
  %t3208 = sub i64 %r3206, %r3207
  %fn3209 = icmp slt i64 %t3208, 0
  %fz3210 = icmp eq i64 %t3208, 0
  %fc3211 = icmp uge i64 %r3206, %r3207
  %fx13212 = xor i64 %r3206, %r3207
  %fx23213 = xor i64 %r3206, %t3208
  %fva3214 = and i64 %fx13212, %fx23213
  %fv3215 = icmp slt i64 %fva3214, 0
  %nz3216 = zext i1 %fn3209 to i64
  %zz3217 = zext i1 %fz3210 to i64
  %cz3218 = zext i1 %fc3211 to i64
  %vz3219 = zext i1 %fv3215 to i64
  %ns3220 = shl i64 %nz3216, 31
  %zs3221 = shl i64 %zz3217, 30
  %cs3222 = shl i64 %cz3218, 29
  %vs3223 = shl i64 %vz3219, 28
  %nzor3224 = or i64 %ns3220, %zs3221
  %cvor3225 = or i64 %cs3222, %vs3223
  %nzcv3226 = or i64 %nzor3224, %cvor3225
  %wp3227 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3226, ptr %wp3227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74c4 word 0x54fffee1
  %r3228.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3228 = load i64, ptr %r3228.p, align 8, !alias.scope !3, !noalias !4
  %fsh3230 = lshr i64 %r3228, 30
  %ftr3231 = trunc i64 %fsh3230 to i1
  %cond3229 = xor i1 %ftr3231, true
  br i1 %cond3229, label %L_8001a74a0, label %L_8001a74c8_ft
L_8001a74cc:
  ; @pc 0x8001a74cc word 0x8b0a0108
  %r3232.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3232 = load i64, ptr %r3232.p, align 8, !alias.scope !3, !noalias !4
  %r3233.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3233 = load i64, ptr %r3233.p, align 8, !alias.scope !3, !noalias !4
  %t3234 = add i64 %r3232, %r3233
  %wp3235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3234, ptr %wp3235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74d0 word 0xf9400508
  %r3236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3236 = load i64, ptr %r3236.p, align 8, !alias.scope !3, !noalias !4
  %t3237 = add i64 %r3236, 8
  %gmp3238 = inttoptr i64 %t3237 to ptr
  %gml3239 = load i64, ptr %gmp3238, align 1, !alias.scope !4, !noalias !3
  %wp3240 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3239, ptr %wp3240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74d4 word 0x8b090108
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %r3242.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3242 = load i64, ptr %r3242.p, align 8, !alias.scope !3, !noalias !4
  %t3243 = add i64 %r3241, %r3242
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74d8 word 0xeb0b011f
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 88
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
  ; @pc 0x8001a74dc word 0x54ffd581
  %r3267.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3267 = load i64, ptr %r3267.p, align 8, !alias.scope !3, !noalias !4
  %fsh3269 = lshr i64 %r3267, 30
  %ftr3270 = trunc i64 %fsh3269 to i1
  %cond3268 = xor i1 %ftr3270, true
  br i1 %cond3268, label %L_8001a6f8c, label %L_8001a74e0
L_8001a74e0:
  ; @pc 0x8001a74e0 word 0xb90007ef
  %r3271.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3271 = load i64, ptr %r3271.p, align 8, !alias.scope !3, !noalias !4
  %t3272 = add i64 %r3271, 4
  %r3273.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3273 = load i64, ptr %r3273.p, align 8, !alias.scope !3, !noalias !4
  %c3274 = trunc i64 %r3273 to i32
  %gmp3275 = inttoptr i64 %t3272 to ptr
  store i32 %c3274, ptr %gmp3275, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a74e4
L_8001a74e4:
  ; @pc 0x8001a74e4 word 0xb4000079
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %cmp3277 = icmp eq i64 %r3276, 0
  br i1 %cmp3277, label %L_8001a74f0, label %L_8001a74e8_ft
L_8001a74f0:
  ; @pc 0x8001a74f0 word 0xaa1f03f8
  %t3285 = or i64 0, 0
  %wp3286 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3285, ptr %wp3286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74f4 word 0x17fffdfb
  br label %L_8001a6ce0
L_8001a74f8:
  ; @pc 0x8001a74f8 word 0x7100061f
  %r3287.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3287 = load i64, ptr %r3287.p, align 8, !alias.scope !3, !noalias !4
  %c3288 = trunc i64 %r3287 to i32
  %t3289 = sub i32 %c3288, 1
  %fn3290 = icmp slt i32 %t3289, 0
  %fz3291 = icmp eq i32 %t3289, 0
  %fc3292 = icmp uge i32 %c3288, 1
  %fx13293 = xor i32 %c3288, 1
  %fx23294 = xor i32 %c3288, %t3289
  %fva3295 = and i32 %fx13293, %fx23294
  %fv3296 = icmp slt i32 %fva3295, 0
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
  ; @pc 0x8001a74fc word 0xb90007ef
  %r3309.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3309 = load i64, ptr %r3309.p, align 8, !alias.scope !3, !noalias !4
  %t3310 = add i64 %r3309, 4
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %c3312 = trunc i64 %r3311 to i32
  %gmp3313 = inttoptr i64 %t3310 to ptr
  store i32 %c3312, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7500 word 0x540005a1
  %r3314.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3314 = load i64, ptr %r3314.p, align 8, !alias.scope !3, !noalias !4
  %fsh3316 = lshr i64 %r3314, 30
  %ftr3317 = trunc i64 %fsh3316 to i1
  %cond3315 = xor i1 %ftr3317, true
  br i1 %cond3315, label %L_8001a75b4, label %L_8001a7504_ft
L_8001a7508:
  ; @pc 0x8001a7508 word 0xf9400d8f
  %r3320.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3320 = load i64, ptr %r3320.p, align 8, !alias.scope !3, !noalias !4
  %t3321 = add i64 %r3320, 24
  %gmp3322 = inttoptr i64 %t3321 to ptr
  %gml3323 = load i64, ptr %gmp3322, align 1, !alias.scope !4, !noalias !3
  %wp3324 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3323, ptr %wp3324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a750c word 0xeb1701ff
  %r3325.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3325 = load i64, ptr %r3325.p, align 8, !alias.scope !3, !noalias !4
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %t3327 = sub i64 %r3325, %r3326
  %fn3328 = icmp slt i64 %t3327, 0
  %fz3329 = icmp eq i64 %t3327, 0
  %fc3330 = icmp uge i64 %r3325, %r3326
  %fx13331 = xor i64 %r3325, %r3326
  %fx23332 = xor i64 %r3325, %t3327
  %fva3333 = and i64 %fx13331, %fx23332
  %fv3334 = icmp slt i64 %fva3333, 0
  %nz3335 = zext i1 %fn3328 to i64
  %zz3336 = zext i1 %fz3329 to i64
  %cz3337 = zext i1 %fc3330 to i64
  %vz3338 = zext i1 %fv3334 to i64
  %ns3339 = shl i64 %nz3335, 31
  %zs3340 = shl i64 %zz3336, 30
  %cs3341 = shl i64 %cz3337, 29
  %vs3342 = shl i64 %vz3338, 28
  %nzor3343 = or i64 %ns3339, %zs3340
  %cvor3344 = or i64 %cs3341, %vs3342
  %nzcv3345 = or i64 %nzor3343, %cvor3344
  %wp3346 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3345, ptr %wp3346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7510 word 0x540000e2
  %r3347.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3347 = load i64, ptr %r3347.p, align 8, !alias.scope !3, !noalias !4
  %fsh3349 = lshr i64 %r3347, 29
  %cond3348 = trunc i64 %fsh3349 to i1
  br i1 %cond3348, label %L_8001a752c, label %L_8001a7514
L_8001a7514:
  ; @pc 0x8001a7514 word 0x8b0a018c
  %r3350.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3350 = load i64, ptr %r3350.p, align 8, !alias.scope !3, !noalias !4
  %r3351.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3351 = load i64, ptr %r3351.p, align 8, !alias.scope !3, !noalias !4
  %t3352 = add i64 %r3350, %r3351
  %wp3353 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3352, ptr %wp3353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7518 word 0xf940058c
  %r3354.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3354 = load i64, ptr %r3354.p, align 8, !alias.scope !3, !noalias !4
  %t3355 = add i64 %r3354, 8
  %gmp3356 = inttoptr i64 %t3355 to ptr
  %gml3357 = load i64, ptr %gmp3356, align 1, !alias.scope !4, !noalias !3
  %wp3358 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3357, ptr %wp3358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a751c word 0x8b09018c
  %r3359.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3359 = load i64, ptr %r3359.p, align 8, !alias.scope !3, !noalias !4
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %t3361 = add i64 %r3359, %r3360
  %wp3362 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3361, ptr %wp3362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7520 word 0xeb0b019f
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %t3365 = sub i64 %r3363, %r3364
  %fn3366 = icmp slt i64 %t3365, 0
  %fz3367 = icmp eq i64 %t3365, 0
  %fc3368 = icmp uge i64 %r3363, %r3364
  %fx13369 = xor i64 %r3363, %r3364
  %fx23370 = xor i64 %r3363, %t3365
  %fva3371 = and i64 %fx13369, %fx23370
  %fv3372 = icmp slt i64 %fva3371, 0
  %nz3373 = zext i1 %fn3366 to i64
  %zz3374 = zext i1 %fz3367 to i64
  %cz3375 = zext i1 %fc3368 to i64
  %vz3376 = zext i1 %fv3372 to i64
  %ns3377 = shl i64 %nz3373, 31
  %zs3378 = shl i64 %zz3374, 30
  %cs3379 = shl i64 %cz3375, 29
  %vs3380 = shl i64 %vz3376, 28
  %nzor3381 = or i64 %ns3377, %zs3378
  %cvor3382 = or i64 %cs3379, %vs3380
  %nzcv3383 = or i64 %nzor3381, %cvor3382
  %wp3384 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3383, ptr %wp3384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7524 word 0x54ffff21
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %fsh3387 = lshr i64 %r3385, 30
  %ftr3388 = trunc i64 %fsh3387 to i1
  %cond3386 = xor i1 %ftr3388, true
  br i1 %cond3386, label %L_8001a7508, label %L_8001a7528_ft
L_8001a752c:
  ; @pc 0x8001a752c word 0x79402590
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %t3390 = add i64 %r3389, 18
  %gmp3391 = inttoptr i64 %t3390 to ptr
  %gml3392 = load i16, ptr %gmp3391, align 1, !alias.scope !4, !noalias !3
  %c3393 = zext i16 %gml3392 to i64
  %wp3394 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3393, ptr %wp3394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7530 word 0x8b100190
  %r3395.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3395 = load i64, ptr %r3395.p, align 8, !alias.scope !3, !noalias !4
  %r3396.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3396 = load i64, ptr %r3396.p, align 8, !alias.scope !3, !noalias !4
  %t3397 = add i64 %r3395, %r3396
  %wp3398 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3397, ptr %wp3398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7534 word 0x91008210
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %t3400 = add i64 %r3399, 32
  %wp3401 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3400, ptr %wp3401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7538 word 0x8b0d0211
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %r3403.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3403 = load i64, ptr %r3403.p, align 8, !alias.scope !3, !noalias !4
  %t3404 = add i64 %r3402, %r3403
  %wp3405 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3404, ptr %wp3405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a753c word 0xcb1002f0
  %r3406.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3406 = load i64, ptr %r3406.p, align 8, !alias.scope !3, !noalias !4
  %r3407.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3407 = load i64, ptr %r3407.p, align 8, !alias.scope !3, !noalias !4
  %t3408 = sub i64 %r3406, %r3407
  %wp3409 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3408, ptr %wp3409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7540 word 0x8a0e0231
  %r3410.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3410 = load i64, ptr %r3410.p, align 8, !alias.scope !3, !noalias !4
  %r3411.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3411 = load i64, ptr %r3411.p, align 8, !alias.scope !3, !noalias !4
  %t3412 = and i64 %r3411, %r3410
  %wp3413 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3412, ptr %wp3413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7544 word 0x8b110210
  %r3414.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3414 = load i64, ptr %r3414.p, align 8, !alias.scope !3, !noalias !4
  %r3415.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3415 = load i64, ptr %r3415.p, align 8, !alias.scope !3, !noalias !4
  %t3416 = add i64 %r3414, %r3415
  %wp3417 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3416, ptr %wp3417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7548 word 0xeb1001ff
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %r3419.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3419 = load i64, ptr %r3419.p, align 8, !alias.scope !3, !noalias !4
  %t3420 = sub i64 %r3418, %r3419
  %fn3421 = icmp slt i64 %t3420, 0
  %fz3422 = icmp eq i64 %t3420, 0
  %fc3423 = icmp uge i64 %r3418, %r3419
  %fx13424 = xor i64 %r3418, %r3419
  %fx23425 = xor i64 %r3418, %t3420
  %fva3426 = and i64 %fx13424, %fx23425
  %fv3427 = icmp slt i64 %fva3426, 0
  %nz3428 = zext i1 %fn3421 to i64
  %zz3429 = zext i1 %fz3422 to i64
  %cz3430 = zext i1 %fc3423 to i64
  %vz3431 = zext i1 %fv3427 to i64
  %ns3432 = shl i64 %nz3428, 31
  %zs3433 = shl i64 %zz3429, 30
  %cs3434 = shl i64 %cz3430, 29
  %vs3435 = shl i64 %vz3431, 28
  %nzor3436 = or i64 %ns3432, %zs3433
  %cvor3437 = or i64 %cs3434, %vs3435
  %nzcv3438 = or i64 %nzor3436, %cvor3437
  %wp3439 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3438, ptr %wp3439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a754c word 0x54fffe43
  %r3440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3440 = load i64, ptr %r3440.p, align 8, !alias.scope !3, !noalias !4
  %fsh3442 = lshr i64 %r3440, 29
  %ftr3443 = trunc i64 %fsh3442 to i1
  %cond3441 = xor i1 %ftr3443, true
  br i1 %cond3441, label %L_8001a7514, label %L_8001a7550_ft
L_8001a7560:
  ; @pc 0x8001a7560 word 0xaa0c03e8
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %t3482 = or i64 0, %r3481
  %wp3483 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3482, ptr %wp3483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7564 word 0x17ffffec
  br label %L_8001a7514
L_8001a7568:
  ; @pc 0x8001a7568 word 0xd100812a
  %r3484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3484 = load i64, ptr %r3484.p, align 8, !alias.scope !3, !noalias !4
  %t3485 = sub i64 %r3484, 32
  %wp3486 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3485, ptr %wp3486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a756c word 0x7900251f
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %t3488 = add i64 %r3487, 18
  %c3489 = trunc i32 0 to i16
  %gmp3490 = inttoptr i64 %t3488 to ptr
  store i16 %c3489, ptr %gmp3490, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7570 word 0xf9000d0a
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %t3492 = add i64 %r3491, 24
  %r3493.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3493 = load i64, ptr %r3493.p, align 8, !alias.scope !3, !noalias !4
  %gmp3494 = inttoptr i64 %t3492 to ptr
  store i64 %r3493, ptr %gmp3494, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7574 word 0x8b080128
  %r3495.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3495 = load i64, ptr %r3495.p, align 8, !alias.scope !3, !noalias !4
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %t3497 = add i64 %r3495, %r3496
  %wp3498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3497, ptr %wp3498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7578 word 0xb900111f
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %t3500 = add i64 %r3499, 16
  %gmp3501 = inttoptr i64 %t3500 to ptr
  store i32 0, ptr %gmp3501, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a757c word 0xf9000d17
  %r3502.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3502 = load i64, ptr %r3502.p, align 8, !alias.scope !3, !noalias !4
  %t3503 = add i64 %r3502, 24
  %r3504.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3504 = load i64, ptr %r3504.p, align 8, !alias.scope !3, !noalias !4
  %gmp3505 = inttoptr i64 %t3503 to ptr
  store i64 %r3504, ptr %gmp3505, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7580 word 0xa9007d1f
  %r3506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3506 = load i64, ptr %r3506.p, align 8, !alias.scope !3, !noalias !4
  %t3507 = add i64 %r3506, 8
  %gmp3508 = inttoptr i64 %r3506 to ptr
  store i64 0, ptr %gmp3508, align 1, !alias.scope !4, !noalias !3
  %gmp3509 = inttoptr i64 %t3507 to ptr
  store i64 0, ptr %gmp3509, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7584 word 0x17fffeb0
  br label %L_8001a7044
L_8001a7588:
  ; @pc 0x8001a7588 word 0xaa0803fa
  %r3510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3510 = load i64, ptr %r3510.p, align 8, !alias.scope !3, !noalias !4
  %t3511 = or i64 0, %r3510
  %wp3512 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3511, ptr %wp3512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a758c word 0xaa0c03fb
  %r3513.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3513 = load i64, ptr %r3513.p, align 8, !alias.scope !3, !noalias !4
  %t3514 = or i64 0, %r3513
  %wp3515 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3514, ptr %wp3515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7590 word 0x949809be
  %wp3516 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361472404, ptr %wp3516, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a7594 word 0xaa1b03ec
  %r3517.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3517 = load i64, ptr %r3517.p, align 8, !alias.scope !3, !noalias !4
  %t3518 = or i64 0, %r3517
  %wp3519 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3518, ptr %wp3519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7598 word 0xaa1a03e8
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3520 = load i64, ptr %r3520.p, align 8, !alias.scope !3, !noalias !4
  %t3521 = or i64 0, %r3520
  %wp3522 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3521, ptr %wp3522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a759c word 0x17fffeb6
  br label %L_8001a7074
L_8001a75a0:
  ; @pc 0x8001a75a0 word 0xeb15019f
  %r3523.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3523 = load i64, ptr %r3523.p, align 8, !alias.scope !3, !noalias !4
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %t3525 = sub i64 %r3523, %r3524
  %fn3526 = icmp slt i64 %t3525, 0
  %fz3527 = icmp eq i64 %t3525, 0
  %fc3528 = icmp uge i64 %r3523, %r3524
  %fx13529 = xor i64 %r3523, %r3524
  %fx23530 = xor i64 %r3523, %t3525
  %fva3531 = and i64 %fx13529, %fx23530
  %fv3532 = icmp slt i64 %fva3531, 0
  %nz3533 = zext i1 %fn3526 to i64
  %zz3534 = zext i1 %fz3527 to i64
  %cz3535 = zext i1 %fc3528 to i64
  %vz3536 = zext i1 %fv3532 to i64
  %ns3537 = shl i64 %nz3533, 31
  %zs3538 = shl i64 %zz3534, 30
  %cs3539 = shl i64 %cz3535, 29
  %vs3540 = shl i64 %vz3536, 28
  %nzor3541 = or i64 %ns3537, %zs3538
  %cvor3542 = or i64 %cs3539, %vs3540
  %nzcv3543 = or i64 %nzor3541, %cvor3542
  %wp3544 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3543, ptr %wp3544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75a4 word 0x54ffc7a0
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %fsh3547 = lshr i64 %r3545, 30
  %cond3546 = trunc i64 %fsh3547 to i1
  br i1 %cond3546, label %L_8001a6e98, label %L_8001a75a8_ft
L_8001a75b4:
  ; @pc 0x8001a75b4 word 0x71000a1f
  %r3556.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3556 = load i64, ptr %r3556.p, align 8, !alias.scope !3, !noalias !4
  %c3557 = trunc i64 %r3556 to i32
  %t3558 = sub i32 %c3557, 2
  %fn3559 = icmp slt i32 %t3558, 0
  %fz3560 = icmp eq i32 %t3558, 0
  %fc3561 = icmp uge i32 %c3557, 2
  %fx13562 = xor i32 %c3557, 2
  %fx23563 = xor i32 %c3557, %t3558
  %fva3564 = and i32 %fx13562, %fx23563
  %fv3565 = icmp slt i32 %fva3564, 0
  %nz3566 = zext i1 %fn3559 to i64
  %zz3567 = zext i1 %fz3560 to i64
  %cz3568 = zext i1 %fc3561 to i64
  %vz3569 = zext i1 %fv3565 to i64
  %ns3570 = shl i64 %nz3566, 31
  %zs3571 = shl i64 %zz3567, 30
  %cs3572 = shl i64 %cz3568, 29
  %vs3573 = shl i64 %vz3569, 28
  %nzor3574 = or i64 %ns3570, %zs3571
  %cvor3575 = or i64 %cs3572, %vs3573
  %nzcv3576 = or i64 %nzor3574, %cvor3575
  %wp3577 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3576, ptr %wp3577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75b8 word 0x54000341
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %fsh3580 = lshr i64 %r3578, 30
  %ftr3581 = trunc i64 %fsh3580 to i1
  %cond3579 = xor i1 %ftr3581, true
  br i1 %cond3579, label %L_8001a7620, label %L_8001a75bc_ft
L_8001a75c0:
  ; @pc 0x8001a75c0 word 0xf9400d8f
  %r3584.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3584 = load i64, ptr %r3584.p, align 8, !alias.scope !3, !noalias !4
  %t3585 = add i64 %r3584, 24
  %gmp3586 = inttoptr i64 %t3585 to ptr
  %gml3587 = load i64, ptr %gmp3586, align 1, !alias.scope !4, !noalias !3
  %wp3588 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3587, ptr %wp3588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75c4 word 0xeb1701ff
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %r3590.p = getelementptr inbounds i8, ptr %c, i64 184
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
  ; @pc 0x8001a75c8 word 0x540000e2
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %fsh3613 = lshr i64 %r3611, 29
  %cond3612 = trunc i64 %fsh3613 to i1
  br i1 %cond3612, label %L_8001a75e4, label %L_8001a75cc
L_8001a75cc:
  ; @pc 0x8001a75cc word 0x8b0a018c
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %r3615.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3615 = load i64, ptr %r3615.p, align 8, !alias.scope !3, !noalias !4
  %t3616 = add i64 %r3614, %r3615
  %wp3617 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3616, ptr %wp3617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75d0 word 0xf940058c
  %r3618.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3618 = load i64, ptr %r3618.p, align 8, !alias.scope !3, !noalias !4
  %t3619 = add i64 %r3618, 8
  %gmp3620 = inttoptr i64 %t3619 to ptr
  %gml3621 = load i64, ptr %gmp3620, align 1, !alias.scope !4, !noalias !3
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75d4 word 0x8b09018c
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %r3624.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3624 = load i64, ptr %r3624.p, align 8, !alias.scope !3, !noalias !4
  %t3625 = add i64 %r3623, %r3624
  %wp3626 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3625, ptr %wp3626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75d8 word 0xeb0b019f
  %r3627.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3627 = load i64, ptr %r3627.p, align 8, !alias.scope !3, !noalias !4
  %r3628.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3628 = load i64, ptr %r3628.p, align 8, !alias.scope !3, !noalias !4
  %t3629 = sub i64 %r3627, %r3628
  %fn3630 = icmp slt i64 %t3629, 0
  %fz3631 = icmp eq i64 %t3629, 0
  %fc3632 = icmp uge i64 %r3627, %r3628
  %fx13633 = xor i64 %r3627, %r3628
  %fx23634 = xor i64 %r3627, %t3629
  %fva3635 = and i64 %fx13633, %fx23634
  %fv3636 = icmp slt i64 %fva3635, 0
  %nz3637 = zext i1 %fn3630 to i64
  %zz3638 = zext i1 %fz3631 to i64
  %cz3639 = zext i1 %fc3632 to i64
  %vz3640 = zext i1 %fv3636 to i64
  %ns3641 = shl i64 %nz3637, 31
  %zs3642 = shl i64 %zz3638, 30
  %cs3643 = shl i64 %cz3639, 29
  %vs3644 = shl i64 %vz3640, 28
  %nzor3645 = or i64 %ns3641, %zs3642
  %cvor3646 = or i64 %cs3643, %vs3644
  %nzcv3647 = or i64 %nzor3645, %cvor3646
  %wp3648 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3647, ptr %wp3648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75dc word 0x54ffff21
  %r3649.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3649 = load i64, ptr %r3649.p, align 8, !alias.scope !3, !noalias !4
  %fsh3651 = lshr i64 %r3649, 30
  %ftr3652 = trunc i64 %fsh3651 to i1
  %cond3650 = xor i1 %ftr3652, true
  br i1 %cond3650, label %L_8001a75c0, label %L_8001a75e0_ft
L_8001a75e4:
  ; @pc 0x8001a75e4 word 0x79402590
  %r3653.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3653 = load i64, ptr %r3653.p, align 8, !alias.scope !3, !noalias !4
  %t3654 = add i64 %r3653, 18
  %gmp3655 = inttoptr i64 %t3654 to ptr
  %gml3656 = load i16, ptr %gmp3655, align 1, !alias.scope !4, !noalias !3
  %c3657 = zext i16 %gml3656 to i64
  %wp3658 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3657, ptr %wp3658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75e8 word 0x8b100190
  %r3659.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3659 = load i64, ptr %r3659.p, align 8, !alias.scope !3, !noalias !4
  %r3660.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3660 = load i64, ptr %r3660.p, align 8, !alias.scope !3, !noalias !4
  %t3661 = add i64 %r3659, %r3660
  %wp3662 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3661, ptr %wp3662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75ec word 0x91008210
  %r3663.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3663 = load i64, ptr %r3663.p, align 8, !alias.scope !3, !noalias !4
  %t3664 = add i64 %r3663, 32
  %wp3665 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3664, ptr %wp3665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75f0 word 0x8b0d0211
  %r3666.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3666 = load i64, ptr %r3666.p, align 8, !alias.scope !3, !noalias !4
  %r3667.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3667 = load i64, ptr %r3667.p, align 8, !alias.scope !3, !noalias !4
  %t3668 = add i64 %r3666, %r3667
  %wp3669 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3668, ptr %wp3669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75f4 word 0xcb1002f0
  %r3670.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3670 = load i64, ptr %r3670.p, align 8, !alias.scope !3, !noalias !4
  %r3671.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3671 = load i64, ptr %r3671.p, align 8, !alias.scope !3, !noalias !4
  %t3672 = sub i64 %r3670, %r3671
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3672, ptr %wp3673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75f8 word 0x8a0e0231
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %t3676 = and i64 %r3675, %r3674
  %wp3677 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3676, ptr %wp3677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75fc word 0x8b110210
  %r3678.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3678 = load i64, ptr %r3678.p, align 8, !alias.scope !3, !noalias !4
  %r3679.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3679 = load i64, ptr %r3679.p, align 8, !alias.scope !3, !noalias !4
  %t3680 = add i64 %r3678, %r3679
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3680, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7600 word 0xeb1001ff
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %r3683.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3683 = load i64, ptr %r3683.p, align 8, !alias.scope !3, !noalias !4
  %t3684 = sub i64 %r3682, %r3683
  %fn3685 = icmp slt i64 %t3684, 0
  %fz3686 = icmp eq i64 %t3684, 0
  %fc3687 = icmp uge i64 %r3682, %r3683
  %fx13688 = xor i64 %r3682, %r3683
  %fx23689 = xor i64 %r3682, %t3684
  %fva3690 = and i64 %fx13688, %fx23689
  %fv3691 = icmp slt i64 %fva3690, 0
  %nz3692 = zext i1 %fn3685 to i64
  %zz3693 = zext i1 %fz3686 to i64
  %cz3694 = zext i1 %fc3687 to i64
  %vz3695 = zext i1 %fv3691 to i64
  %ns3696 = shl i64 %nz3692, 31
  %zs3697 = shl i64 %zz3693, 30
  %cs3698 = shl i64 %cz3694, 29
  %vs3699 = shl i64 %vz3695, 28
  %nzor3700 = or i64 %ns3696, %zs3697
  %cvor3701 = or i64 %cs3698, %vs3699
  %nzcv3702 = or i64 %nzor3700, %cvor3701
  %wp3703 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3702, ptr %wp3703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7604 word 0x54fffe43
  %r3704.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3704 = load i64, ptr %r3704.p, align 8, !alias.scope !3, !noalias !4
  %fsh3706 = lshr i64 %r3704, 29
  %ftr3707 = trunc i64 %fsh3706 to i1
  %cond3705 = xor i1 %ftr3707, true
  br i1 %cond3705, label %L_8001a75cc, label %L_8001a7608_ft
L_8001a7618:
  ; @pc 0x8001a7618 word 0xaa0c03e8
  %r3740.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3740 = load i64, ptr %r3740.p, align 8, !alias.scope !3, !noalias !4
  %t3741 = or i64 0, %r3740
  %wp3742 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3741, ptr %wp3742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a761c word 0x17ffffec
  br label %L_8001a75cc
L_8001a7620:
  ; @pc 0x8001a7620 word 0xaa1f03e8
  %t3743 = or i64 0, 0
  %wp3744 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3743, ptr %wp3744, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7624
L_8001a7624:
  ; @pc 0x8001a7624 word 0xf9400d8f
  %r3745.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3745 = load i64, ptr %r3745.p, align 8, !alias.scope !3, !noalias !4
  %t3746 = add i64 %r3745, 24
  %gmp3747 = inttoptr i64 %t3746 to ptr
  %gml3748 = load i64, ptr %gmp3747, align 1, !alias.scope !4, !noalias !3
  %wp3749 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3748, ptr %wp3749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7628 word 0xeb1701ff
  %r3750.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3750 = load i64, ptr %r3750.p, align 8, !alias.scope !3, !noalias !4
  %r3751.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3751 = load i64, ptr %r3751.p, align 8, !alias.scope !3, !noalias !4
  %t3752 = sub i64 %r3750, %r3751
  %fn3753 = icmp slt i64 %t3752, 0
  %fz3754 = icmp eq i64 %t3752, 0
  %fc3755 = icmp uge i64 %r3750, %r3751
  %fx13756 = xor i64 %r3750, %r3751
  %fx23757 = xor i64 %r3750, %t3752
  %fva3758 = and i64 %fx13756, %fx23757
  %fv3759 = icmp slt i64 %fva3758, 0
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
  ; @pc 0x8001a762c word 0x54000183
  %r3772.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3772 = load i64, ptr %r3772.p, align 8, !alias.scope !3, !noalias !4
  %fsh3774 = lshr i64 %r3772, 29
  %ftr3775 = trunc i64 %fsh3774 to i1
  %cond3773 = xor i1 %ftr3775, true
  br i1 %cond3773, label %L_8001a765c, label %L_8001a7630_ft
L_8001a765c:
  ; @pc 0x8001a765c word 0x8b0a018c
  %r3863.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3863 = load i64, ptr %r3863.p, align 8, !alias.scope !3, !noalias !4
  %r3864.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3864 = load i64, ptr %r3864.p, align 8, !alias.scope !3, !noalias !4
  %t3865 = add i64 %r3863, %r3864
  %wp3866 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3865, ptr %wp3866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7660 word 0xf940058c
  %r3867.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3867 = load i64, ptr %r3867.p, align 8, !alias.scope !3, !noalias !4
  %t3868 = add i64 %r3867, 8
  %gmp3869 = inttoptr i64 %t3868 to ptr
  %gml3870 = load i64, ptr %gmp3869, align 1, !alias.scope !4, !noalias !3
  %wp3871 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3870, ptr %wp3871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7664 word 0x8b09018c
  %r3872.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3872 = load i64, ptr %r3872.p, align 8, !alias.scope !3, !noalias !4
  %r3873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3873 = load i64, ptr %r3873.p, align 8, !alias.scope !3, !noalias !4
  %t3874 = add i64 %r3872, %r3873
  %wp3875 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3874, ptr %wp3875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7668 word 0xeb0b019f
  %r3876.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3876 = load i64, ptr %r3876.p, align 8, !alias.scope !3, !noalias !4
  %r3877.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3877 = load i64, ptr %r3877.p, align 8, !alias.scope !3, !noalias !4
  %t3878 = sub i64 %r3876, %r3877
  %fn3879 = icmp slt i64 %t3878, 0
  %fz3880 = icmp eq i64 %t3878, 0
  %fc3881 = icmp uge i64 %r3876, %r3877
  %fx13882 = xor i64 %r3876, %r3877
  %fx23883 = xor i64 %r3876, %t3878
  %fva3884 = and i64 %fx13882, %fx23883
  %fv3885 = icmp slt i64 %fva3884, 0
  %nz3886 = zext i1 %fn3879 to i64
  %zz3887 = zext i1 %fz3880 to i64
  %cz3888 = zext i1 %fc3881 to i64
  %vz3889 = zext i1 %fv3885 to i64
  %ns3890 = shl i64 %nz3886, 31
  %zs3891 = shl i64 %zz3887, 30
  %cs3892 = shl i64 %cz3888, 29
  %vs3893 = shl i64 %vz3889, 28
  %nzor3894 = or i64 %ns3890, %zs3891
  %cvor3895 = or i64 %cs3892, %vs3893
  %nzcv3896 = or i64 %nzor3894, %cvor3895
  %wp3897 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3896, ptr %wp3897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a766c word 0x54fffdc1
  %r3898.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3898 = load i64, ptr %r3898.p, align 8, !alias.scope !3, !noalias !4
  %fsh3900 = lshr i64 %r3898, 30
  %ftr3901 = trunc i64 %fsh3900 to i1
  %cond3899 = xor i1 %ftr3901, true
  br i1 %cond3899, label %L_8001a7624, label %L_8001a7670
L_8001a7670:
  ; @pc 0x8001a7670 word 0xb4fff3a8
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %cmp3903 = icmp eq i64 %r3902, 0
  br i1 %cmp3903, label %L_8001a74e4, label %L_8001a7674_ft
L_8001a7680:
  ; @pc 0x8001a7680 word 0xeb1c037f
  %r3915.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3915 = load i64, ptr %r3915.p, align 8, !alias.scope !3, !noalias !4
  %r3916.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3916 = load i64, ptr %r3916.p, align 8, !alias.scope !3, !noalias !4
  %t3917 = sub i64 %r3915, %r3916
  %fn3918 = icmp slt i64 %t3917, 0
  %fz3919 = icmp eq i64 %t3917, 0
  %fc3920 = icmp uge i64 %r3915, %r3916
  %fx13921 = xor i64 %r3915, %r3916
  %fx23922 = xor i64 %r3915, %t3917
  %fva3923 = and i64 %fx13921, %fx23922
  %fv3924 = icmp slt i64 %fva3923, 0
  %nz3925 = zext i1 %fn3918 to i64
  %zz3926 = zext i1 %fz3919 to i64
  %cz3927 = zext i1 %fc3920 to i64
  %vz3928 = zext i1 %fv3924 to i64
  %ns3929 = shl i64 %nz3925, 31
  %zs3930 = shl i64 %zz3926, 30
  %cs3931 = shl i64 %cz3927, 29
  %vs3932 = shl i64 %vz3928, 28
  %nzor3933 = or i64 %ns3929, %zs3930
  %cvor3934 = or i64 %cs3931, %vs3932
  %nzcv3935 = or i64 %nzor3933, %cvor3934
  %wp3936 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3935, ptr %wp3936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7684 word 0x54fff362
  %r3937.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3937 = load i64, ptr %r3937.p, align 8, !alias.scope !3, !noalias !4
  %fsh3939 = lshr i64 %r3937, 29
  %cond3938 = trunc i64 %fsh3939 to i1
  br i1 %cond3938, label %L_8001a74f0, label %L_8001a7688_ft
L_8001a76cc:
  ; @pc 0x8001a76cc word 0xaa1f03f7
  %t4026 = or i64 0, 0
  %wp4027 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t4026, ptr %wp4027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76d0 word 0x17fffea9
  br label %L_8001a7174
L_8001a76d4:
  ; @pc 0x8001a76d4 word 0xb94007e2
  %r4028.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4028 = load i64, ptr %r4028.p, align 8, !alias.scope !3, !noalias !4
  %t4029 = add i64 %r4028, 4
  %gmp4030 = inttoptr i64 %t4029 to ptr
  %gml4031 = load i32, ptr %gmp4030, align 1, !alias.scope !4, !noalias !3
  %c4032 = zext i32 %gml4031 to i64
  %wp4033 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4032, ptr %wp4033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76d8 word 0x97ff5542
  %wp4034 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361472732, ptr %wp4034, align 8, !alias.scope !3, !noalias !4
  call void @f_80017cbe0(ptr %c)
  ; @pc 0x8001a76dc word 0x17ffff41
  br label %L_8001a73e0
L_8001a76e0:
  ; @pc 0x8001a76e0 word 0xb4fff099
  %r4035.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4035 = load i64, ptr %r4035.p, align 8, !alias.scope !3, !noalias !4
  %cmp4036 = icmp eq i64 %r4035, 0
  br i1 %cmp4036, label %L_8001a74f0, label %L_8001a76e4_ft
L_8001a7700:
  ; @pc 0x8001a7700 word 0xb94007e8
  %r4065.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4065 = load i64, ptr %r4065.p, align 8, !alias.scope !3, !noalias !4
  %t4066 = add i64 %r4065, 4
  %gmp4067 = inttoptr i64 %t4066 to ptr
  %gml4068 = load i32, ptr %gmp4067, align 1, !alias.scope !4, !noalias !3
  %c4069 = zext i32 %gml4068 to i64
  %wp4070 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4069, ptr %wp4070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7704 word 0xa900d7f3
  %r4071.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4071 = load i64, ptr %r4071.p, align 8, !alias.scope !3, !noalias !4
  %t4072 = add i64 %r4071, 8
  %t4073 = add i64 %t4072, 8
  %r4074.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4074 = load i64, ptr %r4074.p, align 8, !alias.scope !3, !noalias !4
  %gmp4075 = inttoptr i64 %t4072 to ptr
  store i64 %r4074, ptr %gmp4075, align 1, !alias.scope !4, !noalias !3
  %r4076.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4076 = load i64, ptr %r4076.p, align 8, !alias.scope !3, !noalias !4
  %gmp4077 = inttoptr i64 %t4073 to ptr
  store i64 %r4076, ptr %gmp4077, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7708 word 0x910023e1
  %r4078.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4078 = load i64, ptr %r4078.p, align 8, !alias.scope !3, !noalias !4
  %t4079 = add i64 %r4078, 8
  %wp4080 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4079, ptr %wp4080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a770c word 0xb9001bf4
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %t4082 = add i64 %r4081, 24
  %r4083.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4083 = load i64, ptr %r4083.p, align 8, !alias.scope !3, !noalias !4
  %c4084 = trunc i64 %r4083 to i32
  %gmp4085 = inttoptr i64 %t4082 to ptr
  store i32 %c4084, ptr %gmp4085, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7710 word 0xf90013f7
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4086 = load i64, ptr %r4086.p, align 8, !alias.scope !3, !noalias !4
  %t4087 = add i64 %r4086, 32
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %gmp4089 = inttoptr i64 %t4087 to ptr
  store i64 %r4088, ptr %gmp4089, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7714 word 0xb9002be8
  %r4090.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4090 = load i64, ptr %r4090.p, align 8, !alias.scope !3, !noalias !4
  %t4091 = add i64 %r4090, 40
  %r4092.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4092 = load i64, ptr %r4092.p, align 8, !alias.scope !3, !noalias !4
  %c4093 = trunc i64 %r4092 to i32
  %gmp4094 = inttoptr i64 %t4091 to ptr
  store i32 %c4093, ptr %gmp4094, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7718 word 0x17fffee5
  br label %L_8001a72ac
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361469968, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001a6c10
L_8001a6c48_ft:
  ; @pc 0x8001a6c48 word 0xaa0103f3
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c4c word 0xb4002cc1
  %r76.p = getelementptr inbounds i8, ptr %c, i64 8
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %cmp77 = icmp eq i64 %r76, 0
  br i1 %cmp77, label %L_8001a71e4, label %L_8001a6c50
L_8001a6c68_ft:
  ; @pc 0x8001a6c68 word 0xb940aa68
  %r117.p = getelementptr inbounds i8, ptr %c, i64 152
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 168
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i32, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i32 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c6c word 0x91022277
  %r123.p = getelementptr inbounds i8, ptr %c, i64 152
  %r123 = load i64, ptr %r123.p, align 8, !alias.scope !3, !noalias !4
  %t124 = add i64 %r123, 136
  %wp125 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6c70 word 0x37003068
  %r126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = and i64 %r126, 1
  %cmp128 = icmp ne i64 %t127, 0
  br i1 %cmp128, label %L_8001a727c, label %L_8001a6c74_ft
L_8001a6c74_ft:
  ; @pc 0x8001a6c74 word 0xaa1f03f6
  %t129 = or i64 0, 0
  %wp130 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6c78
L_8001a6ca4_ft:
  ; @pc 0x8001a6ca4 word 0xb940826a
  %r231.p = getelementptr inbounds i8, ptr %c, i64 152
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %t232 = add i64 %r231, 128
  %gmp233 = inttoptr i64 %t232 to ptr
  %gml234 = load i32, ptr %gmp233, align 1, !alias.scope !4, !noalias !3
  %c235 = zext i32 %gml234 to i64
  %wp236 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ca8 word 0x1b147d4a
  %r237.p = getelementptr inbounds i8, ptr %c, i64 160
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %c238 = trunc i64 %r237 to i32
  %r239.p = getelementptr inbounds i8, ptr %c, i64 80
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %c240 = trunc i64 %r239 to i32
  %t241 = mul i32 %c240, %c238
  %t242 = add i32 0, %t241
  %c243 = zext i32 %t242 to i64
  %wp244 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c243, ptr %wp244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cac word 0x37f8304a
  %r245.p = getelementptr inbounds i8, ptr %c, i64 80
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %t246 = and i64 %r245, 2147483648
  %cmp247 = icmp ne i64 %t246, 0
  br i1 %cmp247, label %L_8001a72b4, label %L_8001a6cb0_ft
L_8001a6cb0_ft:
  ; @pc 0x8001a6cb0 word 0xf9405a6b
  %r248.p = getelementptr inbounds i8, ptr %c, i64 152
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %t249 = add i64 %r248, 176
  %gmp250 = inttoptr i64 %t249 to ptr
  %gml251 = load i64, ptr %gmp250, align 1, !alias.scope !4, !noalias !3
  %wp252 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cb4 word 0x5100054c
  %r253.p = getelementptr inbounds i8, ptr %c, i64 80
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %c254 = trunc i64 %r253 to i32
  %t255 = sub i32 %c254, 1
  %c256 = zext i32 %t255 to i64
  %wp257 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c256, ptr %wp257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cb8 word 0x8b0c016b
  %r258.p = getelementptr inbounds i8, ptr %c, i64 88
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %r259.p = getelementptr inbounds i8, ptr %c, i64 96
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %t260 = add i64 %r258, %r259
  %wp261 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cbc word 0x8a2c0178
  %r262.p = getelementptr inbounds i8, ptr %c, i64 96
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %t263 = xor i64 %r262, -1
  %r264.p = getelementptr inbounds i8, ptr %c, i64 88
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %t265 = and i64 %r264, %t263
  %wp266 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t265, ptr %wp266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cc0 word 0x8b19030b
  %r267.p = getelementptr inbounds i8, ptr %c, i64 192
  %r267 = load i64, ptr %r267.p, align 8, !alias.scope !3, !noalias !4
  %r268.p = getelementptr inbounds i8, ptr %c, i64 200
  %r268 = load i64, ptr %r268.p, align 8, !alias.scope !3, !noalias !4
  %t269 = add i64 %r267, %r268
  %wp270 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t269, ptr %wp270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cc4 word 0xeb18017f
  %r271.p = getelementptr inbounds i8, ptr %c, i64 88
  %r271 = load i64, ptr %r271.p, align 8, !alias.scope !3, !noalias !4
  %r272.p = getelementptr inbounds i8, ptr %c, i64 192
  %r272 = load i64, ptr %r272.p, align 8, !alias.scope !3, !noalias !4
  %t273 = sub i64 %r271, %r272
  %fn274 = icmp slt i64 %t273, 0
  %fz275 = icmp eq i64 %t273, 0
  %fc276 = icmp uge i64 %r271, %r272
  %fx1277 = xor i64 %r271, %r272
  %fx2278 = xor i64 %r271, %t273
  %fva279 = and i64 %fx1277, %fx2278
  %fv280 = icmp slt i64 %fva279, 0
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
  ; @pc 0x8001a6cc8 word 0x540020e3
  %r293.p = getelementptr inbounds i8, ptr %c, i64 272
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %fsh295 = lshr i64 %r293, 29
  %ftr296 = trunc i64 %fsh295 to i1
  %cond294 = xor i1 %ftr296, true
  br i1 %cond294, label %L_8001a70e4, label %L_8001a6ccc_ft
L_8001a6ccc_ft:
  ; @pc 0x8001a6ccc word 0xf9405e6c
  %r297.p = getelementptr inbounds i8, ptr %c, i64 152
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 184
  %gmp299 = inttoptr i64 %t298 to ptr
  %gml300 = load i64, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  %wp301 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml300, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6cd0 word 0xeb0b019f
  %r302.p = getelementptr inbounds i8, ptr %c, i64 96
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %r303.p = getelementptr inbounds i8, ptr %c, i64 88
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %t304 = sub i64 %r302, %r303
  %fn305 = icmp slt i64 %t304, 0
  %fz306 = icmp eq i64 %t304, 0
  %fc307 = icmp uge i64 %r302, %r303
  %fx1308 = xor i64 %r302, %r303
  %fx2309 = xor i64 %r302, %t304
  %fva310 = and i64 %fx1308, %fx2309
  %fv311 = icmp slt i64 %fva310, 0
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
  ; @pc 0x8001a6cd4 word 0x54002083
  %r324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %fsh326 = lshr i64 %r324, 29
  %ftr327 = trunc i64 %fsh326 to i1
  %cond325 = xor i1 %ftr327, true
  br i1 %cond325, label %L_8001a70e4, label %L_8001a6cd8_ft
L_8001a6cd8_ft:
  ; @pc 0x8001a6cd8 word 0xf9005a6b
  %r328.p = getelementptr inbounds i8, ptr %c, i64 152
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 176
  %r330.p = getelementptr inbounds i8, ptr %c, i64 88
  %r330 = load i64, ptr %r330.p, align 8, !alias.scope !3, !noalias !4
  %gmp331 = inttoptr i64 %t329 to ptr
  store i64 %r330, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6cdc
L_8001a6d18_ft:
  ; @pc 0x8001a6d18 word 0xd503201f
  ; @pc 0x8001a6d1c word 0x10eab1a8
  %wp422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361295696, ptr %wp422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d20 word 0xeb08007f
  %r423.p = getelementptr inbounds i8, ptr %c, i64 24
  %r423 = load i64, ptr %r423.p, align 8, !alias.scope !3, !noalias !4
  %r424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r424 = load i64, ptr %r424.p, align 8, !alias.scope !3, !noalias !4
  %t425 = sub i64 %r423, %r424
  %fn426 = icmp slt i64 %t425, 0
  %fz427 = icmp eq i64 %t425, 0
  %fc428 = icmp uge i64 %r423, %r424
  %fx1429 = xor i64 %r423, %r424
  %fx2430 = xor i64 %r423, %t425
  %fva431 = and i64 %fx1429, %fx2430
  %fv432 = icmp slt i64 %fva431, 0
  %nz433 = zext i1 %fn426 to i64
  %zz434 = zext i1 %fz427 to i64
  %cz435 = zext i1 %fc428 to i64
  %vz436 = zext i1 %fv432 to i64
  %ns437 = shl i64 %nz433, 31
  %zs438 = shl i64 %zz434, 30
  %cs439 = shl i64 %cz435, 29
  %vs440 = shl i64 %vz436, 28
  %nzor441 = or i64 %ns437, %zs438
  %cvor442 = or i64 %cs439, %vs440
  %nzcv443 = or i64 %nzor441, %cvor442
  %wp444 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv443, ptr %wp444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d24 word 0x54000ce1
  %r445.p = getelementptr inbounds i8, ptr %c, i64 272
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %fsh447 = lshr i64 %r445, 30
  %ftr448 = trunc i64 %fsh447 to i1
  %cond446 = xor i1 %ftr448, true
  br i1 %cond446, label %L_8001a6ec0, label %L_8001a6d28_ft
L_8001a6d28_ft:
  ; @pc 0x8001a6d28 word 0xf10022bf
  %r449.p = getelementptr inbounds i8, ptr %c, i64 168
  %r449 = load i64, ptr %r449.p, align 8, !alias.scope !3, !noalias !4
  %t450 = sub i64 %r449, 8
  %fn451 = icmp slt i64 %t450, 0
  %fz452 = icmp eq i64 %t450, 0
  %fc453 = icmp uge i64 %r449, 8
  %fx1454 = xor i64 %r449, 8
  %fx2455 = xor i64 %r449, %t450
  %fva456 = and i64 %fx1454, %fx2455
  %fv457 = icmp slt i64 %fva456, 0
  %nz458 = zext i1 %fn451 to i64
  %zz459 = zext i1 %fz452 to i64
  %cz460 = zext i1 %fc453 to i64
  %vz461 = zext i1 %fv457 to i64
  %ns462 = shl i64 %nz458, 31
  %zs463 = shl i64 %zz459, 30
  %cs464 = shl i64 %cz460, 29
  %vs465 = shl i64 %vz461, 28
  %nzor466 = or i64 %ns462, %zs463
  %cvor467 = or i64 %cs464, %vs465
  %nzcv468 = or i64 %nzor466, %cvor467
  %wp469 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv468, ptr %wp469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d2c word 0x52800108
  %c470 = zext i32 8 to i64
  %wp471 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c470, ptr %wp471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d30 word 0xf9400319
  %r472.p = getelementptr inbounds i8, ptr %c, i64 192
  %r472 = load i64, ptr %r472.p, align 8, !alias.scope !3, !noalias !4
  %gmp473 = inttoptr i64 %r472 to ptr
  %gml474 = load i64, ptr %gmp473, align 1, !alias.scope !4, !noalias !3
  %wp475 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml474, ptr %wp475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d34 word 0x9a8882a8
  %r476.p = getelementptr inbounds i8, ptr %c, i64 168
  %r476 = load i64, ptr %r476.p, align 8, !alias.scope !3, !noalias !4
  %r477.p = getelementptr inbounds i8, ptr %c, i64 64
  %r477 = load i64, ptr %r477.p, align 8, !alias.scope !3, !noalias !4
  %r478.p = getelementptr inbounds i8, ptr %c, i64 272
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %fsh480 = lshr i64 %r478, 29
  %ftr481 = trunc i64 %fsh480 to i1
  %fsh482 = lshr i64 %r478, 30
  %ftr483 = trunc i64 %fsh482 to i1
  %fnz484 = xor i1 %ftr483, true
  %cond479 = and i1 %ftr481, %fnz484
  %sel485 = select i1 %cond479, i64 %r476, i64 %r477
  %wp486 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel485, ptr %wp486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d38 word 0x7100029f
  %r487.p = getelementptr inbounds i8, ptr %c, i64 160
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %c488 = trunc i64 %r487 to i32
  %t489 = sub i32 %c488, 0
  %fn490 = icmp slt i32 %t489, 0
  %fz491 = icmp eq i32 %t489, 0
  %fc492 = icmp uge i32 %c488, 0
  %fx1493 = xor i32 %c488, 0
  %fx2494 = xor i32 %c488, %t489
  %fva495 = and i32 %fx1493, %fx2494
  %fv496 = icmp slt i32 %fva495, 0
  %nz497 = zext i1 %fn490 to i64
  %zz498 = zext i1 %fz491 to i64
  %cz499 = zext i1 %fc492 to i64
  %vz500 = zext i1 %fv496 to i64
  %ns501 = shl i64 %nz497, 31
  %zs502 = shl i64 %zz498, 30
  %cs503 = shl i64 %cz499, 29
  %vs504 = shl i64 %vz500, 28
  %nzor505 = or i64 %ns501, %zs502
  %cvor506 = or i64 %cs503, %vs504
  %nzcv507 = or i64 %nzor505, %cvor506
  %wp508 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv507, ptr %wp508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d3c word 0x5a945689
  %r509.p = getelementptr inbounds i8, ptr %c, i64 160
  %r509 = load i64, ptr %r509.p, align 8, !alias.scope !3, !noalias !4
  %c510 = trunc i64 %r509 to i32
  %r511.p = getelementptr inbounds i8, ptr %c, i64 160
  %r511 = load i64, ptr %r511.p, align 8, !alias.scope !3, !noalias !4
  %c512 = trunc i64 %r511 to i32
  %t513 = sub i32 0, %c512
  %r514.p = getelementptr inbounds i8, ptr %c, i64 272
  %r514 = load i64, ptr %r514.p, align 8, !alias.scope !3, !noalias !4
  %fsh516 = lshr i64 %r514, 31
  %ftr517 = trunc i64 %fsh516 to i1
  %cond515 = xor i1 %ftr517, true
  %sel518 = select i1 %cond515, i32 %c510, i32 %t513
  %c519 = zext i32 %sel518 to i64
  %wp520 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c519, ptr %wp520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d40 word 0x5100052a
  %r521.p = getelementptr inbounds i8, ptr %c, i64 72
  %r521 = load i64, ptr %r521.p, align 8, !alias.scope !3, !noalias !4
  %c522 = trunc i64 %r521 to i32
  %t523 = sub i32 %c522, 1
  %c524 = zext i32 %t523 to i64
  %wp525 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c524, ptr %wp525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d44 word 0x6a0a013f
  %r526.p = getelementptr inbounds i8, ptr %c, i64 80
  %r526 = load i64, ptr %r526.p, align 8, !alias.scope !3, !noalias !4
  %c527 = trunc i64 %r526 to i32
  %r528.p = getelementptr inbounds i8, ptr %c, i64 72
  %r528 = load i64, ptr %r528.p, align 8, !alias.scope !3, !noalias !4
  %c529 = trunc i64 %r528 to i32
  %t530 = and i32 %c529, %c527
  %fn531 = icmp slt i32 %t530, 0
  %fz532 = icmp eq i32 %t530, 0
  %nz533 = zext i1 %fn531 to i64
  %zz534 = zext i1 %fz532 to i64
  %ns535 = shl i64 %nz533, 31
  %zs536 = shl i64 %zz534, 30
  %nzcv537 = or i64 %ns535, %zs536
  %wp538 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv537, ptr %wp538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d48 word 0x54003301
  %r539.p = getelementptr inbounds i8, ptr %c, i64 272
  %r539 = load i64, ptr %r539.p, align 8, !alias.scope !3, !noalias !4
  %fsh541 = lshr i64 %r539, 30
  %ftr542 = trunc i64 %fsh541 to i1
  %cond540 = xor i1 %ftr542, true
  br i1 %cond540, label %L_8001a73a8, label %L_8001a6d4c_ft
L_8001a6d4c_ft:
  ; @pc 0x8001a6d4c word 0x91001d08
  %r543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %t544 = add i64 %r543, 7
  %wp545 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t544, ptr %wp545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d50 word 0x927df117
  %r546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r546 = load i64, ptr %r546.p, align 8, !alias.scope !3, !noalias !4
  %t547 = and i64 %r546, -8
  %wp548 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t547, ptr %wp548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d54 word 0xeb1502ff
  %r549.p = getelementptr inbounds i8, ptr %c, i64 184
  %r549 = load i64, ptr %r549.p, align 8, !alias.scope !3, !noalias !4
  %r550.p = getelementptr inbounds i8, ptr %c, i64 168
  %r550 = load i64, ptr %r550.p, align 8, !alias.scope !3, !noalias !4
  %t551 = sub i64 %r549, %r550
  %fn552 = icmp slt i64 %t551, 0
  %fz553 = icmp eq i64 %t551, 0
  %fc554 = icmp uge i64 %r549, %r550
  %fx1555 = xor i64 %r549, %r550
  %fx2556 = xor i64 %r549, %t551
  %fva557 = and i64 %fx1555, %fx2556
  %fv558 = icmp slt i64 %fva557, 0
  %nz559 = zext i1 %fn552 to i64
  %zz560 = zext i1 %fz553 to i64
  %cz561 = zext i1 %fc554 to i64
  %vz562 = zext i1 %fv558 to i64
  %ns563 = shl i64 %nz559, 31
  %zs564 = shl i64 %zz560, 30
  %cs565 = shl i64 %cz561, 29
  %vs566 = shl i64 %vz562, 28
  %nzor567 = or i64 %ns563, %zs564
  %cvor568 = or i64 %cs565, %vs566
  %nzcv569 = or i64 %nzor567, %cvor568
  %wp570 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv569, ptr %wp570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d58 word 0x54002f63
  %r571.p = getelementptr inbounds i8, ptr %c, i64 272
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %fsh573 = lshr i64 %r571, 29
  %ftr574 = trunc i64 %fsh573 to i1
  %cond572 = xor i1 %ftr574, true
  br i1 %cond572, label %L_8001a7344, label %L_8001a6d5c_ft
L_8001a6d5c_ft:
  ; @pc 0x8001a6d5c word 0xb940aa68
  %r575.p = getelementptr inbounds i8, ptr %c, i64 152
  %r575 = load i64, ptr %r575.p, align 8, !alias.scope !3, !noalias !4
  %t576 = add i64 %r575, 168
  %gmp577 = inttoptr i64 %t576 to ptr
  %gml578 = load i32, ptr %gmp577, align 1, !alias.scope !4, !noalias !3
  %c579 = zext i32 %gml578 to i64
  %wp580 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c579, ptr %wp580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d60 word 0x37001008
  %r581.p = getelementptr inbounds i8, ptr %c, i64 64
  %r581 = load i64, ptr %r581.p, align 8, !alias.scope !3, !noalias !4
  %t582 = and i64 %r581, 1
  %cmp583 = icmp ne i64 %t582, 0
  br i1 %cmp583, label %L_8001a6f60, label %L_8001a6d64_ft
L_8001a6d64_ft:
  ; @pc 0x8001a6d64 word 0xaa1f03f6
  %t584 = or i64 0, 0
  %wp585 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t584, ptr %wp585, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6d68
L_8001a6d74_ft:
  ; @pc 0x8001a6d74 word 0xb980c66a
  %r603.p = getelementptr inbounds i8, ptr %c, i64 152
  %r603 = load i64, ptr %r603.p, align 8, !alias.scope !3, !noalias !4
  %t604 = add i64 %r603, 196
  %gmp605 = inttoptr i64 %t604 to ptr
  %gml606 = load i32, ptr %gmp605, align 1, !alias.scope !4, !noalias !3
  %c607 = sext i32 %gml606 to i64
  %wp608 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c607, ptr %wp608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d78 word 0x9102c278
  %r609.p = getelementptr inbounds i8, ptr %c, i64 152
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = add i64 %r609, 176
  %wp611 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t610, ptr %wp611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d7c word 0x2a0803ef
  %r612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r612 = load i64, ptr %r612.p, align 8, !alias.scope !3, !noalias !4
  %c613 = trunc i64 %r612 to i32
  %t614 = or i32 0, %c613
  %c615 = zext i32 %t614 to i64
  %wp616 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c615, ptr %wp616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d80 word 0xf9405e6c
  %r617.p = getelementptr inbounds i8, ptr %c, i64 152
  %r617 = load i64, ptr %r617.p, align 8, !alias.scope !3, !noalias !4
  %t618 = add i64 %r617, 184
  %gmp619 = inttoptr i64 %t618 to ptr
  %gml620 = load i64, ptr %gmp619, align 1, !alias.scope !4, !noalias !3
  %wp621 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml620, ptr %wp621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d84 word 0x7100211f
  %r622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %c623 = trunc i64 %r622 to i32
  %t624 = sub i32 %c623, 8
  %fn625 = icmp slt i32 %t624, 0
  %fz626 = icmp eq i32 %t624, 0
  %fc627 = icmp uge i32 %c623, 8
  %fx1628 = xor i32 %c623, 8
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
  ; @pc 0x8001a6d88 word 0xcb0a03e9
  %r644.p = getelementptr inbounds i8, ptr %c, i64 80
  %r644 = load i64, ptr %r644.p, align 8, !alias.scope !3, !noalias !4
  %t645 = sub i64 0, %r644
  %wp646 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d8c word 0xcb0a030b
  %r647.p = getelementptr inbounds i8, ptr %c, i64 192
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %r648.p = getelementptr inbounds i8, ptr %c, i64 80
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %t649 = sub i64 %r647, %r648
  %wp650 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d90 word 0xcb0a018c
  %r651.p = getelementptr inbounds i8, ptr %c, i64 96
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %r652.p = getelementptr inbounds i8, ptr %c, i64 80
  %r652 = load i64, ptr %r652.p, align 8, !alias.scope !3, !noalias !4
  %t653 = sub i64 %r651, %r652
  %wp654 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t653, ptr %wp654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d94 word 0x54000ee8
  %r655.p = getelementptr inbounds i8, ptr %c, i64 272
  %r655 = load i64, ptr %r655.p, align 8, !alias.scope !3, !noalias !4
  %fsh657 = lshr i64 %r655, 29
  %ftr658 = trunc i64 %fsh657 to i1
  %fsh659 = lshr i64 %r655, 30
  %ftr660 = trunc i64 %fsh659 to i1
  %fnz661 = xor i1 %ftr660, true
  %cond656 = and i1 %ftr658, %fnz661
  br i1 %cond656, label %L_8001a6f70, label %L_8001a6d98_ft
L_8001a6d98_ft:
  ; @pc 0x8001a6d98 word 0xeb0b019f
  %r662.p = getelementptr inbounds i8, ptr %c, i64 96
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %r663.p = getelementptr inbounds i8, ptr %c, i64 88
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %t664 = sub i64 %r662, %r663
  %fn665 = icmp slt i64 %t664, 0
  %fz666 = icmp eq i64 %t664, 0
  %fc667 = icmp uge i64 %r662, %r663
  %fx1668 = xor i64 %r662, %r663
  %fx2669 = xor i64 %r662, %t664
  %fva670 = and i64 %fx1668, %fx2669
  %fv671 = icmp slt i64 %fva670, 0
  %nz672 = zext i1 %fn665 to i64
  %zz673 = zext i1 %fz666 to i64
  %cz674 = zext i1 %fc667 to i64
  %vz675 = zext i1 %fv671 to i64
  %ns676 = shl i64 %nz672, 31
  %zs677 = shl i64 %zz673, 30
  %cs678 = shl i64 %cz674, 29
  %vs679 = shl i64 %vz675, 28
  %nzor680 = or i64 %ns676, %zs677
  %cvor681 = or i64 %cs678, %vs679
  %nzcv682 = or i64 %nzor680, %cvor681
  %wp683 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv682, ptr %wp683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6d9c word 0x54003a20
  %r684.p = getelementptr inbounds i8, ptr %c, i64 272
  %r684 = load i64, ptr %r684.p, align 8, !alias.scope !3, !noalias !4
  %fsh686 = lshr i64 %r684, 30
  %cond685 = trunc i64 %fsh686 to i1
  br i1 %cond685, label %L_8001a74e0, label %L_8001a6da0_ft
L_8001a6da0_ft:
  ; @pc 0x8001a6da0 word 0x3942b268
  %r687.p = getelementptr inbounds i8, ptr %c, i64 152
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %t688 = add i64 %r687, 172
  %gmp689 = inttoptr i64 %t688 to ptr
  %gml690 = load i8, ptr %gmp689, align 1, !alias.scope !4, !noalias !3
  %c691 = zext i8 %gml690 to i64
  %wp692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c691, ptr %wp692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6da4 word 0x35003248
  %r693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %c694 = trunc i64 %r693 to i32
  %cmp695 = icmp ne i32 %c694, 0
  br i1 %cmp695, label %L_8001a73ec, label %L_8001a6da8_ft
L_8001a6da8_ft:
  ; @pc 0x8001a6da8 word 0xaa0c03e8
  %r696.p = getelementptr inbounds i8, ptr %c, i64 96
  %r696 = load i64, ptr %r696.p, align 8, !alias.scope !3, !noalias !4
  %t697 = or i64 0, %r696
  %wp698 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t697, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6dac
L_8001a6dd4_ft:
  ; @pc 0x8001a6dd4 word 0xaa1f03f4
  %t781 = or i64 0, 0
  %wp782 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t781, ptr %wp782, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6dd8
L_8001a6de0_ft:
  ; @pc 0x8001a6de0 word 0xf900056a
  %r789.p = getelementptr inbounds i8, ptr %c, i64 88
  %r789 = load i64, ptr %r789.p, align 8, !alias.scope !3, !noalias !4
  %t790 = add i64 %r789, 8
  %r791.p = getelementptr inbounds i8, ptr %c, i64 80
  %r791 = load i64, ptr %r791.p, align 8, !alias.scope !3, !noalias !4
  %gmp792 = inttoptr i64 %t790 to ptr
  store i64 %r791, ptr %gmp792, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6de4 word 0xf940052a
  %r793.p = getelementptr inbounds i8, ptr %c, i64 72
  %r793 = load i64, ptr %r793.p, align 8, !alias.scope !3, !noalias !4
  %t794 = add i64 %r793, 8
  %gmp795 = inttoptr i64 %t794 to ptr
  %gml796 = load i64, ptr %gmp795, align 1, !alias.scope !4, !noalias !3
  %wp797 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml796, ptr %wp797, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6de8
L_8001a6dec_ft:
  ; @pc 0x8001a6dec word 0xf940012b
  %r800.p = getelementptr inbounds i8, ptr %c, i64 72
  %r800 = load i64, ptr %r800.p, align 8, !alias.scope !3, !noalias !4
  %gmp801 = inttoptr i64 %r800 to ptr
  %gml802 = load i64, ptr %gmp801, align 1, !alias.scope !4, !noalias !3
  %wp803 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml802, ptr %wp803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6df0 word 0xf900014b
  %r804.p = getelementptr inbounds i8, ptr %c, i64 80
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %r805.p = getelementptr inbounds i8, ptr %c, i64 88
  %r805 = load i64, ptr %r805.p, align 8, !alias.scope !3, !noalias !4
  %gmp806 = inttoptr i64 %r804 to ptr
  store i64 %r805, ptr %gmp806, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6df4
L_8001a6e20_ft:
  ; @pc 0x8001a6e20 word 0xf9400009
  %r876.p = getelementptr inbounds i8, ptr %c, i64 0
  %r876 = load i64, ptr %r876.p, align 8, !alias.scope !3, !noalias !4
  %gmp877 = inttoptr i64 %r876 to ptr
  %gml878 = load i64, ptr %gmp877, align 1, !alias.scope !4, !noalias !3
  %wp879 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e24 word 0xf9000001
  %r880.p = getelementptr inbounds i8, ptr %c, i64 0
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %r881.p = getelementptr inbounds i8, ptr %c, i64 8
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %gmp882 = inttoptr i64 %r880 to ptr
  store i64 %r881, ptr %gmp882, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e28 word 0xa9000029
  %r883.p = getelementptr inbounds i8, ptr %c, i64 8
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %t884 = add i64 %r883, 8
  %r885.p = getelementptr inbounds i8, ptr %c, i64 72
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %gmp886 = inttoptr i64 %r883 to ptr
  store i64 %r885, ptr %gmp886, align 1, !alias.scope !4, !noalias !3
  %r887.p = getelementptr inbounds i8, ptr %c, i64 0
  %r887 = load i64, ptr %r887.p, align 8, !alias.scope !3, !noalias !4
  %gmp888 = inttoptr i64 %t884 to ptr
  store i64 %r887, ptr %gmp888, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e2c word 0xb4000049
  %r889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r889 = load i64, ptr %r889.p, align 8, !alias.scope !3, !noalias !4
  %cmp890 = icmp eq i64 %r889, 0
  br i1 %cmp890, label %L_8001a6e34, label %L_8001a6e30_ft
L_8001a6e30_ft:
  ; @pc 0x8001a6e30 word 0xf9000521
  %r891.p = getelementptr inbounds i8, ptr %c, i64 72
  %r891 = load i64, ptr %r891.p, align 8, !alias.scope !3, !noalias !4
  %t892 = add i64 %r891, 8
  %r893.p = getelementptr inbounds i8, ptr %c, i64 8
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %gmp894 = inttoptr i64 %t892 to ptr
  store i64 %r893, ptr %gmp894, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a6e34
L_8001a6e48_ft:
  ; @pc 0x8001a6e48 word 0x8b0802e9
  %r936.p = getelementptr inbounds i8, ptr %c, i64 184
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %r937.p = getelementptr inbounds i8, ptr %c, i64 64
  %r937 = load i64, ptr %r937.p, align 8, !alias.scope !3, !noalias !4
  %t938 = add i64 %r936, %r937
  %wp939 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t938, ptr %wp939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e4c word 0x8b150129
  %r940.p = getelementptr inbounds i8, ptr %c, i64 72
  %r940 = load i64, ptr %r940.p, align 8, !alias.scope !3, !noalias !4
  %r941.p = getelementptr inbounds i8, ptr %c, i64 168
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %t942 = add i64 %r940, %r941
  %wp943 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t942, ptr %wp943, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6e50
L_8001a6e74_ft:
  ; @pc 0x8001a6e74 word 0x8b0a0129
  %r977.p = getelementptr inbounds i8, ptr %c, i64 72
  %r977 = load i64, ptr %r977.p, align 8, !alias.scope !3, !noalias !4
  %r978.p = getelementptr inbounds i8, ptr %c, i64 80
  %r978 = load i64, ptr %r978.p, align 8, !alias.scope !3, !noalias !4
  %t979 = add i64 %r977, %r978
  %wp980 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t979, ptr %wp980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e78 word 0xf940030a
  %r981.p = getelementptr inbounds i8, ptr %c, i64 192
  %r981 = load i64, ptr %r981.p, align 8, !alias.scope !3, !noalias !4
  %gmp982 = inttoptr i64 %r981 to ptr
  %gml983 = load i64, ptr %gmp982, align 1, !alias.scope !4, !noalias !3
  %wp984 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6e7c word 0xf9000309
  %r985.p = getelementptr inbounds i8, ptr %c, i64 192
  %r985 = load i64, ptr %r985.p, align 8, !alias.scope !3, !noalias !4
  %r986.p = getelementptr inbounds i8, ptr %c, i64 72
  %r986 = load i64, ptr %r986.p, align 8, !alias.scope !3, !noalias !4
  %gmp987 = inttoptr i64 %r985 to ptr
  store i64 %r986, ptr %gmp987, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e80 word 0xa900612a
  %r988.p = getelementptr inbounds i8, ptr %c, i64 72
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %t989 = add i64 %r988, 8
  %r990.p = getelementptr inbounds i8, ptr %c, i64 80
  %r990 = load i64, ptr %r990.p, align 8, !alias.scope !3, !noalias !4
  %gmp991 = inttoptr i64 %r988 to ptr
  store i64 %r990, ptr %gmp991, align 1, !alias.scope !4, !noalias !3
  %r992.p = getelementptr inbounds i8, ptr %c, i64 192
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %gmp993 = inttoptr i64 %t989 to ptr
  store i64 %r992, ptr %gmp993, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6e84 word 0xb400004a
  %r994.p = getelementptr inbounds i8, ptr %c, i64 80
  %r994 = load i64, ptr %r994.p, align 8, !alias.scope !3, !noalias !4
  %cmp995 = icmp eq i64 %r994, 0
  br i1 %cmp995, label %L_8001a6e8c, label %L_8001a6e88
L_8001a6f18_ft:
  ; @pc 0x8001a6f18 word 0xb940aa68
  %r1222.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1222 = load i64, ptr %r1222.p, align 8, !alias.scope !3, !noalias !4
  %t1223 = add i64 %r1222, 168
  %gmp1224 = inttoptr i64 %t1223 to ptr
  %gml1225 = load i32, ptr %gmp1224, align 1, !alias.scope !4, !noalias !3
  %c1226 = zext i32 %gml1225 to i64
  %wp1227 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1226, ptr %wp1227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f1c word 0x370017c8
  %r1228.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1228 = load i64, ptr %r1228.p, align 8, !alias.scope !3, !noalias !4
  %t1229 = and i64 %r1228, 1
  %cmp1230 = icmp ne i64 %t1229, 0
  br i1 %cmp1230, label %L_8001a7214, label %L_8001a6f20_ft
L_8001a6f20_ft:
  ; @pc 0x8001a6f20 word 0xaa1f03f6
  %t1231 = or i64 0, 0
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1231, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6f24
L_8001a6f30_ft:
  ; @pc 0x8001a6f30 word 0xf9405a69
  %r1250.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1250 = load i64, ptr %r1250.p, align 8, !alias.scope !3, !noalias !4
  %t1251 = add i64 %r1250, 176
  %gmp1252 = inttoptr i64 %t1251 to ptr
  %gml1253 = load i64, ptr %gmp1252, align 1, !alias.scope !4, !noalias !3
  %wp1254 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1253, ptr %wp1254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f34 word 0x5100050a
  %r1255.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1255 = load i64, ptr %r1255.p, align 8, !alias.scope !3, !noalias !4
  %c1256 = trunc i64 %r1255 to i32
  %t1257 = sub i32 %c1256, 1
  %c1258 = zext i32 %t1257 to i64
  %wp1259 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1258, ptr %wp1259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f38 word 0x8b0a0129
  %r1260.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1260 = load i64, ptr %r1260.p, align 8, !alias.scope !3, !noalias !4
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1260, %r1261
  %wp1263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1262, ptr %wp1263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f3c word 0x8a2a0138
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %t1265 = xor i64 %r1264, -1
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %t1267 = and i64 %r1266, %t1265
  %wp1268 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1267, ptr %wp1268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f40 word 0x8b170309
  %r1269.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1269 = load i64, ptr %r1269.p, align 8, !alias.scope !3, !noalias !4
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %t1271 = add i64 %r1269, %r1270
  %wp1272 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1271, ptr %wp1272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f44 word 0xeb18013f
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %r1274.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1274 = load i64, ptr %r1274.p, align 8, !alias.scope !3, !noalias !4
  %t1275 = sub i64 %r1273, %r1274
  %fn1276 = icmp slt i64 %t1275, 0
  %fz1277 = icmp eq i64 %t1275, 0
  %fc1278 = icmp uge i64 %r1273, %r1274
  %fx11279 = xor i64 %r1273, %r1274
  %fx21280 = xor i64 %r1273, %t1275
  %fva1281 = and i64 %fx11279, %fx21280
  %fv1282 = icmp slt i64 %fva1281, 0
  %nz1283 = zext i1 %fn1276 to i64
  %zz1284 = zext i1 %fz1277 to i64
  %cz1285 = zext i1 %fc1278 to i64
  %vz1286 = zext i1 %fv1282 to i64
  %ns1287 = shl i64 %nz1283, 31
  %zs1288 = shl i64 %zz1284, 30
  %cs1289 = shl i64 %cz1285, 29
  %vs1290 = shl i64 %vz1286, 28
  %nzor1291 = or i64 %ns1287, %zs1288
  %cvor1292 = or i64 %cs1289, %vs1290
  %nzcv1293 = or i64 %nzor1291, %cvor1292
  %wp1294 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1293, ptr %wp1294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f48 word 0x54002183
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %fsh1297 = lshr i64 %r1295, 29
  %ftr1298 = trunc i64 %fsh1297 to i1
  %cond1296 = xor i1 %ftr1298, true
  br i1 %cond1296, label %L_8001a7378, label %L_8001a6f4c_ft
L_8001a6f4c_ft:
  ; @pc 0x8001a6f4c word 0xf9405e6a
  %r1299.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1299 = load i64, ptr %r1299.p, align 8, !alias.scope !3, !noalias !4
  %t1300 = add i64 %r1299, 184
  %gmp1301 = inttoptr i64 %t1300 to ptr
  %gml1302 = load i64, ptr %gmp1301, align 1, !alias.scope !4, !noalias !3
  %wp1303 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1302, ptr %wp1303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f50 word 0xeb09015f
  %r1304.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1304 = load i64, ptr %r1304.p, align 8, !alias.scope !3, !noalias !4
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %t1306 = sub i64 %r1304, %r1305
  %fn1307 = icmp slt i64 %t1306, 0
  %fz1308 = icmp eq i64 %t1306, 0
  %fc1309 = icmp uge i64 %r1304, %r1305
  %fx11310 = xor i64 %r1304, %r1305
  %fx21311 = xor i64 %r1304, %t1306
  %fva1312 = and i64 %fx11310, %fx21311
  %fv1313 = icmp slt i64 %fva1312, 0
  %nz1314 = zext i1 %fn1307 to i64
  %zz1315 = zext i1 %fz1308 to i64
  %cz1316 = zext i1 %fc1309 to i64
  %vz1317 = zext i1 %fv1313 to i64
  %ns1318 = shl i64 %nz1314, 31
  %zs1319 = shl i64 %zz1315, 30
  %cs1320 = shl i64 %cz1316, 29
  %vs1321 = shl i64 %vz1317, 28
  %nzor1322 = or i64 %ns1318, %zs1319
  %cvor1323 = or i64 %cs1320, %vs1321
  %nzcv1324 = or i64 %nzor1322, %cvor1323
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f54 word 0x54002123
  %r1326.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1326 = load i64, ptr %r1326.p, align 8, !alias.scope !3, !noalias !4
  %fsh1328 = lshr i64 %r1326, 29
  %ftr1329 = trunc i64 %fsh1328 to i1
  %cond1327 = xor i1 %ftr1329, true
  br i1 %cond1327, label %L_8001a7378, label %L_8001a6f58_ft
L_8001a6f58_ft:
  ; @pc 0x8001a6f58 word 0xf9005a69
  %r1330.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1330 = load i64, ptr %r1330.p, align 8, !alias.scope !3, !noalias !4
  %t1331 = add i64 %r1330, 176
  %r1332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1332 = load i64, ptr %r1332.p, align 8, !alias.scope !3, !noalias !4
  %gmp1333 = inttoptr i64 %t1331 to ptr
  store i64 %r1332, ptr %gmp1333, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6f5c word 0x17ffff61
  br label %L_8001a6ce0
L_8001a6f78_ft:
  ; @pc 0x8001a6f78 word 0x3942b270
  %r1366.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1366 = load i64, ptr %r1366.p, align 8, !alias.scope !3, !noalias !4
  %t1367 = add i64 %r1366, 172
  %gmp1368 = inttoptr i64 %t1367 to ptr
  %gml1369 = load i8, ptr %gmp1368, align 1, !alias.scope !4, !noalias !3
  %c1370 = zext i8 %gml1369 to i64
  %wp1371 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1370, ptr %wp1371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f7c word 0x5100050d
  %r1372.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1372 = load i64, ptr %r1372.p, align 8, !alias.scope !3, !noalias !4
  %c1373 = trunc i64 %r1372 to i32
  %t1374 = sub i32 %c1373, 1
  %c1375 = zext i32 %t1374 to i64
  %wp1376 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1375, ptr %wp1376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f80 word 0xaa2d03ee
  %r1377.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1377 = load i64, ptr %r1377.p, align 8, !alias.scope !3, !noalias !4
  %t1378 = xor i64 %r1377, -1
  %t1379 = or i64 0, %t1378
  %wp1380 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1379, ptr %wp1380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f84 word 0x35002bb0
  %r1381.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1381 = load i64, ptr %r1381.p, align 8, !alias.scope !3, !noalias !4
  %c1382 = trunc i64 %r1381 to i32
  %cmp1383 = icmp ne i32 %c1382, 0
  br i1 %cmp1383, label %L_8001a74f8, label %L_8001a6f88_ft
L_8001a6f88_ft:
  ; @pc 0x8001a6f88 word 0xaa0c03e8
  %r1384.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1384 = load i64, ptr %r1384.p, align 8, !alias.scope !3, !noalias !4
  %t1385 = or i64 0, %r1384
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1385, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a6f8c
L_8001a6f98_ft:
  ; @pc 0x8001a6f98 word 0x79402510
  %r1418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1418 = load i64, ptr %r1418.p, align 8, !alias.scope !3, !noalias !4
  %t1419 = add i64 %r1418, 18
  %gmp1420 = inttoptr i64 %t1419 to ptr
  %gml1421 = load i16, ptr %gmp1420, align 1, !alias.scope !4, !noalias !3
  %c1422 = zext i16 %gml1421 to i64
  %wp1423 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1422, ptr %wp1423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6f9c word 0x8b100111
  %r1424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1424 = load i64, ptr %r1424.p, align 8, !alias.scope !3, !noalias !4
  %r1425.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1425 = load i64, ptr %r1425.p, align 8, !alias.scope !3, !noalias !4
  %t1426 = add i64 %r1424, %r1425
  %wp1427 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1426, ptr %wp1427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fa0 word 0x91008231
  %r1428.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1428 = load i64, ptr %r1428.p, align 8, !alias.scope !3, !noalias !4
  %t1429 = add i64 %r1428, 32
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fa4 word 0x8b0d0232
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %r1432.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1432 = load i64, ptr %r1432.p, align 8, !alias.scope !3, !noalias !4
  %t1433 = add i64 %r1431, %r1432
  %wp1434 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t1433, ptr %wp1434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fa8 word 0xcb1102f1
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %t1437 = sub i64 %r1435, %r1436
  %wp1438 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1437, ptr %wp1438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fac word 0x8a0e0252
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %t1441 = and i64 %r1440, %r1439
  %wp1442 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t1441, ptr %wp1442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fb0 word 0x8b120231
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %t1445 = add i64 %r1443, %r1444
  %wp1446 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1445, ptr %wp1446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fb4 word 0xeb11019f
  %r1447.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1447 = load i64, ptr %r1447.p, align 8, !alias.scope !3, !noalias !4
  %r1448.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1448 = load i64, ptr %r1448.p, align 8, !alias.scope !3, !noalias !4
  %t1449 = sub i64 %r1447, %r1448
  %fn1450 = icmp slt i64 %t1449, 0
  %fz1451 = icmp eq i64 %t1449, 0
  %fc1452 = icmp uge i64 %r1447, %r1448
  %fx11453 = xor i64 %r1447, %r1448
  %fx21454 = xor i64 %r1447, %t1449
  %fva1455 = and i64 %fx11453, %fx21454
  %fv1456 = icmp slt i64 %fva1455, 0
  %nz1457 = zext i1 %fn1450 to i64
  %zz1458 = zext i1 %fz1451 to i64
  %cz1459 = zext i1 %fc1452 to i64
  %vz1460 = zext i1 %fv1456 to i64
  %ns1461 = shl i64 %nz1457, 31
  %zs1462 = shl i64 %zz1458, 30
  %cs1463 = shl i64 %cz1459, 29
  %vs1464 = shl i64 %vz1460, 28
  %nzor1465 = or i64 %ns1461, %zs1462
  %cvor1466 = or i64 %cs1463, %vs1464
  %nzcv1467 = or i64 %nzor1465, %cvor1466
  %wp1468 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1467, ptr %wp1468, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6fb8 word 0x540028a3
  %r1469.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1469 = load i64, ptr %r1469.p, align 8, !alias.scope !3, !noalias !4
  %fsh1471 = lshr i64 %r1469, 29
  %ftr1472 = trunc i64 %fsh1471 to i1
  %cond1470 = xor i1 %ftr1472, true
  br i1 %cond1470, label %L_8001a74cc, label %L_8001a6fbc
L_8001a6ff0_ft:
  ; @pc 0x8001a6ff0 word 0x72003d3f
  %r1561.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1561 = load i64, ptr %r1561.p, align 8, !alias.scope !3, !noalias !4
  %c1562 = trunc i64 %r1561 to i32
  %t1563 = and i32 %c1562, 65535
  %fn1564 = icmp slt i32 %t1563, 0
  %fz1565 = icmp eq i32 %t1563, 0
  %nz1566 = zext i1 %fn1564 to i64
  %zz1567 = zext i1 %fz1565 to i64
  %ns1568 = shl i64 %nz1566, 31
  %zs1569 = shl i64 %zz1567, 30
  %nzcv1570 = or i64 %ns1568, %zs1569
  %wp1571 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1570, ptr %wp1571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a6ff4 word 0x79002509
  %r1572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1572 = load i64, ptr %r1572.p, align 8, !alias.scope !3, !noalias !4
  %t1573 = add i64 %r1572, 18
  %r1574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1574 = load i64, ptr %r1574.p, align 8, !alias.scope !3, !noalias !4
  %c1575 = trunc i64 %r1574 to i32
  %c1576 = trunc i32 %c1575 to i16
  %gmp1577 = inttoptr i64 %t1573 to ptr
  store i16 %c1576, ptr %gmp1577, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a6ff8 word 0x54000080
  %r1578.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1578 = load i64, ptr %r1578.p, align 8, !alias.scope !3, !noalias !4
  %fsh1580 = lshr i64 %r1578, 30
  %cond1579 = trunc i64 %fsh1580 to i1
  br i1 %cond1579, label %L_8001a7008, label %L_8001a6ffc_ft
L_8001a6ffc_ft:
  ; @pc 0x8001a6ffc word 0x8b0a0129
  %r1581.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1581 = load i64, ptr %r1581.p, align 8, !alias.scope !3, !noalias !4
  %r1582.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1582 = load i64, ptr %r1582.p, align 8, !alias.scope !3, !noalias !4
  %t1583 = add i64 %r1581, %r1582
  %wp1584 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1583, ptr %wp1584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7000 word 0xb240010a
  %r1585.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1585 = load i64, ptr %r1585.p, align 8, !alias.scope !3, !noalias !4
  %t1586 = or i64 %r1585, 1
  %wp1587 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1586, ptr %wp1587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7004 word 0xf81f812a
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %t1589 = add i64 %r1588, -8
  %r1590.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1590 = load i64, ptr %r1590.p, align 8, !alias.scope !3, !noalias !4
  %gmp1591 = inttoptr i64 %t1589 to ptr
  store i64 %r1590, ptr %gmp1591, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7008
L_8001a701c_ft:
  ; @pc 0x8001a701c word 0xf940052b
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %t1613 = add i64 %r1612, 8
  %gmp1614 = inttoptr i64 %t1613 to ptr
  %gml1615 = load i64, ptr %gmp1614, align 1, !alias.scope !4, !noalias !3
  %wp1616 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1615, ptr %wp1616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7020 word 0xf900054b
  %r1617.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1617 = load i64, ptr %r1617.p, align 8, !alias.scope !3, !noalias !4
  %t1618 = add i64 %r1617, 8
  %r1619.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1619 = load i64, ptr %r1619.p, align 8, !alias.scope !3, !noalias !4
  %gmp1620 = inttoptr i64 %t1618 to ptr
  store i64 %r1619, ptr %gmp1620, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7024
L_8001a702c_ft:
  ; @pc 0x8001a702c word 0xf940012b
  %r1628.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1628 = load i64, ptr %r1628.p, align 8, !alias.scope !3, !noalias !4
  %gmp1629 = inttoptr i64 %r1628 to ptr
  %gml1630 = load i64, ptr %gmp1629, align 1, !alias.scope !4, !noalias !3
  %wp1631 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1630, ptr %wp1631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7030 word 0xf900014b
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %r1633.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1633 = load i64, ptr %r1633.p, align 8, !alias.scope !3, !noalias !4
  %gmp1634 = inttoptr i64 %r1632 to ptr
  store i64 %r1633, ptr %gmp1634, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7034
L_8001a7060_ft:
  ; @pc 0x8001a7060 word 0xf9400009
  %r1704.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1704 = load i64, ptr %r1704.p, align 8, !alias.scope !3, !noalias !4
  %gmp1705 = inttoptr i64 %r1704 to ptr
  %gml1706 = load i64, ptr %gmp1705, align 1, !alias.scope !4, !noalias !3
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7064 word 0xf9000001
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %r1709.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1709 = load i64, ptr %r1709.p, align 8, !alias.scope !3, !noalias !4
  %gmp1710 = inttoptr i64 %r1708 to ptr
  store i64 %r1709, ptr %gmp1710, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7068 word 0xa9000029
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %t1712 = add i64 %r1711, 8
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %gmp1714 = inttoptr i64 %r1711 to ptr
  store i64 %r1713, ptr %gmp1714, align 1, !alias.scope !4, !noalias !3
  %r1715.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1715 = load i64, ptr %r1715.p, align 8, !alias.scope !3, !noalias !4
  %gmp1716 = inttoptr i64 %t1712 to ptr
  store i64 %r1715, ptr %gmp1716, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a706c word 0xb4000049
  %r1717.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1717 = load i64, ptr %r1717.p, align 8, !alias.scope !3, !noalias !4
  %cmp1718 = icmp eq i64 %r1717, 0
  br i1 %cmp1718, label %L_8001a7074, label %L_8001a7070_ft
L_8001a7070_ft:
  ; @pc 0x8001a7070 word 0xf9000521
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %t1720 = add i64 %r1719, 8
  %r1721.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1721 = load i64, ptr %r1721.p, align 8, !alias.scope !3, !noalias !4
  %gmp1722 = inttoptr i64 %t1720 to ptr
  store i64 %r1721, ptr %gmp1722, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7074
L_8001a7088_ft:
  ; @pc 0x8001a7088 word 0x79402509
  %r1764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1764 = load i64, ptr %r1764.p, align 8, !alias.scope !3, !noalias !4
  %t1765 = add i64 %r1764, 18
  %gmp1766 = inttoptr i64 %t1765 to ptr
  %gml1767 = load i16, ptr %gmp1766, align 1, !alias.scope !4, !noalias !3
  %c1768 = zext i16 %gml1767 to i64
  %wp1769 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1768, ptr %wp1769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a708c word 0x8b0802ea
  %r1770.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1770 = load i64, ptr %r1770.p, align 8, !alias.scope !3, !noalias !4
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %t1772 = add i64 %r1770, %r1771
  %wp1773 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1772, ptr %wp1773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7090 word 0x8b090149
  %r1774.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1774 = load i64, ptr %r1774.p, align 8, !alias.scope !3, !noalias !4
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %t1776 = add i64 %r1774, %r1775
  %wp1777 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1776, ptr %wp1777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7094 word 0x17ffff6f
  br label %L_8001a6e50
L_8001a70ac_ft:
  ; @pc 0x8001a70ac word 0x1400010d
  br label %L_8001a74e0
L_8001a70d0_ft:
  ; @pc 0x8001a70d0 word 0x17ffff6f
  br label %L_8001a6e8c
L_8001a70dc_ft:
  ; @pc 0x8001a70dc word 0xf9000d1a
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %t1870 = add i64 %r1869, 24
  %r1871.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1871 = load i64, ptr %r1871.p, align 8, !alias.scope !3, !noalias !4
  %gmp1872 = inttoptr i64 %t1870 to ptr
  store i64 %r1871, ptr %gmp1872, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a70e0 word 0x17ffff6e
  br label %L_8001a6e98
L_8001a70e8_ft:
  ; @pc 0x8001a70e8 word 0xf9400920
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = add i64 %r1875, 16
  %gmp1877 = inttoptr i64 %t1876 to ptr
  %gml1878 = load i64, ptr %gmp1877, align 1, !alias.scope !4, !noalias !3
  %wp1879 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1878, ptr %wp1879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a70ec word 0xb5001160
  %r1880.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1880 = load i64, ptr %r1880.p, align 8, !alias.scope !3, !noalias !4
  %cmp1881 = icmp ne i64 %r1880, 0
  br i1 %cmp1881, label %L_8001a7318, label %L_8001a70f0
L_8001a70fc_ft:
  ; @pc 0x8001a70fc word 0xf9401e60
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %t1911 = add i64 %r1910, 56
  %gmp1912 = inttoptr i64 %t1911 to ptr
  %gml1913 = load i64, ptr %gmp1912, align 1, !alias.scope !4, !noalias !3
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1913, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7100 word 0xb4ffdf00
  %r1915.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1915 = load i64, ptr %r1915.p, align 8, !alias.scope !3, !noalias !4
  %cmp1916 = icmp eq i64 %r1915, 0
  br i1 %cmp1916, label %L_8001a6ce0, label %L_8001a7104_ft
L_8001a7104_ft:
  ; @pc 0x8001a7104 word 0x7100251f
  %r1917.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1917 = load i64, ptr %r1917.p, align 8, !alias.scope !3, !noalias !4
  %c1918 = trunc i64 %r1917 to i32
  %t1919 = sub i32 %c1918, 9
  %fn1920 = icmp slt i32 %t1919, 0
  %fz1921 = icmp eq i32 %t1919, 0
  %fc1922 = icmp uge i32 %c1918, 9
  %fx11923 = xor i32 %c1918, 9
  %fx21924 = xor i32 %c1918, %t1919
  %fva1925 = and i32 %fx11923, %fx21924
  %fv1926 = icmp slt i32 %fva1925, 0
  %nz1927 = zext i1 %fn1920 to i64
  %zz1928 = zext i1 %fz1921 to i64
  %cz1929 = zext i1 %fc1922 to i64
  %vz1930 = zext i1 %fv1926 to i64
  %ns1931 = shl i64 %nz1927, 31
  %zs1932 = shl i64 %zz1928, 30
  %cs1933 = shl i64 %cz1929, 29
  %vs1934 = shl i64 %vz1930, 28
  %nzor1935 = or i64 %ns1931, %zs1932
  %cvor1936 = or i64 %cs1933, %vs1934
  %nzcv1937 = or i64 %nzor1935, %cvor1936
  %wp1938 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1937, ptr %wp1938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7108 word 0xaa1303fa
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %t1940 = or i64 0, %r1939
  %wp1941 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1940, ptr %wp1941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a710c word 0x1a8833f8
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %c1943 = trunc i64 %r1942 to i32
  %r1944.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1944 = load i64, ptr %r1944.p, align 8, !alias.scope !3, !noalias !4
  %fsh1946 = lshr i64 %r1944, 29
  %ftr1947 = trunc i64 %fsh1946 to i1
  %cond1945 = xor i1 %ftr1947, true
  %sel1948 = select i1 %cond1945, i32 0, i32 %c1943
  %c1949 = zext i32 %sel1948 to i64
  %wp1950 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1949, ptr %wp1950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7110 word 0xf84c0f48
  %r1951.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1951 = load i64, ptr %r1951.p, align 8, !alias.scope !3, !noalias !4
  %t1952 = add i64 %r1951, 192
  %gmp1953 = inttoptr i64 %t1952 to ptr
  %gml1954 = load i64, ptr %gmp1953, align 1, !alias.scope !4, !noalias !3
  %wp1955 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1952, ptr %wp1955, align 8, !alias.scope !3, !noalias !4
  %wp1956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1954, ptr %wp1956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7114 word 0xb85e8349
  %r1957.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1957 = load i64, ptr %r1957.p, align 8, !alias.scope !3, !noalias !4
  %t1958 = add i64 %r1957, -24
  %gmp1959 = inttoptr i64 %t1958 to ptr
  %gml1960 = load i32, ptr %gmp1959, align 1, !alias.scope !4, !noalias !3
  %c1961 = zext i32 %gml1960 to i64
  %wp1962 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1961, ptr %wp1962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7118 word 0x37180049
  %r1963.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1963 = load i64, ptr %r1963.p, align 8, !alias.scope !3, !noalias !4
  %t1964 = and i64 %r1963, 8
  %cmp1965 = icmp ne i64 %t1964, 0
  br i1 %cmp1965, label %L_8001a7120, label %L_8001a711c_ft
L_8001a711c_ft:
  ; @pc 0x8001a711c word 0xb40000c8
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %cmp1967 = icmp eq i64 %r1966, 0
  br i1 %cmp1967, label %L_8001a7134, label %L_8001a7120
L_8001a7160_ft:
  ; @pc 0x8001a7160 word 0xaa0003f8
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %t2063 = or i64 0, %r2062
  %wp2064 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2063, ptr %wp2064, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7164
L_8001a716c_ft:
  ; @pc 0x8001a716c word 0xaa1703e0
  %r2074.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2074 = load i64, ptr %r2074.p, align 8, !alias.scope !3, !noalias !4
  %t2075 = or i64 0, %r2074
  %wp2076 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2075, ptr %wp2076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7170 word 0x94a7f3bc
  %wp2077 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471348, ptr %wp2077, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001a7174
L_8001a71a0_ft:
  ; @pc 0x8001a71a0 word 0x9100219a
  %r2142.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2142 = load i64, ptr %r2142.p, align 8, !alias.scope !3, !noalias !4
  %t2143 = add i64 %r2142, 8
  %wp2144 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2143, ptr %wp2144, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a71a4
L_8001a71d8_ft:
  ; @pc 0x8001a71d8 word 0xaa1703e0
  %r2217.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2217 = load i64, ptr %r2217.p, align 8, !alias.scope !3, !noalias !4
  %t2218 = or i64 0, %r2217
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2218, ptr %wp2219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a71dc word 0x94a7f3a5
  %wp2220 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471456, ptr %wp2220, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a71e0 word 0x17fffec0
  br label %L_8001a6ce0
L_8001a7210_ft:
  ; @pc 0x8001a7210 word 0x14000058
  br label %L_8001a7370
L_8001a7238_ft:
  ; @pc 0x8001a7238 word 0xb2607d08
  %r2323.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2323 = load i64, ptr %r2323.p, align 8, !alias.scope !3, !noalias !4
  %t2324 = or i64 %r2323, -4294967296
  %wp2325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2324, ptr %wp2325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a723c word 0x8a080158
  %r2326.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2326 = load i64, ptr %r2326.p, align 8, !alias.scope !3, !noalias !4
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %t2328 = and i64 %r2327, %r2326
  %wp2329 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2328, ptr %wp2329, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7240 word 0xf9405a68
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %t2331 = add i64 %r2330, 176
  %gmp2332 = inttoptr i64 %t2331 to ptr
  %gml2333 = load i64, ptr %gmp2332, align 1, !alias.scope !4, !noalias !3
  %wp2334 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2333, ptr %wp2334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7244 word 0xeb18011f
  %r2335.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2335 = load i64, ptr %r2335.p, align 8, !alias.scope !3, !noalias !4
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %t2337 = sub i64 %r2335, %r2336
  %fn2338 = icmp slt i64 %t2337, 0
  %fz2339 = icmp eq i64 %t2337, 0
  %fc2340 = icmp uge i64 %r2335, %r2336
  %fx12341 = xor i64 %r2335, %r2336
  %fx22342 = xor i64 %r2335, %t2337
  %fva2343 = and i64 %fx12341, %fx22342
  %fv2344 = icmp slt i64 %fva2343, 0
  %nz2345 = zext i1 %fn2338 to i64
  %zz2346 = zext i1 %fz2339 to i64
  %cz2347 = zext i1 %fc2340 to i64
  %vz2348 = zext i1 %fv2344 to i64
  %ns2349 = shl i64 %nz2345, 31
  %zs2350 = shl i64 %zz2346, 30
  %cs2351 = shl i64 %cz2347, 29
  %vs2352 = shl i64 %vz2348, 28
  %nzor2353 = or i64 %ns2349, %zs2350
  %cvor2354 = or i64 %cs2351, %vs2352
  %nzcv2355 = or i64 %nzor2353, %cvor2354
  %wp2356 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2355, ptr %wp2356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7248 word 0x540024c8
  %r2357.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2357 = load i64, ptr %r2357.p, align 8, !alias.scope !3, !noalias !4
  %fsh2359 = lshr i64 %r2357, 29
  %ftr2360 = trunc i64 %fsh2359 to i1
  %fsh2361 = lshr i64 %r2357, 30
  %ftr2362 = trunc i64 %fsh2361 to i1
  %fnz2363 = xor i1 %ftr2362, true
  %cond2358 = and i1 %ftr2360, %fnz2363
  br i1 %cond2358, label %L_8001a76e0, label %L_8001a724c_ft
L_8001a724c_ft:
  ; @pc 0x8001a724c word 0xf9005e78
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %t2365 = add i64 %r2364, 184
  %r2366.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2366 = load i64, ptr %r2366.p, align 8, !alias.scope !3, !noalias !4
  %gmp2367 = inttoptr i64 %t2365 to ptr
  store i64 %r2366, ptr %gmp2367, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7250 word 0x17fffea4
  br label %L_8001a6ce0
L_8001a7290_ft:
  ; @pc 0x8001a7290 word 0xf9400920
  %r2445.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2445 = load i64, ptr %r2445.p, align 8, !alias.scope !3, !noalias !4
  %t2446 = add i64 %r2445, 16
  %gmp2447 = inttoptr i64 %t2446 to ptr
  %gml2448 = load i64, ptr %gmp2447, align 1, !alias.scope !4, !noalias !3
  %wp2449 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2448, ptr %wp2449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7294 word 0xb40012e0
  %r2450.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2450 = load i64, ptr %r2450.p, align 8, !alias.scope !3, !noalias !4
  %cmp2451 = icmp eq i64 %r2450, 0
  br i1 %cmp2451, label %L_8001a74f0, label %L_8001a7298_ft
L_8001a7298_ft:
  ; @pc 0x8001a7298 word 0xa900d7f3
  %r2452.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2452 = load i64, ptr %r2452.p, align 8, !alias.scope !3, !noalias !4
  %t2453 = add i64 %r2452, 8
  %t2454 = add i64 %t2453, 8
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %gmp2456 = inttoptr i64 %t2453 to ptr
  store i64 %r2455, ptr %gmp2456, align 1, !alias.scope !4, !noalias !3
  %r2457.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2457 = load i64, ptr %r2457.p, align 8, !alias.scope !3, !noalias !4
  %gmp2458 = inttoptr i64 %t2454 to ptr
  store i64 %r2457, ptr %gmp2458, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a729c word 0x910023e1
  %r2459.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2459 = load i64, ptr %r2459.p, align 8, !alias.scope !3, !noalias !4
  %t2460 = add i64 %r2459, 8
  %wp2461 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2460, ptr %wp2461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72a0 word 0xb9001bf4
  %r2462.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2462 = load i64, ptr %r2462.p, align 8, !alias.scope !3, !noalias !4
  %t2463 = add i64 %r2462, 24
  %r2464.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2464 = load i64, ptr %r2464.p, align 8, !alias.scope !3, !noalias !4
  %c2465 = trunc i64 %r2464 to i32
  %gmp2466 = inttoptr i64 %t2463 to ptr
  store i32 %c2465, ptr %gmp2466, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a72a4 word 0xf90013f9
  %r2467.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2467 = load i64, ptr %r2467.p, align 8, !alias.scope !3, !noalias !4
  %t2468 = add i64 %r2467, 32
  %r2469.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2469 = load i64, ptr %r2469.p, align 8, !alias.scope !3, !noalias !4
  %gmp2470 = inttoptr i64 %t2468 to ptr
  store i64 %r2469, ptr %gmp2470, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a72a8 word 0xb9002bf4
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %t2472 = add i64 %r2471, 40
  %r2473.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2473 = load i64, ptr %r2473.p, align 8, !alias.scope !3, !noalias !4
  %c2474 = trunc i64 %r2473 to i32
  %gmp2475 = inttoptr i64 %t2472 to ptr
  store i32 %c2474, ptr %gmp2475, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a72ac
L_8001a72cc_ft:
  ; @pc 0x8001a72cc word 0xb2607d4a
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %t2526 = or i64 %r2525, -4294967296
  %wp2527 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2526, ptr %wp2527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72d0 word 0x8a0a0118
  %r2528.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2528 = load i64, ptr %r2528.p, align 8, !alias.scope !3, !noalias !4
  %r2529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2529 = load i64, ptr %r2529.p, align 8, !alias.scope !3, !noalias !4
  %t2530 = and i64 %r2529, %r2528
  %wp2531 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2530, ptr %wp2531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72d4 word 0xf9405a68
  %r2532.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2532 = load i64, ptr %r2532.p, align 8, !alias.scope !3, !noalias !4
  %t2533 = add i64 %r2532, 176
  %gmp2534 = inttoptr i64 %t2533 to ptr
  %gml2535 = load i64, ptr %gmp2534, align 1, !alias.scope !4, !noalias !3
  %wp2536 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2535, ptr %wp2536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72d8 word 0xeb18011f
  %r2537.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2537 = load i64, ptr %r2537.p, align 8, !alias.scope !3, !noalias !4
  %r2538.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2538 = load i64, ptr %r2538.p, align 8, !alias.scope !3, !noalias !4
  %t2539 = sub i64 %r2537, %r2538
  %fn2540 = icmp slt i64 %t2539, 0
  %fz2541 = icmp eq i64 %t2539, 0
  %fc2542 = icmp uge i64 %r2537, %r2538
  %fx12543 = xor i64 %r2537, %r2538
  %fx22544 = xor i64 %r2537, %t2539
  %fva2545 = and i64 %fx12543, %fx22544
  %fv2546 = icmp slt i64 %fva2545, 0
  %nz2547 = zext i1 %fn2540 to i64
  %zz2548 = zext i1 %fz2541 to i64
  %cz2549 = zext i1 %fc2542 to i64
  %vz2550 = zext i1 %fv2546 to i64
  %ns2551 = shl i64 %nz2547, 31
  %zs2552 = shl i64 %zz2548, 30
  %cs2553 = shl i64 %cz2549, 29
  %vs2554 = shl i64 %vz2550, 28
  %nzor2555 = or i64 %ns2551, %zs2552
  %cvor2556 = or i64 %cs2553, %vs2554
  %nzcv2557 = or i64 %nzor2555, %cvor2556
  %wp2558 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2557, ptr %wp2558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72dc word 0x54000b89
  %r2559.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2559 = load i64, ptr %r2559.p, align 8, !alias.scope !3, !noalias !4
  %fsh2561 = lshr i64 %r2559, 29
  %ftr2562 = trunc i64 %fsh2561 to i1
  %fsh2563 = lshr i64 %r2559, 30
  %ftr2564 = trunc i64 %fsh2563 to i1
  %fnz2565 = xor i1 %ftr2564, true
  %fhi2566 = and i1 %ftr2562, %fnz2565
  %cond2560 = xor i1 %fhi2566, true
  br i1 %cond2560, label %L_8001a744c, label %L_8001a72e0
L_8001a72e8_ft:
  ; @pc 0x8001a72e8 word 0xf9400920
  %r2574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2574 = load i64, ptr %r2574.p, align 8, !alias.scope !3, !noalias !4
  %t2575 = add i64 %r2574, 16
  %gmp2576 = inttoptr i64 %t2575 to ptr
  %gml2577 = load i64, ptr %gmp2576, align 1, !alias.scope !4, !noalias !3
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72ec word 0xb4fff020
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %cmp2580 = icmp eq i64 %r2579, 0
  br i1 %cmp2580, label %L_8001a70f0, label %L_8001a72f0_ft
L_8001a72f0_ft:
  ; @pc 0x8001a72f0 word 0xa900d7f3
  %r2581.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2581 = load i64, ptr %r2581.p, align 8, !alias.scope !3, !noalias !4
  %t2582 = add i64 %r2581, 8
  %t2583 = add i64 %t2582, 8
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %gmp2585 = inttoptr i64 %t2582 to ptr
  store i64 %r2584, ptr %gmp2585, align 1, !alias.scope !4, !noalias !3
  %r2586.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2586 = load i64, ptr %r2586.p, align 8, !alias.scope !3, !noalias !4
  %gmp2587 = inttoptr i64 %t2583 to ptr
  store i64 %r2586, ptr %gmp2587, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a72f4 word 0x910023e1
  %r2588.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2588 = load i64, ptr %r2588.p, align 8, !alias.scope !3, !noalias !4
  %t2589 = add i64 %r2588, 8
  %wp2590 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2589, ptr %wp2590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a72f8 word 0xb9001bf4
  %r2591.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2591 = load i64, ptr %r2591.p, align 8, !alias.scope !3, !noalias !4
  %t2592 = add i64 %r2591, 24
  %r2593.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2593 = load i64, ptr %r2593.p, align 8, !alias.scope !3, !noalias !4
  %c2594 = trunc i64 %r2593 to i32
  %gmp2595 = inttoptr i64 %t2592 to ptr
  store i32 %c2594, ptr %gmp2595, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a72fc word 0xf90013f9
  %r2596.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2596 = load i64, ptr %r2596.p, align 8, !alias.scope !3, !noalias !4
  %t2597 = add i64 %r2596, 32
  %r2598.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2598 = load i64, ptr %r2598.p, align 8, !alias.scope !3, !noalias !4
  %gmp2599 = inttoptr i64 %t2597 to ptr
  store i64 %r2598, ptr %gmp2599, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7300 word 0xb9002beb
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %t2601 = add i64 %r2600, 40
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %c2603 = trunc i64 %r2602 to i32
  %gmp2604 = inttoptr i64 %t2601 to ptr
  store i32 %c2603, ptr %gmp2604, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7304 word 0xf9400008
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %gmp2606 = inttoptr i64 %r2605 to ptr
  %gml2607 = load i64, ptr %gmp2606, align 1, !alias.scope !4, !noalias !3
  %wp2608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2607, ptr %wp2608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7308 word 0xf9400108
  %r2609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2609 = load i64, ptr %r2609.p, align 8, !alias.scope !3, !noalias !4
  %gmp2610 = inttoptr i64 %r2609 to ptr
  %gml2611 = load i64, ptr %gmp2610, align 1, !alias.scope !4, !noalias !3
  %wp2612 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2611, ptr %wp2612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a730c word 0xd63f0100
  %r2613.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2613 = load i64, ptr %r2613.p, align 8, !alias.scope !3, !noalias !4
  %fp2614 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2613, ptr %fp2614, align 8, !alias.scope !3, !noalias !4
  %wp2615 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471760, ptr %wp2615, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a7310 word 0x2a1a03e8
  %r2616.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2616 = load i64, ptr %r2616.p, align 8, !alias.scope !3, !noalias !4
  %c2617 = trunc i64 %r2616 to i32
  %t2618 = or i32 0, %c2617
  %c2619 = zext i32 %t2618 to i64
  %wp2620 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2619, ptr %wp2620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7314 word 0x17ffff77
  br label %L_8001a70f0
L_8001a7348_ft:
  ; @pc 0x8001a7348 word 0xf9400b20
  %r2668.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2668 = load i64, ptr %r2668.p, align 8, !alias.scope !3, !noalias !4
  %t2669 = add i64 %r2668, 16
  %gmp2670 = inttoptr i64 %t2669 to ptr
  %gml2671 = load i64, ptr %gmp2670, align 1, !alias.scope !4, !noalias !3
  %wp2672 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2671, ptr %wp2672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a734c word 0xb4000120
  %r2673.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2673 = load i64, ptr %r2673.p, align 8, !alias.scope !3, !noalias !4
  %cmp2674 = icmp eq i64 %r2673, 0
  br i1 %cmp2674, label %L_8001a7370, label %L_8001a7350_ft
L_8001a7350_ft:
  ; @pc 0x8001a7350 word 0xa900d7f3
  %r2675.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2675 = load i64, ptr %r2675.p, align 8, !alias.scope !3, !noalias !4
  %t2676 = add i64 %r2675, 8
  %t2677 = add i64 %t2676, 8
  %r2678.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2678 = load i64, ptr %r2678.p, align 8, !alias.scope !3, !noalias !4
  %gmp2679 = inttoptr i64 %t2676 to ptr
  store i64 %r2678, ptr %gmp2679, align 1, !alias.scope !4, !noalias !3
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %gmp2681 = inttoptr i64 %t2677 to ptr
  store i64 %r2680, ptr %gmp2681, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7354 word 0xb9001bf4
  %r2682.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2682 = load i64, ptr %r2682.p, align 8, !alias.scope !3, !noalias !4
  %t2683 = add i64 %r2682, 24
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %c2685 = trunc i64 %r2684 to i32
  %gmp2686 = inttoptr i64 %t2683 to ptr
  store i32 %c2685, ptr %gmp2686, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7358 word 0xf90013f7
  %r2687.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2687 = load i64, ptr %r2687.p, align 8, !alias.scope !3, !noalias !4
  %t2688 = add i64 %r2687, 32
  %r2689.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2689 = load i64, ptr %r2689.p, align 8, !alias.scope !3, !noalias !4
  %gmp2690 = inttoptr i64 %t2688 to ptr
  store i64 %r2689, ptr %gmp2690, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a735c
L_8001a737c_ft:
  ; @pc 0x8001a737c word 0xf9400b20
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %t2715 = add i64 %r2714, 16
  %gmp2716 = inttoptr i64 %t2715 to ptr
  %gml2717 = load i64, ptr %gmp2716, align 1, !alias.scope !4, !noalias !3
  %wp2718 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2717, ptr %wp2718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7380 word 0xb4000b80
  %r2719.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2719 = load i64, ptr %r2719.p, align 8, !alias.scope !3, !noalias !4
  %cmp2720 = icmp eq i64 %r2719, 0
  br i1 %cmp2720, label %L_8001a74f0, label %L_8001a7384_ft
L_8001a7384_ft:
  ; @pc 0x8001a7384 word 0xa900d7f3
  %r2721.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2721 = load i64, ptr %r2721.p, align 8, !alias.scope !3, !noalias !4
  %t2722 = add i64 %r2721, 8
  %t2723 = add i64 %t2722, 8
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %gmp2725 = inttoptr i64 %t2722 to ptr
  store i64 %r2724, ptr %gmp2725, align 1, !alias.scope !4, !noalias !3
  %r2726.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2726 = load i64, ptr %r2726.p, align 8, !alias.scope !3, !noalias !4
  %gmp2727 = inttoptr i64 %t2723 to ptr
  store i64 %r2726, ptr %gmp2727, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7388 word 0xb9001bf4
  %r2728.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2728 = load i64, ptr %r2728.p, align 8, !alias.scope !3, !noalias !4
  %t2729 = add i64 %r2728, 24
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %c2731 = trunc i64 %r2730 to i32
  %gmp2732 = inttoptr i64 %t2729 to ptr
  store i32 %c2731, ptr %gmp2732, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a738c word 0xf90013f7
  %r2733.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2733 = load i64, ptr %r2733.p, align 8, !alias.scope !3, !noalias !4
  %t2734 = add i64 %r2733, 32
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %gmp2736 = inttoptr i64 %t2734 to ptr
  store i64 %r2735, ptr %gmp2736, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a7390 word 0xb9002be8
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %t2738 = add i64 %r2737, 40
  %r2739.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2739 = load i64, ptr %r2739.p, align 8, !alias.scope !3, !noalias !4
  %c2740 = trunc i64 %r2739 to i32
  %gmp2741 = inttoptr i64 %t2738 to ptr
  store i32 %c2740, ptr %gmp2741, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a7394
L_8001a73ac_ft:
  ; @pc 0x8001a73ac word 0xf9400b20
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %t2759 = add i64 %r2758, 16
  %gmp2760 = inttoptr i64 %t2759 to ptr
  %gml2761 = load i64, ptr %gmp2760, align 1, !alias.scope !4, !noalias !3
  %wp2762 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2761, ptr %wp2762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a73b0 word 0xb4fffe00
  %r2763.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2763 = load i64, ptr %r2763.p, align 8, !alias.scope !3, !noalias !4
  %cmp2764 = icmp eq i64 %r2763, 0
  br i1 %cmp2764, label %L_8001a7370, label %L_8001a73b4_ft
L_8001a73b4_ft:
  ; @pc 0x8001a73b4 word 0xa900d7f3
  %r2765.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2765 = load i64, ptr %r2765.p, align 8, !alias.scope !3, !noalias !4
  %t2766 = add i64 %r2765, 8
  %t2767 = add i64 %t2766, 8
  %r2768.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2768 = load i64, ptr %r2768.p, align 8, !alias.scope !3, !noalias !4
  %gmp2769 = inttoptr i64 %t2766 to ptr
  store i64 %r2768, ptr %gmp2769, align 1, !alias.scope !4, !noalias !3
  %r2770.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2770 = load i64, ptr %r2770.p, align 8, !alias.scope !3, !noalias !4
  %gmp2771 = inttoptr i64 %t2767 to ptr
  store i64 %r2770, ptr %gmp2771, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a73b8 word 0xb9001bf4
  %r2772.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2772 = load i64, ptr %r2772.p, align 8, !alias.scope !3, !noalias !4
  %t2773 = add i64 %r2772, 24
  %r2774.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2774 = load i64, ptr %r2774.p, align 8, !alias.scope !3, !noalias !4
  %c2775 = trunc i64 %r2774 to i32
  %gmp2776 = inttoptr i64 %t2773 to ptr
  store i32 %c2775, ptr %gmp2776, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a73bc word 0xf90013e8
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %t2778 = add i64 %r2777, 32
  %r2779.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2779 = load i64, ptr %r2779.p, align 8, !alias.scope !3, !noalias !4
  %gmp2780 = inttoptr i64 %t2778 to ptr
  store i64 %r2779, ptr %gmp2780, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a73c0 word 0x17ffffe7
  br label %L_8001a735c
L_8001a73dc_ft:
  ; @pc 0x8001a73dc word 0x97ff557b
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361471968, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  call void @f_80017c9c8(ptr %c)
  br label %L_8001a73e0
L_8001a73e8_ft:
  ; @pc 0x8001a73e8 word 0x1400003f
  br label %L_8001a74e4
L_8001a73f8_ft:
  ; @pc 0x8001a73f8 word 0xaa1f03e8
  %t2860 = or i64 0, 0
  %wp2861 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2860, ptr %wp2861, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a73fc
L_8001a7408_ft:
  ; @pc 0x8001a7408 word 0xb4000088
  %r2893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2893 = load i64, ptr %r2893.p, align 8, !alias.scope !3, !noalias !4
  %cmp2894 = icmp eq i64 %r2893, 0
  br i1 %cmp2894, label %L_8001a7418, label %L_8001a740c_ft
L_8001a740c_ft:
  ; @pc 0x8001a740c word 0xf9400d0e
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %t2896 = add i64 %r2895, 24
  %gmp2897 = inttoptr i64 %t2896 to ptr
  %gml2898 = load i64, ptr %gmp2897, align 1, !alias.scope !4, !noalias !3
  %wp2899 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2898, ptr %wp2899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7410 word 0xeb0d01df
  %r2900.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2900 = load i64, ptr %r2900.p, align 8, !alias.scope !3, !noalias !4
  %r2901.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2901 = load i64, ptr %r2901.p, align 8, !alias.scope !3, !noalias !4
  %t2902 = sub i64 %r2900, %r2901
  %fn2903 = icmp slt i64 %t2902, 0
  %fz2904 = icmp eq i64 %t2902, 0
  %fc2905 = icmp uge i64 %r2900, %r2901
  %fx12906 = xor i64 %r2900, %r2901
  %fx22907 = xor i64 %r2900, %t2902
  %fva2908 = and i64 %fx12906, %fx22907
  %fv2909 = icmp slt i64 %fva2908, 0
  %nz2910 = zext i1 %fn2903 to i64
  %zz2911 = zext i1 %fz2904 to i64
  %cz2912 = zext i1 %fc2905 to i64
  %vz2913 = zext i1 %fv2909 to i64
  %ns2914 = shl i64 %nz2910, 31
  %zs2915 = shl i64 %zz2911, 30
  %cs2916 = shl i64 %cz2912, 29
  %vs2917 = shl i64 %vz2913, 28
  %nzor2918 = or i64 %ns2914, %zs2915
  %cvor2919 = or i64 %cs2916, %vs2917
  %nzcv2920 = or i64 %nzor2918, %cvor2919
  %wp2921 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2920, ptr %wp2921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7414 word 0x54000049
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %fsh2924 = lshr i64 %r2922, 29
  %ftr2925 = trunc i64 %fsh2924 to i1
  %fsh2926 = lshr i64 %r2922, 30
  %ftr2927 = trunc i64 %fsh2926 to i1
  %fnz2928 = xor i1 %ftr2927, true
  %fhi2929 = and i1 %ftr2925, %fnz2928
  %cond2923 = xor i1 %fhi2929, true
  br i1 %cond2923, label %L_8001a741c, label %L_8001a7418
L_8001a7434_ft:
  ; @pc 0x8001a7434 word 0xf9400d1a
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = add i64 %r2974, 24
  %gmp2976 = inttoptr i64 %t2975 to ptr
  %gml2977 = load i64, ptr %gmp2976, align 1, !alias.scope !4, !noalias !3
  %wp2978 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2977, ptr %wp2978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7438 word 0x17fffe60
  br label %L_8001a6db8
L_8001a7460_ft:
  ; @pc 0x8001a7460 word 0xaa1f03e8
  %t3021 = or i64 0, 0
  %wp3022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3021, ptr %wp3022, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7464
L_8001a7470_ft:
  ; @pc 0x8001a7470 word 0xb4000088
  %r3054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3054 = load i64, ptr %r3054.p, align 8, !alias.scope !3, !noalias !4
  %cmp3055 = icmp eq i64 %r3054, 0
  br i1 %cmp3055, label %L_8001a7480, label %L_8001a7474_ft
L_8001a7474_ft:
  ; @pc 0x8001a7474 word 0xf9400d0e
  %r3056.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3056 = load i64, ptr %r3056.p, align 8, !alias.scope !3, !noalias !4
  %t3057 = add i64 %r3056, 24
  %gmp3058 = inttoptr i64 %t3057 to ptr
  %gml3059 = load i64, ptr %gmp3058, align 1, !alias.scope !4, !noalias !3
  %wp3060 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3059, ptr %wp3060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7478 word 0xeb0d01df
  %r3061.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3061 = load i64, ptr %r3061.p, align 8, !alias.scope !3, !noalias !4
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %t3063 = sub i64 %r3061, %r3062
  %fn3064 = icmp slt i64 %t3063, 0
  %fz3065 = icmp eq i64 %t3063, 0
  %fc3066 = icmp uge i64 %r3061, %r3062
  %fx13067 = xor i64 %r3061, %r3062
  %fx23068 = xor i64 %r3061, %t3063
  %fva3069 = and i64 %fx13067, %fx23068
  %fv3070 = icmp slt i64 %fva3069, 0
  %nz3071 = zext i1 %fn3064 to i64
  %zz3072 = zext i1 %fz3065 to i64
  %cz3073 = zext i1 %fc3066 to i64
  %vz3074 = zext i1 %fv3070 to i64
  %ns3075 = shl i64 %nz3071, 31
  %zs3076 = shl i64 %zz3072, 30
  %cs3077 = shl i64 %cz3073, 29
  %vs3078 = shl i64 %vz3074, 28
  %nzor3079 = or i64 %ns3075, %zs3076
  %cvor3080 = or i64 %cs3077, %vs3078
  %nzcv3081 = or i64 %nzor3079, %cvor3080
  %wp3082 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3081, ptr %wp3082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a747c word 0x54000042
  %r3083.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3083 = load i64, ptr %r3083.p, align 8, !alias.scope !3, !noalias !4
  %fsh3085 = lshr i64 %r3083, 29
  %cond3084 = trunc i64 %fsh3085 to i1
  br i1 %cond3084, label %L_8001a7484, label %L_8001a7480
L_8001a7498_ft:
  ; @pc 0x8001a7498 word 0x17ffffe6
  br label %L_8001a7430
L_8001a74c8_ft:
  ; @pc 0x8001a74c8 word 0x17ffffda
  br label %L_8001a7430
L_8001a74e8_ft:
  ; @pc 0x8001a74e8 word 0xf9400b20
  %r3278.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3278 = load i64, ptr %r3278.p, align 8, !alias.scope !3, !noalias !4
  %t3279 = add i64 %r3278, 16
  %gmp3280 = inttoptr i64 %t3279 to ptr
  %gml3281 = load i64, ptr %gmp3280, align 1, !alias.scope !4, !noalias !3
  %wp3282 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3281, ptr %wp3282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a74ec word 0xb50010a0
  %r3283.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3283 = load i64, ptr %r3283.p, align 8, !alias.scope !3, !noalias !4
  %cmp3284 = icmp ne i64 %r3283, 0
  br i1 %cmp3284, label %L_8001a7700, label %L_8001a74f0
L_8001a7504_ft:
  ; @pc 0x8001a7504 word 0xaa1f03e8
  %t3318 = or i64 0, 0
  %wp3319 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3318, ptr %wp3319, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a7508
L_8001a7528_ft:
  ; @pc 0x8001a7528 word 0x14000052
  br label %L_8001a7670
L_8001a7550_ft:
  ; @pc 0x8001a7550 word 0xb4000088
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %cmp3445 = icmp eq i64 %r3444, 0
  br i1 %cmp3445, label %L_8001a7560, label %L_8001a7554_ft
L_8001a7554_ft:
  ; @pc 0x8001a7554 word 0xf9400d10
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %t3447 = add i64 %r3446, 24
  %gmp3448 = inttoptr i64 %t3447 to ptr
  %gml3449 = load i64, ptr %gmp3448, align 1, !alias.scope !4, !noalias !3
  %wp3450 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml3449, ptr %wp3450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7558 word 0xeb0f021f
  %r3451.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3451 = load i64, ptr %r3451.p, align 8, !alias.scope !3, !noalias !4
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %t3453 = sub i64 %r3451, %r3452
  %fn3454 = icmp slt i64 %t3453, 0
  %fz3455 = icmp eq i64 %t3453, 0
  %fc3456 = icmp uge i64 %r3451, %r3452
  %fx13457 = xor i64 %r3451, %r3452
  %fx23458 = xor i64 %r3451, %t3453
  %fva3459 = and i64 %fx13457, %fx23458
  %fv3460 = icmp slt i64 %fva3459, 0
  %nz3461 = zext i1 %fn3454 to i64
  %zz3462 = zext i1 %fz3455 to i64
  %cz3463 = zext i1 %fc3456 to i64
  %vz3464 = zext i1 %fv3460 to i64
  %ns3465 = shl i64 %nz3461, 31
  %zs3466 = shl i64 %zz3462, 30
  %cs3467 = shl i64 %cz3463, 29
  %vs3468 = shl i64 %vz3464, 28
  %nzor3469 = or i64 %ns3465, %zs3466
  %cvor3470 = or i64 %cs3467, %vs3468
  %nzcv3471 = or i64 %nzor3469, %cvor3470
  %wp3472 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3471, ptr %wp3472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a755c word 0x54fffdc9
  %r3473.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3473 = load i64, ptr %r3473.p, align 8, !alias.scope !3, !noalias !4
  %fsh3475 = lshr i64 %r3473, 29
  %ftr3476 = trunc i64 %fsh3475 to i1
  %fsh3477 = lshr i64 %r3473, 30
  %ftr3478 = trunc i64 %fsh3477 to i1
  %fnz3479 = xor i1 %ftr3478, true
  %fhi3480 = and i1 %ftr3476, %fnz3479
  %cond3474 = xor i1 %fhi3480, true
  br i1 %cond3474, label %L_8001a7514, label %L_8001a7560
L_8001a75a8_ft:
  ; @pc 0x8001a75a8 word 0x8b170329
  %r3548.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3548 = load i64, ptr %r3548.p, align 8, !alias.scope !3, !noalias !4
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %t3550 = add i64 %r3548, %r3549
  %wp3551 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3550, ptr %wp3551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a75ac word 0xf9000d09
  %r3552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3552 = load i64, ptr %r3552.p, align 8, !alias.scope !3, !noalias !4
  %t3553 = add i64 %r3552, 24
  %r3554.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3554 = load i64, ptr %r3554.p, align 8, !alias.scope !3, !noalias !4
  %gmp3555 = inttoptr i64 %t3553 to ptr
  store i64 %r3554, ptr %gmp3555, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a75b0 word 0x17fffe3a
  br label %L_8001a6e98
L_8001a75bc_ft:
  ; @pc 0x8001a75bc word 0xaa1f03e8
  %t3582 = or i64 0, 0
  %wp3583 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3582, ptr %wp3583, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a75c0
L_8001a75e0_ft:
  ; @pc 0x8001a75e0 word 0x14000024
  br label %L_8001a7670
L_8001a7608_ft:
  ; @pc 0x8001a7608 word 0xb4000088
  %r3708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3708 = load i64, ptr %r3708.p, align 8, !alias.scope !3, !noalias !4
  %cmp3709 = icmp eq i64 %r3708, 0
  br i1 %cmp3709, label %L_8001a7618, label %L_8001a760c_ft
L_8001a760c_ft:
  ; @pc 0x8001a760c word 0xf9400d10
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %t3711 = add i64 %r3710, 24
  %gmp3712 = inttoptr i64 %t3711 to ptr
  %gml3713 = load i64, ptr %gmp3712, align 1, !alias.scope !4, !noalias !3
  %wp3714 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml3713, ptr %wp3714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7610 word 0xeb0f021f
  %r3715.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3715 = load i64, ptr %r3715.p, align 8, !alias.scope !3, !noalias !4
  %r3716.p = getelementptr inbounds i8, ptr %c, i64 120
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
  ; @pc 0x8001a7614 word 0x54fffdc2
  %r3737.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3737 = load i64, ptr %r3737.p, align 8, !alias.scope !3, !noalias !4
  %fsh3739 = lshr i64 %r3737, 29
  %cond3738 = trunc i64 %fsh3739 to i1
  br i1 %cond3738, label %L_8001a75cc, label %L_8001a7618
L_8001a7630_ft:
  ; @pc 0x8001a7630 word 0x79402590
  %r3776.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3776 = load i64, ptr %r3776.p, align 8, !alias.scope !3, !noalias !4
  %t3777 = add i64 %r3776, 18
  %gmp3778 = inttoptr i64 %t3777 to ptr
  %gml3779 = load i16, ptr %gmp3778, align 1, !alias.scope !4, !noalias !3
  %c3780 = zext i16 %gml3779 to i64
  %wp3781 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3780, ptr %wp3781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7634 word 0xf100011f
  %r3782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3782 = load i64, ptr %r3782.p, align 8, !alias.scope !3, !noalias !4
  %t3783 = sub i64 %r3782, 0
  %fn3784 = icmp slt i64 %t3783, 0
  %fz3785 = icmp eq i64 %t3783, 0
  %fc3786 = icmp uge i64 %r3782, 0
  %fx13787 = xor i64 %r3782, 0
  %fx23788 = xor i64 %r3782, %t3783
  %fva3789 = and i64 %fx13787, %fx23788
  %fv3790 = icmp slt i64 %fva3789, 0
  %nz3791 = zext i1 %fn3784 to i64
  %zz3792 = zext i1 %fz3785 to i64
  %cz3793 = zext i1 %fc3786 to i64
  %vz3794 = zext i1 %fv3790 to i64
  %ns3795 = shl i64 %nz3791, 31
  %zs3796 = shl i64 %zz3792, 30
  %cs3797 = shl i64 %cz3793, 29
  %vs3798 = shl i64 %vz3794, 28
  %nzor3799 = or i64 %ns3795, %zs3796
  %cvor3800 = or i64 %cs3797, %vs3798
  %nzcv3801 = or i64 %nzor3799, %cvor3800
  %wp3802 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3801, ptr %wp3802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7638 word 0x8b100190
  %r3803.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3803 = load i64, ptr %r3803.p, align 8, !alias.scope !3, !noalias !4
  %r3804.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3804 = load i64, ptr %r3804.p, align 8, !alias.scope !3, !noalias !4
  %t3805 = add i64 %r3803, %r3804
  %wp3806 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3805, ptr %wp3806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a763c word 0x91008210
  %r3807.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3807 = load i64, ptr %r3807.p, align 8, !alias.scope !3, !noalias !4
  %t3808 = add i64 %r3807, 32
  %wp3809 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3808, ptr %wp3809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7640 word 0x8b0d0211
  %r3810.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3810 = load i64, ptr %r3810.p, align 8, !alias.scope !3, !noalias !4
  %r3811.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3811 = load i64, ptr %r3811.p, align 8, !alias.scope !3, !noalias !4
  %t3812 = add i64 %r3810, %r3811
  %wp3813 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3812, ptr %wp3813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7644 word 0xcb1002f0
  %r3814.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3814 = load i64, ptr %r3814.p, align 8, !alias.scope !3, !noalias !4
  %r3815.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3815 = load i64, ptr %r3815.p, align 8, !alias.scope !3, !noalias !4
  %t3816 = sub i64 %r3814, %r3815
  %wp3817 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3816, ptr %wp3817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7648 word 0x8a0e0231
  %r3818.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3818 = load i64, ptr %r3818.p, align 8, !alias.scope !3, !noalias !4
  %r3819.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3819 = load i64, ptr %r3819.p, align 8, !alias.scope !3, !noalias !4
  %t3820 = and i64 %r3819, %r3818
  %wp3821 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3820, ptr %wp3821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a764c word 0x8b110210
  %r3822.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3822 = load i64, ptr %r3822.p, align 8, !alias.scope !3, !noalias !4
  %r3823.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3823 = load i64, ptr %r3823.p, align 8, !alias.scope !3, !noalias !4
  %t3824 = add i64 %r3822, %r3823
  %wp3825 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3824, ptr %wp3825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7650 word 0x9a880191
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %r3827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3827 = load i64, ptr %r3827.p, align 8, !alias.scope !3, !noalias !4
  %r3828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3828 = load i64, ptr %r3828.p, align 8, !alias.scope !3, !noalias !4
  %fsh3830 = lshr i64 %r3828, 30
  %cond3829 = trunc i64 %fsh3830 to i1
  %sel3831 = select i1 %cond3829, i64 %r3826, i64 %r3827
  %wp3832 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %sel3831, ptr %wp3832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7654 word 0xeb1001ff
  %r3833.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3833 = load i64, ptr %r3833.p, align 8, !alias.scope !3, !noalias !4
  %r3834.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3834 = load i64, ptr %r3834.p, align 8, !alias.scope !3, !noalias !4
  %t3835 = sub i64 %r3833, %r3834
  %fn3836 = icmp slt i64 %t3835, 0
  %fz3837 = icmp eq i64 %t3835, 0
  %fc3838 = icmp uge i64 %r3833, %r3834
  %fx13839 = xor i64 %r3833, %r3834
  %fx23840 = xor i64 %r3833, %t3835
  %fva3841 = and i64 %fx13839, %fx23840
  %fv3842 = icmp slt i64 %fva3841, 0
  %nz3843 = zext i1 %fn3836 to i64
  %zz3844 = zext i1 %fz3837 to i64
  %cz3845 = zext i1 %fc3838 to i64
  %vz3846 = zext i1 %fv3842 to i64
  %ns3847 = shl i64 %nz3843, 31
  %zs3848 = shl i64 %zz3844, 30
  %cs3849 = shl i64 %cz3845, 29
  %vs3850 = shl i64 %vz3846, 28
  %nzor3851 = or i64 %ns3847, %zs3848
  %cvor3852 = or i64 %cs3849, %vs3850
  %nzcv3853 = or i64 %nzor3851, %cvor3852
  %wp3854 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3853, ptr %wp3854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7658 word 0x9a913108
  %r3855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3855 = load i64, ptr %r3855.p, align 8, !alias.scope !3, !noalias !4
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %r3857.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3857 = load i64, ptr %r3857.p, align 8, !alias.scope !3, !noalias !4
  %fsh3859 = lshr i64 %r3857, 29
  %ftr3860 = trunc i64 %fsh3859 to i1
  %cond3858 = xor i1 %ftr3860, true
  %sel3861 = select i1 %cond3858, i64 %r3855, i64 %r3856
  %wp3862 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3861, ptr %wp3862, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a765c
L_8001a7674_ft:
  ; @pc 0x8001a7674 word 0x79402510
  %r3904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3904 = load i64, ptr %r3904.p, align 8, !alias.scope !3, !noalias !4
  %t3905 = add i64 %r3904, 18
  %gmp3906 = inttoptr i64 %t3905 to ptr
  %gml3907 = load i16, ptr %gmp3906, align 1, !alias.scope !4, !noalias !3
  %c3908 = zext i16 %gml3907 to i64
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3908, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7678 word 0xf9400d0c
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %t3911 = add i64 %r3910, 24
  %gmp3912 = inttoptr i64 %t3911 to ptr
  %gml3913 = load i64, ptr %gmp3912, align 1, !alias.scope !4, !noalias !3
  %wp3914 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3913, ptr %wp3914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a767c word 0x17fffe50
  br label %L_8001a6fbc
L_8001a7688_ft:
  ; @pc 0x8001a7688 word 0xf9401e60
  %r3940.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3940 = load i64, ptr %r3940.p, align 8, !alias.scope !3, !noalias !4
  %t3941 = add i64 %r3940, 56
  %gmp3942 = inttoptr i64 %t3941 to ptr
  %gml3943 = load i64, ptr %gmp3942, align 1, !alias.scope !4, !noalias !3
  %wp3944 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3943, ptr %wp3944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a768c word 0xb940ce61
  %r3945.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3945 = load i64, ptr %r3945.p, align 8, !alias.scope !3, !noalias !4
  %t3946 = add i64 %r3945, 204
  %gmp3947 = inttoptr i64 %t3946 to ptr
  %gml3948 = load i32, ptr %gmp3947, align 1, !alias.scope !4, !noalias !3
  %c3949 = zext i32 %gml3948 to i64
  %wp3950 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3949, ptr %wp3950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7690 word 0xf9400008
  %r3951.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3951 = load i64, ptr %r3951.p, align 8, !alias.scope !3, !noalias !4
  %gmp3952 = inttoptr i64 %r3951 to ptr
  %gml3953 = load i64, ptr %gmp3952, align 1, !alias.scope !4, !noalias !3
  %wp3954 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3953, ptr %wp3954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7694 word 0xf9404508
  %r3955.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3955 = load i64, ptr %r3955.p, align 8, !alias.scope !3, !noalias !4
  %t3956 = add i64 %r3955, 136
  %gmp3957 = inttoptr i64 %t3956 to ptr
  %gml3958 = load i64, ptr %gmp3957, align 1, !alias.scope !4, !noalias !3
  %wp3959 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3958, ptr %wp3959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a7698 word 0xd63f0100
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %fp3961 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3960, ptr %fp3961, align 8, !alias.scope !3, !noalias !4
  %wp3962 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361472668, ptr %wp3962, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a769c word 0xeb00037f
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %r3964.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3964 = load i64, ptr %r3964.p, align 8, !alias.scope !3, !noalias !4
  %t3965 = sub i64 %r3963, %r3964
  %fn3966 = icmp slt i64 %t3965, 0
  %fz3967 = icmp eq i64 %t3965, 0
  %fc3968 = icmp uge i64 %r3963, %r3964
  %fx13969 = xor i64 %r3963, %r3964
  %fx23970 = xor i64 %r3963, %t3965
  %fva3971 = and i64 %fx13969, %fx23970
  %fv3972 = icmp slt i64 %fva3971, 0
  %nz3973 = zext i1 %fn3966 to i64
  %zz3974 = zext i1 %fz3967 to i64
  %cz3975 = zext i1 %fc3968 to i64
  %vz3976 = zext i1 %fv3972 to i64
  %ns3977 = shl i64 %nz3973, 31
  %zs3978 = shl i64 %zz3974, 30
  %cs3979 = shl i64 %cz3975, 29
  %vs3980 = shl i64 %vz3976, 28
  %nzor3981 = or i64 %ns3977, %zs3978
  %cvor3982 = or i64 %cs3979, %vs3980
  %nzcv3983 = or i64 %nzor3981, %cvor3982
  %wp3984 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3983, ptr %wp3984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76a0 word 0x54fff288
  %r3985.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3985 = load i64, ptr %r3985.p, align 8, !alias.scope !3, !noalias !4
  %fsh3987 = lshr i64 %r3985, 29
  %ftr3988 = trunc i64 %fsh3987 to i1
  %fsh3989 = lshr i64 %r3985, 30
  %ftr3990 = trunc i64 %fsh3989 to i1
  %fnz3991 = xor i1 %ftr3990, true
  %cond3986 = and i1 %ftr3988, %fnz3991
  br i1 %cond3986, label %L_8001a74f0, label %L_8001a76a4_ft
L_8001a76a4_ft:
  ; @pc 0x8001a76a4 word 0xaa0003f9
  %r3992.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3992 = load i64, ptr %r3992.p, align 8, !alias.scope !3, !noalias !4
  %t3993 = or i64 0, %r3992
  %wp3994 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3993, ptr %wp3994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76a8 word 0xf9401e60
  %r3995.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3995 = load i64, ptr %r3995.p, align 8, !alias.scope !3, !noalias !4
  %t3996 = add i64 %r3995, 56
  %gmp3997 = inttoptr i64 %t3996 to ptr
  %gml3998 = load i64, ptr %gmp3997, align 1, !alias.scope !4, !noalias !3
  %wp3999 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3998, ptr %wp3999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76ac word 0xaa1903e1
  %r4000.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4000 = load i64, ptr %r4000.p, align 8, !alias.scope !3, !noalias !4
  %t4001 = or i64 0, %r4000
  %wp4002 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4001, ptr %wp4002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76b0 word 0xb940ce62
  %r4003.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4003 = load i64, ptr %r4003.p, align 8, !alias.scope !3, !noalias !4
  %t4004 = add i64 %r4003, 204
  %gmp4005 = inttoptr i64 %t4004 to ptr
  %gml4006 = load i32, ptr %gmp4005, align 1, !alias.scope !4, !noalias !3
  %c4007 = zext i32 %gml4006 to i64
  %wp4008 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4007, ptr %wp4008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76b4 word 0xf9400008
  %r4009.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4009 = load i64, ptr %r4009.p, align 8, !alias.scope !3, !noalias !4
  %gmp4010 = inttoptr i64 %r4009 to ptr
  %gml4011 = load i64, ptr %gmp4010, align 1, !alias.scope !4, !noalias !3
  %wp4012 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4011, ptr %wp4012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76b8 word 0xf9401908
  %r4013.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4013 = load i64, ptr %r4013.p, align 8, !alias.scope !3, !noalias !4
  %t4014 = add i64 %r4013, 48
  %gmp4015 = inttoptr i64 %t4014 to ptr
  %gml4016 = load i64, ptr %gmp4015, align 1, !alias.scope !4, !noalias !3
  %wp4017 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4016, ptr %wp4017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76bc word 0xd63f0100
  %r4018.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4018 = load i64, ptr %r4018.p, align 8, !alias.scope !3, !noalias !4
  %fp4019 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4018, ptr %fp4019, align 8, !alias.scope !3, !noalias !4
  %wp4020 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361472704, ptr %wp4020, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a76c0 word 0xaa0003f8
  %r4021.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4021 = load i64, ptr %r4021.p, align 8, !alias.scope !3, !noalias !4
  %t4022 = or i64 0, %r4021
  %wp4023 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4022, ptr %wp4023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76c4 word 0xb4ffb0e0
  %r4024.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4024 = load i64, ptr %r4024.p, align 8, !alias.scope !3, !noalias !4
  %cmp4025 = icmp eq i64 %r4024, 0
  br i1 %cmp4025, label %L_8001a6ce0, label %L_8001a76c8_ft
L_8001a76c8_ft:
  ; @pc 0x8001a76c8 word 0x17fffea7
  br label %L_8001a7164
L_8001a76e4_ft:
  ; @pc 0x8001a76e4 word 0xf9400b20
  %r4037.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4037 = load i64, ptr %r4037.p, align 8, !alias.scope !3, !noalias !4
  %t4038 = add i64 %r4037, 16
  %gmp4039 = inttoptr i64 %t4038 to ptr
  %gml4040 = load i64, ptr %gmp4039, align 1, !alias.scope !4, !noalias !3
  %wp4041 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4040, ptr %wp4041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a76e8 word 0xb4fff040
  %r4042.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4042 = load i64, ptr %r4042.p, align 8, !alias.scope !3, !noalias !4
  %cmp4043 = icmp eq i64 %r4042, 0
  br i1 %cmp4043, label %L_8001a74f0, label %L_8001a76ec_ft
L_8001a76ec_ft:
  ; @pc 0x8001a76ec word 0xa900d7f3
  %r4044.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4044 = load i64, ptr %r4044.p, align 8, !alias.scope !3, !noalias !4
  %t4045 = add i64 %r4044, 8
  %t4046 = add i64 %t4045, 8
  %r4047.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4047 = load i64, ptr %r4047.p, align 8, !alias.scope !3, !noalias !4
  %gmp4048 = inttoptr i64 %t4045 to ptr
  store i64 %r4047, ptr %gmp4048, align 1, !alias.scope !4, !noalias !3
  %r4049.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4049 = load i64, ptr %r4049.p, align 8, !alias.scope !3, !noalias !4
  %gmp4050 = inttoptr i64 %t4046 to ptr
  store i64 %r4049, ptr %gmp4050, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a76f0 word 0xb9001bf4
  %r4051.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4051 = load i64, ptr %r4051.p, align 8, !alias.scope !3, !noalias !4
  %t4052 = add i64 %r4051, 24
  %r4053.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4053 = load i64, ptr %r4053.p, align 8, !alias.scope !3, !noalias !4
  %c4054 = trunc i64 %r4053 to i32
  %gmp4055 = inttoptr i64 %t4052 to ptr
  store i32 %c4054, ptr %gmp4055, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a76f4 word 0xf90013f7
  %r4056.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4056 = load i64, ptr %r4056.p, align 8, !alias.scope !3, !noalias !4
  %t4057 = add i64 %r4056, 32
  %r4058.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4058 = load i64, ptr %r4058.p, align 8, !alias.scope !3, !noalias !4
  %gmp4059 = inttoptr i64 %t4057 to ptr
  store i64 %r4058, ptr %gmp4059, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a76f8 word 0xb9002be9
  %r4060.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4060 = load i64, ptr %r4060.p, align 8, !alias.scope !3, !noalias !4
  %t4061 = add i64 %r4060, 40
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %c4063 = trunc i64 %r4062 to i32
  %gmp4064 = inttoptr i64 %t4061 to ptr
  store i32 %c4063, ptr %gmp4064, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a76fc word 0x17ffff26
  br label %L_8001a7394
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
