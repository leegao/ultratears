; UltraTears chunk main_105_alloc: 1 functions [0x8001a1590..0x8001a20bc)
; ModuleID = 'main_105_alloc_raw'
source_filename = "main_105_alloc_raw"
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

define dso_local void @f_8001a1590(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001a1590:
  ; @pc 0x8001a1590 word 0xd10243ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 144
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1594 word 0xa9037bfd
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
  ; @pc 0x8001a1598 word 0xa9046ffc
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
  ; @pc 0x8001a159c word 0xa90567fa
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
  ; @pc 0x8001a15a0 word 0xa9065ff8
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
  ; @pc 0x8001a15a4 word 0xa90757f6
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
  ; @pc 0x8001a15a8 word 0xa9084ff4
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
  ; @pc 0x8001a15ac word 0x9100c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 48
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15b0 word 0xd001bd58
  %wp53 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419814400, ptr %wp53, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15b4 word 0x2a0203f4
  %r54.p = getelementptr inbounds i8, ptr %c, i64 16
  %r54 = load i64, ptr %r54.p, align 8, !alias.scope !3, !noalias !4
  %c55 = trunc i64 %r54 to i32
  %t56 = or i32 0, %c55
  %c57 = zext i32 %t56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15b8 word 0xf9454318
  %r59.p = getelementptr inbounds i8, ptr %c, i64 192
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = add i64 %r59, 2688
  %gmp61 = inttoptr i64 %t60 to ptr
  %gml62 = load i64, ptr %gmp61, align 1, !alias.scope !4, !noalias !3
  %wp63 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml62, ptr %wp63, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15bc word 0xaa0003f5
  %r64.p = getelementptr inbounds i8, ptr %c, i64 0
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = or i64 0, %r64
  %wp66 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15c0 word 0xf9400316
  %r67.p = getelementptr inbounds i8, ptr %c, i64 192
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %gmp68 = inttoptr i64 %r67 to ptr
  %gml69 = load i64, ptr %gmp68, align 1, !alias.scope !4, !noalias !3
  %wp70 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15c4 word 0xb4003276
  %r71.p = getelementptr inbounds i8, ptr %c, i64 176
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %cmp72 = icmp eq i64 %r71, 0
  br i1 %cmp72, label %L_8001a1c10, label %L_8001a15c8_ft
L_8001a15d0:
  ; @pc 0x8001a15d0 word 0xf9400268
  %r78.p = getelementptr inbounds i8, ptr %c, i64 152
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %gmp79 = inttoptr i64 %r78 to ptr
  %gml80 = load i64, ptr %gmp79, align 1, !alias.scope !4, !noalias !3
  %wp81 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml80, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15d4 word 0xf9401903
  %r82.p = getelementptr inbounds i8, ptr %c, i64 64
  %r82 = load i64, ptr %r82.p, align 8, !alias.scope !3, !noalias !4
  %t83 = add i64 %r82, 48
  %gmp84 = inttoptr i64 %t83 to ptr
  %gml85 = load i64, ptr %gmp84, align 1, !alias.scope !4, !noalias !3
  %wp86 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15d8 word 0xb0002348
  %wp87 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34366070784, ptr %wp87, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15dc word 0x91374108
  %r88.p = getelementptr inbounds i8, ptr %c, i64 64
  %r88 = load i64, ptr %r88.p, align 8, !alias.scope !3, !noalias !4
  %t89 = add i64 %r88, 3536
  %wp90 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15e0 word 0xeb08007f
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
  ; @pc 0x8001a15e4 word 0x54000521
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_8001a1688, label %L_8001a15e8_ft
L_8001a15f8:
  ; @pc 0x8001a15f8 word 0xf10022bf
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
  ; @pc 0x8001a15fc word 0x52800108
  %c152 = zext i32 8 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1600 word 0xf9400309
  %r154.p = getelementptr inbounds i8, ptr %c, i64 192
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %gmp155 = inttoptr i64 %r154 to ptr
  %gml156 = load i64, ptr %gmp155, align 1, !alias.scope !4, !noalias !3
  %wp157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml156, ptr %wp157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1604 word 0x9a8882a8
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
  ; @pc 0x8001a1608 word 0x7100029f
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
  ; @pc 0x8001a160c word 0x91001d08
  %r191.p = getelementptr inbounds i8, ptr %c, i64 64
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 7
  %wp193 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1610 word 0x927df119
  %r194.p = getelementptr inbounds i8, ptr %c, i64 64
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %t195 = and i64 %r194, -8
  %wp196 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t195, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1614 word 0x5a945688
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
  ; @pc 0x8001a1618 word 0x5100050a
  %r209.p = getelementptr inbounds i8, ptr %c, i64 64
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %c210 = trunc i64 %r209 to i32
  %t211 = sub i32 %c210, 1
  %c212 = zext i32 %t211 to i64
  %wp213 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c212, ptr %wp213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a161c word 0x6a0a011f
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
  ; @pc 0x8001a1620 word 0x54003141
  %r227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r227 = load i64, ptr %r227.p, align 8, !alias.scope !3, !noalias !4
  %fsh229 = lshr i64 %r227, 30
  %ftr230 = trunc i64 %fsh229 to i1
  %cond228 = xor i1 %ftr230, true
  br i1 %cond228, label %L_8001a1c48, label %L_8001a1624_ft
L_8001a165c:
  ; @pc 0x8001a165c word 0xb4002198
  %r332.p = getelementptr inbounds i8, ptr %c, i64 192
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %cmp333 = icmp eq i64 %r332, 0
  br i1 %cmp333, label %L_8001a1a8c, label %L_8001a1660
L_8001a1660:
  ; @pc 0x8001a1660 word 0xb5001296
  %r334.p = getelementptr inbounds i8, ptr %c, i64 176
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %cmp335 = icmp ne i64 %r334, 0
  br i1 %cmp335, label %L_8001a18b0, label %L_8001a1664
L_8001a1664:
  ; @pc 0x8001a1664 word 0xaa1803e0
  %r336.p = getelementptr inbounds i8, ptr %c, i64 192
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = or i64 0, %r336
  %wp338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t337, ptr %wp338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1668 word 0xa9484ff4
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
  ; @pc 0x8001a166c word 0xa94757f6
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
  ; @pc 0x8001a1670 word 0xa9465ff8
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
  ; @pc 0x8001a1674 word 0xa94567fa
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
  ; @pc 0x8001a1678 word 0xa9446ffc
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
  ; @pc 0x8001a167c word 0xa9437bfd
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
  ; @pc 0x8001a1680 word 0x910243ff
  %r393.p = getelementptr inbounds i8, ptr %c, i64 256
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = add i64 %r393, 144
  %wp395 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t394, ptr %wp395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1684 word 0xd65f03c0
  ret void
L_8001a1688:
  ; @pc 0x8001a1688 word 0xd503201f
  ; @pc 0x8001a168c word 0x1036be08
  %wp396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361896524, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1690 word 0xeb08007f
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
  ; @pc 0x8001a1694 word 0x540003e1
  %r419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r419 = load i64, ptr %r419.p, align 8, !alias.scope !3, !noalias !4
  %fsh421 = lshr i64 %r419, 30
  %ftr422 = trunc i64 %fsh421 to i1
  %cond420 = xor i1 %ftr422, true
  br i1 %cond420, label %L_8001a1710, label %L_8001a1698_ft
L_8001a16d0:
  ; @pc 0x8001a16d0 word 0xb9408268
  %r534.p = getelementptr inbounds i8, ptr %c, i64 152
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %t535 = add i64 %r534, 128
  %gmp536 = inttoptr i64 %t535 to ptr
  %gml537 = load i32, ptr %gmp536, align 1, !alias.scope !4, !noalias !3
  %c538 = zext i32 %gml537 to i64
  %wp539 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c538, ptr %wp539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16d4 word 0x1b147d08
  %r540.p = getelementptr inbounds i8, ptr %c, i64 160
  %r540 = load i64, ptr %r540.p, align 8, !alias.scope !3, !noalias !4
  %c541 = trunc i64 %r540 to i32
  %r542.p = getelementptr inbounds i8, ptr %c, i64 64
  %r542 = load i64, ptr %r542.p, align 8, !alias.scope !3, !noalias !4
  %c543 = trunc i64 %r542 to i32
  %t544 = mul i32 %c543, %c541
  %t545 = add i32 0, %t544
  %c546 = zext i32 %t545 to i64
  %wp547 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c546, ptr %wp547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16d8 word 0x37f81ba8
  %r548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %t549 = and i64 %r548, 2147483648
  %cmp550 = icmp ne i64 %t549, 0
  br i1 %cmp550, label %L_8001a1a4c, label %L_8001a16dc_ft
L_8001a1710:
  ; @pc 0x8001a1710 word 0xd503201f
  ; @pc 0x8001a1714 word 0x10ed61e8
  %wp637 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361295696, ptr %wp637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1718 word 0xeb08007f
  %r638.p = getelementptr inbounds i8, ptr %c, i64 24
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %r639.p = getelementptr inbounds i8, ptr %c, i64 64
  %r639 = load i64, ptr %r639.p, align 8, !alias.scope !3, !noalias !4
  %t640 = sub i64 %r638, %r639
  %fn641 = icmp slt i64 %t640, 0
  %fz642 = icmp eq i64 %t640, 0
  %fc643 = icmp uge i64 %r638, %r639
  %fx1644 = xor i64 %r638, %r639
  %fx2645 = xor i64 %r638, %t640
  %fva646 = and i64 %fx1644, %fx2645
  %fv647 = icmp slt i64 %fva646, 0
  %nz648 = zext i1 %fn641 to i64
  %zz649 = zext i1 %fz642 to i64
  %cz650 = zext i1 %fc643 to i64
  %vz651 = zext i1 %fv647 to i64
  %ns652 = shl i64 %nz648, 31
  %zs653 = shl i64 %zz649, 30
  %cs654 = shl i64 %cz650, 29
  %vs655 = shl i64 %vz651, 28
  %nzor656 = or i64 %ns652, %zs653
  %cvor657 = or i64 %cs654, %vs655
  %nzcv658 = or i64 %nzor656, %cvor657
  %wp659 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv658, ptr %wp659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a171c word 0x54000d41
  %r660.p = getelementptr inbounds i8, ptr %c, i64 272
  %r660 = load i64, ptr %r660.p, align 8, !alias.scope !3, !noalias !4
  %fsh662 = lshr i64 %r660, 30
  %ftr663 = trunc i64 %fsh662 to i1
  %cond661 = xor i1 %ftr663, true
  br i1 %cond661, label %L_8001a18c4, label %L_8001a1720_ft
L_8001a1768:
  ; @pc 0x8001a1768 word 0xb9408268
  %r806.p = getelementptr inbounds i8, ptr %c, i64 152
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %t807 = add i64 %r806, 128
  %gmp808 = inttoptr i64 %t807 to ptr
  %gml809 = load i32, ptr %gmp808, align 1, !alias.scope !4, !noalias !3
  %c810 = zext i32 %gml809 to i64
  %wp811 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c810, ptr %wp811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a176c word 0x1b147d08
  %r812.p = getelementptr inbounds i8, ptr %c, i64 160
  %r812 = load i64, ptr %r812.p, align 8, !alias.scope !3, !noalias !4
  %c813 = trunc i64 %r812 to i32
  %r814.p = getelementptr inbounds i8, ptr %c, i64 64
  %r814 = load i64, ptr %r814.p, align 8, !alias.scope !3, !noalias !4
  %c815 = trunc i64 %r814 to i32
  %t816 = mul i32 %c815, %c813
  %t817 = add i32 0, %t816
  %c818 = zext i32 %t817 to i64
  %wp819 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c818, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1770 word 0x37f821a8
  %r820.p = getelementptr inbounds i8, ptr %c, i64 64
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %t821 = and i64 %r820, 2147483648
  %cmp822 = icmp ne i64 %t821, 0
  br i1 %cmp822, label %L_8001a1ba4, label %L_8001a1774_ft
L_8001a17ac:
  ; @pc 0x8001a17ac word 0xf9400d1a
  %r919.p = getelementptr inbounds i8, ptr %c, i64 64
  %r919 = load i64, ptr %r919.p, align 8, !alias.scope !3, !noalias !4
  %t920 = add i64 %r919, 24
  %gmp921 = inttoptr i64 %t920 to ptr
  %gml922 = load i64, ptr %gmp921, align 1, !alias.scope !4, !noalias !3
  %wp923 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml922, ptr %wp923, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17b0 word 0xeb17035f
  %r924.p = getelementptr inbounds i8, ptr %c, i64 208
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %r925.p = getelementptr inbounds i8, ptr %c, i64 184
  %r925 = load i64, ptr %r925.p, align 8, !alias.scope !3, !noalias !4
  %t926 = sub i64 %r924, %r925
  %fn927 = icmp slt i64 %t926, 0
  %fz928 = icmp eq i64 %t926, 0
  %fc929 = icmp uge i64 %r924, %r925
  %fx1930 = xor i64 %r924, %r925
  %fx2931 = xor i64 %r924, %t926
  %fva932 = and i64 %fx1930, %fx2931
  %fv933 = icmp slt i64 %fva932, 0
  %nz934 = zext i1 %fn927 to i64
  %zz935 = zext i1 %fz928 to i64
  %cz936 = zext i1 %fc929 to i64
  %vz937 = zext i1 %fv933 to i64
  %ns938 = shl i64 %nz934, 31
  %zs939 = shl i64 %zz935, 30
  %cs940 = shl i64 %cz936, 29
  %vs941 = shl i64 %vz937, 28
  %nzor942 = or i64 %ns938, %zs939
  %cvor943 = or i64 %cs940, %vs941
  %nzcv944 = or i64 %nzor942, %cvor943
  %wp945 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv944, ptr %wp945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17b4 word 0x540009e3
  %r946.p = getelementptr inbounds i8, ptr %c, i64 272
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %fsh948 = lshr i64 %r946, 29
  %ftr949 = trunc i64 %fsh948 to i1
  %cond947 = xor i1 %ftr949, true
  br i1 %cond947, label %L_8001a18f0, label %L_8001a17b8
L_8001a17b8:
  ; @pc 0x8001a17b8 word 0xf9000d17
  %r950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %t951 = add i64 %r950, 24
  %r952.p = getelementptr inbounds i8, ptr %c, i64 184
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %gmp953 = inttoptr i64 %t951 to ptr
  store i64 %r952, ptr %gmp953, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a17bc word 0x79402515
  %r954.p = getelementptr inbounds i8, ptr %c, i64 64
  %r954 = load i64, ptr %r954.p, align 8, !alias.scope !3, !noalias !4
  %t955 = add i64 %r954, 18
  %gmp956 = inttoptr i64 %t955 to ptr
  %gml957 = load i16, ptr %gmp956, align 1, !alias.scope !4, !noalias !3
  %c958 = zext i16 %gml957 to i64
  %wp959 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17c0 word 0xb980c66c
  %r960.p = getelementptr inbounds i8, ptr %c, i64 152
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %t961 = add i64 %r960, 196
  %gmp962 = inttoptr i64 %t961 to ptr
  %gml963 = load i32, ptr %gmp962, align 1, !alias.scope !4, !noalias !3
  %c964 = sext i32 %gml963 to i64
  %wp965 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c964, ptr %wp965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17c4 word 0x8b080189
  %r966.p = getelementptr inbounds i8, ptr %c, i64 96
  %r966 = load i64, ptr %r966.p, align 8, !alias.scope !3, !noalias !4
  %r967.p = getelementptr inbounds i8, ptr %c, i64 64
  %r967 = load i64, ptr %r967.p, align 8, !alias.scope !3, !noalias !4
  %t968 = add i64 %r966, %r967
  %wp969 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17c8 word 0xa940292b
  %r970.p = getelementptr inbounds i8, ptr %c, i64 72
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 8
  %gmp972 = inttoptr i64 %r970 to ptr
  %gml973 = load i64, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %gmp974 = inttoptr i64 %t971 to ptr
  %gml975 = load i64, ptr %gmp974, align 1, !alias.scope !4, !noalias !3
  %wp976 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml973, ptr %wp976, align 8, !alias.scope !3, !noalias !4
  %wp977 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml975, ptr %wp977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17cc word 0xcb0c014c
  %r978.p = getelementptr inbounds i8, ptr %c, i64 80
  %r978 = load i64, ptr %r978.p, align 8, !alias.scope !3, !noalias !4
  %r979.p = getelementptr inbounds i8, ptr %c, i64 96
  %r979 = load i64, ptr %r979.p, align 8, !alias.scope !3, !noalias !4
  %t980 = sub i64 %r978, %r979
  %wp981 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t980, ptr %wp981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17d0 word 0xeb18015f
  %r982.p = getelementptr inbounds i8, ptr %c, i64 80
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %r983.p = getelementptr inbounds i8, ptr %c, i64 192
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %t984 = sub i64 %r982, %r983
  %fn985 = icmp slt i64 %t984, 0
  %fz986 = icmp eq i64 %t984, 0
  %fc987 = icmp uge i64 %r982, %r983
  %fx1988 = xor i64 %r982, %r983
  %fx2989 = xor i64 %r982, %t984
  %fva990 = and i64 %fx1988, %fx2989
  %fv991 = icmp slt i64 %fva990, 0
  %nz992 = zext i1 %fn985 to i64
  %zz993 = zext i1 %fz986 to i64
  %cz994 = zext i1 %fc987 to i64
  %vz995 = zext i1 %fv991 to i64
  %ns996 = shl i64 %nz992, 31
  %zs997 = shl i64 %zz993, 30
  %cs998 = shl i64 %cz994, 29
  %vs999 = shl i64 %vz995, 28
  %nzor1000 = or i64 %ns996, %zs997
  %cvor1001 = or i64 %cs998, %vs999
  %nzcv1002 = or i64 %nzor1000, %cvor1001
  %wp1003 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1002, ptr %wp1003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17d4 word 0x9a8c03f4
  %r1004.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1004 = load i64, ptr %r1004.p, align 8, !alias.scope !3, !noalias !4
  %r1005.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1005 = load i64, ptr %r1005.p, align 8, !alias.scope !3, !noalias !4
  %fsh1007 = lshr i64 %r1005, 30
  %cond1006 = trunc i64 %fsh1007 to i1
  %sel1008 = select i1 %cond1006, i64 0, i64 %r1004
  %wp1009 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel1008, ptr %wp1009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17d8 word 0xb400006b
  %r1010.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1010 = load i64, ptr %r1010.p, align 8, !alias.scope !3, !noalias !4
  %cmp1011 = icmp eq i64 %r1010, 0
  br i1 %cmp1011, label %L_8001a17e4, label %L_8001a17dc_ft
L_8001a17e4:
  ; @pc 0x8001a17e4 word 0xb400006a
  %r1021.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1021 = load i64, ptr %r1021.p, align 8, !alias.scope !3, !noalias !4
  %cmp1022 = icmp eq i64 %r1021, 0
  br i1 %cmp1022, label %L_8001a17f0, label %L_8001a17e8_ft
L_8001a17f0:
  ; @pc 0x8001a17f0 word 0xa9007d3f
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %t1031 = add i64 %r1030, 8
  %gmp1032 = inttoptr i64 %r1030 to ptr
  store i64 0, ptr %gmp1032, align 1, !alias.scope !4, !noalias !3
  %gmp1033 = inttoptr i64 %t1031 to ptr
  store i64 0, ptr %gmp1033, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a17f4 word 0xcb170359
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %r1035.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1035 = load i64, ptr %r1035.p, align 8, !alias.scope !3, !noalias !4
  %t1036 = sub i64 %r1034, %r1035
  %wp1037 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1036, ptr %wp1037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17f8 word 0xb940c269
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = add i64 %r1038, 192
  %gmp1040 = inttoptr i64 %t1039 to ptr
  %gml1041 = load i32, ptr %gmp1040, align 1, !alias.scope !4, !noalias !3
  %c1042 = zext i32 %gml1041 to i64
  %wp1043 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1042, ptr %wp1043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17fc word 0xb940826a
  %r1044.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1044 = load i64, ptr %r1044.p, align 8, !alias.scope !3, !noalias !4
  %t1045 = add i64 %r1044, 128
  %gmp1046 = inttoptr i64 %t1045 to ptr
  %gml1047 = load i32, ptr %gmp1046, align 1, !alias.scope !4, !noalias !3
  %c1048 = zext i32 %gml1047 to i64
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1048, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1800 word 0x91032260
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %t1051 = add i64 %r1050, 200
  %wp1052 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1051, ptr %wp1052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1804 word 0x51000529
  %r1053.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1053 = load i64, ptr %r1053.p, align 8, !alias.scope !3, !noalias !4
  %c1054 = trunc i64 %r1053 to i32
  %t1055 = sub i32 %c1054, 1
  %c1056 = zext i32 %t1055 to i64
  %wp1057 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1056, ptr %wp1057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1808 word 0x7100055f
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %c1059 = trunc i64 %r1058 to i32
  %t1060 = sub i32 %c1059, 1
  %fn1061 = icmp slt i32 %t1060, 0
  %fz1062 = icmp eq i32 %t1060, 0
  %fc1063 = icmp uge i32 %c1059, 1
  %fx11064 = xor i32 %c1059, 1
  %fx21065 = xor i32 %c1059, %t1060
  %fva1066 = and i32 %fx11064, %fx21065
  %fv1067 = icmp slt i32 %fva1066, 0
  %nz1068 = zext i1 %fn1061 to i64
  %zz1069 = zext i1 %fz1062 to i64
  %cz1070 = zext i1 %fc1063 to i64
  %vz1071 = zext i1 %fv1067 to i64
  %ns1072 = shl i64 %nz1068, 31
  %zs1073 = shl i64 %zz1069, 30
  %cs1074 = shl i64 %cz1070, 29
  %vs1075 = shl i64 %vz1071, 28
  %nzor1076 = or i64 %ns1072, %zs1073
  %cvor1077 = or i64 %cs1074, %vs1075
  %nzcv1078 = or i64 %nzor1076, %cvor1077
  %wp1079 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1078, ptr %wp1079, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a180c word 0xb900c269
  %r1080.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1080 = load i64, ptr %r1080.p, align 8, !alias.scope !3, !noalias !4
  %t1081 = add i64 %r1080, 192
  %r1082.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1082 = load i64, ptr %r1082.p, align 8, !alias.scope !3, !noalias !4
  %c1083 = trunc i64 %r1082 to i32
  %gmp1084 = inttoptr i64 %t1081 to ptr
  store i32 %c1083, ptr %gmp1084, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1810 word 0xb980de69
  %r1085.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1085 = load i64, ptr %r1085.p, align 8, !alias.scope !3, !noalias !4
  %t1086 = add i64 %r1085, 220
  %gmp1087 = inttoptr i64 %t1086 to ptr
  %gml1088 = load i32, ptr %gmp1087, align 1, !alias.scope !4, !noalias !3
  %c1089 = sext i32 %gml1088 to i64
  %wp1090 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1089, ptr %wp1090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1814 word 0x8b080121
  %r1091.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1091 = load i64, ptr %r1091.p, align 8, !alias.scope !3, !noalias !4
  %r1092.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1092 = load i64, ptr %r1092.p, align 8, !alias.scope !3, !noalias !4
  %t1093 = add i64 %r1091, %r1092
  %wp1094 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1093, ptr %wp1094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1818 word 0x54002ec1
  %r1095.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1095 = load i64, ptr %r1095.p, align 8, !alias.scope !3, !noalias !4
  %fsh1097 = lshr i64 %r1095, 30
  %ftr1098 = trunc i64 %fsh1097 to i1
  %cond1096 = xor i1 %ftr1098, true
  br i1 %cond1096, label %L_8001a1df0, label %L_8001a181c_ft
L_8001a1830:
  ; @pc 0x8001a1830 word 0xb940da69
  %r1118.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1118 = load i64, ptr %r1118.p, align 8, !alias.scope !3, !noalias !4
  %t1119 = add i64 %r1118, 216
  %gmp1120 = inttoptr i64 %t1119 to ptr
  %gml1121 = load i32, ptr %gmp1120, align 1, !alias.scope !4, !noalias !3
  %c1122 = zext i32 %gml1121 to i64
  %wp1123 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1122, ptr %wp1123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1834 word 0xf100873f
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1124 = load i64, ptr %r1124.p, align 8, !alias.scope !3, !noalias !4
  %t1125 = sub i64 %r1124, 33
  %fn1126 = icmp slt i64 %t1125, 0
  %fz1127 = icmp eq i64 %t1125, 0
  %fc1128 = icmp uge i64 %r1124, 33
  %fx11129 = xor i64 %r1124, 33
  %fx21130 = xor i64 %r1124, %t1125
  %fva1131 = and i64 %fx11129, %fx21130
  %fv1132 = icmp slt i64 %fva1131, 0
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
  ; @pc 0x8001a1838 word 0x11000529
  %r1145.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1145 = load i64, ptr %r1145.p, align 8, !alias.scope !3, !noalias !4
  %c1146 = trunc i64 %r1145 to i32
  %t1147 = add i32 %c1146, 1
  %c1148 = zext i32 %t1147 to i64
  %wp1149 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1148, ptr %wp1149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a183c word 0xb900da69
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %t1151 = add i64 %r1150, 216
  %r1152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1152 = load i64, ptr %r1152.p, align 8, !alias.scope !3, !noalias !4
  %c1153 = trunc i64 %r1152 to i32
  %gmp1154 = inttoptr i64 %t1151 to ptr
  store i32 %c1153, ptr %gmp1154, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1840 word 0x54001983
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %fsh1157 = lshr i64 %r1155, 29
  %ftr1158 = trunc i64 %fsh1157 to i1
  %cond1156 = xor i1 %ftr1158, true
  br i1 %cond1156, label %L_8001a1b70, label %L_8001a1844_ft
L_8001a184c:
  ; @pc 0x8001a184c word 0xf8020d3f
  %r1167.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1167 = load i64, ptr %r1167.p, align 8, !alias.scope !3, !noalias !4
  %t1168 = add i64 %r1167, 32
  %gmp1169 = inttoptr i64 %t1168 to ptr
  store i64 0, ptr %gmp1169, align 1, !alias.scope !4, !noalias !3
  %wp1170 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1168, ptr %wp1170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1850 word 0xd100832a
  %r1171.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1171 = load i64, ptr %r1171.p, align 8, !alias.scope !3, !noalias !4
  %t1172 = sub i64 %r1171, 32
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1172, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1854 word 0xf9000d2a
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %t1175 = add i64 %r1174, 24
  %r1176.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1176 = load i64, ptr %r1176.p, align 8, !alias.scope !3, !noalias !4
  %gmp1177 = inttoptr i64 %t1175 to ptr
  store i64 %r1176, ptr %gmp1177, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1858 word 0x529fffea
  %c1178 = zext i32 65535 to i64
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1178, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a185c word 0xb900113f
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %t1181 = add i64 %r1180, 16
  %gmp1182 = inttoptr i64 %t1181 to ptr
  store i32 0, ptr %gmp1182, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1860 word 0xf900053f
  %r1183.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1183 = load i64, ptr %r1183.p, align 8, !alias.scope !3, !noalias !4
  %t1184 = add i64 %r1183, 8
  %gmp1185 = inttoptr i64 %t1184 to ptr
  store i64 0, ptr %gmp1185, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1864 word 0x7900212a
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %t1187 = add i64 %r1186, 16
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %c1189 = trunc i64 %r1188 to i32
  %c1190 = trunc i32 %c1189 to i16
  %gmp1191 = inttoptr i64 %t1187 to ptr
  store i16 %c1190, ptr %gmp1191, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1868 word 0xb980c66a
  %r1192.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1192 = load i64, ptr %r1192.p, align 8, !alias.scope !3, !noalias !4
  %t1193 = add i64 %r1192, 196
  %gmp1194 = inttoptr i64 %t1193 to ptr
  %gml1195 = load i32, ptr %gmp1194, align 1, !alias.scope !4, !noalias !3
  %c1196 = sext i32 %gml1195 to i64
  %wp1197 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1196, ptr %wp1197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a186c word 0xb50004f4
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %cmp1199 = icmp ne i64 %r1198, 0
  br i1 %cmp1199, label %L_8001a1908, label %L_8001a1870_ft
L_8001a1884:
  ; @pc 0x8001a1884 word 0xf9000549
  %r1219.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1219 = load i64, ptr %r1219.p, align 8, !alias.scope !3, !noalias !4
  %t1220 = add i64 %r1219, 8
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %gmp1222 = inttoptr i64 %t1220 to ptr
  store i64 %r1221, ptr %gmp1222, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1888
L_8001a1888:
  ; @pc 0x8001a1888 word 0xb940c269
  %r1223.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1223 = load i64, ptr %r1223.p, align 8, !alias.scope !3, !noalias !4
  %t1224 = add i64 %r1223, 192
  %gmp1225 = inttoptr i64 %t1224 to ptr
  %gml1226 = load i32, ptr %gmp1225, align 1, !alias.scope !4, !noalias !3
  %c1227 = zext i32 %gml1226 to i64
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a188c word 0x11000529
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %c1230 = trunc i64 %r1229 to i32
  %t1231 = add i32 %c1230, 1
  %c1232 = zext i32 %t1231 to i64
  %wp1233 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1232, ptr %wp1233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1890 word 0xb900c269
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %t1235 = add i64 %r1234, 192
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %c1237 = trunc i64 %r1236 to i32
  %gmp1238 = inttoptr i64 %t1235 to ptr
  store i32 %c1237, ptr %gmp1238, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1894
L_8001a1894:
  ; @pc 0x8001a1894 word 0xb940aa69
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %t1240 = add i64 %r1239, 168
  %gmp1241 = inttoptr i64 %t1240 to ptr
  %gml1242 = load i32, ptr %gmp1241, align 1, !alias.scope !4, !noalias !3
  %c1243 = zext i32 %gml1242 to i64
  %wp1244 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1243, ptr %wp1244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1898 word 0x53107d29
  %r1245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1245 = load i64, ptr %r1245.p, align 8, !alias.scope !3, !noalias !4
  %c1246 = trunc i64 %r1245 to i32
  %ror1247 = call i32 @llvm.fshr.i32(i32 %c1246, i32 %c1246, i32 16)
  %t1248 = and i32 %ror1247, 65535
  %c1249 = zext i32 %t1248 to i64
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a189c word 0x79002109
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %t1252 = add i64 %r1251, 16
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %c1254 = trunc i64 %r1253 to i32
  %c1255 = trunc i32 %c1254 to i16
  %gmp1256 = inttoptr i64 %t1252 to ptr
  store i16 %c1255, ptr %gmp1256, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a18a0 word 0x79402509
  %r1257.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1257 = load i64, ptr %r1257.p, align 8, !alias.scope !3, !noalias !4
  %t1258 = add i64 %r1257, 18
  %gmp1259 = inttoptr i64 %t1258 to ptr
  %gml1260 = load i16, ptr %gmp1259, align 1, !alias.scope !4, !noalias !3
  %c1261 = zext i16 %gml1260 to i64
  %wp1262 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1261, ptr %wp1262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18a4 word 0x8b090108
  %r1263.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1263 = load i64, ptr %r1263.p, align 8, !alias.scope !3, !noalias !4
  %r1264.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1264 = load i64, ptr %r1264.p, align 8, !alias.scope !3, !noalias !4
  %t1265 = add i64 %r1263, %r1264
  %wp1266 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1265, ptr %wp1266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18a8 word 0x91008118
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %t1268 = add i64 %r1267, 32
  %wp1269 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1268, ptr %wp1269, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a18ac
L_8001a18ac:
  ; @pc 0x8001a18ac word 0xb4ffedd6
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %cmp1271 = icmp eq i64 %r1270, 0
  br i1 %cmp1271, label %L_8001a1664, label %L_8001a18b0
L_8001a18b0:
  ; @pc 0x8001a18b0 word 0xaa1603e0
  %r1272.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1272 = load i64, ptr %r1272.p, align 8, !alias.scope !3, !noalias !4
  %t1273 = or i64 0, %r1272
  %wp1274 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1273, ptr %wp1274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18b4 word 0x94a809ef
  %wp1275 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361448632, ptr %wp1275, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a18b8 word 0x17ffff6b
  br label %L_8001a1664
L_8001a18bc:
  ; @pc 0x8001a18bc word 0xaa1f03f6
  %t1276 = or i64 0, 0
  %wp1277 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1276, ptr %wp1277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18c0 word 0x17ffffaa
  br label %L_8001a1768
L_8001a18c4:
  ; @pc 0x8001a18c4 word 0xaa1303e0
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1278 = load i64, ptr %r1278.p, align 8, !alias.scope !3, !noalias !4
  %t1279 = or i64 0, %r1278
  %wp1280 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1279, ptr %wp1280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18c8 word 0xaa1503e1
  %r1281.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1281 = load i64, ptr %r1281.p, align 8, !alias.scope !3, !noalias !4
  %t1282 = or i64 0, %r1281
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18cc word 0x2a1403e2
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %c1285 = trunc i64 %r1284 to i32
  %t1286 = or i32 0, %c1285
  %c1287 = zext i32 %t1286 to i64
  %wp1288 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1287, ptr %wp1288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18d0 word 0xa9484ff4
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %t1290 = add i64 %r1289, 128
  %t1291 = add i64 %t1290, 8
  %gmp1292 = inttoptr i64 %t1290 to ptr
  %gml1293 = load i64, ptr %gmp1292, align 1, !alias.scope !4, !noalias !3
  %gmp1294 = inttoptr i64 %t1291 to ptr
  %gml1295 = load i64, ptr %gmp1294, align 1, !alias.scope !4, !noalias !3
  %wp1296 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1293, ptr %wp1296, align 8, !alias.scope !3, !noalias !4
  %wp1297 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1295, ptr %wp1297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18d4 word 0xa94757f6
  %r1298.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1298 = load i64, ptr %r1298.p, align 8, !alias.scope !3, !noalias !4
  %t1299 = add i64 %r1298, 112
  %t1300 = add i64 %t1299, 8
  %gmp1301 = inttoptr i64 %t1299 to ptr
  %gml1302 = load i64, ptr %gmp1301, align 1, !alias.scope !4, !noalias !3
  %gmp1303 = inttoptr i64 %t1300 to ptr
  %gml1304 = load i64, ptr %gmp1303, align 1, !alias.scope !4, !noalias !3
  %wp1305 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1302, ptr %wp1305, align 8, !alias.scope !3, !noalias !4
  %wp1306 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1304, ptr %wp1306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18d8 word 0xa9465ff8
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %t1308 = add i64 %r1307, 96
  %t1309 = add i64 %t1308, 8
  %gmp1310 = inttoptr i64 %t1308 to ptr
  %gml1311 = load i64, ptr %gmp1310, align 1, !alias.scope !4, !noalias !3
  %gmp1312 = inttoptr i64 %t1309 to ptr
  %gml1313 = load i64, ptr %gmp1312, align 1, !alias.scope !4, !noalias !3
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1311, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  %wp1315 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1313, ptr %wp1315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18dc word 0xa94567fa
  %r1316.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1316 = load i64, ptr %r1316.p, align 8, !alias.scope !3, !noalias !4
  %t1317 = add i64 %r1316, 80
  %t1318 = add i64 %t1317, 8
  %gmp1319 = inttoptr i64 %t1317 to ptr
  %gml1320 = load i64, ptr %gmp1319, align 1, !alias.scope !4, !noalias !3
  %gmp1321 = inttoptr i64 %t1318 to ptr
  %gml1322 = load i64, ptr %gmp1321, align 1, !alias.scope !4, !noalias !3
  %wp1323 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1320, ptr %wp1323, align 8, !alias.scope !3, !noalias !4
  %wp1324 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1322, ptr %wp1324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18e0 word 0xa9446ffc
  %r1325.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1325 = load i64, ptr %r1325.p, align 8, !alias.scope !3, !noalias !4
  %t1326 = add i64 %r1325, 64
  %t1327 = add i64 %t1326, 8
  %gmp1328 = inttoptr i64 %t1326 to ptr
  %gml1329 = load i64, ptr %gmp1328, align 1, !alias.scope !4, !noalias !3
  %gmp1330 = inttoptr i64 %t1327 to ptr
  %gml1331 = load i64, ptr %gmp1330, align 1, !alias.scope !4, !noalias !3
  %wp1332 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1329, ptr %wp1332, align 8, !alias.scope !3, !noalias !4
  %wp1333 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1331, ptr %wp1333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18e4 word 0xa9437bfd
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %t1335 = add i64 %r1334, 48
  %t1336 = add i64 %t1335, 8
  %gmp1337 = inttoptr i64 %t1335 to ptr
  %gml1338 = load i64, ptr %gmp1337, align 1, !alias.scope !4, !noalias !3
  %gmp1339 = inttoptr i64 %t1336 to ptr
  %gml1340 = load i64, ptr %gmp1339, align 1, !alias.scope !4, !noalias !3
  %wp1341 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1338, ptr %wp1341, align 8, !alias.scope !3, !noalias !4
  %wp1342 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1340, ptr %wp1342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18e8 word 0x910243ff
  %r1343.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1343 = load i64, ptr %r1343.p, align 8, !alias.scope !3, !noalias !4
  %t1344 = add i64 %r1343, 144
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18ec word 0xd61f0060
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %pcp4123 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1346, ptr %pcp4123, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_8001a18f0:
  ; @pc 0x8001a18f0 word 0x8b0a0108
  %r1347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1347 = load i64, ptr %r1347.p, align 8, !alias.scope !3, !noalias !4
  %r1348.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1348 = load i64, ptr %r1348.p, align 8, !alias.scope !3, !noalias !4
  %t1349 = add i64 %r1347, %r1348
  %wp1350 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1349, ptr %wp1350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18f4 word 0xf9400508
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %t1352 = add i64 %r1351, 8
  %gmp1353 = inttoptr i64 %t1352 to ptr
  %gml1354 = load i64, ptr %gmp1353, align 1, !alias.scope !4, !noalias !3
  %wp1355 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1354, ptr %wp1355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18f8 word 0x8b090108
  %r1356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1356 = load i64, ptr %r1356.p, align 8, !alias.scope !3, !noalias !4
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %t1358 = add i64 %r1356, %r1357
  %wp1359 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1358, ptr %wp1359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a18fc word 0xeb0b011f
  %r1360.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1360 = load i64, ptr %r1360.p, align 8, !alias.scope !3, !noalias !4
  %r1361.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1361 = load i64, ptr %r1361.p, align 8, !alias.scope !3, !noalias !4
  %t1362 = sub i64 %r1360, %r1361
  %fn1363 = icmp slt i64 %t1362, 0
  %fz1364 = icmp eq i64 %t1362, 0
  %fc1365 = icmp uge i64 %r1360, %r1361
  %fx11366 = xor i64 %r1360, %r1361
  %fx21367 = xor i64 %r1360, %t1362
  %fva1368 = and i64 %fx11366, %fx21367
  %fv1369 = icmp slt i64 %fva1368, 0
  %nz1370 = zext i1 %fn1363 to i64
  %zz1371 = zext i1 %fz1364 to i64
  %cz1372 = zext i1 %fc1365 to i64
  %vz1373 = zext i1 %fv1369 to i64
  %ns1374 = shl i64 %nz1370, 31
  %zs1375 = shl i64 %zz1371, 30
  %cs1376 = shl i64 %cz1372, 29
  %vs1377 = shl i64 %vz1373, 28
  %nzor1378 = or i64 %ns1374, %zs1375
  %cvor1379 = or i64 %cs1376, %vs1377
  %nzcv1380 = or i64 %nzor1378, %cvor1379
  %wp1381 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1380, ptr %wp1381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1900 word 0x54fff561
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %fsh1384 = lshr i64 %r1382, 30
  %ftr1385 = trunc i64 %fsh1384 to i1
  %cond1383 = xor i1 %ftr1385, true
  br i1 %cond1383, label %L_8001a17ac, label %L_8001a1904_ft
L_8001a1908:
  ; @pc 0x8001a1908 word 0x8b14014b
  %r1386.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1386 = load i64, ptr %r1386.p, align 8, !alias.scope !3, !noalias !4
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %t1388 = add i64 %r1386, %r1387
  %wp1389 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1388, ptr %wp1389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a190c word 0x8b0a0129
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %t1392 = add i64 %r1390, %r1391
  %wp1393 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1392, ptr %wp1393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1910 word 0xf940016a
  %r1394.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1394 = load i64, ptr %r1394.p, align 8, !alias.scope !3, !noalias !4
  %gmp1395 = inttoptr i64 %r1394 to ptr
  %gml1396 = load i64, ptr %gmp1395, align 1, !alias.scope !4, !noalias !3
  %wp1397 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1396, ptr %wp1397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1914 word 0xf9000169
  %r1398.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1398 = load i64, ptr %r1398.p, align 8, !alias.scope !3, !noalias !4
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %gmp1400 = inttoptr i64 %r1398 to ptr
  store i64 %r1399, ptr %gmp1400, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1918 word 0xa9002d2a
  %r1401.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1401 = load i64, ptr %r1401.p, align 8, !alias.scope !3, !noalias !4
  %t1402 = add i64 %r1401, 8
  %r1403.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1403 = load i64, ptr %r1403.p, align 8, !alias.scope !3, !noalias !4
  %gmp1404 = inttoptr i64 %r1401 to ptr
  store i64 %r1403, ptr %gmp1404, align 1, !alias.scope !4, !noalias !3
  %r1405.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1405 = load i64, ptr %r1405.p, align 8, !alias.scope !3, !noalias !4
  %gmp1406 = inttoptr i64 %t1402 to ptr
  store i64 %r1405, ptr %gmp1406, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a191c word 0xb5fffb4a
  %r1407.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1407 = load i64, ptr %r1407.p, align 8, !alias.scope !3, !noalias !4
  %cmp1408 = icmp ne i64 %r1407, 0
  br i1 %cmp1408, label %L_8001a1884, label %L_8001a1920_ft
L_8001a1924:
  ; @pc 0x8001a1924 word 0xeb0b019f
  %r1409.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1409 = load i64, ptr %r1409.p, align 8, !alias.scope !3, !noalias !4
  %r1410.p = getelementptr inbounds i8, ptr %c, i64 88
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
  ; @pc 0x8001a1928 word 0x54002b00
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %fsh1433 = lshr i64 %r1431, 30
  %cond1432 = trunc i64 %fsh1433 to i1
  br i1 %cond1432, label %L_8001a1e88, label %L_8001a192c_ft
L_8001a1940:
  ; @pc 0x8001a1940 word 0xf9400d0c
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = add i64 %r1455, 24
  %gmp1457 = inttoptr i64 %t1456 to ptr
  %gml1458 = load i64, ptr %gmp1457, align 1, !alias.scope !4, !noalias !3
  %wp1459 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1458, ptr %wp1459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1944 word 0xeb17019f
  %r1460.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1460 = load i64, ptr %r1460.p, align 8, !alias.scope !3, !noalias !4
  %r1461.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1461 = load i64, ptr %r1461.p, align 8, !alias.scope !3, !noalias !4
  %t1462 = sub i64 %r1460, %r1461
  %fn1463 = icmp slt i64 %t1462, 0
  %fz1464 = icmp eq i64 %t1462, 0
  %fc1465 = icmp uge i64 %r1460, %r1461
  %fx11466 = xor i64 %r1460, %r1461
  %fx21467 = xor i64 %r1460, %t1462
  %fva1468 = and i64 %fx11466, %fx21467
  %fv1469 = icmp slt i64 %fva1468, 0
  %nz1470 = zext i1 %fn1463 to i64
  %zz1471 = zext i1 %fz1464 to i64
  %cz1472 = zext i1 %fc1465 to i64
  %vz1473 = zext i1 %fv1469 to i64
  %ns1474 = shl i64 %nz1470, 31
  %zs1475 = shl i64 %zz1471, 30
  %cs1476 = shl i64 %cz1472, 29
  %vs1477 = shl i64 %vz1473, 28
  %nzor1478 = or i64 %ns1474, %zs1475
  %cvor1479 = or i64 %cs1476, %vs1477
  %nzcv1480 = or i64 %nzor1478, %cvor1479
  %wp1481 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1480, ptr %wp1481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1948 word 0x54002963
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %fsh1484 = lshr i64 %r1482, 29
  %ftr1485 = trunc i64 %fsh1484 to i1
  %cond1483 = xor i1 %ftr1485, true
  br i1 %cond1483, label %L_8001a1e74, label %L_8001a194c_ft
L_8001a1970:
  ; @pc 0x8001a1970 word 0x8b0a010b
  %r1541.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1541 = load i64, ptr %r1541.p, align 8, !alias.scope !3, !noalias !4
  %r1542.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1542 = load i64, ptr %r1542.p, align 8, !alias.scope !3, !noalias !4
  %t1543 = add i64 %r1541, %r1542
  %wp1544 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1543, ptr %wp1544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1974 word 0x9100810a
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %t1546 = add i64 %r1545, 32
  %wp1547 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1546, ptr %wp1547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1978 word 0xf940056b
  %r1548.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1548 = load i64, ptr %r1548.p, align 8, !alias.scope !3, !noalias !4
  %t1549 = add i64 %r1548, 8
  %gmp1550 = inttoptr i64 %t1549 to ptr
  %gml1551 = load i64, ptr %gmp1550, align 1, !alias.scope !4, !noalias !3
  %wp1552 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1551, ptr %wp1552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a197c word 0x8b090169
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %r1554.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1554 = load i64, ptr %r1554.p, align 8, !alias.scope !3, !noalias !4
  %t1555 = add i64 %r1553, %r1554
  %wp1556 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1555, ptr %wp1556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1980 word 0xeb18017f
  %r1557.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1557 = load i64, ptr %r1557.p, align 8, !alias.scope !3, !noalias !4
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %t1559 = sub i64 %r1557, %r1558
  %fn1560 = icmp slt i64 %t1559, 0
  %fz1561 = icmp eq i64 %t1559, 0
  %fc1562 = icmp uge i64 %r1557, %r1558
  %fx11563 = xor i64 %r1557, %r1558
  %fx21564 = xor i64 %r1557, %t1559
  %fva1565 = and i64 %fx11563, %fx21564
  %fv1566 = icmp slt i64 %fva1565, 0
  %nz1567 = zext i1 %fn1560 to i64
  %zz1568 = zext i1 %fz1561 to i64
  %cz1569 = zext i1 %fc1562 to i64
  %vz1570 = zext i1 %fv1566 to i64
  %ns1571 = shl i64 %nz1567, 31
  %zs1572 = shl i64 %zz1568, 30
  %cs1573 = shl i64 %cz1569, 29
  %vs1574 = shl i64 %vz1570, 28
  %nzor1575 = or i64 %ns1571, %zs1572
  %cvor1576 = or i64 %cs1573, %vs1574
  %nzcv1577 = or i64 %nzor1575, %cvor1576
  %wp1578 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1577, ptr %wp1578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1984 word 0x9a8903f4
  %r1579.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1579 = load i64, ptr %r1579.p, align 8, !alias.scope !3, !noalias !4
  %r1580.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1580 = load i64, ptr %r1580.p, align 8, !alias.scope !3, !noalias !4
  %fsh1582 = lshr i64 %r1580, 30
  %cond1581 = trunc i64 %fsh1582 to i1
  %sel1583 = select i1 %cond1581, i64 0, i64 %r1579
  %wp1584 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel1583, ptr %wp1584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1988 word 0x8b100149
  %r1585.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1585 = load i64, ptr %r1585.p, align 8, !alias.scope !3, !noalias !4
  %r1586.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1586 = load i64, ptr %r1586.p, align 8, !alias.scope !3, !noalias !4
  %t1587 = add i64 %r1585, %r1586
  %wp1588 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1587, ptr %wp1588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a198c word 0x8b0d012b
  %r1589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1589 = load i64, ptr %r1589.p, align 8, !alias.scope !3, !noalias !4
  %r1590.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1590 = load i64, ptr %r1590.p, align 8, !alias.scope !3, !noalias !4
  %t1591 = add i64 %r1589, %r1590
  %wp1592 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1591, ptr %wp1592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1990 word 0x8a0e016b
  %r1593.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1593 = load i64, ptr %r1593.p, align 8, !alias.scope !3, !noalias !4
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %t1595 = and i64 %r1594, %r1593
  %wp1596 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1595, ptr %wp1596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1994 word 0xcb090169
  %r1597.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1597 = load i64, ptr %r1597.p, align 8, !alias.scope !3, !noalias !4
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %t1599 = sub i64 %r1597, %r1598
  %wp1600 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1599, ptr %wp1600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1998 word 0x8b170135
  %r1601.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1601 = load i64, ptr %r1601.p, align 8, !alias.scope !3, !noalias !4
  %r1602.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1602 = load i64, ptr %r1602.p, align 8, !alias.scope !3, !noalias !4
  %t1603 = add i64 %r1601, %r1602
  %wp1604 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1603, ptr %wp1604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a199c word 0xf140413f
  %r1605.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1605 = load i64, ptr %r1605.p, align 8, !alias.scope !3, !noalias !4
  %t1606 = sub i64 %r1605, 65536
  %fn1607 = icmp slt i64 %t1606, 0
  %fz1608 = icmp eq i64 %t1606, 0
  %fc1609 = icmp uge i64 %r1605, 65536
  %fx11610 = xor i64 %r1605, 65536
  %fx21611 = xor i64 %r1605, %t1606
  %fva1612 = and i64 %fx11610, %fx21611
  %fv1613 = icmp slt i64 %fva1612, 0
  %nz1614 = zext i1 %fn1607 to i64
  %zz1615 = zext i1 %fz1608 to i64
  %cz1616 = zext i1 %fc1609 to i64
  %vz1617 = zext i1 %fv1613 to i64
  %ns1618 = shl i64 %nz1614, 31
  %zs1619 = shl i64 %zz1615, 30
  %cs1620 = shl i64 %cz1616, 29
  %vs1621 = shl i64 %vz1617, 28
  %nzor1622 = or i64 %ns1618, %zs1619
  %cvor1623 = or i64 %cs1620, %vs1621
  %nzcv1624 = or i64 %nzor1622, %cvor1623
  %wp1625 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1624, ptr %wp1625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19a0 word 0x54002c82
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %fsh1628 = lshr i64 %r1626, 29
  %cond1627 = trunc i64 %fsh1628 to i1
  br i1 %cond1627, label %L_8001a1f30, label %L_8001a19a4_ft
L_8001a19bc:
  ; @pc 0x8001a19bc word 0xf9000d17
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %t1661 = add i64 %r1660, 24
  %r1662.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1662 = load i64, ptr %r1662.p, align 8, !alias.scope !3, !noalias !4
  %gmp1663 = inttoptr i64 %t1661 to ptr
  store i64 %r1662, ptr %gmp1663, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a19c0 word 0xb980c669
  %r1664.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1664 = load i64, ptr %r1664.p, align 8, !alias.scope !3, !noalias !4
  %t1665 = add i64 %r1664, 196
  %gmp1666 = inttoptr i64 %t1665 to ptr
  %gml1667 = load i32, ptr %gmp1666, align 1, !alias.scope !4, !noalias !3
  %c1668 = sext i32 %gml1667 to i64
  %wp1669 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1668, ptr %wp1669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19c4 word 0x8b080129
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %r1671.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1671 = load i64, ptr %r1671.p, align 8, !alias.scope !3, !noalias !4
  %t1672 = add i64 %r1670, %r1671
  %wp1673 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1672, ptr %wp1673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19c8 word 0xf940012a
  %r1674.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1674 = load i64, ptr %r1674.p, align 8, !alias.scope !3, !noalias !4
  %gmp1675 = inttoptr i64 %r1674 to ptr
  %gml1676 = load i64, ptr %gmp1675, align 1, !alias.scope !4, !noalias !3
  %wp1677 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1676, ptr %wp1677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19cc word 0xb400006a
  %r1678.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1678 = load i64, ptr %r1678.p, align 8, !alias.scope !3, !noalias !4
  %cmp1679 = icmp eq i64 %r1678, 0
  br i1 %cmp1679, label %L_8001a19d8, label %L_8001a19d0_ft
L_8001a19d8:
  ; @pc 0x8001a19d8 word 0xf940052a
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %t1690 = add i64 %r1689, 8
  %gmp1691 = inttoptr i64 %t1690 to ptr
  %gml1692 = load i64, ptr %gmp1691, align 1, !alias.scope !4, !noalias !3
  %wp1693 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1692, ptr %wp1693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19dc word 0xb400006a
  %r1694.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1694 = load i64, ptr %r1694.p, align 8, !alias.scope !3, !noalias !4
  %cmp1695 = icmp eq i64 %r1694, 0
  br i1 %cmp1695, label %L_8001a19e8, label %L_8001a19e0_ft
L_8001a19e8:
  ; @pc 0x8001a19e8 word 0xa9007d3f
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %t1704 = add i64 %r1703, 8
  %gmp1705 = inttoptr i64 %r1703 to ptr
  store i64 0, ptr %gmp1705, align 1, !alias.scope !4, !noalias !3
  %gmp1706 = inttoptr i64 %t1704 to ptr
  store i64 0, ptr %gmp1706, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a19ec word 0xb940c269
  %r1707.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1707 = load i64, ptr %r1707.p, align 8, !alias.scope !3, !noalias !4
  %t1708 = add i64 %r1707, 192
  %gmp1709 = inttoptr i64 %t1708 to ptr
  %gml1710 = load i32, ptr %gmp1709, align 1, !alias.scope !4, !noalias !3
  %c1711 = zext i32 %gml1710 to i64
  %wp1712 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1711, ptr %wp1712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19f0 word 0x51000529
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %c1714 = trunc i64 %r1713 to i32
  %t1715 = sub i32 %c1714, 1
  %c1716 = zext i32 %t1715 to i64
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1716, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19f4 word 0xb900c269
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %t1719 = add i64 %r1718, 192
  %r1720.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1720 = load i64, ptr %r1720.p, align 8, !alias.scope !3, !noalias !4
  %c1721 = trunc i64 %r1720 to i32
  %gmp1722 = inttoptr i64 %t1719 to ptr
  store i32 %c1721, ptr %gmp1722, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a19f8
L_8001a19f8:
  ; @pc 0x8001a19f8 word 0xb9408269
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %t1724 = add i64 %r1723, 128
  %gmp1725 = inttoptr i64 %t1724 to ptr
  %gml1726 = load i32, ptr %gmp1725, align 1, !alias.scope !4, !noalias !3
  %c1727 = zext i32 %gml1726 to i64
  %wp1728 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1727, ptr %wp1728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19fc word 0xcb150199
  %r1729.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1729 = load i64, ptr %r1729.p, align 8, !alias.scope !3, !noalias !4
  %r1730.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1730 = load i64, ptr %r1730.p, align 8, !alias.scope !3, !noalias !4
  %t1731 = sub i64 %r1729, %r1730
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a00 word 0x91032260
  %r1733.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1733 = load i64, ptr %r1733.p, align 8, !alias.scope !3, !noalias !4
  %t1734 = add i64 %r1733, 200
  %wp1735 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1734, ptr %wp1735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a04 word 0xb980de6a
  %r1736.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1736 = load i64, ptr %r1736.p, align 8, !alias.scope !3, !noalias !4
  %t1737 = add i64 %r1736, 220
  %gmp1738 = inttoptr i64 %t1737 to ptr
  %gml1739 = load i32, ptr %gmp1738, align 1, !alias.scope !4, !noalias !3
  %c1740 = sext i32 %gml1739 to i64
  %wp1741 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1740, ptr %wp1741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a08 word 0x8b0a0101
  %r1742.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1742 = load i64, ptr %r1742.p, align 8, !alias.scope !3, !noalias !4
  %r1743.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1743 = load i64, ptr %r1743.p, align 8, !alias.scope !3, !noalias !4
  %t1744 = add i64 %r1742, %r1743
  %wp1745 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1744, ptr %wp1745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a0c word 0x7100053f
  %r1746.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1746 = load i64, ptr %r1746.p, align 8, !alias.scope !3, !noalias !4
  %c1747 = trunc i64 %r1746 to i32
  %t1748 = sub i32 %c1747, 1
  %fn1749 = icmp slt i32 %t1748, 0
  %fz1750 = icmp eq i32 %t1748, 0
  %fc1751 = icmp uge i32 %c1747, 1
  %fx11752 = xor i32 %c1747, 1
  %fx21753 = xor i32 %c1747, %t1748
  %fva1754 = and i32 %fx11752, %fx21753
  %fv1755 = icmp slt i32 %fva1754, 0
  %nz1756 = zext i1 %fn1749 to i64
  %zz1757 = zext i1 %fz1750 to i64
  %cz1758 = zext i1 %fc1751 to i64
  %vz1759 = zext i1 %fv1755 to i64
  %ns1760 = shl i64 %nz1756, 31
  %zs1761 = shl i64 %zz1757, 30
  %cs1762 = shl i64 %cz1758, 29
  %vs1763 = shl i64 %vz1759, 28
  %nzor1764 = or i64 %ns1760, %zs1761
  %cvor1765 = or i64 %cs1762, %vs1763
  %nzcv1766 = or i64 %nzor1764, %cvor1765
  %wp1767 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1766, ptr %wp1767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a10 word 0x54002a01
  %r1768.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1768 = load i64, ptr %r1768.p, align 8, !alias.scope !3, !noalias !4
  %fsh1770 = lshr i64 %r1768, 30
  %ftr1771 = trunc i64 %fsh1770 to i1
  %cond1769 = xor i1 %ftr1771, true
  br i1 %cond1769, label %L_8001a1f50, label %L_8001a1a14_ft
L_8001a1a28:
  ; @pc 0x8001a1a28 word 0xb940da69
  %r1791.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1791 = load i64, ptr %r1791.p, align 8, !alias.scope !3, !noalias !4
  %t1792 = add i64 %r1791, 216
  %gmp1793 = inttoptr i64 %t1792 to ptr
  %gml1794 = load i32, ptr %gmp1793, align 1, !alias.scope !4, !noalias !3
  %c1795 = zext i32 %gml1794 to i64
  %wp1796 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1795, ptr %wp1796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a2c word 0xf100873f
  %r1797.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1797 = load i64, ptr %r1797.p, align 8, !alias.scope !3, !noalias !4
  %t1798 = sub i64 %r1797, 33
  %fn1799 = icmp slt i64 %t1798, 0
  %fz1800 = icmp eq i64 %t1798, 0
  %fc1801 = icmp uge i64 %r1797, 33
  %fx11802 = xor i64 %r1797, 33
  %fx21803 = xor i64 %r1797, %t1798
  %fva1804 = and i64 %fx11802, %fx21803
  %fv1805 = icmp slt i64 %fva1804, 0
  %nz1806 = zext i1 %fn1799 to i64
  %zz1807 = zext i1 %fz1800 to i64
  %cz1808 = zext i1 %fc1801 to i64
  %vz1809 = zext i1 %fv1805 to i64
  %ns1810 = shl i64 %nz1806, 31
  %zs1811 = shl i64 %zz1807, 30
  %cs1812 = shl i64 %cz1808, 29
  %vs1813 = shl i64 %vz1809, 28
  %nzor1814 = or i64 %ns1810, %zs1811
  %cvor1815 = or i64 %cs1812, %vs1813
  %nzcv1816 = or i64 %nzor1814, %cvor1815
  %wp1817 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1816, ptr %wp1817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a30 word 0x11000529
  %r1818.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1818 = load i64, ptr %r1818.p, align 8, !alias.scope !3, !noalias !4
  %c1819 = trunc i64 %r1818 to i32
  %t1820 = add i32 %c1819, 1
  %c1821 = zext i32 %t1820 to i64
  %wp1822 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1821, ptr %wp1822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a34 word 0xb900da69
  %r1823.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1823 = load i64, ptr %r1823.p, align 8, !alias.scope !3, !noalias !4
  %t1824 = add i64 %r1823, 216
  %r1825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1825 = load i64, ptr %r1825.p, align 8, !alias.scope !3, !noalias !4
  %c1826 = trunc i64 %r1825 to i32
  %gmp1827 = inttoptr i64 %t1824 to ptr
  store i32 %c1826, ptr %gmp1827, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1a38 word 0x54000e23
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %fsh1830 = lshr i64 %r1828, 29
  %ftr1831 = trunc i64 %fsh1830 to i1
  %cond1829 = xor i1 %ftr1831, true
  br i1 %cond1829, label %L_8001a1bfc, label %L_8001a1a3c_ft
L_8001a1a4c:
  ; @pc 0x8001a1a4c word 0xf9405e6b
  %r1846.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1846 = load i64, ptr %r1846.p, align 8, !alias.scope !3, !noalias !4
  %t1847 = add i64 %r1846, 184
  %gmp1848 = inttoptr i64 %t1847 to ptr
  %gml1849 = load i64, ptr %gmp1848, align 1, !alias.scope !4, !noalias !3
  %wp1850 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1849, ptr %wp1850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a50 word 0x4b0803e9
  %r1851.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1851 = load i64, ptr %r1851.p, align 8, !alias.scope !3, !noalias !4
  %c1852 = trunc i64 %r1851 to i32
  %t1853 = sub i32 0, %c1852
  %c1854 = zext i32 %t1853 to i64
  %wp1855 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1854, ptr %wp1855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a54 word 0xcb17016a
  %r1856.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1856 = load i64, ptr %r1856.p, align 8, !alias.scope !3, !noalias !4
  %r1857.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1857 = load i64, ptr %r1857.p, align 8, !alias.scope !3, !noalias !4
  %t1858 = sub i64 %r1856, %r1857
  %wp1859 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1858, ptr %wp1859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a58 word 0xeb0a017f
  %r1860.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1860 = load i64, ptr %r1860.p, align 8, !alias.scope !3, !noalias !4
  %r1861.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1861 = load i64, ptr %r1861.p, align 8, !alias.scope !3, !noalias !4
  %t1862 = sub i64 %r1860, %r1861
  %fn1863 = icmp slt i64 %t1862, 0
  %fz1864 = icmp eq i64 %t1862, 0
  %fc1865 = icmp uge i64 %r1860, %r1861
  %fx11866 = xor i64 %r1860, %r1861
  %fx21867 = xor i64 %r1860, %t1862
  %fva1868 = and i64 %fx11866, %fx21867
  %fv1869 = icmp slt i64 %fva1868, 0
  %nz1870 = zext i1 %fn1863 to i64
  %zz1871 = zext i1 %fz1864 to i64
  %cz1872 = zext i1 %fc1865 to i64
  %vz1873 = zext i1 %fv1869 to i64
  %ns1874 = shl i64 %nz1870, 31
  %zs1875 = shl i64 %zz1871, 30
  %cs1876 = shl i64 %cz1872, 29
  %vs1877 = shl i64 %vz1873, 28
  %nzor1878 = or i64 %ns1874, %zs1875
  %cvor1879 = or i64 %cs1876, %vs1877
  %nzcv1880 = or i64 %nzor1878, %cvor1879
  %wp1881 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1880, ptr %wp1881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a5c word 0x54002223
  %r1882.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1882 = load i64, ptr %r1882.p, align 8, !alias.scope !3, !noalias !4
  %fsh1884 = lshr i64 %r1882, 29
  %ftr1885 = trunc i64 %fsh1884 to i1
  %cond1883 = xor i1 %ftr1885, true
  br i1 %cond1883, label %L_8001a1ea0, label %L_8001a1a60_ft
L_8001a1a80:
  ; @pc 0x8001a1a80 word 0xb4000069
  %r1933.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1933 = load i64, ptr %r1933.p, align 8, !alias.scope !3, !noalias !4
  %cmp1934 = icmp eq i64 %r1933, 0
  br i1 %cmp1934, label %L_8001a1a8c, label %L_8001a1a84_ft
L_8001a1a8c:
  ; @pc 0x8001a1a8c word 0xaa1f03f8
  %t1942 = or i64 0, 0
  %wp1943 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1942, ptr %wp1943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a90 word 0xeb15033f
  %r1944.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1944 = load i64, ptr %r1944.p, align 8, !alias.scope !3, !noalias !4
  %r1945.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1945 = load i64, ptr %r1945.p, align 8, !alias.scope !3, !noalias !4
  %t1946 = sub i64 %r1944, %r1945
  %fn1947 = icmp slt i64 %t1946, 0
  %fz1948 = icmp eq i64 %t1946, 0
  %fc1949 = icmp uge i64 %r1944, %r1945
  %fx11950 = xor i64 %r1944, %r1945
  %fx21951 = xor i64 %r1944, %t1946
  %fva1952 = and i64 %fx11950, %fx21951
  %fv1953 = icmp slt i64 %fva1952, 0
  %nz1954 = zext i1 %fn1947 to i64
  %zz1955 = zext i1 %fz1948 to i64
  %cz1956 = zext i1 %fc1949 to i64
  %vz1957 = zext i1 %fv1953 to i64
  %ns1958 = shl i64 %nz1954, 31
  %zs1959 = shl i64 %zz1955, 30
  %cs1960 = shl i64 %cz1956, 29
  %vs1961 = shl i64 %vz1957, 28
  %nzor1962 = or i64 %ns1958, %zs1959
  %cvor1963 = or i64 %cs1960, %vs1961
  %nzcv1964 = or i64 %nzor1962, %cvor1963
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1964, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a94 word 0x54ffde63
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %fsh1968 = lshr i64 %r1966, 29
  %ftr1969 = trunc i64 %fsh1968 to i1
  %cond1967 = xor i1 %ftr1969, true
  br i1 %cond1967, label %L_8001a1660, label %L_8001a1a98_ft
L_8001a1abc:
  ; @pc 0x8001a1abc word 0xf9400268
  %r2028.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2028 = load i64, ptr %r2028.p, align 8, !alias.scope !3, !noalias !4
  %gmp2029 = inttoptr i64 %r2028 to ptr
  %gml2030 = load i64, ptr %gmp2029, align 1, !alias.scope !4, !noalias !3
  %wp2031 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2030, ptr %wp2031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ac0 word 0xaa1303e0
  %r2032.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2032 = load i64, ptr %r2032.p, align 8, !alias.scope !3, !noalias !4
  %t2033 = or i64 0, %r2032
  %wp2034 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2033, ptr %wp2034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ac4 word 0xf9401508
  %r2035.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2035 = load i64, ptr %r2035.p, align 8, !alias.scope !3, !noalias !4
  %t2036 = add i64 %r2035, 40
  %gmp2037 = inttoptr i64 %t2036 to ptr
  %gml2038 = load i64, ptr %gmp2037, align 1, !alias.scope !4, !noalias !3
  %wp2039 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2038, ptr %wp2039, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ac8 word 0xd63f0100
  %r2040.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2040 = load i64, ptr %r2040.p, align 8, !alias.scope !3, !noalias !4
  %fp2041 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2040, ptr %fp2041, align 8, !alias.scope !3, !noalias !4
  %wp2042 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449164, ptr %wp2042, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a1acc word 0xf9401e60
  %r2043.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2043 = load i64, ptr %r2043.p, align 8, !alias.scope !3, !noalias !4
  %t2044 = add i64 %r2043, 56
  %gmp2045 = inttoptr i64 %t2044 to ptr
  %gml2046 = load i64, ptr %gmp2045, align 1, !alias.scope !4, !noalias !3
  %wp2047 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2046, ptr %wp2047, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1ad0
L_8001a1ad0:
  ; @pc 0x8001a1ad0 word 0x8b384328
  %r2048.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2048 = load i64, ptr %r2048.p, align 8, !alias.scope !3, !noalias !4
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %c2050 = trunc i64 %r2049 to i32
  %c2051 = zext i32 %c2050 to i64
  %t2052 = add i64 %r2048, %c2051
  %wp2053 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2052, ptr %wp2053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ad4 word 0x9100411b
  %r2054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2054 = load i64, ptr %r2054.p, align 8, !alias.scope !3, !noalias !4
  %t2055 = add i64 %r2054, 16
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ad8 word 0x29590a68
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 200
  %t2059 = add i64 %t2058, 4
  %gmp2060 = inttoptr i64 %t2058 to ptr
  %gml2061 = load i32, ptr %gmp2060, align 1, !alias.scope !4, !noalias !3
  %c2062 = zext i32 %gml2061 to i64
  %gmp2063 = inttoptr i64 %t2059 to ptr
  %gml2064 = load i32, ptr %gmp2063, align 1, !alias.scope !4, !noalias !3
  %c2065 = zext i32 %gml2064 to i64
  %wp2066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2062, ptr %wp2066, align 8, !alias.scope !3, !noalias !4
  %wp2067 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2065, ptr %wp2067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1adc word 0xd37ef51c
  %r2068.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2068 = load i64, ptr %r2068.p, align 8, !alias.scope !3, !noalias !4
  %ror2069 = call i64 @llvm.fshr.i64(i64 %r2068, i64 %r2068, i64 62)
  %t2070 = and i64 %ror2069, -4
  %wp2071 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t2070, ptr %wp2071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ae0 word 0xf9400008
  %r2072.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2072 = load i64, ptr %r2072.p, align 8, !alias.scope !3, !noalias !4
  %gmp2073 = inttoptr i64 %r2072 to ptr
  %gml2074 = load i64, ptr %gmp2073, align 1, !alias.scope !4, !noalias !3
  %wp2075 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2074, ptr %wp2075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ae4 word 0xeb1b039f
  %r2076.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2076 = load i64, ptr %r2076.p, align 8, !alias.scope !3, !noalias !4
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %t2078 = sub i64 %r2076, %r2077
  %fn2079 = icmp slt i64 %t2078, 0
  %fz2080 = icmp eq i64 %t2078, 0
  %fc2081 = icmp uge i64 %r2076, %r2077
  %fx12082 = xor i64 %r2076, %r2077
  %fx22083 = xor i64 %r2076, %t2078
  %fva2084 = and i64 %fx12082, %fx22083
  %fv2085 = icmp slt i64 %fva2084, 0
  %nz2086 = zext i1 %fn2079 to i64
  %zz2087 = zext i1 %fz2080 to i64
  %cz2088 = zext i1 %fc2081 to i64
  %vz2089 = zext i1 %fv2085 to i64
  %ns2090 = shl i64 %nz2086, 31
  %zs2091 = shl i64 %zz2087, 30
  %cs2092 = shl i64 %cz2088, 29
  %vs2093 = shl i64 %vz2089, 28
  %nzor2094 = or i64 %ns2090, %zs2091
  %cvor2095 = or i64 %cs2092, %vs2093
  %nzcv2096 = or i64 %nzor2094, %cvor2095
  %wp2097 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2096, ptr %wp2097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ae8 word 0x9a9b8399
  %r2098.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2098 = load i64, ptr %r2098.p, align 8, !alias.scope !3, !noalias !4
  %r2099.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2099 = load i64, ptr %r2099.p, align 8, !alias.scope !3, !noalias !4
  %r2100.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2100 = load i64, ptr %r2100.p, align 8, !alias.scope !3, !noalias !4
  %fsh2102 = lshr i64 %r2100, 29
  %ftr2103 = trunc i64 %fsh2102 to i1
  %fsh2104 = lshr i64 %r2100, 30
  %ftr2105 = trunc i64 %fsh2104 to i1
  %fnz2106 = xor i1 %ftr2105, true
  %cond2101 = and i1 %ftr2103, %fnz2106
  %sel2107 = select i1 %cond2101, i64 %r2098, i64 %r2099
  %wp2108 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %sel2107, ptr %wp2108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1aec word 0xaa1903e1
  %r2109.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2109 = load i64, ptr %r2109.p, align 8, !alias.scope !3, !noalias !4
  %t2110 = or i64 0, %r2109
  %wp2111 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2110, ptr %wp2111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1af0 word 0xf9401908
  %r2112.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2112 = load i64, ptr %r2112.p, align 8, !alias.scope !3, !noalias !4
  %t2113 = add i64 %r2112, 48
  %gmp2114 = inttoptr i64 %t2113 to ptr
  %gml2115 = load i64, ptr %gmp2114, align 1, !alias.scope !4, !noalias !3
  %wp2116 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2115, ptr %wp2116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1af4 word 0xd63f0100
  %r2117.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2117 = load i64, ptr %r2117.p, align 8, !alias.scope !3, !noalias !4
  %fp2118 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2117, ptr %fp2118, align 8, !alias.scope !3, !noalias !4
  %wp2119 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449208, ptr %wp2119, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a1af8 word 0xb40026e0
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %cmp2121 = icmp eq i64 %r2120, 0
  br i1 %cmp2121, label %L_8001a1fd4, label %L_8001a1afc_ft
L_8001a1b00:
  ; @pc 0x8001a1b00 word 0xb940aa68
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %t2126 = add i64 %r2125, 168
  %gmp2127 = inttoptr i64 %t2126 to ptr
  %gml2128 = load i32, ptr %gmp2127, align 1, !alias.scope !4, !noalias !3
  %c2129 = zext i32 %gml2128 to i64
  %wp2130 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2129, ptr %wp2130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b04 word 0x370028e8
  %r2131.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2131 = load i64, ptr %r2131.p, align 8, !alias.scope !3, !noalias !4
  %t2132 = and i64 %r2131, 1
  %cmp2133 = icmp ne i64 %t2132, 0
  br i1 %cmp2133, label %L_8001a2020, label %L_8001a1b08_ft
L_8001a1b10:
  ; @pc 0x8001a1b10 word 0xb940826a
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = add i64 %r2138, 128
  %gmp2140 = inttoptr i64 %t2139 to ptr
  %gml2141 = load i32, ptr %gmp2140, align 1, !alias.scope !4, !noalias !3
  %c2142 = zext i32 %gml2141 to i64
  %wp2143 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2142, ptr %wp2143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b14 word 0x8b180328
  %r2144.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2144 = load i64, ptr %r2144.p, align 8, !alias.scope !3, !noalias !4
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %t2146 = add i64 %r2144, %r2145
  %wp2147 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2146, ptr %wp2147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b18 word 0xd1004109
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %t2149 = sub i64 %r2148, 16
  %wp2150 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2149, ptr %wp2150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b1c word 0x7100055f
  %r2151.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2151 = load i64, ptr %r2151.p, align 8, !alias.scope !3, !noalias !4
  %c2152 = trunc i64 %r2151 to i32
  %t2153 = sub i32 %c2152, 1
  %fn2154 = icmp slt i32 %t2153, 0
  %fz2155 = icmp eq i32 %t2153, 0
  %fc2156 = icmp uge i32 %c2152, 1
  %fx12157 = xor i32 %c2152, 1
  %fx22158 = xor i32 %c2152, %t2153
  %fva2159 = and i32 %fx12157, %fx22158
  %fv2160 = icmp slt i32 %fva2159, 0
  %nz2161 = zext i1 %fn2154 to i64
  %zz2162 = zext i1 %fz2155 to i64
  %cz2163 = zext i1 %fc2156 to i64
  %vz2164 = zext i1 %fv2160 to i64
  %ns2165 = shl i64 %nz2161, 31
  %zs2166 = shl i64 %zz2162, 30
  %cs2167 = shl i64 %cz2163, 29
  %vs2168 = shl i64 %vz2164, 28
  %nzor2169 = or i64 %ns2165, %zs2166
  %cvor2170 = or i64 %cs2167, %vs2168
  %nzcv2171 = or i64 %nzor2169, %cvor2170
  %wp2172 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2171, ptr %wp2172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b20 word 0x9a89030a
  %r2173.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2173 = load i64, ptr %r2173.p, align 8, !alias.scope !3, !noalias !4
  %r2174.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2174 = load i64, ptr %r2174.p, align 8, !alias.scope !3, !noalias !4
  %r2175.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2175 = load i64, ptr %r2175.p, align 8, !alias.scope !3, !noalias !4
  %fsh2177 = lshr i64 %r2175, 30
  %cond2176 = trunc i64 %fsh2177 to i1
  %sel2178 = select i1 %cond2176, i64 %r2173, i64 %r2174
  %wp2179 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel2178, ptr %wp2179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b24 word 0xa9007d59
  %r2180.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2180 = load i64, ptr %r2180.p, align 8, !alias.scope !3, !noalias !4
  %t2181 = add i64 %r2180, 8
  %r2182.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2182 = load i64, ptr %r2182.p, align 8, !alias.scope !3, !noalias !4
  %gmp2183 = inttoptr i64 %r2180 to ptr
  store i64 %r2182, ptr %gmp2183, align 1, !alias.scope !4, !noalias !3
  %gmp2184 = inttoptr i64 %t2181 to ptr
  store i64 0, ptr %gmp2184, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1b28 word 0xf940626b
  %r2185.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2185 = load i64, ptr %r2185.p, align 8, !alias.scope !3, !noalias !4
  %t2186 = add i64 %r2185, 192
  %gmp2187 = inttoptr i64 %t2186 to ptr
  %gml2188 = load i64, ptr %gmp2187, align 1, !alias.scope !4, !noalias !3
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b2c word 0xb50002ab
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %cmp2191 = icmp ne i64 %r2190, 0
  br i1 %cmp2191, label %L_8001a1b80, label %L_8001a1b30
L_8001a1b30:
  ; @pc 0x8001a1b30 word 0xf900034a
  %r2192.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2192 = load i64, ptr %r2192.p, align 8, !alias.scope !3, !noalias !4
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %gmp2194 = inttoptr i64 %r2192 to ptr
  store i64 %r2193, ptr %gmp2194, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1b34 word 0x9100430b
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %t2196 = add i64 %r2195, 16
  %wp2197 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2196, ptr %wp2197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b38 word 0xaa1303e0
  %r2198.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2198 = load i64, ptr %r2198.p, align 8, !alias.scope !3, !noalias !4
  %t2199 = or i64 0, %r2198
  %wp2200 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2199, ptr %wp2200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b3c word 0xb940826a
  %r2201.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2201 = load i64, ptr %r2201.p, align 8, !alias.scope !3, !noalias !4
  %t2202 = add i64 %r2201, 128
  %gmp2203 = inttoptr i64 %t2202 to ptr
  %gml2204 = load i32, ptr %gmp2203, align 1, !alias.scope !4, !noalias !3
  %c2205 = zext i32 %gml2204 to i64
  %wp2206 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2205, ptr %wp2206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b40 word 0xaa1503e1
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %t2208 = or i64 0, %r2207
  %wp2209 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2208, ptr %wp2209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b44 word 0x2a1403e2
  %r2210.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2210 = load i64, ptr %r2210.p, align 8, !alias.scope !3, !noalias !4
  %c2211 = trunc i64 %r2210 to i32
  %t2212 = or i32 0, %c2211
  %c2213 = zext i32 %t2212 to i64
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c2213, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b48 word 0x7100055f
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %c2216 = trunc i64 %r2215 to i32
  %t2217 = sub i32 %c2216, 1
  %fn2218 = icmp slt i32 %t2217, 0
  %fz2219 = icmp eq i32 %t2217, 0
  %fc2220 = icmp uge i32 %c2216, 1
  %fx12221 = xor i32 %c2216, 1
  %fx22222 = xor i32 %c2216, %t2217
  %fva2223 = and i32 %fx12221, %fx22222
  %fv2224 = icmp slt i32 %fva2223, 0
  %nz2225 = zext i1 %fn2218 to i64
  %zz2226 = zext i1 %fz2219 to i64
  %cz2227 = zext i1 %fc2220 to i64
  %vz2228 = zext i1 %fv2224 to i64
  %ns2229 = shl i64 %nz2225, 31
  %zs2230 = shl i64 %zz2226, 30
  %cs2231 = shl i64 %cz2227, 29
  %vs2232 = shl i64 %vz2228, 28
  %nzor2233 = or i64 %ns2229, %zs2230
  %cvor2234 = or i64 %cs2231, %vs2232
  %nzcv2235 = or i64 %nzor2233, %cvor2234
  %wp2236 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2235, ptr %wp2236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b4c word 0x9a98016a
  %r2237.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2237 = load i64, ptr %r2237.p, align 8, !alias.scope !3, !noalias !4
  %r2238.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2238 = load i64, ptr %r2238.p, align 8, !alias.scope !3, !noalias !4
  %r2239.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2239 = load i64, ptr %r2239.p, align 8, !alias.scope !3, !noalias !4
  %fsh2241 = lshr i64 %r2239, 30
  %cond2240 = trunc i64 %fsh2241 to i1
  %sel2242 = select i1 %cond2240, i64 %r2237, i64 %r2238
  %wp2243 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel2242, ptr %wp2243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b50 word 0x9a890108
  %r2244.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2244 = load i64, ptr %r2244.p, align 8, !alias.scope !3, !noalias !4
  %r2245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2245 = load i64, ptr %r2245.p, align 8, !alias.scope !3, !noalias !4
  %r2246.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2246 = load i64, ptr %r2246.p, align 8, !alias.scope !3, !noalias !4
  %fsh2248 = lshr i64 %r2246, 30
  %cond2247 = trunc i64 %fsh2248 to i1
  %sel2249 = select i1 %cond2247, i64 %r2244, i64 %r2245
  %wp2250 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2249, ptr %wp2250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b54 word 0xa90b226a
  %r2251.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2251 = load i64, ptr %r2251.p, align 8, !alias.scope !3, !noalias !4
  %t2252 = add i64 %r2251, 176
  %t2253 = add i64 %t2252, 8
  %r2254.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2254 = load i64, ptr %r2254.p, align 8, !alias.scope !3, !noalias !4
  %gmp2255 = inttoptr i64 %t2252 to ptr
  store i64 %r2254, ptr %gmp2255, align 1, !alias.scope !4, !noalias !3
  %r2256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2256 = load i64, ptr %r2256.p, align 8, !alias.scope !3, !noalias !4
  %gmp2257 = inttoptr i64 %t2253 to ptr
  store i64 %r2256, ptr %gmp2257, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1b58 word 0x97fb6338
  %wp2258 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449308, ptr %wp2258, align 8, !alias.scope !3, !noalias !4
  call void @f_80007a838(ptr %c)
  ; @pc 0x8001a1b5c word 0xaa0003f8
  %r2259.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2259 = load i64, ptr %r2259.p, align 8, !alias.scope !3, !noalias !4
  %t2260 = or i64 0, %r2259
  %wp2261 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2260, ptr %wp2261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b60 word 0xb4ffd817
  %r2262.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2262 = load i64, ptr %r2262.p, align 8, !alias.scope !3, !noalias !4
  %cmp2263 = icmp eq i64 %r2262, 0
  br i1 %cmp2263, label %L_8001a1660, label %L_8001a1b64_ft
L_8001a1b70:
  ; @pc 0x8001a1b70 word 0xeb17035f
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %t2270 = sub i64 %r2268, %r2269
  %fn2271 = icmp slt i64 %t2270, 0
  %fz2272 = icmp eq i64 %t2270, 0
  %fc2273 = icmp uge i64 %r2268, %r2269
  %fx12274 = xor i64 %r2268, %r2269
  %fx22275 = xor i64 %r2268, %t2270
  %fva2276 = and i64 %fx12274, %fx22275
  %fv2277 = icmp slt i64 %fva2276, 0
  %nz2278 = zext i1 %fn2271 to i64
  %zz2279 = zext i1 %fz2272 to i64
  %cz2280 = zext i1 %fc2273 to i64
  %vz2281 = zext i1 %fv2277 to i64
  %ns2282 = shl i64 %nz2278, 31
  %zs2283 = shl i64 %zz2279, 30
  %cs2284 = shl i64 %cz2280, 29
  %vs2285 = shl i64 %vz2281, 28
  %nzor2286 = or i64 %ns2282, %zs2283
  %cvor2287 = or i64 %cs2284, %vs2285
  %nzcv2288 = or i64 %nzor2286, %cvor2287
  %wp2289 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2288, ptr %wp2289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b74 word 0x54ffe900
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %fsh2292 = lshr i64 %r2290, 30
  %cond2291 = trunc i64 %fsh2292 to i1
  br i1 %cond2291, label %L_8001a1894, label %L_8001a1b78_ft
L_8001a1b80:
  ; @pc 0x8001a1b80 word 0xaa0b03ec
  %r2297.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2297 = load i64, ptr %r2297.p, align 8, !alias.scope !3, !noalias !4
  %t2298 = or i64 0, %r2297
  %wp2299 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2298, ptr %wp2299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b84 word 0xf940056b
  %r2300.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2300 = load i64, ptr %r2300.p, align 8, !alias.scope !3, !noalias !4
  %t2301 = add i64 %r2300, 8
  %gmp2302 = inttoptr i64 %t2301 to ptr
  %gml2303 = load i64, ptr %gmp2302, align 1, !alias.scope !4, !noalias !3
  %wp2304 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2303, ptr %wp2304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b88 word 0xb5ffffcb
  %r2305.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2305 = load i64, ptr %r2305.p, align 8, !alias.scope !3, !noalias !4
  %cmp2306 = icmp ne i64 %r2305, 0
  br i1 %cmp2306, label %L_8001a1b80, label %L_8001a1b8c_ft
L_8001a1b94:
  ; @pc 0x8001a1b94 word 0x91022276
  %r2310.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2310 = load i64, ptr %r2310.p, align 8, !alias.scope !3, !noalias !4
  %t2311 = add i64 %r2310, 136
  %wp2312 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2311, ptr %wp2312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b98 word 0xaa1603e0
  %r2313.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2313 = load i64, ptr %r2313.p, align 8, !alias.scope !3, !noalias !4
  %t2314 = or i64 0, %r2313
  %wp2315 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2314, ptr %wp2315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b9c word 0x94a80931
  %wp2316 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449376, ptr %wp2316, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a1ba0 word 0x17fffecc
  br label %L_8001a16d0
L_8001a1ba4:
  ; @pc 0x8001a1ba4 word 0x4b0803e9
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %c2318 = trunc i64 %r2317 to i32
  %t2319 = sub i32 0, %c2318
  %c2320 = zext i32 %t2319 to i64
  %wp2321 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2320, ptr %wp2321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ba8 word 0xaa1303e0
  %r2322.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2322 = load i64, ptr %r2322.p, align 8, !alias.scope !3, !noalias !4
  %t2323 = or i64 0, %r2322
  %wp2324 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2323, ptr %wp2324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bac word 0xb90007e9
  %r2325.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2325 = load i64, ptr %r2325.p, align 8, !alias.scope !3, !noalias !4
  %t2326 = add i64 %r2325, 4
  %r2327.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2327 = load i64, ptr %r2327.p, align 8, !alias.scope !3, !noalias !4
  %c2328 = trunc i64 %r2327 to i32
  %gmp2329 = inttoptr i64 %t2326 to ptr
  store i32 %c2328, ptr %gmp2329, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1bb0 word 0xaa1703e1
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %t2331 = or i64 0, %r2330
  %wp2332 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2331, ptr %wp2332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bb4 word 0x3100211f
  %r2333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2333 = load i64, ptr %r2333.p, align 8, !alias.scope !3, !noalias !4
  %c2334 = trunc i64 %r2333 to i32
  %t2335 = add i32 %c2334, 8
  %fn2336 = icmp slt i32 %t2335, 0
  %fz2337 = icmp eq i32 %t2335, 0
  %fc2338 = icmp ult i32 %t2335, %c2334
  %fx12339 = xor i32 %c2334, %t2335
  %fx22340 = xor i32 8, %t2335
  %fva2341 = and i32 %fx12339, %fx22340
  %fv2342 = icmp slt i32 %fva2341, 0
  %nz2343 = zext i1 %fn2336 to i64
  %zz2344 = zext i1 %fz2337 to i64
  %cz2345 = zext i1 %fc2338 to i64
  %vz2346 = zext i1 %fv2342 to i64
  %ns2347 = shl i64 %nz2343, 31
  %zs2348 = shl i64 %zz2344, 30
  %cs2349 = shl i64 %cz2345, 29
  %vs2350 = shl i64 %vz2346, 28
  %nzor2351 = or i64 %ns2347, %zs2348
  %cvor2352 = or i64 %cs2349, %vs2350
  %nzcv2353 = or i64 %nzor2351, %cvor2352
  %wp2354 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2353, ptr %wp2354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bb8 word 0x540027c3
  %r2355.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2355 = load i64, ptr %r2355.p, align 8, !alias.scope !3, !noalias !4
  %fsh2357 = lshr i64 %r2355, 29
  %ftr2358 = trunc i64 %fsh2357 to i1
  %cond2356 = xor i1 %ftr2358, true
  br i1 %cond2356, label %L_8001a20b0, label %L_8001a1bbc_ft
L_8001a1bc0:
  ; @pc 0x8001a1bc0 word 0xaa0003e8
  %r2360.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2360 = load i64, ptr %r2360.p, align 8, !alias.scope !3, !noalias !4
  %t2361 = or i64 0, %r2360
  %wp2362 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2361, ptr %wp2362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bc4 word 0xb5ffe680
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %cmp2364 = icmp ne i64 %r2363, 0
  br i1 %cmp2364, label %L_8001a1894, label %L_8001a1bc8_ft
L_8001a1bcc:
  ; @pc 0x8001a1bcc word 0xb001c8c8
  %wp2365 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp2365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bd0 word 0x91368108
  %r2366.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2366 = load i64, ptr %r2366.p, align 8, !alias.scope !3, !noalias !4
  %t2367 = add i64 %r2366, 3488
  %wp2368 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2367, ptr %wp2368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bd4 word 0xf9400108
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %gmp2370 = inttoptr i64 %r2369 to ptr
  %gml2371 = load i64, ptr %gmp2370, align 1, !alias.scope !4, !noalias !3
  %wp2372 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2371, ptr %wp2372, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bd8 word 0xb9404900
  %r2373.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2373 = load i64, ptr %r2373.p, align 8, !alias.scope !3, !noalias !4
  %t2374 = add i64 %r2373, 72
  %gmp2375 = inttoptr i64 %t2374 to ptr
  %gml2376 = load i32, ptr %gmp2375, align 1, !alias.scope !4, !noalias !3
  %c2377 = zext i32 %gml2376 to i64
  %wp2378 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2377, ptr %wp2378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bdc word 0x94a807b9
  %wp2379 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449440, ptr %wp2379, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x8001a1be0 word 0x910022c8
  %r2380.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2380 = load i64, ptr %r2380.p, align 8, !alias.scope !3, !noalias !4
  %t2381 = add i64 %r2380, 8
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2381, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1be4 word 0x91022009
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %t2384 = add i64 %r2383, 136
  %wp2385 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2384, ptr %wp2385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1be8 word 0xf100001f
  %r2386.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2386 = load i64, ptr %r2386.p, align 8, !alias.scope !3, !noalias !4
  %t2387 = sub i64 %r2386, 0
  %fn2388 = icmp slt i64 %t2387, 0
  %fz2389 = icmp eq i64 %t2387, 0
  %fc2390 = icmp uge i64 %r2386, 0
  %fx12391 = xor i64 %r2386, 0
  %fx22392 = xor i64 %r2386, %t2387
  %fva2393 = and i64 %fx12391, %fx22392
  %fv2394 = icmp slt i64 %fva2393, 0
  %nz2395 = zext i1 %fn2388 to i64
  %zz2396 = zext i1 %fz2389 to i64
  %cz2397 = zext i1 %fc2390 to i64
  %vz2398 = zext i1 %fv2394 to i64
  %ns2399 = shl i64 %nz2395, 31
  %zs2400 = shl i64 %zz2396, 30
  %cs2401 = shl i64 %cz2397, 29
  %vs2402 = shl i64 %vz2398, 28
  %nzor2403 = or i64 %ns2399, %zs2400
  %cvor2404 = or i64 %cs2401, %vs2402
  %nzcv2405 = or i64 %nzor2403, %cvor2404
  %wp2406 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2405, ptr %wp2406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bec word 0x9a890108
  %r2407.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2407 = load i64, ptr %r2407.p, align 8, !alias.scope !3, !noalias !4
  %r2408.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2408 = load i64, ptr %r2408.p, align 8, !alias.scope !3, !noalias !4
  %r2409.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2409 = load i64, ptr %r2409.p, align 8, !alias.scope !3, !noalias !4
  %fsh2411 = lshr i64 %r2409, 30
  %cond2410 = trunc i64 %fsh2411 to i1
  %sel2412 = select i1 %cond2410, i64 %r2407, i64 %r2408
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2412, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bf0 word 0xf9400113
  %r2414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2414 = load i64, ptr %r2414.p, align 8, !alias.scope !3, !noalias !4
  %gmp2415 = inttoptr i64 %r2414 to ptr
  %gml2416 = load i64, ptr %gmp2415, align 1, !alias.scope !4, !noalias !3
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2416, ptr %wp2417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1bf4 word 0xb5ffcef3
  %r2418.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2418 = load i64, ptr %r2418.p, align 8, !alias.scope !3, !noalias !4
  %cmp2419 = icmp ne i64 %r2418, 0
  br i1 %cmp2419, label %L_8001a15d0, label %L_8001a1bf8_ft
L_8001a1bfc:
  ; @pc 0x8001a1bfc word 0xeb15019f
  %r2420.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2420 = load i64, ptr %r2420.p, align 8, !alias.scope !3, !noalias !4
  %r2421.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2421 = load i64, ptr %r2421.p, align 8, !alias.scope !3, !noalias !4
  %t2422 = sub i64 %r2420, %r2421
  %fn2423 = icmp slt i64 %t2422, 0
  %fz2424 = icmp eq i64 %t2422, 0
  %fc2425 = icmp uge i64 %r2420, %r2421
  %fx12426 = xor i64 %r2420, %r2421
  %fx22427 = xor i64 %r2420, %t2422
  %fva2428 = and i64 %fx12426, %fx22427
  %fv2429 = icmp slt i64 %fva2428, 0
  %nz2430 = zext i1 %fn2423 to i64
  %zz2431 = zext i1 %fz2424 to i64
  %cz2432 = zext i1 %fc2425 to i64
  %vz2433 = zext i1 %fv2429 to i64
  %ns2434 = shl i64 %nz2430, 31
  %zs2435 = shl i64 %zz2431, 30
  %cs2436 = shl i64 %cz2432, 29
  %vs2437 = shl i64 %vz2433, 28
  %nzor2438 = or i64 %ns2434, %zs2435
  %cvor2439 = or i64 %cs2436, %vs2437
  %nzcv2440 = or i64 %nzor2438, %cvor2439
  %wp2441 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2440, ptr %wp2441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c00 word 0x54ffe4a0
  %r2442.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2442 = load i64, ptr %r2442.p, align 8, !alias.scope !3, !noalias !4
  %fsh2444 = lshr i64 %r2442, 30
  %cond2443 = trunc i64 %fsh2444 to i1
  br i1 %cond2443, label %L_8001a1894, label %L_8001a1c04_ft
L_8001a1c10:
  ; @pc 0x8001a1c10 word 0x93407e80
  %r2453.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2453 = load i64, ptr %r2453.p, align 8, !alias.scope !3, !noalias !4
  %t2454 = lshr i64 %r2453, 31
  %t2455 = and i64 %t2454, 1
  %t2456 = sub i64 0, %t2455
  %t2457 = and i64 %t2456, -4294967296
  %t2458 = and i64 %r2453, 4294967295
  %t2459 = or i64 %t2457, %t2458
  %wp2460 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2459, ptr %wp2460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c14 word 0xaa1503e1
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %t2462 = or i64 0, %r2461
  %wp2463 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2462, ptr %wp2463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c18 word 0xa9484ff4
  %r2464.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2464 = load i64, ptr %r2464.p, align 8, !alias.scope !3, !noalias !4
  %t2465 = add i64 %r2464, 128
  %t2466 = add i64 %t2465, 8
  %gmp2467 = inttoptr i64 %t2465 to ptr
  %gml2468 = load i64, ptr %gmp2467, align 1, !alias.scope !4, !noalias !3
  %gmp2469 = inttoptr i64 %t2466 to ptr
  %gml2470 = load i64, ptr %gmp2469, align 1, !alias.scope !4, !noalias !3
  %wp2471 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml2468, ptr %wp2471, align 8, !alias.scope !3, !noalias !4
  %wp2472 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2470, ptr %wp2472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c1c word 0xa94757f6
  %r2473.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2473 = load i64, ptr %r2473.p, align 8, !alias.scope !3, !noalias !4
  %t2474 = add i64 %r2473, 112
  %t2475 = add i64 %t2474, 8
  %gmp2476 = inttoptr i64 %t2474 to ptr
  %gml2477 = load i64, ptr %gmp2476, align 1, !alias.scope !4, !noalias !3
  %gmp2478 = inttoptr i64 %t2475 to ptr
  %gml2479 = load i64, ptr %gmp2478, align 1, !alias.scope !4, !noalias !3
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2477, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  %wp2481 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2479, ptr %wp2481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c20 word 0xa9465ff8
  %r2482.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2482 = load i64, ptr %r2482.p, align 8, !alias.scope !3, !noalias !4
  %t2483 = add i64 %r2482, 96
  %t2484 = add i64 %t2483, 8
  %gmp2485 = inttoptr i64 %t2483 to ptr
  %gml2486 = load i64, ptr %gmp2485, align 1, !alias.scope !4, !noalias !3
  %gmp2487 = inttoptr i64 %t2484 to ptr
  %gml2488 = load i64, ptr %gmp2487, align 1, !alias.scope !4, !noalias !3
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2486, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  %wp2490 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2488, ptr %wp2490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c24 word 0xa94567fa
  %r2491.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2491 = load i64, ptr %r2491.p, align 8, !alias.scope !3, !noalias !4
  %t2492 = add i64 %r2491, 80
  %t2493 = add i64 %t2492, 8
  %gmp2494 = inttoptr i64 %t2492 to ptr
  %gml2495 = load i64, ptr %gmp2494, align 1, !alias.scope !4, !noalias !3
  %gmp2496 = inttoptr i64 %t2493 to ptr
  %gml2497 = load i64, ptr %gmp2496, align 1, !alias.scope !4, !noalias !3
  %wp2498 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2495, ptr %wp2498, align 8, !alias.scope !3, !noalias !4
  %wp2499 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2497, ptr %wp2499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c28 word 0xa9446ffc
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %t2501 = add i64 %r2500, 64
  %t2502 = add i64 %t2501, 8
  %gmp2503 = inttoptr i64 %t2501 to ptr
  %gml2504 = load i64, ptr %gmp2503, align 1, !alias.scope !4, !noalias !3
  %gmp2505 = inttoptr i64 %t2502 to ptr
  %gml2506 = load i64, ptr %gmp2505, align 1, !alias.scope !4, !noalias !3
  %wp2507 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2504, ptr %wp2507, align 8, !alias.scope !3, !noalias !4
  %wp2508 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml2506, ptr %wp2508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c2c word 0xa9437bfd
  %r2509.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2509 = load i64, ptr %r2509.p, align 8, !alias.scope !3, !noalias !4
  %t2510 = add i64 %r2509, 48
  %t2511 = add i64 %t2510, 8
  %gmp2512 = inttoptr i64 %t2510 to ptr
  %gml2513 = load i64, ptr %gmp2512, align 1, !alias.scope !4, !noalias !3
  %gmp2514 = inttoptr i64 %t2511 to ptr
  %gml2515 = load i64, ptr %gmp2514, align 1, !alias.scope !4, !noalias !3
  %wp2516 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml2513, ptr %wp2516, align 8, !alias.scope !3, !noalias !4
  %wp2517 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml2515, ptr %wp2517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c30 word 0x910243ff
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %t2519 = add i64 %r2518, 144
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c34 word 0x17fbe02b
  musttail call void @f_800099ce0(ptr %c)
  ret void
L_8001a1c38:
  ; @pc 0x8001a1c38 word 0xaa1703e0
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %t2522 = or i64 0, %r2521
  %wp2523 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2522, ptr %wp2523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c3c word 0x94a80909
  %wp2524 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449536, ptr %wp2524, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x8001a1c40 word 0xaa1703f6
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %t2526 = or i64 0, %r2525
  %wp2527 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2526, ptr %wp2527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c44 word 0x17fffe6d
  br label %L_8001a15f8
L_8001a1c48:
  ; @pc 0x8001a1c48 word 0xb4000169
  %r2528.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2528 = load i64, ptr %r2528.p, align 8, !alias.scope !3, !noalias !4
  %cmp2529 = icmp eq i64 %r2528, 0
  br i1 %cmp2529, label %L_8001a1c74, label %L_8001a1c4c_ft
L_8001a1c74:
  ; @pc 0x8001a1c74 word 0xaa1f03f8
  %t2572 = or i64 0, 0
  %wp2573 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2572, ptr %wp2573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c78 word 0x17fffe7a
  br label %L_8001a1660
L_8001a1c7c:
  ; @pc 0x8001a1c7c word 0xf9405e6c
  %r2574.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2574 = load i64, ptr %r2574.p, align 8, !alias.scope !3, !noalias !4
  %t2575 = add i64 %r2574, 184
  %gmp2576 = inttoptr i64 %t2575 to ptr
  %gml2577 = load i64, ptr %gmp2576, align 1, !alias.scope !4, !noalias !3
  %wp2578 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2577, ptr %wp2578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c80 word 0x2a0803fa
  %r2579.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2579 = load i64, ptr %r2579.p, align 8, !alias.scope !3, !noalias !4
  %c2580 = trunc i64 %r2579 to i32
  %t2581 = or i32 0, %c2580
  %c2582 = zext i32 %t2581 to i64
  %wp2583 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2582, ptr %wp2583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c84 word 0x4b0a03eb
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %c2585 = trunc i64 %r2584 to i32
  %t2586 = sub i32 0, %c2585
  %c2587 = zext i32 %t2586 to i64
  %wp2588 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2587, ptr %wp2588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c88 word 0xcb190188
  %r2589.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2589 = load i64, ptr %r2589.p, align 8, !alias.scope !3, !noalias !4
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %t2591 = sub i64 %r2589, %r2590
  %wp2592 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2591, ptr %wp2592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c8c word 0xeb08019f
  %r2593.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2593 = load i64, ptr %r2593.p, align 8, !alias.scope !3, !noalias !4
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %t2595 = sub i64 %r2593, %r2594
  %fn2596 = icmp slt i64 %t2595, 0
  %fz2597 = icmp eq i64 %t2595, 0
  %fc2598 = icmp uge i64 %r2593, %r2594
  %fx12599 = xor i64 %r2593, %r2594
  %fx22600 = xor i64 %r2593, %t2595
  %fva2601 = and i64 %fx12599, %fx22600
  %fv2602 = icmp slt i64 %fva2601, 0
  %nz2603 = zext i1 %fn2596 to i64
  %zz2604 = zext i1 %fz2597 to i64
  %cz2605 = zext i1 %fc2598 to i64
  %vz2606 = zext i1 %fv2602 to i64
  %ns2607 = shl i64 %nz2603, 31
  %zs2608 = shl i64 %zz2604, 30
  %cs2609 = shl i64 %cz2605, 29
  %vs2610 = shl i64 %vz2606, 28
  %nzor2611 = or i64 %ns2607, %zs2608
  %cvor2612 = or i64 %cs2609, %vs2610
  %nzcv2613 = or i64 %nzor2611, %cvor2612
  %wp2614 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2613, ptr %wp2614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c90 word 0x540000c3
  %r2615.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2615 = load i64, ptr %r2615.p, align 8, !alias.scope !3, !noalias !4
  %fsh2617 = lshr i64 %r2615, 29
  %ftr2618 = trunc i64 %fsh2617 to i1
  %cond2616 = xor i1 %ftr2618, true
  br i1 %cond2616, label %L_8001a1ca8, label %L_8001a1c94_ft
L_8001a1ca8:
  ; @pc 0x8001a1ca8 word 0x2a1a03e8
  %r2661.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2661 = load i64, ptr %r2661.p, align 8, !alias.scope !3, !noalias !4
  %c2662 = trunc i64 %r2661 to i32
  %t2663 = or i32 0, %c2662
  %c2664 = zext i32 %t2663 to i64
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2664, ptr %wp2665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cac word 0xb4ffef09
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %cmp2667 = icmp eq i64 %r2666, 0
  br i1 %cmp2667, label %L_8001a1a8c, label %L_8001a1cb0_ft
L_8001a1ce0:
  ; @pc 0x8001a1ce0 word 0xa900d7f3
  %r2715.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2715 = load i64, ptr %r2715.p, align 8, !alias.scope !3, !noalias !4
  %t2716 = add i64 %r2715, 8
  %t2717 = add i64 %t2716, 8
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %gmp2719 = inttoptr i64 %t2716 to ptr
  store i64 %r2718, ptr %gmp2719, align 1, !alias.scope !4, !noalias !3
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %gmp2721 = inttoptr i64 %t2717 to ptr
  store i64 %r2720, ptr %gmp2721, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1ce4 word 0x910023e1
  %r2722.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2722 = load i64, ptr %r2722.p, align 8, !alias.scope !3, !noalias !4
  %t2723 = add i64 %r2722, 8
  %wp2724 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2723, ptr %wp2724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ce8 word 0x2a0803f8
  %r2725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2725 = load i64, ptr %r2725.p, align 8, !alias.scope !3, !noalias !4
  %c2726 = trunc i64 %r2725 to i32
  %t2727 = or i32 0, %c2726
  %c2728 = zext i32 %t2727 to i64
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2728, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cec word 0xb9001bf4
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %t2731 = add i64 %r2730, 24
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %c2733 = trunc i64 %r2732 to i32
  %gmp2734 = inttoptr i64 %t2731 to ptr
  store i32 %c2733, ptr %gmp2734, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1cf0 word 0xf90013f9
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %t2736 = add i64 %r2735, 32
  %r2737.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2737 = load i64, ptr %r2737.p, align 8, !alias.scope !3, !noalias !4
  %gmp2738 = inttoptr i64 %t2736 to ptr
  store i64 %r2737, ptr %gmp2738, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1cf4 word 0xb9002bea
  %r2739.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2739 = load i64, ptr %r2739.p, align 8, !alias.scope !3, !noalias !4
  %t2740 = add i64 %r2739, 40
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %c2742 = trunc i64 %r2741 to i32
  %gmp2743 = inttoptr i64 %t2740 to ptr
  store i32 %c2742, ptr %gmp2743, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1cf8 word 0xf9400009
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %gmp2745 = inttoptr i64 %r2744 to ptr
  %gml2746 = load i64, ptr %gmp2745, align 1, !alias.scope !4, !noalias !3
  %wp2747 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2746, ptr %wp2747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cfc word 0xf9400129
  %r2748.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2748 = load i64, ptr %r2748.p, align 8, !alias.scope !3, !noalias !4
  %gmp2749 = inttoptr i64 %r2748 to ptr
  %gml2750 = load i64, ptr %gmp2749, align 1, !alias.scope !4, !noalias !3
  %wp2751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2750, ptr %wp2751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d00 word 0xd63f0120
  %r2752.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2752 = load i64, ptr %r2752.p, align 8, !alias.scope !3, !noalias !4
  %fp2753 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2752, ptr %fp2753, align 8, !alias.scope !3, !noalias !4
  %wp2754 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449732, ptr %wp2754, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a1d04 word 0x2a1803e8
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %c2756 = trunc i64 %r2755 to i32
  %t2757 = or i32 0, %c2756
  %c2758 = zext i32 %t2757 to i64
  %wp2759 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2758, ptr %wp2759, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d08 word 0x17ffff61
  br label %L_8001a1a8c
L_8001a1d0c:
  ; @pc 0x8001a1d0c word 0xb4000179
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %cmp2761 = icmp eq i64 %r2760, 0
  br i1 %cmp2761, label %L_8001a1d38, label %L_8001a1d10_ft
L_8001a1d28:
  ; @pc 0x8001a1d28 word 0xf9400008
  %r2790.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2790 = load i64, ptr %r2790.p, align 8, !alias.scope !3, !noalias !4
  %gmp2791 = inttoptr i64 %r2790 to ptr
  %gml2792 = load i64, ptr %gmp2791, align 1, !alias.scope !4, !noalias !3
  %wp2793 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2792, ptr %wp2793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d2c word 0x910023e1
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 8
  %wp2796 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2795, ptr %wp2796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d30 word 0xf9400108
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %gmp2798 = inttoptr i64 %r2797 to ptr
  %gml2799 = load i64, ptr %gmp2798, align 1, !alias.scope !4, !noalias !3
  %wp2800 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2799, ptr %wp2800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d34 word 0xd63f0100
  %r2801.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2801 = load i64, ptr %r2801.p, align 8, !alias.scope !3, !noalias !4
  %fp2802 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2801, ptr %fp2802, align 8, !alias.scope !3, !noalias !4
  %wp2803 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449784, ptr %wp2803, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a1d38
L_8001a1d38:
  ; @pc 0x8001a1d38 word 0xaa1f03f8
  %t2804 = or i64 0, 0
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2804, ptr %wp2805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d3c word 0xb4ffc956
  %r2806.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2806 = load i64, ptr %r2806.p, align 8, !alias.scope !3, !noalias !4
  %cmp2807 = icmp eq i64 %r2806, 0
  br i1 %cmp2807, label %L_8001a1664, label %L_8001a1d40_ft
L_8001a1d44:
  ; @pc 0x8001a1d44 word 0xb4000179
  %r2808.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2808 = load i64, ptr %r2808.p, align 8, !alias.scope !3, !noalias !4
  %cmp2809 = icmp eq i64 %r2808, 0
  br i1 %cmp2809, label %L_8001a1d70, label %L_8001a1d48_ft
L_8001a1d5c:
  ; @pc 0x8001a1d5c word 0xb9002bf4
  %r2833.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2833 = load i64, ptr %r2833.p, align 8, !alias.scope !3, !noalias !4
  %t2834 = add i64 %r2833, 40
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %c2836 = trunc i64 %r2835 to i32
  %gmp2837 = inttoptr i64 %t2834 to ptr
  store i32 %c2836, ptr %gmp2837, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d60 word 0x910023e1
  %r2838.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2838 = load i64, ptr %r2838.p, align 8, !alias.scope !3, !noalias !4
  %t2839 = add i64 %r2838, 8
  %wp2840 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2839, ptr %wp2840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d64 word 0xf9400008
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %gmp2842 = inttoptr i64 %r2841 to ptr
  %gml2843 = load i64, ptr %gmp2842, align 1, !alias.scope !4, !noalias !3
  %wp2844 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2843, ptr %wp2844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d68 word 0xf9400108
  %r2845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2845 = load i64, ptr %r2845.p, align 8, !alias.scope !3, !noalias !4
  %gmp2846 = inttoptr i64 %r2845 to ptr
  %gml2847 = load i64, ptr %gmp2846, align 1, !alias.scope !4, !noalias !3
  %wp2848 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2847, ptr %wp2848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d6c word 0xd63f0100
  %r2849.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2849 = load i64, ptr %r2849.p, align 8, !alias.scope !3, !noalias !4
  %fp2850 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2849, ptr %fp2850, align 8, !alias.scope !3, !noalias !4
  %wp2851 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449840, ptr %wp2851, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a1d70
L_8001a1d70:
  ; @pc 0x8001a1d70 word 0xaa1f03f8
  %t2852 = or i64 0, 0
  %wp2853 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2852, ptr %wp2853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d74 word 0x17fffe3c
  br label %L_8001a1664
L_8001a1d78:
  ; @pc 0x8001a1d78 word 0x2a1a03e8
  %r2854.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2854 = load i64, ptr %r2854.p, align 8, !alias.scope !3, !noalias !4
  %c2855 = trunc i64 %r2854 to i32
  %t2856 = or i32 0, %c2855
  %c2857 = zext i32 %t2856 to i64
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d7c word 0xf9005e78
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %t2860 = add i64 %r2859, 184
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %gmp2862 = inttoptr i64 %t2860 to ptr
  store i64 %r2861, ptr %gmp2862, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d80 word 0x17fffe37
  br label %L_8001a165c
L_8001a1d84:
  ; @pc 0x8001a1d84 word 0xb4ffff79
  %r2863.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2863 = load i64, ptr %r2863.p, align 8, !alias.scope !3, !noalias !4
  %cmp2864 = icmp eq i64 %r2863, 0
  br i1 %cmp2864, label %L_8001a1d70, label %L_8001a1d88_ft
L_8001a1da0:
  ; @pc 0x8001a1da0 word 0x7100051f
  %r2888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2888 = load i64, ptr %r2888.p, align 8, !alias.scope !3, !noalias !4
  %c2889 = trunc i64 %r2888 to i32
  %t2890 = sub i32 %c2889, 1
  %fn2891 = icmp slt i32 %t2890, 0
  %fz2892 = icmp eq i32 %t2890, 0
  %fc2893 = icmp uge i32 %c2889, 1
  %fx12894 = xor i32 %c2889, 1
  %fx22895 = xor i32 %c2889, %t2890
  %fva2896 = and i32 %fx12894, %fx22895
  %fv2897 = icmp slt i32 %fva2896, 0
  %nz2898 = zext i1 %fn2891 to i64
  %zz2899 = zext i1 %fz2892 to i64
  %cz2900 = zext i1 %fc2893 to i64
  %vz2901 = zext i1 %fv2897 to i64
  %ns2902 = shl i64 %nz2898, 31
  %zs2903 = shl i64 %zz2899, 30
  %cs2904 = shl i64 %cz2900, 29
  %vs2905 = shl i64 %vz2901, 28
  %nzor2906 = or i64 %ns2902, %zs2903
  %cvor2907 = or i64 %cs2904, %vs2905
  %nzcv2908 = or i64 %nzor2906, %cvor2907
  %wp2909 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2908, ptr %wp2909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1da4 word 0xb90007ef
  %r2910.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2910 = load i64, ptr %r2910.p, align 8, !alias.scope !3, !noalias !4
  %t2911 = add i64 %r2910, 4
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 120
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %c2913 = trunc i64 %r2912 to i32
  %gmp2914 = inttoptr i64 %t2911 to ptr
  store i32 %c2913, ptr %gmp2914, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1da8 word 0x540002c1
  %r2915.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2915 = load i64, ptr %r2915.p, align 8, !alias.scope !3, !noalias !4
  %fsh2917 = lshr i64 %r2915, 30
  %ftr2918 = trunc i64 %fsh2917 to i1
  %cond2916 = xor i1 %ftr2918, true
  br i1 %cond2916, label %L_8001a1e00, label %L_8001a1dac_ft
L_8001a1db0:
  ; @pc 0x8001a1db0 word 0xf9400d8d
  %r2921.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2921 = load i64, ptr %r2921.p, align 8, !alias.scope !3, !noalias !4
  %t2922 = add i64 %r2921, 24
  %gmp2923 = inttoptr i64 %t2922 to ptr
  %gml2924 = load i64, ptr %gmp2923, align 1, !alias.scope !4, !noalias !3
  %wp2925 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2924, ptr %wp2925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1db4 word 0xeb1701bf
  %r2926.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2926 = load i64, ptr %r2926.p, align 8, !alias.scope !3, !noalias !4
  %r2927.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2927 = load i64, ptr %r2927.p, align 8, !alias.scope !3, !noalias !4
  %t2928 = sub i64 %r2926, %r2927
  %fn2929 = icmp slt i64 %t2928, 0
  %fz2930 = icmp eq i64 %t2928, 0
  %fc2931 = icmp uge i64 %r2926, %r2927
  %fx12932 = xor i64 %r2926, %r2927
  %fx22933 = xor i64 %r2926, %t2928
  %fva2934 = and i64 %fx12932, %fx22933
  %fv2935 = icmp slt i64 %fva2934, 0
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
  ; @pc 0x8001a1db8 word 0x540000c3
  %r2948.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2948 = load i64, ptr %r2948.p, align 8, !alias.scope !3, !noalias !4
  %fsh2950 = lshr i64 %r2948, 29
  %ftr2951 = trunc i64 %fsh2950 to i1
  %cond2949 = xor i1 %ftr2951, true
  br i1 %cond2949, label %L_8001a1dd0, label %L_8001a1dbc_ft
L_8001a1dcc:
  ; @pc 0x8001a1dcc word 0xaa0c03e8
  %r2989.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2989 = load i64, ptr %r2989.p, align 8, !alias.scope !3, !noalias !4
  %t2990 = or i64 0, %r2989
  %wp2991 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2990, ptr %wp2991, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1dd0
L_8001a1dd0:
  ; @pc 0x8001a1dd0 word 0x8b0a018c
  %r2992.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2992 = load i64, ptr %r2992.p, align 8, !alias.scope !3, !noalias !4
  %r2993.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2993 = load i64, ptr %r2993.p, align 8, !alias.scope !3, !noalias !4
  %t2994 = add i64 %r2992, %r2993
  %wp2995 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t2994, ptr %wp2995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dd4 word 0xf940058c
  %r2996.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2996 = load i64, ptr %r2996.p, align 8, !alias.scope !3, !noalias !4
  %t2997 = add i64 %r2996, 8
  %gmp2998 = inttoptr i64 %t2997 to ptr
  %gml2999 = load i64, ptr %gmp2998, align 1, !alias.scope !4, !noalias !3
  %wp3000 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2999, ptr %wp3000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dd8 word 0x8b09018c
  %r3001.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3001 = load i64, ptr %r3001.p, align 8, !alias.scope !3, !noalias !4
  %r3002.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3002 = load i64, ptr %r3002.p, align 8, !alias.scope !3, !noalias !4
  %t3003 = add i64 %r3001, %r3002
  %wp3004 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3003, ptr %wp3004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ddc word 0xeb0b019f
  %r3005.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3005 = load i64, ptr %r3005.p, align 8, !alias.scope !3, !noalias !4
  %r3006.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3006 = load i64, ptr %r3006.p, align 8, !alias.scope !3, !noalias !4
  %t3007 = sub i64 %r3005, %r3006
  %fn3008 = icmp slt i64 %t3007, 0
  %fz3009 = icmp eq i64 %t3007, 0
  %fc3010 = icmp uge i64 %r3005, %r3006
  %fx13011 = xor i64 %r3005, %r3006
  %fx23012 = xor i64 %r3005, %t3007
  %fva3013 = and i64 %fx13011, %fx23012
  %fv3014 = icmp slt i64 %fva3013, 0
  %nz3015 = zext i1 %fn3008 to i64
  %zz3016 = zext i1 %fz3009 to i64
  %cz3017 = zext i1 %fc3010 to i64
  %vz3018 = zext i1 %fv3014 to i64
  %ns3019 = shl i64 %nz3015, 31
  %zs3020 = shl i64 %zz3016, 30
  %cs3021 = shl i64 %cz3017, 29
  %vs3022 = shl i64 %vz3018, 28
  %nzor3023 = or i64 %ns3019, %zs3020
  %cvor3024 = or i64 %cs3021, %vs3022
  %nzcv3025 = or i64 %nzor3023, %cvor3024
  %wp3026 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3025, ptr %wp3026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1de0 word 0x54fffe81
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %fsh3029 = lshr i64 %r3027, 30
  %ftr3030 = trunc i64 %fsh3029 to i1
  %cond3028 = xor i1 %ftr3030, true
  br i1 %cond3028, label %L_8001a1db0, label %L_8001a1de4
L_8001a1de4:
  ; @pc 0x8001a1de4 word 0xb4000548
  %r3031.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3031 = load i64, ptr %r3031.p, align 8, !alias.scope !3, !noalias !4
  %cmp3032 = icmp eq i64 %r3031, 0
  br i1 %cmp3032, label %L_8001a1e8c, label %L_8001a1de8_ft
L_8001a1df0:
  ; @pc 0x8001a1df0 word 0xaa0803fb
  %r3038.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3038 = load i64, ptr %r3038.p, align 8, !alias.scope !3, !noalias !4
  %t3039 = or i64 0, %r3038
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1df4 word 0x94981fa5
  %wp3041 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449976, ptr %wp3041, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a1df8 word 0xaa1b03e8
  %r3042.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3042 = load i64, ptr %r3042.p, align 8, !alias.scope !3, !noalias !4
  %t3043 = or i64 0, %r3042
  %wp3044 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3043, ptr %wp3044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dfc word 0x17fffe8d
  br label %L_8001a1830
L_8001a1e00:
  ; @pc 0x8001a1e00 word 0x7100091f
  %r3045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3045 = load i64, ptr %r3045.p, align 8, !alias.scope !3, !noalias !4
  %c3046 = trunc i64 %r3045 to i32
  %t3047 = sub i32 %c3046, 2
  %fn3048 = icmp slt i32 %t3047, 0
  %fz3049 = icmp eq i32 %t3047, 0
  %fc3050 = icmp uge i32 %c3046, 2
  %fx13051 = xor i32 %c3046, 2
  %fx23052 = xor i32 %c3046, %t3047
  %fva3053 = and i32 %fx13051, %fx23052
  %fv3054 = icmp slt i32 %fva3053, 0
  %nz3055 = zext i1 %fn3048 to i64
  %zz3056 = zext i1 %fz3049 to i64
  %cz3057 = zext i1 %fc3050 to i64
  %vz3058 = zext i1 %fv3054 to i64
  %ns3059 = shl i64 %nz3055, 31
  %zs3060 = shl i64 %zz3056, 30
  %cs3061 = shl i64 %cz3057, 29
  %vs3062 = shl i64 %vz3058, 28
  %nzor3063 = or i64 %ns3059, %zs3060
  %cvor3064 = or i64 %cs3061, %vs3062
  %nzcv3065 = or i64 %nzor3063, %cvor3064
  %wp3066 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3065, ptr %wp3066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e04 word 0x54000201
  %r3067.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3067 = load i64, ptr %r3067.p, align 8, !alias.scope !3, !noalias !4
  %fsh3069 = lshr i64 %r3067, 30
  %ftr3070 = trunc i64 %fsh3069 to i1
  %cond3068 = xor i1 %ftr3070, true
  br i1 %cond3068, label %L_8001a1e44, label %L_8001a1e08_ft
L_8001a1e0c:
  ; @pc 0x8001a1e0c word 0xf9400d8d
  %r3073.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3073 = load i64, ptr %r3073.p, align 8, !alias.scope !3, !noalias !4
  %t3074 = add i64 %r3073, 24
  %gmp3075 = inttoptr i64 %t3074 to ptr
  %gml3076 = load i64, ptr %gmp3075, align 1, !alias.scope !4, !noalias !3
  %wp3077 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3076, ptr %wp3077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e10 word 0xeb1701bf
  %r3078.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3078 = load i64, ptr %r3078.p, align 8, !alias.scope !3, !noalias !4
  %r3079.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3079 = load i64, ptr %r3079.p, align 8, !alias.scope !3, !noalias !4
  %t3080 = sub i64 %r3078, %r3079
  %fn3081 = icmp slt i64 %t3080, 0
  %fz3082 = icmp eq i64 %t3080, 0
  %fc3083 = icmp uge i64 %r3078, %r3079
  %fx13084 = xor i64 %r3078, %r3079
  %fx23085 = xor i64 %r3078, %t3080
  %fva3086 = and i64 %fx13084, %fx23085
  %fv3087 = icmp slt i64 %fva3086, 0
  %nz3088 = zext i1 %fn3081 to i64
  %zz3089 = zext i1 %fz3082 to i64
  %cz3090 = zext i1 %fc3083 to i64
  %vz3091 = zext i1 %fv3087 to i64
  %ns3092 = shl i64 %nz3088, 31
  %zs3093 = shl i64 %zz3089, 30
  %cs3094 = shl i64 %cz3090, 29
  %vs3095 = shl i64 %vz3091, 28
  %nzor3096 = or i64 %ns3092, %zs3093
  %cvor3097 = or i64 %cs3094, %vs3095
  %nzcv3098 = or i64 %nzor3096, %cvor3097
  %wp3099 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3098, ptr %wp3099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e14 word 0x540000c3
  %r3100.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3100 = load i64, ptr %r3100.p, align 8, !alias.scope !3, !noalias !4
  %fsh3102 = lshr i64 %r3100, 29
  %ftr3103 = trunc i64 %fsh3102 to i1
  %cond3101 = xor i1 %ftr3103, true
  br i1 %cond3101, label %L_8001a1e2c, label %L_8001a1e18_ft
L_8001a1e28:
  ; @pc 0x8001a1e28 word 0xaa0c03e8
  %r3136.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3136 = load i64, ptr %r3136.p, align 8, !alias.scope !3, !noalias !4
  %t3137 = or i64 0, %r3136
  %wp3138 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3137, ptr %wp3138, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1e2c
L_8001a1e2c:
  ; @pc 0x8001a1e2c word 0x8b0a018c
  %r3139.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3139 = load i64, ptr %r3139.p, align 8, !alias.scope !3, !noalias !4
  %r3140.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3140 = load i64, ptr %r3140.p, align 8, !alias.scope !3, !noalias !4
  %t3141 = add i64 %r3139, %r3140
  %wp3142 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3141, ptr %wp3142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e30 word 0xf940058c
  %r3143.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3143 = load i64, ptr %r3143.p, align 8, !alias.scope !3, !noalias !4
  %t3144 = add i64 %r3143, 8
  %gmp3145 = inttoptr i64 %t3144 to ptr
  %gml3146 = load i64, ptr %gmp3145, align 1, !alias.scope !4, !noalias !3
  %wp3147 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3146, ptr %wp3147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e34 word 0x8b09018c
  %r3148.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3148 = load i64, ptr %r3148.p, align 8, !alias.scope !3, !noalias !4
  %r3149.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3149 = load i64, ptr %r3149.p, align 8, !alias.scope !3, !noalias !4
  %t3150 = add i64 %r3148, %r3149
  %wp3151 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3150, ptr %wp3151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e38 word 0xeb0b019f
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %r3153.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3153 = load i64, ptr %r3153.p, align 8, !alias.scope !3, !noalias !4
  %t3154 = sub i64 %r3152, %r3153
  %fn3155 = icmp slt i64 %t3154, 0
  %fz3156 = icmp eq i64 %t3154, 0
  %fc3157 = icmp uge i64 %r3152, %r3153
  %fx13158 = xor i64 %r3152, %r3153
  %fx23159 = xor i64 %r3152, %t3154
  %fva3160 = and i64 %fx13158, %fx23159
  %fv3161 = icmp slt i64 %fva3160, 0
  %nz3162 = zext i1 %fn3155 to i64
  %zz3163 = zext i1 %fz3156 to i64
  %cz3164 = zext i1 %fc3157 to i64
  %vz3165 = zext i1 %fv3161 to i64
  %ns3166 = shl i64 %nz3162, 31
  %zs3167 = shl i64 %zz3163, 30
  %cs3168 = shl i64 %cz3164, 29
  %vs3169 = shl i64 %vz3165, 28
  %nzor3170 = or i64 %ns3166, %zs3167
  %cvor3171 = or i64 %cs3168, %vs3169
  %nzcv3172 = or i64 %nzor3170, %cvor3171
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3172, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e3c word 0x54fffe81
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %fsh3176 = lshr i64 %r3174, 30
  %ftr3177 = trunc i64 %fsh3176 to i1
  %cond3175 = xor i1 %ftr3177, true
  br i1 %cond3175, label %L_8001a1e0c, label %L_8001a1e40_ft
L_8001a1e44:
  ; @pc 0x8001a1e44 word 0xaa1f03e8
  %t3178 = or i64 0, 0
  %wp3179 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3178, ptr %wp3179, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1e48
L_8001a1e48:
  ; @pc 0x8001a1e48 word 0xf100011f
  %r3180.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3180 = load i64, ptr %r3180.p, align 8, !alias.scope !3, !noalias !4
  %t3181 = sub i64 %r3180, 0
  %fn3182 = icmp slt i64 %t3181, 0
  %fz3183 = icmp eq i64 %t3181, 0
  %fc3184 = icmp uge i64 %r3180, 0
  %fx13185 = xor i64 %r3180, 0
  %fx23186 = xor i64 %r3180, %t3181
  %fva3187 = and i64 %fx13185, %fx23186
  %fv3188 = icmp slt i64 %fva3187, 0
  %nz3189 = zext i1 %fn3182 to i64
  %zz3190 = zext i1 %fz3183 to i64
  %cz3191 = zext i1 %fc3184 to i64
  %vz3192 = zext i1 %fv3188 to i64
  %ns3193 = shl i64 %nz3189, 31
  %zs3194 = shl i64 %zz3190, 30
  %cs3195 = shl i64 %cz3191, 29
  %vs3196 = shl i64 %vz3192, 28
  %nzor3197 = or i64 %ns3193, %zs3194
  %cvor3198 = or i64 %cs3195, %vs3196
  %nzcv3199 = or i64 %nzor3197, %cvor3198
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3199, ptr %wp3200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e4c word 0xf9400d8d
  %r3201.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3201 = load i64, ptr %r3201.p, align 8, !alias.scope !3, !noalias !4
  %t3202 = add i64 %r3201, 24
  %gmp3203 = inttoptr i64 %t3202 to ptr
  %gml3204 = load i64, ptr %gmp3203, align 1, !alias.scope !4, !noalias !3
  %wp3205 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3204, ptr %wp3205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e50 word 0x9a88018e
  %r3206.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3206 = load i64, ptr %r3206.p, align 8, !alias.scope !3, !noalias !4
  %r3207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3207 = load i64, ptr %r3207.p, align 8, !alias.scope !3, !noalias !4
  %r3208.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3208 = load i64, ptr %r3208.p, align 8, !alias.scope !3, !noalias !4
  %fsh3210 = lshr i64 %r3208, 30
  %cond3209 = trunc i64 %fsh3210 to i1
  %sel3211 = select i1 %cond3209, i64 %r3206, i64 %r3207
  %wp3212 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %sel3211, ptr %wp3212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e54 word 0x8b0a018c
  %r3213.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3213 = load i64, ptr %r3213.p, align 8, !alias.scope !3, !noalias !4
  %r3214.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3214 = load i64, ptr %r3214.p, align 8, !alias.scope !3, !noalias !4
  %t3215 = add i64 %r3213, %r3214
  %wp3216 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3215, ptr %wp3216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e58 word 0xf940058c
  %r3217.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3217 = load i64, ptr %r3217.p, align 8, !alias.scope !3, !noalias !4
  %t3218 = add i64 %r3217, 8
  %gmp3219 = inttoptr i64 %t3218 to ptr
  %gml3220 = load i64, ptr %gmp3219, align 1, !alias.scope !4, !noalias !3
  %wp3221 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3220, ptr %wp3221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e5c word 0xeb1701bf
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %r3223.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3223 = load i64, ptr %r3223.p, align 8, !alias.scope !3, !noalias !4
  %t3224 = sub i64 %r3222, %r3223
  %fn3225 = icmp slt i64 %t3224, 0
  %fz3226 = icmp eq i64 %t3224, 0
  %fc3227 = icmp uge i64 %r3222, %r3223
  %fx13228 = xor i64 %r3222, %r3223
  %fx23229 = xor i64 %r3222, %t3224
  %fva3230 = and i64 %fx13228, %fx23229
  %fv3231 = icmp slt i64 %fva3230, 0
  %nz3232 = zext i1 %fn3225 to i64
  %zz3233 = zext i1 %fz3226 to i64
  %cz3234 = zext i1 %fc3227 to i64
  %vz3235 = zext i1 %fv3231 to i64
  %ns3236 = shl i64 %nz3232, 31
  %zs3237 = shl i64 %zz3233, 30
  %cs3238 = shl i64 %cz3234, 29
  %vs3239 = shl i64 %vz3235, 28
  %nzor3240 = or i64 %ns3236, %zs3237
  %cvor3241 = or i64 %cs3238, %vs3239
  %nzcv3242 = or i64 %nzor3240, %cvor3241
  %wp3243 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3242, ptr %wp3243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e60 word 0x9a8e3108
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %fsh3248 = lshr i64 %r3246, 29
  %ftr3249 = trunc i64 %fsh3248 to i1
  %cond3247 = xor i1 %ftr3249, true
  %sel3250 = select i1 %cond3247, i64 %r3244, i64 %r3245
  %wp3251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3250, ptr %wp3251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e64 word 0x8b09018c
  %r3252.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3252 = load i64, ptr %r3252.p, align 8, !alias.scope !3, !noalias !4
  %r3253.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3253 = load i64, ptr %r3253.p, align 8, !alias.scope !3, !noalias !4
  %t3254 = add i64 %r3252, %r3253
  %wp3255 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3254, ptr %wp3255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e68 word 0xeb0b019f
  %r3256.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3256 = load i64, ptr %r3256.p, align 8, !alias.scope !3, !noalias !4
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = sub i64 %r3256, %r3257
  %fn3259 = icmp slt i64 %t3258, 0
  %fz3260 = icmp eq i64 %t3258, 0
  %fc3261 = icmp uge i64 %r3256, %r3257
  %fx13262 = xor i64 %r3256, %r3257
  %fx23263 = xor i64 %r3256, %t3258
  %fva3264 = and i64 %fx13262, %fx23263
  %fv3265 = icmp slt i64 %fva3264, 0
  %nz3266 = zext i1 %fn3259 to i64
  %zz3267 = zext i1 %fz3260 to i64
  %cz3268 = zext i1 %fc3261 to i64
  %vz3269 = zext i1 %fv3265 to i64
  %ns3270 = shl i64 %nz3266, 31
  %zs3271 = shl i64 %zz3267, 30
  %cs3272 = shl i64 %cz3268, 29
  %vs3273 = shl i64 %vz3269, 28
  %nzor3274 = or i64 %ns3270, %zs3271
  %cvor3275 = or i64 %cs3272, %vs3273
  %nzcv3276 = or i64 %nzor3274, %cvor3275
  %wp3277 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3276, ptr %wp3277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e6c word 0x54fffee1
  %r3278.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3278 = load i64, ptr %r3278.p, align 8, !alias.scope !3, !noalias !4
  %fsh3280 = lshr i64 %r3278, 30
  %ftr3281 = trunc i64 %fsh3280 to i1
  %cond3279 = xor i1 %ftr3281, true
  br i1 %cond3279, label %L_8001a1e48, label %L_8001a1e70_ft
L_8001a1e74:
  ; @pc 0x8001a1e74 word 0x8b0a0108
  %r3282.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3282 = load i64, ptr %r3282.p, align 8, !alias.scope !3, !noalias !4
  %r3283.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3283 = load i64, ptr %r3283.p, align 8, !alias.scope !3, !noalias !4
  %t3284 = add i64 %r3282, %r3283
  %wp3285 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3284, ptr %wp3285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e78 word 0xf9400508
  %r3286.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3286 = load i64, ptr %r3286.p, align 8, !alias.scope !3, !noalias !4
  %t3287 = add i64 %r3286, 8
  %gmp3288 = inttoptr i64 %t3287 to ptr
  %gml3289 = load i64, ptr %gmp3288, align 1, !alias.scope !4, !noalias !3
  %wp3290 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3289, ptr %wp3290, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e7c word 0x8b090108
  %r3291.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3291 = load i64, ptr %r3291.p, align 8, !alias.scope !3, !noalias !4
  %r3292.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3292 = load i64, ptr %r3292.p, align 8, !alias.scope !3, !noalias !4
  %t3293 = add i64 %r3291, %r3292
  %wp3294 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3293, ptr %wp3294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e80 word 0xeb0b011f
  %r3295.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3295 = load i64, ptr %r3295.p, align 8, !alias.scope !3, !noalias !4
  %r3296.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3296 = load i64, ptr %r3296.p, align 8, !alias.scope !3, !noalias !4
  %t3297 = sub i64 %r3295, %r3296
  %fn3298 = icmp slt i64 %t3297, 0
  %fz3299 = icmp eq i64 %t3297, 0
  %fc3300 = icmp uge i64 %r3295, %r3296
  %fx13301 = xor i64 %r3295, %r3296
  %fx23302 = xor i64 %r3295, %t3297
  %fva3303 = and i64 %fx13301, %fx23302
  %fv3304 = icmp slt i64 %fva3303, 0
  %nz3305 = zext i1 %fn3298 to i64
  %zz3306 = zext i1 %fz3299 to i64
  %cz3307 = zext i1 %fc3300 to i64
  %vz3308 = zext i1 %fv3304 to i64
  %ns3309 = shl i64 %nz3305, 31
  %zs3310 = shl i64 %zz3306, 30
  %cs3311 = shl i64 %cz3307, 29
  %vs3312 = shl i64 %vz3308, 28
  %nzor3313 = or i64 %ns3309, %zs3310
  %cvor3314 = or i64 %cs3311, %vs3312
  %nzcv3315 = or i64 %nzor3313, %cvor3314
  %wp3316 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3315, ptr %wp3316, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e84 word 0x54ffd5e1
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %fsh3319 = lshr i64 %r3317, 30
  %ftr3320 = trunc i64 %fsh3319 to i1
  %cond3318 = xor i1 %ftr3320, true
  br i1 %cond3318, label %L_8001a1940, label %L_8001a1e88
L_8001a1e88:
  ; @pc 0x8001a1e88 word 0xb90007ef
  %r3321.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3321 = load i64, ptr %r3321.p, align 8, !alias.scope !3, !noalias !4
  %t3322 = add i64 %r3321, 4
  %r3323.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3323 = load i64, ptr %r3323.p, align 8, !alias.scope !3, !noalias !4
  %c3324 = trunc i64 %r3323 to i32
  %gmp3325 = inttoptr i64 %t3322 to ptr
  store i32 %c3324, ptr %gmp3325, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1e8c
L_8001a1e8c:
  ; @pc 0x8001a1e8c word 0xb4000079
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %cmp3327 = icmp eq i64 %r3326, 0
  br i1 %cmp3327, label %L_8001a1e98, label %L_8001a1e90_ft
L_8001a1e98:
  ; @pc 0x8001a1e98 word 0xaa1f03f8
  %t3335 = or i64 0, 0
  %wp3336 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3335, ptr %wp3336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e9c word 0x17fffe84
  br label %L_8001a18ac
L_8001a1ea0:
  ; @pc 0x8001a1ea0 word 0xb4fff4d9
  %r3337.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3337 = load i64, ptr %r3337.p, align 8, !alias.scope !3, !noalias !4
  %cmp3338 = icmp eq i64 %r3337, 0
  br i1 %cmp3338, label %L_8001a1d38, label %L_8001a1ea4_ft
L_8001a1ec0:
  ; @pc 0x8001a1ec0 word 0x7100061f
  %r3367.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3367 = load i64, ptr %r3367.p, align 8, !alias.scope !3, !noalias !4
  %c3368 = trunc i64 %r3367 to i32
  %t3369 = sub i32 %c3368, 1
  %fn3370 = icmp slt i32 %t3369, 0
  %fz3371 = icmp eq i32 %t3369, 0
  %fc3372 = icmp uge i32 %c3368, 1
  %fx13373 = xor i32 %c3368, 1
  %fx23374 = xor i32 %c3368, %t3369
  %fva3375 = and i32 %fx13373, %fx23374
  %fv3376 = icmp slt i32 %fva3375, 0
  %nz3377 = zext i1 %fn3370 to i64
  %zz3378 = zext i1 %fz3371 to i64
  %cz3379 = zext i1 %fc3372 to i64
  %vz3380 = zext i1 %fv3376 to i64
  %ns3381 = shl i64 %nz3377, 31
  %zs3382 = shl i64 %zz3378, 30
  %cs3383 = shl i64 %cz3379, 29
  %vs3384 = shl i64 %vz3380, 28
  %nzor3385 = or i64 %ns3381, %zs3382
  %cvor3386 = or i64 %cs3383, %vs3384
  %nzcv3387 = or i64 %nzor3385, %cvor3386
  %wp3388 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3387, ptr %wp3388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ec4 word 0xb90007ef
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %t3390 = add i64 %r3389, 4
  %r3391.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3391 = load i64, ptr %r3391.p, align 8, !alias.scope !3, !noalias !4
  %c3392 = trunc i64 %r3391 to i32
  %gmp3393 = inttoptr i64 %t3390 to ptr
  store i32 %c3392, ptr %gmp3393, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1ec8 word 0x54000501
  %r3394.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3394 = load i64, ptr %r3394.p, align 8, !alias.scope !3, !noalias !4
  %fsh3396 = lshr i64 %r3394, 30
  %ftr3397 = trunc i64 %fsh3396 to i1
  %cond3395 = xor i1 %ftr3397, true
  br i1 %cond3395, label %L_8001a1f68, label %L_8001a1ecc_ft
L_8001a1ed0:
  ; @pc 0x8001a1ed0 word 0xf9400d8f
  %r3400.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3400 = load i64, ptr %r3400.p, align 8, !alias.scope !3, !noalias !4
  %t3401 = add i64 %r3400, 24
  %gmp3402 = inttoptr i64 %t3401 to ptr
  %gml3403 = load i64, ptr %gmp3402, align 1, !alias.scope !4, !noalias !3
  %wp3404 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3403, ptr %wp3404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ed4 word 0xeb1701ff
  %r3405.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3405 = load i64, ptr %r3405.p, align 8, !alias.scope !3, !noalias !4
  %r3406.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3406 = load i64, ptr %r3406.p, align 8, !alias.scope !3, !noalias !4
  %t3407 = sub i64 %r3405, %r3406
  %fn3408 = icmp slt i64 %t3407, 0
  %fz3409 = icmp eq i64 %t3407, 0
  %fc3410 = icmp uge i64 %r3405, %r3406
  %fx13411 = xor i64 %r3405, %r3406
  %fx23412 = xor i64 %r3405, %t3407
  %fva3413 = and i64 %fx13411, %fx23412
  %fv3414 = icmp slt i64 %fva3413, 0
  %nz3415 = zext i1 %fn3408 to i64
  %zz3416 = zext i1 %fz3409 to i64
  %cz3417 = zext i1 %fc3410 to i64
  %vz3418 = zext i1 %fv3414 to i64
  %ns3419 = shl i64 %nz3415, 31
  %zs3420 = shl i64 %zz3416, 30
  %cs3421 = shl i64 %cz3417, 29
  %vs3422 = shl i64 %vz3418, 28
  %nzor3423 = or i64 %ns3419, %zs3420
  %cvor3424 = or i64 %cs3421, %vs3422
  %nzcv3425 = or i64 %nzor3423, %cvor3424
  %wp3426 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3425, ptr %wp3426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ed8 word 0x540000e2
  %r3427.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3427 = load i64, ptr %r3427.p, align 8, !alias.scope !3, !noalias !4
  %fsh3429 = lshr i64 %r3427, 29
  %cond3428 = trunc i64 %fsh3429 to i1
  br i1 %cond3428, label %L_8001a1ef4, label %L_8001a1edc
L_8001a1edc:
  ; @pc 0x8001a1edc word 0x8b0a018c
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %r3431.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3431 = load i64, ptr %r3431.p, align 8, !alias.scope !3, !noalias !4
  %t3432 = add i64 %r3430, %r3431
  %wp3433 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3432, ptr %wp3433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ee0 word 0xf940058c
  %r3434.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3434 = load i64, ptr %r3434.p, align 8, !alias.scope !3, !noalias !4
  %t3435 = add i64 %r3434, 8
  %gmp3436 = inttoptr i64 %t3435 to ptr
  %gml3437 = load i64, ptr %gmp3436, align 1, !alias.scope !4, !noalias !3
  %wp3438 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3437, ptr %wp3438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ee4 word 0x8b09018c
  %r3439.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3439 = load i64, ptr %r3439.p, align 8, !alias.scope !3, !noalias !4
  %r3440.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3440 = load i64, ptr %r3440.p, align 8, !alias.scope !3, !noalias !4
  %t3441 = add i64 %r3439, %r3440
  %wp3442 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3441, ptr %wp3442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ee8 word 0xeb0b019f
  %r3443.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3443 = load i64, ptr %r3443.p, align 8, !alias.scope !3, !noalias !4
  %r3444.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3444 = load i64, ptr %r3444.p, align 8, !alias.scope !3, !noalias !4
  %t3445 = sub i64 %r3443, %r3444
  %fn3446 = icmp slt i64 %t3445, 0
  %fz3447 = icmp eq i64 %t3445, 0
  %fc3448 = icmp uge i64 %r3443, %r3444
  %fx13449 = xor i64 %r3443, %r3444
  %fx23450 = xor i64 %r3443, %t3445
  %fva3451 = and i64 %fx13449, %fx23450
  %fv3452 = icmp slt i64 %fva3451, 0
  %nz3453 = zext i1 %fn3446 to i64
  %zz3454 = zext i1 %fz3447 to i64
  %cz3455 = zext i1 %fc3448 to i64
  %vz3456 = zext i1 %fv3452 to i64
  %ns3457 = shl i64 %nz3453, 31
  %zs3458 = shl i64 %zz3454, 30
  %cs3459 = shl i64 %cz3455, 29
  %vs3460 = shl i64 %vz3456, 28
  %nzor3461 = or i64 %ns3457, %zs3458
  %cvor3462 = or i64 %cs3459, %vs3460
  %nzcv3463 = or i64 %nzor3461, %cvor3462
  %wp3464 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3463, ptr %wp3464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1eec word 0x54ffff21
  %r3465.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3465 = load i64, ptr %r3465.p, align 8, !alias.scope !3, !noalias !4
  %fsh3467 = lshr i64 %r3465, 30
  %ftr3468 = trunc i64 %fsh3467 to i1
  %cond3466 = xor i1 %ftr3468, true
  br i1 %cond3466, label %L_8001a1ed0, label %L_8001a1ef0_ft
L_8001a1ef4:
  ; @pc 0x8001a1ef4 word 0x79402590
  %r3469.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3469 = load i64, ptr %r3469.p, align 8, !alias.scope !3, !noalias !4
  %t3470 = add i64 %r3469, 18
  %gmp3471 = inttoptr i64 %t3470 to ptr
  %gml3472 = load i16, ptr %gmp3471, align 1, !alias.scope !4, !noalias !3
  %c3473 = zext i16 %gml3472 to i64
  %wp3474 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3473, ptr %wp3474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ef8 word 0x8b100190
  %r3475.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3475 = load i64, ptr %r3475.p, align 8, !alias.scope !3, !noalias !4
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %t3477 = add i64 %r3475, %r3476
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1efc word 0x91008210
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %t3480 = add i64 %r3479, 32
  %wp3481 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3480, ptr %wp3481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f00 word 0x8b0d0211
  %r3482.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3482 = load i64, ptr %r3482.p, align 8, !alias.scope !3, !noalias !4
  %r3483.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3483 = load i64, ptr %r3483.p, align 8, !alias.scope !3, !noalias !4
  %t3484 = add i64 %r3482, %r3483
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f04 word 0xcb1002f0
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %r3487.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3487 = load i64, ptr %r3487.p, align 8, !alias.scope !3, !noalias !4
  %t3488 = sub i64 %r3486, %r3487
  %wp3489 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3488, ptr %wp3489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f08 word 0x8a0e0231
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %r3491.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3491 = load i64, ptr %r3491.p, align 8, !alias.scope !3, !noalias !4
  %t3492 = and i64 %r3491, %r3490
  %wp3493 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3492, ptr %wp3493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f0c word 0x8b110210
  %r3494.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3494 = load i64, ptr %r3494.p, align 8, !alias.scope !3, !noalias !4
  %r3495.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3495 = load i64, ptr %r3495.p, align 8, !alias.scope !3, !noalias !4
  %t3496 = add i64 %r3494, %r3495
  %wp3497 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3496, ptr %wp3497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f10 word 0xeb1001ff
  %r3498.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3498 = load i64, ptr %r3498.p, align 8, !alias.scope !3, !noalias !4
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %t3500 = sub i64 %r3498, %r3499
  %fn3501 = icmp slt i64 %t3500, 0
  %fz3502 = icmp eq i64 %t3500, 0
  %fc3503 = icmp uge i64 %r3498, %r3499
  %fx13504 = xor i64 %r3498, %r3499
  %fx23505 = xor i64 %r3498, %t3500
  %fva3506 = and i64 %fx13504, %fx23505
  %fv3507 = icmp slt i64 %fva3506, 0
  %nz3508 = zext i1 %fn3501 to i64
  %zz3509 = zext i1 %fz3502 to i64
  %cz3510 = zext i1 %fc3503 to i64
  %vz3511 = zext i1 %fv3507 to i64
  %ns3512 = shl i64 %nz3508, 31
  %zs3513 = shl i64 %zz3509, 30
  %cs3514 = shl i64 %cz3510, 29
  %vs3515 = shl i64 %vz3511, 28
  %nzor3516 = or i64 %ns3512, %zs3513
  %cvor3517 = or i64 %cs3514, %vs3515
  %nzcv3518 = or i64 %nzor3516, %cvor3517
  %wp3519 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3518, ptr %wp3519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f14 word 0x54fffe43
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3520 = load i64, ptr %r3520.p, align 8, !alias.scope !3, !noalias !4
  %fsh3522 = lshr i64 %r3520, 29
  %ftr3523 = trunc i64 %fsh3522 to i1
  %cond3521 = xor i1 %ftr3523, true
  br i1 %cond3521, label %L_8001a1edc, label %L_8001a1f18_ft
L_8001a1f28:
  ; @pc 0x8001a1f28 word 0xaa0c03e8
  %r3561.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3561 = load i64, ptr %r3561.p, align 8, !alias.scope !3, !noalias !4
  %t3562 = or i64 0, %r3561
  %wp3563 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3562, ptr %wp3563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f2c word 0x17ffffec
  br label %L_8001a1edc
L_8001a1f30:
  ; @pc 0x8001a1f30 word 0xd100812a
  %r3564.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3564 = load i64, ptr %r3564.p, align 8, !alias.scope !3, !noalias !4
  %t3565 = sub i64 %r3564, 32
  %wp3566 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3565, ptr %wp3566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f34 word 0x7900251f
  %r3567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3567 = load i64, ptr %r3567.p, align 8, !alias.scope !3, !noalias !4
  %t3568 = add i64 %r3567, 18
  %c3569 = trunc i32 0 to i16
  %gmp3570 = inttoptr i64 %t3568 to ptr
  store i16 %c3569, ptr %gmp3570, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1f38 word 0xf9000d0a
  %r3571.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3571 = load i64, ptr %r3571.p, align 8, !alias.scope !3, !noalias !4
  %t3572 = add i64 %r3571, 24
  %r3573.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3573 = load i64, ptr %r3573.p, align 8, !alias.scope !3, !noalias !4
  %gmp3574 = inttoptr i64 %t3572 to ptr
  store i64 %r3573, ptr %gmp3574, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1f3c word 0x8b080128
  %r3575.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3575 = load i64, ptr %r3575.p, align 8, !alias.scope !3, !noalias !4
  %r3576.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3576 = load i64, ptr %r3576.p, align 8, !alias.scope !3, !noalias !4
  %t3577 = add i64 %r3575, %r3576
  %wp3578 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3577, ptr %wp3578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f40 word 0xb900111f
  %r3579.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3579 = load i64, ptr %r3579.p, align 8, !alias.scope !3, !noalias !4
  %t3580 = add i64 %r3579, 16
  %gmp3581 = inttoptr i64 %t3580 to ptr
  store i32 0, ptr %gmp3581, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1f44 word 0xf9000d17
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = add i64 %r3582, 24
  %r3584.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3584 = load i64, ptr %r3584.p, align 8, !alias.scope !3, !noalias !4
  %gmp3585 = inttoptr i64 %t3583 to ptr
  store i64 %r3584, ptr %gmp3585, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1f48 word 0xa9007d1f
  %r3586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3586 = load i64, ptr %r3586.p, align 8, !alias.scope !3, !noalias !4
  %t3587 = add i64 %r3586, 8
  %gmp3588 = inttoptr i64 %r3586 to ptr
  store i64 0, ptr %gmp3588, align 1, !alias.scope !4, !noalias !3
  %gmp3589 = inttoptr i64 %t3587 to ptr
  store i64 0, ptr %gmp3589, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1f4c word 0x17fffeab
  br label %L_8001a19f8
L_8001a1f50:
  ; @pc 0x8001a1f50 word 0xaa0803fa
  %r3590.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3590 = load i64, ptr %r3590.p, align 8, !alias.scope !3, !noalias !4
  %t3591 = or i64 0, %r3590
  %wp3592 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3591, ptr %wp3592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f54 word 0xaa0c03fb
  %r3593.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3593 = load i64, ptr %r3593.p, align 8, !alias.scope !3, !noalias !4
  %t3594 = or i64 0, %r3593
  %wp3595 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3594, ptr %wp3595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f58 word 0x94981f4c
  %wp3596 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361450332, ptr %wp3596, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x8001a1f5c word 0xaa1b03ec
  %r3597.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3597 = load i64, ptr %r3597.p, align 8, !alias.scope !3, !noalias !4
  %t3598 = or i64 0, %r3597
  %wp3599 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3598, ptr %wp3599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f60 word 0xaa1a03e8
  %r3600.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3600 = load i64, ptr %r3600.p, align 8, !alias.scope !3, !noalias !4
  %t3601 = or i64 0, %r3600
  %wp3602 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3601, ptr %wp3602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f64 word 0x17fffeb1
  br label %L_8001a1a28
L_8001a1f68:
  ; @pc 0x8001a1f68 word 0x71000a1f
  %r3603.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3603 = load i64, ptr %r3603.p, align 8, !alias.scope !3, !noalias !4
  %c3604 = trunc i64 %r3603 to i32
  %t3605 = sub i32 %c3604, 2
  %fn3606 = icmp slt i32 %t3605, 0
  %fz3607 = icmp eq i32 %t3605, 0
  %fc3608 = icmp uge i32 %c3604, 2
  %fx13609 = xor i32 %c3604, 2
  %fx23610 = xor i32 %c3604, %t3605
  %fva3611 = and i32 %fx13609, %fx23610
  %fv3612 = icmp slt i32 %fva3611, 0
  %nz3613 = zext i1 %fn3606 to i64
  %zz3614 = zext i1 %fz3607 to i64
  %cz3615 = zext i1 %fc3608 to i64
  %vz3616 = zext i1 %fv3612 to i64
  %ns3617 = shl i64 %nz3613, 31
  %zs3618 = shl i64 %zz3614, 30
  %cs3619 = shl i64 %cz3615, 29
  %vs3620 = shl i64 %vz3616, 28
  %nzor3621 = or i64 %ns3617, %zs3618
  %cvor3622 = or i64 %cs3619, %vs3620
  %nzcv3623 = or i64 %nzor3621, %cvor3622
  %wp3624 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3623, ptr %wp3624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f6c word 0x540005e1
  %r3625.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3625 = load i64, ptr %r3625.p, align 8, !alias.scope !3, !noalias !4
  %fsh3627 = lshr i64 %r3625, 30
  %ftr3628 = trunc i64 %fsh3627 to i1
  %cond3626 = xor i1 %ftr3628, true
  br i1 %cond3626, label %L_8001a2028, label %L_8001a1f70_ft
L_8001a1f74:
  ; @pc 0x8001a1f74 word 0xf9400d8f
  %r3631.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3631 = load i64, ptr %r3631.p, align 8, !alias.scope !3, !noalias !4
  %t3632 = add i64 %r3631, 24
  %gmp3633 = inttoptr i64 %t3632 to ptr
  %gml3634 = load i64, ptr %gmp3633, align 1, !alias.scope !4, !noalias !3
  %wp3635 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3634, ptr %wp3635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f78 word 0xeb1701ff
  %r3636.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3636 = load i64, ptr %r3636.p, align 8, !alias.scope !3, !noalias !4
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %t3638 = sub i64 %r3636, %r3637
  %fn3639 = icmp slt i64 %t3638, 0
  %fz3640 = icmp eq i64 %t3638, 0
  %fc3641 = icmp uge i64 %r3636, %r3637
  %fx13642 = xor i64 %r3636, %r3637
  %fx23643 = xor i64 %r3636, %t3638
  %fva3644 = and i64 %fx13642, %fx23643
  %fv3645 = icmp slt i64 %fva3644, 0
  %nz3646 = zext i1 %fn3639 to i64
  %zz3647 = zext i1 %fz3640 to i64
  %cz3648 = zext i1 %fc3641 to i64
  %vz3649 = zext i1 %fv3645 to i64
  %ns3650 = shl i64 %nz3646, 31
  %zs3651 = shl i64 %zz3647, 30
  %cs3652 = shl i64 %cz3648, 29
  %vs3653 = shl i64 %vz3649, 28
  %nzor3654 = or i64 %ns3650, %zs3651
  %cvor3655 = or i64 %cs3652, %vs3653
  %nzcv3656 = or i64 %nzor3654, %cvor3655
  %wp3657 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3656, ptr %wp3657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f7c word 0x540000e2
  %r3658.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3658 = load i64, ptr %r3658.p, align 8, !alias.scope !3, !noalias !4
  %fsh3660 = lshr i64 %r3658, 29
  %cond3659 = trunc i64 %fsh3660 to i1
  br i1 %cond3659, label %L_8001a1f98, label %L_8001a1f80
L_8001a1f80:
  ; @pc 0x8001a1f80 word 0x8b0a018c
  %r3661.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3661 = load i64, ptr %r3661.p, align 8, !alias.scope !3, !noalias !4
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %t3663 = add i64 %r3661, %r3662
  %wp3664 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3663, ptr %wp3664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f84 word 0xf940058c
  %r3665.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3665 = load i64, ptr %r3665.p, align 8, !alias.scope !3, !noalias !4
  %t3666 = add i64 %r3665, 8
  %gmp3667 = inttoptr i64 %t3666 to ptr
  %gml3668 = load i64, ptr %gmp3667, align 1, !alias.scope !4, !noalias !3
  %wp3669 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3668, ptr %wp3669, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f88 word 0x8b09018c
  %r3670.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3670 = load i64, ptr %r3670.p, align 8, !alias.scope !3, !noalias !4
  %r3671.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3671 = load i64, ptr %r3671.p, align 8, !alias.scope !3, !noalias !4
  %t3672 = add i64 %r3670, %r3671
  %wp3673 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3672, ptr %wp3673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f8c word 0xeb0b019f
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %t3676 = sub i64 %r3674, %r3675
  %fn3677 = icmp slt i64 %t3676, 0
  %fz3678 = icmp eq i64 %t3676, 0
  %fc3679 = icmp uge i64 %r3674, %r3675
  %fx13680 = xor i64 %r3674, %r3675
  %fx23681 = xor i64 %r3674, %t3676
  %fva3682 = and i64 %fx13680, %fx23681
  %fv3683 = icmp slt i64 %fva3682, 0
  %nz3684 = zext i1 %fn3677 to i64
  %zz3685 = zext i1 %fz3678 to i64
  %cz3686 = zext i1 %fc3679 to i64
  %vz3687 = zext i1 %fv3683 to i64
  %ns3688 = shl i64 %nz3684, 31
  %zs3689 = shl i64 %zz3685, 30
  %cs3690 = shl i64 %cz3686, 29
  %vs3691 = shl i64 %vz3687, 28
  %nzor3692 = or i64 %ns3688, %zs3689
  %cvor3693 = or i64 %cs3690, %vs3691
  %nzcv3694 = or i64 %nzor3692, %cvor3693
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3694, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f90 word 0x54ffff21
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %fsh3698 = lshr i64 %r3696, 30
  %ftr3699 = trunc i64 %fsh3698 to i1
  %cond3697 = xor i1 %ftr3699, true
  br i1 %cond3697, label %L_8001a1f74, label %L_8001a1f94_ft
L_8001a1f98:
  ; @pc 0x8001a1f98 word 0x79402590
  %r3700.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3700 = load i64, ptr %r3700.p, align 8, !alias.scope !3, !noalias !4
  %t3701 = add i64 %r3700, 18
  %gmp3702 = inttoptr i64 %t3701 to ptr
  %gml3703 = load i16, ptr %gmp3702, align 1, !alias.scope !4, !noalias !3
  %c3704 = zext i16 %gml3703 to i64
  %wp3705 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3704, ptr %wp3705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f9c word 0x8b100190
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %r3707.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3707 = load i64, ptr %r3707.p, align 8, !alias.scope !3, !noalias !4
  %t3708 = add i64 %r3706, %r3707
  %wp3709 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3708, ptr %wp3709, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fa0 word 0x91008210
  %r3710.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3710 = load i64, ptr %r3710.p, align 8, !alias.scope !3, !noalias !4
  %t3711 = add i64 %r3710, 32
  %wp3712 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3711, ptr %wp3712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fa4 word 0x8b0d0211
  %r3713.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3713 = load i64, ptr %r3713.p, align 8, !alias.scope !3, !noalias !4
  %r3714.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3714 = load i64, ptr %r3714.p, align 8, !alias.scope !3, !noalias !4
  %t3715 = add i64 %r3713, %r3714
  %wp3716 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3715, ptr %wp3716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fa8 word 0xcb1002f0
  %r3717.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3717 = load i64, ptr %r3717.p, align 8, !alias.scope !3, !noalias !4
  %r3718.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3718 = load i64, ptr %r3718.p, align 8, !alias.scope !3, !noalias !4
  %t3719 = sub i64 %r3717, %r3718
  %wp3720 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3719, ptr %wp3720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fac word 0x8a0e0231
  %r3721.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3721 = load i64, ptr %r3721.p, align 8, !alias.scope !3, !noalias !4
  %r3722.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3722 = load i64, ptr %r3722.p, align 8, !alias.scope !3, !noalias !4
  %t3723 = and i64 %r3722, %r3721
  %wp3724 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3723, ptr %wp3724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fb0 word 0x8b110210
  %r3725.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3725 = load i64, ptr %r3725.p, align 8, !alias.scope !3, !noalias !4
  %r3726.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3726 = load i64, ptr %r3726.p, align 8, !alias.scope !3, !noalias !4
  %t3727 = add i64 %r3725, %r3726
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3727, ptr %wp3728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fb4 word 0xeb1001ff
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %r3730.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3730 = load i64, ptr %r3730.p, align 8, !alias.scope !3, !noalias !4
  %t3731 = sub i64 %r3729, %r3730
  %fn3732 = icmp slt i64 %t3731, 0
  %fz3733 = icmp eq i64 %t3731, 0
  %fc3734 = icmp uge i64 %r3729, %r3730
  %fx13735 = xor i64 %r3729, %r3730
  %fx23736 = xor i64 %r3729, %t3731
  %fva3737 = and i64 %fx13735, %fx23736
  %fv3738 = icmp slt i64 %fva3737, 0
  %nz3739 = zext i1 %fn3732 to i64
  %zz3740 = zext i1 %fz3733 to i64
  %cz3741 = zext i1 %fc3734 to i64
  %vz3742 = zext i1 %fv3738 to i64
  %ns3743 = shl i64 %nz3739, 31
  %zs3744 = shl i64 %zz3740, 30
  %cs3745 = shl i64 %cz3741, 29
  %vs3746 = shl i64 %vz3742, 28
  %nzor3747 = or i64 %ns3743, %zs3744
  %cvor3748 = or i64 %cs3745, %vs3746
  %nzcv3749 = or i64 %nzor3747, %cvor3748
  %wp3750 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3749, ptr %wp3750, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fb8 word 0x54fffe43
  %r3751.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3751 = load i64, ptr %r3751.p, align 8, !alias.scope !3, !noalias !4
  %fsh3753 = lshr i64 %r3751, 29
  %ftr3754 = trunc i64 %fsh3753 to i1
  %cond3752 = xor i1 %ftr3754, true
  br i1 %cond3752, label %L_8001a1f80, label %L_8001a1fbc_ft
L_8001a1fcc:
  ; @pc 0x8001a1fcc word 0xaa0c03e8
  %r3787.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3787 = load i64, ptr %r3787.p, align 8, !alias.scope !3, !noalias !4
  %t3788 = or i64 0, %r3787
  %wp3789 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3788, ptr %wp3789, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fd0 word 0x17ffffec
  br label %L_8001a1f80
L_8001a1fd4:
  ; @pc 0x8001a1fd4 word 0xeb1c037f
  %r3790.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3790 = load i64, ptr %r3790.p, align 8, !alias.scope !3, !noalias !4
  %r3791.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3791 = load i64, ptr %r3791.p, align 8, !alias.scope !3, !noalias !4
  %t3792 = sub i64 %r3790, %r3791
  %fn3793 = icmp slt i64 %t3792, 0
  %fz3794 = icmp eq i64 %t3792, 0
  %fc3795 = icmp uge i64 %r3790, %r3791
  %fx13796 = xor i64 %r3790, %r3791
  %fx23797 = xor i64 %r3790, %t3792
  %fva3798 = and i64 %fx13796, %fx23797
  %fv3799 = icmp slt i64 %fva3798, 0
  %nz3800 = zext i1 %fn3793 to i64
  %zz3801 = zext i1 %fz3794 to i64
  %cz3802 = zext i1 %fc3795 to i64
  %vz3803 = zext i1 %fv3799 to i64
  %ns3804 = shl i64 %nz3800, 31
  %zs3805 = shl i64 %zz3801, 30
  %cs3806 = shl i64 %cz3802, 29
  %vs3807 = shl i64 %vz3803, 28
  %nzor3808 = or i64 %ns3804, %zs3805
  %cvor3809 = or i64 %cs3806, %vs3807
  %nzcv3810 = or i64 %nzor3808, %cvor3809
  %wp3811 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3810, ptr %wp3811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fd8 word 0x54ffe4e2
  %r3812.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3812 = load i64, ptr %r3812.p, align 8, !alias.scope !3, !noalias !4
  %fsh3814 = lshr i64 %r3812, 29
  %cond3813 = trunc i64 %fsh3814 to i1
  br i1 %cond3813, label %L_8001a1c74, label %L_8001a1fdc_ft
L_8001a2020:
  ; @pc 0x8001a2020 word 0xaa1f03f7
  %t3901 = or i64 0, 0
  %wp3902 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3901, ptr %wp3902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2024 word 0x17fffebb
  br label %L_8001a1b10
L_8001a2028:
  ; @pc 0x8001a2028 word 0xaa1f03e8
  %t3903 = or i64 0, 0
  %wp3904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3903, ptr %wp3904, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a202c
L_8001a202c:
  ; @pc 0x8001a202c word 0xf9400d8f
  %r3905.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3905 = load i64, ptr %r3905.p, align 8, !alias.scope !3, !noalias !4
  %t3906 = add i64 %r3905, 24
  %gmp3907 = inttoptr i64 %t3906 to ptr
  %gml3908 = load i64, ptr %gmp3907, align 1, !alias.scope !4, !noalias !3
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3908, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2030 word 0xeb1701ff
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %r3911.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3911 = load i64, ptr %r3911.p, align 8, !alias.scope !3, !noalias !4
  %t3912 = sub i64 %r3910, %r3911
  %fn3913 = icmp slt i64 %t3912, 0
  %fz3914 = icmp eq i64 %t3912, 0
  %fc3915 = icmp uge i64 %r3910, %r3911
  %fx13916 = xor i64 %r3910, %r3911
  %fx23917 = xor i64 %r3910, %t3912
  %fva3918 = and i64 %fx13916, %fx23917
  %fv3919 = icmp slt i64 %fva3918, 0
  %nz3920 = zext i1 %fn3913 to i64
  %zz3921 = zext i1 %fz3914 to i64
  %cz3922 = zext i1 %fc3915 to i64
  %vz3923 = zext i1 %fv3919 to i64
  %ns3924 = shl i64 %nz3920, 31
  %zs3925 = shl i64 %zz3921, 30
  %cs3926 = shl i64 %cz3922, 29
  %vs3927 = shl i64 %vz3923, 28
  %nzor3928 = or i64 %ns3924, %zs3925
  %cvor3929 = or i64 %cs3926, %vs3927
  %nzcv3930 = or i64 %nzor3928, %cvor3929
  %wp3931 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3930, ptr %wp3931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2034 word 0x54000183
  %r3932.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3932 = load i64, ptr %r3932.p, align 8, !alias.scope !3, !noalias !4
  %fsh3934 = lshr i64 %r3932, 29
  %ftr3935 = trunc i64 %fsh3934 to i1
  %cond3933 = xor i1 %ftr3935, true
  br i1 %cond3933, label %L_8001a2064, label %L_8001a2038_ft
L_8001a2064:
  ; @pc 0x8001a2064 word 0x8b0a018c
  %r4023.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4023 = load i64, ptr %r4023.p, align 8, !alias.scope !3, !noalias !4
  %r4024.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4024 = load i64, ptr %r4024.p, align 8, !alias.scope !3, !noalias !4
  %t4025 = add i64 %r4023, %r4024
  %wp4026 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4025, ptr %wp4026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2068 word 0xf940058c
  %r4027.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4027 = load i64, ptr %r4027.p, align 8, !alias.scope !3, !noalias !4
  %t4028 = add i64 %r4027, 8
  %gmp4029 = inttoptr i64 %t4028 to ptr
  %gml4030 = load i64, ptr %gmp4029, align 1, !alias.scope !4, !noalias !3
  %wp4031 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4030, ptr %wp4031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a206c word 0x8b09018c
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %r4033.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4033 = load i64, ptr %r4033.p, align 8, !alias.scope !3, !noalias !4
  %t4034 = add i64 %r4032, %r4033
  %wp4035 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t4034, ptr %wp4035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2070 word 0xeb0b019f
  %r4036.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4036 = load i64, ptr %r4036.p, align 8, !alias.scope !3, !noalias !4
  %r4037.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4037 = load i64, ptr %r4037.p, align 8, !alias.scope !3, !noalias !4
  %t4038 = sub i64 %r4036, %r4037
  %fn4039 = icmp slt i64 %t4038, 0
  %fz4040 = icmp eq i64 %t4038, 0
  %fc4041 = icmp uge i64 %r4036, %r4037
  %fx14042 = xor i64 %r4036, %r4037
  %fx24043 = xor i64 %r4036, %t4038
  %fva4044 = and i64 %fx14042, %fx24043
  %fv4045 = icmp slt i64 %fva4044, 0
  %nz4046 = zext i1 %fn4039 to i64
  %zz4047 = zext i1 %fz4040 to i64
  %cz4048 = zext i1 %fc4041 to i64
  %vz4049 = zext i1 %fv4045 to i64
  %ns4050 = shl i64 %nz4046, 31
  %zs4051 = shl i64 %zz4047, 30
  %cs4052 = shl i64 %cz4048, 29
  %vs4053 = shl i64 %vz4049, 28
  %nzor4054 = or i64 %ns4050, %zs4051
  %cvor4055 = or i64 %cs4052, %vs4053
  %nzcv4056 = or i64 %nzor4054, %cvor4055
  %wp4057 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4056, ptr %wp4057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2074 word 0x54fffdc1
  %r4058.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4058 = load i64, ptr %r4058.p, align 8, !alias.scope !3, !noalias !4
  %fsh4060 = lshr i64 %r4058, 30
  %ftr4061 = trunc i64 %fsh4060 to i1
  %cond4059 = xor i1 %ftr4061, true
  br i1 %cond4059, label %L_8001a202c, label %L_8001a2078
L_8001a2078:
  ; @pc 0x8001a2078 word 0xb4fff0a8
  %r4062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4062 = load i64, ptr %r4062.p, align 8, !alias.scope !3, !noalias !4
  %cmp4063 = icmp eq i64 %r4062, 0
  br i1 %cmp4063, label %L_8001a1e8c, label %L_8001a207c_ft
L_8001a2088:
  ; @pc 0x8001a2088 word 0xb94007e8
  %r4075.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4075 = load i64, ptr %r4075.p, align 8, !alias.scope !3, !noalias !4
  %t4076 = add i64 %r4075, 4
  %gmp4077 = inttoptr i64 %t4076 to ptr
  %gml4078 = load i32, ptr %gmp4077, align 1, !alias.scope !4, !noalias !3
  %c4079 = zext i32 %gml4078 to i64
  %wp4080 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c4079, ptr %wp4080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a208c word 0xa900d7f3
  %r4081.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4081 = load i64, ptr %r4081.p, align 8, !alias.scope !3, !noalias !4
  %t4082 = add i64 %r4081, 8
  %t4083 = add i64 %t4082, 8
  %r4084.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4084 = load i64, ptr %r4084.p, align 8, !alias.scope !3, !noalias !4
  %gmp4085 = inttoptr i64 %t4082 to ptr
  store i64 %r4084, ptr %gmp4085, align 1, !alias.scope !4, !noalias !3
  %r4086.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4086 = load i64, ptr %r4086.p, align 8, !alias.scope !3, !noalias !4
  %gmp4087 = inttoptr i64 %t4083 to ptr
  store i64 %r4086, ptr %gmp4087, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a2090 word 0x910023e1
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %t4089 = add i64 %r4088, 8
  %wp4090 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4089, ptr %wp4090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2094 word 0xb9001bf4
  %r4091.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4091 = load i64, ptr %r4091.p, align 8, !alias.scope !3, !noalias !4
  %t4092 = add i64 %r4091, 24
  %r4093.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4093 = load i64, ptr %r4093.p, align 8, !alias.scope !3, !noalias !4
  %c4094 = trunc i64 %r4093 to i32
  %gmp4095 = inttoptr i64 %t4092 to ptr
  store i32 %c4094, ptr %gmp4095, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a2098 word 0xf90013f7
  %r4096.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4096 = load i64, ptr %r4096.p, align 8, !alias.scope !3, !noalias !4
  %t4097 = add i64 %r4096, 32
  %r4098.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4098 = load i64, ptr %r4098.p, align 8, !alias.scope !3, !noalias !4
  %gmp4099 = inttoptr i64 %t4097 to ptr
  store i64 %r4098, ptr %gmp4099, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a209c word 0xb9002be8
  %r4100.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4100 = load i64, ptr %r4100.p, align 8, !alias.scope !3, !noalias !4
  %t4101 = add i64 %r4100, 40
  %r4102.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4102 = load i64, ptr %r4102.p, align 8, !alias.scope !3, !noalias !4
  %c4103 = trunc i64 %r4102 to i32
  %gmp4104 = inttoptr i64 %t4101 to ptr
  store i32 %c4103, ptr %gmp4104, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a20a0 word 0xf9400008
  %r4105.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4105 = load i64, ptr %r4105.p, align 8, !alias.scope !3, !noalias !4
  %gmp4106 = inttoptr i64 %r4105 to ptr
  %gml4107 = load i64, ptr %gmp4106, align 1, !alias.scope !4, !noalias !3
  %wp4108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4107, ptr %wp4108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a20a4 word 0xf9400108
  %r4109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4109 = load i64, ptr %r4109.p, align 8, !alias.scope !3, !noalias !4
  %gmp4110 = inttoptr i64 %r4109 to ptr
  %gml4111 = load i64, ptr %gmp4110, align 1, !alias.scope !4, !noalias !3
  %wp4112 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4111, ptr %wp4112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a20a8 word 0xd63f0100
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %fp4114 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4113, ptr %fp4114, align 8, !alias.scope !3, !noalias !4
  %wp4115 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361450668, ptr %wp4115, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a20ac word 0x17ffff7b
  br label %L_8001a1e98
L_8001a20b0:
  ; @pc 0x8001a20b0 word 0xb94007e2
  %r4116.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4116 = load i64, ptr %r4116.p, align 8, !alias.scope !3, !noalias !4
  %t4117 = add i64 %r4116, 4
  %gmp4118 = inttoptr i64 %t4117 to ptr
  %gml4119 = load i32, ptr %gmp4118, align 1, !alias.scope !4, !noalias !3
  %c4120 = zext i32 %gml4119 to i64
  %wp4121 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c4120, ptr %wp4121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a20b4 word 0x97ff6acb
  %wp4122 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361450680, ptr %wp4122, align 8, !alias.scope !3, !noalias !4
  call void @f_80017cbe0(ptr %c)
  ; @pc 0x8001a20b8 word 0x17fffec2
  br label %L_8001a1bc0
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361447824, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001a1590
L_8001a15c8_ft:
  ; @pc 0x8001a15c8 word 0xaa0103f3
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15cc word 0xb4003001
  %r76.p = getelementptr inbounds i8, ptr %c, i64 8
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %cmp77 = icmp eq i64 %r76, 0
  br i1 %cmp77, label %L_8001a1bcc, label %L_8001a15d0
L_8001a15e8_ft:
  ; @pc 0x8001a15e8 word 0xb940aa68
  %r117.p = getelementptr inbounds i8, ptr %c, i64 152
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 168
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i32, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i32 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15ec word 0x91022277
  %r123.p = getelementptr inbounds i8, ptr %c, i64 152
  %r123 = load i64, ptr %r123.p, align 8, !alias.scope !3, !noalias !4
  %t124 = add i64 %r123, 136
  %wp125 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a15f0 word 0x37003248
  %r126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = and i64 %r126, 1
  %cmp128 = icmp ne i64 %t127, 0
  br i1 %cmp128, label %L_8001a1c38, label %L_8001a15f4_ft
L_8001a15f4_ft:
  ; @pc 0x8001a15f4 word 0xaa1f03f6
  %t129 = or i64 0, 0
  %wp130 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a15f8
L_8001a1624_ft:
  ; @pc 0x8001a1624 word 0xb940826a
  %r231.p = getelementptr inbounds i8, ptr %c, i64 152
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %t232 = add i64 %r231, 128
  %gmp233 = inttoptr i64 %t232 to ptr
  %gml234 = load i32, ptr %gmp233, align 1, !alias.scope !4, !noalias !3
  %c235 = zext i32 %gml234 to i64
  %wp236 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1628 word 0x1b147d4a
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
  ; @pc 0x8001a162c word 0x37f8328a
  %r245.p = getelementptr inbounds i8, ptr %c, i64 80
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %t246 = and i64 %r245, 2147483648
  %cmp247 = icmp ne i64 %t246, 0
  br i1 %cmp247, label %L_8001a1c7c, label %L_8001a1630_ft
L_8001a1630_ft:
  ; @pc 0x8001a1630 word 0xf9405a6b
  %r248.p = getelementptr inbounds i8, ptr %c, i64 152
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %t249 = add i64 %r248, 176
  %gmp250 = inttoptr i64 %t249 to ptr
  %gml251 = load i64, ptr %gmp250, align 1, !alias.scope !4, !noalias !3
  %wp252 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1634 word 0x5100054c
  %r253.p = getelementptr inbounds i8, ptr %c, i64 80
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %c254 = trunc i64 %r253 to i32
  %t255 = sub i32 %c254, 1
  %c256 = zext i32 %t255 to i64
  %wp257 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c256, ptr %wp257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1638 word 0x8b0c016b
  %r258.p = getelementptr inbounds i8, ptr %c, i64 88
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %r259.p = getelementptr inbounds i8, ptr %c, i64 96
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %t260 = add i64 %r258, %r259
  %wp261 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a163c word 0x8a2c0178
  %r262.p = getelementptr inbounds i8, ptr %c, i64 96
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %t263 = xor i64 %r262, -1
  %r264.p = getelementptr inbounds i8, ptr %c, i64 88
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %t265 = and i64 %r264, %t263
  %wp266 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t265, ptr %wp266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1640 word 0x8b19030b
  %r267.p = getelementptr inbounds i8, ptr %c, i64 192
  %r267 = load i64, ptr %r267.p, align 8, !alias.scope !3, !noalias !4
  %r268.p = getelementptr inbounds i8, ptr %c, i64 200
  %r268 = load i64, ptr %r268.p, align 8, !alias.scope !3, !noalias !4
  %t269 = add i64 %r267, %r268
  %wp270 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t269, ptr %wp270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1644 word 0xeb18017f
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
  ; @pc 0x8001a1648 word 0x540021c3
  %r293.p = getelementptr inbounds i8, ptr %c, i64 272
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %fsh295 = lshr i64 %r293, 29
  %ftr296 = trunc i64 %fsh295 to i1
  %cond294 = xor i1 %ftr296, true
  br i1 %cond294, label %L_8001a1a80, label %L_8001a164c_ft
L_8001a164c_ft:
  ; @pc 0x8001a164c word 0xf9405e6c
  %r297.p = getelementptr inbounds i8, ptr %c, i64 152
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 184
  %gmp299 = inttoptr i64 %t298 to ptr
  %gml300 = load i64, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  %wp301 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml300, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1650 word 0xeb0b019f
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
  ; @pc 0x8001a1654 word 0x54002163
  %r324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %fsh326 = lshr i64 %r324, 29
  %ftr327 = trunc i64 %fsh326 to i1
  %cond325 = xor i1 %ftr327, true
  br i1 %cond325, label %L_8001a1a80, label %L_8001a1658_ft
L_8001a1658_ft:
  ; @pc 0x8001a1658 word 0xf9005a6b
  %r328.p = getelementptr inbounds i8, ptr %c, i64 152
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 176
  %r330.p = getelementptr inbounds i8, ptr %c, i64 88
  %r330 = load i64, ptr %r330.p, align 8, !alias.scope !3, !noalias !4
  %gmp331 = inttoptr i64 %t329 to ptr
  store i64 %r330, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a165c
L_8001a1698_ft:
  ; @pc 0x8001a1698 word 0xf10022bf
  %r423.p = getelementptr inbounds i8, ptr %c, i64 168
  %r423 = load i64, ptr %r423.p, align 8, !alias.scope !3, !noalias !4
  %t424 = sub i64 %r423, 8
  %fn425 = icmp slt i64 %t424, 0
  %fz426 = icmp eq i64 %t424, 0
  %fc427 = icmp uge i64 %r423, 8
  %fx1428 = xor i64 %r423, 8
  %fx2429 = xor i64 %r423, %t424
  %fva430 = and i64 %fx1428, %fx2429
  %fv431 = icmp slt i64 %fva430, 0
  %nz432 = zext i1 %fn425 to i64
  %zz433 = zext i1 %fz426 to i64
  %cz434 = zext i1 %fc427 to i64
  %vz435 = zext i1 %fv431 to i64
  %ns436 = shl i64 %nz432, 31
  %zs437 = shl i64 %zz433, 30
  %cs438 = shl i64 %cz434, 29
  %vs439 = shl i64 %vz435, 28
  %nzor440 = or i64 %ns436, %zs437
  %cvor441 = or i64 %cs438, %vs439
  %nzcv442 = or i64 %nzor440, %cvor441
  %wp443 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv442, ptr %wp443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a169c word 0x52800108
  %c444 = zext i32 8 to i64
  %wp445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c444, ptr %wp445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16a0 word 0xf9400319
  %r446.p = getelementptr inbounds i8, ptr %c, i64 192
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %gmp447 = inttoptr i64 %r446 to ptr
  %gml448 = load i64, ptr %gmp447, align 1, !alias.scope !4, !noalias !3
  %wp449 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml448, ptr %wp449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16a4 word 0x9a8882a8
  %r450.p = getelementptr inbounds i8, ptr %c, i64 168
  %r450 = load i64, ptr %r450.p, align 8, !alias.scope !3, !noalias !4
  %r451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %r452.p = getelementptr inbounds i8, ptr %c, i64 272
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %fsh454 = lshr i64 %r452, 29
  %ftr455 = trunc i64 %fsh454 to i1
  %fsh456 = lshr i64 %r452, 30
  %ftr457 = trunc i64 %fsh456 to i1
  %fnz458 = xor i1 %ftr457, true
  %cond453 = and i1 %ftr455, %fnz458
  %sel459 = select i1 %cond453, i64 %r450, i64 %r451
  %wp460 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel459, ptr %wp460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16a8 word 0x7100029f
  %r461.p = getelementptr inbounds i8, ptr %c, i64 160
  %r461 = load i64, ptr %r461.p, align 8, !alias.scope !3, !noalias !4
  %c462 = trunc i64 %r461 to i32
  %t463 = sub i32 %c462, 0
  %fn464 = icmp slt i32 %t463, 0
  %fz465 = icmp eq i32 %t463, 0
  %fc466 = icmp uge i32 %c462, 0
  %fx1467 = xor i32 %c462, 0
  %fx2468 = xor i32 %c462, %t463
  %fva469 = and i32 %fx1467, %fx2468
  %fv470 = icmp slt i32 %fva469, 0
  %nz471 = zext i1 %fn464 to i64
  %zz472 = zext i1 %fz465 to i64
  %cz473 = zext i1 %fc466 to i64
  %vz474 = zext i1 %fv470 to i64
  %ns475 = shl i64 %nz471, 31
  %zs476 = shl i64 %zz472, 30
  %cs477 = shl i64 %cz473, 29
  %vs478 = shl i64 %vz474, 28
  %nzor479 = or i64 %ns475, %zs476
  %cvor480 = or i64 %cs477, %vs478
  %nzcv481 = or i64 %nzor479, %cvor480
  %wp482 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv481, ptr %wp482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16ac word 0x91001d08
  %r483.p = getelementptr inbounds i8, ptr %c, i64 64
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %t484 = add i64 %r483, 7
  %wp485 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t484, ptr %wp485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16b0 word 0x927df117
  %r486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %t487 = and i64 %r486, -8
  %wp488 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t487, ptr %wp488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16b4 word 0x5a945688
  %r489.p = getelementptr inbounds i8, ptr %c, i64 160
  %r489 = load i64, ptr %r489.p, align 8, !alias.scope !3, !noalias !4
  %c490 = trunc i64 %r489 to i32
  %r491.p = getelementptr inbounds i8, ptr %c, i64 160
  %r491 = load i64, ptr %r491.p, align 8, !alias.scope !3, !noalias !4
  %c492 = trunc i64 %r491 to i32
  %t493 = sub i32 0, %c492
  %r494.p = getelementptr inbounds i8, ptr %c, i64 272
  %r494 = load i64, ptr %r494.p, align 8, !alias.scope !3, !noalias !4
  %fsh496 = lshr i64 %r494, 31
  %ftr497 = trunc i64 %fsh496 to i1
  %cond495 = xor i1 %ftr497, true
  %sel498 = select i1 %cond495, i32 %c490, i32 %t493
  %c499 = zext i32 %sel498 to i64
  %wp500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c499, ptr %wp500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16b8 word 0x51000509
  %r501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r501 = load i64, ptr %r501.p, align 8, !alias.scope !3, !noalias !4
  %c502 = trunc i64 %r501 to i32
  %t503 = sub i32 %c502, 1
  %c504 = zext i32 %t503 to i64
  %wp505 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c504, ptr %wp505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16bc word 0x6a09011f
  %r506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r506 = load i64, ptr %r506.p, align 8, !alias.scope !3, !noalias !4
  %c507 = trunc i64 %r506 to i32
  %r508.p = getelementptr inbounds i8, ptr %c, i64 64
  %r508 = load i64, ptr %r508.p, align 8, !alias.scope !3, !noalias !4
  %c509 = trunc i64 %r508 to i32
  %t510 = and i32 %c509, %c507
  %fn511 = icmp slt i32 %t510, 0
  %fz512 = icmp eq i32 %t510, 0
  %nz513 = zext i1 %fn511 to i64
  %zz514 = zext i1 %fz512 to i64
  %ns515 = shl i64 %nz513, 31
  %zs516 = shl i64 %zz514, 30
  %nzcv517 = or i64 %ns515, %zs516
  %wp518 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv517, ptr %wp518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16c0 word 0x54003421
  %r519.p = getelementptr inbounds i8, ptr %c, i64 272
  %r519 = load i64, ptr %r519.p, align 8, !alias.scope !3, !noalias !4
  %fsh521 = lshr i64 %r519, 30
  %ftr522 = trunc i64 %fsh521 to i1
  %cond520 = xor i1 %ftr522, true
  br i1 %cond520, label %L_8001a1d44, label %L_8001a16c4_ft
L_8001a16c4_ft:
  ; @pc 0x8001a16c4 word 0xb940aa68
  %r523.p = getelementptr inbounds i8, ptr %c, i64 152
  %r523 = load i64, ptr %r523.p, align 8, !alias.scope !3, !noalias !4
  %t524 = add i64 %r523, 168
  %gmp525 = inttoptr i64 %t524 to ptr
  %gml526 = load i32, ptr %gmp525, align 1, !alias.scope !4, !noalias !3
  %c527 = zext i32 %gml526 to i64
  %wp528 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c527, ptr %wp528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16c8 word 0x37002668
  %r529.p = getelementptr inbounds i8, ptr %c, i64 64
  %r529 = load i64, ptr %r529.p, align 8, !alias.scope !3, !noalias !4
  %t530 = and i64 %r529, 1
  %cmp531 = icmp ne i64 %t530, 0
  br i1 %cmp531, label %L_8001a1b94, label %L_8001a16cc_ft
L_8001a16cc_ft:
  ; @pc 0x8001a16cc word 0xaa1f03f6
  %t532 = or i64 0, 0
  %wp533 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t532, ptr %wp533, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a16d0
L_8001a16dc_ft:
  ; @pc 0x8001a16dc word 0xf9405a69
  %r551.p = getelementptr inbounds i8, ptr %c, i64 152
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %t552 = add i64 %r551, 176
  %gmp553 = inttoptr i64 %t552 to ptr
  %gml554 = load i64, ptr %gmp553, align 1, !alias.scope !4, !noalias !3
  %wp555 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml554, ptr %wp555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16e0 word 0x5100050a
  %r556.p = getelementptr inbounds i8, ptr %c, i64 64
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %c557 = trunc i64 %r556 to i32
  %t558 = sub i32 %c557, 1
  %c559 = zext i32 %t558 to i64
  %wp560 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c559, ptr %wp560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16e4 word 0x8b0a0129
  %r561.p = getelementptr inbounds i8, ptr %c, i64 72
  %r561 = load i64, ptr %r561.p, align 8, !alias.scope !3, !noalias !4
  %r562.p = getelementptr inbounds i8, ptr %c, i64 80
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = add i64 %r561, %r562
  %wp564 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t563, ptr %wp564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16e8 word 0x8a2a0138
  %r565.p = getelementptr inbounds i8, ptr %c, i64 80
  %r565 = load i64, ptr %r565.p, align 8, !alias.scope !3, !noalias !4
  %t566 = xor i64 %r565, -1
  %r567.p = getelementptr inbounds i8, ptr %c, i64 72
  %r567 = load i64, ptr %r567.p, align 8, !alias.scope !3, !noalias !4
  %t568 = and i64 %r567, %t566
  %wp569 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t568, ptr %wp569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16ec word 0x8b170309
  %r570.p = getelementptr inbounds i8, ptr %c, i64 192
  %r570 = load i64, ptr %r570.p, align 8, !alias.scope !3, !noalias !4
  %r571.p = getelementptr inbounds i8, ptr %c, i64 184
  %r571 = load i64, ptr %r571.p, align 8, !alias.scope !3, !noalias !4
  %t572 = add i64 %r570, %r571
  %wp573 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t572, ptr %wp573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16f0 word 0xeb18013f
  %r574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r574 = load i64, ptr %r574.p, align 8, !alias.scope !3, !noalias !4
  %r575.p = getelementptr inbounds i8, ptr %c, i64 192
  %r575 = load i64, ptr %r575.p, align 8, !alias.scope !3, !noalias !4
  %t576 = sub i64 %r574, %r575
  %fn577 = icmp slt i64 %t576, 0
  %fz578 = icmp eq i64 %t576, 0
  %fc579 = icmp uge i64 %r574, %r575
  %fx1580 = xor i64 %r574, %r575
  %fx2581 = xor i64 %r574, %t576
  %fva582 = and i64 %fx1580, %fx2581
  %fv583 = icmp slt i64 %fva582, 0
  %nz584 = zext i1 %fn577 to i64
  %zz585 = zext i1 %fz578 to i64
  %cz586 = zext i1 %fc579 to i64
  %vz587 = zext i1 %fv583 to i64
  %ns588 = shl i64 %nz584, 31
  %zs589 = shl i64 %zz585, 30
  %cs590 = shl i64 %cz586, 29
  %vs591 = shl i64 %vz587, 28
  %nzor592 = or i64 %ns588, %zs589
  %cvor593 = or i64 %cs590, %vs591
  %nzcv594 = or i64 %nzor592, %cvor593
  %wp595 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv594, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16f4 word 0x540030c3
  %r596.p = getelementptr inbounds i8, ptr %c, i64 272
  %r596 = load i64, ptr %r596.p, align 8, !alias.scope !3, !noalias !4
  %fsh598 = lshr i64 %r596, 29
  %ftr599 = trunc i64 %fsh598 to i1
  %cond597 = xor i1 %ftr599, true
  br i1 %cond597, label %L_8001a1d0c, label %L_8001a16f8_ft
L_8001a16f8_ft:
  ; @pc 0x8001a16f8 word 0xf9405e6a
  %r600.p = getelementptr inbounds i8, ptr %c, i64 152
  %r600 = load i64, ptr %r600.p, align 8, !alias.scope !3, !noalias !4
  %t601 = add i64 %r600, 184
  %gmp602 = inttoptr i64 %t601 to ptr
  %gml603 = load i64, ptr %gmp602, align 1, !alias.scope !4, !noalias !3
  %wp604 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml603, ptr %wp604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a16fc word 0xeb09015f
  %r605.p = getelementptr inbounds i8, ptr %c, i64 80
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %r606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %t607 = sub i64 %r605, %r606
  %fn608 = icmp slt i64 %t607, 0
  %fz609 = icmp eq i64 %t607, 0
  %fc610 = icmp uge i64 %r605, %r606
  %fx1611 = xor i64 %r605, %r606
  %fx2612 = xor i64 %r605, %t607
  %fva613 = and i64 %fx1611, %fx2612
  %fv614 = icmp slt i64 %fva613, 0
  %nz615 = zext i1 %fn608 to i64
  %zz616 = zext i1 %fz609 to i64
  %cz617 = zext i1 %fc610 to i64
  %vz618 = zext i1 %fv614 to i64
  %ns619 = shl i64 %nz615, 31
  %zs620 = shl i64 %zz616, 30
  %cs621 = shl i64 %cz617, 29
  %vs622 = shl i64 %vz618, 28
  %nzor623 = or i64 %ns619, %zs620
  %cvor624 = or i64 %cs621, %vs622
  %nzcv625 = or i64 %nzor623, %cvor624
  %wp626 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv625, ptr %wp626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1700 word 0x54003063
  %r627.p = getelementptr inbounds i8, ptr %c, i64 272
  %r627 = load i64, ptr %r627.p, align 8, !alias.scope !3, !noalias !4
  %fsh629 = lshr i64 %r627, 29
  %ftr630 = trunc i64 %fsh629 to i1
  %cond628 = xor i1 %ftr630, true
  br i1 %cond628, label %L_8001a1d0c, label %L_8001a1704_ft
L_8001a1704_ft:
  ; @pc 0x8001a1704 word 0xf9005a69
  %r631.p = getelementptr inbounds i8, ptr %c, i64 152
  %r631 = load i64, ptr %r631.p, align 8, !alias.scope !3, !noalias !4
  %t632 = add i64 %r631, 176
  %r633.p = getelementptr inbounds i8, ptr %c, i64 72
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %gmp634 = inttoptr i64 %t632 to ptr
  store i64 %r633, ptr %gmp634, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1708 word 0xb4fffaf6
  %r635.p = getelementptr inbounds i8, ptr %c, i64 176
  %r635 = load i64, ptr %r635.p, align 8, !alias.scope !3, !noalias !4
  %cmp636 = icmp eq i64 %r635, 0
  br i1 %cmp636, label %L_8001a1664, label %L_8001a170c_ft
L_8001a170c_ft:
  ; @pc 0x8001a170c word 0x14000069
  br label %L_8001a18b0
L_8001a1720_ft:
  ; @pc 0x8001a1720 word 0xf10022bf
  %r664.p = getelementptr inbounds i8, ptr %c, i64 168
  %r664 = load i64, ptr %r664.p, align 8, !alias.scope !3, !noalias !4
  %t665 = sub i64 %r664, 8
  %fn666 = icmp slt i64 %t665, 0
  %fz667 = icmp eq i64 %t665, 0
  %fc668 = icmp uge i64 %r664, 8
  %fx1669 = xor i64 %r664, 8
  %fx2670 = xor i64 %r664, %t665
  %fva671 = and i64 %fx1669, %fx2670
  %fv672 = icmp slt i64 %fva671, 0
  %nz673 = zext i1 %fn666 to i64
  %zz674 = zext i1 %fz667 to i64
  %cz675 = zext i1 %fc668 to i64
  %vz676 = zext i1 %fv672 to i64
  %ns677 = shl i64 %nz673, 31
  %zs678 = shl i64 %zz674, 30
  %cs679 = shl i64 %cz675, 29
  %vs680 = shl i64 %vz676, 28
  %nzor681 = or i64 %ns677, %zs678
  %cvor682 = or i64 %cs679, %vs680
  %nzcv683 = or i64 %nzor681, %cvor682
  %wp684 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv683, ptr %wp684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1724 word 0x52800108
  %c685 = zext i32 8 to i64
  %wp686 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c685, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1728 word 0xf9400319
  %r687.p = getelementptr inbounds i8, ptr %c, i64 192
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %gmp688 = inttoptr i64 %r687 to ptr
  %gml689 = load i64, ptr %gmp688, align 1, !alias.scope !4, !noalias !3
  %wp690 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml689, ptr %wp690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a172c word 0x9a8882a8
  %r691.p = getelementptr inbounds i8, ptr %c, i64 168
  %r691 = load i64, ptr %r691.p, align 8, !alias.scope !3, !noalias !4
  %r692.p = getelementptr inbounds i8, ptr %c, i64 64
  %r692 = load i64, ptr %r692.p, align 8, !alias.scope !3, !noalias !4
  %r693.p = getelementptr inbounds i8, ptr %c, i64 272
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %fsh695 = lshr i64 %r693, 29
  %ftr696 = trunc i64 %fsh695 to i1
  %fsh697 = lshr i64 %r693, 30
  %ftr698 = trunc i64 %fsh697 to i1
  %fnz699 = xor i1 %ftr698, true
  %cond694 = and i1 %ftr696, %fnz699
  %sel700 = select i1 %cond694, i64 %r691, i64 %r692
  %wp701 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel700, ptr %wp701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1730 word 0x7100029f
  %r702.p = getelementptr inbounds i8, ptr %c, i64 160
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %c703 = trunc i64 %r702 to i32
  %t704 = sub i32 %c703, 0
  %fn705 = icmp slt i32 %t704, 0
  %fz706 = icmp eq i32 %t704, 0
  %fc707 = icmp uge i32 %c703, 0
  %fx1708 = xor i32 %c703, 0
  %fx2709 = xor i32 %c703, %t704
  %fva710 = and i32 %fx1708, %fx2709
  %fv711 = icmp slt i32 %fva710, 0
  %nz712 = zext i1 %fn705 to i64
  %zz713 = zext i1 %fz706 to i64
  %cz714 = zext i1 %fc707 to i64
  %vz715 = zext i1 %fv711 to i64
  %ns716 = shl i64 %nz712, 31
  %zs717 = shl i64 %zz713, 30
  %cs718 = shl i64 %cz714, 29
  %vs719 = shl i64 %vz715, 28
  %nzor720 = or i64 %ns716, %zs717
  %cvor721 = or i64 %cs718, %vs719
  %nzcv722 = or i64 %nzor720, %cvor721
  %wp723 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv722, ptr %wp723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1734 word 0x5a945689
  %r724.p = getelementptr inbounds i8, ptr %c, i64 160
  %r724 = load i64, ptr %r724.p, align 8, !alias.scope !3, !noalias !4
  %c725 = trunc i64 %r724 to i32
  %r726.p = getelementptr inbounds i8, ptr %c, i64 160
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %c727 = trunc i64 %r726 to i32
  %t728 = sub i32 0, %c727
  %r729.p = getelementptr inbounds i8, ptr %c, i64 272
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %fsh731 = lshr i64 %r729, 31
  %ftr732 = trunc i64 %fsh731 to i1
  %cond730 = xor i1 %ftr732, true
  %sel733 = select i1 %cond730, i32 %c725, i32 %t728
  %c734 = zext i32 %sel733 to i64
  %wp735 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c734, ptr %wp735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1738 word 0x5100052a
  %r736.p = getelementptr inbounds i8, ptr %c, i64 72
  %r736 = load i64, ptr %r736.p, align 8, !alias.scope !3, !noalias !4
  %c737 = trunc i64 %r736 to i32
  %t738 = sub i32 %c737, 1
  %c739 = zext i32 %t738 to i64
  %wp740 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c739, ptr %wp740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a173c word 0x6a0a013f
  %r741.p = getelementptr inbounds i8, ptr %c, i64 80
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %c742 = trunc i64 %r741 to i32
  %r743.p = getelementptr inbounds i8, ptr %c, i64 72
  %r743 = load i64, ptr %r743.p, align 8, !alias.scope !3, !noalias !4
  %c744 = trunc i64 %r743 to i32
  %t745 = and i32 %c744, %c742
  %fn746 = icmp slt i32 %t745, 0
  %fz747 = icmp eq i32 %t745, 0
  %nz748 = zext i1 %fn746 to i64
  %zz749 = zext i1 %fz747 to i64
  %ns750 = shl i64 %nz748, 31
  %zs751 = shl i64 %zz749, 30
  %nzcv752 = or i64 %ns750, %zs751
  %wp753 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv752, ptr %wp753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1740 word 0x54003221
  %r754.p = getelementptr inbounds i8, ptr %c, i64 272
  %r754 = load i64, ptr %r754.p, align 8, !alias.scope !3, !noalias !4
  %fsh756 = lshr i64 %r754, 30
  %ftr757 = trunc i64 %fsh756 to i1
  %cond755 = xor i1 %ftr757, true
  br i1 %cond755, label %L_8001a1d84, label %L_8001a1744_ft
L_8001a1744_ft:
  ; @pc 0x8001a1744 word 0x91001d08
  %r758.p = getelementptr inbounds i8, ptr %c, i64 64
  %r758 = load i64, ptr %r758.p, align 8, !alias.scope !3, !noalias !4
  %t759 = add i64 %r758, 7
  %wp760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t759, ptr %wp760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1748 word 0x927df117
  %r761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %t762 = and i64 %r761, -8
  %wp763 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t762, ptr %wp763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a174c word 0xeb1502ff
  %r764.p = getelementptr inbounds i8, ptr %c, i64 184
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %r765.p = getelementptr inbounds i8, ptr %c, i64 168
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %t766 = sub i64 %r764, %r765
  %fn767 = icmp slt i64 %t766, 0
  %fz768 = icmp eq i64 %t766, 0
  %fc769 = icmp uge i64 %r764, %r765
  %fx1770 = xor i64 %r764, %r765
  %fx2771 = xor i64 %r764, %t766
  %fva772 = and i64 %fx1770, %fx2771
  %fv773 = icmp slt i64 %fva772, 0
  %nz774 = zext i1 %fn767 to i64
  %zz775 = zext i1 %fz768 to i64
  %cz776 = zext i1 %fc769 to i64
  %vz777 = zext i1 %fv773 to i64
  %ns778 = shl i64 %nz774, 31
  %zs779 = shl i64 %zz775, 30
  %cs780 = shl i64 %cz776, 29
  %vs781 = shl i64 %vz777, 28
  %nzor782 = or i64 %ns778, %zs779
  %cvor783 = or i64 %cs780, %vs781
  %nzcv784 = or i64 %nzor782, %cvor783
  %wp785 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv784, ptr %wp785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1750 word 0x54002fa3
  %r786.p = getelementptr inbounds i8, ptr %c, i64 272
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %fsh788 = lshr i64 %r786, 29
  %ftr789 = trunc i64 %fsh788 to i1
  %cond787 = xor i1 %ftr789, true
  br i1 %cond787, label %L_8001a1d44, label %L_8001a1754_ft
L_8001a1754_ft:
  ; @pc 0x8001a1754 word 0xb940aa68
  %r790.p = getelementptr inbounds i8, ptr %c, i64 152
  %r790 = load i64, ptr %r790.p, align 8, !alias.scope !3, !noalias !4
  %t791 = add i64 %r790, 168
  %gmp792 = inttoptr i64 %t791 to ptr
  %gml793 = load i32, ptr %gmp792, align 1, !alias.scope !4, !noalias !3
  %c794 = zext i32 %gml793 to i64
  %wp795 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c794, ptr %wp795, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1758 word 0x36000b28
  %r796.p = getelementptr inbounds i8, ptr %c, i64 64
  %r796 = load i64, ptr %r796.p, align 8, !alias.scope !3, !noalias !4
  %t797 = and i64 %r796, 1
  %cmp798 = icmp eq i64 %t797, 0
  br i1 %cmp798, label %L_8001a18bc, label %L_8001a175c_ft
L_8001a175c_ft:
  ; @pc 0x8001a175c word 0x91022276
  %r799.p = getelementptr inbounds i8, ptr %c, i64 152
  %r799 = load i64, ptr %r799.p, align 8, !alias.scope !3, !noalias !4
  %t800 = add i64 %r799, 136
  %wp801 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t800, ptr %wp801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1760 word 0xaa1603e0
  %r802.p = getelementptr inbounds i8, ptr %c, i64 176
  %r802 = load i64, ptr %r802.p, align 8, !alias.scope !3, !noalias !4
  %t803 = or i64 0, %r802
  %wp804 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t803, ptr %wp804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1764 word 0x94a80a3f
  %wp805 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361448296, ptr %wp805, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001a1768
L_8001a1774_ft:
  ; @pc 0x8001a1774 word 0xb980c66a
  %r823.p = getelementptr inbounds i8, ptr %c, i64 152
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %t824 = add i64 %r823, 196
  %gmp825 = inttoptr i64 %t824 to ptr
  %gml826 = load i32, ptr %gmp825, align 1, !alias.scope !4, !noalias !3
  %c827 = sext i32 %gml826 to i64
  %wp828 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c827, ptr %wp828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1778 word 0x9102c278
  %r829.p = getelementptr inbounds i8, ptr %c, i64 152
  %r829 = load i64, ptr %r829.p, align 8, !alias.scope !3, !noalias !4
  %t830 = add i64 %r829, 176
  %wp831 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t830, ptr %wp831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a177c word 0x2a0803ef
  %r832.p = getelementptr inbounds i8, ptr %c, i64 64
  %r832 = load i64, ptr %r832.p, align 8, !alias.scope !3, !noalias !4
  %c833 = trunc i64 %r832 to i32
  %t834 = or i32 0, %c833
  %c835 = zext i32 %t834 to i64
  %wp836 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c835, ptr %wp836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1780 word 0xf9405e6c
  %r837.p = getelementptr inbounds i8, ptr %c, i64 152
  %r837 = load i64, ptr %r837.p, align 8, !alias.scope !3, !noalias !4
  %t838 = add i64 %r837, 184
  %gmp839 = inttoptr i64 %t838 to ptr
  %gml840 = load i64, ptr %gmp839, align 1, !alias.scope !4, !noalias !3
  %wp841 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml840, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1784 word 0x7100211f
  %r842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %c843 = trunc i64 %r842 to i32
  %t844 = sub i32 %c843, 8
  %fn845 = icmp slt i32 %t844, 0
  %fz846 = icmp eq i32 %t844, 0
  %fc847 = icmp uge i32 %c843, 8
  %fx1848 = xor i32 %c843, 8
  %fx2849 = xor i32 %c843, %t844
  %fva850 = and i32 %fx1848, %fx2849
  %fv851 = icmp slt i32 %fva850, 0
  %nz852 = zext i1 %fn845 to i64
  %zz853 = zext i1 %fz846 to i64
  %cz854 = zext i1 %fc847 to i64
  %vz855 = zext i1 %fv851 to i64
  %ns856 = shl i64 %nz852, 31
  %zs857 = shl i64 %zz853, 30
  %cs858 = shl i64 %cz854, 29
  %vs859 = shl i64 %vz855, 28
  %nzor860 = or i64 %ns856, %zs857
  %cvor861 = or i64 %cs858, %vs859
  %nzcv862 = or i64 %nzor860, %cvor861
  %wp863 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv862, ptr %wp863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1788 word 0xcb0a03e9
  %r864.p = getelementptr inbounds i8, ptr %c, i64 80
  %r864 = load i64, ptr %r864.p, align 8, !alias.scope !3, !noalias !4
  %t865 = sub i64 0, %r864
  %wp866 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t865, ptr %wp866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a178c word 0xcb0a030b
  %r867.p = getelementptr inbounds i8, ptr %c, i64 192
  %r867 = load i64, ptr %r867.p, align 8, !alias.scope !3, !noalias !4
  %r868.p = getelementptr inbounds i8, ptr %c, i64 80
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %t869 = sub i64 %r867, %r868
  %wp870 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t869, ptr %wp870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1790 word 0xcb0a018c
  %r871.p = getelementptr inbounds i8, ptr %c, i64 96
  %r871 = load i64, ptr %r871.p, align 8, !alias.scope !3, !noalias !4
  %r872.p = getelementptr inbounds i8, ptr %c, i64 80
  %r872 = load i64, ptr %r872.p, align 8, !alias.scope !3, !noalias !4
  %t873 = sub i64 %r871, %r872
  %wp874 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t873, ptr %wp874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1794 word 0x54000c88
  %r875.p = getelementptr inbounds i8, ptr %c, i64 272
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %fsh877 = lshr i64 %r875, 29
  %ftr878 = trunc i64 %fsh877 to i1
  %fsh879 = lshr i64 %r875, 30
  %ftr880 = trunc i64 %fsh879 to i1
  %fnz881 = xor i1 %ftr880, true
  %cond876 = and i1 %ftr878, %fnz881
  br i1 %cond876, label %L_8001a1924, label %L_8001a1798_ft
L_8001a1798_ft:
  ; @pc 0x8001a1798 word 0xeb0b019f
  %r882.p = getelementptr inbounds i8, ptr %c, i64 96
  %r882 = load i64, ptr %r882.p, align 8, !alias.scope !3, !noalias !4
  %r883.p = getelementptr inbounds i8, ptr %c, i64 88
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %t884 = sub i64 %r882, %r883
  %fn885 = icmp slt i64 %t884, 0
  %fz886 = icmp eq i64 %t884, 0
  %fc887 = icmp uge i64 %r882, %r883
  %fx1888 = xor i64 %r882, %r883
  %fx2889 = xor i64 %r882, %t884
  %fva890 = and i64 %fx1888, %fx2889
  %fv891 = icmp slt i64 %fva890, 0
  %nz892 = zext i1 %fn885 to i64
  %zz893 = zext i1 %fz886 to i64
  %cz894 = zext i1 %fc887 to i64
  %vz895 = zext i1 %fv891 to i64
  %ns896 = shl i64 %nz892, 31
  %zs897 = shl i64 %zz893, 30
  %cs898 = shl i64 %cz894, 29
  %vs899 = shl i64 %vz895, 28
  %nzor900 = or i64 %ns896, %zs897
  %cvor901 = or i64 %cs898, %vs899
  %nzcv902 = or i64 %nzor900, %cvor901
  %wp903 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv902, ptr %wp903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a179c word 0x54003760
  %r904.p = getelementptr inbounds i8, ptr %c, i64 272
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %fsh906 = lshr i64 %r904, 30
  %cond905 = trunc i64 %fsh906 to i1
  br i1 %cond905, label %L_8001a1e88, label %L_8001a17a0_ft
L_8001a17a0_ft:
  ; @pc 0x8001a17a0 word 0x3942b268
  %r907.p = getelementptr inbounds i8, ptr %c, i64 152
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = add i64 %r907, 172
  %gmp909 = inttoptr i64 %t908 to ptr
  %gml910 = load i8, ptr %gmp909, align 1, !alias.scope !4, !noalias !3
  %c911 = zext i8 %gml910 to i64
  %wp912 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c911, ptr %wp912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17a4 word 0x35002fe8
  %r913.p = getelementptr inbounds i8, ptr %c, i64 64
  %r913 = load i64, ptr %r913.p, align 8, !alias.scope !3, !noalias !4
  %c914 = trunc i64 %r913 to i32
  %cmp915 = icmp ne i32 %c914, 0
  br i1 %cmp915, label %L_8001a1da0, label %L_8001a17a8_ft
L_8001a17a8_ft:
  ; @pc 0x8001a17a8 word 0xaa0c03e8
  %r916.p = getelementptr inbounds i8, ptr %c, i64 96
  %r916 = load i64, ptr %r916.p, align 8, !alias.scope !3, !noalias !4
  %t917 = or i64 0, %r916
  %wp918 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t917, ptr %wp918, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a17ac
L_8001a17dc_ft:
  ; @pc 0x8001a17dc word 0xf900056a
  %r1012.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1012 = load i64, ptr %r1012.p, align 8, !alias.scope !3, !noalias !4
  %t1013 = add i64 %r1012, 8
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %gmp1015 = inttoptr i64 %t1013 to ptr
  store i64 %r1014, ptr %gmp1015, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a17e0 word 0xf940052a
  %r1016.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1016 = load i64, ptr %r1016.p, align 8, !alias.scope !3, !noalias !4
  %t1017 = add i64 %r1016, 8
  %gmp1018 = inttoptr i64 %t1017 to ptr
  %gml1019 = load i64, ptr %gmp1018, align 1, !alias.scope !4, !noalias !3
  %wp1020 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1019, ptr %wp1020, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a17e4
L_8001a17e8_ft:
  ; @pc 0x8001a17e8 word 0xf940012b
  %r1023.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1023 = load i64, ptr %r1023.p, align 8, !alias.scope !3, !noalias !4
  %gmp1024 = inttoptr i64 %r1023 to ptr
  %gml1025 = load i64, ptr %gmp1024, align 1, !alias.scope !4, !noalias !3
  %wp1026 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1025, ptr %wp1026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a17ec word 0xf900014b
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %gmp1029 = inttoptr i64 %r1027 to ptr
  store i64 %r1028, ptr %gmp1029, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a17f0
L_8001a181c_ft:
  ; @pc 0x8001a181c word 0xf9400009
  %r1099.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1099 = load i64, ptr %r1099.p, align 8, !alias.scope !3, !noalias !4
  %gmp1100 = inttoptr i64 %r1099 to ptr
  %gml1101 = load i64, ptr %gmp1100, align 1, !alias.scope !4, !noalias !3
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1101, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1820 word 0xf9000001
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %gmp1105 = inttoptr i64 %r1103 to ptr
  store i64 %r1104, ptr %gmp1105, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1824 word 0xa9000029
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %t1107 = add i64 %r1106, 8
  %r1108.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1108 = load i64, ptr %r1108.p, align 8, !alias.scope !3, !noalias !4
  %gmp1109 = inttoptr i64 %r1106 to ptr
  store i64 %r1108, ptr %gmp1109, align 1, !alias.scope !4, !noalias !3
  %r1110.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1110 = load i64, ptr %r1110.p, align 8, !alias.scope !3, !noalias !4
  %gmp1111 = inttoptr i64 %t1107 to ptr
  store i64 %r1110, ptr %gmp1111, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1828 word 0xb4000049
  %r1112.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1112 = load i64, ptr %r1112.p, align 8, !alias.scope !3, !noalias !4
  %cmp1113 = icmp eq i64 %r1112, 0
  br i1 %cmp1113, label %L_8001a1830, label %L_8001a182c_ft
L_8001a182c_ft:
  ; @pc 0x8001a182c word 0xf9000521
  %r1114.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1114 = load i64, ptr %r1114.p, align 8, !alias.scope !3, !noalias !4
  %t1115 = add i64 %r1114, 8
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %gmp1117 = inttoptr i64 %t1115 to ptr
  store i64 %r1116, ptr %gmp1117, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1830
L_8001a1844_ft:
  ; @pc 0x8001a1844 word 0x8b0802e9
  %r1159.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1159 = load i64, ptr %r1159.p, align 8, !alias.scope !3, !noalias !4
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1159, %r1160
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1848 word 0x8b150129
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %r1164.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1164 = load i64, ptr %r1164.p, align 8, !alias.scope !3, !noalias !4
  %t1165 = add i64 %r1163, %r1164
  %wp1166 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1165, ptr %wp1166, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a184c
L_8001a1870_ft:
  ; @pc 0x8001a1870 word 0x8b0a0129
  %r1200.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1200 = load i64, ptr %r1200.p, align 8, !alias.scope !3, !noalias !4
  %r1201.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1201 = load i64, ptr %r1201.p, align 8, !alias.scope !3, !noalias !4
  %t1202 = add i64 %r1200, %r1201
  %wp1203 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1202, ptr %wp1203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1874 word 0xf940030a
  %r1204.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1204 = load i64, ptr %r1204.p, align 8, !alias.scope !3, !noalias !4
  %gmp1205 = inttoptr i64 %r1204 to ptr
  %gml1206 = load i64, ptr %gmp1205, align 1, !alias.scope !4, !noalias !3
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1878 word 0xf9000309
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %r1209.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1209 = load i64, ptr %r1209.p, align 8, !alias.scope !3, !noalias !4
  %gmp1210 = inttoptr i64 %r1208 to ptr
  store i64 %r1209, ptr %gmp1210, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a187c word 0xa900612a
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %t1212 = add i64 %r1211, 8
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %gmp1214 = inttoptr i64 %r1211 to ptr
  store i64 %r1213, ptr %gmp1214, align 1, !alias.scope !4, !noalias !3
  %r1215.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1215 = load i64, ptr %r1215.p, align 8, !alias.scope !3, !noalias !4
  %gmp1216 = inttoptr i64 %t1212 to ptr
  store i64 %r1215, ptr %gmp1216, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1880 word 0xb400004a
  %r1217.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1217 = load i64, ptr %r1217.p, align 8, !alias.scope !3, !noalias !4
  %cmp1218 = icmp eq i64 %r1217, 0
  br i1 %cmp1218, label %L_8001a1888, label %L_8001a1884
L_8001a1904_ft:
  ; @pc 0x8001a1904 word 0x14000161
  br label %L_8001a1e88
L_8001a1920_ft:
  ; @pc 0x8001a1920 word 0x17ffffda
  br label %L_8001a1888
L_8001a192c_ft:
  ; @pc 0x8001a192c word 0x3942b270
  %r1434.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1434 = load i64, ptr %r1434.p, align 8, !alias.scope !3, !noalias !4
  %t1435 = add i64 %r1434, 172
  %gmp1436 = inttoptr i64 %t1435 to ptr
  %gml1437 = load i8, ptr %gmp1436, align 1, !alias.scope !4, !noalias !3
  %c1438 = zext i8 %gml1437 to i64
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1930 word 0x5100050d
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %c1441 = trunc i64 %r1440 to i32
  %t1442 = sub i32 %c1441, 1
  %c1443 = zext i32 %t1442 to i64
  %wp1444 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1443, ptr %wp1444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1934 word 0xaa2d03ee
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = xor i64 %r1445, -1
  %t1447 = or i64 0, %t1446
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1938 word 0x35002c50
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %c1450 = trunc i64 %r1449 to i32
  %cmp1451 = icmp ne i32 %c1450, 0
  br i1 %cmp1451, label %L_8001a1ec0, label %L_8001a193c_ft
L_8001a193c_ft:
  ; @pc 0x8001a193c word 0xaa0c03e8
  %r1452.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1452 = load i64, ptr %r1452.p, align 8, !alias.scope !3, !noalias !4
  %t1453 = or i64 0, %r1452
  %wp1454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1453, ptr %wp1454, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1940
L_8001a194c_ft:
  ; @pc 0x8001a194c word 0x79402510
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1486, 18
  %gmp1488 = inttoptr i64 %t1487 to ptr
  %gml1489 = load i16, ptr %gmp1488, align 1, !alias.scope !4, !noalias !3
  %c1490 = zext i16 %gml1489 to i64
  %wp1491 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c1490, ptr %wp1491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1950 word 0x8b100111
  %r1492.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1492 = load i64, ptr %r1492.p, align 8, !alias.scope !3, !noalias !4
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %t1494 = add i64 %r1492, %r1493
  %wp1495 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1494, ptr %wp1495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1954 word 0x91008231
  %r1496.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1496 = load i64, ptr %r1496.p, align 8, !alias.scope !3, !noalias !4
  %t1497 = add i64 %r1496, 32
  %wp1498 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1497, ptr %wp1498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1958 word 0x8b0d0232
  %r1499.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1499 = load i64, ptr %r1499.p, align 8, !alias.scope !3, !noalias !4
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %t1501 = add i64 %r1499, %r1500
  %wp1502 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t1501, ptr %wp1502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a195c word 0xcb1102f1
  %r1503.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1503 = load i64, ptr %r1503.p, align 8, !alias.scope !3, !noalias !4
  %r1504.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1504 = load i64, ptr %r1504.p, align 8, !alias.scope !3, !noalias !4
  %t1505 = sub i64 %r1503, %r1504
  %wp1506 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1505, ptr %wp1506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1960 word 0x8a0e0252
  %r1507.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1507 = load i64, ptr %r1507.p, align 8, !alias.scope !3, !noalias !4
  %r1508.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1508 = load i64, ptr %r1508.p, align 8, !alias.scope !3, !noalias !4
  %t1509 = and i64 %r1508, %r1507
  %wp1510 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t1509, ptr %wp1510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1964 word 0x8b120231
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %r1512.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1512 = load i64, ptr %r1512.p, align 8, !alias.scope !3, !noalias !4
  %t1513 = add i64 %r1511, %r1512
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1968 word 0xeb11019f
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %t1517 = sub i64 %r1515, %r1516
  %fn1518 = icmp slt i64 %t1517, 0
  %fz1519 = icmp eq i64 %t1517, 0
  %fc1520 = icmp uge i64 %r1515, %r1516
  %fx11521 = xor i64 %r1515, %r1516
  %fx21522 = xor i64 %r1515, %t1517
  %fva1523 = and i64 %fx11521, %fx21522
  %fv1524 = icmp slt i64 %fva1523, 0
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
  ; @pc 0x8001a196c word 0x54002843
  %r1537.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1537 = load i64, ptr %r1537.p, align 8, !alias.scope !3, !noalias !4
  %fsh1539 = lshr i64 %r1537, 29
  %ftr1540 = trunc i64 %fsh1539 to i1
  %cond1538 = xor i1 %ftr1540, true
  br i1 %cond1538, label %L_8001a1e74, label %L_8001a1970
L_8001a19a4_ft:
  ; @pc 0x8001a19a4 word 0x72003d3f
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %c1630 = trunc i64 %r1629 to i32
  %t1631 = and i32 %c1630, 65535
  %fn1632 = icmp slt i32 %t1631, 0
  %fz1633 = icmp eq i32 %t1631, 0
  %nz1634 = zext i1 %fn1632 to i64
  %zz1635 = zext i1 %fz1633 to i64
  %ns1636 = shl i64 %nz1634, 31
  %zs1637 = shl i64 %zz1635, 30
  %nzcv1638 = or i64 %ns1636, %zs1637
  %wp1639 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1638, ptr %wp1639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19a8 word 0x79002509
  %r1640.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1640 = load i64, ptr %r1640.p, align 8, !alias.scope !3, !noalias !4
  %t1641 = add i64 %r1640, 18
  %r1642.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1642 = load i64, ptr %r1642.p, align 8, !alias.scope !3, !noalias !4
  %c1643 = trunc i64 %r1642 to i32
  %c1644 = trunc i32 %c1643 to i16
  %gmp1645 = inttoptr i64 %t1641 to ptr
  store i16 %c1644, ptr %gmp1645, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a19ac word 0x54000080
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %fsh1648 = lshr i64 %r1646, 30
  %cond1647 = trunc i64 %fsh1648 to i1
  br i1 %cond1647, label %L_8001a19bc, label %L_8001a19b0_ft
L_8001a19b0_ft:
  ; @pc 0x8001a19b0 word 0x8b0a0129
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %r1650.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1650 = load i64, ptr %r1650.p, align 8, !alias.scope !3, !noalias !4
  %t1651 = add i64 %r1649, %r1650
  %wp1652 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1651, ptr %wp1652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19b4 word 0xb240010a
  %r1653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1653 = load i64, ptr %r1653.p, align 8, !alias.scope !3, !noalias !4
  %t1654 = or i64 %r1653, 1
  %wp1655 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1654, ptr %wp1655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19b8 word 0xf81f812a
  %r1656.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1656 = load i64, ptr %r1656.p, align 8, !alias.scope !3, !noalias !4
  %t1657 = add i64 %r1656, -8
  %r1658.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1658 = load i64, ptr %r1658.p, align 8, !alias.scope !3, !noalias !4
  %gmp1659 = inttoptr i64 %t1657 to ptr
  store i64 %r1658, ptr %gmp1659, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a19bc
L_8001a19d0_ft:
  ; @pc 0x8001a19d0 word 0xf940052b
  %r1680.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1680 = load i64, ptr %r1680.p, align 8, !alias.scope !3, !noalias !4
  %t1681 = add i64 %r1680, 8
  %gmp1682 = inttoptr i64 %t1681 to ptr
  %gml1683 = load i64, ptr %gmp1682, align 1, !alias.scope !4, !noalias !3
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19d4 word 0xf900054b
  %r1685.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1685 = load i64, ptr %r1685.p, align 8, !alias.scope !3, !noalias !4
  %t1686 = add i64 %r1685, 8
  %r1687.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1687 = load i64, ptr %r1687.p, align 8, !alias.scope !3, !noalias !4
  %gmp1688 = inttoptr i64 %t1686 to ptr
  store i64 %r1687, ptr %gmp1688, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a19d8
L_8001a19e0_ft:
  ; @pc 0x8001a19e0 word 0xf940012b
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %gmp1697 = inttoptr i64 %r1696 to ptr
  %gml1698 = load i64, ptr %gmp1697, align 1, !alias.scope !4, !noalias !3
  %wp1699 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1698, ptr %wp1699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a19e4 word 0xf900014b
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %r1701.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1701 = load i64, ptr %r1701.p, align 8, !alias.scope !3, !noalias !4
  %gmp1702 = inttoptr i64 %r1700 to ptr
  store i64 %r1701, ptr %gmp1702, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a19e8
L_8001a1a14_ft:
  ; @pc 0x8001a1a14 word 0xf9400009
  %r1772.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1772 = load i64, ptr %r1772.p, align 8, !alias.scope !3, !noalias !4
  %gmp1773 = inttoptr i64 %r1772 to ptr
  %gml1774 = load i64, ptr %gmp1773, align 1, !alias.scope !4, !noalias !3
  %wp1775 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1774, ptr %wp1775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a18 word 0xf9000001
  %r1776.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1776 = load i64, ptr %r1776.p, align 8, !alias.scope !3, !noalias !4
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %gmp1778 = inttoptr i64 %r1776 to ptr
  store i64 %r1777, ptr %gmp1778, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1a1c word 0xa9000029
  %r1779.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1779 = load i64, ptr %r1779.p, align 8, !alias.scope !3, !noalias !4
  %t1780 = add i64 %r1779, 8
  %r1781.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1781 = load i64, ptr %r1781.p, align 8, !alias.scope !3, !noalias !4
  %gmp1782 = inttoptr i64 %r1779 to ptr
  store i64 %r1781, ptr %gmp1782, align 1, !alias.scope !4, !noalias !3
  %r1783.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1783 = load i64, ptr %r1783.p, align 8, !alias.scope !3, !noalias !4
  %gmp1784 = inttoptr i64 %t1780 to ptr
  store i64 %r1783, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1a20 word 0xb4000049
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %cmp1786 = icmp eq i64 %r1785, 0
  br i1 %cmp1786, label %L_8001a1a28, label %L_8001a1a24_ft
L_8001a1a24_ft:
  ; @pc 0x8001a1a24 word 0xf9000521
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %t1788 = add i64 %r1787, 8
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %gmp1790 = inttoptr i64 %t1788 to ptr
  store i64 %r1789, ptr %gmp1790, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1a28
L_8001a1a3c_ft:
  ; @pc 0x8001a1a3c word 0x79402509
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %t1833 = add i64 %r1832, 18
  %gmp1834 = inttoptr i64 %t1833 to ptr
  %gml1835 = load i16, ptr %gmp1834, align 1, !alias.scope !4, !noalias !3
  %c1836 = zext i16 %gml1835 to i64
  %wp1837 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1836, ptr %wp1837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a40 word 0x8b0802ea
  %r1838.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1838 = load i64, ptr %r1838.p, align 8, !alias.scope !3, !noalias !4
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %t1840 = add i64 %r1838, %r1839
  %wp1841 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1840, ptr %wp1841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a44 word 0x8b090149
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %r1843.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1843 = load i64, ptr %r1843.p, align 8, !alias.scope !3, !noalias !4
  %t1844 = add i64 %r1842, %r1843
  %wp1845 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1844, ptr %wp1845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a48 word 0x17ffff81
  br label %L_8001a184c
L_8001a1a60_ft:
  ; @pc 0x8001a1a60 word 0xb2607d08
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %t1887 = or i64 %r1886, -4294967296
  %wp1888 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1887, ptr %wp1888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a64 word 0x8a080158
  %r1889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1889 = load i64, ptr %r1889.p, align 8, !alias.scope !3, !noalias !4
  %r1890.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1890 = load i64, ptr %r1890.p, align 8, !alias.scope !3, !noalias !4
  %t1891 = and i64 %r1890, %r1889
  %wp1892 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1891, ptr %wp1892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a68 word 0xf9405a68
  %r1893.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1893 = load i64, ptr %r1893.p, align 8, !alias.scope !3, !noalias !4
  %t1894 = add i64 %r1893, 176
  %gmp1895 = inttoptr i64 %t1894 to ptr
  %gml1896 = load i64, ptr %gmp1895, align 1, !alias.scope !4, !noalias !3
  %wp1897 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1896, ptr %wp1897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a6c word 0xeb18011f
  %r1898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1898 = load i64, ptr %r1898.p, align 8, !alias.scope !3, !noalias !4
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %t1900 = sub i64 %r1898, %r1899
  %fn1901 = icmp slt i64 %t1900, 0
  %fz1902 = icmp eq i64 %t1900, 0
  %fc1903 = icmp uge i64 %r1898, %r1899
  %fx11904 = xor i64 %r1898, %r1899
  %fx21905 = xor i64 %r1898, %t1900
  %fva1906 = and i64 %fx11904, %fx21905
  %fv1907 = icmp slt i64 %fva1906, 0
  %nz1908 = zext i1 %fn1901 to i64
  %zz1909 = zext i1 %fz1902 to i64
  %cz1910 = zext i1 %fc1903 to i64
  %vz1911 = zext i1 %fv1907 to i64
  %ns1912 = shl i64 %nz1908, 31
  %zs1913 = shl i64 %zz1909, 30
  %cs1914 = shl i64 %cz1910, 29
  %vs1915 = shl i64 %vz1911, 28
  %nzor1916 = or i64 %ns1912, %zs1913
  %cvor1917 = or i64 %cs1914, %vs1915
  %nzcv1918 = or i64 %nzor1916, %cvor1917
  %wp1919 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1918, ptr %wp1919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a70 word 0x54002188
  %r1920.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1920 = load i64, ptr %r1920.p, align 8, !alias.scope !3, !noalias !4
  %fsh1922 = lshr i64 %r1920, 29
  %ftr1923 = trunc i64 %fsh1922 to i1
  %fsh1924 = lshr i64 %r1920, 30
  %ftr1925 = trunc i64 %fsh1924 to i1
  %fnz1926 = xor i1 %ftr1925, true
  %cond1921 = and i1 %ftr1923, %fnz1926
  br i1 %cond1921, label %L_8001a1ea0, label %L_8001a1a74_ft
L_8001a1a74_ft:
  ; @pc 0x8001a1a74 word 0xf9005e78
  %r1927.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1927 = load i64, ptr %r1927.p, align 8, !alias.scope !3, !noalias !4
  %t1928 = add i64 %r1927, 184
  %r1929.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1929 = load i64, ptr %r1929.p, align 8, !alias.scope !3, !noalias !4
  %gmp1930 = inttoptr i64 %t1928 to ptr
  store i64 %r1929, ptr %gmp1930, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1a78 word 0xb4ffdf76
  %r1931.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1931 = load i64, ptr %r1931.p, align 8, !alias.scope !3, !noalias !4
  %cmp1932 = icmp eq i64 %r1931, 0
  br i1 %cmp1932, label %L_8001a1664, label %L_8001a1a7c_ft
L_8001a1a7c_ft:
  ; @pc 0x8001a1a7c word 0x17ffff8d
  br label %L_8001a18b0
L_8001a1a84_ft:
  ; @pc 0x8001a1a84 word 0xf9400920
  %r1935.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1935 = load i64, ptr %r1935.p, align 8, !alias.scope !3, !noalias !4
  %t1936 = add i64 %r1935, 16
  %gmp1937 = inttoptr i64 %t1936 to ptr
  %gml1938 = load i64, ptr %gmp1937, align 1, !alias.scope !4, !noalias !3
  %wp1939 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1938, ptr %wp1939, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a88 word 0xb50012c0
  %r1940.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1940 = load i64, ptr %r1940.p, align 8, !alias.scope !3, !noalias !4
  %cmp1941 = icmp ne i64 %r1940, 0
  br i1 %cmp1941, label %L_8001a1ce0, label %L_8001a1a8c
L_8001a1a98_ft:
  ; @pc 0x8001a1a98 word 0xf9401e60
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %t1971 = add i64 %r1970, 56
  %gmp1972 = inttoptr i64 %t1971 to ptr
  %gml1973 = load i64, ptr %gmp1972, align 1, !alias.scope !4, !noalias !3
  %wp1974 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1973, ptr %wp1974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1a9c word 0xb4ffde20
  %r1975.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1975 = load i64, ptr %r1975.p, align 8, !alias.scope !3, !noalias !4
  %cmp1976 = icmp eq i64 %r1975, 0
  br i1 %cmp1976, label %L_8001a1660, label %L_8001a1aa0_ft
L_8001a1aa0_ft:
  ; @pc 0x8001a1aa0 word 0x7100251f
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %c1978 = trunc i64 %r1977 to i32
  %t1979 = sub i32 %c1978, 9
  %fn1980 = icmp slt i32 %t1979, 0
  %fz1981 = icmp eq i32 %t1979, 0
  %fc1982 = icmp uge i32 %c1978, 9
  %fx11983 = xor i32 %c1978, 9
  %fx21984 = xor i32 %c1978, %t1979
  %fva1985 = and i32 %fx11983, %fx21984
  %fv1986 = icmp slt i32 %fva1985, 0
  %nz1987 = zext i1 %fn1980 to i64
  %zz1988 = zext i1 %fz1981 to i64
  %cz1989 = zext i1 %fc1982 to i64
  %vz1990 = zext i1 %fv1986 to i64
  %ns1991 = shl i64 %nz1987, 31
  %zs1992 = shl i64 %zz1988, 30
  %cs1993 = shl i64 %cz1989, 29
  %vs1994 = shl i64 %vz1990, 28
  %nzor1995 = or i64 %ns1991, %zs1992
  %cvor1996 = or i64 %cs1993, %vs1994
  %nzcv1997 = or i64 %nzor1995, %cvor1996
  %wp1998 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1997, ptr %wp1998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1aa4 word 0xaa1303fa
  %r1999.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1999 = load i64, ptr %r1999.p, align 8, !alias.scope !3, !noalias !4
  %t2000 = or i64 0, %r1999
  %wp2001 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2000, ptr %wp2001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1aa8 word 0x1a8833f8
  %r2002.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2002 = load i64, ptr %r2002.p, align 8, !alias.scope !3, !noalias !4
  %c2003 = trunc i64 %r2002 to i32
  %r2004.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2004 = load i64, ptr %r2004.p, align 8, !alias.scope !3, !noalias !4
  %fsh2006 = lshr i64 %r2004, 29
  %ftr2007 = trunc i64 %fsh2006 to i1
  %cond2005 = xor i1 %ftr2007, true
  %sel2008 = select i1 %cond2005, i32 0, i32 %c2003
  %c2009 = zext i32 %sel2008 to i64
  %wp2010 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c2009, ptr %wp2010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1aac word 0xf84c0f48
  %r2011.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2011 = load i64, ptr %r2011.p, align 8, !alias.scope !3, !noalias !4
  %t2012 = add i64 %r2011, 192
  %gmp2013 = inttoptr i64 %t2012 to ptr
  %gml2014 = load i64, ptr %gmp2013, align 1, !alias.scope !4, !noalias !3
  %wp2015 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2012, ptr %wp2015, align 8, !alias.scope !3, !noalias !4
  %wp2016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2014, ptr %wp2016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ab0 word 0xb85e8349
  %r2017.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2017 = load i64, ptr %r2017.p, align 8, !alias.scope !3, !noalias !4
  %t2018 = add i64 %r2017, -24
  %gmp2019 = inttoptr i64 %t2018 to ptr
  %gml2020 = load i32, ptr %gmp2019, align 1, !alias.scope !4, !noalias !3
  %c2021 = zext i32 %gml2020 to i64
  %wp2022 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2021, ptr %wp2022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ab4 word 0x37180049
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %t2024 = and i64 %r2023, 8
  %cmp2025 = icmp ne i64 %t2024, 0
  br i1 %cmp2025, label %L_8001a1abc, label %L_8001a1ab8_ft
L_8001a1ab8_ft:
  ; @pc 0x8001a1ab8 word 0xb40000c8
  %r2026.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2026 = load i64, ptr %r2026.p, align 8, !alias.scope !3, !noalias !4
  %cmp2027 = icmp eq i64 %r2026, 0
  br i1 %cmp2027, label %L_8001a1ad0, label %L_8001a1abc
L_8001a1afc_ft:
  ; @pc 0x8001a1afc word 0xaa0003f8
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %t2123 = or i64 0, %r2122
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2123, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1b00
L_8001a1b08_ft:
  ; @pc 0x8001a1b08 word 0xaa1703e0
  %r2134.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2134 = load i64, ptr %r2134.p, align 8, !alias.scope !3, !noalias !4
  %t2135 = or i64 0, %r2134
  %wp2136 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2135, ptr %wp2136, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b0c word 0x94a80955
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449232, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_8001a1b10
L_8001a1b64_ft:
  ; @pc 0x8001a1b64 word 0xaa1703e0
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %t2265 = or i64 0, %r2264
  %wp2266 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2265, ptr %wp2266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b68 word 0x94a80942
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449324, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x8001a1b6c word 0x17fffebd
  br label %L_8001a1660
L_8001a1b78_ft:
  ; @pc 0x8001a1b78 word 0xf9000d1a
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %t2294 = add i64 %r2293, 24
  %r2295.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2295 = load i64, ptr %r2295.p, align 8, !alias.scope !3, !noalias !4
  %gmp2296 = inttoptr i64 %t2294 to ptr
  store i64 %r2295, ptr %gmp2296, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1b7c word 0x17ffff46
  br label %L_8001a1894
L_8001a1b8c_ft:
  ; @pc 0x8001a1b8c word 0x9100219a
  %r2307.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2307 = load i64, ptr %r2307.p, align 8, !alias.scope !3, !noalias !4
  %t2308 = add i64 %r2307, 8
  %wp2309 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2308, ptr %wp2309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1b90 word 0x17ffffe8
  br label %L_8001a1b30
L_8001a1bbc_ft:
  ; @pc 0x8001a1bbc word 0x97ff6b83
  %wp2359 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449408, ptr %wp2359, align 8, !alias.scope !3, !noalias !4
  call void @f_80017c9c8(ptr %c)
  br label %L_8001a1bc0
L_8001a1bc8_ft:
  ; @pc 0x8001a1bc8 word 0x140000b1
  br label %L_8001a1e8c
L_8001a1bf8_ft:
  ; @pc 0x8001a1bf8 word 0x1400005e
  br label %L_8001a1d70
L_8001a1c04_ft:
  ; @pc 0x8001a1c04 word 0x8b170329
  %r2445.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2445 = load i64, ptr %r2445.p, align 8, !alias.scope !3, !noalias !4
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %t2447 = add i64 %r2445, %r2446
  %wp2448 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2447, ptr %wp2448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c08 word 0xf9000d09
  %r2449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2449 = load i64, ptr %r2449.p, align 8, !alias.scope !3, !noalias !4
  %t2450 = add i64 %r2449, 24
  %r2451.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2451 = load i64, ptr %r2451.p, align 8, !alias.scope !3, !noalias !4
  %gmp2452 = inttoptr i64 %t2450 to ptr
  store i64 %r2451, ptr %gmp2452, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1c0c word 0x17ffff22
  br label %L_8001a1894
L_8001a1c4c_ft:
  ; @pc 0x8001a1c4c word 0xf9400920
  %r2530.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2530 = load i64, ptr %r2530.p, align 8, !alias.scope !3, !noalias !4
  %t2531 = add i64 %r2530, 16
  %gmp2532 = inttoptr i64 %t2531 to ptr
  %gml2533 = load i64, ptr %gmp2532, align 1, !alias.scope !4, !noalias !3
  %wp2534 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2533, ptr %wp2534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c50 word 0xb4000120
  %r2535.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2535 = load i64, ptr %r2535.p, align 8, !alias.scope !3, !noalias !4
  %cmp2536 = icmp eq i64 %r2535, 0
  br i1 %cmp2536, label %L_8001a1c74, label %L_8001a1c54_ft
L_8001a1c54_ft:
  ; @pc 0x8001a1c54 word 0xa900d7f3
  %r2537.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2537 = load i64, ptr %r2537.p, align 8, !alias.scope !3, !noalias !4
  %t2538 = add i64 %r2537, 8
  %t2539 = add i64 %t2538, 8
  %r2540.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2540 = load i64, ptr %r2540.p, align 8, !alias.scope !3, !noalias !4
  %gmp2541 = inttoptr i64 %t2538 to ptr
  store i64 %r2540, ptr %gmp2541, align 1, !alias.scope !4, !noalias !3
  %r2542.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2542 = load i64, ptr %r2542.p, align 8, !alias.scope !3, !noalias !4
  %gmp2543 = inttoptr i64 %t2539 to ptr
  store i64 %r2542, ptr %gmp2543, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1c58 word 0x910023e1
  %r2544.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2544 = load i64, ptr %r2544.p, align 8, !alias.scope !3, !noalias !4
  %t2545 = add i64 %r2544, 8
  %wp2546 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2545, ptr %wp2546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c5c word 0xb9001bf4
  %r2547.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2547 = load i64, ptr %r2547.p, align 8, !alias.scope !3, !noalias !4
  %t2548 = add i64 %r2547, 24
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2549 = load i64, ptr %r2549.p, align 8, !alias.scope !3, !noalias !4
  %c2550 = trunc i64 %r2549 to i32
  %gmp2551 = inttoptr i64 %t2548 to ptr
  store i32 %c2550, ptr %gmp2551, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1c60 word 0xf90013f9
  %r2552.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2552 = load i64, ptr %r2552.p, align 8, !alias.scope !3, !noalias !4
  %t2553 = add i64 %r2552, 32
  %r2554.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2554 = load i64, ptr %r2554.p, align 8, !alias.scope !3, !noalias !4
  %gmp2555 = inttoptr i64 %t2553 to ptr
  store i64 %r2554, ptr %gmp2555, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1c64 word 0xb9002bf4
  %r2556.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2556 = load i64, ptr %r2556.p, align 8, !alias.scope !3, !noalias !4
  %t2557 = add i64 %r2556, 40
  %r2558.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2558 = load i64, ptr %r2558.p, align 8, !alias.scope !3, !noalias !4
  %c2559 = trunc i64 %r2558 to i32
  %gmp2560 = inttoptr i64 %t2557 to ptr
  store i32 %c2559, ptr %gmp2560, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1c68 word 0xf9400008
  %r2561.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2561 = load i64, ptr %r2561.p, align 8, !alias.scope !3, !noalias !4
  %gmp2562 = inttoptr i64 %r2561 to ptr
  %gml2563 = load i64, ptr %gmp2562, align 1, !alias.scope !4, !noalias !3
  %wp2564 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2563, ptr %wp2564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c6c word 0xf9400108
  %r2565.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2565 = load i64, ptr %r2565.p, align 8, !alias.scope !3, !noalias !4
  %gmp2566 = inttoptr i64 %r2565 to ptr
  %gml2567 = load i64, ptr %gmp2566, align 1, !alias.scope !4, !noalias !3
  %wp2568 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2567, ptr %wp2568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c70 word 0xd63f0100
  %r2569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2569 = load i64, ptr %r2569.p, align 8, !alias.scope !3, !noalias !4
  %fp2570 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2569, ptr %fp2570, align 8, !alias.scope !3, !noalias !4
  %wp2571 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449588, ptr %wp2571, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_8001a1c74
L_8001a1c94_ft:
  ; @pc 0x8001a1c94 word 0xb2607d4a
  %r2619.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2619 = load i64, ptr %r2619.p, align 8, !alias.scope !3, !noalias !4
  %t2620 = or i64 %r2619, -4294967296
  %wp2621 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2620, ptr %wp2621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c98 word 0x8a0a0118
  %r2622.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2622 = load i64, ptr %r2622.p, align 8, !alias.scope !3, !noalias !4
  %r2623.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2623 = load i64, ptr %r2623.p, align 8, !alias.scope !3, !noalias !4
  %t2624 = and i64 %r2623, %r2622
  %wp2625 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2624, ptr %wp2625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1c9c word 0xf9405a68
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %t2627 = add i64 %r2626, 176
  %gmp2628 = inttoptr i64 %t2627 to ptr
  %gml2629 = load i64, ptr %gmp2628, align 1, !alias.scope !4, !noalias !3
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2629, ptr %wp2630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ca0 word 0xeb18011f
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %r2632.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2632 = load i64, ptr %r2632.p, align 8, !alias.scope !3, !noalias !4
  %t2633 = sub i64 %r2631, %r2632
  %fn2634 = icmp slt i64 %t2633, 0
  %fz2635 = icmp eq i64 %t2633, 0
  %fc2636 = icmp uge i64 %r2631, %r2632
  %fx12637 = xor i64 %r2631, %r2632
  %fx22638 = xor i64 %r2631, %t2633
  %fva2639 = and i64 %fx12637, %fx22638
  %fv2640 = icmp slt i64 %fva2639, 0
  %nz2641 = zext i1 %fn2634 to i64
  %zz2642 = zext i1 %fz2635 to i64
  %cz2643 = zext i1 %fc2636 to i64
  %vz2644 = zext i1 %fv2640 to i64
  %ns2645 = shl i64 %nz2641, 31
  %zs2646 = shl i64 %zz2642, 30
  %cs2647 = shl i64 %cz2643, 29
  %vs2648 = shl i64 %vz2644, 28
  %nzor2649 = or i64 %ns2645, %zs2646
  %cvor2650 = or i64 %cs2647, %vs2648
  %nzcv2651 = or i64 %nzor2649, %cvor2650
  %wp2652 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2651, ptr %wp2652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ca4 word 0x540006a9
  %r2653.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2653 = load i64, ptr %r2653.p, align 8, !alias.scope !3, !noalias !4
  %fsh2655 = lshr i64 %r2653, 29
  %ftr2656 = trunc i64 %fsh2655 to i1
  %fsh2657 = lshr i64 %r2653, 30
  %ftr2658 = trunc i64 %fsh2657 to i1
  %fnz2659 = xor i1 %ftr2658, true
  %fhi2660 = and i1 %ftr2656, %fnz2659
  %cond2654 = xor i1 %fhi2660, true
  br i1 %cond2654, label %L_8001a1d78, label %L_8001a1ca8
L_8001a1cb0_ft:
  ; @pc 0x8001a1cb0 word 0xf9400920
  %r2668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2668 = load i64, ptr %r2668.p, align 8, !alias.scope !3, !noalias !4
  %t2669 = add i64 %r2668, 16
  %gmp2670 = inttoptr i64 %t2669 to ptr
  %gml2671 = load i64, ptr %gmp2670, align 1, !alias.scope !4, !noalias !3
  %wp2672 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2671, ptr %wp2672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cb4 word 0xb4ffeec0
  %r2673.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2673 = load i64, ptr %r2673.p, align 8, !alias.scope !3, !noalias !4
  %cmp2674 = icmp eq i64 %r2673, 0
  br i1 %cmp2674, label %L_8001a1a8c, label %L_8001a1cb8_ft
L_8001a1cb8_ft:
  ; @pc 0x8001a1cb8 word 0xa900d7f3
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
  ; @pc 0x8001a1cbc word 0x910023e1
  %r2682.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2682 = load i64, ptr %r2682.p, align 8, !alias.scope !3, !noalias !4
  %t2683 = add i64 %r2682, 8
  %wp2684 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2683, ptr %wp2684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cc0 word 0xb9001bf4
  %r2685.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2685 = load i64, ptr %r2685.p, align 8, !alias.scope !3, !noalias !4
  %t2686 = add i64 %r2685, 24
  %r2687.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2687 = load i64, ptr %r2687.p, align 8, !alias.scope !3, !noalias !4
  %c2688 = trunc i64 %r2687 to i32
  %gmp2689 = inttoptr i64 %t2686 to ptr
  store i32 %c2688, ptr %gmp2689, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1cc4 word 0xf90013f9
  %r2690.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2690 = load i64, ptr %r2690.p, align 8, !alias.scope !3, !noalias !4
  %t2691 = add i64 %r2690, 32
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %gmp2693 = inttoptr i64 %t2691 to ptr
  store i64 %r2692, ptr %gmp2693, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1cc8 word 0xb9002beb
  %r2694.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2694 = load i64, ptr %r2694.p, align 8, !alias.scope !3, !noalias !4
  %t2695 = add i64 %r2694, 40
  %r2696.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2696 = load i64, ptr %r2696.p, align 8, !alias.scope !3, !noalias !4
  %c2697 = trunc i64 %r2696 to i32
  %gmp2698 = inttoptr i64 %t2695 to ptr
  store i32 %c2697, ptr %gmp2698, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1ccc word 0xf9400008
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %gmp2700 = inttoptr i64 %r2699 to ptr
  %gml2701 = load i64, ptr %gmp2700, align 1, !alias.scope !4, !noalias !3
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2701, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cd0 word 0xf9400108
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %gmp2704 = inttoptr i64 %r2703 to ptr
  %gml2705 = load i64, ptr %gmp2704, align 1, !alias.scope !4, !noalias !3
  %wp2706 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2705, ptr %wp2706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cd4 word 0xd63f0100
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %fp2708 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2707, ptr %fp2708, align 8, !alias.scope !3, !noalias !4
  %wp2709 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361449688, ptr %wp2709, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a1cd8 word 0x2a1a03e8
  %r2710.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2710 = load i64, ptr %r2710.p, align 8, !alias.scope !3, !noalias !4
  %c2711 = trunc i64 %r2710 to i32
  %t2712 = or i32 0, %c2711
  %c2713 = zext i32 %t2712 to i64
  %wp2714 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2713, ptr %wp2714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1cdc word 0x17ffff6c
  br label %L_8001a1a8c
L_8001a1d10_ft:
  ; @pc 0x8001a1d10 word 0xf9400b20
  %r2762.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2762 = load i64, ptr %r2762.p, align 8, !alias.scope !3, !noalias !4
  %t2763 = add i64 %r2762, 16
  %gmp2764 = inttoptr i64 %t2763 to ptr
  %gml2765 = load i64, ptr %gmp2764, align 1, !alias.scope !4, !noalias !3
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2765, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d14 word 0xb4000120
  %r2767.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2767 = load i64, ptr %r2767.p, align 8, !alias.scope !3, !noalias !4
  %cmp2768 = icmp eq i64 %r2767, 0
  br i1 %cmp2768, label %L_8001a1d38, label %L_8001a1d18_ft
L_8001a1d18_ft:
  ; @pc 0x8001a1d18 word 0xa900d7f3
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %t2770 = add i64 %r2769, 8
  %t2771 = add i64 %t2770, 8
  %r2772.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2772 = load i64, ptr %r2772.p, align 8, !alias.scope !3, !noalias !4
  %gmp2773 = inttoptr i64 %t2770 to ptr
  store i64 %r2772, ptr %gmp2773, align 1, !alias.scope !4, !noalias !3
  %r2774.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2774 = load i64, ptr %r2774.p, align 8, !alias.scope !3, !noalias !4
  %gmp2775 = inttoptr i64 %t2771 to ptr
  store i64 %r2774, ptr %gmp2775, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d1c word 0xb9001bf4
  %r2776.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2776 = load i64, ptr %r2776.p, align 8, !alias.scope !3, !noalias !4
  %t2777 = add i64 %r2776, 24
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %c2779 = trunc i64 %r2778 to i32
  %gmp2780 = inttoptr i64 %t2777 to ptr
  store i32 %c2779, ptr %gmp2780, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d20 word 0xf90013f7
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 32
  %r2783.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2783 = load i64, ptr %r2783.p, align 8, !alias.scope !3, !noalias !4
  %gmp2784 = inttoptr i64 %t2782 to ptr
  store i64 %r2783, ptr %gmp2784, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d24 word 0xb9002be8
  %r2785.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2785 = load i64, ptr %r2785.p, align 8, !alias.scope !3, !noalias !4
  %t2786 = add i64 %r2785, 40
  %r2787.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2787 = load i64, ptr %r2787.p, align 8, !alias.scope !3, !noalias !4
  %c2788 = trunc i64 %r2787 to i32
  %gmp2789 = inttoptr i64 %t2786 to ptr
  store i32 %c2788, ptr %gmp2789, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1d28
L_8001a1d40_ft:
  ; @pc 0x8001a1d40 word 0x17fffedc
  br label %L_8001a18b0
L_8001a1d48_ft:
  ; @pc 0x8001a1d48 word 0xf9400b20
  %r2810.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2810 = load i64, ptr %r2810.p, align 8, !alias.scope !3, !noalias !4
  %t2811 = add i64 %r2810, 16
  %gmp2812 = inttoptr i64 %t2811 to ptr
  %gml2813 = load i64, ptr %gmp2812, align 1, !alias.scope !4, !noalias !3
  %wp2814 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2813, ptr %wp2814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d4c word 0xb4000120
  %r2815.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2815 = load i64, ptr %r2815.p, align 8, !alias.scope !3, !noalias !4
  %cmp2816 = icmp eq i64 %r2815, 0
  br i1 %cmp2816, label %L_8001a1d70, label %L_8001a1d50_ft
L_8001a1d50_ft:
  ; @pc 0x8001a1d50 word 0xa900d7f3
  %r2817.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2817 = load i64, ptr %r2817.p, align 8, !alias.scope !3, !noalias !4
  %t2818 = add i64 %r2817, 8
  %t2819 = add i64 %t2818, 8
  %r2820.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2820 = load i64, ptr %r2820.p, align 8, !alias.scope !3, !noalias !4
  %gmp2821 = inttoptr i64 %t2818 to ptr
  store i64 %r2820, ptr %gmp2821, align 1, !alias.scope !4, !noalias !3
  %r2822.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2822 = load i64, ptr %r2822.p, align 8, !alias.scope !3, !noalias !4
  %gmp2823 = inttoptr i64 %t2819 to ptr
  store i64 %r2822, ptr %gmp2823, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d54 word 0xb9001bf4
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = add i64 %r2824, 24
  %r2826.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2826 = load i64, ptr %r2826.p, align 8, !alias.scope !3, !noalias !4
  %c2827 = trunc i64 %r2826 to i32
  %gmp2828 = inttoptr i64 %t2825 to ptr
  store i32 %c2827, ptr %gmp2828, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d58 word 0xf90013f7
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %t2830 = add i64 %r2829, 32
  %r2831.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2831 = load i64, ptr %r2831.p, align 8, !alias.scope !3, !noalias !4
  %gmp2832 = inttoptr i64 %t2830 to ptr
  store i64 %r2831, ptr %gmp2832, align 1, !alias.scope !4, !noalias !3
  br label %L_8001a1d5c
L_8001a1d88_ft:
  ; @pc 0x8001a1d88 word 0xf9400b20
  %r2865.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2865 = load i64, ptr %r2865.p, align 8, !alias.scope !3, !noalias !4
  %t2866 = add i64 %r2865, 16
  %gmp2867 = inttoptr i64 %t2866 to ptr
  %gml2868 = load i64, ptr %gmp2867, align 1, !alias.scope !4, !noalias !3
  %wp2869 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2868, ptr %wp2869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1d8c word 0xb4ffff20
  %r2870.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2870 = load i64, ptr %r2870.p, align 8, !alias.scope !3, !noalias !4
  %cmp2871 = icmp eq i64 %r2870, 0
  br i1 %cmp2871, label %L_8001a1d70, label %L_8001a1d90_ft
L_8001a1d90_ft:
  ; @pc 0x8001a1d90 word 0xa900d7f3
  %r2872.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2872 = load i64, ptr %r2872.p, align 8, !alias.scope !3, !noalias !4
  %t2873 = add i64 %r2872, 8
  %t2874 = add i64 %t2873, 8
  %r2875.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2875 = load i64, ptr %r2875.p, align 8, !alias.scope !3, !noalias !4
  %gmp2876 = inttoptr i64 %t2873 to ptr
  store i64 %r2875, ptr %gmp2876, align 1, !alias.scope !4, !noalias !3
  %r2877.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2877 = load i64, ptr %r2877.p, align 8, !alias.scope !3, !noalias !4
  %gmp2878 = inttoptr i64 %t2874 to ptr
  store i64 %r2877, ptr %gmp2878, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d94 word 0xb9001bf4
  %r2879.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2879 = load i64, ptr %r2879.p, align 8, !alias.scope !3, !noalias !4
  %t2880 = add i64 %r2879, 24
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %c2882 = trunc i64 %r2881 to i32
  %gmp2883 = inttoptr i64 %t2880 to ptr
  store i32 %c2882, ptr %gmp2883, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d98 word 0xf90013e8
  %r2884.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2884 = load i64, ptr %r2884.p, align 8, !alias.scope !3, !noalias !4
  %t2885 = add i64 %r2884, 32
  %r2886.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2886 = load i64, ptr %r2886.p, align 8, !alias.scope !3, !noalias !4
  %gmp2887 = inttoptr i64 %t2885 to ptr
  store i64 %r2886, ptr %gmp2887, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1d9c word 0x17fffff0
  br label %L_8001a1d5c
L_8001a1dac_ft:
  ; @pc 0x8001a1dac word 0xaa1f03e8
  %t2919 = or i64 0, 0
  %wp2920 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2919, ptr %wp2920, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1db0
L_8001a1dbc_ft:
  ; @pc 0x8001a1dbc word 0xb4000088
  %r2952.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2952 = load i64, ptr %r2952.p, align 8, !alias.scope !3, !noalias !4
  %cmp2953 = icmp eq i64 %r2952, 0
  br i1 %cmp2953, label %L_8001a1dcc, label %L_8001a1dc0_ft
L_8001a1dc0_ft:
  ; @pc 0x8001a1dc0 word 0xf9400d0e
  %r2954.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2954 = load i64, ptr %r2954.p, align 8, !alias.scope !3, !noalias !4
  %t2955 = add i64 %r2954, 24
  %gmp2956 = inttoptr i64 %t2955 to ptr
  %gml2957 = load i64, ptr %gmp2956, align 1, !alias.scope !4, !noalias !3
  %wp2958 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml2957, ptr %wp2958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dc4 word 0xeb0d01df
  %r2959.p = getelementptr inbounds i8, ptr %c, i64 112
  %r2959 = load i64, ptr %r2959.p, align 8, !alias.scope !3, !noalias !4
  %r2960.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2960 = load i64, ptr %r2960.p, align 8, !alias.scope !3, !noalias !4
  %t2961 = sub i64 %r2959, %r2960
  %fn2962 = icmp slt i64 %t2961, 0
  %fz2963 = icmp eq i64 %t2961, 0
  %fc2964 = icmp uge i64 %r2959, %r2960
  %fx12965 = xor i64 %r2959, %r2960
  %fx22966 = xor i64 %r2959, %t2961
  %fva2967 = and i64 %fx12965, %fx22966
  %fv2968 = icmp slt i64 %fva2967, 0
  %nz2969 = zext i1 %fn2962 to i64
  %zz2970 = zext i1 %fz2963 to i64
  %cz2971 = zext i1 %fc2964 to i64
  %vz2972 = zext i1 %fv2968 to i64
  %ns2973 = shl i64 %nz2969, 31
  %zs2974 = shl i64 %zz2970, 30
  %cs2975 = shl i64 %cz2971, 29
  %vs2976 = shl i64 %vz2972, 28
  %nzor2977 = or i64 %ns2973, %zs2974
  %cvor2978 = or i64 %cs2975, %vs2976
  %nzcv2979 = or i64 %nzor2977, %cvor2978
  %wp2980 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2979, ptr %wp2980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dc8 word 0x54000049
  %r2981.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2981 = load i64, ptr %r2981.p, align 8, !alias.scope !3, !noalias !4
  %fsh2983 = lshr i64 %r2981, 29
  %ftr2984 = trunc i64 %fsh2983 to i1
  %fsh2985 = lshr i64 %r2981, 30
  %ftr2986 = trunc i64 %fsh2985 to i1
  %fnz2987 = xor i1 %ftr2986, true
  %fhi2988 = and i1 %ftr2984, %fnz2987
  %cond2982 = xor i1 %fhi2988, true
  br i1 %cond2982, label %L_8001a1dd0, label %L_8001a1dcc
L_8001a1de8_ft:
  ; @pc 0x8001a1de8 word 0xf9400d1a
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %t3034 = add i64 %r3033, 24
  %gmp3035 = inttoptr i64 %t3034 to ptr
  %gml3036 = load i64, ptr %gmp3035, align 1, !alias.scope !4, !noalias !3
  %wp3037 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml3036, ptr %wp3037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1dec word 0x17fffe73
  br label %L_8001a17b8
L_8001a1e08_ft:
  ; @pc 0x8001a1e08 word 0xaa1f03e8
  %t3071 = or i64 0, 0
  %wp3072 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3071, ptr %wp3072, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1e0c
L_8001a1e18_ft:
  ; @pc 0x8001a1e18 word 0xb4000088
  %r3104.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3104 = load i64, ptr %r3104.p, align 8, !alias.scope !3, !noalias !4
  %cmp3105 = icmp eq i64 %r3104, 0
  br i1 %cmp3105, label %L_8001a1e28, label %L_8001a1e1c_ft
L_8001a1e1c_ft:
  ; @pc 0x8001a1e1c word 0xf9400d0e
  %r3106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3106 = load i64, ptr %r3106.p, align 8, !alias.scope !3, !noalias !4
  %t3107 = add i64 %r3106, 24
  %gmp3108 = inttoptr i64 %t3107 to ptr
  %gml3109 = load i64, ptr %gmp3108, align 1, !alias.scope !4, !noalias !3
  %wp3110 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3109, ptr %wp3110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e20 word 0xeb0d01df
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %r3112.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3112 = load i64, ptr %r3112.p, align 8, !alias.scope !3, !noalias !4
  %t3113 = sub i64 %r3111, %r3112
  %fn3114 = icmp slt i64 %t3113, 0
  %fz3115 = icmp eq i64 %t3113, 0
  %fc3116 = icmp uge i64 %r3111, %r3112
  %fx13117 = xor i64 %r3111, %r3112
  %fx23118 = xor i64 %r3111, %t3113
  %fva3119 = and i64 %fx13117, %fx23118
  %fv3120 = icmp slt i64 %fva3119, 0
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
  ; @pc 0x8001a1e24 word 0x54000042
  %r3133.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3133 = load i64, ptr %r3133.p, align 8, !alias.scope !3, !noalias !4
  %fsh3135 = lshr i64 %r3133, 29
  %cond3134 = trunc i64 %fsh3135 to i1
  br i1 %cond3134, label %L_8001a1e2c, label %L_8001a1e28
L_8001a1e40_ft:
  ; @pc 0x8001a1e40 word 0x17ffffe9
  br label %L_8001a1de4
L_8001a1e70_ft:
  ; @pc 0x8001a1e70 word 0x17ffffdd
  br label %L_8001a1de4
L_8001a1e90_ft:
  ; @pc 0x8001a1e90 word 0xf9400b20
  %r3328.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3328 = load i64, ptr %r3328.p, align 8, !alias.scope !3, !noalias !4
  %t3329 = add i64 %r3328, 16
  %gmp3330 = inttoptr i64 %t3329 to ptr
  %gml3331 = load i64, ptr %gmp3330, align 1, !alias.scope !4, !noalias !3
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3331, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1e94 word 0xb5000fa0
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %cmp3334 = icmp ne i64 %r3333, 0
  br i1 %cmp3334, label %L_8001a2088, label %L_8001a1e98
L_8001a1ea4_ft:
  ; @pc 0x8001a1ea4 word 0xf9400b20
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %t3340 = add i64 %r3339, 16
  %gmp3341 = inttoptr i64 %t3340 to ptr
  %gml3342 = load i64, ptr %gmp3341, align 1, !alias.scope !4, !noalias !3
  %wp3343 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3342, ptr %wp3343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ea8 word 0xb4fff480
  %r3344.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3344 = load i64, ptr %r3344.p, align 8, !alias.scope !3, !noalias !4
  %cmp3345 = icmp eq i64 %r3344, 0
  br i1 %cmp3345, label %L_8001a1d38, label %L_8001a1eac_ft
L_8001a1eac_ft:
  ; @pc 0x8001a1eac word 0xa900d7f3
  %r3346.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3346 = load i64, ptr %r3346.p, align 8, !alias.scope !3, !noalias !4
  %t3347 = add i64 %r3346, 8
  %t3348 = add i64 %t3347, 8
  %r3349.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3349 = load i64, ptr %r3349.p, align 8, !alias.scope !3, !noalias !4
  %gmp3350 = inttoptr i64 %t3347 to ptr
  store i64 %r3349, ptr %gmp3350, align 1, !alias.scope !4, !noalias !3
  %r3351.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3351 = load i64, ptr %r3351.p, align 8, !alias.scope !3, !noalias !4
  %gmp3352 = inttoptr i64 %t3348 to ptr
  store i64 %r3351, ptr %gmp3352, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1eb0 word 0xb9001bf4
  %r3353.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3353 = load i64, ptr %r3353.p, align 8, !alias.scope !3, !noalias !4
  %t3354 = add i64 %r3353, 24
  %r3355.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3355 = load i64, ptr %r3355.p, align 8, !alias.scope !3, !noalias !4
  %c3356 = trunc i64 %r3355 to i32
  %gmp3357 = inttoptr i64 %t3354 to ptr
  store i32 %c3356, ptr %gmp3357, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1eb4 word 0xf90013f7
  %r3358.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3358 = load i64, ptr %r3358.p, align 8, !alias.scope !3, !noalias !4
  %t3359 = add i64 %r3358, 32
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %gmp3361 = inttoptr i64 %t3359 to ptr
  store i64 %r3360, ptr %gmp3361, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1eb8 word 0xb9002be9
  %r3362.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3362 = load i64, ptr %r3362.p, align 8, !alias.scope !3, !noalias !4
  %t3363 = add i64 %r3362, 40
  %r3364.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3364 = load i64, ptr %r3364.p, align 8, !alias.scope !3, !noalias !4
  %c3365 = trunc i64 %r3364 to i32
  %gmp3366 = inttoptr i64 %t3363 to ptr
  store i32 %c3365, ptr %gmp3366, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001a1ebc word 0x17ffff9b
  br label %L_8001a1d28
L_8001a1ecc_ft:
  ; @pc 0x8001a1ecc word 0xaa1f03e8
  %t3398 = or i64 0, 0
  %wp3399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3398, ptr %wp3399, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1ed0
L_8001a1ef0_ft:
  ; @pc 0x8001a1ef0 word 0x14000062
  br label %L_8001a2078
L_8001a1f18_ft:
  ; @pc 0x8001a1f18 word 0xb4000088
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %cmp3525 = icmp eq i64 %r3524, 0
  br i1 %cmp3525, label %L_8001a1f28, label %L_8001a1f1c_ft
L_8001a1f1c_ft:
  ; @pc 0x8001a1f1c word 0xf9400d10
  %r3526.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3526 = load i64, ptr %r3526.p, align 8, !alias.scope !3, !noalias !4
  %t3527 = add i64 %r3526, 24
  %gmp3528 = inttoptr i64 %t3527 to ptr
  %gml3529 = load i64, ptr %gmp3528, align 1, !alias.scope !4, !noalias !3
  %wp3530 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml3529, ptr %wp3530, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f20 word 0xeb0f021f
  %r3531.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3531 = load i64, ptr %r3531.p, align 8, !alias.scope !3, !noalias !4
  %r3532.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3532 = load i64, ptr %r3532.p, align 8, !alias.scope !3, !noalias !4
  %t3533 = sub i64 %r3531, %r3532
  %fn3534 = icmp slt i64 %t3533, 0
  %fz3535 = icmp eq i64 %t3533, 0
  %fc3536 = icmp uge i64 %r3531, %r3532
  %fx13537 = xor i64 %r3531, %r3532
  %fx23538 = xor i64 %r3531, %t3533
  %fva3539 = and i64 %fx13537, %fx23538
  %fv3540 = icmp slt i64 %fva3539, 0
  %nz3541 = zext i1 %fn3534 to i64
  %zz3542 = zext i1 %fz3535 to i64
  %cz3543 = zext i1 %fc3536 to i64
  %vz3544 = zext i1 %fv3540 to i64
  %ns3545 = shl i64 %nz3541, 31
  %zs3546 = shl i64 %zz3542, 30
  %cs3547 = shl i64 %cz3543, 29
  %vs3548 = shl i64 %vz3544, 28
  %nzor3549 = or i64 %ns3545, %zs3546
  %cvor3550 = or i64 %cs3547, %vs3548
  %nzcv3551 = or i64 %nzor3549, %cvor3550
  %wp3552 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3551, ptr %wp3552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1f24 word 0x54fffdc9
  %r3553.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3553 = load i64, ptr %r3553.p, align 8, !alias.scope !3, !noalias !4
  %fsh3555 = lshr i64 %r3553, 29
  %ftr3556 = trunc i64 %fsh3555 to i1
  %fsh3557 = lshr i64 %r3553, 30
  %ftr3558 = trunc i64 %fsh3557 to i1
  %fnz3559 = xor i1 %ftr3558, true
  %fhi3560 = and i1 %ftr3556, %fnz3559
  %cond3554 = xor i1 %fhi3560, true
  br i1 %cond3554, label %L_8001a1edc, label %L_8001a1f28
L_8001a1f70_ft:
  ; @pc 0x8001a1f70 word 0xaa1f03e8
  %t3629 = or i64 0, 0
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a1f74
L_8001a1f94_ft:
  ; @pc 0x8001a1f94 word 0x14000039
  br label %L_8001a2078
L_8001a1fbc_ft:
  ; @pc 0x8001a1fbc word 0xb4000088
  %r3755.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3755 = load i64, ptr %r3755.p, align 8, !alias.scope !3, !noalias !4
  %cmp3756 = icmp eq i64 %r3755, 0
  br i1 %cmp3756, label %L_8001a1fcc, label %L_8001a1fc0_ft
L_8001a1fc0_ft:
  ; @pc 0x8001a1fc0 word 0xf9400d10
  %r3757.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3757 = load i64, ptr %r3757.p, align 8, !alias.scope !3, !noalias !4
  %t3758 = add i64 %r3757, 24
  %gmp3759 = inttoptr i64 %t3758 to ptr
  %gml3760 = load i64, ptr %gmp3759, align 1, !alias.scope !4, !noalias !3
  %wp3761 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml3760, ptr %wp3761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fc4 word 0xeb0f021f
  %r3762.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3762 = load i64, ptr %r3762.p, align 8, !alias.scope !3, !noalias !4
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3763 = load i64, ptr %r3763.p, align 8, !alias.scope !3, !noalias !4
  %t3764 = sub i64 %r3762, %r3763
  %fn3765 = icmp slt i64 %t3764, 0
  %fz3766 = icmp eq i64 %t3764, 0
  %fc3767 = icmp uge i64 %r3762, %r3763
  %fx13768 = xor i64 %r3762, %r3763
  %fx23769 = xor i64 %r3762, %t3764
  %fva3770 = and i64 %fx13768, %fx23769
  %fv3771 = icmp slt i64 %fva3770, 0
  %nz3772 = zext i1 %fn3765 to i64
  %zz3773 = zext i1 %fz3766 to i64
  %cz3774 = zext i1 %fc3767 to i64
  %vz3775 = zext i1 %fv3771 to i64
  %ns3776 = shl i64 %nz3772, 31
  %zs3777 = shl i64 %zz3773, 30
  %cs3778 = shl i64 %cz3774, 29
  %vs3779 = shl i64 %vz3775, 28
  %nzor3780 = or i64 %ns3776, %zs3777
  %cvor3781 = or i64 %cs3778, %vs3779
  %nzcv3782 = or i64 %nzor3780, %cvor3781
  %wp3783 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3782, ptr %wp3783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fc8 word 0x54fffdc2
  %r3784.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3784 = load i64, ptr %r3784.p, align 8, !alias.scope !3, !noalias !4
  %fsh3786 = lshr i64 %r3784, 29
  %cond3785 = trunc i64 %fsh3786 to i1
  br i1 %cond3785, label %L_8001a1f80, label %L_8001a1fcc
L_8001a1fdc_ft:
  ; @pc 0x8001a1fdc word 0xf9401e60
  %r3815.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3815 = load i64, ptr %r3815.p, align 8, !alias.scope !3, !noalias !4
  %t3816 = add i64 %r3815, 56
  %gmp3817 = inttoptr i64 %t3816 to ptr
  %gml3818 = load i64, ptr %gmp3817, align 1, !alias.scope !4, !noalias !3
  %wp3819 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3818, ptr %wp3819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fe0 word 0xb940ce61
  %r3820.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3820 = load i64, ptr %r3820.p, align 8, !alias.scope !3, !noalias !4
  %t3821 = add i64 %r3820, 204
  %gmp3822 = inttoptr i64 %t3821 to ptr
  %gml3823 = load i32, ptr %gmp3822, align 1, !alias.scope !4, !noalias !3
  %c3824 = zext i32 %gml3823 to i64
  %wp3825 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3824, ptr %wp3825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fe4 word 0xf9400008
  %r3826.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3826 = load i64, ptr %r3826.p, align 8, !alias.scope !3, !noalias !4
  %gmp3827 = inttoptr i64 %r3826 to ptr
  %gml3828 = load i64, ptr %gmp3827, align 1, !alias.scope !4, !noalias !3
  %wp3829 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3828, ptr %wp3829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fe8 word 0xf9404508
  %r3830.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3830 = load i64, ptr %r3830.p, align 8, !alias.scope !3, !noalias !4
  %t3831 = add i64 %r3830, 136
  %gmp3832 = inttoptr i64 %t3831 to ptr
  %gml3833 = load i64, ptr %gmp3832, align 1, !alias.scope !4, !noalias !3
  %wp3834 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3833, ptr %wp3834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1fec word 0xd63f0100
  %r3835.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3835 = load i64, ptr %r3835.p, align 8, !alias.scope !3, !noalias !4
  %fp3836 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3835, ptr %fp3836, align 8, !alias.scope !3, !noalias !4
  %wp3837 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361450480, ptr %wp3837, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a1ff0 word 0xeb00037f
  %r3838.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3838 = load i64, ptr %r3838.p, align 8, !alias.scope !3, !noalias !4
  %r3839.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3839 = load i64, ptr %r3839.p, align 8, !alias.scope !3, !noalias !4
  %t3840 = sub i64 %r3838, %r3839
  %fn3841 = icmp slt i64 %t3840, 0
  %fz3842 = icmp eq i64 %t3840, 0
  %fc3843 = icmp uge i64 %r3838, %r3839
  %fx13844 = xor i64 %r3838, %r3839
  %fx23845 = xor i64 %r3838, %t3840
  %fva3846 = and i64 %fx13844, %fx23845
  %fv3847 = icmp slt i64 %fva3846, 0
  %nz3848 = zext i1 %fn3841 to i64
  %zz3849 = zext i1 %fz3842 to i64
  %cz3850 = zext i1 %fc3843 to i64
  %vz3851 = zext i1 %fv3847 to i64
  %ns3852 = shl i64 %nz3848, 31
  %zs3853 = shl i64 %zz3849, 30
  %cs3854 = shl i64 %cz3850, 29
  %vs3855 = shl i64 %vz3851, 28
  %nzor3856 = or i64 %ns3852, %zs3853
  %cvor3857 = or i64 %cs3854, %vs3855
  %nzcv3858 = or i64 %nzor3856, %cvor3857
  %wp3859 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3858, ptr %wp3859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ff4 word 0x54ffe408
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %fsh3862 = lshr i64 %r3860, 29
  %ftr3863 = trunc i64 %fsh3862 to i1
  %fsh3864 = lshr i64 %r3860, 30
  %ftr3865 = trunc i64 %fsh3864 to i1
  %fnz3866 = xor i1 %ftr3865, true
  %cond3861 = and i1 %ftr3863, %fnz3866
  br i1 %cond3861, label %L_8001a1c74, label %L_8001a1ff8_ft
L_8001a1ff8_ft:
  ; @pc 0x8001a1ff8 word 0xaa0003f9
  %r3867.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3867 = load i64, ptr %r3867.p, align 8, !alias.scope !3, !noalias !4
  %t3868 = or i64 0, %r3867
  %wp3869 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3868, ptr %wp3869, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a1ffc word 0xf9401e60
  %r3870.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3870 = load i64, ptr %r3870.p, align 8, !alias.scope !3, !noalias !4
  %t3871 = add i64 %r3870, 56
  %gmp3872 = inttoptr i64 %t3871 to ptr
  %gml3873 = load i64, ptr %gmp3872, align 1, !alias.scope !4, !noalias !3
  %wp3874 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3873, ptr %wp3874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2000 word 0xaa1903e1
  %r3875.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3875 = load i64, ptr %r3875.p, align 8, !alias.scope !3, !noalias !4
  %t3876 = or i64 0, %r3875
  %wp3877 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3876, ptr %wp3877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2004 word 0xb940ce62
  %r3878.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3878 = load i64, ptr %r3878.p, align 8, !alias.scope !3, !noalias !4
  %t3879 = add i64 %r3878, 204
  %gmp3880 = inttoptr i64 %t3879 to ptr
  %gml3881 = load i32, ptr %gmp3880, align 1, !alias.scope !4, !noalias !3
  %c3882 = zext i32 %gml3881 to i64
  %wp3883 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3882, ptr %wp3883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2008 word 0xf9400008
  %r3884.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3884 = load i64, ptr %r3884.p, align 8, !alias.scope !3, !noalias !4
  %gmp3885 = inttoptr i64 %r3884 to ptr
  %gml3886 = load i64, ptr %gmp3885, align 1, !alias.scope !4, !noalias !3
  %wp3887 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3886, ptr %wp3887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a200c word 0xf9401908
  %r3888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3888 = load i64, ptr %r3888.p, align 8, !alias.scope !3, !noalias !4
  %t3889 = add i64 %r3888, 48
  %gmp3890 = inttoptr i64 %t3889 to ptr
  %gml3891 = load i64, ptr %gmp3890, align 1, !alias.scope !4, !noalias !3
  %wp3892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3891, ptr %wp3892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2010 word 0xd63f0100
  %r3893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3893 = load i64, ptr %r3893.p, align 8, !alias.scope !3, !noalias !4
  %fp3894 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3893, ptr %fp3894, align 8, !alias.scope !3, !noalias !4
  %wp3895 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361450516, ptr %wp3895, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001a2014 word 0xaa0003f8
  %r3896.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3896 = load i64, ptr %r3896.p, align 8, !alias.scope !3, !noalias !4
  %t3897 = or i64 0, %r3896
  %wp3898 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3897, ptr %wp3898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2018 word 0xb4ffb240
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3899 = load i64, ptr %r3899.p, align 8, !alias.scope !3, !noalias !4
  %cmp3900 = icmp eq i64 %r3899, 0
  br i1 %cmp3900, label %L_8001a1660, label %L_8001a201c_ft
L_8001a201c_ft:
  ; @pc 0x8001a201c word 0x17fffeb9
  br label %L_8001a1b00
L_8001a2038_ft:
  ; @pc 0x8001a2038 word 0x79402590
  %r3936.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3936 = load i64, ptr %r3936.p, align 8, !alias.scope !3, !noalias !4
  %t3937 = add i64 %r3936, 18
  %gmp3938 = inttoptr i64 %t3937 to ptr
  %gml3939 = load i16, ptr %gmp3938, align 1, !alias.scope !4, !noalias !3
  %c3940 = zext i16 %gml3939 to i64
  %wp3941 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3940, ptr %wp3941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a203c word 0xf100011f
  %r3942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3942 = load i64, ptr %r3942.p, align 8, !alias.scope !3, !noalias !4
  %t3943 = sub i64 %r3942, 0
  %fn3944 = icmp slt i64 %t3943, 0
  %fz3945 = icmp eq i64 %t3943, 0
  %fc3946 = icmp uge i64 %r3942, 0
  %fx13947 = xor i64 %r3942, 0
  %fx23948 = xor i64 %r3942, %t3943
  %fva3949 = and i64 %fx13947, %fx23948
  %fv3950 = icmp slt i64 %fva3949, 0
  %nz3951 = zext i1 %fn3944 to i64
  %zz3952 = zext i1 %fz3945 to i64
  %cz3953 = zext i1 %fc3946 to i64
  %vz3954 = zext i1 %fv3950 to i64
  %ns3955 = shl i64 %nz3951, 31
  %zs3956 = shl i64 %zz3952, 30
  %cs3957 = shl i64 %cz3953, 29
  %vs3958 = shl i64 %vz3954, 28
  %nzor3959 = or i64 %ns3955, %zs3956
  %cvor3960 = or i64 %cs3957, %vs3958
  %nzcv3961 = or i64 %nzor3959, %cvor3960
  %wp3962 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3961, ptr %wp3962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2040 word 0x8b100190
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %r3964.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3964 = load i64, ptr %r3964.p, align 8, !alias.scope !3, !noalias !4
  %t3965 = add i64 %r3963, %r3964
  %wp3966 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3965, ptr %wp3966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2044 word 0x91008210
  %r3967.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3967 = load i64, ptr %r3967.p, align 8, !alias.scope !3, !noalias !4
  %t3968 = add i64 %r3967, 32
  %wp3969 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3968, ptr %wp3969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2048 word 0x8b0d0211
  %r3970.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3970 = load i64, ptr %r3970.p, align 8, !alias.scope !3, !noalias !4
  %r3971.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3971 = load i64, ptr %r3971.p, align 8, !alias.scope !3, !noalias !4
  %t3972 = add i64 %r3970, %r3971
  %wp3973 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3972, ptr %wp3973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a204c word 0xcb1002f0
  %r3974.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3974 = load i64, ptr %r3974.p, align 8, !alias.scope !3, !noalias !4
  %r3975.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3975 = load i64, ptr %r3975.p, align 8, !alias.scope !3, !noalias !4
  %t3976 = sub i64 %r3974, %r3975
  %wp3977 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3976, ptr %wp3977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2050 word 0x8a0e0231
  %r3978.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3978 = load i64, ptr %r3978.p, align 8, !alias.scope !3, !noalias !4
  %r3979.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3979 = load i64, ptr %r3979.p, align 8, !alias.scope !3, !noalias !4
  %t3980 = and i64 %r3979, %r3978
  %wp3981 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t3980, ptr %wp3981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2054 word 0x8b110210
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %r3983.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3983 = load i64, ptr %r3983.p, align 8, !alias.scope !3, !noalias !4
  %t3984 = add i64 %r3982, %r3983
  %wp3985 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3984, ptr %wp3985, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2058 word 0x9a880191
  %r3986.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3986 = load i64, ptr %r3986.p, align 8, !alias.scope !3, !noalias !4
  %r3987.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3987 = load i64, ptr %r3987.p, align 8, !alias.scope !3, !noalias !4
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %fsh3990 = lshr i64 %r3988, 30
  %cond3989 = trunc i64 %fsh3990 to i1
  %sel3991 = select i1 %cond3989, i64 %r3986, i64 %r3987
  %wp3992 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %sel3991, ptr %wp3992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a205c word 0xeb1001ff
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %t3995 = sub i64 %r3993, %r3994
  %fn3996 = icmp slt i64 %t3995, 0
  %fz3997 = icmp eq i64 %t3995, 0
  %fc3998 = icmp uge i64 %r3993, %r3994
  %fx13999 = xor i64 %r3993, %r3994
  %fx24000 = xor i64 %r3993, %t3995
  %fva4001 = and i64 %fx13999, %fx24000
  %fv4002 = icmp slt i64 %fva4001, 0
  %nz4003 = zext i1 %fn3996 to i64
  %zz4004 = zext i1 %fz3997 to i64
  %cz4005 = zext i1 %fc3998 to i64
  %vz4006 = zext i1 %fv4002 to i64
  %ns4007 = shl i64 %nz4003, 31
  %zs4008 = shl i64 %zz4004, 30
  %cs4009 = shl i64 %cz4005, 29
  %vs4010 = shl i64 %vz4006, 28
  %nzor4011 = or i64 %ns4007, %zs4008
  %cvor4012 = or i64 %cs4009, %vs4010
  %nzcv4013 = or i64 %nzor4011, %cvor4012
  %wp4014 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv4013, ptr %wp4014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2060 word 0x9a913108
  %r4015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4015 = load i64, ptr %r4015.p, align 8, !alias.scope !3, !noalias !4
  %r4016.p = getelementptr inbounds i8, ptr %c, i64 136
  %r4016 = load i64, ptr %r4016.p, align 8, !alias.scope !3, !noalias !4
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 272
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %fsh4019 = lshr i64 %r4017, 29
  %ftr4020 = trunc i64 %fsh4019 to i1
  %cond4018 = xor i1 %ftr4020, true
  %sel4021 = select i1 %cond4018, i64 %r4015, i64 %r4016
  %wp4022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel4021, ptr %wp4022, align 8, !alias.scope !3, !noalias !4
  br label %L_8001a2064
L_8001a207c_ft:
  ; @pc 0x8001a207c word 0x79402510
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %t4065 = add i64 %r4064, 18
  %gmp4066 = inttoptr i64 %t4065 to ptr
  %gml4067 = load i16, ptr %gmp4066, align 1, !alias.scope !4, !noalias !3
  %c4068 = zext i16 %gml4067 to i64
  %wp4069 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c4068, ptr %wp4069, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2080 word 0xf9400d0c
  %r4070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4070 = load i64, ptr %r4070.p, align 8, !alias.scope !3, !noalias !4
  %t4071 = add i64 %r4070, 24
  %gmp4072 = inttoptr i64 %t4071 to ptr
  %gml4073 = load i64, ptr %gmp4072, align 1, !alias.scope !4, !noalias !3
  %wp4074 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4073, ptr %wp4074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001a2084 word 0x17fffe3b
  br label %L_8001a1970
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
