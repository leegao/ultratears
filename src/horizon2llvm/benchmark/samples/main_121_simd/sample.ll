; UltraTears chunk main_121_simd: 1 functions [0x8001d2a5c..0x8001d353c)
; ModuleID = 'main_121_simd_raw'
source_filename = "main_121_simd_raw"
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

declare dso_local void @f_8009b44dc(ptr)
declare dso_local void @f_8028d3d9c(ptr)
declare dso_local void @f_8028d3f9c(ptr)
declare dso_local void @f_802ba3a00(ptr)

define dso_local void @f_8001d2a5c(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001d2a5c:
  ; @pc 0x8001d2a5c word 0xd10103ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 64
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a60 word 0xfd0013e8
  %r8.p = getelementptr inbounds i8, ptr %c, i64 256
  %r8 = load i64, ptr %r8.p, align 8, !alias.scope !3, !noalias !4
  %t9 = add i64 %r8, 32
  %r10.p = getelementptr inbounds i8, ptr %c, i64 640
  %r10 = load i128, ptr %r10.p, align 16, !alias.scope !3, !noalias !4
  %c11 = trunc i128 %r10 to i64
  %gmp12 = inttoptr i64 %t9 to ptr
  store i64 %c11, ptr %gmp12, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2a64 word 0xf9001ff3
  %r13.p = getelementptr inbounds i8, ptr %c, i64 256
  %r13 = load i64, ptr %r13.p, align 8, !alias.scope !3, !noalias !4
  %t14 = add i64 %r13, 56
  %r15.p = getelementptr inbounds i8, ptr %c, i64 152
  %r15 = load i64, ptr %r15.p, align 8, !alias.scope !3, !noalias !4
  %gmp16 = inttoptr i64 %t14 to ptr
  store i64 %r15, ptr %gmp16, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2a68 word 0xa902fbfd
  %r17.p = getelementptr inbounds i8, ptr %c, i64 256
  %r17 = load i64, ptr %r17.p, align 8, !alias.scope !3, !noalias !4
  %t18 = add i64 %r17, 40
  %t19 = add i64 %t18, 8
  %r20.p = getelementptr inbounds i8, ptr %c, i64 232
  %r20 = load i64, ptr %r20.p, align 8, !alias.scope !3, !noalias !4
  %gmp21 = inttoptr i64 %t18 to ptr
  store i64 %r20, ptr %gmp21, align 1, !alias.scope !4, !noalias !3
  %r22.p = getelementptr inbounds i8, ptr %c, i64 240
  %r22 = load i64, ptr %r22.p, align 8, !alias.scope !3, !noalias !4
  %gmp23 = inttoptr i64 %t19 to ptr
  store i64 %r22, ptr %gmp23, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2a6c word 0x9100a3fd
  %r24.p = getelementptr inbounds i8, ptr %c, i64 256
  %r24 = load i64, ptr %r24.p, align 8, !alias.scope !3, !noalias !4
  %t25 = add i64 %r24, 40
  %wp26 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t25, ptr %wp26, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a70 word 0xb940002a
  %r27.p = getelementptr inbounds i8, ptr %c, i64 8
  %r27 = load i64, ptr %r27.p, align 8, !alias.scope !3, !noalias !4
  %gmp28 = inttoptr i64 %r27 to ptr
  %gml29 = load i32, ptr %gmp28, align 1, !alias.scope !4, !noalias !3
  %c30 = zext i32 %gml29 to i64
  %wp31 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c30, ptr %wp31, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a74 word 0xd3587d48
  %r32.p = getelementptr inbounds i8, ptr %c, i64 80
  %r32 = load i64, ptr %r32.p, align 8, !alias.scope !3, !noalias !4
  %ror33 = call i64 @llvm.fshr.i64(i64 %r32, i64 %r32, i64 24)
  %t34 = and i64 %ror33, 255
  %wp35 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t34, ptr %wp35, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a78 word 0x7100091f
  %r36.p = getelementptr inbounds i8, ptr %c, i64 64
  %r36 = load i64, ptr %r36.p, align 8, !alias.scope !3, !noalias !4
  %c37 = trunc i64 %r36 to i32
  %t38 = sub i32 %c37, 2
  %fn39 = icmp slt i32 %t38, 0
  %fz40 = icmp eq i32 %t38, 0
  %fc41 = icmp uge i32 %c37, 2
  %fx142 = xor i32 %c37, 2
  %fx243 = xor i32 %c37, %t38
  %fva44 = and i32 %fx142, %fx243
  %fv45 = icmp slt i32 %fva44, 0
  %nz46 = zext i1 %fn39 to i64
  %zz47 = zext i1 %fz40 to i64
  %cz48 = zext i1 %fc41 to i64
  %vz49 = zext i1 %fv45 to i64
  %ns50 = shl i64 %nz46, 31
  %zs51 = shl i64 %zz47, 30
  %cs52 = shl i64 %cz48, 29
  %vs53 = shl i64 %vz49, 28
  %nzor54 = or i64 %ns50, %zs51
  %cvor55 = or i64 %cs52, %vs53
  %nzcv56 = or i64 %nzor54, %cvor55
  %wp57 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv56, ptr %wp57, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a7c word 0x54001261
  %r58.p = getelementptr inbounds i8, ptr %c, i64 272
  %r58 = load i64, ptr %r58.p, align 8, !alias.scope !3, !noalias !4
  %fsh60 = lshr i64 %r58, 30
  %ftr61 = trunc i64 %fsh60 to i1
  %cond59 = xor i1 %ftr61, true
  br i1 %cond59, label %L_8001d2cc8, label %L_8001d2a80_ft
L_8001d2af4:
  ; @pc 0x8001d2af4 word 0xf94001cf
  %r237.p = getelementptr inbounds i8, ptr %c, i64 112
  %r237 = load i64, ptr %r237.p, align 8, !alias.scope !3, !noalias !4
  %gmp238 = inttoptr i64 %r237 to ptr
  %gml239 = load i64, ptr %gmp238, align 1, !alias.scope !4, !noalias !3
  %wp240 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml239, ptr %wp240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2af8 word 0xb9403dee
  %r241.p = getelementptr inbounds i8, ptr %c, i64 120
  %r241 = load i64, ptr %r241.p, align 8, !alias.scope !3, !noalias !4
  %t242 = add i64 %r241, 60
  %gmp243 = inttoptr i64 %t242 to ptr
  %gml244 = load i32, ptr %gmp243, align 1, !alias.scope !4, !noalias !3
  %c245 = zext i32 %gml244 to i64
  %wp246 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c245, ptr %wp246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2afc word 0x6b0801df
  %r247.p = getelementptr inbounds i8, ptr %c, i64 112
  %r247 = load i64, ptr %r247.p, align 8, !alias.scope !3, !noalias !4
  %c248 = trunc i64 %r247 to i32
  %r249.p = getelementptr inbounds i8, ptr %c, i64 64
  %r249 = load i64, ptr %r249.p, align 8, !alias.scope !3, !noalias !4
  %c250 = trunc i64 %r249 to i32
  %t251 = sub i32 %c248, %c250
  %fn252 = icmp slt i32 %t251, 0
  %fz253 = icmp eq i32 %t251, 0
  %fc254 = icmp uge i32 %c248, %c250
  %fx1255 = xor i32 %c248, %c250
  %fx2256 = xor i32 %c248, %t251
  %fva257 = and i32 %fx1255, %fx2256
  %fv258 = icmp slt i32 %fva257, 0
  %nz259 = zext i1 %fn252 to i64
  %zz260 = zext i1 %fz253 to i64
  %cz261 = zext i1 %fc254 to i64
  %vz262 = zext i1 %fv258 to i64
  %ns263 = shl i64 %nz259, 31
  %zs264 = shl i64 %zz260, 30
  %cs265 = shl i64 %cz261, 29
  %vs266 = shl i64 %vz262, 28
  %nzor267 = or i64 %ns263, %zs264
  %cvor268 = or i64 %cs265, %vs266
  %nzcv269 = or i64 %nzor267, %cvor268
  %wp270 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv269, ptr %wp270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b00 word 0x54001b49
  %r271.p = getelementptr inbounds i8, ptr %c, i64 272
  %r271 = load i64, ptr %r271.p, align 8, !alias.scope !3, !noalias !4
  %fsh273 = lshr i64 %r271, 29
  %ftr274 = trunc i64 %fsh273 to i1
  %fsh275 = lshr i64 %r271, 30
  %ftr276 = trunc i64 %fsh275 to i1
  %fnz277 = xor i1 %ftr276, true
  %fhi278 = and i1 %ftr274, %fnz277
  %cond272 = xor i1 %fhi278, true
  br i1 %cond272, label %L_8001d2e68, label %L_8001d2b04_ft
L_8001d2b18:
  ; @pc 0x8001d2b18 word 0xb94059cd
  %r308.p = getelementptr inbounds i8, ptr %c, i64 112
  %r308 = load i64, ptr %r308.p, align 8, !alias.scope !3, !noalias !4
  %t309 = add i64 %r308, 88
  %gmp310 = inttoptr i64 %t309 to ptr
  %gml311 = load i32, ptr %gmp310, align 1, !alias.scope !4, !noalias !3
  %c312 = zext i32 %gml311 to i64
  %wp313 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c312, ptr %wp313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b1c word 0x710009bf
  %r314.p = getelementptr inbounds i8, ptr %c, i64 104
  %r314 = load i64, ptr %r314.p, align 8, !alias.scope !3, !noalias !4
  %c315 = trunc i64 %r314 to i32
  %t316 = sub i32 %c315, 2
  %fn317 = icmp slt i32 %t316, 0
  %fz318 = icmp eq i32 %t316, 0
  %fc319 = icmp uge i32 %c315, 2
  %fx1320 = xor i32 %c315, 2
  %fx2321 = xor i32 %c315, %t316
  %fva322 = and i32 %fx1320, %fx2321
  %fv323 = icmp slt i32 %fva322, 0
  %nz324 = zext i1 %fn317 to i64
  %zz325 = zext i1 %fz318 to i64
  %cz326 = zext i1 %fc319 to i64
  %vz327 = zext i1 %fv323 to i64
  %ns328 = shl i64 %nz324, 31
  %zs329 = shl i64 %zz325, 30
  %cs330 = shl i64 %cz326, 29
  %vs331 = shl i64 %vz327, 28
  %nzor332 = or i64 %ns328, %zs329
  %cvor333 = or i64 %cs330, %vs331
  %nzcv334 = or i64 %nzor332, %cvor333
  %wp335 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv334, ptr %wp335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b20 word 0x540015a1
  %r336.p = getelementptr inbounds i8, ptr %c, i64 272
  %r336 = load i64, ptr %r336.p, align 8, !alias.scope !3, !noalias !4
  %fsh338 = lshr i64 %r336, 30
  %ftr339 = trunc i64 %fsh338 to i1
  %cond337 = xor i1 %ftr339, true
  br i1 %cond337, label %L_8001d2dd4, label %L_8001d2b24
L_8001d2b24:
  ; @pc 0x8001d2b24 word 0x1e270101
  %r340.p = getelementptr inbounds i8, ptr %c, i64 64
  %r340 = load i64, ptr %r340.p, align 8, !alias.scope !3, !noalias !4
  %c341 = trunc i64 %r340 to i32
  %c342 = zext i32 %c341 to i128
  %wp343 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c342, ptr %wp343, align 16, !alias.scope !3, !noalias !4
  br label %L_8001d2b28
L_8001d2b28:
  ; @pc 0x8001d2b28 word 0xf940318c
  %r344.p = getelementptr inbounds i8, ptr %c, i64 96
  %r344 = load i64, ptr %r344.p, align 8, !alias.scope !3, !noalias !4
  %t345 = add i64 %r344, 96
  %gmp346 = inttoptr i64 %t345 to ptr
  %gml347 = load i64, ptr %gmp346, align 1, !alias.scope !4, !noalias !3
  %wp348 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml347, ptr %wp348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b2c word 0xb4001c0c
  %r349.p = getelementptr inbounds i8, ptr %c, i64 96
  %r349 = load i64, ptr %r349.p, align 8, !alias.scope !3, !noalias !4
  %cmp350 = icmp eq i64 %r349, 0
  br i1 %cmp350, label %L_8001d2eac, label %L_8001d2b30_ft
L_8001d2b58:
  ; @pc 0x8001d2b58 word 0x8b0b0d89
  %r425.p = getelementptr inbounds i8, ptr %c, i64 96
  %r425 = load i64, ptr %r425.p, align 8, !alias.scope !3, !noalias !4
  %r426.p = getelementptr inbounds i8, ptr %c, i64 88
  %r426 = load i64, ptr %r426.p, align 8, !alias.scope !3, !noalias !4
  %t427 = shl i64 %r426, 3
  %t428 = add i64 %r425, %t427
  %wp429 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t428, ptr %wp429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b5c word 0x340001ca
  %r430.p = getelementptr inbounds i8, ptr %c, i64 80
  %r430 = load i64, ptr %r430.p, align 8, !alias.scope !3, !noalias !4
  %c431 = trunc i64 %r430 to i32
  %cmp432 = icmp eq i32 %c431, 0
  br i1 %cmp432, label %L_8001d2b94, label %L_8001d2b60_ft
L_8001d2b70:
  ; @pc 0x8001d2b70 word 0xbc5f8142
  %r441.p = getelementptr inbounds i8, ptr %c, i64 80
  %r441 = load i64, ptr %r441.p, align 8, !alias.scope !3, !noalias !4
  %t442 = add i64 %r441, -8
  %gmp443 = inttoptr i64 %t442 to ptr
  %gml444 = load i32, ptr %gmp443, align 1, !alias.scope !4, !noalias !3
  %c445 = zext i32 %gml444 to i128
  %wp446 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c445, ptr %wp446, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b74 word 0x1e222020
  %fcmp447 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 2, i32 0)
  %wp448 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp447, ptr %wp448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b78 word 0x540008e0
  %r449.p = getelementptr inbounds i8, ptr %c, i64 272
  %r449 = load i64, ptr %r449.p, align 8, !alias.scope !3, !noalias !4
  %fsh451 = lshr i64 %r449, 30
  %cond450 = trunc i64 %fsh451 to i1
  br i1 %cond450, label %L_8001d2c94, label %L_8001d2b7c_ft
L_8001d2b94:
  ; @pc 0x8001d2b94 word 0x8b080d28
  %r491.p = getelementptr inbounds i8, ptr %c, i64 72
  %r491 = load i64, ptr %r491.p, align 8, !alias.scope !3, !noalias !4
  %r492.p = getelementptr inbounds i8, ptr %c, i64 64
  %r492 = load i64, ptr %r492.p, align 8, !alias.scope !3, !noalias !4
  %t493 = shl i64 %r492, 3
  %t494 = add i64 %r491, %t493
  %wp495 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t494, ptr %wp495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b98 word 0xbc5fc100
  %r496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %t497 = add i64 %r496, -4
  %gmp498 = inttoptr i64 %t497 to ptr
  %gml499 = load i32, ptr %gmp498, align 1, !alias.scope !4, !noalias !3
  %c500 = zext i32 %gml499 to i128
  %wp501 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c500, ptr %wp501, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b9c word 0x14000046
  br label %L_8001d2cb4
L_8001d2ba0:
  ; @pc 0x8001d2ba0 word 0xf9402c48
  %r502.p = getelementptr inbounds i8, ptr %c, i64 16
  %r502 = load i64, ptr %r502.p, align 8, !alias.scope !3, !noalias !4
  %t503 = add i64 %r502, 88
  %gmp504 = inttoptr i64 %t503 to ptr
  %gml505 = load i64, ptr %gmp504, align 1, !alias.scope !4, !noalias !3
  %wp506 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml505, ptr %wp506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ba4 word 0xf9400d0e
  %r507.p = getelementptr inbounds i8, ptr %c, i64 64
  %r507 = load i64, ptr %r507.p, align 8, !alias.scope !3, !noalias !4
  %t508 = add i64 %r507, 24
  %gmp509 = inttoptr i64 %t508 to ptr
  %gml510 = load i64, ptr %gmp509, align 1, !alias.scope !4, !noalias !3
  %wp511 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml510, ptr %wp511, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ba8 word 0x910081cf
  %r512.p = getelementptr inbounds i8, ptr %c, i64 112
  %r512 = load i64, ptr %r512.p, align 8, !alias.scope !3, !noalias !4
  %t513 = add i64 %r512, 32
  %wp514 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t513, ptr %wp514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bac word 0xb94019ce
  %r515.p = getelementptr inbounds i8, ptr %c, i64 112
  %r515 = load i64, ptr %r515.p, align 8, !alias.scope !3, !noalias !4
  %t516 = add i64 %r515, 24
  %gmp517 = inttoptr i64 %t516 to ptr
  %gml518 = load i32, ptr %gmp517, align 1, !alias.scope !4, !noalias !3
  %c519 = zext i32 %gml518 to i64
  %wp520 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c519, ptr %wp520, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bb0 word 0x8b0e0df0
  %r521.p = getelementptr inbounds i8, ptr %c, i64 120
  %r521 = load i64, ptr %r521.p, align 8, !alias.scope !3, !noalias !4
  %r522.p = getelementptr inbounds i8, ptr %c, i64 112
  %r522 = load i64, ptr %r522.p, align 8, !alias.scope !3, !noalias !4
  %t523 = shl i64 %r522, 3
  %t524 = add i64 %r521, %t523
  %wp525 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t524, ptr %wp525, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bb4 word 0x710009df
  %r526.p = getelementptr inbounds i8, ptr %c, i64 112
  %r526 = load i64, ptr %r526.p, align 8, !alias.scope !3, !noalias !4
  %c527 = trunc i64 %r526 to i32
  %t528 = sub i32 %c527, 2
  %fn529 = icmp slt i32 %t528, 0
  %fz530 = icmp eq i32 %t528, 0
  %fc531 = icmp uge i32 %c527, 2
  %fx1532 = xor i32 %c527, 2
  %fx2533 = xor i32 %c527, %t528
  %fva534 = and i32 %fx1532, %fx2533
  %fv535 = icmp slt i32 %fva534, 0
  %nz536 = zext i1 %fn529 to i64
  %zz537 = zext i1 %fz530 to i64
  %cz538 = zext i1 %fc531 to i64
  %vz539 = zext i1 %fv535 to i64
  %ns540 = shl i64 %nz536, 31
  %zs541 = shl i64 %zz537, 30
  %cs542 = shl i64 %cz538, 29
  %vs543 = shl i64 %vz539, 28
  %nzor544 = or i64 %ns540, %zs541
  %cvor545 = or i64 %cs542, %vs543
  %nzcv546 = or i64 %nzor544, %cvor545
  %wp547 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv546, ptr %wp547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bb8 word 0x9a8f320e
  %r548.p = getelementptr inbounds i8, ptr %c, i64 128
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %r549.p = getelementptr inbounds i8, ptr %c, i64 120
  %r549 = load i64, ptr %r549.p, align 8, !alias.scope !3, !noalias !4
  %r550.p = getelementptr inbounds i8, ptr %c, i64 272
  %r550 = load i64, ptr %r550.p, align 8, !alias.scope !3, !noalias !4
  %fsh552 = lshr i64 %r550, 29
  %ftr553 = trunc i64 %fsh552 to i1
  %cond551 = xor i1 %ftr553, true
  %sel554 = select i1 %cond551, i64 %r548, i64 %r549
  %wp555 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %sel554, ptr %wp555, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bbc word 0x5280030f
  %c556 = zext i32 24 to i64
  %wp557 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c556, ptr %wp557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bc0 word 0xf94001ce
  %r558.p = getelementptr inbounds i8, ptr %c, i64 112
  %r558 = load i64, ptr %r558.p, align 8, !alias.scope !3, !noalias !4
  %gmp559 = inttoptr i64 %r558 to ptr
  %gml560 = load i64, ptr %gmp559, align 1, !alias.scope !4, !noalias !3
  %wp561 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml560, ptr %wp561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bc4 word 0x9baf254f
  %r562.p = getelementptr inbounds i8, ptr %c, i64 80
  %r562 = load i64, ptr %r562.p, align 8, !alias.scope !3, !noalias !4
  %c563 = trunc i64 %r562 to i32
  %c564 = zext i32 %c563 to i64
  %r565.p = getelementptr inbounds i8, ptr %c, i64 120
  %r565 = load i64, ptr %r565.p, align 8, !alias.scope !3, !noalias !4
  %c566 = trunc i64 %r565 to i32
  %c567 = zext i32 %c566 to i64
  %t568 = mul i64 %c564, %c567
  %r569.p = getelementptr inbounds i8, ptr %c, i64 72
  %r569 = load i64, ptr %r569.p, align 8, !alias.scope !3, !noalias !4
  %t570 = add i64 %r569, %t568
  %wp571 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t570, ptr %wp571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bc8 word 0x798029ef
  %r572.p = getelementptr inbounds i8, ptr %c, i64 120
  %r572 = load i64, ptr %r572.p, align 8, !alias.scope !3, !noalias !4
  %t573 = add i64 %r572, 20
  %gmp574 = inttoptr i64 %t573 to ptr
  %gml575 = load i16, ptr %gmp574, align 1, !alias.scope !4, !noalias !3
  %c576 = sext i16 %gml575 to i64
  %wp577 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c576, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bcc word 0xb94069d0
  %r578.p = getelementptr inbounds i8, ptr %c, i64 112
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %t579 = add i64 %r578, 104
  %gmp580 = inttoptr i64 %t579 to ptr
  %gml581 = load i32, ptr %gmp580, align 1, !alias.scope !4, !noalias !3
  %c582 = zext i32 %gml581 to i64
  %wp583 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c582, ptr %wp583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bd0 word 0xf94039ce
  %r584.p = getelementptr inbounds i8, ptr %c, i64 112
  %r584 = load i64, ptr %r584.p, align 8, !alias.scope !3, !noalias !4
  %t585 = add i64 %r584, 112
  %gmp586 = inttoptr i64 %t585 to ptr
  %gml587 = load i64, ptr %gmp586, align 1, !alias.scope !4, !noalias !3
  %wp588 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml587, ptr %wp588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bd4 word 0x6b0f021f
  %r589.p = getelementptr inbounds i8, ptr %c, i64 128
  %r589 = load i64, ptr %r589.p, align 8, !alias.scope !3, !noalias !4
  %c590 = trunc i64 %r589 to i32
  %r591.p = getelementptr inbounds i8, ptr %c, i64 120
  %r591 = load i64, ptr %r591.p, align 8, !alias.scope !3, !noalias !4
  %c592 = trunc i64 %r591 to i32
  %t593 = sub i32 %c590, %c592
  %fn594 = icmp slt i32 %t593, 0
  %fz595 = icmp eq i32 %t593, 0
  %fc596 = icmp uge i32 %c590, %c592
  %fx1597 = xor i32 %c590, %c592
  %fx2598 = xor i32 %c590, %t593
  %fva599 = and i32 %fx1597, %fx2598
  %fv600 = icmp slt i32 %fva599, 0
  %nz601 = zext i1 %fn594 to i64
  %zz602 = zext i1 %fz595 to i64
  %cz603 = zext i1 %fc596 to i64
  %vz604 = zext i1 %fv600 to i64
  %ns605 = shl i64 %nz601, 31
  %zs606 = shl i64 %zz602, 30
  %cs607 = shl i64 %cz603, 29
  %vs608 = shl i64 %vz604, 28
  %nzor609 = or i64 %ns605, %zs606
  %cvor610 = or i64 %cs607, %vs608
  %nzcv611 = or i64 %nzor609, %cvor610
  %wp612 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv611, ptr %wp612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bd8 word 0x540011a9
  %r613.p = getelementptr inbounds i8, ptr %c, i64 272
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %fsh615 = lshr i64 %r613, 29
  %ftr616 = trunc i64 %fsh615 to i1
  %fsh617 = lshr i64 %r613, 30
  %ftr618 = trunc i64 %fsh617 to i1
  %fnz619 = xor i1 %ftr618, true
  %fhi620 = and i1 %ftr616, %fnz619
  %cond614 = xor i1 %fhi620, true
  br i1 %cond614, label %L_8001d2e0c, label %L_8001d2bdc
L_8001d2bdc:
  ; @pc 0x8001d2bdc word 0x38ef69ce
  %r621.p = getelementptr inbounds i8, ptr %c, i64 112
  %r621 = load i64, ptr %r621.p, align 8, !alias.scope !3, !noalias !4
  %r622.p = getelementptr inbounds i8, ptr %c, i64 120
  %r622 = load i64, ptr %r622.p, align 8, !alias.scope !3, !noalias !4
  %t623 = add i64 %r621, %r622
  %gmp624 = inttoptr i64 %t623 to ptr
  %gml625 = load i8, ptr %gmp624, align 1, !alias.scope !4, !noalias !3
  %c626 = sext i8 %gml625 to i32
  %c627 = zext i32 %c626 to i64
  %wp628 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c627, ptr %wp628, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2be0 word 0x37f8144e
  %r629.p = getelementptr inbounds i8, ptr %c, i64 112
  %r629 = load i64, ptr %r629.p, align 8, !alias.scope !3, !noalias !4
  %t630 = and i64 %r629, 2147483648
  %cmp631 = icmp ne i64 %t630, 0
  br i1 %cmp631, label %L_8001d2e68, label %L_8001d2be4_ft
L_8001d2c10:
  ; @pc 0x8001d2c10 word 0x7940890e
  %r672.p = getelementptr inbounds i8, ptr %c, i64 64
  %r672 = load i64, ptr %r672.p, align 8, !alias.scope !3, !noalias !4
  %t673 = add i64 %r672, 68
  %gmp674 = inttoptr i64 %t673 to ptr
  %gml675 = load i16, ptr %gmp674, align 1, !alias.scope !4, !noalias !3
  %c676 = zext i16 %gml675 to i64
  %wp677 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c676, ptr %wp677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c14 word 0x6b0401df
  %r678.p = getelementptr inbounds i8, ptr %c, i64 112
  %r678 = load i64, ptr %r678.p, align 8, !alias.scope !3, !noalias !4
  %c679 = trunc i64 %r678 to i32
  %r680.p = getelementptr inbounds i8, ptr %c, i64 32
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %c681 = trunc i64 %r680 to i32
  %t682 = sub i32 %c679, %c681
  %fn683 = icmp slt i32 %t682, 0
  %fz684 = icmp eq i32 %t682, 0
  %fc685 = icmp uge i32 %c679, %c681
  %fx1686 = xor i32 %c679, %c681
  %fx2687 = xor i32 %c679, %t682
  %fva688 = and i32 %fx1686, %fx2687
  %fv689 = icmp slt i32 %fva688, 0
  %nz690 = zext i1 %fn683 to i64
  %zz691 = zext i1 %fz684 to i64
  %cz692 = zext i1 %fc685 to i64
  %vz693 = zext i1 %fv689 to i64
  %ns694 = shl i64 %nz690, 31
  %zs695 = shl i64 %zz691, 30
  %cs696 = shl i64 %cz692, 29
  %vs697 = shl i64 %vz693, 28
  %nzor698 = or i64 %ns694, %zs695
  %cvor699 = or i64 %cs696, %vs697
  %nzcv700 = or i64 %nzor698, %cvor699
  %wp701 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv700, ptr %wp701, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c18 word 0x54000fe9
  %r702.p = getelementptr inbounds i8, ptr %c, i64 272
  %r702 = load i64, ptr %r702.p, align 8, !alias.scope !3, !noalias !4
  %fsh704 = lshr i64 %r702, 29
  %ftr705 = trunc i64 %fsh704 to i1
  %fsh706 = lshr i64 %r702, 30
  %ftr707 = trunc i64 %fsh706 to i1
  %fnz708 = xor i1 %ftr707, true
  %fhi709 = and i1 %ftr705, %fnz708
  %cond703 = xor i1 %fhi709, true
  br i1 %cond703, label %L_8001d2e14, label %L_8001d2c1c_ft
L_8001d2c40:
  ; @pc 0x8001d2c40 word 0xb940606d
  %r747.p = getelementptr inbounds i8, ptr %c, i64 24
  %r747 = load i64, ptr %r747.p, align 8, !alias.scope !3, !noalias !4
  %t748 = add i64 %r747, 96
  %gmp749 = inttoptr i64 %t748 to ptr
  %gml750 = load i32, ptr %gmp749, align 1, !alias.scope !4, !noalias !3
  %c751 = zext i32 %gml750 to i64
  %wp752 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c751, ptr %wp752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c44 word 0x37f8142d
  %r753.p = getelementptr inbounds i8, ptr %c, i64 104
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %t754 = and i64 %r753, 2147483648
  %cmp755 = icmp ne i64 %t754, 0
  br i1 %cmp755, label %L_8001d2ec8, label %L_8001d2c48_ft
L_8001d2c4c:
  ; @pc 0x8001d2c4c word 0x2a0d03ef
  %r759.p = getelementptr inbounds i8, ptr %c, i64 104
  %r759 = load i64, ptr %r759.p, align 8, !alias.scope !3, !noalias !4
  %c760 = trunc i64 %r759 to i32
  %t761 = or i32 0, %c760
  %c762 = zext i32 %t761 to i64
  %wp763 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c762, ptr %wp763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c50 word 0x8b2d4d0d
  %r764.p = getelementptr inbounds i8, ptr %c, i64 64
  %r764 = load i64, ptr %r764.p, align 8, !alias.scope !3, !noalias !4
  %r765.p = getelementptr inbounds i8, ptr %c, i64 104
  %r765 = load i64, ptr %r765.p, align 8, !alias.scope !3, !noalias !4
  %c766 = trunc i64 %r765 to i32
  %c767 = zext i32 %c766 to i64
  %t768 = shl i64 %c767, 3
  %t769 = add i64 %r764, %t768
  %wp770 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t769, ptr %wp770, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c54 word 0x79c005ad
  %r771.p = getelementptr inbounds i8, ptr %c, i64 104
  %r771 = load i64, ptr %r771.p, align 8, !alias.scope !3, !noalias !4
  %t772 = add i64 %r771, 2
  %gmp773 = inttoptr i64 %t772 to ptr
  %gml774 = load i16, ptr %gmp773, align 1, !alias.scope !4, !noalias !3
  %c775 = sext i16 %gml774 to i32
  %c776 = zext i32 %c775 to i64
  %wp777 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c776, ptr %wp777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c58 word 0x6b0401bf
  %r778.p = getelementptr inbounds i8, ptr %c, i64 104
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %c779 = trunc i64 %r778 to i32
  %r780.p = getelementptr inbounds i8, ptr %c, i64 32
  %r780 = load i64, ptr %r780.p, align 8, !alias.scope !3, !noalias !4
  %c781 = trunc i64 %r780 to i32
  %t782 = sub i32 %c779, %c781
  %fn783 = icmp slt i32 %t782, 0
  %fz784 = icmp eq i32 %t782, 0
  %fc785 = icmp uge i32 %c779, %c781
  %fx1786 = xor i32 %c779, %c781
  %fx2787 = xor i32 %c779, %t782
  %fva788 = and i32 %fx1786, %fx2787
  %fv789 = icmp slt i32 %fva788, 0
  %nz790 = zext i1 %fn783 to i64
  %zz791 = zext i1 %fz784 to i64
  %cz792 = zext i1 %fc785 to i64
  %vz793 = zext i1 %fv789 to i64
  %ns794 = shl i64 %nz790, 31
  %zs795 = shl i64 %zz791, 30
  %cs796 = shl i64 %cz792, 29
  %vs797 = shl i64 %vz793, 28
  %nzor798 = or i64 %ns794, %zs795
  %cvor799 = or i64 %cs796, %vs797
  %nzcv800 = or i64 %nzor798, %cvor799
  %wp801 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv800, ptr %wp801, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c5c word 0x540012e1
  %r802.p = getelementptr inbounds i8, ptr %c, i64 272
  %r802 = load i64, ptr %r802.p, align 8, !alias.scope !3, !noalias !4
  %fsh804 = lshr i64 %r802, 30
  %ftr805 = trunc i64 %fsh804 to i1
  %cond803 = xor i1 %ftr805, true
  br i1 %cond803, label %L_8001d2eb8, label %L_8001d2c60_ft
L_8001d2c6c:
  ; @pc 0x8001d2c6c word 0xbc5fc140
  %r817.p = getelementptr inbounds i8, ptr %c, i64 80
  %r817 = load i64, ptr %r817.p, align 8, !alias.scope !3, !noalias !4
  %t818 = add i64 %r817, -4
  %gmp819 = inttoptr i64 %t818 to ptr
  %gml820 = load i32, ptr %gmp819, align 1, !alias.scope !4, !noalias !3
  %c821 = zext i32 %gml820 to i128
  %wp822 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c821, ptr %wp822, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c70 word 0xb40001ab
  %r823.p = getelementptr inbounds i8, ptr %c, i64 88
  %r823 = load i64, ptr %r823.p, align 8, !alias.scope !3, !noalias !4
  %cmp824 = icmp eq i64 %r823, 0
  br i1 %cmp824, label %L_8001d2ca4, label %L_8001d2c74_ft
L_8001d2c94:
  ; @pc 0x8001d2c94 word 0x1100056b
  %r840.p = getelementptr inbounds i8, ptr %c, i64 88
  %r840 = load i64, ptr %r840.p, align 8, !alias.scope !3, !noalias !4
  %c841 = trunc i64 %r840 to i32
  %t842 = add i32 %c841, 1
  %c843 = zext i32 %t842 to i64
  %wp844 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c843, ptr %wp844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c98 word 0x6b08017f
  %r845.p = getelementptr inbounds i8, ptr %c, i64 88
  %r845 = load i64, ptr %r845.p, align 8, !alias.scope !3, !noalias !4
  %c846 = trunc i64 %r845 to i32
  %r847.p = getelementptr inbounds i8, ptr %c, i64 64
  %r847 = load i64, ptr %r847.p, align 8, !alias.scope !3, !noalias !4
  %c848 = trunc i64 %r847 to i32
  %t849 = sub i32 %c846, %c848
  %fn850 = icmp slt i32 %t849, 0
  %fz851 = icmp eq i32 %t849, 0
  %fc852 = icmp uge i32 %c846, %c848
  %fx1853 = xor i32 %c846, %c848
  %fx2854 = xor i32 %c846, %t849
  %fva855 = and i32 %fx1853, %fx2854
  %fv856 = icmp slt i32 %fva855, 0
  %nz857 = zext i1 %fn850 to i64
  %zz858 = zext i1 %fz851 to i64
  %cz859 = zext i1 %fc852 to i64
  %vz860 = zext i1 %fv856 to i64
  %ns861 = shl i64 %nz857, 31
  %zs862 = shl i64 %zz858, 30
  %cs863 = shl i64 %cz859, 29
  %vs864 = shl i64 %vz860, 28
  %nzor865 = or i64 %ns861, %zs862
  %cvor866 = or i64 %cs863, %vs864
  %nzcv867 = or i64 %nzor865, %cvor866
  %wp868 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv867, ptr %wp868, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c9c word 0x54000403
  %r869.p = getelementptr inbounds i8, ptr %c, i64 272
  %r869 = load i64, ptr %r869.p, align 8, !alias.scope !3, !noalias !4
  %fsh871 = lshr i64 %r869, 29
  %ftr872 = trunc i64 %fsh871 to i1
  %cond870 = xor i1 %ftr872, true
  br i1 %cond870, label %L_8001d2d1c, label %L_8001d2ca0
L_8001d2ca0:
  ; @pc 0x8001d2ca0 word 0xbc5fc140
  %r873.p = getelementptr inbounds i8, ptr %c, i64 80
  %r873 = load i64, ptr %r873.p, align 8, !alias.scope !3, !noalias !4
  %t874 = add i64 %r873, -4
  %gmp875 = inttoptr i64 %t874 to ptr
  %gml876 = load i32, ptr %gmp875, align 1, !alias.scope !4, !noalias !3
  %c877 = zext i32 %gml876 to i128
  %wp878 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c877, ptr %wp878, align 16, !alias.scope !3, !noalias !4
  br label %L_8001d2ca4
