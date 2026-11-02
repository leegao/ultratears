; UltraTears chunk main_107_freelist: 1 functions [0x8001ac270..0x8001ac914)
; ModuleID = 'main_107_freelist_raw'
source_filename = "main_107_freelist_raw"
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

define dso_local void @f_8001ac270(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001ac270:
  ; @pc 0x8001ac270 word 0xd10603ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 384
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac274 word 0xa9127bfd
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
  ; @pc 0x8001ac278 word 0xa9136ffc
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
  ; @pc 0x8001ac27c word 0xa91467fa
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
  ; @pc 0x8001ac280 word 0xa9155ff8
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
  ; @pc 0x8001ac284 word 0xa91657f6
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
  ; @pc 0x8001ac288 word 0xa9174ff4
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
  ; @pc 0x8001ac28c word 0x910483fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 288
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac290 word 0xa9402009
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
  ; @pc 0x8001ac294 word 0xd001bd16
  %wp61 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419826688, ptr %wp61, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac298 word 0xaa0403f5
  %r62.p = getelementptr inbounds i8, ptr %c, i64 32
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %t63 = or i64 0, %r62
  %wp64 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t63, ptr %wp64, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac29c word 0xaa0203f3
  %r65.p = getelementptr inbounds i8, ptr %c, i64 16
  %r65 = load i64, ptr %r65.p, align 8, !alias.scope !3, !noalias !4
  %t66 = or i64 0, %r65
  %wp67 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t66, ptr %wp67, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2a0 word 0xaa0003f4
  %r68.p = getelementptr inbounds i8, ptr %c, i64 0
  %r68 = load i64, ptr %r68.p, align 8, !alias.scope !3, !noalias !4
  %t69 = or i64 0, %r68
  %wp70 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t69, ptr %wp70, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2a4 word 0xf9400918
  %r71.p = getelementptr inbounds i8, ptr %c, i64 64
  %r71 = load i64, ptr %r71.p, align 8, !alias.scope !3, !noalias !4
  %t72 = add i64 %r71, 16
  %gmp73 = inttoptr i64 %t72 to ptr
  %gml74 = load i64, ptr %gmp73, align 1, !alias.scope !4, !noalias !3
  %wp75 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2a8 word 0xf9404d29
  %r76.p = getelementptr inbounds i8, ptr %c, i64 72
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %t77 = add i64 %r76, 152
  %gmp78 = inttoptr i64 %t77 to ptr
  %gml79 = load i64, ptr %gmp78, align 1, !alias.scope !4, !noalias !3
  %wp80 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2ac word 0xf9439ad6
  %r81.p = getelementptr inbounds i8, ptr %c, i64 176
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 1840
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2b0 word 0xeb16013f
  %r86.p = getelementptr inbounds i8, ptr %c, i64 72
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %r87.p = getelementptr inbounds i8, ptr %c, i64 176
  %r87 = load i64, ptr %r87.p, align 8, !alias.scope !3, !noalias !4
  %t88 = sub i64 %r86, %r87
  %fn89 = icmp slt i64 %t88, 0
  %fz90 = icmp eq i64 %t88, 0
  %fc91 = icmp uge i64 %r86, %r87
  %fx192 = xor i64 %r86, %r87
  %fx293 = xor i64 %r86, %t88
  %fva94 = and i64 %fx192, %fx293
  %fv95 = icmp slt i64 %fva94, 0
  %nz96 = zext i1 %fn89 to i64
  %zz97 = zext i1 %fz90 to i64
  %cz98 = zext i1 %fc91 to i64
  %vz99 = zext i1 %fv95 to i64
  %ns100 = shl i64 %nz96, 31
  %zs101 = shl i64 %zz97, 30
  %cs102 = shl i64 %cz98, 29
  %vs103 = shl i64 %vz99, 28
  %nzor104 = or i64 %ns100, %zs101
  %cvor105 = or i64 %cs102, %vs103
  %nzcv106 = or i64 %nzor104, %cvor105
  %wp107 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv106, ptr %wp107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2b4 word 0x540005c1
  %r108.p = getelementptr inbounds i8, ptr %c, i64 272
  %r108 = load i64, ptr %r108.p, align 8, !alias.scope !3, !noalias !4
  %fsh110 = lshr i64 %r108, 30
  %ftr111 = trunc i64 %fsh110 to i1
  %cond109 = xor i1 %ftr111, true
  br i1 %cond109, label %L_8001ac36c, label %L_8001ac2b8_ft
L_8001ac2d4:
  ; @pc 0x8001ac2d4 word 0xb940840a
  %r150.p = getelementptr inbounds i8, ptr %c, i64 0
  %r150 = load i64, ptr %r150.p, align 8, !alias.scope !3, !noalias !4
  %t151 = add i64 %r150, 132
  %gmp152 = inttoptr i64 %t151 to ptr
  %gml153 = load i32, ptr %gmp152, align 1, !alias.scope !4, !noalias !3
  %c154 = zext i32 %gml153 to i64
  %wp155 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c154, ptr %wp155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2d8 word 0x7100055f
  %r156.p = getelementptr inbounds i8, ptr %c, i64 80
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %c157 = trunc i64 %r156 to i32
  %t158 = sub i32 %c157, 1
  %fn159 = icmp slt i32 %t158, 0
  %fz160 = icmp eq i32 %t158, 0
  %fc161 = icmp uge i32 %c157, 1
  %fx1162 = xor i32 %c157, 1
  %fx2163 = xor i32 %c157, %t158
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
  ; @pc 0x8001ac2dc word 0x5400042b
  %r178.p = getelementptr inbounds i8, ptr %c, i64 272
  %r178 = load i64, ptr %r178.p, align 8, !alias.scope !3, !noalias !4
  %fsh180 = lshr i64 %r178, 31
  %ftr181 = trunc i64 %fsh180 to i1
  %fsh182 = lshr i64 %r178, 28
  %ftr183 = trunc i64 %fsh182 to i1
  %cond179 = icmp ne i1 %ftr181, %ftr183
  br i1 %cond179, label %L_8001ac360, label %L_8001ac2e0_ft
L_8001ac314:
  ; @pc 0x8001ac314 word 0x9b0f7ef0
  %r241.p = getelementptr inbounds i8, ptr %c, i64 120
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %r242.p = getelementptr inbounds i8, ptr %c, i64 184
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %t243 = mul i64 %r242, %r241
  %t244 = add i64 0, %t243
  %wp245 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t244, ptr %wp245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac318 word 0xb8b06b11
  %r246.p = getelementptr inbounds i8, ptr %c, i64 192
  %r246 = load i64, ptr %r246.p, align 8, !alias.scope !3, !noalias !4
  %r247.p = getelementptr inbounds i8, ptr %c, i64 128
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %t248 = add i64 %r246, %r247
  %gmp249 = inttoptr i64 %t248 to ptr
  %gml250 = load i32, ptr %gmp249, align 1, !alias.scope !4, !noalias !3
  %c251 = sext i32 %gml250 to i64
  %wp252 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac31c word 0x8b110170
  %r253.p = getelementptr inbounds i8, ptr %c, i64 88
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %r254.p = getelementptr inbounds i8, ptr %c, i64 136
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %t255 = add i64 %r253, %r254
  %wp256 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t255, ptr %wp256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac320 word 0xeb10019f
  %r257.p = getelementptr inbounds i8, ptr %c, i64 96
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %r258.p = getelementptr inbounds i8, ptr %c, i64 128
  %r258 = load i64, ptr %r258.p, align 8, !alias.scope !3, !noalias !4
  %t259 = sub i64 %r257, %r258
  %fn260 = icmp slt i64 %t259, 0
  %fz261 = icmp eq i64 %t259, 0
  %fc262 = icmp uge i64 %r257, %r258
  %fx1263 = xor i64 %r257, %r258
  %fx2264 = xor i64 %r257, %t259
  %fva265 = and i64 %fx1263, %fx2264
  %fv266 = icmp slt i64 %fva265, 0
  %nz267 = zext i1 %fn260 to i64
  %zz268 = zext i1 %fz261 to i64
  %cz269 = zext i1 %fc262 to i64
  %vz270 = zext i1 %fv266 to i64
  %ns271 = shl i64 %nz267, 31
  %zs272 = shl i64 %zz268, 30
  %cs273 = shl i64 %cz269, 29
  %vs274 = shl i64 %vz270, 28
  %nzor275 = or i64 %ns271, %zs272
  %cvor276 = or i64 %cs273, %vs274
  %nzcv277 = or i64 %nzor275, %cvor276
  %wp278 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv277, ptr %wp278, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac324 word 0x54000400
  %r279.p = getelementptr inbounds i8, ptr %c, i64 272
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %fsh281 = lshr i64 %r279, 30
  %cond280 = trunc i64 %fsh281 to i1
  br i1 %cond280, label %L_8001ac3a4, label %L_8001ac328_ft
L_8001ac330:
  ; @pc 0x8001ac330 word 0x8b1001b2
  %r288.p = getelementptr inbounds i8, ptr %c, i64 104
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %r289.p = getelementptr inbounds i8, ptr %c, i64 128
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %t290 = add i64 %r288, %r289
  %wp291 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t290, ptr %wp291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac334 word 0x8b100220
  %r292.p = getelementptr inbounds i8, ptr %c, i64 136
  %r292 = load i64, ptr %r292.p, align 8, !alias.scope !3, !noalias !4
  %r293.p = getelementptr inbounds i8, ptr %c, i64 128
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %t294 = add i64 %r292, %r293
  %wp295 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t294, ptr %wp295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac338 word 0x385ff241
  %r296.p = getelementptr inbounds i8, ptr %c, i64 144
  %r296 = load i64, ptr %r296.p, align 8, !alias.scope !3, !noalias !4
  %t297 = add i64 %r296, -1
  %gmp298 = inttoptr i64 %t297 to ptr
  %gml299 = load i8, ptr %gmp298, align 1, !alias.scope !4, !noalias !3
  %c300 = zext i8 %gml299 to i64
  %wp301 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c300, ptr %wp301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac33c word 0x385fd002
  %r302.p = getelementptr inbounds i8, ptr %c, i64 0
  %r302 = load i64, ptr %r302.p, align 8, !alias.scope !3, !noalias !4
  %t303 = add i64 %r302, -3
  %gmp304 = inttoptr i64 %t303 to ptr
  %gml305 = load i8, ptr %gmp304, align 1, !alias.scope !4, !noalias !3
  %c306 = zext i8 %gml305 to i64
  %wp307 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c306, ptr %wp307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac340 word 0x6b02003f
  %r308.p = getelementptr inbounds i8, ptr %c, i64 8
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %c309 = trunc i64 %r308 to i32
  %r310.p = getelementptr inbounds i8, ptr %c, i64 16
  %r310 = load i64, ptr %r310.p, align 8, !alias.scope !3, !noalias !4
  %c311 = trunc i64 %r310 to i32
  %t312 = sub i32 %c309, %c311
  %fn313 = icmp slt i32 %t312, 0
  %fz314 = icmp eq i32 %t312, 0
  %fc315 = icmp uge i32 %c309, %c311
  %fx1316 = xor i32 %c309, %c311
  %fx2317 = xor i32 %c309, %t312
  %fva318 = and i32 %fx1316, %fx2317
  %fv319 = icmp slt i32 %fva318, 0
  %nz320 = zext i1 %fn313 to i64
  %zz321 = zext i1 %fz314 to i64
  %cz322 = zext i1 %fc315 to i64
  %vz323 = zext i1 %fv319 to i64
  %ns324 = shl i64 %nz320, 31
  %zs325 = shl i64 %zz321, 30
  %cs326 = shl i64 %cz322, 29
  %vs327 = shl i64 %vz323, 28
  %nzor328 = or i64 %ns324, %zs325
  %cvor329 = or i64 %cs326, %vs327
  %nzcv330 = or i64 %nzor328, %cvor329
  %wp331 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv330, ptr %wp331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac344 word 0x54000081
  %r332.p = getelementptr inbounds i8, ptr %c, i64 272
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %fsh334 = lshr i64 %r332, 30
  %ftr335 = trunc i64 %fsh334 to i1
  %cond333 = xor i1 %ftr335, true
  br i1 %cond333, label %L_8001ac354, label %L_8001ac348_ft
L_8001ac354:
  ; @pc 0x8001ac354 word 0x910006f7
  %r364.p = getelementptr inbounds i8, ptr %c, i64 184
  %r364 = load i64, ptr %r364.p, align 8, !alias.scope !3, !noalias !4
  %t365 = add i64 %r364, 1
  %wp366 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t365, ptr %wp366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac358 word 0xeb0a02ff
  %r367.p = getelementptr inbounds i8, ptr %c, i64 184
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %r368.p = getelementptr inbounds i8, ptr %c, i64 80
  %r368 = load i64, ptr %r368.p, align 8, !alias.scope !3, !noalias !4
  %t369 = sub i64 %r367, %r368
  %fn370 = icmp slt i64 %t369, 0
  %fz371 = icmp eq i64 %t369, 0
  %fc372 = icmp uge i64 %r367, %r368
  %fx1373 = xor i64 %r367, %r368
  %fx2374 = xor i64 %r367, %t369
  %fva375 = and i64 %fx1373, %fx2374
  %fv376 = icmp slt i64 %fva375, 0
  %nz377 = zext i1 %fn370 to i64
  %zz378 = zext i1 %fz371 to i64
  %cz379 = zext i1 %fc372 to i64
  %vz380 = zext i1 %fv376 to i64
  %ns381 = shl i64 %nz377, 31
  %zs382 = shl i64 %zz378, 30
  %cs383 = shl i64 %cz379, 29
  %vs384 = shl i64 %vz380, 28
  %nzor385 = or i64 %ns381, %zs382
  %cvor386 = or i64 %cs383, %vs384
  %nzcv387 = or i64 %nzor385, %cvor386
  %wp388 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv387, ptr %wp388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac35c word 0x54fffdc1
  %r389.p = getelementptr inbounds i8, ptr %c, i64 272
  %r389 = load i64, ptr %r389.p, align 8, !alias.scope !3, !noalias !4
  %fsh391 = lshr i64 %r389, 30
  %ftr392 = trunc i64 %fsh391 to i1
  %cond390 = xor i1 %ftr392, true
  br i1 %cond390, label %L_8001ac314, label %L_8001ac360
L_8001ac360:
  ; @pc 0x8001ac360 word 0x37001f03
  %r393.p = getelementptr inbounds i8, ptr %c, i64 24
  %r393 = load i64, ptr %r393.p, align 8, !alias.scope !3, !noalias !4
  %t394 = and i64 %r393, 1
  %cmp395 = icmp ne i64 %t394, 0
  br i1 %cmp395, label %L_8001ac740, label %L_8001ac364_ft
L_8001ac36c:
  ; @pc 0x8001ac36c word 0xaa1403e0
  %r398.p = getelementptr inbounds i8, ptr %c, i64 160
  %r398 = load i64, ptr %r398.p, align 8, !alias.scope !3, !noalias !4
  %t399 = or i64 0, %r398
  %wp400 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t399, ptr %wp400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac370 word 0x2a0303f7
  %r401.p = getelementptr inbounds i8, ptr %c, i64 24
  %r401 = load i64, ptr %r401.p, align 8, !alias.scope !3, !noalias !4
  %c402 = trunc i64 %r401 to i32
  %t403 = or i32 0, %c402
  %c404 = zext i32 %t403 to i64
  %wp405 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c404, ptr %wp405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac374 word 0xaa0103f9
  %r406.p = getelementptr inbounds i8, ptr %c, i64 8
  %r406 = load i64, ptr %r406.p, align 8, !alias.scope !3, !noalias !4
  %t407 = or i64 0, %r406
  %wp408 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t407, ptr %wp408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac378 word 0xd63f0120
  %r409.p = getelementptr inbounds i8, ptr %c, i64 72
  %r409 = load i64, ptr %r409.p, align 8, !alias.scope !3, !noalias !4
  %fp410 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r409, ptr %fp410, align 8, !alias.scope !3, !noalias !4
  %wp411 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492348, ptr %wp411, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac37c word 0xf9400b09
  %r412.p = getelementptr inbounds i8, ptr %c, i64 192
  %r412 = load i64, ptr %r412.p, align 8, !alias.scope !3, !noalias !4
  %t413 = add i64 %r412, 16
  %gmp414 = inttoptr i64 %t413 to ptr
  %gml415 = load i64, ptr %gmp414, align 1, !alias.scope !4, !noalias !3
  %wp416 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml415, ptr %wp416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac380 word 0xaa1903e1
  %r417.p = getelementptr inbounds i8, ptr %c, i64 200
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %t418 = or i64 0, %r417
  %wp419 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t418, ptr %wp419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac384 word 0x2a1703e3
  %r420.p = getelementptr inbounds i8, ptr %c, i64 184
  %r420 = load i64, ptr %r420.p, align 8, !alias.scope !3, !noalias !4
  %c421 = trunc i64 %r420 to i32
  %t422 = or i32 0, %c421
  %c423 = zext i32 %t422 to i64
  %wp424 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %c423, ptr %wp424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac388 word 0xf9400688
  %r425.p = getelementptr inbounds i8, ptr %c, i64 160
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %t426 = add i64 %r425, 8
  %gmp427 = inttoptr i64 %t426 to ptr
  %gml428 = load i64, ptr %gmp427, align 1, !alias.scope !4, !noalias !3
  %wp429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml428, ptr %wp429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac38c word 0x17ffffd2
  br label %L_8001ac2d4
L_8001ac390:
  ; @pc 0x8001ac390 word 0x387069a1
  %r430.p = getelementptr inbounds i8, ptr %c, i64 104
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %r431.p = getelementptr inbounds i8, ptr %c, i64 128
  %r431 = load i64, ptr %r431.p, align 8, !alias.scope !3, !noalias !4
  %t432 = add i64 %r430, %r431
  %gmp433 = inttoptr i64 %t432 to ptr
  %gml434 = load i8, ptr %gmp433, align 1, !alias.scope !4, !noalias !3
  %c435 = zext i8 %gml434 to i64
  %wp436 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c435, ptr %wp436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac394 word 0x385fe002
  %r437.p = getelementptr inbounds i8, ptr %c, i64 0
  %r437 = load i64, ptr %r437.p, align 8, !alias.scope !3, !noalias !4
  %t438 = add i64 %r437, -2
  %gmp439 = inttoptr i64 %t438 to ptr
  %gml440 = load i8, ptr %gmp439, align 1, !alias.scope !4, !noalias !3
  %c441 = zext i8 %gml440 to i64
  %wp442 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c441, ptr %wp442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac398 word 0x6b02003f
  %r443.p = getelementptr inbounds i8, ptr %c, i64 8
  %r443 = load i64, ptr %r443.p, align 8, !alias.scope !3, !noalias !4
  %c444 = trunc i64 %r443 to i32
  %r445.p = getelementptr inbounds i8, ptr %c, i64 16
  %r445 = load i64, ptr %r445.p, align 8, !alias.scope !3, !noalias !4
  %c446 = trunc i64 %r445 to i32
  %t447 = sub i32 %c444, %c446
  %fn448 = icmp slt i32 %t447, 0
  %fz449 = icmp eq i32 %t447, 0
  %fc450 = icmp uge i32 %c444, %c446
  %fx1451 = xor i32 %c444, %c446
  %fx2452 = xor i32 %c444, %t447
  %fva453 = and i32 %fx1451, %fx2452
  %fv454 = icmp slt i32 %fva453, 0
  %nz455 = zext i1 %fn448 to i64
  %zz456 = zext i1 %fz449 to i64
  %cz457 = zext i1 %fc450 to i64
  %vz458 = zext i1 %fv454 to i64
  %ns459 = shl i64 %nz455, 31
  %zs460 = shl i64 %zz456, 30
  %cs461 = shl i64 %cz457, 29
  %vs462 = shl i64 %vz458, 28
  %nzor463 = or i64 %ns459, %zs460
  %cvor464 = or i64 %cs461, %vs462
  %nzcv465 = or i64 %nzor463, %cvor464
  %wp466 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv465, ptr %wp466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac39c word 0x54fffdc1
  %r467.p = getelementptr inbounds i8, ptr %c, i64 272
  %r467 = load i64, ptr %r467.p, align 8, !alias.scope !3, !noalias !4
  %fsh469 = lshr i64 %r467, 30
  %ftr470 = trunc i64 %fsh469 to i1
  %cond468 = xor i1 %ftr470, true
  br i1 %cond468, label %L_8001ac354, label %L_8001ac3a0_ft
L_8001ac3a4:
  ; @pc 0x8001ac3a4 word 0xb5001695
  %r474.p = getelementptr inbounds i8, ptr %c, i64 168
  %r474 = load i64, ptr %r474.p, align 8, !alias.scope !3, !noalias !4
  %cmp475 = icmp ne i64 %r474, 0
  br i1 %cmp475, label %L_8001ac674, label %L_8001ac3a8
L_8001ac3a8:
  ; @pc 0x8001ac3a8 word 0x52800289
  %c476 = zext i32 20 to i64
  %wp477 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c476, ptr %wp477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3ac word 0x52b84019
  %c478 = zext i32 -1040187392 to i64
  %wp479 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c478, ptr %wp479, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3b0 word 0x9b0962fb
  %r480.p = getelementptr inbounds i8, ptr %c, i64 72
  %r480 = load i64, ptr %r480.p, align 8, !alias.scope !3, !noalias !4
  %r481.p = getelementptr inbounds i8, ptr %c, i64 184
  %r481 = load i64, ptr %r481.p, align 8, !alias.scope !3, !noalias !4
  %t482 = mul i64 %r481, %r480
  %r483.p = getelementptr inbounds i8, ptr %c, i64 192
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %t484 = add i64 %r483, %t482
  %wp485 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t484, ptr %wp485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3b4 word 0xb840cf69
  %r486.p = getelementptr inbounds i8, ptr %c, i64 216
  %r486 = load i64, ptr %r486.p, align 8, !alias.scope !3, !noalias !4
  %t487 = add i64 %r486, 12
  %gmp488 = inttoptr i64 %t487 to ptr
  %gml489 = load i32, ptr %gmp488, align 1, !alias.scope !4, !noalias !3
  %c490 = zext i32 %gml489 to i64
  %wp491 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t487, ptr %wp491, align 8, !alias.scope !3, !noalias !4
  %wp492 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c490, ptr %wp492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3b8 word 0xaa1b03fc
  %r493.p = getelementptr inbounds i8, ptr %c, i64 216
  %r493 = load i64, ptr %r493.p, align 8, !alias.scope !3, !noalias !4
  %t494 = or i64 0, %r493
  %wp495 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t494, ptr %wp495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3bc word 0x0a19013a
  %r496.p = getelementptr inbounds i8, ptr %c, i64 200
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %c497 = trunc i64 %r496 to i32
  %r498.p = getelementptr inbounds i8, ptr %c, i64 72
  %r498 = load i64, ptr %r498.p, align 8, !alias.scope !3, !noalias !4
  %c499 = trunc i64 %r498 to i32
  %t500 = and i32 %c499, %c497
  %c501 = zext i32 %t500 to i64
  %wp502 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c501, ptr %wp502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3c0 word 0x78dfcf89
  %r503.p = getelementptr inbounds i8, ptr %c, i64 224
  %r503 = load i64, ptr %r503.p, align 8, !alias.scope !3, !noalias !4
  %t504 = add i64 %r503, -4
  %gmp505 = inttoptr i64 %t504 to ptr
  %gml506 = load i16, ptr %gmp505, align 1, !alias.scope !4, !noalias !3
  %c507 = sext i16 %gml506 to i32
  %wp508 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t504, ptr %wp508, align 8, !alias.scope !3, !noalias !4
  %c509 = zext i32 %c507 to i64
  %wp510 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c509, ptr %wp510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3c4 word 0x37f80089
  %r511.p = getelementptr inbounds i8, ptr %c, i64 72
  %r511 = load i64, ptr %r511.p, align 8, !alias.scope !3, !noalias !4
  %t512 = and i64 %r511, 2147483648
  %cmp513 = icmp ne i64 %t512, 0
  br i1 %cmp513, label %L_8001ac3d4, label %L_8001ac3c8_ft
L_8001ac3d0:
  ; @pc 0x8001ac3d0 word 0x79400389
  %r523.p = getelementptr inbounds i8, ptr %c, i64 224
  %r523 = load i64, ptr %r523.p, align 8, !alias.scope !3, !noalias !4
  %gmp524 = inttoptr i64 %r523 to ptr
  %gml525 = load i16, ptr %gmp524, align 1, !alias.scope !4, !noalias !3
  %c526 = zext i16 %gml525 to i64
  %wp527 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c526, ptr %wp527, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac3d4
L_8001ac3d4:
  ; @pc 0x8001ac3d4 word 0x529ff388
  %c528 = zext i32 65436 to i64
  %wp529 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c528, ptr %wp529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3d8 word 0x6b29211f
  %r530.p = getelementptr inbounds i8, ptr %c, i64 64
  %r530 = load i64, ptr %r530.p, align 8, !alias.scope !3, !noalias !4
  %c531 = trunc i64 %r530 to i32
  %r532.p = getelementptr inbounds i8, ptr %c, i64 72
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %c533 = trunc i64 %r532 to i16
  %c534 = zext i16 %c533 to i64
  %c535 = trunc i64 %c534 to i32
  %t536 = sub i32 %c531, %c535
  %fn537 = icmp slt i32 %t536, 0
  %fz538 = icmp eq i32 %t536, 0
  %fc539 = icmp uge i32 %c531, %c535
  %fx1540 = xor i32 %c531, %c535
  %fx2541 = xor i32 %c531, %t536
  %fva542 = and i32 %fx1540, %fx2541
  %fv543 = icmp slt i32 %fva542, 0
  %nz544 = zext i1 %fn537 to i64
  %zz545 = zext i1 %fz538 to i64
  %cz546 = zext i1 %fc539 to i64
  %vz547 = zext i1 %fv543 to i64
  %ns548 = shl i64 %nz544, 31
  %zs549 = shl i64 %zz545, 30
  %cs550 = shl i64 %cz546, 29
  %vs551 = shl i64 %vz547, 28
  %nzor552 = or i64 %ns548, %zs549
  %cvor553 = or i64 %cs550, %vs551
  %nzcv554 = or i64 %nzor552, %cvor553
  %wp555 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv554, ptr %wp555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3dc word 0x54001043
  %r556.p = getelementptr inbounds i8, ptr %c, i64 272
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %fsh558 = lshr i64 %r556, 29
  %ftr559 = trunc i64 %fsh558 to i1
  %cond557 = xor i1 %ftr559, true
  br i1 %cond557, label %L_8001ac5e4, label %L_8001ac3e0_ft
L_8001ac40c:
  ; @pc 0x8001ac40c word 0xf8697954
  %r688.p = getelementptr inbounds i8, ptr %c, i64 80
  %r688 = load i64, ptr %r688.p, align 8, !alias.scope !3, !noalias !4
  %r689.p = getelementptr inbounds i8, ptr %c, i64 72
  %r689 = load i64, ptr %r689.p, align 8, !alias.scope !3, !noalias !4
  %t690 = shl i64 %r689, 3
  %t691 = add i64 %r688, %t690
  %gmp692 = inttoptr i64 %t691 to ptr
  %gml693 = load i64, ptr %gmp692, align 1, !alias.scope !4, !noalias !3
  %wp694 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml693, ptr %wp694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac410 word 0xb4001634
  %r695.p = getelementptr inbounds i8, ptr %c, i64 160
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %cmp696 = icmp eq i64 %r695, 0
  br i1 %cmp696, label %L_8001ac6d4, label %L_8001ac414_ft
L_8001ac458:
  ; @pc 0x8001ac458 word 0xb9403c08
  %r799.p = getelementptr inbounds i8, ptr %c, i64 0
  %r799 = load i64, ptr %r799.p, align 8, !alias.scope !3, !noalias !4
  %t800 = add i64 %r799, 60
  %gmp801 = inttoptr i64 %t800 to ptr
  %gml802 = load i32, ptr %gmp801, align 1, !alias.scope !4, !noalias !3
  %c803 = zext i32 %gml802 to i64
  %wp804 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c803, ptr %wp804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac45c word 0x5280018b
  %c805 = zext i32 12 to i64
  %wp806 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c805, ptr %wp806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac460 word 0xb9404c09
  %r807.p = getelementptr inbounds i8, ptr %c, i64 0
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %t808 = add i64 %r807, 76
  %gmp809 = inttoptr i64 %t808 to ptr
  %gml810 = load i32, ptr %gmp809, align 1, !alias.scope !4, !noalias !3
  %c811 = zext i32 %gml810 to i64
  %wp812 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c811, ptr %wp812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac464 word 0x0b080128
  %r813.p = getelementptr inbounds i8, ptr %c, i64 72
  %r813 = load i64, ptr %r813.p, align 8, !alias.scope !3, !noalias !4
  %c814 = trunc i64 %r813 to i32
  %r815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %c816 = trunc i64 %r815 to i32
  %t817 = add i32 %c814, %c816
  %c818 = zext i32 %t817 to i64
  %wp819 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c818, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac468 word 0xb9405c09
  %r820.p = getelementptr inbounds i8, ptr %c, i64 0
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %t821 = add i64 %r820, 92
  %gmp822 = inttoptr i64 %t821 to ptr
  %gml823 = load i32, ptr %gmp822, align 1, !alias.scope !4, !noalias !3
  %c824 = zext i32 %gml823 to i64
  %wp825 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c824, ptr %wp825, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac46c word 0xb9407c0a
  %r826.p = getelementptr inbounds i8, ptr %c, i64 0
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %t827 = add i64 %r826, 124
  %gmp828 = inttoptr i64 %t827 to ptr
  %gml829 = load i32, ptr %gmp828, align 1, !alias.scope !4, !noalias !3
  %c830 = zext i32 %gml829 to i64
  %wp831 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c830, ptr %wp831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac470 word 0x1b0b7d4a
  %r832.p = getelementptr inbounds i8, ptr %c, i64 88
  %r832 = load i64, ptr %r832.p, align 8, !alias.scope !3, !noalias !4
  %c833 = trunc i64 %r832 to i32
  %r834.p = getelementptr inbounds i8, ptr %c, i64 80
  %r834 = load i64, ptr %r834.p, align 8, !alias.scope !3, !noalias !4
  %c835 = trunc i64 %r834 to i32
  %t836 = mul i32 %c835, %c833
  %t837 = add i32 0, %t836
  %c838 = zext i32 %t837 to i64
  %wp839 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c838, ptr %wp839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac474 word 0x0b090108
  %r840.p = getelementptr inbounds i8, ptr %c, i64 64
  %r840 = load i64, ptr %r840.p, align 8, !alias.scope !3, !noalias !4
  %c841 = trunc i64 %r840 to i32
  %r842.p = getelementptr inbounds i8, ptr %c, i64 72
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %c843 = trunc i64 %r842 to i32
  %t844 = add i32 %c841, %c843
  %c845 = zext i32 %t844 to i64
  %wp846 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c845, ptr %wp846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac478 word 0xb9406c09
  %r847.p = getelementptr inbounds i8, ptr %c, i64 0
  %r847 = load i64, ptr %r847.p, align 8, !alias.scope !3, !noalias !4
  %t848 = add i64 %r847, 108
  %gmp849 = inttoptr i64 %t848 to ptr
  %gml850 = load i32, ptr %gmp849, align 1, !alias.scope !4, !noalias !3
  %c851 = zext i32 %gml850 to i64
  %wp852 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c851, ptr %wp852, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac47c word 0xf9400a80
  %r853.p = getelementptr inbounds i8, ptr %c, i64 160
  %r853 = load i64, ptr %r853.p, align 8, !alias.scope !3, !noalias !4
  %t854 = add i64 %r853, 16
  %gmp855 = inttoptr i64 %t854 to ptr
  %gml856 = load i64, ptr %gmp855, align 1, !alias.scope !4, !noalias !3
  %wp857 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml856, ptr %wp857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac480 word 0x0b080948
  %r858.p = getelementptr inbounds i8, ptr %c, i64 80
  %r858 = load i64, ptr %r858.p, align 8, !alias.scope !3, !noalias !4
  %c859 = trunc i64 %r858 to i32
  %r860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %c861 = trunc i64 %r860 to i32
  %t862 = shl i32 %c861, 2
  %t863 = add i32 %c859, %t862
  %c864 = zext i32 %t863 to i64
  %wp865 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c864, ptr %wp865, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac484 word 0x0b150129
  %r866.p = getelementptr inbounds i8, ptr %c, i64 72
  %r866 = load i64, ptr %r866.p, align 8, !alias.scope !3, !noalias !4
  %c867 = trunc i64 %r866 to i32
  %r868.p = getelementptr inbounds i8, ptr %c, i64 168
  %r868 = load i64, ptr %r868.p, align 8, !alias.scope !3, !noalias !4
  %c869 = trunc i64 %r868 to i32
  %t870 = add i32 %c867, %c869
  %c871 = zext i32 %t870 to i64
  %wp872 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c871, ptr %wp872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac488 word 0x0b090d15
  %r873.p = getelementptr inbounds i8, ptr %c, i64 64
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %c874 = trunc i64 %r873 to i32
  %r875.p = getelementptr inbounds i8, ptr %c, i64 72
  %r875 = load i64, ptr %r875.p, align 8, !alias.scope !3, !noalias !4
  %c876 = trunc i64 %r875 to i32
  %t877 = shl i32 %c876, 3
  %t878 = add i32 %c874, %t877
  %c879 = zext i32 %t878 to i64
  %wp880 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac48c word 0xb4000100
  %r881.p = getelementptr inbounds i8, ptr %c, i64 0
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %cmp882 = icmp eq i64 %r881, 0
  br i1 %cmp882, label %L_8001ac4ac, label %L_8001ac490_ft
L_8001ac4a8:
  ; @pc 0x8001ac4a8 word 0xf9400400
  %r924.p = getelementptr inbounds i8, ptr %c, i64 0
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = add i64 %r924, 8
  %gmp926 = inttoptr i64 %t925 to ptr
  %gml927 = load i64, ptr %gmp926, align 1, !alias.scope !4, !noalias !3
  %wp928 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml927, ptr %wp928, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac4ac
L_8001ac4ac:
  ; @pc 0x8001ac4ac word 0x8b35c009
  %r929.p = getelementptr inbounds i8, ptr %c, i64 0
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %r930.p = getelementptr inbounds i8, ptr %c, i64 168
  %r930 = load i64, ptr %r930.p, align 8, !alias.scope !3, !noalias !4
  %c931 = trunc i64 %r930 to i32
  %c932 = sext i32 %c931 to i64
  %t933 = add i64 %r929, %c932
  %wp934 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t933, ptr %wp934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4b0 word 0x2a1f03e8
  %t935 = or i32 0, 0
  %c936 = zext i32 %t935 to i64
  %wp937 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c936, ptr %wp937, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac4b4
L_8001ac4b4:
  ; @pc 0x8001ac4b4 word 0xf9000269
  %r938.p = getelementptr inbounds i8, ptr %c, i64 152
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %r939.p = getelementptr inbounds i8, ptr %c, i64 72
  %r939 = load i64, ptr %r939.p, align 8, !alias.scope !3, !noalias !4
  %gmp940 = inttoptr i64 %r938 to ptr
  store i64 %r939, ptr %gmp940, align 1, !alias.scope !4, !noalias !3
  br label %L_8001ac4b8
L_8001ac4b8:
  ; @pc 0x8001ac4b8 word 0xa9574ff4
  %r941.p = getelementptr inbounds i8, ptr %c, i64 256
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %t942 = add i64 %r941, 368
  %t943 = add i64 %t942, 8
  %gmp944 = inttoptr i64 %t942 to ptr
  %gml945 = load i64, ptr %gmp944, align 1, !alias.scope !4, !noalias !3
  %gmp946 = inttoptr i64 %t943 to ptr
  %gml947 = load i64, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %wp948 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml945, ptr %wp948, align 8, !alias.scope !3, !noalias !4
  %wp949 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml947, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4bc word 0x7100011f
  %r950.p = getelementptr inbounds i8, ptr %c, i64 64
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %c951 = trunc i64 %r950 to i32
  %t952 = sub i32 %c951, 0
  %fn953 = icmp slt i32 %t952, 0
  %fz954 = icmp eq i32 %t952, 0
  %fc955 = icmp uge i32 %c951, 0
  %fx1956 = xor i32 %c951, 0
  %fx2957 = xor i32 %c951, %t952
  %fva958 = and i32 %fx1956, %fx2957
  %fv959 = icmp slt i32 %fva958, 0
  %nz960 = zext i1 %fn953 to i64
  %zz961 = zext i1 %fz954 to i64
  %cz962 = zext i1 %fc955 to i64
  %vz963 = zext i1 %fv959 to i64
  %ns964 = shl i64 %nz960, 31
  %zs965 = shl i64 %zz961, 30
  %cs966 = shl i64 %cz962, 29
  %vs967 = shl i64 %vz963, 28
  %nzor968 = or i64 %ns964, %zs965
  %cvor969 = or i64 %cs966, %vs967
  %nzcv970 = or i64 %nzor968, %cvor969
  %wp971 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv970, ptr %wp971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4c0 word 0xa95657f6
  %r972.p = getelementptr inbounds i8, ptr %c, i64 256
  %r972 = load i64, ptr %r972.p, align 8, !alias.scope !3, !noalias !4
  %t973 = add i64 %r972, 352
  %t974 = add i64 %t973, 8
  %gmp975 = inttoptr i64 %t973 to ptr
  %gml976 = load i64, ptr %gmp975, align 1, !alias.scope !4, !noalias !3
  %gmp977 = inttoptr i64 %t974 to ptr
  %gml978 = load i64, ptr %gmp977, align 1, !alias.scope !4, !noalias !3
  %wp979 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml976, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  %wp980 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml978, ptr %wp980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4c4 word 0x1a9f17e0
  %t981 = add i32 0, 1
  %r982.p = getelementptr inbounds i8, ptr %c, i64 272
  %r982 = load i64, ptr %r982.p, align 8, !alias.scope !3, !noalias !4
  %fsh984 = lshr i64 %r982, 30
  %ftr985 = trunc i64 %fsh984 to i1
  %cond983 = xor i1 %ftr985, true
  %sel986 = select i1 %cond983, i32 0, i32 %t981
  %c987 = zext i32 %sel986 to i64
  %wp988 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c987, ptr %wp988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4c8 word 0xa9555ff8
  %r989.p = getelementptr inbounds i8, ptr %c, i64 256
  %r989 = load i64, ptr %r989.p, align 8, !alias.scope !3, !noalias !4
  %t990 = add i64 %r989, 336
  %t991 = add i64 %t990, 8
  %gmp992 = inttoptr i64 %t990 to ptr
  %gml993 = load i64, ptr %gmp992, align 1, !alias.scope !4, !noalias !3
  %gmp994 = inttoptr i64 %t991 to ptr
  %gml995 = load i64, ptr %gmp994, align 1, !alias.scope !4, !noalias !3
  %wp996 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml993, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  %wp997 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml995, ptr %wp997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4cc word 0xa95467fa
  %r998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r998 = load i64, ptr %r998.p, align 8, !alias.scope !3, !noalias !4
  %t999 = add i64 %r998, 320
  %t1000 = add i64 %t999, 8
  %gmp1001 = inttoptr i64 %t999 to ptr
  %gml1002 = load i64, ptr %gmp1001, align 1, !alias.scope !4, !noalias !3
  %gmp1003 = inttoptr i64 %t1000 to ptr
  %gml1004 = load i64, ptr %gmp1003, align 1, !alias.scope !4, !noalias !3
  %wp1005 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1002, ptr %wp1005, align 8, !alias.scope !3, !noalias !4
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1004, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4d0 word 0xa9536ffc
  %r1007.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1007 = load i64, ptr %r1007.p, align 8, !alias.scope !3, !noalias !4
  %t1008 = add i64 %r1007, 304
  %t1009 = add i64 %t1008, 8
  %gmp1010 = inttoptr i64 %t1008 to ptr
  %gml1011 = load i64, ptr %gmp1010, align 1, !alias.scope !4, !noalias !3
  %gmp1012 = inttoptr i64 %t1009 to ptr
  %gml1013 = load i64, ptr %gmp1012, align 1, !alias.scope !4, !noalias !3
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1011, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  %wp1015 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1013, ptr %wp1015, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4d4 word 0xa9527bfd
  %r1016.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1016 = load i64, ptr %r1016.p, align 8, !alias.scope !3, !noalias !4
  %t1017 = add i64 %r1016, 288
  %t1018 = add i64 %t1017, 8
  %gmp1019 = inttoptr i64 %t1017 to ptr
  %gml1020 = load i64, ptr %gmp1019, align 1, !alias.scope !4, !noalias !3
  %gmp1021 = inttoptr i64 %t1018 to ptr
  %gml1022 = load i64, ptr %gmp1021, align 1, !alias.scope !4, !noalias !3
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1020, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  %wp1024 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1022, ptr %wp1024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4d8 word 0x910603ff
  %r1025.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1025 = load i64, ptr %r1025.p, align 8, !alias.scope !3, !noalias !4
  %t1026 = add i64 %r1025, 384
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4dc word 0xd65f03c0
  ret void
L_8001ac4e0:
  ; @pc 0x8001ac4e0 word 0xb940610a
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %t1029 = add i64 %r1028, 96
  %gmp1030 = inttoptr i64 %t1029 to ptr
  %gml1031 = load i32, ptr %gmp1030, align 1, !alias.scope !4, !noalias !3
  %c1032 = zext i32 %gml1031 to i64
  %wp1033 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1032, ptr %wp1033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4e4 word 0x6b09015f
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %c1035 = trunc i64 %r1034 to i32
  %r1036.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1036 = load i64, ptr %r1036.p, align 8, !alias.scope !3, !noalias !4
  %c1037 = trunc i64 %r1036 to i32
  %t1038 = sub i32 %c1035, %c1037
  %fn1039 = icmp slt i32 %t1038, 0
  %fz1040 = icmp eq i32 %t1038, 0
  %fc1041 = icmp uge i32 %c1035, %c1037
  %fx11042 = xor i32 %c1035, %c1037
  %fx21043 = xor i32 %c1035, %t1038
  %fva1044 = and i32 %fx11042, %fx21043
  %fv1045 = icmp slt i32 %fva1044, 0
  %nz1046 = zext i1 %fn1039 to i64
  %zz1047 = zext i1 %fz1040 to i64
  %cz1048 = zext i1 %fc1041 to i64
  %vz1049 = zext i1 %fv1045 to i64
  %ns1050 = shl i64 %nz1046, 31
  %zs1051 = shl i64 %zz1047, 30
  %cs1052 = shl i64 %cz1048, 29
  %vs1053 = shl i64 %vz1049, 28
  %nzor1054 = or i64 %ns1050, %zs1051
  %cvor1055 = or i64 %cs1052, %vs1053
  %nzcv1056 = or i64 %nzor1054, %cvor1055
  %wp1057 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1056, ptr %wp1057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4e8 word 0x5400164d
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %fsh1060 = lshr i64 %r1058, 30
  %ftr1061 = trunc i64 %fsh1060 to i1
  %fsh1062 = lshr i64 %r1058, 31
  %ftr1063 = trunc i64 %fsh1062 to i1
  %fsh1064 = lshr i64 %r1058, 28
  %ftr1065 = trunc i64 %fsh1064 to i1
  %fnz1066 = xor i1 %ftr1061, true
  %feq1067 = icmp eq i1 %ftr1063, %ftr1065
  %fgt1068 = and i1 %fnz1066, %feq1067
  %cond1059 = xor i1 %fgt1068, true
  br i1 %cond1059, label %L_8001ac7b0, label %L_8001ac4ec_ft
L_8001ac4f4:
  ; @pc 0x8001ac4f4 word 0xf001bd88
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4f8 word 0xf9452d08
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %t1085 = add i64 %r1084, 2648
  %gmp1086 = inttoptr i64 %t1085 to ptr
  %gml1087 = load i64, ptr %gmp1086, align 1, !alias.scope !4, !noalias !3
  %wp1088 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1087, ptr %wp1088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4fc word 0x08dffd08
  %r1089.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1089 = load i64, ptr %r1089.p, align 8, !alias.scope !3, !noalias !4
  %atp1090 = inttoptr i64 %r1089 to ptr
  %lda1091 = load atomic i8, ptr %atp1090 acquire, align 1, !alias.scope !4, !noalias !3
  %c1092 = zext i8 %lda1091 to i64
  %wp1093 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1092, ptr %wp1093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac500 word 0x360017e8
  %r1094.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1094 = load i64, ptr %r1094.p, align 8, !alias.scope !3, !noalias !4
  %t1095 = and i64 %r1094, 1
  %cmp1096 = icmp eq i64 %t1095, 0
  br i1 %cmp1096, label %L_8001ac7fc, label %L_8001ac504
L_8001ac504:
  ; @pc 0x8001ac504 word 0xb4000115
  %r1097.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1097 = load i64, ptr %r1097.p, align 8, !alias.scope !3, !noalias !4
  %cmp1098 = icmp eq i64 %r1097, 0
  br i1 %cmp1098, label %L_8001ac524, label %L_8001ac508_ft
L_8001ac524:
  ; @pc 0x8001ac524 word 0xf001bd88
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac528 word 0xf9453508
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = add i64 %r1122, 2664
  %gmp1124 = inttoptr i64 %t1123 to ptr
  %gml1125 = load i64, ptr %gmp1124, align 1, !alias.scope !4, !noalias !3
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac52c word 0x08dffd08
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %atp1128 = inttoptr i64 %r1127 to ptr
  %lda1129 = load atomic i8, ptr %atp1128 acquire, align 1, !alias.scope !4, !noalias !3
  %c1130 = zext i8 %lda1129 to i64
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1130, ptr %wp1131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac530 word 0x36001828
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %t1133 = and i64 %r1132, 1
  %cmp1134 = icmp eq i64 %t1133, 0
  br i1 %cmp1134, label %L_8001ac834, label %L_8001ac534
L_8001ac534:
  ; @pc 0x8001ac534 word 0xb4000115
  %r1135.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1135 = load i64, ptr %r1135.p, align 8, !alias.scope !3, !noalias !4
  %cmp1136 = icmp eq i64 %r1135, 0
  br i1 %cmp1136, label %L_8001ac554, label %L_8001ac538_ft
L_8001ac554:
  ; @pc 0x8001ac554 word 0xf001bd88
  %wp1159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac558 word 0xf9453d08
  %r1160.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1160 = load i64, ptr %r1160.p, align 8, !alias.scope !3, !noalias !4
  %t1161 = add i64 %r1160, 2680
  %gmp1162 = inttoptr i64 %t1161 to ptr
  %gml1163 = load i64, ptr %gmp1162, align 1, !alias.scope !4, !noalias !3
  %wp1164 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1163, ptr %wp1164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac55c word 0x08dffd08
  %r1165.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1165 = load i64, ptr %r1165.p, align 8, !alias.scope !3, !noalias !4
  %atp1166 = inttoptr i64 %r1165 to ptr
  %lda1167 = load atomic i8, ptr %atp1166 acquire, align 1, !alias.scope !4, !noalias !3
  %c1168 = zext i8 %lda1167 to i64
  %wp1169 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1168, ptr %wp1169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac560 word 0x36001868
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %t1171 = and i64 %r1170, 1
  %cmp1172 = icmp eq i64 %t1171, 0
  br i1 %cmp1172, label %L_8001ac86c, label %L_8001ac564
L_8001ac564:
  ; @pc 0x8001ac564 word 0xb4000115
  %r1173.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1173 = load i64, ptr %r1173.p, align 8, !alias.scope !3, !noalias !4
  %cmp1174 = icmp eq i64 %r1173, 0
  br i1 %cmp1174, label %L_8001ac584, label %L_8001ac568_ft
L_8001ac584:
  ; @pc 0x8001ac584 word 0xf001bd88
  %wp1197 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac588 word 0xf9454508
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %t1199 = add i64 %r1198, 2696
  %gmp1200 = inttoptr i64 %t1199 to ptr
  %gml1201 = load i64, ptr %gmp1200, align 1, !alias.scope !4, !noalias !3
  %wp1202 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1201, ptr %wp1202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac58c word 0x08dffd08
  %r1203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1203 = load i64, ptr %r1203.p, align 8, !alias.scope !3, !noalias !4
  %atp1204 = inttoptr i64 %r1203 to ptr
  %lda1205 = load atomic i8, ptr %atp1204 acquire, align 1, !alias.scope !4, !noalias !3
  %c1206 = zext i8 %lda1205 to i64
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac590 word 0x360018a8
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %t1209 = and i64 %r1208, 1
  %cmp1210 = icmp eq i64 %t1209, 0
  br i1 %cmp1210, label %L_8001ac8a4, label %L_8001ac594
L_8001ac594:
  ; @pc 0x8001ac594 word 0xb4000115
  %r1211.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1211 = load i64, ptr %r1211.p, align 8, !alias.scope !3, !noalias !4
  %cmp1212 = icmp eq i64 %r1211, 0
  br i1 %cmp1212, label %L_8001ac5b4, label %L_8001ac598_ft
L_8001ac5b4:
  ; @pc 0x8001ac5b4 word 0xf001bd88
  %wp1235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5b8 word 0xf9454d08
  %r1236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1236 = load i64, ptr %r1236.p, align 8, !alias.scope !3, !noalias !4
  %t1237 = add i64 %r1236, 2712
  %gmp1238 = inttoptr i64 %t1237 to ptr
  %gml1239 = load i64, ptr %gmp1238, align 1, !alias.scope !4, !noalias !3
  %wp1240 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1239, ptr %wp1240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5bc word 0x08dffd08
  %r1241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1241 = load i64, ptr %r1241.p, align 8, !alias.scope !3, !noalias !4
  %atp1242 = inttoptr i64 %r1241 to ptr
  %lda1243 = load atomic i8, ptr %atp1242 acquire, align 1, !alias.scope !4, !noalias !3
  %c1244 = zext i8 %lda1243 to i64
  %wp1245 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1244, ptr %wp1245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5c0 word 0x360018e8
  %r1246.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1246 = load i64, ptr %r1246.p, align 8, !alias.scope !3, !noalias !4
  %t1247 = and i64 %r1246, 1
  %cmp1248 = icmp eq i64 %t1247, 0
  br i1 %cmp1248, label %L_8001ac8dc, label %L_8001ac5c4
L_8001ac5c4:
  ; @pc 0x8001ac5c4 word 0xb4fff075
  %r1249.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1249 = load i64, ptr %r1249.p, align 8, !alias.scope !3, !noalias !4
  %cmp1250 = icmp eq i64 %r1249, 0
  br i1 %cmp1250, label %L_8001ac3d0, label %L_8001ac5c8_ft
L_8001ac5e4:
  ; @pc 0x8001ac5e4 word 0xb9400368
  %r1273.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1273 = load i64, ptr %r1273.p, align 8, !alias.scope !3, !noalias !4
  %gmp1274 = inttoptr i64 %r1273 to ptr
  %gml1275 = load i32, ptr %gmp1274, align 1, !alias.scope !4, !noalias !3
  %c1276 = zext i32 %gml1275 to i64
  %wp1277 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1276, ptr %wp1277, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5e8 word 0x6b19035f
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1278 = load i64, ptr %r1278.p, align 8, !alias.scope !3, !noalias !4
  %c1279 = trunc i64 %r1278 to i32
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 200
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
  ; @pc 0x8001ac5ec word 0x12077509
  %r1302.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1302 = load i64, ptr %r1302.p, align 8, !alias.scope !3, !noalias !4
  %c1303 = trunc i64 %r1302 to i32
  %t1304 = and i32 %c1303, -25165825
  %c1305 = zext i32 %t1304 to i64
  %wp1306 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1305, ptr %wp1306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5f0 word 0x7a401924
  %r1307.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1307 = load i64, ptr %r1307.p, align 8, !alias.scope !3, !noalias !4
  %fsh1309 = lshr i64 %r1307, 30
  %ftr1310 = trunc i64 %fsh1309 to i1
  %cond1308 = xor i1 %ftr1310, true
  %r1311.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1311 = load i64, ptr %r1311.p, align 8, !alias.scope !3, !noalias !4
  %c1312 = trunc i64 %r1311 to i32
  %t1313 = sub i32 %c1312, 0
  %cmp1314 = icmp slt i32 %t1313, 0
  %cmp1315 = icmp eq i32 %t1313, 0
  %cmp1316 = icmp uge i32 %c1312, 0
  %t1317 = xor i32 %c1312, 0
  %t1318 = xor i32 %c1312, %t1313
  %t1319 = and i32 %t1317, %t1318
  %cmp1320 = icmp slt i32 %t1319, 0
  %c1321 = zext i1 %cmp1314 to i64
  %t1322 = shl i64 %c1321, 31
  %c1323 = zext i1 %cmp1315 to i64
  %t1324 = shl i64 %c1323, 30
  %c1325 = zext i1 %cmp1316 to i64
  %t1326 = shl i64 %c1325, 29
  %c1327 = zext i1 %cmp1320 to i64
  %t1328 = shl i64 %c1327, 28
  %t1329 = or i64 %t1326, %t1328
  %t1330 = or i64 %t1322, %t1324
  %t1331 = or i64 %t1330, %t1329
  %sel1332 = select i1 %cond1308, i64 %t1331, i64 1073741824
  %wp1333 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel1332, ptr %wp1333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5f4 word 0x54000161
  %r1334.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1334 = load i64, ptr %r1334.p, align 8, !alias.scope !3, !noalias !4
  %fsh1336 = lshr i64 %r1334, 30
  %ftr1337 = trunc i64 %fsh1336 to i1
  %cond1335 = xor i1 %ftr1337, true
  br i1 %cond1335, label %L_8001ac620, label %L_8001ac5f8
L_8001ac5f8:
  ; @pc 0x8001ac5f8 word 0x2a1f03e8
  %t1338 = or i32 0, 0
  %c1339 = zext i32 %t1338 to i64
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1339, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac5fc
L_8001ac5fc:
  ; @pc 0x8001ac5fc word 0xd001c889
  %wp1341 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34421334016, ptr %wp1341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac600 word 0x9116c129
  %r1342.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1342 = load i64, ptr %r1342.p, align 8, !alias.scope !3, !noalias !4
  %t1343 = add i64 %r1342, 1456
  %wp1344 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1343, ptr %wp1344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac604 word 0x17ffffac
  br label %L_8001ac4b4
L_8001ac608:
  ; @pc 0x8001ac608 word 0xf001bd89
  %wp1345 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac60c word 0xf9464529
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %t1347 = add i64 %r1346, 3208
  %gmp1348 = inttoptr i64 %t1347 to ptr
  %gml1349 = load i64, ptr %gmp1348, align 1, !alias.scope !4, !noalias !3
  %wp1350 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1349, ptr %wp1350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac610 word 0xeb09011f
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %r1352.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1352 = load i64, ptr %r1352.p, align 8, !alias.scope !3, !noalias !4
  %t1353 = sub i64 %r1351, %r1352
  %fn1354 = icmp slt i64 %t1353, 0
  %fz1355 = icmp eq i64 %t1353, 0
  %fc1356 = icmp uge i64 %r1351, %r1352
  %fx11357 = xor i64 %r1351, %r1352
  %fx21358 = xor i64 %r1351, %t1353
  %fva1359 = and i64 %fx11357, %fx21358
  %fv1360 = icmp slt i64 %fva1359, 0
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
  ; @pc 0x8001ac614 word 0x54fff4a0
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %fsh1375 = lshr i64 %r1373, 30
  %cond1374 = trunc i64 %fsh1375 to i1
  br i1 %cond1374, label %L_8001ac4a8, label %L_8001ac618_ft
L_8001ac620:
  ; @pc 0x8001ac620 word 0xf9400689
  %r1379.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1379 = load i64, ptr %r1379.p, align 8, !alias.scope !3, !noalias !4
  %t1380 = add i64 %r1379, 8
  %gmp1381 = inttoptr i64 %t1380 to ptr
  %gml1382 = load i64, ptr %gmp1381, align 1, !alias.scope !4, !noalias !3
  %wp1383 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1382, ptr %wp1383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac624 word 0x910023e1
  %r1384.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1384 = load i64, ptr %r1384.p, align 8, !alias.scope !3, !noalias !4
  %t1385 = add i64 %r1384, 8
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1385, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac628 word 0xf940092a
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %t1388 = add i64 %r1387, 16
  %gmp1389 = inttoptr i64 %t1388 to ptr
  %gml1390 = load i64, ptr %gmp1389, align 1, !alias.scope !4, !noalias !3
  %wp1391 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1390, ptr %wp1391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac62c word 0xf9401120
  %r1392.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1392 = load i64, ptr %r1392.p, align 8, !alias.scope !3, !noalias !4
  %t1393 = add i64 %r1392, 32
  %gmp1394 = inttoptr i64 %t1393 to ptr
  %gml1395 = load i64, ptr %gmp1394, align 1, !alias.scope !4, !noalias !3
  %wp1396 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1395, ptr %wp1396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac630 word 0xf940194b
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %t1398 = add i64 %r1397, 48
  %gmp1399 = inttoptr i64 %t1398 to ptr
  %gml1400 = load i64, ptr %gmp1399, align 1, !alias.scope !4, !noalias !3
  %wp1401 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1400, ptr %wp1401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac634 word 0xf940094a
  %r1402.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1402 = load i64, ptr %r1402.p, align 8, !alias.scope !3, !noalias !4
  %t1403 = add i64 %r1402, 16
  %gmp1404 = inttoptr i64 %t1403 to ptr
  %gml1405 = load i64, ptr %gmp1404, align 1, !alias.scope !4, !noalias !3
  %wp1406 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1405, ptr %wp1406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac638 word 0x7940556c
  %r1407.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1407 = load i64, ptr %r1407.p, align 8, !alias.scope !3, !noalias !4
  %t1408 = add i64 %r1407, 42
  %gmp1409 = inttoptr i64 %t1408 to ptr
  %gml1410 = load i16, ptr %gmp1409, align 1, !alias.scope !4, !noalias !3
  %c1411 = zext i16 %gml1410 to i64
  %wp1412 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1411, ptr %wp1412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac63c word 0x8b282188
  %r1413.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1413 = load i64, ptr %r1413.p, align 8, !alias.scope !3, !noalias !4
  %r1414.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1414 = load i64, ptr %r1414.p, align 8, !alias.scope !3, !noalias !4
  %c1415 = trunc i64 %r1414 to i16
  %c1416 = zext i16 %c1415 to i64
  %t1417 = add i64 %r1413, %c1416
  %wp1418 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1417, ptr %wp1418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac640 word 0x8b080d68
  %r1419.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1419 = load i64, ptr %r1419.p, align 8, !alias.scope !3, !noalias !4
  %r1420.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1420 = load i64, ptr %r1420.p, align 8, !alias.scope !3, !noalias !4
  %t1421 = shl i64 %r1420, 3
  %t1422 = add i64 %r1419, %t1421
  %wp1423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1422, ptr %wp1423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac644 word 0xb980254b
  %r1424.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1424 = load i64, ptr %r1424.p, align 8, !alias.scope !3, !noalias !4
  %t1425 = add i64 %r1424, 36
  %gmp1426 = inttoptr i64 %t1425 to ptr
  %gml1427 = load i32, ptr %gmp1426, align 1, !alias.scope !4, !noalias !3
  %c1428 = sext i32 %gml1427 to i64
  %wp1429 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1428, ptr %wp1429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac648 word 0xb9403108
  %r1430.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1430 = load i64, ptr %r1430.p, align 8, !alias.scope !3, !noalias !4
  %t1431 = add i64 %r1430, 48
  %gmp1432 = inttoptr i64 %t1431 to ptr
  %gml1433 = load i32, ptr %gmp1432, align 1, !alias.scope !4, !noalias !3
  %c1434 = zext i32 %gml1433 to i64
  %wp1435 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1434, ptr %wp1435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac64c word 0x8b0b014a
  %r1436.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1436 = load i64, ptr %r1436.p, align 8, !alias.scope !3, !noalias !4
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %t1438 = add i64 %r1436, %r1437
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac650 word 0x92405508
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %t1441 = and i64 %r1440, 4194303
  %wp1442 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1441, ptr %wp1442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac654 word 0x8b080148
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %r1444.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1444 = load i64, ptr %r1444.p, align 8, !alias.scope !3, !noalias !4
  %t1445 = add i64 %r1443, %r1444
  %wp1446 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1445, ptr %wp1446, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac658 word 0xf90007e8
  %r1447.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1447 = load i64, ptr %r1447.p, align 8, !alias.scope !3, !noalias !4
  %t1448 = add i64 %r1447, 8
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %gmp1450 = inttoptr i64 %t1448 to ptr
  store i64 %r1449, ptr %gmp1450, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac65c word 0xf9400008
  %r1451.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1451 = load i64, ptr %r1451.p, align 8, !alias.scope !3, !noalias !4
  %gmp1452 = inttoptr i64 %r1451 to ptr
  %gml1453 = load i64, ptr %gmp1452, align 1, !alias.scope !4, !noalias !3
  %wp1454 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1453, ptr %wp1454, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac660 word 0xf9407d08
  %r1455.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1455 = load i64, ptr %r1455.p, align 8, !alias.scope !3, !noalias !4
  %t1456 = add i64 %r1455, 248
  %gmp1457 = inttoptr i64 %t1456 to ptr
  %gml1458 = load i64, ptr %gmp1457, align 1, !alias.scope !4, !noalias !3
  %wp1459 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1458, ptr %wp1459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac664 word 0xd63f0100
  %r1460.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1460 = load i64, ptr %r1460.p, align 8, !alias.scope !3, !noalias !4
  %fp1461 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1460, ptr %fp1461, align 8, !alias.scope !3, !noalias !4
  %wp1462 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493096, ptr %wp1462, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac668 word 0x2a1f03e8
  %t1463 = or i32 0, 0
  %c1464 = zext i32 %t1463 to i64
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1464, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac66c word 0xf9000260
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %r1467.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1467 = load i64, ptr %r1467.p, align 8, !alias.scope !3, !noalias !4
  %gmp1468 = inttoptr i64 %r1466 to ptr
  store i64 %r1467, ptr %gmp1468, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac670 word 0x17ffff92
  br label %L_8001ac4b8
L_8001ac674:
  ; @pc 0x8001ac674 word 0x52800289
  %c1469 = zext i32 20 to i64
  %wp1470 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1469, ptr %wp1470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac678 word 0x9b0962e9
  %r1471.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1471 = load i64, ptr %r1471.p, align 8, !alias.scope !3, !noalias !4
  %r1472.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1472 = load i64, ptr %r1472.p, align 8, !alias.scope !3, !noalias !4
  %t1473 = mul i64 %r1472, %r1471
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %t1475 = add i64 %r1474, %t1473
  %wp1476 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1475, ptr %wp1476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac67c word 0xb9800529
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %t1478 = add i64 %r1477, 4
  %gmp1479 = inttoptr i64 %t1478 to ptr
  %gml1480 = load i32, ptr %gmp1479, align 1, !alias.scope !4, !noalias !3
  %c1481 = sext i32 %gml1480 to i64
  %wp1482 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1481, ptr %wp1482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac680 word 0x8b090169
  %r1483.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1483 = load i64, ptr %r1483.p, align 8, !alias.scope !3, !noalias !4
  %r1484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1484 = load i64, ptr %r1484.p, align 8, !alias.scope !3, !noalias !4
  %t1485 = add i64 %r1483, %r1484
  %wp1486 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1485, ptr %wp1486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac684 word 0xf90002a9
  %r1487.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1487 = load i64, ptr %r1487.p, align 8, !alias.scope !3, !noalias !4
  %r1488.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1488 = load i64, ptr %r1488.p, align 8, !alias.scope !3, !noalias !4
  %gmp1489 = inttoptr i64 %r1487 to ptr
  store i64 %r1488, ptr %gmp1489, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac688 word 0x17ffff48
  br label %L_8001ac3a8
L_8001ac68c:
  ; @pc 0x8001ac68c word 0x39044fff
  %r1490.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1490 = load i64, ptr %r1490.p, align 8, !alias.scope !3, !noalias !4
  %t1491 = add i64 %r1490, 275
  %c1492 = trunc i32 0 to i8
  %gmp1493 = inttoptr i64 %t1491 to ptr
  store i8 %c1492, ptr %gmp1493, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac690 word 0x910023e9
  %r1494.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1494 = load i64, ptr %r1494.p, align 8, !alias.scope !3, !noalias !4
  %t1495 = add i64 %r1494, 8
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1495, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac694 word 0x90015501
  %wp1497 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp1497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac698 word 0x91270c21
  %r1498.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1498 = load i64, ptr %r1498.p, align 8, !alias.scope !3, !noalias !4
  %t1499 = add i64 %r1498, 2499
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1499, ptr %wp1500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac69c word 0xf9400908
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %t1502 = add i64 %r1501, 16
  %gmp1503 = inttoptr i64 %t1502 to ptr
  %gml1504 = load i64, ptr %gmp1503, align 1, !alias.scope !4, !noalias !3
  %wp1505 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1504, ptr %wp1505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6a0 word 0x91003129
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %t1507 = add i64 %r1506, 12
  %wp1508 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1507, ptr %wp1508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6a4 word 0xf90007e9
  %r1509.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1509 = load i64, ptr %r1509.p, align 8, !alias.scope !3, !noalias !4
  %t1510 = add i64 %r1509, 8
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %gmp1512 = inttoptr i64 %t1510 to ptr
  store i64 %r1511, ptr %gmp1512, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6a8 word 0x52802009
  %c1513 = zext i32 256 to i64
  %wp1514 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1513, ptr %wp1514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6ac word 0x390053ff
  %r1515.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1515 = load i64, ptr %r1515.p, align 8, !alias.scope !3, !noalias !4
  %t1516 = add i64 %r1515, 20
  %c1517 = trunc i32 0 to i8
  %gmp1518 = inttoptr i64 %t1516 to ptr
  store i8 %c1517, ptr %gmp1518, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6b0 word 0xb90013e9
  %r1519.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1519 = load i64, ptr %r1519.p, align 8, !alias.scope !3, !noalias !4
  %t1520 = add i64 %r1519, 16
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %c1522 = trunc i64 %r1521 to i32
  %gmp1523 = inttoptr i64 %t1520 to ptr
  store i32 %c1522, ptr %gmp1523, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6b4 word 0x910023e0
  %r1524.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1524 = load i64, ptr %r1524.p, align 8, !alias.scope !3, !noalias !4
  %t1525 = add i64 %r1524, 8
  %wp1526 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1525, ptr %wp1526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6b8 word 0xf9400908
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %t1528 = add i64 %r1527, 16
  %gmp1529 = inttoptr i64 %t1528 to ptr
  %gml1530 = load i64, ptr %gmp1529, align 1, !alias.scope !4, !noalias !3
  %wp1531 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1530, ptr %wp1531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6bc word 0xb980250a
  %r1532.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1532 = load i64, ptr %r1532.p, align 8, !alias.scope !3, !noalias !4
  %t1533 = add i64 %r1532, 36
  %gmp1534 = inttoptr i64 %t1533 to ptr
  %gml1535 = load i32, ptr %gmp1534, align 1, !alias.scope !4, !noalias !3
  %c1536 = sext i32 %gml1535 to i64
  %wp1537 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1536, ptr %wp1537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6c0 word 0xb9800909
  %r1538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1538 = load i64, ptr %r1538.p, align 8, !alias.scope !3, !noalias !4
  %t1539 = add i64 %r1538, 8
  %gmp1540 = inttoptr i64 %t1539 to ptr
  %gml1541 = load i32, ptr %gmp1540, align 1, !alias.scope !4, !noalias !3
  %c1542 = sext i32 %gml1541 to i64
  %wp1543 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1542, ptr %wp1543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6c4 word 0x8b0a0108
  %r1544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1544 = load i64, ptr %r1544.p, align 8, !alias.scope !3, !noalias !4
  %r1545.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1545 = load i64, ptr %r1545.p, align 8, !alias.scope !3, !noalias !4
  %t1546 = add i64 %r1544, %r1545
  %wp1547 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1546, ptr %wp1547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6c8 word 0x8b090102
  %r1548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1548 = load i64, ptr %r1548.p, align 8, !alias.scope !3, !noalias !4
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = add i64 %r1548, %r1549
  %wp1551 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1550, ptr %wp1551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6cc word 0x97fbb465
  %wp1552 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493200, ptr %wp1552, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001ac6d0 word 0xf9400688
  %r1553.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1553 = load i64, ptr %r1553.p, align 8, !alias.scope !3, !noalias !4
  %t1554 = add i64 %r1553, 8
  %gmp1555 = inttoptr i64 %t1554 to ptr
  %gml1556 = load i64, ptr %gmp1555, align 1, !alias.scope !4, !noalias !3
  %wp1557 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1556, ptr %wp1557, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac6d4
L_8001ac6d4:
  ; @pc 0x8001ac6d4 word 0x39044fff
  %r1558.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1558 = load i64, ptr %r1558.p, align 8, !alias.scope !3, !noalias !4
  %t1559 = add i64 %r1558, 275
  %c1560 = trunc i32 0 to i8
  %gmp1561 = inttoptr i64 %t1559 to ptr
  store i8 %c1560, ptr %gmp1561, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6d8 word 0x910023e9
  %r1562.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1562 = load i64, ptr %r1562.p, align 8, !alias.scope !3, !noalias !4
  %t1563 = add i64 %r1562, 8
  %wp1564 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1563, ptr %wp1564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6dc word 0x90015501
  %wp1565 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp1565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6e0 word 0x91270c21
  %r1566.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1566 = load i64, ptr %r1566.p, align 8, !alias.scope !3, !noalias !4
  %t1567 = add i64 %r1566, 2499
  %wp1568 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1567, ptr %wp1568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6e4 word 0xf9400908
  %r1569.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1569 = load i64, ptr %r1569.p, align 8, !alias.scope !3, !noalias !4
  %t1570 = add i64 %r1569, 16
  %gmp1571 = inttoptr i64 %t1570 to ptr
  %gml1572 = load i64, ptr %gmp1571, align 1, !alias.scope !4, !noalias !3
  %wp1573 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1572, ptr %wp1573, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6e8 word 0x91003129
  %r1574.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1574 = load i64, ptr %r1574.p, align 8, !alias.scope !3, !noalias !4
  %t1575 = add i64 %r1574, 12
  %wp1576 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1575, ptr %wp1576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6ec word 0xf90007e9
  %r1577.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1577 = load i64, ptr %r1577.p, align 8, !alias.scope !3, !noalias !4
  %t1578 = add i64 %r1577, 8
  %r1579.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1579 = load i64, ptr %r1579.p, align 8, !alias.scope !3, !noalias !4
  %gmp1580 = inttoptr i64 %t1578 to ptr
  store i64 %r1579, ptr %gmp1580, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6f0 word 0x52802009
  %c1581 = zext i32 256 to i64
  %wp1582 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1581, ptr %wp1582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac6f4 word 0x390053ff
  %r1583.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1583 = load i64, ptr %r1583.p, align 8, !alias.scope !3, !noalias !4
  %t1584 = add i64 %r1583, 20
  %c1585 = trunc i32 0 to i8
  %gmp1586 = inttoptr i64 %t1584 to ptr
  store i8 %c1585, ptr %gmp1586, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6f8 word 0xb90013e9
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %t1588 = add i64 %r1587, 16
  %r1589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1589 = load i64, ptr %r1589.p, align 8, !alias.scope !3, !noalias !4
  %c1590 = trunc i64 %r1589 to i32
  %gmp1591 = inttoptr i64 %t1588 to ptr
  store i32 %c1590, ptr %gmp1591, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac6fc word 0x910023e0
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = add i64 %r1592, 8
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1593, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac700 word 0xf9400908
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = add i64 %r1595, 16
  %gmp1597 = inttoptr i64 %t1596 to ptr
  %gml1598 = load i64, ptr %gmp1597, align 1, !alias.scope !4, !noalias !3
  %wp1599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1598, ptr %wp1599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac704 word 0xb980250a
  %r1600.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1600 = load i64, ptr %r1600.p, align 8, !alias.scope !3, !noalias !4
  %t1601 = add i64 %r1600, 36
  %gmp1602 = inttoptr i64 %t1601 to ptr
  %gml1603 = load i32, ptr %gmp1602, align 1, !alias.scope !4, !noalias !3
  %c1604 = sext i32 %gml1603 to i64
  %wp1605 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1604, ptr %wp1605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac708 word 0xb9800909
  %r1606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1606 = load i64, ptr %r1606.p, align 8, !alias.scope !3, !noalias !4
  %t1607 = add i64 %r1606, 8
  %gmp1608 = inttoptr i64 %t1607 to ptr
  %gml1609 = load i32, ptr %gmp1608, align 1, !alias.scope !4, !noalias !3
  %c1610 = sext i32 %gml1609 to i64
  %wp1611 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1610, ptr %wp1611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac70c word 0x8b0a0108
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %r1613.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1613 = load i64, ptr %r1613.p, align 8, !alias.scope !3, !noalias !4
  %t1614 = add i64 %r1612, %r1613
  %wp1615 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1614, ptr %wp1615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac710 word 0x8b090102
  %r1616.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1616 = load i64, ptr %r1616.p, align 8, !alias.scope !3, !noalias !4
  %r1617.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1617 = load i64, ptr %r1617.p, align 8, !alias.scope !3, !noalias !4
  %t1618 = add i64 %r1616, %r1617
  %wp1619 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1618, ptr %wp1619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac714 word 0x97fbb453
  %wp1620 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493272, ptr %wp1620, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001ac718 word 0xd001c888
  %wp1621 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp1621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac71c word 0x9116c108
  %r1622.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1622 = load i64, ptr %r1622.p, align 8, !alias.scope !3, !noalias !4
  %t1623 = add i64 %r1622, 1456
  %wp1624 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1623, ptr %wp1624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac720 word 0xf9000268
  %r1625.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1625 = load i64, ptr %r1625.p, align 8, !alias.scope !3, !noalias !4
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %gmp1627 = inttoptr i64 %r1625 to ptr
  store i64 %r1626, ptr %gmp1627, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac724 word 0x52800028
  %c1628 = zext i32 1 to i64
  %wp1629 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1628, ptr %wp1629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac728 word 0x17ffff64
  br label %L_8001ac4b8
L_8001ac72c:
  ; @pc 0x8001ac72c word 0xaa1f03e9
  %t1630 = or i64 0, 0
  %wp1631 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1630, ptr %wp1631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac730 word 0x17ffff37
  br label %L_8001ac40c
L_8001ac734:
  ; @pc 0x8001ac734 word 0xaa1403e0
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %t1633 = or i64 0, %r1632
  %wp1634 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1633, ptr %wp1634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac738 word 0xd63f0100
  %r1635.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1635 = load i64, ptr %r1635.p, align 8, !alias.scope !3, !noalias !4
  %fp1636 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1635, ptr %fp1636, align 8, !alias.scope !3, !noalias !4
  %wp1637 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493308, ptr %wp1637, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac73c word 0x17ffff47
  br label %L_8001ac458
L_8001ac740:
  ; @pc 0x8001ac740 word 0x910023e8
  %r1638.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1638 = load i64, ptr %r1638.p, align 8, !alias.scope !3, !noalias !4
  %t1639 = add i64 %r1638, 8
  %wp1640 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1639, ptr %wp1640, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac744 word 0x39044fff
  %r1641.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1641 = load i64, ptr %r1641.p, align 8, !alias.scope !3, !noalias !4
  %t1642 = add i64 %r1641, 275
  %c1643 = trunc i32 0 to i8
  %gmp1644 = inttoptr i64 %t1642 to ptr
  store i8 %c1643, ptr %gmp1644, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac748 word 0x90015501
  %wp1645 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp1645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac74c word 0x91270c21
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %t1647 = add i64 %r1646, 2499
  %wp1648 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1647, ptr %wp1648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac750 word 0x91003108
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %t1650 = add i64 %r1649, 12
  %wp1651 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1650, ptr %wp1651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac754 word 0x390053ff
  %r1652.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1652 = load i64, ptr %r1652.p, align 8, !alias.scope !3, !noalias !4
  %t1653 = add i64 %r1652, 20
  %c1654 = trunc i32 0 to i8
  %gmp1655 = inttoptr i64 %t1653 to ptr
  store i8 %c1654, ptr %gmp1655, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac758 word 0xf90007e8
  %r1656.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1656 = load i64, ptr %r1656.p, align 8, !alias.scope !3, !noalias !4
  %t1657 = add i64 %r1656, 8
  %r1658.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1658 = load i64, ptr %r1658.p, align 8, !alias.scope !3, !noalias !4
  %gmp1659 = inttoptr i64 %t1657 to ptr
  store i64 %r1658, ptr %gmp1659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac75c word 0x52802008
  %c1660 = zext i32 256 to i64
  %wp1661 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1660, ptr %wp1661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac760 word 0xb980252a
  %r1662.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1662 = load i64, ptr %r1662.p, align 8, !alias.scope !3, !noalias !4
  %t1663 = add i64 %r1662, 36
  %gmp1664 = inttoptr i64 %t1663 to ptr
  %gml1665 = load i32, ptr %gmp1664, align 1, !alias.scope !4, !noalias !3
  %c1666 = sext i32 %gml1665 to i64
  %wp1667 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1666, ptr %wp1667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac764 word 0xb90013e8
  %r1668.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1668 = load i64, ptr %r1668.p, align 8, !alias.scope !3, !noalias !4
  %t1669 = add i64 %r1668, 16
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %c1671 = trunc i64 %r1670 to i32
  %gmp1672 = inttoptr i64 %t1669 to ptr
  store i32 %c1671, ptr %gmp1672, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac768 word 0x910023e0
  %r1673.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1673 = load i64, ptr %r1673.p, align 8, !alias.scope !3, !noalias !4
  %t1674 = add i64 %r1673, 8
  %wp1675 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1674, ptr %wp1675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac76c word 0xb9800928
  %r1676.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1676 = load i64, ptr %r1676.p, align 8, !alias.scope !3, !noalias !4
  %t1677 = add i64 %r1676, 8
  %gmp1678 = inttoptr i64 %t1677 to ptr
  %gml1679 = load i32, ptr %gmp1678, align 1, !alias.scope !4, !noalias !3
  %c1680 = sext i32 %gml1679 to i64
  %wp1681 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1680, ptr %wp1681, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac770 word 0x8b0a0129
  %r1682.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1682 = load i64, ptr %r1682.p, align 8, !alias.scope !3, !noalias !4
  %r1683.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1683 = load i64, ptr %r1683.p, align 8, !alias.scope !3, !noalias !4
  %t1684 = add i64 %r1682, %r1683
  %wp1685 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1684, ptr %wp1685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac774 word 0x8b080122
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %r1687.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1687 = load i64, ptr %r1687.p, align 8, !alias.scope !3, !noalias !4
  %t1688 = add i64 %r1686, %r1687
  %wp1689 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1688, ptr %wp1689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac778 word 0x97fbb43a
  %wp1690 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493372, ptr %wp1690, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001ac77c word 0x17ffff9f
  br label %L_8001ac5f8
L_8001ac780:
  ; @pc 0x8001ac780 word 0x39400641
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %t1692 = add i64 %r1691, 1
  %gmp1693 = inttoptr i64 %t1692 to ptr
  %gml1694 = load i8, ptr %gmp1693, align 1, !alias.scope !4, !noalias !3
  %c1695 = zext i8 %gml1694 to i64
  %wp1696 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1695, ptr %wp1696, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac784 word 0x385ff000
  %r1697.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1697 = load i64, ptr %r1697.p, align 8, !alias.scope !3, !noalias !4
  %t1698 = add i64 %r1697, -1
  %gmp1699 = inttoptr i64 %t1698 to ptr
  %gml1700 = load i8, ptr %gmp1699, align 1, !alias.scope !4, !noalias !3
  %c1701 = zext i8 %gml1700 to i64
  %wp1702 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1701, ptr %wp1702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac788 word 0x6b00003f
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %c1704 = trunc i64 %r1703 to i32
  %r1705.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1705 = load i64, ptr %r1705.p, align 8, !alias.scope !3, !noalias !4
  %c1706 = trunc i64 %r1705 to i32
  %t1707 = sub i32 %c1704, %c1706
  %fn1708 = icmp slt i32 %t1707, 0
  %fz1709 = icmp eq i32 %t1707, 0
  %fc1710 = icmp uge i32 %c1704, %c1706
  %fx11711 = xor i32 %c1704, %c1706
  %fx21712 = xor i32 %c1704, %t1707
  %fva1713 = and i32 %fx11711, %fx21712
  %fv1714 = icmp slt i32 %fva1713, 0
  %nz1715 = zext i1 %fn1708 to i64
  %zz1716 = zext i1 %fz1709 to i64
  %cz1717 = zext i1 %fc1710 to i64
  %vz1718 = zext i1 %fv1714 to i64
  %ns1719 = shl i64 %nz1715, 31
  %zs1720 = shl i64 %zz1716, 30
  %cs1721 = shl i64 %cz1717, 29
  %vs1722 = shl i64 %vz1718, 28
  %nzor1723 = or i64 %ns1719, %zs1720
  %cvor1724 = or i64 %cs1721, %vs1722
  %nzcv1725 = or i64 %nzor1723, %cvor1724
  %wp1726 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1725, ptr %wp1726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac78c word 0x54ffde41
  %r1727.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1727 = load i64, ptr %r1727.p, align 8, !alias.scope !3, !noalias !4
  %fsh1729 = lshr i64 %r1727, 30
  %ftr1730 = trunc i64 %fsh1729 to i1
  %cond1728 = xor i1 %ftr1730, true
  br i1 %cond1728, label %L_8001ac354, label %L_8001ac790_ft
L_8001ac7b0:
  ; @pc 0x8001ac7b0 word 0x39044fff
  %r1781.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1781 = load i64, ptr %r1781.p, align 8, !alias.scope !3, !noalias !4
  %t1782 = add i64 %r1781, 275
  %c1783 = trunc i32 0 to i8
  %gmp1784 = inttoptr i64 %t1782 to ptr
  store i8 %c1783, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac7b4 word 0x910023e9
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %t1786 = add i64 %r1785, 8
  %wp1787 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1786, ptr %wp1787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7b8 word 0x90015501
  %wp1788 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp1788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7bc word 0x91270c21
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %t1790 = add i64 %r1789, 2499
  %wp1791 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1790, ptr %wp1791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7c0 word 0xf9400908
  %r1792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1792 = load i64, ptr %r1792.p, align 8, !alias.scope !3, !noalias !4
  %t1793 = add i64 %r1792, 16
  %gmp1794 = inttoptr i64 %t1793 to ptr
  %gml1795 = load i64, ptr %gmp1794, align 1, !alias.scope !4, !noalias !3
  %wp1796 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1795, ptr %wp1796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7c4 word 0x91003129
  %r1797.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1797 = load i64, ptr %r1797.p, align 8, !alias.scope !3, !noalias !4
  %t1798 = add i64 %r1797, 12
  %wp1799 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1798, ptr %wp1799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7c8 word 0xf90007e9
  %r1800.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1800 = load i64, ptr %r1800.p, align 8, !alias.scope !3, !noalias !4
  %t1801 = add i64 %r1800, 8
  %r1802.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1802 = load i64, ptr %r1802.p, align 8, !alias.scope !3, !noalias !4
  %gmp1803 = inttoptr i64 %t1801 to ptr
  store i64 %r1802, ptr %gmp1803, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac7cc word 0x52802009
  %c1804 = zext i32 256 to i64
  %wp1805 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1804, ptr %wp1805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7d0 word 0x390053ff
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %t1807 = add i64 %r1806, 20
  %c1808 = trunc i32 0 to i8
  %gmp1809 = inttoptr i64 %t1807 to ptr
  store i8 %c1808, ptr %gmp1809, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac7d4 word 0xb90013e9
  %r1810.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1810 = load i64, ptr %r1810.p, align 8, !alias.scope !3, !noalias !4
  %t1811 = add i64 %r1810, 16
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %c1813 = trunc i64 %r1812 to i32
  %gmp1814 = inttoptr i64 %t1811 to ptr
  store i32 %c1813, ptr %gmp1814, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac7d8 word 0x910023e0
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %t1816 = add i64 %r1815, 8
  %wp1817 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1816, ptr %wp1817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7dc word 0xf9400908
  %r1818.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1818 = load i64, ptr %r1818.p, align 8, !alias.scope !3, !noalias !4
  %t1819 = add i64 %r1818, 16
  %gmp1820 = inttoptr i64 %t1819 to ptr
  %gml1821 = load i64, ptr %gmp1820, align 1, !alias.scope !4, !noalias !3
  %wp1822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1821, ptr %wp1822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7e0 word 0xb980250a
  %r1823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1823 = load i64, ptr %r1823.p, align 8, !alias.scope !3, !noalias !4
  %t1824 = add i64 %r1823, 36
  %gmp1825 = inttoptr i64 %t1824 to ptr
  %gml1826 = load i32, ptr %gmp1825, align 1, !alias.scope !4, !noalias !3
  %c1827 = sext i32 %gml1826 to i64
  %wp1828 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1827, ptr %wp1828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7e4 word 0xb9800909
  %r1829.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1829 = load i64, ptr %r1829.p, align 8, !alias.scope !3, !noalias !4
  %t1830 = add i64 %r1829, 8
  %gmp1831 = inttoptr i64 %t1830 to ptr
  %gml1832 = load i32, ptr %gmp1831, align 1, !alias.scope !4, !noalias !3
  %c1833 = sext i32 %gml1832 to i64
  %wp1834 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1833, ptr %wp1834, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7e8 word 0x8b0a0108
  %r1835.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1835 = load i64, ptr %r1835.p, align 8, !alias.scope !3, !noalias !4
  %r1836.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1836 = load i64, ptr %r1836.p, align 8, !alias.scope !3, !noalias !4
  %t1837 = add i64 %r1835, %r1836
  %wp1838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1837, ptr %wp1838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7ec word 0x8b090102
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %t1841 = add i64 %r1839, %r1840
  %wp1842 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1841, ptr %wp1842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7f0 word 0x97fbb41c
  %wp1843 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493492, ptr %wp1843, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001ac7f4 word 0xaa1f03f5
  %t1844 = or i64 0, 0
  %wp1845 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t1844, ptr %wp1845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7f8 word 0x17ffff3f
  br label %L_8001ac4f4
L_8001ac7fc:
  ; @pc 0x8001ac7fc word 0xf001bd80
  %wp1846 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac800 word 0xf9452c00
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %t1848 = add i64 %r1847, 2648
  %gmp1849 = inttoptr i64 %t1848 to ptr
  %gml1850 = load i64, ptr %gmp1849, align 1, !alias.scope !4, !noalias !3
  %wp1851 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1850, ptr %wp1851, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac804 word 0x94a7dc67
  %wp1852 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493512, ptr %wp1852, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001ac808 word 0x34ffe7e0
  %r1853.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1853 = load i64, ptr %r1853.p, align 8, !alias.scope !3, !noalias !4
  %c1854 = trunc i64 %r1853 to i32
  %cmp1855 = icmp eq i32 %c1854, 0
  br i1 %cmp1855, label %L_8001ac504, label %L_8001ac80c_ft
L_8001ac834:
  ; @pc 0x8001ac834 word 0xf001bd80
  %wp1881 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1881, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac838 word 0xf9453400
  %r1882.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1882 = load i64, ptr %r1882.p, align 8, !alias.scope !3, !noalias !4
  %t1883 = add i64 %r1882, 2664
  %gmp1884 = inttoptr i64 %t1883 to ptr
  %gml1885 = load i64, ptr %gmp1884, align 1, !alias.scope !4, !noalias !3
  %wp1886 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1885, ptr %wp1886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac83c word 0x94a7dc59
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493568, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001ac840 word 0x34ffe7a0
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %c1889 = trunc i64 %r1888 to i32
  %cmp1890 = icmp eq i32 %c1889, 0
  br i1 %cmp1890, label %L_8001ac534, label %L_8001ac844_ft
L_8001ac86c:
  ; @pc 0x8001ac86c word 0xf001bd80
  %wp1916 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac870 word 0xf9453c00
  %r1917.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1917 = load i64, ptr %r1917.p, align 8, !alias.scope !3, !noalias !4
  %t1918 = add i64 %r1917, 2680
  %gmp1919 = inttoptr i64 %t1918 to ptr
  %gml1920 = load i64, ptr %gmp1919, align 1, !alias.scope !4, !noalias !3
  %wp1921 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1920, ptr %wp1921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac874 word 0x94a7dc4b
  %wp1922 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493624, ptr %wp1922, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001ac878 word 0x34ffe760
  %r1923.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1923 = load i64, ptr %r1923.p, align 8, !alias.scope !3, !noalias !4
  %c1924 = trunc i64 %r1923 to i32
  %cmp1925 = icmp eq i32 %c1924, 0
  br i1 %cmp1925, label %L_8001ac564, label %L_8001ac87c_ft
L_8001ac8a4:
  ; @pc 0x8001ac8a4 word 0xf001bd80
  %wp1951 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8a8 word 0xf9454400
  %r1952.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1952 = load i64, ptr %r1952.p, align 8, !alias.scope !3, !noalias !4
  %t1953 = add i64 %r1952, 2696
  %gmp1954 = inttoptr i64 %t1953 to ptr
  %gml1955 = load i64, ptr %gmp1954, align 1, !alias.scope !4, !noalias !3
  %wp1956 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1955, ptr %wp1956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8ac word 0x94a7dc3d
  %wp1957 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493680, ptr %wp1957, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001ac8b0 word 0x34ffe720
  %r1958.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1958 = load i64, ptr %r1958.p, align 8, !alias.scope !3, !noalias !4
  %c1959 = trunc i64 %r1958 to i32
  %cmp1960 = icmp eq i32 %c1959, 0
  br i1 %cmp1960, label %L_8001ac594, label %L_8001ac8b4_ft
L_8001ac8dc:
  ; @pc 0x8001ac8dc word 0xf001bd80
  %wp1986 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8e0 word 0xf9454c00
  %r1987.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1987 = load i64, ptr %r1987.p, align 8, !alias.scope !3, !noalias !4
  %t1988 = add i64 %r1987, 2712
  %gmp1989 = inttoptr i64 %t1988 to ptr
  %gml1990 = load i64, ptr %gmp1989, align 1, !alias.scope !4, !noalias !3
  %wp1991 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1990, ptr %wp1991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8e4 word 0x94a7dc2f
  %wp1992 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493736, ptr %wp1992, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001ac8e8 word 0x34ffe6e0
  %r1993.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1993 = load i64, ptr %r1993.p, align 8, !alias.scope !3, !noalias !4
  %c1994 = trunc i64 %r1993 to i32
  %cmp1995 = icmp eq i32 %c1994, 0
  br i1 %cmp1995, label %L_8001ac5c4, label %L_8001ac8ec_ft
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361492080, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001ac270
L_8001ac2b8_ft:
  ; @pc 0x8001ac2b8 word 0x79403a89
  %r112.p = getelementptr inbounds i8, ptr %c, i64 160
  %r112 = load i64, ptr %r112.p, align 8, !alias.scope !3, !noalias !4
  %t113 = add i64 %r112, 28
  %gmp114 = inttoptr i64 %t113 to ptr
  %gml115 = load i16, ptr %gmp114, align 1, !alias.scope !4, !noalias !3
  %c116 = zext i16 %gml115 to i64
  %wp117 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2bc word 0x5280078b
  %c118 = zext i32 60 to i64
  %wp119 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c118, ptr %wp119, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2c0 word 0xf940270a
  %r120.p = getelementptr inbounds i8, ptr %c, i64 192
  %r120 = load i64, ptr %r120.p, align 8, !alias.scope !3, !noalias !4
  %t121 = add i64 %r120, 72
  %gmp122 = inttoptr i64 %t121 to ptr
  %gml123 = load i64, ptr %gmp122, align 1, !alias.scope !4, !noalias !3
  %wp124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2c4 word 0x9bab2929
  %r125.p = getelementptr inbounds i8, ptr %c, i64 72
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %c126 = trunc i64 %r125 to i32
  %c127 = zext i32 %c126 to i64
  %r128.p = getelementptr inbounds i8, ptr %c, i64 88
  %r128 = load i64, ptr %r128.p, align 8, !alias.scope !3, !noalias !4
  %c129 = trunc i64 %r128 to i32
  %c130 = zext i32 %c129 to i64
  %t131 = mul i64 %c127, %c130
  %r132.p = getelementptr inbounds i8, ptr %c, i64 80
  %r132 = load i64, ptr %r132.p, align 8, !alias.scope !3, !noalias !4
  %t133 = add i64 %r132, %t131
  %wp134 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t133, ptr %wp134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2c8 word 0xb980152a
  %r135.p = getelementptr inbounds i8, ptr %c, i64 72
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %t136 = add i64 %r135, 20
  %gmp137 = inttoptr i64 %t136 to ptr
  %gml138 = load i32, ptr %gmp137, align 1, !alias.scope !4, !noalias !3
  %c139 = sext i32 %gml138 to i64
  %wp140 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c139, ptr %wp140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2cc word 0xf9400b09
  %r141.p = getelementptr inbounds i8, ptr %c, i64 192
  %r141 = load i64, ptr %r141.p, align 8, !alias.scope !3, !noalias !4
  %t142 = add i64 %r141, 16
  %gmp143 = inttoptr i64 %t142 to ptr
  %gml144 = load i64, ptr %gmp143, align 1, !alias.scope !4, !noalias !3
  %wp145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2d0 word 0x8b0a0120
  %r146.p = getelementptr inbounds i8, ptr %c, i64 72
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %r147.p = getelementptr inbounds i8, ptr %c, i64 80
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %t148 = add i64 %r146, %r147
  %wp149 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t148, ptr %wp149, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac2d4
L_8001ac2e0_ft:
  ; @pc 0x8001ac2e0 word 0xf940170b
  %r184.p = getelementptr inbounds i8, ptr %c, i64 192
  %r184 = load i64, ptr %r184.p, align 8, !alias.scope !3, !noalias !4
  %t185 = add i64 %r184, 40
  %gmp186 = inttoptr i64 %t185 to ptr
  %gml187 = load i64, ptr %gmp186, align 1, !alias.scope !4, !noalias !3
  %wp188 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml187, ptr %wp188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2e4 word 0x52800290
  %c189 = zext i32 20 to i64
  %wp190 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c189, ptr %wp190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2e8 word 0xaa1f03f7
  %t191 = or i64 0, 0
  %wp192 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t191, ptr %wp192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2ec word 0xb980800f
  %r193.p = getelementptr inbounds i8, ptr %c, i64 0
  %r193 = load i64, ptr %r193.p, align 8, !alias.scope !3, !noalias !4
  %t194 = add i64 %r193, 128
  %gmp195 = inttoptr i64 %t194 to ptr
  %gml196 = load i32, ptr %gmp195, align 1, !alias.scope !4, !noalias !3
  %c197 = sext i32 %gml196 to i64
  %wp198 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c197, ptr %wp198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2f0 word 0xf940002c
  %r199.p = getelementptr inbounds i8, ptr %c, i64 8
  %r199 = load i64, ptr %r199.p, align 8, !alias.scope !3, !noalias !4
  %gmp200 = inttoptr i64 %r199 to ptr
  %gml201 = load i64, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %wp202 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml201, ptr %wp202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2f4 word 0x9100058d
  %r203.p = getelementptr inbounds i8, ptr %c, i64 96
  %r203 = load i64, ptr %r203.p, align 8, !alias.scope !3, !noalias !4
  %t204 = add i64 %r203, 1
  %wp205 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t204, ptr %wp205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2f8 word 0xb980296b
  %r206.p = getelementptr inbounds i8, ptr %c, i64 88
  %r206 = load i64, ptr %r206.p, align 8, !alias.scope !3, !noalias !4
  %t207 = add i64 %r206, 40
  %gmp208 = inttoptr i64 %t207 to ptr
  %gml209 = load i32, ptr %gmp208, align 1, !alias.scope !4, !noalias !3
  %c210 = sext i32 %gml209 to i64
  %wp211 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c210, ptr %wp211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac2fc word 0x8b0b012e
  %r212.p = getelementptr inbounds i8, ptr %c, i64 72
  %r212 = load i64, ptr %r212.p, align 8, !alias.scope !3, !noalias !4
  %r213.p = getelementptr inbounds i8, ptr %c, i64 88
  %r213 = load i64, ptr %r213.p, align 8, !alias.scope !3, !noalias !4
  %t214 = add i64 %r212, %r213
  %wp215 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t214, ptr %wp215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac300 word 0xb980252b
  %r216.p = getelementptr inbounds i8, ptr %c, i64 72
  %r216 = load i64, ptr %r216.p, align 8, !alias.scope !3, !noalias !4
  %t217 = add i64 %r216, 36
  %gmp218 = inttoptr i64 %t217 to ptr
  %gml219 = load i32, ptr %gmp218, align 1, !alias.scope !4, !noalias !3
  %c220 = sext i32 %gml219 to i64
  %wp221 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c220, ptr %wp221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac304 word 0x9b3039f8
  %r222.p = getelementptr inbounds i8, ptr %c, i64 120
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %c223 = trunc i64 %r222 to i32
  %c224 = sext i32 %c223 to i64
  %r225.p = getelementptr inbounds i8, ptr %c, i64 128
  %r225 = load i64, ptr %r225.p, align 8, !alias.scope !3, !noalias !4
  %c226 = trunc i64 %r225 to i32
  %c227 = sext i32 %c226 to i64
  %t228 = mul i64 %c224, %c227
  %r229.p = getelementptr inbounds i8, ptr %c, i64 112
  %r229 = load i64, ptr %r229.p, align 8, !alias.scope !3, !noalias !4
  %t230 = add i64 %r229, %t228
  %wp231 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t230, ptr %wp231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac308 word 0x5280028f
  %c232 = zext i32 20 to i64
  %wp233 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c232, ptr %wp233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac30c word 0x8b0b012b
  %r234.p = getelementptr inbounds i8, ptr %c, i64 72
  %r234 = load i64, ptr %r234.p, align 8, !alias.scope !3, !noalias !4
  %r235.p = getelementptr inbounds i8, ptr %c, i64 88
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = add i64 %r234, %r235
  %wp237 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t236, ptr %wp237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac310 word 0x91000d6e
  %r238.p = getelementptr inbounds i8, ptr %c, i64 88
  %r238 = load i64, ptr %r238.p, align 8, !alias.scope !3, !noalias !4
  %t239 = add i64 %r238, 3
  %wp240 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac314
L_8001ac328_ft:
  ; @pc 0x8001ac328 word 0xaa1f03f0
  %t282 = or i64 0, 0
  %wp283 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t282, ptr %wp283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac32c word 0x8b1101d1
  %r284.p = getelementptr inbounds i8, ptr %c, i64 112
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %r285.p = getelementptr inbounds i8, ptr %c, i64 136
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %t286 = add i64 %r284, %r285
  %wp287 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac330
L_8001ac348_ft:
  ; @pc 0x8001ac348 word 0x340002e1
  %r336.p = getelementptr inbounds i8, ptr %c, i64 8
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %c337 = trunc i64 %r336 to i32
  %cmp338 = icmp eq i32 %c337, 0
  br i1 %cmp338, label %L_8001ac3a4, label %L_8001ac34c_ft
L_8001ac34c_ft:
  ; @pc 0x8001ac34c word 0xf150021f
  %r339.p = getelementptr inbounds i8, ptr %c, i64 128
  %r339 = load i64, ptr %r339.p, align 8, !alias.scope !3, !noalias !4
  %t340 = sub i64 %r339, 4194304
  %fn341 = icmp slt i64 %t340, 0
  %fz342 = icmp eq i64 %t340, 0
  %fc343 = icmp uge i64 %r339, 4194304
  %fx1344 = xor i64 %r339, 4194304
  %fx2345 = xor i64 %r339, %t340
  %fva346 = and i64 %fx1344, %fx2345
  %fv347 = icmp slt i64 %fva346, 0
  %nz348 = zext i1 %fn341 to i64
  %zz349 = zext i1 %fz342 to i64
  %cz350 = zext i1 %fc343 to i64
  %vz351 = zext i1 %fv347 to i64
  %ns352 = shl i64 %nz348, 31
  %zs353 = shl i64 %zz349, 30
  %cs354 = shl i64 %cz350, 29
  %vs355 = shl i64 %vz351, 28
  %nzor356 = or i64 %ns352, %zs353
  %cvor357 = or i64 %cs354, %vs355
  %nzcv358 = or i64 %nzor356, %cvor357
  %wp359 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv358, ptr %wp359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac350 word 0x54000201
  %r360.p = getelementptr inbounds i8, ptr %c, i64 272
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %fsh362 = lshr i64 %r360, 30
  %ftr363 = trunc i64 %fsh362 to i1
  %cond361 = xor i1 %ftr363, true
  br i1 %cond361, label %L_8001ac390, label %L_8001ac354
L_8001ac364_ft:
  ; @pc 0x8001ac364 word 0x52800028
  %c396 = zext i32 1 to i64
  %wp397 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c396, ptr %wp397, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac368 word 0x140000a5
  br label %L_8001ac5fc
L_8001ac3a0_ft:
  ; @pc 0x8001ac3a0 word 0x35001f01
  %r471.p = getelementptr inbounds i8, ptr %c, i64 8
  %r471 = load i64, ptr %r471.p, align 8, !alias.scope !3, !noalias !4
  %c472 = trunc i64 %r471 to i32
  %cmp473 = icmp ne i32 %c472, 0
  br i1 %cmp473, label %L_8001ac780, label %L_8001ac3a4
L_8001ac3c8_ft:
  ; @pc 0x8001ac3c8 word 0x7941b90a
  %r514.p = getelementptr inbounds i8, ptr %c, i64 64
  %r514 = load i64, ptr %r514.p, align 8, !alias.scope !3, !noalias !4
  %t515 = add i64 %r514, 220
  %gmp516 = inttoptr i64 %t515 to ptr
  %gml517 = load i16, ptr %gmp516, align 1, !alias.scope !4, !noalias !3
  %c518 = zext i16 %gml517 to i64
  %wp519 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c518, ptr %wp519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3cc word 0x340008aa
  %r520.p = getelementptr inbounds i8, ptr %c, i64 80
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %c521 = trunc i64 %r520 to i32
  %cmp522 = icmp eq i32 %c521, 0
  br i1 %cmp522, label %L_8001ac4e0, label %L_8001ac3d0
L_8001ac3e0_ft:
  ; @pc 0x8001ac3e0 word 0x6b19035f
  %r560.p = getelementptr inbounds i8, ptr %c, i64 208
  %r560 = load i64, ptr %r560.p, align 8, !alias.scope !3, !noalias !4
  %c561 = trunc i64 %r560 to i32
  %r562.p = getelementptr inbounds i8, ptr %c, i64 200
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %c563 = trunc i64 %r562 to i32
  %t564 = sub i32 %c561, %c563
  %fn565 = icmp slt i32 %t564, 0
  %fz566 = icmp eq i32 %t564, 0
  %fc567 = icmp uge i32 %c561, %c563
  %fx1568 = xor i32 %c561, %c563
  %fx2569 = xor i32 %c561, %t564
  %fva570 = and i32 %fx1568, %fx2569
  %fv571 = icmp slt i32 %fva570, 0
  %nz572 = zext i1 %fn565 to i64
  %zz573 = zext i1 %fz566 to i64
  %cz574 = zext i1 %fc567 to i64
  %vz575 = zext i1 %fv571 to i64
  %ns576 = shl i64 %nz572, 31
  %zs577 = shl i64 %zz573, 30
  %cs578 = shl i64 %cz574, 29
  %vs579 = shl i64 %vz575, 28
  %nzor580 = or i64 %ns576, %zs577
  %cvor581 = or i64 %cs578, %vs579
  %nzcv582 = or i64 %nzor580, %cvor581
  %wp583 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv582, ptr %wp583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3e4 word 0x540010a0
  %r584.p = getelementptr inbounds i8, ptr %c, i64 272
  %r584 = load i64, ptr %r584.p, align 8, !alias.scope !3, !noalias !4
  %fsh586 = lshr i64 %r584, 30
  %cond585 = trunc i64 %fsh586 to i1
  br i1 %cond585, label %L_8001ac5f8, label %L_8001ac3e8_ft
L_8001ac3e8_ft:
  ; @pc 0x8001ac3e8 word 0xf9400688
  %r587.p = getelementptr inbounds i8, ptr %c, i64 160
  %r587 = load i64, ptr %r587.p, align 8, !alias.scope !3, !noalias !4
  %t588 = add i64 %r587, 8
  %gmp589 = inttoptr i64 %t588 to ptr
  %gml590 = load i64, ptr %gmp589, align 1, !alias.scope !4, !noalias !3
  %wp591 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3ec word 0x13003d2b
  %r592.p = getelementptr inbounds i8, ptr %c, i64 72
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %c593 = trunc i64 %r592 to i32
  %t594 = lshr i32 %c593, 15
  %t595 = and i32 %t594, 1
  %t596 = sub i32 0, %t595
  %t597 = and i32 %t596, -65536
  %t598 = and i32 %c593, 65535
  %t599 = or i32 %t597, %t598
  %c600 = zext i32 %t599 to i64
  %wp601 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c600, ptr %wp601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3f0 word 0xb940610c
  %r602.p = getelementptr inbounds i8, ptr %c, i64 64
  %r602 = load i64, ptr %r602.p, align 8, !alias.scope !3, !noalias !4
  %t603 = add i64 %r602, 96
  %gmp604 = inttoptr i64 %t603 to ptr
  %gml605 = load i32, ptr %gmp604, align 1, !alias.scope !4, !noalias !3
  %c606 = zext i32 %gml605 to i64
  %wp607 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c606, ptr %wp607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3f4 word 0x6b0b019f
  %r608.p = getelementptr inbounds i8, ptr %c, i64 96
  %r608 = load i64, ptr %r608.p, align 8, !alias.scope !3, !noalias !4
  %c609 = trunc i64 %r608 to i32
  %r610.p = getelementptr inbounds i8, ptr %c, i64 88
  %r610 = load i64, ptr %r610.p, align 8, !alias.scope !3, !noalias !4
  %c611 = trunc i64 %r610 to i32
  %t612 = sub i32 %c609, %c611
  %fn613 = icmp slt i32 %t612, 0
  %fz614 = icmp eq i32 %t612, 0
  %fc615 = icmp uge i32 %c609, %c611
  %fx1616 = xor i32 %c609, %c611
  %fx2617 = xor i32 %c609, %t612
  %fva618 = and i32 %fx1616, %fx2617
  %fv619 = icmp slt i32 %fva618, 0
  %nz620 = zext i1 %fn613 to i64
  %zz621 = zext i1 %fz614 to i64
  %cz622 = zext i1 %fc615 to i64
  %vz623 = zext i1 %fv619 to i64
  %ns624 = shl i64 %nz620, 31
  %zs625 = shl i64 %zz621, 30
  %cs626 = shl i64 %cz622, 29
  %vs627 = shl i64 %vz623, 28
  %nzor628 = or i64 %ns624, %zs625
  %cvor629 = or i64 %cs626, %vs627
  %nzcv630 = or i64 %nzor628, %cvor629
  %wp631 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv630, ptr %wp631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac3f8 word 0x540014ad
  %r632.p = getelementptr inbounds i8, ptr %c, i64 272
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %fsh634 = lshr i64 %r632, 30
  %ftr635 = trunc i64 %fsh634 to i1
  %fsh636 = lshr i64 %r632, 31
  %ftr637 = trunc i64 %fsh636 to i1
  %fsh638 = lshr i64 %r632, 28
  %ftr639 = trunc i64 %fsh638 to i1
  %fnz640 = xor i1 %ftr635, true
  %feq641 = icmp eq i1 %ftr637, %ftr639
  %fgt642 = and i1 %fnz640, %feq641
  %cond633 = xor i1 %fgt642, true
  br i1 %cond633, label %L_8001ac68c, label %L_8001ac3fc_ft
L_8001ac3fc_ft:
  ; @pc 0x8001ac3fc word 0xf940350a
  %r643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r643 = load i64, ptr %r643.p, align 8, !alias.scope !3, !noalias !4
  %t644 = add i64 %r643, 104
  %gmp645 = inttoptr i64 %t644 to ptr
  %gml646 = load i64, ptr %gmp645, align 1, !alias.scope !4, !noalias !3
  %wp647 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml646, ptr %wp647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac400 word 0x6b0b019f
  %r648.p = getelementptr inbounds i8, ptr %c, i64 96
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %c649 = trunc i64 %r648 to i32
  %r650.p = getelementptr inbounds i8, ptr %c, i64 88
  %r650 = load i64, ptr %r650.p, align 8, !alias.scope !3, !noalias !4
  %c651 = trunc i64 %r650 to i32
  %t652 = sub i32 %c649, %c651
  %fn653 = icmp slt i32 %t652, 0
  %fz654 = icmp eq i32 %t652, 0
  %fc655 = icmp uge i32 %c649, %c651
  %fx1656 = xor i32 %c649, %c651
  %fx2657 = xor i32 %c649, %t652
  %fva658 = and i32 %fx1656, %fx2657
  %fv659 = icmp slt i32 %fva658, 0
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
  ; @pc 0x8001ac404 word 0x54001949
  %r672.p = getelementptr inbounds i8, ptr %c, i64 272
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %fsh674 = lshr i64 %r672, 29
  %ftr675 = trunc i64 %fsh674 to i1
  %fsh676 = lshr i64 %r672, 30
  %ftr677 = trunc i64 %fsh676 to i1
  %fnz678 = xor i1 %ftr677, true
  %fhi679 = and i1 %ftr675, %fnz678
  %cond673 = xor i1 %fhi679, true
  br i1 %cond673, label %L_8001ac72c, label %L_8001ac408_ft
L_8001ac408_ft:
  ; @pc 0x8001ac408 word 0x93403d29
  %r680.p = getelementptr inbounds i8, ptr %c, i64 72
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %t681 = lshr i64 %r680, 15
  %t682 = and i64 %t681, 1
  %t683 = sub i64 0, %t682
  %t684 = and i64 %t683, -65536
  %t685 = and i64 %r680, 65535
  %t686 = or i64 %t684, %t685
  %wp687 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t686, ptr %wp687, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac40c
L_8001ac414_ft:
  ; @pc 0x8001ac414 word 0x52800288
  %c697 = zext i32 20 to i64
  %wp698 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c697, ptr %wp698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac418 word 0x9b0862e8
  %r699.p = getelementptr inbounds i8, ptr %c, i64 64
  %r699 = load i64, ptr %r699.p, align 8, !alias.scope !3, !noalias !4
  %r700.p = getelementptr inbounds i8, ptr %c, i64 184
  %r700 = load i64, ptr %r700.p, align 8, !alias.scope !3, !noalias !4
  %t701 = mul i64 %r700, %r699
  %r702.p = getelementptr inbounds i8, ptr %c, i64 192
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %t703 = add i64 %r702, %t701
  %wp704 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t703, ptr %wp704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac41c word 0x79401508
  %r705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r705 = load i64, ptr %r705.p, align 8, !alias.scope !3, !noalias !4
  %t706 = add i64 %r705, 10
  %gmp707 = inttoptr i64 %t706 to ptr
  %gml708 = load i16, ptr %gmp707, align 1, !alias.scope !4, !noalias !3
  %c709 = zext i16 %gml708 to i64
  %wp710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c709, ptr %wp710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac420 word 0x12003915
  %r711.p = getelementptr inbounds i8, ptr %c, i64 64
  %r711 = load i64, ptr %r711.p, align 8, !alias.scope !3, !noalias !4
  %c712 = trunc i64 %r711 to i32
  %t713 = and i32 %c712, 32767
  %c714 = zext i32 %t713 to i64
  %wp715 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %c714, ptr %wp715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac424 word 0xf9400288
  %r716.p = getelementptr inbounds i8, ptr %c, i64 160
  %r716 = load i64, ptr %r716.p, align 8, !alias.scope !3, !noalias !4
  %gmp717 = inttoptr i64 %r716 to ptr
  %gml718 = load i64, ptr %gmp717, align 1, !alias.scope !4, !noalias !3
  %wp719 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml718, ptr %wp719, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac428 word 0xf9404d08
  %r720.p = getelementptr inbounds i8, ptr %c, i64 64
  %r720 = load i64, ptr %r720.p, align 8, !alias.scope !3, !noalias !4
  %t721 = add i64 %r720, 152
  %gmp722 = inttoptr i64 %t721 to ptr
  %gml723 = load i64, ptr %gmp722, align 1, !alias.scope !4, !noalias !3
  %wp724 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml723, ptr %wp724, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac42c word 0xeb16011f
  %r725.p = getelementptr inbounds i8, ptr %c, i64 64
  %r725 = load i64, ptr %r725.p, align 8, !alias.scope !3, !noalias !4
  %r726.p = getelementptr inbounds i8, ptr %c, i64 176
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %t727 = sub i64 %r725, %r726
  %fn728 = icmp slt i64 %t727, 0
  %fz729 = icmp eq i64 %t727, 0
  %fc730 = icmp uge i64 %r725, %r726
  %fx1731 = xor i64 %r725, %r726
  %fx2732 = xor i64 %r725, %t727
  %fva733 = and i64 %fx1731, %fx2732
  %fv734 = icmp slt i64 %fva733, 0
  %nz735 = zext i1 %fn728 to i64
  %zz736 = zext i1 %fz729 to i64
  %cz737 = zext i1 %fc730 to i64
  %vz738 = zext i1 %fv734 to i64
  %ns739 = shl i64 %nz735, 31
  %zs740 = shl i64 %zz736, 30
  %cs741 = shl i64 %cz737, 29
  %vs742 = shl i64 %vz738, 28
  %nzor743 = or i64 %ns739, %zs740
  %cvor744 = or i64 %cs741, %vs742
  %nzcv745 = or i64 %nzor743, %cvor744
  %wp746 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv745, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac430 word 0x54001821
  %r747.p = getelementptr inbounds i8, ptr %c, i64 272
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %fsh749 = lshr i64 %r747, 30
  %ftr750 = trunc i64 %fsh749 to i1
  %cond748 = xor i1 %ftr750, true
  br i1 %cond748, label %L_8001ac734, label %L_8001ac434_ft
L_8001ac434_ft:
  ; @pc 0x8001ac434 word 0xf9400688
  %r751.p = getelementptr inbounds i8, ptr %c, i64 160
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %t752 = add i64 %r751, 8
  %gmp753 = inttoptr i64 %t752 to ptr
  %gml754 = load i64, ptr %gmp753, align 1, !alias.scope !4, !noalias !3
  %wp755 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml754, ptr %wp755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac438 word 0x5280078b
  %c756 = zext i32 60 to i64
  %wp757 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c756, ptr %wp757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac43c word 0x79403a89
  %r758.p = getelementptr inbounds i8, ptr %c, i64 160
  %r758 = load i64, ptr %r758.p, align 8, !alias.scope !3, !noalias !4
  %t759 = add i64 %r758, 28
  %gmp760 = inttoptr i64 %t759 to ptr
  %gml761 = load i16, ptr %gmp760, align 1, !alias.scope !4, !noalias !3
  %c762 = zext i16 %gml761 to i64
  %wp763 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c762, ptr %wp763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac440 word 0xf9400908
  %r764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %t765 = add i64 %r764, 16
  %gmp766 = inttoptr i64 %t765 to ptr
  %gml767 = load i64, ptr %gmp766, align 1, !alias.scope !4, !noalias !3
  %wp768 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml767, ptr %wp768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac444 word 0xf940250a
  %r769.p = getelementptr inbounds i8, ptr %c, i64 64
  %r769 = load i64, ptr %r769.p, align 8, !alias.scope !3, !noalias !4
  %t770 = add i64 %r769, 72
  %gmp771 = inttoptr i64 %t770 to ptr
  %gml772 = load i64, ptr %gmp771, align 1, !alias.scope !4, !noalias !3
  %wp773 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml772, ptr %wp773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac448 word 0xf9400908
  %r774.p = getelementptr inbounds i8, ptr %c, i64 64
  %r774 = load i64, ptr %r774.p, align 8, !alias.scope !3, !noalias !4
  %t775 = add i64 %r774, 16
  %gmp776 = inttoptr i64 %t775 to ptr
  %gml777 = load i64, ptr %gmp776, align 1, !alias.scope !4, !noalias !3
  %wp778 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml777, ptr %wp778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac44c word 0x9bab2929
  %r779.p = getelementptr inbounds i8, ptr %c, i64 72
  %r779 = load i64, ptr %r779.p, align 8, !alias.scope !3, !noalias !4
  %c780 = trunc i64 %r779 to i32
  %c781 = zext i32 %c780 to i64
  %r782.p = getelementptr inbounds i8, ptr %c, i64 88
  %r782 = load i64, ptr %r782.p, align 8, !alias.scope !3, !noalias !4
  %c783 = trunc i64 %r782 to i32
  %c784 = zext i32 %c783 to i64
  %t785 = mul i64 %c781, %c784
  %r786.p = getelementptr inbounds i8, ptr %c, i64 80
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4
  %t787 = add i64 %r786, %t785
  %wp788 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t787, ptr %wp788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac450 word 0xb9801529
  %r789.p = getelementptr inbounds i8, ptr %c, i64 72
  %r789 = load i64, ptr %r789.p, align 8, !alias.scope !3, !noalias !4
  %t790 = add i64 %r789, 20
  %gmp791 = inttoptr i64 %t790 to ptr
  %gml792 = load i32, ptr %gmp791, align 1, !alias.scope !4, !noalias !3
  %c793 = sext i32 %gml792 to i64
  %wp794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c793, ptr %wp794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac454 word 0x8b090100
  %r795.p = getelementptr inbounds i8, ptr %c, i64 64
  %r795 = load i64, ptr %r795.p, align 8, !alias.scope !3, !noalias !4
  %r796.p = getelementptr inbounds i8, ptr %c, i64 72
  %r796 = load i64, ptr %r796.p, align 8, !alias.scope !3, !noalias !4
  %t797 = add i64 %r795, %r796
  %wp798 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t797, ptr %wp798, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac458
L_8001ac490_ft:
  ; @pc 0x8001ac490 word 0xf9400008
  %r883.p = getelementptr inbounds i8, ptr %c, i64 0
  %r883 = load i64, ptr %r883.p, align 8, !alias.scope !3, !noalias !4
  %gmp884 = inttoptr i64 %r883 to ptr
  %gml885 = load i64, ptr %gmp884, align 1, !alias.scope !4, !noalias !3
  %wp886 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml885, ptr %wp886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac494 word 0xf001bd89
  %wp887 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac498 word 0xf9400908
  %r888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r888 = load i64, ptr %r888.p, align 8, !alias.scope !3, !noalias !4
  %t889 = add i64 %r888, 16
  %gmp890 = inttoptr i64 %t889 to ptr
  %gml891 = load i64, ptr %gmp890, align 1, !alias.scope !4, !noalias !3
  %wp892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml891, ptr %wp892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac49c word 0xf9462929
  %r893.p = getelementptr inbounds i8, ptr %c, i64 72
  %r893 = load i64, ptr %r893.p, align 8, !alias.scope !3, !noalias !4
  %t894 = add i64 %r893, 3152
  %gmp895 = inttoptr i64 %t894 to ptr
  %gml896 = load i64, ptr %gmp895, align 1, !alias.scope !4, !noalias !3
  %wp897 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml896, ptr %wp897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4a0 word 0xeb09011f
  %r898.p = getelementptr inbounds i8, ptr %c, i64 64
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %r899.p = getelementptr inbounds i8, ptr %c, i64 72
  %r899 = load i64, ptr %r899.p, align 8, !alias.scope !3, !noalias !4
  %t900 = sub i64 %r898, %r899
  %fn901 = icmp slt i64 %t900, 0
  %fz902 = icmp eq i64 %t900, 0
  %fc903 = icmp uge i64 %r898, %r899
  %fx1904 = xor i64 %r898, %r899
  %fx2905 = xor i64 %r898, %t900
  %fva906 = and i64 %fx1904, %fx2905
  %fv907 = icmp slt i64 %fva906, 0
  %nz908 = zext i1 %fn901 to i64
  %zz909 = zext i1 %fz902 to i64
  %cz910 = zext i1 %fc903 to i64
  %vz911 = zext i1 %fv907 to i64
  %ns912 = shl i64 %nz908, 31
  %zs913 = shl i64 %zz909, 30
  %cs914 = shl i64 %cz910, 29
  %vs915 = shl i64 %vz911, 28
  %nzor916 = or i64 %ns912, %zs913
  %cvor917 = or i64 %cs914, %vs915
  %nzcv918 = or i64 %nzor916, %cvor917
  %wp919 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv918, ptr %wp919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4a4 word 0x54000b21
  %r920.p = getelementptr inbounds i8, ptr %c, i64 272
  %r920 = load i64, ptr %r920.p, align 8, !alias.scope !3, !noalias !4
  %fsh922 = lshr i64 %r920, 30
  %ftr923 = trunc i64 %fsh922 to i1
  %cond921 = xor i1 %ftr923, true
  br i1 %cond921, label %L_8001ac608, label %L_8001ac4a8
L_8001ac4ec_ft:
  ; @pc 0x8001ac4ec word 0xf9403508
  %r1069.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1069 = load i64, ptr %r1069.p, align 8, !alias.scope !3, !noalias !4
  %t1070 = add i64 %r1069, 104
  %gmp1071 = inttoptr i64 %t1070 to ptr
  %gml1072 = load i64, ptr %gmp1071, align 1, !alias.scope !4, !noalias !3
  %wp1073 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1072, ptr %wp1073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac4f0 word 0xf8695915
  %r1074.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1074 = load i64, ptr %r1074.p, align 8, !alias.scope !3, !noalias !4
  %r1075.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1075 = load i64, ptr %r1075.p, align 8, !alias.scope !3, !noalias !4
  %c1076 = trunc i64 %r1075 to i32
  %c1077 = zext i32 %c1076 to i64
  %t1078 = shl i64 %c1077, 3
  %t1079 = add i64 %r1074, %t1078
  %gmp1080 = inttoptr i64 %t1079 to ptr
  %gml1081 = load i64, ptr %gmp1080, align 1, !alias.scope !4, !noalias !3
  %wp1082 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1081, ptr %wp1082, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ac4f4
L_8001ac508_ft:
  ; @pc 0x8001ac508 word 0xf94002a8
  %r1099.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1099 = load i64, ptr %r1099.p, align 8, !alias.scope !3, !noalias !4
  %gmp1100 = inttoptr i64 %r1099 to ptr
  %gml1101 = load i64, ptr %gmp1100, align 1, !alias.scope !4, !noalias !3
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1101, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac50c word 0xf001bd81
  %wp1103 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac510 word 0xaa1503e0
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %t1105 = or i64 0, %r1104
  %wp1106 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1105, ptr %wp1106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac514 word 0xf9400108
  %r1107.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1107 = load i64, ptr %r1107.p, align 8, !alias.scope !3, !noalias !4
  %gmp1108 = inttoptr i64 %r1107 to ptr
  %gml1109 = load i64, ptr %gmp1108, align 1, !alias.scope !4, !noalias !3
  %wp1110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1109, ptr %wp1110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac518 word 0xf9452821
  %r1111.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1111 = load i64, ptr %r1111.p, align 8, !alias.scope !3, !noalias !4
  %t1112 = add i64 %r1111, 2640
  %gmp1113 = inttoptr i64 %t1112 to ptr
  %gml1114 = load i64, ptr %gmp1113, align 1, !alias.scope !4, !noalias !3
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1114, ptr %wp1115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac51c word 0xd63f0100
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %fp1117 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1116, ptr %fp1117, align 8, !alias.scope !3, !noalias !4
  %wp1118 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492768, ptr %wp1118, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac520 word 0xb5000620
  %r1119.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1119 = load i64, ptr %r1119.p, align 8, !alias.scope !3, !noalias !4
  %cmp1120 = icmp ne i64 %r1119, 0
  br i1 %cmp1120, label %L_8001ac5e4, label %L_8001ac524
L_8001ac538_ft:
  ; @pc 0x8001ac538 word 0xf94002a8
  %r1137.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1137 = load i64, ptr %r1137.p, align 8, !alias.scope !3, !noalias !4
  %gmp1138 = inttoptr i64 %r1137 to ptr
  %gml1139 = load i64, ptr %gmp1138, align 1, !alias.scope !4, !noalias !3
  %wp1140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1139, ptr %wp1140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac53c word 0xf001bd81
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac540 word 0xaa1503e0
  %r1142.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1142 = load i64, ptr %r1142.p, align 8, !alias.scope !3, !noalias !4
  %t1143 = or i64 0, %r1142
  %wp1144 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1143, ptr %wp1144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac544 word 0xf9400108
  %r1145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1145 = load i64, ptr %r1145.p, align 8, !alias.scope !3, !noalias !4
  %gmp1146 = inttoptr i64 %r1145 to ptr
  %gml1147 = load i64, ptr %gmp1146, align 1, !alias.scope !4, !noalias !3
  %wp1148 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1147, ptr %wp1148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac548 word 0xf9453021
  %r1149.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1149 = load i64, ptr %r1149.p, align 8, !alias.scope !3, !noalias !4
  %t1150 = add i64 %r1149, 2656
  %gmp1151 = inttoptr i64 %t1150 to ptr
  %gml1152 = load i64, ptr %gmp1151, align 1, !alias.scope !4, !noalias !3
  %wp1153 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1152, ptr %wp1153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac54c word 0xd63f0100
  %r1154.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1154 = load i64, ptr %r1154.p, align 8, !alias.scope !3, !noalias !4
  %fp1155 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1154, ptr %fp1155, align 8, !alias.scope !3, !noalias !4
  %wp1156 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492816, ptr %wp1156, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac550 word 0xb50004a0
  %r1157.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1157 = load i64, ptr %r1157.p, align 8, !alias.scope !3, !noalias !4
  %cmp1158 = icmp ne i64 %r1157, 0
  br i1 %cmp1158, label %L_8001ac5e4, label %L_8001ac554
L_8001ac568_ft:
  ; @pc 0x8001ac568 word 0xf94002a8
  %r1175.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1175 = load i64, ptr %r1175.p, align 8, !alias.scope !3, !noalias !4
  %gmp1176 = inttoptr i64 %r1175 to ptr
  %gml1177 = load i64, ptr %gmp1176, align 1, !alias.scope !4, !noalias !3
  %wp1178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1177, ptr %wp1178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac56c word 0xf001bd81
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac570 word 0xaa1503e0
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %t1181 = or i64 0, %r1180
  %wp1182 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1181, ptr %wp1182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac574 word 0xf9400108
  %r1183.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1183 = load i64, ptr %r1183.p, align 8, !alias.scope !3, !noalias !4
  %gmp1184 = inttoptr i64 %r1183 to ptr
  %gml1185 = load i64, ptr %gmp1184, align 1, !alias.scope !4, !noalias !3
  %wp1186 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1185, ptr %wp1186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac578 word 0xf9453821
  %r1187.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1187 = load i64, ptr %r1187.p, align 8, !alias.scope !3, !noalias !4
  %t1188 = add i64 %r1187, 2672
  %gmp1189 = inttoptr i64 %t1188 to ptr
  %gml1190 = load i64, ptr %gmp1189, align 1, !alias.scope !4, !noalias !3
  %wp1191 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1190, ptr %wp1191, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac57c word 0xd63f0100
  %r1192.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1192 = load i64, ptr %r1192.p, align 8, !alias.scope !3, !noalias !4
  %fp1193 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1192, ptr %fp1193, align 8, !alias.scope !3, !noalias !4
  %wp1194 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492864, ptr %wp1194, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac580 word 0xb5000320
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %cmp1196 = icmp ne i64 %r1195, 0
  br i1 %cmp1196, label %L_8001ac5e4, label %L_8001ac584
L_8001ac598_ft:
  ; @pc 0x8001ac598 word 0xf94002a8
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %gmp1214 = inttoptr i64 %r1213 to ptr
  %gml1215 = load i64, ptr %gmp1214, align 1, !alias.scope !4, !noalias !3
  %wp1216 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1215, ptr %wp1216, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac59c word 0xf001bd81
  %wp1217 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5a0 word 0xaa1503e0
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %t1219 = or i64 0, %r1218
  %wp1220 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1219, ptr %wp1220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5a4 word 0xf9400108
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %gmp1222 = inttoptr i64 %r1221 to ptr
  %gml1223 = load i64, ptr %gmp1222, align 1, !alias.scope !4, !noalias !3
  %wp1224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1223, ptr %wp1224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5a8 word 0xf9454021
  %r1225.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1225 = load i64, ptr %r1225.p, align 8, !alias.scope !3, !noalias !4
  %t1226 = add i64 %r1225, 2688
  %gmp1227 = inttoptr i64 %t1226 to ptr
  %gml1228 = load i64, ptr %gmp1227, align 1, !alias.scope !4, !noalias !3
  %wp1229 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1228, ptr %wp1229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5ac word 0xd63f0100
  %r1230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1230 = load i64, ptr %r1230.p, align 8, !alias.scope !3, !noalias !4
  %fp1231 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1230, ptr %fp1231, align 8, !alias.scope !3, !noalias !4
  %wp1232 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492912, ptr %wp1232, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac5b0 word 0xb50001a0
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %cmp1234 = icmp ne i64 %r1233, 0
  br i1 %cmp1234, label %L_8001ac5e4, label %L_8001ac5b4
L_8001ac5c8_ft:
  ; @pc 0x8001ac5c8 word 0xf94002a8
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %gmp1252 = inttoptr i64 %r1251 to ptr
  %gml1253 = load i64, ptr %gmp1252, align 1, !alias.scope !4, !noalias !3
  %wp1254 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1253, ptr %wp1254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5cc word 0xf001bd81
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5d0 word 0xaa1503e0
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %t1257 = or i64 0, %r1256
  %wp1258 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1257, ptr %wp1258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5d4 word 0xf9400108
  %r1259.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1259 = load i64, ptr %r1259.p, align 8, !alias.scope !3, !noalias !4
  %gmp1260 = inttoptr i64 %r1259 to ptr
  %gml1261 = load i64, ptr %gmp1260, align 1, !alias.scope !4, !noalias !3
  %wp1262 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1261, ptr %wp1262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5d8 word 0xf9454821
  %r1263.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1263 = load i64, ptr %r1263.p, align 8, !alias.scope !3, !noalias !4
  %t1264 = add i64 %r1263, 2704
  %gmp1265 = inttoptr i64 %t1264 to ptr
  %gml1266 = load i64, ptr %gmp1265, align 1, !alias.scope !4, !noalias !3
  %wp1267 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1266, ptr %wp1267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac5dc word 0xd63f0100
  %r1268.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1268 = load i64, ptr %r1268.p, align 8, !alias.scope !3, !noalias !4
  %fp1269 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1268, ptr %fp1269, align 8, !alias.scope !3, !noalias !4
  %wp1270 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361492960, ptr %wp1270, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac5e0 word 0xb4ffef80
  %r1271.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1271 = load i64, ptr %r1271.p, align 8, !alias.scope !3, !noalias !4
  %cmp1272 = icmp eq i64 %r1271, 0
  br i1 %cmp1272, label %L_8001ac3d0, label %L_8001ac5e4
L_8001ac618_ft:
  ; @pc 0x8001ac618 word 0xd63f0100
  %r1376.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1376 = load i64, ptr %r1376.p, align 8, !alias.scope !3, !noalias !4
  %fp1377 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1376, ptr %fp1377, align 8, !alias.scope !3, !noalias !4
  %wp1378 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493020, ptr %wp1378, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ac61c word 0x17ffffa4
  br label %L_8001ac4ac
L_8001ac790_ft:
  ; @pc 0x8001ac790 word 0x34ffe0a1
  %r1731.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1731 = load i64, ptr %r1731.p, align 8, !alias.scope !3, !noalias !4
  %c1732 = trunc i64 %r1731 to i32
  %cmp1733 = icmp eq i32 %c1732, 0
  br i1 %cmp1733, label %L_8001ac3a4, label %L_8001ac794_ft
L_8001ac794_ft:
  ; @pc 0x8001ac794 word 0x39400a52
  %r1734.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1734 = load i64, ptr %r1734.p, align 8, !alias.scope !3, !noalias !4
  %t1735 = add i64 %r1734, 2
  %gmp1736 = inttoptr i64 %t1735 to ptr
  %gml1737 = load i8, ptr %gmp1736, align 1, !alias.scope !4, !noalias !3
  %c1738 = zext i8 %gml1737 to i64
  %wp1739 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c1738, ptr %wp1739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac798 word 0x38706a20
  %r1740.p = getelementptr inbounds i8, ptr %c, i64 136
  %r1740 = load i64, ptr %r1740.p, align 8, !alias.scope !3, !noalias !4
  %r1741.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1741 = load i64, ptr %r1741.p, align 8, !alias.scope !3, !noalias !4
  %t1742 = add i64 %r1740, %r1741
  %gmp1743 = inttoptr i64 %t1742 to ptr
  %gml1744 = load i8, ptr %gmp1743, align 1, !alias.scope !4, !noalias !3
  %c1745 = zext i8 %gml1744 to i64
  %wp1746 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1745, ptr %wp1746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac79c word 0x6b00025f
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %c1748 = trunc i64 %r1747 to i32
  %r1749.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1749 = load i64, ptr %r1749.p, align 8, !alias.scope !3, !noalias !4
  %c1750 = trunc i64 %r1749 to i32
  %t1751 = sub i32 %c1748, %c1750
  %fn1752 = icmp slt i32 %t1751, 0
  %fz1753 = icmp eq i32 %t1751, 0
  %fc1754 = icmp uge i32 %c1748, %c1750
  %fx11755 = xor i32 %c1748, %c1750
  %fx21756 = xor i32 %c1748, %t1751
  %fva1757 = and i32 %fx11755, %fx21756
  %fv1758 = icmp slt i32 %fva1757, 0
  %nz1759 = zext i1 %fn1752 to i64
  %zz1760 = zext i1 %fz1753 to i64
  %cz1761 = zext i1 %fc1754 to i64
  %vz1762 = zext i1 %fv1758 to i64
  %ns1763 = shl i64 %nz1759, 31
  %zs1764 = shl i64 %zz1760, 30
  %cs1765 = shl i64 %cz1761, 29
  %vs1766 = shl i64 %vz1762, 28
  %nzor1767 = or i64 %ns1763, %zs1764
  %cvor1768 = or i64 %cs1765, %vs1766
  %nzcv1769 = or i64 %nzor1767, %cvor1768
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1769, ptr %wp1770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7a0 word 0x54ffdda1
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %fsh1773 = lshr i64 %r1771, 30
  %ftr1774 = trunc i64 %fsh1773 to i1
  %cond1772 = xor i1 %ftr1774, true
  br i1 %cond1772, label %L_8001ac354, label %L_8001ac7a4_ft
L_8001ac7a4_ft:
  ; @pc 0x8001ac7a4 word 0x34ffe012
  %r1775.p = getelementptr inbounds i8, ptr %c, i64 144
  %r1775 = load i64, ptr %r1775.p, align 8, !alias.scope !3, !noalias !4
  %c1776 = trunc i64 %r1775 to i32
  %cmp1777 = icmp eq i32 %c1776, 0
  br i1 %cmp1777, label %L_8001ac3a4, label %L_8001ac7a8_ft
L_8001ac7a8_ft:
  ; @pc 0x8001ac7a8 word 0x91001210
  %r1778.p = getelementptr inbounds i8, ptr %c, i64 128
  %r1778 = load i64, ptr %r1778.p, align 8, !alias.scope !3, !noalias !4
  %t1779 = add i64 %r1778, 4
  %wp1780 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t1779, ptr %wp1780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac7ac word 0x17fffee1
  br label %L_8001ac330
L_8001ac80c_ft:
  ; @pc 0x8001ac80c word 0xf001bd88
  %wp1856 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac810 word 0xd001bd09
  %wp1857 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac814 word 0xf9452908
  %r1858.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1858 = load i64, ptr %r1858.p, align 8, !alias.scope !3, !noalias !4
  %t1859 = add i64 %r1858, 2640
  %gmp1860 = inttoptr i64 %t1859 to ptr
  %gml1861 = load i64, ptr %gmp1860, align 1, !alias.scope !4, !noalias !3
  %wp1862 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1861, ptr %wp1862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac818 word 0xf942f929
  %r1863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1863 = load i64, ptr %r1863.p, align 8, !alias.scope !3, !noalias !4
  %t1864 = add i64 %r1863, 1520
  %gmp1865 = inttoptr i64 %t1864 to ptr
  %gml1866 = load i64, ptr %gmp1865, align 1, !alias.scope !4, !noalias !3
  %wp1867 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1866, ptr %wp1867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac81c word 0xf001bd80
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac820 word 0x91004129
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %t1870 = add i64 %r1869, 16
  %wp1871 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1870, ptr %wp1871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac824 word 0xf9000109
  %r1872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1872 = load i64, ptr %r1872.p, align 8, !alias.scope !3, !noalias !4
  %r1873.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1873 = load i64, ptr %r1873.p, align 8, !alias.scope !3, !noalias !4
  %gmp1874 = inttoptr i64 %r1872 to ptr
  store i64 %r1873, ptr %gmp1874, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac828 word 0xf9452c00
  %r1875.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1875 = load i64, ptr %r1875.p, align 8, !alias.scope !3, !noalias !4
  %t1876 = add i64 %r1875, 2648
  %gmp1877 = inttoptr i64 %t1876 to ptr
  %gml1878 = load i64, ptr %gmp1877, align 1, !alias.scope !4, !noalias !3
  %wp1879 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1878, ptr %wp1879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac82c word 0x94a7dc61
  %wp1880 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493552, ptr %wp1880, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001ac830 word 0x17ffff35
  br label %L_8001ac504
L_8001ac844_ft:
  ; @pc 0x8001ac844 word 0xd001bd08
  %wp1891 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac848 word 0xf001bd89
  %wp1892 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac84c word 0xf942f908
  %r1893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1893 = load i64, ptr %r1893.p, align 8, !alias.scope !3, !noalias !4
  %t1894 = add i64 %r1893, 1520
  %gmp1895 = inttoptr i64 %t1894 to ptr
  %gml1896 = load i64, ptr %gmp1895, align 1, !alias.scope !4, !noalias !3
  %wp1897 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1896, ptr %wp1897, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac850 word 0xf9453129
  %r1898.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1898 = load i64, ptr %r1898.p, align 8, !alias.scope !3, !noalias !4
  %t1899 = add i64 %r1898, 2656
  %gmp1900 = inttoptr i64 %t1899 to ptr
  %gml1901 = load i64, ptr %gmp1900, align 1, !alias.scope !4, !noalias !3
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1901, ptr %wp1902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac854 word 0xf001bd80
  %wp1903 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac858 word 0x91004108
  %r1904.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1904 = load i64, ptr %r1904.p, align 8, !alias.scope !3, !noalias !4
  %t1905 = add i64 %r1904, 16
  %wp1906 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1905, ptr %wp1906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac85c word 0xf9000128
  %r1907.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1907 = load i64, ptr %r1907.p, align 8, !alias.scope !3, !noalias !4
  %r1908.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1908 = load i64, ptr %r1908.p, align 8, !alias.scope !3, !noalias !4
  %gmp1909 = inttoptr i64 %r1907 to ptr
  store i64 %r1908, ptr %gmp1909, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac860 word 0xf9453400
  %r1910.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1910 = load i64, ptr %r1910.p, align 8, !alias.scope !3, !noalias !4
  %t1911 = add i64 %r1910, 2664
  %gmp1912 = inttoptr i64 %t1911 to ptr
  %gml1913 = load i64, ptr %gmp1912, align 1, !alias.scope !4, !noalias !3
  %wp1914 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1913, ptr %wp1914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac864 word 0x94a7dc53
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493608, ptr %wp1915, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001ac868 word 0x17ffff33
  br label %L_8001ac534
L_8001ac87c_ft:
  ; @pc 0x8001ac87c word 0xd001bd08
  %wp1926 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac880 word 0xf001bd89
  %wp1927 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac884 word 0xf942f908
  %r1928.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1928 = load i64, ptr %r1928.p, align 8, !alias.scope !3, !noalias !4
  %t1929 = add i64 %r1928, 1520
  %gmp1930 = inttoptr i64 %t1929 to ptr
  %gml1931 = load i64, ptr %gmp1930, align 1, !alias.scope !4, !noalias !3
  %wp1932 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1931, ptr %wp1932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac888 word 0xf9453929
  %r1933.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1933 = load i64, ptr %r1933.p, align 8, !alias.scope !3, !noalias !4
  %t1934 = add i64 %r1933, 2672
  %gmp1935 = inttoptr i64 %t1934 to ptr
  %gml1936 = load i64, ptr %gmp1935, align 1, !alias.scope !4, !noalias !3
  %wp1937 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1936, ptr %wp1937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac88c word 0xf001bd80
  %wp1938 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac890 word 0x91004108
  %r1939.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1939 = load i64, ptr %r1939.p, align 8, !alias.scope !3, !noalias !4
  %t1940 = add i64 %r1939, 16
  %wp1941 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1940, ptr %wp1941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac894 word 0xf9000128
  %r1942.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1942 = load i64, ptr %r1942.p, align 8, !alias.scope !3, !noalias !4
  %r1943.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1943 = load i64, ptr %r1943.p, align 8, !alias.scope !3, !noalias !4
  %gmp1944 = inttoptr i64 %r1942 to ptr
  store i64 %r1943, ptr %gmp1944, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac898 word 0xf9453c00
  %r1945.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1945 = load i64, ptr %r1945.p, align 8, !alias.scope !3, !noalias !4
  %t1946 = add i64 %r1945, 2680
  %gmp1947 = inttoptr i64 %t1946 to ptr
  %gml1948 = load i64, ptr %gmp1947, align 1, !alias.scope !4, !noalias !3
  %wp1949 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1948, ptr %wp1949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac89c word 0x94a7dc45
  %wp1950 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493664, ptr %wp1950, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001ac8a0 word 0x17ffff31
  br label %L_8001ac564
L_8001ac8b4_ft:
  ; @pc 0x8001ac8b4 word 0xd001bd08
  %wp1961 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp1961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8b8 word 0xf001bd89
  %wp1962 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8bc word 0xf942f908
  %r1963.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1963 = load i64, ptr %r1963.p, align 8, !alias.scope !3, !noalias !4
  %t1964 = add i64 %r1963, 1520
  %gmp1965 = inttoptr i64 %t1964 to ptr
  %gml1966 = load i64, ptr %gmp1965, align 1, !alias.scope !4, !noalias !3
  %wp1967 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1966, ptr %wp1967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8c0 word 0xf9454129
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %t1969 = add i64 %r1968, 2688
  %gmp1970 = inttoptr i64 %t1969 to ptr
  %gml1971 = load i64, ptr %gmp1970, align 1, !alias.scope !4, !noalias !3
  %wp1972 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1971, ptr %wp1972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8c4 word 0xf001bd80
  %wp1973 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp1973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8c8 word 0x91004108
  %r1974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1974 = load i64, ptr %r1974.p, align 8, !alias.scope !3, !noalias !4
  %t1975 = add i64 %r1974, 16
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8cc word 0xf9000128
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %r1978.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1978 = load i64, ptr %r1978.p, align 8, !alias.scope !3, !noalias !4
  %gmp1979 = inttoptr i64 %r1977 to ptr
  store i64 %r1978, ptr %gmp1979, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac8d0 word 0xf9454400
  %r1980.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1980 = load i64, ptr %r1980.p, align 8, !alias.scope !3, !noalias !4
  %t1981 = add i64 %r1980, 2696
  %gmp1982 = inttoptr i64 %t1981 to ptr
  %gml1983 = load i64, ptr %gmp1982, align 1, !alias.scope !4, !noalias !3
  %wp1984 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1983, ptr %wp1984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8d4 word 0x94a7dc37
  %wp1985 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493720, ptr %wp1985, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001ac8d8 word 0x17ffff2f
  br label %L_8001ac594
L_8001ac8ec_ft:
  ; @pc 0x8001ac8ec word 0xf001bd88
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8f0 word 0xd001bd09
  %wp1997 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8f4 word 0xf9454908
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %t1999 = add i64 %r1998, 2704
  %gmp2000 = inttoptr i64 %t1999 to ptr
  %gml2001 = load i64, ptr %gmp2000, align 1, !alias.scope !4, !noalias !3
  %wp2002 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2001, ptr %wp2002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8f8 word 0xf942f929
  %r2003.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2003 = load i64, ptr %r2003.p, align 8, !alias.scope !3, !noalias !4
  %t2004 = add i64 %r2003, 1520
  %gmp2005 = inttoptr i64 %t2004 to ptr
  %gml2006 = load i64, ptr %gmp2005, align 1, !alias.scope !4, !noalias !3
  %wp2007 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2006, ptr %wp2007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac8fc word 0xf001bd80
  %wp2008 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac900 word 0x91004129
  %r2009.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2009 = load i64, ptr %r2009.p, align 8, !alias.scope !3, !noalias !4
  %t2010 = add i64 %r2009, 16
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2010, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac904 word 0xf9000109
  %r2012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2012 = load i64, ptr %r2012.p, align 8, !alias.scope !3, !noalias !4
  %r2013.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2013 = load i64, ptr %r2013.p, align 8, !alias.scope !3, !noalias !4
  %gmp2014 = inttoptr i64 %r2012 to ptr
  store i64 %r2013, ptr %gmp2014, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ac908 word 0xf9454c00
  %r2015.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2015 = load i64, ptr %r2015.p, align 8, !alias.scope !3, !noalias !4
  %t2016 = add i64 %r2015, 2712
  %gmp2017 = inttoptr i64 %t2016 to ptr
  %gml2018 = load i64, ptr %gmp2017, align 1, !alias.scope !4, !noalias !3
  %wp2019 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2018, ptr %wp2019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ac90c word 0x94a7dc29
  %wp2020 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361493776, ptr %wp2020, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001ac910 word 0x17ffff2d
  br label %L_8001ac5c4
}

!0 = !{!"ultratears.aa.domain"}
!1 = !{!"ultratears.aa.cpu_state", !0}
!2 = !{!"ultratears.aa.guest_mem", !0}
!3 = !{!1}
!4 = !{!2}
!5 = !{!"ultratears.aa.guest_stack", !0}
!6 = !{!5}
