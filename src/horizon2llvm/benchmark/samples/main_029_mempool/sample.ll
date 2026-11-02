; UltraTears chunk main_029_mempool: 1 functions [0x800079d20..0x80007a838)
; ModuleID = 'main_029_mempool_raw'
source_filename = "main_029_mempool_raw"
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

define dso_local void @f_800079d20(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_800079d20:
  ; @pc 0x800079d20 word 0xd10243ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 144
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d24 word 0xa9037bfd
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
  ; @pc 0x800079d28 word 0xa9046ffc
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
  ; @pc 0x800079d2c word 0xa90567fa
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
  ; @pc 0x800079d30 word 0xa9065ff8
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
  ; @pc 0x800079d34 word 0xa90757f6
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
  ; @pc 0x800079d38 word 0xa9084ff4
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
  ; @pc 0x800079d3c word 0x9100c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 48
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d40 word 0xd001c698
  %wp53 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 34419814400, ptr %wp53, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d44 word 0x2a0203f4
  %r54.p = getelementptr inbounds i8, ptr %c, i64 16
  %r54 = load i64, ptr %r54.p, align 8, !alias.scope !3, !noalias !4
  %c55 = trunc i64 %r54 to i32
  %t56 = or i32 0, %c55
  %c57 = zext i32 %t56 to i64
  %wp58 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c57, ptr %wp58, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d48 word 0xf9454318
  %r59.p = getelementptr inbounds i8, ptr %c, i64 192
  %r59 = load i64, ptr %r59.p, align 8, !alias.scope !3, !noalias !4
  %t60 = add i64 %r59, 2688
  %gmp61 = inttoptr i64 %t60 to ptr
  %gml62 = load i64, ptr %gmp61, align 1, !alias.scope !4, !noalias !3
  %wp63 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml62, ptr %wp63, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d4c word 0xaa0103f5
  %r64.p = getelementptr inbounds i8, ptr %c, i64 8
  %r64 = load i64, ptr %r64.p, align 8, !alias.scope !3, !noalias !4
  %t65 = or i64 0, %r64
  %wp66 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d50 word 0xf9400316
  %r67.p = getelementptr inbounds i8, ptr %c, i64 192
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %gmp68 = inttoptr i64 %r67 to ptr
  %gml69 = load i64, ptr %gmp68, align 1, !alias.scope !4, !noalias !3
  %wp70 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d54 word 0xb4002616
  %r71.p = getelementptr inbounds i8, ptr %c, i64 176
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %cmp72 = icmp eq i64 %r71, 0
  br i1 %cmp72, label %L_80007a214, label %L_800079d58_ft
L_800079d60:
  ; @pc 0x800079d60 word 0xf9400268
  %r78.p = getelementptr inbounds i8, ptr %c, i64 152
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %gmp79 = inttoptr i64 %r78 to ptr
  %gml80 = load i64, ptr %gmp79, align 1, !alias.scope !4, !noalias !3
  %wp81 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml80, ptr %wp81, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d64 word 0xf9401903
  %r82.p = getelementptr inbounds i8, ptr %c, i64 64
  %r82 = load i64, ptr %r82.p, align 8, !alias.scope !3, !noalias !4
  %t83 = add i64 %r82, 48
  %gmp84 = inttoptr i64 %t83 to ptr
  %gml85 = load i64, ptr %gmp84, align 1, !alias.scope !4, !noalias !3
  %wp86 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d68 word 0xb0002c88
  %wp87 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34366070784, ptr %wp87, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d6c word 0x91374108
  %r88.p = getelementptr inbounds i8, ptr %c, i64 64
  %r88 = load i64, ptr %r88.p, align 8, !alias.scope !3, !noalias !4
  %t89 = add i64 %r88, 3536
  %wp90 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d70 word 0xeb08007f
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
  ; @pc 0x800079d74 word 0x54000521
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_800079e18, label %L_800079d78_ft
L_800079d88:
  ; @pc 0x800079d88 word 0xf10022bf
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
  ; @pc 0x800079d8c word 0x52800109
  %c152 = zext i32 8 to i64
  %wp153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c152, ptr %wp153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d90 word 0xf9400308
  %r154.p = getelementptr inbounds i8, ptr %c, i64 192
  %r154 = load i64, ptr %r154.p, align 8, !alias.scope !3, !noalias !4
  %gmp155 = inttoptr i64 %r154 to ptr
  %gml156 = load i64, ptr %gmp155, align 1, !alias.scope !4, !noalias !3
  %wp157 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml156, ptr %wp157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d94 word 0x9a8982a9
  %r158.p = getelementptr inbounds i8, ptr %c, i64 168
  %r158 = load i64, ptr %r158.p, align 8, !alias.scope !3, !noalias !4
  %r159.p = getelementptr inbounds i8, ptr %c, i64 72
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
  %wp168 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %sel167, ptr %wp168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d98 word 0x7100029f
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
  ; @pc 0x800079d9c word 0x91001d29
  %r191.p = getelementptr inbounds i8, ptr %c, i64 72
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 7
  %wp193 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t192, ptr %wp193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079da0 word 0x5a94569a
  %r194.p = getelementptr inbounds i8, ptr %c, i64 160
  %r194 = load i64, ptr %r194.p, align 8, !alias.scope !3, !noalias !4
  %c195 = trunc i64 %r194 to i32
  %r196.p = getelementptr inbounds i8, ptr %c, i64 160
  %r196 = load i64, ptr %r196.p, align 8, !alias.scope !3, !noalias !4
  %c197 = trunc i64 %r196 to i32
  %t198 = sub i32 0, %c197
  %r199.p = getelementptr inbounds i8, ptr %c, i64 272
  %r199 = load i64, ptr %r199.p, align 8, !alias.scope !3, !noalias !4
  %fsh201 = lshr i64 %r199, 31
  %ftr202 = trunc i64 %fsh201 to i1
  %cond200 = xor i1 %ftr202, true
  %sel203 = select i1 %cond200, i32 %c195, i32 %t198
  %c204 = zext i32 %sel203 to i64
  %wp205 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079da4 word 0x927df139
  %r206.p = getelementptr inbounds i8, ptr %c, i64 72
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %t207 = and i64 %r206, -8
  %wp208 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t207, ptr %wp208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079da8 word 0x51000749
  %r209.p = getelementptr inbounds i8, ptr %c, i64 208
  %r209 = load i64, ptr %r209.p, align 8, !alias.scope !3, !noalias !4
  %c210 = trunc i64 %r209 to i32
  %t211 = sub i32 %c210, 1
  %c212 = zext i32 %t211 to i64
  %wp213 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c212, ptr %wp213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dac word 0x6a09035f
  %r214.p = getelementptr inbounds i8, ptr %c, i64 72
  %r214 = load i64, ptr %r214.p, align 8, !alias.scope !3, !noalias !4
  %c215 = trunc i64 %r214 to i32
  %r216.p = getelementptr inbounds i8, ptr %c, i64 208
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
  ; @pc 0x800079db0 word 0x540025e1
  %r227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r227 = load i64, ptr %r227.p, align 8, !alias.scope !3, !noalias !4
  %fsh229 = lshr i64 %r227, 30
  %ftr230 = trunc i64 %fsh229 to i1
  %cond228 = xor i1 %ftr230, true
  br i1 %cond228, label %L_80007a26c, label %L_800079db4_ft
L_800079dec:
  ; @pc 0x800079dec word 0xb4000db8
  %r332.p = getelementptr inbounds i8, ptr %c, i64 192
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %cmp333 = icmp eq i64 %r332, 0
  br i1 %cmp333, label %L_800079fa0, label %L_800079df0
L_800079df0:
  ; @pc 0x800079df0 word 0xb5003816
  %r334.p = getelementptr inbounds i8, ptr %c, i64 176
  %r334 = load i64, ptr %r334.p, align 8, !alias.scope !3, !noalias !4
  %cmp335 = icmp ne i64 %r334, 0
  br i1 %cmp335, label %L_80007a4f0, label %L_800079df4
L_800079df4:
  ; @pc 0x800079df4 word 0xaa1803e0
  %r336.p = getelementptr inbounds i8, ptr %c, i64 192
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %t337 = or i64 0, %r336
  %wp338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t337, ptr %wp338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079df8 word 0xa9484ff4
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
  ; @pc 0x800079dfc word 0xa94757f6
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
  ; @pc 0x800079e00 word 0xa9465ff8
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
  ; @pc 0x800079e04 word 0xa94567fa
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
  ; @pc 0x800079e08 word 0xa9446ffc
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
  ; @pc 0x800079e0c word 0xa9437bfd
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
  ; @pc 0x800079e10 word 0x910243ff
  %r393.p = getelementptr inbounds i8, ptr %c, i64 256
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = add i64 %r393, 144
  %wp395 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t394, ptr %wp395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e14 word 0xd65f03c0
  ret void
L_800079e18:
  ; @pc 0x800079e18 word 0xb0000ca8
  %wp396 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361892864, ptr %wp396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e1c word 0x91393108
  %r397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %t398 = add i64 %r397, 3660
  %wp399 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t398, ptr %wp399, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e20 word 0xeb08007f
  %r400.p = getelementptr inbounds i8, ptr %c, i64 24
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %r401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %t402 = sub i64 %r400, %r401
  %fn403 = icmp slt i64 %t402, 0
  %fz404 = icmp eq i64 %t402, 0
  %fc405 = icmp uge i64 %r400, %r401
  %fx1406 = xor i64 %r400, %r401
  %fx2407 = xor i64 %r400, %t402
  %fva408 = and i64 %fx1406, %fx2407
  %fv409 = icmp slt i64 %fva408, 0
  %nz410 = zext i1 %fn403 to i64
  %zz411 = zext i1 %fz404 to i64
  %cz412 = zext i1 %fc405 to i64
  %vz413 = zext i1 %fv409 to i64
  %ns414 = shl i64 %nz410, 31
  %zs415 = shl i64 %zz411, 30
  %cs416 = shl i64 %cz412, 29
  %vs417 = shl i64 %vz413, 28
  %nzor418 = or i64 %ns414, %zs415
  %cvor419 = or i64 %cs416, %vs417
  %nzcv420 = or i64 %nzor418, %cvor419
  %wp421 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv420, ptr %wp421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e24 word 0x54000620
  %r422.p = getelementptr inbounds i8, ptr %c, i64 272
  %r422 = load i64, ptr %r422.p, align 8, !alias.scope !3, !noalias !4
  %fsh424 = lshr i64 %r422, 30
  %cond423 = trunc i64 %fsh424 to i1
  br i1 %cond423, label %L_800079ee8, label %L_800079e28_ft
L_800079e80:
  ; @pc 0x800079e80 word 0xb9408268
  %r597.p = getelementptr inbounds i8, ptr %c, i64 152
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %t598 = add i64 %r597, 128
  %gmp599 = inttoptr i64 %t598 to ptr
  %gml600 = load i32, ptr %gmp599, align 1, !alias.scope !4, !noalias !3
  %c601 = zext i32 %gml600 to i64
  %wp602 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c601, ptr %wp602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e84 word 0x1b147d0c
  %r603.p = getelementptr inbounds i8, ptr %c, i64 160
  %r603 = load i64, ptr %r603.p, align 8, !alias.scope !3, !noalias !4
  %c604 = trunc i64 %r603 to i32
  %r605.p = getelementptr inbounds i8, ptr %c, i64 64
  %r605 = load i64, ptr %r605.p, align 8, !alias.scope !3, !noalias !4
  %c606 = trunc i64 %r605 to i32
  %t607 = mul i32 %c606, %c604
  %t608 = add i32 0, %t607
  %c609 = zext i32 %t608 to i64
  %wp610 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e88 word 0x37f8192c
  %r611.p = getelementptr inbounds i8, ptr %c, i64 96
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %t612 = and i64 %r611, 2147483648
  %cmp613 = icmp ne i64 %t612, 0
  br i1 %cmp613, label %L_80007a1ac, label %L_800079e8c_ft
L_800079ec4:
  ; @pc 0x800079ec4 word 0xf9400c0b
  %r710.p = getelementptr inbounds i8, ptr %c, i64 0
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %t711 = add i64 %r710, 24
  %gmp712 = inttoptr i64 %t711 to ptr
  %gml713 = load i64, ptr %gmp712, align 1, !alias.scope !4, !noalias !3
  %wp714 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml713, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ec8 word 0xeb17017f
  %r715.p = getelementptr inbounds i8, ptr %c, i64 88
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %r716.p = getelementptr inbounds i8, ptr %c, i64 184
  %r716 = load i64, ptr %r716.p, align 8, !alias.scope !3, !noalias !4
  %t717 = sub i64 %r715, %r716
  %fn718 = icmp slt i64 %t717, 0
  %fz719 = icmp eq i64 %t717, 0
  %fc720 = icmp uge i64 %r715, %r716
  %fx1721 = xor i64 %r715, %r716
  %fx2722 = xor i64 %r715, %t717
  %fva723 = and i64 %fx1721, %fx2722
  %fv724 = icmp slt i64 %fva723, 0
  %nz725 = zext i1 %fn718 to i64
  %zz726 = zext i1 %fz719 to i64
  %cz727 = zext i1 %fc720 to i64
  %vz728 = zext i1 %fv724 to i64
  %ns729 = shl i64 %nz725, 31
  %zs730 = shl i64 %zz726, 30
  %cs731 = shl i64 %cz727, 29
  %vs732 = shl i64 %vz728, 28
  %nzor733 = or i64 %ns729, %zs730
  %cvor734 = or i64 %cs731, %vs732
  %nzcv735 = or i64 %nzor733, %cvor734
  %wp736 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv735, ptr %wp736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ecc word 0x54002942
  %r737.p = getelementptr inbounds i8, ptr %c, i64 272
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %fsh739 = lshr i64 %r737, 29
  %cond738 = trunc i64 %fsh739 to i1
  br i1 %cond738, label %L_80007a3f4, label %L_800079ed0_ft
L_800079ee8:
  ; @pc 0x800079ee8 word 0xf10022bf
  %r779.p = getelementptr inbounds i8, ptr %c, i64 168
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %t780 = sub i64 %r779, 8
  %fn781 = icmp slt i64 %t780, 0
  %fz782 = icmp eq i64 %t780, 0
  %fc783 = icmp uge i64 %r779, 8
  %fx1784 = xor i64 %r779, 8
  %fx2785 = xor i64 %r779, %t780
  %fva786 = and i64 %fx1784, %fx2785
  %fv787 = icmp slt i64 %fva786, 0
  %nz788 = zext i1 %fn781 to i64
  %zz789 = zext i1 %fz782 to i64
  %cz790 = zext i1 %fc783 to i64
  %vz791 = zext i1 %fv787 to i64
  %ns792 = shl i64 %nz788, 31
  %zs793 = shl i64 %zz789, 30
  %cs794 = shl i64 %cz790, 29
  %vs795 = shl i64 %vz791, 28
  %nzor796 = or i64 %ns792, %zs793
  %cvor797 = or i64 %cs794, %vs795
  %nzcv798 = or i64 %nzor796, %cvor797
  %wp799 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv798, ptr %wp799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079eec word 0x52800108
  %c800 = zext i32 8 to i64
  %wp801 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c800, ptr %wp801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ef0 word 0xf9400319
  %r802.p = getelementptr inbounds i8, ptr %c, i64 192
  %r802 = load i64, ptr %r802.p, align 8, !alias.scope !3, !noalias !4
  %gmp803 = inttoptr i64 %r802 to ptr
  %gml804 = load i64, ptr %gmp803, align 1, !alias.scope !4, !noalias !3
  %wp805 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml804, ptr %wp805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ef4 word 0x9a8882a8
  %r806.p = getelementptr inbounds i8, ptr %c, i64 168
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %r807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %r808.p = getelementptr inbounds i8, ptr %c, i64 272
  %r808 = load i64, ptr %r808.p, align 8, !alias.scope !3, !noalias !4
  %fsh810 = lshr i64 %r808, 29
  %ftr811 = trunc i64 %fsh810 to i1
  %fsh812 = lshr i64 %r808, 30
  %ftr813 = trunc i64 %fsh812 to i1
  %fnz814 = xor i1 %ftr813, true
  %cond809 = and i1 %ftr811, %fnz814
  %sel815 = select i1 %cond809, i64 %r806, i64 %r807
  %wp816 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel815, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ef8 word 0x7100029f
  %r817.p = getelementptr inbounds i8, ptr %c, i64 160
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %c818 = trunc i64 %r817 to i32
  %t819 = sub i32 %c818, 0
  %fn820 = icmp slt i32 %t819, 0
  %fz821 = icmp eq i32 %t819, 0
  %fc822 = icmp uge i32 %c818, 0
  %fx1823 = xor i32 %c818, 0
  %fx2824 = xor i32 %c818, %t819
  %fva825 = and i32 %fx1823, %fx2824
  %fv826 = icmp slt i32 %fva825, 0
  %nz827 = zext i1 %fn820 to i64
  %zz828 = zext i1 %fz821 to i64
  %cz829 = zext i1 %fc822 to i64
  %vz830 = zext i1 %fv826 to i64
  %ns831 = shl i64 %nz827, 31
  %zs832 = shl i64 %zz828, 30
  %cs833 = shl i64 %cz829, 29
  %vs834 = shl i64 %vz830, 28
  %nzor835 = or i64 %ns831, %zs832
  %cvor836 = or i64 %cs833, %vs834
  %nzcv837 = or i64 %nzor835, %cvor836
  %wp838 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv837, ptr %wp838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079efc word 0x91001d08
  %r839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r839 = load i64, ptr %r839.p, align 8, !alias.scope !3, !noalias !4
  %t840 = add i64 %r839, 7
  %wp841 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t840, ptr %wp841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f00 word 0x927df117
  %r842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %t843 = and i64 %r842, -8
  %wp844 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t843, ptr %wp844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f04 word 0x5a945688
  %r845.p = getelementptr inbounds i8, ptr %c, i64 160
  %r845 = load i64, ptr %r845.p, align 8, !alias.scope !3, !noalias !4
  %c846 = trunc i64 %r845 to i32
  %r847.p = getelementptr inbounds i8, ptr %c, i64 160
  %r847 = load i64, ptr %r847.p, align 8, !alias.scope !3, !noalias !4
  %c848 = trunc i64 %r847 to i32
  %t849 = sub i32 0, %c848
  %r850.p = getelementptr inbounds i8, ptr %c, i64 272
  %r850 = load i64, ptr %r850.p, align 8, !alias.scope !3, !noalias !4
  %fsh852 = lshr i64 %r850, 31
  %ftr853 = trunc i64 %fsh852 to i1
  %cond851 = xor i1 %ftr853, true
  %sel854 = select i1 %cond851, i32 %c846, i32 %t849
  %c855 = zext i32 %sel854 to i64
  %wp856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c855, ptr %wp856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f08 word 0x51000509
  %r857.p = getelementptr inbounds i8, ptr %c, i64 64
  %r857 = load i64, ptr %r857.p, align 8, !alias.scope !3, !noalias !4
  %c858 = trunc i64 %r857 to i32
  %t859 = sub i32 %c858, 1
  %c860 = zext i32 %t859 to i64
  %wp861 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c860, ptr %wp861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f0c word 0x6a09011f
  %r862.p = getelementptr inbounds i8, ptr %c, i64 72
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %c863 = trunc i64 %r862 to i32
  %r864.p = getelementptr inbounds i8, ptr %c, i64 64
  %r864 = load i64, ptr %r864.p, align 8, !alias.scope !3, !noalias !4
  %c865 = trunc i64 %r864 to i32
  %t866 = and i32 %c865, %c863
  %fn867 = icmp slt i32 %t866, 0
  %fz868 = icmp eq i32 %t866, 0
  %nz869 = zext i1 %fn867 to i64
  %zz870 = zext i1 %fz868 to i64
  %ns871 = shl i64 %nz869, 31
  %zs872 = shl i64 %zz870, 30
  %nzcv873 = or i64 %ns871, %zs872
  %wp874 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv873, ptr %wp874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f10 word 0x540031e1
  %r875.p = getelementptr inbounds i8, ptr %c, i64 272
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %fsh877 = lshr i64 %r875, 30
  %ftr878 = trunc i64 %fsh877 to i1
  %cond876 = xor i1 %ftr878, true
  br i1 %cond876, label %L_80007a54c, label %L_800079f14_ft
L_800079f20:
  ; @pc 0x800079f20 word 0xb9408268
  %r890.p = getelementptr inbounds i8, ptr %c, i64 152
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %t891 = add i64 %r890, 128
  %gmp892 = inttoptr i64 %t891 to ptr
  %gml893 = load i32, ptr %gmp892, align 1, !alias.scope !4, !noalias !3
  %c894 = zext i32 %gml893 to i64
  %wp895 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c894, ptr %wp895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f24 word 0x1b147d08
  %r896.p = getelementptr inbounds i8, ptr %c, i64 160
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %c897 = trunc i64 %r896 to i32
  %r898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %c899 = trunc i64 %r898 to i32
  %t900 = mul i32 %c899, %c897
  %t901 = add i32 0, %t900
  %c902 = zext i32 %t901 to i64
  %wp903 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c902, ptr %wp903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f28 word 0x37f815c8
  %r904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r904 = load i64, ptr %r904.p, align 8, !alias.scope !3, !noalias !4
  %t905 = and i64 %r904, 2147483648
  %cmp906 = icmp ne i64 %t905, 0
  br i1 %cmp906, label %L_80007a1e0, label %L_800079f2c_ft
L_800079f60:
  ; @pc 0x800079f60 word 0xaa1f03f6
  %t993 = or i64 0, 0
  %wp994 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t993, ptr %wp994, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f64 word 0x17ffffc7
  br label %L_800079e80
L_800079f68:
  ; @pc 0x800079f68 word 0xaa1303e0
  %r995.p = getelementptr inbounds i8, ptr %c, i64 152
  %r995 = load i64, ptr %r995.p, align 8, !alias.scope !3, !noalias !4
  %t996 = or i64 0, %r995
  %wp997 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t996, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f6c word 0xaa1503e1
  %r998.p = getelementptr inbounds i8, ptr %c, i64 168
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %t999 = or i64 0, %r998
  %wp1000 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t999, ptr %wp1000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f70 word 0x2a1403e2
  %r1001.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1001 = load i64, ptr %r1001.p, align 8, !alias.scope !3, !noalias !4
  %c1002 = trunc i64 %r1001 to i32
  %t1003 = or i32 0, %c1002
  %c1004 = zext i32 %t1003 to i64
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1004, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f74 word 0xa9484ff4
  %r1006.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1006 = load i64, ptr %r1006.p, align 8, !alias.scope !3, !noalias !4
  %t1007 = add i64 %r1006, 128
  %t1008 = add i64 %t1007, 8
  %gmp1009 = inttoptr i64 %t1007 to ptr
  %gml1010 = load i64, ptr %gmp1009, align 1, !alias.scope !4, !noalias !3
  %gmp1011 = inttoptr i64 %t1008 to ptr
  %gml1012 = load i64, ptr %gmp1011, align 1, !alias.scope !4, !noalias !3
  %wp1013 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1010, ptr %wp1013, align 8, !alias.scope !3, !noalias !4
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1012, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f78 word 0xa94757f6
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %t1016 = add i64 %r1015, 112
  %t1017 = add i64 %t1016, 8
  %gmp1018 = inttoptr i64 %t1016 to ptr
  %gml1019 = load i64, ptr %gmp1018, align 1, !alias.scope !4, !noalias !3
  %gmp1020 = inttoptr i64 %t1017 to ptr
  %gml1021 = load i64, ptr %gmp1020, align 1, !alias.scope !4, !noalias !3
  %wp1022 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1019, ptr %wp1022, align 8, !alias.scope !3, !noalias !4
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1021, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f7c word 0xa9465ff8
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %t1025 = add i64 %r1024, 96
  %t1026 = add i64 %t1025, 8
  %gmp1027 = inttoptr i64 %t1025 to ptr
  %gml1028 = load i64, ptr %gmp1027, align 1, !alias.scope !4, !noalias !3
  %gmp1029 = inttoptr i64 %t1026 to ptr
  %gml1030 = load i64, ptr %gmp1029, align 1, !alias.scope !4, !noalias !3
  %wp1031 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1028, ptr %wp1031, align 8, !alias.scope !3, !noalias !4
  %wp1032 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1030, ptr %wp1032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f80 word 0xa94567fa
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %t1034 = add i64 %r1033, 80
  %t1035 = add i64 %t1034, 8
  %gmp1036 = inttoptr i64 %t1034 to ptr
  %gml1037 = load i64, ptr %gmp1036, align 1, !alias.scope !4, !noalias !3
  %gmp1038 = inttoptr i64 %t1035 to ptr
  %gml1039 = load i64, ptr %gmp1038, align 1, !alias.scope !4, !noalias !3
  %wp1040 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1037, ptr %wp1040, align 8, !alias.scope !3, !noalias !4
  %wp1041 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1039, ptr %wp1041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f84 word 0xa9446ffc
  %r1042.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1042 = load i64, ptr %r1042.p, align 8, !alias.scope !3, !noalias !4
  %t1043 = add i64 %r1042, 64
  %t1044 = add i64 %t1043, 8
  %gmp1045 = inttoptr i64 %t1043 to ptr
  %gml1046 = load i64, ptr %gmp1045, align 1, !alias.scope !4, !noalias !3
  %gmp1047 = inttoptr i64 %t1044 to ptr
  %gml1048 = load i64, ptr %gmp1047, align 1, !alias.scope !4, !noalias !3
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1046, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  %wp1050 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1048, ptr %wp1050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f88 word 0xa9437bfd
  %r1051.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1051 = load i64, ptr %r1051.p, align 8, !alias.scope !3, !noalias !4
  %t1052 = add i64 %r1051, 48
  %t1053 = add i64 %t1052, 8
  %gmp1054 = inttoptr i64 %t1052 to ptr
  %gml1055 = load i64, ptr %gmp1054, align 1, !alias.scope !4, !noalias !3
  %gmp1056 = inttoptr i64 %t1053 to ptr
  %gml1057 = load i64, ptr %gmp1056, align 1, !alias.scope !4, !noalias !3
  %wp1058 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1055, ptr %wp1058, align 8, !alias.scope !3, !noalias !4
  %wp1059 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1057, ptr %wp1059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f8c word 0x910243ff
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %t1061 = add i64 %r1060, 144
  %wp1062 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1061, ptr %wp1062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f90 word 0xd61f0060
  %r1063.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1063 = load i64, ptr %r1063.p, align 8, !alias.scope !3, !noalias !4
  %pcp4075 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1063, ptr %pcp4075, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
L_800079f94:
  ; @pc 0x800079f94 word 0xb4000068
  %r1064.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1064 = load i64, ptr %r1064.p, align 8, !alias.scope !3, !noalias !4
  %cmp1065 = icmp eq i64 %r1064, 0
  br i1 %cmp1065, label %L_800079fa0, label %L_800079f98_ft
L_800079fa0:
  ; @pc 0x800079fa0 word 0xaa1f03f8
  %t1073 = or i64 0, 0
  %wp1074 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1073, ptr %wp1074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fa4 word 0xeb15033f
  %r1075.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1075 = load i64, ptr %r1075.p, align 8, !alias.scope !3, !noalias !4
  %r1076.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1076 = load i64, ptr %r1076.p, align 8, !alias.scope !3, !noalias !4
  %t1077 = sub i64 %r1075, %r1076
  %fn1078 = icmp slt i64 %t1077, 0
  %fz1079 = icmp eq i64 %t1077, 0
  %fc1080 = icmp uge i64 %r1075, %r1076
  %fx11081 = xor i64 %r1075, %r1076
  %fx21082 = xor i64 %r1075, %t1077
  %fva1083 = and i64 %fx11081, %fx21082
  %fv1084 = icmp slt i64 %fva1083, 0
  %nz1085 = zext i1 %fn1078 to i64
  %zz1086 = zext i1 %fz1079 to i64
  %cz1087 = zext i1 %fc1080 to i64
  %vz1088 = zext i1 %fv1084 to i64
  %ns1089 = shl i64 %nz1085, 31
  %zs1090 = shl i64 %zz1086, 30
  %cs1091 = shl i64 %cz1087, 29
  %vs1092 = shl i64 %vz1088, 28
  %nzor1093 = or i64 %ns1089, %zs1090
  %cvor1094 = or i64 %cs1091, %vs1092
  %nzcv1095 = or i64 %nzor1093, %cvor1094
  %wp1096 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1095, ptr %wp1096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fa8 word 0x54fff243
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %fsh1099 = lshr i64 %r1097, 29
  %ftr1100 = trunc i64 %fsh1099 to i1
  %cond1098 = xor i1 %ftr1100, true
  br i1 %cond1098, label %L_800079df0, label %L_800079fac_ft
L_800079fd0:
  ; @pc 0x800079fd0 word 0xf9400268
  %r1159.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1159 = load i64, ptr %r1159.p, align 8, !alias.scope !3, !noalias !4
  %gmp1160 = inttoptr i64 %r1159 to ptr
  %gml1161 = load i64, ptr %gmp1160, align 1, !alias.scope !4, !noalias !3
  %wp1162 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1161, ptr %wp1162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fd4 word 0xaa1303e0
  %r1163.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1163 = load i64, ptr %r1163.p, align 8, !alias.scope !3, !noalias !4
  %t1164 = or i64 0, %r1163
  %wp1165 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1164, ptr %wp1165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fd8 word 0xf9401508
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %t1167 = add i64 %r1166, 40
  %gmp1168 = inttoptr i64 %t1167 to ptr
  %gml1169 = load i64, ptr %gmp1168, align 1, !alias.scope !4, !noalias !3
  %wp1170 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1169, ptr %wp1170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fdc word 0xd63f0100
  %r1171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1171 = load i64, ptr %r1171.p, align 8, !alias.scope !3, !noalias !4
  %fp1172 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1171, ptr %fp1172, align 8, !alias.scope !3, !noalias !4
  %wp1173 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238048, ptr %wp1173, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x800079fe0 word 0xf9401e60
  %r1174.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1174 = load i64, ptr %r1174.p, align 8, !alias.scope !3, !noalias !4
  %t1175 = add i64 %r1174, 56
  %gmp1176 = inttoptr i64 %t1175 to ptr
  %gml1177 = load i64, ptr %gmp1176, align 1, !alias.scope !4, !noalias !3
  %wp1178 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1177, ptr %wp1178, align 8, !alias.scope !3, !noalias !4
  br label %L_800079fe4
L_800079fe4:
  ; @pc 0x800079fe4 word 0x8b384328
  %r1179.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1179 = load i64, ptr %r1179.p, align 8, !alias.scope !3, !noalias !4
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %c1181 = trunc i64 %r1180 to i32
  %c1182 = zext i32 %c1181 to i64
  %t1183 = add i64 %r1179, %c1182
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1183, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fe8 word 0x9100411b
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %t1186 = add i64 %r1185, 16
  %wp1187 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t1186, ptr %wp1187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fec word 0x29590a68
  %r1188.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1188 = load i64, ptr %r1188.p, align 8, !alias.scope !3, !noalias !4
  %t1189 = add i64 %r1188, 200
  %t1190 = add i64 %t1189, 4
  %gmp1191 = inttoptr i64 %t1189 to ptr
  %gml1192 = load i32, ptr %gmp1191, align 1, !alias.scope !4, !noalias !3
  %c1193 = zext i32 %gml1192 to i64
  %gmp1194 = inttoptr i64 %t1190 to ptr
  %gml1195 = load i32, ptr %gmp1194, align 1, !alias.scope !4, !noalias !3
  %c1196 = zext i32 %gml1195 to i64
  %wp1197 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1193, ptr %wp1197, align 8, !alias.scope !3, !noalias !4
  %wp1198 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1196, ptr %wp1198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ff0 word 0xd37ef51c
  %r1199.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1199 = load i64, ptr %r1199.p, align 8, !alias.scope !3, !noalias !4
  %ror1200 = call i64 @llvm.fshr.i64(i64 %r1199, i64 %r1199, i64 62)
  %t1201 = and i64 %ror1200, -4
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t1201, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ff4 word 0xf9400008
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %gmp1204 = inttoptr i64 %r1203 to ptr
  %gml1205 = load i64, ptr %gmp1204, align 1, !alias.scope !4, !noalias !3
  %wp1206 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1205, ptr %wp1206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ff8 word 0xeb1b039f
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %t1209 = sub i64 %r1207, %r1208
  %fn1210 = icmp slt i64 %t1209, 0
  %fz1211 = icmp eq i64 %t1209, 0
  %fc1212 = icmp uge i64 %r1207, %r1208
  %fx11213 = xor i64 %r1207, %r1208
  %fx21214 = xor i64 %r1207, %t1209
  %fva1215 = and i64 %fx11213, %fx21214
  %fv1216 = icmp slt i64 %fva1215, 0
  %nz1217 = zext i1 %fn1210 to i64
  %zz1218 = zext i1 %fz1211 to i64
  %cz1219 = zext i1 %fc1212 to i64
  %vz1220 = zext i1 %fv1216 to i64
  %ns1221 = shl i64 %nz1217, 31
  %zs1222 = shl i64 %zz1218, 30
  %cs1223 = shl i64 %cz1219, 29
  %vs1224 = shl i64 %vz1220, 28
  %nzor1225 = or i64 %ns1221, %zs1222
  %cvor1226 = or i64 %cs1223, %vs1224
  %nzcv1227 = or i64 %nzor1225, %cvor1226
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ffc word 0x9a9b8399
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %r1230.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1230 = load i64, ptr %r1230.p, align 8, !alias.scope !3, !noalias !4
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %fsh1233 = lshr i64 %r1231, 29
  %ftr1234 = trunc i64 %fsh1233 to i1
  %fsh1235 = lshr i64 %r1231, 30
  %ftr1236 = trunc i64 %fsh1235 to i1
  %fnz1237 = xor i1 %ftr1236, true
  %cond1232 = and i1 %ftr1234, %fnz1237
  %sel1238 = select i1 %cond1232, i64 %r1229, i64 %r1230
  %wp1239 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %sel1238, ptr %wp1239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a000 word 0xaa1903e1
  %r1240.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1240 = load i64, ptr %r1240.p, align 8, !alias.scope !3, !noalias !4
  %t1241 = or i64 0, %r1240
  %wp1242 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1241, ptr %wp1242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a004 word 0xf9401908
  %r1243.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1243 = load i64, ptr %r1243.p, align 8, !alias.scope !3, !noalias !4
  %t1244 = add i64 %r1243, 48
  %gmp1245 = inttoptr i64 %t1244 to ptr
  %gml1246 = load i64, ptr %gmp1245, align 1, !alias.scope !4, !noalias !3
  %wp1247 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1246, ptr %wp1247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a008 word 0xd63f0100
  %r1248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1248 = load i64, ptr %r1248.p, align 8, !alias.scope !3, !noalias !4
  %fp1249 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1248, ptr %fp1249, align 8, !alias.scope !3, !noalias !4
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238092, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80007a00c word 0xb4002f60
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %cmp1252 = icmp eq i64 %r1251, 0
  br i1 %cmp1252, label %L_80007a5f8, label %L_80007a010_ft
L_80007a014:
  ; @pc 0x80007a014 word 0xb940aa68
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %t1257 = add i64 %r1256, 168
  %gmp1258 = inttoptr i64 %t1257 to ptr
  %gml1259 = load i32, ptr %gmp1258, align 1, !alias.scope !4, !noalias !3
  %c1260 = zext i32 %gml1259 to i64
  %wp1261 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1260, ptr %wp1261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a018 word 0x37003168
  %r1262.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1262 = load i64, ptr %r1262.p, align 8, !alias.scope !3, !noalias !4
  %t1263 = and i64 %r1262, 1
  %cmp1264 = icmp ne i64 %t1263, 0
  br i1 %cmp1264, label %L_80007a644, label %L_80007a01c_ft
L_80007a024:
  ; @pc 0x80007a024 word 0xb940826a
  %r1269.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1269 = load i64, ptr %r1269.p, align 8, !alias.scope !3, !noalias !4
  %t1270 = add i64 %r1269, 128
  %gmp1271 = inttoptr i64 %t1270 to ptr
  %gml1272 = load i32, ptr %gmp1271, align 1, !alias.scope !4, !noalias !3
  %c1273 = zext i32 %gml1272 to i64
  %wp1274 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1273, ptr %wp1274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a028 word 0x8b180328
  %r1275.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1275 = load i64, ptr %r1275.p, align 8, !alias.scope !3, !noalias !4
  %r1276.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1276 = load i64, ptr %r1276.p, align 8, !alias.scope !3, !noalias !4
  %t1277 = add i64 %r1275, %r1276
  %wp1278 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1277, ptr %wp1278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a02c word 0xd1004109
  %r1279.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1279 = load i64, ptr %r1279.p, align 8, !alias.scope !3, !noalias !4
  %t1280 = sub i64 %r1279, 16
  %wp1281 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1280, ptr %wp1281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a030 word 0x7100055f
  %r1282.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1282 = load i64, ptr %r1282.p, align 8, !alias.scope !3, !noalias !4
  %c1283 = trunc i64 %r1282 to i32
  %t1284 = sub i32 %c1283, 1
  %fn1285 = icmp slt i32 %t1284, 0
  %fz1286 = icmp eq i32 %t1284, 0
  %fc1287 = icmp uge i32 %c1283, 1
  %fx11288 = xor i32 %c1283, 1
  %fx21289 = xor i32 %c1283, %t1284
  %fva1290 = and i32 %fx11288, %fx21289
  %fv1291 = icmp slt i32 %fva1290, 0
  %nz1292 = zext i1 %fn1285 to i64
  %zz1293 = zext i1 %fz1286 to i64
  %cz1294 = zext i1 %fc1287 to i64
  %vz1295 = zext i1 %fv1291 to i64
  %ns1296 = shl i64 %nz1292, 31
  %zs1297 = shl i64 %zz1293, 30
  %cs1298 = shl i64 %cz1294, 29
  %vs1299 = shl i64 %vz1295, 28
  %nzor1300 = or i64 %ns1296, %zs1297
  %cvor1301 = or i64 %cs1298, %vs1299
  %nzcv1302 = or i64 %nzor1300, %cvor1301
  %wp1303 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1302, ptr %wp1303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a034 word 0x9a89030a
  %r1304.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1304 = load i64, ptr %r1304.p, align 8, !alias.scope !3, !noalias !4
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %r1306.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1306 = load i64, ptr %r1306.p, align 8, !alias.scope !3, !noalias !4
  %fsh1308 = lshr i64 %r1306, 30
  %cond1307 = trunc i64 %fsh1308 to i1
  %sel1309 = select i1 %cond1307, i64 %r1304, i64 %r1305
  %wp1310 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel1309, ptr %wp1310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a038 word 0xa9007d59
  %r1311.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1311 = load i64, ptr %r1311.p, align 8, !alias.scope !3, !noalias !4
  %t1312 = add i64 %r1311, 8
  %r1313.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1313 = load i64, ptr %r1313.p, align 8, !alias.scope !3, !noalias !4
  %gmp1314 = inttoptr i64 %r1311 to ptr
  store i64 %r1313, ptr %gmp1314, align 1, !alias.scope !4, !noalias !3
  %gmp1315 = inttoptr i64 %t1312 to ptr
  store i64 0, ptr %gmp1315, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a03c word 0xf940626b
  %r1316.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1316 = load i64, ptr %r1316.p, align 8, !alias.scope !3, !noalias !4
  %t1317 = add i64 %r1316, 192
  %gmp1318 = inttoptr i64 %t1317 to ptr
  %gml1319 = load i64, ptr %gmp1318, align 1, !alias.scope !4, !noalias !3
  %wp1320 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1319, ptr %wp1320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a040 word 0xb5000c6b
  %r1321.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1321 = load i64, ptr %r1321.p, align 8, !alias.scope !3, !noalias !4
  %cmp1322 = icmp ne i64 %r1321, 0
  br i1 %cmp1322, label %L_80007a1cc, label %L_80007a044
L_80007a044:
  ; @pc 0x80007a044 word 0xf900034a
  %r1323.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1323 = load i64, ptr %r1323.p, align 8, !alias.scope !3, !noalias !4
  %r1324.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1324 = load i64, ptr %r1324.p, align 8, !alias.scope !3, !noalias !4
  %gmp1325 = inttoptr i64 %r1323 to ptr
  store i64 %r1324, ptr %gmp1325, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a048 word 0x9100430b
  %r1326.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1326 = load i64, ptr %r1326.p, align 8, !alias.scope !3, !noalias !4
  %t1327 = add i64 %r1326, 16
  %wp1328 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1327, ptr %wp1328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a04c word 0xaa1303e0
  %r1329.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1329 = load i64, ptr %r1329.p, align 8, !alias.scope !3, !noalias !4
  %t1330 = or i64 0, %r1329
  %wp1331 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1330, ptr %wp1331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a050 word 0xb940826a
  %r1332.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1332 = load i64, ptr %r1332.p, align 8, !alias.scope !3, !noalias !4
  %t1333 = add i64 %r1332, 128
  %gmp1334 = inttoptr i64 %t1333 to ptr
  %gml1335 = load i32, ptr %gmp1334, align 1, !alias.scope !4, !noalias !3
  %c1336 = zext i32 %gml1335 to i64
  %wp1337 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1336, ptr %wp1337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a054 word 0xaa1503e1
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %t1339 = or i64 0, %r1338
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1339, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a058 word 0x2a1403e2
  %r1341.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1341 = load i64, ptr %r1341.p, align 8, !alias.scope !3, !noalias !4
  %c1342 = trunc i64 %r1341 to i32
  %t1343 = or i32 0, %c1342
  %c1344 = zext i32 %t1343 to i64
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1344, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a05c word 0x7100055f
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %c1347 = trunc i64 %r1346 to i32
  %t1348 = sub i32 %c1347, 1
  %fn1349 = icmp slt i32 %t1348, 0
  %fz1350 = icmp eq i32 %t1348, 0
  %fc1351 = icmp uge i32 %c1347, 1
  %fx11352 = xor i32 %c1347, 1
  %fx21353 = xor i32 %c1347, %t1348
  %fva1354 = and i32 %fx11352, %fx21353
  %fv1355 = icmp slt i32 %fva1354, 0
  %nz1356 = zext i1 %fn1349 to i64
  %zz1357 = zext i1 %fz1350 to i64
  %cz1358 = zext i1 %fc1351 to i64
  %vz1359 = zext i1 %fv1355 to i64
  %ns1360 = shl i64 %nz1356, 31
  %zs1361 = shl i64 %zz1357, 30
  %cs1362 = shl i64 %cz1358, 29
  %vs1363 = shl i64 %vz1359, 28
  %nzor1364 = or i64 %ns1360, %zs1361
  %cvor1365 = or i64 %cs1362, %vs1363
  %nzcv1366 = or i64 %nzor1364, %cvor1365
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1366, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a060 word 0x9a98016a
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1369 = load i64, ptr %r1369.p, align 8, !alias.scope !3, !noalias !4
  %r1370.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1370 = load i64, ptr %r1370.p, align 8, !alias.scope !3, !noalias !4
  %fsh1372 = lshr i64 %r1370, 30
  %cond1371 = trunc i64 %fsh1372 to i1
  %sel1373 = select i1 %cond1371, i64 %r1368, i64 %r1369
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel1373, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a064 word 0x9a890108
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %r1376.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1376 = load i64, ptr %r1376.p, align 8, !alias.scope !3, !noalias !4
  %r1377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1377 = load i64, ptr %r1377.p, align 8, !alias.scope !3, !noalias !4
  %fsh1379 = lshr i64 %r1377, 30
  %cond1378 = trunc i64 %fsh1379 to i1
  %sel1380 = select i1 %cond1378, i64 %r1375, i64 %r1376
  %wp1381 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1380, ptr %wp1381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a068 word 0xa90b226a
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %t1383 = add i64 %r1382, 176
  %t1384 = add i64 %t1383, 8
  %r1385.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1385 = load i64, ptr %r1385.p, align 8, !alias.scope !3, !noalias !4
  %gmp1386 = inttoptr i64 %t1383 to ptr
  store i64 %r1385, ptr %gmp1386, align 1, !alias.scope !4, !noalias !3
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %gmp1388 = inttoptr i64 %t1384 to ptr
  store i64 %r1387, ptr %gmp1388, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a06c word 0x940001f3
  %wp1389 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238192, ptr %wp1389, align 8, !alias.scope !3, !noalias !4
  call void @f_80007a838(ptr %c)
  ; @pc 0x80007a070 word 0xaa0003f8
  %r1390.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1390 = load i64, ptr %r1390.p, align 8, !alias.scope !3, !noalias !4
  %t1391 = or i64 0, %r1390
  %wp1392 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1391, ptr %wp1392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a074 word 0xb4ffebf7
  %r1393.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1393 = load i64, ptr %r1393.p, align 8, !alias.scope !3, !noalias !4
  %cmp1394 = icmp eq i64 %r1393, 0
  br i1 %cmp1394, label %L_800079df0, label %L_80007a078_ft
L_80007a084:
  ; @pc 0x80007a084 word 0xeb0a017f
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %r1400.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1400 = load i64, ptr %r1400.p, align 8, !alias.scope !3, !noalias !4
  %t1401 = sub i64 %r1399, %r1400
  %fn1402 = icmp slt i64 %t1401, 0
  %fz1403 = icmp eq i64 %t1401, 0
  %fc1404 = icmp uge i64 %r1399, %r1400
  %fx11405 = xor i64 %r1399, %r1400
  %fx21406 = xor i64 %r1399, %t1401
  %fva1407 = and i64 %fx11405, %fx21406
  %fv1408 = icmp slt i64 %fva1407, 0
  %nz1409 = zext i1 %fn1402 to i64
  %zz1410 = zext i1 %fz1403 to i64
  %cz1411 = zext i1 %fc1404 to i64
  %vz1412 = zext i1 %fv1408 to i64
  %ns1413 = shl i64 %nz1409, 31
  %zs1414 = shl i64 %zz1410, 30
  %cs1415 = shl i64 %cz1411, 29
  %vs1416 = shl i64 %vz1412, 28
  %nzor1417 = or i64 %ns1413, %zs1414
  %cvor1418 = or i64 %cs1415, %vs1416
  %nzcv1419 = or i64 %nzor1417, %cvor1418
  %wp1420 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1419, ptr %wp1420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a088 word 0x54003ac0
  %r1421.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1421 = load i64, ptr %r1421.p, align 8, !alias.scope !3, !noalias !4
  %fsh1423 = lshr i64 %r1421, 30
  %cond1422 = trunc i64 %fsh1423 to i1
  br i1 %cond1422, label %L_80007a7e0, label %L_80007a08c_ft
L_80007a0a0:
  ; @pc 0x80007a0a0 word 0xf9400c0b
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %t1446 = add i64 %r1445, 24
  %gmp1447 = inttoptr i64 %t1446 to ptr
  %gml1448 = load i64, ptr %gmp1447, align 1, !alias.scope !4, !noalias !3
  %wp1449 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1448, ptr %wp1449, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0a4 word 0xeb17017f
  %r1450.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1450 = load i64, ptr %r1450.p, align 8, !alias.scope !3, !noalias !4
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %t1452 = sub i64 %r1450, %r1451
  %fn1453 = icmp slt i64 %t1452, 0
  %fz1454 = icmp eq i64 %t1452, 0
  %fc1455 = icmp uge i64 %r1450, %r1451
  %fx11456 = xor i64 %r1450, %r1451
  %fx21457 = xor i64 %r1450, %t1452
  %fva1458 = and i64 %fx11456, %fx21457
  %fv1459 = icmp slt i64 %fva1458, 0
  %nz1460 = zext i1 %fn1453 to i64
  %zz1461 = zext i1 %fz1454 to i64
  %cz1462 = zext i1 %fc1455 to i64
  %vz1463 = zext i1 %fv1459 to i64
  %ns1464 = shl i64 %nz1460, 31
  %zs1465 = shl i64 %zz1461, 30
  %cs1466 = shl i64 %cz1462, 29
  %vs1467 = shl i64 %vz1463, 28
  %nzor1468 = or i64 %ns1464, %zs1465
  %cvor1469 = or i64 %cs1466, %vs1467
  %nzcv1470 = or i64 %nzor1468, %cvor1469
  %wp1471 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1470, ptr %wp1471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0a8 word 0x540029c3
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %fsh1474 = lshr i64 %r1472, 29
  %ftr1475 = trunc i64 %fsh1474 to i1
  %cond1473 = xor i1 %ftr1475, true
  br i1 %cond1473, label %L_80007a5e0, label %L_80007a0ac_ft
L_80007a0d0:
  ; @pc 0x80007a0d0 word 0x8b09000a
  %r1531.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1531 = load i64, ptr %r1531.p, align 8, !alias.scope !3, !noalias !4
  %r1532.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1532 = load i64, ptr %r1532.p, align 8, !alias.scope !3, !noalias !4
  %t1533 = add i64 %r1531, %r1532
  %wp1534 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1533, ptr %wp1534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0d4 word 0x91008009
  %r1535.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1535 = load i64, ptr %r1535.p, align 8, !alias.scope !3, !noalias !4
  %t1536 = add i64 %r1535, 32
  %wp1537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1536, ptr %wp1537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0d8 word 0xf940054a
  %r1538.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1538 = load i64, ptr %r1538.p, align 8, !alias.scope !3, !noalias !4
  %t1539 = add i64 %r1538, 8
  %gmp1540 = inttoptr i64 %t1539 to ptr
  %gml1541 = load i64, ptr %gmp1540, align 1, !alias.scope !4, !noalias !3
  %wp1542 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1541, ptr %wp1542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0dc word 0x8b080148
  %r1543.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1543 = load i64, ptr %r1543.p, align 8, !alias.scope !3, !noalias !4
  %r1544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1544 = load i64, ptr %r1544.p, align 8, !alias.scope !3, !noalias !4
  %t1545 = add i64 %r1543, %r1544
  %wp1546 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1545, ptr %wp1546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0e0 word 0xeb19015f
  %r1547.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1547 = load i64, ptr %r1547.p, align 8, !alias.scope !3, !noalias !4
  %r1548.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1548 = load i64, ptr %r1548.p, align 8, !alias.scope !3, !noalias !4
  %t1549 = sub i64 %r1547, %r1548
  %fn1550 = icmp slt i64 %t1549, 0
  %fz1551 = icmp eq i64 %t1549, 0
  %fc1552 = icmp uge i64 %r1547, %r1548
  %fx11553 = xor i64 %r1547, %r1548
  %fx21554 = xor i64 %r1547, %t1549
  %fva1555 = and i64 %fx11553, %fx21554
  %fv1556 = icmp slt i64 %fva1555, 0
  %nz1557 = zext i1 %fn1550 to i64
  %zz1558 = zext i1 %fz1551 to i64
  %cz1559 = zext i1 %fc1552 to i64
  %vz1560 = zext i1 %fv1556 to i64
  %ns1561 = shl i64 %nz1557, 31
  %zs1562 = shl i64 %zz1558, 30
  %cs1563 = shl i64 %cz1559, 29
  %vs1564 = shl i64 %vz1560, 28
  %nzor1565 = or i64 %ns1561, %zs1562
  %cvor1566 = or i64 %cs1563, %vs1564
  %nzcv1567 = or i64 %nzor1565, %cvor1566
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1567, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0e4 word 0x9a8803f4
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %r1570.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1570 = load i64, ptr %r1570.p, align 8, !alias.scope !3, !noalias !4
  %fsh1572 = lshr i64 %r1570, 30
  %cond1571 = trunc i64 %fsh1572 to i1
  %sel1573 = select i1 %cond1571, i64 0, i64 %r1569
  %wp1574 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %sel1573, ptr %wp1574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0e8 word 0x8b0e0128
  %r1575.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1575 = load i64, ptr %r1575.p, align 8, !alias.scope !3, !noalias !4
  %r1576.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1576 = load i64, ptr %r1576.p, align 8, !alias.scope !3, !noalias !4
  %t1577 = add i64 %r1575, %r1576
  %wp1578 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1577, ptr %wp1578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0ec word 0x8b0c010a
  %r1579.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1579 = load i64, ptr %r1579.p, align 8, !alias.scope !3, !noalias !4
  %r1580.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1580 = load i64, ptr %r1580.p, align 8, !alias.scope !3, !noalias !4
  %t1581 = add i64 %r1579, %r1580
  %wp1582 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1581, ptr %wp1582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0f0 word 0x8a0d014a
  %r1583.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1583 = load i64, ptr %r1583.p, align 8, !alias.scope !3, !noalias !4
  %r1584.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1584 = load i64, ptr %r1584.p, align 8, !alias.scope !3, !noalias !4
  %t1585 = and i64 %r1584, %r1583
  %wp1586 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1585, ptr %wp1586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0f4 word 0xcb080148
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %r1588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1588 = load i64, ptr %r1588.p, align 8, !alias.scope !3, !noalias !4
  %t1589 = sub i64 %r1587, %r1588
  %wp1590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1589, ptr %wp1590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0f8 word 0x8b170115
  %r1591.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1591 = load i64, ptr %r1591.p, align 8, !alias.scope !3, !noalias !4
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = add i64 %r1591, %r1592
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1593, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0fc word 0xf140411f
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = sub i64 %r1595, 65536
  %fn1597 = icmp slt i64 %t1596, 0
  %fz1598 = icmp eq i64 %t1596, 0
  %fc1599 = icmp uge i64 %r1595, 65536
  %fx11600 = xor i64 %r1595, 65536
  %fx21601 = xor i64 %r1595, %t1596
  %fva1602 = and i64 %fx11600, %fx21601
  %fv1603 = icmp slt i64 %fva1602, 0
  %nz1604 = zext i1 %fn1597 to i64
  %zz1605 = zext i1 %fz1598 to i64
  %cz1606 = zext i1 %fc1599 to i64
  %vz1607 = zext i1 %fv1603 to i64
  %ns1608 = shl i64 %nz1604, 31
  %zs1609 = shl i64 %zz1605, 30
  %cs1610 = shl i64 %cz1606, 29
  %vs1611 = shl i64 %vz1607, 28
  %nzor1612 = or i64 %ns1608, %zs1609
  %cvor1613 = or i64 %cs1610, %vs1611
  %nzcv1614 = or i64 %nzor1612, %cvor1613
  %wp1615 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1614, ptr %wp1615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a100 word 0x54002a62
  %r1616.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1616 = load i64, ptr %r1616.p, align 8, !alias.scope !3, !noalias !4
  %fsh1618 = lshr i64 %r1616, 29
  %cond1617 = trunc i64 %fsh1618 to i1
  br i1 %cond1617, label %L_80007a64c, label %L_80007a104_ft
L_80007a11c:
  ; @pc 0x80007a11c word 0xf9000c17
  %r1650.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1650 = load i64, ptr %r1650.p, align 8, !alias.scope !3, !noalias !4
  %t1651 = add i64 %r1650, 24
  %r1652.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1652 = load i64, ptr %r1652.p, align 8, !alias.scope !3, !noalias !4
  %gmp1653 = inttoptr i64 %t1651 to ptr
  store i64 %r1652, ptr %gmp1653, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a120 word 0xb980c668
  %r1654.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1654 = load i64, ptr %r1654.p, align 8, !alias.scope !3, !noalias !4
  %t1655 = add i64 %r1654, 196
  %gmp1656 = inttoptr i64 %t1655 to ptr
  %gml1657 = load i32, ptr %gmp1656, align 1, !alias.scope !4, !noalias !3
  %c1658 = sext i32 %gml1657 to i64
  %wp1659 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1658, ptr %wp1659, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a124 word 0x8b000108
  %r1660.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1660 = load i64, ptr %r1660.p, align 8, !alias.scope !3, !noalias !4
  %r1661.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1661 = load i64, ptr %r1661.p, align 8, !alias.scope !3, !noalias !4
  %t1662 = add i64 %r1660, %r1661
  %wp1663 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1662, ptr %wp1663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a128 word 0xf9400109
  %r1664.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1664 = load i64, ptr %r1664.p, align 8, !alias.scope !3, !noalias !4
  %gmp1665 = inttoptr i64 %r1664 to ptr
  %gml1666 = load i64, ptr %gmp1665, align 1, !alias.scope !4, !noalias !3
  %wp1667 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1666, ptr %wp1667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a12c word 0xb4000069
  %r1668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1668 = load i64, ptr %r1668.p, align 8, !alias.scope !3, !noalias !4
  %cmp1669 = icmp eq i64 %r1668, 0
  br i1 %cmp1669, label %L_80007a138, label %L_80007a130_ft
L_80007a138:
  ; @pc 0x80007a138 word 0xf9400509
  %r1679.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1679 = load i64, ptr %r1679.p, align 8, !alias.scope !3, !noalias !4
  %t1680 = add i64 %r1679, 8
  %gmp1681 = inttoptr i64 %t1680 to ptr
  %gml1682 = load i64, ptr %gmp1681, align 1, !alias.scope !4, !noalias !3
  %wp1683 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1682, ptr %wp1683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a13c word 0xb4000069
  %r1684.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1684 = load i64, ptr %r1684.p, align 8, !alias.scope !3, !noalias !4
  %cmp1685 = icmp eq i64 %r1684, 0
  br i1 %cmp1685, label %L_80007a148, label %L_80007a140_ft
L_80007a148:
  ; @pc 0x80007a148 word 0xa9007d1f
  %r1693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1693 = load i64, ptr %r1693.p, align 8, !alias.scope !3, !noalias !4
  %t1694 = add i64 %r1693, 8
  %gmp1695 = inttoptr i64 %r1693 to ptr
  store i64 0, ptr %gmp1695, align 1, !alias.scope !4, !noalias !3
  %gmp1696 = inttoptr i64 %t1694 to ptr
  store i64 0, ptr %gmp1696, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a14c word 0xb940c268
  %r1697.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1697 = load i64, ptr %r1697.p, align 8, !alias.scope !3, !noalias !4
  %t1698 = add i64 %r1697, 192
  %gmp1699 = inttoptr i64 %t1698 to ptr
  %gml1700 = load i32, ptr %gmp1699, align 1, !alias.scope !4, !noalias !3
  %c1701 = zext i32 %gml1700 to i64
  %wp1702 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1701, ptr %wp1702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a150 word 0x51000508
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %c1704 = trunc i64 %r1703 to i32
  %t1705 = sub i32 %c1704, 1
  %c1706 = zext i32 %t1705 to i64
  %wp1707 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1706, ptr %wp1707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a154 word 0xb900c268
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %t1709 = add i64 %r1708, 192
  %r1710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1710 = load i64, ptr %r1710.p, align 8, !alias.scope !3, !noalias !4
  %c1711 = trunc i64 %r1710 to i32
  %gmp1712 = inttoptr i64 %t1709 to ptr
  store i32 %c1711, ptr %gmp1712, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a158
L_80007a158:
  ; @pc 0x80007a158 word 0xb9408269
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %t1714 = add i64 %r1713, 128
  %gmp1715 = inttoptr i64 %t1714 to ptr
  %gml1716 = load i32, ptr %gmp1715, align 1, !alias.scope !4, !noalias !3
  %c1717 = zext i32 %gml1716 to i64
  %wp1718 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1717, ptr %wp1718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a15c word 0xcb150178
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %r1720.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1720 = load i64, ptr %r1720.p, align 8, !alias.scope !3, !noalias !4
  %t1721 = sub i64 %r1719, %r1720
  %wp1722 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1721, ptr %wp1722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a160 word 0x91032268
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %t1724 = add i64 %r1723, 200
  %wp1725 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1724, ptr %wp1725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a164 word 0xb980de6a
  %r1726.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1726 = load i64, ptr %r1726.p, align 8, !alias.scope !3, !noalias !4
  %t1727 = add i64 %r1726, 220
  %gmp1728 = inttoptr i64 %t1727 to ptr
  %gml1729 = load i32, ptr %gmp1728, align 1, !alias.scope !4, !noalias !3
  %c1730 = sext i32 %gml1729 to i64
  %wp1731 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1730, ptr %wp1731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a168 word 0x8b0a0001
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %r1733.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1733 = load i64, ptr %r1733.p, align 8, !alias.scope !3, !noalias !4
  %t1734 = add i64 %r1732, %r1733
  %wp1735 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1734, ptr %wp1735, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a16c word 0x7100053f
  %r1736.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1736 = load i64, ptr %r1736.p, align 8, !alias.scope !3, !noalias !4
  %c1737 = trunc i64 %r1736 to i32
  %t1738 = sub i32 %c1737, 1
  %fn1739 = icmp slt i32 %t1738, 0
  %fz1740 = icmp eq i32 %t1738, 0
  %fc1741 = icmp uge i32 %c1737, 1
  %fx11742 = xor i32 %c1737, 1
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
  ; @pc 0x80007a170 word 0x54002b41
  %r1758.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1758 = load i64, ptr %r1758.p, align 8, !alias.scope !3, !noalias !4
  %fsh1760 = lshr i64 %r1758, 30
  %ftr1761 = trunc i64 %fsh1760 to i1
  %cond1759 = xor i1 %ftr1761, true
  br i1 %cond1759, label %L_80007a6d8, label %L_80007a174_ft
L_80007a188:
  ; @pc 0x80007a188 word 0xb940da68
  %r1781.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1781 = load i64, ptr %r1781.p, align 8, !alias.scope !3, !noalias !4
  %t1782 = add i64 %r1781, 216
  %gmp1783 = inttoptr i64 %t1782 to ptr
  %gml1784 = load i32, ptr %gmp1783, align 1, !alias.scope !4, !noalias !3
  %c1785 = zext i32 %gml1784 to i64
  %wp1786 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1785, ptr %wp1786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a18c word 0xf100871f
  %r1787.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1787 = load i64, ptr %r1787.p, align 8, !alias.scope !3, !noalias !4
  %t1788 = sub i64 %r1787, 33
  %fn1789 = icmp slt i64 %t1788, 0
  %fz1790 = icmp eq i64 %t1788, 0
  %fc1791 = icmp uge i64 %r1787, 33
  %fx11792 = xor i64 %r1787, 33
  %fx21793 = xor i64 %r1787, %t1788
  %fva1794 = and i64 %fx11792, %fx21793
  %fv1795 = icmp slt i64 %fva1794, 0
  %nz1796 = zext i1 %fn1789 to i64
  %zz1797 = zext i1 %fz1790 to i64
  %cz1798 = zext i1 %fc1791 to i64
  %vz1799 = zext i1 %fv1795 to i64
  %ns1800 = shl i64 %nz1796, 31
  %zs1801 = shl i64 %zz1797, 30
  %cs1802 = shl i64 %cz1798, 29
  %vs1803 = shl i64 %vz1799, 28
  %nzor1804 = or i64 %ns1800, %zs1801
  %cvor1805 = or i64 %cs1802, %vs1803
  %nzcv1806 = or i64 %nzor1804, %cvor1805
  %wp1807 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1806, ptr %wp1807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a190 word 0x11000508
  %r1808.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1808 = load i64, ptr %r1808.p, align 8, !alias.scope !3, !noalias !4
  %c1809 = trunc i64 %r1808 to i32
  %t1810 = add i32 %c1809, 1
  %c1811 = zext i32 %t1810 to i64
  %wp1812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1811, ptr %wp1812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a194 word 0xb900da68
  %r1813.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1813 = load i64, ptr %r1813.p, align 8, !alias.scope !3, !noalias !4
  %t1814 = add i64 %r1813, 216
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %c1816 = trunc i64 %r1815 to i32
  %gmp1817 = inttoptr i64 %t1814 to ptr
  store i32 %c1816, ptr %gmp1817, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a198 word 0x54002ae3
  %r1818.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1818 = load i64, ptr %r1818.p, align 8, !alias.scope !3, !noalias !4
  %fsh1820 = lshr i64 %r1818, 29
  %ftr1821 = trunc i64 %fsh1820 to i1
  %cond1819 = xor i1 %ftr1821, true
  br i1 %cond1819, label %L_80007a6f4, label %L_80007a19c_ft
L_80007a1ac:
  ; @pc 0x80007a1ac word 0x4b0c03f8
  %r1836.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1836 = load i64, ptr %r1836.p, align 8, !alias.scope !3, !noalias !4
  %c1837 = trunc i64 %r1836 to i32
  %t1838 = sub i32 0, %c1837
  %c1839 = zext i32 %t1838 to i64
  %wp1840 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1839, ptr %wp1840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1b0 word 0xaa1303e0
  %r1841.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1841 = load i64, ptr %r1841.p, align 8, !alias.scope !3, !noalias !4
  %t1842 = or i64 0, %r1841
  %wp1843 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1842, ptr %wp1843, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1b4 word 0xaa1703e1
  %r1844.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1844 = load i64, ptr %r1844.p, align 8, !alias.scope !3, !noalias !4
  %t1845 = or i64 0, %r1844
  %wp1846 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1845, ptr %wp1846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1b8 word 0x3100219f
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %c1848 = trunc i64 %r1847 to i32
  %t1849 = add i32 %c1848, 8
  %fn1850 = icmp slt i32 %t1849, 0
  %fz1851 = icmp eq i32 %t1849, 0
  %fc1852 = icmp ult i32 %t1849, %c1848
  %fx11853 = xor i32 %c1848, %t1849
  %fx21854 = xor i32 8, %t1849
  %fva1855 = and i32 %fx11853, %fx21854
  %fv1856 = icmp slt i32 %fva1855, 0
  %nz1857 = zext i1 %fn1850 to i64
  %zz1858 = zext i1 %fz1851 to i64
  %cz1859 = zext i1 %fc1852 to i64
  %vz1860 = zext i1 %fv1856 to i64
  %ns1861 = shl i64 %nz1857, 31
  %zs1862 = shl i64 %zz1858, 30
  %cs1863 = shl i64 %cz1859, 29
  %vs1864 = shl i64 %vz1860, 28
  %nzor1865 = or i64 %ns1861, %zs1862
  %cvor1866 = or i64 %cs1863, %vs1864
  %nzcv1867 = or i64 %nzor1865, %cvor1866
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1867, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1bc word 0x54002a63
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %fsh1871 = lshr i64 %r1869, 29
  %ftr1872 = trunc i64 %fsh1871 to i1
  %cond1870 = xor i1 %ftr1872, true
  br i1 %cond1870, label %L_80007a708, label %L_80007a1c0_ft
L_80007a1c4:
  ; @pc 0x80007a1c4 word 0xb5001880
  %r1874.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1874 = load i64, ptr %r1874.p, align 8, !alias.scope !3, !noalias !4
  %cmp1875 = icmp ne i64 %r1874, 0
  br i1 %cmp1875, label %L_80007a4d4, label %L_80007a1c8_ft
L_80007a1cc:
  ; @pc 0x80007a1cc word 0xaa0b03ec
  %r1876.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1876 = load i64, ptr %r1876.p, align 8, !alias.scope !3, !noalias !4
  %t1877 = or i64 0, %r1876
  %wp1878 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t1877, ptr %wp1878, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1d0 word 0xf940056b
  %r1879.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1879 = load i64, ptr %r1879.p, align 8, !alias.scope !3, !noalias !4
  %t1880 = add i64 %r1879, 8
  %gmp1881 = inttoptr i64 %t1880 to ptr
  %gml1882 = load i64, ptr %gmp1881, align 1, !alias.scope !4, !noalias !3
  %wp1883 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1882, ptr %wp1883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1d4 word 0xb5ffffcb
  %r1884.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1884 = load i64, ptr %r1884.p, align 8, !alias.scope !3, !noalias !4
  %cmp1885 = icmp ne i64 %r1884, 0
  br i1 %cmp1885, label %L_80007a1cc, label %L_80007a1d8_ft
L_80007a1e0:
  ; @pc 0x80007a1e0 word 0xf9405e6b
  %r1889.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1889 = load i64, ptr %r1889.p, align 8, !alias.scope !3, !noalias !4
  %t1890 = add i64 %r1889, 184
  %gmp1891 = inttoptr i64 %t1890 to ptr
  %gml1892 = load i64, ptr %gmp1891, align 1, !alias.scope !4, !noalias !3
  %wp1893 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1892, ptr %wp1893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1e4 word 0x4b0803e9
  %r1894.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1894 = load i64, ptr %r1894.p, align 8, !alias.scope !3, !noalias !4
  %c1895 = trunc i64 %r1894 to i32
  %t1896 = sub i32 0, %c1895
  %c1897 = zext i32 %t1896 to i64
  %wp1898 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1897, ptr %wp1898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1e8 word 0xcb17016a
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %r1900.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1900 = load i64, ptr %r1900.p, align 8, !alias.scope !3, !noalias !4
  %t1901 = sub i64 %r1899, %r1900
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1901, ptr %wp1902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1ec word 0xeb0a017f
  %r1903.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1903 = load i64, ptr %r1903.p, align 8, !alias.scope !3, !noalias !4
  %r1904.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1904 = load i64, ptr %r1904.p, align 8, !alias.scope !3, !noalias !4
  %t1905 = sub i64 %r1903, %r1904
  %fn1906 = icmp slt i64 %t1905, 0
  %fz1907 = icmp eq i64 %t1905, 0
  %fc1908 = icmp uge i64 %r1903, %r1904
  %fx11909 = xor i64 %r1903, %r1904
  %fx21910 = xor i64 %r1903, %t1905
  %fva1911 = and i64 %fx11909, %fx21910
  %fv1912 = icmp slt i64 %fva1911, 0
  %nz1913 = zext i1 %fn1906 to i64
  %zz1914 = zext i1 %fz1907 to i64
  %cz1915 = zext i1 %fc1908 to i64
  %vz1916 = zext i1 %fv1912 to i64
  %ns1917 = shl i64 %nz1913, 31
  %zs1918 = shl i64 %zz1914, 30
  %cs1919 = shl i64 %cz1915, 29
  %vs1920 = shl i64 %vz1916, 28
  %nzor1921 = or i64 %ns1917, %zs1918
  %cvor1922 = or i64 %cs1919, %vs1920
  %nzcv1923 = or i64 %nzor1921, %cvor1922
  %wp1924 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1923, ptr %wp1924, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1f0 word 0x54003023
  %r1925.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1925 = load i64, ptr %r1925.p, align 8, !alias.scope !3, !noalias !4
  %fsh1927 = lshr i64 %r1925, 29
  %ftr1928 = trunc i64 %fsh1927 to i1
  %cond1926 = xor i1 %ftr1928, true
  br i1 %cond1926, label %L_80007a7f4, label %L_80007a1f4_ft
L_80007a214:
  ; @pc 0x80007a214 word 0x93407e80
  %r1976.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1976 = load i64, ptr %r1976.p, align 8, !alias.scope !3, !noalias !4
  %t1977 = lshr i64 %r1976, 31
  %t1978 = and i64 %t1977, 1
  %t1979 = sub i64 0, %t1978
  %t1980 = and i64 %t1979, -4294967296
  %t1981 = and i64 %r1976, 4294967295
  %t1982 = or i64 %t1980, %t1981
  %wp1983 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1982, ptr %wp1983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a218 word 0xaa1503e1
  %r1984.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1984 = load i64, ptr %r1984.p, align 8, !alias.scope !3, !noalias !4
  %t1985 = or i64 0, %r1984
  %wp1986 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1985, ptr %wp1986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a21c word 0xa9484ff4
  %r1987.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1987 = load i64, ptr %r1987.p, align 8, !alias.scope !3, !noalias !4
  %t1988 = add i64 %r1987, 128
  %t1989 = add i64 %t1988, 8
  %gmp1990 = inttoptr i64 %t1988 to ptr
  %gml1991 = load i64, ptr %gmp1990, align 1, !alias.scope !4, !noalias !3
  %gmp1992 = inttoptr i64 %t1989 to ptr
  %gml1993 = load i64, ptr %gmp1992, align 1, !alias.scope !4, !noalias !3
  %wp1994 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1991, ptr %wp1994, align 8, !alias.scope !3, !noalias !4
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1993, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a220 word 0xa94757f6
  %r1996.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1996 = load i64, ptr %r1996.p, align 8, !alias.scope !3, !noalias !4
  %t1997 = add i64 %r1996, 112
  %t1998 = add i64 %t1997, 8
  %gmp1999 = inttoptr i64 %t1997 to ptr
  %gml2000 = load i64, ptr %gmp1999, align 1, !alias.scope !4, !noalias !3
  %gmp2001 = inttoptr i64 %t1998 to ptr
  %gml2002 = load i64, ptr %gmp2001, align 1, !alias.scope !4, !noalias !3
  %wp2003 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2000, ptr %wp2003, align 8, !alias.scope !3, !noalias !4
  %wp2004 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml2002, ptr %wp2004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a224 word 0xa9465ff8
  %r2005.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2005 = load i64, ptr %r2005.p, align 8, !alias.scope !3, !noalias !4
  %t2006 = add i64 %r2005, 96
  %t2007 = add i64 %t2006, 8
  %gmp2008 = inttoptr i64 %t2006 to ptr
  %gml2009 = load i64, ptr %gmp2008, align 1, !alias.scope !4, !noalias !3
  %gmp2010 = inttoptr i64 %t2007 to ptr
  %gml2011 = load i64, ptr %gmp2010, align 1, !alias.scope !4, !noalias !3
  %wp2012 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml2009, ptr %wp2012, align 8, !alias.scope !3, !noalias !4
  %wp2013 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml2011, ptr %wp2013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a228 word 0xa94567fa
  %r2014.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2014 = load i64, ptr %r2014.p, align 8, !alias.scope !3, !noalias !4
  %t2015 = add i64 %r2014, 80
  %t2016 = add i64 %t2015, 8
  %gmp2017 = inttoptr i64 %t2015 to ptr
  %gml2018 = load i64, ptr %gmp2017, align 1, !alias.scope !4, !noalias !3
  %gmp2019 = inttoptr i64 %t2016 to ptr
  %gml2020 = load i64, ptr %gmp2019, align 1, !alias.scope !4, !noalias !3
  %wp2021 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml2018, ptr %wp2021, align 8, !alias.scope !3, !noalias !4
  %wp2022 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml2020, ptr %wp2022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a22c word 0xa9446ffc
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %t2024 = add i64 %r2023, 64
  %t2025 = add i64 %t2024, 8
  %gmp2026 = inttoptr i64 %t2024 to ptr
  %gml2027 = load i64, ptr %gmp2026, align 1, !alias.scope !4, !noalias !3
  %gmp2028 = inttoptr i64 %t2025 to ptr
  %gml2029 = load i64, ptr %gmp2028, align 1, !alias.scope !4, !noalias !3
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml2027, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  %wp2031 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml2029, ptr %wp2031, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a230 word 0xa9437bfd
  %r2032.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2032 = load i64, ptr %r2032.p, align 8, !alias.scope !3, !noalias !4
  %t2033 = add i64 %r2032, 48
  %t2034 = add i64 %t2033, 8
  %gmp2035 = inttoptr i64 %t2033 to ptr
  %gml2036 = load i64, ptr %gmp2035, align 1, !alias.scope !4, !noalias !3
  %gmp2037 = inttoptr i64 %t2034 to ptr
  %gml2038 = load i64, ptr %gmp2037, align 1, !alias.scope !4, !noalias !3
  %wp2039 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml2036, ptr %wp2039, align 8, !alias.scope !3, !noalias !4
  %wp2040 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml2038, ptr %wp2040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a234 word 0x910243ff
  %r2041.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2041 = load i64, ptr %r2041.p, align 8, !alias.scope !3, !noalias !4
  %t2042 = add i64 %r2041, 144
  %wp2043 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t2042, ptr %wp2043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a238 word 0x14007eaa
  musttail call void @f_800099ce0(ptr %c)
  ret void
L_80007a23c:
  ; @pc 0x80007a23c word 0x9001d208
  %wp2044 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421317632, ptr %wp2044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a240 word 0x91368108
  %r2045.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2045 = load i64, ptr %r2045.p, align 8, !alias.scope !3, !noalias !4
  %t2046 = add i64 %r2045, 3488
  %wp2047 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2046, ptr %wp2047, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a244 word 0xf9400108
  %r2048.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2048 = load i64, ptr %r2048.p, align 8, !alias.scope !3, !noalias !4
  %gmp2049 = inttoptr i64 %r2048 to ptr
  %gml2050 = load i64, ptr %gmp2049, align 1, !alias.scope !4, !noalias !3
  %wp2051 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2050, ptr %wp2051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a248 word 0xb9404900
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %t2053 = add i64 %r2052, 72
  %gmp2054 = inttoptr i64 %t2053 to ptr
  %gml2055 = load i32, ptr %gmp2054, align 1, !alias.scope !4, !noalias !3
  %c2056 = zext i32 %gml2055 to i64
  %wp2057 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c2056, ptr %wp2057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a24c word 0x94aca61d
  %wp2058 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238672, ptr %wp2058, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3ac0(ptr %c)
  ; @pc 0x80007a250 word 0x910022c8
  %r2059.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2059 = load i64, ptr %r2059.p, align 8, !alias.scope !3, !noalias !4
  %t2060 = add i64 %r2059, 8
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a254 word 0x91022009
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %t2063 = add i64 %r2062, 136
  %wp2064 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2063, ptr %wp2064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a258 word 0xf100001f
  %r2065.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2065 = load i64, ptr %r2065.p, align 8, !alias.scope !3, !noalias !4
  %t2066 = sub i64 %r2065, 0
  %fn2067 = icmp slt i64 %t2066, 0
  %fz2068 = icmp eq i64 %t2066, 0
  %fc2069 = icmp uge i64 %r2065, 0
  %fx12070 = xor i64 %r2065, 0
  %fx22071 = xor i64 %r2065, %t2066
  %fva2072 = and i64 %fx12070, %fx22071
  %fv2073 = icmp slt i64 %fva2072, 0
  %nz2074 = zext i1 %fn2067 to i64
  %zz2075 = zext i1 %fz2068 to i64
  %cz2076 = zext i1 %fc2069 to i64
  %vz2077 = zext i1 %fv2073 to i64
  %ns2078 = shl i64 %nz2074, 31
  %zs2079 = shl i64 %zz2075, 30
  %cs2080 = shl i64 %cz2076, 29
  %vs2081 = shl i64 %vz2077, 28
  %nzor2082 = or i64 %ns2078, %zs2079
  %cvor2083 = or i64 %cs2080, %vs2081
  %nzcv2084 = or i64 %nzor2082, %cvor2083
  %wp2085 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2084, ptr %wp2085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a25c word 0x9a890108
  %r2086.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2086 = load i64, ptr %r2086.p, align 8, !alias.scope !3, !noalias !4
  %r2087.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2087 = load i64, ptr %r2087.p, align 8, !alias.scope !3, !noalias !4
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %fsh2090 = lshr i64 %r2088, 30
  %cond2089 = trunc i64 %fsh2090 to i1
  %sel2091 = select i1 %cond2089, i64 %r2086, i64 %r2087
  %wp2092 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2091, ptr %wp2092, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a260 word 0xf9400113
  %r2093.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2093 = load i64, ptr %r2093.p, align 8, !alias.scope !3, !noalias !4
  %gmp2094 = inttoptr i64 %r2093 to ptr
  %gml2095 = load i64, ptr %gmp2094, align 1, !alias.scope !4, !noalias !3
  %wp2096 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml2095, ptr %wp2096, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a264 word 0xb5ffd7f3
  %r2097.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2097 = load i64, ptr %r2097.p, align 8, !alias.scope !3, !noalias !4
  %cmp2098 = icmp ne i64 %r2097, 0
  br i1 %cmp2098, label %L_800079d60, label %L_80007a268_ft
L_80007a26c:
  ; @pc 0x80007a26c word 0xb4000168
  %r2099.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2099 = load i64, ptr %r2099.p, align 8, !alias.scope !3, !noalias !4
  %cmp2100 = icmp eq i64 %r2099, 0
  br i1 %cmp2100, label %L_80007a298, label %L_80007a270_ft
L_80007a298:
  ; @pc 0x80007a298 word 0xaa1f03f8
  %t2143 = or i64 0, 0
  %wp2144 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2143, ptr %wp2144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a29c word 0x17fffed5
  br label %L_800079df0
L_80007a2a0:
  ; @pc 0x80007a2a0 word 0xaa1703e0
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2145 = load i64, ptr %r2145.p, align 8, !alias.scope !3, !noalias !4
  %t2146 = or i64 0, %r2145
  %wp2147 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2146, ptr %wp2147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2a4 word 0x94aca76f
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238760, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x80007a2a8 word 0xaa1703f6
  %r2149.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2149 = load i64, ptr %r2149.p, align 8, !alias.scope !3, !noalias !4
  %t2150 = or i64 0, %r2149
  %wp2151 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2150, ptr %wp2151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2ac word 0x17fffeb7
  br label %L_800079d88
L_80007a2b0:
  ; @pc 0x80007a2b0 word 0xf9405e6c
  %r2152.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2152 = load i64, ptr %r2152.p, align 8, !alias.scope !3, !noalias !4
  %t2153 = add i64 %r2152, 184
  %gmp2154 = inttoptr i64 %t2153 to ptr
  %gml2155 = load i64, ptr %gmp2154, align 1, !alias.scope !4, !noalias !3
  %wp2156 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2155, ptr %wp2156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2b4 word 0x4b0903ea
  %r2157.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2157 = load i64, ptr %r2157.p, align 8, !alias.scope !3, !noalias !4
  %c2158 = trunc i64 %r2157 to i32
  %t2159 = sub i32 0, %c2158
  %c2160 = zext i32 %t2159 to i64
  %wp2161 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2160, ptr %wp2161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2b8 word 0xcb19018b
  %r2162.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2162 = load i64, ptr %r2162.p, align 8, !alias.scope !3, !noalias !4
  %r2163.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2163 = load i64, ptr %r2163.p, align 8, !alias.scope !3, !noalias !4
  %t2164 = sub i64 %r2162, %r2163
  %wp2165 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2164, ptr %wp2165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2bc word 0xeb0b019f
  %r2166.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2166 = load i64, ptr %r2166.p, align 8, !alias.scope !3, !noalias !4
  %r2167.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2167 = load i64, ptr %r2167.p, align 8, !alias.scope !3, !noalias !4
  %t2168 = sub i64 %r2166, %r2167
  %fn2169 = icmp slt i64 %t2168, 0
  %fz2170 = icmp eq i64 %t2168, 0
  %fc2171 = icmp uge i64 %r2166, %r2167
  %fx12172 = xor i64 %r2166, %r2167
  %fx22173 = xor i64 %r2166, %t2168
  %fva2174 = and i64 %fx12172, %fx22173
  %fv2175 = icmp slt i64 %fva2174, 0
  %nz2176 = zext i1 %fn2169 to i64
  %zz2177 = zext i1 %fz2170 to i64
  %cz2178 = zext i1 %fc2171 to i64
  %vz2179 = zext i1 %fv2175 to i64
  %ns2180 = shl i64 %nz2176, 31
  %zs2181 = shl i64 %zz2177, 30
  %cs2182 = shl i64 %cz2178, 29
  %vs2183 = shl i64 %vz2179, 28
  %nzor2184 = or i64 %ns2180, %zs2181
  %cvor2185 = or i64 %cs2182, %vs2183
  %nzcv2186 = or i64 %nzor2184, %cvor2185
  %wp2187 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2186, ptr %wp2187, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2c0 word 0x540000c3
  %r2188.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2188 = load i64, ptr %r2188.p, align 8, !alias.scope !3, !noalias !4
  %fsh2190 = lshr i64 %r2188, 29
  %ftr2191 = trunc i64 %fsh2190 to i1
  %cond2189 = xor i1 %ftr2191, true
  br i1 %cond2189, label %L_80007a2d8, label %L_80007a2c4_ft
L_80007a2d8:
  ; @pc 0x80007a2d8 word 0xb4ffe648
  %r2234.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2234 = load i64, ptr %r2234.p, align 8, !alias.scope !3, !noalias !4
  %cmp2235 = icmp eq i64 %r2234, 0
  br i1 %cmp2235, label %L_800079fa0, label %L_80007a2dc_ft
L_80007a2f8:
  ; @pc 0x80007a2f8 word 0xa900d7f3
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %t2265 = add i64 %r2264, 8
  %t2266 = add i64 %t2265, 8
  %r2267.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2267 = load i64, ptr %r2267.p, align 8, !alias.scope !3, !noalias !4
  %gmp2268 = inttoptr i64 %t2265 to ptr
  store i64 %r2267, ptr %gmp2268, align 1, !alias.scope !4, !noalias !3
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %gmp2270 = inttoptr i64 %t2266 to ptr
  store i64 %r2269, ptr %gmp2270, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a2fc word 0xb9001bf4
  %r2271.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2271 = load i64, ptr %r2271.p, align 8, !alias.scope !3, !noalias !4
  %t2272 = add i64 %r2271, 24
  %r2273.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2273 = load i64, ptr %r2273.p, align 8, !alias.scope !3, !noalias !4
  %c2274 = trunc i64 %r2273 to i32
  %gmp2275 = inttoptr i64 %t2272 to ptr
  store i32 %c2274, ptr %gmp2275, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a300 word 0xf90013f9
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %t2277 = add i64 %r2276, 32
  %r2278.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2278 = load i64, ptr %r2278.p, align 8, !alias.scope !3, !noalias !4
  %gmp2279 = inttoptr i64 %t2277 to ptr
  store i64 %r2278, ptr %gmp2279, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a304 word 0xb9002be9
  %r2280.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2280 = load i64, ptr %r2280.p, align 8, !alias.scope !3, !noalias !4
  %t2281 = add i64 %r2280, 40
  %r2282.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2282 = load i64, ptr %r2282.p, align 8, !alias.scope !3, !noalias !4
  %c2283 = trunc i64 %r2282 to i32
  %gmp2284 = inttoptr i64 %t2281 to ptr
  store i32 %c2283, ptr %gmp2284, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a308
L_80007a308:
  ; @pc 0x80007a308 word 0xf9400008
  %r2285.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2285 = load i64, ptr %r2285.p, align 8, !alias.scope !3, !noalias !4
  %gmp2286 = inttoptr i64 %r2285 to ptr
  %gml2287 = load i64, ptr %gmp2286, align 1, !alias.scope !4, !noalias !3
  %wp2288 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2287, ptr %wp2288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a30c word 0x910023e1
  %r2289.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2289 = load i64, ptr %r2289.p, align 8, !alias.scope !3, !noalias !4
  %t2290 = add i64 %r2289, 8
  %wp2291 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2290, ptr %wp2291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a310 word 0xf9400108
  %r2292.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2292 = load i64, ptr %r2292.p, align 8, !alias.scope !3, !noalias !4
  %gmp2293 = inttoptr i64 %r2292 to ptr
  %gml2294 = load i64, ptr %gmp2293, align 1, !alias.scope !4, !noalias !3
  %wp2295 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2294, ptr %wp2295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a314 word 0xd63f0100
  %r2296.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2296 = load i64, ptr %r2296.p, align 8, !alias.scope !3, !noalias !4
  %fp2297 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2296, ptr %fp2297, align 8, !alias.scope !3, !noalias !4
  %wp2298 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238872, ptr %wp2298, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80007a318 word 0x17ffff22
  br label %L_800079fa0
L_80007a31c:
  ; @pc 0x80007a31c word 0xf9005e78
  %r2299.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2299 = load i64, ptr %r2299.p, align 8, !alias.scope !3, !noalias !4
  %t2300 = add i64 %r2299, 184
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %gmp2302 = inttoptr i64 %t2300 to ptr
  store i64 %r2301, ptr %gmp2302, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a320 word 0x17fffeb3
  br label %L_800079dec
L_80007a324:
  ; @pc 0x80007a324 word 0xb4000179
  %r2303.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2303 = load i64, ptr %r2303.p, align 8, !alias.scope !3, !noalias !4
  %cmp2304 = icmp eq i64 %r2303, 0
  br i1 %cmp2304, label %L_80007a350, label %L_80007a328_ft
L_80007a340:
  ; @pc 0x80007a340 word 0xf9400008
  %r2333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2333 = load i64, ptr %r2333.p, align 8, !alias.scope !3, !noalias !4
  %gmp2334 = inttoptr i64 %r2333 to ptr
  %gml2335 = load i64, ptr %gmp2334, align 1, !alias.scope !4, !noalias !3
  %wp2336 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2335, ptr %wp2336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a344 word 0x910023e1
  %r2337.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2337 = load i64, ptr %r2337.p, align 8, !alias.scope !3, !noalias !4
  %t2338 = add i64 %r2337, 8
  %wp2339 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2338, ptr %wp2339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a348 word 0xf9400108
  %r2340.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2340 = load i64, ptr %r2340.p, align 8, !alias.scope !3, !noalias !4
  %gmp2341 = inttoptr i64 %r2340 to ptr
  %gml2342 = load i64, ptr %gmp2341, align 1, !alias.scope !4, !noalias !3
  %wp2343 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2342, ptr %wp2343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a34c word 0xd63f0100
  %r2344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2344 = load i64, ptr %r2344.p, align 8, !alias.scope !3, !noalias !4
  %fp2345 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2344, ptr %fp2345, align 8, !alias.scope !3, !noalias !4
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238928, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_80007a350
L_80007a350:
  ; @pc 0x80007a350 word 0xaa1f03f8
  %t2347 = or i64 0, 0
  %wp2348 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2347, ptr %wp2348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a354 word 0xb4ffd516
  %r2349.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2349 = load i64, ptr %r2349.p, align 8, !alias.scope !3, !noalias !4
  %cmp2350 = icmp eq i64 %r2349, 0
  br i1 %cmp2350, label %L_800079df4, label %L_80007a358_ft
L_80007a35c:
  ; @pc 0x80007a35c word 0xb400025a
  %r2351.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2351 = load i64, ptr %r2351.p, align 8, !alias.scope !3, !noalias !4
  %cmp2352 = icmp eq i64 %r2351, 0
  br i1 %cmp2352, label %L_80007a3a4, label %L_80007a360_ft
L_80007a378:
  ; @pc 0x80007a378 word 0xb400017a
  %r2376.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2376 = load i64, ptr %r2376.p, align 8, !alias.scope !3, !noalias !4
  %cmp2377 = icmp eq i64 %r2376, 0
  br i1 %cmp2377, label %L_80007a3a4, label %L_80007a37c_ft
L_80007a384:
  ; @pc 0x80007a384 word 0xa900d7f3
  %r2385.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2385 = load i64, ptr %r2385.p, align 8, !alias.scope !3, !noalias !4
  %t2386 = add i64 %r2385, 8
  %t2387 = add i64 %t2386, 8
  %r2388.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2388 = load i64, ptr %r2388.p, align 8, !alias.scope !3, !noalias !4
  %gmp2389 = inttoptr i64 %t2386 to ptr
  store i64 %r2388, ptr %gmp2389, align 1, !alias.scope !4, !noalias !3
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %gmp2391 = inttoptr i64 %t2387 to ptr
  store i64 %r2390, ptr %gmp2391, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a388 word 0xb9001bf4
  %r2392.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2392 = load i64, ptr %r2392.p, align 8, !alias.scope !3, !noalias !4
  %t2393 = add i64 %r2392, 24
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %c2395 = trunc i64 %r2394 to i32
  %gmp2396 = inttoptr i64 %t2393 to ptr
  store i32 %c2395, ptr %gmp2396, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a38c word 0xf90013f7
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = add i64 %r2397, 32
  %r2399.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2399 = load i64, ptr %r2399.p, align 8, !alias.scope !3, !noalias !4
  %gmp2400 = inttoptr i64 %t2398 to ptr
  store i64 %r2399, ptr %gmp2400, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a390
L_80007a390:
  ; @pc 0x80007a390 word 0xb9002bf4
  %r2401.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2401 = load i64, ptr %r2401.p, align 8, !alias.scope !3, !noalias !4
  %t2402 = add i64 %r2401, 40
  %r2403.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2403 = load i64, ptr %r2403.p, align 8, !alias.scope !3, !noalias !4
  %c2404 = trunc i64 %r2403 to i32
  %gmp2405 = inttoptr i64 %t2402 to ptr
  store i32 %c2404, ptr %gmp2405, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a394 word 0x910023e1
  %r2406.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2406 = load i64, ptr %r2406.p, align 8, !alias.scope !3, !noalias !4
  %t2407 = add i64 %r2406, 8
  %wp2408 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2407, ptr %wp2408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a398 word 0xf9400008
  %r2409.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2409 = load i64, ptr %r2409.p, align 8, !alias.scope !3, !noalias !4
  %gmp2410 = inttoptr i64 %r2409 to ptr
  %gml2411 = load i64, ptr %gmp2410, align 1, !alias.scope !4, !noalias !3
  %wp2412 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2411, ptr %wp2412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a39c word 0xf9400108
  %r2413.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2413 = load i64, ptr %r2413.p, align 8, !alias.scope !3, !noalias !4
  %gmp2414 = inttoptr i64 %r2413 to ptr
  %gml2415 = load i64, ptr %gmp2414, align 1, !alias.scope !4, !noalias !3
  %wp2416 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2415, ptr %wp2416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3a0 word 0xd63f0100
  %r2417.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2417 = load i64, ptr %r2417.p, align 8, !alias.scope !3, !noalias !4
  %fp2418 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2417, ptr %fp2418, align 8, !alias.scope !3, !noalias !4
  %wp2419 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239012, ptr %wp2419, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_80007a3a4
L_80007a3a4:
  ; @pc 0x80007a3a4 word 0xaa1f03f8
  %t2420 = or i64 0, 0
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3a8 word 0x17fffe93
  br label %L_800079df4
L_80007a3ac:
  ; @pc 0x80007a3ac word 0x7100059f
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %c2423 = trunc i64 %r2422 to i32
  %t2424 = sub i32 %c2423, 1
  %fn2425 = icmp slt i32 %t2424, 0
  %fz2426 = icmp eq i32 %t2424, 0
  %fc2427 = icmp uge i32 %c2423, 1
  %fx12428 = xor i32 %c2423, 1
  %fx22429 = xor i32 %c2423, %t2424
  %fva2430 = and i32 %fx12428, %fx22429
  %fv2431 = icmp slt i32 %fva2430, 0
  %nz2432 = zext i1 %fn2425 to i64
  %zz2433 = zext i1 %fz2426 to i64
  %cz2434 = zext i1 %fc2427 to i64
  %vz2435 = zext i1 %fv2431 to i64
  %ns2436 = shl i64 %nz2432, 31
  %zs2437 = shl i64 %zz2433, 30
  %cs2438 = shl i64 %cz2434, 29
  %vs2439 = shl i64 %vz2435, 28
  %nzor2440 = or i64 %ns2436, %zs2437
  %cvor2441 = or i64 %cs2438, %vs2439
  %nzcv2442 = or i64 %nzor2440, %cvor2441
  %wp2443 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2442, ptr %wp2443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3b0 word 0x54000de1
  %r2444.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2444 = load i64, ptr %r2444.p, align 8, !alias.scope !3, !noalias !4
  %fsh2446 = lshr i64 %r2444, 30
  %ftr2447 = trunc i64 %fsh2446 to i1
  %cond2445 = xor i1 %ftr2447, true
  br i1 %cond2445, label %L_80007a56c, label %L_80007a3b4_ft
L_80007a3b8:
  ; @pc 0x80007a3b8 word 0xf9400d6c
  %r2450.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2450 = load i64, ptr %r2450.p, align 8, !alias.scope !3, !noalias !4
  %t2451 = add i64 %r2450, 24
  %gmp2452 = inttoptr i64 %t2451 to ptr
  %gml2453 = load i64, ptr %gmp2452, align 1, !alias.scope !4, !noalias !3
  %wp2454 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2453, ptr %wp2454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3bc word 0xeb17019f
  %r2455.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2455 = load i64, ptr %r2455.p, align 8, !alias.scope !3, !noalias !4
  %r2456.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2456 = load i64, ptr %r2456.p, align 8, !alias.scope !3, !noalias !4
  %t2457 = sub i64 %r2455, %r2456
  %fn2458 = icmp slt i64 %t2457, 0
  %fz2459 = icmp eq i64 %t2457, 0
  %fc2460 = icmp uge i64 %r2455, %r2456
  %fx12461 = xor i64 %r2455, %r2456
  %fx22462 = xor i64 %r2455, %t2457
  %fva2463 = and i64 %fx12461, %fx22462
  %fv2464 = icmp slt i64 %fva2463, 0
  %nz2465 = zext i1 %fn2458 to i64
  %zz2466 = zext i1 %fz2459 to i64
  %cz2467 = zext i1 %fc2460 to i64
  %vz2468 = zext i1 %fv2464 to i64
  %ns2469 = shl i64 %nz2465, 31
  %zs2470 = shl i64 %zz2466, 30
  %cs2471 = shl i64 %cz2467, 29
  %vs2472 = shl i64 %vz2468, 28
  %nzor2473 = or i64 %ns2469, %zs2470
  %cvor2474 = or i64 %cs2471, %vs2472
  %nzcv2475 = or i64 %nzor2473, %cvor2474
  %wp2476 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2475, ptr %wp2476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3c0 word 0x540000c3
  %r2477.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2477 = load i64, ptr %r2477.p, align 8, !alias.scope !3, !noalias !4
  %fsh2479 = lshr i64 %r2477, 29
  %ftr2480 = trunc i64 %fsh2479 to i1
  %cond2478 = xor i1 %ftr2480, true
  br i1 %cond2478, label %L_80007a3d8, label %L_80007a3c4_ft
L_80007a3d4:
  ; @pc 0x80007a3d4 word 0xaa0b03e0
  %r2518.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2518 = load i64, ptr %r2518.p, align 8, !alias.scope !3, !noalias !4
  %t2519 = or i64 0, %r2518
  %wp2520 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2519, ptr %wp2520, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a3d8
L_80007a3d8:
  ; @pc 0x80007a3d8 word 0x8b09016b
  %r2521.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2521 = load i64, ptr %r2521.p, align 8, !alias.scope !3, !noalias !4
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %t2523 = add i64 %r2521, %r2522
  %wp2524 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2523, ptr %wp2524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3dc word 0xf940056b
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %t2526 = add i64 %r2525, 8
  %gmp2527 = inttoptr i64 %t2526 to ptr
  %gml2528 = load i64, ptr %gmp2527, align 1, !alias.scope !4, !noalias !3
  %wp2529 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2528, ptr %wp2529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3e0 word 0x8b08016b
  %r2530.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2530 = load i64, ptr %r2530.p, align 8, !alias.scope !3, !noalias !4
  %r2531.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2531 = load i64, ptr %r2531.p, align 8, !alias.scope !3, !noalias !4
  %t2532 = add i64 %r2530, %r2531
  %wp2533 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2532, ptr %wp2533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3e4 word 0xeb0a017f
  %r2534.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2534 = load i64, ptr %r2534.p, align 8, !alias.scope !3, !noalias !4
  %r2535.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2535 = load i64, ptr %r2535.p, align 8, !alias.scope !3, !noalias !4
  %t2536 = sub i64 %r2534, %r2535
  %fn2537 = icmp slt i64 %t2536, 0
  %fz2538 = icmp eq i64 %t2536, 0
  %fc2539 = icmp uge i64 %r2534, %r2535
  %fx12540 = xor i64 %r2534, %r2535
  %fx22541 = xor i64 %r2534, %t2536
  %fva2542 = and i64 %fx12540, %fx22541
  %fv2543 = icmp slt i64 %fva2542, 0
  %nz2544 = zext i1 %fn2537 to i64
  %zz2545 = zext i1 %fz2538 to i64
  %cz2546 = zext i1 %fc2539 to i64
  %vz2547 = zext i1 %fv2543 to i64
  %ns2548 = shl i64 %nz2544, 31
  %zs2549 = shl i64 %zz2545, 30
  %cs2550 = shl i64 %cz2546, 29
  %vs2551 = shl i64 %vz2547, 28
  %nzor2552 = or i64 %ns2548, %zs2549
  %cvor2553 = or i64 %cs2550, %vs2551
  %nzcv2554 = or i64 %nzor2552, %cvor2553
  %wp2555 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2554, ptr %wp2555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3e8 word 0x54fffe81
  %r2556.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2556 = load i64, ptr %r2556.p, align 8, !alias.scope !3, !noalias !4
  %fsh2558 = lshr i64 %r2556, 30
  %ftr2559 = trunc i64 %fsh2558 to i1
  %cond2557 = xor i1 %ftr2559, true
  br i1 %cond2557, label %L_80007a3b8, label %L_80007a3ec
L_80007a3ec:
  ; @pc 0x80007a3ec word 0xb4001fa0
  %r2560.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2560 = load i64, ptr %r2560.p, align 8, !alias.scope !3, !noalias !4
  %cmp2561 = icmp eq i64 %r2560, 0
  br i1 %cmp2561, label %L_80007a7e0, label %L_80007a3f0_ft
L_80007a3f4:
  ; @pc 0x80007a3f4 word 0xf9000c17
  %r2567.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2567 = load i64, ptr %r2567.p, align 8, !alias.scope !3, !noalias !4
  %t2568 = add i64 %r2567, 24
  %r2569.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2569 = load i64, ptr %r2569.p, align 8, !alias.scope !3, !noalias !4
  %gmp2570 = inttoptr i64 %t2568 to ptr
  store i64 %r2569, ptr %gmp2570, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a3f8 word 0x79402415
  %r2571.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2571 = load i64, ptr %r2571.p, align 8, !alias.scope !3, !noalias !4
  %t2572 = add i64 %r2571, 18
  %gmp2573 = inttoptr i64 %t2572 to ptr
  %gml2574 = load i16, ptr %gmp2573, align 1, !alias.scope !4, !noalias !3
  %c2575 = zext i16 %gml2574 to i64
  %wp2576 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c2575, ptr %wp2576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3fc word 0xb980c66a
  %r2577.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2577 = load i64, ptr %r2577.p, align 8, !alias.scope !3, !noalias !4
  %t2578 = add i64 %r2577, 196
  %gmp2579 = inttoptr i64 %t2578 to ptr
  %gml2580 = load i32, ptr %gmp2579, align 1, !alias.scope !4, !noalias !3
  %c2581 = sext i32 %gml2580 to i64
  %wp2582 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2581, ptr %wp2582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a400 word 0x8b000148
  %r2583.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2583 = load i64, ptr %r2583.p, align 8, !alias.scope !3, !noalias !4
  %r2584.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2584 = load i64, ptr %r2584.p, align 8, !alias.scope !3, !noalias !4
  %t2585 = add i64 %r2583, %r2584
  %wp2586 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2585, ptr %wp2586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a404 word 0xf9400509
  %r2587.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2587 = load i64, ptr %r2587.p, align 8, !alias.scope !3, !noalias !4
  %t2588 = add i64 %r2587, 8
  %gmp2589 = inttoptr i64 %t2588 to ptr
  %gml2590 = load i64, ptr %gmp2589, align 1, !alias.scope !4, !noalias !3
  %wp2591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2590, ptr %wp2591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a408 word 0xeb19013f
  %r2592.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2592 = load i64, ptr %r2592.p, align 8, !alias.scope !3, !noalias !4
  %r2593.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2593 = load i64, ptr %r2593.p, align 8, !alias.scope !3, !noalias !4
  %t2594 = sub i64 %r2592, %r2593
  %fn2595 = icmp slt i64 %t2594, 0
  %fz2596 = icmp eq i64 %t2594, 0
  %fc2597 = icmp uge i64 %r2592, %r2593
  %fx12598 = xor i64 %r2592, %r2593
  %fx22599 = xor i64 %r2592, %t2594
  %fva2600 = and i64 %fx12598, %fx22599
  %fv2601 = icmp slt i64 %fva2600, 0
  %nz2602 = zext i1 %fn2595 to i64
  %zz2603 = zext i1 %fz2596 to i64
  %cz2604 = zext i1 %fc2597 to i64
  %vz2605 = zext i1 %fv2601 to i64
  %ns2606 = shl i64 %nz2602, 31
  %zs2607 = shl i64 %zz2603, 30
  %cs2608 = shl i64 %cz2604, 29
  %vs2609 = shl i64 %vz2605, 28
  %nzor2610 = or i64 %ns2606, %zs2607
  %cvor2611 = or i64 %cs2608, %vs2609
  %nzcv2612 = or i64 %nzor2610, %cvor2611
  %wp2613 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2612, ptr %wp2613, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a40c word 0x54000781
  %r2614.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2614 = load i64, ptr %r2614.p, align 8, !alias.scope !3, !noalias !4
  %fsh2616 = lshr i64 %r2614, 30
  %ftr2617 = trunc i64 %fsh2616 to i1
  %cond2615 = xor i1 %ftr2617, true
  br i1 %cond2615, label %L_80007a4fc, label %L_80007a410_ft
L_80007a414:
  ; @pc 0x80007a414 word 0xf940010a
  %r2620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2620 = load i64, ptr %r2620.p, align 8, !alias.scope !3, !noalias !4
  %gmp2621 = inttoptr i64 %r2620 to ptr
  %gml2622 = load i64, ptr %gmp2621, align 1, !alias.scope !4, !noalias !3
  %wp2623 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2622, ptr %wp2623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a418 word 0xb400006a
  %r2624.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2624 = load i64, ptr %r2624.p, align 8, !alias.scope !3, !noalias !4
  %cmp2625 = icmp eq i64 %r2624, 0
  br i1 %cmp2625, label %L_80007a424, label %L_80007a41c_ft
L_80007a424:
  ; @pc 0x80007a424 word 0xb4000069
  %r2635.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2635 = load i64, ptr %r2635.p, align 8, !alias.scope !3, !noalias !4
  %cmp2636 = icmp eq i64 %r2635, 0
  br i1 %cmp2636, label %L_80007a430, label %L_80007a428_ft
L_80007a430:
  ; @pc 0x80007a430 word 0xa9007d1f
  %r2644.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2644 = load i64, ptr %r2644.p, align 8, !alias.scope !3, !noalias !4
  %t2645 = add i64 %r2644, 8
  %gmp2646 = inttoptr i64 %r2644 to ptr
  store i64 0, ptr %gmp2646, align 1, !alias.scope !4, !noalias !3
  %gmp2647 = inttoptr i64 %t2645 to ptr
  store i64 0, ptr %gmp2647, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a434 word 0xcb170178
  %r2648.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2648 = load i64, ptr %r2648.p, align 8, !alias.scope !3, !noalias !4
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = sub i64 %r2648, %r2649
  %wp2651 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2650, ptr %wp2651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a438 word 0xb940c269
  %r2652.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2652 = load i64, ptr %r2652.p, align 8, !alias.scope !3, !noalias !4
  %t2653 = add i64 %r2652, 192
  %gmp2654 = inttoptr i64 %t2653 to ptr
  %gml2655 = load i32, ptr %gmp2654, align 1, !alias.scope !4, !noalias !3
  %c2656 = zext i32 %gml2655 to i64
  %wp2657 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2656, ptr %wp2657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a43c word 0xb940826a
  %r2658.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2658 = load i64, ptr %r2658.p, align 8, !alias.scope !3, !noalias !4
  %t2659 = add i64 %r2658, 128
  %gmp2660 = inttoptr i64 %t2659 to ptr
  %gml2661 = load i32, ptr %gmp2660, align 1, !alias.scope !4, !noalias !3
  %c2662 = zext i32 %gml2661 to i64
  %wp2663 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2662, ptr %wp2663, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a440 word 0x91032268
  %r2664.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2664 = load i64, ptr %r2664.p, align 8, !alias.scope !3, !noalias !4
  %t2665 = add i64 %r2664, 200
  %wp2666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2665, ptr %wp2666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a444 word 0x51000529
  %r2667.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2667 = load i64, ptr %r2667.p, align 8, !alias.scope !3, !noalias !4
  %c2668 = trunc i64 %r2667 to i32
  %t2669 = sub i32 %c2668, 1
  %c2670 = zext i32 %t2669 to i64
  %wp2671 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2670, ptr %wp2671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a448 word 0x7100055f
  %r2672.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2672 = load i64, ptr %r2672.p, align 8, !alias.scope !3, !noalias !4
  %c2673 = trunc i64 %r2672 to i32
  %t2674 = sub i32 %c2673, 1
  %fn2675 = icmp slt i32 %t2674, 0
  %fz2676 = icmp eq i32 %t2674, 0
  %fc2677 = icmp uge i32 %c2673, 1
  %fx12678 = xor i32 %c2673, 1
  %fx22679 = xor i32 %c2673, %t2674
  %fva2680 = and i32 %fx12678, %fx22679
  %fv2681 = icmp slt i32 %fva2680, 0
  %nz2682 = zext i1 %fn2675 to i64
  %zz2683 = zext i1 %fz2676 to i64
  %cz2684 = zext i1 %fc2677 to i64
  %vz2685 = zext i1 %fv2681 to i64
  %ns2686 = shl i64 %nz2682, 31
  %zs2687 = shl i64 %zz2683, 30
  %cs2688 = shl i64 %cz2684, 29
  %vs2689 = shl i64 %vz2685, 28
  %nzor2690 = or i64 %ns2686, %zs2687
  %cvor2691 = or i64 %cs2688, %vs2689
  %nzcv2692 = or i64 %nzor2690, %cvor2691
  %wp2693 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2692, ptr %wp2693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a44c word 0xb900c269
  %r2694.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2694 = load i64, ptr %r2694.p, align 8, !alias.scope !3, !noalias !4
  %t2695 = add i64 %r2694, 192
  %r2696.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2696 = load i64, ptr %r2696.p, align 8, !alias.scope !3, !noalias !4
  %c2697 = trunc i64 %r2696 to i32
  %gmp2698 = inttoptr i64 %t2695 to ptr
  store i32 %c2697, ptr %gmp2698, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a450 word 0xb980de69
  %r2699.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2699 = load i64, ptr %r2699.p, align 8, !alias.scope !3, !noalias !4
  %t2700 = add i64 %r2699, 220
  %gmp2701 = inttoptr i64 %t2700 to ptr
  %gml2702 = load i32, ptr %gmp2701, align 1, !alias.scope !4, !noalias !3
  %c2703 = sext i32 %gml2702 to i64
  %wp2704 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2703, ptr %wp2704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a454 word 0x8b000121
  %r2705.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2705 = load i64, ptr %r2705.p, align 8, !alias.scope !3, !noalias !4
  %r2706.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2706 = load i64, ptr %r2706.p, align 8, !alias.scope !3, !noalias !4
  %t2707 = add i64 %r2705, %r2706
  %wp2708 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2707, ptr %wp2708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a458 word 0x540006c1
  %r2709.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2709 = load i64, ptr %r2709.p, align 8, !alias.scope !3, !noalias !4
  %fsh2711 = lshr i64 %r2709, 30
  %ftr2712 = trunc i64 %fsh2711 to i1
  %cond2710 = xor i1 %ftr2712, true
  br i1 %cond2710, label %L_80007a530, label %L_80007a45c_ft
L_80007a470:
  ; @pc 0x80007a470 word 0xb940da68
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %t2733 = add i64 %r2732, 216
  %gmp2734 = inttoptr i64 %t2733 to ptr
  %gml2735 = load i32, ptr %gmp2734, align 1, !alias.scope !4, !noalias !3
  %c2736 = zext i32 %gml2735 to i64
  %wp2737 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2736, ptr %wp2737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a474 word 0xf100871f
  %r2738.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2738 = load i64, ptr %r2738.p, align 8, !alias.scope !3, !noalias !4
  %t2739 = sub i64 %r2738, 33
  %fn2740 = icmp slt i64 %t2739, 0
  %fz2741 = icmp eq i64 %t2739, 0
  %fc2742 = icmp uge i64 %r2738, 33
  %fx12743 = xor i64 %r2738, 33
  %fx22744 = xor i64 %r2738, %t2739
  %fva2745 = and i64 %fx12743, %fx22744
  %fv2746 = icmp slt i64 %fva2745, 0
  %nz2747 = zext i1 %fn2740 to i64
  %zz2748 = zext i1 %fz2741 to i64
  %cz2749 = zext i1 %fc2742 to i64
  %vz2750 = zext i1 %fv2746 to i64
  %ns2751 = shl i64 %nz2747, 31
  %zs2752 = shl i64 %zz2748, 30
  %cs2753 = shl i64 %cz2749, 29
  %vs2754 = shl i64 %vz2750, 28
  %nzor2755 = or i64 %ns2751, %zs2752
  %cvor2756 = or i64 %cs2753, %vs2754
  %nzcv2757 = or i64 %nzor2755, %cvor2756
  %wp2758 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2757, ptr %wp2758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a478 word 0x11000508
  %r2759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2759 = load i64, ptr %r2759.p, align 8, !alias.scope !3, !noalias !4
  %c2760 = trunc i64 %r2759 to i32
  %t2761 = add i32 %c2760, 1
  %c2762 = zext i32 %t2761 to i64
  %wp2763 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2762, ptr %wp2763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a47c word 0xb900da68
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %t2765 = add i64 %r2764, 216
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %c2767 = trunc i64 %r2766 to i32
  %gmp2768 = inttoptr i64 %t2765 to ptr
  store i32 %c2767, ptr %gmp2768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a480 word 0x54000503
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %fsh2771 = lshr i64 %r2769, 29
  %ftr2772 = trunc i64 %fsh2771 to i1
  %cond2770 = xor i1 %ftr2772, true
  br i1 %cond2770, label %L_80007a520, label %L_80007a484_ft
L_80007a48c:
  ; @pc 0x80007a48c word 0xf8020d1f
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 32
  %gmp2783 = inttoptr i64 %t2782 to ptr
  store i64 0, ptr %gmp2783, align 1, !alias.scope !4, !noalias !3
  %wp2784 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2782, ptr %wp2784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a490 word 0xd1008309
  %r2785.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2785 = load i64, ptr %r2785.p, align 8, !alias.scope !3, !noalias !4
  %t2786 = sub i64 %r2785, 32
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a494 word 0xf9000d09
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %t2789 = add i64 %r2788, 24
  %r2790.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2790 = load i64, ptr %r2790.p, align 8, !alias.scope !3, !noalias !4
  %gmp2791 = inttoptr i64 %t2789 to ptr
  store i64 %r2790, ptr %gmp2791, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a498 word 0x529fffe9
  %c2792 = zext i32 65535 to i64
  %wp2793 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2792, ptr %wp2793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a49c word 0xb900111f
  %r2794.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2794 = load i64, ptr %r2794.p, align 8, !alias.scope !3, !noalias !4
  %t2795 = add i64 %r2794, 16
  %gmp2796 = inttoptr i64 %t2795 to ptr
  store i32 0, ptr %gmp2796, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4a0 word 0xf900051f
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %t2798 = add i64 %r2797, 8
  %gmp2799 = inttoptr i64 %t2798 to ptr
  store i64 0, ptr %gmp2799, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4a4 word 0x79002109
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %t2801 = add i64 %r2800, 16
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %c2803 = trunc i64 %r2802 to i32
  %c2804 = trunc i32 %c2803 to i16
  %gmp2805 = inttoptr i64 %t2801 to ptr
  store i16 %c2804, ptr %gmp2805, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4a8 word 0xb980c669
  %r2806.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2806 = load i64, ptr %r2806.p, align 8, !alias.scope !3, !noalias !4
  %t2807 = add i64 %r2806, 196
  %gmp2808 = inttoptr i64 %t2807 to ptr
  %gml2809 = load i32, ptr %gmp2808, align 1, !alias.scope !4, !noalias !3
  %c2810 = sext i32 %gml2809 to i64
  %wp2811 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2810, ptr %wp2811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4ac word 0xb50002d4
  %r2812.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2812 = load i64, ptr %r2812.p, align 8, !alias.scope !3, !noalias !4
  %cmp2813 = icmp ne i64 %r2812, 0
  br i1 %cmp2813, label %L_80007a504, label %L_80007a4b0_ft
L_80007a4c4:
  ; @pc 0x80007a4c4 word 0xf9000528
  %r2833.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2833 = load i64, ptr %r2833.p, align 8, !alias.scope !3, !noalias !4
  %t2834 = add i64 %r2833, 8
  %r2835.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2835 = load i64, ptr %r2835.p, align 8, !alias.scope !3, !noalias !4
  %gmp2836 = inttoptr i64 %t2834 to ptr
  store i64 %r2835, ptr %gmp2836, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a4c8
L_80007a4c8:
  ; @pc 0x80007a4c8 word 0xb940c268
  %r2837.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2837 = load i64, ptr %r2837.p, align 8, !alias.scope !3, !noalias !4
  %t2838 = add i64 %r2837, 192
  %gmp2839 = inttoptr i64 %t2838 to ptr
  %gml2840 = load i32, ptr %gmp2839, align 1, !alias.scope !4, !noalias !3
  %c2841 = zext i32 %gml2840 to i64
  %wp2842 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2841, ptr %wp2842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4cc word 0x11000508
  %r2843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2843 = load i64, ptr %r2843.p, align 8, !alias.scope !3, !noalias !4
  %c2844 = trunc i64 %r2843 to i32
  %t2845 = add i32 %c2844, 1
  %c2846 = zext i32 %t2845 to i64
  %wp2847 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2846, ptr %wp2847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4d0 word 0xb900c268
  %r2848.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2848 = load i64, ptr %r2848.p, align 8, !alias.scope !3, !noalias !4
  %t2849 = add i64 %r2848, 192
  %r2850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2850 = load i64, ptr %r2850.p, align 8, !alias.scope !3, !noalias !4
  %c2851 = trunc i64 %r2850 to i32
  %gmp2852 = inttoptr i64 %t2849 to ptr
  store i32 %c2851, ptr %gmp2852, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a4d4
L_80007a4d4:
  ; @pc 0x80007a4d4 word 0xb940aa68
  %r2853.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2853 = load i64, ptr %r2853.p, align 8, !alias.scope !3, !noalias !4
  %t2854 = add i64 %r2853, 168
  %gmp2855 = inttoptr i64 %t2854 to ptr
  %gml2856 = load i32, ptr %gmp2855, align 1, !alias.scope !4, !noalias !3
  %c2857 = zext i32 %gml2856 to i64
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4d8 word 0x53107d08
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %c2860 = trunc i64 %r2859 to i32
  %ror2861 = call i32 @llvm.fshr.i32(i32 %c2860, i32 %c2860, i32 16)
  %t2862 = and i32 %ror2861, 65535
  %c2863 = zext i32 %t2862 to i64
  %wp2864 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2863, ptr %wp2864, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4dc word 0x79002008
  %r2865.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2865 = load i64, ptr %r2865.p, align 8, !alias.scope !3, !noalias !4
  %t2866 = add i64 %r2865, 16
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %c2868 = trunc i64 %r2867 to i32
  %c2869 = trunc i32 %c2868 to i16
  %gmp2870 = inttoptr i64 %t2866 to ptr
  store i16 %c2869, ptr %gmp2870, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4e0 word 0x79402408
  %r2871.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2871 = load i64, ptr %r2871.p, align 8, !alias.scope !3, !noalias !4
  %t2872 = add i64 %r2871, 18
  %gmp2873 = inttoptr i64 %t2872 to ptr
  %gml2874 = load i16, ptr %gmp2873, align 1, !alias.scope !4, !noalias !3
  %c2875 = zext i16 %gml2874 to i64
  %wp2876 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2875, ptr %wp2876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4e4 word 0x8b080008
  %r2877.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2877 = load i64, ptr %r2877.p, align 8, !alias.scope !3, !noalias !4
  %r2878.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2878 = load i64, ptr %r2878.p, align 8, !alias.scope !3, !noalias !4
  %t2879 = add i64 %r2877, %r2878
  %wp2880 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2879, ptr %wp2880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4e8 word 0x91008118
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %t2882 = add i64 %r2881, 32
  %wp2883 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2882, ptr %wp2883, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a4ec
L_80007a4ec:
  ; @pc 0x80007a4ec word 0xb4ffc856
  %r2884.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2884 = load i64, ptr %r2884.p, align 8, !alias.scope !3, !noalias !4
  %cmp2885 = icmp eq i64 %r2884, 0
  br i1 %cmp2885, label %L_800079df4, label %L_80007a4f0
L_80007a4f0:
  ; @pc 0x80007a4f0 word 0xaa1603e0
  %r2886.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2886 = load i64, ptr %r2886.p, align 8, !alias.scope !3, !noalias !4
  %t2887 = or i64 0, %r2886
  %wp2888 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2887, ptr %wp2888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4f4 word 0x94aca6df
  %wp2889 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239352, ptr %wp2889, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x80007a4f8 word 0x17fffe3f
  br label %L_800079df4
L_80007a4fc:
  ; @pc 0x80007a4fc word 0xcb0a0134
  %r2890.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2890 = load i64, ptr %r2890.p, align 8, !alias.scope !3, !noalias !4
  %r2891.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2891 = load i64, ptr %r2891.p, align 8, !alias.scope !3, !noalias !4
  %t2892 = sub i64 %r2890, %r2891
  %wp2893 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2892, ptr %wp2893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a500 word 0x17ffffc5
  br label %L_80007a414
L_80007a504:
  ; @pc 0x80007a504 word 0x8b14012a
  %r2894.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2894 = load i64, ptr %r2894.p, align 8, !alias.scope !3, !noalias !4
  %r2895.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2895 = load i64, ptr %r2895.p, align 8, !alias.scope !3, !noalias !4
  %t2896 = add i64 %r2894, %r2895
  %wp2897 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2896, ptr %wp2897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a508 word 0x8b090108
  %r2898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2898 = load i64, ptr %r2898.p, align 8, !alias.scope !3, !noalias !4
  %r2899.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2899 = load i64, ptr %r2899.p, align 8, !alias.scope !3, !noalias !4
  %t2900 = add i64 %r2898, %r2899
  %wp2901 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2900, ptr %wp2901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a50c word 0xf9400149
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %gmp2903 = inttoptr i64 %r2902 to ptr
  %gml2904 = load i64, ptr %gmp2903, align 1, !alias.scope !4, !noalias !3
  %wp2905 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2904, ptr %wp2905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a510 word 0xf9000148
  %r2906.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2906 = load i64, ptr %r2906.p, align 8, !alias.scope !3, !noalias !4
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %gmp2908 = inttoptr i64 %r2906 to ptr
  store i64 %r2907, ptr %gmp2908, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a514 word 0xa9002909
  %r2909.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2909 = load i64, ptr %r2909.p, align 8, !alias.scope !3, !noalias !4
  %t2910 = add i64 %r2909, 8
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %gmp2912 = inttoptr i64 %r2909 to ptr
  store i64 %r2911, ptr %gmp2912, align 1, !alias.scope !4, !noalias !3
  %r2913.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2913 = load i64, ptr %r2913.p, align 8, !alias.scope !3, !noalias !4
  %gmp2914 = inttoptr i64 %t2910 to ptr
  store i64 %r2913, ptr %gmp2914, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a518 word 0xb5fffd69
  %r2915.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2915 = load i64, ptr %r2915.p, align 8, !alias.scope !3, !noalias !4
  %cmp2916 = icmp ne i64 %r2915, 0
  br i1 %cmp2916, label %L_80007a4c4, label %L_80007a51c_ft
L_80007a520:
  ; @pc 0x80007a520 word 0xeb17017f
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %r2918.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2918 = load i64, ptr %r2918.p, align 8, !alias.scope !3, !noalias !4
  %t2919 = sub i64 %r2917, %r2918
  %fn2920 = icmp slt i64 %t2919, 0
  %fz2921 = icmp eq i64 %t2919, 0
  %fc2922 = icmp uge i64 %r2917, %r2918
  %fx12923 = xor i64 %r2917, %r2918
  %fx22924 = xor i64 %r2917, %t2919
  %fva2925 = and i64 %fx12923, %fx22924
  %fv2926 = icmp slt i64 %fva2925, 0
  %nz2927 = zext i1 %fn2920 to i64
  %zz2928 = zext i1 %fz2921 to i64
  %cz2929 = zext i1 %fc2922 to i64
  %vz2930 = zext i1 %fv2926 to i64
  %ns2931 = shl i64 %nz2927, 31
  %zs2932 = shl i64 %zz2928, 30
  %cs2933 = shl i64 %cz2929, 29
  %vs2934 = shl i64 %vz2930, 28
  %nzor2935 = or i64 %ns2931, %zs2932
  %cvor2936 = or i64 %cs2933, %vs2934
  %nzcv2937 = or i64 %nzor2935, %cvor2936
  %wp2938 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2937, ptr %wp2938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a524 word 0x54fffd80
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %fsh2941 = lshr i64 %r2939, 30
  %cond2940 = trunc i64 %fsh2941 to i1
  br i1 %cond2940, label %L_80007a4d4, label %L_80007a528_ft
L_80007a530:
  ; @pc 0x80007a530 word 0xaa0003fa
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %t2947 = or i64 0, %r2946
  %wp2948 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t2947, ptr %wp2948, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a534 word 0xaa0803e0
  %r2949.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2949 = load i64, ptr %r2949.p, align 8, !alias.scope !3, !noalias !4
  %t2950 = or i64 0, %r2949
  %wp2951 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2950, ptr %wp2951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a538 word 0xaa0b03fb
  %r2952.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2952 = load i64, ptr %r2952.p, align 8, !alias.scope !3, !noalias !4
  %t2953 = or i64 0, %r2952
  %wp2954 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t2953, ptr %wp2954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a53c word 0x949cbdd3
  %wp2955 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239424, ptr %wp2955, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x80007a540 word 0xaa1b03eb
  %r2956.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2956 = load i64, ptr %r2956.p, align 8, !alias.scope !3, !noalias !4
  %t2957 = or i64 0, %r2956
  %wp2958 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2957, ptr %wp2958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a544 word 0xaa1a03e0
  %r2959.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2959 = load i64, ptr %r2959.p, align 8, !alias.scope !3, !noalias !4
  %t2960 = or i64 0, %r2959
  %wp2961 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2960, ptr %wp2961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a548 word 0x17ffffca
  br label %L_80007a470
L_80007a54c:
  ; @pc 0x80007a54c word 0xb4fff2d9
  %r2962.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2962 = load i64, ptr %r2962.p, align 8, !alias.scope !3, !noalias !4
  %cmp2963 = icmp eq i64 %r2962, 0
  br i1 %cmp2963, label %L_80007a3a4, label %L_80007a550_ft
L_80007a55c:
  ; @pc 0x80007a55c word 0x91022276
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %t2972 = add i64 %r2971, 136
  %wp2973 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2972, ptr %wp2973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a560 word 0xaa1603e0
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = or i64 0, %r2974
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2975, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a564 word 0x94aca6bf
  %wp2977 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239464, ptr %wp2977, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  ; @pc 0x80007a568 word 0x17fffe6e
  br label %L_800079f20
L_80007a56c:
  ; @pc 0x80007a56c word 0x7100099f
  %r2978.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2978 = load i64, ptr %r2978.p, align 8, !alias.scope !3, !noalias !4
  %c2979 = trunc i64 %r2978 to i32
  %t2980 = sub i32 %c2979, 2
  %fn2981 = icmp slt i32 %t2980, 0
  %fz2982 = icmp eq i32 %t2980, 0
  %fc2983 = icmp uge i32 %c2979, 2
  %fx12984 = xor i32 %c2979, 2
  %fx22985 = xor i32 %c2979, %t2980
  %fva2986 = and i32 %fx12984, %fx22985
  %fv2987 = icmp slt i32 %fva2986, 0
  %nz2988 = zext i1 %fn2981 to i64
  %zz2989 = zext i1 %fz2982 to i64
  %cz2990 = zext i1 %fc2983 to i64
  %vz2991 = zext i1 %fv2987 to i64
  %ns2992 = shl i64 %nz2988, 31
  %zs2993 = shl i64 %zz2989, 30
  %cs2994 = shl i64 %cz2990, 29
  %vs2995 = shl i64 %vz2991, 28
  %nzor2996 = or i64 %ns2992, %zs2993
  %cvor2997 = or i64 %cs2994, %vs2995
  %nzcv2998 = or i64 %nzor2996, %cvor2997
  %wp2999 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2998, ptr %wp2999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a570 word 0x54000201
  %r3000.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3000 = load i64, ptr %r3000.p, align 8, !alias.scope !3, !noalias !4
  %fsh3002 = lshr i64 %r3000, 30
  %ftr3003 = trunc i64 %fsh3002 to i1
  %cond3001 = xor i1 %ftr3003, true
  br i1 %cond3001, label %L_80007a5b0, label %L_80007a574_ft
L_80007a578:
  ; @pc 0x80007a578 word 0xf9400d6c
  %r3006.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3006 = load i64, ptr %r3006.p, align 8, !alias.scope !3, !noalias !4
  %t3007 = add i64 %r3006, 24
  %gmp3008 = inttoptr i64 %t3007 to ptr
  %gml3009 = load i64, ptr %gmp3008, align 1, !alias.scope !4, !noalias !3
  %wp3010 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3009, ptr %wp3010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a57c word 0xeb17019f
  %r3011.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3011 = load i64, ptr %r3011.p, align 8, !alias.scope !3, !noalias !4
  %r3012.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3012 = load i64, ptr %r3012.p, align 8, !alias.scope !3, !noalias !4
  %t3013 = sub i64 %r3011, %r3012
  %fn3014 = icmp slt i64 %t3013, 0
  %fz3015 = icmp eq i64 %t3013, 0
  %fc3016 = icmp uge i64 %r3011, %r3012
  %fx13017 = xor i64 %r3011, %r3012
  %fx23018 = xor i64 %r3011, %t3013
  %fva3019 = and i64 %fx13017, %fx23018
  %fv3020 = icmp slt i64 %fva3019, 0
  %nz3021 = zext i1 %fn3014 to i64
  %zz3022 = zext i1 %fz3015 to i64
  %cz3023 = zext i1 %fc3016 to i64
  %vz3024 = zext i1 %fv3020 to i64
  %ns3025 = shl i64 %nz3021, 31
  %zs3026 = shl i64 %zz3022, 30
  %cs3027 = shl i64 %cz3023, 29
  %vs3028 = shl i64 %vz3024, 28
  %nzor3029 = or i64 %ns3025, %zs3026
  %cvor3030 = or i64 %cs3027, %vs3028
  %nzcv3031 = or i64 %nzor3029, %cvor3030
  %wp3032 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3031, ptr %wp3032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a580 word 0x540000c3
  %r3033.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3033 = load i64, ptr %r3033.p, align 8, !alias.scope !3, !noalias !4
  %fsh3035 = lshr i64 %r3033, 29
  %ftr3036 = trunc i64 %fsh3035 to i1
  %cond3034 = xor i1 %ftr3036, true
  br i1 %cond3034, label %L_80007a598, label %L_80007a584_ft
L_80007a594:
  ; @pc 0x80007a594 word 0xaa0b03e0
  %r3069.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3069 = load i64, ptr %r3069.p, align 8, !alias.scope !3, !noalias !4
  %t3070 = or i64 0, %r3069
  %wp3071 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3070, ptr %wp3071, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a598
L_80007a598:
  ; @pc 0x80007a598 word 0x8b09016b
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %r3073.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3073 = load i64, ptr %r3073.p, align 8, !alias.scope !3, !noalias !4
  %t3074 = add i64 %r3072, %r3073
  %wp3075 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3074, ptr %wp3075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a59c word 0xf940056b
  %r3076.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3076 = load i64, ptr %r3076.p, align 8, !alias.scope !3, !noalias !4
  %t3077 = add i64 %r3076, 8
  %gmp3078 = inttoptr i64 %t3077 to ptr
  %gml3079 = load i64, ptr %gmp3078, align 1, !alias.scope !4, !noalias !3
  %wp3080 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3079, ptr %wp3080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5a0 word 0x8b08016b
  %r3081.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3081 = load i64, ptr %r3081.p, align 8, !alias.scope !3, !noalias !4
  %r3082.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3082 = load i64, ptr %r3082.p, align 8, !alias.scope !3, !noalias !4
  %t3083 = add i64 %r3081, %r3082
  %wp3084 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3083, ptr %wp3084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5a4 word 0xeb0a017f
  %r3085.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3085 = load i64, ptr %r3085.p, align 8, !alias.scope !3, !noalias !4
  %r3086.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3086 = load i64, ptr %r3086.p, align 8, !alias.scope !3, !noalias !4
  %t3087 = sub i64 %r3085, %r3086
  %fn3088 = icmp slt i64 %t3087, 0
  %fz3089 = icmp eq i64 %t3087, 0
  %fc3090 = icmp uge i64 %r3085, %r3086
  %fx13091 = xor i64 %r3085, %r3086
  %fx23092 = xor i64 %r3085, %t3087
  %fva3093 = and i64 %fx13091, %fx23092
  %fv3094 = icmp slt i64 %fva3093, 0
  %nz3095 = zext i1 %fn3088 to i64
  %zz3096 = zext i1 %fz3089 to i64
  %cz3097 = zext i1 %fc3090 to i64
  %vz3098 = zext i1 %fv3094 to i64
  %ns3099 = shl i64 %nz3095, 31
  %zs3100 = shl i64 %zz3096, 30
  %cs3101 = shl i64 %cz3097, 29
  %vs3102 = shl i64 %vz3098, 28
  %nzor3103 = or i64 %ns3099, %zs3100
  %cvor3104 = or i64 %cs3101, %vs3102
  %nzcv3105 = or i64 %nzor3103, %cvor3104
  %wp3106 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3105, ptr %wp3106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5a8 word 0x54fffe81
  %r3107.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3107 = load i64, ptr %r3107.p, align 8, !alias.scope !3, !noalias !4
  %fsh3109 = lshr i64 %r3107, 30
  %ftr3110 = trunc i64 %fsh3109 to i1
  %cond3108 = xor i1 %ftr3110, true
  br i1 %cond3108, label %L_80007a578, label %L_80007a5ac_ft
L_80007a5b0:
  ; @pc 0x80007a5b0 word 0xaa1f03e0
  %t3111 = or i64 0, 0
  %wp3112 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3111, ptr %wp3112, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a5b4
L_80007a5b4:
  ; @pc 0x80007a5b4 word 0xf100001f
  %r3113.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3113 = load i64, ptr %r3113.p, align 8, !alias.scope !3, !noalias !4
  %t3114 = sub i64 %r3113, 0
  %fn3115 = icmp slt i64 %t3114, 0
  %fz3116 = icmp eq i64 %t3114, 0
  %fc3117 = icmp uge i64 %r3113, 0
  %fx13118 = xor i64 %r3113, 0
  %fx23119 = xor i64 %r3113, %t3114
  %fva3120 = and i64 %fx13118, %fx23119
  %fv3121 = icmp slt i64 %fva3120, 0
  %nz3122 = zext i1 %fn3115 to i64
  %zz3123 = zext i1 %fz3116 to i64
  %cz3124 = zext i1 %fc3117 to i64
  %vz3125 = zext i1 %fv3121 to i64
  %ns3126 = shl i64 %nz3122, 31
  %zs3127 = shl i64 %zz3123, 30
  %cs3128 = shl i64 %cz3124, 29
  %vs3129 = shl i64 %vz3125, 28
  %nzor3130 = or i64 %ns3126, %zs3127
  %cvor3131 = or i64 %cs3128, %vs3129
  %nzcv3132 = or i64 %nzor3130, %cvor3131
  %wp3133 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3132, ptr %wp3133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5b8 word 0xf9400d6c
  %r3134.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3134 = load i64, ptr %r3134.p, align 8, !alias.scope !3, !noalias !4
  %t3135 = add i64 %r3134, 24
  %gmp3136 = inttoptr i64 %t3135 to ptr
  %gml3137 = load i64, ptr %gmp3136, align 1, !alias.scope !4, !noalias !3
  %wp3138 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3137, ptr %wp3138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5bc word 0x9a80016d
  %r3139.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3139 = load i64, ptr %r3139.p, align 8, !alias.scope !3, !noalias !4
  %r3140.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3140 = load i64, ptr %r3140.p, align 8, !alias.scope !3, !noalias !4
  %r3141.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3141 = load i64, ptr %r3141.p, align 8, !alias.scope !3, !noalias !4
  %fsh3143 = lshr i64 %r3141, 30
  %cond3142 = trunc i64 %fsh3143 to i1
  %sel3144 = select i1 %cond3142, i64 %r3139, i64 %r3140
  %wp3145 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %sel3144, ptr %wp3145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5c0 word 0x8b09016b
  %r3146.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3146 = load i64, ptr %r3146.p, align 8, !alias.scope !3, !noalias !4
  %r3147.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3147 = load i64, ptr %r3147.p, align 8, !alias.scope !3, !noalias !4
  %t3148 = add i64 %r3146, %r3147
  %wp3149 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3148, ptr %wp3149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5c4 word 0xf940056b
  %r3150.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3150 = load i64, ptr %r3150.p, align 8, !alias.scope !3, !noalias !4
  %t3151 = add i64 %r3150, 8
  %gmp3152 = inttoptr i64 %t3151 to ptr
  %gml3153 = load i64, ptr %gmp3152, align 1, !alias.scope !4, !noalias !3
  %wp3154 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3153, ptr %wp3154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5c8 word 0xeb17019f
  %r3155.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3155 = load i64, ptr %r3155.p, align 8, !alias.scope !3, !noalias !4
  %r3156.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3156 = load i64, ptr %r3156.p, align 8, !alias.scope !3, !noalias !4
  %t3157 = sub i64 %r3155, %r3156
  %fn3158 = icmp slt i64 %t3157, 0
  %fz3159 = icmp eq i64 %t3157, 0
  %fc3160 = icmp uge i64 %r3155, %r3156
  %fx13161 = xor i64 %r3155, %r3156
  %fx23162 = xor i64 %r3155, %t3157
  %fva3163 = and i64 %fx13161, %fx23162
  %fv3164 = icmp slt i64 %fva3163, 0
  %nz3165 = zext i1 %fn3158 to i64
  %zz3166 = zext i1 %fz3159 to i64
  %cz3167 = zext i1 %fc3160 to i64
  %vz3168 = zext i1 %fv3164 to i64
  %ns3169 = shl i64 %nz3165, 31
  %zs3170 = shl i64 %zz3166, 30
  %cs3171 = shl i64 %cz3167, 29
  %vs3172 = shl i64 %vz3168, 28
  %nzor3173 = or i64 %ns3169, %zs3170
  %cvor3174 = or i64 %cs3171, %vs3172
  %nzcv3175 = or i64 %nzor3173, %cvor3174
  %wp3176 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3175, ptr %wp3176, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5cc word 0x9a8d3000
  %r3177.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3177 = load i64, ptr %r3177.p, align 8, !alias.scope !3, !noalias !4
  %r3178.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3178 = load i64, ptr %r3178.p, align 8, !alias.scope !3, !noalias !4
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %fsh3181 = lshr i64 %r3179, 29
  %ftr3182 = trunc i64 %fsh3181 to i1
  %cond3180 = xor i1 %ftr3182, true
  %sel3183 = select i1 %cond3180, i64 %r3177, i64 %r3178
  %wp3184 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel3183, ptr %wp3184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5d0 word 0x8b08016b
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %r3186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3186 = load i64, ptr %r3186.p, align 8, !alias.scope !3, !noalias !4
  %t3187 = add i64 %r3185, %r3186
  %wp3188 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3187, ptr %wp3188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5d4 word 0xeb0a017f
  %r3189.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3189 = load i64, ptr %r3189.p, align 8, !alias.scope !3, !noalias !4
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %t3191 = sub i64 %r3189, %r3190
  %fn3192 = icmp slt i64 %t3191, 0
  %fz3193 = icmp eq i64 %t3191, 0
  %fc3194 = icmp uge i64 %r3189, %r3190
  %fx13195 = xor i64 %r3189, %r3190
  %fx23196 = xor i64 %r3189, %t3191
  %fva3197 = and i64 %fx13195, %fx23196
  %fv3198 = icmp slt i64 %fva3197, 0
  %nz3199 = zext i1 %fn3192 to i64
  %zz3200 = zext i1 %fz3193 to i64
  %cz3201 = zext i1 %fc3194 to i64
  %vz3202 = zext i1 %fv3198 to i64
  %ns3203 = shl i64 %nz3199, 31
  %zs3204 = shl i64 %zz3200, 30
  %cs3205 = shl i64 %cz3201, 29
  %vs3206 = shl i64 %vz3202, 28
  %nzor3207 = or i64 %ns3203, %zs3204
  %cvor3208 = or i64 %cs3205, %vs3206
  %nzcv3209 = or i64 %nzor3207, %cvor3208
  %wp3210 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3209, ptr %wp3210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5d8 word 0x54fffee1
  %r3211.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3211 = load i64, ptr %r3211.p, align 8, !alias.scope !3, !noalias !4
  %fsh3213 = lshr i64 %r3211, 30
  %ftr3214 = trunc i64 %fsh3213 to i1
  %cond3212 = xor i1 %ftr3214, true
  br i1 %cond3212, label %L_80007a5b4, label %L_80007a5dc_ft
L_80007a5e0:
  ; @pc 0x80007a5e0 word 0x8b09000b
  %r3215.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3215 = load i64, ptr %r3215.p, align 8, !alias.scope !3, !noalias !4
  %r3216.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3216 = load i64, ptr %r3216.p, align 8, !alias.scope !3, !noalias !4
  %t3217 = add i64 %r3215, %r3216
  %wp3218 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3217, ptr %wp3218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5e4 word 0xf940056b
  %r3219.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3219 = load i64, ptr %r3219.p, align 8, !alias.scope !3, !noalias !4
  %t3220 = add i64 %r3219, 8
  %gmp3221 = inttoptr i64 %t3220 to ptr
  %gml3222 = load i64, ptr %gmp3221, align 1, !alias.scope !4, !noalias !3
  %wp3223 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3222, ptr %wp3223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5e8 word 0x8b080160
  %r3224.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3224 = load i64, ptr %r3224.p, align 8, !alias.scope !3, !noalias !4
  %r3225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3225 = load i64, ptr %r3225.p, align 8, !alias.scope !3, !noalias !4
  %t3226 = add i64 %r3224, %r3225
  %wp3227 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3226, ptr %wp3227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5ec word 0xeb0a001f
  %r3228.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3228 = load i64, ptr %r3228.p, align 8, !alias.scope !3, !noalias !4
  %r3229.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3229 = load i64, ptr %r3229.p, align 8, !alias.scope !3, !noalias !4
  %t3230 = sub i64 %r3228, %r3229
  %fn3231 = icmp slt i64 %t3230, 0
  %fz3232 = icmp eq i64 %t3230, 0
  %fc3233 = icmp uge i64 %r3228, %r3229
  %fx13234 = xor i64 %r3228, %r3229
  %fx23235 = xor i64 %r3228, %t3230
  %fva3236 = and i64 %fx13234, %fx23235
  %fv3237 = icmp slt i64 %fva3236, 0
  %nz3238 = zext i1 %fn3231 to i64
  %zz3239 = zext i1 %fz3232 to i64
  %cz3240 = zext i1 %fc3233 to i64
  %vz3241 = zext i1 %fv3237 to i64
  %ns3242 = shl i64 %nz3238, 31
  %zs3243 = shl i64 %zz3239, 30
  %cs3244 = shl i64 %cz3240, 29
  %vs3245 = shl i64 %vz3241, 28
  %nzor3246 = or i64 %ns3242, %zs3243
  %cvor3247 = or i64 %cs3244, %vs3245
  %nzcv3248 = or i64 %nzor3246, %cvor3247
  %wp3249 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3248, ptr %wp3249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5f0 word 0x54ffd581
  %r3250.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3250 = load i64, ptr %r3250.p, align 8, !alias.scope !3, !noalias !4
  %fsh3252 = lshr i64 %r3250, 30
  %ftr3253 = trunc i64 %fsh3252 to i1
  %cond3251 = xor i1 %ftr3253, true
  br i1 %cond3251, label %L_80007a0a0, label %L_80007a5f4_ft
L_80007a5f8:
  ; @pc 0x80007a5f8 word 0xeb1c037f
  %r3254.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3254 = load i64, ptr %r3254.p, align 8, !alias.scope !3, !noalias !4
  %r3255.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3255 = load i64, ptr %r3255.p, align 8, !alias.scope !3, !noalias !4
  %t3256 = sub i64 %r3254, %r3255
  %fn3257 = icmp slt i64 %t3256, 0
  %fz3258 = icmp eq i64 %t3256, 0
  %fc3259 = icmp uge i64 %r3254, %r3255
  %fx13260 = xor i64 %r3254, %r3255
  %fx23261 = xor i64 %r3254, %t3256
  %fva3262 = and i64 %fx13260, %fx23261
  %fv3263 = icmp slt i64 %fva3262, 0
  %nz3264 = zext i1 %fn3257 to i64
  %zz3265 = zext i1 %fz3258 to i64
  %cz3266 = zext i1 %fc3259 to i64
  %vz3267 = zext i1 %fv3263 to i64
  %ns3268 = shl i64 %nz3264, 31
  %zs3269 = shl i64 %zz3265, 30
  %cs3270 = shl i64 %cz3266, 29
  %vs3271 = shl i64 %vz3267, 28
  %nzor3272 = or i64 %ns3268, %zs3269
  %cvor3273 = or i64 %cs3270, %vs3271
  %nzcv3274 = or i64 %nzor3272, %cvor3273
  %wp3275 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3274, ptr %wp3275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a5fc word 0x54ffe4e2
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %fsh3278 = lshr i64 %r3276, 29
  %cond3277 = trunc i64 %fsh3278 to i1
  br i1 %cond3277, label %L_80007a298, label %L_80007a600_ft
L_80007a644:
  ; @pc 0x80007a644 word 0xaa1f03f7
  %t3365 = or i64 0, 0
  %wp3366 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t3365, ptr %wp3366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a648 word 0x17fffe77
  br label %L_80007a024
L_80007a64c:
  ; @pc 0x80007a64c word 0xd1008109
  %r3367.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3367 = load i64, ptr %r3367.p, align 8, !alias.scope !3, !noalias !4
  %t3368 = sub i64 %r3367, 32
  %wp3369 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3368, ptr %wp3369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a650 word 0x7900241f
  %r3370.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3370 = load i64, ptr %r3370.p, align 8, !alias.scope !3, !noalias !4
  %t3371 = add i64 %r3370, 18
  %c3372 = trunc i32 0 to i16
  %gmp3373 = inttoptr i64 %t3371 to ptr
  store i16 %c3372, ptr %gmp3373, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a654 word 0xf9000c09
  %r3374.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3374 = load i64, ptr %r3374.p, align 8, !alias.scope !3, !noalias !4
  %t3375 = add i64 %r3374, 24
  %r3376.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3376 = load i64, ptr %r3376.p, align 8, !alias.scope !3, !noalias !4
  %gmp3377 = inttoptr i64 %t3375 to ptr
  store i64 %r3376, ptr %gmp3377, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a658 word 0x8b000100
  %r3378.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3378 = load i64, ptr %r3378.p, align 8, !alias.scope !3, !noalias !4
  %r3379.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3379 = load i64, ptr %r3379.p, align 8, !alias.scope !3, !noalias !4
  %t3380 = add i64 %r3378, %r3379
  %wp3381 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3380, ptr %wp3381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a65c word 0xb900101f
  %r3382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3382 = load i64, ptr %r3382.p, align 8, !alias.scope !3, !noalias !4
  %t3383 = add i64 %r3382, 16
  %gmp3384 = inttoptr i64 %t3383 to ptr
  store i32 0, ptr %gmp3384, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a660 word 0xf9000c17
  %r3385.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3385 = load i64, ptr %r3385.p, align 8, !alias.scope !3, !noalias !4
  %t3386 = add i64 %r3385, 24
  %r3387.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3387 = load i64, ptr %r3387.p, align 8, !alias.scope !3, !noalias !4
  %gmp3388 = inttoptr i64 %t3386 to ptr
  store i64 %r3387, ptr %gmp3388, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a664 word 0xa9007c1f
  %r3389.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3389 = load i64, ptr %r3389.p, align 8, !alias.scope !3, !noalias !4
  %t3390 = add i64 %r3389, 8
  %gmp3391 = inttoptr i64 %r3389 to ptr
  store i64 0, ptr %gmp3391, align 1, !alias.scope !4, !noalias !3
  %gmp3392 = inttoptr i64 %t3390 to ptr
  store i64 0, ptr %gmp3392, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a668 word 0x17fffebc
  br label %L_80007a158
L_80007a66c:
  ; @pc 0x80007a66c word 0x710005df
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %c3394 = trunc i64 %r3393 to i32
  %t3395 = sub i32 %c3394, 1
  %fn3396 = icmp slt i32 %t3395, 0
  %fz3397 = icmp eq i32 %t3395, 0
  %fc3398 = icmp uge i32 %c3394, 1
  %fx13399 = xor i32 %c3394, 1
  %fx23400 = xor i32 %c3394, %t3395
  %fva3401 = and i32 %fx13399, %fx23400
  %fv3402 = icmp slt i32 %fva3401, 0
  %nz3403 = zext i1 %fn3396 to i64
  %zz3404 = zext i1 %fz3397 to i64
  %cz3405 = zext i1 %fc3398 to i64
  %vz3406 = zext i1 %fv3402 to i64
  %ns3407 = shl i64 %nz3403, 31
  %zs3408 = shl i64 %zz3404, 30
  %cs3409 = shl i64 %cz3405, 29
  %vs3410 = shl i64 %vz3406, 28
  %nzor3411 = or i64 %ns3407, %zs3408
  %cvor3412 = or i64 %cs3409, %vs3410
  %nzcv3413 = or i64 %nzor3411, %cvor3412
  %wp3414 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3413, ptr %wp3414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a670 word 0x54000521
  %r3415.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3415 = load i64, ptr %r3415.p, align 8, !alias.scope !3, !noalias !4
  %fsh3417 = lshr i64 %r3415, 30
  %ftr3418 = trunc i64 %fsh3417 to i1
  %cond3416 = xor i1 %ftr3418, true
  br i1 %cond3416, label %L_80007a714, label %L_80007a674_ft
L_80007a678:
  ; @pc 0x80007a678 word 0xf9400d6e
  %r3421.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3421 = load i64, ptr %r3421.p, align 8, !alias.scope !3, !noalias !4
  %t3422 = add i64 %r3421, 24
  %gmp3423 = inttoptr i64 %t3422 to ptr
  %gml3424 = load i64, ptr %gmp3423, align 1, !alias.scope !4, !noalias !3
  %wp3425 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3424, ptr %wp3425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a67c word 0xeb1701df
  %r3426.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3426 = load i64, ptr %r3426.p, align 8, !alias.scope !3, !noalias !4
  %r3427.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3427 = load i64, ptr %r3427.p, align 8, !alias.scope !3, !noalias !4
  %t3428 = sub i64 %r3426, %r3427
  %fn3429 = icmp slt i64 %t3428, 0
  %fz3430 = icmp eq i64 %t3428, 0
  %fc3431 = icmp uge i64 %r3426, %r3427
  %fx13432 = xor i64 %r3426, %r3427
  %fx23433 = xor i64 %r3426, %t3428
  %fva3434 = and i64 %fx13432, %fx23433
  %fv3435 = icmp slt i64 %fva3434, 0
  %nz3436 = zext i1 %fn3429 to i64
  %zz3437 = zext i1 %fz3430 to i64
  %cz3438 = zext i1 %fc3431 to i64
  %vz3439 = zext i1 %fv3435 to i64
  %ns3440 = shl i64 %nz3436, 31
  %zs3441 = shl i64 %zz3437, 30
  %cs3442 = shl i64 %cz3438, 29
  %vs3443 = shl i64 %vz3439, 28
  %nzor3444 = or i64 %ns3440, %zs3441
  %cvor3445 = or i64 %cs3442, %vs3443
  %nzcv3446 = or i64 %nzor3444, %cvor3445
  %wp3447 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3446, ptr %wp3447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a680 word 0x540000e2
  %r3448.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3448 = load i64, ptr %r3448.p, align 8, !alias.scope !3, !noalias !4
  %fsh3450 = lshr i64 %r3448, 29
  %cond3449 = trunc i64 %fsh3450 to i1
  br i1 %cond3449, label %L_80007a69c, label %L_80007a684
L_80007a684:
  ; @pc 0x80007a684 word 0x8b09016b
  %r3451.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3451 = load i64, ptr %r3451.p, align 8, !alias.scope !3, !noalias !4
  %r3452.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3452 = load i64, ptr %r3452.p, align 8, !alias.scope !3, !noalias !4
  %t3453 = add i64 %r3451, %r3452
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3453, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a688 word 0xf940056b
  %r3455.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3455 = load i64, ptr %r3455.p, align 8, !alias.scope !3, !noalias !4
  %t3456 = add i64 %r3455, 8
  %gmp3457 = inttoptr i64 %t3456 to ptr
  %gml3458 = load i64, ptr %gmp3457, align 1, !alias.scope !4, !noalias !3
  %wp3459 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3458, ptr %wp3459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a68c word 0x8b08016b
  %r3460.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3460 = load i64, ptr %r3460.p, align 8, !alias.scope !3, !noalias !4
  %r3461.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3461 = load i64, ptr %r3461.p, align 8, !alias.scope !3, !noalias !4
  %t3462 = add i64 %r3460, %r3461
  %wp3463 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3462, ptr %wp3463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a690 word 0xeb0a017f
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %r3465.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3465 = load i64, ptr %r3465.p, align 8, !alias.scope !3, !noalias !4
  %t3466 = sub i64 %r3464, %r3465
  %fn3467 = icmp slt i64 %t3466, 0
  %fz3468 = icmp eq i64 %t3466, 0
  %fc3469 = icmp uge i64 %r3464, %r3465
  %fx13470 = xor i64 %r3464, %r3465
  %fx23471 = xor i64 %r3464, %t3466
  %fva3472 = and i64 %fx13470, %fx23471
  %fv3473 = icmp slt i64 %fva3472, 0
  %nz3474 = zext i1 %fn3467 to i64
  %zz3475 = zext i1 %fz3468 to i64
  %cz3476 = zext i1 %fc3469 to i64
  %vz3477 = zext i1 %fv3473 to i64
  %ns3478 = shl i64 %nz3474, 31
  %zs3479 = shl i64 %zz3475, 30
  %cs3480 = shl i64 %cz3476, 29
  %vs3481 = shl i64 %vz3477, 28
  %nzor3482 = or i64 %ns3478, %zs3479
  %cvor3483 = or i64 %cs3480, %vs3481
  %nzcv3484 = or i64 %nzor3482, %cvor3483
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a694 word 0x54ffff21
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %fsh3488 = lshr i64 %r3486, 30
  %ftr3489 = trunc i64 %fsh3488 to i1
  %cond3487 = xor i1 %ftr3489, true
  br i1 %cond3487, label %L_80007a678, label %L_80007a698_ft
L_80007a69c:
  ; @pc 0x80007a69c word 0x7940256f
  %r3490.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3490 = load i64, ptr %r3490.p, align 8, !alias.scope !3, !noalias !4
  %t3491 = add i64 %r3490, 18
  %gmp3492 = inttoptr i64 %t3491 to ptr
  %gml3493 = load i16, ptr %gmp3492, align 1, !alias.scope !4, !noalias !3
  %c3494 = zext i16 %gml3493 to i64
  %wp3495 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3494, ptr %wp3495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6a0 word 0x8b0f016f
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %r3497.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3497 = load i64, ptr %r3497.p, align 8, !alias.scope !3, !noalias !4
  %t3498 = add i64 %r3496, %r3497
  %wp3499 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3498, ptr %wp3499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6a4 word 0x910081ef
  %r3500.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3500 = load i64, ptr %r3500.p, align 8, !alias.scope !3, !noalias !4
  %t3501 = add i64 %r3500, 32
  %wp3502 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3501, ptr %wp3502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6a8 word 0x8b0c01f0
  %r3503.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3503 = load i64, ptr %r3503.p, align 8, !alias.scope !3, !noalias !4
  %r3504.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3504 = load i64, ptr %r3504.p, align 8, !alias.scope !3, !noalias !4
  %t3505 = add i64 %r3503, %r3504
  %wp3506 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3505, ptr %wp3506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6ac word 0xcb0f02ef
  %r3507.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3507 = load i64, ptr %r3507.p, align 8, !alias.scope !3, !noalias !4
  %r3508.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3508 = load i64, ptr %r3508.p, align 8, !alias.scope !3, !noalias !4
  %t3509 = sub i64 %r3507, %r3508
  %wp3510 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3509, ptr %wp3510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6b0 word 0x8a0d0210
  %r3511.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3511 = load i64, ptr %r3511.p, align 8, !alias.scope !3, !noalias !4
  %r3512.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3512 = load i64, ptr %r3512.p, align 8, !alias.scope !3, !noalias !4
  %t3513 = and i64 %r3512, %r3511
  %wp3514 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3513, ptr %wp3514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6b4 word 0x8b1001ef
  %r3515.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3515 = load i64, ptr %r3515.p, align 8, !alias.scope !3, !noalias !4
  %r3516.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3516 = load i64, ptr %r3516.p, align 8, !alias.scope !3, !noalias !4
  %t3517 = add i64 %r3515, %r3516
  %wp3518 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3517, ptr %wp3518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6b8 word 0xeb0f01df
  %r3519.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3519 = load i64, ptr %r3519.p, align 8, !alias.scope !3, !noalias !4
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 120
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
  ; @pc 0x80007a6bc word 0x54fffe43
  %r3541.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3541 = load i64, ptr %r3541.p, align 8, !alias.scope !3, !noalias !4
  %fsh3543 = lshr i64 %r3541, 29
  %ftr3544 = trunc i64 %fsh3543 to i1
  %cond3542 = xor i1 %ftr3544, true
  br i1 %cond3542, label %L_80007a684, label %L_80007a6c0_ft
L_80007a6d0:
  ; @pc 0x80007a6d0 word 0xaa0b03e0
  %r3582.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3582 = load i64, ptr %r3582.p, align 8, !alias.scope !3, !noalias !4
  %t3583 = or i64 0, %r3582
  %wp3584 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3583, ptr %wp3584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6d4 word 0x17ffffec
  br label %L_80007a684
L_80007a6d8:
  ; @pc 0x80007a6d8 word 0xaa0003fa
  %r3585.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3585 = load i64, ptr %r3585.p, align 8, !alias.scope !3, !noalias !4
  %t3586 = or i64 0, %r3585
  %wp3587 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t3586, ptr %wp3587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6dc word 0xaa0803e0
  %r3588.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3588 = load i64, ptr %r3588.p, align 8, !alias.scope !3, !noalias !4
  %t3589 = or i64 0, %r3588
  %wp3590 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3589, ptr %wp3590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6e0 word 0xaa0b03fb
  %r3591.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3591 = load i64, ptr %r3591.p, align 8, !alias.scope !3, !noalias !4
  %t3592 = or i64 0, %r3591
  %wp3593 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t3592, ptr %wp3593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6e4 word 0x949cbd69
  %wp3594 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239848, ptr %wp3594, align 8, !alias.scope !3, !noalias !4
  call void @f_8027a9c88(ptr %c)
  ; @pc 0x80007a6e8 word 0xaa1b03eb
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %t3596 = or i64 0, %r3595
  %wp3597 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3596, ptr %wp3597, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6ec word 0xaa1a03e0
  %r3598.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3598 = load i64, ptr %r3598.p, align 8, !alias.scope !3, !noalias !4
  %t3599 = or i64 0, %r3598
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6f0 word 0x17fffea6
  br label %L_80007a188
L_80007a6f4:
  ; @pc 0x80007a6f4 word 0xeb15017f
  %r3601.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3601 = load i64, ptr %r3601.p, align 8, !alias.scope !3, !noalias !4
  %r3602.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3602 = load i64, ptr %r3602.p, align 8, !alias.scope !3, !noalias !4
  %t3603 = sub i64 %r3601, %r3602
  %fn3604 = icmp slt i64 %t3603, 0
  %fz3605 = icmp eq i64 %t3603, 0
  %fc3606 = icmp uge i64 %r3601, %r3602
  %fx13607 = xor i64 %r3601, %r3602
  %fx23608 = xor i64 %r3601, %t3603
  %fva3609 = and i64 %fx13607, %fx23608
  %fv3610 = icmp slt i64 %fva3609, 0
  %nz3611 = zext i1 %fn3604 to i64
  %zz3612 = zext i1 %fz3605 to i64
  %cz3613 = zext i1 %fc3606 to i64
  %vz3614 = zext i1 %fv3610 to i64
  %ns3615 = shl i64 %nz3611, 31
  %zs3616 = shl i64 %zz3612, 30
  %cs3617 = shl i64 %cz3613, 29
  %vs3618 = shl i64 %vz3614, 28
  %nzor3619 = or i64 %ns3615, %zs3616
  %cvor3620 = or i64 %cs3617, %vs3618
  %nzcv3621 = or i64 %nzor3619, %cvor3620
  %wp3622 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3621, ptr %wp3622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6f8 word 0x54ffeee0
  %r3623.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3623 = load i64, ptr %r3623.p, align 8, !alias.scope !3, !noalias !4
  %fsh3625 = lshr i64 %r3623, 30
  %cond3624 = trunc i64 %fsh3625 to i1
  br i1 %cond3624, label %L_80007a4d4, label %L_80007a6fc_ft
L_80007a708:
  ; @pc 0x80007a708 word 0x2a1803e2
  %r3634.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3634 = load i64, ptr %r3634.p, align 8, !alias.scope !3, !noalias !4
  %c3635 = trunc i64 %r3634 to i32
  %t3636 = or i32 0, %c3635
  %c3637 = zext i32 %t3636 to i64
  %wp3638 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3637, ptr %wp3638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a70c word 0x94040935
  %wp3639 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239888, ptr %wp3639, align 8, !alias.scope !3, !noalias !4
  call void @f_80017cbe0(ptr %c)
  ; @pc 0x80007a710 word 0x17fffead
  br label %L_80007a1c4
L_80007a714:
  ; @pc 0x80007a714 word 0x710009df
  %r3640.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3640 = load i64, ptr %r3640.p, align 8, !alias.scope !3, !noalias !4
  %c3641 = trunc i64 %r3640 to i32
  %t3642 = sub i32 %c3641, 2
  %fn3643 = icmp slt i32 %t3642, 0
  %fz3644 = icmp eq i32 %t3642, 0
  %fc3645 = icmp uge i32 %c3641, 2
  %fx13646 = xor i32 %c3641, 2
  %fx23647 = xor i32 %c3641, %t3642
  %fva3648 = and i32 %fx13646, %fx23647
  %fv3649 = icmp slt i32 %fva3648, 0
  %nz3650 = zext i1 %fn3643 to i64
  %zz3651 = zext i1 %fz3644 to i64
  %cz3652 = zext i1 %fc3645 to i64
  %vz3653 = zext i1 %fv3649 to i64
  %ns3654 = shl i64 %nz3650, 31
  %zs3655 = shl i64 %zz3651, 30
  %cs3656 = shl i64 %cz3652, 29
  %vs3657 = shl i64 %vz3653, 28
  %nzor3658 = or i64 %ns3654, %zs3655
  %cvor3659 = or i64 %cs3656, %vs3657
  %nzcv3660 = or i64 %nzor3658, %cvor3659
  %wp3661 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3660, ptr %wp3661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a718 word 0x54000341
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %fsh3664 = lshr i64 %r3662, 30
  %ftr3665 = trunc i64 %fsh3664 to i1
  %cond3663 = xor i1 %ftr3665, true
  br i1 %cond3663, label %L_80007a780, label %L_80007a71c_ft
L_80007a720:
  ; @pc 0x80007a720 word 0xf9400d6e
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %t3669 = add i64 %r3668, 24
  %gmp3670 = inttoptr i64 %t3669 to ptr
  %gml3671 = load i64, ptr %gmp3670, align 1, !alias.scope !4, !noalias !3
  %wp3672 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3671, ptr %wp3672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a724 word 0xeb1701df
  %r3673.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3673 = load i64, ptr %r3673.p, align 8, !alias.scope !3, !noalias !4
  %r3674.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3674 = load i64, ptr %r3674.p, align 8, !alias.scope !3, !noalias !4
  %t3675 = sub i64 %r3673, %r3674
  %fn3676 = icmp slt i64 %t3675, 0
  %fz3677 = icmp eq i64 %t3675, 0
  %fc3678 = icmp uge i64 %r3673, %r3674
  %fx13679 = xor i64 %r3673, %r3674
  %fx23680 = xor i64 %r3673, %t3675
  %fva3681 = and i64 %fx13679, %fx23680
  %fv3682 = icmp slt i64 %fva3681, 0
  %nz3683 = zext i1 %fn3676 to i64
  %zz3684 = zext i1 %fz3677 to i64
  %cz3685 = zext i1 %fc3678 to i64
  %vz3686 = zext i1 %fv3682 to i64
  %ns3687 = shl i64 %nz3683, 31
  %zs3688 = shl i64 %zz3684, 30
  %cs3689 = shl i64 %cz3685, 29
  %vs3690 = shl i64 %vz3686, 28
  %nzor3691 = or i64 %ns3687, %zs3688
  %cvor3692 = or i64 %cs3689, %vs3690
  %nzcv3693 = or i64 %nzor3691, %cvor3692
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a728 word 0x540000e2
  %r3695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3695 = load i64, ptr %r3695.p, align 8, !alias.scope !3, !noalias !4
  %fsh3697 = lshr i64 %r3695, 29
  %cond3696 = trunc i64 %fsh3697 to i1
  br i1 %cond3696, label %L_80007a744, label %L_80007a72c
L_80007a72c:
  ; @pc 0x80007a72c word 0x8b09016b
  %r3698.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3698 = load i64, ptr %r3698.p, align 8, !alias.scope !3, !noalias !4
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %t3700 = add i64 %r3698, %r3699
  %wp3701 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3700, ptr %wp3701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a730 word 0xf940056b
  %r3702.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3702 = load i64, ptr %r3702.p, align 8, !alias.scope !3, !noalias !4
  %t3703 = add i64 %r3702, 8
  %gmp3704 = inttoptr i64 %t3703 to ptr
  %gml3705 = load i64, ptr %gmp3704, align 1, !alias.scope !4, !noalias !3
  %wp3706 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3705, ptr %wp3706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a734 word 0x8b08016b
  %r3707.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3707 = load i64, ptr %r3707.p, align 8, !alias.scope !3, !noalias !4
  %r3708.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3708 = load i64, ptr %r3708.p, align 8, !alias.scope !3, !noalias !4
  %t3709 = add i64 %r3707, %r3708
  %wp3710 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3709, ptr %wp3710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a738 word 0xeb0a017f
  %r3711.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3711 = load i64, ptr %r3711.p, align 8, !alias.scope !3, !noalias !4
  %r3712.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3712 = load i64, ptr %r3712.p, align 8, !alias.scope !3, !noalias !4
  %t3713 = sub i64 %r3711, %r3712
  %fn3714 = icmp slt i64 %t3713, 0
  %fz3715 = icmp eq i64 %t3713, 0
  %fc3716 = icmp uge i64 %r3711, %r3712
  %fx13717 = xor i64 %r3711, %r3712
  %fx23718 = xor i64 %r3711, %t3713
  %fva3719 = and i64 %fx13717, %fx23718
  %fv3720 = icmp slt i64 %fva3719, 0
  %nz3721 = zext i1 %fn3714 to i64
  %zz3722 = zext i1 %fz3715 to i64
  %cz3723 = zext i1 %fc3716 to i64
  %vz3724 = zext i1 %fv3720 to i64
  %ns3725 = shl i64 %nz3721, 31
  %zs3726 = shl i64 %zz3722, 30
  %cs3727 = shl i64 %cz3723, 29
  %vs3728 = shl i64 %vz3724, 28
  %nzor3729 = or i64 %ns3725, %zs3726
  %cvor3730 = or i64 %cs3727, %vs3728
  %nzcv3731 = or i64 %nzor3729, %cvor3730
  %wp3732 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3731, ptr %wp3732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a73c word 0x54ffff21
  %r3733.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3733 = load i64, ptr %r3733.p, align 8, !alias.scope !3, !noalias !4
  %fsh3735 = lshr i64 %r3733, 30
  %ftr3736 = trunc i64 %fsh3735 to i1
  %cond3734 = xor i1 %ftr3736, true
  br i1 %cond3734, label %L_80007a720, label %L_80007a740_ft
L_80007a744:
  ; @pc 0x80007a744 word 0x7940256f
  %r3737.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3737 = load i64, ptr %r3737.p, align 8, !alias.scope !3, !noalias !4
  %t3738 = add i64 %r3737, 18
  %gmp3739 = inttoptr i64 %t3738 to ptr
  %gml3740 = load i16, ptr %gmp3739, align 1, !alias.scope !4, !noalias !3
  %c3741 = zext i16 %gml3740 to i64
  %wp3742 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3741, ptr %wp3742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a748 word 0x8b0f016f
  %r3743.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3743 = load i64, ptr %r3743.p, align 8, !alias.scope !3, !noalias !4
  %r3744.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3744 = load i64, ptr %r3744.p, align 8, !alias.scope !3, !noalias !4
  %t3745 = add i64 %r3743, %r3744
  %wp3746 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3745, ptr %wp3746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a74c word 0x910081ef
  %r3747.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3747 = load i64, ptr %r3747.p, align 8, !alias.scope !3, !noalias !4
  %t3748 = add i64 %r3747, 32
  %wp3749 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3748, ptr %wp3749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a750 word 0x8b0c01f0
  %r3750.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3750 = load i64, ptr %r3750.p, align 8, !alias.scope !3, !noalias !4
  %r3751.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3751 = load i64, ptr %r3751.p, align 8, !alias.scope !3, !noalias !4
  %t3752 = add i64 %r3750, %r3751
  %wp3753 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3752, ptr %wp3753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a754 word 0xcb0f02ef
  %r3754.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3754 = load i64, ptr %r3754.p, align 8, !alias.scope !3, !noalias !4
  %r3755.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3755 = load i64, ptr %r3755.p, align 8, !alias.scope !3, !noalias !4
  %t3756 = sub i64 %r3754, %r3755
  %wp3757 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3756, ptr %wp3757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a758 word 0x8a0d0210
  %r3758.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3758 = load i64, ptr %r3758.p, align 8, !alias.scope !3, !noalias !4
  %r3759.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3759 = load i64, ptr %r3759.p, align 8, !alias.scope !3, !noalias !4
  %t3760 = and i64 %r3759, %r3758
  %wp3761 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3760, ptr %wp3761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a75c word 0x8b1001ef
  %r3762.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3762 = load i64, ptr %r3762.p, align 8, !alias.scope !3, !noalias !4
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3763 = load i64, ptr %r3763.p, align 8, !alias.scope !3, !noalias !4
  %t3764 = add i64 %r3762, %r3763
  %wp3765 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3764, ptr %wp3765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a760 word 0xeb0f01df
  %r3766.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3766 = load i64, ptr %r3766.p, align 8, !alias.scope !3, !noalias !4
  %r3767.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3767 = load i64, ptr %r3767.p, align 8, !alias.scope !3, !noalias !4
  %t3768 = sub i64 %r3766, %r3767
  %fn3769 = icmp slt i64 %t3768, 0
  %fz3770 = icmp eq i64 %t3768, 0
  %fc3771 = icmp uge i64 %r3766, %r3767
  %fx13772 = xor i64 %r3766, %r3767
  %fx23773 = xor i64 %r3766, %t3768
  %fva3774 = and i64 %fx13772, %fx23773
  %fv3775 = icmp slt i64 %fva3774, 0
  %nz3776 = zext i1 %fn3769 to i64
  %zz3777 = zext i1 %fz3770 to i64
  %cz3778 = zext i1 %fc3771 to i64
  %vz3779 = zext i1 %fv3775 to i64
  %ns3780 = shl i64 %nz3776, 31
  %zs3781 = shl i64 %zz3777, 30
  %cs3782 = shl i64 %cz3778, 29
  %vs3783 = shl i64 %vz3779, 28
  %nzor3784 = or i64 %ns3780, %zs3781
  %cvor3785 = or i64 %cs3782, %vs3783
  %nzcv3786 = or i64 %nzor3784, %cvor3785
  %wp3787 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3786, ptr %wp3787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a764 word 0x54fffe43
  %r3788.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3788 = load i64, ptr %r3788.p, align 8, !alias.scope !3, !noalias !4
  %fsh3790 = lshr i64 %r3788, 29
  %ftr3791 = trunc i64 %fsh3790 to i1
  %cond3789 = xor i1 %ftr3791, true
  br i1 %cond3789, label %L_80007a72c, label %L_80007a768_ft
L_80007a778:
  ; @pc 0x80007a778 word 0xaa0b03e0
  %r3824.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3824 = load i64, ptr %r3824.p, align 8, !alias.scope !3, !noalias !4
  %t3825 = or i64 0, %r3824
  %wp3826 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3825, ptr %wp3826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a77c word 0x17ffffec
  br label %L_80007a72c
L_80007a780:
  ; @pc 0x80007a780 word 0xaa1f03e0
  %t3827 = or i64 0, 0
  %wp3828 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3827, ptr %wp3828, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a784
L_80007a784:
  ; @pc 0x80007a784 word 0xf9400d6e
  %r3829.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3829 = load i64, ptr %r3829.p, align 8, !alias.scope !3, !noalias !4
  %t3830 = add i64 %r3829, 24
  %gmp3831 = inttoptr i64 %t3830 to ptr
  %gml3832 = load i64, ptr %gmp3831, align 1, !alias.scope !4, !noalias !3
  %wp3833 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml3832, ptr %wp3833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a788 word 0xeb1701df
  %r3834.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3834 = load i64, ptr %r3834.p, align 8, !alias.scope !3, !noalias !4
  %r3835.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3835 = load i64, ptr %r3835.p, align 8, !alias.scope !3, !noalias !4
  %t3836 = sub i64 %r3834, %r3835
  %fn3837 = icmp slt i64 %t3836, 0
  %fz3838 = icmp eq i64 %t3836, 0
  %fc3839 = icmp uge i64 %r3834, %r3835
  %fx13840 = xor i64 %r3834, %r3835
  %fx23841 = xor i64 %r3834, %t3836
  %fva3842 = and i64 %fx13840, %fx23841
  %fv3843 = icmp slt i64 %fva3842, 0
  %nz3844 = zext i1 %fn3837 to i64
  %zz3845 = zext i1 %fz3838 to i64
  %cz3846 = zext i1 %fc3839 to i64
  %vz3847 = zext i1 %fv3843 to i64
  %ns3848 = shl i64 %nz3844, 31
  %zs3849 = shl i64 %zz3845, 30
  %cs3850 = shl i64 %cz3846, 29
  %vs3851 = shl i64 %vz3847, 28
  %nzor3852 = or i64 %ns3848, %zs3849
  %cvor3853 = or i64 %cs3850, %vs3851
  %nzcv3854 = or i64 %nzor3852, %cvor3853
  %wp3855 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3854, ptr %wp3855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a78c word 0x54000183
  %r3856.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3856 = load i64, ptr %r3856.p, align 8, !alias.scope !3, !noalias !4
  %fsh3858 = lshr i64 %r3856, 29
  %ftr3859 = trunc i64 %fsh3858 to i1
  %cond3857 = xor i1 %ftr3859, true
  br i1 %cond3857, label %L_80007a7bc, label %L_80007a790_ft
L_80007a7bc:
  ; @pc 0x80007a7bc word 0x8b09016b
  %r3947.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3947 = load i64, ptr %r3947.p, align 8, !alias.scope !3, !noalias !4
  %r3948.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3948 = load i64, ptr %r3948.p, align 8, !alias.scope !3, !noalias !4
  %t3949 = add i64 %r3947, %r3948
  %wp3950 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3949, ptr %wp3950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7c0 word 0xf940056b
  %r3951.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3951 = load i64, ptr %r3951.p, align 8, !alias.scope !3, !noalias !4
  %t3952 = add i64 %r3951, 8
  %gmp3953 = inttoptr i64 %t3952 to ptr
  %gml3954 = load i64, ptr %gmp3953, align 1, !alias.scope !4, !noalias !3
  %wp3955 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3954, ptr %wp3955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7c4 word 0x8b08016b
  %r3956.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3956 = load i64, ptr %r3956.p, align 8, !alias.scope !3, !noalias !4
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %t3958 = add i64 %r3956, %r3957
  %wp3959 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3958, ptr %wp3959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7c8 word 0xeb0a017f
  %r3960.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3960 = load i64, ptr %r3960.p, align 8, !alias.scope !3, !noalias !4
  %r3961.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3961 = load i64, ptr %r3961.p, align 8, !alias.scope !3, !noalias !4
  %t3962 = sub i64 %r3960, %r3961
  %fn3963 = icmp slt i64 %t3962, 0
  %fz3964 = icmp eq i64 %t3962, 0
  %fc3965 = icmp uge i64 %r3960, %r3961
  %fx13966 = xor i64 %r3960, %r3961
  %fx23967 = xor i64 %r3960, %t3962
  %fva3968 = and i64 %fx13966, %fx23967
  %fv3969 = icmp slt i64 %fva3968, 0
  %nz3970 = zext i1 %fn3963 to i64
  %zz3971 = zext i1 %fz3964 to i64
  %cz3972 = zext i1 %fc3965 to i64
  %vz3973 = zext i1 %fv3969 to i64
  %ns3974 = shl i64 %nz3970, 31
  %zs3975 = shl i64 %zz3971, 30
  %cs3976 = shl i64 %cz3972, 29
  %vs3977 = shl i64 %vz3973, 28
  %nzor3978 = or i64 %ns3974, %zs3975
  %cvor3979 = or i64 %cs3976, %vs3977
  %nzcv3980 = or i64 %nzor3978, %cvor3979
  %wp3981 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3980, ptr %wp3981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7cc word 0x54fffdc1
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %fsh3984 = lshr i64 %r3982, 30
  %ftr3985 = trunc i64 %fsh3984 to i1
  %cond3983 = xor i1 %ftr3985, true
  br i1 %cond3983, label %L_80007a784, label %L_80007a7d0
L_80007a7d0:
  ; @pc 0x80007a7d0 word 0xb4000080
  %r3986.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3986 = load i64, ptr %r3986.p, align 8, !alias.scope !3, !noalias !4
  %cmp3987 = icmp eq i64 %r3986, 0
  br i1 %cmp3987, label %L_80007a7e0, label %L_80007a7d4_ft
L_80007a7e0:
  ; @pc 0x80007a7e0 word 0xb400007a
  %r3999.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3999 = load i64, ptr %r3999.p, align 8, !alias.scope !3, !noalias !4
  %cmp4000 = icmp eq i64 %r3999, 0
  br i1 %cmp4000, label %L_80007a7ec, label %L_80007a7e4_ft
L_80007a7ec:
  ; @pc 0x80007a7ec word 0xaa1f03f8
  %t4008 = or i64 0, 0
  %wp4009 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t4008, ptr %wp4009, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7f0 word 0x17ffff3f
  br label %L_80007a4ec
L_80007a7f4:
  ; @pc 0x80007a7f4 word 0xb4ffdaf9
  %r4010.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4010 = load i64, ptr %r4010.p, align 8, !alias.scope !3, !noalias !4
  %cmp4011 = icmp eq i64 %r4010, 0
  br i1 %cmp4011, label %L_80007a350, label %L_80007a7f8_ft
L_80007a814:
  ; @pc 0x80007a814 word 0xa900d7f3
  %r4040.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4040 = load i64, ptr %r4040.p, align 8, !alias.scope !3, !noalias !4
  %t4041 = add i64 %r4040, 8
  %t4042 = add i64 %t4041, 8
  %r4043.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4043 = load i64, ptr %r4043.p, align 8, !alias.scope !3, !noalias !4
  %gmp4044 = inttoptr i64 %t4041 to ptr
  store i64 %r4043, ptr %gmp4044, align 1, !alias.scope !4, !noalias !3
  %r4045.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4045 = load i64, ptr %r4045.p, align 8, !alias.scope !3, !noalias !4
  %gmp4046 = inttoptr i64 %t4042 to ptr
  store i64 %r4045, ptr %gmp4046, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a818 word 0x910023e1
  %r4047.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4047 = load i64, ptr %r4047.p, align 8, !alias.scope !3, !noalias !4
  %t4048 = add i64 %r4047, 8
  %wp4049 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4048, ptr %wp4049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a81c word 0xb9001bf4
  %r4050.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4050 = load i64, ptr %r4050.p, align 8, !alias.scope !3, !noalias !4
  %t4051 = add i64 %r4050, 24
  %r4052.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4052 = load i64, ptr %r4052.p, align 8, !alias.scope !3, !noalias !4
  %c4053 = trunc i64 %r4052 to i32
  %gmp4054 = inttoptr i64 %t4051 to ptr
  store i32 %c4053, ptr %gmp4054, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a820 word 0xf90013f7
  %r4055.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4055 = load i64, ptr %r4055.p, align 8, !alias.scope !3, !noalias !4
  %t4056 = add i64 %r4055, 32
  %r4057.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4057 = load i64, ptr %r4057.p, align 8, !alias.scope !3, !noalias !4
  %gmp4058 = inttoptr i64 %t4056 to ptr
  store i64 %r4057, ptr %gmp4058, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a824 word 0xb9002bf8
  %r4059.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4059 = load i64, ptr %r4059.p, align 8, !alias.scope !3, !noalias !4
  %t4060 = add i64 %r4059, 40
  %r4061.p = getelementptr inbounds i8, ptr %c, i64 192
  %r4061 = load i64, ptr %r4061.p, align 8, !alias.scope !3, !noalias !4
  %c4062 = trunc i64 %r4061 to i32
  %gmp4063 = inttoptr i64 %t4060 to ptr
  store i32 %c4062, ptr %gmp4063, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a828 word 0xf9400008
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %gmp4065 = inttoptr i64 %r4064 to ptr
  %gml4066 = load i64, ptr %gmp4065, align 1, !alias.scope !4, !noalias !3
  %wp4067 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4066, ptr %wp4067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a82c word 0xf9400108
  %r4068.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4068 = load i64, ptr %r4068.p, align 8, !alias.scope !3, !noalias !4
  %gmp4069 = inttoptr i64 %r4068 to ptr
  %gml4070 = load i64, ptr %gmp4069, align 1, !alias.scope !4, !noalias !3
  %wp4071 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4070, ptr %wp4071, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a830 word 0xd63f0100
  %r4072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4072 = load i64, ptr %r4072.p, align 8, !alias.scope !3, !noalias !4
  %fp4073 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4072, ptr %fp4073, align 8, !alias.scope !3, !noalias !4
  %wp4074 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360240180, ptr %wp4074, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80007a834 word 0x17ffffee
  br label %L_80007a7ec
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34360237344, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_800079d20
L_800079d58_ft:
  ; @pc 0x800079d58 word 0xaa0003f3
  %r73.p = getelementptr inbounds i8, ptr %c, i64 0
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d5c word 0xb4002700
  %r76.p = getelementptr inbounds i8, ptr %c, i64 0
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %cmp77 = icmp eq i64 %r76, 0
  br i1 %cmp77, label %L_80007a23c, label %L_800079d60
L_800079d78_ft:
  ; @pc 0x800079d78 word 0xb940aa68
  %r117.p = getelementptr inbounds i8, ptr %c, i64 152
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 168
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i32, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i32 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d7c word 0x91022277
  %r123.p = getelementptr inbounds i8, ptr %c, i64 152
  %r123 = load i64, ptr %r123.p, align 8, !alias.scope !3, !noalias !4
  %t124 = add i64 %r123, 136
  %wp125 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t124, ptr %wp125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079d80 word 0x37002908
  %r126.p = getelementptr inbounds i8, ptr %c, i64 64
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = and i64 %r126, 1
  %cmp128 = icmp ne i64 %t127, 0
  br i1 %cmp128, label %L_80007a2a0, label %L_800079d84_ft
L_800079d84_ft:
  ; @pc 0x800079d84 word 0xaa1f03f6
  %t129 = or i64 0, 0
  %wp130 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  br label %L_800079d88
L_800079db4_ft:
  ; @pc 0x800079db4 word 0xb9408269
  %r231.p = getelementptr inbounds i8, ptr %c, i64 152
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %t232 = add i64 %r231, 128
  %gmp233 = inttoptr i64 %t232 to ptr
  %gml234 = load i32, ptr %gmp233, align 1, !alias.scope !4, !noalias !3
  %c235 = zext i32 %gml234 to i64
  %wp236 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079db8 word 0x1b147d29
  %r237.p = getelementptr inbounds i8, ptr %c, i64 160
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %c238 = trunc i64 %r237 to i32
  %r239.p = getelementptr inbounds i8, ptr %c, i64 72
  %r239 = load i64, ptr %r239.p, align 8, !alias.scope !3, !noalias !4
  %c240 = trunc i64 %r239 to i32
  %t241 = mul i32 %c240, %c238
  %t242 = add i32 0, %t241
  %c243 = zext i32 %t242 to i64
  %wp244 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c243, ptr %wp244, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dbc word 0x37f827a9
  %r245.p = getelementptr inbounds i8, ptr %c, i64 72
  %r245 = load i64, ptr %r245.p, align 8, !alias.scope !3, !noalias !4
  %t246 = and i64 %r245, 2147483648
  %cmp247 = icmp ne i64 %t246, 0
  br i1 %cmp247, label %L_80007a2b0, label %L_800079dc0_ft
L_800079dc0_ft:
  ; @pc 0x800079dc0 word 0xf9405a6a
  %r248.p = getelementptr inbounds i8, ptr %c, i64 152
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %t249 = add i64 %r248, 176
  %gmp250 = inttoptr i64 %t249 to ptr
  %gml251 = load i64, ptr %gmp250, align 1, !alias.scope !4, !noalias !3
  %wp252 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dc4 word 0x5100052b
  %r253.p = getelementptr inbounds i8, ptr %c, i64 72
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %c254 = trunc i64 %r253 to i32
  %t255 = sub i32 %c254, 1
  %c256 = zext i32 %t255 to i64
  %wp257 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c256, ptr %wp257, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dc8 word 0x8b0b014a
  %r258.p = getelementptr inbounds i8, ptr %c, i64 80
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %r259.p = getelementptr inbounds i8, ptr %c, i64 88
  %r259 = load i64, ptr %r259.p, align 8, !alias.scope !3, !noalias !4
  %t260 = add i64 %r258, %r259
  %wp261 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t260, ptr %wp261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dcc word 0x8a2b0158
  %r262.p = getelementptr inbounds i8, ptr %c, i64 88
  %r262 = load i64, ptr %r262.p, align 8, !alias.scope !3, !noalias !4
  %t263 = xor i64 %r262, -1
  %r264.p = getelementptr inbounds i8, ptr %c, i64 80
  %r264 = load i64, ptr %r264.p, align 8, !alias.scope !3, !noalias !4
  %t265 = and i64 %r264, %t263
  %wp266 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t265, ptr %wp266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dd0 word 0x8b19030a
  %r267.p = getelementptr inbounds i8, ptr %c, i64 192
  %r267 = load i64, ptr %r267.p, align 8, !alias.scope !3, !noalias !4
  %r268.p = getelementptr inbounds i8, ptr %c, i64 200
  %r268 = load i64, ptr %r268.p, align 8, !alias.scope !3, !noalias !4
  %t269 = add i64 %r267, %r268
  %wp270 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t269, ptr %wp270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079dd4 word 0xeb18015f
  %r271.p = getelementptr inbounds i8, ptr %c, i64 80
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
  ; @pc 0x800079dd8 word 0x54000de3
  %r293.p = getelementptr inbounds i8, ptr %c, i64 272
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %fsh295 = lshr i64 %r293, 29
  %ftr296 = trunc i64 %fsh295 to i1
  %cond294 = xor i1 %ftr296, true
  br i1 %cond294, label %L_800079f94, label %L_800079ddc_ft
L_800079ddc_ft:
  ; @pc 0x800079ddc word 0xf9405e6b
  %r297.p = getelementptr inbounds i8, ptr %c, i64 152
  %r297 = load i64, ptr %r297.p, align 8, !alias.scope !3, !noalias !4
  %t298 = add i64 %r297, 184
  %gmp299 = inttoptr i64 %t298 to ptr
  %gml300 = load i64, ptr %gmp299, align 1, !alias.scope !4, !noalias !3
  %wp301 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml300, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079de0 word 0xeb0a017f
  %r302.p = getelementptr inbounds i8, ptr %c, i64 88
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %r303.p = getelementptr inbounds i8, ptr %c, i64 80
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
  ; @pc 0x800079de4 word 0x54000d83
  %r324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r324 = load i64, ptr %r324.p, align 8, !alias.scope !3, !noalias !4
  %fsh326 = lshr i64 %r324, 29
  %ftr327 = trunc i64 %fsh326 to i1
  %cond325 = xor i1 %ftr327, true
  br i1 %cond325, label %L_800079f94, label %L_800079de8_ft
L_800079de8_ft:
  ; @pc 0x800079de8 word 0xf9005a6a
  %r328.p = getelementptr inbounds i8, ptr %c, i64 152
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %t329 = add i64 %r328, 176
  %r330.p = getelementptr inbounds i8, ptr %c, i64 80
  %r330 = load i64, ptr %r330.p, align 8, !alias.scope !3, !noalias !4
  %gmp331 = inttoptr i64 %t329 to ptr
  store i64 %r330, ptr %gmp331, align 1, !alias.scope !4, !noalias !3
  br label %L_800079dec
L_800079e28_ft:
  ; @pc 0x800079e28 word 0xf0000808
  %wp425 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34361294848, ptr %wp425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e2c word 0x910d4108
  %r426.p = getelementptr inbounds i8, ptr %c, i64 64
  %r426 = load i64, ptr %r426.p, align 8, !alias.scope !3, !noalias !4
  %t427 = add i64 %r426, 848
  %wp428 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t427, ptr %wp428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e30 word 0xeb08007f
  %r429.p = getelementptr inbounds i8, ptr %c, i64 24
  %r429 = load i64, ptr %r429.p, align 8, !alias.scope !3, !noalias !4
  %r430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %t431 = sub i64 %r429, %r430
  %fn432 = icmp slt i64 %t431, 0
  %fz433 = icmp eq i64 %t431, 0
  %fc434 = icmp uge i64 %r429, %r430
  %fx1435 = xor i64 %r429, %r430
  %fx2436 = xor i64 %r429, %t431
  %fva437 = and i64 %fx1435, %fx2436
  %fv438 = icmp slt i64 %fva437, 0
  %nz439 = zext i1 %fn432 to i64
  %zz440 = zext i1 %fz433 to i64
  %cz441 = zext i1 %fc434 to i64
  %vz442 = zext i1 %fv438 to i64
  %ns443 = shl i64 %nz439, 31
  %zs444 = shl i64 %zz440, 30
  %cs445 = shl i64 %cz441, 29
  %vs446 = shl i64 %vz442, 28
  %nzor447 = or i64 %ns443, %zs444
  %cvor448 = or i64 %cs445, %vs446
  %nzcv449 = or i64 %nzor447, %cvor448
  %wp450 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv449, ptr %wp450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e34 word 0x540009a1
  %r451.p = getelementptr inbounds i8, ptr %c, i64 272
  %r451 = load i64, ptr %r451.p, align 8, !alias.scope !3, !noalias !4
  %fsh453 = lshr i64 %r451, 30
  %ftr454 = trunc i64 %fsh453 to i1
  %cond452 = xor i1 %ftr454, true
  br i1 %cond452, label %L_800079f68, label %L_800079e38_ft
L_800079e38_ft:
  ; @pc 0x800079e38 word 0xf10022bf
  %r455.p = getelementptr inbounds i8, ptr %c, i64 168
  %r455 = load i64, ptr %r455.p, align 8, !alias.scope !3, !noalias !4
  %t456 = sub i64 %r455, 8
  %fn457 = icmp slt i64 %t456, 0
  %fz458 = icmp eq i64 %t456, 0
  %fc459 = icmp uge i64 %r455, 8
  %fx1460 = xor i64 %r455, 8
  %fx2461 = xor i64 %r455, %t456
  %fva462 = and i64 %fx1460, %fx2461
  %fv463 = icmp slt i64 %fva462, 0
  %nz464 = zext i1 %fn457 to i64
  %zz465 = zext i1 %fz458 to i64
  %cz466 = zext i1 %fc459 to i64
  %vz467 = zext i1 %fv463 to i64
  %ns468 = shl i64 %nz464, 31
  %zs469 = shl i64 %zz465, 30
  %cs470 = shl i64 %cz466, 29
  %vs471 = shl i64 %vz467, 28
  %nzor472 = or i64 %ns468, %zs469
  %cvor473 = or i64 %cs470, %vs471
  %nzcv474 = or i64 %nzor472, %cvor473
  %wp475 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv474, ptr %wp475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e3c word 0x52800108
  %c476 = zext i32 8 to i64
  %wp477 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c476, ptr %wp477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e40 word 0xf940031a
  %r478.p = getelementptr inbounds i8, ptr %c, i64 192
  %r478 = load i64, ptr %r478.p, align 8, !alias.scope !3, !noalias !4
  %gmp479 = inttoptr i64 %r478 to ptr
  %gml480 = load i64, ptr %gmp479, align 1, !alias.scope !4, !noalias !3
  %wp481 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml480, ptr %wp481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e44 word 0x9a8882a8
  %r482.p = getelementptr inbounds i8, ptr %c, i64 168
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %r483.p = getelementptr inbounds i8, ptr %c, i64 64
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %r484.p = getelementptr inbounds i8, ptr %c, i64 272
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %fsh486 = lshr i64 %r484, 29
  %ftr487 = trunc i64 %fsh486 to i1
  %fsh488 = lshr i64 %r484, 30
  %ftr489 = trunc i64 %fsh488 to i1
  %fnz490 = xor i1 %ftr489, true
  %cond485 = and i1 %ftr487, %fnz490
  %sel491 = select i1 %cond485, i64 %r482, i64 %r483
  %wp492 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel491, ptr %wp492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e48 word 0x7100029f
  %r493.p = getelementptr inbounds i8, ptr %c, i64 160
  %r493 = load i64, ptr %r493.p, align 8, !alias.scope !3, !noalias !4
  %c494 = trunc i64 %r493 to i32
  %t495 = sub i32 %c494, 0
  %fn496 = icmp slt i32 %t495, 0
  %fz497 = icmp eq i32 %t495, 0
  %fc498 = icmp uge i32 %c494, 0
  %fx1499 = xor i32 %c494, 0
  %fx2500 = xor i32 %c494, %t495
  %fva501 = and i32 %fx1499, %fx2500
  %fv502 = icmp slt i32 %fva501, 0
  %nz503 = zext i1 %fn496 to i64
  %zz504 = zext i1 %fz497 to i64
  %cz505 = zext i1 %fc498 to i64
  %vz506 = zext i1 %fv502 to i64
  %ns507 = shl i64 %nz503, 31
  %zs508 = shl i64 %zz504, 30
  %cs509 = shl i64 %cz505, 29
  %vs510 = shl i64 %vz506, 28
  %nzor511 = or i64 %ns507, %zs508
  %cvor512 = or i64 %cs509, %vs510
  %nzcv513 = or i64 %nzor511, %cvor512
  %wp514 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv513, ptr %wp514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e4c word 0x5a945689
  %r515.p = getelementptr inbounds i8, ptr %c, i64 160
  %r515 = load i64, ptr %r515.p, align 8, !alias.scope !3, !noalias !4
  %c516 = trunc i64 %r515 to i32
  %r517.p = getelementptr inbounds i8, ptr %c, i64 160
  %r517 = load i64, ptr %r517.p, align 8, !alias.scope !3, !noalias !4
  %c518 = trunc i64 %r517 to i32
  %t519 = sub i32 0, %c518
  %r520.p = getelementptr inbounds i8, ptr %c, i64 272
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %fsh522 = lshr i64 %r520, 31
  %ftr523 = trunc i64 %fsh522 to i1
  %cond521 = xor i1 %ftr523, true
  %sel524 = select i1 %cond521, i32 %c516, i32 %t519
  %c525 = zext i32 %sel524 to i64
  %wp526 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c525, ptr %wp526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e50 word 0x5100052a
  %r527.p = getelementptr inbounds i8, ptr %c, i64 72
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %c528 = trunc i64 %r527 to i32
  %t529 = sub i32 %c528, 1
  %c530 = zext i32 %t529 to i64
  %wp531 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e54 word 0x6a0a013f
  %r532.p = getelementptr inbounds i8, ptr %c, i64 80
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %c533 = trunc i64 %r532 to i32
  %r534.p = getelementptr inbounds i8, ptr %c, i64 72
  %r534 = load i64, ptr %r534.p, align 8, !alias.scope !3, !noalias !4
  %c535 = trunc i64 %r534 to i32
  %t536 = and i32 %c535, %c533
  %fn537 = icmp slt i32 %t536, 0
  %fz538 = icmp eq i32 %t536, 0
  %nz539 = zext i1 %fn537 to i64
  %zz540 = zext i1 %fz538 to i64
  %ns541 = shl i64 %nz539, 31
  %zs542 = shl i64 %zz540, 30
  %nzcv543 = or i64 %ns541, %zs542
  %wp544 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv543, ptr %wp544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e58 word 0x54002821
  %r545.p = getelementptr inbounds i8, ptr %c, i64 272
  %r545 = load i64, ptr %r545.p, align 8, !alias.scope !3, !noalias !4
  %fsh547 = lshr i64 %r545, 30
  %ftr548 = trunc i64 %fsh547 to i1
  %cond546 = xor i1 %ftr548, true
  br i1 %cond546, label %L_80007a35c, label %L_800079e5c_ft
L_800079e5c_ft:
  ; @pc 0x800079e5c word 0x91001d08
  %r549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r549 = load i64, ptr %r549.p, align 8, !alias.scope !3, !noalias !4
  %t550 = add i64 %r549, 7
  %wp551 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t550, ptr %wp551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e60 word 0x927df117
  %r552.p = getelementptr inbounds i8, ptr %c, i64 64
  %r552 = load i64, ptr %r552.p, align 8, !alias.scope !3, !noalias !4
  %t553 = and i64 %r552, -8
  %wp554 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t553, ptr %wp554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e64 word 0xeb1502ff
  %r555.p = getelementptr inbounds i8, ptr %c, i64 184
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %r556.p = getelementptr inbounds i8, ptr %c, i64 168
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %t557 = sub i64 %r555, %r556
  %fn558 = icmp slt i64 %t557, 0
  %fz559 = icmp eq i64 %t557, 0
  %fc560 = icmp uge i64 %r555, %r556
  %fx1561 = xor i64 %r555, %r556
  %fx2562 = xor i64 %r555, %t557
  %fva563 = and i64 %fx1561, %fx2562
  %fv564 = icmp slt i64 %fva563, 0
  %nz565 = zext i1 %fn558 to i64
  %zz566 = zext i1 %fz559 to i64
  %cz567 = zext i1 %fc560 to i64
  %vz568 = zext i1 %fv564 to i64
  %ns569 = shl i64 %nz565, 31
  %zs570 = shl i64 %zz566, 30
  %cs571 = shl i64 %cz567, 29
  %vs572 = shl i64 %vz568, 28
  %nzor573 = or i64 %ns569, %zs570
  %cvor574 = or i64 %cs571, %vs572
  %nzcv575 = or i64 %nzor573, %cvor574
  %wp576 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv575, ptr %wp576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e68 word 0x54002883
  %r577.p = getelementptr inbounds i8, ptr %c, i64 272
  %r577 = load i64, ptr %r577.p, align 8, !alias.scope !3, !noalias !4
  %fsh579 = lshr i64 %r577, 29
  %ftr580 = trunc i64 %fsh579 to i1
  %cond578 = xor i1 %ftr580, true
  br i1 %cond578, label %L_80007a378, label %L_800079e6c_ft
L_800079e6c_ft:
  ; @pc 0x800079e6c word 0xb940aa68
  %r581.p = getelementptr inbounds i8, ptr %c, i64 152
  %r581 = load i64, ptr %r581.p, align 8, !alias.scope !3, !noalias !4
  %t582 = add i64 %r581, 168
  %gmp583 = inttoptr i64 %t582 to ptr
  %gml584 = load i32, ptr %gmp583, align 1, !alias.scope !4, !noalias !3
  %c585 = zext i32 %gml584 to i64
  %wp586 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c585, ptr %wp586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e70 word 0x36000788
  %r587.p = getelementptr inbounds i8, ptr %c, i64 64
  %r587 = load i64, ptr %r587.p, align 8, !alias.scope !3, !noalias !4
  %t588 = and i64 %r587, 1
  %cmp589 = icmp eq i64 %t588, 0
  br i1 %cmp589, label %L_800079f60, label %L_800079e74_ft
L_800079e74_ft:
  ; @pc 0x800079e74 word 0x91022276
  %r590.p = getelementptr inbounds i8, ptr %c, i64 152
  %r590 = load i64, ptr %r590.p, align 8, !alias.scope !3, !noalias !4
  %t591 = add i64 %r590, 136
  %wp592 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t591, ptr %wp592, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e78 word 0xaa1603e0
  %r593.p = getelementptr inbounds i8, ptr %c, i64 176
  %r593 = load i64, ptr %r593.p, align 8, !alias.scope !3, !noalias !4
  %t594 = or i64 0, %r593
  %wp595 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t594, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e7c word 0x94aca879
  %wp596 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360237696, ptr %wp596, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_800079e80
L_800079e8c_ft:
  ; @pc 0x800079e8c word 0xb980c669
  %r614.p = getelementptr inbounds i8, ptr %c, i64 152
  %r614 = load i64, ptr %r614.p, align 8, !alias.scope !3, !noalias !4
  %t615 = add i64 %r614, 196
  %gmp616 = inttoptr i64 %t615 to ptr
  %gml617 = load i32, ptr %gmp616, align 1, !alias.scope !4, !noalias !3
  %c618 = sext i32 %gml617 to i64
  %wp619 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c618, ptr %wp619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e90 word 0x9102c279
  %r620.p = getelementptr inbounds i8, ptr %c, i64 152
  %r620 = load i64, ptr %r620.p, align 8, !alias.scope !3, !noalias !4
  %t621 = add i64 %r620, 176
  %wp622 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t621, ptr %wp622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e94 word 0x2a0c03f8
  %r623.p = getelementptr inbounds i8, ptr %c, i64 96
  %r623 = load i64, ptr %r623.p, align 8, !alias.scope !3, !noalias !4
  %c624 = trunc i64 %r623 to i32
  %t625 = or i32 0, %c624
  %c626 = zext i32 %t625 to i64
  %wp627 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c626, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e98 word 0xf9405e6b
  %r628.p = getelementptr inbounds i8, ptr %c, i64 152
  %r628 = load i64, ptr %r628.p, align 8, !alias.scope !3, !noalias !4
  %t629 = add i64 %r628, 184
  %gmp630 = inttoptr i64 %t629 to ptr
  %gml631 = load i64, ptr %gmp630, align 1, !alias.scope !4, !noalias !3
  %wp632 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml631, ptr %wp632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079e9c word 0x7100219f
  %r633.p = getelementptr inbounds i8, ptr %c, i64 96
  %r633 = load i64, ptr %r633.p, align 8, !alias.scope !3, !noalias !4
  %c634 = trunc i64 %r633 to i32
  %t635 = sub i32 %c634, 8
  %fn636 = icmp slt i32 %t635, 0
  %fz637 = icmp eq i32 %t635, 0
  %fc638 = icmp uge i32 %c634, 8
  %fx1639 = xor i32 %c634, 8
  %fx2640 = xor i32 %c634, %t635
  %fva641 = and i32 %fx1639, %fx2640
  %fv642 = icmp slt i32 %fva641, 0
  %nz643 = zext i1 %fn636 to i64
  %zz644 = zext i1 %fz637 to i64
  %cz645 = zext i1 %fc638 to i64
  %vz646 = zext i1 %fv642 to i64
  %ns647 = shl i64 %nz643, 31
  %zs648 = shl i64 %zz644, 30
  %cs649 = shl i64 %cz645, 29
  %vs650 = shl i64 %vz646, 28
  %nzor651 = or i64 %ns647, %zs648
  %cvor652 = or i64 %cs649, %vs650
  %nzcv653 = or i64 %nzor651, %cvor652
  %wp654 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv653, ptr %wp654, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ea0 word 0xcb0903e8
  %r655.p = getelementptr inbounds i8, ptr %c, i64 72
  %r655 = load i64, ptr %r655.p, align 8, !alias.scope !3, !noalias !4
  %t656 = sub i64 0, %r655
  %wp657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t656, ptr %wp657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ea4 word 0xcb09032a
  %r658.p = getelementptr inbounds i8, ptr %c, i64 200
  %r658 = load i64, ptr %r658.p, align 8, !alias.scope !3, !noalias !4
  %r659.p = getelementptr inbounds i8, ptr %c, i64 72
  %r659 = load i64, ptr %r659.p, align 8, !alias.scope !3, !noalias !4
  %t660 = sub i64 %r658, %r659
  %wp661 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t660, ptr %wp661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ea8 word 0xcb09016b
  %r662.p = getelementptr inbounds i8, ptr %c, i64 88
  %r662 = load i64, ptr %r662.p, align 8, !alias.scope !3, !noalias !4
  %r663.p = getelementptr inbounds i8, ptr %c, i64 72
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %t664 = sub i64 %r662, %r663
  %wp665 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t664, ptr %wp665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079eac word 0x54000ec8
  %r666.p = getelementptr inbounds i8, ptr %c, i64 272
  %r666 = load i64, ptr %r666.p, align 8, !alias.scope !3, !noalias !4
  %fsh668 = lshr i64 %r666, 29
  %ftr669 = trunc i64 %fsh668 to i1
  %fsh670 = lshr i64 %r666, 30
  %ftr671 = trunc i64 %fsh670 to i1
  %fnz672 = xor i1 %ftr671, true
  %cond667 = and i1 %ftr669, %fnz672
  br i1 %cond667, label %L_80007a084, label %L_800079eb0_ft
L_800079eb0_ft:
  ; @pc 0x800079eb0 word 0xeb0a017f
  %r673.p = getelementptr inbounds i8, ptr %c, i64 88
  %r673 = load i64, ptr %r673.p, align 8, !alias.scope !3, !noalias !4
  %r674.p = getelementptr inbounds i8, ptr %c, i64 80
  %r674 = load i64, ptr %r674.p, align 8, !alias.scope !3, !noalias !4
  %t675 = sub i64 %r673, %r674
  %fn676 = icmp slt i64 %t675, 0
  %fz677 = icmp eq i64 %t675, 0
  %fc678 = icmp uge i64 %r673, %r674
  %fx1679 = xor i64 %r673, %r674
  %fx2680 = xor i64 %r673, %t675
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
  ; @pc 0x800079eb4 word 0x54004960
  %r695.p = getelementptr inbounds i8, ptr %c, i64 272
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %fsh697 = lshr i64 %r695, 30
  %cond696 = trunc i64 %fsh697 to i1
  br i1 %cond696, label %L_80007a7e0, label %L_800079eb8_ft
L_800079eb8_ft:
  ; @pc 0x800079eb8 word 0x3942b26c
  %r698.p = getelementptr inbounds i8, ptr %c, i64 152
  %r698 = load i64, ptr %r698.p, align 8, !alias.scope !3, !noalias !4
  %t699 = add i64 %r698, 172
  %gmp700 = inttoptr i64 %t699 to ptr
  %gml701 = load i8, ptr %gmp700, align 1, !alias.scope !4, !noalias !3
  %c702 = zext i8 %gml701 to i64
  %wp703 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c702, ptr %wp703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ebc word 0x3500278c
  %r704.p = getelementptr inbounds i8, ptr %c, i64 96
  %r704 = load i64, ptr %r704.p, align 8, !alias.scope !3, !noalias !4
  %c705 = trunc i64 %r704 to i32
  %cmp706 = icmp ne i32 %c705, 0
  br i1 %cmp706, label %L_80007a3ac, label %L_800079ec0_ft
L_800079ec0_ft:
  ; @pc 0x800079ec0 word 0xaa0b03e0
  %r707.p = getelementptr inbounds i8, ptr %c, i64 88
  %r707 = load i64, ptr %r707.p, align 8, !alias.scope !3, !noalias !4
  %t708 = or i64 0, %r707
  %wp709 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t708, ptr %wp709, align 8, !alias.scope !3, !noalias !4
  br label %L_800079ec4
L_800079ed0_ft:
  ; @pc 0x800079ed0 word 0x8b09000b
  %r740.p = getelementptr inbounds i8, ptr %c, i64 0
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %r741.p = getelementptr inbounds i8, ptr %c, i64 72
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %t742 = add i64 %r740, %r741
  %wp743 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t742, ptr %wp743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ed4 word 0xf940056b
  %r744.p = getelementptr inbounds i8, ptr %c, i64 88
  %r744 = load i64, ptr %r744.p, align 8, !alias.scope !3, !noalias !4
  %t745 = add i64 %r744, 8
  %gmp746 = inttoptr i64 %t745 to ptr
  %gml747 = load i64, ptr %gmp746, align 1, !alias.scope !4, !noalias !3
  %wp748 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml747, ptr %wp748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079ed8 word 0x8b080160
  %r749.p = getelementptr inbounds i8, ptr %c, i64 88
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %r750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r750 = load i64, ptr %r750.p, align 8, !alias.scope !3, !noalias !4
  %t751 = add i64 %r749, %r750
  %wp752 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t751, ptr %wp752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079edc word 0xeb0a001f
  %r753.p = getelementptr inbounds i8, ptr %c, i64 0
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %r754.p = getelementptr inbounds i8, ptr %c, i64 80
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
  ; @pc 0x800079ee0 word 0x54ffff21
  %r775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %fsh777 = lshr i64 %r775, 30
  %ftr778 = trunc i64 %fsh777 to i1
  %cond776 = xor i1 %ftr778, true
  br i1 %cond776, label %L_800079ec4, label %L_800079ee4_ft
L_800079ee4_ft:
  ; @pc 0x800079ee4 word 0x1400023f
  br label %L_80007a7e0
L_800079f14_ft:
  ; @pc 0x800079f14 word 0xb940aa68
  %r879.p = getelementptr inbounds i8, ptr %c, i64 152
  %r879 = load i64, ptr %r879.p, align 8, !alias.scope !3, !noalias !4
  %t880 = add i64 %r879, 168
  %gmp881 = inttoptr i64 %t880 to ptr
  %gml882 = load i32, ptr %gmp881, align 1, !alias.scope !4, !noalias !3
  %c883 = zext i32 %gml882 to i64
  %wp884 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f18 word 0x37003228
  %r885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %t886 = and i64 %r885, 1
  %cmp887 = icmp ne i64 %t886, 0
  br i1 %cmp887, label %L_80007a55c, label %L_800079f1c_ft
L_800079f1c_ft:
  ; @pc 0x800079f1c word 0xaa1f03f6
  %t888 = or i64 0, 0
  %wp889 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t888, ptr %wp889, align 8, !alias.scope !3, !noalias !4
  br label %L_800079f20
L_800079f2c_ft:
  ; @pc 0x800079f2c word 0xf9405a69
  %r907.p = getelementptr inbounds i8, ptr %c, i64 152
  %r907 = load i64, ptr %r907.p, align 8, !alias.scope !3, !noalias !4
  %t908 = add i64 %r907, 176
  %gmp909 = inttoptr i64 %t908 to ptr
  %gml910 = load i64, ptr %gmp909, align 1, !alias.scope !4, !noalias !3
  %wp911 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml910, ptr %wp911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f30 word 0x5100050a
  %r912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %c913 = trunc i64 %r912 to i32
  %t914 = sub i32 %c913, 1
  %c915 = zext i32 %t914 to i64
  %wp916 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c915, ptr %wp916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f34 word 0x8b0a0129
  %r917.p = getelementptr inbounds i8, ptr %c, i64 72
  %r917 = load i64, ptr %r917.p, align 8, !alias.scope !3, !noalias !4
  %r918.p = getelementptr inbounds i8, ptr %c, i64 80
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %t919 = add i64 %r917, %r918
  %wp920 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t919, ptr %wp920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f38 word 0x8a2a0138
  %r921.p = getelementptr inbounds i8, ptr %c, i64 80
  %r921 = load i64, ptr %r921.p, align 8, !alias.scope !3, !noalias !4
  %t922 = xor i64 %r921, -1
  %r923.p = getelementptr inbounds i8, ptr %c, i64 72
  %r923 = load i64, ptr %r923.p, align 8, !alias.scope !3, !noalias !4
  %t924 = and i64 %r923, %t922
  %wp925 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t924, ptr %wp925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f3c word 0x8b170309
  %r926.p = getelementptr inbounds i8, ptr %c, i64 192
  %r926 = load i64, ptr %r926.p, align 8, !alias.scope !3, !noalias !4
  %r927.p = getelementptr inbounds i8, ptr %c, i64 184
  %r927 = load i64, ptr %r927.p, align 8, !alias.scope !3, !noalias !4
  %t928 = add i64 %r926, %r927
  %wp929 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t928, ptr %wp929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f40 word 0xeb18013f
  %r930.p = getelementptr inbounds i8, ptr %c, i64 72
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %r931.p = getelementptr inbounds i8, ptr %c, i64 192
  %r931 = load i64, ptr %r931.p, align 8, !alias.scope !3, !noalias !4
  %t932 = sub i64 %r930, %r931
  %fn933 = icmp slt i64 %t932, 0
  %fz934 = icmp eq i64 %t932, 0
  %fc935 = icmp uge i64 %r930, %r931
  %fx1936 = xor i64 %r930, %r931
  %fx2937 = xor i64 %r930, %t932
  %fva938 = and i64 %fx1936, %fx2937
  %fv939 = icmp slt i64 %fva938, 0
  %nz940 = zext i1 %fn933 to i64
  %zz941 = zext i1 %fz934 to i64
  %cz942 = zext i1 %fc935 to i64
  %vz943 = zext i1 %fv939 to i64
  %ns944 = shl i64 %nz940, 31
  %zs945 = shl i64 %zz941, 30
  %cs946 = shl i64 %cz942, 29
  %vs947 = shl i64 %vz943, 28
  %nzor948 = or i64 %ns944, %zs945
  %cvor949 = or i64 %cs946, %vs947
  %nzcv950 = or i64 %nzor948, %cvor949
  %wp951 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv950, ptr %wp951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f44 word 0x54001f03
  %r952.p = getelementptr inbounds i8, ptr %c, i64 272
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %fsh954 = lshr i64 %r952, 29
  %ftr955 = trunc i64 %fsh954 to i1
  %cond953 = xor i1 %ftr955, true
  br i1 %cond953, label %L_80007a324, label %L_800079f48_ft
L_800079f48_ft:
  ; @pc 0x800079f48 word 0xf9405e6a
  %r956.p = getelementptr inbounds i8, ptr %c, i64 152
  %r956 = load i64, ptr %r956.p, align 8, !alias.scope !3, !noalias !4
  %t957 = add i64 %r956, 184
  %gmp958 = inttoptr i64 %t957 to ptr
  %gml959 = load i64, ptr %gmp958, align 1, !alias.scope !4, !noalias !3
  %wp960 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml959, ptr %wp960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f4c word 0xeb09015f
  %r961.p = getelementptr inbounds i8, ptr %c, i64 80
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %r962.p = getelementptr inbounds i8, ptr %c, i64 72
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %t963 = sub i64 %r961, %r962
  %fn964 = icmp slt i64 %t963, 0
  %fz965 = icmp eq i64 %t963, 0
  %fc966 = icmp uge i64 %r961, %r962
  %fx1967 = xor i64 %r961, %r962
  %fx2968 = xor i64 %r961, %t963
  %fva969 = and i64 %fx1967, %fx2968
  %fv970 = icmp slt i64 %fva969, 0
  %nz971 = zext i1 %fn964 to i64
  %zz972 = zext i1 %fz965 to i64
  %cz973 = zext i1 %fc966 to i64
  %vz974 = zext i1 %fv970 to i64
  %ns975 = shl i64 %nz971, 31
  %zs976 = shl i64 %zz972, 30
  %cs977 = shl i64 %cz973, 29
  %vs978 = shl i64 %vz974, 28
  %nzor979 = or i64 %ns975, %zs976
  %cvor980 = or i64 %cs977, %vs978
  %nzcv981 = or i64 %nzor979, %cvor980
  %wp982 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv981, ptr %wp982, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f50 word 0x54001ea3
  %r983.p = getelementptr inbounds i8, ptr %c, i64 272
  %r983 = load i64, ptr %r983.p, align 8, !alias.scope !3, !noalias !4
  %fsh985 = lshr i64 %r983, 29
  %ftr986 = trunc i64 %fsh985 to i1
  %cond984 = xor i1 %ftr986, true
  br i1 %cond984, label %L_80007a324, label %L_800079f54_ft
L_800079f54_ft:
  ; @pc 0x800079f54 word 0xf9005a69
  %r987.p = getelementptr inbounds i8, ptr %c, i64 152
  %r987 = load i64, ptr %r987.p, align 8, !alias.scope !3, !noalias !4
  %t988 = add i64 %r987, 176
  %r989.p = getelementptr inbounds i8, ptr %c, i64 72
  %r989 = load i64, ptr %r989.p, align 8, !alias.scope !3, !noalias !4
  %gmp990 = inttoptr i64 %t988 to ptr
  store i64 %r989, ptr %gmp990, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x800079f58 word 0xb4fff4f6
  %r991.p = getelementptr inbounds i8, ptr %c, i64 176
  %r991 = load i64, ptr %r991.p, align 8, !alias.scope !3, !noalias !4
  %cmp992 = icmp eq i64 %r991, 0
  br i1 %cmp992, label %L_800079df4, label %L_800079f5c_ft
L_800079f5c_ft:
  ; @pc 0x800079f5c word 0x14000165
  br label %L_80007a4f0
L_800079f98_ft:
  ; @pc 0x800079f98 word 0xf9400900
  %r1066.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1066 = load i64, ptr %r1066.p, align 8, !alias.scope !3, !noalias !4
  %t1067 = add i64 %r1066, 16
  %gmp1068 = inttoptr i64 %t1067 to ptr
  %gml1069 = load i64, ptr %gmp1068, align 1, !alias.scope !4, !noalias !3
  %wp1070 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1069, ptr %wp1070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079f9c word 0xb5001ae0
  %r1071.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1071 = load i64, ptr %r1071.p, align 8, !alias.scope !3, !noalias !4
  %cmp1072 = icmp ne i64 %r1071, 0
  br i1 %cmp1072, label %L_80007a2f8, label %L_800079fa0
L_800079fac_ft:
  ; @pc 0x800079fac word 0xf9401e60
  %r1101.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1101 = load i64, ptr %r1101.p, align 8, !alias.scope !3, !noalias !4
  %t1102 = add i64 %r1101, 56
  %gmp1103 = inttoptr i64 %t1102 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fb0 word 0xb4fff200
  %r1106.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1106 = load i64, ptr %r1106.p, align 8, !alias.scope !3, !noalias !4
  %cmp1107 = icmp eq i64 %r1106, 0
  br i1 %cmp1107, label %L_800079df0, label %L_800079fb4_ft
L_800079fb4_ft:
  ; @pc 0x800079fb4 word 0x7100275f
  %r1108.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1108 = load i64, ptr %r1108.p, align 8, !alias.scope !3, !noalias !4
  %c1109 = trunc i64 %r1108 to i32
  %t1110 = sub i32 %c1109, 9
  %fn1111 = icmp slt i32 %t1110, 0
  %fz1112 = icmp eq i32 %t1110, 0
  %fc1113 = icmp uge i32 %c1109, 9
  %fx11114 = xor i32 %c1109, 9
  %fx21115 = xor i32 %c1109, %t1110
  %fva1116 = and i32 %fx11114, %fx21115
  %fv1117 = icmp slt i32 %fva1116, 0
  %nz1118 = zext i1 %fn1111 to i64
  %zz1119 = zext i1 %fz1112 to i64
  %cz1120 = zext i1 %fc1113 to i64
  %vz1121 = zext i1 %fv1117 to i64
  %ns1122 = shl i64 %nz1118, 31
  %zs1123 = shl i64 %zz1119, 30
  %cs1124 = shl i64 %cz1120, 29
  %vs1125 = shl i64 %vz1121, 28
  %nzor1126 = or i64 %ns1122, %zs1123
  %cvor1127 = or i64 %cs1124, %vs1125
  %nzcv1128 = or i64 %nzor1126, %cvor1127
  %wp1129 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1128, ptr %wp1129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fb8 word 0x1a9a33f8
  %r1130.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1130 = load i64, ptr %r1130.p, align 8, !alias.scope !3, !noalias !4
  %c1131 = trunc i64 %r1130 to i32
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %fsh1134 = lshr i64 %r1132, 29
  %ftr1135 = trunc i64 %fsh1134 to i1
  %cond1133 = xor i1 %ftr1135, true
  %sel1136 = select i1 %cond1133, i32 0, i32 %c1131
  %c1137 = zext i32 %sel1136 to i64
  %wp1138 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1137, ptr %wp1138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fbc word 0xaa1303fa
  %r1139.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1139 = load i64, ptr %r1139.p, align 8, !alias.scope !3, !noalias !4
  %t1140 = or i64 0, %r1139
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1140, ptr %wp1141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fc0 word 0xf84c0f48
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %t1143 = add i64 %r1142, 192
  %gmp1144 = inttoptr i64 %t1143 to ptr
  %gml1145 = load i64, ptr %gmp1144, align 1, !alias.scope !4, !noalias !3
  %wp1146 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1143, ptr %wp1146, align 8, !alias.scope !3, !noalias !4
  %wp1147 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1145, ptr %wp1147, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fc4 word 0xb85e8349
  %r1148.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1148 = load i64, ptr %r1148.p, align 8, !alias.scope !3, !noalias !4
  %t1149 = add i64 %r1148, -24
  %gmp1150 = inttoptr i64 %t1149 to ptr
  %gml1151 = load i32, ptr %gmp1150, align 1, !alias.scope !4, !noalias !3
  %c1152 = zext i32 %gml1151 to i64
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1152, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x800079fc8 word 0x37180049
  %r1154.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1154 = load i64, ptr %r1154.p, align 8, !alias.scope !3, !noalias !4
  %t1155 = and i64 %r1154, 8
  %cmp1156 = icmp ne i64 %t1155, 0
  br i1 %cmp1156, label %L_800079fd0, label %L_800079fcc_ft
L_800079fcc_ft:
  ; @pc 0x800079fcc word 0xb40000c8
  %r1157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1157 = load i64, ptr %r1157.p, align 8, !alias.scope !3, !noalias !4
  %cmp1158 = icmp eq i64 %r1157, 0
  br i1 %cmp1158, label %L_800079fe4, label %L_800079fd0
L_80007a010_ft:
  ; @pc 0x80007a010 word 0xaa0003f8
  %r1253.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1253 = load i64, ptr %r1253.p, align 8, !alias.scope !3, !noalias !4
  %t1254 = or i64 0, %r1253
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1254, ptr %wp1255, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a014
L_80007a01c_ft:
  ; @pc 0x80007a01c word 0xaa1703e0
  %r1265.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1265 = load i64, ptr %r1265.p, align 8, !alias.scope !3, !noalias !4
  %t1266 = or i64 0, %r1265
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1266, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a020 word 0x94aca810
  %wp1268 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238116, ptr %wp1268, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4060(ptr %c)
  br label %L_80007a024
L_80007a078_ft:
  ; @pc 0x80007a078 word 0xaa1703e0
  %r1395.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1395 = load i64, ptr %r1395.p, align 8, !alias.scope !3, !noalias !4
  %t1396 = or i64 0, %r1395
  %wp1397 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1396, ptr %wp1397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a07c word 0x94aca7fd
  %wp1398 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238208, ptr %wp1398, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba4070(ptr %c)
  ; @pc 0x80007a080 word 0x17ffff5c
  br label %L_800079df0
L_80007a08c_ft:
  ; @pc 0x80007a08c word 0x3942b26e
  %r1424.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1424 = load i64, ptr %r1424.p, align 8, !alias.scope !3, !noalias !4
  %t1425 = add i64 %r1424, 172
  %gmp1426 = inttoptr i64 %t1425 to ptr
  %gml1427 = load i8, ptr %gmp1426, align 1, !alias.scope !4, !noalias !3
  %c1428 = zext i8 %gml1427 to i64
  %wp1429 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1428, ptr %wp1429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a090 word 0x5100058c
  %r1430.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1430 = load i64, ptr %r1430.p, align 8, !alias.scope !3, !noalias !4
  %c1431 = trunc i64 %r1430 to i32
  %t1432 = sub i32 %c1431, 1
  %c1433 = zext i32 %t1432 to i64
  %wp1434 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1433, ptr %wp1434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a094 word 0xaa2c03ed
  %r1435.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1435 = load i64, ptr %r1435.p, align 8, !alias.scope !3, !noalias !4
  %t1436 = xor i64 %r1435, -1
  %t1437 = or i64 0, %t1436
  %wp1438 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1437, ptr %wp1438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a098 word 0x35002eae
  %r1439.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1439 = load i64, ptr %r1439.p, align 8, !alias.scope !3, !noalias !4
  %c1440 = trunc i64 %r1439 to i32
  %cmp1441 = icmp ne i32 %c1440, 0
  br i1 %cmp1441, label %L_80007a66c, label %L_80007a09c_ft
L_80007a09c_ft:
  ; @pc 0x80007a09c word 0xaa0b03e0
  %r1442.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1442 = load i64, ptr %r1442.p, align 8, !alias.scope !3, !noalias !4
  %t1443 = or i64 0, %r1442
  %wp1444 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1443, ptr %wp1444, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a0a0
L_80007a0ac_ft:
  ; @pc 0x80007a0ac word 0x7940240e
  %r1476.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1476 = load i64, ptr %r1476.p, align 8, !alias.scope !3, !noalias !4
  %t1477 = add i64 %r1476, 18
  %gmp1478 = inttoptr i64 %t1477 to ptr
  %gml1479 = load i16, ptr %gmp1478, align 1, !alias.scope !4, !noalias !3
  %c1480 = zext i16 %gml1479 to i64
  %wp1481 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1480, ptr %wp1481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0b0 word 0x8b0e000f
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %r1483.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1483 = load i64, ptr %r1483.p, align 8, !alias.scope !3, !noalias !4
  %t1484 = add i64 %r1482, %r1483
  %wp1485 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1484, ptr %wp1485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0b4 word 0x910081ef
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1486, 32
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1487, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0b8 word 0x8b0c01f0
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %t1491 = add i64 %r1489, %r1490
  %wp1492 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1491, ptr %wp1492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0bc word 0xcb0f02ef
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %r1494.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1494 = load i64, ptr %r1494.p, align 8, !alias.scope !3, !noalias !4
  %t1495 = sub i64 %r1493, %r1494
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1495, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0c0 word 0x8a0d0210
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %r1498.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1498 = load i64, ptr %r1498.p, align 8, !alias.scope !3, !noalias !4
  %t1499 = and i64 %r1498, %r1497
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0c4 word 0x8b1001ef
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %r1502.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1502 = load i64, ptr %r1502.p, align 8, !alias.scope !3, !noalias !4
  %t1503 = add i64 %r1501, %r1502
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1503, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0c8 word 0xeb0f017f
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %t1507 = sub i64 %r1505, %r1506
  %fn1508 = icmp slt i64 %t1507, 0
  %fz1509 = icmp eq i64 %t1507, 0
  %fc1510 = icmp uge i64 %r1505, %r1506
  %fx11511 = xor i64 %r1505, %r1506
  %fx21512 = xor i64 %r1505, %t1507
  %fva1513 = and i64 %fx11511, %fx21512
  %fv1514 = icmp slt i64 %fva1513, 0
  %nz1515 = zext i1 %fn1508 to i64
  %zz1516 = zext i1 %fz1509 to i64
  %cz1517 = zext i1 %fc1510 to i64
  %vz1518 = zext i1 %fv1514 to i64
  %ns1519 = shl i64 %nz1515, 31
  %zs1520 = shl i64 %zz1516, 30
  %cs1521 = shl i64 %cz1517, 29
  %vs1522 = shl i64 %vz1518, 28
  %nzor1523 = or i64 %ns1519, %zs1520
  %cvor1524 = or i64 %cs1521, %vs1522
  %nzcv1525 = or i64 %nzor1523, %cvor1524
  %wp1526 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1525, ptr %wp1526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a0cc word 0x540028a3
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %fsh1529 = lshr i64 %r1527, 29
  %ftr1530 = trunc i64 %fsh1529 to i1
  %cond1528 = xor i1 %ftr1530, true
  br i1 %cond1528, label %L_80007a5e0, label %L_80007a0d0
L_80007a104_ft:
  ; @pc 0x80007a104 word 0x72003d1f
  %r1619.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1619 = load i64, ptr %r1619.p, align 8, !alias.scope !3, !noalias !4
  %c1620 = trunc i64 %r1619 to i32
  %t1621 = and i32 %c1620, 65535
  %fn1622 = icmp slt i32 %t1621, 0
  %fz1623 = icmp eq i32 %t1621, 0
  %nz1624 = zext i1 %fn1622 to i64
  %zz1625 = zext i1 %fz1623 to i64
  %ns1626 = shl i64 %nz1624, 31
  %zs1627 = shl i64 %zz1625, 30
  %nzcv1628 = or i64 %ns1626, %zs1627
  %wp1629 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1628, ptr %wp1629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a108 word 0x79002408
  %r1630.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1630 = load i64, ptr %r1630.p, align 8, !alias.scope !3, !noalias !4
  %t1631 = add i64 %r1630, 18
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %c1633 = trunc i64 %r1632 to i32
  %c1634 = trunc i32 %c1633 to i16
  %gmp1635 = inttoptr i64 %t1631 to ptr
  store i16 %c1634, ptr %gmp1635, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a10c word 0x54000080
  %r1636.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1636 = load i64, ptr %r1636.p, align 8, !alias.scope !3, !noalias !4
  %fsh1638 = lshr i64 %r1636, 30
  %cond1637 = trunc i64 %fsh1638 to i1
  br i1 %cond1637, label %L_80007a11c, label %L_80007a110_ft
L_80007a110_ft:
  ; @pc 0x80007a110 word 0x8b090108
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %r1640.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1640 = load i64, ptr %r1640.p, align 8, !alias.scope !3, !noalias !4
  %t1641 = add i64 %r1639, %r1640
  %wp1642 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1641, ptr %wp1642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a114 word 0xb2400009
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %t1644 = or i64 %r1643, 1
  %wp1645 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1644, ptr %wp1645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a118 word 0xf81f8109
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %t1647 = add i64 %r1646, -8
  %r1648.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1648 = load i64, ptr %r1648.p, align 8, !alias.scope !3, !noalias !4
  %gmp1649 = inttoptr i64 %t1647 to ptr
  store i64 %r1648, ptr %gmp1649, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a11c
L_80007a130_ft:
  ; @pc 0x80007a130 word 0xf940050a
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %t1671 = add i64 %r1670, 8
  %gmp1672 = inttoptr i64 %t1671 to ptr
  %gml1673 = load i64, ptr %gmp1672, align 1, !alias.scope !4, !noalias !3
  %wp1674 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1673, ptr %wp1674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a134 word 0xf900052a
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %t1676 = add i64 %r1675, 8
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %gmp1678 = inttoptr i64 %t1676 to ptr
  store i64 %r1677, ptr %gmp1678, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a138
L_80007a140_ft:
  ; @pc 0x80007a140 word 0xf940010a
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %gmp1687 = inttoptr i64 %r1686 to ptr
  %gml1688 = load i64, ptr %gmp1687, align 1, !alias.scope !4, !noalias !3
  %wp1689 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1688, ptr %wp1689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a144 word 0xf900012a
  %r1690.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1690 = load i64, ptr %r1690.p, align 8, !alias.scope !3, !noalias !4
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %gmp1692 = inttoptr i64 %r1690 to ptr
  store i64 %r1691, ptr %gmp1692, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a148
L_80007a174_ft:
  ; @pc 0x80007a174 word 0xf9400109
  %r1762.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1762 = load i64, ptr %r1762.p, align 8, !alias.scope !3, !noalias !4
  %gmp1763 = inttoptr i64 %r1762 to ptr
  %gml1764 = load i64, ptr %gmp1763, align 1, !alias.scope !4, !noalias !3
  %wp1765 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1764, ptr %wp1765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a178 word 0xf9000101
  %r1766.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1766 = load i64, ptr %r1766.p, align 8, !alias.scope !3, !noalias !4
  %r1767.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1767 = load i64, ptr %r1767.p, align 8, !alias.scope !3, !noalias !4
  %gmp1768 = inttoptr i64 %r1766 to ptr
  store i64 %r1767, ptr %gmp1768, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a17c word 0xa9002029
  %r1769.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1769 = load i64, ptr %r1769.p, align 8, !alias.scope !3, !noalias !4
  %t1770 = add i64 %r1769, 8
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %gmp1772 = inttoptr i64 %r1769 to ptr
  store i64 %r1771, ptr %gmp1772, align 1, !alias.scope !4, !noalias !3
  %r1773.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1773 = load i64, ptr %r1773.p, align 8, !alias.scope !3, !noalias !4
  %gmp1774 = inttoptr i64 %t1770 to ptr
  store i64 %r1773, ptr %gmp1774, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a180 word 0xb4000049
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %cmp1776 = icmp eq i64 %r1775, 0
  br i1 %cmp1776, label %L_80007a188, label %L_80007a184_ft
L_80007a184_ft:
  ; @pc 0x80007a184 word 0xf9000521
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %t1778 = add i64 %r1777, 8
  %r1779.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1779 = load i64, ptr %r1779.p, align 8, !alias.scope !3, !noalias !4
  %gmp1780 = inttoptr i64 %t1778 to ptr
  store i64 %r1779, ptr %gmp1780, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a188
L_80007a19c_ft:
  ; @pc 0x80007a19c word 0x79402408
  %r1822.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1822 = load i64, ptr %r1822.p, align 8, !alias.scope !3, !noalias !4
  %t1823 = add i64 %r1822, 18
  %gmp1824 = inttoptr i64 %t1823 to ptr
  %gml1825 = load i16, ptr %gmp1824, align 1, !alias.scope !4, !noalias !3
  %c1826 = zext i16 %gml1825 to i64
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1a0 word 0x8b0002e9
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %t1830 = add i64 %r1828, %r1829
  %wp1831 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1830, ptr %wp1831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1a4 word 0x8b080128
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %r1833.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1833 = load i64, ptr %r1833.p, align 8, !alias.scope !3, !noalias !4
  %t1834 = add i64 %r1832, %r1833
  %wp1835 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1834, ptr %wp1835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1a8 word 0x140000b9
  br label %L_80007a48c
L_80007a1c0_ft:
  ; @pc 0x80007a1c0 word 0x94040a02
  %wp1873 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238532, ptr %wp1873, align 8, !alias.scope !3, !noalias !4
  call void @f_80017c9c8(ptr %c)
  br label %L_80007a1c4
L_80007a1c8_ft:
  ; @pc 0x80007a1c8 word 0x14000186
  br label %L_80007a7e0
L_80007a1d8_ft:
  ; @pc 0x80007a1d8 word 0x9100219a
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %t1887 = add i64 %r1886, 8
  %wp1888 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t1887, ptr %wp1888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1dc word 0x17ffff9a
  br label %L_80007a044
L_80007a1f4_ft:
  ; @pc 0x80007a1f4 word 0xb2607d08
  %r1929.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1929 = load i64, ptr %r1929.p, align 8, !alias.scope !3, !noalias !4
  %t1930 = or i64 %r1929, -4294967296
  %wp1931 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1930, ptr %wp1931, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1f8 word 0x8a080158
  %r1932.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1932 = load i64, ptr %r1932.p, align 8, !alias.scope !3, !noalias !4
  %r1933.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1933 = load i64, ptr %r1933.p, align 8, !alias.scope !3, !noalias !4
  %t1934 = and i64 %r1933, %r1932
  %wp1935 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t1934, ptr %wp1935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a1fc word 0xf9405a68
  %r1936.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1936 = load i64, ptr %r1936.p, align 8, !alias.scope !3, !noalias !4
  %t1937 = add i64 %r1936, 176
  %gmp1938 = inttoptr i64 %t1937 to ptr
  %gml1939 = load i64, ptr %gmp1938, align 1, !alias.scope !4, !noalias !3
  %wp1940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1939, ptr %wp1940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a200 word 0xeb18011f
  %r1941.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1941 = load i64, ptr %r1941.p, align 8, !alias.scope !3, !noalias !4
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %t1943 = sub i64 %r1941, %r1942
  %fn1944 = icmp slt i64 %t1943, 0
  %fz1945 = icmp eq i64 %t1943, 0
  %fc1946 = icmp uge i64 %r1941, %r1942
  %fx11947 = xor i64 %r1941, %r1942
  %fx21948 = xor i64 %r1941, %t1943
  %fva1949 = and i64 %fx11947, %fx21948
  %fv1950 = icmp slt i64 %fva1949, 0
  %nz1951 = zext i1 %fn1944 to i64
  %zz1952 = zext i1 %fz1945 to i64
  %cz1953 = zext i1 %fc1946 to i64
  %vz1954 = zext i1 %fv1950 to i64
  %ns1955 = shl i64 %nz1951, 31
  %zs1956 = shl i64 %zz1952, 30
  %cs1957 = shl i64 %cz1953, 29
  %vs1958 = shl i64 %vz1954, 28
  %nzor1959 = or i64 %ns1955, %zs1956
  %cvor1960 = or i64 %cs1957, %vs1958
  %nzcv1961 = or i64 %nzor1959, %cvor1960
  %wp1962 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1961, ptr %wp1962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a204 word 0x54002f88
  %r1963.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1963 = load i64, ptr %r1963.p, align 8, !alias.scope !3, !noalias !4
  %fsh1965 = lshr i64 %r1963, 29
  %ftr1966 = trunc i64 %fsh1965 to i1
  %fsh1967 = lshr i64 %r1963, 30
  %ftr1968 = trunc i64 %fsh1967 to i1
  %fnz1969 = xor i1 %ftr1968, true
  %cond1964 = and i1 %ftr1966, %fnz1969
  br i1 %cond1964, label %L_80007a7f4, label %L_80007a208_ft
L_80007a208_ft:
  ; @pc 0x80007a208 word 0xf9005e78
  %r1970.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1970 = load i64, ptr %r1970.p, align 8, !alias.scope !3, !noalias !4
  %t1971 = add i64 %r1970, 184
  %r1972.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1972 = load i64, ptr %r1972.p, align 8, !alias.scope !3, !noalias !4
  %gmp1973 = inttoptr i64 %t1971 to ptr
  store i64 %r1972, ptr %gmp1973, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a20c word 0xb4ffdf56
  %r1974.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1974 = load i64, ptr %r1974.p, align 8, !alias.scope !3, !noalias !4
  %cmp1975 = icmp eq i64 %r1974, 0
  br i1 %cmp1975, label %L_800079df4, label %L_80007a210_ft
L_80007a210_ft:
  ; @pc 0x80007a210 word 0x140000b8
  br label %L_80007a4f0
L_80007a268_ft:
  ; @pc 0x80007a268 word 0x1400004f
  br label %L_80007a3a4
L_80007a270_ft:
  ; @pc 0x80007a270 word 0xf9400900
  %r2101.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2101 = load i64, ptr %r2101.p, align 8, !alias.scope !3, !noalias !4
  %t2102 = add i64 %r2101, 16
  %gmp2103 = inttoptr i64 %t2102 to ptr
  %gml2104 = load i64, ptr %gmp2103, align 1, !alias.scope !4, !noalias !3
  %wp2105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2104, ptr %wp2105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a274 word 0xb4000120
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %cmp2107 = icmp eq i64 %r2106, 0
  br i1 %cmp2107, label %L_80007a298, label %L_80007a278_ft
L_80007a278_ft:
  ; @pc 0x80007a278 word 0xa900d7f3
  %r2108.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2108 = load i64, ptr %r2108.p, align 8, !alias.scope !3, !noalias !4
  %t2109 = add i64 %r2108, 8
  %t2110 = add i64 %t2109, 8
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %gmp2112 = inttoptr i64 %t2109 to ptr
  store i64 %r2111, ptr %gmp2112, align 1, !alias.scope !4, !noalias !3
  %r2113.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2113 = load i64, ptr %r2113.p, align 8, !alias.scope !3, !noalias !4
  %gmp2114 = inttoptr i64 %t2110 to ptr
  store i64 %r2113, ptr %gmp2114, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a27c word 0x910023e1
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %t2116 = add i64 %r2115, 8
  %wp2117 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2116, ptr %wp2117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a280 word 0xb9001bf4
  %r2118.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2118 = load i64, ptr %r2118.p, align 8, !alias.scope !3, !noalias !4
  %t2119 = add i64 %r2118, 24
  %r2120.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2120 = load i64, ptr %r2120.p, align 8, !alias.scope !3, !noalias !4
  %c2121 = trunc i64 %r2120 to i32
  %gmp2122 = inttoptr i64 %t2119 to ptr
  store i32 %c2121, ptr %gmp2122, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a284 word 0xf90013f9
  %r2123.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2123 = load i64, ptr %r2123.p, align 8, !alias.scope !3, !noalias !4
  %t2124 = add i64 %r2123, 32
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %gmp2126 = inttoptr i64 %t2124 to ptr
  store i64 %r2125, ptr %gmp2126, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a288 word 0xb9002bf4
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %t2128 = add i64 %r2127, 40
  %r2129.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2129 = load i64, ptr %r2129.p, align 8, !alias.scope !3, !noalias !4
  %c2130 = trunc i64 %r2129 to i32
  %gmp2131 = inttoptr i64 %t2128 to ptr
  store i32 %c2130, ptr %gmp2131, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a28c word 0xf9400008
  %r2132.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2132 = load i64, ptr %r2132.p, align 8, !alias.scope !3, !noalias !4
  %gmp2133 = inttoptr i64 %r2132 to ptr
  %gml2134 = load i64, ptr %gmp2133, align 1, !alias.scope !4, !noalias !3
  %wp2135 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2134, ptr %wp2135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a290 word 0xf9400108
  %r2136.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2136 = load i64, ptr %r2136.p, align 8, !alias.scope !3, !noalias !4
  %gmp2137 = inttoptr i64 %r2136 to ptr
  %gml2138 = load i64, ptr %gmp2137, align 1, !alias.scope !4, !noalias !3
  %wp2139 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2138, ptr %wp2139, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a294 word 0xd63f0100
  %r2140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2140 = load i64, ptr %r2140.p, align 8, !alias.scope !3, !noalias !4
  %fp2141 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2140, ptr %fp2141, align 8, !alias.scope !3, !noalias !4
  %wp2142 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360238744, ptr %wp2142, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  br label %L_80007a298
L_80007a2c4_ft:
  ; @pc 0x80007a2c4 word 0xb2607d29
  %r2192.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2192 = load i64, ptr %r2192.p, align 8, !alias.scope !3, !noalias !4
  %t2193 = or i64 %r2192, -4294967296
  %wp2194 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2193, ptr %wp2194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2c8 word 0x8a090178
  %r2195.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2195 = load i64, ptr %r2195.p, align 8, !alias.scope !3, !noalias !4
  %r2196.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2196 = load i64, ptr %r2196.p, align 8, !alias.scope !3, !noalias !4
  %t2197 = and i64 %r2196, %r2195
  %wp2198 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t2197, ptr %wp2198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2cc word 0xf9405a69
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %t2200 = add i64 %r2199, 176
  %gmp2201 = inttoptr i64 %t2200 to ptr
  %gml2202 = load i64, ptr %gmp2201, align 1, !alias.scope !4, !noalias !3
  %wp2203 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2202, ptr %wp2203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2d0 word 0xeb18013f
  %r2204.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2204 = load i64, ptr %r2204.p, align 8, !alias.scope !3, !noalias !4
  %r2205.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2205 = load i64, ptr %r2205.p, align 8, !alias.scope !3, !noalias !4
  %t2206 = sub i64 %r2204, %r2205
  %fn2207 = icmp slt i64 %t2206, 0
  %fz2208 = icmp eq i64 %t2206, 0
  %fc2209 = icmp uge i64 %r2204, %r2205
  %fx12210 = xor i64 %r2204, %r2205
  %fx22211 = xor i64 %r2204, %t2206
  %fva2212 = and i64 %fx12210, %fx22211
  %fv2213 = icmp slt i64 %fva2212, 0
  %nz2214 = zext i1 %fn2207 to i64
  %zz2215 = zext i1 %fz2208 to i64
  %cz2216 = zext i1 %fc2209 to i64
  %vz2217 = zext i1 %fv2213 to i64
  %ns2218 = shl i64 %nz2214, 31
  %zs2219 = shl i64 %zz2215, 30
  %cs2220 = shl i64 %cz2216, 29
  %vs2221 = shl i64 %vz2217, 28
  %nzor2222 = or i64 %ns2218, %zs2219
  %cvor2223 = or i64 %cs2220, %vs2221
  %nzcv2224 = or i64 %nzor2222, %cvor2223
  %wp2225 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2224, ptr %wp2225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2d4 word 0x54000249
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %fsh2228 = lshr i64 %r2226, 29
  %ftr2229 = trunc i64 %fsh2228 to i1
  %fsh2230 = lshr i64 %r2226, 30
  %ftr2231 = trunc i64 %fsh2230 to i1
  %fnz2232 = xor i1 %ftr2231, true
  %fhi2233 = and i1 %ftr2229, %fnz2232
  %cond2227 = xor i1 %fhi2233, true
  br i1 %cond2227, label %L_80007a31c, label %L_80007a2d8
L_80007a2dc_ft:
  ; @pc 0x80007a2dc word 0xf9400900
  %r2236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2236 = load i64, ptr %r2236.p, align 8, !alias.scope !3, !noalias !4
  %t2237 = add i64 %r2236, 16
  %gmp2238 = inttoptr i64 %t2237 to ptr
  %gml2239 = load i64, ptr %gmp2238, align 1, !alias.scope !4, !noalias !3
  %wp2240 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2239, ptr %wp2240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a2e0 word 0xb4ffe600
  %r2241.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2241 = load i64, ptr %r2241.p, align 8, !alias.scope !3, !noalias !4
  %cmp2242 = icmp eq i64 %r2241, 0
  br i1 %cmp2242, label %L_800079fa0, label %L_80007a2e4_ft
L_80007a2e4_ft:
  ; @pc 0x80007a2e4 word 0xa900d7f3
  %r2243.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2243 = load i64, ptr %r2243.p, align 8, !alias.scope !3, !noalias !4
  %t2244 = add i64 %r2243, 8
  %t2245 = add i64 %t2244, 8
  %r2246.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2246 = load i64, ptr %r2246.p, align 8, !alias.scope !3, !noalias !4
  %gmp2247 = inttoptr i64 %t2244 to ptr
  store i64 %r2246, ptr %gmp2247, align 1, !alias.scope !4, !noalias !3
  %r2248.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2248 = load i64, ptr %r2248.p, align 8, !alias.scope !3, !noalias !4
  %gmp2249 = inttoptr i64 %t2245 to ptr
  store i64 %r2248, ptr %gmp2249, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a2e8 word 0xb9001bf4
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %t2251 = add i64 %r2250, 24
  %r2252.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2252 = load i64, ptr %r2252.p, align 8, !alias.scope !3, !noalias !4
  %c2253 = trunc i64 %r2252 to i32
  %gmp2254 = inttoptr i64 %t2251 to ptr
  store i32 %c2253, ptr %gmp2254, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a2ec word 0xf90013f9
  %r2255.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2255 = load i64, ptr %r2255.p, align 8, !alias.scope !3, !noalias !4
  %t2256 = add i64 %r2255, 32
  %r2257.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2257 = load i64, ptr %r2257.p, align 8, !alias.scope !3, !noalias !4
  %gmp2258 = inttoptr i64 %t2256 to ptr
  store i64 %r2257, ptr %gmp2258, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a2f0 word 0xb9002bea
  %r2259.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2259 = load i64, ptr %r2259.p, align 8, !alias.scope !3, !noalias !4
  %t2260 = add i64 %r2259, 40
  %r2261.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2261 = load i64, ptr %r2261.p, align 8, !alias.scope !3, !noalias !4
  %c2262 = trunc i64 %r2261 to i32
  %gmp2263 = inttoptr i64 %t2260 to ptr
  store i32 %c2262, ptr %gmp2263, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a2f4 word 0x14000005
  br label %L_80007a308
L_80007a328_ft:
  ; @pc 0x80007a328 word 0xf9400b20
  %r2305.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2305 = load i64, ptr %r2305.p, align 8, !alias.scope !3, !noalias !4
  %t2306 = add i64 %r2305, 16
  %gmp2307 = inttoptr i64 %t2306 to ptr
  %gml2308 = load i64, ptr %gmp2307, align 1, !alias.scope !4, !noalias !3
  %wp2309 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2308, ptr %wp2309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a32c word 0xb4000120
  %r2310.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2310 = load i64, ptr %r2310.p, align 8, !alias.scope !3, !noalias !4
  %cmp2311 = icmp eq i64 %r2310, 0
  br i1 %cmp2311, label %L_80007a350, label %L_80007a330_ft
L_80007a330_ft:
  ; @pc 0x80007a330 word 0xa900d7f3
  %r2312.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2312 = load i64, ptr %r2312.p, align 8, !alias.scope !3, !noalias !4
  %t2313 = add i64 %r2312, 8
  %t2314 = add i64 %t2313, 8
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %gmp2316 = inttoptr i64 %t2313 to ptr
  store i64 %r2315, ptr %gmp2316, align 1, !alias.scope !4, !noalias !3
  %r2317.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2317 = load i64, ptr %r2317.p, align 8, !alias.scope !3, !noalias !4
  %gmp2318 = inttoptr i64 %t2314 to ptr
  store i64 %r2317, ptr %gmp2318, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a334 word 0xb9001bf4
  %r2319.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2319 = load i64, ptr %r2319.p, align 8, !alias.scope !3, !noalias !4
  %t2320 = add i64 %r2319, 24
  %r2321.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2321 = load i64, ptr %r2321.p, align 8, !alias.scope !3, !noalias !4
  %c2322 = trunc i64 %r2321 to i32
  %gmp2323 = inttoptr i64 %t2320 to ptr
  store i32 %c2322, ptr %gmp2323, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a338 word 0xf90013f7
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %t2325 = add i64 %r2324, 32
  %r2326.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2326 = load i64, ptr %r2326.p, align 8, !alias.scope !3, !noalias !4
  %gmp2327 = inttoptr i64 %t2325 to ptr
  store i64 %r2326, ptr %gmp2327, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a33c word 0xb9002be8
  %r2328.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2328 = load i64, ptr %r2328.p, align 8, !alias.scope !3, !noalias !4
  %t2329 = add i64 %r2328, 40
  %r2330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2330 = load i64, ptr %r2330.p, align 8, !alias.scope !3, !noalias !4
  %c2331 = trunc i64 %r2330 to i32
  %gmp2332 = inttoptr i64 %t2329 to ptr
  store i32 %c2331, ptr %gmp2332, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a340
L_80007a358_ft:
  ; @pc 0x80007a358 word 0x14000066
  br label %L_80007a4f0
L_80007a360_ft:
  ; @pc 0x80007a360 word 0xf9400b40
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %t2354 = add i64 %r2353, 16
  %gmp2355 = inttoptr i64 %t2354 to ptr
  %gml2356 = load i64, ptr %gmp2355, align 1, !alias.scope !4, !noalias !3
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2356, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a364 word 0xb4000200
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %cmp2359 = icmp eq i64 %r2358, 0
  br i1 %cmp2359, label %L_80007a3a4, label %L_80007a368_ft
L_80007a368_ft:
  ; @pc 0x80007a368 word 0xa900d7f3
  %r2360.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2360 = load i64, ptr %r2360.p, align 8, !alias.scope !3, !noalias !4
  %t2361 = add i64 %r2360, 8
  %t2362 = add i64 %t2361, 8
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %gmp2364 = inttoptr i64 %t2361 to ptr
  store i64 %r2363, ptr %gmp2364, align 1, !alias.scope !4, !noalias !3
  %r2365.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2365 = load i64, ptr %r2365.p, align 8, !alias.scope !3, !noalias !4
  %gmp2366 = inttoptr i64 %t2362 to ptr
  store i64 %r2365, ptr %gmp2366, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a36c word 0xb9001bf4
  %r2367.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2367 = load i64, ptr %r2367.p, align 8, !alias.scope !3, !noalias !4
  %t2368 = add i64 %r2367, 24
  %r2369.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2369 = load i64, ptr %r2369.p, align 8, !alias.scope !3, !noalias !4
  %c2370 = trunc i64 %r2369 to i32
  %gmp2371 = inttoptr i64 %t2368 to ptr
  store i32 %c2370, ptr %gmp2371, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a370 word 0xf90013e8
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %t2373 = add i64 %r2372, 32
  %r2374.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2374 = load i64, ptr %r2374.p, align 8, !alias.scope !3, !noalias !4
  %gmp2375 = inttoptr i64 %t2373 to ptr
  store i64 %r2374, ptr %gmp2375, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a374 word 0x14000007
  br label %L_80007a390
L_80007a37c_ft:
  ; @pc 0x80007a37c word 0xf9400b40
  %r2378.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2378 = load i64, ptr %r2378.p, align 8, !alias.scope !3, !noalias !4
  %t2379 = add i64 %r2378, 16
  %gmp2380 = inttoptr i64 %t2379 to ptr
  %gml2381 = load i64, ptr %gmp2380, align 1, !alias.scope !4, !noalias !3
  %wp2382 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2381, ptr %wp2382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a380 word 0xb4000120
  %r2383.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2383 = load i64, ptr %r2383.p, align 8, !alias.scope !3, !noalias !4
  %cmp2384 = icmp eq i64 %r2383, 0
  br i1 %cmp2384, label %L_80007a3a4, label %L_80007a384
L_80007a3b4_ft:
  ; @pc 0x80007a3b4 word 0xaa1f03e0
  %t2448 = or i64 0, 0
  %wp2449 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2448, ptr %wp2449, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a3b8
L_80007a3c4_ft:
  ; @pc 0x80007a3c4 word 0xb4000080
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %cmp2482 = icmp eq i64 %r2481, 0
  br i1 %cmp2482, label %L_80007a3d4, label %L_80007a3c8_ft
L_80007a3c8_ft:
  ; @pc 0x80007a3c8 word 0xf9400c0d
  %r2483.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2483 = load i64, ptr %r2483.p, align 8, !alias.scope !3, !noalias !4
  %t2484 = add i64 %r2483, 24
  %gmp2485 = inttoptr i64 %t2484 to ptr
  %gml2486 = load i64, ptr %gmp2485, align 1, !alias.scope !4, !noalias !3
  %wp2487 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2486, ptr %wp2487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3cc word 0xeb0c01bf
  %r2488.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2488 = load i64, ptr %r2488.p, align 8, !alias.scope !3, !noalias !4
  %r2489.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2489 = load i64, ptr %r2489.p, align 8, !alias.scope !3, !noalias !4
  %t2490 = sub i64 %r2488, %r2489
  %fn2491 = icmp slt i64 %t2490, 0
  %fz2492 = icmp eq i64 %t2490, 0
  %fc2493 = icmp uge i64 %r2488, %r2489
  %fx12494 = xor i64 %r2488, %r2489
  %fx22495 = xor i64 %r2488, %t2490
  %fva2496 = and i64 %fx12494, %fx22495
  %fv2497 = icmp slt i64 %fva2496, 0
  %nz2498 = zext i1 %fn2491 to i64
  %zz2499 = zext i1 %fz2492 to i64
  %cz2500 = zext i1 %fc2493 to i64
  %vz2501 = zext i1 %fv2497 to i64
  %ns2502 = shl i64 %nz2498, 31
  %zs2503 = shl i64 %zz2499, 30
  %cs2504 = shl i64 %cz2500, 29
  %vs2505 = shl i64 %vz2501, 28
  %nzor2506 = or i64 %ns2502, %zs2503
  %cvor2507 = or i64 %cs2504, %vs2505
  %nzcv2508 = or i64 %nzor2506, %cvor2507
  %wp2509 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2508, ptr %wp2509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a3d0 word 0x54000049
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %fsh2512 = lshr i64 %r2510, 29
  %ftr2513 = trunc i64 %fsh2512 to i1
  %fsh2514 = lshr i64 %r2510, 30
  %ftr2515 = trunc i64 %fsh2514 to i1
  %fnz2516 = xor i1 %ftr2515, true
  %fhi2517 = and i1 %ftr2513, %fnz2516
  %cond2511 = xor i1 %fhi2517, true
  br i1 %cond2511, label %L_80007a3d8, label %L_80007a3d4
L_80007a3f0_ft:
  ; @pc 0x80007a3f0 word 0xf9400c0b
  %r2562.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2562 = load i64, ptr %r2562.p, align 8, !alias.scope !3, !noalias !4
  %t2563 = add i64 %r2562, 24
  %gmp2564 = inttoptr i64 %t2563 to ptr
  %gml2565 = load i64, ptr %gmp2564, align 1, !alias.scope !4, !noalias !3
  %wp2566 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2565, ptr %wp2566, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a3f4
L_80007a410_ft:
  ; @pc 0x80007a410 word 0xaa1f03f4
  %t2618 = or i64 0, 0
  %wp2619 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t2618, ptr %wp2619, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a414
L_80007a41c_ft:
  ; @pc 0x80007a41c word 0xf9000549
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %t2627 = add i64 %r2626, 8
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %gmp2629 = inttoptr i64 %t2627 to ptr
  store i64 %r2628, ptr %gmp2629, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a420 word 0xf9400509
  %r2630.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2630 = load i64, ptr %r2630.p, align 8, !alias.scope !3, !noalias !4
  %t2631 = add i64 %r2630, 8
  %gmp2632 = inttoptr i64 %t2631 to ptr
  %gml2633 = load i64, ptr %gmp2632, align 1, !alias.scope !4, !noalias !3
  %wp2634 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2633, ptr %wp2634, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a424
L_80007a428_ft:
  ; @pc 0x80007a428 word 0xf940010a
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %gmp2638 = inttoptr i64 %r2637 to ptr
  %gml2639 = load i64, ptr %gmp2638, align 1, !alias.scope !4, !noalias !3
  %wp2640 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2639, ptr %wp2640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a42c word 0xf900012a
  %r2641.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2641 = load i64, ptr %r2641.p, align 8, !alias.scope !3, !noalias !4
  %r2642.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2642 = load i64, ptr %r2642.p, align 8, !alias.scope !3, !noalias !4
  %gmp2643 = inttoptr i64 %r2641 to ptr
  store i64 %r2642, ptr %gmp2643, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a430
L_80007a45c_ft:
  ; @pc 0x80007a45c word 0xf9400109
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %gmp2714 = inttoptr i64 %r2713 to ptr
  %gml2715 = load i64, ptr %gmp2714, align 1, !alias.scope !4, !noalias !3
  %wp2716 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2715, ptr %wp2716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a460 word 0xf9000101
  %r2717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2717 = load i64, ptr %r2717.p, align 8, !alias.scope !3, !noalias !4
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %gmp2719 = inttoptr i64 %r2717 to ptr
  store i64 %r2718, ptr %gmp2719, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a464 word 0xa9002029
  %r2720.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2720 = load i64, ptr %r2720.p, align 8, !alias.scope !3, !noalias !4
  %t2721 = add i64 %r2720, 8
  %r2722.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2722 = load i64, ptr %r2722.p, align 8, !alias.scope !3, !noalias !4
  %gmp2723 = inttoptr i64 %r2720 to ptr
  store i64 %r2722, ptr %gmp2723, align 1, !alias.scope !4, !noalias !3
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %gmp2725 = inttoptr i64 %t2721 to ptr
  store i64 %r2724, ptr %gmp2725, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a468 word 0xb4000049
  %r2726.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2726 = load i64, ptr %r2726.p, align 8, !alias.scope !3, !noalias !4
  %cmp2727 = icmp eq i64 %r2726, 0
  br i1 %cmp2727, label %L_80007a470, label %L_80007a46c_ft
L_80007a46c_ft:
  ; @pc 0x80007a46c word 0xf9000521
  %r2728.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2728 = load i64, ptr %r2728.p, align 8, !alias.scope !3, !noalias !4
  %t2729 = add i64 %r2728, 8
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %gmp2731 = inttoptr i64 %t2729 to ptr
  store i64 %r2730, ptr %gmp2731, align 1, !alias.scope !4, !noalias !3
  br label %L_80007a470
L_80007a484_ft:
  ; @pc 0x80007a484 word 0x8b0002e8
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %r2774.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2774 = load i64, ptr %r2774.p, align 8, !alias.scope !3, !noalias !4
  %t2775 = add i64 %r2773, %r2774
  %wp2776 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2775, ptr %wp2776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a488 word 0x8b150108
  %r2777.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2777 = load i64, ptr %r2777.p, align 8, !alias.scope !3, !noalias !4
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %t2779 = add i64 %r2777, %r2778
  %wp2780 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2779, ptr %wp2780, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a48c
L_80007a4b0_ft:
  ; @pc 0x80007a4b0 word 0x8b090108
  %r2814.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2814 = load i64, ptr %r2814.p, align 8, !alias.scope !3, !noalias !4
  %r2815.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2815 = load i64, ptr %r2815.p, align 8, !alias.scope !3, !noalias !4
  %t2816 = add i64 %r2814, %r2815
  %wp2817 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2816, ptr %wp2817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4b4 word 0xf9400329
  %r2818.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2818 = load i64, ptr %r2818.p, align 8, !alias.scope !3, !noalias !4
  %gmp2819 = inttoptr i64 %r2818 to ptr
  %gml2820 = load i64, ptr %gmp2819, align 1, !alias.scope !4, !noalias !3
  %wp2821 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2820, ptr %wp2821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a4b8 word 0xf9000328
  %r2822.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2822 = load i64, ptr %r2822.p, align 8, !alias.scope !3, !noalias !4
  %r2823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2823 = load i64, ptr %r2823.p, align 8, !alias.scope !3, !noalias !4
  %gmp2824 = inttoptr i64 %r2822 to ptr
  store i64 %r2823, ptr %gmp2824, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4bc word 0xa9006509
  %r2825.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2825 = load i64, ptr %r2825.p, align 8, !alias.scope !3, !noalias !4
  %t2826 = add i64 %r2825, 8
  %r2827.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2827 = load i64, ptr %r2827.p, align 8, !alias.scope !3, !noalias !4
  %gmp2828 = inttoptr i64 %r2825 to ptr
  store i64 %r2827, ptr %gmp2828, align 1, !alias.scope !4, !noalias !3
  %r2829.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2829 = load i64, ptr %r2829.p, align 8, !alias.scope !3, !noalias !4
  %gmp2830 = inttoptr i64 %t2826 to ptr
  store i64 %r2829, ptr %gmp2830, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a4c0 word 0xb4000049
  %r2831.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2831 = load i64, ptr %r2831.p, align 8, !alias.scope !3, !noalias !4
  %cmp2832 = icmp eq i64 %r2831, 0
  br i1 %cmp2832, label %L_80007a4c8, label %L_80007a4c4
L_80007a51c_ft:
  ; @pc 0x80007a51c word 0x17ffffeb
  br label %L_80007a4c8
L_80007a528_ft:
  ; @pc 0x80007a528 word 0xf9000c0b
  %r2942.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2942 = load i64, ptr %r2942.p, align 8, !alias.scope !3, !noalias !4
  %t2943 = add i64 %r2942, 24
  %r2944.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2944 = load i64, ptr %r2944.p, align 8, !alias.scope !3, !noalias !4
  %gmp2945 = inttoptr i64 %t2943 to ptr
  store i64 %r2944, ptr %gmp2945, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a52c word 0x17ffffea
  br label %L_80007a4d4
L_80007a550_ft:
  ; @pc 0x80007a550 word 0xf9400b20
  %r2964.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2964 = load i64, ptr %r2964.p, align 8, !alias.scope !3, !noalias !4
  %t2965 = add i64 %r2964, 16
  %gmp2966 = inttoptr i64 %t2965 to ptr
  %gml2967 = load i64, ptr %gmp2966, align 1, !alias.scope !4, !noalias !3
  %wp2968 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2967, ptr %wp2968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a554 word 0xb5fff180
  %r2969.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2969 = load i64, ptr %r2969.p, align 8, !alias.scope !3, !noalias !4
  %cmp2970 = icmp ne i64 %r2969, 0
  br i1 %cmp2970, label %L_80007a384, label %L_80007a558_ft
L_80007a558_ft:
  ; @pc 0x80007a558 word 0x17ffff93
  br label %L_80007a3a4
L_80007a574_ft:
  ; @pc 0x80007a574 word 0xaa1f03e0
  %t3004 = or i64 0, 0
  %wp3005 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3004, ptr %wp3005, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a578
L_80007a584_ft:
  ; @pc 0x80007a584 word 0xb4000080
  %r3037.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3037 = load i64, ptr %r3037.p, align 8, !alias.scope !3, !noalias !4
  %cmp3038 = icmp eq i64 %r3037, 0
  br i1 %cmp3038, label %L_80007a594, label %L_80007a588_ft
L_80007a588_ft:
  ; @pc 0x80007a588 word 0xf9400c0d
  %r3039.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3039 = load i64, ptr %r3039.p, align 8, !alias.scope !3, !noalias !4
  %t3040 = add i64 %r3039, 24
  %gmp3041 = inttoptr i64 %t3040 to ptr
  %gml3042 = load i64, ptr %gmp3041, align 1, !alias.scope !4, !noalias !3
  %wp3043 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3042, ptr %wp3043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a58c word 0xeb0c01bf
  %r3044.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3044 = load i64, ptr %r3044.p, align 8, !alias.scope !3, !noalias !4
  %r3045.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3045 = load i64, ptr %r3045.p, align 8, !alias.scope !3, !noalias !4
  %t3046 = sub i64 %r3044, %r3045
  %fn3047 = icmp slt i64 %t3046, 0
  %fz3048 = icmp eq i64 %t3046, 0
  %fc3049 = icmp uge i64 %r3044, %r3045
  %fx13050 = xor i64 %r3044, %r3045
  %fx23051 = xor i64 %r3044, %t3046
  %fva3052 = and i64 %fx13050, %fx23051
  %fv3053 = icmp slt i64 %fva3052, 0
  %nz3054 = zext i1 %fn3047 to i64
  %zz3055 = zext i1 %fz3048 to i64
  %cz3056 = zext i1 %fc3049 to i64
  %vz3057 = zext i1 %fv3053 to i64
  %ns3058 = shl i64 %nz3054, 31
  %zs3059 = shl i64 %zz3055, 30
  %cs3060 = shl i64 %cz3056, 29
  %vs3061 = shl i64 %vz3057, 28
  %nzor3062 = or i64 %ns3058, %zs3059
  %cvor3063 = or i64 %cs3060, %vs3061
  %nzcv3064 = or i64 %nzor3062, %cvor3063
  %wp3065 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3064, ptr %wp3065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a590 word 0x54000042
  %r3066.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3066 = load i64, ptr %r3066.p, align 8, !alias.scope !3, !noalias !4
  %fsh3068 = lshr i64 %r3066, 29
  %cond3067 = trunc i64 %fsh3068 to i1
  br i1 %cond3067, label %L_80007a598, label %L_80007a594
L_80007a5ac_ft:
  ; @pc 0x80007a5ac word 0x17ffff90
  br label %L_80007a3ec
L_80007a5dc_ft:
  ; @pc 0x80007a5dc word 0x17ffff84
  br label %L_80007a3ec
L_80007a5f4_ft:
  ; @pc 0x80007a5f4 word 0x1400007b
  br label %L_80007a7e0
L_80007a600_ft:
  ; @pc 0x80007a600 word 0xf9401e60
  %r3279.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3279 = load i64, ptr %r3279.p, align 8, !alias.scope !3, !noalias !4
  %t3280 = add i64 %r3279, 56
  %gmp3281 = inttoptr i64 %t3280 to ptr
  %gml3282 = load i64, ptr %gmp3281, align 1, !alias.scope !4, !noalias !3
  %wp3283 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3282, ptr %wp3283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a604 word 0xb940ce61
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %t3285 = add i64 %r3284, 204
  %gmp3286 = inttoptr i64 %t3285 to ptr
  %gml3287 = load i32, ptr %gmp3286, align 1, !alias.scope !4, !noalias !3
  %c3288 = zext i32 %gml3287 to i64
  %wp3289 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3288, ptr %wp3289, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a608 word 0xf9400008
  %r3290.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3290 = load i64, ptr %r3290.p, align 8, !alias.scope !3, !noalias !4
  %gmp3291 = inttoptr i64 %r3290 to ptr
  %gml3292 = load i64, ptr %gmp3291, align 1, !alias.scope !4, !noalias !3
  %wp3293 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3292, ptr %wp3293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a60c word 0xf9404508
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %t3295 = add i64 %r3294, 136
  %gmp3296 = inttoptr i64 %t3295 to ptr
  %gml3297 = load i64, ptr %gmp3296, align 1, !alias.scope !4, !noalias !3
  %wp3298 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3297, ptr %wp3298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a610 word 0xd63f0100
  %r3299.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3299 = load i64, ptr %r3299.p, align 8, !alias.scope !3, !noalias !4
  %fp3300 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3299, ptr %fp3300, align 8, !alias.scope !3, !noalias !4
  %wp3301 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239636, ptr %wp3301, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80007a614 word 0xeb00037f
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %r3303.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3303 = load i64, ptr %r3303.p, align 8, !alias.scope !3, !noalias !4
  %t3304 = sub i64 %r3302, %r3303
  %fn3305 = icmp slt i64 %t3304, 0
  %fz3306 = icmp eq i64 %t3304, 0
  %fc3307 = icmp uge i64 %r3302, %r3303
  %fx13308 = xor i64 %r3302, %r3303
  %fx23309 = xor i64 %r3302, %t3304
  %fva3310 = and i64 %fx13308, %fx23309
  %fv3311 = icmp slt i64 %fva3310, 0
  %nz3312 = zext i1 %fn3305 to i64
  %zz3313 = zext i1 %fz3306 to i64
  %cz3314 = zext i1 %fc3307 to i64
  %vz3315 = zext i1 %fv3311 to i64
  %ns3316 = shl i64 %nz3312, 31
  %zs3317 = shl i64 %zz3313, 30
  %cs3318 = shl i64 %cz3314, 29
  %vs3319 = shl i64 %vz3315, 28
  %nzor3320 = or i64 %ns3316, %zs3317
  %cvor3321 = or i64 %cs3318, %vs3319
  %nzcv3322 = or i64 %nzor3320, %cvor3321
  %wp3323 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3322, ptr %wp3323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a618 word 0x54ffe408
  %r3324.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3324 = load i64, ptr %r3324.p, align 8, !alias.scope !3, !noalias !4
  %fsh3326 = lshr i64 %r3324, 29
  %ftr3327 = trunc i64 %fsh3326 to i1
  %fsh3328 = lshr i64 %r3324, 30
  %ftr3329 = trunc i64 %fsh3328 to i1
  %fnz3330 = xor i1 %ftr3329, true
  %cond3325 = and i1 %ftr3327, %fnz3330
  br i1 %cond3325, label %L_80007a298, label %L_80007a61c_ft
L_80007a61c_ft:
  ; @pc 0x80007a61c word 0xaa0003f9
  %r3331.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3331 = load i64, ptr %r3331.p, align 8, !alias.scope !3, !noalias !4
  %t3332 = or i64 0, %r3331
  %wp3333 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3332, ptr %wp3333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a620 word 0xf9401e60
  %r3334.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3334 = load i64, ptr %r3334.p, align 8, !alias.scope !3, !noalias !4
  %t3335 = add i64 %r3334, 56
  %gmp3336 = inttoptr i64 %t3335 to ptr
  %gml3337 = load i64, ptr %gmp3336, align 1, !alias.scope !4, !noalias !3
  %wp3338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3337, ptr %wp3338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a624 word 0xaa1903e1
  %r3339.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3339 = load i64, ptr %r3339.p, align 8, !alias.scope !3, !noalias !4
  %t3340 = or i64 0, %r3339
  %wp3341 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3340, ptr %wp3341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a628 word 0xb940ce62
  %r3342.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3342 = load i64, ptr %r3342.p, align 8, !alias.scope !3, !noalias !4
  %t3343 = add i64 %r3342, 204
  %gmp3344 = inttoptr i64 %t3343 to ptr
  %gml3345 = load i32, ptr %gmp3344, align 1, !alias.scope !4, !noalias !3
  %c3346 = zext i32 %gml3345 to i64
  %wp3347 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c3346, ptr %wp3347, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a62c word 0xf9400008
  %r3348.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3348 = load i64, ptr %r3348.p, align 8, !alias.scope !3, !noalias !4
  %gmp3349 = inttoptr i64 %r3348 to ptr
  %gml3350 = load i64, ptr %gmp3349, align 1, !alias.scope !4, !noalias !3
  %wp3351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3350, ptr %wp3351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a630 word 0xf9401908
  %r3352.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3352 = load i64, ptr %r3352.p, align 8, !alias.scope !3, !noalias !4
  %t3353 = add i64 %r3352, 48
  %gmp3354 = inttoptr i64 %t3353 to ptr
  %gml3355 = load i64, ptr %gmp3354, align 1, !alias.scope !4, !noalias !3
  %wp3356 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3355, ptr %wp3356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a634 word 0xd63f0100
  %r3357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3357 = load i64, ptr %r3357.p, align 8, !alias.scope !3, !noalias !4
  %fp3358 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3357, ptr %fp3358, align 8, !alias.scope !3, !noalias !4
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34360239672, ptr %wp3359, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x80007a638 word 0xaa0003f8
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %t3361 = or i64 0, %r3360
  %wp3362 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t3361, ptr %wp3362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a63c word 0xb4ffbda0
  %r3363.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3363 = load i64, ptr %r3363.p, align 8, !alias.scope !3, !noalias !4
  %cmp3364 = icmp eq i64 %r3363, 0
  br i1 %cmp3364, label %L_800079df0, label %L_80007a640_ft
L_80007a640_ft:
  ; @pc 0x80007a640 word 0x17fffe75
  br label %L_80007a014
L_80007a674_ft:
  ; @pc 0x80007a674 word 0xaa1f03e0
  %t3419 = or i64 0, 0
  %wp3420 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3419, ptr %wp3420, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a678
L_80007a698_ft:
  ; @pc 0x80007a698 word 0x1400004e
  br label %L_80007a7d0
L_80007a6c0_ft:
  ; @pc 0x80007a6c0 word 0xb4000080
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %cmp3546 = icmp eq i64 %r3545, 0
  br i1 %cmp3546, label %L_80007a6d0, label %L_80007a6c4_ft
L_80007a6c4_ft:
  ; @pc 0x80007a6c4 word 0xf9400c0f
  %r3547.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3547 = load i64, ptr %r3547.p, align 8, !alias.scope !3, !noalias !4
  %t3548 = add i64 %r3547, 24
  %gmp3549 = inttoptr i64 %t3548 to ptr
  %gml3550 = load i64, ptr %gmp3549, align 1, !alias.scope !4, !noalias !3
  %wp3551 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3550, ptr %wp3551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6c8 word 0xeb0e01ff
  %r3552.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3552 = load i64, ptr %r3552.p, align 8, !alias.scope !3, !noalias !4
  %r3553.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3553 = load i64, ptr %r3553.p, align 8, !alias.scope !3, !noalias !4
  %t3554 = sub i64 %r3552, %r3553
  %fn3555 = icmp slt i64 %t3554, 0
  %fz3556 = icmp eq i64 %t3554, 0
  %fc3557 = icmp uge i64 %r3552, %r3553
  %fx13558 = xor i64 %r3552, %r3553
  %fx23559 = xor i64 %r3552, %t3554
  %fva3560 = and i64 %fx13558, %fx23559
  %fv3561 = icmp slt i64 %fva3560, 0
  %nz3562 = zext i1 %fn3555 to i64
  %zz3563 = zext i1 %fz3556 to i64
  %cz3564 = zext i1 %fc3557 to i64
  %vz3565 = zext i1 %fv3561 to i64
  %ns3566 = shl i64 %nz3562, 31
  %zs3567 = shl i64 %zz3563, 30
  %cs3568 = shl i64 %cz3564, 29
  %vs3569 = shl i64 %vz3565, 28
  %nzor3570 = or i64 %ns3566, %zs3567
  %cvor3571 = or i64 %cs3568, %vs3569
  %nzcv3572 = or i64 %nzor3570, %cvor3571
  %wp3573 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3572, ptr %wp3573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a6cc word 0x54fffdc9
  %r3574.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3574 = load i64, ptr %r3574.p, align 8, !alias.scope !3, !noalias !4
  %fsh3576 = lshr i64 %r3574, 29
  %ftr3577 = trunc i64 %fsh3576 to i1
  %fsh3578 = lshr i64 %r3574, 30
  %ftr3579 = trunc i64 %fsh3578 to i1
  %fnz3580 = xor i1 %ftr3579, true
  %fhi3581 = and i1 %ftr3577, %fnz3580
  %cond3575 = xor i1 %fhi3581, true
  br i1 %cond3575, label %L_80007a684, label %L_80007a6d0
L_80007a6fc_ft:
  ; @pc 0x80007a6fc word 0x8b170308
  %r3626.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3626 = load i64, ptr %r3626.p, align 8, !alias.scope !3, !noalias !4
  %r3627.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3627 = load i64, ptr %r3627.p, align 8, !alias.scope !3, !noalias !4
  %t3628 = add i64 %r3626, %r3627
  %wp3629 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3628, ptr %wp3629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a700 word 0xf9000c08
  %r3630.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3630 = load i64, ptr %r3630.p, align 8, !alias.scope !3, !noalias !4
  %t3631 = add i64 %r3630, 24
  %r3632.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3632 = load i64, ptr %r3632.p, align 8, !alias.scope !3, !noalias !4
  %gmp3633 = inttoptr i64 %t3631 to ptr
  store i64 %r3632, ptr %gmp3633, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a704 word 0x17ffff74
  br label %L_80007a4d4
L_80007a71c_ft:
  ; @pc 0x80007a71c word 0xaa1f03e0
  %t3666 = or i64 0, 0
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a720
L_80007a740_ft:
  ; @pc 0x80007a740 word 0x14000024
  br label %L_80007a7d0
L_80007a768_ft:
  ; @pc 0x80007a768 word 0xb4000080
  %r3792.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3792 = load i64, ptr %r3792.p, align 8, !alias.scope !3, !noalias !4
  %cmp3793 = icmp eq i64 %r3792, 0
  br i1 %cmp3793, label %L_80007a778, label %L_80007a76c_ft
L_80007a76c_ft:
  ; @pc 0x80007a76c word 0xf9400c0f
  %r3794.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3794 = load i64, ptr %r3794.p, align 8, !alias.scope !3, !noalias !4
  %t3795 = add i64 %r3794, 24
  %gmp3796 = inttoptr i64 %t3795 to ptr
  %gml3797 = load i64, ptr %gmp3796, align 1, !alias.scope !4, !noalias !3
  %wp3798 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml3797, ptr %wp3798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a770 word 0xeb0e01ff
  %r3799.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3799 = load i64, ptr %r3799.p, align 8, !alias.scope !3, !noalias !4
  %r3800.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3800 = load i64, ptr %r3800.p, align 8, !alias.scope !3, !noalias !4
  %t3801 = sub i64 %r3799, %r3800
  %fn3802 = icmp slt i64 %t3801, 0
  %fz3803 = icmp eq i64 %t3801, 0
  %fc3804 = icmp uge i64 %r3799, %r3800
  %fx13805 = xor i64 %r3799, %r3800
  %fx23806 = xor i64 %r3799, %t3801
  %fva3807 = and i64 %fx13805, %fx23806
  %fv3808 = icmp slt i64 %fva3807, 0
  %nz3809 = zext i1 %fn3802 to i64
  %zz3810 = zext i1 %fz3803 to i64
  %cz3811 = zext i1 %fc3804 to i64
  %vz3812 = zext i1 %fv3808 to i64
  %ns3813 = shl i64 %nz3809, 31
  %zs3814 = shl i64 %zz3810, 30
  %cs3815 = shl i64 %cz3811, 29
  %vs3816 = shl i64 %vz3812, 28
  %nzor3817 = or i64 %ns3813, %zs3814
  %cvor3818 = or i64 %cs3815, %vs3816
  %nzcv3819 = or i64 %nzor3817, %cvor3818
  %wp3820 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3819, ptr %wp3820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a774 word 0x54fffdc2
  %r3821.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3821 = load i64, ptr %r3821.p, align 8, !alias.scope !3, !noalias !4
  %fsh3823 = lshr i64 %r3821, 29
  %cond3822 = trunc i64 %fsh3823 to i1
  br i1 %cond3822, label %L_80007a72c, label %L_80007a778
L_80007a790_ft:
  ; @pc 0x80007a790 word 0x7940256f
  %r3860.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3860 = load i64, ptr %r3860.p, align 8, !alias.scope !3, !noalias !4
  %t3861 = add i64 %r3860, 18
  %gmp3862 = inttoptr i64 %t3861 to ptr
  %gml3863 = load i16, ptr %gmp3862, align 1, !alias.scope !4, !noalias !3
  %c3864 = zext i16 %gml3863 to i64
  %wp3865 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3864, ptr %wp3865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a794 word 0xf100001f
  %r3866.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3866 = load i64, ptr %r3866.p, align 8, !alias.scope !3, !noalias !4
  %t3867 = sub i64 %r3866, 0
  %fn3868 = icmp slt i64 %t3867, 0
  %fz3869 = icmp eq i64 %t3867, 0
  %fc3870 = icmp uge i64 %r3866, 0
  %fx13871 = xor i64 %r3866, 0
  %fx23872 = xor i64 %r3866, %t3867
  %fva3873 = and i64 %fx13871, %fx23872
  %fv3874 = icmp slt i64 %fva3873, 0
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
  ; @pc 0x80007a798 word 0x8b0f016f
  %r3887.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3887 = load i64, ptr %r3887.p, align 8, !alias.scope !3, !noalias !4
  %r3888.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3888 = load i64, ptr %r3888.p, align 8, !alias.scope !3, !noalias !4
  %t3889 = add i64 %r3887, %r3888
  %wp3890 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3889, ptr %wp3890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a79c word 0x910081ef
  %r3891.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3891 = load i64, ptr %r3891.p, align 8, !alias.scope !3, !noalias !4
  %t3892 = add i64 %r3891, 32
  %wp3893 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3892, ptr %wp3893, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7a0 word 0x8b0c01f0
  %r3894.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3894 = load i64, ptr %r3894.p, align 8, !alias.scope !3, !noalias !4
  %r3895.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3895 = load i64, ptr %r3895.p, align 8, !alias.scope !3, !noalias !4
  %t3896 = add i64 %r3894, %r3895
  %wp3897 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3896, ptr %wp3897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7a4 word 0xcb0f02ef
  %r3898.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3898 = load i64, ptr %r3898.p, align 8, !alias.scope !3, !noalias !4
  %r3899.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3899 = load i64, ptr %r3899.p, align 8, !alias.scope !3, !noalias !4
  %t3900 = sub i64 %r3898, %r3899
  %wp3901 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3900, ptr %wp3901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7a8 word 0x8a0d0210
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %r3903.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3903 = load i64, ptr %r3903.p, align 8, !alias.scope !3, !noalias !4
  %t3904 = and i64 %r3903, %r3902
  %wp3905 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t3904, ptr %wp3905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7ac word 0x8b1001ef
  %r3906.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3906 = load i64, ptr %r3906.p, align 8, !alias.scope !3, !noalias !4
  %r3907.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3907 = load i64, ptr %r3907.p, align 8, !alias.scope !3, !noalias !4
  %t3908 = add i64 %r3906, %r3907
  %wp3909 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3908, ptr %wp3909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7b0 word 0x9a800170
  %r3910.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3910 = load i64, ptr %r3910.p, align 8, !alias.scope !3, !noalias !4
  %r3911.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3911 = load i64, ptr %r3911.p, align 8, !alias.scope !3, !noalias !4
  %r3912.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3912 = load i64, ptr %r3912.p, align 8, !alias.scope !3, !noalias !4
  %fsh3914 = lshr i64 %r3912, 30
  %cond3913 = trunc i64 %fsh3914 to i1
  %sel3915 = select i1 %cond3913, i64 %r3910, i64 %r3911
  %wp3916 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %sel3915, ptr %wp3916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7b4 word 0xeb0f01df
  %r3917.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3917 = load i64, ptr %r3917.p, align 8, !alias.scope !3, !noalias !4
  %r3918.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3918 = load i64, ptr %r3918.p, align 8, !alias.scope !3, !noalias !4
  %t3919 = sub i64 %r3917, %r3918
  %fn3920 = icmp slt i64 %t3919, 0
  %fz3921 = icmp eq i64 %t3919, 0
  %fc3922 = icmp uge i64 %r3917, %r3918
  %fx13923 = xor i64 %r3917, %r3918
  %fx23924 = xor i64 %r3917, %t3919
  %fva3925 = and i64 %fx13923, %fx23924
  %fv3926 = icmp slt i64 %fva3925, 0
  %nz3927 = zext i1 %fn3920 to i64
  %zz3928 = zext i1 %fz3921 to i64
  %cz3929 = zext i1 %fc3922 to i64
  %vz3930 = zext i1 %fv3926 to i64
  %ns3931 = shl i64 %nz3927, 31
  %zs3932 = shl i64 %zz3928, 30
  %cs3933 = shl i64 %cz3929, 29
  %vs3934 = shl i64 %vz3930, 28
  %nzor3935 = or i64 %ns3931, %zs3932
  %cvor3936 = or i64 %cs3933, %vs3934
  %nzcv3937 = or i64 %nzor3935, %cvor3936
  %wp3938 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3937, ptr %wp3938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7b8 word 0x9a903000
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %r3940.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3940 = load i64, ptr %r3940.p, align 8, !alias.scope !3, !noalias !4
  %r3941.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3941 = load i64, ptr %r3941.p, align 8, !alias.scope !3, !noalias !4
  %fsh3943 = lshr i64 %r3941, 29
  %ftr3944 = trunc i64 %fsh3943 to i1
  %cond3942 = xor i1 %ftr3944, true
  %sel3945 = select i1 %cond3942, i64 %r3939, i64 %r3940
  %wp3946 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %sel3945, ptr %wp3946, align 8, !alias.scope !3, !noalias !4
  br label %L_80007a7bc
L_80007a7d4_ft:
  ; @pc 0x80007a7d4 word 0x7940240e
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %t3989 = add i64 %r3988, 18
  %gmp3990 = inttoptr i64 %t3989 to ptr
  %gml3991 = load i16, ptr %gmp3990, align 1, !alias.scope !4, !noalias !3
  %c3992 = zext i16 %gml3991 to i64
  %wp3993 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c3992, ptr %wp3993, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7d8 word 0xf9400c0b
  %r3994.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3994 = load i64, ptr %r3994.p, align 8, !alias.scope !3, !noalias !4
  %t3995 = add i64 %r3994, 24
  %gmp3996 = inttoptr i64 %t3995 to ptr
  %gml3997 = load i64, ptr %gmp3996, align 1, !alias.scope !4, !noalias !3
  %wp3998 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3997, ptr %wp3998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7dc word 0x17fffe3d
  br label %L_80007a0d0
L_80007a7e4_ft:
  ; @pc 0x80007a7e4 word 0xf9400b40
  %r4001.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4001 = load i64, ptr %r4001.p, align 8, !alias.scope !3, !noalias !4
  %t4002 = add i64 %r4001, 16
  %gmp4003 = inttoptr i64 %t4002 to ptr
  %gml4004 = load i64, ptr %gmp4003, align 1, !alias.scope !4, !noalias !3
  %wp4005 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4004, ptr %wp4005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7e8 word 0xb5000160
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %cmp4007 = icmp ne i64 %r4006, 0
  br i1 %cmp4007, label %L_80007a814, label %L_80007a7ec
L_80007a7f8_ft:
  ; @pc 0x80007a7f8 word 0xf9400b20
  %r4012.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4012 = load i64, ptr %r4012.p, align 8, !alias.scope !3, !noalias !4
  %t4013 = add i64 %r4012, 16
  %gmp4014 = inttoptr i64 %t4013 to ptr
  %gml4015 = load i64, ptr %gmp4014, align 1, !alias.scope !4, !noalias !3
  %wp4016 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4015, ptr %wp4016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80007a7fc word 0xb4ffdaa0
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %cmp4018 = icmp eq i64 %r4017, 0
  br i1 %cmp4018, label %L_80007a350, label %L_80007a800_ft
L_80007a800_ft:
  ; @pc 0x80007a800 word 0xa900d7f3
  %r4019.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4019 = load i64, ptr %r4019.p, align 8, !alias.scope !3, !noalias !4
  %t4020 = add i64 %r4019, 8
  %t4021 = add i64 %t4020, 8
  %r4022.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4022 = load i64, ptr %r4022.p, align 8, !alias.scope !3, !noalias !4
  %gmp4023 = inttoptr i64 %t4020 to ptr
  store i64 %r4022, ptr %gmp4023, align 1, !alias.scope !4, !noalias !3
  %r4024.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4024 = load i64, ptr %r4024.p, align 8, !alias.scope !3, !noalias !4
  %gmp4025 = inttoptr i64 %t4021 to ptr
  store i64 %r4024, ptr %gmp4025, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a804 word 0xb9001bf4
  %r4026.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4026 = load i64, ptr %r4026.p, align 8, !alias.scope !3, !noalias !4
  %t4027 = add i64 %r4026, 24
  %r4028.p = getelementptr inbounds i8, ptr %c, i64 160
  %r4028 = load i64, ptr %r4028.p, align 8, !alias.scope !3, !noalias !4
  %c4029 = trunc i64 %r4028 to i32
  %gmp4030 = inttoptr i64 %t4027 to ptr
  store i32 %c4029, ptr %gmp4030, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a808 word 0xf90013f7
  %r4031.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4031 = load i64, ptr %r4031.p, align 8, !alias.scope !3, !noalias !4
  %t4032 = add i64 %r4031, 32
  %r4033.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4033 = load i64, ptr %r4033.p, align 8, !alias.scope !3, !noalias !4
  %gmp4034 = inttoptr i64 %t4032 to ptr
  store i64 %r4033, ptr %gmp4034, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a80c word 0xb9002be9
  %r4035.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4035 = load i64, ptr %r4035.p, align 8, !alias.scope !3, !noalias !4
  %t4036 = add i64 %r4035, 40
  %r4037.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4037 = load i64, ptr %r4037.p, align 8, !alias.scope !3, !noalias !4
  %c4038 = trunc i64 %r4037 to i32
  %gmp4039 = inttoptr i64 %t4036 to ptr
  store i32 %c4038, ptr %gmp4039, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x80007a810 word 0x17fffecc
  br label %L_80007a340
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