L_8001d2ca4:
  ; @pc 0x8001d2ca4 word 0x52aff00a
  %c879 = zext i32 2139095040 to i64
  %wp880 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c879, ptr %wp880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ca8 word 0x1e270141
  %r881.p = getelementptr inbounds i8, ptr %c, i64 80
  %r881 = load i64, ptr %r881.p, align 8, !alias.scope !3, !noalias !4
  %c882 = trunc i64 %r881 to i32
  %c883 = zext i32 %c882 to i128
  %wp884 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c883, ptr %wp884, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cac word 0x1e212000
  %fcmp885 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %wp886 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp885, ptr %wp886, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cb0 word 0x54fff720
  %r887.p = getelementptr inbounds i8, ptr %c, i64 272
  %r887 = load i64, ptr %r887.p, align 8, !alias.scope !3, !noalias !4
  %fsh889 = lshr i64 %r887, 30
  %cond888 = trunc i64 %fsh889 to i1
  br i1 %cond888, label %L_8001d2b94, label %L_8001d2cb4
L_8001d2cb4:
  ; @pc 0x8001d2cb4 word 0xfd4013e8
  %r890.p = getelementptr inbounds i8, ptr %c, i64 256
  %r890 = load i64, ptr %r890.p, align 8, !alias.scope !3, !noalias !4
  %t891 = add i64 %r890, 32
  %gmp892 = inttoptr i64 %t891 to ptr
  %gml893 = load i64, ptr %gmp892, align 1, !alias.scope !4, !noalias !3
  %c894 = zext i64 %gml893 to i128
  %wp895 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c894, ptr %wp895, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cb8 word 0xf9401ff3
  %r896.p = getelementptr inbounds i8, ptr %c, i64 256
  %r896 = load i64, ptr %r896.p, align 8, !alias.scope !3, !noalias !4
  %t897 = add i64 %r896, 56
  %gmp898 = inttoptr i64 %t897 to ptr
  %gml899 = load i64, ptr %gmp898, align 1, !alias.scope !4, !noalias !3
  %wp900 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml899, ptr %wp900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cbc word 0xa942fbfd
  %r901.p = getelementptr inbounds i8, ptr %c, i64 256
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %t902 = add i64 %r901, 40
  %t903 = add i64 %t902, 8
  %gmp904 = inttoptr i64 %t902 to ptr
  %gml905 = load i64, ptr %gmp904, align 1, !alias.scope !4, !noalias !3
  %gmp906 = inttoptr i64 %t903 to ptr
  %gml907 = load i64, ptr %gmp906, align 1, !alias.scope !4, !noalias !3
  %wp908 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml905, ptr %wp908, align 8, !alias.scope !3, !noalias !4
  %wp909 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml907, ptr %wp909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cc0 word 0x910103ff
  %r910.p = getelementptr inbounds i8, ptr %c, i64 256
  %r910 = load i64, ptr %r910.p, align 8, !alias.scope !3, !noalias !4
  %t911 = add i64 %r910, 64
  %wp912 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t911, ptr %wp912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cc4 word 0xd65f03c0
  ret void
L_8001d2cc8:
  ; @pc 0x8001d2cc8 word 0x7100451f
  %r913.p = getelementptr inbounds i8, ptr %c, i64 64
  %r913 = load i64, ptr %r913.p, align 8, !alias.scope !3, !noalias !4
  %c914 = trunc i64 %r913 to i32
  %t915 = sub i32 %c914, 17
  %fn916 = icmp slt i32 %t915, 0
  %fz917 = icmp eq i32 %t915, 0
  %fc918 = icmp uge i32 %c914, 17
  %fx1919 = xor i32 %c914, 17
  %fx2920 = xor i32 %c914, %t915
  %fva921 = and i32 %fx1919, %fx2920
  %fv922 = icmp slt i32 %fva921, 0
  %nz923 = zext i1 %fn916 to i64
  %zz924 = zext i1 %fz917 to i64
  %cz925 = zext i1 %fc918 to i64
  %vz926 = zext i1 %fv922 to i64
  %ns927 = shl i64 %nz923, 31
  %zs928 = shl i64 %zz924, 30
  %cs929 = shl i64 %cz925, 29
  %vs930 = shl i64 %vz926, 28
  %nzor931 = or i64 %ns927, %zs928
  %cvor932 = or i64 %cs929, %vs930
  %nzcv933 = or i64 %nzor931, %cvor932
  %wp934 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv933, ptr %wp934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ccc word 0x54001308
  %r935.p = getelementptr inbounds i8, ptr %c, i64 272
  %r935 = load i64, ptr %r935.p, align 8, !alias.scope !3, !noalias !4
  %fsh937 = lshr i64 %r935, 29
  %ftr938 = trunc i64 %fsh937 to i1
  %fsh939 = lshr i64 %r935, 30
  %ftr940 = trunc i64 %fsh939 to i1
  %fnz941 = xor i1 %ftr940, true
  %cond936 = and i1 %ftr938, %fnz941
  br i1 %cond936, label %L_8001d2f2c, label %L_8001d2cd0_ft
L_8001d2cec:
  ; @pc 0x8001d2cec word 0xf9400808
  %r966.p = getelementptr inbounds i8, ptr %c, i64 0
  %r966 = load i64, ptr %r966.p, align 8, !alias.scope !3, !noalias !4
  %t967 = add i64 %r966, 16
  %gmp968 = inttoptr i64 %t967 to ptr
  %gml969 = load i64, ptr %gmp968, align 1, !alias.scope !4, !noalias !3
  %wp970 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml969, ptr %wp970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cf0 word 0x91008109
  %r971.p = getelementptr inbounds i8, ptr %c, i64 64
  %r971 = load i64, ptr %r971.p, align 8, !alias.scope !3, !noalias !4
  %t972 = add i64 %r971, 32
  %wp973 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t972, ptr %wp973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cf4 word 0xb9401908
  %r974.p = getelementptr inbounds i8, ptr %c, i64 64
  %r974 = load i64, ptr %r974.p, align 8, !alias.scope !3, !noalias !4
  %t975 = add i64 %r974, 24
  %gmp976 = inttoptr i64 %t975 to ptr
  %gml977 = load i32, ptr %gmp976, align 1, !alias.scope !4, !noalias !3
  %c978 = zext i32 %gml977 to i64
  %wp979 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c978, ptr %wp979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cf8 word 0x8b080d2b
  %r980.p = getelementptr inbounds i8, ptr %c, i64 72
  %r980 = load i64, ptr %r980.p, align 8, !alias.scope !3, !noalias !4
  %r981.p = getelementptr inbounds i8, ptr %c, i64 64
  %r981 = load i64, ptr %r981.p, align 8, !alias.scope !3, !noalias !4
  %t982 = shl i64 %r981, 3
  %t983 = add i64 %r980, %t982
  %wp984 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t983, ptr %wp984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cfc word 0x7100091f
  %r985.p = getelementptr inbounds i8, ptr %c, i64 64
  %r985 = load i64, ptr %r985.p, align 8, !alias.scope !3, !noalias !4
  %c986 = trunc i64 %r985 to i32
  %t987 = sub i32 %c986, 2
  %fn988 = icmp slt i32 %t987, 0
  %fz989 = icmp eq i32 %t987, 0
  %fc990 = icmp uge i32 %c986, 2
  %fx1991 = xor i32 %c986, 2
  %fx2992 = xor i32 %c986, %t987
  %fva993 = and i32 %fx1991, %fx2992
  %fv994 = icmp slt i32 %fva993, 0
  %nz995 = zext i1 %fn988 to i64
  %zz996 = zext i1 %fz989 to i64
  %cz997 = zext i1 %fc990 to i64
  %vz998 = zext i1 %fv994 to i64
  %ns999 = shl i64 %nz995, 31
  %zs1000 = shl i64 %zz996, 30
  %cs1001 = shl i64 %cz997, 29
  %vs1002 = shl i64 %vz998, 28
  %nzor1003 = or i64 %ns999, %zs1000
  %cvor1004 = or i64 %cs1001, %vs1002
  %nzcv1005 = or i64 %nzor1003, %cvor1004
  %wp1006 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1005, ptr %wp1006, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d00 word 0x9a893168
  %r1007.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1007 = load i64, ptr %r1007.p, align 8, !alias.scope !3, !noalias !4
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %r1009.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1009 = load i64, ptr %r1009.p, align 8, !alias.scope !3, !noalias !4
  %fsh1011 = lshr i64 %r1009, 29
  %ftr1012 = trunc i64 %fsh1011 to i1
  %cond1010 = xor i1 %ftr1012, true
  %sel1013 = select i1 %cond1010, i64 %r1007, i64 %r1008
  %wp1014 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1013, ptr %wp1014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d04 word 0x12005d49
  %r1015.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1015 = load i64, ptr %r1015.p, align 8, !alias.scope !3, !noalias !4
  %c1016 = trunc i64 %r1015 to i32
  %t1017 = and i32 %c1016, 16777215
  %c1018 = zext i32 %t1017 to i64
  %wp1019 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1018, ptr %wp1019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d08 word 0xf9400108
  %r1020.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1020 = load i64, ptr %r1020.p, align 8, !alias.scope !3, !noalias !4
  %gmp1021 = inttoptr i64 %r1020 to ptr
  %gml1022 = load i64, ptr %gmp1021, align 1, !alias.scope !4, !noalias !3
  %wp1023 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1022, ptr %wp1023, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d0c word 0xf9400108
  %r1024.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1024 = load i64, ptr %r1024.p, align 8, !alias.scope !3, !noalias !4
  %gmp1025 = inttoptr i64 %r1024 to ptr
  %gml1026 = load i64, ptr %gmp1025, align 1, !alias.scope !4, !noalias !3
  %wp1027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1026, ptr %wp1027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d10 word 0xf9402508
  %r1028.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1028 = load i64, ptr %r1028.p, align 8, !alias.scope !3, !noalias !4
  %t1029 = add i64 %r1028, 72
  %gmp1030 = inttoptr i64 %t1029 to ptr
  %gml1031 = load i64, ptr %gmp1030, align 1, !alias.scope !4, !noalias !3
  %wp1032 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1031, ptr %wp1032, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d14 word 0xbc695900
  %r1033.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1033 = load i64, ptr %r1033.p, align 8, !alias.scope !3, !noalias !4
  %r1034.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1034 = load i64, ptr %r1034.p, align 8, !alias.scope !3, !noalias !4
  %c1035 = trunc i64 %r1034 to i32
  %c1036 = zext i32 %c1035 to i64
  %t1037 = shl i64 %c1036, 2
  %t1038 = add i64 %r1033, %t1037
  %gmp1039 = inttoptr i64 %t1038 to ptr
  %gml1040 = load i32, ptr %gmp1039, align 1, !alias.scope !4, !noalias !3
  %c1041 = zext i32 %gml1040 to i128
  %wp1042 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1041, ptr %wp1042, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d18 word 0x17ffffe7
  br label %L_8001d2cb4
L_8001d2d1c:
  ; @pc 0x8001d2d1c word 0xbd400140
  %r1043.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1043 = load i64, ptr %r1043.p, align 8, !alias.scope !3, !noalias !4
  %gmp1044 = inttoptr i64 %r1043 to ptr
  %gml1045 = load i32, ptr %gmp1044, align 1, !alias.scope !4, !noalias !3
  %c1046 = zext i32 %gml1045 to i128
  %wp1047 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1046, ptr %wp1047, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d20 word 0x1e202040
  %fcmp1048 = call i64 @rt_fp_cmp_s(ptr %c, i32 2, i32 0, i32 0)
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1048, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d24 word 0x54fffbe1
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %fsh1052 = lshr i64 %r1050, 30
  %ftr1053 = trunc i64 %fsh1052 to i1
  %cond1051 = xor i1 %ftr1053, true
  br i1 %cond1051, label %L_8001d2ca0, label %L_8001d2d28_ft
L_8001d2d30:
  ; @pc 0x8001d2d30 word 0xf9400808
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %t1061 = add i64 %r1060, 16
  %gmp1062 = inttoptr i64 %t1061 to ptr
  %gml1063 = load i64, ptr %gmp1062, align 1, !alias.scope !4, !noalias !3
  %wp1064 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1063, ptr %wp1064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d34 word 0x91008109
  %r1065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1065 = load i64, ptr %r1065.p, align 8, !alias.scope !3, !noalias !4
  %t1066 = add i64 %r1065, 32
  %wp1067 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1066, ptr %wp1067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d38 word 0xb9401908
  %r1068.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1068 = load i64, ptr %r1068.p, align 8, !alias.scope !3, !noalias !4
  %t1069 = add i64 %r1068, 24
  %gmp1070 = inttoptr i64 %t1069 to ptr
  %gml1071 = load i32, ptr %gmp1070, align 1, !alias.scope !4, !noalias !3
  %c1072 = zext i32 %gml1071 to i64
  %wp1073 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1072, ptr %wp1073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d3c word 0x8b080d2b
  %r1074.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1074 = load i64, ptr %r1074.p, align 8, !alias.scope !3, !noalias !4
  %r1075.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1075 = load i64, ptr %r1075.p, align 8, !alias.scope !3, !noalias !4
  %t1076 = shl i64 %r1075, 3
  %t1077 = add i64 %r1074, %t1076
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d40 word 0x7100091f
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %c1080 = trunc i64 %r1079 to i32
  %t1081 = sub i32 %c1080, 2
  %fn1082 = icmp slt i32 %t1081, 0
  %fz1083 = icmp eq i32 %t1081, 0
  %fc1084 = icmp uge i32 %c1080, 2
  %fx11085 = xor i32 %c1080, 2
  %fx21086 = xor i32 %c1080, %t1081
  %fva1087 = and i32 %fx11085, %fx21086
  %fv1088 = icmp slt i32 %fva1087, 0
  %nz1089 = zext i1 %fn1082 to i64
  %zz1090 = zext i1 %fz1083 to i64
  %cz1091 = zext i1 %fc1084 to i64
  %vz1092 = zext i1 %fv1088 to i64
  %ns1093 = shl i64 %nz1089, 31
  %zs1094 = shl i64 %zz1090, 30
  %cs1095 = shl i64 %cz1091, 29
  %vs1096 = shl i64 %vz1092, 28
  %nzor1097 = or i64 %ns1093, %zs1094
  %cvor1098 = or i64 %cs1095, %vs1096
  %nzcv1099 = or i64 %nzor1097, %cvor1098
  %wp1100 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1099, ptr %wp1100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d44 word 0x9a893168
  %r1101.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1101 = load i64, ptr %r1101.p, align 8, !alias.scope !3, !noalias !4
  %r1102.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1102 = load i64, ptr %r1102.p, align 8, !alias.scope !3, !noalias !4
  %r1103.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1103 = load i64, ptr %r1103.p, align 8, !alias.scope !3, !noalias !4
  %fsh1105 = lshr i64 %r1103, 29
  %ftr1106 = trunc i64 %fsh1105 to i1
  %cond1104 = xor i1 %ftr1106, true
  %sel1107 = select i1 %cond1104, i64 %r1101, i64 %r1102
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1107, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d48 word 0xf9400108
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %gmp1110 = inttoptr i64 %r1109 to ptr
  %gml1111 = load i64, ptr %gmp1110, align 1, !alias.scope !4, !noalias !3
  %wp1112 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1111, ptr %wp1112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d4c word 0xf9400108
  %r1113.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1113 = load i64, ptr %r1113.p, align 8, !alias.scope !3, !noalias !4
  %gmp1114 = inttoptr i64 %r1113 to ptr
  %gml1115 = load i64, ptr %gmp1114, align 1, !alias.scope !4, !noalias !3
  %wp1116 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1115, ptr %wp1116, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d50 word 0xf9402908
  %r1117.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1117 = load i64, ptr %r1117.p, align 8, !alias.scope !3, !noalias !4
  %t1118 = add i64 %r1117, 80
  %gmp1119 = inttoptr i64 %t1118 to ptr
  %gml1120 = load i64, ptr %gmp1119, align 1, !alias.scope !4, !noalias !3
  %wp1121 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1120, ptr %wp1121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d54 word 0xb4000f48
  %r1122.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1122 = load i64, ptr %r1122.p, align 8, !alias.scope !3, !noalias !4
  %cmp1123 = icmp eq i64 %r1122, 0
  br i1 %cmp1123, label %L_8001d2f3c, label %L_8001d2d58_ft
L_8001d2dc8:
  ; @pc 0x8001d2dc8 word 0xb001bc0e
  %wp1255 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419847168, ptr %wp1255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2dcc word 0xf94311ce
  %r1256.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1256 = load i64, ptr %r1256.p, align 8, !alias.scope !3, !noalias !4
  %t1257 = add i64 %r1256, 1568
  %gmp1258 = inttoptr i64 %t1257 to ptr
  %gml1259 = load i64, ptr %gmp1258, align 1, !alias.scope !4, !noalias !3
  %wp1260 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml1259, ptr %wp1260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2dd0 word 0x17ffff49
  br label %L_8001d2af4
L_8001d2dd4:
  ; @pc 0x8001d2dd4 word 0x2f00e401
  %wp1261 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 0, ptr %wp1261, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2dd8 word 0x710015bf
  %r1262.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1262 = load i64, ptr %r1262.p, align 8, !alias.scope !3, !noalias !4
  %c1263 = trunc i64 %r1262 to i32
  %t1264 = sub i32 %c1263, 5
  %fn1265 = icmp slt i32 %t1264, 0
  %fz1266 = icmp eq i32 %t1264, 0
  %fc1267 = icmp uge i32 %c1263, 5
  %fx11268 = xor i32 %c1263, 5
  %fx21269 = xor i32 %c1263, %t1264
  %fva1270 = and i32 %fx11268, %fx21269
  %fv1271 = icmp slt i32 %fva1270, 0
  %nz1272 = zext i1 %fn1265 to i64
  %zz1273 = zext i1 %fz1266 to i64
  %cz1274 = zext i1 %fc1267 to i64
  %vz1275 = zext i1 %fv1271 to i64
  %ns1276 = shl i64 %nz1272, 31
  %zs1277 = shl i64 %zz1273, 30
  %cs1278 = shl i64 %cz1274, 29
  %vs1279 = shl i64 %vz1275, 28
  %nzor1280 = or i64 %ns1276, %zs1277
  %cvor1281 = or i64 %cs1278, %vs1279
  %nzcv1282 = or i64 %nzor1280, %cvor1281
  %wp1283 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1282, ptr %wp1283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ddc word 0x54ffea68
  %r1284.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1284 = load i64, ptr %r1284.p, align 8, !alias.scope !3, !noalias !4
  %fsh1286 = lshr i64 %r1284, 29
  %ftr1287 = trunc i64 %fsh1286 to i1
  %fsh1288 = lshr i64 %r1284, 30
  %ftr1289 = trunc i64 %fsh1288 to i1
  %fnz1290 = xor i1 %ftr1289, true
  %cond1285 = and i1 %ftr1287, %fnz1290
  br i1 %cond1285, label %L_8001d2b28, label %L_8001d2de0_ft
L_8001d2e04:
  ; @pc 0x8001d2e04 word 0x2a1f03ea
  %t1347 = or i32 0, 0
  %c1348 = zext i32 %t1347 to i64
  %wp1349 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1348, ptr %wp1349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e08 word 0x17ffff54
  br label %L_8001d2b58
L_8001d2e0c:
  ; @pc 0x8001d2e0c word 0xaa1f03ef
  %t1350 = or i64 0, 0
  %wp1351 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1350, ptr %wp1351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e10 word 0x17ffff73
  br label %L_8001d2bdc
L_8001d2e14:
  ; @pc 0x8001d2e14 word 0x90015223
  %wp1352 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34405965824, ptr %wp1352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e18 word 0x912f4463
  %r1353.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1353 = load i64, ptr %r1353.p, align 8, !alias.scope !3, !noalias !4
  %t1354 = add i64 %r1353, 3025
  %wp1355 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1354, ptr %wp1355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e1c word 0xf81f03a2
  %r1356.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1356 = load i64, ptr %r1356.p, align 8, !alias.scope !3, !noalias !4
  %t1357 = add i64 %r1356, -16
  %r1358.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1358 = load i64, ptr %r1358.p, align 8, !alias.scope !3, !noalias !4
  %gmp1359 = inttoptr i64 %t1357 to ptr
  store i64 %r1358, ptr %gmp1359, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e20 word 0x528003a1
  %c1360 = zext i32 29 to i64
  %wp1361 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1360, ptr %wp1361, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e24 word 0xaa0803e2
  %r1362.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1362 = load i64, ptr %r1362.p, align 8, !alias.scope !3, !noalias !4
  %t1363 = or i64 0, %r1362
  %wp1364 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1363, ptr %wp1364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e28 word 0xf9000bed
  %r1365.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1365 = load i64, ptr %r1365.p, align 8, !alias.scope !3, !noalias !4
  %t1366 = add i64 %r1365, 16
  %r1367.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1367 = load i64, ptr %r1367.p, align 8, !alias.scope !3, !noalias !4
  %gmp1368 = inttoptr i64 %t1366 to ptr
  store i64 %r1367, ptr %gmp1368, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e2c word 0xa90027ea
  %r1369.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1369 = load i64, ptr %r1369.p, align 8, !alias.scope !3, !noalias !4
  %t1370 = add i64 %r1369, 8
  %r1371.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1371 = load i64, ptr %r1371.p, align 8, !alias.scope !3, !noalias !4
  %gmp1372 = inttoptr i64 %r1369 to ptr
  store i64 %r1371, ptr %gmp1372, align 1, !alias.scope !4, !noalias !3
  %r1373.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1373 = load i64, ptr %r1373.p, align 8, !alias.scope !3, !noalias !4
  %gmp1374 = inttoptr i64 %t1370 to ptr
  store i64 %r1373, ptr %gmp1374, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e30 word 0x941f85ab
  %wp1375 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361650740, ptr %wp1375, align 8, !alias.scope !3, !noalias !4
  call void @f_8009b44dc(ptr %c)
  ; @pc 0x8001d2e34 word 0x1400000a
  br label %L_8001d2e5c
L_8001d2e38:
  ; @pc 0x8001d2e38 word 0xf00154e3
  %wp1376 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34406338560, ptr %wp1376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e3c word 0x913f9463
  %r1377.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1377 = load i64, ptr %r1377.p, align 8, !alias.scope !3, !noalias !4
  %t1378 = add i64 %r1377, 4069
  %wp1379 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1378, ptr %wp1379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e40 word 0xf81f03a2
  %r1380.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1380 = load i64, ptr %r1380.p, align 8, !alias.scope !3, !noalias !4
  %t1381 = add i64 %r1380, -16
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %gmp1383 = inttoptr i64 %t1381 to ptr
  store i64 %r1382, ptr %gmp1383, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e44 word 0x52800261
  %c1384 = zext i32 19 to i64
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1384, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e48 word 0xaa0803e2
  %r1386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1386 = load i64, ptr %r1386.p, align 8, !alias.scope !3, !noalias !4
  %t1387 = or i64 0, %r1386
  %wp1388 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t1387, ptr %wp1388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e4c word 0xf9000bed
  %r1389.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1389 = load i64, ptr %r1389.p, align 8, !alias.scope !3, !noalias !4
  %t1390 = add i64 %r1389, 16
  %r1391.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1391 = load i64, ptr %r1391.p, align 8, !alias.scope !3, !noalias !4
  %gmp1392 = inttoptr i64 %t1390 to ptr
  store i64 %r1391, ptr %gmp1392, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e50 word 0x2a1f03e5
  %t1393 = or i32 0, 0
  %c1394 = zext i32 %t1393 to i64
  %wp1395 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1394, ptr %wp1395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e54 word 0xa90027ea
  %r1396.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1396 = load i64, ptr %r1396.p, align 8, !alias.scope !3, !noalias !4
  %t1397 = add i64 %r1396, 8
  %r1398.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1398 = load i64, ptr %r1398.p, align 8, !alias.scope !3, !noalias !4
  %gmp1399 = inttoptr i64 %r1396 to ptr
  store i64 %r1398, ptr %gmp1399, align 1, !alias.scope !4, !noalias !3
  %r1400.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1400 = load i64, ptr %r1400.p, align 8, !alias.scope !3, !noalias !4
  %gmp1401 = inttoptr i64 %t1397 to ptr
  store i64 %r1400, ptr %gmp1401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2e58 word 0x941f85a1
  %wp1402 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361650780, ptr %wp1402, align 8, !alias.scope !3, !noalias !4
  call void @f_8009b44dc(ptr %c)
  br label %L_8001d2e5c
L_8001d2e5c:
  ; @pc 0x8001d2e5c word 0xa940b7e9
  %r1403.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1403 = load i64, ptr %r1403.p, align 8, !alias.scope !3, !noalias !4
  %t1404 = add i64 %r1403, 8
  %t1405 = add i64 %t1404, 8
  %gmp1406 = inttoptr i64 %t1404 to ptr
  %gml1407 = load i64, ptr %gmp1406, align 1, !alias.scope !4, !noalias !3
  %gmp1408 = inttoptr i64 %t1405 to ptr
  %gml1409 = load i64, ptr %gmp1408, align 1, !alias.scope !4, !noalias !3
  %wp1410 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1407, ptr %wp1410, align 8, !alias.scope !3, !noalias !4
  %wp1411 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1409, ptr %wp1411, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e60 word 0xf94003ea
  %r1412.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1412 = load i64, ptr %r1412.p, align 8, !alias.scope !3, !noalias !4
  %gmp1413 = inttoptr i64 %r1412 to ptr
  %gml1414 = load i64, ptr %gmp1413, align 1, !alias.scope !4, !noalias !3
  %wp1415 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1414, ptr %wp1415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e64 word 0xf85f03a2
  %r1416.p = getelementptr inbounds i8, ptr %c, i64 232
  %r1416 = load i64, ptr %r1416.p, align 8, !alias.scope !3, !noalias !4
  %t1417 = add i64 %r1416, -16
  %gmp1418 = inttoptr i64 %t1417 to ptr
  %gml1419 = load i64, ptr %gmp1418, align 1, !alias.scope !4, !noalias !3
  %wp1420 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml1419, ptr %wp1420, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2e68
L_8001d2e68:
  ; @pc 0x8001d2e68 word 0xf001bbc8
  %wp1421 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419822592, ptr %wp1421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e6c word 0xb001bc0b
  %wp1422 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419847168, ptr %wp1422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e70 word 0xf945b908
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %t1424 = add i64 %r1423, 2928
  %gmp1425 = inttoptr i64 %t1424 to ptr
  %gml1426 = load i64, ptr %gmp1425, align 1, !alias.scope !4, !noalias !3
  %wp1427 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1426, ptr %wp1427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e74 word 0xf943116b
  %r1428.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1428 = load i64, ptr %r1428.p, align 8, !alias.scope !3, !noalias !4
  %t1429 = add i64 %r1428, 1568
  %gmp1430 = inttoptr i64 %t1429 to ptr
  %gml1431 = load i64, ptr %gmp1430, align 1, !alias.scope !4, !noalias !3
  %wp1432 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1431, ptr %wp1432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e78 word 0xb00152e3
  %wp1433 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34406068224, ptr %wp1433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e7c word 0x91062c63
  %r1434.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1434 = load i64, ptr %r1434.p, align 8, !alias.scope !3, !noalias !4
  %t1435 = add i64 %r1434, 395
  %wp1436 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1435, ptr %wp1436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e80 word 0xb940184c
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %t1438 = add i64 %r1437, 24
  %gmp1439 = inttoptr i64 %t1438 to ptr
  %gml1440 = load i32, ptr %gmp1439, align 1, !alias.scope !4, !noalias !3
  %c1441 = zext i32 %gml1440 to i64
  %wp1442 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c1441, ptr %wp1442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e84 word 0x52800261
  %c1443 = zext i32 19 to i64
  %wp1444 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1443, ptr %wp1444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e88 word 0x7215019f
  %r1445.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1445 = load i64, ptr %r1445.p, align 8, !alias.scope !3, !noalias !4
  %c1446 = trunc i64 %r1445 to i32
  %t1447 = and i32 %c1446, 2048
  %fn1448 = icmp slt i32 %t1447, 0
  %fz1449 = icmp eq i32 %t1447, 0
  %nz1450 = zext i1 %fn1448 to i64
  %zz1451 = zext i1 %fz1449 to i64
  %ns1452 = shl i64 %nz1450, 31
  %zs1453 = shl i64 %zz1451, 30
  %nzcv1454 = or i64 %ns1452, %zs1453
  %wp1455 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1454, ptr %wp1455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e8c word 0xf9402c42
  %r1456.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1456 = load i64, ptr %r1456.p, align 8, !alias.scope !3, !noalias !4
  %t1457 = add i64 %r1456, 88
  %gmp1458 = inttoptr i64 %t1457 to ptr
  %gml1459 = load i64, ptr %gmp1458, align 1, !alias.scope !4, !noalias !3
  %wp1460 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %gml1459, ptr %wp1460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e90 word 0x794001a5
  %r1461.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1461 = load i64, ptr %r1461.p, align 8, !alias.scope !3, !noalias !4
  %gmp1462 = inttoptr i64 %r1461 to ptr
  %gml1463 = load i16, ptr %gmp1462, align 1, !alias.scope !4, !noalias !3
  %c1464 = zext i16 %gml1463 to i64
  %wp1465 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1464, ptr %wp1465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e94 word 0x9a880168
  %r1466.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1466 = load i64, ptr %r1466.p, align 8, !alias.scope !3, !noalias !4
  %r1467.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1467 = load i64, ptr %r1467.p, align 8, !alias.scope !3, !noalias !4
  %r1468.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1468 = load i64, ptr %r1468.p, align 8, !alias.scope !3, !noalias !4
  %fsh1470 = lshr i64 %r1468, 30
  %cond1469 = trunc i64 %fsh1470 to i1
  %sel1471 = select i1 %cond1469, i64 %r1466, i64 %r1467
  %wp1472 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1471, ptr %wp1472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e98 word 0xf9400100
  %r1473.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1473 = load i64, ptr %r1473.p, align 8, !alias.scope !3, !noalias !4
  %gmp1474 = inttoptr i64 %r1473 to ptr
  %gml1475 = load i64, ptr %gmp1474, align 1, !alias.scope !4, !noalias !3
  %wp1476 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1475, ptr %wp1476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2e9c word 0x52800308
  %c1477 = zext i32 24 to i64
  %wp1478 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1477, ptr %wp1478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ea0 word 0x9ba82548
  %r1479.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1479 = load i64, ptr %r1479.p, align 8, !alias.scope !3, !noalias !4
  %c1480 = trunc i64 %r1479 to i32
  %c1481 = zext i32 %c1480 to i64
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %c1483 = trunc i64 %r1482 to i32
  %c1484 = zext i32 %c1483 to i64
  %t1485 = mul i64 %c1481, %c1484
  %r1486.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1486 = load i64, ptr %r1486.p, align 8, !alias.scope !3, !noalias !4
  %t1487 = add i64 %r1486, %t1485
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1487, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ea4 word 0xf9400504
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %t1490 = add i64 %r1489, 8
  %gmp1491 = inttoptr i64 %t1490 to ptr
  %gml1492 = load i64, ptr %gmp1491, align 1, !alias.scope !4, !noalias !3
  %wp1493 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %gml1492, ptr %wp1493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ea8 word 0x941f858d
  %wp1494 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361650860, ptr %wp1494, align 8, !alias.scope !3, !noalias !4
  call void @f_8009b44dc(ptr %c)
  br label %L_8001d2eac
L_8001d2eac:
  ; @pc 0x8001d2eac word 0x52aff008
  %c1495 = zext i32 2139095040 to i64
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1495, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2eb0 word 0x1e270100
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %c1498 = trunc i64 %r1497 to i32
  %c1499 = zext i32 %c1498 to i128
  %wp1500 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1499, ptr %wp1500, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2eb4 word 0x17ffff80
  br label %L_8001d2cb4
L_8001d2eb8:
  ; @pc 0x8001d2eb8 word 0xd37df1ed
  %r1501.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1501 = load i64, ptr %r1501.p, align 8, !alias.scope !3, !noalias !4
  %ror1502 = call i64 @llvm.fshr.i64(i64 %r1501, i64 %r1501, i64 61)
  %t1503 = and i64 %ror1502, -8
  %wp1504 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t1503, ptr %wp1504, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ebc word 0x78ed690f
  %r1505.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1505 = load i64, ptr %r1505.p, align 8, !alias.scope !3, !noalias !4
  %r1506.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1506 = load i64, ptr %r1506.p, align 8, !alias.scope !3, !noalias !4
  %t1507 = add i64 %r1505, %r1506
  %gmp1508 = inttoptr i64 %t1507 to ptr
  %gml1509 = load i16, ptr %gmp1508, align 1, !alias.scope !4, !noalias !3
  %c1510 = sext i16 %gml1509 to i32
  %c1511 = zext i32 %c1510 to i64
  %wp1512 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1511, ptr %wp1512, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ec0 word 0x12003ded
  %r1513.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1513 = load i64, ptr %r1513.p, align 8, !alias.scope !3, !noalias !4
  %c1514 = trunc i64 %r1513 to i32
  %t1515 = and i32 %c1514, 65535
  %c1516 = zext i32 %t1515 to i64
  %wp1517 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1516, ptr %wp1517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ec4 word 0x36ffec4f
  %r1518.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1518 = load i64, ptr %r1518.p, align 8, !alias.scope !3, !noalias !4
  %t1519 = and i64 %r1518, 2147483648
  %cmp1520 = icmp eq i64 %t1519, 0
  br i1 %cmp1520, label %L_8001d2c4c, label %L_8001d2ec8
L_8001d2ec8:
  ; @pc 0x8001d2ec8 word 0xb94059c8
  %r1521.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1521 = load i64, ptr %r1521.p, align 8, !alias.scope !3, !noalias !4
  %t1522 = add i64 %r1521, 88
  %gmp1523 = inttoptr i64 %t1522 to ptr
  %gml1524 = load i32, ptr %gmp1523, align 1, !alias.scope !4, !noalias !3
  %c1525 = zext i32 %gml1524 to i64
  %wp1526 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1525, ptr %wp1526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ecc word 0x51000d0d
  %r1527.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1527 = load i64, ptr %r1527.p, align 8, !alias.scope !3, !noalias !4
  %c1528 = trunc i64 %r1527 to i32
  %t1529 = sub i32 %c1528, 3
  %c1530 = zext i32 %t1529 to i64
  %wp1531 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1530, ptr %wp1531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ed0 word 0x710009bf
  %r1532.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1532 = load i64, ptr %r1532.p, align 8, !alias.scope !3, !noalias !4
  %c1533 = trunc i64 %r1532 to i32
  %t1534 = sub i32 %c1533, 2
  %fn1535 = icmp slt i32 %t1534, 0
  %fz1536 = icmp eq i32 %t1534, 0
  %fc1537 = icmp uge i32 %c1533, 2
  %fx11538 = xor i32 %c1533, 2
  %fx21539 = xor i32 %c1533, %t1534
  %fva1540 = and i32 %fx11538, %fx21539
  %fv1541 = icmp slt i32 %fva1540, 0
  %nz1542 = zext i1 %fn1535 to i64
  %zz1543 = zext i1 %fz1536 to i64
  %cz1544 = zext i1 %fc1537 to i64
  %vz1545 = zext i1 %fv1541 to i64
  %ns1546 = shl i64 %nz1542, 31
  %zs1547 = shl i64 %zz1543, 30
  %cs1548 = shl i64 %cz1544, 29
  %vs1549 = shl i64 %vz1545, 28
  %nzor1550 = or i64 %ns1546, %zs1547
  %cvor1551 = or i64 %cs1548, %vs1549
  %nzcv1552 = or i64 %nzor1550, %cvor1551
  %wp1553 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1552, ptr %wp1553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ed4 word 0x540000a9
  %r1554.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1554 = load i64, ptr %r1554.p, align 8, !alias.scope !3, !noalias !4
  %fsh1556 = lshr i64 %r1554, 29
  %ftr1557 = trunc i64 %fsh1556 to i1
  %fsh1558 = lshr i64 %r1554, 30
  %ftr1559 = trunc i64 %fsh1558 to i1
  %fnz1560 = xor i1 %ftr1559, true
  %fhi1561 = and i1 %ftr1557, %fnz1560
  %cond1555 = xor i1 %fhi1561, true
  br i1 %cond1555, label %L_8001d2ee8, label %L_8001d2ed8_ft
