; UltraTears chunk main_125_rescache: 1 functions [0x8001ef59c..0x8001f0044)
; ModuleID = 'main_125_rescache_raw'
source_filename = "main_125_rescache_raw"
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

define dso_local void @f_8001ef59c(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001ef59c:
  ; @pc 0x8001ef59c word 0xd10643ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 400
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5a0 word 0xa9137bfd
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 304
  %t10 = add i64 %t9, 8
  %r11.p = getelementptr inbounds i8, ptr %c, i64 232
  %r11 = load i64, ptr %r11.p, align 8, !alias.scope !3, !noalias !4
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %r11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 240
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %gmp14 = inttoptr i64 %t10 to ptr
  store i64 %r13, ptr %gmp14, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5a4 word 0xa9146ffc
  %r15.p = getelementptr inbounds i8, ptr %c, i64 256
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %t16 = add i64 %r15, 320
  %t17 = add i64 %t16, 8
  %r18.p = getelementptr inbounds i8, ptr %c, i64 224
  %r18 = load i64, ptr %r18.p, align 8, !alias.scope !3, !noalias !4
  %gmp19 = inttoptr i64 %t16 to ptr
  store i64 %r18, ptr %gmp19, align 1, !alias.scope !4, !noalias !3
  %r20.p = getelementptr inbounds i8, ptr %c, i64 216
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t17 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5a8 word 0xa91567fa
  %r22.p = getelementptr inbounds i8, ptr %c, i64 256
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %t23 = add i64 %r22, 336
  %t24 = add i64 %t23, 8
  %r25.p = getelementptr inbounds i8, ptr %c, i64 208
  %r25 = load i64, ptr %r25.p, align 8, !alias.scope !3, !noalias !4
  %gmp26 = inttoptr i64 %t23 to ptr
  store i64 %r25, ptr %gmp26, align 1, !alias.scope !4, !noalias !3
  %r27.p = getelementptr inbounds i8, ptr %c, i64 200
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %t24 to ptr
  store i64 %r27, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5ac word 0xa9165ff8
  %r29.p = getelementptr inbounds i8, ptr %c, i64 256
  %r29 = load i64, ptr %r29.p, align 8, !alias.scope !3, !noalias !4
  %t30 = add i64 %r29, 352
  %t31 = add i64 %t30, 8
  %r32.p = getelementptr inbounds i8, ptr %c, i64 192
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %gmp33 = inttoptr i64 %t30 to ptr
  store i64 %r32, ptr %gmp33, align 1, !alias.scope !4, !noalias !3
  %r34.p = getelementptr inbounds i8, ptr %c, i64 184
  %r34 = load i64, ptr %r34.p, align 8, !alias.scope !3, !noalias !4
  %gmp35 = inttoptr i64 %t31 to ptr
  store i64 %r34, ptr %gmp35, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5b0 word 0xa91757f6
  %r36.p = getelementptr inbounds i8, ptr %c, i64 256
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %t37 = add i64 %r36, 368
  %t38 = add i64 %t37, 8
  %r39.p = getelementptr inbounds i8, ptr %c, i64 176
  %r39 = load i64, ptr %r39.p, align 8, !alias.scope !3, !noalias !4
  %gmp40 = inttoptr i64 %t37 to ptr
  store i64 %r39, ptr %gmp40, align 1, !alias.scope !4, !noalias !3
  %r41.p = getelementptr inbounds i8, ptr %c, i64 168
  %r41 = load i64, ptr %r41.p, align 8, !alias.scope !3, !noalias !4
  %gmp42 = inttoptr i64 %t38 to ptr
  store i64 %r41, ptr %gmp42, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5b4 word 0xa9184ff4
  %r43.p = getelementptr inbounds i8, ptr %c, i64 256
  %r43 = load i64, ptr %r43.p, align 8, !alias.scope !3, !noalias !4
  %t44 = add i64 %r43, 384
  %t45 = add i64 %t44, 8
  %r46.p = getelementptr inbounds i8, ptr %c, i64 160
  %r46 = load i64, ptr %r46.p, align 8, !alias.scope !3, !noalias !4
  %gmp47 = inttoptr i64 %t44 to ptr
  store i64 %r46, ptr %gmp47, align 1, !alias.scope !4, !noalias !3
  %r48.p = getelementptr inbounds i8, ptr %c, i64 152
  %r48 = load i64, ptr %r48.p, align 8, !alias.scope !3, !noalias !4
  %gmp49 = inttoptr i64 %t45 to ptr
  store i64 %r48, ptr %gmp49, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5b8 word 0x9104c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 304
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5bc word 0xa9402009
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
  ; @pc 0x8001ef5c0 word 0xb9000fe4
  %r61.p = getelementptr inbounds i8, ptr %c, i64 256
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %t62 = add i64 %r61, 12
  %r63.p = getelementptr inbounds i8, ptr %c, i64 32
  %r63 = load i64, ptr %r63.p, align 8, !alias.scope !3, !noalias !4
  %c64 = trunc i64 %r63 to i32
  %gmp65 = inttoptr i64 %t62 to ptr
  store i32 %c64, ptr %gmp65, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef5c4 word 0xf001baf9
  %wp66 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 34419826688, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5c8 word 0x2a0303f7
  %r67.p = getelementptr inbounds i8, ptr %c, i64 24
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %c68 = trunc i64 %r67 to i32
  %t69 = or i32 0, %c68
  %c70 = zext i32 %t69 to i64
  %wp71 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c70, ptr %wp71, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5cc word 0xaa0203f4
  %r72.p = getelementptr inbounds i8, ptr %c, i64 16
  %r72 = load i64, ptr %r72.p, align 8, !alias.scope !3, !noalias !4
  %t73 = or i64 0, %r72
  %wp74 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t73, ptr %wp74, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5d0 word 0xaa0003f5
  %r75.p = getelementptr inbounds i8, ptr %c, i64 0
  %r75 = load i64, ptr %r75.p, align 8, !alias.scope !3, !noalias !4
  %t76 = or i64 0, %r75
  %wp77 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t76, ptr %wp77, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5d4 word 0xaa0103f6
  %r78.p = getelementptr inbounds i8, ptr %c, i64 8
  %r78 = load i64, ptr %r78.p, align 8, !alias.scope !3, !noalias !4
  %t79 = or i64 0, %r78
  %wp80 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5d8 word 0xf9400913
  %r81.p = getelementptr inbounds i8, ptr %c, i64 64
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 16
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5dc word 0xf9404d28
  %r86.p = getelementptr inbounds i8, ptr %c, i64 72
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 152
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5e0 word 0xf9439b39
  %r91.p = getelementptr inbounds i8, ptr %c, i64 200
  %r91 = load i64, ptr %r91.p, align 8, !alias.scope !3, !noalias !4
  %t92 = add i64 %r91, 1840
  %gmp93 = inttoptr i64 %t92 to ptr
  %gml94 = load i64, ptr %gmp93, align 1, !alias.scope !4, !noalias !3
  %wp95 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml94, ptr %wp95, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5e4 word 0xeb19011f
  %r96.p = getelementptr inbounds i8, ptr %c, i64 64
  %r96 = load i64, ptr %r96.p, align 8, !alias.scope !3, !noalias !4
  %r97.p = getelementptr inbounds i8, ptr %c, i64 200
  %r97 = load i64, ptr %r97.p, align 8, !alias.scope !3, !noalias !4
  %t98 = sub i64 %r96, %r97
  %fn99 = icmp slt i64 %t98, 0
  %fz100 = icmp eq i64 %t98, 0
  %fc101 = icmp uge i64 %r96, %r97
  %fx1102 = xor i64 %r96, %r97
  %fx2103 = xor i64 %r96, %t98
  %fva104 = and i64 %fx1102, %fx2103
  %fv105 = icmp slt i64 %fva104, 0
  %nz106 = zext i1 %fn99 to i64
  %zz107 = zext i1 %fz100 to i64
  %cz108 = zext i1 %fc101 to i64
  %vz109 = zext i1 %fv105 to i64
  %ns110 = shl i64 %nz106, 31
  %zs111 = shl i64 %zz107, 30
  %cs112 = shl i64 %cz108, 29
  %vs113 = shl i64 %vz109, 28
  %nzor114 = or i64 %ns110, %zs111
  %cvor115 = or i64 %cs112, %vs113
  %nzcv116 = or i64 %nzor114, %cvor115
  %wp117 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv116, ptr %wp117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5e8 word 0x540035e1
  %r118.p = getelementptr inbounds i8, ptr %c, i64 272
  %r118 = load i64, ptr %r118.p, align 8, !alias.scope !3, !noalias !4
  %fsh120 = lshr i64 %r118, 30
  %ftr121 = trunc i64 %fsh120 to i1
  %cond119 = xor i1 %ftr121, true
  br i1 %cond119, label %L_8001efca4, label %L_8001ef5ec_ft
L_8001ef608:
  ; @pc 0x8001ef608 word 0xb9407409
  %r160.p = getelementptr inbounds i8, ptr %c, i64 0
  %r160 = load i64, ptr %r160.p, align 8, !alias.scope !3, !noalias !4
  %t161 = add i64 %r160, 116
  %gmp162 = inttoptr i64 %t161 to ptr
  %gml163 = load i32, ptr %gmp162, align 1, !alias.scope !4, !noalias !3
  %c164 = zext i32 %gml163 to i64
  %wp165 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c164, ptr %wp165, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef60c word 0x52b84018
  %c166 = zext i32 -1040187392 to i64
  %wp167 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c166, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef610 word 0xf9000bf4
  %r168.p = getelementptr inbounds i8, ptr %c, i64 256
  %r168 = load i64, ptr %r168.p, align 8, !alias.scope !3, !noalias !4
  %t169 = add i64 %r168, 16
  %r170.p = getelementptr inbounds i8, ptr %c, i64 160
  %r170 = load i64, ptr %r170.p, align 8, !alias.scope !3, !noalias !4
  %gmp171 = inttoptr i64 %t169 to ptr
  store i64 %r170, ptr %gmp171, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef614 word 0xf90003f6
  %r172.p = getelementptr inbounds i8, ptr %c, i64 256
  %r172 = load i64, ptr %r172.p, align 8, !alias.scope !3, !noalias !4
  %r173.p = getelementptr inbounds i8, ptr %c, i64 176
  %r173 = load i64, ptr %r173.p, align 8, !alias.scope !3, !noalias !4
  %gmp174 = inttoptr i64 %r172 to ptr
  store i64 %r173, ptr %gmp174, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef618 word 0x7100053f
  %r175.p = getelementptr inbounds i8, ptr %c, i64 72
  %r175 = load i64, ptr %r175.p, align 8, !alias.scope !3, !noalias !4
  %c176 = trunc i64 %r175 to i32
  %t177 = sub i32 %c176, 1
  %fn178 = icmp slt i32 %t177, 0
  %fz179 = icmp eq i32 %t177, 0
  %fc180 = icmp uge i32 %c176, 1
  %fx1181 = xor i32 %c176, 1
  %fx2182 = xor i32 %c176, %t177
  %fva183 = and i32 %fx1181, %fx2182
  %fv184 = icmp slt i32 %fva183, 0
  %nz185 = zext i1 %fn178 to i64
  %zz186 = zext i1 %fz179 to i64
  %cz187 = zext i1 %fc180 to i64
  %vz188 = zext i1 %fv184 to i64
  %ns189 = shl i64 %nz185, 31
  %zs190 = shl i64 %zz186, 30
  %cs191 = shl i64 %cz187, 29
  %vs192 = shl i64 %vz188, 28
  %nzor193 = or i64 %ns189, %zs190
  %cvor194 = or i64 %cs191, %vs192
  %nzcv195 = or i64 %nzor193, %cvor194
  %wp196 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv195, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef61c word 0x5400064b
  %r197.p = getelementptr inbounds i8, ptr %c, i64 272
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %fsh199 = lshr i64 %r197, 31
  %ftr200 = trunc i64 %fsh199 to i1
  %fsh201 = lshr i64 %r197, 28
  %ftr202 = trunc i64 %fsh201 to i1
  %cond198 = icmp ne i1 %ftr200, %ftr202
  br i1 %cond198, label %L_8001ef6e4, label %L_8001ef620_ft
L_8001ef654:
  ; @pc 0x8001ef654 word 0x9b0e7f6f
  %r260.p = getelementptr inbounds i8, ptr %c, i64 112
  %r260 = load i64, ptr %r260.p, align 8, !alias.scope !3, !noalias !4
  %r261.p = getelementptr inbounds i8, ptr %c, i64 216
  %r261 = load i64, ptr %r261.p, align 8, !alias.scope !3, !noalias !4
  %t262 = mul i64 %r261, %r260
  %t263 = add i64 0, %t262
  %wp264 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t263, ptr %wp264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef658 word 0xb8af6b90
  %r265.p = getelementptr inbounds i8, ptr %c, i64 224
  %r265 = load i64, ptr %r265.p, align 8, !alias.scope !3, !noalias !4
  %r266.p = getelementptr inbounds i8, ptr %c, i64 120
  %r266 = load i64, ptr %r266.p, align 8, !alias.scope !3, !noalias !4
  %t267 = add i64 %r265, %r266
  %gmp268 = inttoptr i64 %t267 to ptr
  %gml269 = load i32, ptr %gmp268, align 1, !alias.scope !4, !noalias !3
  %c270 = sext i32 %gml269 to i64
  %wp271 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c270, ptr %wp271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef65c word 0x8b10014f
  %r272.p = getelementptr inbounds i8, ptr %c, i64 80
  %r272 = load i64, ptr %r272.p, align 8, !alias.scope !3, !noalias !4
  %r273.p = getelementptr inbounds i8, ptr %c, i64 128
  %r273 = load i64, ptr %r273.p, align 8, !alias.scope !3, !noalias !4
  %t274 = add i64 %r272, %r273
  %wp275 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t274, ptr %wp275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef660 word 0xeb0f017f
  %r276.p = getelementptr inbounds i8, ptr %c, i64 88
  %r276 = load i64, ptr %r276.p, align 8, !alias.scope !3, !noalias !4
  %r277.p = getelementptr inbounds i8, ptr %c, i64 120
  %r277 = load i64, ptr %r277.p, align 8, !alias.scope !3, !noalias !4
  %t278 = sub i64 %r276, %r277
  %fn279 = icmp slt i64 %t278, 0
  %fz280 = icmp eq i64 %t278, 0
  %fc281 = icmp uge i64 %r276, %r277
  %fx1282 = xor i64 %r276, %r277
  %fx2283 = xor i64 %r276, %t278
  %fva284 = and i64 %fx1282, %fx2283
  %fv285 = icmp slt i64 %fva284, 0
  %nz286 = zext i1 %fn279 to i64
  %zz287 = zext i1 %fz280 to i64
  %cz288 = zext i1 %fc281 to i64
  %vz289 = zext i1 %fv285 to i64
  %ns290 = shl i64 %nz286, 31
  %zs291 = shl i64 %zz287, 30
  %cs292 = shl i64 %cz288, 29
  %vs293 = shl i64 %vz289, 28
  %nzor294 = or i64 %ns290, %zs291
  %cvor295 = or i64 %cs292, %vs293
  %nzcv296 = or i64 %nzor294, %cvor295
  %wp297 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv296, ptr %wp297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef664 word 0x54000640
  %r298.p = getelementptr inbounds i8, ptr %c, i64 272
  %r298 = load i64, ptr %r298.p, align 8, !alias.scope !3, !noalias !4
  %fsh300 = lshr i64 %r298, 30
  %cond299 = trunc i64 %fsh300 to i1
  br i1 %cond299, label %L_8001ef72c, label %L_8001ef668_ft
L_8001ef670:
  ; @pc 0x8001ef670 word 0x8b0f0191
  %r307.p = getelementptr inbounds i8, ptr %c, i64 96
  %r307 = load i64, ptr %r307.p, align 8, !alias.scope !3, !noalias !4
  %r308.p = getelementptr inbounds i8, ptr %c, i64 120
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %t309 = add i64 %r307, %r308
  %wp310 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t309, ptr %wp310, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef674 word 0x8b0f0212
  %r311.p = getelementptr inbounds i8, ptr %c, i64 128
  %r311 = load i64, ptr %r311.p, align 8, !alias.scope !3, !noalias !4
  %r312.p = getelementptr inbounds i8, ptr %c, i64 120
  %r312 = load i64, ptr %r312.p, align 8, !alias.scope !3, !noalias !4
  %t313 = add i64 %r311, %r312
  %wp314 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t313, ptr %wp314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef678 word 0x385ff220
  %r315.p = getelementptr inbounds i8, ptr %c, i64 136
  %r315 = load i64, ptr %r315.p, align 8, !alias.scope !3, !noalias !4
  %t316 = add i64 %r315, -1
  %gmp317 = inttoptr i64 %t316 to ptr
  %gml318 = load i8, ptr %gmp317, align 1, !alias.scope !4, !noalias !3
  %c319 = zext i8 %gml318 to i64
  %wp320 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c319, ptr %wp320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef67c word 0x385fd241
  %r321.p = getelementptr inbounds i8, ptr %c, i64 144
  %r321 = load i64, ptr %r321.p, align 8, !alias.scope !3, !noalias !4
  %t322 = add i64 %r321, -3
  %gmp323 = inttoptr i64 %t322 to ptr
  %gml324 = load i8, ptr %gmp323, align 1, !alias.scope !4, !noalias !3
  %c325 = zext i8 %gml324 to i64
  %wp326 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c325, ptr %wp326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef680 word 0x6b01001f
  %r327.p = getelementptr inbounds i8, ptr %c, i64 0
  %r327 = load i64, ptr %r327.p, align 8, !alias.scope !3, !noalias !4
  %c328 = trunc i64 %r327 to i32
  %r329.p = getelementptr inbounds i8, ptr %c, i64 8
  %r329 = load i64, ptr %r329.p, align 8, !alias.scope !3, !noalias !4
  %c330 = trunc i64 %r329 to i32
  %t331 = sub i32 %c328, %c330
  %fn332 = icmp slt i32 %t331, 0
  %fz333 = icmp eq i32 %t331, 0
  %fc334 = icmp uge i32 %c328, %c330
  %fx1335 = xor i32 %c328, %c330
  %fx2336 = xor i32 %c328, %t331
  %fva337 = and i32 %fx1335, %fx2336
  %fv338 = icmp slt i32 %fva337, 0
  %nz339 = zext i1 %fn332 to i64
  %zz340 = zext i1 %fz333 to i64
  %cz341 = zext i1 %fc334 to i64
  %vz342 = zext i1 %fv338 to i64
  %ns343 = shl i64 %nz339, 31
  %zs344 = shl i64 %zz340, 30
  %cs345 = shl i64 %cz341, 29
  %vs346 = shl i64 %vz342, 28
  %nzor347 = or i64 %ns343, %zs344
  %cvor348 = or i64 %cs345, %vs346
  %nzcv349 = or i64 %nzor347, %cvor348
  %wp350 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv349, ptr %wp350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef684 word 0x540002a1
  %r351.p = getelementptr inbounds i8, ptr %c, i64 272
  %r351 = load i64, ptr %r351.p, align 8, !alias.scope !3, !noalias !4
  %fsh353 = lshr i64 %r351, 30
  %ftr354 = trunc i64 %fsh353 to i1
  %cond352 = xor i1 %ftr354, true
  br i1 %cond352, label %L_8001ef6d8, label %L_8001ef688_ft
L_8001ef6d8:
  ; @pc 0x8001ef6d8 word 0x9100077b
  %r516.p = getelementptr inbounds i8, ptr %c, i64 216
  %r516 = load i64, ptr %r516.p, align 8, !alias.scope !3, !noalias !4
  %t517 = add i64 %r516, 1
  %wp518 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t517, ptr %wp518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6dc word 0xeb09037f
  %r519.p = getelementptr inbounds i8, ptr %c, i64 216
  %r519 = load i64, ptr %r519.p, align 8, !alias.scope !3, !noalias !4
  %r520.p = getelementptr inbounds i8, ptr %c, i64 72
  %r520 = load i64, ptr %r520.p, align 8, !alias.scope !3, !noalias !4
  %t521 = sub i64 %r519, %r520
  %fn522 = icmp slt i64 %t521, 0
  %fz523 = icmp eq i64 %t521, 0
  %fc524 = icmp uge i64 %r519, %r520
  %fx1525 = xor i64 %r519, %r520
  %fx2526 = xor i64 %r519, %t521
  %fva527 = and i64 %fx1525, %fx2526
  %fv528 = icmp slt i64 %fva527, 0
  %nz529 = zext i1 %fn522 to i64
  %zz530 = zext i1 %fz523 to i64
  %cz531 = zext i1 %fc524 to i64
  %vz532 = zext i1 %fv528 to i64
  %ns533 = shl i64 %nz529, 31
  %zs534 = shl i64 %zz530, 30
  %cs535 = shl i64 %cz531, 29
  %vs536 = shl i64 %vz532, 28
  %nzor537 = or i64 %ns533, %zs534
  %cvor538 = or i64 %cs535, %vs536
  %nzcv539 = or i64 %nzor537, %cvor538
  %wp540 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv539, ptr %wp540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6e0 word 0x54fffba1
  %r541.p = getelementptr inbounds i8, ptr %c, i64 272
  %r541 = load i64, ptr %r541.p, align 8, !alias.scope !3, !noalias !4
  %fsh543 = lshr i64 %r541, 30
  %ftr544 = trunc i64 %fsh543 to i1
  %cond542 = xor i1 %ftr544, true
  br i1 %cond542, label %L_8001ef654, label %L_8001ef6e4
L_8001ef6e4:
  ; @pc 0x8001ef6e4 word 0x36002e97
  %r545.p = getelementptr inbounds i8, ptr %c, i64 184
  %r545 = load i64, ptr %r545.p, align 8, !alias.scope !3, !noalias !4
  %t546 = and i64 %r545, 1
  %cmp547 = icmp eq i64 %t546, 0
  br i1 %cmp547, label %L_8001efcb4, label %L_8001ef6e8_ft
L_8001ef72c:
  ; @pc 0x8001ef72c word 0x52800308
  %c604 = zext i32 24 to i64
  %wp605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c604, ptr %wp605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef730 word 0x9b08737a
  %r606.p = getelementptr inbounds i8, ptr %c, i64 64
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %r607.p = getelementptr inbounds i8, ptr %c, i64 216
  %r607 = load i64, ptr %r607.p, align 8, !alias.scope !3, !noalias !4
  %t608 = mul i64 %r607, %r606
  %r609.p = getelementptr inbounds i8, ptr %c, i64 224
  %r609 = load i64, ptr %r609.p, align 8, !alias.scope !3, !noalias !4
  %t610 = add i64 %r609, %t608
  %wp611 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t610, ptr %wp611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef734 word 0xb8408f54
  %r612.p = getelementptr inbounds i8, ptr %c, i64 208
  %r612 = load i64, ptr %r612.p, align 8, !alias.scope !3, !noalias !4
  %t613 = add i64 %r612, 8
  %gmp614 = inttoptr i64 %t613 to ptr
  %gml615 = load i32, ptr %gmp614, align 1, !alias.scope !4, !noalias !3
  %c616 = zext i32 %gml615 to i64
  %wp617 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %t613, ptr %wp617, align 8, !alias.scope !3, !noalias !4
  %wp618 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c616, ptr %wp618, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef738 word 0xaa1a03f3
  %r619.p = getelementptr inbounds i8, ptr %c, i64 208
  %r619 = load i64, ptr %r619.p, align 8, !alias.scope !3, !noalias !4
  %t620 = or i64 0, %r619
  %wp621 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t620, ptr %wp621, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef73c word 0x78dfce77
  %r622.p = getelementptr inbounds i8, ptr %c, i64 152
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %t623 = add i64 %r622, -4
  %gmp624 = inttoptr i64 %t623 to ptr
  %gml625 = load i16, ptr %gmp624, align 1, !alias.scope !4, !noalias !3
  %c626 = sext i16 %gml625 to i32
  %wp627 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t623, ptr %wp627, align 8, !alias.scope !3, !noalias !4
  %c628 = zext i32 %c626 to i64
  %wp629 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c628, ptr %wp629, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef740 word 0x0a180296
  %r630.p = getelementptr inbounds i8, ptr %c, i64 192
  %r630 = load i64, ptr %r630.p, align 8, !alias.scope !3, !noalias !4
  %c631 = trunc i64 %r630 to i32
  %r632.p = getelementptr inbounds i8, ptr %c, i64 160
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %c633 = trunc i64 %r632 to i32
  %t634 = and i32 %c633, %c631
  %c635 = zext i32 %t634 to i64
  %wp636 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c635, ptr %wp636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef744 word 0x37f800b7
  %r637.p = getelementptr inbounds i8, ptr %c, i64 184
  %r637 = load i64, ptr %r637.p, align 8, !alias.scope !3, !noalias !4
  %t638 = and i64 %r637, 2147483648
  %cmp639 = icmp ne i64 %t638, 0
  br i1 %cmp639, label %L_8001ef758, label %L_8001ef748_ft
L_8001ef754:
  ; @pc 0x8001ef754 word 0x79400277
  %r654.p = getelementptr inbounds i8, ptr %c, i64 152
  %r654 = load i64, ptr %r654.p, align 8, !alias.scope !3, !noalias !4
  %gmp655 = inttoptr i64 %r654 to ptr
  %gml656 = load i16, ptr %gmp655, align 1, !alias.scope !4, !noalias !3
  %c657 = zext i16 %gml656 to i64
  %wp658 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c657, ptr %wp658, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef758
L_8001ef758:
  ; @pc 0x8001ef758 word 0x529ff388
  %c659 = zext i32 65436 to i64
  %wp660 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c659, ptr %wp660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef75c word 0x6b37211f
  %r661.p = getelementptr inbounds i8, ptr %c, i64 64
  %r661 = load i64, ptr %r661.p, align 8, !alias.scope !3, !noalias !4
  %c662 = trunc i64 %r661 to i32
  %r663.p = getelementptr inbounds i8, ptr %c, i64 184
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %c664 = trunc i64 %r663 to i16
  %c665 = zext i16 %c664 to i64
  %c666 = trunc i64 %c665 to i32
  %t667 = sub i32 %c662, %c666
  %fn668 = icmp slt i32 %t667, 0
  %fz669 = icmp eq i32 %t667, 0
  %fc670 = icmp uge i32 %c662, %c666
  %fx1671 = xor i32 %c662, %c666
  %fx2672 = xor i32 %c662, %t667
  %fva673 = and i32 %fx1671, %fx2672
  %fv674 = icmp slt i32 %fva673, 0
  %nz675 = zext i1 %fn668 to i64
  %zz676 = zext i1 %fz669 to i64
  %cz677 = zext i1 %fc670 to i64
  %vz678 = zext i1 %fv674 to i64
  %ns679 = shl i64 %nz675, 31
  %zs680 = shl i64 %zz676, 30
  %cs681 = shl i64 %cz677, 29
  %vs682 = shl i64 %vz678, 28
  %nzor683 = or i64 %ns679, %zs680
  %cvor684 = or i64 %cs681, %vs682
  %nzcv685 = or i64 %nzor683, %cvor684
  %wp686 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv685, ptr %wp686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef760 word 0x54001123
  %r687.p = getelementptr inbounds i8, ptr %c, i64 272
  %r687 = load i64, ptr %r687.p, align 8, !alias.scope !3, !noalias !4
  %fsh689 = lshr i64 %r687, 29
  %ftr690 = trunc i64 %fsh689 to i1
  %cond688 = xor i1 %ftr690, true
  br i1 %cond688, label %L_8001ef984, label %L_8001ef764_ft
L_8001ef788:
  ; @pc 0x8001ef788 word 0xf001c668
  %wp748 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef78c word 0x91150108
  %r749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %t750 = add i64 %r749, 1344
  %wp751 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t750, ptr %wp751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef790 word 0xf94002db
  %r752.p = getelementptr inbounds i8, ptr %c, i64 176
  %r752 = load i64, ptr %r752.p, align 8, !alias.scope !3, !noalias !4
  %gmp753 = inttoptr i64 %r752 to ptr
  %gml754 = load i64, ptr %gmp753, align 1, !alias.scope !4, !noalias !3
  %wp755 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml754, ptr %wp755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef794 word 0x08dffd08
  %r756.p = getelementptr inbounds i8, ptr %c, i64 64
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %atp757 = inttoptr i64 %r756 to ptr
  %lda758 = load atomic i8, ptr %atp757 acquire, align 1, !alias.scope !4, !noalias !3
  %c759 = zext i8 %lda758 to i64
  %wp760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c759, ptr %wp760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef798 word 0x360026e8
  %r761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r761 = load i64, ptr %r761.p, align 8, !alias.scope !3, !noalias !4
  %t762 = and i64 %r761, 1
  %cmp763 = icmp eq i64 %t762, 0
  br i1 %cmp763, label %L_8001efc74, label %L_8001ef79c
L_8001ef79c:
  ; @pc 0x8001ef79c word 0x37782a17
  %r764.p = getelementptr inbounds i8, ptr %c, i64 184
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %t765 = and i64 %r764, 32768
  %cmp766 = icmp ne i64 %t765, 0
  br i1 %cmp766, label %L_8001efcdc, label %L_8001ef7a0_ft
L_8001ef7f4:
  ; @pc 0x8001ef7f4 word 0x35001cbc
  %r915.p = getelementptr inbounds i8, ptr %c, i64 224
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %c916 = trunc i64 %r915 to i32
  %cmp917 = icmp ne i32 %c916, 0
  br i1 %cmp917, label %L_8001efb88, label %L_8001ef7f8_ft
L_8001ef7fc:
  ; @pc 0x8001ef7fc word 0xb9403c09
  %r928.p = getelementptr inbounds i8, ptr %c, i64 0
  %r928 = load i64, ptr %r928.p, align 8, !alias.scope !3, !noalias !4
  %t929 = add i64 %r928, 60
  %gmp930 = inttoptr i64 %t929 to ptr
  %gml931 = load i32, ptr %gmp930, align 1, !alias.scope !4, !noalias !3
  %c932 = zext i32 %gml931 to i64
  %wp933 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c932, ptr %wp933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef800 word 0x5280018b
  %c934 = zext i32 12 to i64
  %wp935 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c934, ptr %wp935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef804 word 0x1b0b7d08
  %r936.p = getelementptr inbounds i8, ptr %c, i64 88
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %c937 = trunc i64 %r936 to i32
  %r938.p = getelementptr inbounds i8, ptr %c, i64 64
  %r938 = load i64, ptr %r938.p, align 8, !alias.scope !3, !noalias !4
  %c939 = trunc i64 %r938 to i32
  %t940 = mul i32 %c939, %c937
  %t941 = add i32 0, %t940
  %c942 = zext i32 %t941 to i64
  %wp943 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c942, ptr %wp943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef808 word 0xb9404c0a
  %r944.p = getelementptr inbounds i8, ptr %c, i64 0
  %r944 = load i64, ptr %r944.p, align 8, !alias.scope !3, !noalias !4
  %t945 = add i64 %r944, 76
  %gmp946 = inttoptr i64 %t945 to ptr
  %gml947 = load i32, ptr %gmp946, align 1, !alias.scope !4, !noalias !3
  %c948 = zext i32 %gml947 to i64
  %wp949 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c948, ptr %wp949, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef80c word 0x0b090149
  %r950.p = getelementptr inbounds i8, ptr %c, i64 80
  %r950 = load i64, ptr %r950.p, align 8, !alias.scope !3, !noalias !4
  %c951 = trunc i64 %r950 to i32
  %r952.p = getelementptr inbounds i8, ptr %c, i64 72
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %c953 = trunc i64 %r952 to i32
  %t954 = add i32 %c951, %c953
  %c955 = zext i32 %t954 to i64
  %wp956 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c955, ptr %wp956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef810 word 0xb9405c0a
  %r957.p = getelementptr inbounds i8, ptr %c, i64 0
  %r957 = load i64, ptr %r957.p, align 8, !alias.scope !3, !noalias !4
  %t958 = add i64 %r957, 92
  %gmp959 = inttoptr i64 %t958 to ptr
  %gml960 = load i32, ptr %gmp959, align 1, !alias.scope !4, !noalias !3
  %c961 = zext i32 %gml960 to i64
  %wp962 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c961, ptr %wp962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef814 word 0x0b0a0129
  %r963.p = getelementptr inbounds i8, ptr %c, i64 72
  %r963 = load i64, ptr %r963.p, align 8, !alias.scope !3, !noalias !4
  %c964 = trunc i64 %r963 to i32
  %r965.p = getelementptr inbounds i8, ptr %c, i64 80
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  %c966 = trunc i64 %r965 to i32
  %t967 = add i32 %c964, %c966
  %c968 = zext i32 %t967 to i64
  %wp969 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c968, ptr %wp969, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef818 word 0xb9406c0a
  %r970.p = getelementptr inbounds i8, ptr %c, i64 0
  %r970 = load i64, ptr %r970.p, align 8, !alias.scope !3, !noalias !4
  %t971 = add i64 %r970, 108
  %gmp972 = inttoptr i64 %t971 to ptr
  %gml973 = load i32, ptr %gmp972, align 1, !alias.scope !4, !noalias !3
  %c974 = zext i32 %gml973 to i64
  %wp975 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c974, ptr %wp975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef81c word 0x0b0a0d08
  %r976.p = getelementptr inbounds i8, ptr %c, i64 64
  %r976 = load i64, ptr %r976.p, align 8, !alias.scope !3, !noalias !4
  %c977 = trunc i64 %r976 to i32
  %r978.p = getelementptr inbounds i8, ptr %c, i64 80
  %r978 = load i64, ptr %r978.p, align 8, !alias.scope !3, !noalias !4
  %c979 = trunc i64 %r978 to i32
  %t980 = shl i32 %c979, 3
  %t981 = add i32 %c977, %t980
  %c982 = zext i32 %t981 to i64
  %wp983 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c982, ptr %wp983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef820 word 0x0b090913
  %r984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r984 = load i64, ptr %r984.p, align 8, !alias.scope !3, !noalias !4
  %c985 = trunc i64 %r984 to i32
  %r986.p = getelementptr inbounds i8, ptr %c, i64 72
  %r986 = load i64, ptr %r986.p, align 8, !alias.scope !3, !noalias !4
  %c987 = trunc i64 %r986 to i32
  %t988 = shl i32 %c987, 2
  %t989 = add i32 %c985, %t988
  %c990 = zext i32 %t989 to i64
  %wp991 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c990, ptr %wp991, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef824
L_8001ef824:
  ; @pc 0x8001ef824 word 0xf9400ae0
  %r992.p = getelementptr inbounds i8, ptr %c, i64 184
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %t993 = add i64 %r992, 16
  %gmp994 = inttoptr i64 %t993 to ptr
  %gml995 = load i64, ptr %gmp994, align 1, !alias.scope !4, !noalias !3
  %wp996 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef828 word 0xb4000100
  %r997.p = getelementptr inbounds i8, ptr %c, i64 0
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %cmp998 = icmp eq i64 %r997, 0
  br i1 %cmp998, label %L_8001ef848, label %L_8001ef82c_ft
L_8001ef848:
  ; @pc 0x8001ef848 word 0x8b33c008
  %r1045.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1045 = load i64, ptr %r1045.p, align 8, !alias.scope !3, !noalias !4
  %r1046.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1046 = load i64, ptr %r1046.p, align 8, !alias.scope !3, !noalias !4
  %c1047 = trunc i64 %r1046 to i32
  %c1048 = sext i32 %c1047 to i64
  %t1049 = add i64 %r1045, %c1048
  %wp1050 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1049, ptr %wp1050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef84c word 0x2a1f03f7
  %t1051 = or i32 0, 0
  %c1052 = zext i32 %t1051 to i64
  %wp1053 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1052, ptr %wp1053, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef850 word 0x927ef508
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %t1055 = and i64 %r1054, -4
  %wp1056 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1055, ptr %wp1056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef854 word 0xf90002c8
  %r1057.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1057 = load i64, ptr %r1057.p, align 8, !alias.scope !3, !noalias !4
  %r1058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1058 = load i64, ptr %r1058.p, align 8, !alias.scope !3, !noalias !4
  %gmp1059 = inttoptr i64 %r1057 to ptr
  store i64 %r1058, ptr %gmp1059, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef858 word 0x37000c7c
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %t1061 = and i64 %r1060, 1
  %cmp1062 = icmp ne i64 %t1061, 0
  br i1 %cmp1062, label %L_8001ef9e4, label %L_8001ef85c
L_8001ef85c:
  ; @pc 0x8001ef85c word 0x520002e0
  %r1063.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1063 = load i64, ptr %r1063.p, align 8, !alias.scope !3, !noalias !4
  %c1064 = trunc i64 %r1063 to i32
  %t1065 = xor i32 %c1064, 1
  %c1066 = zext i32 %t1065 to i64
  %wp1067 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c1066, ptr %wp1067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef860 word 0xa9584ff4
  %r1068.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1068 = load i64, ptr %r1068.p, align 8, !alias.scope !3, !noalias !4
  %t1069 = add i64 %r1068, 384
  %t1070 = add i64 %t1069, 8
  %gmp1071 = inttoptr i64 %t1069 to ptr
  %gml1072 = load i64, ptr %gmp1071, align 1, !alias.scope !4, !noalias !3
  %gmp1073 = inttoptr i64 %t1070 to ptr
  %gml1074 = load i64, ptr %gmp1073, align 1, !alias.scope !4, !noalias !3
  %wp1075 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1072, ptr %wp1075, align 8, !alias.scope !3, !noalias !4
  %wp1076 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1074, ptr %wp1076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef864 word 0xa95757f6
  %r1077.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1077 = load i64, ptr %r1077.p, align 8, !alias.scope !3, !noalias !4
  %t1078 = add i64 %r1077, 368
  %t1079 = add i64 %t1078, 8
  %gmp1080 = inttoptr i64 %t1078 to ptr
  %gml1081 = load i64, ptr %gmp1080, align 1, !alias.scope !4, !noalias !3
  %gmp1082 = inttoptr i64 %t1079 to ptr
  %gml1083 = load i64, ptr %gmp1082, align 1, !alias.scope !4, !noalias !3
  %wp1084 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1081, ptr %wp1084, align 8, !alias.scope !3, !noalias !4
  %wp1085 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml1083, ptr %wp1085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef868 word 0xa9565ff8
  %r1086.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1086 = load i64, ptr %r1086.p, align 8, !alias.scope !3, !noalias !4
  %t1087 = add i64 %r1086, 352
  %t1088 = add i64 %t1087, 8
  %gmp1089 = inttoptr i64 %t1087 to ptr
  %gml1090 = load i64, ptr %gmp1089, align 1, !alias.scope !4, !noalias !3
  %gmp1091 = inttoptr i64 %t1088 to ptr
  %gml1092 = load i64, ptr %gmp1091, align 1, !alias.scope !4, !noalias !3
  %wp1093 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml1090, ptr %wp1093, align 8, !alias.scope !3, !noalias !4
  %wp1094 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1092, ptr %wp1094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef86c word 0xa95567fa
  %r1095.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1095 = load i64, ptr %r1095.p, align 8, !alias.scope !3, !noalias !4
  %t1096 = add i64 %r1095, 336
  %t1097 = add i64 %t1096, 8
  %gmp1098 = inttoptr i64 %t1096 to ptr
  %gml1099 = load i64, ptr %gmp1098, align 1, !alias.scope !4, !noalias !3
  %gmp1100 = inttoptr i64 %t1097 to ptr
  %gml1101 = load i64, ptr %gmp1100, align 1, !alias.scope !4, !noalias !3
  %wp1102 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml1099, ptr %wp1102, align 8, !alias.scope !3, !noalias !4
  %wp1103 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml1101, ptr %wp1103, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef870 word 0xa9546ffc
  %r1104.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1104 = load i64, ptr %r1104.p, align 8, !alias.scope !3, !noalias !4
  %t1105 = add i64 %r1104, 320
  %t1106 = add i64 %t1105, 8
  %gmp1107 = inttoptr i64 %t1105 to ptr
  %gml1108 = load i64, ptr %gmp1107, align 1, !alias.scope !4, !noalias !3
  %gmp1109 = inttoptr i64 %t1106 to ptr
  %gml1110 = load i64, ptr %gmp1109, align 1, !alias.scope !4, !noalias !3
  %wp1111 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml1108, ptr %wp1111, align 8, !alias.scope !3, !noalias !4
  %wp1112 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1110, ptr %wp1112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef874 word 0xa9537bfd
  %r1113.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1113 = load i64, ptr %r1113.p, align 8, !alias.scope !3, !noalias !4
  %t1114 = add i64 %r1113, 304
  %t1115 = add i64 %t1114, 8
  %gmp1116 = inttoptr i64 %t1114 to ptr
  %gml1117 = load i64, ptr %gmp1116, align 1, !alias.scope !4, !noalias !3
  %gmp1118 = inttoptr i64 %t1115 to ptr
  %gml1119 = load i64, ptr %gmp1118, align 1, !alias.scope !4, !noalias !3
  %wp1120 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1117, ptr %wp1120, align 8, !alias.scope !3, !noalias !4
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1119, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef878 word 0x910643ff
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %t1123 = add i64 %r1122, 400
  %wp1124 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1123, ptr %wp1124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef87c word 0xd65f03c0
  ret void
L_8001ef880:
  ; @pc 0x8001ef880 word 0xb9406109
  %r1125.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1125 = load i64, ptr %r1125.p, align 8, !alias.scope !3, !noalias !4
  %t1126 = add i64 %r1125, 96
  %gmp1127 = inttoptr i64 %t1126 to ptr
  %gml1128 = load i32, ptr %gmp1127, align 1, !alias.scope !4, !noalias !3
  %c1129 = zext i32 %gml1128 to i64
  %wp1130 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1129, ptr %wp1130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef884 word 0x6b17013f
  %r1131.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1131 = load i64, ptr %r1131.p, align 8, !alias.scope !3, !noalias !4
  %c1132 = trunc i64 %r1131 to i32
  %r1133.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1133 = load i64, ptr %r1133.p, align 8, !alias.scope !3, !noalias !4
  %c1134 = trunc i64 %r1133 to i32
  %t1135 = sub i32 %c1132, %c1134
  %fn1136 = icmp slt i32 %t1135, 0
  %fz1137 = icmp eq i32 %t1135, 0
  %fc1138 = icmp uge i32 %c1132, %c1134
  %fx11139 = xor i32 %c1132, %c1134
  %fx21140 = xor i32 %c1132, %t1135
  %fva1141 = and i32 %fx11139, %fx21140
  %fv1142 = icmp slt i32 %fva1141, 0
  %nz1143 = zext i1 %fn1136 to i64
  %zz1144 = zext i1 %fz1137 to i64
  %cz1145 = zext i1 %fc1138 to i64
  %vz1146 = zext i1 %fv1142 to i64
  %ns1147 = shl i64 %nz1143, 31
  %zs1148 = shl i64 %zz1144, 30
  %cs1149 = shl i64 %cz1145, 29
  %vs1150 = shl i64 %vz1146, 28
  %nzor1151 = or i64 %ns1147, %zs1148
  %cvor1152 = or i64 %cs1149, %vs1150
  %nzcv1153 = or i64 %nzor1151, %cvor1152
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1153, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef888 word 0x5400296d
  %r1155.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1155 = load i64, ptr %r1155.p, align 8, !alias.scope !3, !noalias !4
  %fsh1157 = lshr i64 %r1155, 30
  %ftr1158 = trunc i64 %fsh1157 to i1
  %fsh1159 = lshr i64 %r1155, 31
  %ftr1160 = trunc i64 %fsh1159 to i1
  %fsh1161 = lshr i64 %r1155, 28
  %ftr1162 = trunc i64 %fsh1161 to i1
  %fnz1163 = xor i1 %ftr1158, true
  %feq1164 = icmp eq i1 %ftr1160, %ftr1162
  %fgt1165 = and i1 %fnz1163, %feq1164
  %cond1156 = xor i1 %fgt1165, true
  br i1 %cond1156, label %L_8001efdb4, label %L_8001ef88c_ft
L_8001ef894:
  ; @pc 0x8001ef894 word 0x9001bb88
  %wp1180 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef898 word 0xf9452d08
  %r1181.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1181 = load i64, ptr %r1181.p, align 8, !alias.scope !3, !noalias !4
  %t1182 = add i64 %r1181, 2648
  %gmp1183 = inttoptr i64 %t1182 to ptr
  %gml1184 = load i64, ptr %gmp1183, align 1, !alias.scope !4, !noalias !3
  %wp1185 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1184, ptr %wp1185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef89c word 0x08dffd08
  %r1186.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1186 = load i64, ptr %r1186.p, align 8, !alias.scope !3, !noalias !4
  %atp1187 = inttoptr i64 %r1186 to ptr
  %lda1188 = load atomic i8, ptr %atp1187 acquire, align 1, !alias.scope !4, !noalias !3
  %c1189 = zext i8 %lda1188 to i64
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1189, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8a0 word 0x36002b08
  %r1191.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1191 = load i64, ptr %r1191.p, align 8, !alias.scope !3, !noalias !4
  %t1192 = and i64 %r1191, 1
  %cmp1193 = icmp eq i64 %t1192, 0
  br i1 %cmp1193, label %L_8001efe00, label %L_8001ef8a4
L_8001ef8a4:
  ; @pc 0x8001ef8a4 word 0xb4000117
  %r1194.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1194 = load i64, ptr %r1194.p, align 8, !alias.scope !3, !noalias !4
  %cmp1195 = icmp eq i64 %r1194, 0
  br i1 %cmp1195, label %L_8001ef8c4, label %L_8001ef8a8_ft
L_8001ef8c4:
  ; @pc 0x8001ef8c4 word 0x9001bb88
  %wp1218 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8c8 word 0xf9453508
  %r1219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1219 = load i64, ptr %r1219.p, align 8, !alias.scope !3, !noalias !4
  %t1220 = add i64 %r1219, 2664
  %gmp1221 = inttoptr i64 %t1220 to ptr
  %gml1222 = load i64, ptr %gmp1221, align 1, !alias.scope !4, !noalias !3
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1222, ptr %wp1223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8cc word 0x08dffd08
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %atp1225 = inttoptr i64 %r1224 to ptr
  %lda1226 = load atomic i8, ptr %atp1225 acquire, align 1, !alias.scope !4, !noalias !3
  %c1227 = zext i8 %lda1226 to i64
  %wp1228 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1227, ptr %wp1228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8d0 word 0x36002b48
  %r1229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1229 = load i64, ptr %r1229.p, align 8, !alias.scope !3, !noalias !4
  %t1230 = and i64 %r1229, 1
  %cmp1231 = icmp eq i64 %t1230, 0
  br i1 %cmp1231, label %L_8001efe38, label %L_8001ef8d4
L_8001ef8d4:
  ; @pc 0x8001ef8d4 word 0xb4000117
  %r1232.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1232 = load i64, ptr %r1232.p, align 8, !alias.scope !3, !noalias !4
  %cmp1233 = icmp eq i64 %r1232, 0
  br i1 %cmp1233, label %L_8001ef8f4, label %L_8001ef8d8_ft
L_8001ef8f4:
  ; @pc 0x8001ef8f4 word 0x9001bb88
  %wp1256 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8f8 word 0xf9453d08
  %r1257.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1257 = load i64, ptr %r1257.p, align 8, !alias.scope !3, !noalias !4
  %t1258 = add i64 %r1257, 2680
  %gmp1259 = inttoptr i64 %t1258 to ptr
  %gml1260 = load i64, ptr %gmp1259, align 1, !alias.scope !4, !noalias !3
  %wp1261 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1260, ptr %wp1261, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8fc word 0x08dffd08
  %r1262.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1262 = load i64, ptr %r1262.p, align 8, !alias.scope !3, !noalias !4
  %atp1263 = inttoptr i64 %r1262 to ptr
  %lda1264 = load atomic i8, ptr %atp1263 acquire, align 1, !alias.scope !4, !noalias !3
  %c1265 = zext i8 %lda1264 to i64
  %wp1266 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1265, ptr %wp1266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef900 word 0x36002b88
  %r1267.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1267 = load i64, ptr %r1267.p, align 8, !alias.scope !3, !noalias !4
  %t1268 = and i64 %r1267, 1
  %cmp1269 = icmp eq i64 %t1268, 0
  br i1 %cmp1269, label %L_8001efe70, label %L_8001ef904
L_8001ef904:
  ; @pc 0x8001ef904 word 0xb4000117
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %cmp1271 = icmp eq i64 %r1270, 0
  br i1 %cmp1271, label %L_8001ef924, label %L_8001ef908_ft
L_8001ef924:
  ; @pc 0x8001ef924 word 0x9001bb88
  %wp1294 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef928 word 0xf9454508
  %r1295.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1295 = load i64, ptr %r1295.p, align 8, !alias.scope !3, !noalias !4
  %t1296 = add i64 %r1295, 2696
  %gmp1297 = inttoptr i64 %t1296 to ptr
  %gml1298 = load i64, ptr %gmp1297, align 1, !alias.scope !4, !noalias !3
  %wp1299 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1298, ptr %wp1299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef92c word 0x08dffd08
  %r1300.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1300 = load i64, ptr %r1300.p, align 8, !alias.scope !3, !noalias !4
  %atp1301 = inttoptr i64 %r1300 to ptr
  %lda1302 = load atomic i8, ptr %atp1301 acquire, align 1, !alias.scope !4, !noalias !3
  %c1303 = zext i8 %lda1302 to i64
  %wp1304 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1303, ptr %wp1304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef930 word 0x36002bc8
  %r1305.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1305 = load i64, ptr %r1305.p, align 8, !alias.scope !3, !noalias !4
  %t1306 = and i64 %r1305, 1
  %cmp1307 = icmp eq i64 %t1306, 0
  br i1 %cmp1307, label %L_8001efea8, label %L_8001ef934
L_8001ef934:
  ; @pc 0x8001ef934 word 0xb4000117
  %r1308.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1308 = load i64, ptr %r1308.p, align 8, !alias.scope !3, !noalias !4
  %cmp1309 = icmp eq i64 %r1308, 0
  br i1 %cmp1309, label %L_8001ef954, label %L_8001ef938_ft
L_8001ef954:
  ; @pc 0x8001ef954 word 0x9001bb88
  %wp1332 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef958 word 0xf9454d08
  %r1333.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1333 = load i64, ptr %r1333.p, align 8, !alias.scope !3, !noalias !4
  %t1334 = add i64 %r1333, 2712
  %gmp1335 = inttoptr i64 %t1334 to ptr
  %gml1336 = load i64, ptr %gmp1335, align 1, !alias.scope !4, !noalias !3
  %wp1337 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1336, ptr %wp1337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef95c word 0x08dffd08
  %r1338.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1338 = load i64, ptr %r1338.p, align 8, !alias.scope !3, !noalias !4
  %atp1339 = inttoptr i64 %r1338 to ptr
  %lda1340 = load atomic i8, ptr %atp1339 acquire, align 1, !alias.scope !4, !noalias !3
  %c1341 = zext i8 %lda1340 to i64
  %wp1342 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1341, ptr %wp1342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef960 word 0x36002c08
  %r1343.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1343 = load i64, ptr %r1343.p, align 8, !alias.scope !3, !noalias !4
  %t1344 = and i64 %r1343, 1
  %cmp1345 = icmp eq i64 %t1344, 0
  br i1 %cmp1345, label %L_8001efee0, label %L_8001ef964
L_8001ef964:
  ; @pc 0x8001ef964 word 0xb4ffef97
  %r1346.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1346 = load i64, ptr %r1346.p, align 8, !alias.scope !3, !noalias !4
  %cmp1347 = icmp eq i64 %r1346, 0
  br i1 %cmp1347, label %L_8001ef754, label %L_8001ef968_ft
L_8001ef984:
  ; @pc 0x8001ef984 word 0xb9400348
  %r1370.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1370 = load i64, ptr %r1370.p, align 8, !alias.scope !3, !noalias !4
  %gmp1371 = inttoptr i64 %r1370 to ptr
  %gml1372 = load i32, ptr %gmp1371, align 1, !alias.scope !4, !noalias !3
  %c1373 = zext i32 %gml1372 to i64
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1373, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef988 word 0x6b1802df
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %c1376 = trunc i64 %r1375 to i32
  %r1377.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1377 = load i64, ptr %r1377.p, align 8, !alias.scope !3, !noalias !4
  %c1378 = trunc i64 %r1377 to i32
  %t1379 = sub i32 %c1376, %c1378
  %fn1380 = icmp slt i32 %t1379, 0
  %fz1381 = icmp eq i32 %t1379, 0
  %fc1382 = icmp uge i32 %c1376, %c1378
  %fx11383 = xor i32 %c1376, %c1378
  %fx21384 = xor i32 %c1376, %t1379
  %fva1385 = and i32 %fx11383, %fx21384
  %fv1386 = icmp slt i32 %fva1385, 0
  %nz1387 = zext i1 %fn1380 to i64
  %zz1388 = zext i1 %fz1381 to i64
  %cz1389 = zext i1 %fc1382 to i64
  %vz1390 = zext i1 %fv1386 to i64
  %ns1391 = shl i64 %nz1387, 31
  %zs1392 = shl i64 %zz1388, 30
  %cs1393 = shl i64 %cz1389, 29
  %vs1394 = shl i64 %vz1390, 28
  %nzor1395 = or i64 %ns1391, %zs1392
  %cvor1396 = or i64 %cs1393, %vs1394
  %nzcv1397 = or i64 %nzor1395, %cvor1396
  %wp1398 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1397, ptr %wp1398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef98c word 0x1207751a
  %r1399.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1399 = load i64, ptr %r1399.p, align 8, !alias.scope !3, !noalias !4
  %c1400 = trunc i64 %r1399 to i32
  %t1401 = and i32 %c1400, -25165825
  %c1402 = zext i32 %t1401 to i64
  %wp1403 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1402, ptr %wp1403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef990 word 0x7a401b44
  %r1404.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1404 = load i64, ptr %r1404.p, align 8, !alias.scope !3, !noalias !4
  %fsh1406 = lshr i64 %r1404, 30
  %ftr1407 = trunc i64 %fsh1406 to i1
  %cond1405 = xor i1 %ftr1407, true
  %r1408.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1408 = load i64, ptr %r1408.p, align 8, !alias.scope !3, !noalias !4
  %c1409 = trunc i64 %r1408 to i32
  %t1410 = sub i32 %c1409, 0
  %cmp1411 = icmp slt i32 %t1410, 0
  %cmp1412 = icmp eq i32 %t1410, 0
  %cmp1413 = icmp uge i32 %c1409, 0
  %t1414 = xor i32 %c1409, 0
  %t1415 = xor i32 %c1409, %t1410
  %t1416 = and i32 %t1414, %t1415
  %cmp1417 = icmp slt i32 %t1416, 0
  %c1418 = zext i1 %cmp1411 to i64
  %t1419 = shl i64 %c1418, 31
  %c1420 = zext i1 %cmp1412 to i64
  %t1421 = shl i64 %c1420, 30
  %c1422 = zext i1 %cmp1413 to i64
  %t1423 = shl i64 %c1422, 29
  %c1424 = zext i1 %cmp1417 to i64
  %t1425 = shl i64 %c1424, 28
  %t1426 = or i64 %t1423, %t1425
  %t1427 = or i64 %t1419, %t1421
  %t1428 = or i64 %t1427, %t1426
  %sel1429 = select i1 %cond1405, i64 %t1428, i64 1073741824
  %wp1430 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel1429, ptr %wp1430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef994 word 0x54000961
  %r1431.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1431 = load i64, ptr %r1431.p, align 8, !alias.scope !3, !noalias !4
  %fsh1433 = lshr i64 %r1431, 30
  %ftr1434 = trunc i64 %fsh1433 to i1
  %cond1432 = xor i1 %ftr1434, true
  br i1 %cond1432, label %L_8001efac0, label %L_8001ef998_ft
L_8001ef9a8:
  ; @pc 0x8001ef9a8 word 0xf9400bea
  %r1449.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1449 = load i64, ptr %r1449.p, align 8, !alias.scope !3, !noalias !4
  %t1450 = add i64 %r1449, 16
  %gmp1451 = inttoptr i64 %t1450 to ptr
  %gml1452 = load i64, ptr %gmp1451, align 1, !alias.scope !4, !noalias !3
  %wp1453 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1452, ptr %wp1453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9ac word 0x7100027f
  %r1454.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1454 = load i64, ptr %r1454.p, align 8, !alias.scope !3, !noalias !4
  %c1455 = trunc i64 %r1454 to i32
  %t1456 = sub i32 %c1455, 0
  %fn1457 = icmp slt i32 %t1456, 0
  %fz1458 = icmp eq i32 %t1456, 0
  %fc1459 = icmp uge i32 %c1455, 0
  %fx11460 = xor i32 %c1455, 0
  %fx21461 = xor i32 %c1455, %t1456
  %fva1462 = and i32 %fx11460, %fx21461
  %fv1463 = icmp slt i32 %fva1462, 0
  %nz1464 = zext i1 %fn1457 to i64
  %zz1465 = zext i1 %fz1458 to i64
  %cz1466 = zext i1 %fc1459 to i64
  %vz1467 = zext i1 %fv1463 to i64
  %ns1468 = shl i64 %nz1464, 31
  %zs1469 = shl i64 %zz1465, 30
  %cs1470 = shl i64 %cz1466, 29
  %vs1471 = shl i64 %vz1467, 28
  %nzor1472 = or i64 %ns1468, %zs1469
  %cvor1473 = or i64 %cs1470, %vs1471
  %nzcv1474 = or i64 %nzor1472, %cvor1473
  %wp1475 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1474, ptr %wp1475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9b0 word 0x927ef6c8
  %r1476.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1476 = load i64, ptr %r1476.p, align 8, !alias.scope !3, !noalias !4
  %t1477 = and i64 %r1476, -4
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1477, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9b4 word 0x1a9f07f7
  %t1479 = add i32 0, 1
  %r1480.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1480 = load i64, ptr %r1480.p, align 8, !alias.scope !3, !noalias !4
  %fsh1482 = lshr i64 %r1480, 30
  %cond1481 = trunc i64 %fsh1482 to i1
  %sel1483 = select i1 %cond1481, i32 0, i32 %t1479
  %c1484 = zext i32 %sel1483 to i64
  %wp1485 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1484, ptr %wp1485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9b8 word 0x0a180349
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %c1487 = trunc i64 %r1486 to i32
  %r1488.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1488 = load i64, ptr %r1488.p, align 8, !alias.scope !3, !noalias !4
  %c1489 = trunc i64 %r1488 to i32
  %t1490 = and i32 %c1489, %c1487
  %c1491 = zext i32 %t1490 to i64
  %wp1492 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1491, ptr %wp1492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9bc word 0xf940015b
  %r1493.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1493 = load i64, ptr %r1493.p, align 8, !alias.scope !3, !noalias !4
  %gmp1494 = inttoptr i64 %r1493 to ptr
  %gml1495 = load i64, ptr %gmp1494, align 1, !alias.scope !4, !noalias !3
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml1495, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9c0 word 0xaa0a03f6
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %t1498 = or i64 0, %r1497
  %wp1499 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1498, ptr %wp1499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9c4 word 0x5318628a
  %r1500.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1500 = load i64, ptr %r1500.p, align 8, !alias.scope !3, !noalias !4
  %c1501 = trunc i64 %r1500 to i32
  %ror1502 = call i32 @llvm.fshr.i32(i32 %c1501, i32 %c1501, i32 24)
  %t1503 = and i32 %ror1502, 1
  %c1504 = zext i32 %t1503 to i64
  %wp1505 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1504, ptr %wp1505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9c8 word 0xaa0a0108
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %r1507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1507 = load i64, ptr %r1507.p, align 8, !alias.scope !3, !noalias !4
  %t1508 = or i64 %r1507, %r1506
  %wp1509 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1508, ptr %wp1509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9cc word 0xf90002c8
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %r1511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1511 = load i64, ptr %r1511.p, align 8, !alias.scope !3, !noalias !4
  %gmp1512 = inttoptr i64 %r1510 to ptr
  store i64 %r1511, ptr %gmp1512, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef9d0 word 0x36b80074
  %r1513.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1513 = load i64, ptr %r1513.p, align 8, !alias.scope !3, !noalias !4
  %t1514 = and i64 %r1513, 8388608
  %cmp1515 = icmp eq i64 %t1514, 0
  br i1 %cmp1515, label %L_8001ef9dc, label %L_8001ef9d4_ft
L_8001ef9dc:
  ; @pc 0x8001ef9dc word 0x6b18013f
  %r1522.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1522 = load i64, ptr %r1522.p, align 8, !alias.scope !3, !noalias !4
  %c1523 = trunc i64 %r1522 to i32
  %r1524.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1524 = load i64, ptr %r1524.p, align 8, !alias.scope !3, !noalias !4
  %c1525 = trunc i64 %r1524 to i32
  %t1526 = sub i32 %c1523, %c1525
  %fn1527 = icmp slt i32 %t1526, 0
  %fz1528 = icmp eq i32 %t1526, 0
  %fc1529 = icmp uge i32 %c1523, %c1525
  %fx11530 = xor i32 %c1523, %c1525
  %fx21531 = xor i32 %c1523, %t1526
  %fva1532 = and i32 %fx11530, %fx21531
  %fv1533 = icmp slt i32 %fva1532, 0
  %nz1534 = zext i1 %fn1527 to i64
  %zz1535 = zext i1 %fz1528 to i64
  %cz1536 = zext i1 %fc1529 to i64
  %vz1537 = zext i1 %fv1533 to i64
  %ns1538 = shl i64 %nz1534, 31
  %zs1539 = shl i64 %zz1535, 30
  %cs1540 = shl i64 %cz1536, 29
  %vs1541 = shl i64 %vz1537, 28
  %nzor1542 = or i64 %ns1538, %zs1539
  %cvor1543 = or i64 %cs1540, %vs1541
  %nzcv1544 = or i64 %nzor1542, %cvor1543
  %wp1545 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1544, ptr %wp1545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9e0 word 0x54fff3e1
  %r1546.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1546 = load i64, ptr %r1546.p, align 8, !alias.scope !3, !noalias !4
  %fsh1548 = lshr i64 %r1546, 30
  %ftr1549 = trunc i64 %fsh1548 to i1
  %cond1547 = xor i1 %ftr1549, true
  br i1 %cond1547, label %L_8001ef85c, label %L_8001ef9e4
L_8001ef9e4:
  ; @pc 0x8001ef9e4 word 0xf1000f7f
  %r1550.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1550 = load i64, ptr %r1550.p, align 8, !alias.scope !3, !noalias !4
  %t1551 = sub i64 %r1550, 3
  %fn1552 = icmp slt i64 %t1551, 0
  %fz1553 = icmp eq i64 %t1551, 0
  %fc1554 = icmp uge i64 %r1550, 3
  %fx11555 = xor i64 %r1550, 3
  %fx21556 = xor i64 %r1550, %t1551
  %fva1557 = and i64 %fx11555, %fx21556
  %fv1558 = icmp slt i64 %fva1557, 0
  %nz1559 = zext i1 %fn1552 to i64
  %zz1560 = zext i1 %fz1553 to i64
  %cz1561 = zext i1 %fc1554 to i64
  %vz1562 = zext i1 %fv1558 to i64
  %ns1563 = shl i64 %nz1559, 31
  %zs1564 = shl i64 %zz1560, 30
  %cs1565 = shl i64 %cz1561, 29
  %vs1566 = shl i64 %vz1562, 28
  %nzor1567 = or i64 %ns1563, %zs1564
  %cvor1568 = or i64 %cs1565, %vs1566
  %nzcv1569 = or i64 %nzor1567, %cvor1568
  %wp1570 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1569, ptr %wp1570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9e8 word 0x54001108
  %r1571.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1571 = load i64, ptr %r1571.p, align 8, !alias.scope !3, !noalias !4
  %fsh1573 = lshr i64 %r1571, 29
  %ftr1574 = trunc i64 %fsh1573 to i1
  %fsh1575 = lshr i64 %r1571, 30
  %ftr1576 = trunc i64 %fsh1575 to i1
  %fnz1577 = xor i1 %ftr1576, true
  %cond1572 = and i1 %ftr1574, %fnz1577
  br i1 %cond1572, label %L_8001efc08, label %L_8001ef9ec_ft
L_8001efa18:
  ; @pc 0x8001efa18 word 0x12800008
  %c1622 = zext i32 -1 to i64
  %wp1623 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1622, ptr %wp1623, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa1c word 0xf9001a68
  %r1624.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1624 = load i64, ptr %r1624.p, align 8, !alias.scope !3, !noalias !4
  %t1625 = add i64 %r1624, 48
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %gmp1627 = inttoptr i64 %t1625 to ptr
  store i64 %r1626, ptr %gmp1627, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa20 word 0x9001bae8
  %wp1628 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa24 word 0xf945bd08
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %t1630 = add i64 %r1629, 2936
  %gmp1631 = inttoptr i64 %t1630 to ptr
  %gml1632 = load i64, ptr %gmp1631, align 1, !alias.scope !4, !noalias !3
  %wp1633 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1632, ptr %wp1633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa28 word 0xa9017e7f
  %r1634.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1634 = load i64, ptr %r1634.p, align 8, !alias.scope !3, !noalias !4
  %t1635 = add i64 %r1634, 16
  %t1636 = add i64 %t1635, 8
  %gmp1637 = inttoptr i64 %t1635 to ptr
  store i64 0, ptr %gmp1637, align 1, !alias.scope !4, !noalias !3
  %gmp1638 = inttoptr i64 %t1636 to ptr
  store i64 0, ptr %gmp1638, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa2c word 0xa9027e7f
  %r1639.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1639 = load i64, ptr %r1639.p, align 8, !alias.scope !3, !noalias !4
  %t1640 = add i64 %r1639, 32
  %t1641 = add i64 %t1640, 8
  %gmp1642 = inttoptr i64 %t1640 to ptr
  store i64 0, ptr %gmp1642, align 1, !alias.scope !4, !noalias !3
  %gmp1643 = inttoptr i64 %t1641 to ptr
  store i64 0, ptr %gmp1643, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa30 word 0xa9007e68
  %r1644.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1644 = load i64, ptr %r1644.p, align 8, !alias.scope !3, !noalias !4
  %t1645 = add i64 %r1644, 8
  %r1646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1646 = load i64, ptr %r1646.p, align 8, !alias.scope !3, !noalias !4
  %gmp1647 = inttoptr i64 %r1644 to ptr
  store i64 %r1646, ptr %gmp1647, align 1, !alias.scope !4, !noalias !3
  %gmp1648 = inttoptr i64 %t1645 to ptr
  store i64 0, ptr %gmp1648, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa34 word 0x29402408
  %r1649.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1649 = load i64, ptr %r1649.p, align 8, !alias.scope !3, !noalias !4
  %t1650 = add i64 %r1649, 4
  %gmp1651 = inttoptr i64 %r1649 to ptr
  %gml1652 = load i32, ptr %gmp1651, align 1, !alias.scope !4, !noalias !3
  %c1653 = zext i32 %gml1652 to i64
  %gmp1654 = inttoptr i64 %t1650 to ptr
  %gml1655 = load i32, ptr %gmp1654, align 1, !alias.scope !4, !noalias !3
  %c1656 = zext i32 %gml1655 to i64
  %wp1657 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1653, ptr %wp1657, align 8, !alias.scope !3, !noalias !4
  %wp1658 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1656, ptr %wp1658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa38 word 0x93407d08
  %r1659.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1659 = load i64, ptr %r1659.p, align 8, !alias.scope !3, !noalias !4
  %t1660 = lshr i64 %r1659, 31
  %t1661 = and i64 %t1660, 1
  %t1662 = sub i64 0, %t1661
  %t1663 = and i64 %t1662, -4294967296
  %t1664 = and i64 %r1659, 4294967295
  %t1665 = or i64 %t1663, %t1664
  %wp1666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1665, ptr %wp1666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa3c word 0x6b09011f
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %c1668 = trunc i64 %r1667 to i32
  %r1669.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1669 = load i64, ptr %r1669.p, align 8, !alias.scope !3, !noalias !4
  %c1670 = trunc i64 %r1669 to i32
  %t1671 = sub i32 %c1668, %c1670
  %fn1672 = icmp slt i32 %t1671, 0
  %fz1673 = icmp eq i32 %t1671, 0
  %fc1674 = icmp uge i32 %c1668, %c1670
  %fx11675 = xor i32 %c1668, %c1670
  %fx21676 = xor i32 %c1668, %t1671
  %fva1677 = and i32 %fx11675, %fx21676
  %fv1678 = icmp slt i32 %fva1677, 0
  %nz1679 = zext i1 %fn1672 to i64
  %zz1680 = zext i1 %fz1673 to i64
  %cz1681 = zext i1 %fc1674 to i64
  %vz1682 = zext i1 %fv1678 to i64
  %ns1683 = shl i64 %nz1679, 31
  %zs1684 = shl i64 %zz1680, 30
  %cs1685 = shl i64 %cz1681, 29
  %vs1686 = shl i64 %vz1682, 28
  %nzor1687 = or i64 %ns1683, %zs1684
  %cvor1688 = or i64 %cs1685, %vs1686
  %nzcv1689 = or i64 %nzor1687, %cvor1688
  %wp1690 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1689, ptr %wp1690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa40 word 0x540000ca
  %r1691.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1691 = load i64, ptr %r1691.p, align 8, !alias.scope !3, !noalias !4
  %fsh1693 = lshr i64 %r1691, 31
  %ftr1694 = trunc i64 %fsh1693 to i1
  %fsh1695 = lshr i64 %r1691, 28
  %ftr1696 = trunc i64 %fsh1695 to i1
  %cond1692 = icmp eq i1 %ftr1694, %ftr1696
  br i1 %cond1692, label %L_8001efa58, label %L_8001efa44_ft
L_8001efa58:
  ; @pc 0x8001efa58 word 0xf94003e8
  %r1722.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1722 = load i64, ptr %r1722.p, align 8, !alias.scope !3, !noalias !4
  %gmp1723 = inttoptr i64 %r1722 to ptr
  %gml1724 = load i64, ptr %gmp1723, align 1, !alias.scope !4, !noalias !3
  %wp1725 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1724, ptr %wp1725, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa5c word 0x528000c9
  %c1726 = zext i32 6 to i64
  %wp1727 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1726, ptr %wp1727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa60 word 0x12003f4a
  %r1728.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1728 = load i64, ptr %r1728.p, align 8, !alias.scope !3, !noalias !4
  %c1729 = trunc i64 %r1728 to i32
  %t1730 = and i32 %c1729, 65535
  %c1731 = zext i32 %t1730 to i64
  %wp1732 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1731, ptr %wp1732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa64 word 0xf9400108
  %r1733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1733 = load i64, ptr %r1733.p, align 8, !alias.scope !3, !noalias !4
  %gmp1734 = inttoptr i64 %r1733 to ptr
  %gml1735 = load i64, ptr %gmp1734, align 1, !alias.scope !4, !noalias !3
  %wp1736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1735, ptr %wp1736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa68 word 0x2905266a
  %r1737.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1737 = load i64, ptr %r1737.p, align 8, !alias.scope !3, !noalias !4
  %t1738 = add i64 %r1737, 40
  %t1739 = add i64 %t1738, 4
  %r1740.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1740 = load i64, ptr %r1740.p, align 8, !alias.scope !3, !noalias !4
  %c1741 = trunc i64 %r1740 to i32
  %gmp1742 = inttoptr i64 %t1738 to ptr
  store i32 %c1741, ptr %gmp1742, align 1, !alias.scope !4, !noalias !3
  %r1743.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1743 = load i64, ptr %r1743.p, align 8, !alias.scope !3, !noalias !4
  %c1744 = trunc i64 %r1743 to i32
  %gmp1745 = inttoptr i64 %t1739 to ptr
  store i32 %c1744, ptr %gmp1745, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa6c word 0xa9005268
  %r1746.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1746 = load i64, ptr %r1746.p, align 8, !alias.scope !3, !noalias !4
  %t1747 = add i64 %r1746, 8
  %r1748.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1748 = load i64, ptr %r1748.p, align 8, !alias.scope !3, !noalias !4
  %gmp1749 = inttoptr i64 %r1746 to ptr
  store i64 %r1748, ptr %gmp1749, align 1, !alias.scope !4, !noalias !3
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %gmp1751 = inttoptr i64 %t1747 to ptr
  store i64 %r1750, ptr %gmp1751, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa70 word 0xf9400aa0
  %r1752.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1752 = load i64, ptr %r1752.p, align 8, !alias.scope !3, !noalias !4
  %t1753 = add i64 %r1752, 16
  %gmp1754 = inttoptr i64 %t1753 to ptr
  %gml1755 = load i64, ptr %gmp1754, align 1, !alias.scope !4, !noalias !3
  %wp1756 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1755, ptr %wp1756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa74 word 0xf9400008
  %r1757.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1757 = load i64, ptr %r1757.p, align 8, !alias.scope !3, !noalias !4
  %gmp1758 = inttoptr i64 %r1757 to ptr
  %gml1759 = load i64, ptr %gmp1758, align 1, !alias.scope !4, !noalias !3
  %wp1760 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1759, ptr %wp1760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa78 word 0xf9402908
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %t1762 = add i64 %r1761, 80
  %gmp1763 = inttoptr i64 %t1762 to ptr
  %gml1764 = load i64, ptr %gmp1763, align 1, !alias.scope !4, !noalias !3
  %wp1765 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1764, ptr %wp1765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa7c word 0xd63f0100
  %r1766.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1766 = load i64, ptr %r1766.p, align 8, !alias.scope !3, !noalias !4
  %fp1767 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1766, ptr %fp1767, align 8, !alias.scope !3, !noalias !4
  %wp1768 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768576, ptr %wp1768, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efa80 word 0xb4002900
  %r1769.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1769 = load i64, ptr %r1769.p, align 8, !alias.scope !3, !noalias !4
  %cmp1770 = icmp eq i64 %r1769, 0
  br i1 %cmp1770, label %L_8001effa0, label %L_8001efa84_ft
L_8001efab4:
  ; @pc 0x8001efab4 word 0xf9000a68
  %r1853.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1853 = load i64, ptr %r1853.p, align 8, !alias.scope !3, !noalias !4
  %t1854 = add i64 %r1853, 16
  %r1855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1855 = load i64, ptr %r1855.p, align 8, !alias.scope !3, !noalias !4
  %gmp1856 = inttoptr i64 %t1854 to ptr
  store i64 %r1855, ptr %gmp1856, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efab8 word 0xb900327f
  %r1857.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1857 = load i64, ptr %r1857.p, align 8, !alias.scope !3, !noalias !4
  %t1858 = add i64 %r1857, 48
  %gmp1859 = inttoptr i64 %t1858 to ptr
  store i32 0, ptr %gmp1859, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efabc word 0x1400002b
  br label %L_8001efb68
L_8001efac0:
  ; @pc 0x8001efac0 word 0x529ffff7
  %c1860 = zext i32 65535 to i64
  %wp1861 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1860, ptr %wp1861, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efac4 word 0x529ffff3
  %c1862 = zext i32 65535 to i64
  %wp1863 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1862, ptr %wp1863, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efac8
L_8001efac8:
  ; @pc 0x8001efac8 word 0xf9400bf6
  %r1864.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1864 = load i64, ptr %r1864.p, align 8, !alias.scope !3, !noalias !4
  %t1865 = add i64 %r1864, 16
  %gmp1866 = inttoptr i64 %t1865 to ptr
  %gml1867 = load i64, ptr %gmp1866, align 1, !alias.scope !4, !noalias !3
  %wp1868 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml1867, ptr %wp1868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efacc word 0x0a180348
  %r1869.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1869 = load i64, ptr %r1869.p, align 8, !alias.scope !3, !noalias !4
  %c1870 = trunc i64 %r1869 to i32
  %r1871.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1871 = load i64, ptr %r1871.p, align 8, !alias.scope !3, !noalias !4
  %c1872 = trunc i64 %r1871 to i32
  %t1873 = and i32 %c1872, %c1870
  %c1874 = zext i32 %t1873 to i64
  %wp1875 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1874, ptr %wp1875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efad0 word 0x6b18011f
  %r1876.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1876 = load i64, ptr %r1876.p, align 8, !alias.scope !3, !noalias !4
  %c1877 = trunc i64 %r1876 to i32
  %r1878.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1878 = load i64, ptr %r1878.p, align 8, !alias.scope !3, !noalias !4
  %c1879 = trunc i64 %r1878 to i32
  %t1880 = sub i32 %c1877, %c1879
  %fn1881 = icmp slt i32 %t1880, 0
  %fz1882 = icmp eq i32 %t1880, 0
  %fc1883 = icmp uge i32 %c1877, %c1879
  %fx11884 = xor i32 %c1877, %c1879
  %fx21885 = xor i32 %c1877, %t1880
  %fva1886 = and i32 %fx11884, %fx21885
  %fv1887 = icmp slt i32 %fva1886, 0
  %nz1888 = zext i1 %fn1881 to i64
  %zz1889 = zext i1 %fz1882 to i64
  %cz1890 = zext i1 %fc1883 to i64
  %vz1891 = zext i1 %fv1887 to i64
  %ns1892 = shl i64 %nz1888, 31
  %zs1893 = shl i64 %zz1889, 30
  %cs1894 = shl i64 %cz1890, 29
  %vs1895 = shl i64 %vz1891, 28
  %nzor1896 = or i64 %ns1892, %zs1893
  %cvor1897 = or i64 %cs1894, %vs1895
  %nzcv1898 = or i64 %nzor1896, %cvor1897
  %wp1899 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1898, ptr %wp1899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efad4 word 0x1a9f17fc
  %t1900 = add i32 0, 1
  %r1901.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1901 = load i64, ptr %r1901.p, align 8, !alias.scope !3, !noalias !4
  %fsh1903 = lshr i64 %r1901, 30
  %ftr1904 = trunc i64 %fsh1903 to i1
  %cond1902 = xor i1 %ftr1904, true
  %sel1905 = select i1 %cond1902, i32 0, i32 %t1900
  %c1906 = zext i32 %sel1905 to i64
  %wp1907 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c1906, ptr %wp1907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efad8 word 0x7100035f
  %r1908.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1908 = load i64, ptr %r1908.p, align 8, !alias.scope !3, !noalias !4
  %c1909 = trunc i64 %r1908 to i32
  %t1910 = sub i32 %c1909, 0
  %fn1911 = icmp slt i32 %t1910, 0
  %fz1912 = icmp eq i32 %t1910, 0
  %fc1913 = icmp uge i32 %c1909, 0
  %fx11914 = xor i32 %c1909, 0
  %fx21915 = xor i32 %c1909, %t1910
  %fva1916 = and i32 %fx11914, %fx21915
  %fv1917 = icmp slt i32 %fva1916, 0
  %nz1918 = zext i1 %fn1911 to i64
  %zz1919 = zext i1 %fz1912 to i64
  %cz1920 = zext i1 %fc1913 to i64
  %vz1921 = zext i1 %fv1917 to i64
  %ns1922 = shl i64 %nz1918, 31
  %zs1923 = shl i64 %zz1919, 30
  %cs1924 = shl i64 %cz1920, 29
  %vs1925 = shl i64 %vz1921, 28
  %nzor1926 = or i64 %ns1922, %zs1923
  %cvor1927 = or i64 %cs1924, %vs1925
  %nzcv1928 = or i64 %nzor1926, %cvor1927
  %wp1929 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1928, ptr %wp1929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efadc word 0x7a581104
  %r1930.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1930 = load i64, ptr %r1930.p, align 8, !alias.scope !3, !noalias !4
  %fsh1932 = lshr i64 %r1930, 30
  %ftr1933 = trunc i64 %fsh1932 to i1
  %cond1931 = xor i1 %ftr1933, true
  %r1934.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1934 = load i64, ptr %r1934.p, align 8, !alias.scope !3, !noalias !4
  %c1935 = trunc i64 %r1934 to i32
  %r1936.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1936 = load i64, ptr %r1936.p, align 8, !alias.scope !3, !noalias !4
  %c1937 = trunc i64 %r1936 to i32
  %t1938 = sub i32 %c1935, %c1937
  %cmp1939 = icmp slt i32 %t1938, 0
  %cmp1940 = icmp eq i32 %t1938, 0
  %cmp1941 = icmp uge i32 %c1935, %c1937
  %t1942 = xor i32 %c1935, %c1937
  %t1943 = xor i32 %c1935, %t1938
  %t1944 = and i32 %t1942, %t1943
  %cmp1945 = icmp slt i32 %t1944, 0
  %c1946 = zext i1 %cmp1939 to i64
  %t1947 = shl i64 %c1946, 31
  %c1948 = zext i1 %cmp1940 to i64
  %t1949 = shl i64 %c1948, 30
  %c1950 = zext i1 %cmp1941 to i64
  %t1951 = shl i64 %c1950, 29
  %c1952 = zext i1 %cmp1945 to i64
  %t1953 = shl i64 %c1952, 28
  %t1954 = or i64 %t1951, %t1953
  %t1955 = or i64 %t1947, %t1949
  %t1956 = or i64 %t1955, %t1954
  %sel1957 = select i1 %cond1931, i64 %t1956, i64 1073741824
  %wp1958 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %sel1957, ptr %wp1958, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efae0 word 0x54ffe540
  %r1959.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1959 = load i64, ptr %r1959.p, align 8, !alias.scope !3, !noalias !4
  %fsh1961 = lshr i64 %r1959, 30
  %cond1960 = trunc i64 %fsh1961 to i1
  br i1 %cond1960, label %L_8001ef788, label %L_8001efae4_ft
L_8001efb08:
  ; @pc 0x8001efb08 word 0xf9405c08
  %r2018.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2018 = load i64, ptr %r2018.p, align 8, !alias.scope !3, !noalias !4
  %t2019 = add i64 %r2018, 184
  %gmp2020 = inttoptr i64 %t2019 to ptr
  %gml2021 = load i64, ptr %gmp2020, align 1, !alias.scope !4, !noalias !3
  %wp2022 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2021, ptr %wp2022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb0c word 0xb4000208
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %cmp2024 = icmp eq i64 %r2023, 0
  br i1 %cmp2024, label %L_8001efb4c, label %L_8001efb10_ft
L_8001efb44:
  ; @pc 0x8001efb44 word 0xf9400508
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %t2142 = add i64 %r2141, 8
  %gmp2143 = inttoptr i64 %t2142 to ptr
  %gml2144 = load i64, ptr %gmp2143, align 1, !alias.scope !4, !noalias !3
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb48 word 0xb5002288
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %cmp2147 = icmp ne i64 %r2146, 0
  br i1 %cmp2147, label %L_8001eff98, label %L_8001efb4c
L_8001efb4c:
  ; @pc 0x8001efb4c word 0xb9405009
  %r2148.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2148 = load i64, ptr %r2148.p, align 8, !alias.scope !3, !noalias !4
  %t2149 = add i64 %r2148, 80
  %gmp2150 = inttoptr i64 %t2149 to ptr
  %gml2151 = load i32, ptr %gmp2150, align 1, !alias.scope !4, !noalias !3
  %c2152 = zext i32 %gml2151 to i64
  %wp2153 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2152, ptr %wp2153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb50 word 0x6b01013f
  %r2154.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2154 = load i64, ptr %r2154.p, align 8, !alias.scope !3, !noalias !4
  %c2155 = trunc i64 %r2154 to i32
  %r2156.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2156 = load i64, ptr %r2156.p, align 8, !alias.scope !3, !noalias !4
  %c2157 = trunc i64 %r2156 to i32
  %t2158 = sub i32 %c2155, %c2157
  %fn2159 = icmp slt i32 %t2158, 0
  %fz2160 = icmp eq i32 %t2158, 0
  %fc2161 = icmp uge i32 %c2155, %c2157
  %fx12162 = xor i32 %c2155, %c2157
  %fx22163 = xor i32 %c2155, %t2158
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
  ; @pc 0x8001efb54 word 0xf9402c08
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %t2179 = add i64 %r2178, 88
  %gmp2180 = inttoptr i64 %t2179 to ptr
  %gml2181 = load i64, ptr %gmp2180, align 1, !alias.scope !4, !noalias !3
  %wp2182 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2181, ptr %wp2182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb58 word 0x54002209
  %r2183.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2183 = load i64, ptr %r2183.p, align 8, !alias.scope !3, !noalias !4
  %fsh2185 = lshr i64 %r2183, 29
  %ftr2186 = trunc i64 %fsh2185 to i1
  %fsh2187 = lshr i64 %r2183, 30
  %ftr2188 = trunc i64 %fsh2187 to i1
  %fnz2189 = xor i1 %ftr2188, true
  %fhi2190 = and i1 %ftr2186, %fnz2189
  %cond2184 = xor i1 %fhi2190, true
  br i1 %cond2184, label %L_8001eff98, label %L_8001efb5c_ft
L_8001efb68:
  ; @pc 0x8001efb68 word 0x927ef508
  %r2206.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2206 = load i64, ptr %r2206.p, align 8, !alias.scope !3, !noalias !4
  %t2207 = and i64 %r2206, -4
  %wp2208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2207, ptr %wp2208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb6c word 0xf90002c8
  %r2209.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2209 = load i64, ptr %r2209.p, align 8, !alias.scope !3, !noalias !4
  %r2210.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2210 = load i64, ptr %r2210.p, align 8, !alias.scope !3, !noalias !4
  %gmp2211 = inttoptr i64 %r2209 to ptr
  store i64 %r2210, ptr %gmp2211, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efb70 word 0x17ffff3b
  br label %L_8001ef85c
L_8001efb74:
  ; @pc 0x8001efb74 word 0xd63f0100
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %fp2213 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2212, ptr %fp2213, align 8, !alias.scope !3, !noalias !4
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768824, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efb78 word 0x17ffff34
  br label %L_8001ef848
L_8001efb7c:
  ; @pc 0x8001efb7c word 0xb9400348
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %gmp2216 = inttoptr i64 %r2215 to ptr
  %gml2217 = load i32, ptr %gmp2216, align 1, !alias.scope !4, !noalias !3
  %c2218 = zext i32 %gml2217 to i64
  %wp2219 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2218, ptr %wp2219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb80 word 0x1207751a
  %r2220.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2220 = load i64, ptr %r2220.p, align 8, !alias.scope !3, !noalias !4
  %c2221 = trunc i64 %r2220 to i32
  %t2222 = and i32 %c2221, -25165825
  %c2223 = zext i32 %t2222 to i64
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb84 word 0x17ffffd1
  br label %L_8001efac8
L_8001efb88:
  ; @pc 0x8001efb88 word 0xf94006a8
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %t2226 = add i64 %r2225, 8
  %gmp2227 = inttoptr i64 %t2226 to ptr
  %gml2228 = load i64, ptr %gmp2227, align 1, !alias.scope !4, !noalias !3
  %wp2229 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2228, ptr %wp2229, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb8c word 0xf9400908
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %t2231 = add i64 %r2230, 16
  %gmp2232 = inttoptr i64 %t2231 to ptr
  %gml2233 = load i64, ptr %gmp2232, align 1, !alias.scope !4, !noalias !3
  %wp2234 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2233, ptr %wp2234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb90 word 0xf9402908
  %r2235.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2235 = load i64, ptr %r2235.p, align 8, !alias.scope !3, !noalias !4
  %t2236 = add i64 %r2235, 80
  %gmp2237 = inttoptr i64 %t2236 to ptr
  %gml2238 = load i64, ptr %gmp2237, align 1, !alias.scope !4, !noalias !3
  %wp2239 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2238, ptr %wp2239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb94 word 0xb9401909
  %r2240.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2240 = load i64, ptr %r2240.p, align 8, !alias.scope !3, !noalias !4
  %t2241 = add i64 %r2240, 24
  %gmp2242 = inttoptr i64 %t2241 to ptr
  %gml2243 = load i32, ptr %gmp2242, align 1, !alias.scope !4, !noalias !3
  %c2244 = zext i32 %gml2243 to i64
  %wp2245 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2244, ptr %wp2245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb98 word 0x8b090108
  %r2246.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2246 = load i64, ptr %r2246.p, align 8, !alias.scope !3, !noalias !4
  %r2247.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2247 = load i64, ptr %r2247.p, align 8, !alias.scope !3, !noalias !4
  %t2248 = add i64 %r2246, %r2247
  %wp2249 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2248, ptr %wp2249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb9c word 0xb9400109
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %gmp2251 = inttoptr i64 %r2250 to ptr
  %gml2252 = load i32, ptr %gmp2251, align 1, !alias.scope !4, !noalias !3
  %c2253 = zext i32 %gml2252 to i64
  %wp2254 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2253, ptr %wp2254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efba0 word 0x6b3a213f
  %r2255.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2255 = load i64, ptr %r2255.p, align 8, !alias.scope !3, !noalias !4
  %c2256 = trunc i64 %r2255 to i32
  %r2257.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2257 = load i64, ptr %r2257.p, align 8, !alias.scope !3, !noalias !4
  %c2258 = trunc i64 %r2257 to i16
  %c2259 = zext i16 %c2258 to i64
  %c2260 = trunc i64 %c2259 to i32
  %t2261 = sub i32 %c2256, %c2260
  %fn2262 = icmp slt i32 %t2261, 0
  %fz2263 = icmp eq i32 %t2261, 0
  %fc2264 = icmp uge i32 %c2256, %c2260
  %fx12265 = xor i32 %c2256, %c2260
  %fx22266 = xor i32 %c2256, %t2261
  %fva2267 = and i32 %fx12265, %fx22266
  %fv2268 = icmp slt i32 %fva2267, 0
  %nz2269 = zext i1 %fn2262 to i64
  %zz2270 = zext i1 %fz2263 to i64
  %cz2271 = zext i1 %fc2264 to i64
  %vz2272 = zext i1 %fv2268 to i64
  %ns2273 = shl i64 %nz2269, 31
  %zs2274 = shl i64 %zz2270, 30
  %cs2275 = shl i64 %cz2271, 29
  %vs2276 = shl i64 %vz2272, 28
  %nzor2277 = or i64 %ns2273, %zs2274
  %cvor2278 = or i64 %cs2275, %vs2276
  %nzcv2279 = or i64 %nzor2277, %cvor2278
  %wp2280 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2279, ptr %wp2280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efba4 word 0x540002ed
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %fsh2283 = lshr i64 %r2281, 30
  %ftr2284 = trunc i64 %fsh2283 to i1
  %fsh2285 = lshr i64 %r2281, 31
  %ftr2286 = trunc i64 %fsh2285 to i1
  %fsh2287 = lshr i64 %r2281, 28
  %ftr2288 = trunc i64 %fsh2287 to i1
  %fnz2289 = xor i1 %ftr2284, true
  %feq2290 = icmp eq i1 %ftr2286, %ftr2288
  %fgt2291 = and i1 %fnz2289, %feq2290
  %cond2282 = xor i1 %fgt2291, true
  br i1 %cond2282, label %L_8001efc00, label %L_8001efba8_ft
L_8001efbe8:
  ; @pc 0x8001efbe8 word 0xb9403c09
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %t2403 = add i64 %r2402, 60
  %gmp2404 = inttoptr i64 %t2403 to ptr
  %gml2405 = load i32, ptr %gmp2404, align 1, !alias.scope !4, !noalias !3
  %c2406 = zext i32 %gml2405 to i64
  %wp2407 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2406, ptr %wp2407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbec word 0x0b080128
  %r2408.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2408 = load i64, ptr %r2408.p, align 8, !alias.scope !3, !noalias !4
  %c2409 = trunc i64 %r2408 to i32
  %r2410.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2410 = load i64, ptr %r2410.p, align 8, !alias.scope !3, !noalias !4
  %c2411 = trunc i64 %r2410 to i32
  %t2412 = add i32 %c2409, %c2411
  %c2413 = zext i32 %t2412 to i64
  %wp2414 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2413, ptr %wp2414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbf0 word 0xb9404c0a
  %r2415.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2415 = load i64, ptr %r2415.p, align 8, !alias.scope !3, !noalias !4
  %t2416 = add i64 %r2415, 76
  %gmp2417 = inttoptr i64 %t2416 to ptr
  %gml2418 = load i32, ptr %gmp2417, align 1, !alias.scope !4, !noalias !3
  %c2419 = zext i32 %gml2418 to i64
  %wp2420 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2419, ptr %wp2420, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbf4 word 0x0b0a0108
  %r2421.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2421 = load i64, ptr %r2421.p, align 8, !alias.scope !3, !noalias !4
  %c2422 = trunc i64 %r2421 to i32
  %r2423.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2423 = load i64, ptr %r2423.p, align 8, !alias.scope !3, !noalias !4
  %c2424 = trunc i64 %r2423 to i32
  %t2425 = add i32 %c2422, %c2424
  %c2426 = zext i32 %t2425 to i64
  %wp2427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2426, ptr %wp2427, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efbf8
L_8001efbf8:
  ; @pc 0x8001efbf8 word 0x531e7513
  %r2428.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2428 = load i64, ptr %r2428.p, align 8, !alias.scope !3, !noalias !4
  %c2429 = trunc i64 %r2428 to i32
  %ror2430 = call i32 @llvm.fshr.i32(i32 %c2429, i32 %c2429, i32 30)
  %t2431 = and i32 %ror2430, -4
  %c2432 = zext i32 %t2431 to i64
  %wp2433 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2432, ptr %wp2433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbfc word 0x17ffff0a
  br label %L_8001ef824
L_8001efc00:
  ; @pc 0x8001efc00 word 0x2a1f03f3
  %t2434 = or i32 0, 0
  %c2435 = zext i32 %t2434 to i64
  %wp2436 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2435, ptr %wp2436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc04 word 0x17ffff08
  br label %L_8001ef824
L_8001efc08:
  ; @pc 0x8001efc08 word 0xf9400aa0
  %r2437.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2437 = load i64, ptr %r2437.p, align 8, !alias.scope !3, !noalias !4
  %t2438 = add i64 %r2437, 16
  %gmp2439 = inttoptr i64 %t2438 to ptr
  %gml2440 = load i64, ptr %gmp2439, align 1, !alias.scope !4, !noalias !3
  %wp2441 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2440, ptr %wp2441, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc0c word 0xf9400008
  %r2442.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2442 = load i64, ptr %r2442.p, align 8, !alias.scope !3, !noalias !4
  %gmp2443 = inttoptr i64 %r2442 to ptr
  %gml2444 = load i64, ptr %gmp2443, align 1, !alias.scope !4, !noalias !3
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2444, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc10 word 0xf9402d08
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %t2447 = add i64 %r2446, 88
  %gmp2448 = inttoptr i64 %t2447 to ptr
  %gml2449 = load i64, ptr %gmp2448, align 1, !alias.scope !4, !noalias !3
  %wp2450 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2449, ptr %wp2450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc14 word 0xd63f0100
  %r2451.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2451 = load i64, ptr %r2451.p, align 8, !alias.scope !3, !noalias !4
  %fp2452 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2451, ptr %fp2452, align 8, !alias.scope !3, !noalias !4
  %wp2453 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768984, ptr %wp2453, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efc18 word 0xb9800009
  %r2454.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2454 = load i64, ptr %r2454.p, align 8, !alias.scope !3, !noalias !4
  %gmp2455 = inttoptr i64 %r2454 to ptr
  %gml2456 = load i32, ptr %gmp2455, align 1, !alias.scope !4, !noalias !3
  %c2457 = sext i32 %gml2456 to i64
  %wp2458 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2457, ptr %wp2458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc1c word 0x34ffe209
  %r2459.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2459 = load i64, ptr %r2459.p, align 8, !alias.scope !3, !noalias !4
  %c2460 = trunc i64 %r2459 to i32
  %cmp2461 = icmp eq i32 %c2460, 0
  br i1 %cmp2461, label %L_8001ef85c, label %L_8001efc20_ft
L_8001efc30:
  ; @pc 0x8001efc30 word 0xf940010b
  %r2480.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2480 = load i64, ptr %r2480.p, align 8, !alias.scope !3, !noalias !4
  %gmp2481 = inttoptr i64 %r2480 to ptr
  %gml2482 = load i64, ptr %gmp2481, align 1, !alias.scope !4, !noalias !3
  %wp2483 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2482, ptr %wp2483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc34 word 0xb9402d6c
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %t2485 = add i64 %r2484, 44
  %gmp2486 = inttoptr i64 %t2485 to ptr
  %gml2487 = load i32, ptr %gmp2486, align 1, !alias.scope !4, !noalias !3
  %c2488 = zext i32 %gml2487 to i64
  %wp2489 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2488, ptr %wp2489, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc38 word 0x7100199f
  %r2490.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2490 = load i64, ptr %r2490.p, align 8, !alias.scope !3, !noalias !4
  %c2491 = trunc i64 %r2490 to i32
  %t2492 = sub i32 %c2491, 6
  %fn2493 = icmp slt i32 %t2492, 0
  %fz2494 = icmp eq i32 %t2492, 0
  %fc2495 = icmp uge i32 %c2491, 6
  %fx12496 = xor i32 %c2491, 6
  %fx22497 = xor i32 %c2491, %t2492
  %fva2498 = and i32 %fx12496, %fx22497
  %fv2499 = icmp slt i32 %fva2498, 0
  %nz2500 = zext i1 %fn2493 to i64
  %zz2501 = zext i1 %fz2494 to i64
  %cz2502 = zext i1 %fc2495 to i64
  %vz2503 = zext i1 %fv2499 to i64
  %ns2504 = shl i64 %nz2500, 31
  %zs2505 = shl i64 %zz2501, 30
  %cs2506 = shl i64 %cz2502, 29
  %vs2507 = shl i64 %vz2503, 28
  %nzor2508 = or i64 %ns2504, %zs2505
  %cvor2509 = or i64 %cs2506, %vs2507
  %nzcv2510 = or i64 %nzor2508, %cvor2509
  %wp2511 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2510, ptr %wp2511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc3c word 0x54001e01
  %r2512.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2512 = load i64, ptr %r2512.p, align 8, !alias.scope !3, !noalias !4
  %fsh2514 = lshr i64 %r2512, 30
  %ftr2515 = trunc i64 %fsh2514 to i1
  %cond2513 = xor i1 %ftr2515, true
  br i1 %cond2513, label %L_8001efffc, label %L_8001efc40_ft
L_8001efc54:
  ; @pc 0x8001efc54 word 0xf9400bf6
  %r2555.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2555 = load i64, ptr %r2555.p, align 8, !alias.scope !3, !noalias !4
  %t2556 = add i64 %r2555, 16
  %gmp2557 = inttoptr i64 %t2556 to ptr
  %gml2558 = load i64, ptr %gmp2557, align 1, !alias.scope !4, !noalias !3
  %wp2559 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2558, ptr %wp2559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc58 word 0xb9400fe8
  %r2560.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2560 = load i64, ptr %r2560.p, align 8, !alias.scope !3, !noalias !4
  %t2561 = add i64 %r2560, 12
  %gmp2562 = inttoptr i64 %t2561 to ptr
  %gml2563 = load i32, ptr %gmp2562, align 1, !alias.scope !4, !noalias !3
  %c2564 = zext i32 %gml2563 to i64
  %wp2565 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2564, ptr %wp2565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc5c word 0x37000088
  %r2566.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2566 = load i64, ptr %r2566.p, align 8, !alias.scope !3, !noalias !4
  %t2567 = and i64 %r2566, 1
  %cmp2568 = icmp ne i64 %t2567, 0
  br i1 %cmp2568, label %L_8001efc6c, label %L_8001efc60_ft
L_8001efc6c:
  ; @pc 0x8001efc6c word 0xf9400968
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %t2581 = add i64 %r2580, 16
  %gmp2582 = inttoptr i64 %t2581 to ptr
  %gml2583 = load i64, ptr %gmp2582, align 1, !alias.scope !4, !noalias !3
  %wp2584 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2583, ptr %wp2584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc70 word 0x17ffffbe
  br label %L_8001efb68
L_8001efc74:
  ; @pc 0x8001efc74 word 0xf001c660
  %wp2585 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc78 word 0x91150000
  %r2586.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2586 = load i64, ptr %r2586.p, align 8, !alias.scope !3, !noalias !4
  %t2587 = add i64 %r2586, 1344
  %wp2588 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2587, ptr %wp2588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc7c word 0x94a6cf49
  %wp2589 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769088, ptr %wp2589, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efc80 word 0x34ffd8e0
  %r2590.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2590 = load i64, ptr %r2590.p, align 8, !alias.scope !3, !noalias !4
  %c2591 = trunc i64 %r2590 to i32
  %cmp2592 = icmp eq i32 %c2591, 0
  br i1 %cmp2592, label %L_8001ef79c, label %L_8001efc84_ft
L_8001efca4:
  ; @pc 0x8001efca4 word 0xaa1503e0
  %r2607.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2607 = load i64, ptr %r2607.p, align 8, !alias.scope !3, !noalias !4
  %t2608 = or i64 0, %r2607
  %wp2609 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2608, ptr %wp2609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efca8 word 0xd63f0100
  %r2610.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2610 = load i64, ptr %r2610.p, align 8, !alias.scope !3, !noalias !4
  %fp2611 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2610, ptr %fp2611, align 8, !alias.scope !3, !noalias !4
  %wp2612 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769132, ptr %wp2612, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efcac word 0xf9400a68
  %r2613.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2613 = load i64, ptr %r2613.p, align 8, !alias.scope !3, !noalias !4
  %t2614 = add i64 %r2613, 16
  %gmp2615 = inttoptr i64 %t2614 to ptr
  %gml2616 = load i64, ptr %gmp2615, align 1, !alias.scope !4, !noalias !3
  %wp2617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2616, ptr %wp2617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcb0 word 0x17fffe56
  br label %L_8001ef608
L_8001efcb4:
  ; @pc 0x8001efcb4 word 0x52800033
  %c2618 = zext i32 1 to i64
  %wp2619 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c2618, ptr %wp2619, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efcb8
L_8001efcb8:
  ; @pc 0x8001efcb8 word 0x9001bb88
  %wp2620 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcbc word 0xf9456508
  %r2621.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2621 = load i64, ptr %r2621.p, align 8, !alias.scope !3, !noalias !4
  %t2622 = add i64 %r2621, 2760
  %gmp2623 = inttoptr i64 %t2622 to ptr
  %gml2624 = load i64, ptr %gmp2623, align 1, !alias.scope !4, !noalias !3
  %wp2625 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2624, ptr %wp2625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcc0 word 0x08dffd08
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %atp2627 = inttoptr i64 %r2626 to ptr
  %lda2628 = load atomic i8, ptr %atp2627 acquire, align 1, !alias.scope !4, !noalias !3
  %c2629 = zext i8 %lda2628 to i64
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2629, ptr %wp2630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcc4 word 0x36001a48
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %t2632 = and i64 %r2631, 1
  %cmp2633 = icmp eq i64 %t2632, 0
  br i1 %cmp2633, label %L_8001f000c, label %L_8001efcc8_ft
L_8001efcdc:
  ; @pc 0x8001efcdc word 0x910063e8
  %r2646.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2646 = load i64, ptr %r2646.p, align 8, !alias.scope !3, !noalias !4
  %t2647 = add i64 %r2646, 24
  %wp2648 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2647, ptr %wp2648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efce0 word 0x39048fff
  %r2649.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2649 = load i64, ptr %r2649.p, align 8, !alias.scope !3, !noalias !4
  %t2650 = add i64 %r2649, 291
  %c2651 = trunc i32 0 to i8
  %gmp2652 = inttoptr i64 %t2650 to ptr
  store i8 %c2651, ptr %gmp2652, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efce4 word 0x91003108
  %r2653.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2653 = load i64, ptr %r2653.p, align 8, !alias.scope !3, !noalias !4
  %t2654 = add i64 %r2653, 12
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efce8 word 0x390093ff
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %t2657 = add i64 %r2656, 36
  %c2658 = trunc i32 0 to i8
  %gmp2659 = inttoptr i64 %t2657 to ptr
  store i8 %c2658, ptr %gmp2659, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efcec word 0xf9000fe8
  %r2660.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2660 = load i64, ptr %r2660.p, align 8, !alias.scope !3, !noalias !4
  %t2661 = add i64 %r2660, 24
  %r2662.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2662 = load i64, ptr %r2662.p, align 8, !alias.scope !3, !noalias !4
  %gmp2663 = inttoptr i64 %t2661 to ptr
  store i64 %r2662, ptr %gmp2663, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efcf0 word 0x52802008
  %c2664 = zext i32 256 to i64
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2664, ptr %wp2665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcf4 word 0xb90023e8
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %t2667 = add i64 %r2666, 32
  %r2668.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2668 = load i64, ptr %r2668.p, align 8, !alias.scope !3, !noalias !4
  %c2669 = trunc i64 %r2668 to i32
  %gmp2670 = inttoptr i64 %t2667 to ptr
  store i32 %c2669, ptr %gmp2670, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efcf8 word 0xf94006a8
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %t2672 = add i64 %r2671, 8
  %gmp2673 = inttoptr i64 %t2672 to ptr
  %gml2674 = load i64, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  %wp2675 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2674, ptr %wp2675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcfc word 0x1400001a
  br label %L_8001efd64
L_8001efd00:
  ; @pc 0x8001efd00 word 0x39048fff
  %r2676.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2676 = load i64, ptr %r2676.p, align 8, !alias.scope !3, !noalias !4
  %t2677 = add i64 %r2676, 291
  %c2678 = trunc i32 0 to i8
  %gmp2679 = inttoptr i64 %t2677 to ptr
  store i8 %c2678, ptr %gmp2679, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd04 word 0x910063e9
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %t2681 = add i64 %r2680, 24
  %wp2682 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2681, ptr %wp2682, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd08 word 0xb00152e1
  %wp2683 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd0c word 0x91270c21
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %t2685 = add i64 %r2684, 2499
  %wp2686 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2685, ptr %wp2686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd10 word 0xf9400908
  %r2687.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2687 = load i64, ptr %r2687.p, align 8, !alias.scope !3, !noalias !4
  %t2688 = add i64 %r2687, 16
  %gmp2689 = inttoptr i64 %t2688 to ptr
  %gml2690 = load i64, ptr %gmp2689, align 1, !alias.scope !4, !noalias !3
  %wp2691 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2690, ptr %wp2691, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd14 word 0x91003129
  %r2692.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2692 = load i64, ptr %r2692.p, align 8, !alias.scope !3, !noalias !4
  %t2693 = add i64 %r2692, 12
  %wp2694 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2693, ptr %wp2694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd18 word 0xf9000fe9
  %r2695.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2695 = load i64, ptr %r2695.p, align 8, !alias.scope !3, !noalias !4
  %t2696 = add i64 %r2695, 24
  %r2697.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2697 = load i64, ptr %r2697.p, align 8, !alias.scope !3, !noalias !4
  %gmp2698 = inttoptr i64 %t2696 to ptr
  store i64 %r2697, ptr %gmp2698, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd1c word 0x52802009
  %c2699 = zext i32 256 to i64
  %wp2700 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2699, ptr %wp2700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd20 word 0x390093ff
  %r2701.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2701 = load i64, ptr %r2701.p, align 8, !alias.scope !3, !noalias !4
  %t2702 = add i64 %r2701, 36
  %c2703 = trunc i32 0 to i8
  %gmp2704 = inttoptr i64 %t2702 to ptr
  store i8 %c2703, ptr %gmp2704, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd24 word 0xb90023e9
  %r2705.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2705 = load i64, ptr %r2705.p, align 8, !alias.scope !3, !noalias !4
  %t2706 = add i64 %r2705, 32
  %r2707.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2707 = load i64, ptr %r2707.p, align 8, !alias.scope !3, !noalias !4
  %c2708 = trunc i64 %r2707 to i32
  %gmp2709 = inttoptr i64 %t2706 to ptr
  store i32 %c2708, ptr %gmp2709, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd28 word 0x910063e0
  %r2710.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2710 = load i64, ptr %r2710.p, align 8, !alias.scope !3, !noalias !4
  %t2711 = add i64 %r2710, 24
  %wp2712 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2711, ptr %wp2712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd2c word 0xf9400908
  %r2713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2713 = load i64, ptr %r2713.p, align 8, !alias.scope !3, !noalias !4
  %t2714 = add i64 %r2713, 16
  %gmp2715 = inttoptr i64 %t2714 to ptr
  %gml2716 = load i64, ptr %gmp2715, align 1, !alias.scope !4, !noalias !3
  %wp2717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2716, ptr %wp2717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd30 word 0xb980250a
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %t2719 = add i64 %r2718, 36
  %gmp2720 = inttoptr i64 %t2719 to ptr
  %gml2721 = load i32, ptr %gmp2720, align 1, !alias.scope !4, !noalias !3
  %c2722 = sext i32 %gml2721 to i64
  %wp2723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2722, ptr %wp2723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd34 word 0xb9800909
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %t2725 = add i64 %r2724, 8
  %gmp2726 = inttoptr i64 %t2725 to ptr
  %gml2727 = load i32, ptr %gmp2726, align 1, !alias.scope !4, !noalias !3
  %c2728 = sext i32 %gml2727 to i64
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2728, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd38 word 0x8b0a0108
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %r2731.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2731 = load i64, ptr %r2731.p, align 8, !alias.scope !3, !noalias !4
  %t2732 = add i64 %r2730, %r2731
  %wp2733 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2732, ptr %wp2733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd3c word 0x8b090102
  %r2734.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2734 = load i64, ptr %r2734.p, align 8, !alias.scope !3, !noalias !4
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %t2736 = add i64 %r2734, %r2735
  %wp2737 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2736, ptr %wp2737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd40 word 0x97faa6c8
  %wp2738 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769284, ptr %wp2738, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001efd44 word 0xf94006a8
  %r2739.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2739 = load i64, ptr %r2739.p, align 8, !alias.scope !3, !noalias !4
  %t2740 = add i64 %r2739, 8
  %gmp2741 = inttoptr i64 %t2740 to ptr
  %gml2742 = load i64, ptr %gmp2741, align 1, !alias.scope !4, !noalias !3
  %wp2743 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2742, ptr %wp2743, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efd48
L_8001efd48:
  ; @pc 0x8001efd48 word 0x910063e9
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %t2745 = add i64 %r2744, 24
  %wp2746 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2745, ptr %wp2746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd4c word 0x39048fff
  %r2747.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2747 = load i64, ptr %r2747.p, align 8, !alias.scope !3, !noalias !4
  %t2748 = add i64 %r2747, 291
  %c2749 = trunc i32 0 to i8
  %gmp2750 = inttoptr i64 %t2748 to ptr
  store i8 %c2749, ptr %gmp2750, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd50 word 0x91003129
  %r2751.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2751 = load i64, ptr %r2751.p, align 8, !alias.scope !3, !noalias !4
  %t2752 = add i64 %r2751, 12
  %wp2753 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2752, ptr %wp2753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd54 word 0x390093ff
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %t2755 = add i64 %r2754, 36
  %c2756 = trunc i32 0 to i8
  %gmp2757 = inttoptr i64 %t2755 to ptr
  store i8 %c2756, ptr %gmp2757, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd58 word 0xf9000fe9
  %r2758.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2758 = load i64, ptr %r2758.p, align 8, !alias.scope !3, !noalias !4
  %t2759 = add i64 %r2758, 24
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %gmp2761 = inttoptr i64 %t2759 to ptr
  store i64 %r2760, ptr %gmp2761, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd5c word 0x52802009
  %c2762 = zext i32 256 to i64
  %wp2763 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2762, ptr %wp2763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd60 word 0xb90023e9
  %r2764.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2764 = load i64, ptr %r2764.p, align 8, !alias.scope !3, !noalias !4
  %t2765 = add i64 %r2764, 32
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2766 = load i64, ptr %r2766.p, align 8, !alias.scope !3, !noalias !4
  %c2767 = trunc i64 %r2766 to i32
  %gmp2768 = inttoptr i64 %t2765 to ptr
  store i32 %c2767, ptr %gmp2768, align 1, !alias.scope !4, !noalias !3
  br label %L_8001efd64
L_8001efd64:
  ; @pc 0x8001efd64 word 0xf9400908
  %r2769.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2769 = load i64, ptr %r2769.p, align 8, !alias.scope !3, !noalias !4
  %t2770 = add i64 %r2769, 16
  %gmp2771 = inttoptr i64 %t2770 to ptr
  %gml2772 = load i64, ptr %gmp2771, align 1, !alias.scope !4, !noalias !3
  %wp2773 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2772, ptr %wp2773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd68 word 0xb00152e1
  %wp2774 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd6c word 0x91270c21
  %r2775.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2775 = load i64, ptr %r2775.p, align 8, !alias.scope !3, !noalias !4
  %t2776 = add i64 %r2775, 2499
  %wp2777 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2776, ptr %wp2777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd70 word 0x910063e0
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %t2779 = add i64 %r2778, 24
  %wp2780 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2779, ptr %wp2780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd74 word 0xf9400908
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %t2782 = add i64 %r2781, 16
  %gmp2783 = inttoptr i64 %t2782 to ptr
  %gml2784 = load i64, ptr %gmp2783, align 1, !alias.scope !4, !noalias !3
  %wp2785 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2784, ptr %wp2785, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd78 word 0xb980250a
  %r2786.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2786 = load i64, ptr %r2786.p, align 8, !alias.scope !3, !noalias !4
  %t2787 = add i64 %r2786, 36
  %gmp2788 = inttoptr i64 %t2787 to ptr
  %gml2789 = load i32, ptr %gmp2788, align 1, !alias.scope !4, !noalias !3
  %c2790 = sext i32 %gml2789 to i64
  %wp2791 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2790, ptr %wp2791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd7c word 0xb9800909
  %r2792.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2792 = load i64, ptr %r2792.p, align 8, !alias.scope !3, !noalias !4
  %t2793 = add i64 %r2792, 8
  %gmp2794 = inttoptr i64 %t2793 to ptr
  %gml2795 = load i32, ptr %gmp2794, align 1, !alias.scope !4, !noalias !3
  %c2796 = sext i32 %gml2795 to i64
  %wp2797 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2796, ptr %wp2797, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd80 word 0x8b0a0108
  %r2798.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2798 = load i64, ptr %r2798.p, align 8, !alias.scope !3, !noalias !4
  %r2799.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2799 = load i64, ptr %r2799.p, align 8, !alias.scope !3, !noalias !4
  %t2800 = add i64 %r2798, %r2799
  %wp2801 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2800, ptr %wp2801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd84 word 0x8b090102
  %r2802.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2802 = load i64, ptr %r2802.p, align 8, !alias.scope !3, !noalias !4
  %r2803.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2803 = load i64, ptr %r2803.p, align 8, !alias.scope !3, !noalias !4
  %t2804 = add i64 %r2802, %r2803
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2804, ptr %wp2805, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd88 word 0x97faa6b6
  %wp2806 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769356, ptr %wp2806, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001efd8c word 0xf001c668
  %wp2807 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd90 word 0x9114c108
  %r2808.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2808 = load i64, ptr %r2808.p, align 8, !alias.scope !3, !noalias !4
  %t2809 = add i64 %r2808, 1328
  %wp2810 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2809, ptr %wp2810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd94 word 0xf90002c8
  %r2811.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2811 = load i64, ptr %r2811.p, align 8, !alias.scope !3, !noalias !4
  %r2812.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2812 = load i64, ptr %r2812.p, align 8, !alias.scope !3, !noalias !4
  %gmp2813 = inttoptr i64 %r2811 to ptr
  store i64 %r2812, ptr %gmp2813, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efd98 word 0x52800037
  %c2814 = zext i32 1 to i64
  %wp2815 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2814, ptr %wp2815, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efd9c word 0x3607d61c
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 224
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %t2817 = and i64 %r2816, 1
  %cmp2818 = icmp eq i64 %t2817, 0
  br i1 %cmp2818, label %L_8001ef85c, label %L_8001efda0_ft
L_8001efda8:
  ; @pc 0x8001efda8 word 0xaa1703e0
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %t2825 = or i64 0, %r2824
  %wp2826 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2825, ptr %wp2826, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdac word 0xd63f0100
  %r2827.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2827 = load i64, ptr %r2827.p, align 8, !alias.scope !3, !noalias !4
  %fp2828 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2827, ptr %fp2828, align 8, !alias.scope !3, !noalias !4
  %wp2829 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769392, ptr %wp2829, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efdb0 word 0x17fffe91
  br label %L_8001ef7f4
L_8001efdb4:
  ; @pc 0x8001efdb4 word 0x39048fff
  %r2830.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2830 = load i64, ptr %r2830.p, align 8, !alias.scope !3, !noalias !4
  %t2831 = add i64 %r2830, 291
  %c2832 = trunc i32 0 to i8
  %gmp2833 = inttoptr i64 %t2831 to ptr
  store i8 %c2832, ptr %gmp2833, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efdb8 word 0x910063e9
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %t2835 = add i64 %r2834, 24
  %wp2836 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2835, ptr %wp2836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdbc word 0xb00152e1
  %wp2837 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp2837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdc0 word 0x91270c21
  %r2838.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2838 = load i64, ptr %r2838.p, align 8, !alias.scope !3, !noalias !4
  %t2839 = add i64 %r2838, 2499
  %wp2840 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t2839, ptr %wp2840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdc4 word 0xf9400908
  %r2841.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2841 = load i64, ptr %r2841.p, align 8, !alias.scope !3, !noalias !4
  %t2842 = add i64 %r2841, 16
  %gmp2843 = inttoptr i64 %t2842 to ptr
  %gml2844 = load i64, ptr %gmp2843, align 1, !alias.scope !4, !noalias !3
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdc8 word 0x91003129
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %t2847 = add i64 %r2846, 12
  %wp2848 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2847, ptr %wp2848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdcc word 0xf9000fe9
  %r2849.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2849 = load i64, ptr %r2849.p, align 8, !alias.scope !3, !noalias !4
  %t2850 = add i64 %r2849, 24
  %r2851.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2851 = load i64, ptr %r2851.p, align 8, !alias.scope !3, !noalias !4
  %gmp2852 = inttoptr i64 %t2850 to ptr
  store i64 %r2851, ptr %gmp2852, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efdd0 word 0x52802009
  %c2853 = zext i32 256 to i64
  %wp2854 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2853, ptr %wp2854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdd4 word 0x390093ff
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %t2856 = add i64 %r2855, 36
  %c2857 = trunc i32 0 to i8
  %gmp2858 = inttoptr i64 %t2856 to ptr
  store i8 %c2857, ptr %gmp2858, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efdd8 word 0xb90023e9
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %t2860 = add i64 %r2859, 32
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %c2862 = trunc i64 %r2861 to i32
  %gmp2863 = inttoptr i64 %t2860 to ptr
  store i32 %c2862, ptr %gmp2863, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efddc word 0x910063e0
  %r2864.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2864 = load i64, ptr %r2864.p, align 8, !alias.scope !3, !noalias !4
  %t2865 = add i64 %r2864, 24
  %wp2866 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2865, ptr %wp2866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efde0 word 0xf9400908
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %t2868 = add i64 %r2867, 16
  %gmp2869 = inttoptr i64 %t2868 to ptr
  %gml2870 = load i64, ptr %gmp2869, align 1, !alias.scope !4, !noalias !3
  %wp2871 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2870, ptr %wp2871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efde4 word 0xb980250a
  %r2872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2872 = load i64, ptr %r2872.p, align 8, !alias.scope !3, !noalias !4
  %t2873 = add i64 %r2872, 36
  %gmp2874 = inttoptr i64 %t2873 to ptr
  %gml2875 = load i32, ptr %gmp2874, align 1, !alias.scope !4, !noalias !3
  %c2876 = sext i32 %gml2875 to i64
  %wp2877 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2876, ptr %wp2877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efde8 word 0xb9800909
  %r2878.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2878 = load i64, ptr %r2878.p, align 8, !alias.scope !3, !noalias !4
  %t2879 = add i64 %r2878, 8
  %gmp2880 = inttoptr i64 %t2879 to ptr
  %gml2881 = load i32, ptr %gmp2880, align 1, !alias.scope !4, !noalias !3
  %c2882 = sext i32 %gml2881 to i64
  %wp2883 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2882, ptr %wp2883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdec word 0x8b0a0108
  %r2884.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2884 = load i64, ptr %r2884.p, align 8, !alias.scope !3, !noalias !4
  %r2885.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2885 = load i64, ptr %r2885.p, align 8, !alias.scope !3, !noalias !4
  %t2886 = add i64 %r2884, %r2885
  %wp2887 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2886, ptr %wp2887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdf0 word 0x8b090102
  %r2888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2888 = load i64, ptr %r2888.p, align 8, !alias.scope !3, !noalias !4
  %r2889.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2889 = load i64, ptr %r2889.p, align 8, !alias.scope !3, !noalias !4
  %t2890 = add i64 %r2888, %r2889
  %wp2891 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t2890, ptr %wp2891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdf4 word 0x97faa69b
  %wp2892 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769464, ptr %wp2892, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001efdf8 word 0xaa1f03f7
  %t2893 = or i64 0, 0
  %wp2894 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2893, ptr %wp2894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efdfc word 0x17fffea6
  br label %L_8001ef894
L_8001efe00:
  ; @pc 0x8001efe00 word 0x9001bb80
  %wp2895 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe04 word 0xf9452c00
  %r2896.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2896 = load i64, ptr %r2896.p, align 8, !alias.scope !3, !noalias !4
  %t2897 = add i64 %r2896, 2648
  %gmp2898 = inttoptr i64 %t2897 to ptr
  %gml2899 = load i64, ptr %gmp2898, align 1, !alias.scope !4, !noalias !3
  %wp2900 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2899, ptr %wp2900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe08 word 0x94a6cee6
  %wp2901 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769484, ptr %wp2901, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efe0c word 0x34ffd4c0
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %c2903 = trunc i64 %r2902 to i32
  %cmp2904 = icmp eq i32 %c2903, 0
  br i1 %cmp2904, label %L_8001ef8a4, label %L_8001efe10_ft
L_8001efe38:
  ; @pc 0x8001efe38 word 0x9001bb80
  %wp2930 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe3c word 0xf9453400
  %r2931.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2931 = load i64, ptr %r2931.p, align 8, !alias.scope !3, !noalias !4
  %t2932 = add i64 %r2931, 2664
  %gmp2933 = inttoptr i64 %t2932 to ptr
  %gml2934 = load i64, ptr %gmp2933, align 1, !alias.scope !4, !noalias !3
  %wp2935 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2934, ptr %wp2935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe40 word 0x94a6ced8
  %wp2936 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769540, ptr %wp2936, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efe44 word 0x34ffd480
  %r2937.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2937 = load i64, ptr %r2937.p, align 8, !alias.scope !3, !noalias !4
  %c2938 = trunc i64 %r2937 to i32
  %cmp2939 = icmp eq i32 %c2938, 0
  br i1 %cmp2939, label %L_8001ef8d4, label %L_8001efe48_ft
L_8001efe70:
  ; @pc 0x8001efe70 word 0x9001bb80
  %wp2965 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe74 word 0xf9453c00
  %r2966.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2966 = load i64, ptr %r2966.p, align 8, !alias.scope !3, !noalias !4
  %t2967 = add i64 %r2966, 2680
  %gmp2968 = inttoptr i64 %t2967 to ptr
  %gml2969 = load i64, ptr %gmp2968, align 1, !alias.scope !4, !noalias !3
  %wp2970 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2969, ptr %wp2970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe78 word 0x94a6ceca
  %wp2971 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769596, ptr %wp2971, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efe7c word 0x34ffd440
  %r2972.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2972 = load i64, ptr %r2972.p, align 8, !alias.scope !3, !noalias !4
  %c2973 = trunc i64 %r2972 to i32
  %cmp2974 = icmp eq i32 %c2973, 0
  br i1 %cmp2974, label %L_8001ef904, label %L_8001efe80_ft
L_8001efea8:
  ; @pc 0x8001efea8 word 0x9001bb80
  %wp3000 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3000, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efeac word 0xf9454400
  %r3001.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3001 = load i64, ptr %r3001.p, align 8, !alias.scope !3, !noalias !4
  %t3002 = add i64 %r3001, 2696
  %gmp3003 = inttoptr i64 %t3002 to ptr
  %gml3004 = load i64, ptr %gmp3003, align 1, !alias.scope !4, !noalias !3
  %wp3005 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3004, ptr %wp3005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efeb0 word 0x94a6cebc
  %wp3006 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769652, ptr %wp3006, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efeb4 word 0x34ffd400
  %r3007.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3007 = load i64, ptr %r3007.p, align 8, !alias.scope !3, !noalias !4
  %c3008 = trunc i64 %r3007 to i32
  %cmp3009 = icmp eq i32 %c3008, 0
  br i1 %cmp3009, label %L_8001ef934, label %L_8001efeb8_ft
L_8001efee0:
  ; @pc 0x8001efee0 word 0x9001bb80
  %wp3035 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efee4 word 0xf9454c00
  %r3036.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3036 = load i64, ptr %r3036.p, align 8, !alias.scope !3, !noalias !4
  %t3037 = add i64 %r3036, 2712
  %gmp3038 = inttoptr i64 %t3037 to ptr
  %gml3039 = load i64, ptr %gmp3038, align 1, !alias.scope !4, !noalias !3
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efee8 word 0x94a6ceae
  %wp3041 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769708, ptr %wp3041, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001efeec word 0x34ffd3c0
  %r3042.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3042 = load i64, ptr %r3042.p, align 8, !alias.scope !3, !noalias !4
  %c3043 = trunc i64 %r3042 to i32
  %cmp3044 = icmp eq i32 %c3043, 0
  br i1 %cmp3044, label %L_8001ef964, label %L_8001efef0_ft
L_8001eff18:
  ; @pc 0x8001eff18 word 0xd63f0100
  %r3070.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3070 = load i64, ptr %r3070.p, align 8, !alias.scope !3, !noalias !4
  %fp3071 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3070, ptr %fp3071, align 8, !alias.scope !3, !noalias !4
  %wp3072 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769756, ptr %wp3072, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001eff1c word 0x1400001e
  br label %L_8001eff94
L_8001eff20:
  ; @pc 0x8001eff20 word 0x92401d6a
  %r3073.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3073 = load i64, ptr %r3073.p, align 8, !alias.scope !3, !noalias !4
  %t3074 = and i64 %r3073, 255
  %wp3075 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3074, ptr %wp3075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff24 word 0x9103400b
  %r3076.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3076 = load i64, ptr %r3076.p, align 8, !alias.scope !3, !noalias !4
  %t3077 = add i64 %r3076, 208
  %wp3078 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3077, ptr %wp3078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff28 word 0x8b091108
  %r3079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3079 = load i64, ptr %r3079.p, align 8, !alias.scope !3, !noalias !4
  %r3080.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3080 = load i64, ptr %r3080.p, align 8, !alias.scope !3, !noalias !4
  %t3081 = shl i64 %r3080, 4
  %t3082 = add i64 %r3079, %t3081
  %wp3083 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3082, ptr %wp3083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff2c word 0x8b0a0d6c
  %r3084.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3084 = load i64, ptr %r3084.p, align 8, !alias.scope !3, !noalias !4
  %r3085.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3085 = load i64, ptr %r3085.p, align 8, !alias.scope !3, !noalias !4
  %t3086 = shl i64 %r3085, 3
  %t3087 = add i64 %r3084, %t3086
  %wp3088 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3087, ptr %wp3088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff30 word 0x7100115f
  %r3089.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3089 = load i64, ptr %r3089.p, align 8, !alias.scope !3, !noalias !4
  %c3090 = trunc i64 %r3089 to i32
  %t3091 = sub i32 %c3090, 4
  %fn3092 = icmp slt i32 %t3091, 0
  %fz3093 = icmp eq i32 %t3091, 0
  %fc3094 = icmp uge i32 %c3090, 4
  %fx13095 = xor i32 %c3090, 4
  %fx23096 = xor i32 %c3090, %t3091
  %fva3097 = and i32 %fx13095, %fx23096
  %fv3098 = icmp slt i32 %fva3097, 0
  %nz3099 = zext i1 %fn3092 to i64
  %zz3100 = zext i1 %fz3093 to i64
  %cz3101 = zext i1 %fc3094 to i64
  %vz3102 = zext i1 %fv3098 to i64
  %ns3103 = shl i64 %nz3099, 31
  %zs3104 = shl i64 %zz3100, 30
  %cs3105 = shl i64 %cz3101, 29
  %vs3106 = shl i64 %vz3102, 28
  %nzor3107 = or i64 %ns3103, %zs3104
  %cvor3108 = or i64 %cs3105, %vs3106
  %nzcv3109 = or i64 %nzor3107, %cvor3108
  %wp3110 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3109, ptr %wp3110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff34 word 0x39400501
  %r3111.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3111 = load i64, ptr %r3111.p, align 8, !alias.scope !3, !noalias !4
  %t3112 = add i64 %r3111, 1
  %gmp3113 = inttoptr i64 %t3112 to ptr
  %gml3114 = load i8, ptr %gmp3113, align 1, !alias.scope !4, !noalias !3
  %c3115 = zext i8 %gml3114 to i64
  %wp3116 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3115, ptr %wp3116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff38 word 0x9a8b318a
  %r3117.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3117 = load i64, ptr %r3117.p, align 8, !alias.scope !3, !noalias !4
  %r3118.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3118 = load i64, ptr %r3118.p, align 8, !alias.scope !3, !noalias !4
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %fsh3121 = lshr i64 %r3119, 29
  %ftr3122 = trunc i64 %fsh3121 to i1
  %cond3120 = xor i1 %ftr3122, true
  %sel3123 = select i1 %cond3120, i64 %r3117, i64 %r3118
  %wp3124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel3123, ptr %wp3124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff3c word 0xf9400140
  %r3125.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3125 = load i64, ptr %r3125.p, align 8, !alias.scope !3, !noalias !4
  %gmp3126 = inttoptr i64 %r3125 to ptr
  %gml3127 = load i64, ptr %gmp3126, align 1, !alias.scope !4, !noalias !3
  %wp3128 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3127, ptr %wp3128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff40 word 0x17fffef2
  br label %L_8001efb08
L_8001eff44:
  ; @pc 0x8001eff44 word 0x79c0050a
  %r3129.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3129 = load i64, ptr %r3129.p, align 8, !alias.scope !3, !noalias !4
  %t3130 = add i64 %r3129, 2
  %gmp3131 = inttoptr i64 %t3130 to ptr
  %gml3132 = load i16, ptr %gmp3131, align 1, !alias.scope !4, !noalias !3
  %c3133 = sext i16 %gml3132 to i32
  %c3134 = zext i32 %c3133 to i64
  %wp3135 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3134, ptr %wp3135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff48 word 0x36f8006a
  %r3136.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3136 = load i64, ptr %r3136.p, align 8, !alias.scope !3, !noalias !4
  %t3137 = and i64 %r3136, 2147483648
  %cmp3138 = icmp eq i64 %t3137, 0
  br i1 %cmp3138, label %L_8001eff54, label %L_8001eff4c_ft
L_8001eff54:
  ; @pc 0x8001eff54 word 0xf940840b
  %r3144.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3144 = load i64, ptr %r3144.p, align 8, !alias.scope !3, !noalias !4
  %t3145 = add i64 %r3144, 264
  %gmp3146 = inttoptr i64 %t3145 to ptr
  %gml3147 = load i64, ptr %gmp3146, align 1, !alias.scope !4, !noalias !3
  %wp3148 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3147, ptr %wp3148, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff58 word 0x92403d4d
  %r3149.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3149 = load i64, ptr %r3149.p, align 8, !alias.scope !3, !noalias !4
  %t3150 = and i64 %r3149, 65535
  %wp3151 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3150, ptr %wp3151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff5c word 0x8b091108
  %r3152.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3152 = load i64, ptr %r3152.p, align 8, !alias.scope !3, !noalias !4
  %r3153.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3153 = load i64, ptr %r3153.p, align 8, !alias.scope !3, !noalias !4
  %t3154 = shl i64 %r3153, 4
  %t3155 = add i64 %r3152, %t3154
  %wp3156 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3155, ptr %wp3156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff60 word 0x39400501
  %r3157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3157 = load i64, ptr %r3157.p, align 8, !alias.scope !3, !noalias !4
  %t3158 = add i64 %r3157, 1
  %gmp3159 = inttoptr i64 %t3158 to ptr
  %gml3160 = load i8, ptr %gmp3159, align 1, !alias.scope !4, !noalias !3
  %c3161 = zext i8 %gml3160 to i64
  %wp3162 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c3161, ptr %wp3162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff64 word 0xb940196c
  %r3163.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3163 = load i64, ptr %r3163.p, align 8, !alias.scope !3, !noalias !4
  %t3164 = add i64 %r3163, 24
  %gmp3165 = inttoptr i64 %t3164 to ptr
  %gml3166 = load i32, ptr %gmp3165, align 1, !alias.scope !4, !noalias !3
  %c3167 = zext i32 %gml3166 to i64
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3167, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff68 word 0xf940116b
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %t3170 = add i64 %r3169, 32
  %gmp3171 = inttoptr i64 %t3170 to ptr
  %gml3172 = load i64, ptr %gmp3171, align 1, !alias.scope !4, !noalias !3
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3172, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff6c word 0x6b2a219f
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %c3175 = trunc i64 %r3174 to i32
  %r3176.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3176 = load i64, ptr %r3176.p, align 8, !alias.scope !3, !noalias !4
  %c3177 = trunc i64 %r3176 to i16
  %c3178 = zext i16 %c3177 to i64
  %c3179 = trunc i64 %c3178 to i32
  %t3180 = sub i32 %c3175, %c3179
  %fn3181 = icmp slt i32 %t3180, 0
  %fz3182 = icmp eq i32 %t3180, 0
  %fc3183 = icmp uge i32 %c3175, %c3179
  %fx13184 = xor i32 %c3175, %c3179
  %fx23185 = xor i32 %c3175, %t3180
  %fva3186 = and i32 %fx13184, %fx23185
  %fv3187 = icmp slt i32 %fva3186, 0
  %nz3188 = zext i1 %fn3181 to i64
  %zz3189 = zext i1 %fz3182 to i64
  %cz3190 = zext i1 %fc3183 to i64
  %vz3191 = zext i1 %fv3187 to i64
  %ns3192 = shl i64 %nz3188, 31
  %zs3193 = shl i64 %zz3189, 30
  %cs3194 = shl i64 %cz3190, 29
  %vs3195 = shl i64 %vz3191, 28
  %nzor3196 = or i64 %ns3192, %zs3193
  %cvor3197 = or i64 %cs3194, %vs3195
  %nzcv3198 = or i64 %nzor3196, %cvor3197
  %wp3199 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3198, ptr %wp3199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff70 word 0x5280030c
  %c3200 = zext i32 24 to i64
  %wp3201 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3200, ptr %wp3201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff74 word 0x9a9f81aa
  %r3202.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3202 = load i64, ptr %r3202.p, align 8, !alias.scope !3, !noalias !4
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %fsh3205 = lshr i64 %r3203, 29
  %ftr3206 = trunc i64 %fsh3205 to i1
  %fsh3207 = lshr i64 %r3203, 30
  %ftr3208 = trunc i64 %fsh3207 to i1
  %fnz3209 = xor i1 %ftr3208, true
  %cond3204 = and i1 %ftr3206, %fnz3209
  %sel3210 = select i1 %cond3204, i64 %r3202, i64 0
  %wp3211 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %sel3210, ptr %wp3211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff78 word 0x9bac7d4a
  %r3212.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3212 = load i64, ptr %r3212.p, align 8, !alias.scope !3, !noalias !4
  %c3213 = trunc i64 %r3212 to i32
  %c3214 = zext i32 %c3213 to i64
  %r3215.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3215 = load i64, ptr %r3215.p, align 8, !alias.scope !3, !noalias !4
  %c3216 = trunc i64 %r3215 to i32
  %c3217 = zext i32 %c3216 to i64
  %t3218 = mul i64 %c3214, %c3217
  %t3219 = add i64 0, %t3218
  %wp3220 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3219, ptr %wp3220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff7c word 0xf86a696a
  %r3221.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3221 = load i64, ptr %r3221.p, align 8, !alias.scope !3, !noalias !4
  %r3222.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3222 = load i64, ptr %r3222.p, align 8, !alias.scope !3, !noalias !4
  %t3223 = add i64 %r3221, %r3222
  %gmp3224 = inttoptr i64 %t3223 to ptr
  %gml3225 = load i64, ptr %gmp3224, align 1, !alias.scope !4, !noalias !3
  %wp3226 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3225, ptr %wp3226, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff80 word 0xf9401140
  %r3227.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3227 = load i64, ptr %r3227.p, align 8, !alias.scope !3, !noalias !4
  %t3228 = add i64 %r3227, 32
  %gmp3229 = inttoptr i64 %t3228 to ptr
  %gml3230 = load i64, ptr %gmp3229, align 1, !alias.scope !4, !noalias !3
  %wp3231 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3230, ptr %wp3231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff84 word 0xf9400008
  %r3232.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3232 = load i64, ptr %r3232.p, align 8, !alias.scope !3, !noalias !4
  %gmp3233 = inttoptr i64 %r3232 to ptr
  %gml3234 = load i64, ptr %gmp3233, align 1, !alias.scope !4, !noalias !3
  %wp3235 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3234, ptr %wp3235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff88 word 0xf9409108
  %r3236.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3236 = load i64, ptr %r3236.p, align 8, !alias.scope !3, !noalias !4
  %t3237 = add i64 %r3236, 288
  %gmp3238 = inttoptr i64 %t3237 to ptr
  %gml3239 = load i64, ptr %gmp3238, align 1, !alias.scope !4, !noalias !3
  %wp3240 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3239, ptr %wp3240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff8c word 0xd63f0100
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %fp3242 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3241, ptr %fp3242, align 8, !alias.scope !3, !noalias !4
  %wp3243 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769872, ptr %wp3243, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001eff90 word 0xf9400bf6
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %t3245 = add i64 %r3244, 16
  %gmp3246 = inttoptr i64 %t3245 to ptr
  %gml3247 = load i64, ptr %gmp3246, align 1, !alias.scope !4, !noalias !3
  %wp3248 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3247, ptr %wp3248, align 8, !alias.scope !3, !noalias !4
  br label %L_8001eff94
L_8001eff94:
  ; @pc 0x8001eff94 word 0xaa0003e8
  %r3249.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3249 = load i64, ptr %r3249.p, align 8, !alias.scope !3, !noalias !4
  %t3250 = or i64 0, %r3249
  %wp3251 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3250, ptr %wp3251, align 8, !alias.scope !3, !noalias !4
  br label %L_8001eff98
L_8001eff98:
  ; @pc 0x8001eff98 word 0x2a1f03f7
  %t3252 = or i32 0, 0
  %c3253 = zext i32 %t3252 to i64
  %wp3254 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3253, ptr %wp3254, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff9c word 0x17fffef3
  br label %L_8001efb68
L_8001effa0:
  ; @pc 0x8001effa0 word 0xaa1f03e8
  %t3255 = or i64 0, 0
  %wp3256 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3255, ptr %wp3256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effa4 word 0x17fffec4
  br label %L_8001efab4
L_8001effa8:
  ; @pc 0x8001effa8 word 0xb9403c09
  %r3257.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3257 = load i64, ptr %r3257.p, align 8, !alias.scope !3, !noalias !4
  %t3258 = add i64 %r3257, 60
  %gmp3259 = inttoptr i64 %t3258 to ptr
  %gml3260 = load i32, ptr %gmp3259, align 1, !alias.scope !4, !noalias !3
  %c3261 = zext i32 %gml3260 to i64
  %wp3262 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3261, ptr %wp3262, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effac word 0x0b080128
  %r3263.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3263 = load i64, ptr %r3263.p, align 8, !alias.scope !3, !noalias !4
  %c3264 = trunc i64 %r3263 to i32
  %r3265.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3265 = load i64, ptr %r3265.p, align 8, !alias.scope !3, !noalias !4
  %c3266 = trunc i64 %r3265 to i32
  %t3267 = add i32 %c3264, %c3266
  %c3268 = zext i32 %t3267 to i64
  %wp3269 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3268, ptr %wp3269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effb0 word 0x17ffff12
  br label %L_8001efbf8
L_8001effb4:
  ; @pc 0x8001effb4 word 0xb9403c09
  %r3270.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3270 = load i64, ptr %r3270.p, align 8, !alias.scope !3, !noalias !4
  %t3271 = add i64 %r3270, 60
  %gmp3272 = inttoptr i64 %t3271 to ptr
  %gml3273 = load i32, ptr %gmp3272, align 1, !alias.scope !4, !noalias !3
  %c3274 = zext i32 %gml3273 to i64
  %wp3275 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3274, ptr %wp3275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effb8 word 0xb9404c0a
  %r3276.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3276 = load i64, ptr %r3276.p, align 8, !alias.scope !3, !noalias !4
  %t3277 = add i64 %r3276, 76
  %gmp3278 = inttoptr i64 %t3277 to ptr
  %gml3279 = load i32, ptr %gmp3278, align 1, !alias.scope !4, !noalias !3
  %c3280 = zext i32 %gml3279 to i64
  %wp3281 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3280, ptr %wp3281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effbc word 0x0b090149
  %r3282.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3282 = load i64, ptr %r3282.p, align 8, !alias.scope !3, !noalias !4
  %c3283 = trunc i64 %r3282 to i32
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %c3285 = trunc i64 %r3284 to i32
  %t3286 = add i32 %c3283, %c3285
  %c3287 = zext i32 %t3286 to i64
  %wp3288 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3287, ptr %wp3288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effc0 word 0xb9405c0a
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %t3290 = add i64 %r3289, 92
  %gmp3291 = inttoptr i64 %t3290 to ptr
  %gml3292 = load i32, ptr %gmp3291, align 1, !alias.scope !4, !noalias !3
  %c3293 = zext i32 %gml3292 to i64
  %wp3294 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3293, ptr %wp3294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effc4 word 0x0b0a0129
  %r3295.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3295 = load i64, ptr %r3295.p, align 8, !alias.scope !3, !noalias !4
  %c3296 = trunc i64 %r3295 to i32
  %r3297.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3297 = load i64, ptr %r3297.p, align 8, !alias.scope !3, !noalias !4
  %c3298 = trunc i64 %r3297 to i32
  %t3299 = add i32 %c3296, %c3298
  %c3300 = zext i32 %t3299 to i64
  %wp3301 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3300, ptr %wp3301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effc8 word 0x531e7529
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %c3303 = trunc i64 %r3302 to i32
  %ror3304 = call i32 @llvm.fshr.i32(i32 %c3303, i32 %c3303, i32 30)
  %t3305 = and i32 %ror3304, -4
  %c3306 = zext i32 %t3305 to i64
  %wp3307 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3306, ptr %wp3307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effcc word 0x0b080d33
  %r3308.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3308 = load i64, ptr %r3308.p, align 8, !alias.scope !3, !noalias !4
  %c3309 = trunc i64 %r3308 to i32
  %r3310.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3310 = load i64, ptr %r3310.p, align 8, !alias.scope !3, !noalias !4
  %c3311 = trunc i64 %r3310 to i32
  %t3312 = shl i32 %c3311, 3
  %t3313 = add i32 %c3309, %t3312
  %c3314 = zext i32 %t3313 to i64
  %wp3315 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c3314, ptr %wp3315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effd0 word 0x17fffe15
  br label %L_8001ef824
L_8001effd4:
  ; @pc 0x8001effd4 word 0x5280002d
  %c3316 = zext i32 1 to i64
  %wp3317 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3316, ptr %wp3317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effd8 word 0x72a0080d
  %r3318.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3318 = load i64, ptr %r3318.p, align 8, !alias.scope !3, !noalias !4
  %t3319 = and i64 %r3318, -4294901761
  %t3320 = or i64 %t3319, 4194304
  %c3321 = trunc i64 %t3320 to i32
  %c3322 = zext i32 %c3321 to i64
  %wp3323 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c3322, ptr %wp3323, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effdc word 0xaa0a03ee
  %r3324.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3324 = load i64, ptr %r3324.p, align 8, !alias.scope !3, !noalias !4
  %t3325 = or i64 0, %r3324
  %wp3326 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3325, ptr %wp3326, align 8, !alias.scope !3, !noalias !4
  br label %L_8001effe0
L_8001effe0:
  ; @pc 0x8001effe0 word 0x3840158f
  %r3327.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3327 = load i64, ptr %r3327.p, align 8, !alias.scope !3, !noalias !4
  %t3328 = add i64 %r3327, 1
  %gmp3329 = inttoptr i64 %r3327 to ptr
  %gml3330 = load i8, ptr %gmp3329, align 1, !alias.scope !4, !noalias !3
  %c3331 = zext i8 %gml3330 to i64
  %wp3332 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t3328, ptr %wp3332, align 8, !alias.scope !3, !noalias !4
  %wp3333 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c3331, ptr %wp3333, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effe4 word 0x384015d0
  %r3334.p = getelementptr inbounds i8, ptr %c, i64 112
  %r3334 = load i64, ptr %r3334.p, align 8, !alias.scope !3, !noalias !4
  %t3335 = add i64 %r3334, 1
  %gmp3336 = inttoptr i64 %r3334 to ptr
  %gml3337 = load i8, ptr %gmp3336, align 1, !alias.scope !4, !noalias !3
  %c3338 = zext i8 %gml3337 to i64
  %wp3339 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3335, ptr %wp3339, align 8, !alias.scope !3, !noalias !4
  %wp3340 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3338, ptr %wp3340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effe8 word 0x6b1001ff
  %r3341.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3341 = load i64, ptr %r3341.p, align 8, !alias.scope !3, !noalias !4
  %c3342 = trunc i64 %r3341 to i32
  %r3343.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3343 = load i64, ptr %r3343.p, align 8, !alias.scope !3, !noalias !4
  %c3344 = trunc i64 %r3343 to i32
  %t3345 = sub i32 %c3342, %c3344
  %fn3346 = icmp slt i32 %t3345, 0
  %fz3347 = icmp eq i32 %t3345, 0
  %fc3348 = icmp uge i32 %c3342, %c3344
  %fx13349 = xor i32 %c3342, %c3344
  %fx23350 = xor i32 %c3342, %t3345
  %fva3351 = and i32 %fx13349, %fx23350
  %fv3352 = icmp slt i32 %fva3351, 0
  %nz3353 = zext i1 %fn3346 to i64
  %zz3354 = zext i1 %fz3347 to i64
  %cz3355 = zext i1 %fc3348 to i64
  %vz3356 = zext i1 %fv3352 to i64
  %ns3357 = shl i64 %nz3353, 31
  %zs3358 = shl i64 %zz3354, 30
  %cs3359 = shl i64 %cz3355, 29
  %vs3360 = shl i64 %vz3356, 28
  %nzor3361 = or i64 %ns3357, %zs3358
  %cvor3362 = or i64 %cs3359, %vs3360
  %nzcv3363 = or i64 %nzor3361, %cvor3362
  %wp3364 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3363, ptr %wp3364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001effec word 0x54000081
  %r3365.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3365 = load i64, ptr %r3365.p, align 8, !alias.scope !3, !noalias !4
  %fsh3367 = lshr i64 %r3365, 30
  %ftr3368 = trunc i64 %fsh3367 to i1
  %cond3366 = xor i1 %ftr3368, true
  br i1 %cond3366, label %L_8001efffc, label %L_8001efff0_ft
L_8001efffc:
  ; @pc 0x8001efffc word 0x91002108
  %r3398.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3398 = load i64, ptr %r3398.p, align 8, !alias.scope !3, !noalias !4
  %t3399 = add i64 %r3398, 8
  %wp3400 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3399, ptr %wp3400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0000 word 0xeb09011f
  %r3401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3401 = load i64, ptr %r3401.p, align 8, !alias.scope !3, !noalias !4
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %t3403 = sub i64 %r3401, %r3402
  %fn3404 = icmp slt i64 %t3403, 0
  %fz3405 = icmp eq i64 %t3403, 0
  %fc3406 = icmp uge i64 %r3401, %r3402
  %fx13407 = xor i64 %r3401, %r3402
  %fx23408 = xor i64 %r3401, %t3403
  %fva3409 = and i64 %fx13407, %fx23408
  %fv3410 = icmp slt i64 %fva3409, 0
  %nz3411 = zext i1 %fn3404 to i64
  %zz3412 = zext i1 %fz3405 to i64
  %cz3413 = zext i1 %fc3406 to i64
  %vz3414 = zext i1 %fv3410 to i64
  %ns3415 = shl i64 %nz3411, 31
  %zs3416 = shl i64 %zz3412, 30
  %cs3417 = shl i64 %cz3413, 29
  %vs3418 = shl i64 %vz3414, 28
  %nzor3419 = or i64 %ns3415, %zs3416
  %cvor3420 = or i64 %cs3417, %vs3418
  %nzcv3421 = or i64 %nzor3419, %cvor3420
  %wp3422 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3421, ptr %wp3422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0004 word 0x54ffe161
  %r3423.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3423 = load i64, ptr %r3423.p, align 8, !alias.scope !3, !noalias !4
  %fsh3425 = lshr i64 %r3423, 30
  %ftr3426 = trunc i64 %fsh3425 to i1
  %cond3424 = xor i1 %ftr3426, true
  br i1 %cond3424, label %L_8001efc30, label %L_8001f0008_ft
L_8001f000c:
  ; @pc 0x8001f000c word 0xf001bb60
  %wp3427 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0010 word 0xf9456400
  %r3428.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3428 = load i64, ptr %r3428.p, align 8, !alias.scope !3, !noalias !4
  %t3429 = add i64 %r3428, 2760
  %gmp3430 = inttoptr i64 %t3429 to ptr
  %gml3431 = load i64, ptr %gmp3430, align 1, !alias.scope !4, !noalias !3
  %wp3432 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3431, ptr %wp3432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0014 word 0x94a6ce63
  %wp3433 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361770008, ptr %wp3433, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001f0018 word 0xf001bb76
  %wp3434 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419896320, ptr %wp3434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f001c word 0xf94562d6
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3435 = load i64, ptr %r3435.p, align 8, !alias.scope !3, !noalias !4
  %t3436 = add i64 %r3435, 2752
  %gmp3437 = inttoptr i64 %t3436 to ptr
  %gml3438 = load i64, ptr %gmp3437, align 1, !alias.scope !4, !noalias !3
  %wp3439 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3438, ptr %wp3439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0020 word 0x340000c0
  %r3440.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3440 = load i64, ptr %r3440.p, align 8, !alias.scope !3, !noalias !4
  %c3441 = trunc i64 %r3440 to i32
  %cmp3442 = icmp eq i32 %c3441, 0
  br i1 %cmp3442, label %L_8001f0038, label %L_8001f0024_ft
L_8001f0038:
  ; @pc 0x8001f0038 word 0x2a1f03fa
  %t3455 = or i32 0, 0
  %c3456 = zext i32 %t3455 to i64
  %wp3457 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3456, ptr %wp3457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f003c word 0x2a1f03f4
  %t3458 = or i32 0, 0
  %c3459 = zext i32 %t3458 to i64
  %wp3460 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c3459, ptr %wp3460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0040 word 0x17fffe5a
  br label %L_8001ef9a8
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361767324, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001ef59c
L_8001ef5ec_ft:
  ; @pc 0x8001ef5ec word 0x79403aa8
  %r122.p = getelementptr inbounds i8, ptr %c, i64 168
  %r122 = load i64, ptr %r122.p, align 8, !alias.scope !3, !noalias !4
  %t123 = add i64 %r122, 28
  %gmp124 = inttoptr i64 %t123 to ptr
  %gml125 = load i16, ptr %gmp124, align 1, !alias.scope !4, !noalias !3
  %c126 = zext i16 %gml125 to i64
  %wp127 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c126, ptr %wp127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5f0 word 0x5280078a
  %c128 = zext i32 60 to i64
  %wp129 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5f4 word 0xf9402669
  %r130.p = getelementptr inbounds i8, ptr %c, i64 152
  %r130 = load i64, ptr %r130.p, align 8, !alias.scope !3, !noalias !4
  %t131 = add i64 %r130, 72
  %gmp132 = inttoptr i64 %t131 to ptr
  %gml133 = load i64, ptr %gmp132, align 1, !alias.scope !4, !noalias !3
  %wp134 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml133, ptr %wp134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5f8 word 0x9baa2508
  %r135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r135 = load i64, ptr %r135.p, align 8, !alias.scope !3, !noalias !4
  %c136 = trunc i64 %r135 to i32
  %c137 = zext i32 %c136 to i64
  %r138.p = getelementptr inbounds i8, ptr %c, i64 80
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %c139 = trunc i64 %r138 to i32
  %c140 = zext i32 %c139 to i64
  %t141 = mul i64 %c137, %c140
  %r142.p = getelementptr inbounds i8, ptr %c, i64 72
  %r142 = load i64, ptr %r142.p, align 8, !alias.scope !3, !noalias !4
  %t143 = add i64 %r142, %t141
  %wp144 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t143, ptr %wp144, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef5fc word 0xb9801509
  %r145.p = getelementptr inbounds i8, ptr %c, i64 64
  %r145 = load i64, ptr %r145.p, align 8, !alias.scope !3, !noalias !4
  %t146 = add i64 %r145, 20
  %gmp147 = inttoptr i64 %t146 to ptr
  %gml148 = load i32, ptr %gmp147, align 1, !alias.scope !4, !noalias !3
  %c149 = sext i32 %gml148 to i64
  %wp150 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef600 word 0xf9400a68
  %r151.p = getelementptr inbounds i8, ptr %c, i64 152
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %t152 = add i64 %r151, 16
  %gmp153 = inttoptr i64 %t152 to ptr
  %gml154 = load i64, ptr %gmp153, align 1, !alias.scope !4, !noalias !3
  %wp155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml154, ptr %wp155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef604 word 0x8b090100
  %r156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r156 = load i64, ptr %r156.p, align 8, !alias.scope !3, !noalias !4
  %r157.p = getelementptr inbounds i8, ptr %c, i64 72
  %r157 = load i64, ptr %r157.p, align 8, !alias.scope !3, !noalias !4
  %t158 = add i64 %r156, %r157
  %wp159 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t158, ptr %wp159, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef608
L_8001ef620_ft:
  ; @pc 0x8001ef620 word 0xf940166a
  %r203.p = getelementptr inbounds i8, ptr %c, i64 152
  %r203 = load i64, ptr %r203.p, align 8, !alias.scope !3, !noalias !4
  %t204 = add i64 %r203, 40
  %gmp205 = inttoptr i64 %t204 to ptr
  %gml206 = load i64, ptr %gmp205, align 1, !alias.scope !4, !noalias !3
  %wp207 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml206, ptr %wp207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef624 word 0x5280030f
  %c208 = zext i32 24 to i64
  %wp209 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c208, ptr %wp209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef628 word 0xaa1f03fb
  %t210 = or i64 0, 0
  %wp211 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t210, ptr %wp211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef62c word 0xb980700e
  %r212.p = getelementptr inbounds i8, ptr %c, i64 0
  %r212 = load i64, ptr %r212.p, align 8, !alias.scope !3, !noalias !4
  %t213 = add i64 %r212, 112
  %gmp214 = inttoptr i64 %t213 to ptr
  %gml215 = load i32, ptr %gmp214, align 1, !alias.scope !4, !noalias !3
  %c216 = sext i32 %gml215 to i64
  %wp217 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c216, ptr %wp217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef630 word 0xf94002cb
  %r218.p = getelementptr inbounds i8, ptr %c, i64 176
  %r218 = load i64, ptr %r218.p, align 8, !alias.scope !3, !noalias !4
  %gmp219 = inttoptr i64 %r218 to ptr
  %gml220 = load i64, ptr %gmp219, align 1, !alias.scope !4, !noalias !3
  %wp221 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml220, ptr %wp221, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef634 word 0x9100056c
  %r222.p = getelementptr inbounds i8, ptr %c, i64 88
  %r222 = load i64, ptr %r222.p, align 8, !alias.scope !3, !noalias !4
  %t223 = add i64 %r222, 1
  %wp224 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t223, ptr %wp224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef638 word 0xb980214a
  %r225.p = getelementptr inbounds i8, ptr %c, i64 80
  %r225 = load i64, ptr %r225.p, align 8, !alias.scope !3, !noalias !4
  %t226 = add i64 %r225, 32
  %gmp227 = inttoptr i64 %t226 to ptr
  %gml228 = load i32, ptr %gmp227, align 1, !alias.scope !4, !noalias !3
  %c229 = sext i32 %gml228 to i64
  %wp230 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c229, ptr %wp230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef63c word 0x8b0a010d
  %r231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %r232.p = getelementptr inbounds i8, ptr %c, i64 80
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = add i64 %r231, %r232
  %wp234 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t233, ptr %wp234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef640 word 0xb980250a
  %r235.p = getelementptr inbounds i8, ptr %c, i64 64
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = add i64 %r235, 36
  %gmp237 = inttoptr i64 %t236 to ptr
  %gml238 = load i32, ptr %gmp237, align 1, !alias.scope !4, !noalias !3
  %c239 = sext i32 %gml238 to i64
  %wp240 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef644 word 0x9b2f35dc
  %r241.p = getelementptr inbounds i8, ptr %c, i64 112
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %c242 = trunc i64 %r241 to i32
  %c243 = sext i32 %c242 to i64
  %r244.p = getelementptr inbounds i8, ptr %c, i64 120
  %r244 = load i64, ptr %r244.p, align 8, !alias.scope !3, !noalias !4
  %c245 = trunc i64 %r244 to i32
  %c246 = sext i32 %c245 to i64
  %t247 = mul i64 %c243, %c246
  %r248.p = getelementptr inbounds i8, ptr %c, i64 104
  %r248 = load i64, ptr %r248.p, align 8, !alias.scope !3, !noalias !4
  %t249 = add i64 %r248, %t247
  %wp250 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t249, ptr %wp250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef648 word 0x5280030e
  %c251 = zext i32 24 to i64
  %wp252 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef64c word 0x8b0a010a
  %r253.p = getelementptr inbounds i8, ptr %c, i64 64
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %r254.p = getelementptr inbounds i8, ptr %c, i64 80
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %t255 = add i64 %r253, %r254
  %wp256 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t255, ptr %wp256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef650 word 0x91000d4d
  %r257.p = getelementptr inbounds i8, ptr %c, i64 80
  %r257 = load i64, ptr %r257.p, align 8, !alias.scope !3, !noalias !4
  %t258 = add i64 %r257, 3
  %wp259 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t258, ptr %wp259, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef654
L_8001ef668_ft:
  ; @pc 0x8001ef668 word 0xaa1f03ef
  %t301 = or i64 0, 0
  %wp302 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t301, ptr %wp302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef66c word 0x8b1001b0
  %r303.p = getelementptr inbounds i8, ptr %c, i64 104
  %r303 = load i64, ptr %r303.p, align 8, !alias.scope !3, !noalias !4
  %r304.p = getelementptr inbounds i8, ptr %c, i64 128
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %t305 = add i64 %r303, %r304
  %wp306 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t305, ptr %wp306, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef670
L_8001ef688_ft:
  ; @pc 0x8001ef688 word 0x34000520
  %r355.p = getelementptr inbounds i8, ptr %c, i64 0
  %r355 = load i64, ptr %r355.p, align 8, !alias.scope !3, !noalias !4
  %c356 = trunc i64 %r355 to i32
  %cmp357 = icmp eq i32 %c356, 0
  br i1 %cmp357, label %L_8001ef72c, label %L_8001ef68c_ft
L_8001ef68c_ft:
  ; @pc 0x8001ef68c word 0xf15001ff
  %r358.p = getelementptr inbounds i8, ptr %c, i64 120
  %r358 = load i64, ptr %r358.p, align 8, !alias.scope !3, !noalias !4
  %t359 = sub i64 %r358, 4194304
  %fn360 = icmp slt i64 %t359, 0
  %fz361 = icmp eq i64 %t359, 0
  %fc362 = icmp uge i64 %r358, 4194304
  %fx1363 = xor i64 %r358, 4194304
  %fx2364 = xor i64 %r358, %t359
  %fva365 = and i64 %fx1363, %fx2364
  %fv366 = icmp slt i64 %fva365, 0
  %nz367 = zext i1 %fn360 to i64
  %zz368 = zext i1 %fz361 to i64
  %cz369 = zext i1 %fc362 to i64
  %vz370 = zext i1 %fv366 to i64
  %ns371 = shl i64 %nz367, 31
  %zs372 = shl i64 %zz368, 30
  %cs373 = shl i64 %cz369, 29
  %vs374 = shl i64 %vz370, 28
  %nzor375 = or i64 %ns371, %zs372
  %cvor376 = or i64 %cs373, %vs374
  %nzcv377 = or i64 %nzor375, %cvor376
  %wp378 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv377, ptr %wp378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef690 word 0x54000240
  %r379.p = getelementptr inbounds i8, ptr %c, i64 272
  %r379 = load i64, ptr %r379.p, align 8, !alias.scope !3, !noalias !4
  %fsh381 = lshr i64 %r379, 30
  %cond380 = trunc i64 %fsh381 to i1
  br i1 %cond380, label %L_8001ef6d8, label %L_8001ef694_ft
L_8001ef694_ft:
  ; @pc 0x8001ef694 word 0x386f6980
  %r382.p = getelementptr inbounds i8, ptr %c, i64 96
  %r382 = load i64, ptr %r382.p, align 8, !alias.scope !3, !noalias !4
  %r383.p = getelementptr inbounds i8, ptr %c, i64 120
  %r383 = load i64, ptr %r383.p, align 8, !alias.scope !3, !noalias !4
  %t384 = add i64 %r382, %r383
  %gmp385 = inttoptr i64 %t384 to ptr
  %gml386 = load i8, ptr %gmp385, align 1, !alias.scope !4, !noalias !3
  %c387 = zext i8 %gml386 to i64
  %wp388 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c387, ptr %wp388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef698 word 0x385fe241
  %r389.p = getelementptr inbounds i8, ptr %c, i64 144
  %r389 = load i64, ptr %r389.p, align 8, !alias.scope !3, !noalias !4
  %t390 = add i64 %r389, -2
  %gmp391 = inttoptr i64 %t390 to ptr
  %gml392 = load i8, ptr %gmp391, align 1, !alias.scope !4, !noalias !3
  %c393 = zext i8 %gml392 to i64
  %wp394 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c393, ptr %wp394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef69c word 0x6b01001f
  %r395.p = getelementptr inbounds i8, ptr %c, i64 0
  %r395 = load i64, ptr %r395.p, align 8, !alias.scope !3, !noalias !4
  %c396 = trunc i64 %r395 to i32
  %r397.p = getelementptr inbounds i8, ptr %c, i64 8
  %r397 = load i64, ptr %r397.p, align 8, !alias.scope !3, !noalias !4
  %c398 = trunc i64 %r397 to i32
  %t399 = sub i32 %c396, %c398
  %fn400 = icmp slt i32 %t399, 0
  %fz401 = icmp eq i32 %t399, 0
  %fc402 = icmp uge i32 %c396, %c398
  %fx1403 = xor i32 %c396, %c398
  %fx2404 = xor i32 %c396, %t399
  %fva405 = and i32 %fx1403, %fx2404
  %fv406 = icmp slt i32 %fva405, 0
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
  ; @pc 0x8001ef6a0 word 0x540001c1
  %r419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r419 = load i64, ptr %r419.p, align 8, !alias.scope !3, !noalias !4
  %fsh421 = lshr i64 %r419, 30
  %ftr422 = trunc i64 %fsh421 to i1
  %cond420 = xor i1 %ftr422, true
  br i1 %cond420, label %L_8001ef6d8, label %L_8001ef6a4_ft
L_8001ef6a4_ft:
  ; @pc 0x8001ef6a4 word 0x34000440
  %r423.p = getelementptr inbounds i8, ptr %c, i64 0
  %r423 = load i64, ptr %r423.p, align 8, !alias.scope !3, !noalias !4
  %c424 = trunc i64 %r423 to i32
  %cmp425 = icmp eq i32 %c424, 0
  br i1 %cmp425, label %L_8001ef72c, label %L_8001ef6a8_ft
L_8001ef6a8_ft:
  ; @pc 0x8001ef6a8 word 0x39400620
  %r426.p = getelementptr inbounds i8, ptr %c, i64 136
  %r426 = load i64, ptr %r426.p, align 8, !alias.scope !3, !noalias !4
  %t427 = add i64 %r426, 1
  %gmp428 = inttoptr i64 %t427 to ptr
  %gml429 = load i8, ptr %gmp428, align 1, !alias.scope !4, !noalias !3
  %c430 = zext i8 %gml429 to i64
  %wp431 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c430, ptr %wp431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6ac word 0x385ff252
  %r432.p = getelementptr inbounds i8, ptr %c, i64 144
  %r432 = load i64, ptr %r432.p, align 8, !alias.scope !3, !noalias !4
  %t433 = add i64 %r432, -1
  %gmp434 = inttoptr i64 %t433 to ptr
  %gml435 = load i8, ptr %gmp434, align 1, !alias.scope !4, !noalias !3
  %c436 = zext i8 %gml435 to i64
  %wp437 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6b0 word 0x6b12001f
  %r438.p = getelementptr inbounds i8, ptr %c, i64 0
  %r438 = load i64, ptr %r438.p, align 8, !alias.scope !3, !noalias !4
  %c439 = trunc i64 %r438 to i32
  %r440.p = getelementptr inbounds i8, ptr %c, i64 144
  %r440 = load i64, ptr %r440.p, align 8, !alias.scope !3, !noalias !4
  %c441 = trunc i64 %r440 to i32
  %t442 = sub i32 %c439, %c441
  %fn443 = icmp slt i32 %t442, 0
  %fz444 = icmp eq i32 %t442, 0
  %fc445 = icmp uge i32 %c439, %c441
  %fx1446 = xor i32 %c439, %c441
  %fx2447 = xor i32 %c439, %t442
  %fva448 = and i32 %fx1446, %fx2447
  %fv449 = icmp slt i32 %fva448, 0
  %nz450 = zext i1 %fn443 to i64
  %zz451 = zext i1 %fz444 to i64
  %cz452 = zext i1 %fc445 to i64
  %vz453 = zext i1 %fv449 to i64
  %ns454 = shl i64 %nz450, 31
  %zs455 = shl i64 %zz451, 30
  %cs456 = shl i64 %cz452, 29
  %vs457 = shl i64 %vz453, 28
  %nzor458 = or i64 %ns454, %zs455
  %cvor459 = or i64 %cs456, %vs457
  %nzcv460 = or i64 %nzor458, %cvor459
  %wp461 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6b4 word 0x54000121
  %r462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %fsh464 = lshr i64 %r462, 30
  %ftr465 = trunc i64 %fsh464 to i1
  %cond463 = xor i1 %ftr465, true
  br i1 %cond463, label %L_8001ef6d8, label %L_8001ef6b8_ft
L_8001ef6b8_ft:
  ; @pc 0x8001ef6b8 word 0x340003a0
  %r466.p = getelementptr inbounds i8, ptr %c, i64 0
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %c467 = trunc i64 %r466 to i32
  %cmp468 = icmp eq i32 %c467, 0
  br i1 %cmp468, label %L_8001ef72c, label %L_8001ef6bc_ft
L_8001ef6bc_ft:
  ; @pc 0x8001ef6bc word 0x39400a31
  %r469.p = getelementptr inbounds i8, ptr %c, i64 136
  %r469 = load i64, ptr %r469.p, align 8, !alias.scope !3, !noalias !4
  %t470 = add i64 %r469, 2
  %gmp471 = inttoptr i64 %t470 to ptr
  %gml472 = load i8, ptr %gmp471, align 1, !alias.scope !4, !noalias !3
  %c473 = zext i8 %gml472 to i64
  %wp474 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c473, ptr %wp474, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6c0 word 0x386f6a12
  %r475.p = getelementptr inbounds i8, ptr %c, i64 128
  %r475 = load i64, ptr %r475.p, align 8, !alias.scope !3, !noalias !4
  %r476.p = getelementptr inbounds i8, ptr %c, i64 120
  %r476 = load i64, ptr %r476.p, align 8, !alias.scope !3, !noalias !4
  %t477 = add i64 %r475, %r476
  %gmp478 = inttoptr i64 %t477 to ptr
  %gml479 = load i8, ptr %gmp478, align 1, !alias.scope !4, !noalias !3
  %c480 = zext i8 %gml479 to i64
  %wp481 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c480, ptr %wp481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6c4 word 0x6b12023f
  %r482.p = getelementptr inbounds i8, ptr %c, i64 136
  %r482 = load i64, ptr %r482.p, align 8, !alias.scope !3, !noalias !4
  %c483 = trunc i64 %r482 to i32
  %r484.p = getelementptr inbounds i8, ptr %c, i64 144
  %r484 = load i64, ptr %r484.p, align 8, !alias.scope !3, !noalias !4
  %c485 = trunc i64 %r484 to i32
  %t486 = sub i32 %c483, %c485
  %fn487 = icmp slt i32 %t486, 0
  %fz488 = icmp eq i32 %t486, 0
  %fc489 = icmp uge i32 %c483, %c485
  %fx1490 = xor i32 %c483, %c485
  %fx2491 = xor i32 %c483, %t486
  %fva492 = and i32 %fx1490, %fx2491
  %fv493 = icmp slt i32 %fva492, 0
  %nz494 = zext i1 %fn487 to i64
  %zz495 = zext i1 %fz488 to i64
  %cz496 = zext i1 %fc489 to i64
  %vz497 = zext i1 %fv493 to i64
  %ns498 = shl i64 %nz494, 31
  %zs499 = shl i64 %zz495, 30
  %cs500 = shl i64 %cz496, 29
  %vs501 = shl i64 %vz497, 28
  %nzor502 = or i64 %ns498, %zs499
  %cvor503 = or i64 %cs500, %vs501
  %nzcv504 = or i64 %nzor502, %cvor503
  %wp505 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv504, ptr %wp505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6c8 word 0x54000081
  %r506.p = getelementptr inbounds i8, ptr %c, i64 272
  %r506 = load i64, ptr %r506.p, align 8, !alias.scope !3, !noalias !4
  %fsh508 = lshr i64 %r506, 30
  %ftr509 = trunc i64 %fsh508 to i1
  %cond507 = xor i1 %ftr509, true
  br i1 %cond507, label %L_8001ef6d8, label %L_8001ef6cc_ft
L_8001ef6cc_ft:
  ; @pc 0x8001ef6cc word 0x34000311
  %r510.p = getelementptr inbounds i8, ptr %c, i64 136
  %r510 = load i64, ptr %r510.p, align 8, !alias.scope !3, !noalias !4
  %c511 = trunc i64 %r510 to i32
  %cmp512 = icmp eq i32 %c511, 0
  br i1 %cmp512, label %L_8001ef72c, label %L_8001ef6d0_ft
L_8001ef6d0_ft:
  ; @pc 0x8001ef6d0 word 0x910011ef
  %r513.p = getelementptr inbounds i8, ptr %c, i64 120
  %r513 = load i64, ptr %r513.p, align 8, !alias.scope !3, !noalias !4
  %t514 = add i64 %r513, 4
  %wp515 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t514, ptr %wp515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6d4 word 0x17ffffe7
  br label %L_8001ef670
L_8001ef6e8_ft:
  ; @pc 0x8001ef6e8 word 0x910063e9
  %r548.p = getelementptr inbounds i8, ptr %c, i64 256
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %t549 = add i64 %r548, 24
  %wp550 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t549, ptr %wp550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6ec word 0x39048fff
  %r551.p = getelementptr inbounds i8, ptr %c, i64 256
  %r551 = load i64, ptr %r551.p, align 8, !alias.scope !3, !noalias !4
  %t552 = add i64 %r551, 291
  %c553 = trunc i32 0 to i8
  %gmp554 = inttoptr i64 %t552 to ptr
  store i8 %c553, ptr %gmp554, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef6f0 word 0xb00152e1
  %wp555 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6f4 word 0x91270c21
  %r556.p = getelementptr inbounds i8, ptr %c, i64 8
  %r556 = load i64, ptr %r556.p, align 8, !alias.scope !3, !noalias !4
  %t557 = add i64 %r556, 2499
  %wp558 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t557, ptr %wp558, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6f8 word 0x91003129
  %r559.p = getelementptr inbounds i8, ptr %c, i64 72
  %r559 = load i64, ptr %r559.p, align 8, !alias.scope !3, !noalias !4
  %t560 = add i64 %r559, 12
  %wp561 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t560, ptr %wp561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef6fc word 0x390093ff
  %r562.p = getelementptr inbounds i8, ptr %c, i64 256
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %t563 = add i64 %r562, 36
  %c564 = trunc i32 0 to i8
  %gmp565 = inttoptr i64 %t563 to ptr
  store i8 %c564, ptr %gmp565, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef700 word 0xf9000fe9
  %r566.p = getelementptr inbounds i8, ptr %c, i64 256
  %r566 = load i64, ptr %r566.p, align 8, !alias.scope !3, !noalias !4
  %t567 = add i64 %r566, 24
  %r568.p = getelementptr inbounds i8, ptr %c, i64 72
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %gmp569 = inttoptr i64 %t567 to ptr
  store i64 %r568, ptr %gmp569, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef704 word 0x52802009
  %c570 = zext i32 256 to i64
  %wp571 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c570, ptr %wp571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef708 word 0xb980250a
  %r572.p = getelementptr inbounds i8, ptr %c, i64 64
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %t573 = add i64 %r572, 36
  %gmp574 = inttoptr i64 %t573 to ptr
  %gml575 = load i32, ptr %gmp574, align 1, !alias.scope !4, !noalias !3
  %c576 = sext i32 %gml575 to i64
  %wp577 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c576, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef70c word 0xb90023e9
  %r578.p = getelementptr inbounds i8, ptr %c, i64 256
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %t579 = add i64 %r578, 32
  %r580.p = getelementptr inbounds i8, ptr %c, i64 72
  %r580 = load i64, ptr %r580.p, align 8, !alias.scope !3, !noalias !4
  %c581 = trunc i64 %r580 to i32
  %gmp582 = inttoptr i64 %t579 to ptr
  store i32 %c581, ptr %gmp582, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001ef710 word 0x910063e0
  %r583.p = getelementptr inbounds i8, ptr %c, i64 256
  %r583 = load i64, ptr %r583.p, align 8, !alias.scope !3, !noalias !4
  %t584 = add i64 %r583, 24
  %wp585 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t584, ptr %wp585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef714 word 0xb9800909
  %r586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r586 = load i64, ptr %r586.p, align 8, !alias.scope !3, !noalias !4
  %t587 = add i64 %r586, 8
  %gmp588 = inttoptr i64 %t587 to ptr
  %gml589 = load i32, ptr %gmp588, align 1, !alias.scope !4, !noalias !3
  %c590 = sext i32 %gml589 to i64
  %wp591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c590, ptr %wp591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef718 word 0x8b0a0108
  %r592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r592 = load i64, ptr %r592.p, align 8, !alias.scope !3, !noalias !4
  %r593.p = getelementptr inbounds i8, ptr %c, i64 80
  %r593 = load i64, ptr %r593.p, align 8, !alias.scope !3, !noalias !4
  %t594 = add i64 %r592, %r593
  %wp595 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t594, ptr %wp595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef71c word 0x8b090102
  %r596.p = getelementptr inbounds i8, ptr %c, i64 64
  %r596 = load i64, ptr %r596.p, align 8, !alias.scope !3, !noalias !4
  %r597.p = getelementptr inbounds i8, ptr %c, i64 72
  %r597 = load i64, ptr %r597.p, align 8, !alias.scope !3, !noalias !4
  %t598 = add i64 %r596, %r597
  %wp599 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t598, ptr %wp599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef720 word 0x97faa850
  %wp600 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361767716, ptr %wp600, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001ef724 word 0x2a1f03f3
  %t601 = or i32 0, 0
  %c602 = zext i32 %t601 to i64
  %wp603 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c602, ptr %wp603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef728 word 0x14000164
  br label %L_8001efcb8
L_8001ef748_ft:
  ; @pc 0x8001ef748 word 0xf94006a8
  %r640.p = getelementptr inbounds i8, ptr %c, i64 168
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %t641 = add i64 %r640, 8
  %gmp642 = inttoptr i64 %t641 to ptr
  %gml643 = load i64, ptr %gmp642, align 1, !alias.scope !4, !noalias !3
  %wp644 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml643, ptr %wp644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef74c word 0x7941b909
  %r645.p = getelementptr inbounds i8, ptr %c, i64 64
  %r645 = load i64, ptr %r645.p, align 8, !alias.scope !3, !noalias !4
  %t646 = add i64 %r645, 220
  %gmp647 = inttoptr i64 %t646 to ptr
  %gml648 = load i16, ptr %gmp647, align 1, !alias.scope !4, !noalias !3
  %c649 = zext i16 %gml648 to i64
  %wp650 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef750 word 0x34000989
  %r651.p = getelementptr inbounds i8, ptr %c, i64 72
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %c652 = trunc i64 %r651 to i32
  %cmp653 = icmp eq i32 %c652, 0
  br i1 %cmp653, label %L_8001ef880, label %L_8001ef754
L_8001ef764_ft:
  ; @pc 0x8001ef764 word 0x52800308
  %c691 = zext i32 24 to i64
  %wp692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c691, ptr %wp692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef768 word 0x6b1802df
  %r693.p = getelementptr inbounds i8, ptr %c, i64 176
  %r693 = load i64, ptr %r693.p, align 8, !alias.scope !3, !noalias !4
  %c694 = trunc i64 %r693 to i32
  %r695.p = getelementptr inbounds i8, ptr %c, i64 192
  %r695 = load i64, ptr %r695.p, align 8, !alias.scope !3, !noalias !4
  %c696 = trunc i64 %r695 to i32
  %t697 = sub i32 %c694, %c696
  %fn698 = icmp slt i32 %t697, 0
  %fz699 = icmp eq i32 %t697, 0
  %fc700 = icmp uge i32 %c694, %c696
  %fx1701 = xor i32 %c694, %c696
  %fx2702 = xor i32 %c694, %t697
  %fva703 = and i32 %fx1701, %fx2702
  %fv704 = icmp slt i32 %fva703, 0
  %nz705 = zext i1 %fn698 to i64
  %zz706 = zext i1 %fz699 to i64
  %cz707 = zext i1 %fc700 to i64
  %vz708 = zext i1 %fv704 to i64
  %ns709 = shl i64 %nz705, 31
  %zs710 = shl i64 %zz706, 30
  %cs711 = shl i64 %cz707, 29
  %vs712 = shl i64 %vz708, 28
  %nzor713 = or i64 %ns709, %zs710
  %cvor714 = or i64 %cs711, %vs712
  %nzcv715 = or i64 %nzor713, %cvor714
  %wp716 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv715, ptr %wp716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef76c word 0x9b087368
  %r717.p = getelementptr inbounds i8, ptr %c, i64 64
  %r717 = load i64, ptr %r717.p, align 8, !alias.scope !3, !noalias !4
  %r718.p = getelementptr inbounds i8, ptr %c, i64 216
  %r718 = load i64, ptr %r718.p, align 8, !alias.scope !3, !noalias !4
  %t719 = mul i64 %r718, %r717
  %r720.p = getelementptr inbounds i8, ptr %c, i64 224
  %r720 = load i64, ptr %r720.p, align 8, !alias.scope !3, !noalias !4
  %t721 = add i64 %r720, %t719
  %wp722 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t721, ptr %wp722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef770 word 0x79400d08
  %r723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r723 = load i64, ptr %r723.p, align 8, !alias.scope !3, !noalias !4
  %t724 = add i64 %r723, 6
  %gmp725 = inttoptr i64 %t724 to ptr
  %gml726 = load i16, ptr %gmp725, align 1, !alias.scope !4, !noalias !3
  %c727 = zext i16 %gml726 to i64
  %wp728 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c727, ptr %wp728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef774 word 0x12003913
  %r729.p = getelementptr inbounds i8, ptr %c, i64 64
  %r729 = load i64, ptr %r729.p, align 8, !alias.scope !3, !noalias !4
  %c730 = trunc i64 %r729 to i32
  %t731 = and i32 %c730, 32767
  %c732 = zext i32 %t731 to i64
  %wp733 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c732, ptr %wp733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef778 word 0x54002020
  %r734.p = getelementptr inbounds i8, ptr %c, i64 272
  %r734 = load i64, ptr %r734.p, align 8, !alias.scope !3, !noalias !4
  %fsh736 = lshr i64 %r734, 30
  %cond735 = trunc i64 %fsh736 to i1
  br i1 %cond735, label %L_8001efb7c, label %L_8001ef77c_ft
L_8001ef77c_ft:
  ; @pc 0x8001ef77c word 0xf9400bf6
  %r737.p = getelementptr inbounds i8, ptr %c, i64 256
  %r737 = load i64, ptr %r737.p, align 8, !alias.scope !3, !noalias !4
  %t738 = add i64 %r737, 16
  %gmp739 = inttoptr i64 %t738 to ptr
  %gml740 = load i64, ptr %gmp739, align 1, !alias.scope !4, !noalias !3
  %wp741 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml740, ptr %wp741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef780 word 0x2a1f03fc
  %t742 = or i32 0, 0
  %c743 = zext i32 %t742 to i64
  %wp744 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %c743, ptr %wp744, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef784 word 0x2a1f03fa
  %t745 = or i32 0, 0
  %c746 = zext i32 %t745 to i64
  %wp747 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef788
L_8001ef7a0_ft:
  ; @pc 0x8001ef7a0 word 0xf94006a8
  %r767.p = getelementptr inbounds i8, ptr %c, i64 168
  %r767 = load i64, ptr %r767.p, align 8, !alias.scope !3, !noalias !4
  %t768 = add i64 %r767, 8
  %gmp769 = inttoptr i64 %t768 to ptr
  %gml770 = load i64, ptr %gmp769, align 1, !alias.scope !4, !noalias !3
  %wp771 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml770, ptr %wp771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7a4 word 0xb9406109
  %r772.p = getelementptr inbounds i8, ptr %c, i64 64
  %r772 = load i64, ptr %r772.p, align 8, !alias.scope !3, !noalias !4
  %t773 = add i64 %r772, 96
  %gmp774 = inttoptr i64 %t773 to ptr
  %gml775 = load i32, ptr %gmp774, align 1, !alias.scope !4, !noalias !3
  %c776 = zext i32 %gml775 to i64
  %wp777 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c776, ptr %wp777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7a8 word 0x6b37213f
  %r778.p = getelementptr inbounds i8, ptr %c, i64 72
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %c779 = trunc i64 %r778 to i32
  %r780.p = getelementptr inbounds i8, ptr %c, i64 184
  %r780 = load i64, ptr %r780.p, align 8, !alias.scope !3, !noalias !4
  %c781 = trunc i64 %r780 to i16
  %c782 = zext i16 %c781 to i64
  %c783 = trunc i64 %c782 to i32
  %t784 = sub i32 %c779, %c783
  %fn785 = icmp slt i32 %t784, 0
  %fz786 = icmp eq i32 %t784, 0
  %fc787 = icmp uge i32 %c779, %c783
  %fx1788 = xor i32 %c779, %c783
  %fx2789 = xor i32 %c779, %t784
  %fva790 = and i32 %fx1788, %fx2789
  %fv791 = icmp slt i32 %fva790, 0
  %nz792 = zext i1 %fn785 to i64
  %zz793 = zext i1 %fz786 to i64
  %cz794 = zext i1 %fc787 to i64
  %vz795 = zext i1 %fv791 to i64
  %ns796 = shl i64 %nz792, 31
  %zs797 = shl i64 %zz793, 30
  %cs798 = shl i64 %cz794, 29
  %vs799 = shl i64 %vz795, 28
  %nzor800 = or i64 %ns796, %zs797
  %cvor801 = or i64 %cs798, %vs799
  %nzcv802 = or i64 %nzor800, %cvor801
  %wp803 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv802, ptr %wp803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7ac word 0x54002aad
  %r804.p = getelementptr inbounds i8, ptr %c, i64 272
  %r804 = load i64, ptr %r804.p, align 8, !alias.scope !3, !noalias !4
  %fsh806 = lshr i64 %r804, 30
  %ftr807 = trunc i64 %fsh806 to i1
  %fsh808 = lshr i64 %r804, 31
  %ftr809 = trunc i64 %fsh808 to i1
  %fsh810 = lshr i64 %r804, 28
  %ftr811 = trunc i64 %fsh810 to i1
  %fnz812 = xor i1 %ftr807, true
  %feq813 = icmp eq i1 %ftr809, %ftr811
  %fgt814 = and i1 %fnz812, %feq813
  %cond805 = xor i1 %fgt814, true
  br i1 %cond805, label %L_8001efd00, label %L_8001ef7b0_ft
L_8001ef7b0_ft:
  ; @pc 0x8001ef7b0 word 0xf9403509
  %r815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r815 = load i64, ptr %r815.p, align 8, !alias.scope !3, !noalias !4
  %t816 = add i64 %r815, 104
  %gmp817 = inttoptr i64 %t816 to ptr
  %gml818 = load i64, ptr %gmp817, align 1, !alias.scope !4, !noalias !3
  %wp819 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml818, ptr %wp819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7b4 word 0x92403eea
  %r820.p = getelementptr inbounds i8, ptr %c, i64 184
  %r820 = load i64, ptr %r820.p, align 8, !alias.scope !3, !noalias !4
  %t821 = and i64 %r820, 65535
  %wp822 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t821, ptr %wp822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7b8 word 0xf86a7937
  %r823.p = getelementptr inbounds i8, ptr %c, i64 72
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %r824.p = getelementptr inbounds i8, ptr %c, i64 80
  %r824 = load i64, ptr %r824.p, align 8, !alias.scope !3, !noalias !4
  %t825 = shl i64 %r824, 3
  %t826 = add i64 %r823, %t825
  %gmp827 = inttoptr i64 %t826 to ptr
  %gml828 = load i64, ptr %gmp827, align 1, !alias.scope !4, !noalias !3
  %wp829 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml828, ptr %wp829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7bc word 0xb4002c77
  %r830.p = getelementptr inbounds i8, ptr %c, i64 184
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %cmp831 = icmp eq i64 %r830, 0
  br i1 %cmp831, label %L_8001efd48, label %L_8001ef7c0_ft
L_8001ef7c0_ft:
  ; @pc 0x8001ef7c0 word 0xf94002e8
  %r832.p = getelementptr inbounds i8, ptr %c, i64 184
  %r832 = load i64, ptr %r832.p, align 8, !alias.scope !3, !noalias !4
  %gmp833 = inttoptr i64 %r832 to ptr
  %gml834 = load i64, ptr %gmp833, align 1, !alias.scope !4, !noalias !3
  %wp835 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml834, ptr %wp835, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7c4 word 0xf9404d08
  %r836.p = getelementptr inbounds i8, ptr %c, i64 64
  %r836 = load i64, ptr %r836.p, align 8, !alias.scope !3, !noalias !4
  %t837 = add i64 %r836, 152
  %gmp838 = inttoptr i64 %t837 to ptr
  %gml839 = load i64, ptr %gmp838, align 1, !alias.scope !4, !noalias !3
  %wp840 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml839, ptr %wp840, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7c8 word 0xeb19011f
  %r841.p = getelementptr inbounds i8, ptr %c, i64 64
  %r841 = load i64, ptr %r841.p, align 8, !alias.scope !3, !noalias !4
  %r842.p = getelementptr inbounds i8, ptr %c, i64 200
  %r842 = load i64, ptr %r842.p, align 8, !alias.scope !3, !noalias !4
  %t843 = sub i64 %r841, %r842
  %fn844 = icmp slt i64 %t843, 0
  %fz845 = icmp eq i64 %t843, 0
  %fc846 = icmp uge i64 %r841, %r842
  %fx1847 = xor i64 %r841, %r842
  %fx2848 = xor i64 %r841, %t843
  %fva849 = and i64 %fx1847, %fx2848
  %fv850 = icmp slt i64 %fva849, 0
  %nz851 = zext i1 %fn844 to i64
  %zz852 = zext i1 %fz845 to i64
  %cz853 = zext i1 %fc846 to i64
  %vz854 = zext i1 %fv850 to i64
  %ns855 = shl i64 %nz851, 31
  %zs856 = shl i64 %zz852, 30
  %cs857 = shl i64 %cz853, 29
  %vs858 = shl i64 %vz854, 28
  %nzor859 = or i64 %ns855, %zs856
  %cvor860 = or i64 %cs857, %vs858
  %nzcv861 = or i64 %nzor859, %cvor860
  %wp862 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv861, ptr %wp862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7cc word 0x54002ee1
  %r863.p = getelementptr inbounds i8, ptr %c, i64 272
  %r863 = load i64, ptr %r863.p, align 8, !alias.scope !3, !noalias !4
  %fsh865 = lshr i64 %r863, 30
  %ftr866 = trunc i64 %fsh865 to i1
  %cond864 = xor i1 %ftr866, true
  br i1 %cond864, label %L_8001efda8, label %L_8001ef7d0_ft
L_8001ef7d0_ft:
  ; @pc 0x8001ef7d0 word 0xf94006e8
  %r867.p = getelementptr inbounds i8, ptr %c, i64 184
  %r867 = load i64, ptr %r867.p, align 8, !alias.scope !3, !noalias !4
  %t868 = add i64 %r867, 8
  %gmp869 = inttoptr i64 %t868 to ptr
  %gml870 = load i64, ptr %gmp869, align 1, !alias.scope !4, !noalias !3
  %wp871 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml870, ptr %wp871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7d4 word 0x5280078b
  %c872 = zext i32 60 to i64
  %wp873 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c872, ptr %wp873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7d8 word 0x79403ae9
  %r874.p = getelementptr inbounds i8, ptr %c, i64 184
  %r874 = load i64, ptr %r874.p, align 8, !alias.scope !3, !noalias !4
  %t875 = add i64 %r874, 28
  %gmp876 = inttoptr i64 %t875 to ptr
  %gml877 = load i16, ptr %gmp876, align 1, !alias.scope !4, !noalias !3
  %c878 = zext i16 %gml877 to i64
  %wp879 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c878, ptr %wp879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7dc word 0xf9400908
  %r880.p = getelementptr inbounds i8, ptr %c, i64 64
  %r880 = load i64, ptr %r880.p, align 8, !alias.scope !3, !noalias !4
  %t881 = add i64 %r880, 16
  %gmp882 = inttoptr i64 %t881 to ptr
  %gml883 = load i64, ptr %gmp882, align 1, !alias.scope !4, !noalias !3
  %wp884 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml883, ptr %wp884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7e0 word 0xf940250a
  %r885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r885 = load i64, ptr %r885.p, align 8, !alias.scope !3, !noalias !4
  %t886 = add i64 %r885, 72
  %gmp887 = inttoptr i64 %t886 to ptr
  %gml888 = load i64, ptr %gmp887, align 1, !alias.scope !4, !noalias !3
  %wp889 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml888, ptr %wp889, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7e4 word 0xf9400908
  %r890.p = getelementptr inbounds i8, ptr %c, i64 64
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %t891 = add i64 %r890, 16
  %gmp892 = inttoptr i64 %t891 to ptr
  %gml893 = load i64, ptr %gmp892, align 1, !alias.scope !4, !noalias !3
  %wp894 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml893, ptr %wp894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7e8 word 0x9bab2929
  %r895.p = getelementptr inbounds i8, ptr %c, i64 72
  %r895 = load i64, ptr %r895.p, align 8, !alias.scope !3, !noalias !4
  %c896 = trunc i64 %r895 to i32
  %c897 = zext i32 %c896 to i64
  %r898.p = getelementptr inbounds i8, ptr %c, i64 88
  %r898 = load i64, ptr %r898.p, align 8, !alias.scope !3, !noalias !4
  %c899 = trunc i64 %r898 to i32
  %c900 = zext i32 %c899 to i64
  %t901 = mul i64 %c897, %c900
  %r902.p = getelementptr inbounds i8, ptr %c, i64 80
  %r902 = load i64, ptr %r902.p, align 8, !alias.scope !3, !noalias !4
  %t903 = add i64 %r902, %t901
  %wp904 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t903, ptr %wp904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7ec word 0xb9801529
  %r905.p = getelementptr inbounds i8, ptr %c, i64 72
  %r905 = load i64, ptr %r905.p, align 8, !alias.scope !3, !noalias !4
  %t906 = add i64 %r905, 20
  %gmp907 = inttoptr i64 %t906 to ptr
  %gml908 = load i32, ptr %gmp907, align 1, !alias.scope !4, !noalias !3
  %c909 = sext i32 %gml908 to i64
  %wp910 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c909, ptr %wp910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef7f0 word 0x8b090100
  %r911.p = getelementptr inbounds i8, ptr %c, i64 64
  %r911 = load i64, ptr %r911.p, align 8, !alias.scope !3, !noalias !4
  %r912.p = getelementptr inbounds i8, ptr %c, i64 72
  %r912 = load i64, ptr %r912.p, align 8, !alias.scope !3, !noalias !4
  %t913 = add i64 %r911, %r912
  %wp914 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t913, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef7f4
L_8001ef7f8_ft:
  ; @pc 0x8001ef7f8 word 0x13003e68
  %r918.p = getelementptr inbounds i8, ptr %c, i64 152
  %r918 = load i64, ptr %r918.p, align 8, !alias.scope !3, !noalias !4
  %c919 = trunc i64 %r918 to i32
  %t920 = lshr i32 %c919, 15
  %t921 = and i32 %t920, 1
  %t922 = sub i32 0, %t921
  %t923 = and i32 %t922, -65536
  %t924 = and i32 %c919, 65535
  %t925 = or i32 %t923, %t924
  %c926 = zext i32 %t925 to i64
  %wp927 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c926, ptr %wp927, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef7fc
L_8001ef82c_ft:
  ; @pc 0x8001ef82c word 0xf9400008
  %r999.p = getelementptr inbounds i8, ptr %c, i64 0
  %r999 = load i64, ptr %r999.p, align 8, !alias.scope !3, !noalias !4
  %gmp1000 = inttoptr i64 %r999 to ptr
  %gml1001 = load i64, ptr %gmp1000, align 1, !alias.scope !4, !noalias !3
  %wp1002 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1001, ptr %wp1002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef830 word 0x9001bb89
  %wp1003 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1003, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef834 word 0xf9400908
  %r1004.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1004 = load i64, ptr %r1004.p, align 8, !alias.scope !3, !noalias !4
  %t1005 = add i64 %r1004, 16
  %gmp1006 = inttoptr i64 %t1005 to ptr
  %gml1007 = load i64, ptr %gmp1006, align 1, !alias.scope !4, !noalias !3
  %wp1008 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1007, ptr %wp1008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef838 word 0xf9462929
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %t1010 = add i64 %r1009, 3152
  %gmp1011 = inttoptr i64 %t1010 to ptr
  %gml1012 = load i64, ptr %gmp1011, align 1, !alias.scope !4, !noalias !3
  %wp1013 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1012, ptr %wp1013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef83c word 0xeb09011f
  %r1014.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1014 = load i64, ptr %r1014.p, align 8, !alias.scope !3, !noalias !4
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %t1016 = sub i64 %r1014, %r1015
  %fn1017 = icmp slt i64 %t1016, 0
  %fz1018 = icmp eq i64 %t1016, 0
  %fc1019 = icmp uge i64 %r1014, %r1015
  %fx11020 = xor i64 %r1014, %r1015
  %fx21021 = xor i64 %r1014, %t1016
  %fva1022 = and i64 %fx11020, %fx21021
  %fv1023 = icmp slt i64 %fva1022, 0
  %nz1024 = zext i1 %fn1017 to i64
  %zz1025 = zext i1 %fz1018 to i64
  %cz1026 = zext i1 %fc1019 to i64
  %vz1027 = zext i1 %fv1023 to i64
  %ns1028 = shl i64 %nz1024, 31
  %zs1029 = shl i64 %zz1025, 30
  %cs1030 = shl i64 %cz1026, 29
  %vs1031 = shl i64 %vz1027, 28
  %nzor1032 = or i64 %ns1028, %zs1029
  %cvor1033 = or i64 %cs1030, %vs1031
  %nzcv1034 = or i64 %nzor1032, %cvor1033
  %wp1035 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1034, ptr %wp1035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef840 word 0x540019a1
  %r1036.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1036 = load i64, ptr %r1036.p, align 8, !alias.scope !3, !noalias !4
  %fsh1038 = lshr i64 %r1036, 30
  %ftr1039 = trunc i64 %fsh1038 to i1
  %cond1037 = xor i1 %ftr1039, true
  br i1 %cond1037, label %L_8001efb74, label %L_8001ef844_ft
L_8001ef844_ft:
  ; @pc 0x8001ef844 word 0xf9400400
  %r1040.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1040 = load i64, ptr %r1040.p, align 8, !alias.scope !3, !noalias !4
  %t1041 = add i64 %r1040, 8
  %gmp1042 = inttoptr i64 %t1041 to ptr
  %gml1043 = load i64, ptr %gmp1042, align 1, !alias.scope !4, !noalias !3
  %wp1044 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1043, ptr %wp1044, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef848
L_8001ef88c_ft:
  ; @pc 0x8001ef88c word 0xf9403508
  %r1166.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1166 = load i64, ptr %r1166.p, align 8, !alias.scope !3, !noalias !4
  %t1167 = add i64 %r1166, 104
  %gmp1168 = inttoptr i64 %t1167 to ptr
  %gml1169 = load i64, ptr %gmp1168, align 1, !alias.scope !4, !noalias !3
  %wp1170 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1169, ptr %wp1170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef890 word 0xf8775917
  %r1171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1171 = load i64, ptr %r1171.p, align 8, !alias.scope !3, !noalias !4
  %r1172.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1172 = load i64, ptr %r1172.p, align 8, !alias.scope !3, !noalias !4
  %c1173 = trunc i64 %r1172 to i32
  %c1174 = zext i32 %c1173 to i64
  %t1175 = shl i64 %c1174, 3
  %t1176 = add i64 %r1171, %t1175
  %gmp1177 = inttoptr i64 %t1176 to ptr
  %gml1178 = load i64, ptr %gmp1177, align 1, !alias.scope !4, !noalias !3
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1178, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef894
L_8001ef8a8_ft:
  ; @pc 0x8001ef8a8 word 0xf94002e8
  %r1196.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1196 = load i64, ptr %r1196.p, align 8, !alias.scope !3, !noalias !4
  %gmp1197 = inttoptr i64 %r1196 to ptr
  %gml1198 = load i64, ptr %gmp1197, align 1, !alias.scope !4, !noalias !3
  %wp1199 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1198, ptr %wp1199, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8ac word 0x9001bb81
  %wp1200 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8b0 word 0xaa1703e0
  %r1201.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1201 = load i64, ptr %r1201.p, align 8, !alias.scope !3, !noalias !4
  %t1202 = or i64 0, %r1201
  %wp1203 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1202, ptr %wp1203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8b4 word 0xf9400108
  %r1204.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1204 = load i64, ptr %r1204.p, align 8, !alias.scope !3, !noalias !4
  %gmp1205 = inttoptr i64 %r1204 to ptr
  %gml1206 = load i64, ptr %gmp1205, align 1, !alias.scope !4, !noalias !3
  %wp1207 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1206, ptr %wp1207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8b8 word 0xf9452821
  %r1208.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1208 = load i64, ptr %r1208.p, align 8, !alias.scope !3, !noalias !4
  %t1209 = add i64 %r1208, 2640
  %gmp1210 = inttoptr i64 %t1209 to ptr
  %gml1211 = load i64, ptr %gmp1210, align 1, !alias.scope !4, !noalias !3
  %wp1212 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1211, ptr %wp1212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8bc word 0xd63f0100
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %fp1214 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1213, ptr %fp1214, align 8, !alias.scope !3, !noalias !4
  %wp1215 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768128, ptr %wp1215, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ef8c0 word 0xb5000620
  %r1216.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1216 = load i64, ptr %r1216.p, align 8, !alias.scope !3, !noalias !4
  %cmp1217 = icmp ne i64 %r1216, 0
  br i1 %cmp1217, label %L_8001ef984, label %L_8001ef8c4
L_8001ef8d8_ft:
  ; @pc 0x8001ef8d8 word 0xf94002e8
  %r1234.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1234 = load i64, ptr %r1234.p, align 8, !alias.scope !3, !noalias !4
  %gmp1235 = inttoptr i64 %r1234 to ptr
  %gml1236 = load i64, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  %wp1237 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1236, ptr %wp1237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8dc word 0x9001bb81
  %wp1238 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1238, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8e0 word 0xaa1703e0
  %r1239.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1239 = load i64, ptr %r1239.p, align 8, !alias.scope !3, !noalias !4
  %t1240 = or i64 0, %r1239
  %wp1241 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1240, ptr %wp1241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8e4 word 0xf9400108
  %r1242.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1242 = load i64, ptr %r1242.p, align 8, !alias.scope !3, !noalias !4
  %gmp1243 = inttoptr i64 %r1242 to ptr
  %gml1244 = load i64, ptr %gmp1243, align 1, !alias.scope !4, !noalias !3
  %wp1245 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1244, ptr %wp1245, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8e8 word 0xf9453021
  %r1246.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1246 = load i64, ptr %r1246.p, align 8, !alias.scope !3, !noalias !4
  %t1247 = add i64 %r1246, 2656
  %gmp1248 = inttoptr i64 %t1247 to ptr
  %gml1249 = load i64, ptr %gmp1248, align 1, !alias.scope !4, !noalias !3
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef8ec word 0xd63f0100
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %fp1252 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1251, ptr %fp1252, align 8, !alias.scope !3, !noalias !4
  %wp1253 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768176, ptr %wp1253, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ef8f0 word 0xb50004a0
  %r1254.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1254 = load i64, ptr %r1254.p, align 8, !alias.scope !3, !noalias !4
  %cmp1255 = icmp ne i64 %r1254, 0
  br i1 %cmp1255, label %L_8001ef984, label %L_8001ef8f4
L_8001ef908_ft:
  ; @pc 0x8001ef908 word 0xf94002e8
  %r1272.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1272 = load i64, ptr %r1272.p, align 8, !alias.scope !3, !noalias !4
  %gmp1273 = inttoptr i64 %r1272 to ptr
  %gml1274 = load i64, ptr %gmp1273, align 1, !alias.scope !4, !noalias !3
  %wp1275 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1274, ptr %wp1275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef90c word 0x9001bb81
  %wp1276 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef910 word 0xaa1703e0
  %r1277.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1277 = load i64, ptr %r1277.p, align 8, !alias.scope !3, !noalias !4
  %t1278 = or i64 0, %r1277
  %wp1279 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1278, ptr %wp1279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef914 word 0xf9400108
  %r1280.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1280 = load i64, ptr %r1280.p, align 8, !alias.scope !3, !noalias !4
  %gmp1281 = inttoptr i64 %r1280 to ptr
  %gml1282 = load i64, ptr %gmp1281, align 1, !alias.scope !4, !noalias !3
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef918 word 0xf9453821
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %t1285 = add i64 %r1284, 2672
  %gmp1286 = inttoptr i64 %t1285 to ptr
  %gml1287 = load i64, ptr %gmp1286, align 1, !alias.scope !4, !noalias !3
  %wp1288 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1287, ptr %wp1288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef91c word 0xd63f0100
  %r1289.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1289 = load i64, ptr %r1289.p, align 8, !alias.scope !3, !noalias !4
  %fp1290 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1289, ptr %fp1290, align 8, !alias.scope !3, !noalias !4
  %wp1291 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768224, ptr %wp1291, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ef920 word 0xb5000320
  %r1292.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1292 = load i64, ptr %r1292.p, align 8, !alias.scope !3, !noalias !4
  %cmp1293 = icmp ne i64 %r1292, 0
  br i1 %cmp1293, label %L_8001ef984, label %L_8001ef924
L_8001ef938_ft:
  ; @pc 0x8001ef938 word 0xf94002e8
  %r1310.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1310 = load i64, ptr %r1310.p, align 8, !alias.scope !3, !noalias !4
  %gmp1311 = inttoptr i64 %r1310 to ptr
  %gml1312 = load i64, ptr %gmp1311, align 1, !alias.scope !4, !noalias !3
  %wp1313 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1312, ptr %wp1313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef93c word 0x9001bb81
  %wp1314 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef940 word 0xaa1703e0
  %r1315.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1315 = load i64, ptr %r1315.p, align 8, !alias.scope !3, !noalias !4
  %t1316 = or i64 0, %r1315
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1316, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef944 word 0xf9400108
  %r1318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1318 = load i64, ptr %r1318.p, align 8, !alias.scope !3, !noalias !4
  %gmp1319 = inttoptr i64 %r1318 to ptr
  %gml1320 = load i64, ptr %gmp1319, align 1, !alias.scope !4, !noalias !3
  %wp1321 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1320, ptr %wp1321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef948 word 0xf9454021
  %r1322.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1322 = load i64, ptr %r1322.p, align 8, !alias.scope !3, !noalias !4
  %t1323 = add i64 %r1322, 2688
  %gmp1324 = inttoptr i64 %t1323 to ptr
  %gml1325 = load i64, ptr %gmp1324, align 1, !alias.scope !4, !noalias !3
  %wp1326 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1325, ptr %wp1326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef94c word 0xd63f0100
  %r1327.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1327 = load i64, ptr %r1327.p, align 8, !alias.scope !3, !noalias !4
  %fp1328 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1327, ptr %fp1328, align 8, !alias.scope !3, !noalias !4
  %wp1329 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768272, ptr %wp1329, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ef950 word 0xb50001a0
  %r1330.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1330 = load i64, ptr %r1330.p, align 8, !alias.scope !3, !noalias !4
  %cmp1331 = icmp ne i64 %r1330, 0
  br i1 %cmp1331, label %L_8001ef984, label %L_8001ef954
L_8001ef968_ft:
  ; @pc 0x8001ef968 word 0xf94002e8
  %r1348.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1348 = load i64, ptr %r1348.p, align 8, !alias.scope !3, !noalias !4
  %gmp1349 = inttoptr i64 %r1348 to ptr
  %gml1350 = load i64, ptr %gmp1349, align 1, !alias.scope !4, !noalias !3
  %wp1351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1350, ptr %wp1351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef96c word 0x9001bb81
  %wp1352 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef970 word 0xaa1703e0
  %r1353.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1353 = load i64, ptr %r1353.p, align 8, !alias.scope !3, !noalias !4
  %t1354 = or i64 0, %r1353
  %wp1355 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1354, ptr %wp1355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef974 word 0xf9400108
  %r1356.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1356 = load i64, ptr %r1356.p, align 8, !alias.scope !3, !noalias !4
  %gmp1357 = inttoptr i64 %r1356 to ptr
  %gml1358 = load i64, ptr %gmp1357, align 1, !alias.scope !4, !noalias !3
  %wp1359 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1358, ptr %wp1359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef978 word 0xf9454821
  %r1360.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1360 = load i64, ptr %r1360.p, align 8, !alias.scope !3, !noalias !4
  %t1361 = add i64 %r1360, 2704
  %gmp1362 = inttoptr i64 %t1361 to ptr
  %gml1363 = load i64, ptr %gmp1362, align 1, !alias.scope !4, !noalias !3
  %wp1364 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1363, ptr %wp1364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef97c word 0xd63f0100
  %r1365.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1365 = load i64, ptr %r1365.p, align 8, !alias.scope !3, !noalias !4
  %fp1366 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1365, ptr %fp1366, align 8, !alias.scope !3, !noalias !4
  %wp1367 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768320, ptr %wp1367, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001ef980 word 0xb4ffeea0
  %r1368.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1368 = load i64, ptr %r1368.p, align 8, !alias.scope !3, !noalias !4
  %cmp1369 = icmp eq i64 %r1368, 0
  br i1 %cmp1369, label %L_8001ef754, label %L_8001ef984
L_8001ef998_ft:
  ; @pc 0x8001ef998 word 0x52800308
  %c1435 = zext i32 24 to i64
  %wp1436 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1435, ptr %wp1436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef99c word 0x2a1f03f3
  %t1437 = or i32 0, 0
  %c1438 = zext i32 %t1437 to i64
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %c1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9a0 word 0x9b087368
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %t1442 = mul i64 %r1441, %r1440
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 224
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %t1444 = add i64 %r1443, %t1442
  %wp1445 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1444, ptr %wp1445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9a4 word 0x91003116
  %r1446.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1446 = load i64, ptr %r1446.p, align 8, !alias.scope !3, !noalias !4
  %t1447 = add i64 %r1446, 12
  %wp1448 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1447, ptr %wp1448, align 8, !alias.scope !3, !noalias !4
  br label %L_8001ef9a8
L_8001ef9d4_ft:
  ; @pc 0x8001ef9d4 word 0xb27f0108
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %t1517 = or i64 %r1516, 2
  %wp1518 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1517, ptr %wp1518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9d8 word 0xf90002c8
  %r1519.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1519 = load i64, ptr %r1519.p, align 8, !alias.scope !3, !noalias !4
  %r1520.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1520 = load i64, ptr %r1520.p, align 8, !alias.scope !3, !noalias !4
  %gmp1521 = inttoptr i64 %r1519 to ptr
  store i64 %r1520, ptr %gmp1521, align 1, !alias.scope !4, !noalias !3
  br label %L_8001ef9dc
L_8001ef9ec_ft:
  ; @pc 0x8001ef9ec word 0xb9400fe9
  %r1578.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1578 = load i64, ptr %r1578.p, align 8, !alias.scope !3, !noalias !4
  %t1579 = add i64 %r1578, 12
  %gmp1580 = inttoptr i64 %t1579 to ptr
  %gml1581 = load i32, ptr %gmp1580, align 1, !alias.scope !4, !noalias !3
  %c1582 = zext i32 %gml1581 to i64
  %wp1583 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1582, ptr %wp1583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9f0 word 0x370010c9
  %r1584.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1584 = load i64, ptr %r1584.p, align 8, !alias.scope !3, !noalias !4
  %t1585 = and i64 %r1584, 1
  %cmp1586 = icmp ne i64 %t1585, 0
  br i1 %cmp1586, label %L_8001efc08, label %L_8001ef9f4_ft
L_8001ef9f4_ft:
  ; @pc 0x8001ef9f4 word 0xf9400aa0
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %t1588 = add i64 %r1587, 16
  %gmp1589 = inttoptr i64 %t1588 to ptr
  %gml1590 = load i64, ptr %gmp1589, align 1, !alias.scope !4, !noalias !3
  %wp1591 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1590, ptr %wp1591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9f8 word 0x927ef514
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %t1593 = and i64 %r1592, -4
  %wp1594 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t1593, ptr %wp1594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001ef9fc word 0xf9400008
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %gmp1596 = inttoptr i64 %r1595 to ptr
  %gml1597 = load i64, ptr %gmp1596, align 1, !alias.scope !4, !noalias !3
  %wp1598 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1597, ptr %wp1598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa00 word 0xf9402d08
  %r1599.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1599 = load i64, ptr %r1599.p, align 8, !alias.scope !3, !noalias !4
  %t1600 = add i64 %r1599, 88
  %gmp1601 = inttoptr i64 %t1600 to ptr
  %gml1602 = load i64, ptr %gmp1601, align 1, !alias.scope !4, !noalias !3
  %wp1603 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1602, ptr %wp1603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa04 word 0xd63f0100
  %r1604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1604 = load i64, ptr %r1604.p, align 8, !alias.scope !3, !noalias !4
  %fp1605 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1604, ptr %fp1605, align 8, !alias.scope !3, !noalias !4
  %wp1606 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768456, ptr %wp1606, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efa08 word 0xf9400813
  %r1607.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1607 = load i64, ptr %r1607.p, align 8, !alias.scope !3, !noalias !4
  %t1608 = add i64 %r1607, 16
  %gmp1609 = inttoptr i64 %t1608 to ptr
  %gml1610 = load i64, ptr %gmp1609, align 1, !alias.scope !4, !noalias !3
  %wp1611 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1610, ptr %wp1611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa0c word 0xb4000073
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %cmp1613 = icmp eq i64 %r1612, 0
  br i1 %cmp1613, label %L_8001efa18, label %L_8001efa10_ft
L_8001efa10_ft:
  ; @pc 0x8001efa10 word 0xf9400268
  %r1614.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1614 = load i64, ptr %r1614.p, align 8, !alias.scope !3, !noalias !4
  %gmp1615 = inttoptr i64 %r1614 to ptr
  %gml1616 = load i64, ptr %gmp1615, align 1, !alias.scope !4, !noalias !3
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa14 word 0xf9000808
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %t1619 = add i64 %r1618, 16
  %r1620.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1620 = load i64, ptr %r1620.p, align 8, !alias.scope !3, !noalias !4
  %gmp1621 = inttoptr i64 %t1619 to ptr
  store i64 %r1620, ptr %gmp1621, align 1, !alias.scope !4, !noalias !3
  br label %L_8001efa18
L_8001efa44_ft:
  ; @pc 0x8001efa44 word 0xf9400409
  %r1697.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1697 = load i64, ptr %r1697.p, align 8, !alias.scope !3, !noalias !4
  %t1698 = add i64 %r1697, 8
  %gmp1699 = inttoptr i64 %t1698 to ptr
  %gml1700 = load i64, ptr %gmp1699, align 1, !alias.scope !4, !noalias !3
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1700, ptr %wp1701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa48 word 0xf8287933
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %r1703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1703 = load i64, ptr %r1703.p, align 8, !alias.scope !3, !noalias !4
  %t1704 = shl i64 %r1703, 3
  %t1705 = add i64 %r1702, %t1704
  %r1706.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1706 = load i64, ptr %r1706.p, align 8, !alias.scope !3, !noalias !4
  %gmp1707 = inttoptr i64 %t1705 to ptr
  store i64 %r1706, ptr %gmp1707, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efa4c word 0xb9400008
  %r1708.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1708 = load i64, ptr %r1708.p, align 8, !alias.scope !3, !noalias !4
  %gmp1709 = inttoptr i64 %r1708 to ptr
  %gml1710 = load i32, ptr %gmp1709, align 1, !alias.scope !4, !noalias !3
  %c1711 = zext i32 %gml1710 to i64
  %wp1712 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1711, ptr %wp1712, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa50 word 0x11000508
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %c1714 = trunc i64 %r1713 to i32
  %t1715 = add i32 %c1714, 1
  %c1716 = zext i32 %t1715 to i64
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1716, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa54 word 0xb9000008
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %r1719.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1719 = load i64, ptr %r1719.p, align 8, !alias.scope !3, !noalias !4
  %c1720 = trunc i64 %r1719 to i32
  %gmp1721 = inttoptr i64 %r1718 to ptr
  store i32 %c1720, ptr %gmp1721, align 1, !alias.scope !4, !noalias !3
  br label %L_8001efa58
L_8001efa84_ft:
  ; @pc 0x8001efa84 word 0xf9400aa0
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %t1772 = add i64 %r1771, 16
  %gmp1773 = inttoptr i64 %t1772 to ptr
  %gml1774 = load i64, ptr %gmp1773, align 1, !alias.scope !4, !noalias !3
  %wp1775 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1774, ptr %wp1775, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa88 word 0xf9400008
  %r1776.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1776 = load i64, ptr %r1776.p, align 8, !alias.scope !3, !noalias !4
  %gmp1777 = inttoptr i64 %r1776 to ptr
  %gml1778 = load i64, ptr %gmp1777, align 1, !alias.scope !4, !noalias !3
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1778, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa8c word 0xf9402908
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %t1781 = add i64 %r1780, 80
  %gmp1782 = inttoptr i64 %t1781 to ptr
  %gml1783 = load i64, ptr %gmp1782, align 1, !alias.scope !4, !noalias !3
  %wp1784 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1783, ptr %wp1784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa90 word 0xd63f0100
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %fp1786 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1785, ptr %fp1786, align 8, !alias.scope !3, !noalias !4
  %wp1787 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361768596, ptr %wp1787, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001efa94 word 0x29422809
  %r1788.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1788 = load i64, ptr %r1788.p, align 8, !alias.scope !3, !noalias !4
  %t1789 = add i64 %r1788, 16
  %t1790 = add i64 %t1789, 4
  %gmp1791 = inttoptr i64 %t1789 to ptr
  %gml1792 = load i32, ptr %gmp1791, align 1, !alias.scope !4, !noalias !3
  %c1793 = zext i32 %gml1792 to i64
  %gmp1794 = inttoptr i64 %t1790 to ptr
  %gml1795 = load i32, ptr %gmp1794, align 1, !alias.scope !4, !noalias !3
  %c1796 = zext i32 %gml1795 to i64
  %wp1797 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1793, ptr %wp1797, align 8, !alias.scope !3, !noalias !4
  %wp1798 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1796, ptr %wp1798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa98 word 0x51000928
  %r1799.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1799 = load i64, ptr %r1799.p, align 8, !alias.scope !3, !noalias !4
  %c1800 = trunc i64 %r1799 to i32
  %t1801 = sub i32 %c1800, 2
  %c1802 = zext i32 %t1801 to i64
  %wp1803 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1802, ptr %wp1803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efa9c word 0x6b0a011f
  %r1804.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1804 = load i64, ptr %r1804.p, align 8, !alias.scope !3, !noalias !4
  %c1805 = trunc i64 %r1804 to i32
  %r1806.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1806 = load i64, ptr %r1806.p, align 8, !alias.scope !3, !noalias !4
  %c1807 = trunc i64 %r1806 to i32
  %t1808 = sub i32 %c1805, %c1807
  %fn1809 = icmp slt i32 %t1808, 0
  %fz1810 = icmp eq i32 %t1808, 0
  %fc1811 = icmp uge i32 %c1805, %c1807
  %fx11812 = xor i32 %c1805, %c1807
  %fx21813 = xor i32 %c1805, %t1808
  %fva1814 = and i32 %fx11812, %fx21813
  %fv1815 = icmp slt i32 %fva1814, 0
  %nz1816 = zext i1 %fn1809 to i64
  %zz1817 = zext i1 %fz1810 to i64
  %cz1818 = zext i1 %fc1811 to i64
  %vz1819 = zext i1 %fv1815 to i64
  %ns1820 = shl i64 %nz1816, 31
  %zs1821 = shl i64 %zz1817, 30
  %cs1822 = shl i64 %cz1818, 29
  %vs1823 = shl i64 %vz1819, 28
  %nzor1824 = or i64 %ns1820, %zs1821
  %cvor1825 = or i64 %cs1822, %vs1823
  %nzcv1826 = or i64 %nzor1824, %cvor1825
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaa0 word 0x54002803
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %fsh1830 = lshr i64 %r1828, 29
  %ftr1831 = trunc i64 %fsh1830 to i1
  %cond1829 = xor i1 %ftr1831, true
  br i1 %cond1829, label %L_8001effa0, label %L_8001efaa4_ft
L_8001efaa4_ft:
  ; @pc 0x8001efaa4 word 0x51000d29
  %r1832.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1832 = load i64, ptr %r1832.p, align 8, !alias.scope !3, !noalias !4
  %c1833 = trunc i64 %r1832 to i32
  %t1834 = sub i32 %c1833, 3
  %c1835 = zext i32 %t1834 to i64
  %wp1836 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1835, ptr %wp1836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaa8 word 0xb9001009
  %r1837.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1837 = load i64, ptr %r1837.p, align 8, !alias.scope !3, !noalias !4
  %t1838 = add i64 %r1837, 16
  %r1839.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1839 = load i64, ptr %r1839.p, align 8, !alias.scope !3, !noalias !4
  %c1840 = trunc i64 %r1839 to i32
  %gmp1841 = inttoptr i64 %t1838 to ptr
  store i32 %c1840, ptr %gmp1841, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efaac word 0xf9400009
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %gmp1843 = inttoptr i64 %r1842 to ptr
  %gml1844 = load i64, ptr %gmp1843, align 1, !alias.scope !4, !noalias !3
  %wp1845 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1844, ptr %wp1845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efab0 word 0x8b284928
  %r1846.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1846 = load i64, ptr %r1846.p, align 8, !alias.scope !3, !noalias !4
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %c1848 = trunc i64 %r1847 to i32
  %c1849 = zext i32 %c1848 to i64
  %t1850 = shl i64 %c1849, 2
  %t1851 = add i64 %r1846, %t1850
  %wp1852 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1851, ptr %wp1852, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efab4
L_8001efae4_ft:
  ; @pc 0x8001efae4 word 0xf94006a8
  %r1962.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1962 = load i64, ptr %r1962.p, align 8, !alias.scope !3, !noalias !4
  %t1963 = add i64 %r1962, 8
  %gmp1964 = inttoptr i64 %t1963 to ptr
  %gml1965 = load i64, ptr %gmp1964, align 1, !alias.scope !4, !noalias !3
  %wp1966 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1965, ptr %wp1966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efae8 word 0x9001bb89
  %wp1967 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1967, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaec word 0x12003f41
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %c1969 = trunc i64 %r1968 to i32
  %t1970 = and i32 %c1969, 65535
  %c1971 = zext i32 %t1970 to i64
  %wp1972 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1971, ptr %wp1972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaf0 word 0xf9401100
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %t1974 = add i64 %r1973, 32
  %gmp1975 = inttoptr i64 %t1974 to ptr
  %gml1976 = load i64, ptr %gmp1975, align 1, !alias.scope !4, !noalias !3
  %wp1977 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1976, ptr %wp1977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaf4 word 0xf9400008
  %r1978.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1978 = load i64, ptr %r1978.p, align 8, !alias.scope !3, !noalias !4
  %gmp1979 = inttoptr i64 %r1978 to ptr
  %gml1980 = load i64, ptr %gmp1979, align 1, !alias.scope !4, !noalias !3
  %wp1981 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1980, ptr %wp1981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efaf8 word 0xf9409108
  %r1982.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1982 = load i64, ptr %r1982.p, align 8, !alias.scope !3, !noalias !4
  %t1983 = add i64 %r1982, 288
  %gmp1984 = inttoptr i64 %t1983 to ptr
  %gml1985 = load i64, ptr %gmp1984, align 1, !alias.scope !4, !noalias !3
  %wp1986 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1985, ptr %wp1986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efafc word 0xf9448d29
  %r1987.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1987 = load i64, ptr %r1987.p, align 8, !alias.scope !3, !noalias !4
  %t1988 = add i64 %r1987, 2328
  %gmp1989 = inttoptr i64 %t1988 to ptr
  %gml1990 = load i64, ptr %gmp1989, align 1, !alias.scope !4, !noalias !3
  %wp1991 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1990, ptr %wp1991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb00 word 0xeb09011f
  %r1992.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1992 = load i64, ptr %r1992.p, align 8, !alias.scope !3, !noalias !4
  %r1993.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1993 = load i64, ptr %r1993.p, align 8, !alias.scope !3, !noalias !4
  %t1994 = sub i64 %r1992, %r1993
  %fn1995 = icmp slt i64 %t1994, 0
  %fz1996 = icmp eq i64 %t1994, 0
  %fc1997 = icmp uge i64 %r1992, %r1993
  %fx11998 = xor i64 %r1992, %r1993
  %fx21999 = xor i64 %r1992, %t1994
  %fva2000 = and i64 %fx11998, %fx21999
  %fv2001 = icmp slt i64 %fva2000, 0
  %nz2002 = zext i1 %fn1995 to i64
  %zz2003 = zext i1 %fz1996 to i64
  %cz2004 = zext i1 %fc1997 to i64
  %vz2005 = zext i1 %fv2001 to i64
  %ns2006 = shl i64 %nz2002, 31
  %zs2007 = shl i64 %zz2003, 30
  %cs2008 = shl i64 %cz2004, 29
  %vs2009 = shl i64 %vz2005, 28
  %nzor2010 = or i64 %ns2006, %zs2007
  %cvor2011 = or i64 %cs2008, %vs2009
  %nzcv2012 = or i64 %nzor2010, %cvor2011
  %wp2013 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2012, ptr %wp2013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb04 word 0x540020a1
  %r2014.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2014 = load i64, ptr %r2014.p, align 8, !alias.scope !3, !noalias !4
  %fsh2016 = lshr i64 %r2014, 30
  %ftr2017 = trunc i64 %fsh2016 to i1
  %cond2015 = xor i1 %ftr2017, true
  br i1 %cond2015, label %L_8001eff18, label %L_8001efb08
L_8001efb10_ft:
  ; @pc 0x8001efb10 word 0xb940b00a
  %r2025.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2025 = load i64, ptr %r2025.p, align 8, !alias.scope !3, !noalias !4
  %t2026 = add i64 %r2025, 176
  %gmp2027 = inttoptr i64 %t2026 to ptr
  %gml2028 = load i32, ptr %gmp2027, align 1, !alias.scope !4, !noalias !3
  %c2029 = zext i32 %gml2028 to i64
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2029, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb14 word 0x6b01015f
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %c2032 = trunc i64 %r2031 to i32
  %r2033.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2033 = load i64, ptr %r2033.p, align 8, !alias.scope !3, !noalias !4
  %c2034 = trunc i64 %r2033 to i32
  %t2035 = sub i32 %c2032, %c2034
  %fn2036 = icmp slt i32 %t2035, 0
  %fz2037 = icmp eq i32 %t2035, 0
  %fc2038 = icmp uge i32 %c2032, %c2034
  %fx12039 = xor i32 %c2032, %c2034
  %fx22040 = xor i32 %c2032, %t2035
  %fva2041 = and i32 %fx12039, %fx22040
  %fv2042 = icmp slt i32 %fva2041, 0
  %nz2043 = zext i1 %fn2036 to i64
  %zz2044 = zext i1 %fz2037 to i64
  %cz2045 = zext i1 %fc2038 to i64
  %vz2046 = zext i1 %fv2042 to i64
  %ns2047 = shl i64 %nz2043, 31
  %zs2048 = shl i64 %zz2044, 30
  %cs2049 = shl i64 %cz2045, 29
  %vs2050 = shl i64 %vz2046, 28
  %nzor2051 = or i64 %ns2047, %zs2048
  %cvor2052 = or i64 %cs2049, %vs2050
  %nzcv2053 = or i64 %nzor2051, %cvor2052
  %wp2054 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2053, ptr %wp2054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb18 word 0x1a9f8029
  %r2055.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2055 = load i64, ptr %r2055.p, align 8, !alias.scope !3, !noalias !4
  %c2056 = trunc i64 %r2055 to i32
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %fsh2059 = lshr i64 %r2057, 29
  %ftr2060 = trunc i64 %fsh2059 to i1
  %fsh2061 = lshr i64 %r2057, 30
  %ftr2062 = trunc i64 %fsh2061 to i1
  %fnz2063 = xor i1 %ftr2062, true
  %cond2058 = and i1 %ftr2060, %fnz2063
  %sel2064 = select i1 %cond2058, i32 %c2056, i32 0
  %c2065 = zext i32 %sel2064 to i64
  %wp2066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2065, ptr %wp2066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb1c word 0xd37c7d2b
  %r2067.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2067 = load i64, ptr %r2067.p, align 8, !alias.scope !3, !noalias !4
  %ror2068 = call i64 @llvm.fshr.i64(i64 %r2067, i64 %r2067, i64 60)
  %t2069 = and i64 %ror2068, 68719476720
  %wp2070 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2069, ptr %wp2070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb20 word 0x38eb690b
  %r2071.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2071 = load i64, ptr %r2071.p, align 8, !alias.scope !3, !noalias !4
  %r2072.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2072 = load i64, ptr %r2072.p, align 8, !alias.scope !3, !noalias !4
  %t2073 = add i64 %r2071, %r2072
  %gmp2074 = inttoptr i64 %t2073 to ptr
  %gml2075 = load i8, ptr %gmp2074, align 1, !alias.scope !4, !noalias !3
  %c2076 = sext i8 %gml2075 to i32
  %c2077 = zext i32 %c2076 to i64
  %wp2078 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2077, ptr %wp2078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb24 word 0x36f81feb
  %r2079.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2079 = load i64, ptr %r2079.p, align 8, !alias.scope !3, !noalias !4
  %t2080 = and i64 %r2079, 2147483648
  %cmp2081 = icmp eq i64 %t2080, 0
  br i1 %cmp2081, label %L_8001eff20, label %L_8001efb28_ft
L_8001efb28_ft:
  ; @pc 0x8001efb28 word 0x6b01015f
  %r2082.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2082 = load i64, ptr %r2082.p, align 8, !alias.scope !3, !noalias !4
  %c2083 = trunc i64 %r2082 to i32
  %r2084.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2084 = load i64, ptr %r2084.p, align 8, !alias.scope !3, !noalias !4
  %c2085 = trunc i64 %r2084 to i32
  %t2086 = sub i32 %c2083, %c2085
  %fn2087 = icmp slt i32 %t2086, 0
  %fz2088 = icmp eq i32 %t2086, 0
  %fc2089 = icmp uge i32 %c2083, %c2085
  %fx12090 = xor i32 %c2083, %c2085
  %fx22091 = xor i32 %c2083, %t2086
  %fva2092 = and i32 %fx12090, %fx22091
  %fv2093 = icmp slt i32 %fva2092, 0
  %nz2094 = zext i1 %fn2087 to i64
  %zz2095 = zext i1 %fz2088 to i64
  %cz2096 = zext i1 %fc2089 to i64
  %vz2097 = zext i1 %fv2093 to i64
  %ns2098 = shl i64 %nz2094, 31
  %zs2099 = shl i64 %zz2095, 30
  %cs2100 = shl i64 %cz2096, 29
  %vs2101 = shl i64 %vz2097, 28
  %nzor2102 = or i64 %ns2098, %zs2099
  %cvor2103 = or i64 %cs2100, %vs2101
  %nzcv2104 = or i64 %nzor2102, %cvor2103
  %wp2105 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2104, ptr %wp2105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb2c word 0x540020c9
  %r2106.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2106 = load i64, ptr %r2106.p, align 8, !alias.scope !3, !noalias !4
  %fsh2108 = lshr i64 %r2106, 29
  %ftr2109 = trunc i64 %fsh2108 to i1
  %fsh2110 = lshr i64 %r2106, 30
  %ftr2111 = trunc i64 %fsh2110 to i1
  %fnz2112 = xor i1 %ftr2111, true
  %fhi2113 = and i1 %ftr2109, %fnz2112
  %cond2107 = xor i1 %fhi2113, true
  br i1 %cond2107, label %L_8001eff44, label %L_8001efb30_ft
L_8001efb30_ft:
  ; @pc 0x8001efb30 word 0x8b21510a
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %r2115.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2115 = load i64, ptr %r2115.p, align 8, !alias.scope !3, !noalias !4
  %c2116 = trunc i64 %r2115 to i32
  %c2117 = zext i32 %c2116 to i64
  %t2118 = shl i64 %c2117, 4
  %t2119 = add i64 %r2114, %t2118
  %wp2120 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2119, ptr %wp2120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb34 word 0x79c0054a
  %r2121.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2121 = load i64, ptr %r2121.p, align 8, !alias.scope !3, !noalias !4
  %t2122 = add i64 %r2121, 2
  %gmp2123 = inttoptr i64 %t2122 to ptr
  %gml2124 = load i16, ptr %gmp2123, align 1, !alias.scope !4, !noalias !3
  %c2125 = sext i16 %gml2124 to i32
  %c2126 = zext i32 %c2125 to i64
  %wp2127 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2126, ptr %wp2127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb38 word 0x36f820ea
  %r2128.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2128 = load i64, ptr %r2128.p, align 8, !alias.scope !3, !noalias !4
  %t2129 = and i64 %r2128, 2147483648
  %cmp2130 = icmp eq i64 %t2129, 0
  br i1 %cmp2130, label %L_8001eff54, label %L_8001efb3c_ft
L_8001efb3c_ft:
  ; @pc 0x8001efb3c word 0x2a0103e9
  %r2131.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2131 = load i64, ptr %r2131.p, align 8, !alias.scope !3, !noalias !4
  %c2132 = trunc i64 %r2131 to i32
  %t2133 = or i32 0, %c2132
  %c2134 = zext i32 %t2133 to i64
  %wp2135 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2134, ptr %wp2135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb40 word 0x8b091108
  %r2136.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2136 = load i64, ptr %r2136.p, align 8, !alias.scope !3, !noalias !4
  %r2137.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2137 = load i64, ptr %r2137.p, align 8, !alias.scope !3, !noalias !4
  %t2138 = shl i64 %r2137, 4
  %t2139 = add i64 %r2136, %t2138
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2139, ptr %wp2140, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efb44
L_8001efb5c_ft:
  ; @pc 0x8001efb5c word 0x52800189
  %c2191 = zext i32 12 to i64
  %wp2192 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2191, ptr %wp2192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb60 word 0x2a1f03f7
  %t2193 = or i32 0, 0
  %c2194 = zext i32 %t2193 to i64
  %wp2195 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2194, ptr %wp2195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efb64 word 0x9ba92028
  %r2196.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2196 = load i64, ptr %r2196.p, align 8, !alias.scope !3, !noalias !4
  %c2197 = trunc i64 %r2196 to i32
  %c2198 = zext i32 %c2197 to i64
  %r2199.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2199 = load i64, ptr %r2199.p, align 8, !alias.scope !3, !noalias !4
  %c2200 = trunc i64 %r2199 to i32
  %c2201 = zext i32 %c2200 to i64
  %t2202 = mul i64 %c2198, %c2201
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %t2204 = add i64 %r2203, %t2202
  %wp2205 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2204, ptr %wp2205, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efb68
L_8001efba8_ft:
  ; @pc 0x8001efba8 word 0x12003f49
  %r2292.p = getelementptr inbounds i8, ptr %c, i64 208
  %r2292 = load i64, ptr %r2292.p, align 8, !alias.scope !3, !noalias !4
  %c2293 = trunc i64 %r2292 to i32
  %t2294 = and i32 %c2293, 65535
  %c2295 = zext i32 %t2294 to i64
  %wp2296 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2295, ptr %wp2296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbac word 0x5280038a
  %c2297 = zext i32 28 to i64
  %wp2298 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2297, ptr %wp2298, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbb0 word 0x9baa2128
  %r2299.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2299 = load i64, ptr %r2299.p, align 8, !alias.scope !3, !noalias !4
  %c2300 = trunc i64 %r2299 to i32
  %c2301 = zext i32 %c2300 to i64
  %r2302.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2302 = load i64, ptr %r2302.p, align 8, !alias.scope !3, !noalias !4
  %c2303 = trunc i64 %r2302 to i32
  %c2304 = zext i32 %c2303 to i64
  %t2305 = mul i64 %c2301, %c2304
  %r2306.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2306 = load i64, ptr %r2306.p, align 8, !alias.scope !3, !noalias !4
  %t2307 = add i64 %r2306, %t2305
  %wp2308 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2307, ptr %wp2308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbb4 word 0x79403d09
  %r2309.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2309 = load i64, ptr %r2309.p, align 8, !alias.scope !3, !noalias !4
  %t2310 = add i64 %r2309, 30
  %gmp2311 = inttoptr i64 %t2310 to ptr
  %gml2312 = load i16, ptr %gmp2311, align 1, !alias.scope !4, !noalias !3
  %c2313 = zext i16 %gml2312 to i64
  %wp2314 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2313, ptr %wp2314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbb8 word 0x13003e68
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %c2316 = trunc i64 %r2315 to i32
  %t2317 = lshr i32 %c2316, 15
  %t2318 = and i32 %t2317, 1
  %t2319 = sub i32 0, %t2318
  %t2320 = and i32 %t2319, -65536
  %t2321 = and i32 %c2316, 65535
  %t2322 = or i32 %t2320, %t2321
  %c2323 = zext i32 %t2322 to i64
  %wp2324 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2323, ptr %wp2324, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbbc word 0x7100193f
  %r2325.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2325 = load i64, ptr %r2325.p, align 8, !alias.scope !3, !noalias !4
  %c2326 = trunc i64 %r2325 to i32
  %t2327 = sub i32 %c2326, 6
  %fn2328 = icmp slt i32 %t2327, 0
  %fz2329 = icmp eq i32 %t2327, 0
  %fc2330 = icmp uge i32 %c2326, 6
  %fx12331 = xor i32 %c2326, 6
  %fx22332 = xor i32 %c2326, %t2327
  %fva2333 = and i32 %fx12331, %fx22332
  %fv2334 = icmp slt i32 %fva2333, 0
  %nz2335 = zext i1 %fn2328 to i64
  %zz2336 = zext i1 %fz2329 to i64
  %cz2337 = zext i1 %fc2330 to i64
  %vz2338 = zext i1 %fv2334 to i64
  %ns2339 = shl i64 %nz2335, 31
  %zs2340 = shl i64 %zz2336, 30
  %cs2341 = shl i64 %cz2337, 29
  %vs2342 = shl i64 %vz2338, 28
  %nzor2343 = or i64 %ns2339, %zs2340
  %cvor2344 = or i64 %cs2341, %vs2342
  %nzcv2345 = or i64 %nzor2343, %cvor2344
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2345, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbc0 word 0x54ffe1e0
  %r2347.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2347 = load i64, ptr %r2347.p, align 8, !alias.scope !3, !noalias !4
  %fsh2349 = lshr i64 %r2347, 30
  %cond2348 = trunc i64 %fsh2349 to i1
  br i1 %cond2348, label %L_8001ef7fc, label %L_8001efbc4_ft
L_8001efbc4_ft:
  ; @pc 0x8001efbc4 word 0x51000929
  %r2350.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2350 = load i64, ptr %r2350.p, align 8, !alias.scope !3, !noalias !4
  %c2351 = trunc i64 %r2350 to i32
  %t2352 = sub i32 %c2351, 2
  %c2353 = zext i32 %t2352 to i64
  %wp2354 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2353, ptr %wp2354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbc8 word 0x71000d3f
  %r2355.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2355 = load i64, ptr %r2355.p, align 8, !alias.scope !3, !noalias !4
  %c2356 = trunc i64 %r2355 to i32
  %t2357 = sub i32 %c2356, 3
  %fn2358 = icmp slt i32 %t2357, 0
  %fz2359 = icmp eq i32 %t2357, 0
  %fc2360 = icmp uge i32 %c2356, 3
  %fx12361 = xor i32 %c2356, 3
  %fx22362 = xor i32 %c2356, %t2357
  %fva2363 = and i32 %fx12361, %fx22362
  %fv2364 = icmp slt i32 %fva2363, 0
  %nz2365 = zext i1 %fn2358 to i64
  %zz2366 = zext i1 %fz2359 to i64
  %cz2367 = zext i1 %fc2360 to i64
  %vz2368 = zext i1 %fv2364 to i64
  %ns2369 = shl i64 %nz2365, 31
  %zs2370 = shl i64 %zz2366, 30
  %cs2371 = shl i64 %cz2367, 29
  %vs2372 = shl i64 %vz2368, 28
  %nzor2373 = or i64 %ns2369, %zs2370
  %cvor2374 = or i64 %cs2371, %vs2372
  %nzcv2375 = or i64 %nzor2373, %cvor2374
  %wp2376 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2375, ptr %wp2376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbcc word 0x540001a8
  %r2377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2377 = load i64, ptr %r2377.p, align 8, !alias.scope !3, !noalias !4
  %fsh2379 = lshr i64 %r2377, 29
  %ftr2380 = trunc i64 %fsh2379 to i1
  %fsh2381 = lshr i64 %r2377, 30
  %ftr2382 = trunc i64 %fsh2381 to i1
  %fnz2383 = xor i1 %ftr2382, true
  %cond2378 = and i1 %ftr2380, %fnz2383
  br i1 %cond2378, label %L_8001efc00, label %L_8001efbd0_ft
L_8001efbd0_ft:
  ; @pc 0x8001efbd0 word 0x90015c2a
  %wp2384 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34407395328, ptr %wp2384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbd4 word 0x9131194a
  %r2385.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2385 = load i64, ptr %r2385.p, align 8, !alias.scope !3, !noalias !4
  %t2386 = add i64 %r2385, 3142
  %wp2387 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2386, ptr %wp2387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbd8 word 0x1000008b
  %wp2388 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34361768936, ptr %wp2388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbdc word 0x3869694c
  %r2389.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2389 = load i64, ptr %r2389.p, align 8, !alias.scope !3, !noalias !4
  %r2390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2390 = load i64, ptr %r2390.p, align 8, !alias.scope !3, !noalias !4
  %t2391 = add i64 %r2389, %r2390
  %gmp2392 = inttoptr i64 %t2391 to ptr
  %gml2393 = load i8, ptr %gmp2392, align 1, !alias.scope !4, !noalias !3
  %c2394 = zext i8 %gml2393 to i64
  %wp2395 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2394, ptr %wp2395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbe0 word 0x8b0c096b
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = shl i64 %r2397, 2
  %t2399 = add i64 %r2396, %t2398
  %wp2400 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2399, ptr %wp2400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efbe4 word 0xd61f0160
  %r2401.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2401 = load i64, ptr %r2401.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r2401, label %L_8001efbe4_jt_def [
    i64 34361768936, label %L_8001efbe8
    i64 34361768952, label %L_8001efbf8
    i64 34361769896, label %L_8001effa8
    i64 34361769908, label %L_8001effb4
  ]
L_8001efc20_ft:
  ; @pc 0x8001efc20 word 0xf94003ea
  %r2462.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2462 = load i64, ptr %r2462.p, align 8, !alias.scope !3, !noalias !4
  %gmp2463 = inttoptr i64 %r2462 to ptr
  %gml2464 = load i64, ptr %gmp2463, align 1, !alias.scope !4, !noalias !3
  %wp2465 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2464, ptr %wp2465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc24 word 0xf9400408
  %r2466.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2466 = load i64, ptr %r2466.p, align 8, !alias.scope !3, !noalias !4
  %t2467 = add i64 %r2466, 8
  %gmp2468 = inttoptr i64 %t2467 to ptr
  %gml2469 = load i64, ptr %gmp2468, align 1, !alias.scope !4, !noalias !3
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc28 word 0x8b090d09
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %r2472.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2472 = load i64, ptr %r2472.p, align 8, !alias.scope !3, !noalias !4
  %t2473 = shl i64 %r2472, 3
  %t2474 = add i64 %r2471, %t2473
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc2c word 0xf940014a
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %gmp2477 = inttoptr i64 %r2476 to ptr
  %gml2478 = load i64, ptr %gmp2477, align 1, !alias.scope !4, !noalias !3
  %wp2479 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2478, ptr %wp2479, align 8, !alias.scope !3, !noalias !4
  br label %L_8001efc30
L_8001efc40_ft:
  ; @pc 0x8001efc40 word 0xb940316c
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %t2517 = add i64 %r2516, 48
  %gmp2518 = inttoptr i64 %t2517 to ptr
  %gml2519 = load i32, ptr %gmp2518, align 1, !alias.scope !4, !noalias !3
  %c2520 = zext i32 %gml2519 to i64
  %wp2521 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2520, ptr %wp2521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc44 word 0x37f81dcc
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %t2523 = and i64 %r2522, 2147483648
  %cmp2524 = icmp ne i64 %t2523, 0
  br i1 %cmp2524, label %L_8001efffc, label %L_8001efc48_ft
L_8001efc48_ft:
  ; @pc 0x8001efc48 word 0xf940016c
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %gmp2526 = inttoptr i64 %r2525 to ptr
  %gml2527 = load i64, ptr %gmp2526, align 1, !alias.scope !4, !noalias !3
  %wp2528 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2527, ptr %wp2528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc4c word 0xeb0a019f
  %r2529.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2529 = load i64, ptr %r2529.p, align 8, !alias.scope !3, !noalias !4
  %r2530.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2530 = load i64, ptr %r2530.p, align 8, !alias.scope !3, !noalias !4
  %t2531 = sub i64 %r2529, %r2530
  %fn2532 = icmp slt i64 %t2531, 0
  %fz2533 = icmp eq i64 %t2531, 0
  %fc2534 = icmp uge i64 %r2529, %r2530
  %fx12535 = xor i64 %r2529, %r2530
  %fx22536 = xor i64 %r2529, %t2531
  %fva2537 = and i64 %fx12535, %fx22536
  %fv2538 = icmp slt i64 %fva2537, 0
  %nz2539 = zext i1 %fn2532 to i64
  %zz2540 = zext i1 %fz2533 to i64
  %cz2541 = zext i1 %fc2534 to i64
  %vz2542 = zext i1 %fv2538 to i64
  %ns2543 = shl i64 %nz2539, 31
  %zs2544 = shl i64 %zz2540, 30
  %cs2545 = shl i64 %cz2541, 29
  %vs2546 = shl i64 %vz2542, 28
  %nzor2547 = or i64 %ns2543, %zs2544
  %cvor2548 = or i64 %cs2545, %vs2546
  %nzcv2549 = or i64 %nzor2547, %cvor2548
  %wp2550 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2549, ptr %wp2550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc50 word 0x54001c21
  %r2551.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2551 = load i64, ptr %r2551.p, align 8, !alias.scope !3, !noalias !4
  %fsh2553 = lshr i64 %r2551, 30
  %ftr2554 = trunc i64 %fsh2553 to i1
  %cond2552 = xor i1 %ftr2554, true
  br i1 %cond2552, label %L_8001effd4, label %L_8001efc54
L_8001efc60_ft:
  ; @pc 0x8001efc60 word 0xf94002c8
  %r2569.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2569 = load i64, ptr %r2569.p, align 8, !alias.scope !3, !noalias !4
  %gmp2570 = inttoptr i64 %r2569 to ptr
  %gml2571 = load i64, ptr %gmp2570, align 1, !alias.scope !4, !noalias !3
  %wp2572 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2571, ptr %wp2572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc64 word 0x927ef508
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %t2574 = and i64 %r2573, -4
  %wp2575 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2574, ptr %wp2575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc68 word 0xf9000568
  %r2576.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2576 = load i64, ptr %r2576.p, align 8, !alias.scope !3, !noalias !4
  %t2577 = add i64 %r2576, 8
  %r2578.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2578 = load i64, ptr %r2578.p, align 8, !alias.scope !3, !noalias !4
  %gmp2579 = inttoptr i64 %t2577 to ptr
  store i64 %r2578, ptr %gmp2579, align 1, !alias.scope !4, !noalias !3
  br label %L_8001efc6c
L_8001efc84_ft:
  ; @pc 0x8001efc84 word 0xf001c668
  %wp2593 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp2593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc88 word 0x9114c108
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %t2595 = add i64 %r2594, 1328
  %wp2596 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2595, ptr %wp2596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc8c word 0xb900091f
  %r2597.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2597 = load i64, ptr %r2597.p, align 8, !alias.scope !3, !noalias !4
  %t2598 = add i64 %r2597, 8
  %gmp2599 = inttoptr i64 %t2598 to ptr
  store i32 0, ptr %gmp2599, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efc90 word 0xf001c660
  %wp2600 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp2600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc94 word 0x91150000
  %r2601.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2601 = load i64, ptr %r2601.p, align 8, !alias.scope !3, !noalias !4
  %t2602 = add i64 %r2601, 1344
  %wp2603 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2602, ptr %wp2603, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efc98 word 0xf900011f
  %r2604.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2604 = load i64, ptr %r2604.p, align 8, !alias.scope !3, !noalias !4
  %gmp2605 = inttoptr i64 %r2604 to ptr
  store i64 0, ptr %gmp2605, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efc9c word 0x94a6cf45
  %wp2606 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769120, ptr %wp2606, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001efca0 word 0x17fffebf
  br label %L_8001ef79c
L_8001efcc8_ft:
  ; @pc 0x8001efcc8 word 0x9001bb96
  %wp2634 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 34419896320, ptr %wp2634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efccc word 0x2a1f03fa
  %t2635 = or i32 0, 0
  %c2636 = zext i32 %t2635 to i64
  %wp2637 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c2636, ptr %wp2637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcd0 word 0xf94562d6
  %r2638.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2638 = load i64, ptr %r2638.p, align 8, !alias.scope !3, !noalias !4
  %t2639 = add i64 %r2638, 2752
  %gmp2640 = inttoptr i64 %t2639 to ptr
  %gml2641 = load i64, ptr %gmp2640, align 1, !alias.scope !4, !noalias !3
  %wp2642 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2641, ptr %wp2642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcd4 word 0x2a1f03f4
  %t2643 = or i32 0, 0
  %c2644 = zext i32 %t2643 to i64
  %wp2645 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2644, ptr %wp2645, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efcd8 word 0x17ffff34
  br label %L_8001ef9a8
L_8001efda0_ft:
  ; @pc 0x8001efda0 word 0xf9400bf6
  %r2819.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2819 = load i64, ptr %r2819.p, align 8, !alias.scope !3, !noalias !4
  %t2820 = add i64 %r2819, 16
  %gmp2821 = inttoptr i64 %t2820 to ptr
  %gml2822 = load i64, ptr %gmp2821, align 1, !alias.scope !4, !noalias !3
  %wp2823 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml2822, ptr %wp2823, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efda4 word 0x17ffff10
  br label %L_8001ef9e4
L_8001efe10_ft:
  ; @pc 0x8001efe10 word 0xf001bae8
  %wp2905 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2905, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe14 word 0x9001bb89
  %wp2906 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp2906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe18 word 0xf942f908
  %r2907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2907 = load i64, ptr %r2907.p, align 8, !alias.scope !3, !noalias !4
  %t2908 = add i64 %r2907, 1520
  %gmp2909 = inttoptr i64 %t2908 to ptr
  %gml2910 = load i64, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  %wp2911 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2910, ptr %wp2911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe1c word 0xf9452929
  %r2912.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2912 = load i64, ptr %r2912.p, align 8, !alias.scope !3, !noalias !4
  %t2913 = add i64 %r2912, 2640
  %gmp2914 = inttoptr i64 %t2913 to ptr
  %gml2915 = load i64, ptr %gmp2914, align 1, !alias.scope !4, !noalias !3
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2915, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe20 word 0x9001bb80
  %wp2917 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe24 word 0x91004108
  %r2918.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2918 = load i64, ptr %r2918.p, align 8, !alias.scope !3, !noalias !4
  %t2919 = add i64 %r2918, 16
  %wp2920 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2919, ptr %wp2920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe28 word 0xf9000128
  %r2921.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2921 = load i64, ptr %r2921.p, align 8, !alias.scope !3, !noalias !4
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %gmp2923 = inttoptr i64 %r2921 to ptr
  store i64 %r2922, ptr %gmp2923, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efe2c word 0xf9452c00
  %r2924.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2924 = load i64, ptr %r2924.p, align 8, !alias.scope !3, !noalias !4
  %t2925 = add i64 %r2924, 2648
  %gmp2926 = inttoptr i64 %t2925 to ptr
  %gml2927 = load i64, ptr %gmp2926, align 1, !alias.scope !4, !noalias !3
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2927, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe30 word 0x94a6cee0
  %wp2929 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769524, ptr %wp2929, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001efe34 word 0x17fffe9c
  br label %L_8001ef8a4
L_8001efe48_ft:
  ; @pc 0x8001efe48 word 0x9001bb88
  %wp2940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe4c word 0xf001bae9
  %wp2941 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe50 word 0xf9453108
  %r2942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2942 = load i64, ptr %r2942.p, align 8, !alias.scope !3, !noalias !4
  %t2943 = add i64 %r2942, 2656
  %gmp2944 = inttoptr i64 %t2943 to ptr
  %gml2945 = load i64, ptr %gmp2944, align 1, !alias.scope !4, !noalias !3
  %wp2946 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2945, ptr %wp2946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe54 word 0xf942f929
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %t2948 = add i64 %r2947, 1520
  %gmp2949 = inttoptr i64 %t2948 to ptr
  %gml2950 = load i64, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  %wp2951 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2950, ptr %wp2951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe58 word 0x9001bb80
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe5c word 0x91004129
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %t2954 = add i64 %r2953, 16
  %wp2955 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2954, ptr %wp2955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe60 word 0xf9000109
  %r2956.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2956 = load i64, ptr %r2956.p, align 8, !alias.scope !3, !noalias !4
  %r2957.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2957 = load i64, ptr %r2957.p, align 8, !alias.scope !3, !noalias !4
  %gmp2958 = inttoptr i64 %r2956 to ptr
  store i64 %r2957, ptr %gmp2958, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efe64 word 0xf9453400
  %r2959.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2959 = load i64, ptr %r2959.p, align 8, !alias.scope !3, !noalias !4
  %t2960 = add i64 %r2959, 2664
  %gmp2961 = inttoptr i64 %t2960 to ptr
  %gml2962 = load i64, ptr %gmp2961, align 1, !alias.scope !4, !noalias !3
  %wp2963 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2962, ptr %wp2963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe68 word 0x94a6ced2
  %wp2964 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769580, ptr %wp2964, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001efe6c word 0x17fffe9a
  br label %L_8001ef8d4
L_8001efe80_ft:
  ; @pc 0x8001efe80 word 0xf001bae8
  %wp2975 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp2975, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe84 word 0x9001bb89
  %wp2976 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp2976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe88 word 0xf942f908
  %r2977.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2977 = load i64, ptr %r2977.p, align 8, !alias.scope !3, !noalias !4
  %t2978 = add i64 %r2977, 1520
  %gmp2979 = inttoptr i64 %t2978 to ptr
  %gml2980 = load i64, ptr %gmp2979, align 1, !alias.scope !4, !noalias !3
  %wp2981 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2980, ptr %wp2981, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe8c word 0xf9453929
  %r2982.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2982 = load i64, ptr %r2982.p, align 8, !alias.scope !3, !noalias !4
  %t2983 = add i64 %r2982, 2672
  %gmp2984 = inttoptr i64 %t2983 to ptr
  %gml2985 = load i64, ptr %gmp2984, align 1, !alias.scope !4, !noalias !3
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2985, ptr %wp2986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe90 word 0x9001bb80
  %wp2987 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp2987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe94 word 0x91004108
  %r2988.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2988 = load i64, ptr %r2988.p, align 8, !alias.scope !3, !noalias !4
  %t2989 = add i64 %r2988, 16
  %wp2990 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2989, ptr %wp2990, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efe98 word 0xf9000128
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %r2992.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2992 = load i64, ptr %r2992.p, align 8, !alias.scope !3, !noalias !4
  %gmp2993 = inttoptr i64 %r2991 to ptr
  store i64 %r2992, ptr %gmp2993, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efe9c word 0xf9453c00
  %r2994.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2994 = load i64, ptr %r2994.p, align 8, !alias.scope !3, !noalias !4
  %t2995 = add i64 %r2994, 2680
  %gmp2996 = inttoptr i64 %t2995 to ptr
  %gml2997 = load i64, ptr %gmp2996, align 1, !alias.scope !4, !noalias !3
  %wp2998 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2997, ptr %wp2998, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efea0 word 0x94a6cec4
  %wp2999 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769636, ptr %wp2999, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001efea4 word 0x17fffe98
  br label %L_8001ef904
L_8001efeb8_ft:
  ; @pc 0x8001efeb8 word 0x9001bb88
  %wp3010 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp3010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efebc word 0xf001bae9
  %wp3011 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efec0 word 0xf9454108
  %r3012.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3012 = load i64, ptr %r3012.p, align 8, !alias.scope !3, !noalias !4
  %t3013 = add i64 %r3012, 2688
  %gmp3014 = inttoptr i64 %t3013 to ptr
  %gml3015 = load i64, ptr %gmp3014, align 1, !alias.scope !4, !noalias !3
  %wp3016 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3015, ptr %wp3016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efec4 word 0xf942f929
  %r3017.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3017 = load i64, ptr %r3017.p, align 8, !alias.scope !3, !noalias !4
  %t3018 = add i64 %r3017, 1520
  %gmp3019 = inttoptr i64 %t3018 to ptr
  %gml3020 = load i64, ptr %gmp3019, align 1, !alias.scope !4, !noalias !3
  %wp3021 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3020, ptr %wp3021, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efec8 word 0x9001bb80
  %wp3022 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efecc word 0x91004129
  %r3023.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3023 = load i64, ptr %r3023.p, align 8, !alias.scope !3, !noalias !4
  %t3024 = add i64 %r3023, 16
  %wp3025 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3024, ptr %wp3025, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efed0 word 0xf9000109
  %r3026.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3026 = load i64, ptr %r3026.p, align 8, !alias.scope !3, !noalias !4
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %gmp3028 = inttoptr i64 %r3026 to ptr
  store i64 %r3027, ptr %gmp3028, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001efed4 word 0xf9454400
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %t3030 = add i64 %r3029, 2696
  %gmp3031 = inttoptr i64 %t3030 to ptr
  %gml3032 = load i64, ptr %gmp3031, align 1, !alias.scope !4, !noalias !3
  %wp3033 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3032, ptr %wp3033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efed8 word 0x94a6ceb6
  %wp3034 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769692, ptr %wp3034, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001efedc word 0x17fffe96
  br label %L_8001ef934
L_8001efef0_ft:
  ; @pc 0x8001efef0 word 0xf001bae8
  %wp3045 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efef4 word 0x9001bb89
  %wp3046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efef8 word 0xf942f908
  %r3047.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3047 = load i64, ptr %r3047.p, align 8, !alias.scope !3, !noalias !4
  %t3048 = add i64 %r3047, 1520
  %gmp3049 = inttoptr i64 %t3048 to ptr
  %gml3050 = load i64, ptr %gmp3049, align 1, !alias.scope !4, !noalias !3
  %wp3051 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3050, ptr %wp3051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efefc word 0xf9454929
  %r3052.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3052 = load i64, ptr %r3052.p, align 8, !alias.scope !3, !noalias !4
  %t3053 = add i64 %r3052, 2704
  %gmp3054 = inttoptr i64 %t3053 to ptr
  %gml3055 = load i64, ptr %gmp3054, align 1, !alias.scope !4, !noalias !3
  %wp3056 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3055, ptr %wp3056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff00 word 0x9001bb80
  %wp3057 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff04 word 0x91004108
  %r3058.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3058 = load i64, ptr %r3058.p, align 8, !alias.scope !3, !noalias !4
  %t3059 = add i64 %r3058, 16
  %wp3060 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3059, ptr %wp3060, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff08 word 0xf9000128
  %r3061.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3061 = load i64, ptr %r3061.p, align 8, !alias.scope !3, !noalias !4
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %gmp3063 = inttoptr i64 %r3061 to ptr
  store i64 %r3062, ptr %gmp3063, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001eff0c word 0xf9454c00
  %r3064.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3064 = load i64, ptr %r3064.p, align 8, !alias.scope !3, !noalias !4
  %t3065 = add i64 %r3064, 2712
  %gmp3066 = inttoptr i64 %t3065 to ptr
  %gml3067 = load i64, ptr %gmp3066, align 1, !alias.scope !4, !noalias !3
  %wp3068 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3067, ptr %wp3068, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff10 word 0x94a6cea8
  %wp3069 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361769748, ptr %wp3069, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001eff14 word 0x17fffe94
  br label %L_8001ef964
L_8001eff4c_ft:
  ; @pc 0x8001eff4c word 0xf9400bf6
  %r3139.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3139 = load i64, ptr %r3139.p, align 8, !alias.scope !3, !noalias !4
  %t3140 = add i64 %r3139, 16
  %gmp3141 = inttoptr i64 %t3140 to ptr
  %gml3142 = load i64, ptr %gmp3141, align 1, !alias.scope !4, !noalias !3
  %wp3143 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml3142, ptr %wp3143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001eff50 word 0x17fffefd
  br label %L_8001efb44
L_8001efff0_ft:
  ; @pc 0x8001efff0 word 0x34ffe32f
  %r3369.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3369 = load i64, ptr %r3369.p, align 8, !alias.scope !3, !noalias !4
  %c3370 = trunc i64 %r3369 to i32
  %cmp3371 = icmp eq i32 %c3370, 0
  br i1 %cmp3371, label %L_8001efc54, label %L_8001efff4_ft
L_8001efff4_ft:
  ; @pc 0x8001efff4 word 0xf10005ad
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %t3373 = sub i64 %r3372, 1
  %fn3374 = icmp slt i64 %t3373, 0
  %fz3375 = icmp eq i64 %t3373, 0
  %fc3376 = icmp uge i64 %r3372, 1
  %fx13377 = xor i64 %r3372, 1
  %fx23378 = xor i64 %r3372, %t3373
  %fva3379 = and i64 %fx13377, %fx23378
  %fv3380 = icmp slt i64 %fva3379, 0
  %nz3381 = zext i1 %fn3374 to i64
  %zz3382 = zext i1 %fz3375 to i64
  %cz3383 = zext i1 %fc3376 to i64
  %vz3384 = zext i1 %fv3380 to i64
  %ns3385 = shl i64 %nz3381, 31
  %zs3386 = shl i64 %zz3382, 30
  %cs3387 = shl i64 %cz3383, 29
  %vs3388 = shl i64 %vz3384, 28
  %nzor3389 = or i64 %ns3385, %zs3386
  %cvor3390 = or i64 %cs3387, %vs3388
  %nzcv3391 = or i64 %nzor3389, %cvor3390
  %wp3392 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3391, ptr %wp3392, align 8, !alias.scope !3, !noalias !4
  %wp3393 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3373, ptr %wp3393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001efff8 word 0x54ffff41
  %r3394.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3394 = load i64, ptr %r3394.p, align 8, !alias.scope !3, !noalias !4
  %fsh3396 = lshr i64 %r3394, 30
  %ftr3397 = trunc i64 %fsh3396 to i1
  %cond3395 = xor i1 %ftr3397, true
  br i1 %cond3395, label %L_8001effe0, label %L_8001efffc
L_8001f0008_ft:
  ; @pc 0x8001f0008 word 0x17fffe15
  br label %L_8001ef85c
L_8001f0024_ft:
  ; @pc 0x8001f0024 word 0xf90002df
  %r3443.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3443 = load i64, ptr %r3443.p, align 8, !alias.scope !3, !noalias !4
  %gmp3444 = inttoptr i64 %r3443 to ptr
  store i64 0, ptr %gmp3444, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001f0028 word 0xf001bb60
  %wp3445 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f002c word 0xb9000adf
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 176
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %t3447 = add i64 %r3446, 8
  %gmp3448 = inttoptr i64 %t3447 to ptr
  store i32 0, ptr %gmp3448, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001f0030 word 0xf9456400
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %t3450 = add i64 %r3449, 2760
  %gmp3451 = inttoptr i64 %t3450 to ptr
  %gml3452 = load i64, ptr %gmp3451, align 1, !alias.scope !4, !noalias !3
  %wp3453 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3452, ptr %wp3453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001f0034 word 0x94a6ce5f
  %wp3454 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361770040, ptr %wp3454, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  br label %L_8001f0038
L_8001efbe4_jt_def:
  %fp3461 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2401, ptr %fp3461, align 8, !alias.scope !3, !noalias !4
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
