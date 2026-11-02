; UltraTears chunk main_050_renderpass: 1 functions [0x8000dbae0..0x8000ddc60)
; ModuleID = 'main_050_renderpass_raw'
source_filename = "main_050_renderpass_raw"
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

declare dso_local void @f_8000a4db4(ptr)
declare dso_local void @f_8001ebdfc(ptr)
declare dso_local void @f_80021b4ac(ptr)
declare dso_local void @f_8007ef2c0(ptr)
declare dso_local void @f_8027d3594(ptr)
declare dso_local void @f_80283afac(ptr)
declare dso_local void @f_80283e54c(ptr)
declare dso_local void @f_80283e894(ptr)
declare dso_local void @f_80283fa6c(ptr)
declare dso_local void @f_802ba41d0(ptr)

define dso_local void @f_8000dbae0(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8000dbae0:
  ; @pc 0x8000dbae0 word 0xd10303ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 192
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbae4 word 0xa9067bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 96
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbae8 word 0xa9076ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 112
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbaec word 0xa90867fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 128
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbaf0 word 0xa9095ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 144
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbaf4 word 0xa90a57f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 160
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbaf8 word 0xa90b4ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 176
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbafc word 0x910183fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 96
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb00 word 0x39411404
  %r53.p = getelementptr inbounds i8, ptr %c, i64 0
  %r53 = load i64, ptr %r53.p, align 8, !alias.scope !3, !noalias !4
  %t54 = add i64 %r53, 69
  %gmp55 = inttoptr i64 %t54 to ptr
  %gml56 = load i8, ptr %gmp55, align 1, !alias.scope !4, !noalias !3
  %c57 = zext i8 %gml56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb04 word 0xaa0103fa
  %r59.p = getelementptr inbounds i8, ptr %c, i64 8
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = or i64 0, %r59
  %wp61 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t60, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb08 word 0xaa0003f3
  %r62.p = getelementptr inbounds i8, ptr %c, i64 0
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %t63 = or i64 0, %r62
  %wp64 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t63, ptr %wp64, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb0c word 0x7103fc9f
  %r65.p = getelementptr inbounds i8, ptr %c, i64 32
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %c66 = trunc i64 %r65 to i32
  %t67 = sub i32 %c66, 255
  %fn68 = icmp slt i32 %t67, 0
  %fz69 = icmp eq i32 %t67, 0
  %fc70 = icmp uge i32 %c66, 255
  %fx171 = xor i32 %c66, 255
  %fx272 = xor i32 %c66, %t67
  %fva73 = and i32 %fx171, %fx272
  %fv74 = icmp slt i32 %fva73, 0
  %nz75 = zext i1 %fn68 to i64
  %zz76 = zext i1 %fz69 to i64
  %cz77 = zext i1 %fc70 to i64
  %vz78 = zext i1 %fv74 to i64
  %ns79 = shl i64 %nz75, 31
  %zs80 = shl i64 %zz76, 30
  %cs81 = shl i64 %cz77, 29
  %vs82 = shl i64 %vz78, 28
  %nzor83 = or i64 %ns79, %zs80
  %cvor84 = or i64 %cs81, %vs82
  %nzcv85 = or i64 %nzor83, %cvor84
  %wp86 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb10 word 0x54000081
  %r87.p = getelementptr inbounds i8, ptr %c, i64 272
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %fsh89 = lshr i64 %r87, 30
  %ftr90 = trunc i64 %fsh89 to i1
  %cond88 = xor i1 %ftr90, true
  br i1 %cond88, label %L_8000dbb20, label %L_8000dbb14_ft
L_8000dbb20:
  ; @pc 0x8000dbb20 word 0x8b248348
  %r107.p = getelementptr inbounds i8, ptr %c, i64 208
  %r107 = load i64, ptr %r107.p, align 8, !alias.scope !3, !noalias !4
  %r108.p = getelementptr inbounds i8, ptr %c, i64 32
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %c109 = trunc i64 %r108 to i8
  %c110 = sext i8 %c109 to i64
  %t111 = add i64 %r107, %c110
  %wp112 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t111, ptr %wp112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb24 word 0x3980bd08
  %r113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %t114 = add i64 %r113, 47
  %gmp115 = inttoptr i64 %t114 to ptr
  %gml116 = load i8, ptr %gmp115, align 1, !alias.scope !4, !noalias !3
  %c117 = sext i8 %gml116 to i64
  %wp118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c117, ptr %wp118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb28 word 0xb100051f
  %r119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %t120 = add i64 %r119, 1
  %fn121 = icmp slt i64 %t120, 0
  %fz122 = icmp eq i64 %t120, 0
  %fc123 = icmp ult i64 %t120, %r119
  %fx1124 = xor i64 %r119, %t120
  %fx2125 = xor i64 1, %t120
  %fva126 = and i64 %fx1124, %fx2125
  %fv127 = icmp slt i64 %fva126, 0
  %nz128 = zext i1 %fn121 to i64
  %zz129 = zext i1 %fz122 to i64
  %cz130 = zext i1 %fc123 to i64
  %vz131 = zext i1 %fv127 to i64
  %ns132 = shl i64 %nz128, 31
  %zs133 = shl i64 %zz129, 30
  %cs134 = shl i64 %cz130, 29
  %vs135 = shl i64 %vz131, 28
  %nzor136 = or i64 %ns132, %zs133
  %cvor137 = or i64 %cs134, %vs135
  %nzcv138 = or i64 %nzor136, %cvor137
  %wp139 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv138, ptr %wp139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb2c word 0x54007420
  %r140.p = getelementptr inbounds i8, ptr %c, i64 272
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %fsh142 = lshr i64 %r140, 30
  %cond141 = trunc i64 %fsh142 to i1
  br i1 %cond141, label %L_8000dc9b0, label %L_8000dbb30_ft
L_8000dbb3c:
  ; @pc 0x8000dbb3c word 0xf94000b7
  %r164.p = getelementptr inbounds i8, ptr %c, i64 40
  %r164 = load i64, ptr %r164.p, align 8, !alias.scope !3, !noalias !4
  %gmp165 = inttoptr i64 %r164 to ptr
  %gml166 = load i64, ptr %gmp165, align 1, !alias.scope !4, !noalias !3
  %wp167 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml166, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb40 word 0xb40001b7
  %r168.p = getelementptr inbounds i8, ptr %c, i64 184
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %cmp169 = icmp eq i64 %r168, 0
  br i1 %cmp169, label %L_8000dbb74, label %L_8000dbb44_ft
L_8000dbb74:
  ; @pc 0x8000dbb74 word 0x2a1f03e0
  %t238 = or i32 0, 0
  %c239 = zext i32 %t238 to i64
  %wp240 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb78 word 0x14000072
  br label %L_8000dbd40
L_8000dbb7c:
  ; @pc 0x8000dbb7c word 0x3900f668
  %r241.p = getelementptr inbounds i8, ptr %c, i64 152
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %t242 = add i64 %r241, 61
  %r243.p = getelementptr inbounds i8, ptr %c, i64 64
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %c244 = trunc i64 %r243 to i32
  %c245 = trunc i32 %c244 to i8
  %gmp246 = inttoptr i64 %t242 to ptr
  store i8 %c245, ptr %gmp246, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbb80 word 0x37587f69
  %r247.p = getelementptr inbounds i8, ptr %c, i64 72
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %t248 = and i64 %r247, 2048
  %cmp249 = icmp ne i64 %t248, 0
  br i1 %cmp249, label %L_8000dcb6c, label %L_8000dbb84
L_8000dbb84:
  ; @pc 0x8000dbb84 word 0x3940ca6a
  %r250.p = getelementptr inbounds i8, ptr %c, i64 152
  %r250 = load i64, ptr %r250.p, align 8, !alias.scope !3, !noalias !4
  %t251 = add i64 %r250, 50
  %gmp252 = inttoptr i64 %t251 to ptr
  %gml253 = load i8, ptr %gmp252, align 1, !alias.scope !4, !noalias !3
  %c254 = zext i8 %gml253 to i64
  %wp255 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c254, ptr %wp255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb88 word 0x2a080148
  %r256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r256 = load i64, ptr %r256.p, align 8, !alias.scope !3, !noalias !4
  %c257 = trunc i64 %r256 to i32
  %r258.p = getelementptr inbounds i8, ptr %c, i64 80
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %c259 = trunc i64 %r258 to i32
  %t260 = or i32 %c259, %c257
  %c261 = zext i32 %t260 to i64
  %wp262 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c261, ptr %wp262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb8c word 0x3946766b
  %r263.p = getelementptr inbounds i8, ptr %c, i64 152
  %r263 = load i64, ptr %r263.p, align 8, !alias.scope !3, !noalias !4
  %t264 = add i64 %r263, 413
  %gmp265 = inttoptr i64 %t264 to ptr
  %gml266 = load i8, ptr %gmp265, align 1, !alias.scope !4, !noalias !3
  %c267 = zext i8 %gml266 to i64
  %wp268 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c267, ptr %wp268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb90 word 0x12001d0a
  %r269.p = getelementptr inbounds i8, ptr %c, i64 64
  %r269 = load i64, ptr %r269.p, align 8, !alias.scope !3, !noalias !4
  %c270 = trunc i64 %r269 to i32
  %t271 = and i32 %c270, 255
  %c272 = zext i32 %t271 to i64
  %wp273 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c272, ptr %wp273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb94 word 0x121e0108
  %r274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r274 = load i64, ptr %r274.p, align 8, !alias.scope !3, !noalias !4
  %c275 = trunc i64 %r274 to i32
  %t276 = and i32 %c275, 4
  %c277 = zext i32 %t276 to i64
  %wp278 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c277, ptr %wp278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb98 word 0x4a48096c
  %r279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %c280 = trunc i64 %r279 to i32
  %t281 = lshr i32 %c280, 2
  %r282.p = getelementptr inbounds i8, ptr %c, i64 88
  %r282 = load i64, ptr %r282.p, align 8, !alias.scope !3, !noalias !4
  %c283 = trunc i64 %r282 to i32
  %t284 = xor i32 %c283, %t281
  %c285 = zext i32 %t284 to i64
  %wp286 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c285, ptr %wp286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb9c word 0x370000cc
  %r287.p = getelementptr inbounds i8, ptr %c, i64 96
  %r287 = load i64, ptr %r287.p, align 8, !alias.scope !3, !noalias !4
  %t288 = and i64 %r287, 1
  %cmp289 = icmp ne i64 %t288, 0
  br i1 %cmp289, label %L_8000dbbb4, label %L_8000dbba0_ft
L_8000dbbb4:
  ; @pc 0x8000dbbb4 word 0x121f196b
  %r335.p = getelementptr inbounds i8, ptr %c, i64 88
  %r335 = load i64, ptr %r335.p, align 8, !alias.scope !3, !noalias !4
  %c336 = trunc i64 %r335 to i32
  %t337 = and i32 %c336, 254
  %c338 = zext i32 %t337 to i64
  %wp339 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c338, ptr %wp339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbb8 word 0x2a480968
  %r340.p = getelementptr inbounds i8, ptr %c, i64 64
  %r340 = load i64, ptr %r340.p, align 8, !alias.scope !3, !noalias !4
  %c341 = trunc i64 %r340 to i32
  %t342 = lshr i32 %c341, 2
  %r343.p = getelementptr inbounds i8, ptr %c, i64 88
  %r343 = load i64, ptr %r343.p, align 8, !alias.scope !3, !noalias !4
  %c344 = trunc i64 %r343 to i32
  %t345 = or i32 %c344, %t342
  %c346 = zext i32 %t345 to i64
  %wp347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c346, ptr %wp347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbbc word 0x39067668
  %r348.p = getelementptr inbounds i8, ptr %c, i64 152
  %r348 = load i64, ptr %r348.p, align 8, !alias.scope !3, !noalias !4
  %t349 = add i64 %r348, 413
  %r350.p = getelementptr inbounds i8, ptr %c, i64 64
  %r350 = load i64, ptr %r350.p, align 8, !alias.scope !3, !noalias !4
  %c351 = trunc i64 %r350 to i32
  %c352 = trunc i32 %c351 to i8
  %gmp353 = inttoptr i64 %t349 to ptr
  store i8 %c352, ptr %gmp353, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbbc0 word 0x52800028
  %c354 = zext i32 1 to i64
  %wp355 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c354, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbbc4
L_8000dbbc4:
  ; @pc 0x8000dbbc4 word 0x1200054c
  %r356.p = getelementptr inbounds i8, ptr %c, i64 80
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %c357 = trunc i64 %r356 to i32
  %t358 = and i32 %c357, 3
  %c359 = zext i32 %t358 to i64
  %wp360 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c359, ptr %wp360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbc8 word 0xb001648d
  %wp361 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34407366656, ptr %wp361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbcc word 0x911e91ad
  %r362.p = getelementptr inbounds i8, ptr %c, i64 104
  %r362 = load i64, ptr %r362.p, align 8, !alias.scope !3, !noalias !4
  %t363 = add i64 %r362, 1956
  %wp364 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t363, ptr %wp364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbd0 word 0x100000ae
  %wp365 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34360638436, ptr %wp365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbd4 word 0x786c79af
  %r366.p = getelementptr inbounds i8, ptr %c, i64 104
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %r367.p = getelementptr inbounds i8, ptr %c, i64 96
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = shl i64 %r367, 1
  %t369 = add i64 %r366, %t368
  %gmp370 = inttoptr i64 %t369 to ptr
  %gml371 = load i16, ptr %gmp370, align 1, !alias.scope !4, !noalias !3
  %c372 = zext i16 %gml371 to i64
  %wp373 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c372, ptr %wp373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbd8 word 0x8b0f09ce
  %r374.p = getelementptr inbounds i8, ptr %c, i64 112
  %r374 = load i64, ptr %r374.p, align 8, !alias.scope !3, !noalias !4
  %r375.p = getelementptr inbounds i8, ptr %c, i64 120
  %r375 = load i64, ptr %r375.p, align 8, !alias.scope !3, !noalias !4
  %t376 = shl i64 %r375, 2
  %t377 = add i64 %r374, %t376
  %wp378 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t377, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbdc word 0x2a1f03eb
  %t379 = or i32 0, 0
  %c380 = zext i32 %t379 to i64
  %wp381 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c380, ptr %wp381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbe0 word 0xd61f01c0
  %r382.p = getelementptr inbounds i8, ptr %c, i64 112
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r382, label %L_8000dbbe0_jt_def [
    i64 34360638436, label %L_8000dbbe4
    i64 34360638444, label %L_8000dbbec
    i64 34360640564, label %L_8000dc434
    i64 34360641868, label %L_8000dc94c
    i64 34360645604, label %L_8000dd7e4
  ]
L_8000dbbe4:
  ; @pc 0x8000dbbe4 word 0x3718a7aa
  %r383.p = getelementptr inbounds i8, ptr %c, i64 80
  %r383 = load i64, ptr %r383.p, align 8, !alias.scope !3, !noalias !4
  %t384 = and i64 %r383, 8
  %cmp385 = icmp ne i64 %t384, 0
  br i1 %cmp385, label %L_8000dd0d8, label %L_8000dbbe8_ft
L_8000dbbec:
  ; @pc 0x8000dbbec word 0x3946566c
  %r388.p = getelementptr inbounds i8, ptr %c, i64 152
  %r388 = load i64, ptr %r388.p, align 8, !alias.scope !3, !noalias !4
  %t389 = add i64 %r388, 405
  %gmp390 = inttoptr i64 %t389 to ptr
  %gml391 = load i8, ptr %gmp390, align 1, !alias.scope !4, !noalias !3
  %c392 = zext i8 %gml391 to i64
  %wp393 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c392, ptr %wp393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbf0 word 0x6b0c017f
  %r394.p = getelementptr inbounds i8, ptr %c, i64 88
  %r394 = load i64, ptr %r394.p, align 8, !alias.scope !3, !noalias !4
  %c395 = trunc i64 %r394 to i32
  %r396.p = getelementptr inbounds i8, ptr %c, i64 96
  %r396 = load i64, ptr %r396.p, align 8, !alias.scope !3, !noalias !4
  %c397 = trunc i64 %r396 to i32
  %t398 = sub i32 %c395, %c397
  %fn399 = icmp slt i32 %t398, 0
  %fz400 = icmp eq i32 %t398, 0
  %fc401 = icmp uge i32 %c395, %c397
  %fx1402 = xor i32 %c395, %c397
  %fx2403 = xor i32 %c395, %t398
  %fva404 = and i32 %fx1402, %fx2403
  %fv405 = icmp slt i32 %fva404, 0
  %nz406 = zext i1 %fn399 to i64
  %zz407 = zext i1 %fz400 to i64
  %cz408 = zext i1 %fc401 to i64
  %vz409 = zext i1 %fv405 to i64
  %ns410 = shl i64 %nz406, 31
  %zs411 = shl i64 %zz407, 30
  %cs412 = shl i64 %cz408, 29
  %vs413 = shl i64 %vz409, 28
  %nzor414 = or i64 %ns410, %zs411
  %cvor415 = or i64 %cs412, %vs413
  %nzcv416 = or i64 %nzor414, %cvor415
  %wp417 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv416, ptr %wp417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbf4 word 0x54000060
  %r418.p = getelementptr inbounds i8, ptr %c, i64 272
  %r418 = load i64, ptr %r418.p, align 8, !alias.scope !3, !noalias !4
  %fsh420 = lshr i64 %r418, 30
  %cond419 = trunc i64 %fsh420 to i1
  br i1 %cond419, label %L_8000dbc00, label %L_8000dbbf8_ft
L_8000dbc00:
  ; @pc 0x8000dbc00 word 0x5304154b
  %r429.p = getelementptr inbounds i8, ptr %c, i64 80
  %r429 = load i64, ptr %r429.p, align 8, !alias.scope !3, !noalias !4
  %c430 = trunc i64 %r429 to i32
  %ror431 = call i32 @llvm.fshr.i32(i32 %c430, i32 %c430, i32 4)
  %t432 = and i32 %ror431, 3
  %c433 = zext i32 %t432 to i64
  %wp434 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c433, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc04 word 0x7100057f
  %r435.p = getelementptr inbounds i8, ptr %c, i64 88
  %r435 = load i64, ptr %r435.p, align 8, !alias.scope !3, !noalias !4
  %c436 = trunc i64 %r435 to i32
  %t437 = sub i32 %c436, 1
  %fn438 = icmp slt i32 %t437, 0
  %fz439 = icmp eq i32 %t437, 0
  %fc440 = icmp uge i32 %c436, 1
  %fx1441 = xor i32 %c436, 1
  %fx2442 = xor i32 %c436, %t437
  %fva443 = and i32 %fx1441, %fx2442
  %fv444 = icmp slt i32 %fva443, 0
  %nz445 = zext i1 %fn438 to i64
  %zz446 = zext i1 %fz439 to i64
  %cz447 = zext i1 %fc440 to i64
  %vz448 = zext i1 %fv444 to i64
  %ns449 = shl i64 %nz445, 31
  %zs450 = shl i64 %zz446, 30
  %cs451 = shl i64 %cz447, 29
  %vs452 = shl i64 %vz448, 28
  %nzor453 = or i64 %ns449, %zs450
  %cvor454 = or i64 %cs451, %vs452
  %nzcv455 = or i64 %nzor453, %cvor454
  %wp456 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv455, ptr %wp456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc08 word 0x54007ae0
  %r457.p = getelementptr inbounds i8, ptr %c, i64 272
  %r457 = load i64, ptr %r457.p, align 8, !alias.scope !3, !noalias !4
  %fsh459 = lshr i64 %r457, 30
  %cond458 = trunc i64 %fsh459 to i1
  br i1 %cond458, label %L_8000dcb64, label %L_8000dbc0c_ft
L_8000dbc10:
  ; @pc 0x8000dbc10 word 0x7100097f
  %r462.p = getelementptr inbounds i8, ptr %c, i64 88
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %c463 = trunc i64 %r462 to i32
  %t464 = sub i32 %c463, 2
  %fn465 = icmp slt i32 %t464, 0
  %fz466 = icmp eq i32 %t464, 0
  %fc467 = icmp uge i32 %c463, 2
  %fx1468 = xor i32 %c463, 2
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
  ; @pc 0x8000dbc14 word 0x54007b00
  %r484.p = getelementptr inbounds i8, ptr %c, i64 272
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %fsh486 = lshr i64 %r484, 30
  %cond485 = trunc i64 %fsh486 to i1
  br i1 %cond485, label %L_8000dcb74, label %L_8000dbc18
L_8000dbc18:
  ; @pc 0x8000dbc18 word 0x3946726b
  %r487.p = getelementptr inbounds i8, ptr %c, i64 152
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %t488 = add i64 %r487, 412
  %gmp489 = inttoptr i64 %t488 to ptr
  %gml490 = load i8, ptr %gmp489, align 1, !alias.scope !4, !noalias !3
  %c491 = zext i8 %gml490 to i64
  %wp492 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c491, ptr %wp492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc1c word 0x6b0b015f
  %r493.p = getelementptr inbounds i8, ptr %c, i64 80
  %r493 = load i64, ptr %r493.p, align 8, !alias.scope !3, !noalias !4
  %c494 = trunc i64 %r493 to i32
  %r495.p = getelementptr inbounds i8, ptr %c, i64 88
  %r495 = load i64, ptr %r495.p, align 8, !alias.scope !3, !noalias !4
  %c496 = trunc i64 %r495 to i32
  %t497 = sub i32 %c494, %c496
  %fn498 = icmp slt i32 %t497, 0
  %fz499 = icmp eq i32 %t497, 0
  %fc500 = icmp uge i32 %c494, %c496
  %fx1501 = xor i32 %c494, %c496
  %fx2502 = xor i32 %c494, %t497
  %fva503 = and i32 %fx1501, %fx2502
  %fv504 = icmp slt i32 %fva503, 0
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
  ; @pc 0x8000dbc20 word 0x39466e6c
  %r517.p = getelementptr inbounds i8, ptr %c, i64 152
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %t518 = add i64 %r517, 411
  %gmp519 = inttoptr i64 %t518 to ptr
  %gml520 = load i8, ptr %gmp519, align 1, !alias.scope !4, !noalias !3
  %c521 = zext i8 %gml520 to i64
  %wp522 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c521, ptr %wp522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc24 word 0x1a9f17eb
  %t523 = add i32 0, 1
  %r524.p = getelementptr inbounds i8, ptr %c, i64 272
  %r524 = load i64, ptr %r524.p, align 8, !alias.scope !3, !noalias !4
  %fsh526 = lshr i64 %r524, 30
  %ftr527 = trunc i64 %fsh526 to i1
  %cond525 = xor i1 %ftr527, true
  %sel528 = select i1 %cond525, i32 0, i32 %t523
  %c529 = zext i32 %sel528 to i64
  %wp530 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c529, ptr %wp530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc28 word 0x6b0c015f
  %r531.p = getelementptr inbounds i8, ptr %c, i64 80
  %r531 = load i64, ptr %r531.p, align 8, !alias.scope !3, !noalias !4
  %c532 = trunc i64 %r531 to i32
  %r533.p = getelementptr inbounds i8, ptr %c, i64 96
  %r533 = load i64, ptr %r533.p, align 8, !alias.scope !3, !noalias !4
  %c534 = trunc i64 %r533 to i32
  %t535 = sub i32 %c532, %c534
  %fn536 = icmp slt i32 %t535, 0
  %fz537 = icmp eq i32 %t535, 0
  %fc538 = icmp uge i32 %c532, %c534
  %fx1539 = xor i32 %c532, %c534
  %fx2540 = xor i32 %c532, %t535
  %fva541 = and i32 %fx1539, %fx2540
  %fv542 = icmp slt i32 %fva541, 0
  %nz543 = zext i1 %fn536 to i64
  %zz544 = zext i1 %fz537 to i64
  %cz545 = zext i1 %fc538 to i64
  %vz546 = zext i1 %fv542 to i64
  %ns547 = shl i64 %nz543, 31
  %zs548 = shl i64 %zz544, 30
  %cs549 = shl i64 %cz545, 29
  %vs550 = shl i64 %vz546, 28
  %nzor551 = or i64 %ns547, %zs548
  %cvor552 = or i64 %cs549, %vs550
  %nzcv553 = or i64 %nzor551, %cvor552
  %wp554 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv553, ptr %wp554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc2c word 0x54007a81
  %r555.p = getelementptr inbounds i8, ptr %c, i64 272
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %fsh557 = lshr i64 %r555, 30
  %ftr558 = trunc i64 %fsh557 to i1
  %cond556 = xor i1 %ftr558, true
  br i1 %cond556, label %L_8000dcb7c, label %L_8000dbc30
L_8000dbc30:
  ; @pc 0x8000dbc30 word 0x36007aab
  %r559.p = getelementptr inbounds i8, ptr %c, i64 88
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = and i64 %r559, 1
  %cmp561 = icmp eq i64 %t560, 0
  br i1 %cmp561, label %L_8000dcb84, label %L_8000dbc34
L_8000dbc34:
  ; @pc 0x8000dbc34 word 0x37001149
  %r562.p = getelementptr inbounds i8, ptr %c, i64 72
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = and i64 %r562, 1
  %cmp564 = icmp ne i64 %t563, 0
  br i1 %cmp564, label %L_8000dbe5c, label %L_8000dbc38
L_8000dbc38:
  ; @pc 0x8000dbc38 word 0x2a1f03ed
  %t565 = or i32 0, 0
  %c566 = zext i32 %t565 to i64
  %wp567 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c566, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbc3c
L_8000dbc3c:
  ; @pc 0x8000dbc3c word 0x2a0d0108
  %r568.p = getelementptr inbounds i8, ptr %c, i64 104
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %c569 = trunc i64 %r568 to i32
  %r570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %c571 = trunc i64 %r570 to i32
  %t572 = or i32 %c571, %c569
  %c573 = zext i32 %t572 to i64
  %wp574 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c573, ptr %wp574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc40 word 0x7100051f
  %r575.p = getelementptr inbounds i8, ptr %c, i64 64
  %r575 = load i64, ptr %r575.p, align 8, !alias.scope !3, !noalias !4
  %c576 = trunc i64 %r575 to i32
  %t577 = sub i32 %c576, 1
  %fn578 = icmp slt i32 %t577, 0
  %fz579 = icmp eq i32 %t577, 0
  %fc580 = icmp uge i32 %c576, 1
  %fx1581 = xor i32 %c576, 1
  %fx2582 = xor i32 %c576, %t577
  %fva583 = and i32 %fx1581, %fx2582
  %fv584 = icmp slt i32 %fva583, 0
  %nz585 = zext i1 %fn578 to i64
  %zz586 = zext i1 %fz579 to i64
  %cz587 = zext i1 %fc580 to i64
  %vz588 = zext i1 %fv584 to i64
  %ns589 = shl i64 %nz585, 31
  %zs590 = shl i64 %zz586, 30
  %cs591 = shl i64 %cz587, 29
  %vs592 = shl i64 %vz588, 28
  %nzor593 = or i64 %ns589, %zs590
  %cvor594 = or i64 %cs591, %vs592
  %nzcv595 = or i64 %nzor593, %cvor594
  %wp596 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv595, ptr %wp596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc44 word 0x54001680
  %r597.p = getelementptr inbounds i8, ptr %c, i64 272
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %fsh599 = lshr i64 %r597, 30
  %cond598 = trunc i64 %fsh599 to i1
  br i1 %cond598, label %L_8000dbf14, label %L_8000dbc48
L_8000dbc48:
  ; @pc 0x8000dbc48 word 0xeb1800df
  %r600.p = getelementptr inbounds i8, ptr %c, i64 48
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %r601.p = getelementptr inbounds i8, ptr %c, i64 192
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %t602 = sub i64 %r600, %r601
  %fn603 = icmp slt i64 %t602, 0
  %fz604 = icmp eq i64 %t602, 0
  %fc605 = icmp uge i64 %r600, %r601
  %fx1606 = xor i64 %r600, %r601
  %fx2607 = xor i64 %r600, %t602
  %fva608 = and i64 %fx1606, %fx2607
  %fv609 = icmp slt i64 %fva608, 0
  %nz610 = zext i1 %fn603 to i64
  %zz611 = zext i1 %fz604 to i64
  %cz612 = zext i1 %fc605 to i64
  %vz613 = zext i1 %fv609 to i64
  %ns614 = shl i64 %nz610, 31
  %zs615 = shl i64 %zz611, 30
  %cs616 = shl i64 %cz612, 29
  %vs617 = shl i64 %vz613, 28
  %nzor618 = or i64 %ns614, %zs615
  %cvor619 = or i64 %cs616, %vs617
  %nzcv620 = or i64 %nzor618, %cvor619
  %wp621 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv620, ptr %wp621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc4c word 0x54003161
  %r622.p = getelementptr inbounds i8, ptr %c, i64 272
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %fsh624 = lshr i64 %r622, 30
  %ftr625 = trunc i64 %fsh624 to i1
  %cond623 = xor i1 %ftr625, true
  br i1 %cond623, label %L_8000dc278, label %L_8000dbc50
L_8000dbc50:
  ; @pc 0x8000dbc50 word 0x79417a68
  %r626.p = getelementptr inbounds i8, ptr %c, i64 152
  %r626 = load i64, ptr %r626.p, align 8, !alias.scope !3, !noalias !4
  %t627 = add i64 %r626, 188
  %gmp628 = inttoptr i64 %t627 to ptr
  %gml629 = load i16, ptr %gmp628, align 1, !alias.scope !4, !noalias !3
  %c630 = zext i16 %gml629 to i64
  %wp631 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c630, ptr %wp631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc54 word 0x35006b48
  %r632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %c633 = trunc i64 %r632 to i32
  %cmp634 = icmp ne i32 %c633, 0
  br i1 %cmp634, label %L_8000dc9bc, label %L_8000dbc58
L_8000dbc58:
  ; @pc 0x8000dbc58 word 0x39410a69
  %r635.p = getelementptr inbounds i8, ptr %c, i64 152
  %r635 = load i64, ptr %r635.p, align 8, !alias.scope !3, !noalias !4
  %t636 = add i64 %r635, 66
  %gmp637 = inttoptr i64 %t636 to ptr
  %gml638 = load i8, ptr %gmp637, align 1, !alias.scope !4, !noalias !3
  %c639 = zext i8 %gml638 to i64
  %wp640 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c639, ptr %wp640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc5c word 0x39412748
  %r641.p = getelementptr inbounds i8, ptr %c, i64 208
  %r641 = load i64, ptr %r641.p, align 8, !alias.scope !3, !noalias !4
  %t642 = add i64 %r641, 73
  %gmp643 = inttoptr i64 %t642 to ptr
  %gml644 = load i8, ptr %gmp643, align 1, !alias.scope !4, !noalias !3
  %c645 = zext i8 %gml644 to i64
  %wp646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc60 word 0x6b09011f
  %r647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r647 = load i64, ptr %r647.p, align 8, !alias.scope !3, !noalias !4
  %c648 = trunc i64 %r647 to i32
  %r649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r649 = load i64, ptr %r649.p, align 8, !alias.scope !3, !noalias !4
  %c650 = trunc i64 %r649 to i32
  %t651 = sub i32 %c648, %c650
  %fn652 = icmp slt i32 %t651, 0
  %fz653 = icmp eq i32 %t651, 0
  %fc654 = icmp uge i32 %c648, %c650
  %fx1655 = xor i32 %c648, %c650
  %fx2656 = xor i32 %c648, %t651
  %fva657 = and i32 %fx1655, %fx2656
  %fv658 = icmp slt i32 %fva657, 0
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
  ; @pc 0x8000dbc64 word 0x54000a21
  %r671.p = getelementptr inbounds i8, ptr %c, i64 272
  %r671 = load i64, ptr %r671.p, align 8, !alias.scope !3, !noalias !4
  %fsh673 = lshr i64 %r671, 30
  %ftr674 = trunc i64 %fsh673 to i1
  %cond672 = xor i1 %ftr674, true
  br i1 %cond672, label %L_8000dbda8, label %L_8000dbc68
L_8000dbc68:
  ; @pc 0x8000dbc68 word 0xf9400748
  %r675.p = getelementptr inbounds i8, ptr %c, i64 208
  %r675 = load i64, ptr %r675.p, align 8, !alias.scope !3, !noalias !4
  %t676 = add i64 %r675, 8
  %gmp677 = inttoptr i64 %t676 to ptr
  %gml678 = load i64, ptr %gmp677, align 1, !alias.scope !4, !noalias !3
  %wp679 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml678, ptr %wp679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc6c word 0x39405108
  %r680.p = getelementptr inbounds i8, ptr %c, i64 64
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %t681 = add i64 %r680, 20
  %gmp682 = inttoptr i64 %t681 to ptr
  %gml683 = load i8, ptr %gmp682, align 1, !alias.scope !4, !noalias !3
  %c684 = zext i8 %gml683 to i64
  %wp685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c684, ptr %wp685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc70 word 0x92400515
  %r686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r686 = load i64, ptr %r686.p, align 8, !alias.scope !3, !noalias !4
  %t687 = and i64 %r686, 3
  %wp688 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t687, ptr %wp688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc74 word 0x79408268
  %r689.p = getelementptr inbounds i8, ptr %c, i64 152
  %r689 = load i64, ptr %r689.p, align 8, !alias.scope !3, !noalias !4
  %t690 = add i64 %r689, 64
  %gmp691 = inttoptr i64 %t690 to ptr
  %gml692 = load i16, ptr %gmp691, align 1, !alias.scope !4, !noalias !3
  %c693 = zext i16 %gml692 to i64
  %wp694 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c693, ptr %wp694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc78 word 0x36286788
  %r695.p = getelementptr inbounds i8, ptr %c, i64 64
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %t696 = and i64 %r695, 32
  %cmp697 = icmp eq i64 %t696, 0
  br i1 %cmp697, label %L_8000dc968, label %L_8000dbc7c_ft
L_8000dbcfc:
  ; @pc 0x8000dbcfc word 0x3700048a
  %r896.p = getelementptr inbounds i8, ptr %c, i64 80
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %t897 = and i64 %r896, 1
  %cmp898 = icmp ne i64 %t897, 0
  br i1 %cmp898, label %L_8000dbd8c, label %L_8000dbd00_ft
L_8000dbd0c:
  ; @pc 0x8000dbd0c word 0xaa1703e0
  %r907.p = getelementptr inbounds i8, ptr %c, i64 184
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = or i64 0, %r907
  %wp909 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t908, ptr %wp909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd10 word 0xaa0803e2
  %r910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r910 = load i64, ptr %r910.p, align 8, !alias.scope !3, !noalias !4
  %t911 = or i64 0, %r910
  %wp912 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t911, ptr %wp912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd14 word 0x94ab212f
  %wp913 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360638744, ptr %wp913, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba41d0(ptr %c)
  ; @pc 0x8000dbd18 word 0xf9400329
  %r914.p = getelementptr inbounds i8, ptr %c, i64 200
  %r914 = load i64, ptr %r914.p, align 8, !alias.scope !3, !noalias !4
  %gmp915 = inttoptr i64 %r914 to ptr
  %gml916 = load i64, ptr %gmp915, align 1, !alias.scope !4, !noalias !3
  %wp917 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml916, ptr %wp917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd1c word 0x8b140ee8
  %r918.p = getelementptr inbounds i8, ptr %c, i64 184
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %r919.p = getelementptr inbounds i8, ptr %c, i64 160
  %r919 = load i64, ptr %r919.p, align 8, !alias.scope !3, !noalias !4
  %t920 = shl i64 %r919, 3
  %t921 = add i64 %r918, %t920
  %wp922 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t921, ptr %wp922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd20 word 0x8b188129
  %r923.p = getelementptr inbounds i8, ptr %c, i64 72
  %r923 = load i64, ptr %r923.p, align 8, !alias.scope !3, !noalias !4
  %r924.p = getelementptr inbounds i8, ptr %c, i64 192
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = shl i64 %r924, 32
  %t926 = add i64 %r923, %t925
  %wp927 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t926, ptr %wp927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd24 word 0xf9000329
  %r928.p = getelementptr inbounds i8, ptr %c, i64 200
  %r928 = load i64, ptr %r928.p, align 8, !alias.scope !3, !noalias !4
  %r929.p = getelementptr inbounds i8, ptr %c, i64 72
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %gmp930 = inttoptr i64 %r928 to ptr
  store i64 %r929, ptr %gmp930, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbd28 word 0xf90012c8
  %r931.p = getelementptr inbounds i8, ptr %c, i64 176
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %t932 = add i64 %r931, 32
  %r933.p = getelementptr inbounds i8, ptr %c, i64 64
  %r933 = load i64, ptr %r933.p, align 8, !alias.scope !3, !noalias !4
  %gmp934 = inttoptr i64 %t932 to ptr
  store i64 %r933, ptr %gmp934, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dbd2c
L_8000dbd2c:
  ; @pc 0x8000dbd2c word 0x3940c268
  %r935.p = getelementptr inbounds i8, ptr %c, i64 152
  %r935 = load i64, ptr %r935.p, align 8, !alias.scope !3, !noalias !4
  %t936 = add i64 %r935, 48
  %gmp937 = inttoptr i64 %t936 to ptr
  %gml938 = load i8, ptr %gmp937, align 1, !alias.scope !4, !noalias !3
  %c939 = zext i8 %gml938 to i64
  %wp940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c939, ptr %wp940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd30 word 0x35006768
  %r941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %c942 = trunc i64 %r941 to i32
  %cmp943 = icmp ne i32 %c942, 0
  br i1 %cmp943, label %L_8000dca1c, label %L_8000dbd34
L_8000dbd34:
  ; @pc 0x8000dbd34 word 0x3940c268
  %r944.p = getelementptr inbounds i8, ptr %c, i64 152
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %t945 = add i64 %r944, 48
  %gmp946 = inttoptr i64 %t945 to ptr
  %gml947 = load i8, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %c948 = zext i8 %gml947 to i64
  %wp949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c948, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd38 word 0xb50065e8
  %r950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %cmp951 = icmp ne i64 %r950, 0
  br i1 %cmp951, label %L_8000dc9f4, label %L_8000dbd3c
L_8000dbd3c:
  ; @pc 0x8000dbd3c word 0x52800020
  %c952 = zext i32 1 to i64
  %wp953 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c952, ptr %wp953, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbd40
L_8000dbd40:
  ; @pc 0x8000dbd40 word 0xa94b4ff4
  %r954.p = getelementptr inbounds i8, ptr %c, i64 256
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %t955 = add i64 %r954, 176
  %t956 = add i64 %t955, 8
  %gmp957 = inttoptr i64 %t955 to ptr
  %gml958 = load i64, ptr %gmp957, align 1, !alias.scope !4, !noalias !3
  %gmp959 = inttoptr i64 %t956 to ptr
  %gml960 = load i64, ptr %gmp959, align 1, !alias.scope !4, !noalias !3
  %wp961 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml958, ptr %wp961, align 8, !alias.scope !3, !noalias !4
  %wp962 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml960, ptr %wp962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd44 word 0xa94a57f6
  %r963.p = getelementptr inbounds i8, ptr %c, i64 256
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %t964 = add i64 %r963, 160
  %t965 = add i64 %t964, 8
  %gmp966 = inttoptr i64 %t964 to ptr
  %gml967 = load i64, ptr %gmp966, align 1, !alias.scope !4, !noalias !3
  %gmp968 = inttoptr i64 %t965 to ptr
  %gml969 = load i64, ptr %gmp968, align 1, !alias.scope !4, !noalias !3
  %wp970 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml967, ptr %wp970, align 8, !alias.scope !3, !noalias !4
  %wp971 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml969, ptr %wp971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd48 word 0xa9495ff8
  %r972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r972 = load i64, ptr %r972.p, align 8, !alias.scope !3, !noalias !4
  %t973 = add i64 %r972, 144
  %t974 = add i64 %t973, 8
  %gmp975 = inttoptr i64 %t973 to ptr
  %gml976 = load i64, ptr %gmp975, align 1, !alias.scope !4, !noalias !3
  %gmp977 = inttoptr i64 %t974 to ptr
  %gml978 = load i64, ptr %gmp977, align 1, !alias.scope !4, !noalias !3
  %wp979 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml976, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  %wp980 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml978, ptr %wp980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd4c word 0xa94867fa
  %r981.p = getelementptr inbounds i8, ptr %c, i64 256
  %r981 = load i64, ptr %r981.p, align 8, !alias.scope !3, !noalias !4
  %t982 = add i64 %r981, 128
  %t983 = add i64 %t982, 8
  %gmp984 = inttoptr i64 %t982 to ptr
  %gml985 = load i64, ptr %gmp984, align 1, !alias.scope !4, !noalias !3
  %gmp986 = inttoptr i64 %t983 to ptr
  %gml987 = load i64, ptr %gmp986, align 1, !alias.scope !4, !noalias !3
  %wp988 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml985, ptr %wp988, align 8, !alias.scope !3, !noalias !4
  %wp989 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml987, ptr %wp989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd50 word 0xa9476ffc
  %r990.p = getelementptr inbounds i8, ptr %c, i64 256
  %r990 = load i64, ptr %r990.p, align 8, !alias.scope !3, !noalias !4
  %t991 = add i64 %r990, 112
  %t992 = add i64 %t991, 8
  %gmp993 = inttoptr i64 %t991 to ptr
  %gml994 = load i64, ptr %gmp993, align 1, !alias.scope !4, !noalias !3
  %gmp995 = inttoptr i64 %t992 to ptr
  %gml996 = load i64, ptr %gmp995, align 1, !alias.scope !4, !noalias !3
  %wp997 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml994, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  %wp998 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml996, ptr %wp998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd54 word 0xa9467bfd
  %r999.p = getelementptr inbounds i8, ptr %c, i64 256
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %t1000 = add i64 %r999, 96
  %t1001 = add i64 %t1000, 8
  %gmp1002 = inttoptr i64 %t1000 to ptr
  %gml1003 = load i64, ptr %gmp1002, align 1, !alias.scope !4, !noalias !3
  %gmp1004 = inttoptr i64 %t1001 to ptr
  %gml1005 = load i64, ptr %gmp1004, align 1, !alias.scope !4, !noalias !3
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1003, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  %wp1007 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1005, ptr %wp1007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd58 word 0x910303ff
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %t1009 = add i64 %r1008, 192
  %wp1010 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1009, ptr %wp1010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd5c word 0xd65f03c0
  ret void
L_8000dbd60:
  ; @pc 0x8000dbd60 word 0x36000168
  %r1011.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1011 = load i64, ptr %r1011.p, align 8, !alias.scope !3, !noalias !4
  %t1012 = and i64 %r1011, 1
  %cmp1013 = icmp eq i64 %t1012, 0
  br i1 %cmp1013, label %L_8000dbd8c, label %L_8000dbd64_ft
L_8000dbd88:
  ; @pc 0x8000dbd88 word 0x360032ed
  %r1096.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1096 = load i64, ptr %r1096.p, align 8, !alias.scope !3, !noalias !4
  %t1097 = and i64 %r1096, 1
  %cmp1098 = icmp eq i64 %t1097, 0
  br i1 %cmp1098, label %L_8000dc3e4, label %L_8000dbd8c
L_8000dbd8c:
  ; @pc 0x8000dbd8c word 0xb001c408
  %wp1099 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd90 word 0xaa1603e0
  %r1100.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1100 = load i64, ptr %r1100.p, align 8, !alias.scope !3, !noalias !4
  %t1101 = or i64 0, %r1100
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1101, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd94 word 0xf9416508
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %t1104 = add i64 %r1103, 712
  %gmp1105 = inttoptr i64 %t1104 to ptr
  %gml1106 = load i64, ptr %gmp1105, align 1, !alias.scope !4, !noalias !3
  %wp1107 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1106, ptr %wp1107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd98 word 0x52800021
  %c1108 = zext i32 1 to i64
  %wp1109 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1108, ptr %wp1109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd9c word 0xf9400108
  %r1110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1110 = load i64, ptr %r1110.p, align 8, !alias.scope !3, !noalias !4
  %gmp1111 = inttoptr i64 %r1110 to ptr
  %gml1112 = load i64, ptr %gmp1111, align 1, !alias.scope !4, !noalias !3
  %wp1113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1112, ptr %wp1113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbda0 word 0xd63f0100
  %r1114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1114 = load i64, ptr %r1114.p, align 8, !alias.scope !3, !noalias !4
  %fp1115 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1114, ptr %fp1115, align 8, !alias.scope !3, !noalias !4
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360638884, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbda4 word 0x17ffffe2
  br label %L_8000dbd2c
L_8000dbda8:
  ; @pc 0x8000dbda8 word 0xb9406269
  %r1117.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1117 = load i64, ptr %r1117.p, align 8, !alias.scope !3, !noalias !4
  %t1118 = add i64 %r1117, 96
  %gmp1119 = inttoptr i64 %t1118 to ptr
  %gml1120 = load i32, ptr %gmp1119, align 1, !alias.scope !4, !noalias !3
  %c1121 = zext i32 %gml1120 to i64
  %wp1122 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1121, ptr %wp1122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdac word 0x3100053f
  %r1123.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1123 = load i64, ptr %r1123.p, align 8, !alias.scope !3, !noalias !4
  %c1124 = trunc i64 %r1123 to i32
  %t1125 = add i32 %c1124, 1
  %fn1126 = icmp slt i32 %t1125, 0
  %fz1127 = icmp eq i32 %t1125, 0
  %fc1128 = icmp ult i32 %t1125, %c1124
  %fx11129 = xor i32 %c1124, %t1125
  %fx21130 = xor i32 1, %t1125
  %fva1131 = and i32 %fx11129, %fx21130
  %fv1132 = icmp slt i32 %fva1131, 0
  %nz1133 = zext i1 %fn1126 to i64
  %zz1134 = zext i1 %fz1127 to i64
  %cz1135 = zext i1 %fc1128 to i64
  %vz1136 = zext i1 %fv1132 to i64
  %ns1137 = shl i64 %nz1133, 31
  %zs1138 = shl i64 %zz1134, 30
  %cs1139 = shl i64 %cz1135, 29
  %vs1140 = shl i64 %vz1136, 28
  %nzor1141 = or i64 %ns1137, %zs1138
  %cvor1142 = or i64 %cs1139, %vs1140
  %nzcv1143 = or i64 %nzor1141, %cvor1142
  %wp1144 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1143, ptr %wp1144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdb0 word 0x54fff5c0
  %r1145.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1145 = load i64, ptr %r1145.p, align 8, !alias.scope !3, !noalias !4
  %fsh1147 = lshr i64 %r1145, 30
  %cond1146 = trunc i64 %fsh1147 to i1
  br i1 %cond1146, label %L_8000dbc68, label %L_8000dbdb4_ft
L_8000dbdec:
  ; @pc 0x8000dbdec word 0x885f7d09
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %atp1271 = inttoptr i64 %r1270 to ptr
  %ldx1272 = load atomic i32, ptr %atp1271 acquire, align 4, !alias.scope !4, !noalias !3
  %c1273 = zext i32 %ldx1272 to i64
  %fp1274 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r1270, ptr %fp1274, align 8, !alias.scope !3, !noalias !4
  %fp1275 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c1273, ptr %fp1275, align 8, !alias.scope !3, !noalias !4
  %wp1276 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1273, ptr %wp1276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdf0 word 0xb240012a
  %r1277.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1277 = load i64, ptr %r1277.p, align 8, !alias.scope !3, !noalias !4
  %t1278 = or i64 %r1277, 1
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdf4 word 0x880b7d0a
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %atp1281 = inttoptr i64 %r1280 to ptr
  %fp1282 = getelementptr inbounds i8, ptr %c, i64 296
  %fv1283 = load i64, ptr %fp1282, align 8, !alias.scope !3, !noalias !4
  %fp1284 = getelementptr inbounds i8, ptr %c, i64 304
  %fv1285 = load i64, ptr %fp1284, align 8, !alias.scope !3, !noalias !4
  %fp1286 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp1286, align 8, !alias.scope !3, !noalias !4
  %cmp1287 = icmp eq i64 %fv1283, %r1280
  %c1288 = trunc i64 %fv1285 to i32
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %c1290 = trunc i64 %r1289 to i32
  %cx1291 = cmpxchg ptr %atp1281, i32 %c1288, i32 %c1290 seq_cst seq_cst, align 4
  %cxok1292 = extractvalue { i32, i1 } %cx1291, 1
  %t1293 = and i1 %cmp1287, %cxok1292
  %sel1294 = select i1 %t1293, i32 0, i32 1
  %c1295 = zext i32 %sel1294 to i64
  %wp1296 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1295, ptr %wp1296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdf8 word 0x35ffffab
  %r1297.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1297 = load i64, ptr %r1297.p, align 8, !alias.scope !3, !noalias !4
  %c1298 = trunc i64 %r1297 to i32
  %cmp1299 = icmp ne i32 %c1298, 0
  br i1 %cmp1299, label %L_8000dbdec, label %L_8000dbdfc_ft
L_8000dbe04:
  ; @pc 0x8000dbe04 word 0x52801b08
  %c1307 = zext i32 216 to i64
  %wp1308 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1307, ptr %wp1308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe08 word 0xd001c419
  %wp1309 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 34419888128, ptr %wp1309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe0c word 0xf9401277
  %r1310.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1310 = load i64, ptr %r1310.p, align 8, !alias.scope !3, !noalias !4
  %t1311 = add i64 %r1310, 32
  %gmp1312 = inttoptr i64 %t1311 to ptr
  %gml1313 = load i64, ptr %gmp1312, align 1, !alias.scope !4, !noalias !3
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1313, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe10 word 0x9b2852a8
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %c1316 = trunc i64 %r1315 to i32
  %c1317 = sext i32 %c1316 to i64
  %r1318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1318 = load i64, ptr %r1318.p, align 8, !alias.scope !3, !noalias !4
  %c1319 = trunc i64 %r1318 to i32
  %c1320 = sext i32 %c1319 to i64
  %t1321 = mul i64 %c1317, %c1320
  %r1322.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1322 = load i64, ptr %r1322.p, align 8, !alias.scope !3, !noalias !4
  %t1323 = add i64 %r1322, %t1321
  %wp1324 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1323, ptr %wp1324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe14 word 0xb940627a
  %r1325.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1325 = load i64, ptr %r1325.p, align 8, !alias.scope !3, !noalias !4
  %t1326 = add i64 %r1325, 96
  %gmp1327 = inttoptr i64 %t1326 to ptr
  %gml1328 = load i32, ptr %gmp1327, align 1, !alias.scope !4, !noalias !3
  %c1329 = zext i32 %gml1328 to i64
  %wp1330 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1329, ptr %wp1330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe18 word 0xf9400109
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %gmp1332 = inttoptr i64 %r1331 to ptr
  %gml1333 = load i64, ptr %gmp1332, align 1, !alias.scope !4, !noalias !3
  %wp1334 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1333, ptr %wp1334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe1c word 0x3941291c
  %r1335.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1335 = load i64, ptr %r1335.p, align 8, !alias.scope !3, !noalias !4
  %t1336 = add i64 %r1335, 74
  %gmp1337 = inttoptr i64 %t1336 to ptr
  %gml1338 = load i8, ptr %gmp1337, align 1, !alias.scope !4, !noalias !3
  %c1339 = zext i8 %gml1338 to i64
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1339, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe20 word 0xf9404116
  %r1341.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1341 = load i64, ptr %r1341.p, align 8, !alias.scope !3, !noalias !4
  %t1342 = add i64 %r1341, 128
  %gmp1343 = inttoptr i64 %t1342 to ptr
  %gml1344 = load i64, ptr %gmp1343, align 1, !alias.scope !4, !noalias !3
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe24 word 0x7940911b
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %t1347 = add i64 %r1346, 72
  %gmp1348 = inttoptr i64 %t1347 to ptr
  %gml1349 = load i16, ptr %gmp1348, align 1, !alias.scope !4, !noalias !3
  %c1350 = zext i16 %gml1349 to i64
  %wp1351 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1350, ptr %wp1351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe28 word 0xb9404118
  %r1352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1352 = load i64, ptr %r1352.p, align 8, !alias.scope !3, !noalias !4
  %t1353 = add i64 %r1352, 64
  %gmp1354 = inttoptr i64 %t1353 to ptr
  %gml1355 = load i32, ptr %gmp1354, align 1, !alias.scope !4, !noalias !3
  %c1356 = zext i32 %gml1355 to i64
  %wp1357 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1356, ptr %wp1357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe2c word 0xf9401529
  %r1358.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1358 = load i64, ptr %r1358.p, align 8, !alias.scope !3, !noalias !4
  %t1359 = add i64 %r1358, 40
  %gmp1360 = inttoptr i64 %t1359 to ptr
  %gml1361 = load i64, ptr %gmp1360, align 1, !alias.scope !4, !noalias !3
  %wp1362 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1361, ptr %wp1362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe30 word 0xf9478739
  %r1363.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1363 = load i64, ptr %r1363.p, align 8, !alias.scope !3, !noalias !4
  %t1364 = add i64 %r1363, 3848
  %gmp1365 = inttoptr i64 %t1364 to ptr
  %gml1366 = load i64, ptr %gmp1365, align 1, !alias.scope !4, !noalias !3
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1366, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe34 word 0xeb19013f
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1369 = load i64, ptr %r1369.p, align 8, !alias.scope !3, !noalias !4
  %t1370 = sub i64 %r1368, %r1369
  %fn1371 = icmp slt i64 %t1370, 0
  %fz1372 = icmp eq i64 %t1370, 0
  %fc1373 = icmp uge i64 %r1368, %r1369
  %fx11374 = xor i64 %r1368, %r1369
  %fx21375 = xor i64 %r1368, %t1370
  %fva1376 = and i64 %fx11374, %fx21375
  %fv1377 = icmp slt i64 %fva1376, 0
  %nz1378 = zext i1 %fn1371 to i64
  %zz1379 = zext i1 %fz1372 to i64
  %cz1380 = zext i1 %fc1373 to i64
  %vz1381 = zext i1 %fv1377 to i64
  %ns1382 = shl i64 %nz1378, 31
  %zs1383 = shl i64 %zz1379, 30
  %cs1384 = shl i64 %cz1380, 29
  %vs1385 = shl i64 %vz1381, 28
  %nzor1386 = or i64 %ns1382, %zs1383
  %cvor1387 = or i64 %cs1384, %vs1385
  %nzcv1388 = or i64 %nzor1386, %cvor1387
  %wp1389 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1388, ptr %wp1389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe38 word 0x540088a1
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %fsh1392 = lshr i64 %r1390, 30
  %ftr1393 = trunc i64 %fsh1392 to i1
  %cond1391 = xor i1 %ftr1393, true
  br i1 %cond1391, label %L_8000dcf4c, label %L_8000dbe3c_ft
L_8000dbe44:
  ; @pc 0x8000dbe44 word 0x3100075f
  %r1401.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1401 = load i64, ptr %r1401.p, align 8, !alias.scope !3, !noalias !4
  %c1402 = trunc i64 %r1401 to i32
  %t1403 = add i32 %c1402, 1
  %fn1404 = icmp slt i32 %t1403, 0
  %fz1405 = icmp eq i32 %t1403, 0
  %fc1406 = icmp ult i32 %t1403, %c1402
  %fx11407 = xor i32 %c1402, %t1403
  %fx21408 = xor i32 1, %t1403
  %fva1409 = and i32 %fx11407, %fx21408
  %fv1410 = icmp slt i32 %fva1409, 0
  %nz1411 = zext i1 %fn1404 to i64
  %zz1412 = zext i1 %fz1405 to i64
  %cz1413 = zext i1 %fc1406 to i64
  %vz1414 = zext i1 %fv1410 to i64
  %ns1415 = shl i64 %nz1411, 31
  %zs1416 = shl i64 %zz1412, 30
  %cs1417 = shl i64 %cz1413, 29
  %vs1418 = shl i64 %vz1414, 28
  %nzor1419 = or i64 %ns1415, %zs1416
  %cvor1420 = or i64 %cs1417, %vs1418
  %nzcv1421 = or i64 %nzor1419, %cvor1420
  %wp1422 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1421, ptr %wp1422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe48 word 0x54008a01
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %fsh1425 = lshr i64 %r1423, 30
  %ftr1426 = trunc i64 %fsh1425 to i1
  %cond1424 = xor i1 %ftr1426, true
  br i1 %cond1424, label %L_8000dcf88, label %L_8000dbe4c
L_8000dbe4c:
  ; @pc 0x8000dbe4c word 0xf85d83ba
  %r1427.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1427 = load i64, ptr %r1427.p, align 8, !alias.scope !3, !noalias !4
  %t1428 = add i64 %r1427, -40
  %gmp1429 = inttoptr i64 %t1428 to ptr
  %gml1430 = load i64, ptr %gmp1429, align 1, !alias.scope !4, !noalias !3
  %wp1431 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1430, ptr %wp1431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe50 word 0x39412748
  %r1432.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1432 = load i64, ptr %r1432.p, align 8, !alias.scope !3, !noalias !4
  %t1433 = add i64 %r1432, 73
  %gmp1434 = inttoptr i64 %t1433 to ptr
  %gml1435 = load i8, ptr %gmp1434, align 1, !alias.scope !4, !noalias !3
  %c1436 = zext i8 %gml1435 to i64
  %wp1437 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1436, ptr %wp1437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe54 word 0x39010a68
  %r1438.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1438 = load i64, ptr %r1438.p, align 8, !alias.scope !3, !noalias !4
  %t1439 = add i64 %r1438, 66
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %c1441 = trunc i64 %r1440 to i32
  %c1442 = trunc i32 %c1441 to i8
  %gmp1443 = inttoptr i64 %t1439 to ptr
  store i8 %c1442, ptr %gmp1443, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbe58 word 0x17ffff84
  br label %L_8000dbc68
L_8000dbe5c:
  ; @pc 0x8000dbe5c word 0xf940374b
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %t1445 = add i64 %r1444, 104
  %gmp1446 = inttoptr i64 %t1445 to ptr
  %gml1447 = load i64, ptr %gmp1446, align 1, !alias.scope !4, !noalias !3
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe60 word 0xb940a26c
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %t1450 = add i64 %r1449, 160
  %gmp1451 = inttoptr i64 %t1450 to ptr
  %gml1452 = load i32, ptr %gmp1451, align 1, !alias.scope !4, !noalias !3
  %c1453 = zext i32 %gml1452 to i64
  %wp1454 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1453, ptr %wp1454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe64 word 0xb941816a
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = add i64 %r1455, 384
  %gmp1457 = inttoptr i64 %t1456 to ptr
  %gml1458 = load i32, ptr %gmp1457, align 1, !alias.scope !4, !noalias !3
  %c1459 = zext i32 %gml1458 to i64
  %wp1460 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1459, ptr %wp1460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe68 word 0x6b0a019f
  %r1461.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1461 = load i64, ptr %r1461.p, align 8, !alias.scope !3, !noalias !4
  %c1462 = trunc i64 %r1461 to i32
  %r1463.p = getelementptr inbounds i8, ptr %c, i64 80
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
  ; @pc 0x8000dbe6c word 0x54ffee60
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %fsh1487 = lshr i64 %r1485, 30
  %cond1486 = trunc i64 %fsh1487 to i1
  br i1 %cond1486, label %L_8000dbc38, label %L_8000dbe70_ft
L_8000dbe8c:
  ; @pc 0x8000dbe8c word 0xb941056c
  %r1541.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1541 = load i64, ptr %r1541.p, align 8, !alias.scope !3, !noalias !4
  %t1542 = add i64 %r1541, 260
  %gmp1543 = inttoptr i64 %t1542 to ptr
  %gml1544 = load i32, ptr %gmp1543, align 1, !alias.scope !4, !noalias !3
  %c1545 = zext i32 %gml1544 to i64
  %wp1546 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1545, ptr %wp1546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe90 word 0x350024ac
  %r1547.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1547 = load i64, ptr %r1547.p, align 8, !alias.scope !3, !noalias !4
  %c1548 = trunc i64 %r1547 to i32
  %cmp1549 = icmp ne i32 %c1548, 0
  br i1 %cmp1549, label %L_8000dc324, label %L_8000dbe94_ft
L_8000dbe98:
  ; @pc 0x8000dbe98 word 0xb941366e
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %t1554 = add i64 %r1553, 308
  %gmp1555 = inttoptr i64 %t1554 to ptr
  %gml1556 = load i32, ptr %gmp1555, align 1, !alias.scope !4, !noalias !3
  %c1557 = zext i32 %gml1556 to i64
  %wp1558 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1557, ptr %wp1558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe9c word 0x6b0d01df
  %r1559.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1559 = load i64, ptr %r1559.p, align 8, !alias.scope !3, !noalias !4
  %c1560 = trunc i64 %r1559 to i32
  %r1561.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1561 = load i64, ptr %r1561.p, align 8, !alias.scope !3, !noalias !4
  %c1562 = trunc i64 %r1561 to i32
  %t1563 = sub i32 %c1560, %c1562
  %fn1564 = icmp slt i32 %t1563, 0
  %fz1565 = icmp eq i32 %t1563, 0
  %fc1566 = icmp uge i32 %c1560, %c1562
  %fx11567 = xor i32 %c1560, %c1562
  %fx21568 = xor i32 %c1560, %t1563
  %fva1569 = and i32 %fx11567, %fx21568
  %fv1570 = icmp slt i32 %fva1569, 0
  %nz1571 = zext i1 %fn1564 to i64
  %zz1572 = zext i1 %fz1565 to i64
  %cz1573 = zext i1 %fc1566 to i64
  %vz1574 = zext i1 %fv1570 to i64
  %ns1575 = shl i64 %nz1571, 31
  %zs1576 = shl i64 %zz1572, 30
  %cs1577 = shl i64 %cz1573, 29
  %vs1578 = shl i64 %vz1574, 28
  %nzor1579 = or i64 %ns1575, %zs1576
  %cvor1580 = or i64 %cs1577, %vs1578
  %nzcv1581 = or i64 %nzor1579, %cvor1580
  %wp1582 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1581, ptr %wp1582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbea0 word 0x540052c1
  %r1583.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1583 = load i64, ptr %r1583.p, align 8, !alias.scope !3, !noalias !4
  %fsh1585 = lshr i64 %r1583, 30
  %ftr1586 = trunc i64 %fsh1585 to i1
  %cond1584 = xor i1 %ftr1586, true
  br i1 %cond1584, label %L_8000dc8f8, label %L_8000dbea4
L_8000dbea4:
  ; @pc 0x8000dbea4 word 0x1200018d
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %c1588 = trunc i64 %r1587 to i32
  %t1589 = and i32 %c1588, 1
  %c1590 = zext i32 %t1589 to i64
  %wp1591 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1590, ptr %wp1591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbea8 word 0x361feca9
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = and i64 %r1592, 8
  %cmp1594 = icmp eq i64 %t1593, 0
  br i1 %cmp1594, label %L_8000dbc3c, label %L_8000dbeac_ft
L_8000dbefc:
  ; @pc 0x8000dbefc word 0x3946526d
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %t1829 = add i64 %r1828, 404
  %gmp1830 = inttoptr i64 %t1829 to ptr
  %gml1831 = load i8, ptr %gmp1830, align 1, !alias.scope !4, !noalias !3
  %c1832 = zext i8 %gml1831 to i64
  %wp1833 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1832, ptr %wp1833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf00 word 0x39459169
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %t1835 = add i64 %r1834, 356
  %gmp1836 = inttoptr i64 %t1835 to ptr
  %gml1837 = load i8, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  %c1838 = zext i8 %gml1837 to i64
  %wp1839 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1838, ptr %wp1839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf04 word 0x6b0901bf
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %c1841 = trunc i64 %r1840 to i32
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %c1843 = trunc i64 %r1842 to i32
  %t1844 = sub i32 %c1841, %c1843
  %fn1845 = icmp slt i32 %t1844, 0
  %fz1846 = icmp eq i32 %t1844, 0
  %fc1847 = icmp uge i32 %c1841, %c1843
  %fx11848 = xor i32 %c1841, %c1843
  %fx21849 = xor i32 %c1841, %t1844
  %fva1850 = and i32 %fx11848, %fx21849
  %fv1851 = icmp slt i32 %fva1850, 0
  %nz1852 = zext i1 %fn1845 to i64
  %zz1853 = zext i1 %fz1846 to i64
  %cz1854 = zext i1 %fc1847 to i64
  %vz1855 = zext i1 %fv1851 to i64
  %ns1856 = shl i64 %nz1852, 31
  %zs1857 = shl i64 %zz1853, 30
  %cs1858 = shl i64 %cz1854, 29
  %vs1859 = shl i64 %vz1855, 28
  %nzor1860 = or i64 %ns1856, %zs1857
  %cvor1861 = or i64 %cs1858, %vs1859
  %nzcv1862 = or i64 %nzor1860, %cvor1861
  %wp1863 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1862, ptr %wp1863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf08 word 0x540020a0
  %r1864.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1864 = load i64, ptr %r1864.p, align 8, !alias.scope !3, !noalias !4
  %fsh1866 = lshr i64 %r1864, 30
  %cond1865 = trunc i64 %fsh1866 to i1
  br i1 %cond1865, label %L_8000dc31c, label %L_8000dbf0c_ft
L_8000dbf14:
  ; @pc 0x8000dbf14 word 0xb940026a
  %r1873.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1873 = load i64, ptr %r1873.p, align 8, !alias.scope !3, !noalias !4
  %gmp1874 = inttoptr i64 %r1873 to ptr
  %gml1875 = load i32, ptr %gmp1874, align 1, !alias.scope !4, !noalias !3
  %c1876 = zext i32 %gml1875 to i64
  %wp1877 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1876, ptr %wp1877, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbf18
L_8000dbf18:
  ; @pc 0x8000dbf18 word 0x3787e98a
  %r1878.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1878 = load i64, ptr %r1878.p, align 8, !alias.scope !3, !noalias !4
  %t1879 = and i64 %r1878, 65536
  %cmp1880 = icmp ne i64 %t1879, 0
  br i1 %cmp1880, label %L_8000dbc48, label %L_8000dbf1c_ft
L_8000dbf60:
  ; @pc 0x8000dbf60 word 0xb001c408
  %wp1950 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf64 word 0xd10043a0
  %r1951.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1951 = load i64, ptr %r1951.p, align 8, !alias.scope !3, !noalias !4
  %t1952 = sub i64 %r1951, 16
  %wp1953 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1952, ptr %wp1953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf68 word 0xf9454d08
  %r1954.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1954 = load i64, ptr %r1954.p, align 8, !alias.scope !3, !noalias !4
  %t1955 = add i64 %r1954, 2712
  %gmp1956 = inttoptr i64 %t1955 to ptr
  %gml1957 = load i64, ptr %gmp1956, align 1, !alias.scope !4, !noalias !3
  %wp1958 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1957, ptr %wp1958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf6c word 0x52800061
  %c1959 = zext i32 3 to i64
  %wp1960 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1959, ptr %wp1960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf70 word 0xf9400108
  %r1961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1961 = load i64, ptr %r1961.p, align 8, !alias.scope !3, !noalias !4
  %gmp1962 = inttoptr i64 %r1961 to ptr
  %gml1963 = load i64, ptr %gmp1962, align 1, !alias.scope !4, !noalias !3
  %wp1964 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1963, ptr %wp1964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf74 word 0xd63f0100
  %r1965.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1965 = load i64, ptr %r1965.p, align 8, !alias.scope !3, !noalias !4
  %fp1966 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1965, ptr %fp1966, align 8, !alias.scope !3, !noalias !4
  %wp1967 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639352, ptr %wp1967, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbf78 word 0xb001c408
  %wp1968 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf7c word 0xd10043a1
  %r1969.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1969 = load i64, ptr %r1969.p, align 8, !alias.scope !3, !noalias !4
  %t1970 = sub i64 %r1969, 16
  %wp1971 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1970, ptr %wp1971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf80 word 0xf940bd08
  %r1972.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1972 = load i64, ptr %r1972.p, align 8, !alias.scope !3, !noalias !4
  %t1973 = add i64 %r1972, 376
  %gmp1974 = inttoptr i64 %t1973 to ptr
  %gml1975 = load i64, ptr %gmp1974, align 1, !alias.scope !4, !noalias !3
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf84 word 0xaa1403e0
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %t1978 = or i64 0, %r1977
  %wp1979 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1978, ptr %wp1979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf88 word 0xf9400108
  %r1980.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1980 = load i64, ptr %r1980.p, align 8, !alias.scope !3, !noalias !4
  %gmp1981 = inttoptr i64 %r1980 to ptr
  %gml1982 = load i64, ptr %gmp1981, align 1, !alias.scope !4, !noalias !3
  %wp1983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1982, ptr %wp1983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf8c word 0xd63f0100
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %fp1985 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1984, ptr %fp1985, align 8, !alias.scope !3, !noalias !4
  %wp1986 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639376, ptr %wp1986, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbf90 word 0xb001c408
  %wp1987 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf94 word 0x9104e261
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %t1989 = add i64 %r1988, 312
  %wp1990 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1989, ptr %wp1990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf98 word 0xf940c108
  %r1991.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1991 = load i64, ptr %r1991.p, align 8, !alias.scope !3, !noalias !4
  %t1992 = add i64 %r1991, 384
  %gmp1993 = inttoptr i64 %t1992 to ptr
  %gml1994 = load i64, ptr %gmp1993, align 1, !alias.scope !4, !noalias !3
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1994, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf9c word 0xaa1403e0
  %r1996.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1996 = load i64, ptr %r1996.p, align 8, !alias.scope !3, !noalias !4
  %t1997 = or i64 0, %r1996
  %wp1998 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1997, ptr %wp1998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfa0 word 0xf9400108
  %r1999.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1999 = load i64, ptr %r1999.p, align 8, !alias.scope !3, !noalias !4
  %gmp2000 = inttoptr i64 %r1999 to ptr
  %gml2001 = load i64, ptr %gmp2000, align 1, !alias.scope !4, !noalias !3
  %wp2002 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2001, ptr %wp2002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfa4 word 0xd63f0100
  %r2003.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2003 = load i64, ptr %r2003.p, align 8, !alias.scope !3, !noalias !4
  %fp2004 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2003, ptr %fp2004, align 8, !alias.scope !3, !noalias !4
  %wp2005 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639400, ptr %wp2005, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbfa8 word 0x9001c416
  %wp2006 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419879936, ptr %wp2006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfac word 0x39453268
  %r2007.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2007 = load i64, ptr %r2007.p, align 8, !alias.scope !3, !noalias !4
  %t2008 = add i64 %r2007, 332
  %gmp2009 = inttoptr i64 %t2008 to ptr
  %gml2010 = load i8, ptr %gmp2009, align 1, !alias.scope !4, !noalias !3
  %c2011 = zext i8 %gml2010 to i64
  %wp2012 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2011, ptr %wp2012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfb0 word 0xd10033a0
  %r2013.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2013 = load i64, ptr %r2013.p, align 8, !alias.scope !3, !noalias !4
  %t2014 = sub i64 %r2013, 12
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2014, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfb4 word 0xf9472ad6
  %r2016.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2016 = load i64, ptr %r2016.p, align 8, !alias.scope !3, !noalias !4
  %t2017 = add i64 %r2016, 3664
  %gmp2018 = inttoptr i64 %t2017 to ptr
  %gml2019 = load i64, ptr %gmp2018, align 1, !alias.scope !4, !noalias !3
  %wp2020 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2019, ptr %wp2020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfb8 word 0x2a1f03e1
  %t2021 = or i32 0, 0
  %c2022 = zext i32 %t2021 to i64
  %wp2023 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2022, ptr %wp2023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfbc word 0x12000102
  %r2024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2024 = load i64, ptr %r2024.p, align 8, !alias.scope !3, !noalias !4
  %c2025 = trunc i64 %r2024 to i32
  %t2026 = and i32 %c2025, 1
  %c2027 = zext i32 %t2026 to i64
  %wp2028 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2027, ptr %wp2028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfc0 word 0x53010503
  %r2029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2029 = load i64, ptr %r2029.p, align 8, !alias.scope !3, !noalias !4
  %c2030 = trunc i64 %r2029 to i32
  %ror2031 = call i32 @llvm.fshr.i32(i32 %c2030, i32 %c2030, i32 1)
  %t2032 = and i32 %ror2031, 1
  %c2033 = zext i32 %t2032 to i64
  %wp2034 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2033, ptr %wp2034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfc4 word 0x53020904
  %r2035.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2035 = load i64, ptr %r2035.p, align 8, !alias.scope !3, !noalias !4
  %c2036 = trunc i64 %r2035 to i32
  %ror2037 = call i32 @llvm.fshr.i32(i32 %c2036, i32 %c2036, i32 2)
  %t2038 = and i32 %ror2037, 1
  %c2039 = zext i32 %t2038 to i64
  %wp2040 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2039, ptr %wp2040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfc8 word 0x53030d05
  %r2041.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2041 = load i64, ptr %r2041.p, align 8, !alias.scope !3, !noalias !4
  %c2042 = trunc i64 %r2041 to i32
  %ror2043 = call i32 @llvm.fshr.i32(i32 %c2042, i32 %c2042, i32 3)
  %t2044 = and i32 %ror2043, 1
  %c2045 = zext i32 %t2044 to i64
  %wp2046 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2045, ptr %wp2046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfcc word 0xf94002c8
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %gmp2048 = inttoptr i64 %r2047 to ptr
  %gml2049 = load i64, ptr %gmp2048, align 1, !alias.scope !4, !noalias !3
  %wp2050 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2049, ptr %wp2050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfd0 word 0xd63f0100
  %r2051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2051 = load i64, ptr %r2051.p, align 8, !alias.scope !3, !noalias !4
  %fp2052 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2051, ptr %fp2052, align 8, !alias.scope !3, !noalias !4
  %wp2053 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639444, ptr %wp2053, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbfd4 word 0xb9414e68
  %r2054.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2054 = load i64, ptr %r2054.p, align 8, !alias.scope !3, !noalias !4
  %t2055 = add i64 %r2054, 332
  %gmp2056 = inttoptr i64 %t2055 to ptr
  %gml2057 = load i32, ptr %gmp2056, align 1, !alias.scope !4, !noalias !3
  %c2058 = zext i32 %gml2057 to i64
  %wp2059 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2058, ptr %wp2059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfd8 word 0xd10033a0
  %r2060.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2060 = load i64, ptr %r2060.p, align 8, !alias.scope !3, !noalias !4
  %t2061 = sub i64 %r2060, 12
  %wp2062 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2061, ptr %wp2062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfdc word 0x52800021
  %c2063 = zext i32 1 to i64
  %wp2064 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2063, ptr %wp2064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfe0 word 0x53041102
  %r2065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2065 = load i64, ptr %r2065.p, align 8, !alias.scope !3, !noalias !4
  %c2066 = trunc i64 %r2065 to i32
  %ror2067 = call i32 @llvm.fshr.i32(i32 %c2066, i32 %c2066, i32 4)
  %t2068 = and i32 %ror2067, 1
  %c2069 = zext i32 %t2068 to i64
  %wp2070 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2069, ptr %wp2070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfe4 word 0x53051503
  %r2071.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2071 = load i64, ptr %r2071.p, align 8, !alias.scope !3, !noalias !4
  %c2072 = trunc i64 %r2071 to i32
  %ror2073 = call i32 @llvm.fshr.i32(i32 %c2072, i32 %c2072, i32 5)
  %t2074 = and i32 %ror2073, 1
  %c2075 = zext i32 %t2074 to i64
  %wp2076 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2075, ptr %wp2076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfe8 word 0x53061904
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %c2078 = trunc i64 %r2077 to i32
  %ror2079 = call i32 @llvm.fshr.i32(i32 %c2078, i32 %c2078, i32 6)
  %t2080 = and i32 %ror2079, 1
  %c2081 = zext i32 %t2080 to i64
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2081, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbfec word 0x53071d05
  %r2083.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2083 = load i64, ptr %r2083.p, align 8, !alias.scope !3, !noalias !4
  %c2084 = trunc i64 %r2083 to i32
  %ror2085 = call i32 @llvm.fshr.i32(i32 %c2084, i32 %c2084, i32 7)
  %t2086 = and i32 %ror2085, 1
  %c2087 = zext i32 %t2086 to i64
  %wp2088 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2087, ptr %wp2088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbff0 word 0xf94002c8
  %r2089.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2089 = load i64, ptr %r2089.p, align 8, !alias.scope !3, !noalias !4
  %gmp2090 = inttoptr i64 %r2089 to ptr
  %gml2091 = load i64, ptr %gmp2090, align 1, !alias.scope !4, !noalias !3
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2091, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbff4 word 0xd63f0100
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %fp2094 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2093, ptr %fp2094, align 8, !alias.scope !3, !noalias !4
  %wp2095 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639480, ptr %wp2095, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbff8 word 0x39453668
  %r2096.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2096 = load i64, ptr %r2096.p, align 8, !alias.scope !3, !noalias !4
  %t2097 = add i64 %r2096, 333
  %gmp2098 = inttoptr i64 %t2097 to ptr
  %gml2099 = load i8, ptr %gmp2098, align 1, !alias.scope !4, !noalias !3
  %c2100 = zext i8 %gml2099 to i64
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbffc word 0xd10033a0
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %t2103 = sub i64 %r2102, 12
  %wp2104 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2103, ptr %wp2104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc000 word 0x52800041
  %c2105 = zext i32 2 to i64
  %wp2106 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2105, ptr %wp2106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc004 word 0x12000102
  %r2107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2107 = load i64, ptr %r2107.p, align 8, !alias.scope !3, !noalias !4
  %c2108 = trunc i64 %r2107 to i32
  %t2109 = and i32 %c2108, 1
  %c2110 = zext i32 %t2109 to i64
  %wp2111 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2110, ptr %wp2111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc008 word 0x53010503
  %r2112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2112 = load i64, ptr %r2112.p, align 8, !alias.scope !3, !noalias !4
  %c2113 = trunc i64 %r2112 to i32
  %ror2114 = call i32 @llvm.fshr.i32(i32 %c2113, i32 %c2113, i32 1)
  %t2115 = and i32 %ror2114, 1
  %c2116 = zext i32 %t2115 to i64
  %wp2117 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2116, ptr %wp2117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc00c word 0x53020904
  %r2118.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2118 = load i64, ptr %r2118.p, align 8, !alias.scope !3, !noalias !4
  %c2119 = trunc i64 %r2118 to i32
  %ror2120 = call i32 @llvm.fshr.i32(i32 %c2119, i32 %c2119, i32 2)
  %t2121 = and i32 %ror2120, 1
  %c2122 = zext i32 %t2121 to i64
  %wp2123 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2122, ptr %wp2123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc010 word 0x53030d05
  %r2124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2124 = load i64, ptr %r2124.p, align 8, !alias.scope !3, !noalias !4
  %c2125 = trunc i64 %r2124 to i32
  %ror2126 = call i32 @llvm.fshr.i32(i32 %c2125, i32 %c2125, i32 3)
  %t2127 = and i32 %ror2126, 1
  %c2128 = zext i32 %t2127 to i64
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc014 word 0xf94002c8
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %gmp2131 = inttoptr i64 %r2130 to ptr
  %gml2132 = load i64, ptr %gmp2131, align 1, !alias.scope !4, !noalias !3
  %wp2133 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2132, ptr %wp2133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc018 word 0xd63f0100
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %fp2135 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2134, ptr %fp2135, align 8, !alias.scope !3, !noalias !4
  %wp2136 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639516, ptr %wp2136, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc01c word 0xb9414e68
  %r2137.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2137 = load i64, ptr %r2137.p, align 8, !alias.scope !3, !noalias !4
  %t2138 = add i64 %r2137, 332
  %gmp2139 = inttoptr i64 %t2138 to ptr
  %gml2140 = load i32, ptr %gmp2139, align 1, !alias.scope !4, !noalias !3
  %c2141 = zext i32 %gml2140 to i64
  %wp2142 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2141, ptr %wp2142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc020 word 0xd10033a0
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2143 = load i64, ptr %r2143.p, align 8, !alias.scope !3, !noalias !4
  %t2144 = sub i64 %r2143, 12
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc024 word 0x52800061
  %c2146 = zext i32 3 to i64
  %wp2147 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2146, ptr %wp2147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc028 word 0x530c3102
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %c2149 = trunc i64 %r2148 to i32
  %ror2150 = call i32 @llvm.fshr.i32(i32 %c2149, i32 %c2149, i32 12)
  %t2151 = and i32 %ror2150, 1
  %c2152 = zext i32 %t2151 to i64
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc02c word 0x530d3503
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %c2155 = trunc i64 %r2154 to i32
  %ror2156 = call i32 @llvm.fshr.i32(i32 %c2155, i32 %c2155, i32 13)
  %t2157 = and i32 %ror2156, 1
  %c2158 = zext i32 %t2157 to i64
  %wp2159 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2158, ptr %wp2159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc030 word 0x530e3904
  %r2160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2160 = load i64, ptr %r2160.p, align 8, !alias.scope !3, !noalias !4
  %c2161 = trunc i64 %r2160 to i32
  %ror2162 = call i32 @llvm.fshr.i32(i32 %c2161, i32 %c2161, i32 14)
  %t2163 = and i32 %ror2162, 1
  %c2164 = zext i32 %t2163 to i64
  %wp2165 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2164, ptr %wp2165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc034 word 0x530f3d05
  %r2166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2166 = load i64, ptr %r2166.p, align 8, !alias.scope !3, !noalias !4
  %c2167 = trunc i64 %r2166 to i32
  %ror2168 = call i32 @llvm.fshr.i32(i32 %c2167, i32 %c2167, i32 15)
  %t2169 = and i32 %ror2168, 1
  %c2170 = zext i32 %t2169 to i64
  %wp2171 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2170, ptr %wp2171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc038 word 0xf94002c8
  %r2172.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2172 = load i64, ptr %r2172.p, align 8, !alias.scope !3, !noalias !4
  %gmp2173 = inttoptr i64 %r2172 to ptr
  %gml2174 = load i64, ptr %gmp2173, align 1, !alias.scope !4, !noalias !3
  %wp2175 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2174, ptr %wp2175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc03c word 0xd63f0100
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %fp2177 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2176, ptr %fp2177, align 8, !alias.scope !3, !noalias !4
  %wp2178 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639552, ptr %wp2178, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc040 word 0x39453a68
  %r2179.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2179 = load i64, ptr %r2179.p, align 8, !alias.scope !3, !noalias !4
  %t2180 = add i64 %r2179, 334
  %gmp2181 = inttoptr i64 %t2180 to ptr
  %gml2182 = load i8, ptr %gmp2181, align 1, !alias.scope !4, !noalias !3
  %c2183 = zext i8 %gml2182 to i64
  %wp2184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2183, ptr %wp2184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc044 word 0xd10033a0
  %r2185.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2185 = load i64, ptr %r2185.p, align 8, !alias.scope !3, !noalias !4
  %t2186 = sub i64 %r2185, 12
  %wp2187 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2186, ptr %wp2187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc048 word 0x52800081
  %c2188 = zext i32 4 to i64
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc04c word 0x12000102
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %c2191 = trunc i64 %r2190 to i32
  %t2192 = and i32 %c2191, 1
  %c2193 = zext i32 %t2192 to i64
  %wp2194 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2193, ptr %wp2194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc050 word 0x53010503
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %c2196 = trunc i64 %r2195 to i32
  %ror2197 = call i32 @llvm.fshr.i32(i32 %c2196, i32 %c2196, i32 1)
  %t2198 = and i32 %ror2197, 1
  %c2199 = zext i32 %t2198 to i64
  %wp2200 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2199, ptr %wp2200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc054 word 0x53020904
  %r2201.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2201 = load i64, ptr %r2201.p, align 8, !alias.scope !3, !noalias !4
  %c2202 = trunc i64 %r2201 to i32
  %ror2203 = call i32 @llvm.fshr.i32(i32 %c2202, i32 %c2202, i32 2)
  %t2204 = and i32 %ror2203, 1
  %c2205 = zext i32 %t2204 to i64
  %wp2206 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2205, ptr %wp2206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc058 word 0x53030d05
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %c2208 = trunc i64 %r2207 to i32
  %ror2209 = call i32 @llvm.fshr.i32(i32 %c2208, i32 %c2208, i32 3)
  %t2210 = and i32 %ror2209, 1
  %c2211 = zext i32 %t2210 to i64
  %wp2212 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2211, ptr %wp2212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc05c word 0xf94002c8
  %r2213.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2213 = load i64, ptr %r2213.p, align 8, !alias.scope !3, !noalias !4
  %gmp2214 = inttoptr i64 %r2213 to ptr
  %gml2215 = load i64, ptr %gmp2214, align 1, !alias.scope !4, !noalias !3
  %wp2216 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2215, ptr %wp2216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc060 word 0xd63f0100
  %r2217.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2217 = load i64, ptr %r2217.p, align 8, !alias.scope !3, !noalias !4
  %fp2218 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2217, ptr %fp2218, align 8, !alias.scope !3, !noalias !4
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639588, ptr %wp2219, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc064 word 0xb9414e68
  %r2220.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2220 = load i64, ptr %r2220.p, align 8, !alias.scope !3, !noalias !4
  %t2221 = add i64 %r2220, 332
  %gmp2222 = inttoptr i64 %t2221 to ptr
  %gml2223 = load i32, ptr %gmp2222, align 1, !alias.scope !4, !noalias !3
  %c2224 = zext i32 %gml2223 to i64
  %wp2225 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2224, ptr %wp2225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc068 word 0x528000a1
  %c2226 = zext i32 5 to i64
  %wp2227 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2226, ptr %wp2227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc06c word 0xd10033a0
  %r2228.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2228 = load i64, ptr %r2228.p, align 8, !alias.scope !3, !noalias !4
  %t2229 = sub i64 %r2228, 12
  %wp2230 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2229, ptr %wp2230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc070 word 0x53145102
  %r2231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2231 = load i64, ptr %r2231.p, align 8, !alias.scope !3, !noalias !4
  %c2232 = trunc i64 %r2231 to i32
  %ror2233 = call i32 @llvm.fshr.i32(i32 %c2232, i32 %c2232, i32 20)
  %t2234 = and i32 %ror2233, 1
  %c2235 = zext i32 %t2234 to i64
  %wp2236 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2235, ptr %wp2236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc074 word 0x53155503
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %c2238 = trunc i64 %r2237 to i32
  %ror2239 = call i32 @llvm.fshr.i32(i32 %c2238, i32 %c2238, i32 21)
  %t2240 = and i32 %ror2239, 1
  %c2241 = zext i32 %t2240 to i64
  %wp2242 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2241, ptr %wp2242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc078 word 0x53165904
  %r2243.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2243 = load i64, ptr %r2243.p, align 8, !alias.scope !3, !noalias !4
  %c2244 = trunc i64 %r2243 to i32
  %ror2245 = call i32 @llvm.fshr.i32(i32 %c2244, i32 %c2244, i32 22)
  %t2246 = and i32 %ror2245, 1
  %c2247 = zext i32 %t2246 to i64
  %wp2248 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2247, ptr %wp2248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc07c word 0x53175d05
  %r2249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2249 = load i64, ptr %r2249.p, align 8, !alias.scope !3, !noalias !4
  %c2250 = trunc i64 %r2249 to i32
  %ror2251 = call i32 @llvm.fshr.i32(i32 %c2250, i32 %c2250, i32 23)
  %t2252 = and i32 %ror2251, 1
  %c2253 = zext i32 %t2252 to i64
  %wp2254 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2253, ptr %wp2254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc080 word 0xf94002c8
  %r2255.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2255 = load i64, ptr %r2255.p, align 8, !alias.scope !3, !noalias !4
  %gmp2256 = inttoptr i64 %r2255 to ptr
  %gml2257 = load i64, ptr %gmp2256, align 1, !alias.scope !4, !noalias !3
  %wp2258 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2257, ptr %wp2258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc084 word 0xd63f0100
  %r2259.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2259 = load i64, ptr %r2259.p, align 8, !alias.scope !3, !noalias !4
  %fp2260 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2259, ptr %fp2260, align 8, !alias.scope !3, !noalias !4
  %wp2261 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639624, ptr %wp2261, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc088 word 0xb9414e68
  %r2262.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2262 = load i64, ptr %r2262.p, align 8, !alias.scope !3, !noalias !4
  %t2263 = add i64 %r2262, 332
  %gmp2264 = inttoptr i64 %t2263 to ptr
  %gml2265 = load i32, ptr %gmp2264, align 1, !alias.scope !4, !noalias !3
  %c2266 = zext i32 %gml2265 to i64
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2266, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc08c word 0xd10033a0
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %t2269 = sub i64 %r2268, 12
  %wp2270 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2269, ptr %wp2270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc090 word 0x528000c1
  %c2271 = zext i32 6 to i64
  %wp2272 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2271, ptr %wp2272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc094 word 0x53186102
  %r2273.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2273 = load i64, ptr %r2273.p, align 8, !alias.scope !3, !noalias !4
  %c2274 = trunc i64 %r2273 to i32
  %ror2275 = call i32 @llvm.fshr.i32(i32 %c2274, i32 %c2274, i32 24)
  %t2276 = and i32 %ror2275, 1
  %c2277 = zext i32 %t2276 to i64
  %wp2278 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2277, ptr %wp2278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc098 word 0x53196503
  %r2279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2279 = load i64, ptr %r2279.p, align 8, !alias.scope !3, !noalias !4
  %c2280 = trunc i64 %r2279 to i32
  %ror2281 = call i32 @llvm.fshr.i32(i32 %c2280, i32 %c2280, i32 25)
  %t2282 = and i32 %ror2281, 1
  %c2283 = zext i32 %t2282 to i64
  %wp2284 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2283, ptr %wp2284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc09c word 0x531a6904
  %r2285.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2285 = load i64, ptr %r2285.p, align 8, !alias.scope !3, !noalias !4
  %c2286 = trunc i64 %r2285 to i32
  %ror2287 = call i32 @llvm.fshr.i32(i32 %c2286, i32 %c2286, i32 26)
  %t2288 = and i32 %ror2287, 1
  %c2289 = zext i32 %t2288 to i64
  %wp2290 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2289, ptr %wp2290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0a0 word 0x531b6d05
  %r2291.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2291 = load i64, ptr %r2291.p, align 8, !alias.scope !3, !noalias !4
  %c2292 = trunc i64 %r2291 to i32
  %ror2293 = call i32 @llvm.fshr.i32(i32 %c2292, i32 %c2292, i32 27)
  %t2294 = and i32 %ror2293, 1
  %c2295 = zext i32 %t2294 to i64
  %wp2296 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2295, ptr %wp2296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0a4 word 0xf94002c8
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %gmp2298 = inttoptr i64 %r2297 to ptr
  %gml2299 = load i64, ptr %gmp2298, align 1, !alias.scope !4, !noalias !3
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2299, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0a8 word 0xd63f0100
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %fp2302 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2301, ptr %fp2302, align 8, !alias.scope !3, !noalias !4
  %wp2303 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639660, ptr %wp2303, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc0ac word 0xb9414e68
  %r2304.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2304 = load i64, ptr %r2304.p, align 8, !alias.scope !3, !noalias !4
  %t2305 = add i64 %r2304, 332
  %gmp2306 = inttoptr i64 %t2305 to ptr
  %gml2307 = load i32, ptr %gmp2306, align 1, !alias.scope !4, !noalias !3
  %c2308 = zext i32 %gml2307 to i64
  %wp2309 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2308, ptr %wp2309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0b0 word 0xd10033a0
  %r2310.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2310 = load i64, ptr %r2310.p, align 8, !alias.scope !3, !noalias !4
  %t2311 = sub i64 %r2310, 12
  %wp2312 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2311, ptr %wp2312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0b4 word 0x528000e1
  %c2313 = zext i32 7 to i64
  %wp2314 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2313, ptr %wp2314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0b8 word 0x531c7102
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %c2316 = trunc i64 %r2315 to i32
  %ror2317 = call i32 @llvm.fshr.i32(i32 %c2316, i32 %c2316, i32 28)
  %t2318 = and i32 %ror2317, 1
  %c2319 = zext i32 %t2318 to i64
  %wp2320 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2319, ptr %wp2320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0bc word 0x531d7503
  %r2321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2321 = load i64, ptr %r2321.p, align 8, !alias.scope !3, !noalias !4
  %c2322 = trunc i64 %r2321 to i32
  %ror2323 = call i32 @llvm.fshr.i32(i32 %c2322, i32 %c2322, i32 29)
  %t2324 = and i32 %ror2323, 1
  %c2325 = zext i32 %t2324 to i64
  %wp2326 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2325, ptr %wp2326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0c0 word 0x531e7904
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %c2328 = trunc i64 %r2327 to i32
  %ror2329 = call i32 @llvm.fshr.i32(i32 %c2328, i32 %c2328, i32 30)
  %t2330 = and i32 %ror2329, 1
  %c2331 = zext i32 %t2330 to i64
  %wp2332 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2331, ptr %wp2332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0c4 word 0x531f7d05
  %r2333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2333 = load i64, ptr %r2333.p, align 8, !alias.scope !3, !noalias !4
  %c2334 = trunc i64 %r2333 to i32
  %ror2335 = call i32 @llvm.fshr.i32(i32 %c2334, i32 %c2334, i32 31)
  %t2336 = and i32 %ror2335, 1
  %c2337 = zext i32 %t2336 to i64
  %wp2338 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2337, ptr %wp2338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0c8 word 0xf94002c8
  %r2339.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2339 = load i64, ptr %r2339.p, align 8, !alias.scope !3, !noalias !4
  %gmp2340 = inttoptr i64 %r2339 to ptr
  %gml2341 = load i64, ptr %gmp2340, align 1, !alias.scope !4, !noalias !3
  %wp2342 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2341, ptr %wp2342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0cc word 0xd63f0100
  %r2343.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2343 = load i64, ptr %r2343.p, align 8, !alias.scope !3, !noalias !4
  %fp2344 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2343, ptr %fp2344, align 8, !alias.scope !3, !noalias !4
  %wp2345 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639696, ptr %wp2345, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc0d0 word 0xf001c3e8
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0d4 word 0xd10033a1
  %r2347.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2347 = load i64, ptr %r2347.p, align 8, !alias.scope !3, !noalias !4
  %t2348 = sub i64 %r2347, 12
  %wp2349 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2348, ptr %wp2349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0d8 word 0xf9472d08
  %r2350.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2350 = load i64, ptr %r2350.p, align 8, !alias.scope !3, !noalias !4
  %t2351 = add i64 %r2350, 3672
  %gmp2352 = inttoptr i64 %t2351 to ptr
  %gml2353 = load i64, ptr %gmp2352, align 1, !alias.scope !4, !noalias !3
  %wp2354 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2353, ptr %wp2354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0dc word 0xaa1403e0
  %r2355.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2355 = load i64, ptr %r2355.p, align 8, !alias.scope !3, !noalias !4
  %t2356 = or i64 0, %r2355
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2356, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0e0 word 0xf9400108
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %gmp2359 = inttoptr i64 %r2358 to ptr
  %gml2360 = load i64, ptr %gmp2359, align 1, !alias.scope !4, !noalias !3
  %wp2361 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2360, ptr %wp2361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0e4 word 0xd63f0100
  %r2362.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2362 = load i64, ptr %r2362.p, align 8, !alias.scope !3, !noalias !4
  %fp2363 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2362, ptr %fp2363, align 8, !alias.scope !3, !noalias !4
  %wp2364 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639720, ptr %wp2364, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc0e8 word 0x9001c408
  %wp2365 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0ec word 0xd10063a0
  %r2366.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2366 = load i64, ptr %r2366.p, align 8, !alias.scope !3, !noalias !4
  %t2367 = sub i64 %r2366, 24
  %wp2368 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2367, ptr %wp2368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0f0 word 0xf945dd08
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %t2370 = add i64 %r2369, 3000
  %gmp2371 = inttoptr i64 %t2370 to ptr
  %gml2372 = load i64, ptr %gmp2371, align 1, !alias.scope !4, !noalias !3
  %wp2373 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2372, ptr %wp2373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0f4 word 0x3944c261
  %r2374.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2374 = load i64, ptr %r2374.p, align 8, !alias.scope !3, !noalias !4
  %t2375 = add i64 %r2374, 304
  %gmp2376 = inttoptr i64 %t2375 to ptr
  %gml2377 = load i8, ptr %gmp2376, align 1, !alias.scope !4, !noalias !3
  %c2378 = zext i8 %gml2377 to i64
  %wp2379 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2378, ptr %wp2379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0f8 word 0xf9400108
  %r2380.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2380 = load i64, ptr %r2380.p, align 8, !alias.scope !3, !noalias !4
  %gmp2381 = inttoptr i64 %r2380 to ptr
  %gml2382 = load i64, ptr %gmp2381, align 1, !alias.scope !4, !noalias !3
  %wp2383 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2382, ptr %wp2383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc0fc word 0xd63f0100
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %fp2385 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2384, ptr %fp2385, align 8, !alias.scope !3, !noalias !4
  %wp2386 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639744, ptr %wp2386, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc100 word 0x9001c408
  %wp2387 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc104 word 0xd10063a0
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %t2389 = sub i64 %r2388, 24
  %wp2390 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2389, ptr %wp2390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc108 word 0xf945e108
  %r2391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2391 = load i64, ptr %r2391.p, align 8, !alias.scope !3, !noalias !4
  %t2392 = add i64 %r2391, 3008
  %gmp2393 = inttoptr i64 %t2392 to ptr
  %gml2394 = load i64, ptr %gmp2393, align 1, !alias.scope !4, !noalias !3
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc10c word 0x3944c661
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %t2397 = add i64 %r2396, 305
  %gmp2398 = inttoptr i64 %t2397 to ptr
  %gml2399 = load i8, ptr %gmp2398, align 1, !alias.scope !4, !noalias !3
  %c2400 = zext i8 %gml2399 to i64
  %wp2401 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2400, ptr %wp2401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc110 word 0xf9400108
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %gmp2403 = inttoptr i64 %r2402 to ptr
  %gml2404 = load i64, ptr %gmp2403, align 1, !alias.scope !4, !noalias !3
  %wp2405 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2404, ptr %wp2405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc114 word 0xd63f0100
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %fp2407 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2406, ptr %fp2407, align 8, !alias.scope !3, !noalias !4
  %wp2408 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639768, ptr %wp2408, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc118 word 0x9001c408
  %wp2409 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc11c word 0x39465261
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %t2411 = add i64 %r2410, 404
  %gmp2412 = inttoptr i64 %t2411 to ptr
  %gml2413 = load i8, ptr %gmp2412, align 1, !alias.scope !4, !noalias !3
  %c2414 = zext i8 %gml2413 to i64
  %wp2415 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2414, ptr %wp2415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc120 word 0xd10063a0
  %r2416.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2416 = load i64, ptr %r2416.p, align 8, !alias.scope !3, !noalias !4
  %t2417 = sub i64 %r2416, 24
  %wp2418 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2417, ptr %wp2418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc124 word 0xf945e508
  %r2419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2419 = load i64, ptr %r2419.p, align 8, !alias.scope !3, !noalias !4
  %t2420 = add i64 %r2419, 3016
  %gmp2421 = inttoptr i64 %t2420 to ptr
  %gml2422 = load i64, ptr %gmp2421, align 1, !alias.scope !4, !noalias !3
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2422, ptr %wp2423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc128 word 0xf9400108
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %gmp2425 = inttoptr i64 %r2424 to ptr
  %gml2426 = load i64, ptr %gmp2425, align 1, !alias.scope !4, !noalias !3
  %wp2427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2426, ptr %wp2427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc12c word 0xd63f0100
  %r2428.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2428 = load i64, ptr %r2428.p, align 8, !alias.scope !3, !noalias !4
  %fp2429 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2428, ptr %fp2429, align 8, !alias.scope !3, !noalias !4
  %wp2430 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639792, ptr %wp2430, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc130 word 0x9001c408
  %wp2431 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc134 word 0xd10063a0
  %r2432.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2432 = load i64, ptr %r2432.p, align 8, !alias.scope !3, !noalias !4
  %t2433 = sub i64 %r2432, 24
  %wp2434 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2433, ptr %wp2434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc138 word 0xf945e908
  %r2435.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2435 = load i64, ptr %r2435.p, align 8, !alias.scope !3, !noalias !4
  %t2436 = add i64 %r2435, 3024
  %gmp2437 = inttoptr i64 %t2436 to ptr
  %gml2438 = load i64, ptr %gmp2437, align 1, !alias.scope !4, !noalias !3
  %wp2439 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2438, ptr %wp2439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc13c word 0x3944ce61
  %r2440.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2440 = load i64, ptr %r2440.p, align 8, !alias.scope !3, !noalias !4
  %t2441 = add i64 %r2440, 307
  %gmp2442 = inttoptr i64 %t2441 to ptr
  %gml2443 = load i8, ptr %gmp2442, align 1, !alias.scope !4, !noalias !3
  %c2444 = zext i8 %gml2443 to i64
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2444, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc140 word 0xf9400108
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %gmp2447 = inttoptr i64 %r2446 to ptr
  %gml2448 = load i64, ptr %gmp2447, align 1, !alias.scope !4, !noalias !3
  %wp2449 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2448, ptr %wp2449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc144 word 0xd63f0100
  %r2450.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2450 = load i64, ptr %r2450.p, align 8, !alias.scope !3, !noalias !4
  %fp2451 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2450, ptr %fp2451, align 8, !alias.scope !3, !noalias !4
  %wp2452 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639816, ptr %wp2452, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc148 word 0x9001c408
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc14c word 0x39466a62
  %r2454.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2454 = load i64, ptr %r2454.p, align 8, !alias.scope !3, !noalias !4
  %t2455 = add i64 %r2454, 410
  %gmp2456 = inttoptr i64 %t2455 to ptr
  %gml2457 = load i8, ptr %gmp2456, align 1, !alias.scope !4, !noalias !3
  %c2458 = zext i8 %gml2457 to i64
  %wp2459 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2458, ptr %wp2459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc150 word 0xd10063a0
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %t2461 = sub i64 %r2460, 24
  %wp2462 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2461, ptr %wp2462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc154 word 0xf945ed08
  %r2463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2463 = load i64, ptr %r2463.p, align 8, !alias.scope !3, !noalias !4
  %t2464 = add i64 %r2463, 3032
  %gmp2465 = inttoptr i64 %t2464 to ptr
  %gml2466 = load i64, ptr %gmp2465, align 1, !alias.scope !4, !noalias !3
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc158 word 0x52800061
  %c2468 = zext i32 3 to i64
  %wp2469 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2468, ptr %wp2469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc15c word 0xf9400108
  %r2470.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2470 = load i64, ptr %r2470.p, align 8, !alias.scope !3, !noalias !4
  %gmp2471 = inttoptr i64 %r2470 to ptr
  %gml2472 = load i64, ptr %gmp2471, align 1, !alias.scope !4, !noalias !3
  %wp2473 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2472, ptr %wp2473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc160 word 0xd63f0100
  %r2474.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2474 = load i64, ptr %r2474.p, align 8, !alias.scope !3, !noalias !4
  %fp2475 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2474, ptr %fp2475, align 8, !alias.scope !3, !noalias !4
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639844, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc164 word 0x9001c408
  %wp2477 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc168 word 0x39465e62
  %r2478.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2478 = load i64, ptr %r2478.p, align 8, !alias.scope !3, !noalias !4
  %t2479 = add i64 %r2478, 407
  %gmp2480 = inttoptr i64 %t2479 to ptr
  %gml2481 = load i8, ptr %gmp2480, align 1, !alias.scope !4, !noalias !3
  %c2482 = zext i8 %gml2481 to i64
  %wp2483 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2482, ptr %wp2483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc16c word 0xd10063a0
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %t2485 = sub i64 %r2484, 24
  %wp2486 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2485, ptr %wp2486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc170 word 0x39466263
  %r2487.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2487 = load i64, ptr %r2487.p, align 8, !alias.scope !3, !noalias !4
  %t2488 = add i64 %r2487, 408
  %gmp2489 = inttoptr i64 %t2488 to ptr
  %gml2490 = load i8, ptr %gmp2489, align 1, !alias.scope !4, !noalias !3
  %c2491 = zext i8 %gml2490 to i64
  %wp2492 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c2491, ptr %wp2492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc174 word 0x52800061
  %c2493 = zext i32 3 to i64
  %wp2494 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2493, ptr %wp2494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc178 word 0x39466664
  %r2495.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2495 = load i64, ptr %r2495.p, align 8, !alias.scope !3, !noalias !4
  %t2496 = add i64 %r2495, 409
  %gmp2497 = inttoptr i64 %t2496 to ptr
  %gml2498 = load i8, ptr %gmp2497, align 1, !alias.scope !4, !noalias !3
  %c2499 = zext i8 %gml2498 to i64
  %wp2500 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2499, ptr %wp2500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc17c word 0xf945f108
  %r2501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2501 = load i64, ptr %r2501.p, align 8, !alias.scope !3, !noalias !4
  %t2502 = add i64 %r2501, 3040
  %gmp2503 = inttoptr i64 %t2502 to ptr
  %gml2504 = load i64, ptr %gmp2503, align 1, !alias.scope !4, !noalias !3
  %wp2505 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2504, ptr %wp2505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc180 word 0xf9400108
  %r2506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2506 = load i64, ptr %r2506.p, align 8, !alias.scope !3, !noalias !4
  %gmp2507 = inttoptr i64 %r2506 to ptr
  %gml2508 = load i64, ptr %gmp2507, align 1, !alias.scope !4, !noalias !3
  %wp2509 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2508, ptr %wp2509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc184 word 0xd63f0100
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %fp2511 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2510, ptr %fp2511, align 8, !alias.scope !3, !noalias !4
  %wp2512 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639880, ptr %wp2512, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc188 word 0x9001c408
  %wp2513 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc18c word 0xd10063a1
  %r2514.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2514 = load i64, ptr %r2514.p, align 8, !alias.scope !3, !noalias !4
  %t2515 = sub i64 %r2514, 24
  %wp2516 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2515, ptr %wp2516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc190 word 0xf940c508
  %r2517.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2517 = load i64, ptr %r2517.p, align 8, !alias.scope !3, !noalias !4
  %t2518 = add i64 %r2517, 392
  %gmp2519 = inttoptr i64 %t2518 to ptr
  %gml2520 = load i64, ptr %gmp2519, align 1, !alias.scope !4, !noalias !3
  %wp2521 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2520, ptr %wp2521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc194 word 0xaa1403e0
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %t2523 = or i64 0, %r2522
  %wp2524 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2523, ptr %wp2524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc198 word 0xf9400108
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %gmp2526 = inttoptr i64 %r2525 to ptr
  %gml2527 = load i64, ptr %gmp2526, align 1, !alias.scope !4, !noalias !3
  %wp2528 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2527, ptr %wp2528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc19c word 0xd63f0100
  %r2529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2529 = load i64, ptr %r2529.p, align 8, !alias.scope !3, !noalias !4
  %fp2530 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2529, ptr %fp2530, align 8, !alias.scope !3, !noalias !4
  %wp2531 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639904, ptr %wp2531, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc1a0 word 0x3944ce68
  %r2532.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2532 = load i64, ptr %r2532.p, align 8, !alias.scope !3, !noalias !4
  %t2533 = add i64 %r2532, 307
  %gmp2534 = inttoptr i64 %t2533 to ptr
  %gml2535 = load i8, ptr %gmp2534, align 1, !alias.scope !4, !noalias !3
  %c2536 = zext i8 %gml2535 to i64
  %wp2537 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2536, ptr %wp2537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1a4 word 0x35004b48
  %r2538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2538 = load i64, ptr %r2538.p, align 8, !alias.scope !3, !noalias !4
  %c2539 = trunc i64 %r2538 to i32
  %cmp2540 = icmp ne i32 %c2539, 0
  br i1 %cmp2540, label %L_8000dcb0c, label %L_8000dc1a8
L_8000dc1a8:
  ; @pc 0x8000dc1a8 word 0xf001c3e8
  %wp2541 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1ac word 0x39465661
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %t2543 = add i64 %r2542, 405
  %gmp2544 = inttoptr i64 %t2543 to ptr
  %gml2545 = load i8, ptr %gmp2544, align 1, !alias.scope !4, !noalias !3
  %c2546 = zext i8 %gml2545 to i64
  %wp2547 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2546, ptr %wp2547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1b0 word 0xd10073a0
  %r2548.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2548 = load i64, ptr %r2548.p, align 8, !alias.scope !3, !noalias !4
  %t2549 = sub i64 %r2548, 28
  %wp2550 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2549, ptr %wp2550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1b4 word 0xf9473108
  %r2551.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2551 = load i64, ptr %r2551.p, align 8, !alias.scope !3, !noalias !4
  %t2552 = add i64 %r2551, 3680
  %gmp2553 = inttoptr i64 %t2552 to ptr
  %gml2554 = load i64, ptr %gmp2553, align 1, !alias.scope !4, !noalias !3
  %wp2555 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2554, ptr %wp2555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1b8 word 0xf9400108
  %r2556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2556 = load i64, ptr %r2556.p, align 8, !alias.scope !3, !noalias !4
  %gmp2557 = inttoptr i64 %r2556 to ptr
  %gml2558 = load i64, ptr %gmp2557, align 1, !alias.scope !4, !noalias !3
  %wp2559 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2558, ptr %wp2559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1bc word 0xd63f0100
  %r2560.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2560 = load i64, ptr %r2560.p, align 8, !alias.scope !3, !noalias !4
  %fp2561 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2560, ptr %fp2561, align 8, !alias.scope !3, !noalias !4
  %wp2562 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639936, ptr %wp2562, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc1c0 word 0xf001c3e8
  %wp2563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1c4 word 0xd10073a0
  %r2564.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2564 = load i64, ptr %r2564.p, align 8, !alias.scope !3, !noalias !4
  %t2565 = sub i64 %r2564, 28
  %wp2566 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2565, ptr %wp2566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1c8 word 0xf9473508
  %r2567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2567 = load i64, ptr %r2567.p, align 8, !alias.scope !3, !noalias !4
  %t2568 = add i64 %r2567, 3688
  %gmp2569 = inttoptr i64 %t2568 to ptr
  %gml2570 = load i64, ptr %gmp2569, align 1, !alias.scope !4, !noalias !3
  %wp2571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2570, ptr %wp2571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1cc word 0x52800021
  %c2572 = zext i32 1 to i64
  %wp2573 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2572, ptr %wp2573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1d0 word 0xf9400108
  %r2574.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2574 = load i64, ptr %r2574.p, align 8, !alias.scope !3, !noalias !4
  %gmp2575 = inttoptr i64 %r2574 to ptr
  %gml2576 = load i64, ptr %gmp2575, align 1, !alias.scope !4, !noalias !3
  %wp2577 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2576, ptr %wp2577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1d4 word 0xd63f0100
  %r2578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2578 = load i64, ptr %r2578.p, align 8, !alias.scope !3, !noalias !4
  %fp2579 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2578, ptr %fp2579, align 8, !alias.scope !3, !noalias !4
  %wp2580 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639960, ptr %wp2580, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc1d8 word 0xf001c3e8
  %wp2581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1dc word 0x39466e61
  %r2582.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2582 = load i64, ptr %r2582.p, align 8, !alias.scope !3, !noalias !4
  %t2583 = add i64 %r2582, 411
  %gmp2584 = inttoptr i64 %t2583 to ptr
  %gml2585 = load i8, ptr %gmp2584, align 1, !alias.scope !4, !noalias !3
  %c2586 = zext i8 %gml2585 to i64
  %wp2587 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2586, ptr %wp2587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1e0 word 0xd10073a0
  %r2588.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2588 = load i64, ptr %r2588.p, align 8, !alias.scope !3, !noalias !4
  %t2589 = sub i64 %r2588, 28
  %wp2590 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2589, ptr %wp2590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1e4 word 0xf9473908
  %r2591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2591 = load i64, ptr %r2591.p, align 8, !alias.scope !3, !noalias !4
  %t2592 = add i64 %r2591, 3696
  %gmp2593 = inttoptr i64 %t2592 to ptr
  %gml2594 = load i64, ptr %gmp2593, align 1, !alias.scope !4, !noalias !3
  %wp2595 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2594, ptr %wp2595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1e8 word 0xf9400108
  %r2596.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2596 = load i64, ptr %r2596.p, align 8, !alias.scope !3, !noalias !4
  %gmp2597 = inttoptr i64 %r2596 to ptr
  %gml2598 = load i64, ptr %gmp2597, align 1, !alias.scope !4, !noalias !3
  %wp2599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2598, ptr %wp2599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1ec word 0xd63f0100
  %r2600.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2600 = load i64, ptr %r2600.p, align 8, !alias.scope !3, !noalias !4
  %fp2601 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2600, ptr %fp2601, align 8, !alias.scope !3, !noalias !4
  %wp2602 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639984, ptr %wp2602, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc1f0 word 0x39467668
  %r2603.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2603 = load i64, ptr %r2603.p, align 8, !alias.scope !3, !noalias !4
  %t2604 = add i64 %r2603, 413
  %gmp2605 = inttoptr i64 %t2604 to ptr
  %gml2606 = load i8, ptr %gmp2605, align 1, !alias.scope !4, !noalias !3
  %c2607 = zext i8 %gml2606 to i64
  %wp2608 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2607, ptr %wp2608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1f4 word 0xd10073a0
  %r2609.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2609 = load i64, ptr %r2609.p, align 8, !alias.scope !3, !noalias !4
  %t2610 = sub i64 %r2609, 28
  %wp2611 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2610, ptr %wp2611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1f8 word 0x13000108
  %r2612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2612 = load i64, ptr %r2612.p, align 8, !alias.scope !3, !noalias !4
  %c2613 = trunc i64 %r2612 to i32
  %t2614 = lshr i32 %c2613, 0
  %t2615 = and i32 %t2614, 1
  %t2616 = sub i32 0, %t2615
  %t2617 = and i32 %t2616, -2
  %t2618 = and i32 %c2613, 1
  %t2619 = or i32 %t2617, %t2618
  %c2620 = zext i32 %t2619 to i64
  %wp2621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2620, ptr %wp2621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc1fc word 0x12000901
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %c2623 = trunc i64 %r2622 to i32
  %t2624 = and i32 %c2623, 7
  %c2625 = zext i32 %t2624 to i64
  %wp2626 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2625, ptr %wp2626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc200 word 0xf001c3e8
  %wp2627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc204 word 0xf9473d08
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %t2629 = add i64 %r2628, 3704
  %gmp2630 = inttoptr i64 %t2629 to ptr
  %gml2631 = load i64, ptr %gmp2630, align 1, !alias.scope !4, !noalias !3
  %wp2632 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2631, ptr %wp2632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc208 word 0xf9400108
  %r2633.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2633 = load i64, ptr %r2633.p, align 8, !alias.scope !3, !noalias !4
  %gmp2634 = inttoptr i64 %r2633 to ptr
  %gml2635 = load i64, ptr %gmp2634, align 1, !alias.scope !4, !noalias !3
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2635, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc20c word 0xd63f0100
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %fp2638 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2637, ptr %fp2638, align 8, !alias.scope !3, !noalias !4
  %wp2639 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360640016, ptr %wp2639, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc210 word 0xf001c3e8
  %wp2640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc214 word 0xd10073a1
  %r2641.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2641 = load i64, ptr %r2641.p, align 8, !alias.scope !3, !noalias !4
  %t2642 = sub i64 %r2641, 28
  %wp2643 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2642, ptr %wp2643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc218 word 0xf9474108
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %t2645 = add i64 %r2644, 3712
  %gmp2646 = inttoptr i64 %t2645 to ptr
  %gml2647 = load i64, ptr %gmp2646, align 1, !alias.scope !4, !noalias !3
  %wp2648 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2647, ptr %wp2648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc21c word 0xaa1403e0
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = or i64 0, %r2649
  %wp2651 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2650, ptr %wp2651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc220 word 0xf9400108
  %r2652.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2652 = load i64, ptr %r2652.p, align 8, !alias.scope !3, !noalias !4
  %gmp2653 = inttoptr i64 %r2652 to ptr
  %gml2654 = load i64, ptr %gmp2653, align 1, !alias.scope !4, !noalias !3
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc224 word 0xd63f0100
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %fp2657 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2656, ptr %fp2657, align 8, !alias.scope !3, !noalias !4
  %wp2658 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360640040, ptr %wp2658, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc228 word 0xf001c3e8
  %wp2659 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419879936, ptr %wp2659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc22c word 0xbd418a60
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %t2661 = add i64 %r2660, 392
  %gmp2662 = inttoptr i64 %t2661 to ptr
  %gml2663 = load i32, ptr %gmp2662, align 1, !alias.scope !4, !noalias !3
  %c2664 = zext i32 %gml2663 to i128
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2664, ptr %wp2665, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc230 word 0xaa1403e0
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %t2667 = or i64 0, %r2666
  %wp2668 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2667, ptr %wp2668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc234 word 0xbd418e61
  %r2669.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2669 = load i64, ptr %r2669.p, align 8, !alias.scope !3, !noalias !4
  %t2670 = add i64 %r2669, 396
  %gmp2671 = inttoptr i64 %t2670 to ptr
  %gml2672 = load i32, ptr %gmp2671, align 1, !alias.scope !4, !noalias !3
  %c2673 = zext i32 %gml2672 to i128
  %wp2674 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2673, ptr %wp2674, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc238 word 0xbd419262
  %r2675.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2675 = load i64, ptr %r2675.p, align 8, !alias.scope !3, !noalias !4
  %t2676 = add i64 %r2675, 400
  %gmp2677 = inttoptr i64 %t2676 to ptr
  %gml2678 = load i32, ptr %gmp2677, align 1, !alias.scope !4, !noalias !3
  %c2679 = zext i32 %gml2678 to i128
  %wp2680 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c2679, ptr %wp2680, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc23c word 0xf9474508
  %r2681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2681 = load i64, ptr %r2681.p, align 8, !alias.scope !3, !noalias !4
  %t2682 = add i64 %r2681, 3720
  %gmp2683 = inttoptr i64 %t2682 to ptr
  %gml2684 = load i64, ptr %gmp2683, align 1, !alias.scope !4, !noalias !3
  %wp2685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2684, ptr %wp2685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc240 word 0xf9400108
  %r2686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2686 = load i64, ptr %r2686.p, align 8, !alias.scope !3, !noalias !4
  %gmp2687 = inttoptr i64 %r2686 to ptr
  %gml2688 = load i64, ptr %gmp2687, align 1, !alias.scope !4, !noalias !3
  %wp2689 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2688, ptr %wp2689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc244 word 0xd63f0100
  %r2690.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2690 = load i64, ptr %r2690.p, align 8, !alias.scope !3, !noalias !4
  %fp2691 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2690, ptr %fp2691, align 8, !alias.scope !3, !noalias !4
  %wp2692 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360640072, ptr %wp2692, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc248 word 0x9001c408
  %wp2693 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp2693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc24c word 0xaa1403e0
  %r2694.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2694 = load i64, ptr %r2694.p, align 8, !alias.scope !3, !noalias !4
  %t2695 = or i64 0, %r2694
  %wp2696 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2695, ptr %wp2696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc250 word 0xf940f108
  %r2697.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2697 = load i64, ptr %r2697.p, align 8, !alias.scope !3, !noalias !4
  %t2698 = add i64 %r2697, 480
  %gmp2699 = inttoptr i64 %t2698 to ptr
  %gml2700 = load i64, ptr %gmp2699, align 1, !alias.scope !4, !noalias !3
  %wp2701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2700, ptr %wp2701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc254 word 0x39467a61
  %r2702.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2702 = load i64, ptr %r2702.p, align 8, !alias.scope !3, !noalias !4
  %t2703 = add i64 %r2702, 414
  %gmp2704 = inttoptr i64 %t2703 to ptr
  %gml2705 = load i8, ptr %gmp2704, align 1, !alias.scope !4, !noalias !3
  %c2706 = zext i8 %gml2705 to i64
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c2706, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc258 word 0xf9400108
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %gmp2709 = inttoptr i64 %r2708 to ptr
  %gml2710 = load i64, ptr %gmp2709, align 1, !alias.scope !4, !noalias !3
  %wp2711 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2710, ptr %wp2711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc25c word 0xd63f0100
  %r2712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2712 = load i64, ptr %r2712.p, align 8, !alias.scope !3, !noalias !4
  %fp2713 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2712, ptr %fp2713, align 8, !alias.scope !3, !noalias !4
  %wp2714 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360640096, ptr %wp2714, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc260 word 0xf85d83ba
  %r2715.p = getelementptr inbounds i8, ptr %c, i64 232
  %r2715 = load i64, ptr %r2715.p, align 8, !alias.scope !3, !noalias !4
  %t2716 = add i64 %r2715, -40
  %gmp2717 = inttoptr i64 %t2716 to ptr
  %gml2718 = load i64, ptr %gmp2717, align 1, !alias.scope !4, !noalias !3
  %wp2719 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2718, ptr %wp2719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc264 word 0xa94213e5
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = add i64 %r2720, 32
  %t2722 = add i64 %t2721, 8
  %gmp2723 = inttoptr i64 %t2721 to ptr
  %gml2724 = load i64, ptr %gmp2723, align 1, !alias.scope !4, !noalias !3
  %gmp2725 = inttoptr i64 %t2722 to ptr
  %gml2726 = load i64, ptr %gmp2725, align 1, !alias.scope !4, !noalias !3
  %wp2727 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml2724, ptr %wp2727, align 8, !alias.scope !3, !noalias !4
  %wp2728 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml2726, ptr %wp2728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc268 word 0xf9401bf8
  %r2729.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2729 = load i64, ptr %r2729.p, align 8, !alias.scope !3, !noalias !4
  %t2730 = add i64 %r2729, 48
  %gmp2731 = inttoptr i64 %t2730 to ptr
  %gml2732 = load i64, ptr %gmp2731, align 1, !alias.scope !4, !noalias !3
  %wp2733 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2732, ptr %wp2733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc26c word 0xf9400fe6
  %r2734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2734 = load i64, ptr %r2734.p, align 8, !alias.scope !3, !noalias !4
  %t2735 = add i64 %r2734, 24
  %gmp2736 = inttoptr i64 %t2735 to ptr
  %gml2737 = load i64, ptr %gmp2736, align 1, !alias.scope !4, !noalias !3
  %wp2738 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml2737, ptr %wp2738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc270 word 0xeb1800df
  %r2739.p = getelementptr inbounds i8, ptr %c, i64 48
  %r2739 = load i64, ptr %r2739.p, align 8, !alias.scope !3, !noalias !4
  %r2740.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2740 = load i64, ptr %r2740.p, align 8, !alias.scope !3, !noalias !4
  %t2741 = sub i64 %r2739, %r2740
  %fn2742 = icmp slt i64 %t2741, 0
  %fz2743 = icmp eq i64 %t2741, 0
  %fc2744 = icmp uge i64 %r2739, %r2740
  %fx12745 = xor i64 %r2739, %r2740
  %fx22746 = xor i64 %r2739, %t2741
  %fva2747 = and i64 %fx12745, %fx22746
  %fv2748 = icmp slt i64 %fva2747, 0
  %nz2749 = zext i1 %fn2742 to i64
  %zz2750 = zext i1 %fz2743 to i64
  %cz2751 = zext i1 %fc2744 to i64
  %vz2752 = zext i1 %fv2748 to i64
  %ns2753 = shl i64 %nz2749, 31
  %zs2754 = shl i64 %zz2750, 30
  %cs2755 = shl i64 %cz2751, 29
  %vs2756 = shl i64 %vz2752, 28
  %nzor2757 = or i64 %ns2753, %zs2754
  %cvor2758 = or i64 %cs2755, %vs2756
  %nzcv2759 = or i64 %nzor2757, %cvor2758
  %wp2760 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2759, ptr %wp2760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc274 word 0x54ffcee0
  %r2761.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2761 = load i64, ptr %r2761.p, align 8, !alias.scope !3, !noalias !4
  %fsh2763 = lshr i64 %r2761, 30
  %cond2762 = trunc i64 %fsh2763 to i1
  br i1 %cond2762, label %L_8000dbc50, label %L_8000dc278
L_8000dc278:
  ; @pc 0x8000dc278 word 0xf94002e8
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %gmp2765 = inttoptr i64 %r2764 to ptr
  %gml2766 = load i64, ptr %gmp2765, align 1, !alias.scope !4, !noalias !3
  %wp2767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2766, ptr %wp2767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc27c word 0xf9401269
  %r2768.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2768 = load i64, ptr %r2768.p, align 8, !alias.scope !3, !noalias !4
  %t2769 = add i64 %r2768, 32
  %gmp2770 = inttoptr i64 %t2769 to ptr
  %gml2771 = load i64, ptr %gmp2770, align 1, !alias.scope !4, !noalias !3
  %wp2772 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2771, ptr %wp2772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc280 word 0x7940690a
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %t2774 = add i64 %r2773, 52
  %gmp2775 = inttoptr i64 %t2774 to ptr
  %gml2776 = load i16, ptr %gmp2775, align 1, !alias.scope !4, !noalias !3
  %c2777 = zext i16 %gml2776 to i64
  %wp2778 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2777, ptr %wp2778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc284 word 0x3710488a
  %r2779.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2779 = load i64, ptr %r2779.p, align 8, !alias.scope !3, !noalias !4
  %t2780 = and i64 %r2779, 4
  %cmp2781 = icmp ne i64 %t2780, 0
  br i1 %cmp2781, label %L_8000dcb94, label %L_8000dc288_ft
L_8000dc298:
  ; @pc 0x8000dc298 word 0x91002120
  %r2793.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2793 = load i64, ptr %r2793.p, align 8, !alias.scope !3, !noalias !4
  %t2794 = add i64 %r2793, 8
  %wp2795 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2794, ptr %wp2795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc29c word 0xf001c3e9
  %wp2796 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419879936, ptr %wp2796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2a0 word 0xf9478929
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %t2798 = add i64 %r2797, 3856
  %gmp2799 = inttoptr i64 %t2798 to ptr
  %gml2800 = load i64, ptr %gmp2799, align 1, !alias.scope !4, !noalias !3
  %wp2801 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2800, ptr %wp2801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2a4 word 0xf9401108
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %t2803 = add i64 %r2802, 32
  %gmp2804 = inttoptr i64 %t2803 to ptr
  %gml2805 = load i64, ptr %gmp2804, align 1, !alias.scope !4, !noalias !3
  %wp2806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2805, ptr %wp2806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2a8 word 0x52803fe2
  %c2807 = zext i32 511 to i64
  %wp2808 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2807, ptr %wp2808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2ac word 0xf86a7929
  %r2809.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2809 = load i64, ptr %r2809.p, align 8, !alias.scope !3, !noalias !4
  %r2810.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2810 = load i64, ptr %r2810.p, align 8, !alias.scope !3, !noalias !4
  %t2811 = shl i64 %r2810, 3
  %t2812 = add i64 %r2809, %t2811
  %gmp2813 = inttoptr i64 %t2812 to ptr
  %gml2814 = load i64, ptr %gmp2813, align 1, !alias.scope !4, !noalias !3
  %wp2815 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2814, ptr %wp2815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2b0 word 0xf8696908
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %r2817.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2817 = load i64, ptr %r2817.p, align 8, !alias.scope !3, !noalias !4
  %t2818 = add i64 %r2816, %r2817
  %gmp2819 = inttoptr i64 %t2818 to ptr
  %gml2820 = load i64, ptr %gmp2819, align 1, !alias.scope !4, !noalias !3
  %wp2821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2820, ptr %wp2821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2b4 word 0xf9403501
  %r2822.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2822 = load i64, ptr %r2822.p, align 8, !alias.scope !3, !noalias !4
  %t2823 = add i64 %r2822, 104
  %gmp2824 = inttoptr i64 %t2823 to ptr
  %gml2825 = load i64, ptr %gmp2824, align 1, !alias.scope !4, !noalias !3
  %wp2826 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2825, ptr %wp2826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2b8 word 0x97ff22bf
  %wp2827 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360640188, ptr %wp2827, align 8, !alias.scope !3, !noalias !4
  call void @f_8000a4db4(ptr %c)
  ; @pc 0x8000dc2bc word 0xaa1403e4
  %r2828.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2828 = load i64, ptr %r2828.p, align 8, !alias.scope !3, !noalias !4
  %t2829 = or i64 0, %r2828
  %wp2830 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t2829, ptr %wp2830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2c0 word 0xaa1503e5
  %r2831.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2831 = load i64, ptr %r2831.p, align 8, !alias.scope !3, !noalias !4
  %t2832 = or i64 0, %r2831
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc2c4
L_8000dc2c4:
  ; @pc 0x8000dc2c4 word 0x79408268
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %t2835 = add i64 %r2834, 64
  %gmp2836 = inttoptr i64 %t2835 to ptr
  %gml2837 = load i16, ptr %gmp2836, align 1, !alias.scope !4, !noalias !3
  %c2838 = zext i16 %gml2837 to i64
  %wp2839 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2838, ptr %wp2839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2c8 word 0xa911627f
  %r2840.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2840 = load i64, ptr %r2840.p, align 8, !alias.scope !3, !noalias !4
  %t2841 = add i64 %r2840, 272
  %t2842 = add i64 %t2841, 8
  %gmp2843 = inttoptr i64 %t2841 to ptr
  store i64 0, ptr %gmp2843, align 1, !alias.scope !4, !noalias !3
  %r2844.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2844 = load i64, ptr %r2844.p, align 8, !alias.scope !3, !noalias !4
  %gmp2845 = inttoptr i64 %t2842 to ptr
  store i64 %r2844, ptr %gmp2845, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc2cc word 0x36700b88
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %t2847 = and i64 %r2846, 16384
  %cmp2848 = icmp eq i64 %t2847, 0
  br i1 %cmp2848, label %L_8000dc43c, label %L_8000dc2d0_ft
L_8000dc2e4:
  ; @pc 0x8000dc2e4 word 0x52800069
  %c2864 = zext i32 3 to i64
  %wp2865 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2864, ptr %wp2865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2e8 word 0x91002337
  %r2866.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2866 = load i64, ptr %r2866.p, align 8, !alias.scope !3, !noalias !4
  %t2867 = add i64 %r2866, 8
  %wp2868 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2867, ptr %wp2868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2ec word 0xf9000329
  %r2869.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2869 = load i64, ptr %r2869.p, align 8, !alias.scope !3, !noalias !4
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %gmp2871 = inttoptr i64 %r2869 to ptr
  store i64 %r2870, ptr %gmp2871, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc2f0 word 0xf9002ad9
  %r2872.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2872 = load i64, ptr %r2872.p, align 8, !alias.scope !3, !noalias !4
  %t2873 = add i64 %r2872, 80
  %r2874.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2874 = load i64, ptr %r2874.p, align 8, !alias.scope !3, !noalias !4
  %gmp2875 = inttoptr i64 %t2873 to ptr
  store i64 %r2874, ptr %gmp2875, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc2f4 word 0x17fffe86
  br label %L_8000dbd0c
L_8000dc2f8:
  ; @pc 0x8000dc2f8 word 0x7100093f
  %r2876.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2876 = load i64, ptr %r2876.p, align 8, !alias.scope !3, !noalias !4
  %c2877 = trunc i64 %r2876 to i32
  %t2878 = sub i32 %c2877, 2
  %fn2879 = icmp slt i32 %t2878, 0
  %fz2880 = icmp eq i32 %t2878, 0
  %fc2881 = icmp uge i32 %c2877, 2
  %fx12882 = xor i32 %c2877, 2
  %fx22883 = xor i32 %c2877, %t2878
  %fva2884 = and i32 %fx12882, %fx22883
  %fv2885 = icmp slt i32 %fva2884, 0
  %nz2886 = zext i1 %fn2879 to i64
  %zz2887 = zext i1 %fz2880 to i64
  %cz2888 = zext i1 %fc2881 to i64
  %vz2889 = zext i1 %fv2885 to i64
  %ns2890 = shl i64 %nz2886, 31
  %zs2891 = shl i64 %zz2887, 30
  %cs2892 = shl i64 %cz2888, 29
  %vs2893 = shl i64 %vz2889, 28
  %nzor2894 = or i64 %ns2890, %zs2891
  %cvor2895 = or i64 %cs2892, %vs2893
  %nzcv2896 = or i64 %nzor2894, %cvor2895
  %wp2897 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2896, ptr %wp2897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2fc word 0x54ffca01
  %r2898.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2898 = load i64, ptr %r2898.p, align 8, !alias.scope !3, !noalias !4
  %fsh2900 = lshr i64 %r2898, 30
  %ftr2901 = trunc i64 %fsh2900 to i1
  %cond2899 = xor i1 %ftr2901, true
  br i1 %cond2899, label %L_8000dbc3c, label %L_8000dc300_ft
L_8000dc310:
  ; @pc 0x8000dc310 word 0x39465269
  %r2920.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2920 = load i64, ptr %r2920.p, align 8, !alias.scope !3, !noalias !4
  %t2921 = add i64 %r2920, 404
  %gmp2922 = inttoptr i64 %t2921 to ptr
  %gml2923 = load i8, ptr %gmp2922, align 1, !alias.scope !4, !noalias !3
  %c2924 = zext i8 %gml2923 to i64
  %wp2925 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2924, ptr %wp2925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc314 word 0x7100113f
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %c2927 = trunc i64 %r2926 to i32
  %t2928 = sub i32 %c2927, 4
  %fn2929 = icmp slt i32 %t2928, 0
  %fz2930 = icmp eq i32 %t2928, 0
  %fc2931 = icmp uge i32 %c2927, 4
  %fx12932 = xor i32 %c2927, 4
  %fx22933 = xor i32 %c2927, %t2928
  %fva2934 = and i32 %fx12932, %fx22933
  %fv2935 = icmp slt i32 %fva2934, 0
  %nz2936 = zext i1 %fn2929 to i64
  %zz2937 = zext i1 %fz2930 to i64
  %cz2938 = zext i1 %fc2931 to i64
  %vz2939 = zext i1 %fv2935 to i64
  %ns2940 = shl i64 %nz2936, 31
  %zs2941 = shl i64 %zz2937, 30
  %cs2942 = shl i64 %cz2938, 29
  %vs2943 = shl i64 %vz2939, 28
  %nzor2944 = or i64 %ns2940, %zs2941
  %cvor2945 = or i64 %cs2942, %vs2943
  %nzcv2946 = or i64 %nzor2944, %cvor2945
  %wp2947 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2946, ptr %wp2947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc318 word 0x54003221
  %r2948.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2948 = load i64, ptr %r2948.p, align 8, !alias.scope !3, !noalias !4
  %fsh2950 = lshr i64 %r2948, 30
  %ftr2951 = trunc i64 %fsh2950 to i1
  %cond2949 = xor i1 %ftr2951, true
  br i1 %cond2949, label %L_8000dc95c, label %L_8000dc31c
L_8000dc31c:
  ; @pc 0x8000dc31c word 0x1200018d
  %r2952.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2952 = load i64, ptr %r2952.p, align 8, !alias.scope !3, !noalias !4
  %c2953 = trunc i64 %r2952 to i32
  %t2954 = and i32 %c2953, 1
  %c2955 = zext i32 %t2954 to i64
  %wp2956 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2955, ptr %wp2956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc320 word 0x17fffe47
  br label %L_8000dbc3c
L_8000dc324:
  ; @pc 0x8000dc324 word 0xbd413a60
  %r2957.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2957 = load i64, ptr %r2957.p, align 8, !alias.scope !3, !noalias !4
  %t2958 = add i64 %r2957, 312
  %gmp2959 = inttoptr i64 %t2958 to ptr
  %gml2960 = load i32, ptr %gmp2959, align 1, !alias.scope !4, !noalias !3
  %c2961 = zext i32 %gml2960 to i128
  %wp2962 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2961, ptr %wp2962, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc328 word 0xbd410961
  %r2963.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2963 = load i64, ptr %r2963.p, align 8, !alias.scope !3, !noalias !4
  %t2964 = add i64 %r2963, 264
  %gmp2965 = inttoptr i64 %t2964 to ptr
  %gml2966 = load i32, ptr %gmp2965, align 1, !alias.scope !4, !noalias !3
  %c2967 = zext i32 %gml2966 to i128
  %wp2968 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2967, ptr %wp2968, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc32c word 0x1e212000
  %fcmp2969 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp2970 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2969, ptr %wp2970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc330 word 0x540001a1
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %fsh2973 = lshr i64 %r2971, 30
  %ftr2974 = trunc i64 %fsh2973 to i1
  %cond2972 = xor i1 %ftr2974, true
  br i1 %cond2972, label %L_8000dc364, label %L_8000dc334_ft
L_8000dc364:
  ; @pc 0x8000dc364 word 0x9104216e
  %r3028.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3028 = load i64, ptr %r3028.p, align 8, !alias.scope !3, !noalias !4
  %t3029 = add i64 %r3028, 264
  %wp3030 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3029, ptr %wp3030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc368 word 0x9104e26c
  %r3031.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3031 = load i64, ptr %r3031.p, align 8, !alias.scope !3, !noalias !4
  %t3032 = add i64 %r3031, 312
  %wp3033 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3032, ptr %wp3033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc36c word 0xa94039cf
  %r3034.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3034 = load i64, ptr %r3034.p, align 8, !alias.scope !3, !noalias !4
  %t3035 = add i64 %r3034, 8
  %gmp3036 = inttoptr i64 %r3034 to ptr
  %gml3037 = load i64, ptr %gmp3036, align 1, !alias.scope !4, !noalias !3
  %gmp3038 = inttoptr i64 %t3035 to ptr
  %gml3039 = load i64, ptr %gmp3038, align 1, !alias.scope !4, !noalias !3
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3037, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  %wp3041 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3039, ptr %wp3041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc370 word 0xa900398f
  %r3042.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3042 = load i64, ptr %r3042.p, align 8, !alias.scope !3, !noalias !4
  %t3043 = add i64 %r3042, 8
  %r3044.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3044 = load i64, ptr %r3044.p, align 8, !alias.scope !3, !noalias !4
  %gmp3045 = inttoptr i64 %r3042 to ptr
  store i64 %r3044, ptr %gmp3045, align 1, !alias.scope !4, !noalias !3
  %r3046.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3046 = load i64, ptr %r3046.p, align 8, !alias.scope !3, !noalias !4
  %gmp3047 = inttoptr i64 %t3043 to ptr
  store i64 %r3046, ptr %gmp3047, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc374 word 0x5280002c
  %c3048 = zext i32 1 to i64
  %wp3049 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3048, ptr %wp3049, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc378
L_8000dc378:
  ; @pc 0x8000dc378 word 0x377fd90a
  %r3050.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3050 = load i64, ptr %r3050.p, align 8, !alias.scope !3, !noalias !4
  %t3051 = and i64 %r3050, 32768
  %cmp3052 = icmp ne i64 %t3051, 0
  br i1 %cmp3052, label %L_8000dbe98, label %L_8000dc37c_ft
L_8000dc388:
  ; @pc 0x8000dc388 word 0x8b0e0211
  %r3061.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3061 = load i64, ptr %r3061.p, align 8, !alias.scope !3, !noalias !4
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %t3063 = add i64 %r3061, %r3062
  %wp3064 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3063, ptr %wp3064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc38c word 0x386e69f2
  %r3065.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3065 = load i64, ptr %r3065.p, align 8, !alias.scope !3, !noalias !4
  %r3066.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3066 = load i64, ptr %r3066.p, align 8, !alias.scope !3, !noalias !4
  %t3067 = add i64 %r3065, %r3066
  %gmp3068 = inttoptr i64 %t3067 to ptr
  %gml3069 = load i8, ptr %gmp3068, align 1, !alias.scope !4, !noalias !3
  %c3070 = zext i8 %gml3069 to i64
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc390 word 0x385fb220
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %t3073 = add i64 %r3072, -5
  %gmp3074 = inttoptr i64 %t3073 to ptr
  %gml3075 = load i8, ptr %gmp3074, align 1, !alias.scope !4, !noalias !3
  %c3076 = zext i8 %gml3075 to i64
  %wp3077 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c3076, ptr %wp3077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc394 word 0x6b12001f
  %r3078.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3078 = load i64, ptr %r3078.p, align 8, !alias.scope !3, !noalias !4
  %c3079 = trunc i64 %r3078 to i32
  %r3080.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3080 = load i64, ptr %r3080.p, align 8, !alias.scope !3, !noalias !4
  %c3081 = trunc i64 %r3080 to i32
  %t3082 = sub i32 %c3079, %c3081
  %fn3083 = icmp slt i32 %t3082, 0
  %fz3084 = icmp eq i32 %t3082, 0
  %fc3085 = icmp uge i32 %c3079, %c3081
  %fx13086 = xor i32 %c3079, %c3081
  %fx23087 = xor i32 %c3079, %t3082
  %fva3088 = and i32 %fx13086, %fx23087
  %fv3089 = icmp slt i32 %fva3088, 0
  %nz3090 = zext i1 %fn3083 to i64
  %zz3091 = zext i1 %fz3084 to i64
  %cz3092 = zext i1 %fc3085 to i64
  %vz3093 = zext i1 %fv3089 to i64
  %ns3094 = shl i64 %nz3090, 31
  %zs3095 = shl i64 %zz3091, 30
  %cs3096 = shl i64 %cz3092, 29
  %vs3097 = shl i64 %vz3093, 28
  %nzor3098 = or i64 %ns3094, %zs3095
  %cvor3099 = or i64 %cs3096, %vs3097
  %nzcv3100 = or i64 %nzor3098, %cvor3099
  %wp3101 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3100, ptr %wp3101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc398 word 0x385fd221
  %r3102.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3102 = load i64, ptr %r3102.p, align 8, !alias.scope !3, !noalias !4
  %t3103 = add i64 %r3102, -3
  %gmp3104 = inttoptr i64 %t3103 to ptr
  %gml3105 = load i8, ptr %gmp3104, align 1, !alias.scope !4, !noalias !3
  %c3106 = zext i8 %gml3105 to i64
  %wp3107 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3106, ptr %wp3107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc39c word 0x8b0e01f2
  %r3108.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3108 = load i64, ptr %r3108.p, align 8, !alias.scope !3, !noalias !4
  %r3109.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3109 = load i64, ptr %r3109.p, align 8, !alias.scope !3, !noalias !4
  %t3110 = add i64 %r3108, %r3109
  %wp3111 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t3110, ptr %wp3111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3a0 word 0x54000081
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %fsh3114 = lshr i64 %r3112, 30
  %ftr3115 = trunc i64 %fsh3114 to i1
  %cond3113 = xor i1 %ftr3115, true
  br i1 %cond3113, label %L_8000dc3b0, label %L_8000dc3a4_ft
L_8000dc3b0:
  ; @pc 0x8000dc3b0 word 0x385fc22c
  %r3149.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3149 = load i64, ptr %r3149.p, align 8, !alias.scope !3, !noalias !4
  %t3150 = add i64 %r3149, -4
  %gmp3151 = inttoptr i64 %t3150 to ptr
  %gml3152 = load i8, ptr %gmp3151, align 1, !alias.scope !4, !noalias !3
  %c3153 = zext i8 %gml3152 to i64
  %wp3154 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3153, ptr %wp3154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3b4 word 0x385fe222
  %r3155.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3155 = load i64, ptr %r3155.p, align 8, !alias.scope !3, !noalias !4
  %t3156 = add i64 %r3155, -2
  %gmp3157 = inttoptr i64 %t3156 to ptr
  %gml3158 = load i8, ptr %gmp3157, align 1, !alias.scope !4, !noalias !3
  %c3159 = zext i8 %gml3158 to i64
  %wp3160 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3159, ptr %wp3160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3b8 word 0x39000240
  %r3161.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3161 = load i64, ptr %r3161.p, align 8, !alias.scope !3, !noalias !4
  %r3162.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3162 = load i64, ptr %r3162.p, align 8, !alias.scope !3, !noalias !4
  %c3163 = trunc i64 %r3162 to i32
  %c3164 = trunc i32 %c3163 to i8
  %gmp3165 = inttoptr i64 %r3161 to ptr
  store i8 %c3164, ptr %gmp3165, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3bc word 0x39000a41
  %r3166.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3166 = load i64, ptr %r3166.p, align 8, !alias.scope !3, !noalias !4
  %t3167 = add i64 %r3166, 2
  %r3168.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3168 = load i64, ptr %r3168.p, align 8, !alias.scope !3, !noalias !4
  %c3169 = trunc i64 %r3168 to i32
  %c3170 = trunc i32 %c3169 to i8
  %gmp3171 = inttoptr i64 %t3167 to ptr
  store i8 %c3170, ptr %gmp3171, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3c0 word 0x3900064c
  %r3172.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3172 = load i64, ptr %r3172.p, align 8, !alias.scope !3, !noalias !4
  %t3173 = add i64 %r3172, 1
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %c3175 = trunc i64 %r3174 to i32
  %c3176 = trunc i32 %c3175 to i8
  %gmp3177 = inttoptr i64 %t3173 to ptr
  store i8 %c3176, ptr %gmp3177, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3c4 word 0x39000e42
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %t3179 = add i64 %r3178, 3
  %r3180.p = getelementptr inbounds i8, ptr %c, i64 16
  %r3180 = load i64, ptr %r3180.p, align 8, !alias.scope !3, !noalias !4
  %c3181 = trunc i64 %r3180 to i32
  %c3182 = trunc i32 %c3181 to i8
  %gmp3183 = inttoptr i64 %t3179 to ptr
  store i8 %c3182, ptr %gmp3183, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3c8 word 0x785ff22c
  %r3184.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3184 = load i64, ptr %r3184.p, align 8, !alias.scope !3, !noalias !4
  %t3185 = add i64 %r3184, -1
  %gmp3186 = inttoptr i64 %t3185 to ptr
  %gml3187 = load i16, ptr %gmp3186, align 1, !alias.scope !4, !noalias !3
  %c3188 = zext i16 %gml3187 to i64
  %wp3189 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3188, ptr %wp3189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3cc word 0x79000a4c
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %t3191 = add i64 %r3190, 4
  %r3192.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3192 = load i64, ptr %r3192.p, align 8, !alias.scope !3, !noalias !4
  %c3193 = trunc i64 %r3192 to i32
  %c3194 = trunc i32 %c3193 to i16
  %gmp3195 = inttoptr i64 %t3191 to ptr
  store i16 %c3194, ptr %gmp3195, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3d0 word 0x5280002c
  %c3196 = zext i32 1 to i64
  %wp3197 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3196, ptr %wp3197, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc3d4
L_8000dc3d4:
  ; @pc 0x8000dc3d4 word 0x910019ce
  %r3198.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3198 = load i64, ptr %r3198.p, align 8, !alias.scope !3, !noalias !4
  %t3199 = add i64 %r3198, 6
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3199, ptr %wp3200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3d8 word 0xf100c1df
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = sub i64 %r3201, 48
  %fn3203 = icmp slt i64 %t3202, 0
  %fz3204 = icmp eq i64 %t3202, 0
  %fc3205 = icmp uge i64 %r3201, 48
  %fx13206 = xor i64 %r3201, 48
  %fx23207 = xor i64 %r3201, %t3202
  %fva3208 = and i64 %fx13206, %fx23207
  %fv3209 = icmp slt i64 %fva3208, 0
  %nz3210 = zext i1 %fn3203 to i64
  %zz3211 = zext i1 %fz3204 to i64
  %cz3212 = zext i1 %fc3205 to i64
  %vz3213 = zext i1 %fv3209 to i64
  %ns3214 = shl i64 %nz3210, 31
  %zs3215 = shl i64 %zz3211, 30
  %cs3216 = shl i64 %cz3212, 29
  %vs3217 = shl i64 %vz3213, 28
  %nzor3218 = or i64 %ns3214, %zs3215
  %cvor3219 = or i64 %cs3216, %vs3217
  %nzcv3220 = or i64 %nzor3218, %cvor3219
  %wp3221 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3220, ptr %wp3221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3dc word 0x54fffd61
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %fsh3224 = lshr i64 %r3222, 30
  %ftr3225 = trunc i64 %fsh3224 to i1
  %cond3223 = xor i1 %ftr3225, true
  br i1 %cond3223, label %L_8000dc388, label %L_8000dc3e0_ft
L_8000dc3e4:
  ; @pc 0x8000dc3e4 word 0x9342fd8c
  %r3226.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3226 = load i64, ptr %r3226.p, align 8, !alias.scope !3, !noalias !4
  %ror3227 = call i64 @llvm.fshr.i64(i64 %r3226, i64 %r3226, i64 2)
  %t3228 = lshr i64 %r3226, 63
  %t3229 = and i64 %t3228, 1
  %t3230 = sub i64 0, %t3229
  %t3231 = and i64 %t3230, -4611686018427387904
  %t3232 = and i64 %ror3227, 4611686018427387903
  %t3233 = or i64 %t3231, %t3232
  %wp3234 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3233, ptr %wp3234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3e8 word 0xb260058c
  %r3235.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3235 = load i64, ptr %r3235.p, align 8, !alias.scope !3, !noalias !4
  %t3236 = or i64 %r3235, 12884901888
  %wp3237 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3236, ptr %wp3237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3ec word 0xb50067e9
  %r3238.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3238 = load i64, ptr %r3238.p, align 8, !alias.scope !3, !noalias !4
  %cmp3239 = icmp ne i64 %r3238, 0
  br i1 %cmp3239, label %L_8000dd0e8, label %L_8000dc3f0_ft
L_8000dc400:
  ; @pc 0x8000dc400 word 0xf9402ec9
  %r3252.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3252 = load i64, ptr %r3252.p, align 8, !alias.scope !3, !noalias !4
  %t3253 = add i64 %r3252, 88
  %gmp3254 = inttoptr i64 %t3253 to ptr
  %gml3255 = load i64, ptr %gmp3254, align 1, !alias.scope !4, !noalias !3
  %wp3256 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3255, ptr %wp3256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc404 word 0x910061b7
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = add i64 %r3257, 24
  %wp3259 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3258, ptr %wp3259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc408 word 0x8b0b0129
  %r3260.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3260 = load i64, ptr %r3260.p, align 8, !alias.scope !3, !noalias !4
  %r3261.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3261 = load i64, ptr %r3261.p, align 8, !alias.scope !3, !noalias !4
  %t3262 = add i64 %r3260, %r3261
  %wp3263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3262, ptr %wp3263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc40c word 0xf9401ace
  %r3264.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3264 = load i64, ptr %r3264.p, align 8, !alias.scope !3, !noalias !4
  %t3265 = add i64 %r3264, 48
  %gmp3266 = inttoptr i64 %t3265 to ptr
  %gml3267 = load i64, ptr %gmp3266, align 1, !alias.scope !4, !noalias !3
  %wp3268 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3267, ptr %wp3268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc410 word 0xf90009ac
  %r3269.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3269 = load i64, ptr %r3269.p, align 8, !alias.scope !3, !noalias !4
  %t3270 = add i64 %r3269, 16
  %r3271.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3271 = load i64, ptr %r3271.p, align 8, !alias.scope !3, !noalias !4
  %gmp3272 = inttoptr i64 %t3270 to ptr
  store i64 %r3271, ptr %gmp3272, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc414 word 0xcb0e0129
  %r3273.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3273 = load i64, ptr %r3273.p, align 8, !alias.scope !3, !noalias !4
  %r3274.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3274 = load i64, ptr %r3274.p, align 8, !alias.scope !3, !noalias !4
  %t3275 = sub i64 %r3273, %r3274
  %wp3276 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3275, ptr %wp3276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc418 word 0xa9002da9
  %r3277.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3277 = load i64, ptr %r3277.p, align 8, !alias.scope !3, !noalias !4
  %t3278 = add i64 %r3277, 8
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %gmp3280 = inttoptr i64 %r3277 to ptr
  store i64 %r3279, ptr %gmp3280, align 1, !alias.scope !4, !noalias !3
  %r3281.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3281 = load i64, ptr %r3281.p, align 8, !alias.scope !3, !noalias !4
  %gmp3282 = inttoptr i64 %t3278 to ptr
  store i64 %r3281, ptr %gmp3282, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc41c word 0xd2c0002b
  %wp3283 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 4294967296, ptr %wp3283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc420 word 0xf9400329
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %gmp3285 = inttoptr i64 %r3284 to ptr
  %gml3286 = load i64, ptr %gmp3285, align 1, !alias.scope !4, !noalias !3
  %wp3287 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3286, ptr %wp3287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc424 word 0x8b0b0129
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %t3290 = add i64 %r3288, %r3289
  %wp3291 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3290, ptr %wp3291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc428 word 0xf9000329
  %r3292.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3292 = load i64, ptr %r3292.p, align 8, !alias.scope !3, !noalias !4
  %r3293.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3293 = load i64, ptr %r3293.p, align 8, !alias.scope !3, !noalias !4
  %gmp3294 = inttoptr i64 %r3292 to ptr
  store i64 %r3293, ptr %gmp3294, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc42c word 0xf90022ca
  %r3295.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3295 = load i64, ptr %r3295.p, align 8, !alias.scope !3, !noalias !4
  %t3296 = add i64 %r3295, 64
  %r3297.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3297 = load i64, ptr %r3297.p, align 8, !alias.scope !3, !noalias !4
  %gmp3298 = inttoptr i64 %t3296 to ptr
  store i64 %r3297, ptr %gmp3298, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc430 word 0x17fffe37
  br label %L_8000dbd0c
L_8000dc434:
  ; @pc 0x8000dc434 word 0x5280006b
  %c3299 = zext i32 3 to i64
  %wp3300 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3299, ptr %wp3300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc438 word 0x17fffded
  br label %L_8000dbbec
L_8000dc43c:
  ; @pc 0x8000dc43c word 0xf9400309
  %r3301.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3301 = load i64, ptr %r3301.p, align 8, !alias.scope !3, !noalias !4
  %gmp3302 = inttoptr i64 %r3301 to ptr
  %gml3303 = load i64, ptr %gmp3302, align 1, !alias.scope !4, !noalias !3
  %wp3304 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3303, ptr %wp3304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc440 word 0xb940826a
  %r3305.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3305 = load i64, ptr %r3305.p, align 8, !alias.scope !3, !noalias !4
  %t3306 = add i64 %r3305, 128
  %gmp3307 = inttoptr i64 %t3306 to ptr
  %gml3308 = load i32, ptr %gmp3307, align 1, !alias.scope !4, !noalias !3
  %c3309 = zext i32 %gml3308 to i64
  %wp3310 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3309, ptr %wp3310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc444 word 0xb9400929
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %t3312 = add i64 %r3311, 8
  %gmp3313 = inttoptr i64 %t3312 to ptr
  %gml3314 = load i32, ptr %gmp3313, align 1, !alias.scope !4, !noalias !3
  %c3315 = zext i32 %gml3314 to i64
  %wp3316 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3315, ptr %wp3316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc448 word 0x6b09015f
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %c3318 = trunc i64 %r3317 to i32
  %r3319.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3319 = load i64, ptr %r3319.p, align 8, !alias.scope !3, !noalias !4
  %c3320 = trunc i64 %r3319 to i32
  %t3321 = sub i32 %c3318, %c3320
  %fn3322 = icmp slt i32 %t3321, 0
  %fz3323 = icmp eq i32 %t3321, 0
  %fc3324 = icmp uge i32 %c3318, %c3320
  %fx13325 = xor i32 %c3318, %c3320
  %fx23326 = xor i32 %c3318, %t3321
  %fva3327 = and i32 %fx13325, %fx23326
  %fv3328 = icmp slt i32 %fva3327, 0
  %nz3329 = zext i1 %fn3322 to i64
  %zz3330 = zext i1 %fz3323 to i64
  %cz3331 = zext i1 %fc3324 to i64
  %vz3332 = zext i1 %fv3328 to i64
  %ns3333 = shl i64 %nz3329, 31
  %zs3334 = shl i64 %zz3330, 30
  %cs3335 = shl i64 %cz3331, 29
  %vs3336 = shl i64 %vz3332, 28
  %nzor3337 = or i64 %ns3333, %zs3334
  %cvor3338 = or i64 %cs3335, %vs3336
  %nzcv3339 = or i64 %nzor3337, %cvor3338
  %wp3340 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3339, ptr %wp3340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc44c word 0x1a9f07ed
  %t3341 = add i32 0, 1
  %r3342.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3342 = load i64, ptr %r3342.p, align 8, !alias.scope !3, !noalias !4
  %fsh3344 = lshr i64 %r3342, 30
  %cond3343 = trunc i64 %fsh3344 to i1
  %sel3345 = select i1 %cond3343, i32 0, i32 %t3341
  %c3346 = zext i32 %sel3345 to i64
  %wp3347 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3346, ptr %wp3347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc450 word 0x54000040
  %r3348.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3348 = load i64, ptr %r3348.p, align 8, !alias.scope !3, !noalias !4
  %fsh3350 = lshr i64 %r3348, 30
  %cond3349 = trunc i64 %fsh3350 to i1
  br i1 %cond3349, label %L_8000dc458, label %L_8000dc454_ft
L_8000dc458:
  ; @pc 0x8000dc458 word 0x7940330b
  %r3356.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3356 = load i64, ptr %r3356.p, align 8, !alias.scope !3, !noalias !4
  %t3357 = add i64 %r3356, 24
  %gmp3358 = inttoptr i64 %t3357 to ptr
  %gml3359 = load i16, ptr %gmp3358, align 1, !alias.scope !4, !noalias !3
  %c3360 = zext i16 %gml3359 to i64
  %wp3361 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3360, ptr %wp3361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc45c word 0x363064cb
  %r3362.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3362 = load i64, ptr %r3362.p, align 8, !alias.scope !3, !noalias !4
  %t3363 = and i64 %r3362, 64
  %cmp3364 = icmp eq i64 %t3363, 0
  br i1 %cmp3364, label %L_8000dd0f4, label %L_8000dc460_ft
L_8000dc480:
  ; @pc 0x8000dc480 word 0x6b09015f
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %c3389 = trunc i64 %r3388 to i32
  %r3390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3390 = load i64, ptr %r3390.p, align 8, !alias.scope !3, !noalias !4
  %c3391 = trunc i64 %r3390 to i32
  %t3392 = sub i32 %c3389, %c3391
  %fn3393 = icmp slt i32 %t3392, 0
  %fz3394 = icmp eq i32 %t3392, 0
  %fc3395 = icmp uge i32 %c3389, %c3391
  %fx13396 = xor i32 %c3389, %c3391
  %fx23397 = xor i32 %c3389, %t3392
  %fva3398 = and i32 %fx13396, %fx23397
  %fv3399 = icmp slt i32 %fva3398, 0
  %nz3400 = zext i1 %fn3393 to i64
  %zz3401 = zext i1 %fz3394 to i64
  %cz3402 = zext i1 %fc3395 to i64
  %vz3403 = zext i1 %fv3399 to i64
  %ns3404 = shl i64 %nz3400, 31
  %zs3405 = shl i64 %zz3401, 30
  %cs3406 = shl i64 %cz3402, 29
  %vs3407 = shl i64 %vz3403, 28
  %nzor3408 = or i64 %ns3404, %zs3405
  %cvor3409 = or i64 %cs3406, %vs3407
  %nzcv3410 = or i64 %nzor3408, %cvor3409
  %wp3411 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3410, ptr %wp3411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc484 word 0x54000640
  %r3412.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3412 = load i64, ptr %r3412.p, align 8, !alias.scope !3, !noalias !4
  %fsh3414 = lshr i64 %r3412, 30
  %cond3413 = trunc i64 %fsh3414 to i1
  br i1 %cond3413, label %L_8000dc54c, label %L_8000dc488_ft
L_8000dc4f8:
  ; @pc 0x8000dc4f8 word 0x52802000
  %c3620 = zext i32 256 to i64
  %wp3621 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c3620, ptr %wp3621, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc4fc
L_8000dc4fc:
  ; @pc 0x8000dc4fc word 0x310006ff
  %r3622.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3622 = load i64, ptr %r3622.p, align 8, !alias.scope !3, !noalias !4
  %c3623 = trunc i64 %r3622 to i32
  %t3624 = add i32 %c3623, 1
  %fn3625 = icmp slt i32 %t3624, 0
  %fz3626 = icmp eq i32 %t3624, 0
  %fc3627 = icmp ult i32 %t3624, %c3623
  %fx13628 = xor i32 %c3623, %t3624
  %fx23629 = xor i32 1, %t3624
  %fva3630 = and i32 %fx13628, %fx23629
  %fv3631 = icmp slt i32 %fva3630, 0
  %nz3632 = zext i1 %fn3625 to i64
  %zz3633 = zext i1 %fz3626 to i64
  %cz3634 = zext i1 %fc3627 to i64
  %vz3635 = zext i1 %fv3631 to i64
  %ns3636 = shl i64 %nz3632, 31
  %zs3637 = shl i64 %zz3633, 30
  %cs3638 = shl i64 %cz3634, 29
  %vs3639 = shl i64 %vz3635, 28
  %nzor3640 = or i64 %ns3636, %zs3637
  %cvor3641 = or i64 %cs3638, %vs3639
  %nzcv3642 = or i64 %nzor3640, %cvor3641
  %wp3643 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3642, ptr %wp3643, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc500 word 0x540060c1
  %r3644.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3644 = load i64, ptr %r3644.p, align 8, !alias.scope !3, !noalias !4
  %fsh3646 = lshr i64 %r3644, 30
  %ftr3647 = trunc i64 %fsh3646 to i1
  %cond3645 = xor i1 %ftr3647, true
  br i1 %cond3645, label %L_8000dd118, label %L_8000dc504
L_8000dc504:
  ; @pc 0x8000dc504 word 0xb9405e68
  %r3648.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3648 = load i64, ptr %r3648.p, align 8, !alias.scope !3, !noalias !4
  %t3649 = add i64 %r3648, 92
  %gmp3650 = inttoptr i64 %t3649 to ptr
  %gml3651 = load i32, ptr %gmp3650, align 1, !alias.scope !4, !noalias !3
  %c3652 = zext i32 %gml3651 to i64
  %wp3653 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3652, ptr %wp3653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc508 word 0x6b08015f
  %r3654.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3654 = load i64, ptr %r3654.p, align 8, !alias.scope !3, !noalias !4
  %c3655 = trunc i64 %r3654 to i32
  %r3656.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3656 = load i64, ptr %r3656.p, align 8, !alias.scope !3, !noalias !4
  %c3657 = trunc i64 %r3656 to i32
  %t3658 = sub i32 %c3655, %c3657
  %fn3659 = icmp slt i32 %t3658, 0
  %fz3660 = icmp eq i32 %t3658, 0
  %fc3661 = icmp uge i32 %c3655, %c3657
  %fx13662 = xor i32 %c3655, %c3657
  %fx23663 = xor i32 %c3655, %t3658
  %fva3664 = and i32 %fx13662, %fx23663
  %fv3665 = icmp slt i32 %fva3664, 0
  %nz3666 = zext i1 %fn3659 to i64
  %zz3667 = zext i1 %fz3660 to i64
  %cz3668 = zext i1 %fc3661 to i64
  %vz3669 = zext i1 %fv3665 to i64
  %ns3670 = shl i64 %nz3666, 31
  %zs3671 = shl i64 %zz3667, 30
  %cs3672 = shl i64 %cz3668, 29
  %vs3673 = shl i64 %vz3669, 28
  %nzor3674 = or i64 %ns3670, %zs3671
  %cvor3675 = or i64 %cs3672, %vs3673
  %nzcv3676 = or i64 %nzor3674, %cvor3675
  %wp3677 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3676, ptr %wp3677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc50c word 0x54000120
  %r3678.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3678 = load i64, ptr %r3678.p, align 8, !alias.scope !3, !noalias !4
  %fsh3680 = lshr i64 %r3678, 30
  %cond3679 = trunc i64 %fsh3680 to i1
  br i1 %cond3679, label %L_8000dc530, label %L_8000dc510_ft
L_8000dc530:
  ; @pc 0x8000dc530 word 0xb9406268
  %r3712.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3712 = load i64, ptr %r3712.p, align 8, !alias.scope !3, !noalias !4
  %t3713 = add i64 %r3712, 96
  %gmp3714 = inttoptr i64 %t3713 to ptr
  %gml3715 = load i32, ptr %gmp3714, align 1, !alias.scope !4, !noalias !3
  %c3716 = zext i32 %gml3715 to i64
  %wp3717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3716, ptr %wp3717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc534 word 0x6b08017f
  %r3718.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3718 = load i64, ptr %r3718.p, align 8, !alias.scope !3, !noalias !4
  %c3719 = trunc i64 %r3718 to i32
  %r3720.p = getelementptr inbounds i8, ptr %c, i64 64
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
  ; @pc 0x8000dc538 word 0xf9401bf8
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %t3743 = add i64 %r3742, 48
  %gmp3744 = inttoptr i64 %t3743 to ptr
  %gml3745 = load i64, ptr %gmp3744, align 1, !alias.scope !4, !noalias !3
  %wp3746 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml3745, ptr %wp3746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc53c word 0x54000080
  %r3747.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3747 = load i64, ptr %r3747.p, align 8, !alias.scope !3, !noalias !4
  %fsh3749 = lshr i64 %r3747, 30
  %cond3748 = trunc i64 %fsh3749 to i1
  br i1 %cond3748, label %L_8000dc54c, label %L_8000dc540_ft
L_8000dc54c:
  ; @pc 0x8000dc54c word 0x79408268
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3763 = load i64, ptr %r3763.p, align 8, !alias.scope !3, !noalias !4
  %t3764 = add i64 %r3763, 64
  %gmp3765 = inttoptr i64 %t3764 to ptr
  %gml3766 = load i16, ptr %gmp3765, align 1, !alias.scope !4, !noalias !3
  %c3767 = zext i16 %gml3766 to i64
  %wp3768 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3767, ptr %wp3768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc550 word 0x79403309
  %r3769.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3769 = load i64, ptr %r3769.p, align 8, !alias.scope !3, !noalias !4
  %t3770 = add i64 %r3769, 24
  %gmp3771 = inttoptr i64 %t3770 to ptr
  %gml3772 = load i16, ptr %gmp3771, align 1, !alias.scope !4, !noalias !3
  %c3773 = zext i16 %gml3772 to i64
  %wp3774 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3773, ptr %wp3774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc554 word 0x36780848
  %r3775.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3775 = load i64, ptr %r3775.p, align 8, !alias.scope !3, !noalias !4
  %t3776 = and i64 %r3775, 32768
  %cmp3777 = icmp eq i64 %t3776, 0
  br i1 %cmp3777, label %L_8000dc65c, label %L_8000dc558
L_8000dc558:
  ; @pc 0x8000dc558 word 0x36380829
  %r3778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3778 = load i64, ptr %r3778.p, align 8, !alias.scope !3, !noalias !4
  %t3779 = and i64 %r3778, 128
  %cmp3780 = icmp eq i64 %t3779, 0
  br i1 %cmp3780, label %L_8000dc65c, label %L_8000dc55c
L_8000dc55c:
  ; @pc 0x8000dc55c word 0x3500092d
  %r3781.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3781 = load i64, ptr %r3781.p, align 8, !alias.scope !3, !noalias !4
  %c3782 = trunc i64 %r3781 to i32
  %cmp3783 = icmp ne i32 %c3782, 0
  br i1 %cmp3783, label %L_8000dc680, label %L_8000dc560
L_8000dc560:
  ; @pc 0x8000dc560 word 0xf9400b08
  %r3784.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3784 = load i64, ptr %r3784.p, align 8, !alias.scope !3, !noalias !4
  %t3785 = add i64 %r3784, 16
  %gmp3786 = inttoptr i64 %t3785 to ptr
  %gml3787 = load i64, ptr %gmp3786, align 1, !alias.scope !4, !noalias !3
  %wp3788 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3787, ptr %wp3788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc564 word 0xb9407269
  %r3789.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3789 = load i64, ptr %r3789.p, align 8, !alias.scope !3, !noalias !4
  %t3790 = add i64 %r3789, 112
  %gmp3791 = inttoptr i64 %t3790 to ptr
  %gml3792 = load i32, ptr %gmp3791, align 1, !alias.scope !4, !noalias !3
  %c3793 = zext i32 %gml3792 to i64
  %wp3794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3793, ptr %wp3794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc568 word 0xb9400908
  %r3795.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3795 = load i64, ptr %r3795.p, align 8, !alias.scope !3, !noalias !4
  %t3796 = add i64 %r3795, 8
  %gmp3797 = inttoptr i64 %t3796 to ptr
  %gml3798 = load i32, ptr %gmp3797, align 1, !alias.scope !4, !noalias !3
  %c3799 = zext i32 %gml3798 to i64
  %wp3800 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3799, ptr %wp3800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc56c word 0x6b08013f
  %r3801.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3801 = load i64, ptr %r3801.p, align 8, !alias.scope !3, !noalias !4
  %c3802 = trunc i64 %r3801 to i32
  %r3803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3803 = load i64, ptr %r3803.p, align 8, !alias.scope !3, !noalias !4
  %c3804 = trunc i64 %r3803 to i32
  %t3805 = sub i32 %c3802, %c3804
  %fn3806 = icmp slt i32 %t3805, 0
  %fz3807 = icmp eq i32 %t3805, 0
  %fc3808 = icmp uge i32 %c3802, %c3804
  %fx13809 = xor i32 %c3802, %c3804
  %fx23810 = xor i32 %c3802, %t3805
  %fva3811 = and i32 %fx13809, %fx23810
  %fv3812 = icmp slt i32 %fva3811, 0
  %nz3813 = zext i1 %fn3806 to i64
  %zz3814 = zext i1 %fz3807 to i64
  %cz3815 = zext i1 %fc3808 to i64
  %vz3816 = zext i1 %fv3812 to i64
  %ns3817 = shl i64 %nz3813, 31
  %zs3818 = shl i64 %zz3814, 30
  %cs3819 = shl i64 %cz3815, 29
  %vs3820 = shl i64 %vz3816, 28
  %nzor3821 = or i64 %ns3817, %zs3818
  %cvor3822 = or i64 %cs3819, %vs3820
  %nzcv3823 = or i64 %nzor3821, %cvor3822
  %wp3824 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3823, ptr %wp3824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc570 word 0x540031a1
  %r3825.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3825 = load i64, ptr %r3825.p, align 8, !alias.scope !3, !noalias !4
  %fsh3827 = lshr i64 %r3825, 30
  %ftr3828 = trunc i64 %fsh3827 to i1
  %cond3826 = xor i1 %ftr3828, true
  br i1 %cond3826, label %L_8000dcba4, label %L_8000dc574
L_8000dc574:
  ; @pc 0x8000dc574 word 0x39010e7f
  %r3829.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3829 = load i64, ptr %r3829.p, align 8, !alias.scope !3, !noalias !4
  %t3830 = add i64 %r3829, 67
  %c3831 = trunc i32 0 to i8
  %gmp3832 = inttoptr i64 %t3830 to ptr
  store i8 %c3831, ptr %gmp3832, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc578 word 0x17fffdb6
  br label %L_8000dbc50
L_8000dc57c:
  ; @pc 0x8000dc57c word 0x9001c41b
  %wp3833 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34419884032, ptr %wp3833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc580 word 0x9001c418
  %wp3834 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419884032, ptr %wp3834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc584 word 0xf945137b
  %r3835.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3835 = load i64, ptr %r3835.p, align 8, !alias.scope !3, !noalias !4
  %t3836 = add i64 %r3835, 2592
  %gmp3837 = inttoptr i64 %t3836 to ptr
  %gml3838 = load i64, ptr %gmp3837, align 1, !alias.scope !4, !noalias !3
  %wp3839 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml3838, ptr %wp3839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc588 word 0x9001c419
  %wp3840 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 34419884032, ptr %wp3840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc58c word 0xf9451718
  %r3841.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3841 = load i64, ptr %r3841.p, align 8, !alias.scope !3, !noalias !4
  %t3842 = add i64 %r3841, 2600
  %gmp3843 = inttoptr i64 %t3842 to ptr
  %gml3844 = load i64, ptr %gmp3843, align 1, !alias.scope !4, !noalias !3
  %wp3845 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml3844, ptr %wp3845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc590 word 0x2a1f03f6
  %t3846 = or i32 0, 0
  %c3847 = zext i32 %t3846 to i64
  %wp3848 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3847, ptr %wp3848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc594 word 0xf940bb39
  %r3849.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3849 = load i64, ptr %r3849.p, align 8, !alias.scope !3, !noalias !4
  %t3850 = add i64 %r3849, 368
  %gmp3851 = inttoptr i64 %t3850 to ptr
  %gml3852 = load i64, ptr %gmp3851, align 1, !alias.scope !4, !noalias !3
  %wp3853 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml3852, ptr %wp3853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc598 word 0xaa1f03fa
  %t3854 = or i64 0, 0
  %wp3855 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3854, ptr %wp3855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc59c word 0x9105627c
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %t3857 = add i64 %r3856, 344
  %wp3858 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3857, ptr %wp3858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5a0 word 0x528000d5
  %c3859 = zext i32 6 to i64
  %wp3860 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c3859, ptr %wp3860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5a4 word 0x14000007
  br label %L_8000dc5c0
L_8000dc5b0:
  ; @pc 0x8000dc5b0 word 0x91000756
  %r3861.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3861 = load i64, ptr %r3861.p, align 8, !alias.scope !3, !noalias !4
  %t3862 = add i64 %r3861, 1
  %wp3863 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3862, ptr %wp3863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5b4 word 0x92407eda
  %r3864.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3864 = load i64, ptr %r3864.p, align 8, !alias.scope !3, !noalias !4
  %t3865 = and i64 %r3864, 4294967295
  %wp3866 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3865, ptr %wp3866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5b8 word 0x710022df
  %r3867.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3867 = load i64, ptr %r3867.p, align 8, !alias.scope !3, !noalias !4
  %c3868 = trunc i64 %r3867 to i32
  %t3869 = sub i32 %c3868, 8
  %fn3870 = icmp slt i32 %t3869, 0
  %fz3871 = icmp eq i32 %t3869, 0
  %fc3872 = icmp uge i32 %c3868, 8
  %fx13873 = xor i32 %c3868, 8
  %fx23874 = xor i32 %c3868, %t3869
  %fva3875 = and i32 %fx13873, %fx23874
  %fv3876 = icmp slt i32 %fva3875, 0
  %nz3877 = zext i1 %fn3870 to i64
  %zz3878 = zext i1 %fz3871 to i64
  %cz3879 = zext i1 %fc3872 to i64
  %vz3880 = zext i1 %fv3876 to i64
  %ns3881 = shl i64 %nz3877, 31
  %zs3882 = shl i64 %zz3878, 30
  %cs3883 = shl i64 %cz3879, 29
  %vs3884 = shl i64 %vz3880, 28
  %nzor3885 = or i64 %ns3881, %zs3882
  %cvor3886 = or i64 %cs3883, %vs3884
  %nzcv3887 = or i64 %nzor3885, %cvor3886
  %wp3888 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3887, ptr %wp3888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5bc word 0x54ffcd20
  %r3889.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3889 = load i64, ptr %r3889.p, align 8, !alias.scope !3, !noalias !4
  %fsh3891 = lshr i64 %r3889, 30
  %cond3890 = trunc i64 %fsh3891 to i1
  br i1 %cond3890, label %L_8000dbf60, label %L_8000dc5c0
L_8000dc5c0:
  ; @pc 0x8000dc5c0 word 0xb9413668
  %r3892.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3892 = load i64, ptr %r3892.p, align 8, !alias.scope !3, !noalias !4
  %t3893 = add i64 %r3892, 308
  %gmp3894 = inttoptr i64 %t3893 to ptr
  %gml3895 = load i32, ptr %gmp3894, align 1, !alias.scope !4, !noalias !3
  %c3896 = zext i32 %gml3895 to i64
  %wp3897 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3896, ptr %wp3897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5c4 word 0x1ad62508
  %r3898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3898 = load i64, ptr %r3898.p, align 8, !alias.scope !3, !noalias !4
  %c3899 = trunc i64 %r3898 to i32
  %r3900.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3900 = load i64, ptr %r3900.p, align 8, !alias.scope !3, !noalias !4
  %c3901 = trunc i64 %r3900 to i32
  %t3902 = and i32 %c3901, 31
  %t3903 = lshr i32 %c3899, %t3902
  %c3904 = zext i32 %t3903 to i64
  %wp3905 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3904, ptr %wp3905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5c8 word 0x3607ff48
  %r3906.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3906 = load i64, ptr %r3906.p, align 8, !alias.scope !3, !noalias !4
  %t3907 = and i64 %r3906, 1
  %cmp3908 = icmp eq i64 %t3907, 0
  br i1 %cmp3908, label %L_8000dc5b0, label %L_8000dc5cc_ft
L_8000dc648:
  ; @pc 0x8000dc648 word 0x361fe3ea
  %r4031.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4031 = load i64, ptr %r4031.p, align 8, !alias.scope !3, !noalias !4
  %t4032 = and i64 %r4031, 8
  %cmp4033 = icmp eq i64 %t4032, 0
  br i1 %cmp4033, label %L_8000dc2c4, label %L_8000dc64c_ft
L_8000dc65c:
  ; @pc 0x8000dc65c word 0x53077d29
  %r4042.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4042 = load i64, ptr %r4042.p, align 8, !alias.scope !3, !noalias !4
  %c4043 = trunc i64 %r4042 to i32
  %ror4044 = call i32 @llvm.fshr.i32(i32 %c4043, i32 %c4043, i32 7)
  %t4045 = and i32 %ror4044, 33554431
  %c4046 = zext i32 %t4045 to i64
  %wp4047 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4046, ptr %wp4047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc660 word 0x33110128
  %r4048.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4048 = load i64, ptr %r4048.p, align 8, !alias.scope !3, !noalias !4
  %c4049 = trunc i64 %r4048 to i32
  %ror4050 = call i32 @llvm.fshr.i32(i32 %c4049, i32 %c4049, i32 17)
  %r4051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4051 = load i64, ptr %r4051.p, align 8, !alias.scope !3, !noalias !4
  %c4052 = trunc i64 %r4051 to i32
  %t4053 = and i32 %ror4050, 32768
  %t4054 = and i32 %c4052, -32769
  %t4055 = or i32 %t4054, %t4053
  %t4056 = and i32 %t4055, 65535
  %t4057 = and i32 %c4052, -65536
  %t4058 = or i32 %t4057, %t4056
  %c4059 = zext i32 %t4058 to i64
  %wp4060 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4059, ptr %wp4060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc664 word 0xb9409269
  %r4061.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4061 = load i64, ptr %r4061.p, align 8, !alias.scope !3, !noalias !4
  %t4062 = add i64 %r4061, 144
  %gmp4063 = inttoptr i64 %t4062 to ptr
  %gml4064 = load i32, ptr %gmp4063, align 1, !alias.scope !4, !noalias !3
  %c4065 = zext i32 %gml4064 to i64
  %wp4066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4065, ptr %wp4066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc668 word 0x79008268
  %r4067.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4067 = load i64, ptr %r4067.p, align 8, !alias.scope !3, !noalias !4
  %t4068 = add i64 %r4067, 64
  %r4069.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4069 = load i64, ptr %r4069.p, align 8, !alias.scope !3, !noalias !4
  %c4070 = trunc i64 %r4069 to i32
  %c4071 = trunc i32 %c4070 to i16
  %gmp4072 = inttoptr i64 %t4068 to ptr
  store i16 %c4071, ptr %gmp4072, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc66c word 0xf9400708
  %r4073.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4073 = load i64, ptr %r4073.p, align 8, !alias.scope !3, !noalias !4
  %t4074 = add i64 %r4073, 8
  %gmp4075 = inttoptr i64 %t4074 to ptr
  %gml4076 = load i64, ptr %gmp4075, align 1, !alias.scope !4, !noalias !3
  %wp4077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4076, ptr %wp4077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc670 word 0xb9400908
  %r4078.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4078 = load i64, ptr %r4078.p, align 8, !alias.scope !3, !noalias !4
  %t4079 = add i64 %r4078, 8
  %gmp4080 = inttoptr i64 %t4079 to ptr
  %gml4081 = load i32, ptr %gmp4080, align 1, !alias.scope !4, !noalias !3
  %c4082 = zext i32 %gml4081 to i64
  %wp4083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4082, ptr %wp4083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc674 word 0x6b08013f
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %c4085 = trunc i64 %r4084 to i32
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 64
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
  ; @pc 0x8000dc678 word 0x54fff720
  %r4108.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4108 = load i64, ptr %r4108.p, align 8, !alias.scope !3, !noalias !4
  %fsh4110 = lshr i64 %r4108, 30
  %cond4109 = trunc i64 %fsh4110 to i1
  br i1 %cond4109, label %L_8000dc55c, label %L_8000dc67c_ft
L_8000dc680:
  ; @pc 0x8000dc680 word 0x79017e7f
  %r4116.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4116 = load i64, ptr %r4116.p, align 8, !alias.scope !3, !noalias !4
  %t4117 = add i64 %r4116, 190
  %c4118 = trunc i32 0 to i16
  %gmp4119 = inttoptr i64 %t4117 to ptr
  store i16 %c4118, ptr %gmp4119, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc684 word 0x17ffffb7
  br label %L_8000dc560
L_8000dc688:
  ; @pc 0x8000dc688 word 0xb9001beb
  %r4120.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4120 = load i64, ptr %r4120.p, align 8, !alias.scope !3, !noalias !4
  %t4121 = add i64 %r4120, 24
  %r4122.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4122 = load i64, ptr %r4122.p, align 8, !alias.scope !3, !noalias !4
  %c4123 = trunc i64 %r4122 to i32
  %gmp4124 = inttoptr i64 %t4121 to ptr
  store i32 %c4123, ptr %gmp4124, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc68c word 0x53087d4b
  %r4125.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4125 = load i64, ptr %r4125.p, align 8, !alias.scope !3, !noalias !4
  %c4126 = trunc i64 %r4125 to i32
  %ror4127 = call i32 @llvm.fshr.i32(i32 %c4126, i32 %c4126, i32 8)
  %t4128 = and i32 %ror4127, 16777215
  %c4129 = zext i32 %t4128 to i64
  %wp4130 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4129, ptr %wp4130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc690 word 0x2a0a03fc
  %r4131.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4131 = load i64, ptr %r4131.p, align 8, !alias.scope !3, !noalias !4
  %c4132 = trunc i64 %r4131 to i32
  %t4133 = or i32 0, %c4132
  %c4134 = zext i32 %t4133 to i64
  %wp4135 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c4134, ptr %wp4135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc694 word 0xb90013eb
  %r4136.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4136 = load i64, ptr %r4136.p, align 8, !alias.scope !3, !noalias !4
  %t4137 = add i64 %r4136, 16
  %r4138.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4138 = load i64, ptr %r4138.p, align 8, !alias.scope !3, !noalias !4
  %c4139 = trunc i64 %r4138 to i32
  %gmp4140 = inttoptr i64 %t4137 to ptr
  store i32 %c4139, ptr %gmp4140, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc698 word 0x53083d4b
  %r4141.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4141 = load i64, ptr %r4141.p, align 8, !alias.scope !3, !noalias !4
  %c4142 = trunc i64 %r4141 to i32
  %ror4143 = call i32 @llvm.fshr.i32(i32 %c4142, i32 %c4142, i32 8)
  %t4144 = and i32 %ror4143, 255
  %c4145 = zext i32 %t4144 to i64
  %wp4146 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4145, ptr %wp4146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc69c word 0x39405108
  %r4147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4147 = load i64, ptr %r4147.p, align 8, !alias.scope !3, !noalias !4
  %t4148 = add i64 %r4147, 20
  %gmp4149 = inttoptr i64 %t4148 to ptr
  %gml4150 = load i8, ptr %gmp4149, align 1, !alias.scope !4, !noalias !3
  %c4151 = zext i8 %gml4150 to i64
  %wp4152 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4151, ptr %wp4152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6a0 word 0xb90017eb
  %r4153.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4153 = load i64, ptr %r4153.p, align 8, !alias.scope !3, !noalias !4
  %t4154 = add i64 %r4153, 20
  %r4155.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4155 = load i64, ptr %r4155.p, align 8, !alias.scope !3, !noalias !4
  %c4156 = trunc i64 %r4155 to i32
  %gmp4157 = inttoptr i64 %t4154 to ptr
  store i32 %c4156, ptr %gmp4157, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc6a4 word 0x53107d4b
  %r4158.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4158 = load i64, ptr %r4158.p, align 8, !alias.scope !3, !noalias !4
  %c4159 = trunc i64 %r4158 to i32
  %ror4160 = call i32 @llvm.fshr.i32(i32 %c4159, i32 %c4159, i32 16)
  %t4161 = and i32 %ror4160, 65535
  %c4162 = zext i32 %t4161 to i64
  %wp4163 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4162, ptr %wp4163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6a8 word 0xf9401276
  %r4164.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4164 = load i64, ptr %r4164.p, align 8, !alias.scope !3, !noalias !4
  %t4165 = add i64 %r4164, 32
  %gmp4166 = inttoptr i64 %t4165 to ptr
  %gml4167 = load i64, ptr %gmp4166, align 1, !alias.scope !4, !noalias !3
  %wp4168 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml4167, ptr %wp4168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6ac word 0xb9002beb
  %r4169.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4169 = load i64, ptr %r4169.p, align 8, !alias.scope !3, !noalias !4
  %t4170 = add i64 %r4169, 40
  %r4171.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4171 = load i64, ptr %r4171.p, align 8, !alias.scope !3, !noalias !4
  %c4172 = trunc i64 %r4171 to i32
  %gmp4173 = inttoptr i64 %t4170 to ptr
  store i32 %c4172, ptr %gmp4173, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc6b0 word 0x53105d4b
  %r4174.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4174 = load i64, ptr %r4174.p, align 8, !alias.scope !3, !noalias !4
  %c4175 = trunc i64 %r4174 to i32
  %ror4176 = call i32 @llvm.fshr.i32(i32 %c4175, i32 %c4175, i32 16)
  %t4177 = and i32 %ror4176, 255
  %c4178 = zext i32 %t4177 to i64
  %wp4179 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4178, ptr %wp4179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6b4 word 0x2a0d03fb
  %r4180.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4180 = load i64, ptr %r4180.p, align 8, !alias.scope !3, !noalias !4
  %c4181 = trunc i64 %r4180 to i32
  %t4182 = or i32 0, %c4181
  %c4183 = zext i32 %t4182 to i64
  %wp4184 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c4183, ptr %wp4184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6b8 word 0xb90023eb
  %r4185.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4185 = load i64, ptr %r4185.p, align 8, !alias.scope !3, !noalias !4
  %t4186 = add i64 %r4185, 32
  %r4187.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4187 = load i64, ptr %r4187.p, align 8, !alias.scope !3, !noalias !4
  %c4188 = trunc i64 %r4187 to i32
  %gmp4189 = inttoptr i64 %t4186 to ptr
  store i32 %c4188, ptr %gmp4189, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc6bc word 0x53187d4b
  %r4190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4190 = load i64, ptr %r4190.p, align 8, !alias.scope !3, !noalias !4
  %c4191 = trunc i64 %r4190 to i32
  %ror4192 = call i32 @llvm.fshr.i32(i32 %c4191, i32 %c4191, i32 24)
  %t4193 = and i32 %ror4192, 255
  %c4194 = zext i32 %t4193 to i64
  %wp4195 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4194, ptr %wp4195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6c0 word 0x7940112a
  %r4196.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4196 = load i64, ptr %r4196.p, align 8, !alias.scope !3, !noalias !4
  %t4197 = add i64 %r4196, 8
  %gmp4198 = inttoptr i64 %t4197 to ptr
  %gml4199 = load i16, ptr %gmp4198, align 1, !alias.scope !4, !noalias !3
  %c4200 = zext i16 %gml4199 to i64
  %wp4201 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4200, ptr %wp4201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6c4 word 0xf9402129
  %r4202.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4202 = load i64, ptr %r4202.p, align 8, !alias.scope !3, !noalias !4
  %t4203 = add i64 %r4202, 64
  %gmp4204 = inttoptr i64 %t4203 to ptr
  %gml4205 = load i64, ptr %gmp4204, align 1, !alias.scope !4, !noalias !3
  %wp4206 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4205, ptr %wp4206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6c8 word 0x92400508
  %r4207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4207 = load i64, ptr %r4207.p, align 8, !alias.scope !3, !noalias !4
  %t4208 = and i64 %r4207, 3
  %wp4209 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4208, ptr %wp4209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6cc word 0xb81d83ab
  %r4210.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4210 = load i64, ptr %r4210.p, align 8, !alias.scope !3, !noalias !4
  %t4211 = add i64 %r4210, -40
  %r4212.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4212 = load i64, ptr %r4212.p, align 8, !alias.scope !3, !noalias !4
  %c4213 = trunc i64 %r4212 to i32
  %gmp4214 = inttoptr i64 %t4211 to ptr
  store i32 %c4213, ptr %gmp4214, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc6d0 word 0xaa0503f9
  %r4215.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4215 = load i64, ptr %r4215.p, align 8, !alias.scope !3, !noalias !4
  %t4216 = or i64 0, %r4215
  %wp4217 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4216, ptr %wp4217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6d4 word 0xaa0403f8
  %r4218.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4218 = load i64, ptr %r4218.p, align 8, !alias.scope !3, !noalias !4
  %t4219 = or i64 0, %r4218
  %wp4220 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4219, ptr %wp4220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6d8 word 0x1200014a
  %r4221.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4221 = load i64, ptr %r4221.p, align 8, !alias.scope !3, !noalias !4
  %c4222 = trunc i64 %r4221 to i32
  %t4223 = and i32 %c4222, 1
  %c4224 = zext i32 %t4223 to i64
  %wp4225 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4224, ptr %wp4225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6dc word 0xf100013f
  %r4226.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4226 = load i64, ptr %r4226.p, align 8, !alias.scope !3, !noalias !4
  %t4227 = sub i64 %r4226, 0
  %fn4228 = icmp slt i64 %t4227, 0
  %fz4229 = icmp eq i64 %t4227, 0
  %fc4230 = icmp uge i64 %r4226, 0
  %fx14231 = xor i64 %r4226, 0
  %fx24232 = xor i64 %r4226, %t4227
  %fva4233 = and i64 %fx14231, %fx24232
  %fv4234 = icmp slt i64 %fva4233, 0
  %nz4235 = zext i1 %fn4228 to i64
  %zz4236 = zext i1 %fz4229 to i64
  %cz4237 = zext i1 %fc4230 to i64
  %vz4238 = zext i1 %fv4234 to i64
  %ns4239 = shl i64 %nz4235, 31
  %zs4240 = shl i64 %zz4236, 30
  %cs4241 = shl i64 %cz4237, 29
  %vs4242 = shl i64 %vz4238, 28
  %nzor4243 = or i64 %ns4239, %zs4240
  %cvor4244 = or i64 %cs4241, %vs4242
  %nzcv4245 = or i64 %nzor4243, %cvor4244
  %wp4246 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4245, ptr %wp4246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6e0 word 0x7a401944
  %r4247.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4247 = load i64, ptr %r4247.p, align 8, !alias.scope !3, !noalias !4
  %fsh4249 = lshr i64 %r4247, 30
  %ftr4250 = trunc i64 %fsh4249 to i1
  %cond4248 = xor i1 %ftr4250, true
  %r4251.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4251 = load i64, ptr %r4251.p, align 8, !alias.scope !3, !noalias !4
  %c4252 = trunc i64 %r4251 to i32
  %t4253 = sub i32 %c4252, 0
  %cmp4254 = icmp slt i32 %t4253, 0
  %cmp4255 = icmp eq i32 %t4253, 0
  %cmp4256 = icmp uge i32 %c4252, 0
  %t4257 = xor i32 %c4252, 0
  %t4258 = xor i32 %c4252, %t4253
  %t4259 = and i32 %t4257, %t4258
  %cmp4260 = icmp slt i32 %t4259, 0
  %c4261 = zext i1 %cmp4254 to i64
  %t4262 = shl i64 %c4261, 31
  %c4263 = zext i1 %cmp4255 to i64
  %t4264 = shl i64 %c4263, 30
  %c4265 = zext i1 %cmp4256 to i64
  %t4266 = shl i64 %c4265, 29
  %c4267 = zext i1 %cmp4260 to i64
  %t4268 = shl i64 %c4267, 28
  %t4269 = or i64 %t4266, %t4268
  %t4270 = or i64 %t4262, %t4264
  %t4271 = or i64 %t4270, %t4269
  %sel4272 = select i1 %cond4248, i64 %t4271, i64 1073741824
  %wp4273 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel4272, ptr %wp4273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6e4 word 0x5280090a
  %c4274 = zext i32 72 to i64
  %wp4275 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4274, ptr %wp4275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6e8 word 0x9baa2508
  %r4276.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4276 = load i64, ptr %r4276.p, align 8, !alias.scope !3, !noalias !4
  %c4277 = trunc i64 %r4276 to i32
  %c4278 = zext i32 %c4277 to i64
  %r4279.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4279 = load i64, ptr %r4279.p, align 8, !alias.scope !3, !noalias !4
  %c4280 = trunc i64 %r4279 to i32
  %c4281 = zext i32 %c4280 to i64
  %t4282 = mul i64 %c4278, %c4281
  %r4283.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4283 = load i64, ptr %r4283.p, align 8, !alias.scope !3, !noalias !4
  %t4284 = add i64 %r4283, %t4282
  %wp4285 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4284, ptr %wp4285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6ec word 0x9a8803e8
  %r4286.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4286 = load i64, ptr %r4286.p, align 8, !alias.scope !3, !noalias !4
  %r4287.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4287 = load i64, ptr %r4287.p, align 8, !alias.scope !3, !noalias !4
  %fsh4289 = lshr i64 %r4287, 30
  %cond4288 = trunc i64 %fsh4289 to i1
  %sel4290 = select i1 %cond4288, i64 0, i64 %r4286
  %wp4291 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4290, ptr %wp4291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6f0 word 0xf9400500
  %r4292.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4292 = load i64, ptr %r4292.p, align 8, !alias.scope !3, !noalias !4
  %t4293 = add i64 %r4292, 8
  %gmp4294 = inttoptr i64 %t4293 to ptr
  %gml4295 = load i64, ptr %gmp4294, align 1, !alias.scope !4, !noalias !3
  %wp4296 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4295, ptr %wp4296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6f4 word 0x9001c388
  %wp4297 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp4297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6f8 word 0xf9478908
  %r4298.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4298 = load i64, ptr %r4298.p, align 8, !alias.scope !3, !noalias !4
  %t4299 = add i64 %r4298, 3856
  %gmp4300 = inttoptr i64 %t4299 to ptr
  %gml4301 = load i64, ptr %gmp4300, align 1, !alias.scope !4, !noalias !3
  %wp4302 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4301, ptr %wp4302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc6fc word 0xf9400108
  %r4303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4303 = load i64, ptr %r4303.p, align 8, !alias.scope !3, !noalias !4
  %gmp4304 = inttoptr i64 %r4303 to ptr
  %gml4305 = load i64, ptr %gmp4304, align 1, !alias.scope !4, !noalias !3
  %wp4306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4305, ptr %wp4306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc700 word 0xd63f0100
  %r4307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4307 = load i64, ptr %r4307.p, align 8, !alias.scope !3, !noalias !4
  %fp4308 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4307, ptr %fp4308, align 8, !alias.scope !3, !noalias !4
  %wp4309 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641284, ptr %wp4309, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc704 word 0xf9405ed7
  %r4310.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4310 = load i64, ptr %r4310.p, align 8, !alias.scope !3, !noalias !4
  %t4311 = add i64 %r4310, 184
  %gmp4312 = inttoptr i64 %t4311 to ptr
  %gml4313 = load i64, ptr %gmp4312, align 1, !alias.scope !4, !noalias !3
  %wp4314 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml4313, ptr %wp4314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc708 word 0x2a1c03e8
  %r4315.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4315 = load i64, ptr %r4315.p, align 8, !alias.scope !3, !noalias !4
  %c4316 = trunc i64 %r4315 to i32
  %t4317 = or i32 0, %c4316
  %c4318 = zext i32 %t4317 to i64
  %wp4319 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4318, ptr %wp4319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc70c word 0xaa0003f5
  %r4320.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4320 = load i64, ptr %r4320.p, align 8, !alias.scope !3, !noalias !4
  %t4321 = or i64 0, %r4320
  %wp4322 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t4321, ptr %wp4322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc710 word 0xf2407e96
  %r4323.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4323 = load i64, ptr %r4323.p, align 8, !alias.scope !3, !noalias !4
  %t4324 = and i64 %r4323, 4294967295
  %fn4325 = icmp slt i64 %t4324, 0
  %fz4326 = icmp eq i64 %t4324, 0
  %nz4327 = zext i1 %fn4325 to i64
  %zz4328 = zext i1 %fz4326 to i64
  %ns4329 = shl i64 %nz4327, 31
  %zs4330 = shl i64 %zz4328, 30
  %nzcv4331 = or i64 %ns4329, %zs4330
  %wp4332 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4331, ptr %wp4332, align 8, !alias.scope !3, !noalias !4
  %wp4333 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4324, ptr %wp4333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc714 word 0x12001f88
  %r4334.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4334 = load i64, ptr %r4334.p, align 8, !alias.scope !3, !noalias !4
  %c4335 = trunc i64 %r4334 to i32
  %t4336 = and i32 %c4335, 255
  %c4337 = zext i32 %t4336 to i64
  %wp4338 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4337, ptr %wp4338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc718 word 0x540068e0
  %r4339.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4339 = load i64, ptr %r4339.p, align 8, !alias.scope !3, !noalias !4
  %fsh4341 = lshr i64 %r4339, 30
  %cond4340 = trunc i64 %fsh4341 to i1
  br i1 %cond4340, label %L_8000dd434, label %L_8000dc71c_ft
L_8000dc75c:
  ; @pc 0x8000dc75c word 0x9001c408
  %wp4448 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc760 word 0x13001f82
  %r4449.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4449 = load i64, ptr %r4449.p, align 8, !alias.scope !3, !noalias !4
  %c4450 = trunc i64 %r4449 to i32
  %t4451 = lshr i32 %c4450, 7
  %t4452 = and i32 %t4451, 1
  %t4453 = sub i32 0, %t4452
  %t4454 = and i32 %t4453, -256
  %t4455 = and i32 %c4450, 255
  %t4456 = or i32 %t4454, %t4455
  %c4457 = zext i32 %t4456 to i64
  %wp4458 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4457, ptr %wp4458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc764 word 0xf9417908
  %r4459.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4459 = load i64, ptr %r4459.p, align 8, !alias.scope !3, !noalias !4
  %t4460 = add i64 %r4459, 752
  %gmp4461 = inttoptr i64 %t4460 to ptr
  %gml4462 = load i64, ptr %gmp4461, align 1, !alias.scope !4, !noalias !3
  %wp4463 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4462, ptr %wp4463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc768 word 0xaa1703e0
  %r4464.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4464 = load i64, ptr %r4464.p, align 8, !alias.scope !3, !noalias !4
  %t4465 = or i64 0, %r4464
  %wp4466 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4465, ptr %wp4466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc76c word 0x2a1f03e1
  %t4467 = or i32 0, 0
  %c4468 = zext i32 %t4467 to i64
  %wp4469 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4468, ptr %wp4469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc770 word 0xf9400108
  %r4470.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4470 = load i64, ptr %r4470.p, align 8, !alias.scope !3, !noalias !4
  %gmp4471 = inttoptr i64 %r4470 to ptr
  %gml4472 = load i64, ptr %gmp4471, align 1, !alias.scope !4, !noalias !3
  %wp4473 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4472, ptr %wp4473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc774 word 0xaa1503e3
  %r4474.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4474 = load i64, ptr %r4474.p, align 8, !alias.scope !3, !noalias !4
  %t4475 = or i64 0, %r4474
  %wp4476 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4475, ptr %wp4476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc778 word 0xaa1603e4
  %r4477.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4477 = load i64, ptr %r4477.p, align 8, !alias.scope !3, !noalias !4
  %t4478 = or i64 0, %r4477
  %wp4479 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4478, ptr %wp4479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc77c word 0xd63f0100
  %r4480.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4480 = load i64, ptr %r4480.p, align 8, !alias.scope !3, !noalias !4
  %fp4481 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4480, ptr %fp4481, align 8, !alias.scope !3, !noalias !4
  %wp4482 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641408, ptr %wp4482, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000dc780
L_8000dc780:
  ; @pc 0x8000dc780 word 0x2942afe8
  %r4483.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4483 = load i64, ptr %r4483.p, align 8, !alias.scope !3, !noalias !4
  %t4484 = add i64 %r4483, 20
  %t4485 = add i64 %t4484, 4
  %gmp4486 = inttoptr i64 %t4484 to ptr
  %gml4487 = load i32, ptr %gmp4486, align 1, !alias.scope !4, !noalias !3
  %c4488 = zext i32 %gml4487 to i64
  %gmp4489 = inttoptr i64 %t4485 to ptr
  %gml4490 = load i32, ptr %gmp4489, align 1, !alias.scope !4, !noalias !3
  %c4491 = zext i32 %gml4490 to i64
  %wp4492 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4488, ptr %wp4492, align 8, !alias.scope !3, !noalias !4
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4491, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc784 word 0xaa1803e4
  %r4494.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4494 = load i64, ptr %r4494.p, align 8, !alias.scope !3, !noalias !4
  %t4495 = or i64 0, %r4494
  %wp4496 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4495, ptr %wp4496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc788 word 0xaa1903e5
  %r4497.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4497 = load i64, ptr %r4497.p, align 8, !alias.scope !3, !noalias !4
  %t4498 = or i64 0, %r4497
  %wp4499 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4498, ptr %wp4499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc78c word 0x2a1b03ed
  %r4500.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4500 = load i64, ptr %r4500.p, align 8, !alias.scope !3, !noalias !4
  %c4501 = trunc i64 %r4500 to i32
  %t4502 = or i32 0, %c4501
  %c4503 = zext i32 %t4502 to i64
  %wp4504 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4503, ptr %wp4504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc790 word 0x7103fd1f
  %r4505.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4505 = load i64, ptr %r4505.p, align 8, !alias.scope !3, !noalias !4
  %c4506 = trunc i64 %r4505 to i32
  %t4507 = sub i32 %c4506, 255
  %fn4508 = icmp slt i32 %t4507, 0
  %fz4509 = icmp eq i32 %t4507, 0
  %fc4510 = icmp uge i32 %c4506, 255
  %fx14511 = xor i32 %c4506, 255
  %fx24512 = xor i32 %c4506, %t4507
  %fva4513 = and i32 %fx14511, %fx24512
  %fv4514 = icmp slt i32 %fva4513, 0
  %nz4515 = zext i1 %fn4508 to i64
  %zz4516 = zext i1 %fz4509 to i64
  %cz4517 = zext i1 %fc4510 to i64
  %vz4518 = zext i1 %fv4514 to i64
  %ns4519 = shl i64 %nz4515, 31
  %zs4520 = shl i64 %zz4516, 30
  %cs4521 = shl i64 %cz4517, 29
  %vs4522 = shl i64 %vz4518, 28
  %nzor4523 = or i64 %ns4519, %zs4520
  %cvor4524 = or i64 %cs4521, %vs4522
  %nzcv4525 = or i64 %nzor4523, %cvor4524
  %wp4526 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4525, ptr %wp4526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc794 word 0x540005e1
  %r4527.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4527 = load i64, ptr %r4527.p, align 8, !alias.scope !3, !noalias !4
  %fsh4529 = lshr i64 %r4527, 30
  %ftr4530 = trunc i64 %fsh4529 to i1
  %cond4528 = xor i1 %ftr4530, true
  br i1 %cond4528, label %L_8000dc850, label %L_8000dc798
L_8000dc798:
  ; @pc 0x8000dc798 word 0xb94023e8
  %r4531.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4531 = load i64, ptr %r4531.p, align 8, !alias.scope !3, !noalias !4
  %t4532 = add i64 %r4531, 32
  %gmp4533 = inttoptr i64 %t4532 to ptr
  %gml4534 = load i32, ptr %gmp4533, align 1, !alias.scope !4, !noalias !3
  %c4535 = zext i32 %gml4534 to i64
  %wp4536 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4535, ptr %wp4536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc79c word 0x7103fd1f
  %r4537.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4537 = load i64, ptr %r4537.p, align 8, !alias.scope !3, !noalias !4
  %c4538 = trunc i64 %r4537 to i32
  %t4539 = sub i32 %c4538, 255
  %fn4540 = icmp slt i32 %t4539, 0
  %fz4541 = icmp eq i32 %t4539, 0
  %fc4542 = icmp uge i32 %c4538, 255
  %fx14543 = xor i32 %c4538, 255
  %fx24544 = xor i32 %c4538, %t4539
  %fva4545 = and i32 %fx14543, %fx24544
  %fv4546 = icmp slt i32 %fva4545, 0
  %nz4547 = zext i1 %fn4540 to i64
  %zz4548 = zext i1 %fz4541 to i64
  %cz4549 = zext i1 %fc4542 to i64
  %vz4550 = zext i1 %fv4546 to i64
  %ns4551 = shl i64 %nz4547, 31
  %zs4552 = shl i64 %zz4548, 30
  %cs4553 = shl i64 %cz4549, 29
  %vs4554 = shl i64 %vz4550, 28
  %nzor4555 = or i64 %ns4551, %zs4552
  %cvor4556 = or i64 %cs4553, %vs4554
  %nzcv4557 = or i64 %nzor4555, %cvor4556
  %wp4558 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4557, ptr %wp4558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7a0 word 0x54000320
  %r4559.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4559 = load i64, ptr %r4559.p, align 8, !alias.scope !3, !noalias !4
  %fsh4561 = lshr i64 %r4559, 30
  %cond4560 = trunc i64 %fsh4561 to i1
  br i1 %cond4560, label %L_8000dc804, label %L_8000dc7a4_ft
L_8000dc7cc:
  ; @pc 0x8000dc7cc word 0xb9402be8
  %r4625.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4625 = load i64, ptr %r4625.p, align 8, !alias.scope !3, !noalias !4
  %t4626 = add i64 %r4625, 40
  %gmp4627 = inttoptr i64 %t4626 to ptr
  %gml4628 = load i32, ptr %gmp4627, align 1, !alias.scope !4, !noalias !3
  %c4629 = zext i32 %gml4628 to i64
  %wp4630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4629, ptr %wp4630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7d0 word 0xaa1703e0
  %r4631.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4631 = load i64, ptr %r4631.p, align 8, !alias.scope !3, !noalias !4
  %t4632 = or i64 0, %r4631
  %wp4633 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4632, ptr %wp4633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7d4 word 0x52800041
  %c4634 = zext i32 2 to i64
  %wp4635 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4634, ptr %wp4635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7d8 word 0xaa1503e3
  %r4636.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4636 = load i64, ptr %r4636.p, align 8, !alias.scope !3, !noalias !4
  %t4637 = or i64 0, %r4636
  %wp4638 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4637, ptr %wp4638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7dc word 0xaa1603e4
  %r4639.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4639 = load i64, ptr %r4639.p, align 8, !alias.scope !3, !noalias !4
  %t4640 = or i64 0, %r4639
  %wp4641 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4640, ptr %wp4641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7e0 word 0x13001d02
  %r4642.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4642 = load i64, ptr %r4642.p, align 8, !alias.scope !3, !noalias !4
  %c4643 = trunc i64 %r4642 to i32
  %t4644 = lshr i32 %c4643, 7
  %t4645 = and i32 %t4644, 1
  %t4646 = sub i32 0, %t4645
  %t4647 = and i32 %t4646, -256
  %t4648 = and i32 %c4643, 255
  %t4649 = or i32 %t4647, %t4648
  %c4650 = zext i32 %t4649 to i64
  %wp4651 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4650, ptr %wp4651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7e4 word 0x9001c408
  %wp4652 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7e8 word 0xf9417908
  %r4653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4653 = load i64, ptr %r4653.p, align 8, !alias.scope !3, !noalias !4
  %t4654 = add i64 %r4653, 752
  %gmp4655 = inttoptr i64 %t4654 to ptr
  %gml4656 = load i64, ptr %gmp4655, align 1, !alias.scope !4, !noalias !3
  %wp4657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4656, ptr %wp4657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7ec word 0xf9400108
  %r4658.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4658 = load i64, ptr %r4658.p, align 8, !alias.scope !3, !noalias !4
  %gmp4659 = inttoptr i64 %r4658 to ptr
  %gml4660 = load i64, ptr %gmp4659, align 1, !alias.scope !4, !noalias !3
  %wp4661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4660, ptr %wp4661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7f0 word 0xd63f0100
  %r4662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4662 = load i64, ptr %r4662.p, align 8, !alias.scope !3, !noalias !4
  %fp4663 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4662, ptr %fp4663, align 8, !alias.scope !3, !noalias !4
  %wp4664 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641524, ptr %wp4664, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc7f4 word 0xb9401beb
  %r4665.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4665 = load i64, ptr %r4665.p, align 8, !alias.scope !3, !noalias !4
  %t4666 = add i64 %r4665, 24
  %gmp4667 = inttoptr i64 %t4666 to ptr
  %gml4668 = load i32, ptr %gmp4667, align 1, !alias.scope !4, !noalias !3
  %c4669 = zext i32 %gml4668 to i64
  %wp4670 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4669, ptr %wp4670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7f8 word 0x2a1b03ed
  %r4671.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4671 = load i64, ptr %r4671.p, align 8, !alias.scope !3, !noalias !4
  %c4672 = trunc i64 %r4671 to i32
  %t4673 = or i32 0, %c4672
  %c4674 = zext i32 %t4673 to i64
  %wp4675 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4674, ptr %wp4675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7fc word 0xaa1903e5
  %r4676.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4676 = load i64, ptr %r4676.p, align 8, !alias.scope !3, !noalias !4
  %t4677 = or i64 0, %r4676
  %wp4678 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4677, ptr %wp4678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc800 word 0xaa1803e4
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %t4680 = or i64 0, %r4679
  %wp4681 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4680, ptr %wp4681, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc804
L_8000dc804:
  ; @pc 0x8000dc804 word 0xb85d83a8
  %r4682.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4682 = load i64, ptr %r4682.p, align 8, !alias.scope !3, !noalias !4
  %t4683 = add i64 %r4682, -40
  %gmp4684 = inttoptr i64 %t4683 to ptr
  %gml4685 = load i32, ptr %gmp4684, align 1, !alias.scope !4, !noalias !3
  %c4686 = zext i32 %gml4685 to i64
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc808 word 0x7103fd1f
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %c4689 = trunc i64 %r4688 to i32
  %t4690 = sub i32 %c4689, 255
  %fn4691 = icmp slt i32 %t4690, 0
  %fz4692 = icmp eq i32 %t4690, 0
  %fc4693 = icmp uge i32 %c4689, 255
  %fx14694 = xor i32 %c4689, 255
  %fx24695 = xor i32 %c4689, %t4690
  %fva4696 = and i32 %fx14694, %fx24695
  %fv4697 = icmp slt i32 %fva4696, 0
  %nz4698 = zext i1 %fn4691 to i64
  %zz4699 = zext i1 %fz4692 to i64
  %cz4700 = zext i1 %fc4693 to i64
  %vz4701 = zext i1 %fv4697 to i64
  %ns4702 = shl i64 %nz4698, 31
  %zs4703 = shl i64 %zz4699, 30
  %cs4704 = shl i64 %cz4700, 29
  %vs4705 = shl i64 %vz4701, 28
  %nzor4706 = or i64 %ns4702, %zs4703
  %cvor4707 = or i64 %cs4704, %vs4705
  %nzcv4708 = or i64 %nzor4706, %cvor4707
  %wp4709 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4708, ptr %wp4709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc80c word 0x54ffe920
  %r4710.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4710 = load i64, ptr %r4710.p, align 8, !alias.scope !3, !noalias !4
  %fsh4712 = lshr i64 %r4710, 30
  %cond4711 = trunc i64 %fsh4712 to i1
  br i1 %cond4711, label %L_8000dc530, label %L_8000dc810
L_8000dc810:
  ; @pc 0x8000dc810 word 0x52800028
  %c4713 = zext i32 1 to i64
  %wp4714 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4713, ptr %wp4714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc814 word 0x13187f82
  %r4715.p = getelementptr inbounds i8, ptr %c, i64 224
  %r4715 = load i64, ptr %r4715.p, align 8, !alias.scope !3, !noalias !4
  %c4716 = trunc i64 %r4715 to i32
  %ror4717 = call i32 @llvm.fshr.i32(i32 %c4716, i32 %c4716, i32 24)
  %t4718 = lshr i32 %c4716, 31
  %t4719 = and i32 %t4718, 1
  %t4720 = sub i32 0, %t4719
  %t4721 = and i32 %t4720, -256
  %t4722 = and i32 %ror4717, 255
  %t4723 = or i32 %t4721, %t4722
  %c4724 = zext i32 %t4723 to i64
  %wp4725 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4724, ptr %wp4725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc818 word 0x390042e8
  %r4726.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4726 = load i64, ptr %r4726.p, align 8, !alias.scope !3, !noalias !4
  %t4727 = add i64 %r4726, 16
  %r4728.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4728 = load i64, ptr %r4728.p, align 8, !alias.scope !3, !noalias !4
  %c4729 = trunc i64 %r4728 to i32
  %c4730 = trunc i32 %c4729 to i8
  %gmp4731 = inttoptr i64 %t4727 to ptr
  store i8 %c4730, ptr %gmp4731, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc81c word 0x9001c408
  %wp4732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc820 word 0x528000a1
  %c4733 = zext i32 5 to i64
  %wp4734 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4733, ptr %wp4734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc824 word 0xf9417908
  %r4735.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4735 = load i64, ptr %r4735.p, align 8, !alias.scope !3, !noalias !4
  %t4736 = add i64 %r4735, 752
  %gmp4737 = inttoptr i64 %t4736 to ptr
  %gml4738 = load i64, ptr %gmp4737, align 1, !alias.scope !4, !noalias !3
  %wp4739 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4738, ptr %wp4739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc828 word 0xaa1703e0
  %r4740.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4740 = load i64, ptr %r4740.p, align 8, !alias.scope !3, !noalias !4
  %t4741 = or i64 0, %r4740
  %wp4742 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4741, ptr %wp4742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc82c word 0xaa1503e3
  %r4743.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4743 = load i64, ptr %r4743.p, align 8, !alias.scope !3, !noalias !4
  %t4744 = or i64 0, %r4743
  %wp4745 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4744, ptr %wp4745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc830 word 0xf9400108
  %r4746.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4746 = load i64, ptr %r4746.p, align 8, !alias.scope !3, !noalias !4
  %gmp4747 = inttoptr i64 %r4746 to ptr
  %gml4748 = load i64, ptr %gmp4747, align 1, !alias.scope !4, !noalias !3
  %wp4749 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4748, ptr %wp4749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc834 word 0xaa1603e4
  %r4750.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4750 = load i64, ptr %r4750.p, align 8, !alias.scope !3, !noalias !4
  %t4751 = or i64 0, %r4750
  %wp4752 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4751, ptr %wp4752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc838 word 0xd63f0100
  %r4753.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4753 = load i64, ptr %r4753.p, align 8, !alias.scope !3, !noalias !4
  %fp4754 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4753, ptr %fp4754, align 8, !alias.scope !3, !noalias !4
  %wp4755 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641596, ptr %wp4755, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc83c word 0xb9401beb
  %r4756.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4756 = load i64, ptr %r4756.p, align 8, !alias.scope !3, !noalias !4
  %t4757 = add i64 %r4756, 24
  %gmp4758 = inttoptr i64 %t4757 to ptr
  %gml4759 = load i32, ptr %gmp4758, align 1, !alias.scope !4, !noalias !3
  %c4760 = zext i32 %gml4759 to i64
  %wp4761 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4760, ptr %wp4761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc840 word 0x2a1b03ed
  %r4762.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4762 = load i64, ptr %r4762.p, align 8, !alias.scope !3, !noalias !4
  %c4763 = trunc i64 %r4762 to i32
  %t4764 = or i32 0, %c4763
  %c4765 = zext i32 %t4764 to i64
  %wp4766 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4765, ptr %wp4766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc844 word 0xaa1903e5
  %r4767.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4767 = load i64, ptr %r4767.p, align 8, !alias.scope !3, !noalias !4
  %t4768 = or i64 0, %r4767
  %wp4769 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4768, ptr %wp4769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc848 word 0xaa1803e4
  %r4770.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4770 = load i64, ptr %r4770.p, align 8, !alias.scope !3, !noalias !4
  %t4771 = or i64 0, %r4770
  %wp4772 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4771, ptr %wp4772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc84c word 0x17ffff39
  br label %L_8000dc530
L_8000dc850:
  ; @pc 0x8000dc850 word 0x52800028
  %c4773 = zext i32 1 to i64
  %wp4774 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4773, ptr %wp4774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc854 word 0x390042e8
  %r4775.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4775 = load i64, ptr %r4775.p, align 8, !alias.scope !3, !noalias !4
  %t4776 = add i64 %r4775, 16
  %r4777.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4777 = load i64, ptr %r4777.p, align 8, !alias.scope !3, !noalias !4
  %c4778 = trunc i64 %r4777 to i32
  %c4779 = trunc i32 %c4778 to i8
  %gmp4780 = inttoptr i64 %t4776 to ptr
  store i8 %c4779, ptr %gmp4780, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc858 word 0x9001c388
  %wp4781 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp4781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc85c word 0xf9479508
  %r4782.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4782 = load i64, ptr %r4782.p, align 8, !alias.scope !3, !noalias !4
  %t4783 = add i64 %r4782, 3880
  %gmp4784 = inttoptr i64 %t4783 to ptr
  %gml4785 = load i64, ptr %gmp4784, align 1, !alias.scope !4, !noalias !3
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4785, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc860 word 0xb9400108
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %gmp4788 = inttoptr i64 %r4787 to ptr
  %gml4789 = load i32, ptr %gmp4788, align 1, !alias.scope !4, !noalias !3
  %c4790 = zext i32 %gml4789 to i64
  %wp4791 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4790, ptr %wp4791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc864 word 0x340000a8
  %r4792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4792 = load i64, ptr %r4792.p, align 8, !alias.scope !3, !noalias !4
  %c4793 = trunc i64 %r4792 to i32
  %cmp4794 = icmp eq i32 %c4793, 0
  br i1 %cmp4794, label %L_8000dc878, label %L_8000dc868_ft
L_8000dc878:
  ; @pc 0x8000dc878 word 0xb94013e8
  %r4836.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4836 = load i64, ptr %r4836.p, align 8, !alias.scope !3, !noalias !4
  %t4837 = add i64 %r4836, 16
  %gmp4838 = inttoptr i64 %t4837 to ptr
  %gml4839 = load i32, ptr %gmp4838, align 1, !alias.scope !4, !noalias !3
  %c4840 = zext i32 %gml4839 to i64
  %wp4841 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4840, ptr %wp4841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc87c word 0xaa1703e0
  %r4842.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4842 = load i64, ptr %r4842.p, align 8, !alias.scope !3, !noalias !4
  %t4843 = or i64 0, %r4842
  %wp4844 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4843, ptr %wp4844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc880 word 0x52800021
  %c4845 = zext i32 1 to i64
  %wp4846 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4845, ptr %wp4846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc884 word 0xaa1503e3
  %r4847.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4847 = load i64, ptr %r4847.p, align 8, !alias.scope !3, !noalias !4
  %t4848 = or i64 0, %r4847
  %wp4849 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4848, ptr %wp4849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc888 word 0xaa1603e4
  %r4850.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4850 = load i64, ptr %r4850.p, align 8, !alias.scope !3, !noalias !4
  %t4851 = or i64 0, %r4850
  %wp4852 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4851, ptr %wp4852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc88c word 0x13001d02
  %r4853.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4853 = load i64, ptr %r4853.p, align 8, !alias.scope !3, !noalias !4
  %c4854 = trunc i64 %r4853 to i32
  %t4855 = lshr i32 %c4854, 7
  %t4856 = and i32 %t4855, 1
  %t4857 = sub i32 0, %t4856
  %t4858 = and i32 %t4857, -256
  %t4859 = and i32 %c4854, 255
  %t4860 = or i32 %t4858, %t4859
  %c4861 = zext i32 %t4860 to i64
  %wp4862 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4861, ptr %wp4862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc890 word 0x9001c408
  %wp4863 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp4863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc894 word 0xf9417908
  %r4864.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4864 = load i64, ptr %r4864.p, align 8, !alias.scope !3, !noalias !4
  %t4865 = add i64 %r4864, 752
  %gmp4866 = inttoptr i64 %t4865 to ptr
  %gml4867 = load i64, ptr %gmp4866, align 1, !alias.scope !4, !noalias !3
  %wp4868 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4867, ptr %wp4868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc898 word 0xf9400108
  %r4869.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4869 = load i64, ptr %r4869.p, align 8, !alias.scope !3, !noalias !4
  %gmp4870 = inttoptr i64 %r4869 to ptr
  %gml4871 = load i64, ptr %gmp4870, align 1, !alias.scope !4, !noalias !3
  %wp4872 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4871, ptr %wp4872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc89c word 0xd63f0100
  %r4873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4873 = load i64, ptr %r4873.p, align 8, !alias.scope !3, !noalias !4
  %fp4874 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4873, ptr %fp4874, align 8, !alias.scope !3, !noalias !4
  %wp4875 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641696, ptr %wp4875, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc8a0 word 0xb9401beb
  %r4876.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4876 = load i64, ptr %r4876.p, align 8, !alias.scope !3, !noalias !4
  %t4877 = add i64 %r4876, 24
  %gmp4878 = inttoptr i64 %t4877 to ptr
  %gml4879 = load i32, ptr %gmp4878, align 1, !alias.scope !4, !noalias !3
  %c4880 = zext i32 %gml4879 to i64
  %wp4881 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c4880, ptr %wp4881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8a4 word 0x2a1b03ed
  %r4882.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4882 = load i64, ptr %r4882.p, align 8, !alias.scope !3, !noalias !4
  %c4883 = trunc i64 %r4882 to i32
  %t4884 = or i32 0, %c4883
  %c4885 = zext i32 %t4884 to i64
  %wp4886 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c4885, ptr %wp4886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8a8 word 0xaa1903e5
  %r4887.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4887 = load i64, ptr %r4887.p, align 8, !alias.scope !3, !noalias !4
  %t4888 = or i64 0, %r4887
  %wp4889 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t4888, ptr %wp4889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8ac word 0xaa1803e4
  %r4890.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4890 = load i64, ptr %r4890.p, align 8, !alias.scope !3, !noalias !4
  %t4891 = or i64 0, %r4890
  %wp4892 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t4891, ptr %wp4892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8b0 word 0x17ffffba
  br label %L_8000dc798
L_8000dc8b4:
  ; @pc 0x8000dc8b4 word 0xb9402be9
  %r4893.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4893 = load i64, ptr %r4893.p, align 8, !alias.scope !3, !noalias !4
  %t4894 = add i64 %r4893, 40
  %gmp4895 = inttoptr i64 %t4894 to ptr
  %gml4896 = load i32, ptr %gmp4895, align 1, !alias.scope !4, !noalias !3
  %c4897 = zext i32 %gml4896 to i64
  %wp4898 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4897, ptr %wp4898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8b8 word 0x52811c0a
  %c4899 = zext i32 2272 to i64
  %wp4900 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4899, ptr %wp4900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8bc word 0x72a4006a
  %r4901.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4901 = load i64, ptr %r4901.p, align 8, !alias.scope !3, !noalias !4
  %t4902 = and i64 %r4901, -4294901761
  %t4903 = or i64 %t4902, 537067520
  %c4904 = trunc i64 %t4903 to i32
  %c4905 = zext i32 %c4904 to i64
  %wp4906 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4905, ptr %wp4906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8c0 word 0x2900510a
  %r4907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4907 = load i64, ptr %r4907.p, align 8, !alias.scope !3, !noalias !4
  %t4908 = add i64 %r4907, 4
  %r4909.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4909 = load i64, ptr %r4909.p, align 8, !alias.scope !3, !noalias !4
  %c4910 = trunc i64 %r4909 to i32
  %gmp4911 = inttoptr i64 %r4907 to ptr
  store i32 %c4910, ptr %gmp4911, align 1, !alias.scope !4, !noalias !3
  %r4912.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4912 = load i64, ptr %r4912.p, align 8, !alias.scope !3, !noalias !4
  %c4913 = trunc i64 %r4912 to i32
  %gmp4914 = inttoptr i64 %t4908 to ptr
  store i32 %c4913, ptr %gmp4914, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc8c4 word 0xf94007ea
  %r4915.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4915 = load i64, ptr %r4915.p, align 8, !alias.scope !3, !noalias !4
  %t4916 = add i64 %r4915, 8
  %gmp4917 = inttoptr i64 %t4916 to ptr
  %gml4918 = load i64, ptr %gmp4917, align 1, !alias.scope !4, !noalias !3
  %wp4919 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4918, ptr %wp4919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8c8 word 0x53081d29
  %r4920.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4920 = load i64, ptr %r4920.p, align 8, !alias.scope !3, !noalias !4
  %c4921 = trunc i64 %r4920 to i32
  %ror4922 = call i32 @llvm.fshr.i32(i32 %c4921, i32 %c4921, i32 8)
  %t4923 = and i32 %ror4922, -16777216
  %c4924 = zext i32 %t4923 to i64
  %wp4925 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4924, ptr %wp4925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8cc word 0x53047d29
  %r4926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4926 = load i64, ptr %r4926.p, align 8, !alias.scope !3, !noalias !4
  %c4927 = trunc i64 %r4926 to i32
  %ror4928 = call i32 @llvm.fshr.i32(i32 %c4927, i32 %c4927, i32 4)
  %t4929 = and i32 %ror4928, 268435455
  %c4930 = zext i32 %t4929 to i64
  %wp4931 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4930, ptr %wp4931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8d0 word 0x2901550a
  %r4932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4932 = load i64, ptr %r4932.p, align 8, !alias.scope !3, !noalias !4
  %t4933 = add i64 %r4932, 8
  %t4934 = add i64 %t4933, 4
  %r4935.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4935 = load i64, ptr %r4935.p, align 8, !alias.scope !3, !noalias !4
  %c4936 = trunc i64 %r4935 to i32
  %gmp4937 = inttoptr i64 %t4933 to ptr
  store i32 %c4936, ptr %gmp4937, align 1, !alias.scope !4, !noalias !3
  %r4938.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4938 = load i64, ptr %r4938.p, align 8, !alias.scope !3, !noalias !4
  %c4939 = trunc i64 %r4938 to i32
  %gmp4940 = inttoptr i64 %t4934 to ptr
  store i32 %c4939, ptr %gmp4940, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc8d4 word 0x5281238a
  %c4941 = zext i32 2332 to i64
  %wp4942 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4941, ptr %wp4942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8d8 word 0x72b0002a
  %r4943.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4943 = load i64, ptr %r4943.p, align 8, !alias.scope !3, !noalias !4
  %t4944 = and i64 %r4943, -4294901761
  %t4945 = or i64 %t4944, 2147549184
  %c4946 = trunc i64 %t4945 to i32
  %c4947 = zext i32 %c4946 to i64
  %wp4948 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4947, ptr %wp4948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8dc word 0x114c0129
  %r4949.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4949 = load i64, ptr %r4949.p, align 8, !alias.scope !3, !noalias !4
  %c4950 = trunc i64 %r4949 to i32
  %t4951 = add i32 %c4950, 3145728
  %c4952 = zext i32 %t4951 to i64
  %wp4953 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4952, ptr %wp4953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8e0 word 0x120c1129
  %r4954.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4954 = load i64, ptr %r4954.p, align 8, !alias.scope !3, !noalias !4
  %c4955 = trunc i64 %r4954 to i32
  %t4956 = and i32 %c4955, 32505856
  %c4957 = zext i32 %t4956 to i64
  %wp4958 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4957, ptr %wp4958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8e4 word 0x2a0a0129
  %r4959.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4959 = load i64, ptr %r4959.p, align 8, !alias.scope !3, !noalias !4
  %c4960 = trunc i64 %r4959 to i32
  %r4961.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4961 = load i64, ptr %r4961.p, align 8, !alias.scope !3, !noalias !4
  %c4962 = trunc i64 %r4961 to i32
  %t4963 = or i32 %c4962, %c4960
  %c4964 = zext i32 %t4963 to i64
  %wp4965 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4964, ptr %wp4965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8e8 word 0xb9001109
  %r4966.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4966 = load i64, ptr %r4966.p, align 8, !alias.scope !3, !noalias !4
  %t4967 = add i64 %r4966, 16
  %r4968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4968 = load i64, ptr %r4968.p, align 8, !alias.scope !3, !noalias !4
  %c4969 = trunc i64 %r4968 to i32
  %gmp4970 = inttoptr i64 %t4967 to ptr
  store i32 %c4969, ptr %gmp4970, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc8ec word 0x91005108
  %r4971.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4971 = load i64, ptr %r4971.p, align 8, !alias.scope !3, !noalias !4
  %t4972 = add i64 %r4971, 20
  %wp4973 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4972, ptr %wp4973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8f0 word 0xf90002e8
  %r4974.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4974 = load i64, ptr %r4974.p, align 8, !alias.scope !3, !noalias !4
  %r4975.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4975 = load i64, ptr %r4975.p, align 8, !alias.scope !3, !noalias !4
  %gmp4976 = inttoptr i64 %r4974 to ptr
  store i64 %r4975, ptr %gmp4976, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc8f4 word 0x17ffffc4
  br label %L_8000dc804
L_8000dc8f8:
  ; @pc 0x8000dc8f8 word 0x5280002c
  %c4977 = zext i32 1 to i64
  %wp4978 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c4977, ptr %wp4978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc8fc word 0xb901366d
  %r4979.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4979 = load i64, ptr %r4979.p, align 8, !alias.scope !3, !noalias !4
  %t4980 = add i64 %r4979, 308
  %r4981.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4981 = load i64, ptr %r4981.p, align 8, !alias.scope !3, !noalias !4
  %c4982 = trunc i64 %r4981 to i32
  %gmp4983 = inttoptr i64 %t4980 to ptr
  store i32 %c4982, ptr %gmp4983, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc900 word 0x17fffd69
  br label %L_8000dbea4
L_8000dc904:
  ; @pc 0x8000dc904 word 0xb94013e9
  %r4984.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4984 = load i64, ptr %r4984.p, align 8, !alias.scope !3, !noalias !4
  %t4985 = add i64 %r4984, 16
  %gmp4986 = inttoptr i64 %t4985 to ptr
  %gml4987 = load i32, ptr %gmp4986, align 1, !alias.scope !4, !noalias !3
  %c4988 = zext i32 %gml4987 to i64
  %wp4989 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4988, ptr %wp4989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc908 word 0x52811c0a
  %c4990 = zext i32 2272 to i64
  %wp4991 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4990, ptr %wp4991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc90c word 0x72a4006a
  %r4992.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4992 = load i64, ptr %r4992.p, align 8, !alias.scope !3, !noalias !4
  %t4993 = and i64 %r4992, -4294901761
  %t4994 = or i64 %t4993, 537067520
  %c4995 = trunc i64 %t4994 to i32
  %c4996 = zext i32 %c4995 to i64
  %wp4997 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4996, ptr %wp4997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc910 word 0x2900510a
  %r4998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4998 = load i64, ptr %r4998.p, align 8, !alias.scope !3, !noalias !4
  %t4999 = add i64 %r4998, 4
  %r5000.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5000 = load i64, ptr %r5000.p, align 8, !alias.scope !3, !noalias !4
  %c5001 = trunc i64 %r5000 to i32
  %gmp5002 = inttoptr i64 %r4998 to ptr
  store i32 %c5001, ptr %gmp5002, align 1, !alias.scope !4, !noalias !3
  %r5003.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5003 = load i64, ptr %r5003.p, align 8, !alias.scope !3, !noalias !4
  %c5004 = trunc i64 %r5003 to i32
  %gmp5005 = inttoptr i64 %t4999 to ptr
  store i32 %c5004, ptr %gmp5005, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc914 word 0xf94007ea
  %r5006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5006 = load i64, ptr %r5006.p, align 8, !alias.scope !3, !noalias !4
  %t5007 = add i64 %r5006, 8
  %gmp5008 = inttoptr i64 %t5007 to ptr
  %gml5009 = load i64, ptr %gmp5008, align 1, !alias.scope !4, !noalias !3
  %wp5010 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5009, ptr %wp5010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc918 word 0x53081d29
  %r5011.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5011 = load i64, ptr %r5011.p, align 8, !alias.scope !3, !noalias !4
  %c5012 = trunc i64 %r5011 to i32
  %ror5013 = call i32 @llvm.fshr.i32(i32 %c5012, i32 %c5012, i32 8)
  %t5014 = and i32 %ror5013, -16777216
  %c5015 = zext i32 %t5014 to i64
  %wp5016 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5015, ptr %wp5016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc91c word 0x53047d29
  %r5017.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5017 = load i64, ptr %r5017.p, align 8, !alias.scope !3, !noalias !4
  %c5018 = trunc i64 %r5017 to i32
  %ror5019 = call i32 @llvm.fshr.i32(i32 %c5018, i32 %c5018, i32 4)
  %t5020 = and i32 %ror5019, 268435455
  %c5021 = zext i32 %t5020 to i64
  %wp5022 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5021, ptr %wp5022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc920 word 0x2901550a
  %r5023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5023 = load i64, ptr %r5023.p, align 8, !alias.scope !3, !noalias !4
  %t5024 = add i64 %r5023, 8
  %t5025 = add i64 %t5024, 4
  %r5026.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5026 = load i64, ptr %r5026.p, align 8, !alias.scope !3, !noalias !4
  %c5027 = trunc i64 %r5026 to i32
  %gmp5028 = inttoptr i64 %t5024 to ptr
  store i32 %c5027, ptr %gmp5028, align 1, !alias.scope !4, !noalias !3
  %r5029.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5029 = load i64, ptr %r5029.p, align 8, !alias.scope !3, !noalias !4
  %c5030 = trunc i64 %r5029 to i32
  %gmp5031 = inttoptr i64 %t5025 to ptr
  store i32 %c5030, ptr %gmp5031, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc924 word 0x5281238a
  %c5032 = zext i32 2332 to i64
  %wp5033 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5032, ptr %wp5033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc928 word 0x72b0002a
  %r5034.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5034 = load i64, ptr %r5034.p, align 8, !alias.scope !3, !noalias !4
  %t5035 = and i64 %r5034, -4294901761
  %t5036 = or i64 %t5035, 2147549184
  %c5037 = trunc i64 %t5036 to i32
  %c5038 = zext i32 %c5037 to i64
  %wp5039 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5038, ptr %wp5039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc92c word 0x114c0129
  %r5040.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5040 = load i64, ptr %r5040.p, align 8, !alias.scope !3, !noalias !4
  %c5041 = trunc i64 %r5040 to i32
  %t5042 = add i32 %c5041, 3145728
  %c5043 = zext i32 %t5042 to i64
  %wp5044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5043, ptr %wp5044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc930 word 0x120c1129
  %r5045.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5045 = load i64, ptr %r5045.p, align 8, !alias.scope !3, !noalias !4
  %c5046 = trunc i64 %r5045 to i32
  %t5047 = and i32 %c5046, 32505856
  %c5048 = zext i32 %t5047 to i64
  %wp5049 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5048, ptr %wp5049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc934 word 0x2a0a0129
  %r5050.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5050 = load i64, ptr %r5050.p, align 8, !alias.scope !3, !noalias !4
  %c5051 = trunc i64 %r5050 to i32
  %r5052.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5052 = load i64, ptr %r5052.p, align 8, !alias.scope !3, !noalias !4
  %c5053 = trunc i64 %r5052 to i32
  %t5054 = or i32 %c5053, %c5051
  %c5055 = zext i32 %t5054 to i64
  %wp5056 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5055, ptr %wp5056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc938 word 0x11002129
  %r5057.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5057 = load i64, ptr %r5057.p, align 8, !alias.scope !3, !noalias !4
  %c5058 = trunc i64 %r5057 to i32
  %t5059 = add i32 %c5058, 8
  %c5060 = zext i32 %t5059 to i64
  %wp5061 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5060, ptr %wp5061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc93c word 0xb9001109
  %r5062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5062 = load i64, ptr %r5062.p, align 8, !alias.scope !3, !noalias !4
  %t5063 = add i64 %r5062, 16
  %r5064.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5064 = load i64, ptr %r5064.p, align 8, !alias.scope !3, !noalias !4
  %c5065 = trunc i64 %r5064 to i32
  %gmp5066 = inttoptr i64 %t5063 to ptr
  store i32 %c5065, ptr %gmp5066, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc940 word 0x91005108
  %r5067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5067 = load i64, ptr %r5067.p, align 8, !alias.scope !3, !noalias !4
  %t5068 = add i64 %r5067, 20
  %wp5069 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5068, ptr %wp5069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc944 word 0xf90002e8
  %r5070.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5070 = load i64, ptr %r5070.p, align 8, !alias.scope !3, !noalias !4
  %r5071.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5071 = load i64, ptr %r5071.p, align 8, !alias.scope !3, !noalias !4
  %gmp5072 = inttoptr i64 %r5070 to ptr
  store i64 %r5071, ptr %gmp5072, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc948 word 0x17ffff94
  br label %L_8000dc798
L_8000dc94c:
  ; @pc 0x8000dc94c word 0x721d015f
  %r5073.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5073 = load i64, ptr %r5073.p, align 8, !alias.scope !3, !noalias !4
  %c5074 = trunc i64 %r5073 to i32
  %t5075 = and i32 %c5074, 8
  %fn5076 = icmp slt i32 %t5075, 0
  %fz5077 = icmp eq i32 %t5075, 0
  %nz5078 = zext i1 %fn5076 to i64
  %zz5079 = zext i1 %fz5077 to i64
  %ns5080 = shl i64 %nz5078, 31
  %zs5081 = shl i64 %zz5079, 30
  %nzcv5082 = or i64 %ns5080, %zs5081
  %wp5083 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5082, ptr %wp5083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc950 word 0x5280002b
  %c5084 = zext i32 1 to i64
  %wp5085 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5084, ptr %wp5085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc954 word 0x1a8b056b
  %r5086.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5086 = load i64, ptr %r5086.p, align 8, !alias.scope !3, !noalias !4
  %c5087 = trunc i64 %r5086 to i32
  %r5088.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5088 = load i64, ptr %r5088.p, align 8, !alias.scope !3, !noalias !4
  %c5089 = trunc i64 %r5088 to i32
  %t5090 = add i32 %c5089, 1
  %r5091.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5091 = load i64, ptr %r5091.p, align 8, !alias.scope !3, !noalias !4
  %fsh5093 = lshr i64 %r5091, 30
  %cond5092 = trunc i64 %fsh5093 to i1
  %sel5094 = select i1 %cond5092, i32 %c5087, i32 %t5090
  %c5095 = zext i32 %sel5094 to i64
  %wp5096 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5095, ptr %wp5096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc958 word 0x17fffca5
  br label %L_8000dbbec
L_8000dc95c:
  ; @pc 0x8000dc95c word 0x52800088
  %c5097 = zext i32 4 to i64
  %wp5098 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5097, ptr %wp5098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc960 word 0x39065268
  %r5099.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5099 = load i64, ptr %r5099.p, align 8, !alias.scope !3, !noalias !4
  %t5100 = add i64 %r5099, 404
  %r5101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5101 = load i64, ptr %r5101.p, align 8, !alias.scope !3, !noalias !4
  %c5102 = trunc i64 %r5101 to i32
  %c5103 = trunc i32 %c5102 to i8
  %gmp5104 = inttoptr i64 %t5100 to ptr
  store i8 %c5103, ptr %gmp5104, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc964 word 0x17fffd6d
  br label %L_8000dbf18
L_8000dc968:
  ; @pc 0x8000dc968 word 0xf9401261
  %r5105.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5105 = load i64, ptr %r5105.p, align 8, !alias.scope !3, !noalias !4
  %t5106 = add i64 %r5105, 32
  %gmp5107 = inttoptr i64 %t5106 to ptr
  %gml5108 = load i64, ptr %gmp5107, align 1, !alias.scope !4, !noalias !3
  %wp5109 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5108, ptr %wp5109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc96c word 0x13001c96
  %r5110.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5110 = load i64, ptr %r5110.p, align 8, !alias.scope !3, !noalias !4
  %c5111 = trunc i64 %r5110 to i32
  %t5112 = lshr i32 %c5111, 7
  %t5113 = and i32 %t5112, 1
  %t5114 = sub i32 0, %t5113
  %t5115 = and i32 %t5114, -256
  %t5116 = and i32 %c5111, 255
  %t5117 = or i32 %t5115, %t5116
  %c5118 = zext i32 %t5117 to i64
  %wp5119 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c5118, ptr %wp5119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc970 word 0x53061903
  %r5120.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5120 = load i64, ptr %r5120.p, align 8, !alias.scope !3, !noalias !4
  %c5121 = trunc i64 %r5120 to i32
  %ror5122 = call i32 @llvm.fshr.i32(i32 %c5121, i32 %c5121, i32 6)
  %t5123 = and i32 %ror5122, 1
  %c5124 = zext i32 %t5123 to i64
  %wp5125 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5124, ptr %wp5125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc974 word 0xaa1a03e0
  %r5126.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5126 = load i64, ptr %r5126.p, align 8, !alias.scope !3, !noalias !4
  %t5127 = or i64 0, %r5126
  %wp5128 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5127, ptr %wp5128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc978 word 0x2a1603e2
  %r5129.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5129 = load i64, ptr %r5129.p, align 8, !alias.scope !3, !noalias !4
  %c5130 = trunc i64 %r5129 to i32
  %t5131 = or i32 0, %c5130
  %c5132 = zext i32 %t5131 to i64
  %wp5133 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5132, ptr %wp5133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc97c word 0xaa0503f4
  %r5134.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5134 = load i64, ptr %r5134.p, align 8, !alias.scope !3, !noalias !4
  %t5135 = or i64 0, %r5134
  %wp5136 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5135, ptr %wp5136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc980 word 0x949d8c3b
  %wp5137 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641924, ptr %wp5137, align 8, !alias.scope !3, !noalias !4
  call void @f_80283fa6c(ptr %c)
  ; @pc 0x8000dc984 word 0xf9403348
  %r5138.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5138 = load i64, ptr %r5138.p, align 8, !alias.scope !3, !noalias !4
  %t5139 = add i64 %r5138, 96
  %gmp5140 = inttoptr i64 %t5139 to ptr
  %gml5141 = load i64, ptr %gmp5140, align 1, !alias.scope !4, !noalias !3
  %wp5142 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5141, ptr %wp5142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc988 word 0x52800d09
  %c5143 = zext i32 104 to i64
  %wp5144 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5143, ptr %wp5144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc98c word 0xaa1a03e0
  %r5145.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5145 = load i64, ptr %r5145.p, align 8, !alias.scope !3, !noalias !4
  %t5146 = or i64 0, %r5145
  %wp5147 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5146, ptr %wp5147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc990 word 0xf9401261
  %r5148.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5148 = load i64, ptr %r5148.p, align 8, !alias.scope !3, !noalias !4
  %t5149 = add i64 %r5148, 32
  %gmp5150 = inttoptr i64 %t5149 to ptr
  %gml5151 = load i64, ptr %gmp5150, align 1, !alias.scope !4, !noalias !3
  %wp5152 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5151, ptr %wp5152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc994 word 0x2a1503e5
  %r5153.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5153 = load i64, ptr %r5153.p, align 8, !alias.scope !3, !noalias !4
  %c5154 = trunc i64 %r5153 to i32
  %t5155 = or i32 0, %c5154
  %c5156 = zext i32 %t5155 to i64
  %wp5157 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5156, ptr %wp5157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc998 word 0x9b2922c8
  %r5158.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5158 = load i64, ptr %r5158.p, align 8, !alias.scope !3, !noalias !4
  %c5159 = trunc i64 %r5158 to i32
  %c5160 = sext i32 %c5159 to i64
  %r5161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5161 = load i64, ptr %r5161.p, align 8, !alias.scope !3, !noalias !4
  %c5162 = trunc i64 %r5161 to i32
  %c5163 = sext i32 %c5162 to i64
  %t5164 = mul i64 %c5160, %c5163
  %r5165.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5165 = load i64, ptr %r5165.p, align 8, !alias.scope !3, !noalias !4
  %t5166 = add i64 %r5165, %t5164
  %wp5167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5166, ptr %wp5167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc99c word 0xf9400282
  %r5168.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5168 = load i64, ptr %r5168.p, align 8, !alias.scope !3, !noalias !4
  %gmp5169 = inttoptr i64 %r5168 to ptr
  %gml5170 = load i64, ptr %gmp5169, align 1, !alias.scope !4, !noalias !3
  %wp5171 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml5170, ptr %wp5171, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9a0 word 0x3940c264
  %r5172.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5172 = load i64, ptr %r5172.p, align 8, !alias.scope !3, !noalias !4
  %t5173 = add i64 %r5172, 48
  %gmp5174 = inttoptr i64 %t5173 to ptr
  %gml5175 = load i8, ptr %gmp5174, align 1, !alias.scope !4, !noalias !3
  %c5176 = zext i8 %gml5175 to i64
  %wp5177 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5176, ptr %wp5177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9a4 word 0xf9402103
  %r5178.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5178 = load i64, ptr %r5178.p, align 8, !alias.scope !3, !noalias !4
  %t5179 = add i64 %r5178, 64
  %gmp5180 = inttoptr i64 %t5179 to ptr
  %gml5181 = load i64, ptr %gmp5180, align 1, !alias.scope !4, !noalias !3
  %wp5182 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml5181, ptr %wp5182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9a8 word 0x949d87bb
  %wp5183 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641964, ptr %wp5183, align 8, !alias.scope !3, !noalias !4
  call void @f_80283e894(ptr %c)
  ; @pc 0x8000dc9ac word 0x17fffce2
  br label %L_8000dbd34
L_8000dc9b0:
  ; @pc 0x8000dc9b0 word 0xd001c405
  %wp5184 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 34419892224, ptr %wp5184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9b4 word 0xf941b8a5
  %r5185.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5185 = load i64, ptr %r5185.p, align 8, !alias.scope !3, !noalias !4
  %t5186 = add i64 %r5185, 880
  %gmp5187 = inttoptr i64 %t5186 to ptr
  %gml5188 = load i64, ptr %gmp5187, align 1, !alias.scope !4, !noalias !3
  %wp5189 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml5188, ptr %wp5189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9b8 word 0x17fffc61
  br label %L_8000dbb3c
L_8000dc9bc:
  ; @pc 0x8000dc9bc word 0x79402b49
  %r5190.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5190 = load i64, ptr %r5190.p, align 8, !alias.scope !3, !noalias !4
  %t5191 = add i64 %r5190, 20
  %gmp5192 = inttoptr i64 %t5191 to ptr
  %gml5193 = load i16, ptr %gmp5192, align 1, !alias.scope !4, !noalias !3
  %c5194 = zext i16 %gml5193 to i64
  %wp5195 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5194, ptr %wp5195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9c0 word 0xaa0503f7
  %r5196.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5196 = load i64, ptr %r5196.p, align 8, !alias.scope !3, !noalias !4
  %t5197 = or i64 0, %r5196
  %wp5198 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t5197, ptr %wp5198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9c4 word 0xaa0403f6
  %r5199.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5199 = load i64, ptr %r5199.p, align 8, !alias.scope !3, !noalias !4
  %t5200 = or i64 0, %r5199
  %wp5201 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5200, ptr %wp5201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9c8 word 0xaa1a03f5
  %r5202.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5202 = load i64, ptr %r5202.p, align 8, !alias.scope !3, !noalias !4
  %t5203 = or i64 0, %r5202
  %wp5204 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t5203, ptr %wp5204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9cc word 0x52003d29
  %r5205.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5205 = load i64, ptr %r5205.p, align 8, !alias.scope !3, !noalias !4
  %c5206 = trunc i64 %r5205 to i32
  %t5207 = xor i32 %c5206, 65535
  %c5208 = zext i32 %t5207 to i64
  %wp5209 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5208, ptr %wp5209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9d0 word 0x0a090114
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %c5211 = trunc i64 %r5210 to i32
  %r5212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5212 = load i64, ptr %r5212.p, align 8, !alias.scope !3, !noalias !4
  %c5213 = trunc i64 %r5212 to i32
  %t5214 = and i32 %c5213, %c5211
  %c5215 = zext i32 %t5214 to i64
  %wp5216 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c5215, ptr %wp5216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9d4 word 0x79417e68
  %r5217.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5217 = load i64, ptr %r5217.p, align 8, !alias.scope !3, !noalias !4
  %t5218 = add i64 %r5217, 190
  %gmp5219 = inttoptr i64 %t5218 to ptr
  %gml5220 = load i16, ptr %gmp5219, align 1, !alias.scope !4, !noalias !3
  %c5221 = zext i16 %gml5220 to i64
  %wp5222 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5221, ptr %wp5222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9d8 word 0x6a28029f
  %r5223.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5223 = load i64, ptr %r5223.p, align 8, !alias.scope !3, !noalias !4
  %c5224 = trunc i64 %r5223 to i32
  %t5225 = xor i32 %c5224, -1
  %r5226.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5226 = load i64, ptr %r5226.p, align 8, !alias.scope !3, !noalias !4
  %c5227 = trunc i64 %r5226 to i32
  %t5228 = and i32 %c5227, %t5225
  %fn5229 = icmp slt i32 %t5228, 0
  %fz5230 = icmp eq i32 %t5228, 0
  %nz5231 = zext i1 %fn5229 to i64
  %zz5232 = zext i1 %fz5230 to i64
  %ns5233 = shl i64 %nz5231, 31
  %zs5234 = shl i64 %zz5232, 30
  %nzcv5235 = or i64 %ns5233, %zs5234
  %wp5236 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5235, ptr %wp5236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9dc word 0x540029e1
  %r5237.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5237 = load i64, ptr %r5237.p, align 8, !alias.scope !3, !noalias !4
  %fsh5239 = lshr i64 %r5237, 30
  %ftr5240 = trunc i64 %fsh5239 to i1
  %cond5238 = xor i1 %ftr5240, true
  br i1 %cond5238, label %L_8000dcf18, label %L_8000dc9e0
L_8000dc9e0:
  ; @pc 0x8000dc9e0 word 0xaa1503fa
  %r5241.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5241 = load i64, ptr %r5241.p, align 8, !alias.scope !3, !noalias !4
  %t5242 = or i64 0, %r5241
  %wp5243 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5242, ptr %wp5243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9e4 word 0xaa1603e4
  %r5244.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5244 = load i64, ptr %r5244.p, align 8, !alias.scope !3, !noalias !4
  %t5245 = or i64 0, %r5244
  %wp5246 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t5245, ptr %wp5246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9e8 word 0x79017e74
  %r5247.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5247 = load i64, ptr %r5247.p, align 8, !alias.scope !3, !noalias !4
  %t5248 = add i64 %r5247, 190
  %r5249.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5249 = load i64, ptr %r5249.p, align 8, !alias.scope !3, !noalias !4
  %c5250 = trunc i64 %r5249 to i32
  %c5251 = trunc i32 %c5250 to i16
  %gmp5252 = inttoptr i64 %t5248 to ptr
  store i16 %c5251, ptr %gmp5252, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc9ec word 0xaa1703e5
  %r5253.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5253 = load i64, ptr %r5253.p, align 8, !alias.scope !3, !noalias !4
  %t5254 = or i64 0, %r5253
  %wp5255 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t5254, ptr %wp5255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9f0 word 0x17fffc9a
  br label %L_8000dbc58
L_8000dc9f4:
  ; @pc 0x8000dc9f4 word 0xf9400749
  %r5256.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5256 = load i64, ptr %r5256.p, align 8, !alias.scope !3, !noalias !4
  %t5257 = add i64 %r5256, 8
  %gmp5258 = inttoptr i64 %t5257 to ptr
  %gml5259 = load i64, ptr %gmp5258, align 1, !alias.scope !4, !noalias !3
  %wp5260 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5259, ptr %wp5260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9f8 word 0x5280170a
  %c5261 = zext i32 184 to i64
  %wp5262 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5261, ptr %wp5262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc9fc word 0x2a1503e3
  %r5263.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5263 = load i64, ptr %r5263.p, align 8, !alias.scope !3, !noalias !4
  %c5264 = trunc i64 %r5263 to i32
  %t5265 = or i32 0, %c5264
  %c5266 = zext i32 %t5265 to i64
  %wp5267 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5266, ptr %wp5267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca00 word 0xf9401261
  %r5268.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5268 = load i64, ptr %r5268.p, align 8, !alias.scope !3, !noalias !4
  %t5269 = add i64 %r5268, 32
  %gmp5270 = inttoptr i64 %t5269 to ptr
  %gml5271 = load i64, ptr %gmp5270, align 1, !alias.scope !4, !noalias !3
  %wp5272 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml5271, ptr %wp5272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca04 word 0xf9408e62
  %r5273.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5273 = load i64, ptr %r5273.p, align 8, !alias.scope !3, !noalias !4
  %t5274 = add i64 %r5273, 280
  %gmp5275 = inttoptr i64 %t5274 to ptr
  %gml5276 = load i64, ptr %gmp5275, align 1, !alias.scope !4, !noalias !3
  %wp5277 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml5276, ptr %wp5277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca08 word 0xf9401d29
  %r5278.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5278 = load i64, ptr %r5278.p, align 8, !alias.scope !3, !noalias !4
  %t5279 = add i64 %r5278, 56
  %gmp5280 = inttoptr i64 %t5279 to ptr
  %gml5281 = load i64, ptr %gmp5280, align 1, !alias.scope !4, !noalias !3
  %wp5282 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5281, ptr %wp5282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca0c word 0x9baa2508
  %r5283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5283 = load i64, ptr %r5283.p, align 8, !alias.scope !3, !noalias !4
  %c5284 = trunc i64 %r5283 to i32
  %c5285 = zext i32 %c5284 to i64
  %r5286.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5286 = load i64, ptr %r5286.p, align 8, !alias.scope !3, !noalias !4
  %c5287 = trunc i64 %r5286 to i32
  %c5288 = zext i32 %c5287 to i64
  %t5289 = mul i64 %c5285, %c5288
  %r5290.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5290 = load i64, ptr %r5290.p, align 8, !alias.scope !3, !noalias !4
  %t5291 = add i64 %r5290, %t5289
  %wp5292 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5291, ptr %wp5292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca10 word 0x91012100
  %r5293.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5293 = load i64, ptr %r5293.p, align 8, !alias.scope !3, !noalias !4
  %t5294 = add i64 %r5293, 72
  %wp5295 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5294, ptr %wp5295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca14 word 0x949d7966
  %wp5296 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642072, ptr %wp5296, align 8, !alias.scope !3, !noalias !4
  call void @f_80283afac(ptr %c)
  ; @pc 0x8000dca18 word 0x17fffcc9
  br label %L_8000dbd3c
L_8000dca1c:
  ; @pc 0x8000dca1c word 0x39411f48
  %r5297.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5297 = load i64, ptr %r5297.p, align 8, !alias.scope !3, !noalias !4
  %t5298 = add i64 %r5297, 71
  %gmp5299 = inttoptr i64 %t5298 to ptr
  %gml5300 = load i8, ptr %gmp5299, align 1, !alias.scope !4, !noalias !3
  %c5301 = zext i8 %gml5300 to i64
  %wp5302 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5301, ptr %wp5302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca20 word 0x361798a8
  %r5303.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5303 = load i64, ptr %r5303.p, align 8, !alias.scope !3, !noalias !4
  %t5304 = and i64 %r5303, 4
  %cmp5305 = icmp eq i64 %t5304, 0
  br i1 %cmp5305, label %L_8000dbd34, label %L_8000dca24_ft
L_8000dca6c:
  ; @pc 0x8000dca6c word 0xaa1603e0
  %r5413.p = getelementptr inbounds i8, ptr %c, i64 176
  %r5413 = load i64, ptr %r5413.p, align 8, !alias.scope !3, !noalias !4
  %t5414 = or i64 0, %r5413
  %wp5415 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5414, ptr %wp5415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca70 word 0xaa1703e1
  %r5416.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5416 = load i64, ptr %r5416.p, align 8, !alias.scope !3, !noalias !4
  %t5417 = or i64 0, %r5416
  %wp5418 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5417, ptr %wp5418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca74 word 0x52802003
  %c5419 = zext i32 256 to i64
  %wp5420 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5419, ptr %wp5420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca78 word 0x2a1503e4
  %r5421.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5421 = load i64, ptr %r5421.p, align 8, !alias.scope !3, !noalias !4
  %c5422 = trunc i64 %r5421 to i32
  %t5423 = or i32 0, %c5422
  %c5424 = zext i32 %t5423 to i64
  %wp5425 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5424, ptr %wp5425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca7c word 0x949bdac6
  %wp5426 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642176, ptr %wp5426, align 8, !alias.scope !3, !noalias !4
  call void @f_8027d3594(ptr %c)
  ; @pc 0x8000dca80 word 0xaa1403fa
  %r5427.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5427 = load i64, ptr %r5427.p, align 8, !alias.scope !3, !noalias !4
  %t5428 = or i64 0, %r5427
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t5428, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca84 word 0x17fffcac
  br label %L_8000dbd34
L_8000dca88:
  ; @pc 0x8000dca88 word 0x5280002a
  %c5430 = zext i32 1 to i64
  %wp5431 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5430, ptr %wp5431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca8c word 0x17fffc9c
  br label %L_8000dbcfc
L_8000dca90:
  ; @pc 0x8000dca90 word 0x5280002d
  %c5432 = zext i32 1 to i64
  %wp5433 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c5432, ptr %wp5433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca94 word 0x17fffcbd
  br label %L_8000dbd88
L_8000dca98:
  ; @pc 0x8000dca98 word 0xf9401008
  %r5434.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5434 = load i64, ptr %r5434.p, align 8, !alias.scope !3, !noalias !4
  %t5435 = add i64 %r5434, 32
  %gmp5436 = inttoptr i64 %t5435 to ptr
  %gml5437 = load i64, ptr %gmp5436, align 1, !alias.scope !4, !noalias !3
  %wp5438 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5437, ptr %wp5438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca9c word 0x52800909
  %c5439 = zext i32 72 to i64
  %wp5440 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5439, ptr %wp5440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaa0 word 0x9ba922a9
  %r5441.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5441 = load i64, ptr %r5441.p, align 8, !alias.scope !3, !noalias !4
  %c5442 = trunc i64 %r5441 to i32
  %c5443 = zext i32 %c5442 to i64
  %r5444.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5444 = load i64, ptr %r5444.p, align 8, !alias.scope !3, !noalias !4
  %c5445 = trunc i64 %r5444 to i32
  %c5446 = zext i32 %c5445 to i64
  %t5447 = mul i64 %c5443, %c5446
  %r5448.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5448 = load i64, ptr %r5448.p, align 8, !alias.scope !3, !noalias !4
  %t5449 = add i64 %r5448, %t5447
  %wp5450 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5449, ptr %wp5450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaa4 word 0xf100011f
  %r5451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5451 = load i64, ptr %r5451.p, align 8, !alias.scope !3, !noalias !4
  %t5452 = sub i64 %r5451, 0
  %fn5453 = icmp slt i64 %t5452, 0
  %fz5454 = icmp eq i64 %t5452, 0
  %fc5455 = icmp uge i64 %r5451, 0
  %fx15456 = xor i64 %r5451, 0
  %fx25457 = xor i64 %r5451, %t5452
  %fva5458 = and i64 %fx15456, %fx25457
  %fv5459 = icmp slt i64 %fva5458, 0
  %nz5460 = zext i1 %fn5453 to i64
  %zz5461 = zext i1 %fz5454 to i64
  %cz5462 = zext i1 %fc5455 to i64
  %vz5463 = zext i1 %fv5459 to i64
  %ns5464 = shl i64 %nz5460, 31
  %zs5465 = shl i64 %zz5461, 30
  %cs5466 = shl i64 %cz5462, 29
  %vs5467 = shl i64 %vz5463, 28
  %nzor5468 = or i64 %ns5464, %zs5465
  %cvor5469 = or i64 %cs5466, %vs5467
  %nzcv5470 = or i64 %nzor5468, %cvor5469
  %wp5471 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5470, ptr %wp5471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaa8 word 0x9a8903e2
  %r5472.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5472 = load i64, ptr %r5472.p, align 8, !alias.scope !3, !noalias !4
  %r5473.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5473 = load i64, ptr %r5473.p, align 8, !alias.scope !3, !noalias !4
  %fsh5475 = lshr i64 %r5473, 30
  %cond5474 = trunc i64 %fsh5475 to i1
  %sel5476 = select i1 %cond5474, i64 0, i64 %r5472
  %wp5477 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %sel5476, ptr %wp5477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaac word 0x17fffff0
  br label %L_8000dca6c
L_8000dcab0:
  ; @pc 0x8000dcab0 word 0x385fc222
  %r5478.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5478 = load i64, ptr %r5478.p, align 8, !alias.scope !3, !noalias !4
  %t5479 = add i64 %r5478, -4
  %gmp5480 = inttoptr i64 %t5479 to ptr
  %gml5481 = load i8, ptr %gmp5480, align 1, !alias.scope !4, !noalias !3
  %c5482 = zext i8 %gml5481 to i64
  %wp5483 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5482, ptr %wp5483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcab4 word 0x39400643
  %r5484.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5484 = load i64, ptr %r5484.p, align 8, !alias.scope !3, !noalias !4
  %t5485 = add i64 %r5484, 1
  %gmp5486 = inttoptr i64 %t5485 to ptr
  %gml5487 = load i8, ptr %gmp5486, align 1, !alias.scope !4, !noalias !3
  %c5488 = zext i8 %gml5487 to i64
  %wp5489 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5488, ptr %wp5489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcab8 word 0x6b03005f
  %r5490.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5490 = load i64, ptr %r5490.p, align 8, !alias.scope !3, !noalias !4
  %c5491 = trunc i64 %r5490 to i32
  %r5492.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5492 = load i64, ptr %r5492.p, align 8, !alias.scope !3, !noalias !4
  %c5493 = trunc i64 %r5492 to i32
  %t5494 = sub i32 %c5491, %c5493
  %fn5495 = icmp slt i32 %t5494, 0
  %fz5496 = icmp eq i32 %t5494, 0
  %fc5497 = icmp uge i32 %c5491, %c5493
  %fx15498 = xor i32 %c5491, %c5493
  %fx25499 = xor i32 %c5491, %t5494
  %fva5500 = and i32 %fx15498, %fx25499
  %fv5501 = icmp slt i32 %fva5500, 0
  %nz5502 = zext i1 %fn5495 to i64
  %zz5503 = zext i1 %fz5496 to i64
  %cz5504 = zext i1 %fc5497 to i64
  %vz5505 = zext i1 %fv5501 to i64
  %ns5506 = shl i64 %nz5502, 31
  %zs5507 = shl i64 %zz5503, 30
  %cs5508 = shl i64 %cz5504, 29
  %vs5509 = shl i64 %vz5505, 28
  %nzor5510 = or i64 %ns5506, %zs5507
  %cvor5511 = or i64 %cs5508, %vs5509
  %nzcv5512 = or i64 %nzor5510, %cvor5511
  %wp5513 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5512, ptr %wp5513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcabc word 0x54ffc7a1
  %r5514.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5514 = load i64, ptr %r5514.p, align 8, !alias.scope !3, !noalias !4
  %fsh5516 = lshr i64 %r5514, 30
  %ftr5517 = trunc i64 %fsh5516 to i1
  %cond5515 = xor i1 %ftr5517, true
  br i1 %cond5515, label %L_8000dc3b0, label %L_8000dcac0_ft
L_8000dcaf4:
  ; @pc 0x8000dcaf4 word 0x7100159f
  %r5638.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5638 = load i64, ptr %r5638.p, align 8, !alias.scope !3, !noalias !4
  %c5639 = trunc i64 %r5638 to i32
  %t5640 = sub i32 %c5639, 5
  %fn5641 = icmp slt i32 %t5640, 0
  %fz5642 = icmp eq i32 %t5640, 0
  %fc5643 = icmp uge i32 %c5639, 5
  %fx15644 = xor i32 %c5639, 5
  %fx25645 = xor i32 %c5639, %t5640
  %fva5646 = and i32 %fx15644, %fx25645
  %fv5647 = icmp slt i32 %fva5646, 0
  %nz5648 = zext i1 %fn5641 to i64
  %zz5649 = zext i1 %fz5642 to i64
  %cz5650 = zext i1 %fc5643 to i64
  %vz5651 = zext i1 %fv5647 to i64
  %ns5652 = shl i64 %nz5648, 31
  %zs5653 = shl i64 %zz5649, 30
  %cs5654 = shl i64 %cz5650, 29
  %vs5655 = shl i64 %vz5651, 28
  %nzor5656 = or i64 %ns5652, %zs5653
  %cvor5657 = or i64 %cs5654, %vs5655
  %nzcv5658 = or i64 %nzor5656, %cvor5657
  %wp5659 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5658, ptr %wp5659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaf8 word 0x54ff9ca0
  %r5660.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5660 = load i64, ptr %r5660.p, align 8, !alias.scope !3, !noalias !4
  %fsh5662 = lshr i64 %r5660, 30
  %cond5661 = trunc i64 %fsh5662 to i1
  br i1 %cond5661, label %L_8000dbe8c, label %L_8000dcafc_ft
L_8000dcb00:
  ; @pc 0x8000dcb00 word 0x5280002c
  %c5663 = zext i32 1 to i64
  %wp5664 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c5663, ptr %wp5664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb04 word 0x7902626c
  %r5665.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5665 = load i64, ptr %r5665.p, align 8, !alias.scope !3, !noalias !4
  %t5666 = add i64 %r5665, 304
  %r5667.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5667 = load i64, ptr %r5667.p, align 8, !alias.scope !3, !noalias !4
  %c5668 = trunc i64 %r5667 to i32
  %c5669 = trunc i32 %c5668 to i16
  %gmp5670 = inttoptr i64 %t5666 to ptr
  store i16 %c5669, ptr %gmp5670, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcb08 word 0x17fffe02
  br label %L_8000dc310
L_8000dcb0c:
  ; @pc 0x8000dcb0c word 0x9001c408
  %wp5671 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp5671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb10 word 0xb9415662
  %r5672.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5672 = load i64, ptr %r5672.p, align 8, !alias.scope !3, !noalias !4
  %t5673 = add i64 %r5672, 340
  %gmp5674 = inttoptr i64 %t5673 to ptr
  %gml5675 = load i32, ptr %gmp5674, align 1, !alias.scope !4, !noalias !3
  %c5676 = zext i32 %gml5675 to i64
  %wp5677 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5676, ptr %wp5677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb14 word 0xaa1403e0
  %r5678.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5678 = load i64, ptr %r5678.p, align 8, !alias.scope !3, !noalias !4
  %t5679 = or i64 0, %r5678
  %wp5680 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5679, ptr %wp5680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb18 word 0xf940c908
  %r5681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5681 = load i64, ptr %r5681.p, align 8, !alias.scope !3, !noalias !4
  %t5682 = add i64 %r5681, 400
  %gmp5683 = inttoptr i64 %t5682 to ptr
  %gml5684 = load i64, ptr %gmp5683, align 1, !alias.scope !4, !noalias !3
  %wp5685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5684, ptr %wp5685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb1c word 0x52800061
  %c5686 = zext i32 3 to i64
  %wp5687 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5686, ptr %wp5687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb20 word 0xf9400108
  %r5688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5688 = load i64, ptr %r5688.p, align 8, !alias.scope !3, !noalias !4
  %gmp5689 = inttoptr i64 %r5688 to ptr
  %gml5690 = load i64, ptr %gmp5689, align 1, !alias.scope !4, !noalias !3
  %wp5691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5690, ptr %wp5691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb24 word 0xd63f0100
  %r5692.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5692 = load i64, ptr %r5692.p, align 8, !alias.scope !3, !noalias !4
  %fp5693 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5692, ptr %fp5693, align 8, !alias.scope !3, !noalias !4
  %wp5694 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642344, ptr %wp5694, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dcb28 word 0x9001c408
  %wp5695 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp5695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb2c word 0xaa1403e0
  %r5696.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5696 = load i64, ptr %r5696.p, align 8, !alias.scope !3, !noalias !4
  %t5697 = or i64 0, %r5696
  %wp5698 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5697, ptr %wp5698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb30 word 0xf940cd08
  %r5699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5699 = load i64, ptr %r5699.p, align 8, !alias.scope !3, !noalias !4
  %t5700 = add i64 %r5699, 408
  %gmp5701 = inttoptr i64 %t5700 to ptr
  %gml5702 = load i64, ptr %gmp5701, align 1, !alias.scope !4, !noalias !3
  %wp5703 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5702, ptr %wp5703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb34 word 0x52800061
  %c5704 = zext i32 3 to i64
  %wp5705 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5704, ptr %wp5705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb38 word 0x52801fe2
  %c5706 = zext i32 255 to i64
  %wp5707 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5706, ptr %wp5707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb3c word 0xf9400108
  %r5708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5708 = load i64, ptr %r5708.p, align 8, !alias.scope !3, !noalias !4
  %gmp5709 = inttoptr i64 %r5708 to ptr
  %gml5710 = load i64, ptr %gmp5709, align 1, !alias.scope !4, !noalias !3
  %wp5711 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5710, ptr %wp5711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb40 word 0xd63f0100
  %r5712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5712 = load i64, ptr %r5712.p, align 8, !alias.scope !3, !noalias !4
  %fp5713 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5712, ptr %fp5713, align 8, !alias.scope !3, !noalias !4
  %wp5714 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642372, ptr %wp5714, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dcb44 word 0x9001c408
  %wp5715 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp5715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb48 word 0xb9415262
  %r5716.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5716 = load i64, ptr %r5716.p, align 8, !alias.scope !3, !noalias !4
  %t5717 = add i64 %r5716, 336
  %gmp5718 = inttoptr i64 %t5717 to ptr
  %gml5719 = load i32, ptr %gmp5718, align 1, !alias.scope !4, !noalias !3
  %c5720 = zext i32 %gml5719 to i64
  %wp5721 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5720, ptr %wp5721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb4c word 0xaa1403e0
  %r5722.p = getelementptr inbounds i8, ptr %c, i64 160
  %r5722 = load i64, ptr %r5722.p, align 8, !alias.scope !3, !noalias !4
  %t5723 = or i64 0, %r5722
  %wp5724 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5723, ptr %wp5724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb50 word 0xf940d108
  %r5725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5725 = load i64, ptr %r5725.p, align 8, !alias.scope !3, !noalias !4
  %t5726 = add i64 %r5725, 416
  %gmp5727 = inttoptr i64 %t5726 to ptr
  %gml5728 = load i64, ptr %gmp5727, align 1, !alias.scope !4, !noalias !3
  %wp5729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5728, ptr %wp5729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb54 word 0x52800061
  %c5730 = zext i32 3 to i64
  %wp5731 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c5730, ptr %wp5731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb58 word 0xf9400108
  %r5732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5732 = load i64, ptr %r5732.p, align 8, !alias.scope !3, !noalias !4
  %gmp5733 = inttoptr i64 %r5732 to ptr
  %gml5734 = load i64, ptr %gmp5733, align 1, !alias.scope !4, !noalias !3
  %wp5735 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5734, ptr %wp5735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb5c word 0xd63f0100
  %r5736.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5736 = load i64, ptr %r5736.p, align 8, !alias.scope !3, !noalias !4
  %fp5737 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r5736, ptr %fp5737, align 8, !alias.scope !3, !noalias !4
  %wp5738 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642400, ptr %wp5738, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dcb60 word 0x17fffd92
  br label %L_8000dc1a8
L_8000dcb64:
  ; @pc 0x8000dcb64 word 0x5280002a
  %c5739 = zext i32 1 to i64
  %wp5740 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5739, ptr %wp5740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb68 word 0x17fffc2a
  br label %L_8000dbc10
L_8000dcb6c:
  ; @pc 0x8000dcb6c word 0x32000508
  %r5741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5741 = load i64, ptr %r5741.p, align 8, !alias.scope !3, !noalias !4
  %c5742 = trunc i64 %r5741 to i32
  %t5743 = or i32 %c5742, 3
  %c5744 = zext i32 %t5743 to i64
  %wp5745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5744, ptr %wp5745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb70 word 0x17fffc05
  br label %L_8000dbb84
L_8000dcb74:
  ; @pc 0x8000dcb74 word 0x2a1f03ea
  %t5746 = or i32 0, 0
  %c5747 = zext i32 %t5746 to i64
  %wp5748 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5747, ptr %wp5748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb78 word 0x17fffc28
  br label %L_8000dbc18
L_8000dcb7c:
  ; @pc 0x8000dcb7c word 0x2a1f03eb
  %t5749 = or i32 0, 0
  %c5750 = zext i32 %t5749 to i64
  %wp5751 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5750, ptr %wp5751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb80 word 0x17fffc2c
  br label %L_8000dbc30
L_8000dcb84:
  ; @pc 0x8000dcb84 word 0x52800028
  %c5752 = zext i32 1 to i64
  %wp5753 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5752, ptr %wp5753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb88 word 0x39066e6a
  %r5754.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5754 = load i64, ptr %r5754.p, align 8, !alias.scope !3, !noalias !4
  %t5755 = add i64 %r5754, 411
  %r5756.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5756 = load i64, ptr %r5756.p, align 8, !alias.scope !3, !noalias !4
  %c5757 = trunc i64 %r5756 to i32
  %c5758 = trunc i32 %c5757 to i8
  %gmp5759 = inttoptr i64 %t5755 to ptr
  store i8 %c5758, ptr %gmp5759, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcb8c word 0x3906726a
  %r5760.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5760 = load i64, ptr %r5760.p, align 8, !alias.scope !3, !noalias !4
  %t5761 = add i64 %r5760, 412
  %r5762.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5762 = load i64, ptr %r5762.p, align 8, !alias.scope !3, !noalias !4
  %c5763 = trunc i64 %r5762 to i32
  %c5764 = trunc i32 %c5763 to i8
  %gmp5765 = inttoptr i64 %t5761 to ptr
  store i8 %c5764, ptr %gmp5765, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcb90 word 0x17fffc29
  br label %L_8000dbc34
L_8000dcb94:
  ; @pc 0x8000dcb94 word 0xaa0503f5
  %r5766.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5766 = load i64, ptr %r5766.p, align 8, !alias.scope !3, !noalias !4
  %t5767 = or i64 0, %r5766
  %wp5768 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t5767, ptr %wp5768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb98 word 0xaa0403f4
  %r5769.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5769 = load i64, ptr %r5769.p, align 8, !alias.scope !3, !noalias !4
  %t5770 = or i64 0, %r5769
  %wp5771 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5770, ptr %wp5771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcb9c word 0xaa1f03ea
  %t5772 = or i64 0, 0
  %wp5773 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5772, ptr %wp5773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcba0 word 0x17fffdbe
  br label %L_8000dc298
L_8000dcba4:
  ; @pc 0x8000dcba4 word 0xb9007268
  %r5774.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5774 = load i64, ptr %r5774.p, align 8, !alias.scope !3, !noalias !4
  %t5775 = add i64 %r5774, 112
  %r5776.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5776 = load i64, ptr %r5776.p, align 8, !alias.scope !3, !noalias !4
  %c5777 = trunc i64 %r5776 to i32
  %gmp5778 = inttoptr i64 %t5775 to ptr
  store i32 %c5777, ptr %gmp5778, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcba8 word 0xf9400b08
  %r5779.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5779 = load i64, ptr %r5779.p, align 8, !alias.scope !3, !noalias !4
  %t5780 = add i64 %r5779, 16
  %gmp5781 = inttoptr i64 %t5780 to ptr
  %gml5782 = load i64, ptr %gmp5781, align 1, !alias.scope !4, !noalias !3
  %wp5783 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5782, ptr %wp5783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbac word 0xb9401108
  %r5784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5784 = load i64, ptr %r5784.p, align 8, !alias.scope !3, !noalias !4
  %t5785 = add i64 %r5784, 16
  %gmp5786 = inttoptr i64 %t5785 to ptr
  %gml5787 = load i32, ptr %gmp5786, align 1, !alias.scope !4, !noalias !3
  %c5788 = zext i32 %gml5787 to i64
  %wp5789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5788, ptr %wp5789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbb0 word 0x7200751f
  %r5790.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5790 = load i64, ptr %r5790.p, align 8, !alias.scope !3, !noalias !4
  %c5791 = trunc i64 %r5790 to i32
  %t5792 = and i32 %c5791, 1073741823
  %fn5793 = icmp slt i32 %t5792, 0
  %fz5794 = icmp eq i32 %t5792, 0
  %nz5795 = zext i1 %fn5793 to i64
  %zz5796 = zext i1 %fz5794 to i64
  %ns5797 = shl i64 %nz5795, 31
  %zs5798 = shl i64 %zz5796, 30
  %nzcv5799 = or i64 %ns5797, %zs5798
  %wp5800 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5799, ptr %wp5800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbb4 word 0xb81d83a8
  %r5801.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5801 = load i64, ptr %r5801.p, align 8, !alias.scope !3, !noalias !4
  %t5802 = add i64 %r5801, -40
  %r5803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5803 = load i64, ptr %r5803.p, align 8, !alias.scope !3, !noalias !4
  %c5804 = trunc i64 %r5803 to i32
  %gmp5805 = inttoptr i64 %t5802 to ptr
  store i32 %c5804, ptr %gmp5805, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcbb8 word 0x54ffcde0
  %r5806.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5806 = load i64, ptr %r5806.p, align 8, !alias.scope !3, !noalias !4
  %fsh5808 = lshr i64 %r5806, 30
  %cond5807 = trunc i64 %fsh5808 to i1
  br i1 %cond5807, label %L_8000dc574, label %L_8000dcbbc_ft
L_8000dcbd0:
  ; @pc 0x8000dcbd0 word 0xb85d83a8
  %r5825.p = getelementptr inbounds i8, ptr %c, i64 232
  %r5825 = load i64, ptr %r5825.p, align 8, !alias.scope !3, !noalias !4
  %t5826 = add i64 %r5825, -40
  %gmp5827 = inttoptr i64 %t5826 to ptr
  %gml5828 = load i32, ptr %gmp5827, align 1, !alias.scope !4, !noalias !3
  %c5829 = zext i32 %gml5828 to i64
  %wp5830 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5829, ptr %wp5830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbd4 word 0xaa0503f4
  %r5831.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5831 = load i64, ptr %r5831.p, align 8, !alias.scope !3, !noalias !4
  %t5832 = or i64 0, %r5831
  %wp5833 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5832, ptr %wp5833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbd8 word 0xaa0403f9
  %r5834.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5834 = load i64, ptr %r5834.p, align 8, !alias.scope !3, !noalias !4
  %t5835 = or i64 0, %r5834
  %wp5836 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5835, ptr %wp5836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbdc word 0x1adb2508
  %r5837.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5837 = load i64, ptr %r5837.p, align 8, !alias.scope !3, !noalias !4
  %c5838 = trunc i64 %r5837 to i32
  %r5839.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5839 = load i64, ptr %r5839.p, align 8, !alias.scope !3, !noalias !4
  %c5840 = trunc i64 %r5839 to i32
  %t5841 = and i32 %c5840, 31
  %t5842 = lshr i32 %c5838, %t5841
  %c5843 = zext i32 %t5842 to i64
  %wp5844 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5843, ptr %wp5844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbe0 word 0x36000d08
  %r5845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5845 = load i64, ptr %r5845.p, align 8, !alias.scope !3, !noalias !4
  %t5846 = and i64 %r5845, 1
  %cmp5847 = icmp eq i64 %t5846, 0
  br i1 %cmp5847, label %L_8000dcd80, label %L_8000dcbe4_ft
L_8000dcc7c:
  ; @pc 0x8000dcc7c word 0xf9402eac
  %r6076.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6076 = load i64, ptr %r6076.p, align 8, !alias.scope !3, !noalias !4
  %t6077 = add i64 %r6076, 88
  %gmp6078 = inttoptr i64 %t6077 to ptr
  %gml6079 = load i64, ptr %gmp6078, align 1, !alias.scope !4, !noalias !3
  %wp6080 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6079, ptr %wp6080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc80 word 0x9342fd6b
  %r6081.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6081 = load i64, ptr %r6081.p, align 8, !alias.scope !3, !noalias !4
  %ror6082 = call i64 @llvm.fshr.i64(i64 %r6081, i64 %r6081, i64 2)
  %t6083 = lshr i64 %r6081, 63
  %t6084 = and i64 %t6083, 1
  %t6085 = sub i64 0, %t6084
  %t6086 = and i64 %t6085, -4611686018427387904
  %t6087 = and i64 %ror6082, 4611686018427387903
  %t6088 = or i64 %t6086, %t6087
  %wp6089 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6088, ptr %wp6089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc84 word 0xb260056b
  %r6090.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6090 = load i64, ptr %r6090.p, align 8, !alias.scope !3, !noalias !4
  %t6091 = or i64 %r6090, 12884901888
  %wp6092 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6091, ptr %wp6092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc88 word 0xf9401aad
  %r6093.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6093 = load i64, ptr %r6093.p, align 8, !alias.scope !3, !noalias !4
  %t6094 = add i64 %r6093, 48
  %gmp6095 = inttoptr i64 %t6094 to ptr
  %gml6096 = load i64, ptr %gmp6095, align 1, !alias.scope !4, !noalias !3
  %wp6097 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6096, ptr %wp6097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc8c word 0xa900ad0a
  %r6098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6098 = load i64, ptr %r6098.p, align 8, !alias.scope !3, !noalias !4
  %t6099 = add i64 %r6098, 8
  %t6100 = add i64 %t6099, 8
  %r6101.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6101 = load i64, ptr %r6101.p, align 8, !alias.scope !3, !noalias !4
  %gmp6102 = inttoptr i64 %t6099 to ptr
  store i64 %r6101, ptr %gmp6102, align 1, !alias.scope !4, !noalias !3
  %r6103.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6103 = load i64, ptr %r6103.p, align 8, !alias.scope !3, !noalias !4
  %gmp6104 = inttoptr i64 %t6100 to ptr
  store i64 %r6103, ptr %gmp6104, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcc90 word 0x8b0a018b
  %r6105.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6105 = load i64, ptr %r6105.p, align 8, !alias.scope !3, !noalias !4
  %r6106.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6106 = load i64, ptr %r6106.p, align 8, !alias.scope !3, !noalias !4
  %t6107 = add i64 %r6105, %r6106
  %wp6108 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6107, ptr %wp6108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc94 word 0xcb0d016b
  %r6109.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6109 = load i64, ptr %r6109.p, align 8, !alias.scope !3, !noalias !4
  %r6110.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6110 = load i64, ptr %r6110.p, align 8, !alias.scope !3, !noalias !4
  %t6111 = sub i64 %r6109, %r6110
  %wp6112 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6111, ptr %wp6112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc98 word 0xf801850b
  %r6113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6113 = load i64, ptr %r6113.p, align 8, !alias.scope !3, !noalias !4
  %t6114 = add i64 %r6113, 24
  %r6115.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6115 = load i64, ptr %r6115.p, align 8, !alias.scope !3, !noalias !4
  %gmp6116 = inttoptr i64 %r6113 to ptr
  store i64 %r6115, ptr %gmp6116, align 1, !alias.scope !4, !noalias !3
  %wp6117 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6114, ptr %wp6117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc9c word 0xf9002abf
  %r6118.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6118 = load i64, ptr %r6118.p, align 8, !alias.scope !3, !noalias !4
  %t6119 = add i64 %r6118, 80
  %gmp6120 = inttoptr i64 %t6119 to ptr
  store i64 0, ptr %gmp6120, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcca0 word 0xf90022a9
  %r6121.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6121 = load i64, ptr %r6121.p, align 8, !alias.scope !3, !noalias !4
  %t6122 = add i64 %r6121, 64
  %r6123.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6123 = load i64, ptr %r6123.p, align 8, !alias.scope !3, !noalias !4
  %gmp6124 = inttoptr i64 %t6122 to ptr
  store i64 %r6123, ptr %gmp6124, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcca4
L_8000dcca4:
  ; @pc 0x8000dcca4 word 0x93401f89
  %r6125.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6125 = load i64, ptr %r6125.p, align 8, !alias.scope !3, !noalias !4
  %t6126 = lshr i64 %r6125, 7
  %t6127 = and i64 %t6126, 1
  %t6128 = sub i64 0, %t6127
  %t6129 = and i64 %t6128, -256
  %t6130 = and i64 %r6125, 255
  %t6131 = or i64 %t6129, %t6130
  %wp6132 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6131, ptr %wp6132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcca8 word 0x528002ea
  %c6133 = zext i32 23 to i64
  %wp6134 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6133, ptr %wp6134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccac word 0x72a0200a
  %r6135.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6135 = load i64, ptr %r6135.p, align 8, !alias.scope !3, !noalias !4
  %t6136 = and i64 %r6135, -4294901761
  %t6137 = or i64 %t6136, 16777216
  %c6138 = trunc i64 %t6137 to i32
  %c6139 = zext i32 %c6138 to i64
  %wp6140 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6139, ptr %wp6140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccb0 word 0xaa094149
  %r6141.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6141 = load i64, ptr %r6141.p, align 8, !alias.scope !3, !noalias !4
  %t6142 = shl i64 %r6141, 16
  %r6143.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6143 = load i64, ptr %r6143.p, align 8, !alias.scope !3, !noalias !4
  %t6144 = or i64 %r6143, %t6142
  %wp6145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6144, ptr %wp6145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccb4 word 0xa8815909
  %r6146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6146 = load i64, ptr %r6146.p, align 8, !alias.scope !3, !noalias !4
  %t6147 = add i64 %r6146, 8
  %r6148.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6148 = load i64, ptr %r6148.p, align 8, !alias.scope !3, !noalias !4
  %gmp6149 = inttoptr i64 %r6146 to ptr
  store i64 %r6148, ptr %gmp6149, align 1, !alias.scope !4, !noalias !3
  %r6150.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6150 = load i64, ptr %r6150.p, align 8, !alias.scope !3, !noalias !4
  %gmp6151 = inttoptr i64 %t6147 to ptr
  store i64 %r6150, ptr %gmp6151, align 1, !alias.scope !4, !noalias !3
  %t6152 = add i64 %r6146, 16
  %wp6153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6152, ptr %wp6153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccb8 word 0xf90012a8
  %r6154.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6154 = load i64, ptr %r6154.p, align 8, !alias.scope !3, !noalias !4
  %t6155 = add i64 %r6154, 32
  %r6156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6156 = load i64, ptr %r6156.p, align 8, !alias.scope !3, !noalias !4
  %gmp6157 = inttoptr i64 %t6155 to ptr
  store i64 %r6156, ptr %gmp6157, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dccbc word 0x52800028
  %c6158 = zext i32 1 to i64
  %wp6159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6158, ptr %wp6159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccc0 word 0x39004aa8
  %r6160.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6160 = load i64, ptr %r6160.p, align 8, !alias.scope !3, !noalias !4
  %t6161 = add i64 %r6160, 18
  %r6162.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6162 = load i64, ptr %r6162.p, align 8, !alias.scope !3, !noalias !4
  %c6163 = trunc i64 %r6162 to i32
  %c6164 = trunc i32 %c6163 to i8
  %gmp6165 = inttoptr i64 %t6161 to ptr
  store i8 %c6164, ptr %gmp6165, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dccc4
L_8000dccc4:
  ; @pc 0x8000dccc4 word 0x52801fe8
  %c6166 = zext i32 255 to i64
  %wp6167 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6166, ptr %wp6167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccc8 word 0x6a7c211f
  %r6168.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6168 = load i64, ptr %r6168.p, align 8, !alias.scope !3, !noalias !4
  %c6169 = trunc i64 %r6168 to i32
  %t6170 = lshr i32 %c6169, 8
  %t6171 = xor i32 %t6170, -1
  %r6172.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6172 = load i64, ptr %r6172.p, align 8, !alias.scope !3, !noalias !4
  %c6173 = trunc i64 %r6172 to i32
  %t6174 = and i32 %c6173, %t6171
  %fn6175 = icmp slt i32 %t6174, 0
  %fz6176 = icmp eq i32 %t6174, 0
  %nz6177 = zext i1 %fn6175 to i64
  %zz6178 = zext i1 %fz6176 to i64
  %ns6179 = shl i64 %nz6177, 31
  %zs6180 = shl i64 %zz6178, 30
  %nzcv6181 = or i64 %ns6179, %zs6180
  %wp6182 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6181, ptr %wp6182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcccc word 0x54000ba1
  %r6183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6183 = load i64, ptr %r6183.p, align 8, !alias.scope !3, !noalias !4
  %fsh6185 = lshr i64 %r6183, 30
  %ftr6186 = trunc i64 %fsh6185 to i1
  %cond6184 = xor i1 %ftr6186, true
  br i1 %cond6184, label %L_8000dce40, label %L_8000dccd0
L_8000dccd0:
  ; @pc 0x8000dccd0 word 0x52801fe8
  %c6187 = zext i32 255 to i64
  %wp6188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6187, ptr %wp6188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccd4 word 0x6a7c411f
  %r6189.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6189 = load i64, ptr %r6189.p, align 8, !alias.scope !3, !noalias !4
  %c6190 = trunc i64 %r6189 to i32
  %t6191 = lshr i32 %c6190, 16
  %t6192 = xor i32 %t6191, -1
  %r6193.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6193 = load i64, ptr %r6193.p, align 8, !alias.scope !3, !noalias !4
  %c6194 = trunc i64 %r6193 to i32
  %t6195 = and i32 %c6194, %t6192
  %fn6196 = icmp slt i32 %t6195, 0
  %fz6197 = icmp eq i32 %t6195, 0
  %nz6198 = zext i1 %fn6196 to i64
  %zz6199 = zext i1 %fz6197 to i64
  %ns6200 = shl i64 %nz6198, 31
  %zs6201 = shl i64 %zz6199, 30
  %nzcv6202 = or i64 %ns6200, %zs6201
  %wp6203 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6202, ptr %wp6203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccd8 word 0x54000601
  %r6204.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6204 = load i64, ptr %r6204.p, align 8, !alias.scope !3, !noalias !4
  %fsh6206 = lshr i64 %r6204, 30
  %ftr6207 = trunc i64 %fsh6206 to i1
  %cond6205 = xor i1 %ftr6207, true
  br i1 %cond6205, label %L_8000dcd98, label %L_8000dccdc
L_8000dccdc:
  ; @pc 0x8000dccdc word 0x7103feff
  %r6208.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6208 = load i64, ptr %r6208.p, align 8, !alias.scope !3, !noalias !4
  %c6209 = trunc i64 %r6208 to i32
  %t6210 = sub i32 %c6209, 255
  %fn6211 = icmp slt i32 %t6210, 0
  %fz6212 = icmp eq i32 %t6210, 0
  %fc6213 = icmp uge i32 %c6209, 255
  %fx16214 = xor i32 %c6209, 255
  %fx26215 = xor i32 %c6209, %t6210
  %fva6216 = and i32 %fx16214, %fx26215
  %fv6217 = icmp slt i32 %fva6216, 0
  %nz6218 = zext i1 %fn6211 to i64
  %zz6219 = zext i1 %fz6212 to i64
  %cz6220 = zext i1 %fc6213 to i64
  %vz6221 = zext i1 %fv6217 to i64
  %ns6222 = shl i64 %nz6218, 31
  %zs6223 = shl i64 %zz6219, 30
  %cs6224 = shl i64 %cz6220, 29
  %vs6225 = shl i64 %vz6221, 28
  %nzor6226 = or i64 %ns6222, %zs6223
  %cvor6227 = or i64 %cs6224, %vs6225
  %nzcv6228 = or i64 %nzor6226, %cvor6227
  %wp6229 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6228, ptr %wp6229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcce0 word 0x54000500
  %r6230.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6230 = load i64, ptr %r6230.p, align 8, !alias.scope !3, !noalias !4
  %fsh6232 = lshr i64 %r6230, 30
  %cond6231 = trunc i64 %fsh6232 to i1
  br i1 %cond6231, label %L_8000dcd80, label %L_8000dcce4_ft
L_8000dcd34:
  ; @pc 0x8000dcd34 word 0xf9402eac
  %r6350.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6350 = load i64, ptr %r6350.p, align 8, !alias.scope !3, !noalias !4
  %t6351 = add i64 %r6350, 88
  %gmp6352 = inttoptr i64 %t6351 to ptr
  %gml6353 = load i64, ptr %gmp6352, align 1, !alias.scope !4, !noalias !3
  %wp6354 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6353, ptr %wp6354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd38 word 0x9342fd6b
  %r6355.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6355 = load i64, ptr %r6355.p, align 8, !alias.scope !3, !noalias !4
  %ror6356 = call i64 @llvm.fshr.i64(i64 %r6355, i64 %r6355, i64 2)
  %t6357 = lshr i64 %r6355, 63
  %t6358 = and i64 %t6357, 1
  %t6359 = sub i64 0, %t6358
  %t6360 = and i64 %t6359, -4611686018427387904
  %t6361 = and i64 %ror6356, 4611686018427387903
  %t6362 = or i64 %t6360, %t6361
  %wp6363 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6362, ptr %wp6363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd3c word 0xb260056b
  %r6364.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6364 = load i64, ptr %r6364.p, align 8, !alias.scope !3, !noalias !4
  %t6365 = or i64 %r6364, 12884901888
  %wp6366 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6365, ptr %wp6366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd40 word 0xf9401aad
  %r6367.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6367 = load i64, ptr %r6367.p, align 8, !alias.scope !3, !noalias !4
  %t6368 = add i64 %r6367, 48
  %gmp6369 = inttoptr i64 %t6368 to ptr
  %gml6370 = load i64, ptr %gmp6369, align 1, !alias.scope !4, !noalias !3
  %wp6371 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6370, ptr %wp6371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd44 word 0xa900ad0a
  %r6372.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6372 = load i64, ptr %r6372.p, align 8, !alias.scope !3, !noalias !4
  %t6373 = add i64 %r6372, 8
  %t6374 = add i64 %t6373, 8
  %r6375.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6375 = load i64, ptr %r6375.p, align 8, !alias.scope !3, !noalias !4
  %gmp6376 = inttoptr i64 %t6373 to ptr
  store i64 %r6375, ptr %gmp6376, align 1, !alias.scope !4, !noalias !3
  %r6377.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6377 = load i64, ptr %r6377.p, align 8, !alias.scope !3, !noalias !4
  %gmp6378 = inttoptr i64 %t6374 to ptr
  store i64 %r6377, ptr %gmp6378, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcd48 word 0x8b0a018b
  %r6379.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6379 = load i64, ptr %r6379.p, align 8, !alias.scope !3, !noalias !4
  %r6380.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6380 = load i64, ptr %r6380.p, align 8, !alias.scope !3, !noalias !4
  %t6381 = add i64 %r6379, %r6380
  %wp6382 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6381, ptr %wp6382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd4c word 0xcb0d016b
  %r6383.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6383 = load i64, ptr %r6383.p, align 8, !alias.scope !3, !noalias !4
  %r6384.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6384 = load i64, ptr %r6384.p, align 8, !alias.scope !3, !noalias !4
  %t6385 = sub i64 %r6383, %r6384
  %wp6386 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6385, ptr %wp6386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd50 word 0xf801850b
  %r6387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6387 = load i64, ptr %r6387.p, align 8, !alias.scope !3, !noalias !4
  %t6388 = add i64 %r6387, 24
  %r6389.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6389 = load i64, ptr %r6389.p, align 8, !alias.scope !3, !noalias !4
  %gmp6390 = inttoptr i64 %r6387 to ptr
  store i64 %r6389, ptr %gmp6390, align 1, !alias.scope !4, !noalias !3
  %wp6391 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6388, ptr %wp6391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd54 word 0xf9002abf
  %r6392.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6392 = load i64, ptr %r6392.p, align 8, !alias.scope !3, !noalias !4
  %t6393 = add i64 %r6392, 80
  %gmp6394 = inttoptr i64 %t6393 to ptr
  store i64 0, ptr %gmp6394, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcd58 word 0xf90022a9
  %r6395.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6395 = load i64, ptr %r6395.p, align 8, !alias.scope !3, !noalias !4
  %t6396 = add i64 %r6395, 64
  %r6397.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6397 = load i64, ptr %r6397.p, align 8, !alias.scope !3, !noalias !4
  %gmp6398 = inttoptr i64 %t6396 to ptr
  store i64 %r6397, ptr %gmp6398, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcd5c
L_8000dcd5c:
  ; @pc 0x8000dcd5c word 0x528002ea
  %c6399 = zext i32 23 to i64
  %wp6400 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6399, ptr %wp6400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd60 word 0x72a0200a
  %r6401.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6401 = load i64, ptr %r6401.p, align 8, !alias.scope !3, !noalias !4
  %t6402 = and i64 %r6401, -4294901761
  %t6403 = or i64 %t6402, 16777216
  %c6404 = trunc i64 %t6403 to i32
  %c6405 = zext i32 %c6404 to i64
  %wp6406 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6405, ptr %wp6406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd64 word 0x93401ee9
  %r6407.p = getelementptr inbounds i8, ptr %c, i64 184
  %r6407 = load i64, ptr %r6407.p, align 8, !alias.scope !3, !noalias !4
  %t6408 = lshr i64 %r6407, 7
  %t6409 = and i64 %t6408, 1
  %t6410 = sub i64 0, %t6409
  %t6411 = and i64 %t6410, -256
  %t6412 = and i64 %r6407, 255
  %t6413 = or i64 %t6411, %t6412
  %wp6414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6413, ptr %wp6414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd68 word 0x9114014a
  %r6415.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6415 = load i64, ptr %r6415.p, align 8, !alias.scope !3, !noalias !4
  %t6416 = add i64 %r6415, 1280
  %wp6417 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6416, ptr %wp6417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd6c word 0xaa094149
  %r6418.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6418 = load i64, ptr %r6418.p, align 8, !alias.scope !3, !noalias !4
  %t6419 = shl i64 %r6418, 16
  %r6420.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6420 = load i64, ptr %r6420.p, align 8, !alias.scope !3, !noalias !4
  %t6421 = or i64 %r6420, %t6419
  %wp6422 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6421, ptr %wp6422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd70 word 0xa8815909
  %r6423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6423 = load i64, ptr %r6423.p, align 8, !alias.scope !3, !noalias !4
  %t6424 = add i64 %r6423, 8
  %r6425.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6425 = load i64, ptr %r6425.p, align 8, !alias.scope !3, !noalias !4
  %gmp6426 = inttoptr i64 %r6423 to ptr
  store i64 %r6425, ptr %gmp6426, align 1, !alias.scope !4, !noalias !3
  %r6427.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6427 = load i64, ptr %r6427.p, align 8, !alias.scope !3, !noalias !4
  %gmp6428 = inttoptr i64 %t6424 to ptr
  store i64 %r6427, ptr %gmp6428, align 1, !alias.scope !4, !noalias !3
  %t6429 = add i64 %r6423, 16
  %wp6430 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6429, ptr %wp6430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd74 word 0xf90012a8
  %r6431.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6431 = load i64, ptr %r6431.p, align 8, !alias.scope !3, !noalias !4
  %t6432 = add i64 %r6431, 32
  %r6433.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6433 = load i64, ptr %r6433.p, align 8, !alias.scope !3, !noalias !4
  %gmp6434 = inttoptr i64 %t6432 to ptr
  store i64 %r6433, ptr %gmp6434, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcd78 word 0x52800028
  %c6435 = zext i32 1 to i64
  %wp6436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6435, ptr %wp6436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd7c word 0x39004aa8
  %r6437.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6437 = load i64, ptr %r6437.p, align 8, !alias.scope !3, !noalias !4
  %t6438 = add i64 %r6437, 18
  %r6439.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6439 = load i64, ptr %r6439.p, align 8, !alias.scope !3, !noalias !4
  %c6440 = trunc i64 %r6439 to i32
  %c6441 = trunc i32 %c6440 to i8
  %gmp6442 = inttoptr i64 %t6438 to ptr
  store i8 %c6441, ptr %gmp6442, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcd80
L_8000dcd80:
  ; @pc 0x8000dcd80 word 0x9100077b
  %r6443.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6443 = load i64, ptr %r6443.p, align 8, !alias.scope !3, !noalias !4
  %t6444 = add i64 %r6443, 1
  %wp6445 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t6444, ptr %wp6445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd84 word 0xaa1903e4
  %r6446.p = getelementptr inbounds i8, ptr %c, i64 200
  %r6446 = load i64, ptr %r6446.p, align 8, !alias.scope !3, !noalias !4
  %t6447 = or i64 0, %r6446
  %wp6448 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t6447, ptr %wp6448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd88 word 0xaa1403e5
  %r6449.p = getelementptr inbounds i8, ptr %c, i64 160
  %r6449 = load i64, ptr %r6449.p, align 8, !alias.scope !3, !noalias !4
  %t6450 = or i64 0, %r6449
  %wp6451 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t6450, ptr %wp6451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd8c word 0xf1007b7f
  %r6452.p = getelementptr inbounds i8, ptr %c, i64 216
  %r6452 = load i64, ptr %r6452.p, align 8, !alias.scope !3, !noalias !4
  %t6453 = sub i64 %r6452, 30
  %fn6454 = icmp slt i64 %t6453, 0
  %fz6455 = icmp eq i64 %t6453, 0
  %fc6456 = icmp uge i64 %r6452, 30
  %fx16457 = xor i64 %r6452, 30
  %fx26458 = xor i64 %r6452, %t6453
  %fva6459 = and i64 %fx16457, %fx26458
  %fv6460 = icmp slt i64 %fva6459, 0
  %nz6461 = zext i1 %fn6454 to i64
  %zz6462 = zext i1 %fz6455 to i64
  %cz6463 = zext i1 %fc6456 to i64
  %vz6464 = zext i1 %fv6460 to i64
  %ns6465 = shl i64 %nz6461, 31
  %zs6466 = shl i64 %zz6462, 30
  %cs6467 = shl i64 %cz6463, 29
  %vs6468 = shl i64 %vz6464, 28
  %nzor6469 = or i64 %ns6465, %zs6466
  %cvor6470 = or i64 %cs6467, %vs6468
  %nzcv6471 = or i64 %nzor6469, %cvor6470
  %wp6472 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6471, ptr %wp6472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd90 word 0x54fff201
  %r6473.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6473 = load i64, ptr %r6473.p, align 8, !alias.scope !3, !noalias !4
  %fsh6475 = lshr i64 %r6473, 30
  %ftr6476 = trunc i64 %fsh6475 to i1
  %cond6474 = xor i1 %ftr6476, true
  br i1 %cond6474, label %L_8000dcbd0, label %L_8000dcd94_ft
L_8000dcd98:
  ; @pc 0x8000dcd98 word 0x52800029
  %c6477 = zext i32 1 to i64
  %wp6478 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6477, ptr %wp6478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd9c word 0x53107f88
  %r6479.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6479 = load i64, ptr %r6479.p, align 8, !alias.scope !3, !noalias !4
  %c6480 = trunc i64 %r6479 to i32
  %ror6481 = call i32 @llvm.fshr.i32(i32 %c6480, i32 %c6480, i32 16)
  %t6482 = and i32 %ror6481, 65535
  %c6483 = zext i32 %t6482 to i64
  %wp6484 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6483, ptr %wp6484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcda0 word 0x390042a9
  %r6485.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6485 = load i64, ptr %r6485.p, align 8, !alias.scope !3, !noalias !4
  %t6486 = add i64 %r6485, 16
  %r6487.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6487 = load i64, ptr %r6487.p, align 8, !alias.scope !3, !noalias !4
  %c6488 = trunc i64 %r6487 to i32
  %c6489 = trunc i32 %c6488 to i8
  %gmp6490 = inttoptr i64 %t6486 to ptr
  store i8 %c6489, ptr %gmp6490, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcda4 word 0x9001c389
  %wp6491 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp6491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcda8 word 0xf9479529
  %r6492.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6492 = load i64, ptr %r6492.p, align 8, !alias.scope !3, !noalias !4
  %t6493 = add i64 %r6492, 3880
  %gmp6494 = inttoptr i64 %t6493 to ptr
  %gml6495 = load i64, ptr %gmp6494, align 1, !alias.scope !4, !noalias !3
  %wp6496 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6495, ptr %wp6496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdac word 0xb9400129
  %r6497.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6497 = load i64, ptr %r6497.p, align 8, !alias.scope !3, !noalias !4
  %gmp6498 = inttoptr i64 %r6497 to ptr
  %gml6499 = load i32, ptr %gmp6498, align 1, !alias.scope !4, !noalias !3
  %c6500 = zext i32 %gml6499 to i64
  %wp6501 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6500, ptr %wp6501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdb0 word 0x34005189
  %r6502.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6502 = load i64, ptr %r6502.p, align 8, !alias.scope !3, !noalias !4
  %c6503 = trunc i64 %r6502 to i32
  %cmp6504 = icmp eq i32 %c6503, 0
  br i1 %cmp6504, label %L_8000dd7e0, label %L_8000dcdb4_ft
L_8000dcdec:
  ; @pc 0x8000dcdec word 0xf9402ead
  %r6600.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6600 = load i64, ptr %r6600.p, align 8, !alias.scope !3, !noalias !4
  %t6601 = add i64 %r6600, 88
  %gmp6602 = inttoptr i64 %t6601 to ptr
  %gml6603 = load i64, ptr %gmp6602, align 1, !alias.scope !4, !noalias !3
  %wp6604 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6603, ptr %wp6604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdf0 word 0x9342fd8c
  %r6605.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6605 = load i64, ptr %r6605.p, align 8, !alias.scope !3, !noalias !4
  %ror6606 = call i64 @llvm.fshr.i64(i64 %r6605, i64 %r6605, i64 2)
  %t6607 = lshr i64 %r6605, 63
  %t6608 = and i64 %t6607, 1
  %t6609 = sub i64 0, %t6608
  %t6610 = and i64 %t6609, -4611686018427387904
  %t6611 = and i64 %ror6606, 4611686018427387903
  %t6612 = or i64 %t6610, %t6611
  %wp6613 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6612, ptr %wp6613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdf4 word 0xb260058c
  %r6614.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6614 = load i64, ptr %r6614.p, align 8, !alias.scope !3, !noalias !4
  %t6615 = or i64 %r6614, 12884901888
  %wp6616 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6615, ptr %wp6616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdf8 word 0xf9401aae
  %r6617.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6617 = load i64, ptr %r6617.p, align 8, !alias.scope !3, !noalias !4
  %t6618 = add i64 %r6617, 48
  %gmp6619 = inttoptr i64 %t6618 to ptr
  %gml6620 = load i64, ptr %gmp6619, align 1, !alias.scope !4, !noalias !3
  %wp6621 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml6620, ptr %wp6621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdfc word 0xa900b12b
  %r6622.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6622 = load i64, ptr %r6622.p, align 8, !alias.scope !3, !noalias !4
  %t6623 = add i64 %r6622, 8
  %t6624 = add i64 %t6623, 8
  %r6625.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6625 = load i64, ptr %r6625.p, align 8, !alias.scope !3, !noalias !4
  %gmp6626 = inttoptr i64 %t6623 to ptr
  store i64 %r6625, ptr %gmp6626, align 1, !alias.scope !4, !noalias !3
  %r6627.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6627 = load i64, ptr %r6627.p, align 8, !alias.scope !3, !noalias !4
  %gmp6628 = inttoptr i64 %t6624 to ptr
  store i64 %r6627, ptr %gmp6628, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce00 word 0x8b0b01ac
  %r6629.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6629 = load i64, ptr %r6629.p, align 8, !alias.scope !3, !noalias !4
  %r6630.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6630 = load i64, ptr %r6630.p, align 8, !alias.scope !3, !noalias !4
  %t6631 = add i64 %r6629, %r6630
  %wp6632 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6631, ptr %wp6632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce04 word 0xcb0e018c
  %r6633.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6633 = load i64, ptr %r6633.p, align 8, !alias.scope !3, !noalias !4
  %r6634.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6634 = load i64, ptr %r6634.p, align 8, !alias.scope !3, !noalias !4
  %t6635 = sub i64 %r6633, %r6634
  %wp6636 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6635, ptr %wp6636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce08 word 0xf801852c
  %r6637.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6637 = load i64, ptr %r6637.p, align 8, !alias.scope !3, !noalias !4
  %t6638 = add i64 %r6637, 24
  %r6639.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6639 = load i64, ptr %r6639.p, align 8, !alias.scope !3, !noalias !4
  %gmp6640 = inttoptr i64 %r6637 to ptr
  store i64 %r6639, ptr %gmp6640, align 1, !alias.scope !4, !noalias !3
  %wp6641 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6638, ptr %wp6641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce0c word 0xf9002abf
  %r6642.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6642 = load i64, ptr %r6642.p, align 8, !alias.scope !3, !noalias !4
  %t6643 = add i64 %r6642, 80
  %gmp6644 = inttoptr i64 %t6643 to ptr
  store i64 0, ptr %gmp6644, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce10 word 0xf90022aa
  %r6645.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6645 = load i64, ptr %r6645.p, align 8, !alias.scope !3, !noalias !4
  %t6646 = add i64 %r6645, 64
  %r6647.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6647 = load i64, ptr %r6647.p, align 8, !alias.scope !3, !noalias !4
  %gmp6648 = inttoptr i64 %t6646 to ptr
  store i64 %r6647, ptr %gmp6648, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dce14
L_8000dce14:
  ; @pc 0x8000dce14 word 0x528002ea
  %c6649 = zext i32 23 to i64
  %wp6650 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6649, ptr %wp6650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce18 word 0x72a0200a
  %r6651.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6651 = load i64, ptr %r6651.p, align 8, !alias.scope !3, !noalias !4
  %t6652 = and i64 %r6651, -4294901761
  %t6653 = or i64 %t6652, 16777216
  %c6654 = trunc i64 %t6653 to i32
  %c6655 = zext i32 %c6654 to i64
  %wp6656 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6655, ptr %wp6656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce1c word 0x93401d08
  %r6657.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6657 = load i64, ptr %r6657.p, align 8, !alias.scope !3, !noalias !4
  %t6658 = lshr i64 %r6657, 7
  %t6659 = and i64 %t6658, 1
  %t6660 = sub i64 0, %t6659
  %t6661 = and i64 %t6660, -256
  %t6662 = and i64 %r6657, 255
  %t6663 = or i64 %t6661, %t6662
  %wp6664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6663, ptr %wp6664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce20 word 0x9108014a
  %r6665.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6665 = load i64, ptr %r6665.p, align 8, !alias.scope !3, !noalias !4
  %t6666 = add i64 %r6665, 512
  %wp6667 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6666, ptr %wp6667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce24 word 0xaa084148
  %r6668.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6668 = load i64, ptr %r6668.p, align 8, !alias.scope !3, !noalias !4
  %t6669 = shl i64 %r6668, 16
  %r6670.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6670 = load i64, ptr %r6670.p, align 8, !alias.scope !3, !noalias !4
  %t6671 = or i64 %r6670, %t6669
  %wp6672 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6671, ptr %wp6672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce28 word 0xa9005928
  %r6673.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6673 = load i64, ptr %r6673.p, align 8, !alias.scope !3, !noalias !4
  %t6674 = add i64 %r6673, 8
  %r6675.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6675 = load i64, ptr %r6675.p, align 8, !alias.scope !3, !noalias !4
  %gmp6676 = inttoptr i64 %r6673 to ptr
  store i64 %r6675, ptr %gmp6676, align 1, !alias.scope !4, !noalias !3
  %r6677.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6677 = load i64, ptr %r6677.p, align 8, !alias.scope !3, !noalias !4
  %gmp6678 = inttoptr i64 %t6674 to ptr
  store i64 %r6677, ptr %gmp6678, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce2c word 0x91004128
  %r6679.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6679 = load i64, ptr %r6679.p, align 8, !alias.scope !3, !noalias !4
  %t6680 = add i64 %r6679, 16
  %wp6681 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6680, ptr %wp6681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce30 word 0xf90012a8
  %r6682.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6682 = load i64, ptr %r6682.p, align 8, !alias.scope !3, !noalias !4
  %t6683 = add i64 %r6682, 32
  %r6684.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6684 = load i64, ptr %r6684.p, align 8, !alias.scope !3, !noalias !4
  %gmp6685 = inttoptr i64 %t6683 to ptr
  store i64 %r6684, ptr %gmp6685, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce34 word 0x52800028
  %c6686 = zext i32 1 to i64
  %wp6687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6686, ptr %wp6687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce38 word 0x39004aa8
  %r6688.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6688 = load i64, ptr %r6688.p, align 8, !alias.scope !3, !noalias !4
  %t6689 = add i64 %r6688, 18
  %r6690.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6690 = load i64, ptr %r6690.p, align 8, !alias.scope !3, !noalias !4
  %c6691 = trunc i64 %r6690 to i32
  %c6692 = trunc i32 %c6691 to i8
  %gmp6693 = inttoptr i64 %t6689 to ptr
  store i8 %c6692, ptr %gmp6693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce3c word 0x17ffffa8
  br label %L_8000dccdc
L_8000dce40:
  ; @pc 0x8000dce40 word 0x52800029
  %c6694 = zext i32 1 to i64
  %wp6695 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6694, ptr %wp6695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce44 word 0x53087f88
  %r6696.p = getelementptr inbounds i8, ptr %c, i64 224
  %r6696 = load i64, ptr %r6696.p, align 8, !alias.scope !3, !noalias !4
  %c6697 = trunc i64 %r6696 to i32
  %ror6698 = call i32 @llvm.fshr.i32(i32 %c6697, i32 %c6697, i32 8)
  %t6699 = and i32 %ror6698, 16777215
  %c6700 = zext i32 %t6699 to i64
  %wp6701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6700, ptr %wp6701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce48 word 0x390042a9
  %r6702.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6702 = load i64, ptr %r6702.p, align 8, !alias.scope !3, !noalias !4
  %t6703 = add i64 %r6702, 16
  %r6704.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6704 = load i64, ptr %r6704.p, align 8, !alias.scope !3, !noalias !4
  %c6705 = trunc i64 %r6704 to i32
  %c6706 = trunc i32 %c6705 to i8
  %gmp6707 = inttoptr i64 %t6703 to ptr
  store i8 %c6706, ptr %gmp6707, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dce4c word 0x9001c389
  %wp6708 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419818496, ptr %wp6708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce50 word 0xf9479529
  %r6709.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6709 = load i64, ptr %r6709.p, align 8, !alias.scope !3, !noalias !4
  %t6710 = add i64 %r6709, 3880
  %gmp6711 = inttoptr i64 %t6710 to ptr
  %gml6712 = load i64, ptr %gmp6711, align 1, !alias.scope !4, !noalias !3
  %wp6713 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6712, ptr %wp6713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce54 word 0xb9400129
  %r6714.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6714 = load i64, ptr %r6714.p, align 8, !alias.scope !3, !noalias !4
  %gmp6715 = inttoptr i64 %r6714 to ptr
  %gml6716 = load i32, ptr %gmp6715, align 1, !alias.scope !4, !noalias !3
  %c6717 = zext i32 %gml6716 to i64
  %wp6718 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c6717, ptr %wp6718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce58 word 0x34004d89
  %r6719.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6719 = load i64, ptr %r6719.p, align 8, !alias.scope !3, !noalias !4
  %c6720 = trunc i64 %r6719 to i32
  %cmp6721 = icmp eq i32 %c6720, 0
  br i1 %cmp6721, label %L_8000dd808, label %L_8000dce5c_ft
L_8000dce94:
  ; @pc 0x8000dce94 word 0xf9402ead
  %r6817.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6817 = load i64, ptr %r6817.p, align 8, !alias.scope !3, !noalias !4
  %t6818 = add i64 %r6817, 88
  %gmp6819 = inttoptr i64 %t6818 to ptr
  %gml6820 = load i64, ptr %gmp6819, align 1, !alias.scope !4, !noalias !3
  %wp6821 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6820, ptr %wp6821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce98 word 0x9342fd8c
  %r6822.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6822 = load i64, ptr %r6822.p, align 8, !alias.scope !3, !noalias !4
  %ror6823 = call i64 @llvm.fshr.i64(i64 %r6822, i64 %r6822, i64 2)
  %t6824 = lshr i64 %r6822, 63
  %t6825 = and i64 %t6824, 1
  %t6826 = sub i64 0, %t6825
  %t6827 = and i64 %t6826, -4611686018427387904
  %t6828 = and i64 %ror6823, 4611686018427387903
  %t6829 = or i64 %t6827, %t6828
  %wp6830 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6829, ptr %wp6830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce9c word 0xb260058c
  %r6831.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6831 = load i64, ptr %r6831.p, align 8, !alias.scope !3, !noalias !4
  %t6832 = or i64 %r6831, 12884901888
  %wp6833 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6832, ptr %wp6833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcea0 word 0xf9401aae
  %r6834.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6834 = load i64, ptr %r6834.p, align 8, !alias.scope !3, !noalias !4
  %t6835 = add i64 %r6834, 48
  %gmp6836 = inttoptr i64 %t6835 to ptr
  %gml6837 = load i64, ptr %gmp6836, align 1, !alias.scope !4, !noalias !3
  %wp6838 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml6837, ptr %wp6838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcea4 word 0xa900b12b
  %r6839.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6839 = load i64, ptr %r6839.p, align 8, !alias.scope !3, !noalias !4
  %t6840 = add i64 %r6839, 8
  %t6841 = add i64 %t6840, 8
  %r6842.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6842 = load i64, ptr %r6842.p, align 8, !alias.scope !3, !noalias !4
  %gmp6843 = inttoptr i64 %t6840 to ptr
  store i64 %r6842, ptr %gmp6843, align 1, !alias.scope !4, !noalias !3
  %r6844.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6844 = load i64, ptr %r6844.p, align 8, !alias.scope !3, !noalias !4
  %gmp6845 = inttoptr i64 %t6841 to ptr
  store i64 %r6844, ptr %gmp6845, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcea8 word 0x8b0b01ac
  %r6846.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6846 = load i64, ptr %r6846.p, align 8, !alias.scope !3, !noalias !4
  %r6847.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6847 = load i64, ptr %r6847.p, align 8, !alias.scope !3, !noalias !4
  %t6848 = add i64 %r6846, %r6847
  %wp6849 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6848, ptr %wp6849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dceac word 0xcb0e018c
  %r6850.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6850 = load i64, ptr %r6850.p, align 8, !alias.scope !3, !noalias !4
  %r6851.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6851 = load i64, ptr %r6851.p, align 8, !alias.scope !3, !noalias !4
  %t6852 = sub i64 %r6850, %r6851
  %wp6853 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6852, ptr %wp6853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dceb0 word 0xf801852c
  %r6854.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6854 = load i64, ptr %r6854.p, align 8, !alias.scope !3, !noalias !4
  %t6855 = add i64 %r6854, 24
  %r6856.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6856 = load i64, ptr %r6856.p, align 8, !alias.scope !3, !noalias !4
  %gmp6857 = inttoptr i64 %r6854 to ptr
  store i64 %r6856, ptr %gmp6857, align 1, !alias.scope !4, !noalias !3
  %wp6858 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t6855, ptr %wp6858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dceb4 word 0xf9002abf
  %r6859.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6859 = load i64, ptr %r6859.p, align 8, !alias.scope !3, !noalias !4
  %t6860 = add i64 %r6859, 80
  %gmp6861 = inttoptr i64 %t6860 to ptr
  store i64 0, ptr %gmp6861, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dceb8 word 0xf90022aa
  %r6862.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6862 = load i64, ptr %r6862.p, align 8, !alias.scope !3, !noalias !4
  %t6863 = add i64 %r6862, 64
  %r6864.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6864 = load i64, ptr %r6864.p, align 8, !alias.scope !3, !noalias !4
  %gmp6865 = inttoptr i64 %t6863 to ptr
  store i64 %r6864, ptr %gmp6865, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcebc
L_8000dcebc:
  ; @pc 0x8000dcebc word 0x528002ea
  %c6866 = zext i32 23 to i64
  %wp6867 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6866, ptr %wp6867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcec0 word 0x72a0200a
  %r6868.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6868 = load i64, ptr %r6868.p, align 8, !alias.scope !3, !noalias !4
  %t6869 = and i64 %r6868, -4294901761
  %t6870 = or i64 %t6869, 16777216
  %c6871 = trunc i64 %t6870 to i32
  %c6872 = zext i32 %c6871 to i64
  %wp6873 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c6872, ptr %wp6873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcec4 word 0x93401d08
  %r6874.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6874 = load i64, ptr %r6874.p, align 8, !alias.scope !3, !noalias !4
  %t6875 = lshr i64 %r6874, 7
  %t6876 = and i64 %t6875, 1
  %t6877 = sub i64 0, %t6876
  %t6878 = and i64 %t6877, -256
  %t6879 = and i64 %r6874, 255
  %t6880 = or i64 %t6878, %t6879
  %wp6881 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6880, ptr %wp6881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcec8 word 0x9104014a
  %r6882.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6882 = load i64, ptr %r6882.p, align 8, !alias.scope !3, !noalias !4
  %t6883 = add i64 %r6882, 256
  %wp6884 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6883, ptr %wp6884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcecc word 0xaa084148
  %r6885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6885 = load i64, ptr %r6885.p, align 8, !alias.scope !3, !noalias !4
  %t6886 = shl i64 %r6885, 16
  %r6887.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6887 = load i64, ptr %r6887.p, align 8, !alias.scope !3, !noalias !4
  %t6888 = or i64 %r6887, %t6886
  %wp6889 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6888, ptr %wp6889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dced0 word 0xa9005928
  %r6890.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6890 = load i64, ptr %r6890.p, align 8, !alias.scope !3, !noalias !4
  %t6891 = add i64 %r6890, 8
  %r6892.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6892 = load i64, ptr %r6892.p, align 8, !alias.scope !3, !noalias !4
  %gmp6893 = inttoptr i64 %r6890 to ptr
  store i64 %r6892, ptr %gmp6893, align 1, !alias.scope !4, !noalias !3
  %r6894.p = getelementptr inbounds i8, ptr %c, i64 176
  %r6894 = load i64, ptr %r6894.p, align 8, !alias.scope !3, !noalias !4
  %gmp6895 = inttoptr i64 %t6891 to ptr
  store i64 %r6894, ptr %gmp6895, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dced4 word 0x91004128
  %r6896.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6896 = load i64, ptr %r6896.p, align 8, !alias.scope !3, !noalias !4
  %t6897 = add i64 %r6896, 16
  %wp6898 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t6897, ptr %wp6898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dced8 word 0xf90012a8
  %r6899.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6899 = load i64, ptr %r6899.p, align 8, !alias.scope !3, !noalias !4
  %t6900 = add i64 %r6899, 32
  %r6901.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6901 = load i64, ptr %r6901.p, align 8, !alias.scope !3, !noalias !4
  %gmp6902 = inttoptr i64 %t6900 to ptr
  store i64 %r6901, ptr %gmp6902, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcedc word 0x52800028
  %c6903 = zext i32 1 to i64
  %wp6904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6903, ptr %wp6904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcee0 word 0x39004aa8
  %r6905.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6905 = load i64, ptr %r6905.p, align 8, !alias.scope !3, !noalias !4
  %t6906 = add i64 %r6905, 18
  %r6907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6907 = load i64, ptr %r6907.p, align 8, !alias.scope !3, !noalias !4
  %c6908 = trunc i64 %r6907 to i32
  %c6909 = trunc i32 %c6908 to i8
  %gmp6910 = inttoptr i64 %t6906 to ptr
  store i8 %c6909, ptr %gmp6910, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcee4 word 0x17ffff7b
  br label %L_8000dccd0
L_8000dcee8:
  ; @pc 0x8000dcee8 word 0x3944056d
  %r6911.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6911 = load i64, ptr %r6911.p, align 8, !alias.scope !3, !noalias !4
  %t6912 = add i64 %r6911, 257
  %gmp6913 = inttoptr i64 %t6912 to ptr
  %gml6914 = load i8, ptr %gmp6913, align 1, !alias.scope !4, !noalias !3
  %c6915 = zext i8 %gml6914 to i64
  %wp6916 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c6915, ptr %wp6916, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dceec
L_8000dceec:
  ; @pc 0x8000dceec word 0x5280002c
  %c6917 = zext i32 1 to i64
  %wp6918 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6917, ptr %wp6918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcef0 word 0x3904c269
  %r6919.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6919 = load i64, ptr %r6919.p, align 8, !alias.scope !3, !noalias !4
  %t6920 = add i64 %r6919, 304
  %r6921.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6921 = load i64, ptr %r6921.p, align 8, !alias.scope !3, !noalias !4
  %c6922 = trunc i64 %r6921 to i32
  %c6923 = trunc i32 %c6922 to i8
  %gmp6924 = inttoptr i64 %t6920 to ptr
  store i8 %c6923, ptr %gmp6924, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcef4 word 0x3904c66d
  %r6925.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6925 = load i64, ptr %r6925.p, align 8, !alias.scope !3, !noalias !4
  %t6926 = add i64 %r6925, 305
  %r6927.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6927 = load i64, ptr %r6927.p, align 8, !alias.scope !3, !noalias !4
  %c6928 = trunc i64 %r6927 to i32
  %c6929 = trunc i32 %c6928 to i8
  %gmp6930 = inttoptr i64 %t6926 to ptr
  store i8 %c6929, ptr %gmp6930, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcef8 word 0x17fffc01
  br label %L_8000dbefc
L_8000dcefc:
  ; @pc 0x8000dcefc word 0x7100011f
  %r6931.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6931 = load i64, ptr %r6931.p, align 8, !alias.scope !3, !noalias !4
  %c6932 = trunc i64 %r6931 to i32
  %t6933 = sub i32 %c6932, 0
  %fn6934 = icmp slt i32 %t6933, 0
  %fz6935 = icmp eq i32 %t6933, 0
  %fc6936 = icmp uge i32 %c6932, 0
  %fx16937 = xor i32 %c6932, 0
  %fx26938 = xor i32 %c6932, %t6933
  %fva6939 = and i32 %fx16937, %fx26938
  %fv6940 = icmp slt i32 %fva6939, 0
  %nz6941 = zext i1 %fn6934 to i64
  %zz6942 = zext i1 %fz6935 to i64
  %cz6943 = zext i1 %fc6936 to i64
  %vz6944 = zext i1 %fv6940 to i64
  %ns6945 = shl i64 %nz6941, 31
  %zs6946 = shl i64 %zz6942, 30
  %cs6947 = shl i64 %cz6943, 29
  %vs6948 = shl i64 %vz6944, 28
  %nzor6949 = or i64 %ns6945, %zs6946
  %cvor6950 = or i64 %cs6947, %vs6948
  %nzcv6951 = or i64 %nzor6949, %cvor6950
  %wp6952 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6951, ptr %wp6952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf00 word 0x121e016d
  %r6953.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6953 = load i64, ptr %r6953.p, align 8, !alias.scope !3, !noalias !4
  %c6954 = trunc i64 %r6953 to i32
  %t6955 = and i32 %c6954, 4
  %c6956 = zext i32 %t6955 to i64
  %wp6957 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c6956, ptr %wp6957, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf04 word 0x1a9f07ec
  %t6958 = add i32 0, 1
  %r6959.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6959 = load i64, ptr %r6959.p, align 8, !alias.scope !3, !noalias !4
  %fsh6961 = lshr i64 %r6959, 30
  %cond6960 = trunc i64 %fsh6961 to i1
  %sel6962 = select i1 %cond6960, i32 0, i32 %t6958
  %c6963 = zext i32 %sel6962 to i64
  %wp6964 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c6963, ptr %wp6964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf08 word 0x6b4d099f
  %r6965.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6965 = load i64, ptr %r6965.p, align 8, !alias.scope !3, !noalias !4
  %c6966 = trunc i64 %r6965 to i32
  %r6967.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6967 = load i64, ptr %r6967.p, align 8, !alias.scope !3, !noalias !4
  %c6968 = trunc i64 %r6967 to i32
  %t6969 = lshr i32 %c6968, 2
  %t6970 = sub i32 %c6966, %t6969
  %fn6971 = icmp slt i32 %t6970, 0
  %fz6972 = icmp eq i32 %t6970, 0
  %fc6973 = icmp uge i32 %c6966, %t6969
  %fx16974 = xor i32 %c6966, %t6969
  %fx26975 = xor i32 %c6966, %t6970
  %fva6976 = and i32 %fx16974, %fx26975
  %fv6977 = icmp slt i32 %fva6976, 0
  %nz6978 = zext i1 %fn6971 to i64
  %zz6979 = zext i1 %fz6972 to i64
  %cz6980 = zext i1 %fc6973 to i64
  %vz6981 = zext i1 %fv6977 to i64
  %ns6982 = shl i64 %nz6978, 31
  %zs6983 = shl i64 %zz6979, 30
  %cs6984 = shl i64 %cz6980, 29
  %vs6985 = shl i64 %vz6981, 28
  %nzor6986 = or i64 %ns6982, %zs6983
  %cvor6987 = or i64 %cs6984, %vs6985
  %nzcv6988 = or i64 %nzor6986, %cvor6987
  %wp6989 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6988, ptr %wp6989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf0c word 0x54ff6541
  %r6990.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6990 = load i64, ptr %r6990.p, align 8, !alias.scope !3, !noalias !4
  %fsh6992 = lshr i64 %r6990, 30
  %ftr6993 = trunc i64 %fsh6992 to i1
  %cond6991 = xor i1 %ftr6993, true
  br i1 %cond6991, label %L_8000dbbb4, label %L_8000dcf10_ft
L_8000dcf18:
  ; @pc 0x8000dcf18 word 0xf9400a68
  %r6997.p = getelementptr inbounds i8, ptr %c, i64 152
  %r6997 = load i64, ptr %r6997.p, align 8, !alias.scope !3, !noalias !4
  %t6998 = add i64 %r6997, 16
  %gmp6999 = inttoptr i64 %t6998 to ptr
  %gml7000 = load i64, ptr %gmp6999, align 1, !alias.scope !4, !noalias !3
  %wp7001 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7000, ptr %wp7001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf1c word 0x12800003
  %c7002 = zext i32 -1 to i64
  %wp7003 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c7002, ptr %wp7003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf20 word 0x9111c100
  %r7004.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7004 = load i64, ptr %r7004.p, align 8, !alias.scope !3, !noalias !4
  %t7005 = add i64 %r7004, 1136
  %wp7006 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7005, ptr %wp7006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf24 word 0xf9401261
  %r7007.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7007 = load i64, ptr %r7007.p, align 8, !alias.scope !3, !noalias !4
  %t7008 = add i64 %r7007, 32
  %gmp7009 = inttoptr i64 %t7008 to ptr
  %gml7010 = load i64, ptr %gmp7009, align 1, !alias.scope !4, !noalias !3
  %wp7011 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml7010, ptr %wp7011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf28 word 0xf9408e62
  %r7012.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7012 = load i64, ptr %r7012.p, align 8, !alias.scope !3, !noalias !4
  %t7013 = add i64 %r7012, 280
  %gmp7014 = inttoptr i64 %t7013 to ptr
  %gml7015 = load i64, ptr %gmp7014, align 1, !alias.scope !4, !noalias !3
  %wp7016 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml7015, ptr %wp7016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf2c word 0x949d7820
  %wp7017 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360643376, ptr %wp7017, align 8, !alias.scope !3, !noalias !4
  call void @f_80283afac(ptr %c)
  ; @pc 0x8000dcf30 word 0x17fffeac
  br label %L_8000dc9e0
L_8000dcf34:
  ; @pc 0x8000dcf34 word 0xaa0403f6
  %r7018.p = getelementptr inbounds i8, ptr %c, i64 32
  %r7018 = load i64, ptr %r7018.p, align 8, !alias.scope !3, !noalias !4
  %t7019 = or i64 0, %r7018
  %wp7020 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t7019, ptr %wp7020, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf38 word 0xaa0503f7
  %r7021.p = getelementptr inbounds i8, ptr %c, i64 40
  %r7021 = load i64, ptr %r7021.p, align 8, !alias.scope !3, !noalias !4
  %t7022 = or i64 0, %r7021
  %wp7023 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t7022, ptr %wp7023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf3c word 0x941c48e1
  %wp7024 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360643392, ptr %wp7024, align 8, !alias.scope !3, !noalias !4
  call void @f_8007ef2c0(ptr %c)
  ; @pc 0x8000dcf40 word 0xaa1703e5
  %r7025.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7025 = load i64, ptr %r7025.p, align 8, !alias.scope !3, !noalias !4
  %t7026 = or i64 0, %r7025
  %wp7027 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t7026, ptr %wp7027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf44 word 0xaa1603e4
  %r7028.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7028 = load i64, ptr %r7028.p, align 8, !alias.scope !3, !noalias !4
  %t7029 = or i64 0, %r7028
  %wp7030 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t7029, ptr %wp7030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf48 word 0x17fffbaf
  br label %L_8000dbe04
L_8000dcf4c:
  ; @pc 0x8000dcf4c word 0xa90213e5
  %r7031.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7031 = load i64, ptr %r7031.p, align 8, !alias.scope !3, !noalias !4
  %t7032 = add i64 %r7031, 32
  %t7033 = add i64 %t7032, 8
  %r7034.p = getelementptr inbounds i8, ptr %c, i64 40
  %r7034 = load i64, ptr %r7034.p, align 8, !alias.scope !3, !noalias !4
  %gmp7035 = inttoptr i64 %t7032 to ptr
  store i64 %r7034, ptr %gmp7035, align 1, !alias.scope !4, !noalias !3
  %r7036.p = getelementptr inbounds i8, ptr %c, i64 32
  %r7036 = load i64, ptr %r7036.p, align 8, !alias.scope !3, !noalias !4
  %gmp7037 = inttoptr i64 %t7033 to ptr
  store i64 %r7036, ptr %gmp7037, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcf50 word 0xb001c415
  %wp7038 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 34419888128, ptr %wp7038, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf54 word 0xf946d2b5
  %r7039.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7039 = load i64, ptr %r7039.p, align 8, !alias.scope !3, !noalias !4
  %t7040 = add i64 %r7039, 3488
  %gmp7041 = inttoptr i64 %t7040 to ptr
  %gml7042 = load i64, ptr %gmp7041, align 1, !alias.scope !4, !noalias !3
  %wp7043 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml7042, ptr %wp7043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf58 word 0xaa0803f4
  %r7044.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7044 = load i64, ptr %r7044.p, align 8, !alias.scope !3, !noalias !4
  %t7045 = or i64 0, %r7044
  %wp7046 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t7045, ptr %wp7046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf5c word 0xeb15013f
  %r7047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7047 = load i64, ptr %r7047.p, align 8, !alias.scope !3, !noalias !4
  %r7048.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7048 = load i64, ptr %r7048.p, align 8, !alias.scope !3, !noalias !4
  %t7049 = sub i64 %r7047, %r7048
  %fn7050 = icmp slt i64 %t7049, 0
  %fz7051 = icmp eq i64 %t7049, 0
  %fc7052 = icmp uge i64 %r7047, %r7048
  %fx17053 = xor i64 %r7047, %r7048
  %fx27054 = xor i64 %r7047, %t7049
  %fva7055 = and i64 %fx17053, %fx27054
  %fv7056 = icmp slt i64 %fva7055, 0
  %nz7057 = zext i1 %fn7050 to i64
  %zz7058 = zext i1 %fz7051 to i64
  %cz7059 = zext i1 %fc7052 to i64
  %vz7060 = zext i1 %fv7056 to i64
  %ns7061 = shl i64 %nz7057, 31
  %zs7062 = shl i64 %zz7058, 30
  %cs7063 = shl i64 %cz7059, 29
  %vs7064 = shl i64 %vz7060, 28
  %nzor7065 = or i64 %ns7061, %zs7062
  %cvor7066 = or i64 %cs7063, %vs7064
  %nzcv7067 = or i64 %nzor7065, %cvor7066
  %wp7068 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7067, ptr %wp7068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf60 word 0x54004701
  %r7069.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7069 = load i64, ptr %r7069.p, align 8, !alias.scope !3, !noalias !4
  %fsh7071 = lshr i64 %r7069, 30
  %ftr7072 = trunc i64 %fsh7071 to i1
  %cond7070 = xor i1 %ftr7072, true
  br i1 %cond7070, label %L_8000dd840, label %L_8000dcf64_ft
L_8000dcf78:
  ; @pc 0x8000dcf78 word 0xb9408a80
  %r7116.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7116 = load i64, ptr %r7116.p, align 8, !alias.scope !3, !noalias !4
  %t7117 = add i64 %r7116, 136
  %gmp7118 = inttoptr i64 %t7117 to ptr
  %gml7119 = load i32, ptr %gmp7118, align 1, !alias.scope !4, !noalias !3
  %c7120 = zext i32 %gml7119 to i64
  %wp7121 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c7120, ptr %wp7121, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dcf7c
L_8000dcf7c:
  ; @pc 0x8000dcf7c word 0xaa1403e8
  %r7122.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7122 = load i64, ptr %r7122.p, align 8, !alias.scope !3, !noalias !4
  %t7123 = or i64 0, %r7122
  %wp7124 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7123, ptr %wp7124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf80 word 0xa94213e5
  %r7125.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7125 = load i64, ptr %r7125.p, align 8, !alias.scope !3, !noalias !4
  %t7126 = add i64 %r7125, 32
  %t7127 = add i64 %t7126, 8
  %gmp7128 = inttoptr i64 %t7126 to ptr
  %gml7129 = load i64, ptr %gmp7128, align 1, !alias.scope !4, !noalias !3
  %gmp7130 = inttoptr i64 %t7127 to ptr
  %gml7131 = load i64, ptr %gmp7130, align 1, !alias.scope !4, !noalias !3
  %wp7132 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml7129, ptr %wp7132, align 8, !alias.scope !3, !noalias !4
  %wp7133 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml7131, ptr %wp7133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf84 word 0x17fffbb0
  br label %L_8000dbe44
L_8000dcf88:
  ; @pc 0x8000dcf88 word 0xd344ff89
  %r7134.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7134 = load i64, ptr %r7134.p, align 8, !alias.scope !3, !noalias !4
  %ror7135 = call i64 @llvm.fshr.i64(i64 %r7134, i64 %r7134, i64 4)
  %t7136 = and i64 %ror7135, 1152921504606846975
  %wp7137 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7136, ptr %wp7137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf8c word 0x4b0003ea
  %r7138.p = getelementptr inbounds i8, ptr %c, i64 0
  %r7138 = load i64, ptr %r7138.p, align 8, !alias.scope !3, !noalias !4
  %c7139 = trunc i64 %r7138 to i32
  %t7140 = sub i32 0, %c7139
  %c7141 = zext i32 %t7140 to i64
  %wp7142 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7141, ptr %wp7142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf90 word 0xf9405ef7
  %r7143.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7143 = load i64, ptr %r7143.p, align 8, !alias.scope !3, !noalias !4
  %t7144 = add i64 %r7143, 184
  %gmp7145 = inttoptr i64 %t7144 to ptr
  %gml7146 = load i64, ptr %gmp7145, align 1, !alias.scope !4, !noalias !3
  %wp7147 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml7146, ptr %wp7147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf94 word 0x9ba97f69
  %r7148.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7148 = load i64, ptr %r7148.p, align 8, !alias.scope !3, !noalias !4
  %c7149 = trunc i64 %r7148 to i32
  %c7150 = zext i32 %c7149 to i64
  %r7151.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7151 = load i64, ptr %r7151.p, align 8, !alias.scope !3, !noalias !4
  %c7152 = trunc i64 %r7151 to i32
  %c7153 = zext i32 %c7152 to i64
  %t7154 = mul i64 %c7150, %c7153
  %t7155 = add i64 0, %t7154
  %wp7156 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7155, ptr %wp7156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf98 word 0x0a0a030a
  %r7157.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7157 = load i64, ptr %r7157.p, align 8, !alias.scope !3, !noalias !4
  %c7158 = trunc i64 %r7157 to i32
  %r7159.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7159 = load i64, ptr %r7159.p, align 8, !alias.scope !3, !noalias !4
  %c7160 = trunc i64 %r7159 to i32
  %t7161 = and i32 %c7160, %c7158
  %c7162 = zext i32 %t7161 to i64
  %wp7163 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7162, ptr %wp7163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf9c word 0xf9001be8
  %r7164.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7164 = load i64, ptr %r7164.p, align 8, !alias.scope !3, !noalias !4
  %t7165 = add i64 %r7164, 48
  %r7166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7166 = load i64, ptr %r7166.p, align 8, !alias.scope !3, !noalias !4
  %gmp7167 = inttoptr i64 %t7165 to ptr
  store i64 %r7166, ptr %gmp7167, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcfa0 word 0xaa0503f9
  %r7168.p = getelementptr inbounds i8, ptr %c, i64 40
  %r7168 = load i64, ptr %r7168.p, align 8, !alias.scope !3, !noalias !4
  %t7169 = or i64 0, %r7168
  %wp7170 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t7169, ptr %wp7170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfa4 word 0xaa0403f4
  %r7171.p = getelementptr inbounds i8, ptr %c, i64 32
  %r7171 = load i64, ptr %r7171.p, align 8, !alias.scope !3, !noalias !4
  %t7172 = or i64 0, %r7171
  %wp7173 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t7172, ptr %wp7173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfa8 word 0x52811c1b
  %c7174 = zext i32 2272 to i64
  %wp7175 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c7174, ptr %wp7175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfac word 0x72a4007b
  %r7176.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7176 = load i64, ptr %r7176.p, align 8, !alias.scope !3, !noalias !4
  %t7177 = and i64 %r7176, -4294901761
  %t7178 = or i64 %t7177, 537067520
  %c7179 = trunc i64 %t7178 to i32
  %c7180 = zext i32 %c7179 to i64
  %wp7181 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c7180, ptr %wp7181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfb0 word 0x9baa5935
  %r7182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7182 = load i64, ptr %r7182.p, align 8, !alias.scope !3, !noalias !4
  %c7183 = trunc i64 %r7182 to i32
  %c7184 = zext i32 %c7183 to i64
  %r7185.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7185 = load i64, ptr %r7185.p, align 8, !alias.scope !3, !noalias !4
  %c7186 = trunc i64 %r7185 to i32
  %c7187 = zext i32 %c7186 to i64
  %t7188 = mul i64 %c7184, %c7187
  %r7189.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7189 = load i64, ptr %r7189.p, align 8, !alias.scope !3, !noalias !4
  %t7190 = add i64 %r7189, %t7188
  %wp7191 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t7190, ptr %wp7191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfb4 word 0xb9404116
  %r7192.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7192 = load i64, ptr %r7192.p, align 8, !alias.scope !3, !noalias !4
  %t7193 = add i64 %r7192, 64
  %gmp7194 = inttoptr i64 %t7193 to ptr
  %gml7195 = load i32, ptr %gmp7194, align 1, !alias.scope !4, !noalias !3
  %c7196 = zext i32 %gml7195 to i64
  %wp7197 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c7196, ptr %wp7197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfb8 word 0x52801fe8
  %c7198 = zext i32 255 to i64
  %wp7199 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7198, ptr %wp7199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfbc word 0x6a3a011f
  %r7200.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7200 = load i64, ptr %r7200.p, align 8, !alias.scope !3, !noalias !4
  %c7201 = trunc i64 %r7200 to i32
  %t7202 = xor i32 %c7201, -1
  %r7203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7203 = load i64, ptr %r7203.p, align 8, !alias.scope !3, !noalias !4
  %c7204 = trunc i64 %r7203 to i32
  %t7205 = and i32 %c7204, %t7202
  %fn7206 = icmp slt i32 %t7205, 0
  %fz7207 = icmp eq i32 %t7205, 0
  %nz7208 = zext i1 %fn7206 to i64
  %zz7209 = zext i1 %fz7207 to i64
  %ns7210 = shl i64 %nz7208, 31
  %zs7211 = shl i64 %zz7209, 30
  %nzcv7212 = or i64 %ns7210, %zs7211
  %wp7213 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7212, ptr %wp7213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfc0 word 0xd360febc
  %r7214.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7214 = load i64, ptr %r7214.p, align 8, !alias.scope !3, !noalias !4
  %ror7215 = call i64 @llvm.fshr.i64(i64 %r7214, i64 %r7214, i64 32)
  %t7216 = and i64 %ror7215, 4294967295
  %wp7217 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t7216, ptr %wp7217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfc4 word 0x540019a1
  %r7218.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7218 = load i64, ptr %r7218.p, align 8, !alias.scope !3, !noalias !4
  %fsh7220 = lshr i64 %r7218, 30
  %ftr7221 = trunc i64 %fsh7220 to i1
  %cond7219 = xor i1 %ftr7221, true
  br i1 %cond7219, label %L_8000dd2f8, label %L_8000dcfc8
L_8000dcfc8:
  ; @pc 0x8000dcfc8 word 0x529fe008
  %c7222 = zext i32 65280 to i64
  %wp7223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7222, ptr %wp7223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfcc word 0x6a3a011f
  %r7224.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7224 = load i64, ptr %r7224.p, align 8, !alias.scope !3, !noalias !4
  %c7225 = trunc i64 %r7224 to i32
  %t7226 = xor i32 %c7225, -1
  %r7227.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7227 = load i64, ptr %r7227.p, align 8, !alias.scope !3, !noalias !4
  %c7228 = trunc i64 %r7227 to i32
  %t7229 = and i32 %c7228, %t7226
  %fn7230 = icmp slt i32 %t7229, 0
  %fz7231 = icmp eq i32 %t7229, 0
  %nz7232 = zext i1 %fn7230 to i64
  %zz7233 = zext i1 %fz7231 to i64
  %ns7234 = shl i64 %nz7232, 31
  %zs7235 = shl i64 %zz7233, 30
  %nzcv7236 = or i64 %ns7234, %zs7235
  %wp7237 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7236, ptr %wp7237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfd0 word 0x54000480
  %r7238.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7238 = load i64, ptr %r7238.p, align 8, !alias.scope !3, !noalias !4
  %fsh7240 = lshr i64 %r7238, 30
  %cond7239 = trunc i64 %fsh7240 to i1
  br i1 %cond7239, label %L_8000dd060, label %L_8000dcfd4_ft
L_8000dd054:
  ; @pc 0x8000dd054 word 0xb900010a
  %r7434.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7434 = load i64, ptr %r7434.p, align 8, !alias.scope !3, !noalias !4
  %r7435.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7435 = load i64, ptr %r7435.p, align 8, !alias.scope !3, !noalias !4
  %c7436 = trunc i64 %r7435 to i32
  %gmp7437 = inttoptr i64 %r7434 to ptr
  store i32 %c7436, ptr %gmp7437, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd058 word 0x8b090908
  %r7438.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7438 = load i64, ptr %r7438.p, align 8, !alias.scope !3, !noalias !4
  %r7439.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7439 = load i64, ptr %r7439.p, align 8, !alias.scope !3, !noalias !4
  %t7440 = shl i64 %r7439, 2
  %t7441 = add i64 %r7438, %t7440
  %wp7442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7441, ptr %wp7442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd05c word 0xf90002e8
  %r7443.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7443 = load i64, ptr %r7443.p, align 8, !alias.scope !3, !noalias !4
  %r7444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7444 = load i64, ptr %r7444.p, align 8, !alias.scope !3, !noalias !4
  %gmp7445 = inttoptr i64 %r7443 to ptr
  store i64 %r7444, ptr %gmp7445, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dd060
L_8000dd060:
  ; @pc 0x8000dd060 word 0x52a01fe8
  %c7446 = zext i32 16711680 to i64
  %wp7447 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7446, ptr %wp7447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd064 word 0x6a3a011f
  %r7448.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7448 = load i64, ptr %r7448.p, align 8, !alias.scope !3, !noalias !4
  %c7449 = trunc i64 %r7448 to i32
  %t7450 = xor i32 %c7449, -1
  %r7451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7451 = load i64, ptr %r7451.p, align 8, !alias.scope !3, !noalias !4
  %c7452 = trunc i64 %r7451 to i32
  %t7453 = and i32 %c7452, %t7450
  %fn7454 = icmp slt i32 %t7453, 0
  %fz7455 = icmp eq i32 %t7453, 0
  %nz7456 = zext i1 %fn7454 to i64
  %zz7457 = zext i1 %fz7455 to i64
  %ns7458 = shl i64 %nz7456, 31
  %zs7459 = shl i64 %zz7457, 30
  %nzcv7460 = or i64 %ns7458, %zs7459
  %wp7461 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7460, ptr %wp7461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd068 word 0x54002ec1
  %r7462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7462 = load i64, ptr %r7462.p, align 8, !alias.scope !3, !noalias !4
  %fsh7464 = lshr i64 %r7462, 30
  %ftr7465 = trunc i64 %fsh7464 to i1
  %cond7463 = xor i1 %ftr7465, true
  br i1 %cond7463, label %L_8000dd640, label %L_8000dd06c
L_8000dd06c:
  ; @pc 0x8000dd06c word 0x53187f48
  %r7466.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7466 = load i64, ptr %r7466.p, align 8, !alias.scope !3, !noalias !4
  %c7467 = trunc i64 %r7466 to i32
  %ror7468 = call i32 @llvm.fshr.i32(i32 %c7467, i32 %c7467, i32 24)
  %t7469 = and i32 %ror7468, 255
  %c7470 = zext i32 %t7469 to i64
  %wp7471 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7470, ptr %wp7471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd070 word 0xaa1403e4
  %r7472.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7472 = load i64, ptr %r7472.p, align 8, !alias.scope !3, !noalias !4
  %t7473 = or i64 0, %r7472
  %wp7474 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t7473, ptr %wp7474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd074 word 0xaa1903e5
  %r7475.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7475 = load i64, ptr %r7475.p, align 8, !alias.scope !3, !noalias !4
  %t7476 = or i64 0, %r7475
  %wp7477 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t7476, ptr %wp7477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd078 word 0x7103f91f
  %r7478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7478 = load i64, ptr %r7478.p, align 8, !alias.scope !3, !noalias !4
  %c7479 = trunc i64 %r7478 to i32
  %t7480 = sub i32 %c7479, 254
  %fn7481 = icmp slt i32 %t7480, 0
  %fz7482 = icmp eq i32 %t7480, 0
  %fc7483 = icmp uge i32 %c7479, 254
  %fx17484 = xor i32 %c7479, 254
  %fx27485 = xor i32 %c7479, %t7480
  %fva7486 = and i32 %fx17484, %fx27485
  %fv7487 = icmp slt i32 %fva7486, 0
  %nz7488 = zext i1 %fn7481 to i64
  %zz7489 = zext i1 %fz7482 to i64
  %cz7490 = zext i1 %fc7483 to i64
  %vz7491 = zext i1 %fv7487 to i64
  %ns7492 = shl i64 %nz7488, 31
  %zs7493 = shl i64 %zz7489, 30
  %cs7494 = shl i64 %cz7490, 29
  %vs7495 = shl i64 %vz7491, 28
  %nzor7496 = or i64 %ns7492, %zs7493
  %cvor7497 = or i64 %cs7494, %vs7495
  %nzcv7498 = or i64 %nzor7496, %cvor7497
  %wp7499 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7498, ptr %wp7499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd07c word 0xf9401be8
  %r7500.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7500 = load i64, ptr %r7500.p, align 8, !alias.scope !3, !noalias !4
  %t7501 = add i64 %r7500, 48
  %gmp7502 = inttoptr i64 %t7501 to ptr
  %gml7503 = load i64, ptr %gmp7502, align 1, !alias.scope !4, !noalias !3
  %wp7504 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7503, ptr %wp7504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd080 word 0x54ff6e68
  %r7505.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7505 = load i64, ptr %r7505.p, align 8, !alias.scope !3, !noalias !4
  %fsh7507 = lshr i64 %r7505, 29
  %ftr7508 = trunc i64 %fsh7507 to i1
  %fsh7509 = lshr i64 %r7505, 30
  %ftr7510 = trunc i64 %fsh7509 to i1
  %fnz7511 = xor i1 %ftr7510, true
  %cond7506 = and i1 %ftr7508, %fnz7511
  br i1 %cond7506, label %L_8000dbe4c, label %L_8000dd084_ft
L_8000dd0cc:
  ; @pc 0x8000dd0cc word 0xaa1403e4
  %r7601.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7601 = load i64, ptr %r7601.p, align 8, !alias.scope !3, !noalias !4
  %t7602 = or i64 0, %r7601
  %wp7603 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t7602, ptr %wp7603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0d0 word 0xaa1903e5
  %r7604.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7604 = load i64, ptr %r7604.p, align 8, !alias.scope !3, !noalias !4
  %t7605 = or i64 0, %r7604
  %wp7606 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t7605, ptr %wp7606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0d4 word 0x17fffb5e
  br label %L_8000dbe4c
L_8000dd0d8:
  ; @pc 0x8000dd0d8 word 0x5280002b
  %c7607 = zext i32 1 to i64
  %wp7608 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c7607, ptr %wp7608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0dc word 0x17fffac4
  br label %L_8000dbbec
L_8000dd0e0:
  ; @pc 0x8000dd0e0 word 0x2a1f03ec
  %t7609 = or i32 0, 0
  %c7610 = zext i32 %t7609 to i64
  %wp7611 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c7610, ptr %wp7611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0e4 word 0x17fffca5
  br label %L_8000dc378
L_8000dd0e8:
  ; @pc 0x8000dd0e8 word 0xaa1903ed
  %r7612.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7612 = load i64, ptr %r7612.p, align 8, !alias.scope !3, !noalias !4
  %t7613 = or i64 0, %r7612
  %wp7614 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t7613, ptr %wp7614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0ec word 0xaa0903f9
  %r7615.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7615 = load i64, ptr %r7615.p, align 8, !alias.scope !3, !noalias !4
  %t7616 = or i64 0, %r7615
  %wp7617 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t7616, ptr %wp7617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0f0 word 0x17fffcc4
  br label %L_8000dc400
L_8000dd0f4:
  ; @pc 0x8000dd0f4 word 0x12117908
  %r7618.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7618 = load i64, ptr %r7618.p, align 8, !alias.scope !3, !noalias !4
  %c7619 = trunc i64 %r7618 to i32
  %t7620 = and i32 %c7619, -16385
  %c7621 = zext i32 %t7620 to i64
  %wp7622 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7621, ptr %wp7622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0f8 word 0x79008268
  %r7623.p = getelementptr inbounds i8, ptr %c, i64 152
  %r7623 = load i64, ptr %r7623.p, align 8, !alias.scope !3, !noalias !4
  %t7624 = add i64 %r7623, 64
  %r7625.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7625 = load i64, ptr %r7625.p, align 8, !alias.scope !3, !noalias !4
  %c7626 = trunc i64 %r7625 to i32
  %c7627 = trunc i32 %c7626 to i16
  %gmp7628 = inttoptr i64 %t7624 to ptr
  store i16 %c7627, ptr %gmp7628, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd0fc word 0xf940030b
  %r7629.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7629 = load i64, ptr %r7629.p, align 8, !alias.scope !3, !noalias !4
  %gmp7630 = inttoptr i64 %r7629 to ptr
  %gml7631 = load i64, ptr %gmp7630, align 1, !alias.scope !4, !noalias !3
  %wp7632 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml7631, ptr %wp7632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd100 word 0x91004168
  %r7633.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7633 = load i64, ptr %r7633.p, align 8, !alias.scope !3, !noalias !4
  %t7634 = add i64 %r7633, 16
  %wp7635 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7634, ptr %wp7635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd104 word 0x9100516c
  %r7636.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7636 = load i64, ptr %r7636.p, align 8, !alias.scope !3, !noalias !4
  %t7637 = add i64 %r7636, 20
  %wp7638 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t7637, ptr %wp7638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd108 word 0x9100616b
  %r7639.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7639 = load i64, ptr %r7639.p, align 8, !alias.scope !3, !noalias !4
  %t7640 = add i64 %r7639, 24
  %wp7641 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t7640, ptr %wp7641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd10c word 0x17fffcdd
  br label %L_8000dc480
L_8000dd110:
  ; @pc 0x8000dd110 word 0x1103ff18
  %r7642.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7642 = load i64, ptr %r7642.p, align 8, !alias.scope !3, !noalias !4
  %c7643 = trunc i64 %r7642 to i32
  %t7644 = add i32 %c7643, 255
  %c7645 = zext i32 %t7644 to i64
  %wp7646 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c7645, ptr %wp7646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd114 word 0x17fffcf9
  br label %L_8000dc4f8
L_8000dd118:
  ; @pc 0x8000dd118 word 0xd344fec9
  %r7647.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7647 = load i64, ptr %r7647.p, align 8, !alias.scope !3, !noalias !4
  %ror7648 = call i64 @llvm.fshr.i64(i64 %r7647, i64 %r7647, i64 4)
  %t7649 = and i64 %ror7648, 1152921504606846975
  %wp7650 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7649, ptr %wp7650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd11c word 0x290237ea
  %r7651.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7651 = load i64, ptr %r7651.p, align 8, !alias.scope !3, !noalias !4
  %t7652 = add i64 %r7651, 16
  %t7653 = add i64 %t7652, 4
  %r7654.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7654 = load i64, ptr %r7654.p, align 8, !alias.scope !3, !noalias !4
  %c7655 = trunc i64 %r7654 to i32
  %gmp7656 = inttoptr i64 %t7652 to ptr
  store i32 %c7655, ptr %gmp7656, align 1, !alias.scope !4, !noalias !3
  %r7657.p = getelementptr inbounds i8, ptr %c, i64 104
  %r7657 = load i64, ptr %r7657.p, align 8, !alias.scope !3, !noalias !4
  %c7658 = trunc i64 %r7657 to i32
  %gmp7659 = inttoptr i64 %t7653 to ptr
  store i32 %c7658, ptr %gmp7659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd120 word 0x4b0003ea
  %r7660.p = getelementptr inbounds i8, ptr %c, i64 0
  %r7660 = load i64, ptr %r7660.p, align 8, !alias.scope !3, !noalias !4
  %c7661 = trunc i64 %r7660 to i32
  %t7662 = sub i32 0, %c7661
  %c7663 = zext i32 %t7662 to i64
  %wp7664 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7663, ptr %wp7664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd124 word 0x9ba97f69
  %r7665.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7665 = load i64, ptr %r7665.p, align 8, !alias.scope !3, !noalias !4
  %c7666 = trunc i64 %r7665 to i32
  %c7667 = zext i32 %c7666 to i64
  %r7668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7668 = load i64, ptr %r7668.p, align 8, !alias.scope !3, !noalias !4
  %c7669 = trunc i64 %r7668 to i32
  %c7670 = zext i32 %c7669 to i64
  %t7671 = mul i64 %c7667, %c7670
  %t7672 = add i64 0, %t7671
  %wp7673 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t7672, ptr %wp7673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd128 word 0xb9001beb
  %r7674.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7674 = load i64, ptr %r7674.p, align 8, !alias.scope !3, !noalias !4
  %t7675 = add i64 %r7674, 24
  %r7676.p = getelementptr inbounds i8, ptr %c, i64 88
  %r7676 = load i64, ptr %r7676.p, align 8, !alias.scope !3, !noalias !4
  %c7677 = trunc i64 %r7676 to i32
  %gmp7678 = inttoptr i64 %t7675 to ptr
  store i32 %c7677, ptr %gmp7678, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd12c word 0x0a0a030a
  %r7679.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7679 = load i64, ptr %r7679.p, align 8, !alias.scope !3, !noalias !4
  %c7680 = trunc i64 %r7679 to i32
  %r7681.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7681 = load i64, ptr %r7681.p, align 8, !alias.scope !3, !noalias !4
  %c7682 = trunc i64 %r7681 to i32
  %t7683 = and i32 %c7682, %c7680
  %c7684 = zext i32 %t7683 to i64
  %wp7685 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7684, ptr %wp7685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd130 word 0xf90013e5
  %r7686.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7686 = load i64, ptr %r7686.p, align 8, !alias.scope !3, !noalias !4
  %t7687 = add i64 %r7686, 32
  %r7688.p = getelementptr inbounds i8, ptr %c, i64 40
  %r7688 = load i64, ptr %r7688.p, align 8, !alias.scope !3, !noalias !4
  %gmp7689 = inttoptr i64 %t7687 to ptr
  store i64 %r7688, ptr %gmp7689, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd134 word 0x9001c41b
  %wp7690 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 34419888128, ptr %wp7690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd138 word 0xb9404118
  %r7691.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7691 = load i64, ptr %r7691.p, align 8, !alias.scope !3, !noalias !4
  %t7692 = add i64 %r7691, 64
  %gmp7693 = inttoptr i64 %t7692 to ptr
  %gml7694 = load i32, ptr %gmp7693, align 1, !alias.scope !4, !noalias !3
  %c7695 = zext i32 %gml7694 to i64
  %wp7696 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c7695, ptr %wp7696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd13c word 0xf81d83a8
  %r7697.p = getelementptr inbounds i8, ptr %c, i64 232
  %r7697 = load i64, ptr %r7697.p, align 8, !alias.scope !3, !noalias !4
  %t7698 = add i64 %r7697, -40
  %r7699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7699 = load i64, ptr %r7699.p, align 8, !alias.scope !3, !noalias !4
  %gmp7700 = inttoptr i64 %t7698 to ptr
  store i64 %r7699, ptr %gmp7700, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd140 word 0xf9405eb5
  %r7701.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7701 = load i64, ptr %r7701.p, align 8, !alias.scope !3, !noalias !4
  %t7702 = add i64 %r7701, 184
  %gmp7703 = inttoptr i64 %t7702 to ptr
  %gml7704 = load i64, ptr %gmp7703, align 1, !alias.scope !4, !noalias !3
  %wp7705 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml7704, ptr %wp7705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd144 word 0xf9478f7b
  %r7706.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7706 = load i64, ptr %r7706.p, align 8, !alias.scope !3, !noalias !4
  %t7707 = add i64 %r7706, 3864
  %gmp7708 = inttoptr i64 %t7707 to ptr
  %gml7709 = load i64, ptr %gmp7708, align 1, !alias.scope !4, !noalias !3
  %wp7710 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml7709, ptr %wp7710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd148 word 0x9baa7136
  %r7711.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7711 = load i64, ptr %r7711.p, align 8, !alias.scope !3, !noalias !4
  %c7712 = trunc i64 %r7711 to i32
  %c7713 = zext i32 %c7712 to i64
  %r7714.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7714 = load i64, ptr %r7714.p, align 8, !alias.scope !3, !noalias !4
  %c7715 = trunc i64 %r7714 to i32
  %c7716 = zext i32 %c7715 to i64
  %t7717 = mul i64 %c7713, %c7716
  %r7718.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7718 = load i64, ptr %r7718.p, align 8, !alias.scope !3, !noalias !4
  %t7719 = add i64 %r7718, %t7717
  %wp7720 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t7719, ptr %wp7720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd14c word 0x52801fe8
  %c7721 = zext i32 255 to i64
  %wp7722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7721, ptr %wp7722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd150 word 0xaa0403f9
  %r7723.p = getelementptr inbounds i8, ptr %c, i64 32
  %r7723 = load i64, ptr %r7723.p, align 8, !alias.scope !3, !noalias !4
  %t7724 = or i64 0, %r7723
  %wp7725 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t7724, ptr %wp7725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd154 word 0xaa1a03f4
  %r7726.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7726 = load i64, ptr %r7726.p, align 8, !alias.scope !3, !noalias !4
  %t7727 = or i64 0, %r7726
  %wp7728 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t7727, ptr %wp7728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd158 word 0x52811c1a
  %c7729 = zext i32 2272 to i64
  %wp7730 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c7729, ptr %wp7730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd15c word 0x72a4007a
  %r7731.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7731 = load i64, ptr %r7731.p, align 8, !alias.scope !3, !noalias !4
  %t7732 = and i64 %r7731, -4294901761
  %t7733 = or i64 %t7732, 537067520
  %c7734 = trunc i64 %t7733 to i32
  %c7735 = zext i32 %c7734 to i64
  %wp7736 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c7735, ptr %wp7736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd160 word 0x6a37011f
  %r7737.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7737 = load i64, ptr %r7737.p, align 8, !alias.scope !3, !noalias !4
  %c7738 = trunc i64 %r7737 to i32
  %t7739 = xor i32 %c7738, -1
  %r7740.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7740 = load i64, ptr %r7740.p, align 8, !alias.scope !3, !noalias !4
  %c7741 = trunc i64 %r7740 to i32
  %t7742 = and i32 %c7741, %t7739
  %fn7743 = icmp slt i32 %t7742, 0
  %fz7744 = icmp eq i32 %t7742, 0
  %nz7745 = zext i1 %fn7743 to i64
  %zz7746 = zext i1 %fz7744 to i64
  %ns7747 = shl i64 %nz7745, 31
  %zs7748 = shl i64 %zz7746, 30
  %nzcv7749 = or i64 %ns7747, %zs7748
  %wp7750 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7749, ptr %wp7750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd164 word 0xd360fedc
  %r7751.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7751 = load i64, ptr %r7751.p, align 8, !alias.scope !3, !noalias !4
  %ror7752 = call i64 @llvm.fshr.i64(i64 %r7751, i64 %r7751, i64 32)
  %t7753 = and i64 %ror7752, 4294967295
  %wp7754 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t7753, ptr %wp7754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd168 word 0x54001121
  %r7755.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7755 = load i64, ptr %r7755.p, align 8, !alias.scope !3, !noalias !4
  %fsh7757 = lshr i64 %r7755, 30
  %ftr7758 = trunc i64 %fsh7757 to i1
  %cond7756 = xor i1 %ftr7758, true
  br i1 %cond7756, label %L_8000dd38c, label %L_8000dd16c
L_8000dd16c:
  ; @pc 0x8000dd16c word 0x529fe008
  %c7759 = zext i32 65280 to i64
  %wp7760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7759, ptr %wp7760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd170 word 0x6a37011f
  %r7761.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7761 = load i64, ptr %r7761.p, align 8, !alias.scope !3, !noalias !4
  %c7762 = trunc i64 %r7761 to i32
  %t7763 = xor i32 %c7762, -1
  %r7764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7764 = load i64, ptr %r7764.p, align 8, !alias.scope !3, !noalias !4
  %c7765 = trunc i64 %r7764 to i32
  %t7766 = and i32 %c7765, %t7763
  %fn7767 = icmp slt i32 %t7766, 0
  %fz7768 = icmp eq i32 %t7766, 0
  %nz7769 = zext i1 %fn7767 to i64
  %zz7770 = zext i1 %fz7768 to i64
  %ns7771 = shl i64 %nz7769, 31
  %zs7772 = shl i64 %zz7770, 30
  %nzcv7773 = or i64 %ns7771, %zs7772
  %wp7774 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7773, ptr %wp7774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd174 word 0x54003a81
  %r7775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7775 = load i64, ptr %r7775.p, align 8, !alias.scope !3, !noalias !4
  %fsh7777 = lshr i64 %r7775, 30
  %ftr7778 = trunc i64 %fsh7777 to i1
  %cond7776 = xor i1 %ftr7778, true
  br i1 %cond7776, label %L_8000dd8c4, label %L_8000dd178
L_8000dd178:
  ; @pc 0x8000dd178 word 0x52a01fe8
  %c7779 = zext i32 16711680 to i64
  %wp7780 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7779, ptr %wp7780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd17c word 0x6a37011f
  %r7781.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7781 = load i64, ptr %r7781.p, align 8, !alias.scope !3, !noalias !4
  %c7782 = trunc i64 %r7781 to i32
  %t7783 = xor i32 %c7782, -1
  %r7784.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7784 = load i64, ptr %r7784.p, align 8, !alias.scope !3, !noalias !4
  %c7785 = trunc i64 %r7784 to i32
  %t7786 = and i32 %c7785, %t7783
  %fn7787 = icmp slt i32 %t7786, 0
  %fz7788 = icmp eq i32 %t7786, 0
  %nz7789 = zext i1 %fn7787 to i64
  %zz7790 = zext i1 %fz7788 to i64
  %ns7791 = shl i64 %nz7789, 31
  %zs7792 = shl i64 %zz7790, 30
  %nzcv7793 = or i64 %ns7791, %zs7792
  %wp7794 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7793, ptr %wp7794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd180 word 0x54000400
  %r7795.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7795 = load i64, ptr %r7795.p, align 8, !alias.scope !3, !noalias !4
  %fsh7797 = lshr i64 %r7795, 30
  %cond7796 = trunc i64 %fsh7797 to i1
  br i1 %cond7796, label %L_8000dd200, label %L_8000dd184_ft
L_8000dd1f4:
  ; @pc 0x8000dd1f4 word 0xb900011a
  %r7975.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7975 = load i64, ptr %r7975.p, align 8, !alias.scope !3, !noalias !4
  %r7976.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7976 = load i64, ptr %r7976.p, align 8, !alias.scope !3, !noalias !4
  %c7977 = trunc i64 %r7976 to i32
  %gmp7978 = inttoptr i64 %r7975 to ptr
  store i32 %c7977, ptr %gmp7978, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd1f8 word 0x8b090908
  %r7979.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7979 = load i64, ptr %r7979.p, align 8, !alias.scope !3, !noalias !4
  %r7980.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7980 = load i64, ptr %r7980.p, align 8, !alias.scope !3, !noalias !4
  %t7981 = shl i64 %r7980, 2
  %t7982 = add i64 %r7979, %t7981
  %wp7983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t7982, ptr %wp7983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1fc word 0xf90002a8
  %r7984.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7984 = load i64, ptr %r7984.p, align 8, !alias.scope !3, !noalias !4
  %r7985.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7985 = load i64, ptr %r7985.p, align 8, !alias.scope !3, !noalias !4
  %gmp7986 = inttoptr i64 %r7984 to ptr
  store i64 %r7985, ptr %gmp7986, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dd200
L_8000dd200:
  ; @pc 0x8000dd200 word 0x53187ee8
  %r7987.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7987 = load i64, ptr %r7987.p, align 8, !alias.scope !3, !noalias !4
  %c7988 = trunc i64 %r7987 to i32
  %ror7989 = call i32 @llvm.fshr.i32(i32 %c7988, i32 %c7988, i32 24)
  %t7990 = and i32 %ror7989, 255
  %c7991 = zext i32 %t7990 to i64
  %wp7992 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7991, ptr %wp7992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd204 word 0xf94013e5
  %r7993.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7993 = load i64, ptr %r7993.p, align 8, !alias.scope !3, !noalias !4
  %t7994 = add i64 %r7993, 32
  %gmp7995 = inttoptr i64 %t7994 to ptr
  %gml7996 = load i64, ptr %gmp7995, align 1, !alias.scope !4, !noalias !3
  %wp7997 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml7996, ptr %wp7997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd208 word 0xaa1403fa
  %r7998.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7998 = load i64, ptr %r7998.p, align 8, !alias.scope !3, !noalias !4
  %t7999 = or i64 0, %r7998
  %wp8000 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t7999, ptr %wp8000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd20c word 0x7103f91f
  %r8001.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8001 = load i64, ptr %r8001.p, align 8, !alias.scope !3, !noalias !4
  %c8002 = trunc i64 %r8001 to i32
  %t8003 = sub i32 %c8002, 254
  %fn8004 = icmp slt i32 %t8003, 0
  %fz8005 = icmp eq i32 %t8003, 0
  %fc8006 = icmp uge i32 %c8002, 254
  %fx18007 = xor i32 %c8002, 254
  %fx28008 = xor i32 %c8002, %t8003
  %fva8009 = and i32 %fx18007, %fx28008
  %fv8010 = icmp slt i32 %fva8009, 0
  %nz8011 = zext i1 %fn8004 to i64
  %zz8012 = zext i1 %fz8005 to i64
  %cz8013 = zext i1 %fc8006 to i64
  %vz8014 = zext i1 %fv8010 to i64
  %ns8015 = shl i64 %nz8011, 31
  %zs8016 = shl i64 %zz8012, 30
  %cs8017 = shl i64 %cz8013, 29
  %vs8018 = shl i64 %vz8014, 28
  %nzor8019 = or i64 %ns8015, %zs8016
  %cvor8020 = or i64 %cs8017, %vs8018
  %nzcv8021 = or i64 %nzor8019, %cvor8020
  %wp8022 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8021, ptr %wp8022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd210 word 0xf85d83a8
  %r8023.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8023 = load i64, ptr %r8023.p, align 8, !alias.scope !3, !noalias !4
  %t8024 = add i64 %r8023, -40
  %gmp8025 = inttoptr i64 %t8024 to ptr
  %gml8026 = load i64, ptr %gmp8025, align 1, !alias.scope !4, !noalias !3
  %wp8027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8026, ptr %wp8027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd214 word 0xaa1903e4
  %r8028.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8028 = load i64, ptr %r8028.p, align 8, !alias.scope !3, !noalias !4
  %t8029 = or i64 0, %r8028
  %wp8030 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t8029, ptr %wp8030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd218 word 0x2942afed
  %r8031.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8031 = load i64, ptr %r8031.p, align 8, !alias.scope !3, !noalias !4
  %t8032 = add i64 %r8031, 20
  %t8033 = add i64 %t8032, 4
  %gmp8034 = inttoptr i64 %t8032 to ptr
  %gml8035 = load i32, ptr %gmp8034, align 1, !alias.scope !4, !noalias !3
  %c8036 = zext i32 %gml8035 to i64
  %gmp8037 = inttoptr i64 %t8033 to ptr
  %gml8038 = load i32, ptr %gmp8037, align 1, !alias.scope !4, !noalias !3
  %c8039 = zext i32 %gml8038 to i64
  %wp8040 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8036, ptr %wp8040, align 8, !alias.scope !3, !noalias !4
  %wp8041 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8039, ptr %wp8041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd21c word 0xb94013ea
  %r8042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8042 = load i64, ptr %r8042.p, align 8, !alias.scope !3, !noalias !4
  %t8043 = add i64 %r8042, 16
  %gmp8044 = inttoptr i64 %t8043 to ptr
  %gml8045 = load i32, ptr %gmp8044, align 1, !alias.scope !4, !noalias !3
  %c8046 = zext i32 %gml8045 to i64
  %wp8047 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8046, ptr %wp8047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd220 word 0x54ff9728
  %r8048.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8048 = load i64, ptr %r8048.p, align 8, !alias.scope !3, !noalias !4
  %fsh8050 = lshr i64 %r8048, 29
  %ftr8051 = trunc i64 %fsh8050 to i1
  %fsh8052 = lshr i64 %r8048, 30
  %ftr8053 = trunc i64 %fsh8052 to i1
  %fnz8054 = xor i1 %ftr8053, true
  %cond8049 = and i1 %ftr8051, %fnz8054
  br i1 %cond8049, label %L_8000dc504, label %L_8000dd224_ft
L_8000dd264:
  ; @pc 0x8000dd264 word 0xf94013e5
  %r8138.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8138 = load i64, ptr %r8138.p, align 8, !alias.scope !3, !noalias !4
  %t8139 = add i64 %r8138, 32
  %gmp8140 = inttoptr i64 %t8139 to ptr
  %gml8141 = load i64, ptr %gmp8140, align 1, !alias.scope !4, !noalias !3
  %wp8142 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml8141, ptr %wp8142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd268 word 0xaa1403fa
  %r8143.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8143 = load i64, ptr %r8143.p, align 8, !alias.scope !3, !noalias !4
  %t8144 = or i64 0, %r8143
  %wp8145 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t8144, ptr %wp8145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd26c word 0xaa1903e4
  %r8146.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8146 = load i64, ptr %r8146.p, align 8, !alias.scope !3, !noalias !4
  %t8147 = or i64 0, %r8146
  %wp8148 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t8147, ptr %wp8148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd270 word 0x2942afed
  %r8149.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8149 = load i64, ptr %r8149.p, align 8, !alias.scope !3, !noalias !4
  %t8150 = add i64 %r8149, 20
  %t8151 = add i64 %t8150, 4
  %gmp8152 = inttoptr i64 %t8150 to ptr
  %gml8153 = load i32, ptr %gmp8152, align 1, !alias.scope !4, !noalias !3
  %c8154 = zext i32 %gml8153 to i64
  %gmp8155 = inttoptr i64 %t8151 to ptr
  %gml8156 = load i32, ptr %gmp8155, align 1, !alias.scope !4, !noalias !3
  %c8157 = zext i32 %gml8156 to i64
  %wp8158 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8154, ptr %wp8158, align 8, !alias.scope !3, !noalias !4
  %wp8159 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8157, ptr %wp8159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd274 word 0xb94013ea
  %r8160.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8160 = load i64, ptr %r8160.p, align 8, !alias.scope !3, !noalias !4
  %t8161 = add i64 %r8160, 16
  %gmp8162 = inttoptr i64 %t8161 to ptr
  %gml8163 = load i32, ptr %gmp8162, align 1, !alias.scope !4, !noalias !3
  %c8164 = zext i32 %gml8163 to i64
  %wp8165 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8164, ptr %wp8165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd278 word 0x17fffca3
  br label %L_8000dc504
L_8000dd27c:
  ; @pc 0x8000dd27c word 0xaa0803e0
  %r8166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8166 = load i64, ptr %r8166.p, align 8, !alias.scope !3, !noalias !4
  %t8167 = or i64 0, %r8166
  %wp8168 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8167, ptr %wp8168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd280 word 0x290237ea
  %r8169.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8169 = load i64, ptr %r8169.p, align 8, !alias.scope !3, !noalias !4
  %t8170 = add i64 %r8169, 16
  %t8171 = add i64 %t8170, 4
  %r8172.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8172 = load i64, ptr %r8172.p, align 8, !alias.scope !3, !noalias !4
  %c8173 = trunc i64 %r8172 to i32
  %gmp8174 = inttoptr i64 %t8170 to ptr
  store i32 %c8173, ptr %gmp8174, align 1, !alias.scope !4, !noalias !3
  %r8175.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8175 = load i64, ptr %r8175.p, align 8, !alias.scope !3, !noalias !4
  %c8176 = trunc i64 %r8175 to i32
  %gmp8177 = inttoptr i64 %t8171 to ptr
  store i32 %c8176, ptr %gmp8177, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd284 word 0xb9001beb
  %r8178.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8178 = load i64, ptr %r8178.p, align 8, !alias.scope !3, !noalias !4
  %t8179 = add i64 %r8178, 24
  %r8180.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8180 = load i64, ptr %r8180.p, align 8, !alias.scope !3, !noalias !4
  %c8181 = trunc i64 %r8180 to i32
  %gmp8182 = inttoptr i64 %t8179 to ptr
  store i32 %c8181, ptr %gmp8182, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd288 word 0xf81d83ba
  %r8183.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8183 = load i64, ptr %r8183.p, align 8, !alias.scope !3, !noalias !4
  %t8184 = add i64 %r8183, -40
  %r8185.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8185 = load i64, ptr %r8185.p, align 8, !alias.scope !3, !noalias !4
  %gmp8186 = inttoptr i64 %t8184 to ptr
  store i64 %r8185, ptr %gmp8186, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd28c word 0xaa0803fa
  %r8187.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8187 = load i64, ptr %r8187.p, align 8, !alias.scope !3, !noalias !4
  %t8188 = or i64 0, %r8187
  %wp8189 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t8188, ptr %wp8189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd290 word 0xa90213e5
  %r8190.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8190 = load i64, ptr %r8190.p, align 8, !alias.scope !3, !noalias !4
  %t8191 = add i64 %r8190, 32
  %t8192 = add i64 %t8191, 8
  %r8193.p = getelementptr inbounds i8, ptr %c, i64 40
  %r8193 = load i64, ptr %r8193.p, align 8, !alias.scope !3, !noalias !4
  %gmp8194 = inttoptr i64 %t8191 to ptr
  store i64 %r8193, ptr %gmp8194, align 1, !alias.scope !4, !noalias !3
  %r8195.p = getelementptr inbounds i8, ptr %c, i64 32
  %r8195 = load i64, ptr %r8195.p, align 8, !alias.scope !3, !noalias !4
  %gmp8196 = inttoptr i64 %t8192 to ptr
  store i64 %r8195, ptr %gmp8196, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd294 word 0xd63f0120
  %r8197.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8197 = load i64, ptr %r8197.p, align 8, !alias.scope !3, !noalias !4
  %fp8198 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8197, ptr %fp8198, align 8, !alias.scope !3, !noalias !4
  %wp8199 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360644248, ptr %wp8199, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd298 word 0xf9400349
  %r8200.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8200 = load i64, ptr %r8200.p, align 8, !alias.scope !3, !noalias !4
  %gmp8201 = inttoptr i64 %r8200 to ptr
  %gml8202 = load i64, ptr %gmp8201, align 1, !alias.scope !4, !noalias !3
  %wp8203 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8202, ptr %wp8203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd29c word 0x0b00030a
  %r8204.p = getelementptr inbounds i8, ptr %c, i64 192
  %r8204 = load i64, ptr %r8204.p, align 8, !alias.scope !3, !noalias !4
  %c8205 = trunc i64 %r8204 to i32
  %r8206.p = getelementptr inbounds i8, ptr %c, i64 0
  %r8206 = load i64, ptr %r8206.p, align 8, !alias.scope !3, !noalias !4
  %c8207 = trunc i64 %r8206 to i32
  %t8208 = add i32 %c8205, %c8207
  %c8209 = zext i32 %t8208 to i64
  %wp8210 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8209, ptr %wp8210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2a0 word 0xaa1a03e8
  %r8211.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8211 = load i64, ptr %r8211.p, align 8, !alias.scope !3, !noalias !4
  %t8212 = or i64 0, %r8211
  %wp8213 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8212, ptr %wp8213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2a4 word 0x51000558
  %r8214.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8214 = load i64, ptr %r8214.p, align 8, !alias.scope !3, !noalias !4
  %c8215 = trunc i64 %r8214 to i32
  %t8216 = sub i32 %c8215, 1
  %c8217 = zext i32 %t8216 to i64
  %wp8218 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c8217, ptr %wp8218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2a8 word 0xf9401529
  %r8219.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8219 = load i64, ptr %r8219.p, align 8, !alias.scope !3, !noalias !4
  %t8220 = add i64 %r8219, 40
  %gmp8221 = inttoptr i64 %t8220 to ptr
  %gml8222 = load i64, ptr %gmp8221, align 1, !alias.scope !4, !noalias !3
  %wp8223 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8222, ptr %wp8223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2ac word 0xeb14013f
  %r8224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8224 = load i64, ptr %r8224.p, align 8, !alias.scope !3, !noalias !4
  %r8225.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8225 = load i64, ptr %r8225.p, align 8, !alias.scope !3, !noalias !4
  %t8226 = sub i64 %r8224, %r8225
  %fn8227 = icmp slt i64 %t8226, 0
  %fz8228 = icmp eq i64 %t8226, 0
  %fc8229 = icmp uge i64 %r8224, %r8225
  %fx18230 = xor i64 %r8224, %r8225
  %fx28231 = xor i64 %r8224, %t8226
  %fva8232 = and i64 %fx18230, %fx28231
  %fv8233 = icmp slt i64 %fva8232, 0
  %nz8234 = zext i1 %fn8227 to i64
  %zz8235 = zext i1 %fz8228 to i64
  %cz8236 = zext i1 %fc8229 to i64
  %vz8237 = zext i1 %fv8233 to i64
  %ns8238 = shl i64 %nz8234, 31
  %zs8239 = shl i64 %zz8235, 30
  %cs8240 = shl i64 %cz8236, 29
  %vs8241 = shl i64 %vz8237, 28
  %nzor8242 = or i64 %ns8238, %zs8239
  %cvor8243 = or i64 %cs8240, %vs8241
  %nzcv8244 = or i64 %nzor8242, %cvor8243
  %wp8245 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8244, ptr %wp8245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2b0 word 0x540017c0
  %r8246.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8246 = load i64, ptr %r8246.p, align 8, !alias.scope !3, !noalias !4
  %fsh8248 = lshr i64 %r8246, 30
  %cond8247 = trunc i64 %fsh8248 to i1
  br i1 %cond8247, label %L_8000dd5a8, label %L_8000dd2b4_ft
L_8000dd2d0:
  ; @pc 0x8000dd2d0 word 0x290237ea
  %r8286.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8286 = load i64, ptr %r8286.p, align 8, !alias.scope !3, !noalias !4
  %t8287 = add i64 %r8286, 16
  %t8288 = add i64 %t8287, 4
  %r8289.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8289 = load i64, ptr %r8289.p, align 8, !alias.scope !3, !noalias !4
  %c8290 = trunc i64 %r8289 to i32
  %gmp8291 = inttoptr i64 %t8287 to ptr
  store i32 %c8290, ptr %gmp8291, align 1, !alias.scope !4, !noalias !3
  %r8292.p = getelementptr inbounds i8, ptr %c, i64 104
  %r8292 = load i64, ptr %r8292.p, align 8, !alias.scope !3, !noalias !4
  %c8293 = trunc i64 %r8292 to i32
  %gmp8294 = inttoptr i64 %t8288 to ptr
  store i32 %c8293, ptr %gmp8294, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd2d4 word 0xb9001beb
  %r8295.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8295 = load i64, ptr %r8295.p, align 8, !alias.scope !3, !noalias !4
  %t8296 = add i64 %r8295, 24
  %r8297.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8297 = load i64, ptr %r8297.p, align 8, !alias.scope !3, !noalias !4
  %c8298 = trunc i64 %r8297 to i32
  %gmp8299 = inttoptr i64 %t8296 to ptr
  store i32 %c8298, ptr %gmp8299, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd2d8 word 0xf81d83ba
  %r8300.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8300 = load i64, ptr %r8300.p, align 8, !alias.scope !3, !noalias !4
  %t8301 = add i64 %r8300, -40
  %r8302.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8302 = load i64, ptr %r8302.p, align 8, !alias.scope !3, !noalias !4
  %gmp8303 = inttoptr i64 %t8301 to ptr
  store i64 %r8302, ptr %gmp8303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd2dc word 0xa90213e5
  %r8304.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8304 = load i64, ptr %r8304.p, align 8, !alias.scope !3, !noalias !4
  %t8305 = add i64 %r8304, 32
  %t8306 = add i64 %t8305, 8
  %r8307.p = getelementptr inbounds i8, ptr %c, i64 40
  %r8307 = load i64, ptr %r8307.p, align 8, !alias.scope !3, !noalias !4
  %gmp8308 = inttoptr i64 %t8305 to ptr
  store i64 %r8307, ptr %gmp8308, align 1, !alias.scope !4, !noalias !3
  %r8309.p = getelementptr inbounds i8, ptr %c, i64 32
  %r8309 = load i64, ptr %r8309.p, align 8, !alias.scope !3, !noalias !4
  %gmp8310 = inttoptr i64 %t8306 to ptr
  store i64 %r8309, ptr %gmp8310, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dd2e0
L_8000dd2e0:
  ; @pc 0x8000dd2e0 word 0xb9408900
  %r8311.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8311 = load i64, ptr %r8311.p, align 8, !alias.scope !3, !noalias !4
  %t8312 = add i64 %r8311, 136
  %gmp8313 = inttoptr i64 %t8312 to ptr
  %gml8314 = load i32, ptr %gmp8313, align 1, !alias.scope !4, !noalias !3
  %c8315 = zext i32 %gml8314 to i64
  %wp8316 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c8315, ptr %wp8316, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd2e4
L_8000dd2e4:
  ; @pc 0x8000dd2e4 word 0xf85d83ba
  %r8317.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8317 = load i64, ptr %r8317.p, align 8, !alias.scope !3, !noalias !4
  %t8318 = add i64 %r8317, -40
  %gmp8319 = inttoptr i64 %t8318 to ptr
  %gml8320 = load i64, ptr %gmp8319, align 1, !alias.scope !4, !noalias !3
  %wp8321 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml8320, ptr %wp8321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2e8 word 0xa94213e5
  %r8322.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8322 = load i64, ptr %r8322.p, align 8, !alias.scope !3, !noalias !4
  %t8323 = add i64 %r8322, 32
  %t8324 = add i64 %t8323, 8
  %gmp8325 = inttoptr i64 %t8323 to ptr
  %gml8326 = load i64, ptr %gmp8325, align 1, !alias.scope !4, !noalias !3
  %gmp8327 = inttoptr i64 %t8324 to ptr
  %gml8328 = load i64, ptr %gmp8327, align 1, !alias.scope !4, !noalias !3
  %wp8329 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %gml8326, ptr %wp8329, align 8, !alias.scope !3, !noalias !4
  %wp8330 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml8328, ptr %wp8330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2ec word 0x2942afed
  %r8331.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8331 = load i64, ptr %r8331.p, align 8, !alias.scope !3, !noalias !4
  %t8332 = add i64 %r8331, 20
  %t8333 = add i64 %t8332, 4
  %gmp8334 = inttoptr i64 %t8332 to ptr
  %gml8335 = load i32, ptr %gmp8334, align 1, !alias.scope !4, !noalias !3
  %c8336 = zext i32 %gml8335 to i64
  %gmp8337 = inttoptr i64 %t8333 to ptr
  %gml8338 = load i32, ptr %gmp8337, align 1, !alias.scope !4, !noalias !3
  %c8339 = zext i32 %gml8338 to i64
  %wp8340 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8336, ptr %wp8340, align 8, !alias.scope !3, !noalias !4
  %wp8341 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8339, ptr %wp8341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2f0 word 0xb94013ea
  %r8342.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8342 = load i64, ptr %r8342.p, align 8, !alias.scope !3, !noalias !4
  %t8343 = add i64 %r8342, 16
  %gmp8344 = inttoptr i64 %t8343 to ptr
  %gml8345 = load i32, ptr %gmp8344, align 1, !alias.scope !4, !noalias !3
  %c8346 = zext i32 %gml8345 to i64
  %wp8347 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8346, ptr %wp8347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2f4 word 0x17fffc82
  br label %L_8000dc4fc
L_8000dd2f8:
  ; @pc 0x8000dd2f8 word 0xf9401be8
  %r8348.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8348 = load i64, ptr %r8348.p, align 8, !alias.scope !3, !noalias !4
  %t8349 = add i64 %r8348, 48
  %gmp8350 = inttoptr i64 %t8349 to ptr
  %gml8351 = load i64, ptr %gmp8350, align 1, !alias.scope !4, !noalias !3
  %wp8352 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8351, ptr %wp8352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2fc word 0x9001c409
  %wp8353 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp8353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd300 word 0x13001f43
  %r8354.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8354 = load i64, ptr %r8354.p, align 8, !alias.scope !3, !noalias !4
  %c8355 = trunc i64 %r8354 to i32
  %t8356 = lshr i32 %c8355, 7
  %t8357 = and i32 %t8356, 1
  %t8358 = sub i32 0, %t8357
  %t8359 = and i32 %t8358, -256
  %t8360 = and i32 %c8355, 255
  %t8361 = or i32 %t8359, %t8360
  %c8362 = zext i32 %t8361 to i64
  %wp8363 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8362, ptr %wp8363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd304 word 0xf9400108
  %r8364.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8364 = load i64, ptr %r8364.p, align 8, !alias.scope !3, !noalias !4
  %gmp8365 = inttoptr i64 %r8364 to ptr
  %gml8366 = load i64, ptr %gmp8365, align 1, !alias.scope !4, !noalias !3
  %wp8367 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8366, ptr %wp8367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd308 word 0xf9402908
  %r8368.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8368 = load i64, ptr %r8368.p, align 8, !alias.scope !3, !noalias !4
  %t8369 = add i64 %r8368, 80
  %gmp8370 = inttoptr i64 %t8369 to ptr
  %gml8371 = load i64, ptr %gmp8370, align 1, !alias.scope !4, !noalias !3
  %wp8372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8371, ptr %wp8372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd30c word 0xf9478d29
  %r8373.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8373 = load i64, ptr %r8373.p, align 8, !alias.scope !3, !noalias !4
  %t8374 = add i64 %r8373, 3864
  %gmp8375 = inttoptr i64 %t8374 to ptr
  %gml8376 = load i64, ptr %gmp8375, align 1, !alias.scope !4, !noalias !3
  %wp8377 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8376, ptr %wp8377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd310 word 0xeb09011f
  %r8378.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8378 = load i64, ptr %r8378.p, align 8, !alias.scope !3, !noalias !4
  %r8379.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8379 = load i64, ptr %r8379.p, align 8, !alias.scope !3, !noalias !4
  %t8380 = sub i64 %r8378, %r8379
  %fn8381 = icmp slt i64 %t8380, 0
  %fz8382 = icmp eq i64 %t8380, 0
  %fc8383 = icmp uge i64 %r8378, %r8379
  %fx18384 = xor i64 %r8378, %r8379
  %fx28385 = xor i64 %r8378, %t8380
  %fva8386 = and i64 %fx18384, %fx28385
  %fv8387 = icmp slt i64 %fva8386, 0
  %nz8388 = zext i1 %fn8381 to i64
  %zz8389 = zext i1 %fz8382 to i64
  %cz8390 = zext i1 %fc8383 to i64
  %vz8391 = zext i1 %fv8387 to i64
  %ns8392 = shl i64 %nz8388, 31
  %zs8393 = shl i64 %zz8389, 30
  %cs8394 = shl i64 %cz8390, 29
  %vs8395 = shl i64 %vz8391, 28
  %nzor8396 = or i64 %ns8392, %zs8393
  %cvor8397 = or i64 %cs8394, %vs8395
  %nzcv8398 = or i64 %nzor8396, %cvor8397
  %wp8399 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8398, ptr %wp8399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd314 word 0x54003421
  %r8400.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8400 = load i64, ptr %r8400.p, align 8, !alias.scope !3, !noalias !4
  %fsh8402 = lshr i64 %r8400, 30
  %ftr8403 = trunc i64 %fsh8402 to i1
  %cond8401 = xor i1 %ftr8403, true
  br i1 %cond8401, label %L_8000dd998, label %L_8000dd318_ft
L_8000dd37c:
  ; @pc 0x8000dd37c word 0xb900010a
  %r8546.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8546 = load i64, ptr %r8546.p, align 8, !alias.scope !3, !noalias !4
  %r8547.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8547 = load i64, ptr %r8547.p, align 8, !alias.scope !3, !noalias !4
  %c8548 = trunc i64 %r8547 to i32
  %gmp8549 = inttoptr i64 %r8546 to ptr
  store i32 %c8548, ptr %gmp8549, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd380 word 0x8b090908
  %r8550.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8550 = load i64, ptr %r8550.p, align 8, !alias.scope !3, !noalias !4
  %r8551.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8551 = load i64, ptr %r8551.p, align 8, !alias.scope !3, !noalias !4
  %t8552 = shl i64 %r8551, 2
  %t8553 = add i64 %r8550, %t8552
  %wp8554 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8553, ptr %wp8554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd384 word 0xf90002e8
  %r8555.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8555 = load i64, ptr %r8555.p, align 8, !alias.scope !3, !noalias !4
  %r8556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8556 = load i64, ptr %r8556.p, align 8, !alias.scope !3, !noalias !4
  %gmp8557 = inttoptr i64 %r8555 to ptr
  store i64 %r8556, ptr %gmp8557, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd388 word 0x17ffff10
  br label %L_8000dcfc8
L_8000dd38c:
  ; @pc 0x8000dd38c word 0xf85d83a8
  %r8558.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8558 = load i64, ptr %r8558.p, align 8, !alias.scope !3, !noalias !4
  %t8559 = add i64 %r8558, -40
  %gmp8560 = inttoptr i64 %t8559 to ptr
  %gml8561 = load i64, ptr %gmp8560, align 1, !alias.scope !4, !noalias !3
  %wp8562 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8561, ptr %wp8562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd390 word 0x13001ee3
  %r8563.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8563 = load i64, ptr %r8563.p, align 8, !alias.scope !3, !noalias !4
  %c8564 = trunc i64 %r8563 to i32
  %t8565 = lshr i32 %c8564, 7
  %t8566 = and i32 %t8565, 1
  %t8567 = sub i32 0, %t8566
  %t8568 = and i32 %t8567, -256
  %t8569 = and i32 %c8564, 255
  %t8570 = or i32 %t8568, %t8569
  %c8571 = zext i32 %t8570 to i64
  %wp8572 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8571, ptr %wp8572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd394 word 0xf9400108
  %r8573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8573 = load i64, ptr %r8573.p, align 8, !alias.scope !3, !noalias !4
  %gmp8574 = inttoptr i64 %r8573 to ptr
  %gml8575 = load i64, ptr %gmp8574, align 1, !alias.scope !4, !noalias !3
  %wp8576 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8575, ptr %wp8576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd398 word 0xf9402908
  %r8577.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8577 = load i64, ptr %r8577.p, align 8, !alias.scope !3, !noalias !4
  %t8578 = add i64 %r8577, 80
  %gmp8579 = inttoptr i64 %t8578 to ptr
  %gml8580 = load i64, ptr %gmp8579, align 1, !alias.scope !4, !noalias !3
  %wp8581 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8580, ptr %wp8581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd39c word 0xeb1b011f
  %r8582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8582 = load i64, ptr %r8582.p, align 8, !alias.scope !3, !noalias !4
  %r8583.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8583 = load i64, ptr %r8583.p, align 8, !alias.scope !3, !noalias !4
  %t8584 = sub i64 %r8582, %r8583
  %fn8585 = icmp slt i64 %t8584, 0
  %fz8586 = icmp eq i64 %t8584, 0
  %fc8587 = icmp uge i64 %r8582, %r8583
  %fx18588 = xor i64 %r8582, %r8583
  %fx28589 = xor i64 %r8582, %t8584
  %fva8590 = and i64 %fx18588, %fx28589
  %fv8591 = icmp slt i64 %fva8590, 0
  %nz8592 = zext i1 %fn8585 to i64
  %zz8593 = zext i1 %fz8586 to i64
  %cz8594 = zext i1 %fc8587 to i64
  %vz8595 = zext i1 %fv8591 to i64
  %ns8596 = shl i64 %nz8592, 31
  %zs8597 = shl i64 %zz8593, 30
  %cs8598 = shl i64 %cz8594, 29
  %vs8599 = shl i64 %vz8595, 28
  %nzor8600 = or i64 %ns8596, %zs8597
  %cvor8601 = or i64 %cs8598, %vs8599
  %nzcv8602 = or i64 %nzor8600, %cvor8601
  %wp8603 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8602, ptr %wp8603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3a0 word 0x54003141
  %r8604.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8604 = load i64, ptr %r8604.p, align 8, !alias.scope !3, !noalias !4
  %fsh8606 = lshr i64 %r8604, 30
  %ftr8607 = trunc i64 %fsh8606 to i1
  %cond8605 = xor i1 %ftr8607, true
  br i1 %cond8605, label %L_8000dd9c8, label %L_8000dd3a4_ft
L_8000dd408:
  ; @pc 0x8000dd408 word 0xb900010a
  %r8750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8750 = load i64, ptr %r8750.p, align 8, !alias.scope !3, !noalias !4
  %r8751.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8751 = load i64, ptr %r8751.p, align 8, !alias.scope !3, !noalias !4
  %c8752 = trunc i64 %r8751 to i32
  %gmp8753 = inttoptr i64 %r8750 to ptr
  store i32 %c8752, ptr %gmp8753, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd40c word 0x8b090908
  %r8754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8754 = load i64, ptr %r8754.p, align 8, !alias.scope !3, !noalias !4
  %r8755.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8755 = load i64, ptr %r8755.p, align 8, !alias.scope !3, !noalias !4
  %t8756 = shl i64 %r8755, 2
  %t8757 = add i64 %r8754, %t8756
  %wp8758 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8757, ptr %wp8758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd410 word 0xf90002a8
  %r8759.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8759 = load i64, ptr %r8759.p, align 8, !alias.scope !3, !noalias !4
  %r8760.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8760 = load i64, ptr %r8760.p, align 8, !alias.scope !3, !noalias !4
  %gmp8761 = inttoptr i64 %r8759 to ptr
  store i64 %r8760, ptr %gmp8761, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd414 word 0x17ffff56
  br label %L_8000dd16c
L_8000dd418:
  ; @pc 0x8000dd418 word 0xf9401be0
  %r8762.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8762 = load i64, ptr %r8762.p, align 8, !alias.scope !3, !noalias !4
  %t8763 = add i64 %r8762, 48
  %gmp8764 = inttoptr i64 %t8763 to ptr
  %gml8765 = load i64, ptr %gmp8764, align 1, !alias.scope !4, !noalias !3
  %wp8766 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml8765, ptr %wp8766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd41c word 0xaa1703e1
  %r8767.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8767 = load i64, ptr %r8767.p, align 8, !alias.scope !3, !noalias !4
  %t8768 = or i64 0, %r8767
  %wp8769 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t8768, ptr %wp8769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd420 word 0x52800022
  %c8770 = zext i32 1 to i64
  %wp8771 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8770, ptr %wp8771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd424 word 0xaa1503e4
  %r8772.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8772 = load i64, ptr %r8772.p, align 8, !alias.scope !3, !noalias !4
  %t8773 = or i64 0, %r8772
  %wp8774 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t8773, ptr %wp8774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd428 word 0xaa1603e5
  %r8775.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8775 = load i64, ptr %r8775.p, align 8, !alias.scope !3, !noalias !4
  %t8776 = or i64 0, %r8775
  %wp8777 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t8776, ptr %wp8777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd42c word 0xd63f0100
  %r8778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8778 = load i64, ptr %r8778.p, align 8, !alias.scope !3, !noalias !4
  %fp8779 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8778, ptr %fp8779, align 8, !alias.scope !3, !noalias !4
  %wp8780 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360644656, ptr %wp8780, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd430 word 0x17ffff0c
  br label %L_8000dd060
L_8000dd434:
  ; @pc 0x8000dd434 word 0x52812094
  %c8781 = zext i32 2308 to i64
  %wp8782 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c8781, ptr %wp8782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd438 word 0x72b00014
  %r8783.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8783 = load i64, ptr %r8783.p, align 8, !alias.scope !3, !noalias !4
  %t8784 = and i64 %r8783, -4294901761
  %t8785 = or i64 %t8784, 2147483648
  %c8786 = trunc i64 %t8785 to i32
  %c8787 = zext i32 %c8786 to i64
  %wp8788 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c8787, ptr %wp8788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd43c word 0x7103fd1f
  %r8789.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8789 = load i64, ptr %r8789.p, align 8, !alias.scope !3, !noalias !4
  %c8790 = trunc i64 %r8789 to i32
  %t8791 = sub i32 %c8790, 255
  %fn8792 = icmp slt i32 %t8791, 0
  %fz8793 = icmp eq i32 %t8791, 0
  %fc8794 = icmp uge i32 %c8790, 255
  %fx18795 = xor i32 %c8790, 255
  %fx28796 = xor i32 %c8790, %t8791
  %fva8797 = and i32 %fx18795, %fx28796
  %fv8798 = icmp slt i32 %fva8797, 0
  %nz8799 = zext i1 %fn8792 to i64
  %zz8800 = zext i1 %fz8793 to i64
  %cz8801 = zext i1 %fc8794 to i64
  %vz8802 = zext i1 %fv8798 to i64
  %ns8803 = shl i64 %nz8799, 31
  %zs8804 = shl i64 %zz8800, 30
  %cs8805 = shl i64 %cz8801, 29
  %vs8806 = shl i64 %vz8802, 28
  %nzor8807 = or i64 %ns8803, %zs8804
  %cvor8808 = or i64 %cs8805, %vs8806
  %nzcv8809 = or i64 %nzor8807, %cvor8808
  %wp8810 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8809, ptr %wp8810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd440 word 0x54000401
  %r8811.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8811 = load i64, ptr %r8811.p, align 8, !alias.scope !3, !noalias !4
  %fsh8813 = lshr i64 %r8811, 30
  %ftr8814 = trunc i64 %fsh8813 to i1
  %cond8812 = xor i1 %ftr8814, true
  br i1 %cond8812, label %L_8000dd4c0, label %L_8000dd444
L_8000dd444:
  ; @pc 0x8000dd444 word 0xb94017e8
  %r8815.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8815 = load i64, ptr %r8815.p, align 8, !alias.scope !3, !noalias !4
  %t8816 = add i64 %r8815, 20
  %gmp8817 = inttoptr i64 %t8816 to ptr
  %gml8818 = load i32, ptr %gmp8817, align 1, !alias.scope !4, !noalias !3
  %c8819 = zext i32 %gml8818 to i64
  %wp8820 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8819, ptr %wp8820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd448 word 0x7103fd1f
  %r8821.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8821 = load i64, ptr %r8821.p, align 8, !alias.scope !3, !noalias !4
  %c8822 = trunc i64 %r8821 to i32
  %t8823 = sub i32 %c8822, 255
  %fn8824 = icmp slt i32 %t8823, 0
  %fz8825 = icmp eq i32 %t8823, 0
  %fc8826 = icmp uge i32 %c8822, 255
  %fx18827 = xor i32 %c8822, 255
  %fx28828 = xor i32 %c8822, %t8823
  %fva8829 = and i32 %fx18827, %fx28828
  %fv8830 = icmp slt i32 %fva8829, 0
  %nz8831 = zext i1 %fn8824 to i64
  %zz8832 = zext i1 %fz8825 to i64
  %cz8833 = zext i1 %fc8826 to i64
  %vz8834 = zext i1 %fv8830 to i64
  %ns8835 = shl i64 %nz8831, 31
  %zs8836 = shl i64 %zz8832, 30
  %cs8837 = shl i64 %cz8833, 29
  %vs8838 = shl i64 %vz8834, 28
  %nzor8839 = or i64 %ns8835, %zs8836
  %cvor8840 = or i64 %cs8837, %vs8838
  %nzcv8841 = or i64 %nzor8839, %cvor8840
  %wp8842 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8841, ptr %wp8842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd44c word 0x540005e1
  %r8843.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8843 = load i64, ptr %r8843.p, align 8, !alias.scope !3, !noalias !4
  %fsh8845 = lshr i64 %r8843, 30
  %ftr8846 = trunc i64 %fsh8845 to i1
  %cond8844 = xor i1 %ftr8846, true
  br i1 %cond8844, label %L_8000dd508, label %L_8000dd450
L_8000dd450:
  ; @pc 0x8000dd450 word 0xb94023e8
  %r8847.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8847 = load i64, ptr %r8847.p, align 8, !alias.scope !3, !noalias !4
  %t8848 = add i64 %r8847, 32
  %gmp8849 = inttoptr i64 %t8848 to ptr
  %gml8850 = load i32, ptr %gmp8849, align 1, !alias.scope !4, !noalias !3
  %c8851 = zext i32 %gml8850 to i64
  %wp8852 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8851, ptr %wp8852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd454 word 0x7103fd1f
  %r8853.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8853 = load i64, ptr %r8853.p, align 8, !alias.scope !3, !noalias !4
  %c8854 = trunc i64 %r8853 to i32
  %t8855 = sub i32 %c8854, 255
  %fn8856 = icmp slt i32 %t8855, 0
  %fz8857 = icmp eq i32 %t8855, 0
  %fc8858 = icmp uge i32 %c8854, 255
  %fx18859 = xor i32 %c8854, 255
  %fx28860 = xor i32 %c8854, %t8855
  %fva8861 = and i32 %fx18859, %fx28860
  %fv8862 = icmp slt i32 %fva8861, 0
  %nz8863 = zext i1 %fn8856 to i64
  %zz8864 = zext i1 %fz8857 to i64
  %cz8865 = zext i1 %fc8858 to i64
  %vz8866 = zext i1 %fv8862 to i64
  %ns8867 = shl i64 %nz8863, 31
  %zs8868 = shl i64 %zz8864, 30
  %cs8869 = shl i64 %cz8865, 29
  %vs8870 = shl i64 %vz8866, 28
  %nzor8871 = or i64 %ns8867, %zs8868
  %cvor8872 = or i64 %cs8869, %vs8870
  %nzcv8873 = or i64 %nzor8871, %cvor8872
  %wp8874 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8873, ptr %wp8874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd458 word 0x54000801
  %r8875.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8875 = load i64, ptr %r8875.p, align 8, !alias.scope !3, !noalias !4
  %fsh8877 = lshr i64 %r8875, 30
  %ftr8878 = trunc i64 %fsh8877 to i1
  %cond8876 = xor i1 %ftr8878, true
  br i1 %cond8876, label %L_8000dd558, label %L_8000dd45c
L_8000dd45c:
  ; @pc 0x8000dd45c word 0xb85d83a8
  %r8879.p = getelementptr inbounds i8, ptr %c, i64 232
  %r8879 = load i64, ptr %r8879.p, align 8, !alias.scope !3, !noalias !4
  %t8880 = add i64 %r8879, -40
  %gmp8881 = inttoptr i64 %t8880 to ptr
  %gml8882 = load i32, ptr %gmp8881, align 1, !alias.scope !4, !noalias !3
  %c8883 = zext i32 %gml8882 to i64
  %wp8884 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8883, ptr %wp8884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd460 word 0xaa1803e4
  %r8885.p = getelementptr inbounds i8, ptr %c, i64 192
  %r8885 = load i64, ptr %r8885.p, align 8, !alias.scope !3, !noalias !4
  %t8886 = or i64 0, %r8885
  %wp8887 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t8886, ptr %wp8887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd464 word 0xaa1903e5
  %r8888.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8888 = load i64, ptr %r8888.p, align 8, !alias.scope !3, !noalias !4
  %t8889 = or i64 0, %r8888
  %wp8890 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t8889, ptr %wp8890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd468 word 0xb9401beb
  %r8891.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8891 = load i64, ptr %r8891.p, align 8, !alias.scope !3, !noalias !4
  %t8892 = add i64 %r8891, 24
  %gmp8893 = inttoptr i64 %t8892 to ptr
  %gml8894 = load i32, ptr %gmp8893, align 1, !alias.scope !4, !noalias !3
  %c8895 = zext i32 %gml8894 to i64
  %wp8896 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8895, ptr %wp8896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd46c word 0x2a1b03ed
  %r8897.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8897 = load i64, ptr %r8897.p, align 8, !alias.scope !3, !noalias !4
  %c8898 = trunc i64 %r8897 to i32
  %t8899 = or i32 0, %c8898
  %c8900 = zext i32 %t8899 to i64
  %wp8901 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c8900, ptr %wp8901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd470 word 0x7103fd1f
  %r8902.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8902 = load i64, ptr %r8902.p, align 8, !alias.scope !3, !noalias !4
  %c8903 = trunc i64 %r8902 to i32
  %t8904 = sub i32 %c8903, 255
  %fn8905 = icmp slt i32 %t8904, 0
  %fz8906 = icmp eq i32 %t8904, 0
  %fc8907 = icmp uge i32 %c8903, 255
  %fx18908 = xor i32 %c8903, 255
  %fx28909 = xor i32 %c8903, %t8904
  %fva8910 = and i32 %fx18908, %fx28909
  %fv8911 = icmp slt i32 %fva8910, 0
  %nz8912 = zext i1 %fn8905 to i64
  %zz8913 = zext i1 %fz8906 to i64
  %cz8914 = zext i1 %fc8907 to i64
  %vz8915 = zext i1 %fv8911 to i64
  %ns8916 = shl i64 %nz8912, 31
  %zs8917 = shl i64 %zz8913, 30
  %cs8918 = shl i64 %cz8914, 29
  %vs8919 = shl i64 %vz8915, 28
  %nzor8920 = or i64 %ns8916, %zs8917
  %cvor8921 = or i64 %cs8918, %vs8919
  %nzcv8922 = or i64 %nzor8920, %cvor8921
  %wp8923 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8922, ptr %wp8923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd474 word 0x54ff85e0
  %r8924.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8924 = load i64, ptr %r8924.p, align 8, !alias.scope !3, !noalias !4
  %fsh8926 = lshr i64 %r8924, 30
  %cond8925 = trunc i64 %fsh8926 to i1
  br i1 %cond8925, label %L_8000dc530, label %L_8000dd478_ft
L_8000dd47c:
  ; @pc 0x8000dd47c word 0x52811c0a
  %c8927 = zext i32 2272 to i64
  %wp8928 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8927, ptr %wp8928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd480 word 0x72a4006a
  %r8929.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8929 = load i64, ptr %r8929.p, align 8, !alias.scope !3, !noalias !4
  %t8930 = and i64 %r8929, -4294901761
  %t8931 = or i64 %t8930, 537067520
  %c8932 = trunc i64 %t8931 to i32
  %c8933 = zext i32 %c8932 to i64
  %wp8934 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8933, ptr %wp8934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd484 word 0x2900510a
  %r8935.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8935 = load i64, ptr %r8935.p, align 8, !alias.scope !3, !noalias !4
  %t8936 = add i64 %r8935, 4
  %r8937.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8937 = load i64, ptr %r8937.p, align 8, !alias.scope !3, !noalias !4
  %c8938 = trunc i64 %r8937 to i32
  %gmp8939 = inttoptr i64 %r8935 to ptr
  store i32 %c8938, ptr %gmp8939, align 1, !alias.scope !4, !noalias !3
  %r8940.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8940 = load i64, ptr %r8940.p, align 8, !alias.scope !3, !noalias !4
  %c8941 = trunc i64 %r8940 to i32
  %gmp8942 = inttoptr i64 %t8936 to ptr
  store i32 %c8941, ptr %gmp8942, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd488 word 0xf94007ea
  %r8943.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8943 = load i64, ptr %r8943.p, align 8, !alias.scope !3, !noalias !4
  %t8944 = add i64 %r8943, 8
  %gmp8945 = inttoptr i64 %t8944 to ptr
  %gml8946 = load i64, ptr %gmp8945, align 1, !alias.scope !4, !noalias !3
  %wp8947 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml8946, ptr %wp8947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd48c word 0x53081f89
  %r8948.p = getelementptr inbounds i8, ptr %c, i64 224
  %r8948 = load i64, ptr %r8948.p, align 8, !alias.scope !3, !noalias !4
  %c8949 = trunc i64 %r8948 to i32
  %ror8950 = call i32 @llvm.fshr.i32(i32 %c8949, i32 %c8949, i32 8)
  %t8951 = and i32 %ror8950, -16777216
  %c8952 = zext i32 %t8951 to i64
  %wp8953 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8952, ptr %wp8953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd490 word 0x53047d29
  %r8954.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8954 = load i64, ptr %r8954.p, align 8, !alias.scope !3, !noalias !4
  %c8955 = trunc i64 %r8954 to i32
  %ror8956 = call i32 @llvm.fshr.i32(i32 %c8955, i32 %c8955, i32 4)
  %t8957 = and i32 %ror8956, 268435455
  %c8958 = zext i32 %t8957 to i64
  %wp8959 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8958, ptr %wp8959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd494 word 0x114c0129
  %r8960.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8960 = load i64, ptr %r8960.p, align 8, !alias.scope !3, !noalias !4
  %c8961 = trunc i64 %r8960 to i32
  %t8962 = add i32 %c8961, 3145728
  %c8963 = zext i32 %t8962 to i64
  %wp8964 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8963, ptr %wp8964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd498 word 0x120c1129
  %r8965.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8965 = load i64, ptr %r8965.p, align 8, !alias.scope !3, !noalias !4
  %c8966 = trunc i64 %r8965 to i32
  %t8967 = and i32 %c8966, 32505856
  %c8968 = zext i32 %t8967 to i64
  %wp8969 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8968, ptr %wp8969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd49c word 0x2901550a
  %r8970.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8970 = load i64, ptr %r8970.p, align 8, !alias.scope !3, !noalias !4
  %t8971 = add i64 %r8970, 8
  %t8972 = add i64 %t8971, 4
  %r8973.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8973 = load i64, ptr %r8973.p, align 8, !alias.scope !3, !noalias !4
  %c8974 = trunc i64 %r8973 to i32
  %gmp8975 = inttoptr i64 %t8971 to ptr
  store i32 %c8974, ptr %gmp8975, align 1, !alias.scope !4, !noalias !3
  %r8976.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8976 = load i64, ptr %r8976.p, align 8, !alias.scope !3, !noalias !4
  %c8977 = trunc i64 %r8976 to i32
  %gmp8978 = inttoptr i64 %t8972 to ptr
  store i32 %c8977, ptr %gmp8978, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd4a0 word 0x5281208a
  %c8979 = zext i32 2308 to i64
  %wp8980 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8979, ptr %wp8980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4a4 word 0x72b0000a
  %r8981.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8981 = load i64, ptr %r8981.p, align 8, !alias.scope !3, !noalias !4
  %t8982 = and i64 %r8981, -4294901761
  %t8983 = or i64 %t8982, 2147483648
  %c8984 = trunc i64 %t8983 to i32
  %c8985 = zext i32 %c8984 to i64
  %wp8986 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8985, ptr %wp8986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4a8 word 0x2a0a0129
  %r8987.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8987 = load i64, ptr %r8987.p, align 8, !alias.scope !3, !noalias !4
  %c8988 = trunc i64 %r8987 to i32
  %r8989.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8989 = load i64, ptr %r8989.p, align 8, !alias.scope !3, !noalias !4
  %c8990 = trunc i64 %r8989 to i32
  %t8991 = or i32 %c8990, %c8988
  %c8992 = zext i32 %t8991 to i64
  %wp8993 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8992, ptr %wp8993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4ac word 0x32100129
  %r8994.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8994 = load i64, ptr %r8994.p, align 8, !alias.scope !3, !noalias !4
  %c8995 = trunc i64 %r8994 to i32
  %t8996 = or i32 %c8995, 65536
  %c8997 = zext i32 %t8996 to i64
  %wp8998 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8997, ptr %wp8998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4b0 word 0xb9001109
  %r8999.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8999 = load i64, ptr %r8999.p, align 8, !alias.scope !3, !noalias !4
  %t9000 = add i64 %r8999, 16
  %r9001.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9001 = load i64, ptr %r9001.p, align 8, !alias.scope !3, !noalias !4
  %c9002 = trunc i64 %r9001 to i32
  %gmp9003 = inttoptr i64 %t9000 to ptr
  store i32 %c9002, ptr %gmp9003, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd4b4 word 0x91005108
  %r9004.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9004 = load i64, ptr %r9004.p, align 8, !alias.scope !3, !noalias !4
  %t9005 = add i64 %r9004, 20
  %wp9006 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9005, ptr %wp9006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4b8 word 0xf90002e8
  %r9007.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9007 = load i64, ptr %r9007.p, align 8, !alias.scope !3, !noalias !4
  %r9008.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9008 = load i64, ptr %r9008.p, align 8, !alias.scope !3, !noalias !4
  %gmp9009 = inttoptr i64 %r9007 to ptr
  store i64 %r9008, ptr %gmp9009, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd4bc word 0x17fffcb1
  br label %L_8000dc780
L_8000dd4c0:
  ; @pc 0x8000dd4c0 word 0x52800028
  %c9010 = zext i32 1 to i64
  %wp9011 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9010, ptr %wp9011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4c4 word 0x390042e8
  %r9012.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9012 = load i64, ptr %r9012.p, align 8, !alias.scope !3, !noalias !4
  %t9013 = add i64 %r9012, 16
  %r9014.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9014 = load i64, ptr %r9014.p, align 8, !alias.scope !3, !noalias !4
  %c9015 = trunc i64 %r9014 to i32
  %c9016 = trunc i32 %c9015 to i8
  %gmp9017 = inttoptr i64 %t9013 to ptr
  store i8 %c9016, ptr %gmp9017, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd4c8 word 0xf001c368
  %wp9018 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp9018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4cc word 0xf9479508
  %r9019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9019 = load i64, ptr %r9019.p, align 8, !alias.scope !3, !noalias !4
  %t9020 = add i64 %r9019, 3880
  %gmp9021 = inttoptr i64 %t9020 to ptr
  %gml9022 = load i64, ptr %gmp9021, align 1, !alias.scope !4, !noalias !3
  %wp9023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9022, ptr %wp9023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4d0 word 0xb9400108
  %r9024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9024 = load i64, ptr %r9024.p, align 8, !alias.scope !3, !noalias !4
  %gmp9025 = inttoptr i64 %r9024 to ptr
  %gml9026 = load i32, ptr %gmp9025, align 1, !alias.scope !4, !noalias !3
  %c9027 = zext i32 %gml9026 to i64
  %wp9028 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9027, ptr %wp9028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4d4 word 0x340006e8
  %r9029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9029 = load i64, ptr %r9029.p, align 8, !alias.scope !3, !noalias !4
  %c9030 = trunc i64 %r9029 to i32
  %cmp9031 = icmp eq i32 %c9030, 0
  br i1 %cmp9031, label %L_8000dd5b0, label %L_8000dd4d8_ft
L_8000dd508:
  ; @pc 0x8000dd508 word 0x52800028
  %c9110 = zext i32 1 to i64
  %wp9111 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9110, ptr %wp9111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd50c word 0x390042e8
  %r9112.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9112 = load i64, ptr %r9112.p, align 8, !alias.scope !3, !noalias !4
  %t9113 = add i64 %r9112, 16
  %r9114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9114 = load i64, ptr %r9114.p, align 8, !alias.scope !3, !noalias !4
  %c9115 = trunc i64 %r9114 to i32
  %c9116 = trunc i32 %c9115 to i8
  %gmp9117 = inttoptr i64 %t9113 to ptr
  store i8 %c9116, ptr %gmp9117, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd510 word 0xf001c368
  %wp9118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp9118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd514 word 0xf9479508
  %r9119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9119 = load i64, ptr %r9119.p, align 8, !alias.scope !3, !noalias !4
  %t9120 = add i64 %r9119, 3880
  %gmp9121 = inttoptr i64 %t9120 to ptr
  %gml9122 = load i64, ptr %gmp9121, align 1, !alias.scope !4, !noalias !3
  %wp9123 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9122, ptr %wp9123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd518 word 0xb9400108
  %r9124.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9124 = load i64, ptr %r9124.p, align 8, !alias.scope !3, !noalias !4
  %gmp9125 = inttoptr i64 %r9124 to ptr
  %gml9126 = load i32, ptr %gmp9125, align 1, !alias.scope !4, !noalias !3
  %c9127 = zext i32 %gml9126 to i64
  %wp9128 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9127, ptr %wp9128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd51c word 0x340005e8
  %r9129.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9129 = load i64, ptr %r9129.p, align 8, !alias.scope !3, !noalias !4
  %c9130 = trunc i64 %r9129 to i32
  %cmp9131 = icmp eq i32 %c9130, 0
  br i1 %cmp9131, label %L_8000dd5d8, label %L_8000dd520_ft
L_8000dd558:
  ; @pc 0x8000dd558 word 0x52800028
  %c9221 = zext i32 1 to i64
  %wp9222 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9221, ptr %wp9222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd55c word 0x390042e8
  %r9223.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9223 = load i64, ptr %r9223.p, align 8, !alias.scope !3, !noalias !4
  %t9224 = add i64 %r9223, 16
  %r9225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9225 = load i64, ptr %r9225.p, align 8, !alias.scope !3, !noalias !4
  %c9226 = trunc i64 %r9225 to i32
  %c9227 = trunc i32 %c9226 to i8
  %gmp9228 = inttoptr i64 %t9224 to ptr
  store i8 %c9227, ptr %gmp9228, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd560 word 0xf001c368
  %wp9229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp9229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd564 word 0xf9479508
  %r9230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9230 = load i64, ptr %r9230.p, align 8, !alias.scope !3, !noalias !4
  %t9231 = add i64 %r9230, 3880
  %gmp9232 = inttoptr i64 %t9231 to ptr
  %gml9233 = load i64, ptr %gmp9232, align 1, !alias.scope !4, !noalias !3
  %wp9234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9233, ptr %wp9234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd568 word 0xb9400108
  %r9235.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9235 = load i64, ptr %r9235.p, align 8, !alias.scope !3, !noalias !4
  %gmp9236 = inttoptr i64 %r9235 to ptr
  %gml9237 = load i32, ptr %gmp9236, align 1, !alias.scope !4, !noalias !3
  %c9238 = zext i32 %gml9237 to i64
  %wp9239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9238, ptr %wp9239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd56c word 0x340004c8
  %r9240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9240 = load i64, ptr %r9240.p, align 8, !alias.scope !3, !noalias !4
  %c9241 = trunc i64 %r9240 to i32
  %cmp9242 = icmp eq i32 %c9241, 0
  br i1 %cmp9242, label %L_8000dd604, label %L_8000dd570_ft
L_8000dd5a8:
  ; @pc 0x8000dd5a8 word 0x52802000
  %c9332 = zext i32 256 to i64
  %wp9333 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c9332, ptr %wp9333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5ac word 0x17ffff4e
  br label %L_8000dd2e4
L_8000dd5b0:
  ; @pc 0x8000dd5b0 word 0xf001c3e8
  %wp9334 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5b4 word 0x13001f82
  %r9335.p = getelementptr inbounds i8, ptr %c, i64 224
  %r9335 = load i64, ptr %r9335.p, align 8, !alias.scope !3, !noalias !4
  %c9336 = trunc i64 %r9335 to i32
  %t9337 = lshr i32 %c9336, 7
  %t9338 = and i32 %t9337, 1
  %t9339 = sub i32 0, %t9338
  %t9340 = and i32 %t9339, -256
  %t9341 = and i32 %c9336, 255
  %t9342 = or i32 %t9340, %t9341
  %c9343 = zext i32 %t9342 to i64
  %wp9344 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9343, ptr %wp9344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5b8 word 0xf9417908
  %r9345.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9345 = load i64, ptr %r9345.p, align 8, !alias.scope !3, !noalias !4
  %t9346 = add i64 %r9345, 752
  %gmp9347 = inttoptr i64 %t9346 to ptr
  %gml9348 = load i64, ptr %gmp9347, align 1, !alias.scope !4, !noalias !3
  %wp9349 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9348, ptr %wp9349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5bc word 0xaa1703e0
  %r9350.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9350 = load i64, ptr %r9350.p, align 8, !alias.scope !3, !noalias !4
  %t9351 = or i64 0, %r9350
  %wp9352 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9351, ptr %wp9352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5c0 word 0x2a1f03e1
  %t9353 = or i32 0, 0
  %c9354 = zext i32 %t9353 to i64
  %wp9355 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9354, ptr %wp9355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5c4 word 0xf9400108
  %r9356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9356 = load i64, ptr %r9356.p, align 8, !alias.scope !3, !noalias !4
  %gmp9357 = inttoptr i64 %r9356 to ptr
  %gml9358 = load i64, ptr %gmp9357, align 1, !alias.scope !4, !noalias !3
  %wp9359 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9358, ptr %wp9359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5c8 word 0xaa1503e3
  %r9360.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9360 = load i64, ptr %r9360.p, align 8, !alias.scope !3, !noalias !4
  %t9361 = or i64 0, %r9360
  %wp9362 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9361, ptr %wp9362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5cc word 0xaa1f03e4
  %t9363 = or i64 0, 0
  %wp9364 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9363, ptr %wp9364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5d0 word 0xd63f0100
  %r9365.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9365 = load i64, ptr %r9365.p, align 8, !alias.scope !3, !noalias !4
  %fp9366 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9365, ptr %fp9366, align 8, !alias.scope !3, !noalias !4
  %wp9367 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645076, ptr %wp9367, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd5d4 word 0x17ffff9c
  br label %L_8000dd444
L_8000dd5d8:
  ; @pc 0x8000dd5d8 word 0xb94013e8
  %r9368.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9368 = load i64, ptr %r9368.p, align 8, !alias.scope !3, !noalias !4
  %t9369 = add i64 %r9368, 16
  %gmp9370 = inttoptr i64 %t9369 to ptr
  %gml9371 = load i32, ptr %gmp9370, align 1, !alias.scope !4, !noalias !3
  %c9372 = zext i32 %gml9371 to i64
  %wp9373 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9372, ptr %wp9373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5dc word 0xaa1703e0
  %r9374.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9374 = load i64, ptr %r9374.p, align 8, !alias.scope !3, !noalias !4
  %t9375 = or i64 0, %r9374
  %wp9376 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9375, ptr %wp9376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5e0 word 0x52800021
  %c9377 = zext i32 1 to i64
  %wp9378 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9377, ptr %wp9378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5e4 word 0xaa1503e3
  %r9379.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9379 = load i64, ptr %r9379.p, align 8, !alias.scope !3, !noalias !4
  %t9380 = or i64 0, %r9379
  %wp9381 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9380, ptr %wp9381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5e8 word 0xaa1f03e4
  %t9382 = or i64 0, 0
  %wp9383 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9382, ptr %wp9383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5ec word 0x13001d02
  %r9384.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9384 = load i64, ptr %r9384.p, align 8, !alias.scope !3, !noalias !4
  %c9385 = trunc i64 %r9384 to i32
  %t9386 = lshr i32 %c9385, 7
  %t9387 = and i32 %t9386, 1
  %t9388 = sub i32 0, %t9387
  %t9389 = and i32 %t9388, -256
  %t9390 = and i32 %c9385, 255
  %t9391 = or i32 %t9389, %t9390
  %c9392 = zext i32 %t9391 to i64
  %wp9393 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9392, ptr %wp9393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5f0 word 0xf001c3e8
  %wp9394 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5f4 word 0xf9417908
  %r9395.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9395 = load i64, ptr %r9395.p, align 8, !alias.scope !3, !noalias !4
  %t9396 = add i64 %r9395, 752
  %gmp9397 = inttoptr i64 %t9396 to ptr
  %gml9398 = load i64, ptr %gmp9397, align 1, !alias.scope !4, !noalias !3
  %wp9399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9398, ptr %wp9399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5f8 word 0xf9400108
  %r9400.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9400 = load i64, ptr %r9400.p, align 8, !alias.scope !3, !noalias !4
  %gmp9401 = inttoptr i64 %r9400 to ptr
  %gml9402 = load i64, ptr %gmp9401, align 1, !alias.scope !4, !noalias !3
  %wp9403 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9402, ptr %wp9403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5fc word 0xd63f0100
  %r9404.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9404 = load i64, ptr %r9404.p, align 8, !alias.scope !3, !noalias !4
  %fp9405 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9404, ptr %fp9405, align 8, !alias.scope !3, !noalias !4
  %wp9406 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645120, ptr %wp9406, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd600 word 0x17ffff94
  br label %L_8000dd450
L_8000dd604:
  ; @pc 0x8000dd604 word 0xb9402be8
  %r9407.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9407 = load i64, ptr %r9407.p, align 8, !alias.scope !3, !noalias !4
  %t9408 = add i64 %r9407, 40
  %gmp9409 = inttoptr i64 %t9408 to ptr
  %gml9410 = load i32, ptr %gmp9409, align 1, !alias.scope !4, !noalias !3
  %c9411 = zext i32 %gml9410 to i64
  %wp9412 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9411, ptr %wp9412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd608 word 0xaa1703e0
  %r9413.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9413 = load i64, ptr %r9413.p, align 8, !alias.scope !3, !noalias !4
  %t9414 = or i64 0, %r9413
  %wp9415 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9414, ptr %wp9415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd60c word 0x52800041
  %c9416 = zext i32 2 to i64
  %wp9417 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9416, ptr %wp9417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd610 word 0xaa1503e3
  %r9418.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9418 = load i64, ptr %r9418.p, align 8, !alias.scope !3, !noalias !4
  %t9419 = or i64 0, %r9418
  %wp9420 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9419, ptr %wp9420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd614 word 0xaa1f03e4
  %t9421 = or i64 0, 0
  %wp9422 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9421, ptr %wp9422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd618 word 0x13001d02
  %r9423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9423 = load i64, ptr %r9423.p, align 8, !alias.scope !3, !noalias !4
  %c9424 = trunc i64 %r9423 to i32
  %t9425 = lshr i32 %c9424, 7
  %t9426 = and i32 %t9425, 1
  %t9427 = sub i32 0, %t9426
  %t9428 = and i32 %t9427, -256
  %t9429 = and i32 %c9424, 255
  %t9430 = or i32 %t9428, %t9429
  %c9431 = zext i32 %t9430 to i64
  %wp9432 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9431, ptr %wp9432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd61c word 0xf001c3e8
  %wp9433 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd620 word 0xf9417908
  %r9434.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9434 = load i64, ptr %r9434.p, align 8, !alias.scope !3, !noalias !4
  %t9435 = add i64 %r9434, 752
  %gmp9436 = inttoptr i64 %t9435 to ptr
  %gml9437 = load i64, ptr %gmp9436, align 1, !alias.scope !4, !noalias !3
  %wp9438 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9437, ptr %wp9438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd624 word 0xf9400108
  %r9439.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9439 = load i64, ptr %r9439.p, align 8, !alias.scope !3, !noalias !4
  %gmp9440 = inttoptr i64 %r9439 to ptr
  %gml9441 = load i64, ptr %gmp9440, align 1, !alias.scope !4, !noalias !3
  %wp9442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9441, ptr %wp9442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd628 word 0xd63f0100
  %r9443.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9443 = load i64, ptr %r9443.p, align 8, !alias.scope !3, !noalias !4
  %fp9444 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9443, ptr %fp9444, align 8, !alias.scope !3, !noalias !4
  %wp9445 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645164, ptr %wp9445, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd62c word 0x17ffff8c
  br label %L_8000dd45c
L_8000dd630:
  ; @pc 0x8000dd630 word 0xd280006d
  %wp9446 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 3, ptr %wp9446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd634 word 0xf2c0002d
  %r9447.p = getelementptr inbounds i8, ptr %c, i64 104
  %r9447 = load i64, ptr %r9447.p, align 8, !alias.scope !3, !noalias !4
  %t9448 = and i64 %r9447, -281470681743361
  %t9449 = or i64 %t9448, 4294967296
  %wp9450 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t9449, ptr %wp9450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd638 word 0xf800852d
  %r9451.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9451 = load i64, ptr %r9451.p, align 8, !alias.scope !3, !noalias !4
  %t9452 = add i64 %r9451, 8
  %r9453.p = getelementptr inbounds i8, ptr %c, i64 104
  %r9453 = load i64, ptr %r9453.p, align 8, !alias.scope !3, !noalias !4
  %gmp9454 = inttoptr i64 %r9451 to ptr
  store i64 %r9453, ptr %gmp9454, align 1, !alias.scope !4, !noalias !3
  %wp9455 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t9452, ptr %wp9455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd63c word 0x17fffdec
  br label %L_8000dcdec
L_8000dd640:
  ; @pc 0x8000dd640 word 0xf9401be8
  %r9456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9456 = load i64, ptr %r9456.p, align 8, !alias.scope !3, !noalias !4
  %t9457 = add i64 %r9456, 48
  %gmp9458 = inttoptr i64 %t9457 to ptr
  %gml9459 = load i64, ptr %gmp9458, align 1, !alias.scope !4, !noalias !3
  %wp9460 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9459, ptr %wp9460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd644 word 0x9001c409
  %wp9461 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp9461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd648 word 0x13105f43
  %r9462.p = getelementptr inbounds i8, ptr %c, i64 208
  %r9462 = load i64, ptr %r9462.p, align 8, !alias.scope !3, !noalias !4
  %c9463 = trunc i64 %r9462 to i32
  %ror9464 = call i32 @llvm.fshr.i32(i32 %c9463, i32 %c9463, i32 16)
  %t9465 = lshr i32 %c9463, 23
  %t9466 = and i32 %t9465, 1
  %t9467 = sub i32 0, %t9466
  %t9468 = and i32 %t9467, -256
  %t9469 = and i32 %ror9464, 255
  %t9470 = or i32 %t9468, %t9469
  %c9471 = zext i32 %t9470 to i64
  %wp9472 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9471, ptr %wp9472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd64c word 0xf9400108
  %r9473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9473 = load i64, ptr %r9473.p, align 8, !alias.scope !3, !noalias !4
  %gmp9474 = inttoptr i64 %r9473 to ptr
  %gml9475 = load i64, ptr %gmp9474, align 1, !alias.scope !4, !noalias !3
  %wp9476 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9475, ptr %wp9476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd650 word 0xf9402908
  %r9477.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9477 = load i64, ptr %r9477.p, align 8, !alias.scope !3, !noalias !4
  %t9478 = add i64 %r9477, 80
  %gmp9479 = inttoptr i64 %t9478 to ptr
  %gml9480 = load i64, ptr %gmp9479, align 1, !alias.scope !4, !noalias !3
  %wp9481 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9480, ptr %wp9481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd654 word 0xf9478d29
  %r9482.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9482 = load i64, ptr %r9482.p, align 8, !alias.scope !3, !noalias !4
  %t9483 = add i64 %r9482, 3864
  %gmp9484 = inttoptr i64 %t9483 to ptr
  %gml9485 = load i64, ptr %gmp9484, align 1, !alias.scope !4, !noalias !3
  %wp9486 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml9485, ptr %wp9486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd658 word 0xeb09011f
  %r9487.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9487 = load i64, ptr %r9487.p, align 8, !alias.scope !3, !noalias !4
  %r9488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9488 = load i64, ptr %r9488.p, align 8, !alias.scope !3, !noalias !4
  %t9489 = sub i64 %r9487, %r9488
  %fn9490 = icmp slt i64 %t9489, 0
  %fz9491 = icmp eq i64 %t9489, 0
  %fc9492 = icmp uge i64 %r9487, %r9488
  %fx19493 = xor i64 %r9487, %r9488
  %fx29494 = xor i64 %r9487, %t9489
  %fva9495 = and i64 %fx19493, %fx29494
  %fv9496 = icmp slt i64 %fva9495, 0
  %nz9497 = zext i1 %fn9490 to i64
  %zz9498 = zext i1 %fz9491 to i64
  %cz9499 = zext i1 %fc9492 to i64
  %vz9500 = zext i1 %fv9496 to i64
  %ns9501 = shl i64 %nz9497, 31
  %zs9502 = shl i64 %zz9498, 30
  %cs9503 = shl i64 %cz9499, 29
  %vs9504 = shl i64 %vz9500, 28
  %nzor9505 = or i64 %ns9501, %zs9502
  %cvor9506 = or i64 %cs9503, %vs9504
  %nzcv9507 = or i64 %nzor9505, %cvor9506
  %wp9508 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9507, ptr %wp9508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd65c word 0x54001ce0
  %r9509.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9509 = load i64, ptr %r9509.p, align 8, !alias.scope !3, !noalias !4
  %fsh9511 = lshr i64 %r9509, 30
  %cond9510 = trunc i64 %fsh9511 to i1
  br i1 %cond9510, label %L_8000dd9f8, label %L_8000dd660_ft
L_8000dd67c:
  ; @pc 0x8000dd67c word 0xf001c3e8
  %wp9531 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd680 word 0xaa1703e0
  %r9532.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9532 = load i64, ptr %r9532.p, align 8, !alias.scope !3, !noalias !4
  %t9533 = or i64 0, %r9532
  %wp9534 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9533, ptr %wp9534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd684 word 0xf9417908
  %r9535.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9535 = load i64, ptr %r9535.p, align 8, !alias.scope !3, !noalias !4
  %t9536 = add i64 %r9535, 752
  %gmp9537 = inttoptr i64 %t9536 to ptr
  %gml9538 = load i64, ptr %gmp9537, align 1, !alias.scope !4, !noalias !3
  %wp9539 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9538, ptr %wp9539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd688 word 0x52800021
  %c9540 = zext i32 1 to i64
  %wp9541 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9540, ptr %wp9541, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd68c word 0x2a0303e2
  %r9542.p = getelementptr inbounds i8, ptr %c, i64 24
  %r9542 = load i64, ptr %r9542.p, align 8, !alias.scope !3, !noalias !4
  %c9543 = trunc i64 %r9542 to i32
  %t9544 = or i32 0, %c9543
  %c9545 = zext i32 %t9544 to i64
  %wp9546 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9545, ptr %wp9546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd690 word 0xf9400108
  %r9547.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9547 = load i64, ptr %r9547.p, align 8, !alias.scope !3, !noalias !4
  %gmp9548 = inttoptr i64 %r9547 to ptr
  %gml9549 = load i64, ptr %gmp9548, align 1, !alias.scope !4, !noalias !3
  %wp9550 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9549, ptr %wp9550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd694 word 0xaa1503e3
  %r9551.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9551 = load i64, ptr %r9551.p, align 8, !alias.scope !3, !noalias !4
  %t9552 = or i64 0, %r9551
  %wp9553 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9552, ptr %wp9553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd698 word 0xaa1603e4
  %r9554.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9554 = load i64, ptr %r9554.p, align 8, !alias.scope !3, !noalias !4
  %t9555 = or i64 0, %r9554
  %wp9556 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9555, ptr %wp9556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd69c word 0xd63f0100
  %r9557.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9557 = load i64, ptr %r9557.p, align 8, !alias.scope !3, !noalias !4
  %fp9558 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9557, ptr %fp9558, align 8, !alias.scope !3, !noalias !4
  %wp9559 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645280, ptr %wp9559, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd6a0 word 0x17fffe70
  br label %L_8000dd060
L_8000dd6a4:
  ; @pc 0x8000dd6a4 word 0xf001c3e8
  %wp9560 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6a8 word 0xaa1503e0
  %r9561.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9561 = load i64, ptr %r9561.p, align 8, !alias.scope !3, !noalias !4
  %t9562 = or i64 0, %r9561
  %wp9563 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9562, ptr %wp9563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6ac word 0xf9417908
  %r9564.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9564 = load i64, ptr %r9564.p, align 8, !alias.scope !3, !noalias !4
  %t9565 = add i64 %r9564, 752
  %gmp9566 = inttoptr i64 %t9565 to ptr
  %gml9567 = load i64, ptr %gmp9566, align 1, !alias.scope !4, !noalias !3
  %wp9568 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9567, ptr %wp9568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6b0 word 0x52800041
  %c9569 = zext i32 2 to i64
  %wp9570 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9569, ptr %wp9570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6b4 word 0x2a0303e2
  %r9571.p = getelementptr inbounds i8, ptr %c, i64 24
  %r9571 = load i64, ptr %r9571.p, align 8, !alias.scope !3, !noalias !4
  %c9572 = trunc i64 %r9571 to i32
  %t9573 = or i32 0, %c9572
  %c9574 = zext i32 %t9573 to i64
  %wp9575 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9574, ptr %wp9575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6b8 word 0xf9400108
  %r9576.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9576 = load i64, ptr %r9576.p, align 8, !alias.scope !3, !noalias !4
  %gmp9577 = inttoptr i64 %r9576 to ptr
  %gml9578 = load i64, ptr %gmp9577, align 1, !alias.scope !4, !noalias !3
  %wp9579 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9578, ptr %wp9579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6bc word 0xaa1603e3
  %r9580.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9580 = load i64, ptr %r9580.p, align 8, !alias.scope !3, !noalias !4
  %t9581 = or i64 0, %r9580
  %wp9582 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9581, ptr %wp9582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6c0 word 0xaa1803e4
  %r9583.p = getelementptr inbounds i8, ptr %c, i64 192
  %r9583 = load i64, ptr %r9583.p, align 8, !alias.scope !3, !noalias !4
  %t9584 = or i64 0, %r9583
  %wp9585 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9584, ptr %wp9585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6c4 word 0xd63f0100
  %r9586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9586 = load i64, ptr %r9586.p, align 8, !alias.scope !3, !noalias !4
  %fp9587 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9586, ptr %fp9587, align 8, !alias.scope !3, !noalias !4
  %wp9588 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645320, ptr %wp9588, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd6c8 word 0x17fffece
  br label %L_8000dd200
L_8000dd6cc:
  ; @pc 0x8000dd6cc word 0xf001c3e8
  %wp9589 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6d0 word 0xaa1703e0
  %r9590.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9590 = load i64, ptr %r9590.p, align 8, !alias.scope !3, !noalias !4
  %t9591 = or i64 0, %r9590
  %wp9592 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9591, ptr %wp9592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6d4 word 0xf9417908
  %r9593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9593 = load i64, ptr %r9593.p, align 8, !alias.scope !3, !noalias !4
  %t9594 = add i64 %r9593, 752
  %gmp9595 = inttoptr i64 %t9594 to ptr
  %gml9596 = load i64, ptr %gmp9595, align 1, !alias.scope !4, !noalias !3
  %wp9597 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9596, ptr %wp9597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6d8 word 0x2a1f03e1
  %t9598 = or i32 0, 0
  %c9599 = zext i32 %t9598 to i64
  %wp9600 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9599, ptr %wp9600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6dc word 0x2a0303e2
  %r9601.p = getelementptr inbounds i8, ptr %c, i64 24
  %r9601 = load i64, ptr %r9601.p, align 8, !alias.scope !3, !noalias !4
  %c9602 = trunc i64 %r9601 to i32
  %t9603 = or i32 0, %c9602
  %c9604 = zext i32 %t9603 to i64
  %wp9605 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9604, ptr %wp9605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6e0 word 0xf9400108
  %r9606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9606 = load i64, ptr %r9606.p, align 8, !alias.scope !3, !noalias !4
  %gmp9607 = inttoptr i64 %r9606 to ptr
  %gml9608 = load i64, ptr %gmp9607, align 1, !alias.scope !4, !noalias !3
  %wp9609 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9608, ptr %wp9609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6e4 word 0xaa1503e3
  %r9610.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9610 = load i64, ptr %r9610.p, align 8, !alias.scope !3, !noalias !4
  %t9611 = or i64 0, %r9610
  %wp9612 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9611, ptr %wp9612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6e8 word 0xaa1603e4
  %r9613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9613 = load i64, ptr %r9613.p, align 8, !alias.scope !3, !noalias !4
  %t9614 = or i64 0, %r9613
  %wp9615 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9614, ptr %wp9615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6ec word 0xd63f0100
  %r9616.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9616 = load i64, ptr %r9616.p, align 8, !alias.scope !3, !noalias !4
  %fp9617 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9616, ptr %fp9617, align 8, !alias.scope !3, !noalias !4
  %wp9618 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645360, ptr %wp9618, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd6f0 word 0x17fffe36
  br label %L_8000dcfc8
L_8000dd6f4:
  ; @pc 0x8000dd6f4 word 0xf001c3e8
  %wp9619 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp9619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6f8 word 0xaa1503e0
  %r9620.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9620 = load i64, ptr %r9620.p, align 8, !alias.scope !3, !noalias !4
  %t9621 = or i64 0, %r9620
  %wp9622 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9621, ptr %wp9622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd6fc word 0xf9417908
  %r9623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9623 = load i64, ptr %r9623.p, align 8, !alias.scope !3, !noalias !4
  %t9624 = add i64 %r9623, 752
  %gmp9625 = inttoptr i64 %t9624 to ptr
  %gml9626 = load i64, ptr %gmp9625, align 1, !alias.scope !4, !noalias !3
  %wp9627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9626, ptr %wp9627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd700 word 0x2a1f03e1
  %t9628 = or i32 0, 0
  %c9629 = zext i32 %t9628 to i64
  %wp9630 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9629, ptr %wp9630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd704 word 0x2a0303e2
  %r9631.p = getelementptr inbounds i8, ptr %c, i64 24
  %r9631 = load i64, ptr %r9631.p, align 8, !alias.scope !3, !noalias !4
  %c9632 = trunc i64 %r9631 to i32
  %t9633 = or i32 0, %c9632
  %c9634 = zext i32 %t9633 to i64
  %wp9635 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9634, ptr %wp9635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd708 word 0xf9400108
  %r9636.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9636 = load i64, ptr %r9636.p, align 8, !alias.scope !3, !noalias !4
  %gmp9637 = inttoptr i64 %r9636 to ptr
  %gml9638 = load i64, ptr %gmp9637, align 1, !alias.scope !4, !noalias !3
  %wp9639 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9638, ptr %wp9639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd70c word 0xaa1603e3
  %r9640.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9640 = load i64, ptr %r9640.p, align 8, !alias.scope !3, !noalias !4
  %t9641 = or i64 0, %r9640
  %wp9642 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t9641, ptr %wp9642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd710 word 0xaa1803e4
  %r9643.p = getelementptr inbounds i8, ptr %c, i64 192
  %r9643 = load i64, ptr %r9643.p, align 8, !alias.scope !3, !noalias !4
  %t9644 = or i64 0, %r9643
  %wp9645 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9644, ptr %wp9645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd714 word 0xd63f0100
  %r9646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9646 = load i64, ptr %r9646.p, align 8, !alias.scope !3, !noalias !4
  %fp9647 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9646, ptr %fp9647, align 8, !alias.scope !3, !noalias !4
  %wp9648 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645400, ptr %wp9648, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd718 word 0x17fffe95
  br label %L_8000dd16c
L_8000dd71c:
  ; @pc 0x8000dd71c word 0x54ffb320
  %r9649.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9649 = load i64, ptr %r9649.p, align 8, !alias.scope !3, !noalias !4
  %fsh9651 = lshr i64 %r9649, 30
  %cond9650 = trunc i64 %fsh9651 to i1
  br i1 %cond9650, label %L_8000dcd80, label %L_8000dd720_ft
L_8000dd73c:
  ; @pc 0x8000dd73c word 0x885ffec1
  %r9684.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9684 = load i64, ptr %r9684.p, align 8, !alias.scope !3, !noalias !4
  %atp9685 = inttoptr i64 %r9684 to ptr
  %ldx9686 = load atomic i32, ptr %atp9685 acquire, align 4, !alias.scope !4, !noalias !3
  %c9687 = zext i32 %ldx9686 to i64
  %fp9688 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r9684, ptr %fp9688, align 8, !alias.scope !3, !noalias !4
  %fp9689 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c9687, ptr %fp9689, align 8, !alias.scope !3, !noalias !4
  %wp9690 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9687, ptr %wp9690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd740 word 0x32010028
  %r9691.p = getelementptr inbounds i8, ptr %c, i64 8
  %r9691 = load i64, ptr %r9691.p, align 8, !alias.scope !3, !noalias !4
  %c9692 = trunc i64 %r9691 to i32
  %t9693 = or i32 %c9692, -2147483648
  %c9694 = zext i32 %t9693 to i64
  %wp9695 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9694, ptr %wp9695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd744 word 0x88097ec8
  %r9696.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9696 = load i64, ptr %r9696.p, align 8, !alias.scope !3, !noalias !4
  %atp9697 = inttoptr i64 %r9696 to ptr
  %fp9698 = getelementptr inbounds i8, ptr %c, i64 296
  %fv9699 = load i64, ptr %fp9698, align 8, !alias.scope !3, !noalias !4
  %fp9700 = getelementptr inbounds i8, ptr %c, i64 304
  %fv9701 = load i64, ptr %fp9700, align 8, !alias.scope !3, !noalias !4
  %fp9702 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp9702, align 8, !alias.scope !3, !noalias !4
  %cmp9703 = icmp eq i64 %fv9699, %r9696
  %c9704 = trunc i64 %fv9701 to i32
  %r9705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9705 = load i64, ptr %r9705.p, align 8, !alias.scope !3, !noalias !4
  %c9706 = trunc i64 %r9705 to i32
  %cx9707 = cmpxchg ptr %atp9697, i32 %c9704, i32 %c9706 seq_cst seq_cst, align 4
  %cxok9708 = extractvalue { i32, i1 } %cx9707, 1
  %t9709 = and i1 %cmp9703, %cxok9708
  %sel9710 = select i1 %t9709, i32 0, i32 1
  %c9711 = zext i32 %sel9710 to i64
  %wp9712 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9711, ptr %wp9712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd748 word 0x35ffffa9
  %r9713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9713 = load i64, ptr %r9713.p, align 8, !alias.scope !3, !noalias !4
  %c9714 = trunc i64 %r9713 to i32
  %cmp9715 = icmp ne i32 %c9714, 0
  br i1 %cmp9715, label %L_8000dd73c, label %L_8000dd74c_ft
L_8000dd760:
  ; @pc 0x8000dd760 word 0x885f7edf
  %r9737.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9737 = load i64, ptr %r9737.p, align 8, !alias.scope !3, !noalias !4
  %atp9738 = inttoptr i64 %r9737 to ptr
  %ldx9739 = load atomic i32, ptr %atp9738 acquire, align 4, !alias.scope !4, !noalias !3
  %c9740 = zext i32 %ldx9739 to i64
  %fp9741 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r9737, ptr %fp9741, align 8, !alias.scope !3, !noalias !4
  %fp9742 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c9740, ptr %fp9742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd764 word 0x8808fedf
  %r9743.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9743 = load i64, ptr %r9743.p, align 8, !alias.scope !3, !noalias !4
  %atp9744 = inttoptr i64 %r9743 to ptr
  %fp9745 = getelementptr inbounds i8, ptr %c, i64 296
  %fv9746 = load i64, ptr %fp9745, align 8, !alias.scope !3, !noalias !4
  %fp9747 = getelementptr inbounds i8, ptr %c, i64 304
  %fv9748 = load i64, ptr %fp9747, align 8, !alias.scope !3, !noalias !4
  %fp9749 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp9749, align 8, !alias.scope !3, !noalias !4
  %cmp9750 = icmp eq i64 %fv9746, %r9743
  %c9751 = trunc i64 %fv9748 to i32
  %cx9752 = cmpxchg ptr %atp9744, i32 %c9751, i32 0 seq_cst seq_cst, align 4
  %cxok9753 = extractvalue { i32, i1 } %cx9752, 1
  %t9754 = and i1 %cmp9750, %cxok9753
  %sel9755 = select i1 %t9754, i32 0, i32 1
  %c9756 = zext i32 %sel9755 to i64
  %wp9757 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9756, ptr %wp9757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd768 word 0x35ffffc8
  %r9758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9758 = load i64, ptr %r9758.p, align 8, !alias.scope !3, !noalias !4
  %c9759 = trunc i64 %r9758 to i32
  %cmp9760 = icmp ne i32 %c9759, 0
  br i1 %cmp9760, label %L_8000dd760, label %L_8000dd76c_ft
L_8000dd770:
  ; @pc 0x8000dd770 word 0x9001c388
  %wp9761 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp9761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd774 word 0x13001f82
  %r9762.p = getelementptr inbounds i8, ptr %c, i64 224
  %r9762 = load i64, ptr %r9762.p, align 8, !alias.scope !3, !noalias !4
  %c9763 = trunc i64 %r9762 to i32
  %t9764 = lshr i32 %c9763, 7
  %t9765 = and i32 %t9764, 1
  %t9766 = sub i32 0, %t9765
  %t9767 = and i32 %t9766, -256
  %t9768 = and i32 %c9763, 255
  %t9769 = or i32 %t9767, %t9768
  %c9770 = zext i32 %t9769 to i64
  %wp9771 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9770, ptr %wp9771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd778 word 0xf945bd08
  %r9772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9772 = load i64, ptr %r9772.p, align 8, !alias.scope !3, !noalias !4
  %t9773 = add i64 %r9772, 2936
  %gmp9774 = inttoptr i64 %t9773 to ptr
  %gml9775 = load i64, ptr %gmp9774, align 1, !alias.scope !4, !noalias !3
  %wp9776 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9775, ptr %wp9776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd77c word 0xaa1503e0
  %r9777.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9777 = load i64, ptr %r9777.p, align 8, !alias.scope !3, !noalias !4
  %t9778 = or i64 0, %r9777
  %wp9779 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9778, ptr %wp9779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd780 word 0x2a1f03e1
  %t9780 = or i32 0, 0
  %c9781 = zext i32 %t9780 to i64
  %wp9782 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9781, ptr %wp9782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd784 word 0xf9400108
  %r9783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9783 = load i64, ptr %r9783.p, align 8, !alias.scope !3, !noalias !4
  %gmp9784 = inttoptr i64 %r9783 to ptr
  %gml9785 = load i64, ptr %gmp9784, align 1, !alias.scope !4, !noalias !3
  %wp9786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9785, ptr %wp9786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd788 word 0x52800023
  %c9787 = zext i32 1 to i64
  %wp9788 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9787, ptr %wp9788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd78c word 0xaa1603e4
  %r9789.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9789 = load i64, ptr %r9789.p, align 8, !alias.scope !3, !noalias !4
  %t9790 = or i64 0, %r9789
  %wp9791 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9790, ptr %wp9791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd790 word 0xd63f0100
  %r9792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9792 = load i64, ptr %r9792.p, align 8, !alias.scope !3, !noalias !4
  %fp9793 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9792, ptr %fp9793, align 8, !alias.scope !3, !noalias !4
  %wp9794 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645524, ptr %wp9794, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd794 word 0x17fffd4c
  br label %L_8000dccc4
L_8000dd798:
  ; @pc 0x8000dd798 word 0xd280006c
  %wp9795 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 3, ptr %wp9795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd79c word 0xf2c0002c
  %r9796.p = getelementptr inbounds i8, ptr %c, i64 96
  %r9796 = load i64, ptr %r9796.p, align 8, !alias.scope !3, !noalias !4
  %t9797 = and i64 %r9796, -281470681743361
  %t9798 = or i64 %t9797, 4294967296
  %wp9799 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t9798, ptr %wp9799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7a0 word 0xf800850c
  %r9800.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9800 = load i64, ptr %r9800.p, align 8, !alias.scope !3, !noalias !4
  %t9801 = add i64 %r9800, 8
  %r9802.p = getelementptr inbounds i8, ptr %c, i64 96
  %r9802 = load i64, ptr %r9802.p, align 8, !alias.scope !3, !noalias !4
  %gmp9803 = inttoptr i64 %r9800 to ptr
  store i64 %r9802, ptr %gmp9803, align 1, !alias.scope !4, !noalias !3
  %wp9804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9801, ptr %wp9804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7a4 word 0x17fffd36
  br label %L_8000dcc7c
L_8000dd7a8:
  ; @pc 0x8000dd7a8 word 0x9001c388
  %wp9805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp9805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7ac word 0x13187f82
  %r9806.p = getelementptr inbounds i8, ptr %c, i64 224
  %r9806 = load i64, ptr %r9806.p, align 8, !alias.scope !3, !noalias !4
  %c9807 = trunc i64 %r9806 to i32
  %ror9808 = call i32 @llvm.fshr.i32(i32 %c9807, i32 %c9807, i32 24)
  %t9809 = lshr i32 %c9807, 31
  %t9810 = and i32 %t9809, 1
  %t9811 = sub i32 0, %t9810
  %t9812 = and i32 %t9811, -256
  %t9813 = and i32 %ror9808, 255
  %t9814 = or i32 %t9812, %t9813
  %c9815 = zext i32 %t9814 to i64
  %wp9816 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9815, ptr %wp9816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7b0 word 0xf945bd08
  %r9817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9817 = load i64, ptr %r9817.p, align 8, !alias.scope !3, !noalias !4
  %t9818 = add i64 %r9817, 2936
  %gmp9819 = inttoptr i64 %t9818 to ptr
  %gml9820 = load i64, ptr %gmp9819, align 1, !alias.scope !4, !noalias !3
  %wp9821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9820, ptr %wp9821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7b4 word 0x528000a1
  %c9822 = zext i32 5 to i64
  %wp9823 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9822, ptr %wp9823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7b8 word 0xaa1503e0
  %r9824.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9824 = load i64, ptr %r9824.p, align 8, !alias.scope !3, !noalias !4
  %t9825 = or i64 0, %r9824
  %wp9826 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9825, ptr %wp9826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7bc word 0xf9400108
  %r9827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9827 = load i64, ptr %r9827.p, align 8, !alias.scope !3, !noalias !4
  %gmp9828 = inttoptr i64 %r9827 to ptr
  %gml9829 = load i64, ptr %gmp9828, align 1, !alias.scope !4, !noalias !3
  %wp9830 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9829, ptr %wp9830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7c0 word 0x52800023
  %c9831 = zext i32 1 to i64
  %wp9832 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9831, ptr %wp9832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7c4 word 0xaa1603e4
  %r9833.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9833 = load i64, ptr %r9833.p, align 8, !alias.scope !3, !noalias !4
  %t9834 = or i64 0, %r9833
  %wp9835 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9834, ptr %wp9835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7c8 word 0xd63f0100
  %r9836.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9836 = load i64, ptr %r9836.p, align 8, !alias.scope !3, !noalias !4
  %fp9837 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9836, ptr %fp9837, align 8, !alias.scope !3, !noalias !4
  %wp9838 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645580, ptr %wp9838, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd7cc word 0x17fffd6d
  br label %L_8000dcd80
L_8000dd7d0:
  ; @pc 0x8000dd7d0 word 0xd280006c
  %wp9839 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 3, ptr %wp9839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7d4 word 0xf2c0002c
  %r9840.p = getelementptr inbounds i8, ptr %c, i64 96
  %r9840 = load i64, ptr %r9840.p, align 8, !alias.scope !3, !noalias !4
  %t9841 = and i64 %r9840, -281470681743361
  %t9842 = or i64 %t9841, 4294967296
  %wp9843 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t9842, ptr %wp9843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7d8 word 0xf800850c
  %r9844.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9844 = load i64, ptr %r9844.p, align 8, !alias.scope !3, !noalias !4
  %t9845 = add i64 %r9844, 8
  %r9846.p = getelementptr inbounds i8, ptr %c, i64 96
  %r9846 = load i64, ptr %r9846.p, align 8, !alias.scope !3, !noalias !4
  %gmp9847 = inttoptr i64 %r9844 to ptr
  store i64 %r9846, ptr %gmp9847, align 1, !alias.scope !4, !noalias !3
  %wp9848 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9845, ptr %wp9848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7dc word 0x17fffd56
  br label %L_8000dcd34
L_8000dd7e0:
  ; @pc 0x8000dd7e0 word 0x13001d02
  %r9849.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9849 = load i64, ptr %r9849.p, align 8, !alias.scope !3, !noalias !4
  %c9850 = trunc i64 %r9849 to i32
  %t9851 = lshr i32 %c9850, 7
  %t9852 = and i32 %t9851, 1
  %t9853 = sub i32 0, %t9852
  %t9854 = and i32 %t9853, -256
  %t9855 = and i32 %c9850, 255
  %t9856 = or i32 %t9854, %t9855
  %c9857 = zext i32 %t9856 to i64
  %wp9858 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9857, ptr %wp9858, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd7e4
L_8000dd7e4:
  ; @pc 0x8000dd7e4 word 0x9001c388
  %wp9859 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp9859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7e8 word 0xf945bd08
  %r9860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9860 = load i64, ptr %r9860.p, align 8, !alias.scope !3, !noalias !4
  %t9861 = add i64 %r9860, 2936
  %gmp9862 = inttoptr i64 %t9861 to ptr
  %gml9863 = load i64, ptr %gmp9862, align 1, !alias.scope !4, !noalias !3
  %wp9864 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9863, ptr %wp9864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7ec word 0xaa1503e0
  %r9865.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9865 = load i64, ptr %r9865.p, align 8, !alias.scope !3, !noalias !4
  %t9866 = or i64 0, %r9865
  %wp9867 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9866, ptr %wp9867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7f0 word 0x52800041
  %c9868 = zext i32 2 to i64
  %wp9869 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9868, ptr %wp9869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7f4 word 0xf9400108
  %r9870.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9870 = load i64, ptr %r9870.p, align 8, !alias.scope !3, !noalias !4
  %gmp9871 = inttoptr i64 %r9870 to ptr
  %gml9872 = load i64, ptr %gmp9871, align 1, !alias.scope !4, !noalias !3
  %wp9873 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9872, ptr %wp9873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7f8 word 0x52800023
  %c9874 = zext i32 1 to i64
  %wp9875 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9874, ptr %wp9875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd7fc word 0xaa1603e4
  %r9876.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9876 = load i64, ptr %r9876.p, align 8, !alias.scope !3, !noalias !4
  %t9877 = or i64 0, %r9876
  %wp9878 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9877, ptr %wp9878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd800 word 0xd63f0100
  %r9879.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9879 = load i64, ptr %r9879.p, align 8, !alias.scope !3, !noalias !4
  %fp9880 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9879, ptr %fp9880, align 8, !alias.scope !3, !noalias !4
  %wp9881 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645636, ptr %wp9881, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd804 word 0x17fffd36
  br label %L_8000dccdc
L_8000dd808:
  ; @pc 0x8000dd808 word 0x13001d02
  %r9882.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9882 = load i64, ptr %r9882.p, align 8, !alias.scope !3, !noalias !4
  %c9883 = trunc i64 %r9882 to i32
  %t9884 = lshr i32 %c9883, 7
  %t9885 = and i32 %t9884, 1
  %t9886 = sub i32 0, %t9885
  %t9887 = and i32 %t9886, -256
  %t9888 = and i32 %c9883, 255
  %t9889 = or i32 %t9887, %t9888
  %c9890 = zext i32 %t9889 to i64
  %wp9891 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9890, ptr %wp9891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd80c word 0x9001c388
  %wp9892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp9892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd810 word 0xf945bd08
  %r9893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9893 = load i64, ptr %r9893.p, align 8, !alias.scope !3, !noalias !4
  %t9894 = add i64 %r9893, 2936
  %gmp9895 = inttoptr i64 %t9894 to ptr
  %gml9896 = load i64, ptr %gmp9895, align 1, !alias.scope !4, !noalias !3
  %wp9897 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9896, ptr %wp9897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd814 word 0xaa1503e0
  %r9898.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9898 = load i64, ptr %r9898.p, align 8, !alias.scope !3, !noalias !4
  %t9899 = or i64 0, %r9898
  %wp9900 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9899, ptr %wp9900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd818 word 0x52800021
  %c9901 = zext i32 1 to i64
  %wp9902 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c9901, ptr %wp9902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd81c word 0xf9400108
  %r9903.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9903 = load i64, ptr %r9903.p, align 8, !alias.scope !3, !noalias !4
  %gmp9904 = inttoptr i64 %r9903 to ptr
  %gml9905 = load i64, ptr %gmp9904, align 1, !alias.scope !4, !noalias !3
  %wp9906 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9905, ptr %wp9906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd820 word 0x52800023
  %c9907 = zext i32 1 to i64
  %wp9908 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c9907, ptr %wp9908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd824 word 0xaa1603e4
  %r9909.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9909 = load i64, ptr %r9909.p, align 8, !alias.scope !3, !noalias !4
  %t9910 = or i64 0, %r9909
  %wp9911 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9910, ptr %wp9911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd828 word 0xd63f0100
  %r9912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9912 = load i64, ptr %r9912.p, align 8, !alias.scope !3, !noalias !4
  %fp9913 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9912, ptr %fp9913, align 8, !alias.scope !3, !noalias !4
  %wp9914 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645676, ptr %wp9914, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd82c word 0x17fffd29
  br label %L_8000dccd0
L_8000dd830:
  ; @pc 0x8000dd830 word 0xd280006d
  %wp9915 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 3, ptr %wp9915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd834 word 0xf2c0002d
  %r9916.p = getelementptr inbounds i8, ptr %c, i64 104
  %r9916 = load i64, ptr %r9916.p, align 8, !alias.scope !3, !noalias !4
  %t9917 = and i64 %r9916, -281470681743361
  %t9918 = or i64 %t9917, 4294967296
  %wp9919 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t9918, ptr %wp9919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd838 word 0xf800852d
  %r9920.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9920 = load i64, ptr %r9920.p, align 8, !alias.scope !3, !noalias !4
  %t9921 = add i64 %r9920, 8
  %r9922.p = getelementptr inbounds i8, ptr %c, i64 104
  %r9922 = load i64, ptr %r9922.p, align 8, !alias.scope !3, !noalias !4
  %gmp9923 = inttoptr i64 %r9920 to ptr
  store i64 %r9922, ptr %gmp9923, align 1, !alias.scope !4, !noalias !3
  %wp9924 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t9921, ptr %wp9924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd83c word 0x17fffd96
  br label %L_8000dce94
L_8000dd840:
  ; @pc 0x8000dd840 word 0xaa1403e0
  %r9925.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9925 = load i64, ptr %r9925.p, align 8, !alias.scope !3, !noalias !4
  %t9926 = or i64 0, %r9925
  %wp9927 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9926, ptr %wp9927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd844 word 0xf9001bf4
  %r9928.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9928 = load i64, ptr %r9928.p, align 8, !alias.scope !3, !noalias !4
  %t9929 = add i64 %r9928, 48
  %r9930.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9930 = load i64, ptr %r9930.p, align 8, !alias.scope !3, !noalias !4
  %gmp9931 = inttoptr i64 %t9929 to ptr
  store i64 %r9930, ptr %gmp9931, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd848 word 0xd63f0120
  %r9932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9932 = load i64, ptr %r9932.p, align 8, !alias.scope !3, !noalias !4
  %fp9933 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9932, ptr %fp9933, align 8, !alias.scope !3, !noalias !4
  %wp9934 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645708, ptr %wp9934, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd84c word 0xf9401be8
  %r9935.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9935 = load i64, ptr %r9935.p, align 8, !alias.scope !3, !noalias !4
  %t9936 = add i64 %r9935, 48
  %gmp9937 = inttoptr i64 %t9936 to ptr
  %gml9938 = load i64, ptr %gmp9937, align 1, !alias.scope !4, !noalias !3
  %wp9939 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9938, ptr %wp9939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd850 word 0x0b000309
  %r9940.p = getelementptr inbounds i8, ptr %c, i64 192
  %r9940 = load i64, ptr %r9940.p, align 8, !alias.scope !3, !noalias !4
  %c9941 = trunc i64 %r9940 to i32
  %r9942.p = getelementptr inbounds i8, ptr %c, i64 0
  %r9942 = load i64, ptr %r9942.p, align 8, !alias.scope !3, !noalias !4
  %c9943 = trunc i64 %r9942 to i32
  %t9944 = add i32 %c9941, %c9943
  %c9945 = zext i32 %t9944 to i64
  %wp9946 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9945, ptr %wp9946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd854 word 0x51000538
  %r9947.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9947 = load i64, ptr %r9947.p, align 8, !alias.scope !3, !noalias !4
  %c9948 = trunc i64 %r9947 to i32
  %t9949 = sub i32 %c9948, 1
  %c9950 = zext i32 %t9949 to i64
  %wp9951 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c9950, ptr %wp9951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd858 word 0xf9400108
  %r9952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9952 = load i64, ptr %r9952.p, align 8, !alias.scope !3, !noalias !4
  %gmp9953 = inttoptr i64 %r9952 to ptr
  %gml9954 = load i64, ptr %gmp9953, align 1, !alias.scope !4, !noalias !3
  %wp9955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9954, ptr %wp9955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd85c word 0xf9401508
  %r9956.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9956 = load i64, ptr %r9956.p, align 8, !alias.scope !3, !noalias !4
  %t9957 = add i64 %r9956, 40
  %gmp9958 = inttoptr i64 %t9957 to ptr
  %gml9959 = load i64, ptr %gmp9958, align 1, !alias.scope !4, !noalias !3
  %wp9960 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9959, ptr %wp9960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd860 word 0xeb19011f
  %r9961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9961 = load i64, ptr %r9961.p, align 8, !alias.scope !3, !noalias !4
  %r9962.p = getelementptr inbounds i8, ptr %c, i64 200
  %r9962 = load i64, ptr %r9962.p, align 8, !alias.scope !3, !noalias !4
  %t9963 = sub i64 %r9961, %r9962
  %fn9964 = icmp slt i64 %t9963, 0
  %fz9965 = icmp eq i64 %t9963, 0
  %fc9966 = icmp uge i64 %r9961, %r9962
  %fx19967 = xor i64 %r9961, %r9962
  %fx29968 = xor i64 %r9961, %t9963
  %fva9969 = and i64 %fx19967, %fx29968
  %fv9970 = icmp slt i64 %fva9969, 0
  %nz9971 = zext i1 %fn9964 to i64
  %zz9972 = zext i1 %fz9965 to i64
  %cz9973 = zext i1 %fc9966 to i64
  %vz9974 = zext i1 %fv9970 to i64
  %ns9975 = shl i64 %nz9971, 31
  %zs9976 = shl i64 %zz9972, 30
  %cs9977 = shl i64 %cz9973, 29
  %vs9978 = shl i64 %vz9974, 28
  %nzor9979 = or i64 %ns9975, %zs9976
  %cvor9980 = or i64 %cs9977, %vs9978
  %nzcv9981 = or i64 %nzor9979, %cvor9980
  %wp9982 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9981, ptr %wp9982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd864 word 0x540000e0
  %r9983.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9983 = load i64, ptr %r9983.p, align 8, !alias.scope !3, !noalias !4
  %fsh9985 = lshr i64 %r9983, 30
  %cond9984 = trunc i64 %fsh9985 to i1
  br i1 %cond9984, label %L_8000dd880, label %L_8000dd868_ft
L_8000dd880:
  ; @pc 0x8000dd880 word 0x52802000
  %c10020 = zext i32 256 to i64
  %wp10021 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c10020, ptr %wp10021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd884 word 0x17fffdbe
  br label %L_8000dcf7c
L_8000dd888:
  ; @pc 0x8000dd888 word 0x114c0129
  %r10022.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10022 = load i64, ptr %r10022.p, align 8, !alias.scope !3, !noalias !4
  %c10023 = trunc i64 %r10022 to i32
  %t10024 = add i32 %c10023, 3145728
  %c10025 = zext i32 %t10024 to i64
  %wp10026 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10025, ptr %wp10026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd88c word 0x5281208a
  %c10027 = zext i32 2308 to i64
  %wp10028 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10027, ptr %wp10028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd890 word 0x72b0000a
  %r10029.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10029 = load i64, ptr %r10029.p, align 8, !alias.scope !3, !noalias !4
  %t10030 = and i64 %r10029, -4294901761
  %t10031 = or i64 %t10030, 2147483648
  %c10032 = trunc i64 %t10031 to i32
  %c10033 = zext i32 %c10032 to i64
  %wp10034 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10033, ptr %wp10034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd894 word 0x120c1129
  %r10035.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10035 = load i64, ptr %r10035.p, align 8, !alias.scope !3, !noalias !4
  %c10036 = trunc i64 %r10035 to i32
  %t10037 = and i32 %c10036, 32505856
  %c10038 = zext i32 %t10037 to i64
  %wp10039 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10038, ptr %wp10039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd898 word 0x2a0a0129
  %r10040.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10040 = load i64, ptr %r10040.p, align 8, !alias.scope !3, !noalias !4
  %c10041 = trunc i64 %r10040 to i32
  %r10042.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10042 = load i64, ptr %r10042.p, align 8, !alias.scope !3, !noalias !4
  %c10043 = trunc i64 %r10042 to i32
  %t10044 = or i32 %c10043, %c10041
  %c10045 = zext i32 %t10044 to i64
  %wp10046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10045, ptr %wp10046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd89c word 0x321b012a
  %r10047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10047 = load i64, ptr %r10047.p, align 8, !alias.scope !3, !noalias !4
  %c10048 = trunc i64 %r10047 to i32
  %t10049 = or i32 %c10048, 32
  %c10050 = zext i32 %t10049 to i64
  %wp10051 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10050, ptr %wp10051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8a0 word 0x52800029
  %c10052 = zext i32 1 to i64
  %wp10053 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10052, ptr %wp10053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8a4 word 0x17fffdec
  br label %L_8000dd054
L_8000dd8a8:
  ; @pc 0x8000dd8a8 word 0xf9401be0
  %r10054.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10054 = load i64, ptr %r10054.p, align 8, !alias.scope !3, !noalias !4
  %t10055 = add i64 %r10054, 48
  %gmp10056 = inttoptr i64 %t10055 to ptr
  %gml10057 = load i64, ptr %gmp10056, align 1, !alias.scope !4, !noalias !3
  %wp10058 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10057, ptr %wp10058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8ac word 0x528000a2
  %c10059 = zext i32 5 to i64
  %wp10060 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10059, ptr %wp10060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8b0 word 0xaa1703e1
  %r10061.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10061 = load i64, ptr %r10061.p, align 8, !alias.scope !3, !noalias !4
  %t10062 = or i64 0, %r10061
  %wp10063 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10062, ptr %wp10063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8b4 word 0xaa1503e4
  %r10064.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10064 = load i64, ptr %r10064.p, align 8, !alias.scope !3, !noalias !4
  %t10065 = or i64 0, %r10064
  %wp10066 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10065, ptr %wp10066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8b8 word 0xaa1603e5
  %r10067.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10067 = load i64, ptr %r10067.p, align 8, !alias.scope !3, !noalias !4
  %t10068 = or i64 0, %r10067
  %wp10069 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10068, ptr %wp10069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8bc word 0xd63f0100
  %r10070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10070 = load i64, ptr %r10070.p, align 8, !alias.scope !3, !noalias !4
  %fp10071 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10070, ptr %fp10071, align 8, !alias.scope !3, !noalias !4
  %wp10072 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645824, ptr %wp10072, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd8c0 word 0x17fffe03
  br label %L_8000dd0cc
L_8000dd8c4:
  ; @pc 0x8000dd8c4 word 0xf85d83a8
  %r10073.p = getelementptr inbounds i8, ptr %c, i64 232
  %r10073 = load i64, ptr %r10073.p, align 8, !alias.scope !3, !noalias !4
  %t10074 = add i64 %r10073, -40
  %gmp10075 = inttoptr i64 %t10074 to ptr
  %gml10076 = load i64, ptr %gmp10075, align 1, !alias.scope !4, !noalias !3
  %wp10077 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10076, ptr %wp10077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8c8 word 0x13083ee3
  %r10078.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10078 = load i64, ptr %r10078.p, align 8, !alias.scope !3, !noalias !4
  %c10079 = trunc i64 %r10078 to i32
  %ror10080 = call i32 @llvm.fshr.i32(i32 %c10079, i32 %c10079, i32 8)
  %t10081 = lshr i32 %c10079, 15
  %t10082 = and i32 %t10081, 1
  %t10083 = sub i32 0, %t10082
  %t10084 = and i32 %t10083, -256
  %t10085 = and i32 %ror10080, 255
  %t10086 = or i32 %t10084, %t10085
  %c10087 = zext i32 %t10086 to i64
  %wp10088 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c10087, ptr %wp10088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8cc word 0xf9400108
  %r10089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10089 = load i64, ptr %r10089.p, align 8, !alias.scope !3, !noalias !4
  %gmp10090 = inttoptr i64 %r10089 to ptr
  %gml10091 = load i64, ptr %gmp10090, align 1, !alias.scope !4, !noalias !3
  %wp10092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10091, ptr %wp10092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8d0 word 0xf9402908
  %r10093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10093 = load i64, ptr %r10093.p, align 8, !alias.scope !3, !noalias !4
  %t10094 = add i64 %r10093, 80
  %gmp10095 = inttoptr i64 %t10094 to ptr
  %gml10096 = load i64, ptr %gmp10095, align 1, !alias.scope !4, !noalias !3
  %wp10097 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10096, ptr %wp10097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8d4 word 0xeb1b011f
  %r10098.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10098 = load i64, ptr %r10098.p, align 8, !alias.scope !3, !noalias !4
  %r10099.p = getelementptr inbounds i8, ptr %c, i64 216
  %r10099 = load i64, ptr %r10099.p, align 8, !alias.scope !3, !noalias !4
  %t10100 = sub i64 %r10098, %r10099
  %fn10101 = icmp slt i64 %t10100, 0
  %fz10102 = icmp eq i64 %t10100, 0
  %fc10103 = icmp uge i64 %r10098, %r10099
  %fx110104 = xor i64 %r10098, %r10099
  %fx210105 = xor i64 %r10098, %t10100
  %fva10106 = and i64 %fx110104, %fx210105
  %fv10107 = icmp slt i64 %fva10106, 0
  %nz10108 = zext i1 %fn10101 to i64
  %zz10109 = zext i1 %fz10102 to i64
  %cz10110 = zext i1 %fc10103 to i64
  %vz10111 = zext i1 %fv10107 to i64
  %ns10112 = shl i64 %nz10108, 31
  %zs10113 = shl i64 %zz10109, 30
  %cs10114 = shl i64 %cz10110, 29
  %vs10115 = shl i64 %vz10111, 28
  %nzor10116 = or i64 %ns10112, %zs10113
  %cvor10117 = or i64 %cs10114, %vs10115
  %nzcv10118 = or i64 %nzor10116, %cvor10117
  %wp10119 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10118, ptr %wp10119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8d8 word 0x540015c1
  %r10120.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10120 = load i64, ptr %r10120.p, align 8, !alias.scope !3, !noalias !4
  %fsh10122 = lshr i64 %r10120, 30
  %ftr10123 = trunc i64 %fsh10122 to i1
  %cond10121 = xor i1 %ftr10123, true
  br i1 %cond10121, label %L_8000ddb90, label %L_8000dd8dc_ft
L_8000dd940:
  ; @pc 0x8000dd940 word 0xf85d83a0
  %r10260.p = getelementptr inbounds i8, ptr %c, i64 232
  %r10260 = load i64, ptr %r10260.p, align 8, !alias.scope !3, !noalias !4
  %t10261 = add i64 %r10260, -40
  %gmp10262 = inttoptr i64 %t10261 to ptr
  %gml10263 = load i64, ptr %gmp10262, align 1, !alias.scope !4, !noalias !3
  %wp10264 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10263, ptr %wp10264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd944 word 0xaa1503e1
  %r10265.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10265 = load i64, ptr %r10265.p, align 8, !alias.scope !3, !noalias !4
  %t10266 = or i64 0, %r10265
  %wp10267 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10266, ptr %wp10267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd948 word 0x52800042
  %c10268 = zext i32 2 to i64
  %wp10269 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10268, ptr %wp10269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd94c word 0xaa1603e4
  %r10270.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10270 = load i64, ptr %r10270.p, align 8, !alias.scope !3, !noalias !4
  %t10271 = or i64 0, %r10270
  %wp10272 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10271, ptr %wp10272, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd950 word 0xaa1803e5
  %r10273.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10273 = load i64, ptr %r10273.p, align 8, !alias.scope !3, !noalias !4
  %t10274 = or i64 0, %r10273
  %wp10275 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10274, ptr %wp10275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd954 word 0xd63f0100
  %r10276.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10276 = load i64, ptr %r10276.p, align 8, !alias.scope !3, !noalias !4
  %fp10277 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10276, ptr %fp10277, align 8, !alias.scope !3, !noalias !4
  %wp10278 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645976, ptr %wp10278, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd958 word 0x17fffe2a
  br label %L_8000dd200
L_8000dd95c:
  ; @pc 0x8000dd95c word 0x114c0129
  %r10279.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10279 = load i64, ptr %r10279.p, align 8, !alias.scope !3, !noalias !4
  %c10280 = trunc i64 %r10279 to i32
  %t10281 = add i32 %c10280, 3145728
  %c10282 = zext i32 %t10281 to i64
  %wp10283 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10282, ptr %wp10283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd960 word 0x5281208a
  %c10284 = zext i32 2308 to i64
  %wp10285 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10284, ptr %wp10285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd964 word 0x72b0000a
  %r10286.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10286 = load i64, ptr %r10286.p, align 8, !alias.scope !3, !noalias !4
  %t10287 = and i64 %r10286, -4294901761
  %t10288 = or i64 %t10287, 2147483648
  %c10289 = trunc i64 %t10288 to i32
  %c10290 = zext i32 %c10289 to i64
  %wp10291 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10290, ptr %wp10291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd968 word 0x120c1129
  %r10292.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10292 = load i64, ptr %r10292.p, align 8, !alias.scope !3, !noalias !4
  %c10293 = trunc i64 %r10292 to i32
  %t10294 = and i32 %c10293, 32505856
  %c10295 = zext i32 %t10294 to i64
  %wp10296 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10295, ptr %wp10296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd96c word 0x2a0a0129
  %r10297.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10297 = load i64, ptr %r10297.p, align 8, !alias.scope !3, !noalias !4
  %c10298 = trunc i64 %r10297 to i32
  %r10299.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10299 = load i64, ptr %r10299.p, align 8, !alias.scope !3, !noalias !4
  %c10300 = trunc i64 %r10299 to i32
  %t10301 = or i32 %c10300, %c10298
  %c10302 = zext i32 %t10301 to i64
  %wp10303 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10302, ptr %wp10303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd970 word 0x321d053a
  %r10304.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10304 = load i64, ptr %r10304.p, align 8, !alias.scope !3, !noalias !4
  %c10305 = trunc i64 %r10304 to i32
  %t10306 = or i32 %c10305, 24
  %c10307 = zext i32 %t10306 to i64
  %wp10308 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c10307, ptr %wp10308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd974 word 0x52800029
  %c10309 = zext i32 1 to i64
  %wp10310 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10309, ptr %wp10310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd978 word 0x17fffe1f
  br label %L_8000dd1f4
L_8000dd97c:
  ; @pc 0x8000dd97c word 0xf85d83a0
  %r10311.p = getelementptr inbounds i8, ptr %c, i64 232
  %r10311 = load i64, ptr %r10311.p, align 8, !alias.scope !3, !noalias !4
  %t10312 = add i64 %r10311, -40
  %gmp10313 = inttoptr i64 %t10312 to ptr
  %gml10314 = load i64, ptr %gmp10313, align 1, !alias.scope !4, !noalias !3
  %wp10315 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10314, ptr %wp10315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd980 word 0x528000a2
  %c10316 = zext i32 5 to i64
  %wp10317 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10316, ptr %wp10317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd984 word 0xaa1503e1
  %r10318.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10318 = load i64, ptr %r10318.p, align 8, !alias.scope !3, !noalias !4
  %t10319 = or i64 0, %r10318
  %wp10320 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10319, ptr %wp10320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd988 word 0xaa1603e4
  %r10321.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10321 = load i64, ptr %r10321.p, align 8, !alias.scope !3, !noalias !4
  %t10322 = or i64 0, %r10321
  %wp10323 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10322, ptr %wp10323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd98c word 0xaa1803e5
  %r10324.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10324 = load i64, ptr %r10324.p, align 8, !alias.scope !3, !noalias !4
  %t10325 = or i64 0, %r10324
  %wp10326 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10325, ptr %wp10326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd990 word 0xd63f0100
  %r10327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10327 = load i64, ptr %r10327.p, align 8, !alias.scope !3, !noalias !4
  %fp10328 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10327, ptr %fp10328, align 8, !alias.scope !3, !noalias !4
  %wp10329 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646036, ptr %wp10329, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd994 word 0x17fffe34
  br label %L_8000dd264
L_8000dd998:
  ; @pc 0x8000dd998 word 0xf9401be0
  %r10330.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10330 = load i64, ptr %r10330.p, align 8, !alias.scope !3, !noalias !4
  %t10331 = add i64 %r10330, 48
  %gmp10332 = inttoptr i64 %t10331 to ptr
  %gml10333 = load i64, ptr %gmp10332, align 1, !alias.scope !4, !noalias !3
  %wp10334 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10333, ptr %wp10334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd99c word 0xaa1703e1
  %r10335.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10335 = load i64, ptr %r10335.p, align 8, !alias.scope !3, !noalias !4
  %t10336 = or i64 0, %r10335
  %wp10337 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10336, ptr %wp10337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9a0 word 0x2a1f03e2
  %t10338 = or i32 0, 0
  %c10339 = zext i32 %t10338 to i64
  %wp10340 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10339, ptr %wp10340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9a4 word 0xaa1503e4
  %r10341.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10341 = load i64, ptr %r10341.p, align 8, !alias.scope !3, !noalias !4
  %t10342 = or i64 0, %r10341
  %wp10343 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10342, ptr %wp10343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9a8 word 0xaa1603e5
  %r10344.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10344 = load i64, ptr %r10344.p, align 8, !alias.scope !3, !noalias !4
  %t10345 = or i64 0, %r10344
  %wp10346 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10345, ptr %wp10346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9ac word 0xd63f0100
  %r10347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10347 = load i64, ptr %r10347.p, align 8, !alias.scope !3, !noalias !4
  %fp10348 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10347, ptr %fp10348, align 8, !alias.scope !3, !noalias !4
  %wp10349 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646064, ptr %wp10349, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd9b0 word 0x17fffd86
  br label %L_8000dcfc8
L_8000dd9b4:
  ; @pc 0x8000dd9b4 word 0x114c014a
  %r10350.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10350 = load i64, ptr %r10350.p, align 8, !alias.scope !3, !noalias !4
  %c10351 = trunc i64 %r10350 to i32
  %t10352 = add i32 %c10351, 3145728
  %c10353 = zext i32 %t10352 to i64
  %wp10354 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10353, ptr %wp10354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9b8 word 0x120c114a
  %r10355.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10355 = load i64, ptr %r10355.p, align 8, !alias.scope !3, !noalias !4
  %c10356 = trunc i64 %r10355 to i32
  %t10357 = and i32 %c10356, 32505856
  %c10358 = zext i32 %t10357 to i64
  %wp10359 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10358, ptr %wp10359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9bc word 0x2a09014a
  %r10360.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10360 = load i64, ptr %r10360.p, align 8, !alias.scope !3, !noalias !4
  %c10361 = trunc i64 %r10360 to i32
  %r10362.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10362 = load i64, ptr %r10362.p, align 8, !alias.scope !3, !noalias !4
  %c10363 = trunc i64 %r10362 to i32
  %t10364 = or i32 %c10363, %c10361
  %c10365 = zext i32 %t10364 to i64
  %wp10366 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10365, ptr %wp10366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9c0 word 0x52800029
  %c10367 = zext i32 1 to i64
  %wp10368 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10367, ptr %wp10368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9c4 word 0x17fffe6e
  br label %L_8000dd37c
L_8000dd9c8:
  ; @pc 0x8000dd9c8 word 0xf85d83a0
  %r10369.p = getelementptr inbounds i8, ptr %c, i64 232
  %r10369 = load i64, ptr %r10369.p, align 8, !alias.scope !3, !noalias !4
  %t10370 = add i64 %r10369, -40
  %gmp10371 = inttoptr i64 %t10370 to ptr
  %gml10372 = load i64, ptr %gmp10371, align 1, !alias.scope !4, !noalias !3
  %wp10373 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10372, ptr %wp10373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9cc word 0xaa1503e1
  %r10374.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10374 = load i64, ptr %r10374.p, align 8, !alias.scope !3, !noalias !4
  %t10375 = or i64 0, %r10374
  %wp10376 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10375, ptr %wp10376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9d0 word 0x2a1f03e2
  %t10377 = or i32 0, 0
  %c10378 = zext i32 %t10377 to i64
  %wp10379 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10378, ptr %wp10379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9d4 word 0xaa1603e4
  %r10380.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10380 = load i64, ptr %r10380.p, align 8, !alias.scope !3, !noalias !4
  %t10381 = or i64 0, %r10380
  %wp10382 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10381, ptr %wp10382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9d8 word 0xaa1803e5
  %r10383.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10383 = load i64, ptr %r10383.p, align 8, !alias.scope !3, !noalias !4
  %t10384 = or i64 0, %r10383
  %wp10385 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10384, ptr %wp10385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9dc word 0xd63f0100
  %r10386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10386 = load i64, ptr %r10386.p, align 8, !alias.scope !3, !noalias !4
  %fp10387 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10386, ptr %fp10387, align 8, !alias.scope !3, !noalias !4
  %wp10388 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646112, ptr %wp10388, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd9e0 word 0x17fffde3
  br label %L_8000dd16c
L_8000dd9e4:
  ; @pc 0x8000dd9e4 word 0x114c014a
  %r10389.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10389 = load i64, ptr %r10389.p, align 8, !alias.scope !3, !noalias !4
  %c10390 = trunc i64 %r10389 to i32
  %t10391 = add i32 %c10390, 3145728
  %c10392 = zext i32 %t10391 to i64
  %wp10393 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10392, ptr %wp10393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9e8 word 0x120c114a
  %r10394.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10394 = load i64, ptr %r10394.p, align 8, !alias.scope !3, !noalias !4
  %c10395 = trunc i64 %r10394 to i32
  %t10396 = and i32 %c10395, 32505856
  %c10397 = zext i32 %t10396 to i64
  %wp10398 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10397, ptr %wp10398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9ec word 0x2a09014a
  %r10399.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10399 = load i64, ptr %r10399.p, align 8, !alias.scope !3, !noalias !4
  %c10400 = trunc i64 %r10399 to i32
  %r10401.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10401 = load i64, ptr %r10401.p, align 8, !alias.scope !3, !noalias !4
  %c10402 = trunc i64 %r10401 to i32
  %t10403 = or i32 %c10402, %c10400
  %c10404 = zext i32 %t10403 to i64
  %wp10405 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10404, ptr %wp10405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9f0 word 0x52800029
  %c10406 = zext i32 1 to i64
  %wp10407 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10406, ptr %wp10407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9f4 word 0x17fffe85
  br label %L_8000dd408
L_8000dd9f8:
  ; @pc 0x8000dd9f8 word 0x52800028
  %c10408 = zext i32 1 to i64
  %wp10409 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10408, ptr %wp10409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd9fc word 0x390042e8
  %r10410.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10410 = load i64, ptr %r10410.p, align 8, !alias.scope !3, !noalias !4
  %t10411 = add i64 %r10410, 16
  %r10412.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10412 = load i64, ptr %r10412.p, align 8, !alias.scope !3, !noalias !4
  %c10413 = trunc i64 %r10412 to i32
  %c10414 = trunc i32 %c10413 to i8
  %gmp10415 = inttoptr i64 %t10411 to ptr
  store i8 %c10414, ptr %gmp10415, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dda00 word 0xf001c368
  %wp10416 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp10416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda04 word 0xf9479508
  %r10417.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10417 = load i64, ptr %r10417.p, align 8, !alias.scope !3, !noalias !4
  %t10418 = add i64 %r10417, 3880
  %gmp10419 = inttoptr i64 %t10418 to ptr
  %gml10420 = load i64, ptr %gmp10419, align 1, !alias.scope !4, !noalias !3
  %wp10421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10420, ptr %wp10421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda08 word 0xb9400108
  %r10422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10422 = load i64, ptr %r10422.p, align 8, !alias.scope !3, !noalias !4
  %gmp10423 = inttoptr i64 %r10422 to ptr
  %gml10424 = load i32, ptr %gmp10423, align 1, !alias.scope !4, !noalias !3
  %c10425 = zext i32 %gml10424 to i64
  %wp10426 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10425, ptr %wp10426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda0c word 0x34000fa8
  %r10427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10427 = load i64, ptr %r10427.p, align 8, !alias.scope !3, !noalias !4
  %c10428 = trunc i64 %r10427 to i32
  %cmp10429 = icmp eq i32 %c10428, 0
  br i1 %cmp10429, label %L_8000ddc00, label %L_8000dda10_ft
L_8000dda54:
  ; @pc 0x8000dda54 word 0x885f7edf
  %r10534.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10534 = load i64, ptr %r10534.p, align 8, !alias.scope !3, !noalias !4
  %atp10535 = inttoptr i64 %r10534 to ptr
  %ldx10536 = load atomic i32, ptr %atp10535 acquire, align 4, !alias.scope !4, !noalias !3
  %c10537 = zext i32 %ldx10536 to i64
  %fp10538 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r10534, ptr %fp10538, align 8, !alias.scope !3, !noalias !4
  %fp10539 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c10537, ptr %fp10539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda58 word 0x88087edf
  %r10540.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10540 = load i64, ptr %r10540.p, align 8, !alias.scope !3, !noalias !4
  %atp10541 = inttoptr i64 %r10540 to ptr
  %fp10542 = getelementptr inbounds i8, ptr %c, i64 296
  %fv10543 = load i64, ptr %fp10542, align 8, !alias.scope !3, !noalias !4
  %fp10544 = getelementptr inbounds i8, ptr %c, i64 304
  %fv10545 = load i64, ptr %fp10544, align 8, !alias.scope !3, !noalias !4
  %fp10546 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp10546, align 8, !alias.scope !3, !noalias !4
  %cmp10547 = icmp eq i64 %fv10543, %r10540
  %c10548 = trunc i64 %fv10545 to i32
  %cx10549 = cmpxchg ptr %atp10541, i32 %c10548, i32 0 seq_cst seq_cst, align 4
  %cxok10550 = extractvalue { i32, i1 } %cx10549, 1
  %t10551 = and i1 %cmp10547, %cxok10550
  %sel10552 = select i1 %t10551, i32 0, i32 1
  %c10553 = zext i32 %sel10552 to i64
  %wp10554 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10553, ptr %wp10554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda5c word 0x35ffffc8
  %r10555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10555 = load i64, ptr %r10555.p, align 8, !alias.scope !3, !noalias !4
  %c10556 = trunc i64 %r10555 to i32
  %cmp10557 = icmp ne i32 %c10556, 0
  br i1 %cmp10557, label %L_8000dda54, label %L_8000dda60_ft
L_8000dda64:
  ; @pc 0x8000dda64 word 0xf9401be9
  %r10558.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10558 = load i64, ptr %r10558.p, align 8, !alias.scope !3, !noalias !4
  %t10559 = add i64 %r10558, 48
  %gmp10560 = inttoptr i64 %t10559 to ptr
  %gml10561 = load i64, ptr %gmp10560, align 1, !alias.scope !4, !noalias !3
  %wp10562 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml10561, ptr %wp10562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda68 word 0xd2869b68
  %wp10563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 13531, ptr %wp10563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda6c word 0xf2baf6c8
  %r10564.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10564 = load i64, ptr %r10564.p, align 8, !alias.scope !3, !noalias !4
  %t10565 = and i64 %r10564, -4294901761
  %t10566 = or i64 %t10565, 3619028992
  %wp10567 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10566, ptr %wp10567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda70 word 0xf2dbd048
  %r10568.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10568 = load i64, ptr %r10568.p, align 8, !alias.scope !3, !noalias !4
  %t10569 = and i64 %r10568, -281470681743361
  %t10570 = or i64 %t10569, 244649927114752
  %wp10571 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10570, ptr %wp10571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda74 word 0xf2e86368
  %r10572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10572 = load i64, ptr %r10572.p, align 8, !alias.scope !3, !noalias !4
  %t10573 = and i64 %r10572, 281474976710655
  %t10574 = or i64 %t10573, 4835458624912359424
  %wp10575 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t10574, ptr %wp10575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda78 word 0x9b487d28
  %r10576.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10576 = load i64, ptr %r10576.p, align 8, !alias.scope !3, !noalias !4
  %c10577 = sext i64 %r10576 to i128
  %r10578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10578 = load i64, ptr %r10578.p, align 8, !alias.scope !3, !noalias !4
  %c10579 = sext i64 %r10578 to i128
  %t10580 = mul i128 %c10577, %c10579
  %t10581 = lshr i128 %t10580, 64
  %c10582 = trunc i128 %t10581 to i64
  %wp10583 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10582, ptr %wp10583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda7c word 0x9352fd09
  %r10584.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10584 = load i64, ptr %r10584.p, align 8, !alias.scope !3, !noalias !4
  %ror10585 = call i64 @llvm.fshr.i64(i64 %r10584, i64 %r10584, i64 18)
  %t10586 = lshr i64 %r10584, 63
  %t10587 = and i64 %t10586, 1
  %t10588 = sub i64 0, %t10587
  %t10589 = and i64 %t10588, -70368744177664
  %t10590 = and i64 %ror10585, 70368744177663
  %t10591 = or i64 %t10589, %t10590
  %wp10592 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t10591, ptr %wp10592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda80 word 0x8b48fd20
  %r10593.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10593 = load i64, ptr %r10593.p, align 8, !alias.scope !3, !noalias !4
  %r10594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10594 = load i64, ptr %r10594.p, align 8, !alias.scope !3, !noalias !4
  %t10595 = lshr i64 %r10594, 63
  %t10596 = add i64 %r10593, %t10595
  %wp10597 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10596, ptr %wp10597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda84 word 0x9404f68a
  %wp10598 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646280, ptr %wp10598, align 8, !alias.scope !3, !noalias !4
  call void @f_80021b4ac(ptr %c)
  br label %L_8000dda88
L_8000dda88:
  ; @pc 0x8000dda88 word 0xb94002c8
  %r10599.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10599 = load i64, ptr %r10599.p, align 8, !alias.scope !3, !noalias !4
  %gmp10600 = inttoptr i64 %r10599 to ptr
  %gml10601 = load i32, ptr %gmp10600, align 1, !alias.scope !4, !noalias !3
  %c10602 = zext i32 %gml10601 to i64
  %wp10603 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10602, ptr %wp10603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda8c word 0x37fffec8
  %r10604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10604 = load i64, ptr %r10604.p, align 8, !alias.scope !3, !noalias !4
  %t10605 = and i64 %r10604, 2147483648
  %cmp10606 = icmp ne i64 %t10605, 0
  br i1 %cmp10606, label %L_8000dda64, label %L_8000dda90
L_8000dda90:
  ; @pc 0x8000dda90 word 0x885ffedf
  %r10607.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10607 = load i64, ptr %r10607.p, align 8, !alias.scope !3, !noalias !4
  %atp10608 = inttoptr i64 %r10607 to ptr
  %ldx10609 = load atomic i32, ptr %atp10608 acquire, align 4, !alias.scope !4, !noalias !3
  %c10610 = zext i32 %ldx10609 to i64
  %fp10611 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r10607, ptr %fp10611, align 8, !alias.scope !3, !noalias !4
  %fp10612 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %c10610, ptr %fp10612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda94 word 0x88087edf
  %r10613.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10613 = load i64, ptr %r10613.p, align 8, !alias.scope !3, !noalias !4
  %atp10614 = inttoptr i64 %r10613 to ptr
  %fp10615 = getelementptr inbounds i8, ptr %c, i64 296
  %fv10616 = load i64, ptr %fp10615, align 8, !alias.scope !3, !noalias !4
  %fp10617 = getelementptr inbounds i8, ptr %c, i64 304
  %fv10618 = load i64, ptr %fp10617, align 8, !alias.scope !3, !noalias !4
  %fp10619 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 -1, ptr %fp10619, align 8, !alias.scope !3, !noalias !4
  %cmp10620 = icmp eq i64 %fv10616, %r10613
  %c10621 = trunc i64 %fv10618 to i32
  %cx10622 = cmpxchg ptr %atp10614, i32 %c10621, i32 0 seq_cst seq_cst, align 4
  %cxok10623 = extractvalue { i32, i1 } %cx10622, 1
  %t10624 = and i1 %cmp10620, %cxok10623
  %sel10625 = select i1 %t10624, i32 0, i32 1
  %c10626 = zext i32 %sel10625 to i64
  %wp10627 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10626, ptr %wp10627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda98 word 0x35ffffc8
  %r10628.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10628 = load i64, ptr %r10628.p, align 8, !alias.scope !3, !noalias !4
  %c10629 = trunc i64 %r10628 to i32
  %cmp10630 = icmp ne i32 %c10629, 0
  br i1 %cmp10630, label %L_8000dda90, label %L_8000dda9c
L_8000dda9c:
  ; @pc 0x8000dda9c word 0xb9406aa1
  %r10631.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10631 = load i64, ptr %r10631.p, align 8, !alias.scope !3, !noalias !4
  %t10632 = add i64 %r10631, 104
  %gmp10633 = inttoptr i64 %t10632 to ptr
  %gml10634 = load i32, ptr %gmp10633, align 1, !alias.scope !4, !noalias !3
  %c10635 = zext i32 %gml10634 to i64
  %wp10636 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10635, ptr %wp10636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaa0 word 0x3100043f
  %r10637.p = getelementptr inbounds i8, ptr %c, i64 8
  %r10637 = load i64, ptr %r10637.p, align 8, !alias.scope !3, !noalias !4
  %c10638 = trunc i64 %r10637 to i32
  %t10639 = add i32 %c10638, 1
  %fn10640 = icmp slt i32 %t10639, 0
  %fz10641 = icmp eq i32 %t10639, 0
  %fc10642 = icmp ult i32 %t10639, %c10638
  %fx110643 = xor i32 %c10638, %t10639
  %fx210644 = xor i32 1, %t10639
  %fva10645 = and i32 %fx110643, %fx210644
  %fv10646 = icmp slt i32 %fva10645, 0
  %nz10647 = zext i1 %fn10640 to i64
  %zz10648 = zext i1 %fz10641 to i64
  %cz10649 = zext i1 %fc10642 to i64
  %vz10650 = zext i1 %fv10646 to i64
  %ns10651 = shl i64 %nz10647, 31
  %zs10652 = shl i64 %zz10648, 30
  %cs10653 = shl i64 %cz10649, 29
  %vs10654 = shl i64 %vz10650, 28
  %nzor10655 = or i64 %ns10651, %zs10652
  %cvor10656 = or i64 %cs10653, %vs10654
  %nzcv10657 = or i64 %nzor10655, %cvor10656
  %wp10658 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10657, ptr %wp10658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaa4 word 0x54ff96e0
  %r10659.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10659 = load i64, ptr %r10659.p, align 8, !alias.scope !3, !noalias !4
  %fsh10661 = lshr i64 %r10659, 30
  %cond10660 = trunc i64 %fsh10661 to i1
  br i1 %cond10660, label %L_8000dcd80, label %L_8000ddaa8_ft
L_8000ddb0c:
  ; @pc 0x8000ddb0c word 0x529fe008
  %c10786 = zext i32 65280 to i64
  %wp10787 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10786, ptr %wp10787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb10 word 0x6a3c011f
  %r10788.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10788 = load i64, ptr %r10788.p, align 8, !alias.scope !3, !noalias !4
  %c10789 = trunc i64 %r10788 to i32
  %t10790 = xor i32 %c10789, -1
  %r10791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10791 = load i64, ptr %r10791.p, align 8, !alias.scope !3, !noalias !4
  %c10792 = trunc i64 %r10791 to i32
  %t10793 = and i32 %c10792, %t10790
  %fn10794 = icmp slt i32 %t10793, 0
  %fz10795 = icmp eq i32 %t10793, 0
  %nz10796 = zext i1 %fn10794 to i64
  %zz10797 = zext i1 %fz10795 to i64
  %ns10798 = shl i64 %nz10796, 31
  %zs10799 = shl i64 %zz10797, 30
  %nzcv10800 = or i64 %ns10798, %zs10799
  %wp10801 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10800, ptr %wp10801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb14 word 0x54000120
  %r10802.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10802 = load i64, ptr %r10802.p, align 8, !alias.scope !3, !noalias !4
  %fsh10804 = lshr i64 %r10802, 30
  %cond10803 = trunc i64 %fsh10804 to i1
  br i1 %cond10803, label %L_8000ddb38, label %L_8000ddb18_ft
L_8000ddb38:
  ; @pc 0x8000ddb38 word 0x52a01fe8
  %c10837 = zext i32 16711680 to i64
  %wp10838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10837, ptr %wp10838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb3c word 0x6a3c011f
  %r10839.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10839 = load i64, ptr %r10839.p, align 8, !alias.scope !3, !noalias !4
  %c10840 = trunc i64 %r10839 to i32
  %t10841 = xor i32 %c10840, -1
  %r10842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10842 = load i64, ptr %r10842.p, align 8, !alias.scope !3, !noalias !4
  %c10843 = trunc i64 %r10842 to i32
  %t10844 = and i32 %c10843, %t10841
  %fn10845 = icmp slt i32 %t10844, 0
  %fz10846 = icmp eq i32 %t10844, 0
  %nz10847 = zext i1 %fn10845 to i64
  %zz10848 = zext i1 %fz10846 to i64
  %ns10849 = shl i64 %nz10847, 31
  %zs10850 = shl i64 %zz10848, 30
  %nzcv10851 = or i64 %ns10849, %zs10850
  %wp10852 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10851, ptr %wp10852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb40 word 0x54000120
  %r10853.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10853 = load i64, ptr %r10853.p, align 8, !alias.scope !3, !noalias !4
  %fsh10855 = lshr i64 %r10853, 30
  %cond10854 = trunc i64 %fsh10855 to i1
  br i1 %cond10854, label %L_8000ddb64, label %L_8000ddb44_ft
L_8000ddb64:
  ; @pc 0x8000ddb64 word 0x7103faff
  %r10888.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10888 = load i64, ptr %r10888.p, align 8, !alias.scope !3, !noalias !4
  %c10889 = trunc i64 %r10888 to i32
  %t10890 = sub i32 %c10889, 254
  %fn10891 = icmp slt i32 %t10890, 0
  %fz10892 = icmp eq i32 %t10890, 0
  %fc10893 = icmp uge i32 %c10889, 254
  %fx110894 = xor i32 %c10889, 254
  %fx210895 = xor i32 %c10889, %t10890
  %fva10896 = and i32 %fx110894, %fx210895
  %fv10897 = icmp slt i32 %fva10896, 0
  %nz10898 = zext i1 %fn10891 to i64
  %zz10899 = zext i1 %fz10892 to i64
  %cz10900 = zext i1 %fc10893 to i64
  %vz10901 = zext i1 %fv10897 to i64
  %ns10902 = shl i64 %nz10898, 31
  %zs10903 = shl i64 %zz10899, 30
  %cs10904 = shl i64 %cz10900, 29
  %vs10905 = shl i64 %vz10901, 28
  %nzor10906 = or i64 %ns10902, %zs10903
  %cvor10907 = or i64 %cs10904, %vs10905
  %nzcv10908 = or i64 %nzor10906, %cvor10907
  %wp10909 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10908, ptr %wp10909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb68 word 0x54ff90c8
  %r10910.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10910 = load i64, ptr %r10910.p, align 8, !alias.scope !3, !noalias !4
  %fsh10912 = lshr i64 %r10910, 29
  %ftr10913 = trunc i64 %fsh10912 to i1
  %fsh10914 = lshr i64 %r10910, 30
  %ftr10915 = trunc i64 %fsh10914 to i1
  %fnz10916 = xor i1 %ftr10915, true
  %cond10911 = and i1 %ftr10913, %fnz10916
  br i1 %cond10911, label %L_8000dcd80, label %L_8000ddb6c_ft
L_8000ddb90:
  ; @pc 0x8000ddb90 word 0xf85d83a0
  %r10949.p = getelementptr inbounds i8, ptr %c, i64 232
  %r10949 = load i64, ptr %r10949.p, align 8, !alias.scope !3, !noalias !4
  %t10950 = add i64 %r10949, -40
  %gmp10951 = inttoptr i64 %t10950 to ptr
  %gml10952 = load i64, ptr %gmp10951, align 1, !alias.scope !4, !noalias !3
  %wp10953 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10952, ptr %wp10953, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb94 word 0xaa1503e1
  %r10954.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10954 = load i64, ptr %r10954.p, align 8, !alias.scope !3, !noalias !4
  %t10955 = or i64 0, %r10954
  %wp10956 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t10955, ptr %wp10956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb98 word 0x52800022
  %c10957 = zext i32 1 to i64
  %wp10958 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10957, ptr %wp10958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb9c word 0xaa1603e4
  %r10959.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10959 = load i64, ptr %r10959.p, align 8, !alias.scope !3, !noalias !4
  %t10960 = or i64 0, %r10959
  %wp10961 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10960, ptr %wp10961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddba0 word 0xaa1803e5
  %r10962.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10962 = load i64, ptr %r10962.p, align 8, !alias.scope !3, !noalias !4
  %t10963 = or i64 0, %r10962
  %wp10964 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t10963, ptr %wp10964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddba4 word 0xd63f0100
  %r10965.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10965 = load i64, ptr %r10965.p, align 8, !alias.scope !3, !noalias !4
  %fp10966 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10965, ptr %fp10966, align 8, !alias.scope !3, !noalias !4
  %wp10967 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646568, ptr %wp10967, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000ddba8 word 0x17fffd74
  br label %L_8000dd178
L_8000ddbac:
  ; @pc 0x8000ddbac word 0xf001c3e8
  %wp10968 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp10968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbb0 word 0xaa1503e0
  %r10969.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10969 = load i64, ptr %r10969.p, align 8, !alias.scope !3, !noalias !4
  %t10970 = or i64 0, %r10969
  %wp10971 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10970, ptr %wp10971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbb4 word 0xf9417908
  %r10972.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10972 = load i64, ptr %r10972.p, align 8, !alias.scope !3, !noalias !4
  %t10973 = add i64 %r10972, 752
  %gmp10974 = inttoptr i64 %t10973 to ptr
  %gml10975 = load i64, ptr %gmp10974, align 1, !alias.scope !4, !noalias !3
  %wp10976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10975, ptr %wp10976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbb8 word 0x52800021
  %c10977 = zext i32 1 to i64
  %wp10978 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10977, ptr %wp10978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbbc word 0x2a0303e2
  %r10979.p = getelementptr inbounds i8, ptr %c, i64 24
  %r10979 = load i64, ptr %r10979.p, align 8, !alias.scope !3, !noalias !4
  %c10980 = trunc i64 %r10979 to i32
  %t10981 = or i32 0, %c10980
  %c10982 = zext i32 %t10981 to i64
  %wp10983 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10982, ptr %wp10983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbc0 word 0xf9400108
  %r10984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10984 = load i64, ptr %r10984.p, align 8, !alias.scope !3, !noalias !4
  %gmp10985 = inttoptr i64 %r10984 to ptr
  %gml10986 = load i64, ptr %gmp10985, align 1, !alias.scope !4, !noalias !3
  %wp10987 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10986, ptr %wp10987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbc4 word 0xaa1603e3
  %r10988.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10988 = load i64, ptr %r10988.p, align 8, !alias.scope !3, !noalias !4
  %t10989 = or i64 0, %r10988
  %wp10990 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t10989, ptr %wp10990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbc8 word 0xaa1803e4
  %r10991.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10991 = load i64, ptr %r10991.p, align 8, !alias.scope !3, !noalias !4
  %t10992 = or i64 0, %r10991
  %wp10993 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t10992, ptr %wp10993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbcc word 0xd63f0100
  %r10994.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10994 = load i64, ptr %r10994.p, align 8, !alias.scope !3, !noalias !4
  %fp10995 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10994, ptr %fp10995, align 8, !alias.scope !3, !noalias !4
  %wp10996 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646608, ptr %wp10996, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000ddbd0 word 0x17fffd6a
  br label %L_8000dd178
L_8000ddbd4:
  ; @pc 0x8000ddbd4 word 0x114c0129
  %r10997.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10997 = load i64, ptr %r10997.p, align 8, !alias.scope !3, !noalias !4
  %c10998 = trunc i64 %r10997 to i32
  %t10999 = add i32 %c10998, 3145728
  %c11000 = zext i32 %t10999 to i64
  %wp11001 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11000, ptr %wp11001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbd8 word 0x5281208a
  %c11002 = zext i32 2308 to i64
  %wp11003 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c11002, ptr %wp11003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbdc word 0x72b0000a
  %r11004.p = getelementptr inbounds i8, ptr %c, i64 80
  %r11004 = load i64, ptr %r11004.p, align 8, !alias.scope !3, !noalias !4
  %t11005 = and i64 %r11004, -4294901761
  %t11006 = or i64 %t11005, 2147483648
  %c11007 = trunc i64 %t11006 to i32
  %c11008 = zext i32 %c11007 to i64
  %wp11009 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c11008, ptr %wp11009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbe0 word 0x120c1129
  %r11010.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11010 = load i64, ptr %r11010.p, align 8, !alias.scope !3, !noalias !4
  %c11011 = trunc i64 %r11010 to i32
  %t11012 = and i32 %c11011, 32505856
  %c11013 = zext i32 %t11012 to i64
  %wp11014 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11013, ptr %wp11014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbe4 word 0x2a0a0129
  %r11015.p = getelementptr inbounds i8, ptr %c, i64 80
  %r11015 = load i64, ptr %r11015.p, align 8, !alias.scope !3, !noalias !4
  %c11016 = trunc i64 %r11015 to i32
  %r11017.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11017 = load i64, ptr %r11017.p, align 8, !alias.scope !3, !noalias !4
  %c11018 = trunc i64 %r11017 to i32
  %t11019 = or i32 %c11018, %c11016
  %c11020 = zext i32 %t11019 to i64
  %wp11021 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11020, ptr %wp11021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbe8 word 0x321b012a
  %r11022.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11022 = load i64, ptr %r11022.p, align 8, !alias.scope !3, !noalias !4
  %c11023 = trunc i64 %r11022 to i32
  %t11024 = or i32 %c11023, 32
  %c11025 = zext i32 %t11024 to i64
  %wp11026 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c11025, ptr %wp11026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbec word 0x52800029
  %c11027 = zext i32 1 to i64
  %wp11028 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11027, ptr %wp11028, align 8, !alias.scope !3, !noalias !4
  br label %L_8000ddbf0
L_8000ddbf0:
  ; @pc 0x8000ddbf0 word 0xb900010a
  %r11029.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11029 = load i64, ptr %r11029.p, align 8, !alias.scope !3, !noalias !4
  %r11030.p = getelementptr inbounds i8, ptr %c, i64 80
  %r11030 = load i64, ptr %r11030.p, align 8, !alias.scope !3, !noalias !4
  %c11031 = trunc i64 %r11030 to i32
  %gmp11032 = inttoptr i64 %r11029 to ptr
  store i32 %c11031, ptr %gmp11032, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000ddbf4 word 0x8b090908
  %r11033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11033 = load i64, ptr %r11033.p, align 8, !alias.scope !3, !noalias !4
  %r11034.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11034 = load i64, ptr %r11034.p, align 8, !alias.scope !3, !noalias !4
  %t11035 = shl i64 %r11034, 2
  %t11036 = add i64 %r11033, %t11035
  %wp11037 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t11036, ptr %wp11037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddbf8 word 0xf90002a8
  %r11038.p = getelementptr inbounds i8, ptr %c, i64 168
  %r11038 = load i64, ptr %r11038.p, align 8, !alias.scope !3, !noalias !4
  %r11039.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11039 = load i64, ptr %r11039.p, align 8, !alias.scope !3, !noalias !4
  %gmp11040 = inttoptr i64 %r11038 to ptr
  store i64 %r11039, ptr %gmp11040, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000ddbfc word 0x17fffd5f
  br label %L_8000dd178
L_8000ddc00:
  ; @pc 0x8000ddc00 word 0xf001c3e8
  %wp11041 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp11041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc04 word 0xaa1703e0
  %r11042.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11042 = load i64, ptr %r11042.p, align 8, !alias.scope !3, !noalias !4
  %t11043 = or i64 0, %r11042
  %wp11044 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t11043, ptr %wp11044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc08 word 0xf9417908
  %r11045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11045 = load i64, ptr %r11045.p, align 8, !alias.scope !3, !noalias !4
  %t11046 = add i64 %r11045, 752
  %gmp11047 = inttoptr i64 %t11046 to ptr
  %gml11048 = load i64, ptr %gmp11047, align 1, !alias.scope !4, !noalias !3
  %wp11049 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11048, ptr %wp11049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc0c word 0x52800041
  %c11050 = zext i32 2 to i64
  %wp11051 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c11050, ptr %wp11051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc10 word 0x2a0303e2
  %r11052.p = getelementptr inbounds i8, ptr %c, i64 24
  %r11052 = load i64, ptr %r11052.p, align 8, !alias.scope !3, !noalias !4
  %c11053 = trunc i64 %r11052 to i32
  %t11054 = or i32 0, %c11053
  %c11055 = zext i32 %t11054 to i64
  %wp11056 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c11055, ptr %wp11056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc14 word 0xf9400108
  %r11057.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11057 = load i64, ptr %r11057.p, align 8, !alias.scope !3, !noalias !4
  %gmp11058 = inttoptr i64 %r11057 to ptr
  %gml11059 = load i64, ptr %gmp11058, align 1, !alias.scope !4, !noalias !3
  %wp11060 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml11059, ptr %wp11060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc18 word 0xaa1503e3
  %r11061.p = getelementptr inbounds i8, ptr %c, i64 168
  %r11061 = load i64, ptr %r11061.p, align 8, !alias.scope !3, !noalias !4
  %t11062 = or i64 0, %r11061
  %wp11063 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t11062, ptr %wp11063, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc1c word 0xaa1603e4
  %r11064.p = getelementptr inbounds i8, ptr %c, i64 176
  %r11064 = load i64, ptr %r11064.p, align 8, !alias.scope !3, !noalias !4
  %t11065 = or i64 0, %r11064
  %wp11066 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t11065, ptr %wp11066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc20 word 0xd63f0100
  %r11067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11067 = load i64, ptr %r11067.p, align 8, !alias.scope !3, !noalias !4
  %fp11068 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r11067, ptr %fp11068, align 8, !alias.scope !3, !noalias !4
  %wp11069 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646692, ptr %wp11069, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000ddc24 word 0x17fffd12
  br label %L_8000dd06c
L_8000ddc28:
  ; @pc 0x8000ddc28 word 0x114c0129
  %r11070.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11070 = load i64, ptr %r11070.p, align 8, !alias.scope !3, !noalias !4
  %c11071 = trunc i64 %r11070 to i32
  %t11072 = add i32 %c11071, 3145728
  %c11073 = zext i32 %t11072 to i64
  %wp11074 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11073, ptr %wp11074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc2c word 0x5281208a
  %c11075 = zext i32 2308 to i64
  %wp11076 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c11075, ptr %wp11076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc30 word 0x72b0000a
  %r11077.p = getelementptr inbounds i8, ptr %c, i64 80
  %r11077 = load i64, ptr %r11077.p, align 8, !alias.scope !3, !noalias !4
  %t11078 = and i64 %r11077, -4294901761
  %t11079 = or i64 %t11078, 2147483648
  %c11080 = trunc i64 %t11079 to i32
  %c11081 = zext i32 %c11080 to i64
  %wp11082 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c11081, ptr %wp11082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc34 word 0x120c1129
  %r11083.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11083 = load i64, ptr %r11083.p, align 8, !alias.scope !3, !noalias !4
  %c11084 = trunc i64 %r11083 to i32
  %t11085 = and i32 %c11084, 32505856
  %c11086 = zext i32 %t11085 to i64
  %wp11087 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11086, ptr %wp11087, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc38 word 0x2a0a0129
  %r11088.p = getelementptr inbounds i8, ptr %c, i64 80
  %r11088 = load i64, ptr %r11088.p, align 8, !alias.scope !3, !noalias !4
  %c11089 = trunc i64 %r11088 to i32
  %r11090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11090 = load i64, ptr %r11090.p, align 8, !alias.scope !3, !noalias !4
  %c11091 = trunc i64 %r11090 to i32
  %t11092 = or i32 %c11091, %c11089
  %c11093 = zext i32 %t11092 to i64
  %wp11094 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11093, ptr %wp11094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc3c word 0x321d053b
  %r11095.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11095 = load i64, ptr %r11095.p, align 8, !alias.scope !3, !noalias !4
  %c11096 = trunc i64 %r11095 to i32
  %t11097 = or i32 %c11096, 24
  %c11098 = zext i32 %t11097 to i64
  %wp11099 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c11098, ptr %wp11099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc40 word 0x52800029
  %c11100 = zext i32 1 to i64
  %wp11101 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c11100, ptr %wp11101, align 8, !alias.scope !3, !noalias !4
  br label %L_8000ddc44
L_8000ddc44:
  ; @pc 0x8000ddc44 word 0xb900011b
  %r11102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11102 = load i64, ptr %r11102.p, align 8, !alias.scope !3, !noalias !4
  %r11103.p = getelementptr inbounds i8, ptr %c, i64 216
  %r11103 = load i64, ptr %r11103.p, align 8, !alias.scope !3, !noalias !4
  %c11104 = trunc i64 %r11103 to i32
  %gmp11105 = inttoptr i64 %r11102 to ptr
  store i32 %c11104, ptr %gmp11105, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000ddc48 word 0x8b090908
  %r11106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11106 = load i64, ptr %r11106.p, align 8, !alias.scope !3, !noalias !4
  %r11107.p = getelementptr inbounds i8, ptr %c, i64 72
  %r11107 = load i64, ptr %r11107.p, align 8, !alias.scope !3, !noalias !4
  %t11108 = shl i64 %r11107, 2
  %t11109 = add i64 %r11106, %t11108
  %wp11110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t11109, ptr %wp11110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddc4c word 0xf90002e8
  %r11111.p = getelementptr inbounds i8, ptr %c, i64 184
  %r11111 = load i64, ptr %r11111.p, align 8, !alias.scope !3, !noalias !4
  %r11112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r11112 = load i64, ptr %r11112.p, align 8, !alias.scope !3, !noalias !4
  %gmp11113 = inttoptr i64 %r11111 to ptr
  store i64 %r11112, ptr %gmp11113, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000ddc50 word 0x17fffd07
  br label %L_8000dd06c
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34360638176, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8000dbae0
L_8000dbb14_ft:
  ; @pc 0x8000dbb14 word 0x3940c668
  %r91.p = getelementptr inbounds i8, ptr %c, i64 152
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %t92 = add i64 %r91, 49
  %gmp93 = inttoptr i64 %t92 to ptr
  %gml94 = load i8, ptr %gmp93, align 1, !alias.scope !4, !noalias !3
  %c95 = zext i8 %gml94 to i64
  %wp96 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c95, ptr %wp96, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb18 word 0x8b080348
  %r97.p = getelementptr inbounds i8, ptr %c, i64 208
  %r97 = load i64, ptr %r97.p, align 8, !alias.scope !3, !noalias !4
  %r98.p = getelementptr inbounds i8, ptr %c, i64 64
  %r98 = load i64, ptr %r98.p, align 8, !alias.scope !3, !noalias !4
  %t99 = add i64 %r97, %r98
  %wp100 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t99, ptr %wp100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb1c word 0x39408104
  %r101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r101 = load i64, ptr %r101.p, align 8, !alias.scope !3, !noalias !4
  %t102 = add i64 %r101, 32
  %gmp103 = inttoptr i64 %t102 to ptr
  %gml104 = load i8, ptr %gmp103, align 1, !alias.scope !4, !noalias !3
  %c105 = zext i8 %gml104 to i64
  %wp106 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c105, ptr %wp106, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbb20
L_8000dbb30_ft:
  ; @pc 0x8000dbb30 word 0xf9402b49
  %r143.p = getelementptr inbounds i8, ptr %c, i64 208
  %r143 = load i64, ptr %r143.p, align 8, !alias.scope !3, !noalias !4
  %t144 = add i64 %r143, 80
  %gmp145 = inttoptr i64 %t144 to ptr
  %gml146 = load i64, ptr %gmp145, align 1, !alias.scope !4, !noalias !3
  %wp147 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml146, ptr %wp147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb34 word 0x3941374a
  %r148.p = getelementptr inbounds i8, ptr %c, i64 208
  %r148 = load i64, ptr %r148.p, align 8, !alias.scope !3, !noalias !4
  %t149 = add i64 %r148, 77
  %gmp150 = inttoptr i64 %t149 to ptr
  %gml151 = load i8, ptr %gmp150, align 1, !alias.scope !4, !noalias !3
  %c152 = zext i8 %gml151 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb38 word 0x9b282545
  %r154.p = getelementptr inbounds i8, ptr %c, i64 80
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %c155 = trunc i64 %r154 to i32
  %c156 = sext i32 %c155 to i64
  %r157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %c158 = trunc i64 %r157 to i32
  %c159 = sext i32 %c158 to i64
  %t160 = mul i64 %c156, %c159
  %r161.p = getelementptr inbounds i8, ptr %c, i64 72
  %r161 = load i64, ptr %r161.p, align 8, !alias.scope !3, !noalias !4
  %t162 = add i64 %r161, %t160
  %wp163 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t162, ptr %wp163, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbb3c
L_8000dbb44_ft:
  ; @pc 0x8000dbb44 word 0xf94002e8
  %r170.p = getelementptr inbounds i8, ptr %c, i64 184
  %r170 = load i64, ptr %r170.p, align 8, !alias.scope !3, !noalias !4
  %gmp171 = inttoptr i64 %r170 to ptr
  %gml172 = load i64, ptr %gmp171, align 1, !alias.scope !4, !noalias !3
  %wp173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml172, ptr %wp173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb48 word 0xb4000168
  %r174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r174 = load i64, ptr %r174.p, align 8, !alias.scope !3, !noalias !4
  %cmp175 = icmp eq i64 %r174, 0
  br i1 %cmp175, label %L_8000dbb74, label %L_8000dbb4c_ft
L_8000dbb4c_ft:
  ; @pc 0x8000dbb4c word 0x39411b48
  %r176.p = getelementptr inbounds i8, ptr %c, i64 208
  %r176 = load i64, ptr %r176.p, align 8, !alias.scope !3, !noalias !4
  %t177 = add i64 %r176, 70
  %gmp178 = inttoptr i64 %t177 to ptr
  %gml179 = load i8, ptr %gmp178, align 1, !alias.scope !4, !noalias !3
  %c180 = zext i8 %gml179 to i64
  %wp181 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c180, ptr %wp181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb50 word 0x3940f66a
  %r182.p = getelementptr inbounds i8, ptr %c, i64 152
  %r182 = load i64, ptr %r182.p, align 8, !alias.scope !3, !noalias !4
  %t183 = add i64 %r182, 61
  %gmp184 = inttoptr i64 %t183 to ptr
  %gml185 = load i8, ptr %gmp184, align 1, !alias.scope !4, !noalias !3
  %c186 = zext i8 %gml185 to i64
  %wp187 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c186, ptr %wp187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb54 word 0x6b08015f
  %r188.p = getelementptr inbounds i8, ptr %c, i64 80
  %r188 = load i64, ptr %r188.p, align 8, !alias.scope !3, !noalias !4
  %c189 = trunc i64 %r188 to i32
  %r190.p = getelementptr inbounds i8, ptr %c, i64 64
  %r190 = load i64, ptr %r190.p, align 8, !alias.scope !3, !noalias !4
  %c191 = trunc i64 %r190 to i32
  %t192 = sub i32 %c189, %c191
  %fn193 = icmp slt i32 %t192, 0
  %fz194 = icmp eq i32 %t192, 0
  %fc195 = icmp uge i32 %c189, %c191
  %fx1196 = xor i32 %c189, %c191
  %fx2197 = xor i32 %c189, %t192
  %fva198 = and i32 %fx1196, %fx2197
  %fv199 = icmp slt i32 %fva198, 0
  %nz200 = zext i1 %fn193 to i64
  %zz201 = zext i1 %fz194 to i64
  %cz202 = zext i1 %fc195 to i64
  %vz203 = zext i1 %fv199 to i64
  %ns204 = shl i64 %nz200, 31
  %zs205 = shl i64 %zz201, 30
  %cs206 = shl i64 %cz202, 29
  %vs207 = shl i64 %vz203, 28
  %nzor208 = or i64 %ns204, %zs205
  %cvor209 = or i64 %cs206, %vs207
  %nzcv210 = or i64 %nzor208, %cvor209
  %wp211 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv210, ptr %wp211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb58 word 0xf94006f8
  %r212.p = getelementptr inbounds i8, ptr %c, i64 184
  %r212 = load i64, ptr %r212.p, align 8, !alias.scope !3, !noalias !4
  %t213 = add i64 %r212, 8
  %gmp214 = inttoptr i64 %t213 to ptr
  %gml215 = load i64, ptr %gmp214, align 1, !alias.scope !4, !noalias !3
  %wp216 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml215, ptr %wp216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb5c word 0x79408269
  %r217.p = getelementptr inbounds i8, ptr %c, i64 152
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %t218 = add i64 %r217, 64
  %gmp219 = inttoptr i64 %t218 to ptr
  %gml220 = load i16, ptr %gmp219, align 1, !alias.scope !4, !noalias !3
  %c221 = zext i16 %gml220 to i64
  %wp222 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c221, ptr %wp222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb60 word 0xf9408e66
  %r223.p = getelementptr inbounds i8, ptr %c, i64 152
  %r223 = load i64, ptr %r223.p, align 8, !alias.scope !3, !noalias !4
  %t224 = add i64 %r223, 280
  %gmp225 = inttoptr i64 %t224 to ptr
  %gml226 = load i64, ptr %gmp225, align 1, !alias.scope !4, !noalias !3
  %wp227 = getelementptr inbounds i8, ptr %c, i64 48
  store i64 %gml226, ptr %wp227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb64 word 0x540000c1
  %r228.p = getelementptr inbounds i8, ptr %c, i64 272
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %fsh230 = lshr i64 %r228, 30
  %ftr231 = trunc i64 %fsh230 to i1
  %cond229 = xor i1 %ftr231, true
  br i1 %cond229, label %L_8000dbb7c, label %L_8000dbb68_ft
L_8000dbb68_ft:
  ; @pc 0x8000dbb68 word 0x2a1f03e8
  %t232 = or i32 0, 0
  %c233 = zext i32 %t232 to i64
  %wp234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c233, ptr %wp234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbb6c word 0x36000669
  %r235.p = getelementptr inbounds i8, ptr %c, i64 72
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = and i64 %r235, 1
  %cmp237 = icmp eq i64 %t236, 0
  br i1 %cmp237, label %L_8000dbc38, label %L_8000dbb70_ft
L_8000dbb70_ft:
  ; @pc 0x8000dbb70 word 0x140000bb
  br label %L_8000dbe5c
L_8000dbba0_ft:
  ; @pc 0x8000dbba0 word 0x7100011f
  %r290.p = getelementptr inbounds i8, ptr %c, i64 64
  %r290 = load i64, ptr %r290.p, align 8, !alias.scope !3, !noalias !4
  %c291 = trunc i64 %r290 to i32
  %t292 = sub i32 %c291, 0
  %fn293 = icmp slt i32 %t292, 0
  %fz294 = icmp eq i32 %t292, 0
  %fc295 = icmp uge i32 %c291, 0
  %fx1296 = xor i32 %c291, 0
  %fx2297 = xor i32 %c291, %t292
  %fva298 = and i32 %fx1296, %fx2297
  %fv299 = icmp slt i32 %fva298, 0
  %nz300 = zext i1 %fn293 to i64
  %zz301 = zext i1 %fz294 to i64
  %cz302 = zext i1 %fc295 to i64
  %vz303 = zext i1 %fv299 to i64
  %ns304 = shl i64 %nz300, 31
  %zs305 = shl i64 %zz301, 30
  %cs306 = shl i64 %cz302, 29
  %vs307 = shl i64 %vz303, 28
  %nzor308 = or i64 %ns304, %zs305
  %cvor309 = or i64 %cs306, %vs307
  %nzcv310 = or i64 %nzor308, %cvor309
  %wp311 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv310, ptr %wp311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbba4 word 0x121f016d
  %r312.p = getelementptr inbounds i8, ptr %c, i64 88
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %c313 = trunc i64 %r312 to i32
  %t314 = and i32 %c313, 2
  %c315 = zext i32 %t314 to i64
  %wp316 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c315, ptr %wp316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbba8 word 0x1a9f07ec
  %t317 = add i32 0, 1
  %r318.p = getelementptr inbounds i8, ptr %c, i64 272
  %r318 = load i64, ptr %r318.p, align 8, !alias.scope !3, !noalias !4
  %fsh320 = lshr i64 %r318, 30
  %cond319 = trunc i64 %fsh320 to i1
  %sel321 = select i1 %cond319, i32 0, i32 %t317
  %c322 = zext i32 %sel321 to i64
  %wp323 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c322, ptr %wp323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbac word 0x4a4d058c
  %r324.p = getelementptr inbounds i8, ptr %c, i64 104
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %c325 = trunc i64 %r324 to i32
  %t326 = lshr i32 %c325, 1
  %r327.p = getelementptr inbounds i8, ptr %c, i64 96
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %c328 = trunc i64 %r327 to i32
  %t329 = xor i32 %c328, %t326
  %c330 = zext i32 %t329 to i64
  %wp331 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c330, ptr %wp331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbb0 word 0x36009a6c
  %r332.p = getelementptr inbounds i8, ptr %c, i64 96
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %t333 = and i64 %r332, 1
  %cmp334 = icmp eq i64 %t333, 0
  br i1 %cmp334, label %L_8000dcefc, label %L_8000dbbb4
L_8000dbbe8_ft:
  ; @pc 0x8000dbbe8 word 0x5280004b
  %c386 = zext i32 2 to i64
  %wp387 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c386, ptr %wp387, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbbec
L_8000dbbf8_ft:
  ; @pc 0x8000dbbf8 word 0x52800028
  %c421 = zext i32 1 to i64
  %wp422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c421, ptr %wp422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbbfc word 0x3906566b
  %r423.p = getelementptr inbounds i8, ptr %c, i64 152
  %r423 = load i64, ptr %r423.p, align 8, !alias.scope !3, !noalias !4
  %t424 = add i64 %r423, 405
  %r425.p = getelementptr inbounds i8, ptr %c, i64 88
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %c426 = trunc i64 %r425 to i32
  %c427 = trunc i32 %c426 to i8
  %gmp428 = inttoptr i64 %t424 to ptr
  store i8 %c427, ptr %gmp428, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dbc00
L_8000dbc0c_ft:
  ; @pc 0x8000dbc0c word 0x5280004a
  %c460 = zext i32 2 to i64
  %wp461 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbc10
L_8000dbc7c_ft:
  ; @pc 0x8000dbc7c word 0x8b1510a9
  %r698.p = getelementptr inbounds i8, ptr %c, i64 40
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %r699.p = getelementptr inbounds i8, ptr %c, i64 168
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %t700 = shl i64 %r699, 4
  %t701 = add i64 %r698, %t700
  %wp702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t701, ptr %wp702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc80 word 0x91002122
  %r703.p = getelementptr inbounds i8, ptr %c, i64 72
  %r703 = load i64, ptr %r703.p, align 8, !alias.scope !3, !noalias !4
  %t704 = add i64 %r703, 8
  %wp705 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t704, ptr %wp705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc84 word 0x39402049
  %r706.p = getelementptr inbounds i8, ptr %c, i64 16
  %r706 = load i64, ptr %r706.p, align 8, !alias.scope !3, !noalias !4
  %t707 = add i64 %r706, 8
  %gmp708 = inttoptr i64 %t707 to ptr
  %gml709 = load i8, ptr %gmp708, align 1, !alias.scope !4, !noalias !3
  %c710 = zext i8 %gml709 to i64
  %wp711 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c710, ptr %wp711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc88 word 0x36006709
  %r712.p = getelementptr inbounds i8, ptr %c, i64 72
  %r712 = load i64, ptr %r712.p, align 8, !alias.scope !3, !noalias !4
  %t713 = and i64 %r712, 1
  %cmp714 = icmp eq i64 %t713, 0
  br i1 %cmp714, label %L_8000dc968, label %L_8000dbc8c_ft
L_8000dbc8c_ft:
  ; @pc 0x8000dbc8c word 0x36080509
  %r715.p = getelementptr inbounds i8, ptr %c, i64 72
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %t716 = and i64 %r715, 2
  %cmp717 = icmp eq i64 %t716, 0
  br i1 %cmp717, label %L_8000dbd2c, label %L_8000dbc90_ft
L_8000dbc90_ft:
  ; @pc 0x8000dbc90 word 0xf9401268
  %r718.p = getelementptr inbounds i8, ptr %c, i64 152
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %t719 = add i64 %r718, 32
  %gmp720 = inttoptr i64 %t719 to ptr
  %gml721 = load i64, ptr %gmp720, align 1, !alias.scope !4, !noalias !3
  %wp722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml721, ptr %wp722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc94 word 0xf9405d16
  %r723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %t724 = add i64 %r723, 184
  %gmp725 = inttoptr i64 %t724 to ptr
  %gml726 = load i64, ptr %gmp725, align 1, !alias.scope !4, !noalias !3
  %wp727 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml726, ptr %wp727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc98 word 0x52800028
  %c728 = zext i32 1 to i64
  %wp729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c728, ptr %wp729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbc9c word 0x390042c8
  %r730.p = getelementptr inbounds i8, ptr %c, i64 176
  %r730 = load i64, ptr %r730.p, align 8, !alias.scope !3, !noalias !4
  %t731 = add i64 %r730, 16
  %r732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r732 = load i64, ptr %r732.p, align 8, !alias.scope !3, !noalias !4
  %c733 = trunc i64 %r732 to i32
  %c734 = trunc i32 %c733 to i8
  %gmp735 = inttoptr i64 %t731 to ptr
  store i8 %c734, ptr %gmp735, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbca0 word 0xb001c388
  %wp736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbca4 word 0xf9479508
  %r737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %t738 = add i64 %r737, 3880
  %gmp739 = inttoptr i64 %t738 to ptr
  %gml740 = load i64, ptr %gmp739, align 1, !alias.scope !4, !noalias !3
  %wp741 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml740, ptr %wp741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbca8 word 0xb9400108
  %r742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r742 = load i64, ptr %r742.p, align 8, !alias.scope !3, !noalias !4
  %gmp743 = inttoptr i64 %r742 to ptr
  %gml744 = load i32, ptr %gmp743, align 1, !alias.scope !4, !noalias !3
  %c745 = zext i32 %gml744 to i64
  %wp746 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c745, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcac word 0x34000708
  %r747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %c748 = trunc i64 %r747 to i32
  %cmp749 = icmp eq i32 %c748, 0
  br i1 %cmp749, label %L_8000dbd8c, label %L_8000dbcb0_ft
L_8000dbcb0_ft:
  ; @pc 0x8000dbcb0 word 0xf94022cb
  %r750.p = getelementptr inbounds i8, ptr %c, i64 176
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %t751 = add i64 %r750, 64
  %gmp752 = inttoptr i64 %t751 to ptr
  %gml753 = load i64, ptr %gmp752, align 1, !alias.scope !4, !noalias !3
  %wp754 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml753, ptr %wp754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcb4 word 0xf94002ca
  %r755.p = getelementptr inbounds i8, ptr %c, i64 176
  %r755 = load i64, ptr %r755.p, align 8, !alias.scope !3, !noalias !4
  %gmp756 = inttoptr i64 %r755 to ptr
  %gml757 = load i64, ptr %gmp756, align 1, !alias.scope !4, !noalias !3
  %wp758 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml757, ptr %wp758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcb8 word 0xeb0b014c
  %r759.p = getelementptr inbounds i8, ptr %c, i64 80
  %r759 = load i64, ptr %r759.p, align 8, !alias.scope !3, !noalias !4
  %r760.p = getelementptr inbounds i8, ptr %c, i64 88
  %r760 = load i64, ptr %r760.p, align 8, !alias.scope !3, !noalias !4
  %t761 = sub i64 %r759, %r760
  %fn762 = icmp slt i64 %t761, 0
  %fz763 = icmp eq i64 %t761, 0
  %fc764 = icmp uge i64 %r759, %r760
  %fx1765 = xor i64 %r759, %r760
  %fx2766 = xor i64 %r759, %t761
  %fva767 = and i64 %fx1765, %fx2766
  %fv768 = icmp slt i64 %fva767, 0
  %nz769 = zext i1 %fn762 to i64
  %zz770 = zext i1 %fz763 to i64
  %cz771 = zext i1 %fc764 to i64
  %vz772 = zext i1 %fv768 to i64
  %ns773 = shl i64 %nz769, 31
  %zs774 = shl i64 %zz770, 30
  %cs775 = shl i64 %cz771, 29
  %vs776 = shl i64 %vz772, 28
  %nzor777 = or i64 %ns773, %zs774
  %cvor778 = or i64 %cs775, %vs776
  %nzcv779 = or i64 %nzor777, %cvor778
  %wp780 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv779, ptr %wp780, align 8, !alias.scope !3, !noalias !4
  %wp781 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t761, ptr %wp781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcbc word 0xf9400048
  %r782.p = getelementptr inbounds i8, ptr %c, i64 16
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %gmp783 = inttoptr i64 %r782 to ptr
  %gml784 = load i64, ptr %gmp783, align 1, !alias.scope !4, !noalias !3
  %wp785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml784, ptr %wp785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcc0 word 0xf9402ac9
  %r786.p = getelementptr inbounds i8, ptr %c, i64 176
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %t787 = add i64 %r786, 80
  %gmp788 = inttoptr i64 %t787 to ptr
  %gml789 = load i64, ptr %gmp788, align 1, !alias.scope !4, !noalias !3
  %wp790 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml789, ptr %wp790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcc4 word 0x927fb901
  %r791.p = getelementptr inbounds i8, ptr %c, i64 64
  %r791 = load i64, ptr %r791.p, align 8, !alias.scope !3, !noalias !4
  %t792 = and i64 %r791, 281474976710654
  %wp793 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t792, ptr %wp793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcc8 word 0xa94236d9
  %r794.p = getelementptr inbounds i8, ptr %c, i64 176
  %r794 = load i64, ptr %r794.p, align 8, !alias.scope !3, !noalias !4
  %t795 = add i64 %r794, 32
  %t796 = add i64 %t795, 8
  %gmp797 = inttoptr i64 %t795 to ptr
  %gml798 = load i64, ptr %gmp797, align 1, !alias.scope !4, !noalias !3
  %gmp799 = inttoptr i64 %t796 to ptr
  %gml800 = load i64, ptr %gmp799, align 1, !alias.scope !4, !noalias !3
  %wp801 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml798, ptr %wp801, align 8, !alias.scope !3, !noalias !4
  %wp802 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml800, ptr %wp802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbccc word 0xd370fd18
  %r803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r803 = load i64, ptr %r803.p, align 8, !alias.scope !3, !noalias !4
  %ror804 = call i64 @llvm.fshr.i64(i64 %r803, i64 %r803, i64 48)
  %t805 = and i64 %ror804, 65535
  %wp806 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t805, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcd0 word 0x54000481
  %r807.p = getelementptr inbounds i8, ptr %c, i64 272
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %fsh809 = lshr i64 %r807, 30
  %ftr810 = trunc i64 %fsh809 to i1
  %cond808 = xor i1 %ftr810, true
  br i1 %cond808, label %L_8000dbd60, label %L_8000dbcd4_ft
L_8000dbcd4_ft:
  ; @pc 0x8000dbcd4 word 0x360005c8
  %r811.p = getelementptr inbounds i8, ptr %c, i64 64
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %t812 = and i64 %r811, 1
  %cmp813 = icmp eq i64 %t812, 0
  br i1 %cmp813, label %L_8000dbd8c, label %L_8000dbcd8_ft
L_8000dbcd8_ft:
  ; @pc 0x8000dbcd8 word 0x8b180714
  %r814.p = getelementptr inbounds i8, ptr %c, i64 192
  %r814 = load i64, ptr %r814.p, align 8, !alias.scope !3, !noalias !4
  %r815.p = getelementptr inbounds i8, ptr %c, i64 192
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %t816 = shl i64 %r815, 1
  %t817 = add i64 %r814, %t816
  %wp818 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t817, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcdc word 0xd37df288
  %r819.p = getelementptr inbounds i8, ptr %c, i64 160
  %r819 = load i64, ptr %r819.p, align 8, !alias.scope !3, !noalias !4
  %ror820 = call i64 @llvm.fshr.i64(i64 %r819, i64 %r819, i64 61)
  %t821 = and i64 %ror820, -8
  %wp822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbce0 word 0x8b08032a
  %r823.p = getelementptr inbounds i8, ptr %c, i64 200
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %r824.p = getelementptr inbounds i8, ptr %c, i64 64
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %t825 = add i64 %r823, %r824
  %wp826 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t825, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbce4 word 0x3868682b
  %r827.p = getelementptr inbounds i8, ptr %c, i64 8
  %r827 = load i64, ptr %r827.p, align 8, !alias.scope !3, !noalias !4
  %r828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %t829 = add i64 %r827, %r828
  %gmp830 = inttoptr i64 %t829 to ptr
  %gml831 = load i8, ptr %gmp830, align 1, !alias.scope !4, !noalias !3
  %c832 = zext i8 %gml831 to i64
  %wp833 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c832, ptr %wp833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbce8 word 0x9100814a
  %r834.p = getelementptr inbounds i8, ptr %c, i64 80
  %r834 = load i64, ptr %r834.p, align 8, !alias.scope !3, !noalias !4
  %t835 = add i64 %r834, 32
  %wp836 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t835, ptr %wp836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcec word 0xeb0d015f
  %r837.p = getelementptr inbounds i8, ptr %c, i64 80
  %r837 = load i64, ptr %r837.p, align 8, !alias.scope !3, !noalias !4
  %r838.p = getelementptr inbounds i8, ptr %c, i64 104
  %r838 = load i64, ptr %r838.p, align 8, !alias.scope !3, !noalias !4
  %t839 = sub i64 %r837, %r838
  %fn840 = icmp slt i64 %t839, 0
  %fz841 = icmp eq i64 %t839, 0
  %fc842 = icmp uge i64 %r837, %r838
  %fx1843 = xor i64 %r837, %r838
  %fx2844 = xor i64 %r837, %t839
  %fva845 = and i64 %fx1843, %fx2844
  %fv846 = icmp slt i64 %fva845, 0
  %nz847 = zext i1 %fn840 to i64
  %zz848 = zext i1 %fz841 to i64
  %cz849 = zext i1 %fc842 to i64
  %vz850 = zext i1 %fv846 to i64
  %ns851 = shl i64 %nz847, 31
  %zs852 = shl i64 %zz848, 30
  %cs853 = shl i64 %cz849, 29
  %vs854 = shl i64 %vz850, 28
  %nzor855 = or i64 %ns851, %zs852
  %cvor856 = or i64 %cs853, %vs854
  %nzcv857 = or i64 %nzor855, %cvor856
  %wp858 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv857, ptr %wp858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcf0 word 0x1a9f97ea
  %t859 = add i32 0, 1
  %r860.p = getelementptr inbounds i8, ptr %c, i64 272
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %fsh862 = lshr i64 %r860, 29
  %ftr863 = trunc i64 %fsh862 to i1
  %fsh864 = lshr i64 %r860, 30
  %ftr865 = trunc i64 %fsh864 to i1
  %fnz866 = xor i1 %ftr865, true
  %fhi867 = and i1 %ftr863, %fnz866
  %cond861 = xor i1 %fhi867, true
  %sel868 = select i1 %cond861, i32 0, i32 %t859
  %c869 = zext i32 %sel868 to i64
  %wp870 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c869, ptr %wp870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcf4 word 0xf100097f
  %r871.p = getelementptr inbounds i8, ptr %c, i64 88
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %t872 = sub i64 %r871, 2
  %fn873 = icmp slt i64 %t872, 0
  %fz874 = icmp eq i64 %t872, 0
  %fc875 = icmp uge i64 %r871, 2
  %fx1876 = xor i64 %r871, 2
  %fx2877 = xor i64 %r871, %t872
  %fva878 = and i64 %fx1876, %fx2877
  %fv879 = icmp slt i64 %fva878, 0
  %nz880 = zext i1 %fn873 to i64
  %zz881 = zext i1 %fz874 to i64
  %cz882 = zext i1 %fc875 to i64
  %vz883 = zext i1 %fv879 to i64
  %ns884 = shl i64 %nz880, 31
  %zs885 = shl i64 %zz881, 30
  %cs886 = shl i64 %cz882, 29
  %vs887 = shl i64 %vz883, 28
  %nzor888 = or i64 %ns884, %zs885
  %cvor889 = or i64 %cs886, %vs887
  %nzcv890 = or i64 %nzor888, %cvor889
  %wp891 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv890, ptr %wp891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbcf8 word 0x54006c81
  %r892.p = getelementptr inbounds i8, ptr %c, i64 272
  %r892 = load i64, ptr %r892.p, align 8, !alias.scope !3, !noalias !4
  %fsh894 = lshr i64 %r892, 30
  %ftr895 = trunc i64 %fsh894 to i1
  %cond893 = xor i1 %ftr895, true
  br i1 %cond893, label %L_8000dca88, label %L_8000dbcfc
L_8000dbd00_ft:
  ; @pc 0x8000dbd00 word 0xb4002f29
  %r899.p = getelementptr inbounds i8, ptr %c, i64 72
  %r899 = load i64, ptr %r899.p, align 8, !alias.scope !3, !noalias !4
  %cmp900 = icmp eq i64 %r899, 0
  br i1 %cmp900, label %L_8000dc2e4, label %L_8000dbd04_ft
L_8000dbd04_ft:
  ; @pc 0x8000dbd04 word 0xaa1903f7
  %r901.p = getelementptr inbounds i8, ptr %c, i64 200
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = or i64 0, %r901
  %wp903 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t902, ptr %wp903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd08 word 0xaa0903f9
  %r904.p = getelementptr inbounds i8, ptr %c, i64 72
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %t905 = or i64 0, %r904
  %wp906 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t905, ptr %wp906, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbd0c
L_8000dbd64_ft:
  ; @pc 0x8000dbd64 word 0x8b180714
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %t1016 = shl i64 %r1015, 1
  %t1017 = add i64 %r1014, %t1016
  %wp1018 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1017, ptr %wp1018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd68 word 0xd37df288
  %r1019.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1019 = load i64, ptr %r1019.p, align 8, !alias.scope !3, !noalias !4
  %ror1020 = call i64 @llvm.fshr.i64(i64 %r1019, i64 %r1019, i64 61)
  %t1021 = and i64 %ror1020, -8
  %wp1022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1021, ptr %wp1022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd6c word 0x8b08032e
  %r1023.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1023 = load i64, ptr %r1023.p, align 8, !alias.scope !3, !noalias !4
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = add i64 %r1023, %r1024
  %wp1026 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1025, ptr %wp1026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd70 word 0x3868682f
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %t1029 = add i64 %r1027, %r1028
  %gmp1030 = inttoptr i64 %t1029 to ptr
  %gml1031 = load i8, ptr %gmp1030, align 1, !alias.scope !4, !noalias !3
  %c1032 = zext i8 %gml1031 to i64
  %wp1033 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1032, ptr %wp1033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd74 word 0x910081ce
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %t1035 = add i64 %r1034, 32
  %wp1036 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1035, ptr %wp1036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd78 word 0xeb0d01df
  %r1037.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1037 = load i64, ptr %r1037.p, align 8, !alias.scope !3, !noalias !4
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = sub i64 %r1037, %r1038
  %fn1040 = icmp slt i64 %t1039, 0
  %fz1041 = icmp eq i64 %t1039, 0
  %fc1042 = icmp uge i64 %r1037, %r1038
  %fx11043 = xor i64 %r1037, %r1038
  %fx21044 = xor i64 %r1037, %t1039
  %fva1045 = and i64 %fx11043, %fx21044
  %fv1046 = icmp slt i64 %fva1045, 0
  %nz1047 = zext i1 %fn1040 to i64
  %zz1048 = zext i1 %fz1041 to i64
  %cz1049 = zext i1 %fc1042 to i64
  %vz1050 = zext i1 %fv1046 to i64
  %ns1051 = shl i64 %nz1047, 31
  %zs1052 = shl i64 %zz1048, 30
  %cs1053 = shl i64 %cz1049, 29
  %vs1054 = shl i64 %vz1050, 28
  %nzor1055 = or i64 %ns1051, %zs1052
  %cvor1056 = or i64 %cs1053, %vs1054
  %nzcv1057 = or i64 %nzor1055, %cvor1056
  %wp1058 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1057, ptr %wp1058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd7c word 0x1a9f97ed
  %t1059 = add i32 0, 1
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %fsh1062 = lshr i64 %r1060, 29
  %ftr1063 = trunc i64 %fsh1062 to i1
  %fsh1064 = lshr i64 %r1060, 30
  %ftr1065 = trunc i64 %fsh1064 to i1
  %fnz1066 = xor i1 %ftr1065, true
  %fhi1067 = and i1 %ftr1063, %fnz1066
  %cond1061 = xor i1 %fhi1067, true
  %sel1068 = select i1 %cond1061, i32 0, i32 %t1059
  %c1069 = zext i32 %sel1068 to i64
  %wp1070 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1069, ptr %wp1070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd80 word 0xf10009ff
  %r1071.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1071 = load i64, ptr %r1071.p, align 8, !alias.scope !3, !noalias !4
  %t1072 = sub i64 %r1071, 2
  %fn1073 = icmp slt i64 %t1072, 0
  %fz1074 = icmp eq i64 %t1072, 0
  %fc1075 = icmp uge i64 %r1071, 2
  %fx11076 = xor i64 %r1071, 2
  %fx21077 = xor i64 %r1071, %t1072
  %fva1078 = and i64 %fx11076, %fx21077
  %fv1079 = icmp slt i64 %fva1078, 0
  %nz1080 = zext i1 %fn1073 to i64
  %zz1081 = zext i1 %fz1074 to i64
  %cz1082 = zext i1 %fc1075 to i64
  %vz1083 = zext i1 %fv1079 to i64
  %ns1084 = shl i64 %nz1080, 31
  %zs1085 = shl i64 %zz1081, 30
  %cs1086 = shl i64 %cz1082, 29
  %vs1087 = shl i64 %vz1083, 28
  %nzor1088 = or i64 %ns1084, %zs1085
  %cvor1089 = or i64 %cs1086, %vs1087
  %nzcv1090 = or i64 %nzor1088, %cvor1089
  %wp1091 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1090, ptr %wp1091, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbd84 word 0x54006861
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %fsh1094 = lshr i64 %r1092, 30
  %ftr1095 = trunc i64 %fsh1094 to i1
  %cond1093 = xor i1 %ftr1095, true
  br i1 %cond1093, label %L_8000dca90, label %L_8000dbd88
L_8000dbdb4_ft:
  ; @pc 0x8000dbdb4 word 0xf9400a60
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %t1149 = add i64 %r1148, 16
  %gmp1150 = inttoptr i64 %t1149 to ptr
  %gml1151 = load i64, ptr %gmp1150, align 1, !alias.scope !4, !noalias !3
  %wp1152 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1151, ptr %wp1152, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdb8 word 0xf9429809
  %r1153.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1153 = load i64, ptr %r1153.p, align 8, !alias.scope !3, !noalias !4
  %t1154 = add i64 %r1153, 1328
  %gmp1155 = inttoptr i64 %t1154 to ptr
  %gml1156 = load i64, ptr %gmp1155, align 1, !alias.scope !4, !noalias !3
  %wp1157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1156, ptr %wp1157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdbc word 0xb4fff569
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %cmp1159 = icmp eq i64 %r1158, 0
  br i1 %cmp1159, label %L_8000dbc68, label %L_8000dbdc0_ft
L_8000dbdc0_ft:
  ; @pc 0x8000dbdc0 word 0xb9459009
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1160, 1424
  %gmp1162 = inttoptr i64 %t1161 to ptr
  %gml1163 = load i32, ptr %gmp1162, align 1, !alias.scope !4, !noalias !3
  %c1164 = zext i32 %gml1163 to i64
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdc4 word 0x13001d01
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %c1167 = trunc i64 %r1166 to i32
  %t1168 = lshr i32 %c1167, 7
  %t1169 = and i32 %t1168, 1
  %t1170 = sub i32 0, %t1169
  %t1171 = and i32 %t1170, -256
  %t1172 = and i32 %c1167, 255
  %t1173 = or i32 %t1171, %t1172
  %c1174 = zext i32 %t1173 to i64
  %wp1175 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1174, ptr %wp1175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdc8 word 0x3100043f
  %r1176.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1176 = load i64, ptr %r1176.p, align 8, !alias.scope !3, !noalias !4
  %c1177 = trunc i64 %r1176 to i32
  %t1178 = add i32 %c1177, 1
  %fn1179 = icmp slt i32 %t1178, 0
  %fz1180 = icmp eq i32 %t1178, 0
  %fc1181 = icmp ult i32 %t1178, %c1177
  %fx11182 = xor i32 %c1177, %t1178
  %fx21183 = xor i32 1, %t1178
  %fva1184 = and i32 %fx11182, %fx21183
  %fv1185 = icmp slt i32 %fva1184, 0
  %nz1186 = zext i1 %fn1179 to i64
  %zz1187 = zext i1 %fz1180 to i64
  %cz1188 = zext i1 %fc1181 to i64
  %vz1189 = zext i1 %fv1185 to i64
  %ns1190 = shl i64 %nz1186, 31
  %zs1191 = shl i64 %zz1187, 30
  %cs1192 = shl i64 %cz1188, 29
  %vs1193 = shl i64 %vz1189, 28
  %nzor1194 = or i64 %ns1190, %zs1191
  %cvor1195 = or i64 %cs1192, %vs1193
  %nzcv1196 = or i64 %nzor1194, %cvor1195
  %wp1197 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1196, ptr %wp1197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdcc word 0xf942cc14
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %t1199 = add i64 %r1198, 1432
  %gmp1200 = inttoptr i64 %t1199 to ptr
  %gml1201 = load i64, ptr %gmp1200, align 1, !alias.scope !4, !noalias !3
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1201, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdd0 word 0x1a8103e8
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %c1204 = trunc i64 %r1203 to i32
  %r1205.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1205 = load i64, ptr %r1205.p, align 8, !alias.scope !3, !noalias !4
  %fsh1207 = lshr i64 %r1205, 30
  %cond1206 = trunc i64 %fsh1207 to i1
  %sel1208 = select i1 %cond1206, i32 0, i32 %c1204
  %c1209 = zext i32 %sel1208 to i64
  %wp1210 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1209, ptr %wp1210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdd4 word 0x6b08013f
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %c1212 = trunc i64 %r1211 to i32
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %c1214 = trunc i64 %r1213 to i32
  %t1215 = sub i32 %c1212, %c1214
  %fn1216 = icmp slt i32 %t1215, 0
  %fz1217 = icmp eq i32 %t1215, 0
  %fc1218 = icmp uge i32 %c1212, %c1214
  %fx11219 = xor i32 %c1212, %c1214
  %fx21220 = xor i32 %c1212, %t1215
  %fva1221 = and i32 %fx11219, %fx21220
  %fv1222 = icmp slt i32 %fva1221, 0
  %nz1223 = zext i1 %fn1216 to i64
  %zz1224 = zext i1 %fz1217 to i64
  %cz1225 = zext i1 %fc1218 to i64
  %vz1226 = zext i1 %fv1222 to i64
  %ns1227 = shl i64 %nz1223, 31
  %zs1228 = shl i64 %zz1224, 30
  %cs1229 = shl i64 %cz1225, 29
  %vs1230 = shl i64 %vz1226, 28
  %nzor1231 = or i64 %ns1227, %zs1228
  %cvor1232 = or i64 %cs1229, %vs1230
  %nzcv1233 = or i64 %nzor1231, %cvor1232
  %wp1234 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1233, ptr %wp1234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbdd8 word 0x52801b09
  %c1235 = zext i32 216 to i64
  %wp1236 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1235, ptr %wp1236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbddc word 0x1a9f8108
  %r1237.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1237 = load i64, ptr %r1237.p, align 8, !alias.scope !3, !noalias !4
  %c1238 = trunc i64 %r1237 to i32
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %fsh1241 = lshr i64 %r1239, 29
  %ftr1242 = trunc i64 %fsh1241 to i1
  %fsh1243 = lshr i64 %r1239, 30
  %ftr1244 = trunc i64 %fsh1243 to i1
  %fnz1245 = xor i1 %ftr1244, true
  %cond1240 = and i1 %ftr1242, %fnz1245
  %sel1246 = select i1 %cond1240, i32 %c1238, i32 0
  %c1247 = zext i32 %sel1246 to i64
  %wp1248 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1247, ptr %wp1248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbde0 word 0x93407d15
  %r1249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1249 = load i64, ptr %r1249.p, align 8, !alias.scope !3, !noalias !4
  %t1250 = lshr i64 %r1249, 31
  %t1251 = and i64 %t1250, 1
  %t1252 = sub i64 0, %t1251
  %t1253 = and i64 %t1252, -4294967296
  %t1254 = and i64 %r1249, 4294967295
  %t1255 = or i64 %t1253, %t1254
  %wp1256 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1255, ptr %wp1256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbde4 word 0x9b295108
  %r1257.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1257 = load i64, ptr %r1257.p, align 8, !alias.scope !3, !noalias !4
  %c1258 = trunc i64 %r1257 to i32
  %c1259 = sext i32 %c1258 to i64
  %r1260.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1260 = load i64, ptr %r1260.p, align 8, !alias.scope !3, !noalias !4
  %c1261 = trunc i64 %r1260 to i32
  %c1262 = sext i32 %c1261 to i64
  %t1263 = mul i64 %c1259, %c1262
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %t1265 = add i64 %r1264, %t1263
  %wp1266 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1265, ptr %wp1266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbde8 word 0x91034108
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %t1268 = add i64 %r1267, 208
  %wp1269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1268, ptr %wp1269, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbdec
L_8000dbdfc_ft:
  ; @pc 0x8000dbdfc word 0xf81d83ba
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %t1301 = add i64 %r1300, -40
  %r1302.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1302 = load i64, ptr %r1302.p, align 8, !alias.scope !3, !noalias !4
  %gmp1303 = inttoptr i64 %t1301 to ptr
  store i64 %r1302, ptr %gmp1303, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbe00 word 0x340089a9
  %r1304.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1304 = load i64, ptr %r1304.p, align 8, !alias.scope !3, !noalias !4
  %c1305 = trunc i64 %r1304 to i32
  %cmp1306 = icmp eq i32 %c1305, 0
  br i1 %cmp1306, label %L_8000dcf34, label %L_8000dbe04
L_8000dbe3c_ft:
  ; @pc 0x8000dbe3c word 0x1103ff18
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %c1395 = trunc i64 %r1394 to i32
  %t1396 = add i32 %c1395, 255
  %c1397 = zext i32 %t1396 to i64
  %wp1398 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1397, ptr %wp1398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe40 word 0x52802000
  %c1399 = zext i32 256 to i64
  %wp1400 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1399, ptr %wp1400, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbe44
L_8000dbe70_ft:
  ; @pc 0x8000dbe70 word 0xb900a26a
  %r1488.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1488 = load i64, ptr %r1488.p, align 8, !alias.scope !3, !noalias !4
  %t1489 = add i64 %r1488, 160
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %c1491 = trunc i64 %r1490 to i32
  %gmp1492 = inttoptr i64 %t1489 to ptr
  store i32 %c1491, ptr %gmp1492, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbe74 word 0x3941126d
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %t1494 = add i64 %r1493, 68
  %gmp1495 = inttoptr i64 %t1494 to ptr
  %gml1496 = load i8, ptr %gmp1495, align 1, !alias.scope !4, !noalias !3
  %c1497 = zext i8 %gml1496 to i64
  %wp1498 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1497, ptr %wp1498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe78 word 0xb940026a
  %r1499.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1499 = load i64, ptr %r1499.p, align 8, !alias.scope !3, !noalias !4
  %gmp1500 = inttoptr i64 %r1499 to ptr
  %gml1501 = load i32, ptr %gmp1500, align 1, !alias.scope !4, !noalias !3
  %c1502 = zext i32 %gml1501 to i64
  %wp1503 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1502, ptr %wp1503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe7c word 0x3946256c
  %r1504.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1504 = load i64, ptr %r1504.p, align 8, !alias.scope !3, !noalias !4
  %t1505 = add i64 %r1504, 393
  %gmp1506 = inttoptr i64 %t1505 to ptr
  %gml1507 = load i8, ptr %gmp1506, align 1, !alias.scope !4, !noalias !3
  %c1508 = zext i8 %gml1507 to i64
  %wp1509 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1508, ptr %wp1509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe80 word 0x1200098c
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %c1511 = trunc i64 %r1510 to i32
  %t1512 = and i32 %c1511, 7
  %c1513 = zext i32 %t1512 to i64
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe84 word 0x7100099f
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %c1516 = trunc i64 %r1515 to i32
  %t1517 = sub i32 %c1516, 2
  %fn1518 = icmp slt i32 %t1517, 0
  %fz1519 = icmp eq i32 %t1517, 0
  %fc1520 = icmp uge i32 %c1516, 2
  %fx11521 = xor i32 %c1516, 2
  %fx21522 = xor i32 %c1516, %t1517
  %fva1523 = and i32 %fx11521, %fx21522
  %fv1524 = icmp slt i32 %fva1523, 0
  %nz1525 = zext i1 %fn1518 to i64
  %zz1526 = zext i1 %fz1519 to i64
  %cz1527 = zext i1 %fc1520 to i64
  %vz1528 = zext i1 %fv1524 to i64
  %ns1529 = shl i64 %nz1525, 31
  %zs1530 = shl i64 %zz1526, 30
  %cs1531 = shl i64 %cz1527, 29
  %vs1532 = shl i64 %vz1528, 28
  %nzor1533 = or i64 %ns1529, %zs1530
  %cvor1534 = or i64 %cs1531, %vs1532
  %nzcv1535 = or i64 %nzor1533, %cvor1534
  %wp1536 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1535, ptr %wp1536, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbe88 word 0x54006361
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %fsh1539 = lshr i64 %r1537, 30
  %ftr1540 = trunc i64 %fsh1539 to i1
  %cond1538 = xor i1 %ftr1540, true
  br i1 %cond1538, label %L_8000dcaf4, label %L_8000dbe8c
L_8000dbe94_ft:
  ; @pc 0x8000dbe94 word 0x2a1f03ed
  %t1550 = or i32 0, 0
  %c1551 = zext i32 %t1550 to i64
  %wp1552 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1551, ptr %wp1552, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dbe98
L_8000dbeac_ft:
  ; @pc 0x8000dbeac word 0x39462569
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = add i64 %r1595, 393
  %gmp1597 = inttoptr i64 %t1596 to ptr
  %gml1598 = load i8, ptr %gmp1597, align 1, !alias.scope !4, !noalias !3
  %c1599 = zext i8 %gml1598 to i64
  %wp1600 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1599, ptr %wp1600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbeb0 word 0x12000929
  %r1601.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1601 = load i64, ptr %r1601.p, align 8, !alias.scope !3, !noalias !4
  %c1602 = trunc i64 %r1601 to i32
  %t1603 = and i32 %c1602, 7
  %c1604 = zext i32 %t1603 to i64
  %wp1605 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1604, ptr %wp1605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbeb4 word 0x7100153f
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %c1607 = trunc i64 %r1606 to i32
  %t1608 = sub i32 %c1607, 5
  %fn1609 = icmp slt i32 %t1608, 0
  %fz1610 = icmp eq i32 %t1608, 0
  %fc1611 = icmp uge i32 %c1607, 5
  %fx11612 = xor i32 %c1607, 5
  %fx21613 = xor i32 %c1607, %t1608
  %fva1614 = and i32 %fx11612, %fx21613
  %fv1615 = icmp slt i32 %fva1614, 0
  %nz1616 = zext i1 %fn1609 to i64
  %zz1617 = zext i1 %fz1610 to i64
  %cz1618 = zext i1 %fc1611 to i64
  %vz1619 = zext i1 %fv1615 to i64
  %ns1620 = shl i64 %nz1616, 31
  %zs1621 = shl i64 %zz1617, 30
  %cs1622 = shl i64 %cz1618, 29
  %vs1623 = shl i64 %vz1619, 28
  %nzor1624 = or i64 %ns1620, %zs1621
  %cvor1625 = or i64 %cs1622, %vs1623
  %nzcv1626 = or i64 %nzor1624, %cvor1625
  %wp1627 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1626, ptr %wp1627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbeb8 word 0x54002201
  %r1628.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1628 = load i64, ptr %r1628.p, align 8, !alias.scope !3, !noalias !4
  %fsh1630 = lshr i64 %r1628, 30
  %ftr1631 = trunc i64 %fsh1630 to i1
  %cond1629 = xor i1 %ftr1631, true
  br i1 %cond1629, label %L_8000dc2f8, label %L_8000dbebc_ft
L_8000dbebc_ft:
  ; @pc 0x8000dbebc word 0x3944c269
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %t1633 = add i64 %r1632, 304
  %gmp1634 = inttoptr i64 %t1633 to ptr
  %gml1635 = load i8, ptr %gmp1634, align 1, !alias.scope !4, !noalias !3
  %c1636 = zext i8 %gml1635 to i64
  %wp1637 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1636, ptr %wp1637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbec0 word 0x7100013f
  %r1638.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1638 = load i64, ptr %r1638.p, align 8, !alias.scope !3, !noalias !4
  %c1639 = trunc i64 %r1638 to i32
  %t1640 = sub i32 %c1639, 0
  %fn1641 = icmp slt i32 %t1640, 0
  %fz1642 = icmp eq i32 %t1640, 0
  %fc1643 = icmp uge i32 %c1639, 0
  %fx11644 = xor i32 %c1639, 0
  %fx21645 = xor i32 %c1639, %t1640
  %fva1646 = and i32 %fx11644, %fx21645
  %fv1647 = icmp slt i32 %fva1646, 0
  %nz1648 = zext i1 %fn1641 to i64
  %zz1649 = zext i1 %fz1642 to i64
  %cz1650 = zext i1 %fc1643 to i64
  %vz1651 = zext i1 %fv1647 to i64
  %ns1652 = shl i64 %nz1648, 31
  %zs1653 = shl i64 %zz1649, 30
  %cs1654 = shl i64 %cz1650, 29
  %vs1655 = shl i64 %vz1651, 28
  %nzor1656 = or i64 %ns1652, %zs1653
  %cvor1657 = or i64 %cs1654, %vs1655
  %nzcv1658 = or i64 %nzor1656, %cvor1657
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbec4 word 0x39440169
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = add i64 %r1660, 256
  %gmp1662 = inttoptr i64 %t1661 to ptr
  %gml1663 = load i8, ptr %gmp1662, align 1, !alias.scope !4, !noalias !3
  %c1664 = zext i8 %gml1663 to i64
  %wp1665 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1664, ptr %wp1665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbec8 word 0x1a9f07ed
  %t1666 = add i32 0, 1
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %fsh1669 = lshr i64 %r1667, 30
  %cond1668 = trunc i64 %fsh1669 to i1
  %sel1670 = select i1 %cond1668, i32 0, i32 %t1666
  %c1671 = zext i32 %sel1670 to i64
  %wp1672 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1671, ptr %wp1672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbecc word 0x7100013f
  %r1673.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1673 = load i64, ptr %r1673.p, align 8, !alias.scope !3, !noalias !4
  %c1674 = trunc i64 %r1673 to i32
  %t1675 = sub i32 %c1674, 0
  %fn1676 = icmp slt i32 %t1675, 0
  %fz1677 = icmp eq i32 %t1675, 0
  %fc1678 = icmp uge i32 %c1674, 0
  %fx11679 = xor i32 %c1674, 0
  %fx21680 = xor i32 %c1674, %t1675
  %fva1681 = and i32 %fx11679, %fx21680
  %fv1682 = icmp slt i32 %fva1681, 0
  %nz1683 = zext i1 %fn1676 to i64
  %zz1684 = zext i1 %fz1677 to i64
  %cz1685 = zext i1 %fc1678 to i64
  %vz1686 = zext i1 %fv1682 to i64
  %ns1687 = shl i64 %nz1683, 31
  %zs1688 = shl i64 %zz1684, 30
  %cs1689 = shl i64 %cz1685, 29
  %vs1690 = shl i64 %vz1686, 28
  %nzor1691 = or i64 %ns1687, %zs1688
  %cvor1692 = or i64 %cs1689, %vs1690
  %nzcv1693 = or i64 %nzor1691, %cvor1692
  %wp1694 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1693, ptr %wp1694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbed0 word 0x1a9f07ee
  %t1695 = add i32 0, 1
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %fsh1698 = lshr i64 %r1696, 30
  %cond1697 = trunc i64 %fsh1698 to i1
  %sel1699 = select i1 %cond1697, i32 0, i32 %t1695
  %c1700 = zext i32 %sel1699 to i64
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1700, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbed4 word 0x6b0e01bf
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %c1703 = trunc i64 %r1702 to i32
  %r1704.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1704 = load i64, ptr %r1704.p, align 8, !alias.scope !3, !noalias !4
  %c1705 = trunc i64 %r1704 to i32
  %t1706 = sub i32 %c1703, %c1705
  %fn1707 = icmp slt i32 %t1706, 0
  %fz1708 = icmp eq i32 %t1706, 0
  %fc1709 = icmp uge i32 %c1703, %c1705
  %fx11710 = xor i32 %c1703, %c1705
  %fx21711 = xor i32 %c1703, %t1706
  %fva1712 = and i32 %fx11710, %fx21711
  %fv1713 = icmp slt i32 %fva1712, 0
  %nz1714 = zext i1 %fn1707 to i64
  %zz1715 = zext i1 %fz1708 to i64
  %cz1716 = zext i1 %fc1709 to i64
  %vz1717 = zext i1 %fv1713 to i64
  %ns1718 = shl i64 %nz1714, 31
  %zs1719 = shl i64 %zz1715, 30
  %cs1720 = shl i64 %cz1716, 29
  %vs1721 = shl i64 %vz1717, 28
  %nzor1722 = or i64 %ns1718, %zs1719
  %cvor1723 = or i64 %cs1720, %vs1721
  %nzcv1724 = or i64 %nzor1722, %cvor1723
  %wp1725 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1724, ptr %wp1725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbed8 word 0x54008081
  %r1726.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1726 = load i64, ptr %r1726.p, align 8, !alias.scope !3, !noalias !4
  %fsh1728 = lshr i64 %r1726, 30
  %ftr1729 = trunc i64 %fsh1728 to i1
  %cond1727 = xor i1 %ftr1729, true
  br i1 %cond1727, label %L_8000dcee8, label %L_8000dbedc_ft
L_8000dbedc_ft:
  ; @pc 0x8000dbedc word 0x3944c66d
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %t1731 = add i64 %r1730, 305
  %gmp1732 = inttoptr i64 %t1731 to ptr
  %gml1733 = load i8, ptr %gmp1732, align 1, !alias.scope !4, !noalias !3
  %c1734 = zext i8 %gml1733 to i64
  %wp1735 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1734, ptr %wp1735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbee0 word 0x710001bf
  %r1736.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1736 = load i64, ptr %r1736.p, align 8, !alias.scope !3, !noalias !4
  %c1737 = trunc i64 %r1736 to i32
  %t1738 = sub i32 %c1737, 0
  %fn1739 = icmp slt i32 %t1738, 0
  %fz1740 = icmp eq i32 %t1738, 0
  %fc1741 = icmp uge i32 %c1737, 0
  %fx11742 = xor i32 %c1737, 0
  %fx21743 = xor i32 %c1737, %t1738
  %fva1744 = and i32 %fx11742, %fx21743
  %fv1745 = icmp slt i32 %fva1744, 0
  %nz1746 = zext i1 %fn1739 to i64
  %zz1747 = zext i1 %fz1740 to i64
  %cz1748 = zext i1 %fc1741 to i64
  %vz1749 = zext i1 %fv1745 to i64
  %ns1750 = shl i64 %nz1746, 31
  %zs1751 = shl i64 %zz1747, 30
  %cs1752 = shl i64 %cz1748, 29
  %vs1753 = shl i64 %vz1749, 28
  %nzor1754 = or i64 %ns1750, %zs1751
  %cvor1755 = or i64 %cs1752, %vs1753
  %nzcv1756 = or i64 %nzor1754, %cvor1755
  %wp1757 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1756, ptr %wp1757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbee4 word 0x3944056d
  %r1758.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1758 = load i64, ptr %r1758.p, align 8, !alias.scope !3, !noalias !4
  %t1759 = add i64 %r1758, 257
  %gmp1760 = inttoptr i64 %t1759 to ptr
  %gml1761 = load i8, ptr %gmp1760, align 1, !alias.scope !4, !noalias !3
  %c1762 = zext i8 %gml1761 to i64
  %wp1763 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1762, ptr %wp1763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbee8 word 0x1a9f07ee
  %t1764 = add i32 0, 1
  %r1765.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1765 = load i64, ptr %r1765.p, align 8, !alias.scope !3, !noalias !4
  %fsh1767 = lshr i64 %r1765, 30
  %cond1766 = trunc i64 %fsh1767 to i1
  %sel1768 = select i1 %cond1766, i32 0, i32 %t1764
  %c1769 = zext i32 %sel1768 to i64
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbeec word 0x710001bf
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %c1772 = trunc i64 %r1771 to i32
  %t1773 = sub i32 %c1772, 0
  %fn1774 = icmp slt i32 %t1773, 0
  %fz1775 = icmp eq i32 %t1773, 0
  %fc1776 = icmp uge i32 %c1772, 0
  %fx11777 = xor i32 %c1772, 0
  %fx21778 = xor i32 %c1772, %t1773
  %fva1779 = and i32 %fx11777, %fx21778
  %fv1780 = icmp slt i32 %fva1779, 0
  %nz1781 = zext i1 %fn1774 to i64
  %zz1782 = zext i1 %fz1775 to i64
  %cz1783 = zext i1 %fc1776 to i64
  %vz1784 = zext i1 %fv1780 to i64
  %ns1785 = shl i64 %nz1781, 31
  %zs1786 = shl i64 %zz1782, 30
  %cs1787 = shl i64 %cz1783, 29
  %vs1788 = shl i64 %vz1784, 28
  %nzor1789 = or i64 %ns1785, %zs1786
  %cvor1790 = or i64 %cs1787, %vs1788
  %nzcv1791 = or i64 %nzor1789, %cvor1790
  %wp1792 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1791, ptr %wp1792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbef0 word 0x1a9f07ef
  %t1793 = add i32 0, 1
  %r1794.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1794 = load i64, ptr %r1794.p, align 8, !alias.scope !3, !noalias !4
  %fsh1796 = lshr i64 %r1794, 30
  %cond1795 = trunc i64 %fsh1796 to i1
  %sel1797 = select i1 %cond1795, i32 0, i32 %t1793
  %c1798 = zext i32 %sel1797 to i64
  %wp1799 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1798, ptr %wp1799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbef4 word 0x6b0f01df
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %c1801 = trunc i64 %r1800 to i32
  %r1802.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1802 = load i64, ptr %r1802.p, align 8, !alias.scope !3, !noalias !4
  %c1803 = trunc i64 %r1802 to i32
  %t1804 = sub i32 %c1801, %c1803
  %fn1805 = icmp slt i32 %t1804, 0
  %fz1806 = icmp eq i32 %t1804, 0
  %fc1807 = icmp uge i32 %c1801, %c1803
  %fx11808 = xor i32 %c1801, %c1803
  %fx21809 = xor i32 %c1801, %t1804
  %fva1810 = and i32 %fx11808, %fx21809
  %fv1811 = icmp slt i32 %fva1810, 0
  %nz1812 = zext i1 %fn1805 to i64
  %zz1813 = zext i1 %fz1806 to i64
  %cz1814 = zext i1 %fc1807 to i64
  %vz1815 = zext i1 %fv1811 to i64
  %ns1816 = shl i64 %nz1812, 31
  %zs1817 = shl i64 %zz1813, 30
  %cs1818 = shl i64 %cz1814, 29
  %vs1819 = shl i64 %vz1815, 28
  %nzor1820 = or i64 %ns1816, %zs1817
  %cvor1821 = or i64 %cs1818, %vs1819
  %nzcv1822 = or i64 %nzor1820, %cvor1821
  %wp1823 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1822, ptr %wp1823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbef8 word 0x54007fa1
  %r1824.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1824 = load i64, ptr %r1824.p, align 8, !alias.scope !3, !noalias !4
  %fsh1826 = lshr i64 %r1824, 30
  %ftr1827 = trunc i64 %fsh1826 to i1
  %cond1825 = xor i1 %ftr1827, true
  br i1 %cond1825, label %L_8000dceec, label %L_8000dbefc
L_8000dbf0c_ft:
  ; @pc 0x8000dbf0c word 0x39065269
  %r1867.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1867 = load i64, ptr %r1867.p, align 8, !alias.scope !3, !noalias !4
  %t1868 = add i64 %r1867, 404
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %c1870 = trunc i64 %r1869 to i32
  %c1871 = trunc i32 %c1870 to i8
  %gmp1872 = inttoptr i64 %t1868 to ptr
  store i8 %c1871, ptr %gmp1872, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbf10 word 0x14000002
  br label %L_8000dbf18
L_8000dbf1c_ft:
  ; @pc 0x8000dbf1c word 0xf9401268
  %r1881.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1881 = load i64, ptr %r1881.p, align 8, !alias.scope !3, !noalias !4
  %t1882 = add i64 %r1881, 32
  %gmp1883 = inttoptr i64 %t1882 to ptr
  %gml1884 = load i64, ptr %gmp1883, align 1, !alias.scope !4, !noalias !3
  %wp1885 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1884, ptr %wp1885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf20 word 0xa90197e6
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %t1887 = add i64 %r1886, 24
  %t1888 = add i64 %t1887, 8
  %r1889.p = getelementptr inbounds i8, ptr %c, i64 48
  %r1889 = load i64, ptr %r1889.p, align 8, !alias.scope !3, !noalias !4
  %gmp1890 = inttoptr i64 %t1887 to ptr
  store i64 %r1889, ptr %gmp1890, align 1, !alias.scope !4, !noalias !3
  %r1891.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1891 = load i64, ptr %r1891.p, align 8, !alias.scope !3, !noalias !4
  %gmp1892 = inttoptr i64 %t1888 to ptr
  store i64 %r1891, ptr %gmp1892, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbf24 word 0xd10023a0
  %r1893.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1893 = load i64, ptr %r1893.p, align 8, !alias.scope !3, !noalias !4
  %t1894 = sub i64 %r1893, 8
  %wp1895 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1894, ptr %wp1895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf28 word 0xf9405d14
  %r1896.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1896 = load i64, ptr %r1896.p, align 8, !alias.scope !3, !noalias !4
  %t1897 = add i64 %r1896, 184
  %gmp1898 = inttoptr i64 %t1897 to ptr
  %gml1899 = load i64, ptr %gmp1898, align 1, !alias.scope !4, !noalias !3
  %wp1900 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1899, ptr %wp1900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf2c word 0xf81d83ba
  %r1901.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1901 = load i64, ptr %r1901.p, align 8, !alias.scope !3, !noalias !4
  %t1902 = add i64 %r1901, -40
  %r1903.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1903 = load i64, ptr %r1903.p, align 8, !alias.scope !3, !noalias !4
  %gmp1904 = inttoptr i64 %t1902 to ptr
  store i64 %r1903, ptr %gmp1904, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbf30 word 0xa902e3e4
  %r1905.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1905 = load i64, ptr %r1905.p, align 8, !alias.scope !3, !noalias !4
  %t1906 = add i64 %r1905, 40
  %t1907 = add i64 %t1906, 8
  %r1908.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1908 = load i64, ptr %r1908.p, align 8, !alias.scope !3, !noalias !4
  %gmp1909 = inttoptr i64 %t1906 to ptr
  store i64 %r1908, ptr %gmp1909, align 1, !alias.scope !4, !noalias !3
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %gmp1911 = inttoptr i64 %t1907 to ptr
  store i64 %r1910, ptr %gmp1911, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dbf34 word 0xb001c408
  %wp1912 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf38 word 0xf9450908
  %r1913.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1913 = load i64, ptr %r1913.p, align 8, !alias.scope !3, !noalias !4
  %t1914 = add i64 %r1913, 2576
  %gmp1915 = inttoptr i64 %t1914 to ptr
  %gml1916 = load i64, ptr %gmp1915, align 1, !alias.scope !4, !noalias !3
  %wp1917 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1916, ptr %wp1917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf3c word 0xf9400108
  %r1918.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1918 = load i64, ptr %r1918.p, align 8, !alias.scope !3, !noalias !4
  %gmp1919 = inttoptr i64 %r1918 to ptr
  %gml1920 = load i64, ptr %gmp1919, align 1, !alias.scope !4, !noalias !3
  %wp1921 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1920, ptr %wp1921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf40 word 0xd63f0100
  %r1922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1922 = load i64, ptr %r1922.p, align 8, !alias.scope !3, !noalias !4
  %fp1923 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1922, ptr %fp1923, align 8, !alias.scope !3, !noalias !4
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639300, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbf44 word 0xb001c408
  %wp1925 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp1925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf48 word 0xd10043a0
  %r1926.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1926 = load i64, ptr %r1926.p, align 8, !alias.scope !3, !noalias !4
  %t1927 = sub i64 %r1926, 16
  %wp1928 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1927, ptr %wp1928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf4c word 0xf9454508
  %r1929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1929 = load i64, ptr %r1929.p, align 8, !alias.scope !3, !noalias !4
  %t1930 = add i64 %r1929, 2696
  %gmp1931 = inttoptr i64 %t1930 to ptr
  %gml1932 = load i64, ptr %gmp1931, align 1, !alias.scope !4, !noalias !3
  %wp1933 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1932, ptr %wp1933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf50 word 0xf9400108
  %r1934.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1934 = load i64, ptr %r1934.p, align 8, !alias.scope !3, !noalias !4
  %gmp1935 = inttoptr i64 %r1934 to ptr
  %gml1936 = load i64, ptr %gmp1935, align 1, !alias.scope !4, !noalias !3
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1936, ptr %wp1937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf54 word 0xd63f0100
  %r1938.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1938 = load i64, ptr %r1938.p, align 8, !alias.scope !3, !noalias !4
  %fp1939 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1938, ptr %fp1939, align 8, !alias.scope !3, !noalias !4
  %wp1940 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360639320, ptr %wp1940, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dbf58 word 0xb9413668
  %r1941.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1941 = load i64, ptr %r1941.p, align 8, !alias.scope !3, !noalias !4
  %t1942 = add i64 %r1941, 308
  %gmp1943 = inttoptr i64 %t1942 to ptr
  %gml1944 = load i32, ptr %gmp1943, align 1, !alias.scope !4, !noalias !3
  %c1945 = zext i32 %gml1944 to i64
  %wp1946 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1945, ptr %wp1946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dbf5c word 0x35003108
  %r1947.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1947 = load i64, ptr %r1947.p, align 8, !alias.scope !3, !noalias !4
  %c1948 = trunc i64 %r1947 to i32
  %cmp1949 = icmp ne i32 %c1948, 0
  br i1 %cmp1949, label %L_8000dc57c, label %L_8000dbf60
L_8000dc288_ft:
  ; @pc 0x8000dc288 word 0x36201e0a
  %r2782.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2782 = load i64, ptr %r2782.p, align 8, !alias.scope !3, !noalias !4
  %t2783 = and i64 %r2782, 16
  %cmp2784 = icmp eq i64 %t2783, 0
  br i1 %cmp2784, label %L_8000dc648, label %L_8000dc28c_ft
L_8000dc28c_ft:
  ; @pc 0x8000dc28c word 0xaa0503f5
  %r2785.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2785 = load i64, ptr %r2785.p, align 8, !alias.scope !3, !noalias !4
  %t2786 = or i64 0, %r2785
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc290 word 0xaa0403f4
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %t2789 = or i64 0, %r2788
  %wp2790 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2789, ptr %wp2790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc294 word 0x5280002a
  %c2791 = zext i32 1 to i64
  %wp2792 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2791, ptr %wp2792, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc298
L_8000dc2d0_ft:
  ; @pc 0x8000dc2d0 word 0x79403309
  %r2849.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2849 = load i64, ptr %r2849.p, align 8, !alias.scope !3, !noalias !4
  %t2850 = add i64 %r2849, 24
  %gmp2851 = inttoptr i64 %t2850 to ptr
  %gml2852 = load i16, ptr %gmp2851, align 1, !alias.scope !4, !noalias !3
  %c2853 = zext i16 %gml2852 to i64
  %wp2854 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2853, ptr %wp2854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2d4 word 0x36300b49
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %t2856 = and i64 %r2855, 64
  %cmp2857 = icmp eq i64 %t2856, 0
  br i1 %cmp2857, label %L_8000dc43c, label %L_8000dc2d8_ft
L_8000dc2d8_ft:
  ; @pc 0x8000dc2d8 word 0x2a1f03ed
  %t2858 = or i32 0, 0
  %c2859 = zext i32 %t2858 to i64
  %wp2860 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2859, ptr %wp2860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc2dc word 0x377813e8
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %t2862 = and i64 %r2861, 32768
  %cmp2863 = icmp ne i64 %t2862, 0
  br i1 %cmp2863, label %L_8000dc558, label %L_8000dc2e0_ft
L_8000dc2e0_ft:
  ; @pc 0x8000dc2e0 word 0x140000df
  br label %L_8000dc65c
L_8000dc300_ft:
  ; @pc 0x8000dc300 word 0x3944c269
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %t2903 = add i64 %r2902, 304
  %gmp2904 = inttoptr i64 %t2903 to ptr
  %gml2905 = load i8, ptr %gmp2904, align 1, !alias.scope !4, !noalias !3
  %c2906 = zext i8 %gml2905 to i64
  %wp2907 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2906, ptr %wp2907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc304 word 0x34003fe9
  %r2908.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2908 = load i64, ptr %r2908.p, align 8, !alias.scope !3, !noalias !4
  %c2909 = trunc i64 %r2908 to i32
  %cmp2910 = icmp eq i32 %c2909, 0
  br i1 %cmp2910, label %L_8000dcb00, label %L_8000dc308_ft
L_8000dc308_ft:
  ; @pc 0x8000dc308 word 0x3944c669
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %t2912 = add i64 %r2911, 305
  %gmp2913 = inttoptr i64 %t2912 to ptr
  %gml2914 = load i8, ptr %gmp2913, align 1, !alias.scope !4, !noalias !3
  %c2915 = zext i8 %gml2914 to i64
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2915, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc30c word 0x35003fa9
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %c2918 = trunc i64 %r2917 to i32
  %cmp2919 = icmp ne i32 %c2918, 0
  br i1 %cmp2919, label %L_8000dcb00, label %L_8000dc310
L_8000dc334_ft:
  ; @pc 0x8000dc334 word 0xbd413e60
  %r2975.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2975 = load i64, ptr %r2975.p, align 8, !alias.scope !3, !noalias !4
  %t2976 = add i64 %r2975, 316
  %gmp2977 = inttoptr i64 %t2976 to ptr
  %gml2978 = load i32, ptr %gmp2977, align 1, !alias.scope !4, !noalias !3
  %c2979 = zext i32 %gml2978 to i128
  %wp2980 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2979, ptr %wp2980, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc338 word 0xbd410d61
  %r2981.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2981 = load i64, ptr %r2981.p, align 8, !alias.scope !3, !noalias !4
  %t2982 = add i64 %r2981, 268
  %gmp2983 = inttoptr i64 %t2982 to ptr
  %gml2984 = load i32, ptr %gmp2983, align 1, !alias.scope !4, !noalias !3
  %c2985 = zext i32 %gml2984 to i128
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2985, ptr %wp2986, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc33c word 0x1e212000
  %fcmp2987 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp2988 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2987, ptr %wp2988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc340 word 0x54000121
  %r2989.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2989 = load i64, ptr %r2989.p, align 8, !alias.scope !3, !noalias !4
  %fsh2991 = lshr i64 %r2989, 30
  %ftr2992 = trunc i64 %fsh2991 to i1
  %cond2990 = xor i1 %ftr2992, true
  br i1 %cond2990, label %L_8000dc364, label %L_8000dc344_ft
L_8000dc344_ft:
  ; @pc 0x8000dc344 word 0xbd414260
  %r2993.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2993 = load i64, ptr %r2993.p, align 8, !alias.scope !3, !noalias !4
  %t2994 = add i64 %r2993, 320
  %gmp2995 = inttoptr i64 %t2994 to ptr
  %gml2996 = load i32, ptr %gmp2995, align 1, !alias.scope !4, !noalias !3
  %c2997 = zext i32 %gml2996 to i128
  %wp2998 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2997, ptr %wp2998, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc348 word 0xbd411161
  %r2999.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2999 = load i64, ptr %r2999.p, align 8, !alias.scope !3, !noalias !4
  %t3000 = add i64 %r2999, 272
  %gmp3001 = inttoptr i64 %t3000 to ptr
  %gml3002 = load i32, ptr %gmp3001, align 1, !alias.scope !4, !noalias !3
  %c3003 = zext i32 %gml3002 to i128
  %wp3004 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3003, ptr %wp3004, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc34c word 0x1e212000
  %fcmp3005 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp3006 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3005, ptr %wp3006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc350 word 0x540000a1
  %r3007.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3007 = load i64, ptr %r3007.p, align 8, !alias.scope !3, !noalias !4
  %fsh3009 = lshr i64 %r3007, 30
  %ftr3010 = trunc i64 %fsh3009 to i1
  %cond3008 = xor i1 %ftr3010, true
  br i1 %cond3008, label %L_8000dc364, label %L_8000dc354_ft
L_8000dc354_ft:
  ; @pc 0x8000dc354 word 0xbd414660
  %r3011.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3011 = load i64, ptr %r3011.p, align 8, !alias.scope !3, !noalias !4
  %t3012 = add i64 %r3011, 324
  %gmp3013 = inttoptr i64 %t3012 to ptr
  %gml3014 = load i32, ptr %gmp3013, align 1, !alias.scope !4, !noalias !3
  %c3015 = zext i32 %gml3014 to i128
  %wp3016 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3015, ptr %wp3016, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc358 word 0xbd411561
  %r3017.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3017 = load i64, ptr %r3017.p, align 8, !alias.scope !3, !noalias !4
  %t3018 = add i64 %r3017, 276
  %gmp3019 = inttoptr i64 %t3018 to ptr
  %gml3020 = load i32, ptr %gmp3019, align 1, !alias.scope !4, !noalias !3
  %c3021 = zext i32 %gml3020 to i128
  %wp3022 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3021, ptr %wp3022, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc35c word 0x1e212000
  %fcmp3023 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp3024 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3023, ptr %wp3024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc360 word 0x54006c00
  %r3025.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3025 = load i64, ptr %r3025.p, align 8, !alias.scope !3, !noalias !4
  %fsh3027 = lshr i64 %r3025, 30
  %cond3026 = trunc i64 %fsh3027 to i1
  br i1 %cond3026, label %L_8000dd0e0, label %L_8000dc364
L_8000dc37c_ft:
  ; @pc 0x8000dc37c word 0xaa1f03ee
  %t3053 = or i64 0, 0
  %wp3054 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3053, ptr %wp3054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc380 word 0x9105626f
  %r3055.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3055 = load i64, ptr %r3055.p, align 8, !alias.scope !3, !noalias !4
  %t3056 = add i64 %r3055, 344
  %wp3057 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3056, ptr %wp3057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc384 word 0x9104b570
  %r3058.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3058 = load i64, ptr %r3058.p, align 8, !alias.scope !3, !noalias !4
  %t3059 = add i64 %r3058, 301
  %wp3060 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3059, ptr %wp3060, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc388
L_8000dc3a4_ft:
  ; @pc 0x8000dc3a4 word 0x39400a42
  %r3116.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3116 = load i64, ptr %r3116.p, align 8, !alias.scope !3, !noalias !4
  %t3117 = add i64 %r3116, 2
  %gmp3118 = inttoptr i64 %t3117 to ptr
  %gml3119 = load i8, ptr %gmp3118, align 1, !alias.scope !4, !noalias !3
  %c3120 = zext i8 %gml3119 to i64
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3a8 word 0x6b02003f
  %r3122.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3122 = load i64, ptr %r3122.p, align 8, !alias.scope !3, !noalias !4
  %c3123 = trunc i64 %r3122 to i32
  %r3124.p = getelementptr inbounds i8, ptr %c, i64 16
  %r3124 = load i64, ptr %r3124.p, align 8, !alias.scope !3, !noalias !4
  %c3125 = trunc i64 %r3124 to i32
  %t3126 = sub i32 %c3123, %c3125
  %fn3127 = icmp slt i32 %t3126, 0
  %fz3128 = icmp eq i32 %t3126, 0
  %fc3129 = icmp uge i32 %c3123, %c3125
  %fx13130 = xor i32 %c3123, %c3125
  %fx23131 = xor i32 %c3123, %t3126
  %fva3132 = and i32 %fx13130, %fx23131
  %fv3133 = icmp slt i32 %fva3132, 0
  %nz3134 = zext i1 %fn3127 to i64
  %zz3135 = zext i1 %fz3128 to i64
  %cz3136 = zext i1 %fc3129 to i64
  %vz3137 = zext i1 %fv3133 to i64
  %ns3138 = shl i64 %nz3134, 31
  %zs3139 = shl i64 %zz3135, 30
  %cs3140 = shl i64 %cz3136, 29
  %vs3141 = shl i64 %vz3137, 28
  %nzor3142 = or i64 %ns3138, %zs3139
  %cvor3143 = or i64 %cs3140, %vs3141
  %nzcv3144 = or i64 %nzor3142, %cvor3143
  %wp3145 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3144, ptr %wp3145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3ac word 0x54003820
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %fsh3148 = lshr i64 %r3146, 30
  %cond3147 = trunc i64 %fsh3148 to i1
  br i1 %cond3147, label %L_8000dcab0, label %L_8000dc3b0
L_8000dc3e0_ft:
  ; @pc 0x8000dc3e0 word 0x17fffeae
  br label %L_8000dbe98
L_8000dc3f0_ft:
  ; @pc 0x8000dc3f0 word 0x52800069
  %c3240 = zext i32 3 to i64
  %wp3241 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3240, ptr %wp3241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3f4 word 0x9100232d
  %r3242.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3242 = load i64, ptr %r3242.p, align 8, !alias.scope !3, !noalias !4
  %t3243 = add i64 %r3242, 8
  %wp3244 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3243, ptr %wp3244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc3f8 word 0xf9000329
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %gmp3247 = inttoptr i64 %r3245 to ptr
  store i64 %r3246, ptr %gmp3247, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc3fc word 0xf9002ad9
  %r3248.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3248 = load i64, ptr %r3248.p, align 8, !alias.scope !3, !noalias !4
  %t3249 = add i64 %r3248, 80
  %r3250.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3250 = load i64, ptr %r3250.p, align 8, !alias.scope !3, !noalias !4
  %gmp3251 = inttoptr i64 %t3249 to ptr
  store i64 %r3250, ptr %gmp3251, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dc400
L_8000dc454_ft:
  ; @pc 0x8000dc454 word 0xb9008269
  %r3351.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3351 = load i64, ptr %r3351.p, align 8, !alias.scope !3, !noalias !4
  %t3352 = add i64 %r3351, 128
  %r3353.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3353 = load i64, ptr %r3353.p, align 8, !alias.scope !3, !noalias !4
  %c3354 = trunc i64 %r3353 to i32
  %gmp3355 = inttoptr i64 %t3352 to ptr
  store i32 %c3354, ptr %gmp3355, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dc458
L_8000dc460_ft:
  ; @pc 0x8000dc460 word 0x3212010c
  %r3365.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3365 = load i64, ptr %r3365.p, align 8, !alias.scope !3, !noalias !4
  %c3366 = trunc i64 %r3365 to i32
  %t3367 = or i32 %c3366, 16384
  %c3368 = zext i32 %t3367 to i64
  %wp3369 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3368, ptr %wp3369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc464 word 0xf001ceeb
  %wp3370 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34421321728, ptr %wp3370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc468 word 0x912ae16b
  %r3371.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3371 = load i64, ptr %r3371.p, align 8, !alias.scope !3, !noalias !4
  %t3372 = add i64 %r3371, 2744
  %wp3373 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3372, ptr %wp3373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc46c word 0xf001cee8
  %wp3374 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421321728, ptr %wp3374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc470 word 0x912ac108
  %r3375.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3375 = load i64, ptr %r3375.p, align 8, !alias.scope !3, !noalias !4
  %t3376 = add i64 %r3375, 2736
  %wp3377 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3376, ptr %wp3377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc474 word 0x7900826c
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %t3379 = add i64 %r3378, 64
  %r3380.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3380 = load i64, ptr %r3380.p, align 8, !alias.scope !3, !noalias !4
  %c3381 = trunc i64 %r3380 to i32
  %c3382 = trunc i32 %c3381 to i16
  %gmp3383 = inttoptr i64 %t3379 to ptr
  store i16 %c3382, ptr %gmp3383, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc478 word 0xf001ceec
  %wp3384 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34421321728, ptr %wp3384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc47c word 0x912ad18c
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %t3386 = add i64 %r3385, 2740
  %wp3387 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3386, ptr %wp3387, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dc480
L_8000dc488_ft:
  ; @pc 0x8000dc488 word 0xb9400117
  %r3415.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3415 = load i64, ptr %r3415.p, align 8, !alias.scope !3, !noalias !4
  %gmp3416 = inttoptr i64 %r3415 to ptr
  %gml3417 = load i32, ptr %gmp3416, align 1, !alias.scope !4, !noalias !3
  %c3418 = zext i32 %gml3417 to i64
  %wp3419 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3418, ptr %wp3419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc48c word 0xf9001bf8
  %r3420.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3420 = load i64, ptr %r3420.p, align 8, !alias.scope !3, !noalias !4
  %t3421 = add i64 %r3420, 48
  %r3422.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3422 = load i64, ptr %r3422.p, align 8, !alias.scope !3, !noalias !4
  %gmp3423 = inttoptr i64 %t3421 to ptr
  store i64 %r3422, ptr %gmp3423, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc490 word 0xb9405a68
  %r3424.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3424 = load i64, ptr %r3424.p, align 8, !alias.scope !3, !noalias !4
  %t3425 = add i64 %r3424, 88
  %gmp3426 = inttoptr i64 %t3425 to ptr
  %gml3427 = load i32, ptr %gmp3426, align 1, !alias.scope !4, !noalias !3
  %c3428 = zext i32 %gml3427 to i64
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3428, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc494 word 0x6b0802ff
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %c3431 = trunc i64 %r3430 to i32
  %r3432.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3432 = load i64, ptr %r3432.p, align 8, !alias.scope !3, !noalias !4
  %c3433 = trunc i64 %r3432 to i32
  %t3434 = sub i32 %c3431, %c3433
  %fn3435 = icmp slt i32 %t3434, 0
  %fz3436 = icmp eq i32 %t3434, 0
  %fc3437 = icmp uge i32 %c3431, %c3433
  %fx13438 = xor i32 %c3431, %c3433
  %fx23439 = xor i32 %c3431, %t3434
  %fva3440 = and i32 %fx13438, %fx23439
  %fv3441 = icmp slt i32 %fva3440, 0
  %nz3442 = zext i1 %fn3435 to i64
  %zz3443 = zext i1 %fz3436 to i64
  %cz3444 = zext i1 %fc3437 to i64
  %vz3445 = zext i1 %fv3441 to i64
  %ns3446 = shl i64 %nz3442, 31
  %zs3447 = shl i64 %zz3443, 30
  %cs3448 = shl i64 %cz3444, 29
  %vs3449 = shl i64 %vz3445, 28
  %nzor3450 = or i64 %ns3446, %zs3447
  %cvor3451 = or i64 %cs3448, %vs3449
  %nzcv3452 = or i64 %nzor3450, %cvor3451
  %wp3453 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3452, ptr %wp3453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc498 word 0xb940018a
  %r3454.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3454 = load i64, ptr %r3454.p, align 8, !alias.scope !3, !noalias !4
  %gmp3455 = inttoptr i64 %r3454 to ptr
  %gml3456 = load i32, ptr %gmp3455, align 1, !alias.scope !4, !noalias !3
  %c3457 = zext i32 %gml3456 to i64
  %wp3458 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3457, ptr %wp3458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc49c word 0xb940016b
  %r3459.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3459 = load i64, ptr %r3459.p, align 8, !alias.scope !3, !noalias !4
  %gmp3460 = inttoptr i64 %r3459 to ptr
  %gml3461 = load i32, ptr %gmp3460, align 1, !alias.scope !4, !noalias !3
  %c3462 = zext i32 %gml3461 to i64
  %wp3463 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3462, ptr %wp3463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4a0 word 0x54000320
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %fsh3466 = lshr i64 %r3464, 30
  %cond3465 = trunc i64 %fsh3466 to i1
  br i1 %cond3465, label %L_8000dc504, label %L_8000dc4a4_ft
L_8000dc4a4_ft:
  ; @pc 0x8000dc4a4 word 0xa9422275
  %r3467.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3467 = load i64, ptr %r3467.p, align 8, !alias.scope !3, !noalias !4
  %t3468 = add i64 %r3467, 32
  %t3469 = add i64 %t3468, 8
  %gmp3470 = inttoptr i64 %t3468 to ptr
  %gml3471 = load i64, ptr %gmp3470, align 1, !alias.scope !4, !noalias !3
  %gmp3472 = inttoptr i64 %t3469 to ptr
  %gml3473 = load i64, ptr %gmp3472, align 1, !alias.scope !4, !noalias !3
  %wp3474 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml3471, ptr %wp3474, align 8, !alias.scope !3, !noalias !4
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3473, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4a8 word 0xb9005a77
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %t3477 = add i64 %r3476, 88
  %r3478.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3478 = load i64, ptr %r3478.p, align 8, !alias.scope !3, !noalias !4
  %c3479 = trunc i64 %r3478 to i32
  %gmp3480 = inttoptr i64 %t3477 to ptr
  store i32 %c3479, ptr %gmp3480, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc4ac word 0xb001c414
  %wp3481 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 34419888128, ptr %wp3481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4b0 word 0xf9400109
  %r3482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3482 = load i64, ptr %r3482.p, align 8, !alias.scope !3, !noalias !4
  %gmp3483 = inttoptr i64 %r3482 to ptr
  %gml3484 = load i64, ptr %gmp3483, align 1, !alias.scope !4, !noalias !3
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4b4 word 0x39412916
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %t3487 = add i64 %r3486, 74
  %gmp3488 = inttoptr i64 %t3487 to ptr
  %gml3489 = load i8, ptr %gmp3488, align 1, !alias.scope !4, !noalias !3
  %c3490 = zext i8 %gml3489 to i64
  %wp3491 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c3490, ptr %wp3491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4b8 word 0xf940411c
  %r3492.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3492 = load i64, ptr %r3492.p, align 8, !alias.scope !3, !noalias !4
  %t3493 = add i64 %r3492, 128
  %gmp3494 = inttoptr i64 %t3493 to ptr
  %gml3495 = load i64, ptr %gmp3494, align 1, !alias.scope !4, !noalias !3
  %wp3496 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml3495, ptr %wp3496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4bc word 0x7940911b
  %r3497.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3497 = load i64, ptr %r3497.p, align 8, !alias.scope !3, !noalias !4
  %t3498 = add i64 %r3497, 72
  %gmp3499 = inttoptr i64 %t3498 to ptr
  %gml3500 = load i16, ptr %gmp3499, align 1, !alias.scope !4, !noalias !3
  %c3501 = zext i16 %gml3500 to i64
  %wp3502 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3501, ptr %wp3502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4c0 word 0xb9404118
  %r3503.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3503 = load i64, ptr %r3503.p, align 8, !alias.scope !3, !noalias !4
  %t3504 = add i64 %r3503, 64
  %gmp3505 = inttoptr i64 %t3504 to ptr
  %gml3506 = load i32, ptr %gmp3505, align 1, !alias.scope !4, !noalias !3
  %c3507 = zext i32 %gml3506 to i64
  %wp3508 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3507, ptr %wp3508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4c4 word 0xf9401529
  %r3509.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3509 = load i64, ptr %r3509.p, align 8, !alias.scope !3, !noalias !4
  %t3510 = add i64 %r3509, 40
  %gmp3511 = inttoptr i64 %t3510 to ptr
  %gml3512 = load i64, ptr %gmp3511, align 1, !alias.scope !4, !noalias !3
  %wp3513 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3512, ptr %wp3513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4c8 word 0xf9478694
  %r3514.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3514 = load i64, ptr %r3514.p, align 8, !alias.scope !3, !noalias !4
  %t3515 = add i64 %r3514, 3848
  %gmp3516 = inttoptr i64 %t3515 to ptr
  %gml3517 = load i64, ptr %gmp3516, align 1, !alias.scope !4, !noalias !3
  %wp3518 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3517, ptr %wp3518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4cc word 0xeb14013f
  %r3519.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3519 = load i64, ptr %r3519.p, align 8, !alias.scope !3, !noalias !4
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3520 = load i64, ptr %r3520.p, align 8, !alias.scope !3, !noalias !4
  %t3521 = sub i64 %r3519, %r3520
  %fn3522 = icmp slt i64 %t3521, 0
  %fz3523 = icmp eq i64 %t3521, 0
  %fc3524 = icmp uge i64 %r3519, %r3520
  %fx13525 = xor i64 %r3519, %r3520
  %fx23526 = xor i64 %r3519, %t3521
  %fva3527 = and i64 %fx13525, %fx23526
  %fv3528 = icmp slt i64 %fva3527, 0
  %nz3529 = zext i1 %fn3522 to i64
  %zz3530 = zext i1 %fz3523 to i64
  %cz3531 = zext i1 %fc3524 to i64
  %vz3532 = zext i1 %fv3528 to i64
  %ns3533 = shl i64 %nz3529, 31
  %zs3534 = shl i64 %zz3530, 30
  %cs3535 = shl i64 %cz3531, 29
  %vs3536 = shl i64 %vz3532, 28
  %nzor3537 = or i64 %ns3533, %zs3534
  %cvor3538 = or i64 %cs3535, %vs3536
  %nzcv3539 = or i64 %nzor3537, %cvor3538
  %wp3540 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3539, ptr %wp3540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4d0 word 0x54006200
  %r3541.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3541 = load i64, ptr %r3541.p, align 8, !alias.scope !3, !noalias !4
  %fsh3543 = lshr i64 %r3541, 30
  %cond3542 = trunc i64 %fsh3543 to i1
  br i1 %cond3542, label %L_8000dd110, label %L_8000dc4d4_ft
L_8000dc4d4_ft:
  ; @pc 0x8000dc4d4 word 0xb001c419
  %wp3544 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 34419888128, ptr %wp3544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4d8 word 0xf946d339
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %t3546 = add i64 %r3545, 3488
  %gmp3547 = inttoptr i64 %t3546 to ptr
  %gml3548 = load i64, ptr %gmp3547, align 1, !alias.scope !4, !noalias !3
  %wp3549 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml3548, ptr %wp3549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4dc word 0xeb19013f
  %r3550.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3550 = load i64, ptr %r3550.p, align 8, !alias.scope !3, !noalias !4
  %r3551.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3551 = load i64, ptr %r3551.p, align 8, !alias.scope !3, !noalias !4
  %t3552 = sub i64 %r3550, %r3551
  %fn3553 = icmp slt i64 %t3552, 0
  %fz3554 = icmp eq i64 %t3552, 0
  %fc3555 = icmp uge i64 %r3550, %r3551
  %fx13556 = xor i64 %r3550, %r3551
  %fx23557 = xor i64 %r3550, %t3552
  %fva3558 = and i64 %fx13556, %fx23557
  %fv3559 = icmp slt i64 %fva3558, 0
  %nz3560 = zext i1 %fn3553 to i64
  %zz3561 = zext i1 %fz3554 to i64
  %cz3562 = zext i1 %fc3555 to i64
  %vz3563 = zext i1 %fv3559 to i64
  %ns3564 = shl i64 %nz3560, 31
  %zs3565 = shl i64 %zz3561, 30
  %cs3566 = shl i64 %cz3562, 29
  %vs3567 = shl i64 %vz3563, 28
  %nzor3568 = or i64 %ns3564, %zs3565
  %cvor3569 = or i64 %cs3566, %vs3567
  %nzcv3570 = or i64 %nzor3568, %cvor3569
  %wp3571 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3570, ptr %wp3571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4e0 word 0x54006ce1
  %r3572.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3572 = load i64, ptr %r3572.p, align 8, !alias.scope !3, !noalias !4
  %fsh3574 = lshr i64 %r3572, 30
  %ftr3575 = trunc i64 %fsh3574 to i1
  %cond3573 = xor i1 %ftr3575, true
  br i1 %cond3573, label %L_8000dd27c, label %L_8000dc4e4_ft
L_8000dc4e4_ft:
  ; @pc 0x8000dc4e4 word 0xb9408909
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3576, 136
  %gmp3578 = inttoptr i64 %t3577 to ptr
  %gml3579 = load i32, ptr %gmp3578, align 1, !alias.scope !4, !noalias !3
  %c3580 = zext i32 %gml3579 to i64
  %wp3581 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3580, ptr %wp3581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4e8 word 0xeb14033f
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %r3583.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3583 = load i64, ptr %r3583.p, align 8, !alias.scope !3, !noalias !4
  %t3584 = sub i64 %r3582, %r3583
  %fn3585 = icmp slt i64 %t3584, 0
  %fz3586 = icmp eq i64 %t3584, 0
  %fc3587 = icmp uge i64 %r3582, %r3583
  %fx13588 = xor i64 %r3582, %r3583
  %fx23589 = xor i64 %r3582, %t3584
  %fva3590 = and i64 %fx13588, %fx23589
  %fv3591 = icmp slt i64 %fva3590, 0
  %nz3592 = zext i1 %fn3585 to i64
  %zz3593 = zext i1 %fz3586 to i64
  %cz3594 = zext i1 %fc3587 to i64
  %vz3595 = zext i1 %fv3591 to i64
  %ns3596 = shl i64 %nz3592, 31
  %zs3597 = shl i64 %zz3593, 30
  %cs3598 = shl i64 %cz3594, 29
  %vs3599 = shl i64 %vz3595, 28
  %nzor3600 = or i64 %ns3596, %zs3597
  %cvor3601 = or i64 %cs3598, %vs3599
  %nzcv3602 = or i64 %nzor3600, %cvor3601
  %wp3603 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3602, ptr %wp3603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4ec word 0x0b090309
  %r3604.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3604 = load i64, ptr %r3604.p, align 8, !alias.scope !3, !noalias !4
  %c3605 = trunc i64 %r3604 to i32
  %r3606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3606 = load i64, ptr %r3606.p, align 8, !alias.scope !3, !noalias !4
  %c3607 = trunc i64 %r3606 to i32
  %t3608 = add i32 %c3605, %c3607
  %c3609 = zext i32 %t3608 to i64
  %wp3610 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3609, ptr %wp3610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4f0 word 0x51000538
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %c3612 = trunc i64 %r3611 to i32
  %t3613 = sub i32 %c3612, 1
  %c3614 = zext i32 %t3613 to i64
  %wp3615 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3614, ptr %wp3615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc4f4 word 0x54006ee1
  %r3616.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3616 = load i64, ptr %r3616.p, align 8, !alias.scope !3, !noalias !4
  %fsh3618 = lshr i64 %r3616, 30
  %ftr3619 = trunc i64 %fsh3618 to i1
  %cond3617 = xor i1 %ftr3619, true
  br i1 %cond3617, label %L_8000dd2d0, label %L_8000dc4f8
L_8000dc510_ft:
  ; @pc 0x8000dc510 word 0xf9400a68
  %r3681.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3681 = load i64, ptr %r3681.p, align 8, !alias.scope !3, !noalias !4
  %t3682 = add i64 %r3681, 16
  %gmp3683 = inttoptr i64 %t3682 to ptr
  %gml3684 = load i64, ptr %gmp3683, align 1, !alias.scope !4, !noalias !3
  %wp3685 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3684, ptr %wp3685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc514 word 0xb9005e6a
  %r3686.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3686 = load i64, ptr %r3686.p, align 8, !alias.scope !3, !noalias !4
  %t3687 = add i64 %r3686, 92
  %r3688.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3688 = load i64, ptr %r3688.p, align 8, !alias.scope !3, !noalias !4
  %c3689 = trunc i64 %r3688 to i32
  %gmp3690 = inttoptr i64 %t3687 to ptr
  store i32 %c3689, ptr %gmp3690, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc518 word 0xf942c508
  %r3691.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3691 = load i64, ptr %r3691.p, align 8, !alias.scope !3, !noalias !4
  %t3692 = add i64 %r3691, 1416
  %gmp3693 = inttoptr i64 %t3692 to ptr
  %gml3694 = load i64, ptr %gmp3693, align 1, !alias.scope !4, !noalias !3
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3694, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc51c word 0xb40000a8
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %cmp3697 = icmp eq i64 %r3696, 0
  br i1 %cmp3697, label %L_8000dc530, label %L_8000dc520_ft
L_8000dc520_ft:
  ; @pc 0x8000dc520 word 0xf9409109
  %r3698.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3698 = load i64, ptr %r3698.p, align 8, !alias.scope !3, !noalias !4
  %t3699 = add i64 %r3698, 288
  %gmp3700 = inttoptr i64 %t3699 to ptr
  %gml3701 = load i64, ptr %gmp3700, align 1, !alias.scope !4, !noalias !3
  %wp3702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3701, ptr %wp3702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc524 word 0xb4000069
  %r3703.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3703 = load i64, ptr %r3703.p, align 8, !alias.scope !3, !noalias !4
  %cmp3704 = icmp eq i64 %r3703, 0
  br i1 %cmp3704, label %L_8000dc530, label %L_8000dc528_ft
L_8000dc528_ft:
  ; @pc 0x8000dc528 word 0xf9403134
  %r3705.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3705 = load i64, ptr %r3705.p, align 8, !alias.scope !3, !noalias !4
  %t3706 = add i64 %r3705, 96
  %gmp3707 = inttoptr i64 %t3706 to ptr
  %gml3708 = load i64, ptr %gmp3707, align 1, !alias.scope !4, !noalias !3
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml3708, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc52c word 0xb5000af4
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %cmp3711 = icmp ne i64 %r3710, 0
  br i1 %cmp3711, label %L_8000dc688, label %L_8000dc530
L_8000dc540_ft:
  ; @pc 0x8000dc540 word 0x52801fe8
  %c3750 = zext i32 255 to i64
  %wp3751 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3750, ptr %wp3751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc544 word 0xb900626b
  %r3752.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3752 = load i64, ptr %r3752.p, align 8, !alias.scope !3, !noalias !4
  %t3753 = add i64 %r3752, 96
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %c3755 = trunc i64 %r3754 to i32
  %gmp3756 = inttoptr i64 %t3753 to ptr
  store i32 %c3755, ptr %gmp3756, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc548 word 0x39010a68
  %r3757.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3757 = load i64, ptr %r3757.p, align 8, !alias.scope !3, !noalias !4
  %t3758 = add i64 %r3757, 66
  %r3759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3759 = load i64, ptr %r3759.p, align 8, !alias.scope !3, !noalias !4
  %c3760 = trunc i64 %r3759 to i32
  %c3761 = trunc i32 %c3760 to i8
  %gmp3762 = inttoptr i64 %t3758 to ptr
  store i8 %c3761, ptr %gmp3762, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dc54c
L_8000dc5a8_unreach:
  ; @pc 0x8000dc5a8 word 0xd503201f
  ; @pc 0x8000dc5ac word 0xd503201f
  br label %L_8000dc5b0
L_8000dc5cc_ft:
  ; @pc 0x8000dc5cc word 0x9001c408
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5d0 word 0xd10043a0
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %t3911 = sub i64 %r3910, 16
  %wp3912 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3911, ptr %wp3912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5d4 word 0xf9454908
  %r3913.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3913 = load i64, ptr %r3913.p, align 8, !alias.scope !3, !noalias !4
  %t3914 = add i64 %r3913, 2704
  %gmp3915 = inttoptr i64 %t3914 to ptr
  %gml3916 = load i64, ptr %gmp3915, align 1, !alias.scope !4, !noalias !3
  %wp3917 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3916, ptr %wp3917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5d8 word 0x2a1603e1
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %c3919 = trunc i64 %r3918 to i32
  %t3920 = or i32 0, %c3919
  %c3921 = zext i32 %t3920 to i64
  %wp3922 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3921, ptr %wp3922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5dc word 0x52800022
  %c3923 = zext i32 1 to i64
  %wp3924 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3923, ptr %wp3924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5e0 word 0xf9400108
  %r3925.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3925 = load i64, ptr %r3925.p, align 8, !alias.scope !3, !noalias !4
  %gmp3926 = inttoptr i64 %r3925 to ptr
  %gml3927 = load i64, ptr %gmp3926, align 1, !alias.scope !4, !noalias !3
  %wp3928 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3927, ptr %wp3928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5e4 word 0xd63f0100
  %r3929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3929 = load i64, ptr %r3929.p, align 8, !alias.scope !3, !noalias !4
  %fp3930 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3929, ptr %fp3930, align 8, !alias.scope !3, !noalias !4
  %wp3931 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641000, ptr %wp3931, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc5e8 word 0x9001c408
  %wp3932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp3932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5ec word 0xd10023a0
  %r3933.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3933 = load i64, ptr %r3933.p, align 8, !alias.scope !3, !noalias !4
  %t3934 = sub i64 %r3933, 8
  %wp3935 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3934, ptr %wp3935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5f0 word 0xf9450d08
  %r3936.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3936 = load i64, ptr %r3936.p, align 8, !alias.scope !3, !noalias !4
  %t3937 = add i64 %r3936, 2584
  %gmp3938 = inttoptr i64 %t3937 to ptr
  %gml3939 = load i64, ptr %gmp3938, align 1, !alias.scope !4, !noalias !3
  %wp3940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3939, ptr %wp3940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5f4 word 0x2a1603e1
  %r3941.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3941 = load i64, ptr %r3941.p, align 8, !alias.scope !3, !noalias !4
  %c3942 = trunc i64 %r3941 to i32
  %t3943 = or i32 0, %c3942
  %c3944 = zext i32 %t3943 to i64
  %wp3945 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3944, ptr %wp3945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5f8 word 0xf9400108
  %r3946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3946 = load i64, ptr %r3946.p, align 8, !alias.scope !3, !noalias !4
  %gmp3947 = inttoptr i64 %r3946 to ptr
  %gml3948 = load i64, ptr %gmp3947, align 1, !alias.scope !4, !noalias !3
  %wp3949 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3948, ptr %wp3949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc5fc word 0xd63f0100
  %r3950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3950 = load i64, ptr %r3950.p, align 8, !alias.scope !3, !noalias !4
  %fp3951 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3950, ptr %fp3951, align 8, !alias.scope !3, !noalias !4
  %wp3952 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641024, ptr %wp3952, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc600 word 0x9b357356
  %r3953.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3953 = load i64, ptr %r3953.p, align 8, !alias.scope !3, !noalias !4
  %c3954 = trunc i64 %r3953 to i32
  %c3955 = sext i32 %c3954 to i64
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %c3957 = trunc i64 %r3956 to i32
  %c3958 = sext i32 %c3957 to i64
  %t3959 = mul i64 %c3955, %c3958
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %t3961 = add i64 %r3960, %t3959
  %wp3962 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t3961, ptr %wp3962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc604 word 0xf9400368
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %gmp3964 = inttoptr i64 %r3963 to ptr
  %gml3965 = load i64, ptr %gmp3964, align 1, !alias.scope !4, !noalias !3
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3965, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc608 word 0xd10023a0
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 232
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %t3968 = sub i64 %r3967, 8
  %wp3969 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3968, ptr %wp3969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc60c word 0x394002c1
  %r3970.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3970 = load i64, ptr %r3970.p, align 8, !alias.scope !3, !noalias !4
  %gmp3971 = inttoptr i64 %r3970 to ptr
  %gml3972 = load i8, ptr %gmp3971, align 1, !alias.scope !4, !noalias !3
  %c3973 = zext i8 %gml3972 to i64
  %wp3974 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3973, ptr %wp3974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc610 word 0x39400ac2
  %r3975.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3975 = load i64, ptr %r3975.p, align 8, !alias.scope !3, !noalias !4
  %t3976 = add i64 %r3975, 2
  %gmp3977 = inttoptr i64 %t3976 to ptr
  %gml3978 = load i8, ptr %gmp3977, align 1, !alias.scope !4, !noalias !3
  %c3979 = zext i8 %gml3978 to i64
  %wp3980 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3979, ptr %wp3980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc614 word 0x394006c3
  %r3981.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3981 = load i64, ptr %r3981.p, align 8, !alias.scope !3, !noalias !4
  %t3982 = add i64 %r3981, 1
  %gmp3983 = inttoptr i64 %t3982 to ptr
  %gml3984 = load i8, ptr %gmp3983, align 1, !alias.scope !4, !noalias !3
  %c3985 = zext i8 %gml3984 to i64
  %wp3986 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c3985, ptr %wp3986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc618 word 0x39400ec4
  %r3987.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3987 = load i64, ptr %r3987.p, align 8, !alias.scope !3, !noalias !4
  %t3988 = add i64 %r3987, 3
  %gmp3989 = inttoptr i64 %t3988 to ptr
  %gml3990 = load i8, ptr %gmp3989, align 1, !alias.scope !4, !noalias !3
  %c3991 = zext i8 %gml3990 to i64
  %wp3992 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3991, ptr %wp3992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc61c word 0xd63f0100
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %fp3994 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3993, ptr %fp3994, align 8, !alias.scope !3, !noalias !4
  %wp3995 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641056, ptr %wp3995, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc620 word 0x394012c1
  %r3996.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3996 = load i64, ptr %r3996.p, align 8, !alias.scope !3, !noalias !4
  %t3997 = add i64 %r3996, 4
  %gmp3998 = inttoptr i64 %t3997 to ptr
  %gml3999 = load i8, ptr %gmp3998, align 1, !alias.scope !4, !noalias !3
  %c4000 = zext i8 %gml3999 to i64
  %wp4001 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c4000, ptr %wp4001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc624 word 0xd10023a0
  %r4002.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4002 = load i64, ptr %r4002.p, align 8, !alias.scope !3, !noalias !4
  %t4003 = sub i64 %r4002, 8
  %wp4004 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4003, ptr %wp4004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc628 word 0x394016c2
  %r4005.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4005 = load i64, ptr %r4005.p, align 8, !alias.scope !3, !noalias !4
  %t4006 = add i64 %r4005, 5
  %gmp4007 = inttoptr i64 %t4006 to ptr
  %gml4008 = load i8, ptr %gmp4007, align 1, !alias.scope !4, !noalias !3
  %c4009 = zext i8 %gml4008 to i64
  %wp4010 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4009, ptr %wp4010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc62c word 0xf9400308
  %r4011.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4011 = load i64, ptr %r4011.p, align 8, !alias.scope !3, !noalias !4
  %gmp4012 = inttoptr i64 %r4011 to ptr
  %gml4013 = load i64, ptr %gmp4012, align 1, !alias.scope !4, !noalias !3
  %wp4014 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4013, ptr %wp4014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc630 word 0xd63f0100
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %fp4016 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4015, ptr %fp4016, align 8, !alias.scope !3, !noalias !4
  %wp4017 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641076, ptr %wp4017, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc634 word 0xf9400328
  %r4018.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4018 = load i64, ptr %r4018.p, align 8, !alias.scope !3, !noalias !4
  %gmp4019 = inttoptr i64 %r4018 to ptr
  %gml4020 = load i64, ptr %gmp4019, align 1, !alias.scope !4, !noalias !3
  %wp4021 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4020, ptr %wp4021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc638 word 0xd10023a1
  %r4022.p = getelementptr inbounds i8, ptr %c, i64 232
  %r4022 = load i64, ptr %r4022.p, align 8, !alias.scope !3, !noalias !4
  %t4023 = sub i64 %r4022, 8
  %wp4024 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4023, ptr %wp4024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc63c word 0xaa1403e0
  %r4025.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4025 = load i64, ptr %r4025.p, align 8, !alias.scope !3, !noalias !4
  %t4026 = or i64 0, %r4025
  %wp4027 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4026, ptr %wp4027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc640 word 0xd63f0100
  %r4028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4028 = load i64, ptr %r4028.p, align 8, !alias.scope !3, !noalias !4
  %fp4029 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4028, ptr %fp4029, align 8, !alias.scope !3, !noalias !4
  %wp4030 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360641092, ptr %wp4030, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dc644 word 0x17ffffdb
  br label %L_8000dc5b0
L_8000dc64c_ft:
  ; @pc 0x8000dc64c word 0xaa0503f5
  %r4034.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4034 = load i64, ptr %r4034.p, align 8, !alias.scope !3, !noalias !4
  %t4035 = or i64 0, %r4034
  %wp4036 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t4035, ptr %wp4036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc650 word 0xaa0403f4
  %r4037.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4037 = load i64, ptr %r4037.p, align 8, !alias.scope !3, !noalias !4
  %t4038 = or i64 0, %r4037
  %wp4039 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t4038, ptr %wp4039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc654 word 0x5280004a
  %c4040 = zext i32 2 to i64
  %wp4041 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4040, ptr %wp4041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc658 word 0x17ffff10
  br label %L_8000dc298
L_8000dc67c_ft:
  ; @pc 0x8000dc67c word 0xb9009268
  %r4111.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4111 = load i64, ptr %r4111.p, align 8, !alias.scope !3, !noalias !4
  %t4112 = add i64 %r4111, 144
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %c4114 = trunc i64 %r4113 to i32
  %gmp4115 = inttoptr i64 %t4112 to ptr
  store i32 %c4114, ptr %gmp4115, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dc680
L_8000dc71c_ft:
  ; @pc 0x8000dc71c word 0x1103fe89
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %c4343 = trunc i64 %r4342 to i32
  %t4344 = add i32 %c4343, 255
  %c4345 = zext i32 %t4344 to i64
  %wp4346 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4345, ptr %wp4346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc720 word 0x7103fd1f
  %r4347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4347 = load i64, ptr %r4347.p, align 8, !alias.scope !3, !noalias !4
  %c4348 = trunc i64 %r4347 to i32
  %t4349 = sub i32 %c4348, 255
  %fn4350 = icmp slt i32 %t4349, 0
  %fz4351 = icmp eq i32 %t4349, 0
  %fc4352 = icmp uge i32 %c4348, 255
  %fx14353 = xor i32 %c4348, 255
  %fx24354 = xor i32 %c4348, %t4349
  %fva4355 = and i32 %fx14353, %fx24354
  %fv4356 = icmp slt i32 %fva4355, 0
  %nz4357 = zext i1 %fn4350 to i64
  %zz4358 = zext i1 %fz4351 to i64
  %cz4359 = zext i1 %fc4352 to i64
  %vz4360 = zext i1 %fv4356 to i64
  %ns4361 = shl i64 %nz4357, 31
  %zs4362 = shl i64 %zz4358, 30
  %cs4363 = shl i64 %cz4359, 29
  %vs4364 = shl i64 %vz4360, 28
  %nzor4365 = or i64 %ns4361, %zs4362
  %cvor4366 = or i64 %cs4363, %vs4364
  %nzcv4367 = or i64 %nzor4365, %cvor4366
  %wp4368 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4367, ptr %wp4368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc724 word 0x12185d34
  %r4369.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4369 = load i64, ptr %r4369.p, align 8, !alias.scope !3, !noalias !4
  %c4370 = trunc i64 %r4369 to i32
  %t4371 = and i32 %c4370, -256
  %c4372 = zext i32 %t4371 to i64
  %wp4373 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c4372, ptr %wp4373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc728 word 0xd360fea9
  %r4374.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4374 = load i64, ptr %r4374.p, align 8, !alias.scope !3, !noalias !4
  %ror4375 = call i64 @llvm.fshr.i64(i64 %r4374, i64 %r4374, i64 32)
  %t4376 = and i64 %ror4375, 4294967295
  %wp4377 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4376, ptr %wp4377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc72c word 0xf90007e9
  %r4378.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4378 = load i64, ptr %r4378.p, align 8, !alias.scope !3, !noalias !4
  %t4379 = add i64 %r4378, 8
  %r4380.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4380 = load i64, ptr %r4380.p, align 8, !alias.scope !3, !noalias !4
  %gmp4381 = inttoptr i64 %t4379 to ptr
  store i64 %r4380, ptr %gmp4381, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc730 word 0x54000280
  %r4382.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4382 = load i64, ptr %r4382.p, align 8, !alias.scope !3, !noalias !4
  %fsh4384 = lshr i64 %r4382, 30
  %cond4383 = trunc i64 %fsh4384 to i1
  br i1 %cond4383, label %L_8000dc780, label %L_8000dc734_ft
L_8000dc734_ft:
  ; @pc 0x8000dc734 word 0x52800028
  %c4385 = zext i32 1 to i64
  %wp4386 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4385, ptr %wp4386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc738 word 0x390042e8
  %r4387.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4387 = load i64, ptr %r4387.p, align 8, !alias.scope !3, !noalias !4
  %t4388 = add i64 %r4387, 16
  %r4389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4389 = load i64, ptr %r4389.p, align 8, !alias.scope !3, !noalias !4
  %c4390 = trunc i64 %r4389 to i32
  %c4391 = trunc i32 %c4390 to i8
  %gmp4392 = inttoptr i64 %t4388 to ptr
  store i8 %c4391, ptr %gmp4392, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc73c word 0x9001c388
  %wp4393 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp4393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc740 word 0xf9479508
  %r4394.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4394 = load i64, ptr %r4394.p, align 8, !alias.scope !3, !noalias !4
  %t4395 = add i64 %r4394, 3880
  %gmp4396 = inttoptr i64 %t4395 to ptr
  %gml4397 = load i64, ptr %gmp4396, align 1, !alias.scope !4, !noalias !3
  %wp4398 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4397, ptr %wp4398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc744 word 0xb9400108
  %r4399.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4399 = load i64, ptr %r4399.p, align 8, !alias.scope !3, !noalias !4
  %gmp4400 = inttoptr i64 %r4399 to ptr
  %gml4401 = load i32, ptr %gmp4400, align 1, !alias.scope !4, !noalias !3
  %c4402 = zext i32 %gml4401 to i64
  %wp4403 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4402, ptr %wp4403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc748 word 0x340000a8
  %r4404.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4404 = load i64, ptr %r4404.p, align 8, !alias.scope !3, !noalias !4
  %c4405 = trunc i64 %r4404 to i32
  %cmp4406 = icmp eq i32 %c4405, 0
  br i1 %cmp4406, label %L_8000dc75c, label %L_8000dc74c_ft
L_8000dc74c_ft:
  ; @pc 0x8000dc74c word 0xa94026e8
  %r4407.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4407 = load i64, ptr %r4407.p, align 8, !alias.scope !3, !noalias !4
  %t4408 = add i64 %r4407, 8
  %gmp4409 = inttoptr i64 %r4407 to ptr
  %gml4410 = load i64, ptr %gmp4409, align 1, !alias.scope !4, !noalias !3
  %gmp4411 = inttoptr i64 %t4408 to ptr
  %gml4412 = load i64, ptr %gmp4411, align 1, !alias.scope !4, !noalias !3
  %wp4413 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4410, ptr %wp4413, align 8, !alias.scope !3, !noalias !4
  %wp4414 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4412, ptr %wp4414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc750 word 0x9100610a
  %r4415.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4415 = load i64, ptr %r4415.p, align 8, !alias.scope !3, !noalias !4
  %t4416 = add i64 %r4415, 24
  %wp4417 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4416, ptr %wp4417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc754 word 0xeb09015f
  %r4418.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4418 = load i64, ptr %r4418.p, align 8, !alias.scope !3, !noalias !4
  %r4419.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4419 = load i64, ptr %r4419.p, align 8, !alias.scope !3, !noalias !4
  %t4420 = sub i64 %r4418, %r4419
  %fn4421 = icmp slt i64 %t4420, 0
  %fz4422 = icmp eq i64 %t4420, 0
  %fc4423 = icmp uge i64 %r4418, %r4419
  %fx14424 = xor i64 %r4418, %r4419
  %fx24425 = xor i64 %r4418, %t4420
  %fva4426 = and i64 %fx14424, %fx24425
  %fv4427 = icmp slt i64 %fva4426, 0
  %nz4428 = zext i1 %fn4421 to i64
  %zz4429 = zext i1 %fz4422 to i64
  %cz4430 = zext i1 %fc4423 to i64
  %vz4431 = zext i1 %fv4427 to i64
  %ns4432 = shl i64 %nz4428, 31
  %zs4433 = shl i64 %zz4429, 30
  %cs4434 = shl i64 %cz4430, 29
  %vs4435 = shl i64 %vz4431, 28
  %nzor4436 = or i64 %ns4432, %zs4433
  %cvor4437 = or i64 %cs4434, %vs4435
  %nzcv4438 = or i64 %nzor4436, %cvor4437
  %wp4439 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4438, ptr %wp4439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc758 word 0x54006929
  %r4440.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4440 = load i64, ptr %r4440.p, align 8, !alias.scope !3, !noalias !4
  %fsh4442 = lshr i64 %r4440, 29
  %ftr4443 = trunc i64 %fsh4442 to i1
  %fsh4444 = lshr i64 %r4440, 30
  %ftr4445 = trunc i64 %fsh4444 to i1
  %fnz4446 = xor i1 %ftr4445, true
  %fhi4447 = and i1 %ftr4443, %fnz4446
  %cond4441 = xor i1 %fhi4447, true
  br i1 %cond4441, label %L_8000dd47c, label %L_8000dc75c
L_8000dc7a4_ft:
  ; @pc 0x8000dc7a4 word 0x52800028
  %c4562 = zext i32 1 to i64
  %wp4563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4562, ptr %wp4563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7a8 word 0x390042e8
  %r4564.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4564 = load i64, ptr %r4564.p, align 8, !alias.scope !3, !noalias !4
  %t4565 = add i64 %r4564, 16
  %r4566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4566 = load i64, ptr %r4566.p, align 8, !alias.scope !3, !noalias !4
  %c4567 = trunc i64 %r4566 to i32
  %c4568 = trunc i32 %c4567 to i8
  %gmp4569 = inttoptr i64 %t4565 to ptr
  store i8 %c4568, ptr %gmp4569, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dc7ac word 0x9001c388
  %wp4570 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp4570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7b0 word 0xf9479508
  %r4571.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4571 = load i64, ptr %r4571.p, align 8, !alias.scope !3, !noalias !4
  %t4572 = add i64 %r4571, 3880
  %gmp4573 = inttoptr i64 %t4572 to ptr
  %gml4574 = load i64, ptr %gmp4573, align 1, !alias.scope !4, !noalias !3
  %wp4575 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4574, ptr %wp4575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7b4 word 0xb9400108
  %r4576.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4576 = load i64, ptr %r4576.p, align 8, !alias.scope !3, !noalias !4
  %gmp4577 = inttoptr i64 %r4576 to ptr
  %gml4578 = load i32, ptr %gmp4577, align 1, !alias.scope !4, !noalias !3
  %c4579 = zext i32 %gml4578 to i64
  %wp4580 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4579, ptr %wp4580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7b8 word 0x340000a8
  %r4581.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4581 = load i64, ptr %r4581.p, align 8, !alias.scope !3, !noalias !4
  %c4582 = trunc i64 %r4581 to i32
  %cmp4583 = icmp eq i32 %c4582, 0
  br i1 %cmp4583, label %L_8000dc7cc, label %L_8000dc7bc_ft
L_8000dc7bc_ft:
  ; @pc 0x8000dc7bc word 0xa94026e8
  %r4584.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4584 = load i64, ptr %r4584.p, align 8, !alias.scope !3, !noalias !4
  %t4585 = add i64 %r4584, 8
  %gmp4586 = inttoptr i64 %r4584 to ptr
  %gml4587 = load i64, ptr %gmp4586, align 1, !alias.scope !4, !noalias !3
  %gmp4588 = inttoptr i64 %t4585 to ptr
  %gml4589 = load i64, ptr %gmp4588, align 1, !alias.scope !4, !noalias !3
  %wp4590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4587, ptr %wp4590, align 8, !alias.scope !3, !noalias !4
  %wp4591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4589, ptr %wp4591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7c0 word 0x9100610a
  %r4592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4592 = load i64, ptr %r4592.p, align 8, !alias.scope !3, !noalias !4
  %t4593 = add i64 %r4592, 24
  %wp4594 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4593, ptr %wp4594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7c4 word 0xeb09015f
  %r4595.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4595 = load i64, ptr %r4595.p, align 8, !alias.scope !3, !noalias !4
  %r4596.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4596 = load i64, ptr %r4596.p, align 8, !alias.scope !3, !noalias !4
  %t4597 = sub i64 %r4595, %r4596
  %fn4598 = icmp slt i64 %t4597, 0
  %fz4599 = icmp eq i64 %t4597, 0
  %fc4600 = icmp uge i64 %r4595, %r4596
  %fx14601 = xor i64 %r4595, %r4596
  %fx24602 = xor i64 %r4595, %t4597
  %fva4603 = and i64 %fx14601, %fx24602
  %fv4604 = icmp slt i64 %fva4603, 0
  %nz4605 = zext i1 %fn4598 to i64
  %zz4606 = zext i1 %fz4599 to i64
  %cz4607 = zext i1 %fc4600 to i64
  %vz4608 = zext i1 %fv4604 to i64
  %ns4609 = shl i64 %nz4605, 31
  %zs4610 = shl i64 %zz4606, 30
  %cs4611 = shl i64 %cz4607, 29
  %vs4612 = shl i64 %vz4608, 28
  %nzor4613 = or i64 %ns4609, %zs4610
  %cvor4614 = or i64 %cs4611, %vs4612
  %nzcv4615 = or i64 %nzor4613, %cvor4614
  %wp4616 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4615, ptr %wp4616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc7c8 word 0x54000769
  %r4617.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4617 = load i64, ptr %r4617.p, align 8, !alias.scope !3, !noalias !4
  %fsh4619 = lshr i64 %r4617, 29
  %ftr4620 = trunc i64 %fsh4619 to i1
  %fsh4621 = lshr i64 %r4617, 30
  %ftr4622 = trunc i64 %fsh4621 to i1
  %fnz4623 = xor i1 %ftr4622, true
  %fhi4624 = and i1 %ftr4620, %fnz4623
  %cond4618 = xor i1 %fhi4624, true
  br i1 %cond4618, label %L_8000dc8b4, label %L_8000dc7cc
L_8000dc868_ft:
  ; @pc 0x8000dc868 word 0xa94026e8
  %r4795.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4795 = load i64, ptr %r4795.p, align 8, !alias.scope !3, !noalias !4
  %t4796 = add i64 %r4795, 8
  %gmp4797 = inttoptr i64 %r4795 to ptr
  %gml4798 = load i64, ptr %gmp4797, align 1, !alias.scope !4, !noalias !3
  %gmp4799 = inttoptr i64 %t4796 to ptr
  %gml4800 = load i64, ptr %gmp4799, align 1, !alias.scope !4, !noalias !3
  %wp4801 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4798, ptr %wp4801, align 8, !alias.scope !3, !noalias !4
  %wp4802 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4800, ptr %wp4802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc86c word 0x9100610a
  %r4803.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4803 = load i64, ptr %r4803.p, align 8, !alias.scope !3, !noalias !4
  %t4804 = add i64 %r4803, 24
  %wp4805 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t4804, ptr %wp4805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc870 word 0xeb09015f
  %r4806.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4806 = load i64, ptr %r4806.p, align 8, !alias.scope !3, !noalias !4
  %r4807.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4807 = load i64, ptr %r4807.p, align 8, !alias.scope !3, !noalias !4
  %t4808 = sub i64 %r4806, %r4807
  %fn4809 = icmp slt i64 %t4808, 0
  %fz4810 = icmp eq i64 %t4808, 0
  %fc4811 = icmp uge i64 %r4806, %r4807
  %fx14812 = xor i64 %r4806, %r4807
  %fx24813 = xor i64 %r4806, %t4808
  %fva4814 = and i64 %fx14812, %fx24813
  %fv4815 = icmp slt i64 %fva4814, 0
  %nz4816 = zext i1 %fn4809 to i64
  %zz4817 = zext i1 %fz4810 to i64
  %cz4818 = zext i1 %fc4811 to i64
  %vz4819 = zext i1 %fv4815 to i64
  %ns4820 = shl i64 %nz4816, 31
  %zs4821 = shl i64 %zz4817, 30
  %cs4822 = shl i64 %cz4818, 29
  %vs4823 = shl i64 %vz4819, 28
  %nzor4824 = or i64 %ns4820, %zs4821
  %cvor4825 = or i64 %cs4822, %vs4823
  %nzcv4826 = or i64 %nzor4824, %cvor4825
  %wp4827 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4826, ptr %wp4827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dc874 word 0x54000489
  %r4828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4828 = load i64, ptr %r4828.p, align 8, !alias.scope !3, !noalias !4
  %fsh4830 = lshr i64 %r4828, 29
  %ftr4831 = trunc i64 %fsh4830 to i1
  %fsh4832 = lshr i64 %r4828, 30
  %ftr4833 = trunc i64 %fsh4832 to i1
  %fnz4834 = xor i1 %ftr4833, true
  %fhi4835 = and i1 %ftr4831, %fnz4834
  %cond4829 = xor i1 %fhi4835, true
  br i1 %cond4829, label %L_8000dc904, label %L_8000dc878
L_8000dca24_ft:
  ; @pc 0x8000dca24 word 0xf9408e68
  %r5306.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5306 = load i64, ptr %r5306.p, align 8, !alias.scope !3, !noalias !4
  %t5307 = add i64 %r5306, 280
  %gmp5308 = inttoptr i64 %t5307 to ptr
  %gml5309 = load i64, ptr %gmp5308, align 1, !alias.scope !4, !noalias !3
  %wp5310 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5309, ptr %wp5310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca28 word 0xaa1a03e0
  %r5311.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5311 = load i64, ptr %r5311.p, align 8, !alias.scope !3, !noalias !4
  %t5312 = or i64 0, %r5311
  %wp5313 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5312, ptr %wp5313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca2c word 0xaa1a03f4
  %r5314.p = getelementptr inbounds i8, ptr %c, i64 208
  %r5314 = load i64, ptr %r5314.p, align 8, !alias.scope !3, !noalias !4
  %t5315 = or i64 0, %r5314
  %wp5316 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t5315, ptr %wp5316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca30 word 0xf9401276
  %r5317.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5317 = load i64, ptr %r5317.p, align 8, !alias.scope !3, !noalias !4
  %t5318 = add i64 %r5317, 32
  %gmp5319 = inttoptr i64 %t5318 to ptr
  %gml5320 = load i64, ptr %gmp5319, align 1, !alias.scope !4, !noalias !3
  %wp5321 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml5320, ptr %wp5321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca34 word 0xf9400108
  %r5322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5322 = load i64, ptr %r5322.p, align 8, !alias.scope !3, !noalias !4
  %gmp5323 = inttoptr i64 %r5322 to ptr
  %gml5324 = load i64, ptr %gmp5323, align 1, !alias.scope !4, !noalias !3
  %wp5325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5324, ptr %wp5325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca38 word 0xb9402917
  %r5326.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5326 = load i64, ptr %r5326.p, align 8, !alias.scope !3, !noalias !4
  %t5327 = add i64 %r5326, 40
  %gmp5328 = inttoptr i64 %t5327 to ptr
  %gml5329 = load i32, ptr %gmp5328, align 1, !alias.scope !4, !noalias !3
  %c5330 = zext i32 %gml5329 to i64
  %wp5331 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5330, ptr %wp5331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca3c word 0x949d86c4
  %wp5332 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360642112, ptr %wp5332, align 8, !alias.scope !3, !noalias !4
  call void @f_80283e54c(ptr %c)
  ; @pc 0x8000dca40 word 0x39403408
  %r5333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5333 = load i64, ptr %r5333.p, align 8, !alias.scope !3, !noalias !4
  %t5334 = add i64 %r5333, 13
  %gmp5335 = inttoptr i64 %t5334 to ptr
  %gml5336 = load i8, ptr %gmp5335, align 1, !alias.scope !4, !noalias !3
  %c5337 = zext i8 %gml5336 to i64
  %wp5338 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5337, ptr %wp5338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca44 word 0x340002a8
  %r5339.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5339 = load i64, ptr %r5339.p, align 8, !alias.scope !3, !noalias !4
  %c5340 = trunc i64 %r5339 to i32
  %cmp5341 = icmp eq i32 %c5340, 0
  br i1 %cmp5341, label %L_8000dca98, label %L_8000dca48_ft
L_8000dca48_ft:
  ; @pc 0x8000dca48 word 0x3940c268
  %r5342.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5342 = load i64, ptr %r5342.p, align 8, !alias.scope !3, !noalias !4
  %t5343 = add i64 %r5342, 48
  %gmp5344 = inttoptr i64 %t5343 to ptr
  %gml5345 = load i8, ptr %gmp5344, align 1, !alias.scope !4, !noalias !3
  %c5346 = zext i8 %gml5345 to i64
  %wp5347 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5346, ptr %wp5347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca4c word 0x39403c0a
  %r5348.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5348 = load i64, ptr %r5348.p, align 8, !alias.scope !3, !noalias !4
  %t5349 = add i64 %r5348, 15
  %gmp5350 = inttoptr i64 %t5349 to ptr
  %gml5351 = load i8, ptr %gmp5350, align 1, !alias.scope !4, !noalias !3
  %c5352 = zext i8 %gml5351 to i64
  %wp5353 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5352, ptr %wp5353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca50 word 0x9ba87d48
  %r5354.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5354 = load i64, ptr %r5354.p, align 8, !alias.scope !3, !noalias !4
  %c5355 = trunc i64 %r5354 to i32
  %c5356 = zext i32 %c5355 to i64
  %r5357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5357 = load i64, ptr %r5357.p, align 8, !alias.scope !3, !noalias !4
  %c5358 = trunc i64 %r5357 to i32
  %c5359 = zext i32 %c5358 to i64
  %t5360 = mul i64 %c5356, %c5359
  %t5361 = add i64 0, %t5360
  %wp5362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5361, ptr %wp5362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca54 word 0xf9401009
  %r5363.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5363 = load i64, ptr %r5363.p, align 8, !alias.scope !3, !noalias !4
  %t5364 = add i64 %r5363, 32
  %gmp5365 = inttoptr i64 %t5364 to ptr
  %gml5366 = load i64, ptr %gmp5365, align 1, !alias.scope !4, !noalias !3
  %wp5367 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5366, ptr %wp5367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca58 word 0x5280090a
  %c5368 = zext i32 72 to i64
  %wp5369 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5368, ptr %wp5369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca5c word 0xf100013f
  %r5370.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5370 = load i64, ptr %r5370.p, align 8, !alias.scope !3, !noalias !4
  %t5371 = sub i64 %r5370, 0
  %fn5372 = icmp slt i64 %t5371, 0
  %fz5373 = icmp eq i64 %t5371, 0
  %fc5374 = icmp uge i64 %r5370, 0
  %fx15375 = xor i64 %r5370, 0
  %fx25376 = xor i64 %r5370, %t5371
  %fva5377 = and i64 %fx15375, %fx25376
  %fv5378 = icmp slt i64 %fva5377, 0
  %nz5379 = zext i1 %fn5372 to i64
  %zz5380 = zext i1 %fz5373 to i64
  %cz5381 = zext i1 %fc5374 to i64
  %vz5382 = zext i1 %fv5378 to i64
  %ns5383 = shl i64 %nz5379, 31
  %zs5384 = shl i64 %zz5380, 30
  %cs5385 = shl i64 %cz5381, 29
  %vs5386 = shl i64 %vz5382, 28
  %nzor5387 = or i64 %ns5383, %zs5384
  %cvor5388 = or i64 %cs5385, %vs5386
  %nzcv5389 = or i64 %nzor5387, %cvor5388
  %wp5390 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5389, ptr %wp5390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca60 word 0x8b354108
  %r5391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5391 = load i64, ptr %r5391.p, align 8, !alias.scope !3, !noalias !4
  %r5392.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5392 = load i64, ptr %r5392.p, align 8, !alias.scope !3, !noalias !4
  %c5393 = trunc i64 %r5392 to i32
  %c5394 = zext i32 %c5393 to i64
  %t5395 = add i64 %r5391, %c5394
  %wp5396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5395, ptr %wp5396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca64 word 0x9baa2508
  %r5397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5397 = load i64, ptr %r5397.p, align 8, !alias.scope !3, !noalias !4
  %c5398 = trunc i64 %r5397 to i32
  %c5399 = zext i32 %c5398 to i64
  %r5400.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5400 = load i64, ptr %r5400.p, align 8, !alias.scope !3, !noalias !4
  %c5401 = trunc i64 %r5400 to i32
  %c5402 = zext i32 %c5401 to i64
  %t5403 = mul i64 %c5399, %c5402
  %r5404.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5404 = load i64, ptr %r5404.p, align 8, !alias.scope !3, !noalias !4
  %t5405 = add i64 %r5404, %t5403
  %wp5406 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5405, ptr %wp5406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dca68 word 0x9a8803e2
  %r5407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5407 = load i64, ptr %r5407.p, align 8, !alias.scope !3, !noalias !4
  %r5408.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5408 = load i64, ptr %r5408.p, align 8, !alias.scope !3, !noalias !4
  %fsh5410 = lshr i64 %r5408, 30
  %cond5409 = trunc i64 %fsh5410 to i1
  %sel5411 = select i1 %cond5409, i64 0, i64 %r5407
  %wp5412 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %sel5411, ptr %wp5412, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dca6c
L_8000dcac0_ft:
  ; @pc 0x8000dcac0 word 0x385fe222
  %r5518.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5518 = load i64, ptr %r5518.p, align 8, !alias.scope !3, !noalias !4
  %t5519 = add i64 %r5518, -2
  %gmp5520 = inttoptr i64 %t5519 to ptr
  %gml5521 = load i8, ptr %gmp5520, align 1, !alias.scope !4, !noalias !3
  %c5522 = zext i8 %gml5521 to i64
  %wp5523 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5522, ptr %wp5523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcac4 word 0x39400e43
  %r5524.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5524 = load i64, ptr %r5524.p, align 8, !alias.scope !3, !noalias !4
  %t5525 = add i64 %r5524, 3
  %gmp5526 = inttoptr i64 %t5525 to ptr
  %gml5527 = load i8, ptr %gmp5526, align 1, !alias.scope !4, !noalias !3
  %c5528 = zext i8 %gml5527 to i64
  %wp5529 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5528, ptr %wp5529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcac8 word 0x6b03005f
  %r5530.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5530 = load i64, ptr %r5530.p, align 8, !alias.scope !3, !noalias !4
  %c5531 = trunc i64 %r5530 to i32
  %r5532.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5532 = load i64, ptr %r5532.p, align 8, !alias.scope !3, !noalias !4
  %c5533 = trunc i64 %r5532 to i32
  %t5534 = sub i32 %c5531, %c5533
  %fn5535 = icmp slt i32 %t5534, 0
  %fz5536 = icmp eq i32 %t5534, 0
  %fc5537 = icmp uge i32 %c5531, %c5533
  %fx15538 = xor i32 %c5531, %c5533
  %fx25539 = xor i32 %c5531, %t5534
  %fva5540 = and i32 %fx15538, %fx25539
  %fv5541 = icmp slt i32 %fva5540, 0
  %nz5542 = zext i1 %fn5535 to i64
  %zz5543 = zext i1 %fz5536 to i64
  %cz5544 = zext i1 %fc5537 to i64
  %vz5545 = zext i1 %fv5541 to i64
  %ns5546 = shl i64 %nz5542, 31
  %zs5547 = shl i64 %zz5543, 30
  %cs5548 = shl i64 %cz5544, 29
  %vs5549 = shl i64 %vz5545, 28
  %nzor5550 = or i64 %ns5546, %zs5547
  %cvor5551 = or i64 %cs5548, %vs5549
  %nzcv5552 = or i64 %nzor5550, %cvor5551
  %wp5553 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5552, ptr %wp5553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcacc word 0x54ffc721
  %r5554.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5554 = load i64, ptr %r5554.p, align 8, !alias.scope !3, !noalias !4
  %fsh5556 = lshr i64 %r5554, 30
  %ftr5557 = trunc i64 %fsh5556 to i1
  %cond5555 = xor i1 %ftr5557, true
  br i1 %cond5555, label %L_8000dc3b0, label %L_8000dcad0_ft
L_8000dcad0_ft:
  ; @pc 0x8000dcad0 word 0x385ff222
  %r5558.p = getelementptr inbounds i8, ptr %c, i64 136
  %r5558 = load i64, ptr %r5558.p, align 8, !alias.scope !3, !noalias !4
  %t5559 = add i64 %r5558, -1
  %gmp5560 = inttoptr i64 %t5559 to ptr
  %gml5561 = load i8, ptr %gmp5560, align 1, !alias.scope !4, !noalias !3
  %c5562 = zext i8 %gml5561 to i64
  %wp5563 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5562, ptr %wp5563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcad4 word 0x39401243
  %r5564.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5564 = load i64, ptr %r5564.p, align 8, !alias.scope !3, !noalias !4
  %t5565 = add i64 %r5564, 4
  %gmp5566 = inttoptr i64 %t5565 to ptr
  %gml5567 = load i8, ptr %gmp5566, align 1, !alias.scope !4, !noalias !3
  %c5568 = zext i8 %gml5567 to i64
  %wp5569 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5568, ptr %wp5569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcad8 word 0x6b03005f
  %r5570.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5570 = load i64, ptr %r5570.p, align 8, !alias.scope !3, !noalias !4
  %c5571 = trunc i64 %r5570 to i32
  %r5572.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5572 = load i64, ptr %r5572.p, align 8, !alias.scope !3, !noalias !4
  %c5573 = trunc i64 %r5572 to i32
  %t5574 = sub i32 %c5571, %c5573
  %fn5575 = icmp slt i32 %t5574, 0
  %fz5576 = icmp eq i32 %t5574, 0
  %fc5577 = icmp uge i32 %c5571, %c5573
  %fx15578 = xor i32 %c5571, %c5573
  %fx25579 = xor i32 %c5571, %t5574
  %fva5580 = and i32 %fx15578, %fx25579
  %fv5581 = icmp slt i32 %fva5580, 0
  %nz5582 = zext i1 %fn5575 to i64
  %zz5583 = zext i1 %fz5576 to i64
  %cz5584 = zext i1 %fc5577 to i64
  %vz5585 = zext i1 %fv5581 to i64
  %ns5586 = shl i64 %nz5582, 31
  %zs5587 = shl i64 %zz5583, 30
  %cs5588 = shl i64 %cz5584, 29
  %vs5589 = shl i64 %vz5585, 28
  %nzor5590 = or i64 %ns5586, %zs5587
  %cvor5591 = or i64 %cs5588, %vs5589
  %nzcv5592 = or i64 %nzor5590, %cvor5591
  %wp5593 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5592, ptr %wp5593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcadc word 0x54ffc6a1
  %r5594.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5594 = load i64, ptr %r5594.p, align 8, !alias.scope !3, !noalias !4
  %fsh5596 = lshr i64 %r5594, 30
  %ftr5597 = trunc i64 %fsh5596 to i1
  %cond5595 = xor i1 %ftr5597, true
  br i1 %cond5595, label %L_8000dc3b0, label %L_8000dcae0_ft
L_8000dcae0_ft:
  ; @pc 0x8000dcae0 word 0x386e6a02
  %r5598.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5598 = load i64, ptr %r5598.p, align 8, !alias.scope !3, !noalias !4
  %r5599.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5599 = load i64, ptr %r5599.p, align 8, !alias.scope !3, !noalias !4
  %t5600 = add i64 %r5598, %r5599
  %gmp5601 = inttoptr i64 %t5600 to ptr
  %gml5602 = load i8, ptr %gmp5601, align 1, !alias.scope !4, !noalias !3
  %c5603 = zext i8 %gml5602 to i64
  %wp5604 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c5603, ptr %wp5604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcae4 word 0x39401643
  %r5605.p = getelementptr inbounds i8, ptr %c, i64 144
  %r5605 = load i64, ptr %r5605.p, align 8, !alias.scope !3, !noalias !4
  %t5606 = add i64 %r5605, 5
  %gmp5607 = inttoptr i64 %t5606 to ptr
  %gml5608 = load i8, ptr %gmp5607, align 1, !alias.scope !4, !noalias !3
  %c5609 = zext i8 %gml5608 to i64
  %wp5610 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c5609, ptr %wp5610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcae8 word 0x6b03005f
  %r5611.p = getelementptr inbounds i8, ptr %c, i64 16
  %r5611 = load i64, ptr %r5611.p, align 8, !alias.scope !3, !noalias !4
  %c5612 = trunc i64 %r5611 to i32
  %r5613.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5613 = load i64, ptr %r5613.p, align 8, !alias.scope !3, !noalias !4
  %c5614 = trunc i64 %r5613 to i32
  %t5615 = sub i32 %c5612, %c5614
  %fn5616 = icmp slt i32 %t5615, 0
  %fz5617 = icmp eq i32 %t5615, 0
  %fc5618 = icmp uge i32 %c5612, %c5614
  %fx15619 = xor i32 %c5612, %c5614
  %fx25620 = xor i32 %c5612, %t5615
  %fva5621 = and i32 %fx15619, %fx25620
  %fv5622 = icmp slt i32 %fva5621, 0
  %nz5623 = zext i1 %fn5616 to i64
  %zz5624 = zext i1 %fz5617 to i64
  %cz5625 = zext i1 %fc5618 to i64
  %vz5626 = zext i1 %fv5622 to i64
  %ns5627 = shl i64 %nz5623, 31
  %zs5628 = shl i64 %zz5624, 30
  %cs5629 = shl i64 %cz5625, 29
  %vs5630 = shl i64 %vz5626, 28
  %nzor5631 = or i64 %ns5627, %zs5628
  %cvor5632 = or i64 %cs5629, %vs5630
  %nzcv5633 = or i64 %nzor5631, %cvor5632
  %wp5634 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5633, ptr %wp5634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcaec word 0x54ffc740
  %r5635.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5635 = load i64, ptr %r5635.p, align 8, !alias.scope !3, !noalias !4
  %fsh5637 = lshr i64 %r5635, 30
  %cond5636 = trunc i64 %fsh5637 to i1
  br i1 %cond5636, label %L_8000dc3d4, label %L_8000dcaf0_ft
L_8000dcaf0_ft:
  ; @pc 0x8000dcaf0 word 0x17fffe30
  br label %L_8000dc3b0
L_8000dcafc_ft:
  ; @pc 0x8000dcafc word 0x17fffc4f
  br label %L_8000dbc38
L_8000dcbbc_ft:
  ; @pc 0x8000dcbbc word 0x9001c388
  %wp5809 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbc0 word 0xaa1f03fb
  %t5810 = or i64 0, 0
  %wp5811 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t5810, ptr %wp5811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbc4 word 0xf9478508
  %r5812.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5812 = load i64, ptr %r5812.p, align 8, !alias.scope !3, !noalias !4
  %t5813 = add i64 %r5812, 3848
  %gmp5814 = inttoptr i64 %t5813 to ptr
  %gml5815 = load i64, ptr %gmp5814, align 1, !alias.scope !4, !noalias !3
  %wp5816 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5815, ptr %wp5816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbc8 word 0xf9400108
  %r5817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5817 = load i64, ptr %r5817.p, align 8, !alias.scope !3, !noalias !4
  %gmp5818 = inttoptr i64 %r5817 to ptr
  %gml5819 = load i64, ptr %gmp5818, align 1, !alias.scope !4, !noalias !3
  %wp5820 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5819, ptr %wp5820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbcc word 0xf9001be8
  %r5821.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5821 = load i64, ptr %r5821.p, align 8, !alias.scope !3, !noalias !4
  %t5822 = add i64 %r5821, 48
  %r5823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5823 = load i64, ptr %r5823.p, align 8, !alias.scope !3, !noalias !4
  %gmp5824 = inttoptr i64 %t5822 to ptr
  store i64 %r5823, ptr %gmp5824, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcbd0
L_8000dcbe4_ft:
  ; @pc 0x8000dcbe4 word 0xf9400b08
  %r5848.p = getelementptr inbounds i8, ptr %c, i64 192
  %r5848 = load i64, ptr %r5848.p, align 8, !alias.scope !3, !noalias !4
  %t5849 = add i64 %r5848, 16
  %gmp5850 = inttoptr i64 %t5849 to ptr
  %gml5851 = load i64, ptr %gmp5850, align 1, !alias.scope !4, !noalias !3
  %wp5852 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5851, ptr %wp5852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbe8 word 0x8b1b0908
  %r5853.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5853 = load i64, ptr %r5853.p, align 8, !alias.scope !3, !noalias !4
  %r5854.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5854 = load i64, ptr %r5854.p, align 8, !alias.scope !3, !noalias !4
  %t5855 = shl i64 %r5854, 2
  %t5856 = add i64 %r5853, %t5855
  %wp5857 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5856, ptr %wp5857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbec word 0xb940151c
  %r5858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5858 = load i64, ptr %r5858.p, align 8, !alias.scope !3, !noalias !4
  %t5859 = add i64 %r5858, 20
  %gmp5860 = inttoptr i64 %t5859 to ptr
  %gml5861 = load i32, ptr %gmp5860, align 1, !alias.scope !4, !noalias !3
  %c5862 = zext i32 %gml5861 to i64
  %wp5863 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c5862, ptr %wp5863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbf0 word 0x79408268
  %r5864.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5864 = load i64, ptr %r5864.p, align 8, !alias.scope !3, !noalias !4
  %t5865 = add i64 %r5864, 64
  %gmp5866 = inttoptr i64 %t5865 to ptr
  %gml5867 = load i16, ptr %gmp5866, align 1, !alias.scope !4, !noalias !3
  %c5868 = zext i16 %gml5867 to i64
  %wp5869 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5868, ptr %wp5869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbf4 word 0x53187f97
  %r5870.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5870 = load i64, ptr %r5870.p, align 8, !alias.scope !3, !noalias !4
  %c5871 = trunc i64 %r5870 to i32
  %ror5872 = call i32 @llvm.fshr.i32(i32 %c5871, i32 %c5871, i32 24)
  %t5873 = and i32 %ror5872, 255
  %c5874 = zext i32 %t5873 to i64
  %wp5875 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5874, ptr %wp5875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbf8 word 0x3100079f
  %r5876.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5876 = load i64, ptr %r5876.p, align 8, !alias.scope !3, !noalias !4
  %c5877 = trunc i64 %r5876 to i32
  %t5878 = add i32 %c5877, 1
  %fn5879 = icmp slt i32 %t5878, 0
  %fz5880 = icmp eq i32 %t5878, 0
  %fc5881 = icmp ult i32 %t5878, %c5877
  %fx15882 = xor i32 %c5877, %t5878
  %fx25883 = xor i32 1, %t5878
  %fva5884 = and i32 %fx15882, %fx25883
  %fv5885 = icmp slt i32 %fva5884, 0
  %nz5886 = zext i1 %fn5879 to i64
  %zz5887 = zext i1 %fz5880 to i64
  %cz5888 = zext i1 %fc5881 to i64
  %vz5889 = zext i1 %fv5885 to i64
  %ns5890 = shl i64 %nz5886, 31
  %zs5891 = shl i64 %zz5887, 30
  %cs5892 = shl i64 %cz5888, 29
  %vs5893 = shl i64 %vz5889, 28
  %nzor5894 = or i64 %ns5890, %zs5891
  %cvor5895 = or i64 %cs5892, %vs5893
  %nzcv5896 = or i64 %nzor5894, %cvor5895
  %wp5897 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5896, ptr %wp5897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcbfc word 0x36485908
  %r5898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5898 = load i64, ptr %r5898.p, align 8, !alias.scope !3, !noalias !4
  %t5899 = and i64 %r5898, 512
  %cmp5900 = icmp eq i64 %t5899, 0
  br i1 %cmp5900, label %L_8000dd71c, label %L_8000dcc00_ft
L_8000dcc00_ft:
  ; @pc 0x8000dcc00 word 0x54000c00
  %r5901.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5901 = load i64, ptr %r5901.p, align 8, !alias.scope !3, !noalias !4
  %fsh5903 = lshr i64 %r5901, 30
  %cond5902 = trunc i64 %fsh5903 to i1
  br i1 %cond5902, label %L_8000dcd80, label %L_8000dcc04_ft
L_8000dcc04_ft:
  ; @pc 0x8000dcc04 word 0xf9400a6a
  %r5904.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5904 = load i64, ptr %r5904.p, align 8, !alias.scope !3, !noalias !4
  %t5905 = add i64 %r5904, 16
  %gmp5906 = inttoptr i64 %t5905 to ptr
  %gml5907 = load i64, ptr %gmp5906, align 1, !alias.scope !4, !noalias !3
  %wp5908 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5907, ptr %wp5908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc08 word 0x52801fe8
  %c5909 = zext i32 255 to i64
  %wp5910 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5909, ptr %wp5910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc0c word 0x6a3c011f
  %r5911.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5911 = load i64, ptr %r5911.p, align 8, !alias.scope !3, !noalias !4
  %c5912 = trunc i64 %r5911 to i32
  %t5913 = xor i32 %c5912, -1
  %r5914.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5914 = load i64, ptr %r5914.p, align 8, !alias.scope !3, !noalias !4
  %c5915 = trunc i64 %r5914 to i32
  %t5916 = and i32 %c5915, %t5913
  %fn5917 = icmp slt i32 %t5916, 0
  %fz5918 = icmp eq i32 %t5916, 0
  %nz5919 = zext i1 %fn5917 to i64
  %zz5920 = zext i1 %fz5918 to i64
  %ns5921 = shl i64 %nz5919, 31
  %zs5922 = shl i64 %zz5920, 30
  %nzcv5923 = or i64 %ns5921, %zs5922
  %wp5924 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5923, ptr %wp5924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc10 word 0xf9401269
  %r5925.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5925 = load i64, ptr %r5925.p, align 8, !alias.scope !3, !noalias !4
  %t5926 = add i64 %r5925, 32
  %gmp5927 = inttoptr i64 %t5926 to ptr
  %gml5928 = load i64, ptr %gmp5927, align 1, !alias.scope !4, !noalias !3
  %wp5929 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5928, ptr %wp5929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc14 word 0x8b1b114a
  %r5930.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5930 = load i64, ptr %r5930.p, align 8, !alias.scope !3, !noalias !4
  %r5931.p = getelementptr inbounds i8, ptr %c, i64 216
  %r5931 = load i64, ptr %r5931.p, align 8, !alias.scope !3, !noalias !4
  %t5932 = shl i64 %r5931, 4
  %t5933 = add i64 %r5930, %t5932
  %wp5934 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5933, ptr %wp5934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc18 word 0xf9406e68
  %r5935.p = getelementptr inbounds i8, ptr %c, i64 152
  %r5935 = load i64, ptr %r5935.p, align 8, !alias.scope !3, !noalias !4
  %t5936 = add i64 %r5935, 216
  %gmp5937 = inttoptr i64 %t5936 to ptr
  %gml5938 = load i64, ptr %gmp5937, align 1, !alias.scope !4, !noalias !3
  %wp5939 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5938, ptr %wp5939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc1c word 0xf9405d35
  %r5940.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5940 = load i64, ptr %r5940.p, align 8, !alias.scope !3, !noalias !4
  %t5941 = add i64 %r5940, 184
  %gmp5942 = inttoptr i64 %t5941 to ptr
  %gml5943 = load i64, ptr %gmp5942, align 1, !alias.scope !4, !noalias !3
  %wp5944 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml5943, ptr %wp5944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc20 word 0x3986254a
  %r5945.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5945 = load i64, ptr %r5945.p, align 8, !alias.scope !3, !noalias !4
  %t5946 = add i64 %r5945, 393
  %gmp5947 = inttoptr i64 %t5946 to ptr
  %gml5948 = load i8, ptr %gmp5947, align 1, !alias.scope !4, !noalias !3
  %c5949 = sext i8 %gml5948 to i64
  %wp5950 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5949, ptr %wp5950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc24 word 0x8b0a0d16
  %r5951.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5951 = load i64, ptr %r5951.p, align 8, !alias.scope !3, !noalias !4
  %r5952.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5952 = load i64, ptr %r5952.p, align 8, !alias.scope !3, !noalias !4
  %t5953 = shl i64 %r5952, 3
  %t5954 = add i64 %r5951, %t5953
  %wp5955 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t5954, ptr %wp5955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc28 word 0x540004e0
  %r5956.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5956 = load i64, ptr %r5956.p, align 8, !alias.scope !3, !noalias !4
  %fsh5958 = lshr i64 %r5956, 30
  %cond5957 = trunc i64 %fsh5958 to i1
  br i1 %cond5957, label %L_8000dccc4, label %L_8000dcc2c_ft
L_8000dcc2c_ft:
  ; @pc 0x8000dcc2c word 0x52800028
  %c5959 = zext i32 1 to i64
  %wp5960 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5959, ptr %wp5960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc30 word 0x390042a8
  %r5961.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5961 = load i64, ptr %r5961.p, align 8, !alias.scope !3, !noalias !4
  %t5962 = add i64 %r5961, 16
  %r5963.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5963 = load i64, ptr %r5963.p, align 8, !alias.scope !3, !noalias !4
  %c5964 = trunc i64 %r5963 to i32
  %c5965 = trunc i32 %c5964 to i8
  %gmp5966 = inttoptr i64 %t5962 to ptr
  store i8 %c5965, ptr %gmp5966, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcc34 word 0x9001c388
  %wp5967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp5967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc38 word 0xf9479508
  %r5968.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5968 = load i64, ptr %r5968.p, align 8, !alias.scope !3, !noalias !4
  %t5969 = add i64 %r5968, 3880
  %gmp5970 = inttoptr i64 %t5969 to ptr
  %gml5971 = load i64, ptr %gmp5970, align 1, !alias.scope !4, !noalias !3
  %wp5972 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5971, ptr %wp5972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc3c word 0xb9400108
  %r5973.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5973 = load i64, ptr %r5973.p, align 8, !alias.scope !3, !noalias !4
  %gmp5974 = inttoptr i64 %r5973 to ptr
  %gml5975 = load i32, ptr %gmp5974, align 1, !alias.scope !4, !noalias !3
  %c5976 = zext i32 %gml5975 to i64
  %wp5977 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5976, ptr %wp5977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc40 word 0x34005988
  %r5978.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5978 = load i64, ptr %r5978.p, align 8, !alias.scope !3, !noalias !4
  %c5979 = trunc i64 %r5978 to i32
  %cmp5980 = icmp eq i32 %c5979, 0
  br i1 %cmp5980, label %L_8000dd770, label %L_8000dcc44_ft
L_8000dcc44_ft:
  ; @pc 0x8000dcc44 word 0xa94226a8
  %r5981.p = getelementptr inbounds i8, ptr %c, i64 168
  %r5981 = load i64, ptr %r5981.p, align 8, !alias.scope !3, !noalias !4
  %t5982 = add i64 %r5981, 32
  %t5983 = add i64 %t5982, 8
  %gmp5984 = inttoptr i64 %t5982 to ptr
  %gml5985 = load i64, ptr %gmp5984, align 1, !alias.scope !4, !noalias !3
  %gmp5986 = inttoptr i64 %t5983 to ptr
  %gml5987 = load i64, ptr %gmp5986, align 1, !alias.scope !4, !noalias !3
  %wp5988 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5985, ptr %wp5988, align 8, !alias.scope !3, !noalias !4
  %wp5989 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5987, ptr %wp5989, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc48 word 0x9100c10a
  %r5990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5990 = load i64, ptr %r5990.p, align 8, !alias.scope !3, !noalias !4
  %t5991 = add i64 %r5990, 48
  %wp5992 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t5991, ptr %wp5992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc4c word 0xeb09015f
  %r5993.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5993 = load i64, ptr %r5993.p, align 8, !alias.scope !3, !noalias !4
  %r5994.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5994 = load i64, ptr %r5994.p, align 8, !alias.scope !3, !noalias !4
  %t5995 = sub i64 %r5993, %r5994
  %fn5996 = icmp slt i64 %t5995, 0
  %fz5997 = icmp eq i64 %t5995, 0
  %fc5998 = icmp uge i64 %r5993, %r5994
  %fx15999 = xor i64 %r5993, %r5994
  %fx26000 = xor i64 %r5993, %t5995
  %fva6001 = and i64 %fx15999, %fx26000
  %fv6002 = icmp slt i64 %fva6001, 0
  %nz6003 = zext i1 %fn5996 to i64
  %zz6004 = zext i1 %fz5997 to i64
  %cz6005 = zext i1 %fc5998 to i64
  %vz6006 = zext i1 %fv6002 to i64
  %ns6007 = shl i64 %nz6003, 31
  %zs6008 = shl i64 %zz6004, 30
  %cs6009 = shl i64 %cz6005, 29
  %vs6010 = shl i64 %vz6006, 28
  %nzor6011 = or i64 %ns6007, %zs6008
  %cvor6012 = or i64 %cs6009, %vs6010
  %nzcv6013 = or i64 %nzor6011, %cvor6012
  %wp6014 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6013, ptr %wp6014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc50 word 0x54005908
  %r6015.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6015 = load i64, ptr %r6015.p, align 8, !alias.scope !3, !noalias !4
  %fsh6017 = lshr i64 %r6015, 29
  %ftr6018 = trunc i64 %fsh6017 to i1
  %fsh6019 = lshr i64 %r6015, 30
  %ftr6020 = trunc i64 %fsh6019 to i1
  %fnz6021 = xor i1 %ftr6020, true
  %cond6016 = and i1 %ftr6018, %fnz6021
  br i1 %cond6016, label %L_8000dd770, label %L_8000dcc54_ft
L_8000dcc54_ft:
  ; @pc 0x8000dcc54 word 0xf94022aa
  %r6022.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6022 = load i64, ptr %r6022.p, align 8, !alias.scope !3, !noalias !4
  %t6023 = add i64 %r6022, 64
  %gmp6024 = inttoptr i64 %t6023 to ptr
  %gml6025 = load i64, ptr %gmp6024, align 1, !alias.scope !4, !noalias !3
  %wp6026 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6025, ptr %wp6026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc58 word 0xf94002a9
  %r6027.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6027 = load i64, ptr %r6027.p, align 8, !alias.scope !3, !noalias !4
  %gmp6028 = inttoptr i64 %r6027 to ptr
  %gml6029 = load i64, ptr %gmp6028, align 1, !alias.scope !4, !noalias !3
  %wp6030 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6029, ptr %wp6030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc5c word 0xeb0a012b
  %r6031.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6031 = load i64, ptr %r6031.p, align 8, !alias.scope !3, !noalias !4
  %r6032.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6032 = load i64, ptr %r6032.p, align 8, !alias.scope !3, !noalias !4
  %t6033 = sub i64 %r6031, %r6032
  %fn6034 = icmp slt i64 %t6033, 0
  %fz6035 = icmp eq i64 %t6033, 0
  %fc6036 = icmp uge i64 %r6031, %r6032
  %fx16037 = xor i64 %r6031, %r6032
  %fx26038 = xor i64 %r6031, %t6033
  %fva6039 = and i64 %fx16037, %fx26038
  %fv6040 = icmp slt i64 %fva6039, 0
  %nz6041 = zext i1 %fn6034 to i64
  %zz6042 = zext i1 %fz6035 to i64
  %cz6043 = zext i1 %fc6036 to i64
  %vz6044 = zext i1 %fv6040 to i64
  %ns6045 = shl i64 %nz6041, 31
  %zs6046 = shl i64 %zz6042, 30
  %cs6047 = shl i64 %cz6043, 29
  %vs6048 = shl i64 %vz6044, 28
  %nzor6049 = or i64 %ns6045, %zs6046
  %cvor6050 = or i64 %cs6047, %vs6048
  %nzcv6051 = or i64 %nzor6049, %cvor6050
  %wp6052 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6051, ptr %wp6052, align 8, !alias.scope !3, !noalias !4
  %wp6053 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6033, ptr %wp6053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc60 word 0x54000220
  %r6054.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6054 = load i64, ptr %r6054.p, align 8, !alias.scope !3, !noalias !4
  %fsh6056 = lshr i64 %r6054, 30
  %cond6055 = trunc i64 %fsh6056 to i1
  br i1 %cond6055, label %L_8000dcca4, label %L_8000dcc64_ft
L_8000dcc64_ft:
  ; @pc 0x8000dcc64 word 0xf9402aac
  %r6057.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6057 = load i64, ptr %r6057.p, align 8, !alias.scope !3, !noalias !4
  %t6058 = add i64 %r6057, 80
  %gmp6059 = inttoptr i64 %t6058 to ptr
  %gml6060 = load i64, ptr %gmp6059, align 1, !alias.scope !4, !noalias !3
  %wp6061 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6060, ptr %wp6061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc68 word 0xb400598c
  %r6062.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6062 = load i64, ptr %r6062.p, align 8, !alias.scope !3, !noalias !4
  %cmp6063 = icmp eq i64 %r6062, 0
  br i1 %cmp6063, label %L_8000dd798, label %L_8000dcc6c_ft
L_8000dcc6c_ft:
  ; @pc 0x8000dcc6c word 0xf940018d
  %r6064.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6064 = load i64, ptr %r6064.p, align 8, !alias.scope !3, !noalias !4
  %gmp6065 = inttoptr i64 %r6064 to ptr
  %gml6066 = load i64, ptr %gmp6065, align 1, !alias.scope !4, !noalias !3
  %wp6067 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6066, ptr %wp6067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc70 word 0xd2c0002e
  %wp6068 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 4294967296, ptr %wp6068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc74 word 0x8b0e01ad
  %r6069.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6069 = load i64, ptr %r6069.p, align 8, !alias.scope !3, !noalias !4
  %r6070.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6070 = load i64, ptr %r6070.p, align 8, !alias.scope !3, !noalias !4
  %t6071 = add i64 %r6069, %r6070
  %wp6072 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6071, ptr %wp6072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcc78 word 0xf900018d
  %r6073.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6073 = load i64, ptr %r6073.p, align 8, !alias.scope !3, !noalias !4
  %r6074.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6074 = load i64, ptr %r6074.p, align 8, !alias.scope !3, !noalias !4
  %gmp6075 = inttoptr i64 %r6073 to ptr
  store i64 %r6074, ptr %gmp6075, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcc7c
L_8000dcce4_ft:
  ; @pc 0x8000dcce4 word 0x52800028
  %c6233 = zext i32 1 to i64
  %wp6234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6233, ptr %wp6234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcce8 word 0x390042a8
  %r6235.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6235 = load i64, ptr %r6235.p, align 8, !alias.scope !3, !noalias !4
  %t6236 = add i64 %r6235, 16
  %r6237.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6237 = load i64, ptr %r6237.p, align 8, !alias.scope !3, !noalias !4
  %c6238 = trunc i64 %r6237 to i32
  %c6239 = trunc i32 %c6238 to i8
  %gmp6240 = inttoptr i64 %t6236 to ptr
  store i8 %c6239, ptr %gmp6240, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dccec word 0x9001c388
  %wp6241 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp6241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccf0 word 0xf9479508
  %r6242.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6242 = load i64, ptr %r6242.p, align 8, !alias.scope !3, !noalias !4
  %t6243 = add i64 %r6242, 3880
  %gmp6244 = inttoptr i64 %t6243 to ptr
  %gml6245 = load i64, ptr %gmp6244, align 1, !alias.scope !4, !noalias !3
  %wp6246 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6245, ptr %wp6246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccf4 word 0xb9400108
  %r6247.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6247 = load i64, ptr %r6247.p, align 8, !alias.scope !3, !noalias !4
  %gmp6248 = inttoptr i64 %r6247 to ptr
  %gml6249 = load i32, ptr %gmp6248, align 1, !alias.scope !4, !noalias !3
  %c6250 = zext i32 %gml6249 to i64
  %wp6251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6250, ptr %wp6251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dccf8 word 0x34005588
  %r6252.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6252 = load i64, ptr %r6252.p, align 8, !alias.scope !3, !noalias !4
  %c6253 = trunc i64 %r6252 to i32
  %cmp6254 = icmp eq i32 %c6253, 0
  br i1 %cmp6254, label %L_8000dd7a8, label %L_8000dccfc_ft
L_8000dccfc_ft:
  ; @pc 0x8000dccfc word 0xa94226a8
  %r6255.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6255 = load i64, ptr %r6255.p, align 8, !alias.scope !3, !noalias !4
  %t6256 = add i64 %r6255, 32
  %t6257 = add i64 %t6256, 8
  %gmp6258 = inttoptr i64 %t6256 to ptr
  %gml6259 = load i64, ptr %gmp6258, align 1, !alias.scope !4, !noalias !3
  %gmp6260 = inttoptr i64 %t6257 to ptr
  %gml6261 = load i64, ptr %gmp6260, align 1, !alias.scope !4, !noalias !3
  %wp6262 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml6259, ptr %wp6262, align 8, !alias.scope !3, !noalias !4
  %wp6263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6261, ptr %wp6263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd00 word 0x9100c10a
  %r6264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r6264 = load i64, ptr %r6264.p, align 8, !alias.scope !3, !noalias !4
  %t6265 = add i64 %r6264, 48
  %wp6266 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t6265, ptr %wp6266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd04 word 0xeb09015f
  %r6267.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6267 = load i64, ptr %r6267.p, align 8, !alias.scope !3, !noalias !4
  %r6268.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6268 = load i64, ptr %r6268.p, align 8, !alias.scope !3, !noalias !4
  %t6269 = sub i64 %r6267, %r6268
  %fn6270 = icmp slt i64 %t6269, 0
  %fz6271 = icmp eq i64 %t6269, 0
  %fc6272 = icmp uge i64 %r6267, %r6268
  %fx16273 = xor i64 %r6267, %r6268
  %fx26274 = xor i64 %r6267, %t6269
  %fva6275 = and i64 %fx16273, %fx26274
  %fv6276 = icmp slt i64 %fva6275, 0
  %nz6277 = zext i1 %fn6270 to i64
  %zz6278 = zext i1 %fz6271 to i64
  %cz6279 = zext i1 %fc6272 to i64
  %vz6280 = zext i1 %fv6276 to i64
  %ns6281 = shl i64 %nz6277, 31
  %zs6282 = shl i64 %zz6278, 30
  %cs6283 = shl i64 %cz6279, 29
  %vs6284 = shl i64 %vz6280, 28
  %nzor6285 = or i64 %ns6281, %zs6282
  %cvor6286 = or i64 %cs6283, %vs6284
  %nzcv6287 = or i64 %nzor6285, %cvor6286
  %wp6288 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6287, ptr %wp6288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd08 word 0x54005508
  %r6289.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6289 = load i64, ptr %r6289.p, align 8, !alias.scope !3, !noalias !4
  %fsh6291 = lshr i64 %r6289, 29
  %ftr6292 = trunc i64 %fsh6291 to i1
  %fsh6293 = lshr i64 %r6289, 30
  %ftr6294 = trunc i64 %fsh6293 to i1
  %fnz6295 = xor i1 %ftr6294, true
  %cond6290 = and i1 %ftr6292, %fnz6295
  br i1 %cond6290, label %L_8000dd7a8, label %L_8000dcd0c_ft
L_8000dcd0c_ft:
  ; @pc 0x8000dcd0c word 0xf94022aa
  %r6296.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6296 = load i64, ptr %r6296.p, align 8, !alias.scope !3, !noalias !4
  %t6297 = add i64 %r6296, 64
  %gmp6298 = inttoptr i64 %t6297 to ptr
  %gml6299 = load i64, ptr %gmp6298, align 1, !alias.scope !4, !noalias !3
  %wp6300 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6299, ptr %wp6300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd10 word 0xf94002a9
  %r6301.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6301 = load i64, ptr %r6301.p, align 8, !alias.scope !3, !noalias !4
  %gmp6302 = inttoptr i64 %r6301 to ptr
  %gml6303 = load i64, ptr %gmp6302, align 1, !alias.scope !4, !noalias !3
  %wp6304 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6303, ptr %wp6304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd14 word 0xeb0a012b
  %r6305.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6305 = load i64, ptr %r6305.p, align 8, !alias.scope !3, !noalias !4
  %r6306.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6306 = load i64, ptr %r6306.p, align 8, !alias.scope !3, !noalias !4
  %t6307 = sub i64 %r6305, %r6306
  %fn6308 = icmp slt i64 %t6307, 0
  %fz6309 = icmp eq i64 %t6307, 0
  %fc6310 = icmp uge i64 %r6305, %r6306
  %fx16311 = xor i64 %r6305, %r6306
  %fx26312 = xor i64 %r6305, %t6307
  %fva6313 = and i64 %fx16311, %fx26312
  %fv6314 = icmp slt i64 %fva6313, 0
  %nz6315 = zext i1 %fn6308 to i64
  %zz6316 = zext i1 %fz6309 to i64
  %cz6317 = zext i1 %fc6310 to i64
  %vz6318 = zext i1 %fv6314 to i64
  %ns6319 = shl i64 %nz6315, 31
  %zs6320 = shl i64 %zz6316, 30
  %cs6321 = shl i64 %cz6317, 29
  %vs6322 = shl i64 %vz6318, 28
  %nzor6323 = or i64 %ns6319, %zs6320
  %cvor6324 = or i64 %cs6321, %vs6322
  %nzcv6325 = or i64 %nzor6323, %cvor6324
  %wp6326 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6325, ptr %wp6326, align 8, !alias.scope !3, !noalias !4
  %wp6327 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6307, ptr %wp6327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd18 word 0x54000220
  %r6328.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6328 = load i64, ptr %r6328.p, align 8, !alias.scope !3, !noalias !4
  %fsh6330 = lshr i64 %r6328, 30
  %cond6329 = trunc i64 %fsh6330 to i1
  br i1 %cond6329, label %L_8000dcd5c, label %L_8000dcd1c_ft
L_8000dcd1c_ft:
  ; @pc 0x8000dcd1c word 0xf9402aac
  %r6331.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6331 = load i64, ptr %r6331.p, align 8, !alias.scope !3, !noalias !4
  %t6332 = add i64 %r6331, 80
  %gmp6333 = inttoptr i64 %t6332 to ptr
  %gml6334 = load i64, ptr %gmp6333, align 1, !alias.scope !4, !noalias !3
  %wp6335 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml6334, ptr %wp6335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd20 word 0xb400558c
  %r6336.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6336 = load i64, ptr %r6336.p, align 8, !alias.scope !3, !noalias !4
  %cmp6337 = icmp eq i64 %r6336, 0
  br i1 %cmp6337, label %L_8000dd7d0, label %L_8000dcd24_ft
L_8000dcd24_ft:
  ; @pc 0x8000dcd24 word 0xf940018d
  %r6338.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6338 = load i64, ptr %r6338.p, align 8, !alias.scope !3, !noalias !4
  %gmp6339 = inttoptr i64 %r6338 to ptr
  %gml6340 = load i64, ptr %gmp6339, align 1, !alias.scope !4, !noalias !3
  %wp6341 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6340, ptr %wp6341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd28 word 0xd2c0002e
  %wp6342 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 4294967296, ptr %wp6342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd2c word 0x8b0e01ad
  %r6343.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6343 = load i64, ptr %r6343.p, align 8, !alias.scope !3, !noalias !4
  %r6344.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6344 = load i64, ptr %r6344.p, align 8, !alias.scope !3, !noalias !4
  %t6345 = add i64 %r6343, %r6344
  %wp6346 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t6345, ptr %wp6346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcd30 word 0xf900018d
  %r6347.p = getelementptr inbounds i8, ptr %c, i64 96
  %r6347 = load i64, ptr %r6347.p, align 8, !alias.scope !3, !noalias !4
  %r6348.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6348 = load i64, ptr %r6348.p, align 8, !alias.scope !3, !noalias !4
  %gmp6349 = inttoptr i64 %r6347 to ptr
  store i64 %r6348, ptr %gmp6349, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcd34
L_8000dcd94_ft:
  ; @pc 0x8000dcd94 word 0x17fffdf8
  br label %L_8000dc574
L_8000dcdb4_ft:
  ; @pc 0x8000dcdb4 word 0xa9422aa9
  %r6505.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6505 = load i64, ptr %r6505.p, align 8, !alias.scope !3, !noalias !4
  %t6506 = add i64 %r6505, 32
  %t6507 = add i64 %t6506, 8
  %gmp6508 = inttoptr i64 %t6506 to ptr
  %gml6509 = load i64, ptr %gmp6508, align 1, !alias.scope !4, !noalias !3
  %gmp6510 = inttoptr i64 %t6507 to ptr
  %gml6511 = load i64, ptr %gmp6510, align 1, !alias.scope !4, !noalias !3
  %wp6512 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6509, ptr %wp6512, align 8, !alias.scope !3, !noalias !4
  %wp6513 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6511, ptr %wp6513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdb8 word 0x9100c12b
  %r6514.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6514 = load i64, ptr %r6514.p, align 8, !alias.scope !3, !noalias !4
  %t6515 = add i64 %r6514, 48
  %wp6516 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6515, ptr %wp6516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdbc word 0xeb0a017f
  %r6517.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6517 = load i64, ptr %r6517.p, align 8, !alias.scope !3, !noalias !4
  %r6518.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6518 = load i64, ptr %r6518.p, align 8, !alias.scope !3, !noalias !4
  %t6519 = sub i64 %r6517, %r6518
  %fn6520 = icmp slt i64 %t6519, 0
  %fz6521 = icmp eq i64 %t6519, 0
  %fc6522 = icmp uge i64 %r6517, %r6518
  %fx16523 = xor i64 %r6517, %r6518
  %fx26524 = xor i64 %r6517, %t6519
  %fva6525 = and i64 %fx16523, %fx26524
  %fv6526 = icmp slt i64 %fva6525, 0
  %nz6527 = zext i1 %fn6520 to i64
  %zz6528 = zext i1 %fz6521 to i64
  %cz6529 = zext i1 %fc6522 to i64
  %vz6530 = zext i1 %fv6526 to i64
  %ns6531 = shl i64 %nz6527, 31
  %zs6532 = shl i64 %zz6528, 30
  %cs6533 = shl i64 %cz6529, 29
  %vs6534 = shl i64 %vz6530, 28
  %nzor6535 = or i64 %ns6531, %zs6532
  %cvor6536 = or i64 %cs6533, %vs6534
  %nzcv6537 = or i64 %nzor6535, %cvor6536
  %wp6538 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6537, ptr %wp6538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdc0 word 0x54005108
  %r6539.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6539 = load i64, ptr %r6539.p, align 8, !alias.scope !3, !noalias !4
  %fsh6541 = lshr i64 %r6539, 29
  %ftr6542 = trunc i64 %fsh6541 to i1
  %fsh6543 = lshr i64 %r6539, 30
  %ftr6544 = trunc i64 %fsh6543 to i1
  %fnz6545 = xor i1 %ftr6544, true
  %cond6540 = and i1 %ftr6542, %fnz6545
  br i1 %cond6540, label %L_8000dd7e0, label %L_8000dcdc4_ft
L_8000dcdc4_ft:
  ; @pc 0x8000dcdc4 word 0xf94022ab
  %r6546.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6546 = load i64, ptr %r6546.p, align 8, !alias.scope !3, !noalias !4
  %t6547 = add i64 %r6546, 64
  %gmp6548 = inttoptr i64 %t6547 to ptr
  %gml6549 = load i64, ptr %gmp6548, align 1, !alias.scope !4, !noalias !3
  %wp6550 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6549, ptr %wp6550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdc8 word 0xf94002aa
  %r6551.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6551 = load i64, ptr %r6551.p, align 8, !alias.scope !3, !noalias !4
  %gmp6552 = inttoptr i64 %r6551 to ptr
  %gml6553 = load i64, ptr %gmp6552, align 1, !alias.scope !4, !noalias !3
  %wp6554 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6553, ptr %wp6554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdcc word 0xeb0b014c
  %r6555.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6555 = load i64, ptr %r6555.p, align 8, !alias.scope !3, !noalias !4
  %r6556.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6556 = load i64, ptr %r6556.p, align 8, !alias.scope !3, !noalias !4
  %t6557 = sub i64 %r6555, %r6556
  %fn6558 = icmp slt i64 %t6557, 0
  %fz6559 = icmp eq i64 %t6557, 0
  %fc6560 = icmp uge i64 %r6555, %r6556
  %fx16561 = xor i64 %r6555, %r6556
  %fx26562 = xor i64 %r6555, %t6557
  %fva6563 = and i64 %fx16561, %fx26562
  %fv6564 = icmp slt i64 %fva6563, 0
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
  %wp6577 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6557, ptr %wp6577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdd0 word 0x54000220
  %r6578.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6578 = load i64, ptr %r6578.p, align 8, !alias.scope !3, !noalias !4
  %fsh6580 = lshr i64 %r6578, 30
  %cond6579 = trunc i64 %fsh6580 to i1
  br i1 %cond6579, label %L_8000dce14, label %L_8000dcdd4_ft
L_8000dcdd4_ft:
  ; @pc 0x8000dcdd4 word 0xf9402aad
  %r6581.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6581 = load i64, ptr %r6581.p, align 8, !alias.scope !3, !noalias !4
  %t6582 = add i64 %r6581, 80
  %gmp6583 = inttoptr i64 %t6582 to ptr
  %gml6584 = load i64, ptr %gmp6583, align 1, !alias.scope !4, !noalias !3
  %wp6585 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6584, ptr %wp6585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcdd8 word 0xb40042cd
  %r6586.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6586 = load i64, ptr %r6586.p, align 8, !alias.scope !3, !noalias !4
  %cmp6587 = icmp eq i64 %r6586, 0
  br i1 %cmp6587, label %L_8000dd630, label %L_8000dcddc_ft
L_8000dcddc_ft:
  ; @pc 0x8000dcddc word 0xf94001ae
  %r6588.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6588 = load i64, ptr %r6588.p, align 8, !alias.scope !3, !noalias !4
  %gmp6589 = inttoptr i64 %r6588 to ptr
  %gml6590 = load i64, ptr %gmp6589, align 1, !alias.scope !4, !noalias !3
  %wp6591 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml6590, ptr %wp6591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcde0 word 0xd2c0002f
  %wp6592 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4294967296, ptr %wp6592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcde4 word 0x8b0f01ce
  %r6593.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6593 = load i64, ptr %r6593.p, align 8, !alias.scope !3, !noalias !4
  %r6594.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6594 = load i64, ptr %r6594.p, align 8, !alias.scope !3, !noalias !4
  %t6595 = add i64 %r6593, %r6594
  %wp6596 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6595, ptr %wp6596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcde8 word 0xf90001ae
  %r6597.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6597 = load i64, ptr %r6597.p, align 8, !alias.scope !3, !noalias !4
  %r6598.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6598 = load i64, ptr %r6598.p, align 8, !alias.scope !3, !noalias !4
  %gmp6599 = inttoptr i64 %r6597 to ptr
  store i64 %r6598, ptr %gmp6599, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dcdec
L_8000dce5c_ft:
  ; @pc 0x8000dce5c word 0xa9422aa9
  %r6722.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6722 = load i64, ptr %r6722.p, align 8, !alias.scope !3, !noalias !4
  %t6723 = add i64 %r6722, 32
  %t6724 = add i64 %t6723, 8
  %gmp6725 = inttoptr i64 %t6723 to ptr
  %gml6726 = load i64, ptr %gmp6725, align 1, !alias.scope !4, !noalias !3
  %gmp6727 = inttoptr i64 %t6724 to ptr
  %gml6728 = load i64, ptr %gmp6727, align 1, !alias.scope !4, !noalias !3
  %wp6729 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml6726, ptr %wp6729, align 8, !alias.scope !3, !noalias !4
  %wp6730 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6728, ptr %wp6730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce60 word 0x9100c12b
  %r6731.p = getelementptr inbounds i8, ptr %c, i64 72
  %r6731 = load i64, ptr %r6731.p, align 8, !alias.scope !3, !noalias !4
  %t6732 = add i64 %r6731, 48
  %wp6733 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t6732, ptr %wp6733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce64 word 0xeb0a017f
  %r6734.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6734 = load i64, ptr %r6734.p, align 8, !alias.scope !3, !noalias !4
  %r6735.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6735 = load i64, ptr %r6735.p, align 8, !alias.scope !3, !noalias !4
  %t6736 = sub i64 %r6734, %r6735
  %fn6737 = icmp slt i64 %t6736, 0
  %fz6738 = icmp eq i64 %t6736, 0
  %fc6739 = icmp uge i64 %r6734, %r6735
  %fx16740 = xor i64 %r6734, %r6735
  %fx26741 = xor i64 %r6734, %t6736
  %fva6742 = and i64 %fx16740, %fx26741
  %fv6743 = icmp slt i64 %fva6742, 0
  %nz6744 = zext i1 %fn6737 to i64
  %zz6745 = zext i1 %fz6738 to i64
  %cz6746 = zext i1 %fc6739 to i64
  %vz6747 = zext i1 %fv6743 to i64
  %ns6748 = shl i64 %nz6744, 31
  %zs6749 = shl i64 %zz6745, 30
  %cs6750 = shl i64 %cz6746, 29
  %vs6751 = shl i64 %vz6747, 28
  %nzor6752 = or i64 %ns6748, %zs6749
  %cvor6753 = or i64 %cs6750, %vs6751
  %nzcv6754 = or i64 %nzor6752, %cvor6753
  %wp6755 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6754, ptr %wp6755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce68 word 0x54004d08
  %r6756.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6756 = load i64, ptr %r6756.p, align 8, !alias.scope !3, !noalias !4
  %fsh6758 = lshr i64 %r6756, 29
  %ftr6759 = trunc i64 %fsh6758 to i1
  %fsh6760 = lshr i64 %r6756, 30
  %ftr6761 = trunc i64 %fsh6760 to i1
  %fnz6762 = xor i1 %ftr6761, true
  %cond6757 = and i1 %ftr6759, %fnz6762
  br i1 %cond6757, label %L_8000dd808, label %L_8000dce6c_ft
L_8000dce6c_ft:
  ; @pc 0x8000dce6c word 0xf94022ab
  %r6763.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6763 = load i64, ptr %r6763.p, align 8, !alias.scope !3, !noalias !4
  %t6764 = add i64 %r6763, 64
  %gmp6765 = inttoptr i64 %t6764 to ptr
  %gml6766 = load i64, ptr %gmp6765, align 1, !alias.scope !4, !noalias !3
  %wp6767 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml6766, ptr %wp6767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce70 word 0xf94002aa
  %r6768.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6768 = load i64, ptr %r6768.p, align 8, !alias.scope !3, !noalias !4
  %gmp6769 = inttoptr i64 %r6768 to ptr
  %gml6770 = load i64, ptr %gmp6769, align 1, !alias.scope !4, !noalias !3
  %wp6771 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml6770, ptr %wp6771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce74 word 0xeb0b014c
  %r6772.p = getelementptr inbounds i8, ptr %c, i64 80
  %r6772 = load i64, ptr %r6772.p, align 8, !alias.scope !3, !noalias !4
  %r6773.p = getelementptr inbounds i8, ptr %c, i64 88
  %r6773 = load i64, ptr %r6773.p, align 8, !alias.scope !3, !noalias !4
  %t6774 = sub i64 %r6772, %r6773
  %fn6775 = icmp slt i64 %t6774, 0
  %fz6776 = icmp eq i64 %t6774, 0
  %fc6777 = icmp uge i64 %r6772, %r6773
  %fx16778 = xor i64 %r6772, %r6773
  %fx26779 = xor i64 %r6772, %t6774
  %fva6780 = and i64 %fx16778, %fx26779
  %fv6781 = icmp slt i64 %fva6780, 0
  %nz6782 = zext i1 %fn6775 to i64
  %zz6783 = zext i1 %fz6776 to i64
  %cz6784 = zext i1 %fc6777 to i64
  %vz6785 = zext i1 %fv6781 to i64
  %ns6786 = shl i64 %nz6782, 31
  %zs6787 = shl i64 %zz6783, 30
  %cs6788 = shl i64 %cz6784, 29
  %vs6789 = shl i64 %vz6785, 28
  %nzor6790 = or i64 %ns6786, %zs6787
  %cvor6791 = or i64 %cs6788, %vs6789
  %nzcv6792 = or i64 %nzor6790, %cvor6791
  %wp6793 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv6792, ptr %wp6793, align 8, !alias.scope !3, !noalias !4
  %wp6794 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t6774, ptr %wp6794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce78 word 0x54000220
  %r6795.p = getelementptr inbounds i8, ptr %c, i64 272
  %r6795 = load i64, ptr %r6795.p, align 8, !alias.scope !3, !noalias !4
  %fsh6797 = lshr i64 %r6795, 30
  %cond6796 = trunc i64 %fsh6797 to i1
  br i1 %cond6796, label %L_8000dcebc, label %L_8000dce7c_ft
L_8000dce7c_ft:
  ; @pc 0x8000dce7c word 0xf9402aad
  %r6798.p = getelementptr inbounds i8, ptr %c, i64 168
  %r6798 = load i64, ptr %r6798.p, align 8, !alias.scope !3, !noalias !4
  %t6799 = add i64 %r6798, 80
  %gmp6800 = inttoptr i64 %t6799 to ptr
  %gml6801 = load i64, ptr %gmp6800, align 1, !alias.scope !4, !noalias !3
  %wp6802 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml6801, ptr %wp6802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce80 word 0xb4004d8d
  %r6803.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6803 = load i64, ptr %r6803.p, align 8, !alias.scope !3, !noalias !4
  %cmp6804 = icmp eq i64 %r6803, 0
  br i1 %cmp6804, label %L_8000dd830, label %L_8000dce84_ft
L_8000dce84_ft:
  ; @pc 0x8000dce84 word 0xf94001ae
  %r6805.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6805 = load i64, ptr %r6805.p, align 8, !alias.scope !3, !noalias !4
  %gmp6806 = inttoptr i64 %r6805 to ptr
  %gml6807 = load i64, ptr %gmp6806, align 1, !alias.scope !4, !noalias !3
  %wp6808 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml6807, ptr %wp6808, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce88 word 0xd2c0002f
  %wp6809 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 4294967296, ptr %wp6809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce8c word 0x8b0f01ce
  %r6810.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6810 = load i64, ptr %r6810.p, align 8, !alias.scope !3, !noalias !4
  %r6811.p = getelementptr inbounds i8, ptr %c, i64 120
  %r6811 = load i64, ptr %r6811.p, align 8, !alias.scope !3, !noalias !4
  %t6812 = add i64 %r6810, %r6811
  %wp6813 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t6812, ptr %wp6813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dce90 word 0xf90001ae
  %r6814.p = getelementptr inbounds i8, ptr %c, i64 104
  %r6814 = load i64, ptr %r6814.p, align 8, !alias.scope !3, !noalias !4
  %r6815.p = getelementptr inbounds i8, ptr %c, i64 112
  %r6815 = load i64, ptr %r6815.p, align 8, !alias.scope !3, !noalias !4
  %gmp6816 = inttoptr i64 %r6814 to ptr
  store i64 %r6815, ptr %gmp6816, align 1, !alias.scope !4, !noalias !3
  br label %L_8000dce94
L_8000dcf10_ft:
  ; @pc 0x8000dcf10 word 0x2a1f03e8
  %t6994 = or i32 0, 0
  %c6995 = zext i32 %t6994 to i64
  %wp6996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c6995, ptr %wp6996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf14 word 0x17fffb2c
  br label %L_8000dbbc4
L_8000dcf64_ft:
  ; @pc 0x8000dcf64 word 0xb9408a88
  %r7073.p = getelementptr inbounds i8, ptr %c, i64 160
  %r7073 = load i64, ptr %r7073.p, align 8, !alias.scope !3, !noalias !4
  %t7074 = add i64 %r7073, 136
  %gmp7075 = inttoptr i64 %t7074 to ptr
  %gml7076 = load i32, ptr %gmp7075, align 1, !alias.scope !4, !noalias !3
  %c7077 = zext i32 %gml7076 to i64
  %wp7078 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7077, ptr %wp7078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf68 word 0xeb1902bf
  %r7079.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7079 = load i64, ptr %r7079.p, align 8, !alias.scope !3, !noalias !4
  %r7080.p = getelementptr inbounds i8, ptr %c, i64 200
  %r7080 = load i64, ptr %r7080.p, align 8, !alias.scope !3, !noalias !4
  %t7081 = sub i64 %r7079, %r7080
  %fn7082 = icmp slt i64 %t7081, 0
  %fz7083 = icmp eq i64 %t7081, 0
  %fc7084 = icmp uge i64 %r7079, %r7080
  %fx17085 = xor i64 %r7079, %r7080
  %fx27086 = xor i64 %r7079, %t7081
  %fva7087 = and i64 %fx17085, %fx27086
  %fv7088 = icmp slt i64 %fva7087, 0
  %nz7089 = zext i1 %fn7082 to i64
  %zz7090 = zext i1 %fz7083 to i64
  %cz7091 = zext i1 %fc7084 to i64
  %vz7092 = zext i1 %fv7088 to i64
  %ns7093 = shl i64 %nz7089, 31
  %zs7094 = shl i64 %zz7090, 30
  %cs7095 = shl i64 %cz7091, 29
  %vs7096 = shl i64 %vz7092, 28
  %nzor7097 = or i64 %ns7093, %zs7094
  %cvor7098 = or i64 %cs7095, %vs7096
  %nzcv7099 = or i64 %nzor7097, %cvor7098
  %wp7100 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7099, ptr %wp7100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf6c word 0x0b080308
  %r7101.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7101 = load i64, ptr %r7101.p, align 8, !alias.scope !3, !noalias !4
  %c7102 = trunc i64 %r7101 to i32
  %r7103.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7103 = load i64, ptr %r7103.p, align 8, !alias.scope !3, !noalias !4
  %c7104 = trunc i64 %r7103 to i32
  %t7105 = add i32 %c7102, %c7104
  %c7106 = zext i32 %t7105 to i64
  %wp7107 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7106, ptr %wp7107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf70 word 0x51000518
  %r7108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7108 = load i64, ptr %r7108.p, align 8, !alias.scope !3, !noalias !4
  %c7109 = trunc i64 %r7108 to i32
  %t7110 = sub i32 %c7109, 1
  %c7111 = zext i32 %t7110 to i64
  %wp7112 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c7111, ptr %wp7112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcf74 word 0x54004860
  %r7113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7113 = load i64, ptr %r7113.p, align 8, !alias.scope !3, !noalias !4
  %fsh7115 = lshr i64 %r7113, 30
  %cond7114 = trunc i64 %fsh7115 to i1
  br i1 %cond7114, label %L_8000dd880, label %L_8000dcf78
L_8000dcfd4_ft:
  ; @pc 0x8000dcfd4 word 0xf9401be8
  %r7241.p = getelementptr inbounds i8, ptr %c, i64 256
  %r7241 = load i64, ptr %r7241.p, align 8, !alias.scope !3, !noalias !4
  %t7242 = add i64 %r7241, 48
  %gmp7243 = inttoptr i64 %t7242 to ptr
  %gml7244 = load i64, ptr %gmp7243, align 1, !alias.scope !4, !noalias !3
  %wp7245 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7244, ptr %wp7245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfd8 word 0xb001c409
  %wp7246 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp7246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfdc word 0x13083f43
  %r7247.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7247 = load i64, ptr %r7247.p, align 8, !alias.scope !3, !noalias !4
  %c7248 = trunc i64 %r7247 to i32
  %ror7249 = call i32 @llvm.fshr.i32(i32 %c7248, i32 %c7248, i32 8)
  %t7250 = lshr i32 %c7248, 15
  %t7251 = and i32 %t7250, 1
  %t7252 = sub i32 0, %t7251
  %t7253 = and i32 %t7252, -256
  %t7254 = and i32 %ror7249, 255
  %t7255 = or i32 %t7253, %t7254
  %c7256 = zext i32 %t7255 to i64
  %wp7257 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c7256, ptr %wp7257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfe0 word 0xf9400108
  %r7258.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7258 = load i64, ptr %r7258.p, align 8, !alias.scope !3, !noalias !4
  %gmp7259 = inttoptr i64 %r7258 to ptr
  %gml7260 = load i64, ptr %gmp7259, align 1, !alias.scope !4, !noalias !3
  %wp7261 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7260, ptr %wp7261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfe4 word 0xf9402908
  %r7262.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7262 = load i64, ptr %r7262.p, align 8, !alias.scope !3, !noalias !4
  %t7263 = add i64 %r7262, 80
  %gmp7264 = inttoptr i64 %t7263 to ptr
  %gml7265 = load i64, ptr %gmp7264, align 1, !alias.scope !4, !noalias !3
  %wp7266 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7265, ptr %wp7266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfe8 word 0xf9478d29
  %r7267.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7267 = load i64, ptr %r7267.p, align 8, !alias.scope !3, !noalias !4
  %t7268 = add i64 %r7267, 3864
  %gmp7269 = inttoptr i64 %t7268 to ptr
  %gml7270 = load i64, ptr %gmp7269, align 1, !alias.scope !4, !noalias !3
  %wp7271 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7270, ptr %wp7271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcfec word 0xeb09011f
  %r7272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7272 = load i64, ptr %r7272.p, align 8, !alias.scope !3, !noalias !4
  %r7273.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7273 = load i64, ptr %r7273.p, align 8, !alias.scope !3, !noalias !4
  %t7274 = sub i64 %r7272, %r7273
  %fn7275 = icmp slt i64 %t7274, 0
  %fz7276 = icmp eq i64 %t7274, 0
  %fc7277 = icmp uge i64 %r7272, %r7273
  %fx17278 = xor i64 %r7272, %r7273
  %fx27279 = xor i64 %r7272, %t7274
  %fva7280 = and i64 %fx17278, %fx27279
  %fv7281 = icmp slt i64 %fva7280, 0
  %nz7282 = zext i1 %fn7275 to i64
  %zz7283 = zext i1 %fz7276 to i64
  %cz7284 = zext i1 %fc7277 to i64
  %vz7285 = zext i1 %fv7281 to i64
  %ns7286 = shl i64 %nz7282, 31
  %zs7287 = shl i64 %zz7283, 30
  %cs7288 = shl i64 %cz7284, 29
  %vs7289 = shl i64 %vz7285, 28
  %nzor7290 = or i64 %ns7286, %zs7287
  %cvor7291 = or i64 %cs7288, %vs7289
  %nzcv7292 = or i64 %nzor7290, %cvor7291
  %wp7293 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7292, ptr %wp7293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcff0 word 0x54002141
  %r7294.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7294 = load i64, ptr %r7294.p, align 8, !alias.scope !3, !noalias !4
  %fsh7296 = lshr i64 %r7294, 30
  %ftr7297 = trunc i64 %fsh7296 to i1
  %cond7295 = xor i1 %ftr7297, true
  br i1 %cond7295, label %L_8000dd418, label %L_8000dcff4_ft
L_8000dcff4_ft:
  ; @pc 0x8000dcff4 word 0x52800028
  %c7298 = zext i32 1 to i64
  %wp7299 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7298, ptr %wp7299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dcff8 word 0x390042e8
  %r7300.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7300 = load i64, ptr %r7300.p, align 8, !alias.scope !3, !noalias !4
  %t7301 = add i64 %r7300, 16
  %r7302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7302 = load i64, ptr %r7302.p, align 8, !alias.scope !3, !noalias !4
  %c7303 = trunc i64 %r7302 to i32
  %c7304 = trunc i32 %c7303 to i8
  %gmp7305 = inttoptr i64 %t7301 to ptr
  store i8 %c7304, ptr %gmp7305, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dcffc word 0x9001c388
  %wp7306 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp7306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd000 word 0xf9479508
  %r7307.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7307 = load i64, ptr %r7307.p, align 8, !alias.scope !3, !noalias !4
  %t7308 = add i64 %r7307, 3880
  %gmp7309 = inttoptr i64 %t7308 to ptr
  %gml7310 = load i64, ptr %gmp7309, align 1, !alias.scope !4, !noalias !3
  %wp7311 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7310, ptr %wp7311, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd004 word 0xb9400108
  %r7312.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7312 = load i64, ptr %r7312.p, align 8, !alias.scope !3, !noalias !4
  %gmp7313 = inttoptr i64 %r7312 to ptr
  %gml7314 = load i32, ptr %gmp7313, align 1, !alias.scope !4, !noalias !3
  %c7315 = zext i32 %gml7314 to i64
  %wp7316 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7315, ptr %wp7316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd008 word 0x340033a8
  %r7317.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7317 = load i64, ptr %r7317.p, align 8, !alias.scope !3, !noalias !4
  %c7318 = trunc i64 %r7317 to i32
  %cmp7319 = icmp eq i32 %c7318, 0
  br i1 %cmp7319, label %L_8000dd67c, label %L_8000dd00c_ft
L_8000dd00c_ft:
  ; @pc 0x8000dd00c word 0xa94026e8
  %r7320.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7320 = load i64, ptr %r7320.p, align 8, !alias.scope !3, !noalias !4
  %t7321 = add i64 %r7320, 8
  %gmp7322 = inttoptr i64 %r7320 to ptr
  %gml7323 = load i64, ptr %gmp7322, align 1, !alias.scope !4, !noalias !3
  %gmp7324 = inttoptr i64 %t7321 to ptr
  %gml7325 = load i64, ptr %gmp7324, align 1, !alias.scope !4, !noalias !3
  %wp7326 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7323, ptr %wp7326, align 8, !alias.scope !3, !noalias !4
  %wp7327 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7325, ptr %wp7327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd010 word 0x9100610a
  %r7328.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7328 = load i64, ptr %r7328.p, align 8, !alias.scope !3, !noalias !4
  %t7329 = add i64 %r7328, 24
  %wp7330 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t7329, ptr %wp7330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd014 word 0xeb09015f
  %r7331.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7331 = load i64, ptr %r7331.p, align 8, !alias.scope !3, !noalias !4
  %r7332.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7332 = load i64, ptr %r7332.p, align 8, !alias.scope !3, !noalias !4
  %t7333 = sub i64 %r7331, %r7332
  %fn7334 = icmp slt i64 %t7333, 0
  %fz7335 = icmp eq i64 %t7333, 0
  %fc7336 = icmp uge i64 %r7331, %r7332
  %fx17337 = xor i64 %r7331, %r7332
  %fx27338 = xor i64 %r7331, %t7333
  %fva7339 = and i64 %fx17337, %fx27338
  %fv7340 = icmp slt i64 %fva7339, 0
  %nz7341 = zext i1 %fn7334 to i64
  %zz7342 = zext i1 %fz7335 to i64
  %cz7343 = zext i1 %fc7336 to i64
  %vz7344 = zext i1 %fv7340 to i64
  %ns7345 = shl i64 %nz7341, 31
  %zs7346 = shl i64 %zz7342, 30
  %cs7347 = shl i64 %cz7343, 29
  %vs7348 = shl i64 %vz7344, 28
  %nzor7349 = or i64 %ns7345, %zs7346
  %cvor7350 = or i64 %cs7347, %vs7348
  %nzcv7351 = or i64 %nzor7349, %cvor7350
  %wp7352 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7351, ptr %wp7352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd018 word 0x54003328
  %r7353.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7353 = load i64, ptr %r7353.p, align 8, !alias.scope !3, !noalias !4
  %fsh7355 = lshr i64 %r7353, 29
  %ftr7356 = trunc i64 %fsh7355 to i1
  %fsh7357 = lshr i64 %r7353, 30
  %ftr7358 = trunc i64 %fsh7357 to i1
  %fnz7359 = xor i1 %ftr7358, true
  %cond7354 = and i1 %ftr7356, %fnz7359
  br i1 %cond7354, label %L_8000dd67c, label %L_8000dd01c_ft
L_8000dd01c_ft:
  ; @pc 0x8000dd01c word 0x530c2c69
  %r7360.p = getelementptr inbounds i8, ptr %c, i64 24
  %r7360 = load i64, ptr %r7360.p, align 8, !alias.scope !3, !noalias !4
  %c7361 = trunc i64 %r7360 to i32
  %ror7362 = call i32 @llvm.fshr.i32(i32 %c7361, i32 %c7361, i32 12)
  %t7363 = and i32 %ror7362, -1048576
  %c7364 = zext i32 %t7363 to i64
  %wp7365 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7364, ptr %wp7365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd020 word 0x34004356
  %r7366.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7366 = load i64, ptr %r7366.p, align 8, !alias.scope !3, !noalias !4
  %c7367 = trunc i64 %r7366 to i32
  %cmp7368 = icmp eq i32 %c7367, 0
  br i1 %cmp7368, label %L_8000dd888, label %L_8000dd024_ft
L_8000dd024_ft:
  ; @pc 0x8000dd024 word 0x1103feca
  %r7369.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7369 = load i64, ptr %r7369.p, align 8, !alias.scope !3, !noalias !4
  %c7370 = trunc i64 %r7369 to i32
  %t7371 = add i32 %c7370, 255
  %c7372 = zext i32 %t7371 to i64
  %wp7373 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7372, ptr %wp7373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd028 word 0x114c0129
  %r7374.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7374 = load i64, ptr %r7374.p, align 8, !alias.scope !3, !noalias !4
  %c7375 = trunc i64 %r7374 to i32
  %t7376 = add i32 %c7375, 3145728
  %c7377 = zext i32 %t7376 to i64
  %wp7378 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7377, ptr %wp7378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd02c word 0x12185d4a
  %r7379.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7379 = load i64, ptr %r7379.p, align 8, !alias.scope !3, !noalias !4
  %c7380 = trunc i64 %r7379 to i32
  %t7381 = and i32 %c7380, -256
  %c7382 = zext i32 %t7381 to i64
  %wp7383 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7382, ptr %wp7383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd030 word 0x120c1129
  %r7384.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7384 = load i64, ptr %r7384.p, align 8, !alias.scope !3, !noalias !4
  %c7385 = trunc i64 %r7384 to i32
  %t7386 = and i32 %c7385, 32505856
  %c7387 = zext i32 %t7386 to i64
  %wp7388 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7387, ptr %wp7388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd034 word 0x2900f10a
  %r7389.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7389 = load i64, ptr %r7389.p, align 8, !alias.scope !3, !noalias !4
  %t7390 = add i64 %r7389, 4
  %t7391 = add i64 %t7390, 4
  %r7392.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7392 = load i64, ptr %r7392.p, align 8, !alias.scope !3, !noalias !4
  %c7393 = trunc i64 %r7392 to i32
  %gmp7394 = inttoptr i64 %t7390 to ptr
  store i32 %c7393, ptr %gmp7394, align 1, !alias.scope !4, !noalias !3
  %r7395.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7395 = load i64, ptr %r7395.p, align 8, !alias.scope !3, !noalias !4
  %c7396 = trunc i64 %r7395 to i32
  %gmp7397 = inttoptr i64 %t7391 to ptr
  store i32 %c7396, ptr %gmp7397, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd038 word 0x5281238a
  %c7398 = zext i32 2332 to i64
  %wp7399 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7398, ptr %wp7399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd03c word 0x72b0002a
  %r7400.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7400 = load i64, ptr %r7400.p, align 8, !alias.scope !3, !noalias !4
  %t7401 = and i64 %r7400, -4294901761
  %t7402 = or i64 %t7401, 2147549184
  %c7403 = trunc i64 %t7402 to i32
  %c7404 = zext i32 %c7403 to i64
  %wp7405 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7404, ptr %wp7405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd040 word 0x2a0a0129
  %r7406.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7406 = load i64, ptr %r7406.p, align 8, !alias.scope !3, !noalias !4
  %c7407 = trunc i64 %r7406 to i32
  %r7408.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7408 = load i64, ptr %r7408.p, align 8, !alias.scope !3, !noalias !4
  %c7409 = trunc i64 %r7408 to i32
  %t7410 = or i32 %c7409, %c7407
  %c7411 = zext i32 %t7410 to i64
  %wp7412 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7411, ptr %wp7412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd044 word 0x2a1b03ea
  %r7413.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7413 = load i64, ptr %r7413.p, align 8, !alias.scope !3, !noalias !4
  %c7414 = trunc i64 %r7413 to i32
  %t7415 = or i32 0, %c7414
  %c7416 = zext i32 %t7415 to i64
  %wp7417 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7416, ptr %wp7417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd048 word 0x11002129
  %r7418.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7418 = load i64, ptr %r7418.p, align 8, !alias.scope !3, !noalias !4
  %c7419 = trunc i64 %r7418 to i32
  %t7420 = add i32 %c7419, 8
  %c7421 = zext i32 %t7420 to i64
  %wp7422 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7421, ptr %wp7422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd04c word 0x2901a515
  %r7423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7423 = load i64, ptr %r7423.p, align 8, !alias.scope !3, !noalias !4
  %t7424 = add i64 %r7423, 12
  %t7425 = add i64 %t7424, 4
  %r7426.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7426 = load i64, ptr %r7426.p, align 8, !alias.scope !3, !noalias !4
  %c7427 = trunc i64 %r7426 to i32
  %gmp7428 = inttoptr i64 %t7424 to ptr
  store i32 %c7427, ptr %gmp7428, align 1, !alias.scope !4, !noalias !3
  %r7429.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7429 = load i64, ptr %r7429.p, align 8, !alias.scope !3, !noalias !4
  %c7430 = trunc i64 %r7429 to i32
  %gmp7431 = inttoptr i64 %t7425 to ptr
  store i32 %c7430, ptr %gmp7431, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd050 word 0x528000a9
  %c7432 = zext i32 5 to i64
  %wp7433 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7432, ptr %wp7433, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd054
L_8000dd084_ft:
  ; @pc 0x8000dd084 word 0xf9400108
  %r7512.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7512 = load i64, ptr %r7512.p, align 8, !alias.scope !3, !noalias !4
  %gmp7513 = inttoptr i64 %r7512 to ptr
  %gml7514 = load i64, ptr %gmp7513, align 1, !alias.scope !4, !noalias !3
  %wp7515 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7514, ptr %wp7515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd088 word 0x9001c409
  %wp7516 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419888128, ptr %wp7516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd08c word 0x13187f43
  %r7517.p = getelementptr inbounds i8, ptr %c, i64 208
  %r7517 = load i64, ptr %r7517.p, align 8, !alias.scope !3, !noalias !4
  %c7518 = trunc i64 %r7517 to i32
  %ror7519 = call i32 @llvm.fshr.i32(i32 %c7518, i32 %c7518, i32 24)
  %t7520 = lshr i32 %c7518, 31
  %t7521 = and i32 %t7520, 1
  %t7522 = sub i32 0, %t7521
  %t7523 = and i32 %t7522, -256
  %t7524 = and i32 %ror7519, 255
  %t7525 = or i32 %t7523, %t7524
  %c7526 = zext i32 %t7525 to i64
  %wp7527 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c7526, ptr %wp7527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd090 word 0xf9402908
  %r7528.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7528 = load i64, ptr %r7528.p, align 8, !alias.scope !3, !noalias !4
  %t7529 = add i64 %r7528, 80
  %gmp7530 = inttoptr i64 %t7529 to ptr
  %gml7531 = load i64, ptr %gmp7530, align 1, !alias.scope !4, !noalias !3
  %wp7532 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7531, ptr %wp7532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd094 word 0xf9478d29
  %r7533.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7533 = load i64, ptr %r7533.p, align 8, !alias.scope !3, !noalias !4
  %t7534 = add i64 %r7533, 3864
  %gmp7535 = inttoptr i64 %t7534 to ptr
  %gml7536 = load i64, ptr %gmp7535, align 1, !alias.scope !4, !noalias !3
  %wp7537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7536, ptr %wp7537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd098 word 0xeb09011f
  %r7538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7538 = load i64, ptr %r7538.p, align 8, !alias.scope !3, !noalias !4
  %r7539.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7539 = load i64, ptr %r7539.p, align 8, !alias.scope !3, !noalias !4
  %t7540 = sub i64 %r7538, %r7539
  %fn7541 = icmp slt i64 %t7540, 0
  %fz7542 = icmp eq i64 %t7540, 0
  %fc7543 = icmp uge i64 %r7538, %r7539
  %fx17544 = xor i64 %r7538, %r7539
  %fx27545 = xor i64 %r7538, %t7540
  %fva7546 = and i64 %fx17544, %fx27545
  %fv7547 = icmp slt i64 %fva7546, 0
  %nz7548 = zext i1 %fn7541 to i64
  %zz7549 = zext i1 %fz7542 to i64
  %cz7550 = zext i1 %fc7543 to i64
  %vz7551 = zext i1 %fv7547 to i64
  %ns7552 = shl i64 %nz7548, 31
  %zs7553 = shl i64 %zz7549, 30
  %cs7554 = shl i64 %cz7550, 29
  %vs7555 = shl i64 %vz7551, 28
  %nzor7556 = or i64 %ns7552, %zs7553
  %cvor7557 = or i64 %cs7554, %vs7555
  %nzcv7558 = or i64 %nzor7556, %cvor7557
  %wp7559 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7558, ptr %wp7559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd09c word 0x54004061
  %r7560.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7560 = load i64, ptr %r7560.p, align 8, !alias.scope !3, !noalias !4
  %fsh7562 = lshr i64 %r7560, 30
  %ftr7563 = trunc i64 %fsh7562 to i1
  %cond7561 = xor i1 %ftr7563, true
  br i1 %cond7561, label %L_8000dd8a8, label %L_8000dd0a0_ft
L_8000dd0a0_ft:
  ; @pc 0x8000dd0a0 word 0x52800028
  %c7564 = zext i32 1 to i64
  %wp7565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7564, ptr %wp7565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0a4 word 0x528000a1
  %c7566 = zext i32 5 to i64
  %wp7567 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c7566, ptr %wp7567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0a8 word 0x390042e8
  %r7568.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7568 = load i64, ptr %r7568.p, align 8, !alias.scope !3, !noalias !4
  %t7569 = add i64 %r7568, 16
  %r7570.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7570 = load i64, ptr %r7570.p, align 8, !alias.scope !3, !noalias !4
  %c7571 = trunc i64 %r7570 to i32
  %c7572 = trunc i32 %c7571 to i8
  %gmp7573 = inttoptr i64 %t7569 to ptr
  store i8 %c7572, ptr %gmp7573, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd0ac word 0xf001c3e8
  %wp7574 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp7574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0b0 word 0xaa1703e0
  %r7575.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7575 = load i64, ptr %r7575.p, align 8, !alias.scope !3, !noalias !4
  %t7576 = or i64 0, %r7575
  %wp7577 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t7576, ptr %wp7577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0b4 word 0xf9417908
  %r7578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7578 = load i64, ptr %r7578.p, align 8, !alias.scope !3, !noalias !4
  %t7579 = add i64 %r7578, 752
  %gmp7580 = inttoptr i64 %t7579 to ptr
  %gml7581 = load i64, ptr %gmp7580, align 1, !alias.scope !4, !noalias !3
  %wp7582 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7581, ptr %wp7582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0b8 word 0x2a0303e2
  %r7583.p = getelementptr inbounds i8, ptr %c, i64 24
  %r7583 = load i64, ptr %r7583.p, align 8, !alias.scope !3, !noalias !4
  %c7584 = trunc i64 %r7583 to i32
  %t7585 = or i32 0, %c7584
  %c7586 = zext i32 %t7585 to i64
  %wp7587 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c7586, ptr %wp7587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0bc word 0xaa1503e3
  %r7588.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7588 = load i64, ptr %r7588.p, align 8, !alias.scope !3, !noalias !4
  %t7589 = or i64 0, %r7588
  %wp7590 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t7589, ptr %wp7590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0c0 word 0xf9400108
  %r7591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7591 = load i64, ptr %r7591.p, align 8, !alias.scope !3, !noalias !4
  %gmp7592 = inttoptr i64 %r7591 to ptr
  %gml7593 = load i64, ptr %gmp7592, align 1, !alias.scope !4, !noalias !3
  %wp7594 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7593, ptr %wp7594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0c4 word 0xaa1603e4
  %r7595.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7595 = load i64, ptr %r7595.p, align 8, !alias.scope !3, !noalias !4
  %t7596 = or i64 0, %r7595
  %wp7597 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t7596, ptr %wp7597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd0c8 word 0xd63f0100
  %r7598.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7598 = load i64, ptr %r7598.p, align 8, !alias.scope !3, !noalias !4
  %fp7599 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r7598, ptr %fp7599, align 8, !alias.scope !3, !noalias !4
  %wp7600 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360643788, ptr %wp7600, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000dd0cc
L_8000dd184_ft:
  ; @pc 0x8000dd184 word 0xf85d83a8
  %r7798.p = getelementptr inbounds i8, ptr %c, i64 232
  %r7798 = load i64, ptr %r7798.p, align 8, !alias.scope !3, !noalias !4
  %t7799 = add i64 %r7798, -40
  %gmp7800 = inttoptr i64 %t7799 to ptr
  %gml7801 = load i64, ptr %gmp7800, align 1, !alias.scope !4, !noalias !3
  %wp7802 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7801, ptr %wp7802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd188 word 0x13105ee3
  %r7803.p = getelementptr inbounds i8, ptr %c, i64 184
  %r7803 = load i64, ptr %r7803.p, align 8, !alias.scope !3, !noalias !4
  %c7804 = trunc i64 %r7803 to i32
  %ror7805 = call i32 @llvm.fshr.i32(i32 %c7804, i32 %c7804, i32 16)
  %t7806 = lshr i32 %c7804, 23
  %t7807 = and i32 %t7806, 1
  %t7808 = sub i32 0, %t7807
  %t7809 = and i32 %t7808, -256
  %t7810 = and i32 %ror7805, 255
  %t7811 = or i32 %t7809, %t7810
  %c7812 = zext i32 %t7811 to i64
  %wp7813 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c7812, ptr %wp7813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd18c word 0xf9400108
  %r7814.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7814 = load i64, ptr %r7814.p, align 8, !alias.scope !3, !noalias !4
  %gmp7815 = inttoptr i64 %r7814 to ptr
  %gml7816 = load i64, ptr %gmp7815, align 1, !alias.scope !4, !noalias !3
  %wp7817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7816, ptr %wp7817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd190 word 0xf9402908
  %r7818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7818 = load i64, ptr %r7818.p, align 8, !alias.scope !3, !noalias !4
  %t7819 = add i64 %r7818, 80
  %gmp7820 = inttoptr i64 %t7819 to ptr
  %gml7821 = load i64, ptr %gmp7820, align 1, !alias.scope !4, !noalias !3
  %wp7822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7821, ptr %wp7822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd194 word 0xeb1b011f
  %r7823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7823 = load i64, ptr %r7823.p, align 8, !alias.scope !3, !noalias !4
  %r7824.p = getelementptr inbounds i8, ptr %c, i64 216
  %r7824 = load i64, ptr %r7824.p, align 8, !alias.scope !3, !noalias !4
  %t7825 = sub i64 %r7823, %r7824
  %fn7826 = icmp slt i64 %t7825, 0
  %fz7827 = icmp eq i64 %t7825, 0
  %fc7828 = icmp uge i64 %r7823, %r7824
  %fx17829 = xor i64 %r7823, %r7824
  %fx27830 = xor i64 %r7823, %t7825
  %fva7831 = and i64 %fx17829, %fx27830
  %fv7832 = icmp slt i64 %fva7831, 0
  %nz7833 = zext i1 %fn7826 to i64
  %zz7834 = zext i1 %fz7827 to i64
  %cz7835 = zext i1 %fc7828 to i64
  %vz7836 = zext i1 %fv7832 to i64
  %ns7837 = shl i64 %nz7833, 31
  %zs7838 = shl i64 %zz7834, 30
  %cs7839 = shl i64 %cz7835, 29
  %vs7840 = shl i64 %vz7836, 28
  %nzor7841 = or i64 %ns7837, %zs7838
  %cvor7842 = or i64 %cs7839, %vs7840
  %nzcv7843 = or i64 %nzor7841, %cvor7842
  %wp7844 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7843, ptr %wp7844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd198 word 0x54003d41
  %r7845.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7845 = load i64, ptr %r7845.p, align 8, !alias.scope !3, !noalias !4
  %fsh7847 = lshr i64 %r7845, 30
  %ftr7848 = trunc i64 %fsh7847 to i1
  %cond7846 = xor i1 %ftr7848, true
  br i1 %cond7846, label %L_8000dd940, label %L_8000dd19c_ft
L_8000dd19c_ft:
  ; @pc 0x8000dd19c word 0x52800028
  %c7849 = zext i32 1 to i64
  %wp7850 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7849, ptr %wp7850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1a0 word 0x390042a8
  %r7851.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7851 = load i64, ptr %r7851.p, align 8, !alias.scope !3, !noalias !4
  %t7852 = add i64 %r7851, 16
  %r7853.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7853 = load i64, ptr %r7853.p, align 8, !alias.scope !3, !noalias !4
  %c7854 = trunc i64 %r7853 to i32
  %c7855 = trunc i32 %c7854 to i8
  %gmp7856 = inttoptr i64 %t7852 to ptr
  store i8 %c7855, ptr %gmp7856, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd1a4 word 0xf001c368
  %wp7857 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp7857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1a8 word 0xf9479508
  %r7858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7858 = load i64, ptr %r7858.p, align 8, !alias.scope !3, !noalias !4
  %t7859 = add i64 %r7858, 3880
  %gmp7860 = inttoptr i64 %t7859 to ptr
  %gml7861 = load i64, ptr %gmp7860, align 1, !alias.scope !4, !noalias !3
  %wp7862 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7861, ptr %wp7862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1ac word 0xb9400108
  %r7863.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7863 = load i64, ptr %r7863.p, align 8, !alias.scope !3, !noalias !4
  %gmp7864 = inttoptr i64 %r7863 to ptr
  %gml7865 = load i32, ptr %gmp7864, align 1, !alias.scope !4, !noalias !3
  %c7866 = zext i32 %gml7865 to i64
  %wp7867 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c7866, ptr %wp7867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1b0 word 0x340027a8
  %r7868.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7868 = load i64, ptr %r7868.p, align 8, !alias.scope !3, !noalias !4
  %c7869 = trunc i64 %r7868 to i32
  %cmp7870 = icmp eq i32 %c7869, 0
  br i1 %cmp7870, label %L_8000dd6a4, label %L_8000dd1b4_ft
L_8000dd1b4_ft:
  ; @pc 0x8000dd1b4 word 0xa94026a8
  %r7871.p = getelementptr inbounds i8, ptr %c, i64 168
  %r7871 = load i64, ptr %r7871.p, align 8, !alias.scope !3, !noalias !4
  %t7872 = add i64 %r7871, 8
  %gmp7873 = inttoptr i64 %r7871 to ptr
  %gml7874 = load i64, ptr %gmp7873, align 1, !alias.scope !4, !noalias !3
  %gmp7875 = inttoptr i64 %t7872 to ptr
  %gml7876 = load i64, ptr %gmp7875, align 1, !alias.scope !4, !noalias !3
  %wp7877 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml7874, ptr %wp7877, align 8, !alias.scope !3, !noalias !4
  %wp7878 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml7876, ptr %wp7878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1b8 word 0x9100610a
  %r7879.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7879 = load i64, ptr %r7879.p, align 8, !alias.scope !3, !noalias !4
  %t7880 = add i64 %r7879, 24
  %wp7881 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t7880, ptr %wp7881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1bc word 0xeb09015f
  %r7882.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7882 = load i64, ptr %r7882.p, align 8, !alias.scope !3, !noalias !4
  %r7883.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7883 = load i64, ptr %r7883.p, align 8, !alias.scope !3, !noalias !4
  %t7884 = sub i64 %r7882, %r7883
  %fn7885 = icmp slt i64 %t7884, 0
  %fz7886 = icmp eq i64 %t7884, 0
  %fc7887 = icmp uge i64 %r7882, %r7883
  %fx17888 = xor i64 %r7882, %r7883
  %fx27889 = xor i64 %r7882, %t7884
  %fva7890 = and i64 %fx17888, %fx27889
  %fv7891 = icmp slt i64 %fva7890, 0
  %nz7892 = zext i1 %fn7885 to i64
  %zz7893 = zext i1 %fz7886 to i64
  %cz7894 = zext i1 %fc7887 to i64
  %vz7895 = zext i1 %fv7891 to i64
  %ns7896 = shl i64 %nz7892, 31
  %zs7897 = shl i64 %zz7893, 30
  %cs7898 = shl i64 %cz7894, 29
  %vs7899 = shl i64 %vz7895, 28
  %nzor7900 = or i64 %ns7896, %zs7897
  %cvor7901 = or i64 %cs7898, %vs7899
  %nzcv7902 = or i64 %nzor7900, %cvor7901
  %wp7903 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv7902, ptr %wp7903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1c0 word 0x54002728
  %r7904.p = getelementptr inbounds i8, ptr %c, i64 272
  %r7904 = load i64, ptr %r7904.p, align 8, !alias.scope !3, !noalias !4
  %fsh7906 = lshr i64 %r7904, 29
  %ftr7907 = trunc i64 %fsh7906 to i1
  %fsh7908 = lshr i64 %r7904, 30
  %ftr7909 = trunc i64 %fsh7908 to i1
  %fnz7910 = xor i1 %ftr7909, true
  %cond7905 = and i1 %ftr7907, %fnz7910
  br i1 %cond7905, label %L_8000dd6a4, label %L_8000dd1c4_ft
L_8000dd1c4_ft:
  ; @pc 0x8000dd1c4 word 0x530c2c69
  %r7911.p = getelementptr inbounds i8, ptr %c, i64 24
  %r7911 = load i64, ptr %r7911.p, align 8, !alias.scope !3, !noalias !4
  %c7912 = trunc i64 %r7911 to i32
  %ror7913 = call i32 @llvm.fshr.i32(i32 %c7912, i32 %c7912, i32 12)
  %t7914 = and i32 %ror7913, -1048576
  %c7915 = zext i32 %t7914 to i64
  %wp7916 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7915, ptr %wp7916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1c8 word 0x34003cb8
  %r7917.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7917 = load i64, ptr %r7917.p, align 8, !alias.scope !3, !noalias !4
  %c7918 = trunc i64 %r7917 to i32
  %cmp7919 = icmp eq i32 %c7918, 0
  br i1 %cmp7919, label %L_8000dd95c, label %L_8000dd1cc_ft
L_8000dd1cc_ft:
  ; @pc 0x8000dd1cc word 0x1103ff0a
  %r7920.p = getelementptr inbounds i8, ptr %c, i64 192
  %r7920 = load i64, ptr %r7920.p, align 8, !alias.scope !3, !noalias !4
  %c7921 = trunc i64 %r7920 to i32
  %t7922 = add i32 %c7921, 255
  %c7923 = zext i32 %t7922 to i64
  %wp7924 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7923, ptr %wp7924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1d0 word 0x114c0129
  %r7925.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7925 = load i64, ptr %r7925.p, align 8, !alias.scope !3, !noalias !4
  %c7926 = trunc i64 %r7925 to i32
  %t7927 = add i32 %c7926, 3145728
  %c7928 = zext i32 %t7927 to i64
  %wp7929 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7928, ptr %wp7929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1d4 word 0x12185d4a
  %r7930.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7930 = load i64, ptr %r7930.p, align 8, !alias.scope !3, !noalias !4
  %c7931 = trunc i64 %r7930 to i32
  %t7932 = and i32 %c7931, -256
  %c7933 = zext i32 %t7932 to i64
  %wp7934 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7933, ptr %wp7934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1d8 word 0x120c1129
  %r7935.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7935 = load i64, ptr %r7935.p, align 8, !alias.scope !3, !noalias !4
  %c7936 = trunc i64 %r7935 to i32
  %t7937 = and i32 %c7936, 32505856
  %c7938 = zext i32 %t7937 to i64
  %wp7939 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7938, ptr %wp7939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1dc word 0x2900f10a
  %r7940.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7940 = load i64, ptr %r7940.p, align 8, !alias.scope !3, !noalias !4
  %t7941 = add i64 %r7940, 4
  %t7942 = add i64 %t7941, 4
  %r7943.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7943 = load i64, ptr %r7943.p, align 8, !alias.scope !3, !noalias !4
  %c7944 = trunc i64 %r7943 to i32
  %gmp7945 = inttoptr i64 %t7941 to ptr
  store i32 %c7944, ptr %gmp7945, align 1, !alias.scope !4, !noalias !3
  %r7946.p = getelementptr inbounds i8, ptr %c, i64 224
  %r7946 = load i64, ptr %r7946.p, align 8, !alias.scope !3, !noalias !4
  %c7947 = trunc i64 %r7946 to i32
  %gmp7948 = inttoptr i64 %t7942 to ptr
  store i32 %c7947, ptr %gmp7948, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd1e0 word 0x5281238a
  %c7949 = zext i32 2332 to i64
  %wp7950 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7949, ptr %wp7950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1e4 word 0x72b0002a
  %r7951.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7951 = load i64, ptr %r7951.p, align 8, !alias.scope !3, !noalias !4
  %t7952 = and i64 %r7951, -4294901761
  %t7953 = or i64 %t7952, 2147549184
  %c7954 = trunc i64 %t7953 to i32
  %c7955 = zext i32 %c7954 to i64
  %wp7956 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c7955, ptr %wp7956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1e8 word 0x2a0a0129
  %r7957.p = getelementptr inbounds i8, ptr %c, i64 80
  %r7957 = load i64, ptr %r7957.p, align 8, !alias.scope !3, !noalias !4
  %c7958 = trunc i64 %r7957 to i32
  %r7959.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7959 = load i64, ptr %r7959.p, align 8, !alias.scope !3, !noalias !4
  %c7960 = trunc i64 %r7959 to i32
  %t7961 = or i32 %c7960, %c7958
  %c7962 = zext i32 %t7961 to i64
  %wp7963 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7962, ptr %wp7963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd1ec word 0x2901a516
  %r7964.p = getelementptr inbounds i8, ptr %c, i64 64
  %r7964 = load i64, ptr %r7964.p, align 8, !alias.scope !3, !noalias !4
  %t7965 = add i64 %r7964, 12
  %t7966 = add i64 %t7965, 4
  %r7967.p = getelementptr inbounds i8, ptr %c, i64 176
  %r7967 = load i64, ptr %r7967.p, align 8, !alias.scope !3, !noalias !4
  %c7968 = trunc i64 %r7967 to i32
  %gmp7969 = inttoptr i64 %t7965 to ptr
  store i32 %c7968, ptr %gmp7969, align 1, !alias.scope !4, !noalias !3
  %r7970.p = getelementptr inbounds i8, ptr %c, i64 72
  %r7970 = load i64, ptr %r7970.p, align 8, !alias.scope !3, !noalias !4
  %c7971 = trunc i64 %r7970 to i32
  %gmp7972 = inttoptr i64 %t7966 to ptr
  store i32 %c7971, ptr %gmp7972, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd1f0 word 0x528000a9
  %c7973 = zext i32 5 to i64
  %wp7974 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c7973, ptr %wp7974, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd1f4
L_8000dd224_ft:
  ; @pc 0x8000dd224 word 0xf9400108
  %r8055.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8055 = load i64, ptr %r8055.p, align 8, !alias.scope !3, !noalias !4
  %gmp8056 = inttoptr i64 %r8055 to ptr
  %gml8057 = load i64, ptr %gmp8056, align 1, !alias.scope !4, !noalias !3
  %wp8058 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8057, ptr %wp8058, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd228 word 0x13187ee3
  %r8059.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8059 = load i64, ptr %r8059.p, align 8, !alias.scope !3, !noalias !4
  %c8060 = trunc i64 %r8059 to i32
  %ror8061 = call i32 @llvm.fshr.i32(i32 %c8060, i32 %c8060, i32 24)
  %t8062 = lshr i32 %c8060, 31
  %t8063 = and i32 %t8062, 1
  %t8064 = sub i32 0, %t8063
  %t8065 = and i32 %t8064, -256
  %t8066 = and i32 %ror8061, 255
  %t8067 = or i32 %t8065, %t8066
  %c8068 = zext i32 %t8067 to i64
  %wp8069 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c8068, ptr %wp8069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd22c word 0xf9402908
  %r8070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8070 = load i64, ptr %r8070.p, align 8, !alias.scope !3, !noalias !4
  %t8071 = add i64 %r8070, 80
  %gmp8072 = inttoptr i64 %t8071 to ptr
  %gml8073 = load i64, ptr %gmp8072, align 1, !alias.scope !4, !noalias !3
  %wp8074 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8073, ptr %wp8074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd230 word 0xeb1b011f
  %r8075.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8075 = load i64, ptr %r8075.p, align 8, !alias.scope !3, !noalias !4
  %r8076.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8076 = load i64, ptr %r8076.p, align 8, !alias.scope !3, !noalias !4
  %t8077 = sub i64 %r8075, %r8076
  %fn8078 = icmp slt i64 %t8077, 0
  %fz8079 = icmp eq i64 %t8077, 0
  %fc8080 = icmp uge i64 %r8075, %r8076
  %fx18081 = xor i64 %r8075, %r8076
  %fx28082 = xor i64 %r8075, %t8077
  %fva8083 = and i64 %fx18081, %fx28082
  %fv8084 = icmp slt i64 %fva8083, 0
  %nz8085 = zext i1 %fn8078 to i64
  %zz8086 = zext i1 %fz8079 to i64
  %cz8087 = zext i1 %fc8080 to i64
  %vz8088 = zext i1 %fv8084 to i64
  %ns8089 = shl i64 %nz8085, 31
  %zs8090 = shl i64 %zz8086, 30
  %cs8091 = shl i64 %cz8087, 29
  %vs8092 = shl i64 %vz8088, 28
  %nzor8093 = or i64 %ns8089, %zs8090
  %cvor8094 = or i64 %cs8091, %vs8092
  %nzcv8095 = or i64 %nzor8093, %cvor8094
  %wp8096 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8095, ptr %wp8096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd234 word 0x54003a41
  %r8097.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8097 = load i64, ptr %r8097.p, align 8, !alias.scope !3, !noalias !4
  %fsh8099 = lshr i64 %r8097, 30
  %ftr8100 = trunc i64 %fsh8099 to i1
  %cond8098 = xor i1 %ftr8100, true
  br i1 %cond8098, label %L_8000dd97c, label %L_8000dd238_ft
L_8000dd238_ft:
  ; @pc 0x8000dd238 word 0x52800028
  %c8101 = zext i32 1 to i64
  %wp8102 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8101, ptr %wp8102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd23c word 0x528000a1
  %c8103 = zext i32 5 to i64
  %wp8104 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c8103, ptr %wp8104, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd240 word 0x390042a8
  %r8105.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8105 = load i64, ptr %r8105.p, align 8, !alias.scope !3, !noalias !4
  %t8106 = add i64 %r8105, 16
  %r8107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8107 = load i64, ptr %r8107.p, align 8, !alias.scope !3, !noalias !4
  %c8108 = trunc i64 %r8107 to i32
  %c8109 = trunc i32 %c8108 to i8
  %gmp8110 = inttoptr i64 %t8106 to ptr
  store i8 %c8109, ptr %gmp8110, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd244 word 0xf001c3e8
  %wp8111 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp8111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd248 word 0xaa1503e0
  %r8112.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8112 = load i64, ptr %r8112.p, align 8, !alias.scope !3, !noalias !4
  %t8113 = or i64 0, %r8112
  %wp8114 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8113, ptr %wp8114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd24c word 0xf9417908
  %r8115.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8115 = load i64, ptr %r8115.p, align 8, !alias.scope !3, !noalias !4
  %t8116 = add i64 %r8115, 752
  %gmp8117 = inttoptr i64 %t8116 to ptr
  %gml8118 = load i64, ptr %gmp8117, align 1, !alias.scope !4, !noalias !3
  %wp8119 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8118, ptr %wp8119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd250 word 0x2a0303e2
  %r8120.p = getelementptr inbounds i8, ptr %c, i64 24
  %r8120 = load i64, ptr %r8120.p, align 8, !alias.scope !3, !noalias !4
  %c8121 = trunc i64 %r8120 to i32
  %t8122 = or i32 0, %c8121
  %c8123 = zext i32 %t8122 to i64
  %wp8124 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c8123, ptr %wp8124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd254 word 0xaa1603e3
  %r8125.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8125 = load i64, ptr %r8125.p, align 8, !alias.scope !3, !noalias !4
  %t8126 = or i64 0, %r8125
  %wp8127 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t8126, ptr %wp8127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd258 word 0xf9400108
  %r8128.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8128 = load i64, ptr %r8128.p, align 8, !alias.scope !3, !noalias !4
  %gmp8129 = inttoptr i64 %r8128 to ptr
  %gml8130 = load i64, ptr %gmp8129, align 1, !alias.scope !4, !noalias !3
  %wp8131 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8130, ptr %wp8131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd25c word 0xaa1803e4
  %r8132.p = getelementptr inbounds i8, ptr %c, i64 192
  %r8132 = load i64, ptr %r8132.p, align 8, !alias.scope !3, !noalias !4
  %t8133 = or i64 0, %r8132
  %wp8134 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t8133, ptr %wp8134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd260 word 0xd63f0100
  %r8135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8135 = load i64, ptr %r8135.p, align 8, !alias.scope !3, !noalias !4
  %fp8136 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8135, ptr %fp8136, align 8, !alias.scope !3, !noalias !4
  %wp8137 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360644196, ptr %wp8137, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000dd264
L_8000dd2b4_ft:
  ; @pc 0x8000dd2b4 word 0xeb19013f
  %r8249.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8249 = load i64, ptr %r8249.p, align 8, !alias.scope !3, !noalias !4
  %r8250.p = getelementptr inbounds i8, ptr %c, i64 200
  %r8250 = load i64, ptr %r8250.p, align 8, !alias.scope !3, !noalias !4
  %t8251 = sub i64 %r8249, %r8250
  %fn8252 = icmp slt i64 %t8251, 0
  %fz8253 = icmp eq i64 %t8251, 0
  %fc8254 = icmp uge i64 %r8249, %r8250
  %fx18255 = xor i64 %r8249, %r8250
  %fx28256 = xor i64 %r8249, %t8251
  %fva8257 = and i64 %fx18255, %fx28256
  %fv8258 = icmp slt i64 %fva8257, 0
  %nz8259 = zext i1 %fn8252 to i64
  %zz8260 = zext i1 %fz8253 to i64
  %cz8261 = zext i1 %fc8254 to i64
  %vz8262 = zext i1 %fv8258 to i64
  %ns8263 = shl i64 %nz8259, 31
  %zs8264 = shl i64 %zz8260, 30
  %cs8265 = shl i64 %cz8261, 29
  %vs8266 = shl i64 %vz8262, 28
  %nzor8267 = or i64 %ns8263, %zs8264
  %cvor8268 = or i64 %cs8265, %vs8266
  %nzcv8269 = or i64 %nzor8267, %cvor8268
  %wp8270 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8269, ptr %wp8270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2b8 word 0x54000140
  %r8271.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8271 = load i64, ptr %r8271.p, align 8, !alias.scope !3, !noalias !4
  %fsh8273 = lshr i64 %r8271, 30
  %cond8272 = trunc i64 %fsh8273 to i1
  br i1 %cond8272, label %L_8000dd2e0, label %L_8000dd2bc_ft
L_8000dd2bc_ft:
  ; @pc 0x8000dd2bc word 0xaa0803e0
  %r8274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8274 = load i64, ptr %r8274.p, align 8, !alias.scope !3, !noalias !4
  %t8275 = or i64 0, %r8274
  %wp8276 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t8275, ptr %wp8276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2c0 word 0xaa0803f4
  %r8277.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8277 = load i64, ptr %r8277.p, align 8, !alias.scope !3, !noalias !4
  %t8278 = or i64 0, %r8277
  %wp8279 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t8278, ptr %wp8279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2c4 word 0xd63f0120
  %r8280.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8280 = load i64, ptr %r8280.p, align 8, !alias.scope !3, !noalias !4
  %fp8281 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r8280, ptr %fp8281, align 8, !alias.scope !3, !noalias !4
  %wp8282 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360644296, ptr %wp8282, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd2c8 word 0xaa1403e8
  %r8283.p = getelementptr inbounds i8, ptr %c, i64 160
  %r8283 = load i64, ptr %r8283.p, align 8, !alias.scope !3, !noalias !4
  %t8284 = or i64 0, %r8283
  %wp8285 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t8284, ptr %wp8285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd2cc word 0x14000006
  br label %L_8000dd2e4
L_8000dd318_ft:
  ; @pc 0x8000dd318 word 0x52800028
  %c8404 = zext i32 1 to i64
  %wp8405 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8404, ptr %wp8405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd31c word 0x390042e8
  %r8406.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8406 = load i64, ptr %r8406.p, align 8, !alias.scope !3, !noalias !4
  %t8407 = add i64 %r8406, 16
  %r8408.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8408 = load i64, ptr %r8408.p, align 8, !alias.scope !3, !noalias !4
  %c8409 = trunc i64 %r8408 to i32
  %c8410 = trunc i32 %c8409 to i8
  %gmp8411 = inttoptr i64 %t8407 to ptr
  store i8 %c8410, ptr %gmp8411, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd320 word 0xf001c368
  %wp8412 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp8412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd324 word 0xf9479508
  %r8413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8413 = load i64, ptr %r8413.p, align 8, !alias.scope !3, !noalias !4
  %t8414 = add i64 %r8413, 3880
  %gmp8415 = inttoptr i64 %t8414 to ptr
  %gml8416 = load i64, ptr %gmp8415, align 1, !alias.scope !4, !noalias !3
  %wp8417 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8416, ptr %wp8417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd328 word 0xb9400108
  %r8418.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8418 = load i64, ptr %r8418.p, align 8, !alias.scope !3, !noalias !4
  %gmp8419 = inttoptr i64 %r8418 to ptr
  %gml8420 = load i32, ptr %gmp8419, align 1, !alias.scope !4, !noalias !3
  %c8421 = zext i32 %gml8420 to i64
  %wp8422 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8421, ptr %wp8422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd32c word 0x34001d08
  %r8423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8423 = load i64, ptr %r8423.p, align 8, !alias.scope !3, !noalias !4
  %c8424 = trunc i64 %r8423 to i32
  %cmp8425 = icmp eq i32 %c8424, 0
  br i1 %cmp8425, label %L_8000dd6cc, label %L_8000dd330_ft
L_8000dd330_ft:
  ; @pc 0x8000dd330 word 0xa94026e8
  %r8426.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8426 = load i64, ptr %r8426.p, align 8, !alias.scope !3, !noalias !4
  %t8427 = add i64 %r8426, 8
  %gmp8428 = inttoptr i64 %r8426 to ptr
  %gml8429 = load i64, ptr %gmp8428, align 1, !alias.scope !4, !noalias !3
  %gmp8430 = inttoptr i64 %t8427 to ptr
  %gml8431 = load i64, ptr %gmp8430, align 1, !alias.scope !4, !noalias !3
  %wp8432 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8429, ptr %wp8432, align 8, !alias.scope !3, !noalias !4
  %wp8433 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8431, ptr %wp8433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd334 word 0x9100610a
  %r8434.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8434 = load i64, ptr %r8434.p, align 8, !alias.scope !3, !noalias !4
  %t8435 = add i64 %r8434, 24
  %wp8436 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t8435, ptr %wp8436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd338 word 0xeb09015f
  %r8437.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8437 = load i64, ptr %r8437.p, align 8, !alias.scope !3, !noalias !4
  %r8438.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8438 = load i64, ptr %r8438.p, align 8, !alias.scope !3, !noalias !4
  %t8439 = sub i64 %r8437, %r8438
  %fn8440 = icmp slt i64 %t8439, 0
  %fz8441 = icmp eq i64 %t8439, 0
  %fc8442 = icmp uge i64 %r8437, %r8438
  %fx18443 = xor i64 %r8437, %r8438
  %fx28444 = xor i64 %r8437, %t8439
  %fva8445 = and i64 %fx18443, %fx28444
  %fv8446 = icmp slt i64 %fva8445, 0
  %nz8447 = zext i1 %fn8440 to i64
  %zz8448 = zext i1 %fz8441 to i64
  %cz8449 = zext i1 %fc8442 to i64
  %vz8450 = zext i1 %fv8446 to i64
  %ns8451 = shl i64 %nz8447, 31
  %zs8452 = shl i64 %zz8448, 30
  %cs8453 = shl i64 %cz8449, 29
  %vs8454 = shl i64 %vz8450, 28
  %nzor8455 = or i64 %ns8451, %zs8452
  %cvor8456 = or i64 %cs8453, %vs8454
  %nzcv8457 = or i64 %nzor8455, %cvor8456
  %wp8458 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8457, ptr %wp8458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd33c word 0x54001c88
  %r8459.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8459 = load i64, ptr %r8459.p, align 8, !alias.scope !3, !noalias !4
  %fsh8461 = lshr i64 %r8459, 29
  %ftr8462 = trunc i64 %fsh8461 to i1
  %fsh8463 = lshr i64 %r8459, 30
  %ftr8464 = trunc i64 %fsh8463 to i1
  %fnz8465 = xor i1 %ftr8464, true
  %cond8460 = and i1 %ftr8462, %fnz8465
  br i1 %cond8460, label %L_8000dd6cc, label %L_8000dd340_ft
L_8000dd340_ft:
  ; @pc 0x8000dd340 word 0x53081f4a
  %r8466.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8466 = load i64, ptr %r8466.p, align 8, !alias.scope !3, !noalias !4
  %c8467 = trunc i64 %r8466 to i32
  %ror8468 = call i32 @llvm.fshr.i32(i32 %c8467, i32 %c8467, i32 8)
  %t8469 = and i32 %ror8468, -16777216
  %c8470 = zext i32 %t8469 to i64
  %wp8471 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8470, ptr %wp8471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd344 word 0x52812089
  %c8472 = zext i32 2308 to i64
  %wp8473 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8472, ptr %wp8473, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd348 word 0x72b00009
  %r8474.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8474 = load i64, ptr %r8474.p, align 8, !alias.scope !3, !noalias !4
  %t8475 = and i64 %r8474, -4294901761
  %t8476 = or i64 %t8475, 2147483648
  %c8477 = trunc i64 %t8476 to i32
  %c8478 = zext i32 %c8477 to i64
  %wp8479 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8478, ptr %wp8479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd34c word 0x53047d4a
  %r8480.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8480 = load i64, ptr %r8480.p, align 8, !alias.scope !3, !noalias !4
  %c8481 = trunc i64 %r8480 to i32
  %ror8482 = call i32 @llvm.fshr.i32(i32 %c8481, i32 %c8481, i32 4)
  %t8483 = and i32 %ror8482, 268435455
  %c8484 = zext i32 %t8483 to i64
  %wp8485 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8484, ptr %wp8485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd350 word 0x34003336
  %r8486.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8486 = load i64, ptr %r8486.p, align 8, !alias.scope !3, !noalias !4
  %c8487 = trunc i64 %r8486 to i32
  %cmp8488 = icmp eq i32 %c8487, 0
  br i1 %cmp8488, label %L_8000dd9b4, label %L_8000dd354_ft
L_8000dd354_ft:
  ; @pc 0x8000dd354 word 0x114c014a
  %r8489.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8489 = load i64, ptr %r8489.p, align 8, !alias.scope !3, !noalias !4
  %c8490 = trunc i64 %r8489 to i32
  %t8491 = add i32 %c8490, 3145728
  %c8492 = zext i32 %t8491 to i64
  %wp8493 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8492, ptr %wp8493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd358 word 0x11404129
  %r8494.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8494 = load i64, ptr %r8494.p, align 8, !alias.scope !3, !noalias !4
  %c8495 = trunc i64 %r8494 to i32
  %t8496 = add i32 %c8495, 65536
  %c8497 = zext i32 %t8496 to i64
  %wp8498 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8497, ptr %wp8498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd35c word 0x1103fecb
  %r8499.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8499 = load i64, ptr %r8499.p, align 8, !alias.scope !3, !noalias !4
  %c8500 = trunc i64 %r8499 to i32
  %t8501 = add i32 %c8500, 255
  %c8502 = zext i32 %t8501 to i64
  %wp8503 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8502, ptr %wp8503, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd360 word 0x120c114a
  %r8504.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8504 = load i64, ptr %r8504.p, align 8, !alias.scope !3, !noalias !4
  %c8505 = trunc i64 %r8504 to i32
  %t8506 = and i32 %c8505, 32505856
  %c8507 = zext i32 %t8506 to i64
  %wp8508 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8507, ptr %wp8508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd364 word 0x12185d6b
  %r8509.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8509 = load i64, ptr %r8509.p, align 8, !alias.scope !3, !noalias !4
  %c8510 = trunc i64 %r8509 to i32
  %t8511 = and i32 %c8510, -256
  %c8512 = zext i32 %t8511 to i64
  %wp8513 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8512, ptr %wp8513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd368 word 0x2900f10b
  %r8514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8514 = load i64, ptr %r8514.p, align 8, !alias.scope !3, !noalias !4
  %t8515 = add i64 %r8514, 4
  %t8516 = add i64 %t8515, 4
  %r8517.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8517 = load i64, ptr %r8517.p, align 8, !alias.scope !3, !noalias !4
  %c8518 = trunc i64 %r8517 to i32
  %gmp8519 = inttoptr i64 %t8515 to ptr
  store i32 %c8518, ptr %gmp8519, align 1, !alias.scope !4, !noalias !3
  %r8520.p = getelementptr inbounds i8, ptr %c, i64 224
  %r8520 = load i64, ptr %r8520.p, align 8, !alias.scope !3, !noalias !4
  %c8521 = trunc i64 %r8520 to i32
  %gmp8522 = inttoptr i64 %t8516 to ptr
  store i32 %c8521, ptr %gmp8522, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd36c word 0x2a090149
  %r8523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8523 = load i64, ptr %r8523.p, align 8, !alias.scope !3, !noalias !4
  %c8524 = trunc i64 %r8523 to i32
  %r8525.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8525 = load i64, ptr %r8525.p, align 8, !alias.scope !3, !noalias !4
  %c8526 = trunc i64 %r8525 to i32
  %t8527 = or i32 %c8526, %c8524
  %c8528 = zext i32 %t8527 to i64
  %wp8529 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8528, ptr %wp8529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd370 word 0x2901a515
  %r8530.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8530 = load i64, ptr %r8530.p, align 8, !alias.scope !3, !noalias !4
  %t8531 = add i64 %r8530, 12
  %t8532 = add i64 %t8531, 4
  %r8533.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8533 = load i64, ptr %r8533.p, align 8, !alias.scope !3, !noalias !4
  %c8534 = trunc i64 %r8533 to i32
  %gmp8535 = inttoptr i64 %t8531 to ptr
  store i32 %c8534, ptr %gmp8535, align 1, !alias.scope !4, !noalias !3
  %r8536.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8536 = load i64, ptr %r8536.p, align 8, !alias.scope !3, !noalias !4
  %c8537 = trunc i64 %r8536 to i32
  %gmp8538 = inttoptr i64 %t8532 to ptr
  store i32 %c8537, ptr %gmp8538, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd374 word 0x528000a9
  %c8539 = zext i32 5 to i64
  %wp8540 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8539, ptr %wp8540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd378 word 0x2a1b03ea
  %r8541.p = getelementptr inbounds i8, ptr %c, i64 216
  %r8541 = load i64, ptr %r8541.p, align 8, !alias.scope !3, !noalias !4
  %c8542 = trunc i64 %r8541 to i32
  %t8543 = or i32 0, %c8542
  %c8544 = zext i32 %t8543 to i64
  %wp8545 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8544, ptr %wp8545, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd37c
L_8000dd3a4_ft:
  ; @pc 0x8000dd3a4 word 0x52800028
  %c8608 = zext i32 1 to i64
  %wp8609 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8608, ptr %wp8609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3a8 word 0x390042a8
  %r8610.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8610 = load i64, ptr %r8610.p, align 8, !alias.scope !3, !noalias !4
  %t8611 = add i64 %r8610, 16
  %r8612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8612 = load i64, ptr %r8612.p, align 8, !alias.scope !3, !noalias !4
  %c8613 = trunc i64 %r8612 to i32
  %c8614 = trunc i32 %c8613 to i8
  %gmp8615 = inttoptr i64 %t8611 to ptr
  store i8 %c8614, ptr %gmp8615, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd3ac word 0xf001c368
  %wp8616 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp8616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3b0 word 0xf9479508
  %r8617.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8617 = load i64, ptr %r8617.p, align 8, !alias.scope !3, !noalias !4
  %t8618 = add i64 %r8617, 3880
  %gmp8619 = inttoptr i64 %t8618 to ptr
  %gml8620 = load i64, ptr %gmp8619, align 1, !alias.scope !4, !noalias !3
  %wp8621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8620, ptr %wp8621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3b4 word 0xb9400108
  %r8622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8622 = load i64, ptr %r8622.p, align 8, !alias.scope !3, !noalias !4
  %gmp8623 = inttoptr i64 %r8622 to ptr
  %gml8624 = load i32, ptr %gmp8623, align 1, !alias.scope !4, !noalias !3
  %c8625 = zext i32 %gml8624 to i64
  %wp8626 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c8625, ptr %wp8626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3b8 word 0x340019e8
  %r8627.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8627 = load i64, ptr %r8627.p, align 8, !alias.scope !3, !noalias !4
  %c8628 = trunc i64 %r8627 to i32
  %cmp8629 = icmp eq i32 %c8628, 0
  br i1 %cmp8629, label %L_8000dd6f4, label %L_8000dd3bc_ft
L_8000dd3bc_ft:
  ; @pc 0x8000dd3bc word 0xa94026a8
  %r8630.p = getelementptr inbounds i8, ptr %c, i64 168
  %r8630 = load i64, ptr %r8630.p, align 8, !alias.scope !3, !noalias !4
  %t8631 = add i64 %r8630, 8
  %gmp8632 = inttoptr i64 %r8630 to ptr
  %gml8633 = load i64, ptr %gmp8632, align 1, !alias.scope !4, !noalias !3
  %gmp8634 = inttoptr i64 %t8631 to ptr
  %gml8635 = load i64, ptr %gmp8634, align 1, !alias.scope !4, !noalias !3
  %wp8636 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml8633, ptr %wp8636, align 8, !alias.scope !3, !noalias !4
  %wp8637 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml8635, ptr %wp8637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3c0 word 0x9100610a
  %r8638.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8638 = load i64, ptr %r8638.p, align 8, !alias.scope !3, !noalias !4
  %t8639 = add i64 %r8638, 24
  %wp8640 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t8639, ptr %wp8640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3c4 word 0xeb09015f
  %r8641.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8641 = load i64, ptr %r8641.p, align 8, !alias.scope !3, !noalias !4
  %r8642.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8642 = load i64, ptr %r8642.p, align 8, !alias.scope !3, !noalias !4
  %t8643 = sub i64 %r8641, %r8642
  %fn8644 = icmp slt i64 %t8643, 0
  %fz8645 = icmp eq i64 %t8643, 0
  %fc8646 = icmp uge i64 %r8641, %r8642
  %fx18647 = xor i64 %r8641, %r8642
  %fx28648 = xor i64 %r8641, %t8643
  %fva8649 = and i64 %fx18647, %fx28648
  %fv8650 = icmp slt i64 %fva8649, 0
  %nz8651 = zext i1 %fn8644 to i64
  %zz8652 = zext i1 %fz8645 to i64
  %cz8653 = zext i1 %fc8646 to i64
  %vz8654 = zext i1 %fv8650 to i64
  %ns8655 = shl i64 %nz8651, 31
  %zs8656 = shl i64 %zz8652, 30
  %cs8657 = shl i64 %cz8653, 29
  %vs8658 = shl i64 %vz8654, 28
  %nzor8659 = or i64 %ns8655, %zs8656
  %cvor8660 = or i64 %cs8657, %vs8658
  %nzcv8661 = or i64 %nzor8659, %cvor8660
  %wp8662 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv8661, ptr %wp8662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3c8 word 0x54001968
  %r8663.p = getelementptr inbounds i8, ptr %c, i64 272
  %r8663 = load i64, ptr %r8663.p, align 8, !alias.scope !3, !noalias !4
  %fsh8665 = lshr i64 %r8663, 29
  %ftr8666 = trunc i64 %fsh8665 to i1
  %fsh8667 = lshr i64 %r8663, 30
  %ftr8668 = trunc i64 %fsh8667 to i1
  %fnz8669 = xor i1 %ftr8668, true
  %cond8664 = and i1 %ftr8666, %fnz8669
  br i1 %cond8664, label %L_8000dd6f4, label %L_8000dd3cc_ft
L_8000dd3cc_ft:
  ; @pc 0x8000dd3cc word 0x53081eea
  %r8670.p = getelementptr inbounds i8, ptr %c, i64 184
  %r8670 = load i64, ptr %r8670.p, align 8, !alias.scope !3, !noalias !4
  %c8671 = trunc i64 %r8670 to i32
  %ror8672 = call i32 @llvm.fshr.i32(i32 %c8671, i32 %c8671, i32 8)
  %t8673 = and i32 %ror8672, -16777216
  %c8674 = zext i32 %t8673 to i64
  %wp8675 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8674, ptr %wp8675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3d0 word 0x52812089
  %c8676 = zext i32 2308 to i64
  %wp8677 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8676, ptr %wp8677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3d4 word 0x72b00009
  %r8678.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8678 = load i64, ptr %r8678.p, align 8, !alias.scope !3, !noalias !4
  %t8679 = and i64 %r8678, -4294901761
  %t8680 = or i64 %t8679, 2147483648
  %c8681 = trunc i64 %t8680 to i32
  %c8682 = zext i32 %c8681 to i64
  %wp8683 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8682, ptr %wp8683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3d8 word 0x53047d4a
  %r8684.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8684 = load i64, ptr %r8684.p, align 8, !alias.scope !3, !noalias !4
  %c8685 = trunc i64 %r8684 to i32
  %ror8686 = call i32 @llvm.fshr.i32(i32 %c8685, i32 %c8685, i32 4)
  %t8687 = and i32 %ror8686, 268435455
  %c8688 = zext i32 %t8687 to i64
  %wp8689 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8688, ptr %wp8689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3dc word 0x34003058
  %r8690.p = getelementptr inbounds i8, ptr %c, i64 192
  %r8690 = load i64, ptr %r8690.p, align 8, !alias.scope !3, !noalias !4
  %c8691 = trunc i64 %r8690 to i32
  %cmp8692 = icmp eq i32 %c8691, 0
  br i1 %cmp8692, label %L_8000dd9e4, label %L_8000dd3e0_ft
L_8000dd3e0_ft:
  ; @pc 0x8000dd3e0 word 0x114c014a
  %r8693.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8693 = load i64, ptr %r8693.p, align 8, !alias.scope !3, !noalias !4
  %c8694 = trunc i64 %r8693 to i32
  %t8695 = add i32 %c8694, 3145728
  %c8696 = zext i32 %t8695 to i64
  %wp8697 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8696, ptr %wp8697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3e4 word 0x11404129
  %r8698.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8698 = load i64, ptr %r8698.p, align 8, !alias.scope !3, !noalias !4
  %c8699 = trunc i64 %r8698 to i32
  %t8700 = add i32 %c8699, 65536
  %c8701 = zext i32 %t8700 to i64
  %wp8702 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8701, ptr %wp8702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3e8 word 0x1103ff0b
  %r8703.p = getelementptr inbounds i8, ptr %c, i64 192
  %r8703 = load i64, ptr %r8703.p, align 8, !alias.scope !3, !noalias !4
  %c8704 = trunc i64 %r8703 to i32
  %t8705 = add i32 %c8704, 255
  %c8706 = zext i32 %t8705 to i64
  %wp8707 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8706, ptr %wp8707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3ec word 0x120c114a
  %r8708.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8708 = load i64, ptr %r8708.p, align 8, !alias.scope !3, !noalias !4
  %c8709 = trunc i64 %r8708 to i32
  %t8710 = and i32 %c8709, 32505856
  %c8711 = zext i32 %t8710 to i64
  %wp8712 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8711, ptr %wp8712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3f0 word 0x12185d6b
  %r8713.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8713 = load i64, ptr %r8713.p, align 8, !alias.scope !3, !noalias !4
  %c8714 = trunc i64 %r8713 to i32
  %t8715 = and i32 %c8714, -256
  %c8716 = zext i32 %t8715 to i64
  %wp8717 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c8716, ptr %wp8717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3f4 word 0x2900f10b
  %r8718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8718 = load i64, ptr %r8718.p, align 8, !alias.scope !3, !noalias !4
  %t8719 = add i64 %r8718, 4
  %t8720 = add i64 %t8719, 4
  %r8721.p = getelementptr inbounds i8, ptr %c, i64 88
  %r8721 = load i64, ptr %r8721.p, align 8, !alias.scope !3, !noalias !4
  %c8722 = trunc i64 %r8721 to i32
  %gmp8723 = inttoptr i64 %t8719 to ptr
  store i32 %c8722, ptr %gmp8723, align 1, !alias.scope !4, !noalias !3
  %r8724.p = getelementptr inbounds i8, ptr %c, i64 224
  %r8724 = load i64, ptr %r8724.p, align 8, !alias.scope !3, !noalias !4
  %c8725 = trunc i64 %r8724 to i32
  %gmp8726 = inttoptr i64 %t8720 to ptr
  store i32 %c8725, ptr %gmp8726, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd3f8 word 0x2a090149
  %r8727.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8727 = load i64, ptr %r8727.p, align 8, !alias.scope !3, !noalias !4
  %c8728 = trunc i64 %r8727 to i32
  %r8729.p = getelementptr inbounds i8, ptr %c, i64 80
  %r8729 = load i64, ptr %r8729.p, align 8, !alias.scope !3, !noalias !4
  %c8730 = trunc i64 %r8729 to i32
  %t8731 = or i32 %c8730, %c8728
  %c8732 = zext i32 %t8731 to i64
  %wp8733 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8732, ptr %wp8733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd3fc word 0x2901a516
  %r8734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r8734 = load i64, ptr %r8734.p, align 8, !alias.scope !3, !noalias !4
  %t8735 = add i64 %r8734, 12
  %t8736 = add i64 %t8735, 4
  %r8737.p = getelementptr inbounds i8, ptr %c, i64 176
  %r8737 = load i64, ptr %r8737.p, align 8, !alias.scope !3, !noalias !4
  %c8738 = trunc i64 %r8737 to i32
  %gmp8739 = inttoptr i64 %t8735 to ptr
  store i32 %c8738, ptr %gmp8739, align 1, !alias.scope !4, !noalias !3
  %r8740.p = getelementptr inbounds i8, ptr %c, i64 72
  %r8740 = load i64, ptr %r8740.p, align 8, !alias.scope !3, !noalias !4
  %c8741 = trunc i64 %r8740 to i32
  %gmp8742 = inttoptr i64 %t8736 to ptr
  store i32 %c8741, ptr %gmp8742, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd400 word 0x528000a9
  %c8743 = zext i32 5 to i64
  %wp8744 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c8743, ptr %wp8744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd404 word 0x2a1a03ea
  %r8745.p = getelementptr inbounds i8, ptr %c, i64 208
  %r8745 = load i64, ptr %r8745.p, align 8, !alias.scope !3, !noalias !4
  %c8746 = trunc i64 %r8745 to i32
  %t8747 = or i32 0, %c8746
  %c8748 = zext i32 %t8747 to i64
  %wp8749 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c8748, ptr %wp8749, align 8, !alias.scope !3, !noalias !4
  br label %L_8000dd408
L_8000dd478_ft:
  ; @pc 0x8000dd478 word 0x17fffce6
  br label %L_8000dc810
L_8000dd4d8_ft:
  ; @pc 0x8000dd4d8 word 0xa94026e8
  %r9032.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9032 = load i64, ptr %r9032.p, align 8, !alias.scope !3, !noalias !4
  %t9033 = add i64 %r9032, 8
  %gmp9034 = inttoptr i64 %r9032 to ptr
  %gml9035 = load i64, ptr %gmp9034, align 1, !alias.scope !4, !noalias !3
  %gmp9036 = inttoptr i64 %t9033 to ptr
  %gml9037 = load i64, ptr %gmp9036, align 1, !alias.scope !4, !noalias !3
  %wp9038 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9035, ptr %wp9038, align 8, !alias.scope !3, !noalias !4
  %wp9039 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml9037, ptr %wp9039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4dc word 0x9100610a
  %r9040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9040 = load i64, ptr %r9040.p, align 8, !alias.scope !3, !noalias !4
  %t9041 = add i64 %r9040, 24
  %wp9042 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9041, ptr %wp9042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4e0 word 0xeb09015f
  %r9043.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9043 = load i64, ptr %r9043.p, align 8, !alias.scope !3, !noalias !4
  %r9044.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9044 = load i64, ptr %r9044.p, align 8, !alias.scope !3, !noalias !4
  %t9045 = sub i64 %r9043, %r9044
  %fn9046 = icmp slt i64 %t9045, 0
  %fz9047 = icmp eq i64 %t9045, 0
  %fc9048 = icmp uge i64 %r9043, %r9044
  %fx19049 = xor i64 %r9043, %r9044
  %fx29050 = xor i64 %r9043, %t9045
  %fva9051 = and i64 %fx19049, %fx29050
  %fv9052 = icmp slt i64 %fva9051, 0
  %nz9053 = zext i1 %fn9046 to i64
  %zz9054 = zext i1 %fz9047 to i64
  %cz9055 = zext i1 %fc9048 to i64
  %vz9056 = zext i1 %fv9052 to i64
  %ns9057 = shl i64 %nz9053, 31
  %zs9058 = shl i64 %zz9054, 30
  %cs9059 = shl i64 %cz9055, 29
  %vs9060 = shl i64 %vz9056, 28
  %nzor9061 = or i64 %ns9057, %zs9058
  %cvor9062 = or i64 %cs9059, %vs9060
  %nzcv9063 = or i64 %nzor9061, %cvor9062
  %wp9064 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9063, ptr %wp9064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4e4 word 0x54000668
  %r9065.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9065 = load i64, ptr %r9065.p, align 8, !alias.scope !3, !noalias !4
  %fsh9067 = lshr i64 %r9065, 29
  %ftr9068 = trunc i64 %fsh9067 to i1
  %fsh9069 = lshr i64 %r9065, 30
  %ftr9070 = trunc i64 %fsh9069 to i1
  %fnz9071 = xor i1 %ftr9070, true
  %cond9066 = and i1 %ftr9068, %fnz9071
  br i1 %cond9066, label %L_8000dd5b0, label %L_8000dd4e8_ft
L_8000dd4e8_ft:
  ; @pc 0x8000dd4e8 word 0x53081f89
  %r9072.p = getelementptr inbounds i8, ptr %c, i64 224
  %r9072 = load i64, ptr %r9072.p, align 8, !alias.scope !3, !noalias !4
  %c9073 = trunc i64 %r9072 to i32
  %ror9074 = call i32 @llvm.fshr.i32(i32 %c9073, i32 %c9073, i32 8)
  %t9075 = and i32 %ror9074, -16777216
  %c9076 = zext i32 %t9075 to i64
  %wp9077 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9076, ptr %wp9077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4ec word 0x53047d29
  %r9078.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9078 = load i64, ptr %r9078.p, align 8, !alias.scope !3, !noalias !4
  %c9079 = trunc i64 %r9078 to i32
  %ror9080 = call i32 @llvm.fshr.i32(i32 %c9079, i32 %c9079, i32 4)
  %t9081 = and i32 %ror9080, 268435455
  %c9082 = zext i32 %t9081 to i64
  %wp9083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9082, ptr %wp9083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4f0 word 0x114c0129
  %r9084.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9084 = load i64, ptr %r9084.p, align 8, !alias.scope !3, !noalias !4
  %c9085 = trunc i64 %r9084 to i32
  %t9086 = add i32 %c9085, 3145728
  %c9087 = zext i32 %t9086 to i64
  %wp9088 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9087, ptr %wp9088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4f4 word 0x120c1129
  %r9089.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9089 = load i64, ptr %r9089.p, align 8, !alias.scope !3, !noalias !4
  %c9090 = trunc i64 %r9089 to i32
  %t9091 = and i32 %c9090, 32505856
  %c9092 = zext i32 %t9091 to i64
  %wp9093 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9092, ptr %wp9093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4f8 word 0x2a140129
  %r9094.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9094 = load i64, ptr %r9094.p, align 8, !alias.scope !3, !noalias !4
  %c9095 = trunc i64 %r9094 to i32
  %r9096.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9096 = load i64, ptr %r9096.p, align 8, !alias.scope !3, !noalias !4
  %c9097 = trunc i64 %r9096 to i32
  %t9098 = or i32 %c9097, %c9095
  %c9099 = zext i32 %t9098 to i64
  %wp9100 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9099, ptr %wp9100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd4fc word 0xb8004509
  %r9101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9101 = load i64, ptr %r9101.p, align 8, !alias.scope !3, !noalias !4
  %t9102 = add i64 %r9101, 4
  %r9103.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9103 = load i64, ptr %r9103.p, align 8, !alias.scope !3, !noalias !4
  %c9104 = trunc i64 %r9103 to i32
  %gmp9105 = inttoptr i64 %r9101 to ptr
  store i32 %c9104, ptr %gmp9105, align 1, !alias.scope !4, !noalias !3
  %wp9106 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9102, ptr %wp9106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd500 word 0xf90002e8
  %r9107.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9107 = load i64, ptr %r9107.p, align 8, !alias.scope !3, !noalias !4
  %r9108.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9108 = load i64, ptr %r9108.p, align 8, !alias.scope !3, !noalias !4
  %gmp9109 = inttoptr i64 %r9107 to ptr
  store i64 %r9108, ptr %gmp9109, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd504 word 0x17ffffd0
  br label %L_8000dd444
L_8000dd520_ft:
  ; @pc 0x8000dd520 word 0xa94026e8
  %r9132.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9132 = load i64, ptr %r9132.p, align 8, !alias.scope !3, !noalias !4
  %t9133 = add i64 %r9132, 8
  %gmp9134 = inttoptr i64 %r9132 to ptr
  %gml9135 = load i64, ptr %gmp9134, align 1, !alias.scope !4, !noalias !3
  %gmp9136 = inttoptr i64 %t9133 to ptr
  %gml9137 = load i64, ptr %gmp9136, align 1, !alias.scope !4, !noalias !3
  %wp9138 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9135, ptr %wp9138, align 8, !alias.scope !3, !noalias !4
  %wp9139 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml9137, ptr %wp9139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd524 word 0x9100610a
  %r9140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9140 = load i64, ptr %r9140.p, align 8, !alias.scope !3, !noalias !4
  %t9141 = add i64 %r9140, 24
  %wp9142 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9141, ptr %wp9142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd528 word 0xeb09015f
  %r9143.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9143 = load i64, ptr %r9143.p, align 8, !alias.scope !3, !noalias !4
  %r9144.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9144 = load i64, ptr %r9144.p, align 8, !alias.scope !3, !noalias !4
  %t9145 = sub i64 %r9143, %r9144
  %fn9146 = icmp slt i64 %t9145, 0
  %fz9147 = icmp eq i64 %t9145, 0
  %fc9148 = icmp uge i64 %r9143, %r9144
  %fx19149 = xor i64 %r9143, %r9144
  %fx29150 = xor i64 %r9143, %t9145
  %fva9151 = and i64 %fx19149, %fx29150
  %fv9152 = icmp slt i64 %fva9151, 0
  %nz9153 = zext i1 %fn9146 to i64
  %zz9154 = zext i1 %fz9147 to i64
  %cz9155 = zext i1 %fc9148 to i64
  %vz9156 = zext i1 %fv9152 to i64
  %ns9157 = shl i64 %nz9153, 31
  %zs9158 = shl i64 %zz9154, 30
  %cs9159 = shl i64 %cz9155, 29
  %vs9160 = shl i64 %vz9156, 28
  %nzor9161 = or i64 %ns9157, %zs9158
  %cvor9162 = or i64 %cs9159, %vs9160
  %nzcv9163 = or i64 %nzor9161, %cvor9162
  %wp9164 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9163, ptr %wp9164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd52c word 0x54000568
  %r9165.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9165 = load i64, ptr %r9165.p, align 8, !alias.scope !3, !noalias !4
  %fsh9167 = lshr i64 %r9165, 29
  %ftr9168 = trunc i64 %fsh9167 to i1
  %fsh9169 = lshr i64 %r9165, 30
  %ftr9170 = trunc i64 %fsh9169 to i1
  %fnz9171 = xor i1 %ftr9170, true
  %cond9166 = and i1 %ftr9168, %fnz9171
  br i1 %cond9166, label %L_8000dd5d8, label %L_8000dd530_ft
L_8000dd530_ft:
  ; @pc 0x8000dd530 word 0xb94013e9
  %r9172.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9172 = load i64, ptr %r9172.p, align 8, !alias.scope !3, !noalias !4
  %t9173 = add i64 %r9172, 16
  %gmp9174 = inttoptr i64 %t9173 to ptr
  %gml9175 = load i32, ptr %gmp9174, align 1, !alias.scope !4, !noalias !3
  %c9176 = zext i32 %gml9175 to i64
  %wp9177 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9176, ptr %wp9177, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd534 word 0x1100828a
  %r9178.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9178 = load i64, ptr %r9178.p, align 8, !alias.scope !3, !noalias !4
  %c9179 = trunc i64 %r9178 to i32
  %t9180 = add i32 %c9179, 32
  %c9181 = zext i32 %t9180 to i64
  %wp9182 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9181, ptr %wp9182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd538 word 0x53081d29
  %r9183.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9183 = load i64, ptr %r9183.p, align 8, !alias.scope !3, !noalias !4
  %c9184 = trunc i64 %r9183 to i32
  %ror9185 = call i32 @llvm.fshr.i32(i32 %c9184, i32 %c9184, i32 8)
  %t9186 = and i32 %ror9185, -16777216
  %c9187 = zext i32 %t9186 to i64
  %wp9188 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9187, ptr %wp9188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd53c word 0x53047d29
  %r9189.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9189 = load i64, ptr %r9189.p, align 8, !alias.scope !3, !noalias !4
  %c9190 = trunc i64 %r9189 to i32
  %ror9191 = call i32 @llvm.fshr.i32(i32 %c9190, i32 %c9190, i32 4)
  %t9192 = and i32 %ror9191, 268435455
  %c9193 = zext i32 %t9192 to i64
  %wp9194 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9193, ptr %wp9194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd540 word 0x114c0129
  %r9195.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9195 = load i64, ptr %r9195.p, align 8, !alias.scope !3, !noalias !4
  %c9196 = trunc i64 %r9195 to i32
  %t9197 = add i32 %c9196, 3145728
  %c9198 = zext i32 %t9197 to i64
  %wp9199 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9198, ptr %wp9199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd544 word 0x120c1129
  %r9200.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9200 = load i64, ptr %r9200.p, align 8, !alias.scope !3, !noalias !4
  %c9201 = trunc i64 %r9200 to i32
  %t9202 = and i32 %c9201, 32505856
  %c9203 = zext i32 %t9202 to i64
  %wp9204 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9203, ptr %wp9204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd548 word 0x2a0a0129
  %r9205.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9205 = load i64, ptr %r9205.p, align 8, !alias.scope !3, !noalias !4
  %c9206 = trunc i64 %r9205 to i32
  %r9207.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9207 = load i64, ptr %r9207.p, align 8, !alias.scope !3, !noalias !4
  %c9208 = trunc i64 %r9207 to i32
  %t9209 = or i32 %c9208, %c9206
  %c9210 = zext i32 %t9209 to i64
  %wp9211 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9210, ptr %wp9211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd54c word 0xb8004509
  %r9212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9212 = load i64, ptr %r9212.p, align 8, !alias.scope !3, !noalias !4
  %t9213 = add i64 %r9212, 4
  %r9214.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9214 = load i64, ptr %r9214.p, align 8, !alias.scope !3, !noalias !4
  %c9215 = trunc i64 %r9214 to i32
  %gmp9216 = inttoptr i64 %r9212 to ptr
  store i32 %c9215, ptr %gmp9216, align 1, !alias.scope !4, !noalias !3
  %wp9217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9213, ptr %wp9217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd550 word 0xf90002e8
  %r9218.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9218 = load i64, ptr %r9218.p, align 8, !alias.scope !3, !noalias !4
  %r9219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9219 = load i64, ptr %r9219.p, align 8, !alias.scope !3, !noalias !4
  %gmp9220 = inttoptr i64 %r9218 to ptr
  store i64 %r9219, ptr %gmp9220, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd554 word 0x17ffffbf
  br label %L_8000dd450
L_8000dd570_ft:
  ; @pc 0x8000dd570 word 0xa94026e8
  %r9243.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9243 = load i64, ptr %r9243.p, align 8, !alias.scope !3, !noalias !4
  %t9244 = add i64 %r9243, 8
  %gmp9245 = inttoptr i64 %r9243 to ptr
  %gml9246 = load i64, ptr %gmp9245, align 1, !alias.scope !4, !noalias !3
  %gmp9247 = inttoptr i64 %t9244 to ptr
  %gml9248 = load i64, ptr %gmp9247, align 1, !alias.scope !4, !noalias !3
  %wp9249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9246, ptr %wp9249, align 8, !alias.scope !3, !noalias !4
  %wp9250 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml9248, ptr %wp9250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd574 word 0x9100610a
  %r9251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9251 = load i64, ptr %r9251.p, align 8, !alias.scope !3, !noalias !4
  %t9252 = add i64 %r9251, 24
  %wp9253 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t9252, ptr %wp9253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd578 word 0xeb09015f
  %r9254.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9254 = load i64, ptr %r9254.p, align 8, !alias.scope !3, !noalias !4
  %r9255.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9255 = load i64, ptr %r9255.p, align 8, !alias.scope !3, !noalias !4
  %t9256 = sub i64 %r9254, %r9255
  %fn9257 = icmp slt i64 %t9256, 0
  %fz9258 = icmp eq i64 %t9256, 0
  %fc9259 = icmp uge i64 %r9254, %r9255
  %fx19260 = xor i64 %r9254, %r9255
  %fx29261 = xor i64 %r9254, %t9256
  %fva9262 = and i64 %fx19260, %fx29261
  %fv9263 = icmp slt i64 %fva9262, 0
  %nz9264 = zext i1 %fn9257 to i64
  %zz9265 = zext i1 %fz9258 to i64
  %cz9266 = zext i1 %fc9259 to i64
  %vz9267 = zext i1 %fv9263 to i64
  %ns9268 = shl i64 %nz9264, 31
  %zs9269 = shl i64 %zz9265, 30
  %cs9270 = shl i64 %cz9266, 29
  %vs9271 = shl i64 %vz9267, 28
  %nzor9272 = or i64 %ns9268, %zs9269
  %cvor9273 = or i64 %cs9270, %vs9271
  %nzcv9274 = or i64 %nzor9272, %cvor9273
  %wp9275 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9274, ptr %wp9275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd57c word 0x54000448
  %r9276.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9276 = load i64, ptr %r9276.p, align 8, !alias.scope !3, !noalias !4
  %fsh9278 = lshr i64 %r9276, 29
  %ftr9279 = trunc i64 %fsh9278 to i1
  %fsh9280 = lshr i64 %r9276, 30
  %ftr9281 = trunc i64 %fsh9280 to i1
  %fnz9282 = xor i1 %ftr9281, true
  %cond9277 = and i1 %ftr9279, %fnz9282
  br i1 %cond9277, label %L_8000dd604, label %L_8000dd580_ft
L_8000dd580_ft:
  ; @pc 0x8000dd580 word 0xb9402be9
  %r9283.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9283 = load i64, ptr %r9283.p, align 8, !alias.scope !3, !noalias !4
  %t9284 = add i64 %r9283, 40
  %gmp9285 = inttoptr i64 %t9284 to ptr
  %gml9286 = load i32, ptr %gmp9285, align 1, !alias.scope !4, !noalias !3
  %c9287 = zext i32 %gml9286 to i64
  %wp9288 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9287, ptr %wp9288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd584 word 0x1100628a
  %r9289.p = getelementptr inbounds i8, ptr %c, i64 160
  %r9289 = load i64, ptr %r9289.p, align 8, !alias.scope !3, !noalias !4
  %c9290 = trunc i64 %r9289 to i32
  %t9291 = add i32 %c9290, 24
  %c9292 = zext i32 %t9291 to i64
  %wp9293 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c9292, ptr %wp9293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd588 word 0x53081d29
  %r9294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9294 = load i64, ptr %r9294.p, align 8, !alias.scope !3, !noalias !4
  %c9295 = trunc i64 %r9294 to i32
  %ror9296 = call i32 @llvm.fshr.i32(i32 %c9295, i32 %c9295, i32 8)
  %t9297 = and i32 %ror9296, -16777216
  %c9298 = zext i32 %t9297 to i64
  %wp9299 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9298, ptr %wp9299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd58c word 0x53047d29
  %r9300.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9300 = load i64, ptr %r9300.p, align 8, !alias.scope !3, !noalias !4
  %c9301 = trunc i64 %r9300 to i32
  %ror9302 = call i32 @llvm.fshr.i32(i32 %c9301, i32 %c9301, i32 4)
  %t9303 = and i32 %ror9302, 268435455
  %c9304 = zext i32 %t9303 to i64
  %wp9305 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9304, ptr %wp9305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd590 word 0x114c0129
  %r9306.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9306 = load i64, ptr %r9306.p, align 8, !alias.scope !3, !noalias !4
  %c9307 = trunc i64 %r9306 to i32
  %t9308 = add i32 %c9307, 3145728
  %c9309 = zext i32 %t9308 to i64
  %wp9310 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9309, ptr %wp9310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd594 word 0x120c1129
  %r9311.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9311 = load i64, ptr %r9311.p, align 8, !alias.scope !3, !noalias !4
  %c9312 = trunc i64 %r9311 to i32
  %t9313 = and i32 %c9312, 32505856
  %c9314 = zext i32 %t9313 to i64
  %wp9315 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9314, ptr %wp9315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd598 word 0x2a0a0129
  %r9316.p = getelementptr inbounds i8, ptr %c, i64 80
  %r9316 = load i64, ptr %r9316.p, align 8, !alias.scope !3, !noalias !4
  %c9317 = trunc i64 %r9316 to i32
  %r9318.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9318 = load i64, ptr %r9318.p, align 8, !alias.scope !3, !noalias !4
  %c9319 = trunc i64 %r9318 to i32
  %t9320 = or i32 %c9319, %c9317
  %c9321 = zext i32 %t9320 to i64
  %wp9322 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c9321, ptr %wp9322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd59c word 0xb8004509
  %r9323.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9323 = load i64, ptr %r9323.p, align 8, !alias.scope !3, !noalias !4
  %t9324 = add i64 %r9323, 4
  %r9325.p = getelementptr inbounds i8, ptr %c, i64 72
  %r9325 = load i64, ptr %r9325.p, align 8, !alias.scope !3, !noalias !4
  %c9326 = trunc i64 %r9325 to i32
  %gmp9327 = inttoptr i64 %r9323 to ptr
  store i32 %c9326, ptr %gmp9327, align 1, !alias.scope !4, !noalias !3
  %wp9328 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t9324, ptr %wp9328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd5a0 word 0xf90002e8
  %r9329.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9329 = load i64, ptr %r9329.p, align 8, !alias.scope !3, !noalias !4
  %r9330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9330 = load i64, ptr %r9330.p, align 8, !alias.scope !3, !noalias !4
  %gmp9331 = inttoptr i64 %r9329 to ptr
  store i64 %r9330, ptr %gmp9331, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd5a4 word 0x17ffffae
  br label %L_8000dd45c
L_8000dd660_ft:
  ; @pc 0x8000dd660 word 0xf9401be0
  %r9512.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9512 = load i64, ptr %r9512.p, align 8, !alias.scope !3, !noalias !4
  %t9513 = add i64 %r9512, 48
  %gmp9514 = inttoptr i64 %t9513 to ptr
  %gml9515 = load i64, ptr %gmp9514, align 1, !alias.scope !4, !noalias !3
  %wp9516 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml9515, ptr %wp9516, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd664 word 0xaa1703e1
  %r9517.p = getelementptr inbounds i8, ptr %c, i64 184
  %r9517 = load i64, ptr %r9517.p, align 8, !alias.scope !3, !noalias !4
  %t9518 = or i64 0, %r9517
  %wp9519 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t9518, ptr %wp9519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd668 word 0x52800042
  %c9520 = zext i32 2 to i64
  %wp9521 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c9520, ptr %wp9521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd66c word 0xaa1503e4
  %r9522.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9522 = load i64, ptr %r9522.p, align 8, !alias.scope !3, !noalias !4
  %t9523 = or i64 0, %r9522
  %wp9524 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %t9523, ptr %wp9524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd670 word 0xaa1603e5
  %r9525.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9525 = load i64, ptr %r9525.p, align 8, !alias.scope !3, !noalias !4
  %t9526 = or i64 0, %r9525
  %wp9527 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %t9526, ptr %wp9527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd674 word 0xd63f0100
  %r9528.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9528 = load i64, ptr %r9528.p, align 8, !alias.scope !3, !noalias !4
  %fp9529 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r9528, ptr %fp9529, align 8, !alias.scope !3, !noalias !4
  %wp9530 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645240, ptr %wp9530, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd678 word 0x17fffe7d
  br label %L_8000dd06c
L_8000dd720_ft:
  ; @pc 0x8000dd720 word 0xf9400e68
  %r9652.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9652 = load i64, ptr %r9652.p, align 8, !alias.scope !3, !noalias !4
  %t9653 = add i64 %r9652, 24
  %gmp9654 = inttoptr i64 %t9653 to ptr
  %gml9655 = load i64, ptr %gmp9654, align 1, !alias.scope !4, !noalias !3
  %wp9656 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9655, ptr %wp9656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd724 word 0xf87b7915
  %r9657.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9657 = load i64, ptr %r9657.p, align 8, !alias.scope !3, !noalias !4
  %r9658.p = getelementptr inbounds i8, ptr %c, i64 216
  %r9658 = load i64, ptr %r9658.p, align 8, !alias.scope !3, !noalias !4
  %t9659 = shl i64 %r9658, 3
  %t9660 = add i64 %r9657, %t9659
  %gmp9661 = inttoptr i64 %t9660 to ptr
  %gml9662 = load i64, ptr %gmp9661, align 1, !alias.scope !4, !noalias !3
  %wp9663 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml9662, ptr %wp9663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd728 word 0xf9401268
  %r9664.p = getelementptr inbounds i8, ptr %c, i64 152
  %r9664 = load i64, ptr %r9664.p, align 8, !alias.scope !3, !noalias !4
  %t9665 = add i64 %r9664, 32
  %gmp9666 = inttoptr i64 %t9665 to ptr
  %gml9667 = load i64, ptr %gmp9666, align 1, !alias.scope !4, !noalias !3
  %wp9668 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml9667, ptr %wp9668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd72c word 0xf90017e8
  %r9669.p = getelementptr inbounds i8, ptr %c, i64 256
  %r9669 = load i64, ptr %r9669.p, align 8, !alias.scope !3, !noalias !4
  %t9670 = add i64 %r9669, 40
  %r9671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9671 = load i64, ptr %r9671.p, align 8, !alias.scope !3, !noalias !4
  %gmp9672 = inttoptr i64 %t9670 to ptr
  store i64 %r9671, ptr %gmp9672, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd730 word 0x9103f2b6
  %r9673.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9673 = load i64, ptr %r9673.p, align 8, !alias.scope !3, !noalias !4
  %t9674 = add i64 %r9673, 252
  %wp9675 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t9674, ptr %wp9675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd734 word 0x88dffec8
  %r9676.p = getelementptr inbounds i8, ptr %c, i64 176
  %r9676 = load i64, ptr %r9676.p, align 8, !alias.scope !3, !noalias !4
  %atp9677 = inttoptr i64 %r9676 to ptr
  %lda9678 = load atomic i32, ptr %atp9677 acquire, align 4, !alias.scope !4, !noalias !3
  %c9679 = zext i32 %lda9678 to i64
  %wp9680 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c9679, ptr %wp9680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd738 word 0x34001b28
  %r9681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9681 = load i64, ptr %r9681.p, align 8, !alias.scope !3, !noalias !4
  %c9682 = trunc i64 %r9681 to i32
  %cmp9683 = icmp eq i32 %c9682, 0
  br i1 %cmp9683, label %L_8000dda9c, label %L_8000dd73c
L_8000dd74c_ft:
  ; @pc 0x8000dd74c word 0x7200783f
  %r9716.p = getelementptr inbounds i8, ptr %c, i64 8
  %r9716 = load i64, ptr %r9716.p, align 8, !alias.scope !3, !noalias !4
  %c9717 = trunc i64 %r9716 to i32
  %t9718 = and i32 %c9717, 2147483647
  %fn9719 = icmp slt i32 %t9718, 0
  %fz9720 = icmp eq i32 %t9718, 0
  %nz9721 = zext i1 %fn9719 to i64
  %zz9722 = zext i1 %fz9720 to i64
  %ns9723 = shl i64 %nz9721, 31
  %zs9724 = shl i64 %zz9722, 30
  %nzcv9725 = or i64 %ns9723, %zs9724
  %wp9726 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv9725, ptr %wp9726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd750 word 0x54001820
  %r9727.p = getelementptr inbounds i8, ptr %c, i64 272
  %r9727 = load i64, ptr %r9727.p, align 8, !alias.scope !3, !noalias !4
  %fsh9729 = lshr i64 %r9727, 30
  %cond9728 = trunc i64 %fsh9729 to i1
  br i1 %cond9728, label %L_8000dda54, label %L_8000dd754_ft
L_8000dd754_ft:
  ; @pc 0x8000dd754 word 0x37f819a1
  %r9730.p = getelementptr inbounds i8, ptr %c, i64 8
  %r9730 = load i64, ptr %r9730.p, align 8, !alias.scope !3, !noalias !4
  %t9731 = and i64 %r9730, 2147483648
  %cmp9732 = icmp ne i64 %t9731, 0
  br i1 %cmp9732, label %L_8000dda88, label %L_8000dd758_ft
L_8000dd758_ft:
  ; @pc 0x8000dd758 word 0xaa1503e0
  %r9733.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9733 = load i64, ptr %r9733.p, align 8, !alias.scope !3, !noalias !4
  %t9734 = or i64 0, %r9733
  %wp9735 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t9734, ptr %wp9735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd75c word 0x940439a8
  %wp9736 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645472, ptr %wp9736, align 8, !alias.scope !3, !noalias !4
  call void @f_8001ebdfc(ptr %c)
  br label %L_8000dd760
L_8000dd76c_ft:
  ; @pc 0x8000dd76c word 0x140000cc
  br label %L_8000dda9c
L_8000dd868_ft:
  ; @pc 0x8000dd868 word 0xeb15011f
  %r9986.p = getelementptr inbounds i8, ptr %c, i64 64
  %r9986 = load i64, ptr %r9986.p, align 8, !alias.scope !3, !noalias !4
  %r9987.p = getelementptr inbounds i8, ptr %c, i64 168
  %r9987 = load i64, ptr %r9987.p, align 8, !alias.scope !3, !noalias !4
  %t9988 = sub i64 %r9986, %r9987
  %fn9989 = icmp slt i64 %t9988, 0
  %fz9990 = icmp eq i64 %t9988, 0
  %fc9991 = icmp uge i64 %r9986, %r9987
  %fx19992 = xor i64 %r9986, %r9987
  %fx29993 = xor i64 %r9986, %t9988
  %fva9994 = and i64 %fx19992, %fx29993
  %fv9995 = icmp slt i64 %fva9994, 0
  %nz9996 = zext i1 %fn9989 to i64
  %zz9997 = zext i1 %fz9990 to i64
  %cz9998 = zext i1 %fc9991 to i64
  %vz9999 = zext i1 %fv9995 to i64
  %ns10000 = shl i64 %nz9996, 31
  %zs10001 = shl i64 %zz9997, 30
  %cs10002 = shl i64 %cz9998, 29
  %vs10003 = shl i64 %vz9999, 28
  %nzor10004 = or i64 %ns10000, %zs10001
  %cvor10005 = or i64 %cs10002, %vs10003
  %nzcv10006 = or i64 %nzor10004, %cvor10005
  %wp10007 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10006, ptr %wp10007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd86c word 0x54ffb860
  %r10008.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10008 = load i64, ptr %r10008.p, align 8, !alias.scope !3, !noalias !4
  %fsh10010 = lshr i64 %r10008, 30
  %cond10009 = trunc i64 %fsh10010 to i1
  br i1 %cond10009, label %L_8000dcf78, label %L_8000dd870_ft
L_8000dd870_ft:
  ; @pc 0x8000dd870 word 0xaa1403e0
  %r10011.p = getelementptr inbounds i8, ptr %c, i64 160
  %r10011 = load i64, ptr %r10011.p, align 8, !alias.scope !3, !noalias !4
  %t10012 = or i64 0, %r10011
  %wp10013 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10012, ptr %wp10013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd874 word 0xaa1403f5
  %r10014.p = getelementptr inbounds i8, ptr %c, i64 160
  %r10014 = load i64, ptr %r10014.p, align 8, !alias.scope !3, !noalias !4
  %t10015 = or i64 0, %r10014
  %wp10016 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t10015, ptr %wp10016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd878 word 0xd63f0100
  %r10017.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10017 = load i64, ptr %r10017.p, align 8, !alias.scope !3, !noalias !4
  %fp10018 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10017, ptr %fp10018, align 8, !alias.scope !3, !noalias !4
  %wp10019 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360645756, ptr %wp10019, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000dd87c word 0x17fffdc0
  br label %L_8000dcf7c
L_8000dd8dc_ft:
  ; @pc 0x8000dd8dc word 0x52800028
  %c10124 = zext i32 1 to i64
  %wp10125 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10124, ptr %wp10125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8e0 word 0x390042a8
  %r10126.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10126 = load i64, ptr %r10126.p, align 8, !alias.scope !3, !noalias !4
  %t10127 = add i64 %r10126, 16
  %r10128.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10128 = load i64, ptr %r10128.p, align 8, !alias.scope !3, !noalias !4
  %c10129 = trunc i64 %r10128 to i32
  %c10130 = trunc i32 %c10129 to i8
  %gmp10131 = inttoptr i64 %t10127 to ptr
  store i8 %c10130, ptr %gmp10131, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd8e4 word 0xf001c368
  %wp10132 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp10132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8e8 word 0xf9479508
  %r10133.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10133 = load i64, ptr %r10133.p, align 8, !alias.scope !3, !noalias !4
  %t10134 = add i64 %r10133, 3880
  %gmp10135 = inttoptr i64 %t10134 to ptr
  %gml10136 = load i64, ptr %gmp10135, align 1, !alias.scope !4, !noalias !3
  %wp10137 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10136, ptr %wp10137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8ec word 0xb9400108
  %r10138.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10138 = load i64, ptr %r10138.p, align 8, !alias.scope !3, !noalias !4
  %gmp10139 = inttoptr i64 %r10138 to ptr
  %gml10140 = load i32, ptr %gmp10139, align 1, !alias.scope !4, !noalias !3
  %c10141 = zext i32 %gml10140 to i64
  %wp10142 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10141, ptr %wp10142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8f0 word 0x340015e8
  %r10143.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10143 = load i64, ptr %r10143.p, align 8, !alias.scope !3, !noalias !4
  %c10144 = trunc i64 %r10143 to i32
  %cmp10145 = icmp eq i32 %c10144, 0
  br i1 %cmp10145, label %L_8000ddbac, label %L_8000dd8f4_ft
L_8000dd8f4_ft:
  ; @pc 0x8000dd8f4 word 0xa94026a8
  %r10146.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10146 = load i64, ptr %r10146.p, align 8, !alias.scope !3, !noalias !4
  %t10147 = add i64 %r10146, 8
  %gmp10148 = inttoptr i64 %r10146 to ptr
  %gml10149 = load i64, ptr %gmp10148, align 1, !alias.scope !4, !noalias !3
  %gmp10150 = inttoptr i64 %t10147 to ptr
  %gml10151 = load i64, ptr %gmp10150, align 1, !alias.scope !4, !noalias !3
  %wp10152 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10149, ptr %wp10152, align 8, !alias.scope !3, !noalias !4
  %wp10153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml10151, ptr %wp10153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8f8 word 0x9100610a
  %r10154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10154 = load i64, ptr %r10154.p, align 8, !alias.scope !3, !noalias !4
  %t10155 = add i64 %r10154, 24
  %wp10156 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t10155, ptr %wp10156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd8fc word 0xeb09015f
  %r10157.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10157 = load i64, ptr %r10157.p, align 8, !alias.scope !3, !noalias !4
  %r10158.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10158 = load i64, ptr %r10158.p, align 8, !alias.scope !3, !noalias !4
  %t10159 = sub i64 %r10157, %r10158
  %fn10160 = icmp slt i64 %t10159, 0
  %fz10161 = icmp eq i64 %t10159, 0
  %fc10162 = icmp uge i64 %r10157, %r10158
  %fx110163 = xor i64 %r10157, %r10158
  %fx210164 = xor i64 %r10157, %t10159
  %fva10165 = and i64 %fx110163, %fx210164
  %fv10166 = icmp slt i64 %fva10165, 0
  %nz10167 = zext i1 %fn10160 to i64
  %zz10168 = zext i1 %fz10161 to i64
  %cz10169 = zext i1 %fc10162 to i64
  %vz10170 = zext i1 %fv10166 to i64
  %ns10171 = shl i64 %nz10167, 31
  %zs10172 = shl i64 %zz10168, 30
  %cs10173 = shl i64 %cz10169, 29
  %vs10174 = shl i64 %vz10170, 28
  %nzor10175 = or i64 %ns10171, %zs10172
  %cvor10176 = or i64 %cs10173, %vs10174
  %nzcv10177 = or i64 %nzor10175, %cvor10176
  %wp10178 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10177, ptr %wp10178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd900 word 0x54001568
  %r10179.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10179 = load i64, ptr %r10179.p, align 8, !alias.scope !3, !noalias !4
  %fsh10181 = lshr i64 %r10179, 29
  %ftr10182 = trunc i64 %fsh10181 to i1
  %fsh10183 = lshr i64 %r10179, 30
  %ftr10184 = trunc i64 %fsh10183 to i1
  %fnz10185 = xor i1 %ftr10184, true
  %cond10180 = and i1 %ftr10182, %fnz10185
  br i1 %cond10180, label %L_8000ddbac, label %L_8000dd904_ft
L_8000dd904_ft:
  ; @pc 0x8000dd904 word 0x530c2c69
  %r10186.p = getelementptr inbounds i8, ptr %c, i64 24
  %r10186 = load i64, ptr %r10186.p, align 8, !alias.scope !3, !noalias !4
  %c10187 = trunc i64 %r10186 to i32
  %ror10188 = call i32 @llvm.fshr.i32(i32 %c10187, i32 %c10187, i32 12)
  %t10189 = and i32 %ror10188, -1048576
  %c10190 = zext i32 %t10189 to i64
  %wp10191 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10190, ptr %wp10191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd908 word 0x34001678
  %r10192.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10192 = load i64, ptr %r10192.p, align 8, !alias.scope !3, !noalias !4
  %c10193 = trunc i64 %r10192 to i32
  %cmp10194 = icmp eq i32 %c10193, 0
  br i1 %cmp10194, label %L_8000ddbd4, label %L_8000dd90c_ft
L_8000dd90c_ft:
  ; @pc 0x8000dd90c word 0x1103ff0a
  %r10195.p = getelementptr inbounds i8, ptr %c, i64 192
  %r10195 = load i64, ptr %r10195.p, align 8, !alias.scope !3, !noalias !4
  %c10196 = trunc i64 %r10195 to i32
  %t10197 = add i32 %c10196, 255
  %c10198 = zext i32 %t10197 to i64
  %wp10199 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10198, ptr %wp10199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd910 word 0x114c0129
  %r10200.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10200 = load i64, ptr %r10200.p, align 8, !alias.scope !3, !noalias !4
  %c10201 = trunc i64 %r10200 to i32
  %t10202 = add i32 %c10201, 3145728
  %c10203 = zext i32 %t10202 to i64
  %wp10204 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10203, ptr %wp10204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd914 word 0x12185d4a
  %r10205.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10205 = load i64, ptr %r10205.p, align 8, !alias.scope !3, !noalias !4
  %c10206 = trunc i64 %r10205 to i32
  %t10207 = and i32 %c10206, -256
  %c10208 = zext i32 %t10207 to i64
  %wp10209 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10208, ptr %wp10209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd918 word 0x120c1129
  %r10210.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10210 = load i64, ptr %r10210.p, align 8, !alias.scope !3, !noalias !4
  %c10211 = trunc i64 %r10210 to i32
  %t10212 = and i32 %c10211, 32505856
  %c10213 = zext i32 %t10212 to i64
  %wp10214 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10213, ptr %wp10214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd91c word 0x2900f10a
  %r10215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10215 = load i64, ptr %r10215.p, align 8, !alias.scope !3, !noalias !4
  %t10216 = add i64 %r10215, 4
  %t10217 = add i64 %t10216, 4
  %r10218.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10218 = load i64, ptr %r10218.p, align 8, !alias.scope !3, !noalias !4
  %c10219 = trunc i64 %r10218 to i32
  %gmp10220 = inttoptr i64 %t10216 to ptr
  store i32 %c10219, ptr %gmp10220, align 1, !alias.scope !4, !noalias !3
  %r10221.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10221 = load i64, ptr %r10221.p, align 8, !alias.scope !3, !noalias !4
  %c10222 = trunc i64 %r10221 to i32
  %gmp10223 = inttoptr i64 %t10217 to ptr
  store i32 %c10222, ptr %gmp10223, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd920 word 0x5281238a
  %c10224 = zext i32 2332 to i64
  %wp10225 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10224, ptr %wp10225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd924 word 0x72b0002a
  %r10226.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10226 = load i64, ptr %r10226.p, align 8, !alias.scope !3, !noalias !4
  %t10227 = and i64 %r10226, -4294901761
  %t10228 = or i64 %t10227, 2147549184
  %c10229 = trunc i64 %t10228 to i32
  %c10230 = zext i32 %c10229 to i64
  %wp10231 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10230, ptr %wp10231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd928 word 0x2a0a0129
  %r10232.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10232 = load i64, ptr %r10232.p, align 8, !alias.scope !3, !noalias !4
  %c10233 = trunc i64 %r10232 to i32
  %r10234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10234 = load i64, ptr %r10234.p, align 8, !alias.scope !3, !noalias !4
  %c10235 = trunc i64 %r10234 to i32
  %t10236 = or i32 %c10235, %c10233
  %c10237 = zext i32 %t10236 to i64
  %wp10238 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10237, ptr %wp10238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd92c word 0x2a1a03ea
  %r10239.p = getelementptr inbounds i8, ptr %c, i64 208
  %r10239 = load i64, ptr %r10239.p, align 8, !alias.scope !3, !noalias !4
  %c10240 = trunc i64 %r10239 to i32
  %t10241 = or i32 0, %c10240
  %c10242 = zext i32 %t10241 to i64
  %wp10243 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10242, ptr %wp10243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd930 word 0x11002129
  %r10244.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10244 = load i64, ptr %r10244.p, align 8, !alias.scope !3, !noalias !4
  %c10245 = trunc i64 %r10244 to i32
  %t10246 = add i32 %c10245, 8
  %c10247 = zext i32 %t10246 to i64
  %wp10248 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10247, ptr %wp10248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd934 word 0x2901a516
  %r10249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10249 = load i64, ptr %r10249.p, align 8, !alias.scope !3, !noalias !4
  %t10250 = add i64 %r10249, 12
  %t10251 = add i64 %t10250, 4
  %r10252.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10252 = load i64, ptr %r10252.p, align 8, !alias.scope !3, !noalias !4
  %c10253 = trunc i64 %r10252 to i32
  %gmp10254 = inttoptr i64 %t10250 to ptr
  store i32 %c10253, ptr %gmp10254, align 1, !alias.scope !4, !noalias !3
  %r10255.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10255 = load i64, ptr %r10255.p, align 8, !alias.scope !3, !noalias !4
  %c10256 = trunc i64 %r10255 to i32
  %gmp10257 = inttoptr i64 %t10251 to ptr
  store i32 %c10256, ptr %gmp10257, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dd938 word 0x528000a9
  %c10258 = zext i32 5 to i64
  %wp10259 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10258, ptr %wp10259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dd93c word 0x140000ad
  br label %L_8000ddbf0
L_8000dda10_ft:
  ; @pc 0x8000dda10 word 0xa94026e8
  %r10430.p = getelementptr inbounds i8, ptr %c, i64 184
  %r10430 = load i64, ptr %r10430.p, align 8, !alias.scope !3, !noalias !4
  %t10431 = add i64 %r10430, 8
  %gmp10432 = inttoptr i64 %r10430 to ptr
  %gml10433 = load i64, ptr %gmp10432, align 1, !alias.scope !4, !noalias !3
  %gmp10434 = inttoptr i64 %t10431 to ptr
  %gml10435 = load i64, ptr %gmp10434, align 1, !alias.scope !4, !noalias !3
  %wp10436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10433, ptr %wp10436, align 8, !alias.scope !3, !noalias !4
  %wp10437 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml10435, ptr %wp10437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda14 word 0x9100610a
  %r10438.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10438 = load i64, ptr %r10438.p, align 8, !alias.scope !3, !noalias !4
  %t10439 = add i64 %r10438, 24
  %wp10440 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t10439, ptr %wp10440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda18 word 0xeb09015f
  %r10441.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10441 = load i64, ptr %r10441.p, align 8, !alias.scope !3, !noalias !4
  %r10442.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10442 = load i64, ptr %r10442.p, align 8, !alias.scope !3, !noalias !4
  %t10443 = sub i64 %r10441, %r10442
  %fn10444 = icmp slt i64 %t10443, 0
  %fz10445 = icmp eq i64 %t10443, 0
  %fc10446 = icmp uge i64 %r10441, %r10442
  %fx110447 = xor i64 %r10441, %r10442
  %fx210448 = xor i64 %r10441, %t10443
  %fva10449 = and i64 %fx110447, %fx210448
  %fv10450 = icmp slt i64 %fva10449, 0
  %nz10451 = zext i1 %fn10444 to i64
  %zz10452 = zext i1 %fz10445 to i64
  %cz10453 = zext i1 %fc10446 to i64
  %vz10454 = zext i1 %fv10450 to i64
  %ns10455 = shl i64 %nz10451, 31
  %zs10456 = shl i64 %zz10452, 30
  %cs10457 = shl i64 %cz10453, 29
  %vs10458 = shl i64 %vz10454, 28
  %nzor10459 = or i64 %ns10455, %zs10456
  %cvor10460 = or i64 %cs10457, %vs10458
  %nzcv10461 = or i64 %nzor10459, %cvor10460
  %wp10462 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10461, ptr %wp10462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda1c word 0x54000f28
  %r10463.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10463 = load i64, ptr %r10463.p, align 8, !alias.scope !3, !noalias !4
  %fsh10465 = lshr i64 %r10463, 29
  %ftr10466 = trunc i64 %fsh10465 to i1
  %fsh10467 = lshr i64 %r10463, 30
  %ftr10468 = trunc i64 %fsh10467 to i1
  %fnz10469 = xor i1 %ftr10468, true
  %cond10464 = and i1 %ftr10466, %fnz10469
  br i1 %cond10464, label %L_8000ddc00, label %L_8000dda20_ft
L_8000dda20_ft:
  ; @pc 0x8000dda20 word 0x530c2c69
  %r10470.p = getelementptr inbounds i8, ptr %c, i64 24
  %r10470 = load i64, ptr %r10470.p, align 8, !alias.scope !3, !noalias !4
  %c10471 = trunc i64 %r10470 to i32
  %ror10472 = call i32 @llvm.fshr.i32(i32 %c10471, i32 %c10471, i32 12)
  %t10473 = and i32 %ror10472, -1048576
  %c10474 = zext i32 %t10473 to i64
  %wp10475 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10474, ptr %wp10475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda24 word 0x34001036
  %r10476.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10476 = load i64, ptr %r10476.p, align 8, !alias.scope !3, !noalias !4
  %c10477 = trunc i64 %r10476 to i32
  %cmp10478 = icmp eq i32 %c10477, 0
  br i1 %cmp10478, label %L_8000ddc28, label %L_8000dda28_ft
L_8000dda28_ft:
  ; @pc 0x8000dda28 word 0x1103feca
  %r10479.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10479 = load i64, ptr %r10479.p, align 8, !alias.scope !3, !noalias !4
  %c10480 = trunc i64 %r10479 to i32
  %t10481 = add i32 %c10480, 255
  %c10482 = zext i32 %t10481 to i64
  %wp10483 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10482, ptr %wp10483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda2c word 0x114c0129
  %r10484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10484 = load i64, ptr %r10484.p, align 8, !alias.scope !3, !noalias !4
  %c10485 = trunc i64 %r10484 to i32
  %t10486 = add i32 %c10485, 3145728
  %c10487 = zext i32 %t10486 to i64
  %wp10488 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10487, ptr %wp10488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda30 word 0x12185d4a
  %r10489.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10489 = load i64, ptr %r10489.p, align 8, !alias.scope !3, !noalias !4
  %c10490 = trunc i64 %r10489 to i32
  %t10491 = and i32 %c10490, -256
  %c10492 = zext i32 %t10491 to i64
  %wp10493 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10492, ptr %wp10493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda34 word 0x120c1129
  %r10494.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10494 = load i64, ptr %r10494.p, align 8, !alias.scope !3, !noalias !4
  %c10495 = trunc i64 %r10494 to i32
  %t10496 = and i32 %c10495, 32505856
  %c10497 = zext i32 %t10496 to i64
  %wp10498 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10497, ptr %wp10498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda38 word 0x2900f10a
  %r10499.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10499 = load i64, ptr %r10499.p, align 8, !alias.scope !3, !noalias !4
  %t10500 = add i64 %r10499, 4
  %t10501 = add i64 %t10500, 4
  %r10502.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10502 = load i64, ptr %r10502.p, align 8, !alias.scope !3, !noalias !4
  %c10503 = trunc i64 %r10502 to i32
  %gmp10504 = inttoptr i64 %t10500 to ptr
  store i32 %c10503, ptr %gmp10504, align 1, !alias.scope !4, !noalias !3
  %r10505.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10505 = load i64, ptr %r10505.p, align 8, !alias.scope !3, !noalias !4
  %c10506 = trunc i64 %r10505 to i32
  %gmp10507 = inttoptr i64 %t10501 to ptr
  store i32 %c10506, ptr %gmp10507, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dda3c word 0x5281238a
  %c10508 = zext i32 2332 to i64
  %wp10509 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10508, ptr %wp10509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda40 word 0x72b0002a
  %r10510.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10510 = load i64, ptr %r10510.p, align 8, !alias.scope !3, !noalias !4
  %t10511 = and i64 %r10510, -4294901761
  %t10512 = or i64 %t10511, 2147549184
  %c10513 = trunc i64 %t10512 to i32
  %c10514 = zext i32 %c10513 to i64
  %wp10515 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c10514, ptr %wp10515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda44 word 0x2a0a0129
  %r10516.p = getelementptr inbounds i8, ptr %c, i64 80
  %r10516 = load i64, ptr %r10516.p, align 8, !alias.scope !3, !noalias !4
  %c10517 = trunc i64 %r10516 to i32
  %r10518.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10518 = load i64, ptr %r10518.p, align 8, !alias.scope !3, !noalias !4
  %c10519 = trunc i64 %r10518 to i32
  %t10520 = or i32 %c10519, %c10517
  %c10521 = zext i32 %t10520 to i64
  %wp10522 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10521, ptr %wp10522, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda48 word 0x2901a515
  %r10523.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10523 = load i64, ptr %r10523.p, align 8, !alias.scope !3, !noalias !4
  %t10524 = add i64 %r10523, 12
  %t10525 = add i64 %t10524, 4
  %r10526.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10526 = load i64, ptr %r10526.p, align 8, !alias.scope !3, !noalias !4
  %c10527 = trunc i64 %r10526 to i32
  %gmp10528 = inttoptr i64 %t10524 to ptr
  store i32 %c10527, ptr %gmp10528, align 1, !alias.scope !4, !noalias !3
  %r10529.p = getelementptr inbounds i8, ptr %c, i64 72
  %r10529 = load i64, ptr %r10529.p, align 8, !alias.scope !3, !noalias !4
  %c10530 = trunc i64 %r10529 to i32
  %gmp10531 = inttoptr i64 %t10525 to ptr
  store i32 %c10530, ptr %gmp10531, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8000dda4c word 0x528000a9
  %c10532 = zext i32 5 to i64
  %wp10533 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c10532, ptr %wp10533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000dda50 word 0x1400007d
  br label %L_8000ddc44
L_8000dda60_ft:
  ; @pc 0x8000dda60 word 0x1400000f
  br label %L_8000dda9c
L_8000ddaa8_ft:
  ; @pc 0x8000ddaa8 word 0x79c206a2
  %r10662.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10662 = load i64, ptr %r10662.p, align 8, !alias.scope !3, !noalias !4
  %t10663 = add i64 %r10662, 258
  %gmp10664 = inttoptr i64 %t10663 to ptr
  %gml10665 = load i16, ptr %gmp10664, align 1, !alias.scope !4, !noalias !3
  %c10666 = sext i16 %gml10665 to i32
  %c10667 = zext i32 %c10666 to i64
  %wp10668 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10667, ptr %wp10668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaac word 0x3100045f
  %r10669.p = getelementptr inbounds i8, ptr %c, i64 16
  %r10669 = load i64, ptr %r10669.p, align 8, !alias.scope !3, !noalias !4
  %c10670 = trunc i64 %r10669 to i32
  %t10671 = add i32 %c10670, 1
  %fn10672 = icmp slt i32 %t10671, 0
  %fz10673 = icmp eq i32 %t10671, 0
  %fc10674 = icmp ult i32 %t10671, %c10670
  %fx110675 = xor i32 %c10670, %t10671
  %fx210676 = xor i32 1, %t10671
  %fva10677 = and i32 %fx110675, %fx210676
  %fv10678 = icmp slt i32 %fva10677, 0
  %nz10679 = zext i1 %fn10672 to i64
  %zz10680 = zext i1 %fz10673 to i64
  %cz10681 = zext i1 %fc10674 to i64
  %vz10682 = zext i1 %fv10678 to i64
  %ns10683 = shl i64 %nz10679, 31
  %zs10684 = shl i64 %zz10680, 30
  %cs10685 = shl i64 %cz10681, 29
  %vs10686 = shl i64 %vz10682, 28
  %nzor10687 = or i64 %ns10683, %zs10684
  %cvor10688 = or i64 %cs10685, %vs10686
  %nzcv10689 = or i64 %nzor10687, %cvor10688
  %wp10690 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10689, ptr %wp10690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddab0 word 0x54ff9680
  %r10691.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10691 = load i64, ptr %r10691.p, align 8, !alias.scope !3, !noalias !4
  %fsh10693 = lshr i64 %r10691, 30
  %cond10692 = trunc i64 %fsh10693 to i1
  br i1 %cond10692, label %L_8000dcd80, label %L_8000ddab4_ft
L_8000ddab4_ft:
  ; @pc 0x8000ddab4 word 0xf001c368
  %wp10694 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp10694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddab8 word 0xf9461d08
  %r10695.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10695 = load i64, ptr %r10695.p, align 8, !alias.scope !3, !noalias !4
  %t10696 = add i64 %r10695, 3128
  %gmp10697 = inttoptr i64 %t10696 to ptr
  %gml10698 = load i64, ptr %gmp10697, align 1, !alias.scope !4, !noalias !3
  %wp10699 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10698, ptr %wp10699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddabc word 0xf9400108
  %r10700.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10700 = load i64, ptr %r10700.p, align 8, !alias.scope !3, !noalias !4
  %gmp10701 = inttoptr i64 %r10700 to ptr
  %gml10702 = load i64, ptr %gmp10701, align 1, !alias.scope !4, !noalias !3
  %wp10703 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10702, ptr %wp10703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddac0 word 0xf940b500
  %r10704.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10704 = load i64, ptr %r10704.p, align 8, !alias.scope !3, !noalias !4
  %t10705 = add i64 %r10704, 360
  %gmp10706 = inttoptr i64 %t10705 to ptr
  %gml10707 = load i64, ptr %gmp10706, align 1, !alias.scope !4, !noalias !3
  %wp10708 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml10707, ptr %wp10708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddac4 word 0xf001c368
  %wp10709 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419818496, ptr %wp10709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddac8 word 0xf947bd08
  %r10710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10710 = load i64, ptr %r10710.p, align 8, !alias.scope !3, !noalias !4
  %t10711 = add i64 %r10710, 3960
  %gmp10712 = inttoptr i64 %t10711 to ptr
  %gml10713 = load i64, ptr %gmp10712, align 1, !alias.scope !4, !noalias !3
  %wp10714 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10713, ptr %wp10714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddacc word 0xf9400108
  %r10715.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10715 = load i64, ptr %r10715.p, align 8, !alias.scope !3, !noalias !4
  %gmp10716 = inttoptr i64 %r10715 to ptr
  %gml10717 = load i64, ptr %gmp10716, align 1, !alias.scope !4, !noalias !3
  %wp10718 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10717, ptr %wp10718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddad0 word 0xd63f0100
  %r10719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10719 = load i64, ptr %r10719.p, align 8, !alias.scope !3, !noalias !4
  %fp10720 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10719, ptr %fp10720, align 8, !alias.scope !3, !noalias !4
  %wp10721 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646356, ptr %wp10721, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000ddad4 word 0xf94017e8
  %r10722.p = getelementptr inbounds i8, ptr %c, i64 256
  %r10722 = load i64, ptr %r10722.p, align 8, !alias.scope !3, !noalias !4
  %t10723 = add i64 %r10722, 40
  %gmp10724 = inttoptr i64 %t10723 to ptr
  %gml10725 = load i64, ptr %gmp10724, align 1, !alias.scope !4, !noalias !3
  %wp10726 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10725, ptr %wp10726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddad8 word 0xaa0003f5
  %r10727.p = getelementptr inbounds i8, ptr %c, i64 0
  %r10727 = load i64, ptr %r10727.p, align 8, !alias.scope !3, !noalias !4
  %t10728 = or i64 0, %r10727
  %wp10729 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t10728, ptr %wp10729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddadc word 0xf9405d16
  %r10730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10730 = load i64, ptr %r10730.p, align 8, !alias.scope !3, !noalias !4
  %t10731 = add i64 %r10730, 184
  %gmp10732 = inttoptr i64 %t10731 to ptr
  %gml10733 = load i64, ptr %gmp10732, align 1, !alias.scope !4, !noalias !3
  %wp10734 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml10733, ptr %wp10734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddae0 word 0x52801fe8
  %c10735 = zext i32 255 to i64
  %wp10736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c10735, ptr %wp10736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddae4 word 0x6a3c011f
  %r10737.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10737 = load i64, ptr %r10737.p, align 8, !alias.scope !3, !noalias !4
  %c10738 = trunc i64 %r10737 to i32
  %t10739 = xor i32 %c10738, -1
  %r10740.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10740 = load i64, ptr %r10740.p, align 8, !alias.scope !3, !noalias !4
  %c10741 = trunc i64 %r10740 to i32
  %t10742 = and i32 %c10741, %t10739
  %fn10743 = icmp slt i32 %t10742, 0
  %fz10744 = icmp eq i32 %t10742, 0
  %nz10745 = zext i1 %fn10743 to i64
  %zz10746 = zext i1 %fz10744 to i64
  %ns10747 = shl i64 %nz10745, 31
  %zs10748 = shl i64 %zz10746, 30
  %nzcv10749 = or i64 %ns10747, %zs10748
  %wp10750 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv10749, ptr %wp10750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddae8 word 0x54000120
  %r10751.p = getelementptr inbounds i8, ptr %c, i64 272
  %r10751 = load i64, ptr %r10751.p, align 8, !alias.scope !3, !noalias !4
  %fsh10753 = lshr i64 %r10751, 30
  %cond10752 = trunc i64 %fsh10753 to i1
  br i1 %cond10752, label %L_8000ddb0c, label %L_8000ddaec_ft
L_8000ddaec_ft:
  ; @pc 0x8000ddaec word 0xf001c3e8
  %wp10754 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp10754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaf0 word 0x13001f82
  %r10755.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10755 = load i64, ptr %r10755.p, align 8, !alias.scope !3, !noalias !4
  %c10756 = trunc i64 %r10755 to i32
  %t10757 = lshr i32 %c10756, 7
  %t10758 = and i32 %t10757, 1
  %t10759 = sub i32 0, %t10758
  %t10760 = and i32 %t10759, -256
  %t10761 = and i32 %c10756, 255
  %t10762 = or i32 %t10760, %t10761
  %c10763 = zext i32 %t10762 to i64
  %wp10764 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10763, ptr %wp10764, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaf4 word 0xf9418108
  %r10765.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10765 = load i64, ptr %r10765.p, align 8, !alias.scope !3, !noalias !4
  %t10766 = add i64 %r10765, 768
  %gmp10767 = inttoptr i64 %t10766 to ptr
  %gml10768 = load i64, ptr %gmp10767, align 1, !alias.scope !4, !noalias !3
  %wp10769 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10768, ptr %wp10769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddaf8 word 0xaa1603e0
  %r10770.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10770 = load i64, ptr %r10770.p, align 8, !alias.scope !3, !noalias !4
  %t10771 = or i64 0, %r10770
  %wp10772 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10771, ptr %wp10772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddafc word 0x2a1f03e1
  %t10773 = or i32 0, 0
  %c10774 = zext i32 %t10773 to i64
  %wp10775 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10774, ptr %wp10775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb00 word 0xf9400108
  %r10776.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10776 = load i64, ptr %r10776.p, align 8, !alias.scope !3, !noalias !4
  %gmp10777 = inttoptr i64 %r10776 to ptr
  %gml10778 = load i64, ptr %gmp10777, align 1, !alias.scope !4, !noalias !3
  %wp10779 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10778, ptr %wp10779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb04 word 0xaa1503e3
  %r10780.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10780 = load i64, ptr %r10780.p, align 8, !alias.scope !3, !noalias !4
  %t10781 = or i64 0, %r10780
  %wp10782 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t10781, ptr %wp10782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb08 word 0xd63f0100
  %r10783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10783 = load i64, ptr %r10783.p, align 8, !alias.scope !3, !noalias !4
  %fp10784 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10783, ptr %fp10784, align 8, !alias.scope !3, !noalias !4
  %wp10785 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646412, ptr %wp10785, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000ddb0c
L_8000ddb18_ft:
  ; @pc 0x8000ddb18 word 0xf001c3e8
  %wp10805 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp10805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb1c word 0x13083f82
  %r10806.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10806 = load i64, ptr %r10806.p, align 8, !alias.scope !3, !noalias !4
  %c10807 = trunc i64 %r10806 to i32
  %ror10808 = call i32 @llvm.fshr.i32(i32 %c10807, i32 %c10807, i32 8)
  %t10809 = lshr i32 %c10807, 15
  %t10810 = and i32 %t10809, 1
  %t10811 = sub i32 0, %t10810
  %t10812 = and i32 %t10811, -256
  %t10813 = and i32 %ror10808, 255
  %t10814 = or i32 %t10812, %t10813
  %c10815 = zext i32 %t10814 to i64
  %wp10816 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10815, ptr %wp10816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb20 word 0xf9418108
  %r10817.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10817 = load i64, ptr %r10817.p, align 8, !alias.scope !3, !noalias !4
  %t10818 = add i64 %r10817, 768
  %gmp10819 = inttoptr i64 %t10818 to ptr
  %gml10820 = load i64, ptr %gmp10819, align 1, !alias.scope !4, !noalias !3
  %wp10821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10820, ptr %wp10821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb24 word 0xaa1603e0
  %r10822.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10822 = load i64, ptr %r10822.p, align 8, !alias.scope !3, !noalias !4
  %t10823 = or i64 0, %r10822
  %wp10824 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10823, ptr %wp10824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb28 word 0x52800021
  %c10825 = zext i32 1 to i64
  %wp10826 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10825, ptr %wp10826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb2c word 0xf9400108
  %r10827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10827 = load i64, ptr %r10827.p, align 8, !alias.scope !3, !noalias !4
  %gmp10828 = inttoptr i64 %r10827 to ptr
  %gml10829 = load i64, ptr %gmp10828, align 1, !alias.scope !4, !noalias !3
  %wp10830 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10829, ptr %wp10830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb30 word 0xaa1503e3
  %r10831.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10831 = load i64, ptr %r10831.p, align 8, !alias.scope !3, !noalias !4
  %t10832 = or i64 0, %r10831
  %wp10833 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t10832, ptr %wp10833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb34 word 0xd63f0100
  %r10834.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10834 = load i64, ptr %r10834.p, align 8, !alias.scope !3, !noalias !4
  %fp10835 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10834, ptr %fp10835, align 8, !alias.scope !3, !noalias !4
  %wp10836 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646456, ptr %wp10836, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000ddb38
L_8000ddb44_ft:
  ; @pc 0x8000ddb44 word 0xf001c3e8
  %wp10856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp10856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb48 word 0x13105f82
  %r10857.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10857 = load i64, ptr %r10857.p, align 8, !alias.scope !3, !noalias !4
  %c10858 = trunc i64 %r10857 to i32
  %ror10859 = call i32 @llvm.fshr.i32(i32 %c10858, i32 %c10858, i32 16)
  %t10860 = lshr i32 %c10858, 23
  %t10861 = and i32 %t10860, 1
  %t10862 = sub i32 0, %t10861
  %t10863 = and i32 %t10862, -256
  %t10864 = and i32 %ror10859, 255
  %t10865 = or i32 %t10863, %t10864
  %c10866 = zext i32 %t10865 to i64
  %wp10867 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10866, ptr %wp10867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb4c word 0xf9418108
  %r10868.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10868 = load i64, ptr %r10868.p, align 8, !alias.scope !3, !noalias !4
  %t10869 = add i64 %r10868, 768
  %gmp10870 = inttoptr i64 %t10869 to ptr
  %gml10871 = load i64, ptr %gmp10870, align 1, !alias.scope !4, !noalias !3
  %wp10872 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10871, ptr %wp10872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb50 word 0xaa1603e0
  %r10873.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10873 = load i64, ptr %r10873.p, align 8, !alias.scope !3, !noalias !4
  %t10874 = or i64 0, %r10873
  %wp10875 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10874, ptr %wp10875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb54 word 0x52800041
  %c10876 = zext i32 2 to i64
  %wp10877 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10876, ptr %wp10877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb58 word 0xf9400108
  %r10878.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10878 = load i64, ptr %r10878.p, align 8, !alias.scope !3, !noalias !4
  %gmp10879 = inttoptr i64 %r10878 to ptr
  %gml10880 = load i64, ptr %gmp10879, align 1, !alias.scope !4, !noalias !3
  %wp10881 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10880, ptr %wp10881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb5c word 0xaa1503e3
  %r10882.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10882 = load i64, ptr %r10882.p, align 8, !alias.scope !3, !noalias !4
  %t10883 = or i64 0, %r10882
  %wp10884 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t10883, ptr %wp10884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb60 word 0xd63f0100
  %r10885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10885 = load i64, ptr %r10885.p, align 8, !alias.scope !3, !noalias !4
  %fp10886 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10885, ptr %fp10886, align 8, !alias.scope !3, !noalias !4
  %wp10887 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646500, ptr %wp10887, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8000ddb64
L_8000ddb6c_ft:
  ; @pc 0x8000ddb6c word 0xf001c3e8
  %wp10917 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419884032, ptr %wp10917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb70 word 0x13187f82
  %r10918.p = getelementptr inbounds i8, ptr %c, i64 224
  %r10918 = load i64, ptr %r10918.p, align 8, !alias.scope !3, !noalias !4
  %c10919 = trunc i64 %r10918 to i32
  %ror10920 = call i32 @llvm.fshr.i32(i32 %c10919, i32 %c10919, i32 24)
  %t10921 = lshr i32 %c10919, 31
  %t10922 = and i32 %t10921, 1
  %t10923 = sub i32 0, %t10922
  %t10924 = and i32 %t10923, -256
  %t10925 = and i32 %ror10920, 255
  %t10926 = or i32 %t10924, %t10925
  %c10927 = zext i32 %t10926 to i64
  %wp10928 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c10927, ptr %wp10928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb74 word 0xf9418108
  %r10929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10929 = load i64, ptr %r10929.p, align 8, !alias.scope !3, !noalias !4
  %t10930 = add i64 %r10929, 768
  %gmp10931 = inttoptr i64 %t10930 to ptr
  %gml10932 = load i64, ptr %gmp10931, align 1, !alias.scope !4, !noalias !3
  %wp10933 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10932, ptr %wp10933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb78 word 0x528000a1
  %c10934 = zext i32 5 to i64
  %wp10935 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c10934, ptr %wp10935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb7c word 0xaa1603e0
  %r10936.p = getelementptr inbounds i8, ptr %c, i64 176
  %r10936 = load i64, ptr %r10936.p, align 8, !alias.scope !3, !noalias !4
  %t10937 = or i64 0, %r10936
  %wp10938 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t10937, ptr %wp10938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb80 word 0xf9400108
  %r10939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10939 = load i64, ptr %r10939.p, align 8, !alias.scope !3, !noalias !4
  %gmp10940 = inttoptr i64 %r10939 to ptr
  %gml10941 = load i64, ptr %gmp10940, align 1, !alias.scope !4, !noalias !3
  %wp10942 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml10941, ptr %wp10942, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb84 word 0xaa1503e3
  %r10943.p = getelementptr inbounds i8, ptr %c, i64 168
  %r10943 = load i64, ptr %r10943.p, align 8, !alias.scope !3, !noalias !4
  %t10944 = or i64 0, %r10943
  %wp10945 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t10944, ptr %wp10945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8000ddb88 word 0xd63f0100
  %r10946.p = getelementptr inbounds i8, ptr %c, i64 64
  %r10946 = load i64, ptr %r10946.p, align 8, !alias.scope !3, !noalias !4
  %fp10947 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r10946, ptr %fp10947, align 8, !alias.scope !3, !noalias !4
  %wp10948 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360646540, ptr %wp10948, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8000ddb8c word 0x17fffc7d
  br label %L_8000dcd80
L_8000ddc54_unreach:
  ; @pc 0x8000ddc54 word 0x00000000
  call void @rt_udf(ptr %c, i64 34360646740)
  unreachable
L_8000ddc58_unreach:
  ; @pc 0x8000ddc58 word 0x00000000
  call void @rt_udf(ptr %c, i64 34360646744)
  unreachable
L_8000ddc5c_unreach:
  ; @pc 0x8000ddc5c word 0x00000000
  call void @rt_udf(ptr %c, i64 34360646748)
  unreachable
L_8000dbbe0_jt_def:
  %fp11114 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r382, ptr %fp11114, align 8, !alias.scope !3, !noalias !4
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