L_8001d2ee8:
  ; @pc 0x8001d2ee8 word 0xf940504d
  %r1579.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1579 = load i64, ptr %r1579.p, align 8, !alias.scope !3, !noalias !4
  %t1580 = add i64 %r1579, 160
  %gmp1581 = inttoptr i64 %t1580 to ptr
  %gml1582 = load i64, ptr %gmp1581, align 1, !alias.scope !4, !noalias !3
  %wp1583 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1582, ptr %wp1583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2eec word 0xb400324d
  %r1584.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1584 = load i64, ptr %r1584.p, align 8, !alias.scope !3, !noalias !4
  %cmp1585 = icmp eq i64 %r1584, 0
  br i1 %cmp1585, label %L_8001d3534, label %L_8001d2ef0_ft
L_8001d2f2c:
  ; @pc 0x8001d2f2c word 0xf0015101
  %wp1685 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34405830656, ptr %wp1685, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f30 word 0x91055021
  %r1686.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1686 = load i64, ptr %r1686.p, align 8, !alias.scope !3, !noalias !4
  %t1687 = add i64 %r1686, 340
  %wp1688 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1687, ptr %wp1688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f34 word 0x2a0803e2
  %r1689.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1689 = load i64, ptr %r1689.p, align 8, !alias.scope !3, !noalias !4
  %c1690 = trunc i64 %r1689 to i32
  %t1691 = or i32 0, %c1690
  %c1692 = zext i32 %t1691 to i64
  %wp1693 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c1692, ptr %wp1693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f38 word 0x949c0399
  %wp1694 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361651004, ptr %wp1694, align 8, !alias.scope !3, !noalias !4
  call void @f_8028d3d9c(ptr %c)
  br label %L_8001d2f3c
L_8001d2f3c:
  ; @pc 0x8001d2f3c word 0x2f00e400
  %wp1695 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1695, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f40 word 0x17ffff5d
  br label %L_8001d2cb4
L_8001d2f44:
  ; @pc 0x8001d2f44 word 0xf9400808
  %r1696.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1696 = load i64, ptr %r1696.p, align 8, !alias.scope !3, !noalias !4
  %t1697 = add i64 %r1696, 16
  %gmp1698 = inttoptr i64 %t1697 to ptr
  %gml1699 = load i64, ptr %gmp1698, align 1, !alias.scope !4, !noalias !3
  %wp1700 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1699, ptr %wp1700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f48 word 0x2f00e400
  %wp1701 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1701, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f4c word 0x91008109
  %r1702.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1702 = load i64, ptr %r1702.p, align 8, !alias.scope !3, !noalias !4
  %t1703 = add i64 %r1702, 32
  %wp1704 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1703, ptr %wp1704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f50 word 0xb9401908
  %r1705.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1705 = load i64, ptr %r1705.p, align 8, !alias.scope !3, !noalias !4
  %t1706 = add i64 %r1705, 24
  %gmp1707 = inttoptr i64 %t1706 to ptr
  %gml1708 = load i32, ptr %gmp1707, align 1, !alias.scope !4, !noalias !3
  %c1709 = zext i32 %gml1708 to i64
  %wp1710 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1709, ptr %wp1710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f54 word 0x8b080d2b
  %r1711.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1711 = load i64, ptr %r1711.p, align 8, !alias.scope !3, !noalias !4
  %r1712.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1712 = load i64, ptr %r1712.p, align 8, !alias.scope !3, !noalias !4
  %t1713 = shl i64 %r1712, 3
  %t1714 = add i64 %r1711, %t1713
  %wp1715 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1714, ptr %wp1715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f58 word 0x7100091f
  %r1716.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1716 = load i64, ptr %r1716.p, align 8, !alias.scope !3, !noalias !4
  %c1717 = trunc i64 %r1716 to i32
  %t1718 = sub i32 %c1717, 2
  %fn1719 = icmp slt i32 %t1718, 0
  %fz1720 = icmp eq i32 %t1718, 0
  %fc1721 = icmp uge i32 %c1717, 2
  %fx11722 = xor i32 %c1717, 2
  %fx21723 = xor i32 %c1717, %t1718
  %fva1724 = and i32 %fx11722, %fx21723
  %fv1725 = icmp slt i32 %fva1724, 0
  %nz1726 = zext i1 %fn1719 to i64
  %zz1727 = zext i1 %fz1720 to i64
  %cz1728 = zext i1 %fc1721 to i64
  %vz1729 = zext i1 %fv1725 to i64
  %ns1730 = shl i64 %nz1726, 31
  %zs1731 = shl i64 %zz1727, 30
  %cs1732 = shl i64 %cz1728, 29
  %vs1733 = shl i64 %vz1729, 28
  %nzor1734 = or i64 %ns1730, %zs1731
  %cvor1735 = or i64 %cs1732, %vs1733
  %nzcv1736 = or i64 %nzor1734, %cvor1735
  %wp1737 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1736, ptr %wp1737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f5c word 0x9a893168
  %r1738.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1738 = load i64, ptr %r1738.p, align 8, !alias.scope !3, !noalias !4
  %r1739.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1739 = load i64, ptr %r1739.p, align 8, !alias.scope !3, !noalias !4
  %r1740.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1740 = load i64, ptr %r1740.p, align 8, !alias.scope !3, !noalias !4
  %fsh1742 = lshr i64 %r1740, 29
  %ftr1743 = trunc i64 %fsh1742 to i1
  %cond1741 = xor i1 %ftr1743, true
  %sel1744 = select i1 %cond1741, i64 %r1738, i64 %r1739
  %wp1745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1744, ptr %wp1745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f60 word 0xf9400108
  %r1746.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1746 = load i64, ptr %r1746.p, align 8, !alias.scope !3, !noalias !4
  %gmp1747 = inttoptr i64 %r1746 to ptr
  %gml1748 = load i64, ptr %gmp1747, align 1, !alias.scope !4, !noalias !3
  %wp1749 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1748, ptr %wp1749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f64 word 0xf9400108
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %gmp1751 = inttoptr i64 %r1750 to ptr
  %gml1752 = load i64, ptr %gmp1751, align 1, !alias.scope !4, !noalias !3
  %wp1753 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1752, ptr %wp1753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f68 word 0xf9402908
  %r1754.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1754 = load i64, ptr %r1754.p, align 8, !alias.scope !3, !noalias !4
  %t1755 = add i64 %r1754, 80
  %gmp1756 = inttoptr i64 %t1755 to ptr
  %gml1757 = load i64, ptr %gmp1756, align 1, !alias.scope !4, !noalias !3
  %wp1758 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1757, ptr %wp1758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f6c word 0xb4ffea48
  %r1759.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1759 = load i64, ptr %r1759.p, align 8, !alias.scope !3, !noalias !4
  %cmp1760 = icmp eq i64 %r1759, 0
  br i1 %cmp1760, label %L_8001d2cb4, label %L_8001d2f70_ft
L_8001d2f7c:
  ; @pc 0x8001d2f7c word 0xf9400808
  %r1765.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1765 = load i64, ptr %r1765.p, align 8, !alias.scope !3, !noalias !4
  %t1766 = add i64 %r1765, 16
  %gmp1767 = inttoptr i64 %t1766 to ptr
  %gml1768 = load i64, ptr %gmp1767, align 1, !alias.scope !4, !noalias !3
  %wp1769 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1768, ptr %wp1769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f80 word 0x2f00e400
  %wp1770 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1770, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f84 word 0x91008109
  %r1771.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1771 = load i64, ptr %r1771.p, align 8, !alias.scope !3, !noalias !4
  %t1772 = add i64 %r1771, 32
  %wp1773 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1772, ptr %wp1773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f88 word 0xb9401908
  %r1774.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1774 = load i64, ptr %r1774.p, align 8, !alias.scope !3, !noalias !4
  %t1775 = add i64 %r1774, 24
  %gmp1776 = inttoptr i64 %t1775 to ptr
  %gml1777 = load i32, ptr %gmp1776, align 1, !alias.scope !4, !noalias !3
  %c1778 = zext i32 %gml1777 to i64
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1778, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f8c word 0x8b080d2b
  %r1780.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1780 = load i64, ptr %r1780.p, align 8, !alias.scope !3, !noalias !4
  %r1781.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1781 = load i64, ptr %r1781.p, align 8, !alias.scope !3, !noalias !4
  %t1782 = shl i64 %r1781, 3
  %t1783 = add i64 %r1780, %t1782
  %wp1784 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1783, ptr %wp1784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f90 word 0x7100091f
  %r1785.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1785 = load i64, ptr %r1785.p, align 8, !alias.scope !3, !noalias !4
  %c1786 = trunc i64 %r1785 to i32
  %t1787 = sub i32 %c1786, 2
  %fn1788 = icmp slt i32 %t1787, 0
  %fz1789 = icmp eq i32 %t1787, 0
  %fc1790 = icmp uge i32 %c1786, 2
  %fx11791 = xor i32 %c1786, 2
  %fx21792 = xor i32 %c1786, %t1787
  %fva1793 = and i32 %fx11791, %fx21792
  %fv1794 = icmp slt i32 %fva1793, 0
  %nz1795 = zext i1 %fn1788 to i64
  %zz1796 = zext i1 %fz1789 to i64
  %cz1797 = zext i1 %fc1790 to i64
  %vz1798 = zext i1 %fv1794 to i64
  %ns1799 = shl i64 %nz1795, 31
  %zs1800 = shl i64 %zz1796, 30
  %cs1801 = shl i64 %cz1797, 29
  %vs1802 = shl i64 %vz1798, 28
  %nzor1803 = or i64 %ns1799, %zs1800
  %cvor1804 = or i64 %cs1801, %vs1802
  %nzcv1805 = or i64 %nzor1803, %cvor1804
  %wp1806 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1805, ptr %wp1806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f94 word 0x9a893168
  %r1807.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1807 = load i64, ptr %r1807.p, align 8, !alias.scope !3, !noalias !4
  %r1808.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1808 = load i64, ptr %r1808.p, align 8, !alias.scope !3, !noalias !4
  %r1809.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1809 = load i64, ptr %r1809.p, align 8, !alias.scope !3, !noalias !4
  %fsh1811 = lshr i64 %r1809, 29
  %ftr1812 = trunc i64 %fsh1811 to i1
  %cond1810 = xor i1 %ftr1812, true
  %sel1813 = select i1 %cond1810, i64 %r1807, i64 %r1808
  %wp1814 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1813, ptr %wp1814, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f98 word 0xf9400108
  %r1815.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1815 = load i64, ptr %r1815.p, align 8, !alias.scope !3, !noalias !4
  %gmp1816 = inttoptr i64 %r1815 to ptr
  %gml1817 = load i64, ptr %gmp1816, align 1, !alias.scope !4, !noalias !3
  %wp1818 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1817, ptr %wp1818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f9c word 0xf9400108
  %r1819.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1819 = load i64, ptr %r1819.p, align 8, !alias.scope !3, !noalias !4
  %gmp1820 = inttoptr i64 %r1819 to ptr
  %gml1821 = load i64, ptr %gmp1820, align 1, !alias.scope !4, !noalias !3
  %wp1822 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1821, ptr %wp1822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fa0 word 0xf9402908
  %r1823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1823 = load i64, ptr %r1823.p, align 8, !alias.scope !3, !noalias !4
  %t1824 = add i64 %r1823, 80
  %gmp1825 = inttoptr i64 %t1824 to ptr
  %gml1826 = load i64, ptr %gmp1825, align 1, !alias.scope !4, !noalias !3
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fa4 word 0xb4ffe888
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %cmp1829 = icmp eq i64 %r1828, 0
  br i1 %cmp1829, label %L_8001d2cb4, label %L_8001d2fa8_ft
L_8001d2fb4:
  ; @pc 0x8001d2fb4 word 0xf9400808
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %t1835 = add i64 %r1834, 16
  %gmp1836 = inttoptr i64 %t1835 to ptr
  %gml1837 = load i64, ptr %gmp1836, align 1, !alias.scope !4, !noalias !3
  %wp1838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1837, ptr %wp1838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fb8 word 0x2f00e400
  %wp1839 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1839, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fbc word 0x91008109
  %r1840.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1840 = load i64, ptr %r1840.p, align 8, !alias.scope !3, !noalias !4
  %t1841 = add i64 %r1840, 32
  %wp1842 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1841, ptr %wp1842, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fc0 word 0xb9401908
  %r1843.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1843 = load i64, ptr %r1843.p, align 8, !alias.scope !3, !noalias !4
  %t1844 = add i64 %r1843, 24
  %gmp1845 = inttoptr i64 %t1844 to ptr
  %gml1846 = load i32, ptr %gmp1845, align 1, !alias.scope !4, !noalias !3
  %c1847 = zext i32 %gml1846 to i64
  %wp1848 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1847, ptr %wp1848, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fc4 word 0x8b080d2b
  %r1849.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1849 = load i64, ptr %r1849.p, align 8, !alias.scope !3, !noalias !4
  %r1850.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1850 = load i64, ptr %r1850.p, align 8, !alias.scope !3, !noalias !4
  %t1851 = shl i64 %r1850, 3
  %t1852 = add i64 %r1849, %t1851
  %wp1853 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1852, ptr %wp1853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fc8 word 0x7100091f
  %r1854.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1854 = load i64, ptr %r1854.p, align 8, !alias.scope !3, !noalias !4
  %c1855 = trunc i64 %r1854 to i32
  %t1856 = sub i32 %c1855, 2
  %fn1857 = icmp slt i32 %t1856, 0
  %fz1858 = icmp eq i32 %t1856, 0
  %fc1859 = icmp uge i32 %c1855, 2
  %fx11860 = xor i32 %c1855, 2
  %fx21861 = xor i32 %c1855, %t1856
  %fva1862 = and i32 %fx11860, %fx21861
  %fv1863 = icmp slt i32 %fva1862, 0
  %nz1864 = zext i1 %fn1857 to i64
  %zz1865 = zext i1 %fz1858 to i64
  %cz1866 = zext i1 %fc1859 to i64
  %vz1867 = zext i1 %fv1863 to i64
  %ns1868 = shl i64 %nz1864, 31
  %zs1869 = shl i64 %zz1865, 30
  %cs1870 = shl i64 %cz1866, 29
  %vs1871 = shl i64 %vz1867, 28
  %nzor1872 = or i64 %ns1868, %zs1869
  %cvor1873 = or i64 %cs1870, %vs1871
  %nzcv1874 = or i64 %nzor1872, %cvor1873
  %wp1875 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1874, ptr %wp1875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fcc word 0x9a893168
  %r1876.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1876 = load i64, ptr %r1876.p, align 8, !alias.scope !3, !noalias !4
  %r1877.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1877 = load i64, ptr %r1877.p, align 8, !alias.scope !3, !noalias !4
  %r1878.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1878 = load i64, ptr %r1878.p, align 8, !alias.scope !3, !noalias !4
  %fsh1880 = lshr i64 %r1878, 29
  %ftr1881 = trunc i64 %fsh1880 to i1
  %cond1879 = xor i1 %ftr1881, true
  %sel1882 = select i1 %cond1879, i64 %r1876, i64 %r1877
  %wp1883 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1882, ptr %wp1883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fd0 word 0xf9400108
  %r1884.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1884 = load i64, ptr %r1884.p, align 8, !alias.scope !3, !noalias !4
  %gmp1885 = inttoptr i64 %r1884 to ptr
  %gml1886 = load i64, ptr %gmp1885, align 1, !alias.scope !4, !noalias !3
  %wp1887 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1886, ptr %wp1887, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fd4 word 0xf9400108
  %r1888.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1888 = load i64, ptr %r1888.p, align 8, !alias.scope !3, !noalias !4
  %gmp1889 = inttoptr i64 %r1888 to ptr
  %gml1890 = load i64, ptr %gmp1889, align 1, !alias.scope !4, !noalias !3
  %wp1891 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1890, ptr %wp1891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fd8 word 0xf9402908
  %r1892.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1892 = load i64, ptr %r1892.p, align 8, !alias.scope !3, !noalias !4
  %t1893 = add i64 %r1892, 80
  %gmp1894 = inttoptr i64 %t1893 to ptr
  %gml1895 = load i64, ptr %gmp1894, align 1, !alias.scope !4, !noalias !3
  %wp1896 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1895, ptr %wp1896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fdc word 0xb4ffe6c8
  %r1897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1897 = load i64, ptr %r1897.p, align 8, !alias.scope !3, !noalias !4
  %cmp1898 = icmp eq i64 %r1897, 0
  br i1 %cmp1898, label %L_8001d2cb4, label %L_8001d2fe0_ft
L_8001d2fec:
  ; @pc 0x8001d2fec word 0xf9400808
  %r1903.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1903 = load i64, ptr %r1903.p, align 8, !alias.scope !3, !noalias !4
  %t1904 = add i64 %r1903, 16
  %gmp1905 = inttoptr i64 %t1904 to ptr
  %gml1906 = load i64, ptr %gmp1905, align 1, !alias.scope !4, !noalias !3
  %wp1907 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1906, ptr %wp1907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ff0 word 0x2f00e400
  %wp1908 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 0, ptr %wp1908, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ff4 word 0x91008109
  %r1909.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1909 = load i64, ptr %r1909.p, align 8, !alias.scope !3, !noalias !4
  %t1910 = add i64 %r1909, 32
  %wp1911 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1910, ptr %wp1911, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ff8 word 0xb9401908
  %r1912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1912 = load i64, ptr %r1912.p, align 8, !alias.scope !3, !noalias !4
  %t1913 = add i64 %r1912, 24
  %gmp1914 = inttoptr i64 %t1913 to ptr
  %gml1915 = load i32, ptr %gmp1914, align 1, !alias.scope !4, !noalias !3
  %c1916 = zext i32 %gml1915 to i64
  %wp1917 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1916, ptr %wp1917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ffc word 0x8b080d2b
  %r1918.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1918 = load i64, ptr %r1918.p, align 8, !alias.scope !3, !noalias !4
  %r1919.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1919 = load i64, ptr %r1919.p, align 8, !alias.scope !3, !noalias !4
  %t1920 = shl i64 %r1919, 3
  %t1921 = add i64 %r1918, %t1920
  %wp1922 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t1921, ptr %wp1922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3000 word 0x7100091f
  %r1923.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1923 = load i64, ptr %r1923.p, align 8, !alias.scope !3, !noalias !4
  %c1924 = trunc i64 %r1923 to i32
  %t1925 = sub i32 %c1924, 2
  %fn1926 = icmp slt i32 %t1925, 0
  %fz1927 = icmp eq i32 %t1925, 0
  %fc1928 = icmp uge i32 %c1924, 2
  %fx11929 = xor i32 %c1924, 2
  %fx21930 = xor i32 %c1924, %t1925
  %fva1931 = and i32 %fx11929, %fx21930
  %fv1932 = icmp slt i32 %fva1931, 0
  %nz1933 = zext i1 %fn1926 to i64
  %zz1934 = zext i1 %fz1927 to i64
  %cz1935 = zext i1 %fc1928 to i64
  %vz1936 = zext i1 %fv1932 to i64
  %ns1937 = shl i64 %nz1933, 31
  %zs1938 = shl i64 %zz1934, 30
  %cs1939 = shl i64 %cz1935, 29
  %vs1940 = shl i64 %vz1936, 28
  %nzor1941 = or i64 %ns1937, %zs1938
  %cvor1942 = or i64 %cs1939, %vs1940
  %nzcv1943 = or i64 %nzor1941, %cvor1942
  %wp1944 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1943, ptr %wp1944, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3004 word 0x9a893168
  %r1945.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1945 = load i64, ptr %r1945.p, align 8, !alias.scope !3, !noalias !4
  %r1946.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1946 = load i64, ptr %r1946.p, align 8, !alias.scope !3, !noalias !4
  %r1947.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1947 = load i64, ptr %r1947.p, align 8, !alias.scope !3, !noalias !4
  %fsh1949 = lshr i64 %r1947, 29
  %ftr1950 = trunc i64 %fsh1949 to i1
  %cond1948 = xor i1 %ftr1950, true
  %sel1951 = select i1 %cond1948, i64 %r1945, i64 %r1946
  %wp1952 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel1951, ptr %wp1952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3008 word 0xf9400108
  %r1953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1953 = load i64, ptr %r1953.p, align 8, !alias.scope !3, !noalias !4
  %gmp1954 = inttoptr i64 %r1953 to ptr
  %gml1955 = load i64, ptr %gmp1954, align 1, !alias.scope !4, !noalias !3
  %wp1956 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1955, ptr %wp1956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d300c word 0xf9400108
  %r1957.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1957 = load i64, ptr %r1957.p, align 8, !alias.scope !3, !noalias !4
  %gmp1958 = inttoptr i64 %r1957 to ptr
  %gml1959 = load i64, ptr %gmp1958, align 1, !alias.scope !4, !noalias !3
  %wp1960 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1959, ptr %wp1960, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3010 word 0xf9402908
  %r1961.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1961 = load i64, ptr %r1961.p, align 8, !alias.scope !3, !noalias !4
  %t1962 = add i64 %r1961, 80
  %gmp1963 = inttoptr i64 %t1962 to ptr
  %gml1964 = load i64, ptr %gmp1963, align 1, !alias.scope !4, !noalias !3
  %wp1965 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1964, ptr %wp1965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3014 word 0xb4ffe508
  %r1966.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1966 = load i64, ptr %r1966.p, align 8, !alias.scope !3, !noalias !4
  %cmp1967 = icmp eq i64 %r1966, 0
  br i1 %cmp1967, label %L_8001d2cb4, label %L_8001d3018_ft
L_8001d3020:
  ; @pc 0x8001d3020 word 0x8b090d01
  %r1972.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1972 = load i64, ptr %r1972.p, align 8, !alias.scope !3, !noalias !4
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %t1974 = shl i64 %r1973, 3
  %t1975 = add i64 %r1972, %t1974
  %wp1976 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t1975, ptr %wp1976, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3024 word 0xfd4013e8
  %r1977.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1977 = load i64, ptr %r1977.p, align 8, !alias.scope !3, !noalias !4
  %t1978 = add i64 %r1977, 32
  %gmp1979 = inttoptr i64 %t1978 to ptr
  %gml1980 = load i64, ptr %gmp1979, align 1, !alias.scope !4, !noalias !3
  %c1981 = zext i64 %gml1980 to i128
  %wp1982 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c1981, ptr %wp1982, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3028 word 0xf9401ff3
  %r1983.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1983 = load i64, ptr %r1983.p, align 8, !alias.scope !3, !noalias !4
  %t1984 = add i64 %r1983, 56
  %gmp1985 = inttoptr i64 %t1984 to ptr
  %gml1986 = load i64, ptr %gmp1985, align 1, !alias.scope !4, !noalias !3
  %wp1987 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml1986, ptr %wp1987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d302c word 0xa942fbfd
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %t1989 = add i64 %r1988, 40
  %t1990 = add i64 %t1989, 8
  %gmp1991 = inttoptr i64 %t1989 to ptr
  %gml1992 = load i64, ptr %gmp1991, align 1, !alias.scope !4, !noalias !3
  %gmp1993 = inttoptr i64 %t1990 to ptr
  %gml1994 = load i64, ptr %gmp1993, align 1, !alias.scope !4, !noalias !3
  %wp1995 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml1992, ptr %wp1995, align 8, !alias.scope !3, !noalias !4
  %wp1996 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml1994, ptr %wp1996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3030 word 0x910103ff
  %r1997.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1997 = load i64, ptr %r1997.p, align 8, !alias.scope !3, !noalias !4
  %t1998 = add i64 %r1997, 64
  %wp1999 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t1998, ptr %wp1999, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3034 word 0x149c03da
  musttail call void @f_8028d3f9c(ptr %c)
  ret void
L_8001d3038:
  ; @pc 0x8001d3038 word 0xf9400808
  %r2000.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2000 = load i64, ptr %r2000.p, align 8, !alias.scope !3, !noalias !4
  %t2001 = add i64 %r2000, 16
  %gmp2002 = inttoptr i64 %t2001 to ptr
  %gml2003 = load i64, ptr %gmp2002, align 1, !alias.scope !4, !noalias !3
  %wp2004 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2003, ptr %wp2004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d303c word 0x91008109
  %r2005.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2005 = load i64, ptr %r2005.p, align 8, !alias.scope !3, !noalias !4
  %t2006 = add i64 %r2005, 32
  %wp2007 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2006, ptr %wp2007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3040 word 0xb9401908
  %r2008.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2008 = load i64, ptr %r2008.p, align 8, !alias.scope !3, !noalias !4
  %t2009 = add i64 %r2008, 24
  %gmp2010 = inttoptr i64 %t2009 to ptr
  %gml2011 = load i32, ptr %gmp2010, align 1, !alias.scope !4, !noalias !3
  %c2012 = zext i32 %gml2011 to i64
  %wp2013 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2012, ptr %wp2013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3044 word 0x8b080d2b
  %r2014.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2014 = load i64, ptr %r2014.p, align 8, !alias.scope !3, !noalias !4
  %r2015.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2015 = load i64, ptr %r2015.p, align 8, !alias.scope !3, !noalias !4
  %t2016 = shl i64 %r2015, 3
  %t2017 = add i64 %r2014, %t2016
  %wp2018 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2017, ptr %wp2018, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3048 word 0x7100091f
  %r2019.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2019 = load i64, ptr %r2019.p, align 8, !alias.scope !3, !noalias !4
  %c2020 = trunc i64 %r2019 to i32
  %t2021 = sub i32 %c2020, 2
  %fn2022 = icmp slt i32 %t2021, 0
  %fz2023 = icmp eq i32 %t2021, 0
  %fc2024 = icmp uge i32 %c2020, 2
  %fx12025 = xor i32 %c2020, 2
  %fx22026 = xor i32 %c2020, %t2021
  %fva2027 = and i32 %fx12025, %fx22026
  %fv2028 = icmp slt i32 %fva2027, 0
  %nz2029 = zext i1 %fn2022 to i64
  %zz2030 = zext i1 %fz2023 to i64
  %cz2031 = zext i1 %fc2024 to i64
  %vz2032 = zext i1 %fv2028 to i64
  %ns2033 = shl i64 %nz2029, 31
  %zs2034 = shl i64 %zz2030, 30
  %cs2035 = shl i64 %cz2031, 29
  %vs2036 = shl i64 %vz2032, 28
  %nzor2037 = or i64 %ns2033, %zs2034
  %cvor2038 = or i64 %cs2035, %vs2036
  %nzcv2039 = or i64 %nzor2037, %cvor2038
  %wp2040 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2039, ptr %wp2040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d304c word 0x9a893168
  %r2041.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2041 = load i64, ptr %r2041.p, align 8, !alias.scope !3, !noalias !4
  %r2042.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2042 = load i64, ptr %r2042.p, align 8, !alias.scope !3, !noalias !4
  %r2043.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2043 = load i64, ptr %r2043.p, align 8, !alias.scope !3, !noalias !4
  %fsh2045 = lshr i64 %r2043, 29
  %ftr2046 = trunc i64 %fsh2045 to i1
  %cond2044 = xor i1 %ftr2046, true
  %sel2047 = select i1 %cond2044, i64 %r2041, i64 %r2042
  %wp2048 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2047, ptr %wp2048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3050 word 0xf9400108
  %r2049.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2049 = load i64, ptr %r2049.p, align 8, !alias.scope !3, !noalias !4
  %gmp2050 = inttoptr i64 %r2049 to ptr
  %gml2051 = load i64, ptr %gmp2050, align 1, !alias.scope !4, !noalias !3
  %wp2052 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2051, ptr %wp2052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3054 word 0xf9400108
  %r2053.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2053 = load i64, ptr %r2053.p, align 8, !alias.scope !3, !noalias !4
  %gmp2054 = inttoptr i64 %r2053 to ptr
  %gml2055 = load i64, ptr %gmp2054, align 1, !alias.scope !4, !noalias !3
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3058 word 0xf9402908
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 80
  %gmp2059 = inttoptr i64 %t2058 to ptr
  %gml2060 = load i64, ptr %gmp2059, align 1, !alias.scope !4, !noalias !3
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d305c word 0xb4fff708
  %r2062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2062 = load i64, ptr %r2062.p, align 8, !alias.scope !3, !noalias !4
  %cmp2063 = icmp eq i64 %r2062, 0
  br i1 %cmp2063, label %L_8001d2f3c, label %L_8001d3060_ft
L_8001d30d0:
  ; @pc 0x8001d30d0 word 0xf9400808
  %r2207.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2207 = load i64, ptr %r2207.p, align 8, !alias.scope !3, !noalias !4
  %t2208 = add i64 %r2207, 16
  %gmp2209 = inttoptr i64 %t2208 to ptr
  %gml2210 = load i64, ptr %gmp2209, align 1, !alias.scope !4, !noalias !3
  %wp2211 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2210, ptr %wp2211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30d4 word 0x91008109
  %r2212.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2212 = load i64, ptr %r2212.p, align 8, !alias.scope !3, !noalias !4
  %t2213 = add i64 %r2212, 32
  %wp2214 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2213, ptr %wp2214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30d8 word 0xb9401908
  %r2215.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2215 = load i64, ptr %r2215.p, align 8, !alias.scope !3, !noalias !4
  %t2216 = add i64 %r2215, 24
  %gmp2217 = inttoptr i64 %t2216 to ptr
  %gml2218 = load i32, ptr %gmp2217, align 1, !alias.scope !4, !noalias !3
  %c2219 = zext i32 %gml2218 to i64
  %wp2220 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2219, ptr %wp2220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30dc word 0x8b080d2b
  %r2221.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2221 = load i64, ptr %r2221.p, align 8, !alias.scope !3, !noalias !4
  %r2222.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2222 = load i64, ptr %r2222.p, align 8, !alias.scope !3, !noalias !4
  %t2223 = shl i64 %r2222, 3
  %t2224 = add i64 %r2221, %t2223
  %wp2225 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2224, ptr %wp2225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30e0 word 0x7100091f
  %r2226.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2226 = load i64, ptr %r2226.p, align 8, !alias.scope !3, !noalias !4
  %c2227 = trunc i64 %r2226 to i32
  %t2228 = sub i32 %c2227, 2
  %fn2229 = icmp slt i32 %t2228, 0
  %fz2230 = icmp eq i32 %t2228, 0
  %fc2231 = icmp uge i32 %c2227, 2
  %fx12232 = xor i32 %c2227, 2
  %fx22233 = xor i32 %c2227, %t2228
  %fva2234 = and i32 %fx12232, %fx22233
  %fv2235 = icmp slt i32 %fva2234, 0
  %nz2236 = zext i1 %fn2229 to i64
  %zz2237 = zext i1 %fz2230 to i64
  %cz2238 = zext i1 %fc2231 to i64
  %vz2239 = zext i1 %fv2235 to i64
  %ns2240 = shl i64 %nz2236, 31
  %zs2241 = shl i64 %zz2237, 30
  %cs2242 = shl i64 %cz2238, 29
  %vs2243 = shl i64 %vz2239, 28
  %nzor2244 = or i64 %ns2240, %zs2241
  %cvor2245 = or i64 %cs2242, %vs2243
  %nzcv2246 = or i64 %nzor2244, %cvor2245
  %wp2247 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2246, ptr %wp2247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30e4 word 0x9a893168
  %r2248.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2248 = load i64, ptr %r2248.p, align 8, !alias.scope !3, !noalias !4
  %r2249.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2249 = load i64, ptr %r2249.p, align 8, !alias.scope !3, !noalias !4
  %r2250.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2250 = load i64, ptr %r2250.p, align 8, !alias.scope !3, !noalias !4
  %fsh2252 = lshr i64 %r2250, 29
  %ftr2253 = trunc i64 %fsh2252 to i1
  %cond2251 = xor i1 %ftr2253, true
  %sel2254 = select i1 %cond2251, i64 %r2248, i64 %r2249
  %wp2255 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2254, ptr %wp2255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30e8 word 0xf9400108
  %r2256.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2256 = load i64, ptr %r2256.p, align 8, !alias.scope !3, !noalias !4
  %gmp2257 = inttoptr i64 %r2256 to ptr
  %gml2258 = load i64, ptr %gmp2257, align 1, !alias.scope !4, !noalias !3
  %wp2259 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2258, ptr %wp2259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30ec word 0xf9400108
  %r2260.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2260 = load i64, ptr %r2260.p, align 8, !alias.scope !3, !noalias !4
  %gmp2261 = inttoptr i64 %r2260 to ptr
  %gml2262 = load i64, ptr %gmp2261, align 1, !alias.scope !4, !noalias !3
  %wp2263 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2262, ptr %wp2263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30f0 word 0xf9402908
  %r2264.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2264 = load i64, ptr %r2264.p, align 8, !alias.scope !3, !noalias !4
  %t2265 = add i64 %r2264, 80
  %gmp2266 = inttoptr i64 %t2265 to ptr
  %gml2267 = load i64, ptr %gmp2266, align 1, !alias.scope !4, !noalias !3
  %wp2268 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2267, ptr %wp2268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30f4 word 0xb4fff248
  %r2269.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2269 = load i64, ptr %r2269.p, align 8, !alias.scope !3, !noalias !4
  %cmp2270 = icmp eq i64 %r2269, 0
  br i1 %cmp2270, label %L_8001d2f3c, label %L_8001d30f8_ft
L_8001d3168:
  ; @pc 0x8001d3168 word 0xf9400808
  %r2419.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2419 = load i64, ptr %r2419.p, align 8, !alias.scope !3, !noalias !4
  %t2420 = add i64 %r2419, 16
  %gmp2421 = inttoptr i64 %t2420 to ptr
  %gml2422 = load i64, ptr %gmp2421, align 1, !alias.scope !4, !noalias !3
  %wp2423 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2422, ptr %wp2423, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d316c word 0x91008109
  %r2424.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2424 = load i64, ptr %r2424.p, align 8, !alias.scope !3, !noalias !4
  %t2425 = add i64 %r2424, 32
  %wp2426 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2425, ptr %wp2426, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3170 word 0xb9401908
  %r2427.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2427 = load i64, ptr %r2427.p, align 8, !alias.scope !3, !noalias !4
  %t2428 = add i64 %r2427, 24
  %gmp2429 = inttoptr i64 %t2428 to ptr
  %gml2430 = load i32, ptr %gmp2429, align 1, !alias.scope !4, !noalias !3
  %c2431 = zext i32 %gml2430 to i64
  %wp2432 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2431, ptr %wp2432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3174 word 0x8b080d2b
  %r2433.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2433 = load i64, ptr %r2433.p, align 8, !alias.scope !3, !noalias !4
  %r2434.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2434 = load i64, ptr %r2434.p, align 8, !alias.scope !3, !noalias !4
  %t2435 = shl i64 %r2434, 3
  %t2436 = add i64 %r2433, %t2435
  %wp2437 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2436, ptr %wp2437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3178 word 0x7100091f
  %r2438.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2438 = load i64, ptr %r2438.p, align 8, !alias.scope !3, !noalias !4
  %c2439 = trunc i64 %r2438 to i32
  %t2440 = sub i32 %c2439, 2
  %fn2441 = icmp slt i32 %t2440, 0
  %fz2442 = icmp eq i32 %t2440, 0
  %fc2443 = icmp uge i32 %c2439, 2
  %fx12444 = xor i32 %c2439, 2
  %fx22445 = xor i32 %c2439, %t2440
  %fva2446 = and i32 %fx12444, %fx22445
  %fv2447 = icmp slt i32 %fva2446, 0
  %nz2448 = zext i1 %fn2441 to i64
  %zz2449 = zext i1 %fz2442 to i64
  %cz2450 = zext i1 %fc2443 to i64
  %vz2451 = zext i1 %fv2447 to i64
  %ns2452 = shl i64 %nz2448, 31
  %zs2453 = shl i64 %zz2449, 30
  %cs2454 = shl i64 %cz2450, 29
  %vs2455 = shl i64 %vz2451, 28
  %nzor2456 = or i64 %ns2452, %zs2453
  %cvor2457 = or i64 %cs2454, %vs2455
  %nzcv2458 = or i64 %nzor2456, %cvor2457
  %wp2459 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2458, ptr %wp2459, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d317c word 0x9a893168
  %r2460.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2460 = load i64, ptr %r2460.p, align 8, !alias.scope !3, !noalias !4
  %r2461.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2461 = load i64, ptr %r2461.p, align 8, !alias.scope !3, !noalias !4
  %r2462.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2462 = load i64, ptr %r2462.p, align 8, !alias.scope !3, !noalias !4
  %fsh2464 = lshr i64 %r2462, 29
  %ftr2465 = trunc i64 %fsh2464 to i1
  %cond2463 = xor i1 %ftr2465, true
  %sel2466 = select i1 %cond2463, i64 %r2460, i64 %r2461
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3180 word 0xf9400108
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %gmp2469 = inttoptr i64 %r2468 to ptr
  %gml2470 = load i64, ptr %gmp2469, align 1, !alias.scope !4, !noalias !3
  %wp2471 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2470, ptr %wp2471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3184 word 0xf9400108
  %r2472.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2472 = load i64, ptr %r2472.p, align 8, !alias.scope !3, !noalias !4
  %gmp2473 = inttoptr i64 %r2472 to ptr
  %gml2474 = load i64, ptr %gmp2473, align 1, !alias.scope !4, !noalias !3
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3188 word 0xf9402908
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %t2477 = add i64 %r2476, 80
  %gmp2478 = inttoptr i64 %t2477 to ptr
  %gml2479 = load i64, ptr %gmp2478, align 1, !alias.scope !4, !noalias !3
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d318c word 0xb4ffed88
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %cmp2482 = icmp eq i64 %r2481, 0
  br i1 %cmp2482, label %L_8001d2f3c, label %L_8001d3190_ft
