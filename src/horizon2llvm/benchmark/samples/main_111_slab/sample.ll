; UltraTears chunk main_111_slab: 1 functions [0x8001bbb90..0x8001bd2a0)
; ModuleID = 'main_111_slab_raw'
source_filename = "main_111_slab_raw"
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

define dso_local void @f_8001bbb90(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof1 = load volatile i32, ptr @g_fnprof, align 4
  %pcmp2 = icmp ne i32 %prof1, 0
  br i1 %pcmp2, label %prof_hit, label %prof_cont
L_8001bbb90:
  ; @pc 0x8001bbb90 word 0xd10643ff
  %r5.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5 = load i64, ptr %r5.p, align 8, !alias.scope !3, !noalias !4
  %t6 = sub i64 %r5, 400
  %wp7 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t6, ptr %wp7, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbb94 word 0xa9137bfd
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
  ; @pc 0x8001bbb98 word 0xa9146ffc
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
  ; @pc 0x8001bbb9c word 0xa91567fa
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
  ; @pc 0x8001bbba0 word 0xa9165ff8
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
  ; @pc 0x8001bbba4 word 0xa91757f6
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
  ; @pc 0x8001bbba8 word 0xa9184ff4
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
  ; @pc 0x8001bbbac word 0x9104c3fd
  %r50.p = getelementptr inbounds i8, ptr %c, i64 256
  %r50 = load i64, ptr %r50.p, align 8, !alias.scope !3, !noalias !4
  %t51 = add i64 %r50, 304
  %wp52 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %t51, ptr %wp52, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbb0 word 0xa9402009
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
  ; @pc 0x8001bbbb4 word 0x2a0303f7
  %r61.p = getelementptr inbounds i8, ptr %c, i64 24
  %r61 = load i64, ptr %r61.p, align 8, !alias.scope !3, !noalias !4
  %c62 = trunc i64 %r61 to i32
  %t63 = or i32 0, %c62
  %c64 = zext i32 %t63 to i64
  %wp65 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c64, ptr %wp65, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbb8 word 0xf001bc83
  %wp66 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 34419826688, ptr %wp66, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbbc word 0xaa0203f3
  %r67.p = getelementptr inbounds i8, ptr %c, i64 16
  %r67 = load i64, ptr %r67.p, align 8, !alias.scope !3, !noalias !4
  %t68 = or i64 0, %r67
  %wp69 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t68, ptr %wp69, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbc0 word 0xaa0003f5
  %r70.p = getelementptr inbounds i8, ptr %c, i64 0
  %r70 = load i64, ptr %r70.p, align 8, !alias.scope !3, !noalias !4
  %t71 = or i64 0, %r70
  %wp72 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %t71, ptr %wp72, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbc4 word 0xaa0103f6
  %r73.p = getelementptr inbounds i8, ptr %c, i64 8
  %r73 = load i64, ptr %r73.p, align 8, !alias.scope !3, !noalias !4
  %t74 = or i64 0, %r73
  %wp75 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t74, ptr %wp75, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbc8 word 0xf9400914
  %r76.p = getelementptr inbounds i8, ptr %c, i64 64
  %r76 = load i64, ptr %r76.p, align 8, !alias.scope !3, !noalias !4
  %t77 = add i64 %r76, 16
  %gmp78 = inttoptr i64 %t77 to ptr
  %gml79 = load i64, ptr %gmp78, align 1, !alias.scope !4, !noalias !3
  %wp80 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml79, ptr %wp80, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbcc word 0xf9404d28
  %r81.p = getelementptr inbounds i8, ptr %c, i64 72
  %r81 = load i64, ptr %r81.p, align 8, !alias.scope !3, !noalias !4
  %t82 = add i64 %r81, 152
  %gmp83 = inttoptr i64 %t82 to ptr
  %gml84 = load i64, ptr %gmp83, align 1, !alias.scope !4, !noalias !3
  %wp85 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml84, ptr %wp85, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbd0 word 0xf9439863
  %r86.p = getelementptr inbounds i8, ptr %c, i64 24
  %r86 = load i64, ptr %r86.p, align 8, !alias.scope !3, !noalias !4
  %t87 = add i64 %r86, 1840
  %gmp88 = inttoptr i64 %t87 to ptr
  %gml89 = load i64, ptr %gmp88, align 1, !alias.scope !4, !noalias !3
  %wp90 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %gml89, ptr %wp90, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbd4 word 0xeb03011f
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
  ; @pc 0x8001bbbd8 word 0x54006161
  %r113.p = getelementptr inbounds i8, ptr %c, i64 272
  %r113 = load i64, ptr %r113.p, align 8, !alias.scope !3, !noalias !4
  %fsh115 = lshr i64 %r113, 30
  %ftr116 = trunc i64 %fsh115 to i1
  %cond114 = xor i1 %ftr116, true
  br i1 %cond114, label %L_8001bc804, label %L_8001bbbdc_ft
L_8001bbbf8:
  ; @pc 0x8001bbbf8 word 0xb9403409
  %r155.p = getelementptr inbounds i8, ptr %c, i64 0
  %r155 = load i64, ptr %r155.p, align 8, !alias.scope !3, !noalias !4
  %t156 = add i64 %r155, 52
  %gmp157 = inttoptr i64 %t156 to ptr
  %gml158 = load i32, ptr %gmp157, align 1, !alias.scope !4, !noalias !3
  %c159 = zext i32 %gml158 to i64
  %wp160 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c159, ptr %wp160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbfc word 0x52b84005
  %c161 = zext i32 -1040187392 to i64
  %wp162 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c161, ptr %wp162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc00 word 0x7100053f
  %r163.p = getelementptr inbounds i8, ptr %c, i64 72
  %r163 = load i64, ptr %r163.p, align 8, !alias.scope !3, !noalias !4
  %c164 = trunc i64 %r163 to i32
  %t165 = sub i32 %c164, 1
  %fn166 = icmp slt i32 %t165, 0
  %fz167 = icmp eq i32 %t165, 0
  %fc168 = icmp uge i32 %c164, 1
  %fx1169 = xor i32 %c164, 1
  %fx2170 = xor i32 %c164, %t165
  %fva171 = and i32 %fx1169, %fx2170
  %fv172 = icmp slt i32 %fva171, 0
  %nz173 = zext i1 %fn166 to i64
  %zz174 = zext i1 %fz167 to i64
  %cz175 = zext i1 %fc168 to i64
  %vz176 = zext i1 %fv172 to i64
  %ns177 = shl i64 %nz173, 31
  %zs178 = shl i64 %zz174, 30
  %cs179 = shl i64 %cz175, 29
  %vs180 = shl i64 %vz176, 28
  %nzor181 = or i64 %ns177, %zs178
  %cvor182 = or i64 %cs179, %vs180
  %nzcv183 = or i64 %nzor181, %cvor182
  %wp184 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv183, ptr %wp184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc04 word 0x5400064b
  %r185.p = getelementptr inbounds i8, ptr %c, i64 272
  %r185 = load i64, ptr %r185.p, align 8, !alias.scope !3, !noalias !4
  %fsh187 = lshr i64 %r185, 31
  %ftr188 = trunc i64 %fsh187 to i1
  %fsh189 = lshr i64 %r185, 28
  %ftr190 = trunc i64 %fsh189 to i1
  %cond186 = icmp ne i1 %ftr188, %ftr190
  br i1 %cond186, label %L_8001bbccc, label %L_8001bbc08_ft
L_8001bbc34:
  ; @pc 0x8001bbc34 word 0xd37ced50
  %r238.p = getelementptr inbounds i8, ptr %c, i64 80
  %r238 = load i64, ptr %r238.p, align 8, !alias.scope !3, !noalias !4
  %ror239 = call i64 @llvm.fshr.i64(i64 %r238, i64 %r238, i64 60)
  %t240 = and i64 %ror239, -16
  %wp241 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t240, ptr %wp241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc38 word 0xb8b06971
  %r242.p = getelementptr inbounds i8, ptr %c, i64 88
  %r242 = load i64, ptr %r242.p, align 8, !alias.scope !3, !noalias !4
  %r243.p = getelementptr inbounds i8, ptr %c, i64 128
  %r243 = load i64, ptr %r243.p, align 8, !alias.scope !3, !noalias !4
  %t244 = add i64 %r242, %r243
  %gmp245 = inttoptr i64 %t244 to ptr
  %gml246 = load i32, ptr %gmp245, align 1, !alias.scope !4, !noalias !3
  %c247 = sext i32 %gml246 to i64
  %wp248 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c247, ptr %wp248, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc3c word 0x8b110190
  %r249.p = getelementptr inbounds i8, ptr %c, i64 96
  %r249 = load i64, ptr %r249.p, align 8, !alias.scope !3, !noalias !4
  %r250.p = getelementptr inbounds i8, ptr %c, i64 136
  %r250 = load i64, ptr %r250.p, align 8, !alias.scope !3, !noalias !4
  %t251 = add i64 %r249, %r250
  %wp252 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t251, ptr %wp252, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc40 word 0xeb1001bf
  %r253.p = getelementptr inbounds i8, ptr %c, i64 104
  %r253 = load i64, ptr %r253.p, align 8, !alias.scope !3, !noalias !4
  %r254.p = getelementptr inbounds i8, ptr %c, i64 128
  %r254 = load i64, ptr %r254.p, align 8, !alias.scope !3, !noalias !4
  %t255 = sub i64 %r253, %r254
  %fn256 = icmp slt i64 %t255, 0
  %fz257 = icmp eq i64 %t255, 0
  %fc258 = icmp uge i64 %r253, %r254
  %fx1259 = xor i64 %r253, %r254
  %fx2260 = xor i64 %r253, %t255
  %fva261 = and i64 %fx1259, %fx2260
  %fv262 = icmp slt i64 %fva261, 0
  %nz263 = zext i1 %fn256 to i64
  %zz264 = zext i1 %fz257 to i64
  %cz265 = zext i1 %fc258 to i64
  %vz266 = zext i1 %fv262 to i64
  %ns267 = shl i64 %nz263, 31
  %zs268 = shl i64 %zz264, 30
  %cs269 = shl i64 %cz265, 29
  %vs270 = shl i64 %vz266, 28
  %nzor271 = or i64 %ns267, %zs268
  %cvor272 = or i64 %cs269, %vs270
  %nzcv273 = or i64 %nzor271, %cvor272
  %wp274 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv273, ptr %wp274, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc44 word 0x54000620
  %r275.p = getelementptr inbounds i8, ptr %c, i64 272
  %r275 = load i64, ptr %r275.p, align 8, !alias.scope !3, !noalias !4
  %fsh277 = lshr i64 %r275, 30
  %cond276 = trunc i64 %fsh277 to i1
  br i1 %cond276, label %L_8001bbd08, label %L_8001bbc48_ft
L_8001bbc50:
  ; @pc 0x8001bbc50 word 0x8b1001d2
  %r284.p = getelementptr inbounds i8, ptr %c, i64 112
  %r284 = load i64, ptr %r284.p, align 8, !alias.scope !3, !noalias !4
  %r285.p = getelementptr inbounds i8, ptr %c, i64 128
  %r285 = load i64, ptr %r285.p, align 8, !alias.scope !3, !noalias !4
  %t286 = add i64 %r284, %r285
  %wp287 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %t286, ptr %wp287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc54 word 0x8b100220
  %r288.p = getelementptr inbounds i8, ptr %c, i64 136
  %r288 = load i64, ptr %r288.p, align 8, !alias.scope !3, !noalias !4
  %r289.p = getelementptr inbounds i8, ptr %c, i64 128
  %r289 = load i64, ptr %r289.p, align 8, !alias.scope !3, !noalias !4
  %t290 = add i64 %r288, %r289
  %wp291 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t290, ptr %wp291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc58 word 0x385ff241
  %r292.p = getelementptr inbounds i8, ptr %c, i64 144
  %r292 = load i64, ptr %r292.p, align 8, !alias.scope !3, !noalias !4
  %t293 = add i64 %r292, -1
  %gmp294 = inttoptr i64 %t293 to ptr
  %gml295 = load i8, ptr %gmp294, align 1, !alias.scope !4, !noalias !3
  %c296 = zext i8 %gml295 to i64
  %wp297 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c296, ptr %wp297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc5c word 0x385fd002
  %r298.p = getelementptr inbounds i8, ptr %c, i64 0
  %r298 = load i64, ptr %r298.p, align 8, !alias.scope !3, !noalias !4
  %t299 = add i64 %r298, -3
  %gmp300 = inttoptr i64 %t299 to ptr
  %gml301 = load i8, ptr %gmp300, align 1, !alias.scope !4, !noalias !3
  %c302 = zext i8 %gml301 to i64
  %wp303 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c302, ptr %wp303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc60 word 0x6b02003f
  %r304.p = getelementptr inbounds i8, ptr %c, i64 8
  %r304 = load i64, ptr %r304.p, align 8, !alias.scope !3, !noalias !4
  %c305 = trunc i64 %r304 to i32
  %r306.p = getelementptr inbounds i8, ptr %c, i64 16
  %r306 = load i64, ptr %r306.p, align 8, !alias.scope !3, !noalias !4
  %c307 = trunc i64 %r306 to i32
  %t308 = sub i32 %c305, %c307
  %fn309 = icmp slt i32 %t308, 0
  %fz310 = icmp eq i32 %t308, 0
  %fc311 = icmp uge i32 %c305, %c307
  %fx1312 = xor i32 %c305, %c307
  %fx2313 = xor i32 %c305, %t308
  %fva314 = and i32 %fx1312, %fx2313
  %fv315 = icmp slt i32 %fva314, 0
  %nz316 = zext i1 %fn309 to i64
  %zz317 = zext i1 %fz310 to i64
  %cz318 = zext i1 %fc311 to i64
  %vz319 = zext i1 %fv315 to i64
  %ns320 = shl i64 %nz316, 31
  %zs321 = shl i64 %zz317, 30
  %cs322 = shl i64 %cz318, 29
  %vs323 = shl i64 %vz319, 28
  %nzor324 = or i64 %ns320, %zs321
  %cvor325 = or i64 %cs322, %vs323
  %nzcv326 = or i64 %nzor324, %cvor325
  %wp327 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv326, ptr %wp327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc64 word 0x540002e1
  %r328.p = getelementptr inbounds i8, ptr %c, i64 272
  %r328 = load i64, ptr %r328.p, align 8, !alias.scope !3, !noalias !4
  %fsh330 = lshr i64 %r328, 30
  %ftr331 = trunc i64 %fsh330 to i1
  %cond329 = xor i1 %ftr331, true
  br i1 %cond329, label %L_8001bbcc0, label %L_8001bbc68_ft
L_8001bbcc0:
  ; @pc 0x8001bbcc0 word 0x9100054a
  %r493.p = getelementptr inbounds i8, ptr %c, i64 80
  %r493 = load i64, ptr %r493.p, align 8, !alias.scope !3, !noalias !4
  %t494 = add i64 %r493, 1
  %wp495 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t494, ptr %wp495, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcc4 word 0xeb09015f
  %r496.p = getelementptr inbounds i8, ptr %c, i64 80
  %r496 = load i64, ptr %r496.p, align 8, !alias.scope !3, !noalias !4
  %r497.p = getelementptr inbounds i8, ptr %c, i64 72
  %r497 = load i64, ptr %r497.p, align 8, !alias.scope !3, !noalias !4
  %t498 = sub i64 %r496, %r497
  %fn499 = icmp slt i64 %t498, 0
  %fz500 = icmp eq i64 %t498, 0
  %fc501 = icmp uge i64 %r496, %r497
  %fx1502 = xor i64 %r496, %r497
  %fx2503 = xor i64 %r496, %t498
  %fva504 = and i64 %fx1502, %fx2503
  %fv505 = icmp slt i64 %fva504, 0
  %nz506 = zext i1 %fn499 to i64
  %zz507 = zext i1 %fz500 to i64
  %cz508 = zext i1 %fc501 to i64
  %vz509 = zext i1 %fv505 to i64
  %ns510 = shl i64 %nz506, 31
  %zs511 = shl i64 %zz507, 30
  %cs512 = shl i64 %cz508, 29
  %vs513 = shl i64 %vz509, 28
  %nzor514 = or i64 %ns510, %zs511
  %cvor515 = or i64 %cs512, %vs513
  %nzcv516 = or i64 %nzor514, %cvor515
  %wp517 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv516, ptr %wp517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcc8 word 0x54fffb61
  %r518.p = getelementptr inbounds i8, ptr %c, i64 272
  %r518 = load i64, ptr %r518.p, align 8, !alias.scope !3, !noalias !4
  %fsh520 = lshr i64 %r518, 30
  %ftr521 = trunc i64 %fsh520 to i1
  %cond519 = xor i1 %ftr521, true
  br i1 %cond519, label %L_8001bbc34, label %L_8001bbccc
L_8001bbccc:
  ; @pc 0x8001bbccc word 0x2a0503f9
  %r522.p = getelementptr inbounds i8, ptr %c, i64 40
  %r522 = load i64, ptr %r522.p, align 8, !alias.scope !3, !noalias !4
  %c523 = trunc i64 %r522 to i32
  %t524 = or i32 0, %c523
  %c525 = zext i32 %t524 to i64
  %wp526 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c525, ptr %wp526, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcd0 word 0x2a0403f4
  %r527.p = getelementptr inbounds i8, ptr %c, i64 32
  %r527 = load i64, ptr %r527.p, align 8, !alias.scope !3, !noalias !4
  %c528 = trunc i64 %r527 to i32
  %t529 = or i32 0, %c528
  %c530 = zext i32 %t529 to i64
  %wp531 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c530, ptr %wp531, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcd4 word 0x3700aad7
  %r532.p = getelementptr inbounds i8, ptr %c, i64 184
  %r532 = load i64, ptr %r532.p, align 8, !alias.scope !3, !noalias !4
  %t533 = and i64 %r532, 1
  %cmp534 = icmp ne i64 %t533, 0
  br i1 %cmp534, label %L_8001bd22c, label %L_8001bbcd8_ft
L_8001bbcdc:
  ; @pc 0x8001bbcdc word 0x9001bd28
  %wp537 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbce0 word 0xf9455508
  %r538.p = getelementptr inbounds i8, ptr %c, i64 64
  %r538 = load i64, ptr %r538.p, align 8, !alias.scope !3, !noalias !4
  %t539 = add i64 %r538, 2728
  %gmp540 = inttoptr i64 %t539 to ptr
  %gml541 = load i64, ptr %gmp540, align 1, !alias.scope !4, !noalias !3
  %wp542 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml541, ptr %wp542, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbce4 word 0x08dffd08
  %r543.p = getelementptr inbounds i8, ptr %c, i64 64
  %r543 = load i64, ptr %r543.p, align 8, !alias.scope !3, !noalias !4
  %atp544 = inttoptr i64 %r543 to ptr
  %lda545 = load atomic i8, ptr %atp544 acquire, align 1, !alias.scope !4, !noalias !3
  %c546 = zext i8 %lda545 to i64
  %wp547 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c546, ptr %wp547, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbce8 word 0x3600ac48
  %r548.p = getelementptr inbounds i8, ptr %c, i64 64
  %r548 = load i64, ptr %r548.p, align 8, !alias.scope !3, !noalias !4
  %t549 = and i64 %r548, 1
  %cmp550 = icmp eq i64 %t549, 0
  br i1 %cmp550, label %L_8001bd270, label %L_8001bbcec_ft
L_8001bbcf8:
  ; @pc 0x8001bbcf8 word 0x2a1f03fa
  %t560 = or i32 0, 0
  %c561 = zext i32 %t560 to i64
  %wp562 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c561, ptr %wp562, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcfc word 0x2a1403e4
  %r563.p = getelementptr inbounds i8, ptr %c, i64 160
  %r563 = load i64, ptr %r563.p, align 8, !alias.scope !3, !noalias !4
  %c564 = trunc i64 %r563 to i32
  %t565 = or i32 0, %c564
  %c566 = zext i32 %t565 to i64
  %wp567 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c566, ptr %wp567, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd00 word 0x2a1903e5
  %r568.p = getelementptr inbounds i8, ptr %c, i64 200
  %r568 = load i64, ptr %r568.p, align 8, !alias.scope !3, !noalias !4
  %c569 = trunc i64 %r568 to i32
  %t570 = or i32 0, %c569
  %c571 = zext i32 %t570 to i64
  %wp572 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c571, ptr %wp572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd04 word 0x14000012
  br label %L_8001bbd4c
L_8001bbd08:
  ; @pc 0x8001bbd08 word 0x8b0a1174
  %r573.p = getelementptr inbounds i8, ptr %c, i64 88
  %r573 = load i64, ptr %r573.p, align 8, !alias.scope !3, !noalias !4
  %r574.p = getelementptr inbounds i8, ptr %c, i64 80
  %r574 = load i64, ptr %r574.p, align 8, !alias.scope !3, !noalias !4
  %t575 = shl i64 %r574, 4
  %t576 = add i64 %r573, %t575
  %wp577 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %t576, ptr %wp577, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd0c word 0xaa1403fc
  %r578.p = getelementptr inbounds i8, ptr %c, i64 160
  %r578 = load i64, ptr %r578.p, align 8, !alias.scope !3, !noalias !4
  %t579 = or i64 0, %r578
  %wp580 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t579, ptr %wp580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd10 word 0xb8408f9a
  %r581.p = getelementptr inbounds i8, ptr %c, i64 224
  %r581 = load i64, ptr %r581.p, align 8, !alias.scope !3, !noalias !4
  %t582 = add i64 %r581, 8
  %gmp583 = inttoptr i64 %t582 to ptr
  %gml584 = load i32, ptr %gmp583, align 1, !alias.scope !4, !noalias !3
  %c585 = zext i32 %gml584 to i64
  %wp586 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t582, ptr %wp586, align 8, !alias.scope !3, !noalias !4
  %wp587 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c585, ptr %wp587, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd14 word 0xaa1c03f8
  %r588.p = getelementptr inbounds i8, ptr %c, i64 224
  %r588 = load i64, ptr %r588.p, align 8, !alias.scope !3, !noalias !4
  %t589 = or i64 0, %r588
  %wp590 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t589, ptr %wp590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd18 word 0x78dfcf17
  %r591.p = getelementptr inbounds i8, ptr %c, i64 192
  %r591 = load i64, ptr %r591.p, align 8, !alias.scope !3, !noalias !4
  %t592 = add i64 %r591, -4
  %gmp593 = inttoptr i64 %t592 to ptr
  %gml594 = load i16, ptr %gmp593, align 1, !alias.scope !4, !noalias !3
  %c595 = sext i16 %gml594 to i32
  %wp596 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %t592, ptr %wp596, align 8, !alias.scope !3, !noalias !4
  %c597 = zext i32 %c595 to i64
  %wp598 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c597, ptr %wp598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd1c word 0x0a05035b
  %r599.p = getelementptr inbounds i8, ptr %c, i64 40
  %r599 = load i64, ptr %r599.p, align 8, !alias.scope !3, !noalias !4
  %c600 = trunc i64 %r599 to i32
  %r601.p = getelementptr inbounds i8, ptr %c, i64 208
  %r601 = load i64, ptr %r601.p, align 8, !alias.scope !3, !noalias !4
  %c602 = trunc i64 %r601 to i32
  %t603 = and i32 %c602, %c600
  %c604 = zext i32 %t603 to i64
  %wp605 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c604, ptr %wp605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd20 word 0x36f80437
  %r606.p = getelementptr inbounds i8, ptr %c, i64 184
  %r606 = load i64, ptr %r606.p, align 8, !alias.scope !3, !noalias !4
  %t607 = and i64 %r606, 2147483648
  %cmp608 = icmp eq i64 %t607, 0
  br i1 %cmp608, label %L_8001bbda4, label %L_8001bbd24
L_8001bbd24:
  ; @pc 0x8001bbd24 word 0x529ff388
  %c609 = zext i32 65436 to i64
  %wp610 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c609, ptr %wp610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd28 word 0x6b37211f
  %r611.p = getelementptr inbounds i8, ptr %c, i64 64
  %r611 = load i64, ptr %r611.p, align 8, !alias.scope !3, !noalias !4
  %c612 = trunc i64 %r611 to i32
  %r613.p = getelementptr inbounds i8, ptr %c, i64 184
  %r613 = load i64, ptr %r613.p, align 8, !alias.scope !3, !noalias !4
  %c614 = trunc i64 %r613 to i16
  %c615 = zext i16 %c614 to i64
  %c616 = trunc i64 %c615 to i32
  %t617 = sub i32 %c612, %c616
  %fn618 = icmp slt i32 %t617, 0
  %fz619 = icmp eq i32 %t617, 0
  %fc620 = icmp uge i32 %c612, %c616
  %fx1621 = xor i32 %c612, %c616
  %fx2622 = xor i32 %c612, %t617
  %fva623 = and i32 %fx1621, %fx2622
  %fv624 = icmp slt i32 %fva623, 0
  %nz625 = zext i1 %fn618 to i64
  %zz626 = zext i1 %fz619 to i64
  %cz627 = zext i1 %fc620 to i64
  %vz628 = zext i1 %fv624 to i64
  %ns629 = shl i64 %nz625, 31
  %zs630 = shl i64 %zz626, 30
  %cs631 = shl i64 %cz627, 29
  %vs632 = shl i64 %vz628, 28
  %nzor633 = or i64 %ns629, %zs630
  %cvor634 = or i64 %cs631, %vs632
  %nzcv635 = or i64 %nzor633, %cvor634
  %wp636 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv635, ptr %wp636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd2c word 0x54000d02
  %r637.p = getelementptr inbounds i8, ptr %c, i64 272
  %r637 = load i64, ptr %r637.p, align 8, !alias.scope !3, !noalias !4
  %fsh639 = lshr i64 %r637, 29
  %cond638 = trunc i64 %fsh639 to i1
  br i1 %cond638, label %L_8001bbecc, label %L_8001bbd30
L_8001bbd30:
  ; @pc 0x8001bbd30 word 0xb9400388
  %r640.p = getelementptr inbounds i8, ptr %c, i64 224
  %r640 = load i64, ptr %r640.p, align 8, !alias.scope !3, !noalias !4
  %gmp641 = inttoptr i64 %r640 to ptr
  %gml642 = load i32, ptr %gmp641, align 1, !alias.scope !4, !noalias !3
  %c643 = zext i32 %gml642 to i64
  %wp644 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c643, ptr %wp644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd34 word 0x2a1f03f7
  %t645 = or i32 0, 0
  %c646 = zext i32 %t645 to i64
  %wp647 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c646, ptr %wp647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd38 word 0x9100329c
  %r648.p = getelementptr inbounds i8, ptr %c, i64 160
  %r648 = load i64, ptr %r648.p, align 8, !alias.scope !3, !noalias !4
  %t649 = add i64 %r648, 12
  %wp650 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t649, ptr %wp650, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd3c word 0x6b05037f
  %r651.p = getelementptr inbounds i8, ptr %c, i64 216
  %r651 = load i64, ptr %r651.p, align 8, !alias.scope !3, !noalias !4
  %c652 = trunc i64 %r651 to i32
  %r653.p = getelementptr inbounds i8, ptr %c, i64 40
  %r653 = load i64, ptr %r653.p, align 8, !alias.scope !3, !noalias !4
  %c654 = trunc i64 %r653 to i32
  %t655 = sub i32 %c652, %c654
  %fn656 = icmp slt i32 %t655, 0
  %fz657 = icmp eq i32 %t655, 0
  %fc658 = icmp uge i32 %c652, %c654
  %fx1659 = xor i32 %c652, %c654
  %fx2660 = xor i32 %c652, %t655
  %fva661 = and i32 %fx1659, %fx2660
  %fv662 = icmp slt i32 %fva661, 0
  %nz663 = zext i1 %fn656 to i64
  %zz664 = zext i1 %fz657 to i64
  %cz665 = zext i1 %fc658 to i64
  %vz666 = zext i1 %fv662 to i64
  %ns667 = shl i64 %nz663, 31
  %zs668 = shl i64 %zz664, 30
  %cs669 = shl i64 %cz665, 29
  %vs670 = shl i64 %vz666, 28
  %nzor671 = or i64 %ns667, %zs668
  %cvor672 = or i64 %cs669, %vs670
  %nzcv673 = or i64 %nzor671, %cvor672
  %wp674 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv673, ptr %wp674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd40 word 0x12077518
  %r675.p = getelementptr inbounds i8, ptr %c, i64 64
  %r675 = load i64, ptr %r675.p, align 8, !alias.scope !3, !noalias !4
  %c676 = trunc i64 %r675 to i32
  %t677 = and i32 %c676, -25165825
  %c678 = zext i32 %t677 to i64
  %wp679 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c678, ptr %wp679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd44 word 0x54000040
  %r680.p = getelementptr inbounds i8, ptr %c, i64 272
  %r680 = load i64, ptr %r680.p, align 8, !alias.scope !3, !noalias !4
  %fsh682 = lshr i64 %r680, 30
  %cond681 = trunc i64 %fsh682 to i1
  br i1 %cond681, label %L_8001bbd4c, label %L_8001bbd48_ft
L_8001bbd4c:
  ; @pc 0x8001bbd4c word 0xf9400274
  %r686.p = getelementptr inbounds i8, ptr %c, i64 152
  %r686 = load i64, ptr %r686.p, align 8, !alias.scope !3, !noalias !4
  %gmp687 = inttoptr i64 %r686 to ptr
  %gml688 = load i64, ptr %gmp687, align 1, !alias.scope !4, !noalias !3
  %wp689 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml688, ptr %wp689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd50 word 0x710002ff
  %r690.p = getelementptr inbounds i8, ptr %c, i64 184
  %r690 = load i64, ptr %r690.p, align 8, !alias.scope !3, !noalias !4
  %c691 = trunc i64 %r690 to i32
  %t692 = sub i32 %c691, 0
  %fn693 = icmp slt i32 %t692, 0
  %fz694 = icmp eq i32 %t692, 0
  %fc695 = icmp uge i32 %c691, 0
  %fx1696 = xor i32 %c691, 0
  %fx2697 = xor i32 %c691, %t692
  %fva698 = and i32 %fx1696, %fx2697
  %fv699 = icmp slt i32 %fva698, 0
  %nz700 = zext i1 %fn693 to i64
  %zz701 = zext i1 %fz694 to i64
  %cz702 = zext i1 %fc695 to i64
  %vz703 = zext i1 %fv699 to i64
  %ns704 = shl i64 %nz700, 31
  %zs705 = shl i64 %zz701, 30
  %cs706 = shl i64 %cz702, 29
  %vs707 = shl i64 %vz703, 28
  %nzor708 = or i64 %ns704, %zs705
  %cvor709 = or i64 %cs706, %vs707
  %nzcv710 = or i64 %nzor708, %cvor709
  %wp711 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv710, ptr %wp711, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd54 word 0x927ef788
  %r712.p = getelementptr inbounds i8, ptr %c, i64 224
  %r712 = load i64, ptr %r712.p, align 8, !alias.scope !3, !noalias !4
  %t713 = and i64 %r712, -4
  %wp714 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t713, ptr %wp714, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd58 word 0x5318634a
  %r715.p = getelementptr inbounds i8, ptr %c, i64 208
  %r715 = load i64, ptr %r715.p, align 8, !alias.scope !3, !noalias !4
  %c716 = trunc i64 %r715 to i32
  %ror717 = call i32 @llvm.fshr.i32(i32 %c716, i32 %c716, i32 24)
  %t718 = and i32 %ror717, 1
  %c719 = zext i32 %t718 to i64
  %wp720 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c719, ptr %wp720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd5c word 0x1a9f07f7
  %t721 = add i32 0, 1
  %r722.p = getelementptr inbounds i8, ptr %c, i64 272
  %r722 = load i64, ptr %r722.p, align 8, !alias.scope !3, !noalias !4
  %fsh724 = lshr i64 %r722, 30
  %cond723 = trunc i64 %fsh724 to i1
  %sel725 = select i1 %cond723, i32 0, i32 %t721
  %c726 = zext i32 %sel725 to i64
  %wp727 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c726, ptr %wp727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd60 word 0x0a050309
  %r728.p = getelementptr inbounds i8, ptr %c, i64 40
  %r728 = load i64, ptr %r728.p, align 8, !alias.scope !3, !noalias !4
  %c729 = trunc i64 %r728 to i32
  %r730.p = getelementptr inbounds i8, ptr %c, i64 192
  %r730 = load i64, ptr %r730.p, align 8, !alias.scope !3, !noalias !4
  %c731 = trunc i64 %r730 to i32
  %t732 = and i32 %c731, %c729
  %c733 = zext i32 %t732 to i64
  %wp734 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c733, ptr %wp734, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd64 word 0xaa0a0108
  %r735.p = getelementptr inbounds i8, ptr %c, i64 80
  %r735 = load i64, ptr %r735.p, align 8, !alias.scope !3, !noalias !4
  %r736.p = getelementptr inbounds i8, ptr %c, i64 64
  %r736 = load i64, ptr %r736.p, align 8, !alias.scope !3, !noalias !4
  %t737 = or i64 %r736, %r735
  %wp738 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t737, ptr %wp738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd68 word 0xf9000268
  %r739.p = getelementptr inbounds i8, ptr %c, i64 152
  %r739 = load i64, ptr %r739.p, align 8, !alias.scope !3, !noalias !4
  %r740.p = getelementptr inbounds i8, ptr %c, i64 64
  %r740 = load i64, ptr %r740.p, align 8, !alias.scope !3, !noalias !4
  %gmp741 = inttoptr i64 %r739 to ptr
  store i64 %r740, ptr %gmp741, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbd6c word 0x36b8007a
  %r742.p = getelementptr inbounds i8, ptr %c, i64 208
  %r742 = load i64, ptr %r742.p, align 8, !alias.scope !3, !noalias !4
  %t743 = and i64 %r742, 8388608
  %cmp744 = icmp eq i64 %t743, 0
  br i1 %cmp744, label %L_8001bbd78, label %L_8001bbd70_ft
L_8001bbd78:
  ; @pc 0x8001bbd78 word 0x6b05013f
  %r751.p = getelementptr inbounds i8, ptr %c, i64 72
  %r751 = load i64, ptr %r751.p, align 8, !alias.scope !3, !noalias !4
  %c752 = trunc i64 %r751 to i32
  %r753.p = getelementptr inbounds i8, ptr %c, i64 40
  %r753 = load i64, ptr %r753.p, align 8, !alias.scope !3, !noalias !4
  %c754 = trunc i64 %r753 to i32
  %t755 = sub i32 %c752, %c754
  %fn756 = icmp slt i32 %t755, 0
  %fz757 = icmp eq i32 %t755, 0
  %fc758 = icmp uge i32 %c752, %c754
  %fx1759 = xor i32 %c752, %c754
  %fx2760 = xor i32 %c752, %t755
  %fva761 = and i32 %fx1759, %fx2760
  %fv762 = icmp slt i32 %fva761, 0
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
  ; @pc 0x8001bbd7c word 0x540010a0
  %r775.p = getelementptr inbounds i8, ptr %c, i64 272
  %r775 = load i64, ptr %r775.p, align 8, !alias.scope !3, !noalias !4
  %fsh777 = lshr i64 %r775, 30
  %cond776 = trunc i64 %fsh777 to i1
  br i1 %cond776, label %L_8001bbf90, label %L_8001bbd80
L_8001bbd80:
  ; @pc 0x8001bbd80 word 0x520002e0
  %r778.p = getelementptr inbounds i8, ptr %c, i64 184
  %r778 = load i64, ptr %r778.p, align 8, !alias.scope !3, !noalias !4
  %c779 = trunc i64 %r778 to i32
  %t780 = xor i32 %c779, 1
  %c781 = zext i32 %t780 to i64
  %wp782 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c781, ptr %wp782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd84 word 0xa9584ff4
  %r783.p = getelementptr inbounds i8, ptr %c, i64 256
  %r783 = load i64, ptr %r783.p, align 8, !alias.scope !3, !noalias !4
  %t784 = add i64 %r783, 384
  %t785 = add i64 %t784, 8
  %gmp786 = inttoptr i64 %t784 to ptr
  %gml787 = load i64, ptr %gmp786, align 1, !alias.scope !4, !noalias !3
  %gmp788 = inttoptr i64 %t785 to ptr
  %gml789 = load i64, ptr %gmp788, align 1, !alias.scope !4, !noalias !3
  %wp790 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml787, ptr %wp790, align 8, !alias.scope !3, !noalias !4
  %wp791 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %gml789, ptr %wp791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd88 word 0xa95757f6
  %r792.p = getelementptr inbounds i8, ptr %c, i64 256
  %r792 = load i64, ptr %r792.p, align 8, !alias.scope !3, !noalias !4
  %t793 = add i64 %r792, 368
  %t794 = add i64 %t793, 8
  %gmp795 = inttoptr i64 %t793 to ptr
  %gml796 = load i64, ptr %gmp795, align 1, !alias.scope !4, !noalias !3
  %gmp797 = inttoptr i64 %t794 to ptr
  %gml798 = load i64, ptr %gmp797, align 1, !alias.scope !4, !noalias !3
  %wp799 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %gml796, ptr %wp799, align 8, !alias.scope !3, !noalias !4
  %wp800 = getelementptr inbounds i8, ptr %c, i64 168
  store i64 %gml798, ptr %wp800, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd8c word 0xa9565ff8
  %r801.p = getelementptr inbounds i8, ptr %c, i64 256
  %r801 = load i64, ptr %r801.p, align 8, !alias.scope !3, !noalias !4
  %t802 = add i64 %r801, 352
  %t803 = add i64 %t802, 8
  %gmp804 = inttoptr i64 %t802 to ptr
  %gml805 = load i64, ptr %gmp804, align 1, !alias.scope !4, !noalias !3
  %gmp806 = inttoptr i64 %t803 to ptr
  %gml807 = load i64, ptr %gmp806, align 1, !alias.scope !4, !noalias !3
  %wp808 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %gml805, ptr %wp808, align 8, !alias.scope !3, !noalias !4
  %wp809 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml807, ptr %wp809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd90 word 0xa95567fa
  %r810.p = getelementptr inbounds i8, ptr %c, i64 256
  %r810 = load i64, ptr %r810.p, align 8, !alias.scope !3, !noalias !4
  %t811 = add i64 %r810, 336
  %t812 = add i64 %t811, 8
  %gmp813 = inttoptr i64 %t811 to ptr
  %gml814 = load i64, ptr %gmp813, align 1, !alias.scope !4, !noalias !3
  %gmp815 = inttoptr i64 %t812 to ptr
  %gml816 = load i64, ptr %gmp815, align 1, !alias.scope !4, !noalias !3
  %wp817 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %gml814, ptr %wp817, align 8, !alias.scope !3, !noalias !4
  %wp818 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %gml816, ptr %wp818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd94 word 0xa9546ffc
  %r819.p = getelementptr inbounds i8, ptr %c, i64 256
  %r819 = load i64, ptr %r819.p, align 8, !alias.scope !3, !noalias !4
  %t820 = add i64 %r819, 320
  %t821 = add i64 %t820, 8
  %gmp822 = inttoptr i64 %t820 to ptr
  %gml823 = load i64, ptr %gmp822, align 1, !alias.scope !4, !noalias !3
  %gmp824 = inttoptr i64 %t821 to ptr
  %gml825 = load i64, ptr %gmp824, align 1, !alias.scope !4, !noalias !3
  %wp826 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml823, ptr %wp826, align 8, !alias.scope !3, !noalias !4
  %wp827 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %gml825, ptr %wp827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd98 word 0xa9537bfd
  %r828.p = getelementptr inbounds i8, ptr %c, i64 256
  %r828 = load i64, ptr %r828.p, align 8, !alias.scope !3, !noalias !4
  %t829 = add i64 %r828, 304
  %t830 = add i64 %t829, 8
  %gmp831 = inttoptr i64 %t829 to ptr
  %gml832 = load i64, ptr %gmp831, align 1, !alias.scope !4, !noalias !3
  %gmp833 = inttoptr i64 %t830 to ptr
  %gml834 = load i64, ptr %gmp833, align 1, !alias.scope !4, !noalias !3
  %wp835 = getelementptr inbounds i8, ptr %c, i64 232
  store i64 %gml832, ptr %wp835, align 8, !alias.scope !3, !noalias !4
  %wp836 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 %gml834, ptr %wp836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd9c word 0x910643ff
  %r837.p = getelementptr inbounds i8, ptr %c, i64 256
  %r837 = load i64, ptr %r837.p, align 8, !alias.scope !3, !noalias !4
  %t838 = add i64 %r837, 400
  %wp839 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %t838, ptr %wp839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbda0 word 0xd65f03c0
  ret void
L_8001bbda4:
  ; @pc 0x8001bbda4 word 0xf94006a8
  %r840.p = getelementptr inbounds i8, ptr %c, i64 168
  %r840 = load i64, ptr %r840.p, align 8, !alias.scope !3, !noalias !4
  %t841 = add i64 %r840, 8
  %gmp842 = inttoptr i64 %t841 to ptr
  %gml843 = load i64, ptr %gmp842, align 1, !alias.scope !4, !noalias !3
  %wp844 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml843, ptr %wp844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbda8 word 0x7941b909
  %r845.p = getelementptr inbounds i8, ptr %c, i64 64
  %r845 = load i64, ptr %r845.p, align 8, !alias.scope !3, !noalias !4
  %t846 = add i64 %r845, 220
  %gmp847 = inttoptr i64 %t846 to ptr
  %gml848 = load i16, ptr %gmp847, align 1, !alias.scope !4, !noalias !3
  %c849 = zext i16 %gml848 to i64
  %wp850 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c849, ptr %wp850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdac word 0x350032c9
  %r851.p = getelementptr inbounds i8, ptr %c, i64 72
  %r851 = load i64, ptr %r851.p, align 8, !alias.scope !3, !noalias !4
  %c852 = trunc i64 %r851 to i32
  %cmp853 = icmp ne i32 %c852, 0
  br i1 %cmp853, label %L_8001bc404, label %L_8001bbdb0_ft
L_8001bbdc4:
  ; @pc 0x8001bbdc4 word 0x9001bd28
  %wp909 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp909, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdc8 word 0xf9452d08
  %r910.p = getelementptr inbounds i8, ptr %c, i64 64
  %r910 = load i64, ptr %r910.p, align 8, !alias.scope !3, !noalias !4
  %t911 = add i64 %r910, 2648
  %gmp912 = inttoptr i64 %t911 to ptr
  %gml913 = load i64, ptr %gmp912, align 1, !alias.scope !4, !noalias !3
  %wp914 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml913, ptr %wp914, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdcc word 0x08dffd08
  %r915.p = getelementptr inbounds i8, ptr %c, i64 64
  %r915 = load i64, ptr %r915.p, align 8, !alias.scope !3, !noalias !4
  %atp916 = inttoptr i64 %r915 to ptr
  %lda917 = load atomic i8, ptr %atp916 acquire, align 1, !alias.scope !4, !noalias !3
  %c918 = zext i8 %lda917 to i64
  %wp919 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c918, ptr %wp919, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdd0 word 0xf90007ea
  %r920.p = getelementptr inbounds i8, ptr %c, i64 256
  %r920 = load i64, ptr %r920.p, align 8, !alias.scope !3, !noalias !4
  %t921 = add i64 %r920, 8
  %r922.p = getelementptr inbounds i8, ptr %c, i64 80
  %r922 = load i64, ptr %r922.p, align 8, !alias.scope !3, !noalias !4
  %gmp923 = inttoptr i64 %t921 to ptr
  store i64 %r922, ptr %gmp923, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbdd4 word 0x36004e68
  %r924.p = getelementptr inbounds i8, ptr %c, i64 64
  %r924 = load i64, ptr %r924.p, align 8, !alias.scope !3, !noalias !4
  %t925 = and i64 %r924, 1
  %cmp926 = icmp eq i64 %t925, 0
  br i1 %cmp926, label %L_8001bc7a0, label %L_8001bbdd8
L_8001bbdd8:
  ; @pc 0x8001bbdd8 word 0xb001bded
  %wp927 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbddc word 0xb001bdec
  %wp928 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbde0 word 0xf941b5ad
  %r929.p = getelementptr inbounds i8, ptr %c, i64 104
  %r929 = load i64, ptr %r929.p, align 8, !alias.scope !3, !noalias !4
  %t930 = add i64 %r929, 872
  %gmp931 = inttoptr i64 %t930 to ptr
  %gml932 = load i64, ptr %gmp931, align 1, !alias.scope !4, !noalias !3
  %wp933 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml932, ptr %wp933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbde4 word 0xf001bc8b
  %wp934 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp934, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbde8 word 0xf001bc89
  %wp935 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp935, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdec word 0xf941bd8c
  %r936.p = getelementptr inbounds i8, ptr %c, i64 96
  %r936 = load i64, ptr %r936.p, align 8, !alias.scope !3, !noalias !4
  %t937 = add i64 %r936, 888
  %gmp938 = inttoptr i64 %t937 to ptr
  %gml939 = load i64, ptr %gmp938, align 1, !alias.scope !4, !noalias !3
  %wp940 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml939, ptr %wp940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdf0 word 0xf943016b
  %r941.p = getelementptr inbounds i8, ptr %c, i64 88
  %r941 = load i64, ptr %r941.p, align 8, !alias.scope !3, !noalias !4
  %t942 = add i64 %r941, 1536
  %gmp943 = inttoptr i64 %t942 to ptr
  %gml944 = load i64, ptr %gmp943, align 1, !alias.scope !4, !noalias !3
  %wp945 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml944, ptr %wp945, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdf4 word 0xf9430d29
  %r946.p = getelementptr inbounds i8, ptr %c, i64 72
  %r946 = load i64, ptr %r946.p, align 8, !alias.scope !3, !noalias !4
  %t947 = add i64 %r946, 1560
  %gmp948 = inttoptr i64 %t947 to ptr
  %gml949 = load i64, ptr %gmp948, align 1, !alias.scope !4, !noalias !3
  %wp950 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml949, ptr %wp950, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdf8 word 0xb90017fb
  %r951.p = getelementptr inbounds i8, ptr %c, i64 256
  %r951 = load i64, ptr %r951.p, align 8, !alias.scope !3, !noalias !4
  %t952 = add i64 %r951, 20
  %r953.p = getelementptr inbounds i8, ptr %c, i64 216
  %r953 = load i64, ptr %r953.p, align 8, !alias.scope !3, !noalias !4
  %c954 = trunc i64 %r953 to i32
  %gmp955 = inttoptr i64 %t952 to ptr
  store i32 %c954, ptr %gmp955, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbdfc word 0xb400170a
  %r956.p = getelementptr inbounds i8, ptr %c, i64 80
  %r956 = load i64, ptr %r956.p, align 8, !alias.scope !3, !noalias !4
  %cmp957 = icmp eq i64 %r956, 0
  br i1 %cmp957, label %L_8001bc0dc, label %L_8001bbe00_ft
L_8001bbe18:
  ; @pc 0x8001bbe18 word 0x08dffd68
  %r1000.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1000 = load i64, ptr %r1000.p, align 8, !alias.scope !3, !noalias !4
  %atp1001 = inttoptr i64 %r1000 to ptr
  %lda1002 = load atomic i8, ptr %atp1001 acquire, align 1, !alias.scope !4, !noalias !3
  %c1003 = zext i8 %lda1002 to i64
  %wp1004 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1003, ptr %wp1004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe1c word 0x36007cc8
  %r1005.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1005 = load i64, ptr %r1005.p, align 8, !alias.scope !3, !noalias !4
  %t1006 = and i64 %r1005, 1
  %cmp1007 = icmp eq i64 %t1006, 0
  br i1 %cmp1007, label %L_8001bcdb4, label %L_8001bbe20
L_8001bbe20:
  ; @pc 0x8001bbe20 word 0x08dffd28
  %r1008.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1008 = load i64, ptr %r1008.p, align 8, !alias.scope !3, !noalias !4
  %atp1009 = inttoptr i64 %r1008 to ptr
  %lda1010 = load atomic i8, ptr %atp1009 acquire, align 1, !alias.scope !4, !noalias !3
  %c1011 = zext i8 %lda1010 to i64
  %wp1012 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1011, ptr %wp1012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe24 word 0x370015c8
  %r1013.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1013 = load i64, ptr %r1013.p, align 8, !alias.scope !3, !noalias !4
  %t1014 = and i64 %r1013, 1
  %cmp1015 = icmp ne i64 %t1014, 0
  br i1 %cmp1015, label %L_8001bc0dc, label %L_8001bbe28_ft
L_8001bbecc:
  ; @pc 0x8001bbecc word 0x79400e88
  %r1150.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1150 = load i64, ptr %r1150.p, align 8, !alias.scope !3, !noalias !4
  %t1151 = add i64 %r1150, 6
  %gmp1152 = inttoptr i64 %t1151 to ptr
  %gml1153 = load i16, ptr %gmp1152, align 1, !alias.scope !4, !noalias !3
  %c1154 = zext i16 %gml1153 to i64
  %wp1155 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1154, ptr %wp1155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbed0 word 0x6b05037f
  %r1156.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1156 = load i64, ptr %r1156.p, align 8, !alias.scope !3, !noalias !4
  %c1157 = trunc i64 %r1156 to i32
  %r1158.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1158 = load i64, ptr %r1158.p, align 8, !alias.scope !3, !noalias !4
  %c1159 = trunc i64 %r1158 to i32
  %t1160 = sub i32 %c1157, %c1159
  %fn1161 = icmp slt i32 %t1160, 0
  %fz1162 = icmp eq i32 %t1160, 0
  %fc1163 = icmp uge i32 %c1157, %c1159
  %fx11164 = xor i32 %c1157, %c1159
  %fx21165 = xor i32 %c1157, %t1160
  %fva1166 = and i32 %fx11164, %fx21165
  %fv1167 = icmp slt i32 %fva1166, 0
  %nz1168 = zext i1 %fn1161 to i64
  %zz1169 = zext i1 %fz1162 to i64
  %cz1170 = zext i1 %fc1163 to i64
  %vz1171 = zext i1 %fv1167 to i64
  %ns1172 = shl i64 %nz1168, 31
  %zs1173 = shl i64 %zz1169, 30
  %cs1174 = shl i64 %cz1170, 29
  %vs1175 = shl i64 %vz1171, 28
  %nzor1176 = or i64 %ns1172, %zs1173
  %cvor1177 = or i64 %cs1174, %vs1175
  %nzcv1178 = or i64 %nzor1176, %cvor1177
  %wp1179 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1178, ptr %wp1179, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbed4 word 0x1200391a
  %r1180.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1180 = load i64, ptr %r1180.p, align 8, !alias.scope !3, !noalias !4
  %c1181 = trunc i64 %r1180 to i32
  %t1182 = and i32 %c1181, 32767
  %c1183 = zext i32 %t1182 to i64
  %wp1184 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1183, ptr %wp1184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbed8 word 0x540039a0
  %r1185.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1185 = load i64, ptr %r1185.p, align 8, !alias.scope !3, !noalias !4
  %fsh1187 = lshr i64 %r1185, 30
  %cond1186 = trunc i64 %fsh1187 to i1
  br i1 %cond1186, label %L_8001bc60c, label %L_8001bbedc_ft
L_8001bbee4:
  ; @pc 0x8001bbee4 word 0xf001c808
  %wp1194 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp1194, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbee8 word 0x91142108
  %r1195.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1195 = load i64, ptr %r1195.p, align 8, !alias.scope !3, !noalias !4
  %t1196 = add i64 %r1195, 1288
  %wp1197 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1196, ptr %wp1197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbeec word 0xf9400274
  %r1198.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1198 = load i64, ptr %r1198.p, align 8, !alias.scope !3, !noalias !4
  %gmp1199 = inttoptr i64 %r1198 to ptr
  %gml1200 = load i64, ptr %gmp1199, align 1, !alias.scope !4, !noalias !3
  %wp1201 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1200, ptr %wp1201, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbef0 word 0x08dffd08
  %r1202.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1202 = load i64, ptr %r1202.p, align 8, !alias.scope !3, !noalias !4
  %atp1203 = inttoptr i64 %r1202 to ptr
  %lda1204 = load atomic i8, ptr %atp1203 acquire, align 1, !alias.scope !4, !noalias !3
  %c1205 = zext i8 %lda1204 to i64
  %wp1206 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1205, ptr %wp1206, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbef4 word 0x36003588
  %r1207.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1207 = load i64, ptr %r1207.p, align 8, !alias.scope !3, !noalias !4
  %t1208 = and i64 %r1207, 1
  %cmp1209 = icmp eq i64 %t1208, 0
  br i1 %cmp1209, label %L_8001bc5a4, label %L_8001bbef8
L_8001bbef8:
  ; @pc 0x8001bbef8 word 0x377853b7
  %r1210.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1210 = load i64, ptr %r1210.p, align 8, !alias.scope !3, !noalias !4
  %t1211 = and i64 %r1210, 32768
  %cmp1212 = icmp ne i64 %t1211, 0
  br i1 %cmp1212, label %L_8001bc96c, label %L_8001bbefc_ft
L_8001bbf50:
  ; @pc 0x8001bbf50 word 0x35003659
  %r1361.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1361 = load i64, ptr %r1361.p, align 8, !alias.scope !3, !noalias !4
  %c1362 = trunc i64 %r1361 to i32
  %cmp1363 = icmp ne i32 %c1362, 0
  br i1 %cmp1363, label %L_8001bc618, label %L_8001bbf54_ft
L_8001bbf58:
  ; @pc 0x8001bbf58 word 0xf9400ae0
  %r1375.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1375 = load i64, ptr %r1375.p, align 8, !alias.scope !3, !noalias !4
  %t1376 = add i64 %r1375, 16
  %gmp1377 = inttoptr i64 %t1376 to ptr
  %gml1378 = load i64, ptr %gmp1377, align 1, !alias.scope !4, !noalias !3
  %wp1379 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1378, ptr %wp1379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf5c word 0xb4000100
  %r1380.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1380 = load i64, ptr %r1380.p, align 8, !alias.scope !3, !noalias !4
  %cmp1381 = icmp eq i64 %r1380, 0
  br i1 %cmp1381, label %L_8001bbf7c, label %L_8001bbf60_ft
L_8001bbf7c:
  ; @pc 0x8001bbf7c word 0x8b3ac008
  %r1428.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1428 = load i64, ptr %r1428.p, align 8, !alias.scope !3, !noalias !4
  %r1429.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1429 = load i64, ptr %r1429.p, align 8, !alias.scope !3, !noalias !4
  %c1430 = trunc i64 %r1429 to i32
  %c1431 = sext i32 %c1430 to i64
  %t1432 = add i64 %r1428, %c1431
  %wp1433 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1432, ptr %wp1433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf80 word 0x2a1f03f7
  %t1434 = or i32 0, 0
  %c1435 = zext i32 %t1434 to i64
  %wp1436 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1435, ptr %wp1436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf84 word 0x927ef508
  %r1437.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1437 = load i64, ptr %r1437.p, align 8, !alias.scope !3, !noalias !4
  %t1438 = and i64 %r1437, -4
  %wp1439 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1438, ptr %wp1439, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf88 word 0xf9000268
  %r1440.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1440 = load i64, ptr %r1440.p, align 8, !alias.scope !3, !noalias !4
  %r1441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1441 = load i64, ptr %r1441.p, align 8, !alias.scope !3, !noalias !4
  %gmp1442 = inttoptr i64 %r1440 to ptr
  store i64 %r1441, ptr %gmp1442, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbf8c word 0x3607efb9
  %r1443.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1443 = load i64, ptr %r1443.p, align 8, !alias.scope !3, !noalias !4
  %t1444 = and i64 %r1443, 1
  %cmp1445 = icmp eq i64 %t1444, 0
  br i1 %cmp1445, label %L_8001bbd80, label %L_8001bbf90
L_8001bbf90:
  ; @pc 0x8001bbf90 word 0xf1000e9f
  %r1446.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1446 = load i64, ptr %r1446.p, align 8, !alias.scope !3, !noalias !4
  %t1447 = sub i64 %r1446, 3
  %fn1448 = icmp slt i64 %t1447, 0
  %fz1449 = icmp eq i64 %t1447, 0
  %fc1450 = icmp uge i64 %r1446, 3
  %fx11451 = xor i64 %r1446, 3
  %fx21452 = xor i64 %r1446, %t1447
  %fva1453 = and i64 %fx11451, %fx21452
  %fv1454 = icmp slt i64 %fva1453, 0
  %nz1455 = zext i1 %fn1448 to i64
  %zz1456 = zext i1 %fz1449 to i64
  %cz1457 = zext i1 %fc1450 to i64
  %vz1458 = zext i1 %fv1454 to i64
  %ns1459 = shl i64 %nz1455, 31
  %zs1460 = shl i64 %zz1456, 30
  %cs1461 = shl i64 %cz1457, 29
  %vs1462 = shl i64 %vz1458, 28
  %nzor1463 = or i64 %ns1459, %zs1460
  %cvor1464 = or i64 %cs1461, %vs1462
  %nzcv1465 = or i64 %nzor1463, %cvor1464
  %wp1466 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1465, ptr %wp1466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf94 word 0x54002d08
  %r1467.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1467 = load i64, ptr %r1467.p, align 8, !alias.scope !3, !noalias !4
  %fsh1469 = lshr i64 %r1467, 29
  %ftr1470 = trunc i64 %fsh1469 to i1
  %fsh1471 = lshr i64 %r1467, 30
  %ftr1472 = trunc i64 %fsh1471 to i1
  %fnz1473 = xor i1 %ftr1472, true
  %cond1468 = and i1 %ftr1470, %fnz1473
  br i1 %cond1468, label %L_8001bc534, label %L_8001bbf98_ft
L_8001bbfc0:
  ; @pc 0x8001bbfc0 word 0x12800008
  %c1512 = zext i32 -1 to i64
  %wp1513 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1512, ptr %wp1513, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfc4 word 0xf9001a88
  %r1514.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1514 = load i64, ptr %r1514.p, align 8, !alias.scope !3, !noalias !4
  %t1515 = add i64 %r1514, 48
  %r1516.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1516 = load i64, ptr %r1516.p, align 8, !alias.scope !3, !noalias !4
  %gmp1517 = inttoptr i64 %t1515 to ptr
  store i64 %r1516, ptr %gmp1517, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbfc8 word 0x9001bc88
  %wp1518 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfcc word 0xf945bd08
  %r1519.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1519 = load i64, ptr %r1519.p, align 8, !alias.scope !3, !noalias !4
  %t1520 = add i64 %r1519, 2936
  %gmp1521 = inttoptr i64 %t1520 to ptr
  %gml1522 = load i64, ptr %gmp1521, align 1, !alias.scope !4, !noalias !3
  %wp1523 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1522, ptr %wp1523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfd0 word 0xa9017e9f
  %r1524.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1524 = load i64, ptr %r1524.p, align 8, !alias.scope !3, !noalias !4
  %t1525 = add i64 %r1524, 16
  %t1526 = add i64 %t1525, 8
  %gmp1527 = inttoptr i64 %t1525 to ptr
  store i64 0, ptr %gmp1527, align 1, !alias.scope !4, !noalias !3
  %gmp1528 = inttoptr i64 %t1526 to ptr
  store i64 0, ptr %gmp1528, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbfd4 word 0xa9027e9f
  %r1529.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1529 = load i64, ptr %r1529.p, align 8, !alias.scope !3, !noalias !4
  %t1530 = add i64 %r1529, 32
  %t1531 = add i64 %t1530, 8
  %gmp1532 = inttoptr i64 %t1530 to ptr
  store i64 0, ptr %gmp1532, align 1, !alias.scope !4, !noalias !3
  %gmp1533 = inttoptr i64 %t1531 to ptr
  store i64 0, ptr %gmp1533, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbfd8 word 0xa9007e88
  %r1534.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1534 = load i64, ptr %r1534.p, align 8, !alias.scope !3, !noalias !4
  %t1535 = add i64 %r1534, 8
  %r1536.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1536 = load i64, ptr %r1536.p, align 8, !alias.scope !3, !noalias !4
  %gmp1537 = inttoptr i64 %r1534 to ptr
  store i64 %r1536, ptr %gmp1537, align 1, !alias.scope !4, !noalias !3
  %gmp1538 = inttoptr i64 %t1535 to ptr
  store i64 0, ptr %gmp1538, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbfdc word 0x29402408
  %r1539.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1539 = load i64, ptr %r1539.p, align 8, !alias.scope !3, !noalias !4
  %t1540 = add i64 %r1539, 4
  %gmp1541 = inttoptr i64 %r1539 to ptr
  %gml1542 = load i32, ptr %gmp1541, align 1, !alias.scope !4, !noalias !3
  %c1543 = zext i32 %gml1542 to i64
  %gmp1544 = inttoptr i64 %t1540 to ptr
  %gml1545 = load i32, ptr %gmp1544, align 1, !alias.scope !4, !noalias !3
  %c1546 = zext i32 %gml1545 to i64
  %wp1547 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1543, ptr %wp1547, align 8, !alias.scope !3, !noalias !4
  %wp1548 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1546, ptr %wp1548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfe0 word 0x93407d08
  %r1549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1549 = load i64, ptr %r1549.p, align 8, !alias.scope !3, !noalias !4
  %t1550 = lshr i64 %r1549, 31
  %t1551 = and i64 %t1550, 1
  %t1552 = sub i64 0, %t1551
  %t1553 = and i64 %t1552, -4294967296
  %t1554 = and i64 %r1549, 4294967295
  %t1555 = or i64 %t1553, %t1554
  %wp1556 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1555, ptr %wp1556, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfe4 word 0x6b09011f
  %r1557.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1557 = load i64, ptr %r1557.p, align 8, !alias.scope !3, !noalias !4
  %c1558 = trunc i64 %r1557 to i32
  %r1559.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1559 = load i64, ptr %r1559.p, align 8, !alias.scope !3, !noalias !4
  %c1560 = trunc i64 %r1559 to i32
  %t1561 = sub i32 %c1558, %c1560
  %fn1562 = icmp slt i32 %t1561, 0
  %fz1563 = icmp eq i32 %t1561, 0
  %fc1564 = icmp uge i32 %c1558, %c1560
  %fx11565 = xor i32 %c1558, %c1560
  %fx21566 = xor i32 %c1558, %t1561
  %fva1567 = and i32 %fx11565, %fx21566
  %fv1568 = icmp slt i32 %fva1567, 0
  %nz1569 = zext i1 %fn1562 to i64
  %zz1570 = zext i1 %fz1563 to i64
  %cz1571 = zext i1 %fc1564 to i64
  %vz1572 = zext i1 %fv1568 to i64
  %ns1573 = shl i64 %nz1569, 31
  %zs1574 = shl i64 %zz1570, 30
  %cs1575 = shl i64 %cz1571, 29
  %vs1576 = shl i64 %vz1572, 28
  %nzor1577 = or i64 %ns1573, %zs1574
  %cvor1578 = or i64 %cs1575, %vs1576
  %nzcv1579 = or i64 %nzor1577, %cvor1578
  %wp1580 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1579, ptr %wp1580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfe8 word 0x540000ca
  %r1581.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1581 = load i64, ptr %r1581.p, align 8, !alias.scope !3, !noalias !4
  %fsh1583 = lshr i64 %r1581, 31
  %ftr1584 = trunc i64 %fsh1583 to i1
  %fsh1585 = lshr i64 %r1581, 28
  %ftr1586 = trunc i64 %fsh1585 to i1
  %cond1582 = icmp eq i1 %ftr1584, %ftr1586
  br i1 %cond1582, label %L_8001bc000, label %L_8001bbfec_ft
L_8001bc000:
  ; @pc 0x8001bc000 word 0xf94002c8
  %r1612.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1612 = load i64, ptr %r1612.p, align 8, !alias.scope !3, !noalias !4
  %gmp1613 = inttoptr i64 %r1612 to ptr
  %gml1614 = load i64, ptr %gmp1613, align 1, !alias.scope !4, !noalias !3
  %wp1615 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1614, ptr %wp1615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc004 word 0x52800069
  %c1616 = zext i32 3 to i64
  %wp1617 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1616, ptr %wp1617, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc008 word 0x12003f0a
  %r1618.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1618 = load i64, ptr %r1618.p, align 8, !alias.scope !3, !noalias !4
  %c1619 = trunc i64 %r1618 to i32
  %t1620 = and i32 %c1619, 65535
  %c1621 = zext i32 %t1620 to i64
  %wp1622 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c1621, ptr %wp1622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc00c word 0x2905268a
  %r1623.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1623 = load i64, ptr %r1623.p, align 8, !alias.scope !3, !noalias !4
  %t1624 = add i64 %r1623, 40
  %t1625 = add i64 %t1624, 4
  %r1626.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1626 = load i64, ptr %r1626.p, align 8, !alias.scope !3, !noalias !4
  %c1627 = trunc i64 %r1626 to i32
  %gmp1628 = inttoptr i64 %t1624 to ptr
  store i32 %c1627, ptr %gmp1628, align 1, !alias.scope !4, !noalias !3
  %r1629.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1629 = load i64, ptr %r1629.p, align 8, !alias.scope !3, !noalias !4
  %c1630 = trunc i64 %r1629 to i32
  %gmp1631 = inttoptr i64 %t1625 to ptr
  store i32 %c1630, ptr %gmp1631, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc010 word 0xa9006688
  %r1632.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1632 = load i64, ptr %r1632.p, align 8, !alias.scope !3, !noalias !4
  %t1633 = add i64 %r1632, 8
  %r1634.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1634 = load i64, ptr %r1634.p, align 8, !alias.scope !3, !noalias !4
  %gmp1635 = inttoptr i64 %r1632 to ptr
  store i64 %r1634, ptr %gmp1635, align 1, !alias.scope !4, !noalias !3
  %r1636.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1636 = load i64, ptr %r1636.p, align 8, !alias.scope !3, !noalias !4
  %gmp1637 = inttoptr i64 %t1633 to ptr
  store i64 %r1636, ptr %gmp1637, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc014 word 0xf9400aa0
  %r1638.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1638 = load i64, ptr %r1638.p, align 8, !alias.scope !3, !noalias !4
  %t1639 = add i64 %r1638, 16
  %gmp1640 = inttoptr i64 %t1639 to ptr
  %gml1641 = load i64, ptr %gmp1640, align 1, !alias.scope !4, !noalias !3
  %wp1642 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1641, ptr %wp1642, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc018 word 0xf9400008
  %r1643.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1643 = load i64, ptr %r1643.p, align 8, !alias.scope !3, !noalias !4
  %gmp1644 = inttoptr i64 %r1643 to ptr
  %gml1645 = load i64, ptr %gmp1644, align 1, !alias.scope !4, !noalias !3
  %wp1646 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1645, ptr %wp1646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc01c word 0xf9402908
  %r1647.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1647 = load i64, ptr %r1647.p, align 8, !alias.scope !3, !noalias !4
  %t1648 = add i64 %r1647, 80
  %gmp1649 = inttoptr i64 %t1648 to ptr
  %gml1650 = load i64, ptr %gmp1649, align 1, !alias.scope !4, !noalias !3
  %wp1651 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1650, ptr %wp1651, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc020 word 0xd63f0100
  %r1652.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1652 = load i64, ptr %r1652.p, align 8, !alias.scope !3, !noalias !4
  %fp1653 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1652, ptr %fp1653, align 8, !alias.scope !3, !noalias !4
  %wp1654 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557028, ptr %wp1654, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc024 word 0xb5002600
  %r1655.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1655 = load i64, ptr %r1655.p, align 8, !alias.scope !3, !noalias !4
  %cmp1656 = icmp ne i64 %r1655, 0
  br i1 %cmp1656, label %L_8001bc4e4, label %L_8001bc028
L_8001bc028:
  ; @pc 0x8001bc028 word 0xf9000a80
  %r1657.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1657 = load i64, ptr %r1657.p, align 8, !alias.scope !3, !noalias !4
  %t1658 = add i64 %r1657, 16
  %r1659.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1659 = load i64, ptr %r1659.p, align 8, !alias.scope !3, !noalias !4
  %gmp1660 = inttoptr i64 %t1658 to ptr
  store i64 %r1659, ptr %gmp1660, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc02c word 0xb900329f
  %r1661.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1661 = load i64, ptr %r1661.p, align 8, !alias.scope !3, !noalias !4
  %t1662 = add i64 %r1661, 48
  %gmp1663 = inttoptr i64 %t1662 to ptr
  store i32 0, ptr %gmp1663, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc030 word 0x1400000f
  br label %L_8001bc06c
L_8001bc034:
  ; @pc 0x8001bc034 word 0x529ffff7
  %c1664 = zext i32 65535 to i64
  %wp1665 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1664, ptr %wp1665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc038 word 0x529ffffa
  %c1666 = zext i32 65535 to i64
  %wp1667 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1666, ptr %wp1667, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc03c
L_8001bc03c:
  ; @pc 0x8001bc03c word 0x0a050308
  %r1668.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1668 = load i64, ptr %r1668.p, align 8, !alias.scope !3, !noalias !4
  %c1669 = trunc i64 %r1668 to i32
  %r1670.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1670 = load i64, ptr %r1670.p, align 8, !alias.scope !3, !noalias !4
  %c1671 = trunc i64 %r1670 to i32
  %t1672 = and i32 %c1671, %c1669
  %c1673 = zext i32 %t1672 to i64
  %wp1674 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1673, ptr %wp1674, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc040 word 0x6b05011f
  %r1675.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1675 = load i64, ptr %r1675.p, align 8, !alias.scope !3, !noalias !4
  %c1676 = trunc i64 %r1675 to i32
  %r1677.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1677 = load i64, ptr %r1677.p, align 8, !alias.scope !3, !noalias !4
  %c1678 = trunc i64 %r1677 to i32
  %t1679 = sub i32 %c1676, %c1678
  %fn1680 = icmp slt i32 %t1679, 0
  %fz1681 = icmp eq i32 %t1679, 0
  %fc1682 = icmp uge i32 %c1676, %c1678
  %fx11683 = xor i32 %c1676, %c1678
  %fx21684 = xor i32 %c1676, %t1679
  %fva1685 = and i32 %fx11683, %fx21684
  %fv1686 = icmp slt i32 %fva1685, 0
  %nz1687 = zext i1 %fn1680 to i64
  %zz1688 = zext i1 %fz1681 to i64
  %cz1689 = zext i1 %fc1682 to i64
  %vz1690 = zext i1 %fv1686 to i64
  %ns1691 = shl i64 %nz1687, 31
  %zs1692 = shl i64 %zz1688, 30
  %cs1693 = shl i64 %cz1689, 29
  %vs1694 = shl i64 %vz1690, 28
  %nzor1695 = or i64 %ns1691, %zs1692
  %cvor1696 = or i64 %cs1693, %vs1694
  %nzcv1697 = or i64 %nzor1695, %cvor1696
  %wp1698 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1697, ptr %wp1698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc044 word 0x1a9f17f9
  %t1699 = add i32 0, 1
  %r1700.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1700 = load i64, ptr %r1700.p, align 8, !alias.scope !3, !noalias !4
  %fsh1702 = lshr i64 %r1700, 30
  %ftr1703 = trunc i64 %fsh1702 to i1
  %cond1701 = xor i1 %ftr1703, true
  %sel1704 = select i1 %cond1701, i32 0, i32 %t1699
  %c1705 = zext i32 %sel1704 to i64
  %wp1706 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1705, ptr %wp1706, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc048 word 0x34fff4f8
  %r1707.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1707 = load i64, ptr %r1707.p, align 8, !alias.scope !3, !noalias !4
  %c1708 = trunc i64 %r1707 to i32
  %cmp1709 = icmp eq i32 %c1708, 0
  br i1 %cmp1709, label %L_8001bbee4, label %L_8001bc04c_ft
L_8001bc06c:
  ; @pc 0x8001bc06c word 0x927ef408
  %r1743.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1743 = load i64, ptr %r1743.p, align 8, !alias.scope !3, !noalias !4
  %t1744 = and i64 %r1743, -4
  %wp1745 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1744, ptr %wp1745, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc070 word 0xf9000268
  %r1746.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1746 = load i64, ptr %r1746.p, align 8, !alias.scope !3, !noalias !4
  %r1747.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1747 = load i64, ptr %r1747.p, align 8, !alias.scope !3, !noalias !4
  %gmp1748 = inttoptr i64 %r1746 to ptr
  store i64 %r1747, ptr %gmp1748, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc074 word 0x17ffff43
  br label %L_8001bbd80
L_8001bc078:
  ; @pc 0x8001bc078 word 0xf001bd01
  %wp1749 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp1749, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc07c word 0xaa0a03e0
  %r1750.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1750 = load i64, ptr %r1750.p, align 8, !alias.scope !3, !noalias !4
  %t1751 = or i64 0, %r1750
  %wp1752 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1751, ptr %wp1752, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc080 word 0xf9452821
  %r1753.p = getelementptr inbounds i8, ptr %c, i64 8
  %r1753 = load i64, ptr %r1753.p, align 8, !alias.scope !3, !noalias !4
  %t1754 = add i64 %r1753, 2640
  %gmp1755 = inttoptr i64 %t1754 to ptr
  %gml1756 = load i64, ptr %gmp1755, align 1, !alias.scope !4, !noalias !3
  %wp1757 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml1756, ptr %wp1757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc084 word 0xaa1303f9
  %r1758.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1758 = load i64, ptr %r1758.p, align 8, !alias.scope !3, !noalias !4
  %t1759 = or i64 0, %r1758
  %wp1760 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1759, ptr %wp1760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc088 word 0xaa1603f3
  %r1761.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1761 = load i64, ptr %r1761.p, align 8, !alias.scope !3, !noalias !4
  %t1762 = or i64 0, %r1761
  %wp1763 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1762, ptr %wp1763, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc08c word 0x2a0403f6
  %r1764.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1764 = load i64, ptr %r1764.p, align 8, !alias.scope !3, !noalias !4
  %c1765 = trunc i64 %r1764 to i32
  %t1766 = or i32 0, %c1765
  %c1767 = zext i32 %t1766 to i64
  %wp1768 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c1767, ptr %wp1768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc090 word 0xaa0303f7
  %r1769.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1769 = load i64, ptr %r1769.p, align 8, !alias.scope !3, !noalias !4
  %t1770 = or i64 0, %r1769
  %wp1771 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t1770, ptr %wp1771, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc094 word 0x2a0503fb
  %r1772.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1772 = load i64, ptr %r1772.p, align 8, !alias.scope !3, !noalias !4
  %c1773 = trunc i64 %r1772 to i32
  %t1774 = or i32 0, %c1773
  %c1775 = zext i32 %t1774 to i64
  %wp1776 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1775, ptr %wp1776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc098 word 0xd63f0100
  %r1777.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1777 = load i64, ptr %r1777.p, align 8, !alias.scope !3, !noalias !4
  %fp1778 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1777, ptr %fp1778, align 8, !alias.scope !3, !noalias !4
  %wp1779 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557148, ptr %wp1779, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc09c word 0x9001bded
  %wp1780 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp1780, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0a0 word 0x9001bdec
  %wp1781 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp1781, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0a4 word 0xf941b5ad
  %r1782.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1782 = load i64, ptr %r1782.p, align 8, !alias.scope !3, !noalias !4
  %t1783 = add i64 %r1782, 872
  %gmp1784 = inttoptr i64 %t1783 to ptr
  %gml1785 = load i64, ptr %gmp1784, align 1, !alias.scope !4, !noalias !3
  %wp1786 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1785, ptr %wp1786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0a8 word 0xd001bc8b
  %wp1787 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp1787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0ac word 0xd001bc89
  %wp1788 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0b0 word 0xf941bd8c
  %r1789.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1789 = load i64, ptr %r1789.p, align 8, !alias.scope !3, !noalias !4
  %t1790 = add i64 %r1789, 888
  %gmp1791 = inttoptr i64 %t1790 to ptr
  %gml1792 = load i64, ptr %gmp1791, align 1, !alias.scope !4, !noalias !3
  %wp1793 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1792, ptr %wp1793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0b4 word 0xf943016b
  %r1794.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1794 = load i64, ptr %r1794.p, align 8, !alias.scope !3, !noalias !4
  %t1795 = add i64 %r1794, 1536
  %gmp1796 = inttoptr i64 %t1795 to ptr
  %gml1797 = load i64, ptr %gmp1796, align 1, !alias.scope !4, !noalias !3
  %wp1798 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1797, ptr %wp1798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0b8 word 0x2a1b03e5
  %r1799.p = getelementptr inbounds i8, ptr %c, i64 216
  %r1799 = load i64, ptr %r1799.p, align 8, !alias.scope !3, !noalias !4
  %c1800 = trunc i64 %r1799 to i32
  %t1801 = or i32 0, %c1800
  %c1802 = zext i32 %t1801 to i64
  %wp1803 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1802, ptr %wp1803, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0bc word 0xaa1703e3
  %r1804.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1804 = load i64, ptr %r1804.p, align 8, !alias.scope !3, !noalias !4
  %t1805 = or i64 0, %r1804
  %wp1806 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1805, ptr %wp1806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0c0 word 0xf94007ea
  %r1807.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1807 = load i64, ptr %r1807.p, align 8, !alias.scope !3, !noalias !4
  %t1808 = add i64 %r1807, 8
  %gmp1809 = inttoptr i64 %t1808 to ptr
  %gml1810 = load i64, ptr %gmp1809, align 1, !alias.scope !4, !noalias !3
  %wp1811 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1810, ptr %wp1811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0c4 word 0x2a1603e4
  %r1812.p = getelementptr inbounds i8, ptr %c, i64 176
  %r1812 = load i64, ptr %r1812.p, align 8, !alias.scope !3, !noalias !4
  %c1813 = trunc i64 %r1812 to i32
  %t1814 = or i32 0, %c1813
  %c1815 = zext i32 %t1814 to i64
  %wp1816 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1815, ptr %wp1816, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0c8 word 0xaa1303f6
  %r1817.p = getelementptr inbounds i8, ptr %c, i64 152
  %r1817 = load i64, ptr %r1817.p, align 8, !alias.scope !3, !noalias !4
  %t1818 = or i64 0, %r1817
  %wp1819 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t1818, ptr %wp1819, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0cc word 0xf9430d29
  %r1820.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1820 = load i64, ptr %r1820.p, align 8, !alias.scope !3, !noalias !4
  %t1821 = add i64 %r1820, 1560
  %gmp1822 = inttoptr i64 %t1821 to ptr
  %gml1823 = load i64, ptr %gmp1822, align 1, !alias.scope !4, !noalias !3
  %wp1824 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1823, ptr %wp1824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0d0 word 0xaa1903f3
  %r1825.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1825 = load i64, ptr %r1825.p, align 8, !alias.scope !3, !noalias !4
  %t1826 = or i64 0, %r1825
  %wp1827 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t1826, ptr %wp1827, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0d4 word 0xb94017fb
  %r1828.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1828 = load i64, ptr %r1828.p, align 8, !alias.scope !3, !noalias !4
  %t1829 = add i64 %r1828, 20
  %gmp1830 = inttoptr i64 %t1829 to ptr
  %gml1831 = load i32, ptr %gmp1830, align 1, !alias.scope !4, !noalias !3
  %c1832 = zext i32 %gml1831 to i64
  %wp1833 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c1832, ptr %wp1833, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0d8 word 0xb5ffe2c0
  %r1834.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1834 = load i64, ptr %r1834.p, align 8, !alias.scope !3, !noalias !4
  %cmp1835 = icmp ne i64 %r1834, 0
  br i1 %cmp1835, label %L_8001bbd30, label %L_8001bc0dc
L_8001bc0dc:
  ; @pc 0x8001bc0dc word 0xf001bd08
  %wp1836 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1836, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0e0 word 0xf9453508
  %r1837.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1837 = load i64, ptr %r1837.p, align 8, !alias.scope !3, !noalias !4
  %t1838 = add i64 %r1837, 2664
  %gmp1839 = inttoptr i64 %t1838 to ptr
  %gml1840 = load i64, ptr %gmp1839, align 1, !alias.scope !4, !noalias !3
  %wp1841 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1840, ptr %wp1841, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0e4 word 0x08dffd08
  %r1842.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1842 = load i64, ptr %r1842.p, align 8, !alias.scope !3, !noalias !4
  %atp1843 = inttoptr i64 %r1842 to ptr
  %lda1844 = load atomic i8, ptr %atp1843 acquire, align 1, !alias.scope !4, !noalias !3
  %c1845 = zext i8 %lda1844 to i64
  %wp1846 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1845, ptr %wp1846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0e8 word 0x36002cc8
  %r1847.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1847 = load i64, ptr %r1847.p, align 8, !alias.scope !3, !noalias !4
  %t1848 = and i64 %r1847, 1
  %cmp1849 = icmp eq i64 %t1848, 0
  br i1 %cmp1849, label %L_8001bc680, label %L_8001bc0ec
L_8001bc0ec:
  ; @pc 0x8001bc0ec word 0xb400016a
  %r1850.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1850 = load i64, ptr %r1850.p, align 8, !alias.scope !3, !noalias !4
  %cmp1851 = icmp eq i64 %r1850, 0
  br i1 %cmp1851, label %L_8001bc118, label %L_8001bc0f0_ft
L_8001bc108:
  ; @pc 0x8001bc108 word 0x08dffd68
  %r1894.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1894 = load i64, ptr %r1894.p, align 8, !alias.scope !3, !noalias !4
  %atp1895 = inttoptr i64 %r1894 to ptr
  %lda1896 = load atomic i8, ptr %atp1895 acquire, align 1, !alias.scope !4, !noalias !3
  %c1897 = zext i8 %lda1896 to i64
  %wp1898 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1897, ptr %wp1898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc10c word 0x360050c8
  %r1899.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1899 = load i64, ptr %r1899.p, align 8, !alias.scope !3, !noalias !4
  %t1900 = and i64 %r1899, 1
  %cmp1901 = icmp eq i64 %t1900, 0
  br i1 %cmp1901, label %L_8001bcb24, label %L_8001bc110
L_8001bc110:
  ; @pc 0x8001bc110 word 0x08dffd28
  %r1902.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1902 = load i64, ptr %r1902.p, align 8, !alias.scope !3, !noalias !4
  %atp1903 = inttoptr i64 %r1902 to ptr
  %lda1904 = load atomic i8, ptr %atp1903 acquire, align 1, !alias.scope !4, !noalias !3
  %c1905 = zext i8 %lda1904 to i64
  %wp1906 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1905, ptr %wp1906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc114 word 0x360055a8
  %r1907.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1907 = load i64, ptr %r1907.p, align 8, !alias.scope !3, !noalias !4
  %t1908 = and i64 %r1907, 1
  %cmp1909 = icmp eq i64 %t1908, 0
  br i1 %cmp1909, label %L_8001bcbc8, label %L_8001bc118
L_8001bc118:
  ; @pc 0x8001bc118 word 0xf001bd08
  %wp1910 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp1910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc11c word 0xf9453d08
  %r1911.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1911 = load i64, ptr %r1911.p, align 8, !alias.scope !3, !noalias !4
  %t1912 = add i64 %r1911, 2680
  %gmp1913 = inttoptr i64 %t1912 to ptr
  %gml1914 = load i64, ptr %gmp1913, align 1, !alias.scope !4, !noalias !3
  %wp1915 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1914, ptr %wp1915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc120 word 0x08dffd08
  %r1916.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1916 = load i64, ptr %r1916.p, align 8, !alias.scope !3, !noalias !4
  %atp1917 = inttoptr i64 %r1916 to ptr
  %lda1918 = load atomic i8, ptr %atp1917 acquire, align 1, !alias.scope !4, !noalias !3
  %c1919 = zext i8 %lda1918 to i64
  %wp1920 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1919, ptr %wp1920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc124 word 0x36003808
  %r1921.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1921 = load i64, ptr %r1921.p, align 8, !alias.scope !3, !noalias !4
  %t1922 = and i64 %r1921, 1
  %cmp1923 = icmp eq i64 %t1922, 0
  br i1 %cmp1923, label %L_8001bc824, label %L_8001bc128
L_8001bc128:
  ; @pc 0x8001bc128 word 0xb40009aa
  %r1924.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1924 = load i64, ptr %r1924.p, align 8, !alias.scope !3, !noalias !4
  %cmp1925 = icmp eq i64 %r1924, 0
  br i1 %cmp1925, label %L_8001bc25c, label %L_8001bc12c_ft
L_8001bc144:
  ; @pc 0x8001bc144 word 0x08dffd68
  %r1968.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1968 = load i64, ptr %r1968.p, align 8, !alias.scope !3, !noalias !4
  %atp1969 = inttoptr i64 %r1968 to ptr
  %lda1970 = load atomic i8, ptr %atp1969 acquire, align 1, !alias.scope !4, !noalias !3
  %c1971 = zext i8 %lda1970 to i64
  %wp1972 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1971, ptr %wp1972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc148 word 0x36006da8
  %r1973.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1973 = load i64, ptr %r1973.p, align 8, !alias.scope !3, !noalias !4
  %t1974 = and i64 %r1973, 1
  %cmp1975 = icmp eq i64 %t1974, 0
  br i1 %cmp1975, label %L_8001bcefc, label %L_8001bc14c
L_8001bc14c:
  ; @pc 0x8001bc14c word 0x08dffd28
  %r1976.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1976 = load i64, ptr %r1976.p, align 8, !alias.scope !3, !noalias !4
  %atp1977 = inttoptr i64 %r1976 to ptr
  %lda1978 = load atomic i8, ptr %atp1977 acquire, align 1, !alias.scope !4, !noalias !3
  %c1979 = zext i8 %lda1978 to i64
  %wp1980 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1979, ptr %wp1980, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc150 word 0x37000868
  %r1981.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1981 = load i64, ptr %r1981.p, align 8, !alias.scope !3, !noalias !4
  %t1982 = and i64 %r1981, 1
  %cmp1983 = icmp ne i64 %t1982, 0
  br i1 %cmp1983, label %L_8001bc25c, label %L_8001bc154_ft
L_8001bc1f8:
  ; @pc 0x8001bc1f8 word 0xf001bd01
  %wp2118 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2118, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1fc word 0xaa0a03e0
  %r2119.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2119 = load i64, ptr %r2119.p, align 8, !alias.scope !3, !noalias !4
  %t2120 = or i64 0, %r2119
  %wp2121 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2120, ptr %wp2121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc200 word 0xf9453821
  %r2122.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2122 = load i64, ptr %r2122.p, align 8, !alias.scope !3, !noalias !4
  %t2123 = add i64 %r2122, 2672
  %gmp2124 = inttoptr i64 %t2123 to ptr
  %gml2125 = load i64, ptr %gmp2124, align 1, !alias.scope !4, !noalias !3
  %wp2126 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2125, ptr %wp2126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc204 word 0xaa1303f9
  %r2127.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2127 = load i64, ptr %r2127.p, align 8, !alias.scope !3, !noalias !4
  %t2128 = or i64 0, %r2127
  %wp2129 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2128, ptr %wp2129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc208 word 0xaa1603f3
  %r2130.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2130 = load i64, ptr %r2130.p, align 8, !alias.scope !3, !noalias !4
  %t2131 = or i64 0, %r2130
  %wp2132 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2131, ptr %wp2132, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc20c word 0x2a0403f6
  %r2133.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2133 = load i64, ptr %r2133.p, align 8, !alias.scope !3, !noalias !4
  %c2134 = trunc i64 %r2133 to i32
  %t2135 = or i32 0, %c2134
  %c2136 = zext i32 %t2135 to i64
  %wp2137 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2136, ptr %wp2137, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc210 word 0xaa0303f7
  %r2138.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2138 = load i64, ptr %r2138.p, align 8, !alias.scope !3, !noalias !4
  %t2139 = or i64 0, %r2138
  %wp2140 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2139, ptr %wp2140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc214 word 0x2a0503fb
  %r2141.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2141 = load i64, ptr %r2141.p, align 8, !alias.scope !3, !noalias !4
  %c2142 = trunc i64 %r2141 to i32
  %t2143 = or i32 0, %c2142
  %c2144 = zext i32 %t2143 to i64
  %wp2145 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2144, ptr %wp2145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc218 word 0xd63f0100
  %r2146.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2146 = load i64, ptr %r2146.p, align 8, !alias.scope !3, !noalias !4
  %fp2147 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2146, ptr %fp2147, align 8, !alias.scope !3, !noalias !4
  %wp2148 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557532, ptr %wp2148, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc21c word 0x9001bded
  %wp2149 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc220 word 0x9001bdec
  %wp2150 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc224 word 0xf941b5ad
  %r2151.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2151 = load i64, ptr %r2151.p, align 8, !alias.scope !3, !noalias !4
  %t2152 = add i64 %r2151, 872
  %gmp2153 = inttoptr i64 %t2152 to ptr
  %gml2154 = load i64, ptr %gmp2153, align 1, !alias.scope !4, !noalias !3
  %wp2155 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2154, ptr %wp2155, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc228 word 0xd001bc8b
  %wp2156 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc22c word 0xd001bc89
  %wp2157 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2157, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc230 word 0xf941bd8c
  %r2158.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2158 = load i64, ptr %r2158.p, align 8, !alias.scope !3, !noalias !4
  %t2159 = add i64 %r2158, 888
  %gmp2160 = inttoptr i64 %t2159 to ptr
  %gml2161 = load i64, ptr %gmp2160, align 1, !alias.scope !4, !noalias !3
  %wp2162 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2161, ptr %wp2162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc234 word 0xf943016b
  %r2163.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2163 = load i64, ptr %r2163.p, align 8, !alias.scope !3, !noalias !4
  %t2164 = add i64 %r2163, 1536
  %gmp2165 = inttoptr i64 %t2164 to ptr
  %gml2166 = load i64, ptr %gmp2165, align 1, !alias.scope !4, !noalias !3
  %wp2167 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2166, ptr %wp2167, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc238 word 0x2a1b03e5
  %r2168.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2168 = load i64, ptr %r2168.p, align 8, !alias.scope !3, !noalias !4
  %c2169 = trunc i64 %r2168 to i32
  %t2170 = or i32 0, %c2169
  %c2171 = zext i32 %t2170 to i64
  %wp2172 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2171, ptr %wp2172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc23c word 0xaa1703e3
  %r2173.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2173 = load i64, ptr %r2173.p, align 8, !alias.scope !3, !noalias !4
  %t2174 = or i64 0, %r2173
  %wp2175 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2174, ptr %wp2175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc240 word 0xf94007ea
  %r2176.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2176 = load i64, ptr %r2176.p, align 8, !alias.scope !3, !noalias !4
  %t2177 = add i64 %r2176, 8
  %gmp2178 = inttoptr i64 %t2177 to ptr
  %gml2179 = load i64, ptr %gmp2178, align 1, !alias.scope !4, !noalias !3
  %wp2180 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2179, ptr %wp2180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc244 word 0x2a1603e4
  %r2181.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2181 = load i64, ptr %r2181.p, align 8, !alias.scope !3, !noalias !4
  %c2182 = trunc i64 %r2181 to i32
  %t2183 = or i32 0, %c2182
  %c2184 = zext i32 %t2183 to i64
  %wp2185 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2184, ptr %wp2185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc248 word 0xaa1303f6
  %r2186.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2186 = load i64, ptr %r2186.p, align 8, !alias.scope !3, !noalias !4
  %t2187 = or i64 0, %r2186
  %wp2188 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2187, ptr %wp2188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc24c word 0xf9430d29
  %r2189.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2189 = load i64, ptr %r2189.p, align 8, !alias.scope !3, !noalias !4
  %t2190 = add i64 %r2189, 1560
  %gmp2191 = inttoptr i64 %t2190 to ptr
  %gml2192 = load i64, ptr %gmp2191, align 1, !alias.scope !4, !noalias !3
  %wp2193 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2192, ptr %wp2193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc250 word 0xaa1903f3
  %r2194.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2194 = load i64, ptr %r2194.p, align 8, !alias.scope !3, !noalias !4
  %t2195 = or i64 0, %r2194
  %wp2196 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2195, ptr %wp2196, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc254 word 0xb94017fb
  %r2197.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2197 = load i64, ptr %r2197.p, align 8, !alias.scope !3, !noalias !4
  %t2198 = add i64 %r2197, 20
  %gmp2199 = inttoptr i64 %t2198 to ptr
  %gml2200 = load i32, ptr %gmp2199, align 1, !alias.scope !4, !noalias !3
  %c2201 = zext i32 %gml2200 to i64
  %wp2202 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2201, ptr %wp2202, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc258 word 0xb5ffd6c0
  %r2203.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2203 = load i64, ptr %r2203.p, align 8, !alias.scope !3, !noalias !4
  %cmp2204 = icmp ne i64 %r2203, 0
  br i1 %cmp2204, label %L_8001bbd30, label %L_8001bc25c
L_8001bc25c:
  ; @pc 0x8001bc25c word 0xf001bd08
  %wp2205 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2205, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc260 word 0xf9454508
  %r2206.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2206 = load i64, ptr %r2206.p, align 8, !alias.scope !3, !noalias !4
  %t2207 = add i64 %r2206, 2696
  %gmp2208 = inttoptr i64 %t2207 to ptr
  %gml2209 = load i64, ptr %gmp2208, align 1, !alias.scope !4, !noalias !3
  %wp2210 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2209, ptr %wp2210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc264 word 0x08dffd08
  %r2211.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2211 = load i64, ptr %r2211.p, align 8, !alias.scope !3, !noalias !4
  %atp2212 = inttoptr i64 %r2211 to ptr
  %lda2213 = load atomic i8, ptr %atp2212 acquire, align 1, !alias.scope !4, !noalias !3
  %c2214 = zext i8 %lda2213 to i64
  %wp2215 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2214, ptr %wp2215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc268 word 0x36003308
  %r2216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2216 = load i64, ptr %r2216.p, align 8, !alias.scope !3, !noalias !4
  %t2217 = and i64 %r2216, 1
  %cmp2218 = icmp eq i64 %t2217, 0
  br i1 %cmp2218, label %L_8001bc8c8, label %L_8001bc26c
L_8001bc26c:
  ; @pc 0x8001bc26c word 0xb40009aa
  %r2219.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2219 = load i64, ptr %r2219.p, align 8, !alias.scope !3, !noalias !4
  %cmp2220 = icmp eq i64 %r2219, 0
  br i1 %cmp2220, label %L_8001bc3a0, label %L_8001bc270_ft
L_8001bc288:
  ; @pc 0x8001bc288 word 0x08dffd68
  %r2263.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2263 = load i64, ptr %r2263.p, align 8, !alias.scope !3, !noalias !4
  %atp2264 = inttoptr i64 %r2263 to ptr
  %lda2265 = load atomic i8, ptr %atp2264 acquire, align 1, !alias.scope !4, !noalias !3
  %c2266 = zext i8 %lda2265 to i64
  %wp2267 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2266, ptr %wp2267, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc28c word 0x36006dc8
  %r2268.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2268 = load i64, ptr %r2268.p, align 8, !alias.scope !3, !noalias !4
  %t2269 = and i64 %r2268, 1
  %cmp2270 = icmp eq i64 %t2269, 0
  br i1 %cmp2270, label %L_8001bd044, label %L_8001bc290
L_8001bc290:
  ; @pc 0x8001bc290 word 0x08dffd28
  %r2271.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2271 = load i64, ptr %r2271.p, align 8, !alias.scope !3, !noalias !4
  %atp2272 = inttoptr i64 %r2271 to ptr
  %lda2273 = load atomic i8, ptr %atp2272 acquire, align 1, !alias.scope !4, !noalias !3
  %c2274 = zext i8 %lda2273 to i64
  %wp2275 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2274, ptr %wp2275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc294 word 0x37000868
  %r2276.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2276 = load i64, ptr %r2276.p, align 8, !alias.scope !3, !noalias !4
  %t2277 = and i64 %r2276, 1
  %cmp2278 = icmp ne i64 %t2277, 0
  br i1 %cmp2278, label %L_8001bc3a0, label %L_8001bc298_ft
L_8001bc33c:
  ; @pc 0x8001bc33c word 0xf001bd01
  %wp2413 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc340 word 0xaa0a03e0
  %r2414.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2414 = load i64, ptr %r2414.p, align 8, !alias.scope !3, !noalias !4
  %t2415 = or i64 0, %r2414
  %wp2416 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2415, ptr %wp2416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc344 word 0xf9454021
  %r2417.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2417 = load i64, ptr %r2417.p, align 8, !alias.scope !3, !noalias !4
  %t2418 = add i64 %r2417, 2688
  %gmp2419 = inttoptr i64 %t2418 to ptr
  %gml2420 = load i64, ptr %gmp2419, align 1, !alias.scope !4, !noalias !3
  %wp2421 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2420, ptr %wp2421, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc348 word 0xaa1303f9
  %r2422.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2422 = load i64, ptr %r2422.p, align 8, !alias.scope !3, !noalias !4
  %t2423 = or i64 0, %r2422
  %wp2424 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2423, ptr %wp2424, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc34c word 0xaa1603f3
  %r2425.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2425 = load i64, ptr %r2425.p, align 8, !alias.scope !3, !noalias !4
  %t2426 = or i64 0, %r2425
  %wp2427 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2426, ptr %wp2427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc350 word 0x2a0403f6
  %r2428.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2428 = load i64, ptr %r2428.p, align 8, !alias.scope !3, !noalias !4
  %c2429 = trunc i64 %r2428 to i32
  %t2430 = or i32 0, %c2429
  %c2431 = zext i32 %t2430 to i64
  %wp2432 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2431, ptr %wp2432, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc354 word 0xaa0303f7
  %r2433.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2433 = load i64, ptr %r2433.p, align 8, !alias.scope !3, !noalias !4
  %t2434 = or i64 0, %r2433
  %wp2435 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2434, ptr %wp2435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc358 word 0x2a0503fb
  %r2436.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2436 = load i64, ptr %r2436.p, align 8, !alias.scope !3, !noalias !4
  %c2437 = trunc i64 %r2436 to i32
  %t2438 = or i32 0, %c2437
  %c2439 = zext i32 %t2438 to i64
  %wp2440 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2439, ptr %wp2440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc35c word 0xd63f0100
  %r2441.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2441 = load i64, ptr %r2441.p, align 8, !alias.scope !3, !noalias !4
  %fp2442 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2441, ptr %fp2442, align 8, !alias.scope !3, !noalias !4
  %wp2443 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557856, ptr %wp2443, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc360 word 0x9001bded
  %wp2444 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2444, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc364 word 0x9001bdec
  %wp2445 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc368 word 0xf941b5ad
  %r2446.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2446 = load i64, ptr %r2446.p, align 8, !alias.scope !3, !noalias !4
  %t2447 = add i64 %r2446, 872
  %gmp2448 = inttoptr i64 %t2447 to ptr
  %gml2449 = load i64, ptr %gmp2448, align 1, !alias.scope !4, !noalias !3
  %wp2450 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2449, ptr %wp2450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc36c word 0xd001bc8b
  %wp2451 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc370 word 0xd001bc89
  %wp2452 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc374 word 0xf941bd8c
  %r2453.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2453 = load i64, ptr %r2453.p, align 8, !alias.scope !3, !noalias !4
  %t2454 = add i64 %r2453, 888
  %gmp2455 = inttoptr i64 %t2454 to ptr
  %gml2456 = load i64, ptr %gmp2455, align 1, !alias.scope !4, !noalias !3
  %wp2457 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2456, ptr %wp2457, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc378 word 0xf943016b
  %r2458.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2458 = load i64, ptr %r2458.p, align 8, !alias.scope !3, !noalias !4
  %t2459 = add i64 %r2458, 1536
  %gmp2460 = inttoptr i64 %t2459 to ptr
  %gml2461 = load i64, ptr %gmp2460, align 1, !alias.scope !4, !noalias !3
  %wp2462 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2461, ptr %wp2462, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc37c word 0x2a1b03e5
  %r2463.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2463 = load i64, ptr %r2463.p, align 8, !alias.scope !3, !noalias !4
  %c2464 = trunc i64 %r2463 to i32
  %t2465 = or i32 0, %c2464
  %c2466 = zext i32 %t2465 to i64
  %wp2467 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2466, ptr %wp2467, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc380 word 0xaa1703e3
  %r2468.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2468 = load i64, ptr %r2468.p, align 8, !alias.scope !3, !noalias !4
  %t2469 = or i64 0, %r2468
  %wp2470 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2469, ptr %wp2470, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc384 word 0xf94007ea
  %r2471.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2471 = load i64, ptr %r2471.p, align 8, !alias.scope !3, !noalias !4
  %t2472 = add i64 %r2471, 8
  %gmp2473 = inttoptr i64 %t2472 to ptr
  %gml2474 = load i64, ptr %gmp2473, align 1, !alias.scope !4, !noalias !3
  %wp2475 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2474, ptr %wp2475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc388 word 0x2a1603e4
  %r2476.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2476 = load i64, ptr %r2476.p, align 8, !alias.scope !3, !noalias !4
  %c2477 = trunc i64 %r2476 to i32
  %t2478 = or i32 0, %c2477
  %c2479 = zext i32 %t2478 to i64
  %wp2480 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2479, ptr %wp2480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc38c word 0xaa1303f6
  %r2481.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2481 = load i64, ptr %r2481.p, align 8, !alias.scope !3, !noalias !4
  %t2482 = or i64 0, %r2481
  %wp2483 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2482, ptr %wp2483, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc390 word 0xf9430d29
  %r2484.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2484 = load i64, ptr %r2484.p, align 8, !alias.scope !3, !noalias !4
  %t2485 = add i64 %r2484, 1560
  %gmp2486 = inttoptr i64 %t2485 to ptr
  %gml2487 = load i64, ptr %gmp2486, align 1, !alias.scope !4, !noalias !3
  %wp2488 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2487, ptr %wp2488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc394 word 0xaa1903f3
  %r2489.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2489 = load i64, ptr %r2489.p, align 8, !alias.scope !3, !noalias !4
  %t2490 = or i64 0, %r2489
  %wp2491 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2490, ptr %wp2491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc398 word 0xb94017fb
  %r2492.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2492 = load i64, ptr %r2492.p, align 8, !alias.scope !3, !noalias !4
  %t2493 = add i64 %r2492, 20
  %gmp2494 = inttoptr i64 %t2493 to ptr
  %gml2495 = load i32, ptr %gmp2494, align 1, !alias.scope !4, !noalias !3
  %c2496 = zext i32 %gml2495 to i64
  %wp2497 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2496, ptr %wp2497, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc39c word 0xb5ffcca0
  %r2498.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2498 = load i64, ptr %r2498.p, align 8, !alias.scope !3, !noalias !4
  %cmp2499 = icmp ne i64 %r2498, 0
  br i1 %cmp2499, label %L_8001bbd30, label %L_8001bc3a0
L_8001bc3a0:
  ; @pc 0x8001bc3a0 word 0xf001bd08
  %wp2500 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419896320, ptr %wp2500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3a4 word 0xf9454d08
  %r2501.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2501 = load i64, ptr %r2501.p, align 8, !alias.scope !3, !noalias !4
  %t2502 = add i64 %r2501, 2712
  %gmp2503 = inttoptr i64 %t2502 to ptr
  %gml2504 = load i64, ptr %gmp2503, align 1, !alias.scope !4, !noalias !3
  %wp2505 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2504, ptr %wp2505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3a8 word 0x08dffd08
  %r2506.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2506 = load i64, ptr %r2506.p, align 8, !alias.scope !3, !noalias !4
  %atp2507 = inttoptr i64 %r2506 to ptr
  %lda2508 = load atomic i8, ptr %atp2507 acquire, align 1, !alias.scope !4, !noalias !3
  %c2509 = zext i8 %lda2508 to i64
  %wp2510 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2509, ptr %wp2510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3ac word 0x36004608
  %r2511.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2511 = load i64, ptr %r2511.p, align 8, !alias.scope !3, !noalias !4
  %t2512 = and i64 %r2511, 1
  %cmp2513 = icmp eq i64 %t2512, 0
  br i1 %cmp2513, label %L_8001bcc6c, label %L_8001bc3b0
L_8001bc3b0:
  ; @pc 0x8001bc3b0 word 0xb40002aa
  %r2514.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2514 = load i64, ptr %r2514.p, align 8, !alias.scope !3, !noalias !4
  %cmp2515 = icmp eq i64 %r2514, 0
  br i1 %cmp2515, label %L_8001bc404, label %L_8001bc3b4_ft
L_8001bc404:
  ; @pc 0x8001bc404 word 0x79400317
  %r2607.p = getelementptr inbounds i8, ptr %c, i64 192
  %r2607 = load i64, ptr %r2607.p, align 8, !alias.scope !3, !noalias !4
  %gmp2608 = inttoptr i64 %r2607 to ptr
  %gml2609 = load i16, ptr %gmp2608, align 1, !alias.scope !4, !noalias !3
  %c2610 = zext i16 %gml2609 to i64
  %wp2611 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2610, ptr %wp2611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc408 word 0x17fffe47
  br label %L_8001bbd24
L_8001bc40c:
  ; @pc 0x8001bc40c word 0x08dffd88
  %r2612.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2612 = load i64, ptr %r2612.p, align 8, !alias.scope !3, !noalias !4
  %atp2613 = inttoptr i64 %r2612 to ptr
  %lda2614 = load atomic i8, ptr %atp2613 acquire, align 1, !alias.scope !4, !noalias !3
  %c2615 = zext i8 %lda2614 to i64
  %wp2616 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2615, ptr %wp2616, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc410 word 0x360066c8
  %r2617.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2617 = load i64, ptr %r2617.p, align 8, !alias.scope !3, !noalias !4
  %t2618 = and i64 %r2617, 1
  %cmp2619 = icmp eq i64 %t2618, 0
  br i1 %cmp2619, label %L_8001bd0e8, label %L_8001bc414
L_8001bc414:
  ; @pc 0x8001bc414 word 0x08dffd68
  %r2620.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2620 = load i64, ptr %r2620.p, align 8, !alias.scope !3, !noalias !4
  %atp2621 = inttoptr i64 %r2620 to ptr
  %lda2622 = load atomic i8, ptr %atp2621 acquire, align 1, !alias.scope !4, !noalias !3
  %c2623 = zext i8 %lda2622 to i64
  %wp2624 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2623, ptr %wp2624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc418 word 0x36006a48
  %r2625.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2625 = load i64, ptr %r2625.p, align 8, !alias.scope !3, !noalias !4
  %t2626 = and i64 %r2625, 1
  %cmp2627 = icmp eq i64 %t2626, 0
  br i1 %cmp2627, label %L_8001bd160, label %L_8001bc41c
L_8001bc41c:
  ; @pc 0x8001bc41c word 0x08dffd28
  %r2628.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2628 = load i64, ptr %r2628.p, align 8, !alias.scope !3, !noalias !4
  %atp2629 = inttoptr i64 %r2628 to ptr
  %lda2630 = load atomic i8, ptr %atp2629 acquire, align 1, !alias.scope !4, !noalias !3
  %c2631 = zext i8 %lda2630 to i64
  %wp2632 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2631, ptr %wp2632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc420 word 0x3707ff28
  %r2633.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2633 = load i64, ptr %r2633.p, align 8, !alias.scope !3, !noalias !4
  %t2634 = and i64 %r2633, 1
  %cmp2635 = icmp ne i64 %t2634, 0
  br i1 %cmp2635, label %L_8001bc404, label %L_8001bc424_ft
L_8001bc47c:
  ; @pc 0x8001bc47c word 0xf001bd01
  %wp2699 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2699, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc480 word 0xaa0a03e0
  %r2700.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2700 = load i64, ptr %r2700.p, align 8, !alias.scope !3, !noalias !4
  %t2701 = or i64 0, %r2700
  %wp2702 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2701, ptr %wp2702, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc484 word 0xf9453021
  %r2703.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2703 = load i64, ptr %r2703.p, align 8, !alias.scope !3, !noalias !4
  %t2704 = add i64 %r2703, 2656
  %gmp2705 = inttoptr i64 %t2704 to ptr
  %gml2706 = load i64, ptr %gmp2705, align 1, !alias.scope !4, !noalias !3
  %wp2707 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2706, ptr %wp2707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc488 word 0xaa1303f9
  %r2708.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2708 = load i64, ptr %r2708.p, align 8, !alias.scope !3, !noalias !4
  %t2709 = or i64 0, %r2708
  %wp2710 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2709, ptr %wp2710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc48c word 0xaa1603f3
  %r2711.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2711 = load i64, ptr %r2711.p, align 8, !alias.scope !3, !noalias !4
  %t2712 = or i64 0, %r2711
  %wp2713 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2712, ptr %wp2713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc490 word 0x2a0403f6
  %r2714.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2714 = load i64, ptr %r2714.p, align 8, !alias.scope !3, !noalias !4
  %c2715 = trunc i64 %r2714 to i32
  %t2716 = or i32 0, %c2715
  %c2717 = zext i32 %t2716 to i64
  %wp2718 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2717, ptr %wp2718, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc494 word 0xaa0303f7
  %r2719.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2719 = load i64, ptr %r2719.p, align 8, !alias.scope !3, !noalias !4
  %t2720 = or i64 0, %r2719
  %wp2721 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2720, ptr %wp2721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc498 word 0x2a0503fb
  %r2722.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2722 = load i64, ptr %r2722.p, align 8, !alias.scope !3, !noalias !4
  %c2723 = trunc i64 %r2722 to i32
  %t2724 = or i32 0, %c2723
  %c2725 = zext i32 %t2724 to i64
  %wp2726 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2725, ptr %wp2726, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc49c word 0xd63f0100
  %r2727.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2727 = load i64, ptr %r2727.p, align 8, !alias.scope !3, !noalias !4
  %fp2728 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2727, ptr %fp2728, align 8, !alias.scope !3, !noalias !4
  %wp2729 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558176, ptr %wp2729, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc4a0 word 0x9001bded
  %wp2730 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2730, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4a4 word 0x9001bdec
  %wp2731 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4a8 word 0xf941b5ad
  %r2732.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2732 = load i64, ptr %r2732.p, align 8, !alias.scope !3, !noalias !4
  %t2733 = add i64 %r2732, 872
  %gmp2734 = inttoptr i64 %t2733 to ptr
  %gml2735 = load i64, ptr %gmp2734, align 1, !alias.scope !4, !noalias !3
  %wp2736 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2735, ptr %wp2736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4ac word 0xd001bc8b
  %wp2737 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2737, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4b0 word 0xd001bc89
  %wp2738 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4b4 word 0xf941bd8c
  %r2739.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2739 = load i64, ptr %r2739.p, align 8, !alias.scope !3, !noalias !4
  %t2740 = add i64 %r2739, 888
  %gmp2741 = inttoptr i64 %t2740 to ptr
  %gml2742 = load i64, ptr %gmp2741, align 1, !alias.scope !4, !noalias !3
  %wp2743 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2742, ptr %wp2743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4b8 word 0xf943016b
  %r2744.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2744 = load i64, ptr %r2744.p, align 8, !alias.scope !3, !noalias !4
  %t2745 = add i64 %r2744, 1536
  %gmp2746 = inttoptr i64 %t2745 to ptr
  %gml2747 = load i64, ptr %gmp2746, align 1, !alias.scope !4, !noalias !3
  %wp2748 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2747, ptr %wp2748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4bc word 0x2a1b03e5
  %r2749.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2749 = load i64, ptr %r2749.p, align 8, !alias.scope !3, !noalias !4
  %c2750 = trunc i64 %r2749 to i32
  %t2751 = or i32 0, %c2750
  %c2752 = zext i32 %t2751 to i64
  %wp2753 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2752, ptr %wp2753, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4c0 word 0xaa1703e3
  %r2754.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2754 = load i64, ptr %r2754.p, align 8, !alias.scope !3, !noalias !4
  %t2755 = or i64 0, %r2754
  %wp2756 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2755, ptr %wp2756, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4c4 word 0xf94007ea
  %r2757.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2757 = load i64, ptr %r2757.p, align 8, !alias.scope !3, !noalias !4
  %t2758 = add i64 %r2757, 8
  %gmp2759 = inttoptr i64 %t2758 to ptr
  %gml2760 = load i64, ptr %gmp2759, align 1, !alias.scope !4, !noalias !3
  %wp2761 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2760, ptr %wp2761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4c8 word 0x2a1603e4
  %r2762.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2762 = load i64, ptr %r2762.p, align 8, !alias.scope !3, !noalias !4
  %c2763 = trunc i64 %r2762 to i32
  %t2764 = or i32 0, %c2763
  %c2765 = zext i32 %t2764 to i64
  %wp2766 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2765, ptr %wp2766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4cc word 0xaa1303f6
  %r2767.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2767 = load i64, ptr %r2767.p, align 8, !alias.scope !3, !noalias !4
  %t2768 = or i64 0, %r2767
  %wp2769 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2768, ptr %wp2769, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4d0 word 0xf9430d29
  %r2770.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2770 = load i64, ptr %r2770.p, align 8, !alias.scope !3, !noalias !4
  %t2771 = add i64 %r2770, 1560
  %gmp2772 = inttoptr i64 %t2771 to ptr
  %gml2773 = load i64, ptr %gmp2772, align 1, !alias.scope !4, !noalias !3
  %wp2774 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2773, ptr %wp2774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4d4 word 0xaa1903f3
  %r2775.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2775 = load i64, ptr %r2775.p, align 8, !alias.scope !3, !noalias !4
  %t2776 = or i64 0, %r2775
  %wp2777 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2776, ptr %wp2777, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4d8 word 0xb94017fb
  %r2778.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2778 = load i64, ptr %r2778.p, align 8, !alias.scope !3, !noalias !4
  %t2779 = add i64 %r2778, 20
  %gmp2780 = inttoptr i64 %t2779 to ptr
  %gml2781 = load i32, ptr %gmp2780, align 1, !alias.scope !4, !noalias !3
  %c2782 = zext i32 %gml2781 to i64
  %wp2783 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2782, ptr %wp2783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4dc word 0xb4ffe1e0
  %r2784.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2784 = load i64, ptr %r2784.p, align 8, !alias.scope !3, !noalias !4
  %cmp2785 = icmp eq i64 %r2784, 0
  br i1 %cmp2785, label %L_8001bc118, label %L_8001bc4e0_ft
L_8001bc4e4:
  ; @pc 0x8001bc4e4 word 0xf9400aa0
  %r2786.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2786 = load i64, ptr %r2786.p, align 8, !alias.scope !3, !noalias !4
  %t2787 = add i64 %r2786, 16
  %gmp2788 = inttoptr i64 %t2787 to ptr
  %gml2789 = load i64, ptr %gmp2788, align 1, !alias.scope !4, !noalias !3
  %wp2790 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2789, ptr %wp2790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4e8 word 0xf9400008
  %r2791.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2791 = load i64, ptr %r2791.p, align 8, !alias.scope !3, !noalias !4
  %gmp2792 = inttoptr i64 %r2791 to ptr
  %gml2793 = load i64, ptr %gmp2792, align 1, !alias.scope !4, !noalias !3
  %wp2794 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2793, ptr %wp2794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4ec word 0xf9402908
  %r2795.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2795 = load i64, ptr %r2795.p, align 8, !alias.scope !3, !noalias !4
  %t2796 = add i64 %r2795, 80
  %gmp2797 = inttoptr i64 %t2796 to ptr
  %gml2798 = load i64, ptr %gmp2797, align 1, !alias.scope !4, !noalias !3
  %wp2799 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2798, ptr %wp2799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4f0 word 0xd63f0100
  %r2800.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2800 = load i64, ptr %r2800.p, align 8, !alias.scope !3, !noalias !4
  %fp2801 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2800, ptr %fp2801, align 8, !alias.scope !3, !noalias !4
  %wp2802 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558260, ptr %wp2802, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc4f4 word 0x29422408
  %r2803.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2803 = load i64, ptr %r2803.p, align 8, !alias.scope !3, !noalias !4
  %t2804 = add i64 %r2803, 16
  %t2805 = add i64 %t2804, 4
  %gmp2806 = inttoptr i64 %t2804 to ptr
  %gml2807 = load i32, ptr %gmp2806, align 1, !alias.scope !4, !noalias !3
  %c2808 = zext i32 %gml2807 to i64
  %gmp2809 = inttoptr i64 %t2805 to ptr
  %gml2810 = load i32, ptr %gmp2809, align 1, !alias.scope !4, !noalias !3
  %c2811 = zext i32 %gml2810 to i64
  %wp2812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2808, ptr %wp2812, align 8, !alias.scope !3, !noalias !4
  %wp2813 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2811, ptr %wp2813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4f8 word 0x6b09011f
  %r2814.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2814 = load i64, ptr %r2814.p, align 8, !alias.scope !3, !noalias !4
  %c2815 = trunc i64 %r2814 to i32
  %r2816.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2816 = load i64, ptr %r2816.p, align 8, !alias.scope !3, !noalias !4
  %c2817 = trunc i64 %r2816 to i32
  %t2818 = sub i32 %c2815, %c2817
  %fn2819 = icmp slt i32 %t2818, 0
  %fz2820 = icmp eq i32 %t2818, 0
  %fc2821 = icmp uge i32 %c2815, %c2817
  %fx12822 = xor i32 %c2815, %c2817
  %fx22823 = xor i32 %c2815, %t2818
  %fva2824 = and i32 %fx12822, %fx22823
  %fv2825 = icmp slt i32 %fva2824, 0
  %nz2826 = zext i1 %fn2819 to i64
  %zz2827 = zext i1 %fz2820 to i64
  %cz2828 = zext i1 %fc2821 to i64
  %vz2829 = zext i1 %fv2825 to i64
  %ns2830 = shl i64 %nz2826, 31
  %zs2831 = shl i64 %zz2827, 30
  %cs2832 = shl i64 %cz2828, 29
  %vs2833 = shl i64 %vz2829, 28
  %nzor2834 = or i64 %ns2830, %zs2831
  %cvor2835 = or i64 %cs2832, %vs2833
  %nzcv2836 = or i64 %nzor2834, %cvor2835
  %wp2837 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2836, ptr %wp2837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc4fc word 0x54006663
  %r2838.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2838 = load i64, ptr %r2838.p, align 8, !alias.scope !3, !noalias !4
  %fsh2840 = lshr i64 %r2838, 29
  %ftr2841 = trunc i64 %fsh2840 to i1
  %cond2839 = xor i1 %ftr2841, true
  br i1 %cond2839, label %L_8001bd1c8, label %L_8001bc500_ft
L_8001bc514:
  ; @pc 0x8001bc514 word 0xaa1303f7
  %r2861.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2861 = load i64, ptr %r2861.p, align 8, !alias.scope !3, !noalias !4
  %t2862 = or i64 0, %r2861
  %wp2863 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2862, ptr %wp2863, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc518 word 0xaa1603f3
  %r2864.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2864 = load i64, ptr %r2864.p, align 8, !alias.scope !3, !noalias !4
  %t2865 = or i64 0, %r2864
  %wp2866 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2865, ptr %wp2866, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc51c word 0x2a0403f6
  %r2867.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2867 = load i64, ptr %r2867.p, align 8, !alias.scope !3, !noalias !4
  %c2868 = trunc i64 %r2867 to i32
  %t2869 = or i32 0, %c2868
  %c2870 = zext i32 %t2869 to i64
  %wp2871 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2870, ptr %wp2871, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc520 word 0xd63f0100
  %r2872.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2872 = load i64, ptr %r2872.p, align 8, !alias.scope !3, !noalias !4
  %fp2873 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2872, ptr %fp2873, align 8, !alias.scope !3, !noalias !4
  %wp2874 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558308, ptr %wp2874, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc524 word 0x2a1603e4
  %r2875.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2875 = load i64, ptr %r2875.p, align 8, !alias.scope !3, !noalias !4
  %c2876 = trunc i64 %r2875 to i32
  %t2877 = or i32 0, %c2876
  %c2878 = zext i32 %t2877 to i64
  %wp2879 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2878, ptr %wp2879, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc528 word 0xaa1303f6
  %r2880.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2880 = load i64, ptr %r2880.p, align 8, !alias.scope !3, !noalias !4
  %t2881 = or i64 0, %r2880
  %wp2882 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2881, ptr %wp2882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc52c word 0xaa1703f3
  %r2883.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2883 = load i64, ptr %r2883.p, align 8, !alias.scope !3, !noalias !4
  %t2884 = or i64 0, %r2883
  %wp2885 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2884, ptr %wp2885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc530 word 0x17fffe93
  br label %L_8001bbf7c
L_8001bc534:
  ; @pc 0x8001bc534 word 0xf9400aa0
  %r2886.p = getelementptr inbounds i8, ptr %c, i64 168
  %r2886 = load i64, ptr %r2886.p, align 8, !alias.scope !3, !noalias !4
  %t2887 = add i64 %r2886, 16
  %gmp2888 = inttoptr i64 %t2887 to ptr
  %gml2889 = load i64, ptr %gmp2888, align 1, !alias.scope !4, !noalias !3
  %wp2890 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2889, ptr %wp2890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc538 word 0x2a0403f4
  %r2891.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2891 = load i64, ptr %r2891.p, align 8, !alias.scope !3, !noalias !4
  %c2892 = trunc i64 %r2891 to i32
  %t2893 = or i32 0, %c2892
  %c2894 = zext i32 %t2893 to i64
  %wp2895 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %c2894, ptr %wp2895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc53c word 0xf9400008
  %r2896.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2896 = load i64, ptr %r2896.p, align 8, !alias.scope !3, !noalias !4
  %gmp2897 = inttoptr i64 %r2896 to ptr
  %gml2898 = load i64, ptr %gmp2897, align 1, !alias.scope !4, !noalias !3
  %wp2899 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2898, ptr %wp2899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc540 word 0xf9402d08
  %r2900.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2900 = load i64, ptr %r2900.p, align 8, !alias.scope !3, !noalias !4
  %t2901 = add i64 %r2900, 88
  %gmp2902 = inttoptr i64 %t2901 to ptr
  %gml2903 = load i64, ptr %gmp2902, align 1, !alias.scope !4, !noalias !3
  %wp2904 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2903, ptr %wp2904, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc544 word 0xd63f0100
  %r2905.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2905 = load i64, ptr %r2905.p, align 8, !alias.scope !3, !noalias !4
  %fp2906 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2905, ptr %fp2906, align 8, !alias.scope !3, !noalias !4
  %wp2907 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558344, ptr %wp2907, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc548 word 0xb9800009
  %r2908.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2908 = load i64, ptr %r2908.p, align 8, !alias.scope !3, !noalias !4
  %gmp2909 = inttoptr i64 %r2908 to ptr
  %gml2910 = load i32, ptr %gmp2909, align 1, !alias.scope !4, !noalias !3
  %c2911 = sext i32 %gml2910 to i64
  %wp2912 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c2911, ptr %wp2912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc54c word 0x34ffc1a9
  %r2913.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2913 = load i64, ptr %r2913.p, align 8, !alias.scope !3, !noalias !4
  %c2914 = trunc i64 %r2913 to i32
  %cmp2915 = icmp eq i32 %c2914, 0
  br i1 %cmp2915, label %L_8001bbd80, label %L_8001bc550_ft
L_8001bc568:
  ; @pc 0x8001bc568 word 0xf940010c
  %r2943.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2943 = load i64, ptr %r2943.p, align 8, !alias.scope !3, !noalias !4
  %gmp2944 = inttoptr i64 %r2943 to ptr
  %gml2945 = load i64, ptr %gmp2944, align 1, !alias.scope !4, !noalias !3
  %wp2946 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2945, ptr %wp2946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc56c word 0xb9402d8d
  %r2947.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2947 = load i64, ptr %r2947.p, align 8, !alias.scope !3, !noalias !4
  %t2948 = add i64 %r2947, 44
  %gmp2949 = inttoptr i64 %t2948 to ptr
  %gml2950 = load i32, ptr %gmp2949, align 1, !alias.scope !4, !noalias !3
  %c2951 = zext i32 %gml2950 to i64
  %wp2952 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2951, ptr %wp2952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc570 word 0x71000dbf
  %r2953.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2953 = load i64, ptr %r2953.p, align 8, !alias.scope !3, !noalias !4
  %c2954 = trunc i64 %r2953 to i32
  %t2955 = sub i32 %c2954, 3
  %fn2956 = icmp slt i32 %t2955, 0
  %fz2957 = icmp eq i32 %t2955, 0
  %fc2958 = icmp uge i32 %c2954, 3
  %fx12959 = xor i32 %c2954, 3
  %fx22960 = xor i32 %c2954, %t2955
  %fva2961 = and i32 %fx12959, %fx22960
  %fv2962 = icmp slt i32 %fva2961, 0
  %nz2963 = zext i1 %fn2956 to i64
  %zz2964 = zext i1 %fz2957 to i64
  %cz2965 = zext i1 %fc2958 to i64
  %vz2966 = zext i1 %fv2962 to i64
  %ns2967 = shl i64 %nz2963, 31
  %zs2968 = shl i64 %zz2964, 30
  %cs2969 = shl i64 %cz2965, 29
  %vs2970 = shl i64 %vz2966, 28
  %nzor2971 = or i64 %ns2967, %zs2968
  %cvor2972 = or i64 %cs2969, %vs2970
  %nzcv2973 = or i64 %nzor2971, %cvor2972
  %wp2974 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2973, ptr %wp2974, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc574 word 0x54000441
  %r2975.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2975 = load i64, ptr %r2975.p, align 8, !alias.scope !3, !noalias !4
  %fsh2977 = lshr i64 %r2975, 30
  %ftr2978 = trunc i64 %fsh2977 to i1
  %cond2976 = xor i1 %ftr2978, true
  br i1 %cond2976, label %L_8001bc5fc, label %L_8001bc578_ft
L_8001bc58c:
  ; @pc 0x8001bc58c word 0x37000092
  %r3018.p = getelementptr inbounds i8, ptr %c, i64 144
  %r3018 = load i64, ptr %r3018.p, align 8, !alias.scope !3, !noalias !4
  %t3019 = and i64 %r3018, 1
  %cmp3020 = icmp ne i64 %t3019, 0
  br i1 %cmp3020, label %L_8001bc59c, label %L_8001bc590_ft
L_8001bc59c:
  ; @pc 0x8001bc59c word 0xf9400980
  %r3032.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3032 = load i64, ptr %r3032.p, align 8, !alias.scope !3, !noalias !4
  %t3033 = add i64 %r3032, 16
  %gmp3034 = inttoptr i64 %t3033 to ptr
  %gml3035 = load i64, ptr %gmp3034, align 1, !alias.scope !4, !noalias !3
  %wp3036 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3035, ptr %wp3036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5a0 word 0x17fffeb3
  br label %L_8001bc06c
L_8001bc5a4:
  ; @pc 0x8001bc5a4 word 0xd001c800
  %wp3037 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp3037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5a8 word 0x91142000
  %r3038.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3038 = load i64, ptr %r3038.p, align 8, !alias.scope !3, !noalias !4
  %t3039 = add i64 %r3038, 1288
  %wp3040 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3039, ptr %wp3040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5ac word 0x2a0403fb
  %r3041.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3041 = load i64, ptr %r3041.p, align 8, !alias.scope !3, !noalias !4
  %c3042 = trunc i64 %r3041 to i32
  %t3043 = or i32 0, %c3042
  %c3044 = zext i32 %t3043 to i64
  %wp3045 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c3044, ptr %wp3045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5b0 word 0xaa0303fc
  %r3046.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3046 = load i64, ptr %r3046.p, align 8, !alias.scope !3, !noalias !4
  %t3047 = or i64 0, %r3046
  %wp3048 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %t3047, ptr %wp3048, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5b4 word 0x94a79cfb
  %wp3049 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558456, ptr %wp3049, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc5b8 word 0xaa1c03e3
  %r3050.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3050 = load i64, ptr %r3050.p, align 8, !alias.scope !3, !noalias !4
  %t3051 = or i64 0, %r3050
  %wp3052 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3051, ptr %wp3052, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5bc word 0x2a1b03e4
  %r3053.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3053 = load i64, ptr %r3053.p, align 8, !alias.scope !3, !noalias !4
  %c3054 = trunc i64 %r3053 to i32
  %t3055 = or i32 0, %c3054
  %c3056 = zext i32 %t3055 to i64
  %wp3057 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3056, ptr %wp3057, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5c0 word 0x34ffc9c0
  %r3058.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3058 = load i64, ptr %r3058.p, align 8, !alias.scope !3, !noalias !4
  %c3059 = trunc i64 %r3058 to i32
  %cmp3060 = icmp eq i32 %c3059, 0
  br i1 %cmp3060, label %L_8001bbef8, label %L_8001bc5c4_ft
L_8001bc5e4:
  ; @pc 0x8001bc5e4 word 0xaa0b03ee
  %r3078.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3078 = load i64, ptr %r3078.p, align 8, !alias.scope !3, !noalias !4
  %t3079 = or i64 0, %r3078
  %wp3080 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t3079, ptr %wp3080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5e8 word 0xaa0a03ef
  %r3081.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3081 = load i64, ptr %r3081.p, align 8, !alias.scope !3, !noalias !4
  %t3082 = or i64 0, %r3081
  %wp3083 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3082, ptr %wp3083, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc5ec
L_8001bc5ec:
  ; @pc 0x8001bc5ec word 0x384015b0
  %r3084.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3084 = load i64, ptr %r3084.p, align 8, !alias.scope !3, !noalias !4
  %t3085 = add i64 %r3084, 1
  %gmp3086 = inttoptr i64 %r3084 to ptr
  %gml3087 = load i8, ptr %gmp3086, align 1, !alias.scope !4, !noalias !3
  %c3088 = zext i8 %gml3087 to i64
  %wp3089 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %t3085, ptr %wp3089, align 8, !alias.scope !3, !noalias !4
  %wp3090 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %c3088, ptr %wp3090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5f0 word 0x384015f1
  %r3091.p = getelementptr inbounds i8, ptr %c, i64 120
  %r3091 = load i64, ptr %r3091.p, align 8, !alias.scope !3, !noalias !4
  %t3092 = add i64 %r3091, 1
  %gmp3093 = inttoptr i64 %r3091 to ptr
  %gml3094 = load i8, ptr %gmp3093, align 1, !alias.scope !4, !noalias !3
  %c3095 = zext i8 %gml3094 to i64
  %wp3096 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t3092, ptr %wp3096, align 8, !alias.scope !3, !noalias !4
  %wp3097 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %c3095, ptr %wp3097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5f4 word 0x6b11021f
  %r3098.p = getelementptr inbounds i8, ptr %c, i64 128
  %r3098 = load i64, ptr %r3098.p, align 8, !alias.scope !3, !noalias !4
  %c3099 = trunc i64 %r3098 to i32
  %r3100.p = getelementptr inbounds i8, ptr %c, i64 136
  %r3100 = load i64, ptr %r3100.p, align 8, !alias.scope !3, !noalias !4
  %c3101 = trunc i64 %r3100 to i32
  %t3102 = sub i32 %c3099, %c3101
  %fn3103 = icmp slt i32 %t3102, 0
  %fz3104 = icmp eq i32 %t3102, 0
  %fc3105 = icmp uge i32 %c3099, %c3101
  %fx13106 = xor i32 %c3099, %c3101
  %fx23107 = xor i32 %c3099, %t3102
  %fva3108 = and i32 %fx13106, %fx23107
  %fv3109 = icmp slt i32 %fva3108, 0
  %nz3110 = zext i1 %fn3103 to i64
  %zz3111 = zext i1 %fz3104 to i64
  %cz3112 = zext i1 %fc3105 to i64
  %vz3113 = zext i1 %fv3109 to i64
  %ns3114 = shl i64 %nz3110, 31
  %zs3115 = shl i64 %zz3111, 30
  %cs3116 = shl i64 %cz3112, 29
  %vs3117 = shl i64 %vz3113, 28
  %nzor3118 = or i64 %ns3114, %zs3115
  %cvor3119 = or i64 %cs3116, %vs3117
  %nzcv3120 = or i64 %nzor3118, %cvor3119
  %wp3121 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3120, ptr %wp3121, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5f8 word 0x54005ec0
  %r3122.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3122 = load i64, ptr %r3122.p, align 8, !alias.scope !3, !noalias !4
  %fsh3124 = lshr i64 %r3122, 30
  %cond3123 = trunc i64 %fsh3124 to i1
  br i1 %cond3123, label %L_8001bd1d0, label %L_8001bc5fc
L_8001bc5fc:
  ; @pc 0x8001bc5fc word 0x91002108
  %r3125.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3125 = load i64, ptr %r3125.p, align 8, !alias.scope !3, !noalias !4
  %t3126 = add i64 %r3125, 8
  %wp3127 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3126, ptr %wp3127, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc600 word 0xeb09011f
  %r3128.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3128 = load i64, ptr %r3128.p, align 8, !alias.scope !3, !noalias !4
  %r3129.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3129 = load i64, ptr %r3129.p, align 8, !alias.scope !3, !noalias !4
  %t3130 = sub i64 %r3128, %r3129
  %fn3131 = icmp slt i64 %t3130, 0
  %fz3132 = icmp eq i64 %t3130, 0
  %fc3133 = icmp uge i64 %r3128, %r3129
  %fx13134 = xor i64 %r3128, %r3129
  %fx23135 = xor i64 %r3128, %t3130
  %fva3136 = and i64 %fx13134, %fx23135
  %fv3137 = icmp slt i64 %fva3136, 0
  %nz3138 = zext i1 %fn3131 to i64
  %zz3139 = zext i1 %fz3132 to i64
  %cz3140 = zext i1 %fc3133 to i64
  %vz3141 = zext i1 %fv3137 to i64
  %ns3142 = shl i64 %nz3138, 31
  %zs3143 = shl i64 %zz3139, 30
  %cs3144 = shl i64 %cz3140, 29
  %vs3145 = shl i64 %vz3141, 28
  %nzor3146 = or i64 %ns3142, %zs3143
  %cvor3147 = or i64 %cs3144, %vs3145
  %nzcv3148 = or i64 %nzor3146, %cvor3147
  %wp3149 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3148, ptr %wp3149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc604 word 0x54fffb21
  %r3150.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3150 = load i64, ptr %r3150.p, align 8, !alias.scope !3, !noalias !4
  %fsh3152 = lshr i64 %r3150, 30
  %ftr3153 = trunc i64 %fsh3152 to i1
  %cond3151 = xor i1 %ftr3153, true
  br i1 %cond3151, label %L_8001bc568, label %L_8001bc608_ft
L_8001bc60c:
  ; @pc 0x8001bc60c word 0xb9400388
  %r3154.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3154 = load i64, ptr %r3154.p, align 8, !alias.scope !3, !noalias !4
  %gmp3155 = inttoptr i64 %r3154 to ptr
  %gml3156 = load i32, ptr %gmp3155, align 1, !alias.scope !4, !noalias !3
  %c3157 = zext i32 %gml3156 to i64
  %wp3158 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3157, ptr %wp3158, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc610 word 0x12077518
  %r3159.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3159 = load i64, ptr %r3159.p, align 8, !alias.scope !3, !noalias !4
  %c3160 = trunc i64 %r3159 to i32
  %t3161 = and i32 %c3160, -25165825
  %c3162 = zext i32 %t3161 to i64
  %wp3163 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3162, ptr %wp3163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc614 word 0x17fffe8a
  br label %L_8001bc03c
L_8001bc618:
  ; @pc 0x8001bc618 word 0xf94006a8
  %r3164.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3164 = load i64, ptr %r3164.p, align 8, !alias.scope !3, !noalias !4
  %t3165 = add i64 %r3164, 8
  %gmp3166 = inttoptr i64 %t3165 to ptr
  %gml3167 = load i64, ptr %gmp3166, align 1, !alias.scope !4, !noalias !3
  %wp3168 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3167, ptr %wp3168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc61c word 0xf9400908
  %r3169.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3169 = load i64, ptr %r3169.p, align 8, !alias.scope !3, !noalias !4
  %t3170 = add i64 %r3169, 16
  %gmp3171 = inttoptr i64 %t3170 to ptr
  %gml3172 = load i64, ptr %gmp3171, align 1, !alias.scope !4, !noalias !3
  %wp3173 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3172, ptr %wp3173, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc620 word 0xf9402908
  %r3174.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3174 = load i64, ptr %r3174.p, align 8, !alias.scope !3, !noalias !4
  %t3175 = add i64 %r3174, 80
  %gmp3176 = inttoptr i64 %t3175 to ptr
  %gml3177 = load i64, ptr %gmp3176, align 1, !alias.scope !4, !noalias !3
  %wp3178 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3177, ptr %wp3178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc624 word 0xb9401909
  %r3179.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3179 = load i64, ptr %r3179.p, align 8, !alias.scope !3, !noalias !4
  %t3180 = add i64 %r3179, 24
  %gmp3181 = inttoptr i64 %t3180 to ptr
  %gml3182 = load i32, ptr %gmp3181, align 1, !alias.scope !4, !noalias !3
  %c3183 = zext i32 %gml3182 to i64
  %wp3184 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3183, ptr %wp3184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc628 word 0x8b090108
  %r3185.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3185 = load i64, ptr %r3185.p, align 8, !alias.scope !3, !noalias !4
  %r3186.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3186 = load i64, ptr %r3186.p, align 8, !alias.scope !3, !noalias !4
  %t3187 = add i64 %r3185, %r3186
  %wp3188 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3187, ptr %wp3188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc62c word 0xb9400109
  %r3189.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3189 = load i64, ptr %r3189.p, align 8, !alias.scope !3, !noalias !4
  %gmp3190 = inttoptr i64 %r3189 to ptr
  %gml3191 = load i32, ptr %gmp3190, align 1, !alias.scope !4, !noalias !3
  %c3192 = zext i32 %gml3191 to i64
  %wp3193 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3192, ptr %wp3193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc630 word 0x6b38213f
  %r3194.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3194 = load i64, ptr %r3194.p, align 8, !alias.scope !3, !noalias !4
  %c3195 = trunc i64 %r3194 to i32
  %r3196.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3196 = load i64, ptr %r3196.p, align 8, !alias.scope !3, !noalias !4
  %c3197 = trunc i64 %r3196 to i16
  %c3198 = zext i16 %c3197 to i64
  %c3199 = trunc i64 %c3198 to i32
  %t3200 = sub i32 %c3195, %c3199
  %fn3201 = icmp slt i32 %t3200, 0
  %fz3202 = icmp eq i32 %t3200, 0
  %fc3203 = icmp uge i32 %c3195, %c3199
  %fx13204 = xor i32 %c3195, %c3199
  %fx23205 = xor i32 %c3195, %t3200
  %fva3206 = and i32 %fx13204, %fx23205
  %fv3207 = icmp slt i32 %fva3206, 0
  %nz3208 = zext i1 %fn3201 to i64
  %zz3209 = zext i1 %fz3202 to i64
  %cz3210 = zext i1 %fc3203 to i64
  %vz3211 = zext i1 %fv3207 to i64
  %ns3212 = shl i64 %nz3208, 31
  %zs3213 = shl i64 %zz3209, 30
  %cs3214 = shl i64 %cz3210, 29
  %vs3215 = shl i64 %vz3211, 28
  %nzor3216 = or i64 %ns3212, %zs3213
  %cvor3217 = or i64 %cs3214, %vs3215
  %nzcv3218 = or i64 %nzor3216, %cvor3217
  %wp3219 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3218, ptr %wp3219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc634 word 0x5400078d
  %r3220.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3220 = load i64, ptr %r3220.p, align 8, !alias.scope !3, !noalias !4
  %fsh3222 = lshr i64 %r3220, 30
  %ftr3223 = trunc i64 %fsh3222 to i1
  %fsh3224 = lshr i64 %r3220, 31
  %ftr3225 = trunc i64 %fsh3224 to i1
  %fsh3226 = lshr i64 %r3220, 28
  %ftr3227 = trunc i64 %fsh3226 to i1
  %fnz3228 = xor i1 %ftr3223, true
  %feq3229 = icmp eq i1 %ftr3225, %ftr3227
  %fgt3230 = and i1 %fnz3228, %feq3229
  %cond3221 = xor i1 %fgt3230, true
  br i1 %cond3221, label %L_8001bc724, label %L_8001bc638_ft
L_8001bc670:
  ; @pc 0x8001bc670 word 0xb9403c09
  %r3317.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3317 = load i64, ptr %r3317.p, align 8, !alias.scope !3, !noalias !4
  %t3318 = add i64 %r3317, 60
  %gmp3319 = inttoptr i64 %t3318 to ptr
  %gml3320 = load i32, ptr %gmp3319, align 1, !alias.scope !4, !noalias !3
  %c3321 = zext i32 %gml3320 to i64
  %wp3322 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3321, ptr %wp3322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc674 word 0x0b080128
  %r3323.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3323 = load i64, ptr %r3323.p, align 8, !alias.scope !3, !noalias !4
  %c3324 = trunc i64 %r3323 to i32
  %r3325.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3325 = load i64, ptr %r3325.p, align 8, !alias.scope !3, !noalias !4
  %c3326 = trunc i64 %r3325 to i32
  %t3327 = add i32 %c3324, %c3326
  %c3328 = zext i32 %t3327 to i64
  %wp3329 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3328, ptr %wp3329, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc678
L_8001bc678:
  ; @pc 0x8001bc678 word 0x531e751a
  %r3330.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3330 = load i64, ptr %r3330.p, align 8, !alias.scope !3, !noalias !4
  %c3331 = trunc i64 %r3330 to i32
  %ror3332 = call i32 @llvm.fshr.i32(i32 %c3331, i32 %c3331, i32 30)
  %t3333 = and i32 %ror3332, -4
  %c3334 = zext i32 %t3333 to i64
  %wp3335 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3334, ptr %wp3335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc67c word 0x17fffe37
  br label %L_8001bbf58
L_8001bc680:
  ; @pc 0x8001bc680 word 0xf001bd00
  %wp3336 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3336, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc684 word 0xaa0303f9
  %r3337.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3337 = load i64, ptr %r3337.p, align 8, !alias.scope !3, !noalias !4
  %t3338 = or i64 0, %r3337
  %wp3339 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3338, ptr %wp3339, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc688 word 0xf9453400
  %r3340.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3340 = load i64, ptr %r3340.p, align 8, !alias.scope !3, !noalias !4
  %t3341 = add i64 %r3340, 2664
  %gmp3342 = inttoptr i64 %t3341 to ptr
  %gml3343 = load i64, ptr %gmp3342, align 1, !alias.scope !4, !noalias !3
  %wp3344 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3343, ptr %wp3344, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc68c word 0xb90007e4
  %r3345.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3345 = load i64, ptr %r3345.p, align 8, !alias.scope !3, !noalias !4
  %t3346 = add i64 %r3345, 4
  %r3347.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3347 = load i64, ptr %r3347.p, align 8, !alias.scope !3, !noalias !4
  %c3348 = trunc i64 %r3347 to i32
  %gmp3349 = inttoptr i64 %t3346 to ptr
  store i32 %c3348, ptr %gmp3349, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc690 word 0x2a0503f7
  %r3350.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3350 = load i64, ptr %r3350.p, align 8, !alias.scope !3, !noalias !4
  %c3351 = trunc i64 %r3350 to i32
  %t3352 = or i32 0, %c3351
  %c3353 = zext i32 %t3352 to i64
  %wp3354 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3353, ptr %wp3354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc694 word 0x94a79cc3
  %wp3355 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558680, ptr %wp3355, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc698 word 0x9001bded
  %wp3356 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc69c word 0x9001bdec
  %wp3357 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6a0 word 0xf941b5ad
  %r3358.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3358 = load i64, ptr %r3358.p, align 8, !alias.scope !3, !noalias !4
  %t3359 = add i64 %r3358, 872
  %gmp3360 = inttoptr i64 %t3359 to ptr
  %gml3361 = load i64, ptr %gmp3360, align 1, !alias.scope !4, !noalias !3
  %wp3362 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3361, ptr %wp3362, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6a4 word 0xd001bc8b
  %wp3363 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3363, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6a8 word 0xd001bc89
  %wp3364 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6ac word 0xf941bd8c
  %r3365.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3365 = load i64, ptr %r3365.p, align 8, !alias.scope !3, !noalias !4
  %t3366 = add i64 %r3365, 888
  %gmp3367 = inttoptr i64 %t3366 to ptr
  %gml3368 = load i64, ptr %gmp3367, align 1, !alias.scope !4, !noalias !3
  %wp3369 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3368, ptr %wp3369, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6b0 word 0xf943016b
  %r3370.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3370 = load i64, ptr %r3370.p, align 8, !alias.scope !3, !noalias !4
  %t3371 = add i64 %r3370, 1536
  %gmp3372 = inttoptr i64 %t3371 to ptr
  %gml3373 = load i64, ptr %gmp3372, align 1, !alias.scope !4, !noalias !3
  %wp3374 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3373, ptr %wp3374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6b4 word 0x2a1703e5
  %r3375.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3375 = load i64, ptr %r3375.p, align 8, !alias.scope !3, !noalias !4
  %c3376 = trunc i64 %r3375 to i32
  %t3377 = or i32 0, %c3376
  %c3378 = zext i32 %t3377 to i64
  %wp3379 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3378, ptr %wp3379, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6b8 word 0xaa1903e3
  %r3380.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3380 = load i64, ptr %r3380.p, align 8, !alias.scope !3, !noalias !4
  %t3381 = or i64 0, %r3380
  %wp3382 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3381, ptr %wp3382, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6bc word 0xf94007ea
  %r3383.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3383 = load i64, ptr %r3383.p, align 8, !alias.scope !3, !noalias !4
  %t3384 = add i64 %r3383, 8
  %gmp3385 = inttoptr i64 %t3384 to ptr
  %gml3386 = load i64, ptr %gmp3385, align 1, !alias.scope !4, !noalias !3
  %wp3387 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3386, ptr %wp3387, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6c0 word 0xf9430d29
  %r3388.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3388 = load i64, ptr %r3388.p, align 8, !alias.scope !3, !noalias !4
  %t3389 = add i64 %r3388, 1560
  %gmp3390 = inttoptr i64 %t3389 to ptr
  %gml3391 = load i64, ptr %gmp3390, align 1, !alias.scope !4, !noalias !3
  %wp3392 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3391, ptr %wp3392, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6c4 word 0xb94007e4
  %r3393.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3393 = load i64, ptr %r3393.p, align 8, !alias.scope !3, !noalias !4
  %t3394 = add i64 %r3393, 4
  %gmp3395 = inttoptr i64 %t3394 to ptr
  %gml3396 = load i32, ptr %gmp3395, align 1, !alias.scope !4, !noalias !3
  %c3397 = zext i32 %gml3396 to i64
  %wp3398 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3397, ptr %wp3398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6c8 word 0x34ffd120
  %r3399.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3399 = load i64, ptr %r3399.p, align 8, !alias.scope !3, !noalias !4
  %c3400 = trunc i64 %r3399 to i32
  %cmp3401 = icmp eq i32 %c3400, 0
  br i1 %cmp3401, label %L_8001bc0ec, label %L_8001bc6cc_ft
L_8001bc724:
  ; @pc 0x8001bc724 word 0x2a1f03fa
  %t3470 = or i32 0, 0
  %c3471 = zext i32 %t3470 to i64
  %wp3472 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3471, ptr %wp3472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc728 word 0x17fffe0c
  br label %L_8001bbf58
L_8001bc72c:
  ; @pc 0x8001bc72c word 0xb9403c09
  %r3473.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3473 = load i64, ptr %r3473.p, align 8, !alias.scope !3, !noalias !4
  %t3474 = add i64 %r3473, 60
  %gmp3475 = inttoptr i64 %t3474 to ptr
  %gml3476 = load i32, ptr %gmp3475, align 1, !alias.scope !4, !noalias !3
  %c3477 = zext i32 %gml3476 to i64
  %wp3478 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3477, ptr %wp3478, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc730 word 0x0b080128
  %r3479.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3479 = load i64, ptr %r3479.p, align 8, !alias.scope !3, !noalias !4
  %c3480 = trunc i64 %r3479 to i32
  %r3481.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3481 = load i64, ptr %r3481.p, align 8, !alias.scope !3, !noalias !4
  %c3482 = trunc i64 %r3481 to i32
  %t3483 = add i32 %c3480, %c3482
  %c3484 = zext i32 %t3483 to i64
  %wp3485 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3484, ptr %wp3485, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc734 word 0xb9404c0a
  %r3486.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3486 = load i64, ptr %r3486.p, align 8, !alias.scope !3, !noalias !4
  %t3487 = add i64 %r3486, 76
  %gmp3488 = inttoptr i64 %t3487 to ptr
  %gml3489 = load i32, ptr %gmp3488, align 1, !alias.scope !4, !noalias !3
  %c3490 = zext i32 %gml3489 to i64
  %wp3491 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3490, ptr %wp3491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc738 word 0x0b0a0108
  %r3492.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3492 = load i64, ptr %r3492.p, align 8, !alias.scope !3, !noalias !4
  %c3493 = trunc i64 %r3492 to i32
  %r3494.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3494 = load i64, ptr %r3494.p, align 8, !alias.scope !3, !noalias !4
  %c3495 = trunc i64 %r3494 to i32
  %t3496 = add i32 %c3493, %c3495
  %c3497 = zext i32 %t3496 to i64
  %wp3498 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3497, ptr %wp3498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc73c word 0x17ffffcf
  br label %L_8001bc678
L_8001bc740:
  ; @pc 0x8001bc740 word 0x39048fff
  %r3499.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3499 = load i64, ptr %r3499.p, align 8, !alias.scope !3, !noalias !4
  %t3500 = add i64 %r3499, 291
  %c3501 = trunc i32 0 to i8
  %gmp3502 = inttoptr i64 %t3500 to ptr
  store i8 %c3501, ptr %gmp3502, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc744 word 0x910063e9
  %r3503.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3503 = load i64, ptr %r3503.p, align 8, !alias.scope !3, !noalias !4
  %t3504 = add i64 %r3503, 24
  %wp3505 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3504, ptr %wp3505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc748 word 0x90015481
  %wp3506 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp3506, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc74c word 0x91270c21
  %r3507.p = getelementptr inbounds i8, ptr %c, i64 8
  %r3507 = load i64, ptr %r3507.p, align 8, !alias.scope !3, !noalias !4
  %t3508 = add i64 %r3507, 2499
  %wp3509 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t3508, ptr %wp3509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc750 word 0xf9400908
  %r3510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3510 = load i64, ptr %r3510.p, align 8, !alias.scope !3, !noalias !4
  %t3511 = add i64 %r3510, 16
  %gmp3512 = inttoptr i64 %t3511 to ptr
  %gml3513 = load i64, ptr %gmp3512, align 1, !alias.scope !4, !noalias !3
  %wp3514 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3513, ptr %wp3514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc754 word 0x91003129
  %r3515.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3515 = load i64, ptr %r3515.p, align 8, !alias.scope !3, !noalias !4
  %t3516 = add i64 %r3515, 12
  %wp3517 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t3516, ptr %wp3517, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc758 word 0xf9000fe9
  %r3518.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3518 = load i64, ptr %r3518.p, align 8, !alias.scope !3, !noalias !4
  %t3519 = add i64 %r3518, 24
  %r3520.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3520 = load i64, ptr %r3520.p, align 8, !alias.scope !3, !noalias !4
  %gmp3521 = inttoptr i64 %t3519 to ptr
  store i64 %r3520, ptr %gmp3521, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc75c word 0x52802009
  %c3522 = zext i32 256 to i64
  %wp3523 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3522, ptr %wp3523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc760 word 0x390093ff
  %r3524.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3524 = load i64, ptr %r3524.p, align 8, !alias.scope !3, !noalias !4
  %t3525 = add i64 %r3524, 36
  %c3526 = trunc i32 0 to i8
  %gmp3527 = inttoptr i64 %t3525 to ptr
  store i8 %c3526, ptr %gmp3527, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc764 word 0xb90023e9
  %r3528.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3528 = load i64, ptr %r3528.p, align 8, !alias.scope !3, !noalias !4
  %t3529 = add i64 %r3528, 32
  %r3530.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3530 = load i64, ptr %r3530.p, align 8, !alias.scope !3, !noalias !4
  %c3531 = trunc i64 %r3530 to i32
  %gmp3532 = inttoptr i64 %t3529 to ptr
  store i32 %c3531, ptr %gmp3532, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc768 word 0x910063e0
  %r3533.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3533 = load i64, ptr %r3533.p, align 8, !alias.scope !3, !noalias !4
  %t3534 = add i64 %r3533, 24
  %wp3535 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3534, ptr %wp3535, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc76c word 0x2a0403f7
  %r3536.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3536 = load i64, ptr %r3536.p, align 8, !alias.scope !3, !noalias !4
  %c3537 = trunc i64 %r3536 to i32
  %t3538 = or i32 0, %c3537
  %c3539 = zext i32 %t3538 to i64
  %wp3540 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3539, ptr %wp3540, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc770 word 0xaa0303f9
  %r3541.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3541 = load i64, ptr %r3541.p, align 8, !alias.scope !3, !noalias !4
  %t3542 = or i64 0, %r3541
  %wp3543 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3542, ptr %wp3543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc774 word 0xf9400908
  %r3544.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3544 = load i64, ptr %r3544.p, align 8, !alias.scope !3, !noalias !4
  %t3545 = add i64 %r3544, 16
  %gmp3546 = inttoptr i64 %t3545 to ptr
  %gml3547 = load i64, ptr %gmp3546, align 1, !alias.scope !4, !noalias !3
  %wp3548 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3547, ptr %wp3548, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc778 word 0xb980250a
  %r3549.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3549 = load i64, ptr %r3549.p, align 8, !alias.scope !3, !noalias !4
  %t3550 = add i64 %r3549, 36
  %gmp3551 = inttoptr i64 %t3550 to ptr
  %gml3552 = load i32, ptr %gmp3551, align 1, !alias.scope !4, !noalias !3
  %c3553 = sext i32 %gml3552 to i64
  %wp3554 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3553, ptr %wp3554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc77c word 0xb9800909
  %r3555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3555 = load i64, ptr %r3555.p, align 8, !alias.scope !3, !noalias !4
  %t3556 = add i64 %r3555, 8
  %gmp3557 = inttoptr i64 %t3556 to ptr
  %gml3558 = load i32, ptr %gmp3557, align 1, !alias.scope !4, !noalias !3
  %c3559 = sext i32 %gml3558 to i64
  %wp3560 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3559, ptr %wp3560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc780 word 0x8b0a0108
  %r3561.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3561 = load i64, ptr %r3561.p, align 8, !alias.scope !3, !noalias !4
  %r3562.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3562 = load i64, ptr %r3562.p, align 8, !alias.scope !3, !noalias !4
  %t3563 = add i64 %r3561, %r3562
  %wp3564 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3563, ptr %wp3564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc784 word 0x8b090102
  %r3565.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3565 = load i64, ptr %r3565.p, align 8, !alias.scope !3, !noalias !4
  %r3566.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3566 = load i64, ptr %r3566.p, align 8, !alias.scope !3, !noalias !4
  %t3567 = add i64 %r3565, %r3566
  %wp3568 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t3567, ptr %wp3568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc788 word 0x97fb7436
  %wp3569 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558924, ptr %wp3569, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001bc78c word 0x52b84005
  %c3570 = zext i32 -1040187392 to i64
  %wp3571 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3570, ptr %wp3571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc790 word 0xaa1903e3
  %r3572.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3572 = load i64, ptr %r3572.p, align 8, !alias.scope !3, !noalias !4
  %t3573 = or i64 0, %r3572
  %wp3574 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3573, ptr %wp3574, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc794 word 0x2a1703e4
  %r3575.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3575 = load i64, ptr %r3575.p, align 8, !alias.scope !3, !noalias !4
  %c3576 = trunc i64 %r3575 to i32
  %t3577 = or i32 0, %c3576
  %c3578 = zext i32 %t3577 to i64
  %wp3579 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3578, ptr %wp3579, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc798 word 0xaa1f03ea
  %t3580 = or i64 0, 0
  %wp3581 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3580, ptr %wp3581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc79c word 0x17fffd8a
  br label %L_8001bbdc4
L_8001bc7a0:
  ; @pc 0x8001bc7a0 word 0xf001bd00
  %wp3582 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3582, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7a4 word 0xaa0303f9
  %r3583.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3583 = load i64, ptr %r3583.p, align 8, !alias.scope !3, !noalias !4
  %t3584 = or i64 0, %r3583
  %wp3585 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3584, ptr %wp3585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7a8 word 0xf9452c00
  %r3586.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3586 = load i64, ptr %r3586.p, align 8, !alias.scope !3, !noalias !4
  %t3587 = add i64 %r3586, 2648
  %gmp3588 = inttoptr i64 %t3587 to ptr
  %gml3589 = load i64, ptr %gmp3588, align 1, !alias.scope !4, !noalias !3
  %wp3590 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3589, ptr %wp3590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7ac word 0xb90007e4
  %r3591.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3591 = load i64, ptr %r3591.p, align 8, !alias.scope !3, !noalias !4
  %t3592 = add i64 %r3591, 4
  %r3593.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3593 = load i64, ptr %r3593.p, align 8, !alias.scope !3, !noalias !4
  %c3594 = trunc i64 %r3593 to i32
  %gmp3595 = inttoptr i64 %t3592 to ptr
  store i32 %c3594, ptr %gmp3595, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc7b0 word 0x2a0503f7
  %r3596.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3596 = load i64, ptr %r3596.p, align 8, !alias.scope !3, !noalias !4
  %c3597 = trunc i64 %r3596 to i32
  %t3598 = or i32 0, %c3597
  %c3599 = zext i32 %t3598 to i64
  %wp3600 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3599, ptr %wp3600, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7b4 word 0x94a79c7b
  %wp3601 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558968, ptr %wp3601, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc7b8 word 0xf94007ea
  %r3602.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3602 = load i64, ptr %r3602.p, align 8, !alias.scope !3, !noalias !4
  %t3603 = add i64 %r3602, 8
  %gmp3604 = inttoptr i64 %t3603 to ptr
  %gml3605 = load i64, ptr %gmp3604, align 1, !alias.scope !4, !noalias !3
  %wp3606 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3605, ptr %wp3606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7bc word 0x2a1703e5
  %r3607.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3607 = load i64, ptr %r3607.p, align 8, !alias.scope !3, !noalias !4
  %c3608 = trunc i64 %r3607 to i32
  %t3609 = or i32 0, %c3608
  %c3610 = zext i32 %t3609 to i64
  %wp3611 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3610, ptr %wp3611, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7c0 word 0xaa1903e3
  %r3612.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3612 = load i64, ptr %r3612.p, align 8, !alias.scope !3, !noalias !4
  %t3613 = or i64 0, %r3612
  %wp3614 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3613, ptr %wp3614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7c4 word 0xb94007e4
  %r3615.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3615 = load i64, ptr %r3615.p, align 8, !alias.scope !3, !noalias !4
  %t3616 = add i64 %r3615, 4
  %gmp3617 = inttoptr i64 %t3616 to ptr
  %gml3618 = load i32, ptr %gmp3617, align 1, !alias.scope !4, !noalias !3
  %c3619 = zext i32 %gml3618 to i64
  %wp3620 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3619, ptr %wp3620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7c8 word 0x34ffb080
  %r3621.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3621 = load i64, ptr %r3621.p, align 8, !alias.scope !3, !noalias !4
  %c3622 = trunc i64 %r3621 to i32
  %cmp3623 = icmp eq i32 %c3622, 0
  br i1 %cmp3623, label %L_8001bbdd8, label %L_8001bc7cc_ft
L_8001bc804:
  ; @pc 0x8001bc804 word 0xaa1503e0
  %r3668.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3668 = load i64, ptr %r3668.p, align 8, !alias.scope !3, !noalias !4
  %t3669 = or i64 0, %r3668
  %wp3670 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3669, ptr %wp3670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc808 word 0x2a0403f8
  %r3671.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3671 = load i64, ptr %r3671.p, align 8, !alias.scope !3, !noalias !4
  %c3672 = trunc i64 %r3671 to i32
  %t3673 = or i32 0, %c3672
  %c3674 = zext i32 %t3673 to i64
  %wp3675 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c3674, ptr %wp3675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc80c word 0xaa0303f9
  %r3676.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3676 = load i64, ptr %r3676.p, align 8, !alias.scope !3, !noalias !4
  %t3677 = or i64 0, %r3676
  %wp3678 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3677, ptr %wp3678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc810 word 0xd63f0100
  %r3679.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3679 = load i64, ptr %r3679.p, align 8, !alias.scope !3, !noalias !4
  %fp3680 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3679, ptr %fp3680, align 8, !alias.scope !3, !noalias !4
  %wp3681 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559060, ptr %wp3681, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc814 word 0xf9400a88
  %r3682.p = getelementptr inbounds i8, ptr %c, i64 160
  %r3682 = load i64, ptr %r3682.p, align 8, !alias.scope !3, !noalias !4
  %t3683 = add i64 %r3682, 16
  %gmp3684 = inttoptr i64 %t3683 to ptr
  %gml3685 = load i64, ptr %gmp3684, align 1, !alias.scope !4, !noalias !3
  %wp3686 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3685, ptr %wp3686, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc818 word 0xaa1903e3
  %r3687.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3687 = load i64, ptr %r3687.p, align 8, !alias.scope !3, !noalias !4
  %t3688 = or i64 0, %r3687
  %wp3689 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3688, ptr %wp3689, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc81c word 0x2a1803e4
  %r3690.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3690 = load i64, ptr %r3690.p, align 8, !alias.scope !3, !noalias !4
  %c3691 = trunc i64 %r3690 to i32
  %t3692 = or i32 0, %c3691
  %c3693 = zext i32 %t3692 to i64
  %wp3694 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3693, ptr %wp3694, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc820 word 0x17fffcf6
  br label %L_8001bbbf8
L_8001bc824:
  ; @pc 0x8001bc824 word 0xf001bd00
  %wp3695 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc828 word 0xaa0303f9
  %r3696.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3696 = load i64, ptr %r3696.p, align 8, !alias.scope !3, !noalias !4
  %t3697 = or i64 0, %r3696
  %wp3698 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3697, ptr %wp3698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc82c word 0xf9453c00
  %r3699.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3699 = load i64, ptr %r3699.p, align 8, !alias.scope !3, !noalias !4
  %t3700 = add i64 %r3699, 2680
  %gmp3701 = inttoptr i64 %t3700 to ptr
  %gml3702 = load i64, ptr %gmp3701, align 1, !alias.scope !4, !noalias !3
  %wp3703 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3702, ptr %wp3703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc830 word 0xb90007e4
  %r3704.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3704 = load i64, ptr %r3704.p, align 8, !alias.scope !3, !noalias !4
  %t3705 = add i64 %r3704, 4
  %r3706.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3706 = load i64, ptr %r3706.p, align 8, !alias.scope !3, !noalias !4
  %c3707 = trunc i64 %r3706 to i32
  %gmp3708 = inttoptr i64 %t3705 to ptr
  store i32 %c3707, ptr %gmp3708, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc834 word 0x2a0503f7
  %r3709.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3709 = load i64, ptr %r3709.p, align 8, !alias.scope !3, !noalias !4
  %c3710 = trunc i64 %r3709 to i32
  %t3711 = or i32 0, %c3710
  %c3712 = zext i32 %t3711 to i64
  %wp3713 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3712, ptr %wp3713, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc838 word 0x94a79c5a
  %wp3714 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559100, ptr %wp3714, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc83c word 0x9001bded
  %wp3715 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc840 word 0x9001bdec
  %wp3716 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3716, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc844 word 0xf941b5ad
  %r3717.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3717 = load i64, ptr %r3717.p, align 8, !alias.scope !3, !noalias !4
  %t3718 = add i64 %r3717, 872
  %gmp3719 = inttoptr i64 %t3718 to ptr
  %gml3720 = load i64, ptr %gmp3719, align 1, !alias.scope !4, !noalias !3
  %wp3721 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3720, ptr %wp3721, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc848 word 0xd001bc8b
  %wp3722 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc84c word 0xd001bc89
  %wp3723 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc850 word 0xf941bd8c
  %r3724.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3724 = load i64, ptr %r3724.p, align 8, !alias.scope !3, !noalias !4
  %t3725 = add i64 %r3724, 888
  %gmp3726 = inttoptr i64 %t3725 to ptr
  %gml3727 = load i64, ptr %gmp3726, align 1, !alias.scope !4, !noalias !3
  %wp3728 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3727, ptr %wp3728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc854 word 0xf943016b
  %r3729.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3729 = load i64, ptr %r3729.p, align 8, !alias.scope !3, !noalias !4
  %t3730 = add i64 %r3729, 1536
  %gmp3731 = inttoptr i64 %t3730 to ptr
  %gml3732 = load i64, ptr %gmp3731, align 1, !alias.scope !4, !noalias !3
  %wp3733 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3732, ptr %wp3733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc858 word 0x2a1703e5
  %r3734.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3734 = load i64, ptr %r3734.p, align 8, !alias.scope !3, !noalias !4
  %c3735 = trunc i64 %r3734 to i32
  %t3736 = or i32 0, %c3735
  %c3737 = zext i32 %t3736 to i64
  %wp3738 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3737, ptr %wp3738, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc85c word 0xaa1903e3
  %r3739.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3739 = load i64, ptr %r3739.p, align 8, !alias.scope !3, !noalias !4
  %t3740 = or i64 0, %r3739
  %wp3741 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3740, ptr %wp3741, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc860 word 0xf94007ea
  %r3742.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3742 = load i64, ptr %r3742.p, align 8, !alias.scope !3, !noalias !4
  %t3743 = add i64 %r3742, 8
  %gmp3744 = inttoptr i64 %t3743 to ptr
  %gml3745 = load i64, ptr %gmp3744, align 1, !alias.scope !4, !noalias !3
  %wp3746 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3745, ptr %wp3746, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc864 word 0xf9430d29
  %r3747.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3747 = load i64, ptr %r3747.p, align 8, !alias.scope !3, !noalias !4
  %t3748 = add i64 %r3747, 1560
  %gmp3749 = inttoptr i64 %t3748 to ptr
  %gml3750 = load i64, ptr %gmp3749, align 1, !alias.scope !4, !noalias !3
  %wp3751 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3750, ptr %wp3751, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc868 word 0xb94007e4
  %r3752.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3752 = load i64, ptr %r3752.p, align 8, !alias.scope !3, !noalias !4
  %t3753 = add i64 %r3752, 4
  %gmp3754 = inttoptr i64 %t3753 to ptr
  %gml3755 = load i32, ptr %gmp3754, align 1, !alias.scope !4, !noalias !3
  %c3756 = zext i32 %gml3755 to i64
  %wp3757 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3756, ptr %wp3757, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc86c word 0x34ffc5e0
  %r3758.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3758 = load i64, ptr %r3758.p, align 8, !alias.scope !3, !noalias !4
  %c3759 = trunc i64 %r3758 to i32
  %cmp3760 = icmp eq i32 %c3759, 0
  br i1 %cmp3760, label %L_8001bc128, label %L_8001bc870_ft
L_8001bc8c8:
  ; @pc 0x8001bc8c8 word 0xf001bd00
  %wp3829 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8cc word 0xaa0303f9
  %r3830.p = getelementptr inbounds i8, ptr %c, i64 24
  %r3830 = load i64, ptr %r3830.p, align 8, !alias.scope !3, !noalias !4
  %t3831 = or i64 0, %r3830
  %wp3832 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t3831, ptr %wp3832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8d0 word 0xf9454400
  %r3833.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3833 = load i64, ptr %r3833.p, align 8, !alias.scope !3, !noalias !4
  %t3834 = add i64 %r3833, 2696
  %gmp3835 = inttoptr i64 %t3834 to ptr
  %gml3836 = load i64, ptr %gmp3835, align 1, !alias.scope !4, !noalias !3
  %wp3837 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3836, ptr %wp3837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8d4 word 0xb90007e4
  %r3838.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3838 = load i64, ptr %r3838.p, align 8, !alias.scope !3, !noalias !4
  %t3839 = add i64 %r3838, 4
  %r3840.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3840 = load i64, ptr %r3840.p, align 8, !alias.scope !3, !noalias !4
  %c3841 = trunc i64 %r3840 to i32
  %gmp3842 = inttoptr i64 %t3839 to ptr
  store i32 %c3841, ptr %gmp3842, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc8d8 word 0x2a0503f7
  %r3843.p = getelementptr inbounds i8, ptr %c, i64 40
  %r3843 = load i64, ptr %r3843.p, align 8, !alias.scope !3, !noalias !4
  %c3844 = trunc i64 %r3843 to i32
  %t3845 = or i32 0, %c3844
  %c3846 = zext i32 %t3845 to i64
  %wp3847 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c3846, ptr %wp3847, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8dc word 0x94a79c31
  %wp3848 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559264, ptr %wp3848, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc8e0 word 0x9001bded
  %wp3849 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8e4 word 0x9001bdec
  %wp3850 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8e8 word 0xf941b5ad
  %r3851.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3851 = load i64, ptr %r3851.p, align 8, !alias.scope !3, !noalias !4
  %t3852 = add i64 %r3851, 872
  %gmp3853 = inttoptr i64 %t3852 to ptr
  %gml3854 = load i64, ptr %gmp3853, align 1, !alias.scope !4, !noalias !3
  %wp3855 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3854, ptr %wp3855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8ec word 0xd001bc8b
  %wp3856 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3856, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8f0 word 0xd001bc89
  %wp3857 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8f4 word 0xf941bd8c
  %r3858.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3858 = load i64, ptr %r3858.p, align 8, !alias.scope !3, !noalias !4
  %t3859 = add i64 %r3858, 888
  %gmp3860 = inttoptr i64 %t3859 to ptr
  %gml3861 = load i64, ptr %gmp3860, align 1, !alias.scope !4, !noalias !3
  %wp3862 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3861, ptr %wp3862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8f8 word 0xf943016b
  %r3863.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3863 = load i64, ptr %r3863.p, align 8, !alias.scope !3, !noalias !4
  %t3864 = add i64 %r3863, 1536
  %gmp3865 = inttoptr i64 %t3864 to ptr
  %gml3866 = load i64, ptr %gmp3865, align 1, !alias.scope !4, !noalias !3
  %wp3867 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3866, ptr %wp3867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8fc word 0x2a1703e5
  %r3868.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3868 = load i64, ptr %r3868.p, align 8, !alias.scope !3, !noalias !4
  %c3869 = trunc i64 %r3868 to i32
  %t3870 = or i32 0, %c3869
  %c3871 = zext i32 %t3870 to i64
  %wp3872 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3871, ptr %wp3872, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc900 word 0xaa1903e3
  %r3873.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3873 = load i64, ptr %r3873.p, align 8, !alias.scope !3, !noalias !4
  %t3874 = or i64 0, %r3873
  %wp3875 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3874, ptr %wp3875, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc904 word 0xf94007ea
  %r3876.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3876 = load i64, ptr %r3876.p, align 8, !alias.scope !3, !noalias !4
  %t3877 = add i64 %r3876, 8
  %gmp3878 = inttoptr i64 %t3877 to ptr
  %gml3879 = load i64, ptr %gmp3878, align 1, !alias.scope !4, !noalias !3
  %wp3880 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3879, ptr %wp3880, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc908 word 0xf9430d29
  %r3881.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3881 = load i64, ptr %r3881.p, align 8, !alias.scope !3, !noalias !4
  %t3882 = add i64 %r3881, 1560
  %gmp3883 = inttoptr i64 %t3882 to ptr
  %gml3884 = load i64, ptr %gmp3883, align 1, !alias.scope !4, !noalias !3
  %wp3885 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3884, ptr %wp3885, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc90c word 0xb94007e4
  %r3886.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3886 = load i64, ptr %r3886.p, align 8, !alias.scope !3, !noalias !4
  %t3887 = add i64 %r3886, 4
  %gmp3888 = inttoptr i64 %t3887 to ptr
  %gml3889 = load i32, ptr %gmp3888, align 1, !alias.scope !4, !noalias !3
  %c3890 = zext i32 %gml3889 to i64
  %wp3891 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3890, ptr %wp3891, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc910 word 0x34ffcae0
  %r3892.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3892 = load i64, ptr %r3892.p, align 8, !alias.scope !3, !noalias !4
  %c3893 = trunc i64 %r3892 to i32
  %cmp3894 = icmp eq i32 %c3893, 0
  br i1 %cmp3894, label %L_8001bc26c, label %L_8001bc914_ft
L_8001bc96c:
  ; @pc 0x8001bc96c word 0x910063e8
  %r3963.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3963 = load i64, ptr %r3963.p, align 8, !alias.scope !3, !noalias !4
  %t3964 = add i64 %r3963, 24
  %wp3965 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3964, ptr %wp3965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc970 word 0x2a0403fa
  %r3966.p = getelementptr inbounds i8, ptr %c, i64 32
  %r3966 = load i64, ptr %r3966.p, align 8, !alias.scope !3, !noalias !4
  %c3967 = trunc i64 %r3966 to i32
  %t3968 = or i32 0, %c3967
  %c3969 = zext i32 %t3968 to i64
  %wp3970 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c3969, ptr %wp3970, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc974 word 0x39048fff
  %r3971.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3971 = load i64, ptr %r3971.p, align 8, !alias.scope !3, !noalias !4
  %t3972 = add i64 %r3971, 291
  %c3973 = trunc i32 0 to i8
  %gmp3974 = inttoptr i64 %t3972 to ptr
  store i8 %c3973, ptr %gmp3974, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc978 word 0x91003108
  %r3975.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3975 = load i64, ptr %r3975.p, align 8, !alias.scope !3, !noalias !4
  %t3976 = add i64 %r3975, 12
  %wp3977 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3976, ptr %wp3977, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc97c word 0x390093ff
  %r3978.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3978 = load i64, ptr %r3978.p, align 8, !alias.scope !3, !noalias !4
  %t3979 = add i64 %r3978, 36
  %c3980 = trunc i32 0 to i8
  %gmp3981 = inttoptr i64 %t3979 to ptr
  store i8 %c3980, ptr %gmp3981, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc980 word 0xf9000fe8
  %r3982.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3982 = load i64, ptr %r3982.p, align 8, !alias.scope !3, !noalias !4
  %t3983 = add i64 %r3982, 24
  %r3984.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3984 = load i64, ptr %r3984.p, align 8, !alias.scope !3, !noalias !4
  %gmp3985 = inttoptr i64 %t3983 to ptr
  store i64 %r3984, ptr %gmp3985, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc984 word 0x52802008
  %c3986 = zext i32 256 to i64
  %wp3987 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3986, ptr %wp3987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc988 word 0xb90023e8
  %r3988.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3988 = load i64, ptr %r3988.p, align 8, !alias.scope !3, !noalias !4
  %t3989 = add i64 %r3988, 32
  %r3990.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3990 = load i64, ptr %r3990.p, align 8, !alias.scope !3, !noalias !4
  %c3991 = trunc i64 %r3990 to i32
  %gmp3992 = inttoptr i64 %t3989 to ptr
  store i32 %c3991, ptr %gmp3992, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc98c word 0xf94006a8
  %r3993.p = getelementptr inbounds i8, ptr %c, i64 168
  %r3993 = load i64, ptr %r3993.p, align 8, !alias.scope !3, !noalias !4
  %t3994 = add i64 %r3993, 8
  %gmp3995 = inttoptr i64 %t3994 to ptr
  %gml3996 = load i64, ptr %gmp3995, align 1, !alias.scope !4, !noalias !3
  %wp3997 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3996, ptr %wp3997, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc990 word 0x14000021
  br label %L_8001bca14
L_8001bc994:
  ; @pc 0x8001bc994 word 0x39048fff
  %r3998.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3998 = load i64, ptr %r3998.p, align 8, !alias.scope !3, !noalias !4
  %t3999 = add i64 %r3998, 291
  %c4000 = trunc i32 0 to i8
  %gmp4001 = inttoptr i64 %t3999 to ptr
  store i8 %c4000, ptr %gmp4001, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc998 word 0x910063e9
  %r4002.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4002 = load i64, ptr %r4002.p, align 8, !alias.scope !3, !noalias !4
  %t4003 = add i64 %r4002, 24
  %wp4004 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4003, ptr %wp4004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc99c word 0x90015481
  %wp4005 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp4005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9a0 word 0x91270c21
  %r4006.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4006 = load i64, ptr %r4006.p, align 8, !alias.scope !3, !noalias !4
  %t4007 = add i64 %r4006, 2499
  %wp4008 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4007, ptr %wp4008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9a4 word 0xf9400908
  %r4009.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4009 = load i64, ptr %r4009.p, align 8, !alias.scope !3, !noalias !4
  %t4010 = add i64 %r4009, 16
  %gmp4011 = inttoptr i64 %t4010 to ptr
  %gml4012 = load i64, ptr %gmp4011, align 1, !alias.scope !4, !noalias !3
  %wp4013 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4012, ptr %wp4013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9a8 word 0x91003129
  %r4014.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4014 = load i64, ptr %r4014.p, align 8, !alias.scope !3, !noalias !4
  %t4015 = add i64 %r4014, 12
  %wp4016 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4015, ptr %wp4016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9ac word 0xf9000fe9
  %r4017.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4017 = load i64, ptr %r4017.p, align 8, !alias.scope !3, !noalias !4
  %t4018 = add i64 %r4017, 24
  %r4019.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4019 = load i64, ptr %r4019.p, align 8, !alias.scope !3, !noalias !4
  %gmp4020 = inttoptr i64 %t4018 to ptr
  store i64 %r4019, ptr %gmp4020, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc9b0 word 0x52802009
  %c4021 = zext i32 256 to i64
  %wp4022 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4021, ptr %wp4022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9b4 word 0x390093ff
  %r4023.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4023 = load i64, ptr %r4023.p, align 8, !alias.scope !3, !noalias !4
  %t4024 = add i64 %r4023, 36
  %c4025 = trunc i32 0 to i8
  %gmp4026 = inttoptr i64 %t4024 to ptr
  store i8 %c4025, ptr %gmp4026, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc9b8 word 0xb90023e9
  %r4027.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4027 = load i64, ptr %r4027.p, align 8, !alias.scope !3, !noalias !4
  %t4028 = add i64 %r4027, 32
  %r4029.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4029 = load i64, ptr %r4029.p, align 8, !alias.scope !3, !noalias !4
  %c4030 = trunc i64 %r4029 to i32
  %gmp4031 = inttoptr i64 %t4028 to ptr
  store i32 %c4030, ptr %gmp4031, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc9bc word 0x910063e0
  %r4032.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4032 = load i64, ptr %r4032.p, align 8, !alias.scope !3, !noalias !4
  %t4033 = add i64 %r4032, 24
  %wp4034 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4033, ptr %wp4034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9c0 word 0xaa1303f7
  %r4035.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4035 = load i64, ptr %r4035.p, align 8, !alias.scope !3, !noalias !4
  %t4036 = or i64 0, %r4035
  %wp4037 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t4036, ptr %wp4037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9c4 word 0xaa1603f3
  %r4038.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4038 = load i64, ptr %r4038.p, align 8, !alias.scope !3, !noalias !4
  %t4039 = or i64 0, %r4038
  %wp4040 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t4039, ptr %wp4040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9c8 word 0x2a0403f6
  %r4041.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4041 = load i64, ptr %r4041.p, align 8, !alias.scope !3, !noalias !4
  %c4042 = trunc i64 %r4041 to i32
  %t4043 = or i32 0, %c4042
  %c4044 = zext i32 %t4043 to i64
  %wp4045 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c4044, ptr %wp4045, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9cc word 0xf9400908
  %r4046.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4046 = load i64, ptr %r4046.p, align 8, !alias.scope !3, !noalias !4
  %t4047 = add i64 %r4046, 16
  %gmp4048 = inttoptr i64 %t4047 to ptr
  %gml4049 = load i64, ptr %gmp4048, align 1, !alias.scope !4, !noalias !3
  %wp4050 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4049, ptr %wp4050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9d0 word 0xb980250a
  %r4051.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4051 = load i64, ptr %r4051.p, align 8, !alias.scope !3, !noalias !4
  %t4052 = add i64 %r4051, 36
  %gmp4053 = inttoptr i64 %t4052 to ptr
  %gml4054 = load i32, ptr %gmp4053, align 1, !alias.scope !4, !noalias !3
  %c4055 = sext i32 %gml4054 to i64
  %wp4056 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4055, ptr %wp4056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9d4 word 0xb9800909
  %r4057.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4057 = load i64, ptr %r4057.p, align 8, !alias.scope !3, !noalias !4
  %t4058 = add i64 %r4057, 8
  %gmp4059 = inttoptr i64 %t4058 to ptr
  %gml4060 = load i32, ptr %gmp4059, align 1, !alias.scope !4, !noalias !3
  %c4061 = sext i32 %gml4060 to i64
  %wp4062 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4061, ptr %wp4062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9d8 word 0x8b0a0108
  %r4063.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4063 = load i64, ptr %r4063.p, align 8, !alias.scope !3, !noalias !4
  %r4064.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4064 = load i64, ptr %r4064.p, align 8, !alias.scope !3, !noalias !4
  %t4065 = add i64 %r4063, %r4064
  %wp4066 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4065, ptr %wp4066, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9dc word 0x8b090102
  %r4067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4067 = load i64, ptr %r4067.p, align 8, !alias.scope !3, !noalias !4
  %r4068.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4068 = load i64, ptr %r4068.p, align 8, !alias.scope !3, !noalias !4
  %t4069 = add i64 %r4067, %r4068
  %wp4070 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4069, ptr %wp4070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9e0 word 0x97fb73a0
  %wp4071 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559524, ptr %wp4071, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001bc9e4 word 0xf94006a8
  %r4072.p = getelementptr inbounds i8, ptr %c, i64 168
  %r4072 = load i64, ptr %r4072.p, align 8, !alias.scope !3, !noalias !4
  %t4073 = add i64 %r4072, 8
  %gmp4074 = inttoptr i64 %t4073 to ptr
  %gml4075 = load i64, ptr %gmp4074, align 1, !alias.scope !4, !noalias !3
  %wp4076 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4075, ptr %wp4076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9e8 word 0x2a1603e4
  %r4077.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4077 = load i64, ptr %r4077.p, align 8, !alias.scope !3, !noalias !4
  %c4078 = trunc i64 %r4077 to i32
  %t4079 = or i32 0, %c4078
  %c4080 = zext i32 %t4079 to i64
  %wp4081 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4080, ptr %wp4081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9ec word 0xaa1303f6
  %r4082.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4082 = load i64, ptr %r4082.p, align 8, !alias.scope !3, !noalias !4
  %t4083 = or i64 0, %r4082
  %wp4084 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4083, ptr %wp4084, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9f0 word 0xaa1703f3
  %r4085.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4085 = load i64, ptr %r4085.p, align 8, !alias.scope !3, !noalias !4
  %t4086 = or i64 0, %r4085
  %wp4087 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t4086, ptr %wp4087, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc9f4
L_8001bc9f4:
  ; @pc 0x8001bc9f4 word 0x910063e9
  %r4088.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4088 = load i64, ptr %r4088.p, align 8, !alias.scope !3, !noalias !4
  %t4089 = add i64 %r4088, 24
  %wp4090 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4089, ptr %wp4090, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9f8 word 0x2a0403fa
  %r4091.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4091 = load i64, ptr %r4091.p, align 8, !alias.scope !3, !noalias !4
  %c4092 = trunc i64 %r4091 to i32
  %t4093 = or i32 0, %c4092
  %c4094 = zext i32 %t4093 to i64
  %wp4095 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c4094, ptr %wp4095, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc9fc word 0x39048fff
  %r4096.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4096 = load i64, ptr %r4096.p, align 8, !alias.scope !3, !noalias !4
  %t4097 = add i64 %r4096, 291
  %c4098 = trunc i32 0 to i8
  %gmp4099 = inttoptr i64 %t4097 to ptr
  store i8 %c4098, ptr %gmp4099, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bca00 word 0x91003129
  %r4100.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4100 = load i64, ptr %r4100.p, align 8, !alias.scope !3, !noalias !4
  %t4101 = add i64 %r4100, 12
  %wp4102 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4101, ptr %wp4102, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca04 word 0x390093ff
  %r4103.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4103 = load i64, ptr %r4103.p, align 8, !alias.scope !3, !noalias !4
  %t4104 = add i64 %r4103, 36
  %c4105 = trunc i32 0 to i8
  %gmp4106 = inttoptr i64 %t4104 to ptr
  store i8 %c4105, ptr %gmp4106, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bca08 word 0xf9000fe9
  %r4107.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4107 = load i64, ptr %r4107.p, align 8, !alias.scope !3, !noalias !4
  %t4108 = add i64 %r4107, 24
  %r4109.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4109 = load i64, ptr %r4109.p, align 8, !alias.scope !3, !noalias !4
  %gmp4110 = inttoptr i64 %t4108 to ptr
  store i64 %r4109, ptr %gmp4110, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bca0c word 0x52802009
  %c4111 = zext i32 256 to i64
  %wp4112 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4111, ptr %wp4112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca10 word 0xb90023e9
  %r4113.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4113 = load i64, ptr %r4113.p, align 8, !alias.scope !3, !noalias !4
  %t4114 = add i64 %r4113, 32
  %r4115.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4115 = load i64, ptr %r4115.p, align 8, !alias.scope !3, !noalias !4
  %c4116 = trunc i64 %r4115 to i32
  %gmp4117 = inttoptr i64 %t4114 to ptr
  store i32 %c4116, ptr %gmp4117, align 1, !alias.scope !4, !noalias !3
  br label %L_8001bca14
L_8001bca14:
  ; @pc 0x8001bca14 word 0xf9400908
  %r4118.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4118 = load i64, ptr %r4118.p, align 8, !alias.scope !3, !noalias !4
  %t4119 = add i64 %r4118, 16
  %gmp4120 = inttoptr i64 %t4119 to ptr
  %gml4121 = load i64, ptr %gmp4120, align 1, !alias.scope !4, !noalias !3
  %wp4122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4121, ptr %wp4122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca18 word 0x90015481
  %wp4123 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp4123, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca1c word 0x91270c21
  %r4124.p = getelementptr inbounds i8, ptr %c, i64 8
  %r4124 = load i64, ptr %r4124.p, align 8, !alias.scope !3, !noalias !4
  %t4125 = add i64 %r4124, 2499
  %wp4126 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t4125, ptr %wp4126, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca20 word 0x910063e0
  %r4127.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4127 = load i64, ptr %r4127.p, align 8, !alias.scope !3, !noalias !4
  %t4128 = add i64 %r4127, 24
  %wp4129 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4128, ptr %wp4129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca24 word 0xf9400908
  %r4130.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4130 = load i64, ptr %r4130.p, align 8, !alias.scope !3, !noalias !4
  %t4131 = add i64 %r4130, 16
  %gmp4132 = inttoptr i64 %t4131 to ptr
  %gml4133 = load i64, ptr %gmp4132, align 1, !alias.scope !4, !noalias !3
  %wp4134 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4133, ptr %wp4134, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca28 word 0xb980250a
  %r4135.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4135 = load i64, ptr %r4135.p, align 8, !alias.scope !3, !noalias !4
  %t4136 = add i64 %r4135, 36
  %gmp4137 = inttoptr i64 %t4136 to ptr
  %gml4138 = load i32, ptr %gmp4137, align 1, !alias.scope !4, !noalias !3
  %c4139 = sext i32 %gml4138 to i64
  %wp4140 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c4139, ptr %wp4140, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca2c word 0xb9800909
  %r4141.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4141 = load i64, ptr %r4141.p, align 8, !alias.scope !3, !noalias !4
  %t4142 = add i64 %r4141, 8
  %gmp4143 = inttoptr i64 %t4142 to ptr
  %gml4144 = load i32, ptr %gmp4143, align 1, !alias.scope !4, !noalias !3
  %c4145 = sext i32 %gml4144 to i64
  %wp4146 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c4145, ptr %wp4146, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca30 word 0x8b0a0108
  %r4147.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4147 = load i64, ptr %r4147.p, align 8, !alias.scope !3, !noalias !4
  %r4148.p = getelementptr inbounds i8, ptr %c, i64 80
  %r4148 = load i64, ptr %r4148.p, align 8, !alias.scope !3, !noalias !4
  %t4149 = add i64 %r4147, %r4148
  %wp4150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4149, ptr %wp4150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca34 word 0x8b090102
  %r4151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4151 = load i64, ptr %r4151.p, align 8, !alias.scope !3, !noalias !4
  %r4152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4152 = load i64, ptr %r4152.p, align 8, !alias.scope !3, !noalias !4
  %t4153 = add i64 %r4151, %r4152
  %wp4154 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t4153, ptr %wp4154, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca38 word 0x97fb738a
  %wp4155 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559612, ptr %wp4155, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001bca3c word 0xd001c808
  %wp4156 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp4156, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca40 word 0x91140108
  %r4157.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4157 = load i64, ptr %r4157.p, align 8, !alias.scope !3, !noalias !4
  %t4158 = add i64 %r4157, 1280
  %wp4159 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4158, ptr %wp4159, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca44 word 0xf9000268
  %r4160.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4160 = load i64, ptr %r4160.p, align 8, !alias.scope !3, !noalias !4
  %r4161.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4161 = load i64, ptr %r4161.p, align 8, !alias.scope !3, !noalias !4
  %gmp4162 = inttoptr i64 %r4160 to ptr
  store i64 %r4161, ptr %gmp4162, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bca48 word 0x52800037
  %c4163 = zext i32 1 to i64
  %wp4164 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4163, ptr %wp4164, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca4c word 0x360799b9
  %r4165.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4165 = load i64, ptr %r4165.p, align 8, !alias.scope !3, !noalias !4
  %t4166 = and i64 %r4165, 1
  %cmp4167 = icmp eq i64 %t4166, 0
  br i1 %cmp4167, label %L_8001bbd80, label %L_8001bca50_ft
L_8001bca5c:
  ; @pc 0x8001bca5c word 0xaa1703e0
  %r4176.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4176 = load i64, ptr %r4176.p, align 8, !alias.scope !3, !noalias !4
  %t4177 = or i64 0, %r4176
  %wp4178 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t4177, ptr %wp4178, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca60 word 0xaa1303fb
  %r4179.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4179 = load i64, ptr %r4179.p, align 8, !alias.scope !3, !noalias !4
  %t4180 = or i64 0, %r4179
  %wp4181 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %t4180, ptr %wp4181, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca64 word 0xaa1603f3
  %r4182.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4182 = load i64, ptr %r4182.p, align 8, !alias.scope !3, !noalias !4
  %t4183 = or i64 0, %r4182
  %wp4184 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t4183, ptr %wp4184, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca68 word 0x2a0403f6
  %r4185.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4185 = load i64, ptr %r4185.p, align 8, !alias.scope !3, !noalias !4
  %c4186 = trunc i64 %r4185 to i32
  %t4187 = or i32 0, %c4186
  %c4188 = zext i32 %t4187 to i64
  %wp4189 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c4188, ptr %wp4189, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca6c word 0xd63f0100
  %r4190.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4190 = load i64, ptr %r4190.p, align 8, !alias.scope !3, !noalias !4
  %fp4191 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r4190, ptr %fp4191, align 8, !alias.scope !3, !noalias !4
  %wp4192 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559664, ptr %wp4192, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bca70 word 0x2a1603e4
  %r4193.p = getelementptr inbounds i8, ptr %c, i64 176
  %r4193 = load i64, ptr %r4193.p, align 8, !alias.scope !3, !noalias !4
  %c4194 = trunc i64 %r4193 to i32
  %t4195 = or i32 0, %c4194
  %c4196 = zext i32 %t4195 to i64
  %wp4197 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4196, ptr %wp4197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca74 word 0xaa1303f6
  %r4198.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4198 = load i64, ptr %r4198.p, align 8, !alias.scope !3, !noalias !4
  %t4199 = or i64 0, %r4198
  %wp4200 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t4199, ptr %wp4200, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca78 word 0xaa1b03f3
  %r4201.p = getelementptr inbounds i8, ptr %c, i64 216
  %r4201 = load i64, ptr %r4201.p, align 8, !alias.scope !3, !noalias !4
  %t4202 = or i64 0, %r4201
  %wp4203 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t4202, ptr %wp4203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca7c word 0x17fffd35
  br label %L_8001bbf50
L_8001bca80:
  ; @pc 0x8001bca80 word 0x9001bde0
  %wp4204 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca84 word 0xaa0303f9
  %r4205.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4205 = load i64, ptr %r4205.p, align 8, !alias.scope !3, !noalias !4
  %t4206 = or i64 0, %r4205
  %wp4207 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4206, ptr %wp4207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca88 word 0xf941bc00
  %r4208.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4208 = load i64, ptr %r4208.p, align 8, !alias.scope !3, !noalias !4
  %t4209 = add i64 %r4208, 888
  %gmp4210 = inttoptr i64 %t4209 to ptr
  %gml4211 = load i64, ptr %gmp4210, align 1, !alias.scope !4, !noalias !3
  %wp4212 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4211, ptr %wp4212, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca8c word 0xb90007e4
  %r4213.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4213 = load i64, ptr %r4213.p, align 8, !alias.scope !3, !noalias !4
  %t4214 = add i64 %r4213, 4
  %r4215.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4215 = load i64, ptr %r4215.p, align 8, !alias.scope !3, !noalias !4
  %c4216 = trunc i64 %r4215 to i32
  %gmp4217 = inttoptr i64 %t4214 to ptr
  store i32 %c4216, ptr %gmp4217, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bca90 word 0x2a0503f7
  %r4218.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4218 = load i64, ptr %r4218.p, align 8, !alias.scope !3, !noalias !4
  %c4219 = trunc i64 %r4218 to i32
  %t4220 = or i32 0, %c4219
  %c4221 = zext i32 %t4220 to i64
  %wp4222 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4221, ptr %wp4222, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca94 word 0x94a79bc3
  %wp4223 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559704, ptr %wp4223, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bca98 word 0x9001bded
  %wp4224 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca9c word 0x9001bdec
  %wp4225 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4225, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaa0 word 0xf941b5ad
  %r4226.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4226 = load i64, ptr %r4226.p, align 8, !alias.scope !3, !noalias !4
  %t4227 = add i64 %r4226, 872
  %gmp4228 = inttoptr i64 %t4227 to ptr
  %gml4229 = load i64, ptr %gmp4228, align 1, !alias.scope !4, !noalias !3
  %wp4230 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4229, ptr %wp4230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaa4 word 0xd001bc8b
  %wp4231 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaa8 word 0xd001bc89
  %wp4232 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4232, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaac word 0xf941bd8c
  %r4233.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4233 = load i64, ptr %r4233.p, align 8, !alias.scope !3, !noalias !4
  %t4234 = add i64 %r4233, 888
  %gmp4235 = inttoptr i64 %t4234 to ptr
  %gml4236 = load i64, ptr %gmp4235, align 1, !alias.scope !4, !noalias !3
  %wp4237 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4236, ptr %wp4237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcab0 word 0xf943016b
  %r4238.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4238 = load i64, ptr %r4238.p, align 8, !alias.scope !3, !noalias !4
  %t4239 = add i64 %r4238, 1536
  %gmp4240 = inttoptr i64 %t4239 to ptr
  %gml4241 = load i64, ptr %gmp4240, align 1, !alias.scope !4, !noalias !3
  %wp4242 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4241, ptr %wp4242, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcab4 word 0x2a1703e5
  %r4243.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4243 = load i64, ptr %r4243.p, align 8, !alias.scope !3, !noalias !4
  %c4244 = trunc i64 %r4243 to i32
  %t4245 = or i32 0, %c4244
  %c4246 = zext i32 %t4245 to i64
  %wp4247 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4246, ptr %wp4247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcab8 word 0xaa1903e3
  %r4248.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4248 = load i64, ptr %r4248.p, align 8, !alias.scope !3, !noalias !4
  %t4249 = or i64 0, %r4248
  %wp4250 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4249, ptr %wp4250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcabc word 0xf94007ea
  %r4251.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4251 = load i64, ptr %r4251.p, align 8, !alias.scope !3, !noalias !4
  %t4252 = add i64 %r4251, 8
  %gmp4253 = inttoptr i64 %t4252 to ptr
  %gml4254 = load i64, ptr %gmp4253, align 1, !alias.scope !4, !noalias !3
  %wp4255 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4254, ptr %wp4255, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcac0 word 0xf9430d29
  %r4256.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4256 = load i64, ptr %r4256.p, align 8, !alias.scope !3, !noalias !4
  %t4257 = add i64 %r4256, 1560
  %gmp4258 = inttoptr i64 %t4257 to ptr
  %gml4259 = load i64, ptr %gmp4258, align 1, !alias.scope !4, !noalias !3
  %wp4260 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4259, ptr %wp4260, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcac4 word 0xb94007e4
  %r4261.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4261 = load i64, ptr %r4261.p, align 8, !alias.scope !3, !noalias !4
  %t4262 = add i64 %r4261, 4
  %gmp4263 = inttoptr i64 %t4262 to ptr
  %gml4264 = load i32, ptr %gmp4263, align 1, !alias.scope !4, !noalias !3
  %c4265 = zext i32 %gml4264 to i64
  %wp4266 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4265, ptr %wp4266, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcac8 word 0x34ffb200
  %r4267.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4267 = load i64, ptr %r4267.p, align 8, !alias.scope !3, !noalias !4
  %c4268 = trunc i64 %r4267 to i32
  %cmp4269 = icmp eq i32 %c4268, 0
  br i1 %cmp4269, label %L_8001bc108, label %L_8001bcacc_ft
L_8001bcb24:
  ; @pc 0x8001bcb24 word 0xd001bc80
  %wp4338 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb28 word 0xaa0303f9
  %r4339.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4339 = load i64, ptr %r4339.p, align 8, !alias.scope !3, !noalias !4
  %t4340 = or i64 0, %r4339
  %wp4341 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4340, ptr %wp4341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb2c word 0xf9430000
  %r4342.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4342 = load i64, ptr %r4342.p, align 8, !alias.scope !3, !noalias !4
  %t4343 = add i64 %r4342, 1536
  %gmp4344 = inttoptr i64 %t4343 to ptr
  %gml4345 = load i64, ptr %gmp4344, align 1, !alias.scope !4, !noalias !3
  %wp4346 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4345, ptr %wp4346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb30 word 0xb90007e4
  %r4347.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4347 = load i64, ptr %r4347.p, align 8, !alias.scope !3, !noalias !4
  %t4348 = add i64 %r4347, 4
  %r4349.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4349 = load i64, ptr %r4349.p, align 8, !alias.scope !3, !noalias !4
  %c4350 = trunc i64 %r4349 to i32
  %gmp4351 = inttoptr i64 %t4348 to ptr
  store i32 %c4350, ptr %gmp4351, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcb34 word 0x2a0503f7
  %r4352.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4352 = load i64, ptr %r4352.p, align 8, !alias.scope !3, !noalias !4
  %c4353 = trunc i64 %r4352 to i32
  %t4354 = or i32 0, %c4353
  %c4355 = zext i32 %t4354 to i64
  %wp4356 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4355, ptr %wp4356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb38 word 0x94a79b9a
  %wp4357 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559868, ptr %wp4357, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcb3c word 0x9001bded
  %wp4358 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4358, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb40 word 0x9001bdec
  %wp4359 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4359, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb44 word 0xf941b5ad
  %r4360.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4360 = load i64, ptr %r4360.p, align 8, !alias.scope !3, !noalias !4
  %t4361 = add i64 %r4360, 872
  %gmp4362 = inttoptr i64 %t4361 to ptr
  %gml4363 = load i64, ptr %gmp4362, align 1, !alias.scope !4, !noalias !3
  %wp4364 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4363, ptr %wp4364, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb48 word 0xd001bc8b
  %wp4365 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb4c word 0xd001bc89
  %wp4366 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4366, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb50 word 0xf941bd8c
  %r4367.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4367 = load i64, ptr %r4367.p, align 8, !alias.scope !3, !noalias !4
  %t4368 = add i64 %r4367, 888
  %gmp4369 = inttoptr i64 %t4368 to ptr
  %gml4370 = load i64, ptr %gmp4369, align 1, !alias.scope !4, !noalias !3
  %wp4371 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4370, ptr %wp4371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb54 word 0xf943016b
  %r4372.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4372 = load i64, ptr %r4372.p, align 8, !alias.scope !3, !noalias !4
  %t4373 = add i64 %r4372, 1536
  %gmp4374 = inttoptr i64 %t4373 to ptr
  %gml4375 = load i64, ptr %gmp4374, align 1, !alias.scope !4, !noalias !3
  %wp4376 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4375, ptr %wp4376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb58 word 0x2a1703e5
  %r4377.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4377 = load i64, ptr %r4377.p, align 8, !alias.scope !3, !noalias !4
  %c4378 = trunc i64 %r4377 to i32
  %t4379 = or i32 0, %c4378
  %c4380 = zext i32 %t4379 to i64
  %wp4381 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4380, ptr %wp4381, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb5c word 0xaa1903e3
  %r4382.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4382 = load i64, ptr %r4382.p, align 8, !alias.scope !3, !noalias !4
  %t4383 = or i64 0, %r4382
  %wp4384 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4383, ptr %wp4384, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb60 word 0xf94007ea
  %r4385.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4385 = load i64, ptr %r4385.p, align 8, !alias.scope !3, !noalias !4
  %t4386 = add i64 %r4385, 8
  %gmp4387 = inttoptr i64 %t4386 to ptr
  %gml4388 = load i64, ptr %gmp4387, align 1, !alias.scope !4, !noalias !3
  %wp4389 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4388, ptr %wp4389, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb64 word 0xf9430d29
  %r4390.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4390 = load i64, ptr %r4390.p, align 8, !alias.scope !3, !noalias !4
  %t4391 = add i64 %r4390, 1560
  %gmp4392 = inttoptr i64 %t4391 to ptr
  %gml4393 = load i64, ptr %gmp4392, align 1, !alias.scope !4, !noalias !3
  %wp4394 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4393, ptr %wp4394, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb68 word 0xb94007e4
  %r4395.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4395 = load i64, ptr %r4395.p, align 8, !alias.scope !3, !noalias !4
  %t4396 = add i64 %r4395, 4
  %gmp4397 = inttoptr i64 %t4396 to ptr
  %gml4398 = load i32, ptr %gmp4397, align 1, !alias.scope !4, !noalias !3
  %c4399 = zext i32 %gml4398 to i64
  %wp4400 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4399, ptr %wp4400, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb6c word 0x34ffad20
  %r4401.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4401 = load i64, ptr %r4401.p, align 8, !alias.scope !3, !noalias !4
  %c4402 = trunc i64 %r4401 to i32
  %cmp4403 = icmp eq i32 %c4402, 0
  br i1 %cmp4403, label %L_8001bc110, label %L_8001bcb70_ft
L_8001bcbc8:
  ; @pc 0x8001bcbc8 word 0xd001bc80
  %wp4472 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbcc word 0xaa0303f9
  %r4473.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4473 = load i64, ptr %r4473.p, align 8, !alias.scope !3, !noalias !4
  %t4474 = or i64 0, %r4473
  %wp4475 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4474, ptr %wp4475, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbd0 word 0xf9430c00
  %r4476.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4476 = load i64, ptr %r4476.p, align 8, !alias.scope !3, !noalias !4
  %t4477 = add i64 %r4476, 1560
  %gmp4478 = inttoptr i64 %t4477 to ptr
  %gml4479 = load i64, ptr %gmp4478, align 1, !alias.scope !4, !noalias !3
  %wp4480 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4479, ptr %wp4480, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbd4 word 0xb90007e4
  %r4481.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4481 = load i64, ptr %r4481.p, align 8, !alias.scope !3, !noalias !4
  %t4482 = add i64 %r4481, 4
  %r4483.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4483 = load i64, ptr %r4483.p, align 8, !alias.scope !3, !noalias !4
  %c4484 = trunc i64 %r4483 to i32
  %gmp4485 = inttoptr i64 %t4482 to ptr
  store i32 %c4484, ptr %gmp4485, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcbd8 word 0x2a0503f7
  %r4486.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4486 = load i64, ptr %r4486.p, align 8, !alias.scope !3, !noalias !4
  %c4487 = trunc i64 %r4486 to i32
  %t4488 = or i32 0, %c4487
  %c4489 = zext i32 %t4488 to i64
  %wp4490 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4489, ptr %wp4490, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbdc word 0x94a79b71
  %wp4491 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560032, ptr %wp4491, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcbe0 word 0x9001bded
  %wp4492 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbe4 word 0x9001bdec
  %wp4493 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbe8 word 0xf941b5ad
  %r4494.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4494 = load i64, ptr %r4494.p, align 8, !alias.scope !3, !noalias !4
  %t4495 = add i64 %r4494, 872
  %gmp4496 = inttoptr i64 %t4495 to ptr
  %gml4497 = load i64, ptr %gmp4496, align 1, !alias.scope !4, !noalias !3
  %wp4498 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4497, ptr %wp4498, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbec word 0xd001bc8b
  %wp4499 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbf0 word 0xd001bc89
  %wp4500 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4500, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbf4 word 0xf941bd8c
  %r4501.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4501 = load i64, ptr %r4501.p, align 8, !alias.scope !3, !noalias !4
  %t4502 = add i64 %r4501, 888
  %gmp4503 = inttoptr i64 %t4502 to ptr
  %gml4504 = load i64, ptr %gmp4503, align 1, !alias.scope !4, !noalias !3
  %wp4505 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4504, ptr %wp4505, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbf8 word 0xf943016b
  %r4506.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4506 = load i64, ptr %r4506.p, align 8, !alias.scope !3, !noalias !4
  %t4507 = add i64 %r4506, 1536
  %gmp4508 = inttoptr i64 %t4507 to ptr
  %gml4509 = load i64, ptr %gmp4508, align 1, !alias.scope !4, !noalias !3
  %wp4510 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4509, ptr %wp4510, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbfc word 0x2a1703e5
  %r4511.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4511 = load i64, ptr %r4511.p, align 8, !alias.scope !3, !noalias !4
  %c4512 = trunc i64 %r4511 to i32
  %t4513 = or i32 0, %c4512
  %c4514 = zext i32 %t4513 to i64
  %wp4515 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4514, ptr %wp4515, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc00 word 0xaa1903e3
  %r4516.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4516 = load i64, ptr %r4516.p, align 8, !alias.scope !3, !noalias !4
  %t4517 = or i64 0, %r4516
  %wp4518 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4517, ptr %wp4518, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc04 word 0xf94007ea
  %r4519.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4519 = load i64, ptr %r4519.p, align 8, !alias.scope !3, !noalias !4
  %t4520 = add i64 %r4519, 8
  %gmp4521 = inttoptr i64 %t4520 to ptr
  %gml4522 = load i64, ptr %gmp4521, align 1, !alias.scope !4, !noalias !3
  %wp4523 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4522, ptr %wp4523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc08 word 0xf9430d29
  %r4524.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4524 = load i64, ptr %r4524.p, align 8, !alias.scope !3, !noalias !4
  %t4525 = add i64 %r4524, 1560
  %gmp4526 = inttoptr i64 %t4525 to ptr
  %gml4527 = load i64, ptr %gmp4526, align 1, !alias.scope !4, !noalias !3
  %wp4528 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4527, ptr %wp4528, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc0c word 0xb94007e4
  %r4529.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4529 = load i64, ptr %r4529.p, align 8, !alias.scope !3, !noalias !4
  %t4530 = add i64 %r4529, 4
  %gmp4531 = inttoptr i64 %t4530 to ptr
  %gml4532 = load i32, ptr %gmp4531, align 1, !alias.scope !4, !noalias !3
  %c4533 = zext i32 %gml4532 to i64
  %wp4534 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4533, ptr %wp4534, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc10 word 0x34ffa840
  %r4535.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4535 = load i64, ptr %r4535.p, align 8, !alias.scope !3, !noalias !4
  %c4536 = trunc i64 %r4535 to i32
  %cmp4537 = icmp eq i32 %c4536, 0
  br i1 %cmp4537, label %L_8001bc118, label %L_8001bcc14_ft
L_8001bcc6c:
  ; @pc 0x8001bcc6c word 0xf001bd00
  %wp4606 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp4606, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc70 word 0xaa0303f9
  %r4607.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4607 = load i64, ptr %r4607.p, align 8, !alias.scope !3, !noalias !4
  %t4608 = or i64 0, %r4607
  %wp4609 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4608, ptr %wp4609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc74 word 0xf9454c00
  %r4610.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4610 = load i64, ptr %r4610.p, align 8, !alias.scope !3, !noalias !4
  %t4611 = add i64 %r4610, 2712
  %gmp4612 = inttoptr i64 %t4611 to ptr
  %gml4613 = load i64, ptr %gmp4612, align 1, !alias.scope !4, !noalias !3
  %wp4614 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4613, ptr %wp4614, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc78 word 0xb90007e4
  %r4615.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4615 = load i64, ptr %r4615.p, align 8, !alias.scope !3, !noalias !4
  %t4616 = add i64 %r4615, 4
  %r4617.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4617 = load i64, ptr %r4617.p, align 8, !alias.scope !3, !noalias !4
  %c4618 = trunc i64 %r4617 to i32
  %gmp4619 = inttoptr i64 %t4616 to ptr
  store i32 %c4618, ptr %gmp4619, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcc7c word 0x2a0503f7
  %r4620.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4620 = load i64, ptr %r4620.p, align 8, !alias.scope !3, !noalias !4
  %c4621 = trunc i64 %r4620 to i32
  %t4622 = or i32 0, %c4621
  %c4623 = zext i32 %t4622 to i64
  %wp4624 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4623, ptr %wp4624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc80 word 0x94a79b48
  %wp4625 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560196, ptr %wp4625, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcc84 word 0x9001bded
  %wp4626 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4626, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc88 word 0x9001bdec
  %wp4627 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4627, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc8c word 0xf941b5ad
  %r4628.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4628 = load i64, ptr %r4628.p, align 8, !alias.scope !3, !noalias !4
  %t4629 = add i64 %r4628, 872
  %gmp4630 = inttoptr i64 %t4629 to ptr
  %gml4631 = load i64, ptr %gmp4630, align 1, !alias.scope !4, !noalias !3
  %wp4632 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4631, ptr %wp4632, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc90 word 0xd001bc8b
  %wp4633 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4633, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc94 word 0xd001bc89
  %wp4634 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4634, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc98 word 0xf941bd8c
  %r4635.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4635 = load i64, ptr %r4635.p, align 8, !alias.scope !3, !noalias !4
  %t4636 = add i64 %r4635, 888
  %gmp4637 = inttoptr i64 %t4636 to ptr
  %gml4638 = load i64, ptr %gmp4637, align 1, !alias.scope !4, !noalias !3
  %wp4639 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4638, ptr %wp4639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc9c word 0xf943016b
  %r4640.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4640 = load i64, ptr %r4640.p, align 8, !alias.scope !3, !noalias !4
  %t4641 = add i64 %r4640, 1536
  %gmp4642 = inttoptr i64 %t4641 to ptr
  %gml4643 = load i64, ptr %gmp4642, align 1, !alias.scope !4, !noalias !3
  %wp4644 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4643, ptr %wp4644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcca0 word 0x2a1703e5
  %r4645.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4645 = load i64, ptr %r4645.p, align 8, !alias.scope !3, !noalias !4
  %c4646 = trunc i64 %r4645 to i32
  %t4647 = or i32 0, %c4646
  %c4648 = zext i32 %t4647 to i64
  %wp4649 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4648, ptr %wp4649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcca4 word 0xaa1903e3
  %r4650.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4650 = load i64, ptr %r4650.p, align 8, !alias.scope !3, !noalias !4
  %t4651 = or i64 0, %r4650
  %wp4652 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4651, ptr %wp4652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcca8 word 0xf94007ea
  %r4653.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4653 = load i64, ptr %r4653.p, align 8, !alias.scope !3, !noalias !4
  %t4654 = add i64 %r4653, 8
  %gmp4655 = inttoptr i64 %t4654 to ptr
  %gml4656 = load i64, ptr %gmp4655, align 1, !alias.scope !4, !noalias !3
  %wp4657 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4656, ptr %wp4657, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccac word 0xf9430d29
  %r4658.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4658 = load i64, ptr %r4658.p, align 8, !alias.scope !3, !noalias !4
  %t4659 = add i64 %r4658, 1560
  %gmp4660 = inttoptr i64 %t4659 to ptr
  %gml4661 = load i64, ptr %gmp4660, align 1, !alias.scope !4, !noalias !3
  %wp4662 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4661, ptr %wp4662, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccb0 word 0xb94007e4
  %r4663.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4663 = load i64, ptr %r4663.p, align 8, !alias.scope !3, !noalias !4
  %t4664 = add i64 %r4663, 4
  %gmp4665 = inttoptr i64 %t4664 to ptr
  %gml4666 = load i32, ptr %gmp4665, align 1, !alias.scope !4, !noalias !3
  %c4667 = zext i32 %gml4666 to i64
  %wp4668 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4667, ptr %wp4668, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccb4 word 0x34ffb7e0
  %r4669.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4669 = load i64, ptr %r4669.p, align 8, !alias.scope !3, !noalias !4
  %c4670 = trunc i64 %r4669 to i32
  %cmp4671 = icmp eq i32 %c4670, 0
  br i1 %cmp4671, label %L_8001bc3b0, label %L_8001bccb8_ft
L_8001bcd10:
  ; @pc 0x8001bcd10 word 0x9001bde0
  %wp4740 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4740, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd14 word 0xaa0303f9
  %r4741.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4741 = load i64, ptr %r4741.p, align 8, !alias.scope !3, !noalias !4
  %t4742 = or i64 0, %r4741
  %wp4743 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4742, ptr %wp4743, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd18 word 0xf941bc00
  %r4744.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4744 = load i64, ptr %r4744.p, align 8, !alias.scope !3, !noalias !4
  %t4745 = add i64 %r4744, 888
  %gmp4746 = inttoptr i64 %t4745 to ptr
  %gml4747 = load i64, ptr %gmp4746, align 1, !alias.scope !4, !noalias !3
  %wp4748 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4747, ptr %wp4748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd1c word 0xb90007e4
  %r4749.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4749 = load i64, ptr %r4749.p, align 8, !alias.scope !3, !noalias !4
  %t4750 = add i64 %r4749, 4
  %r4751.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4751 = load i64, ptr %r4751.p, align 8, !alias.scope !3, !noalias !4
  %c4752 = trunc i64 %r4751 to i32
  %gmp4753 = inttoptr i64 %t4750 to ptr
  store i32 %c4752, ptr %gmp4753, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcd20 word 0x2a0503f7
  %r4754.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4754 = load i64, ptr %r4754.p, align 8, !alias.scope !3, !noalias !4
  %c4755 = trunc i64 %r4754 to i32
  %t4756 = or i32 0, %c4755
  %c4757 = zext i32 %t4756 to i64
  %wp4758 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4757, ptr %wp4758, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd24 word 0x94a79b1f
  %wp4759 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560360, ptr %wp4759, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcd28 word 0x9001bded
  %wp4760 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4760, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd2c word 0x9001bdec
  %wp4761 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd30 word 0xf941b5ad
  %r4762.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4762 = load i64, ptr %r4762.p, align 8, !alias.scope !3, !noalias !4
  %t4763 = add i64 %r4762, 872
  %gmp4764 = inttoptr i64 %t4763 to ptr
  %gml4765 = load i64, ptr %gmp4764, align 1, !alias.scope !4, !noalias !3
  %wp4766 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4765, ptr %wp4766, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd34 word 0xd001bc8b
  %wp4767 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd38 word 0xd001bc89
  %wp4768 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd3c word 0xf941bd8c
  %r4769.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4769 = load i64, ptr %r4769.p, align 8, !alias.scope !3, !noalias !4
  %t4770 = add i64 %r4769, 888
  %gmp4771 = inttoptr i64 %t4770 to ptr
  %gml4772 = load i64, ptr %gmp4771, align 1, !alias.scope !4, !noalias !3
  %wp4773 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4772, ptr %wp4773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd40 word 0xf943016b
  %r4774.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4774 = load i64, ptr %r4774.p, align 8, !alias.scope !3, !noalias !4
  %t4775 = add i64 %r4774, 1536
  %gmp4776 = inttoptr i64 %t4775 to ptr
  %gml4777 = load i64, ptr %gmp4776, align 1, !alias.scope !4, !noalias !3
  %wp4778 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4777, ptr %wp4778, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd44 word 0x2a1703e5
  %r4779.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4779 = load i64, ptr %r4779.p, align 8, !alias.scope !3, !noalias !4
  %c4780 = trunc i64 %r4779 to i32
  %t4781 = or i32 0, %c4780
  %c4782 = zext i32 %t4781 to i64
  %wp4783 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4782, ptr %wp4783, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd48 word 0xaa1903e3
  %r4784.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4784 = load i64, ptr %r4784.p, align 8, !alias.scope !3, !noalias !4
  %t4785 = or i64 0, %r4784
  %wp4786 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4785, ptr %wp4786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd4c word 0xf94007ea
  %r4787.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4787 = load i64, ptr %r4787.p, align 8, !alias.scope !3, !noalias !4
  %t4788 = add i64 %r4787, 8
  %gmp4789 = inttoptr i64 %t4788 to ptr
  %gml4790 = load i64, ptr %gmp4789, align 1, !alias.scope !4, !noalias !3
  %wp4791 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4790, ptr %wp4791, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd50 word 0xf9430d29
  %r4792.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4792 = load i64, ptr %r4792.p, align 8, !alias.scope !3, !noalias !4
  %t4793 = add i64 %r4792, 1560
  %gmp4794 = inttoptr i64 %t4793 to ptr
  %gml4795 = load i64, ptr %gmp4794, align 1, !alias.scope !4, !noalias !3
  %wp4796 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4795, ptr %wp4796, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd54 word 0xb94007e4
  %r4797.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4797 = load i64, ptr %r4797.p, align 8, !alias.scope !3, !noalias !4
  %t4798 = add i64 %r4797, 4
  %gmp4799 = inttoptr i64 %t4798 to ptr
  %gml4800 = load i32, ptr %gmp4799, align 1, !alias.scope !4, !noalias !3
  %c4801 = zext i32 %gml4800 to i64
  %wp4802 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4801, ptr %wp4802, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd58 word 0x34ff8600
  %r4803.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4803 = load i64, ptr %r4803.p, align 8, !alias.scope !3, !noalias !4
  %c4804 = trunc i64 %r4803 to i32
  %cmp4805 = icmp eq i32 %c4804, 0
  br i1 %cmp4805, label %L_8001bbe18, label %L_8001bcd5c_ft
L_8001bcdb4:
  ; @pc 0x8001bcdb4 word 0xd001bc80
  %wp4874 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4874, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdb8 word 0xaa0303f9
  %r4875.p = getelementptr inbounds i8, ptr %c, i64 24
  %r4875 = load i64, ptr %r4875.p, align 8, !alias.scope !3, !noalias !4
  %t4876 = or i64 0, %r4875
  %wp4877 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t4876, ptr %wp4877, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdbc word 0xf9430000
  %r4878.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4878 = load i64, ptr %r4878.p, align 8, !alias.scope !3, !noalias !4
  %t4879 = add i64 %r4878, 1536
  %gmp4880 = inttoptr i64 %t4879 to ptr
  %gml4881 = load i64, ptr %gmp4880, align 1, !alias.scope !4, !noalias !3
  %wp4882 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4881, ptr %wp4882, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdc0 word 0xb90007e4
  %r4883.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4883 = load i64, ptr %r4883.p, align 8, !alias.scope !3, !noalias !4
  %t4884 = add i64 %r4883, 4
  %r4885.p = getelementptr inbounds i8, ptr %c, i64 32
  %r4885 = load i64, ptr %r4885.p, align 8, !alias.scope !3, !noalias !4
  %c4886 = trunc i64 %r4885 to i32
  %gmp4887 = inttoptr i64 %t4884 to ptr
  store i32 %c4886, ptr %gmp4887, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcdc4 word 0x2a0503f7
  %r4888.p = getelementptr inbounds i8, ptr %c, i64 40
  %r4888 = load i64, ptr %r4888.p, align 8, !alias.scope !3, !noalias !4
  %c4889 = trunc i64 %r4888 to i32
  %t4890 = or i32 0, %c4889
  %c4891 = zext i32 %t4890 to i64
  %wp4892 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c4891, ptr %wp4892, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdc8 word 0x94a79af6
  %wp4893 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560524, ptr %wp4893, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcdcc word 0x9001bded
  %wp4894 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdd0 word 0x9001bdec
  %wp4895 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdd4 word 0xf941b5ad
  %r4896.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4896 = load i64, ptr %r4896.p, align 8, !alias.scope !3, !noalias !4
  %t4897 = add i64 %r4896, 872
  %gmp4898 = inttoptr i64 %t4897 to ptr
  %gml4899 = load i64, ptr %gmp4898, align 1, !alias.scope !4, !noalias !3
  %wp4900 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4899, ptr %wp4900, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdd8 word 0xd001bc8b
  %wp4901 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcddc word 0xd001bc89
  %wp4902 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcde0 word 0xf941bd8c
  %r4903.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4903 = load i64, ptr %r4903.p, align 8, !alias.scope !3, !noalias !4
  %t4904 = add i64 %r4903, 888
  %gmp4905 = inttoptr i64 %t4904 to ptr
  %gml4906 = load i64, ptr %gmp4905, align 1, !alias.scope !4, !noalias !3
  %wp4907 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4906, ptr %wp4907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcde4 word 0xf943016b
  %r4908.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4908 = load i64, ptr %r4908.p, align 8, !alias.scope !3, !noalias !4
  %t4909 = add i64 %r4908, 1536
  %gmp4910 = inttoptr i64 %t4909 to ptr
  %gml4911 = load i64, ptr %gmp4910, align 1, !alias.scope !4, !noalias !3
  %wp4912 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4911, ptr %wp4912, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcde8 word 0x2a1703e5
  %r4913.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4913 = load i64, ptr %r4913.p, align 8, !alias.scope !3, !noalias !4
  %c4914 = trunc i64 %r4913 to i32
  %t4915 = or i32 0, %c4914
  %c4916 = zext i32 %t4915 to i64
  %wp4917 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4916, ptr %wp4917, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdec word 0xaa1903e3
  %r4918.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4918 = load i64, ptr %r4918.p, align 8, !alias.scope !3, !noalias !4
  %t4919 = or i64 0, %r4918
  %wp4920 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4919, ptr %wp4920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdf0 word 0xf94007ea
  %r4921.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4921 = load i64, ptr %r4921.p, align 8, !alias.scope !3, !noalias !4
  %t4922 = add i64 %r4921, 8
  %gmp4923 = inttoptr i64 %t4922 to ptr
  %gml4924 = load i64, ptr %gmp4923, align 1, !alias.scope !4, !noalias !3
  %wp4925 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4924, ptr %wp4925, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdf4 word 0xf9430d29
  %r4926.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4926 = load i64, ptr %r4926.p, align 8, !alias.scope !3, !noalias !4
  %t4927 = add i64 %r4926, 1560
  %gmp4928 = inttoptr i64 %t4927 to ptr
  %gml4929 = load i64, ptr %gmp4928, align 1, !alias.scope !4, !noalias !3
  %wp4930 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4929, ptr %wp4930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdf8 word 0xb94007e4
  %r4931.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4931 = load i64, ptr %r4931.p, align 8, !alias.scope !3, !noalias !4
  %t4932 = add i64 %r4931, 4
  %gmp4933 = inttoptr i64 %t4932 to ptr
  %gml4934 = load i32, ptr %gmp4933, align 1, !alias.scope !4, !noalias !3
  %c4935 = zext i32 %gml4934 to i64
  %wp4936 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4935, ptr %wp4936, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdfc word 0x34ff8120
  %r4937.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4937 = load i64, ptr %r4937.p, align 8, !alias.scope !3, !noalias !4
  %c4938 = trunc i64 %r4937 to i32
  %cmp4939 = icmp eq i32 %c4938, 0
  br i1 %cmp4939, label %L_8001bbe20, label %L_8001bce00_ft
L_8001bce58:
  ; @pc 0x8001bce58 word 0x9001bde0
  %wp5008 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5008, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce5c word 0xaa0303f9
  %r5009.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5009 = load i64, ptr %r5009.p, align 8, !alias.scope !3, !noalias !4
  %t5010 = or i64 0, %r5009
  %wp5011 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5010, ptr %wp5011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce60 word 0xf941bc00
  %r5012.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5012 = load i64, ptr %r5012.p, align 8, !alias.scope !3, !noalias !4
  %t5013 = add i64 %r5012, 888
  %gmp5014 = inttoptr i64 %t5013 to ptr
  %gml5015 = load i64, ptr %gmp5014, align 1, !alias.scope !4, !noalias !3
  %wp5016 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5015, ptr %wp5016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce64 word 0xb90007e4
  %r5017.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5017 = load i64, ptr %r5017.p, align 8, !alias.scope !3, !noalias !4
  %t5018 = add i64 %r5017, 4
  %r5019.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5019 = load i64, ptr %r5019.p, align 8, !alias.scope !3, !noalias !4
  %c5020 = trunc i64 %r5019 to i32
  %gmp5021 = inttoptr i64 %t5018 to ptr
  store i32 %c5020, ptr %gmp5021, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bce68 word 0x2a0503f7
  %r5022.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5022 = load i64, ptr %r5022.p, align 8, !alias.scope !3, !noalias !4
  %c5023 = trunc i64 %r5022 to i32
  %t5024 = or i32 0, %c5023
  %c5025 = zext i32 %t5024 to i64
  %wp5026 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5025, ptr %wp5026, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce6c word 0x94a79acd
  %wp5027 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560688, ptr %wp5027, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bce70 word 0x9001bded
  %wp5028 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5028, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce74 word 0x9001bdec
  %wp5029 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5029, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce78 word 0xf941b5ad
  %r5030.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5030 = load i64, ptr %r5030.p, align 8, !alias.scope !3, !noalias !4
  %t5031 = add i64 %r5030, 872
  %gmp5032 = inttoptr i64 %t5031 to ptr
  %gml5033 = load i64, ptr %gmp5032, align 1, !alias.scope !4, !noalias !3
  %wp5034 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5033, ptr %wp5034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce7c word 0xd001bc8b
  %wp5035 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce80 word 0xd001bc89
  %wp5036 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce84 word 0xf941bd8c
  %r5037.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5037 = load i64, ptr %r5037.p, align 8, !alias.scope !3, !noalias !4
  %t5038 = add i64 %r5037, 888
  %gmp5039 = inttoptr i64 %t5038 to ptr
  %gml5040 = load i64, ptr %gmp5039, align 1, !alias.scope !4, !noalias !3
  %wp5041 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5040, ptr %wp5041, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce88 word 0xf943016b
  %r5042.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5042 = load i64, ptr %r5042.p, align 8, !alias.scope !3, !noalias !4
  %t5043 = add i64 %r5042, 1536
  %gmp5044 = inttoptr i64 %t5043 to ptr
  %gml5045 = load i64, ptr %gmp5044, align 1, !alias.scope !4, !noalias !3
  %wp5046 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5045, ptr %wp5046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce8c word 0x2a1703e5
  %r5047.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5047 = load i64, ptr %r5047.p, align 8, !alias.scope !3, !noalias !4
  %c5048 = trunc i64 %r5047 to i32
  %t5049 = or i32 0, %c5048
  %c5050 = zext i32 %t5049 to i64
  %wp5051 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5050, ptr %wp5051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce90 word 0xaa1903e3
  %r5052.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5052 = load i64, ptr %r5052.p, align 8, !alias.scope !3, !noalias !4
  %t5053 = or i64 0, %r5052
  %wp5054 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5053, ptr %wp5054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce94 word 0xf94007ea
  %r5055.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5055 = load i64, ptr %r5055.p, align 8, !alias.scope !3, !noalias !4
  %t5056 = add i64 %r5055, 8
  %gmp5057 = inttoptr i64 %t5056 to ptr
  %gml5058 = load i64, ptr %gmp5057, align 1, !alias.scope !4, !noalias !3
  %wp5059 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5058, ptr %wp5059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce98 word 0xf9430d29
  %r5060.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5060 = load i64, ptr %r5060.p, align 8, !alias.scope !3, !noalias !4
  %t5061 = add i64 %r5060, 1560
  %gmp5062 = inttoptr i64 %t5061 to ptr
  %gml5063 = load i64, ptr %gmp5062, align 1, !alias.scope !4, !noalias !3
  %wp5064 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5063, ptr %wp5064, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce9c word 0xb94007e4
  %r5065.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5065 = load i64, ptr %r5065.p, align 8, !alias.scope !3, !noalias !4
  %t5066 = add i64 %r5065, 4
  %gmp5067 = inttoptr i64 %t5066 to ptr
  %gml5068 = load i32, ptr %gmp5067, align 1, !alias.scope !4, !noalias !3
  %c5069 = zext i32 %gml5068 to i64
  %wp5070 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5069, ptr %wp5070, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcea0 word 0x34ff9520
  %r5071.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5071 = load i64, ptr %r5071.p, align 8, !alias.scope !3, !noalias !4
  %c5072 = trunc i64 %r5071 to i32
  %cmp5073 = icmp eq i32 %c5072, 0
  br i1 %cmp5073, label %L_8001bc144, label %L_8001bcea4_ft
L_8001bcefc:
  ; @pc 0x8001bcefc word 0xd001bc80
  %wp5142 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5142, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf00 word 0xaa0303f9
  %r5143.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5143 = load i64, ptr %r5143.p, align 8, !alias.scope !3, !noalias !4
  %t5144 = or i64 0, %r5143
  %wp5145 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5144, ptr %wp5145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf04 word 0xf9430000
  %r5146.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5146 = load i64, ptr %r5146.p, align 8, !alias.scope !3, !noalias !4
  %t5147 = add i64 %r5146, 1536
  %gmp5148 = inttoptr i64 %t5147 to ptr
  %gml5149 = load i64, ptr %gmp5148, align 1, !alias.scope !4, !noalias !3
  %wp5150 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5149, ptr %wp5150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf08 word 0xb90007e4
  %r5151.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5151 = load i64, ptr %r5151.p, align 8, !alias.scope !3, !noalias !4
  %t5152 = add i64 %r5151, 4
  %r5153.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5153 = load i64, ptr %r5153.p, align 8, !alias.scope !3, !noalias !4
  %c5154 = trunc i64 %r5153 to i32
  %gmp5155 = inttoptr i64 %t5152 to ptr
  store i32 %c5154, ptr %gmp5155, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcf0c word 0x2a0503f7
  %r5156.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5156 = load i64, ptr %r5156.p, align 8, !alias.scope !3, !noalias !4
  %c5157 = trunc i64 %r5156 to i32
  %t5158 = or i32 0, %c5157
  %c5159 = zext i32 %t5158 to i64
  %wp5160 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5159, ptr %wp5160, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf10 word 0x94a79aa4
  %wp5161 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560852, ptr %wp5161, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcf14 word 0x9001bded
  %wp5162 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5162, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf18 word 0x9001bdec
  %wp5163 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5163, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf1c word 0xf941b5ad
  %r5164.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5164 = load i64, ptr %r5164.p, align 8, !alias.scope !3, !noalias !4
  %t5165 = add i64 %r5164, 872
  %gmp5166 = inttoptr i64 %t5165 to ptr
  %gml5167 = load i64, ptr %gmp5166, align 1, !alias.scope !4, !noalias !3
  %wp5168 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5167, ptr %wp5168, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf20 word 0xd001bc8b
  %wp5169 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5169, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf24 word 0xd001bc89
  %wp5170 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5170, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf28 word 0xf941bd8c
  %r5171.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5171 = load i64, ptr %r5171.p, align 8, !alias.scope !3, !noalias !4
  %t5172 = add i64 %r5171, 888
  %gmp5173 = inttoptr i64 %t5172 to ptr
  %gml5174 = load i64, ptr %gmp5173, align 1, !alias.scope !4, !noalias !3
  %wp5175 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5174, ptr %wp5175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf2c word 0xf943016b
  %r5176.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5176 = load i64, ptr %r5176.p, align 8, !alias.scope !3, !noalias !4
  %t5177 = add i64 %r5176, 1536
  %gmp5178 = inttoptr i64 %t5177 to ptr
  %gml5179 = load i64, ptr %gmp5178, align 1, !alias.scope !4, !noalias !3
  %wp5180 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5179, ptr %wp5180, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf30 word 0x2a1703e5
  %r5181.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5181 = load i64, ptr %r5181.p, align 8, !alias.scope !3, !noalias !4
  %c5182 = trunc i64 %r5181 to i32
  %t5183 = or i32 0, %c5182
  %c5184 = zext i32 %t5183 to i64
  %wp5185 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5184, ptr %wp5185, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf34 word 0xaa1903e3
  %r5186.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5186 = load i64, ptr %r5186.p, align 8, !alias.scope !3, !noalias !4
  %t5187 = or i64 0, %r5186
  %wp5188 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5187, ptr %wp5188, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf38 word 0xf94007ea
  %r5189.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5189 = load i64, ptr %r5189.p, align 8, !alias.scope !3, !noalias !4
  %t5190 = add i64 %r5189, 8
  %gmp5191 = inttoptr i64 %t5190 to ptr
  %gml5192 = load i64, ptr %gmp5191, align 1, !alias.scope !4, !noalias !3
  %wp5193 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5192, ptr %wp5193, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf3c word 0xf9430d29
  %r5194.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5194 = load i64, ptr %r5194.p, align 8, !alias.scope !3, !noalias !4
  %t5195 = add i64 %r5194, 1560
  %gmp5196 = inttoptr i64 %t5195 to ptr
  %gml5197 = load i64, ptr %gmp5196, align 1, !alias.scope !4, !noalias !3
  %wp5198 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5197, ptr %wp5198, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf40 word 0xb94007e4
  %r5199.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5199 = load i64, ptr %r5199.p, align 8, !alias.scope !3, !noalias !4
  %t5200 = add i64 %r5199, 4
  %gmp5201 = inttoptr i64 %t5200 to ptr
  %gml5202 = load i32, ptr %gmp5201, align 1, !alias.scope !4, !noalias !3
  %c5203 = zext i32 %gml5202 to i64
  %wp5204 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5203, ptr %wp5204, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf44 word 0x34ff9040
  %r5205.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5205 = load i64, ptr %r5205.p, align 8, !alias.scope !3, !noalias !4
  %c5206 = trunc i64 %r5205 to i32
  %cmp5207 = icmp eq i32 %c5206, 0
  br i1 %cmp5207, label %L_8001bc14c, label %L_8001bcf48_ft
L_8001bcfa0:
  ; @pc 0x8001bcfa0 word 0x9001bde0
  %wp5276 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfa4 word 0xaa0303f9
  %r5277.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5277 = load i64, ptr %r5277.p, align 8, !alias.scope !3, !noalias !4
  %t5278 = or i64 0, %r5277
  %wp5279 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5278, ptr %wp5279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfa8 word 0xf941bc00
  %r5280.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5280 = load i64, ptr %r5280.p, align 8, !alias.scope !3, !noalias !4
  %t5281 = add i64 %r5280, 888
  %gmp5282 = inttoptr i64 %t5281 to ptr
  %gml5283 = load i64, ptr %gmp5282, align 1, !alias.scope !4, !noalias !3
  %wp5284 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5283, ptr %wp5284, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfac word 0xb90007e4
  %r5285.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5285 = load i64, ptr %r5285.p, align 8, !alias.scope !3, !noalias !4
  %t5286 = add i64 %r5285, 4
  %r5287.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5287 = load i64, ptr %r5287.p, align 8, !alias.scope !3, !noalias !4
  %c5288 = trunc i64 %r5287 to i32
  %gmp5289 = inttoptr i64 %t5286 to ptr
  store i32 %c5288, ptr %gmp5289, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcfb0 word 0x2a0503f7
  %r5290.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5290 = load i64, ptr %r5290.p, align 8, !alias.scope !3, !noalias !4
  %c5291 = trunc i64 %r5290 to i32
  %t5292 = or i32 0, %c5291
  %c5293 = zext i32 %t5292 to i64
  %wp5294 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5293, ptr %wp5294, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfb4 word 0x94a79a7b
  %wp5295 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561016, ptr %wp5295, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bcfb8 word 0x9001bded
  %wp5296 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfbc word 0x9001bdec
  %wp5297 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfc0 word 0xf941b5ad
  %r5298.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5298 = load i64, ptr %r5298.p, align 8, !alias.scope !3, !noalias !4
  %t5299 = add i64 %r5298, 872
  %gmp5300 = inttoptr i64 %t5299 to ptr
  %gml5301 = load i64, ptr %gmp5300, align 1, !alias.scope !4, !noalias !3
  %wp5302 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5301, ptr %wp5302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfc4 word 0xd001bc8b
  %wp5303 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfc8 word 0xd001bc89
  %wp5304 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5304, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfcc word 0xf941bd8c
  %r5305.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5305 = load i64, ptr %r5305.p, align 8, !alias.scope !3, !noalias !4
  %t5306 = add i64 %r5305, 888
  %gmp5307 = inttoptr i64 %t5306 to ptr
  %gml5308 = load i64, ptr %gmp5307, align 1, !alias.scope !4, !noalias !3
  %wp5309 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5308, ptr %wp5309, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfd0 word 0xf943016b
  %r5310.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5310 = load i64, ptr %r5310.p, align 8, !alias.scope !3, !noalias !4
  %t5311 = add i64 %r5310, 1536
  %gmp5312 = inttoptr i64 %t5311 to ptr
  %gml5313 = load i64, ptr %gmp5312, align 1, !alias.scope !4, !noalias !3
  %wp5314 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5313, ptr %wp5314, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfd4 word 0x2a1703e5
  %r5315.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5315 = load i64, ptr %r5315.p, align 8, !alias.scope !3, !noalias !4
  %c5316 = trunc i64 %r5315 to i32
  %t5317 = or i32 0, %c5316
  %c5318 = zext i32 %t5317 to i64
  %wp5319 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5318, ptr %wp5319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfd8 word 0xaa1903e3
  %r5320.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5320 = load i64, ptr %r5320.p, align 8, !alias.scope !3, !noalias !4
  %t5321 = or i64 0, %r5320
  %wp5322 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5321, ptr %wp5322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfdc word 0xf94007ea
  %r5323.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5323 = load i64, ptr %r5323.p, align 8, !alias.scope !3, !noalias !4
  %t5324 = add i64 %r5323, 8
  %gmp5325 = inttoptr i64 %t5324 to ptr
  %gml5326 = load i64, ptr %gmp5325, align 1, !alias.scope !4, !noalias !3
  %wp5327 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5326, ptr %wp5327, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfe0 word 0xf9430d29
  %r5328.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5328 = load i64, ptr %r5328.p, align 8, !alias.scope !3, !noalias !4
  %t5329 = add i64 %r5328, 1560
  %gmp5330 = inttoptr i64 %t5329 to ptr
  %gml5331 = load i64, ptr %gmp5330, align 1, !alias.scope !4, !noalias !3
  %wp5332 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5331, ptr %wp5332, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfe4 word 0xb94007e4
  %r5333.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5333 = load i64, ptr %r5333.p, align 8, !alias.scope !3, !noalias !4
  %t5334 = add i64 %r5333, 4
  %gmp5335 = inttoptr i64 %t5334 to ptr
  %gml5336 = load i32, ptr %gmp5335, align 1, !alias.scope !4, !noalias !3
  %c5337 = zext i32 %gml5336 to i64
  %wp5338 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5337, ptr %wp5338, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcfe8 word 0x34ff9500
  %r5339.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5339 = load i64, ptr %r5339.p, align 8, !alias.scope !3, !noalias !4
  %c5340 = trunc i64 %r5339 to i32
  %cmp5341 = icmp eq i32 %c5340, 0
  br i1 %cmp5341, label %L_8001bc288, label %L_8001bcfec_ft
L_8001bd044:
  ; @pc 0x8001bd044 word 0xb001bc80
  %wp5410 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd048 word 0xaa0303f9
  %r5411.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5411 = load i64, ptr %r5411.p, align 8, !alias.scope !3, !noalias !4
  %t5412 = or i64 0, %r5411
  %wp5413 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5412, ptr %wp5413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd04c word 0xf9430000
  %r5414.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5414 = load i64, ptr %r5414.p, align 8, !alias.scope !3, !noalias !4
  %t5415 = add i64 %r5414, 1536
  %gmp5416 = inttoptr i64 %t5415 to ptr
  %gml5417 = load i64, ptr %gmp5416, align 1, !alias.scope !4, !noalias !3
  %wp5418 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5417, ptr %wp5418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd050 word 0xb90007e4
  %r5419.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5419 = load i64, ptr %r5419.p, align 8, !alias.scope !3, !noalias !4
  %t5420 = add i64 %r5419, 4
  %r5421.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5421 = load i64, ptr %r5421.p, align 8, !alias.scope !3, !noalias !4
  %c5422 = trunc i64 %r5421 to i32
  %gmp5423 = inttoptr i64 %t5420 to ptr
  store i32 %c5422, ptr %gmp5423, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd054 word 0x2a0503f7
  %r5424.p = getelementptr inbounds i8, ptr %c, i64 40
  %r5424 = load i64, ptr %r5424.p, align 8, !alias.scope !3, !noalias !4
  %c5425 = trunc i64 %r5424 to i32
  %t5426 = or i32 0, %c5425
  %c5427 = zext i32 %t5426 to i64
  %wp5428 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5427, ptr %wp5428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd058 word 0x94a79a52
  %wp5429 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561180, ptr %wp5429, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bd05c word 0xf001bdcd
  %wp5430 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd060 word 0xf001bdcc
  %wp5431 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5431, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd064 word 0xf941b5ad
  %r5432.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5432 = load i64, ptr %r5432.p, align 8, !alias.scope !3, !noalias !4
  %t5433 = add i64 %r5432, 872
  %gmp5434 = inttoptr i64 %t5433 to ptr
  %gml5435 = load i64, ptr %gmp5434, align 1, !alias.scope !4, !noalias !3
  %wp5436 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5435, ptr %wp5436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd068 word 0xb001bc8b
  %wp5437 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd06c word 0xb001bc89
  %wp5438 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd070 word 0xf941bd8c
  %r5439.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5439 = load i64, ptr %r5439.p, align 8, !alias.scope !3, !noalias !4
  %t5440 = add i64 %r5439, 888
  %gmp5441 = inttoptr i64 %t5440 to ptr
  %gml5442 = load i64, ptr %gmp5441, align 1, !alias.scope !4, !noalias !3
  %wp5443 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5442, ptr %wp5443, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd074 word 0xf943016b
  %r5444.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5444 = load i64, ptr %r5444.p, align 8, !alias.scope !3, !noalias !4
  %t5445 = add i64 %r5444, 1536
  %gmp5446 = inttoptr i64 %t5445 to ptr
  %gml5447 = load i64, ptr %gmp5446, align 1, !alias.scope !4, !noalias !3
  %wp5448 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5447, ptr %wp5448, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd078 word 0x2a1703e5
  %r5449.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5449 = load i64, ptr %r5449.p, align 8, !alias.scope !3, !noalias !4
  %c5450 = trunc i64 %r5449 to i32
  %t5451 = or i32 0, %c5450
  %c5452 = zext i32 %t5451 to i64
  %wp5453 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5452, ptr %wp5453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd07c word 0xaa1903e3
  %r5454.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5454 = load i64, ptr %r5454.p, align 8, !alias.scope !3, !noalias !4
  %t5455 = or i64 0, %r5454
  %wp5456 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5455, ptr %wp5456, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd080 word 0xf94007ea
  %r5457.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5457 = load i64, ptr %r5457.p, align 8, !alias.scope !3, !noalias !4
  %t5458 = add i64 %r5457, 8
  %gmp5459 = inttoptr i64 %t5458 to ptr
  %gml5460 = load i64, ptr %gmp5459, align 1, !alias.scope !4, !noalias !3
  %wp5461 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5460, ptr %wp5461, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd084 word 0xf9430d29
  %r5462.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5462 = load i64, ptr %r5462.p, align 8, !alias.scope !3, !noalias !4
  %t5463 = add i64 %r5462, 1560
  %gmp5464 = inttoptr i64 %t5463 to ptr
  %gml5465 = load i64, ptr %gmp5464, align 1, !alias.scope !4, !noalias !3
  %wp5466 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5465, ptr %wp5466, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd088 word 0xb94007e4
  %r5467.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5467 = load i64, ptr %r5467.p, align 8, !alias.scope !3, !noalias !4
  %t5468 = add i64 %r5467, 4
  %gmp5469 = inttoptr i64 %t5468 to ptr
  %gml5470 = load i32, ptr %gmp5469, align 1, !alias.scope !4, !noalias !3
  %c5471 = zext i32 %gml5470 to i64
  %wp5472 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5471, ptr %wp5472, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd08c word 0x34ff9020
  %r5473.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5473 = load i64, ptr %r5473.p, align 8, !alias.scope !3, !noalias !4
  %c5474 = trunc i64 %r5473 to i32
  %cmp5475 = icmp eq i32 %c5474, 0
  br i1 %cmp5475, label %L_8001bc290, label %L_8001bd090_ft
L_8001bd0e8:
  ; @pc 0x8001bd0e8 word 0xf001bdc0
  %wp5544 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0ec word 0x2a0403f7
  %r5545.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5545 = load i64, ptr %r5545.p, align 8, !alias.scope !3, !noalias !4
  %c5546 = trunc i64 %r5545 to i32
  %t5547 = or i32 0, %c5546
  %c5548 = zext i32 %t5547 to i64
  %wp5549 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5548, ptr %wp5549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0f0 word 0xf941bc00
  %r5550.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5550 = load i64, ptr %r5550.p, align 8, !alias.scope !3, !noalias !4
  %t5551 = add i64 %r5550, 888
  %gmp5552 = inttoptr i64 %t5551 to ptr
  %gml5553 = load i64, ptr %gmp5552, align 1, !alias.scope !4, !noalias !3
  %wp5554 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5553, ptr %wp5554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0f4 word 0xaa0303f9
  %r5555.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5555 = load i64, ptr %r5555.p, align 8, !alias.scope !3, !noalias !4
  %t5556 = or i64 0, %r5555
  %wp5557 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5556, ptr %wp5557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0f8 word 0x94a79a2a
  %wp5558 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561340, ptr %wp5558, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bd0fc word 0xb001bc8b
  %wp5559 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5559, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd100 word 0xb001bc89
  %wp5560 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd104 word 0xf943016b
  %r5561.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5561 = load i64, ptr %r5561.p, align 8, !alias.scope !3, !noalias !4
  %t5562 = add i64 %r5561, 1536
  %gmp5563 = inttoptr i64 %t5562 to ptr
  %gml5564 = load i64, ptr %gmp5563, align 1, !alias.scope !4, !noalias !3
  %wp5565 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5564, ptr %wp5565, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd108 word 0xf9430d29
  %r5566.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5566 = load i64, ptr %r5566.p, align 8, !alias.scope !3, !noalias !4
  %t5567 = add i64 %r5566, 1560
  %gmp5568 = inttoptr i64 %t5567 to ptr
  %gml5569 = load i64, ptr %gmp5568, align 1, !alias.scope !4, !noalias !3
  %wp5570 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5569, ptr %wp5570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd10c word 0x52b84005
  %c5571 = zext i32 -1040187392 to i64
  %wp5572 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5571, ptr %wp5572, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd110 word 0xaa1903e3
  %r5573.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5573 = load i64, ptr %r5573.p, align 8, !alias.scope !3, !noalias !4
  %t5574 = or i64 0, %r5573
  %wp5575 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5574, ptr %wp5575, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd114 word 0x2a1703e4
  %r5576.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5576 = load i64, ptr %r5576.p, align 8, !alias.scope !3, !noalias !4
  %c5577 = trunc i64 %r5576 to i32
  %t5578 = or i32 0, %c5577
  %c5579 = zext i32 %t5578 to i64
  %wp5580 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5579, ptr %wp5580, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd118 word 0x34ff97e0
  %r5581.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5581 = load i64, ptr %r5581.p, align 8, !alias.scope !3, !noalias !4
  %c5582 = trunc i64 %r5581 to i32
  %cmp5583 = icmp eq i32 %c5582, 0
  br i1 %cmp5583, label %L_8001bc414, label %L_8001bd11c_ft
L_8001bd160:
  ; @pc 0x8001bd160 word 0xb001bc80
  %wp5631 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5631, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd164 word 0x2a0403f7
  %r5632.p = getelementptr inbounds i8, ptr %c, i64 32
  %r5632 = load i64, ptr %r5632.p, align 8, !alias.scope !3, !noalias !4
  %c5633 = trunc i64 %r5632 to i32
  %t5634 = or i32 0, %c5633
  %c5635 = zext i32 %t5634 to i64
  %wp5636 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5635, ptr %wp5636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd168 word 0xf9430000
  %r5637.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5637 = load i64, ptr %r5637.p, align 8, !alias.scope !3, !noalias !4
  %t5638 = add i64 %r5637, 1536
  %gmp5639 = inttoptr i64 %t5638 to ptr
  %gml5640 = load i64, ptr %gmp5639, align 1, !alias.scope !4, !noalias !3
  %wp5641 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5640, ptr %wp5641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd16c word 0xaa0303f9
  %r5642.p = getelementptr inbounds i8, ptr %c, i64 24
  %r5642 = load i64, ptr %r5642.p, align 8, !alias.scope !3, !noalias !4
  %t5643 = or i64 0, %r5642
  %wp5644 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t5643, ptr %wp5644, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd170 word 0x94a79a0c
  %wp5645 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561460, ptr %wp5645, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bd174 word 0xb001bc89
  %wp5646 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd178 word 0x52b84005
  %c5647 = zext i32 -1040187392 to i64
  %wp5648 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5647, ptr %wp5648, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd17c word 0xf9430d29
  %r5649.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5649 = load i64, ptr %r5649.p, align 8, !alias.scope !3, !noalias !4
  %t5650 = add i64 %r5649, 1560
  %gmp5651 = inttoptr i64 %t5650 to ptr
  %gml5652 = load i64, ptr %gmp5651, align 1, !alias.scope !4, !noalias !3
  %wp5653 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5652, ptr %wp5653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd180 word 0xaa1903e3
  %r5654.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5654 = load i64, ptr %r5654.p, align 8, !alias.scope !3, !noalias !4
  %t5655 = or i64 0, %r5654
  %wp5656 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5655, ptr %wp5656, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd184 word 0x2a1703e4
  %r5657.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5657 = load i64, ptr %r5657.p, align 8, !alias.scope !3, !noalias !4
  %c5658 = trunc i64 %r5657 to i32
  %t5659 = or i32 0, %c5658
  %c5660 = zext i32 %t5659 to i64
  %wp5661 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5660, ptr %wp5661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd188 word 0x34ff94a0
  %r5662.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5662 = load i64, ptr %r5662.p, align 8, !alias.scope !3, !noalias !4
  %c5663 = trunc i64 %r5662 to i32
  %cmp5664 = icmp eq i32 %c5663, 0
  br i1 %cmp5664, label %L_8001bc41c, label %L_8001bd18c_ft
L_8001bd1c8:
  ; @pc 0x8001bd1c8 word 0xaa1f03e0
  %t5706 = or i64 0, 0
  %wp5707 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5706, ptr %wp5707, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1cc word 0x17fffb97
  br label %L_8001bc028
L_8001bd1d0:
  ; @pc 0x8001bd1d0 word 0x34ff9df0
  %r5708.p = getelementptr inbounds i8, ptr %c, i64 128
  %r5708 = load i64, ptr %r5708.p, align 8, !alias.scope !3, !noalias !4
  %c5709 = trunc i64 %r5708 to i32
  %cmp5710 = icmp eq i32 %c5709, 0
  br i1 %cmp5710, label %L_8001bc58c, label %L_8001bd1d4_ft
L_8001bd1e0:
  ; @pc 0x8001bd1e0 word 0xb9403c09
  %r5737.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5737 = load i64, ptr %r5737.p, align 8, !alias.scope !3, !noalias !4
  %t5738 = add i64 %r5737, 60
  %gmp5739 = inttoptr i64 %t5738 to ptr
  %gml5740 = load i32, ptr %gmp5739, align 1, !alias.scope !4, !noalias !3
  %c5741 = zext i32 %gml5740 to i64
  %wp5742 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5741, ptr %wp5742, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1e4 word 0xb9404c0a
  %r5743.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5743 = load i64, ptr %r5743.p, align 8, !alias.scope !3, !noalias !4
  %t5744 = add i64 %r5743, 76
  %gmp5745 = inttoptr i64 %t5744 to ptr
  %gml5746 = load i32, ptr %gmp5745, align 1, !alias.scope !4, !noalias !3
  %c5747 = zext i32 %gml5746 to i64
  %wp5748 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5747, ptr %wp5748, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1e8 word 0x0b090149
  %r5749.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5749 = load i64, ptr %r5749.p, align 8, !alias.scope !3, !noalias !4
  %c5750 = trunc i64 %r5749 to i32
  %r5751.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5751 = load i64, ptr %r5751.p, align 8, !alias.scope !3, !noalias !4
  %c5752 = trunc i64 %r5751 to i32
  %t5753 = add i32 %c5750, %c5752
  %c5754 = zext i32 %t5753 to i64
  %wp5755 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5754, ptr %wp5755, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1ec word 0xb9405c0a
  %r5756.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5756 = load i64, ptr %r5756.p, align 8, !alias.scope !3, !noalias !4
  %t5757 = add i64 %r5756, 92
  %gmp5758 = inttoptr i64 %t5757 to ptr
  %gml5759 = load i32, ptr %gmp5758, align 1, !alias.scope !4, !noalias !3
  %c5760 = zext i32 %gml5759 to i64
  %wp5761 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5760, ptr %wp5761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1f0 word 0x0b0a0129
  %r5762.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5762 = load i64, ptr %r5762.p, align 8, !alias.scope !3, !noalias !4
  %c5763 = trunc i64 %r5762 to i32
  %r5764.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5764 = load i64, ptr %r5764.p, align 8, !alias.scope !3, !noalias !4
  %c5765 = trunc i64 %r5764 to i32
  %t5766 = add i32 %c5763, %c5765
  %c5767 = zext i32 %t5766 to i64
  %wp5768 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5767, ptr %wp5768, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1f4 word 0x531e7529
  %r5769.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5769 = load i64, ptr %r5769.p, align 8, !alias.scope !3, !noalias !4
  %c5770 = trunc i64 %r5769 to i32
  %ror5771 = call i32 @llvm.fshr.i32(i32 %c5770, i32 %c5770, i32 30)
  %t5772 = and i32 %ror5771, -4
  %c5773 = zext i32 %t5772 to i64
  %wp5774 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5773, ptr %wp5774, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1f8 word 0x0b080d3a
  %r5775.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5775 = load i64, ptr %r5775.p, align 8, !alias.scope !3, !noalias !4
  %c5776 = trunc i64 %r5775 to i32
  %r5777.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5777 = load i64, ptr %r5777.p, align 8, !alias.scope !3, !noalias !4
  %c5778 = trunc i64 %r5777 to i32
  %t5779 = shl i32 %c5778, 3
  %t5780 = add i32 %c5776, %t5779
  %c5781 = zext i32 %t5780 to i64
  %wp5782 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c5781, ptr %wp5782, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1fc word 0x17fffb57
  br label %L_8001bbf58
L_8001bd200:
  ; @pc 0x8001bd200 word 0xb9403c09
  %r5783.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5783 = load i64, ptr %r5783.p, align 8, !alias.scope !3, !noalias !4
  %t5784 = add i64 %r5783, 60
  %gmp5785 = inttoptr i64 %t5784 to ptr
  %gml5786 = load i32, ptr %gmp5785, align 1, !alias.scope !4, !noalias !3
  %c5787 = zext i32 %gml5786 to i64
  %wp5788 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5787, ptr %wp5788, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd204 word 0x5280018b
  %c5789 = zext i32 12 to i64
  %wp5790 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c5789, ptr %wp5790, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd208 word 0x1b0b7d08
  %r5791.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5791 = load i64, ptr %r5791.p, align 8, !alias.scope !3, !noalias !4
  %c5792 = trunc i64 %r5791 to i32
  %r5793.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5793 = load i64, ptr %r5793.p, align 8, !alias.scope !3, !noalias !4
  %c5794 = trunc i64 %r5793 to i32
  %t5795 = mul i32 %c5794, %c5792
  %t5796 = add i32 0, %t5795
  %c5797 = zext i32 %t5796 to i64
  %wp5798 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5797, ptr %wp5798, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd20c word 0xb9404c0a
  %r5799.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5799 = load i64, ptr %r5799.p, align 8, !alias.scope !3, !noalias !4
  %t5800 = add i64 %r5799, 76
  %gmp5801 = inttoptr i64 %t5800 to ptr
  %gml5802 = load i32, ptr %gmp5801, align 1, !alias.scope !4, !noalias !3
  %c5803 = zext i32 %gml5802 to i64
  %wp5804 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5803, ptr %wp5804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd210 word 0x0b090149
  %r5805.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5805 = load i64, ptr %r5805.p, align 8, !alias.scope !3, !noalias !4
  %c5806 = trunc i64 %r5805 to i32
  %r5807.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5807 = load i64, ptr %r5807.p, align 8, !alias.scope !3, !noalias !4
  %c5808 = trunc i64 %r5807 to i32
  %t5809 = add i32 %c5806, %c5808
  %c5810 = zext i32 %t5809 to i64
  %wp5811 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5810, ptr %wp5811, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd214 word 0xb9405c0a
  %r5812.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5812 = load i64, ptr %r5812.p, align 8, !alias.scope !3, !noalias !4
  %t5813 = add i64 %r5812, 92
  %gmp5814 = inttoptr i64 %t5813 to ptr
  %gml5815 = load i32, ptr %gmp5814, align 1, !alias.scope !4, !noalias !3
  %c5816 = zext i32 %gml5815 to i64
  %wp5817 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5816, ptr %wp5817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd218 word 0x0b0a0129
  %r5818.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5818 = load i64, ptr %r5818.p, align 8, !alias.scope !3, !noalias !4
  %c5819 = trunc i64 %r5818 to i32
  %r5820.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5820 = load i64, ptr %r5820.p, align 8, !alias.scope !3, !noalias !4
  %c5821 = trunc i64 %r5820 to i32
  %t5822 = add i32 %c5819, %c5821
  %c5823 = zext i32 %t5822 to i64
  %wp5824 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5823, ptr %wp5824, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd21c word 0xb9406c0a
  %r5825.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5825 = load i64, ptr %r5825.p, align 8, !alias.scope !3, !noalias !4
  %t5826 = add i64 %r5825, 108
  %gmp5827 = inttoptr i64 %t5826 to ptr
  %gml5828 = load i32, ptr %gmp5827, align 1, !alias.scope !4, !noalias !3
  %c5829 = zext i32 %gml5828 to i64
  %wp5830 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5829, ptr %wp5830, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd220 word 0x0b0a0d08
  %r5831.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5831 = load i64, ptr %r5831.p, align 8, !alias.scope !3, !noalias !4
  %c5832 = trunc i64 %r5831 to i32
  %r5833.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5833 = load i64, ptr %r5833.p, align 8, !alias.scope !3, !noalias !4
  %c5834 = trunc i64 %r5833 to i32
  %t5835 = shl i32 %c5834, 3
  %t5836 = add i32 %c5832, %t5835
  %c5837 = zext i32 %t5836 to i64
  %wp5838 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c5837, ptr %wp5838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd224 word 0x0b09091a
  %r5839.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5839 = load i64, ptr %r5839.p, align 8, !alias.scope !3, !noalias !4
  %c5840 = trunc i64 %r5839 to i32
  %r5841.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5841 = load i64, ptr %r5841.p, align 8, !alias.scope !3, !noalias !4
  %c5842 = trunc i64 %r5841 to i32
  %t5843 = shl i32 %c5842, 2
  %t5844 = add i32 %c5840, %t5843
  %c5845 = zext i32 %t5844 to i64
  %wp5846 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c5845, ptr %wp5846, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd228 word 0x17fffb4c
  br label %L_8001bbf58
L_8001bd22c:
  ; @pc 0x8001bd22c word 0x910063e9
  %r5847.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5847 = load i64, ptr %r5847.p, align 8, !alias.scope !3, !noalias !4
  %t5848 = add i64 %r5847, 24
  %wp5849 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5848, ptr %wp5849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd230 word 0x39048fff
  %r5850.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5850 = load i64, ptr %r5850.p, align 8, !alias.scope !3, !noalias !4
  %t5851 = add i64 %r5850, 291
  %c5852 = trunc i32 0 to i8
  %gmp5853 = inttoptr i64 %t5851 to ptr
  store i8 %c5852, ptr %gmp5853, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd234 word 0xf0015461
  %wp5854 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34406187008, ptr %wp5854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd238 word 0x91270c21
  %r5855.p = getelementptr inbounds i8, ptr %c, i64 8
  %r5855 = load i64, ptr %r5855.p, align 8, !alias.scope !3, !noalias !4
  %t5856 = add i64 %r5855, 2499
  %wp5857 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %t5856, ptr %wp5857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd23c word 0x91003129
  %r5858.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5858 = load i64, ptr %r5858.p, align 8, !alias.scope !3, !noalias !4
  %t5859 = add i64 %r5858, 12
  %wp5860 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t5859, ptr %wp5860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd240 word 0x390093ff
  %r5861.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5861 = load i64, ptr %r5861.p, align 8, !alias.scope !3, !noalias !4
  %t5862 = add i64 %r5861, 36
  %c5863 = trunc i32 0 to i8
  %gmp5864 = inttoptr i64 %t5862 to ptr
  store i8 %c5863, ptr %gmp5864, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd244 word 0xf9000fe9
  %r5865.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5865 = load i64, ptr %r5865.p, align 8, !alias.scope !3, !noalias !4
  %t5866 = add i64 %r5865, 24
  %r5867.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5867 = load i64, ptr %r5867.p, align 8, !alias.scope !3, !noalias !4
  %gmp5868 = inttoptr i64 %t5866 to ptr
  store i64 %r5867, ptr %gmp5868, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd248 word 0x52802009
  %c5869 = zext i32 256 to i64
  %wp5870 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5869, ptr %wp5870, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd24c word 0xb980250a
  %r5871.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5871 = load i64, ptr %r5871.p, align 8, !alias.scope !3, !noalias !4
  %t5872 = add i64 %r5871, 36
  %gmp5873 = inttoptr i64 %t5872 to ptr
  %gml5874 = load i32, ptr %gmp5873, align 1, !alias.scope !4, !noalias !3
  %c5875 = sext i32 %gml5874 to i64
  %wp5876 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c5875, ptr %wp5876, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd250 word 0xb90023e9
  %r5877.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5877 = load i64, ptr %r5877.p, align 8, !alias.scope !3, !noalias !4
  %t5878 = add i64 %r5877, 32
  %r5879.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5879 = load i64, ptr %r5879.p, align 8, !alias.scope !3, !noalias !4
  %c5880 = trunc i64 %r5879 to i32
  %gmp5881 = inttoptr i64 %t5878 to ptr
  store i32 %c5880, ptr %gmp5881, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd254 word 0x910063e0
  %r5882.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5882 = load i64, ptr %r5882.p, align 8, !alias.scope !3, !noalias !4
  %t5883 = add i64 %r5882, 24
  %wp5884 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t5883, ptr %wp5884, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd258 word 0xb9800909
  %r5885.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5885 = load i64, ptr %r5885.p, align 8, !alias.scope !3, !noalias !4
  %t5886 = add i64 %r5885, 8
  %gmp5887 = inttoptr i64 %t5886 to ptr
  %gml5888 = load i32, ptr %gmp5887, align 1, !alias.scope !4, !noalias !3
  %c5889 = sext i32 %gml5888 to i64
  %wp5890 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c5889, ptr %wp5890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd25c word 0x8b0a0108
  %r5891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5891 = load i64, ptr %r5891.p, align 8, !alias.scope !3, !noalias !4
  %r5892.p = getelementptr inbounds i8, ptr %c, i64 80
  %r5892 = load i64, ptr %r5892.p, align 8, !alias.scope !3, !noalias !4
  %t5893 = add i64 %r5891, %r5892
  %wp5894 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5893, ptr %wp5894, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd260 word 0x8b090102
  %r5895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5895 = load i64, ptr %r5895.p, align 8, !alias.scope !3, !noalias !4
  %r5896.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5896 = load i64, ptr %r5896.p, align 8, !alias.scope !3, !noalias !4
  %t5897 = add i64 %r5895, %r5896
  %wp5898 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %t5897, ptr %wp5898, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd264 word 0x97fb717f
  %wp5899 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561704, ptr %wp5899, align 8, !alias.scope !3, !noalias !4
  call void @f_800099860(ptr %c)
  ; @pc 0x8001bd268 word 0x2a1f03f7
  %t5900 = or i32 0, 0
  %c5901 = zext i32 %t5900 to i64
  %wp5902 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c5901, ptr %wp5902, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd26c word 0x17fffa9c
  br label %L_8001bbcdc
L_8001bd270:
  ; @pc 0x8001bd270 word 0xd001bd00
  %wp5903 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp5903, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd274 word 0xf9455400
  %r5904.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5904 = load i64, ptr %r5904.p, align 8, !alias.scope !3, !noalias !4
  %t5905 = add i64 %r5904, 2728
  %gmp5906 = inttoptr i64 %t5905 to ptr
  %gml5907 = load i64, ptr %gmp5906, align 1, !alias.scope !4, !noalias !3
  %wp5908 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5907, ptr %wp5908, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd278 word 0x94a799ca
  %wp5909 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561724, ptr %wp5909, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bd27c word 0xd001bd1c
  %wp5910 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 34419896320, ptr %wp5910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd280 word 0xf945539c
  %r5911.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5911 = load i64, ptr %r5911.p, align 8, !alias.scope !3, !noalias !4
  %t5912 = add i64 %r5911, 2720
  %gmp5913 = inttoptr i64 %t5912 to ptr
  %gml5914 = load i64, ptr %gmp5913, align 1, !alias.scope !4, !noalias !3
  %wp5915 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml5914, ptr %wp5915, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd284 word 0x340000a0
  %r5916.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5916 = load i64, ptr %r5916.p, align 8, !alias.scope !3, !noalias !4
  %c5917 = trunc i64 %r5916 to i32
  %cmp5918 = icmp eq i32 %c5917, 0
  br i1 %cmp5918, label %L_8001bd298, label %L_8001bd288_ft
L_8001bd298:
  ; @pc 0x8001bd298 word 0x2a1f03f8
  %t5928 = or i32 0, 0
  %c5929 = zext i32 %t5928 to i64
  %wp5930 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c5929, ptr %wp5930, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd29c word 0x17fffa97
  br label %L_8001bbcf8
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34361555856, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_8001bbb90
L_8001bbbdc_ft:
  ; @pc 0x8001bbbdc word 0x79403aa8
  %r117.p = getelementptr inbounds i8, ptr %c, i64 168
  %r117 = load i64, ptr %r117.p, align 8, !alias.scope !3, !noalias !4
  %t118 = add i64 %r117, 28
  %gmp119 = inttoptr i64 %t118 to ptr
  %gml120 = load i16, ptr %gmp119, align 1, !alias.scope !4, !noalias !3
  %c121 = zext i16 %gml120 to i64
  %wp122 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c121, ptr %wp122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbe0 word 0x5280078a
  %c123 = zext i32 60 to i64
  %wp124 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c123, ptr %wp124, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbe4 word 0xf9402689
  %r125.p = getelementptr inbounds i8, ptr %c, i64 160
  %r125 = load i64, ptr %r125.p, align 8, !alias.scope !3, !noalias !4
  %t126 = add i64 %r125, 72
  %gmp127 = inttoptr i64 %t126 to ptr
  %gml128 = load i64, ptr %gmp127, align 1, !alias.scope !4, !noalias !3
  %wp129 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml128, ptr %wp129, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbe8 word 0x9baa2508
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
  ; @pc 0x8001bbbec word 0xb9801509
  %r140.p = getelementptr inbounds i8, ptr %c, i64 64
  %r140 = load i64, ptr %r140.p, align 8, !alias.scope !3, !noalias !4
  %t141 = add i64 %r140, 20
  %gmp142 = inttoptr i64 %t141 to ptr
  %gml143 = load i32, ptr %gmp142, align 1, !alias.scope !4, !noalias !3
  %c144 = sext i32 %gml143 to i64
  %wp145 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c144, ptr %wp145, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbf0 word 0xf9400a88
  %r146.p = getelementptr inbounds i8, ptr %c, i64 160
  %r146 = load i64, ptr %r146.p, align 8, !alias.scope !3, !noalias !4
  %t147 = add i64 %r146, 16
  %gmp148 = inttoptr i64 %t147 to ptr
  %gml149 = load i64, ptr %gmp148, align 1, !alias.scope !4, !noalias !3
  %wp150 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml149, ptr %wp150, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbbf4 word 0x8b090100
  %r151.p = getelementptr inbounds i8, ptr %c, i64 64
  %r151 = load i64, ptr %r151.p, align 8, !alias.scope !3, !noalias !4
  %r152.p = getelementptr inbounds i8, ptr %c, i64 72
  %r152 = load i64, ptr %r152.p, align 8, !alias.scope !3, !noalias !4
  %t153 = add i64 %r151, %r152
  %wp154 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t153, ptr %wp154, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbbf8
L_8001bbc08_ft:
  ; @pc 0x8001bbc08 word 0xf940168b
  %r191.p = getelementptr inbounds i8, ptr %c, i64 160
  %r191 = load i64, ptr %r191.p, align 8, !alias.scope !3, !noalias !4
  %t192 = add i64 %r191, 40
  %gmp193 = inttoptr i64 %t192 to ptr
  %gml194 = load i64, ptr %gmp193, align 1, !alias.scope !4, !noalias !3
  %wp195 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml194, ptr %wp195, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc0c word 0xaa1f03ea
  %t196 = or i64 0, 0
  %wp197 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t196, ptr %wp197, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc10 word 0xb980300c
  %r198.p = getelementptr inbounds i8, ptr %c, i64 0
  %r198 = load i64, ptr %r198.p, align 8, !alias.scope !3, !noalias !4
  %t199 = add i64 %r198, 48
  %gmp200 = inttoptr i64 %t199 to ptr
  %gml201 = load i32, ptr %gmp200, align 1, !alias.scope !4, !noalias !3
  %c202 = sext i32 %gml201 to i64
  %wp203 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c202, ptr %wp203, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc14 word 0xf94002cd
  %r204.p = getelementptr inbounds i8, ptr %c, i64 176
  %r204 = load i64, ptr %r204.p, align 8, !alias.scope !3, !noalias !4
  %gmp205 = inttoptr i64 %r204 to ptr
  %gml206 = load i64, ptr %gmp205, align 1, !alias.scope !4, !noalias !3
  %wp207 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml206, ptr %wp207, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc18 word 0x910005ae
  %r208.p = getelementptr inbounds i8, ptr %c, i64 104
  %r208 = load i64, ptr %r208.p, align 8, !alias.scope !3, !noalias !4
  %t209 = add i64 %r208, 1
  %wp210 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t209, ptr %wp210, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc1c word 0xb980016b
  %r211.p = getelementptr inbounds i8, ptr %c, i64 88
  %r211 = load i64, ptr %r211.p, align 8, !alias.scope !3, !noalias !4
  %gmp212 = inttoptr i64 %r211 to ptr
  %gml213 = load i32, ptr %gmp212, align 1, !alias.scope !4, !noalias !3
  %c214 = sext i32 %gml213 to i64
  %wp215 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c214, ptr %wp215, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc20 word 0x8b0b010b
  %r216.p = getelementptr inbounds i8, ptr %c, i64 64
  %r216 = load i64, ptr %r216.p, align 8, !alias.scope !3, !noalias !4
  %r217.p = getelementptr inbounds i8, ptr %c, i64 88
  %r217 = load i64, ptr %r217.p, align 8, !alias.scope !3, !noalias !4
  %t218 = add i64 %r216, %r217
  %wp219 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t218, ptr %wp219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc24 word 0x8b0c116b
  %r220.p = getelementptr inbounds i8, ptr %c, i64 88
  %r220 = load i64, ptr %r220.p, align 8, !alias.scope !3, !noalias !4
  %r221.p = getelementptr inbounds i8, ptr %c, i64 96
  %r221 = load i64, ptr %r221.p, align 8, !alias.scope !3, !noalias !4
  %t222 = shl i64 %r221, 4
  %t223 = add i64 %r220, %t222
  %wp224 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t223, ptr %wp224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc28 word 0xb980250c
  %r225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r225 = load i64, ptr %r225.p, align 8, !alias.scope !3, !noalias !4
  %t226 = add i64 %r225, 36
  %gmp227 = inttoptr i64 %t226 to ptr
  %gml228 = load i32, ptr %gmp227, align 1, !alias.scope !4, !noalias !3
  %c229 = sext i32 %gml228 to i64
  %wp230 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c229, ptr %wp230, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc2c word 0x8b0c010c
  %r231.p = getelementptr inbounds i8, ptr %c, i64 64
  %r231 = load i64, ptr %r231.p, align 8, !alias.scope !3, !noalias !4
  %r232.p = getelementptr inbounds i8, ptr %c, i64 96
  %r232 = load i64, ptr %r232.p, align 8, !alias.scope !3, !noalias !4
  %t233 = add i64 %r231, %r232
  %wp234 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %t233, ptr %wp234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc30 word 0x91000d8f
  %r235.p = getelementptr inbounds i8, ptr %c, i64 96
  %r235 = load i64, ptr %r235.p, align 8, !alias.scope !3, !noalias !4
  %t236 = add i64 %r235, 3
  %wp237 = getelementptr inbounds i8, ptr %c, i64 120
  store i64 %t236, ptr %wp237, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbc34
L_8001bbc48_ft:
  ; @pc 0x8001bbc48 word 0xaa1f03f0
  %t278 = or i64 0, 0
  %wp279 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t278, ptr %wp279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc4c word 0x8b1101f1
  %r280.p = getelementptr inbounds i8, ptr %c, i64 120
  %r280 = load i64, ptr %r280.p, align 8, !alias.scope !3, !noalias !4
  %r281.p = getelementptr inbounds i8, ptr %c, i64 136
  %r281 = load i64, ptr %r281.p, align 8, !alias.scope !3, !noalias !4
  %t282 = add i64 %r280, %r281
  %wp283 = getelementptr inbounds i8, ptr %c, i64 136
  store i64 %t282, ptr %wp283, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbc50
L_8001bbc68_ft:
  ; @pc 0x8001bbc68 word 0x34000501
  %r332.p = getelementptr inbounds i8, ptr %c, i64 8
  %r332 = load i64, ptr %r332.p, align 8, !alias.scope !3, !noalias !4
  %c333 = trunc i64 %r332 to i32
  %cmp334 = icmp eq i32 %c333, 0
  br i1 %cmp334, label %L_8001bbd08, label %L_8001bbc6c_ft
L_8001bbc6c_ft:
  ; @pc 0x8001bbc6c word 0xf150021f
  %r335.p = getelementptr inbounds i8, ptr %c, i64 128
  %r335 = load i64, ptr %r335.p, align 8, !alias.scope !3, !noalias !4
  %t336 = sub i64 %r335, 4194304
  %fn337 = icmp slt i64 %t336, 0
  %fz338 = icmp eq i64 %t336, 0
  %fc339 = icmp uge i64 %r335, 4194304
  %fx1340 = xor i64 %r335, 4194304
  %fx2341 = xor i64 %r335, %t336
  %fva342 = and i64 %fx1340, %fx2341
  %fv343 = icmp slt i64 %fva342, 0
  %nz344 = zext i1 %fn337 to i64
  %zz345 = zext i1 %fz338 to i64
  %cz346 = zext i1 %fc339 to i64
  %vz347 = zext i1 %fv343 to i64
  %ns348 = shl i64 %nz344, 31
  %zs349 = shl i64 %zz345, 30
  %cs350 = shl i64 %cz346, 29
  %vs351 = shl i64 %vz347, 28
  %nzor352 = or i64 %ns348, %zs349
  %cvor353 = or i64 %cs350, %vs351
  %nzcv354 = or i64 %nzor352, %cvor353
  %wp355 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv354, ptr %wp355, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc70 word 0x54000280
  %r356.p = getelementptr inbounds i8, ptr %c, i64 272
  %r356 = load i64, ptr %r356.p, align 8, !alias.scope !3, !noalias !4
  %fsh358 = lshr i64 %r356, 30
  %cond357 = trunc i64 %fsh358 to i1
  br i1 %cond357, label %L_8001bbcc0, label %L_8001bbc74_ft
L_8001bbc74_ft:
  ; @pc 0x8001bbc74 word 0x387069c1
  %r359.p = getelementptr inbounds i8, ptr %c, i64 112
  %r359 = load i64, ptr %r359.p, align 8, !alias.scope !3, !noalias !4
  %r360.p = getelementptr inbounds i8, ptr %c, i64 128
  %r360 = load i64, ptr %r360.p, align 8, !alias.scope !3, !noalias !4
  %t361 = add i64 %r359, %r360
  %gmp362 = inttoptr i64 %t361 to ptr
  %gml363 = load i8, ptr %gmp362, align 1, !alias.scope !4, !noalias !3
  %c364 = zext i8 %gml363 to i64
  %wp365 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c364, ptr %wp365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc78 word 0x385fe002
  %r366.p = getelementptr inbounds i8, ptr %c, i64 0
  %r366 = load i64, ptr %r366.p, align 8, !alias.scope !3, !noalias !4
  %t367 = add i64 %r366, -2
  %gmp368 = inttoptr i64 %t367 to ptr
  %gml369 = load i8, ptr %gmp368, align 1, !alias.scope !4, !noalias !3
  %c370 = zext i8 %gml369 to i64
  %wp371 = getelementptr inbounds i8, ptr %c, i64 16
  store i64 %c370, ptr %wp371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc7c word 0x6b02003f
  %r372.p = getelementptr inbounds i8, ptr %c, i64 8
  %r372 = load i64, ptr %r372.p, align 8, !alias.scope !3, !noalias !4
  %c373 = trunc i64 %r372 to i32
  %r374.p = getelementptr inbounds i8, ptr %c, i64 16
  %r374 = load i64, ptr %r374.p, align 8, !alias.scope !3, !noalias !4
  %c375 = trunc i64 %r374 to i32
  %t376 = sub i32 %c373, %c375
  %fn377 = icmp slt i32 %t376, 0
  %fz378 = icmp eq i32 %t376, 0
  %fc379 = icmp uge i32 %c373, %c375
  %fx1380 = xor i32 %c373, %c375
  %fx2381 = xor i32 %c373, %t376
  %fva382 = and i32 %fx1380, %fx2381
  %fv383 = icmp slt i32 %fva382, 0
  %nz384 = zext i1 %fn377 to i64
  %zz385 = zext i1 %fz378 to i64
  %cz386 = zext i1 %fc379 to i64
  %vz387 = zext i1 %fv383 to i64
  %ns388 = shl i64 %nz384, 31
  %zs389 = shl i64 %zz385, 30
  %cs390 = shl i64 %cz386, 29
  %vs391 = shl i64 %vz387, 28
  %nzor392 = or i64 %ns388, %zs389
  %cvor393 = or i64 %cs390, %vs391
  %nzcv394 = or i64 %nzor392, %cvor393
  %wp395 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv394, ptr %wp395, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc80 word 0x54000201
  %r396.p = getelementptr inbounds i8, ptr %c, i64 272
  %r396 = load i64, ptr %r396.p, align 8, !alias.scope !3, !noalias !4
  %fsh398 = lshr i64 %r396, 30
  %ftr399 = trunc i64 %fsh398 to i1
  %cond397 = xor i1 %ftr399, true
  br i1 %cond397, label %L_8001bbcc0, label %L_8001bbc84_ft
L_8001bbc84_ft:
  ; @pc 0x8001bbc84 word 0x34000421
  %r400.p = getelementptr inbounds i8, ptr %c, i64 8
  %r400 = load i64, ptr %r400.p, align 8, !alias.scope !3, !noalias !4
  %c401 = trunc i64 %r400 to i32
  %cmp402 = icmp eq i32 %c401, 0
  br i1 %cmp402, label %L_8001bbd08, label %L_8001bbc88_ft
L_8001bbc88_ft:
  ; @pc 0x8001bbc88 word 0x39400641
  %r403.p = getelementptr inbounds i8, ptr %c, i64 144
  %r403 = load i64, ptr %r403.p, align 8, !alias.scope !3, !noalias !4
  %t404 = add i64 %r403, 1
  %gmp405 = inttoptr i64 %t404 to ptr
  %gml406 = load i8, ptr %gmp405, align 1, !alias.scope !4, !noalias !3
  %c407 = zext i8 %gml406 to i64
  %wp408 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c407, ptr %wp408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc8c word 0x385ff000
  %r409.p = getelementptr inbounds i8, ptr %c, i64 0
  %r409 = load i64, ptr %r409.p, align 8, !alias.scope !3, !noalias !4
  %t410 = add i64 %r409, -1
  %gmp411 = inttoptr i64 %t410 to ptr
  %gml412 = load i8, ptr %gmp411, align 1, !alias.scope !4, !noalias !3
  %c413 = zext i8 %gml412 to i64
  %wp414 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c413, ptr %wp414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc90 word 0x6b00003f
  %r415.p = getelementptr inbounds i8, ptr %c, i64 8
  %r415 = load i64, ptr %r415.p, align 8, !alias.scope !3, !noalias !4
  %c416 = trunc i64 %r415 to i32
  %r417.p = getelementptr inbounds i8, ptr %c, i64 0
  %r417 = load i64, ptr %r417.p, align 8, !alias.scope !3, !noalias !4
  %c418 = trunc i64 %r417 to i32
  %t419 = sub i32 %c416, %c418
  %fn420 = icmp slt i32 %t419, 0
  %fz421 = icmp eq i32 %t419, 0
  %fc422 = icmp uge i32 %c416, %c418
  %fx1423 = xor i32 %c416, %c418
  %fx2424 = xor i32 %c416, %t419
  %fva425 = and i32 %fx1423, %fx2424
  %fv426 = icmp slt i32 %fva425, 0
  %nz427 = zext i1 %fn420 to i64
  %zz428 = zext i1 %fz421 to i64
  %cz429 = zext i1 %fc422 to i64
  %vz430 = zext i1 %fv426 to i64
  %ns431 = shl i64 %nz427, 31
  %zs432 = shl i64 %zz428, 30
  %cs433 = shl i64 %cz429, 29
  %vs434 = shl i64 %vz430, 28
  %nzor435 = or i64 %ns431, %zs432
  %cvor436 = or i64 %cs433, %vs434
  %nzcv437 = or i64 %nzor435, %cvor436
  %wp438 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv437, ptr %wp438, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbc94 word 0x54000161
  %r439.p = getelementptr inbounds i8, ptr %c, i64 272
  %r439 = load i64, ptr %r439.p, align 8, !alias.scope !3, !noalias !4
  %fsh441 = lshr i64 %r439, 30
  %ftr442 = trunc i64 %fsh441 to i1
  %cond440 = xor i1 %ftr442, true
  br i1 %cond440, label %L_8001bbcc0, label %L_8001bbc98_ft
L_8001bbc98_ft:
  ; @pc 0x8001bbc98 word 0x34000381
  %r443.p = getelementptr inbounds i8, ptr %c, i64 8
  %r443 = load i64, ptr %r443.p, align 8, !alias.scope !3, !noalias !4
  %c444 = trunc i64 %r443 to i32
  %cmp445 = icmp eq i32 %c444, 0
  br i1 %cmp445, label %L_8001bbd08, label %L_8001bbc9c_ft
L_8001bbc9c_ft:
  ; @pc 0x8001bbc9c word 0x39400a52
  %r446.p = getelementptr inbounds i8, ptr %c, i64 144
  %r446 = load i64, ptr %r446.p, align 8, !alias.scope !3, !noalias !4
  %t447 = add i64 %r446, 2
  %gmp448 = inttoptr i64 %t447 to ptr
  %gml449 = load i8, ptr %gmp448, align 1, !alias.scope !4, !noalias !3
  %c450 = zext i8 %gml449 to i64
  %wp451 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c450, ptr %wp451, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbca0 word 0x38706a20
  %r452.p = getelementptr inbounds i8, ptr %c, i64 136
  %r452 = load i64, ptr %r452.p, align 8, !alias.scope !3, !noalias !4
  %r453.p = getelementptr inbounds i8, ptr %c, i64 128
  %r453 = load i64, ptr %r453.p, align 8, !alias.scope !3, !noalias !4
  %t454 = add i64 %r452, %r453
  %gmp455 = inttoptr i64 %t454 to ptr
  %gml456 = load i8, ptr %gmp455, align 1, !alias.scope !4, !noalias !3
  %c457 = zext i8 %gml456 to i64
  %wp458 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %c457, ptr %wp458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbca4 word 0x6b00025f
  %r459.p = getelementptr inbounds i8, ptr %c, i64 144
  %r459 = load i64, ptr %r459.p, align 8, !alias.scope !3, !noalias !4
  %c460 = trunc i64 %r459 to i32
  %r461.p = getelementptr inbounds i8, ptr %c, i64 0
  %r461 = load i64, ptr %r461.p, align 8, !alias.scope !3, !noalias !4
  %c462 = trunc i64 %r461 to i32
  %t463 = sub i32 %c460, %c462
  %fn464 = icmp slt i32 %t463, 0
  %fz465 = icmp eq i32 %t463, 0
  %fc466 = icmp uge i32 %c460, %c462
  %fx1467 = xor i32 %c460, %c462
  %fx2468 = xor i32 %c460, %t463
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
  ; @pc 0x8001bbca8 word 0x540000c1
  %r483.p = getelementptr inbounds i8, ptr %c, i64 272
  %r483 = load i64, ptr %r483.p, align 8, !alias.scope !3, !noalias !4
  %fsh485 = lshr i64 %r483, 30
  %ftr486 = trunc i64 %fsh485 to i1
  %cond484 = xor i1 %ftr486, true
  br i1 %cond484, label %L_8001bbcc0, label %L_8001bbcac_ft
L_8001bbcac_ft:
  ; @pc 0x8001bbcac word 0x340002f2
  %r487.p = getelementptr inbounds i8, ptr %c, i64 144
  %r487 = load i64, ptr %r487.p, align 8, !alias.scope !3, !noalias !4
  %c488 = trunc i64 %r487 to i32
  %cmp489 = icmp eq i32 %c488, 0
  br i1 %cmp489, label %L_8001bbd08, label %L_8001bbcb0_ft
L_8001bbcb0_ft:
  ; @pc 0x8001bbcb0 word 0x91001210
  %r490.p = getelementptr inbounds i8, ptr %c, i64 128
  %r490 = load i64, ptr %r490.p, align 8, !alias.scope !3, !noalias !4
  %t491 = add i64 %r490, 4
  %wp492 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %t491, ptr %wp492, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcb4 word 0x17ffffe7
  br label %L_8001bbc50
L_8001bbcb8_unreach:
  ; @pc 0x8001bbcb8 word 0xd503201f
  ; @pc 0x8001bbcbc word 0xd503201f
  br label %L_8001bbcc0
L_8001bbcd8_ft:
  ; @pc 0x8001bbcd8 word 0x52800037
  %c535 = zext i32 1 to i64
  %wp536 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c535, ptr %wp536, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbcdc
L_8001bbcec_ft:
  ; @pc 0x8001bbcec word 0x9001bd3c
  %wp551 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 34419896320, ptr %wp551, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcf0 word 0x2a1f03f8
  %t552 = or i32 0, 0
  %c553 = zext i32 %t552 to i64
  %wp554 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c553, ptr %wp554, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbcf4 word 0xf945539c
  %r555.p = getelementptr inbounds i8, ptr %c, i64 224
  %r555 = load i64, ptr %r555.p, align 8, !alias.scope !3, !noalias !4
  %t556 = add i64 %r555, 2720
  %gmp557 = inttoptr i64 %t556 to ptr
  %gml558 = load i64, ptr %gmp557, align 1, !alias.scope !4, !noalias !3
  %wp559 = getelementptr inbounds i8, ptr %c, i64 224
  store i64 %gml558, ptr %wp559, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbcf8
L_8001bbd48_ft:
  ; @pc 0x8001bbd48 word 0x35001778
  %r683.p = getelementptr inbounds i8, ptr %c, i64 192
  %r683 = load i64, ptr %r683.p, align 8, !alias.scope !3, !noalias !4
  %c684 = trunc i64 %r683 to i32
  %cmp685 = icmp ne i32 %c684, 0
  br i1 %cmp685, label %L_8001bc034, label %L_8001bbd4c
L_8001bbd70_ft:
  ; @pc 0x8001bbd70 word 0xb27f0108
  %r745.p = getelementptr inbounds i8, ptr %c, i64 64
  %r745 = load i64, ptr %r745.p, align 8, !alias.scope !3, !noalias !4
  %t746 = or i64 %r745, 2
  %wp747 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t746, ptr %wp747, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbd74 word 0xf9000268
  %r748.p = getelementptr inbounds i8, ptr %c, i64 152
  %r748 = load i64, ptr %r748.p, align 8, !alias.scope !3, !noalias !4
  %r749.p = getelementptr inbounds i8, ptr %c, i64 64
  %r749 = load i64, ptr %r749.p, align 8, !alias.scope !3, !noalias !4
  %gmp750 = inttoptr i64 %r748 to ptr
  store i64 %r749, ptr %gmp750, align 1, !alias.scope !4, !noalias !3
  br label %L_8001bbd78
L_8001bbdb0_ft:
  ; @pc 0x8001bbdb0 word 0xb9406109
  %r854.p = getelementptr inbounds i8, ptr %c, i64 64
  %r854 = load i64, ptr %r854.p, align 8, !alias.scope !3, !noalias !4
  %t855 = add i64 %r854, 96
  %gmp856 = inttoptr i64 %t855 to ptr
  %gml857 = load i32, ptr %gmp856, align 1, !alias.scope !4, !noalias !3
  %c858 = zext i32 %gml857 to i64
  %wp859 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c858, ptr %wp859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdb4 word 0x6b17013f
  %r860.p = getelementptr inbounds i8, ptr %c, i64 72
  %r860 = load i64, ptr %r860.p, align 8, !alias.scope !3, !noalias !4
  %c861 = trunc i64 %r860 to i32
  %r862.p = getelementptr inbounds i8, ptr %c, i64 184
  %r862 = load i64, ptr %r862.p, align 8, !alias.scope !3, !noalias !4
  %c863 = trunc i64 %r862 to i32
  %t864 = sub i32 %c861, %c863
  %fn865 = icmp slt i32 %t864, 0
  %fz866 = icmp eq i32 %t864, 0
  %fc867 = icmp uge i32 %c861, %c863
  %fx1868 = xor i32 %c861, %c863
  %fx2869 = xor i32 %c861, %t864
  %fva870 = and i32 %fx1868, %fx2869
  %fv871 = icmp slt i32 %fva870, 0
  %nz872 = zext i1 %fn865 to i64
  %zz873 = zext i1 %fz866 to i64
  %cz874 = zext i1 %fc867 to i64
  %vz875 = zext i1 %fv871 to i64
  %ns876 = shl i64 %nz872, 31
  %zs877 = shl i64 %zz873, 30
  %cs878 = shl i64 %cz874, 29
  %vs879 = shl i64 %vz875, 28
  %nzor880 = or i64 %ns876, %zs877
  %cvor881 = or i64 %cs878, %vs879
  %nzcv882 = or i64 %nzor880, %cvor881
  %wp883 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv882, ptr %wp883, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdb8 word 0x54004c4d
  %r884.p = getelementptr inbounds i8, ptr %c, i64 272
  %r884 = load i64, ptr %r884.p, align 8, !alias.scope !3, !noalias !4
  %fsh886 = lshr i64 %r884, 30
  %ftr887 = trunc i64 %fsh886 to i1
  %fsh888 = lshr i64 %r884, 31
  %ftr889 = trunc i64 %fsh888 to i1
  %fsh890 = lshr i64 %r884, 28
  %ftr891 = trunc i64 %fsh890 to i1
  %fnz892 = xor i1 %ftr887, true
  %feq893 = icmp eq i1 %ftr889, %ftr891
  %fgt894 = and i1 %fnz892, %feq893
  %cond885 = xor i1 %fgt894, true
  br i1 %cond885, label %L_8001bc740, label %L_8001bbdbc_ft
L_8001bbdbc_ft:
  ; @pc 0x8001bbdbc word 0xf9403508
  %r895.p = getelementptr inbounds i8, ptr %c, i64 64
  %r895 = load i64, ptr %r895.p, align 8, !alias.scope !3, !noalias !4
  %t896 = add i64 %r895, 104
  %gmp897 = inttoptr i64 %t896 to ptr
  %gml898 = load i64, ptr %gmp897, align 1, !alias.scope !4, !noalias !3
  %wp899 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml898, ptr %wp899, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbdc0 word 0xf877590a
  %r900.p = getelementptr inbounds i8, ptr %c, i64 64
  %r900 = load i64, ptr %r900.p, align 8, !alias.scope !3, !noalias !4
  %r901.p = getelementptr inbounds i8, ptr %c, i64 184
  %r901 = load i64, ptr %r901.p, align 8, !alias.scope !3, !noalias !4
  %c902 = trunc i64 %r901 to i32
  %c903 = zext i32 %c902 to i64
  %t904 = shl i64 %c903, 3
  %t905 = add i64 %r900, %t904
  %gmp906 = inttoptr i64 %t905 to ptr
  %gml907 = load i64, ptr %gmp906, align 1, !alias.scope !4, !noalias !3
  %wp908 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml907, ptr %wp908, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbdc4
L_8001bbe00_ft:
  ; @pc 0x8001bbe00 word 0xf9400148
  %r958.p = getelementptr inbounds i8, ptr %c, i64 80
  %r958 = load i64, ptr %r958.p, align 8, !alias.scope !3, !noalias !4
  %gmp959 = inttoptr i64 %r958 to ptr
  %gml960 = load i64, ptr %gmp959, align 1, !alias.scope !4, !noalias !3
  %wp961 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml960, ptr %wp961, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe04 word 0xf9400108
  %r962.p = getelementptr inbounds i8, ptr %c, i64 64
  %r962 = load i64, ptr %r962.p, align 8, !alias.scope !3, !noalias !4
  %gmp963 = inttoptr i64 %r962 to ptr
  %gml964 = load i64, ptr %gmp963, align 1, !alias.scope !4, !noalias !3
  %wp965 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml964, ptr %wp965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe08 word 0xeb0d011f
  %r966.p = getelementptr inbounds i8, ptr %c, i64 64
  %r966 = load i64, ptr %r966.p, align 8, !alias.scope !3, !noalias !4
  %r967.p = getelementptr inbounds i8, ptr %c, i64 104
  %r967 = load i64, ptr %r967.p, align 8, !alias.scope !3, !noalias !4
  %t968 = sub i64 %r966, %r967
  %fn969 = icmp slt i64 %t968, 0
  %fz970 = icmp eq i64 %t968, 0
  %fc971 = icmp uge i64 %r966, %r967
  %fx1972 = xor i64 %r966, %r967
  %fx2973 = xor i64 %r966, %t968
  %fva974 = and i64 %fx1972, %fx2973
  %fv975 = icmp slt i64 %fva974, 0
  %nz976 = zext i1 %fn969 to i64
  %zz977 = zext i1 %fz970 to i64
  %cz978 = zext i1 %fc971 to i64
  %vz979 = zext i1 %fv975 to i64
  %ns980 = shl i64 %nz976, 31
  %zs981 = shl i64 %zz977, 30
  %cs982 = shl i64 %cz978, 29
  %vs983 = shl i64 %vz979, 28
  %nzor984 = or i64 %ns980, %zs981
  %cvor985 = or i64 %cs982, %vs983
  %nzcv986 = or i64 %nzor984, %cvor985
  %wp987 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv986, ptr %wp987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe0c word 0x54001361
  %r988.p = getelementptr inbounds i8, ptr %c, i64 272
  %r988 = load i64, ptr %r988.p, align 8, !alias.scope !3, !noalias !4
  %fsh990 = lshr i64 %r988, 30
  %ftr991 = trunc i64 %fsh990 to i1
  %cond989 = xor i1 %ftr991, true
  br i1 %cond989, label %L_8001bc078, label %L_8001bbe10_ft
L_8001bbe10_ft:
  ; @pc 0x8001bbe10 word 0x08dffd88
  %r992.p = getelementptr inbounds i8, ptr %c, i64 96
  %r992 = load i64, ptr %r992.p, align 8, !alias.scope !3, !noalias !4
  %atp993 = inttoptr i64 %r992 to ptr
  %lda994 = load atomic i8, ptr %atp993 acquire, align 1, !alias.scope !4, !noalias !3
  %c995 = zext i8 %lda994 to i64
  %wp996 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c995, ptr %wp996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe14 word 0x360077e8
  %r997.p = getelementptr inbounds i8, ptr %c, i64 64
  %r997 = load i64, ptr %r997.p, align 8, !alias.scope !3, !noalias !4
  %t998 = and i64 %r997, 1
  %cmp999 = icmp eq i64 %t998, 0
  br i1 %cmp999, label %L_8001bcd10, label %L_8001bbe18
L_8001bbe28_ft:
  ; @pc 0x8001bbe28 word 0xf001bc80
  %wp1016 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1016, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe2c word 0xaa0303f9
  %r1017.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1017 = load i64, ptr %r1017.p, align 8, !alias.scope !3, !noalias !4
  %t1018 = or i64 0, %r1017
  %wp1019 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1018, ptr %wp1019, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe30 word 0xf9430c00
  %r1020.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1020 = load i64, ptr %r1020.p, align 8, !alias.scope !3, !noalias !4
  %t1021 = add i64 %r1020, 1560
  %gmp1022 = inttoptr i64 %t1021 to ptr
  %gml1023 = load i64, ptr %gmp1022, align 1, !alias.scope !4, !noalias !3
  %wp1024 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1023, ptr %wp1024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe34 word 0xb90007e4
  %r1025.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1025 = load i64, ptr %r1025.p, align 8, !alias.scope !3, !noalias !4
  %t1026 = add i64 %r1025, 4
  %r1027.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1027 = load i64, ptr %r1027.p, align 8, !alias.scope !3, !noalias !4
  %c1028 = trunc i64 %r1027 to i32
  %gmp1029 = inttoptr i64 %t1026 to ptr
  store i32 %c1028, ptr %gmp1029, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbe38 word 0x2a0503f7
  %r1030.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1030 = load i64, ptr %r1030.p, align 8, !alias.scope !3, !noalias !4
  %c1031 = trunc i64 %r1030 to i32
  %t1032 = or i32 0, %c1031
  %c1033 = zext i32 %t1032 to i64
  %wp1034 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1033, ptr %wp1034, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe3c word 0x94a79ed9
  %wp1035 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361556544, ptr %wp1035, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bbe40 word 0xb001bded
  %wp1036 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp1036, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe44 word 0xb001bdec
  %wp1037 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp1037, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe48 word 0xf941b5ad
  %r1038.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1038 = load i64, ptr %r1038.p, align 8, !alias.scope !3, !noalias !4
  %t1039 = add i64 %r1038, 872
  %gmp1040 = inttoptr i64 %t1039 to ptr
  %gml1041 = load i64, ptr %gmp1040, align 1, !alias.scope !4, !noalias !3
  %wp1042 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1041, ptr %wp1042, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe4c word 0xf001bc8b
  %wp1043 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp1043, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe50 word 0xf001bc89
  %wp1044 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1044, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe54 word 0xf941bd8c
  %r1045.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1045 = load i64, ptr %r1045.p, align 8, !alias.scope !3, !noalias !4
  %t1046 = add i64 %r1045, 888
  %gmp1047 = inttoptr i64 %t1046 to ptr
  %gml1048 = load i64, ptr %gmp1047, align 1, !alias.scope !4, !noalias !3
  %wp1049 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1048, ptr %wp1049, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe58 word 0xf943016b
  %r1050.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1050 = load i64, ptr %r1050.p, align 8, !alias.scope !3, !noalias !4
  %t1051 = add i64 %r1050, 1536
  %gmp1052 = inttoptr i64 %t1051 to ptr
  %gml1053 = load i64, ptr %gmp1052, align 1, !alias.scope !4, !noalias !3
  %wp1054 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1053, ptr %wp1054, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe5c word 0x2a1703e5
  %r1055.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1055 = load i64, ptr %r1055.p, align 8, !alias.scope !3, !noalias !4
  %c1056 = trunc i64 %r1055 to i32
  %t1057 = or i32 0, %c1056
  %c1058 = zext i32 %t1057 to i64
  %wp1059 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1058, ptr %wp1059, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe60 word 0xaa1903e3
  %r1060.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1060 = load i64, ptr %r1060.p, align 8, !alias.scope !3, !noalias !4
  %t1061 = or i64 0, %r1060
  %wp1062 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1061, ptr %wp1062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe64 word 0xf94007ea
  %r1063.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1063 = load i64, ptr %r1063.p, align 8, !alias.scope !3, !noalias !4
  %t1064 = add i64 %r1063, 8
  %gmp1065 = inttoptr i64 %t1064 to ptr
  %gml1066 = load i64, ptr %gmp1065, align 1, !alias.scope !4, !noalias !3
  %wp1067 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1066, ptr %wp1067, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe68 word 0xf9430d29
  %r1068.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1068 = load i64, ptr %r1068.p, align 8, !alias.scope !3, !noalias !4
  %t1069 = add i64 %r1068, 1560
  %gmp1070 = inttoptr i64 %t1069 to ptr
  %gml1071 = load i64, ptr %gmp1070, align 1, !alias.scope !4, !noalias !3
  %wp1072 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1071, ptr %wp1072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe6c word 0xb94007e4
  %r1073.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1073 = load i64, ptr %r1073.p, align 8, !alias.scope !3, !noalias !4
  %t1074 = add i64 %r1073, 4
  %gmp1075 = inttoptr i64 %t1074 to ptr
  %gml1076 = load i32, ptr %gmp1075, align 1, !alias.scope !4, !noalias !3
  %c1077 = zext i32 %gml1076 to i64
  %wp1078 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1077, ptr %wp1078, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe70 word 0x34001360
  %r1079.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1079 = load i64, ptr %r1079.p, align 8, !alias.scope !3, !noalias !4
  %c1080 = trunc i64 %r1079 to i32
  %cmp1081 = icmp eq i32 %c1080, 0
  br i1 %cmp1081, label %L_8001bc0dc, label %L_8001bbe74_ft
L_8001bbe74_ft:
  ; @pc 0x8001bbe74 word 0x9001bc88
  %wp1082 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp1082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe78 word 0xf001bc89
  %wp1083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe7c word 0xf9440508
  %r1084.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1084 = load i64, ptr %r1084.p, align 8, !alias.scope !3, !noalias !4
  %t1085 = add i64 %r1084, 2056
  %gmp1086 = inttoptr i64 %t1085 to ptr
  %gml1087 = load i64, ptr %gmp1086, align 1, !alias.scope !4, !noalias !3
  %wp1088 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1087, ptr %wp1088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe80 word 0xf9430929
  %r1089.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1089 = load i64, ptr %r1089.p, align 8, !alias.scope !3, !noalias !4
  %t1090 = add i64 %r1089, 1552
  %gmp1091 = inttoptr i64 %t1090 to ptr
  %gml1092 = load i64, ptr %gmp1091, align 1, !alias.scope !4, !noalias !3
  %wp1093 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1092, ptr %wp1093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe84 word 0xf001bc80
  %wp1094 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1094, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe88 word 0x91004108
  %r1095.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1095 = load i64, ptr %r1095.p, align 8, !alias.scope !3, !noalias !4
  %t1096 = add i64 %r1095, 16
  %wp1097 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t1096, ptr %wp1097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe8c word 0xf9000128
  %r1098.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1098 = load i64, ptr %r1098.p, align 8, !alias.scope !3, !noalias !4
  %r1099.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1099 = load i64, ptr %r1099.p, align 8, !alias.scope !3, !noalias !4
  %gmp1100 = inttoptr i64 %r1098 to ptr
  store i64 %r1099, ptr %gmp1100, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbe90 word 0xf9430c00
  %r1101.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1101 = load i64, ptr %r1101.p, align 8, !alias.scope !3, !noalias !4
  %t1102 = add i64 %r1101, 1560
  %gmp1103 = inttoptr i64 %t1102 to ptr
  %gml1104 = load i64, ptr %gmp1103, align 1, !alias.scope !4, !noalias !3
  %wp1105 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1104, ptr %wp1105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe94 word 0x94a79ec7
  %wp1106 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361556632, ptr %wp1106, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bbe98 word 0xb001bded
  %wp1107 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp1107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbe9c word 0xb001bdec
  %wp1108 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp1108, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbea0 word 0xf941b5ad
  %r1109.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1109 = load i64, ptr %r1109.p, align 8, !alias.scope !3, !noalias !4
  %t1110 = add i64 %r1109, 872
  %gmp1111 = inttoptr i64 %t1110 to ptr
  %gml1112 = load i64, ptr %gmp1111, align 1, !alias.scope !4, !noalias !3
  %wp1113 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml1112, ptr %wp1113, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbea4 word 0xf001bc8b
  %wp1114 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp1114, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbea8 word 0xf001bc89
  %wp1115 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp1115, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbeac word 0xf941bd8c
  %r1116.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1116 = load i64, ptr %r1116.p, align 8, !alias.scope !3, !noalias !4
  %t1117 = add i64 %r1116, 888
  %gmp1118 = inttoptr i64 %t1117 to ptr
  %gml1119 = load i64, ptr %gmp1118, align 1, !alias.scope !4, !noalias !3
  %wp1120 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml1119, ptr %wp1120, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbeb0 word 0xf943016b
  %r1121.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1121 = load i64, ptr %r1121.p, align 8, !alias.scope !3, !noalias !4
  %t1122 = add i64 %r1121, 1536
  %gmp1123 = inttoptr i64 %t1122 to ptr
  %gml1124 = load i64, ptr %gmp1123, align 1, !alias.scope !4, !noalias !3
  %wp1125 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml1124, ptr %wp1125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbeb4 word 0x2a1703e5
  %r1126.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1126 = load i64, ptr %r1126.p, align 8, !alias.scope !3, !noalias !4
  %c1127 = trunc i64 %r1126 to i32
  %t1128 = or i32 0, %c1127
  %c1129 = zext i32 %t1128 to i64
  %wp1130 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c1129, ptr %wp1130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbeb8 word 0xaa1903e3
  %r1131.p = getelementptr inbounds i8, ptr %c, i64 200
  %r1131 = load i64, ptr %r1131.p, align 8, !alias.scope !3, !noalias !4
  %t1132 = or i64 0, %r1131
  %wp1133 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t1132, ptr %wp1133, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbebc word 0xf94007ea
  %r1134.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1134 = load i64, ptr %r1134.p, align 8, !alias.scope !3, !noalias !4
  %t1135 = add i64 %r1134, 8
  %gmp1136 = inttoptr i64 %t1135 to ptr
  %gml1137 = load i64, ptr %gmp1136, align 1, !alias.scope !4, !noalias !3
  %wp1138 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1137, ptr %wp1138, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbec0 word 0xf9430d29
  %r1139.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1139 = load i64, ptr %r1139.p, align 8, !alias.scope !3, !noalias !4
  %t1140 = add i64 %r1139, 1560
  %gmp1141 = inttoptr i64 %t1140 to ptr
  %gml1142 = load i64, ptr %gmp1141, align 1, !alias.scope !4, !noalias !3
  %wp1143 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1142, ptr %wp1143, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbec4 word 0xb94007e4
  %r1144.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1144 = load i64, ptr %r1144.p, align 8, !alias.scope !3, !noalias !4
  %t1145 = add i64 %r1144, 4
  %gmp1146 = inttoptr i64 %t1145 to ptr
  %gml1147 = load i32, ptr %gmp1146, align 1, !alias.scope !4, !noalias !3
  %c1148 = zext i32 %gml1147 to i64
  %wp1149 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c1148, ptr %wp1149, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbec8 word 0x14000085
  br label %L_8001bc0dc
L_8001bbedc_ft:
  ; @pc 0x8001bbedc word 0x2a1f03f9
  %t1188 = or i32 0, 0
  %c1189 = zext i32 %t1188 to i64
  %wp1190 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %c1189, ptr %wp1190, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbee0 word 0x2a1f03f8
  %t1191 = or i32 0, 0
  %c1192 = zext i32 %t1191 to i64
  %wp1193 = getelementptr inbounds i8, ptr %c, i64 192
  store i64 %c1192, ptr %wp1193, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbee4
L_8001bbefc_ft:
  ; @pc 0x8001bbefc word 0xf94006a8
  %r1213.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1213 = load i64, ptr %r1213.p, align 8, !alias.scope !3, !noalias !4
  %t1214 = add i64 %r1213, 8
  %gmp1215 = inttoptr i64 %t1214 to ptr
  %gml1216 = load i64, ptr %gmp1215, align 1, !alias.scope !4, !noalias !3
  %wp1217 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1216, ptr %wp1217, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf00 word 0xb9406109
  %r1218.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1218 = load i64, ptr %r1218.p, align 8, !alias.scope !3, !noalias !4
  %t1219 = add i64 %r1218, 96
  %gmp1220 = inttoptr i64 %t1219 to ptr
  %gml1221 = load i32, ptr %gmp1220, align 1, !alias.scope !4, !noalias !3
  %c1222 = zext i32 %gml1221 to i64
  %wp1223 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1222, ptr %wp1223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf04 word 0x6b37213f
  %r1224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1224 = load i64, ptr %r1224.p, align 8, !alias.scope !3, !noalias !4
  %c1225 = trunc i64 %r1224 to i32
  %r1226.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1226 = load i64, ptr %r1226.p, align 8, !alias.scope !3, !noalias !4
  %c1227 = trunc i64 %r1226 to i16
  %c1228 = zext i16 %c1227 to i64
  %c1229 = trunc i64 %c1228 to i32
  %t1230 = sub i32 %c1225, %c1229
  %fn1231 = icmp slt i32 %t1230, 0
  %fz1232 = icmp eq i32 %t1230, 0
  %fc1233 = icmp uge i32 %c1225, %c1229
  %fx11234 = xor i32 %c1225, %c1229
  %fx21235 = xor i32 %c1225, %t1230
  %fva1236 = and i32 %fx11234, %fx21235
  %fv1237 = icmp slt i32 %fva1236, 0
  %nz1238 = zext i1 %fn1231 to i64
  %zz1239 = zext i1 %fz1232 to i64
  %cz1240 = zext i1 %fc1233 to i64
  %vz1241 = zext i1 %fv1237 to i64
  %ns1242 = shl i64 %nz1238, 31
  %zs1243 = shl i64 %zz1239, 30
  %cs1244 = shl i64 %cz1240, 29
  %vs1245 = shl i64 %vz1241, 28
  %nzor1246 = or i64 %ns1242, %zs1243
  %cvor1247 = or i64 %cs1244, %vs1245
  %nzcv1248 = or i64 %nzor1246, %cvor1247
  %wp1249 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1248, ptr %wp1249, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf08 word 0x5400546d
  %r1250.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1250 = load i64, ptr %r1250.p, align 8, !alias.scope !3, !noalias !4
  %fsh1252 = lshr i64 %r1250, 30
  %ftr1253 = trunc i64 %fsh1252 to i1
  %fsh1254 = lshr i64 %r1250, 31
  %ftr1255 = trunc i64 %fsh1254 to i1
  %fsh1256 = lshr i64 %r1250, 28
  %ftr1257 = trunc i64 %fsh1256 to i1
  %fnz1258 = xor i1 %ftr1253, true
  %feq1259 = icmp eq i1 %ftr1255, %ftr1257
  %fgt1260 = and i1 %fnz1258, %feq1259
  %cond1251 = xor i1 %fgt1260, true
  br i1 %cond1251, label %L_8001bc994, label %L_8001bbf0c_ft
L_8001bbf0c_ft:
  ; @pc 0x8001bbf0c word 0xf9403509
  %r1261.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1261 = load i64, ptr %r1261.p, align 8, !alias.scope !3, !noalias !4
  %t1262 = add i64 %r1261, 104
  %gmp1263 = inttoptr i64 %t1262 to ptr
  %gml1264 = load i64, ptr %gmp1263, align 1, !alias.scope !4, !noalias !3
  %wp1265 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1264, ptr %wp1265, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf10 word 0x92403eea
  %r1266.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1266 = load i64, ptr %r1266.p, align 8, !alias.scope !3, !noalias !4
  %t1267 = and i64 %r1266, 65535
  %wp1268 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t1267, ptr %wp1268, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf14 word 0xf86a7937
  %r1269.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1269 = load i64, ptr %r1269.p, align 8, !alias.scope !3, !noalias !4
  %r1270.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1270 = load i64, ptr %r1270.p, align 8, !alias.scope !3, !noalias !4
  %t1271 = shl i64 %r1270, 3
  %t1272 = add i64 %r1269, %t1271
  %gmp1273 = inttoptr i64 %t1272 to ptr
  %gml1274 = load i64, ptr %gmp1273, align 1, !alias.scope !4, !noalias !3
  %wp1275 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %gml1274, ptr %wp1275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf18 word 0xb40056f7
  %r1276.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1276 = load i64, ptr %r1276.p, align 8, !alias.scope !3, !noalias !4
  %cmp1277 = icmp eq i64 %r1276, 0
  br i1 %cmp1277, label %L_8001bc9f4, label %L_8001bbf1c_ft
L_8001bbf1c_ft:
  ; @pc 0x8001bbf1c word 0xf94002e8
  %r1278.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1278 = load i64, ptr %r1278.p, align 8, !alias.scope !3, !noalias !4
  %gmp1279 = inttoptr i64 %r1278 to ptr
  %gml1280 = load i64, ptr %gmp1279, align 1, !alias.scope !4, !noalias !3
  %wp1281 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1280, ptr %wp1281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf20 word 0xf9404d08
  %r1282.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1282 = load i64, ptr %r1282.p, align 8, !alias.scope !3, !noalias !4
  %t1283 = add i64 %r1282, 152
  %gmp1284 = inttoptr i64 %t1283 to ptr
  %gml1285 = load i64, ptr %gmp1284, align 1, !alias.scope !4, !noalias !3
  %wp1286 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1285, ptr %wp1286, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf24 word 0xeb03011f
  %r1287.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1287 = load i64, ptr %r1287.p, align 8, !alias.scope !3, !noalias !4
  %r1288.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1288 = load i64, ptr %r1288.p, align 8, !alias.scope !3, !noalias !4
  %t1289 = sub i64 %r1287, %r1288
  %fn1290 = icmp slt i64 %t1289, 0
  %fz1291 = icmp eq i64 %t1289, 0
  %fc1292 = icmp uge i64 %r1287, %r1288
  %fx11293 = xor i64 %r1287, %r1288
  %fx21294 = xor i64 %r1287, %t1289
  %fva1295 = and i64 %fx11293, %fx21294
  %fv1296 = icmp slt i64 %fva1295, 0
  %nz1297 = zext i1 %fn1290 to i64
  %zz1298 = zext i1 %fz1291 to i64
  %cz1299 = zext i1 %fc1292 to i64
  %vz1300 = zext i1 %fv1296 to i64
  %ns1301 = shl i64 %nz1297, 31
  %zs1302 = shl i64 %zz1298, 30
  %cs1303 = shl i64 %cz1299, 29
  %vs1304 = shl i64 %vz1300, 28
  %nzor1305 = or i64 %ns1301, %zs1302
  %cvor1306 = or i64 %cs1303, %vs1304
  %nzcv1307 = or i64 %nzor1305, %cvor1306
  %wp1308 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1307, ptr %wp1308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf28 word 0x540059a1
  %r1309.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1309 = load i64, ptr %r1309.p, align 8, !alias.scope !3, !noalias !4
  %fsh1311 = lshr i64 %r1309, 30
  %ftr1312 = trunc i64 %fsh1311 to i1
  %cond1310 = xor i1 %ftr1312, true
  br i1 %cond1310, label %L_8001bca5c, label %L_8001bbf2c_ft
L_8001bbf2c_ft:
  ; @pc 0x8001bbf2c word 0xf94006e8
  %r1313.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1313 = load i64, ptr %r1313.p, align 8, !alias.scope !3, !noalias !4
  %t1314 = add i64 %r1313, 8
  %gmp1315 = inttoptr i64 %t1314 to ptr
  %gml1316 = load i64, ptr %gmp1315, align 1, !alias.scope !4, !noalias !3
  %wp1317 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1316, ptr %wp1317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf30 word 0x5280078b
  %c1318 = zext i32 60 to i64
  %wp1319 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c1318, ptr %wp1319, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf34 word 0x79403ae9
  %r1320.p = getelementptr inbounds i8, ptr %c, i64 184
  %r1320 = load i64, ptr %r1320.p, align 8, !alias.scope !3, !noalias !4
  %t1321 = add i64 %r1320, 28
  %gmp1322 = inttoptr i64 %t1321 to ptr
  %gml1323 = load i16, ptr %gmp1322, align 1, !alias.scope !4, !noalias !3
  %c1324 = zext i16 %gml1323 to i64
  %wp1325 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1324, ptr %wp1325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf38 word 0xf9400908
  %r1326.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1326 = load i64, ptr %r1326.p, align 8, !alias.scope !3, !noalias !4
  %t1327 = add i64 %r1326, 16
  %gmp1328 = inttoptr i64 %t1327 to ptr
  %gml1329 = load i64, ptr %gmp1328, align 1, !alias.scope !4, !noalias !3
  %wp1330 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1329, ptr %wp1330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf3c word 0xf940250a
  %r1331.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1331 = load i64, ptr %r1331.p, align 8, !alias.scope !3, !noalias !4
  %t1332 = add i64 %r1331, 72
  %gmp1333 = inttoptr i64 %t1332 to ptr
  %gml1334 = load i64, ptr %gmp1333, align 1, !alias.scope !4, !noalias !3
  %wp1335 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml1334, ptr %wp1335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf40 word 0xf9400908
  %r1336.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1336 = load i64, ptr %r1336.p, align 8, !alias.scope !3, !noalias !4
  %t1337 = add i64 %r1336, 16
  %gmp1338 = inttoptr i64 %t1337 to ptr
  %gml1339 = load i64, ptr %gmp1338, align 1, !alias.scope !4, !noalias !3
  %wp1340 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1339, ptr %wp1340, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf44 word 0x9bab2929
  %r1341.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1341 = load i64, ptr %r1341.p, align 8, !alias.scope !3, !noalias !4
  %c1342 = trunc i64 %r1341 to i32
  %c1343 = zext i32 %c1342 to i64
  %r1344.p = getelementptr inbounds i8, ptr %c, i64 88
  %r1344 = load i64, ptr %r1344.p, align 8, !alias.scope !3, !noalias !4
  %c1345 = trunc i64 %r1344 to i32
  %c1346 = zext i32 %c1345 to i64
  %t1347 = mul i64 %c1343, %c1346
  %r1348.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1348 = load i64, ptr %r1348.p, align 8, !alias.scope !3, !noalias !4
  %t1349 = add i64 %r1348, %t1347
  %wp1350 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t1349, ptr %wp1350, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf48 word 0xb9801529
  %r1351.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1351 = load i64, ptr %r1351.p, align 8, !alias.scope !3, !noalias !4
  %t1352 = add i64 %r1351, 20
  %gmp1353 = inttoptr i64 %t1352 to ptr
  %gml1354 = load i32, ptr %gmp1353, align 1, !alias.scope !4, !noalias !3
  %c1355 = sext i32 %gml1354 to i64
  %wp1356 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c1355, ptr %wp1356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf4c word 0x8b090100
  %r1357.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1357 = load i64, ptr %r1357.p, align 8, !alias.scope !3, !noalias !4
  %r1358.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1358 = load i64, ptr %r1358.p, align 8, !alias.scope !3, !noalias !4
  %t1359 = add i64 %r1357, %r1358
  %wp1360 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t1359, ptr %wp1360, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbf50
L_8001bbf54_ft:
  ; @pc 0x8001bbf54 word 0x131e3f5a
  %r1364.p = getelementptr inbounds i8, ptr %c, i64 208
  %r1364 = load i64, ptr %r1364.p, align 8, !alias.scope !3, !noalias !4
  %c1365 = trunc i64 %r1364 to i32
  %ror1366 = call i32 @llvm.fshr.i32(i32 %c1365, i32 %c1365, i32 30)
  %t1367 = lshr i32 %c1365, 15
  %t1368 = and i32 %t1367, 1
  %t1369 = sub i32 0, %t1368
  %t1370 = and i32 %t1369, -262144
  %t1371 = and i32 %ror1366, 262140
  %t1372 = or i32 %t1370, %t1371
  %c1373 = zext i32 %t1372 to i64
  %wp1374 = getelementptr inbounds i8, ptr %c, i64 208
  store i64 %c1373, ptr %wp1374, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbf58
L_8001bbf60_ft:
  ; @pc 0x8001bbf60 word 0xf9400008
  %r1382.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1382 = load i64, ptr %r1382.p, align 8, !alias.scope !3, !noalias !4
  %gmp1383 = inttoptr i64 %r1382 to ptr
  %gml1384 = load i64, ptr %gmp1383, align 1, !alias.scope !4, !noalias !3
  %wp1385 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1384, ptr %wp1385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf64 word 0x9001bd29
  %wp1386 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp1386, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf68 word 0xf9400908
  %r1387.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1387 = load i64, ptr %r1387.p, align 8, !alias.scope !3, !noalias !4
  %t1388 = add i64 %r1387, 16
  %gmp1389 = inttoptr i64 %t1388 to ptr
  %gml1390 = load i64, ptr %gmp1389, align 1, !alias.scope !4, !noalias !3
  %wp1391 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1390, ptr %wp1391, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf6c word 0xf9462929
  %r1392.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1392 = load i64, ptr %r1392.p, align 8, !alias.scope !3, !noalias !4
  %t1393 = add i64 %r1392, 3152
  %gmp1394 = inttoptr i64 %t1393 to ptr
  %gml1395 = load i64, ptr %gmp1394, align 1, !alias.scope !4, !noalias !3
  %wp1396 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1395, ptr %wp1396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf70 word 0xeb09011f
  %r1397.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1397 = load i64, ptr %r1397.p, align 8, !alias.scope !3, !noalias !4
  %r1398.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1398 = load i64, ptr %r1398.p, align 8, !alias.scope !3, !noalias !4
  %t1399 = sub i64 %r1397, %r1398
  %fn1400 = icmp slt i64 %t1399, 0
  %fz1401 = icmp eq i64 %t1399, 0
  %fc1402 = icmp uge i64 %r1397, %r1398
  %fx11403 = xor i64 %r1397, %r1398
  %fx21404 = xor i64 %r1397, %t1399
  %fva1405 = and i64 %fx11403, %fx21404
  %fv1406 = icmp slt i64 %fva1405, 0
  %nz1407 = zext i1 %fn1400 to i64
  %zz1408 = zext i1 %fz1401 to i64
  %cz1409 = zext i1 %fc1402 to i64
  %vz1410 = zext i1 %fv1406 to i64
  %ns1411 = shl i64 %nz1407, 31
  %zs1412 = shl i64 %zz1408, 30
  %cs1413 = shl i64 %cz1409, 29
  %vs1414 = shl i64 %vz1410, 28
  %nzor1415 = or i64 %ns1411, %zs1412
  %cvor1416 = or i64 %cs1413, %vs1414
  %nzcv1417 = or i64 %nzor1415, %cvor1416
  %wp1418 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1417, ptr %wp1418, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbf74 word 0x54002d01
  %r1419.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1419 = load i64, ptr %r1419.p, align 8, !alias.scope !3, !noalias !4
  %fsh1421 = lshr i64 %r1419, 30
  %ftr1422 = trunc i64 %fsh1421 to i1
  %cond1420 = xor i1 %ftr1422, true
  br i1 %cond1420, label %L_8001bc514, label %L_8001bbf78_ft
L_8001bbf78_ft:
  ; @pc 0x8001bbf78 word 0xf9400400
  %r1423.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1423 = load i64, ptr %r1423.p, align 8, !alias.scope !3, !noalias !4
  %t1424 = add i64 %r1423, 8
  %gmp1425 = inttoptr i64 %t1424 to ptr
  %gml1426 = load i64, ptr %gmp1425, align 1, !alias.scope !4, !noalias !3
  %wp1427 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1426, ptr %wp1427, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bbf7c
L_8001bbf98_ft:
  ; @pc 0x8001bbf98 word 0x37002ce4
  %r1474.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1474 = load i64, ptr %r1474.p, align 8, !alias.scope !3, !noalias !4
  %t1475 = and i64 %r1474, 1
  %cmp1476 = icmp ne i64 %t1475, 0
  br i1 %cmp1476, label %L_8001bc534, label %L_8001bbf9c_ft
L_8001bbf9c_ft:
  ; @pc 0x8001bbf9c word 0xf9400aa0
  %r1477.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1477 = load i64, ptr %r1477.p, align 8, !alias.scope !3, !noalias !4
  %t1478 = add i64 %r1477, 16
  %gmp1479 = inttoptr i64 %t1478 to ptr
  %gml1480 = load i64, ptr %gmp1479, align 1, !alias.scope !4, !noalias !3
  %wp1481 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1480, ptr %wp1481, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfa0 word 0x927ef519
  %r1482.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1482 = load i64, ptr %r1482.p, align 8, !alias.scope !3, !noalias !4
  %t1483 = and i64 %r1482, -4
  %wp1484 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1483, ptr %wp1484, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfa4 word 0xf9400008
  %r1485.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1485 = load i64, ptr %r1485.p, align 8, !alias.scope !3, !noalias !4
  %gmp1486 = inttoptr i64 %r1485 to ptr
  %gml1487 = load i64, ptr %gmp1486, align 1, !alias.scope !4, !noalias !3
  %wp1488 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1487, ptr %wp1488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfa8 word 0xf9402d08
  %r1489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1489 = load i64, ptr %r1489.p, align 8, !alias.scope !3, !noalias !4
  %t1490 = add i64 %r1489, 88
  %gmp1491 = inttoptr i64 %t1490 to ptr
  %gml1492 = load i64, ptr %gmp1491, align 1, !alias.scope !4, !noalias !3
  %wp1493 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1492, ptr %wp1493, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfac word 0xd63f0100
  %r1494.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1494 = load i64, ptr %r1494.p, align 8, !alias.scope !3, !noalias !4
  %fp1495 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1494, ptr %fp1495, align 8, !alias.scope !3, !noalias !4
  %wp1496 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361556912, ptr %wp1496, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bbfb0 word 0xf9400814
  %r1497.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1497 = load i64, ptr %r1497.p, align 8, !alias.scope !3, !noalias !4
  %t1498 = add i64 %r1497, 16
  %gmp1499 = inttoptr i64 %t1498 to ptr
  %gml1500 = load i64, ptr %gmp1499, align 1, !alias.scope !4, !noalias !3
  %wp1501 = getelementptr inbounds i8, ptr %c, i64 160
  store i64 %gml1500, ptr %wp1501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfb4 word 0xb4000074
  %r1502.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1502 = load i64, ptr %r1502.p, align 8, !alias.scope !3, !noalias !4
  %cmp1503 = icmp eq i64 %r1502, 0
  br i1 %cmp1503, label %L_8001bbfc0, label %L_8001bbfb8_ft
L_8001bbfb8_ft:
  ; @pc 0x8001bbfb8 word 0xf9400288
  %r1504.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1504 = load i64, ptr %r1504.p, align 8, !alias.scope !3, !noalias !4
  %gmp1505 = inttoptr i64 %r1504 to ptr
  %gml1506 = load i64, ptr %gmp1505, align 1, !alias.scope !4, !noalias !3
  %wp1507 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1506, ptr %wp1507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbfbc word 0xf9000808
  %r1508.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1508 = load i64, ptr %r1508.p, align 8, !alias.scope !3, !noalias !4
  %t1509 = add i64 %r1508, 16
  %r1510.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1510 = load i64, ptr %r1510.p, align 8, !alias.scope !3, !noalias !4
  %gmp1511 = inttoptr i64 %t1509 to ptr
  store i64 %r1510, ptr %gmp1511, align 1, !alias.scope !4, !noalias !3
  br label %L_8001bbfc0
L_8001bbfec_ft:
  ; @pc 0x8001bbfec word 0xf9400409
  %r1587.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1587 = load i64, ptr %r1587.p, align 8, !alias.scope !3, !noalias !4
  %t1588 = add i64 %r1587, 8
  %gmp1589 = inttoptr i64 %t1588 to ptr
  %gml1590 = load i64, ptr %gmp1589, align 1, !alias.scope !4, !noalias !3
  %wp1591 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml1590, ptr %wp1591, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbff0 word 0xf8287934
  %r1592.p = getelementptr inbounds i8, ptr %c, i64 72
  %r1592 = load i64, ptr %r1592.p, align 8, !alias.scope !3, !noalias !4
  %r1593.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1593 = load i64, ptr %r1593.p, align 8, !alias.scope !3, !noalias !4
  %t1594 = shl i64 %r1593, 3
  %t1595 = add i64 %r1592, %t1594
  %r1596.p = getelementptr inbounds i8, ptr %c, i64 160
  %r1596 = load i64, ptr %r1596.p, align 8, !alias.scope !3, !noalias !4
  %gmp1597 = inttoptr i64 %t1595 to ptr
  store i64 %r1596, ptr %gmp1597, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bbff4 word 0xb9400008
  %r1598.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1598 = load i64, ptr %r1598.p, align 8, !alias.scope !3, !noalias !4
  %gmp1599 = inttoptr i64 %r1598 to ptr
  %gml1600 = load i32, ptr %gmp1599, align 1, !alias.scope !4, !noalias !3
  %c1601 = zext i32 %gml1600 to i64
  %wp1602 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1601, ptr %wp1602, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbff8 word 0x11000508
  %r1603.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1603 = load i64, ptr %r1603.p, align 8, !alias.scope !3, !noalias !4
  %c1604 = trunc i64 %r1603 to i32
  %t1605 = add i32 %c1604, 1
  %c1606 = zext i32 %t1605 to i64
  %wp1607 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1606, ptr %wp1607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bbffc word 0xb9000008
  %r1608.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1608 = load i64, ptr %r1608.p, align 8, !alias.scope !3, !noalias !4
  %r1609.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1609 = load i64, ptr %r1609.p, align 8, !alias.scope !3, !noalias !4
  %c1610 = trunc i64 %r1609 to i32
  %gmp1611 = inttoptr i64 %r1608 to ptr
  store i32 %c1610, ptr %gmp1611, align 1, !alias.scope !4, !noalias !3
  br label %L_8001bc000
L_8001bc04c_ft:
  ; @pc 0x8001bc04c word 0x54fff4c0
  %r1710.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1710 = load i64, ptr %r1710.p, align 8, !alias.scope !3, !noalias !4
  %fsh1712 = lshr i64 %r1710, 30
  %cond1711 = trunc i64 %fsh1712 to i1
  br i1 %cond1711, label %L_8001bbee4, label %L_8001bc050_ft
L_8001bc050_ft:
  ; @pc 0x8001bc050 word 0xf94006a8
  %r1713.p = getelementptr inbounds i8, ptr %c, i64 168
  %r1713 = load i64, ptr %r1713.p, align 8, !alias.scope !3, !noalias !4
  %t1714 = add i64 %r1713, 8
  %gmp1715 = inttoptr i64 %t1714 to ptr
  %gml1716 = load i64, ptr %gmp1715, align 1, !alias.scope !4, !noalias !3
  %wp1717 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1716, ptr %wp1717, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc054 word 0x12003f01
  %r1718.p = getelementptr inbounds i8, ptr %c, i64 192
  %r1718 = load i64, ptr %r1718.p, align 8, !alias.scope !3, !noalias !4
  %c1719 = trunc i64 %r1718 to i32
  %t1720 = and i32 %c1719, 65535
  %c1721 = zext i32 %t1720 to i64
  %wp1722 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %c1721, ptr %wp1722, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc058 word 0xf9401100
  %r1723.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1723 = load i64, ptr %r1723.p, align 8, !alias.scope !3, !noalias !4
  %t1724 = add i64 %r1723, 32
  %gmp1725 = inttoptr i64 %t1724 to ptr
  %gml1726 = load i64, ptr %gmp1725, align 1, !alias.scope !4, !noalias !3
  %wp1727 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1726, ptr %wp1727, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc05c word 0xf9400008
  %r1728.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1728 = load i64, ptr %r1728.p, align 8, !alias.scope !3, !noalias !4
  %gmp1729 = inttoptr i64 %r1728 to ptr
  %gml1730 = load i64, ptr %gmp1729, align 1, !alias.scope !4, !noalias !3
  %wp1731 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1730, ptr %wp1731, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc060 word 0xf9408508
  %r1732.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1732 = load i64, ptr %r1732.p, align 8, !alias.scope !3, !noalias !4
  %t1733 = add i64 %r1732, 264
  %gmp1734 = inttoptr i64 %t1733 to ptr
  %gml1735 = load i64, ptr %gmp1734, align 1, !alias.scope !4, !noalias !3
  %wp1736 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1735, ptr %wp1736, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc064 word 0xd63f0100
  %r1737.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1737 = load i64, ptr %r1737.p, align 8, !alias.scope !3, !noalias !4
  %fp1738 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r1737, ptr %fp1738, align 8, !alias.scope !3, !noalias !4
  %wp1739 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557096, ptr %wp1739, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc068 word 0x2a1f03f7
  %t1740 = or i32 0, 0
  %c1741 = zext i32 %t1740 to i64
  %wp1742 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c1741, ptr %wp1742, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc06c
L_8001bc0f0_ft:
  ; @pc 0x8001bc0f0 word 0xf9400148
  %r1852.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1852 = load i64, ptr %r1852.p, align 8, !alias.scope !3, !noalias !4
  %gmp1853 = inttoptr i64 %r1852 to ptr
  %gml1854 = load i64, ptr %gmp1853, align 1, !alias.scope !4, !noalias !3
  %wp1855 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1854, ptr %wp1855, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0f4 word 0xf9400108
  %r1856.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1856 = load i64, ptr %r1856.p, align 8, !alias.scope !3, !noalias !4
  %gmp1857 = inttoptr i64 %r1856 to ptr
  %gml1858 = load i64, ptr %gmp1857, align 1, !alias.scope !4, !noalias !3
  %wp1859 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1858, ptr %wp1859, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc0f8 word 0xeb0d011f
  %r1860.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1860 = load i64, ptr %r1860.p, align 8, !alias.scope !3, !noalias !4
  %r1861.p = getelementptr inbounds i8, ptr %c, i64 104
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
  ; @pc 0x8001bc0fc word 0x54001c01
  %r1882.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1882 = load i64, ptr %r1882.p, align 8, !alias.scope !3, !noalias !4
  %fsh1884 = lshr i64 %r1882, 30
  %ftr1885 = trunc i64 %fsh1884 to i1
  %cond1883 = xor i1 %ftr1885, true
  br i1 %cond1883, label %L_8001bc47c, label %L_8001bc100_ft
L_8001bc100_ft:
  ; @pc 0x8001bc100 word 0x08dffd88
  %r1886.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1886 = load i64, ptr %r1886.p, align 8, !alias.scope !3, !noalias !4
  %atp1887 = inttoptr i64 %r1886 to ptr
  %lda1888 = load atomic i8, ptr %atp1887 acquire, align 1, !alias.scope !4, !noalias !3
  %c1889 = zext i8 %lda1888 to i64
  %wp1890 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1889, ptr %wp1890, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc104 word 0x36004be8
  %r1891.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1891 = load i64, ptr %r1891.p, align 8, !alias.scope !3, !noalias !4
  %t1892 = and i64 %r1891, 1
  %cmp1893 = icmp eq i64 %t1892, 0
  br i1 %cmp1893, label %L_8001bca80, label %L_8001bc108
L_8001bc12c_ft:
  ; @pc 0x8001bc12c word 0xf9400148
  %r1926.p = getelementptr inbounds i8, ptr %c, i64 80
  %r1926 = load i64, ptr %r1926.p, align 8, !alias.scope !3, !noalias !4
  %gmp1927 = inttoptr i64 %r1926 to ptr
  %gml1928 = load i64, ptr %gmp1927, align 1, !alias.scope !4, !noalias !3
  %wp1929 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1928, ptr %wp1929, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc130 word 0xf9400108
  %r1930.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1930 = load i64, ptr %r1930.p, align 8, !alias.scope !3, !noalias !4
  %gmp1931 = inttoptr i64 %r1930 to ptr
  %gml1932 = load i64, ptr %gmp1931, align 1, !alias.scope !4, !noalias !3
  %wp1933 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml1932, ptr %wp1933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc134 word 0xeb0d011f
  %r1934.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1934 = load i64, ptr %r1934.p, align 8, !alias.scope !3, !noalias !4
  %r1935.p = getelementptr inbounds i8, ptr %c, i64 104
  %r1935 = load i64, ptr %r1935.p, align 8, !alias.scope !3, !noalias !4
  %t1936 = sub i64 %r1934, %r1935
  %fn1937 = icmp slt i64 %t1936, 0
  %fz1938 = icmp eq i64 %t1936, 0
  %fc1939 = icmp uge i64 %r1934, %r1935
  %fx11940 = xor i64 %r1934, %r1935
  %fx21941 = xor i64 %r1934, %t1936
  %fva1942 = and i64 %fx11940, %fx21941
  %fv1943 = icmp slt i64 %fva1942, 0
  %nz1944 = zext i1 %fn1937 to i64
  %zz1945 = zext i1 %fz1938 to i64
  %cz1946 = zext i1 %fc1939 to i64
  %vz1947 = zext i1 %fv1943 to i64
  %ns1948 = shl i64 %nz1944, 31
  %zs1949 = shl i64 %zz1945, 30
  %cs1950 = shl i64 %cz1946, 29
  %vs1951 = shl i64 %vz1947, 28
  %nzor1952 = or i64 %ns1948, %zs1949
  %cvor1953 = or i64 %cs1950, %vs1951
  %nzcv1954 = or i64 %nzor1952, %cvor1953
  %wp1955 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv1954, ptr %wp1955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc138 word 0x54000601
  %r1956.p = getelementptr inbounds i8, ptr %c, i64 272
  %r1956 = load i64, ptr %r1956.p, align 8, !alias.scope !3, !noalias !4
  %fsh1958 = lshr i64 %r1956, 30
  %ftr1959 = trunc i64 %fsh1958 to i1
  %cond1957 = xor i1 %ftr1959, true
  br i1 %cond1957, label %L_8001bc1f8, label %L_8001bc13c_ft
L_8001bc13c_ft:
  ; @pc 0x8001bc13c word 0x08dffd88
  %r1960.p = getelementptr inbounds i8, ptr %c, i64 96
  %r1960 = load i64, ptr %r1960.p, align 8, !alias.scope !3, !noalias !4
  %atp1961 = inttoptr i64 %r1960 to ptr
  %lda1962 = load atomic i8, ptr %atp1961 acquire, align 1, !alias.scope !4, !noalias !3
  %c1963 = zext i8 %lda1962 to i64
  %wp1964 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c1963, ptr %wp1964, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc140 word 0x360068c8
  %r1965.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1965 = load i64, ptr %r1965.p, align 8, !alias.scope !3, !noalias !4
  %t1966 = and i64 %r1965, 1
  %cmp1967 = icmp eq i64 %t1966, 0
  br i1 %cmp1967, label %L_8001bce58, label %L_8001bc144
L_8001bc154_ft:
  ; @pc 0x8001bc154 word 0xd001bc80
  %wp1984 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp1984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc158 word 0xaa0303f9
  %r1985.p = getelementptr inbounds i8, ptr %c, i64 24
  %r1985 = load i64, ptr %r1985.p, align 8, !alias.scope !3, !noalias !4
  %t1986 = or i64 0, %r1985
  %wp1987 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t1986, ptr %wp1987, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc15c word 0xf9430c00
  %r1988.p = getelementptr inbounds i8, ptr %c, i64 0
  %r1988 = load i64, ptr %r1988.p, align 8, !alias.scope !3, !noalias !4
  %t1989 = add i64 %r1988, 1560
  %gmp1990 = inttoptr i64 %t1989 to ptr
  %gml1991 = load i64, ptr %gmp1990, align 1, !alias.scope !4, !noalias !3
  %wp1992 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml1991, ptr %wp1992, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc160 word 0xb90007e4
  %r1993.p = getelementptr inbounds i8, ptr %c, i64 256
  %r1993 = load i64, ptr %r1993.p, align 8, !alias.scope !3, !noalias !4
  %t1994 = add i64 %r1993, 4
  %r1995.p = getelementptr inbounds i8, ptr %c, i64 32
  %r1995 = load i64, ptr %r1995.p, align 8, !alias.scope !3, !noalias !4
  %c1996 = trunc i64 %r1995 to i32
  %gmp1997 = inttoptr i64 %t1994 to ptr
  store i32 %c1996, ptr %gmp1997, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc164 word 0x2a0503f7
  %r1998.p = getelementptr inbounds i8, ptr %c, i64 40
  %r1998 = load i64, ptr %r1998.p, align 8, !alias.scope !3, !noalias !4
  %c1999 = trunc i64 %r1998 to i32
  %t2000 = or i32 0, %c1999
  %c2001 = zext i32 %t2000 to i64
  %wp2002 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2001, ptr %wp2002, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc168 word 0x94a79e0e
  %wp2003 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557356, ptr %wp2003, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc16c word 0x9001bded
  %wp2004 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2004, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc170 word 0x9001bdec
  %wp2005 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2005, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc174 word 0xf941b5ad
  %r2006.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2006 = load i64, ptr %r2006.p, align 8, !alias.scope !3, !noalias !4
  %t2007 = add i64 %r2006, 872
  %gmp2008 = inttoptr i64 %t2007 to ptr
  %gml2009 = load i64, ptr %gmp2008, align 1, !alias.scope !4, !noalias !3
  %wp2010 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2009, ptr %wp2010, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc178 word 0xd001bc8b
  %wp2011 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2011, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc17c word 0xd001bc89
  %wp2012 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2012, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc180 word 0xf941bd8c
  %r2013.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2013 = load i64, ptr %r2013.p, align 8, !alias.scope !3, !noalias !4
  %t2014 = add i64 %r2013, 888
  %gmp2015 = inttoptr i64 %t2014 to ptr
  %gml2016 = load i64, ptr %gmp2015, align 1, !alias.scope !4, !noalias !3
  %wp2017 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2016, ptr %wp2017, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc184 word 0xf943016b
  %r2018.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2018 = load i64, ptr %r2018.p, align 8, !alias.scope !3, !noalias !4
  %t2019 = add i64 %r2018, 1536
  %gmp2020 = inttoptr i64 %t2019 to ptr
  %gml2021 = load i64, ptr %gmp2020, align 1, !alias.scope !4, !noalias !3
  %wp2022 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2021, ptr %wp2022, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc188 word 0x2a1703e5
  %r2023.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2023 = load i64, ptr %r2023.p, align 8, !alias.scope !3, !noalias !4
  %c2024 = trunc i64 %r2023 to i32
  %t2025 = or i32 0, %c2024
  %c2026 = zext i32 %t2025 to i64
  %wp2027 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2026, ptr %wp2027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc18c word 0xaa1903e3
  %r2028.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2028 = load i64, ptr %r2028.p, align 8, !alias.scope !3, !noalias !4
  %t2029 = or i64 0, %r2028
  %wp2030 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2029, ptr %wp2030, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc190 word 0xf94007ea
  %r2031.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2031 = load i64, ptr %r2031.p, align 8, !alias.scope !3, !noalias !4
  %t2032 = add i64 %r2031, 8
  %gmp2033 = inttoptr i64 %t2032 to ptr
  %gml2034 = load i64, ptr %gmp2033, align 1, !alias.scope !4, !noalias !3
  %wp2035 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2034, ptr %wp2035, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc194 word 0xf9430d29
  %r2036.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2036 = load i64, ptr %r2036.p, align 8, !alias.scope !3, !noalias !4
  %t2037 = add i64 %r2036, 1560
  %gmp2038 = inttoptr i64 %t2037 to ptr
  %gml2039 = load i64, ptr %gmp2038, align 1, !alias.scope !4, !noalias !3
  %wp2040 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2039, ptr %wp2040, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc198 word 0xb94007e4
  %r2041.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2041 = load i64, ptr %r2041.p, align 8, !alias.scope !3, !noalias !4
  %t2042 = add i64 %r2041, 4
  %gmp2043 = inttoptr i64 %t2042 to ptr
  %gml2044 = load i32, ptr %gmp2043, align 1, !alias.scope !4, !noalias !3
  %c2045 = zext i32 %gml2044 to i64
  %wp2046 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2045, ptr %wp2046, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc19c word 0x34000600
  %r2047.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2047 = load i64, ptr %r2047.p, align 8, !alias.scope !3, !noalias !4
  %c2048 = trunc i64 %r2047 to i32
  %cmp2049 = icmp eq i32 %c2048, 0
  br i1 %cmp2049, label %L_8001bc25c, label %L_8001bc1a0_ft
L_8001bc1a0_ft:
  ; @pc 0x8001bc1a0 word 0xf001bc68
  %wp2050 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp2050, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1a4 word 0xd001bc89
  %wp2051 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2051, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1a8 word 0xf9440508
  %r2052.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2052 = load i64, ptr %r2052.p, align 8, !alias.scope !3, !noalias !4
  %t2053 = add i64 %r2052, 2056
  %gmp2054 = inttoptr i64 %t2053 to ptr
  %gml2055 = load i64, ptr %gmp2054, align 1, !alias.scope !4, !noalias !3
  %wp2056 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2055, ptr %wp2056, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1ac word 0xf9430929
  %r2057.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2057 = load i64, ptr %r2057.p, align 8, !alias.scope !3, !noalias !4
  %t2058 = add i64 %r2057, 1552
  %gmp2059 = inttoptr i64 %t2058 to ptr
  %gml2060 = load i64, ptr %gmp2059, align 1, !alias.scope !4, !noalias !3
  %wp2061 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2060, ptr %wp2061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1b0 word 0xd001bc80
  %wp2062 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1b4 word 0x91004108
  %r2063.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2063 = load i64, ptr %r2063.p, align 8, !alias.scope !3, !noalias !4
  %t2064 = add i64 %r2063, 16
  %wp2065 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2064, ptr %wp2065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1b8 word 0xf9000128
  %r2066.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2066 = load i64, ptr %r2066.p, align 8, !alias.scope !3, !noalias !4
  %r2067.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2067 = load i64, ptr %r2067.p, align 8, !alias.scope !3, !noalias !4
  %gmp2068 = inttoptr i64 %r2066 to ptr
  store i64 %r2067, ptr %gmp2068, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc1bc word 0xf9430c00
  %r2069.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2069 = load i64, ptr %r2069.p, align 8, !alias.scope !3, !noalias !4
  %t2070 = add i64 %r2069, 1560
  %gmp2071 = inttoptr i64 %t2070 to ptr
  %gml2072 = load i64, ptr %gmp2071, align 1, !alias.scope !4, !noalias !3
  %wp2073 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2072, ptr %wp2073, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1c0 word 0x94a79dfc
  %wp2074 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557444, ptr %wp2074, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc1c4 word 0x9001bded
  %wp2075 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1c8 word 0x9001bdec
  %wp2076 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2076, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1cc word 0xf941b5ad
  %r2077.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2077 = load i64, ptr %r2077.p, align 8, !alias.scope !3, !noalias !4
  %t2078 = add i64 %r2077, 872
  %gmp2079 = inttoptr i64 %t2078 to ptr
  %gml2080 = load i64, ptr %gmp2079, align 1, !alias.scope !4, !noalias !3
  %wp2081 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2080, ptr %wp2081, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1d0 word 0xd001bc8b
  %wp2082 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2082, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1d4 word 0xd001bc89
  %wp2083 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2083, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1d8 word 0xf941bd8c
  %r2084.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2084 = load i64, ptr %r2084.p, align 8, !alias.scope !3, !noalias !4
  %t2085 = add i64 %r2084, 888
  %gmp2086 = inttoptr i64 %t2085 to ptr
  %gml2087 = load i64, ptr %gmp2086, align 1, !alias.scope !4, !noalias !3
  %wp2088 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2087, ptr %wp2088, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1dc word 0xf943016b
  %r2089.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2089 = load i64, ptr %r2089.p, align 8, !alias.scope !3, !noalias !4
  %t2090 = add i64 %r2089, 1536
  %gmp2091 = inttoptr i64 %t2090 to ptr
  %gml2092 = load i64, ptr %gmp2091, align 1, !alias.scope !4, !noalias !3
  %wp2093 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2092, ptr %wp2093, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1e0 word 0x2a1703e5
  %r2094.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2094 = load i64, ptr %r2094.p, align 8, !alias.scope !3, !noalias !4
  %c2095 = trunc i64 %r2094 to i32
  %t2096 = or i32 0, %c2095
  %c2097 = zext i32 %t2096 to i64
  %wp2098 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2097, ptr %wp2098, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1e4 word 0xaa1903e3
  %r2099.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2099 = load i64, ptr %r2099.p, align 8, !alias.scope !3, !noalias !4
  %t2100 = or i64 0, %r2099
  %wp2101 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2100, ptr %wp2101, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1e8 word 0xf94007ea
  %r2102.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2102 = load i64, ptr %r2102.p, align 8, !alias.scope !3, !noalias !4
  %t2103 = add i64 %r2102, 8
  %gmp2104 = inttoptr i64 %t2103 to ptr
  %gml2105 = load i64, ptr %gmp2104, align 1, !alias.scope !4, !noalias !3
  %wp2106 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2105, ptr %wp2106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1ec word 0xf9430d29
  %r2107.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2107 = load i64, ptr %r2107.p, align 8, !alias.scope !3, !noalias !4
  %t2108 = add i64 %r2107, 1560
  %gmp2109 = inttoptr i64 %t2108 to ptr
  %gml2110 = load i64, ptr %gmp2109, align 1, !alias.scope !4, !noalias !3
  %wp2111 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2110, ptr %wp2111, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1f0 word 0xb94007e4
  %r2112.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2112 = load i64, ptr %r2112.p, align 8, !alias.scope !3, !noalias !4
  %t2113 = add i64 %r2112, 4
  %gmp2114 = inttoptr i64 %t2113 to ptr
  %gml2115 = load i32, ptr %gmp2114, align 1, !alias.scope !4, !noalias !3
  %c2116 = zext i32 %gml2115 to i64
  %wp2117 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2116, ptr %wp2117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc1f4 word 0x1400001a
  br label %L_8001bc25c
L_8001bc270_ft:
  ; @pc 0x8001bc270 word 0xf9400148
  %r2221.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2221 = load i64, ptr %r2221.p, align 8, !alias.scope !3, !noalias !4
  %gmp2222 = inttoptr i64 %r2221 to ptr
  %gml2223 = load i64, ptr %gmp2222, align 1, !alias.scope !4, !noalias !3
  %wp2224 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2223, ptr %wp2224, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc274 word 0xf9400108
  %r2225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2225 = load i64, ptr %r2225.p, align 8, !alias.scope !3, !noalias !4
  %gmp2226 = inttoptr i64 %r2225 to ptr
  %gml2227 = load i64, ptr %gmp2226, align 1, !alias.scope !4, !noalias !3
  %wp2228 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2227, ptr %wp2228, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc278 word 0xeb0d011f
  %r2229.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2229 = load i64, ptr %r2229.p, align 8, !alias.scope !3, !noalias !4
  %r2230.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2230 = load i64, ptr %r2230.p, align 8, !alias.scope !3, !noalias !4
  %t2231 = sub i64 %r2229, %r2230
  %fn2232 = icmp slt i64 %t2231, 0
  %fz2233 = icmp eq i64 %t2231, 0
  %fc2234 = icmp uge i64 %r2229, %r2230
  %fx12235 = xor i64 %r2229, %r2230
  %fx22236 = xor i64 %r2229, %t2231
  %fva2237 = and i64 %fx12235, %fx22236
  %fv2238 = icmp slt i64 %fva2237, 0
  %nz2239 = zext i1 %fn2232 to i64
  %zz2240 = zext i1 %fz2233 to i64
  %cz2241 = zext i1 %fc2234 to i64
  %vz2242 = zext i1 %fv2238 to i64
  %ns2243 = shl i64 %nz2239, 31
  %zs2244 = shl i64 %zz2240, 30
  %cs2245 = shl i64 %cz2241, 29
  %vs2246 = shl i64 %vz2242, 28
  %nzor2247 = or i64 %ns2243, %zs2244
  %cvor2248 = or i64 %cs2245, %vs2246
  %nzcv2249 = or i64 %nzor2247, %cvor2248
  %wp2250 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2249, ptr %wp2250, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc27c word 0x54000601
  %r2251.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2251 = load i64, ptr %r2251.p, align 8, !alias.scope !3, !noalias !4
  %fsh2253 = lshr i64 %r2251, 30
  %ftr2254 = trunc i64 %fsh2253 to i1
  %cond2252 = xor i1 %ftr2254, true
  br i1 %cond2252, label %L_8001bc33c, label %L_8001bc280_ft
L_8001bc280_ft:
  ; @pc 0x8001bc280 word 0x08dffd88
  %r2255.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2255 = load i64, ptr %r2255.p, align 8, !alias.scope !3, !noalias !4
  %atp2256 = inttoptr i64 %r2255 to ptr
  %lda2257 = load atomic i8, ptr %atp2256 acquire, align 1, !alias.scope !4, !noalias !3
  %c2258 = zext i8 %lda2257 to i64
  %wp2259 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c2258, ptr %wp2259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc284 word 0x360068e8
  %r2260.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2260 = load i64, ptr %r2260.p, align 8, !alias.scope !3, !noalias !4
  %t2261 = and i64 %r2260, 1
  %cmp2262 = icmp eq i64 %t2261, 0
  br i1 %cmp2262, label %L_8001bcfa0, label %L_8001bc288
L_8001bc298_ft:
  ; @pc 0x8001bc298 word 0xd001bc80
  %wp2279 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2279, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc29c word 0xaa0303f9
  %r2280.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2280 = load i64, ptr %r2280.p, align 8, !alias.scope !3, !noalias !4
  %t2281 = or i64 0, %r2280
  %wp2282 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2281, ptr %wp2282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2a0 word 0xf9430c00
  %r2283.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2283 = load i64, ptr %r2283.p, align 8, !alias.scope !3, !noalias !4
  %t2284 = add i64 %r2283, 1560
  %gmp2285 = inttoptr i64 %t2284 to ptr
  %gml2286 = load i64, ptr %gmp2285, align 1, !alias.scope !4, !noalias !3
  %wp2287 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2286, ptr %wp2287, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2a4 word 0xb90007e4
  %r2288.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2288 = load i64, ptr %r2288.p, align 8, !alias.scope !3, !noalias !4
  %t2289 = add i64 %r2288, 4
  %r2290.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2290 = load i64, ptr %r2290.p, align 8, !alias.scope !3, !noalias !4
  %c2291 = trunc i64 %r2290 to i32
  %gmp2292 = inttoptr i64 %t2289 to ptr
  store i32 %c2291, ptr %gmp2292, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc2a8 word 0x2a0503f7
  %r2293.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2293 = load i64, ptr %r2293.p, align 8, !alias.scope !3, !noalias !4
  %c2294 = trunc i64 %r2293 to i32
  %t2295 = or i32 0, %c2294
  %c2296 = zext i32 %t2295 to i64
  %wp2297 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2296, ptr %wp2297, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2ac word 0x94a79dbd
  %wp2298 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557680, ptr %wp2298, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc2b0 word 0x9001bded
  %wp2299 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2299, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2b4 word 0x9001bdec
  %wp2300 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2b8 word 0xf941b5ad
  %r2301.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2301 = load i64, ptr %r2301.p, align 8, !alias.scope !3, !noalias !4
  %t2302 = add i64 %r2301, 872
  %gmp2303 = inttoptr i64 %t2302 to ptr
  %gml2304 = load i64, ptr %gmp2303, align 1, !alias.scope !4, !noalias !3
  %wp2305 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2304, ptr %wp2305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2bc word 0xd001bc8b
  %wp2306 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2306, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2c0 word 0xd001bc89
  %wp2307 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2307, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2c4 word 0xf941bd8c
  %r2308.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2308 = load i64, ptr %r2308.p, align 8, !alias.scope !3, !noalias !4
  %t2309 = add i64 %r2308, 888
  %gmp2310 = inttoptr i64 %t2309 to ptr
  %gml2311 = load i64, ptr %gmp2310, align 1, !alias.scope !4, !noalias !3
  %wp2312 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2311, ptr %wp2312, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2c8 word 0xf943016b
  %r2313.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2313 = load i64, ptr %r2313.p, align 8, !alias.scope !3, !noalias !4
  %t2314 = add i64 %r2313, 1536
  %gmp2315 = inttoptr i64 %t2314 to ptr
  %gml2316 = load i64, ptr %gmp2315, align 1, !alias.scope !4, !noalias !3
  %wp2317 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2316, ptr %wp2317, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2cc word 0x2a1703e5
  %r2318.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2318 = load i64, ptr %r2318.p, align 8, !alias.scope !3, !noalias !4
  %c2319 = trunc i64 %r2318 to i32
  %t2320 = or i32 0, %c2319
  %c2321 = zext i32 %t2320 to i64
  %wp2322 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2321, ptr %wp2322, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2d0 word 0xaa1903e3
  %r2323.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2323 = load i64, ptr %r2323.p, align 8, !alias.scope !3, !noalias !4
  %t2324 = or i64 0, %r2323
  %wp2325 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2324, ptr %wp2325, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2d4 word 0xf94007ea
  %r2326.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2326 = load i64, ptr %r2326.p, align 8, !alias.scope !3, !noalias !4
  %t2327 = add i64 %r2326, 8
  %gmp2328 = inttoptr i64 %t2327 to ptr
  %gml2329 = load i64, ptr %gmp2328, align 1, !alias.scope !4, !noalias !3
  %wp2330 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2329, ptr %wp2330, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2d8 word 0xf9430d29
  %r2331.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2331 = load i64, ptr %r2331.p, align 8, !alias.scope !3, !noalias !4
  %t2332 = add i64 %r2331, 1560
  %gmp2333 = inttoptr i64 %t2332 to ptr
  %gml2334 = load i64, ptr %gmp2333, align 1, !alias.scope !4, !noalias !3
  %wp2335 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2334, ptr %wp2335, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2dc word 0xb94007e4
  %r2336.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2336 = load i64, ptr %r2336.p, align 8, !alias.scope !3, !noalias !4
  %t2337 = add i64 %r2336, 4
  %gmp2338 = inttoptr i64 %t2337 to ptr
  %gml2339 = load i32, ptr %gmp2338, align 1, !alias.scope !4, !noalias !3
  %c2340 = zext i32 %gml2339 to i64
  %wp2341 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2340, ptr %wp2341, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2e0 word 0x34000600
  %r2342.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2342 = load i64, ptr %r2342.p, align 8, !alias.scope !3, !noalias !4
  %c2343 = trunc i64 %r2342 to i32
  %cmp2344 = icmp eq i32 %c2343, 0
  br i1 %cmp2344, label %L_8001bc3a0, label %L_8001bc2e4_ft
L_8001bc2e4_ft:
  ; @pc 0x8001bc2e4 word 0xf001bc68
  %wp2345 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp2345, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2e8 word 0xd001bc89
  %wp2346 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2346, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2ec word 0xf9440508
  %r2347.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2347 = load i64, ptr %r2347.p, align 8, !alias.scope !3, !noalias !4
  %t2348 = add i64 %r2347, 2056
  %gmp2349 = inttoptr i64 %t2348 to ptr
  %gml2350 = load i64, ptr %gmp2349, align 1, !alias.scope !4, !noalias !3
  %wp2351 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2350, ptr %wp2351, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2f0 word 0xf9430929
  %r2352.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2352 = load i64, ptr %r2352.p, align 8, !alias.scope !3, !noalias !4
  %t2353 = add i64 %r2352, 1552
  %gmp2354 = inttoptr i64 %t2353 to ptr
  %gml2355 = load i64, ptr %gmp2354, align 1, !alias.scope !4, !noalias !3
  %wp2356 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2355, ptr %wp2356, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2f4 word 0xd001bc80
  %wp2357 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2f8 word 0x91004108
  %r2358.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2358 = load i64, ptr %r2358.p, align 8, !alias.scope !3, !noalias !4
  %t2359 = add i64 %r2358, 16
  %wp2360 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2359, ptr %wp2360, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc2fc word 0xf9000128
  %r2361.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2361 = load i64, ptr %r2361.p, align 8, !alias.scope !3, !noalias !4
  %r2362.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2362 = load i64, ptr %r2362.p, align 8, !alias.scope !3, !noalias !4
  %gmp2363 = inttoptr i64 %r2361 to ptr
  store i64 %r2362, ptr %gmp2363, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc300 word 0xf9430c00
  %r2364.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2364 = load i64, ptr %r2364.p, align 8, !alias.scope !3, !noalias !4
  %t2365 = add i64 %r2364, 1560
  %gmp2366 = inttoptr i64 %t2365 to ptr
  %gml2367 = load i64, ptr %gmp2366, align 1, !alias.scope !4, !noalias !3
  %wp2368 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2367, ptr %wp2368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc304 word 0x94a79dab
  %wp2369 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557768, ptr %wp2369, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc308 word 0x9001bded
  %wp2370 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp2370, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc30c word 0x9001bdec
  %wp2371 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp2371, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc310 word 0xf941b5ad
  %r2372.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2372 = load i64, ptr %r2372.p, align 8, !alias.scope !3, !noalias !4
  %t2373 = add i64 %r2372, 872
  %gmp2374 = inttoptr i64 %t2373 to ptr
  %gml2375 = load i64, ptr %gmp2374, align 1, !alias.scope !4, !noalias !3
  %wp2376 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2375, ptr %wp2376, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc314 word 0xd001bc8b
  %wp2377 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp2377, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc318 word 0xd001bc89
  %wp2378 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2378, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc31c word 0xf941bd8c
  %r2379.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2379 = load i64, ptr %r2379.p, align 8, !alias.scope !3, !noalias !4
  %t2380 = add i64 %r2379, 888
  %gmp2381 = inttoptr i64 %t2380 to ptr
  %gml2382 = load i64, ptr %gmp2381, align 1, !alias.scope !4, !noalias !3
  %wp2383 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml2382, ptr %wp2383, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc320 word 0xf943016b
  %r2384.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2384 = load i64, ptr %r2384.p, align 8, !alias.scope !3, !noalias !4
  %t2385 = add i64 %r2384, 1536
  %gmp2386 = inttoptr i64 %t2385 to ptr
  %gml2387 = load i64, ptr %gmp2386, align 1, !alias.scope !4, !noalias !3
  %wp2388 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml2387, ptr %wp2388, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc324 word 0x2a1703e5
  %r2389.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2389 = load i64, ptr %r2389.p, align 8, !alias.scope !3, !noalias !4
  %c2390 = trunc i64 %r2389 to i32
  %t2391 = or i32 0, %c2390
  %c2392 = zext i32 %t2391 to i64
  %wp2393 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2392, ptr %wp2393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc328 word 0xaa1903e3
  %r2394.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2394 = load i64, ptr %r2394.p, align 8, !alias.scope !3, !noalias !4
  %t2395 = or i64 0, %r2394
  %wp2396 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2395, ptr %wp2396, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc32c word 0xf94007ea
  %r2397.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2397 = load i64, ptr %r2397.p, align 8, !alias.scope !3, !noalias !4
  %t2398 = add i64 %r2397, 8
  %gmp2399 = inttoptr i64 %t2398 to ptr
  %gml2400 = load i64, ptr %gmp2399, align 1, !alias.scope !4, !noalias !3
  %wp2401 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2400, ptr %wp2401, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc330 word 0xf9430d29
  %r2402.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2402 = load i64, ptr %r2402.p, align 8, !alias.scope !3, !noalias !4
  %t2403 = add i64 %r2402, 1560
  %gmp2404 = inttoptr i64 %t2403 to ptr
  %gml2405 = load i64, ptr %gmp2404, align 1, !alias.scope !4, !noalias !3
  %wp2406 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2405, ptr %wp2406, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc334 word 0xb94007e4
  %r2407.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2407 = load i64, ptr %r2407.p, align 8, !alias.scope !3, !noalias !4
  %t2408 = add i64 %r2407, 4
  %gmp2409 = inttoptr i64 %t2408 to ptr
  %gml2410 = load i32, ptr %gmp2409, align 1, !alias.scope !4, !noalias !3
  %c2411 = zext i32 %gml2410 to i64
  %wp2412 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2411, ptr %wp2412, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc338 word 0x1400001a
  br label %L_8001bc3a0
L_8001bc3b4_ft:
  ; @pc 0x8001bc3b4 word 0xf9400148
  %r2516.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2516 = load i64, ptr %r2516.p, align 8, !alias.scope !3, !noalias !4
  %gmp2517 = inttoptr i64 %r2516 to ptr
  %gml2518 = load i64, ptr %gmp2517, align 1, !alias.scope !4, !noalias !3
  %wp2519 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2518, ptr %wp2519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3b8 word 0xf9400108
  %r2520.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2520 = load i64, ptr %r2520.p, align 8, !alias.scope !3, !noalias !4
  %gmp2521 = inttoptr i64 %r2520 to ptr
  %gml2522 = load i64, ptr %gmp2521, align 1, !alias.scope !4, !noalias !3
  %wp2523 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2522, ptr %wp2523, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3bc word 0xeb0d011f
  %r2524.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2524 = load i64, ptr %r2524.p, align 8, !alias.scope !3, !noalias !4
  %r2525.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2525 = load i64, ptr %r2525.p, align 8, !alias.scope !3, !noalias !4
  %t2526 = sub i64 %r2524, %r2525
  %fn2527 = icmp slt i64 %t2526, 0
  %fz2528 = icmp eq i64 %t2526, 0
  %fc2529 = icmp uge i64 %r2524, %r2525
  %fx12530 = xor i64 %r2524, %r2525
  %fx22531 = xor i64 %r2524, %t2526
  %fva2532 = and i64 %fx12530, %fx22531
  %fv2533 = icmp slt i64 %fva2532, 0
  %nz2534 = zext i1 %fn2527 to i64
  %zz2535 = zext i1 %fz2528 to i64
  %cz2536 = zext i1 %fc2529 to i64
  %vz2537 = zext i1 %fv2533 to i64
  %ns2538 = shl i64 %nz2534, 31
  %zs2539 = shl i64 %zz2535, 30
  %cs2540 = shl i64 %cz2536, 29
  %vs2541 = shl i64 %vz2537, 28
  %nzor2542 = or i64 %ns2538, %zs2539
  %cvor2543 = or i64 %cs2540, %vs2541
  %nzcv2544 = or i64 %nzor2542, %cvor2543
  %wp2545 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv2544, ptr %wp2545, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3c0 word 0x54000260
  %r2546.p = getelementptr inbounds i8, ptr %c, i64 272
  %r2546 = load i64, ptr %r2546.p, align 8, !alias.scope !3, !noalias !4
  %fsh2548 = lshr i64 %r2546, 30
  %cond2547 = trunc i64 %fsh2548 to i1
  br i1 %cond2547, label %L_8001bc40c, label %L_8001bc3c4_ft
L_8001bc3c4_ft:
  ; @pc 0x8001bc3c4 word 0xf001bd01
  %wp2549 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 34419896320, ptr %wp2549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3c8 word 0xaa0a03e0
  %r2550.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2550 = load i64, ptr %r2550.p, align 8, !alias.scope !3, !noalias !4
  %t2551 = or i64 0, %r2550
  %wp2552 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2551, ptr %wp2552, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3cc word 0xf9454821
  %r2553.p = getelementptr inbounds i8, ptr %c, i64 8
  %r2553 = load i64, ptr %r2553.p, align 8, !alias.scope !3, !noalias !4
  %t2554 = add i64 %r2553, 2704
  %gmp2555 = inttoptr i64 %t2554 to ptr
  %gml2556 = load i64, ptr %gmp2555, align 1, !alias.scope !4, !noalias !3
  %wp2557 = getelementptr inbounds i8, ptr %c, i64 8
  store i64 %gml2556, ptr %wp2557, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3d0 word 0xaa1303f7
  %r2558.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2558 = load i64, ptr %r2558.p, align 8, !alias.scope !3, !noalias !4
  %t2559 = or i64 0, %r2558
  %wp2560 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %t2559, ptr %wp2560, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3d4 word 0xaa1603f3
  %r2561.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2561 = load i64, ptr %r2561.p, align 8, !alias.scope !3, !noalias !4
  %t2562 = or i64 0, %r2561
  %wp2563 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2562, ptr %wp2563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3d8 word 0x2a0403f6
  %r2564.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2564 = load i64, ptr %r2564.p, align 8, !alias.scope !3, !noalias !4
  %c2565 = trunc i64 %r2564 to i32
  %t2566 = or i32 0, %c2565
  %c2567 = zext i32 %t2566 to i64
  %wp2568 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %c2567, ptr %wp2568, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3dc word 0xaa0303f9
  %r2569.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2569 = load i64, ptr %r2569.p, align 8, !alias.scope !3, !noalias !4
  %t2570 = or i64 0, %r2569
  %wp2571 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2570, ptr %wp2571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3e0 word 0x2a0503fb
  %r2572.p = getelementptr inbounds i8, ptr %c, i64 40
  %r2572 = load i64, ptr %r2572.p, align 8, !alias.scope !3, !noalias !4
  %c2573 = trunc i64 %r2572 to i32
  %t2574 = or i32 0, %c2573
  %c2575 = zext i32 %t2574 to i64
  %wp2576 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2575, ptr %wp2576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3e4 word 0xd63f0100
  %r2577.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2577 = load i64, ptr %r2577.p, align 8, !alias.scope !3, !noalias !4
  %fp2578 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r2577, ptr %fp2578, align 8, !alias.scope !3, !noalias !4
  %wp2579 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361557992, ptr %wp2579, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
  ; @pc 0x8001bc3e8 word 0x2a1b03e5
  %r2580.p = getelementptr inbounds i8, ptr %c, i64 216
  %r2580 = load i64, ptr %r2580.p, align 8, !alias.scope !3, !noalias !4
  %c2581 = trunc i64 %r2580 to i32
  %t2582 = or i32 0, %c2581
  %c2583 = zext i32 %t2582 to i64
  %wp2584 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2583, ptr %wp2584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3ec word 0xb94017fb
  %r2585.p = getelementptr inbounds i8, ptr %c, i64 256
  %r2585 = load i64, ptr %r2585.p, align 8, !alias.scope !3, !noalias !4
  %t2586 = add i64 %r2585, 20
  %gmp2587 = inttoptr i64 %t2586 to ptr
  %gml2588 = load i32, ptr %gmp2587, align 1, !alias.scope !4, !noalias !3
  %c2589 = zext i32 %gml2588 to i64
  %wp2590 = getelementptr inbounds i8, ptr %c, i64 216
  store i64 %c2589, ptr %wp2590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3f0 word 0xaa1903e3
  %r2591.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2591 = load i64, ptr %r2591.p, align 8, !alias.scope !3, !noalias !4
  %t2592 = or i64 0, %r2591
  %wp2593 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2592, ptr %wp2593, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3f4 word 0x2a1603e4
  %r2594.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2594 = load i64, ptr %r2594.p, align 8, !alias.scope !3, !noalias !4
  %c2595 = trunc i64 %r2594 to i32
  %t2596 = or i32 0, %c2595
  %c2597 = zext i32 %t2596 to i64
  %wp2598 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2597, ptr %wp2598, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3f8 word 0xaa1303f6
  %r2599.p = getelementptr inbounds i8, ptr %c, i64 152
  %r2599 = load i64, ptr %r2599.p, align 8, !alias.scope !3, !noalias !4
  %t2600 = or i64 0, %r2599
  %wp2601 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 %t2600, ptr %wp2601, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc3fc word 0xaa1703f3
  %r2602.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2602 = load i64, ptr %r2602.p, align 8, !alias.scope !3, !noalias !4
  %t2603 = or i64 0, %r2602
  %wp2604 = getelementptr inbounds i8, ptr %c, i64 152
  store i64 %t2603, ptr %wp2604, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc400 word 0xb5ffc980
  %r2605.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2605 = load i64, ptr %r2605.p, align 8, !alias.scope !3, !noalias !4
  %cmp2606 = icmp ne i64 %r2605, 0
  br i1 %cmp2606, label %L_8001bbd30, label %L_8001bc404
L_8001bc424_ft:
  ; @pc 0x8001bc424 word 0xd001bc80
  %wp2636 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc428 word 0x2a0403f7
  %r2637.p = getelementptr inbounds i8, ptr %c, i64 32
  %r2637 = load i64, ptr %r2637.p, align 8, !alias.scope !3, !noalias !4
  %c2638 = trunc i64 %r2637 to i32
  %t2639 = or i32 0, %c2638
  %c2640 = zext i32 %t2639 to i64
  %wp2641 = getelementptr inbounds i8, ptr %c, i64 184
  store i64 %c2640, ptr %wp2641, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc42c word 0xf9430c00
  %r2642.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2642 = load i64, ptr %r2642.p, align 8, !alias.scope !3, !noalias !4
  %t2643 = add i64 %r2642, 1560
  %gmp2644 = inttoptr i64 %t2643 to ptr
  %gml2645 = load i64, ptr %gmp2644, align 1, !alias.scope !4, !noalias !3
  %wp2646 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2645, ptr %wp2646, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc430 word 0xaa0303f9
  %r2647.p = getelementptr inbounds i8, ptr %c, i64 24
  %r2647 = load i64, ptr %r2647.p, align 8, !alias.scope !3, !noalias !4
  %t2648 = or i64 0, %r2647
  %wp2649 = getelementptr inbounds i8, ptr %c, i64 200
  store i64 %t2648, ptr %wp2649, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc434 word 0x94a79d5b
  %wp2650 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558072, ptr %wp2650, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39a0(ptr %c)
  ; @pc 0x8001bc438 word 0x52b84005
  %c2651 = zext i32 -1040187392 to i64
  %wp2652 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2651, ptr %wp2652, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc43c word 0xaa1903e3
  %r2653.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2653 = load i64, ptr %r2653.p, align 8, !alias.scope !3, !noalias !4
  %t2654 = or i64 0, %r2653
  %wp2655 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2654, ptr %wp2655, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc440 word 0x2a1703e4
  %r2656.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2656 = load i64, ptr %r2656.p, align 8, !alias.scope !3, !noalias !4
  %c2657 = trunc i64 %r2656 to i32
  %t2658 = or i32 0, %c2657
  %c2659 = zext i32 %t2658 to i64
  %wp2660 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2659, ptr %wp2660, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc444 word 0x34fffe00
  %r2661.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2661 = load i64, ptr %r2661.p, align 8, !alias.scope !3, !noalias !4
  %c2662 = trunc i64 %r2661 to i32
  %cmp2663 = icmp eq i32 %c2662, 0
  br i1 %cmp2663, label %L_8001bc404, label %L_8001bc448_ft
L_8001bc448_ft:
  ; @pc 0x8001bc448 word 0xf001bc68
  %wp2664 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp2664, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc44c word 0xd001bc89
  %wp2665 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp2665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc450 word 0xf9440508
  %r2666.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2666 = load i64, ptr %r2666.p, align 8, !alias.scope !3, !noalias !4
  %t2667 = add i64 %r2666, 2056
  %gmp2668 = inttoptr i64 %t2667 to ptr
  %gml2669 = load i64, ptr %gmp2668, align 1, !alias.scope !4, !noalias !3
  %wp2670 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2669, ptr %wp2670, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc454 word 0xf9430929
  %r2671.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2671 = load i64, ptr %r2671.p, align 8, !alias.scope !3, !noalias !4
  %t2672 = add i64 %r2671, 1552
  %gmp2673 = inttoptr i64 %t2672 to ptr
  %gml2674 = load i64, ptr %gmp2673, align 1, !alias.scope !4, !noalias !3
  %wp2675 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2674, ptr %wp2675, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc458 word 0xd001bc80
  %wp2676 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp2676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc45c word 0x91004108
  %r2677.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2677 = load i64, ptr %r2677.p, align 8, !alias.scope !3, !noalias !4
  %t2678 = add i64 %r2677, 16
  %wp2679 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t2678, ptr %wp2679, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc460 word 0xf9000128
  %r2680.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2680 = load i64, ptr %r2680.p, align 8, !alias.scope !3, !noalias !4
  %r2681.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2681 = load i64, ptr %r2681.p, align 8, !alias.scope !3, !noalias !4
  %gmp2682 = inttoptr i64 %r2680 to ptr
  store i64 %r2681, ptr %gmp2682, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc464 word 0xf9430c00
  %r2683.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2683 = load i64, ptr %r2683.p, align 8, !alias.scope !3, !noalias !4
  %t2684 = add i64 %r2683, 1560
  %gmp2685 = inttoptr i64 %t2684 to ptr
  %gml2686 = load i64, ptr %gmp2685, align 1, !alias.scope !4, !noalias !3
  %wp2687 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml2686, ptr %wp2687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc468 word 0x94a79d52
  %wp2688 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558124, ptr %wp2688, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc46c word 0x52b84005
  %c2689 = zext i32 -1040187392 to i64
  %wp2690 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c2689, ptr %wp2690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc470 word 0xaa1903e3
  %r2691.p = getelementptr inbounds i8, ptr %c, i64 200
  %r2691 = load i64, ptr %r2691.p, align 8, !alias.scope !3, !noalias !4
  %t2692 = or i64 0, %r2691
  %wp2693 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t2692, ptr %wp2693, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc474 word 0x2a1703e4
  %r2694.p = getelementptr inbounds i8, ptr %c, i64 184
  %r2694 = load i64, ptr %r2694.p, align 8, !alias.scope !3, !noalias !4
  %c2695 = trunc i64 %r2694 to i32
  %t2696 = or i32 0, %c2695
  %c2697 = zext i32 %t2696 to i64
  %wp2698 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c2697, ptr %wp2698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc478 word 0x17ffffe3
  br label %L_8001bc404
L_8001bc4e0_ft:
  ; @pc 0x8001bc4e0 word 0x17fffe14
  br label %L_8001bbd30
L_8001bc500_ft:
  ; @pc 0x8001bc500 word 0xf9400009
  %r2842.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2842 = load i64, ptr %r2842.p, align 8, !alias.scope !3, !noalias !4
  %gmp2843 = inttoptr i64 %r2842 to ptr
  %gml2844 = load i64, ptr %gmp2843, align 1, !alias.scope !4, !noalias !3
  %wp2845 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml2844, ptr %wp2845, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc504 word 0x5100050a
  %r2846.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2846 = load i64, ptr %r2846.p, align 8, !alias.scope !3, !noalias !4
  %c2847 = trunc i64 %r2846 to i32
  %t2848 = sub i32 %c2847, 1
  %c2849 = zext i32 %t2848 to i64
  %wp2850 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c2849, ptr %wp2850, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc508 word 0xb900100a
  %r2851.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2851 = load i64, ptr %r2851.p, align 8, !alias.scope !3, !noalias !4
  %t2852 = add i64 %r2851, 16
  %r2853.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2853 = load i64, ptr %r2853.p, align 8, !alias.scope !3, !noalias !4
  %c2854 = trunc i64 %r2853 to i32
  %gmp2855 = inttoptr i64 %t2852 to ptr
  store i32 %c2854, ptr %gmp2855, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc50c word 0x8b080920
  %r2856.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2856 = load i64, ptr %r2856.p, align 8, !alias.scope !3, !noalias !4
  %r2857.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2857 = load i64, ptr %r2857.p, align 8, !alias.scope !3, !noalias !4
  %t2858 = shl i64 %r2857, 2
  %t2859 = add i64 %r2856, %t2858
  %wp2860 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t2859, ptr %wp2860, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc510 word 0x17fffec6
  br label %L_8001bc028
L_8001bc550_ft:
  ; @pc 0x8001bc550 word 0xf9400408
  %r2916.p = getelementptr inbounds i8, ptr %c, i64 0
  %r2916 = load i64, ptr %r2916.p, align 8, !alias.scope !3, !noalias !4
  %t2917 = add i64 %r2916, 8
  %gmp2918 = inttoptr i64 %t2917 to ptr
  %gml2919 = load i64, ptr %gmp2918, align 1, !alias.scope !4, !noalias !3
  %wp2920 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml2919, ptr %wp2920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc554 word 0x5280002b
  %c2921 = zext i32 1 to i64
  %wp2922 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2921, ptr %wp2922, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc558 word 0x72a0080b
  %r2923.p = getelementptr inbounds i8, ptr %c, i64 88
  %r2923 = load i64, ptr %r2923.p, align 8, !alias.scope !3, !noalias !4
  %t2924 = and i64 %r2923, -4294901761
  %t2925 = or i64 %t2924, 4194304
  %c2926 = trunc i64 %t2925 to i32
  %c2927 = zext i32 %c2926 to i64
  %wp2928 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %c2927, ptr %wp2928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc55c word 0xf94002ca
  %r2929.p = getelementptr inbounds i8, ptr %c, i64 176
  %r2929 = load i64, ptr %r2929.p, align 8, !alias.scope !3, !noalias !4
  %gmp2930 = inttoptr i64 %r2929 to ptr
  %gml2931 = load i64, ptr %gmp2930, align 1, !alias.scope !4, !noalias !3
  %wp2932 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml2931, ptr %wp2932, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc560 word 0x2a1403f2
  %r2933.p = getelementptr inbounds i8, ptr %c, i64 160
  %r2933 = load i64, ptr %r2933.p, align 8, !alias.scope !3, !noalias !4
  %c2934 = trunc i64 %r2933 to i32
  %t2935 = or i32 0, %c2934
  %c2936 = zext i32 %t2935 to i64
  %wp2937 = getelementptr inbounds i8, ptr %c, i64 144
  store i64 %c2936, ptr %wp2937, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc564 word 0x8b090d09
  %r2938.p = getelementptr inbounds i8, ptr %c, i64 64
  %r2938 = load i64, ptr %r2938.p, align 8, !alias.scope !3, !noalias !4
  %r2939.p = getelementptr inbounds i8, ptr %c, i64 72
  %r2939 = load i64, ptr %r2939.p, align 8, !alias.scope !3, !noalias !4
  %t2940 = shl i64 %r2939, 3
  %t2941 = add i64 %r2938, %t2940
  %wp2942 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t2941, ptr %wp2942, align 8, !alias.scope !3, !noalias !4
  br label %L_8001bc568
L_8001bc578_ft:
  ; @pc 0x8001bc578 word 0xb940318d
  %r2979.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2979 = load i64, ptr %r2979.p, align 8, !alias.scope !3, !noalias !4
  %t2980 = add i64 %r2979, 48
  %gmp2981 = inttoptr i64 %t2980 to ptr
  %gml2982 = load i32, ptr %gmp2981, align 1, !alias.scope !4, !noalias !3
  %c2983 = zext i32 %gml2982 to i64
  %wp2984 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %c2983, ptr %wp2984, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc57c word 0x37f8040d
  %r2985.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2985 = load i64, ptr %r2985.p, align 8, !alias.scope !3, !noalias !4
  %t2986 = and i64 %r2985, 2147483648
  %cmp2987 = icmp ne i64 %t2986, 0
  br i1 %cmp2987, label %L_8001bc5fc, label %L_8001bc580_ft
L_8001bc580_ft:
  ; @pc 0x8001bc580 word 0xf940018d
  %r2988.p = getelementptr inbounds i8, ptr %c, i64 96
  %r2988 = load i64, ptr %r2988.p, align 8, !alias.scope !3, !noalias !4
  %gmp2989 = inttoptr i64 %r2988 to ptr
  %gml2990 = load i64, ptr %gmp2989, align 1, !alias.scope !4, !noalias !3
  %wp2991 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml2990, ptr %wp2991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc584 word 0xeb0a01bf
  %r2992.p = getelementptr inbounds i8, ptr %c, i64 104
  %r2992 = load i64, ptr %r2992.p, align 8, !alias.scope !3, !noalias !4
  %r2993.p = getelementptr inbounds i8, ptr %c, i64 80
  %r2993 = load i64, ptr %r2993.p, align 8, !alias.scope !3, !noalias !4
  %t2994 = sub i64 %r2992, %r2993
  %fn2995 = icmp slt i64 %t2994, 0
  %fz2996 = icmp eq i64 %t2994, 0
  %fc2997 = icmp uge i64 %r2992, %r2993
  %fx12998 = xor i64 %r2992, %r2993
  %fx22999 = xor i64 %r2992, %t2994
  %fva3000 = and i64 %fx12998, %fx22999
  %fv3001 = icmp slt i64 %fva3000, 0
  %nz3002 = zext i1 %fn2995 to i64
  %zz3003 = zext i1 %fz2996 to i64
  %cz3004 = zext i1 %fc2997 to i64
  %vz3005 = zext i1 %fv3001 to i64
  %ns3006 = shl i64 %nz3002, 31
  %zs3007 = shl i64 %zz3003, 30
  %cs3008 = shl i64 %cz3004, 29
  %vs3009 = shl i64 %vz3005, 28
  %nzor3010 = or i64 %ns3006, %zs3007
  %cvor3011 = or i64 %cs3008, %vs3009
  %nzcv3012 = or i64 %nzor3010, %cvor3011
  %wp3013 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3012, ptr %wp3013, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc588 word 0x540002e1
  %r3014.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3014 = load i64, ptr %r3014.p, align 8, !alias.scope !3, !noalias !4
  %fsh3016 = lshr i64 %r3014, 30
  %ftr3017 = trunc i64 %fsh3016 to i1
  %cond3015 = xor i1 %ftr3017, true
  br i1 %cond3015, label %L_8001bc5e4, label %L_8001bc58c
L_8001bc590_ft:
  ; @pc 0x8001bc590 word 0xf9400268
  %r3021.p = getelementptr inbounds i8, ptr %c, i64 152
  %r3021 = load i64, ptr %r3021.p, align 8, !alias.scope !3, !noalias !4
  %gmp3022 = inttoptr i64 %r3021 to ptr
  %gml3023 = load i64, ptr %gmp3022, align 1, !alias.scope !4, !noalias !3
  %wp3024 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3023, ptr %wp3024, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc594 word 0x927ef508
  %r3025.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3025 = load i64, ptr %r3025.p, align 8, !alias.scope !3, !noalias !4
  %t3026 = and i64 %r3025, -4
  %wp3027 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3026, ptr %wp3027, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc598 word 0xf9000588
  %r3028.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3028 = load i64, ptr %r3028.p, align 8, !alias.scope !3, !noalias !4
  %t3029 = add i64 %r3028, 8
  %r3030.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3030 = load i64, ptr %r3030.p, align 8, !alias.scope !3, !noalias !4
  %gmp3031 = inttoptr i64 %t3029 to ptr
  store i64 %r3030, ptr %gmp3031, align 1, !alias.scope !4, !noalias !3
  br label %L_8001bc59c
L_8001bc5c4_ft:
  ; @pc 0x8001bc5c4 word 0xd001c808
  %wp3061 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34421334016, ptr %wp3061, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5c8 word 0xd001c800
  %wp3062 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34421334016, ptr %wp3062, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5cc word 0x91142000
  %r3063.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3063 = load i64, ptr %r3063.p, align 8, !alias.scope !3, !noalias !4
  %t3064 = add i64 %r3063, 1288
  %wp3065 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %t3064, ptr %wp3065, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5d0 word 0xb905011f
  %r3066.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3066 = load i64, ptr %r3066.p, align 8, !alias.scope !3, !noalias !4
  %t3067 = add i64 %r3066, 1280
  %gmp3068 = inttoptr i64 %t3067 to ptr
  store i32 0, ptr %gmp3068, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc5d4 word 0x94a79cf7
  %wp3069 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558488, ptr %wp3069, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc5d8 word 0xaa1c03e3
  %r3070.p = getelementptr inbounds i8, ptr %c, i64 224
  %r3070 = load i64, ptr %r3070.p, align 8, !alias.scope !3, !noalias !4
  %t3071 = or i64 0, %r3070
  %wp3072 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3071, ptr %wp3072, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5dc word 0x2a1b03e4
  %r3073.p = getelementptr inbounds i8, ptr %c, i64 216
  %r3073 = load i64, ptr %r3073.p, align 8, !alias.scope !3, !noalias !4
  %c3074 = trunc i64 %r3073 to i32
  %t3075 = or i32 0, %c3074
  %c3076 = zext i32 %t3075 to i64
  %wp3077 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3076, ptr %wp3077, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc5e0 word 0x17fffe46
  br label %L_8001bbef8
L_8001bc608_ft:
  ; @pc 0x8001bc608 word 0x17fffdde
  br label %L_8001bbd80
L_8001bc638_ft:
  ; @pc 0x8001bc638 word 0x12003f09
  %r3231.p = getelementptr inbounds i8, ptr %c, i64 192
  %r3231 = load i64, ptr %r3231.p, align 8, !alias.scope !3, !noalias !4
  %c3232 = trunc i64 %r3231 to i32
  %t3233 = and i32 %c3232, 65535
  %c3234 = zext i32 %t3233 to i64
  %wp3235 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3234, ptr %wp3235, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc63c word 0x5280038a
  %c3236 = zext i32 28 to i64
  %wp3237 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c3236, ptr %wp3237, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc640 word 0x9baa2128
  %r3238.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3238 = load i64, ptr %r3238.p, align 8, !alias.scope !3, !noalias !4
  %c3239 = trunc i64 %r3238 to i32
  %c3240 = zext i32 %c3239 to i64
  %r3241.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3241 = load i64, ptr %r3241.p, align 8, !alias.scope !3, !noalias !4
  %c3242 = trunc i64 %r3241 to i32
  %c3243 = zext i32 %c3242 to i64
  %t3244 = mul i64 %c3240, %c3243
  %r3245.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3245 = load i64, ptr %r3245.p, align 8, !alias.scope !3, !noalias !4
  %t3246 = add i64 %r3245, %t3244
  %wp3247 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3246, ptr %wp3247, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc644 word 0x79403d08
  %r3248.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3248 = load i64, ptr %r3248.p, align 8, !alias.scope !3, !noalias !4
  %t3249 = add i64 %r3248, 30
  %gmp3250 = inttoptr i64 %t3249 to ptr
  %gml3251 = load i16, ptr %gmp3250, align 1, !alias.scope !4, !noalias !3
  %c3252 = zext i16 %gml3251 to i64
  %wp3253 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3252, ptr %wp3253, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc648 word 0x51000909
  %r3254.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3254 = load i64, ptr %r3254.p, align 8, !alias.scope !3, !noalias !4
  %c3255 = trunc i64 %r3254 to i32
  %t3256 = sub i32 %c3255, 2
  %c3257 = zext i32 %t3256 to i64
  %wp3258 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %c3257, ptr %wp3258, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc64c word 0x7100113f
  %r3259.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3259 = load i64, ptr %r3259.p, align 8, !alias.scope !3, !noalias !4
  %c3260 = trunc i64 %r3259 to i32
  %t3261 = sub i32 %c3260, 4
  %fn3262 = icmp slt i32 %t3261, 0
  %fz3263 = icmp eq i32 %t3261, 0
  %fc3264 = icmp uge i32 %c3260, 4
  %fx13265 = xor i32 %c3260, 4
  %fx23266 = xor i32 %c3260, %t3261
  %fva3267 = and i32 %fx13265, %fx23266
  %fv3268 = icmp slt i32 %fva3267, 0
  %nz3269 = zext i1 %fn3262 to i64
  %zz3270 = zext i1 %fz3263 to i64
  %cz3271 = zext i1 %fc3264 to i64
  %vz3272 = zext i1 %fv3268 to i64
  %ns3273 = shl i64 %nz3269, 31
  %zs3274 = shl i64 %zz3270, 30
  %cs3275 = shl i64 %cz3271, 29
  %vs3276 = shl i64 %vz3272, 28
  %nzor3277 = or i64 %ns3273, %zs3274
  %cvor3278 = or i64 %cs3275, %vs3276
  %nzcv3279 = or i64 %nzor3277, %cvor3278
  %wp3280 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv3279, ptr %wp3280, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc650 word 0x540006a8
  %r3281.p = getelementptr inbounds i8, ptr %c, i64 272
  %r3281 = load i64, ptr %r3281.p, align 8, !alias.scope !3, !noalias !4
  %fsh3283 = lshr i64 %r3281, 29
  %ftr3284 = trunc i64 %fsh3283 to i1
  %fsh3285 = lshr i64 %r3281, 30
  %ftr3286 = trunc i64 %fsh3285 to i1
  %fnz3287 = xor i1 %ftr3286, true
  %cond3282 = and i1 %ftr3284, %fnz3287
  br i1 %cond3282, label %L_8001bc724, label %L_8001bc654_ft
L_8001bc654_ft:
  ; @pc 0x8001bc654 word 0xf0015daa
  %wp3288 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 34407395328, ptr %wp3288, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc658 word 0x912fd14a
  %r3289.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3289 = load i64, ptr %r3289.p, align 8, !alias.scope !3, !noalias !4
  %t3290 = add i64 %r3289, 3060
  %wp3291 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %t3290, ptr %wp3291, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc65c word 0x100000ab
  %wp3292 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34361558640, ptr %wp3292, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc660 word 0x7869794c
  %r3293.p = getelementptr inbounds i8, ptr %c, i64 80
  %r3293 = load i64, ptr %r3293.p, align 8, !alias.scope !3, !noalias !4
  %r3294.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3294 = load i64, ptr %r3294.p, align 8, !alias.scope !3, !noalias !4
  %t3295 = shl i64 %r3294, 1
  %t3296 = add i64 %r3293, %t3295
  %gmp3297 = inttoptr i64 %t3296 to ptr
  %gml3298 = load i16, ptr %gmp3297, align 1, !alias.scope !4, !noalias !3
  %c3299 = zext i16 %gml3298 to i64
  %wp3300 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %c3299, ptr %wp3300, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc664 word 0x8b0c096b
  %r3301.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3301 = load i64, ptr %r3301.p, align 8, !alias.scope !3, !noalias !4
  %r3302.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3302 = load i64, ptr %r3302.p, align 8, !alias.scope !3, !noalias !4
  %t3303 = shl i64 %r3302, 2
  %t3304 = add i64 %r3301, %t3303
  %wp3305 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %t3304, ptr %wp3305, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc668 word 0x13003f48
  %r3306.p = getelementptr inbounds i8, ptr %c, i64 208
  %r3306 = load i64, ptr %r3306.p, align 8, !alias.scope !3, !noalias !4
  %c3307 = trunc i64 %r3306 to i32
  %t3308 = lshr i32 %c3307, 15
  %t3309 = and i32 %t3308, 1
  %t3310 = sub i32 0, %t3309
  %t3311 = and i32 %t3310, -65536
  %t3312 = and i32 %c3307, 65535
  %t3313 = or i32 %t3311, %t3312
  %c3314 = zext i32 %t3313 to i64
  %wp3315 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c3314, ptr %wp3315, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc66c word 0xd61f0160
  %r3316.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3316 = load i64, ptr %r3316.p, align 8, !alias.scope !3, !noalias !4
  switch i64 %r3316, label %L_8001bc66c_jt_def [
    i64 34361558640, label %L_8001bc670
    i64 34361558648, label %L_8001bc678
    i64 34361558828, label %L_8001bc72c
    i64 34361561568, label %L_8001bd1e0
    i64 34361561600, label %L_8001bd200
  ]
L_8001bc6cc_ft:
  ; @pc 0x8001bc6cc word 0xd001bc88
  %wp3402 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3402, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6d0 word 0xf001bd09
  %wp3403 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6d4 word 0xf942f908
  %r3404.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3404 = load i64, ptr %r3404.p, align 8, !alias.scope !3, !noalias !4
  %t3405 = add i64 %r3404, 1520
  %gmp3406 = inttoptr i64 %t3405 to ptr
  %gml3407 = load i64, ptr %gmp3406, align 1, !alias.scope !4, !noalias !3
  %wp3408 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3407, ptr %wp3408, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6d8 word 0xf9453129
  %r3409.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3409 = load i64, ptr %r3409.p, align 8, !alias.scope !3, !noalias !4
  %t3410 = add i64 %r3409, 2656
  %gmp3411 = inttoptr i64 %t3410 to ptr
  %gml3412 = load i64, ptr %gmp3411, align 1, !alias.scope !4, !noalias !3
  %wp3413 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3412, ptr %wp3413, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6dc word 0xf001bd00
  %wp3414 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3414, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6e0 word 0x91004108
  %r3415.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3415 = load i64, ptr %r3415.p, align 8, !alias.scope !3, !noalias !4
  %t3416 = add i64 %r3415, 16
  %wp3417 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3416, ptr %wp3417, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6e4 word 0xf9000128
  %r3418.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3418 = load i64, ptr %r3418.p, align 8, !alias.scope !3, !noalias !4
  %r3419.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3419 = load i64, ptr %r3419.p, align 8, !alias.scope !3, !noalias !4
  %gmp3420 = inttoptr i64 %r3418 to ptr
  store i64 %r3419, ptr %gmp3420, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc6e8 word 0xf9453400
  %r3421.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3421 = load i64, ptr %r3421.p, align 8, !alias.scope !3, !noalias !4
  %t3422 = add i64 %r3421, 2664
  %gmp3423 = inttoptr i64 %t3422 to ptr
  %gml3424 = load i64, ptr %gmp3423, align 1, !alias.scope !4, !noalias !3
  %wp3425 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3424, ptr %wp3425, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6ec word 0x94a79cb1
  %wp3426 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361558768, ptr %wp3426, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc6f0 word 0x9001bded
  %wp3427 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6f4 word 0x9001bdec
  %wp3428 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3428, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6f8 word 0xf941b5ad
  %r3429.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3429 = load i64, ptr %r3429.p, align 8, !alias.scope !3, !noalias !4
  %t3430 = add i64 %r3429, 872
  %gmp3431 = inttoptr i64 %t3430 to ptr
  %gml3432 = load i64, ptr %gmp3431, align 1, !alias.scope !4, !noalias !3
  %wp3433 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3432, ptr %wp3433, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc6fc word 0xd001bc8b
  %wp3434 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3434, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc700 word 0xd001bc89
  %wp3435 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc704 word 0xf941bd8c
  %r3436.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3436 = load i64, ptr %r3436.p, align 8, !alias.scope !3, !noalias !4
  %t3437 = add i64 %r3436, 888
  %gmp3438 = inttoptr i64 %t3437 to ptr
  %gml3439 = load i64, ptr %gmp3438, align 1, !alias.scope !4, !noalias !3
  %wp3440 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3439, ptr %wp3440, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc708 word 0xf943016b
  %r3441.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3441 = load i64, ptr %r3441.p, align 8, !alias.scope !3, !noalias !4
  %t3442 = add i64 %r3441, 1536
  %gmp3443 = inttoptr i64 %t3442 to ptr
  %gml3444 = load i64, ptr %gmp3443, align 1, !alias.scope !4, !noalias !3
  %wp3445 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3444, ptr %wp3445, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc70c word 0x2a1703e5
  %r3446.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3446 = load i64, ptr %r3446.p, align 8, !alias.scope !3, !noalias !4
  %c3447 = trunc i64 %r3446 to i32
  %t3448 = or i32 0, %c3447
  %c3449 = zext i32 %t3448 to i64
  %wp3450 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3449, ptr %wp3450, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc710 word 0xaa1903e3
  %r3451.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3451 = load i64, ptr %r3451.p, align 8, !alias.scope !3, !noalias !4
  %t3452 = or i64 0, %r3451
  %wp3453 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3452, ptr %wp3453, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc714 word 0xf94007ea
  %r3454.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3454 = load i64, ptr %r3454.p, align 8, !alias.scope !3, !noalias !4
  %t3455 = add i64 %r3454, 8
  %gmp3456 = inttoptr i64 %t3455 to ptr
  %gml3457 = load i64, ptr %gmp3456, align 1, !alias.scope !4, !noalias !3
  %wp3458 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3457, ptr %wp3458, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc718 word 0xf9430d29
  %r3459.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3459 = load i64, ptr %r3459.p, align 8, !alias.scope !3, !noalias !4
  %t3460 = add i64 %r3459, 1560
  %gmp3461 = inttoptr i64 %t3460 to ptr
  %gml3462 = load i64, ptr %gmp3461, align 1, !alias.scope !4, !noalias !3
  %wp3463 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3462, ptr %wp3463, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc71c word 0xb94007e4
  %r3464.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3464 = load i64, ptr %r3464.p, align 8, !alias.scope !3, !noalias !4
  %t3465 = add i64 %r3464, 4
  %gmp3466 = inttoptr i64 %t3465 to ptr
  %gml3467 = load i32, ptr %gmp3466, align 1, !alias.scope !4, !noalias !3
  %c3468 = zext i32 %gml3467 to i64
  %wp3469 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3468, ptr %wp3469, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc720 word 0x17fffe73
  br label %L_8001bc0ec
L_8001bc7cc_ft:
  ; @pc 0x8001bc7cc word 0xd001bc88
  %wp3624 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3624, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7d0 word 0xf001bd09
  %wp3625 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7d4 word 0xf942f908
  %r3626.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3626 = load i64, ptr %r3626.p, align 8, !alias.scope !3, !noalias !4
  %t3627 = add i64 %r3626, 1520
  %gmp3628 = inttoptr i64 %t3627 to ptr
  %gml3629 = load i64, ptr %gmp3628, align 1, !alias.scope !4, !noalias !3
  %wp3630 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3629, ptr %wp3630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7d8 word 0xf9452929
  %r3631.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3631 = load i64, ptr %r3631.p, align 8, !alias.scope !3, !noalias !4
  %t3632 = add i64 %r3631, 2640
  %gmp3633 = inttoptr i64 %t3632 to ptr
  %gml3634 = load i64, ptr %gmp3633, align 1, !alias.scope !4, !noalias !3
  %wp3635 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3634, ptr %wp3635, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7dc word 0xf001bd00
  %wp3636 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3636, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7e0 word 0x91004108
  %r3637.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3637 = load i64, ptr %r3637.p, align 8, !alias.scope !3, !noalias !4
  %t3638 = add i64 %r3637, 16
  %wp3639 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3638, ptr %wp3639, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7e4 word 0xf9000128
  %r3640.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3640 = load i64, ptr %r3640.p, align 8, !alias.scope !3, !noalias !4
  %r3641.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3641 = load i64, ptr %r3641.p, align 8, !alias.scope !3, !noalias !4
  %gmp3642 = inttoptr i64 %r3640 to ptr
  store i64 %r3641, ptr %gmp3642, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc7e8 word 0xf9452c00
  %r3643.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3643 = load i64, ptr %r3643.p, align 8, !alias.scope !3, !noalias !4
  %t3644 = add i64 %r3643, 2648
  %gmp3645 = inttoptr i64 %t3644 to ptr
  %gml3646 = load i64, ptr %gmp3645, align 1, !alias.scope !4, !noalias !3
  %wp3647 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3646, ptr %wp3647, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7ec word 0x94a79c71
  %wp3648 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559024, ptr %wp3648, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc7f0 word 0xf94007ea
  %r3649.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3649 = load i64, ptr %r3649.p, align 8, !alias.scope !3, !noalias !4
  %t3650 = add i64 %r3649, 8
  %gmp3651 = inttoptr i64 %t3650 to ptr
  %gml3652 = load i64, ptr %gmp3651, align 1, !alias.scope !4, !noalias !3
  %wp3653 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3652, ptr %wp3653, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7f4 word 0x2a1703e5
  %r3654.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3654 = load i64, ptr %r3654.p, align 8, !alias.scope !3, !noalias !4
  %c3655 = trunc i64 %r3654 to i32
  %t3656 = or i32 0, %c3655
  %c3657 = zext i32 %t3656 to i64
  %wp3658 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3657, ptr %wp3658, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7f8 word 0xaa1903e3
  %r3659.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3659 = load i64, ptr %r3659.p, align 8, !alias.scope !3, !noalias !4
  %t3660 = or i64 0, %r3659
  %wp3661 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3660, ptr %wp3661, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc7fc word 0xb94007e4
  %r3662.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3662 = load i64, ptr %r3662.p, align 8, !alias.scope !3, !noalias !4
  %t3663 = add i64 %r3662, 4
  %gmp3664 = inttoptr i64 %t3663 to ptr
  %gml3665 = load i32, ptr %gmp3664, align 1, !alias.scope !4, !noalias !3
  %c3666 = zext i32 %gml3665 to i64
  %wp3667 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3666, ptr %wp3667, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc800 word 0x17fffd76
  br label %L_8001bbdd8
L_8001bc870_ft:
  ; @pc 0x8001bc870 word 0xd001bc88
  %wp3761 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3761, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc874 word 0xf001bd09
  %wp3762 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3762, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc878 word 0xf942f908
  %r3763.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3763 = load i64, ptr %r3763.p, align 8, !alias.scope !3, !noalias !4
  %t3764 = add i64 %r3763, 1520
  %gmp3765 = inttoptr i64 %t3764 to ptr
  %gml3766 = load i64, ptr %gmp3765, align 1, !alias.scope !4, !noalias !3
  %wp3767 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3766, ptr %wp3767, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc87c word 0xf9453929
  %r3768.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3768 = load i64, ptr %r3768.p, align 8, !alias.scope !3, !noalias !4
  %t3769 = add i64 %r3768, 2672
  %gmp3770 = inttoptr i64 %t3769 to ptr
  %gml3771 = load i64, ptr %gmp3770, align 1, !alias.scope !4, !noalias !3
  %wp3772 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3771, ptr %wp3772, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc880 word 0xf001bd00
  %wp3773 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3773, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc884 word 0x91004108
  %r3774.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3774 = load i64, ptr %r3774.p, align 8, !alias.scope !3, !noalias !4
  %t3775 = add i64 %r3774, 16
  %wp3776 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3775, ptr %wp3776, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc888 word 0xf9000128
  %r3777.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3777 = load i64, ptr %r3777.p, align 8, !alias.scope !3, !noalias !4
  %r3778.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3778 = load i64, ptr %r3778.p, align 8, !alias.scope !3, !noalias !4
  %gmp3779 = inttoptr i64 %r3777 to ptr
  store i64 %r3778, ptr %gmp3779, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc88c word 0xf9453c00
  %r3780.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3780 = load i64, ptr %r3780.p, align 8, !alias.scope !3, !noalias !4
  %t3781 = add i64 %r3780, 2680
  %gmp3782 = inttoptr i64 %t3781 to ptr
  %gml3783 = load i64, ptr %gmp3782, align 1, !alias.scope !4, !noalias !3
  %wp3784 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3783, ptr %wp3784, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc890 word 0x94a79c48
  %wp3785 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559188, ptr %wp3785, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc894 word 0x9001bded
  %wp3786 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3786, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc898 word 0x9001bdec
  %wp3787 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3787, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc89c word 0xf941b5ad
  %r3788.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3788 = load i64, ptr %r3788.p, align 8, !alias.scope !3, !noalias !4
  %t3789 = add i64 %r3788, 872
  %gmp3790 = inttoptr i64 %t3789 to ptr
  %gml3791 = load i64, ptr %gmp3790, align 1, !alias.scope !4, !noalias !3
  %wp3792 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3791, ptr %wp3792, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8a0 word 0xd001bc8b
  %wp3793 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3793, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8a4 word 0xd001bc89
  %wp3794 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3794, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8a8 word 0xf941bd8c
  %r3795.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3795 = load i64, ptr %r3795.p, align 8, !alias.scope !3, !noalias !4
  %t3796 = add i64 %r3795, 888
  %gmp3797 = inttoptr i64 %t3796 to ptr
  %gml3798 = load i64, ptr %gmp3797, align 1, !alias.scope !4, !noalias !3
  %wp3799 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3798, ptr %wp3799, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8ac word 0xf943016b
  %r3800.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3800 = load i64, ptr %r3800.p, align 8, !alias.scope !3, !noalias !4
  %t3801 = add i64 %r3800, 1536
  %gmp3802 = inttoptr i64 %t3801 to ptr
  %gml3803 = load i64, ptr %gmp3802, align 1, !alias.scope !4, !noalias !3
  %wp3804 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3803, ptr %wp3804, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8b0 word 0x2a1703e5
  %r3805.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3805 = load i64, ptr %r3805.p, align 8, !alias.scope !3, !noalias !4
  %c3806 = trunc i64 %r3805 to i32
  %t3807 = or i32 0, %c3806
  %c3808 = zext i32 %t3807 to i64
  %wp3809 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3808, ptr %wp3809, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8b4 word 0xaa1903e3
  %r3810.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3810 = load i64, ptr %r3810.p, align 8, !alias.scope !3, !noalias !4
  %t3811 = or i64 0, %r3810
  %wp3812 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3811, ptr %wp3812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8b8 word 0xf94007ea
  %r3813.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3813 = load i64, ptr %r3813.p, align 8, !alias.scope !3, !noalias !4
  %t3814 = add i64 %r3813, 8
  %gmp3815 = inttoptr i64 %t3814 to ptr
  %gml3816 = load i64, ptr %gmp3815, align 1, !alias.scope !4, !noalias !3
  %wp3817 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3816, ptr %wp3817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8bc word 0xf9430d29
  %r3818.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3818 = load i64, ptr %r3818.p, align 8, !alias.scope !3, !noalias !4
  %t3819 = add i64 %r3818, 1560
  %gmp3820 = inttoptr i64 %t3819 to ptr
  %gml3821 = load i64, ptr %gmp3820, align 1, !alias.scope !4, !noalias !3
  %wp3822 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3821, ptr %wp3822, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8c0 word 0xb94007e4
  %r3823.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3823 = load i64, ptr %r3823.p, align 8, !alias.scope !3, !noalias !4
  %t3824 = add i64 %r3823, 4
  %gmp3825 = inttoptr i64 %t3824 to ptr
  %gml3826 = load i32, ptr %gmp3825, align 1, !alias.scope !4, !noalias !3
  %c3827 = zext i32 %gml3826 to i64
  %wp3828 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3827, ptr %wp3828, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc8c4 word 0x17fffe19
  br label %L_8001bc128
L_8001bc914_ft:
  ; @pc 0x8001bc914 word 0xd001bc88
  %wp3895 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp3895, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc918 word 0xf001bd09
  %wp3896 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp3896, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc91c word 0xf942f908
  %r3897.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3897 = load i64, ptr %r3897.p, align 8, !alias.scope !3, !noalias !4
  %t3898 = add i64 %r3897, 1520
  %gmp3899 = inttoptr i64 %t3898 to ptr
  %gml3900 = load i64, ptr %gmp3899, align 1, !alias.scope !4, !noalias !3
  %wp3901 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml3900, ptr %wp3901, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc920 word 0xf9454129
  %r3902.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3902 = load i64, ptr %r3902.p, align 8, !alias.scope !3, !noalias !4
  %t3903 = add i64 %r3902, 2688
  %gmp3904 = inttoptr i64 %t3903 to ptr
  %gml3905 = load i64, ptr %gmp3904, align 1, !alias.scope !4, !noalias !3
  %wp3906 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3905, ptr %wp3906, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc924 word 0xf001bd00
  %wp3907 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp3907, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc928 word 0x91004108
  %r3908.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3908 = load i64, ptr %r3908.p, align 8, !alias.scope !3, !noalias !4
  %t3909 = add i64 %r3908, 16
  %wp3910 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t3909, ptr %wp3910, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc92c word 0xf9000128
  %r3911.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3911 = load i64, ptr %r3911.p, align 8, !alias.scope !3, !noalias !4
  %r3912.p = getelementptr inbounds i8, ptr %c, i64 64
  %r3912 = load i64, ptr %r3912.p, align 8, !alias.scope !3, !noalias !4
  %gmp3913 = inttoptr i64 %r3911 to ptr
  store i64 %r3912, ptr %gmp3913, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bc930 word 0xf9454400
  %r3914.p = getelementptr inbounds i8, ptr %c, i64 0
  %r3914 = load i64, ptr %r3914.p, align 8, !alias.scope !3, !noalias !4
  %t3915 = add i64 %r3914, 2696
  %gmp3916 = inttoptr i64 %t3915 to ptr
  %gml3917 = load i64, ptr %gmp3916, align 1, !alias.scope !4, !noalias !3
  %wp3918 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml3917, ptr %wp3918, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc934 word 0x94a79c1f
  %wp3919 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559352, ptr %wp3919, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bc938 word 0x9001bded
  %wp3920 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp3920, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc93c word 0x9001bdec
  %wp3921 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp3921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc940 word 0xf941b5ad
  %r3922.p = getelementptr inbounds i8, ptr %c, i64 104
  %r3922 = load i64, ptr %r3922.p, align 8, !alias.scope !3, !noalias !4
  %t3923 = add i64 %r3922, 872
  %gmp3924 = inttoptr i64 %t3923 to ptr
  %gml3925 = load i64, ptr %gmp3924, align 1, !alias.scope !4, !noalias !3
  %wp3926 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml3925, ptr %wp3926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc944 word 0xd001bc8b
  %wp3927 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp3927, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc948 word 0xd001bc89
  %wp3928 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp3928, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc94c word 0xf941bd8c
  %r3929.p = getelementptr inbounds i8, ptr %c, i64 96
  %r3929 = load i64, ptr %r3929.p, align 8, !alias.scope !3, !noalias !4
  %t3930 = add i64 %r3929, 888
  %gmp3931 = inttoptr i64 %t3930 to ptr
  %gml3932 = load i64, ptr %gmp3931, align 1, !alias.scope !4, !noalias !3
  %wp3933 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml3932, ptr %wp3933, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc950 word 0xf943016b
  %r3934.p = getelementptr inbounds i8, ptr %c, i64 88
  %r3934 = load i64, ptr %r3934.p, align 8, !alias.scope !3, !noalias !4
  %t3935 = add i64 %r3934, 1536
  %gmp3936 = inttoptr i64 %t3935 to ptr
  %gml3937 = load i64, ptr %gmp3936, align 1, !alias.scope !4, !noalias !3
  %wp3938 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml3937, ptr %wp3938, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc954 word 0x2a1703e5
  %r3939.p = getelementptr inbounds i8, ptr %c, i64 184
  %r3939 = load i64, ptr %r3939.p, align 8, !alias.scope !3, !noalias !4
  %c3940 = trunc i64 %r3939 to i32
  %t3941 = or i32 0, %c3940
  %c3942 = zext i32 %t3941 to i64
  %wp3943 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c3942, ptr %wp3943, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc958 word 0xaa1903e3
  %r3944.p = getelementptr inbounds i8, ptr %c, i64 200
  %r3944 = load i64, ptr %r3944.p, align 8, !alias.scope !3, !noalias !4
  %t3945 = or i64 0, %r3944
  %wp3946 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t3945, ptr %wp3946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc95c word 0xf94007ea
  %r3947.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3947 = load i64, ptr %r3947.p, align 8, !alias.scope !3, !noalias !4
  %t3948 = add i64 %r3947, 8
  %gmp3949 = inttoptr i64 %t3948 to ptr
  %gml3950 = load i64, ptr %gmp3949, align 1, !alias.scope !4, !noalias !3
  %wp3951 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml3950, ptr %wp3951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc960 word 0xf9430d29
  %r3952.p = getelementptr inbounds i8, ptr %c, i64 72
  %r3952 = load i64, ptr %r3952.p, align 8, !alias.scope !3, !noalias !4
  %t3953 = add i64 %r3952, 1560
  %gmp3954 = inttoptr i64 %t3953 to ptr
  %gml3955 = load i64, ptr %gmp3954, align 1, !alias.scope !4, !noalias !3
  %wp3956 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml3955, ptr %wp3956, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc964 word 0xb94007e4
  %r3957.p = getelementptr inbounds i8, ptr %c, i64 256
  %r3957 = load i64, ptr %r3957.p, align 8, !alias.scope !3, !noalias !4
  %t3958 = add i64 %r3957, 4
  %gmp3959 = inttoptr i64 %t3958 to ptr
  %gml3960 = load i32, ptr %gmp3959, align 1, !alias.scope !4, !noalias !3
  %c3961 = zext i32 %gml3960 to i64
  %wp3962 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c3961, ptr %wp3962, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bc968 word 0x17fffe41
  br label %L_8001bc26c
L_8001bca50_ft:
  ; @pc 0x8001bca50 word 0x2a1a03e4
  %r4168.p = getelementptr inbounds i8, ptr %c, i64 208
  %r4168 = load i64, ptr %r4168.p, align 8, !alias.scope !3, !noalias !4
  %c4169 = trunc i64 %r4168 to i32
  %t4170 = or i32 0, %c4169
  %c4171 = zext i32 %t4170 to i64
  %wp4172 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4171, ptr %wp4172, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca54 word 0xaa1303e9
  %r4173.p = getelementptr inbounds i8, ptr %c, i64 152
  %r4173 = load i64, ptr %r4173.p, align 8, !alias.scope !3, !noalias !4
  %t4174 = or i64 0, %r4173
  %wp4175 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %t4174, ptr %wp4175, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bca58 word 0x17fffd4e
  br label %L_8001bbf90
L_8001bcacc_ft:
  ; @pc 0x8001bcacc word 0xd001bc88
  %wp4270 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4270, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcad0 word 0x9001bde9
  %wp4271 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4271, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcad4 word 0xf942f908
  %r4272.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4272 = load i64, ptr %r4272.p, align 8, !alias.scope !3, !noalias !4
  %t4273 = add i64 %r4272, 1520
  %gmp4274 = inttoptr i64 %t4273 to ptr
  %gml4275 = load i64, ptr %gmp4274, align 1, !alias.scope !4, !noalias !3
  %wp4276 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4275, ptr %wp4276, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcad8 word 0xf941b929
  %r4277.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4277 = load i64, ptr %r4277.p, align 8, !alias.scope !3, !noalias !4
  %t4278 = add i64 %r4277, 880
  %gmp4279 = inttoptr i64 %t4278 to ptr
  %gml4280 = load i64, ptr %gmp4279, align 1, !alias.scope !4, !noalias !3
  %wp4281 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4280, ptr %wp4281, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcadc word 0x9001bde0
  %wp4282 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4282, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcae0 word 0x91004108
  %r4283.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4283 = load i64, ptr %r4283.p, align 8, !alias.scope !3, !noalias !4
  %t4284 = add i64 %r4283, 16
  %wp4285 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4284, ptr %wp4285, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcae4 word 0xf9000128
  %r4286.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4286 = load i64, ptr %r4286.p, align 8, !alias.scope !3, !noalias !4
  %r4287.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4287 = load i64, ptr %r4287.p, align 8, !alias.scope !3, !noalias !4
  %gmp4288 = inttoptr i64 %r4286 to ptr
  store i64 %r4287, ptr %gmp4288, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcae8 word 0xf941bc00
  %r4289.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4289 = load i64, ptr %r4289.p, align 8, !alias.scope !3, !noalias !4
  %t4290 = add i64 %r4289, 888
  %gmp4291 = inttoptr i64 %t4290 to ptr
  %gml4292 = load i64, ptr %gmp4291, align 1, !alias.scope !4, !noalias !3
  %wp4293 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4292, ptr %wp4293, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaec word 0x94a79bb1
  %wp4294 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559792, ptr %wp4294, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcaf0 word 0x9001bded
  %wp4295 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4295, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaf4 word 0x9001bdec
  %wp4296 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4296, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcaf8 word 0xf941b5ad
  %r4297.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4297 = load i64, ptr %r4297.p, align 8, !alias.scope !3, !noalias !4
  %t4298 = add i64 %r4297, 872
  %gmp4299 = inttoptr i64 %t4298 to ptr
  %gml4300 = load i64, ptr %gmp4299, align 1, !alias.scope !4, !noalias !3
  %wp4301 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4300, ptr %wp4301, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcafc word 0xd001bc8b
  %wp4302 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4302, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb00 word 0xd001bc89
  %wp4303 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4303, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb04 word 0xf941bd8c
  %r4304.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4304 = load i64, ptr %r4304.p, align 8, !alias.scope !3, !noalias !4
  %t4305 = add i64 %r4304, 888
  %gmp4306 = inttoptr i64 %t4305 to ptr
  %gml4307 = load i64, ptr %gmp4306, align 1, !alias.scope !4, !noalias !3
  %wp4308 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4307, ptr %wp4308, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb08 word 0xf943016b
  %r4309.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4309 = load i64, ptr %r4309.p, align 8, !alias.scope !3, !noalias !4
  %t4310 = add i64 %r4309, 1536
  %gmp4311 = inttoptr i64 %t4310 to ptr
  %gml4312 = load i64, ptr %gmp4311, align 1, !alias.scope !4, !noalias !3
  %wp4313 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4312, ptr %wp4313, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb0c word 0x2a1703e5
  %r4314.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4314 = load i64, ptr %r4314.p, align 8, !alias.scope !3, !noalias !4
  %c4315 = trunc i64 %r4314 to i32
  %t4316 = or i32 0, %c4315
  %c4317 = zext i32 %t4316 to i64
  %wp4318 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4317, ptr %wp4318, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb10 word 0xaa1903e3
  %r4319.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4319 = load i64, ptr %r4319.p, align 8, !alias.scope !3, !noalias !4
  %t4320 = or i64 0, %r4319
  %wp4321 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4320, ptr %wp4321, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb14 word 0xf94007ea
  %r4322.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4322 = load i64, ptr %r4322.p, align 8, !alias.scope !3, !noalias !4
  %t4323 = add i64 %r4322, 8
  %gmp4324 = inttoptr i64 %t4323 to ptr
  %gml4325 = load i64, ptr %gmp4324, align 1, !alias.scope !4, !noalias !3
  %wp4326 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4325, ptr %wp4326, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb18 word 0xf9430d29
  %r4327.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4327 = load i64, ptr %r4327.p, align 8, !alias.scope !3, !noalias !4
  %t4328 = add i64 %r4327, 1560
  %gmp4329 = inttoptr i64 %t4328 to ptr
  %gml4330 = load i64, ptr %gmp4329, align 1, !alias.scope !4, !noalias !3
  %wp4331 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4330, ptr %wp4331, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb1c word 0xb94007e4
  %r4332.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4332 = load i64, ptr %r4332.p, align 8, !alias.scope !3, !noalias !4
  %t4333 = add i64 %r4332, 4
  %gmp4334 = inttoptr i64 %t4333 to ptr
  %gml4335 = load i32, ptr %gmp4334, align 1, !alias.scope !4, !noalias !3
  %c4336 = zext i32 %gml4335 to i64
  %wp4337 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4336, ptr %wp4337, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb20 word 0x17fffd7a
  br label %L_8001bc108
L_8001bcb70_ft:
  ; @pc 0x8001bcb70 word 0xd001bc88
  %wp4404 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4404, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb74 word 0xd001bc89
  %wp4405 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4405, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb78 word 0xf9430508
  %r4406.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4406 = load i64, ptr %r4406.p, align 8, !alias.scope !3, !noalias !4
  %t4407 = add i64 %r4406, 1544
  %gmp4408 = inttoptr i64 %t4407 to ptr
  %gml4409 = load i64, ptr %gmp4408, align 1, !alias.scope !4, !noalias !3
  %wp4410 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4409, ptr %wp4410, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb7c word 0xf942fd29
  %r4411.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4411 = load i64, ptr %r4411.p, align 8, !alias.scope !3, !noalias !4
  %t4412 = add i64 %r4411, 1528
  %gmp4413 = inttoptr i64 %t4412 to ptr
  %gml4414 = load i64, ptr %gmp4413, align 1, !alias.scope !4, !noalias !3
  %wp4415 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4414, ptr %wp4415, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb80 word 0xd001bc80
  %wp4416 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4416, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb84 word 0x91004108
  %r4417.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4417 = load i64, ptr %r4417.p, align 8, !alias.scope !3, !noalias !4
  %t4418 = add i64 %r4417, 16
  %wp4419 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4418, ptr %wp4419, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb88 word 0xf9000128
  %r4420.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4420 = load i64, ptr %r4420.p, align 8, !alias.scope !3, !noalias !4
  %r4421.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4421 = load i64, ptr %r4421.p, align 8, !alias.scope !3, !noalias !4
  %gmp4422 = inttoptr i64 %r4420 to ptr
  store i64 %r4421, ptr %gmp4422, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcb8c word 0xf9430000
  %r4423.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4423 = load i64, ptr %r4423.p, align 8, !alias.scope !3, !noalias !4
  %t4424 = add i64 %r4423, 1536
  %gmp4425 = inttoptr i64 %t4424 to ptr
  %gml4426 = load i64, ptr %gmp4425, align 1, !alias.scope !4, !noalias !3
  %wp4427 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4426, ptr %wp4427, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb90 word 0x94a79b88
  %wp4428 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361559956, ptr %wp4428, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcb94 word 0x9001bded
  %wp4429 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4429, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb98 word 0x9001bdec
  %wp4430 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4430, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcb9c word 0xf941b5ad
  %r4431.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4431 = load i64, ptr %r4431.p, align 8, !alias.scope !3, !noalias !4
  %t4432 = add i64 %r4431, 872
  %gmp4433 = inttoptr i64 %t4432 to ptr
  %gml4434 = load i64, ptr %gmp4433, align 1, !alias.scope !4, !noalias !3
  %wp4435 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4434, ptr %wp4435, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcba0 word 0xd001bc8b
  %wp4436 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4436, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcba4 word 0xd001bc89
  %wp4437 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4437, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcba8 word 0xf941bd8c
  %r4438.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4438 = load i64, ptr %r4438.p, align 8, !alias.scope !3, !noalias !4
  %t4439 = add i64 %r4438, 888
  %gmp4440 = inttoptr i64 %t4439 to ptr
  %gml4441 = load i64, ptr %gmp4440, align 1, !alias.scope !4, !noalias !3
  %wp4442 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4441, ptr %wp4442, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbac word 0xf943016b
  %r4443.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4443 = load i64, ptr %r4443.p, align 8, !alias.scope !3, !noalias !4
  %t4444 = add i64 %r4443, 1536
  %gmp4445 = inttoptr i64 %t4444 to ptr
  %gml4446 = load i64, ptr %gmp4445, align 1, !alias.scope !4, !noalias !3
  %wp4447 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4446, ptr %wp4447, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbb0 word 0x2a1703e5
  %r4448.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4448 = load i64, ptr %r4448.p, align 8, !alias.scope !3, !noalias !4
  %c4449 = trunc i64 %r4448 to i32
  %t4450 = or i32 0, %c4449
  %c4451 = zext i32 %t4450 to i64
  %wp4452 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4451, ptr %wp4452, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbb4 word 0xaa1903e3
  %r4453.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4453 = load i64, ptr %r4453.p, align 8, !alias.scope !3, !noalias !4
  %t4454 = or i64 0, %r4453
  %wp4455 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4454, ptr %wp4455, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbb8 word 0xf94007ea
  %r4456.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4456 = load i64, ptr %r4456.p, align 8, !alias.scope !3, !noalias !4
  %t4457 = add i64 %r4456, 8
  %gmp4458 = inttoptr i64 %t4457 to ptr
  %gml4459 = load i64, ptr %gmp4458, align 1, !alias.scope !4, !noalias !3
  %wp4460 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4459, ptr %wp4460, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbbc word 0xf9430d29
  %r4461.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4461 = load i64, ptr %r4461.p, align 8, !alias.scope !3, !noalias !4
  %t4462 = add i64 %r4461, 1560
  %gmp4463 = inttoptr i64 %t4462 to ptr
  %gml4464 = load i64, ptr %gmp4463, align 1, !alias.scope !4, !noalias !3
  %wp4465 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4464, ptr %wp4465, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbc0 word 0xb94007e4
  %r4466.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4466 = load i64, ptr %r4466.p, align 8, !alias.scope !3, !noalias !4
  %t4467 = add i64 %r4466, 4
  %gmp4468 = inttoptr i64 %t4467 to ptr
  %gml4469 = load i32, ptr %gmp4468, align 1, !alias.scope !4, !noalias !3
  %c4470 = zext i32 %gml4469 to i64
  %wp4471 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4470, ptr %wp4471, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcbc4 word 0x17fffd53
  br label %L_8001bc110
L_8001bcc14_ft:
  ; @pc 0x8001bcc14 word 0xf001bc68
  %wp4538 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419814400, ptr %wp4538, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc18 word 0xd001bc89
  %wp4539 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4539, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc1c word 0xf9440508
  %r4540.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4540 = load i64, ptr %r4540.p, align 8, !alias.scope !3, !noalias !4
  %t4541 = add i64 %r4540, 2056
  %gmp4542 = inttoptr i64 %t4541 to ptr
  %gml4543 = load i64, ptr %gmp4542, align 1, !alias.scope !4, !noalias !3
  %wp4544 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4543, ptr %wp4544, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc20 word 0xf9430929
  %r4545.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4545 = load i64, ptr %r4545.p, align 8, !alias.scope !3, !noalias !4
  %t4546 = add i64 %r4545, 1552
  %gmp4547 = inttoptr i64 %t4546 to ptr
  %gml4548 = load i64, ptr %gmp4547, align 1, !alias.scope !4, !noalias !3
  %wp4549 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4548, ptr %wp4549, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc24 word 0xd001bc80
  %wp4550 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4550, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc28 word 0x91004108
  %r4551.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4551 = load i64, ptr %r4551.p, align 8, !alias.scope !3, !noalias !4
  %t4552 = add i64 %r4551, 16
  %wp4553 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4552, ptr %wp4553, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc2c word 0xf9000128
  %r4554.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4554 = load i64, ptr %r4554.p, align 8, !alias.scope !3, !noalias !4
  %r4555.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4555 = load i64, ptr %r4555.p, align 8, !alias.scope !3, !noalias !4
  %gmp4556 = inttoptr i64 %r4554 to ptr
  store i64 %r4555, ptr %gmp4556, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcc30 word 0xf9430c00
  %r4557.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4557 = load i64, ptr %r4557.p, align 8, !alias.scope !3, !noalias !4
  %t4558 = add i64 %r4557, 1560
  %gmp4559 = inttoptr i64 %t4558 to ptr
  %gml4560 = load i64, ptr %gmp4559, align 1, !alias.scope !4, !noalias !3
  %wp4561 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4560, ptr %wp4561, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc34 word 0x94a79b5f
  %wp4562 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560120, ptr %wp4562, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcc38 word 0x9001bded
  %wp4563 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4563, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc3c word 0x9001bdec
  %wp4564 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4564, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc40 word 0xf941b5ad
  %r4565.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4565 = load i64, ptr %r4565.p, align 8, !alias.scope !3, !noalias !4
  %t4566 = add i64 %r4565, 872
  %gmp4567 = inttoptr i64 %t4566 to ptr
  %gml4568 = load i64, ptr %gmp4567, align 1, !alias.scope !4, !noalias !3
  %wp4569 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4568, ptr %wp4569, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc44 word 0xd001bc8b
  %wp4570 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4570, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc48 word 0xd001bc89
  %wp4571 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4571, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc4c word 0xf941bd8c
  %r4572.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4572 = load i64, ptr %r4572.p, align 8, !alias.scope !3, !noalias !4
  %t4573 = add i64 %r4572, 888
  %gmp4574 = inttoptr i64 %t4573 to ptr
  %gml4575 = load i64, ptr %gmp4574, align 1, !alias.scope !4, !noalias !3
  %wp4576 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4575, ptr %wp4576, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc50 word 0xf943016b
  %r4577.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4577 = load i64, ptr %r4577.p, align 8, !alias.scope !3, !noalias !4
  %t4578 = add i64 %r4577, 1536
  %gmp4579 = inttoptr i64 %t4578 to ptr
  %gml4580 = load i64, ptr %gmp4579, align 1, !alias.scope !4, !noalias !3
  %wp4581 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4580, ptr %wp4581, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc54 word 0x2a1703e5
  %r4582.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4582 = load i64, ptr %r4582.p, align 8, !alias.scope !3, !noalias !4
  %c4583 = trunc i64 %r4582 to i32
  %t4584 = or i32 0, %c4583
  %c4585 = zext i32 %t4584 to i64
  %wp4586 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4585, ptr %wp4586, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc58 word 0xaa1903e3
  %r4587.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4587 = load i64, ptr %r4587.p, align 8, !alias.scope !3, !noalias !4
  %t4588 = or i64 0, %r4587
  %wp4589 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4588, ptr %wp4589, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc5c word 0xf94007ea
  %r4590.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4590 = load i64, ptr %r4590.p, align 8, !alias.scope !3, !noalias !4
  %t4591 = add i64 %r4590, 8
  %gmp4592 = inttoptr i64 %t4591 to ptr
  %gml4593 = load i64, ptr %gmp4592, align 1, !alias.scope !4, !noalias !3
  %wp4594 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4593, ptr %wp4594, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc60 word 0xf9430d29
  %r4595.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4595 = load i64, ptr %r4595.p, align 8, !alias.scope !3, !noalias !4
  %t4596 = add i64 %r4595, 1560
  %gmp4597 = inttoptr i64 %t4596 to ptr
  %gml4598 = load i64, ptr %gmp4597, align 1, !alias.scope !4, !noalias !3
  %wp4599 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4598, ptr %wp4599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc64 word 0xb94007e4
  %r4600.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4600 = load i64, ptr %r4600.p, align 8, !alias.scope !3, !noalias !4
  %t4601 = add i64 %r4600, 4
  %gmp4602 = inttoptr i64 %t4601 to ptr
  %gml4603 = load i32, ptr %gmp4602, align 1, !alias.scope !4, !noalias !3
  %c4604 = zext i32 %gml4603 to i64
  %wp4605 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4604, ptr %wp4605, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcc68 word 0x17fffd2c
  br label %L_8001bc118
L_8001bccb8_ft:
  ; @pc 0x8001bccb8 word 0xd001bc88
  %wp4672 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4672, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccbc word 0xf001bd09
  %wp4673 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419896320, ptr %wp4673, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccc0 word 0xf942f908
  %r4674.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4674 = load i64, ptr %r4674.p, align 8, !alias.scope !3, !noalias !4
  %t4675 = add i64 %r4674, 1520
  %gmp4676 = inttoptr i64 %t4675 to ptr
  %gml4677 = load i64, ptr %gmp4676, align 1, !alias.scope !4, !noalias !3
  %wp4678 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4677, ptr %wp4678, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccc4 word 0xf9454929
  %r4679.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4679 = load i64, ptr %r4679.p, align 8, !alias.scope !3, !noalias !4
  %t4680 = add i64 %r4679, 2704
  %gmp4681 = inttoptr i64 %t4680 to ptr
  %gml4682 = load i64, ptr %gmp4681, align 1, !alias.scope !4, !noalias !3
  %wp4683 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4682, ptr %wp4683, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccc8 word 0xf001bd00
  %wp4684 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp4684, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcccc word 0x91004108
  %r4685.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4685 = load i64, ptr %r4685.p, align 8, !alias.scope !3, !noalias !4
  %t4686 = add i64 %r4685, 16
  %wp4687 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4686, ptr %wp4687, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccd0 word 0xf9000128
  %r4688.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4688 = load i64, ptr %r4688.p, align 8, !alias.scope !3, !noalias !4
  %r4689.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4689 = load i64, ptr %r4689.p, align 8, !alias.scope !3, !noalias !4
  %gmp4690 = inttoptr i64 %r4688 to ptr
  store i64 %r4689, ptr %gmp4690, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bccd4 word 0xf9454c00
  %r4691.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4691 = load i64, ptr %r4691.p, align 8, !alias.scope !3, !noalias !4
  %t4692 = add i64 %r4691, 2712
  %gmp4693 = inttoptr i64 %t4692 to ptr
  %gml4694 = load i64, ptr %gmp4693, align 1, !alias.scope !4, !noalias !3
  %wp4695 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4694, ptr %wp4695, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccd8 word 0x94a79b36
  %wp4696 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560284, ptr %wp4696, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bccdc word 0x9001bded
  %wp4697 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcce0 word 0x9001bdec
  %wp4698 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4698, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcce4 word 0xf941b5ad
  %r4699.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4699 = load i64, ptr %r4699.p, align 8, !alias.scope !3, !noalias !4
  %t4700 = add i64 %r4699, 872
  %gmp4701 = inttoptr i64 %t4700 to ptr
  %gml4702 = load i64, ptr %gmp4701, align 1, !alias.scope !4, !noalias !3
  %wp4703 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4702, ptr %wp4703, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcce8 word 0xd001bc8b
  %wp4704 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4704, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccec word 0xd001bc89
  %wp4705 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccf0 word 0xf941bd8c
  %r4706.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4706 = load i64, ptr %r4706.p, align 8, !alias.scope !3, !noalias !4
  %t4707 = add i64 %r4706, 888
  %gmp4708 = inttoptr i64 %t4707 to ptr
  %gml4709 = load i64, ptr %gmp4708, align 1, !alias.scope !4, !noalias !3
  %wp4710 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4709, ptr %wp4710, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccf4 word 0xf943016b
  %r4711.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4711 = load i64, ptr %r4711.p, align 8, !alias.scope !3, !noalias !4
  %t4712 = add i64 %r4711, 1536
  %gmp4713 = inttoptr i64 %t4712 to ptr
  %gml4714 = load i64, ptr %gmp4713, align 1, !alias.scope !4, !noalias !3
  %wp4715 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4714, ptr %wp4715, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccf8 word 0x2a1703e5
  %r4716.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4716 = load i64, ptr %r4716.p, align 8, !alias.scope !3, !noalias !4
  %c4717 = trunc i64 %r4716 to i32
  %t4718 = or i32 0, %c4717
  %c4719 = zext i32 %t4718 to i64
  %wp4720 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4719, ptr %wp4720, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bccfc word 0xaa1903e3
  %r4721.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4721 = load i64, ptr %r4721.p, align 8, !alias.scope !3, !noalias !4
  %t4722 = or i64 0, %r4721
  %wp4723 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4722, ptr %wp4723, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd00 word 0xf94007ea
  %r4724.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4724 = load i64, ptr %r4724.p, align 8, !alias.scope !3, !noalias !4
  %t4725 = add i64 %r4724, 8
  %gmp4726 = inttoptr i64 %t4725 to ptr
  %gml4727 = load i64, ptr %gmp4726, align 1, !alias.scope !4, !noalias !3
  %wp4728 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4727, ptr %wp4728, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd04 word 0xf9430d29
  %r4729.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4729 = load i64, ptr %r4729.p, align 8, !alias.scope !3, !noalias !4
  %t4730 = add i64 %r4729, 1560
  %gmp4731 = inttoptr i64 %t4730 to ptr
  %gml4732 = load i64, ptr %gmp4731, align 1, !alias.scope !4, !noalias !3
  %wp4733 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4732, ptr %wp4733, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd08 word 0xb94007e4
  %r4734.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4734 = load i64, ptr %r4734.p, align 8, !alias.scope !3, !noalias !4
  %t4735 = add i64 %r4734, 4
  %gmp4736 = inttoptr i64 %t4735 to ptr
  %gml4737 = load i32, ptr %gmp4736, align 1, !alias.scope !4, !noalias !3
  %c4738 = zext i32 %gml4737 to i64
  %wp4739 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4738, ptr %wp4739, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd0c word 0x17fffda9
  br label %L_8001bc3b0
L_8001bcd5c_ft:
  ; @pc 0x8001bcd5c word 0xd001bc88
  %wp4806 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4806, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd60 word 0x9001bde9
  %wp4807 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp4807, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd64 word 0xf942f908
  %r4808.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4808 = load i64, ptr %r4808.p, align 8, !alias.scope !3, !noalias !4
  %t4809 = add i64 %r4808, 1520
  %gmp4810 = inttoptr i64 %t4809 to ptr
  %gml4811 = load i64, ptr %gmp4810, align 1, !alias.scope !4, !noalias !3
  %wp4812 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4811, ptr %wp4812, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd68 word 0xf941b929
  %r4813.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4813 = load i64, ptr %r4813.p, align 8, !alias.scope !3, !noalias !4
  %t4814 = add i64 %r4813, 880
  %gmp4815 = inttoptr i64 %t4814 to ptr
  %gml4816 = load i64, ptr %gmp4815, align 1, !alias.scope !4, !noalias !3
  %wp4817 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4816, ptr %wp4817, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd6c word 0x9001bde0
  %wp4818 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp4818, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd70 word 0x91004108
  %r4819.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4819 = load i64, ptr %r4819.p, align 8, !alias.scope !3, !noalias !4
  %t4820 = add i64 %r4819, 16
  %wp4821 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4820, ptr %wp4821, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd74 word 0xf9000128
  %r4822.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4822 = load i64, ptr %r4822.p, align 8, !alias.scope !3, !noalias !4
  %r4823.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4823 = load i64, ptr %r4823.p, align 8, !alias.scope !3, !noalias !4
  %gmp4824 = inttoptr i64 %r4822 to ptr
  store i64 %r4823, ptr %gmp4824, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcd78 word 0xf941bc00
  %r4825.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4825 = load i64, ptr %r4825.p, align 8, !alias.scope !3, !noalias !4
  %t4826 = add i64 %r4825, 888
  %gmp4827 = inttoptr i64 %t4826 to ptr
  %gml4828 = load i64, ptr %gmp4827, align 1, !alias.scope !4, !noalias !3
  %wp4829 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4828, ptr %wp4829, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd7c word 0x94a79b0d
  %wp4830 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560448, ptr %wp4830, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcd80 word 0x9001bded
  %wp4831 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4831, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd84 word 0x9001bdec
  %wp4832 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4832, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd88 word 0xf941b5ad
  %r4833.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4833 = load i64, ptr %r4833.p, align 8, !alias.scope !3, !noalias !4
  %t4834 = add i64 %r4833, 872
  %gmp4835 = inttoptr i64 %t4834 to ptr
  %gml4836 = load i64, ptr %gmp4835, align 1, !alias.scope !4, !noalias !3
  %wp4837 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4836, ptr %wp4837, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd8c word 0xd001bc8b
  %wp4838 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4838, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd90 word 0xd001bc89
  %wp4839 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4839, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd94 word 0xf941bd8c
  %r4840.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4840 = load i64, ptr %r4840.p, align 8, !alias.scope !3, !noalias !4
  %t4841 = add i64 %r4840, 888
  %gmp4842 = inttoptr i64 %t4841 to ptr
  %gml4843 = load i64, ptr %gmp4842, align 1, !alias.scope !4, !noalias !3
  %wp4844 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4843, ptr %wp4844, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd98 word 0xf943016b
  %r4845.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4845 = load i64, ptr %r4845.p, align 8, !alias.scope !3, !noalias !4
  %t4846 = add i64 %r4845, 1536
  %gmp4847 = inttoptr i64 %t4846 to ptr
  %gml4848 = load i64, ptr %gmp4847, align 1, !alias.scope !4, !noalias !3
  %wp4849 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4848, ptr %wp4849, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcd9c word 0x2a1703e5
  %r4850.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4850 = load i64, ptr %r4850.p, align 8, !alias.scope !3, !noalias !4
  %c4851 = trunc i64 %r4850 to i32
  %t4852 = or i32 0, %c4851
  %c4853 = zext i32 %t4852 to i64
  %wp4854 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4853, ptr %wp4854, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcda0 word 0xaa1903e3
  %r4855.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4855 = load i64, ptr %r4855.p, align 8, !alias.scope !3, !noalias !4
  %t4856 = or i64 0, %r4855
  %wp4857 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4856, ptr %wp4857, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcda4 word 0xf94007ea
  %r4858.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4858 = load i64, ptr %r4858.p, align 8, !alias.scope !3, !noalias !4
  %t4859 = add i64 %r4858, 8
  %gmp4860 = inttoptr i64 %t4859 to ptr
  %gml4861 = load i64, ptr %gmp4860, align 1, !alias.scope !4, !noalias !3
  %wp4862 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4861, ptr %wp4862, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcda8 word 0xf9430d29
  %r4863.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4863 = load i64, ptr %r4863.p, align 8, !alias.scope !3, !noalias !4
  %t4864 = add i64 %r4863, 1560
  %gmp4865 = inttoptr i64 %t4864 to ptr
  %gml4866 = load i64, ptr %gmp4865, align 1, !alias.scope !4, !noalias !3
  %wp4867 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4866, ptr %wp4867, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdac word 0xb94007e4
  %r4868.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4868 = load i64, ptr %r4868.p, align 8, !alias.scope !3, !noalias !4
  %t4869 = add i64 %r4868, 4
  %gmp4870 = inttoptr i64 %t4869 to ptr
  %gml4871 = load i32, ptr %gmp4870, align 1, !alias.scope !4, !noalias !3
  %c4872 = zext i32 %gml4871 to i64
  %wp4873 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c4872, ptr %wp4873, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcdb0 word 0x17fffc1a
  br label %L_8001bbe18
L_8001bce00_ft:
  ; @pc 0x8001bce00 word 0xd001bc88
  %wp4940 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp4940, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce04 word 0xd001bc89
  %wp4941 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4941, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce08 word 0xf9430508
  %r4942.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4942 = load i64, ptr %r4942.p, align 8, !alias.scope !3, !noalias !4
  %t4943 = add i64 %r4942, 1544
  %gmp4944 = inttoptr i64 %t4943 to ptr
  %gml4945 = load i64, ptr %gmp4944, align 1, !alias.scope !4, !noalias !3
  %wp4946 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml4945, ptr %wp4946, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce0c word 0xf942fd29
  %r4947.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4947 = load i64, ptr %r4947.p, align 8, !alias.scope !3, !noalias !4
  %t4948 = add i64 %r4947, 1528
  %gmp4949 = inttoptr i64 %t4948 to ptr
  %gml4950 = load i64, ptr %gmp4949, align 1, !alias.scope !4, !noalias !3
  %wp4951 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml4950, ptr %wp4951, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce10 word 0xd001bc80
  %wp4952 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp4952, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce14 word 0x91004108
  %r4953.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4953 = load i64, ptr %r4953.p, align 8, !alias.scope !3, !noalias !4
  %t4954 = add i64 %r4953, 16
  %wp4955 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t4954, ptr %wp4955, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce18 word 0xf9000128
  %r4956.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4956 = load i64, ptr %r4956.p, align 8, !alias.scope !3, !noalias !4
  %r4957.p = getelementptr inbounds i8, ptr %c, i64 64
  %r4957 = load i64, ptr %r4957.p, align 8, !alias.scope !3, !noalias !4
  %gmp4958 = inttoptr i64 %r4956 to ptr
  store i64 %r4957, ptr %gmp4958, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bce1c word 0xf9430000
  %r4959.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4959 = load i64, ptr %r4959.p, align 8, !alias.scope !3, !noalias !4
  %t4960 = add i64 %r4959, 1536
  %gmp4961 = inttoptr i64 %t4960 to ptr
  %gml4962 = load i64, ptr %gmp4961, align 1, !alias.scope !4, !noalias !3
  %wp4963 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml4962, ptr %wp4963, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce20 word 0x94a79ae4
  %wp4964 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560612, ptr %wp4964, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bce24 word 0x9001bded
  %wp4965 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp4965, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce28 word 0x9001bdec
  %wp4966 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp4966, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce2c word 0xf941b5ad
  %r4967.p = getelementptr inbounds i8, ptr %c, i64 104
  %r4967 = load i64, ptr %r4967.p, align 8, !alias.scope !3, !noalias !4
  %t4968 = add i64 %r4967, 872
  %gmp4969 = inttoptr i64 %t4968 to ptr
  %gml4970 = load i64, ptr %gmp4969, align 1, !alias.scope !4, !noalias !3
  %wp4971 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml4970, ptr %wp4971, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce30 word 0xd001bc8b
  %wp4972 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp4972, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce34 word 0xd001bc89
  %wp4973 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp4973, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce38 word 0xf941bd8c
  %r4974.p = getelementptr inbounds i8, ptr %c, i64 96
  %r4974 = load i64, ptr %r4974.p, align 8, !alias.scope !3, !noalias !4
  %t4975 = add i64 %r4974, 888
  %gmp4976 = inttoptr i64 %t4975 to ptr
  %gml4977 = load i64, ptr %gmp4976, align 1, !alias.scope !4, !noalias !3
  %wp4978 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml4977, ptr %wp4978, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce3c word 0xf943016b
  %r4979.p = getelementptr inbounds i8, ptr %c, i64 88
  %r4979 = load i64, ptr %r4979.p, align 8, !alias.scope !3, !noalias !4
  %t4980 = add i64 %r4979, 1536
  %gmp4981 = inttoptr i64 %t4980 to ptr
  %gml4982 = load i64, ptr %gmp4981, align 1, !alias.scope !4, !noalias !3
  %wp4983 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml4982, ptr %wp4983, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce40 word 0x2a1703e5
  %r4984.p = getelementptr inbounds i8, ptr %c, i64 184
  %r4984 = load i64, ptr %r4984.p, align 8, !alias.scope !3, !noalias !4
  %c4985 = trunc i64 %r4984 to i32
  %t4986 = or i32 0, %c4985
  %c4987 = zext i32 %t4986 to i64
  %wp4988 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c4987, ptr %wp4988, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce44 word 0xaa1903e3
  %r4989.p = getelementptr inbounds i8, ptr %c, i64 200
  %r4989 = load i64, ptr %r4989.p, align 8, !alias.scope !3, !noalias !4
  %t4990 = or i64 0, %r4989
  %wp4991 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t4990, ptr %wp4991, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce48 word 0xf94007ea
  %r4992.p = getelementptr inbounds i8, ptr %c, i64 256
  %r4992 = load i64, ptr %r4992.p, align 8, !alias.scope !3, !noalias !4
  %t4993 = add i64 %r4992, 8
  %gmp4994 = inttoptr i64 %t4993 to ptr
  %gml4995 = load i64, ptr %gmp4994, align 1, !alias.scope !4, !noalias !3
  %wp4996 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml4995, ptr %wp4996, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce4c word 0xf9430d29
  %r4997.p = getelementptr inbounds i8, ptr %c, i64 72
  %r4997 = load i64, ptr %r4997.p, align 8, !alias.scope !3, !noalias !4
  %t4998 = add i64 %r4997, 1560
  %gmp4999 = inttoptr i64 %t4998 to ptr
  %gml5000 = load i64, ptr %gmp4999, align 1, !alias.scope !4, !noalias !3
  %wp5001 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5000, ptr %wp5001, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce50 word 0xb94007e4
  %r5002.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5002 = load i64, ptr %r5002.p, align 8, !alias.scope !3, !noalias !4
  %t5003 = add i64 %r5002, 4
  %gmp5004 = inttoptr i64 %t5003 to ptr
  %gml5005 = load i32, ptr %gmp5004, align 1, !alias.scope !4, !noalias !3
  %c5006 = zext i32 %gml5005 to i64
  %wp5007 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5006, ptr %wp5007, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bce54 word 0x17fffbf3
  br label %L_8001bbe20
L_8001bcea4_ft:
  ; @pc 0x8001bcea4 word 0xd001bc88
  %wp5074 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5074, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcea8 word 0x9001bde9
  %wp5075 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp5075, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bceac word 0xf942f908
  %r5076.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5076 = load i64, ptr %r5076.p, align 8, !alias.scope !3, !noalias !4
  %t5077 = add i64 %r5076, 1520
  %gmp5078 = inttoptr i64 %t5077 to ptr
  %gml5079 = load i64, ptr %gmp5078, align 1, !alias.scope !4, !noalias !3
  %wp5080 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5079, ptr %wp5080, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bceb0 word 0xf941b929
  %r5081.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5081 = load i64, ptr %r5081.p, align 8, !alias.scope !3, !noalias !4
  %t5082 = add i64 %r5081, 880
  %gmp5083 = inttoptr i64 %t5082 to ptr
  %gml5084 = load i64, ptr %gmp5083, align 1, !alias.scope !4, !noalias !3
  %wp5085 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5084, ptr %wp5085, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bceb4 word 0x9001bde0
  %wp5086 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5086, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bceb8 word 0x91004108
  %r5087.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5087 = load i64, ptr %r5087.p, align 8, !alias.scope !3, !noalias !4
  %t5088 = add i64 %r5087, 16
  %wp5089 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5088, ptr %wp5089, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcebc word 0xf9000128
  %r5090.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5090 = load i64, ptr %r5090.p, align 8, !alias.scope !3, !noalias !4
  %r5091.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5091 = load i64, ptr %r5091.p, align 8, !alias.scope !3, !noalias !4
  %gmp5092 = inttoptr i64 %r5090 to ptr
  store i64 %r5091, ptr %gmp5092, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcec0 word 0xf941bc00
  %r5093.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5093 = load i64, ptr %r5093.p, align 8, !alias.scope !3, !noalias !4
  %t5094 = add i64 %r5093, 888
  %gmp5095 = inttoptr i64 %t5094 to ptr
  %gml5096 = load i64, ptr %gmp5095, align 1, !alias.scope !4, !noalias !3
  %wp5097 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5096, ptr %wp5097, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcec4 word 0x94a79abb
  %wp5098 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560776, ptr %wp5098, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcec8 word 0x9001bded
  %wp5099 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5099, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcecc word 0x9001bdec
  %wp5100 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5100, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bced0 word 0xf941b5ad
  %r5101.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5101 = load i64, ptr %r5101.p, align 8, !alias.scope !3, !noalias !4
  %t5102 = add i64 %r5101, 872
  %gmp5103 = inttoptr i64 %t5102 to ptr
  %gml5104 = load i64, ptr %gmp5103, align 1, !alias.scope !4, !noalias !3
  %wp5105 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5104, ptr %wp5105, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bced4 word 0xd001bc8b
  %wp5106 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5106, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bced8 word 0xd001bc89
  %wp5107 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5107, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcedc word 0xf941bd8c
  %r5108.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5108 = load i64, ptr %r5108.p, align 8, !alias.scope !3, !noalias !4
  %t5109 = add i64 %r5108, 888
  %gmp5110 = inttoptr i64 %t5109 to ptr
  %gml5111 = load i64, ptr %gmp5110, align 1, !alias.scope !4, !noalias !3
  %wp5112 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5111, ptr %wp5112, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcee0 word 0xf943016b
  %r5113.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5113 = load i64, ptr %r5113.p, align 8, !alias.scope !3, !noalias !4
  %t5114 = add i64 %r5113, 1536
  %gmp5115 = inttoptr i64 %t5114 to ptr
  %gml5116 = load i64, ptr %gmp5115, align 1, !alias.scope !4, !noalias !3
  %wp5117 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5116, ptr %wp5117, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcee4 word 0x2a1703e5
  %r5118.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5118 = load i64, ptr %r5118.p, align 8, !alias.scope !3, !noalias !4
  %c5119 = trunc i64 %r5118 to i32
  %t5120 = or i32 0, %c5119
  %c5121 = zext i32 %t5120 to i64
  %wp5122 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5121, ptr %wp5122, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcee8 word 0xaa1903e3
  %r5123.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5123 = load i64, ptr %r5123.p, align 8, !alias.scope !3, !noalias !4
  %t5124 = or i64 0, %r5123
  %wp5125 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5124, ptr %wp5125, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bceec word 0xf94007ea
  %r5126.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5126 = load i64, ptr %r5126.p, align 8, !alias.scope !3, !noalias !4
  %t5127 = add i64 %r5126, 8
  %gmp5128 = inttoptr i64 %t5127 to ptr
  %gml5129 = load i64, ptr %gmp5128, align 1, !alias.scope !4, !noalias !3
  %wp5130 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5129, ptr %wp5130, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcef0 word 0xf9430d29
  %r5131.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5131 = load i64, ptr %r5131.p, align 8, !alias.scope !3, !noalias !4
  %t5132 = add i64 %r5131, 1560
  %gmp5133 = inttoptr i64 %t5132 to ptr
  %gml5134 = load i64, ptr %gmp5133, align 1, !alias.scope !4, !noalias !3
  %wp5135 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5134, ptr %wp5135, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcef4 word 0xb94007e4
  %r5136.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5136 = load i64, ptr %r5136.p, align 8, !alias.scope !3, !noalias !4
  %t5137 = add i64 %r5136, 4
  %gmp5138 = inttoptr i64 %t5137 to ptr
  %gml5139 = load i32, ptr %gmp5138, align 1, !alias.scope !4, !noalias !3
  %c5140 = zext i32 %gml5139 to i64
  %wp5141 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5140, ptr %wp5141, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcef8 word 0x17fffc93
  br label %L_8001bc144
L_8001bcf48_ft:
  ; @pc 0x8001bcf48 word 0xd001bc88
  %wp5208 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5208, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf4c word 0xd001bc89
  %wp5209 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5209, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf50 word 0xf9430508
  %r5210.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5210 = load i64, ptr %r5210.p, align 8, !alias.scope !3, !noalias !4
  %t5211 = add i64 %r5210, 1544
  %gmp5212 = inttoptr i64 %t5211 to ptr
  %gml5213 = load i64, ptr %gmp5212, align 1, !alias.scope !4, !noalias !3
  %wp5214 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5213, ptr %wp5214, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf54 word 0xf942fd29
  %r5215.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5215 = load i64, ptr %r5215.p, align 8, !alias.scope !3, !noalias !4
  %t5216 = add i64 %r5215, 1528
  %gmp5217 = inttoptr i64 %t5216 to ptr
  %gml5218 = load i64, ptr %gmp5217, align 1, !alias.scope !4, !noalias !3
  %wp5219 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5218, ptr %wp5219, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf58 word 0xd001bc80
  %wp5220 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5220, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf5c word 0x91004108
  %r5221.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5221 = load i64, ptr %r5221.p, align 8, !alias.scope !3, !noalias !4
  %t5222 = add i64 %r5221, 16
  %wp5223 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5222, ptr %wp5223, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf60 word 0xf9000128
  %r5224.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5224 = load i64, ptr %r5224.p, align 8, !alias.scope !3, !noalias !4
  %r5225.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5225 = load i64, ptr %r5225.p, align 8, !alias.scope !3, !noalias !4
  %gmp5226 = inttoptr i64 %r5224 to ptr
  store i64 %r5225, ptr %gmp5226, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bcf64 word 0xf9430000
  %r5227.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5227 = load i64, ptr %r5227.p, align 8, !alias.scope !3, !noalias !4
  %t5228 = add i64 %r5227, 1536
  %gmp5229 = inttoptr i64 %t5228 to ptr
  %gml5230 = load i64, ptr %gmp5229, align 1, !alias.scope !4, !noalias !3
  %wp5231 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5230, ptr %wp5231, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf68 word 0x94a79a92
  %wp5232 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361560940, ptr %wp5232, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bcf6c word 0x9001bded
  %wp5233 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5233, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf70 word 0x9001bdec
  %wp5234 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5234, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf74 word 0xf941b5ad
  %r5235.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5235 = load i64, ptr %r5235.p, align 8, !alias.scope !3, !noalias !4
  %t5236 = add i64 %r5235, 872
  %gmp5237 = inttoptr i64 %t5236 to ptr
  %gml5238 = load i64, ptr %gmp5237, align 1, !alias.scope !4, !noalias !3
  %wp5239 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5238, ptr %wp5239, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf78 word 0xd001bc8b
  %wp5240 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5240, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf7c word 0xd001bc89
  %wp5241 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5241, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf80 word 0xf941bd8c
  %r5242.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5242 = load i64, ptr %r5242.p, align 8, !alias.scope !3, !noalias !4
  %t5243 = add i64 %r5242, 888
  %gmp5244 = inttoptr i64 %t5243 to ptr
  %gml5245 = load i64, ptr %gmp5244, align 1, !alias.scope !4, !noalias !3
  %wp5246 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5245, ptr %wp5246, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf84 word 0xf943016b
  %r5247.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5247 = load i64, ptr %r5247.p, align 8, !alias.scope !3, !noalias !4
  %t5248 = add i64 %r5247, 1536
  %gmp5249 = inttoptr i64 %t5248 to ptr
  %gml5250 = load i64, ptr %gmp5249, align 1, !alias.scope !4, !noalias !3
  %wp5251 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5250, ptr %wp5251, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf88 word 0x2a1703e5
  %r5252.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5252 = load i64, ptr %r5252.p, align 8, !alias.scope !3, !noalias !4
  %c5253 = trunc i64 %r5252 to i32
  %t5254 = or i32 0, %c5253
  %c5255 = zext i32 %t5254 to i64
  %wp5256 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5255, ptr %wp5256, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf8c word 0xaa1903e3
  %r5257.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5257 = load i64, ptr %r5257.p, align 8, !alias.scope !3, !noalias !4
  %t5258 = or i64 0, %r5257
  %wp5259 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5258, ptr %wp5259, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf90 word 0xf94007ea
  %r5260.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5260 = load i64, ptr %r5260.p, align 8, !alias.scope !3, !noalias !4
  %t5261 = add i64 %r5260, 8
  %gmp5262 = inttoptr i64 %t5261 to ptr
  %gml5263 = load i64, ptr %gmp5262, align 1, !alias.scope !4, !noalias !3
  %wp5264 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5263, ptr %wp5264, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf94 word 0xf9430d29
  %r5265.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5265 = load i64, ptr %r5265.p, align 8, !alias.scope !3, !noalias !4
  %t5266 = add i64 %r5265, 1560
  %gmp5267 = inttoptr i64 %t5266 to ptr
  %gml5268 = load i64, ptr %gmp5267, align 1, !alias.scope !4, !noalias !3
  %wp5269 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5268, ptr %wp5269, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf98 word 0xb94007e4
  %r5270.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5270 = load i64, ptr %r5270.p, align 8, !alias.scope !3, !noalias !4
  %t5271 = add i64 %r5270, 4
  %gmp5272 = inttoptr i64 %t5271 to ptr
  %gml5273 = load i32, ptr %gmp5272, align 1, !alias.scope !4, !noalias !3
  %c5274 = zext i32 %gml5273 to i64
  %wp5275 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5274, ptr %wp5275, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcf9c word 0x17fffc6c
  br label %L_8001bc14c
L_8001bcfec_ft:
  ; @pc 0x8001bcfec word 0xd001bc88
  %wp5342 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5342, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcff0 word 0x9001bde9
  %wp5343 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp5343, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcff4 word 0xf942f908
  %r5344.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5344 = load i64, ptr %r5344.p, align 8, !alias.scope !3, !noalias !4
  %t5345 = add i64 %r5344, 1520
  %gmp5346 = inttoptr i64 %t5345 to ptr
  %gml5347 = load i64, ptr %gmp5346, align 1, !alias.scope !4, !noalias !3
  %wp5348 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5347, ptr %wp5348, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcff8 word 0xf941b929
  %r5349.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5349 = load i64, ptr %r5349.p, align 8, !alias.scope !3, !noalias !4
  %t5350 = add i64 %r5349, 880
  %gmp5351 = inttoptr i64 %t5350 to ptr
  %gml5352 = load i64, ptr %gmp5351, align 1, !alias.scope !4, !noalias !3
  %wp5353 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5352, ptr %wp5353, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bcffc word 0x9001bde0
  %wp5354 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5354, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd000 word 0x91004108
  %r5355.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5355 = load i64, ptr %r5355.p, align 8, !alias.scope !3, !noalias !4
  %t5356 = add i64 %r5355, 16
  %wp5357 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5356, ptr %wp5357, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd004 word 0xf9000128
  %r5358.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5358 = load i64, ptr %r5358.p, align 8, !alias.scope !3, !noalias !4
  %r5359.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5359 = load i64, ptr %r5359.p, align 8, !alias.scope !3, !noalias !4
  %gmp5360 = inttoptr i64 %r5358 to ptr
  store i64 %r5359, ptr %gmp5360, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd008 word 0xf941bc00
  %r5361.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5361 = load i64, ptr %r5361.p, align 8, !alias.scope !3, !noalias !4
  %t5362 = add i64 %r5361, 888
  %gmp5363 = inttoptr i64 %t5362 to ptr
  %gml5364 = load i64, ptr %gmp5363, align 1, !alias.scope !4, !noalias !3
  %wp5365 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5364, ptr %wp5365, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd00c word 0x94a79a69
  %wp5366 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561104, ptr %wp5366, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bd010 word 0xf001bdcd
  %wp5367 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5367, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd014 word 0xf001bdcc
  %wp5368 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5368, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd018 word 0xf941b5ad
  %r5369.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5369 = load i64, ptr %r5369.p, align 8, !alias.scope !3, !noalias !4
  %t5370 = add i64 %r5369, 872
  %gmp5371 = inttoptr i64 %t5370 to ptr
  %gml5372 = load i64, ptr %gmp5371, align 1, !alias.scope !4, !noalias !3
  %wp5373 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5372, ptr %wp5373, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd01c word 0xb001bc8b
  %wp5374 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5374, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd020 word 0xb001bc89
  %wp5375 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5375, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd024 word 0xf941bd8c
  %r5376.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5376 = load i64, ptr %r5376.p, align 8, !alias.scope !3, !noalias !4
  %t5377 = add i64 %r5376, 888
  %gmp5378 = inttoptr i64 %t5377 to ptr
  %gml5379 = load i64, ptr %gmp5378, align 1, !alias.scope !4, !noalias !3
  %wp5380 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5379, ptr %wp5380, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd028 word 0xf943016b
  %r5381.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5381 = load i64, ptr %r5381.p, align 8, !alias.scope !3, !noalias !4
  %t5382 = add i64 %r5381, 1536
  %gmp5383 = inttoptr i64 %t5382 to ptr
  %gml5384 = load i64, ptr %gmp5383, align 1, !alias.scope !4, !noalias !3
  %wp5385 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5384, ptr %wp5385, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd02c word 0x2a1703e5
  %r5386.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5386 = load i64, ptr %r5386.p, align 8, !alias.scope !3, !noalias !4
  %c5387 = trunc i64 %r5386 to i32
  %t5388 = or i32 0, %c5387
  %c5389 = zext i32 %t5388 to i64
  %wp5390 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5389, ptr %wp5390, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd030 word 0xaa1903e3
  %r5391.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5391 = load i64, ptr %r5391.p, align 8, !alias.scope !3, !noalias !4
  %t5392 = or i64 0, %r5391
  %wp5393 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5392, ptr %wp5393, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd034 word 0xf94007ea
  %r5394.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5394 = load i64, ptr %r5394.p, align 8, !alias.scope !3, !noalias !4
  %t5395 = add i64 %r5394, 8
  %gmp5396 = inttoptr i64 %t5395 to ptr
  %gml5397 = load i64, ptr %gmp5396, align 1, !alias.scope !4, !noalias !3
  %wp5398 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5397, ptr %wp5398, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd038 word 0xf9430d29
  %r5399.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5399 = load i64, ptr %r5399.p, align 8, !alias.scope !3, !noalias !4
  %t5400 = add i64 %r5399, 1560
  %gmp5401 = inttoptr i64 %t5400 to ptr
  %gml5402 = load i64, ptr %gmp5401, align 1, !alias.scope !4, !noalias !3
  %wp5403 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5402, ptr %wp5403, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd03c word 0xb94007e4
  %r5404.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5404 = load i64, ptr %r5404.p, align 8, !alias.scope !3, !noalias !4
  %t5405 = add i64 %r5404, 4
  %gmp5406 = inttoptr i64 %t5405 to ptr
  %gml5407 = load i32, ptr %gmp5406, align 1, !alias.scope !4, !noalias !3
  %c5408 = zext i32 %gml5407 to i64
  %wp5409 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5408, ptr %wp5409, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd040 word 0x17fffc92
  br label %L_8001bc288
L_8001bd090_ft:
  ; @pc 0x8001bd090 word 0xb001bc88
  %wp5476 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5476, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd094 word 0xb001bc89
  %wp5477 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5477, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd098 word 0xf9430508
  %r5478.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5478 = load i64, ptr %r5478.p, align 8, !alias.scope !3, !noalias !4
  %t5479 = add i64 %r5478, 1544
  %gmp5480 = inttoptr i64 %t5479 to ptr
  %gml5481 = load i64, ptr %gmp5480, align 1, !alias.scope !4, !noalias !3
  %wp5482 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5481, ptr %wp5482, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd09c word 0xf942fd29
  %r5483.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5483 = load i64, ptr %r5483.p, align 8, !alias.scope !3, !noalias !4
  %t5484 = add i64 %r5483, 1528
  %gmp5485 = inttoptr i64 %t5484 to ptr
  %gml5486 = load i64, ptr %gmp5485, align 1, !alias.scope !4, !noalias !3
  %wp5487 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5486, ptr %wp5487, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0a0 word 0xb001bc80
  %wp5488 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5488, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0a4 word 0x91004108
  %r5489.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5489 = load i64, ptr %r5489.p, align 8, !alias.scope !3, !noalias !4
  %t5490 = add i64 %r5489, 16
  %wp5491 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5490, ptr %wp5491, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0a8 word 0xf9000128
  %r5492.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5492 = load i64, ptr %r5492.p, align 8, !alias.scope !3, !noalias !4
  %r5493.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5493 = load i64, ptr %r5493.p, align 8, !alias.scope !3, !noalias !4
  %gmp5494 = inttoptr i64 %r5492 to ptr
  store i64 %r5493, ptr %gmp5494, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd0ac word 0xf9430000
  %r5495.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5495 = load i64, ptr %r5495.p, align 8, !alias.scope !3, !noalias !4
  %t5496 = add i64 %r5495, 1536
  %gmp5497 = inttoptr i64 %t5496 to ptr
  %gml5498 = load i64, ptr %gmp5497, align 1, !alias.scope !4, !noalias !3
  %wp5499 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5498, ptr %wp5499, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0b0 word 0x94a79a40
  %wp5500 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561268, ptr %wp5500, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bd0b4 word 0xf001bdcd
  %wp5501 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 34419998720, ptr %wp5501, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0b8 word 0xf001bdcc
  %wp5502 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 34419998720, ptr %wp5502, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0bc word 0xf941b5ad
  %r5503.p = getelementptr inbounds i8, ptr %c, i64 104
  %r5503 = load i64, ptr %r5503.p, align 8, !alias.scope !3, !noalias !4
  %t5504 = add i64 %r5503, 872
  %gmp5505 = inttoptr i64 %t5504 to ptr
  %gml5506 = load i64, ptr %gmp5505, align 1, !alias.scope !4, !noalias !3
  %wp5507 = getelementptr inbounds i8, ptr %c, i64 104
  store i64 %gml5506, ptr %wp5507, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0c0 word 0xb001bc8b
  %wp5508 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5508, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0c4 word 0xb001bc89
  %wp5509 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5509, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0c8 word 0xf941bd8c
  %r5510.p = getelementptr inbounds i8, ptr %c, i64 96
  %r5510 = load i64, ptr %r5510.p, align 8, !alias.scope !3, !noalias !4
  %t5511 = add i64 %r5510, 888
  %gmp5512 = inttoptr i64 %t5511 to ptr
  %gml5513 = load i64, ptr %gmp5512, align 1, !alias.scope !4, !noalias !3
  %wp5514 = getelementptr inbounds i8, ptr %c, i64 96
  store i64 %gml5513, ptr %wp5514, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0cc word 0xf943016b
  %r5515.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5515 = load i64, ptr %r5515.p, align 8, !alias.scope !3, !noalias !4
  %t5516 = add i64 %r5515, 1536
  %gmp5517 = inttoptr i64 %t5516 to ptr
  %gml5518 = load i64, ptr %gmp5517, align 1, !alias.scope !4, !noalias !3
  %wp5519 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5518, ptr %wp5519, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0d0 word 0x2a1703e5
  %r5520.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5520 = load i64, ptr %r5520.p, align 8, !alias.scope !3, !noalias !4
  %c5521 = trunc i64 %r5520 to i32
  %t5522 = or i32 0, %c5521
  %c5523 = zext i32 %t5522 to i64
  %wp5524 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5523, ptr %wp5524, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0d4 word 0xaa1903e3
  %r5525.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5525 = load i64, ptr %r5525.p, align 8, !alias.scope !3, !noalias !4
  %t5526 = or i64 0, %r5525
  %wp5527 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5526, ptr %wp5527, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0d8 word 0xf94007ea
  %r5528.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5528 = load i64, ptr %r5528.p, align 8, !alias.scope !3, !noalias !4
  %t5529 = add i64 %r5528, 8
  %gmp5530 = inttoptr i64 %t5529 to ptr
  %gml5531 = load i64, ptr %gmp5530, align 1, !alias.scope !4, !noalias !3
  %wp5532 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %gml5531, ptr %wp5532, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0dc word 0xf9430d29
  %r5533.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5533 = load i64, ptr %r5533.p, align 8, !alias.scope !3, !noalias !4
  %t5534 = add i64 %r5533, 1560
  %gmp5535 = inttoptr i64 %t5534 to ptr
  %gml5536 = load i64, ptr %gmp5535, align 1, !alias.scope !4, !noalias !3
  %wp5537 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5536, ptr %wp5537, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0e0 word 0xb94007e4
  %r5538.p = getelementptr inbounds i8, ptr %c, i64 256
  %r5538 = load i64, ptr %r5538.p, align 8, !alias.scope !3, !noalias !4
  %t5539 = add i64 %r5538, 4
  %gmp5540 = inttoptr i64 %t5539 to ptr
  %gml5541 = load i32, ptr %gmp5540, align 1, !alias.scope !4, !noalias !3
  %c5542 = zext i32 %gml5541 to i64
  %wp5543 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5542, ptr %wp5543, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd0e4 word 0x17fffc6b
  br label %L_8001bc290
L_8001bd11c_ft:
  ; @pc 0x8001bd11c word 0xb001bc88
  %wp5584 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5584, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd120 word 0xf001bdc9
  %wp5585 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419998720, ptr %wp5585, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd124 word 0xf942f908
  %r5586.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5586 = load i64, ptr %r5586.p, align 8, !alias.scope !3, !noalias !4
  %t5587 = add i64 %r5586, 1520
  %gmp5588 = inttoptr i64 %t5587 to ptr
  %gml5589 = load i64, ptr %gmp5588, align 1, !alias.scope !4, !noalias !3
  %wp5590 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5589, ptr %wp5590, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd128 word 0xf941b929
  %r5591.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5591 = load i64, ptr %r5591.p, align 8, !alias.scope !3, !noalias !4
  %t5592 = add i64 %r5591, 880
  %gmp5593 = inttoptr i64 %t5592 to ptr
  %gml5594 = load i64, ptr %gmp5593, align 1, !alias.scope !4, !noalias !3
  %wp5595 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5594, ptr %wp5595, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd12c word 0xf001bdc0
  %wp5596 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419998720, ptr %wp5596, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd130 word 0x91004108
  %r5597.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5597 = load i64, ptr %r5597.p, align 8, !alias.scope !3, !noalias !4
  %t5598 = add i64 %r5597, 16
  %wp5599 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5598, ptr %wp5599, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd134 word 0xf9000128
  %r5600.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5600 = load i64, ptr %r5600.p, align 8, !alias.scope !3, !noalias !4
  %r5601.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5601 = load i64, ptr %r5601.p, align 8, !alias.scope !3, !noalias !4
  %gmp5602 = inttoptr i64 %r5600 to ptr
  store i64 %r5601, ptr %gmp5602, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd138 word 0xf941bc00
  %r5603.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5603 = load i64, ptr %r5603.p, align 8, !alias.scope !3, !noalias !4
  %t5604 = add i64 %r5603, 888
  %gmp5605 = inttoptr i64 %t5604 to ptr
  %gml5606 = load i64, ptr %gmp5605, align 1, !alias.scope !4, !noalias !3
  %wp5607 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5606, ptr %wp5607, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd13c word 0x94a79a1d
  %wp5608 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561408, ptr %wp5608, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bd140 word 0xb001bc8b
  %wp5609 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 34419826688, ptr %wp5609, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd144 word 0xb001bc89
  %wp5610 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5610, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd148 word 0xf943016b
  %r5611.p = getelementptr inbounds i8, ptr %c, i64 88
  %r5611 = load i64, ptr %r5611.p, align 8, !alias.scope !3, !noalias !4
  %t5612 = add i64 %r5611, 1536
  %gmp5613 = inttoptr i64 %t5612 to ptr
  %gml5614 = load i64, ptr %gmp5613, align 1, !alias.scope !4, !noalias !3
  %wp5615 = getelementptr inbounds i8, ptr %c, i64 88
  store i64 %gml5614, ptr %wp5615, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd14c word 0xf9430d29
  %r5616.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5616 = load i64, ptr %r5616.p, align 8, !alias.scope !3, !noalias !4
  %t5617 = add i64 %r5616, 1560
  %gmp5618 = inttoptr i64 %t5617 to ptr
  %gml5619 = load i64, ptr %gmp5618, align 1, !alias.scope !4, !noalias !3
  %wp5620 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5619, ptr %wp5620, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd150 word 0x52b84005
  %c5621 = zext i32 -1040187392 to i64
  %wp5622 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5621, ptr %wp5622, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd154 word 0xaa1903e3
  %r5623.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5623 = load i64, ptr %r5623.p, align 8, !alias.scope !3, !noalias !4
  %t5624 = or i64 0, %r5623
  %wp5625 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5624, ptr %wp5625, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd158 word 0x2a1703e4
  %r5626.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5626 = load i64, ptr %r5626.p, align 8, !alias.scope !3, !noalias !4
  %c5627 = trunc i64 %r5626 to i32
  %t5628 = or i32 0, %c5627
  %c5629 = zext i32 %t5628 to i64
  %wp5630 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5629, ptr %wp5630, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd15c word 0x17fffcae
  br label %L_8001bc414
L_8001bd18c_ft:
  ; @pc 0x8001bd18c word 0xb001bc88
  %wp5665 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 34419826688, ptr %wp5665, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd190 word 0xb001bc89
  %wp5666 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5666, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd194 word 0xf9430508
  %r5667.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5667 = load i64, ptr %r5667.p, align 8, !alias.scope !3, !noalias !4
  %t5668 = add i64 %r5667, 1544
  %gmp5669 = inttoptr i64 %t5668 to ptr
  %gml5670 = load i64, ptr %gmp5669, align 1, !alias.scope !4, !noalias !3
  %wp5671 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %gml5670, ptr %wp5671, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd198 word 0xf942fd29
  %r5672.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5672 = load i64, ptr %r5672.p, align 8, !alias.scope !3, !noalias !4
  %t5673 = add i64 %r5672, 1528
  %gmp5674 = inttoptr i64 %t5673 to ptr
  %gml5675 = load i64, ptr %gmp5674, align 1, !alias.scope !4, !noalias !3
  %wp5676 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5675, ptr %wp5676, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd19c word 0xb001bc80
  %wp5677 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419826688, ptr %wp5677, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1a0 word 0x91004108
  %r5678.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5678 = load i64, ptr %r5678.p, align 8, !alias.scope !3, !noalias !4
  %t5679 = add i64 %r5678, 16
  %wp5680 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %t5679, ptr %wp5680, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1a4 word 0xf9000128
  %r5681.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5681 = load i64, ptr %r5681.p, align 8, !alias.scope !3, !noalias !4
  %r5682.p = getelementptr inbounds i8, ptr %c, i64 64
  %r5682 = load i64, ptr %r5682.p, align 8, !alias.scope !3, !noalias !4
  %gmp5683 = inttoptr i64 %r5681 to ptr
  store i64 %r5682, ptr %gmp5683, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd1a8 word 0xf9430000
  %r5684.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5684 = load i64, ptr %r5684.p, align 8, !alias.scope !3, !noalias !4
  %t5685 = add i64 %r5684, 1536
  %gmp5686 = inttoptr i64 %t5685 to ptr
  %gml5687 = load i64, ptr %gmp5686, align 1, !alias.scope !4, !noalias !3
  %wp5688 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5687, ptr %wp5688, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1ac word 0x94a79a01
  %wp5689 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561520, ptr %wp5689, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  ; @pc 0x8001bd1b0 word 0xb001bc89
  %wp5690 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 34419826688, ptr %wp5690, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1b4 word 0x52b84005
  %c5691 = zext i32 -1040187392 to i64
  %wp5692 = getelementptr inbounds i8, ptr %c, i64 40
  store i64 %c5691, ptr %wp5692, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1b8 word 0xf9430d29
  %r5693.p = getelementptr inbounds i8, ptr %c, i64 72
  %r5693 = load i64, ptr %r5693.p, align 8, !alias.scope !3, !noalias !4
  %t5694 = add i64 %r5693, 1560
  %gmp5695 = inttoptr i64 %t5694 to ptr
  %gml5696 = load i64, ptr %gmp5695, align 1, !alias.scope !4, !noalias !3
  %wp5697 = getelementptr inbounds i8, ptr %c, i64 72
  store i64 %gml5696, ptr %wp5697, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1bc word 0xaa1903e3
  %r5698.p = getelementptr inbounds i8, ptr %c, i64 200
  %r5698 = load i64, ptr %r5698.p, align 8, !alias.scope !3, !noalias !4
  %t5699 = or i64 0, %r5698
  %wp5700 = getelementptr inbounds i8, ptr %c, i64 24
  store i64 %t5699, ptr %wp5700, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1c0 word 0x2a1703e4
  %r5701.p = getelementptr inbounds i8, ptr %c, i64 184
  %r5701 = load i64, ptr %r5701.p, align 8, !alias.scope !3, !noalias !4
  %c5702 = trunc i64 %r5701 to i32
  %t5703 = or i32 0, %c5702
  %c5704 = zext i32 %t5703 to i64
  %wp5705 = getelementptr inbounds i8, ptr %c, i64 32
  store i64 %c5704, ptr %wp5705, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1c4 word 0x17fffc96
  br label %L_8001bc41c
L_8001bd1d4_ft:
  ; @pc 0x8001bd1d4 word 0xf10005ce
  %r5711.p = getelementptr inbounds i8, ptr %c, i64 112
  %r5711 = load i64, ptr %r5711.p, align 8, !alias.scope !3, !noalias !4
  %t5712 = sub i64 %r5711, 1
  %fn5713 = icmp slt i64 %t5712, 0
  %fz5714 = icmp eq i64 %t5712, 0
  %fc5715 = icmp uge i64 %r5711, 1
  %fx15716 = xor i64 %r5711, 1
  %fx25717 = xor i64 %r5711, %t5712
  %fva5718 = and i64 %fx15716, %fx25717
  %fv5719 = icmp slt i64 %fva5718, 0
  %nz5720 = zext i1 %fn5713 to i64
  %zz5721 = zext i1 %fz5714 to i64
  %cz5722 = zext i1 %fc5715 to i64
  %vz5723 = zext i1 %fv5719 to i64
  %ns5724 = shl i64 %nz5720, 31
  %zs5725 = shl i64 %zz5721, 30
  %cs5726 = shl i64 %cz5722, 29
  %vs5727 = shl i64 %vz5723, 28
  %nzor5728 = or i64 %ns5724, %zs5725
  %cvor5729 = or i64 %cs5726, %vs5727
  %nzcv5730 = or i64 %nzor5728, %cvor5729
  %wp5731 = getelementptr inbounds i8, ptr %c, i64 272
  store i64 %nzcv5730, ptr %wp5731, align 8, !alias.scope !3, !noalias !4
  %wp5732 = getelementptr inbounds i8, ptr %c, i64 112
  store i64 %t5712, ptr %wp5732, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd1d8 word 0x54ffa0a1
  %r5733.p = getelementptr inbounds i8, ptr %c, i64 272
  %r5733 = load i64, ptr %r5733.p, align 8, !alias.scope !3, !noalias !4
  %fsh5735 = lshr i64 %r5733, 30
  %ftr5736 = trunc i64 %fsh5735 to i1
  %cond5734 = xor i1 %ftr5736, true
  br i1 %cond5734, label %L_8001bc5ec, label %L_8001bd1dc_ft
L_8001bd1dc_ft:
  ; @pc 0x8001bd1dc word 0x17fffd08
  br label %L_8001bc5fc
L_8001bd288_ft:
  ; @pc 0x8001bd288 word 0xb900039f
  %r5919.p = getelementptr inbounds i8, ptr %c, i64 224
  %r5919 = load i64, ptr %r5919.p, align 8, !alias.scope !3, !noalias !4
  %gmp5920 = inttoptr i64 %r5919 to ptr
  store i32 0, ptr %gmp5920, align 1, !alias.scope !4, !noalias !3
  ; @pc 0x8001bd28c word 0xd001bd00
  %wp5921 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 34419896320, ptr %wp5921, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd290 word 0xf9455400
  %r5922.p = getelementptr inbounds i8, ptr %c, i64 0
  %r5922 = load i64, ptr %r5922.p, align 8, !alias.scope !3, !noalias !4
  %t5923 = add i64 %r5922, 2728
  %gmp5924 = inttoptr i64 %t5923 to ptr
  %gml5925 = load i64, ptr %gmp5924, align 1, !alias.scope !4, !noalias !3
  %wp5926 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %gml5925, ptr %wp5926, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x8001bd294 word 0x94a799c7
  %wp5927 = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34361561752, ptr %wp5927, align 8, !alias.scope !3, !noalias !4
  call void @f_802ba39b0(ptr %c)
  br label %L_8001bd298
L_8001bc66c_jt_def:
  %fp5931 = getelementptr inbounds i8, ptr %c, i64 264
  store i64 %r3316, ptr %fp5931, align 8, !alias.scope !3, !noalias !4
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