L_8001d3200:
  ; @pc 0x8001d3200 word 0xf9400808
  %r2631.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2631 = load i64, ptr %r2631.p, align 8, !alias.scope !3, !noalias !4
  %t2632 = add i64 %r2631, 16
  %gmp2633 = inttoptr i64 %t2632 to ptr
  %gml2634 = load i64, ptr %gmp2633, align 1, !alias.scope !4, !noalias !3
  %wp2635 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2634, ptr %wp2635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3204 word 0x91008109
  %r2636.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2636 = load i64, ptr %r2636.p, align 8, !alias.scope !3, !noalias !4
  %t2637 = add i64 %r2636, 32
  %wp2638 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2637, ptr %wp2638, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3208 word 0xb9401908
  %r2639.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2639 = load i64, ptr %r2639.p, align 8, !alias.scope !3, !noalias !4
  %t2640 = add i64 %r2639, 24
  %gmp2641 = inttoptr i64 %t2640 to ptr
  %gml2642 = load i32, ptr %gmp2641, align 1, !alias.scope !4, !noalias !3
  %c2643 = zext i32 %gml2642 to i64
  %wp2644 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2643, ptr %wp2644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d320c word 0x8b080d2b
  %r2645.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2645 = load i64, ptr %r2645.p, align 8, !alias.scope !3, !noalias !4
  %r2646.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2646 = load i64, ptr %r2646.p, align 8, !alias.scope !3, !noalias !4
  %t2647 = shl i64 %r2646, 3
  %t2648 = add i64 %r2645, %t2647
  %wp2649 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2648, ptr %wp2649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3210 word 0x7100091f
  %r2650.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2650 = load i64, ptr %r2650.p, align 8, !alias.scope !3, !noalias !4
  %c2651 = trunc i64 %r2650 to i32
  %t2652 = sub i32 %c2651, 2
  %fn2653 = icmp slt i32 %t2652, 0
  %fz2654 = icmp eq i32 %t2652, 0
  %fc2655 = icmp uge i32 %c2651, 2
  %fx12656 = xor i32 %c2651, 2
  %fx22657 = xor i32 %c2651, %t2652
  %fva2658 = and i32 %fx12656, %fx22657
  %fv2659 = icmp slt i32 %fva2658, 0
  %nz2660 = zext i1 %fn2653 to i64
  %zz2661 = zext i1 %fz2654 to i64
  %cz2662 = zext i1 %fc2655 to i64
  %vz2663 = zext i1 %fv2659 to i64
  %ns2664 = shl i64 %nz2660, 31
  %zs2665 = shl i64 %zz2661, 30
  %cs2666 = shl i64 %cz2662, 29
  %vs2667 = shl i64 %vz2663, 28
  %nzor2668 = or i64 %ns2664, %zs2665
  %cvor2669 = or i64 %cs2666, %vs2667
  %nzcv2670 = or i64 %nzor2668, %cvor2669
  %wp2671 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2670, ptr %wp2671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3214 word 0x9a893168
  %r2672.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2672 = load i64, ptr %r2672.p, align 8, !alias.scope !3, !noalias !4
  %r2673.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2673 = load i64, ptr %r2673.p, align 8, !alias.scope !3, !noalias !4
  %r2674.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2674 = load i64, ptr %r2674.p, align 8, !alias.scope !3, !noalias !4
  %fsh2676 = lshr i64 %r2674, 29
  %ftr2677 = trunc i64 %fsh2676 to i1
  %cond2675 = xor i1 %ftr2677, true
  %sel2678 = select i1 %cond2675, i64 %r2672, i64 %r2673
  %wp2679 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2678, ptr %wp2679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3218 word 0xf9400108
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %gmp2681 = inttoptr i64 %r2680 to ptr
  %gml2682 = load i64, ptr %gmp2681, align 1, !alias.scope !4, !noalias !3
  %wp2683 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2682, ptr %wp2683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d321c word 0xf9400108
  %r2684.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2684 = load i64, ptr %r2684.p, align 8, !alias.scope !3, !noalias !4
  %gmp2685 = inttoptr i64 %r2684 to ptr
  %gml2686 = load i64, ptr %gmp2685, align 1, !alias.scope !4, !noalias !3
  %wp2687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2686, ptr %wp2687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3220 word 0xf9402908
  %r2688.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2688 = load i64, ptr %r2688.p, align 8, !alias.scope !3, !noalias !4
  %t2689 = add i64 %r2688, 80
  %gmp2690 = inttoptr i64 %t2689 to ptr
  %gml2691 = load i64, ptr %gmp2690, align 1, !alias.scope !4, !noalias !3
  %wp2692 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2691, ptr %wp2692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3224 word 0xb4ffe8c8
  %r2693.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2693 = load i64, ptr %r2693.p, align 8, !alias.scope !3, !noalias !4
  %cmp2694 = icmp eq i64 %r2693, 0
  br i1 %cmp2694, label %L_8001d2f3c, label %L_8001d3228_ft
L_8001d3294:
  ; @pc 0x8001d3294 word 0x94a741db
  %wp2839 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361651864, ptr %wp2839, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3a00(ptr %c)
  ; @pc 0x8001d3298 word 0x140000a0
  br label %L_8001d3518
L_8001d329c:
  ; @pc 0x8001d329c word 0xf9400808
  %r2840.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2840 = load i64, ptr %r2840.p, align 8, !alias.scope !3, !noalias !4
  %t2841 = add i64 %r2840, 16
  %gmp2842 = inttoptr i64 %t2841 to ptr
  %gml2843 = load i64, ptr %gmp2842, align 1, !alias.scope !4, !noalias !3
  %wp2844 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2843, ptr %wp2844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32a0 word 0x91008109
  %r2845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2845 = load i64, ptr %r2845.p, align 8, !alias.scope !3, !noalias !4
  %t2846 = add i64 %r2845, 32
  %wp2847 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2846, ptr %wp2847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32a4 word 0xb9401908
  %r2848.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2848 = load i64, ptr %r2848.p, align 8, !alias.scope !3, !noalias !4
  %t2849 = add i64 %r2848, 24
  %gmp2850 = inttoptr i64 %t2849 to ptr
  %gml2851 = load i32, ptr %gmp2850, align 1, !alias.scope !4, !noalias !3
  %c2852 = zext i32 %gml2851 to i64
  %wp2853 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2852, ptr %wp2853, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32a8 word 0x8b080d2b
  %r2854.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2854 = load i64, ptr %r2854.p, align 8, !alias.scope !3, !noalias !4
  %r2855.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2855 = load i64, ptr %r2855.p, align 8, !alias.scope !3, !noalias !4
  %t2856 = shl i64 %r2855, 3
  %t2857 = add i64 %r2854, %t2856
  %wp2858 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t2857, ptr %wp2858, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32ac word 0x7100091f
  %r2859.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2859 = load i64, ptr %r2859.p, align 8, !alias.scope !3, !noalias !4
  %c2860 = trunc i64 %r2859 to i32
  %t2861 = sub i32 %c2860, 2
  %fn2862 = icmp slt i32 %t2861, 0
  %fz2863 = icmp eq i32 %t2861, 0
  %fc2864 = icmp uge i32 %c2860, 2
  %fx12865 = xor i32 %c2860, 2
  %fx22866 = xor i32 %c2860, %t2861
  %fva2867 = and i32 %fx12865, %fx22866
  %fv2868 = icmp slt i32 %fva2867, 0
  %nz2869 = zext i1 %fn2862 to i64
  %zz2870 = zext i1 %fz2863 to i64
  %cz2871 = zext i1 %fc2864 to i64
  %vz2872 = zext i1 %fv2868 to i64
  %ns2873 = shl i64 %nz2869, 31
  %zs2874 = shl i64 %zz2870, 30
  %cs2875 = shl i64 %cz2871, 29
  %vs2876 = shl i64 %vz2872, 28
  %nzor2877 = or i64 %ns2873, %zs2874
  %cvor2878 = or i64 %cs2875, %vs2876
  %nzcv2879 = or i64 %nzor2877, %cvor2878
  %wp2880 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2879, ptr %wp2880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32b0 word 0x9a893168
  %r2881.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2881 = load i64, ptr %r2881.p, align 8, !alias.scope !3, !noalias !4
  %r2882.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2882 = load i64, ptr %r2882.p, align 8, !alias.scope !3, !noalias !4
  %r2883.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2883 = load i64, ptr %r2883.p, align 8, !alias.scope !3, !noalias !4
  %fsh2885 = lshr i64 %r2883, 29
  %ftr2886 = trunc i64 %fsh2885 to i1
  %cond2884 = xor i1 %ftr2886, true
  %sel2887 = select i1 %cond2884, i64 %r2881, i64 %r2882
  %wp2888 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel2887, ptr %wp2888, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32b4 word 0xf9400108
  %r2889.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2889 = load i64, ptr %r2889.p, align 8, !alias.scope !3, !noalias !4
  %gmp2890 = inttoptr i64 %r2889 to ptr
  %gml2891 = load i64, ptr %gmp2890, align 1, !alias.scope !4, !noalias !3
  %wp2892 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2891, ptr %wp2892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32b8 word 0xf9400108
  %r2893.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2893 = load i64, ptr %r2893.p, align 8, !alias.scope !3, !noalias !4
  %gmp2894 = inttoptr i64 %r2893 to ptr
  %gml2895 = load i64, ptr %gmp2894, align 1, !alias.scope !4, !noalias !3
  %wp2896 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2895, ptr %wp2896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32bc word 0xf9402908
  %r2897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2897 = load i64, ptr %r2897.p, align 8, !alias.scope !3, !noalias !4
  %t2898 = add i64 %r2897, 80
  %gmp2899 = inttoptr i64 %t2898 to ptr
  %gml2900 = load i64, ptr %gmp2899, align 1, !alias.scope !4, !noalias !3
  %wp2901 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2900, ptr %wp2901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32c0 word 0xb4ffe3e8
  %r2902.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2902 = load i64, ptr %r2902.p, align 8, !alias.scope !3, !noalias !4
  %cmp2903 = icmp eq i64 %r2902, 0
  br i1 %cmp2903, label %L_8001d2f3c, label %L_8001d32c4_ft
L_8001d3338:
  ; @pc 0x8001d3338 word 0x1e210800
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 0, i32 1)
  ; @pc 0x8001d333c word 0xbd400101
  %r3052.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3052 = load i64, ptr %r3052.p, align 8, !alias.scope !3, !noalias !4
  %gmp3053 = inttoptr i64 %r3052 to ptr
  %gml3054 = load i32, ptr %gmp3053, align 1, !alias.scope !4, !noalias !3
  %c3055 = zext i32 %gml3054 to i128
  %wp3056 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3055, ptr %wp3056, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3340 word 0x1e202820
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 0)
  ; @pc 0x8001d3344 word 0x17fffe5c
  br label %L_8001d2cb4
L_8001d3348:
  ; @pc 0x8001d3348 word 0xf9400808
  %r3057.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3057 = load i64, ptr %r3057.p, align 8, !alias.scope !3, !noalias !4
  %t3058 = add i64 %r3057, 16
  %gmp3059 = inttoptr i64 %t3058 to ptr
  %gml3060 = load i64, ptr %gmp3059, align 1, !alias.scope !4, !noalias !3
  %wp3061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3060, ptr %wp3061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d334c word 0x91008109
  %r3062.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3062 = load i64, ptr %r3062.p, align 8, !alias.scope !3, !noalias !4
  %t3063 = add i64 %r3062, 32
  %wp3064 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3063, ptr %wp3064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3350 word 0xb9401908
  %r3065.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3065 = load i64, ptr %r3065.p, align 8, !alias.scope !3, !noalias !4
  %t3066 = add i64 %r3065, 24
  %gmp3067 = inttoptr i64 %t3066 to ptr
  %gml3068 = load i32, ptr %gmp3067, align 1, !alias.scope !4, !noalias !3
  %c3069 = zext i32 %gml3068 to i64
  %wp3070 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3069, ptr %wp3070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3354 word 0x8b080d2b
  %r3071.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3071 = load i64, ptr %r3071.p, align 8, !alias.scope !3, !noalias !4
  %r3072.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3072 = load i64, ptr %r3072.p, align 8, !alias.scope !3, !noalias !4
  %t3073 = shl i64 %r3072, 3
  %t3074 = add i64 %r3071, %t3073
  %wp3075 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3074, ptr %wp3075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3358 word 0x7100091f
  %r3076.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3076 = load i64, ptr %r3076.p, align 8, !alias.scope !3, !noalias !4
  %c3077 = trunc i64 %r3076 to i32
  %t3078 = sub i32 %c3077, 2
  %fn3079 = icmp slt i32 %t3078, 0
  %fz3080 = icmp eq i32 %t3078, 0
  %fc3081 = icmp uge i32 %c3077, 2
  %fx13082 = xor i32 %c3077, 2
  %fx23083 = xor i32 %c3077, %t3078
  %fva3084 = and i32 %fx13082, %fx23083
  %fv3085 = icmp slt i32 %fva3084, 0
  %nz3086 = zext i1 %fn3079 to i64
  %zz3087 = zext i1 %fz3080 to i64
  %cz3088 = zext i1 %fc3081 to i64
  %vz3089 = zext i1 %fv3085 to i64
  %ns3090 = shl i64 %nz3086, 31
  %zs3091 = shl i64 %zz3087, 30
  %cs3092 = shl i64 %cz3088, 29
  %vs3093 = shl i64 %vz3089, 28
  %nzor3094 = or i64 %ns3090, %zs3091
  %cvor3095 = or i64 %cs3092, %vs3093
  %nzcv3096 = or i64 %nzor3094, %cvor3095
  %wp3097 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3096, ptr %wp3097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d335c word 0x9a893168
  %r3098.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3098 = load i64, ptr %r3098.p, align 8, !alias.scope !3, !noalias !4
  %r3099.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3099 = load i64, ptr %r3099.p, align 8, !alias.scope !3, !noalias !4
  %r3100.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3100 = load i64, ptr %r3100.p, align 8, !alias.scope !3, !noalias !4
  %fsh3102 = lshr i64 %r3100, 29
  %ftr3103 = trunc i64 %fsh3102 to i1
  %cond3101 = xor i1 %ftr3103, true
  %sel3104 = select i1 %cond3101, i64 %r3098, i64 %r3099
  %wp3105 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3104, ptr %wp3105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3360 word 0xf9400108
  %r3106.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3106 = load i64, ptr %r3106.p, align 8, !alias.scope !3, !noalias !4
  %gmp3107 = inttoptr i64 %r3106 to ptr
  %gml3108 = load i64, ptr %gmp3107, align 1, !alias.scope !4, !noalias !3
  %wp3109 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3108, ptr %wp3109, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3364 word 0xf9400108
  %r3110.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3110 = load i64, ptr %r3110.p, align 8, !alias.scope !3, !noalias !4
  %gmp3111 = inttoptr i64 %r3110 to ptr
  %gml3112 = load i64, ptr %gmp3111, align 1, !alias.scope !4, !noalias !3
  %wp3113 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3112, ptr %wp3113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3368 word 0xf9402908
  %r3114.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3114 = load i64, ptr %r3114.p, align 8, !alias.scope !3, !noalias !4
  %t3115 = add i64 %r3114, 80
  %gmp3116 = inttoptr i64 %t3115 to ptr
  %gml3117 = load i64, ptr %gmp3116, align 1, !alias.scope !4, !noalias !3
  %wp3118 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3117, ptr %wp3118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d336c word 0xb4ffde88
  %r3119.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3119 = load i64, ptr %r3119.p, align 8, !alias.scope !3, !noalias !4
  %cmp3120 = icmp eq i64 %r3119, 0
  br i1 %cmp3120, label %L_8001d2f3c, label %L_8001d3370_ft
L_8001d33e0:
  ; @pc 0x8001d33e0 word 0xf9400808
  %r3269.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3269 = load i64, ptr %r3269.p, align 8, !alias.scope !3, !noalias !4
  %t3270 = add i64 %r3269, 16
  %gmp3271 = inttoptr i64 %t3270 to ptr
  %gml3272 = load i64, ptr %gmp3271, align 1, !alias.scope !4, !noalias !3
  %wp3273 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3272, ptr %wp3273, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33e4 word 0x91008109
  %r3274.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3274 = load i64, ptr %r3274.p, align 8, !alias.scope !3, !noalias !4
  %t3275 = add i64 %r3274, 32
  %wp3276 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3275, ptr %wp3276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33e8 word 0xb9401908
  %r3277.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3277 = load i64, ptr %r3277.p, align 8, !alias.scope !3, !noalias !4
  %t3278 = add i64 %r3277, 24
  %gmp3279 = inttoptr i64 %t3278 to ptr
  %gml3280 = load i32, ptr %gmp3279, align 1, !alias.scope !4, !noalias !3
  %c3281 = zext i32 %gml3280 to i64
  %wp3282 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3281, ptr %wp3282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33ec word 0x8b080d2b
  %r3283.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3283 = load i64, ptr %r3283.p, align 8, !alias.scope !3, !noalias !4
  %r3284.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3284 = load i64, ptr %r3284.p, align 8, !alias.scope !3, !noalias !4
  %t3285 = shl i64 %r3284, 3
  %t3286 = add i64 %r3283, %t3285
  %wp3287 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3286, ptr %wp3287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33f0 word 0x7100091f
  %r3288.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3288 = load i64, ptr %r3288.p, align 8, !alias.scope !3, !noalias !4
  %c3289 = trunc i64 %r3288 to i32
  %t3290 = sub i32 %c3289, 2
  %fn3291 = icmp slt i32 %t3290, 0
  %fz3292 = icmp eq i32 %t3290, 0
  %fc3293 = icmp uge i32 %c3289, 2
  %fx13294 = xor i32 %c3289, 2
  %fx23295 = xor i32 %c3289, %t3290
  %fva3296 = and i32 %fx13294, %fx23295
  %fv3297 = icmp slt i32 %fva3296, 0
  %nz3298 = zext i1 %fn3291 to i64
  %zz3299 = zext i1 %fz3292 to i64
  %cz3300 = zext i1 %fc3293 to i64
  %vz3301 = zext i1 %fv3297 to i64
  %ns3302 = shl i64 %nz3298, 31
  %zs3303 = shl i64 %zz3299, 30
  %cs3304 = shl i64 %cz3300, 29
  %vs3305 = shl i64 %vz3301, 28
  %nzor3306 = or i64 %ns3302, %zs3303
  %cvor3307 = or i64 %cs3304, %vs3305
  %nzcv3308 = or i64 %nzor3306, %cvor3307
  %wp3309 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3308, ptr %wp3309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33f4 word 0x9a893168
  %r3310.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3310 = load i64, ptr %r3310.p, align 8, !alias.scope !3, !noalias !4
  %r3311.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3311 = load i64, ptr %r3311.p, align 8, !alias.scope !3, !noalias !4
  %r3312.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3312 = load i64, ptr %r3312.p, align 8, !alias.scope !3, !noalias !4
  %fsh3314 = lshr i64 %r3312, 29
  %ftr3315 = trunc i64 %fsh3314 to i1
  %cond3313 = xor i1 %ftr3315, true
  %sel3316 = select i1 %cond3313, i64 %r3310, i64 %r3311
  %wp3317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3316, ptr %wp3317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33f8 word 0xf9400108
  %r3318.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3318 = load i64, ptr %r3318.p, align 8, !alias.scope !3, !noalias !4
  %gmp3319 = inttoptr i64 %r3318 to ptr
  %gml3320 = load i64, ptr %gmp3319, align 1, !alias.scope !4, !noalias !3
  %wp3321 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3320, ptr %wp3321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33fc word 0xf9400108
  %r3322.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3322 = load i64, ptr %r3322.p, align 8, !alias.scope !3, !noalias !4
  %gmp3323 = inttoptr i64 %r3322 to ptr
  %gml3324 = load i64, ptr %gmp3323, align 1, !alias.scope !4, !noalias !3
  %wp3325 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3324, ptr %wp3325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3400 word 0xf9402908
  %r3326.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3326 = load i64, ptr %r3326.p, align 8, !alias.scope !3, !noalias !4
  %t3327 = add i64 %r3326, 80
  %gmp3328 = inttoptr i64 %t3327 to ptr
  %gml3329 = load i64, ptr %gmp3328, align 1, !alias.scope !4, !noalias !3
  %wp3330 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3329, ptr %wp3330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3404 word 0xb4ffd9c8
  %r3331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3331 = load i64, ptr %r3331.p, align 8, !alias.scope !3, !noalias !4
  %cmp3332 = icmp eq i64 %r3331, 0
  br i1 %cmp3332, label %L_8001d2f3c, label %L_8001d3408_ft
L_8001d3478:
  ; @pc 0x8001d3478 word 0xf9400808
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %t3482 = add i64 %r3481, 16
  %gmp3483 = inttoptr i64 %t3482 to ptr
  %gml3484 = load i64, ptr %gmp3483, align 1, !alias.scope !4, !noalias !3
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d347c word 0x91008109
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %t3487 = add i64 %r3486, 32
  %wp3488 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3487, ptr %wp3488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3480 word 0xb9401908
  %r3489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3489 = load i64, ptr %r3489.p, align 8, !alias.scope !3, !noalias !4
  %t3490 = add i64 %r3489, 24
  %gmp3491 = inttoptr i64 %t3490 to ptr
  %gml3492 = load i32, ptr %gmp3491, align 1, !alias.scope !4, !noalias !3
  %c3493 = zext i32 %gml3492 to i64
  %wp3494 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3493, ptr %wp3494, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3484 word 0x8b080d2b
  %r3495.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3495 = load i64, ptr %r3495.p, align 8, !alias.scope !3, !noalias !4
  %r3496.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3496 = load i64, ptr %r3496.p, align 8, !alias.scope !3, !noalias !4
  %t3497 = shl i64 %r3496, 3
  %t3498 = add i64 %r3495, %t3497
  %wp3499 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3498, ptr %wp3499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3488 word 0x7100091f
  %r3500.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3500 = load i64, ptr %r3500.p, align 8, !alias.scope !3, !noalias !4
  %c3501 = trunc i64 %r3500 to i32
  %t3502 = sub i32 %c3501, 2
  %fn3503 = icmp slt i32 %t3502, 0
  %fz3504 = icmp eq i32 %t3502, 0
  %fc3505 = icmp uge i32 %c3501, 2
  %fx13506 = xor i32 %c3501, 2
  %fx23507 = xor i32 %c3501, %t3502
  %fva3508 = and i32 %fx13506, %fx23507
  %fv3509 = icmp slt i32 %fva3508, 0
  %nz3510 = zext i1 %fn3503 to i64
  %zz3511 = zext i1 %fz3504 to i64
  %cz3512 = zext i1 %fc3505 to i64
  %vz3513 = zext i1 %fv3509 to i64
  %ns3514 = shl i64 %nz3510, 31
  %zs3515 = shl i64 %zz3511, 30
  %cs3516 = shl i64 %cz3512, 29
  %vs3517 = shl i64 %vz3513, 28
  %nzor3518 = or i64 %ns3514, %zs3515
  %cvor3519 = or i64 %cs3516, %vs3517
  %nzcv3520 = or i64 %nzor3518, %cvor3519
  %wp3521 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3520, ptr %wp3521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d348c word 0x9a893168
  %r3522.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3522 = load i64, ptr %r3522.p, align 8, !alias.scope !3, !noalias !4
  %r3523.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3523 = load i64, ptr %r3523.p, align 8, !alias.scope !3, !noalias !4
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %fsh3526 = lshr i64 %r3524, 29
  %ftr3527 = trunc i64 %fsh3526 to i1
  %cond3525 = xor i1 %ftr3527, true
  %sel3528 = select i1 %cond3525, i64 %r3522, i64 %r3523
  %wp3529 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel3528, ptr %wp3529, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3490 word 0xf9400108
  %r3530.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3530 = load i64, ptr %r3530.p, align 8, !alias.scope !3, !noalias !4
  %gmp3531 = inttoptr i64 %r3530 to ptr
  %gml3532 = load i64, ptr %gmp3531, align 1, !alias.scope !4, !noalias !3
  %wp3533 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3532, ptr %wp3533, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3494 word 0xf9400108
  %r3534.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3534 = load i64, ptr %r3534.p, align 8, !alias.scope !3, !noalias !4
  %gmp3535 = inttoptr i64 %r3534 to ptr
  %gml3536 = load i64, ptr %gmp3535, align 1, !alias.scope !4, !noalias !3
  %wp3537 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3536, ptr %wp3537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3498 word 0xf9402908
  %r3538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3538 = load i64, ptr %r3538.p, align 8, !alias.scope !3, !noalias !4
  %t3539 = add i64 %r3538, 80
  %gmp3540 = inttoptr i64 %t3539 to ptr
  %gml3541 = load i64, ptr %gmp3540, align 1, !alias.scope !4, !noalias !3
  %wp3542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3541, ptr %wp3542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d349c word 0xb4ffd508
  %r3543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3543 = load i64, ptr %r3543.p, align 8, !alias.scope !3, !noalias !4
  %cmp3544 = icmp eq i64 %r3543, 0
  br i1 %cmp3544, label %L_8001d2f3c, label %L_8001d34a0_ft
L_8001d350c:
  ; @pc 0x8001d350c word 0x94a7413d
  %wp3693 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361652496, ptr %wp3693, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba3a00(ptr %c)
  ; @pc 0x8001d3510 word 0x1e2e1001
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1065353216, ptr %wp3694, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3514 word 0x1e203820
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 1, i32 0)
  br label %L_8001d3518
L_8001d3518:
  ; @pc 0x8001d3518 word 0x1e200900
  call void @rt_fp_op_s(ptr %c, i32 2, i32 0, i32 8, i32 0)
  ; @pc 0x8001d351c word 0xbd400261
  %r3695.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3695 = load i64, ptr %r3695.p, align 8, !alias.scope !3, !noalias !4
  %gmp3696 = inttoptr i64 %r3695 to ptr
  %gml3697 = load i32, ptr %gmp3696, align 1, !alias.scope !4, !noalias !3
  %c3698 = zext i32 %gml3697 to i128
  %wp3699 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3698, ptr %wp3699, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3520 word 0x1e202820
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 0)
  ; @pc 0x8001d3524 word 0x17fffde4
  br label %L_8001d2cb4
L_8001d3528:
  ; @pc 0x8001d3528 word 0xbd4001a0
  %r3700.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3700 = load i64, ptr %r3700.p, align 8, !alias.scope !3, !noalias !4
  %gmp3701 = inttoptr i64 %r3700 to ptr
  %gml3702 = load i32, ptr %gmp3701, align 1, !alias.scope !4, !noalias !3
  %c3703 = zext i32 %gml3702 to i128
  %wp3704 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3703, ptr %wp3704, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d352c word 0x1e260008
  %r3705.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3705 = load i128, ptr %r3705.p, align 16, !alias.scope !3, !noalias !4
  %c3706 = trunc i128 %r3705 to i32
  %c3707 = zext i32 %c3706 to i64
  %wp3708 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3707, ptr %wp3708, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3530 word 0x17fffd7a
  br label %L_8001d2b18
L_8001d3534:
  ; @pc 0x8001d3534 word 0x2a1f03e8
  %t3709 = or i32 0, 0
  %c3710 = zext i32 %t3709 to i64
  %wp3711 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3710, ptr %wp3711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3538 word 0x17fffd78
  br label %L_8001d2b18
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361649756, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001d2a5c
L_8001d2a80_ft:
  ; @pc 0x8001d2a80 word 0xf9400808
  %r62.p = getelementptr inbounds i8, ptr %c, i64 0
  %r62 = load i64, ptr %r62.p, align 8, !alias.scope !3, !noalias !4
  %t63 = add i64 %r62, 16
  %gmp64 = inttoptr i64 %t63 to ptr
  %gml65 = load i64, ptr %gmp64, align 1, !alias.scope !4, !noalias !3
  %wp66 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml65, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a84 word 0x91008109
  %r67.p = getelementptr inbounds i8, ptr %c, i64 64
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = add i64 %r67, 32
  %wp69 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a88 word 0xb9401908
  %r70.p = getelementptr inbounds i8, ptr %c, i64 64
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %t71 = add i64 %r70, 24
  %gmp72 = inttoptr i64 %t71 to ptr
  %gml73 = load i32, ptr %gmp72, align 1, !alias.scope !4, !noalias !3
  %c74 = zext i32 %gml73 to i64
  %wp75 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a8c word 0x8b080d2b
  %r76.p = getelementptr inbounds i8, ptr %c, i64 72
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %r77.p = getelementptr inbounds i8, ptr %c, i64 64
  %r77 = load i64, ptr %r77.p, align 8, !alias.scope !3, !noalias !4
  %t78 = shl i64 %r77, 3
  %t79 = add i64 %r76, %t78
  %wp80 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a90 word 0x7100091f
  %r81.p = getelementptr inbounds i8, ptr %c, i64 64
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %c82 = trunc i64 %r81 to i32
  %t83 = sub i32 %c82, 2
  %fn84 = icmp slt i32 %t83, 0
  %fz85 = icmp eq i32 %t83, 0
  %fc86 = icmp uge i32 %c82, 2
  %fx187 = xor i32 %c82, 2
  %fx288 = xor i32 %c82, %t83
  %fva89 = and i32 %fx187, %fx288
  %fv90 = icmp slt i32 %fva89, 0
  %nz91 = zext i1 %fn84 to i64
  %zz92 = zext i1 %fz85 to i64
  %cz93 = zext i1 %fc86 to i64
  %vz94 = zext i1 %fv90 to i64
  %ns95 = shl i64 %nz91, 31
  %zs96 = shl i64 %zz92, 30
  %cs97 = shl i64 %cz93, 29
  %vs98 = shl i64 %vz94, 28
  %nzor99 = or i64 %ns95, %zs96
  %cvor100 = or i64 %cs97, %vs98
  %nzcv101 = or i64 %nzor99, %cvor100
  %wp102 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv101, ptr %wp102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a94 word 0x9a893168
  %r103.p = getelementptr inbounds i8, ptr %c, i64 88
  %r103 = load i64, ptr %r103.p, align 8, !alias.scope !3, !noalias !4
  %r104.p = getelementptr inbounds i8, ptr %c, i64 72
  %r104 = load i64, ptr %r104.p, align 8, !alias.scope !3, !noalias !4
  %r105.p = getelementptr inbounds i8, ptr %c, i64 272
  %r105 = load i64, ptr %r105.p, align 8, !alias.scope !3, !noalias !4
  %fsh107 = lshr i64 %r105, 29
  %ftr108 = trunc i64 %fsh107 to i1
  %cond106 = xor i1 %ftr108, true
  %sel109 = select i1 %cond106, i64 %r103, i64 %r104
  %wp110 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %sel109, ptr %wp110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a98 word 0xf9400108
  %r111.p = getelementptr inbounds i8, ptr %c, i64 64
  %r111 = load i64, ptr %r111.p, align 8, !alias.scope !3, !noalias !4
  %gmp112 = inttoptr i64 %r111 to ptr
  %gml113 = load i64, ptr %gmp112, align 1, !alias.scope !4, !noalias !3
  %wp114 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml113, ptr %wp114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2a9c word 0xf940010c
  %r115.p = getelementptr inbounds i8, ptr %c, i64 64
  %r115 = load i64, ptr %r115.p, align 8, !alias.scope !3, !noalias !4
  %gmp116 = inttoptr i64 %r115 to ptr
  %gml117 = load i64, ptr %gmp116, align 1, !alias.scope !4, !noalias !3
  %wp118 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml117, ptr %wp118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2aa0 word 0xf9402d89
  %r119.p = getelementptr inbounds i8, ptr %c, i64 96
  %r119 = load i64, ptr %r119.p, align 8, !alias.scope !3, !noalias !4
  %t120 = add i64 %r119, 88
  %gmp121 = inttoptr i64 %t120 to ptr
  %gml122 = load i64, ptr %gmp121, align 1, !alias.scope !4, !noalias !3
  %wp123 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml122, ptr %wp123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2aa4 word 0xb40024c9
  %r124.p = getelementptr inbounds i8, ptr %c, i64 72
  %r124 = load i64, ptr %r124.p, align 8, !alias.scope !3, !noalias !4
  %cmp125 = icmp eq i64 %r124, 0
  br i1 %cmp125, label %L_8001d2f3c, label %L_8001d2aa8_ft
L_8001d2aa8_ft:
  ; @pc 0x8001d2aa8 word 0x92405d4a
  %r126.p = getelementptr inbounds i8, ptr %c, i64 80
  %r126 = load i64, ptr %r126.p, align 8, !alias.scope !3, !noalias !4
  %t127 = and i64 %r126, 16777215
  %wp128 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t127, ptr %wp128, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2aac word 0x52800308
  %c129 = zext i32 24 to i64
  %wp130 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c129, ptr %wp130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ab0 word 0x9ba8254b
  %r131.p = getelementptr inbounds i8, ptr %c, i64 80
  %r131 = load i64, ptr %r131.p, align 8, !alias.scope !3, !noalias !4
  %c132 = trunc i64 %r131 to i32
  %c133 = zext i32 %c132 to i64
  %r134.p = getelementptr inbounds i8, ptr %c, i64 64
  %r134 = load i64, ptr %r134.p, align 8, !alias.scope !3, !noalias !4
  %c135 = trunc i64 %r134 to i32
  %c136 = zext i32 %c135 to i64
  %t137 = mul i64 %c133, %c136
  %r138.p = getelementptr inbounds i8, ptr %c, i64 72
  %r138 = load i64, ptr %r138.p, align 8, !alias.scope !3, !noalias !4
  %t139 = add i64 %r138, %t137
  %wp140 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t139, ptr %wp140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ab4 word 0xb9401168
  %r141.p = getelementptr inbounds i8, ptr %c, i64 88
  %r141 = load i64, ptr %r141.p, align 8, !alias.scope !3, !noalias !4
  %t142 = add i64 %r141, 16
  %gmp143 = inttoptr i64 %t142 to ptr
  %gml144 = load i32, ptr %gmp143, align 1, !alias.scope !4, !noalias !3
  %c145 = zext i32 %gml144 to i64
  %wp146 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c145, ptr %wp146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ab8 word 0x37f81fa8
  %r147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r147 = load i64, ptr %r147.p, align 8, !alias.scope !3, !noalias !4
  %t148 = and i64 %r147, 2147483648
  %cmp149 = icmp ne i64 %t148, 0
  br i1 %cmp149, label %L_8001d2eac, label %L_8001d2abc_ft
L_8001d2abc_ft:
  ; @pc 0x8001d2abc word 0x52800308
  %c150 = zext i32 24 to i64
  %wp151 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c150, ptr %wp151, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ac0 word 0x9ba8254d
  %r152.p = getelementptr inbounds i8, ptr %c, i64 80
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %c153 = trunc i64 %r152 to i32
  %c154 = zext i32 %c153 to i64
  %r155.p = getelementptr inbounds i8, ptr %c, i64 64
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %c156 = trunc i64 %r155 to i32
  %c157 = zext i32 %c156 to i64
  %t158 = mul i64 %c154, %c157
  %r159.p = getelementptr inbounds i8, ptr %c, i64 72
  %r159 = load i64, ptr %r159.p, align 8, !alias.scope !3, !noalias !4
  %t160 = add i64 %r159, %t158
  %wp161 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t160, ptr %wp161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ac4 word 0x78406da8
  %r162.p = getelementptr inbounds i8, ptr %c, i64 104
  %r162 = load i64, ptr %r162.p, align 8, !alias.scope !3, !noalias !4
  %t163 = add i64 %r162, 6
  %gmp164 = inttoptr i64 %t163 to ptr
  %gml165 = load i16, ptr %gmp164, align 1, !alias.scope !4, !noalias !3
  %c166 = zext i16 %gml165 to i64
  %wp167 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t163, ptr %wp167, align 8, !alias.scope !3, !noalias !4
  %wp168 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c166, ptr %wp168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ac8 word 0x7100051f
  %r169.p = getelementptr inbounds i8, ptr %c, i64 64
  %r169 = load i64, ptr %r169.p, align 8, !alias.scope !3, !noalias !4
  %c170 = trunc i64 %r169 to i32
  %t171 = sub i32 %c170, 1
  %fn172 = icmp slt i32 %t171, 0
  %fz173 = icmp eq i32 %t171, 0
  %fc174 = icmp uge i32 %c170, 1
  %fx1175 = xor i32 %c170, 1
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
  ; @pc 0x8001d2acc word 0x540006a1
  %r191.p = getelementptr inbounds i8, ptr %c, i64 272
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %fsh193 = lshr i64 %r191, 30
  %ftr194 = trunc i64 %fsh193 to i1
  %cond192 = xor i1 %ftr194, true
  br i1 %cond192, label %L_8001d2ba0, label %L_8001d2ad0_ft
L_8001d2ad0_ft:
  ; @pc 0x8001d2ad0 word 0x52800308
  %c195 = zext i32 24 to i64
  %wp196 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c195, ptr %wp196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ad4 word 0x9ba82548
  %r197.p = getelementptr inbounds i8, ptr %c, i64 80
  %r197 = load i64, ptr %r197.p, align 8, !alias.scope !3, !noalias !4
  %c198 = trunc i64 %r197 to i32
  %c199 = zext i32 %c198 to i64
  %r200.p = getelementptr inbounds i8, ptr %c, i64 64
  %r200 = load i64, ptr %r200.p, align 8, !alias.scope !3, !noalias !4
  %c201 = trunc i64 %r200 to i32
  %c202 = zext i32 %c201 to i64
  %t203 = mul i64 %c199, %c202
  %r204.p = getelementptr inbounds i8, ptr %c, i64 72
  %r204 = load i64, ptr %r204.p, align 8, !alias.scope !3, !noalias !4
  %t205 = add i64 %r204, %t203
  %wp206 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t205, ptr %wp206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ad8 word 0x79c02908
  %r207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r207 = load i64, ptr %r207.p, align 8, !alias.scope !3, !noalias !4
  %t208 = add i64 %r207, 20
  %gmp209 = inttoptr i64 %t208 to ptr
  %gml210 = load i16, ptr %gmp209, align 1, !alias.scope !4, !noalias !3
  %c211 = sext i16 %gml210 to i32
  %c212 = zext i32 %c211 to i64
  %wp213 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c212, ptr %wp213, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2adc word 0x37f81c68
  %r214.p = getelementptr inbounds i8, ptr %c, i64 64
  %r214 = load i64, ptr %r214.p, align 8, !alias.scope !3, !noalias !4
  %t215 = and i64 %r214, 2147483648
  %cmp216 = icmp ne i64 %t215, 0
  br i1 %cmp216, label %L_8001d2e68, label %L_8001d2ae0_ft
L_8001d2ae0_ft:
  ; @pc 0x8001d2ae0 word 0x3940644e
  %r217.p = getelementptr inbounds i8, ptr %c, i64 16
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %t218 = add i64 %r217, 25
  %gmp219 = inttoptr i64 %t218 to ptr
  %gml220 = load i8, ptr %gmp219, align 1, !alias.scope !4, !noalias !3
  %c221 = zext i8 %gml220 to i64
  %wp222 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c221, ptr %wp222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ae4 word 0x12003d08
  %r223.p = getelementptr inbounds i8, ptr %c, i64 64
  %r223 = load i64, ptr %r223.p, align 8, !alias.scope !3, !noalias !4
  %c224 = trunc i64 %r223 to i32
  %t225 = and i32 %c224, 65535
  %c226 = zext i32 %t225 to i64
  %wp227 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c226, ptr %wp227, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ae8 word 0x3618170e
  %r228.p = getelementptr inbounds i8, ptr %c, i64 112
  %r228 = load i64, ptr %r228.p, align 8, !alias.scope !3, !noalias !4
  %t229 = and i64 %r228, 8
  %cmp230 = icmp eq i64 %t229, 0
  br i1 %cmp230, label %L_8001d2dc8, label %L_8001d2aec_ft
L_8001d2aec_ft:
  ; @pc 0x8001d2aec word 0xf001bbce
  %wp231 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419822592, ptr %wp231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2af0 word 0xf945b9ce
  %r232.p = getelementptr inbounds i8, ptr %c, i64 112
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = add i64 %r232, 2928
  %gmp234 = inttoptr i64 %t233 to ptr
  %gml235 = load i64, ptr %gmp234, align 1, !alias.scope !4, !noalias !3
  %wp236 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml235, ptr %wp236, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2af4
L_8001d2b04_ft:
  ; @pc 0x8001d2b04 word 0xf94021ee
  %r279.p = getelementptr inbounds i8, ptr %c, i64 120
  %r279 = load i64, ptr %r279.p, align 8, !alias.scope !3, !noalias !4
  %t280 = add i64 %r279, 64
  %gmp281 = inttoptr i64 %t280 to ptr
  %gml282 = load i64, ptr %gmp281, align 1, !alias.scope !4, !noalias !3
  %wp283 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml282, ptr %wp283, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b08 word 0xf86859ce
  %r284.p = getelementptr inbounds i8, ptr %c, i64 112
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %r285.p = getelementptr inbounds i8, ptr %c, i64 64
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %c286 = trunc i64 %r285 to i32
  %c287 = zext i32 %c286 to i64
  %t288 = shl i64 %c287, 3
  %t289 = add i64 %r284, %t288
  %gmp290 = inttoptr i64 %t289 to ptr
  %gml291 = load i64, ptr %gmp290, align 1, !alias.scope !4, !noalias !3
  %wp292 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml291, ptr %wp292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b0c word 0xb4001aee
  %r293.p = getelementptr inbounds i8, ptr %c, i64 112
  %r293 = load i64, ptr %r293.p, align 8, !alias.scope !3, !noalias !4
  %cmp294 = icmp eq i64 %r293, 0
  br i1 %cmp294, label %L_8001d2e68, label %L_8001d2b10_ft
L_8001d2b10_ft:
  ; @pc 0x8001d2b10 word 0xf94025ed
  %r295.p = getelementptr inbounds i8, ptr %c, i64 120
  %r295 = load i64, ptr %r295.p, align 8, !alias.scope !3, !noalias !4
  %t296 = add i64 %r295, 72
  %gmp297 = inttoptr i64 %t296 to ptr
  %gml298 = load i64, ptr %gmp297, align 1, !alias.scope !4, !noalias !3
  %wp299 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml298, ptr %wp299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b14 word 0xb86879a8
  %r300.p = getelementptr inbounds i8, ptr %c, i64 104
  %r300 = load i64, ptr %r300.p, align 8, !alias.scope !3, !noalias !4
  %r301.p = getelementptr inbounds i8, ptr %c, i64 64
  %r301 = load i64, ptr %r301.p, align 8, !alias.scope !3, !noalias !4
  %t302 = shl i64 %r301, 2
  %t303 = add i64 %r300, %t302
  %gmp304 = inttoptr i64 %t303 to ptr
  %gml305 = load i32, ptr %gmp304, align 1, !alias.scope !4, !noalias !3
  %c306 = zext i32 %gml305 to i64
  %wp307 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c306, ptr %wp307, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2b18
L_8001d2b30_ft:
  ; @pc 0x8001d2b30 word 0x52800308
  %c351 = zext i32 24 to i64
  %wp352 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c351, ptr %wp352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b34 word 0x5280030d
  %c353 = zext i32 24 to i64
  %wp354 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c353, ptr %wp354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b38 word 0x7940016b
  %r355.p = getelementptr inbounds i8, ptr %c, i64 88
  %r355 = load i64, ptr %r355.p, align 8, !alias.scope !3, !noalias !4
  %gmp356 = inttoptr i64 %r355 to ptr
  %gml357 = load i16, ptr %gmp356, align 1, !alias.scope !4, !noalias !3
  %c358 = zext i16 %gml357 to i64
  %wp359 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c358, ptr %wp359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b3c word 0x9ba82548
  %r360.p = getelementptr inbounds i8, ptr %c, i64 80
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %c361 = trunc i64 %r360 to i32
  %c362 = zext i32 %c361 to i64
  %r363.p = getelementptr inbounds i8, ptr %c, i64 64
  %r363 = load i64, ptr %r363.p, align 8, !alias.scope !3, !noalias !4
  %c364 = trunc i64 %r363 to i32
  %c365 = zext i32 %c364 to i64
  %t366 = mul i64 %c362, %c365
  %r367.p = getelementptr inbounds i8, ptr %c, i64 72
  %r367 = load i64, ptr %r367.p, align 8, !alias.scope !3, !noalias !4
  %t368 = add i64 %r367, %t366
  %wp369 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t368, ptr %wp369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b40 word 0x9bad2549
  %r370.p = getelementptr inbounds i8, ptr %c, i64 80
  %r370 = load i64, ptr %r370.p, align 8, !alias.scope !3, !noalias !4
  %c371 = trunc i64 %r370 to i32
  %c372 = zext i32 %c371 to i64
  %r373.p = getelementptr inbounds i8, ptr %c, i64 104
  %r373 = load i64, ptr %r373.p, align 8, !alias.scope !3, !noalias !4
  %c374 = trunc i64 %r373 to i32
  %c375 = zext i32 %c374 to i64
  %t376 = mul i64 %c372, %c375
  %r377.p = getelementptr inbounds i8, ptr %c, i64 72
  %r377 = load i64, ptr %r377.p, align 8, !alias.scope !3, !noalias !4
  %t378 = add i64 %r377, %t376
  %wp379 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t378, ptr %wp379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b44 word 0x79400929
  %r380.p = getelementptr inbounds i8, ptr %c, i64 72
  %r380 = load i64, ptr %r380.p, align 8, !alias.scope !3, !noalias !4
  %t381 = add i64 %r380, 4
  %gmp382 = inttoptr i64 %t381 to ptr
  %gml383 = load i16, ptr %gmp382, align 1, !alias.scope !4, !noalias !3
  %c384 = zext i16 %gml383 to i64
  %wp385 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c384, ptr %wp385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b48 word 0x79400508
  %r386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r386 = load i64, ptr %r386.p, align 8, !alias.scope !3, !noalias !4
  %t387 = add i64 %r386, 2
  %gmp388 = inttoptr i64 %t387 to ptr
  %gml389 = load i16, ptr %gmp388, align 1, !alias.scope !4, !noalias !3
  %c390 = zext i16 %gml389 to i64
  %wp391 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c390, ptr %wp391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b4c word 0x7100013f
  %r392.p = getelementptr inbounds i8, ptr %c, i64 72
  %r392 = load i64, ptr %r392.p, align 8, !alias.scope !3, !noalias !4
  %c393 = trunc i64 %r392 to i32
  %t394 = sub i32 %c393, 0
  %fn395 = icmp slt i32 %t394, 0
  %fz396 = icmp eq i32 %t394, 0
  %fc397 = icmp uge i32 %c393, 0
  %fx1398 = xor i32 %c393, 0
  %fx2399 = xor i32 %c393, %t394
  %fva400 = and i32 %fx1398, %fx2399
  %fv401 = icmp slt i32 %fva400, 0
  %nz402 = zext i1 %fn395 to i64
  %zz403 = zext i1 %fz396 to i64
  %cz404 = zext i1 %fc397 to i64
  %vz405 = zext i1 %fv401 to i64
  %ns406 = shl i64 %nz402, 31
  %zs407 = shl i64 %zz403, 30
  %cs408 = shl i64 %cz404, 29
  %vs409 = shl i64 %vz405, 28
  %nzor410 = or i64 %ns406, %zs407
  %cvor411 = or i64 %cs408, %vs409
  %nzcv412 = or i64 %nzor410, %cvor411
  %wp413 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv412, ptr %wp413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b50 word 0x1a9f17ea
  %t414 = add i32 0, 1
  %r415.p = getelementptr inbounds i8, ptr %c, i64 272
  %r415 = load i64, ptr %r415.p, align 8, !alias.scope !3, !noalias !4
  %fsh417 = lshr i64 %r415, 30
  %ftr418 = trunc i64 %fsh417 to i1
  %cond416 = xor i1 %ftr418, true
  %sel419 = select i1 %cond416, i32 0, i32 %t414
  %c420 = zext i32 %sel419 to i64
  %wp421 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c420, ptr %wp421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b54 word 0x34001588
  %r422.p = getelementptr inbounds i8, ptr %c, i64 64
  %r422 = load i64, ptr %r422.p, align 8, !alias.scope !3, !noalias !4
  %c423 = trunc i64 %r422 to i32
  %cmp424 = icmp eq i32 %c423, 0
  br i1 %cmp424, label %L_8001d2e04, label %L_8001d2b58
L_8001d2b60_ft:
  ; @pc 0x8001d2b60 word 0xaa1f03eb
  %t433 = or i64 0, 0
  %wp434 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t433, ptr %wp434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b64 word 0x9100212a
  %r435.p = getelementptr inbounds i8, ptr %c, i64 72
  %r435 = load i64, ptr %r435.p, align 8, !alias.scope !3, !noalias !4
  %t436 = add i64 %r435, 8
  %wp437 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t436, ptr %wp437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b68 word 0xb2607fec
  %t438 = or i64 0, -4294967296
  %wp439 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t438, ptr %wp439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b6c word 0xd2c0002d
  %wp440 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 4294967296, ptr %wp440, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2b70
L_8001d2b7c_ft:
  ; @pc 0x8001d2b7c word 0x54000784
  %r452.p = getelementptr inbounds i8, ptr %c, i64 272
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %fsh454 = lshr i64 %r452, 31
  %cond453 = trunc i64 %fsh454 to i1
  br i1 %cond453, label %L_8001d2c6c, label %L_8001d2b80_ft
L_8001d2b80_ft:
  ; @pc 0x8001d2b80 word 0x9100056b
  %r455.p = getelementptr inbounds i8, ptr %c, i64 88
  %r455 = load i64, ptr %r455.p, align 8, !alias.scope !3, !noalias !4
  %t456 = add i64 %r455, 1
  %wp457 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t456, ptr %wp457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b84 word 0x8b0d018c
  %r458.p = getelementptr inbounds i8, ptr %c, i64 96
  %r458 = load i64, ptr %r458.p, align 8, !alias.scope !3, !noalias !4
  %r459.p = getelementptr inbounds i8, ptr %c, i64 104
  %r459 = load i64, ptr %r459.p, align 8, !alias.scope !3, !noalias !4
  %t460 = add i64 %r458, %r459
  %wp461 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t460, ptr %wp461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b88 word 0x9100214a
  %r462.p = getelementptr inbounds i8, ptr %c, i64 80
  %r462 = load i64, ptr %r462.p, align 8, !alias.scope !3, !noalias !4
  %t463 = add i64 %r462, 8
  %wp464 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t463, ptr %wp464, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b8c word 0xeb0b011f
  %r465.p = getelementptr inbounds i8, ptr %c, i64 64
  %r465 = load i64, ptr %r465.p, align 8, !alias.scope !3, !noalias !4
  %r466.p = getelementptr inbounds i8, ptr %c, i64 88
  %r466 = load i64, ptr %r466.p, align 8, !alias.scope !3, !noalias !4
  %t467 = sub i64 %r465, %r466
  %fn468 = icmp slt i64 %t467, 0
  %fz469 = icmp eq i64 %t467, 0
  %fc470 = icmp uge i64 %r465, %r466
  %fx1471 = xor i64 %r465, %r466
  %fx2472 = xor i64 %r465, %t467
  %fva473 = and i64 %fx1471, %fx2472
  %fv474 = icmp slt i64 %fva473, 0
  %nz475 = zext i1 %fn468 to i64
  %zz476 = zext i1 %fz469 to i64
  %cz477 = zext i1 %fc470 to i64
  %vz478 = zext i1 %fv474 to i64
  %ns479 = shl i64 %nz475, 31
  %zs480 = shl i64 %zz476, 30
  %cs481 = shl i64 %cz477, 29
  %vs482 = shl i64 %vz478, 28
  %nzor483 = or i64 %ns479, %zs480
  %cvor484 = or i64 %cs481, %vs482
  %nzcv485 = or i64 %nzor483, %cvor484
  %wp486 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv485, ptr %wp486, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2b90 word 0x54ffff01
  %r487.p = getelementptr inbounds i8, ptr %c, i64 272
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %fsh489 = lshr i64 %r487, 30
  %ftr490 = trunc i64 %fsh489 to i1
  %cond488 = xor i1 %ftr490, true
  br i1 %cond488, label %L_8001d2b70, label %L_8001d2b94
L_8001d2be4_ft:
  ; @pc 0x8001d2be4 word 0x12001dc4
  %r632.p = getelementptr inbounds i8, ptr %c, i64 112
  %r632 = load i64, ptr %r632.p, align 8, !alias.scope !3, !noalias !4
  %c633 = trunc i64 %r632 to i32
  %t634 = and i32 %c633, 255
  %c635 = zext i32 %t634 to i64
  %wp636 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c635, ptr %wp636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2be8 word 0xf001bbce
  %wp637 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419822592, ptr %wp637, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bec word 0xf945b9ce
  %r638.p = getelementptr inbounds i8, ptr %c, i64 112
  %r638 = load i64, ptr %r638.p, align 8, !alias.scope !3, !noalias !4
  %t639 = add i64 %r638, 2928
  %gmp640 = inttoptr i64 %t639 to ptr
  %gml641 = load i64, ptr %gmp640, align 1, !alias.scope !4, !noalias !3
  %wp642 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml641, ptr %wp642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bf0 word 0xf94001d0
  %r643.p = getelementptr inbounds i8, ptr %c, i64 112
  %r643 = load i64, ptr %r643.p, align 8, !alias.scope !3, !noalias !4
  %gmp644 = inttoptr i64 %r643 to ptr
  %gml645 = load i64, ptr %gmp644, align 1, !alias.scope !4, !noalias !3
  %wp646 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml645, ptr %wp646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bf4 word 0xb001bc0e
  %wp647 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 34419847168, ptr %wp647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bf8 word 0xf94311ce
  %r648.p = getelementptr inbounds i8, ptr %c, i64 112
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %t649 = add i64 %r648, 1568
  %gmp650 = inttoptr i64 %t649 to ptr
  %gml651 = load i64, ptr %gmp650, align 1, !alias.scope !4, !noalias !3
  %wp652 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml651, ptr %wp652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2bfc word 0xf94001cf
  %r653.p = getelementptr inbounds i8, ptr %c, i64 112
  %r653 = load i64, ptr %r653.p, align 8, !alias.scope !3, !noalias !4
  %gmp654 = inttoptr i64 %r653 to ptr
  %gml655 = load i64, ptr %gmp654, align 1, !alias.scope !4, !noalias !3
  %wp656 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml655, ptr %wp656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c00 word 0x3940644e
  %r657.p = getelementptr inbounds i8, ptr %c, i64 16
  %r657 = load i64, ptr %r657.p, align 8, !alias.scope !3, !noalias !4
  %t658 = add i64 %r657, 25
  %gmp659 = inttoptr i64 %t658 to ptr
  %gml660 = load i8, ptr %gmp659, align 1, !alias.scope !4, !noalias !3
  %c661 = zext i8 %gml660 to i64
  %wp662 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c661, ptr %wp662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c04 word 0xaa0f03e0
  %r663.p = getelementptr inbounds i8, ptr %c, i64 120
  %r663 = load i64, ptr %r663.p, align 8, !alias.scope !3, !noalias !4
  %t664 = or i64 0, %r663
  %wp665 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t664, ptr %wp665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c08 word 0x3618004e
  %r666.p = getelementptr inbounds i8, ptr %c, i64 112
  %r666 = load i64, ptr %r666.p, align 8, !alias.scope !3, !noalias !4
  %t667 = and i64 %r666, 8
  %cmp668 = icmp eq i64 %t667, 0
  br i1 %cmp668, label %L_8001d2c10, label %L_8001d2c0c_ft
L_8001d2c0c_ft:
  ; @pc 0x8001d2c0c word 0xaa1003e0
  %r669.p = getelementptr inbounds i8, ptr %c, i64 128
  %r669 = load i64, ptr %r669.p, align 8, !alias.scope !3, !noalias !4
  %t670 = or i64 0, %r669
  %wp671 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t670, ptr %wp671, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2c10
L_8001d2c1c_ft:
  ; @pc 0x8001d2c1c word 0xf940250e
  %r710.p = getelementptr inbounds i8, ptr %c, i64 64
  %r710 = load i64, ptr %r710.p, align 8, !alias.scope !3, !noalias !4
  %t711 = add i64 %r710, 72
  %gmp712 = inttoptr i64 %t711 to ptr
  %gml713 = load i64, ptr %gmp712, align 1, !alias.scope !4, !noalias !3
  %wp714 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml713, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c20 word 0xf86459ce
  %r715.p = getelementptr inbounds i8, ptr %c, i64 112
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %r716.p = getelementptr inbounds i8, ptr %c, i64 32
  %r716 = load i64, ptr %r716.p, align 8, !alias.scope !3, !noalias !4
  %c717 = trunc i64 %r716 to i32
  %c718 = zext i32 %c717 to i64
  %t719 = shl i64 %c718, 3
  %t720 = add i64 %r715, %t719
  %gmp721 = inttoptr i64 %t720 to ptr
  %gml722 = load i64, ptr %gmp721, align 1, !alias.scope !4, !noalias !3
  %wp723 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %gml722, ptr %wp723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c24 word 0xb40010ae
  %r724.p = getelementptr inbounds i8, ptr %c, i64 112
  %r724 = load i64, ptr %r724.p, align 8, !alias.scope !3, !noalias !4
  %cmp725 = icmp eq i64 %r724, 0
  br i1 %cmp725, label %L_8001d2e38, label %L_8001d2c28_ft
L_8001d2c28_ft:
  ; @pc 0x8001d2c28 word 0xb4001503
  %r726.p = getelementptr inbounds i8, ptr %c, i64 24
  %r726 = load i64, ptr %r726.p, align 8, !alias.scope !3, !noalias !4
  %cmp727 = icmp eq i64 %r726, 0
  br i1 %cmp727, label %L_8001d2ec8, label %L_8001d2c2c_ft
L_8001d2c2c_ft:
  ; @pc 0x8001d2c2c word 0xf9401468
  %r728.p = getelementptr inbounds i8, ptr %c, i64 24
  %r728 = load i64, ptr %r728.p, align 8, !alias.scope !3, !noalias !4
  %t729 = add i64 %r728, 40
  %gmp730 = inttoptr i64 %t729 to ptr
  %gml731 = load i64, ptr %gmp730, align 1, !alias.scope !4, !noalias !3
  %wp732 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml731, ptr %wp732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c30 word 0xb40014c8
  %r733.p = getelementptr inbounds i8, ptr %c, i64 64
  %r733 = load i64, ptr %r733.p, align 8, !alias.scope !3, !noalias !4
  %cmp734 = icmp eq i64 %r733, 0
  br i1 %cmp734, label %L_8001d2ec8, label %L_8001d2c34_ft
L_8001d2c34_ft:
  ; @pc 0x8001d2c34 word 0x39406508
  %r735.p = getelementptr inbounds i8, ptr %c, i64 64
  %r735 = load i64, ptr %r735.p, align 8, !alias.scope !3, !noalias !4
  %t736 = add i64 %r735, 25
  %gmp737 = inttoptr i64 %t736 to ptr
  %gml738 = load i8, ptr %gmp737, align 1, !alias.scope !4, !noalias !3
  %c739 = zext i8 %gml738 to i64
  %wp740 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c739, ptr %wp740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c38 word 0x36180048
  %r741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r741 = load i64, ptr %r741.p, align 8, !alias.scope !3, !noalias !4
  %t742 = and i64 %r741, 8
  %cmp743 = icmp eq i64 %t742, 0
  br i1 %cmp743, label %L_8001d2c40, label %L_8001d2c3c_ft
L_8001d2c3c_ft:
  ; @pc 0x8001d2c3c word 0xaa1003ef
  %r744.p = getelementptr inbounds i8, ptr %c, i64 128
  %r744 = load i64, ptr %r744.p, align 8, !alias.scope !3, !noalias !4
  %t745 = or i64 0, %r744
  %wp746 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t745, ptr %wp746, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2c40
L_8001d2c48_ft:
  ; @pc 0x8001d2c48 word 0x9102c1e8
  %r756.p = getelementptr inbounds i8, ptr %c, i64 120
  %r756 = load i64, ptr %r756.p, align 8, !alias.scope !3, !noalias !4
  %t757 = add i64 %r756, 176
  %wp758 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t757, ptr %wp758, align 8, !alias.scope !3, !noalias !4
  br label %L_8001d2c4c
L_8001d2c60_ft:
  ; @pc 0x8001d2c60 word 0x8b0f0d08
  %r806.p = getelementptr inbounds i8, ptr %c, i64 64
  %r806 = load i64, ptr %r806.p, align 8, !alias.scope !3, !noalias !4
  %r807.p = getelementptr inbounds i8, ptr %c, i64 120
  %r807 = load i64, ptr %r807.p, align 8, !alias.scope !3, !noalias !4
  %t808 = shl i64 %r807, 3
  %t809 = add i64 %r806, %t808
  %wp810 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t809, ptr %wp810, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c64 word 0xb9400508
  %r811.p = getelementptr inbounds i8, ptr %c, i64 64
  %r811 = load i64, ptr %r811.p, align 8, !alias.scope !3, !noalias !4
  %t812 = add i64 %r811, 4
  %gmp813 = inttoptr i64 %t812 to ptr
  %gml814 = load i32, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %c815 = zext i32 %gml814 to i64
  %wp816 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c815, ptr %wp816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c68 word 0x17ffffac
  br label %L_8001d2b18
L_8001d2c74_ft:
  ; @pc 0x8001d2c74 word 0x8b8c752a
  %r825.p = getelementptr inbounds i8, ptr %c, i64 72
  %r825 = load i64, ptr %r825.p, align 8, !alias.scope !3, !noalias !4
  %r826.p = getelementptr inbounds i8, ptr %c, i64 96
  %r826 = load i64, ptr %r826.p, align 8, !alias.scope !3, !noalias !4
  %t827 = ashr i64 %r826, 29
  %t828 = add i64 %r825, %t827
  %wp829 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t828, ptr %wp829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c78 word 0x2d400d44
  %r830.p = getelementptr inbounds i8, ptr %c, i64 80
  %r830 = load i64, ptr %r830.p, align 8, !alias.scope !3, !noalias !4
  %t831 = add i64 %r830, 4
  %gmp832 = inttoptr i64 %r830 to ptr
  %gml833 = load i32, ptr %gmp832, align 1, !alias.scope !4, !noalias !3
  %gmp834 = inttoptr i64 %t831 to ptr
  %gml835 = load i32, ptr %gmp834, align 1, !alias.scope !4, !noalias !3
  %c836 = zext i32 %gml833 to i128
  %wp837 = getelementptr inbounds i8, ptr %c, i64 576
  store i128 %c836, ptr %wp837, align 16, !alias.scope !3, !noalias !4
  %c838 = zext i32 %gml835 to i128
  %wp839 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 %c838, ptr %wp839, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2c7c word 0x1e233800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 3)
  ; @pc 0x8001d2c80 word 0x1e243842
  call void @rt_fp_op_s(ptr %c, i32 1, i32 2, i32 2, i32 4)
  ; @pc 0x8001d2c84 word 0x1e243821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 4)
  ; @pc 0x8001d2c88 word 0x1e221800
  call void @rt_fp_op_s(ptr %c, i32 5, i32 0, i32 0, i32 2)
  ; @pc 0x8001d2c8c word 0x1f010c00
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 0, i32 0, i32 0, i32 1, i32 3)
  ; @pc 0x8001d2c90 word 0x14000005
  br label %L_8001d2ca4
L_8001d2cd0_ft:
  ; @pc 0x8001d2cd0 word 0x2a0803e9
  %r942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r942 = load i64, ptr %r942.p, align 8, !alias.scope !3, !noalias !4
  %c943 = trunc i64 %r942 to i32
  %t944 = or i32 0, %c943
  %c945 = zext i32 %t944 to i64
  %wp946 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c945, ptr %wp946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cd4 word 0xb0015d0b
  %wp947 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34407395328, ptr %wp947, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cd8 word 0x9114c96b
  %r948.p = getelementptr inbounds i8, ptr %c, i64 88
  %r948 = load i64, ptr %r948.p, align 8, !alias.scope !3, !noalias !4
  %t949 = add i64 %r948, 1330
  %wp950 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t949, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2cdc word 0x1000008c
  %wp951 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34361650412, ptr %wp951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ce0 word 0x7869796d
  %r952.p = getelementptr inbounds i8, ptr %c, i64 88
  %r952 = load i64, ptr %r952.p, align 8, !alias.scope !3, !noalias !4
  %r953.p = getelementptr inbounds i8, ptr %c, i64 72
  %r953 = load i64, ptr %r953.p, align 8, !alias.scope !3, !noalias !4
  %t954 = shl i64 %r953, 1
  %t955 = add i64 %r952, %t954
  %gmp956 = inttoptr i64 %t955 to ptr
  %gml957 = load i16, ptr %gmp956, align 1, !alias.scope !4, !noalias !3
  %c958 = zext i16 %gml957 to i64
  %wp959 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c958, ptr %wp959, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ce4 word 0x8b0d098c
  %r960.p = getelementptr inbounds i8, ptr %c, i64 96
  %r960 = load i64, ptr %r960.p, align 8, !alias.scope !3, !noalias !4
  %r961.p = getelementptr inbounds i8, ptr %c, i64 104
  %r961 = load i64, ptr %r961.p, align 8, !alias.scope !3, !noalias !4
  %t962 = shl i64 %r961, 2
  %t963 = add i64 %r960, %t962
  %wp964 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t963, ptr %wp964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ce8 word 0xd61f0180
  %r965.p = getelementptr inbounds i8, ptr %c, i64 96
  %r965 = load i64, ptr %r965.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r965, label %L_8001d2ce8_jt_def [
    i64 34361650412, label %L_8001d2cec
    i64 34361650480, label %L_8001d2d30
    i64 34361650988, label %L_8001d2f2c
    i64 34361651012, label %L_8001d2f44
    i64 34361651068, label %L_8001d2f7c
    i64 34361651124, label %L_8001d2fb4
    i64 34361651180, label %L_8001d2fec
    i64 34361651256, label %L_8001d3038
    i64 34361651408, label %L_8001d30d0
    i64 34361651560, label %L_8001d3168
    i64 34361651712, label %L_8001d3200
    i64 34361651868, label %L_8001d329c
    i64 34361652040, label %L_8001d3348
    i64 34361652192, label %L_8001d33e0
    i64 34361652344, label %L_8001d3478
  ]
L_8001d2d28_ft:
  ; @pc 0x8001d2d28 word 0xbd400540
  %r1054.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1054 = load i64, ptr %r1054.p, align 8, !alias.scope !3, !noalias !4
  %t1055 = add i64 %r1054, 4
  %gmp1056 = inttoptr i64 %t1055 to ptr
  %gml1057 = load i32, ptr %gmp1056, align 1, !alias.scope !4, !noalias !3
  %c1058 = zext i32 %gml1057 to i128
  %wp1059 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1058, ptr %wp1059, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d2c word 0x17ffffde
  br label %L_8001d2ca4
L_8001d2d58_ft:
  ; @pc 0x8001d2d58 word 0x92405d49
  %r1124.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1124 = load i64, ptr %r1124.p, align 8, !alias.scope !3, !noalias !4
  %t1125 = and i64 %r1124, 16777215
  %wp1126 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1125, ptr %wp1126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d5c word 0x8b090d08
  %r1127.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1127 = load i64, ptr %r1127.p, align 8, !alias.scope !3, !noalias !4
  %r1128.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1128 = load i64, ptr %r1128.p, align 8, !alias.scope !3, !noalias !4
  %t1129 = shl i64 %r1128, 3
  %t1130 = add i64 %r1127, %t1129
  %wp1131 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1130, ptr %wp1131, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d60 word 0x2d400500
  %r1132.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1132 = load i64, ptr %r1132.p, align 8, !alias.scope !3, !noalias !4
  %t1133 = add i64 %r1132, 4
  %gmp1134 = inttoptr i64 %r1132 to ptr
  %gml1135 = load i32, ptr %gmp1134, align 1, !alias.scope !4, !noalias !3
  %gmp1136 = inttoptr i64 %t1133 to ptr
  %gml1137 = load i32, ptr %gmp1136, align 1, !alias.scope !4, !noalias !3
  %c1138 = zext i32 %gml1135 to i128
  %wp1139 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1138, ptr %wp1139, align 16, !alias.scope !3, !noalias !4
  %c1140 = zext i32 %gml1137 to i128
  %wp1141 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c1140, ptr %wp1141, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d64 word 0x1e202020
  %fcmp1142 = call i64 @rt_fp_cmp_s(ptr %c, i32 1, i32 0, i32 0)
  %wp1143 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp1142, ptr %wp1143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d68 word 0x54fffa6b
  %r1144.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1144 = load i64, ptr %r1144.p, align 8, !alias.scope !3, !noalias !4
  %fsh1146 = lshr i64 %r1144, 31
  %ftr1147 = trunc i64 %fsh1146 to i1
  %fsh1148 = lshr i64 %r1144, 28
  %ftr1149 = trunc i64 %fsh1148 to i1
  %cond1145 = icmp ne i1 %ftr1147, %ftr1149
  br i1 %cond1145, label %L_8001d2cb4, label %L_8001d2d6c_ft
L_8001d2d6c_ft:
  ; @pc 0x8001d2d6c word 0xf9400c08
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %t1151 = add i64 %r1150, 24
  %gmp1152 = inttoptr i64 %t1151 to ptr
  %gml1153 = load i64, ptr %gmp1152, align 1, !alias.scope !4, !noalias !3
  %wp1154 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1153, ptr %wp1154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d70 word 0x1e3e1003
  %wp1155 = getelementptr inbounds i8, ptr %c, i64 560
  store i128 3212836864, ptr %wp1155, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d74 word 0x1e203821
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 1, i32 0)
  ; @pc 0x8001d2d78 word 0xb948dd0a
  %r1156.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1156 = load i64, ptr %r1156.p, align 8, !alias.scope !3, !noalias !4
  %t1157 = add i64 %r1156, 2268
  %gmp1158 = inttoptr i64 %t1157 to ptr
  %gml1159 = load i32, ptr %gmp1158, align 1, !alias.scope !4, !noalias !3
  %c1160 = zext i32 %gml1159 to i64
  %wp1161 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1160, ptr %wp1161, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d7c word 0xb948d909
  %r1162.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1162 = load i64, ptr %r1162.p, align 8, !alias.scope !3, !noalias !4
  %t1163 = add i64 %r1162, 2264
  %gmp1164 = inttoptr i64 %t1163 to ptr
  %gml1165 = load i32, ptr %gmp1164, align 1, !alias.scope !4, !noalias !3
  %c1166 = zext i32 %gml1165 to i64
  %wp1167 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1166, ptr %wp1167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d80 word 0xb908d90a
  %r1168.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1168 = load i64, ptr %r1168.p, align 8, !alias.scope !3, !noalias !4
  %t1169 = add i64 %r1168, 2264
  %r1170.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1170 = load i64, ptr %r1170.p, align 8, !alias.scope !3, !noalias !4
  %c1171 = trunc i64 %r1170 to i32
  %gmp1172 = inttoptr i64 %t1169 to ptr
  store i32 %c1171, ptr %gmp1172, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2d84 word 0xb948e10a
  %r1173.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1173 = load i64, ptr %r1173.p, align 8, !alias.scope !3, !noalias !4
  %t1174 = add i64 %r1173, 2272
  %gmp1175 = inttoptr i64 %t1174 to ptr
  %gml1176 = load i32, ptr %gmp1175, align 1, !alias.scope !4, !noalias !3
  %c1177 = zext i32 %gml1176 to i64
  %wp1178 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1177, ptr %wp1178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d88 word 0x4a092d29
  %r1179.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1179 = load i64, ptr %r1179.p, align 8, !alias.scope !3, !noalias !4
  %c1180 = trunc i64 %r1179 to i32
  %t1181 = shl i32 %c1180, 11
  %r1182.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1182 = load i64, ptr %r1182.p, align 8, !alias.scope !3, !noalias !4
  %c1183 = trunc i64 %r1182 to i32
  %t1184 = xor i32 %c1183, %t1181
  %c1185 = zext i32 %t1184 to i64
  %wp1186 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1185, ptr %wp1186, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d8c word 0x53087d2b
  %r1187.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1187 = load i64, ptr %r1187.p, align 8, !alias.scope !3, !noalias !4
  %c1188 = trunc i64 %r1187 to i32
  %ror1189 = call i32 @llvm.fshr.i32(i32 %c1188, i32 %c1188, i32 8)
  %t1190 = and i32 %ror1189, 16777215
  %c1191 = zext i32 %t1190 to i64
  %wp1192 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1191, ptr %wp1192, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d90 word 0xb908dd0a
  %r1193.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1193 = load i64, ptr %r1193.p, align 8, !alias.scope !3, !noalias !4
  %t1194 = add i64 %r1193, 2268
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %c1196 = trunc i64 %r1195 to i32
  %gmp1197 = inttoptr i64 %t1194 to ptr
  store i32 %c1196, ptr %gmp1197, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2d94 word 0xb948e50a
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %t1199 = add i64 %r1198, 2276
  %gmp1200 = inttoptr i64 %t1199 to ptr
  %gml1201 = load i32, ptr %gmp1200, align 1, !alias.scope !4, !noalias !3
  %c1202 = zext i32 %gml1201 to i64
  %wp1203 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1202, ptr %wp1203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d98 word 0x4a4a4d6b
  %r1204.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1204 = load i64, ptr %r1204.p, align 8, !alias.scope !3, !noalias !4
  %c1205 = trunc i64 %r1204 to i32
  %t1206 = lshr i32 %c1205, 19
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %c1208 = trunc i64 %r1207 to i32
  %t1209 = xor i32 %c1208, %t1206
  %c1210 = zext i32 %t1209 to i64
  %wp1211 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1210, ptr %wp1211, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2d9c word 0x4a0a0129
  %r1212.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1212 = load i64, ptr %r1212.p, align 8, !alias.scope !3, !noalias !4
  %c1213 = trunc i64 %r1212 to i32
  %r1214.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1214 = load i64, ptr %r1214.p, align 8, !alias.scope !3, !noalias !4
  %c1215 = trunc i64 %r1214 to i32
  %t1216 = xor i32 %c1215, %c1213
  %c1217 = zext i32 %t1216 to i64
  %wp1218 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1217, ptr %wp1218, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2da0 word 0xb908e10a
  %r1219.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1219 = load i64, ptr %r1219.p, align 8, !alias.scope !3, !noalias !4
  %t1220 = add i64 %r1219, 2272
  %r1221.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1221 = load i64, ptr %r1221.p, align 8, !alias.scope !3, !noalias !4
  %c1222 = trunc i64 %r1221 to i32
  %gmp1223 = inttoptr i64 %t1220 to ptr
  store i32 %c1222, ptr %gmp1223, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2da4 word 0x4a090169
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %c1225 = trunc i64 %r1224 to i32
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %c1227 = trunc i64 %r1226 to i32
  %t1228 = xor i32 %c1227, %c1225
  %c1229 = zext i32 %t1228 to i64
  %wp1230 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1229, ptr %wp1230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2da8 word 0xb908e509
  %r1231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1231 = load i64, ptr %r1231.p, align 8, !alias.scope !3, !noalias !4
  %t1232 = add i64 %r1231, 2276
  %r1233.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1233 = load i64, ptr %r1233.p, align 8, !alias.scope !3, !noalias !4
  %c1234 = trunc i64 %r1233 to i32
  %gmp1235 = inttoptr i64 %t1232 to ptr
  store i32 %c1234, ptr %gmp1235, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d2dac word 0x52a7f008
  %c1236 = zext i32 1065353216 to i64
  %wp1237 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1236, ptr %wp1237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2db0 word 0x33097d28
  %r1238.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1238 = load i64, ptr %r1238.p, align 8, !alias.scope !3, !noalias !4
  %c1239 = trunc i64 %r1238 to i32
  %ror1240 = call i32 @llvm.fshr.i32(i32 %c1239, i32 %c1239, i32 9)
  %r1241.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1241 = load i64, ptr %r1241.p, align 8, !alias.scope !3, !noalias !4
  %c1242 = trunc i64 %r1241 to i32
  %t1243 = and i32 %ror1240, -1
  %t1244 = and i32 %c1242, 0
  %t1245 = or i32 %t1244, %t1243
  %t1246 = and i32 %t1245, 8388607
  %t1247 = and i32 %c1242, -8388608
  %t1248 = or i32 %t1247, %t1246
  %c1249 = zext i32 %t1248 to i64
  %wp1250 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1249, ptr %wp1250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2db4 word 0x1e270102
  %r1251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1251 = load i64, ptr %r1251.p, align 8, !alias.scope !3, !noalias !4
  %c1252 = trunc i64 %r1251 to i32
  %c1253 = zext i32 %c1252 to i128
  %wp1254 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 %c1253, ptr %wp1254, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2db8 word 0x1e232842
  call void @rt_fp_op_s(ptr %c, i32 0, i32 2, i32 2, i32 3)
  ; @pc 0x8001d2dbc word 0x1e220821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 2)
  ; @pc 0x8001d2dc0 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d2dc4 word 0x17ffffbc
  br label %L_8001d2cb4
L_8001d2de0_ft:
  ; @pc 0x8001d2de0 word 0x710015bf
  %r1291.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1291 = load i64, ptr %r1291.p, align 8, !alias.scope !3, !noalias !4
  %c1292 = trunc i64 %r1291 to i32
  %t1293 = sub i32 %c1292, 5
  %fn1294 = icmp slt i32 %t1293, 0
  %fz1295 = icmp eq i32 %t1293, 0
  %fc1296 = icmp uge i32 %c1292, 5
  %fx11297 = xor i32 %c1292, 5
  %fx21298 = xor i32 %c1292, %t1293
  %fva1299 = and i32 %fx11297, %fx21298
  %fv1300 = icmp slt i32 %fva1299, 0
  %nz1301 = zext i1 %fn1294 to i64
  %zz1302 = zext i1 %fz1295 to i64
  %cz1303 = zext i1 %fc1296 to i64
  %vz1304 = zext i1 %fv1300 to i64
  %ns1305 = shl i64 %nz1301, 31
  %zs1306 = shl i64 %zz1302, 30
  %cs1307 = shl i64 %cz1303, 29
  %vs1308 = shl i64 %vz1304, 28
  %nzor1309 = or i64 %ns1305, %zs1306
  %cvor1310 = or i64 %cs1307, %vs1308
  %nzcv1311 = or i64 %nzor1309, %cvor1310
  %wp1312 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1311, ptr %wp1312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2de4 word 0x54ffea00
  %r1313.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1313 = load i64, ptr %r1313.p, align 8, !alias.scope !3, !noalias !4
  %fsh1315 = lshr i64 %r1313, 30
  %cond1314 = trunc i64 %fsh1315 to i1
  br i1 %cond1314, label %L_8001d2b24, label %L_8001d2de8_ft
L_8001d2de8_ft:
  ; @pc 0x8001d2de8 word 0x5280002e
  %c1316 = zext i32 1 to i64
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1316, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2dec word 0x1acd21cd
  %r1318.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1318 = load i64, ptr %r1318.p, align 8, !alias.scope !3, !noalias !4
  %c1319 = trunc i64 %r1318 to i32
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %c1321 = trunc i64 %r1320 to i32
  %t1322 = and i32 %c1321, 31
  %t1323 = shl i32 %c1319, %t1322
  %c1324 = zext i32 %t1323 to i64
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2df0 word 0x5280036e
  %c1326 = zext i32 27 to i64
  %wp1327 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %c1326, ptr %wp1327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2df4 word 0x6a0e01bf
  %r1328.p = getelementptr inbounds i8, ptr %c, i64 112
  %r1328 = load i64, ptr %r1328.p, align 8, !alias.scope !3, !noalias !4
  %c1329 = trunc i64 %r1328 to i32
  %r1330.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1330 = load i64, ptr %r1330.p, align 8, !alias.scope !3, !noalias !4
  %c1331 = trunc i64 %r1330 to i32
  %t1332 = and i32 %c1331, %c1329
  %fn1333 = icmp slt i32 %t1332, 0
  %fz1334 = icmp eq i32 %t1332, 0
  %nz1335 = zext i1 %fn1333 to i64
  %zz1336 = zext i1 %fz1334 to i64
  %ns1337 = shl i64 %nz1335, 31
  %zs1338 = shl i64 %zz1336, 30
  %nzcv1339 = or i64 %ns1337, %zs1338
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1339, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2df8 word 0x54ffe980
  %r1341.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1341 = load i64, ptr %r1341.p, align 8, !alias.scope !3, !noalias !4
  %fsh1343 = lshr i64 %r1341, 30
  %cond1342 = trunc i64 %fsh1343 to i1
  br i1 %cond1342, label %L_8001d2b28, label %L_8001d2dfc_ft
L_8001d2dfc_ft:
  ; @pc 0x8001d2dfc word 0x1e220101
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %c1345 = trunc i64 %r1344 to i32
  %c1346 = zext i32 %c1345 to i64
  call void @rt_fp_fromint(ptr %c, i32 0, i32 1, i64 %c1346, i32 32, i32 0, i32 0)
  ; @pc 0x8001d2e00 word 0x17ffff4a
  br label %L_8001d2b28
L_8001d2ed8_ft:
  ; @pc 0x8001d2ed8 word 0xf9404c48
  %r1562.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1562 = load i64, ptr %r1562.p, align 8, !alias.scope !3, !noalias !4
  %t1563 = add i64 %r1562, 152
  %gmp1564 = inttoptr i64 %t1563 to ptr
  %gml1565 = load i64, ptr %gmp1564, align 1, !alias.scope !4, !noalias !3
  %wp1566 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1565, ptr %wp1566, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2edc word 0xbc647900
  %r1567.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1567 = load i64, ptr %r1567.p, align 8, !alias.scope !3, !noalias !4
  %r1568.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1568 = load i64, ptr %r1568.p, align 8, !alias.scope !3, !noalias !4
  %t1569 = shl i64 %r1568, 2
  %t1570 = add i64 %r1567, %t1569
  %gmp1571 = inttoptr i64 %t1570 to ptr
  %gml1572 = load i32, ptr %gmp1571, align 1, !alias.scope !4, !noalias !3
  %c1573 = zext i32 %gml1572 to i128
  %wp1574 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1573, ptr %wp1574, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ee0 word 0x1e260008
  %r1575.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1575 = load i128, ptr %r1575.p, align 16, !alias.scope !3, !noalias !4
  %c1576 = trunc i128 %r1575 to i32
  %c1577 = zext i32 %c1576 to i64
  %wp1578 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1577, ptr %wp1578, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ee4 word 0x17ffff0d
  br label %L_8001d2b18
L_8001d2ef0_ft:
  ; @pc 0x8001d2ef0 word 0xaa0203ef
  %r1586.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1586 = load i64, ptr %r1586.p, align 8, !alias.scope !3, !noalias !4
  %t1587 = or i64 0, %r1586
  %wp1588 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t1587, ptr %wp1588, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ef4 word 0xf9404c4f
  %r1589.p = getelementptr inbounds i8, ptr %c, i64 16
  %r1589 = load i64, ptr %r1589.p, align 8, !alias.scope !3, !noalias !4
  %t1590 = add i64 %r1589, 152
  %gmp1591 = inttoptr i64 %t1590 to ptr
  %gml1592 = load i64, ptr %gmp1591, align 1, !alias.scope !4, !noalias !3
  %wp1593 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %gml1592, ptr %wp1593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2ef8 word 0xb8a479ef
  %r1594.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1594 = load i64, ptr %r1594.p, align 8, !alias.scope !3, !noalias !4
  %r1595.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1595 = load i64, ptr %r1595.p, align 8, !alias.scope !3, !noalias !4
  %t1596 = shl i64 %r1595, 2
  %t1597 = add i64 %r1594, %t1596
  %gmp1598 = inttoptr i64 %t1597 to ptr
  %gml1599 = load i32, ptr %gmp1598, align 1, !alias.scope !4, !noalias !3
  %c1600 = sext i32 %gml1599 to i64
  %wp1601 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %c1600, ptr %wp1601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2efc word 0xf86f79ad
  %r1602.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1602 = load i64, ptr %r1602.p, align 8, !alias.scope !3, !noalias !4
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 120
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %t1604 = shl i64 %r1603, 3
  %t1605 = add i64 %r1602, %t1604
  %gmp1606 = inttoptr i64 %t1605 to ptr
  %gml1607 = load i64, ptr %gmp1606, align 1, !alias.scope !4, !noalias !3
  %wp1608 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1607, ptr %wp1608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f00 word 0xb40031ad
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %cmp1610 = icmp eq i64 %r1609, 0
  br i1 %cmp1610, label %L_8001d3534, label %L_8001d2f04_ft
L_8001d2f04_ft:
  ; @pc 0x8001d2f04 word 0x71000d1f
  %r1611.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1611 = load i64, ptr %r1611.p, align 8, !alias.scope !3, !noalias !4
  %c1612 = trunc i64 %r1611 to i32
  %t1613 = sub i32 %c1612, 3
  %fn1614 = icmp slt i32 %t1613, 0
  %fz1615 = icmp eq i32 %t1613, 0
  %fc1616 = icmp uge i32 %c1612, 3
  %fx11617 = xor i32 %c1612, 3
  %fx21618 = xor i32 %c1612, %t1613
  %fva1619 = and i32 %fx11617, %fx21618
  %fv1620 = icmp slt i32 %fva1619, 0
  %nz1621 = zext i1 %fn1614 to i64
  %zz1622 = zext i1 %fz1615 to i64
  %cz1623 = zext i1 %fc1616 to i64
  %vz1624 = zext i1 %fv1620 to i64
  %ns1625 = shl i64 %nz1621, 31
  %zs1626 = shl i64 %zz1622, 30
  %cs1627 = shl i64 %cz1623, 29
  %vs1628 = shl i64 %vz1624, 28
  %nzor1629 = or i64 %ns1625, %zs1626
  %cvor1630 = or i64 %cs1627, %vs1628
  %nzcv1631 = or i64 %nzor1629, %cvor1630
  %wp1632 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1631, ptr %wp1632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f08 word 0x54003101
  %r1633.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1633 = load i64, ptr %r1633.p, align 8, !alias.scope !3, !noalias !4
  %fsh1635 = lshr i64 %r1633, 30
  %ftr1636 = trunc i64 %fsh1635 to i1
  %cond1634 = xor i1 %ftr1636, true
  br i1 %cond1634, label %L_8001d3528, label %L_8001d2f0c_ft
L_8001d2f0c_ft:
  ; @pc 0x8001d2f0c word 0x394001a8
  %r1637.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1637 = load i64, ptr %r1637.p, align 8, !alias.scope !3, !noalias !4
  %gmp1638 = inttoptr i64 %r1637 to ptr
  %gml1639 = load i8, ptr %gmp1638, align 1, !alias.scope !4, !noalias !3
  %c1640 = zext i8 %gml1639 to i64
  %wp1641 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1640, ptr %wp1641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f10 word 0x2f00e401
  %wp1642 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 0, ptr %wp1642, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f14 word 0x7100011f
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %c1644 = trunc i64 %r1643 to i32
  %t1645 = sub i32 %c1644, 0
  %fn1646 = icmp slt i32 %t1645, 0
  %fz1647 = icmp eq i32 %t1645, 0
  %fc1648 = icmp uge i32 %c1644, 0
  %fx11649 = xor i32 %c1644, 0
  %fx21650 = xor i32 %c1644, %t1645
  %fva1651 = and i32 %fx11649, %fx21650
  %fv1652 = icmp slt i32 %fva1651, 0
  %nz1653 = zext i1 %fn1646 to i64
  %zz1654 = zext i1 %fz1647 to i64
  %cz1655 = zext i1 %fc1648 to i64
  %vz1656 = zext i1 %fv1652 to i64
  %ns1657 = shl i64 %nz1653, 31
  %zs1658 = shl i64 %zz1654, 30
  %cs1659 = shl i64 %cz1655, 29
  %vs1660 = shl i64 %vz1656, 28
  %nzor1661 = or i64 %ns1657, %zs1658
  %cvor1662 = or i64 %cs1659, %vs1660
  %nzcv1663 = or i64 %nzor1661, %cvor1662
  %wp1664 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1663, ptr %wp1664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f18 word 0x52800028
  %c1665 = zext i32 1 to i64
  %wp1666 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1665, ptr %wp1666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f1c word 0x1e270100
  %r1667.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1667 = load i64, ptr %r1667.p, align 8, !alias.scope !3, !noalias !4
  %c1668 = trunc i64 %r1667 to i32
  %c1669 = zext i32 %c1668 to i128
  %wp1670 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1669, ptr %wp1670, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f20 word 0x1e200c20
  %r1671.p = getelementptr inbounds i8, ptr %c, i64 528
  %r1671 = load i128, ptr %r1671.p, align 16, !alias.scope !3, !noalias !4
  %c1672 = trunc i128 %r1671 to i32
  %r1673.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1673 = load i128, ptr %r1673.p, align 16, !alias.scope !3, !noalias !4
  %c1674 = trunc i128 %r1673 to i32
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %fsh1677 = lshr i64 %r1675, 30
  %cond1676 = trunc i64 %fsh1677 to i1
  %sel1678 = select i1 %cond1676, i32 %c1672, i32 %c1674
  %c1679 = zext i32 %sel1678 to i128
  %wp1680 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c1679, ptr %wp1680, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f24 word 0x1e260008
  %r1681.p = getelementptr inbounds i8, ptr %c, i64 512
  %r1681 = load i128, ptr %r1681.p, align 16, !alias.scope !3, !noalias !4
  %c1682 = trunc i128 %r1681 to i32
  %c1683 = zext i32 %c1682 to i64
  %wp1684 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1683, ptr %wp1684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f28 word 0x17fffefc
  br label %L_8001d2b18
L_8001d2f70_ft:
  ; @pc 0x8001d2f70 word 0x92405d49
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %t1762 = and i64 %r1761, 16777215
  %wp1763 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1762, ptr %wp1763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f74 word 0x1e201000
  %wp1764 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1073741824, ptr %wp1764, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2f78 word 0x1400002a
  br label %L_8001d3020
L_8001d2fa8_ft:
  ; @pc 0x8001d2fa8 word 0x92405d49
  %r1830.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1830 = load i64, ptr %r1830.p, align 8, !alias.scope !3, !noalias !4
  %t1831 = and i64 %r1830, 16777215
  %wp1832 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1831, ptr %wp1832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fac word 0x1e211000
  %wp1833 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1077936128, ptr %wp1833, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fb0 word 0x1400001c
  br label %L_8001d3020
L_8001d2fe0_ft:
  ; @pc 0x8001d2fe0 word 0x92405d49
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %t1900 = and i64 %r1899, 16777215
  %wp1901 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1900, ptr %wp1901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fe4 word 0x1e221000
  %wp1902 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1082130432, ptr %wp1902, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d2fe8 word 0x1400000e
  br label %L_8001d3020
L_8001d3018_ft:
  ; @pc 0x8001d3018 word 0x92405d49
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %t1969 = and i64 %r1968, 16777215
  %wp1970 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1969, ptr %wp1970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d301c word 0x1e2f1000
  %wp1971 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 1069547520, ptr %wp1971, align 16, !alias.scope !3, !noalias !4
  br label %L_8001d3020
L_8001d3060_ft:
  ; @pc 0x8001d3060 word 0x92405d49
  %r2064.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2064 = load i64, ptr %r2064.p, align 8, !alias.scope !3, !noalias !4
  %t2065 = and i64 %r2064, 16777215
  %wp2066 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2065, ptr %wp2066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3064 word 0x1e3e1002
  %wp2067 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 3212836864, ptr %wp2067, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3068 word 0x8b090d08
  %r2068.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2068 = load i64, ptr %r2068.p, align 8, !alias.scope !3, !noalias !4
  %r2069.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2069 = load i64, ptr %r2069.p, align 8, !alias.scope !3, !noalias !4
  %t2070 = shl i64 %r2069, 3
  %t2071 = add i64 %r2068, %t2070
  %wp2072 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2071, ptr %wp2072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d306c word 0xf9400c09
  %r2073.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2073 = load i64, ptr %r2073.p, align 8, !alias.scope !3, !noalias !4
  %t2074 = add i64 %r2073, 24
  %gmp2075 = inttoptr i64 %t2074 to ptr
  %gml2076 = load i64, ptr %gmp2075, align 1, !alias.scope !4, !noalias !3
  %wp2077 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2076, ptr %wp2077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3070 word 0x2d400101
  %r2078.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2078 = load i64, ptr %r2078.p, align 8, !alias.scope !3, !noalias !4
  %t2079 = add i64 %r2078, 4
  %gmp2080 = inttoptr i64 %r2078 to ptr
  %gml2081 = load i32, ptr %gmp2080, align 1, !alias.scope !4, !noalias !3
  %gmp2082 = inttoptr i64 %t2079 to ptr
  %gml2083 = load i32, ptr %gmp2082, align 1, !alias.scope !4, !noalias !3
  %c2084 = zext i32 %gml2081 to i128
  %wp2085 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2084, ptr %wp2085, align 16, !alias.scope !3, !noalias !4
  %c2086 = zext i32 %gml2083 to i128
  %wp2087 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2086, ptr %wp2087, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3074 word 0xb948dd2b
  %r2088.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2088 = load i64, ptr %r2088.p, align 8, !alias.scope !3, !noalias !4
  %t2089 = add i64 %r2088, 2268
  %gmp2090 = inttoptr i64 %t2089 to ptr
  %gml2091 = load i32, ptr %gmp2090, align 1, !alias.scope !4, !noalias !3
  %c2092 = zext i32 %gml2091 to i64
  %wp2093 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2092, ptr %wp2093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3078 word 0xb948d92a
  %r2094.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2094 = load i64, ptr %r2094.p, align 8, !alias.scope !3, !noalias !4
  %t2095 = add i64 %r2094, 2264
  %gmp2096 = inttoptr i64 %t2095 to ptr
  %gml2097 = load i32, ptr %gmp2096, align 1, !alias.scope !4, !noalias !3
  %c2098 = zext i32 %gml2097 to i64
  %wp2099 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2098, ptr %wp2099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d307c word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3080 word 0xb908d92b
  %r2100.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2100 = load i64, ptr %r2100.p, align 8, !alias.scope !3, !noalias !4
  %t2101 = add i64 %r2100, 2264
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %c2103 = trunc i64 %r2102 to i32
  %gmp2104 = inttoptr i64 %t2101 to ptr
  store i32 %c2103, ptr %gmp2104, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3084 word 0xb948e12b
  %r2105.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2105 = load i64, ptr %r2105.p, align 8, !alias.scope !3, !noalias !4
  %t2106 = add i64 %r2105, 2272
  %gmp2107 = inttoptr i64 %t2106 to ptr
  %gml2108 = load i32, ptr %gmp2107, align 1, !alias.scope !4, !noalias !3
  %c2109 = zext i32 %gml2108 to i64
  %wp2110 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2109, ptr %wp2110, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3088 word 0x4a0a2d4a
  %r2111.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2111 = load i64, ptr %r2111.p, align 8, !alias.scope !3, !noalias !4
  %c2112 = trunc i64 %r2111 to i32
  %t2113 = shl i32 %c2112, 11
  %r2114.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2114 = load i64, ptr %r2114.p, align 8, !alias.scope !3, !noalias !4
  %c2115 = trunc i64 %r2114 to i32
  %t2116 = xor i32 %c2115, %t2113
  %c2117 = zext i32 %t2116 to i64
  %wp2118 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2117, ptr %wp2118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d308c word 0x53087d4c
  %r2119.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2119 = load i64, ptr %r2119.p, align 8, !alias.scope !3, !noalias !4
  %c2120 = trunc i64 %r2119 to i32
  %ror2121 = call i32 @llvm.fshr.i32(i32 %c2120, i32 %c2120, i32 8)
  %t2122 = and i32 %ror2121, 16777215
  %c2123 = zext i32 %t2122 to i64
  %wp2124 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2123, ptr %wp2124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3090 word 0xb908dd2b
  %r2125.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2125 = load i64, ptr %r2125.p, align 8, !alias.scope !3, !noalias !4
  %t2126 = add i64 %r2125, 2268
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %c2128 = trunc i64 %r2127 to i32
  %gmp2129 = inttoptr i64 %t2126 to ptr
  store i32 %c2128, ptr %gmp2129, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3094 word 0xb948e52b
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %t2131 = add i64 %r2130, 2276
  %gmp2132 = inttoptr i64 %t2131 to ptr
  %gml2133 = load i32, ptr %gmp2132, align 1, !alias.scope !4, !noalias !3
  %c2134 = zext i32 %gml2133 to i64
  %wp2135 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2134, ptr %wp2135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3098 word 0x1e214001
  %r2136.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2136 = load i128, ptr %r2136.p, align 16, !alias.scope !3, !noalias !4
  %c2137 = trunc i128 %r2136 to i32
  %t2138 = xor i32 %c2137, -2147483648
  %c2139 = zext i32 %t2138 to i128
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2139, ptr %wp2140, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d309c word 0x1e202008
  %fcmp2141 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2142 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2141, ptr %wp2142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30a0 word 0x1e20bc20
  %r2143.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2143 = load i128, ptr %r2143.p, align 16, !alias.scope !3, !noalias !4
  %c2144 = trunc i128 %r2143 to i32
  %r2145.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2145 = load i128, ptr %r2145.p, align 16, !alias.scope !3, !noalias !4
  %c2146 = trunc i128 %r2145 to i32
  %r2147.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2147 = load i64, ptr %r2147.p, align 8, !alias.scope !3, !noalias !4
  %fsh2149 = lshr i64 %r2147, 31
  %ftr2150 = trunc i64 %fsh2149 to i1
  %fsh2151 = lshr i64 %r2147, 28
  %ftr2152 = trunc i64 %fsh2151 to i1
  %cond2148 = icmp ne i1 %ftr2150, %ftr2152
  %sel2153 = select i1 %cond2148, i32 %c2144, i32 %c2146
  %c2154 = zext i32 %sel2153 to i128
  %wp2155 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2154, ptr %wp2155, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30a4 word 0x4a4b4d8c
  %r2156.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2156 = load i64, ptr %r2156.p, align 8, !alias.scope !3, !noalias !4
  %c2157 = trunc i64 %r2156 to i32
  %t2158 = lshr i32 %c2157, 19
  %r2159.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2159 = load i64, ptr %r2159.p, align 8, !alias.scope !3, !noalias !4
  %c2160 = trunc i64 %r2159 to i32
  %t2161 = xor i32 %c2160, %t2158
  %c2162 = zext i32 %t2161 to i64
  %wp2163 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2162, ptr %wp2163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30a8 word 0x4a0b014a
  %r2164.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2164 = load i64, ptr %r2164.p, align 8, !alias.scope !3, !noalias !4
  %c2165 = trunc i64 %r2164 to i32
  %r2166.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2166 = load i64, ptr %r2166.p, align 8, !alias.scope !3, !noalias !4
  %c2167 = trunc i64 %r2166 to i32
  %t2168 = xor i32 %c2167, %c2165
  %c2169 = zext i32 %t2168 to i64
  %wp2170 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2169, ptr %wp2170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30ac word 0xb908e12b
  %r2171.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2171 = load i64, ptr %r2171.p, align 8, !alias.scope !3, !noalias !4
  %t2172 = add i64 %r2171, 2272
  %r2173.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2173 = load i64, ptr %r2173.p, align 8, !alias.scope !3, !noalias !4
  %c2174 = trunc i64 %r2173 to i32
  %gmp2175 = inttoptr i64 %t2172 to ptr
  store i32 %c2174, ptr %gmp2175, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d30b0 word 0x4a0a018a
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %c2177 = trunc i64 %r2176 to i32
  %r2178.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2178 = load i64, ptr %r2178.p, align 8, !alias.scope !3, !noalias !4
  %c2179 = trunc i64 %r2178 to i32
  %t2180 = xor i32 %c2179, %c2177
  %c2181 = zext i32 %t2180 to i64
  %wp2182 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2181, ptr %wp2182, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30b4 word 0xb908e52a
  %r2183.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2183 = load i64, ptr %r2183.p, align 8, !alias.scope !3, !noalias !4
  %t2184 = add i64 %r2183, 2276
  %r2185.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2185 = load i64, ptr %r2185.p, align 8, !alias.scope !3, !noalias !4
  %c2186 = trunc i64 %r2185 to i32
  %gmp2187 = inttoptr i64 %t2184 to ptr
  store i32 %c2186, ptr %gmp2187, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d30b8 word 0x52a7f009
  %c2188 = zext i32 1065353216 to i64
  %wp2189 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2188, ptr %wp2189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30bc word 0x33097d49
  %r2190.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2190 = load i64, ptr %r2190.p, align 8, !alias.scope !3, !noalias !4
  %c2191 = trunc i64 %r2190 to i32
  %ror2192 = call i32 @llvm.fshr.i32(i32 %c2191, i32 %c2191, i32 9)
  %r2193.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2193 = load i64, ptr %r2193.p, align 8, !alias.scope !3, !noalias !4
  %c2194 = trunc i64 %r2193 to i32
  %t2195 = and i32 %ror2192, -1
  %t2196 = and i32 %c2194, 0
  %t2197 = or i32 %t2196, %t2195
  %t2198 = and i32 %t2197, 8388607
  %t2199 = and i32 %c2194, -8388608
  %t2200 = or i32 %t2199, %t2198
  %c2201 = zext i32 %t2200 to i64
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2201, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30c0 word 0x1e270121
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %c2204 = trunc i64 %r2203 to i32
  %c2205 = zext i32 %c2204 to i128
  %wp2206 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2205, ptr %wp2206, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30c4 word 0x1e222821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 2)
  ; @pc 0x8001d30c8 word 0x1e210821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 1)
  ; @pc 0x8001d30cc word 0x1400009b
  br label %L_8001d3338
L_8001d30f8_ft:
  ; @pc 0x8001d30f8 word 0xf9400c09
  %r2271.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2271 = load i64, ptr %r2271.p, align 8, !alias.scope !3, !noalias !4
  %t2272 = add i64 %r2271, 24
  %gmp2273 = inttoptr i64 %t2272 to ptr
  %gml2274 = load i64, ptr %gmp2273, align 1, !alias.scope !4, !noalias !3
  %wp2275 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2274, ptr %wp2275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d30fc word 0x12005d4a
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %c2277 = trunc i64 %r2276 to i32
  %t2278 = and i32 %c2277, 16777215
  %c2279 = zext i32 %t2278 to i64
  %wp2280 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2279, ptr %wp2280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3100 word 0x8b2a4d13
  %r2281.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2281 = load i64, ptr %r2281.p, align 8, !alias.scope !3, !noalias !4
  %r2282.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2282 = load i64, ptr %r2282.p, align 8, !alias.scope !3, !noalias !4
  %c2283 = trunc i64 %r2282 to i32
  %c2284 = zext i32 %c2283 to i64
  %t2285 = shl i64 %c2284, 3
  %t2286 = add i64 %r2281, %t2285
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3104 word 0x2d400261
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %t2289 = add i64 %r2288, 4
  %gmp2290 = inttoptr i64 %r2288 to ptr
  %gml2291 = load i32, ptr %gmp2290, align 1, !alias.scope !4, !noalias !3
  %gmp2292 = inttoptr i64 %t2289 to ptr
  %gml2293 = load i32, ptr %gmp2292, align 1, !alias.scope !4, !noalias !3
  %c2294 = zext i32 %gml2291 to i128
  %wp2295 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2294, ptr %wp2295, align 16, !alias.scope !3, !noalias !4
  %c2296 = zext i32 %gml2293 to i128
  %wp2297 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2296, ptr %wp2297, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3108 word 0xb948dd2a
  %r2298.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2298 = load i64, ptr %r2298.p, align 8, !alias.scope !3, !noalias !4
  %t2299 = add i64 %r2298, 2268
  %gmp2300 = inttoptr i64 %t2299 to ptr
  %gml2301 = load i32, ptr %gmp2300, align 1, !alias.scope !4, !noalias !3
  %c2302 = zext i32 %gml2301 to i64
  %wp2303 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2302, ptr %wp2303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d310c word 0xb948d928
  %r2304.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2304 = load i64, ptr %r2304.p, align 8, !alias.scope !3, !noalias !4
  %t2305 = add i64 %r2304, 2264
  %gmp2306 = inttoptr i64 %t2305 to ptr
  %gml2307 = load i32, ptr %gmp2306, align 1, !alias.scope !4, !noalias !3
  %c2308 = zext i32 %gml2307 to i64
  %wp2309 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2308, ptr %wp2309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3110 word 0xb908d92a
  %r2310.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2310 = load i64, ptr %r2310.p, align 8, !alias.scope !3, !noalias !4
  %t2311 = add i64 %r2310, 2264
  %r2312.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2312 = load i64, ptr %r2312.p, align 8, !alias.scope !3, !noalias !4
  %c2313 = trunc i64 %r2312 to i32
  %gmp2314 = inttoptr i64 %t2311 to ptr
  store i32 %c2313, ptr %gmp2314, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3114 word 0xb948e12a
  %r2315.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2315 = load i64, ptr %r2315.p, align 8, !alias.scope !3, !noalias !4
  %t2316 = add i64 %r2315, 2272
  %gmp2317 = inttoptr i64 %t2316 to ptr
  %gml2318 = load i32, ptr %gmp2317, align 1, !alias.scope !4, !noalias !3
  %c2319 = zext i32 %gml2318 to i64
  %wp2320 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2319, ptr %wp2320, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3118 word 0x4a082d08
  %r2321.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2321 = load i64, ptr %r2321.p, align 8, !alias.scope !3, !noalias !4
  %c2322 = trunc i64 %r2321 to i32
  %t2323 = shl i32 %c2322, 11
  %r2324.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2324 = load i64, ptr %r2324.p, align 8, !alias.scope !3, !noalias !4
  %c2325 = trunc i64 %r2324 to i32
  %t2326 = xor i32 %c2325, %t2323
  %c2327 = zext i32 %t2326 to i64
  %wp2328 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2327, ptr %wp2328, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d311c word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3120 word 0x53087d0b
  %r2329.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2329 = load i64, ptr %r2329.p, align 8, !alias.scope !3, !noalias !4
  %c2330 = trunc i64 %r2329 to i32
  %ror2331 = call i32 @llvm.fshr.i32(i32 %c2330, i32 %c2330, i32 8)
  %t2332 = and i32 %ror2331, 16777215
  %c2333 = zext i32 %t2332 to i64
  %wp2334 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2333, ptr %wp2334, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3124 word 0xb908dd2a
  %r2335.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2335 = load i64, ptr %r2335.p, align 8, !alias.scope !3, !noalias !4
  %t2336 = add i64 %r2335, 2268
  %r2337.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2337 = load i64, ptr %r2337.p, align 8, !alias.scope !3, !noalias !4
  %c2338 = trunc i64 %r2337 to i32
  %gmp2339 = inttoptr i64 %t2336 to ptr
  store i32 %c2338, ptr %gmp2339, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3128 word 0xb948e52a
  %r2340.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2340 = load i64, ptr %r2340.p, align 8, !alias.scope !3, !noalias !4
  %t2341 = add i64 %r2340, 2276
  %gmp2342 = inttoptr i64 %t2341 to ptr
  %gml2343 = load i32, ptr %gmp2342, align 1, !alias.scope !4, !noalias !3
  %c2344 = zext i32 %gml2343 to i64
  %wp2345 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2344, ptr %wp2345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d312c word 0x1e214001
  %r2346.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2346 = load i128, ptr %r2346.p, align 16, !alias.scope !3, !noalias !4
  %c2347 = trunc i128 %r2346 to i32
  %t2348 = xor i32 %c2347, -2147483648
  %c2349 = zext i32 %t2348 to i128
  %wp2350 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2349, ptr %wp2350, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3130 word 0x1e202008
  %fcmp2351 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2352 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2351, ptr %wp2352, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3134 word 0x4a4a4d6b
  %r2353.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2353 = load i64, ptr %r2353.p, align 8, !alias.scope !3, !noalias !4
  %c2354 = trunc i64 %r2353 to i32
  %t2355 = lshr i32 %c2354, 19
  %r2356.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2356 = load i64, ptr %r2356.p, align 8, !alias.scope !3, !noalias !4
  %c2357 = trunc i64 %r2356 to i32
  %t2358 = xor i32 %c2357, %t2355
  %c2359 = zext i32 %t2358 to i64
  %wp2360 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2359, ptr %wp2360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3138 word 0x4a0a0108
  %r2361.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2361 = load i64, ptr %r2361.p, align 8, !alias.scope !3, !noalias !4
  %c2362 = trunc i64 %r2361 to i32
  %r2363.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2363 = load i64, ptr %r2363.p, align 8, !alias.scope !3, !noalias !4
  %c2364 = trunc i64 %r2363 to i32
  %t2365 = xor i32 %c2364, %c2362
  %c2366 = zext i32 %t2365 to i64
  %wp2367 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2366, ptr %wp2367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d313c word 0xb908e12a
  %r2368.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2368 = load i64, ptr %r2368.p, align 8, !alias.scope !3, !noalias !4
  %t2369 = add i64 %r2368, 2272
  %r2370.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2370 = load i64, ptr %r2370.p, align 8, !alias.scope !3, !noalias !4
  %c2371 = trunc i64 %r2370 to i32
  %gmp2372 = inttoptr i64 %t2369 to ptr
  store i32 %c2371, ptr %gmp2372, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3140 word 0x1e20bc28
  %r2373.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2373 = load i128, ptr %r2373.p, align 16, !alias.scope !3, !noalias !4
  %c2374 = trunc i128 %r2373 to i32
  %r2375.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2375 = load i128, ptr %r2375.p, align 16, !alias.scope !3, !noalias !4
  %c2376 = trunc i128 %r2375 to i32
  %r2377.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2377 = load i64, ptr %r2377.p, align 8, !alias.scope !3, !noalias !4
  %fsh2379 = lshr i64 %r2377, 31
  %ftr2380 = trunc i64 %fsh2379 to i1
  %fsh2381 = lshr i64 %r2377, 28
  %ftr2382 = trunc i64 %fsh2381 to i1
  %cond2378 = icmp ne i1 %ftr2380, %ftr2382
  %sel2383 = select i1 %cond2378, i32 %c2374, i32 %c2376
  %c2384 = zext i32 %sel2383 to i128
  %wp2385 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2384, ptr %wp2385, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3144 word 0x1e3e1001
  %wp2386 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp2386, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3148 word 0x4a080168
  %r2387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2387 = load i64, ptr %r2387.p, align 8, !alias.scope !3, !noalias !4
  %c2388 = trunc i64 %r2387 to i32
  %r2389.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2389 = load i64, ptr %r2389.p, align 8, !alias.scope !3, !noalias !4
  %c2390 = trunc i64 %r2389 to i32
  %t2391 = xor i32 %c2390, %c2388
  %c2392 = zext i32 %t2391 to i64
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d314c word 0xb908e528
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %t2395 = add i64 %r2394, 2276
  %r2396.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2396 = load i64, ptr %r2396.p, align 8, !alias.scope !3, !noalias !4
  %c2397 = trunc i64 %r2396 to i32
  %gmp2398 = inttoptr i64 %t2395 to ptr
  store i32 %c2397, ptr %gmp2398, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3150 word 0x52a7f009
  %c2399 = zext i32 1065353216 to i64
  %wp2400 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2399, ptr %wp2400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3154 word 0x33097d09
  %r2401.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2401 = load i64, ptr %r2401.p, align 8, !alias.scope !3, !noalias !4
  %c2402 = trunc i64 %r2401 to i32
  %ror2403 = call i32 @llvm.fshr.i32(i32 %c2402, i32 %c2402, i32 9)
  %r2404.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2404 = load i64, ptr %r2404.p, align 8, !alias.scope !3, !noalias !4
  %c2405 = trunc i64 %r2404 to i32
  %t2406 = and i32 %ror2403, -1
  %t2407 = and i32 %c2405, 0
  %t2408 = or i32 %t2407, %t2406
  %t2409 = and i32 %t2408, 8388607
  %t2410 = and i32 %c2405, -8388608
  %t2411 = or i32 %t2410, %t2409
  %c2412 = zext i32 %t2411 to i64
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2412, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3158 word 0x1e270120
  %r2414.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2414 = load i64, ptr %r2414.p, align 8, !alias.scope !3, !noalias !4
  %c2415 = trunc i64 %r2414 to i32
  %c2416 = zext i32 %c2415 to i128
  %wp2417 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2416, ptr %wp2417, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d315c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3160 word 0x1e211001
  %wp2418 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1077936128, ptr %wp2418, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3164 word 0x1400004c
  br label %L_8001d3294
L_8001d3190_ft:
  ; @pc 0x8001d3190 word 0xf9400c09
  %r2483.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2483 = load i64, ptr %r2483.p, align 8, !alias.scope !3, !noalias !4
  %t2484 = add i64 %r2483, 24
  %gmp2485 = inttoptr i64 %t2484 to ptr
  %gml2486 = load i64, ptr %gmp2485, align 1, !alias.scope !4, !noalias !3
  %wp2487 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2486, ptr %wp2487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3194 word 0x12005d4a
  %r2488.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2488 = load i64, ptr %r2488.p, align 8, !alias.scope !3, !noalias !4
  %c2489 = trunc i64 %r2488 to i32
  %t2490 = and i32 %c2489, 16777215
  %c2491 = zext i32 %t2490 to i64
  %wp2492 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2491, ptr %wp2492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3198 word 0x8b2a4d13
  %r2493.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2493 = load i64, ptr %r2493.p, align 8, !alias.scope !3, !noalias !4
  %r2494.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2494 = load i64, ptr %r2494.p, align 8, !alias.scope !3, !noalias !4
  %c2495 = trunc i64 %r2494 to i32
  %c2496 = zext i32 %c2495 to i64
  %t2497 = shl i64 %c2496, 3
  %t2498 = add i64 %r2493, %t2497
  %wp2499 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2498, ptr %wp2499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d319c word 0x2d400261
  %r2500.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2500 = load i64, ptr %r2500.p, align 8, !alias.scope !3, !noalias !4
  %t2501 = add i64 %r2500, 4
  %gmp2502 = inttoptr i64 %r2500 to ptr
  %gml2503 = load i32, ptr %gmp2502, align 1, !alias.scope !4, !noalias !3
  %gmp2504 = inttoptr i64 %t2501 to ptr
  %gml2505 = load i32, ptr %gmp2504, align 1, !alias.scope !4, !noalias !3
  %c2506 = zext i32 %gml2503 to i128
  %wp2507 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2506, ptr %wp2507, align 16, !alias.scope !3, !noalias !4
  %c2508 = zext i32 %gml2505 to i128
  %wp2509 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2508, ptr %wp2509, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31a0 word 0xb948dd2a
  %r2510.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2510 = load i64, ptr %r2510.p, align 8, !alias.scope !3, !noalias !4
  %t2511 = add i64 %r2510, 2268
  %gmp2512 = inttoptr i64 %t2511 to ptr
  %gml2513 = load i32, ptr %gmp2512, align 1, !alias.scope !4, !noalias !3
  %c2514 = zext i32 %gml2513 to i64
  %wp2515 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2514, ptr %wp2515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31a4 word 0xb948d928
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %t2517 = add i64 %r2516, 2264
  %gmp2518 = inttoptr i64 %t2517 to ptr
  %gml2519 = load i32, ptr %gmp2518, align 1, !alias.scope !4, !noalias !3
  %c2520 = zext i32 %gml2519 to i64
  %wp2521 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2520, ptr %wp2521, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31a8 word 0xb908d92a
  %r2522.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2522 = load i64, ptr %r2522.p, align 8, !alias.scope !3, !noalias !4
  %t2523 = add i64 %r2522, 2264
  %r2524.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2524 = load i64, ptr %r2524.p, align 8, !alias.scope !3, !noalias !4
  %c2525 = trunc i64 %r2524 to i32
  %gmp2526 = inttoptr i64 %t2523 to ptr
  store i32 %c2525, ptr %gmp2526, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d31ac word 0xb948e12a
  %r2527.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2527 = load i64, ptr %r2527.p, align 8, !alias.scope !3, !noalias !4
  %t2528 = add i64 %r2527, 2272
  %gmp2529 = inttoptr i64 %t2528 to ptr
  %gml2530 = load i32, ptr %gmp2529, align 1, !alias.scope !4, !noalias !3
  %c2531 = zext i32 %gml2530 to i64
  %wp2532 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2531, ptr %wp2532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31b0 word 0x4a082d08
  %r2533.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2533 = load i64, ptr %r2533.p, align 8, !alias.scope !3, !noalias !4
  %c2534 = trunc i64 %r2533 to i32
  %t2535 = shl i32 %c2534, 11
  %r2536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2536 = load i64, ptr %r2536.p, align 8, !alias.scope !3, !noalias !4
  %c2537 = trunc i64 %r2536 to i32
  %t2538 = xor i32 %c2537, %t2535
  %c2539 = zext i32 %t2538 to i64
  %wp2540 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2539, ptr %wp2540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31b4 word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d31b8 word 0x53087d0b
  %r2541.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2541 = load i64, ptr %r2541.p, align 8, !alias.scope !3, !noalias !4
  %c2542 = trunc i64 %r2541 to i32
  %ror2543 = call i32 @llvm.fshr.i32(i32 %c2542, i32 %c2542, i32 8)
  %t2544 = and i32 %ror2543, 16777215
  %c2545 = zext i32 %t2544 to i64
  %wp2546 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2545, ptr %wp2546, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31bc word 0xb908dd2a
  %r2547.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2547 = load i64, ptr %r2547.p, align 8, !alias.scope !3, !noalias !4
  %t2548 = add i64 %r2547, 2268
  %r2549.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2549 = load i64, ptr %r2549.p, align 8, !alias.scope !3, !noalias !4
  %c2550 = trunc i64 %r2549 to i32
  %gmp2551 = inttoptr i64 %t2548 to ptr
  store i32 %c2550, ptr %gmp2551, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d31c0 word 0xb948e52a
  %r2552.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2552 = load i64, ptr %r2552.p, align 8, !alias.scope !3, !noalias !4
  %t2553 = add i64 %r2552, 2276
  %gmp2554 = inttoptr i64 %t2553 to ptr
  %gml2555 = load i32, ptr %gmp2554, align 1, !alias.scope !4, !noalias !3
  %c2556 = zext i32 %gml2555 to i64
  %wp2557 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2556, ptr %wp2557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31c4 word 0x1e214001
  %r2558.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2558 = load i128, ptr %r2558.p, align 16, !alias.scope !3, !noalias !4
  %c2559 = trunc i128 %r2558 to i32
  %t2560 = xor i32 %c2559, -2147483648
  %c2561 = zext i32 %t2560 to i128
  %wp2562 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2561, ptr %wp2562, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31c8 word 0x1e202008
  %fcmp2563 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2564 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2563, ptr %wp2564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31cc word 0x4a4a4d6b
  %r2565.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2565 = load i64, ptr %r2565.p, align 8, !alias.scope !3, !noalias !4
  %c2566 = trunc i64 %r2565 to i32
  %t2567 = lshr i32 %c2566, 19
  %r2568.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2568 = load i64, ptr %r2568.p, align 8, !alias.scope !3, !noalias !4
  %c2569 = trunc i64 %r2568 to i32
  %t2570 = xor i32 %c2569, %t2567
  %c2571 = zext i32 %t2570 to i64
  %wp2572 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2571, ptr %wp2572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31d0 word 0x4a0a0108
  %r2573.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2573 = load i64, ptr %r2573.p, align 8, !alias.scope !3, !noalias !4
  %c2574 = trunc i64 %r2573 to i32
  %r2575.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2575 = load i64, ptr %r2575.p, align 8, !alias.scope !3, !noalias !4
  %c2576 = trunc i64 %r2575 to i32
  %t2577 = xor i32 %c2576, %c2574
  %c2578 = zext i32 %t2577 to i64
  %wp2579 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2578, ptr %wp2579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31d4 word 0xb908e12a
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %t2581 = add i64 %r2580, 2272
  %r2582.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2582 = load i64, ptr %r2582.p, align 8, !alias.scope !3, !noalias !4
  %c2583 = trunc i64 %r2582 to i32
  %gmp2584 = inttoptr i64 %t2581 to ptr
  store i32 %c2583, ptr %gmp2584, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d31d8 word 0x1e20bc28
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2585 = load i128, ptr %r2585.p, align 16, !alias.scope !3, !noalias !4
  %c2586 = trunc i128 %r2585 to i32
  %r2587.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2587 = load i128, ptr %r2587.p, align 16, !alias.scope !3, !noalias !4
  %c2588 = trunc i128 %r2587 to i32
  %r2589.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2589 = load i64, ptr %r2589.p, align 8, !alias.scope !3, !noalias !4
  %fsh2591 = lshr i64 %r2589, 31
  %ftr2592 = trunc i64 %fsh2591 to i1
  %fsh2593 = lshr i64 %r2589, 28
  %ftr2594 = trunc i64 %fsh2593 to i1
  %cond2590 = icmp ne i1 %ftr2592, %ftr2594
  %sel2595 = select i1 %cond2590, i32 %c2586, i32 %c2588
  %c2596 = zext i32 %sel2595 to i128
  %wp2597 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2596, ptr %wp2597, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31dc word 0x1e3e1001
  %wp2598 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp2598, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31e0 word 0x4a080168
  %r2599.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2599 = load i64, ptr %r2599.p, align 8, !alias.scope !3, !noalias !4
  %c2600 = trunc i64 %r2599 to i32
  %r2601.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2601 = load i64, ptr %r2601.p, align 8, !alias.scope !3, !noalias !4
  %c2602 = trunc i64 %r2601 to i32
  %t2603 = xor i32 %c2602, %c2600
  %c2604 = zext i32 %t2603 to i64
  %wp2605 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2604, ptr %wp2605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31e4 word 0xb908e528
  %r2606.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2606 = load i64, ptr %r2606.p, align 8, !alias.scope !3, !noalias !4
  %t2607 = add i64 %r2606, 2276
  %r2608.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2608 = load i64, ptr %r2608.p, align 8, !alias.scope !3, !noalias !4
  %c2609 = trunc i64 %r2608 to i32
  %gmp2610 = inttoptr i64 %t2607 to ptr
  store i32 %c2609, ptr %gmp2610, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d31e8 word 0x52a7f009
  %c2611 = zext i32 1065353216 to i64
  %wp2612 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2611, ptr %wp2612, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31ec word 0x33097d09
  %r2613.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2613 = load i64, ptr %r2613.p, align 8, !alias.scope !3, !noalias !4
  %c2614 = trunc i64 %r2613 to i32
  %ror2615 = call i32 @llvm.fshr.i32(i32 %c2614, i32 %c2614, i32 9)
  %r2616.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2616 = load i64, ptr %r2616.p, align 8, !alias.scope !3, !noalias !4
  %c2617 = trunc i64 %r2616 to i32
  %t2618 = and i32 %ror2615, -1
  %t2619 = and i32 %c2617, 0
  %t2620 = or i32 %t2619, %t2618
  %t2621 = and i32 %t2620, 8388607
  %t2622 = and i32 %c2617, -8388608
  %t2623 = or i32 %t2622, %t2621
  %c2624 = zext i32 %t2623 to i64
  %wp2625 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2624, ptr %wp2625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31f0 word 0x1e270120
  %r2626.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2626 = load i64, ptr %r2626.p, align 8, !alias.scope !3, !noalias !4
  %c2627 = trunc i64 %r2626 to i32
  %c2628 = zext i32 %c2627 to i128
  %wp2629 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2628, ptr %wp2629, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31f4 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d31f8 word 0x1e221001
  %wp2630 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1082130432, ptr %wp2630, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d31fc word 0x14000026
  br label %L_8001d3294
L_8001d3228_ft:
  ; @pc 0x8001d3228 word 0xf9400c09
  %r2695.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2695 = load i64, ptr %r2695.p, align 8, !alias.scope !3, !noalias !4
  %t2696 = add i64 %r2695, 24
  %gmp2697 = inttoptr i64 %t2696 to ptr
  %gml2698 = load i64, ptr %gmp2697, align 1, !alias.scope !4, !noalias !3
  %wp2699 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2698, ptr %wp2699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d322c word 0x92405d4a
  %r2700.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2700 = load i64, ptr %r2700.p, align 8, !alias.scope !3, !noalias !4
  %t2701 = and i64 %r2700, 16777215
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t2701, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3230 word 0x8b0a0d13
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %r2704.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2704 = load i64, ptr %r2704.p, align 8, !alias.scope !3, !noalias !4
  %t2705 = shl i64 %r2704, 3
  %t2706 = add i64 %r2703, %t2705
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2706, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3234 word 0x2d400261
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = add i64 %r2708, 4
  %gmp2710 = inttoptr i64 %r2708 to ptr
  %gml2711 = load i32, ptr %gmp2710, align 1, !alias.scope !4, !noalias !3
  %gmp2712 = inttoptr i64 %t2709 to ptr
  %gml2713 = load i32, ptr %gmp2712, align 1, !alias.scope !4, !noalias !3
  %c2714 = zext i32 %gml2711 to i128
  %wp2715 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2714, ptr %wp2715, align 16, !alias.scope !3, !noalias !4
  %c2716 = zext i32 %gml2713 to i128
  %wp2717 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2716, ptr %wp2717, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3238 word 0xb948dd2a
  %r2718.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2718 = load i64, ptr %r2718.p, align 8, !alias.scope !3, !noalias !4
  %t2719 = add i64 %r2718, 2268
  %gmp2720 = inttoptr i64 %t2719 to ptr
  %gml2721 = load i32, ptr %gmp2720, align 1, !alias.scope !4, !noalias !3
  %c2722 = zext i32 %gml2721 to i64
  %wp2723 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2722, ptr %wp2723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d323c word 0xb948d928
  %r2724.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2724 = load i64, ptr %r2724.p, align 8, !alias.scope !3, !noalias !4
  %t2725 = add i64 %r2724, 2264
  %gmp2726 = inttoptr i64 %t2725 to ptr
  %gml2727 = load i32, ptr %gmp2726, align 1, !alias.scope !4, !noalias !3
  %c2728 = zext i32 %gml2727 to i64
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2728, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3240 word 0xb908d92a
  %r2730.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2730 = load i64, ptr %r2730.p, align 8, !alias.scope !3, !noalias !4
  %t2731 = add i64 %r2730, 2264
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %c2733 = trunc i64 %r2732 to i32
  %gmp2734 = inttoptr i64 %t2731 to ptr
  store i32 %c2733, ptr %gmp2734, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3244 word 0xb948e12a
  %r2735.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2735 = load i64, ptr %r2735.p, align 8, !alias.scope !3, !noalias !4
  %t2736 = add i64 %r2735, 2272
  %gmp2737 = inttoptr i64 %t2736 to ptr
  %gml2738 = load i32, ptr %gmp2737, align 1, !alias.scope !4, !noalias !3
  %c2739 = zext i32 %gml2738 to i64
  %wp2740 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2739, ptr %wp2740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3248 word 0x4a082d08
  %r2741.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2741 = load i64, ptr %r2741.p, align 8, !alias.scope !3, !noalias !4
  %c2742 = trunc i64 %r2741 to i32
  %t2743 = shl i32 %c2742, 11
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %c2745 = trunc i64 %r2744 to i32
  %t2746 = xor i32 %c2745, %t2743
  %c2747 = zext i32 %t2746 to i64
  %wp2748 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2747, ptr %wp2748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d324c word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3250 word 0x53087d0b
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %c2750 = trunc i64 %r2749 to i32
  %ror2751 = call i32 @llvm.fshr.i32(i32 %c2750, i32 %c2750, i32 8)
  %t2752 = and i32 %ror2751, 16777215
  %c2753 = zext i32 %t2752 to i64
  %wp2754 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2753, ptr %wp2754, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3254 word 0xb908dd2a
  %r2755.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2755 = load i64, ptr %r2755.p, align 8, !alias.scope !3, !noalias !4
  %t2756 = add i64 %r2755, 2268
  %r2757.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2757 = load i64, ptr %r2757.p, align 8, !alias.scope !3, !noalias !4
  %c2758 = trunc i64 %r2757 to i32
  %gmp2759 = inttoptr i64 %t2756 to ptr
  store i32 %c2758, ptr %gmp2759, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3258 word 0xb948e52a
  %r2760.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2760 = load i64, ptr %r2760.p, align 8, !alias.scope !3, !noalias !4
  %t2761 = add i64 %r2760, 2276
  %gmp2762 = inttoptr i64 %t2761 to ptr
  %gml2763 = load i32, ptr %gmp2762, align 1, !alias.scope !4, !noalias !3
  %c2764 = zext i32 %gml2763 to i64
  %wp2765 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2764, ptr %wp2765, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d325c word 0x1e214001
  %r2766.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2766 = load i128, ptr %r2766.p, align 16, !alias.scope !3, !noalias !4
  %c2767 = trunc i128 %r2766 to i32
  %t2768 = xor i32 %c2767, -2147483648
  %c2769 = zext i32 %t2768 to i128
  %wp2770 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2769, ptr %wp2770, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3260 word 0x1e202008
  %fcmp2771 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2772 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2771, ptr %wp2772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3264 word 0x4a4a4d6b
  %r2773.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2773 = load i64, ptr %r2773.p, align 8, !alias.scope !3, !noalias !4
  %c2774 = trunc i64 %r2773 to i32
  %t2775 = lshr i32 %c2774, 19
  %r2776.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2776 = load i64, ptr %r2776.p, align 8, !alias.scope !3, !noalias !4
  %c2777 = trunc i64 %r2776 to i32
  %t2778 = xor i32 %c2777, %t2775
  %c2779 = zext i32 %t2778 to i64
  %wp2780 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2779, ptr %wp2780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3268 word 0x4a0a0108
  %r2781.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2781 = load i64, ptr %r2781.p, align 8, !alias.scope !3, !noalias !4
  %c2782 = trunc i64 %r2781 to i32
  %r2783.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2783 = load i64, ptr %r2783.p, align 8, !alias.scope !3, !noalias !4
  %c2784 = trunc i64 %r2783 to i32
  %t2785 = xor i32 %c2784, %c2782
  %c2786 = zext i32 %t2785 to i64
  %wp2787 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2786, ptr %wp2787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d326c word 0xb908e12a
  %r2788.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2788 = load i64, ptr %r2788.p, align 8, !alias.scope !3, !noalias !4
  %t2789 = add i64 %r2788, 2272
  %r2790.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2790 = load i64, ptr %r2790.p, align 8, !alias.scope !3, !noalias !4
  %c2791 = trunc i64 %r2790 to i32
  %gmp2792 = inttoptr i64 %t2789 to ptr
  store i32 %c2791, ptr %gmp2792, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3270 word 0x1e20bc28
  %r2793.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2793 = load i128, ptr %r2793.p, align 16, !alias.scope !3, !noalias !4
  %c2794 = trunc i128 %r2793 to i32
  %r2795.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2795 = load i128, ptr %r2795.p, align 16, !alias.scope !3, !noalias !4
  %c2796 = trunc i128 %r2795 to i32
  %r2797.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2797 = load i64, ptr %r2797.p, align 8, !alias.scope !3, !noalias !4
  %fsh2799 = lshr i64 %r2797, 31
  %ftr2800 = trunc i64 %fsh2799 to i1
  %fsh2801 = lshr i64 %r2797, 28
  %ftr2802 = trunc i64 %fsh2801 to i1
  %cond2798 = icmp ne i1 %ftr2800, %ftr2802
  %sel2803 = select i1 %cond2798, i32 %c2794, i32 %c2796
  %c2804 = zext i32 %sel2803 to i128
  %wp2805 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c2804, ptr %wp2805, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3274 word 0x1e3e1001
  %wp2806 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp2806, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3278 word 0x4a080168
  %r2807.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2807 = load i64, ptr %r2807.p, align 8, !alias.scope !3, !noalias !4
  %c2808 = trunc i64 %r2807 to i32
  %r2809.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2809 = load i64, ptr %r2809.p, align 8, !alias.scope !3, !noalias !4
  %c2810 = trunc i64 %r2809 to i32
  %t2811 = xor i32 %c2810, %c2808
  %c2812 = zext i32 %t2811 to i64
  %wp2813 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2812, ptr %wp2813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d327c word 0xb908e528
  %r2814.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2814 = load i64, ptr %r2814.p, align 8, !alias.scope !3, !noalias !4
  %t2815 = add i64 %r2814, 2276
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %c2817 = trunc i64 %r2816 to i32
  %gmp2818 = inttoptr i64 %t2815 to ptr
  store i32 %c2817, ptr %gmp2818, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3280 word 0x52a7f009
  %c2819 = zext i32 1065353216 to i64
  %wp2820 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2819, ptr %wp2820, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3284 word 0x33097d09
  %r2821.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2821 = load i64, ptr %r2821.p, align 8, !alias.scope !3, !noalias !4
  %c2822 = trunc i64 %r2821 to i32
  %ror2823 = call i32 @llvm.fshr.i32(i32 %c2822, i32 %c2822, i32 9)
  %r2824.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2824 = load i64, ptr %r2824.p, align 8, !alias.scope !3, !noalias !4
  %c2825 = trunc i64 %r2824 to i32
  %t2826 = and i32 %ror2823, -1
  %t2827 = and i32 %c2825, 0
  %t2828 = or i32 %t2827, %t2826
  %t2829 = and i32 %t2828, 8388607
  %t2830 = and i32 %c2825, -8388608
  %t2831 = or i32 %t2830, %t2829
  %c2832 = zext i32 %t2831 to i64
  %wp2833 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2832, ptr %wp2833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3288 word 0x1e270120
  %r2834.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2834 = load i64, ptr %r2834.p, align 8, !alias.scope !3, !noalias !4
  %c2835 = trunc i64 %r2834 to i32
  %c2836 = zext i32 %c2835 to i128
  %wp2837 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2836, ptr %wp2837, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d328c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3290 word 0x1e2f1001
  %wp2838 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1069547520, ptr %wp2838, align 16, !alias.scope !3, !noalias !4
  br label %L_8001d3294
L_8001d32c4_ft:
  ; @pc 0x8001d32c4 word 0x12005d49
  %r2904.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2904 = load i64, ptr %r2904.p, align 8, !alias.scope !3, !noalias !4
  %c2905 = trunc i64 %r2904 to i32
  %t2906 = and i32 %c2905, 16777215
  %c2907 = zext i32 %t2906 to i64
  %wp2908 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2907, ptr %wp2908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32c8 word 0x1e3e1002
  %wp2909 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 3212836864, ptr %wp2909, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32cc word 0x8b294d08
  %r2910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2910 = load i64, ptr %r2910.p, align 8, !alias.scope !3, !noalias !4
  %r2911.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2911 = load i64, ptr %r2911.p, align 8, !alias.scope !3, !noalias !4
  %c2912 = trunc i64 %r2911 to i32
  %c2913 = zext i32 %c2912 to i64
  %t2914 = shl i64 %c2913, 3
  %t2915 = add i64 %r2910, %t2914
  %wp2916 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2915, ptr %wp2916, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32d0 word 0xf9400c09
  %r2917.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2917 = load i64, ptr %r2917.p, align 8, !alias.scope !3, !noalias !4
  %t2918 = add i64 %r2917, 24
  %gmp2919 = inttoptr i64 %t2918 to ptr
  %gml2920 = load i64, ptr %gmp2919, align 1, !alias.scope !4, !noalias !3
  %wp2921 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2920, ptr %wp2921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32d4 word 0x2d400101
  %r2922.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2922 = load i64, ptr %r2922.p, align 8, !alias.scope !3, !noalias !4
  %t2923 = add i64 %r2922, 4
  %gmp2924 = inttoptr i64 %r2922 to ptr
  %gml2925 = load i32, ptr %gmp2924, align 1, !alias.scope !4, !noalias !3
  %gmp2926 = inttoptr i64 %t2923 to ptr
  %gml2927 = load i32, ptr %gmp2926, align 1, !alias.scope !4, !noalias !3
  %c2928 = zext i32 %gml2925 to i128
  %wp2929 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2928, ptr %wp2929, align 16, !alias.scope !3, !noalias !4
  %c2930 = zext i32 %gml2927 to i128
  %wp2931 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2930, ptr %wp2931, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32d8 word 0xb948dd2b
  %r2932.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2932 = load i64, ptr %r2932.p, align 8, !alias.scope !3, !noalias !4
  %t2933 = add i64 %r2932, 2268
  %gmp2934 = inttoptr i64 %t2933 to ptr
  %gml2935 = load i32, ptr %gmp2934, align 1, !alias.scope !4, !noalias !3
  %c2936 = zext i32 %gml2935 to i64
  %wp2937 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2936, ptr %wp2937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32dc word 0xb948d92a
  %r2938.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2938 = load i64, ptr %r2938.p, align 8, !alias.scope !3, !noalias !4
  %t2939 = add i64 %r2938, 2264
  %gmp2940 = inttoptr i64 %t2939 to ptr
  %gml2941 = load i32, ptr %gmp2940, align 1, !alias.scope !4, !noalias !3
  %c2942 = zext i32 %gml2941 to i64
  %wp2943 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2942, ptr %wp2943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32e0 word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d32e4 word 0xb908d92b
  %r2944.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2944 = load i64, ptr %r2944.p, align 8, !alias.scope !3, !noalias !4
  %t2945 = add i64 %r2944, 2264
  %r2946.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2946 = load i64, ptr %r2946.p, align 8, !alias.scope !3, !noalias !4
  %c2947 = trunc i64 %r2946 to i32
  %gmp2948 = inttoptr i64 %t2945 to ptr
  store i32 %c2947, ptr %gmp2948, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d32e8 word 0xb948e12b
  %r2949.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2949 = load i64, ptr %r2949.p, align 8, !alias.scope !3, !noalias !4
  %t2950 = add i64 %r2949, 2272
  %gmp2951 = inttoptr i64 %t2950 to ptr
  %gml2952 = load i32, ptr %gmp2951, align 1, !alias.scope !4, !noalias !3
  %c2953 = zext i32 %gml2952 to i64
  %wp2954 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2953, ptr %wp2954, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32ec word 0x4a0a2d4a
  %r2955.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2955 = load i64, ptr %r2955.p, align 8, !alias.scope !3, !noalias !4
  %c2956 = trunc i64 %r2955 to i32
  %t2957 = shl i32 %c2956, 11
  %r2958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2958 = load i64, ptr %r2958.p, align 8, !alias.scope !3, !noalias !4
  %c2959 = trunc i64 %r2958 to i32
  %t2960 = xor i32 %c2959, %t2957
  %c2961 = zext i32 %t2960 to i64
  %wp2962 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2961, ptr %wp2962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32f0 word 0x53087d4c
  %r2963.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2963 = load i64, ptr %r2963.p, align 8, !alias.scope !3, !noalias !4
  %c2964 = trunc i64 %r2963 to i32
  %ror2965 = call i32 @llvm.fshr.i32(i32 %c2964, i32 %c2964, i32 8)
  %t2966 = and i32 %ror2965, 16777215
  %c2967 = zext i32 %t2966 to i64
  %wp2968 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c2967, ptr %wp2968, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32f4 word 0xb908dd2b
  %r2969.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2969 = load i64, ptr %r2969.p, align 8, !alias.scope !3, !noalias !4
  %t2970 = add i64 %r2969, 2268
  %r2971.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2971 = load i64, ptr %r2971.p, align 8, !alias.scope !3, !noalias !4
  %c2972 = trunc i64 %r2971 to i32
  %gmp2973 = inttoptr i64 %t2970 to ptr
  store i32 %c2972, ptr %gmp2973, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d32f8 word 0xb948e52b
  %r2974.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2974 = load i64, ptr %r2974.p, align 8, !alias.scope !3, !noalias !4
  %t2975 = add i64 %r2974, 2276
  %gmp2976 = inttoptr i64 %t2975 to ptr
  %gml2977 = load i32, ptr %gmp2976, align 1, !alias.scope !4, !noalias !3
  %c2978 = zext i32 %gml2977 to i64
  %wp2979 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2978, ptr %wp2979, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d32fc word 0x1e214001
  %r2980.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2980 = load i128, ptr %r2980.p, align 16, !alias.scope !3, !noalias !4
  %c2981 = trunc i128 %r2980 to i32
  %t2982 = xor i32 %c2981, -2147483648
  %c2983 = zext i32 %t2982 to i128
  %wp2984 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c2983, ptr %wp2984, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3300 word 0x1e202008
  %fcmp2985 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp2986 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp2985, ptr %wp2986, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3304 word 0x1e20bc20
  %r2987.p = getelementptr inbounds i8, ptr %c, i64 528
  %r2987 = load i128, ptr %r2987.p, align 16, !alias.scope !3, !noalias !4
  %c2988 = trunc i128 %r2987 to i32
  %r2989.p = getelementptr inbounds i8, ptr %c, i64 512
  %r2989 = load i128, ptr %r2989.p, align 16, !alias.scope !3, !noalias !4
  %c2990 = trunc i128 %r2989 to i32
  %r2991.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2991 = load i64, ptr %r2991.p, align 8, !alias.scope !3, !noalias !4
  %fsh2993 = lshr i64 %r2991, 31
  %ftr2994 = trunc i64 %fsh2993 to i1
  %fsh2995 = lshr i64 %r2991, 28
  %ftr2996 = trunc i64 %fsh2995 to i1
  %cond2992 = icmp ne i1 %ftr2994, %ftr2996
  %sel2997 = select i1 %cond2992, i32 %c2988, i32 %c2990
  %c2998 = zext i32 %sel2997 to i128
  %wp2999 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c2998, ptr %wp2999, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3308 word 0x4a4b4d8c
  %r3000.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3000 = load i64, ptr %r3000.p, align 8, !alias.scope !3, !noalias !4
  %c3001 = trunc i64 %r3000 to i32
  %t3002 = lshr i32 %c3001, 19
  %r3003.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3003 = load i64, ptr %r3003.p, align 8, !alias.scope !3, !noalias !4
  %c3004 = trunc i64 %r3003 to i32
  %t3005 = xor i32 %c3004, %t3002
  %c3006 = zext i32 %t3005 to i64
  %wp3007 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3006, ptr %wp3007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d330c word 0x4a0b014a
  %r3008.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3008 = load i64, ptr %r3008.p, align 8, !alias.scope !3, !noalias !4
  %c3009 = trunc i64 %r3008 to i32
  %r3010.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3010 = load i64, ptr %r3010.p, align 8, !alias.scope !3, !noalias !4
  %c3011 = trunc i64 %r3010 to i32
  %t3012 = xor i32 %c3011, %c3009
  %c3013 = zext i32 %t3012 to i64
  %wp3014 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3013, ptr %wp3014, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3310 word 0xb908e12b
  %r3015.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3015 = load i64, ptr %r3015.p, align 8, !alias.scope !3, !noalias !4
  %t3016 = add i64 %r3015, 2272
  %r3017.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3017 = load i64, ptr %r3017.p, align 8, !alias.scope !3, !noalias !4
  %c3018 = trunc i64 %r3017 to i32
  %gmp3019 = inttoptr i64 %t3016 to ptr
  store i32 %c3018, ptr %gmp3019, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3314 word 0x4a0a018a
  %r3020.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3020 = load i64, ptr %r3020.p, align 8, !alias.scope !3, !noalias !4
  %c3021 = trunc i64 %r3020 to i32
  %r3022.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3022 = load i64, ptr %r3022.p, align 8, !alias.scope !3, !noalias !4
  %c3023 = trunc i64 %r3022 to i32
  %t3024 = xor i32 %c3023, %c3021
  %c3025 = zext i32 %t3024 to i64
  %wp3026 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3025, ptr %wp3026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3318 word 0xb908e52a
  %r3027.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3027 = load i64, ptr %r3027.p, align 8, !alias.scope !3, !noalias !4
  %t3028 = add i64 %r3027, 2276
  %r3029.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3029 = load i64, ptr %r3029.p, align 8, !alias.scope !3, !noalias !4
  %c3030 = trunc i64 %r3029 to i32
  %gmp3031 = inttoptr i64 %t3028 to ptr
  store i32 %c3030, ptr %gmp3031, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d331c word 0x52a7f009
  %c3032 = zext i32 1065353216 to i64
  %wp3033 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3032, ptr %wp3033, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3320 word 0x33097d49
  %r3034.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3034 = load i64, ptr %r3034.p, align 8, !alias.scope !3, !noalias !4
  %c3035 = trunc i64 %r3034 to i32
  %ror3036 = call i32 @llvm.fshr.i32(i32 %c3035, i32 %c3035, i32 9)
  %r3037.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3037 = load i64, ptr %r3037.p, align 8, !alias.scope !3, !noalias !4
  %c3038 = trunc i64 %r3037 to i32
  %t3039 = and i32 %ror3036, -1
  %t3040 = and i32 %c3038, 0
  %t3041 = or i32 %t3040, %t3039
  %t3042 = and i32 %t3041, 8388607
  %t3043 = and i32 %c3038, -8388608
  %t3044 = or i32 %t3043, %t3042
  %c3045 = zext i32 %t3044 to i64
  %wp3046 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3045, ptr %wp3046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3324 word 0x1e270121
  %r3047.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3047 = load i64, ptr %r3047.p, align 8, !alias.scope !3, !noalias !4
  %c3048 = trunc i64 %r3047 to i32
  %c3049 = zext i32 %c3048 to i128
  %wp3050 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3049, ptr %wp3050, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3328 word 0x1e222821
  call void @rt_fp_op_s(ptr %c, i32 0, i32 1, i32 1, i32 2)
  ; @pc 0x8001d332c word 0x1e2e1002
  %wp3051 = getelementptr inbounds i8, ptr %c, i64 544
  store i128 1065353216, ptr %wp3051, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3330 word 0x1e210821
  call void @rt_fp_op_s(ptr %c, i32 2, i32 1, i32 1, i32 1)
  ; @pc 0x8001d3334 word 0x1e213841
  call void @rt_fp_op_s(ptr %c, i32 1, i32 1, i32 2, i32 1)
  br label %L_8001d3338
L_8001d3370_ft:
  ; @pc 0x8001d3370 word 0xf9400c09
  %r3121.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3121 = load i64, ptr %r3121.p, align 8, !alias.scope !3, !noalias !4
  %t3122 = add i64 %r3121, 24
  %gmp3123 = inttoptr i64 %t3122 to ptr
  %gml3124 = load i64, ptr %gmp3123, align 1, !alias.scope !4, !noalias !3
  %wp3125 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3124, ptr %wp3125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3374 word 0x12005d4a
  %r3126.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3126 = load i64, ptr %r3126.p, align 8, !alias.scope !3, !noalias !4
  %c3127 = trunc i64 %r3126 to i32
  %t3128 = and i32 %c3127, 16777215
  %c3129 = zext i32 %t3128 to i64
  %wp3130 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3129, ptr %wp3130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3378 word 0x8b2a4d13
  %r3131.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3131 = load i64, ptr %r3131.p, align 8, !alias.scope !3, !noalias !4
  %r3132.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3132 = load i64, ptr %r3132.p, align 8, !alias.scope !3, !noalias !4
  %c3133 = trunc i64 %r3132 to i32
  %c3134 = zext i32 %c3133 to i64
  %t3135 = shl i64 %c3134, 3
  %t3136 = add i64 %r3131, %t3135
  %wp3137 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t3136, ptr %wp3137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d337c word 0x2d400261
  %r3138.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3138 = load i64, ptr %r3138.p, align 8, !alias.scope !3, !noalias !4
  %t3139 = add i64 %r3138, 4
  %gmp3140 = inttoptr i64 %r3138 to ptr
  %gml3141 = load i32, ptr %gmp3140, align 1, !alias.scope !4, !noalias !3
  %gmp3142 = inttoptr i64 %t3139 to ptr
  %gml3143 = load i32, ptr %gmp3142, align 1, !alias.scope !4, !noalias !3
  %c3144 = zext i32 %gml3141 to i128
  %wp3145 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3144, ptr %wp3145, align 16, !alias.scope !3, !noalias !4
  %c3146 = zext i32 %gml3143 to i128
  %wp3147 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3146, ptr %wp3147, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3380 word 0xb948dd2a
  %r3148.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3148 = load i64, ptr %r3148.p, align 8, !alias.scope !3, !noalias !4
  %t3149 = add i64 %r3148, 2268
  %gmp3150 = inttoptr i64 %t3149 to ptr
  %gml3151 = load i32, ptr %gmp3150, align 1, !alias.scope !4, !noalias !3
  %c3152 = zext i32 %gml3151 to i64
  %wp3153 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3152, ptr %wp3153, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3384 word 0xb948d928
  %r3154.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3154 = load i64, ptr %r3154.p, align 8, !alias.scope !3, !noalias !4
  %t3155 = add i64 %r3154, 2264
  %gmp3156 = inttoptr i64 %t3155 to ptr
  %gml3157 = load i32, ptr %gmp3156, align 1, !alias.scope !4, !noalias !3
  %c3158 = zext i32 %gml3157 to i64
  %wp3159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3158, ptr %wp3159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3388 word 0xb908d92a
  %r3160.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3160 = load i64, ptr %r3160.p, align 8, !alias.scope !3, !noalias !4
  %t3161 = add i64 %r3160, 2264
  %r3162.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3162 = load i64, ptr %r3162.p, align 8, !alias.scope !3, !noalias !4
  %c3163 = trunc i64 %r3162 to i32
  %gmp3164 = inttoptr i64 %t3161 to ptr
  store i32 %c3163, ptr %gmp3164, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d338c word 0xb948e12a
  %r3165.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3165 = load i64, ptr %r3165.p, align 8, !alias.scope !3, !noalias !4
  %t3166 = add i64 %r3165, 2272
  %gmp3167 = inttoptr i64 %t3166 to ptr
  %gml3168 = load i32, ptr %gmp3167, align 1, !alias.scope !4, !noalias !3
  %c3169 = zext i32 %gml3168 to i64
  %wp3170 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3169, ptr %wp3170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3390 word 0x4a082d08
  %r3171.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3171 = load i64, ptr %r3171.p, align 8, !alias.scope !3, !noalias !4
  %c3172 = trunc i64 %r3171 to i32
  %t3173 = shl i32 %c3172, 11
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %c3175 = trunc i64 %r3174 to i32
  %t3176 = xor i32 %c3175, %t3173
  %c3177 = zext i32 %t3176 to i64
  %wp3178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3177, ptr %wp3178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3394 word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3398 word 0x53087d0b
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %c3180 = trunc i64 %r3179 to i32
  %ror3181 = call i32 @llvm.fshr.i32(i32 %c3180, i32 %c3180, i32 8)
  %t3182 = and i32 %ror3181, 16777215
  %c3183 = zext i32 %t3182 to i64
  %wp3184 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3183, ptr %wp3184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d339c word 0xb908dd2a
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %t3186 = add i64 %r3185, 2268
  %r3187.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3187 = load i64, ptr %r3187.p, align 8, !alias.scope !3, !noalias !4
  %c3188 = trunc i64 %r3187 to i32
  %gmp3189 = inttoptr i64 %t3186 to ptr
  store i32 %c3188, ptr %gmp3189, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d33a0 word 0xb948e52a
  %r3190.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3190 = load i64, ptr %r3190.p, align 8, !alias.scope !3, !noalias !4
  %t3191 = add i64 %r3190, 2276
  %gmp3192 = inttoptr i64 %t3191 to ptr
  %gml3193 = load i32, ptr %gmp3192, align 1, !alias.scope !4, !noalias !3
  %c3194 = zext i32 %gml3193 to i64
  %wp3195 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3194, ptr %wp3195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33a4 word 0x1e214001
  %r3196.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3196 = load i128, ptr %r3196.p, align 16, !alias.scope !3, !noalias !4
  %c3197 = trunc i128 %r3196 to i32
  %t3198 = xor i32 %c3197, -2147483648
  %c3199 = zext i32 %t3198 to i128
  %wp3200 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3199, ptr %wp3200, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33a8 word 0x1e202008
  %fcmp3201 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp3202 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3201, ptr %wp3202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33ac word 0x4a4a4d6b
  %r3203.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3203 = load i64, ptr %r3203.p, align 8, !alias.scope !3, !noalias !4
  %c3204 = trunc i64 %r3203 to i32
  %t3205 = lshr i32 %c3204, 19
  %r3206.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3206 = load i64, ptr %r3206.p, align 8, !alias.scope !3, !noalias !4
  %c3207 = trunc i64 %r3206 to i32
  %t3208 = xor i32 %c3207, %t3205
  %c3209 = zext i32 %t3208 to i64
  %wp3210 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3209, ptr %wp3210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33b0 word 0x4a0a0108
  %r3211.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3211 = load i64, ptr %r3211.p, align 8, !alias.scope !3, !noalias !4
  %c3212 = trunc i64 %r3211 to i32
  %r3213.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3213 = load i64, ptr %r3213.p, align 8, !alias.scope !3, !noalias !4
  %c3214 = trunc i64 %r3213 to i32
  %t3215 = xor i32 %c3214, %c3212
  %c3216 = zext i32 %t3215 to i64
  %wp3217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3216, ptr %wp3217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33b4 word 0xb908e12a
  %r3218.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3218 = load i64, ptr %r3218.p, align 8, !alias.scope !3, !noalias !4
  %t3219 = add i64 %r3218, 2272
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %c3221 = trunc i64 %r3220 to i32
  %gmp3222 = inttoptr i64 %t3219 to ptr
  store i32 %c3221, ptr %gmp3222, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d33b8 word 0x1e20bc28
  %r3223.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3223 = load i128, ptr %r3223.p, align 16, !alias.scope !3, !noalias !4
  %c3224 = trunc i128 %r3223 to i32
  %r3225.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3225 = load i128, ptr %r3225.p, align 16, !alias.scope !3, !noalias !4
  %c3226 = trunc i128 %r3225 to i32
  %r3227.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3227 = load i64, ptr %r3227.p, align 8, !alias.scope !3, !noalias !4
  %fsh3229 = lshr i64 %r3227, 31
  %ftr3230 = trunc i64 %fsh3229 to i1
  %fsh3231 = lshr i64 %r3227, 28
  %ftr3232 = trunc i64 %fsh3231 to i1
  %cond3228 = icmp ne i1 %ftr3230, %ftr3232
  %sel3233 = select i1 %cond3228, i32 %c3224, i32 %c3226
  %c3234 = zext i32 %sel3233 to i128
  %wp3235 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3234, ptr %wp3235, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33bc word 0x1e3e1001
  %wp3236 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp3236, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33c0 word 0x4a080168
  %r3237.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3237 = load i64, ptr %r3237.p, align 8, !alias.scope !3, !noalias !4
  %c3238 = trunc i64 %r3237 to i32
  %r3239.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3239 = load i64, ptr %r3239.p, align 8, !alias.scope !3, !noalias !4
  %c3240 = trunc i64 %r3239 to i32
  %t3241 = xor i32 %c3240, %c3238
  %c3242 = zext i32 %t3241 to i64
  %wp3243 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3242, ptr %wp3243, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33c4 word 0xb908e528
  %r3244.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3244 = load i64, ptr %r3244.p, align 8, !alias.scope !3, !noalias !4
  %t3245 = add i64 %r3244, 2276
  %r3246.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3246 = load i64, ptr %r3246.p, align 8, !alias.scope !3, !noalias !4
  %c3247 = trunc i64 %r3246 to i32
  %gmp3248 = inttoptr i64 %t3245 to ptr
  store i32 %c3247, ptr %gmp3248, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d33c8 word 0x52a7f009
  %c3249 = zext i32 1065353216 to i64
  %wp3250 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3249, ptr %wp3250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33cc word 0x33097d09
  %r3251.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3251 = load i64, ptr %r3251.p, align 8, !alias.scope !3, !noalias !4
  %c3252 = trunc i64 %r3251 to i32
  %ror3253 = call i32 @llvm.fshr.i32(i32 %c3252, i32 %c3252, i32 9)
  %r3254.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3254 = load i64, ptr %r3254.p, align 8, !alias.scope !3, !noalias !4
  %c3255 = trunc i64 %r3254 to i32
  %t3256 = and i32 %ror3253, -1
  %t3257 = and i32 %c3255, 0
  %t3258 = or i32 %t3257, %t3256
  %t3259 = and i32 %t3258, 8388607
  %t3260 = and i32 %c3255, -8388608
  %t3261 = or i32 %t3260, %t3259
  %c3262 = zext i32 %t3261 to i64
  %wp3263 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3262, ptr %wp3263, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33d0 word 0x1e270120
  %r3264.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3264 = load i64, ptr %r3264.p, align 8, !alias.scope !3, !noalias !4
  %c3265 = trunc i64 %r3264 to i32
  %c3266 = zext i32 %c3265 to i128
  %wp3267 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3266, ptr %wp3267, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33d4 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d33d8 word 0x1e211001
  %wp3268 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1077936128, ptr %wp3268, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d33dc word 0x1400004c
  br label %L_8001d350c
L_8001d3408_ft:
  ; @pc 0x8001d3408 word 0xf9400c09
  %r3333.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3333 = load i64, ptr %r3333.p, align 8, !alias.scope !3, !noalias !4
  %t3334 = add i64 %r3333, 24
  %gmp3335 = inttoptr i64 %t3334 to ptr
  %gml3336 = load i64, ptr %gmp3335, align 1, !alias.scope !4, !noalias !3
  %wp3337 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3336, ptr %wp3337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d340c word 0x12005d4a
  %r3338.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3338 = load i64, ptr %r3338.p, align 8, !alias.scope !3, !noalias !4
  %c3339 = trunc i64 %r3338 to i32
  %t3340 = and i32 %c3339, 16777215
  %c3341 = zext i32 %t3340 to i64
  %wp3342 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3341, ptr %wp3342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3410 word 0x8b2a4d13
  %r3343.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3343 = load i64, ptr %r3343.p, align 8, !alias.scope !3, !noalias !4
  %r3344.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3344 = load i64, ptr %r3344.p, align 8, !alias.scope !3, !noalias !4
  %c3345 = trunc i64 %r3344 to i32
  %c3346 = zext i32 %c3345 to i64
  %t3347 = shl i64 %c3346, 3
  %t3348 = add i64 %r3343, %t3347
  %wp3349 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t3348, ptr %wp3349, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3414 word 0x2d400261
  %r3350.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3350 = load i64, ptr %r3350.p, align 8, !alias.scope !3, !noalias !4
  %t3351 = add i64 %r3350, 4
  %gmp3352 = inttoptr i64 %r3350 to ptr
  %gml3353 = load i32, ptr %gmp3352, align 1, !alias.scope !4, !noalias !3
  %gmp3354 = inttoptr i64 %t3351 to ptr
  %gml3355 = load i32, ptr %gmp3354, align 1, !alias.scope !4, !noalias !3
  %c3356 = zext i32 %gml3353 to i128
  %wp3357 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3356, ptr %wp3357, align 16, !alias.scope !3, !noalias !4
  %c3358 = zext i32 %gml3355 to i128
  %wp3359 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3358, ptr %wp3359, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3418 word 0xb948dd2a
  %r3360.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3360 = load i64, ptr %r3360.p, align 8, !alias.scope !3, !noalias !4
  %t3361 = add i64 %r3360, 2268
  %gmp3362 = inttoptr i64 %t3361 to ptr
  %gml3363 = load i32, ptr %gmp3362, align 1, !alias.scope !4, !noalias !3
  %c3364 = zext i32 %gml3363 to i64
  %wp3365 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3364, ptr %wp3365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d341c word 0xb948d928
  %r3366.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3366 = load i64, ptr %r3366.p, align 8, !alias.scope !3, !noalias !4
  %t3367 = add i64 %r3366, 2264
  %gmp3368 = inttoptr i64 %t3367 to ptr
  %gml3369 = load i32, ptr %gmp3368, align 1, !alias.scope !4, !noalias !3
  %c3370 = zext i32 %gml3369 to i64
  %wp3371 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3370, ptr %wp3371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3420 word 0xb908d92a
  %r3372.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3372 = load i64, ptr %r3372.p, align 8, !alias.scope !3, !noalias !4
  %t3373 = add i64 %r3372, 2264
  %r3374.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3374 = load i64, ptr %r3374.p, align 8, !alias.scope !3, !noalias !4
  %c3375 = trunc i64 %r3374 to i32
  %gmp3376 = inttoptr i64 %t3373 to ptr
  store i32 %c3375, ptr %gmp3376, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3424 word 0xb948e12a
  %r3377.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3377 = load i64, ptr %r3377.p, align 8, !alias.scope !3, !noalias !4
  %t3378 = add i64 %r3377, 2272
  %gmp3379 = inttoptr i64 %t3378 to ptr
  %gml3380 = load i32, ptr %gmp3379, align 1, !alias.scope !4, !noalias !3
  %c3381 = zext i32 %gml3380 to i64
  %wp3382 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3381, ptr %wp3382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3428 word 0x4a082d08
  %r3383.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3383 = load i64, ptr %r3383.p, align 8, !alias.scope !3, !noalias !4
  %c3384 = trunc i64 %r3383 to i32
  %t3385 = shl i32 %c3384, 11
  %r3386.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3386 = load i64, ptr %r3386.p, align 8, !alias.scope !3, !noalias !4
  %c3387 = trunc i64 %r3386 to i32
  %t3388 = xor i32 %c3387, %t3385
  %c3389 = zext i32 %t3388 to i64
  %wp3390 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3389, ptr %wp3390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d342c word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3430 word 0x53087d0b
  %r3391.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3391 = load i64, ptr %r3391.p, align 8, !alias.scope !3, !noalias !4
  %c3392 = trunc i64 %r3391 to i32
  %ror3393 = call i32 @llvm.fshr.i32(i32 %c3392, i32 %c3392, i32 8)
  %t3394 = and i32 %ror3393, 16777215
  %c3395 = zext i32 %t3394 to i64
  %wp3396 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3395, ptr %wp3396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3434 word 0xb908dd2a
  %r3397.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3397 = load i64, ptr %r3397.p, align 8, !alias.scope !3, !noalias !4
  %t3398 = add i64 %r3397, 2268
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %c3400 = trunc i64 %r3399 to i32
  %gmp3401 = inttoptr i64 %t3398 to ptr
  store i32 %c3400, ptr %gmp3401, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3438 word 0xb948e52a
  %r3402.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3402 = load i64, ptr %r3402.p, align 8, !alias.scope !3, !noalias !4
  %t3403 = add i64 %r3402, 2276
  %gmp3404 = inttoptr i64 %t3403 to ptr
  %gml3405 = load i32, ptr %gmp3404, align 1, !alias.scope !4, !noalias !3
  %c3406 = zext i32 %gml3405 to i64
  %wp3407 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3406, ptr %wp3407, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d343c word 0x1e214001
  %r3408.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3408 = load i128, ptr %r3408.p, align 16, !alias.scope !3, !noalias !4
  %c3409 = trunc i128 %r3408 to i32
  %t3410 = xor i32 %c3409, -2147483648
  %c3411 = zext i32 %t3410 to i128
  %wp3412 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3411, ptr %wp3412, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3440 word 0x1e202008
  %fcmp3413 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp3414 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3413, ptr %wp3414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3444 word 0x4a4a4d6b
  %r3415.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3415 = load i64, ptr %r3415.p, align 8, !alias.scope !3, !noalias !4
  %c3416 = trunc i64 %r3415 to i32
  %t3417 = lshr i32 %c3416, 19
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %c3419 = trunc i64 %r3418 to i32
  %t3420 = xor i32 %c3419, %t3417
  %c3421 = zext i32 %t3420 to i64
  %wp3422 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3421, ptr %wp3422, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3448 word 0x4a0a0108
  %r3423.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3423 = load i64, ptr %r3423.p, align 8, !alias.scope !3, !noalias !4
  %c3424 = trunc i64 %r3423 to i32
  %r3425.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3425 = load i64, ptr %r3425.p, align 8, !alias.scope !3, !noalias !4
  %c3426 = trunc i64 %r3425 to i32
  %t3427 = xor i32 %c3426, %c3424
  %c3428 = zext i32 %t3427 to i64
  %wp3429 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3428, ptr %wp3429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d344c word 0xb908e12a
  %r3430.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3430 = load i64, ptr %r3430.p, align 8, !alias.scope !3, !noalias !4
  %t3431 = add i64 %r3430, 2272
  %r3432.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3432 = load i64, ptr %r3432.p, align 8, !alias.scope !3, !noalias !4
  %c3433 = trunc i64 %r3432 to i32
  %gmp3434 = inttoptr i64 %t3431 to ptr
  store i32 %c3433, ptr %gmp3434, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3450 word 0x1e20bc28
  %r3435.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3435 = load i128, ptr %r3435.p, align 16, !alias.scope !3, !noalias !4
  %c3436 = trunc i128 %r3435 to i32
  %r3437.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3437 = load i128, ptr %r3437.p, align 16, !alias.scope !3, !noalias !4
  %c3438 = trunc i128 %r3437 to i32
  %r3439.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3439 = load i64, ptr %r3439.p, align 8, !alias.scope !3, !noalias !4
  %fsh3441 = lshr i64 %r3439, 31
  %ftr3442 = trunc i64 %fsh3441 to i1
  %fsh3443 = lshr i64 %r3439, 28
  %ftr3444 = trunc i64 %fsh3443 to i1
  %cond3440 = icmp ne i1 %ftr3442, %ftr3444
  %sel3445 = select i1 %cond3440, i32 %c3436, i32 %c3438
  %c3446 = zext i32 %sel3445 to i128
  %wp3447 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3446, ptr %wp3447, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3454 word 0x1e3e1001
  %wp3448 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp3448, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3458 word 0x4a080168
  %r3449.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3449 = load i64, ptr %r3449.p, align 8, !alias.scope !3, !noalias !4
  %c3450 = trunc i64 %r3449 to i32
  %r3451.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3451 = load i64, ptr %r3451.p, align 8, !alias.scope !3, !noalias !4
  %c3452 = trunc i64 %r3451 to i32
  %t3453 = xor i32 %c3452, %c3450
  %c3454 = zext i32 %t3453 to i64
  %wp3455 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3454, ptr %wp3455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d345c word 0xb908e528
  %r3456.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3456 = load i64, ptr %r3456.p, align 8, !alias.scope !3, !noalias !4
  %t3457 = add i64 %r3456, 2276
  %r3458.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3458 = load i64, ptr %r3458.p, align 8, !alias.scope !3, !noalias !4
  %c3459 = trunc i64 %r3458 to i32
  %gmp3460 = inttoptr i64 %t3457 to ptr
  store i32 %c3459, ptr %gmp3460, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d3460 word 0x52a7f009
  %c3461 = zext i32 1065353216 to i64
  %wp3462 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3461, ptr %wp3462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3464 word 0x33097d09
  %r3463.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3463 = load i64, ptr %r3463.p, align 8, !alias.scope !3, !noalias !4
  %c3464 = trunc i64 %r3463 to i32
  %ror3465 = call i32 @llvm.fshr.i32(i32 %c3464, i32 %c3464, i32 9)
  %r3466.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3466 = load i64, ptr %r3466.p, align 8, !alias.scope !3, !noalias !4
  %c3467 = trunc i64 %r3466 to i32
  %t3468 = and i32 %ror3465, -1
  %t3469 = and i32 %c3467, 0
  %t3470 = or i32 %t3469, %t3468
  %t3471 = and i32 %t3470, 8388607
  %t3472 = and i32 %c3467, -8388608
  %t3473 = or i32 %t3472, %t3471
  %c3474 = zext i32 %t3473 to i64
  %wp3475 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3474, ptr %wp3475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3468 word 0x1e270120
  %r3476.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3476 = load i64, ptr %r3476.p, align 8, !alias.scope !3, !noalias !4
  %c3477 = trunc i64 %r3476 to i32
  %c3478 = zext i32 %c3477 to i128
  %wp3479 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3478, ptr %wp3479, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d346c word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3470 word 0x1e221001
  %wp3480 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1082130432, ptr %wp3480, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3474 word 0x14000026
  br label %L_8001d350c
L_8001d34a0_ft:
  ; @pc 0x8001d34a0 word 0xf9400c09
  %r3545.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3545 = load i64, ptr %r3545.p, align 8, !alias.scope !3, !noalias !4
  %t3546 = add i64 %r3545, 24
  %gmp3547 = inttoptr i64 %t3546 to ptr
  %gml3548 = load i64, ptr %gmp3547, align 1, !alias.scope !4, !noalias !3
  %wp3549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3548, ptr %wp3549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34a4 word 0x12005d4a
  %r3550.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3550 = load i64, ptr %r3550.p, align 8, !alias.scope !3, !noalias !4
  %c3551 = trunc i64 %r3550 to i32
  %t3552 = and i32 %c3551, 16777215
  %c3553 = zext i32 %t3552 to i64
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34a8 word 0x8b2a4d13
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %r3556.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3556 = load i64, ptr %r3556.p, align 8, !alias.scope !3, !noalias !4
  %c3557 = trunc i64 %r3556 to i32
  %c3558 = zext i32 %c3557 to i64
  %t3559 = shl i64 %c3558, 3
  %t3560 = add i64 %r3555, %t3559
  %wp3561 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t3560, ptr %wp3561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34ac word 0x2d400261
  %r3562.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3562 = load i64, ptr %r3562.p, align 8, !alias.scope !3, !noalias !4
  %t3563 = add i64 %r3562, 4
  %gmp3564 = inttoptr i64 %r3562 to ptr
  %gml3565 = load i32, ptr %gmp3564, align 1, !alias.scope !4, !noalias !3
  %gmp3566 = inttoptr i64 %t3563 to ptr
  %gml3567 = load i32, ptr %gmp3566, align 1, !alias.scope !4, !noalias !3
  %c3568 = zext i32 %gml3565 to i128
  %wp3569 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3568, ptr %wp3569, align 16, !alias.scope !3, !noalias !4
  %c3570 = zext i32 %gml3567 to i128
  %wp3571 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3570, ptr %wp3571, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34b0 word 0xb948dd2a
  %r3572.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3572 = load i64, ptr %r3572.p, align 8, !alias.scope !3, !noalias !4
  %t3573 = add i64 %r3572, 2268
  %gmp3574 = inttoptr i64 %t3573 to ptr
  %gml3575 = load i32, ptr %gmp3574, align 1, !alias.scope !4, !noalias !3
  %c3576 = zext i32 %gml3575 to i64
  %wp3577 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3576, ptr %wp3577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34b4 word 0xb948d928
  %r3578.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3578 = load i64, ptr %r3578.p, align 8, !alias.scope !3, !noalias !4
  %t3579 = add i64 %r3578, 2264
  %gmp3580 = inttoptr i64 %t3579 to ptr
  %gml3581 = load i32, ptr %gmp3580, align 1, !alias.scope !4, !noalias !3
  %c3582 = zext i32 %gml3581 to i64
  %wp3583 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3582, ptr %wp3583, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34b8 word 0xb908d92a
  %r3584.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3584 = load i64, ptr %r3584.p, align 8, !alias.scope !3, !noalias !4
  %t3585 = add i64 %r3584, 2264
  %r3586.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3586 = load i64, ptr %r3586.p, align 8, !alias.scope !3, !noalias !4
  %c3587 = trunc i64 %r3586 to i32
  %gmp3588 = inttoptr i64 %t3585 to ptr
  store i32 %c3587, ptr %gmp3588, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d34bc word 0xb948e12a
  %r3589.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3589 = load i64, ptr %r3589.p, align 8, !alias.scope !3, !noalias !4
  %t3590 = add i64 %r3589, 2272
  %gmp3591 = inttoptr i64 %t3590 to ptr
  %gml3592 = load i32, ptr %gmp3591, align 1, !alias.scope !4, !noalias !3
  %c3593 = zext i32 %gml3592 to i64
  %wp3594 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3593, ptr %wp3594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34c0 word 0x4a082d08
  %r3595.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3595 = load i64, ptr %r3595.p, align 8, !alias.scope !3, !noalias !4
  %c3596 = trunc i64 %r3595 to i32
  %t3597 = shl i32 %c3596, 11
  %r3598.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3598 = load i64, ptr %r3598.p, align 8, !alias.scope !3, !noalias !4
  %c3599 = trunc i64 %r3598 to i32
  %t3600 = xor i32 %c3599, %t3597
  %c3601 = zext i32 %t3600 to i64
  %wp3602 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3601, ptr %wp3602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34c4 word 0x1e213800
  call void @rt_fp_op_s(ptr %c, i32 1, i32 0, i32 0, i32 1)
  ; @pc 0x8001d34c8 word 0x53087d0b
  %r3603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3603 = load i64, ptr %r3603.p, align 8, !alias.scope !3, !noalias !4
  %c3604 = trunc i64 %r3603 to i32
  %ror3605 = call i32 @llvm.fshr.i32(i32 %c3604, i32 %c3604, i32 8)
  %t3606 = and i32 %ror3605, 16777215
  %c3607 = zext i32 %t3606 to i64
  %wp3608 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3607, ptr %wp3608, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34cc word 0xb908dd2a
  %r3609.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3609 = load i64, ptr %r3609.p, align 8, !alias.scope !3, !noalias !4
  %t3610 = add i64 %r3609, 2268
  %r3611.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3611 = load i64, ptr %r3611.p, align 8, !alias.scope !3, !noalias !4
  %c3612 = trunc i64 %r3611 to i32
  %gmp3613 = inttoptr i64 %t3610 to ptr
  store i32 %c3612, ptr %gmp3613, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d34d0 word 0xb948e52a
  %r3614.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3614 = load i64, ptr %r3614.p, align 8, !alias.scope !3, !noalias !4
  %t3615 = add i64 %r3614, 2276
  %gmp3616 = inttoptr i64 %t3615 to ptr
  %gml3617 = load i32, ptr %gmp3616, align 1, !alias.scope !4, !noalias !3
  %c3618 = zext i32 %gml3617 to i64
  %wp3619 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3618, ptr %wp3619, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34d4 word 0x1e214001
  %r3620.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3620 = load i128, ptr %r3620.p, align 16, !alias.scope !3, !noalias !4
  %c3621 = trunc i128 %r3620 to i32
  %t3622 = xor i32 %c3621, -2147483648
  %c3623 = zext i32 %t3622 to i128
  %wp3624 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 %c3623, ptr %wp3624, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34d8 word 0x1e202008
  %fcmp3625 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 0, i32 1)
  %wp3626 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %fcmp3625, ptr %wp3626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34dc word 0x4a4a4d6b
  %r3627.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3627 = load i64, ptr %r3627.p, align 8, !alias.scope !3, !noalias !4
  %c3628 = trunc i64 %r3627 to i32
  %t3629 = lshr i32 %c3628, 19
  %r3630.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3630 = load i64, ptr %r3630.p, align 8, !alias.scope !3, !noalias !4
  %c3631 = trunc i64 %r3630 to i32
  %t3632 = xor i32 %c3631, %t3629
  %c3633 = zext i32 %t3632 to i64
  %wp3634 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c3633, ptr %wp3634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34e0 word 0x4a0a0108
  %r3635.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3635 = load i64, ptr %r3635.p, align 8, !alias.scope !3, !noalias !4
  %c3636 = trunc i64 %r3635 to i32
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %c3638 = trunc i64 %r3637 to i32
  %t3639 = xor i32 %c3638, %c3636
  %c3640 = zext i32 %t3639 to i64
  %wp3641 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3640, ptr %wp3641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34e4 word 0xb908e12a
  %r3642.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3642 = load i64, ptr %r3642.p, align 8, !alias.scope !3, !noalias !4
  %t3643 = add i64 %r3642, 2272
  %r3644.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3644 = load i64, ptr %r3644.p, align 8, !alias.scope !3, !noalias !4
  %c3645 = trunc i64 %r3644 to i32
  %gmp3646 = inttoptr i64 %t3643 to ptr
  store i32 %c3645, ptr %gmp3646, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d34e8 word 0x1e20bc28
  %r3647.p = getelementptr inbounds i8, ptr %c, i64 528
  %r3647 = load i128, ptr %r3647.p, align 16, !alias.scope !3, !noalias !4
  %c3648 = trunc i128 %r3647 to i32
  %r3649.p = getelementptr inbounds i8, ptr %c, i64 512
  %r3649 = load i128, ptr %r3649.p, align 16, !alias.scope !3, !noalias !4
  %c3650 = trunc i128 %r3649 to i32
  %r3651.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3651 = load i64, ptr %r3651.p, align 8, !alias.scope !3, !noalias !4
  %fsh3653 = lshr i64 %r3651, 31
  %ftr3654 = trunc i64 %fsh3653 to i1
  %fsh3655 = lshr i64 %r3651, 28
  %ftr3656 = trunc i64 %fsh3655 to i1
  %cond3652 = icmp ne i1 %ftr3654, %ftr3656
  %sel3657 = select i1 %cond3652, i32 %c3648, i32 %c3650
  %c3658 = zext i32 %sel3657 to i128
  %wp3659 = getelementptr inbounds i8, ptr %c, i64 640
  store i128 %c3658, ptr %wp3659, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34ec word 0x1e3e1001
  %wp3660 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 3212836864, ptr %wp3660, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34f0 word 0x4a080168
  %r3661.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3661 = load i64, ptr %r3661.p, align 8, !alias.scope !3, !noalias !4
  %c3662 = trunc i64 %r3661 to i32
  %r3663.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3663 = load i64, ptr %r3663.p, align 8, !alias.scope !3, !noalias !4
  %c3664 = trunc i64 %r3663 to i32
  %t3665 = xor i32 %c3664, %c3662
  %c3666 = zext i32 %t3665 to i64
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34f4 word 0xb908e528
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %t3669 = add i64 %r3668, 2276
  %r3670.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3670 = load i64, ptr %r3670.p, align 8, !alias.scope !3, !noalias !4
  %c3671 = trunc i64 %r3670 to i32
  %gmp3672 = inttoptr i64 %t3669 to ptr
  store i32 %c3671, ptr %gmp3672, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001d34f8 word 0x52a7f009
  %c3673 = zext i32 1065353216 to i64
  %wp3674 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3673, ptr %wp3674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d34fc word 0x33097d09
  %r3675.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3675 = load i64, ptr %r3675.p, align 8, !alias.scope !3, !noalias !4
  %c3676 = trunc i64 %r3675 to i32
  %ror3677 = call i32 @llvm.fshr.i32(i32 %c3676, i32 %c3676, i32 9)
  %r3678.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3678 = load i64, ptr %r3678.p, align 8, !alias.scope !3, !noalias !4
  %c3679 = trunc i64 %r3678 to i32
  %t3680 = and i32 %ror3677, -1
  %t3681 = and i32 %c3679, 0
  %t3682 = or i32 %t3681, %t3680
  %t3683 = and i32 %t3682, 8388607
  %t3684 = and i32 %c3679, -8388608
  %t3685 = or i32 %t3684, %t3683
  %c3686 = zext i32 %t3685 to i64
  %wp3687 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3686, ptr %wp3687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3500 word 0x1e270120
  %r3688.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3688 = load i64, ptr %r3688.p, align 8, !alias.scope !3, !noalias !4
  %c3689 = trunc i64 %r3688 to i32
  %c3690 = zext i32 %c3689 to i128
  %wp3691 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %c3690, ptr %wp3691, align 16, !alias.scope !3, !noalias !4
  ; @pc 0x8001d3504 word 0x1e212800
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 0, i32 1)
  ; @pc 0x8001d3508 word 0x1e2f1001
  %wp3692 = getelementptr inbounds i8, ptr %c, i64 528
  store i128 1069547520, ptr %wp3692, align 16, !alias.scope !3, !noalias !4
  br label %L_8001d350c
L_8001d2ce8_jt_def:
  %fp3712 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r965, ptr %fp3712, align 8, !alias.scope !3, !noalias !4
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
